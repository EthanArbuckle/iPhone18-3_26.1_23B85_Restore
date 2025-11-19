void re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v13, 0, 36);
      *&v13[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::init(v13, v4, a2);
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
            re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::addAsMove(a1, *(*&v13[16] + v10) % *(a1 + 24), *(*&v13[16] + v10), *&v13[16] + v10 + 16, (*&v13[16] + v10 + 16));
            v9 = *&v13[32];
          }

          ++v11;
          v10 += 24;
        }

        while (v11 < v9);
      }

      re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::deinit(v13);
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

void re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
      memset_pattern16(v12, &memset_pattern_64_0, 4 * v10);
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

uint64_t re::ecs2::AnimationLibraryComponent::constructAnimationLibraryMeshMapping(re::ecs2::AnimationLibraryComponent *this)
{
  if (*(this + 13))
  {
    return 1;
  }

  result = re::AssetHandle::loadedAsset<re::AnimationLibraryAsset>((this + 32));
  if (result)
  {
    v3 = *(*(this + 2) + 192);
    if (v3)
    {
      v4 = result;
      result = re::AssetHandle::loadedAsset<re::MeshAsset>((v3 + 32));
      if (!result)
      {
        return result;
      }

      v5 = *(v3 + 40);
      if (v5)
      {
        v6 = *(v5 + 792);
      }

      else
      {
        v6 = 0;
      }

      v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) >> 27));
      v8 = v6 ^ (v7 >> 31) ^ v7;
      v9 = *(this + 5);
      if (v9)
      {
        v10 = *(v9 + 792);
      }

      else
      {
        v10 = 0;
      }

      v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) >> 27));
      v12 = ((v8 << 6) + (v8 >> 2) + (v10 ^ (v11 >> 31) ^ v11) - 0x61C8864680B583E9) ^ v8;
      if (*(this + 14) != v12)
      {
        re::AnimationLibraryMeshMapping::rebuildRuntimeData(this + 7, result, v4);
        *(this + 14) = v12;
      }
    }

    else
    {
      *(this + 14) = -1;
    }

    return 1;
  }

  return result;
}

uint64_t re::AssetHandle::loadedAsset<re::AnimationLibraryAsset>(re::AnimationLibraryAsset *a1)
{
  if (!*(a1 + 1))
  {
    return 0;
  }

  v2 = re::AnimationLibraryAsset::assetType(a1);

  return re::AssetHandle::assetWithType(a1, v2, 1);
}

unint64_t re::ecs2::AnimationLibrarySystem::willAddSceneToECSService(re::ecs2::AnimationLibrarySystem *this, re::ecs2::Scene *a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v48[0] = a2;
  v4 = *(this + 48);
  v5 = *(this + 98);
  if (v4 >= 0xB)
  {
    if (v5)
    {
      v6 = (this + 400);
    }

    else
    {
      v6 = *(this + 51);
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
    v7 = (this + 400);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *(this + 51);
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
    *&v40 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(this + 376, 0);
    v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 256, v40);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationLibraryComponent>::init(v12, this + 256, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 39, v48, &v40);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 376, v40);
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
  v14 = *(this + 37);
  *&v47 = 0;
  v15 = *(this + 33);
  DWORD2(v47) = 0;
  if (v14 + 1 > 4 * v15)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationLibraryComponent>,4ul>::setBucketsCapacity(this + 32, (v14 + 4) >> 2);
    v15 = *(this + 33);
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

  if (*(this + 272))
  {
    v16 = this + 280;
  }

  else
  {
    v16 = *(this + 36);
  }

  v17 = *&v16[8 * (v14 >> 2)];
  ++*(this + 37);
  ++*(this + 76);
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
  v23 = *(this + 37);
  if (!v23)
  {
LABEL_53:
    re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  v24 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 256, v23 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationLibraryComponent>::init(v24, this + 256, v48[0]);
  *&v57[0] = *(this + 37) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 39, v48, v57);
  v25 = *(this + 37);
  v26 = *(this + 52);
  if ((v25 & 0x3F) != 0)
  {
    v27 = (v25 >> 6) + 1;
  }

  else
  {
    v27 = v25 >> 6;
  }

  *(this + 52) = v25;
  *&v40 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 376), v27, &v40);
  if (v25 && v26 > v25)
  {
    v28 = 63;
    v29 = *(this + 52) & 0x3FLL;
    if (v29 && v29 != 63)
    {
      v28 = ~(-1 << v29);
    }

    if (*(this + 392))
    {
      v30 = this + 400;
    }

    else
    {
      v30 = *(this + 51);
    }

    *&v30[8 * *(this + 48) - 8] &= v28;
  }

  v31 = *(this + 37);
  v32 = *(this + 58);
  if ((v31 & 0x3F) != 0)
  {
    v33 = (v31 >> 6) + 1;
  }

  else
  {
    v33 = v31 >> 6;
  }

  *(this + 58) = v31;
  *&v40 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 424), v33, &v40);
  if (v31 && v32 > v31)
  {
    v34 = 63;
    v35 = *(this + 58) & 0x3FLL;
    if (v35 && v35 != 63)
    {
      v34 = ~(-1 << v35);
    }

    if (*(this + 440))
    {
      v36 = this + 448;
    }

    else
    {
      v36 = *(this + 57);
    }

    *&v36[8 * *(this + 54) - 8] &= v34;
  }

  v13 = *&v57[0];
LABEL_49:
  result = re::DynamicBitset<unsigned long long,64ul>::setBit(this + 424, v13);
  if (*(this + 488) == 1)
  {
    v38 = *(this + 59);
    v39 = *(v48[0] + 376);
    LOWORD(v40) = 257;
    DWORD1(v40) = 1023969417;
    BYTE8(v40) = 0;
    re::ecs2::System::setTaskOptions(v38, v39, &v40);
    return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(this + 256);
  }

  return result;
}

uint64_t re::ecs2::AnimationLibrarySystem::willRemoveSceneFromECSService(re::ecs2::AnimationLibrarySystem *this, re::ecs2::Scene *a2)
{
  v15 = a2;
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 39, &v15);
  if (result != -1)
  {
    v4 = *(this + 40) + 16 * result;
    re::DynamicBitset<unsigned long long,64ul>::setBit(this + 376, *(v4 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 424, *(v4 + 8));
    v5 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 256, *(v4 + 8));
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

    return re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(this + 312, &v15);
  }

  return result;
}

BOOL re::ecs2::AnimationLibraryComponentStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v32 = *MEMORY[0x1E69E9840];
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v31, a5, 0);
  v8 = *&v31[0];
  v19 = a4;
  v20 = *&v31[0];
  v21 = DWORD2(v31[0]);
  v9 = WORD4(v31[0]);
  v10 = HIWORD(DWORD2(v31[0]));
  if (*&v31[0] != a5 || WORD4(v31[0]) != 0xFFFF || v10 != 0xFFFF)
  {
    do
    {
      v13 = v10;
      v14 = *(v8 + 16);
      if (v14 <= v10)
      {
        v22 = 0;
        memset(v31, 0, sizeof(v31));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v23 = 136315906;
        v24 = "operator[]";
        v25 = 1024;
        v26 = 797;
        v27 = 2048;
        v28 = v13;
        v29 = 2048;
        v30 = v14;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      if (re::ecs2::AnimationLibraryComponent::constructAnimationLibraryMeshMapping(*(*(*(v8 + 32) + 16 * v10) + 8 * v9)))
      {
        v15 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v20);
        re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v19, v15, *(a3 + 32));
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v20);
      v8 = v20;
      v9 = v21;
      v10 = HIWORD(v21);
    }

    while (v20 != a5 || v21 != 0xFFFF || HIWORD(v21) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationLibraryComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
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

uint64_t re::ecs2::AnimationLibrarySystem::update(void *a1, uint64_t a2, uint64_t a3)
{
  v39[0] = a2;
  v39[1] = a3;
  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v38);
  v5 = *(a3 + 200);
  if (v5)
  {
    v6 = 0;
    v7 = *(a3 + 216);
    v8 = 8 * v5;
    do
    {
      v9 = re::ecs2::SceneComponentTable::get((*v7 + 200), re::ecs2::ComponentImpl<re::ecs2::AnimationLibraryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      if (v9)
      {
        v10 = *(v9 + 384);
      }

      else
      {
        v10 = 0;
      }

      v6 += v10;
      v7 += 8;
      v8 -= 8;
    }

    while (v8);
  }

  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v37, 3031, a1);
  re::StackScratchAllocator::StackScratchAllocator(v51);
  v47 = 1;
  v48 = 0;
  v49 = 0;
  v45 = v51;
  v46 = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(&v45, 0);
  v47 += 2;
  v11 = a1[58];
  if ((v11 & 0x3F) != 0)
  {
    v12 = (v11 >> 6) + 1;
  }

  else
  {
    v12 = v11 >> 6;
  }

  v50 = a1[58];
  v40[0] = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(&v45, v12, v40);
  v13 = *(a3 + 200);
  if (v13)
  {
    v14 = *(a3 + 216);
    v15 = 8 * v13;
    do
    {
      v16 = *v14++;
      v40[0] = v16;
      v17 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 39, v40);
      re::DynamicBitset<unsigned long long,64ul>::setBit(&v45, *(a1[40] + 16 * v17 + 8));
      v15 -= 8;
    }

    while (v15);
  }

  re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v45, (a1 + 53));
  v41 = 1;
  v42 = 0;
  v43 = 0;
  v40[0] = v51;
  v40[1] = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v40, 0);
  v41 += 2;
  v18 = a1[58];
  if ((v18 & 0x3F) != 0)
  {
    v19 = (v18 >> 6) + 1;
  }

  else
  {
    v19 = v18 >> 6;
  }

  v44 = a1[58];
  v52 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(v40, v19, &v52);
  re::DynamicBitset<unsigned long long,64ul>::subtractBitSet((a1 + 53), &v45);
  v20 = v49;
  if (v47)
  {
    v20 = &v48;
  }

  v21 = v46;
  if ((v46 & 0x3FFFFFFFFFFFFFFLL) != 0)
  {
    v22 = 0;
    while (1)
    {
      v24 = *v20++;
      v23 = v24;
      if (v24)
      {
        break;
      }

      v22 -= 64;
      if (!--v21)
      {
        goto LABEL_36;
      }
    }

    v25 = __clz(__rbit64(v23));
    if (v25 + 1 != v22)
    {
      FirstBitSet = v25 - v22;
      do
      {
        v27 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[]((a1 + 32), FirstBitSet);
        v28 = *(*v27 + 224);
        v29 = v27[3];
        v30 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v27[2] + 8, v29);
        if (*(v30 + 40))
        {
          v31 = (*(*v28 + 24))(v28, v39, v27, v29, v30, 0);
        }

        else
        {
          v31 = 0;
        }

        v32 = v27[5];
        v33 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v27[2] + 8, v32);
        if (*(v33 + 40))
        {
          v31 |= (*(*v28 + 32))(v28, v39, v27, v32, v33, 0);
        }

        v34 = v27[6];
        v35 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v27[2] + 8, v34);
        if (*(v35 + 40))
        {
          if (((v31 | (*(*v28 + 40))(v28, v39, v27, v34, v35, 0)) & 1) == 0)
          {
            goto LABEL_34;
          }
        }

        else if (!v31)
        {
LABEL_34:
          re::DynamicBitset<unsigned long long,64ul>::clearBit(v40, FirstBitSet);
          goto LABEL_35;
        }

        re::DynamicBitset<unsigned long long,64ul>::setBit(v40, FirstBitSet);
LABEL_35:
        FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v45, FirstBitSet + 1);
      }

      while (FirstBitSet != -1);
    }
  }

LABEL_36:
  re::DynamicBitset<unsigned long long,64ul>::orWithBitSet((a1 + 53), v40);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate((a1 + 32));
  if (v40[0] && (v41 & 1) == 0)
  {
    (*(*v40[0] + 40))();
  }

  if (v45 && (v47 & 1) == 0)
  {
    (*(*v45 + 40))();
  }

  re::StackScratchAllocator::~StackScratchAllocator(v51);
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v37);
  return re::ProfilerTimeGuard<(re::ProfilerStatistic)125>::end(v38);
}

void *re::ecs2::allocInfo_AnimationLibraryComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_179, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_179))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A1748, "AnimationLibraryComponent");
    __cxa_guard_release(&_MergedGlobals_179);
  }

  return &unk_1EE1A1748;
}

void re::ecs2::initInfo_AnimationLibraryComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v14[0] = 0xC58860BB61AE40CLL;
  v14[1] = "AnimationLibraryComponent";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1A1728, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A1728);
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
      qword_1EE1A1738 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_AssetHandle(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "animationLibrary";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x2000000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1A1740 = v12;
      __cxa_guard_release(&qword_1EE1A1728);
    }
  }

  *(this + 2) = 0x7800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1A1738;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AnimationLibraryComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AnimationLibraryComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AnimationLibraryComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AnimationLibraryComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs225AnimationLibraryComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v13 = v15;
}

double re::internal::defaultConstruct<re::ecs2::AnimationLibraryComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 14) = 0;
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
  *v3 = &unk_1F5CD07B8;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 76) = 0u;
  *&result = 0x7FFFFFFFLL;
  *(v3 + 92) = 0x7FFFFFFFLL;
  *(v3 + 104) = 0;
  *(v3 + 112) = -1;
  return result;
}

void *re::internal::defaultDestruct<re::ecs2::AnimationLibraryComponent>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::HashTable<re::AssetHandle,re::DynamicArray<re::AnimationLibraryMeshMappingData>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(a3 + 7);
  re::AssetHandle::~AssetHandle((a3 + 4));
  *a3 = &unk_1F5CCF868;

  return objc_destructInstance(a3 + 1);
}

double re::internal::defaultConstructV2<re::ecs2::AnimationLibraryComponent>(uint64_t a1)
{
  *(a1 + 112) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CD07B8;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 76) = 0u;
  *&result = 0x7FFFFFFFLL;
  *(v1 + 92) = 0x7FFFFFFFLL;
  *(v1 + 104) = 0;
  *(v1 + 112) = -1;
  return result;
}

void *re::internal::defaultDestructV2<re::ecs2::AnimationLibraryComponent>(uint64_t *a1)
{
  re::HashTable<re::AssetHandle,re::DynamicArray<re::AnimationLibraryMeshMappingData>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(a1 + 7);
  re::AssetHandle::~AssetHandle((a1 + 4));
  *a1 = &unk_1F5CCF868;

  return objc_destructInstance(a1 + 1);
}

void *re::ecs2::allocInfo_AnimationLibrarySystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A1730, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A1730))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A17D8, "AnimationLibrarySystem");
    __cxa_guard_release(&qword_1EE1A1730);
  }

  return &unk_1EE1A17D8;
}

void re::ecs2::initInfo_AnimationLibrarySystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xE484F4FAF350C38CLL;
  v6[1] = "AnimationLibrarySystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x1F000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_AnimationLibrarySystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AnimationLibrarySystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AnimationLibrarySystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::AnimationLibrarySystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::AnimationLibrarySystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AnimationLibrarySystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AnimationLibrarySystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::internal::defaultDestruct<re::ecs2::AnimationLibrarySystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 32);
  a3[28] = &unk_1F5CD81B8;
  re::FixedArray<CoreIKTransform>::deinit(a3 + 29);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::AnimationLibrarySystem>(uint64_t *a1)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 32);
  a1[28] = &unk_1F5CD81B8;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 29);

  re::ecs2::System::~System(a1);
}

unint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::AnimationLibraryComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::AnimationLibraryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
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

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationLibraryComponent>::setComponentState(a2, v11, v7);
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::AnimationLibraryComponent>::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

void re::ecs2::AnimationLibrarySystem::~AnimationLibrarySystem(re::ecs2::AnimationLibrarySystem *this)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 32);
  *(this + 28) = &unk_1F5CD81B8;
  re::FixedArray<CoreIKTransform>::deinit(this + 29);

  re::ecs2::System::~System(this);
}

{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 32);
  *(this + 28) = &unk_1F5CD81B8;
  re::FixedArray<CoreIKTransform>::deinit(this + 29);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

uint64_t *re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationLibraryComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::AnimationLibraryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType) + 480;
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
    *v10 = &unk_1F5CD82B0;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationLibraryComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::AnimationLibraryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CD8308;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationLibraryComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::AnimationLibraryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CD8360;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationLibraryComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::AnimationLibraryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CD83B8;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationLibraryComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::AnimationLibraryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
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
        *v37 = &unk_1F5CD82B0;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationLibraryComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CD8308;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationLibraryComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CD8360;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationLibraryComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CD83B8;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationLibraryComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationLibraryComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::AnimationLibraryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationLibraryComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationLibraryComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::AnimationLibraryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationLibraryComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationLibraryComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::AnimationLibraryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationLibraryComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationLibraryComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::AnimationLibraryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationLibraryComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationLibraryComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationLibraryComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationLibraryComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationLibraryComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationLibraryComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationLibraryComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationLibraryComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationLibraryComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD82B0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationLibraryComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationLibraryComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD82B0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationLibraryComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationLibraryComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationLibraryComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationLibraryComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD8308;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationLibraryComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationLibraryComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD8308;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationLibraryComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationLibraryComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationLibraryComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationLibraryComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD8360;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationLibraryComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationLibraryComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD8360;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationLibraryComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationLibraryComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationLibraryComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationLibraryComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD83B8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationLibraryComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationLibraryComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD83B8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationLibraryComponent>,4ul>::setBucketsCapacity(void *result, unint64_t a2)
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

uint64_t re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationLibraryComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationLibraryComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t re::ProfilerTimeGuard<(re::ProfilerStatistic)125>::end(uint64_t result)
{
  if (*result && *(*result + 152))
  {
    v1 = result;
    result = mach_absolute_time();
    v2 = *v1;
    v3 = *(*v1 + 152);
    if (v3)
    {
      v4 = result - v1[1];
      v5 = v3[1008].u64[0];
      if (v5 >= v4)
      {
        v5 = result - v1[1];
      }

      v3[1008].i64[0] = v5;
      v6 = v3[1008].u64[1];
      if (v6 <= v4)
      {
        v6 = v4;
      }

      v3[1008].i64[1] = v6;
      v7 = vdupq_n_s64(1uLL);
      v7.i64[0] = v4;
      v3[1009] = vaddq_s64(v3[1009], v7);
      *(v2 + 184) = 0;
    }

    *v1 = 0;
  }

  return result;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs225AnimationLibraryComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 1;
  *(a2 + 8) = 0;
  return result;
}

re::ecs2::AnimationLibrarySystem *re::ecs2::AnimationLibrarySystem::AnimationLibrarySystem(re::ecs2::AnimationLibrarySystem *this)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = re::ecs2::System::System(this, 1);
  *v2 = &unk_1F5CD8220;
  v3 = v2 + 28;
  v2[28] = &unk_1F5CD81B8;
  v2[30] = 0;
  v2[31] = 0;
  v2[29] = 0;
  v9[1] = 1;
  v10[0] = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
  v9[0] = v10;
  v4 = re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((v2 + 29), v9);
  *(this + 32) = 0;
  *(this + 33) = 0;
  *(this + 68) = 1;
  *(this + 36) = 0;
  *(this + 37) = 0;
  *(this + 35) = 0;
  *(this + 76) = 0;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 98) = 1;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 54) = 0;
  *(this + 110) = 1;
  *(this + 473) = 0u;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  v7 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 47, 0);
  *(this + 98) += 2;
  *(this + 52) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 53, 0);
  *(this + 110) += 2;
  *(this + 58) = 0;
  *(this + 59) = this;
  *(this + 60) = v3;
  *(this + 488) = 1;
  return this;
}

void *re::ecs2::allocInfo_AudioTransientComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A1870, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A1870))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A19B0, "AudioTransientComponent");
    __cxa_guard_release(&qword_1EE1A1870);
  }

  return &unk_1EE1A19B0;
}

void re::ecs2::initInfo_AudioTransientComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v20[0] = 0x32342B161D93F7D2;
  v20[1] = "AudioTransientComponent";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE1A1878, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A1878);
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
      qword_1EE1A18D0 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_uint64_t(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "playbackHostConnectionIdentifier";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x2000000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1A18D8 = v12;
      v13 = re::introspectionAllocator(v12);
      re::IntrospectionInfo<re::HashTable<unsigned long long,re::ecs2::TransientAudioState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>>::get(v13, v14);
      v15 = (*(*v13 + 32))(v13, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "transientStatesByToken";
      *(v15 + 16) = &qword_1EE1A1910;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x2800000002;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE1A18E0 = v15;
      v16 = re::introspectionAllocator(v15);
      re::IntrospectionInfo<re::HashTable<unsigned long long,re::ecs2::TransientExternalStreamControllerState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>>::get(v16, v17);
      v18 = (*(*v16 + 32))(v16, 72, 8);
      *v18 = 1;
      *(v18 + 8) = "transientExternalStreamControllerStatesByToken";
      *(v18 + 16) = &qword_1EE1A1960;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0x5800000003;
      *(v18 + 40) = 0;
      *(v18 + 48) = 0;
      *(v18 + 56) = 0;
      *(v18 + 64) = 0;
      qword_1EE1A18E8 = v18;
      __cxa_guard_release(&qword_1EE1A1878);
    }
  }

  *(this + 2) = 0x8800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1A18D0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AudioTransientComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AudioTransientComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AudioTransientComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AudioTransientComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs223AudioTransientComponentELNS_17RealityKitReleaseE6EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v19 = v21;
}

void re::IntrospectionInfo<re::HashTable<unsigned long long,re::ecs2::TransientAudioState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A18B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A18B0))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1A1910);
    qword_1EE1A1910 = &unk_1F5CD8410;
    __cxa_guard_release(&qword_1EE1A18B0);
  }

  if ((_MergedGlobals_180 & 1) == 0)
  {
    v2 = re::introspect_uint64_t(1, a2);
    v3 = v2;
    v4 = qword_1EE1A1890;
    if (!qword_1EE1A1890)
    {
      v4 = re::ecs2::allocInfo_TransientAudioState(v2);
      qword_1EE1A1890 = v4;
      re::ecs2::initInfo_TransientAudioState(v4, v5);
    }

    if ((_MergedGlobals_180 & 1) == 0)
    {
      _MergedGlobals_180 = 1;
      v6 = *(v4 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1A1910, 0);
      qword_1EE1A1920 = 0x3000000007;
      dword_1EE1A1928 = v6;
      word_1EE1A192C = 0;
      *&xmmword_1EE1A1930 = 0;
      *(&xmmword_1EE1A1930 + 1) = 0xFFFFFFFFLL;
      qword_1EE1A1940 = v3;
      unk_1EE1A1948 = 0;
      qword_1EE1A1950 = v4;
      unk_1EE1A1958 = 0;
      qword_1EE1A1910 = &unk_1F5CD8410;
      re::IntrospectionRegistry::add(v7, v8);
      re::getPrettyTypeName(&qword_1EE1A1910, &v23);
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
        re::TypeBuilder::setConstructor(&v23, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::TransientAudioState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v23, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::TransientAudioState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v23, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::TransientAudioState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::TransientAudioState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::TransientAudioState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::TransientAudioState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v23, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::TransientAudioState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::TransientAudioState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::TransientAudioState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::TransientAudioState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::TransientAudioState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v23, v16);
        re::StackScratchAllocator::~StackScratchAllocator(v25);
      }

      xmmword_1EE1A1930 = v17;
      if (v20)
      {
        if (v20)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::HashTable<unsigned long long,re::ecs2::TransientExternalStreamControllerState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A18B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A18B8))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1A1960);
    qword_1EE1A1960 = &unk_1F5CD84B0;
    __cxa_guard_release(&qword_1EE1A18B8);
  }

  if ((byte_1EE1A1869 & 1) == 0)
  {
    v2 = re::introspect_uint64_t(1, a2);
    v3 = v2;
    v4 = qword_1EE1A18A8;
    if (!qword_1EE1A18A8)
    {
      v4 = re::ecs2::allocInfo_TransientExternalStreamControllerState(v2);
      qword_1EE1A18A8 = v4;
      re::ecs2::initInfo_TransientExternalStreamControllerState(v4, v5);
    }

    if ((byte_1EE1A1869 & 1) == 0)
    {
      byte_1EE1A1869 = 1;
      v6 = *(v4 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1A1960, 0);
      qword_1EE1A1970 = 0x3000000007;
      dword_1EE1A1978 = v6;
      word_1EE1A197C = 0;
      *&xmmword_1EE1A1980 = 0;
      *(&xmmword_1EE1A1980 + 1) = 0xFFFFFFFFLL;
      qword_1EE1A1990 = v3;
      unk_1EE1A1998 = 0;
      qword_1EE1A19A0 = v4;
      unk_1EE1A19A8 = 0;
      qword_1EE1A1960 = &unk_1F5CD84B0;
      re::IntrospectionRegistry::add(v7, v8);
      re::getPrettyTypeName(&qword_1EE1A1960, &v23);
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
        re::TypeBuilder::setConstructor(&v23, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::TransientExternalStreamControllerState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v23, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::TransientExternalStreamControllerState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v23, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::TransientExternalStreamControllerState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::TransientExternalStreamControllerState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::TransientExternalStreamControllerState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::TransientExternalStreamControllerState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v23, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::TransientExternalStreamControllerState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::TransientExternalStreamControllerState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::TransientExternalStreamControllerState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::TransientExternalStreamControllerState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::TransientExternalStreamControllerState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v23, v16);
        re::StackScratchAllocator::~StackScratchAllocator(v25);
      }

      xmmword_1EE1A1980 = v17;
      if (v20)
      {
        if (v20)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::ecs2::AudioTransientComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 16) = 0;
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
  *v3 = &unk_1F5CD8550;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 60) = 0u;
  *&result = 0x7FFFFFFFLL;
  *(v3 + 76) = 0x7FFFFFFFLL;
  *(v3 + 88) = 0u;
  *(v3 + 104) = 0u;
  *(v3 + 120) = 0;
  *(v3 + 124) = 0x7FFFFFFFLL;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::AudioTransientComponent>(uint64_t a1)
{
  *(a1 + 128) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CD8550;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 60) = 0u;
  *&result = 0x7FFFFFFFLL;
  *(v1 + 76) = 0x7FFFFFFFLL;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0;
  *(v1 + 124) = 0x7FFFFFFFLL;
  return result;
}

void *re::ecs2::allocInfo_TransientAudioState(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A1880, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A1880))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A1A40, "TransientAudioState");
    __cxa_guard_release(&qword_1EE1A1880);
  }

  return &unk_1EE1A1A40;
}

void re::ecs2::initInfo_TransientAudioState(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v15[0] = 0xF5E8C1B66B36A0CALL;
  v15[1] = "TransientAudioState";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE1A1888, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A1888);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = introspect_REAudioInputMode(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "inputMode";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1A18C0 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_uint32_t(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "layoutTag";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x400000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1A18C8 = v13;
      __cxa_guard_release(&qword_1EE1A1888);
    }
  }

  *(this + 2) = 0x800000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1A18C0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::TransientAudioState>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::TransientAudioState>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::TransientAudioState>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::TransientAudioState>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v14 = v16;
}

uint64_t re::internal::defaultConstructV2<re::ecs2::TransientAudioState>(uint64_t result)
{
  *result = 0;
  *(result + 4) = 6553601;
  return result;
}

void *re::ecs2::allocInfo_TransientExternalStreamControllerState(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A1898, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A1898))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A1AD0, "TransientExternalStreamControllerState");
    __cxa_guard_release(&qword_1EE1A1898);
  }

  return &unk_1EE1A1AD0;
}

void re::ecs2::initInfo_TransientExternalStreamControllerState(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v23[0] = 0x660E514A6C8D22C0;
  v23[1] = "TransientExternalStreamControllerState";
  if (v23[0])
  {
    if (v23[0])
    {
    }
  }

  *(this + 2) = v24;
  if ((atomic_load_explicit(&qword_1EE1A18A0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A18A0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = introspect_REAudioNormalizationMode(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "normalizationMode";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1A18F0 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = introspect_REAudioCalibrationMode(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "calibrationMode";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x400000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1A18F8 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_double(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "calibrationLevel";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x800000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1A1900 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::introspect_double(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "targetLUFS";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x1000000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE1A1908 = v21;
      __cxa_guard_release(&qword_1EE1A18A0);
    }
  }

  *(this + 2) = 0x1800000008;
  *(this + 6) = 8;
  *(this + 14) = 1;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1A18F0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::TransientExternalStreamControllerState>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::TransientExternalStreamControllerState>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::TransientExternalStreamControllerState>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::TransientExternalStreamControllerState>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v22 = v24;
}

double re::internal::defaultConstruct<re::ecs2::TransientExternalStreamControllerState>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0x200000001;
  result = 85.0;
  *(a3 + 8) = xmmword_1E3073DE0;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::TransientExternalStreamControllerState>(uint64_t a1)
{
  *a1 = 0x200000001;
  result = 85.0;
  *(a1 + 8) = xmmword_1E3073DE0;
  return result;
}

void *re::IntrospectionHashTable<unsigned long long,re::ecs2::TransientAudioState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<unsigned long long,re::ecs2::TransientAudioState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<unsigned long long,re::ecs2::TransientAudioState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<unsigned long long,re::ecs2::TransientAudioState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<unsigned long long,re::ecs2::TransientAudioState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, void *a5)
{
  v10 = 0x64000100000000;
  v8 = re::HashTable<unsigned long long,re::ecs2::TransientAudioState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(a4, a5, &v10);
  re::introspectionInitElement(a2, a3, *(a1 + 64), v8);
  return v8;
}

uint64_t re::IntrospectionHashTable<unsigned long long,re::ecs2::TransientAudioState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 8;
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
    v10 = *(a2 + 16) + 32 * v6;
    result = std::function<BOOL ()(void const*,void *)>::operator()(a3, v10 + 8, v10 + 16);
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
      if ((*(*(a2 + 16) + 32 * v6) & 0x80000000) != 0)
      {
        goto LABEL_17;
      }
    }

    LODWORD(v6) = v11;
LABEL_17:
    ;
  }

  while (v6 != v5);
  return result;
}

void re::HashTable<unsigned long long,re::ecs2::TransientAudioState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v9, v4, a2);
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
      re::HashTable<unsigned long long,re::ecs2::TransientAudioState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(a1, v9);
      re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v9);
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

uint64_t re::HashTable<unsigned long long,re::ecs2::TransientAudioState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<unsigned long long,re::ecs2::TransientAudioState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v4, *(v7 + v5 + 24) % *(v4 + 24));
        v8 = *(a2 + 16) + v5;
        *(result + 8) = *(v8 + 8);
        *(result + 16) = *(v8 + 16);
        v2 = *(a2 + 32);
      }

      v5 += 32;
    }
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::ecs2::TransientAudioState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned long long,re::ecs2::TransientAudioState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 32 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v9 + 24) = a3;
  *(v10 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v7 + 32 * v5;
}

uint64_t re::HashTable<unsigned long long,re::ecs2::TransientAudioState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(uint64_t a1, void *a2, void *a3)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v11);
  v7 = HIDWORD(v12);
  if (HIDWORD(v12) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<unsigned long long,re::ecs2::TransientAudioState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v12, v11);
    *(v8 + 8) = *a2;
    *(v8 + 16) = *a3;
    result = v8 + 16;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v10 = *(a1 + 16) + 32 * v7;
    *(v10 + 16) = *a3;
    return v10 + 16;
  }

  return result;
}

void re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::TransientAudioState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::TransientAudioState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1);

  return re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::TransientAudioState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::clear(a1);
  }

  else
  {
    re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1);

    re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::TransientAudioState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void **a2, re::Allocator *a3, void *a4)
{
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<unsigned long long,re::ecs2::TransientAudioState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::TransientAudioState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::TransientAudioState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
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

          if ((*(*(v7 + 16) + 32 * v4) & 0x80000000) != 0)
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
          v5 += 8;
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

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::TransientAudioState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 32 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::TransientAudioState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 32 * *(a1 + 32) + 16;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::TransientAudioState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

void *re::IntrospectionHashTable<unsigned long long,re::ecs2::TransientExternalStreamControllerState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<unsigned long long,re::ecs2::TransientExternalStreamControllerState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<unsigned long long,re::ecs2::TransientExternalStreamControllerState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<unsigned long long,re::ecs2::TransientExternalStreamControllerState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::internal::MemoryAttributionTaskAndPeerID,re::MemoryAttributionIDMap::MapValue,re::Hash<re::internal::MemoryAttributionTaskAndPeerID>,re::EqualTo<re::internal::MemoryAttributionTaskAndPeerID>,true,false>::deinit(a2);
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

re::IntrospectionBase *re::IntrospectionHashTable<unsigned long long,re::ecs2::TransientExternalStreamControllerState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, unint64_t *a5)
{
  v11 = 0x200000001;
  v12 = xmmword_1E3073DE0;
  re::HashTable<unsigned long long,re::ecs2::TransientExternalStreamControllerState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(a4, a5, &v11);
  v9 = v8;
  re::introspectionInitElement(a2, a3, *(a1 + 64), v8);
  return v9;
}

uint64_t re::IntrospectionHashTable<unsigned long long,re::ecs2::TransientExternalStreamControllerState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
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
    result = std::function<BOOL ()(void const*,void *)>::operator()(a3, v10 + 8, v10 + 16);
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

void re::HashTable<unsigned long long,re::ecs2::TransientExternalStreamControllerState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
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
      re::HashTable<unsigned long long,re::ecs2::TransientExternalStreamControllerState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(a1, v9);
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

uint64_t re::HashTable<unsigned long long,re::ecs2::TransientExternalStreamControllerState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<unsigned long long,re::ecs2::TransientExternalStreamControllerState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v4, *(v7 + v5 + 40) % *(v4 + 24));
        v8 = *(a2 + 16) + v5;
        *(result + 8) = *(v8 + 8);
        v9 = *(v8 + 16);
        *(result + 32) = *(v8 + 32);
        *(result + 16) = v9;
        v2 = *(a2 + 32);
      }

      v5 += 48;
    }
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::ecs2::TransientExternalStreamControllerState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned long long,re::ecs2::TransientExternalStreamControllerState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
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

