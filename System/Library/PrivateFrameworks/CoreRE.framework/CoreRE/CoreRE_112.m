uint64_t re::ecs2::CameraViewDescriptorsSystem::update(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v99 = *MEMORY[0x1E69E9840];
  v83 = a2;
  v84 = a3;
  v5 = *(result + 224);
  if (!v5 || (*(v5 + 432) & 0x10) != 0)
  {
    re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v82);
    v6 = *(a3 + 200);
    if (v6)
    {
      v7 = *(a3 + 216);
      v8 = &v7[v6];
      do
      {
        *&v90 = *v7;
        v9 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 352), &v90);
        if (v9 == -1)
        {
          v10 = 0;
        }

        else
        {
          v10 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](v4 + 296, *(*(v4 + 360) + 16 * v9 + 8));
        }

        v11 = v10[5];
        v12 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v10[2] + 8, v11);
        v13 = v10[6];
        v14 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v10[2] + 8, v13);
        re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v90, v12, 0);
        *&v94 = v11;
        *(&v94 + 1) = v90;
        v95 = DWORD2(v90);
        if (v12 != v90 || DWORD2(v90) != 0xFFFFFFFFLL)
        {
          do
          {
            v16 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v94);
            re::DrawingManager::getLayersWithPendingSizeOrScaleChanges(*(*(v4 + 232) + 112), &v90);
            markDirtyIfComponentUsesLayer(v16, *v92, v91);
            if (v90 && *v92)
            {
              (*(*v90 + 40))();
            }

            re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v94 + 4);
          }

          while (*(&v94 + 1) != v12 || v95 != 0xFFFF || HIWORD(v95) != 0xFFFF);
        }

        re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v90, v14, 0);
        *&v94 = v13;
        *(&v94 + 1) = v90;
        v95 = DWORD2(v90);
        if (v14 != v90 || DWORD2(v90) != 0xFFFFFFFFLL)
        {
          do
          {
            v19 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v94);
            re::DrawingManager::getLayersWithPendingSizeOrScaleChanges(*(*(v4 + 232) + 112), &v90);
            markDirtyIfComponentUsesLayer(v19, *v92, v91);
            if (v90 && *v92)
            {
              (*(*v90 + 40))();
            }

            re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v94 + 4);
          }

          while (*(&v94 + 1) != v14 || v95 != 0xFFFF || HIWORD(v95) != 0xFFFF);
        }

        ++v7;
      }

      while (v7 != v8);
    }

    re::StackScratchAllocator::StackScratchAllocator(&v90);
    v95 = 1;
    v96 = 0;
    v97 = 0;
    *&v94 = &v90;
    *(&v94 + 1) = 0;
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(&v94, 0);
    v95 += 2;
    v22 = *(v4 + 504);
    if ((v22 & 0x3F) != 0)
    {
      v23 = (v22 >> 6) + 1;
    }

    else
    {
      v23 = v22 >> 6;
    }

    v98 = *(v4 + 504);
    v85[0] = 0;
    re::DynamicOverflowArray<unsigned long long,2ul>::resize(&v94, v23, v85);
    v24 = *(v84 + 200);
    if (v24)
    {
      v25 = *(v84 + 216);
      v26 = 8 * v24;
      do
      {
        v27 = *v25++;
        v85[0] = v27;
        v28 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 352), v85);
        re::DynamicBitset<unsigned long long,64ul>::setBit(&v94, *(*(v4 + 360) + 16 * v28 + 8));
        v26 -= 8;
      }

      while (v26);
    }

    re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v94, v4 + 464);
    v86 = 1;
    v87 = 0;
    v88 = 0;
    v85[0] = &v90;
    v85[1] = 0;
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v85, 0);
    v86 += 2;
    v29 = *(v4 + 504);
    if ((v29 & 0x3F) != 0)
    {
      v30 = (v29 >> 6) + 1;
    }

    else
    {
      v30 = v29 >> 6;
    }

    v89 = *(v4 + 504);
    v93 = 0;
    re::DynamicOverflowArray<unsigned long long,2ul>::resize(v85, v30, &v93);
    re::DynamicBitset<unsigned long long,64ul>::subtractBitSet(v4 + 464, &v94);
    v31 = v97;
    if (v95)
    {
      v31 = &v96;
    }

    v32 = *(&v94 + 1);
    if ((*(&v94 + 1) & 0x3FFFFFFFFFFFFFFLL) != 0)
    {
      v33 = 0;
      while (1)
      {
        v35 = *v31++;
        v34 = v35;
        if (v35)
        {
          break;
        }

        v33 -= 64;
        if (!--v32)
        {
          goto LABEL_66;
        }
      }

      v36 = __clz(__rbit64(v34));
      if (v36 + 1 != v33)
      {
        FirstBitSet = v36 - v33;
        do
        {
          v38 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](v4 + 296, FirstBitSet);
          v39 = *(*v38 + 224);
          v40 = v38[3];
          v41 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v38[2] + 8, v40);
          if (*(v41 + 40))
          {
            v42 = (*(*v39 + 24))(v39, &v83, v38, v40, v41, 0);
          }

          else
          {
            v42 = 0;
          }

          v43 = v38[5];
          v44 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v38[2] + 8, v43);
          if (*(v44 + 40))
          {
            v42 |= (*(*v39 + 32))(v39, &v83, v38, v43, v44, 0);
          }

          v45 = v38[6];
          v46 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v38[2] + 8, v45);
          if (*(v46 + 40))
          {
            if (((v42 | (*(*v39 + 40))(v39, &v83, v38, v45, v46, 0)) & 1) == 0)
            {
              goto LABEL_64;
            }
          }

          else if (!v42)
          {
LABEL_64:
            re::DynamicBitset<unsigned long long,64ul>::clearBit(v85, FirstBitSet);
            goto LABEL_65;
          }

          re::DynamicBitset<unsigned long long,64ul>::setBit(v85, FirstBitSet);
LABEL_65:
          FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v94, FirstBitSet + 1);
        }

        while (FirstBitSet != -1);
      }
    }

LABEL_66:
    re::DynamicBitset<unsigned long long,64ul>::orWithBitSet(v4 + 464, v85);
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4 + 296);
    if (v85[0] && (v86 & 1) == 0)
    {
      (*(*v85[0] + 40))();
    }

    if (v94 && (v95 & 1) == 0)
    {
      (*(*v94 + 40))();
    }

    re::StackScratchAllocator::~StackScratchAllocator(&v90);
    v47 = *(v84 + 200);
    if (v47)
    {
      v48 = *(v84 + 216);
      v80 = &v48[v47];
      do
      {
        v49 = *v48;
        if (*v48)
        {
          re::ecs2::SceneComponentTable::get((v49 + 200), re::ecs2::ComponentImpl<re::ecs2::CameraViewDescriptorsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
          re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v85, 3009, v4);
          v51 = *(v4 + 232);
          if (!v51)
          {
            re::internal::assertLog(4, v50, "assertion failure: '%s' (%s:line %i) ", "m_renderManager", "updateSceneInternal", 987);
            _os_crash();
            __break(1u);
          }

          v52 = *(v51 + 112);
          if (v52)
          {
            v53 = re::RenderFrameBox::get((v52 + 328), 0xFFFFFFFFFFFFFFFuLL);
          }

          else
          {
            v53 = 0;
          }

          v54 = *(v53 + 392);
          v55 = (*(**(v4 + 256) + 24))(*(v4 + 256));
          v56 = (*(*v55 + 16))(v55);
          v57 = *(v56 + 124);
          if (!v57)
          {
            v57 = *(v56 + 16);
          }

          *v92 = 0;
          v90 = 0u;
          v91 = 0u;
          *&v92[4] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(&v90, v54, v57 + 1);
          v58 = re::ecs2::SceneComponentTable::get((v49 + 200), re::ecs2::ComponentImpl<re::ecs2::TintComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
          if (v58)
          {
            v59 = *(v58 + 384);
            if (v59)
            {
              v60 = *(v58 + 400);
              v61 = &v60[v59];
              do
              {
                v62 = *v60;
                if (*(*(*v60 + 16) + 304))
                {
                  (*(*v55 + 8))(&v94, v55);
                  if (v94)
                  {
                    v63 = *(&v94 + 1);
                  }

                  else
                  {
                    v63 = 0;
                  }

                  v64 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v63 ^ (v63 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v63 ^ (v63 >> 30))) >> 27));
                  v65 = v64 ^ (v64 >> 31);
                  if (!v90)
                  {
                    LODWORD(v66) = 0;
LABEL_99:
                    v81 = *(v62 + 32);
                    v70 = *(v62 + 48);
LABEL_100:
                    v71 = re::HashTable<unsigned long long,re::TintContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(&v90, v66, v65);
                    *(v71 + 8) = v63;
                    *(v71 + 16) = v81;
                    *(v71 + 32) = v70;
                    *(v71 + 33) = v94;
                    *(v71 + 40) = *(&v94 + 7);
                    ++*&v92[8];
                    goto LABEL_101;
                  }

                  v66 = v65 % DWORD2(v91);
                  v67 = *(*(&v90 + 1) + 4 * v66);
                  if (v67 == 0x7FFFFFFF)
                  {
                    goto LABEL_99;
                  }

                  v68 = *(*(&v90 + 1) + 4 * v66);
                  while (*(v91 + (v68 << 6) + 8) != v63)
                  {
                    v68 = *(v91 + (v68 << 6)) & 0x7FFFFFFF;
                    if (v68 == 0x7FFFFFFF)
                    {
                      if (*(v91 + (v67 << 6) + 8) == v63)
                      {
                        break;
                      }

                      v69 = *(v62 + 32);
                      v70 = *(v62 + 48);
                      while (1)
                      {
                        v67 = *(v91 + (v67 << 6)) & 0x7FFFFFFF;
                        if (v67 == 0x7FFFFFFF)
                        {
                          break;
                        }

                        if (*(v91 + (v67 << 6) + 8) == v63)
                        {
                          goto LABEL_101;
                        }
                      }

                      v81 = v69;
                      goto LABEL_100;
                    }
                  }
                }

LABEL_101:
                ++v60;
              }

              while (v60 != v61);
            }
          }

          v72 = *v92;
          if (*v92)
          {
            v73 = 0;
            v74 = v91;
            while (1)
            {
              v75 = *v74;
              v74 += 16;
              if (v75 < 0)
              {
                break;
              }

              if (*v92 == ++v73)
              {
                LODWORD(v73) = *v92;
                break;
              }
            }
          }

          else
          {
            LODWORD(v73) = 0;
          }

          if (v73 != *v92)
          {
            v76 = v91;
            do
            {
              re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(v49, *(v76 + (v73 << 6) + 8), v53, &v94);
              v93 = v94 >> 1;
              v77 = **(re::RenderFrameData::stream((v53 + 264), &v93) + 48);
              v78 = (*(v77 + 440))();
              if (v94)
              {
                if (v94)
                {
                }
              }

              if (*v92 <= (v73 + 1))
              {
                v79 = v73 + 1;
              }

              else
              {
                v79 = *v92;
              }

              v76 = v91;
              while (v79 - 1 != v73)
              {
                LODWORD(v73) = v73 + 1;
                if ((*(v91 + (v73 << 6)) & 0x80000000) != 0)
                {
                  goto LABEL_124;
                }
              }

              LODWORD(v73) = v79;
LABEL_124:
              ;
            }

            while (v73 != v72);
          }

          re::HashTable<re::ecs2::Entity *,re::SortingPlane,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::deinit(&v90);
          re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v85);
        }

        ++v48;
      }

      while (v48 != v80);
    }

    return re::ProfilerTimeGuard<(re::ProfilerStatistic)122>::end(v82);
  }

  return result;
}

void **markDirtyIfComponentUsesLayer(void **this, int *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a2;
    v4 = this;
    v5 = &a2[a3];
    v6 = this[32];
    while (!v6)
    {
LABEL_11:
      if (++v3 == v5)
      {
        return this;
      }
    }

    v7 = 0;
    v8 = *v3;
    while (1)
    {
      this = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(v4, (v7 + 0x10000));
      v9 = this[116];
      if (v9)
      {
        break;
      }

LABEL_10:
      ++v7;
      v6 = v4[32];
      if (v7 >= v6)
      {
        goto LABEL_11;
      }
    }

    v10 = 136 * v9;
    v11 = this[118] + 84;
    while (v8 != *(v11 - 1) && v8 != *v11)
    {
      v11 += 34;
      v10 -= 136;
      if (!v10)
      {
        goto LABEL_10;
      }
    }

    return re::ecs2::Component::markDirty(v4);
  }

  return this;
}

unint64_t re::ecs2::CameraViewDescriptorsSystem::willAddSceneToECSService(re::ecs2::CameraViewDescriptorsSystem *this, re::ecs2::Scene *a2)
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
    re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::init(v12, this + 296, a2);
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
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>,4ul>::setBucketsCapacity(this + 37, (v14 + 4) >> 2);
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
  re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::init(v24, this + 296, v48[0]);
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

uint64_t re::ecs2::CameraViewDescriptorsSystem::willRemoveSceneFromECSService(re::ecs2::CameraViewDescriptorsSystem *this, re::ecs2::Scene *a2)
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

void re::ecs2::CameraViewDescriptorsComponent::snapshot(re *a1, uint64_t a2, uint64_t a3)
{
  v83 = *MEMORY[0x1E69E9840];
  v21 = xmmword_1E30474D0;
  v23 = 117440767;
  v36 = xmmword_1E308B878;
  memset(v20, 0, 33);
  v22 = 0;
  v24 = -1;
  v25 = 0;
  v26 = 0u;
  v34 = 0;
  v35 = 0;
  v28 = 0u;
  v29 = 0u;
  v27 = 0;
  v30 = 0;
  v31 = 0u;
  v32 = 0u;
  v33 = 0;
  v37 = unk_1E308B888;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v6 = re::globalAllocators(a1);
  v7 = (*(*v6[2] + 32))(v6[2], 272, 8);
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 2) = 0u;
  *(v7 + 3) = 0u;
  *(v7 + 4) = 0u;
  *(v7 + 5) = 0u;
  *(v7 + 6) = 0u;
  *(v7 + 7) = 0u;
  *(v7 + 8) = 0u;
  *(v7 + 9) = 0u;
  *(v7 + 10) = 0u;
  *(v7 + 11) = 0u;
  *(v7 + 12) = 0u;
  *(v7 + 13) = 0u;
  *(v7 + 14) = 0u;
  *(v7 + 15) = 0u;
  *(v7 + 16) = 0u;
  v42 = v7;
  v43 = -1;
  v44 = 1;
  v45 = 0;
  v46 = re::globalAllocators(v7)[2];
  v47 = 0;
  v79 = 0u;
  v80 = 0u;
  v78 = 0u;
  re::Pose<float>::Pose(v77, 0, 0, &v78);
  v48 = *v77;
  v49 = *&v77[16];
  v79 = 0u;
  v80 = 0u;
  v78 = 0u;
  re::Pose<float>::Pose(v19, 0, 0, &v78);
  v50 = v19[0];
  v51 = v19[1];
  v52 = 0;
  v53 = xmmword_1E308B7C0;
  v54 = 0xBDCCCCCD3DCCCCCDLL;
  v55 = 0;
  v56 = xmmword_1E30476A0;
  v57 = 1;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v63 = xmmword_1E308B7C0;
  v64 = 0xBDCCCCCD3DCCCCCDLL;
  v65 = 0;
  v66 = xmmword_1E30476A0;
  v67 = 1;
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v75 = 0;
  v74 = 0;
  v73 = 0;
  v72 = 0u;
  v76[3] = re::globalAllocators(v8)[2];
  v76[4] = 0;
  v9 = *(a2 + 16);
  if (v9 <= 1)
  {
    if (v9 != 1)
    {
      *&v19[0] = 0;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v78 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v77 = 136315906;
      *&v77[4] = "operator[]";
      *&v77[12] = 1024;
      *&v77[14] = 789;
      *&v77[18] = 2048;
      *&v77[20] = 0;
      *&v77[28] = 2048;
      *&v77[30] = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v10 = [**(a2 + 32) arrayLength] > 1;
  }

  else
  {
    v10 = 2;
  }

  v35 = v10;
  HIBYTE(v44) = 1;
  re::FunctionBase<24ul,void ()(re::FrameCount const&)>::operator=<24ul>(v76, a3);
  re::DynamicArray<re::ecs2::CameraViewDescriptorsComponent::OneoffViewDescriptor>::add(a1 + 280, v20);
  if (*(a2 + 16))
  {
    v11 = 0;
    v12 = *(a1 + 37);
    do
    {
      v17 = *(*(a2 + 32) + 8 * v11);
      re::ecs2::SpecifyLaneCommand::SpecifyLaneCommand(&v18, "Color", &v17, v11);
      re::ecs2::CameraViewDescriptorsComponent::addSpecifyCommand(a1, (v12 + 0x1FFFF), &v18);
      for (i = 14; i != 12; --i)
      {
        v14 = v18.n128_u64[i];
        if (v14)
        {

          v18.n128_u64[i] = 0;
        }
      }

      do
      {
        v15 = v18.n128_u64[i];
        if (v15)
        {

          v18.n128_u64[i] = 0;
        }

        --i;
      }

      while (i != 10);
      for (j = 56; j != 8; j -= 24)
      {
        re::AssetHandle::~AssetHandle((&v18 + j));
      }

      if (v18.n128_u64[0])
      {
        if (v18.n128_u8[8])
        {
          (*(*v18.n128_u64[0] + 40))();
        }

        memset(&v18, 0, 32);
      }

      if (v17)
      {

        v17 = 0;
      }

      ++v11;
    }

    while (*(a2 + 16) > v11);
  }

  re::FunctionBase<24ul,void ()(re::FrameCount const&)>::destroyCallable(v76);
  re::ecs2::CameraViewDescriptor::~CameraViewDescriptor(v20);
}

