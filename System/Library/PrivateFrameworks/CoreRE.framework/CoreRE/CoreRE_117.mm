BOOL re::MeshIdentifierAsset::operator==(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || !re::StringID::operator==(a1 + 1, a2 + 1))
  {
    return 0;
  }

  return re::StringID::operator==(a1 + 3, a2 + 3);
}

void re::ecs2::CustomDeformerComponent::CustomDeformerData::addMappedDeformationDataToArray(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v41[7] = *MEMORY[0x1E69E9840];
  if (*(a4 + 16))
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = 96 * v9 + 40;
      while (re::MeshIdentifierAsset::operator==((*(a4 + 32) + v10 - 40), a2))
      {
        ++v9;
        v11 = *(a4 + 16);
        v10 += 96;
        if (v9 >= v11)
        {
          goto LABEL_10;
        }
      }

      if (v8 != v9)
      {
        v12 = *(a4 + 32);
        v13 = v12 + v10;
        v14 = v12 + 96 * v8;
        *v14 = *(v13 - 40);
        re::StringID::operator=((v14 + 8), (v13 - 32));
        re::StringID::operator=((v14 + 24), (v13 - 16));
        re::FramePersistentPtr<std::unique_ptr<void,std::function<void ()(void *)>>,re::FrameManager>::operator=((v14 + 40), v13);
      }

      ++v9;
      ++v8;
      v11 = *(a4 + 16);
    }

    while (v9 < v11);
LABEL_10:
    if (v8 != v11)
    {
      v15 = 96 * v11 - 96 * v8;
      v16 = (*(a4 + 32) + 96 * v8 + 40);
      do
      {
        re::FramePersistentPtr<std::unique_ptr<void,std::function<void ()(void *)>>,re::FrameManager>::~FramePersistentPtr(v16);
        re::StringID::destroyString((v16 - 2));
        re::StringID::destroyString((v16 - 4));
        v16 += 12;
        v15 -= 96;
      }

      while (v15);
      *(a4 + 16) = v8;
      ++*(a4 + 24);
    }
  }

  v36 = *a2;
  re::StringID::StringID(&v37, (a2 + 8));
  v17 = re::StringID::StringID(&v39, (a2 + 24));
  v18 = *(a1 + 144);
  v19 = re::globalAllocators(v17);
  v20 = (*(*v19[2] + 32))(v19[2], 40, 8);
  v21 = *a3;
  *a3 = 0;
  *v20 = v21;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:nn200100]((v20 + 1), (a3 + 1));
  if (v18)
  {
    v22 = (v18 + 8);
  }

  else
  {
    v22 = 0;
  }

  inited = objc_initWeak(v41, v22);
  v41[1] = v20;
  v24 = re::globalAllocators(inited);
  v41[5] = v24[2];
  v41[6] = 0;
  v25 = *(a4 + 8);
  v26 = *(a4 + 16);
  if (v26 >= v25)
  {
    v27 = v26 + 1;
    if (v25 < v26 + 1)
    {
      if (*a4)
      {
        v28 = 2 * v25;
        v29 = v25 == 0;
        v30 = 8;
        if (!v29)
        {
          v30 = v28;
        }

        if (v30 <= v27)
        {
          v31 = v27;
        }

        else
        {
          v31 = v30;
        }

        re::DynamicArray<re::ecs2::CustomDeformerComponent::CustomDeformerData::MappedDeformationData>::setCapacity(a4, v31);
      }

      else
      {
        re::DynamicArray<re::ecs2::CustomDeformerComponent::CustomDeformerData::MappedDeformationData>::setCapacity(a4, v27);
        ++*(a4 + 24);
      }
    }

    v26 = *(a4 + 16);
  }

  v32 = *(a4 + 32) + 96 * v26;
  *v32 = v36;
  v33 = v37;
  *(v32 + 8) = *(v32 + 8) & 0xFFFFFFFFFFFFFFFELL | v37 & 1;
  *(v32 + 8) = v37 & 0xFFFFFFFFFFFFFFFELL | v33 & 1;
  *(v32 + 16) = v38;
  v37 = 0;
  v38 = &str_67;
  v34 = v39;
  *(v32 + 24) = *(v32 + 24) & 0xFFFFFFFFFFFFFFFELL | v39 & 1;
  *(v32 + 24) = v39 & 0xFFFFFFFFFFFFFFFELL | v34 & 1;
  *(v32 + 32) = v40;
  v39 = 0;
  v40 = &str_67;
  re::FramePersistentPtr<std::unique_ptr<void,std::function<void ()(void *)>>,re::FrameManager>::FramePersistentPtr(v32 + 40, v41);
  ++*(a4 + 16);
  ++*(a4 + 24);
  v35 = re::FramePersistentPtr<std::unique_ptr<void,std::function<void ()(void *)>>,re::FrameManager>::~FramePersistentPtr(v41);
  if (v39)
  {
    if (v39)
    {
    }
  }

  v39 = 0;
  v40 = &str_67;
  if (v37)
  {
    if (v37)
    {
    }
  }
}

void *re::ecs2::CustomDeformerSystemComponentStateImpl::CustomDeformerSystemComponentStateImpl(void *a1, uint64_t a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F5CF1A98;
  a1[1] = a2;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  v5[0] = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
  v5[1] = re::ecs2::ComponentImpl<re::ecs2::MeshDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v5[2] = re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v4[0] = v5;
  v4[1] = 3;
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((a1 + 2), v4);
  return a1;
}

BOOL re::ecs2::CustomDeformerSystemComponentStateImpl::processDirtyComponents(re::DeformerFeatureFlags *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v64 = *MEMORY[0x1E69E9840];
  isCustomDeformerLoggingEnabled = re::DeformerFeatureFlags::isCustomDeformerLoggingEnabled(a1);
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(buf, a5, 0);
  v48 = a4;
  v49 = *buf;
  v50 = *&buf[8];
  if (*buf != a5 || *&buf[8] != 0xFFFFFFFFLL)
  {
    do
    {
      v10 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v48);
      v11 = *(v10 + 16);
      v12 = v11[24];
      v13 = v11[25];
      if (v12)
      {
        v14 = v13 == 0;
      }

      else
      {
        v14 = 1;
      }

      if (v14)
      {
        v15 = (a3 + 32);
        if (!isCustomDeformerLoggingEnabled)
        {
          goto LABEL_36;
        }

        v16 = *(v10 + 16);
        do
        {
          v17 = v16;
          v16 = *(v16 + 32);
        }

        while (v16);
        v18 = (*(**(*(v17 + 24) + 56) + 32))(*(*(v17 + 24) + 56));
        v19 = re::ServiceLocator::service<re::FrameManager>(v18);
        v20 = *re::ecsComponentsLogObjects(v19);
        v15 = (a3 + 32);
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          goto LABEL_36;
        }

        v21 = *(v19 + 3) & 0xFFFFFFFFFFFFFFFLL;
        v22 = v11[37];
        *buf = 134218242;
        *&buf[4] = v21;
        *&buf[12] = 2080;
        *&buf[14] = v22;
        v23 = v20;
        v24 = "[DeformerLogging] Frame[%llu]: Custom Deformer skipping, missing mesh or mesh deformation for entity - %s";
      }

      else
      {
        if (!v13[30])
        {
          goto LABEL_30;
        }

        v25 = v13[46];
        if (v25 <= 0xB)
        {
          v51 = 0;
          v62 = 0u;
          v63 = 0u;
          v61 = 0u;
          memset(buf, 0, sizeof(buf));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v52 = 136315906;
          v53 = "operator[]";
          v54 = 1024;
          v55 = 476;
          v56 = 2048;
          v57 = 11;
          v58 = 2048;
          v59 = v25;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v26 = v13[49];
        v27 = !*(v13[47] + 1064) || v26 == 0;
        if (!v27 && *(v12 + 40))
        {
          v15 = (a3 + 40);
          if (*(v10 + 48))
          {
            goto LABEL_36;
          }

          v28 = *(v26 + 88);
          if (v28)
          {
            v29 = 168 * v28;
            v30 = (*(v26 + 96) + 112);
            do
            {
              ++*(v30 - 101);
              *v30 = 0;
              v30 += 21;
              v29 -= 168;
            }

            while (v29);
          }

          v31 = v11;
          v15 = (a3 + 32);
          if (!isCustomDeformerLoggingEnabled)
          {
            goto LABEL_36;
          }

          do
          {
            v32 = v31;
            v31 = v31[4];
          }

          while (v31);
          v33 = (*(**(v32[3] + 56) + 32))(*(v32[3] + 56));
          v34 = re::ServiceLocator::service<re::FrameManager>(v33);
          v35 = *re::ecsComponentsLogObjects(v34);
          v15 = (a3 + 32);
          if (!os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            goto LABEL_36;
          }

          v36 = *(v34 + 3) & 0xFFFFFFFFFFFFFFFLL;
          v37 = v11[37];
          *buf = 134218242;
          *&buf[4] = v36;
          *&buf[12] = 2080;
          *&buf[14] = v37;
          v23 = v35;
          v24 = "[DeformerLogging] Frame[%llu]: Custom Deformer skipping, not custom deformation data set for entity - %s";
        }

        else
        {
LABEL_30:
          v15 = (a3 + 32);
          if (!isCustomDeformerLoggingEnabled)
          {
            goto LABEL_36;
          }

          v38 = *(v10 + 16);
          do
          {
            v39 = v38;
            v38 = *(v38 + 32);
          }

          while (v38);
          v40 = (*(**(*(v39 + 24) + 56) + 32))(*(*(v39 + 24) + 56));
          v41 = re::ServiceLocator::service<re::FrameManager>(v40);
          v42 = *re::ecsComponentsLogObjects(v41);
          v15 = (a3 + 32);
          if (!os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
          {
            goto LABEL_36;
          }

          v43 = *(v41 + 3) & 0xFFFFFFFFFFFFFFFLL;
          v44 = v11[37];
          *buf = 134218242;
          *&buf[4] = v43;
          *&buf[12] = 2080;
          *&buf[14] = v44;
          v23 = v42;
          v24 = "[DeformerLogging] Frame[%llu]: Custom Deformer skipping, custom deformer not assigned for entity - %s";
        }
      }

      _os_log_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_INFO, v24, buf, 0x16u);
      v15 = (a3 + 32);
LABEL_36:
      v45 = v48;
      v46 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v49);
      re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v45, v46, *v15);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v49);
    }

    while (v49 != a5 || v50 != 0xFFFF || HIWORD(v50) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

uint64_t re::ServiceLocator::service<re::FrameManager>(uint64_t a1)
{
  result = re::ServiceLocator::serviceOrNull<re::FrameManager>(a1);
  if (!result)
  {
    v2 = re::introspect<re::FrameManager>();
    re::StringID::invalid(v6);
    re::internal::missingServiceErrorMessage(v2, v6, v7);
    re::DynamicString::~DynamicString(v7);
    re::StringID::~StringID(v6);
    v3 = re::introspect<re::FrameManager>();
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

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
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

BOOL re::ecs2::CustomDeformerSystemComponentStateImpl::processPreparingComponents(re::DeformerFeatureFlags *a1, uint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  v50 = *MEMORY[0x1E69E9840];
  isCustomDeformerLoggingEnabled = re::DeformerFeatureFlags::isCustomDeformerLoggingEnabled(a1);
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v43, a5, 0);
  v10 = v43;
  v11 = v44;
  v12 = v44;
  v43 = a4;
  v44 = v10;
  v45 = v11;
  if (v10 != a5 || v12 != 0xFFFFFFFFLL)
  {
    do
    {
      v14 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v43);
      v15 = *(v14 + 2);
      v16 = v15[24];
      v17 = re::AssetHandle::loadedAsset<re::MeshAsset>((v16 + 32));
      if (v17)
      {
        v18 = v17;
        v19 = (v17 + 640);
        v20 = re::ecs2::EntityComponentCollection::get((v15 + 6), re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (v20)
        {
          v21 = (v20 + 216);
        }

        else
        {
          v21 = v19;
        }

        re::ecs2::CustomDeformerComponent::updateDeformerInputData(v14, *(*(a1 + 1) + 232), v18, v21);
        v22 = v43;
        v23 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v44);
        v24 = a3[2];
        v25 = a3[6];
      }

      else
      {
        v26 = *(v16 + 40);
        if (!v26 || (v27 = atomic_load((v26 + 896)), v27 != 3))
        {
          if (isCustomDeformerLoggingEnabled)
          {
            v35 = v15;
            do
            {
              v36 = v35;
              v35 = v35[4];
            }

            while (v35);
            v37 = (*(**(v36[3] + 56) + 32))(*(v36[3] + 56));
            v38 = re::ServiceLocator::service<re::FrameManager>(v37);
            v39 = *re::ecsComponentsLogObjects(v38);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
            {
              v40 = *(v38 + 3) & 0xFFFFFFFFFFFFFFFLL;
              v41 = v15[37];
              *buf = 134218242;
              v47 = v40;
              v48 = 2080;
              v49 = v41;
              _os_log_impl(&dword_1E1C61000, v39, OS_LOG_TYPE_INFO, "[DeformerLogging] Frame[%llu]: Custom Deformer skipping, mesh still loading for entity - %s", buf, 0x16u);
            }
          }

          re::AssetHandle::loadAsync((v16 + 32));
          goto LABEL_25;
        }

        if (isCustomDeformerLoggingEnabled)
        {
          v28 = v15;
          do
          {
            v29 = v28;
            v28 = v28[4];
          }

          while (v28);
          v30 = (*(**(v29[3] + 56) + 32))(*(v29[3] + 56));
          v31 = re::ServiceLocator::service<re::FrameManager>(v30);
          v32 = *re::ecsComponentsLogObjects(v31);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            v33 = *(v31 + 3) & 0xFFFFFFFFFFFFFFFLL;
            v34 = v15[37];
            *buf = 134218242;
            v47 = v33;
            v48 = 2080;
            v49 = v34;
            _os_log_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_INFO, "[DeformerLogging] Frame[%llu]: Custom Deformer skipping, mesh failed to load for entity - %s", buf, 0x16u);
          }
        }

        v22 = v43;
        v23 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v44);
        v24 = a3[2];
        v25 = a3[4];
      }

      re::ecs2::ComponentBucketsBase::moveComponent(v24, v22, v23, v25);
LABEL_25:
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v44);
    }

    while (v44 != a5 || v45 != 0xFFFF || HIWORD(v45) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

BOOL re::ecs2::CustomDeformerSystemComponentStateImpl::processUpdatingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
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
      v13 = *(v12 + 2);
      v14 = re::AssetHandle::blockUntilLoaded<re::MeshAsset>((*(v13 + 192) + 32));
      v15 = re::ecs2::EntityComponentCollection::get((v13 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v15)
      {
        v16 = (v15 + 216);
      }

      else
      {
        v16 = (v14 + 640);
      }

      if ((re::ecs2::CustomDeformerComponent::processContinuousUpdateMode(v12, v14, v16) & 1) == 0)
      {
        v17 = v20;
        v18 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v21);
        re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v17, v18, *(a3 + 32));
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v21);
    }

    while (v21 != a5 || v22 != 0xFFFF || HIWORD(v22) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

uint64_t re::ecs2::CustomDeformerSystem::update(void *a1, uint64_t a2, uint64_t a3)
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
  v5 = a1[63];
  if ((v5 & 0x3F) != 0)
  {
    v6 = (v5 >> 6) + 1;
  }

  else
  {
    v6 = v5 >> 6;
  }

  v43 = a1[63];
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
      v11 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 44, v33);
      re::DynamicBitset<unsigned long long,64ul>::setBit(&v38, *(a1[45] + 16 * v11 + 8));
      v9 -= 8;
    }

    while (v9);
  }

  re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v38, (a1 + 58));
  v34 = 1;
  v35 = 0;
  v36 = 0;
  v33[0] = v44;
  v33[1] = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v33, 0);
  v34 += 2;
  v12 = a1[63];
  if ((v12 & 0x3F) != 0)
  {
    v13 = (v12 >> 6) + 1;
  }

  else
  {
    v13 = v12 >> 6;
  }

  v37 = a1[63];
  v45 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(v33, v13, &v45);
  re::DynamicBitset<unsigned long long,64ul>::subtractBitSet((a1 + 58), &v38);
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
        v21 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[]((a1 + 37), FirstBitSet);
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
  re::DynamicBitset<unsigned long long,64ul>::orWithBitSet((a1 + 58), v33);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate((a1 + 37));
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

unint64_t re::ecs2::CustomDeformerSystem::willAddSceneToECSService(re::ecs2::CustomDeformerSystem *this, re::ecs2::Scene *a2)
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
    re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::init(v12, this + 296, a2);
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
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>,4ul>::setBucketsCapacity(this + 37, (v14 + 4) >> 2);
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
  re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::init(v24, this + 296, v48[0]);
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

uint64_t re::ecs2::CustomDeformerSystem::willRemoveSceneFromECSService(re::ecs2::CustomDeformerSystem *this, re::ecs2::Scene *a2)
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

void *re::ecs2::allocInfo_CustomDeformerComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_280, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_280))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A9A18, "CustomDeformerComponent");
    __cxa_guard_release(&_MergedGlobals_280);
  }

  return &unk_1EE1A9A18;
}

void re::ecs2::initInfo_CustomDeformerComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v10[0] = 0xBE4AC62966A262B4;
  v10[1] = "CustomDeformerComponent";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1A9A08, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A9A08);
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
      qword_1EE1A9A00 = v8;
      __cxa_guard_release(&qword_1EE1A9A08);
    }
  }

  *(this + 2) = 0x8000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1A9A00;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::CustomDeformerComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::CustomDeformerComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::CustomDeformerComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::CustomDeformerComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs223CustomDeformerComponentELNS_17RealityKitReleaseE7EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v9 = v11;
}

void *re::ecs2::allocInfo_CustomDeformerSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A9A10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9A10))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A9AA8, "CustomDeformerSystem");
    __cxa_guard_release(&qword_1EE1A9A10);
  }

  return &unk_1EE1A9AA8;
}

void re::ecs2::initInfo_CustomDeformerSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xCEE3922955205E4;
  v6[1] = "CustomDeformerSystem";
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
  *(this + 8) = &re::ecs2::initInfo_CustomDeformerSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::CustomDeformerSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::CustomDeformerSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::CustomDeformerSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::CustomDeformerSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::CustomDeformerSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::CustomDeformerSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::internal::defaultDestruct<re::ecs2::CustomDeformerSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 37);
  a3[32] = &unk_1F5CF1A98;
  re::FixedArray<CoreIKTransform>::deinit(a3 + 34);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::CustomDeformerSystem>(uint64_t *a1)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 37);
  a1[32] = &unk_1F5CF1A98;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 34);

  re::ecs2::System::~System(a1);
}

unint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::CustomDeformerComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::CustomDeformerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
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

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::setComponentState(a2, v11, v7);
  }

  return result;
}

void re::ecs2::CustomDeformerSystem::~CustomDeformerSystem(re::ecs2::CustomDeformerSystem *this)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 37);
  *(this + 32) = &unk_1F5CF1A98;
  re::FixedArray<CoreIKTransform>::deinit(this + 34);

  re::ecs2::System::~System(this);
}

{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 37);
  *(this + 32) = &unk_1F5CF1A98;
  re::FixedArray<CoreIKTransform>::deinit(this + 34);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void *re::DynamicArray<re::ecs2::CustomDeformerComponent::CustomDeformerData>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ecs2::CustomDeformerComponent::CustomDeformerData>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x78uLL))
        {
          v2 = 120 * a2;
          result = (*(*result + 32))(result, 120 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 120, a2);
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
        v10 = v8 + 120 * v9;
        v11 = v7 + 7;
        do
        {
          *(v11 - 3) = 0;
          *(v11 - 6) = 0;
          *(v11 - 5) = 0;
          *(v11 - 7) = 0;
          *(v11 - 8) = 0;
          v12 = *(v8 + 8);
          *(v11 - 7) = *v8;
          *(v11 - 6) = v12;
          *v8 = 0;
          *(v8 + 8) = 0;
          v13 = *(v11 - 5);
          *(v11 - 5) = *(v8 + 16);
          *(v8 + 16) = v13;
          v14 = *(v11 - 3);
          *(v11 - 3) = *(v8 + 32);
          *(v8 + 32) = v14;
          ++*(v8 + 24);
          ++*(v11 - 8);
          v11[2] = 0;
          *(v11 - 1) = 0;
          *v11 = 0;
          *(v11 - 2) = 0;
          *(v11 + 2) = 0;
          v15 = *(v8 + 48);
          *(v11 - 2) = *(v8 + 40);
          *(v8 + 40) = 0;
          *(v11 - 1) = v15;
          *(v8 + 48) = 0;
          v16 = *v11;
          *v11 = *(v8 + 56);
          *(v8 + 56) = v16;
          v17 = v11[2];
          v11[2] = *(v8 + 72);
          *(v8 + 72) = v17;
          ++*(v8 + 64);
          ++*(v11 + 2);
          v11[7] = 0;
          v11[4] = 0;
          v11[5] = 0;
          v11[3] = 0;
          *(v11 + 12) = 0;
          v18 = *(v8 + 88);
          v11[3] = *(v8 + 80);
          *(v8 + 80) = 0;
          v11[4] = v18;
          *(v8 + 88) = 0;
          v19 = v11[5];
          v11[5] = *(v8 + 96);
          *(v8 + 96) = v19;
          v20 = v11[7];
          v11[7] = *(v8 + 112);
          *(v8 + 112) = v20;
          ++*(v8 + 104);
          ++*(v11 + 12);
          re::DynamicArray<re::MeshDeformationIndex>::deinit(v8 + 80);
          re::DynamicArray<re::ecs2::CustomDeformerComponent::CustomDeformerData::MappedDeformationData>::deinit(v8 + 40);
          re::DynamicArray<re::ecs2::CustomDeformerComponent::CustomDeformerData::MappedDeformationData>::deinit(v8);
          v11 += 15;
          v8 += 120;
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

void *re::DynamicArray<re::CustomDeformerInputData>::setCapacity(void *result, unint64_t a2)
{
  if (result[1] == a2)
  {
    return result;
  }

  v4 = result;
  if (result[2] > a2)
  {
    return result;
  }

  v5 = *result;
  if (!*v4)
  {
    result = re::DynamicArray<re::CustomDeformerInputData>::setCapacity(v4, a2);
    ++*(v4 + 6);
    return result;
  }

  if (a2 >> 60)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 16, a2);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  v2 = 16 * a2;
  result = (*(*v5 + 32))(v5, 16 * a2, 8);
  if (!result)
  {
LABEL_12:
    re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v4 + 8));
    result = _os_crash();
    __break(1u);
    return result;
  }

  v7 = result;
  if (v4[1])
  {
    memcpy(result, v4[4], 16 * v4[2]);
    result = (*(**v4 + 40))(*v4, v4[4]);
  }

  v4[4] = v7;
  v4[1] = a2;
  return result;
}

void *re::DynamicArray<re::ecs2::CustomDeformerComponent::CustomDeformerData::ForcedContinuousDeformations>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ecs2::CustomDeformerComponent::CustomDeformerData::ForcedContinuousDeformations>::setCapacity(v5, a2);
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
        v10 = v8 + 48 * v9;
        v11 = v7;
        do
        {
          *v11 = *v8;
          v13 = (v8 + 8);
          v12 = *(v8 + 8);
          v11[1] = v11[1] & 0xFFFFFFFFFFFFFFFELL | *(v8 + 8) & 1;
          v11[1] = *(v8 + 8) & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[2] = *(v8 + 16);
          *(v8 + 16) = &str_67;
          *(v8 + 8) = 0;
          v15 = *(v8 + 24);
          v14 = v8 + 24;
          v11[3] = v11[3] & 0xFFFFFFFFFFFFFFFELL | v15 & 1;
          v11[3] = *v14 & 0xFFFFFFFFFFFFFFFELL | v15 & 1;
          v11[4] = *(v14 + 8);
          *v14 = 0;
          *(v14 + 8) = &str_67;
          *(v11 + 40) = *(v14 + 16);
          re::StringID::destroyString(v14);
          re::StringID::destroyString(v13);
          v11 += 6;
          v8 = v14 + 24;
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

id *re::FramePersistentPtr<std::unique_ptr<void,std::function<void ()(void *)>>,re::FrameManager>::operator=(id *from, uint64_t a2)
{
  v6[5] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  objc_moveWeak(v6, from);
  re::ArcWeakPtr<re::internal::AssetManagerAliveToken>::operator=(from, a2);
  re::ArcWeakPtr<re::internal::AssetManagerAliveToken>::operator=(a2, v6);
  objc_destroyWeak(v6);
  v4 = from[1];
  from[1] = *(a2 + 8);
  *(a2 + 8) = v4;
  v6[3] = from[5];
  v6[4] = 0;
  re::FunctionBase<24ul,void ()(void *)>::operator=<24ul>(v6, (from + 2));
  re::FunctionBase<24ul,void ()(void *)>::operator=<24ul>((from + 2), a2 + 16);
  re::FunctionBase<24ul,void ()(void *)>::operator=<24ul>(a2 + 16, v6);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v6);
  return from;
}