void re::HashTable<unsigned long long,re::ecs2::TransientExternalStreamControllerState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &unk_1E304C660, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      do
      {
        if ((*v4 & 0x80000000) != 0)
        {
          *v4 &= ~0x80000000;
        }

        v4 += 12;
        --v3;
      }

      while (v3);
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v5 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v5;
  }
}

__n128 re::HashTable<unsigned long long,re::ecs2::TransientExternalStreamControllerState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(uint64_t a1, unint64_t *a2, __n128 *a3)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v11);
  v7 = HIDWORD(v12);
  if (HIDWORD(v12) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<unsigned long long,re::ecs2::TransientExternalStreamControllerState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v12, v11);
    v8->n128_u64[1] = *a2;
    result = *a3;
    v8[2].n128_u64[0] = a3[1].n128_u64[0];
    v8[1] = result;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v10 = (*(a1 + 16) + 48 * v7);
    result = *a3;
    v10[2].n128_u64[0] = a3[1].n128_u64[0];
    v10[1] = result;
  }

  return result;
}

void re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::TransientExternalStreamControllerState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::TransientExternalStreamControllerState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::internal::MemoryAttributionTaskAndPeerID,re::MemoryAttributionIDMap::MapValue,re::Hash<re::internal::MemoryAttributionTaskAndPeerID>,re::EqualTo<re::internal::MemoryAttributionTaskAndPeerID>,true,false>::deinit(a1);

  return re::HashTable<re::internal::MemoryAttributionTaskAndPeerID,re::MemoryAttributionIDMap::MapValue,re::Hash<re::internal::MemoryAttributionTaskAndPeerID>,re::EqualTo<re::internal::MemoryAttributionTaskAndPeerID>,true,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::TransientExternalStreamControllerState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<unsigned long long,re::ecs2::TransientExternalStreamControllerState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::internal::MemoryAttributionTaskAndPeerID,re::MemoryAttributionIDMap::MapValue,re::Hash<re::internal::MemoryAttributionTaskAndPeerID>,re::EqualTo<re::internal::MemoryAttributionTaskAndPeerID>,true,false>::deinit(a1);

    re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::TransientExternalStreamControllerState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void **a2, re::Allocator *a3, unint64_t *a4)
{
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v13);
  re::TypeInfo::TypeInfo(v12, v14);
  Instance = re::TypeInfo::createInstance(v12, a3, 0);
  re::HashTable<unsigned long long,re::ecs2::TransientExternalStreamControllerState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(a1, a4, Instance);
  v10 = v9;
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v13);
  re::TypeInfo::TypeInfo(v12, v14);
  re::TypeInfo::releaseInstance(v12, Instance, a3, 0);
  return v10;
}

uint64_t re::HashTable<unsigned long long,re::ecs2::TransientExternalStreamControllerState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 48 * v6 + 16;
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::TransientExternalStreamControllerState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::TransientExternalStreamControllerState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::TransientExternalStreamControllerState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::TransientExternalStreamControllerState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 48 * *(a1 + 32) + 16;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::ecs2::TransientExternalStreamControllerState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

void re::ecs2::AudioTransientComponent::~AudioTransientComponent(re::ecs2::AudioTransientComponent *this)
{
  re::ecs2::AudioTransientComponent::~AudioTransientComponent(this);

  JUMPOUT(0x1E6906520);
}

{
  *this = &unk_1F5CD8550;
  v2 = (this + 40);
  re::HashTable<re::internal::MemoryAttributionTaskAndPeerID,re::MemoryAttributionIDMap::MapValue,re::Hash<re::internal::MemoryAttributionTaskAndPeerID>,re::EqualTo<re::internal::MemoryAttributionTaskAndPeerID>,true,false>::deinit(this + 11);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

void _ZZN2re8internal15setIntroVersionINS_4ecs223AudioTransientComponentELNS_17RealityKitReleaseE6EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t re::ecs2::CARESortingManagerV2::CARESortingManagerV2(uint64_t a1, uint64_t a2)
{
  v38 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F5CD85D8;
  *(a1 + 8) = 0u;
  v31 = a1 + 8;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 44) = 0x7FFFFFFFLL;
  *(a1 + 56) = 0u;
  v4 = a1 + 56;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 92) = 0x7FFFFFFFLL;
  *(a1 + 104) = 0u;
  v5 = a1 + 104;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 140) = 0x7FFFFFFFLL;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 188) = 0x7FFFFFFFLL;
  *(a1 + 200) = 0u;
  v6 = a1 + 200;
  *(a1 + 216) = 0u;
  *(a1 + 248) = 0u;
  v7 = a1 + 248;
  *(a1 + 232) = 0;
  *(a1 + 236) = 0x7FFFFFFFLL;
  *(a1 + 280) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 284) = 0x7FFFFFFFLL;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  v8 = a1 + 296;
  *(a1 + 328) = 0;
  *(a1 + 332) = 0x7FFFFFFFLL;
  *(a1 + 376) = 0;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 380) = 0x7FFFFFFFLL;
  v9 = re::ServiceLocator::serviceOrNull<re::TransformService>(a2);
  *(v7 + 144) = v9;
  *(v7 + 168) = 0u;
  *(v7 + 152) = 0u;
  *(v7 + 184) = 0x7FFFFFFF00000000;
  *(v7 + 192) = 0;
  re::ecs2::UITreeTracker::UITreeTracker((v7 + 200));
  re::ecs2::UITreeTracker::UITreeTracker((v7 + 648));
  re::ecs2::UITreeTracker::UITreeTracker((v7 + 1096));
  *(v7 + 1560) = 0u;
  *(v7 + 1544) = 0u;
  *(v7 + 1576) = 0x7FFFFFFF00000000;
  *(v7 + 1584) = 0;
  *(v7 + 1592) = a2;
  *(v7 + 1632) = 0;
  *(v7 + 1648) = 0;
  *(v7 + 1640) = 0;
  *(v7 + 1600) = re::ServiceLocator::serviceOrNull<re::AssetService>(a2);
  v10 = re::ServiceLocator::serviceOrNull<re::RenderManager>(*(v7 + 1592));
  *(v7 + 1608) = v10;
  if (!v10)
  {
    v11 = *re::sortingLogObjects(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "No RenderManager found, CARE sorting will not happen.", buf, 2u);
    }
  }

  v12 = re::ServiceLocator::serviceOrNull<re::ecs2::PortalService>(*(a1 + 1840));
  *(a1 + 1864) = v12;
  if (!v12)
  {
    v13 = *re::sortingLogObjects(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "No portal service found, CARE sorting will consider all entities to be in the same world.", buf, 2u);
    }
  }

  v14 = re::ServiceLocator::serviceOrNull<re::TransformService>(*(a1 + 1840));
  *(a1 + 1872) = v14;
  if (re::CARESortingDefaults::normalThreshold(void)::onceToken != -1)
  {
    dispatch_once(&re::CARESortingDefaults::normalThreshold(void)::onceToken, &__block_literal_global_24);
  }

  _MergedGlobals_181 = re::CARESortingDefaults::normalThreshold(void)::sortingNormalThreshold;
  if (re::CARESortingDefaults::distanceThreshold(void)::onceToken != -1)
  {
    dispatch_once(&re::CARESortingDefaults::distanceThreshold(void)::onceToken, &__block_literal_global_4);
  }

  dword_1EE1A1B64 = re::CARESortingDefaults::distanceThreshold(void)::sortingDistanceThreshold;
  if (re::CARESortingDefaults::displacementOrderingThreshold(void)::onceToken != -1)
  {
    dispatch_once(&re::CARESortingDefaults::displacementOrderingThreshold(void)::onceToken, &__block_literal_global_8_0);
  }

  dword_1EE1A1B68 = re::CARESortingDefaults::displacementOrderingThreshold(void)::sortingDisplacementOrderingThreshold;
  v15 = *&_MergedGlobals_181;
  v16 = *re::sortingLogObjects(v14);
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
  if (v17)
  {
    v18 = acosf(1.0 - v15);
    *buf = 134218496;
    v33 = *&_MergedGlobals_181;
    v34 = 2048;
    v35 = v18;
    v36 = 2048;
    v37 = (v18 * 180.0) / 3.14159265;
    _os_log_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_INFO, "Sorting NormalThreshold: %f %frad (%fdeg)", buf, 0x20u);
  }

  v19 = *re::sortingLogObjects(v17);
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
  if (v20)
  {
    *buf = 134217984;
    v33 = *&dword_1EE1A1B64;
    _os_log_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_INFO, "Sorting DistanceThreshold: %fm", buf, 0xCu);
  }

  v21 = *re::sortingLogObjects(v20);
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
  if (v22)
  {
    *buf = 134217984;
    v33 = *&dword_1EE1A1B68;
    _os_log_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_INFO, "Sorting DisplacementOrderingThreshold: %fm", buf, 0xCu);
  }

  if (re::UISortingFeatureFlags::enableUISorterByByCodirectionalGroupConfig(void)::onceToken != -1)
  {
    dispatch_once(&re::UISortingFeatureFlags::enableUISorterByByCodirectionalGroupConfig(void)::onceToken, &__block_literal_global_8);
  }

  if (re::UISortingFeatureFlags::gEnableUISorterByCodirectionalGroupConfig == 1)
  {
    v28 = re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    *(a1 + 1344) = re::ecs2::ComponentImpl<re::ecs2::UISortingCodirectionalGroupConfigComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    *(a1 + 1352) = v28;
  }

  re::HashTable<unsigned long long,re::ecs2::CARESortingManagerV2::SorterCollection,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::emplace<re::ecs2::UISorterTransformCache &>(v7 + 1544, &re::kDefaultWorldRootId, v7 + 144);
  re::ecs2::CARESortingDebuggingV2::m_dirtyTransformEntityCount = 0;
  re::ecs2::CARESortingDebuggingV2::m_hierarchicalDirtiedTransformEntityCount = 0;
  re::ecs2::CARESortingDebuggingV2::m_dirtyAnchorEntityCount = 0;
  re::ecs2::CARESortingDebuggingV2::m_dirtyInactiveEntities = 0;
  re::ecs2::CARESortingDebuggingV2::m_entitiesRemovedFromSortGroups = 0;
  re::ecs2::CARESortingDebuggingV2::m_entitiesAddedToSortGroups = 0;
  re::ecs2::CARESortingDebuggingV2::m_sortGroupsResorted = 0;
  re::ecs2::CARESortingDebuggingV2::s_codirGroupsWithDirtyEntities = 0;
  re::ecs2::CARESortingDebuggingV2::m_sortGroupsRecalculatedOverrides = 0;
  re::ecs2::CARESortingDebuggingV2::m_entitiesRecalculatedOverrides = 0;
  re::ecs2::CARESortingDebuggingV2::m_entitiesRecalculatedOverridesMeshSortingComponentDirtied = 0;
  re::ecs2::CARESortingDebuggingV2::m_highestPriorityInGroup = 0;
  re::ecs2::CARESortingDebuggingV2::m_highestPriorityGroupId = 0;
  re::ecs2::CARESortingDebuggingV2::m_entitiesActivated = 0;
  re::ecs2::CARESortingDebuggingV2::m_entitiesDeactivated = 0;
  re::ecs2::CARESortingDebuggingV2::m_uiSortingComponentActivated = 0;
  re::ecs2::CARESortingDebuggingV2::m_uiSortingComponentDeactivated = 0;
  return a1;
}

void re::HashTable<unsigned long long,re::ecs2::CARESortingManagerV2::SorterCollection,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + (v10 << 7), 16);
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

void re::HashTable<unsigned long long,re::ecs2::CARESortingManagerV2::SorterCollection,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::emplace<re::ecs2::UISorterTransformCache &>(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v9);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    v7 = re::HashTable<unsigned long long,re::ecs2::CARESortingManagerV2::SorterCollection,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v10, v9);
    *(v7 + 8) = *a2;
    *(v7 + 16) = 0u;
    *(v7 + 48) = 0;
    *(v7 + 32) = 0u;
    *(v7 + 52) = 0x7FFFFFFFLL;
    *(v7 + 64) = 0u;
    *(v7 + 96) = 0;
    *(v7 + 80) = 0u;
    *(v7 + 100) = 0x7FFFFFFFLL;
    *(v7 + 112) = a3;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v8 = re::HashTable<unsigned long long,re::ecs2::UISorter,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v12, v7 + 16, 0, 0);
    if (HIDWORD(v13) == 0x7FFFFFFF)
    {
      v8 = re::HashTable<unsigned long long,re::ecs2::UISorter,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v7 + 16, v13, v12);
      *(v8 + 8) = 0u;
      *(v8 + 24) = 0u;
      *(v8 + 36) = 0u;
      *(v8 + 52) = 0x7FFFFFFFLL;
      *(v8 + 64) = 0u;
      *(v8 + 80) = 0u;
      *(v8 + 96) = 0;
      *(v8 + 100) = 0x7FFFFFFFLL;
      *(v8 + 112) = 0u;
      *(v8 + 128) = 0u;
      *(v8 + 144) = 0;
      *(v8 + 148) = 0x7FFFFFFFLL;
      *(v8 + 160) = a3;
      *(v8 + 168) = a3;
      *(v8 + 176) = 0;
      ++*(v7 + 56);
    }

    ++*(a1 + 40);
  }
}

void re::ecs2::CARESortingManagerV2::SorterCollection::removeEntity(re::ecs2::CARESortingManagerV2::SorterCollection *this, re::ecs2::Entity *a2)
{
  v6 = *(a2 + 39);
  v4 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(this + 48, &v6);
  if (v4)
  {
    v5 = re::HashTable<unsigned long long,re::ecs2::UISorter,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this, *v4);
    if (v5)
    {
      re::ecs2::UISorter::removeEntityFromTracking(v5, a2);
      v6 = *(a2 + 39);
      re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(this + 48, &v6);
    }
  }

  else
  {
    re::HashTable<unsigned long long,re::ecs2::UISorter,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v6, this, 0, 0);
    re::ecs2::UISorter::removeEntityFromTracking((*(this + 2) + 192 * v7 + 16), a2);
  }
}

uint64_t re::HashTable<re::ecs2::Entity const*,unsigned long long,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::addOrReplace(uint64_t a1, uint64_t *a2, void *a3)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v12);
  v7 = HIDWORD(v13);
  if (HIDWORD(v13) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::ecs2::Entity const*,unsigned long long,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(a1, v13, v12);
    v9 = *a2;
    *(v8 + 16) = *a3;
    result = v8 + 16;
    *(result - 8) = v9;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v11 = *(a1 + 16) + 32 * v7;
    *(v11 + 16) = *a3;
    return v11 + 16;
  }

  return result;
}

uint64_t re::ecs2::CARESortingManagerV2::addEntityToDirtySetIfAlive(uint64_t this, re::ecs2::Entity *a2)
{
  v3 = a2;
  if (*(a2 + 304))
  {
    v2 = this;
    this = re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(this + 104, &v3);
    if ((this & 1) == 0)
    {
      this = re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(v2 + 152, &v3);
      if ((this & 1) == 0 && (*(v3 + 387) & 1) == 0)
      {
        return re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(v2 + 104, &v3);
      }
    }
  }

  return this;
}

uint64_t re::ecs2::CARESortingManagerV2::removeEntityFromTracking(re::ecs2::CARESortingManagerV2 *this, re::ecs2::Entity *a2)
{
  v12 = a2;
  v3 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(this + 56, &v12);
  if (v3)
  {
    v4 = re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 1792, v3);
    if (v4)
    {
      re::ecs2::CARESortingManagerV2::SorterCollection::removeEntity(v4, v12);
      v5 = re::ecs2::EntityComponentCollection::get((v12 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    }

    re::HashTable<re::ecs2::Entity const*,re::ecs2::EntityVisualProxyScopeData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 56, &v12);
  }

  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 104, &v12);
  re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(this + 152, &v12);
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 200, &v12);
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 248, &v12);
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 296, &v12);
  v13 = v12;
  v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v12 ^ (v12 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v12 ^ (v12 >> 30))) >> 27));
  re::HashTable<re::ecs2::Entity const*,re::ecs2::TransformAndInverse,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>(this + 400, &v13, v7 ^ (v7 >> 31), v14);
  v8 = v16;
  if (v16 != 0x7FFFFFFF)
  {
    v9 = *(this + 52);
    v10 = *(v9 + 160 * v16) & 0x7FFFFFFF;
    if (v17 == 0x7FFFFFFF)
    {
      *(*(this + 51) + 4 * v15) = v10;
      v8 = v16;
    }

    else
    {
      *(v9 + 160 * v17) = *(v9 + 160 * v17) & 0x80000000 | v10;
    }

    *(v9 + 160 * v8) = *(this + 109);
    *(this + 109) = v8;
    --*(this + 107);
    ++*(this + 110);
  }

  return re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 344, &v12);
}

unint64_t re::HashTable<unsigned long long,re::ecs2::CARESortingManagerV2::SorterCollection,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return *(a1 + 16) + (v6 << 7) + 16;
}

void re::ecs2::CARESortingManagerV2::removeTreeFromSorterCollectionIfExists(re::ecs2::CARESortingManagerV2 *this, re::ecs2::CARESortingManagerV2::SorterCollection *a2, unint64_t a3)
{
  if (a3)
  {
    v6 = re::HashTable<unsigned long long,re::ecs2::UISorter,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a2, a3);
    if (v6)
    {
      v7 = v6;
      v8 = *(v6 + 128);
      if (v8)
      {
        v9 = 0;
        v10 = *(v6 + 112);
        while (1)
        {
          v11 = *v10;
          v10 += 8;
          if (v11 < 0)
          {
            break;
          }

          if (v8 == ++v9)
          {
            LODWORD(v9) = *(v6 + 128);
            break;
          }
        }
      }

      else
      {
        LODWORD(v9) = 0;
      }

LABEL_16:
      while (v9 != v8)
      {
        re::ecs2::CARESortingManagerV2::addEntityToDirtySetIfAlive(this, *(*(v7 + 112) + 32 * v9 + 8));
        v12 = *(v7 + 128);
        if (v12 <= v9 + 1)
        {
          v12 = v9 + 1;
        }

        while (v12 - 1 != v9)
        {
          LODWORD(v9) = v9 + 1;
          if ((*(*(v7 + 112) + 32 * v9) & 0x80000000) != 0)
          {
            goto LABEL_16;
          }
        }

        LODWORD(v9) = v12;
      }

      v13 = re::HashTable<unsigned long long,re::ecs2::UISorter,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a2, a3);
      if (v13)
      {
        v14 = v13;
        v15 = *(v13 + 128);
        if (v15)
        {
          v16 = 0;
          v17 = *(v13 + 112);
          while (1)
          {
            v18 = *v17;
            v17 += 8;
            if (v18 < 0)
            {
              break;
            }

            if (v15 == ++v16)
            {
              LODWORD(v16) = *(v13 + 128);
              break;
            }
          }
        }

        else
        {
          LODWORD(v16) = 0;
        }

LABEL_31:
        while (v16 != v15)
        {
          v25 = *(*(*(v14 + 112) + 32 * v16 + 8) + 312);
          re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(a2 + 48, &v25);
          v19 = *(v14 + 128);
          if (v19 <= v16 + 1)
          {
            v19 = v16 + 1;
          }

          while (v19 - 1 != v16)
          {
            LODWORD(v16) = v16 + 1;
            if ((*(*(v14 + 112) + 32 * v16) & 0x80000000) != 0)
            {
              goto LABEL_31;
            }
          }

          LODWORD(v16) = v19;
        }

        v20 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) >> 27));
        re::HashTable<unsigned long long,re::ecs2::UISorter,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v25, a2, a3, v20 ^ (v20 >> 31));
        v21 = v27;
        if (v27 != 0x7FFFFFFF)
        {
          v22 = *(a2 + 2);
          v23 = *(v22 + 192 * v27) & 0x7FFFFFFF;
          if (v28 == 0x7FFFFFFF)
          {
            *(*(a2 + 1) + 4 * v26) = v23;
          }

          else
          {
            *(v22 + 192 * v28) = *(v22 + 192 * v28) & 0x80000000 | v23;
          }

          re::HashTable<unsigned long long,re::ecs2::UISorter,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(v22, v21);
          *(*(a2 + 2) + 192 * v21) = *(*(a2 + 2) + 192 * v21) & 0x80000000 | *(a2 + 9);
          --*(a2 + 7);
          v24 = *(a2 + 10) + 1;
          *(a2 + 9) = v21;
          *(a2 + 10) = v24;
        }
      }
    }
  }
}

void re::ecs2::CARESortingManagerV2::update(uint64_t a1)
{
  v2 = a1;
  v383[6] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 1856);
  if (v3)
  {
    v354 = (v2 + 428);
    v4 = re::RenderManager::perFrameAllocator(v3);
    if (*(v2 + 428))
    {
      v5 = *(v2 + 424);
      if (v5)
      {
        memset_pattern16(*(v2 + 408), &unk_1E304C660, 4 * v5);
      }

      v6 = *(v2 + 432);
      if (v6)
      {
        v7 = *(v2 + 416);
        do
        {
          if ((*v7 & 0x80000000) != 0)
          {
            *v7 &= ~0x80000000;
          }

          v7 += 40;
          --v6;
        }

        while (v6);
      }

      *(v2 + 436) = 0x7FFFFFFF;
      *v354 = 0;
      ++*(v2 + 440);
    }

    v345 = (v2 + 392);
    re::ecs2::CARESortingDebuggingV2::m_dirtyTransformEntityCount = 0;
    re::ecs2::CARESortingDebuggingV2::m_hierarchicalDirtiedTransformEntityCount = 0;
    re::ecs2::CARESortingDebuggingV2::m_dirtyAnchorEntityCount = 0;
    re::ecs2::CARESortingDebuggingV2::m_dirtyInactiveEntities = 0;
    re::ecs2::CARESortingDebuggingV2::m_entitiesRemovedFromSortGroups = 0;
    re::ecs2::CARESortingDebuggingV2::m_entitiesAddedToSortGroups = 0;
    re::ecs2::CARESortingDebuggingV2::m_sortGroupsResorted = 0;
    re::ecs2::CARESortingDebuggingV2::s_codirGroupsWithDirtyEntities = 0;
    re::ecs2::CARESortingDebuggingV2::m_sortGroupsRecalculatedOverrides = 0;
    re::ecs2::CARESortingDebuggingV2::m_entitiesRecalculatedOverrides = 0;
    re::ecs2::CARESortingDebuggingV2::m_entitiesRecalculatedOverridesMeshSortingComponentDirtied = 0;
    re::ecs2::CARESortingDebuggingV2::m_highestPriorityInGroup = 0;
    re::ecs2::CARESortingDebuggingV2::m_highestPriorityGroupId = 0;
    v8 = *(v2 + 1864);
    v349 = v2;
    if (!v8)
    {
      goto LABEL_88;
    }

    v9 = (*(*v8 + 24))(v8);
    v10 = (*(*v9 + 16))(v9);
    v378.i32[0] = 1;
    v379.i64[0] = 0;
    v378.i64[1] = 0;
    *&buf[8] = 0;
    *buf = v4;
    re::DynamicOverflowArray<unsigned long long,5ul>::setCapacity(buf, 0);
    v378.i32[0] += 2;
    v11 = *(v2 + 1824);
    if (v11)
    {
      v12 = 0;
      v13 = *(v2 + 1808);
      while (1)
      {
        v14 = *v13;
        v13 += 32;
        if (v14 < 0)
        {
          break;
        }

        if (v11 == ++v12)
        {
          LODWORD(v12) = *(v2 + 1824);
          break;
        }
      }
    }

    else
    {
      LODWORD(v12) = 0;
    }

    v15 = v10 + 32;
LABEL_20:
    while (v12 != v11)
    {
      v16 = *(v2 + 1808) + (v12 << 7);
      v19 = *(v16 + 8);
      v18 = (v16 + 8);
      v17 = v19;
      if (!v19)
      {
        goto LABEL_25;
      }

      if (*(v10 + 124))
      {
        if (re::HashSetBase<re::WeakStringID,re::WeakStringID,re::internal::ValueAsKey<re::WeakStringID>,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::contains(v10 + 96, v18))
        {
          goto LABEL_25;
        }

LABEL_24:
        re::DynamicOverflowArray<unsigned long long,5ul>::add(buf, v18);
        goto LABEL_25;
      }

      v21 = *(v10 + 16);
      v22 = (v15 + 8 * v21);
      if (v21)
      {
        v23 = 8 * v21;
        v24 = (v10 + 32);
        while (*v24 != v17)
        {
          ++v24;
          v23 -= 8;
          if (!v23)
          {
            goto LABEL_35;
          }
        }
      }

      else
      {
LABEL_35:
        v24 = v22;
      }

      if (v24 == v22)
      {
        goto LABEL_24;
      }

LABEL_25:
      v20 = *(v2 + 1824);
      if (v20 <= v12 + 1)
      {
        v20 = v12 + 1;
      }

      while (v20 - 1 != v12)
      {
        LODWORD(v12) = v12 + 1;
        if ((*(*(v2 + 1808) + (v12 << 7)) & 0x80000000) != 0)
        {
          goto LABEL_20;
        }
      }

      LODWORD(v12) = v20;
    }

    LODWORD(v373) = 1;
    *&v374 = 0;
    *(&v373 + 1) = 0;
    v372[1] = 0;
    v372[0] = v4;
    re::DynamicOverflowArray<unsigned long long,5ul>::setCapacity(v372, 0);
    LODWORD(v373) = v373 + 2;
    v25 = *(v10 + 124);
    if (v25)
    {
      v15 = v10 + 96;
      v1 = *(v10 + 128);
      v2 = 0;
      if (v1)
      {
        v26 = *(v10 + 112);
        while (1)
        {
          v27 = *v26;
          v26 += 4;
          if (v27 < 0)
          {
            break;
          }

          if (v1 == ++v2)
          {
            LODWORD(v2) = *(v10 + 128);
            break;
          }
        }
      }

      v28 = v10 + 96;
    }

    else
    {
      v28 = v15 + 8 * *(v10 + 16);
    }

    v29 = (v349 + 1792);
    v30 = v15 != v28;
    if (v25)
    {
      v30 = v1 != v2;
    }

    if (v30)
    {
      do
      {
        v31 = v15;
        if (v25)
        {
          v31 = (*(v15 + 16) + 16 * v2 + 8);
        }

        v32 = *v31;
        v360.i64[0] = v32;
        if (!*v29 || (v33 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v32 ^ (v32 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v32 ^ (v32 >> 30))) >> 27)), v34 = *(*(v349 + 1800) + 4 * ((v33 ^ (v33 >> 31)) % *(v349 + 1816))), v34 == 0x7FFFFFFF))
        {
LABEL_56:
          re::DynamicOverflowArray<unsigned long long,5ul>::add(v372, &v360);
        }

        else
        {
          v35 = *(v349 + 1808);
          while (*(v35 + (v34 << 7) + 8) != v32)
          {
            v34 = *(v35 + (v34 << 7)) & 0x7FFFFFFF;
            if (v34 == 0x7FFFFFFF)
            {
              goto LABEL_56;
            }
          }
        }

        if (v25)
        {
          v36 = v2 + 1;
          v37 = 16 * (v2 + 1);
          do
          {
            LODWORD(v2) = v36;
            if (v36 >= *(v15 + 32))
            {
              break;
            }

            v38 = *(*(v15 + 16) + v37);
            ++v36;
            v37 += 16;
          }

          while ((v38 & 0x80000000) == 0);
        }

        else
        {
          v15 += 8;
        }

        v39 = v15 != v28;
        if (v25)
        {
          v39 = v1 != v2;
        }
      }

      while (v39);
    }

    v40 = &v373 + 1;
    if (v378.i8[0])
    {
      v41 = &v378.i64[1];
    }

    else
    {
      v41 = v379.i64[0];
    }

    v2 = v349;
    if (*&buf[8])
    {
      v42 = 8 * *&buf[8];
      do
      {
        v365[0] = *v41;
        v43 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v365[0] ^ (v365[0] >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v365[0] ^ (v365[0] >> 30))) >> 27));
        re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v29, v365, v43 ^ (v43 >> 31), &v360);
        v44 = v360.u32[3];
        if (v360.i32[3] != 0x7FFFFFFF)
        {
          v45 = *(v349 + 1808);
          v46 = *(v45 + (v360.u32[3] << 7)) & 0x7FFFFFFF;
          if (v361 == 0x7FFFFFFF)
          {
            *(*(v349 + 1800) + 4 * v360.u32[2]) = v46;
            v44 = v360.u32[3];
          }

          else
          {
            *(v45 + (v361 << 7)) = *(v45 + (v361 << 7)) & 0x80000000 | v46;
          }

          re::HashTable<unsigned long long,re::ecs2::CARESortingManagerV2::SorterCollection,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(v45, v44);
          v47 = v360.i32[3];
          *(*(v349 + 1808) + (v360.u32[3] << 7)) = *(*(v349 + 1808) + (v360.u32[3] << 7)) & 0x80000000 | *(v349 + 1828);
          *(v349 + 1828) = v47;
          --*(v349 + 1820);
          ++*(v349 + 1832);
        }

        ++v41;
        v42 -= 8;
      }

      while (v42);
    }

    if ((v373 & 1) == 0)
    {
      v40 = v374;
    }

    if (v372[1])
    {
      v48 = 8 * v372[1];
      do
      {
        v49 = *v40++;
        v360.i64[0] = v49;
        re::HashTable<unsigned long long,re::ecs2::CARESortingManagerV2::SorterCollection,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::emplace<re::ecs2::UISorterTransformCache &>(v29, &v360, v345);
        v48 -= 8;
      }

      while (v48);
    }

    if (v372[0] && (v373 & 1) == 0)
    {
      (*(*v372[0] + 40))();
    }

    if (*buf && (v378.i8[0] & 1) == 0)
    {
      (*(**buf + 40))();
    }