uint64_t re::ecs2::CameraViewDescriptorsComponent::snapshotWithSettings(re *a1, uint64_t a2, const re::RuntimeRenderGraphDataStruct *a3, uint64_t a4)
{
  v87 = *MEMORY[0x1E69E9840];
  v24 = 0;
  v25 = xmmword_1E30474D0;
  v27 = 117440767;
  v40 = xmmword_1E308B878;
  memset(v23, 0, sizeof(v23));
  v26 = 0;
  v28 = -1;
  v29 = 0;
  v30 = 0u;
  v38 = 0;
  v39 = 0;
  v32 = 0u;
  v33 = 0u;
  v31 = 0;
  v34 = 0;
  v35 = 0u;
  v36 = 0u;
  v37 = 0;
  v41 = unk_1E308B888;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v8 = re::globalAllocators(a1);
  v9 = (*(*v8[2] + 32))(v8[2], 272, 8);
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *(v9 + 3) = 0u;
  *(v9 + 4) = 0u;
  *(v9 + 5) = 0u;
  *(v9 + 6) = 0u;
  *(v9 + 7) = 0u;
  *(v9 + 8) = 0u;
  *(v9 + 9) = 0u;
  *(v9 + 10) = 0u;
  *(v9 + 11) = 0u;
  *(v9 + 12) = 0u;
  *(v9 + 13) = 0u;
  *(v9 + 14) = 0u;
  *(v9 + 15) = 0u;
  *(v9 + 16) = 0u;
  v46 = v9;
  v47 = -1;
  v48 = 1;
  v49 = 0;
  v50 = re::globalAllocators(v9)[2];
  v51 = 0;
  v83 = 0u;
  v84 = 0u;
  v82 = 0u;
  re::Pose<float>::Pose(v81, 0, 0, &v82);
  v52 = *v81;
  v53 = *&v81[16];
  v83 = 0u;
  v84 = 0u;
  v82 = 0u;
  re::Pose<float>::Pose(v22, 0, 0, &v82);
  v54 = v22[0];
  v55 = v22[1];
  v56 = 0;
  v57 = xmmword_1E308B7C0;
  v58 = 0xBDCCCCCD3DCCCCCDLL;
  v59 = 0;
  v60 = xmmword_1E30476A0;
  v61 = 1;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v66 = 0;
  v67 = xmmword_1E308B7C0;
  v68 = 0xBDCCCCCD3DCCCCCDLL;
  v69 = 0;
  v70 = xmmword_1E30476A0;
  v71 = 1;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v76 = 0u;
  v80[3] = re::globalAllocators(v10)[2];
  v80[4] = 0;
  v11 = *(a2 + 16);
  if (v11 <= 1)
  {
    if (v11 != 1)
    {
      *&v22[0] = 0;
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v82 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v81 = 136315906;
      *&v81[4] = "operator[]";
      *&v81[12] = 1024;
      *&v81[14] = 789;
      *&v81[18] = 2048;
      *&v81[20] = 0;
      *&v81[28] = 2048;
      *&v81[30] = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v12 = [**(a2 + 32) arrayLength] > 1;
  }

  else
  {
    v12 = 2;
  }

  v39 = v12;
  HIBYTE(v48) = 1;
  re::FunctionBase<24ul,void ()(re::FrameCount const&)>::operator=<24ul>(v80, a4);
  re::ecs2::CameraViewDescriptor::updateWithSettings(v23, a3);
  re::DynamicArray<re::ecs2::CameraViewDescriptorsComponent::OneoffViewDescriptor>::add(a1 + 280, v23);
  v13 = *(a1 + 37);
  if (*(a2 + 16))
  {
    v14 = 0;
    do
    {
      v20 = *(*(a2 + 32) + 8 * v14);
      re::ecs2::SpecifyLaneCommand::SpecifyLaneCommand(&v21, "Color", &v20, v14);
      re::ecs2::CameraViewDescriptorsComponent::addSpecifyCommand(a1, (v13 + 0x1FFFF), &v21);
      for (i = 14; i != 12; --i)
      {
        v16 = v21.n128_u64[i];
        if (v16)
        {

          v21.n128_u64[i] = 0;
        }
      }

      do
      {
        v17 = v21.n128_u64[i];
        if (v17)
        {

          v21.n128_u64[i] = 0;
        }

        --i;
      }

      while (i != 10);
      for (j = 56; j != 8; j -= 24)
      {
        re::AssetHandle::~AssetHandle((&v21 + j));
      }

      if (v21.n128_u64[0])
      {
        if (v21.n128_u8[8])
        {
          (*(*v21.n128_u64[0] + 40))();
        }

        memset(&v21, 0, 32);
      }

      if (v20)
      {

        v20 = 0;
      }

      ++v14;
    }

    while (*(a2 + 16) > v14);
  }

  re::FunctionBase<24ul,void ()(re::FrameCount const&)>::destroyCallable(v80);
  re::ecs2::CameraViewDescriptor::~CameraViewDescriptor(v23);
  return v13 + 0x1FFFF;
}

uint64_t re::ecs2::CameraViewDescriptorsComponent::selectionWithSettings(re *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, const re::RuntimeRenderGraphDataStruct *a15, uint64_t a16)
{
  v205 = *MEMORY[0x1E69E9840];
  v145 = 0;
  v146 = xmmword_1E30474D0;
  v148 = 117440767;
  v20 = v199;
  v161 = xmmword_1E308B878;
  v144 = 0u;
  v143 = 0u;
  v147 = 0;
  v149 = -1;
  v150 = 0;
  v151 = 0u;
  v159 = 0;
  v160 = 0;
  v153 = 0u;
  v154 = 0u;
  v152 = 0;
  v155 = 0;
  v156 = 0u;
  v157 = 0u;
  v158 = 0;
  v162 = unk_1E308B888;
  v163 = 0u;
  v164 = 0u;
  v165 = 0u;
  v166 = 0u;
  v21 = re::globalAllocators(a1);
  v22 = (*(*v21[2] + 32))(v21[2], 272, 8);
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *(v22 + 2) = 0u;
  *(v22 + 3) = 0u;
  *(v22 + 4) = 0u;
  *(v22 + 5) = 0u;
  *(v22 + 6) = 0u;
  *(v22 + 7) = 0u;
  *(v22 + 8) = 0u;
  *(v22 + 9) = 0u;
  *(v22 + 10) = 0u;
  *(v22 + 11) = 0u;
  *(v22 + 12) = 0u;
  *(v22 + 13) = 0u;
  *(v22 + 14) = 0u;
  *(v22 + 15) = 0u;
  *(v22 + 16) = 0u;
  v167 = v22;
  v168 = -1;
  v169 = 1;
  v170 = 0;
  v171 = re::globalAllocators(v22)[2];
  v172 = 0;
  v201 = 0u;
  v202 = 0u;
  v200 = 0u;
  re::Pose<float>::Pose(v199, 0, 0, &v200);
  v173[0] = *v199;
  v173[1] = *&v199[16];
  v201 = 0u;
  v202 = 0u;
  v200 = 0u;
  re::Pose<float>::Pose(v142, 0, 0, &v200);
  v173[2] = v142[0];
  v173[3] = v142[1];
  v174 = 0;
  v175 = xmmword_1E308B7C0;
  v176 = 0xBDCCCCCD3DCCCCCDLL;
  v177 = 0;
  v178 = xmmword_1E30476A0;
  v179 = 1;
  v180 = 0;
  v181 = 0;
  v182[0] = 0;
  v183[0] = 0;
  v184 = 0;
  v185 = xmmword_1E308B7C0;
  v186 = 0xBDCCCCCD3DCCCCCDLL;
  v187 = 0;
  v188 = xmmword_1E30476A0;
  v189 = 1;
  v190 = 0;
  v191 = 0;
  v192 = 0;
  v193 = 0;
  v197 = 0;
  v196 = 0;
  v195 = 0;
  v194 = 0u;
  v198[3] = re::globalAllocators(v23)[2];
  v198[4] = 0;
  v24 = *(a5 + 16);
  if (v24 <= 1)
  {
    if (v24 != 1)
    {
      goto LABEL_195;
    }

    v25 = [**(a5 + 32) arrayLength] > 1;
  }

  else
  {
    v25 = 2;
  }

  v160 = v25;
  HIBYTE(v169) = 1;
  re::FunctionBase<24ul,void ()(re::FrameCount const&)>::operator=<24ul>(v198, a16);
  re::ecs2::CameraViewDescriptor::updateWithSettings(&v143, a15);
  re::AssetHandle::operator=(&v143, a2);
  WORD4(v144) = 257;
  v26 = *(a3 + 16);
  if (v26)
  {
    v27 = v173;
    v28 = *(a3 + 32);
    do
    {
      v29 = *v28;
      v30 = v28[1];
      v28 += 2;
      *v27 = v29;
      v27[1] = v30;
      v27 += 2;
      --v26;
    }

    while (v26);
  }

  v31 = *(a4 + 16);
  if (v31)
  {
    v32 = 0;
    v33 = *(a4 + 32);
    do
    {
      v34 = &v143 + v32;
      *(v34 + 27) = *(v33 + v32);
      v35 = *(v33 + v32 + 16);
      v36 = *(v33 + v32 + 32);
      v37 = *(v33 + v32 + 48);
      *(v34 + 248) = *(v33 + v32 + 64);
      *(v34 + 29) = v36;
      *(v34 + 30) = v37;
      *(v34 + 28) = v35;
      if (v182[v32])
      {
        if (*(v33 + v32 + 80))
        {
          v38 = &v143.f32[v32 / 4];
          v39 = *(v33 + v32 + 96);
          v40 = *(v33 + v32 + 112);
          v41 = *(v33 + v32 + 144);
          v38[35] = *(v33 + v32 + 128);
          v38[36] = v41;
          v38[33] = v39;
          v38[34] = v40;
        }

        else
        {
          v34[512] = 0;
        }
      }

      else if (*(v33 + v32 + 80))
      {
        v34[512] = 1;
        v42 = &v143.f32[v32 / 4];
        v43 = *(v33 + v32 + 96);
        v44 = *(v33 + v32 + 112);
        v45 = *(v33 + v32 + 144);
        v42[35] = *(v33 + v32 + 128);
        v42[36] = v45;
        v42[33] = v43;
        v42[34] = v44;
      }

      v46 = &v143 + v32;
      if (v183[v32])
      {
        if (*(v33 + v32 + 160))
        {
          v47 = &v143.f32[v32 / 4];
          v48 = *(v33 + v32 + 176);
          v49 = *(v33 + v32 + 192);
          v50 = *(v33 + v32 + 224);
          v47[40] = *(v33 + v32 + 208);
          v47[41] = v50;
          v47[38] = v48;
          v47[39] = v49;
        }

        else
        {
          v46[592] = 0;
        }
      }

      else if (*(v33 + v32 + 160))
      {
        v46[592] = 1;
        v51 = &v143.f32[v32 / 4];
        v52 = *(v33 + v32 + 176);
        v53 = *(v33 + v32 + 192);
        v54 = *(v33 + v32 + 224);
        v51[40] = *(v33 + v32 + 208);
        v51[41] = v54;
        v51[38] = v52;
        v51[39] = v53;
      }

      v32 += 240;
      --v31;
    }

    while (v31);
  }

  re::DynamicArray<re::ecs2::CameraViewDescriptorsComponent::OneoffViewDescriptor>::add(a1 + 280, &v143);
  v119 = *(a1 + 37);
  if (*(a5 + 16))
  {
    v55 = 0;
    v115 = a5;
    while (1)
    {
      v56 = *(a5 + 32);
      v57 = v55;
      v140 = *(v56 + 8 * v55);
      v121 = v57;
      re::ecs2::SpecifyLaneCommand::SpecifyLaneCommand(v141, "SelectionColor0", &v140, v57);
      re::ecs2::CameraViewDescriptorsComponent::addSpecifyCommand(a1, (v119 + 0x1FFFF), v141);
      for (i = 14; i != 12; --i)
      {
        v59 = v141[0].n128_u64[i];
        if (v59)
        {

          v141[0].n128_u64[i] = 0;
        }
      }

      do
      {
        v60 = v141[0].n128_u64[i];
        if (v60)
        {

          v141[0].n128_u64[i] = 0;
        }

        --i;
      }

      while (i != 10);
      for (j = 56; j != 8; j -= 24)
      {
        re::AssetHandle::~AssetHandle((v141 + j));
      }

      if (v141[0].n128_u64[0])
      {
        if (v141[0].n128_u8[8])
        {
          (*(*v141[0].n128_u64[0] + 40))();
        }

        memset(v141, 0, 32);
      }

      if (v140)
      {

        v140 = 0;
      }

      v62 = *(a6 + 16);
      if (v62 <= v121)
      {
        break;
      }

      v138 = *(*(a6 + 32) + 8 * v121);
      re::ecs2::SpecifyLaneCommand::SpecifyLaneCommand(v139, "SelectionColor1", &v138, v121);
      re::ecs2::CameraViewDescriptorsComponent::addSpecifyCommand(a1, (v119 + 0x1FFFF), v139);
      for (k = 14; k != 12; --k)
      {
        v64 = v139[0].n128_u64[k];
        if (v64)
        {

          v139[0].n128_u64[k] = 0;
        }
      }

      do
      {
        v65 = v139[0].n128_u64[k];
        if (v65)
        {

          v139[0].n128_u64[k] = 0;
        }

        --k;
      }

      while (k != 10);
      for (m = 56; m != 8; m -= 24)
      {
        re::AssetHandle::~AssetHandle((v139 + m));
      }

      if (v139[0].n128_u64[0])
      {
        if (v139[0].n128_u8[8])
        {
          (*(*v139[0].n128_u64[0] + 40))();
        }

        memset(v139, 0, 32);
      }

      if (v138)
      {

        v138 = 0;
      }

      v62 = *(a7 + 16);
      v67 = v121;
      if (v62 <= v121)
      {
        goto LABEL_187;
      }

      v136 = *(*(a7 + 32) + 8 * v121);
      re::ecs2::SpecifyLaneCommand::SpecifyLaneCommand(v137, "SelectionColor2", &v136, v121);
      re::ecs2::CameraViewDescriptorsComponent::addSpecifyCommand(a1, (v119 + 0x1FFFF), v137);
      for (n = 14; n != 12; --n)
      {
        v69 = v137[0].n128_u64[n];
        if (v69)
        {

          v137[0].n128_u64[n] = 0;
        }
      }

      do
      {
        v70 = v137[0].n128_u64[n];
        if (v70)
        {

          v137[0].n128_u64[n] = 0;
        }

        --n;
      }

      while (n != 10);
      for (ii = 56; ii != 8; ii -= 24)
      {
        re::AssetHandle::~AssetHandle((v137 + ii));
      }

      if (v137[0].n128_u64[0])
      {
        if (v137[0].n128_u8[8])
        {
          (*(*v137[0].n128_u64[0] + 40))();
        }

        memset(v137, 0, 32);
      }

      if (v136)
      {

        v136 = 0;
      }

      v62 = *(a8 + 16);
      v72 = v121;
      if (v62 <= v121)
      {
        goto LABEL_188;
      }

      v134 = *(*(a8 + 32) + 8 * v121);
      re::ecs2::SpecifyLaneCommand::SpecifyLaneCommand(v135, "SelectionColor3", &v134, v121);
      re::ecs2::CameraViewDescriptorsComponent::addSpecifyCommand(a1, (v119 + 0x1FFFF), v135);
      for (jj = 14; jj != 12; --jj)
      {
        v74 = v135[0].n128_u64[jj];
        if (v74)
        {

          v135[0].n128_u64[jj] = 0;
        }
      }

      do
      {
        v75 = v135[0].n128_u64[jj];
        if (v75)
        {

          v135[0].n128_u64[jj] = 0;
        }

        --jj;
      }

      while (jj != 10);
      for (kk = 56; kk != 8; kk -= 24)
      {
        re::AssetHandle::~AssetHandle((v135 + kk));
      }

      if (v135[0].n128_u64[0])
      {
        if (v135[0].n128_u8[8])
        {
          (*(*v135[0].n128_u64[0] + 40))();
        }

        memset(v135, 0, 32);
      }

      if (v134)
      {

        v134 = 0;
      }

      v62 = *(a9 + 16);
      v77 = v121;
      if (v62 <= v121)
      {
        goto LABEL_189;
      }

      v132 = *(*(a9 + 32) + 8 * v121);
      re::ecs2::SpecifyLaneCommand::SpecifyLaneCommand(v133, "SelectionColor4", &v132, v121);
      re::ecs2::CameraViewDescriptorsComponent::addSpecifyCommand(a1, (v119 + 0x1FFFF), v133);
      for (mm = 14; mm != 12; --mm)
      {
        v79 = v133[0].n128_u64[mm];
        if (v79)
        {

          v133[0].n128_u64[mm] = 0;
        }
      }

      do
      {
        v80 = v133[0].n128_u64[mm];
        if (v80)
        {

          v133[0].n128_u64[mm] = 0;
        }

        --mm;
      }

      while (mm != 10);
      for (nn = 56; nn != 8; nn -= 24)
      {
        re::AssetHandle::~AssetHandle((v133 + nn));
      }

      if (v133[0].n128_u64[0])
      {
        if (v133[0].n128_u8[8])
        {
          (*(*v133[0].n128_u64[0] + 40))();
        }

        memset(v133, 0, 32);
      }

      if (v132)
      {

        v132 = 0;
      }

      v62 = *(a10 + 16);
      v82 = v121;
      if (v62 <= v121)
      {
        goto LABEL_190;
      }

      v130 = *(*(a10 + 32) + 8 * v121);
      re::ecs2::SpecifyLaneCommand::SpecifyLaneCommand(v131, "SelectionColor5", &v130, v121);
      re::ecs2::CameraViewDescriptorsComponent::addSpecifyCommand(a1, (v119 + 0x1FFFF), v131);
      for (i1 = 14; i1 != 12; --i1)
      {
        v84 = v131[0].n128_u64[i1];
        if (v84)
        {

          v131[0].n128_u64[i1] = 0;
        }
      }

      do
      {
        v85 = v131[0].n128_u64[i1];
        if (v85)
        {

          v131[0].n128_u64[i1] = 0;
        }

        --i1;
      }

      while (i1 != 10);
      for (i2 = 56; i2 != 8; i2 -= 24)
      {
        re::AssetHandle::~AssetHandle((v131 + i2));
      }

      if (v131[0].n128_u64[0])
      {
        if (v131[0].n128_u8[8])
        {
          (*(*v131[0].n128_u64[0] + 40))();
        }

        memset(v131, 0, 32);
      }

      if (v130)
      {

        v130 = 0;
      }

      v62 = *(a11 + 16);
      v87 = v121;
      if (v62 <= v121)
      {
        goto LABEL_191;
      }

      v128 = *(*(a11 + 32) + 8 * v121);
      re::ecs2::SpecifyLaneCommand::SpecifyLaneCommand(v129, "SelectionColor6", &v128, v121);
      re::ecs2::CameraViewDescriptorsComponent::addSpecifyCommand(a1, (v119 + 0x1FFFF), v129);
      for (i3 = 14; i3 != 12; --i3)
      {
        v89 = v129[0].n128_u64[i3];
        if (v89)
        {

          v129[0].n128_u64[i3] = 0;
        }
      }

      do
      {
        v90 = v129[0].n128_u64[i3];
        if (v90)
        {

          v129[0].n128_u64[i3] = 0;
        }

        --i3;
      }

      while (i3 != 10);
      for (i4 = 56; i4 != 8; i4 -= 24)
      {
        re::AssetHandle::~AssetHandle((v129 + i4));
      }

      if (v129[0].n128_u64[0])
      {
        if (v129[0].n128_u8[8])
        {
          (*(*v129[0].n128_u64[0] + 40))();
        }

        memset(v129, 0, 32);
      }

      if (v128)
      {

        v128 = 0;
      }

      v62 = *(a12 + 16);
      v92 = v121;
      if (v62 <= v121)
      {
        goto LABEL_192;
      }

      v126 = *(*(a12 + 32) + 8 * v121);
      re::ecs2::SpecifyLaneCommand::SpecifyLaneCommand(v127, "SelectionColor7", &v126, v121);
      re::ecs2::CameraViewDescriptorsComponent::addSpecifyCommand(a1, (v119 + 0x1FFFF), v127);
      for (i5 = 14; i5 != 12; --i5)
      {
        v94 = v127[0].n128_u64[i5];
        if (v94)
        {

          v127[0].n128_u64[i5] = 0;
        }
      }

      do
      {
        v95 = v127[0].n128_u64[i5];
        if (v95)
        {

          v127[0].n128_u64[i5] = 0;
        }

        --i5;
      }

      while (i5 != 10);
      for (i6 = 56; i6 != 8; i6 -= 24)
      {
        re::AssetHandle::~AssetHandle((v127 + i6));
      }

      if (v127[0].n128_u64[0])
      {
        if (v127[0].n128_u8[8])
        {
          (*(*v127[0].n128_u64[0] + 40))();
        }

        memset(v127, 0, 32);
      }

      if (v126)
      {

        v126 = 0;
      }

      v62 = *(a13 + 16);
      v97 = v121;
      if (v62 <= v121)
      {
        goto LABEL_193;
      }

      v124 = *(*(a13 + 32) + 8 * v121);
      re::ecs2::SpecifyLaneCommand::SpecifyLaneCommand(v125, "SelectionDepth0", &v124, v121);
      re::ecs2::CameraViewDescriptorsComponent::addSpecifyCommand(a1, (v119 + 0x1FFFF), v125);
      for (i7 = 14; i7 != 12; --i7)
      {
        v99 = v125[0].n128_u64[i7];
        if (v99)
        {

          v125[0].n128_u64[i7] = 0;
        }
      }

      do
      {
        v100 = v125[0].n128_u64[i7];
        if (v100)
        {

          v125[0].n128_u64[i7] = 0;
        }

        --i7;
      }

      while (i7 != 10);
      for (i8 = 56; i8 != 8; i8 -= 24)
      {
        re::AssetHandle::~AssetHandle((v125 + i8));
      }

      if (v125[0].n128_u64[0])
      {
        if (v125[0].n128_u8[8])
        {
          (*(*v125[0].n128_u64[0] + 40))();
        }

        memset(v125, 0, 32);
      }

      if (v124)
      {

        v124 = 0;
      }

      v62 = *(a14 + 16);
      v102 = v121;
      if (v62 <= v121)
      {
        goto LABEL_194;
      }

      v122 = *(*(a14 + 32) + 8 * v121);
      re::ecs2::SpecifyLaneCommand::SpecifyLaneCommand(&v123, "SelectionStencil0", &v122, v121);
      re::ecs2::CameraViewDescriptorsComponent::addSpecifyCommand(a1, (v119 + 0x1FFFF), &v123);
      for (i9 = 14; i9 != 12; --i9)
      {
        v104 = v123.n128_u64[i9];
        if (v104)
        {

          v123.n128_u64[i9] = 0;
        }
      }

      do
      {
        v105 = v123.n128_u64[i9];
        if (v105)
        {

          v123.n128_u64[i9] = 0;
        }

        --i9;
      }

      while (i9 != 10);
      for (i10 = 56; i10 != 8; i10 -= 24)
      {
        re::AssetHandle::~AssetHandle((&v123 + i10));
      }

      a5 = v115;
      if (v123.n128_u64[0])
      {
        if (v123.n128_u8[8])
        {
          (*(*v123.n128_u64[0] + 40))();
        }

        memset(&v123, 0, 32);
      }

      if (v122)
      {

        v122 = 0;
      }

      v55 = v121 + 1;
      if (*(v115 + 16) <= v121 + 1)
      {
        goto LABEL_185;
      }
    }

    *&v142[0] = 0;
    v203 = 0u;
    v204 = 0u;
    v201 = 0u;
    v202 = 0u;
    v200 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v199 = 136315906;
    *&v199[4] = "operator[]";
    *&v199[12] = 1024;
    *&v199[14] = 789;
    *&v199[18] = 2048;
    *&v199[20] = v121;
    *&v199[28] = 2048;
    *&v199[30] = v62;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_187:
    *&v142[0] = 0;
    v203 = 0u;
    v204 = 0u;
    v201 = 0u;
    v202 = 0u;
    v200 = 0u;
    v108 = v67;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v199 = 136315906;
    *&v199[4] = "operator[]";
    *&v199[12] = 1024;
    *&v199[14] = 789;
    *&v199[18] = 2048;
    *&v199[20] = v108;
    *&v199[28] = 2048;
    *&v199[30] = v62;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_188:
    *&v142[0] = 0;
    v203 = 0u;
    v204 = 0u;
    v201 = 0u;
    v202 = 0u;
    v200 = 0u;
    v109 = v72;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v199 = 136315906;
    *&v199[4] = "operator[]";
    *&v199[12] = 1024;
    *&v199[14] = 789;
    *&v199[18] = 2048;
    *&v199[20] = v109;
    *&v199[28] = 2048;
    *&v199[30] = v62;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_189:
    *&v142[0] = 0;
    v203 = 0u;
    v204 = 0u;
    v201 = 0u;
    v202 = 0u;
    v200 = 0u;
    v110 = v77;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v199 = 136315906;
    *&v199[4] = "operator[]";
    *&v199[12] = 1024;
    *&v199[14] = 789;
    *&v199[18] = 2048;
    *&v199[20] = v110;
    *&v199[28] = 2048;
    *&v199[30] = v62;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_190:
    *&v142[0] = 0;
    v203 = 0u;
    v204 = 0u;
    v201 = 0u;
    v202 = 0u;
    v200 = 0u;
    v111 = v82;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v199 = 136315906;
    *&v199[4] = "operator[]";
    *&v199[12] = 1024;
    *&v199[14] = 789;
    *&v199[18] = 2048;
    *&v199[20] = v111;
    *&v199[28] = 2048;
    *&v199[30] = v62;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_191:
    *&v142[0] = 0;
    v203 = 0u;
    v204 = 0u;
    v201 = 0u;
    v202 = 0u;
    v200 = 0u;
    v112 = v87;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v199 = 136315906;
    *&v199[4] = "operator[]";
    *&v199[12] = 1024;
    *&v199[14] = 789;
    *&v199[18] = 2048;
    *&v199[20] = v112;
    *&v199[28] = 2048;
    *&v199[30] = v62;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_192:
    *&v142[0] = 0;
    v203 = 0u;
    v204 = 0u;
    v201 = 0u;
    v202 = 0u;
    v200 = 0u;
    v113 = v92;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v199 = 136315906;
    *&v199[4] = "operator[]";
    *&v199[12] = 1024;
    *&v199[14] = 789;
    *&v199[18] = 2048;
    *&v199[20] = v113;
    *&v199[28] = 2048;
    *&v199[30] = v62;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_193:
    *&v142[0] = 0;
    v203 = 0u;
    v204 = 0u;
    v201 = 0u;
    v202 = 0u;
    v200 = 0u;
    v114 = v97;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v199 = 136315906;
    *&v199[4] = "operator[]";
    *&v199[12] = 1024;
    *&v199[14] = 789;
    *&v199[18] = 2048;
    *&v199[20] = v114;
    *&v199[28] = 2048;
    *&v199[30] = v62;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_194:
    *&v142[0] = 0;
    v203 = 0u;
    v204 = 0u;
    v201 = 0u;
    v202 = 0u;
    v200 = 0u;
    v20 = v102;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v199 = 136315906;
    *&v199[4] = "operator[]";
    *&v199[12] = 1024;
    *&v199[14] = 789;
    *&v199[18] = 2048;
    *&v199[20] = v20;
    *&v199[28] = 2048;
    *&v199[30] = v62;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_195:
    *&v142[0] = 0;
    *(v20 + 6) = 0u;
    *(v20 + 7) = 0u;
    *(v20 + 4) = 0u;
    *(v20 + 5) = 0u;
    *(v20 + 3) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v199 = 136315906;
    *(v20 + 4) = "operator[]";
    *&v199[12] = 1024;
    *(v20 + 14) = 789;
    *&v199[18] = 2048;
    *(v20 + 20) = 0;
    *&v199[28] = 2048;
    *(v20 + 30) = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_185:
  re::FunctionBase<24ul,void ()(re::FrameCount const&)>::destroyCallable(v198);
  re::ecs2::CameraViewDescriptor::~CameraViewDescriptor(&v143);
  return v119 + 0x1FFFF;
}

void re::ecs2::CameraViewDescriptorsComponent::getAspect(re::ecs2::CameraViewDescriptorsComponent *this, re::ecs2::CameraViewDescriptorsComponent *a2, uint64_t a3, re::DrawingManager **a4, double a5)
{
  v31 = a4;
  v6 = *(this + 27);
  if (v6 != 1)
  {
    if (!v6 && !*(this + 32))
    {
      v7 = a4[14];
      if (v7)
      {

        goto LABEL_36;
      }

      return;
    }

    goto LABEL_10;
  }

  if (*(this + 32) || *(*(this + 29) + 928))
  {
LABEL_10:
    ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(this, a2);
    if (!ViewDescriptor)
    {
      return;
    }

    v9 = ViewDescriptor;
    v10 = *(ViewDescriptor + 200) ? a3 : 0;
    if (!*(ViewDescriptor + 928))
    {
      return;
    }

    v11 = 0;
    v12 = 8 * v10;
    v13 = 4 * v10 + 80;
    v14 = 32;
    v15 = 24 * v10;
    while (1)
    {
      v16 = *(v9 + 944);
      re::AssetHandle::AssetHandle(v32, (v16 + v14 + v15));
      if (*(v9 + 200) == 1)
      {
        re::AssetHandle::operator=(v32, (v16 + v14));
      }

      if (v33)
      {
        v18 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(v32);
        if (*(v18 + 120))
        {
          v26 = std::__throw_bad_variant_access[abi:nn200100]();
          re::ecs2::CameraViewDescriptorsComponent::getCameraScreenSize(v26, v27, v28, v29, v30);
          return;
        }

        v19 = *(v18 + 112);
        [v19 width];
        [v19 height];
        if (v19)
        {
        }
      }

      else
      {
        v20 = *(v16 + v13);
        if (v20 != -1)
        {
          v21 = *(v31 + 14);
          if (v21)
          {
            re::DrawingManager::layerAspect(v21, v20, v17);
          }

          goto LABEL_31;
        }

        v22 = v16 + v12;
        v23 = *(v16 + v12 + 88);
        if (v23)
        {
          [v23 width];
          v24 = *(v22 + 88);
LABEL_30:
          [v24 height];
          goto LABEL_31;
        }

        v25 = *(v22 + 104);
        if (v25)
        {
          [v25 width];
          v24 = *(v22 + 104);
          goto LABEL_30;
        }
      }

LABEL_31:
      re::AssetHandle::~AssetHandle(v32);
      ++v11;
      v12 += 136;
      v13 += 136;
      v14 += 136;
      if (*(v9 + 928) <= v11)
      {
        return;
      }
    }
  }

  LODWORD(a5) = *(re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(this, 0) + 212);
  v7 = *(v31 + 14);
  if (v7)
  {
LABEL_36:
    re::DrawingManager::layerAspect(v7, 0, a5);
  }
}

uint64_t re::ecs2::CameraViewDescriptorsComponent::getCameraScreenSize(re::ecs2::CameraViewDescriptorsComponent *this, uint64_t a2, float *a3, double a4, double a5)
{
  v57 = *MEMORY[0x1E69E9840];
  v8 = *(this + 27);
  if (v8 != 1)
  {
    if (!v8)
    {
      if (*(this + 32))
      {
        v40 = this;
        v42 = 0;
        goto LABEL_19;
      }

      goto LABEL_8;
    }

LABEL_6:
    v9 = 0;
    v40 = this;
    v42 = 0;
    goto LABEL_23;
  }

  if (*(this + 32))
  {
    goto LABEL_6;
  }

  if (!*(re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(this, 0) + 928))
  {
LABEL_8:
    v10 = *(a2 + 112);
    if (v10 && *(v10 + 1688) && **(v10 + 1704))
    {
      LayerSize = re::DrawingManager::getLayerSize(v10, 0, a4, a5);
      *a3 = LayerSize;
      a3[1] = v12;
      return v12 != 0.0 && LayerSize != 0.0;
    }
  }

  v15 = *(this + 27);
  v40 = this;
  v42 = 0;
  if (!v15)
  {
LABEL_19:
    if (*(this + 32))
    {
      v9 = 1;
    }

    else
    {
      if (!*(this + 37))
      {
        return 0;
      }

      v9 = 2;
    }

    goto LABEL_23;
  }

  v9 = 0;
LABEL_23:
  v41 = v9;
  while (1)
  {
    v16 = re::ecs2::CameraViewDescriptorsComponent::ViewDescriptorIterator::operator*(&v40);
    if (*(v16 + 928))
    {
      break;
    }

LABEL_34:
    re::ecs2::CameraViewDescriptorsComponent::ViewDescriptorIterator::operator++(&v40);
    if (v40 == this && v41 == 3 && v42 == 0)
    {
      return 0;
    }
  }

  v17 = v16;
  v19 = *(v16 + 212);
  v18 = *(v16 + 216);
  re::AssetHandle::AssetHandle(v38, (*(v16 + 944) + 32));
  if (v39)
  {
    v29 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(v38);
    if (*(v29 + 120))
    {
      v37 = std::__throw_bad_variant_access[abi:nn200100]();
      return re::ecs2::CameraViewDescriptorsComponentStateImpl::dependsOnComponents(v37);
    }

    v30 = *(v29 + 112);
    *a3 = v19 * [v30 width];
    a3[1] = v18 * [v30 height];
    if (v30)
    {
    }

LABEL_51:
    v14 = 1;
    goto LABEL_52;
  }

  if (!*(v17 + 928))
  {
    v43 = 0;
    v55 = 0u;
    v56 = 0u;
    v54 = 0u;
    v52 = 0u;
    v53 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v44 = 136315906;
    v45 = "operator[]";
    v46 = 1024;
    v47 = 797;
    v48 = 2048;
    v49 = 0;
    v50 = 2048;
    v51 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_61;
  }

  v22 = *(v17 + 944);
  v23 = *(v22 + 80);
  if (v23 == -1 || (v24 = *(a2 + 112)) == 0 || *(v24 + 211) <= v23 || !*(*(v24 + 213) + 32 * v23))
  {
    v25 = *(v22 + 88);
    if (!v25)
    {
      v26 = *(v22 + 104);
      if (!v26)
      {
        re::AssetHandle::~AssetHandle(v38);
        goto LABEL_34;
      }

      *a3 = v19 * [v26 width];
      if (*(v17 + 928))
      {
        v31 = *(*(v17 + 944) + 104);
        goto LABEL_50;
      }

LABEL_62:
      v43 = 0;
      v55 = 0u;
      v56 = 0u;
      v54 = 0u;
      v52 = 0u;
      v53 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v44 = 136315906;
      v45 = "operator[]";
      v46 = 1024;
      v47 = 797;
      v48 = 2048;
      v49 = 0;
      v50 = 2048;
      v51 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    *a3 = v19 * [v25 width];
    if (*(v17 + 928))
    {
      v31 = *(*(v17 + 944) + 88);
LABEL_50:
      a3[1] = v18 * [v31 height];
      goto LABEL_51;
    }

LABEL_61:
    v43 = 0;
    v55 = 0u;
    v56 = 0u;
    v54 = 0u;
    v52 = 0u;
    v53 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v44 = 136315906;
    v45 = "operator[]";
    v46 = 1024;
    v47 = 797;
    v48 = 2048;
    v49 = 0;
    v50 = 2048;
    v51 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_62;
  }

  v33 = v19 * re::DrawingManager::getLayerSize(v24, v23, v20, v21);
  v35 = v18 * v34;
  *a3 = v33;
  a3[1] = v35;
  v14 = v35 != 0.0 && v33 != 0.0;
LABEL_52:
  re::AssetHandle::~AssetHandle(v38);
  return v14;
}

void re::ecs2::CameraViewDescriptorsSystem::~CameraViewDescriptorsSystem(re::ecs2::CameraViewDescriptorsSystem *this)
{
  *(this + 67) = &unk_1F5CEFA60;
  re::FixedArray<CoreIKTransform>::deinit(this + 75);
  re::FixedArray<CoreIKTransform>::deinit(this + 72);
  re::FixedArray<CoreIKTransform>::deinit(this + 69);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 37);

  re::ecs2::System::~System(this);
}

{
  *(this + 67) = &unk_1F5CEFA60;
  re::FixedArray<CoreIKTransform>::deinit(this + 75);
  re::FixedArray<CoreIKTransform>::deinit(this + 72);
  re::FixedArray<CoreIKTransform>::deinit(this + 69);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 37);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::RuntimeRenderGraphDataStruct::getValueOfType<BOOL>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = re::SmallHashTable<re::WeakStringID,re::IntrospectionMember,8ul,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false>::tryGet(a1 + 24, a2);
  if (!result)
  {
    goto LABEL_4;
  }

  v6 = &unk_1EE187000;
  {
    v12 = result;
    v6 = &unk_1EE187000;
    v11 = v9;
    result = v12;
    if (v11)
    {
      re::introspect<BOOL>(BOOL)::info = re::introspect_BOOL(0, v10);
      v6 = &unk_1EE187000;
      result = v12;
    }
  }

  if (v6[42] == *(result + 16))
  {
    v7 = *(result + 36);
    if (*(a1 + 752) <= v7)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    if (*(a1 + 760))
    {
      v8 = a1 + 768;
    }

    else
    {
      v8 = *(a1 + 776);
    }

    *a3 = 1;
    a3[1] = *(v8 + v7);
  }

  else
  {
LABEL_4:
    *a3 = 0;
  }

  return result;
}

uint64_t re::SmallHashTable<re::WeakStringID,re::IntrospectionMember,8ul,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false>::tryGet(uint64_t a1, void *a2)
{
  if (*(a1 + 700))
  {
    return re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(a1 + 672, a2);
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = 80 * v3;
  for (result = a1 + 40; *(result - 8) != *a2; result += 80)
  {
    v4 -= 80;
    if (!v4)
    {
      return 0;
    }
  }

  return result;
}

__n128 re::RuntimeRenderGraphDataStruct::getValueOfType<re::Vector4<float>>@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, __n128 *a3@<X8>)
{
  v5 = re::SmallHashTable<re::WeakStringID,re::IntrospectionMember,8ul,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false>::tryGet(a1 + 24, a2);
  if (!v5)
  {
    goto LABEL_4;
  }

  v7 = &unk_1EE187000;
  {
    v12 = v5;
    v7 = &unk_1EE187000;
    v11 = v10;
    v5 = v12;
    if (v11)
    {
      re::introspect<re::Vector4<float>>(BOOL)::info = re::introspect_Vector4F(0);
      v7 = &unk_1EE187000;
      v5 = v12;
    }
  }

  if (v7[46] == *(v5 + 16))
  {
    v8 = *(v5 + 36);
    if (*(a1 + 752) <= v8)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    if (*(a1 + 760))
    {
      v9 = a1 + 768;
    }

    else
    {
      v9 = *(a1 + 776);
    }

    a3->n128_u8[0] = 1;
    result = *(v9 + v8);
    a3[1] = result;
  }

  else
  {
LABEL_4:
    a3->n128_u8[0] = 0;
  }

  return result;
}

float re::RuntimeRenderGraphDataStruct::getValueOfType<float>@<S0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = re::SmallHashTable<re::WeakStringID,re::IntrospectionMember,8ul,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false>::tryGet(a1 + 24, a2);
  if (!v5)
  {
    goto LABEL_4;
  }

  v7 = &unk_1EE187000;
  {
    v13 = v5;
    v7 = &unk_1EE187000;
    v12 = v10;
    v5 = v13;
    if (v12)
    {
      re::introspect<float>(BOOL)::info = re::introspect_float(0, v11);
      v7 = &unk_1EE187000;
      v5 = v13;
    }
  }

  if (v7[40] == *(v5 + 16))
  {
    v8 = *(v5 + 36);
    if (*(a1 + 752) <= v8)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    if (*(a1 + 760))
    {
      v9 = a1 + 768;
    }

    else
    {
      v9 = *(a1 + 776);
    }

    *a3 = 1;
    result = *(v9 + v8);
    *(a3 + 4) = result;
  }

  else
  {
LABEL_4:
    *a3 = 0;
  }

  return result;
}