void *re::DynamicArray<re::ecs2::CustomDeformerComponent::CustomDeformerData::MappedDeformationData>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ecs2::CustomDeformerComponent::CustomDeformerData::MappedDeformationData>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x60uLL))
        {
          v2 = 96 * a2;
          result = (*(*result + 32))(result, 96 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 96, a2);
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
        v10 = (v8 + 96 * v9);
        v11 = (v7 + 5);
        v12 = (v8 + 40);
        do
        {
          *(v11 - 40) = *(v12 - 40);
          v13 = *(v12 - 4);
          *(v11 - 32) = *(v11 - 32) & 0xFFFFFFFFFFFFFFFELL | *(v12 - 4) & 1;
          *(v11 - 32) = *(v12 - 4) & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
          *(v11 - 24) = *(v12 - 3);
          *(v12 - 3) = &str_67;
          *(v12 - 4) = 0;
          v14 = *(v12 - 2);
          *(v11 - 16) = *(v11 - 16) & 0xFFFFFFFFFFFFFFFELL | *(v12 - 2) & 1;
          *(v11 - 16) = *(v12 - 2) & 0xFFFFFFFFFFFFFFFELL | v14 & 1;
          *(v11 - 8) = *(v12 - 1);
          *(v12 - 1) = &str_67;
          *(v12 - 2) = 0;
          re::FramePersistentPtr<std::unique_ptr<void,std::function<void ()(void *)>>,re::FrameManager>::FramePersistentPtr(v11, v12);
          re::FramePersistentPtr<std::unique_ptr<void,std::function<void ()(void *)>>,re::FrameManager>::~FramePersistentPtr(v12);
          re::StringID::destroyString((v12 - 2));
          re::StringID::destroyString((v12 - 4));
          v11 += 96;
          v15 = v12 + 7;
          v12 += 12;
        }

        while (v15 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

id *re::FramePersistentPtr<std::unique_ptr<void,std::function<void ()(void *)>>,re::FrameManager>::FramePersistentPtr(uint64_t a1, uint64_t a2)
{
  inited = objc_initWeak(a1, 0);
  *(a1 + 8) = 0;
  *(a1 + 40) = re::globalAllocators(inited)[2];
  *(a1 + 48) = 0;

  return re::FramePersistentPtr<std::unique_ptr<void,std::function<void ()(void *)>>,re::FrameManager>::operator=(a1, a2);
}

uint64_t re::introspect<re::FrameManager>()
{
  v0 = &unk_1EE187000;
  {
    v0 = &unk_1EE187000;
    if (v2)
    {
      re::introspect<re::FrameManager>(BOOL)::info = re::introspect_FrameManager(0);
      v0 = &unk_1EE187000;
    }
  }

  return v0[239];
}

uint64_t *re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::CustomDeformerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) + 480;
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
    *v10 = &unk_1F5CF1B90;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::CustomDeformerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CF1BE8;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::CustomDeformerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CF1C40;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::CustomDeformerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CF1C98;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::CustomDeformerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
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
        *v37 = &unk_1F5CF1B90;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CF1BE8;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CF1C40;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CF1C98;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::CustomDeformerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::CustomDeformerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::CustomDeformerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::CustomDeformerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF1B90;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF1B90;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF1BE8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF1BE8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF1C40;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF1C40;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF1C98;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF1C98;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::make::shared::unsafelyInplace<re::ecs2::CustomDeformerComponent>(uint64_t a1)
{
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
  *v2 = &unk_1F5CD97C8;
  *(v2 + 64) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 32) = 0;
  *(v2 + 56) = 0;
  inited = objc_initWeak((v2 + 72), 0);
  *(a1 + 80) = 0;
  *(a1 + 112) = re::globalAllocators(inited)[2];
  *(a1 + 120) = 0;
  return a1;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs223CustomDeformerComponentELNS_17RealityKitReleaseE7EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 7;
    *(a2 + 8) = 0;
  }
}

void *re::ecs2::allocInfo_DebugMeshComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_281, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_281))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A9B58, "DebugMeshComponent");
    __cxa_guard_release(&_MergedGlobals_281);
  }

  return &unk_1EE1A9B58;
}

void re::ecs2::initInfo_DebugMeshComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v14[0] = 0xE189FFFAC063EC3ALL;
  v14[1] = "DebugMeshComponent";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1A9B40, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A9B40);
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
      qword_1EE1A9B48 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::IntrospectionInfo<re::DynamicString>::get(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "shaderDebugMode";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x2000000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1A9B50 = v12;
      __cxa_guard_release(&qword_1EE1A9B40);
    }
  }

  *(this + 2) = 0x4000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1A9B48;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::DebugMeshComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::DebugMeshComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::DebugMeshComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::DebugMeshComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs218DebugMeshComponentELNS_17RealityKitReleaseE3EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v13 = v15;
}

void *re::internal::defaultConstruct<re::ecs2::DebugMeshComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  v3 = (this + 32);
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *v4 = &unk_1F5CDBC70;
  *v3 = 0u;
  *(v4 + 48) = 0u;

  return re::DynamicString::setCapacity(v3, 0);
}

void *re::internal::defaultConstructV2<re::ecs2::DebugMeshComponent>(_OWORD *a1)
{
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  v1 = a1 + 2;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *v2 = &unk_1F5CDBC70;
  *v1 = 0u;
  *(v2 + 48) = 0u;

  return re::DynamicString::setCapacity(v1, 0);
}

void _ZZN2re8internal15setIntroVersionINS_4ecs218DebugMeshComponentELNS_17RealityKitReleaseE3EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 3;
    *(a2 + 8) = 0;
  }
}

void *re::ecs2::allocInfo_InputTargetComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A9BF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9BF0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A9CB8, "InputTargetComponent");
    __cxa_guard_release(&qword_1EE1A9BF0);
  }

  return &unk_1EE1A9CB8;
}

void re::ecs2::initInfo_InputTargetComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v37[0] = 0xE32789C8E68F8AC4;
  v37[1] = "InputTargetComponent";
  if (v37[0])
  {
    if (v37[0])
    {
    }
  }

  *(this + 2) = v38;
  if ((atomic_load_explicit(&qword_1EE1A9BF8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A9BF8);
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
      qword_1EE1A9C30 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_BOOL(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "allowsIndirectInput";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1B00000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1A9C38 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_BOOL(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "enabled";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x1C00000003;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1A9C40 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::introspect_BOOL(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "isHandAnchored";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x1D00000004;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1A9C48 = v20;
      v21 = re::introspectionAllocator(v20);
      v23 = re::ecs2::introspect_AnchoringOrientation(1, v22);
      v24 = (*(*v21 + 32))(v21, 72, 8);
      *v24 = 1;
      *(v24 + 8) = "handAnchoringChirality";
      *(v24 + 16) = v23;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0x1E00000005;
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      *(v24 + 56) = 0;
      *(v24 + 64) = 0;
      qword_1EE1A9C50 = v24;
      v25 = re::introspectionAllocator(v24);
      re::ecs2::introspect_InputTargetHitTestingType(v25, v26);
      v27 = (*(*v25 + 32))(v25, 72, 8);
      *v27 = 1;
      *(v27 + 8) = "hitTestingType";
      *(v27 + 16) = &qword_1EE1A9C70;
      *(v27 + 24) = 0;
      *(v27 + 32) = 0x1F00000006;
      *(v27 + 40) = 0;
      *(v27 + 48) = 0;
      *(v27 + 56) = 0;
      *(v27 + 64) = 0;
      qword_1EE1A9C58 = v27;
      v28 = re::introspectionAllocator(v27);
      v30 = re::introspect_BOOL(1, v29);
      v31 = (*(*v28 + 32))(v28, 72, 8);
      *v31 = 1;
      *(v31 + 8) = "allowsDirectTouchInput";
      *(v31 + 16) = v30;
      *(v31 + 24) = 0;
      *(v31 + 32) = 0x1900000007;
      *(v31 + 40) = 0;
      *(v31 + 48) = 0;
      *(v31 + 56) = 0;
      *(v31 + 64) = 0;
      qword_1EE1A9C60 = v31;
      v32 = re::introspectionAllocator(v31);
      v34 = re::introspect_BOOL(1, v33);
      v35 = (*(*v32 + 32))(v32, 72, 8);
      *v35 = 1;
      *(v35 + 8) = "allowsDirectPinchInput";
      *(v35 + 16) = v34;
      *(v35 + 24) = 0;
      *(v35 + 32) = 0x1A00000008;
      *(v35 + 40) = 0;
      *(v35 + 48) = 0;
      *(v35 + 56) = 0;
      *(v35 + 64) = 0;
      qword_1EE1A9C68 = v35;
      __cxa_guard_release(&qword_1EE1A9BF8);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 8;
  *(this + 8) = &qword_1EE1A9C30;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::InputTargetComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::InputTargetComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::InputTargetComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::InputTargetComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs220InputTargetComponentELNS_17RealityKitReleaseE9EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v36 = v38;
}

void re::internal::defaultConstruct<re::ecs2::InputTargetComponent>(int a1, int a2, ArcSharedObject *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CF1CF0;
  *(v3 + 25) = 16843009;
  *(v3 + 29) = -256;
  *(v3 + 31) = 1;
}

void re::internal::defaultConstructV2<re::ecs2::InputTargetComponent>(ArcSharedObject *a1)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CF1CF0;
  *(v1 + 25) = 16843009;
  *(v1 + 29) = -256;
  *(v1 + 31) = 1;
}

void re::ecs2::introspect_InputTargetHitTestingType(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A9C00, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1A9C08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9C08))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1A9C70, "InputTargetHitTestingType", 1, 1, 1, 1);
      qword_1EE1A9C70 = &unk_1F5D0C658;
      qword_1EE1A9CB0 = &re::ecs2::introspect_InputTargetHitTestingType(BOOL)::enumTable;
      dword_1EE1A9C80 = 9;
      __cxa_guard_release(&qword_1EE1A9C08);
    }

    if (_MergedGlobals_282)
    {
      break;
    }

    _MergedGlobals_282 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1A9C70, a2);
    v37 = 0xD9B509DEEBC34D24;
    v38 = "InputTargetHitTestingType";
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
      v6 = qword_1EE1A9CB0;
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
      xmmword_1EE1A9C90 = v39;
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
    v28 = __cxa_guard_acquire(&qword_1EE1A9C00);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Unknown";
      qword_1EE1A9C10 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "Strong";
      qword_1EE1A9C18 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 1) = 2;
      *(v34 + 2) = "Weak";
      qword_1EE1A9C20 = v34;
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 8) = 3;
      *(v36 + 16) = "Hierarchical";
      qword_1EE1A9C28 = v36;
      __cxa_guard_release(&qword_1EE1A9C00);
    }
  }
}

void re::ecs2::InputTargetComponent::~InputTargetComponent(re::ecs2::InputTargetComponent *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void _ZZN2re8internal15setIntroVersionINS_4ecs220InputTargetComponentELNS_17RealityKitReleaseE9EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

BOOL re::KeyValueStore::isSupportedValueType(re::KeyValueStore *this, const re::IntrospectionBase *a2)
{
  v3 = &unk_1EE187000;
  {
    v3 = &unk_1EE187000;
    if (v13)
    {
      re::introspect<BOOL>(BOOL)::info = re::introspect_BOOL(0, v14);
      v3 = &unk_1EE187000;
    }
  }

  if (v3[42] == this)
  {
    return 1;
  }

  v4 = &unk_1EE187000;
  {
    v4 = &unk_1EE187000;
    if (v15)
    {
      re::introspect<float>(BOOL)::info = re::introspect_float(0, v16);
      v4 = &unk_1EE187000;
    }
  }

  if (v4[40] == this)
  {
    return 1;
  }

  v5 = &unk_1EE187000;
  {
    v5 = &unk_1EE187000;
    if (v17)
    {
      re::introspect<double>(BOOL)::info = re::introspect_double(0, v18);
      v5 = &unk_1EE187000;
    }
  }

  if (v5[41] == this)
  {
    return 1;
  }

  v6 = &unk_1EE187000;
  {
    v6 = &unk_1EE187000;
    if (v19)
    {
      re::introspect<int>(BOOL)::info = re::introspect_int(0, v20);
      v6 = &unk_1EE187000;
    }
  }

  if (v6[38] == this)
  {
    return 1;
  }

  v7 = &unk_1EE187000;
  {
    v7 = &unk_1EE187000;
    if (v21)
    {
      re::introspect<re::Vector2<float>>(BOOL)::info = re::introspect_Vector2F(0);
      v7 = &unk_1EE187000;
    }
  }

  if (v7[48] == this)
  {
    return 1;
  }

  v8 = &unk_1EE187000;
  {
    v8 = &unk_1EE187000;
    if (v22)
    {
      re::introspect<re::Vector3<float>>(BOOL)::info = re::introspect_Vector3F(0);
      v8 = &unk_1EE187000;
    }
  }

  if (v8[47] == this)
  {
    return 1;
  }

  v9 = &unk_1EE187000;
  {
    v9 = &unk_1EE187000;
    if (v23)
    {
      re::introspect<re::Vector4<float>>(BOOL)::info = re::introspect_Vector4F(0);
      v9 = &unk_1EE187000;
    }
  }

  if (v9[46] == this)
  {
    return 1;
  }

  v10 = &unk_1EE187000;
  {
    v10 = &unk_1EE187000;
    if (v24)
    {
      re::introspect<re::Quaternion<float>>(BOOL)::info = re::introspect_QuaternionF(0);
      v10 = &unk_1EE187000;
    }
  }

  if (v10[245] == this)
  {
    return 1;
  }

  v11 = &unk_1EE187000;
  {
    v11 = &unk_1EE187000;
    if (v25)
    {
      re::introspect<re::GenericSRT<float>>(BOOL)::info = re::introspect_SRT(0);
      v11 = &unk_1EE187000;
    }
  }

  return v11[248] == this || re::introspect<re::DynamicString>() == this || re::introspect<re::SkeletalPose>() == this || re::introspect<re::DynamicArray<float>>() == this || re::introspect<re::DynamicArray<re::Vector3<float>>>() == this || re::introspect<long long>(0) == this || re::introspect<re::BlendShapeWeights>() == this || re::introspect<unsigned char>(0) == this;
}

uint64_t re::introspect<re::Quaternion<float>>(unsigned int a1)
{
  v1 = &unk_1EE187000;
  {
    v1 = &unk_1EE187000;
    if (v3)
    {
      re::introspect<re::Quaternion<float>>(BOOL)::info = re::introspect_QuaternionF(a1);
      v1 = &unk_1EE187000;
    }
  }

  return v1[245];
}

uint64_t re::introspect<re::GenericSRT<float>>()
{
  v0 = &unk_1EE187000;
  {
    v0 = &unk_1EE187000;
    if (v2)
    {
      re::introspect<re::GenericSRT<float>>(BOOL)::info = re::introspect_SRT(0);
      v0 = &unk_1EE187000;
    }
  }

  return v0[248];
}

uint64_t re::introspect<re::DynamicString>()
{
  v0 = &unk_1EE187000;
  {
    v0 = &unk_1EE187000;
    if (v2)
    {
      re::introspect<re::DynamicString>(BOOL)::info = re::IntrospectionInfo<re::DynamicString>::get(0, v3);
      v0 = &unk_1EE187000;
    }
  }

  return v0[231];
}

uint64_t re::introspect<re::SkeletalPose>()
{
  v0 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    v0 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    if (v2)
    {
      re::introspect<re::SkeletalPose>(BOOL)::info = re::introspect_SkeletalPose(0);
      v0 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    }
  }

  return *(v0 + 95);
}

char *re::introspect<re::DynamicArray<float>>()
{
  v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
  {
    v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
    if (v2)
    {
      re::introspect<re::DynamicArray<float>>(BOOL)::info = re::IntrospectionInfo<re::DynamicArray<float>>::get(0, v3);
      v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
    }
  }

  return v0[95];
}

char *re::introspect<re::DynamicArray<re::Vector3<float>>>()
{
  v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
  {
    v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
    if (v2)
    {
      re::introspect<re::DynamicArray<re::Vector3<float>>>(BOOL)::info = re::IntrospectionInfo<re::DynamicArray<re::Vector3<float>>>::get(0);
      v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
    }
  }

  return v0[97];
}

char *re::introspect<long long>(unsigned int a1)
{
  v1 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
  {
    v1 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
    if (v3)
    {
      re::introspect<long long>(BOOL)::info = re::introspect_int64_t(a1, v4);
      v1 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
    }
  }

  return v1[24];
}

uint64_t re::introspect<re::BlendShapeWeights>()
{
  v0 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    v0 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    if (v2)
    {
      re::introspect<re::BlendShapeWeights>(BOOL)::info = re::introspect_BlendShapeWeights(0);
      v0 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    }
  }

  return *(v0 + 109);
}

uint64_t re::introspect<unsigned char>(unsigned int a1)
{
  v1 = &unk_1EE187000;
  {
    v1 = &unk_1EE187000;
    if (v3)
    {
      re::introspect<unsigned char>(BOOL)::info = re::introspect_uint8_t(a1, v4);
      v1 = &unk_1EE187000;
    }
  }

  return v1[39];
}

void re::KeyValueStore::addOrReplaceValue(re::KeyValueStore *this, const re::IntrospectionBase *a2, StringID *a3, __n128 *a4)
{
  v8 = &unk_1EE187000;
  if (a4)
  {
    if ((explicit & 1) == 0)
    {
      v8 = &unk_1EE187000;
      if (v19)
      {
        re::introspect<BOOL>(BOOL)::info = re::introspect_BOOL(0, v20);
        v8 = &unk_1EE187000;
      }
    }

    if (v8[42] == a2)
    {

      re::KeyValueStore::addOrReplaceValue<BOOL>(this, a3, a4);
    }

    else
    {
      v10 = &unk_1EE187000;
      {
        v10 = &unk_1EE187000;
        if (v21)
        {
          re::introspect<float>(BOOL)::info = re::introspect_float(0, v22);
          v10 = &unk_1EE187000;
        }
      }

      if (v10[40] == a2)
      {

        re::KeyValueStore::addOrReplaceValue<float>(this, a3, a4);
      }

      else
      {
        v11 = &unk_1EE187000;
        {
          v11 = &unk_1EE187000;
          if (v24)
          {
            re::introspect<double>(BOOL)::info = re::introspect_double(0, v25);
            v11 = &unk_1EE187000;
          }
        }

        if (v11[41] == a2)
        {

          re::KeyValueStore::addOrReplaceValue<double>(this, a3, a4);
        }

        else
        {
          v12 = &unk_1EE187000;
          {
            v12 = &unk_1EE187000;
            if (v27)
            {
              re::introspect<int>(BOOL)::info = re::introspect_int(0, v28);
              v12 = &unk_1EE187000;
            }
          }

          if (v12[38] == a2)
          {

            re::KeyValueStore::addOrReplaceValue<int>(this, a3, a4);
          }

          else
          {
            v13 = &unk_1EE187000;
            {
              v13 = &unk_1EE187000;
              if (v30)
              {
                re::introspect<re::Vector2<float>>(BOOL)::info = re::introspect_Vector2F(0);
                v13 = &unk_1EE187000;
              }
            }

            if (v13[48] == a2)
            {

              re::KeyValueStore::addOrReplaceValue<re::Vector2<float>>(this, a3, a4);
            }

            else
            {
              v14 = &unk_1EE187000;
              {
                v14 = &unk_1EE187000;
                if (v32)
                {
                  re::introspect<re::Vector3<float>>(BOOL)::info = re::introspect_Vector3F(0);
                  v14 = &unk_1EE187000;
                }
              }

              if (v14[47] == a2)
              {

                re::KeyValueStore::addOrReplaceValue<re::Vector3<float>>(this, a3, a4);
              }

              else
              {
                v15 = &unk_1EE187000;
                {
                  v15 = &unk_1EE187000;
                  if (v33)
                  {
                    re::introspect<re::Vector4<float>>(BOOL)::info = re::introspect_Vector4F(0);
                    v15 = &unk_1EE187000;
                  }
                }

                if (v15[46] == a2)
                {

                  re::KeyValueStore::addOrReplaceValue<re::Vector4<float>>(this, a3, a4);
                }

                else
                {
                  v16 = &unk_1EE187000;
                  {
                    v16 = &unk_1EE187000;
                    if (v34)
                    {
                      re::introspect<re::Quaternion<float>>(BOOL)::info = re::introspect_QuaternionF(0);
                      v16 = &unk_1EE187000;
                    }
                  }

                  if (v16[245] == a2)
                  {

                    re::KeyValueStore::addOrReplaceValue<re::Quaternion<float>>(this, a3, a4);
                  }

                  else if (re::introspect<re::GenericSRT<float>>() == a2)
                  {

                    re::KeyValueStore::addOrReplaceValue<re::GenericSRT<float>>(this, a3, a4);
                  }

                  else if (re::introspect<re::DynamicString>() == a2)
                  {

                    re::KeyValueStore::addOrReplaceValue<re::DynamicString>(this, a3, a4);
                  }

                  else if (re::introspect<re::SkeletalPose>() == a2)
                  {

                    re::KeyValueStore::addOrReplaceValue<re::SkeletalPose>(this, a3, a4);
                  }

                  else if (re::introspect<re::DynamicArray<float>>() == a2)
                  {

                    re::KeyValueStore::addOrReplaceValue<re::DynamicArray<float>>(this, a3, a4);
                  }

                  else if (re::introspect<re::DynamicArray<re::Vector3<float>>>() == a2)
                  {

                    re::KeyValueStore::addOrReplaceValue<re::DynamicArray<re::Vector3<float>>>(this, a3, a4);
                  }

                  else if (re::introspect<long long>(0) == a2)
                  {

                    re::KeyValueStore::addOrReplaceValue<long long>(this, a3, a4);
                  }

                  else if (re::introspect<re::BlendShapeWeights>() == a2)
                  {

                    re::KeyValueStore::addOrReplaceValue<re::BlendShapeWeights>(this, a3, a4);
                  }

                  else if (re::introspect<unsigned char>(0) == a2)
                  {

                    re::KeyValueStore::addOrReplaceValue<unsigned char>(this, a3, a4);
                  }
                }
              }
            }
          }
        }
      }
    }

    return;
  }

  {
    re::introspect<BOOL>(BOOL)::info = re::introspect_BOOL(0, v23);
  }

  if (re::introspect<BOOL>(BOOL)::info == a2)
  {
    LOBYTE(v35) = 0;
    re::KeyValueStore::addOrReplaceValue<BOOL>(this, a3, &v35);
    return;
  }

  {
    re::introspect<float>(BOOL)::info = re::introspect_float(0, v26);
  }

  if (re::introspect<float>(BOOL)::info == a2)
  {
    LODWORD(v35) = 0;
    re::KeyValueStore::addOrReplaceValue<float>(this, a3, &v35);
    return;
  }

  {
    re::introspect<double>(BOOL)::info = re::introspect_double(0, v29);
  }

  if (re::introspect<double>(BOOL)::info == a2)
  {
    *&v35 = 0;
    re::KeyValueStore::addOrReplaceValue<double>(this, a3, &v35);
    return;
  }

  {
    re::introspect<int>(BOOL)::info = re::introspect_int(0, v31);
  }

  if (re::introspect<int>(BOOL)::info == a2)
  {
    LODWORD(v35) = 0;
    re::KeyValueStore::addOrReplaceValue<int>(this, a3, &v35);
    return;
  }

  {
    re::introspect<re::Vector2<float>>(BOOL)::info = re::introspect_Vector2F(0);
  }

  if (re::introspect<re::Vector2<float>>(BOOL)::info == a2)
  {
    *&v35 = 0;
    re::KeyValueStore::addOrReplaceValue<re::Vector2<float>>(this, a3, &v35);
    return;
  }

  {
    re::introspect<re::Vector3<float>>(BOOL)::info = re::introspect_Vector3F(0);
  }

  if (re::introspect<re::Vector3<float>>(BOOL)::info == a2)
  {
    v35 = 0u;
    re::KeyValueStore::addOrReplaceValue<re::Vector3<float>>(this, a3, &v35);
    return;
  }

  {
    re::introspect<re::Vector4<float>>(BOOL)::info = re::introspect_Vector4F(0);
  }

  if (re::introspect<re::Vector4<float>>(BOOL)::info == a2)
  {
    v35 = 0uLL;
    re::KeyValueStore::addOrReplaceValue<re::Vector4<float>>(this, a3, &v35);
    return;
  }

  if (re::introspect<re::Quaternion<float>>(0) == a2)
  {
    v35 = xmmword_1E30474D0;
    re::KeyValueStore::addOrReplaceValue<re::Quaternion<float>>(this, a3, &v35);
    return;
  }

  if (re::introspect<re::GenericSRT<float>>() == a2)
  {
    *&v35 = 0x3F8000003F800000;
    *(&v35 + 1) = 1065353216;
    *&v36 = 0;
    *(&v36 + 1) = 0x3F80000000000000;
    v37 = 0uLL;
    re::KeyValueStore::addOrReplaceValue<re::GenericSRT<float>>(this, a3, &v35);
    return;
  }

  if (re::introspect<re::DynamicString>() == a2)
  {
    re::DynamicString::DynamicString(&v35);
    re::KeyValueStore::addOrReplaceValue<re::DynamicString>(this, a3, &v35);
    v17 = v35;
    if (!v35 || (BYTE8(v35) & 1) == 0)
    {
      return;
    }

    v18 = v36;
LABEL_113:
    (*(*v17 + 40))(v17, v18);
    return;
  }

  if (re::introspect<re::SkeletalPose>() == a2)
  {
    v39 = 0;
    v40 = 0;
    v37 = 0u;
    v38 = 0u;
    *&v35 = 0;
    v36 = 0u;
    *(&v35 + 1) = &str_67;
    v41 = 0;
    re::KeyValueStore::addOrReplaceValue<re::SkeletalPose>(this, a3, &v35);
    re::SkeletalPose::~SkeletalPose(&v35);
    return;
  }

  if (re::introspect<re::DynamicArray<float>>() == a2)
  {
    *&v37 = 0;
    *&v36 = 0;
    v35 = 0uLL;
    DWORD2(v36) = 0;
    re::KeyValueStore::addOrReplaceValue<re::DynamicArray<float>>(this, a3, &v35);
LABEL_111:
    v17 = v35;
    if (!v35)
    {
      return;
    }

    v18 = v37;
    if (!v37)
    {
      return;
    }

    goto LABEL_113;
  }

  if (re::introspect<re::DynamicArray<re::Vector3<float>>>() == a2)
  {
    *&v37 = 0;
    *&v36 = 0;
    v35 = 0uLL;
    DWORD2(v36) = 0;
    re::KeyValueStore::addOrReplaceValue<re::DynamicArray<re::Vector3<float>>>(this, a3, &v35);
    goto LABEL_111;
  }

  if (re::introspect<long long>(0) == a2)
  {
    *&v35 = 0;
    re::KeyValueStore::addOrReplaceValue<long long>(this, a3, &v35);
  }

  else if (re::introspect<re::BlendShapeWeights>() == a2)
  {
    v35 = 0u;
    v36 = 0u;
    re::KeyValueStore::addOrReplaceValue<re::BlendShapeWeights>(this, a3, &v35);
    re::BlendShapeWeights::~BlendShapeWeights(&v35);
  }

  else if (re::introspect<unsigned char>(0) == a2)
  {
    LOBYTE(v35) = 0;
    re::KeyValueStore::addOrReplaceValue<unsigned char>(this, a3, &v35);
  }
}