LABEL_88:
    if (re::UISortingFeatureFlags::enableUISorterByByCodirectionalGroupConfig(void)::onceToken != -1)
    {
      dispatch_once(&re::UISortingFeatureFlags::enableUISorterByByCodirectionalGroupConfig(void)::onceToken, &__block_literal_global_8);
    }

    if (re::UISortingFeatureFlags::gEnableUISorterByCodirectionalGroupConfig == 1)
    {
      v50 = re::HashTable<unsigned long long,re::ecs2::CARESortingManagerV2::SorterCollection,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](v2 + 1792, &re::kDefaultWorldRootId);
      re::ecs2::UITreeTracker::update((v2 + 1344), v4, buf);
      if (v378.i32[3])
      {
        v51 = v379.i32[0];
        if (v379.i32[0])
        {
          v52 = 0;
          v53 = (v378.i64[0] + 8);
          while (1)
          {
            v54 = *v53;
            v53 += 6;
            if (v54 < 0)
            {
              break;
            }

            if (v379.u32[0] == ++v52)
            {
              LODWORD(v52) = v379.i32[0];
              break;
            }
          }
        }

        else
        {
          LODWORD(v52) = 0;
        }

        if (v52 != v379.i32[0])
        {
          v55 = v378.i64[0];
          do
          {
            re::ecs2::CARESortingManagerV2::removeTreeFromSorterCollectionIfExists(v2, v50, *(v55 + 24 * v52 + 16));
            v55 = v378.i64[0];
            if (v379.i32[0] <= (v52 + 1))
            {
              v56 = v52 + 1;
            }

            else
            {
              v56 = v379.i32[0];
            }

            while (v56 - 1 != v52)
            {
              LODWORD(v52) = v52 + 1;
              if ((*(v378.i64[0] + 24 * v52 + 8) & 0x80000000) != 0)
              {
                goto LABEL_107;
              }
            }

            LODWORD(v52) = v56;
LABEL_107:
            ;
          }

          while (v52 != v51);
        }
      }

      v372[0] = v345;
      LOBYTE(v372[1]) = 1;
      v57 = v382;
      if (v382)
      {
        v58 = 0;
        v59 = (v381 + 8);
        while (1)
        {
          v60 = *v59;
          v59 += 6;
          if (v60 < 0)
          {
            break;
          }

          if (v382 == ++v58)
          {
            LODWORD(v58) = v382;
            break;
          }
        }
      }

      else
      {
        LODWORD(v58) = 0;
      }

      if (v58 != v382)
      {
        v61 = v381;
        do
        {
          v360.i64[0] = *(*(v61 + 24 * v58 + 16) + 312);
          re::HashTable<unsigned long long,re::ecs2::UISorter,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryEmplace<re::ecs2::UISorterConfiguration const&>(v50, &v360, v372);
          v61 = v381;
          if (v382 <= v58 + 1)
          {
            v62 = v58 + 1;
          }

          else
          {
            v62 = v382;
          }

          while (v62 - 1 != v58)
          {
            LODWORD(v58) = v58 + 1;
            if ((*(v381 + 24 * v58 + 8) & 0x80000000) != 0)
            {
              goto LABEL_123;
            }
          }

          LODWORD(v58) = v62;
LABEL_123:
          ;
        }

        while (v58 != v57);
      }

      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v383);
      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v380);
      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(buf);
    }

    v63 = *(v2 + 136);
    if (v63)
    {
      v64 = 0;
      v65 = (*(v2 + 120) + 8);
      while (1)
      {
        v66 = *v65;
        v65 += 6;
        if (v66 < 0)
        {
          break;
        }

        if (v63 == ++v64)
        {
          LODWORD(v64) = *(v2 + 136);
          break;
        }
      }
    }

    else
    {
      LODWORD(v64) = 0;
    }

    while (v64 != v63)
    {
      *buf = *(*(v2 + 120) + 24 * v64 + 16);
      v67 = re::ecs2::EntityComponentCollection::get((*buf + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      if (v67 && *(v67 + 95) == 1)
      {
        re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(v2 + 344, buf);
      }

      v68 = *(v2 + 136);
      if (v68 <= v64 + 1)
      {
        v68 = v64 + 1;
      }

      while (v68 - 1 != v64)
      {
        LODWORD(v64) = v64 + 1;
        if ((*(*(v2 + 120) + 24 * v64 + 8) & 0x80000000) != 0)
        {
          goto LABEL_141;
        }
      }

      LODWORD(v64) = v68;
LABEL_141:
      ;
    }

    v69 = *(v2 + 372);
    *&v374 = 0;
    *&v373 = 0;
    DWORD2(v373) = 0;
    v372[1] = 0;
    v372[0] = v4;
    re::DynamicArray<float *>::setCapacity(v372, v69);
    ++DWORD2(v373);
    v70 = *(v2 + 376);
    if (v70)
    {
      v71 = 0;
      v72 = (*(v2 + 360) + 8);
      while (1)
      {
        v73 = *v72;
        v72 += 6;
        if (v73 < 0)
        {
          break;
        }

        if (v70 == ++v71)
        {
          LODWORD(v71) = *(v2 + 376);
          break;
        }
      }
    }

    else
    {
      LODWORD(v71) = 0;
    }

    if (v71 != v70)
    {
      while (2)
      {
        v365[0] = *(*(v2 + 360) + 24 * v71 + 16);
        v74 = re::ecs2::EntityComponentCollection::get((v365[0] + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        if (!v74)
        {
          goto LABEL_153;
        }

        v75 = *(v365[0] + 24);
        if (v75)
        {
          v76 = v74;
          v77 = re::AssetHandle::loadedAsset<re::MeshAsset>((v75 + 32));
          if (v77)
          {
            *buf = xmmword_1E3047670;
            v378 = xmmword_1E3047680;
            v379 = xmmword_1E30476A0;
            v380 = xmmword_1E30474D0;
            re::MeshAsset::aabbFromMesh(v77, buf, &v360);
            v78 = v361;
            *(v76 + 48) = v360;
            *(v76 + 64) = v78;
            re::ecs2::CARESortingManagerV2::addEntityToDirtySetIfAlive(v2, v365[0]);
LABEL_153:
            re::DynamicArray<re::TransitionCondition *>::add(v372, v365);
          }
        }

        v79 = *(v2 + 376);
        if (v79 <= v71 + 1)
        {
          v79 = v71 + 1;
        }

        while (v79 - 1 != v71)
        {
          LODWORD(v71) = v71 + 1;
          if ((*(*(v2 + 360) + 24 * v71 + 8) & 0x80000000) != 0)
          {
            goto LABEL_160;
          }
        }

        LODWORD(v71) = v79;
LABEL_160:
        if (v71 == v70)
        {
          break;
        }

        continue;
      }
    }

    if (v373)
    {
      v80 = v374;
      v81 = 8 * v373;
      do
      {
        v82 = *v80++;
        *buf = v82;
        re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(v2 + 344, buf);
        v81 -= 8;
      }

      while (v81);
    }

    if (v372[0] && v374)
    {
      (*(*v372[0] + 40))();
    }

    v83 = *(v2 + 132);
    if (v83)
    {
      v379.i64[0] = 0;
      v378.i64[0] = 0;
      v378.i32[2] = 0;
      *&buf[8] = 0;
      *buf = v4;
      re::DynamicArray<float *>::setCapacity(buf, v83);
      ++v378.i32[2];
      v84 = *(v2 + 136);
      if (v84)
      {
        v85 = 0;
        v86 = (*(v2 + 120) + 8);
        while (1)
        {
          v87 = *v86;
          v86 += 6;
          if (v87 < 0)
          {
            break;
          }

          if (v84 == ++v85)
          {
            LODWORD(v85) = *(v2 + 136);
            break;
          }
        }
      }

      else
      {
        LODWORD(v85) = 0;
      }

      if (v85 != v84)
      {
        v88 = *(v2 + 120);
        do
        {
          v372[0] = *(v88 + 24 * v85 + 16);
          v89 = re::ecs2::EntityComponentCollection::get((v372[0] + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          if (v89)
          {
            v91 = *(v89 + 95);
            v92 = v372[0];
            if (v91 == 1)
            {
              v93 = *(v2 + 368);
              if (v93)
              {
                v94 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v372[0] ^ (v372[0] >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v372[0] ^ (v372[0] >> 30))) >> 27));
                v95 = *(*(v2 + 352) + 4 * ((v94 ^ (v94 >> 31)) % v93));
                if (v95 != 0x7FFFFFFF)
                {
                  v96 = *(v2 + 360);
                  while (*(v96 + 24 * v95 + 16) != v372[0])
                  {
                    LODWORD(v95) = *(v96 + 24 * v95 + 8) & 0x7FFFFFFF;
                    if (v95 == 0x7FFFFFFF)
                    {
                      goto LABEL_185;
                    }
                  }

                  goto LABEL_187;
                }
              }
            }
          }

          else
          {
            v92 = v372[0];
          }

LABEL_185:
          if ((re::ecs2::UISorterUtil::shouldSort(v92, v345, v90) & 1) == 0)
          {
            re::DynamicArray<re::TransitionCondition *>::add(buf, v372);
          }

LABEL_187:
          v97 = *(v2 + 136);
          v88 = *(v2 + 120);
          if (v97 <= v85 + 1)
          {
            v97 = v85 + 1;
          }

          while (v97 - 1 != v85)
          {
            LODWORD(v85) = v85 + 1;
            if ((*(v88 + 24 * v85 + 8) & 0x80000000) != 0)
            {
              goto LABEL_193;
            }
          }

          LODWORD(v85) = v97;
LABEL_193:
          ;
        }

        while (v85 != v84);
      }

      if (v378.i64[0])
      {
        v98 = v379.i64[0];
        v99 = 8 * v378.i64[0];
        do
        {
          v100 = *v98++;
          v372[0] = v100;
          re::ecs2::CARESortingManagerV2::removeEntityFromTracking(v2, v100);
          re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(v2 + 104, v372);
          v99 -= 8;
        }

        while (v99);
      }

      if (*buf && v379.i64[0])
      {
        (*(**buf + 40))();
      }
    }

    v362 = 0;
    v360 = 0u;
    v361 = 0u;
    v363 = 0x7FFFFFFFLL;
    v364 = v345;
    re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::init(&v360, v4, 32);
    re::ecs2::UISorterPerFrameGatherer::gatherDirtyEntitiesToSort(&v360, v2 + 104, v2 + 200, v2 + 248, v2 + 296);
    if (HIDWORD(v361))
    {
      re::ecs2::UISorterPerFrameGatherer::filterDirtyEntitiesToSortByWorld(&v360, *(v2 + 1864), buf);
      v102 = v379.i32[0];
      if (v379.i32[0])
      {
        v103 = 0;
        v104 = v378.i64[0];
        while (1)
        {
          v105 = *v104;
          v104 += 16;
          if (v105 < 0)
          {
            break;
          }

          if (v379.u32[0] == ++v103)
          {
            LODWORD(v103) = v379.i32[0];
            break;
          }
        }
      }

      else
      {
        LODWORD(v103) = 0;
      }

      if (v103 != v379.i32[0])
      {
        v110 = v378.i64[0];
        v111 = v379.i32[0];
        do
        {
          v112 = v110 + (v103 << 6);
          v113 = *(v112 + 48);
          v114 = *(v112 + 32);
          v372[0] = *(v112 + 8);
          if (v114)
          {
            v115 = 8 * v114;
            do
            {
              v365[0] = *v113;
              v116 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(v2 + 56, v365);
              if (v116)
              {
                if (*v116 != v372[0])
                {
                  v117 = re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v2 + 1792, v116);
                  if (v117)
                  {
                    re::ecs2::CARESortingManagerV2::SorterCollection::removeEntity(v117, v365[0]);
                  }
                }
              }

              re::HashTable<re::ecs2::Entity const*,unsigned long long,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::addOrReplace(v2 + 56, v365, v372);
              ++v113;
              v115 -= 8;
            }

            while (v115);
            v111 = v379.i32[0];
            v110 = v378.i64[0];
          }

          if (v111 <= v103 + 1)
          {
            v118 = v103 + 1;
          }

          else
          {
            v118 = v111;
          }

          while (v118 - 1 != v103)
          {
            LODWORD(v103) = v103 + 1;
            if ((*(v110 + (v103 << 6)) & 0x80000000) != 0)
            {
              goto LABEL_231;
            }
          }

          LODWORD(v103) = v118;
LABEL_231:
          ;
        }

        while (v103 != v102);
      }

      v119 = *(v2 + 1824);
      if (v119)
      {
        v120 = 0;
        v121 = *(v2 + 1808);
        while (1)
        {
          v122 = *v121;
          v121 += 32;
          if (v122 < 0)
          {
            break;
          }

          if (v119 == ++v120)
          {
            LODWORD(v120) = *(v2 + 1824);
            break;
          }
        }
      }

      else
      {
        LODWORD(v120) = 0;
      }

      while (v120 != v119)
      {
        v123 = *(v2 + 1808) + (v120 << 7);
        v124 = *(v123 + 8);
        v368.i64[0] = v124;
        if (!*buf || (v125 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v124 ^ (v124 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v124 ^ (v124 >> 30))) >> 27)), v126 = *(*&buf[8] + 4 * ((v125 ^ (v125 >> 31)) % v378.u32[2])), v126 == 0x7FFFFFFF))
        {
LABEL_245:
          v127 = *(v123 + 48);
          if (v127)
          {
            v128 = 0;
            v129 = *(v123 + 32);
            while (1)
            {
              v130 = *v129;
              v129 += 48;
              if (v130 < 0)
              {
                break;
              }

              if (v127 == ++v128)
              {
                LODWORD(v128) = *(v123 + 48);
                break;
              }
            }
          }

          else
          {
            LODWORD(v128) = 0;
          }

          if (v128 != v127)
          {
            v131 = *(v123 + 48);
            do
            {
              v132 = *(v123 + 32) + 192 * v128;
              if (*(v132 + 92))
              {
                re::ecs2::UISorter::update((v132 + 16), v4, 0, 0);
                v131 = *(v123 + 48);
              }

              if (v131 <= v128 + 1)
              {
                v133 = v128 + 1;
              }

              else
              {
                v133 = v131;
              }

              while (v133 - 1 != v128)
              {
                LODWORD(v128) = v128 + 1;
                if ((*(*(v123 + 32) + 192 * v128) & 0x80000000) != 0)
                {
                  goto LABEL_262;
                }
              }

              LODWORD(v128) = v133;
LABEL_262:
              ;
            }

            while (v128 != v127);
          }
        }

        else
        {
          while (*(v378.i64[0] + (v126 << 6) + 8) != v124)
          {
            v126 = *(v378.i64[0] + (v126 << 6)) & 0x7FFFFFFF;
            if (v126 == 0x7FFFFFFF)
            {
              goto LABEL_245;
            }
          }

          if (re::UISortingFeatureFlags::enableUISorterByByCodirectionalGroupConfig(void)::onceToken != -1)
          {
            dispatch_once(&re::UISortingFeatureFlags::enableUISorterByByCodirectionalGroupConfig(void)::onceToken, &__block_literal_global_8);
          }

          if (re::UISortingFeatureFlags::gEnableUISorterByCodirectionalGroupConfig == 1 && v368.i64[0] == 0)
          {
            v141 = re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::Entity *>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](buf, &v368);
            v142 = *(v141 + 16);
            v365[0] = *(v141 + 32);
            v365[1] = v142;
            v376[3] = re::globalAllocators(v141)[2];
            v376[0] = &unk_1F5CD8638;
            v376[1] = v2;
            v376[4] = v376;
            re::ecs2::UISorterPerFrameGatherer::filterEntitiesByMappingFunc(&v360, v365, v376, v372);
            re::FunctionBase<24ul,unsigned long long ()(re::ecs2::Entity *)>::destroyCallable(v376);
            v143 = re::HashTable<unsigned long long,re::ecs2::CARESortingManagerV2::SorterCollection,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](v2 + 1792, &re::kDefaultWorldRootId);
            re::ecs2::CARESortingManagerV2::SorterCollection::update(v143, v4, v372);
            re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(v372);
          }

          else
          {
            v136 = re::HashTable<unsigned long long,re::ecs2::CARESortingManagerV2::SorterCollection,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](v2 + 1792, &v368);
            v137 = re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::Entity *>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](buf, &v368);
            v138 = *(v137 + 32);
            v139 = *(v137 + 16);
            re::HashTable<unsigned long long,re::ecs2::UISorter,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v372, v136, 0, 0);
            v140 = v139;
            v2 = v349;
            re::ecs2::UISorter::update((*(v136 + 16) + 192 * HIDWORD(v372[1]) + 16), v4, v138, v140);
          }
        }

        v134 = *(v2 + 1824);
        if (v134 <= v120 + 1)
        {
          v134 = v120 + 1;
        }

        while (v134 - 1 != v120)
        {
          LODWORD(v120) = v120 + 1;
          if ((*(*(v2 + 1808) + (v120 << 7)) & 0x80000000) != 0)
          {
            goto LABEL_269;
          }
        }

        LODWORD(v120) = v134;
LABEL_269:
        ;
      }

      re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(buf);
    }

    else
    {
      v106 = *(v2 + 1824);
      if (v106)
      {
        v107 = 0;
        v108 = *(v2 + 1808);
        while (1)
        {
          v109 = *v108;
          v108 += 32;
          if (v109 < 0)
          {
            break;
          }

          if (v106 == ++v107)
          {
            LODWORD(v107) = *(v2 + 1824);
            break;
          }
        }
      }

      else
      {
        LODWORD(v107) = 0;
      }

      if (v107 != v106)
      {
        v144 = *(v2 + 1824);
        do
        {
          v145 = *(v2 + 1808) + (v107 << 7);
          v146 = *(v145 + 48);
          if (v146)
          {
            v147 = 0;
            v148 = *(v145 + 32);
            while (1)
            {
              v149 = *v148;
              v148 += 48;
              if (v149 < 0)
              {
                break;
              }

              if (v146 == ++v147)
              {
                LODWORD(v147) = *(v145 + 48);
                break;
              }
            }
          }

          else
          {
            LODWORD(v147) = 0;
          }

          v150 = *(v145 + 48);
          if (v147 != v146)
          {
            do
            {
              v151 = *(v145 + 32) + 192 * v147;
              if (*(v151 + 92))
              {
                v101 = re::ecs2::UISorter::update((v151 + 16), v4, 0, 0);
                v150 = *(v145 + 48);
              }

              if (v150 <= v147 + 1)
              {
                v152 = v147 + 1;
              }

              else
              {
                v152 = v150;
              }

              while (v152 - 1 != v147)
              {
                LODWORD(v147) = v147 + 1;
                if ((*(*(v145 + 32) + 192 * v147) & 0x80000000) != 0)
                {
                  goto LABEL_298;
                }
              }

              LODWORD(v147) = v152;
LABEL_298:
              ;
            }

            while (v147 != v146);
            v144 = *(v2 + 1824);
          }

          if (v144 <= v107 + 1)
          {
            v153 = v107 + 1;
          }

          else
          {
            v153 = v144;
          }

          while (v153 - 1 != v107)
          {
            LODWORD(v107) = v107 + 1;
            if ((*(*(v2 + 1808) + (v107 << 7)) & 0x80000000) != 0)
            {
              goto LABEL_307;
            }
          }

          LODWORD(v107) = v153;
LABEL_307:
          ;
        }

        while (v107 != v106);
      }
    }

    if (*(v2 + 1848))
    {
      v154 = *(*(v2 + 1856) + 80);
      if (v154)
      {
        if (re::CARESortingDefaults::enableDrawLayerSortingGroups(void)::onceToken != -1)
        {
          dispatch_once(&re::CARESortingDefaults::enableDrawLayerSortingGroups(void)::onceToken, &__block_literal_global_12);
        }

        if (re::gEnableDrawLayerSortingGroups == 1)
        {
          v155 = (v354 + 1452);
          v156 = *(v2 + 1888);
          if (!v156)
          {
            goto LABEL_328;
          }

          v157 = atomic_load((v156 + 896));
          if (v157 == 2)
          {
            re::makeFontID((v354 + 1452), &v371);
            if (re::CARESortingDefaults::enableDrawLayerSortingGroups(void)::onceToken != -1)
            {
              dispatch_once(&re::CARESortingDefaults::enableDrawLayerSortingGroups(void)::onceToken, &__block_literal_global_12);
            }

            if (re::gEnableDrawLayerSortingGroups == 1)
            {
              v335 = *(v349 + 1824);
              if (v335)
              {
                v159 = 0;
                v160 = *(v349 + 1808);
                while (1)
                {
                  v161 = *v160;
                  v160 += 32;
                  if (v161 < 0)
                  {
                    break;
                  }

                  if (v335 == ++v159)
                  {
                    LODWORD(v159) = *(v349 + 1824);
                    break;
                  }
                }

                v162 = v159;
              }

              else
              {
                v162 = 0;
              }

              if (v162 != v335)
              {
                v166 = xmmword_1E3047670;
                v167 = xmmword_1E3047680;
                v168 = xmmword_1E30476A0;
                v169.i64[1] = 0x3F80000000000000;
                v169.i64[0] = COERCE_UNSIGNED_INT(1.0);
                v339 = v169;
                v169.i32[0] = 0;
                v169.i32[1] = 1.0;
                v338 = v169;
                v170 = *(v349 + 1824);
                v350 = v154;
                do
                {
                  v171 = *(v349 + 1808) + (v162 << 7);
                  v341 = v171;
                  v336 = v162;
                  v337 = *(v171 + 48);
                  if (v337)
                  {
                    v172 = 0;
                    v173 = *(v171 + 32);
                    while (1)
                    {
                      v174 = *v173;
                      v173 += 48;
                      if (v174 < 0)
                      {
                        break;
                      }

                      if (v337 == ++v172)
                      {
                        LODWORD(v172) = v337;
                        break;
                      }
                    }

                    v171 = *(v349 + 1808) + (v162 << 7);
                  }

                  else
                  {
                    LODWORD(v172) = 0;
                  }

                  if (v172 != v337)
                  {
                    do
                    {
                      v175 = *(v171 + 32) + 192 * v172;
                      v357 = *(v175 + 48);
                      if (v357)
                      {
                        v176 = 0;
                        v177 = (*(v175 + 32) + 8);
                        while (1)
                        {
                          v178 = *v177;
                          v177 += 6;
                          if (v178 < 0)
                          {
                            break;
                          }

                          if (v357 == ++v176)
                          {
                            LODWORD(v176) = *(v175 + 48);
                            break;
                          }
                        }
                      }

                      else
                      {
                        LODWORD(v176) = 0;
                      }

                      v179 = *(v175 + 48);
                      v343 = v172;
                      v344 = *(v171 + 32) + 192 * v172;
                      while (v176 != v357)
                      {
                        v180 = *(v175 + 32) + 24 * v176;
                        v182 = *(v180 + 16);
                        v181 = (v180 + 16);
                        *v167.f64 = ((((v182[32] + v182[33]) + v182[34]) + v182[28]) + v182[29]) + v182[30];
                        *v167.f64 = fminf(*v167.f64 - floorf(*v167.f64), 1.0);
                        *v169.i32 = *v167.f64 - truncf(*v167.f64);
                        v186.i64[0] = 0x8000000080000000;
                        v186.i64[1] = 0x8000000080000000;
                        v185 = vbslq_s8(v186, v169, v167);
                        *v185.i32 = *v185.i32 / 0.16667;
                        v183 = *v185.i32;
                        v184 = *v185.i32 - *v185.i32;
                        *v185.i32 = 1.0 - v184;
                        *v186.i32 = 1.0 - (1.0 - v184);
                        if (v183 <= 1)
                        {
                          if (v183)
                          {
                            if (v183 != 1)
                            {
                              goto LABEL_361;
                            }

                            v185.i32[1] = 1.0;
                            v185.i32[2] = 0;
                            *v365 = v185;
                            v188 = 0.5;
                            *v185.i32 = ((v184 * -0.5) + 1.0) * 0.5;
                          }

                          else
                          {
                            v169.i64[0] = __PAIR64__(v186.u32[0], 1.0);
                            v169.i32[2] = 0;
                            *v365 = v169;
                            v191 = (*v185.i32 * -0.5) + 1.0;
                            v185.i32[0] = 0.5;
                            v188 = v191 * 0.5;
                          }

                          v187 = 0.25;
                        }

                        else
                        {
                          if (v183 == 2)
                          {
                            v189 = v338;
                            v189.i32[2] = v186.i32[0];
                            *v365 = v189;
                            v188 = 0.5;
                            v187 = ((*v185.i32 * -0.5) + 1.0) * 0.5;
                          }

                          else
                          {
                            if (v183 != 3)
                            {
                              if (v183 == 4)
                              {
                                v186.i32[1] = 0;
                                v186.i32[2] = 1.0;
                                *v365 = v186;
                                v187 = 0.5;
                                *v185.i32 = ((*v185.i32 * -0.5) + 1.0) * 0.5;
                              }

                              else
                              {
LABEL_361:
                                v192 = v339;
                                *&v192.i32[2] = 1.0 - v184;
                                *v365 = v192;
                                v185.i32[0] = 0.5;
                                v187 = ((v184 * -0.5) + 1.0) * 0.5;
                              }

                              v188 = 0.25;
                              goto LABEL_363;
                            }

                            v186.i32[0] = 0;
                            *&v186.i32[1] = 1.0 - v184;
                            v186.i32[2] = 1.0;
                            *v365 = v186;
                            v190 = (v184 * -0.5) + 1.0;
                            v187 = 0.5;
                            v188 = v190 * 0.5;
                          }

                          v185.i32[0] = 0.25;
                        }

LABEL_363:
                        *&v185.i32[1] = v188;
                        *&v185.i32[2] = v187;
                        v368 = v185;
                        v193 = v181;
                        v194 = *v181;
                        v195 = (*v181)[3].u32[2];
                        if (v195)
                        {
                          v196 = 0;
                          v197 = (v194[2].i64[1] + 8);
                          while (1)
                          {
                            v198 = *v197;
                            v197 += 6;
                            if (v198 < 0)
                            {
                              break;
                            }

                            if (v195 == ++v196)
                            {
                              LODWORD(v196) = (*v181)[3].i32[2];
                              break;
                            }
                          }
                        }

                        else
                        {
                          LODWORD(v196) = 0;
                        }

                        if (v196 != v195)
                        {
                          do
                          {
                            v199 = *(v194[2].i64[1] + 24 * v196 + 16);
                            v200 = re::ecs2::EntityComponentCollection::get((v199 + 6), re::ecs2::ComponentImpl<re::ecs2::MeshSortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
                            if (v200)
                            {
                              v201 = v200;
                              re::TransformService::worldTransform(*(v349 + 1872), v199, 0, v372);
                              *buf = v374;
                              v378 = v201[20];
                              v379 = v368;
                              LODWORD(v380) = 1065353216;
                              re::DynamicArray<re::RigTransform>::add((v350 + 2), buf);
                              v202 = re::ecs2::EntityComponentCollection::get((v199 + 6), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
                              if (v202)
                              {
                                v203 = vcgtq_f32(*(v202 + 48), *(v202 + 64));
                                v203.i32[3] = v203.i32[2];
                                if ((vmaxvq_u32(v203) & 0x80000000) != 0)
                                {
                                  v205 = *(v202 + 32);
                                  v206.i64[0] = 0xBF000000BF000000;
                                  v206.i64[1] = 0xBF000000BF000000;
                                  v207.i64[0] = 0x3F0000003F000000;
                                  v207.i64[1] = 0x3F0000003F000000;
                                  v378 = vmulq_f32(v205, v206);
                                  v379 = vmulq_f32(v205, v207);
                                }

                                else
                                {
                                  v204 = *(v202 + 64);
                                  v378 = *(v202 + 48);
                                  v379 = v204;
                                }

                                buf[0] = 1;
                                v208 = re::ecs2::UISorterTransformCache::getOrRecomputeWorldMatrixAndInverse(v345, v199);
                                re::DebugRenderer::drawBox(v350, v208, v378.f32, &v368, 1);
                              }
                            }

                            v209 = v194[3].u32[2];
                            if (v209 <= v196 + 1)
                            {
                              v209 = v196 + 1;
                            }

                            while (v209 - 1 != v196)
                            {
                              LODWORD(v196) = v196 + 1;
                              if ((*(v194[2].i64[1] + 24 * v196 + 8) & 0x80000000) != 0)
                              {
                                goto LABEL_382;
                              }
                            }

                            LODWORD(v196) = v209;
LABEL_382:
                            ;
                          }

                          while (v196 != v195);
                          v194 = *v193;
                        }

                        v210 = v194[8];
                        v211 = vsubq_f32(v210, v194[7]);
                        v212 = vmulq_f32(v211, v211);
                        *&v213 = v212.f32[2] + vaddv_f32(*v212.f32);
                        *v212.f32 = vrsqrte_f32(v213);
                        *v212.f32 = vmul_f32(*v212.f32, vrsqrts_f32(v213, vmul_f32(*v212.f32, *v212.f32)));
                        v214 = vmulq_n_f32(v211, vmul_f32(*v212.f32, vrsqrts_f32(v213, vmul_f32(*v212.f32, *v212.f32))).f32[0]);
                        v215 = vextq_s8(vuzp1q_s32(v214, v214), v214, 0xCuLL);
                        v216 = vmlaq_f32(vmulq_f32(v215, xmmword_1E30661D0), xmmword_1E30476A0, v214);
                        v217 = vextq_s8(vuzp1q_s32(v216, v216), v216, 0xCuLL);
                        v218 = vmulq_f32(v216, v216);
                        *&v219 = v218.f32[1] + (v218.f32[2] + v218.f32[0]);
                        *v218.f32 = vrsqrte_f32(v219);
                        *v218.f32 = vmul_f32(*v218.f32, vrsqrts_f32(v219, vmul_f32(*v218.f32, *v218.f32)));
                        v220 = vmulq_n_f32(v217, vmul_f32(*v218.f32, vrsqrts_f32(v219, vmul_f32(*v218.f32, *v218.f32))).f32[0]);
                        v221 = v220.f32[1];
                        v222 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v220, v220), v220, 0xCuLL), vnegq_f32(v214)), v220, v215);
                        v223 = v214.f32[2] + vaddq_f32(v220, v222).f32[0];
                        if (v223 >= 0.0)
                        {
                          v224 = 1.0;
                          v222.f32[0] = sqrtf(v223 + 1.0);
                          v220.f32[0] = v222.f32[0] + v222.f32[0];
                          v228 = vrecpe_f32(COERCE_UNSIGNED_INT(v222.f32[0] + v222.f32[0]));
                          v229 = vmul_f32(v228, vrecps_f32(COERCE_UNSIGNED_INT(v222.f32[0] + v222.f32[0]), v228));
                          v230 = vmul_f32(v229, vrecps_f32(COERCE_UNSIGNED_INT(v222.f32[0] + v222.f32[0]), v229)).f32[0];
                          v222.f32[0] = (v222.f32[1] - v214.f32[1]) * v230;
                          v225 = (v214.f32[0] - v220.f32[2]) * v230;
                          v226 = (v220.f32[1] - v222.f32[2]) * v230;
                          v227 = v220.f32[0] * 0.25;
                        }

                        else if (v220.f32[0] < v214.f32[2] || (vmovn_s32(vmvnq_s8(vcgeq_f32(v220, v222))).u8[0] & 1) != 0)
                        {
                          v224 = 1.0;
                          v220.f32[0] = 1.0 - v220.f32[0];
                          v231 = v222.f32[0] < v214.f32[2];
                          v232 = sqrtf(v214.f32[2] + (v220.f32[0] - v222.f32[0]));
                          *&v233 = v232 + v232;
                          v234 = vrecpe_f32(v233);
                          v235 = vmul_f32(v234, vrecps_f32(v233, v234));
                          v236 = vmul_f32(v235, vrecps_f32(v233, v235)).f32[0];
                          v237 = (v214.f32[0] + v220.f32[2]) * v236;
                          v238 = (v214.f32[1] + v222.f32[1]) * v236;
                          v239 = *&v233 * 0.25;
                          v240 = (v220.f32[1] - v222.f32[2]) * v236;
                          v222.f32[0] = sqrtf((v220.f32[0] - v214.f32[2]) + v222.f32[0]);
                          v222.f32[0] = v222.f32[0] + v222.f32[0];
                          *v220.f32 = vrecpe_f32(v222.u32[0]);
                          *v220.f32 = vmul_f32(*v220.f32, vrecps_f32(v222.u32[0], *v220.f32));
                          v241 = vmul_f32(*v220.f32, vrecps_f32(v222.u32[0], *v220.f32)).f32[0];
                          v242 = (v221 + v222.f32[2]) * v241;
                          v243 = v222.f32[0] * 0.25;
                          v244 = (v214.f32[1] + v222.f32[1]) * v241;
                          v227 = (v214.f32[0] - v220.f32[2]) * v241;
                          if (v231)
                          {
                            v222.f32[0] = v237;
                          }

                          else
                          {
                            v222.f32[0] = v242;
                          }

                          if (v231)
                          {
                            v225 = v238;
                          }

                          else
                          {
                            v225 = v243;
                          }

                          if (v231)
                          {
                            v226 = v239;
                          }

                          else
                          {
                            v226 = v244;
                          }

                          if (v231)
                          {
                            v227 = v240;
                          }
                        }

                        else
                        {
                          v224 = 1.0;
                          v222.f32[0] = sqrtf(v220.f32[0] + ((1.0 - v222.f32[0]) - v214.f32[2]));
                          v222.f32[0] = v222.f32[0] + v222.f32[0];
                          *v220.f32 = vrecpe_f32(v222.u32[0]);
                          *v220.f32 = vmul_f32(*v220.f32, vrecps_f32(v222.u32[0], *v220.f32));
                          v220.f32[0] = vmul_f32(*v220.f32, vrecps_f32(v222.u32[0], *v220.f32)).f32[0];
                          v222.f32[0] = v222.f32[0] * 0.25;
                          v225 = (v221 + v222.f32[2]) * v220.f32[0];
                          v226 = (v214.f32[0] + v220.f32[2]) * v220.f32[0];
                          v227 = (v222.f32[1] - v214.f32[1]) * v220.f32[0];
                        }

                        v245 = v222.f32[0] + v222.f32[0];
                        v246 = v225 + v225;
                        v247 = v226 + v226;
                        v248 = v222.f32[0] * (v222.f32[0] + v222.f32[0]);
                        v249 = v225 * (v225 + v225);
                        v250 = v226 * (v226 + v226);
                        v251 = v245 * v225;
                        v252 = v245 * v226;
                        v253 = v246 * v226;
                        v254 = v246 * v227;
                        v255 = v247 * v227;
                        HIDWORD(v256) = 0;
                        *&v256 = v224 - (v249 + v250);
                        *(&v256 + 1) = v251 + v255;
                        *(&v256 + 2) = v252 - v254;
                        v257 = v245 * v227;
                        v258.i32[3] = 0;
                        v258.i64[0] = __PAIR64__(v224 - (v248 + v250), v251 - v255);
                        v258.f32[2] = v253 + v257;
                        v259.i32[3] = 0;
                        v259.f32[0] = v252 + v254;
                        v259.f32[1] = v253 - v257;
                        v259.f32[2] = v224 - (v248 + v249);
                        *buf = v256;
                        v378 = v258;
                        v210.f32[3] = v224;
                        v379 = v259;
                        v380 = v210;
                        re::DebugRenderer::drawSphere(v350, buf, 32, v365, 1, 0.03);
                        v260 = *v193 + 8;
                        *buf = vaddq_f32(*v260, vmulq_f32((*v193)[7], vdupq_n_s32(0x3E4CCCCDu)));
                        v158 = re::DebugRenderer::drawArrow(v350, v260, buf, v365, 1, 0.015);
                        LODWORD(v172) = v343;
                        v175 = v344;
                        v179 = *(v344 + 48);
                        if (v179 <= v176 + 1)
                        {
                          v261 = v176 + 1;
                        }

                        else
                        {
                          v261 = *(v344 + 48);
                        }

                        v168 = xmmword_1E30476A0;
                        v166 = xmmword_1E3047670;
                        while (v261 - 1 != v176)
                        {
                          LODWORD(v176) = v176 + 1;
                          if ((*(*(v344 + 32) + 24 * v176 + 8) & 0x80000000) != 0)
                          {
                            goto LABEL_408;
                          }
                        }

                        LODWORD(v176) = v261;
LABEL_408:
                        ;
                      }

                      if (v179)
                      {
                        v262 = 0;
                        v263 = (*(v175 + 32) + 8);
                        while (1)
                        {
                          v264 = *v263;
                          v263 += 6;
                          if (v264 < 0)
                          {
                            break;
                          }

                          if (v179 == ++v262)
                          {
                            LODWORD(v262) = v179;
                            break;
                          }
                        }
                      }

                      else
                      {
                        LODWORD(v262) = 0;
                      }

                      if (v262 != v179)
                      {
                        v265 = v179;
                        v266 = 1;
                        v340 = v179;
                        do
                        {
                          v342 = v262;
                          v267 = *(*(v175 + 32) + 24 * v262 + 16);
                          v347 = *(v267 + 232);
                          if (v347)
                          {
                            v268 = 0;
                            v269 = (*(v267 + 216) + 8);
                            while (1)
                            {
                              v270 = *v269;
                              v269 += 6;
                              if (v270 < 0)
                              {
                                break;
                              }

                              if (v347 == ++v268)
                              {
                                LODWORD(v268) = *(v267 + 232);
                                break;
                              }
                            }
                          }

                          else
                          {
                            LODWORD(v268) = 0;
                          }

                          if (v268 != v347)
                          {
                            do
                            {
                              v271 = *(v267 + 216) + 24 * v268;
                              v167 = vcvtq_f64_u64(vandq_s8(vdupq_n_s64(v266), xmmword_1E3049630));
                              *&v167.f64[0] = vcvt_f32_f64(v167);
                              *&v167.f64[1] = (v266 & 4);
                              v370 = v167;
                              v272 = *(v271 + 16);
                              v346 = (v271 + 16);
                              v273 = *(v272 + 304);
                              if (v273)
                              {
                                v274 = 0;
                                v275 = (*(v272 + 288) + 8);
                                while (1)
                                {
                                  v276 = *v275;
                                  v275 += 6;
                                  if (v276 < 0)
                                  {
                                    break;
                                  }

                                  if (v273 == ++v274)
                                  {
                                    LODWORD(v274) = *(v272 + 304);
                                    break;
                                  }
                                }
                              }

                              else
                              {
                                LODWORD(v274) = 0;
                              }

                              v348 = v266;
                              if (v274 != v273)
                              {
                                do
                                {
                                  v277 = *(*(v272 + 288) + 24 * v274 + 16);
                                  v158 = re::ecs2::EntityComponentCollection::get((v277 + 6), re::ecs2::ComponentImpl<re::ecs2::MeshSortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
                                  if (v158)
                                  {
                                    v278 = *(v158 + 40);
                                    re::DynamicString::format("%d\n", &v368, v278);
                                    re::TransformService::worldTransform(*(v349 + 1872), v277, 0, v365);
                                    v279 = vmulq_f32(v366, v366);
                                    v280 = v279.f32[2] + vaddv_f32(*v279.f32);
                                    v281 = 0uLL;
                                    if (fabsf(v280) >= 1.0e-10)
                                    {
                                      v282 = v280;
                                      v283 = vrsqrte_f32(LODWORD(v280));
                                      v284 = vmul_f32(v283, vrsqrts_f32(LODWORD(v282), vmul_f32(v283, v283)));
                                      v281 = vmulq_n_f32(v366, vmul_f32(v284, vrsqrts_f32(LODWORD(v282), vmul_f32(v284, v284))).f32[0]);
                                    }

                                    v358 = v367;
                                    v285 = *&v365[1];
                                    v286 = v366.f32[3];
                                    v287 = fabsf(v366.f32[3]);
                                    v288 = 1.0;
                                    if (v287 <= 1.0 || (v288 = 1.0, fabsf(v287 + -1.0) < (((v287 + 1.0) + 1.0) * 0.00001)))
                                    {
                                      if (v366.f32[3] > v288)
                                      {
                                        v286 = v288;
                                      }

                                      if (v286 < -1.0)
                                      {
                                        v286 = -1.0;
                                      }

                                      v355 = v281;
                                      v290 = acosf(v286);
                                      v281 = v355;
                                      v289 = v290 + v290;
                                    }

                                    else
                                    {
                                      v289 = NAN;
                                    }

                                    v291 = vmulq_f32(v281, v281);
                                    v292 = v291.f32[2] + vaddv_f32(*v291.f32);
                                    if (fabsf(v292) >= 1.0e-10)
                                    {
                                      v293 = v292;
                                      v294 = vrsqrte_f32(LODWORD(v292));
                                      v295 = vmul_f32(v294, vrsqrts_f32(LODWORD(v293), vmul_f32(v294, v294)));
                                      v281 = vmulq_n_f32(v281, vmul_f32(v295, vrsqrts_f32(LODWORD(v293), vmul_f32(v295, v295))).f32[0]);
                                    }

                                    v353 = v285 * 0.025;
                                    *&v296 = 0;
                                    *(&v296 + 1) = __PAIR64__(1.0, COERCE_UNSIGNED_INT(fminf((v278 * 0.005) + 0.005, 0.05)));
                                    v352 = v296;
                                    v297 = v358;
                                    v297.i32[3] = HIDWORD(v296);
                                    v356 = v281;
                                    v359 = v297;
                                    v351 = vmulq_f32(v281, v281).f32[0];
                                    v298 = vmuls_lane_f32(v281.f32[1], *v281.f32, 1);
                                    v299 = vmuls_lane_f32(v281.f32[2], v281, 2);
                                    v300 = vmuls_lane_f32(v281.f32[0], *v281.f32, 1);
                                    v301 = vmuls_lane_f32(v281.f32[0], v281, 2);
                                    v302 = vmuls_lane_f32(v281.f32[1], v281, 2);
                                    v303 = __sincosf_stret(v289);
                                    v304 = 0;
                                    v305 = vmuls_lane_f32(v303.__sinval, *v356.f32, 1);
                                    v306 = vmuls_lane_f32(v303.__sinval, v356, 2);
                                    HIDWORD(v307) = 0;
                                    *&v307 = v351 + (v303.__cosval * (1.0 - v351));
                                    *(&v307 + 1) = v306 + (v300 * (1.0 - v303.__cosval));
                                    *(&v307 + 2) = -(v305 - (v301 * (1.0 - v303.__cosval)));
                                    HIDWORD(v308) = 0;
                                    *&v308 = -(v306 - (v300 * (1.0 - v303.__cosval)));
                                    *(&v308 + 1) = v298 + (v303.__cosval * (1.0 - v298));
                                    *(&v308 + 2) = (v303.__sinval * v356.f32[0]) + (v302 * (1.0 - v303.__cosval));
                                    *&v309 = v305 + (v301 * (1.0 - v303.__cosval));
                                    *(&v309 + 1) = -((v303.__sinval * v356.f32[0]) - (v302 * (1.0 - v303.__cosval)));
                                    *(&v309 + 1) = COERCE_UNSIGNED_INT(v299 + (v303.__cosval * (1.0 - v299)));
                                    *v372 = v307;
                                    v373 = v308;
                                    v374 = v309;
                                    v375 = xmmword_1E30474D0;
                                    do
                                    {
                                      *&buf[v304 * 8] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1E3047670, COERCE_FLOAT(*&v372[v304])), xmmword_1E3047680, v372[v304], 1), xmmword_1E30476A0, *&v372[v304], 2), v359, *&v372[v304], 3);
                                      v304 += 2;
                                    }

                                    while (v304 != 8);
                                    v310 = 0;
                                    v311 = *buf;
                                    v312 = v378;
                                    v313 = v379;
                                    v314 = v380;
                                    *v372 = xmmword_1E3047670;
                                    v373 = xmmword_1E3047680;
                                    v374 = xmmword_1E30476A0;
                                    v375 = v352;
                                    do
                                    {
                                      *&buf[v310 * 8] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v311, COERCE_FLOAT(*&v372[v310])), v312, v372[v310], 1), v313, *&v372[v310], 2), v314, *&v372[v310], 3);
                                      v310 += 2;
                                    }

                                    while (v310 != 8);
                                    v315 = 0;
                                    v316 = *buf;
                                    v317 = v378;
                                    v318 = v379;
                                    v319 = v380;
                                    LODWORD(v320) = 0;
                                    *(&v320 + 1) = v353;
                                    *&v321 = 0;
                                    *(&v321 + 1) = LODWORD(v353);
                                    *v372 = LODWORD(v353);
                                    v373 = v320;
                                    v374 = v321;
                                    v375 = xmmword_1E30474D0;
                                    do
                                    {
                                      *&buf[v315 * 8] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v316, COERCE_FLOAT(*&v372[v315])), v317, v372[v315], 1), v318, *&v372[v315], 2), v319, *&v372[v315], 3);
                                      v315 += 2;
                                    }

                                    while (v315 != 8);
                                    if (v368.i8[8])
                                    {
                                      v322 = v369;
                                    }

                                    else
                                    {
                                      v322 = &v368.i8[9];
                                    }

                                    *&v323 = v370.f64[0];
                                    *(&v323 + 1) = __PAIR64__(1.0, LODWORD(v370.f64[1]));
                                    *v372 = v323;
                                    re::DebugRenderer::drawText(v350, buf, v322, &v371, v372, 0);
                                    v158 = v368.i64[0];
                                    if (v368.i64[0] && (v368.i8[8] & 1) != 0)
                                    {
                                      v158 = (*(*v368.i64[0] + 40))();
                                    }
                                  }

                                  v324 = *(v272 + 304);
                                  if (v324 <= v274 + 1)
                                  {
                                    v324 = v274 + 1;
                                  }

                                  v168 = xmmword_1E30476A0;
                                  v166 = xmmword_1E3047670;
                                  while (v324 - 1 != v274)
                                  {
                                    LODWORD(v274) = v274 + 1;
                                    if ((*(*(v272 + 288) + 24 * v274 + 8) & 0x80000000) != 0)
                                    {
                                      goto LABEL_463;
                                    }
                                  }

                                  LODWORD(v274) = v324;
LABEL_463:
                                  ;
                                }

                                while (v274 != v273);
                                v272 = *v346;
                              }

                              v325 = *(v272 + 56);
                              v169 = xmmword_1E3047680;
                              v326 = 1.0;
                              if (v325)
                              {
                                v327 = *(v272 + 64);
                                v328 = 16 * v325;
                                do
                                {
                                  v329 = *v327++;
                                  v330 = v329;
                                  *buf = v166;
                                  v378 = v169;
                                  *(&v330 + 3) = v326;
                                  v379 = v168;
                                  v380 = v330;
                                  re::DebugRenderer::drawSphere(v350, buf, 4, &v370, 1, 0.01);
                                  v326 = 1.0;
                                  v169 = xmmword_1E3047680;
                                  v168 = xmmword_1E30476A0;
                                  v166 = xmmword_1E3047670;
                                  v328 -= 16;
                                }

                                while (v328);
                              }

                              v266 = v348 + 1;
                              v331 = *(v267 + 232);
                              if (v331 <= v268 + 1)
                              {
                                v331 = v268 + 1;
                              }

                              while (v331 - 1 != v268)
                              {
                                LODWORD(v268) = v268 + 1;
                                if ((*(*(v267 + 216) + 24 * v268 + 8) & 0x80000000) != 0)
                                {
                                  goto LABEL_474;
                                }
                              }

                              LODWORD(v268) = v331;