BOOL re::Projection::operator==(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (vabds_f32(*(a1 + 4), *(a2 + 4)) > 0.00001 || vabds_f32(*(a1 + 8), *(a2 + 8)) > 0.00001 || vabds_f32(*(a1 + 12), *(a2 + 12)) > 0.00001 || vabds_f32(*(a1 + 16), *(a2 + 16)) > 0.00001 || vabds_f32(*(a1 + 20), *(a2 + 20)) > 0.00001 || vabds_f32(*(a1 + 24), *(a2 + 24)) > 0.00001 || *(a1 + 28) != *(a2 + 28))
  {
    return 0;
  }

  result = re::areAlmostEqual<float>((a1 + 32), (a2 + 32));
  if (!result)
  {
    return result;
  }

  if (*(a1 + 48) == *(a2 + 48) && ((v5 = *(a1 + 56), v6 = *(a2 + 56), v5 == v6) || vabds_f32(v5, v6) <= 0.00001) && ((v7 = *(a1 + 60), v8 = *(a2 + 60), v7 == v8) || vabds_f32(v7, v8) <= 0.00001) && *(a1 + 64) == *(a2 + 64))
  {
    return *(a1 + 65) == *(a2 + 65);
  }

  else
  {
    return 0;
  }
}

re::ecs2::CameraViewDescriptor *re::ecs2::CameraViewDescriptor::CameraViewDescriptor(re::ecs2::CameraViewDescriptor *this)
{
  *(this + 32) = 0;
  v2 = (this + 436);
  *(this + 3) = xmmword_1E30474D0;
  *(this + 17) = 117440767;
  *(this + 204) = xmmword_1E308B878;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 16) = 0;
  *(this + 18) = -1;
  *(this + 10) = 0;
  *(this + 88) = 0u;
  *(this + 26) = 0;
  *(this + 24) = 0;
  *(this + 200) = 0;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 36) = 0;
  *(this + 46) = 0;
  *(this + 168) = 0u;
  *(this + 152) = 0u;
  *(this + 220) = unk_1E308B888;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 272, 8);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  *(v4 + 5) = 0u;
  *(v4 + 6) = 0u;
  *(v4 + 7) = 0u;
  *(v4 + 8) = 0u;
  *(v4 + 9) = 0u;
  *(v4 + 10) = 0u;
  *(v4 + 11) = 0u;
  *(v4 + 12) = 0u;
  *(v4 + 13) = 0u;
  *(v4 + 14) = 0u;
  *(v4 + 15) = 0u;
  *(v4 + 16) = 0u;
  *(this + 38) = v4;
  *(this + 39) = -1;
  *(this + 160) = 1;
  *(this + 322) = 0;
  *(this + 44) = re::globalAllocators(v4)[2];
  *(this + 45) = 0;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  re::Pose<float>::Pose(v12, 0, 0, &v9);
  v5 = v12[1];
  *(this + 23) = v12[0];
  *(this + 24) = v5;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  re::Pose<float>::Pose(v8, 0, 0, &v9);
  v6 = v8[1];
  *(this + 25) = v8[0];
  *(this + 26) = v6;
  *(this + 108) = 0;
  *v2 = xmmword_1E308B7C0;
  *(this + 452) = 0xBDCCCCCD3DCCCCCDLL;
  *(this + 460) = 0;
  *(this + 29) = xmmword_1E30476A0;
  *(this + 120) = 1;
  *(this + 61) = 0;
  *(this + 248) = 0;
  *(this + 512) = 0;
  *(this + 592) = 0;
  *(this + 168) = 0;
  v2[15] = xmmword_1E308B7C0;
  *(this + 692) = 0xBDCCCCCD3DCCCCCDLL;
  *(this + 700) = 0;
  *(this + 44) = xmmword_1E30476A0;
  *(this + 180) = 1;
  *(this + 91) = 0;
  *(this + 368) = 0;
  *(this + 752) = 0;
  *(this + 832) = 0;
  *(this + 118) = 0;
  *(this + 234) = 0;
  *(this + 116) = 0;
  *(this + 57) = 0u;
  return this;
}

void *re::DynamicArray<re::CameraMultiView>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::CameraMultiView>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xC30uLL))
        {
          v2 = 3120 * a2;
          result = (*(*result + 32))(result, 3120 * a2, 16);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 3120, a2);
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
        v10 = v8 + 3120 * v9;
        v11 = v7;
        do
        {
          for (i = 0; i != 388; i += 194)
          {
            re::CameraView::CameraView(&v11[i], v8 + i * 8);
          }

          *(v11 + 1552) = *(v8 + 3104);
          v13 = 3104;
          do
          {
            re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v8 + v13 - 368);
            re::DynamicArray<re::ecs2::ScopeLanePair>::deinit(v8 + v13 - 928);
            re::DynamicArray<re::RenderGraphFileProvider>::deinit(v8 + v13 - 976);
            re::DynamicString::deinit((v8 + v13 - 1552));
            v13 -= 1552;
          }

          while (v13);
          v8 += 3120;
          v11 += 390;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_20;
    }
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::ecs2::ScopeLanePair>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::ecs2::ScopeLanePair>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::ecs2::ScopeLanePair>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::ecs2::ScopeLanePair>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::ecs2::ScopeLanePair>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::CameraView::PickupScopeLane>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::ecs2::ScopeLanePair>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::CameraView::PickupScopeLane>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::ecs2::ScopeLanePair>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::ecs2::ScopeLanePair>::addElement(re::Allocator **a1, re *a2, int a3, _anonymous_namespace_ *a4)
{
  memset(v14, 0, sizeof(v14));
  v13 = 0u;
  v8 = re::DynamicString::setCapacity(&v12, 0);
  memset(&v14[16], 0, 24);
  re::DynamicString::setCapacity(&v14[8], 0);
  v9.n128_f64[0] = re::DynamicArray<re::ecs2::ScopeLanePair>::add(a4, &v12);
  if (*&v14[8])
  {
    if (v14[16])
    {
      (*(**&v14[8] + 40))(v9.n128_f64[0]);
    }

    v9 = 0uLL;
    memset(&v14[8], 0, 32);
  }

  if (v12 && (v13 & 1) != 0)
  {
    (*(*v12 + 40))(v9);
  }

  v10 = (*(a4 + 4) + (*(a4 + 2) << 6) - 64);
  re::introspectionInitElement(a2, a3, a1[6], v10);
  return v10;
}

uint64_t re::IntrospectionDynamicArray<re::ecs2::ScopeLanePair>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + (a3 << 6);
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + (a3 << 6);
}

void re::DynamicArray<re::ecs2::ScopeLanePair>::resize(_anonymous_namespace_ *a1, unint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 2);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v9 = a2 << 6;
    v10 = a2;
    do
    {
      v11 = *(v3 + 4) + v9;
      re::DynamicString::deinit((v11 + 32));
      re::DynamicString::deinit(v11);
      ++v10;
      v9 += 64;
    }

    while (v10 < *(v3 + 2));
  }

  else
  {
    if (*(a1 + 1) < a2)
    {
      a1 = re::DynamicArray<re::CameraView::PickupScopeLane>::setCapacity(a1, a2);
      v4 = *(v3 + 2);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = v4 << 6;
      do
      {
        v7 = *(v3 + 4) + v6;
        *(v7 + 48) = 0u;
        *v7 = 0u;
        *(v7 + 16) = 0u;
        *(v7 + 32) = 0u;
        v8 = re::DynamicString::setCapacity(v7, 0);
        *(v7 + 48) = 0u;
        *(v7 + 32) = 0u;
        a1 = re::DynamicString::setCapacity((v7 + 32), 0);
        v6 += 64;
        --v5;
      }

      while (v5);
    }
  }

  *(v3 + 2) = a2;
  ++*(v3 + 6);
}