uint64_t re::KeyValueStore::addOrReplaceValue<double>(re::KeyValueStore *a1, StringID *a2, void *a3)
{
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v6 ^ (v6 >> 31), &v17);
  if (v18 != 0x7FFFFFFF)
  {
    v7 = *(a1 + 3) + 32 * v18;
    v10 = *(v7 + 24);
    v9 = (v7 + 24);
    v8 = v10;
    {
      v16 = v8;
      v8 = v16;
      if (v14)
      {
        re::introspect<double>(BOOL)::info = re::introspect_double(0, v15);
        v8 = v16;
      }
    }

    if (v8 == re::introspect<double>(BOOL)::info)
    {
      return re::HashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1 + 152, a2, a3);
    }

    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v11 ^ (v11 >> 31), &v17);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a1 + 8, &v17);
    re::KeyValueStore::removeValue(a1, *v9, a2);
  }

  {
    {
      re::introspect<double>(BOOL)::info = re::introspect_double(0, v13);
    }
  }

  v17 = re::introspect<double>(BOOL)::info;
  re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 8, a2, &v17);
  return re::HashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 152, a2, a3);
}

uint64_t re::KeyValueStore::addOrReplaceValue<int>(re::KeyValueStore *a1, StringID *a2, _DWORD *a3)
{
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v6 ^ (v6 >> 31), &v17);
  if (v18 != 0x7FFFFFFF)
  {
    v7 = *(a1 + 3) + 32 * v18;
    v10 = *(v7 + 24);
    v9 = (v7 + 24);
    v8 = v10;
    {
      v16 = v8;
      v8 = v16;
      if (v14)
      {
        re::introspect<int>(BOOL)::info = re::introspect_int(0, v15);
        v8 = v16;
      }
    }

    if (v8 == re::introspect<int>(BOOL)::info)
    {
      return re::HashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1 + 200, a2, a3);
    }

    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v11 ^ (v11 >> 31), &v17);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a1 + 8, &v17);
    re::KeyValueStore::removeValue(a1, *v9, a2);
  }

  {
    {
      re::introspect<int>(BOOL)::info = re::introspect_int(0, v13);
    }
  }

  v17 = re::introspect<int>(BOOL)::info;
  re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 8, a2, &v17);
  return re::HashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 200, a2, a3);
}

uint64_t re::KeyValueStore::addOrReplaceValue<re::Vector2<float>>(re::KeyValueStore *a1, StringID *a2, void *a3)
{
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v6 ^ (v6 >> 31), &v15);
  if (v16 != 0x7FFFFFFF)
  {
    v7 = *(a1 + 3) + 32 * v16;
    v10 = *(v7 + 24);
    v9 = (v7 + 24);
    v8 = v10;
    {
      v14 = v8;
      v8 = v14;
      if (v13)
      {
        re::introspect<re::Vector2<float>>(BOOL)::info = re::introspect_Vector2F(0);
        v8 = v14;
      }
    }

    if (v8 == re::introspect<re::Vector2<float>>(BOOL)::info)
    {
      return re::HashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1 + 248, a2, a3);
    }

    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v11 ^ (v11 >> 31), &v15);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a1 + 8, &v15);
    re::KeyValueStore::removeValue(a1, *v9, a2);
  }

  {
    {
      re::introspect<re::Vector2<float>>(BOOL)::info = re::introspect_Vector2F(0);
    }
  }

  v15 = re::introspect<re::Vector2<float>>(BOOL)::info;
  re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 8, a2, &v15);
  return re::HashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 248, a2, a3);
}

double re::KeyValueStore::addOrReplaceValue<re::Vector3<float>>(re::KeyValueStore *a1, StringID *a2, __n128 *a3)
{
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v6 ^ (v6 >> 31), &v15);
  if (v16 != 0x7FFFFFFF)
  {
    v7 = *(a1 + 3) + 32 * v16;
    v10 = *(v7 + 24);
    v9 = (v7 + 24);
    v8 = v10;
    {
      v14 = v8;
      v8 = v14;
      if (v13)
      {
        re::introspect<re::Vector3<float>>(BOOL)::info = re::introspect_Vector3F(0);
        v8 = v14;
      }
    }

    if (v8 == re::introspect<re::Vector3<float>>(BOOL)::info)
    {
      *&result = re::HashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1 + 296, a2, a3).n128_u64[0];
      return result;
    }

    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v11 ^ (v11 >> 31), &v15);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a1 + 8, &v15);
    re::KeyValueStore::removeValue(a1, *v9, a2);
  }

  {
    {
      re::introspect<re::Vector3<float>>(BOOL)::info = re::introspect_Vector3F(0);
    }
  }

  v15 = re::introspect<re::Vector3<float>>(BOOL)::info;
  re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 8, a2, &v15);
  re::HashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 296, a2, a3);
  return result;
}

double re::KeyValueStore::addOrReplaceValue<re::Vector4<float>>(re::KeyValueStore *a1, StringID *a2, __n128 *a3)
{
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v6 ^ (v6 >> 31), &v15);
  if (v16 != 0x7FFFFFFF)
  {
    v7 = *(a1 + 3) + 32 * v16;
    v10 = *(v7 + 24);
    v9 = (v7 + 24);
    v8 = v10;
    {
      v14 = v8;
      v8 = v14;
      if (v13)
      {
        re::introspect<re::Vector4<float>>(BOOL)::info = re::introspect_Vector4F(0);
        v8 = v14;
      }
    }

    if (v8 == re::introspect<re::Vector4<float>>(BOOL)::info)
    {
      *&result = re::HashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1 + 344, a2, a3).n128_u64[0];
      return result;
    }

    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v11 ^ (v11 >> 31), &v15);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a1 + 8, &v15);
    re::KeyValueStore::removeValue(a1, *v9, a2);
  }

  {
    {
      re::introspect<re::Vector4<float>>(BOOL)::info = re::introspect_Vector4F(0);
    }
  }

  v15 = re::introspect<re::Vector4<float>>(BOOL)::info;
  re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 8, a2, &v15);
  re::HashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 344, a2, a3);
  return result;
}

double re::KeyValueStore::addOrReplaceValue<re::Quaternion<float>>(re::KeyValueStore *a1, StringID *a2, __n128 *a3)
{
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v6 ^ (v6 >> 31), &v15);
  if (v16 != 0x7FFFFFFF)
  {
    v7 = *(a1 + 3) + 32 * v16;
    v10 = *(v7 + 24);
    v9 = (v7 + 24);
    v8 = v10;
    {
      v14 = v8;
      v8 = v14;
      if (v13)
      {
        re::introspect<re::Quaternion<float>>(BOOL)::info = re::introspect_QuaternionF(0);
        v8 = v14;
      }
    }

    if (v8 == re::introspect<re::Quaternion<float>>(BOOL)::info)
    {
      *&result = re::HashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1 + 392, a2, a3).n128_u64[0];
      return result;
    }

    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v11 ^ (v11 >> 31), &v15);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a1 + 8, &v15);
    re::KeyValueStore::removeValue(a1, *v9, a2);
  }

  {
    {
      re::introspect<re::Quaternion<float>>(BOOL)::info = re::introspect_QuaternionF(0);
    }
  }

  v15 = re::introspect<re::Quaternion<float>>(BOOL)::info;
  re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 8, a2, &v15);
  re::HashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 392, a2, a3);
  return result;
}

double re::KeyValueStore::addOrReplaceValue<re::GenericSRT<float>>(re::KeyValueStore *a1, StringID *a2, __int128 *a3)
{
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v6 ^ (v6 >> 31), &v15);
  if (v16 != 0x7FFFFFFF)
  {
    v7 = *(a1 + 3) + 32 * v16;
    v10 = *(v7 + 24);
    v9 = (v7 + 24);
    v8 = v10;
    {
      v14 = v8;
      v8 = v14;
      if (v13)
      {
        re::introspect<re::GenericSRT<float>>(BOOL)::info = re::introspect_SRT(0);
        v8 = v14;
      }
    }

    if (v8 == re::introspect<re::GenericSRT<float>>(BOOL)::info)
    {
      *&result = re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1 + 440, a2, a3).n128_u64[0];
      return result;
    }

    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v11 ^ (v11 >> 31), &v15);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a1 + 8, &v15);
    re::KeyValueStore::removeValue(a1, *v9, a2);
  }

  {
    {
      re::introspect<re::GenericSRT<float>>(BOOL)::info = re::introspect_SRT(0);
    }
  }

  v15 = re::introspect<re::GenericSRT<float>>(BOOL)::info;
  re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 8, a2, &v15);
  re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 440, a2, a3);
  return result;
}

re::DynamicString *re::KeyValueStore::addOrReplaceValue<re::DynamicString>(re::KeyValueStore *a1, StringID *a2, const re::DynamicString *a3)
{
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v6 ^ (v6 >> 31), &v17);
  if (v18 != 0x7FFFFFFF)
  {
    v7 = *(a1 + 3) + 32 * v18;
    v10 = *(v7 + 24);
    v9 = (v7 + 24);
    v8 = v10;
    {
      v16 = v8;
      v8 = v16;
      if (v14)
      {
        re::introspect<re::DynamicString>(BOOL)::info = re::IntrospectionInfo<re::DynamicString>::get(0, v15);
        v8 = v16;
      }
    }

    if (v8 == re::introspect<re::DynamicString>(BOOL)::info)
    {
      return re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1 + 488, a2, a3);
    }

    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v11 ^ (v11 >> 31), &v17);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a1 + 8, &v17);
    re::KeyValueStore::removeValue(a1, *v9, a2);
  }

  {
    {
      re::introspect<re::DynamicString>(BOOL)::info = re::IntrospectionInfo<re::DynamicString>::get(0, v13);
    }
  }

  v17 = re::introspect<re::DynamicString>(BOOL)::info;
  re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 8, a2, &v17);
  return re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 488, a2, a3);
}

void *re::KeyValueStore::addOrReplaceValue<re::SkeletalPose>(uint64_t a1, const re::StringID *a2, uint64_t *a3)
{
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v6 ^ (v6 >> 31), &v19);
  if (HIDWORD(v20) == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(a1 + 24) + 32 * HIDWORD(v20);
  v10 = *(v7 + 24);
  v9 = (v7 + 24);
  v8 = v10;
  {
    v18 = v8;
    v8 = v18;
    if (v17)
    {
      re::introspect<re::SkeletalPose>(BOOL)::info = re::introspect_SkeletalPose(0);
      v8 = v18;
    }
  }

  if (v8 != re::introspect<re::SkeletalPose>(BOOL)::info)
  {
    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v11 ^ (v11 >> 31), &v19);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a1 + 8, &v19);
    re::KeyValueStore::removeValue(a1, *v9, a2);
LABEL_5:
    {
      re::introspect<re::SkeletalPose>(BOOL)::info = re::introspect_SkeletalPose(0);
    }

    v19 = re::introspect<re::SkeletalPose>(BOOL)::info;
    re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 8, a2, &v19);
    return re::HashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 536, a2, a3);
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  re::HashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v19, a1 + 536, a2);
  v15 = HIDWORD(v20);
  if (HIDWORD(v20) != 0x7FFFFFFF)
  {
    ++*(a1 + 576);
    v16 = (*(a1 + 552) + 112 * v15);
    v13 = v16 + 3;
    re::StringID::operator=(v16 + 3, a3);
    re::FixedArray<re::GenericSRT<float>>::operator=(v16 + 5, (a3 + 2));
    re::DynamicArray<BOOL>::operator=((v16 + 8), a3 + 5);
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v16 + 13, a3[10]);
    return v13;
  }

  return re::HashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID const&,re::SkeletalPose const&>(a1 + 536, v19, v20, a2, a3);
}

uint64_t re::KeyValueStore::addOrReplaceValue<re::DynamicArray<float>>(re::KeyValueStore *a1, StringID *a2, uint64_t *a3)
{
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v6 ^ (v6 >> 31), &v17);
  if (v18 != 0x7FFFFFFF)
  {
    v7 = *(a1 + 3) + 32 * v18;
    v10 = *(v7 + 24);
    v9 = (v7 + 24);
    v8 = v10;
    {
      v16 = v8;
      v8 = v16;
      if (v14)
      {
        re::introspect<re::DynamicArray<float>>(BOOL)::info = re::IntrospectionInfo<re::DynamicArray<float>>::get(0, v15);
        v8 = v16;
      }
    }

    if (v8 == re::introspect<re::DynamicArray<float>>(BOOL)::info)
    {
      return re::HashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1 + 584, a2, a3);
    }

    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v11 ^ (v11 >> 31), &v17);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a1 + 8, &v17);
    re::KeyValueStore::removeValue(a1, *v9, a2);
  }

  {
    {
      re::introspect<re::DynamicArray<float>>(BOOL)::info = re::IntrospectionInfo<re::DynamicArray<float>>::get(0, v13);
    }
  }

  v17 = re::introspect<re::DynamicArray<float>>(BOOL)::info;
  re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 8, a2, &v17);
  return re::HashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 584, a2, a3);
}

uint64_t re::KeyValueStore::addOrReplaceValue<re::DynamicArray<re::Vector3<float>>>(re::KeyValueStore *a1, StringID *a2, uint64_t *a3)
{
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v6 ^ (v6 >> 31), &v15);
  if (v16 != 0x7FFFFFFF)
  {
    v7 = *(a1 + 3) + 32 * v16;
    v10 = *(v7 + 24);
    v9 = (v7 + 24);
    v8 = v10;
    {
      v14 = v8;
      v8 = v14;
      if (v13)
      {
        re::introspect<re::DynamicArray<re::Vector3<float>>>(BOOL)::info = re::IntrospectionInfo<re::DynamicArray<re::Vector3<float>>>::get(0);
        v8 = v14;
      }
    }

    if (v8 == re::introspect<re::DynamicArray<re::Vector3<float>>>(BOOL)::info)
    {
      return re::HashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1 + 632, a2, a3);
    }

    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v11 ^ (v11 >> 31), &v15);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a1 + 8, &v15);
    re::KeyValueStore::removeValue(a1, *v9, a2);
  }

  {
    {
      re::introspect<re::DynamicArray<re::Vector3<float>>>(BOOL)::info = re::IntrospectionInfo<re::DynamicArray<re::Vector3<float>>>::get(0);
    }
  }

  v15 = re::introspect<re::DynamicArray<re::Vector3<float>>>(BOOL)::info;
  re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 8, a2, &v15);
  return re::HashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 632, a2, a3);
}

uint64_t *re::KeyValueStore::addOrReplaceValue<re::BlendShapeWeights>(uint64_t a1, const re::StringID *a2, uint64_t a3)
{
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v6 ^ (v6 >> 31), &v19);
  if (HIDWORD(v20) == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(a1 + 24) + 32 * HIDWORD(v20);
  v10 = *(v7 + 24);
  v9 = (v7 + 24);
  v8 = v10;
  {
    v18 = v8;
    v8 = v18;
    if (v17)
    {
      re::introspect<re::BlendShapeWeights>(BOOL)::info = re::introspect_BlendShapeWeights(0);
      v8 = v18;
    }
  }

  if (v8 != re::introspect<re::BlendShapeWeights>(BOOL)::info)
  {
    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v11 ^ (v11 >> 31), &v19);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a1 + 8, &v19);
    re::KeyValueStore::removeValue(a1, *v9, a2);
LABEL_5:
    {
      re::introspect<re::BlendShapeWeights>(BOOL)::info = re::introspect_BlendShapeWeights(0);
    }

    v19 = re::introspect<re::BlendShapeWeights>(BOOL)::info;
    re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 8, a2, &v19);
    return re::HashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 728, a2, a3);
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  re::HashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v19, a1 + 728, a2);
  v15 = HIDWORD(v20);
  if (HIDWORD(v20) != 0x7FFFFFFF)
  {
    ++*(a1 + 768);
    v16 = *(a1 + 744) + 56 * v15;
    v13 = v16 + 24;
    re::FixedArray<float>::operator=((v16 + 24), a3);
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((v16 + 48), *(a3 + 24));
    return v13;
  }

  return re::HashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID const&,re::BlendShapeWeights const&>(a1 + 728, v19, v20, a2, a3);
}

uint64_t re::KeyValueStore::addOrReplaceValue<unsigned char>(uint64_t a1, StringID *a2, _BYTE *a3)
{
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v6 ^ (v6 >> 31), &v21);
  if (HIDWORD(v22) != 0x7FFFFFFF)
  {
    v7 = *(a1 + 24) + 32 * HIDWORD(v22);
    v10 = *(v7 + 24);
    v9 = (v7 + 24);
    v8 = v10;
    {
      v20 = v8;
      v8 = v20;
      if (v18)
      {
        re::introspect<unsigned char>(BOOL)::info = re::introspect_uint8_t(0, v19);
        v8 = v20;
      }
    }

    if (v8 == re::introspect<unsigned char>(BOOL)::info)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      re::HashTable<re::StringID,re::RenderGraphDataNodeConnection const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v21, a1 + 776, a2);
      v14 = HIDWORD(v22);
      if (HIDWORD(v22) == 0x7FFFFFFF)
      {
        v15 = re::HashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1 + 776, v22, v21);
        re::StringID::StringID((v15 + 8), a2);
        *(v15 + 24) = *a3;
        v12 = v15 + 24;
        ++*(a1 + 816);
      }

      else
      {
        ++*(a1 + 816);
        v16 = *(a1 + 792) + 32 * v14;
        *(v16 + 24) = *a3;
        return v16 + 24;
      }

      return v12;
    }

    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v11 ^ (v11 >> 31), &v21);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a1 + 8, &v21);
    re::KeyValueStore::removeValue(a1, *v9, a2);
  }

  {
    re::introspect<unsigned char>(BOOL)::info = re::introspect_uint8_t(0, v17);
  }

  v21 = re::introspect<unsigned char>(BOOL)::info;
  re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 8, a2, &v21);
  return re::HashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 776, a2, a3);
}