LABEL_474:
                              ;
                            }

                            while (v268 != v347);
                            v265 = *(v344 + 48);
                          }

                          LODWORD(v262) = v342;
                          LODWORD(v172) = v343;
                          if (v265 <= v342 + 1)
                          {
                            v332 = v342 + 1;
                          }

                          else
                          {
                            v332 = v265;
                          }

                          v175 = v344;
                          while (v332 - 1 != v262)
                          {
                            LODWORD(v262) = v262 + 1;
                            if ((*(*(v344 + 32) + 24 * v262 + 8) & 0x80000000) != 0)
                            {
                              goto LABEL_484;
                            }
                          }

                          LODWORD(v262) = v332;
LABEL_484:
                          ;
                        }

                        while (v262 != v340);
                      }

                      v333 = *(v341 + 48);
                      if (v333 <= v172 + 1)
                      {
                        v333 = v172 + 1;
                      }

                      while (v333 - 1 != v172)
                      {
                        LODWORD(v172) = v172 + 1;
                        if ((*(*(v341 + 32) + 192 * v172) & 0x80000000) != 0)
                        {
                          goto LABEL_491;
                        }
                      }

                      LODWORD(v172) = v333;
LABEL_491:
                      v171 = v341;
                    }

                    while (v172 != v337);
                    v170 = *(v349 + 1824);
                  }

                  v162 = v336;
                  if (v170 <= v336 + 1)
                  {
                    v334 = v336 + 1;
                  }

                  else
                  {
                    v334 = v170;
                  }

                  while (v334 - 1 != v162)
                  {
                    if ((*(*(v349 + 1808) + (++v162 << 7)) & 0x80000000) != 0)
                    {
                      goto LABEL_500;
                    }
                  }

                  v162 = v334;
LABEL_500:
                  ;
                }

                while (v162 != v335);
              }
            }

            if (*&v371.var0)
            {
              if (*&v371.var0)
              {
              }
            }

            v2 = v349;
            goto LABEL_505;
          }

          if (!*(v2 + 1888))
          {
LABEL_328:
            (*(**(v2 + 1848) + 8))(buf);
            v164 = *v155;
            *(v2 + 1880) = *buf;
            *buf = v164;
            v165 = *(v2 + 1896);
            *(v2 + 1896) = v378.i64[0];
            v378.i64[0] = v165;
            re::AssetHandle::~AssetHandle(buf);
          }

          re::AssetHandle::loadAsync(v155);
        }
      }
    }

    else if ((atomic_exchange(re::ecs2::CARESortingManagerV2::drawDebug(re::Slice<re::SharedPtr<re::ecs2::Scene>> const&)::__FILE____LINE___logged, 1u) & 1) == 0)
    {
      v163 = *re::sortingLogObjects(v101);
      if (os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E1C61000, v163, OS_LOG_TYPE_DEFAULT, "No AssetService found, CARE sorting debug drawing will not be performed.", buf, 2u);
      }
    }

LABEL_505:
    re::ecs2::CARESortingDebuggingV2::m_entitiesActivated = 0;
    re::ecs2::CARESortingDebuggingV2::m_entitiesDeactivated = 0;
    re::ecs2::CARESortingDebuggingV2::m_uiSortingComponentActivated = 0;
    re::ecs2::CARESortingDebuggingV2::m_uiSortingComponentDeactivated = 0;
    re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::clear(v2 + 200);
    re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::clear(v2 + 248);
    re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::clear(v2 + 296);
    re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::clear(v2 + 104);
    re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::clear(v2 + 152);
    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v360);
  }
}

uint64_t re::ecs2::CARESortingManagerV2::SorterCollection::update(uint64_t result, re::Allocator *a2, uint64_t a3)
{
  v3 = a3;
  v4 = result;
  v5 = *(result + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(result + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 48;
      if (v8 < 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = *(result + 32);
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
    v9 = 0xBF58476D1CE4E5B9;
    v10 = 0x94D049BB133111EBLL;
    v24 = *(result + 32);
    while (1)
    {
      v11 = *(v4 + 16) + 192 * v6;
      v13 = *(v11 + 8);
      v12 = v11 + 8;
      v14 = (((v13 ^ (v13 >> 30)) * v9) ^ (((v13 ^ (v13 >> 30)) * v9) >> 27)) * v10;
      result = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v3, v12, v14 ^ (v14 >> 31), &v26);
      if (v27 != 0x7FFFFFFF)
      {
        break;
      }

      if (*(v12 + 84))
      {
        v15 = 0;
        v16 = 0;
LABEL_18:
        result = re::ecs2::UISorter::update((v12 + 8), a2, v15, v16);
      }

      v22 = *(v4 + 32);
      if (v22 <= v6 + 1)
      {
        v22 = v6 + 1;
      }

      while (v22 - 1 != v6)
      {
        LODWORD(v6) = v6 + 1;
        if ((*(*(v4 + 16) + 192 * v6) & 0x80000000) != 0)
        {
          goto LABEL_25;
        }
      }

      LODWORD(v6) = v22;
LABEL_25:
      if (v6 == v5)
      {
        return result;
      }
    }

    v17 = v10;
    v18 = *(v3 + 16) + (v27 << 6);
    v15 = *(v18 + 48);
    v19 = *(v18 + 32);
    if (v19)
    {
      v5 = v9;
      v20 = 8 * v19;
      do
      {
        v21 = *v15++;
        v26 = *(v21 + 39);
        re::HashTable<unsigned long long,unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v4 + 48, &v26, v12);
        v20 -= 8;
      }

      while (v20);
      v15 = *(v18 + 48);
      v16 = *(v18 + 32);
      v9 = v5;
      v3 = a3;
      LODWORD(v5) = v24;
    }

    else
    {
      v16 = 0;
    }

    v10 = v17;
    goto LABEL_18;
  }

  return result;
}

void re::HashTable<unsigned long long,re::ecs2::UISorter,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 192 * v10, 16);
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

uint64_t re::HashTable<unsigned long long,re::ecs2::UISorter,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(uint64_t a1, unint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<unsigned long long,re::ecs2::UISorter,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v5, a1, a2, v3 ^ (v3 >> 31));
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 192 * v6 + 16;
  }
}

double re::HashTable<unsigned long long,re::ecs2::UISorter,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryEmplace<re::ecs2::UISorterConfiguration const&>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::ecs2::UISorter,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v10, a1, *a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31));
  if (HIDWORD(v11) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<unsigned long long,re::ecs2::UISorter,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v11, v10);
    *(v8 + 8) = *a2;
    *(v8 + 48) = 0;
    result = 0.0;
    *(v8 + 16) = 0u;
    *(v8 + 32) = 0u;
    *(v8 + 52) = 0x7FFFFFFFLL;
    *(v8 + 96) = 0;
    *(v8 + 64) = 0u;
    *(v8 + 80) = 0u;
    *(v8 + 100) = 0x7FFFFFFFLL;
    *(v8 + 112) = 0u;
    *(v8 + 128) = 0u;
    *(v8 + 144) = 0;
    *(v8 + 148) = 0x7FFFFFFFLL;
    v9 = *a3;
    *(v8 + 160) = *a3;
    *(v8 + 168) = v9;
    *(v8 + 176) = *(a3 + 8);
    ++*(a1 + 40);
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(uint64_t a1, void *a2, void *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v9);
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 32 * HIDWORD(v10) + 16;
  }

  v7 = re::HashTable<unsigned long long,unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v10, v9);
  *(v7 + 8) = *a2;
  *(v7 + 16) = *a3;
  result = v7 + 16;
  ++*(a1 + 40);
  return result;
}

uint64_t re::ecs2::CARESortingManagerV2::registerScene(re::ecs2::CARESortingManagerV2 *this, re::EventBus **a2)
{
  v187[3] = *MEMORY[0x1E69E9840];
  v129 = a2;
  v2 = a2[36];
  if (!v2)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) An event bus is expected for this system to track mesh sorting changes.", "eventBus", "registerScene", 726);
    _os_crash();
    __break(1u);
  }

  v123[0] = 0;
  v123[1] = 0;
  v124 = 1;
  v126 = 0;
  v127 = 0;
  v125 = 0;
  v128 = 0;
  v5 = 0;
  v187[0] = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
  v187[1] = re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v187[2] = re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  do
  {
    v6 = v187[v5];
    v185 = re::globalAllocators(v4)[2];
    v186 = 0;
    v7 = (*(*v185 + 32))(v185, 32, 0);
    *v7 = &unk_1F5CD86A0;
    v7[1] = this;
    v7[2] = re::ecs2::CARESortingManagerV2::invalidateEntityEventHandler<REComponentDidChangeEvent>;
    v7[3] = 0;
    v186 = v7;
    v8 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v2, v184, v6, 0);
    v10 = v9;
    v11 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v123);
    *v11 = v8;
    v11[1] = v10;
    v12 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v184);
    v182 = re::globalAllocators(v12)[2];
    v183 = 0;
    v13 = (*(*v182 + 32))(v182, 32, 0);
    *v13 = &unk_1F5CD86F8;
    v13[1] = this;
    v13[2] = re::ecs2::CARESortingManagerV2::invalidateEntityEventHandler<REComponentDidAddEvent>;
    v13[3] = 0;
    v183 = v13;
    v14 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v2, v181, v6, 0);
    v16 = v15;
    v17 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v123);
    *v17 = v14;
    v17[1] = v16;
    v18 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v181);
    v179 = re::globalAllocators(v18)[2];
    v180 = 0;
    v19 = (*(*v179 + 32))(v179, 32, 0);
    *v19 = &unk_1F5CD8750;
    v19[1] = this;
    v19[2] = re::ecs2::CARESortingManagerV2::invalidateEntityEventHandler<REComponentWillRemoveEvent>;
    v19[3] = 0;
    v180 = v19;
    v20 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillRemoveEvent>(v2, v178, v6, 0);
    v22 = v21;
    v23 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v123);
    *v23 = v20;
    v23[1] = v22;
    v4 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::destroyCallable(v178);
    ++v5;
  }

  while (v5 != 3);
  v24 = re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v176 = re::globalAllocators(v4)[2];
  v25 = (*(*v176 + 32))(v176, 32, 0);
  *v25 = &unk_1F5CD86A0;
  v25[1] = this;
  v25[2] = re::ecs2::CARESortingManagerV2::invalidateTransformEventHandler<REComponentDidChangeEvent>;
  v25[3] = 0;
  v177 = v25;
  v26 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v2, v175, v24, 0);
  v28 = v27;
  v29 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v123);
  *v29 = v26;
  v29[1] = v28;
  v30 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v175);
  v173 = re::globalAllocators(v30)[2];
  v31 = (*(*v173 + 32))(v173, 32, 0);
  *v31 = &unk_1F5CD86F8;
  v31[1] = this;
  v31[2] = re::ecs2::CARESortingManagerV2::invalidateTransformEventHandler<REComponentDidAddEvent>;
  v31[3] = 0;
  v174 = v31;
  v32 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v2, v172, v24, 0);
  v34 = v33;
  v35 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v123);
  *v35 = v32;
  v35[1] = v34;
  v36 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v172);
  v170 = re::globalAllocators(v36)[2];
  v37 = (*(*v170 + 32))(v170, 32, 0);
  *v37 = &unk_1F5CD8750;
  v37[1] = this;
  v37[2] = re::ecs2::CARESortingManagerV2::invalidateTransformEventHandler<REComponentWillRemoveEvent>;
  v37[3] = 0;
  v171 = v37;
  v38 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillRemoveEvent>(v2, v169, v24, 0);
  v40 = v39;
  v41 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v123);
  *v41 = v38;
  v41[1] = v40;
  v42 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::destroyCallable(v169);
  v167 = re::globalAllocators(v42)[2];
  v43 = (*(*v167 + 32))(v167, 32, 0);
  *v43 = &unk_1F5CD87A8;
  v43[1] = this;
  v43[2] = re::ecs2::CARESortingManagerV2::invalidateTransformEventHandler<REBillboardTransformChangedEvent>;
  v43[3] = 0;
  v168 = v43;
  v44 = re::EventBus::subscribe<re::ecs2::Entity,REBillboardTransformChangedEvent>(v2, v166, 0, 0);
  v46 = v45;
  v47 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v123);
  *v47 = v44;
  v47[1] = v46;
  v48 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REBillboardTransformChangedEvent const&)>::destroyCallable(v166);
  v49 = re::ecs2::ComponentImpl<re::ecs2::AnchorComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v164 = re::globalAllocators(v48)[2];
  v50 = (*(*v164 + 32))(v164, 32, 0);
  *v50 = &unk_1F5CD86A0;
  v50[1] = this;
  v50[2] = re::ecs2::CARESortingManagerV2::invalidateAnchorEventHandler<REComponentDidChangeEvent>;
  v50[3] = 0;
  v165 = v50;
  v51 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v2, v163, v49, 0);
  v53 = v52;
  v54 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v123);
  *v54 = v51;
  v54[1] = v53;
  v55 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v163);
  v161 = re::globalAllocators(v55)[2];
  v56 = (*(*v161 + 32))(v161, 32, 0);
  *v56 = &unk_1F5CD86F8;
  v56[1] = this;
  v56[2] = re::ecs2::CARESortingManagerV2::invalidateAnchorEventHandler<REComponentDidAddEvent>;
  v56[3] = 0;
  v162 = v56;
  v57 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v2, v160, v49, 0);
  v59 = v58;
  v60 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v123);
  *v60 = v57;
  v60[1] = v59;
  v61 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v160);
  v158 = re::globalAllocators(v61)[2];
  v62 = (*(*v158 + 32))(v158, 32, 0);
  *v62 = &unk_1F5CD8750;
  v62[1] = this;
  v62[2] = re::ecs2::CARESortingManagerV2::invalidateAnchorEventHandler<REComponentWillRemoveEvent>;
  v62[3] = 0;
  v159 = v62;
  v63 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillRemoveEvent>(v2, v157, v49, 0);
  v65 = v64;
  v66 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v123);
  *v66 = v63;
  v66[1] = v65;
  v67 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::destroyCallable(v157);
  v68 = re::ecs2::ComponentImpl<re::ecs2::MeshSortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v155 = re::globalAllocators(v67)[2];
  v69 = (*(*v155 + 32))(v155, 32, 0);
  *v69 = &unk_1F5CD86F8;
  v69[1] = this;
  v69[2] = re::ecs2::CARESortingManagerV2::meshSortingComponentAddedEventHandler;
  v69[3] = 0;
  v156 = v69;
  v70 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v2, v154, v68, 0);
  v72 = v71;
  v73 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v123);
  *v73 = v70;
  v73[1] = v72;
  v74 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v154);
  v152 = re::globalAllocators(v74)[2];
  v75 = (*(*v152 + 32))(v152, 32, 0);
  *v75 = &unk_1F5CD8750;
  v75[1] = this;
  v75[2] = re::ecs2::CARESortingManagerV2::invalidateEntityEventHandler<REComponentWillRemoveEvent>;
  v75[3] = 0;
  v153 = v75;
  v76 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillRemoveEvent>(v2, v151, v68, 0);
  v78 = v77;
  v79 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v123);
  *v79 = v76;
  v79[1] = v78;
  v80 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::destroyCallable(v151);
  v149 = re::globalAllocators(v80)[2];
  v81 = (*(*v149 + 32))(v149, 32, 0);
  *v81 = &unk_1F5CD8800;
  v81[1] = this;
  v81[2] = re::ecs2::CARESortingManagerV2::didChangeUISortingCASortOrderEventHandler;
  v81[3] = 0;
  v150 = v81;
  v82 = re::EventBus::subscribe<re::ecs2::Entity,re::ecs2::UISortingComponentDidChangeCASortOrderEvent>(v2, v148, 0, 0);
  v84 = v83;
  v85 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v123);
  *v85 = v82;
  v85[1] = v84;
  v86 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCASortOrderEvent const&)>::destroyCallable(v148);
  v146 = re::globalAllocators(v86)[2];
  v87 = (*(*v146 + 32))(v146, 32, 0);
  *v87 = &unk_1F5CD8858;
  v87[1] = this;
  v87[2] = re::ecs2::CARESortingManagerV2::invalidateEntityEventHandler<re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent>;
  v87[3] = 0;
  v147 = v87;
  v88 = re::EventBus::subscribe<re::ecs2::Entity,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent>(v2, v145, 0, 0);
  v90 = v89;
  v91 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v123);
  *v91 = v88;
  v91[1] = v90;
  v92 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent const&)>::destroyCallable(v145);
  v143 = re::globalAllocators(v92)[2];
  v93 = (*(*v143 + 32))(v143, 32, 0);
  *v93 = &unk_1F5CD88B0;
  v93[1] = this;
  v93[2] = re::ecs2::CARESortingManagerV2::invalidateEntityEventHandler<re::ecs2::UISortingComponentDidChangeIsPlatterEvent>;
  v93[3] = 0;
  v144 = v93;
  v94 = re::EventBus::subscribe<re::ecs2::Entity,re::ecs2::UISortingComponentDidChangeIsPlatterEvent>(v2, v142, 0, 0);
  v96 = v95;
  v97 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v123);
  *v97 = v94;
  v97[1] = v96;
  v98 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeIsPlatterEvent const&)>::destroyCallable(v142);
  v140 = re::globalAllocators(v98)[2];
  v99 = (*(*v140 + 32))(v140, 32, 0);
  *v99 = &unk_1F5CD8908;
  v99[1] = this;
  v99[2] = re::ecs2::CARESortingManagerV2::invalidateEntityEventHandler<RESceneEntityDidReparentEvent>;
  v99[3] = 0;
  v141 = v99;
  v100 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidReparentEvent>(v2, v139, 0, 0);
  v102 = v101;
  v103 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v123);
  *v103 = v100;
  v103[1] = v102;
  v104 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::destroyCallable(v139);
  v137 = re::globalAllocators(v104)[2];
  v105 = (*(*v137 + 32))(v137, 32, 0);
  *v105 = &unk_1F5CD8960;
  v105[1] = this;
  v105[2] = re::ecs2::CARESortingManagerV2::activateEntityEventHandler;
  v105[3] = 0;
  v138 = v105;
  v106 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidActivateEvent>(v2, v136, 0, 0);
  v108 = v107;
  v109 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v123);
  *v109 = v106;
  v109[1] = v108;
  v110 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::destroyCallable(v136);
  v134 = re::globalAllocators(v110)[2];
  v111 = (*(*v134 + 32))(v134, 32, 0);
  *v111 = &unk_1F5CD89B8;
  v111[1] = this;
  v111[2] = re::ecs2::CARESortingManagerV2::deactivateOrRemoveEntityEventHandler<RESceneEntityWillDeactivateEvent>;
  v111[3] = 0;
  v135 = v111;
  v112 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityWillDeactivateEvent>(v2, v133, 0, 0);
  v114 = v113;
  v115 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v123);
  *v115 = v112;
  v115[1] = v114;
  v116 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::destroyCallable(v133);
  v131 = re::globalAllocators(v116)[2];
  v117 = (*(*v131 + 32))(v131, 32, 0);
  *v117 = &unk_1F5CD8A10;
  v117[1] = this;
  v117[2] = re::ecs2::CARESortingManagerV2::deactivateOrRemoveEntityEventHandler<RESceneEntityWillRemoveEvent>;
  v117[3] = 0;
  v132 = v117;
  v118 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityWillRemoveEvent>(v2, v130, 0, 0);
  v120 = v119;
  v121 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v123);
  *v121 = v118;
  v121[1] = v120;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::destroyCallable(v130);
  re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::add(this + 8, &v129, v123);
  re::ecs2::UITreeTracker::registerScene(this + 1344, v129);
  re::BucketArray<RESubscriptionHandle,8ul>::deinit(v123);
  result = v123[0];
  if (v123[0])
  {
    if ((v124 & 1) == 0)
    {
      return (*(*v123[0] + 40))();
    }
  }

  return result;
}

uint64_t re::ecs2::CARESortingManagerV2::invalidateTransformEventHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4) && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 152, &v4))
  {
    re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(a1 + 200, &v4);
  }

  return 0;
}

uint64_t re::ecs2::CARESortingManagerV2::invalidateTransformEventHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4) && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 152, &v4))
  {
    re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(a1 + 200, &v4);
  }

  return 0;
}

uint64_t re::ecs2::CARESortingManagerV2::invalidateTransformEventHandler<REComponentWillRemoveEvent>(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4) && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 152, &v4))
  {
    re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(a1 + 200, &v4);
  }

  return 0;
}

uint64_t re::ecs2::CARESortingManagerV2::invalidateTransformEventHandler<REBillboardTransformChangedEvent>(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4) && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 152, &v4))
  {
    re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(a1 + 200, &v4);
  }

  return 0;
}

uint64_t re::ecs2::CARESortingManagerV2::invalidateAnchorEventHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 248, &v4) && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 152, &v4))
  {
    re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(a1 + 248, &v4);
  }

  return 0;
}

uint64_t re::ecs2::CARESortingManagerV2::invalidateAnchorEventHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 248, &v4) && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 152, &v4))
  {
    re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(a1 + 248, &v4);
  }

  return 0;
}

uint64_t re::ecs2::CARESortingManagerV2::invalidateAnchorEventHandler<REComponentWillRemoveEvent>(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 248, &v4) && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 152, &v4))
  {
    re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(a1 + 248, &v4);
  }

  return 0;
}

uint64_t re::ecs2::CARESortingManagerV2::meshSortingComponentAddedEventHandler(re::ecs2::CARESortingManagerV2 *a1, uint64_t a2)
{
  v4 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v4 && *(v4 + 25) != 5 && (*(v4 + 168) & 1) == 0)
  {
    re::ecs2::CARESortingManagerV2::removeEntityFromTracking(a1, a2);
  }

  return 0;
}

uint64_t re::ecs2::CARESortingManagerV2::didChangeUISortingCASortOrderEventHandler(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 296, &v4) && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 152, &v4))
  {
    re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(a1 + 296, &v4);
  }

  return 0;
}

uint64_t re::ecs2::CARESortingManagerV2::activateEntityEventHandler(uint64_t a1, uint64_t a2)
{
  v10 = a2;
  ++re::ecs2::CARESortingDebuggingV2::m_entitiesActivated;
  v3 = *(a2 + 98);
  if (*(a2 + 98))
  {
    v4 = (re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
    v5 = *(a2 + 104);
    v6 = vld1q_dup_s16(v4);
    v7 = 1;
    while (1)
    {
      v8 = vandq_s8(vceqq_s16(v6, *v5), xmmword_1E306AC00);
      v8.i16[0] = vmaxvq_u16(v8);
      if (v8.i32[0])
      {
        break;
      }

      v7 -= 8;
      ++v5;
      if (!--v3)
      {
        goto LABEL_8;
      }
    }

    if (v8.u16[0] - v7 < *(a2 + 96))
    {
      ++re::ecs2::CARESortingDebuggingV2::m_uiSortingComponentActivated;
    }
  }

LABEL_8:
  if ((*(a2 + 387) & 1) == 0)
  {
    re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(a1 + 104, &v10);
    re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(a1 + 200, &v10);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(a1 + 152, &v10);
  }

  return 0;
}

uint64_t re::ecs2::CARESortingManagerV2::deactivateOrRemoveEntityEventHandler<RESceneEntityWillDeactivateEvent>(re::ecs2::CARESortingManagerV2 *a1, uint64_t a2)
{
  ++re::ecs2::CARESortingDebuggingV2::m_entitiesDeactivated;
  v2 = *(a2 + 98);
  if (*(a2 + 98))
  {
    v3 = (re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
    v4 = *(a2 + 104);
    v5 = vld1q_dup_s16(v3);
    v6 = 1;
    while (1)
    {
      v7 = vandq_s8(vceqq_s16(v5, *v4), xmmword_1E306AC00);
      v7.i16[0] = vmaxvq_u16(v7);
      if (v7.i32[0])
      {
        break;
      }

      v6 -= 8;
      ++v4;
      if (!--v2)
      {
        goto LABEL_8;
      }
    }

    if (v7.u16[0] - v6 < *(a2 + 96))
    {
      ++re::ecs2::CARESortingDebuggingV2::m_uiSortingComponentDeactivated;
    }
  }

LABEL_8:
  re::ecs2::CARESortingManagerV2::removeEntityFromTracking(a1, a2);
  return 0;
}

uint64_t re::ecs2::CARESortingManagerV2::deactivateOrRemoveEntityEventHandler<RESceneEntityWillRemoveEvent>(re::ecs2::CARESortingManagerV2 *a1, uint64_t a2)
{
  ++re::ecs2::CARESortingDebuggingV2::m_entitiesDeactivated;
  v2 = *(a2 + 98);
  if (*(a2 + 98))
  {
    v3 = (re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
    v4 = *(a2 + 104);
    v5 = vld1q_dup_s16(v3);
    v6 = 1;
    while (1)
    {
      v7 = vandq_s8(vceqq_s16(v5, *v4), xmmword_1E306AC00);
      v7.i16[0] = vmaxvq_u16(v7);
      if (v7.i32[0])
      {
        break;
      }

      v6 -= 8;
      ++v4;
      if (!--v2)
      {
        goto LABEL_8;
      }
    }

    if (v7.u16[0] - v6 < *(a2 + 96))
    {
      ++re::ecs2::CARESortingDebuggingV2::m_uiSortingComponentDeactivated;
    }
  }

LABEL_8:
  re::ecs2::CARESortingManagerV2::removeEntityFromTracking(a1, a2);
  return 0;
}

uint64_t re::ecs2::CARESortingManagerV2::unregisterScene(re::ecs2::CARESortingManagerV2 *this, re::ecs2::Entity ***a2)
{
  v14 = a2;
  re::ecs2::UITreeTracker::unregisterScene(this + 1344, a2);
  v4 = a2[16];
  if (v4)
  {
    v5 = a2[18];
    v6 = 8 * v4;
    do
    {
      v7 = *v5++;
      re::ecs2::CARESortingManagerV2::removeEntityFromTracking(this, v7);
      v6 -= 8;
    }

    while (v6);
  }

  result = re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(this + 8, &v14);
  if (result)
  {
    v9 = *(v14 + 36);
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
      }
    }

    return re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::remove(this + 8, &v14);
  }

  return result;
}

uint64_t *re::ecs2::CARESortingManagerV2::tryGetCodirectionalGroupForEntity@<X0>(re::ecs2::CARESortingManagerV2 *this@<X0>, re::ecs2::Entity *a2@<X1>, uint64_t *a3@<X8>)
{
  v17 = a2;
  result = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(this + 56, &v17);
  if (!result)
  {
    goto LABEL_10;
  }

  result = re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 1792, result);
  if (!result)
  {
    goto LABEL_10;
  }

  v6 = *(result + 8);
  if (v6)
  {
    v7 = 0;
    v8 = result[2];
    while (1)
    {
      v9 = *v8;
      v8 += 48;
      if (v9 < 0)
      {
        break;
      }

      if (v6 == ++v7)
      {
        LODWORD(v7) = *(result + 8);
        break;
      }
    }
  }

  else
  {
    LODWORD(v7) = 0;
  }

  if (v7 != v6)
  {
    v10 = result[2];
    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v17 ^ (v17 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v17 ^ (v17 >> 30))) >> 27));
    v12 = v11 ^ (v11 >> 31);
    while (1)
    {
      v13 = v10 + 192 * v7;
      if (*(v13 + 112))
      {
        v14 = *(*(v13 + 120) + 4 * (v12 % *(v13 + 136)));
        if (v14 != 0x7FFFFFFF)
        {
          break;
        }
      }

LABEL_17:
      if (v6 <= v7 + 1)
      {
        v16 = v7 + 1;
      }

      else
      {
        v16 = *(result + 8);
      }

      while (v16 - 1 != v7)
      {
        LODWORD(v7) = v7 + 1;
        if ((*(v10 + 192 * v7) & 0x80000000) != 0)
        {
          goto LABEL_24;
        }
      }

      LODWORD(v7) = v16;
LABEL_24:
      if (v7 == v6)
      {
        goto LABEL_10;
      }
    }

    v15 = *(v13 + 128);
    while (*(v15 + 32 * v14 + 8) != v17)
    {
      v14 = *(v15 + 32 * v14) & 0x7FFFFFFF;
      if (v14 == 0x7FFFFFFF)
      {
        goto LABEL_17;
      }
    }

    return re::ecs2::WorldSortingState::tryGetCodirectionalGroupForEntity(v13 + 16, v17, a3);
  }

  else
  {
LABEL_10:
    *a3 = 0;
  }

  return result;
}