double re::DynamicArray<re::ecs2::ScopeLanePair>::add(_anonymous_namespace_ *this, void *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::ecs2::ScopeLanePair>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + (v4 << 6);
  result = 0.0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 24) = a2[3];
  v7 = a2[1];
  *v5 = *a2;
  *a2 = 0;
  v8 = a2[2];
  a2[3] = 0;
  v10 = *(v5 + 8);
  v9 = *(v5 + 16);
  *(v5 + 8) = v7;
  *(v5 + 16) = v8;
  a2[1] = v10;
  a2[2] = v9;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 56) = a2[7];
  v11 = a2[5];
  *(v5 + 32) = a2[4];
  a2[4] = 0;
  v12 = a2[6];
  a2[7] = 0;
  v14 = *(v5 + 40);
  v13 = *(v5 + 48);
  *(v5 + 40) = v11;
  *(v5 + 48) = v12;
  a2[5] = v14;
  a2[6] = v13;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void *re::DynamicArray<re::ecs2::ScopeLanePair>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::CameraView::PickupScopeLane>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::CameraView::PickupScopeLane>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ScopeLanePair>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::CameraView::PickupScopeLane>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ScopeLanePair>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::ecs2::ScopeLanePair>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::ecs2::ScopeLanePair>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::CameraView::PickupScopeLane>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::ecs2::ScopeLanePair>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = v9 << 6;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 64;
        v11 -= 64;
      }

      while (v11);
    }
  }
}

void re::DynamicArray<re::ecs2::ScopeLanePair>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = v2 << 6;
    do
    {
      re::DynamicString::deinit((v3 + 32));
      re::DynamicString::deinit(v3);
      v3 += 64;
      v4 -= 64;
    }

    while (v4);
  }

  ++*(a1 + 24);
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ScopeLanePair>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + (a2 << 6);
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ScopeLanePair>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ScopeLanePair>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + (v5 << 6);
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ScopeLanePair>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::ecs2::SpecifyLaneCommand>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::ecs2::SpecifyLaneCommand>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::ecs2::SpecifyLaneCommand>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::ecs2::SpecifyLaneCommand>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::ecs2::SpecifyLaneCommand>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::ecs2::SpecifyLaneCommand>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::ecs2::SpecifyLaneCommand>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::ecs2::SpecifyLaneCommand>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::ecs2::SpecifyLaneCommand>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::ecs2::SpecifyLaneCommand>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
{
  memset(v19, 0, sizeof(v19));
  v18 = 0u;
  v16 = 0u;
  memset(v17, 0, sizeof(v17));
  re::DynamicString::setCapacity(&v15, 0);
  memset(v17 + 8, 0, 48);
  *(&v17[3] + 1) = -1;
  v18 = 0u;
  memset(v19, 0, 28);
  re::DynamicArray<re::ecs2::SpecifyLaneCommand>::add(a4, &v15);
  for (i = 14; i != 12; --i)
  {
    v9 = (&v15)[i];
    if (v9)
    {

      (&v15)[i] = 0;
    }
  }

  for (j = 12; j != 10; --j)
  {
    v11 = (&v15)[j];
    if (v11)
    {

      (&v15)[j] = 0;
    }
  }

  for (k = 7; k != 1; k -= 3)
  {
    re::AssetHandle::~AssetHandle(&(&v15)[k]);
  }

  if (v15 && (v16 & 1) != 0)
  {
    (*(*v15 + 40))();
  }

  v13 = (*(a4 + 32) + 136 * *(a4 + 16) - 136);
  re::introspectionInitElement(a2, a3, a1[6], v13);
  return v13;
}

uint64_t re::IntrospectionDynamicArray<re::ecs2::SpecifyLaneCommand>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 136 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 136 * a3;
}

void *re::DynamicArray<re::ecs2::SpecifyLaneCommand>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ecs2::SpecifyLaneCommand>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x88uLL))
        {
          v2 = 136 * a2;
          result = (*(*result + 32))(result, 136 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_27;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 136, a2);
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
LABEL_27:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + 136 * v9;
        v11 = v7;
        do
        {
          v12 = 0;
          *v11 = 0u;
          *(v11 + 1) = 0u;
          v11[3] = *(v8 + 24);
          v13 = *(v8 + 8);
          *v11 = *v8;
          *v8 = 0;
          v14 = *(v8 + 16);
          *(v8 + 24) = 0;
          v16 = v11[1];
          v15 = v11[2];
          v11[1] = v13;
          v11[2] = v14;
          *(v8 + 8) = v16;
          *(v8 + 16) = v15;
          do
          {
            v17 = &v11[v12];
            v18 = (v8 + v12 * 8);
            v17[4] = 0;
            v17[5] = 0;
            v17[6] = 0;
            v17[5] = *(v8 + v12 * 8 + 40);
            v18[5] = 0;
            v19 = v11[v12 + 4];
            v17[4] = 0;
            v17[4] = *(v8 + v12 * 8 + 32);
            v18[4] = v19;
            v20 = v11[v12 + 6];
            v17[6] = *(v8 + v12 * 8 + 48);
            v18[6] = v20;
            v12 += 3;
          }

          while (v12 != 6);
          v11[10] = *(v8 + 80);
          v11[11] = *(v8 + 88);
          *(v8 + 88) = 0;
          *(v11 + 6) = *(v8 + 96);
          *(v8 + 96) = 0;
          *(v8 + 104) = 0;
          v11[14] = *(v8 + 112);
          *(v8 + 112) = 0;
          v21 = *(v8 + 120);
          *(v11 + 32) = *(v8 + 128);
          v11[15] = v21;
          for (i = 112; i != 96; i -= 8)
          {
            v23 = *(v8 + i);
            if (v23)
            {

              *(v8 + i) = 0;
            }
          }

          do
          {
            v24 = *(v8 + i);
            if (v24)
            {

              *(v8 + i) = 0;
            }

            i -= 8;
          }

          while (i != 80);
          for (j = 56; j != 8; j -= 24)
          {
            re::AssetHandle::~AssetHandle((v8 + j));
          }

          re::DynamicString::deinit(v8);
          v8 += 136;
          v11 += 17;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_27;
    }
  }

  return result;
}

void re::DynamicArray<re::ecs2::SpecifyLaneCommand>::resize(_anonymous_namespace_ *a1, unint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 2);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 136 * a2 + 112;
    v9 = 136 * a2 + 96;
    v10 = 136 * a2 + 56;
    v22 = a2;
    v11 = a2;
    do
    {
      v12 = 0;
      v13 = *(v3 + 4);
      v14 = v13 + v8;
      do
      {
        v15 = *(v14 + v12);
        if (v15)
        {

          *(v14 + v12) = 0;
        }

        v12 -= 8;
      }

      while (v12 != -16);
      v16 = 0;
      v17 = v13 + v9;
      do
      {
        v18 = *(v17 + v16);
        if (v18)
        {

          *(v17 + v16) = 0;
        }

        v16 -= 8;
      }

      while (v16 != -16);
      v19 = (v13 + v10);
      v20 = -48;
      do
      {
        re::AssetHandle::~AssetHandle(v19);
        v19 = (v21 - 24);
        v20 += 24;
      }

      while (v20);
      re::DynamicString::deinit((v13 + 136 * v11++));
      v8 += 136;
      v9 += 136;
      v10 += 136;
    }

    while (v11 < *(v3 + 2));
  }

  else
  {
    if (*(a1 + 1) < a2)
    {
      a1 = re::DynamicArray<re::ecs2::SpecifyLaneCommand>::setCapacity(a1, a2);
      v4 = *(v3 + 2);
    }

    v22 = a2;
    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 136 * v4;
      do
      {
        v7 = *(v3 + 4) + v6;
        *(v7 + 128) = 0;
        *(v7 + 96) = 0u;
        *(v7 + 112) = 0u;
        *(v7 + 64) = 0u;
        *(v7 + 80) = 0u;
        *(v7 + 32) = 0u;
        *(v7 + 48) = 0u;
        *v7 = 0u;
        *(v7 + 16) = 0u;
        a1 = re::DynamicString::setCapacity(v7, 0);
        *(v7 + 48) = 0u;
        *(v7 + 64) = 0u;
        *(v7 + 32) = 0u;
        *(v7 + 80) = -1;
        *(v7 + 88) = 0u;
        *(v7 + 104) = 0u;
        v6 += 136;
        *(v7 + 116) = 0u;
        --v5;
      }

      while (v5);
    }
  }

  *(v3 + 2) = v22;
  ++*(v3 + 6);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SpecifyLaneCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::ecs2::SpecifyLaneCommand>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SpecifyLaneCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::ecs2::SpecifyLaneCommand>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::ecs2::SpecifyLaneCommand>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::ecs2::SpecifyLaneCommand>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::ecs2::SpecifyLaneCommand>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 136 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 136;
        v11 -= 136;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SpecifyLaneCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 136 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SpecifyLaneCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SpecifyLaneCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 136 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SpecifyLaneCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::ecs2::CameraViewDescriptor>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::ecs2::CameraViewDescriptor>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::ecs2::CameraViewDescriptor>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::ecs2::CameraViewDescriptor>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::ecs2::CameraViewDescriptor>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::ecs2::CameraViewDescriptor>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::ecs2::CameraViewDescriptor>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::ecs2::CameraViewDescriptor>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::ecs2::CameraViewDescriptor>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::ecs2::CameraViewDescriptor>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *a4)
{
  v73 = *MEMORY[0x1E69E9840];
  bzero(v18, 0x3C0uLL);
  v19 = xmmword_1E30474D0;
  v20 = -1;
  v21 = 1792;
  v22 = -1;
  v23 = 0;
  v33 = xmmword_1E308B878;
  v24 = 0u;
  v25 = 0;
  v32 = 0;
  v26 = 0u;
  v27 = 0u;
  v29 = 0u;
  v30 = 0u;
  v28 = 0;
  v31 = 0;
  v34 = unk_1E308B888;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v9 = re::globalAllocators(v8);
  v10 = (*(*v9[2] + 32))(v9[2], 272, 8);
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 2) = 0u;
  *(v10 + 3) = 0u;
  *(v10 + 4) = 0u;
  *(v10 + 5) = 0u;
  *(v10 + 6) = 0u;
  *(v10 + 7) = 0u;
  *(v10 + 8) = 0u;
  *(v10 + 9) = 0u;
  *(v10 + 10) = 0u;
  *(v10 + 11) = 0u;
  *(v10 + 12) = 0u;
  *(v10 + 13) = 0u;
  *(v10 + 14) = 0u;
  *(v10 + 15) = 0u;
  *(v10 + 16) = 0u;
  v39 = v10;
  v40 = -1;
  v41 = 1;
  v42 = 0;
  v43 = re::globalAllocators(v10)[2];
  v44 = 0;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  re::Pose<float>::Pose(v17, 0, 0, &v14);
  v45 = v17[0];
  v46 = v17[1];
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  re::Pose<float>::Pose(v13, 0, 0, &v14);
  v47 = v13[0];
  v48 = v13[1];
  v49 = 0;
  v50 = xmmword_1E308B7C0;
  v51 = 0xBDCCCCCD3DCCCCCDLL;
  v52 = 0;
  v53 = xmmword_1E30476A0;
  v54 = 1;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = xmmword_1E308B7C0;
  v61 = 0xBDCCCCCD3DCCCCCDLL;
  v62 = 0;
  v63 = xmmword_1E30476A0;
  v64 = 1;
  v65 = 0;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v72 = 0;
  v71 = 0;
  v70 = 0;
  v69 = 0u;
  re::DynamicArray<re::ecs2::CameraViewDescriptor>::add(a4, v18);
  re::ecs2::CameraViewDescriptor::~CameraViewDescriptor(v18);
  v11 = (*(a4 + 4) + 960 * *(a4 + 2) - 960);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v11);
  return v11;
}

uint64_t re::IntrospectionDynamicArray<re::ecs2::CameraViewDescriptor>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 960 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 960 * a3;
}

void *re::DynamicArray<re::ecs2::CameraViewDescriptor>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ecs2::CameraViewDescriptor>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x3C0uLL))
        {
          v2 = 960 * a2;
          result = (*(*result + 32))(result, 960 * a2, 16);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 960, a2);
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
        v10 = 960 * v9;
        v11 = v7;
        do
        {
          re::ecs2::CameraViewDescriptor::CameraViewDescriptor(v11, v8);
          re::ecs2::CameraViewDescriptor::~CameraViewDescriptor(v8);
          v8 += 120;
          v11 += 120;
          v10 -= 960;
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

uint64_t *re::ecs2::CameraViewDescriptor::CameraViewDescriptor(uint64_t *a1, uint64_t *a2)
{
  v4 = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[1] = a2[1];
  a2[1] = 0;
  v5 = *a1;
  *a1 = 0;
  *a1 = *a2;
  *a2 = v5;
  v6 = a1[2];
  a1[2] = a2[2];
  a2[2] = v6;
  v7 = *(a2 + 3);
  v8 = *(a2 + 5);
  v9 = *(a2 + 7);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 7) = v9;
  *(a1 + 5) = v8;
  *(a1 + 3) = v7;
  a1[14] = 0;
  a1[11] = 0;
  a1[12] = 0;
  a1[10] = 0;
  *(a1 + 26) = 0;
  v10 = a2[11];
  a1[10] = a2[10];
  a1[11] = v10;
  a2[10] = 0;
  a2[11] = 0;
  v11 = a1[12];
  a1[12] = a2[12];
  a2[12] = v11;
  v12 = a1[14];
  a1[14] = a2[14];
  a2[14] = v12;
  ++*(a2 + 26);
  ++*(a1 + 26);
  do
  {
    v13 = &a1[v4];
    v14 = &a2[v4];
    v13[19] = 0;
    v13[16] = 0;
    v13[17] = 0;
    v13[15] = 0;
    *(v13 + 36) = 0;
    v15 = a2[v4 + 16];
    v13[15] = a2[v4 + 15];
    v13[16] = v15;
    v14[15] = 0;
    v14[16] = 0;
    v16 = a1[v4 + 17];
    v13[17] = a2[v4 + 17];
    v14[17] = v16;
    v17 = a1[v4 + 19];
    v13[19] = a2[v4 + 19];
    v14[19] = v17;
    *(v14 + 36) = LODWORD(a2[v4 + 18]) + 1;
    *(v13 + 36) = LODWORD(a1[v4 + 18]) + 1;
    v4 += 5;
  }

  while (v4 != 10);
  v18 = *(a2 + 25);
  v19 = *(a2 + 27);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 27) = v19;
  *(a1 + 25) = v18;
  a1[30] = a2[30];
  a2[30] = 0;
  a1[31] = a2[31];
  a2[31] = 0;
  a1[32] = a2[32];
  a2[32] = 0;
  *(a1 + 33) = *(a2 + 33);
  a2[33] = 0;
  a2[34] = 0;
  *(a1 + 35) = *(a2 + 35);
  v20 = *(a2 + 37);
  a2[35] = 0;
  a2[36] = 0;
  a2[37] = 0;
  *(a1 + 37) = v20;
  a2[38] = 0;
  v21 = a2[39];
  *(a1 + 319) = *(a2 + 319);
  a1[39] = v21;
  a1[44] = a2[44];
  a1[45] = 0;
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::operator=<24ul>((a1 + 41), (a2 + 41));
  for (i = 46; i != 54; i += 4)
  {
    v23 = &a1[i];
    v24 = *&a2[i + 2];
    *v23 = *&a2[i];
    *(v23 + 1) = v24;
  }

  v25 = 0;
  v26 = 0;
  do
  {
    v27 = v25;
    v28 = 30 * v26;
    v29 = &a1[v28 + 54];
    v30 = &a2[v28 + 54];
    *v29 = *v30;
    v31 = *(v30 + 16);
    v32 = *(v30 + 32);
    v33 = *(v30 + 48);
    *(v29 + 64) = *(v30 + 64);
    *(v29 + 32) = v32;
    *(v29 + 48) = v33;
    *(v29 + 16) = v31;
    v34 = *(v30 + 80);
    *(v29 + 80) = v34;
    if (v34 == 1)
    {
      v35 = *(v30 + 96);
      v36 = *(v30 + 112);
      v37 = *(v30 + 144);
      *(v29 + 128) = *(v30 + 128);
      *(v29 + 144) = v37;
      *(v29 + 96) = v35;
      *(v29 + 112) = v36;
    }

    v38 = *(v30 + 160);
    *(v29 + 160) = v38;
    if (v38 == 1)
    {
      v39 = *(v30 + 176);
      v40 = *(v30 + 192);
      v41 = *(v30 + 224);
      *(v29 + 208) = *(v30 + 208);
      *(v29 + 224) = v41;
      *(v29 + 176) = v39;
      *(v29 + 192) = v40;
    }

    v25 = 1;
    v26 = 1;
  }

  while ((v27 & 1) == 0);
  a1[118] = 0;
  a1[114] = 0;
  a1[116] = 0;
  a1[115] = 0;
  *(a1 + 234) = 0;
  a1[114] = a2[114];
  a2[114] = 0;
  a1[115] = a2[115];
  a2[115] = 0;
  v42 = a1[116];
  a1[116] = a2[116];
  a2[116] = v42;
  v43 = a1[118];
  a1[118] = a2[118];
  a2[118] = v43;
  ++*(a2 + 234);
  ++*(a1 + 234);
  return a1;
}

void re::DynamicArray<re::ecs2::CameraViewDescriptor>::resize(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v13 = 960 * a2;
    v14 = a2;
    do
    {
      re::ecs2::CameraViewDescriptor::~CameraViewDescriptor((*(a1 + 32) + v13));
      ++v2;
      v13 += 960;
    }

    while (v2 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::ecs2::CameraViewDescriptor>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v14 = v2;
    v5 = v2 - v4;
    if (v2 > v4)
    {
      v6 = 960 * v4;
      do
      {
        v7 = *(a1 + 32) + v6;
        bzero(v7, 0x3C0uLL);
        *(v7 + 48) = xmmword_1E30474D0;
        *(v7 + 68) = -1;
        *(v7 + 70) = 1792;
        *(v7 + 72) = -1;
        *(v7 + 80) = 0;
        *(v7 + 88) = 0u;
        *(v7 + 104) = 0;
        *(v7 + 200) = 0;
        *(v7 + 112) = 0u;
        *(v7 + 128) = 0u;
        *(v7 + 144) = 0;
        *(v7 + 152) = 0u;
        *(v7 + 168) = 0u;
        *(v7 + 184) = 0;
        *(v7 + 204) = xmmword_1E308B878;
        *(v7 + 220) = unk_1E308B888;
        *(v7 + 272) = 0u;
        *(v7 + 288) = 0u;
        *(v7 + 240) = 0u;
        *(v7 + 256) = 0u;
        v9 = re::globalAllocators(v8);
        v10 = (*(*v9[2] + 32))(v9[2], 272, 8);
        *v10 = 0u;
        *(v10 + 1) = 0u;
        *(v10 + 2) = 0u;
        *(v10 + 3) = 0u;
        *(v10 + 4) = 0u;
        *(v10 + 5) = 0u;
        *(v10 + 6) = 0u;
        *(v10 + 7) = 0u;
        *(v10 + 8) = 0u;
        *(v10 + 9) = 0u;
        *(v10 + 10) = 0u;
        *(v10 + 11) = 0u;
        *(v10 + 12) = 0u;
        *(v10 + 13) = 0u;
        *(v10 + 14) = 0u;
        *(v10 + 15) = 0u;
        *(v10 + 16) = 0u;
        *(v7 + 304) = v10;
        *(v7 + 312) = -1;
        *(v7 + 320) = 1;
        *(v7 + 322) = 0;
        *(v7 + 352) = re::globalAllocators(v10)[2];
        *(v7 + 360) = 0;
        v17 = 0u;
        v18 = 0u;
        v16 = 0u;
        re::Pose<float>::Pose(v19, 0, 0, &v16);
        v11 = v19[1];
        *(v7 + 368) = v19[0];
        *(v7 + 384) = v11;
        v17 = 0u;
        v18 = 0u;
        v16 = 0u;
        re::Pose<float>::Pose(v15, 0, 0, &v16);
        v12 = v15[1];
        *(v7 + 400) = v15[0];
        *(v7 + 416) = v12;
        *(v7 + 432) = 0;
        *(v7 + 436) = xmmword_1E308B7C0;
        *(v7 + 452) = 0xBDCCCCCD3DCCCCCDLL;
        *(v7 + 460) = 0;
        *(v7 + 464) = xmmword_1E30476A0;
        *(v7 + 480) = 1;
        *(v7 + 488) = 0;
        *(v7 + 496) = 0;
        *(v7 + 512) = 0;
        *(v7 + 592) = 0;
        *(v7 + 672) = 0;
        *(v7 + 676) = xmmword_1E308B7C0;
        *(v7 + 692) = 0xBDCCCCCD3DCCCCCDLL;
        *(v7 + 700) = 0;
        *(v7 + 704) = xmmword_1E30476A0;
        *(v7 + 720) = 1;
        *(v7 + 728) = 0;
        *(v7 + 736) = 0;
        *(v7 + 752) = 0;
        *(v7 + 832) = 0;
        *(v7 + 944) = 0;
        *(v7 + 936) = 0;
        *(v7 + 928) = 0;
        v6 += 960;
        *(v7 + 912) = 0u;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = v14;
  ++*(a1 + 24);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::ecs2::CameraViewDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::ecs2::CameraViewDescriptor>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::ecs2::CameraViewDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::ecs2::CameraViewDescriptor>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::ecs2::CameraViewDescriptor>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::ecs2::CameraViewDescriptor>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::ecs2::CameraViewDescriptor>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 960 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 960;
        v11 -= 960;
      }

      while (v11);
    }
  }
}