uint64_t re::KeyValueStore::addAndSwapValue(re::KeyValueStore *this, const re::IntrospectionBase *a2, const re::StringID *a3, __int128 *a4)
{
  if (a4)
  {
    v4 = a4;
    v6 = a3;
    v7 = a2;
    v5 = this;
    v8 = &unk_1EE187000;
    {
      goto LABEL_3;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) ", "swapValue", "addAndSwapValue", 67);
    _os_crash();
    __break(1u);
  }

  {
    v8[42] = re::introspect_BOOL(0, v74);
  }

LABEL_3:
  if (v8[42] == v7)
  {
    v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 8, v6, v12 ^ (v12 >> 31), &v100);
    if (v101 != 0x7FFFFFFF)
    {
      v13 = *(v5 + 3) + 32 * v101;
      v16 = *(v13 + 24);
      v15 = (v13 + 24);
      v14 = v16;
      if ((atomic_load_explicit(v9, memory_order_acquire) & 1) == 0)
      {
        v93 = v14;
        v14 = v93;
        if (v80)
        {
          v8[42] = re::introspect_BOOL(0, v81);
          v14 = v93;
        }
      }

      if (v14 == v8[42])
      {
        v36 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) >> 27));
        re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 56, v6, v36 ^ (v36 >> 31), &v100);
        v37 = *(v5 + 9) + 32 * v101;
        v38 = *(v37 + 24);
        *(v37 + 24) = *v4;
        *v4 = v38;
        return 1;
      }

      v17 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) >> 27));
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 8, v6, v17 ^ (v17 >> 31), &v100);
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(v5 + 8, &v100);
      re::KeyValueStore::removeValue(v5, *v15, v6);
    }

    {
      v8[42] = re::introspect_BOOL(0, v77);
    }

    v100 = v8[42];
    re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v5 + 8, v6, &v100);
    re::HashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v5 + 56, v6, v4);
    return 0;
  }

  {
    re::introspect<float>(BOOL)::info = re::introspect_float(0, v75);
  }

  if (re::introspect<float>(BOOL)::info == v7)
  {
    v18 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 8, v6, v18 ^ (v18 >> 31), &v100);
    if (v101 != 0x7FFFFFFF)
    {
      v19 = *(v5 + 3) + 32 * v101;
      v22 = *(v19 + 24);
      v21 = (v19 + 24);
      v20 = v22;
      {
        v94 = v20;
        v20 = v94;
        if (v83)
        {
          re::introspect<float>(BOOL)::info = re::introspect_float(0, v84);
          v20 = v94;
        }
      }

      if (v20 == re::introspect<float>(BOOL)::info)
      {
        v45 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) >> 27));
        re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 104, v6, v45 ^ (v45 >> 31), &v100);
        v46 = *(v5 + 15) + 32 * v101;
        v47 = *(v46 + 24);
        *(v46 + 24) = *v4;
        *v4 = v47;
        return 1;
      }

      v23 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) >> 27));
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 8, v6, v23 ^ (v23 >> 31), &v100);
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(v5 + 8, &v100);
      re::KeyValueStore::removeValue(v5, *v21, v6);
    }

    {
      re::introspect<float>(BOOL)::info = re::introspect_float(0, v79);
    }

    v100 = re::introspect<float>(BOOL)::info;
    re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v5 + 8, v6, &v100);
    re::HashTable<re::StringID,float,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v5 + 104, v6, v4);
    return 0;
  }

  {
    re::introspect<double>(BOOL)::info = re::introspect_double(0, v76);
  }

  if (re::introspect<double>(BOOL)::info == v7)
  {
    v24 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 8, v6, v24 ^ (v24 >> 31), &v100);
    if (v101 != 0x7FFFFFFF)
    {
      v25 = *(v5 + 3) + 32 * v101;
      v28 = *(v25 + 24);
      v27 = (v25 + 24);
      v26 = v28;
      {
        v95 = v26;
        v26 = v95;
        if (v86)
        {
          re::introspect<double>(BOOL)::info = re::introspect_double(0, v87);
          v26 = v95;
        }
      }

      if (v26 == re::introspect<double>(BOOL)::info)
      {
        v54 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) >> 27));
        re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 152, v6, v54 ^ (v54 >> 31), &v100);
        v55 = *(v5 + 21) + 32 * v101;
        v56 = *(v55 + 24);
        *(v55 + 24) = *v4;
LABEL_82:
        *v4 = v56;
        return 1;
      }

      v29 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) >> 27));
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 8, v6, v29 ^ (v29 >> 31), &v100);
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(v5 + 8, &v100);
      re::KeyValueStore::removeValue(v5, *v27, v6);
    }

    {
      re::introspect<double>(BOOL)::info = re::introspect_double(0, v82);
    }

    v100 = re::introspect<double>(BOOL)::info;
    re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v5 + 8, v6, &v100);
    re::HashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v5 + 152, v6, v4);
    return 0;
  }

  {
    re::introspect<int>(BOOL)::info = re::introspect_int(0, v78);
  }

  if (re::introspect<int>(BOOL)::info == v7)
  {
    v30 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 8, v6, v30 ^ (v30 >> 31), &v100);
    if (v101 == 0x7FFFFFFF)
    {
      goto LABEL_52;
    }

    v31 = *(v5 + 3) + 32 * v101;
    v34 = *(v31 + 24);
    v33 = (v31 + 24);
    v32 = v34;
    {
      v96 = v32;
      v32 = v96;
      if (v88)
      {
        re::introspect<int>(BOOL)::info = re::introspect_int(0, v89);
        v32 = v96;
      }
    }

    if (v32 != re::introspect<int>(BOOL)::info)
    {
      v35 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) >> 27));
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 8, v6, v35 ^ (v35 >> 31), &v100);
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(v5 + 8, &v100);
      re::KeyValueStore::removeValue(v5, *v33, v6);
LABEL_52:
      {
        re::introspect<int>(BOOL)::info = re::introspect_int(0, v85);
      }

      v100 = re::introspect<int>(BOOL)::info;
      re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v5 + 8, v6, &v100);
      re::HashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v5 + 200, v6, v4);
      return 0;
    }

    v63 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 200, v6, v63 ^ (v63 >> 31), &v100);
    v64 = *(v5 + 27) + 32 * v101;
    v65 = *(v64 + 24);
    *(v64 + 24) = *v4;
    *v4 = v65;
    return 1;
  }

  {
    re::introspect<re::Vector2<float>>(BOOL)::info = re::introspect_Vector2F(0);
  }

  if (re::introspect<re::Vector2<float>>(BOOL)::info == v7)
  {
    v39 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 8, v6, v39 ^ (v39 >> 31), &v100);
    if (v101 == 0x7FFFFFFF)
    {
      goto LABEL_59;
    }

    v40 = *(v5 + 3) + 32 * v101;
    v43 = *(v40 + 24);
    v42 = (v40 + 24);
    v41 = v43;
    {
      v97 = v41;
      v41 = v97;
      if (v90)
      {
        re::introspect<re::Vector2<float>>(BOOL)::info = re::introspect_Vector2F(0);
        v41 = v97;
      }
    }

    if (v41 != re::introspect<re::Vector2<float>>(BOOL)::info)
    {
      v44 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) >> 27));
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 8, v6, v44 ^ (v44 >> 31), &v100);
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(v5 + 8, &v100);
      re::KeyValueStore::removeValue(v5, *v42, v6);
LABEL_59:
      {
        re::introspect<re::Vector2<float>>(BOOL)::info = re::introspect_Vector2F(0);
      }

      v100 = re::introspect<re::Vector2<float>>(BOOL)::info;
      re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v5 + 8, v6, &v100);
      re::HashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v5 + 248, v6, v4);
      return 0;
    }

    v66 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 248, v6, v66 ^ (v66 >> 31), &v100);
    v67 = *(v5 + 33) + 32 * v101;
    v56 = *(v67 + 24);
    *(v67 + 24) = *v4;
    goto LABEL_82;
  }

  {
    re::introspect<re::Vector3<float>>(BOOL)::info = re::introspect_Vector3F(0);
  }

  if (re::introspect<re::Vector3<float>>(BOOL)::info == v7)
  {
    v48 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 8, v6, v48 ^ (v48 >> 31), &v100);
    if (v101 != 0x7FFFFFFF)
    {
      v49 = *(v5 + 3) + 32 * v101;
      v52 = *(v49 + 24);
      v51 = (v49 + 24);
      v50 = v52;
      {
        v98 = v50;
        v50 = v98;
        if (v91)
        {
          re::introspect<re::Vector3<float>>(BOOL)::info = re::introspect_Vector3F(0);
          v50 = v98;
        }
      }

      if (v50 == re::introspect<re::Vector3<float>>(BOOL)::info)
      {
        v68 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) >> 27));
        re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 296, v6, v68 ^ (v68 >> 31), &v100);
        v69 = v101;
        v70 = *(v5 + 39);
LABEL_91:
        v72 = v70 + 48 * v69;
        v73 = *(v72 + 32);
        *(v72 + 32) = *v4;
        *v4 = v73;
        return 1;
      }

      v53 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) >> 27));
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 8, v6, v53 ^ (v53 >> 31), &v100);
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(v5 + 8, &v100);
      re::KeyValueStore::removeValue(v5, *v51, v6);
    }

    {
      re::introspect<re::Vector3<float>>(BOOL)::info = re::introspect_Vector3F(0);
    }

    v100 = re::introspect<re::Vector3<float>>(BOOL)::info;
    re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v5 + 8, v6, &v100);
    re::HashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v5 + 296, v6, v4);
    return 0;
  }

  {
    re::introspect<re::Vector4<float>>(BOOL)::info = re::introspect_Vector4F(0);
  }

  if (re::introspect<re::Vector4<float>>(BOOL)::info == v7)
  {
    v57 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 8, v6, v57 ^ (v57 >> 31), &v100);
    if (v101 == 0x7FFFFFFF)
    {
      goto LABEL_73;
    }

    v58 = *(v5 + 3) + 32 * v101;
    v61 = *(v58 + 24);
    v60 = (v58 + 24);
    v59 = v61;
    {
      v99 = v59;
      v59 = v99;
      if (v92)
      {
        re::introspect<re::Vector4<float>>(BOOL)::info = re::introspect_Vector4F(0);
        v59 = v99;
      }
    }

    if (v59 != re::introspect<re::Vector4<float>>(BOOL)::info)
    {
      v62 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) >> 27));
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 8, v6, v62 ^ (v62 >> 31), &v100);
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(v5 + 8, &v100);
      re::KeyValueStore::removeValue(v5, *v60, v6);
LABEL_73:
      {
        re::introspect<re::Vector4<float>>(BOOL)::info = re::introspect_Vector4F(0);
      }

      v100 = re::introspect<re::Vector4<float>>(BOOL)::info;
      re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v5 + 8, v6, &v100);
      re::HashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v5 + 344, v6, v4);
      return 0;
    }

    v71 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) >> 27));
    re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 344, v6, v71 ^ (v71 >> 31), &v100);
    v69 = v101;
    v70 = *(v5 + 45);
    goto LABEL_91;
  }

  {
    re::introspect<re::Quaternion<float>>(BOOL)::info = re::introspect_QuaternionF(0);
  }

  if (re::introspect<re::Quaternion<float>>(BOOL)::info == v7)
  {

    return re::KeyValueStore::addAndSwapValue<re::Quaternion<float>>(v5, v6, v4);
  }

  else
  {
    {
      re::introspect<re::GenericSRT<float>>(BOOL)::info = re::introspect_SRT(0);
    }

    if (re::introspect<re::GenericSRT<float>>(BOOL)::info == v7)
    {

      return re::KeyValueStore::addAndSwapValue<re::GenericSRT<float>>(v5, v6, v4);
    }

    else if (re::introspect<re::DynamicString>() == v7)
    {

      return re::KeyValueStore::addAndSwapValue<re::DynamicString>(v5, v6, v4);
    }

    else if (re::introspect<re::SkeletalPose>() == v7)
    {

      return re::KeyValueStore::addAndSwapValue<re::SkeletalPose>(v5, v6, v4);
    }

    else if (re::introspect<re::DynamicArray<float>>() == v7)
    {

      return re::KeyValueStore::addAndSwapValue<re::DynamicArray<float>>(v5, v6, v4);
    }

    else if (re::introspect<re::DynamicArray<re::Vector3<float>>>() == v7)
    {

      return re::KeyValueStore::addAndSwapValue<re::DynamicArray<re::Vector3<float>>>(v5, v6, v4);
    }

    else if (re::introspect<long long>(0) == v7)
    {

      return re::KeyValueStore::addAndSwapValue<long long>(v5, v6, v4);
    }

    else if (re::introspect<re::BlendShapeWeights>() == v7)
    {

      return re::KeyValueStore::addAndSwapValue<re::BlendShapeWeights>(v5, v6, v4);
    }

    else
    {
      v10 = re::introspect<unsigned char>(0);
      result = 0;
      if (v10 == v7)
      {

        return re::KeyValueStore::addAndSwapValue<unsigned char>(v5, v6, v4);
      }
    }
  }

  return result;
}

uint64_t re::KeyValueStore::addAndSwapValue<re::Quaternion<float>>(re::KeyValueStore *a1, const re::StringID *a2, _OWORD *a3)
{
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v6 ^ (v6 >> 31), &v18);
  if (v19 != 0x7FFFFFFF)
  {
    v7 = *(a1 + 3) + 32 * v19;
    v10 = *(v7 + 24);
    v9 = (v7 + 24);
    v8 = v10;
    {
      v17 = v8;
      v8 = v17;
      if (v16)
      {
        re::introspect<re::Quaternion<float>>(BOOL)::info = re::introspect_QuaternionF(0);
        v8 = v17;
      }
    }

    if (v8 == re::introspect<re::Quaternion<float>>(BOOL)::info)
    {
      v13 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
      re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 392, a2, v13 ^ (v13 >> 31), &v18);
      v14 = *(a1 + 51) + 48 * v19;
      v15 = *(v14 + 32);
      *(v14 + 32) = *a3;
      *a3 = v15;
      return 1;
    }

    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v11 ^ (v11 >> 31), &v18);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a1 + 8, &v18);
    re::KeyValueStore::removeValue(a1, *v9, a2);
  }

  {
    {
      re::introspect<re::Quaternion<float>>(BOOL)::info = re::introspect_QuaternionF(0);
    }
  }

  v18 = re::introspect<re::Quaternion<float>>(BOOL)::info;
  re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 8, a2, &v18);
  re::HashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 392, a2, a3);
  return 0;
}

uint64_t re::KeyValueStore::addAndSwapValue<re::GenericSRT<float>>(re::KeyValueStore *a1, const re::StringID *a2, __int128 *a3)
{
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v6 ^ (v6 >> 31), &v22);
  if (v23 != 0x7FFFFFFF)
  {
    v7 = *(a1 + 3) + 32 * v23;
    v10 = *(v7 + 24);
    v9 = (v7 + 24);
    v8 = v10;
    {
      v21 = v8;
      v8 = v21;
      if (v20)
      {
        re::introspect<re::GenericSRT<float>>(BOOL)::info = re::introspect_SRT(0);
        v8 = v21;
      }
    }

    if (v8 == re::introspect<re::GenericSRT<float>>(BOOL)::info)
    {
      v13 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
      re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 440, a2, v13 ^ (v13 >> 31), &v22);
      v14 = (*(a1 + 57) + 80 * v23);
      v15 = v14[2];
      v16 = v14[3];
      v17 = v14[4];
      v19 = a3[1];
      v18 = a3[2];
      v14[2] = *a3;
      v14[3] = v19;
      v14[4] = v18;
      a3[1] = v16;
      a3[2] = v17;
      *a3 = v15;
      return 1;
    }

    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v11 ^ (v11 >> 31), &v22);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a1 + 8, &v22);
    re::KeyValueStore::removeValue(a1, *v9, a2);
  }

  {
    {
      re::introspect<re::GenericSRT<float>>(BOOL)::info = re::introspect_SRT(0);
    }
  }

  v22 = re::introspect<re::GenericSRT<float>>(BOOL)::info;
  re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 8, a2, &v22);
  re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 440, a2, a3);
  return 0;
}

uint64_t re::KeyValueStore::addAndSwapValue<re::DynamicString>(re::KeyValueStore *a1, const re::StringID *a2, const re::DynamicString *a3)
{
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v6 ^ (v6 >> 31), &v20);
  if (HIDWORD(v21) == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(a1 + 3) + 32 * HIDWORD(v21);
  v10 = *(v7 + 24);
  v9 = (v7 + 24);
  v8 = v10;
  {
    v19 = v8;
    v8 = v19;
    if (v17)
    {
      re::introspect<re::DynamicString>(BOOL)::info = re::IntrospectionInfo<re::DynamicString>::get(0, v18);
      v8 = v19;
    }
  }

  if (v8 != re::introspect<re::DynamicString>(BOOL)::info)
  {
    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v11 ^ (v11 >> 31), &v20);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a1 + 8, &v20);
    re::KeyValueStore::removeValue(a1, *v9, a2);
LABEL_5:
    {
      {
        re::introspect<re::DynamicString>(BOOL)::info = re::IntrospectionInfo<re::DynamicString>::get(0, v16);
      }
    }

    v20 = re::introspect<re::DynamicString>(BOOL)::info;
    re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 8, a2, &v20);
    re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 488, a2, a3);
    return 0;
  }

  v13 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 488, a2, v13 ^ (v13 >> 31), &v20);
  v14 = (*(a1 + 63) + 56 * HIDWORD(v21));
  v15 = *(v14 + 3);
  v14 = (v14 + 24);
  v20 = v15;
  *v14 = 0;
  v22 = *(v14 + 2);
  *(v14 + 2) = 0;
  v23 = *(v14 + 3);
  *(v14 + 3) = 0;
  v21 = *(v14 + 1);
  *(v14 + 1) = 0;
  re::DynamicString::operator=(v14, a3);
  re::DynamicString::operator=(a3, &v20);
  if (v20 && (v21 & 1) != 0)
  {
    (*(*v20 + 40))();
  }

  return 1;
}

uint64_t re::KeyValueStore::addAndSwapValue<re::SkeletalPose>(re::KeyValueStore *a1, const re::StringID *a2, uint64_t *a3)
{
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v6 ^ (v6 >> 31), &v18);
  if (v19 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(a1 + 3) + 32 * v19;
  v10 = *(v7 + 24);
  v9 = (v7 + 24);
  v8 = v10;
  {
    v17 = v8;
    v8 = v17;
    if (v16)
    {
      re::introspect<re::SkeletalPose>(BOOL)::info = re::introspect_SkeletalPose(0);
      v8 = v17;
    }
  }

  if (v8 != re::introspect<re::SkeletalPose>(BOOL)::info)
  {
    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v11 ^ (v11 >> 31), &v18);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a1 + 8, &v18);
    re::KeyValueStore::removeValue(a1, *v9, a2);
LABEL_5:
    {
      {
        re::introspect<re::SkeletalPose>(BOOL)::info = re::introspect_SkeletalPose(0);
      }
    }

    v18 = re::introspect<re::SkeletalPose>(BOOL)::info;
    re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 8, a2, &v18);
    re::HashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 536, a2, a3);
    return 0;
  }

  re::HashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v18, a1 + 536, a2);
  v13 = *(a1 + 69) + 112 * v19;
  re::StringID::StringID(&v18, (v13 + 24));
  re::FixedArray<re::GenericSRT<float>>::FixedArray(v20, v13 + 40);
  re::DynamicArray<BOOL>::DynamicArray(v21, (v13 + 64));
  v14 = *(v13 + 104);
  v22 = v14;
  if (v14)
  {
    v15 = (v14 + 8);
  }

  re::StringID::operator=((v13 + 24), a3);
  re::FixedArray<re::GenericSRT<float>>::operator=((v13 + 40), (a3 + 2));
  re::DynamicArray<BOOL>::operator=(v13 + 64, a3 + 5);
  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((v13 + 104), a3[10]);
  re::StringID::operator=(a3, &v18);
  re::FixedArray<re::GenericSRT<float>>::operator=(a3 + 2, v20);
  re::DynamicArray<BOOL>::operator=((a3 + 5), v21);
  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(a3 + 10, v22);
  re::SkeletalPose::~SkeletalPose(&v18);
  return 1;
}

uint64_t re::KeyValueStore::addAndSwapValue<re::DynamicArray<float>>(re::KeyValueStore *a1, const re::StringID *a2, uint64_t *a3)
{
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v6 ^ (v6 >> 31), &v20);
  if (HIDWORD(v21) == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(a1 + 3) + 32 * HIDWORD(v21);
  v10 = *(v7 + 24);
  v9 = (v7 + 24);
  v8 = v10;
  {
    v19 = v8;
    v8 = v19;
    if (v17)
    {
      re::introspect<re::DynamicArray<float>>(BOOL)::info = re::IntrospectionInfo<re::DynamicArray<float>>::get(0, v18);
      v8 = v19;
    }
  }

  if (v8 != re::introspect<re::DynamicArray<float>>(BOOL)::info)
  {
    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v11 ^ (v11 >> 31), &v20);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a1 + 8, &v20);
    re::KeyValueStore::removeValue(a1, *v9, a2);
LABEL_5:
    {
      {
        re::introspect<re::DynamicArray<float>>(BOOL)::info = re::IntrospectionInfo<re::DynamicArray<float>>::get(0, v16);
      }
    }

    v20 = re::introspect<re::DynamicArray<float>>(BOOL)::info;
    re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 8, a2, &v20);
    re::HashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 584, a2, a3);
    return 0;
  }

  v13 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
  re::HashTable<re::StringID,re::Optional<re::DynamicString>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 584, a2, v13 ^ (v13 >> 31), &v20);
  v14 = (*(a1 + 75) + (HIDWORD(v21) << 6));
  v15 = v14[3];
  v14 += 3;
  v20 = v15;
  *v14 = 0;
  v21 = v14[1];
  v14[1] = 0;
  v22 = v14[2];
  v14[2] = 0;
  v24 = v14[4];
  v14[4] = 0;
  ++*(v14 + 6);
  v23 = 1;
  re::DynamicArray<re::RigComponentConstraint>::operator=(v14, a3);
  re::DynamicArray<re::RigComponentConstraint>::operator=(a3, &v20);
  if (v20 && v24)
  {
    (*(*v20 + 40))();
  }

  return 1;
}

uint64_t re::KeyValueStore::addAndSwapValue<re::DynamicArray<re::Vector3<float>>>(re::KeyValueStore *a1, const re::StringID *a2, uint64_t *a3)
{
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v6 ^ (v6 >> 31), &v18);
  if (HIDWORD(v19) == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(a1 + 3) + 32 * HIDWORD(v19);
  v10 = *(v7 + 24);
  v9 = (v7 + 24);
  v8 = v10;
  {
    v17 = v8;
    v8 = v17;
    if (v16)
    {
      re::introspect<re::DynamicArray<re::Vector3<float>>>(BOOL)::info = re::IntrospectionInfo<re::DynamicArray<re::Vector3<float>>>::get(0);
      v8 = v17;
    }
  }

  if (v8 != re::introspect<re::DynamicArray<re::Vector3<float>>>(BOOL)::info)
  {
    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v11 ^ (v11 >> 31), &v18);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a1 + 8, &v18);
    re::KeyValueStore::removeValue(a1, *v9, a2);
LABEL_5:
    {
      {
        re::introspect<re::DynamicArray<re::Vector3<float>>>(BOOL)::info = re::IntrospectionInfo<re::DynamicArray<re::Vector3<float>>>::get(0);
      }
    }

    v18 = re::introspect<re::DynamicArray<re::Vector3<float>>>(BOOL)::info;
    re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 8, a2, &v18);
    re::HashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 632, a2, a3);
    return 0;
  }

  v13 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
  re::HashTable<re::StringID,re::Optional<re::DynamicString>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 632, a2, v13 ^ (v13 >> 31), &v18);
  v14 = (*(a1 + 81) + (HIDWORD(v19) << 6));
  v15 = v14[3];
  v14 += 3;
  v18 = v15;
  *v14 = 0;
  v19 = v14[1];
  v14[1] = 0;
  v20 = v14[2];
  v14[2] = 0;
  v22 = v14[4];
  v14[4] = 0;
  ++*(v14 + 6);
  v21 = 1;
  re::DynamicArray<re::RigComponentConstraint>::operator=(v14, a3);
  re::DynamicArray<re::RigComponentConstraint>::operator=(a3, &v18);
  if (v18 && v22)
  {
    (*(*v18 + 40))();
  }

  return 1;
}

uint64_t re::KeyValueStore::addAndSwapValue<long long>(re::KeyValueStore *a1, const re::StringID *a2, void *a3)
{
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v6 ^ (v6 >> 31), &v20);
  if (v21 != 0x7FFFFFFF)
  {
    v7 = *(a1 + 3) + 32 * v21;
    v10 = *(v7 + 24);
    v9 = (v7 + 24);
    v8 = v10;
    {
      v19 = v8;
      v8 = v19;
      if (v17)
      {
        re::introspect<long long>(BOOL)::info = re::introspect_int64_t(0, v18);
        v8 = v19;
      }
    }

    if (v8 == re::introspect<long long>(BOOL)::info)
    {
      v13 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 680, a2, v13 ^ (v13 >> 31), &v20);
      v14 = *(a1 + 87) + 32 * v21;
      v15 = *(v14 + 24);
      *(v14 + 24) = *a3;
      *a3 = v15;
      return 1;
    }

    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v11 ^ (v11 >> 31), &v20);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a1 + 8, &v20);
    re::KeyValueStore::removeValue(a1, *v9, a2);
  }

  {
    {
      re::introspect<long long>(BOOL)::info = re::introspect_int64_t(0, v16);
    }
  }

  v20 = re::introspect<long long>(BOOL)::info;
  re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 8, a2, &v20);
  re::HashTable<re::StringID,long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 680, a2, a3);
  return 0;
}