void re::ecs2::CARESortingManagerV2::entitiesSortedBackToFront(re::ecs2::CARESortingManagerV2 *this@<X0>, re::ecs2::Entity *a2@<X1>, re::Allocator *a3@<X2>, uint64_t a4@<X8>)
{
  CodirectionalGroupForEntity = re::ecs2::CARESortingManagerV2::tryGetCodirectionalGroupForEntity(this, a2, &v12);
  v7 = v12;
  if (v12)
  {
    if (!a3)
    {
    }

    v8 = v7[51];
    *(a4 + 32) = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    *a4 = a3;
    re::DynamicArray<float *>::setCapacity(a4, v8);
    ++*(a4 + 24);
    v9 = v7[51];
    if (v9)
    {
      v10 = v7[53];
      v11 = 16 * v9;
      do
      {
        re::DynamicArray<re::TransitionCondition *>::add(a4, v10);
        v10 += 2;
        v11 -= 16;
      }

      while (v11);
    }
  }

  else
  {
    *(a4 + 32) = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *a4 = 0;
    *(a4 + 24) = 0;
  }
}

void re::ecs2::CARESortingManagerV2::~CARESortingManagerV2(re::ecs2::CARESortingManagerV2 *this)
{
  re::ecs2::CARESortingManagerV2::~CARESortingManagerV2(this);

  JUMPOUT(0x1E6906520);
}

{
  re::AssetHandle::~AssetHandle((this + 1880));
  re::HashTable<unsigned long long,re::ecs2::CARESortingManagerV2::SorterCollection,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 224);
  re::ecs2::UITreeTracker::~UITreeTracker((this + 1344));
  re::ecs2::UITreeTracker::~UITreeTracker((this + 896));
  re::ecs2::UITreeTracker::~UITreeTracker((this + 448));
  re::HashTable<unsigned long long,re::ecs2::MeshSortGroupToken,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 50);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 43);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 37);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 31);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 25);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 19);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 13);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 7);
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(this + 8);
}