re::ecs2::CameraViewDescriptor *re::DynamicArray<re::ecs2::CameraViewDescriptor>::clear(re::ecs2::CameraViewDescriptor *result)
{
  v1 = result;
  v2 = *(result + 2);
  *(result + 2) = 0;
  if (v2)
  {
    result = *(result + 4);
    v3 = 960 * v2;
    do
    {
      re::ecs2::CameraViewDescriptor::~CameraViewDescriptor(result);
      result = (v4 + 960);
      v3 -= 960;
    }

    while (v3);
  }

  ++*(v1 + 6);
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::CameraViewDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 960 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::CameraViewDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::CameraViewDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 960 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::CameraViewDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

uint64_t re::make::shared::unsafelyInplace<re::ecs2::CameraViewDescriptorsComponent>(uint64_t a1)
{
  *(a1 + 368) = 0;
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
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v2 = (a1 + 32);
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CDACD0;
  *(v3 + 28) = 0;
  objc_initWeak(v2, 0);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  *(a1 + 312) = 0;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 224) = 0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0;
  *(a1 + 364) = 0x7FFFFFFFLL;
  return a1;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs230CameraViewDescriptorsComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void _ZZN2re8internal15setIntroVersionINS_4ecs213TintComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

BOOL std::equal[abi:nn200100]<re::ecs2::ScopeLanePair const*,re::ecs2::ScopeLanePair const*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return 1;
  }

  v5 = a1;
  while (1)
  {
    result = re::DynamicString::operator==(v5, a3);
    if (!result)
    {
      break;
    }

    v7 = v5 + 32;
    v8 = a3 + 32;
    result = re::DynamicString::operator==(v7, v8);
    if (!result)
    {
      break;
    }

    v5 = v7 + 32;
    a3 = v8 + 32;
    if (v5 == a2)
    {
      return 1;
    }
  }

  return result;
}

void *re::DynamicArray<re::ecs2::CameraViewDescriptor>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::ecs2::CameraViewDescriptor>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::ecs2::CameraViewDescriptor>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

re::ecs2::CameraViewDescriptor *re::ecs2::CameraViewDescriptor::CameraViewDescriptor(re::ecs2::CameraViewDescriptor *this, const re::ecs2::CameraViewDescriptor *a2)
{
  v4 = re::AssetHandle::AssetHandle(this, a2);
  v5 = *(a2 + 24);
  v6 = *(a2 + 40);
  v7 = *(a2 + 56);
  *(v4 + 18) = *(a2 + 18);
  *(v4 + 56) = v7;
  *(v4 + 40) = v6;
  *(v4 + 24) = v5;
  re::DynamicArray<re::CameraView::PickupScopeLane>::DynamicArray(v4 + 80, a2 + 10);
  for (i = 120; i != 200; i += 40)
  {
    re::DynamicArray<re::CameraView::PickupScopeLane>::DynamicArray(this + i, (a2 + i));
  }

  v9 = *(a2 + 200);
  v10 = *(a2 + 216);
  *(this + 58) = *(a2 + 58);
  *(this + 216) = v10;
  *(this + 200) = v9;
  for (j = 240; j != 256; j += 8)
  {
    *(this + j) = *(a2 + j);
  }

  do
  {
    *(this + j) = *(a2 + j);
    j += 8;
  }

  while (j != 272);
  do
  {
    *(this + j) = *(a2 + j);
    j += 8;
  }

  while (j != 288);
  *(this + 36) = *(a2 + 36);
  re::mtl::RenderCommandEncoder::RenderCommandEncoder((this + 296), a2 + 37);
  v12 = *(a2 + 39);
  *(this + 319) = *(a2 + 319);
  *(this + 39) = v12;
  *(this + 44) = *(a2 + 44);
  *(this + 45) = 0;
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::operator=<24ul>(this + 328, a2 + 328);
  for (k = 368; k != 432; k += 32)
  {
    v14 = (this + k);
    v15 = *(a2 + k + 16);
    *v14 = *(a2 + k);
    v14[1] = v15;
  }

  v16 = 0;
  v17 = 0;
  do
  {
    v18 = v16;
    v19 = 240 * v17;
    v20 = this + v19 + 432;
    v21 = a2 + v19 + 432;
    *v20 = *v21;
    v22 = *(v21 + 1);
    v23 = *(v21 + 2);
    v24 = *(v21 + 3);
    *(v20 + 32) = *(v21 + 32);
    *(v20 + 2) = v23;
    *(v20 + 3) = v24;
    *(v20 + 1) = v22;
    v25 = v21[80];
    v20[80] = v25;
    if (v25 == 1)
    {
      v26 = *(v21 + 6);
      v27 = *(v21 + 7);
      v28 = *(v21 + 9);
      *(v20 + 8) = *(v21 + 8);
      *(v20 + 9) = v28;
      *(v20 + 6) = v26;
      *(v20 + 7) = v27;
    }

    v29 = v21[160];
    v20[160] = v29;
    if (v29 == 1)
    {
      v30 = *(v21 + 11);
      v31 = *(v21 + 12);
      v32 = *(v21 + 14);
      *(v20 + 13) = *(v21 + 13);
      *(v20 + 14) = v32;
      *(v20 + 11) = v30;
      *(v20 + 12) = v31;
    }

    v16 = 1;
    v17 = 1;
  }

  while ((v18 & 1) == 0);
  re::DynamicArray<re::ecs2::SpecifyLaneCommand>::DynamicArray(this + 912, a2 + 114);
  return this;
}

uint64_t re::DynamicArray<re::ecs2::SpecifyLaneCommand>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::ecs2::SpecifyLaneCommand>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::ecs2::SpecifyLaneCommand>::copy(a1, a2);
  }

  return a1;
}

void re::DynamicArray<re::ecs2::SpecifyLaneCommand>::copy(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= *(a1 + 16))
  {
    re::DynamicArray<re::ecs2::SpecifyLaneCommand>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<re::ecs2::SpecifyLaneCommand *,re::ecs2::SpecifyLaneCommand *,re::ecs2::SpecifyLaneCommand *>(&v23, *(a2 + 32), (*(a2 + 32) + 136 * *(a1 + 16)), *(a1 + 32));
    v13 = *(a1 + 16);
    if (v13 != v4)
    {
      v14 = *(a2 + 32);
      v15 = v14 + 136 * v4;
      v16 = 17 * v13;
      v17 = v14 + 8 * v16;
      v18 = *(a1 + 32) + 8 * v16;
      do
      {
        re::DynamicString::DynamicString(v18, v17);
        for (i = 32; i != 80; i += 24)
        {
          re::AssetHandle::AssetHandle((v18 + i), (v17 + i));
        }

        *(v18 + 80) = *(v17 + 80);
        for (j = 88; j != 104; j += 8)
        {
          *(v18 + j) = *(v17 + j);
        }

        do
        {
          *(v18 + j) = *(v17 + j);
          j += 8;
        }

        while (j != 120);
        v21 = *(v17 + 120);
        *(v18 + 128) = *(v17 + 128);
        *(v18 + 120) = v21;
        v17 += 136;
        v18 += 136;
      }

      while (v17 != v15);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::ecs2::SpecifyLaneCommand *,re::ecs2::SpecifyLaneCommand *,re::ecs2::SpecifyLaneCommand *>(&v22, *(a2 + 32), (*(a2 + 32) + 136 * v4), *(a1 + 32));
    v5 = *(a1 + 16);
    if (v4 != v5)
    {
      v6 = *(a1 + 32);
      v7 = (v6 + 136 * v5);
      v8 = (v6 + 136 * v4);
      do
      {
        for (k = 112; k != 96; k -= 8)
        {
          v10 = *(v8 + k);
          if (v10)
          {

            *(v8 + k) = 0;
          }
        }

        do
        {
          v11 = *(v8 + k);
          if (v11)
          {

            *(v8 + k) = 0;
          }

          k -= 8;
        }

        while (k != 80);
        for (m = 56; m != 8; m -= 24)
        {
          re::AssetHandle::~AssetHandle((v8 + m));
        }

        re::DynamicString::deinit(v8);
        v8 = (v8 + 136);
      }

      while (v8 != v7);
    }
  }

  *(a1 + 16) = v4;
}

re::DynamicString *std::__copy_impl::operator()[abi:nn200100]<re::ecs2::SpecifyLaneCommand *,re::ecs2::SpecifyLaneCommand *,re::ecs2::SpecifyLaneCommand *>(int a1, re::DynamicString *a2, re::DynamicString *a3, re::DynamicString *this)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      re::DynamicString::operator=(this, v5);
      for (i = 32; i != 80; i += 24)
      {
        re::AssetHandle::operator=(this + i, (v5 + i));
      }

      *(this + 10) = *(v5 + 10);
      for (j = 88; j != 104; j += 8)
      {
        NS::SharedPtr<MTL::Buffer>::operator=((this + j), (v5 + j));
      }

      do
      {
        NS::SharedPtr<MTL::Buffer>::operator=((this + j), (v5 + j));
        j += 8;
      }

      while (j != 120);
      v9 = *(v5 + 15);
      *(this + 32) = *(v5 + 32);
      *(this + 15) = v9;
      v5 = (v5 + 136);
      this = (this + 136);
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void *re::DynamicArray<re::ecs2::CameraViewDescriptorsComponent::OneoffViewDescriptor>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ecs2::CameraViewDescriptorsComponent::OneoffViewDescriptor>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x3F0uLL))
        {
          v2 = 1008 * a2;
          result = (*(*result + 32))(result, 1008 * a2, 16);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 1008, a2);
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
        v11 = 1008 * v9;
        do
        {
          v12 = re::ecs2::CameraViewDescriptor::CameraViewDescriptor(&v7[v10 / 8], (v8 + v10));
          v12[123] = *(v8 + v10 + 984);
          v12[124] = 0;
          re::FunctionBase<24ul,void ()(re::FrameCount const&)>::operator=<24ul>((v12 + 120), v8 + v10 + 960);
          re::FunctionBase<24ul,void ()(re::FrameCount const&)>::destroyCallable(v8 + v10 + 960);
          re::ecs2::CameraViewDescriptor::~CameraViewDescriptor((v8 + v10));
          v10 += 1008;
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

uint64_t re::HashTable<unsigned long,re::DynamicString,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v30, v9, v8);
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
            v17 = 0;
            v18 = (v13 + 24);
            do
            {
              if ((*(v18 - 3) & 0x80000000) != 0)
              {
                v19 = re::HashTable<unsigned long,re::DynamicString,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(a1, v18[3] % *(a1 + 24));
                *(v19 + 8) = *(v18 - 2);
                *(v19 + 16) = 0u;
                *(v19 + 32) = 0u;
                *(v19 + 40) = v18[2];
                v20 = *v18;
                *(v19 + 16) = *(v18 - 1);
                *(v18 - 1) = 0;
                v21 = v18[1];
                v18[2] = 0;
                v23 = *(v19 + 24);
                v22 = *(v19 + 32);
                *(v19 + 24) = v20;
                *(v19 + 32) = v21;
                *v18 = v23;
                v18[1] = v22;
              }

              v18 += 7;
              ++v17;
            }

            while (v17 < v16);
          }

          re::HashTable<unsigned long,re::DynamicString,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(v30);
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
    v25 = *(v24 + 56 * v5);
  }

  else
  {
    v24 = *(a1 + 16);
    v25 = *(v24 + 56 * v5);
    *(a1 + 36) = v25 & 0x7FFFFFFF;
  }

  v27 = v24 + 56 * v5;
  *v27 = v25 | 0x80000000;
  v28 = *(a1 + 8);
  *v27 = *(v28 + 4 * a2) | 0x80000000;
  *(v28 + 4 * a2) = v5;
  *(v27 + 48) = a3;
  ++*(a1 + 28);
  return v24 + 56 * v5;
}