uint64_t re::KeyValueStore::addAndSwapValue<re::BlendShapeWeights>(re::KeyValueStore *a1, const re::StringID *a2, uint64_t *a3)
{
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v6 ^ (v6 >> 31), &v18);
  if (v19 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(a1 + 3) + 32 * v19;
  v10 = *(v7 + 24);
  v9 = (v7 + 24);
  v8 = v10;
  {
    v17 = v8;
    v8 = v17;
    if (v16)
    {
      re::introspect<re::BlendShapeWeights>(BOOL)::info = re::introspect_BlendShapeWeights(0);
      v8 = v17;
    }
  }

  if (v8 != re::introspect<re::BlendShapeWeights>(BOOL)::info)
  {
    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v11 ^ (v11 >> 31), &v18);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a1 + 8, &v18);
    re::KeyValueStore::removeValue(a1, *v9, a2);
LABEL_5:
    {
      {
        re::introspect<re::BlendShapeWeights>(BOOL)::info = re::introspect_BlendShapeWeights(0);
      }
    }

    v18 = re::introspect<re::BlendShapeWeights>(BOOL)::info;
    re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 8, a2, &v18);
    re::HashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 728, a2, a3);
    return 0;
  }

  re::HashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v18, a1 + 728, a2);
  v13 = *(a1 + 93) + 56 * v19;
  re::FixedArray<float>::FixedArray(&v18, v13 + 24);
  v14 = *(v13 + 48);
  v20 = v14;
  if (v14)
  {
    v15 = (v14 + 8);
  }

  re::FixedArray<float>::operator=((v13 + 24), a3);
  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((v13 + 48), a3[3]);
  re::FixedArray<float>::operator=(a3, &v18);
  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(a3 + 3, v20);
  re::BlendShapeWeights::~BlendShapeWeights(&v18);
  return 1;
}

uint64_t re::KeyValueStore::addAndSwapValue<unsigned char>(re::KeyValueStore *a1, const re::StringID *a2, _BYTE *a3)
{
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v6 ^ (v6 >> 31), &v19);
  if (v20 != 0x7FFFFFFF)
  {
    v7 = *(a1 + 3) + 32 * v20;
    v10 = *(v7 + 24);
    v9 = (v7 + 24);
    v8 = v10;
    {
      v18 = v8;
      v8 = v18;
      if (v16)
      {
        re::introspect<unsigned char>(BOOL)::info = re::introspect_uint8_t(0, v17);
        v8 = v18;
      }
    }

    if (v8 == re::introspect<unsigned char>(BOOL)::info)
    {
      re::HashTable<re::StringID,re::RenderGraphDataNodeConnection const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v19, a1 + 776, a2);
      v13 = *(a1 + 99) + 32 * v20;
      v14 = *(v13 + 24);
      *(v13 + 24) = *a3;
      *a3 = v14;
      return 1;
    }

    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v11 ^ (v11 >> 31), &v19);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a1 + 8, &v19);
    re::KeyValueStore::removeValue(a1, *v9, a2);
  }

  {
    {
      re::introspect<unsigned char>(BOOL)::info = re::introspect_uint8_t(0, v15);
    }
  }

  v19 = re::introspect<unsigned char>(BOOL)::info;
  re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 8, a2, &v19);
  re::HashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 776, a2, a3);
  return 0;
}

unint64_t re::KeyValueStore::getValue(re::KeyValueStore *this, const re::IntrospectionBase *a2, const re::StringID *a3)
{
  v4 = a2;
  if (!a2)
  {
    v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 8, a3, v6 ^ (v6 >> 31), v41);
    if (v42 == 0x7FFFFFFF)
    {
      return 0;
    }

    v4 = *(*(this + 3) + 32 * v42 + 24);
  }

  v7 = &unk_1EE187000;
  {
    v7 = &unk_1EE187000;
    if (v31)
    {
      re::introspect<BOOL>(BOOL)::info = re::introspect_BOOL(0, v32);
      v7 = &unk_1EE187000;
    }
  }

  if (v4 == v7[42])
  {
    v15 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 56, a3, v15 ^ (v15 >> 31), v41);
    v13 = v42;
    if (v42 != 0x7FFFFFFF)
    {
      v14 = *(this + 9);
      goto LABEL_41;
    }

    return 0;
  }

  v8 = &unk_1EE187000;
  {
    v8 = &unk_1EE187000;
    if (v33)
    {
      re::introspect<float>(BOOL)::info = re::introspect_float(0, v34);
      v8 = &unk_1EE187000;
    }
  }

  if (v4 == v8[40])
  {
    v16 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 104, a3, v16 ^ (v16 >> 31), v41);
    v13 = v42;
    if (v42 != 0x7FFFFFFF)
    {
      v14 = *(this + 15);
      goto LABEL_41;
    }

    return 0;
  }

  v9 = &unk_1EE187000;
  {
    v9 = &unk_1EE187000;
    if (v35)
    {
      re::introspect<double>(BOOL)::info = re::introspect_double(0, v36);
      v9 = &unk_1EE187000;
    }
  }

  if (v4 == v9[41])
  {
    v17 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 152, a3, v17 ^ (v17 >> 31), v41);
    v13 = v42;
    if (v42 != 0x7FFFFFFF)
    {
      v14 = *(this + 21);
      goto LABEL_41;
    }

    return 0;
  }

  v10 = &unk_1EE187000;
  {
    v10 = &unk_1EE187000;
    if (v37)
    {
      re::introspect<int>(BOOL)::info = re::introspect_int(0, v38);
      v10 = &unk_1EE187000;
    }
  }

  if (v4 == v10[38])
  {
    v18 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 200, a3, v18 ^ (v18 >> 31), v41);
    v13 = v42;
    if (v42 != 0x7FFFFFFF)
    {
      v14 = *(this + 27);
      goto LABEL_41;
    }

    return 0;
  }

  v11 = &unk_1EE187000;
  {
    v11 = &unk_1EE187000;
    if (v39)
    {
      re::introspect<re::Vector2<float>>(BOOL)::info = re::introspect_Vector2F(0);
      v11 = &unk_1EE187000;
    }
  }

  if (v4 == v11[48])
  {
    v19 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 248, a3, v19 ^ (v19 >> 31), v41);
    v13 = v42;
    if (v42 != 0x7FFFFFFF)
    {
      v14 = *(this + 33);
      goto LABEL_41;
    }

    return 0;
  }

  v12 = &unk_1EE187000;
  {
    v12 = &unk_1EE187000;
    if (v40)
    {
      re::introspect<re::Vector3<float>>(BOOL)::info = re::introspect_Vector3F(0);
      v12 = &unk_1EE187000;
    }
  }

  if (v4 == v12[47])
  {
    v22 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1))) >> 27));
    re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 296, a3, v22 ^ (v22 >> 31), v41);
    v23 = v42;
    if (v42 == 0x7FFFFFFF)
    {
      return 0;
    }

    v24 = *(this + 39);
    goto LABEL_49;
  }

  {
    re::introspect<re::Vector4<float>>(BOOL)::info = re::introspect_Vector4F(0);
  }

  if (v4 == re::introspect<re::Vector4<float>>(BOOL)::info)
  {
    re::HashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 344, a3, v41);
    v23 = v42;
    if (v42 == 0x7FFFFFFF)
    {
      return 0;
    }

    v24 = *(this + 45);
    goto LABEL_49;
  }

  {
    re::introspect<re::Quaternion<float>>(BOOL)::info = re::introspect_QuaternionF(0);
  }

  if (v4 == re::introspect<re::Quaternion<float>>(BOOL)::info)
  {
    re::HashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 392, a3, v41);
    v23 = v42;
    if (v42 == 0x7FFFFFFF)
    {
      return 0;
    }

    v24 = *(this + 51);
LABEL_49:
    v25 = 48;
    return v24 + v23 * v25 + 32;
  }

  {
    re::introspect<re::GenericSRT<float>>(BOOL)::info = re::introspect_SRT(0);
  }

  if (v4 == re::introspect<re::GenericSRT<float>>(BOOL)::info)
  {
    re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 440, a3, v41);
    v23 = v42;
    if (v42 == 0x7FFFFFFF)
    {
      return 0;
    }

    v24 = *(this + 57);
    v25 = 80;
    return v24 + v23 * v25 + 32;
  }

  if (v4 == re::introspect<re::DynamicString>())
  {
    re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 488, a3, v41);
    v26 = v42;
    if (v42 == 0x7FFFFFFF)
    {
      return 0;
    }

    v27 = *(this + 63);
    goto LABEL_55;
  }

  if (v4 == re::introspect<re::SkeletalPose>())
  {
    re::HashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v41, this + 536, a3);
    v26 = v42;
    if (v42 == 0x7FFFFFFF)
    {
      return 0;
    }

    v27 = *(this + 69);
    v28 = 112;
LABEL_58:
    v20 = v27 + v26 * v28;
    return v20 + 24;
  }

  if (v4 == re::introspect<re::DynamicArray<float>>())
  {
    re::HashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 584, a3, v41);
    v29 = v42;
    if (v42 == 0x7FFFFFFF)
    {
      return 0;
    }

    v30 = *(this + 75);
LABEL_63:
    v20 = v30 + (v29 << 6);
    return v20 + 24;
  }

  if (v4 == re::introspect<re::DynamicArray<re::Vector3<float>>>())
  {
    re::HashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 632, a3, v41);
    v29 = v42;
    if (v42 == 0x7FFFFFFF)
    {
      return 0;
    }

    v30 = *(this + 81);
    goto LABEL_63;
  }

  if (v4 == re::introspect<long long>(0))
  {
    re::HashTable<re::StringID,long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 680, a3, v41);
    v13 = v42;
    if (v42 != 0x7FFFFFFF)
    {
      v14 = *(this + 87);
      goto LABEL_41;
    }

    return 0;
  }

  if (v4 != re::introspect<re::BlendShapeWeights>())
  {
    if (v4 == re::introspect<unsigned char>(0))
    {
      re::HashTable<re::StringID,re::RenderGraphDataNodeConnection const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v41, this + 776, a3);
      v13 = v42;
      if (v42 != 0x7FFFFFFF)
      {
        v14 = *(this + 99);
LABEL_41:
        v20 = v14 + 32 * v13;
        return v20 + 24;
      }
    }

    return 0;
  }

  re::HashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v41, this + 728, a3);
  v26 = v42;
  if (v42 != 0x7FFFFFFF)
  {
    v27 = *(this + 93);
LABEL_55:
    v28 = 56;
    goto LABEL_58;
  }

  return 0;
}

uint64_t re::KeyValueStore::typeInfo(re::KeyValueStore *this, const re::StringID *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 8, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(*(this + 3) + 32 * v6 + 24);
  }
}

void re::KeyValueStore::removeValue(re::KeyValueStore *this, const re::IntrospectionBase *a2, const re::StringID *a3)
{
  v6 = &unk_1EE187000;
  {
    v6 = &unk_1EE187000;
    if (v24)
    {
      re::introspect<BOOL>(BOOL)::info = re::introspect_BOOL(0, v25);
      v6 = &unk_1EE187000;
    }
  }

  if (v6[42] == a2)
  {
    v15 = 0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 56, a3, (0x94D049BB133111EBLL * (v15 ^ (v15 >> 27))) ^ ((0x94D049BB133111EBLL * (v15 ^ (v15 >> 27))) >> 31), v37);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(this + 56, v37);
    return;
  }

  v7 = &unk_1EE187000;
  {
    v7 = &unk_1EE187000;
    if (v26)
    {
      re::introspect<float>(BOOL)::info = re::introspect_float(0, v27);
      v7 = &unk_1EE187000;
    }
  }

  if (v7[40] == a2)
  {
    v16 = 0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 104, a3, (0x94D049BB133111EBLL * (v16 ^ (v16 >> 27))) ^ ((0x94D049BB133111EBLL * (v16 ^ (v16 >> 27))) >> 31), v37);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(this + 104, v37);
    return;
  }

  v8 = &unk_1EE187000;
  {
    v8 = &unk_1EE187000;
    if (v28)
    {
      re::introspect<double>(BOOL)::info = re::introspect_double(0, v29);
      v8 = &unk_1EE187000;
    }
  }

  if (v8[41] == a2)
  {
    v17 = 0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 152, a3, (0x94D049BB133111EBLL * (v17 ^ (v17 >> 27))) ^ ((0x94D049BB133111EBLL * (v17 ^ (v17 >> 27))) >> 31), v37);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(this + 152, v37);
    return;
  }

  v9 = &unk_1EE187000;
  {
    v9 = &unk_1EE187000;
    if (v30)
    {
      re::introspect<int>(BOOL)::info = re::introspect_int(0, v31);
      v9 = &unk_1EE187000;
    }
  }

  if (v9[38] == a2)
  {
    v18 = 0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 200, a3, (0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) ^ ((0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) >> 31), v37);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(this + 200, v37);
    return;
  }

  v10 = &unk_1EE187000;
  {
    v10 = &unk_1EE187000;
    if (v32)
    {
      re::introspect<re::Vector2<float>>(BOOL)::info = re::introspect_Vector2F(0);
      v10 = &unk_1EE187000;
    }
  }

  if (v10[48] == a2)
  {
    v19 = 0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 248, a3, (0x94D049BB133111EBLL * (v19 ^ (v19 >> 27))) ^ ((0x94D049BB133111EBLL * (v19 ^ (v19 >> 27))) >> 31), v37);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(this + 248, v37);
    return;
  }

  v11 = &unk_1EE187000;
  {
    v11 = &unk_1EE187000;
    if (v33)
    {
      re::introspect<re::Vector3<float>>(BOOL)::info = re::introspect_Vector3F(0);
      v11 = &unk_1EE187000;
    }
  }

  if (v11[47] == a2)
  {
    v20 = 0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1));
    re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 296, a3, (0x94D049BB133111EBLL * (v20 ^ (v20 >> 27))) ^ ((0x94D049BB133111EBLL * (v20 ^ (v20 >> 27))) >> 31), v37);
    re::HashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(this + 296, v37);
    return;
  }

  v12 = &unk_1EE187000;
  {
    v12 = &unk_1EE187000;
    if (v34)
    {
      re::introspect<re::Vector4<float>>(BOOL)::info = re::introspect_Vector4F(0);
      v12 = &unk_1EE187000;
    }
  }

  if (v12[46] == a2)
  {
    v21 = 0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1));
    re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 344, a3, (0x94D049BB133111EBLL * (v21 ^ (v21 >> 27))) ^ ((0x94D049BB133111EBLL * (v21 ^ (v21 >> 27))) >> 31), v37);
    re::HashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(this + 344, v37);
    return;
  }

  v13 = &unk_1EE187000;
  {
    v13 = &unk_1EE187000;
    if (v35)
    {
      re::introspect<re::Quaternion<float>>(BOOL)::info = re::introspect_QuaternionF(0);
      v13 = &unk_1EE187000;
    }
  }

  if (v13[245] == a2)
  {

    re::HashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::remove(this + 392, a3);
  }

  else
  {
    v14 = &unk_1EE187000;
    {
      v14 = &unk_1EE187000;
      if (v36)
      {
        re::introspect<re::GenericSRT<float>>(BOOL)::info = re::introspect_SRT(0);
        v14 = &unk_1EE187000;
      }
    }

    if (v14[248] == a2)
    {

      re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::remove(this + 440, a3);
    }

    else if (re::introspect<re::DynamicString>() == a2)
    {

      re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::remove(this + 488, a3);
    }

    else
    {
      if (re::introspect<re::SkeletalPose>() != a2)
      {
        if (re::introspect<re::DynamicArray<float>>() == a2)
        {
          v22 = this + 584;
          v23 = a3;
        }

        else
        {
          if (re::introspect<re::DynamicArray<re::Vector3<float>>>() != a2)
          {
            if (re::introspect<long long>(0) == a2)
            {

              re::HashTable<re::StringID,long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::remove(this + 680, a3);
            }

            else if (re::introspect<re::BlendShapeWeights>() == a2)
            {

              re::HashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::remove(this + 728, a3);
            }

            else if (re::introspect<unsigned char>(0) == a2)
            {

              re::HashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::remove(this + 776, a3);
            }

            return;
          }

          v22 = this + 632;
          v23 = a3;
        }

        re::HashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::remove(v22, v23);
        return;
      }

      re::HashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::remove(this + 536, a3);
    }
  }
}