uint64_t re::internal::Callable<re::ecs2::CARESortingManagerV2::update(re::Slice<re::SharedPtr<re::ecs2::Scene>> const&)::$_0,unsigned long long ()(re::ecs2::Entity *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v4 = *a2;
  result = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(v2 + 1552, &v4);
  if (result)
  {
    if (*result)
    {
      return *(*result + 312);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *re::internal::Callable<re::ecs2::CARESortingManagerV2::update(re::Slice<re::SharedPtr<re::ecs2::Scene>> const&)::$_0,unsigned long long ()(re::ecs2::Entity *)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD8638;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::ecs2::CARESortingManagerV2::update(re::Slice<re::SharedPtr<re::ecs2::Scene>> const&)::$_0,unsigned long long ()(re::ecs2::Entity *)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD8638;
  a2[1] = v2;
  return a2;
}

uint64_t (***re::FunctionBase<24ul,unsigned long long ()(re::ecs2::Entity *)>::destroyCallable(uint64_t a1))(void)
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

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManagerV2,REEventHandlerResult (re::ecs2::CARESortingManagerV2::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManagerV2,REEventHandlerResult (re::ecs2::CARESortingManagerV2::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD86A0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManagerV2,REEventHandlerResult (re::ecs2::CARESortingManagerV2::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD86A0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManagerV2,REEventHandlerResult (re::ecs2::CARESortingManagerV2::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManagerV2,REEventHandlerResult (re::ecs2::CARESortingManagerV2::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD86F8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManagerV2,REEventHandlerResult (re::ecs2::CARESortingManagerV2::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD86F8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManagerV2,REEventHandlerResult (re::ecs2::CARESortingManagerV2::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManagerV2,REEventHandlerResult (re::ecs2::CARESortingManagerV2::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD8750;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManagerV2,REEventHandlerResult (re::ecs2::CARESortingManagerV2::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD8750;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManagerV2,REEventHandlerResult (re::ecs2::CARESortingManagerV2::*)(re::ecs2::Entity *,REBillboardTransformChangedEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REBillboardTransformChangedEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManagerV2,REEventHandlerResult (re::ecs2::CARESortingManagerV2::*)(re::ecs2::Entity *,REBillboardTransformChangedEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REBillboardTransformChangedEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD87A8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManagerV2,REEventHandlerResult (re::ecs2::CARESortingManagerV2::*)(re::ecs2::Entity *,REBillboardTransformChangedEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REBillboardTransformChangedEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD87A8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManagerV2,REEventHandlerResult (re::ecs2::CARESortingManagerV2::*)(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCASortOrderEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCASortOrderEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManagerV2,REEventHandlerResult (re::ecs2::CARESortingManagerV2::*)(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCASortOrderEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCASortOrderEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD8800;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManagerV2,REEventHandlerResult (re::ecs2::CARESortingManagerV2::*)(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCASortOrderEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCASortOrderEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD8800;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManagerV2,REEventHandlerResult (re::ecs2::CARESortingManagerV2::*)(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManagerV2,REEventHandlerResult (re::ecs2::CARESortingManagerV2::*)(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD8858;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManagerV2,REEventHandlerResult (re::ecs2::CARESortingManagerV2::*)(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD8858;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManagerV2,REEventHandlerResult (re::ecs2::CARESortingManagerV2::*)(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeIsPlatterEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeIsPlatterEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManagerV2,REEventHandlerResult (re::ecs2::CARESortingManagerV2::*)(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeIsPlatterEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeIsPlatterEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD88B0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManagerV2,REEventHandlerResult (re::ecs2::CARESortingManagerV2::*)(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeIsPlatterEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeIsPlatterEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD88B0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManagerV2,REEventHandlerResult (re::ecs2::CARESortingManagerV2::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManagerV2,REEventHandlerResult (re::ecs2::CARESortingManagerV2::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD8908;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManagerV2,REEventHandlerResult (re::ecs2::CARESortingManagerV2::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD8908;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManagerV2,REEventHandlerResult (re::ecs2::CARESortingManagerV2::*)(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManagerV2,REEventHandlerResult (re::ecs2::CARESortingManagerV2::*)(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD8960;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManagerV2,REEventHandlerResult (re::ecs2::CARESortingManagerV2::*)(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD8960;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManagerV2,REEventHandlerResult (re::ecs2::CARESortingManagerV2::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManagerV2,REEventHandlerResult (re::ecs2::CARESortingManagerV2::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD89B8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManagerV2,REEventHandlerResult (re::ecs2::CARESortingManagerV2::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD89B8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManagerV2,REEventHandlerResult (re::ecs2::CARESortingManagerV2::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManagerV2,REEventHandlerResult (re::ecs2::CARESortingManagerV2::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD8A10;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManagerV2,REEventHandlerResult (re::ecs2::CARESortingManagerV2::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD8A10;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

double re::HashTable<unsigned long long,re::ecs2::CARESortingManagerV2::SorterCollection,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      do
      {
        re::HashTable<unsigned long long,re::ecs2::CARESortingManagerV2::SorterCollection,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(a1[2], v3++);
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

double re::HashTable<unsigned long long,re::ecs2::CARESortingManagerV2::SorterCollection,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(uint64_t a1, unsigned int a2)
{
  v2 = a1 + (a2 << 7);
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;
    re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit((v2 + 64));

    return re::HashTable<unsigned long long,re::ecs2::UISorter,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit((v2 + 16));
  }

  return result;
}

double re::HashTable<unsigned long long,re::ecs2::UISorter,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      do
      {
        re::HashTable<unsigned long long,re::ecs2::UISorter,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(a1[2], v3++);
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

double re::HashTable<unsigned long long,re::ecs2::UISorter,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(uint64_t a1, unsigned int a2)
{
  v2 = a1 + 192 * a2;
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;
    re::HashTable<unsigned long long,re::SharedPtr<re::ecs2::Entity>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit((v2 + 112));
    re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit((v2 + 64));

    return re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit((v2 + 16));
  }

  return result;
}

void re::ecs2::UITreeTracker::~UITreeTracker(re::ecs2::UITreeTracker *this)
{
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 50);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 44);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 38);
  re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 32);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 26);
  re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(this + 20);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 14);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 8);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 2);
}

uint64_t re::HashTable<unsigned long long,re::ecs2::CARESortingManagerV2::SorterCollection,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          if (v14)
          {
            v16 = 0;
            v17 = v14 << 7;
            do
            {
              if ((*(v13 + v16) & 0x80000000) != 0)
              {
                v18 = v13 + v16;
                v19 = re::HashTable<unsigned long long,re::ecs2::CARESortingManagerV2::SorterCollection,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v13 + v16 + 120) % *(a1 + 24));
                *(v19 + 8) = *(v13 + v16 + 8);
                *(v19 + 48) = 0;
                *(v19 + 16) = 0u;
                *(v19 + 32) = 0u;
                *(v19 + 52) = 0x7FFFFFFFLL;
                *(v19 + 16) = *(v13 + v16 + 16);
                *(v18 + 16) = 0;
                v20 = *(v19 + 24);
                *(v19 + 24) = *(v13 + v16 + 24);
                *(v18 + 24) = v20;
                v21 = *(v19 + 32);
                *(v19 + 32) = *(v13 + v16 + 32);
                *(v18 + 32) = v21;
                *(v19 + 40) = *(v13 + v16 + 40);
                *(v18 + 40) = 0;
                LODWORD(v21) = *(v19 + 44);
                *(v19 + 44) = *(v13 + v16 + 44);
                *(v18 + 44) = v21;
                LODWORD(v21) = *(v19 + 48);
                *(v19 + 48) = *(v13 + v16 + 48);
                *(v18 + 48) = v21;
                LODWORD(v21) = *(v19 + 52);
                *(v19 + 52) = *(v13 + v16 + 52);
                *(v18 + 52) = v21;
                *(v19 + 64) = 0u;
                v22 = v19 + 64;
                ++*(v19 + 56);
                *(v19 + 80) = 0u;
                *(v19 + 96) = 0;
                *(v19 + 100) = 0x7FFFFFFFLL;
                re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((v19 + 64), (v13 + v16 + 64));
                *(v22 + 48) = *(v13 + v16 + 112);
              }

              v16 += 128;
            }

            while (v17 != v16);
          }

          re::HashTable<unsigned long long,re::ecs2::CARESortingManagerV2::SorterCollection,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v29);
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
  *(v26 + 120) = a3;
  *(v27 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v23 + (v5 << 7);
}

uint64_t re::HashTable<unsigned long long,re::ecs2::UISorter,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
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
  if (*(v7 + 192 * v6 + 8) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 192 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 192 * v8 + 8) == a3)
      {
        break;
      }

      v8 = *(v7 + 192 * v8) & 0x7FFFFFFF;
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

uint64_t re::HashTable<unsigned long long,re::ecs2::UISorter,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          v35 = a3;
          memset(v36, 0, 36);
          *&v36[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::ecs2::UISorter,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v36, v9, v8);
          v11 = *v36;
          *v36 = *a1;
          *a1 = v11;
          v12 = *&v36[16];
          v13 = *(a1 + 16);
          *&v36[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v36[24];
          *&v36[24] = *(a1 + 24);
          v14 = *&v36[32];
          *(a1 + 24) = v15;
          ++*&v36[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            do
            {
              if ((*(v13 + 192 * v17) & 0x80000000) != 0)
              {
                v18 = v13 + 192 * v17;
                v19 = re::HashTable<unsigned long long,re::ecs2::UISorter,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v18 + 184) % *(a1 + 24));
                *(v19 + 8) = *(v18 + 8);
                re::HashSetBase<re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,true,false>::HashSetBase(v19 + 16, v18 + 16);
                re::HashSetBase<re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,true,false>::HashSetBase(v19 + 64, v18 + 64);
                *(v19 + 112) = 0u;
                *(v19 + 144) = 0;
                *(v19 + 128) = 0u;
                *(v19 + 148) = 0x7FFFFFFFLL;
                v20 = *(v18 + 112);
                if (v20)
                {
                  v21 = *(v18 + 140) <= 3u ? 3 : *(v18 + 140);
                  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v19 + 112, v20, v21);
                  if (*(v18 + 144))
                  {
                    v22 = 0;
                    v23 = 0;
                    do
                    {
                      v24 = *(v18 + 128);
                      if ((*(v24 + v22) & 0x80000000) != 0)
                      {
                        v25 = re::HashTable<re::ecs2::Entity *,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::allocEntry(v19 + 112, *(v24 + v22 + 24) % *(v19 + 136), *(v24 + v22 + 24));
                        *(v25 + 8) = *(*(v18 + 128) + v22 + 8);
                        v26 = *(*(v18 + 128) + v22 + 16);
                        *(v25 + 16) = v26;
                        if (v26)
                        {
                          v27 = (v26 + 8);
                        }
                      }

                      ++v23;
                      v22 += 32;
                    }

                    while (v23 < *(v18 + 144));
                  }
                }

                v28 = *(v18 + 160);
                *(v19 + 176) = *(v18 + 176);
                *(v19 + 160) = v28;
              }

              ++v17;
            }

            while (v17 != v16);
          }

          re::HashTable<unsigned long long,re::ecs2::UISorter,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v36);
          a3 = v35;
        }
      }

      else
      {
        if (v8)
        {
          v31 = 2 * v7;
        }

        else
        {
          v31 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v29 = *(a1 + 16);
    v30 = *(v29 + 192 * v5);
  }

  else
  {
    v29 = *(a1 + 16);
    v30 = *(v29 + 192 * v5);
    *(a1 + 36) = v30 & 0x7FFFFFFF;
  }

  v32 = v29 + 192 * v5;
  *v32 = v30 | 0x80000000;
  v33 = *(a1 + 8);
  *v32 = *(v33 + 4 * a2) | 0x80000000;
  *(v33 + 4 * a2) = v5;
  *(v32 + 184) = a3;
  ++*(a1 + 28);
  return v29 + 192 * v5;
}

uint64_t re::HashSetBase<re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,true,false>::HashSetBase(uint64_t a1, uint64_t a2)
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

    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::init(a1, v4, v5);
    re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::clear(a1);
    v6 = *(a2 + 28);
    if (*(a1 + 24) < v6)
    {
      re::HashSetBase<re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,true,false>::setCapacity(a1, v6);
    }

    v7 = *(a2 + 32);
    if (v7)
    {
      v8 = 0;
      for (i = 0; i < v7; ++i)
      {
        v10 = *(a2 + 16) + v8;
        if ((*(v10 + 8) & 0x80000000) != 0)
        {
          re::HashSetBase<re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,true,false>::addAsCopy(a1, *v10 % *(a1 + 24), *v10, v10 + 16, (v10 + 16));
          v7 = *(a2 + 32);
        }

        v8 += 24;
      }
    }
  }

  return a1;
}

void re::HashSetBase<re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
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
            re::HashSetBase<re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,true,false>::addAsMove(a1, *(*&v13[16] + v10) % *(a1 + 24), *(*&v13[16] + v10), *&v13[16] + v10 + 16, (*&v13[16] + v10 + 16));
            v9 = *&v13[32];
          }

          ++v11;
          v10 += 24;
        }

        while (v11 < v9);
      }

      re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(v13);
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

uint64_t re::HashSetBase<re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,true,false>::addAsCopy(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = *(a1 + 36);
  if (v9 == 0x7FFFFFFF)
  {
    v9 = *(a1 + 32);
    v10 = v9;
    if (v9 == *(a1 + 24))
    {
      re::HashSetBase<re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v10 = *(a1 + 32);
    }

    *(a1 + 32) = v10 + 1;
    v11 = *(a1 + 16);
    v12 = *(v11 + 24 * v9 + 8);
  }

  else
  {
    v11 = *(a1 + 16);
    v12 = *(v11 + 24 * v9 + 8);
    *(a1 + 36) = v12 & 0x7FFFFFFF;
  }

  *(v11 + 24 * v9 + 8) = v12 | 0x80000000;
  v13 = *(a1 + 8);
  *(*(a1 + 16) + 24 * v9 + 8) = *(*(a1 + 16) + 24 * v9 + 8) & 0x80000000 | *(v13 + 4 * a2);
  *(*(a1 + 16) + 24 * v9) = a3;
  v14 = *a5;
  *(*(a1 + 16) + 24 * v9 + 16) = *a5;
  if (v14)
  {
    v15 = (v14 + 8);
    v13 = *(a1 + 8);
  }

  *(v13 + 4 * a2) = v9;
  ++*(a1 + 28);
  return v9;
}

uint64_t re::HashSetBase<re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,true,false>::addAsMove(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 36);
  if (v8 == 0x7FFFFFFF)
  {
    v8 = *(a1 + 32);
    v9 = v8;
    if (v8 == *(a1 + 24))
    {
      re::HashSetBase<re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,true,false>::setCapacity(a1, (2 * *(a1 + 28)));
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

uint64_t re::HashTable<re::ecs2::Entity *,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::ecs2::Entity *,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 32 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v9 + 24) = a3;
  *(v10 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v7 + 32 * v5;
}

void re::HashTable<re::ecs2::Entity *,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v9, v4, a2);
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
      re::HashTable<re::ecs2::Entity *,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::move(a1, v9);
      re::HashTable<unsigned long long,re::SharedPtr<re::ecs2::Entity>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v9);
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

uint64_t re::HashTable<re::ecs2::Entity *,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    v7 = *(a2 + 16);
    do
    {
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        result = re::HashTable<re::ecs2::Entity *,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::allocEntry(v4, *(v7 + v5 + 24) % *(v4 + 24));
        *(result + 8) = *(*(a2 + 16) + v5 + 8);
        v7 = *(a2 + 16);
        *(result + 16) = *(v7 + v5 + 16);
        *(v7 + v5 + 16) = 0;
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 32;
    }

    while (v6 < v2);
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned long long,unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 32 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v9 + 24) = a3;
  *(v10 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v7 + 32 * v5;
}

void re::HashTable<unsigned long long,unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v9, v4, a2);
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
      re::HashTable<unsigned long long,unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(a1, v9);
      re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v9);
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

uint64_t re::HashTable<unsigned long long,unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    v7 = *(a2 + 16);
    do
    {
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        result = re::HashTable<unsigned long long,unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v4, *(v7 + v5 + 24) % *(v4 + 24));
        v7 = *(a2 + 16);
        *(result + 8) = *(v7 + v5 + 8);
        *(result + 16) = *(v7 + v5 + 16);
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 32;
    }

    while (v6 < v2);
  }

  return result;
}

void re::ecs2::deinitECSComponents(re::ecs2 *this)
{
  if (_MergedGlobals_182 == 1)
  {
    _MergedGlobals_182 = 0;
    v2 = re::internal::destroyPersistent<re::ecs2::HandleTable>("deinit", 64, re::ecs2::HandleTable::m_instance);
    v3 = re::ecs2::ComponentTypeRegistry::instance(v2);
    v4 = re::ecs2::ComponentTypeRegistry::remove(v3, re::ecs2::ComponentImpl<re::ecs2::AcousticAdjustmentsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v5 = re::ecs2::ComponentImpl<re::ecs2::AcousticAdjustmentsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::AcousticAdjustmentsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v6 = re::globalAllocators(v4)[2];
      (*(*v5 + 16))(v5);
      v4 = (*(*v6 + 40))(v6, v5);
    }

    re::ecs2::ComponentImpl<re::ecs2::AcousticAdjustmentsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v7 = re::ecs2::ComponentTypeRegistry::instance(v4);
    v8 = re::ecs2::ComponentTypeRegistry::remove(v7, re::ecs2::ComponentImpl<re::ecs2::AcousticMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v9 = re::ecs2::ComponentImpl<re::ecs2::AcousticMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::AcousticMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v10 = re::globalAllocators(v8)[2];
      (*(*v9 + 16))(v9);
      v8 = (*(*v10 + 40))(v10, v9);
    }

    re::ecs2::ComponentImpl<re::ecs2::AcousticMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v11 = re::ecs2::ComponentTypeRegistry::instance(v8);
    v12 = re::ecs2::ComponentTypeRegistry::remove(v11, re::ecs2::ComponentImpl<re::ecs2::AccessibilityComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v13 = re::ecs2::ComponentImpl<re::ecs2::AccessibilityComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::AccessibilityComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v14 = re::globalAllocators(v12)[2];
      (*(*v13 + 16))(v13);
      v12 = (*(*v14 + 40))(v14, v13);
    }

    re::ecs2::ComponentImpl<re::ecs2::AccessibilityComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v15 = re::ecs2::ComponentTypeRegistry::instance(v12);
    v16 = re::ecs2::ComponentTypeRegistry::remove(v15, re::ecs2::ComponentImpl<re::ecs2::AdaptiveResolutionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v17 = re::ecs2::ComponentImpl<re::ecs2::AdaptiveResolutionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::AdaptiveResolutionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v18 = re::globalAllocators(v16)[2];
      (*(*v17 + 16))(v17);
      v16 = (*(*v18 + 40))(v18, v17);
    }

    re::ecs2::ComponentImpl<re::ecs2::AdaptiveResolutionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v19 = re::ecs2::ComponentTypeRegistry::instance(v16);
    v20 = re::ecs2::ComponentTypeRegistry::remove(v19, re::ecs2::ComponentImpl<re::ecs2::AdaptiveResolutionStateComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v21 = re::ecs2::ComponentImpl<re::ecs2::AdaptiveResolutionStateComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::AdaptiveResolutionStateComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v22 = re::globalAllocators(v20)[2];
      (*(*v21 + 16))(v21);
      v20 = (*(*v22 + 40))(v22, v21);
    }

    re::ecs2::ComponentImpl<re::ecs2::AdaptiveResolutionStateComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v23 = re::ecs2::ComponentTypeRegistry::instance(v20);
    v24 = re::ecs2::ComponentTypeRegistry::remove(v23, re::ecs2::ComponentImpl<re::ecs2::AnimationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v25 = re::ecs2::ComponentImpl<re::ecs2::AnimationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::AnimationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v26 = re::globalAllocators(v24)[2];
      (*(*v25 + 16))(v25);
      v24 = (*(*v26 + 40))(v26, v25);
    }

    re::ecs2::ComponentImpl<re::ecs2::AnimationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v27 = re::ecs2::ComponentTypeRegistry::instance(v24);
    v28 = re::ecs2::ComponentTypeRegistry::remove(v27, re::ecs2::ComponentImpl<re::ecs2::AnimationLibraryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v29 = re::ecs2::ComponentImpl<re::ecs2::AnimationLibraryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::AnimationLibraryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v30 = re::globalAllocators(v28)[2];
      (*(*v29 + 16))(v29);
      v28 = (*(*v30 + 40))(v30, v29);
    }

    re::ecs2::ComponentImpl<re::ecs2::AnimationLibraryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v31 = re::ecs2::ComponentTypeRegistry::instance(v28);
    v32 = re::ecs2::ComponentTypeRegistry::remove(v31, re::ecs2::ComponentImpl<re::ecs2::AudioGeneratorComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v33 = re::ecs2::ComponentImpl<re::ecs2::AudioGeneratorComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::AudioGeneratorComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v34 = re::globalAllocators(v32)[2];
      (*(*v33 + 16))(v33);
      v32 = (*(*v34 + 40))(v34, v33);
    }

    re::ecs2::ComponentImpl<re::ecs2::AudioGeneratorComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v35 = re::ecs2::ComponentTypeRegistry::instance(v32);
    v36 = re::ecs2::ComponentTypeRegistry::remove(v35, re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v37 = re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v38 = re::globalAllocators(v36)[2];
      (*(*v37 + 16))(v37);
      v36 = (*(*v38 + 40))(v38, v37);
    }

    re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v39 = re::ecs2::ComponentTypeRegistry::instance(v36);
    v40 = re::ecs2::ComponentTypeRegistry::remove(v39, re::ecs2::ComponentImpl<re::ecs2::VideoAudioControlComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v41 = re::ecs2::ComponentImpl<re::ecs2::VideoAudioControlComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::VideoAudioControlComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v42 = re::globalAllocators(v40)[2];
      (*(*v41 + 16))(v41);
      v40 = (*(*v42 + 40))(v42, v41);
    }

    re::ecs2::ComponentImpl<re::ecs2::VideoAudioControlComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v43 = re::ecs2::ComponentTypeRegistry::instance(v40);
    v44 = re::ecs2::ComponentTypeRegistry::remove(v43, re::ecs2::ComponentImpl<re::ecs2::ChannelAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v45 = re::ecs2::ComponentImpl<re::ecs2::ChannelAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::ChannelAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v46 = re::globalAllocators(v44)[2];
      (*(*v45 + 16))(v45);
      v44 = (*(*v46 + 40))(v46, v45);
    }

    re::ecs2::ComponentImpl<re::ecs2::ChannelAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v47 = re::ecs2::ComponentTypeRegistry::instance(v44);
    v48 = re::ecs2::ComponentTypeRegistry::remove(v47, re::ecs2::ComponentImpl<re::ecs2::CustomDeformerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v49 = re::ecs2::ComponentImpl<re::ecs2::CustomDeformerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::CustomDeformerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v50 = re::globalAllocators(v48)[2];
      (*(*v49 + 16))(v49);
      v48 = (*(*v50 + 40))(v50, v49);
    }

    re::ecs2::ComponentImpl<re::ecs2::CustomDeformerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v51 = re::ecs2::ComponentTypeRegistry::instance(v48);
    v52 = re::ecs2::ComponentTypeRegistry::remove(v51, re::ecs2::ComponentImpl<re::ecs2::AmbientAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v53 = re::ecs2::ComponentImpl<re::ecs2::AmbientAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::AmbientAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v54 = re::globalAllocators(v52)[2];
      (*(*v53 + 16))(v53);
      v52 = (*(*v54 + 40))(v54, v53);
    }

    re::ecs2::ComponentImpl<re::ecs2::AmbientAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v55 = re::ecs2::ComponentTypeRegistry::instance(v52);
    v56 = re::ecs2::ComponentTypeRegistry::remove(v55, re::ecs2::ComponentImpl<re::ecs2::SpatialAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v57 = re::ecs2::ComponentImpl<re::ecs2::SpatialAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::SpatialAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v58 = re::globalAllocators(v56)[2];
      (*(*v57 + 16))(v57);
      v56 = (*(*v58 + 40))(v58, v57);
    }

    re::ecs2::ComponentImpl<re::ecs2::SpatialAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v59 = re::ecs2::ComponentTypeRegistry::instance(v56);
    v60 = re::ecs2::ComponentTypeRegistry::remove(v59, re::ecs2::ComponentImpl<re::ecs2::AudioTransientComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
    v61 = re::ecs2::ComponentImpl<re::ecs2::AudioTransientComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::AudioTransientComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType)
    {
      v62 = re::globalAllocators(v60)[2];
      (*(*v61 + 16))(v61);
      v60 = (*(*v62 + 40))(v62, v61);
    }

    re::ecs2::ComponentImpl<re::ecs2::AudioTransientComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType = 0;
    v63 = re::ecs2::ComponentTypeRegistry::instance(v60);
    v64 = re::ecs2::ComponentTypeRegistry::remove(v63, re::ecs2::ComponentImpl<re::ecs2::AudioSessionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v65 = re::ecs2::ComponentImpl<re::ecs2::AudioSessionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::AudioSessionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v66 = re::globalAllocators(v64)[2];
      (*(*v65 + 16))(v65);
      v64 = (*(*v66 + 40))(v66, v65);
    }

    re::ecs2::ComponentImpl<re::ecs2::AudioSessionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v67 = re::ecs2::ComponentTypeRegistry::instance(v64);
    v68 = re::ecs2::ComponentTypeRegistry::remove(v67, re::ecs2::ComponentImpl<re::ecs2::AudioAnimationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v69 = re::ecs2::ComponentImpl<re::ecs2::AudioAnimationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::AudioAnimationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v70 = re::globalAllocators(v68)[2];
      (*(*v69 + 16))(v69);
      v68 = (*(*v70 + 40))(v70, v69);
    }

    re::ecs2::ComponentImpl<re::ecs2::AudioAnimationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v71 = re::ecs2::ComponentTypeRegistry::instance(v68);
    v72 = re::ecs2::ComponentTypeRegistry::remove(v71, re::ecs2::ComponentImpl<re::ecs2::AudioMixerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v73 = re::ecs2::ComponentImpl<re::ecs2::AudioMixerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::AudioMixerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v74 = re::globalAllocators(v72)[2];
      (*(*v73 + 16))(v73);
      v72 = (*(*v74 + 40))(v74, v73);
    }

    re::ecs2::ComponentImpl<re::ecs2::AudioMixerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v75 = re::ecs2::ComponentTypeRegistry::instance(v72);
    v76 = re::ecs2::ComponentTypeRegistry::remove(v75, re::ecs2::ComponentImpl<re::ecs2::ReverbComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v77 = re::ecs2::ComponentImpl<re::ecs2::ReverbComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::ReverbComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v78 = re::globalAllocators(v76)[2];
      (*(*v77 + 16))(v77);
      v76 = (*(*v78 + 40))(v78, v77);
    }

    re::ecs2::ComponentImpl<re::ecs2::ReverbComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v79 = re::ecs2::ComponentTypeRegistry::instance(v76);
    v80 = re::ecs2::ComponentTypeRegistry::remove(v79, re::ecs2::ComponentImpl<re::ecs2::AudioMixGroupsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v81 = re::ecs2::ComponentImpl<re::ecs2::AudioMixGroupsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::AudioMixGroupsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v82 = re::globalAllocators(v80)[2];
      (*(*v81 + 16))(v81);
      v80 = (*(*v82 + 40))(v82, v81);
    }

    re::ecs2::ComponentImpl<re::ecs2::AudioMixGroupsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v83 = re::ecs2::ComponentTypeRegistry::instance(v80);
    v84 = re::ecs2::ComponentTypeRegistry::remove(v83, re::ecs2::ComponentImpl<re::ecs2::AudioDebugComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
    v85 = re::ecs2::ComponentImpl<re::ecs2::AudioDebugComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::AudioDebugComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType)
    {
      v86 = re::globalAllocators(v84)[2];
      (*(*v85 + 16))(v85);
      v84 = (*(*v86 + 40))(v86, v85);
    }

    re::ecs2::ComponentImpl<re::ecs2::AudioDebugComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType = 0;
    v87 = re::ecs2::ComponentTypeRegistry::instance(v84);
    v88 = re::ecs2::ComponentTypeRegistry::remove(v87, re::ecs2::ComponentImpl<re::ecs2::AudioGroupPlaybackComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v89 = re::ecs2::ComponentImpl<re::ecs2::AudioGroupPlaybackComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::AudioGroupPlaybackComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v90 = re::globalAllocators(v88)[2];
      (*(*v89 + 16))(v89);
      v88 = (*(*v90 + 40))(v90, v89);
    }

    re::ecs2::ComponentImpl<re::ecs2::AudioGroupPlaybackComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v91 = re::ecs2::ComponentTypeRegistry::instance(v88);
    v92 = re::ecs2::ComponentTypeRegistry::remove(v91, re::ecs2::ComponentImpl<re::ecs2::AudioLibraryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v93 = re::ecs2::ComponentImpl<re::ecs2::AudioLibraryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::AudioLibraryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v94 = re::globalAllocators(v92)[2];
      (*(*v93 + 16))(v93);
      v92 = (*(*v94 + 40))(v94, v93);
    }

    re::ecs2::ComponentImpl<re::ecs2::AudioLibraryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v95 = re::ecs2::ComponentTypeRegistry::instance(v92);
    v96 = re::ecs2::ComponentTypeRegistry::remove(v95, re::ecs2::ComponentImpl<re::ecs2::AudioTetherComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v97 = re::ecs2::ComponentImpl<re::ecs2::AudioTetherComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::AudioTetherComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v98 = re::globalAllocators(v96)[2];
      (*(*v97 + 16))(v97);
      v96 = (*(*v98 + 40))(v98, v97);
    }

    re::ecs2::ComponentImpl<re::ecs2::AudioTetherComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v99 = re::ecs2::ComponentTypeRegistry::instance(v96);
    v100 = re::ecs2::ComponentTypeRegistry::remove(v99, re::ecs2::ComponentImpl<re::ecs2::AREnvironmentProbeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v101 = re::ecs2::ComponentImpl<re::ecs2::AREnvironmentProbeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::AREnvironmentProbeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v102 = re::globalAllocators(v100)[2];
      (*(*v101 + 16))(v101);
      v100 = (*(*v102 + 40))(v102, v101);
    }

    re::ecs2::ComponentImpl<re::ecs2::AREnvironmentProbeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v103 = re::ecs2::ComponentTypeRegistry::instance(v100);
    v104 = re::ecs2::ComponentTypeRegistry::remove(v103, re::ecs2::ComponentImpl<re::ecs2::ARSegmentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v105 = re::ecs2::ComponentImpl<re::ecs2::ARSegmentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::ARSegmentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v106 = re::globalAllocators(v104)[2];
      (*(*v105 + 16))(v105);
      v104 = (*(*v106 + 40))(v106, v105);
    }

    re::ecs2::ComponentImpl<re::ecs2::ARSegmentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v107 = re::ecs2::ComponentTypeRegistry::instance(v104);
    v108 = re::ecs2::ComponentTypeRegistry::remove(v107, re::ecs2::ComponentImpl<re::ecs2::BallSocketJointComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v109 = re::ecs2::ComponentImpl<re::ecs2::BallSocketJointComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::BallSocketJointComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v110 = re::globalAllocators(v108)[2];
      (*(*v109 + 16))(v109);
      v108 = (*(*v110 + 40))(v110, v109);
    }

    re::ecs2::ComponentImpl<re::ecs2::BallSocketJointComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v111 = re::ecs2::ComponentTypeRegistry::instance(v108);
    v112 = re::ecs2::ComponentTypeRegistry::remove(v111, re::ecs2::ComponentImpl<re::ecs2::BlendShapeWeightsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v113 = re::ecs2::ComponentImpl<re::ecs2::BlendShapeWeightsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::BlendShapeWeightsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v114 = re::globalAllocators(v112)[2];
      (*(*v113 + 16))(v113);
      v112 = (*(*v114 + 40))(v114, v113);
    }

    re::ecs2::ComponentImpl<re::ecs2::BlendShapeWeightsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v115 = re::ecs2::ComponentTypeRegistry::instance(v112);
    v116 = re::ecs2::ComponentTypeRegistry::remove(v115, re::ecs2::ComponentImpl<re::ecs2::BlendShapeWeightsBufferComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v117 = re::ecs2::ComponentImpl<re::ecs2::BlendShapeWeightsBufferComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::BlendShapeWeightsBufferComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v118 = re::globalAllocators(v116)[2];
      (*(*v117 + 16))(v117);
      v116 = (*(*v118 + 40))(v118, v117);
    }

    re::ecs2::ComponentImpl<re::ecs2::BlendShapeWeightsBufferComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v119 = re::ecs2::ComponentTypeRegistry::instance(v116);
    v120 = re::ecs2::ComponentTypeRegistry::remove(v119, re::ecs2::ComponentImpl<re::ecs2::BodyTrackingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v121 = re::ecs2::ComponentImpl<re::ecs2::BodyTrackingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::BodyTrackingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v122 = re::globalAllocators(v120)[2];
      (*(*v121 + 16))(v121);
      v120 = (*(*v122 + 40))(v122, v121);
    }

    re::ecs2::ComponentImpl<re::ecs2::BodyTrackingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v123 = re::ecs2::ComponentTypeRegistry::instance(v120);
    v124 = re::ecs2::ComponentTypeRegistry::remove(v123, re::ecs2::ComponentImpl<re::ecs2::CameraViewDescriptorsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v125 = re::ecs2::ComponentImpl<re::ecs2::CameraViewDescriptorsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::CameraViewDescriptorsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v126 = re::globalAllocators(v124)[2];
      (*(*v125 + 16))(v125);
      v124 = (*(*v126 + 40))(v126, v125);
    }

    re::ecs2::ComponentImpl<re::ecs2::CameraViewDescriptorsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v127 = re::ecs2::ComponentTypeRegistry::instance(v124);
    v128 = re::ecs2::ComponentTypeRegistry::remove(v127, re::ecs2::ComponentImpl<re::ecs2::CameraMovementComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v129 = re::ecs2::ComponentImpl<re::ecs2::CameraMovementComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::CameraMovementComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v130 = re::globalAllocators(v128)[2];
      (*(*v129 + 16))(v129);
      v128 = (*(*v130 + 40))(v130, v129);
    }

    re::ecs2::ComponentImpl<re::ecs2::CameraMovementComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v131 = re::ecs2::ComponentTypeRegistry::instance(v128);
    v132 = re::ecs2::ComponentTypeRegistry::remove(v131, re::ecs2::ComponentImpl<re::ecs2::CharacterControllerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v133 = re::ecs2::ComponentImpl<re::ecs2::CharacterControllerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::CharacterControllerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v134 = re::globalAllocators(v132)[2];
      (*(*v133 + 16))(v133);
      v132 = (*(*v134 + 40))(v134, v133);
    }

    re::ecs2::ComponentImpl<re::ecs2::CharacterControllerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v135 = re::ecs2::ComponentTypeRegistry::instance(v132);
    v136 = re::ecs2::ComponentTypeRegistry::remove(v135, re::ecs2::ComponentImpl<re::ecs2::CharacterControllerStateComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v137 = re::ecs2::ComponentImpl<re::ecs2::CharacterControllerStateComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::CharacterControllerStateComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v138 = re::globalAllocators(v136)[2];
      (*(*v137 + 16))(v137);
      v136 = (*(*v138 + 40))(v138, v137);
    }

    re::ecs2::ComponentImpl<re::ecs2::CharacterControllerStateComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v139 = re::ecs2::ComponentTypeRegistry::instance(v136);
    v140 = re::ecs2::ComponentTypeRegistry::remove(v139, re::ecs2::ComponentImpl<re::ecs2::ClippingBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v141 = re::ecs2::ComponentImpl<re::ecs2::ClippingBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::ClippingBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v142 = re::globalAllocators(v140)[2];
      (*(*v141 + 16))(v141);
      v140 = (*(*v142 + 40))(v142, v141);
    }

    re::ecs2::ComponentImpl<re::ecs2::ClippingBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v143 = re::ecs2::ComponentTypeRegistry::instance(v140);
    v144 = re::ecs2::ComponentTypeRegistry::remove(v143, re::ecs2::ComponentImpl<re::ecs2::ClippingPrimitiveComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v145 = re::ecs2::ComponentImpl<re::ecs2::ClippingPrimitiveComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::ClippingPrimitiveComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v146 = re::globalAllocators(v144)[2];
      (*(*v145 + 16))(v145);
      v144 = (*(*v146 + 40))(v146, v145);
    }

    re::ecs2::ComponentImpl<re::ecs2::ClippingPrimitiveComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v147 = re::ecs2::ComponentTypeRegistry::instance(v144);
    v148 = re::ecs2::ComponentTypeRegistry::remove(v147, re::ecs2::ComponentImpl<re::ecs2::ClippingOptOutComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
    v149 = re::ecs2::ComponentImpl<re::ecs2::ClippingOptOutComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::ClippingOptOutComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType)
    {
      v150 = re::globalAllocators(v148)[2];
      (*(*v149 + 16))(v149);
      v148 = (*(*v150 + 40))(v150, v149);
    }

    re::ecs2::ComponentImpl<re::ecs2::ClippingOptOutComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType = 0;
    v151 = re::ecs2::ComponentTypeRegistry::instance(v148);
    v152 = re::ecs2::ComponentTypeRegistry::remove(v151, re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v153 = re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v154 = re::globalAllocators(v152)[2];
      (*(*v153 + 16))(v153);
      v152 = (*(*v154 + 40))(v154, v153);
    }

    re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v155 = re::ecs2::ComponentTypeRegistry::instance(v152);
    v156 = re::ecs2::ComponentTypeRegistry::remove(v155, re::ecs2::ComponentImpl<re::ecs2::ForceEffectComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v157 = re::ecs2::ComponentImpl<re::ecs2::ForceEffectComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::ForceEffectComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v158 = re::globalAllocators(v156)[2];
      (*(*v157 + 16))(v157);
      v156 = (*(*v158 + 40))(v158, v157);
    }

    re::ecs2::ComponentImpl<re::ecs2::ForceEffectComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v159 = re::ecs2::ComponentTypeRegistry::instance(v156);
    v160 = re::ecs2::ComponentTypeRegistry::remove(v159, re::ecs2::ComponentImpl<re::ecs2::ConstraintListComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v161 = re::ecs2::ComponentImpl<re::ecs2::ConstraintListComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::ConstraintListComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v162 = re::globalAllocators(v160)[2];
      (*(*v161 + 16))(v161);
      v160 = (*(*v162 + 40))(v162, v161);
    }

    re::ecs2::ComponentImpl<re::ecs2::ConstraintListComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v163 = re::ecs2::ComponentTypeRegistry::instance(v160);
    v164 = re::ecs2::ComponentTypeRegistry::remove(v163, re::ecs2::ComponentImpl<re::ecs2::CustomMatrixCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v165 = re::ecs2::ComponentImpl<re::ecs2::CustomMatrixCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::CustomMatrixCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v166 = re::globalAllocators(v164)[2];
      (*(*v165 + 16))(v165);
      (*(*v166 + 40))(v166, v165);
    }

    re::ecs2::ComponentImpl<re::ecs2::CustomMatrixCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v167 = re::internal::destroyPersistent<re::Allocator>("deinitComponentType", 58, re::ecs2::CustomComponent::s_allocator);
    re::ecs2::CustomComponent::s_allocator = 0;
    v168 = re::ecs2::ComponentTypeRegistry::instance(v167);
    v169 = re::ecs2::ComponentTypeRegistry::remove(v168, re::ecs2::ComponentImpl<re::ecs2::CustomDockingRegionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v170 = re::ecs2::ComponentImpl<re::ecs2::CustomDockingRegionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::CustomDockingRegionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v171 = re::globalAllocators(v169)[2];
      (*(*v170 + 16))(v170);
      v169 = (*(*v171 + 40))(v171, v170);
    }

    re::ecs2::ComponentImpl<re::ecs2::CustomDockingRegionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v172 = re::ecs2::ComponentTypeRegistry::instance(v169);
    v173 = re::ecs2::ComponentTypeRegistry::remove(v172, re::ecs2::ComponentImpl<re::ecs2::DebugMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v174 = re::ecs2::ComponentImpl<re::ecs2::DebugMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::DebugMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v175 = re::globalAllocators(v173)[2];
      (*(*v174 + 16))(v174);
      v173 = (*(*v175 + 40))(v175, v174);
    }

    re::ecs2::ComponentImpl<re::ecs2::DebugMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v176 = re::ecs2::ComponentTypeRegistry::instance(v173);
    v177 = re::ecs2::ComponentTypeRegistry::remove(v176, re::ecs2::ComponentImpl<re::ecs2::DeformedDirectMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v178 = re::ecs2::ComponentImpl<re::ecs2::DeformedDirectMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::DeformedDirectMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v179 = re::globalAllocators(v177)[2];
      (*(*v178 + 16))(v178);
      v177 = (*(*v179 + 40))(v179, v178);
    }

    re::ecs2::ComponentImpl<re::ecs2::DeformedDirectMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v180 = re::ecs2::ComponentTypeRegistry::instance(v177);
    v181 = re::ecs2::ComponentTypeRegistry::remove(v180, re::ecs2::ComponentImpl<re::ecs2::DrawableQueueSyncComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v182 = re::ecs2::ComponentImpl<re::ecs2::DrawableQueueSyncComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::DrawableQueueSyncComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v183 = re::globalAllocators(v181)[2];
      (*(*v182 + 16))(v182);
      v181 = (*(*v183 + 40))(v183, v182);
    }

    re::ecs2::ComponentImpl<re::ecs2::DrawableQueueSyncComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v184 = re::ecs2::ComponentTypeRegistry::instance(v181);
    v185 = re::ecs2::ComponentTypeRegistry::remove(v184, re::ecs2::ComponentImpl<re::ecs2::DrawWorldComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v186 = re::ecs2::ComponentImpl<re::ecs2::DrawWorldComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::DrawWorldComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v187 = re::globalAllocators(v185)[2];
      (*(*v186 + 16))(v186);
      v185 = (*(*v187 + 40))(v187, v186);
    }

    re::ecs2::ComponentImpl<re::ecs2::DrawWorldComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v188 = re::ecs2::ComponentTypeRegistry::instance(v185);
    v189 = re::ecs2::ComponentTypeRegistry::remove(v188, re::ecs2::ComponentImpl<re::ecs2::DynamicBoundingBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
    v190 = re::ecs2::ComponentImpl<re::ecs2::DynamicBoundingBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::DynamicBoundingBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType)
    {
      v191 = re::globalAllocators(v189)[2];
      (*(*v190 + 16))(v190);
      v189 = (*(*v191 + 40))(v191, v190);
    }

    re::ecs2::ComponentImpl<re::ecs2::DynamicBoundingBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType = 0;
    v192 = re::ecs2::ComponentTypeRegistry::instance(v189);
    v193 = re::ecs2::ComponentTypeRegistry::remove(v192, re::ecs2::ComponentImpl<re::ecs2::DynamicTextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v194 = re::ecs2::ComponentImpl<re::ecs2::DynamicTextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::DynamicTextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v195 = re::globalAllocators(v193)[2];
      (*(*v194 + 16))(v194);
      v193 = (*(*v195 + 40))(v195, v194);
    }

    re::ecs2::ComponentImpl<re::ecs2::DynamicTextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v196 = re::ecs2::ComponentTypeRegistry::instance(v193);
    v197 = re::ecs2::ComponentTypeRegistry::remove(v196, re::ecs2::ComponentImpl<re::ecs2::EDRColorManagementComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v198 = re::ecs2::ComponentImpl<re::ecs2::EDRColorManagementComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::EDRColorManagementComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v199 = re::globalAllocators(v197)[2];
      (*(*v198 + 16))(v198);
      v197 = (*(*v199 + 40))(v199, v198);
    }

    re::ecs2::ComponentImpl<re::ecs2::EDRColorManagementComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v200 = re::ecs2::ComponentTypeRegistry::instance(v197);
    v201 = re::ecs2::ComponentTypeRegistry::remove(v200, re::ecs2::ComponentImpl<re::ecs2::EmbeddedStereoContentComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v202 = re::ecs2::ComponentImpl<re::ecs2::EmbeddedStereoContentComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::EmbeddedStereoContentComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v203 = re::globalAllocators(v201)[2];
      (*(*v202 + 16))(v202);
      v201 = (*(*v203 + 40))(v203, v202);
    }

    re::ecs2::ComponentImpl<re::ecs2::EmbeddedStereoContentComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v204 = re::ecs2::ComponentTypeRegistry::instance(v201);
    v205 = re::ecs2::ComponentTypeRegistry::remove(v204, re::ecs2::ComponentImpl<re::ecs2::HingeJointComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v206 = re::ecs2::ComponentImpl<re::ecs2::HingeJointComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::HingeJointComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v207 = re::globalAllocators(v205)[2];
      (*(*v206 + 16))(v206);
      v205 = (*(*v207 + 40))(v207, v206);
    }

    re::ecs2::ComponentImpl<re::ecs2::HingeJointComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v208 = re::ecs2::ComponentTypeRegistry::instance(v205);
    v209 = re::ecs2::ComponentTypeRegistry::remove(v208, re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v210 = re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v211 = re::globalAllocators(v209)[2];
      (*(*v210 + 16))(v210);
      v209 = (*(*v211 + 40))(v211, v210);
    }

    re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v212 = re::ecs2::ComponentTypeRegistry::instance(v209);
    v213 = re::ecs2::ComponentTypeRegistry::remove(v212, re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v214 = re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v215 = re::globalAllocators(v213)[2];
      (*(*v214 + 16))(v214);
      v213 = (*(*v215 + 40))(v215, v214);
    }

    re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v216 = re::ecs2::ComponentTypeRegistry::instance(v213);
    v217 = re::ecs2::ComponentTypeRegistry::remove(v216, re::ecs2::ComponentImpl<re::ecs2::KeyValueComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v218 = re::ecs2::ComponentImpl<re::ecs2::KeyValueComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::KeyValueComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v219 = re::globalAllocators(v217)[2];
      (*(*v218 + 16))(v218);
      v217 = (*(*v219 + 40))(v219, v218);
    }

    re::ecs2::ComponentImpl<re::ecs2::KeyValueComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v220 = re::ecs2::ComponentTypeRegistry::instance(v217);
    v221 = re::ecs2::ComponentTypeRegistry::remove(v220, re::ecs2::ComponentImpl<re::ecs2::LightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v222 = re::ecs2::ComponentImpl<re::ecs2::LightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::LightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v223 = re::globalAllocators(v221)[2];
      (*(*v222 + 16))(v222);
      v221 = (*(*v223 + 40))(v223, v222);
    }

    re::ecs2::ComponentImpl<re::ecs2::LightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v224 = re::ecs2::ComponentTypeRegistry::instance(v221);
    v225 = re::ecs2::ComponentTypeRegistry::remove(v224, re::ecs2::ComponentImpl<re::ecs2::LightGroupComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v226 = re::ecs2::ComponentImpl<re::ecs2::LightGroupComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::LightGroupComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v227 = re::globalAllocators(v225)[2];
      (*(*v226 + 16))(v226);
      v225 = (*(*v227 + 40))(v227, v226);
    }

    re::ecs2::ComponentImpl<re::ecs2::LightGroupComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v228 = re::ecs2::ComponentTypeRegistry::instance(v225);
    v229 = re::ecs2::ComponentTypeRegistry::remove(v228, re::ecs2::ComponentImpl<re::ecs2::AmbientLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v230 = re::ecs2::ComponentImpl<re::ecs2::AmbientLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::AmbientLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v231 = re::globalAllocators(v229)[2];
      (*(*v230 + 16))(v230);
      v229 = (*(*v231 + 40))(v231, v230);
    }

    re::ecs2::ComponentImpl<re::ecs2::AmbientLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v232 = re::ecs2::ComponentTypeRegistry::instance(v229);
    v233 = re::ecs2::ComponentTypeRegistry::remove(v232, re::ecs2::ComponentImpl<re::ecs2::DirectionalLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v234 = re::ecs2::ComponentImpl<re::ecs2::DirectionalLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::DirectionalLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v235 = re::globalAllocators(v233)[2];
      (*(*v234 + 16))(v234);
      v233 = (*(*v235 + 40))(v235, v234);
    }

    re::ecs2::ComponentImpl<re::ecs2::DirectionalLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v236 = re::ecs2::ComponentTypeRegistry::instance(v233);
    v237 = re::ecs2::ComponentTypeRegistry::remove(v236, re::ecs2::ComponentImpl<re::ecs2::SpotLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v238 = re::ecs2::ComponentImpl<re::ecs2::SpotLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::SpotLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v239 = re::globalAllocators(v237)[2];
      (*(*v238 + 16))(v238);
      v237 = (*(*v239 + 40))(v239, v238);
    }

    re::ecs2::ComponentImpl<re::ecs2::SpotLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v240 = re::ecs2::ComponentTypeRegistry::instance(v237);
    v241 = re::ecs2::ComponentTypeRegistry::remove(v240, re::ecs2::ComponentImpl<re::ecs2::PointLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v242 = re::ecs2::ComponentImpl<re::ecs2::PointLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::PointLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v243 = re::globalAllocators(v241)[2];
      (*(*v242 + 16))(v242);
      v241 = (*(*v243 + 40))(v243, v242);
    }

    re::ecs2::ComponentImpl<re::ecs2::PointLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v244 = re::ecs2::ComponentTypeRegistry::instance(v241);
    v245 = re::ecs2::ComponentTypeRegistry::remove(v244, re::ecs2::ComponentImpl<re::ecs2::RectAreaLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v246 = re::ecs2::ComponentImpl<re::ecs2::RectAreaLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::RectAreaLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v247 = re::globalAllocators(v245)[2];
      (*(*v246 + 16))(v246);
      v245 = (*(*v247 + 40))(v247, v246);
    }

    re::ecs2::ComponentImpl<re::ecs2::RectAreaLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v248 = re::ecs2::ComponentTypeRegistry::instance(v245);
    v249 = re::ecs2::ComponentTypeRegistry::remove(v248, re::ecs2::ComponentImpl<re::ecs2::FrustumLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v250 = re::ecs2::ComponentImpl<re::ecs2::FrustumLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::FrustumLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v251 = re::globalAllocators(v249)[2];
      (*(*v250 + 16))(v250);
      v249 = (*(*v251 + 40))(v251, v250);
    }

    re::ecs2::ComponentImpl<re::ecs2::FrustumLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v252 = re::ecs2::ComponentTypeRegistry::instance(v249);
    v253 = re::ecs2::ComponentTypeRegistry::remove(v252, re::ecs2::ComponentImpl<re::ecs2::ShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v254 = re::ecs2::ComponentImpl<re::ecs2::ShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::ShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v255 = re::globalAllocators(v253)[2];
      (*(*v254 + 16))(v254);
      v253 = (*(*v255 + 40))(v255, v254);
    }

    re::ecs2::ComponentImpl<re::ecs2::ShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v256 = re::ecs2::ComponentTypeRegistry::instance(v253);
    v257 = re::ecs2::ComponentTypeRegistry::remove(v256, re::ecs2::ComponentImpl<re::ecs2::PointLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v258 = re::ecs2::ComponentImpl<re::ecs2::PointLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::PointLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v259 = re::globalAllocators(v257)[2];
      (*(*v258 + 16))(v258);
      v257 = (*(*v259 + 40))(v259, v258);
    }

    re::ecs2::ComponentImpl<re::ecs2::PointLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v260 = re::ecs2::ComponentTypeRegistry::instance(v257);
    v261 = re::ecs2::ComponentTypeRegistry::remove(v260, re::ecs2::ComponentImpl<re::ecs2::DirectionalLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v262 = re::ecs2::ComponentImpl<re::ecs2::DirectionalLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::DirectionalLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v263 = re::globalAllocators(v261)[2];
      (*(*v262 + 16))(v262);
      v261 = (*(*v263 + 40))(v263, v262);
    }

    re::ecs2::ComponentImpl<re::ecs2::DirectionalLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v264 = re::ecs2::ComponentTypeRegistry::instance(v261);
    v265 = re::ecs2::ComponentTypeRegistry::remove(v264, re::ecs2::ComponentImpl<re::ecs2::SpotLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v266 = re::ecs2::ComponentImpl<re::ecs2::SpotLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::SpotLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v267 = re::globalAllocators(v265)[2];
      (*(*v266 + 16))(v266);
      v265 = (*(*v267 + 40))(v267, v266);
    }

    re::ecs2::ComponentImpl<re::ecs2::SpotLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v268 = re::ecs2::ComponentTypeRegistry::instance(v265);
    v269 = re::ecs2::ComponentTypeRegistry::remove(v268, re::ecs2::ComponentImpl<re::ecs2::FilterMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v270 = re::ecs2::ComponentImpl<re::ecs2::FilterMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::FilterMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v271 = re::globalAllocators(v269)[2];
      (*(*v270 + 16))(v270);
      v269 = (*(*v271 + 40))(v271, v270);
    }

    re::ecs2::ComponentImpl<re::ecs2::FilterMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v272 = re::ecs2::ComponentTypeRegistry::instance(v269);
    v273 = re::ecs2::ComponentTypeRegistry::remove(v272, re::ecs2::ComponentImpl<re::ecs2::VFXSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v274 = re::ecs2::ComponentImpl<re::ecs2::VFXSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::VFXSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v275 = re::globalAllocators(v273)[2];
      (*(*v274 + 16))(v274);
      v273 = (*(*v275 + 40))(v275, v274);
    }

    re::ecs2::ComponentImpl<re::ecs2::VFXSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v276 = re::ecs2::ComponentTypeRegistry::instance(v273);
    v277 = re::ecs2::ComponentTypeRegistry::remove(v276, re::ecs2::ComponentImpl<re::ecs2::VFXSceneMetadataComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v278 = re::ecs2::ComponentImpl<re::ecs2::VFXSceneMetadataComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::VFXSceneMetadataComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v279 = re::globalAllocators(v277)[2];
      (*(*v278 + 16))(v278);
      v277 = (*(*v279 + 40))(v279, v278);
    }

    re::ecs2::ComponentImpl<re::ecs2::VFXSceneMetadataComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v280 = re::ecs2::ComponentTypeRegistry::instance(v277);
    v281 = re::ecs2::ComponentTypeRegistry::remove(v280, re::ecs2::ComponentImpl<re::ecs2::VFXSceneReadbackComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v282 = re::ecs2::ComponentImpl<re::ecs2::VFXSceneReadbackComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::VFXSceneReadbackComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v283 = re::globalAllocators(v281)[2];
      (*(*v282 + 16))(v282);
      v281 = (*(*v283 + 40))(v283, v282);
    }

    re::ecs2::ComponentImpl<re::ecs2::VFXSceneReadbackComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v284 = re::ecs2::ComponentTypeRegistry::instance(v281);
    v285 = re::ecs2::ComponentTypeRegistry::remove(v284, re::ecs2::ComponentImpl<re::ecs2::RenderGraphFileProviderArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v286 = re::ecs2::ComponentImpl<re::ecs2::RenderGraphFileProviderArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::RenderGraphFileProviderArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v287 = re::globalAllocators(v285)[2];
      (*(*v286 + 16))(v286);
      v285 = (*(*v287 + 40))(v287, v286);
    }

    re::ecs2::ComponentImpl<re::ecs2::RenderGraphFileProviderArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v288 = re::ecs2::ComponentTypeRegistry::instance(v285);
    v289 = re::ecs2::ComponentTypeRegistry::remove(v288, re::ecs2::ComponentImpl<re::ecs2::ListenerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v290 = re::ecs2::ComponentImpl<re::ecs2::ListenerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::ListenerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v291 = re::globalAllocators(v289)[2];
      (*(*v290 + 16))(v290);
      v289 = (*(*v291 + 40))(v291, v290);
    }

    re::ecs2::ComponentImpl<re::ecs2::ListenerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v292 = re::ecs2::ComponentTypeRegistry::instance(v289);
    v293 = re::ecs2::ComponentTypeRegistry::remove(v292, re::ecs2::ComponentImpl<re::ecs2::MaterialOverrideComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v294 = re::ecs2::ComponentImpl<re::ecs2::MaterialOverrideComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::MaterialOverrideComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v295 = re::globalAllocators(v293)[2];
      (*(*v294 + 16))(v294);
      v293 = (*(*v295 + 40))(v295, v294);
    }

    re::ecs2::ComponentImpl<re::ecs2::MaterialOverrideComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v296 = re::ecs2::ComponentTypeRegistry::instance(v293);
    v297 = re::ecs2::ComponentTypeRegistry::remove(v296, re::ecs2::ComponentImpl<re::ecs2::DirectMaterialParametersArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v298 = re::ecs2::ComponentImpl<re::ecs2::DirectMaterialParametersArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::DirectMaterialParametersArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v299 = re::globalAllocators(v297)[2];
      (*(*v298 + 16))(v298);
      v297 = (*(*v299 + 40))(v299, v298);
    }

    re::ecs2::ComponentImpl<re::ecs2::DirectMaterialParametersArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v300 = re::ecs2::ComponentTypeRegistry::instance(v297);
    v301 = re::ecs2::ComponentTypeRegistry::remove(v300, re::ecs2::ComponentImpl<re::ecs2::MaterialParameterBlockArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v302 = re::ecs2::ComponentImpl<re::ecs2::MaterialParameterBlockArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::MaterialParameterBlockArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v303 = re::globalAllocators(v301)[2];
      (*(*v302 + 16))(v302);
      v301 = (*(*v303 + 40))(v303, v302);
    }

    re::ecs2::ComponentImpl<re::ecs2::MaterialParameterBlockArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v304 = re::ecs2::ComponentTypeRegistry::instance(v301);
    v305 = re::ecs2::ComponentTypeRegistry::remove(v304, re::ecs2::ComponentImpl<re::ecs2::UnlitMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v306 = re::ecs2::ComponentImpl<re::ecs2::UnlitMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::UnlitMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v307 = re::globalAllocators(v305)[2];
      (*(*v306 + 16))(v306);
      v305 = (*(*v307 + 40))(v307, v306);
    }

    re::ecs2::ComponentImpl<re::ecs2::UnlitMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v308 = re::ecs2::ComponentTypeRegistry::instance(v305);
    v309 = re::ecs2::ComponentTypeRegistry::remove(v308, re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v310 = re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v311 = re::globalAllocators(v309)[2];
      (*(*v310 + 16))(v310);
      v309 = (*(*v311 + 40))(v311, v310);
    }

    re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v312 = re::ecs2::ComponentTypeRegistry::instance(v309);
    v313 = re::ecs2::ComponentTypeRegistry::remove(v312, re::ecs2::ComponentImpl<re::ecs2::InstanceGroupBoundsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v314 = re::ecs2::ComponentImpl<re::ecs2::InstanceGroupBoundsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::InstanceGroupBoundsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v315 = re::globalAllocators(v313)[2];
      (*(*v314 + 16))(v314);
      v313 = (*(*v315 + 40))(v315, v314);
    }

    re::ecs2::ComponentImpl<re::ecs2::InstanceGroupBoundsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v316 = re::ecs2::ComponentTypeRegistry::instance(v313);
    v317 = re::ecs2::ComponentTypeRegistry::remove(v316, re::ecs2::ComponentImpl<re::ecs2::MeshPartInstancesComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v318 = re::ecs2::ComponentImpl<re::ecs2::MeshPartInstancesComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::MeshPartInstancesComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v319 = re::globalAllocators(v317)[2];
      (*(*v318 + 16))(v318);
      v317 = (*(*v319 + 40))(v319, v318);
    }

    re::ecs2::ComponentImpl<re::ecs2::MeshPartInstancesComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v320 = re::ecs2::ComponentTypeRegistry::instance(v317);
    v321 = re::ecs2::ComponentTypeRegistry::remove(v320, re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType);
    v322 = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType)
    {
      v323 = re::globalAllocators(v321)[2];
      (*(*v322 + 16))(v322);
      v321 = (*(*v323 + 40))(v323, v322);
    }

    re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType = 0;
    v324 = re::ecs2::ComponentTypeRegistry::instance(v321);
    v325 = re::ecs2::ComponentTypeRegistry::remove(v324, re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v326 = re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v327 = re::globalAllocators(v325)[2];
      (*(*v326 + 16))(v326);
      v325 = (*(*v327 + 40))(v327, v326);
    }

    re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v328 = re::ecs2::ComponentTypeRegistry::instance(v325);
    v329 = re::ecs2::ComponentTypeRegistry::remove(v328, re::ecs2::ComponentImpl<re::ecs2::MeshSortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v330 = re::ecs2::ComponentImpl<re::ecs2::MeshSortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::MeshSortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v331 = re::globalAllocators(v329)[2];
      (*(*v330 + 16))(v330);
      v329 = (*(*v331 + 40))(v331, v330);
    }

    re::ecs2::ComponentImpl<re::ecs2::MeshSortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v332 = re::ecs2::ComponentTypeRegistry::instance(v329);
    v333 = re::ecs2::ComponentTypeRegistry::remove(v332, re::ecs2::ComponentImpl<re::ecs2::ProjectiveShadowReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v334 = re::ecs2::ComponentImpl<re::ecs2::ProjectiveShadowReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::ProjectiveShadowReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v335 = re::globalAllocators(v333)[2];
      (*(*v334 + 16))(v334);
      v333 = (*(*v335 + 40))(v335, v334);
    }

    re::ecs2::ComponentImpl<re::ecs2::ProjectiveShadowReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v336 = re::ecs2::ComponentTypeRegistry::instance(v333);
    v337 = re::ecs2::ComponentTypeRegistry::remove(v336, re::ecs2::ComponentImpl<re::ecs2::ShadowClusterComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v338 = re::ecs2::ComponentImpl<re::ecs2::ShadowClusterComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::ShadowClusterComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v339 = re::globalAllocators(v337)[2];
      (*(*v338 + 16))(v338);
      v337 = (*(*v339 + 40))(v339, v338);
    }

    re::ecs2::ComponentImpl<re::ecs2::ShadowClusterComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v340 = re::ecs2::ComponentTypeRegistry::instance(v337);
    v341 = re::ecs2::ComponentTypeRegistry::remove(v340, re::ecs2::ComponentImpl<re::ecs2::ClusterShadowMarkerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v342 = re::ecs2::ComponentImpl<re::ecs2::ClusterShadowMarkerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::ClusterShadowMarkerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v343 = re::globalAllocators(v341)[2];
      (*(*v342 + 16))(v342);
      v341 = (*(*v343 + 40))(v343, v342);
    }

    re::ecs2::ComponentImpl<re::ecs2::ClusterShadowMarkerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v344 = re::ecs2::ComponentTypeRegistry::instance(v341);
    v345 = re::ecs2::ComponentTypeRegistry::remove(v344, re::ecs2::ComponentImpl<re::ecs2::ClusterShadowSeparatorComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v346 = re::ecs2::ComponentImpl<re::ecs2::ClusterShadowSeparatorComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::ClusterShadowSeparatorComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v347 = re::globalAllocators(v345)[2];
      (*(*v346 + 16))(v346);
      v345 = (*(*v347 + 40))(v347, v346);
    }

    re::ecs2::ComponentImpl<re::ecs2::ClusterShadowSeparatorComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v348 = re::ecs2::ComponentTypeRegistry::instance(v345);
    v349 = re::ecs2::ComponentTypeRegistry::remove(v348, re::ecs2::ComponentImpl<re::ecs2::AnchorShadowMarker,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v350 = re::ecs2::ComponentImpl<re::ecs2::AnchorShadowMarker,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::AnchorShadowMarker,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v351 = re::globalAllocators(v349)[2];
      (*(*v350 + 16))(v350);
      v349 = (*(*v351 + 40))(v351, v350);
    }

    re::ecs2::ComponentImpl<re::ecs2::AnchorShadowMarker,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v352 = re::ecs2::ComponentTypeRegistry::instance(v349);
    v353 = re::ecs2::ComponentTypeRegistry::remove(v352, re::ecs2::ComponentImpl<re::ecs2::MeshDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v354 = re::ecs2::ComponentImpl<re::ecs2::MeshDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::MeshDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v355 = re::globalAllocators(v353)[2];
      (*(*v354 + 16))(v354);
      v353 = (*(*v355 + 40))(v355, v354);
    }

    re::ecs2::ComponentImpl<re::ecs2::MeshDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v356 = re::ecs2::ComponentTypeRegistry::instance(v353);
    v357 = re::ecs2::ComponentTypeRegistry::remove(v356, re::ecs2::ComponentImpl<re::ecs2::HierarchicalFadeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v358 = re::ecs2::ComponentImpl<re::ecs2::HierarchicalFadeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::HierarchicalFadeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v359 = re::globalAllocators(v357)[2];
      (*(*v358 + 16))(v358);
      v357 = (*(*v359 + 40))(v359, v358);
    }

    re::ecs2::ComponentImpl<re::ecs2::HierarchicalFadeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v360 = re::ecs2::ComponentTypeRegistry::instance(v357);
    v361 = re::ecs2::ComponentTypeRegistry::remove(v360, re::ecs2::ComponentImpl<re::ecs2::HierarchicalFadeSecondaryOpacityMarkerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v362 = re::ecs2::ComponentImpl<re::ecs2::HierarchicalFadeSecondaryOpacityMarkerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::HierarchicalFadeSecondaryOpacityMarkerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v363 = re::globalAllocators(v361)[2];
      (*(*v362 + 16))(v362);
      v361 = (*(*v363 + 40))(v363, v362);
    }

    re::ecs2::ComponentImpl<re::ecs2::HierarchicalFadeSecondaryOpacityMarkerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v364 = re::ecs2::ComponentTypeRegistry::instance(v361);
    v365 = re::ecs2::ComponentTypeRegistry::remove(v364, re::ecs2::ComponentImpl<re::ecs2::HierarchicalTintComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v366 = re::ecs2::ComponentImpl<re::ecs2::HierarchicalTintComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::HierarchicalTintComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v367 = re::globalAllocators(v365)[2];
      (*(*v366 + 16))(v366);
      v365 = (*(*v367 + 40))(v367, v366);
    }

    re::ecs2::ComponentImpl<re::ecs2::HierarchicalTintComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v368 = re::ecs2::ComponentTypeRegistry::instance(v365);
    v369 = re::ecs2::ComponentTypeRegistry::remove(v368, re::ecs2::ComponentImpl<re::ecs2::TrueToneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v370 = re::ecs2::ComponentImpl<re::ecs2::TrueToneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::TrueToneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v371 = re::globalAllocators(v369)[2];
      (*(*v370 + 16))(v370);
      v369 = (*(*v371 + 40))(v371, v370);
    }

    re::ecs2::ComponentImpl<re::ecs2::TrueToneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v372 = re::ecs2::ComponentTypeRegistry::instance(v369);
    v373 = re::ecs2::ComponentTypeRegistry::remove(v372, re::ecs2::ComponentImpl<re::ecs2::OcclusionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v374 = re::ecs2::ComponentImpl<re::ecs2::OcclusionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::OcclusionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v375 = re::globalAllocators(v373)[2];
      (*(*v374 + 16))(v374);
      v373 = (*(*v375 + 40))(v375, v374);
    }

    re::ecs2::ComponentImpl<re::ecs2::OcclusionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v376 = re::ecs2::ComponentTypeRegistry::instance(v373);
    v377 = re::ecs2::ComponentTypeRegistry::remove(v376, re::ecs2::ComponentImpl<re::ecs2::InlineDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
    v378 = re::ecs2::ComponentImpl<re::ecs2::InlineDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::InlineDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType)
    {
      v379 = re::globalAllocators(v377)[2];
      (*(*v378 + 16))(v378);
      v377 = (*(*v379 + 40))(v379, v378);
    }

    re::ecs2::ComponentImpl<re::ecs2::InlineDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType = 0;
    v380 = re::ecs2::ComponentTypeRegistry::instance(v377);
    v381 = re::ecs2::ComponentTypeRegistry::remove(v380, re::ecs2::ComponentImpl<re::ecs2::MeshSmoothComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v382 = re::ecs2::ComponentImpl<re::ecs2::MeshSmoothComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::MeshSmoothComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v383 = re::globalAllocators(v381)[2];
      (*(*v382 + 16))(v382);
      v381 = (*(*v383 + 40))(v383, v382);
    }

    re::ecs2::ComponentImpl<re::ecs2::MeshSmoothComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v384 = re::ecs2::ComponentTypeRegistry::instance(v381);
    v385 = re::ecs2::ComponentTypeRegistry::remove(v384, re::ecs2::ComponentImpl<re::ecs2::MeshOffsetsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v386 = re::ecs2::ComponentImpl<re::ecs2::MeshOffsetsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::MeshOffsetsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v387 = re::globalAllocators(v385)[2];
      (*(*v386 + 16))(v386);
      v385 = (*(*v387 + 40))(v387, v386);
    }

    re::ecs2::ComponentImpl<re::ecs2::MeshOffsetsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v388 = re::ecs2::ComponentTypeRegistry::instance(v385);
    v389 = re::ecs2::ComponentTypeRegistry::remove(v388, re::ecs2::ComponentImpl<re::ecs2::EntityFunctionConstantComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v390 = re::ecs2::ComponentImpl<re::ecs2::EntityFunctionConstantComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::EntityFunctionConstantComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v391 = re::globalAllocators(v389)[2];
      (*(*v390 + 16))(v390);
      v389 = (*(*v391 + 40))(v391, v390);
    }

    re::ecs2::ComponentImpl<re::ecs2::EntityFunctionConstantComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v392 = re::ecs2::ComponentTypeRegistry::instance(v389);
    v393 = re::ecs2::ComponentTypeRegistry::remove(v392, re::ecs2::ComponentImpl<re::ecs2::MotionStateComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v394 = re::ecs2::ComponentImpl<re::ecs2::MotionStateComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::MotionStateComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v395 = re::globalAllocators(v393)[2];
      (*(*v394 + 16))(v394);
      v393 = (*(*v395 + 40))(v395, v394);
    }

    re::ecs2::ComponentImpl<re::ecs2::MotionStateComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v396 = re::ecs2::ComponentTypeRegistry::instance(v393);
    v397 = re::ecs2::ComponentTypeRegistry::remove(v396, re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v398 = re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v399 = re::globalAllocators(v397)[2];
      (*(*v398 + 16))(v398);
      v397 = (*(*v399 + 40))(v399, v398);
    }

    re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v400 = re::ecs2::ComponentTypeRegistry::instance(v397);
    v401 = re::ecs2::ComponentTypeRegistry::remove(v400, re::ecs2::ComponentImpl<re::ecs2::OrthographicCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v402 = re::ecs2::ComponentImpl<re::ecs2::OrthographicCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::OrthographicCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v403 = re::globalAllocators(v401)[2];
      (*(*v402 + 16))(v402);
      v401 = (*(*v403 + 40))(v403, v402);
    }

    re::ecs2::ComponentImpl<re::ecs2::OrthographicCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v404 = re::ecs2::ComponentTypeRegistry::instance(v401);
    v405 = re::ecs2::ComponentTypeRegistry::remove(v404, re::ecs2::ComponentImpl<re::ecs2::PassthroughDarkeningComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v406 = re::ecs2::ComponentImpl<re::ecs2::PassthroughDarkeningComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::PassthroughDarkeningComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v407 = re::globalAllocators(v405)[2];
      (*(*v406 + 16))(v406);
      v405 = (*(*v407 + 40))(v407, v406);
    }

    re::ecs2::ComponentImpl<re::ecs2::PassthroughDarkeningComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v408 = re::ecs2::ComponentTypeRegistry::instance(v405);
    v409 = re::ecs2::ComponentTypeRegistry::remove(v408, re::ecs2::ComponentImpl<re::ecs2::PerspectiveCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v410 = re::ecs2::ComponentImpl<re::ecs2::PerspectiveCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::PerspectiveCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v411 = re::globalAllocators(v409)[2];
      (*(*v410 + 16))(v410);
      v409 = (*(*v411 + 40))(v411, v410);
    }

    re::ecs2::ComponentImpl<re::ecs2::PerspectiveCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v412 = re::ecs2::ComponentTypeRegistry::instance(v409);
    v413 = re::ecs2::ComponentTypeRegistry::remove(v412, re::ecs2::ComponentImpl<re::ecs2::PhysicsOriginComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v414 = re::ecs2::ComponentImpl<re::ecs2::PhysicsOriginComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::PhysicsOriginComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v415 = re::globalAllocators(v413)[2];
      (*(*v414 + 16))(v414);
      v413 = (*(*v415 + 40))(v415, v414);
    }

    re::ecs2::ComponentImpl<re::ecs2::PhysicsOriginComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v416 = re::ecs2::ComponentTypeRegistry::instance(v413);
    v417 = re::ecs2::ComponentTypeRegistry::remove(v416, re::ecs2::ComponentImpl<re::ecs2::PhysicsSimulationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v418 = re::ecs2::ComponentImpl<re::ecs2::PhysicsSimulationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::PhysicsSimulationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v419 = re::globalAllocators(v417)[2];
      (*(*v418 + 16))(v418);
      v417 = (*(*v419 + 40))(v419, v418);
    }

    re::ecs2::ComponentImpl<re::ecs2::PhysicsSimulationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v420 = re::ecs2::ComponentTypeRegistry::instance(v417);
    v421 = re::ecs2::ComponentTypeRegistry::remove(v420, re::ecs2::ComponentImpl<re::ecs2::PhysicsJointsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v422 = re::ecs2::ComponentImpl<re::ecs2::PhysicsJointsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::PhysicsJointsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v423 = re::globalAllocators(v421)[2];
      (*(*v422 + 16))(v422);
      v421 = (*(*v423 + 40))(v423, v422);
    }

    re::ecs2::ComponentImpl<re::ecs2::PhysicsJointsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v424 = re::ecs2::ComponentTypeRegistry::instance(v421);
    v425 = re::ecs2::ComponentTypeRegistry::remove(v424, re::ecs2::ComponentImpl<re::ecs2::PlanarReflectionCaptureComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v426 = re::ecs2::ComponentImpl<re::ecs2::PlanarReflectionCaptureComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::PlanarReflectionCaptureComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v427 = re::globalAllocators(v425)[2];
      (*(*v426 + 16))(v426);
      v425 = (*(*v427 + 40))(v427, v426);
    }

    re::ecs2::ComponentImpl<re::ecs2::PlanarReflectionCaptureComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v428 = re::ecs2::ComponentTypeRegistry::instance(v425);
    v429 = re::ecs2::ComponentTypeRegistry::remove(v428, re::ecs2::ComponentImpl<re::ecs2::PlanarReflectionReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v430 = re::ecs2::ComponentImpl<re::ecs2::PlanarReflectionReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::PlanarReflectionReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v431 = re::globalAllocators(v429)[2];
      (*(*v430 + 16))(v430);
      v429 = (*(*v431 + 40))(v431, v430);
    }

    re::ecs2::ComponentImpl<re::ecs2::PlanarReflectionReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v432 = re::ecs2::ComponentTypeRegistry::instance(v429);
    v433 = re::ecs2::ComponentTypeRegistry::remove(v432, re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v434 = re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v435 = re::globalAllocators(v433)[2];
      (*(*v434 + 16))(v434);
      v433 = (*(*v435 + 40))(v435, v434);
    }

    re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v436 = re::ecs2::ComponentTypeRegistry::instance(v433);
    v437 = re::ecs2::ComponentTypeRegistry::remove(v436, re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxWithRoundedCornersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v438 = re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxWithRoundedCornersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxWithRoundedCornersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v439 = re::globalAllocators(v437)[2];
      (*(*v438 + 16))(v438);
      v437 = (*(*v439 + 40))(v439, v438);
    }

    re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxWithRoundedCornersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v440 = re::ecs2::ComponentTypeRegistry::instance(v437);
    v441 = re::ecs2::ComponentTypeRegistry::remove(v440, re::ecs2::ComponentImpl<re::ecs2::PrimitiveCapsuleComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v442 = re::ecs2::ComponentImpl<re::ecs2::PrimitiveCapsuleComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::PrimitiveCapsuleComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v443 = re::globalAllocators(v441)[2];
      (*(*v442 + 16))(v442);
      v441 = (*(*v443 + 40))(v443, v442);
    }

    re::ecs2::ComponentImpl<re::ecs2::PrimitiveCapsuleComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v444 = re::ecs2::ComponentTypeRegistry::instance(v441);
    v445 = re::ecs2::ComponentTypeRegistry::remove(v444, re::ecs2::ComponentImpl<re::ecs2::PrimitiveConeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v446 = re::ecs2::ComponentImpl<re::ecs2::PrimitiveConeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::PrimitiveConeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v447 = re::globalAllocators(v445)[2];
      (*(*v446 + 16))(v446);
      v445 = (*(*v447 + 40))(v447, v446);
    }

    re::ecs2::ComponentImpl<re::ecs2::PrimitiveConeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v448 = re::ecs2::ComponentTypeRegistry::instance(v445);
    v449 = re::ecs2::ComponentTypeRegistry::remove(v448, re::ecs2::ComponentImpl<re::ecs2::PrimitiveCylinderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v450 = re::ecs2::ComponentImpl<re::ecs2::PrimitiveCylinderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::PrimitiveCylinderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v451 = re::globalAllocators(v449)[2];
      (*(*v450 + 16))(v450);
      v449 = (*(*v451 + 40))(v451, v450);
    }

    re::ecs2::ComponentImpl<re::ecs2::PrimitiveCylinderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v452 = re::ecs2::ComponentTypeRegistry::instance(v449);
    v453 = re::ecs2::ComponentTypeRegistry::remove(v452, re::ecs2::ComponentImpl<re::ecs2::PrimitivePlaneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v454 = re::ecs2::ComponentImpl<re::ecs2::PrimitivePlaneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::PrimitivePlaneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v455 = re::globalAllocators(v453)[2];
      (*(*v454 + 16))(v454);
      v453 = (*(*v455 + 40))(v455, v454);
    }

    re::ecs2::ComponentImpl<re::ecs2::PrimitivePlaneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v456 = re::ecs2::ComponentTypeRegistry::instance(v453);
    v457 = re::ecs2::ComponentTypeRegistry::remove(v456, re::ecs2::ComponentImpl<re::ecs2::PrimitivePyramidComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v458 = re::ecs2::ComponentImpl<re::ecs2::PrimitivePyramidComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::PrimitivePyramidComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v459 = re::globalAllocators(v457)[2];
      (*(*v458 + 16))(v458);
      v457 = (*(*v459 + 40))(v459, v458);
    }

    re::ecs2::ComponentImpl<re::ecs2::PrimitivePyramidComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v460 = re::ecs2::ComponentTypeRegistry::instance(v457);
    v461 = re::ecs2::ComponentTypeRegistry::remove(v460, re::ecs2::ComponentImpl<re::ecs2::PrimitiveSphereComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v462 = re::ecs2::ComponentImpl<re::ecs2::PrimitiveSphereComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::PrimitiveSphereComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v463 = re::globalAllocators(v461)[2];
      (*(*v462 + 16))(v462);
      v461 = (*(*v463 + 40))(v463, v462);
    }

    re::ecs2::ComponentImpl<re::ecs2::PrimitiveSphereComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v464 = re::ecs2::ComponentTypeRegistry::instance(v461);
    v465 = re::ecs2::ComponentTypeRegistry::remove(v464, re::ecs2::ComponentImpl<re::ecs2::PrimitiveTetrahedronComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v466 = re::ecs2::ComponentImpl<re::ecs2::PrimitiveTetrahedronComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::PrimitiveTetrahedronComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v467 = re::globalAllocators(v465)[2];
      (*(*v466 + 16))(v466);
      v465 = (*(*v467 + 40))(v467, v466);
    }

    re::ecs2::ComponentImpl<re::ecs2::PrimitiveTetrahedronComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v468 = re::ecs2::ComponentTypeRegistry::instance(v465);
    v469 = re::ecs2::ComponentTypeRegistry::remove(v468, re::ecs2::ComponentImpl<re::ecs2::PrimitiveTubeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v470 = re::ecs2::ComponentImpl<re::ecs2::PrimitiveTubeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::PrimitiveTubeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v471 = re::globalAllocators(v469)[2];
      (*(*v470 + 16))(v470);
      v469 = (*(*v471 + 40))(v471, v470);
    }

    re::ecs2::ComponentImpl<re::ecs2::PrimitiveTubeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v472 = re::ecs2::ComponentTypeRegistry::instance(v469);
    v473 = re::ecs2::ComponentTypeRegistry::remove(v472, re::ecs2::ComponentImpl<re::ecs2::RayCastComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
    v474 = re::ecs2::ComponentImpl<re::ecs2::RayCastComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::RayCastComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType)
    {
      v475 = re::globalAllocators(v473)[2];
      (*(*v474 + 16))(v474);
      v473 = (*(*v475 + 40))(v475, v474);
    }

    re::ecs2::ComponentImpl<re::ecs2::RayCastComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType = 0;
    v476 = re::ecs2::ComponentTypeRegistry::instance(v473);
    v477 = re::ecs2::ComponentTypeRegistry::remove(v476, re::ecs2::ComponentImpl<re::ecs2::RayCastResultComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
    v478 = re::ecs2::ComponentImpl<re::ecs2::RayCastResultComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::RayCastResultComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType)
    {
      v479 = re::globalAllocators(v477)[2];
      (*(*v478 + 16))(v478);
      v477 = (*(*v479 + 40))(v479, v478);
    }

    re::ecs2::ComponentImpl<re::ecs2::RayCastResultComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType = 0;
    v480 = re::ecs2::ComponentTypeRegistry::instance(v477);
    v481 = re::ecs2::ComponentTypeRegistry::remove(v480, re::ecs2::ComponentImpl<re::ecs2::RayTracedShadowReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v482 = re::ecs2::ComponentImpl<re::ecs2::RayTracedShadowReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::RayTracedShadowReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v483 = re::globalAllocators(v481)[2];
      (*(*v482 + 16))(v482);
      v481 = (*(*v483 + 40))(v483, v482);
    }

    re::ecs2::ComponentImpl<re::ecs2::RayTracedShadowReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v484 = re::ecs2::ComponentTypeRegistry::instance(v481);
    v485 = re::ecs2::ComponentTypeRegistry::remove(v484, re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v486 = re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v487 = re::globalAllocators(v485)[2];
      (*(*v486 + 16))(v486);
      v485 = (*(*v487 + 40))(v487, v486);
    }

    re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v488 = re::ecs2::ComponentTypeRegistry::instance(v485);
    v489 = re::ecs2::ComponentTypeRegistry::remove(v488, re::ecs2::ComponentImpl<re::ecs2::PhysicsDebugComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v490 = re::ecs2::ComponentImpl<re::ecs2::PhysicsDebugComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::PhysicsDebugComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v491 = re::globalAllocators(v489)[2];
      (*(*v490 + 16))(v490);
      v489 = (*(*v491 + 40))(v491, v490);
    }

    re::ecs2::ComponentImpl<re::ecs2::PhysicsDebugComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v492 = re::ecs2::ComponentTypeRegistry::instance(v489);
    v493 = re::ecs2::ComponentTypeRegistry::remove(v492, re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v494 = re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v495 = re::globalAllocators(v493)[2];
      (*(*v494 + 16))(v494);
      v493 = (*(*v495 + 40))(v495, v494);
    }

    re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v496 = re::ecs2::ComponentTypeRegistry::instance(v493);
    v497 = re::ecs2::ComponentTypeRegistry::remove(v496, re::ecs2::ComponentImpl<re::ecs2::RigComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v498 = re::ecs2::ComponentImpl<re::ecs2::RigComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::RigComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v499 = re::globalAllocators(v497)[2];
      (*(*v498 + 16))(v498);
      v497 = (*(*v499 + 40))(v499, v498);
    }

    re::ecs2::ComponentImpl<re::ecs2::RigComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v500 = re::ecs2::ComponentTypeRegistry::instance(v497);
    v501 = re::ecs2::ComponentTypeRegistry::remove(v500, re::ecs2::ComponentImpl<re::ecs2::IKParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v502 = re::ecs2::ComponentImpl<re::ecs2::IKParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::IKParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v503 = re::globalAllocators(v501)[2];
      (*(*v502 + 16))(v502);
      v501 = (*(*v503 + 40))(v503, v502);
    }

    re::ecs2::ComponentImpl<re::ecs2::IKParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v504 = re::ecs2::ComponentTypeRegistry::instance(v501);
    v505 = re::ecs2::ComponentTypeRegistry::remove(v504, re::ecs2::ComponentImpl<re::ecs2::InputTargetComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v506 = re::ecs2::ComponentImpl<re::ecs2::InputTargetComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::InputTargetComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v507 = re::globalAllocators(v505)[2];
      (*(*v506 + 16))(v506);
      v505 = (*(*v507 + 40))(v507, v506);
    }

    re::ecs2::ComponentImpl<re::ecs2::InputTargetComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v508 = re::ecs2::ComponentTypeRegistry::instance(v505);
    v509 = re::ecs2::ComponentTypeRegistry::remove(v508, re::ecs2::ComponentImpl<re::ecs2::TransformInteractionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v510 = re::ecs2::ComponentImpl<re::ecs2::TransformInteractionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::TransformInteractionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v511 = re::globalAllocators(v509)[2];
      (*(*v510 + 16))(v510);
      v509 = (*(*v511 + 40))(v511, v510);
    }

    re::ecs2::ComponentImpl<re::ecs2::TransformInteractionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v512 = re::ecs2::ComponentTypeRegistry::instance(v509);
    v513 = re::ecs2::ComponentTypeRegistry::remove(v512, re::ecs2::ComponentImpl<re::ecs2::ManipulationHitTargetComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v514 = re::ecs2::ComponentImpl<re::ecs2::ManipulationHitTargetComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::ManipulationHitTargetComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v515 = re::globalAllocators(v513)[2];
      (*(*v514 + 16))(v514);
      v513 = (*(*v515 + 40))(v515, v514);
    }

    re::ecs2::ComponentImpl<re::ecs2::ManipulationHitTargetComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v516 = re::ecs2::ComponentTypeRegistry::instance(v513);
    v517 = re::ecs2::ComponentTypeRegistry::remove(v516, re::ecs2::ComponentImpl<re::ecs2::SkeletalDebugComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v518 = re::ecs2::ComponentImpl<re::ecs2::SkeletalDebugComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::SkeletalDebugComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v519 = re::globalAllocators(v517)[2];
      (*(*v518 + 16))(v518);
      v517 = (*(*v519 + 40))(v519, v518);
    }

    re::ecs2::ComponentImpl<re::ecs2::SkeletalDebugComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v520 = re::ecs2::ComponentTypeRegistry::instance(v517);
    v521 = re::ecs2::ComponentTypeRegistry::remove(v520, re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseBufferComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v522 = re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseBufferComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseBufferComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v523 = re::globalAllocators(v521)[2];
      (*(*v522 + 16))(v522);
      v521 = (*(*v523 + 40))(v523, v522);
    }

    re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseBufferComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v524 = re::ecs2::ComponentTypeRegistry::instance(v521);
    v525 = re::ecs2::ComponentTypeRegistry::remove(v524, re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v526 = re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v527 = re::globalAllocators(v525)[2];
      (*(*v526 + 16))(v526);
      v525 = (*(*v527 + 40))(v527, v526);
    }

    re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v528 = re::ecs2::ComponentTypeRegistry::instance(v525);
    v529 = re::ecs2::ComponentTypeRegistry::remove(v528, re::ecs2::ComponentImpl<re::ecs2::SkyboxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v530 = re::ecs2::ComponentImpl<re::ecs2::SkyboxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::SkyboxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v531 = re::globalAllocators(v529)[2];
      (*(*v530 + 16))(v530);
      v529 = (*(*v531 + 40))(v531, v530);
    }

    re::ecs2::ComponentImpl<re::ecs2::SkyboxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v532 = re::ecs2::ComponentTypeRegistry::instance(v529);
    v533 = re::ecs2::ComponentTypeRegistry::remove(v532, re::ecs2::ComponentImpl<re::ecs2::StateMachineComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v534 = re::ecs2::ComponentImpl<re::ecs2::StateMachineComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::StateMachineComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v535 = re::globalAllocators(v533)[2];
      (*(*v534 + 16))(v534);
      v533 = (*(*v535 + 40))(v535, v534);
    }

    re::ecs2::ComponentImpl<re::ecs2::StateMachineComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v536 = re::ecs2::ComponentTypeRegistry::instance(v533);
    v537 = re::ecs2::ComponentTypeRegistry::remove(v536, re::ecs2::ComponentImpl<re::ecs2::StaticTextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v538 = re::ecs2::ComponentImpl<re::ecs2::StaticTextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::StaticTextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v539 = re::globalAllocators(v537)[2];
      (*(*v538 + 16))(v538);
      v537 = (*(*v539 + 40))(v539, v538);
    }

    re::ecs2::ComponentImpl<re::ecs2::StaticTextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v540 = re::ecs2::ComponentTypeRegistry::instance(v537);
    v541 = re::ecs2::ComponentTypeRegistry::remove(v540, re::ecs2::ComponentImpl<re::ecs2::Static3DTextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v542 = re::ecs2::ComponentImpl<re::ecs2::Static3DTextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::Static3DTextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v543 = re::globalAllocators(v541)[2];
      (*(*v542 + 16))(v542);
      v541 = (*(*v543 + 40))(v543, v542);
    }

    re::ecs2::ComponentImpl<re::ecs2::Static3DTextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v544 = re::ecs2::ComponentTypeRegistry::instance(v541);
    v545 = re::ecs2::ComponentTypeRegistry::remove(v544, re::ecs2::ComponentImpl<re::ecs2::TextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v546 = re::ecs2::ComponentImpl<re::ecs2::TextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::TextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v547 = re::globalAllocators(v545)[2];
      (*(*v546 + 16))(v546);
      v545 = (*(*v547 + 40))(v547, v546);
    }

    re::ecs2::ComponentImpl<re::ecs2::TextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v548 = re::ecs2::ComponentTypeRegistry::instance(v545);
    v549 = re::ecs2::ComponentTypeRegistry::remove(v548, re::ecs2::ComponentImpl<re::ecs2::SubsceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v550 = re::ecs2::ComponentImpl<re::ecs2::SubsceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::SubsceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v551 = re::globalAllocators(v549)[2];
      (*(*v550 + 16))(v550);
      v549 = (*(*v551 + 40))(v551, v550);
    }

    re::ecs2::ComponentImpl<re::ecs2::SubsceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v552 = re::ecs2::ComponentTypeRegistry::instance(v549);
    v553 = re::ecs2::ComponentTypeRegistry::remove(v552, re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v554 = re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v555 = re::globalAllocators(v553)[2];
      (*(*v554 + 16))(v554);
      v553 = (*(*v555 + 40))(v555, v554);
    }

    re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v556 = re::ecs2::ComponentTypeRegistry::instance(v553);
    v557 = re::ecs2::ComponentTypeRegistry::remove(v556, re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v558 = re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v559 = re::globalAllocators(v557)[2];
      (*(*v558 + 16))(v558);
      v557 = (*(*v559 + 40))(v559, v558);
    }

    re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v560 = re::ecs2::ComponentTypeRegistry::instance(v557);
    v561 = re::ecs2::ComponentTypeRegistry::remove(v560, re::ecs2::ComponentImpl<re::ecs2::UISortingCodirectionalGroupConfigComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v562 = re::ecs2::ComponentImpl<re::ecs2::UISortingCodirectionalGroupConfigComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::UISortingCodirectionalGroupConfigComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v563 = re::globalAllocators(v561)[2];
      (*(*v562 + 16))(v562);
      v561 = (*(*v563 + 40))(v563, v562);
    }

    re::ecs2::ComponentImpl<re::ecs2::UISortingCodirectionalGroupConfigComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v564 = re::ecs2::ComponentTypeRegistry::instance(v561);
    v565 = re::ecs2::ComponentTypeRegistry::remove(v564, re::ecs2::ComponentImpl<re::ecs2::RemoteEffectsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v566 = re::ecs2::ComponentImpl<re::ecs2::RemoteEffectsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::RemoteEffectsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v567 = re::globalAllocators(v565)[2];
      (*(*v566 + 16))(v566);
      v565 = (*(*v567 + 40))(v567, v566);
    }

    re::ecs2::ComponentImpl<re::ecs2::RemoteEffectsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v568 = re::ecs2::ComponentTypeRegistry::instance(v565);
    v569 = re::ecs2::ComponentTypeRegistry::remove(v568, re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v570 = re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v571 = re::globalAllocators(v569)[2];
      (*(*v570 + 16))(v570);
      v569 = (*(*v571 + 40))(v571, v570);
    }

    re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v572 = re::ecs2::ComponentTypeRegistry::instance(v569);
    v573 = re::ecs2::ComponentTypeRegistry::remove(v572, re::ecs2::ComponentImpl<re::ecs2::VideoPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v574 = re::ecs2::ComponentImpl<re::ecs2::VideoPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::VideoPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v575 = re::globalAllocators(v573)[2];
      (*(*v574 + 16))(v574);
      v573 = (*(*v575 + 40))(v575, v574);
    }

    re::ecs2::ComponentImpl<re::ecs2::VideoPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v576 = re::ecs2::ComponentTypeRegistry::instance(v573);
    v577 = re::ecs2::ComponentTypeRegistry::remove(v576, re::ecs2::ComponentImpl<re::ecs2::VideoProxyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v578 = re::ecs2::ComponentImpl<re::ecs2::VideoProxyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::VideoProxyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v579 = re::globalAllocators(v577)[2];
      (*(*v578 + 16))(v578);
      v577 = (*(*v579 + 40))(v579, v578);
    }

    re::ecs2::ComponentImpl<re::ecs2::VideoProxyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v580 = re::ecs2::ComponentTypeRegistry::instance(v577);
    v581 = re::ecs2::ComponentTypeRegistry::remove(v580, re::ecs2::ComponentImpl<re::ecs2::VideoPlayerStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v582 = re::ecs2::ComponentImpl<re::ecs2::VideoPlayerStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::VideoPlayerStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v583 = re::globalAllocators(v581)[2];
      (*(*v582 + 16))(v582);
      v581 = (*(*v583 + 40))(v583, v582);
    }

    re::ecs2::ComponentImpl<re::ecs2::VideoPlayerStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v584 = re::ecs2::ComponentTypeRegistry::instance(v581);
    v585 = re::ecs2::ComponentTypeRegistry::remove(v584, re::ecs2::ComponentImpl<re::ecs2::SceneUnderstandingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v586 = re::ecs2::ComponentImpl<re::ecs2::SceneUnderstandingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::SceneUnderstandingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v587 = re::globalAllocators(v585)[2];
      (*(*v586 + 16))(v586);
      v585 = (*(*v587 + 40))(v587, v586);
    }

    re::ecs2::ComponentImpl<re::ecs2::SceneUnderstandingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v588 = re::ecs2::ComponentTypeRegistry::instance(v585);
    v589 = re::ecs2::ComponentTypeRegistry::remove(v588, re::ecs2::ComponentImpl<re::ecs2::SceneUnderstandingRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v590 = re::ecs2::ComponentImpl<re::ecs2::SceneUnderstandingRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::SceneUnderstandingRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v591 = re::globalAllocators(v589)[2];
      (*(*v590 + 16))(v590);
      v589 = (*(*v591 + 40))(v591, v590);
    }

    re::ecs2::ComponentImpl<re::ecs2::SceneUnderstandingRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v592 = re::ecs2::ComponentTypeRegistry::instance(v589);
    v593 = re::ecs2::ComponentTypeRegistry::remove(v592, re::ecs2::ComponentImpl<re::ecs2::SceneUnderstandingRenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v594 = re::ecs2::ComponentImpl<re::ecs2::SceneUnderstandingRenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::SceneUnderstandingRenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v595 = re::globalAllocators(v593)[2];
      (*(*v594 + 16))(v594);
      v593 = (*(*v595 + 40))(v595, v594);
    }

    re::ecs2::ComponentImpl<re::ecs2::SceneUnderstandingRenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v596 = re::ecs2::ComponentTypeRegistry::instance(v593);
    v597 = re::ecs2::ComponentTypeRegistry::remove(v596, re::ecs2::ComponentImpl<re::ecs2::SpatialSceneClassificationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v598 = re::ecs2::ComponentImpl<re::ecs2::SpatialSceneClassificationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::SpatialSceneClassificationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v599 = re::globalAllocators(v597)[2];
      (*(*v598 + 16))(v598);
      v597 = (*(*v599 + 40))(v599, v598);
    }

    re::ecs2::ComponentImpl<re::ecs2::SpatialSceneClassificationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v600 = re::ecs2::ComponentTypeRegistry::instance(v597);
    v601 = re::ecs2::ComponentTypeRegistry::remove(v600, re::ecs2::ComponentImpl<re::ecs2::GroundPlaneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v602 = re::ecs2::ComponentImpl<re::ecs2::GroundPlaneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::GroundPlaneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v603 = re::globalAllocators(v601)[2];
      (*(*v602 + 16))(v602);
      v601 = (*(*v603 + 40))(v603, v602);
    }

    re::ecs2::ComponentImpl<re::ecs2::GroundPlaneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v604 = re::ecs2::ComponentTypeRegistry::instance(v601);
    v605 = re::ecs2::ComponentTypeRegistry::remove(v604, re::ecs2::ComponentImpl<re::ecs2::PinComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v606 = re::ecs2::ComponentImpl<re::ecs2::PinComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::PinComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v607 = re::globalAllocators(v605)[2];
      (*(*v606 + 16))(v606);
      v605 = (*(*v607 + 40))(v607, v606);
    }

    re::ecs2::ComponentImpl<re::ecs2::PinComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v608 = re::ecs2::ComponentTypeRegistry::instance(v605);
    v609 = re::ecs2::ComponentTypeRegistry::remove(v608, re::ecs2::ComponentImpl<re::ecs2::AttachedTransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v610 = re::ecs2::ComponentImpl<re::ecs2::AttachedTransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::AttachedTransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v611 = re::globalAllocators(v609)[2];
      (*(*v610 + 16))(v610);
      v609 = (*(*v611 + 40))(v611, v610);
    }

    re::ecs2::ComponentImpl<re::ecs2::AttachedTransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v612 = re::ecs2::ComponentTypeRegistry::instance(v609);
    v613 = re::ecs2::ComponentTypeRegistry::remove(v612, re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v614 = re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v615 = re::globalAllocators(v613)[2];
      (*(*v614 + 16))(v614);
      v613 = (*(*v615 + 40))(v615, v614);
    }

    re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v616 = re::ecs2::ComponentTypeRegistry::instance(v613);
    v617 = re::ecs2::ComponentTypeRegistry::remove(v616, re::ecs2::ComponentImpl<re::ecs2::PortalComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v618 = re::ecs2::ComponentImpl<re::ecs2::PortalComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::PortalComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v619 = re::globalAllocators(v617)[2];
      (*(*v618 + 16))(v618);
      v617 = (*(*v619 + 40))(v619, v618);
    }

    re::ecs2::ComponentImpl<re::ecs2::PortalComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v620 = re::ecs2::ComponentTypeRegistry::instance(v617);
    v621 = re::ecs2::ComponentTypeRegistry::remove(v620, re::ecs2::ComponentImpl<re::ecs2::WorldScopeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v622 = re::ecs2::ComponentImpl<re::ecs2::WorldScopeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::WorldScopeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v623 = re::globalAllocators(v621)[2];
      (*(*v622 + 16))(v622);
      v621 = (*(*v623 + 40))(v623, v622);
    }

    re::ecs2::ComponentImpl<re::ecs2::WorldScopeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v624 = re::ecs2::ComponentTypeRegistry::instance(v621);
    v625 = re::ecs2::ComponentTypeRegistry::remove(v624, re::ecs2::ComponentImpl<re::ecs2::WorldRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v626 = re::ecs2::ComponentImpl<re::ecs2::WorldRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::WorldRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v627 = re::globalAllocators(v625)[2];
      (*(*v626 + 16))(v626);
      v625 = (*(*v627 + 40))(v627, v626);
    }

    re::ecs2::ComponentImpl<re::ecs2::WorldRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v628 = re::ecs2::ComponentTypeRegistry::instance(v625);
    v629 = re::ecs2::ComponentTypeRegistry::remove(v628, re::ecs2::ComponentImpl<re::ecs2::PortalCrossingFlagsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v630 = re::ecs2::ComponentImpl<re::ecs2::PortalCrossingFlagsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::PortalCrossingFlagsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v631 = re::globalAllocators(v629)[2];
      (*(*v630 + 16))(v630);
      v629 = (*(*v631 + 40))(v631, v630);
    }

    re::ecs2::ComponentImpl<re::ecs2::PortalCrossingFlagsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v632 = re::ecs2::ComponentTypeRegistry::instance(v629);
    v633 = re::ecs2::ComponentTypeRegistry::remove(v632, re::ecs2::ComponentImpl<re::ecs2::VertexCacheComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v634 = re::ecs2::ComponentImpl<re::ecs2::VertexCacheComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::VertexCacheComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v635 = re::globalAllocators(v633)[2];
      (*(*v634 + 16))(v634);
      v633 = (*(*v635 + 40))(v635, v634);
    }

    re::ecs2::ComponentImpl<re::ecs2::VertexCacheComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v636 = re::ecs2::ComponentTypeRegistry::instance(v633);
    v637 = re::ecs2::ComponentTypeRegistry::remove(v636, re::ecs2::ComponentImpl<re::ecs2::VisualProxyCaptureComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v638 = re::ecs2::ComponentImpl<re::ecs2::VisualProxyCaptureComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::VisualProxyCaptureComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v639 = re::globalAllocators(v637)[2];
      (*(*v638 + 16))(v638);
      v637 = (*(*v639 + 40))(v639, v638);
    }

    re::ecs2::ComponentImpl<re::ecs2::VisualProxyCaptureComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v640 = re::ecs2::ComponentTypeRegistry::instance(v637);
    v641 = re::ecs2::ComponentTypeRegistry::remove(v640, re::ecs2::ComponentImpl<re::ecs2::VisualProxyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v642 = re::ecs2::ComponentImpl<re::ecs2::VisualProxyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::VisualProxyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v643 = re::globalAllocators(v641)[2];
      (*(*v642 + 16))(v642);
      v641 = (*(*v643 + 40))(v643, v642);
    }

    re::ecs2::ComponentImpl<re::ecs2::VisualProxyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v644 = re::ecs2::ComponentTypeRegistry::instance(v641);
    v645 = re::ecs2::ComponentTypeRegistry::remove(v644, re::ecs2::ComponentImpl<re::ecs2::VisualProxyFilterComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v646 = re::ecs2::ComponentImpl<re::ecs2::VisualProxyFilterComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::VisualProxyFilterComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v647 = re::globalAllocators(v645)[2];
      (*(*v646 + 16))(v646);
      v645 = (*(*v647 + 40))(v647, v646);
    }

    re::ecs2::ComponentImpl<re::ecs2::VisualProxyFilterComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v648 = re::ecs2::ComponentTypeRegistry::instance(v645);
    v649 = re::ecs2::ComponentTypeRegistry::remove(v648, re::ecs2::ComponentImpl<re::ecs2::VisualProxyScopeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v650 = re::ecs2::ComponentImpl<re::ecs2::VisualProxyScopeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::VisualProxyScopeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v651 = re::globalAllocators(v649)[2];
      (*(*v650 + 16))(v650);
      v649 = (*(*v651 + 40))(v651, v650);
    }

    re::ecs2::ComponentImpl<re::ecs2::VisualProxyScopeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v652 = re::ecs2::ComponentTypeRegistry::instance(v649);
    v653 = re::ecs2::ComponentTypeRegistry::remove(v652, re::ecs2::ComponentImpl<re::ecs2::VisualProxyScopeTraceComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v654 = re::ecs2::ComponentImpl<re::ecs2::VisualProxyScopeTraceComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::VisualProxyScopeTraceComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v655 = re::globalAllocators(v653)[2];
      (*(*v654 + 16))(v654);
      v653 = (*(*v655 + 40))(v655, v654);
    }

    re::ecs2::ComponentImpl<re::ecs2::VisualProxyScopeTraceComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v656 = re::ecs2::ComponentTypeRegistry::instance(v653);
    v657 = re::ecs2::ComponentTypeRegistry::remove(v656, re::ecs2::ComponentImpl<re::ecs2::AllowsCASeparatedProxyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v658 = re::ecs2::ComponentImpl<re::ecs2::AllowsCASeparatedProxyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::AllowsCASeparatedProxyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v659 = re::globalAllocators(v657)[2];
      (*(*v658 + 16))(v658);
      v657 = (*(*v659 + 40))(v659, v658);
    }

    re::ecs2::ComponentImpl<re::ecs2::AllowsCASeparatedProxyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v660 = re::ecs2::ComponentTypeRegistry::instance(v657);
    v661 = re::ecs2::ComponentTypeRegistry::remove(v660, re::ecs2::ComponentImpl<re::ecs2::ThrottleComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v662 = re::ecs2::ComponentImpl<re::ecs2::ThrottleComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::ThrottleComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v663 = re::globalAllocators(v661)[2];
      (*(*v662 + 16))(v662);
      v661 = (*(*v663 + 40))(v663, v662);
    }

    re::ecs2::ComponentImpl<re::ecs2::ThrottleComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v664 = re::ecs2::ComponentTypeRegistry::instance(v661);
    v665 = re::ecs2::ComponentTypeRegistry::remove(v664, re::ecs2::ComponentImpl<re::ecs2::TimebaseComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v666 = re::ecs2::ComponentImpl<re::ecs2::TimebaseComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::TimebaseComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v667 = re::globalAllocators(v665)[2];
      (*(*v666 + 16))(v666);
      v665 = (*(*v667 + 40))(v667, v666);
    }

    re::ecs2::ComponentImpl<re::ecs2::TimebaseComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v668 = re::ecs2::ComponentTypeRegistry::instance(v665);
    v669 = re::ecs2::ComponentTypeRegistry::remove(v668, re::ecs2::ComponentImpl<re::ecs2::NetworkAssetComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v670 = re::ecs2::ComponentImpl<re::ecs2::NetworkAssetComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::NetworkAssetComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v671 = re::globalAllocators(v669)[2];
      (*(*v670 + 16))(v670);
      v669 = (*(*v671 + 40))(v671, v670);
    }

    re::ecs2::ComponentImpl<re::ecs2::NetworkAssetComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v672 = re::ecs2::ComponentTypeRegistry::instance(v669);
    v673 = re::ecs2::ComponentTypeRegistry::remove(v672, re::ecs2::ComponentImpl<re::ecs2::DepthMitigationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v674 = re::ecs2::ComponentImpl<re::ecs2::DepthMitigationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::DepthMitigationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v675 = re::globalAllocators(v673)[2];
      (*(*v674 + 16))(v674);
      v673 = (*(*v675 + 40))(v675, v674);
    }

    re::ecs2::ComponentImpl<re::ecs2::DepthMitigationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v676 = re::ecs2::ComponentTypeRegistry::instance(v673);
    v677 = re::ecs2::ComponentTypeRegistry::remove(v676, re::ecs2::ComponentImpl<re::ecs2::DeferredActivationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v678 = re::ecs2::ComponentImpl<re::ecs2::DeferredActivationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::DeferredActivationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v679 = re::globalAllocators(v677)[2];
      (*(*v678 + 16))(v678);
      v677 = (*(*v679 + 40))(v679, v678);
    }

    re::ecs2::ComponentImpl<re::ecs2::DeferredActivationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v680 = re::ecs2::ComponentTypeRegistry::instance(v677);
    v681 = re::ecs2::ComponentTypeRegistry::remove(v680, re::ecs2::ComponentImpl<re::ecs2::LoadTraceComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v682 = re::ecs2::ComponentImpl<re::ecs2::LoadTraceComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::LoadTraceComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v683 = re::globalAllocators(v681)[2];
      (*(*v682 + 16))(v682);
      v681 = (*(*v683 + 40))(v683, v682);
    }

    re::ecs2::ComponentImpl<re::ecs2::LoadTraceComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v684 = re::ecs2::ComponentTypeRegistry::instance(v681);
    v685 = re::ecs2::ComponentTypeRegistry::remove(v684, re::ecs2::ComponentImpl<re::ecs2::LatencyEventsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v686 = re::ecs2::ComponentImpl<re::ecs2::LatencyEventsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::LatencyEventsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v687 = re::globalAllocators(v685)[2];
      (*(*v686 + 16))(v686);
      v685 = (*(*v687 + 40))(v687, v686);
    }

    re::ecs2::ComponentImpl<re::ecs2::LatencyEventsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v688 = re::ecs2::ComponentTypeRegistry::instance(v685);
    v689 = re::ecs2::ComponentTypeRegistry::remove(v688, re::ecs2::ComponentImpl<re::ecs2::RenderCallbacksComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v690 = re::ecs2::ComponentImpl<re::ecs2::RenderCallbacksComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::RenderCallbacksComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v691 = re::globalAllocators(v689)[2];
      (*(*v690 + 16))(v690);
      v689 = (*(*v691 + 40))(v691, v690);
    }

    re::ecs2::ComponentImpl<re::ecs2::RenderCallbacksComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v692 = re::ecs2::ComponentTypeRegistry::instance(v689);
    v693 = re::ecs2::ComponentTypeRegistry::remove(v692, re::ecs2::ComponentImpl<re::ecs2::TintComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v694 = re::ecs2::ComponentImpl<re::ecs2::TintComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::TintComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v695 = re::globalAllocators(v693)[2];
      (*(*v694 + 16))(v694);
      v693 = (*(*v695 + 40))(v695, v694);
    }

    re::ecs2::ComponentImpl<re::ecs2::TintComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v696 = re::ecs2::ComponentTypeRegistry::instance(v693);
    v697 = re::ecs2::ComponentTypeRegistry::remove(v696, re::ecs2::ComponentImpl<re::ecs2::ProbeClusterExclusionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v698 = re::ecs2::ComponentImpl<re::ecs2::ProbeClusterExclusionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::ProbeClusterExclusionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v699 = re::globalAllocators(v697)[2];
      (*(*v698 + 16))(v698);
      v697 = (*(*v699 + 40))(v699, v698);
    }

    re::ecs2::ComponentImpl<re::ecs2::ProbeClusterExclusionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v700 = re::ecs2::ComponentTypeRegistry::instance(v697);
    v701 = re::ecs2::ComponentTypeRegistry::remove(v700, re::ecs2::ComponentImpl<re::ecs2::LinkedTLEComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v702 = re::ecs2::ComponentImpl<re::ecs2::LinkedTLEComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::LinkedTLEComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v703 = re::globalAllocators(v701)[2];
      (*(*v702 + 16))(v702);
      v701 = (*(*v703 + 40))(v703, v702);
    }

    re::ecs2::ComponentImpl<re::ecs2::LinkedTLEComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v704 = re::ecs2::ComponentTypeRegistry::instance(v701);
    v705 = re::ecs2::ComponentTypeRegistry::remove(v704, re::ecs2::ComponentImpl<re::ecs2::AssetStateComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v706 = re::ecs2::ComponentImpl<re::ecs2::AssetStateComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::AssetStateComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v707 = re::globalAllocators(v705)[2];
      (*(*v706 + 16))(v706);
      v705 = (*(*v707 + 40))(v707, v706);
    }

    re::ecs2::ComponentImpl<re::ecs2::AssetStateComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v708 = re::ecs2::ComponentTypeRegistry::instance(v705);
    v709 = re::ecs2::ComponentTypeRegistry::remove(v708, re::ecs2::ComponentImpl<re::ecs2::AssetPreloadComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v710 = re::ecs2::ComponentImpl<re::ecs2::AssetPreloadComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::AssetPreloadComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v711 = re::globalAllocators(v709)[2];
      (*(*v710 + 16))(v710);
      v709 = (*(*v711 + 40))(v711, v710);
    }

    re::ecs2::ComponentImpl<re::ecs2::AssetPreloadComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v712 = re::ecs2::ComponentTypeRegistry::instance(v709);
    v713 = re::ecs2::ComponentTypeRegistry::remove(v712, re::ecs2::ComponentImpl<re::ecs2::ImageBasedReflectionRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v714 = re::ecs2::ComponentImpl<re::ecs2::ImageBasedReflectionRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::ImageBasedReflectionRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v715 = re::globalAllocators(v713)[2];
      (*(*v714 + 16))(v714);
      v713 = (*(*v715 + 40))(v715, v714);
    }

    re::ecs2::ComponentImpl<re::ecs2::ImageBasedReflectionRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v716 = re::ecs2::ComponentTypeRegistry::instance(v713);
    v717 = re::ecs2::ComponentTypeRegistry::remove(v716, re::ecs2::ComponentImpl<re::ecs2::ImageBasedReflectionContentComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v718 = re::ecs2::ComponentImpl<re::ecs2::ImageBasedReflectionContentComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::ImageBasedReflectionContentComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v719 = re::globalAllocators(v717)[2];
      (*(*v718 + 16))(v718);
      v717 = (*(*v719 + 40))(v719, v718);
    }

    re::ecs2::ComponentImpl<re::ecs2::ImageBasedReflectionContentComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v720 = re::ecs2::ComponentTypeRegistry::instance(v717);
    v721 = re::ecs2::ComponentTypeRegistry::remove(v720, re::ecs2::ComponentImpl<re::ecs2::ImageBasedReflectionReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v722 = re::ecs2::ComponentImpl<re::ecs2::ImageBasedReflectionReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::ImageBasedReflectionReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v723 = re::globalAllocators(v721)[2];
      (*(*v722 + 16))(v722);
      v721 = (*(*v723 + 40))(v723, v722);
    }

    re::ecs2::ComponentImpl<re::ecs2::ImageBasedReflectionReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v724 = re::ecs2::ComponentTypeRegistry::instance(v721);
    v725 = re::ecs2::ComponentTypeRegistry::remove(v724, re::ecs2::ComponentImpl<re::ecs2::WrapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v726 = re::ecs2::ComponentImpl<re::ecs2::WrapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::WrapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v727 = re::globalAllocators(v725)[2];
      (*(*v726 + 16))(v726);
      v725 = (*(*v727 + 40))(v727, v726);
    }

    re::ecs2::ComponentImpl<re::ecs2::WrapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v728 = re::ecs2::ComponentTypeRegistry::instance(v725);
    v729 = re::ecs2::ComponentTypeRegistry::remove(v728, re::ecs2::ComponentImpl<re::ecs2::VFXEmitterComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v730 = re::ecs2::ComponentImpl<re::ecs2::VFXEmitterComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::VFXEmitterComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v731 = re::globalAllocators(v729)[2];
      (*(*v730 + 16))(v730);
      v729 = (*(*v731 + 40))(v731, v730);
    }

    re::ecs2::ComponentImpl<re::ecs2::VFXEmitterComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v732 = re::ecs2::ComponentTypeRegistry::instance(v729);
    v733 = re::ecs2::ComponentTypeRegistry::remove(v732, re::ecs2::ComponentImpl<re::ecs2::ShadowClusterRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v734 = re::ecs2::ComponentImpl<re::ecs2::ShadowClusterRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::ShadowClusterRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v735 = re::globalAllocators(v733)[2];
      (*(*v734 + 16))(v734);
      v733 = (*(*v735 + 40))(v735, v734);
    }

    re::ecs2::ComponentImpl<re::ecs2::ShadowClusterRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v736 = re::ecs2::ComponentTypeRegistry::instance(v733);
    v737 = re::ecs2::ComponentTypeRegistry::remove(v736, re::ecs2::ComponentImpl<re::ecs2::ShadowProxyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v738 = re::ecs2::ComponentImpl<re::ecs2::ShadowProxyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::ShadowProxyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v739 = re::globalAllocators(v737)[2];
      (*(*v738 + 16))(v738);
      v737 = (*(*v739 + 40))(v739, v738);
    }

    re::ecs2::ComponentImpl<re::ecs2::ShadowProxyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v740 = re::ecs2::ComponentTypeRegistry::instance(v737);
    v741 = re::ecs2::ComponentTypeRegistry::remove(v740, re::ecs2::ComponentImpl<re::ecs2::RenderPassGroupComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v742 = re::ecs2::ComponentImpl<re::ecs2::RenderPassGroupComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::RenderPassGroupComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v743 = re::globalAllocators(v741)[2];
      (*(*v742 + 16))(v742);
      v741 = (*(*v743 + 40))(v743, v742);
    }

    re::ecs2::ComponentImpl<re::ecs2::RenderPassGroupComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v744 = re::ecs2::ComponentTypeRegistry::instance(v741);
    v745 = re::ecs2::ComponentTypeRegistry::remove(v744, re::ecs2::ComponentImpl<re::ecs2::RenderPassGroupReferenceComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v746 = re::ecs2::ComponentImpl<re::ecs2::RenderPassGroupReferenceComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::RenderPassGroupReferenceComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v747 = re::globalAllocators(v745)[2];
      (*(*v746 + 16))(v746);
      v745 = (*(*v747 + 40))(v747, v746);
    }

    re::ecs2::ComponentImpl<re::ecs2::RenderPassGroupReferenceComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v748 = re::ecs2::ComponentTypeRegistry::instance(v745);
    v749 = re::ecs2::ComponentTypeRegistry::remove(v748, re::ecs2::ComponentImpl<re::ecs2::AnchoringResourceComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v750 = re::ecs2::ComponentImpl<re::ecs2::AnchoringResourceComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::AnchoringResourceComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v751 = re::globalAllocators(v749)[2];
      (*(*v750 + 16))(v750);
      v749 = (*(*v751 + 40))(v751, v750);
    }

    re::ecs2::ComponentImpl<re::ecs2::AnchoringResourceComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v752 = re::ecs2::ComponentTypeRegistry::instance(v749);
    v753 = re::ecs2::ComponentTypeRegistry::remove(v752, re::ecs2::ComponentImpl<re::ecs2::GroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v754 = re::ecs2::ComponentImpl<re::ecs2::GroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::GroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v755 = re::globalAllocators(v753)[2];
      (*(*v754 + 16))(v754);
      v753 = (*(*v755 + 40))(v755, v754);
    }

    re::ecs2::ComponentImpl<re::ecs2::GroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v756 = re::ecs2::ComponentTypeRegistry::instance(v753);
    v757 = re::ecs2::ComponentTypeRegistry::remove(v756, re::ecs2::ComponentImpl<re::ecs2::ShadowScopeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v758 = re::ecs2::ComponentImpl<re::ecs2::ShadowScopeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::ShadowScopeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v759 = re::globalAllocators(v757)[2];
      (*(*v758 + 16))(v758);
      v757 = (*(*v759 + 40))(v759, v758);
    }

    re::ecs2::ComponentImpl<re::ecs2::ShadowScopeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v760 = re::ecs2::ComponentTypeRegistry::instance(v757);
    v761 = re::ecs2::ComponentTypeRegistry::remove(v760, re::ecs2::ComponentImpl<re::ecs2::DynamicLightShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v762 = re::ecs2::ComponentImpl<re::ecs2::DynamicLightShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::DynamicLightShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v763 = re::globalAllocators(v761)[2];
      (*(*v762 + 16))(v762);
      v761 = (*(*v763 + 40))(v763, v762);
    }

    re::ecs2::ComponentImpl<re::ecs2::DynamicLightShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v764 = re::ecs2::ComponentTypeRegistry::instance(v761);
    v765 = re::ecs2::ComponentTypeRegistry::remove(v764, re::ecs2::ComponentImpl<re::ecs2::MaterialRenderStateArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v766 = re::ecs2::ComponentImpl<re::ecs2::MaterialRenderStateArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::MaterialRenderStateArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v767 = re::globalAllocators(v765)[2];
      (*(*v766 + 16))(v766);
      v765 = (*(*v767 + 40))(v767, v766);
    }

    re::ecs2::ComponentImpl<re::ecs2::MaterialRenderStateArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v768 = re::ecs2::ComponentTypeRegistry::instance(v765);
    v769 = re::ecs2::ComponentTypeRegistry::remove(v768, re::ecs2::ComponentImpl<re::ecs2::ClientWorldOriginRefComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
    v770 = re::ecs2::ComponentImpl<re::ecs2::ClientWorldOriginRefComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::ClientWorldOriginRefComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType)
    {
      v771 = re::globalAllocators(v769)[2];
      (*(*v770 + 16))(v770);
      v769 = (*(*v771 + 40))(v771, v770);
    }

    re::ecs2::ComponentImpl<re::ecs2::ClientWorldOriginRefComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType = 0;
    v772 = re::ecs2::ComponentTypeRegistry::instance(v769);
    v773 = re::ecs2::ComponentTypeRegistry::remove(v772, re::ecs2::ComponentImpl<re::ecs2::VirtualEnvironmentProbeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v774 = re::ecs2::ComponentImpl<re::ecs2::VirtualEnvironmentProbeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::VirtualEnvironmentProbeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v775 = re::globalAllocators(v773)[2];
      (*(*v774 + 16))(v774);
      v773 = (*(*v775 + 40))(v775, v774);
    }

    re::ecs2::ComponentImpl<re::ecs2::VirtualEnvironmentProbeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v776 = re::ecs2::ComponentTypeRegistry::instance(v773);
    v777 = re::ecs2::ComponentTypeRegistry::remove(v776, re::ecs2::ComponentImpl<re::ecs2::ReferenceComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v778 = re::ecs2::ComponentImpl<re::ecs2::ReferenceComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::ReferenceComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v779 = re::globalAllocators(v777)[2];
      (*(*v778 + 16))(v778);
      v777 = (*(*v779 + 40))(v779, v778);
    }

    re::ecs2::ComponentImpl<re::ecs2::ReferenceComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v780 = re::ecs2::ComponentTypeRegistry::instance(v777);
    v781 = re::ecs2::ComponentTypeRegistry::remove(v780, re::ecs2::ComponentImpl<re::ecs2::BillboardComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v782 = re::ecs2::ComponentImpl<re::ecs2::BillboardComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::BillboardComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v783 = re::globalAllocators(v781)[2];
      (*(*v782 + 16))(v782);
      v781 = (*(*v783 + 40))(v783, v782);
    }

    re::ecs2::ComponentImpl<re::ecs2::BillboardComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v784 = re::ecs2::ComponentTypeRegistry::instance(v781);
    v785 = re::ecs2::ComponentTypeRegistry::remove(v784, re::ecs2::ComponentImpl<re::ecs2::EnvironmentLightingConfigurationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v786 = re::ecs2::ComponentImpl<re::ecs2::EnvironmentLightingConfigurationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::EnvironmentLightingConfigurationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      v787 = re::globalAllocators(v785)[2];
      (*(*v786 + 16))(v786);
      v785 = (*(*v787 + 40))(v787, v786);
    }

    re::ecs2::ComponentImpl<re::ecs2::EnvironmentLightingConfigurationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = 0;
    v788 = re::ecs2::ComponentTypeRegistry::instance(v785);
    v789 = re::ecs2::ComponentTypeRegistry::remove(v788, re::ecs2::ComponentImpl<re::ecs2::ClientAnchorSyncComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v790 = re::ecs2::ComponentImpl<re::ecs2::ClientAnchorSyncComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::ClientAnchorSyncComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v791 = re::globalAllocators(v789)[2];
      (*(*v790 + 16))(v790);
      v789 = (*(*v791 + 40))(v791, v790);
    }

    re::ecs2::ComponentImpl<re::ecs2::ClientAnchorSyncComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v792 = re::ecs2::ComponentTypeRegistry::instance(v789);
    v793 = re::ecs2::ComponentTypeRegistry::remove(v792, re::ecs2::ComponentImpl<re::ecs2::PreviewSupportComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v794 = re::ecs2::ComponentImpl<re::ecs2::PreviewSupportComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::PreviewSupportComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v795 = re::globalAllocators(v793)[2];
      (*(*v794 + 16))(v794);
      v793 = (*(*v795 + 40))(v795, v794);
    }

    re::ecs2::ComponentImpl<re::ecs2::PreviewSupportComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v796 = re::ecs2::ComponentTypeRegistry::instance(v793);
    v797 = re::ecs2::ComponentTypeRegistry::remove(v796, re::ecs2::ComponentImpl<re::ecs2::SelectableSceneContentIdentifierComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v798 = re::ecs2::ComponentImpl<re::ecs2::SelectableSceneContentIdentifierComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::SelectableSceneContentIdentifierComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v799 = re::globalAllocators(v797)[2];
      (*(*v798 + 16))(v798);
      v797 = (*(*v799 + 40))(v799, v798);
    }

    re::ecs2::ComponentImpl<re::ecs2::SelectableSceneContentIdentifierComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v800 = re::ecs2::ComponentTypeRegistry::instance(v797);
    v801 = re::ecs2::ComponentTypeRegistry::remove(v800, re::ecs2::ComponentImpl<re::ecs2::FrameCountComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v802 = re::ecs2::ComponentImpl<re::ecs2::FrameCountComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::FrameCountComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v803 = re::globalAllocators(v801)[2];
      (*(*v802 + 16))(v802);
      v801 = (*(*v803 + 40))(v803, v802);
    }

    re::ecs2::ComponentImpl<re::ecs2::FrameCountComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v804 = re::ecs2::ComponentTypeRegistry::instance(v801);
    v805 = re::ecs2::ComponentTypeRegistry::remove(v804, re::ecs2::ComponentImpl<re::ecs2::CARETraceComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v806 = re::ecs2::ComponentImpl<re::ecs2::CARETraceComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::CARETraceComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v807 = re::globalAllocators(v805)[2];
      (*(*v806 + 16))(v806);
      v805 = (*(*v807 + 40))(v807, v806);
    }

    re::ecs2::ComponentImpl<re::ecs2::CARETraceComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v808 = re::ecs2::ComponentTypeRegistry::instance(v805);
    v809 = re::ecs2::ComponentTypeRegistry::remove(v808, re::ecs2::ComponentImpl<re::ecs2::SceneSpaceRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v810 = re::ecs2::ComponentImpl<re::ecs2::SceneSpaceRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::SceneSpaceRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v811 = re::globalAllocators(v809)[2];
      (*(*v810 + 16))(v810);
      v809 = (*(*v811 + 40))(v811, v810);
    }

    re::ecs2::ComponentImpl<re::ecs2::SceneSpaceRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v812 = re::ecs2::ComponentTypeRegistry::instance(v809);
    v813 = re::ecs2::ComponentTypeRegistry::remove(v812, re::ecs2::ComponentImpl<re::ecs2::HierarchicalOcclusionOptionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v814 = re::ecs2::ComponentImpl<re::ecs2::HierarchicalOcclusionOptionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::HierarchicalOcclusionOptionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v815 = re::globalAllocators(v813)[2];
      (*(*v814 + 16))(v814);
      v813 = (*(*v815 + 40))(v815, v814);
    }

    re::ecs2::ComponentImpl<re::ecs2::HierarchicalOcclusionOptionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v816 = re::ecs2::ComponentTypeRegistry::instance(v813);
    v817 = re::ecs2::ComponentTypeRegistry::remove(v816, re::ecs2::ComponentImpl<re::ecs2::ImmersiveSpaceTrackerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v818 = re::ecs2::ComponentImpl<re::ecs2::ImmersiveSpaceTrackerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::ImmersiveSpaceTrackerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v819 = re::globalAllocators(v817)[2];
      (*(*v818 + 16))(v818);
      v817 = (*(*v819 + 40))(v819, v818);
    }

    re::ecs2::ComponentImpl<re::ecs2::ImmersiveSpaceTrackerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v820 = re::ecs2::ComponentTypeRegistry::instance(v817);
    v821 = re::ecs2::ComponentTypeRegistry::remove(v820, re::ecs2::ComponentImpl<re::ecs2::UIGroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v822 = re::ecs2::ComponentImpl<re::ecs2::UIGroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::UIGroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v823 = re::globalAllocators(v821)[2];
      (*(*v822 + 16))(v822);
      v821 = (*(*v823 + 40))(v823, v822);
    }

    re::ecs2::ComponentImpl<re::ecs2::UIGroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v824 = re::ecs2::ComponentTypeRegistry::instance(v821);
    v825 = re::ecs2::ComponentTypeRegistry::remove(v824, re::ecs2::ComponentImpl<re::ecs2::UIShadowConfigurationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v826 = re::ecs2::ComponentImpl<re::ecs2::UIShadowConfigurationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::UIShadowConfigurationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v827 = re::globalAllocators(v825)[2];
      (*(*v826 + 16))(v826);
      v825 = (*(*v827 + 40))(v827, v826);
    }

    re::ecs2::ComponentImpl<re::ecs2::UIShadowConfigurationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v828 = re::ecs2::ComponentTypeRegistry::instance(v825);
    v829 = re::ecs2::ComponentTypeRegistry::remove(v828, re::ecs2::ComponentImpl<re::ecs2::UILayerGeometryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v830 = re::ecs2::ComponentImpl<re::ecs2::UILayerGeometryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::UILayerGeometryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v831 = re::globalAllocators(v829)[2];
      (*(*v830 + 16))(v830);
      v829 = (*(*v831 + 40))(v831, v830);
    }

    re::ecs2::ComponentImpl<re::ecs2::UILayerGeometryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v832 = re::ecs2::ComponentTypeRegistry::instance(v829);
    v833 = re::ecs2::ComponentTypeRegistry::remove(v832, re::ecs2::ComponentImpl<re::ecs2::UIShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v834 = re::ecs2::ComponentImpl<re::ecs2::UIShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::UIShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v835 = re::globalAllocators(v833)[2];
      (*(*v834 + 16))(v834);
      v833 = (*(*v835 + 40))(v835, v834);
    }

    re::ecs2::ComponentImpl<re::ecs2::UIShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v836 = re::ecs2::ComponentTypeRegistry::instance(v833);
    v837 = re::ecs2::ComponentTypeRegistry::remove(v836, re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v838 = re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v839 = re::globalAllocators(v837)[2];
      (*(*v838 + 16))(v838);
      v837 = (*(*v839 + 40))(v839, v838);
    }

    re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v840 = re::ecs2::ComponentTypeRegistry::instance(v837);
    v841 = re::ecs2::ComponentTypeRegistry::remove(v840, re::ecs2::ComponentImpl<re::ecs2::SpatialMediaComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v842 = re::ecs2::ComponentImpl<re::ecs2::SpatialMediaComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::SpatialMediaComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v843 = re::globalAllocators(v841)[2];
      (*(*v842 + 16))(v842);
      v841 = (*(*v843 + 40))(v843, v842);
    }

    re::ecs2::ComponentImpl<re::ecs2::SpatialMediaComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v844 = re::ecs2::ComponentTypeRegistry::instance(v841);
    v845 = re::ecs2::ComponentTypeRegistry::remove(v844, re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v846 = re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v847 = re::globalAllocators(v845)[2];
      (*(*v846 + 16))(v846);
      v845 = (*(*v847 + 40))(v847, v846);
    }

    re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v848 = re::ecs2::ComponentTypeRegistry::instance(v845);
    v849 = re::ecs2::ComponentTypeRegistry::remove(v848, re::ecs2::ComponentImpl<re::ecs2::SpatialMediaStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v850 = re::ecs2::ComponentImpl<re::ecs2::SpatialMediaStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::SpatialMediaStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v851 = re::globalAllocators(v849)[2];
      (*(*v850 + 16))(v850);
      v849 = (*(*v851 + 40))(v851, v850);
    }

    re::ecs2::ComponentImpl<re::ecs2::SpatialMediaStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v852 = re::ecs2::ComponentTypeRegistry::instance(v849);
    v853 = re::ecs2::ComponentTypeRegistry::remove(v852, re::ecs2::ComponentImpl<re::ecs2::MXIComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v854 = re::ecs2::ComponentImpl<re::ecs2::MXIComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::MXIComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v855 = re::globalAllocators(v853)[2];
      (*(*v854 + 16))(v854);
      v853 = (*(*v855 + 40))(v855, v854);
    }

    re::ecs2::ComponentImpl<re::ecs2::MXIComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;
    v856 = re::ecs2::ComponentTypeRegistry::instance(v853);
    v857 = re::ecs2::ComponentTypeRegistry::remove(v856, re::ecs2::ComponentImpl<re::ecs2::ClientWorldOriginOverrideComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v858 = re::ecs2::ComponentImpl<re::ecs2::ClientWorldOriginOverrideComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if (re::ecs2::ComponentImpl<re::ecs2::ClientWorldOriginOverrideComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v859 = re::globalAllocators(v857)[2];
      (*(*v858 + 16))(v858);
      v857 = (*(*v859 + 40))(v859, v858);
    }

    re::ecs2::ComponentImpl<re::ecs2::ClientWorldOriginOverrideComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = 0;

    re::ecs2::deinitECSCore(v857);
  }
}