uint64_t re::introspect<re::ecs2::RenderOptionsService>()
{
  v0 = &unk_1EE187000;
  {
    v0 = &unk_1EE187000;
    if (v2)
    {
      re::introspect<re::ecs2::RenderOptionsService>(BOOL)::info = re::ecs2::introspect_RenderOptionsService(0);
      v0 = &unk_1EE187000;
    }
  }

  return v0[102];
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,re::ecs2::CameraViewDescriptorsComponentStateImpl::processUpdatingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent> *,re::ecs2::ComponentBuckets<re::ecs2::CameraViewDescriptorsComponent>::BucketIteration,void *)::$_1 &,re::ecs2::CameraViewDescriptorsComponent**,false>(unint64_t result, uint64_t *a2, uint64_t a3, char a4)
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
        if (*(v76 + 28) < *(*v8 + 28))
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
      v89 = *(v85 + 7);
      v90 = *(*v8 + 28);
      v91 = *(v87 + 28);
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
      if (*(v141 + 28) < *(v85 + 7))
      {
        *v86 = v141;
        *(a2 - 1) = v85;
        v142 = *v86;
        v143 = *v84;
        v144 = *(v142 + 28);
        if (v144 < *(v143 + 28))
        {
          v8[1] = v142;
          v8[2] = v143;
          v145 = *v8;
          if (v144 < *(*v8 + 28))
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

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::CameraViewDescriptorsComponentStateImpl::processUpdatingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent> *,re::ecs2::ComponentBuckets<re::ecs2::CameraViewDescriptorsComponent>::BucketIteration,void *)::$_1 &,re::ecs2::CameraViewDescriptorsComponent**,0>(v8, v8 + 1, v8 + 2, v8 + 3, a2 - 1);
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
            v101 = *(v99 + 28);
            if (v101 < *(v100 + 28))
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
                if (v101 >= *(v100 + 28))
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
          v139 = *(v137 + 28);
          if (v139 < *(v138 + 28))
          {
            v140 = v7;
            do
            {
              *v140 = v138;
              v138 = *(v140 - 2);
              --v140;
            }

            while (v139 < *(v138 + 28));
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
            if (2 * v107 + 2 < v9 && *(v110 + 28) < *(v109[1] + 28))
            {
              v110 = v109[1];
              ++v109;
              v108 = 2 * v107 + 2;
            }

            result = &v8[v107];
            v111 = *result;
            v112 = *(*result + 28);
            if (*(v110 + 28) >= v112)
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
                if (v115 < v9 && *(v110 + 28) < *(v109[1] + 28))
                {
                  v110 = v109[1];
                  ++v109;
                  v114 = v115;
                }

                result = v113;
                v108 = v114;
              }

              while (*(v110 + 28) >= v112);
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
              result = *(v121 + 28);
              if (result >= *(v125 + 28))
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
              v133 = *(*v120 + 28);
              if (*(*v130 + 28) < v133)
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

                while (*(*v130 + 28) < v133);
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
    v13 = *(v12 + 28);
    if (v9 >= 0x81)
    {
      v14 = *v10;
      v15 = *v8;
      v16 = *(*v10 + 28);
      v17 = *(*v8 + 28);
      if (v16 >= v17)
      {
        if (v13 < v16)
        {
          *v10 = v12;
          *(a2 - 1) = v14;
          v22 = *v8;
          if (*(*v10 + 28) < *(*v8 + 28))
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
        if (*(v24 + 28) < v17)
        {
          *v10 = v24;
LABEL_27:
          *(a2 - 1) = v15;
        }
      }

      v25 = v10 - 1;
      v26 = *(v10 - 1);
      v27 = v8[1];
      v28 = *(v26 + 28);
      v29 = *(v27 + 28);
      v30 = *(a2 - 2);
      v31 = *(v30 + 28);
      if (v28 >= v29)
      {
        if (v31 < v28)
        {
          *v25 = v30;
          *(a2 - 2) = v26;
          v32 = v8[1];
          if (*(*v25 + 28) < *(v32 + 28))
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
        if (*(v34 + 28) < v29)
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
      v39 = *(v37 + 28);
      v40 = *(v38 + 28);
      v41 = *(a2 - 3);
      v42 = *(v41 + 28);
      if (v39 >= v40)
      {
        if (v42 < v39)
        {
          *v35 = v41;
          *(a2 - 3) = v36;
          v43 = v8[2];
          if (*(*v35 + 28) < *(v43 + 28))
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
        if (*(v44 + 28) < v40)
        {
          *v35 = v44;
LABEL_48:
          *(a2 - 3) = v38;
        }
      }

      v45 = *v11;
      v46 = *v25;
      v47 = *(*v11 + 28);
      v48 = *(*v25 + 28);
      v49 = *v35;
      v50 = *(*v35 + 28);
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
    v20 = *(*v8 + 28);
    v21 = *(*v11 + 28);
    if (v20 >= v21)
    {
      if (v13 < v20)
      {
        *v8 = v12;
        *(a2 - 1) = v18;
        v23 = *v11;
        if (*(*v8 + 28) < *(*v11 + 28))
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
    if (*(v33 + 28) < v21)
    {
      *v8 = v33;
      goto LABEL_36;
    }

LABEL_57:
    --a3;
    v52 = *v8;
    if (a4)
    {
      v53 = *(v52 + 28);
LABEL_60:
      v54 = 0;
      do
      {
        v55 = v8[++v54];
      }

      while (*(v55 + 28) < v53);
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

        while (*(v59 + 28) >= v53);
      }

      else
      {
        do
        {
          v58 = *--v57;
        }

        while (*(v58 + 28) >= v53);
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

          while (*(v63 + 28) < v53);
          do
          {
            v64 = *--v62;
            v60 = v64;
          }

          while (*(v64 + 28) >= v53);
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

      v66 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::CameraViewDescriptorsComponentStateImpl::processUpdatingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent> *,re::ecs2::ComponentBuckets<re::ecs2::CameraViewDescriptorsComponent>::BucketIteration,void *)::$_1 &,re::ecs2::CameraViewDescriptorsComponent**>(v8, v65);
      v8 = v65 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::CameraViewDescriptorsComponentStateImpl::processUpdatingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent> *,re::ecs2::ComponentBuckets<re::ecs2::CameraViewDescriptorsComponent>::BucketIteration,void *)::$_1 &,re::ecs2::CameraViewDescriptorsComponent**>(v65 + 1, a2);
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
        result = std::__introsort<std::_ClassicAlgPolicy,re::ecs2::CameraViewDescriptorsComponentStateImpl::processUpdatingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent> *,re::ecs2::ComponentBuckets<re::ecs2::CameraViewDescriptorsComponent>::BucketIteration,void *)::$_1 &,re::ecs2::CameraViewDescriptorsComponent**,false>(v7, v65, a3, a4 & 1);
        a4 = 0;
        v8 = v65 + 1;
      }
    }

    else
    {
      v53 = *(v52 + 28);
      if (*(*(v8 - 1) + 28) < v53)
      {
        goto LABEL_60;
      }

      if (v53 >= *(*(a2 - 1) + 28))
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

        while (v53 >= *(*v8 + 28));
      }

      else
      {
        do
        {
          v67 = v8[1];
          ++v8;
        }

        while (v53 >= *(v67 + 28));
      }

      v69 = a2;
      if (v8 < a2)
      {
        v69 = a2;
        do
        {
          v70 = *--v69;
        }

        while (v53 < *(v70 + 28));
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

          while (v53 >= *(v73 + 28));
          do
          {
            v74 = *--v69;
            v72 = v74;
          }

          while (v53 < *(v74 + 28));
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
  v80 = *(v79 + 28);
  v81 = *(*v8 + 28);
  v82 = *(a2 - 1);
  v83 = *(v82 + 28);
  if (v80 >= v81)
  {
    if (v83 < v80)
    {
      v8[1] = v82;
      *(a2 - 1) = v79;
      v136 = *v8;
      v135 = v8[1];
      if (*(v135 + 28) < *(*v8 + 28))
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
      if (*(v146 + 28) >= v81)
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

uint64_t *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::CameraViewDescriptorsComponentStateImpl::processUpdatingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent> *,re::ecs2::ComponentBuckets<re::ecs2::CameraViewDescriptorsComponent>::BucketIteration,void *)::$_1 &,re::ecs2::CameraViewDescriptorsComponent**,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *(*a2 + 28);
  v8 = *(*result + 28);
  v9 = *a3;
  v10 = *(*a3 + 28);
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
      if (*(*a2 + 28) < *(*result + 28))
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
    if (*(*a3 + 28) < v8)
    {
      *a2 = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*(*a4 + 28) < *(v5 + 28))
  {
    *a3 = *a4;
    *a4 = v5;
    v12 = *a2;
    if (*(*a3 + 28) < *(*a2 + 28))
    {
      *a2 = *a3;
      *a3 = v12;
      v13 = *result;
      if (*(*a2 + 28) < *(*result + 28))
      {
        *result = *a2;
        *a2 = v13;
      }
    }
  }

  v14 = *a4;
  if (*(*a5 + 28) < *(*a4 + 28))
  {
    *a4 = *a5;
    *a5 = v14;
    v15 = *a3;
    if (*(*a4 + 28) < *(*a3 + 28))
    {
      *a3 = *a4;
      *a4 = v15;
      v16 = *a2;
      if (*(*a3 + 28) < *(*a2 + 28))
      {
        *a2 = *a3;
        *a3 = v16;
        v17 = *result;
        if (*(*a2 + 28) < *(*result + 28))
        {
          *result = *a2;
          *a2 = v17;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::CameraViewDescriptorsComponentStateImpl::processUpdatingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent> *,re::ecs2::ComponentBuckets<re::ecs2::CameraViewDescriptorsComponent>::BucketIteration,void *)::$_1 &,re::ecs2::CameraViewDescriptorsComponent**>(uint64_t *a1, uint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = *a1;
      v6 = a1[1];
      v7 = *(v6 + 28);
      v8 = *(*a1 + 28);
      v9 = *(a2 - 1);
      v10 = *(v9 + 28);
      if (v7 >= v8)
      {
        if (v10 < v7)
        {
          a1[1] = v9;
          *(a2 - 1) = v6;
          v32 = *a1;
          v31 = a1[1];
          if (*(v31 + 28) < *(*a1 + 28))
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
        if (*(v47 + 28) >= v8)
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

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::CameraViewDescriptorsComponentStateImpl::processUpdatingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent> *,re::ecs2::ComponentBuckets<re::ecs2::CameraViewDescriptorsComponent>::BucketIteration,void *)::$_1 &,re::ecs2::CameraViewDescriptorsComponent**,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
    }

    v20 = a1 + 1;
    v21 = a1[1];
    v22 = a1 + 2;
    v23 = a1[2];
    v24 = *a1;
    v25 = *(v21 + 28);
    v26 = *(*a1 + 28);
    v27 = *(v23 + 28);
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
        if (*(v42 + 28) < *(v21 + 28))
        {
          *v22 = v42;
          *(a2 - 1) = v21;
          v43 = *v22;
          v44 = *v20;
          v45 = *(v43 + 28);
          if (v45 < *(v44 + 28))
          {
            a1[1] = v43;
            a1[2] = v44;
            v46 = *a1;
            if (v45 < *(*a1 + 28))
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
    if (*(v3 + 28) < *(*a1 + 28))
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
  v15 = *(v13 + 28);
  v16 = *(*a1 + 28);
  v17 = *(v11 + 28);
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
    v38 = *(*v33 + 28);
    if (v38 < *(v37 + 28))
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
        if (v38 >= *(v37 + 28))
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

void *re::DynamicInlineArray<re::KeyValuePair<unsigned long long,re::ecs2::CameraViewDescriptorsComponentStateImpl::CameraViewArrays>,8ul>::clear(void *result)
{
  v1 = result;
  if (*result)
  {
    v2 = 88 * *result;
    v3 = (result + 8);
    do
    {
      re::DynamicArray<re::CameraMultiView>::deinit(v3);
      result = re::DynamicArray<re::CameraView>::deinit(v3 - 40);
      v3 += 88;
      v2 -= 88;
    }

    while (v2);
  }

  *v1 = 0;
  ++*(v1 + 2);
  return result;
}

double re::HashTable<unsigned long long,re::ecs2::CameraViewDescriptorsComponentStateImpl::CameraViewArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::deinit(uint64_t *a1)
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
          re::DynamicArray<re::CameraMultiView>::deinit(v6 + v4 + 56);
          re::DynamicArray<re::CameraView>::deinit(v8 + 16);
          v3 = *(a1 + 8);
        }

        v4 += 96;
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

uint64_t re::HashTable<unsigned long long,re::ecs2::CameraViewDescriptorsComponentStateImpl::CameraViewArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::add(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::ecs2::CameraViewDescriptorsComponentStateImpl::CameraViewArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::findEntry<unsigned long long>(&v17, a1, *a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31));
  if (HIDWORD(v18) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 96 * HIDWORD(v18) + 16;
  }

  v7 = re::HashTable<unsigned long long,re::ecs2::CameraViewDescriptorsComponentStateImpl::CameraViewArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::allocEntry(a1, v18, v17);
  v8 = *a2;
  *(v7 + 16) = 0;
  result = v7 + 16;
  *(result + 32) = 0;
  *(result + 24) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  v10 = *a3;
  v11 = a3[1];
  *(result - 8) = v8;
  *result = v10;
  *(result + 8) = v11;
  *a3 = 0;
  a3[1] = 0;
  v12 = *(result + 16);
  *(result + 16) = a3[2];
  a3[2] = v12;
  v13 = *(result + 32);
  *(result + 32) = a3[4];
  a3[4] = v13;
  ++*(a3 + 6);
  ++*(result + 24);
  *(result + 72) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 40) = 0;
  *(result + 64) = 0;
  v14 = a3[6];
  *(result + 40) = a3[5];
  *(result + 48) = v14;
  a3[5] = 0;
  a3[6] = 0;
  v15 = *(result + 56);
  *(result + 56) = a3[7];
  a3[7] = v15;
  v16 = *(result + 72);
  *(result + 72) = a3[9];
  a3[9] = v16;
  ++*(a3 + 16);
  ++*(result + 64);
  ++*(a1 + 40);
  return result;
}

uint64_t re::HashTable<unsigned long long,re::ecs2::CameraViewDescriptorsComponentStateImpl::CameraViewArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::findEntry<unsigned long long>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
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
  if (*(v7 + 96 * v6 + 8) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 96 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 96 * v8 + 8) == a3)
      {
        break;
      }

      v8 = *(v7 + 96 * v8) & 0x7FFFFFFF;
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

uint64_t re::HashTable<unsigned long long,re::ecs2::CameraViewDescriptorsComponentStateImpl::CameraViewArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v34, 0, 36);
          *&v34[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::init(v34, v9, v8);
          v11 = *v34;
          *v34 = *a1;
          *a1 = v11;
          v12 = *&v34[16];
          v13 = *(a1 + 16);
          *&v34[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v34[24];
          *&v34[24] = *(a1 + 24);
          v14 = *&v34[32];
          *(a1 + 24) = v15;
          ++*&v34[40];
          if (v14)
          {
            v16 = 0;
            v17 = 96 * v14;
            do
            {
              if ((*(v13 + v16) & 0x80000000) != 0)
              {
                v18 = v13 + v16;
                v19 = 0xBF58476D1CE4E5B9 * (*(v13 + v16 + 8) ^ (*(v13 + v16 + 8) >> 30));
                v20 = re::HashTable<unsigned long long,re::ecs2::CameraViewDescriptorsComponentStateImpl::CameraViewArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::allocEntry(a1, ((0x94D049BB133111EBLL * (v19 ^ (v19 >> 27))) ^ ((0x94D049BB133111EBLL * (v19 ^ (v19 >> 27))) >> 31)) % *(a1 + 24));
                v21 = *(v13 + v16 + 8);
                *(v20 + 48) = 0;
                *(v20 + 40) = 0;
                *(v20 + 24) = 0;
                *(v20 + 32) = 0;
                *(v20 + 8) = v21;
                *(v20 + 16) = 0;
                v22 = *(v13 + v16 + 24);
                *(v20 + 16) = *(v13 + v16 + 16);
                *(v20 + 24) = v22;
                *(v18 + 16) = 0;
                *(v18 + 24) = 0;
                v23 = *(v20 + 32);
                *(v20 + 32) = *(v13 + v16 + 32);
                *(v18 + 32) = v23;
                v24 = *(v20 + 48);
                *(v20 + 48) = *(v13 + v16 + 48);
                *(v18 + 48) = v24;
                ++*(v18 + 40);
                ++*(v20 + 40);
                *(v20 + 88) = 0;
                *(v20 + 64) = 0;
                *(v20 + 72) = 0;
                *(v20 + 56) = 0;
                *(v20 + 80) = 0;
                v25 = *(v13 + v16 + 64);
                *(v20 + 56) = *(v13 + v16 + 56);
                *(v20 + 64) = v25;
                *(v18 + 56) = 0;
                *(v18 + 64) = 0;
                v26 = *(v20 + 72);
                *(v20 + 72) = *(v13 + v16 + 72);
                *(v18 + 72) = v26;
                v27 = *(v20 + 88);
                *(v20 + 88) = *(v13 + v16 + 88);
                *(v18 + 88) = v27;
                ++*(v18 + 80);
                ++*(v20 + 80);
              }

              v16 += 96;
            }

            while (v17 != v16);
          }

          re::HashTable<unsigned long long,re::ecs2::CameraViewDescriptorsComponentStateImpl::CameraViewArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::deinit(v34);
        }
      }

      else
      {
        if (v8)
        {
          v30 = 2 * v7;
        }

        else
        {
          v30 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v28 = *(a1 + 16);
    v29 = *(v28 + 96 * v4);
  }

  else
  {
    v28 = *(a1 + 16);
    v29 = *(v28 + 96 * v4);
    *(a1 + 36) = v29 & 0x7FFFFFFF;
  }

  v31 = 96 * v4;
  *(v28 + v31) = v29 | 0x80000000;
  v32 = *(a1 + 8);
  *(v28 + v31) = *(v32 + 4 * a2) | 0x80000000;
  *(v32 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v28 + 96 * v4;
}

uint64_t re::CameraView::operator=(uint64_t a1, uint64_t a2)
{
  v4 = re::DynamicString::operator=(a1, a2);
  v5 = *(a2 + 48);
  *(v4 + 2) = *(a2 + 32);
  *(v4 + 3) = v5;
  v7 = *(a2 + 96);
  v6 = *(a2 + 112);
  v8 = *(a2 + 80);
  *(v4 + 64) = *(a2 + 128);
  *(v4 + 6) = v7;
  *(v4 + 7) = v6;
  *(v4 + 5) = v8;
  *(v4 + 4) = *(a2 + 64);
  if (*(v4 + 144))
  {
    if ((*(a2 + 144) & 1) == 0)
    {
      *(a1 + 144) = 0;
      goto LABEL_7;
    }
  }

  else
  {
    if ((*(a2 + 144) & 1) == 0)
    {
      goto LABEL_7;
    }

    *(a1 + 144) = 1;
  }

  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
LABEL_7:
  if (*(a1 + 224))
  {
    if ((*(a2 + 224) & 1) == 0)
    {
      *(a1 + 224) = 0;
      goto LABEL_13;
    }
  }

  else
  {
    if ((*(a2 + 224) & 1) == 0)
    {
      goto LABEL_13;
    }

    *(a1 + 224) = 1;
  }

  v12 = *(a2 + 240);
  v13 = *(a2 + 256);
  v14 = *(a2 + 288);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 288) = v14;
  *(a1 + 240) = v12;
  *(a1 + 256) = v13;
LABEL_13:
  v15 = *(a2 + 320);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 320) = v15;
  v17 = *(a2 + 368);
  v16 = *(a2 + 384);
  v18 = *(a2 + 352);
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 368) = v17;
  *(a1 + 384) = v16;
  *(a1 + 352) = v18;
  *(a1 + 336) = *(a2 + 336);
  if (*(a1 + 416))
  {
    if ((*(a2 + 416) & 1) == 0)
    {
      *(a1 + 416) = 0;
      goto LABEL_19;
    }
  }

  else
  {
    if ((*(a2 + 416) & 1) == 0)
    {
      goto LABEL_19;
    }

    *(a1 + 416) = 1;
  }

  v19 = *(a2 + 432);
  v20 = *(a2 + 448);
  v21 = *(a2 + 480);
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 480) = v21;
  *(a1 + 432) = v19;
  *(a1 + 448) = v20;
LABEL_19:
  if (*(a1 + 496))
  {
    if ((*(a2 + 496) & 1) == 0)
    {
      *(a1 + 496) = 0;
      goto LABEL_25;
    }
  }

  else
  {
    if ((*(a2 + 496) & 1) == 0)
    {
      goto LABEL_25;
    }

    *(a1 + 496) = 1;
  }

  v22 = *(a2 + 512);
  v23 = *(a2 + 528);
  v24 = *(a2 + 560);
  *(a1 + 544) = *(a2 + 544);
  *(a1 + 560) = v24;
  *(a1 + 512) = v22;
  *(a1 + 528) = v23;
LABEL_25:
  re::DynamicArray<re::RenderGraphFileProvider>::operator=(a1 + 576, (a2 + 576));
  *(a1 + 616) = *(a2 + 616);
  re::DynamicArray<re::CameraView::PickupScopeLane>::operator=(a1 + 624, (a2 + 624));
  *(a1 + 672) = *(a2 + 672);
  v25 = *(a2 + 688);
  v26 = *(a2 + 704);
  v27 = *(a2 + 720);
  *(a1 + 736) = *(a2 + 736);
  *(a1 + 704) = v26;
  *(a1 + 720) = v27;
  *(a1 + 688) = v25;
  v28 = *(a2 + 752);
  v29 = *(a2 + 768);
  v30 = *(a2 + 800);
  *(a1 + 784) = *(a2 + 784);
  *(a1 + 800) = v30;
  *(a1 + 752) = v28;
  *(a1 + 768) = v29;
  *(a1 + 816) = *(a2 + 816);
  v32 = *(a2 + 848);
  v31 = *(a2 + 864);
  v33 = *(a2 + 832);
  *(a1 + 880) = *(a2 + 880);
  *(a1 + 848) = v32;
  *(a1 + 864) = v31;
  *(a1 + 832) = v33;
  if (*(a1 + 896))
  {
    if ((*(a2 + 896) & 1) == 0)
    {
      *(a1 + 896) = 0;
      goto LABEL_31;
    }
  }

  else
  {
    if ((*(a2 + 896) & 1) == 0)
    {
      goto LABEL_31;
    }

    *(a1 + 896) = 1;
  }

  v34 = *(a2 + 912);
  v35 = *(a2 + 928);
  v36 = *(a2 + 960);
  *(a1 + 944) = *(a2 + 944);
  *(a1 + 960) = v36;
  *(a1 + 912) = v34;
  *(a1 + 928) = v35;
LABEL_31:
  if (*(a1 + 976))
  {
    if ((*(a2 + 976) & 1) == 0)
    {
      *(a1 + 976) = 0;
      goto LABEL_37;
    }
  }

  else
  {
    if ((*(a2 + 976) & 1) == 0)
    {
      goto LABEL_37;
    }

    *(a1 + 976) = 1;
  }

  v37 = *(a2 + 992);
  v38 = *(a2 + 1008);
  v39 = *(a2 + 1024);
  *(a1 + 1040) = *(a2 + 1040);
  *(a1 + 1008) = v38;
  *(a1 + 1024) = v39;
  *(a1 + 992) = v37;
LABEL_37:
  v40 = *(a2 + 1056);
  v41 = *(a2 + 1072);
  v42 = *(a2 + 1088);
  *(a1 + 1104) = *(a2 + 1104);
  *(a1 + 1088) = v42;
  *(a1 + 1072) = v41;
  *(a1 + 1056) = v40;
  v43 = *(a2 + 1120);
  v44 = *(a2 + 1136);
  v45 = *(a2 + 1152);
  *(a1 + 1165) = *(a2 + 1165);
  *(a1 + 1152) = v45;
  *(a1 + 1136) = v44;
  *(a1 + 1120) = v43;
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::operator=<24ul>(a1 + 1184, a2 + 1184);
  *(a1 + 1232) = *(a2 + 1232);
  if ((*(a1 + 1248) & 1) == 0)
  {
    if ((*(a2 + 1248) & 1) == 0)
    {
      goto LABEL_43;
    }

    *(a1 + 1248) = 1;
LABEL_42:
    v46 = *(a2 + 1264);
    *(a1 + 1280) = *(a2 + 1280);
    *(a1 + 1264) = v46;
    goto LABEL_43;
  }

  if (*(a2 + 1248))
  {
    goto LABEL_42;
  }

  *(a1 + 1248) = 0;
LABEL_43:
  re::Optional<re::Projection>::operator=(a1 + 1296, a2 + 1296);
  return a1;
}

{
  v4 = re::DynamicString::operator=(a1, a2);
  v5 = *(a2 + 48);
  *(v4 + 2) = *(a2 + 32);
  *(v4 + 3) = v5;
  v7 = *(a2 + 96);
  v6 = *(a2 + 112);
  v8 = *(a2 + 80);
  *(v4 + 64) = *(a2 + 128);
  *(v4 + 6) = v7;
  *(v4 + 7) = v6;
  *(v4 + 5) = v8;
  *(v4 + 4) = *(a2 + 64);
  if (*(v4 + 144))
  {
    if ((*(a2 + 144) & 1) == 0)
    {
      *(a1 + 144) = 0;
      goto LABEL_7;
    }
  }

  else
  {
    if ((*(a2 + 144) & 1) == 0)
    {
      goto LABEL_7;
    }

    *(a1 + 144) = 1;
  }

  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
LABEL_7:
  if (*(a1 + 224))
  {
    if ((*(a2 + 224) & 1) == 0)
    {
      *(a1 + 224) = 0;
      goto LABEL_13;
    }
  }

  else
  {
    if ((*(a2 + 224) & 1) == 0)
    {
      goto LABEL_13;
    }

    *(a1 + 224) = 1;
  }

  v12 = *(a2 + 240);
  v13 = *(a2 + 256);
  v14 = *(a2 + 288);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 288) = v14;
  *(a1 + 240) = v12;
  *(a1 + 256) = v13;
LABEL_13:
  v15 = *(a2 + 320);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 320) = v15;
  v17 = *(a2 + 368);
  v16 = *(a2 + 384);
  v18 = *(a2 + 352);
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 368) = v17;
  *(a1 + 384) = v16;
  *(a1 + 352) = v18;
  *(a1 + 336) = *(a2 + 336);
  if (*(a1 + 416))
  {
    if ((*(a2 + 416) & 1) == 0)
    {
      *(a1 + 416) = 0;
      goto LABEL_19;
    }
  }

  else
  {
    if ((*(a2 + 416) & 1) == 0)
    {
      goto LABEL_19;
    }

    *(a1 + 416) = 1;
  }

  v19 = *(a2 + 432);
  v20 = *(a2 + 448);
  v21 = *(a2 + 480);
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 480) = v21;
  *(a1 + 432) = v19;
  *(a1 + 448) = v20;
LABEL_19:
  if (*(a1 + 496))
  {
    if ((*(a2 + 496) & 1) == 0)
    {
      *(a1 + 496) = 0;
      goto LABEL_25;
    }
  }

  else
  {
    if ((*(a2 + 496) & 1) == 0)
    {
      goto LABEL_25;
    }

    *(a1 + 496) = 1;
  }

  v22 = *(a2 + 512);
  v23 = *(a2 + 528);
  v24 = *(a2 + 560);
  *(a1 + 544) = *(a2 + 544);
  *(a1 + 560) = v24;
  *(a1 + 512) = v22;
  *(a1 + 528) = v23;
LABEL_25:
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(a1 + 576, a2 + 576);
  *(a1 + 616) = *(a2 + 616);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(a1 + 624, a2 + 624);
  *(a1 + 672) = *(a2 + 672);
  v25 = *(a2 + 688);
  v26 = *(a2 + 704);
  v27 = *(a2 + 720);
  *(a1 + 736) = *(a2 + 736);
  *(a1 + 704) = v26;
  *(a1 + 720) = v27;
  *(a1 + 688) = v25;
  v28 = *(a2 + 752);
  v29 = *(a2 + 768);
  v30 = *(a2 + 800);
  *(a1 + 784) = *(a2 + 784);
  *(a1 + 800) = v30;
  *(a1 + 752) = v28;
  *(a1 + 768) = v29;
  *(a1 + 816) = *(a2 + 816);
  v32 = *(a2 + 848);
  v31 = *(a2 + 864);
  v33 = *(a2 + 832);
  *(a1 + 880) = *(a2 + 880);
  *(a1 + 848) = v32;
  *(a1 + 864) = v31;
  *(a1 + 832) = v33;
  if (*(a1 + 896))
  {
    if ((*(a2 + 896) & 1) == 0)
    {
      *(a1 + 896) = 0;
      goto LABEL_31;
    }
  }

  else
  {
    if ((*(a2 + 896) & 1) == 0)
    {
      goto LABEL_31;
    }

    *(a1 + 896) = 1;
  }

  v34 = *(a2 + 912);
  v35 = *(a2 + 928);
  v36 = *(a2 + 960);
  *(a1 + 944) = *(a2 + 944);
  *(a1 + 960) = v36;
  *(a1 + 912) = v34;
  *(a1 + 928) = v35;
LABEL_31:
  if (*(a1 + 976))
  {
    if ((*(a2 + 976) & 1) == 0)
    {
      *(a1 + 976) = 0;
      goto LABEL_37;
    }
  }

  else
  {
    if ((*(a2 + 976) & 1) == 0)
    {
      goto LABEL_37;
    }

    *(a1 + 976) = 1;
  }

  v37 = *(a2 + 992);
  v38 = *(a2 + 1008);
  v39 = *(a2 + 1024);
  *(a1 + 1040) = *(a2 + 1040);
  *(a1 + 1008) = v38;
  *(a1 + 1024) = v39;
  *(a1 + 992) = v37;
LABEL_37:
  v40 = *(a2 + 1056);
  v41 = *(a2 + 1072);
  v42 = *(a2 + 1088);
  *(a1 + 1104) = *(a2 + 1104);
  *(a1 + 1088) = v42;
  *(a1 + 1072) = v41;
  *(a1 + 1056) = v40;
  v43 = *(a2 + 1120);
  v44 = *(a2 + 1136);
  v45 = *(a2 + 1152);
  *(a1 + 1165) = *(a2 + 1165);
  *(a1 + 1152) = v45;
  *(a1 + 1136) = v44;
  *(a1 + 1120) = v43;
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::operator=<24ul>(a1 + 1184, a2 + 1184);
  *(a1 + 1232) = *(a2 + 1232);
  if ((*(a1 + 1248) & 1) == 0)
  {
    if ((*(a2 + 1248) & 1) == 0)
    {
      goto LABEL_43;
    }

    *(a1 + 1248) = 1;
LABEL_42:
    v46 = *(a2 + 1264);
    *(a1 + 1280) = *(a2 + 1280);
    *(a1 + 1264) = v46;
    goto LABEL_43;
  }

  if (*(a2 + 1248))
  {
    goto LABEL_42;
  }

  *(a1 + 1248) = 0;
LABEL_43:
  re::Optional<re::Projection>::operator=(a1 + 1296, a2 + 1296);
  return a1;
}

uint64_t re::DynamicArray<re::RenderGraphFileProvider>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::RenderGraphFileProvider>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::RenderGraphFileProvider>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::RenderGraphFileProvider>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::RenderGraphFileProvider>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::DynamicArray<re::CameraView::PickupScopeLane>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::CameraView::PickupScopeLane>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::ecs2::ScopeLanePair>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::CameraView::PickupScopeLane>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::CameraView::PickupScopeLane>::copy(a1, a2);
    }
  }

  return a1;
}