void re::IntrospectionInfo<re::HashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A9D80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9D80))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1A9E08);
    qword_1EE1A9E08 = &unk_1F5CF1DD0;
    __cxa_guard_release(&qword_1EE1A9D80);
  }

  if ((_MergedGlobals_283 & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::StringID>::get(1, a2);
    v4 = re::introspect_BOOL(1, v3);
    if ((_MergedGlobals_283 & 1) == 0)
    {
      v5 = v4;
      _MergedGlobals_283 = 1;
      v6 = v4[6];
      ArcSharedObject::ArcSharedObject(&qword_1EE1A9E08, 0);
      qword_1EE1A9E18 = 0x3000000007;
      dword_1EE1A9E20 = v6;
      word_1EE1A9E24 = 0;
      *&xmmword_1EE1A9E28 = 0;
      *(&xmmword_1EE1A9E28 + 1) = 0xFFFFFFFFLL;
      qword_1EE1A9E38 = v2;
      unk_1EE1A9E40 = 0;
      qword_1EE1A9E48 = v5;
      unk_1EE1A9E50 = 0;
      qword_1EE1A9E08 = &unk_1F5CF1DD0;
      re::IntrospectionRegistry::add(v7, v8);
      re::getPrettyTypeName(&qword_1EE1A9E08, &v23);
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
        re::TypeBuilder::setConstructor(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v23, v16);
        re::StackScratchAllocator::~StackScratchAllocator(v25);
      }

      xmmword_1EE1A9E28 = v17;
      if (v20)
      {
        if (v20)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::HashTable<re::StringID,float,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A9D88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9D88))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1A9E58);
    qword_1EE1A9E58 = &unk_1F5CF1E70;
    __cxa_guard_release(&qword_1EE1A9D88);
  }

  if ((byte_1EE1A9D49 & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::StringID>::get(1, a2);
    v4 = re::introspect_float(1, v3);
    if ((byte_1EE1A9D49 & 1) == 0)
    {
      v5 = v4;
      byte_1EE1A9D49 = 1;
      v6 = v4[6];
      ArcSharedObject::ArcSharedObject(&qword_1EE1A9E58, 0);
      qword_1EE1A9E68 = 0x3000000007;
      dword_1EE1A9E70 = v6;
      word_1EE1A9E74 = 0;
      *&xmmword_1EE1A9E78 = 0;
      *(&xmmword_1EE1A9E78 + 1) = 0xFFFFFFFFLL;
      qword_1EE1A9E88 = v2;
      unk_1EE1A9E90 = 0;
      qword_1EE1A9E98 = v5;
      unk_1EE1A9EA0 = 0;
      qword_1EE1A9E58 = &unk_1F5CF1E70;
      re::IntrospectionRegistry::add(v7, v8);
      re::getPrettyTypeName(&qword_1EE1A9E58, &v23);
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
        re::TypeBuilder::setConstructor(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,float,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,float,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,float,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,float,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,float,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,float,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,float,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,float,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,float,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,float,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,float,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v23, v16);
        re::StackScratchAllocator::~StackScratchAllocator(v25);
      }

      xmmword_1EE1A9E78 = v17;
      if (v20)
      {
        if (v20)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::HashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A9D90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9D90))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1A9EA8);
    qword_1EE1A9EA8 = &unk_1F5CF1F10;
    __cxa_guard_release(&qword_1EE1A9D90);
  }

  if ((byte_1EE1A9D4A & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::StringID>::get(1, a2);
    v4 = re::introspect_double(1, v3);
    if ((byte_1EE1A9D4A & 1) == 0)
    {
      v5 = v4;
      byte_1EE1A9D4A = 1;
      v6 = v4[6];
      ArcSharedObject::ArcSharedObject(&qword_1EE1A9EA8, 0);
      qword_1EE1A9EB8 = 0x3000000007;
      dword_1EE1A9EC0 = v6;
      word_1EE1A9EC4 = 0;
      *&xmmword_1EE1A9EC8 = 0;
      *(&xmmword_1EE1A9EC8 + 1) = 0xFFFFFFFFLL;
      qword_1EE1A9ED8 = v2;
      unk_1EE1A9EE0 = 0;
      qword_1EE1A9EE8 = v5;
      unk_1EE1A9EF0 = 0;
      qword_1EE1A9EA8 = &unk_1F5CF1F10;
      re::IntrospectionRegistry::add(v7, v8);
      re::getPrettyTypeName(&qword_1EE1A9EA8, &v23);
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
        re::TypeBuilder::setConstructor(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v23, v16);
        re::StackScratchAllocator::~StackScratchAllocator(v25);
      }

      xmmword_1EE1A9EC8 = v17;
      if (v20)
      {
        if (v20)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::HashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A9D98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9D98))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1A9EF8);
    qword_1EE1A9EF8 = &unk_1F5CF1FB0;
    __cxa_guard_release(&qword_1EE1A9D98);
  }

  if ((byte_1EE1A9D4B & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::StringID>::get(1, a2);
    v4 = re::introspect_int(1, v3);
    if ((byte_1EE1A9D4B & 1) == 0)
    {
      v5 = v4;
      byte_1EE1A9D4B = 1;
      v6 = v4[6];
      ArcSharedObject::ArcSharedObject(&qword_1EE1A9EF8, 0);
      qword_1EE1A9F08 = 0x3000000007;
      dword_1EE1A9F10 = v6;
      word_1EE1A9F14 = 0;
      *&xmmword_1EE1A9F18 = 0;
      *(&xmmword_1EE1A9F18 + 1) = 0xFFFFFFFFLL;
      qword_1EE1A9F28 = v2;
      unk_1EE1A9F30 = 0;
      qword_1EE1A9F38 = v5;
      unk_1EE1A9F40 = 0;
      qword_1EE1A9EF8 = &unk_1F5CF1FB0;
      re::IntrospectionRegistry::add(v7, v8);
      re::getPrettyTypeName(&qword_1EE1A9EF8, &v23);
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
        re::TypeBuilder::setConstructor(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v23, v16);
        re::StackScratchAllocator::~StackScratchAllocator(v25);
      }

      xmmword_1EE1A9F18 = v17;
      if (v20)
      {
        if (v20)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::HashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A9DA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9DA0))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1A9F48);
    qword_1EE1A9F48 = &unk_1F5CF2050;
    __cxa_guard_release(&qword_1EE1A9DA0);
  }

  if ((byte_1EE1A9D4C & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::StringID>::get(1, a2);
    v3 = re::introspect_Vector2F(1);
    if ((byte_1EE1A9D4C & 1) == 0)
    {
      v4 = v3;
      byte_1EE1A9D4C = 1;
      v5 = *(v3 + 24);
      ArcSharedObject::ArcSharedObject(&qword_1EE1A9F48, 0);
      qword_1EE1A9F58 = 0x3000000007;
      dword_1EE1A9F60 = v5;
      word_1EE1A9F64 = 0;
      *&xmmword_1EE1A9F68 = 0;
      *(&xmmword_1EE1A9F68 + 1) = 0xFFFFFFFFLL;
      qword_1EE1A9F78 = v2;
      qword_1EE1A9F80 = 0;
      qword_1EE1A9F88 = v4;
      qword_1EE1A9F90 = 0;
      qword_1EE1A9F48 = &unk_1F5CF2050;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&qword_1EE1A9F48, &v22);
      if (BYTE8(v22))
      {
        v8 = v23;
      }

      else
      {
        v8 = &v22 + 9;
      }

      if (v22 && (BYTE8(v22) & 1) != 0)
      {
        (*(*v22 + 40))();
      }

      v9 = v2[2];
      v17 = *(v4 + 32);
      v18 = v9;
      if (v29)
      {
        v16 = v29;
      }

      else
      {
        *&v22 = 0x449AD97C4B77BED4;
        *(&v22 + 1) = "_CompareFunc";
        if (v22)
        {
          if (v22)
          {
          }
        }

        if (!v28)
        {
          v24[0] = 0x449AD97C4B77BED4;
          v24[1] = "_CompareFunc";
          v28 = v22;
          if (v24[0])
          {
            if (v24[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(v27, &v22 + 8);
        if (!v28 || (v13 = *v27[2], *&v22 = *(&v28 + 1), *(&v22 + 1) = v13, LODWORD(v23) = -1, (v14 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v27[0] + 768, &v22)) == 0) || !*v14)
        {
          v25 = v28;
          v26 = v18;
        }

        re::StackScratchAllocator::StackScratchAllocator(v24);
        re::TypeBuilder::TypeBuilder(&v22, v24);
        v20 = v17;
        v21 = v18;
        re::TypeBuilder::beginDictionaryType(&v22, &v19, 1, 0x30uLL, 8uLL, &v21, &v20);
        re::TypeBuilder::setConstructor(&v22, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v22, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v22, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v22, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v22, v15);
        re::StackScratchAllocator::~StackScratchAllocator(v24);
      }

      xmmword_1EE1A9F68 = v16;
      if (v19)
      {
        if (v19)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::HashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A9DA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9DA8))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1A9F98);
    qword_1EE1A9F98 = &unk_1F5CF20F0;
    __cxa_guard_release(&qword_1EE1A9DA8);
  }

  if ((byte_1EE1A9D4D & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::StringID>::get(1, a2);
    v3 = re::introspect_Vector3F(1);
    if ((byte_1EE1A9D4D & 1) == 0)
    {
      v4 = v3;
      byte_1EE1A9D4D = 1;
      v5 = *(v3 + 24);
      ArcSharedObject::ArcSharedObject(&qword_1EE1A9F98, 0);
      qword_1EE1A9FA8 = 0x3000000007;
      dword_1EE1A9FB0 = v5;
      word_1EE1A9FB4 = 0;
      *&xmmword_1EE1A9FB8 = 0;
      *(&xmmword_1EE1A9FB8 + 1) = 0xFFFFFFFFLL;
      qword_1EE1A9FC8 = v2;
      qword_1EE1A9FD0 = 0;
      qword_1EE1A9FD8 = v4;
      qword_1EE1A9FE0 = 0;
      qword_1EE1A9F98 = &unk_1F5CF20F0;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&qword_1EE1A9F98, &v22);
      if (BYTE8(v22))
      {
        v8 = v23;
      }

      else
      {
        v8 = &v22 + 9;
      }

      if (v22 && (BYTE8(v22) & 1) != 0)
      {
        (*(*v22 + 40))();
      }

      v9 = v2[2];
      v17 = *(v4 + 32);
      v18 = v9;
      if (v29)
      {
        v16 = v29;
      }

      else
      {
        *&v22 = 0x449AD97C4B77BED4;
        *(&v22 + 1) = "_CompareFunc";
        if (v22)
        {
          if (v22)
          {
          }
        }

        if (!v28)
        {
          v24[0] = 0x449AD97C4B77BED4;
          v24[1] = "_CompareFunc";
          v28 = v22;
          if (v24[0])
          {
            if (v24[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(v27, &v22 + 8);
        if (!v28 || (v13 = *v27[2], *&v22 = *(&v28 + 1), *(&v22 + 1) = v13, LODWORD(v23) = -1, (v14 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v27[0] + 768, &v22)) == 0) || !*v14)
        {
          v25 = v28;
          v26 = v18;
        }

        re::StackScratchAllocator::StackScratchAllocator(v24);
        re::TypeBuilder::TypeBuilder(&v22, v24);
        v20 = v17;
        v21 = v18;
        re::TypeBuilder::beginDictionaryType(&v22, &v19, 1, 0x30uLL, 8uLL, &v21, &v20);
        re::TypeBuilder::setConstructor(&v22, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v22, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v22, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v22, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v22, v15);
        re::StackScratchAllocator::~StackScratchAllocator(v24);
      }

      xmmword_1EE1A9FB8 = v16;
      if (v19)
      {
        if (v19)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::HashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A9DB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9DB0))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1A9FE8);
    qword_1EE1A9FE8 = &unk_1F5CF2190;
    __cxa_guard_release(&qword_1EE1A9DB0);
  }

  if ((byte_1EE1A9D4E & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::StringID>::get(1, a2);
    v3 = re::introspect_Vector4F(1);
    if ((byte_1EE1A9D4E & 1) == 0)
    {
      v4 = v3;
      byte_1EE1A9D4E = 1;
      v5 = *(v3 + 24);
      ArcSharedObject::ArcSharedObject(&qword_1EE1A9FE8, 0);
      qword_1EE1A9FF8 = 0x3000000007;
      dword_1EE1AA000 = v5;
      word_1EE1AA004 = 0;
      *&xmmword_1EE1AA008 = 0;
      *(&xmmword_1EE1AA008 + 1) = 0xFFFFFFFFLL;
      qword_1EE1AA018 = v2;
      qword_1EE1AA020 = 0;
      qword_1EE1AA028 = v4;
      qword_1EE1AA030 = 0;
      qword_1EE1A9FE8 = &unk_1F5CF2190;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&qword_1EE1A9FE8, &v22);
      if (BYTE8(v22))
      {
        v8 = v23;
      }

      else
      {
        v8 = &v22 + 9;
      }

      if (v22 && (BYTE8(v22) & 1) != 0)
      {
        (*(*v22 + 40))();
      }

      v9 = v2[2];
      v17 = *(v4 + 32);
      v18 = v9;
      if (v29)
      {
        v16 = v29;
      }

      else
      {
        *&v22 = 0x449AD97C4B77BED4;
        *(&v22 + 1) = "_CompareFunc";
        if (v22)
        {
          if (v22)
          {
          }
        }

        if (!v28)
        {
          v24[0] = 0x449AD97C4B77BED4;
          v24[1] = "_CompareFunc";
          v28 = v22;
          if (v24[0])
          {
            if (v24[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(v27, &v22 + 8);
        if (!v28 || (v13 = *v27[2], *&v22 = *(&v28 + 1), *(&v22 + 1) = v13, LODWORD(v23) = -1, (v14 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v27[0] + 768, &v22)) == 0) || !*v14)
        {
          v25 = v28;
          v26 = v18;
        }

        re::StackScratchAllocator::StackScratchAllocator(v24);
        re::TypeBuilder::TypeBuilder(&v22, v24);
        v20 = v17;
        v21 = v18;
        re::TypeBuilder::beginDictionaryType(&v22, &v19, 1, 0x30uLL, 8uLL, &v21, &v20);
        re::TypeBuilder::setConstructor(&v22, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v22, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v22, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v22, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v22, v15);
        re::StackScratchAllocator::~StackScratchAllocator(v24);
      }

      xmmword_1EE1AA008 = v16;
      if (v19)
      {
        if (v19)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::HashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A9DB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9DB8))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1AA038);
    qword_1EE1AA038 = &unk_1F5CF2230;
    __cxa_guard_release(&qword_1EE1A9DB8);
  }

  if ((byte_1EE1A9D4F & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::StringID>::get(1, a2);
    v3 = re::introspect_QuaternionF(1);
    if ((byte_1EE1A9D4F & 1) == 0)
    {
      v4 = v3;
      byte_1EE1A9D4F = 1;
      v5 = *(v3 + 24);
      ArcSharedObject::ArcSharedObject(&qword_1EE1AA038, 0);
      qword_1EE1AA048 = 0x3000000007;
      dword_1EE1AA050 = v5;
      word_1EE1AA054 = 0;
      *&xmmword_1EE1AA058 = 0;
      *(&xmmword_1EE1AA058 + 1) = 0xFFFFFFFFLL;
      qword_1EE1AA068 = v2;
      qword_1EE1AA070 = 0;
      qword_1EE1AA078 = v4;
      qword_1EE1AA080 = 0;
      qword_1EE1AA038 = &unk_1F5CF2230;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&qword_1EE1AA038, &v22);
      if (BYTE8(v22))
      {
        v8 = v23;
      }

      else
      {
        v8 = &v22 + 9;
      }

      if (v22 && (BYTE8(v22) & 1) != 0)
      {
        (*(*v22 + 40))();
      }

      v9 = v2[2];
      v17 = *(v4 + 32);
      v18 = v9;
      if (v29)
      {
        v16 = v29;
      }

      else
      {
        *&v22 = 0x449AD97C4B77BED4;
        *(&v22 + 1) = "_CompareFunc";
        if (v22)
        {
          if (v22)
          {
          }
        }

        if (!v28)
        {
          v24[0] = 0x449AD97C4B77BED4;
          v24[1] = "_CompareFunc";
          v28 = v22;
          if (v24[0])
          {
            if (v24[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(v27, &v22 + 8);
        if (!v28 || (v13 = *v27[2], *&v22 = *(&v28 + 1), *(&v22 + 1) = v13, LODWORD(v23) = -1, (v14 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v27[0] + 768, &v22)) == 0) || !*v14)
        {
          v25 = v28;
          v26 = v18;
        }

        re::StackScratchAllocator::StackScratchAllocator(v24);
        re::TypeBuilder::TypeBuilder(&v22, v24);
        v20 = v17;
        v21 = v18;
        re::TypeBuilder::beginDictionaryType(&v22, &v19, 1, 0x30uLL, 8uLL, &v21, &v20);
        re::TypeBuilder::setConstructor(&v22, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v22, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v22, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v22, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v22, v15);
        re::StackScratchAllocator::~StackScratchAllocator(v24);
      }

      xmmword_1EE1AA058 = v16;
      if (v19)
      {
        if (v19)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A9DC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9DC0))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1AA088);
    qword_1EE1AA088 = &unk_1F5CF22D0;
    __cxa_guard_release(&qword_1EE1A9DC0);
  }

  if ((byte_1EE1A9D50 & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::StringID>::get(1, a2);
    v3 = re::introspect_SRT(1);
    if ((byte_1EE1A9D50 & 1) == 0)
    {
      v4 = v3;
      byte_1EE1A9D50 = 1;
      v5 = *(v3 + 24);
      ArcSharedObject::ArcSharedObject(&qword_1EE1AA088, 0);
      qword_1EE1AA098 = 0x3000000007;
      dword_1EE1AA0A0 = v5;
      word_1EE1AA0A4 = 0;
      *&xmmword_1EE1AA0A8 = 0;
      *(&xmmword_1EE1AA0A8 + 1) = 0xFFFFFFFFLL;
      qword_1EE1AA0B8 = v2;
      qword_1EE1AA0C0 = 0;
      qword_1EE1AA0C8 = v4;
      qword_1EE1AA0D0 = 0;
      qword_1EE1AA088 = &unk_1F5CF22D0;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&qword_1EE1AA088, &v22);
      if (BYTE8(v22))
      {
        v8 = v23;
      }

      else
      {
        v8 = &v22 + 9;
      }

      if (v22 && (BYTE8(v22) & 1) != 0)
      {
        (*(*v22 + 40))();
      }

      v9 = v2[2];
      v17 = *(v4 + 32);
      v18 = v9;
      if (v29)
      {
        v16 = v29;
      }

      else
      {
        *&v22 = 0x449AD97C4B77BED4;
        *(&v22 + 1) = "_CompareFunc";
        if (v22)
        {
          if (v22)
          {
          }
        }

        if (!v28)
        {
          v24[0] = 0x449AD97C4B77BED4;
          v24[1] = "_CompareFunc";
          v28 = v22;
          if (v24[0])
          {
            if (v24[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(v27, &v22 + 8);
        if (!v28 || (v13 = *v27[2], *&v22 = *(&v28 + 1), *(&v22 + 1) = v13, LODWORD(v23) = -1, (v14 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v27[0] + 768, &v22)) == 0) || !*v14)
        {
          v25 = v28;
          v26 = v18;
        }

        re::StackScratchAllocator::StackScratchAllocator(v24);
        re::TypeBuilder::TypeBuilder(&v22, v24);
        v20 = v17;
        v21 = v18;
        re::TypeBuilder::beginDictionaryType(&v22, &v19, 1, 0x30uLL, 8uLL, &v21, &v20);
        re::TypeBuilder::setConstructor(&v22, re::TypeBuilderHelper::registerHashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v22, re::TypeBuilderHelper::registerHashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v22, re::TypeBuilderHelper::registerHashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v22, re::TypeBuilderHelper::registerHashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v22, v15);
        re::StackScratchAllocator::~StackScratchAllocator(v24);
      }

      xmmword_1EE1AA0A8 = v16;
      if (v19)
      {
        if (v19)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::HashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A9DC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9DC8))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1AA0D8);
    qword_1EE1AA0D8 = &unk_1F5CF2370;
    __cxa_guard_release(&qword_1EE1A9DC8);
  }

  if ((byte_1EE1A9D51 & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::StringID>::get(1, a2);
    v3 = re::introspect_SkeletalPose(1);
    if ((byte_1EE1A9D51 & 1) == 0)
    {
      v4 = v3;
      byte_1EE1A9D51 = 1;
      v5 = *(v3 + 24);
      ArcSharedObject::ArcSharedObject(&qword_1EE1AA0D8, 0);
      qword_1EE1AA0E8 = 0x3000000007;
      dword_1EE1AA0F0 = v5;
      word_1EE1AA0F4 = 0;
      *&xmmword_1EE1AA0F8 = 0;
      *(&xmmword_1EE1AA0F8 + 1) = 0xFFFFFFFFLL;
      qword_1EE1AA108 = v2;
      qword_1EE1AA110 = 0;
      qword_1EE1AA118 = v4;
      qword_1EE1AA120 = 0;
      qword_1EE1AA0D8 = &unk_1F5CF2370;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&qword_1EE1AA0D8, &v22);
      if (BYTE8(v22))
      {
        v8 = v23;
      }

      else
      {
        v8 = &v22 + 9;
      }

      if (v22 && (BYTE8(v22) & 1) != 0)
      {
        (*(*v22 + 40))();
      }

      v9 = v2[2];
      v17 = *(v4 + 32);
      v18 = v9;
      if (v29)
      {
        v16 = v29;
      }

      else
      {
        *&v22 = 0x449AD97C4B77BED4;
        *(&v22 + 1) = "_CompareFunc";
        if (v22)
        {
          if (v22)
          {
          }
        }

        if (!v28)
        {
          v24[0] = 0x449AD97C4B77BED4;
          v24[1] = "_CompareFunc";
          v28 = v22;
          if (v24[0])
          {
            if (v24[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(v27, &v22 + 8);
        if (!v28 || (v13 = *v27[2], *&v22 = *(&v28 + 1), *(&v22 + 1) = v13, LODWORD(v23) = -1, (v14 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v27[0] + 768, &v22)) == 0) || !*v14)
        {
          v25 = v28;
          v26 = v18;
        }

        re::StackScratchAllocator::StackScratchAllocator(v24);
        re::TypeBuilder::TypeBuilder(&v22, v24);
        v20 = v17;
        v21 = v18;
        re::TypeBuilder::beginDictionaryType(&v22, &v19, 1, 0x30uLL, 8uLL, &v21, &v20);
        re::TypeBuilder::setConstructor(&v22, re::TypeBuilderHelper::registerHashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v22, re::TypeBuilderHelper::registerHashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v22, re::TypeBuilderHelper::registerHashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v22, re::TypeBuilderHelper::registerHashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v22, v15);
        re::StackScratchAllocator::~StackScratchAllocator(v24);
      }

      xmmword_1EE1AA0F8 = v16;
      if (v19)
      {
        if (v19)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::HashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A9DD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9DD0))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1AA128);
    qword_1EE1AA128 = &unk_1F5CF2410;
    __cxa_guard_release(&qword_1EE1A9DD0);
  }

  if ((byte_1EE1A9D52 & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::StringID>::get(1, a2);
    v4 = re::IntrospectionInfo<re::DynamicArray<float>>::get(1, v3);
    if ((byte_1EE1A9D52 & 1) == 0)
    {
      v5 = v4;
      byte_1EE1A9D52 = 1;
      v6 = *(v4 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1AA128, 0);
      qword_1EE1AA138 = 0x3000000007;
      dword_1EE1AA140 = v6;
      word_1EE1AA144 = 0;
      *&xmmword_1EE1AA148 = 0;
      *(&xmmword_1EE1AA148 + 1) = 0xFFFFFFFFLL;
      qword_1EE1AA158 = v2;
      qword_1EE1AA160 = 0;
      qword_1EE1AA168 = v5;
      qword_1EE1AA170 = 0;
      qword_1EE1AA128 = &unk_1F5CF2410;
      re::IntrospectionRegistry::add(v7, v8);
      re::getPrettyTypeName(&qword_1EE1AA128, &v23);
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
        re::TypeBuilder::setConstructor(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v23, v16);
        re::StackScratchAllocator::~StackScratchAllocator(v25);
      }

      xmmword_1EE1AA148 = v17;
      if (v20)
      {
        if (v20)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::HashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A9DD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9DD8))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1AA178);
    qword_1EE1AA178 = &unk_1F5CF24B0;
    __cxa_guard_release(&qword_1EE1A9DD8);
  }

  if ((byte_1EE1A9D53 & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::StringID>::get(1, a2);
    v3 = re::IntrospectionInfo<re::DynamicArray<re::Vector3<float>>>::get(1);
    if ((byte_1EE1A9D53 & 1) == 0)
    {
      v4 = v3;
      byte_1EE1A9D53 = 1;
      v5 = *(v3 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1AA178, 0);
      qword_1EE1AA188 = 0x3000000007;
      dword_1EE1AA190 = v5;
      word_1EE1AA194 = 0;
      *&xmmword_1EE1AA198 = 0;
      *(&xmmword_1EE1AA198 + 1) = 0xFFFFFFFFLL;
      qword_1EE1AA1A8 = v2;
      qword_1EE1AA1B0 = 0;
      qword_1EE1AA1B8 = v4;
      qword_1EE1AA1C0 = 0;
      qword_1EE1AA178 = &unk_1F5CF24B0;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&qword_1EE1AA178, &v22);
      if (BYTE8(v22))
      {
        v8 = v23;
      }

      else
      {
        v8 = &v22 + 9;
      }

      if (v22 && (BYTE8(v22) & 1) != 0)
      {
        (*(*v22 + 40))();
      }

      v9 = v2[2];
      v17 = *(v4 + 32);
      v18 = v9;
      if (v29)
      {
        v16 = v29;
      }

      else
      {
        *&v22 = 0x449AD97C4B77BED4;
        *(&v22 + 1) = "_CompareFunc";
        if (v22)
        {
          if (v22)
          {
          }
        }

        if (!v28)
        {
          v24[0] = 0x449AD97C4B77BED4;
          v24[1] = "_CompareFunc";
          v28 = v22;
          if (v24[0])
          {
            if (v24[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(v27, &v22 + 8);
        if (!v28 || (v13 = *v27[2], *&v22 = *(&v28 + 1), *(&v22 + 1) = v13, LODWORD(v23) = -1, (v14 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v27[0] + 768, &v22)) == 0) || !*v14)
        {
          v25 = v28;
          v26 = v18;
        }

        re::StackScratchAllocator::StackScratchAllocator(v24);
        re::TypeBuilder::TypeBuilder(&v22, v24);
        v20 = v17;
        v21 = v18;
        re::TypeBuilder::beginDictionaryType(&v22, &v19, 1, 0x30uLL, 8uLL, &v21, &v20);
        re::TypeBuilder::setConstructor(&v22, re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v22, re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v22, re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v22, re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v22, v15);
        re::StackScratchAllocator::~StackScratchAllocator(v24);
      }

      xmmword_1EE1AA198 = v16;
      if (v19)
      {
        if (v19)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::HashTable<re::StringID,long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A9DE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9DE0))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1AA1C8);
    qword_1EE1AA1C8 = &unk_1F5CF2550;
    __cxa_guard_release(&qword_1EE1A9DE0);
  }

  if ((byte_1EE1A9D54 & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::StringID>::get(1, a2);
    v4 = re::introspect_int64_t(1, v3);
    if ((byte_1EE1A9D54 & 1) == 0)
    {
      v5 = v4;
      byte_1EE1A9D54 = 1;
      v6 = v4[6];
      ArcSharedObject::ArcSharedObject(&qword_1EE1AA1C8, 0);
      qword_1EE1AA1D8 = 0x3000000007;
      dword_1EE1AA1E0 = v6;
      word_1EE1AA1E4 = 0;
      *&xmmword_1EE1AA1E8 = 0;
      *(&xmmword_1EE1AA1E8 + 1) = 0xFFFFFFFFLL;
      qword_1EE1AA1F8 = v2;
      qword_1EE1AA200 = 0;
      qword_1EE1AA208 = v5;
      qword_1EE1AA210 = 0;
      qword_1EE1AA1C8 = &unk_1F5CF2550;
      re::IntrospectionRegistry::add(v7, v8);
      re::getPrettyTypeName(&qword_1EE1AA1C8, &v23);
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
        re::TypeBuilder::setConstructor(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v23, v16);
        re::StackScratchAllocator::~StackScratchAllocator(v25);
      }

      xmmword_1EE1AA1E8 = v17;
      if (v20)
      {
        if (v20)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::HashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A9DE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9DE8))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1AA218);
    qword_1EE1AA218 = &unk_1F5CF25F0;
    __cxa_guard_release(&qword_1EE1A9DE8);
  }

  if ((byte_1EE1A9D55 & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::StringID>::get(1, a2);
    v3 = re::introspect_BlendShapeWeights(1);
    if ((byte_1EE1A9D55 & 1) == 0)
    {
      v4 = v3;
      byte_1EE1A9D55 = 1;
      v5 = *(v3 + 24);
      ArcSharedObject::ArcSharedObject(&qword_1EE1AA218, 0);
      qword_1EE1AA228 = 0x3000000007;
      dword_1EE1AA230 = v5;
      word_1EE1AA234 = 0;
      *&xmmword_1EE1AA238 = 0;
      *(&xmmword_1EE1AA238 + 1) = 0xFFFFFFFFLL;
      qword_1EE1AA248 = v2;
      qword_1EE1AA250 = 0;
      qword_1EE1AA258 = v4;
      qword_1EE1AA260 = 0;
      qword_1EE1AA218 = &unk_1F5CF25F0;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&qword_1EE1AA218, &v22);
      if (BYTE8(v22))
      {
        v8 = v23;
      }

      else
      {
        v8 = &v22 + 9;
      }

      if (v22 && (BYTE8(v22) & 1) != 0)
      {
        (*(*v22 + 40))();
      }

      v9 = v2[2];
      v17 = *(v4 + 32);
      v18 = v9;
      if (v29)
      {
        v16 = v29;
      }

      else
      {
        *&v22 = 0x449AD97C4B77BED4;
        *(&v22 + 1) = "_CompareFunc";
        if (v22)
        {
          if (v22)
          {
          }
        }

        if (!v28)
        {
          v24[0] = 0x449AD97C4B77BED4;
          v24[1] = "_CompareFunc";
          v28 = v22;
          if (v24[0])
          {
            if (v24[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(v27, &v22 + 8);
        if (!v28 || (v13 = *v27[2], *&v22 = *(&v28 + 1), *(&v22 + 1) = v13, LODWORD(v23) = -1, (v14 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v27[0] + 768, &v22)) == 0) || !*v14)
        {
          v25 = v28;
          v26 = v18;
        }

        re::StackScratchAllocator::StackScratchAllocator(v24);
        re::TypeBuilder::TypeBuilder(&v22, v24);
        v20 = v17;
        v21 = v18;
        re::TypeBuilder::beginDictionaryType(&v22, &v19, 1, 0x30uLL, 8uLL, &v21, &v20);
        re::TypeBuilder::setConstructor(&v22, re::TypeBuilderHelper::registerHashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v22, re::TypeBuilderHelper::registerHashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v22, re::TypeBuilderHelper::registerHashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v22, re::TypeBuilderHelper::registerHashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v22, v15);
        re::StackScratchAllocator::~StackScratchAllocator(v24);
      }

      xmmword_1EE1AA238 = v16;
      if (v19)
      {
        if (v19)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::HashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A9DF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9DF0))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1AA268);
    qword_1EE1AA268 = &unk_1F5CF2690;
    __cxa_guard_release(&qword_1EE1A9DF0);
  }

  if ((byte_1EE1A9D56 & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::StringID>::get(1, a2);
    v4 = re::introspect_uint8_t(1, v3);
    if ((byte_1EE1A9D56 & 1) == 0)
    {
      v5 = v4;
      byte_1EE1A9D56 = 1;
      v6 = v4[6];
      ArcSharedObject::ArcSharedObject(&qword_1EE1AA268, 0);
      qword_1EE1AA278 = 0x3000000007;
      dword_1EE1AA280 = v6;
      word_1EE1AA284 = 0;
      *&xmmword_1EE1AA288 = 0;
      *(&xmmword_1EE1AA288 + 1) = 0xFFFFFFFFLL;
      qword_1EE1AA298 = v2;
      qword_1EE1AA2A0 = 0;
      qword_1EE1AA2A8 = v5;
      qword_1EE1AA2B0 = 0;
      qword_1EE1AA268 = &unk_1F5CF2690;
      re::IntrospectionRegistry::add(v7, v8);
      re::getPrettyTypeName(&qword_1EE1AA268, &v23);
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
        re::TypeBuilder::setConstructor(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v23, v16);
        re::StackScratchAllocator::~StackScratchAllocator(v25);
      }

      xmmword_1EE1AA288 = v17;
      if (v20)
      {
        if (v20)
        {
        }
      }
    }
  }
}

void *re::allocInfo_KeyValueStore(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1A9D60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9D60))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AA340, "KeyValueStore");
    __cxa_guard_release(&qword_1EE1A9D60);
  }

  return &unk_1EE1AA340;
}

void re::initInfo_KeyValueStore(re *this, re::IntrospectionBase *a2)
{
  v59[0] = 0xB1B2D880730A6B1ELL;
  v59[1] = "KeyValueStore";
  if (v59[0])
  {
    if (v59[0])
    {
    }
  }

  *(this + 2) = v60;
  if ((atomic_load_explicit(&qword_1EE1A9D58, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A9D58);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_KeyValueStoreInterface(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "KeyValueStoreInterface";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1AA2B8 = v8;
      v9 = re::introspectionAllocator(v8);
      re::IntrospectionInfo<re::HashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(v9, v10);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "BOOLValues";
      *(v11 + 16) = &qword_1EE1A9E08;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x3800000001;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1AA2C0 = v11;
      v12 = re::introspectionAllocator(v11);
      re::IntrospectionInfo<re::HashTable<re::StringID,float,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(v12, v13);
      v14 = (*(*v12 + 32))(v12, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "floatValues";
      *(v14 + 16) = &qword_1EE1A9E58;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0x6800000002;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE1AA2C8 = v14;
      v15 = re::introspectionAllocator(v14);
      re::IntrospectionInfo<re::HashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(v15, v16);
      v17 = (*(*v15 + 32))(v15, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "doubleValues";
      *(v17 + 16) = &qword_1EE1A9EA8;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x9800000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1AA2D0 = v17;
      v18 = re::introspectionAllocator(v17);
      re::IntrospectionInfo<re::HashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(v18, v19);
      v20 = (*(*v18 + 32))(v18, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "intValues";
      *(v20 + 16) = &qword_1EE1A9EF8;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0xC800000004;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1AA2D8 = v20;
      v21 = re::introspectionAllocator(v20);
      re::IntrospectionInfo<re::HashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(v21, v22);
      v23 = (*(*v21 + 32))(v21, 72, 8);
      *v23 = 1;
      *(v23 + 8) = "Vector2FValues";
      *(v23 + 16) = &qword_1EE1A9F48;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0xF800000005;
      *(v23 + 40) = 0;
      *(v23 + 48) = 0;
      *(v23 + 56) = 0;
      *(v23 + 64) = 0;
      qword_1EE1AA2E0 = v23;
      v24 = re::introspectionAllocator(v23);
      re::IntrospectionInfo<re::HashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(v24, v25);
      v26 = (*(*v24 + 32))(v24, 72, 8);
      *v26 = 1;
      *(v26 + 8) = "Vector3FValues";
      *(v26 + 16) = &qword_1EE1A9F98;
      *(v26 + 24) = 0;
      *(v26 + 32) = 0x12800000006;
      *(v26 + 40) = 0;
      *(v26 + 48) = 0;
      *(v26 + 56) = 0;
      *(v26 + 64) = 0;
      qword_1EE1AA2E8 = v26;
      v27 = re::introspectionAllocator(v26);
      re::IntrospectionInfo<re::HashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(v27, v28);
      v29 = (*(*v27 + 32))(v27, 72, 8);
      *v29 = 1;
      *(v29 + 8) = "Vector4FValues";
      *(v29 + 16) = &qword_1EE1A9FE8;
      *(v29 + 24) = 0;
      *(v29 + 32) = 0x15800000007;
      *(v29 + 40) = 0;
      *(v29 + 48) = 0;
      *(v29 + 56) = 0;
      *(v29 + 64) = 0;
      qword_1EE1AA2F0 = v29;
      v30 = re::introspectionAllocator(v29);
      re::IntrospectionInfo<re::HashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(v30, v31);
      v32 = (*(*v30 + 32))(v30, 72, 8);
      *v32 = 1;
      *(v32 + 8) = "QuaternionFValues";
      *(v32 + 16) = &qword_1EE1AA038;
      *(v32 + 24) = 0;
      *(v32 + 32) = 0x18800000008;
      *(v32 + 40) = 0;
      *(v32 + 48) = 0;
      *(v32 + 56) = 0;
      *(v32 + 64) = 0;
      qword_1EE1AA2F8 = v32;
      v33 = re::introspectionAllocator(v32);
      re::IntrospectionInfo<re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(v33, v34);
      v35 = (*(*v33 + 32))(v33, 72, 8);
      *v35 = 1;
      *(v35 + 8) = "SRTValues";
      *(v35 + 16) = &qword_1EE1AA088;
      *(v35 + 24) = 0;
      *(v35 + 32) = 0x1B800000009;
      *(v35 + 40) = 0;
      *(v35 + 48) = 0;
      *(v35 + 56) = 0;
      *(v35 + 64) = 0;
      qword_1EE1AA300 = v35;
      v36 = re::introspectionAllocator(v35);
      v38 = re::IntrospectionInfo<re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(1, v37);
      v39 = (*(*v36 + 32))(v36, 72, 8);
      *v39 = 1;
      *(v39 + 8) = "DynamicStringValues";
      *(v39 + 16) = v38;
      *(v39 + 24) = 0;
      *(v39 + 32) = 0x1E80000000ALL;
      *(v39 + 40) = 0;
      *(v39 + 48) = 0;
      *(v39 + 56) = 0;
      *(v39 + 64) = 0;
      qword_1EE1AA308 = v39;
      v40 = re::introspectionAllocator(v39);
      re::IntrospectionInfo<re::HashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(v40, v41);
      v42 = (*(*v40 + 32))(v40, 72, 8);
      *v42 = 1;
      *(v42 + 8) = "SkeletalPoseValues";
      *(v42 + 16) = &qword_1EE1AA0D8;
      *(v42 + 24) = 0;
      *(v42 + 32) = 0x2180000000BLL;
      *(v42 + 40) = 0;
      *(v42 + 48) = 0;
      *(v42 + 56) = 0;
      *(v42 + 64) = 0;
      qword_1EE1AA310 = v42;
      v43 = re::introspectionAllocator(v42);
      re::IntrospectionInfo<re::HashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(v43, v44);
      v45 = (*(*v43 + 32))(v43, 72, 8);
      *v45 = 1;
      *(v45 + 8) = "FloatArrayValues";
      *(v45 + 16) = &qword_1EE1AA128;
      *(v45 + 24) = 0;
      *(v45 + 32) = 0x2480000000CLL;
      *(v45 + 40) = 0;
      *(v45 + 48) = 0;
      *(v45 + 56) = 0;
      *(v45 + 64) = 0;
      qword_1EE1AA318 = v45;
      v46 = re::introspectionAllocator(v45);
      re::IntrospectionInfo<re::HashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(v46, v47);
      v48 = (*(*v46 + 32))(v46, 72, 8);
      *v48 = 1;
      *(v48 + 8) = "Vector3ArrayValues";
      *(v48 + 16) = &qword_1EE1AA178;
      *(v48 + 24) = 0;
      *(v48 + 32) = 0x2780000000DLL;
      *(v48 + 40) = 0;
      *(v48 + 48) = 0;
      *(v48 + 56) = 0;
      *(v48 + 64) = 0;
      qword_1EE1AA320 = v48;
      v49 = re::introspectionAllocator(v48);
      re::IntrospectionInfo<re::HashTable<re::StringID,long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(v49, v50);
      v51 = (*(*v49 + 32))(v49, 72, 8);
      *v51 = 1;
      *(v51 + 8) = "int64Values";
      *(v51 + 16) = &qword_1EE1AA1C8;
      *(v51 + 24) = 0;
      *(v51 + 32) = 0x2A80000000ELL;
      *(v51 + 40) = 0;
      *(v51 + 48) = 0;
      *(v51 + 56) = 0;
      *(v51 + 64) = 0;
      qword_1EE1AA328 = v51;
      v52 = re::introspectionAllocator(v51);
      re::IntrospectionInfo<re::HashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(v52, v53);
      v54 = (*(*v52 + 32))(v52, 72, 8);
      *v54 = 1;
      *(v54 + 8) = "BlendShapeWeightsValues";
      *(v54 + 16) = &qword_1EE1AA218;
      *(v54 + 24) = 0;
      *(v54 + 32) = 0x2D80000000FLL;
      *(v54 + 40) = 0;
      *(v54 + 48) = 0;
      *(v54 + 56) = 0;
      *(v54 + 64) = 0;
      qword_1EE1AA330 = v54;
      v55 = re::introspectionAllocator(v54);
      re::IntrospectionInfo<re::HashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(v55, v56);
      v57 = (*(*v55 + 32))(v55, 72, 8);
      *v57 = 1;
      *(v57 + 8) = "uint8Values";
      *(v57 + 16) = &qword_1EE1AA268;
      *(v57 + 24) = 0;
      *(v57 + 32) = 0x30800000010;
      *(v57 + 40) = 0;
      *(v57 + 48) = 0;
      *(v57 + 56) = 0;
      *(v57 + 64) = 0;
      qword_1EE1AA338 = v57;
      __cxa_guard_release(&qword_1EE1A9D58);
    }
  }

  *(this + 2) = 0x33800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 17;
  *(this + 8) = &qword_1EE1AA2B8;
  *(this + 9) = re::internal::defaultConstruct<re::KeyValueStore>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::KeyValueStore>;
  *(this + 13) = re::internal::defaultConstructV2<re::KeyValueStore>;
  *(this + 14) = re::internal::defaultDestructV2<re::KeyValueStore>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v58 = v60;
}

double re::internal::defaultConstruct<re::KeyValueStore>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = &unk_1F5CF1D78;
  result = 0.0;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0;
  *(a3 + 44) = 0x7FFFFFFFLL;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0;
  *(a3 + 92) = 0x7FFFFFFFLL;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 136) = 0;
  *(a3 + 140) = 0x7FFFFFFFLL;
  *(a3 + 152) = 0u;
  *(a3 + 168) = 0u;
  *(a3 + 184) = 0;
  *(a3 + 188) = 0x7FFFFFFFLL;
  *(a3 + 200) = 0u;
  *(a3 + 216) = 0u;
  *(a3 + 232) = 0;
  *(a3 + 248) = 0u;
  v4 = a3 + 248;
  *(v4 + 192) = 0u;
  v4 += 192;
  *(v4 - 48) = 0u;
  v4 -= 48;
  *(v4 - 48) = 0u;
  v4 -= 48;
  *(v4 - 48) = 0u;
  v4 -= 48;
  *(v4 - 60) = 0x7FFFFFFFLL;
  *(v4 - 16) = 0;
  *(v4 - 32) = 0u;
  *(v4 - 12) = 0x7FFFFFFFLL;
  *(v4 + 32) = 0;
  *(v4 + 16) = 0u;
  *(v4 + 36) = 0x7FFFFFFFLL;
  *(v4 + 80) = 0;
  *(v4 + 64) = 0u;
  *(v4 + 84) = 0x7FFFFFFFLL;
  *(v4 + 128) = 0;
  *(v4 + 112) = 0u;
  *(v4 + 132) = 0x7FFFFFFFLL;
  *(v4 + 160) = 0u;
  *(v4 + 176) = 0;
  *(v4 + 240) = 0u;
  v4 += 240;
  *(v4 + 144) = 0u;
  v4 += 144;
  *(v4 - 48) = 0u;
  v4 -= 48;
  *(v4 - 48) = 0u;
  v4 -= 48;
  *(v4 - 108) = 0x7FFFFFFFLL;
  *(v4 - 64) = 0;
  *(v4 - 96) = 0u;
  *(v4 - 80) = 0u;
  *(v4 - 60) = 0x7FFFFFFFLL;
  *(v4 - 16) = 0;
  *(v4 - 32) = 0u;
  *(v4 - 12) = 0x7FFFFFFFLL;
  *(v4 + 32) = 0;
  *(v4 + 16) = 0u;
  *(v4 + 36) = 0x7FFFFFFFLL;
  *(v4 + 80) = 0;
  *(v4 + 64) = 0u;
  *(v4 + 84) = 0x7FFFFFFFLL;
  *(v4 + 128) = 0;
  *(v4 + 112) = 0u;
  *(v4 + 192) = 0u;
  v4 += 192;
  *(v4 - 60) = 0x7FFFFFFFLL;
  *(v4 - 16) = 0;
  *(v4 - 48) = 0u;
  *(v4 - 32) = 0u;
  *(v4 - 12) = 0x7FFFFFFFLL;
  *(v4 + 32) = 0;
  *(v4 + 16) = 0u;
  *(v4 + 36) = 0x7FFFFFFFLL;
  return result;
}

uint64_t re::internal::defaultConstructV2<re::KeyValueStore>(uint64_t a1)
{
  *a1 = &unk_1F5CF1D78;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 44) = 0x7FFFFFFFLL;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 92) = 0x7FFFFFFFLL;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 140) = 0x7FFFFFFFLL;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 188) = 0x7FFFFFFFLL;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 248) = 0u;
  v1 = a1 + 248;
  *(v1 + 192) = 0u;
  v1 += 192;
  *(v1 - 48) = 0u;
  v1 -= 48;
  *(v1 - 48) = 0u;
  v1 -= 48;
  *(v1 - 48) = 0u;
  v1 -= 48;
  *(v1 - 60) = 0x7FFFFFFFLL;
  *(v1 - 16) = 0;
  *(v1 - 32) = 0u;
  *(v1 - 12) = 0x7FFFFFFFLL;
  *(v1 + 32) = 0;
  *(v1 + 16) = 0u;
  *(v1 + 36) = 0x7FFFFFFFLL;
  *(v1 + 80) = 0;
  *(v1 + 64) = 0u;
  *(v1 + 84) = 0x7FFFFFFFLL;
  *(v1 + 128) = 0;
  *(v1 + 112) = 0u;
  *(v1 + 132) = 0x7FFFFFFFLL;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0;
  *(v1 + 240) = 0u;
  v1 += 240;
  *(v1 + 144) = 0u;
  v1 += 144;
  *(v1 - 48) = 0u;
  v1 -= 48;
  *(v1 - 48) = 0u;
  v1 -= 48;
  *(v1 - 108) = 0x7FFFFFFFLL;
  *(v1 - 64) = 0;
  *(v1 - 96) = 0u;
  *(v1 - 80) = 0u;
  *(v1 - 60) = 0x7FFFFFFFLL;
  *(v1 - 16) = 0;
  *(v1 - 32) = 0u;
  *(v1 - 12) = 0x7FFFFFFFLL;
  *(v1 + 32) = 0;
  *(v1 + 16) = 0u;
  *(v1 + 36) = 0x7FFFFFFFLL;
  *(v1 + 80) = 0;
  *(v1 + 64) = 0u;
  *(v1 + 84) = 0x7FFFFFFFLL;
  *(v1 + 128) = 0;
  *(v1 + 112) = 0u;
  *(v1 + 192) = 0u;
  result = v1 + 192;
  *(result - 60) = 0x7FFFFFFFLL;
  *(result - 16) = 0;
  *(result - 48) = 0u;
  *(result - 32) = 0u;
  *(result - 12) = 0x7FFFFFFFLL;
  *(result + 32) = 0;
  *(result + 16) = 0u;
  *(result + 36) = 0x7FFFFFFFLL;
  return result;
}

void *re::ecs2::allocInfo_KeyValueComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A9D70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9D70))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AA3D0, "KeyValueComponent");
    __cxa_guard_release(&qword_1EE1A9D70);
  }

  return &unk_1EE1AA3D0;
}

void re::ecs2::initInfo_KeyValueComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v15[0] = 0x7398D48E533EA556;
  v15[1] = "KeyValueComponent";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE1A9D78, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A9D78);
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
      qword_1EE1A9DF8 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = v9;
      v11 = qword_1EE1A9D68;
      if (!qword_1EE1A9D68)
      {
        v11 = re::allocInfo_KeyValueStore(v9);
        qword_1EE1A9D68 = v11;
        re::initInfo_KeyValueStore(v11, v12);
      }

      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "keyValueStore";
      *(v13 + 16) = v11;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x2000000001;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1A9E00 = v13;
      __cxa_guard_release(&qword_1EE1A9D78);
    }
  }

  *(this + 2) = 0x35800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1A9DF8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::KeyValueComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::KeyValueComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::KeyValueComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::KeyValueComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs217KeyValueComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v14 = v16;
}

uint64_t re::HashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(uint64_t a1, StringID *a2, void *a3)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v12);
  v7 = HIDWORD(v13);
  if (HIDWORD(v13) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v13, v12);
    re::StringID::StringID((v8 + 8), a2);
    *(v8 + 24) = *a3;
    v9 = v8 + 24;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v10 = *(a1 + 16) + 32 * v7;
    *(v10 + 24) = *a3;
    return v10 + 24;
  }

  return v9;
}

uint64_t re::HashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, StringID *a2, void *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 32 * HIDWORD(v11) + 24;
  }

  v7 = re::HashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v11, v10);
  re::StringID::StringID((v7 + 8), a2);
  *(v7 + 24) = *a3;
  v8 = v7 + 24;
  ++*(a1 + 40);
  return v8;
}

uint64_t re::HashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 32 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 32 * v4;
}

void re::HashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
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
      re::HashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(a1, v9);
      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9);
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

void *re::HashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(void *result, uint64_t a2)
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
        v8 = 0xBF58476D1CE4E5B9 * ((*(v7 + v5 + 8) >> 31) ^ (*(v7 + v5 + 8) >> 1));
        result = re::HashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v4, ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31)) % *(v4 + 6));
        v9 = *(a2 + 16) + v5;
        v10 = *(v9 + 8);
        result[1] = result[1] & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
        result[1] = *(v9 + 8) & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
        result[2] = *(v9 + 16);
        *(v9 + 8) = 0;
        *(v9 + 16) = &str_67;
        v7 = *(a2 + 16);
        result[3] = *(v7 + v5 + 24);
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 32;
    }

    while (v6 < v2);
  }

  return result;
}

uint64_t re::HashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(uint64_t a1, StringID *a2, _DWORD *a3)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v12);
  v7 = HIDWORD(v13);
  if (HIDWORD(v13) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v13, v12);
    re::StringID::StringID((v8 + 8), a2);
    *(v8 + 24) = *a3;
    v9 = v8 + 24;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v10 = *(a1 + 16) + 32 * v7;
    *(v10 + 24) = *a3;
    return v10 + 24;
  }

  return v9;
}

uint64_t re::HashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, StringID *a2, _DWORD *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 32 * HIDWORD(v11) + 24;
  }

  v7 = re::HashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v11, v10);
  re::StringID::StringID((v7 + 8), a2);
  *(v7 + 24) = *a3;
  v8 = v7 + 24;
  ++*(a1 + 40);
  return v8;
}

uint64_t re::HashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 32 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 32 * v4;
}

void re::HashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
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
      re::HashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(a1, v9);
      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9);
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

uint64_t re::HashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(uint64_t result, uint64_t a2)
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
        v8 = 0xBF58476D1CE4E5B9 * ((*(v7 + v5 + 8) >> 31) ^ (*(v7 + v5 + 8) >> 1));
        result = re::HashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v4, ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31)) % *(v4 + 24));
        v9 = *(a2 + 16) + v5;
        v10 = *(v9 + 8);
        *(result + 8) = *(result + 8) & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
        *(result + 8) = *(v9 + 8) & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
        *(result + 16) = *(v9 + 16);
        *(v9 + 8) = 0;
        *(v9 + 16) = &str_67;
        v7 = *(a2 + 16);
        *(result + 24) = *(v7 + v5 + 24);
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 32;
    }

    while (v6 < v2);
  }

  return result;
}

uint64_t re::HashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(uint64_t a1, StringID *a2, void *a3)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v12);
  v7 = HIDWORD(v13);
  if (HIDWORD(v13) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v13, v12);
    re::StringID::StringID((v8 + 8), a2);
    *(v8 + 24) = *a3;
    v9 = v8 + 24;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v10 = *(a1 + 16) + 32 * v7;
    *(v10 + 24) = *a3;
    return v10 + 24;
  }

  return v9;
}

uint64_t re::HashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, StringID *a2, void *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 32 * HIDWORD(v11) + 24;
  }

  v7 = re::HashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v11, v10);
  re::StringID::StringID((v7 + 8), a2);
  *(v7 + 24) = *a3;
  v8 = v7 + 24;
  ++*(a1 + 40);
  return v8;
}

uint64_t re::HashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 32 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 32 * v4;
}

void re::HashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
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
      re::HashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(a1, v9);
      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9);
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

void *re::HashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(void *result, uint64_t a2)
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
        result = re::HashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v4, ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31)) % *(v4 + 6));
        v9 = *(a2 + 16) + v5;
        v10 = *(v9 + 8);
        result[1] = result[1] & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
        result[1] = *(v9 + 8) & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
        result[2] = *(v9 + 16);
        *(v9 + 8) = 0;
        *(v9 + 16) = &str_67;
        result[3] = *(*(a2 + 16) + v5 + 24);
        v2 = *(a2 + 32);
      }

      v5 += 32;
    }
  }

  return result;
}

uint64_t re::HashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, StringID *a2, _OWORD *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v9);
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 48 * HIDWORD(v10) + 32;
  }

  v7 = re::HashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v10, v9);
  re::StringID::StringID((v7 + 8), a2);
  result = v7 + 32;
  *(v7 + 32) = *a3;
  ++*(a1 + 40);
  return result;
}

__n128 re::HashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(uint64_t a1, StringID *a2, __n128 *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  v7 = HIDWORD(v11);
  if (HIDWORD(v11) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v11, v10);
    re::StringID::StringID((v8 + 8), a2);
    result = *a3;
    *(v8 + 32) = *a3;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    result = *a3;
    *(*(a1 + 16) + 48 * v7 + 32) = *a3;
  }

  return result;
}

uint64_t re::HashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, StringID *a2, _OWORD *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v9);
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 48 * HIDWORD(v10) + 32;
  }

  v7 = re::HashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v10, v9);
  re::StringID::StringID((v7 + 8), a2);
  result = v7 + 32;
  *(v7 + 32) = *a3;
  ++*(a1 + 40);
  return result;
}

uint64_t re::HashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
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

void re::HashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
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
      re::HashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(a1, v9);
      re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9);
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

uint64_t re::HashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v4, ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31)) % *(v4 + 24));
        v9 = *(a2 + 16) + v5;
        v10 = *(v9 + 8);
        *(result + 8) = *(result + 8) & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
        *(result + 8) = *(v9 + 8) & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
        *(result + 16) = *(v9 + 16);
        *(v9 + 8) = 0;
        *(v9 + 16) = &str_67;
        *(result + 32) = *(*(a2 + 16) + v5 + 32);
        v2 = *(a2 + 32);
      }

      v5 += 48;
    }
  }

  return result;
}