__n128 re::Optional<re::Projection>::operator=(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 1) == 0)
  {
    if (*a2)
    {
      *a1 = 1;
      *(a1 + 16) = *(a2 + 16);
      result = *(a2 + 32);
      v5 = *(a2 + 48);
      v6 = *(a2 + 64);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 48) = v5;
      *(a1 + 64) = v6;
      *(a1 + 32) = result;
      v7 = *(a2 + 96);
      *(a1 + 96) = v7;
      if (v7 == 1)
      {
        result = *(a2 + 112);
        v8 = *(a2 + 128);
        v9 = *(a2 + 160);
        *(a1 + 144) = *(a2 + 144);
        *(a1 + 160) = v9;
        *(a1 + 112) = result;
        *(a1 + 128) = v8;
      }

      v10 = *(a2 + 176);
      *(a1 + 176) = v10;
      if (v10 == 1)
      {
        goto LABEL_20;
      }
    }

    return result;
  }

  if ((*a2 & 1) == 0)
  {
    *a1 = 0;
    return result;
  }

  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 32);
  v3 = *(a2 + 48);
  v4 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *(a1 + 32) = result;
  if (*(a1 + 96))
  {
    if ((*(a2 + 96) & 1) == 0)
    {
      *(a1 + 96) = 0;
      goto LABEL_15;
    }
  }

  else
  {
    if ((*(a2 + 96) & 1) == 0)
    {
      goto LABEL_15;
    }

    *(a1 + 96) = 1;
  }

  result = *(a2 + 112);
  v11 = *(a2 + 128);
  v12 = *(a2 + 160);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = v12;
  *(a1 + 112) = result;
  *(a1 + 128) = v11;
LABEL_15:
  if (*(a1 + 176))
  {
    if ((*(a2 + 176) & 1) == 0)
    {
      *(a1 + 176) = 0;
      return result;
    }

    goto LABEL_20;
  }

  if (*(a2 + 176))
  {
    *(a1 + 176) = 1;
LABEL_20:
    result = *(a2 + 192);
    v13 = *(a2 + 208);
    v14 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v14;
    *(a1 + 192) = result;
    *(a1 + 208) = v13;
  }

  return result;
}

void re::DynamicArray<re::RenderGraphFileProvider>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = 48 * v2;
    v4 = (*(a1 + 32) + 8);
    do
    {
      re::DynamicString::deinit(v4);
      v4 = (v4 + 48);
      v3 -= 48;
    }

    while (v3);
  }

  ++*(a1 + 24);
}

void *re::DynamicArray<re::CameraMultiView>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::CameraMultiView>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::CameraMultiView>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::CameraMultiView const*,re::CameraMultiView const*,re::CameraMultiView*>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      for (i = 0; i != 3104; i += 1552)
      {
        result = re::CameraView::operator=(a3 + i, v5 + i);
      }

      *(a3 + 3104) = *(v5 + 3104);
      v5 += 3120;
      a3 += 3120;
    }

    while (v5 != a2);
  }

  return result;
}

void *re::BucketArray<re::PipelineCompilationData,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::PipelineCompilationData,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::PipelineCompilationData,4ul>::setBucketsCapacity(void *result, unint64_t a2)
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
          result = (*(**v3 + 32))(*v3, 64, 0);
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

void *std::__any_imp::_SmallHandler<re::BucketArray<re::PipelineCompilationData,4ul> *>::__handle[abi:nn200100](int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      v9 = a2[1];
      *a3 = std::__any_imp::_SmallHandler<re::BucketArray<re::PipelineCompilationData,4ul> *>::__handle[abi:nn200100];
      a3[1] = v9;
      return result;
    }

    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v8 = a2[1];
    *a3 = std::__any_imp::_SmallHandler<re::BucketArray<re::PipelineCompilationData,4ul> *>::__handle[abi:nn200100];
    a3[1] = v8;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
  }

  if (a4)
  {
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<re::BucketArray<re::PipelineCompilationData,4ul> *>::__id;
  }

  if (v6)
  {
    return a2 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t *re::internal::Callable<re::RenderFrameDataArrayWrapper & re::RenderFrameDataStream::getOrAddDataArrayWrapper<re::PipelineCompilationData>(void)::{lambda(re::RenderFrameDataArrayWrapper*)#1},void ()(re::RenderFrameDataArrayWrapper*)>::operator()(uint64_t a1, uint64_t (***a2)(uint64_t))
{
  v2 = *(a1 + 8);
  result = (**a2)(3);
  v4 = *result;
  if (*result)
  {
    v5 = *(v4 + 40);
    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        re::BucketArray<RESubscriptionHandle,4ul>::operator[](v4, i);
      }
    }

    while (*(v4 + 8))
    {
      re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v4);
    }

    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v4);
    *(v4 + 40) = 0;
    ++*(v4 + 48);
    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v4);
    v7 = *(*v2 + 40);

    return v7(v2, v4);
  }

  return result;
}

void *re::internal::Callable<re::RenderFrameDataArrayWrapper & re::RenderFrameDataStream::getOrAddDataArrayWrapper<re::PipelineCompilationData>(void)::{lambda(re::RenderFrameDataArrayWrapper*)#1},void ()(re::RenderFrameDataArrayWrapper*)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEFDD0;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::RenderFrameDataArrayWrapper & re::RenderFrameDataStream::getOrAddDataArrayWrapper<re::PipelineCompilationData>(void)::{lambda(re::RenderFrameDataArrayWrapper*)#1},void ()(re::RenderFrameDataArrayWrapper*)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEFDD0;
  a2[1] = v2;
  return a2;
}

uint64_t re::HashTable<unsigned long long,re::TintContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
                v17 = re::HashTable<unsigned long long,re::TintContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v13 + 48) % *(a1 + 24));
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

          re::HashTable<re::ecs2::Entity *,re::SortingPlane,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::deinit(v25);
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

uint64_t *re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::CameraViewDescriptorsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) + 480;
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
    *v10 = &unk_1F5CEFE28;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::CameraViewDescriptorsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CEFE80;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::CameraViewDescriptorsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CEFED8;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::CameraViewDescriptorsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CEFF30;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::CameraViewDescriptorsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
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
        *v37 = &unk_1F5CEFE28;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CEFE80;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CEFED8;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CEFF30;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::CameraViewDescriptorsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::CameraViewDescriptorsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::CameraViewDescriptorsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::CameraViewDescriptorsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEFE28;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEFE28;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEFE80;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEFE80;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEFED8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEFED8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEFF30;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEFF30;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

void re::ecs2::PinSkeletalPoseHelper::collectMeshJointPins(uint64_t a1, void *a2, void *a3, _anonymous_namespace_ *a4)
{
  v15 = 0;
  v16 = 0;
  v14 = 0;
  {
    v5 = v15;
    v7 = *(v16 + 24);
    v6 = *(v16 + 32);
    v8 = *(a4 + 2) + v15;
    if (*(a4 + 1) < v8)
    {
      re::DynamicArray<re::ecs2::Pin>::setCapacity(a4, v8);
    }

    if (v5)
    {
      v9 = v14;
      for (i = v7; i; --i)
      {
        re::StringID::StringID(&v12, v6);
        re::DynamicArray<re::ecs2::Pin>::add(a4, v13);
        re::ecs2::Pin::~Pin(v13);
        if (*&v12.var0)
        {
          if (*&v12.var0)
          {
          }
        }

        ++v6;
        v9 += 4;
        if (!--v5)
        {
          return;
        }
      }

      re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v7, v7);
      _os_crash();
      __break(1u);
    }
  }
}

uint64_t anonymous namespace::getSkeletonAndJointTransforms(uint64_t result, void *a2, void *a3, uint64_t a4, unint64_t *a5)
{
  v29 = *MEMORY[0x1E69E9840];
  *a4 = 0;
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = *(result + 16);
  if (!v6)
  {
    return 0;
  }

  result = re::ecs2::EntityComponentCollection::get((v6 + 48), re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseBufferComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!result)
  {
    return result;
  }

  if (!v5[71])
  {
    return 0;
  }

  v11 = result;
  v12 = a3[1];
  if (v12 < 0xFFFFFFFFFFFFFFFELL || (v12 & 1) != 0)
  {
    if (v12 > 1)
    {
      goto LABEL_11;
    }

    v13 = a3[2];
    if (!v13)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v13 = a3[2];
  }

  if (!*v13)
  {
    v18 = 0;
    goto LABEL_18;
  }

LABEL_11:
  re::MeshNameMap::meshInstancePartsForIdentifier((a2 + 80), a3, &v26);
  v14 = v26;
  if (!v26)
  {
LABEL_15:
    re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(v27);
    return 0;
  }

  v15 = 0;
  while (1)
  {
    v25 = v15;
    v16 = (*(*v28 + 16))(v28, &v25);
    v17 = re::SkeletalPoseRigMappingData::poseRigMapIndex((v5 + 59), (a2 + 80), v16, WORD2(v16));
    if (v17 != -1)
    {
      break;
    }

    if (v14 == ++v15)
    {
      goto LABEL_15;
    }
  }

  v18 = v17;
  re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(v27);
LABEL_18:
  v19 = v18;
  if (v5[80] <= v18)
  {
    v20 = 0xFFFFFFFFLL;
  }

  else
  {
    v20 = *(v5[81] + 4 * v18);
  }

  if (a2[156] <= v20)
  {
    return 0;
  }

  if (a2[35] > v20 && (v21 = re::AssetHandle::loadedAsset<re::SkeletonAsset>((a2[37] + 24 * v20))) != 0)
  {
    v22 = v21 + 88;
  }

  else
  {
    v22 = re::MeshAsset::skeletonAtIndex(a2, v20);
  }

  *a4 = v22;
  v23 = *(v11 + 112);
  v26 = *(v11 + 128);
  v27[0] = v23;
  *a5 = re::SkeletalPoseRigMappingData::poseRigMapAbsoluteJointTransforms((v5 + 59), v19, &v26);
  a5[1] = v24;
  return *(*a4 + 24) == v24;
}

uint64_t re::DynamicArray<re::ecs2::Pin>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::ecs2::Pin>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 240 * v4;
  *v5 = &unk_1F5CF49C0;
  re::StringID::StringID((v5 + 8), (a2 + 8));
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 80);
  *(v5 + 64) = *(a2 + 64);
  *(v5 + 80) = v8;
  *(v5 + 32) = v6;
  *(v5 + 48) = v7;
  re::DynamicArray<re::ecs2::PinAlignment>::DynamicArray(v5 + 96, (a2 + 96));
  v9 = *(a2 + 160);
  *(v5 + 144) = *(a2 + 144);
  *(v5 + 160) = v9;
  v10 = *(a2 + 176);
  *(v5 + 176) = v10;
  if (v10 == 1)
  {
    re::StringID::StringID((v5 + 184), (a2 + 184));
  }

  result = re::DynamicArray<re::ecs2::EntityHandle>::DynamicArray(v5 + 200, (a2 + 200));
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void anonymous namespace::makePinFromNameAndTransform(const StringID *a1@<X0>, float32x4_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2[1];
  v6 = a2[2];
  v7 = vmulq_f32(*a2, 0);
  v8 = vaddq_f32(a2[3], vmlaq_f32(vmlaq_f32(v7, 0, v5), 0, v6));
  v22 = vmlaq_f32(vmlaq_f32(*a2, 0, v5), 0, v6);
  v23 = vdivq_f32(v8, vdupq_laneq_s32(v8, 3));
  v21 = vmlaq_f32(vaddq_f32(v7, v5), 0, v6);
  re::poseFromOriginAndXYAxes(&v23, &v22, &v21, v20);
  v17 = 0uLL;
  v18 = 0;
  v19 = 0x3F80000000000000;
  v15[0] = 1;
  re::StringID::StringID(&v16, a1);
  v9.i64[0] = 0x7F0000007FLL;
  v9.i64[1] = 0x7F0000007FLL;
  v14[0] = vnegq_f32(v9);
  v14[1] = v9;
  v13 = 0;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  re::ecs2::Pin::Pin(a3, a1, v20, &v17, v15, v14, v11);
  v10 = re::DynamicArray<re::ecs2::PinAlignment>::deinit(v11);
  if (v15[0] == 1 && (v16 & 1) != 0)
  {
    if (v16)
    {
    }
  }
}

void re::ecs2::PinSkeletalPoseHelper::pinByName(re::ecs2::PinSkeletalPoseHelper *this@<X0>, const re::ecs2::SkeletalPoseComponent *a2@<X1>, const re::MeshAsset *a3@<X2>, uint64_t a4@<X8>)
{
  v37[0] = 0;
  v37[1] = &str_67;
  *&v36.var0 = 0;
  v36.var1 = &str_67;
  *&v35.var0 = 0;
  v35.var1 = &str_67;
  v8 = *(a3 + 1);
  v9 = strlen(v8);
  re::internal::parseSkeletalPoseJointPinName(v8, v9, v37, &v36, &v35);
  LOBYTE(v32) = 1;
  re::StringID::StringID(&v33, &v36);
  re::StringID::StringID(v34, &v35);
  v30 = 0;
  v31 = 0;
  v29 = 0;
  if (SkeletonAndJointTransforms)
  {
    v11 = v31;
    v13 = *(v31 + 24);
    v12 = *(v31 + 32);
    SkeletonAndJointTransforms = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v31 + 136, v37, (0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v37[0] >> 31) ^ (v37[0] >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v37[0] >> 31) ^ (v37[0] >> 1))) >> 27))) ^ ((0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v37[0] >> 31) ^ (v37[0] >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v37[0] >> 31) ^ (v37[0] >> 1))) >> 27))) >> 31), v21);
    if (HIDWORD(v22[0]) != 0x7FFFFFFF)
    {
      v15 = *(*(v11 + 152) + 32 * HIDWORD(v22[0]) + 24);
      if (v15 != -1)
      {
        if (v13 <= v15)
        {
          re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, *(*(v11 + 152) + 32 * HIDWORD(v22[0]) + 24), v13);
          _os_crash();
          __break(1u);
        }

        else
        {
          v16 = v30;
          if (v30 > v15)
          {
            *a4 = 1;
            *(a4 + 16) = &unk_1F5CF49C0;
            re::StringID::StringID((a4 + 24), v22);
            v17 = *&v22[5];
            *(a4 + 48) = *&v22[3];
            *(a4 + 64) = v17;
            v18 = *&v22[9];
            *(a4 + 80) = *&v22[7];
            *(a4 + 96) = v18;
            re::DynamicArray<re::ecs2::PinAlignment>::DynamicArray(a4 + 112, v23);
            v19 = v25;
            *(a4 + 160) = v24;
            *(a4 + 176) = v19;
            v20 = v26;
            *(a4 + 192) = v26;
            if (v20 == 1)
            {
              re::StringID::StringID((a4 + 200), &v27);
            }

            re::DynamicArray<re::ecs2::EntityHandle>::DynamicArray(a4 + 216, v28);
            re::ecs2::Pin::~Pin(v21);
            goto LABEL_10;
          }
        }

        re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v15, v16);
        _os_crash();
        __break(1u);
        return;
      }
    }
  }

  *a4 = 0;
LABEL_10:
  if (v34[0])
  {
    if (v34[0])
    {
    }
  }

  v34[0] = 0;
  v34[1] = &str_67;
  if (v33)
  {
    if (v33)
    {
    }
  }

  if (*&v35.var0)
  {
    if (*&v35.var0)
    {
    }
  }

  if (*&v36.var0)
  {
    if (*&v36.var0)
    {
    }
  }

  if (v37[0])
  {
    if (v37[0])
    {
    }
  }
}

uint64_t re::DynamicArray<re::ecs2::PinAlignment>::deinit(uint64_t a1)
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
        v5 = v4 << 7;
        v6 = v3 + 88;
        do
        {
          re::DynamicArray<unsigned long>::deinit(v6);
          v6 += 128;
          v5 -= 128;
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

uint64_t re::DynamicArray<re::ecs2::PinAlignment>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::ecs2::PinAlignment>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::ecs2::PinAlignment>::copy(a1, a2);
  }

  return a1;
}

void *re::DynamicArray<re::ecs2::PinAlignment>::copy(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  v5 = result[2];
  if (v4 >= v5)
  {
    result = re::DynamicArray<re::ecs2::PinAlignment>::setCapacity(result, *(a2 + 16));
    v15 = *(a2 + 32);
    v16 = v3[2];
    v17 = v3[4];
    if (v16)
    {
      v18 = v15 + (v16 << 7);
      do
      {
        v19 = *(v15 + 16);
        *v17 = *v15;
        *(v17 + 16) = v19;
        v20 = *(v15 + 32);
        v21 = *(v15 + 48);
        v22 = *(v15 + 64);
        *(v17 + 80) = *(v15 + 80);
        *(v17 + 48) = v21;
        *(v17 + 64) = v22;
        *(v17 + 32) = v20;
        result = re::DynamicArray<float>::operator=(v17 + 88, (v15 + 88));
        v15 += 128;
        v17 += 128;
      }

      while (v15 != v18);
      v17 = v3[4];
      v16 = v3[2];
      v15 = *(a2 + 32);
    }

    if (v16 != v4)
    {
      v23 = (v4 << 7) - (v16 << 7);
      v24 = (v16 << 7) | 0x58;
      v25 = (v15 + v24);
      result = (v17 + v24);
      do
      {
        v26 = *(v25 - 11);
        *(result - 9) = *(v25 - 9);
        *(result - 11) = v26;
        v27 = *(v25 - 7);
        v28 = *(v25 - 5);
        v29 = *(v25 - 3);
        *(result - 8) = *(v25 - 8);
        *(result - 3) = v29;
        *(result - 5) = v28;
        *(result - 7) = v27;
        v30 = re::DynamicArray<float>::DynamicArray(result, v25);
        v25 += 16;
        result = (v30 + 128);
        v23 -= 128;
      }

      while (v23);
    }
  }

  else
  {
    v6 = result[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = v7 + (v4 << 7);
      do
      {
        v9 = *(v7 + 16);
        *v6 = *v7;
        *(v6 + 16) = v9;
        v10 = *(v7 + 32);
        v11 = *(v7 + 48);
        v12 = *(v7 + 64);
        *(v6 + 80) = *(v7 + 80);
        *(v6 + 48) = v11;
        *(v6 + 64) = v12;
        *(v6 + 32) = v10;
        result = re::DynamicArray<float>::operator=(v6 + 88, (v7 + 88));
        v7 += 128;
        v6 += 128;
      }

      while (v7 != v8);
      v6 = v3[4];
      v5 = v3[2];
    }

    if (v4 != v5)
    {
      v13 = (v5 << 7) - (v4 << 7);
      v14 = v6 + (v4 << 7) + 88;
      do
      {
        result = re::DynamicArray<unsigned long>::deinit(v14);
        v14 += 128;
        v13 -= 128;
      }

      while (v13);
    }
  }

  v3[2] = v4;
  return result;
}

void *re::DynamicArray<re::ecs2::PinAlignment>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ecs2::PinAlignment>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 57)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 128, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = a2 << 7;
          result = (*(*result + 32))(result, a2 << 7, 16);
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
        v10 = v8 + (v9 << 7);
        v11 = v7;
        do
        {
          v12 = *(v8 + 16);
          *v11 = *v8;
          *(v11 + 1) = v12;
          v13 = *(v8 + 32);
          v14 = *(v8 + 48);
          v15 = *(v8 + 64);
          *(v11 + 80) = *(v8 + 80);
          *(v11 + 3) = v14;
          *(v11 + 4) = v15;
          *(v11 + 2) = v13;
          v11[15] = 0;
          v11[12] = 0;
          v11[13] = 0;
          v11[11] = 0;
          *(v11 + 28) = 0;
          v16 = *(v8 + 88);
          v17 = *(v8 + 96);
          v18 = v8 + 88;
          v11[11] = v16;
          v11[12] = v17;
          *v18 = 0;
          *(v18 + 8) = 0;
          v19 = v11[13];
          v11[13] = *(v18 + 16);
          *(v18 + 16) = v19;
          v20 = v11[15];
          v11[15] = *(v18 + 32);
          *(v18 + 32) = v20;
          ++*(v18 + 24);
          ++*(v11 + 28);
          re::DynamicArray<unsigned long>::deinit(v18);
          v11 += 16;
          v8 = v18 + 40;
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

uint64_t re::DynamicArray<re::ecs2::EntityHandle>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::ecs2::EntityHandle>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::ecs2::EntityHandle>::copy(a1, a2);
  }

  return a1;
}

void re::DynamicArray<re::ecs2::EntityHandle>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = a1[2];
  if (v4 >= v5)
  {
    re::DynamicArray<re::ecs2::EntityHandle>::setCapacity(a1, *(a2 + 16));
    v12 = *(a2 + 32);
    v13 = a1[2];
    v14 = a1[4];
    if (v13)
    {
      v15 = 24 * v13;
      do
      {
        v16 = re::ecs2::EntityHandle::operator=(v14, v12);
        v12 += 3;
        v14 = (v16 + 24);
        v15 -= 24;
      }

      while (v15);
      v14 = a1[4];
      v13 = a1[2];
      v12 = *(a2 + 32);
    }

    if (v13 != v4)
    {
      v17 = 3 * v13;
      v18 = &v12[v17];
      v19 = (v14 + 8 * v17);
      v20 = 24 * v4 - 8 * v17;
      do
      {
        v21 = re::ecs2::EntityHandle::EntityHandle(v19, v18);
        v18 = (v18 + 24);
        v19 = v21 + 3;
        v20 -= 24;
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
      v8 = 24 * v4;
      do
      {
        v9 = re::ecs2::EntityHandle::operator=(v6, v7);
        v7 += 3;
        v6 = (v9 + 24);
        v8 -= 24;
      }

      while (v8);
      v6 = a1[4];
      v5 = a1[2];
    }

    if (v4 != v5)
    {
      v10 = (v6 + 24 * v4);
      v11 = 24 * v5 - 24 * v4;
      do
      {
        re::ecs2::EntityHandle::reset(v10);
        objc_destroyWeak(v10);
        *v10 = 0;
        v10 = (v10 + 24);
        v11 -= 24;
      }

      while (v11);
    }
  }

  a1[2] = v4;
}