__n128 re::HashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(uint64_t a1, StringID *a2, __n128 *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  v7 = HIDWORD(v11);
  if (HIDWORD(v11) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v11, v10);
    re::StringID::StringID((v8 + 8), a2);
    result = *a3;
    *(v8 + 32) = *a3;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    result = *a3;
    *(*(a1 + 16) + 48 * v7 + 32) = *a3;
  }

  return result;
}

uint64_t re::HashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, StringID *a2, _OWORD *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v9);
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 48 * HIDWORD(v10) + 32;
  }

  v7 = re::HashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v10, v9);
  re::StringID::StringID((v7 + 8), a2);
  result = v7 + 32;
  *(v7 + 32) = *a3;
  ++*(a1 + 40);
  return result;
}

uint64_t re::HashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
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

void re::HashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
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
      re::HashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(a1, v9);
      re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9);
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

uint64_t re::HashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v4, ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31)) % *(v4 + 24));
        v9 = *(a2 + 16) + v5;
        v10 = *(v9 + 8);
        *(result + 8) = *(result + 8) & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
        *(result + 8) = *(v9 + 8) & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
        *(result + 16) = *(v9 + 16);
        *(v9 + 8) = 0;
        *(v9 + 16) = &str_67;
        *(result + 32) = *(*(a2 + 16) + v5 + 32);
        v2 = *(a2 + 32);
      }

      v5 += 48;
    }
  }

  return result;
}

__n128 re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(uint64_t a1, StringID *a2, uint64_t a3)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v13);
  v7 = HIDWORD(v14);
  if (HIDWORD(v14) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v14, v13);
    re::StringID::StringID((v8 + 8), a2);
    result = *a3;
    v10 = *(a3 + 32);
    *(v8 + 48) = *(a3 + 16);
    *(v8 + 64) = v10;
    *(v8 + 32) = result;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v11 = *(a1 + 16) + 80 * v7;
    result = *a3;
    v12 = *(a3 + 32);
    *(v11 + 48) = *(a3 + 16);
    *(v11 + 64) = v12;
    *(v11 + 32) = result;
  }

  return result;
}

uint64_t re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, StringID *a2, __int128 *a3)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v11);
  if (HIDWORD(v12) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 80 * HIDWORD(v12) + 32;
  }

  v7 = re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v12, v11);
  re::StringID::StringID((v7 + 8), a2);
  result = (v7 + 2);
  v9 = *a3;
  v10 = a3[2];
  v7[3] = a3[1];
  v7[4] = v10;
  v7[2] = v9;
  ++*(a1 + 40);
  return result;
}

uint64_t re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = 0x7FFFFFFF;
  if (!*result)
  {
    LODWORD(v7) = 0;
    goto LABEL_6;
  }

  v7 = a3 % *(result + 24);
  v8 = *(*(result + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_6:
    v8 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v10 = *(result + 16);
  result = re::StringID::operator==((v10 + 80 * v8 + 8), a2);
  if (result)
  {
    v6 = v8;
    goto LABEL_6;
  }

  v11 = *(v10 + 80 * v8) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v11 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v12 = v11;
      result = re::StringID::operator==((v10 + 80 * v11 + 8), a2);
      if (result)
      {
        break;
      }

      v11 = *(v10 + 80 * v12) & 0x7FFFFFFF;
      v8 = v12;
      if (v11 == 0x7FFFFFFF)
      {
        v8 = v12;
        goto LABEL_7;
      }
    }

    v6 = v12;
  }

LABEL_7:
  *a4 = a3;
  *(a4 + 8) = v7;
  *(a4 + 12) = v6;
  *(a4 + 16) = v8;
  return result;
}

uint64_t re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 80 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 80 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 80 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 80 * v4;
}

void re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(v9, v4, a2);
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
      re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(a1, v9);
      re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9);
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

uint64_t re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v4, ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31)) % *(v4 + 24));
        v9 = *(a2 + 16) + v5;
        v10 = *(v9 + 8);
        *(result + 8) = *(result + 8) & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
        *(result + 8) = *(v9 + 8) & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
        *(result + 16) = *(v9 + 16);
        *(v9 + 8) = 0;
        *(v9 + 16) = &str_67;
        v11 = (*(a2 + 16) + v5);
        v12 = v11[2];
        v13 = v11[4];
        *(result + 48) = v11[3];
        *(result + 64) = v13;
        *(result + 32) = v12;
        v2 = *(a2 + 32);
      }

      v5 += 80;
    }
  }

  return result;
}

void *re::HashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, StringID *a2, uint64_t a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  re::HashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v9, a1, a2);
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return (*(a1 + 16) + 112 * HIDWORD(v10) + 24);
  }

  v6 = v9;
  v7 = v10;

  return re::HashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID const&,re::SkeletalPose const&>(a1, v6, v7, a2, a3);
}

BOOL re::HashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(_BOOL8 result, uint64_t a2, void *a3)
{
  v3 = result;
  v4 = 0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1));
  v5 = (0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31);
  LODWORD(v6) = 0x7FFFFFFF;
  if (!*a2)
  {
    LODWORD(v7) = 0;
    v8 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v7 = v5 % *(a2 + 24);
  v8 = *(*(a2 + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v10 = *(a2 + 16);
  result = re::StringID::operator==((v10 + 112 * v8 + 8), a3);
  if (result)
  {
    LODWORD(v6) = v8;
LABEL_5:
    v8 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v11 = *(v10 + 112 * v8);
  v6 = v11 & 0x7FFFFFFF;
  if ((v11 & 0x7FFFFFFF) == 0x7FFFFFFF)
  {
    LODWORD(v6) = 0x7FFFFFFF;
  }

  else
  {
    result = re::StringID::operator==((v10 + 112 * v6 + 8), a3);
    if (!result)
    {
      LODWORD(v12) = v6;
      while (1)
      {
        v8 = v12;
        v13 = *(v10 + 112 * v6);
        v12 = v13 & 0x7FFFFFFF;
        LODWORD(v6) = 0x7FFFFFFF;
        if ((v13 & 0x7FFFFFFF) == 0x7FFFFFFF)
        {
          break;
        }

        result = re::StringID::operator==((v10 + 112 * v12 + 8), a3);
        v6 = v12;
        if (result)
        {
          LODWORD(v6) = v12;
          break;
        }
      }
    }
  }

LABEL_7:
  *v3 = v5;
  *(v3 + 8) = v7;
  *(v3 + 12) = v6;
  *(v3 + 16) = v8;
  return result;
}

void *re::HashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID const&,re::SkeletalPose const&>(uint64_t a1, unint64_t a2, unsigned int a3, const StringID *a4, uint64_t a5)
{
  v8 = re::HashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, a3, a2);
  re::StringID::StringID((v8 + 1), a4);
  re::StringID::StringID((v8 + 3), a5);
  re::FixedArray<re::GenericSRT<float>>::FixedArray(v8 + 5, a5 + 16);
  re::DynamicArray<BOOL>::DynamicArray((v8 + 8), (a5 + 40));
  v9 = *(a5 + 80);
  v8[13] = v9;
  if (v9)
  {
    v10 = (v9 + 8);
  }

  ++*(a1 + 40);
  return v8 + 3;
}

uint64_t re::HashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 112 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 112 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 112 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 112 * v4;
}

void re::HashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v20, 0, 36);
      *&v20[36] = 0x7FFFFFFFLL;
      re::HashTable<re::DynamicString,re::MeshCompileOptions,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v20, v4, a2);
      v5 = *v20;
      *v20 = *a1;
      *a1 = v5;
      v6 = *&v20[16];
      v7 = *(a1 + 16);
      *&v20[16] = v7;
      *(a1 + 16) = v6;
      v9 = *&v20[24];
      *&v20[24] = *(a1 + 24);
      v8 = *&v20[32];
      *(a1 + 24) = v9;
      ++*&v20[40];
      if (v8)
      {
        v10 = 0;
        v11 = 0;
        do
        {
          if ((*(v7 + v10) & 0x80000000) != 0)
          {
            v12 = v7 + v10;
            v13 = 0xBF58476D1CE4E5B9 * ((*(v12 + 8) >> 31) ^ (*(v12 + 8) >> 1));
            v14 = re::HashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, ((0x94D049BB133111EBLL * (v13 ^ (v13 >> 27))) ^ ((0x94D049BB133111EBLL * (v13 ^ (v13 >> 27))) >> 31)) % *(a1 + 24));
            v15 = *(v12 + 8);
            v14[1] = v14[1] & 0xFFFFFFFFFFFFFFFELL | v15 & 1;
            v14[1] = *(v12 + 8) & 0xFFFFFFFFFFFFFFFELL | v15 & 1;
            v14[2] = *(v12 + 16);
            *(v12 + 8) = 0;
            *(v12 + 16) = &str_67;
            v7 = *&v20[16];
            v16 = *&v20[16] + v10;
            re::StringID::StringID((v14 + 3), (*&v20[16] + v10 + 24));
            re::FixedArray<re::GenericSRT<float>>::FixedArray(v14 + 5, v16 + 40);
            re::DynamicArray<BOOL>::DynamicArray((v14 + 8), (v16 + 64));
            v17 = *(v16 + 104);
            v14[13] = v17;
            if (v17)
            {
              v18 = (v17 + 8);
            }
          }

          ++v11;
          v10 += 112;
        }

        while (v11 < *&v20[32]);
      }

      re::HashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v20);
    }
  }

  else
  {
    if (a2)
    {
      v19 = a2;
    }

    else
    {
      v19 = 3;
    }
  }
}

uint64_t re::HashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(uint64_t a1, StringID *a2, uint64_t *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::Optional<re::DynamicString>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v9);
  v7 = HIDWORD(v10);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    return re::HashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID const&,re::DynamicArray<float> const&>(a1, &v9, a2, a3);
  }

  ++*(a1 + 40);
  return re::DynamicArray<float>::operator=(*(a1 + 16) + (v7 << 6) + 24, a3);
}

uint64_t re::HashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, StringID *a2, uint64_t *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::Optional<re::DynamicString>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID const&,re::DynamicArray<float> const&>(a1, &v8, a2, a3);
  }

  else
  {
    return *(a1 + 16) + (HIDWORD(v9) << 6) + 24;
  }
}

uint64_t re::HashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID const&,re::DynamicArray<float> const&>(uint64_t a1, uint64_t a2, const StringID *a3, uint64_t *a4)
{
  v7 = re::HashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, *(a2 + 8), *a2);
  re::StringID::StringID((v7 + 8), a3);
  re::DynamicArray<float>::DynamicArray(v7 + 24, a4);
  ++*(a1 + 40);
  return v7 + 24;
}

uint64_t re::HashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + (v4 << 6));
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + (v4 << 6));
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v4 << 6;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + (v4 << 6);
}

void re::HashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v9, v4, a2);
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
      re::HashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(a1, v9);
      re::HashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9);
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

uint64_t re::HashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 56;
    do
    {
      v7 = *(a2 + 16) + v6;
      if ((*(v7 - 56) & 0x80000000) != 0)
      {
        v8 = 0xBF58476D1CE4E5B9 * ((*(v7 - 48) >> 31) ^ (*(v7 - 48) >> 1));
        result = re::HashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v4, ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31)) % *(v4 + 24));
        v9 = *(a2 + 16) + v6;
        v10 = *(v9 - 48);
        *(result + 8) = *(result + 8) & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
        *(result + 8) = *(v9 - 48) & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
        *(result + 16) = *(v9 - 40);
        *(v9 - 48) = 0;
        *(v9 - 40) = &str_67;
        v11 = (*(a2 + 16) + v6);
        *(result + 56) = 0;
        *(result + 48) = 0;
        *(result + 32) = 0;
        *(result + 40) = 0;
        *(result + 24) = 0;
        v12 = *(v11 - 3);
        *(result + 24) = *(v11 - 4);
        *(result + 32) = v12;
        *(v11 - 4) = 0;
        *(v11 - 3) = 0;
        v13 = *(result + 40);
        *(result + 40) = *(v11 - 2);
        *(v11 - 2) = v13;
        v14 = *(result + 56);
        *(result + 56) = *v11;
        *v11 = v14;
        ++*(v11 - 2);
        ++*(result + 48);
        v2 = *(a2 + 32);
      }

      ++v5;
      v6 += 64;
    }

    while (v5 < v2);
  }

  return result;
}

uint64_t re::HashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(uint64_t a1, StringID *a2, uint64_t *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::Optional<re::DynamicString>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v9);
  v7 = HIDWORD(v10);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    return re::HashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID const&,re::DynamicArray<re::Vector3<float>> const&>(a1, &v9, a2, a3);
  }

  ++*(a1 + 40);
  return re::DynamicArray<re::Vector3<float>>::operator=(*(a1 + 16) + (v7 << 6) + 24, a3);
}

uint64_t re::HashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, StringID *a2, uint64_t *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::Optional<re::DynamicString>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID const&,re::DynamicArray<re::Vector3<float>> const&>(a1, &v8, a2, a3);
  }

  else
  {
    return *(a1 + 16) + (HIDWORD(v9) << 6) + 24;
  }
}

uint64_t re::HashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID const&,re::DynamicArray<re::Vector3<float>> const&>(uint64_t a1, uint64_t a2, const StringID *a3, uint64_t *a4)
{
  v7 = re::HashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, *(a2 + 8), *a2);
  re::StringID::StringID((v7 + 8), a3);
  re::DynamicArray<re::Vector3<float>>::DynamicArray(v7 + 24, a4);
  ++*(a1 + 40);
  return v7 + 24;
}

uint64_t re::HashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + (v4 << 6));
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + (v4 << 6));
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v4 << 6;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + (v4 << 6);
}

void re::HashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v9, v4, a2);
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
      re::HashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(a1, v9);
      re::HashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9);
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

uint64_t re::HashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 56;
    do
    {
      v7 = *(a2 + 16) + v6;
      if ((*(v7 - 56) & 0x80000000) != 0)
      {
        v8 = 0xBF58476D1CE4E5B9 * ((*(v7 - 48) >> 31) ^ (*(v7 - 48) >> 1));
        result = re::HashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v4, ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31)) % *(v4 + 24));
        v9 = *(a2 + 16) + v6;
        v10 = *(v9 - 48);
        *(result + 8) = *(result + 8) & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
        *(result + 8) = *(v9 - 48) & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
        *(result + 16) = *(v9 - 40);
        *(v9 - 48) = 0;
        *(v9 - 40) = &str_67;
        v11 = (*(a2 + 16) + v6);
        *(result + 56) = 0;
        *(result + 48) = 0;
        *(result + 32) = 0;
        *(result + 40) = 0;
        *(result + 24) = 0;
        v12 = *(v11 - 3);
        *(result + 24) = *(v11 - 4);
        *(result + 32) = v12;
        *(v11 - 4) = 0;
        *(v11 - 3) = 0;
        v13 = *(result + 40);
        *(result + 40) = *(v11 - 2);
        *(v11 - 2) = v13;
        v14 = *(result + 56);
        *(result + 56) = *v11;
        *v11 = v14;
        ++*(v11 - 2);
        ++*(result + 48);
        v2 = *(a2 + 32);
      }

      ++v5;
      v6 += 64;
    }

    while (v5 < v2);
  }

  return result;
}

uint64_t *re::HashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, StringID *a2, uint64_t a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  re::HashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v9, a1, a2);
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return (*(a1 + 16) + 56 * HIDWORD(v10) + 24);
  }

  v6 = v9;
  v7 = v10;

  return re::HashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID const&,re::BlendShapeWeights const&>(a1, v6, v7, a2, a3);
}

BOOL re::HashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(_BOOL8 result, uint64_t a2, void *a3)
{
  v3 = result;
  v4 = 0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1));
  v5 = (0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31);
  LODWORD(v6) = 0x7FFFFFFF;
  if (!*a2)
  {
    LODWORD(v7) = 0;
    v8 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v7 = v5 % *(a2 + 24);
  v8 = *(*(a2 + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v10 = *(a2 + 16);
  result = re::StringID::operator==((v10 + 56 * v8 + 8), a3);
  if (result)
  {
    LODWORD(v6) = v8;
LABEL_5:
    v8 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v11 = *(v10 + 56 * v8);
  v6 = v11 & 0x7FFFFFFF;
  if ((v11 & 0x7FFFFFFF) == 0x7FFFFFFF)
  {
    LODWORD(v6) = 0x7FFFFFFF;
  }

  else
  {
    result = re::StringID::operator==((v10 + 56 * v6 + 8), a3);
    if (!result)
    {
      LODWORD(v12) = v6;
      while (1)
      {
        v8 = v12;
        v13 = *(v10 + 56 * v6);
        v12 = v13 & 0x7FFFFFFF;
        LODWORD(v6) = 0x7FFFFFFF;
        if ((v13 & 0x7FFFFFFF) == 0x7FFFFFFF)
        {
          break;
        }

        result = re::StringID::operator==((v10 + 56 * v12 + 8), a3);
        v6 = v12;
        if (result)
        {
          LODWORD(v6) = v12;
          break;
        }
      }
    }
  }

LABEL_7:
  *v3 = v5;
  *(v3 + 8) = v7;
  *(v3 + 12) = v6;
  *(v3 + 16) = v8;
  return result;
}

uint64_t *re::HashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID const&,re::BlendShapeWeights const&>(uint64_t a1, unint64_t a2, unsigned int a3, const StringID *a4, uint64_t a5)
{
  v8 = re::HashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, a3, a2);
  re::StringID::StringID((v8 + 1), a4);
  re::FixedArray<float>::FixedArray(v8 + 3, a5);
  v9 = *(a5 + 24);
  v8[6] = v9;
  if (v9)
  {
    v10 = (v9 + 8);
  }

  ++*(a1 + 40);
  return v8 + 3;
}

uint64_t re::HashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 56 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 56 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 56 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 56 * v4;
}

void re::HashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v20, 0, 36);
      *&v20[36] = 0x7FFFFFFFLL;
      re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v20, v4, a2);
      v5 = *v20;
      *v20 = *a1;
      *a1 = v5;
      v6 = *&v20[16];
      v7 = *(a1 + 16);
      *&v20[16] = v7;
      *(a1 + 16) = v6;
      v9 = *&v20[24];
      *&v20[24] = *(a1 + 24);
      v8 = *&v20[32];
      *(a1 + 24) = v9;
      ++*&v20[40];
      if (v8)
      {
        v10 = 0;
        v11 = 0;
        do
        {
          if ((*(v7 + v10) & 0x80000000) != 0)
          {
            v12 = v7 + v10;
            v13 = 0xBF58476D1CE4E5B9 * ((*(v12 + 8) >> 31) ^ (*(v12 + 8) >> 1));
            v14 = re::HashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, ((0x94D049BB133111EBLL * (v13 ^ (v13 >> 27))) ^ ((0x94D049BB133111EBLL * (v13 ^ (v13 >> 27))) >> 31)) % *(a1 + 24));
            v15 = *(v12 + 8);
            v14[1] = v14[1] & 0xFFFFFFFFFFFFFFFELL | v15 & 1;
            v14[1] = *(v12 + 8) & 0xFFFFFFFFFFFFFFFELL | v15 & 1;
            v14[2] = *(v12 + 16);
            *(v12 + 8) = 0;
            *(v12 + 16) = &str_67;
            v7 = *&v20[16];
            v16 = *&v20[16] + v10;
            re::FixedArray<float>::FixedArray(v14 + 3, *&v20[16] + v10 + 24);
            v17 = *(v16 + 48);
            v14[6] = v17;
            if (v17)
            {
              v18 = (v17 + 8);
            }
          }

          ++v11;
          v10 += 56;
        }

        while (v11 < *&v20[32]);
      }

      re::HashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v20);
    }
  }

  else
  {
    if (a2)
    {
      v19 = a2;
    }

    else
    {
      v19 = 3;
    }
  }
}

uint64_t re::HashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, StringID *a2, _BYTE *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  re::HashTable<re::StringID,re::RenderGraphDataNodeConnection const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v9, a1, a2);
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 32 * HIDWORD(v10) + 24;
  }

  v6 = re::HashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v10, v9);
  re::StringID::StringID((v6 + 8), a2);
  *(v6 + 24) = *a3;
  v7 = v6 + 24;
  ++*(a1 + 40);
  return v7;
}

uint64_t re::HashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 32 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 32 * v4;
}

void re::HashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v18, 0, 36);
      *&v18[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v18, v4, a2);
      v5 = *v18;
      *v18 = *a1;
      *a1 = v5;
      v6 = *&v18[16];
      v7 = *(a1 + 16);
      *&v18[16] = v7;
      *(a1 + 16) = v6;
      v9 = *&v18[24];
      *&v18[24] = *(a1 + 24);
      v8 = *&v18[32];
      *(a1 + 24) = v9;
      ++*&v18[40];
      v10 = v8;
      if (v8)
      {
        v11 = 0;
        v12 = 0;
        do
        {
          if ((*(v7 + v11) & 0x80000000) != 0)
          {
            v13 = v7 + v11;
            v14 = 0xBF58476D1CE4E5B9 * ((*(v7 + v11 + 8) >> 31) ^ (*(v7 + v11 + 8) >> 1));
            v15 = re::HashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, ((0x94D049BB133111EBLL * (v14 ^ (v14 >> 27))) ^ ((0x94D049BB133111EBLL * (v14 ^ (v14 >> 27))) >> 31)) % *(a1 + 24));
            v16 = *(v13 + 8);
            *(v15 + 8) = *(v15 + 8) & 0xFFFFFFFFFFFFFFFELL | v16 & 1;
            *(v15 + 8) = *(v13 + 8) & 0xFFFFFFFFFFFFFFFELL | v16 & 1;
            *(v15 + 16) = *(v13 + 16);
            *(v13 + 8) = 0;
            *(v13 + 16) = &str_67;
            v7 = *&v18[16];
            *(v15 + 24) = *(*&v18[16] + v11 + 24);
            v10 = *&v18[32];
          }

          ++v12;
          v11 += 32;
        }

        while (v12 < v10);
      }

      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v18);
    }
  }

  else
  {
    if (a2)
    {
      v17 = a2;
    }

    else
    {
      v17 = 3;
    }
  }
}

BOOL re::HashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(uint64_t a1, unsigned int *a2)
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
      v9 = v8;
    }

    else
    {
      *(v6 + 48 * v5) = *(v6 + 48 * v5) & 0x80000000 | v7;
      v8 = v2;
      v9 = v2;
    }

    v10 = (v6 + 48 * v8);
    v11 = *v10;
    if (*v10 < 0)
    {
      *v10 = v11 & 0x7FFFFFFF;
      re::StringID::destroyString((v10 + 2));
      v12 = a2[3];
      v6 = *(a1 + 16);
      v11 = *(v6 + 48 * v12);
      v9 = v12;
    }

    else
    {
      v12 = v9;
    }

    v13 = *(a1 + 40);
    *(v6 + 48 * v12) = *(a1 + 36) | v11 & 0x80000000;
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v13 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

BOOL re::HashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::remove(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return re::HashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a1, v5);
}

BOOL re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::remove(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a1, v5);
}

BOOL re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v5 = a2[4];
    v6 = *(a1 + 16);
    v7 = *(v6 + 80 * v2) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v7;
      v8 = a2[3];
      v9 = v8;
    }

    else
    {
      *(v6 + 80 * v5) = *(v6 + 80 * v5) & 0x80000000 | v7;
      v8 = v2;
      v9 = v2;
    }

    v10 = (v6 + 80 * v8);
    v11 = *v10;
    if (*v10 < 0)
    {
      *v10 = v11 & 0x7FFFFFFF;
      re::StringID::destroyString((v10 + 2));
      v12 = a2[3];
      v6 = *(a1 + 16);
      v11 = *(v6 + 80 * v12);
      v9 = v12;
    }

    else
    {
      v12 = v9;
    }

    v13 = *(a1 + 40);
    *(v6 + 80 * v12) = *(a1 + 36) | v11 & 0x80000000;
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v13 + 1;
  }

  return v2 != 0x7FFFFFFF;
}