void *re::DynamicArray<re::ecs2::Pin>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ecs2::Pin>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xF0uLL))
        {
          v2 = 240 * a2;
          result = (*(*result + 32))(result, 240 * a2, 16);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_18;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 240, a2);
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
LABEL_18:
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
        v11 = 240 * v9;
        do
        {
          v12 = &v7[v10 / 8];
          v13 = v8 + v10;
          v7[v10 / 8] = &unk_1F5CF49C0;
          re::StringID::StringID(&v7[v10 / 8 + 1], (v8 + v10 + 8));
          v14 = *(v8 + v10 + 32);
          v15 = *(v8 + v10 + 48);
          v16 = *(v8 + v10 + 80);
          *(v12 + 4) = *(v8 + v10 + 64);
          *(v12 + 5) = v16;
          *(v12 + 2) = v14;
          *(v12 + 3) = v15;
          re::DynamicArray<re::ecs2::PinAlignment>::DynamicArray(&v7[v10 / 8 + 12], (v8 + v10 + 96));
          v17 = *(v8 + v10 + 160);
          *(v12 + 9) = *(v8 + v10 + 144);
          *(v12 + 10) = v17;
          v18 = *(v8 + v10 + 176);
          *(v12 + 176) = v18;
          if (v18 == 1)
          {
            re::StringID::StringID((v12 + 23), (v13 + 184));
          }

          re::DynamicArray<re::ecs2::EntityHandle>::DynamicArray((v12 + 25), (v13 + 200));
          (**v13)(v8 + v10);
          v10 += 240;
        }

        while (v11 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

void *re::DynamicArray<re::ecs2::Pin>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::ecs2::Pin>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::ecs2::Pin>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::ecs2::allocInfo_PhysicsOriginComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_243, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_243))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A7F68, "PhysicsOriginComponent");
    __cxa_guard_release(&_MergedGlobals_243);
  }

  return &unk_1EE1A7F68;
}

void re::ecs2::initInfo_PhysicsOriginComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v10[0] = 0x5CCE2FB72C22FEA0;
  v10[1] = "PhysicsOriginComponent";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1A7F60, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A7F60);
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
      qword_1EE1A7F58 = v8;
      __cxa_guard_release(&qword_1EE1A7F60);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1A7F58;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PhysicsOriginComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PhysicsOriginComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PhysicsOriginComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PhysicsOriginComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs222PhysicsOriginComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v9 = v11;
}

void re::internal::defaultConstruct<re::ecs2::PhysicsOriginComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CD1498;
}

void re::internal::defaultConstructV2<re::ecs2::PhysicsOriginComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CD1498;
}

void re::internal::findPhysicsOrigin(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *(re::ecs2::ComponentImpl<re::ecs2::PhysicsOriginComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 8);
  if (*(a1 + 224) <= v6 || (v7 = *(*(a1 + 240) + 8 * v6)) == 0 || (v8 = *(v7 + 384)) == 0)
  {
LABEL_14:
    *a5 = xmmword_1E3047670;
    *(a5 + 16) = xmmword_1E3047680;
    *(a5 + 32) = xmmword_1E30476A0;
    *(a5 + 48) = xmmword_1E30474D0;
    return;
  }

  v9 = *(v7 + 400);
  v10 = &v9[v8];
  while (1)
  {
    v11 = *v9;
    if (a3)
    {
      v12 = 8 * a3;
      v13 = a2;
      while (*v13 != v11)
      {
        ++v13;
        v12 -= 8;
        if (!v12)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      v13 = a2;
    }

    if (v13 != &a2[a3])
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *(v11 + 16);
    if (*(v14 + 304))
    {
      break;
    }

LABEL_13:
    if (++v9 == v10)
    {
      goto LABEL_14;
    }
  }

  re::TransformService::worldMatrix(a4, v14, 0, a5);
  v16 = *(a5 + 16);
  v17 = *(a5 + 32);
  v18 = vmulq_f32(*a5, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v17, v17, 0xCuLL), v17, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL))), vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL), vextq_s8(vextq_s8(v16, v16, 0xCuLL), v16, 8uLL)));
  v19 = vaddv_f32(*v18.f32);
  v20 = -1.0;
  if ((v18.f32[2] + v19) > 0.0)
  {
    v20 = 1.0;
  }

  v21 = vmulq_f32(*a5, *a5);
  v22 = vmulq_f32(v16, v16);
  v23 = vadd_f32(vzip1_s32(*v21.i8, *v22.i8), vzip2_s32(*v21.i8, *v22.i8));
  v24 = vextq_s8(v21, v21, 8uLL);
  *v24.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v24.f32, *&vextq_s8(v22, v22, 8uLL)), v23));
  v25 = vmulq_f32(v17, v17);
  v24.i32[2] = sqrtf(v25.f32[2] + vaddv_f32(*v25.f32));
  v26 = vmulq_n_f32(v24, v20);
  v27 = vmulq_f32(v26, v26);
  if (fabsf(v27.f32[2] + vaddv_f32(*v27.f32)) < 1.0e-10)
  {
    v28 = *re::ecsComponentsLogObjects(v15);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *v29 = 0;
      _os_log_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_DEFAULT, "Physics origin tranform has scale of 0.", v29, 2u);
    }
  }
}

uint64_t re::internal::getPhysicsOriginFromTransform@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, float32x4_t *a3@<X2>, uint64_t a4@<X8>)
{
  re::TransformService::worldMatrix(a2, a1, 0, v15);
  v6 = 0;
  v7 = *a3;
  v8 = a3[1];
  v9 = a3[2];
  v10 = a3[3];
  v16[0] = v15[0];
  v16[1] = v15[1];
  v16[2] = v15[2];
  v16[3] = v15[3];
  do
  {
    *(&v17 + v6 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v7, COERCE_FLOAT(*&v16[v6])), v8, *v16[v6].i8, 1), v9, v16[v6], 2), v10, v16[v6], 3);
    ++v6;
  }

  while (v6 != 4);
  v16[0] = 0u;
  v18 = 0u;
  v19 = xmmword_1E30474D0;
  result = re::decomposeScaleRotationTranslation<float>(&v17, v16, &v19, &v18);
  v12 = v16[0].i64[1];
  v13 = v19;
  v14 = v18;
  *a4 = v16[0].i64[0];
  *(a4 + 8) = v12;
  *(a4 + 16) = v13;
  *(a4 + 32) = v14;
  return result;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs222PhysicsOriginComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t re::ecs2::RemoteEffectsComponent::getLegacyStyle(re::ecs2::RemoteEffectsComponent *this)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(this + 7))
  {
    return *(this + 9);
  }

  v3 = *re::remoteEffectsLogObjects(this);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(this + 2) + 312);
    v5 = 134217984;
    v6 = v4;
    _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "Failed to find legacy style for entity: %llu", &v5, 0xCu);
  }

  return 0;
}

uint64_t re::ecs2::RemoteEffectsComponent::setGlowAppearDurationOverride(re::ecs2::RemoteEffectsComponent *a1, uint64_t a2)
{
  result = re::ecs2::RemoteEffectsComponent::getLegacyStyle(a1);
  if (result)
  {
    if (*a2 == 1)
    {
      v4 = *(a2 + 8);
      if ((*(result + 56) & 1) == 0)
      {
        *(result + 56) = 1;
      }

      *(result + 64) = v4;
    }

    else if (*(result + 56) == 1)
    {
      *(result + 56) = 0;
    }
  }

  return result;
}

uint64_t re::ecs2::RemoteEffectsComponent::setGlowDisappearDurationOverride(re::ecs2::RemoteEffectsComponent *a1, uint64_t a2)
{
  result = re::ecs2::RemoteEffectsComponent::getLegacyStyle(a1);
  if (result)
  {
    if (*a2 == 1)
    {
      v4 = *(a2 + 8);
      if ((*(result + 72) & 1) == 0)
      {
        *(result + 72) = 1;
      }

      *(result + 80) = v4;
    }

    else if (*(result + 72) == 1)
    {
      *(result + 72) = 0;
    }
  }

  return result;
}

void re::ecs2::RemoteEffectsComponent::setAudioAssetHandle(re::ecs2::RemoteEffectsComponent *a1, const re::AssetHandle *a2)
{
  LegacyStyle = re::ecs2::RemoteEffectsComponent::getLegacyStyle(a1);
  if (LegacyStyle)
  {
    v4 = LegacyStyle;
    re::AssetHandle::AssetHandle(v5, a2);
    re::AssetHandle::operator=(v4 + 88, v5);
    re::AssetHandle::~AssetHandle(v5);
  }
}

re::AssetHandle *re::ecs2::RemoteEffectsComponent::getAudioAssetHandle@<X0>(re::ecs2::RemoteEffectsComponent *this@<X0>, re::AssetHandle *a2@<X8>)
{
  result = re::ecs2::RemoteEffectsComponent::getLegacyStyle(this);
  if (result)
  {

    return re::AssetHandle::AssetHandle(a2, (result + 88));
  }

  else
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

  return result;
}

uint64_t re::ecs2::WriteOptional<double>(uint64_t a1, _BYTE *a2)
{
  result = RESyncBitWriterWriteBool();
  if (*a2 == 1)
  {

    JUMPOUT(0x1E69049A0);
  }

  return result;
}

uint64_t re::ecs2::ReadOptional<double>(_BYTE *a1)
{
  result = RESyncBitReaderReadBool();
  *a1 = 0;
  return result;
}

uint64_t re::ecs2::fromBitReader()
{
  v0 = RESyncBitReaderDataPtr();
  RESyncBitReaderSize();
  RESyncBitReaderBytesRead();
  RESyncBitReaderSkipData();
  return v0;
}

uint64_t re::ecs2::RemoteEffectsComponent::makeSyncInfo(re::ecs2::RemoteEffectsComponent *this)
{
  v1 = RESyncSyncableTypeInfoCreate();
  RESyncSyncableTypeInfoSetDebugName();
  RESyncSyncableTypeInfoSetWriteSnapshotCb();
  RESyncSyncableTypeInfoSetReadSnapshotCb();
  RESyncSyncableTypeInfoSetWritePayloadCb();
  RESyncSyncableTypeInfoSetReadPayloadCb();
  return v1;
}

BOOL ___ZN2re4ecs222RemoteEffectsComponent12makeSyncInfoEv_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = RESyncGetSyncObjectContextEntry() + 448;

  return re::ecs2::serializeToSnapshot(a2, a3, v5);
}

BOOL re::ecs2::serializeToSnapshot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  buf[3] = *MEMORY[0x1E69E9840];
  buf[0] = 0;
  v14 = RESyncBitWriterOpenBuffer();
  v15 = 0;
  v16 = 0;
  v17 = a1;
  v18 = re::ecs2::bitWriterGrowFn;
  memset(v19, 0, sizeof(v19));
  re::DynamicString::setCapacity(v19, 0);
  v20 = 6;
  v21 = a3;
  v13 = &unk_1F5D17050;
  {
    re::introspect<re::ecs2::RemoteEffectsComponent>(BOOL)::info = re::ecs2::introspect_RemoteEffectsComponent(0);
  }

  re::snapshot::introspected::write<re::snapshot::EncoderRaw>(&v13, a2, re::introspect<re::ecs2::RemoteEffectsComponent>(BOOL)::info);
  if (BYTE8(v19[0]))
  {
    v6 = *(&v19[0] + 1) >> 1;
  }

  else
  {
    v6 = BYTE8(v19[0]) >> 1;
  }

  v7 = RESyncBitWriterCloseBuffer();
  if (v6)
  {
    v8 = *re::remoteEffectsLogObjects(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = re::ecs2::ComponentImpl<re::ecs2::RemoteEffectsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
      v10 = v8;
      v11 = *((*(*v9 + 48))(v9) + 48);
      LODWORD(buf[0]) = 136380675;
      *(buf + 4) = v11;
      _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "Failed to write raw snapshot of type %{private}s", buf, 0xCu);
    }
  }

  v13 = &unk_1F5D16DD0;
  if (*&v19[0] && (BYTE8(v19[0]) & 1) != 0)
  {
    (*(**&v19[0] + 40))();
  }

  return v6 == 0;
}

uint64_t ___ZN2re4ecs222RemoteEffectsComponent12makeSyncInfoEv_block_invoke_2(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = RESyncGetSyncObjectContextEntry() + 448;

  return re::ecs2::deserializeFromSnapshot(a2, a3, v5);
}

uint64_t re::ecs2::deserializeFromSnapshot(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = re::ecs2::fromBitReader();
  v7 = v6;
  v16 = v5;
  v17 = v7;
  v20 = -1;
  v21 = 0;
  v22 = a3;
  v24 = 0;
  v18 = v5;
  v19 = (v5 + v7);
  v15 = &unk_1F5D172F0;
  {
    re::introspect<re::ecs2::RemoteEffectsComponent>(BOOL)::info = re::ecs2::introspect_RemoteEffectsComponent(0);
  }

  re::snapshot::introspected::read<re::snapshot::DecoderRaw>(&v15, a2, re::introspect<re::ecs2::RemoteEffectsComponent>(BOOL)::info);
  if (v18 != v19)
  {
    re::snapshot::BufferDecoder::error(&v15, "failed to consume input: %zu vs %zu", v18 - v16, v17);
  }

  v8 = v21;
  if (v21 == 1)
  {
    re::snapshot::BufferDecoder::logInput(&v15);
    v10 = *re::remoteEffectsLogObjects(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = re::ecs2::ComponentImpl<re::ecs2::RemoteEffectsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
      v12 = v10;
      v13 = *((*(*v11 + 48))(v11) + 48);
      *buf = 136380675;
      v26 = v13;
      _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "Failed to read raw snapshot of type %{private}s", buf, 0xCu);
    }
  }

  return v8 ^ 1u;
}

void *___ZN2re4ecs222RemoteEffectsComponent12makeSyncInfoEv_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (RESyncObjectWriteContextIsLocalSession())
  {
    RESyncBitReaderBytesLeft();
    RESyncBitReaderDataPtr();

    JUMPOUT(0x1E69049A0);
  }

  re::ecs2::RemoteEffectsComponent::RemoteEffectsComponent(&v9);
  v8[0] = re::ecs2::encodeEntity;
  memset(&v8[1], 0, 24);
  v7[0] = re::PassthroughAssetSerialization::instance(void)::instance;
  v7[1] = 0;
  v7[2] = 0;
  v7[3] = v8;
  v7[4] = 0;
  re::ecs2::deserializeFromSnapshot(a2, &v9, v7);
  RESyncBitWriterWriteBool();
  RESyncBitWriterWriteBool();
  RESyncBitWriterWriteUInt32();
  MEMORY[0x1E69049A0](a3, &v13, 16);
  RESyncBitWriterWriteFloat();
  v20[0] = v14;
  if (v14 == 1)
  {
    v21 = v15;
  }

  re::ecs2::WriteOptional<double>(a3, v20);
  v18[0] = v16;
  if (v16 == 1)
  {
    v19 = v17;
  }

  re::ecs2::WriteOptional<double>(a3, v18);
  RESyncBitWriterWriteBool();
  RESyncBitWriterWriteBool();
  RESyncBitWriterWriteUInt8();
  RESyncBitWriterWriteUInt32();
  v30 = 0;
  v5 = RESyncBitWriterOpenBuffer();
  v22[0] = &unk_1F5D16DD0;
  v22[1] = v5;
  v23 = 0;
  v24 = v30;
  v25 = a3;
  v26 = re::ecs2::bitWriterGrowFn;
  memset(v27, 0, sizeof(v27));
  re::DynamicString::setCapacity(v27, 0);
  v28 = 6;
  v29 = v7;
  v22[0] = &unk_1F5D16F10;
  if ((atomic_load_explicit(&qword_1EE1A8000, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A8000))
  {
    _MergedGlobals_244 = re::ecs2::introspect_RemoteEffectsComponentExtraData(0);
    __cxa_guard_release(&qword_1EE1A8000);
  }

  re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(v22, &v9, _MergedGlobals_244);
  RESyncBitWriterCloseBuffer();
  v22[0] = &unk_1F5D16DD0;
  if (v27[0] && (v27[1] & 1) != 0)
  {
    (*(*v27[0] + 40))();
  }

  v9 = &unk_1F5CF0020;
  re::DynamicArray<re::ecs2::RemoteEffectsStyle>::deinit(&v12);
  if (cf)
  {
    CFRelease(cf);
  }

  v9 = &unk_1F5CCF868;
  return objc_destructInstance(&v10);
}

void re::ecs2::RemoteEffectsComponent::~RemoteEffectsComponent(re::ecs2::RemoteEffectsComponent *this)
{
  *this = &unk_1F5CF0020;
  re::DynamicArray<re::ecs2::RemoteEffectsStyle>::deinit(this + 40);
  v2 = *(this + 4);
  if (v2)
  {
    CFRelease(v2);
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CF0020;
  re::DynamicArray<re::ecs2::RemoteEffectsStyle>::deinit(this + 40);
  v2 = *(this + 4);
  if (v2)
  {
    CFRelease(v2);
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t ___ZN2re4ecs222RemoteEffectsComponent12makeSyncInfoEv_block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (RESyncObjectReadContextIsLocalSession())
  {
    v4 = RESyncBitReaderBytesLeft();
    v5 = RESyncBitReaderDataPtr();
    MEMORY[0x1E69049A0](a3, v5, v4);
  }

  else
  {
    re::ecs2::RemoteEffectsComponent::RemoteEffectsComponent(&v32);
    v31[0] = re::ecs2::encodeEntity;
    memset(&v31[1], 0, 24);
    v30[0] = re::PassthroughAssetSerialization::instance(void)::instance;
    v30[1] = 0;
    v30[2] = 0;
    v30[3] = v31;
    v30[4] = 0;
    v54 = 1;
    RESyncBitReaderReadBool();
    v6 = v54;
    LegacyStyle = re::ecs2::RemoteEffectsComponent::getLegacyStyle(&v32);
    if (LegacyStyle)
    {
      *(LegacyStyle + 17) = v6;
    }

    v53 = 0;
    RESyncBitReaderReadBool();
    v35[42] = v53;
    v52 = 0;
    RESyncBitReaderReadUInt32();
    v8 = v52;
    v9 = re::ecs2::RemoteEffectsComponent::getLegacyStyle(&v32);
    if (v9)
    {
      *(v9 + 12) = v8;
      *(v9 + 22) = v8 == 0;
    }

    __asm { FMOV            V0.2S, #1.0 }

    v50 = _D0;
    LODWORD(v51) = 1065353216;
    BYTE4(v51) = 0;
    RESyncBitReaderReadData();
    v16 = v50;
    v15 = v51;
    v17 = re::ecs2::RemoteEffectsComponent::getLegacyStyle(&v32);
    if (v17)
    {
      *(v17 + 24) = v16;
      *(v17 + 32) = v15;
      *(v17 + 36) = BYTE4(v15);
    }

    v49 = 1065353216;
    RESyncBitReaderReadFloat();
    v18 = v49;
    v19 = re::ecs2::RemoteEffectsComponent::getLegacyStyle(&v32);
    if (v19)
    {
      *(v19 + 40) = v18;
    }

    re::ecs2::ReadOptional<double>(v47);
    v45[0] = v47[0];
    if (v47[0] == 1)
    {
      v46 = v48;
    }

    re::ecs2::RemoteEffectsComponent::setGlowAppearDurationOverride(&v32, v45);
    re::ecs2::ReadOptional<double>(v43);
    v41[0] = v43[0];
    if (v43[0] == 1)
    {
      v42 = v44;
    }

    re::ecs2::RemoteEffectsComponent::setGlowDisappearDurationOverride(&v32, v41);
    v40 = 0;
    RESyncBitReaderReadBool();
    v20 = v40;
    v21 = re::ecs2::RemoteEffectsComponent::getLegacyStyle(&v32);
    if (v21)
    {
      *(v21 + 18) = v20;
    }

    v39 = 1;
    RESyncBitReaderReadBool();
    v22 = v39;
    v23 = re::ecs2::RemoteEffectsComponent::getLegacyStyle(&v32);
    if (v23)
    {
      *(v23 + 20) = v22;
    }

    v38 = 0;
    RESyncBitReaderReadUInt8();
    v24 = v38;
    v25 = re::ecs2::RemoteEffectsComponent::getLegacyStyle(&v32);
    if (v25)
    {
      *(v25 + 16) = v24;
    }

    v37 = 0;
    RESyncBitReaderReadUInt32();
    v36 = v37;
    v26 = re::ecs2::fromBitReader();
    v28 = v27;
    v56 = v26;
    v57 = v28;
    v60 = -1;
    v61 = 0;
    v62 = v30;
    v64 = 0;
    v58 = v26;
    v59 = (v26 + v28);
    v55 = &unk_1F5D17190;
    if ((atomic_load_explicit(&qword_1EE1A8000, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A8000))
    {
      _MergedGlobals_244 = re::ecs2::introspect_RemoteEffectsComponentExtraData(0);
      __cxa_guard_release(&qword_1EE1A8000);
    }

    re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(&v55, &v32, _MergedGlobals_244);
    if (v58 != v59)
    {
      re::snapshot::BufferDecoder::error(&v55, "failed to consume input: %zu vs %zu", v58 - v56, v57);
    }

    if (v61 == 1)
    {
      re::snapshot::BufferDecoder::logInput(&v55);
    }

    re::ecs2::serializeToSnapshot(a3, &v32, v30);
    v32 = &unk_1F5CF0020;
    re::DynamicArray<re::ecs2::RemoteEffectsStyle>::deinit(v35);
    if (cf)
    {
      CFRelease(cf);
    }

    v32 = &unk_1F5CCF868;
    objc_destructInstance(&v33);
  }

  return RESyncBitReaderIsOverflow() ^ 1;
}