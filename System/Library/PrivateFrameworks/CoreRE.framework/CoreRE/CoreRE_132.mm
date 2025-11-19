uint64_t re::FramePersistentPtr<re::PerFrameCircularBuffer<re::ecs2::OcclusionComponentStateImpl::BoxCullBuffers,8ll>,re::FrameManager>::FramePersistentPtr(uint64_t a1, uint64_t a2)
{
  v7[5] = *MEMORY[0x1E69E9840];
  inited = objc_initWeak(a1, 0);
  *(a1 + 8) = 0;
  *(a1 + 40) = re::globalAllocators(inited)[2];
  *(a1 + 48) = 0;
  v7[0] = 0;
  objc_moveWeak(v7, a1);
  re::ArcWeakPtr<re::internal::AssetManagerAliveToken>::operator=(a1, a2);
  re::ArcWeakPtr<re::internal::AssetManagerAliveToken>::operator=(a2, v7);
  objc_destroyWeak(v7);
  v5 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v5;
  v7[3] = *(a1 + 40);
  v7[4] = 0;
  re::FunctionBase<24ul,void ()(void *)>::operator=<24ul>(v7, a1 + 16);
  re::FunctionBase<24ul,void ()(void *)>::operator=<24ul>(a1 + 16, a2 + 16);
  re::FunctionBase<24ul,void ()(void *)>::operator=<24ul>(a2 + 16, v7);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v7);
  return a1;
}

uint64_t *re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::OcclusionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) + 480;
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
    *v10 = &unk_1F5CF9A18;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::OcclusionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CF9A70;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::OcclusionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CF9AC8;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::OcclusionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CF9B20;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::OcclusionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
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
        *v37 = &unk_1F5CF9A18;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CF9A70;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CF9AC8;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CF9B20;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::OcclusionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::OcclusionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::OcclusionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::OcclusionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF9A18;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF9A18;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF9A70;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF9A70;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF9AC8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF9AC8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF9B20;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF9B20;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs236HierarchicalOcclusionOptionComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void _ZZN2re8internal15setIntroVersionINS_4ecs218OcclusionComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void *re::ecs2::allocInfo_Static3DTextComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B0938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B0938))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B09C0, "Static3DTextComponent");
    __cxa_guard_release(&qword_1EE1B0938);
  }

  return &unk_1EE1B09C0;
}

void re::ecs2::initInfo_Static3DTextComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v64[0] = 0x685065A25BB6F622;
  v64[1] = "Static3DTextComponent";
  if (v64[0])
  {
    if (v64[0])
    {
    }
  }

  *(this + 2) = v65;
  if ((atomic_load_explicit(&_MergedGlobals_358, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&_MergedGlobals_358);
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
      qword_1EE1B0948 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_float(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "mExtrusionDepth";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1C00000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1B0950 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_float(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "mFontSize";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x2000000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1B0958 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::introspect_uint8_t(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "mSegmentDensity";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x2400000003;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1B0960 = v20;
      v21 = re::introspectionAllocator(v20);
      v23 = re::introspect_uint8_t(1, v22);
      v24 = (*(*v21 + 32))(v21, 72, 8);
      *v24 = 1;
      *(v24 + 8) = "mGenerateMetaDataForRayTracing";
      *(v24 + 16) = v23;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0x2800000004;
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      *(v24 + 56) = 0;
      *(v24 + 64) = 0;
      qword_1EE1B0968 = v24;
      v25 = re::introspectionAllocator(v24);
      v27 = re::introspect_uint8_t(1, v26);
      v28 = (*(*v25 + 32))(v25, 72, 8);
      *v28 = 1;
      *(v28 + 8) = "mInstanceGlyphs";
      *(v28 + 16) = v27;
      *(v28 + 24) = 0;
      *(v28 + 32) = 0x2900000005;
      *(v28 + 40) = 0;
      *(v28 + 48) = 0;
      *(v28 + 56) = 0;
      *(v28 + 64) = 0;
      qword_1EE1B0970 = v28;
      v29 = re::introspectionAllocator(v28);
      v31 = re::introspect_uint8_t(1, v30);
      v32 = (*(*v29 + 32))(v29, 72, 8);
      *v32 = 1;
      *(v32 + 8) = "mAlignment";
      *(v32 + 16) = v31;
      *(v32 + 24) = 0;
      *(v32 + 32) = 0x2500000006;
      *(v32 + 40) = 0;
      *(v32 + 48) = 0;
      *(v32 + 56) = 0;
      *(v32 + 64) = 0;
      qword_1EE1B0978 = v32;
      v33 = re::introspectionAllocator(v32);
      v35 = re::introspect_uint8_t(1, v34);
      v36 = (*(*v33 + 32))(v33, 72, 8);
      *v36 = 1;
      *(v36 + 8) = "mLineBreakMode";
      *(v36 + 16) = v35;
      *(v36 + 24) = 0;
      *(v36 + 32) = 0x2600000007;
      *(v36 + 40) = 0;
      *(v36 + 48) = 0;
      *(v36 + 56) = 0;
      *(v36 + 64) = 0;
      qword_1EE1B0980 = v36;
      v37 = re::introspectionAllocator(v36);
      v39 = re::introspect_uint8_t(1, v38);
      v40 = (*(*v37 + 32))(v37, 72, 8);
      *v40 = 1;
      *(v40 + 8) = "mVerticalAlignment";
      *(v40 + 16) = v39;
      *(v40 + 24) = 0;
      *(v40 + 32) = 0x2700000008;
      *(v40 + 40) = 0;
      *(v40 + 48) = 0;
      *(v40 + 56) = 0;
      *(v40 + 64) = 0;
      qword_1EE1B0988 = v40;
      v41 = re::introspectionAllocator(v40);
      v42 = re::introspect_Vector2F(1);
      v43 = (*(*v41 + 32))(v41, 72, 8);
      *v43 = 1;
      *(v43 + 8) = "mTextFrameSize";
      *(v43 + 16) = v42;
      *(v43 + 24) = 0;
      *(v43 + 32) = 0x5800000009;
      *(v43 + 40) = 0;
      *(v43 + 48) = 0;
      *(v43 + 56) = 0;
      *(v43 + 64) = 0;
      qword_1EE1B0990 = v43;
      v44 = re::introspectionAllocator(v43);
      v46 = re::IntrospectionInfo<re::DynamicString>::get(1, v45);
      v47 = (*(*v44 + 32))(v44, 72, 8);
      *v47 = 1;
      *(v47 + 8) = "mFontName";
      *(v47 + 16) = v46;
      *(v47 + 24) = 0;
      *(v47 + 32) = 0x600000000ALL;
      *(v47 + 40) = 0;
      *(v47 + 48) = 0;
      *(v47 + 56) = 0;
      *(v47 + 64) = 0;
      qword_1EE1B0998 = v47;
      v48 = re::introspectionAllocator(v47);
      v50 = re::IntrospectionInfo<re::DynamicString>::get(1, v49);
      v51 = (*(*v48 + 32))(v48, 72, 8);
      *v51 = 1;
      *(v51 + 8) = "mTextString";
      *(v51 + 16) = v50;
      *(v51 + 24) = 0;
      *(v51 + 32) = 0x800000000BLL;
      *(v51 + 40) = 0;
      *(v51 + 48) = 0;
      *(v51 + 56) = 0;
      *(v51 + 64) = 0;
      qword_1EE1B09A0 = v51;
      v52 = re::introspectionAllocator(v51);
      v53 = re::introspect_Vector2F(1);
      v54 = (*(*v52 + 32))(v52, 72, 8);
      *v54 = 1;
      *(v54 + 8) = "mTextFrameOrigin";
      *(v54 + 16) = v53;
      *(v54 + 24) = 0;
      *(v54 + 32) = 0x500000000CLL;
      *(v54 + 40) = 0;
      *(v54 + 48) = 0;
      *(v54 + 56) = 0;
      *(v54 + 64) = 0;
      qword_1EE1B09A8 = v54;
      v55 = re::introspectionAllocator(v54);
      v57 = re::introspect_uint8_t(1, v56);
      v58 = (*(*v55 + 32))(v55, 72, 8);
      *v58 = 1;
      *(v58 + 8) = "mGenerateSides";
      *(v58 + 16) = v57;
      *(v58 + 24) = 0;
      *(v58 + 32) = 0x2A0000000DLL;
      *(v58 + 40) = 0;
      *(v58 + 48) = 0;
      *(v58 + 56) = 0;
      *(v58 + 64) = 0;
      qword_1EE1B09B0 = v58;
      v59 = re::introspectionAllocator(v58);
      v61 = re::introspect_uint8_t(1, v60);
      v62 = (*(*v59 + 32))(v59, 72, 8);
      *v62 = 1;
      *(v62 + 8) = "mGenerateBack";
      *(v62 + 16) = v61;
      *(v62 + 24) = 0;
      *(v62 + 32) = 0x2B0000000ELL;
      *(v62 + 40) = 0;
      *(v62 + 48) = 0;
      *(v62 + 56) = 0;
      *(v62 + 64) = 0;
      qword_1EE1B09B8 = v62;
      __cxa_guard_release(&_MergedGlobals_358);
    }
  }

  *(this + 2) = 0x12000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 15;
  *(this + 8) = &qword_1EE1B0948;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::Static3DTextComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::Static3DTextComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::Static3DTextComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::Static3DTextComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs221Static3DTextComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v63 = v65;
}

void *re::internal::defaultDestruct<re::ecs2::Static3DTextComponent>(uint64_t a1, uint64_t a2, void *a3)
{
  re::DynamicString::deinit((a3 + 31));
  re::DynamicString::deinit((a3 + 27));
  re::AssetHandle::~AssetHandle((a3 + 20));
  re::DynamicString::deinit((a3 + 16));
  re::DynamicString::deinit((a3 + 12));
  *a3 = &unk_1F5CCF868;

  return objc_destructInstance(a3 + 1);
}

void *re::internal::defaultDestructV2<re::ecs2::Static3DTextComponent>(void *a1)
{
  re::DynamicString::deinit((a1 + 31));
  re::DynamicString::deinit((a1 + 27));
  re::AssetHandle::~AssetHandle((a1 + 20));
  re::DynamicString::deinit((a1 + 16));
  re::DynamicString::deinit((a1 + 12));
  *a1 = &unk_1F5CCF868;

  return objc_destructInstance(a1 + 1);
}

void *re::ecs2::allocInfo_Static3DTextSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B0940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B0940))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B0A50, "Static3DTextSystem");
    __cxa_guard_release(&qword_1EE1B0940);
  }

  return &unk_1EE1B0A50;
}

void re::ecs2::initInfo_Static3DTextSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xB93D0EB0A66DD936;
  v6[1] = "Static3DTextSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x1F800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_Static3DTextSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::Static3DTextSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::Static3DTextSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::Static3DTextSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::Static3DTextSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::Static3DTextSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::Static3DTextSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::internal::defaultDestruct<re::ecs2::Static3DTextSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::FixedArray<CoreIKTransform>::deinit(a3 + 60);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 28);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::Static3DTextSystem>(uint64_t *a1)
{
  re::FixedArray<CoreIKTransform>::deinit(a1 + 60);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 28);

  re::ecs2::System::~System(a1);
}

BOOL re::ecs2::Static3DTextComponentStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v68 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 8))
  {
    return 0;
  }

  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v48, a5, 0);
  v9 = v48;
  v45 = a4;
  v46 = v48;
  v47 = DWORD2(v48);
  v10 = WORD4(v48);
  v11 = HIWORD(DWORD2(v48));
  if (v48 != a5 || WORD4(v48) != 0xFFFF || v11 != 0xFFFF)
  {
    __asm { FMOV            V8.2S, #1.0 }

    do
    {
      v18 = v11;
      v19 = *(v9 + 16);
      if (v19 <= v11)
      {
        v43 = 0;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v48 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v59 = 136315906;
        *&v59[4] = "operator[]";
        *&v59[12] = 1024;
        *&v59[14] = 797;
        *&v59[18] = 2048;
        *&v59[20] = v18;
        *&v59[28] = 2048;
        *&v59[30] = v19;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v20 = *(*(*(v9 + 32) + 16 * v11) + 8 * v10);
      if (!*(v20 + 168) || (*(v20 + 44) & 1) != 0 || *(v20 + 28) != *(v20 + 184) || *(v20 + 32) != *(v20 + 188) || *(v20 + 36) != *(v20 + 192) || *(v20 + 37) != *(v20 + 193) || *(v20 + 38) != *(v20 + 194) || *(v20 + 39) != *(v20 + 195) || *(v20 + 40) != *(v20 + 196) || *(v20 + 41) != *(v20 + 197) || *(v20 + 42) != *(v20 + 198) || *(v20 + 43) != *(v20 + 199) || (v21 = vmvn_s8(vceq_f32(*(v20 + 80), *(v20 + 200))), (vpmax_u32(v21, v21).u32[0] & 0x80000000) != 0) || (v22 = vmvn_s8(vceq_f32(*(v20 + 88), *(v20 + 208))), (vpmax_u32(v22, v22).u32[0] & 0x80000000) != 0) || re::DynamicString::operator!=(v20 + 96, v20 + 216) || re::DynamicString::operator!=(v20 + 128, v20 + 248))
      {
        v23 = re::Hash<re::DynamicString>::operator()(&v48, v20 + 128);
        v24 = re::Hash<re::DynamicString>::operator()(&v48, v20 + 96);
        v25 = re::DynamicString::format("Static3DTextComponent/%f/%f/%f/%f/%f/%f/%i/%i/%i/%i/%i/%i/%i/%i/%lu/%lu.compiledmesh", &v43, *(v20 + 28), *(v20 + 32), *(v20 + 80), *(v20 + 84), *(v20 + 88), *(v20 + 92), *(v20 + 36), *(v20 + 37), *(v20 + 38), *(v20 + 39), *(v20 + 42), *(v20 + 43), *(v20 + 40), *(v20 + 41), v23, v24);
        memset(&v59[8], 0, 24);
        v26 = re::DynamicString::setCapacity(v59, 0);
        *&v59[40] = 0;
        v60 = 0uLL;
        re::DynamicString::setCapacity(&v59[32], 0);
        v61 = _D8;
        v62 = 5;
        v63 = 0uLL;
        v64 = 0;
        v65 = 4;
        v66 = 16843009;
        v67 = 0;
        re::DynamicString::operator=(&v59[32], (v20 + 96));
        v27 = re::DynamicString::operator=(v59, (v20 + 128));
        v61 = vrev64_s32(*(v20 + 28));
        v62 = *(v20 + 36);
        v63 = *(v20 + 80);
        v64 = *(v20 + 38);
        LOBYTE(v65) = *(v20 + 37);
        HIBYTE(v65) = *(v20 + 39);
        LOBYTE(v66) = *(v20 + 42) != 0;
        BYTE1(v66) = *(v20 + 43) != 0;
        v67 = *(v20 + 41) != 0;
        re::MeshPrimitiveProvider::makeDescriptor(v27, 0, *(v20 + 40) != 0, &v48);
        (*(**(a1 + 8) + 40))(&v41);
        v28 = *(v20 + 160);
        *(v20 + 160) = v41;
        v41 = v28;
        v29 = *(v20 + 176);
        *(v20 + 176) = v42;
        v42 = v29;
        re::AssetHandle::~AssetHandle(&v41);
        v30 = *(v20 + 36);
        *(v20 + 184) = *(v20 + 28);
        *(v20 + 192) = v30;
        *(v20 + 200) = *(v20 + 80);
        re::DynamicString::operator=((v20 + 216), (v20 + 96));
        re::DynamicString::operator=((v20 + 248), (v20 + 128));
        *(v20 + 197) = *(v20 + 41);
        *(v20 + 44) = 0;
        if (v57)
        {
          if (BYTE8(v57))
          {
            (*(*v57 + 40))();
          }

          v57 = 0u;
          v58 = 0u;
        }

        if (*(&v52 + 1))
        {
          if (v56)
          {
            (*(**(&v52 + 1) + 40))();
          }

          v56 = 0;
          v53 = 0;
          v54 = 0;
          *(&v52 + 1) = 0;
          ++v55;
        }

        if (v50)
        {
          if (v52)
          {
            (*(*v50 + 40))();
          }

          *&v52 = 0;
          *&v51 = 0;
          v50 = 0uLL;
          ++DWORD2(v51);
        }

        if (v48 && (BYTE8(v48) & 1) != 0)
        {
          (*(*v48 + 40))();
        }

        if (*&v59[32])
        {
          if (v59[40])
          {
            (*(**&v59[32] + 40))(*&v59[32], v60);
          }

          *&v59[32] = 0u;
          v60 = 0u;
        }

        if (*v59 && (v59[8] & 1) != 0)
        {
          (*(**v59 + 40))(*v59, *&v59[16]);
        }

        if (v43 && (v44 & 1) != 0)
        {
          (*(*v43 + 40))();
        }
      }

      v31 = *(v20 + 16);
      v32 = *(v31 + 192);
      if (!v32)
      {
        v32 = re::ecs2::EntityComponentCollection::add((v31 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType);
      }

      v33 = re::AssetHandle::loadedAsset<re::MeshAsset>((v20 + 160));
      if (v33)
      {
        if (*(v32 + 40) != *(v20 + 168))
        {
          v34 = v33;
          re::AssetHandle::operator=(v32 + 32, (v20 + 160));
          re::ecs2::Component::markDirty(v32);
          v48 = xmmword_1E3047670;
          v49 = xmmword_1E3047680;
          v50 = xmmword_1E30476A0;
          v51 = xmmword_1E30474D0;
          re::MeshAsset::aabbFromMesh(v34, &v48, v59);
          v35 = *&v59[16];
          *(v20 + 48) = *v59;
          *(v20 + 64) = v35;
        }
      }

      else
      {
        re::AssetHandle::loadAsync((v20 + 160));
        v36 = *(v20 + 168);
        if (!v36)
        {
          goto LABEL_60;
        }

        v37 = atomic_load((v36 + 896));
        if (v37 != 3)
        {
          goto LABEL_60;
        }
      }

      v38 = v45;
      v39 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v46);
      re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v38, v39, *(a3 + 32));
LABEL_60:
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v46);
      v9 = v46;
      v10 = v47;
      v11 = HIWORD(v47);
    }

    while (v46 != a5 || v47 != 0xFFFF || HIWORD(v47) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::Static3DTextComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
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

_anonymous_namespace_ *re::ecs2::Static3DTextSystem::willAddSystemToECSService(re::ecs2::Static3DTextSystem *this)
{
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  result = re::ServiceLocator::serviceOrNull<re::AssetService>(v2);
  *(this + 59) = result;
  return result;
}

unint64_t re::ecs2::Static3DTextSystem::willAddSceneToECSService(re::ecs2::Static3DTextSystem *this, re::ecs2::Scene *a2)
{
  v59 = *MEMORY[0x1E69E9840];
  v4 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::Static3DTextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  *&v42 = this;
  *(&v42 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::Static3DTextComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::Static3DTextSystem::deactivateComponent,re::ecs2::Static3DTextSystem>;
  *&v43 = 0;
  *(&v43 + 1) = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::Static3DTextComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::Static3DTextComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::Static3DTextComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
  re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v4 + 184), &v42);
  v41[0] = a2;
  v5 = *(this + 44);
  v6 = *(this + 90);
  if (v5 >= 0xB)
  {
    if (v6)
    {
      v7 = (this + 368);
    }

    else
    {
      v7 = *(this + 47);
    }

    v9 = 8 * v5;
    while (!*v7)
    {
      ++v7;
      v9 -= 8;
      if (!v9)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_16;
  }

  if (v6)
  {
    v8 = (this + 368);
    if (!v5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v8 = *(this + 47);
    if (!v5)
    {
      goto LABEL_17;
    }
  }

  v10 = 0;
  v11 = 8 * v5;
  do
  {
    v12 = *v8++;
    v10 |= v12;
    v11 -= 8;
  }

  while (v11);
  if (v10)
  {
LABEL_16:
    *&v42 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(this + 344, 0);
    v13 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 224, v42);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::Static3DTextComponent>::init(v13, this + 224, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 35, v41, &v42);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 344, v42);
    v14 = v42;
    goto LABEL_49;
  }

LABEL_17:
  v49 = 0u;
  v42 = 0u;
  *&v43 = 0;
  v44 = 0u;
  v45 = 0u;
  *(&v43 + 1) = -1;
  v46 = 0;
  v47 = 1;
  v48 = 0uLL;
  v15 = *(this + 33);
  *&v49 = 0;
  v16 = *(this + 29);
  DWORD2(v49) = 0;
  if (v15 + 1 > 4 * v16)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::Static3DTextComponent>,4ul>::setBucketsCapacity(this + 28, (v15 + 4) >> 2);
    v16 = *(this + 29);
  }

  if (v16 <= v15 >> 2)
  {
    v41[1] = 0;
    memset(v58, 0, sizeof(v58));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v50 = 136315906;
    v51 = "operator[]";
    v52 = 1024;
    v53 = 858;
    v54 = 2048;
    v55 = v15 >> 2;
    v56 = 2048;
    v57 = v16;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_53;
  }

  if (*(this + 240))
  {
    v17 = this + 248;
  }

  else
  {
    v17 = *(this + 32);
  }

  v18 = *&v17[8 * (v15 >> 2)];
  ++*(this + 33);
  ++*(this + 68);
  v19 = v18 + 112 * (v15 & 3);
  v20 = v42;
  v21 = v43;
  v22 = v44;
  *(v19 + 48) = v45;
  *(v19 + 16) = v21;
  *(v19 + 32) = v22;
  *v19 = v20;
  re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v19 + 56, &v45 + 8);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v42);
  v24 = *(this + 33);
  if (!v24)
  {
LABEL_53:
    re::internal::assertLog(4, v23, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  v25 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 224, v24 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::Static3DTextComponent>::init(v25, this + 224, v41[0]);
  *&v58[0] = *(this + 33) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 35, v41, v58);
  v26 = *(this + 33);
  v27 = *(this + 48);
  if ((v26 & 0x3F) != 0)
  {
    v28 = (v26 >> 6) + 1;
  }

  else
  {
    v28 = v26 >> 6;
  }

  *(this + 48) = v26;
  *&v42 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 344), v28, &v42);
  if (v26 && v27 > v26)
  {
    v29 = 63;
    v30 = *(this + 48) & 0x3FLL;
    if (v30 && v30 != 63)
    {
      v29 = ~(-1 << v30);
    }

    if (*(this + 360))
    {
      v31 = this + 368;
    }

    else
    {
      v31 = *(this + 47);
    }

    *&v31[8 * *(this + 44) - 8] &= v29;
  }

  v32 = *(this + 33);
  v33 = *(this + 54);
  if ((v32 & 0x3F) != 0)
  {
    v34 = (v32 >> 6) + 1;
  }

  else
  {
    v34 = v32 >> 6;
  }

  *(this + 54) = v32;
  *&v42 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 392), v34, &v42);
  if (v32 && v33 > v32)
  {
    v35 = 63;
    v36 = *(this + 54) & 0x3FLL;
    if (v36 && v36 != 63)
    {
      v35 = ~(-1 << v36);
    }

    if (*(this + 408))
    {
      v37 = this + 416;
    }

    else
    {
      v37 = *(this + 53);
    }

    *&v37[8 * *(this + 50) - 8] &= v35;
  }

  v14 = *&v58[0];
LABEL_49:
  result = re::DynamicBitset<unsigned long long,64ul>::setBit(this + 392, v14);
  if (*(this + 456) == 1)
  {
    v39 = *(this + 55);
    v40 = *(v41[0] + 376);
    LOWORD(v42) = 257;
    DWORD1(v42) = 1023969417;
    BYTE8(v42) = 0;
    re::ecs2::System::setTaskOptions(v39, v40, &v42);
    return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(this + 224);
  }

  return result;
}

uint64_t re::ecs2::Static3DTextSystem::willRemoveSceneFromECSService(re::ecs2::Static3DTextSystem *this, re::ecs2::Scene *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::Static3DTextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  *&v17 = this;
  *(&v17 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::Static3DTextComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::Static3DTextSystem::deactivateComponent,re::ecs2::Static3DTextSystem>;
  v18 = 0;
  v19 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::Static3DTextComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::Static3DTextComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::Static3DTextComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
  re::Event<re::GeometricObjectBase>::removeSubscription(v4 + 184, &v17);
  *&v17 = a2;
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 35, &v17);
  if (result != -1)
  {
    v6 = *(this + 36) + 16 * result;
    re::DynamicBitset<unsigned long long,64ul>::setBit(this + 344, *(v6 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 392, *(v6 + 8));
    v7 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 224, *(v6 + 8));
    if (*v7)
    {
      v8 = v7;
      *v7 = 0;
      v9 = v7 + 1;
      v10 = *(v7[1] + 288);
      if (v10)
      {
        v11 = v7[12];
        if (v11)
        {
          for (i = 0; i != v11; ++i)
          {
            v13 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v8 + 7), i);
            re::EventBus::unsubscribe(v10, *v13, *(v13 + 8));
          }
        }
      }

      re::BucketArray<RESubscriptionHandle,8ul>::deinit((v8 + 7));
      v14 = 0;
      v15 = v8 + 3;
      do
      {
        v16 = v8[2];
        if (*v16)
        {
          re::ecs2::ComponentBucketsBase::removeBucket(v16, v15[v14]);
        }

        v15[v14++] = -1;
      }

      while (v14 != 4);
      *v9 = 0;
      v9[1] = 0;
    }

    return re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(this + 280, &v17);
  }

  return result;
}

uint64_t re::ecs2::Static3DTextSystem::update(void *a1, uint64_t a2, uint64_t a3)
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
      v9 = re::ecs2::SceneComponentTable::get((*v7 + 200), re::ecs2::ComponentImpl<re::ecs2::Static3DTextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
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

  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v37, 3023, a1);
  re::StackScratchAllocator::StackScratchAllocator(v51);
  v47 = 1;
  v48 = 0;
  v49 = 0;
  v45 = v51;
  v46 = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(&v45, 0);
  v47 += 2;
  v11 = a1[54];
  if ((v11 & 0x3F) != 0)
  {
    v12 = (v11 >> 6) + 1;
  }

  else
  {
    v12 = v11 >> 6;
  }

  v50 = a1[54];
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
      v17 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 35, v40);
      re::DynamicBitset<unsigned long long,64ul>::setBit(&v45, *(a1[36] + 16 * v17 + 8));
      v15 -= 8;
    }

    while (v15);
  }

  re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v45, (a1 + 49));
  v41 = 1;
  v42 = 0;
  v43 = 0;
  v40[0] = v51;
  v40[1] = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v40, 0);
  v41 += 2;
  v18 = a1[54];
  if ((v18 & 0x3F) != 0)
  {
    v19 = (v18 >> 6) + 1;
  }

  else
  {
    v19 = v18 >> 6;
  }

  v44 = a1[54];
  v52 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(v40, v19, &v52);
  re::DynamicBitset<unsigned long long,64ul>::subtractBitSet((a1 + 49), &v45);
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
        v27 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[]((a1 + 28), FirstBitSet);
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
  re::DynamicBitset<unsigned long long,64ul>::orWithBitSet((a1 + 49), v40);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate((a1 + 28));
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
  return re::ProfilerTimeGuard<(re::ProfilerStatistic)122>::end(v38);
}

BOOL re::internal::FontNameAndGlyphIndexCacheKey::operator==(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    v2 = *a1;
    v3 = *a2;
    if (v2 == v3 || v2 && v3 && CFStringCompare(v2, v3, 0) == kCFCompareEqualTo)
    {
      return 1;
    }
  }

  return result;
}

unint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::Static3DTextComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::Static3DTextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
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

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::Static3DTextComponent>::setComponentState(a2, v11, v7);
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::Static3DTextComponent>::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

void re::ecs2::Static3DTextSystem::~Static3DTextSystem(re::ecs2::Static3DTextSystem *this)
{
  re::FixedArray<CoreIKTransform>::deinit(this + 60);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 28);

  re::ecs2::System::~System(this);
}

{
  re::FixedArray<CoreIKTransform>::deinit(this + 60);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 28);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::make::shared::unsafelyInplace<re::ecs2::Static3DTextComponent>(uint64_t a1)
{
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 0u;
  v2 = (a1 + 128);
  *(a1 + 96) = 0u;
  v3 = (a1 + 96);
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *v4 = &unk_1F5CD0840;
  *(v4 + 28) = 0x3F8000003E800000;
  *(v4 + 36) = 1029;
  *(v4 + 40) = 0;
  *(v4 + 41) = 16843009;
  v5.i64[0] = 0x7F0000007FLL;
  v5.i64[1] = 0x7F0000007FLL;
  *(v4 + 48) = vnegq_f32(v5);
  *(v4 + 64) = v5;
  *(v4 + 80) = 0u;
  *v3 = 0u;
  *(v4 + 112) = 0u;
  v6 = re::DynamicString::setCapacity(v3, 0);
  *(a1 + 144) = 0u;
  *v2 = 0u;
  v7 = re::DynamicString::setCapacity(v2, 0);
  *(a1 + 176) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 184) = 0x3F8000003E800000;
  *(a1 + 192) = 0x101010000000405;
  *(a1 + 200) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  v8 = re::DynamicString::setCapacity((a1 + 216), 0);
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  re::DynamicString::setCapacity((a1 + 248), 0);
  return a1;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs221Static3DTextComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 1;
  *(a2 + 8) = 0;
  return result;
}

re::ecs2::Static3DTextSystem *re::ecs2::Static3DTextSystem::Static3DTextSystem(re::ecs2::Static3DTextSystem *this)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = re::ecs2::System::System(this, 1);
  *v2 = &unk_1F5CF9BE0;
  v3 = v2 + 464;
  *(v2 + 232) = 0;
  *(v2 + 224) = 0;
  v4 = v2 + 224;
  *(v2 + 240) = 1;
  *(v2 + 256) = 0;
  *(v2 + 264) = 0;
  *(v2 + 248) = 0;
  *(v2 + 272) = 0;
  v5 = (v2 + 280);
  *(v2 + 280) = 0u;
  *(v2 + 296) = 0u;
  *(v2 + 312) = 0u;
  *(v2 + 328) = 0u;
  *(v2 + 344) = 0u;
  *(v2 + 360) = 1;
  *(v2 + 368) = 0u;
  *(v2 + 384) = 0u;
  *(v2 + 400) = 0;
  *(v2 + 408) = 1;
  *(v2 + 441) = 0u;
  *(v2 + 416) = 0u;
  *(v2 + 432) = 0u;
  v8 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 43, 0);
  *(this + 90) += 2;
  *(this + 48) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 49, 0);
  *(this + 102) += 2;
  *(this + 54) = 0;
  *(this + 55) = this;
  *(this + 56) = v3;
  *(this + 456) = 1;
  *(this + 58) = &unk_1F5CF9B78;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  v10[1] = 1;
  v11[0] = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
  v10[0] = v11;
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((this + 480), v10);
  return this;
}

uint64_t re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::Static3DTextComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::Static3DTextComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::Static3DTextComponent>,4ul>::setBucketsCapacity(void *result, unint64_t a2)
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

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::Static3DTextComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::Static3DTextSystem::deactivateComponent,re::ecs2::Static3DTextSystem>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a4)
  {
    v5 = 8 * a4;
    v6.i64[0] = 0x7F0000007FLL;
    v6.i64[1] = 0x7F0000007FLL;
    v12 = vnegq_f32(v6);
    do
    {
      v7 = *a3++;
      v8 = *(v7 + 160);
      v9 = *(v7 + 176);
      *(v7 + 168) = 0;
      *(v7 + 176) = 0;
      *(v7 + 160) = 0;
      v13 = v8;
      v14 = v9;
      re::AssetHandle::~AssetHandle(&v13);
      *&v10 = 0x7F0000007FLL;
      *(&v10 + 1) = 0x7F0000007FLL;
      *(v7 + 48) = v12;
      *(v7 + 64) = v10;
      *(v7 + 44) = 0;
      v5 -= 8;
    }

    while (v5);
  }

  return 0;
}

uint64_t re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::Static3DTextComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::Static3DTextComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::Static3DTextComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
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

uint64_t *re::ecs2::BasicComponentStateSceneData<re::ecs2::Static3DTextComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::Static3DTextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType) + 480;
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
    *v10 = &unk_1F5CF9C70;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::Static3DTextComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::Static3DTextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CF9CC8;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::Static3DTextComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::Static3DTextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CF9D20;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::Static3DTextComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::Static3DTextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CF9D78;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::Static3DTextComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::Static3DTextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
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
        *v37 = &unk_1F5CF9C70;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::Static3DTextComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CF9CC8;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::Static3DTextComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CF9D20;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::Static3DTextComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CF9D78;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::Static3DTextComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::Static3DTextComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::Static3DTextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::Static3DTextComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::Static3DTextComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::Static3DTextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::Static3DTextComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::Static3DTextComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::Static3DTextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::Static3DTextComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::Static3DTextComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::Static3DTextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::Static3DTextComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::Static3DTextComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::Static3DTextComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::Static3DTextComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::Static3DTextComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::Static3DTextComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::Static3DTextComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::Static3DTextComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::Static3DTextComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF9C70;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::Static3DTextComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::Static3DTextComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF9C70;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::Static3DTextComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::Static3DTextComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::Static3DTextComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::Static3DTextComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF9CC8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::Static3DTextComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::Static3DTextComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF9CC8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::Static3DTextComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::Static3DTextComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::Static3DTextComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::Static3DTextComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF9D20;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::Static3DTextComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::Static3DTextComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF9D20;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::Static3DTextComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::Static3DTextComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::Static3DTextComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::Static3DTextComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF9D78;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::Static3DTextComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::Static3DTextComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF9D78;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

void *re::ecs2::allocInfo_AudioSessionComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_359, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_359))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B0B10, "AudioSessionComponent");
    __cxa_guard_release(&_MergedGlobals_359);
  }

  return &unk_1EE1B0B10;
}

void re::ecs2::initInfo_AudioSessionComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v18[0] = 0x95BFFC8E07900DBALL;
  v18[1] = "AudioSessionComponent";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE1B0AE8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B0AE8);
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
      qword_1EE1B0AF8 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::IntrospectionInfo<re::DynamicString>::get(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "audioSessionUUIDToControl";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x2000000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1B0B00 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_uint32_t(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "audioSessionIDToJoin";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x4000000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1B0B08 = v16;
      __cxa_guard_release(&qword_1EE1B0AE8);
    }
  }

  *(this + 2) = 0x10000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1B0AF8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AudioSessionComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AudioSessionComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AudioSessionComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AudioSessionComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs221AudioSessionComponentELNS_17RealityKitReleaseE6EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v17 = v19;
}

void *re::ecs2::allocInfo_AudioSessionSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B0AF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B0AF0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B0BA0, "AudioSessionSystem");
    __cxa_guard_release(&qword_1EE1B0AF0);
  }

  return &unk_1EE1B0BA0;
}

void re::ecs2::initInfo_AudioSessionSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x42CCCA7DAA7DA89ELL;
  v6[1] = "AudioSessionSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x22800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_AudioSessionSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AudioSessionSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AudioSessionSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::AudioSessionSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::AudioSessionSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AudioSessionSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AudioSessionSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::internal::defaultDestruct<re::ecs2::AudioSessionSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit((a3 + 504));
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates((a3 + 264));

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::AudioSessionSystem>(uint64_t a1)
{
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit((a1 + 504));
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates((a1 + 264));

  re::ecs2::System::~System(a1);
}

re::ecs2::AudioSessionComponent *re::ecs2::AudioSessionComponent::AudioSessionComponent(re::ecs2::AudioSessionComponent *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *v2 = &unk_1F5CF9DD0;
  *(v2 + 48) = 0u;
  *(v2 + 32) = 0u;
  v3 = (v2 + 32);
  v4 = re::DynamicString::setCapacity(v3, 0);
  *(this + 16) = 0;
  *(this + 68) = 0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 13) = 0;
  re::DynamicString::setCapacity(this + 10, 0);
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  v5 = [[REAudioSessionComponentWrapper alloc] initWithComponent:this];
  v6 = *(this + 17);
  *(this + 17) = v5;

  return this;
}

void re::ecs2::AudioSessionComponent::~AudioSessionComponent(id *this)
{
  *this = &unk_1F5CF9DD0;
  [this[17] setComponent:0];
  re::ecs2::AudioSessionComponent::clearControllerObjects(this, v2);

  re::DynamicString::deinit((this + 10));
  re::DynamicString::deinit((this + 4));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 1);
}

{
  re::ecs2::AudioSessionComponent::~AudioSessionComponent(this);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::AudioSessionComponent::clearControllerObjects(re::ecs2::AudioSessionComponent *this, const re::ecs2::Entity *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    AudioServiceForEntity = re::audio::getAudioServiceForEntity(*(this + 2), a2);
    if (*(this + 16))
    {
      v5 = AudioServiceForEntity == 0;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      (*(*AudioServiceForEntity + 408))(AudioServiceForEntity);
      *(this + 16) = 0;
    }

    v6 = re::ecs2::EntityComponentCollection::get((v2 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v6)
    {

      re::ecs2::AudioSessionComponent::clearControllerObjectsOnPlayerComponent(this, v6);
    }
  }
}

uint64_t re::ecs2::AudioSessionComponent::currentlyAppliedInputModeOverride(re::ecs2::AudioSessionComponent *this)
{
  v2 = *(this + 2);
  if (!v2)
  {
    return *(this + 68);
  }

  v3 = re::ecs2::EntityComponentCollection::get((v2 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  result = *(this + 68);
  if (v3)
  {
    v5 = *(this + 15);
    if (v5)
    {

      return re::ecs2::AudioPlayerComponent::getInputModeOverride(v3, v5);
    }
  }

  return result;
}

void re::ecs2::AudioSessionComponent::clearControllerObjectsOnPlayerComponent(re::ecs2::AudioSessionComponent *this, re::ecs2::AudioPlayerComponent **a2)
{
  v4 = *(this + 14);
  if (v4)
  {
    re::ecs2::AudioPlayerComponent::destroy(a2, v4);
    *(this + 14) = 0;
  }

  v5 = *(this + 15);
  if (v5)
  {
    re::ecs2::AudioPlayerComponent::destroy(a2, v5);
    *(this + 15) = 0;
  }
}

unint64_t re::ecs2::AudioSessionComponent::prepareExternalStreamControllerUsingCurrentState(uint64_t a1, float *a2, void **a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*a3 || ((*(a1 + 40) & 1) != 0 ? (v6 = *(a1 + 48)) : (v6 = a1 + 41), [MEMORY[0x1E696AEC0] stringWithUTF8String:v6], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(objc_alloc(MEMORY[0x1E696AFB0]), "initWithUUIDString:", v7), re::ObjCObject::operator=(a3, v8), v8, v7, *a3))
  {
    v10 = -24.0;
    if (objc_opt_respondsToSelector())
    {
      [MEMORY[0x1E69781A8] recommendedTargetLKFSForVoiceStreams];
      v10 = v11;
    }

    if (objc_opt_respondsToSelector())
    {
      [MEMORY[0x1E69781A8] recommendedAbsoluteCalibrationLevelForVoiceStreamsAtRecommendedTargetLKFS];
      v13 = v12;
    }

    else
    {
      v13 = 68.0;
    }

    v14 = 0.75;
    if (objc_opt_respondsToSelector())
    {
      [MEMORY[0x1E69781A8] recommendedRolloffFactorForVoiceStreams];
      v14 = v15;
    }

    v16 = re::ecs2::AudioPlayerComponent::prepare(a2, *a3, 1, 2, v10, v13);
    a2[82] = v14;
    re::ecs2::AudioPlayerComponent::overrideInputMode(a2, v16, *(a1 + 68));
  }

  else
  {
    v18 = *re::audioLogObjects(v9);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      if (*(a1 + 40))
      {
        v19 = *(a1 + 48);
      }

      else
      {
        v19 = a1 + 41;
      }

      v20 = 136315138;
      v21 = v19;
      _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, "cannot prepare external stream controller for audio session with invalid uuid string %s", &v20, 0xCu);
    }

    return 0;
  }

  return v16;
}

void re::ecs2::AudioSessionComponent::updateControllerObjectsIfSomethingChanged(re::ecs2::AudioSessionComponent *this, uint64_t a2, re::AudioService *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = *(this + 2);
  if (!v3 || *(this + 18) == a2 && re::DynamicString::operator==(this + 80, this + 32))
  {
    return;
  }

  v7 = *(v3 + 216);
  if (v7 && re::ecs2::NetworkComponent::owningProcessType(*(v3 + 216)) || !re::DynamicString::operator!=(this + 80, this + 32))
  {
    goto LABEL_23;
  }

  v8 = re::ecs2::EntityComponentCollection::getOrAdd((v3 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v8)
  {
    v9 = v8;
    re::ecs2::AudioSessionComponent::clearControllerObjectsOnPlayerComponent(this, v8);
    v10 = *(this + 5);
    v11 = v10 >> 1;
    if ((v10 & 1) == 0)
    {
      v11 = v10 >> 1;
    }

    if (v11)
    {
      if (v10)
      {
        v12 = *(this + 6);
      }

      else
      {
        v12 = this + 41;
      }

      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v12];
      v15 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v14];
      if (v15)
      {
        v16 = re::ecs2::AudioPlayerComponent::prepare(v9, v14);
        *(this + 14) = v16;
        re::ecs2::AudioPlayerComponent::setDeferToSystemAcousticTuning(v9, v16, 1);
        v22 = v15;
        *(this + 15) = re::ecs2::AudioSessionComponent::prepareExternalStreamControllerUsingCurrentState(this, v9, &v22);
      }

      else
      {
        v17 = *re::audioLogObjects(0);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v24 = v14;
          _os_log_error_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_ERROR, "failed to create NSUUID with AVAudioSession uuid string %@", buf, 0xCu);
        }
      }
    }

    if (v7)
    {
      re::ecs2::NetworkComponent::markDirty(v7, v9);
    }

LABEL_23:
    if (a3 && (*(*a3 + 536))(a3))
    {
      if (*(this + 16))
      {
        (*(*a3 + 408))(a3);
        *(this + 16) = 0;
      }

      v18 = *(this + 5);
      if (v18)
      {
        v19 = v18 >> 1;
      }

      else
      {
        v19 = v18 >> 1;
      }

      if (a2 != -1)
      {
        if (v19)
        {
          re::DynamicString::DynamicString(&v20, (this + 32));
          *(this + 16) = (*(*a3 + 400))(a3, a2, &v20);
          if (v20)
          {
            if (v21)
            {
              (*(*v20 + 40))();
            }
          }
        }
      }
    }

    return;
  }

  v13 = *re::audioLogObjects(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "failed to create AudioPlayerComponent", buf, 2u);
  }
}

void re::ecs2::AudioSessionComponent::updateInputModeOverrideOnControllerObjectsIfSomethingChanged(re::ecs2::AudioSessionComponent *this)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(this + 68) != *(this + 160) || *(this + 14) != *(this + 21) || *(this + 15) != *(this + 22))
  {
    v2 = *(this + 2);
    if (v2)
    {
      InputModeOverride = re::ecs2::EntityComponentCollection::get((v2 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (InputModeOverride)
      {
        v4 = InputModeOverride;
        v5 = *(v2 + 216);
        if (!v5 || (InputModeOverride = re::ecs2::NetworkComponent::owningProcessType(v5), !InputModeOverride))
        {
          v6 = *(this + 15);
          if (v6)
          {
            InputModeOverride = re::ecs2::AudioPlayerComponent::getInputModeOverride(v4, v6);
            if (InputModeOverride != *(this + 68))
            {
              re::ecs2::AudioPlayerComponent::destroy(v4, *(this + 15));
              v10 = 0;
              *(this + 15) = re::ecs2::AudioSessionComponent::prepareExternalStreamControllerUsingCurrentState(this, v4, &v10);
            }
          }

          v7 = *re::audioLogObjects(InputModeOverride);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            v8 = *(this + 68);
            if (*(this + 40))
            {
              v9 = *(this + 6);
            }

            else
            {
              v9 = this + 41;
            }

            *buf = 67109378;
            v12 = v8;
            v13 = 2080;
            v14 = v9;
            _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "overriding input mode to %u for session %s (NOTE: skipping AUSM override since that is managed elsewhere)", buf, 0x12u);
          }

          if (v5)
          {
            re::ecs2::NetworkComponent::markDirty(v5, v4);
          }
        }
      }
    }
  }
}

void **re::ecs2::AudioSessionComponent::joinSession(uint64_t a1, id *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  re::ObjCObject::operator=((a1 + 72), a2);
  AudioServiceForEntity = re::audio::getAudioServiceForEntity(*(a1 + 16), v4);
  if (AudioServiceForEntity)
  {
    v6 = AudioServiceForEntity;
    v7 = *(*AudioServiceForEntity + 784);
    v8 = *a2;
    v9 = v7(v6, v8);
  }

  else
  {
    v10 = *re::audioLogObjects(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = *a2;
      v14 = 134218242;
      v15 = a1;
      v16 = 2112;
      v17 = v12;
      v13 = v10;
      _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "AudioSessionComponent@%p does not have audio service, storing opaque identifer for %@ instead", &v14, 0x16u);
    }

    v8 = *a2;
    v9 = [v8 opaqueSessionID];
  }

  *(a1 + 64) = v9;

  return re::ecs2::Component::markDirty(a1);
}

id re::ecs2::AudioSessionComponent::NearestAudioSessionUpEntityHierarchy@<X0>(re::ecs2::AudioSessionComponent *this@<X0>, void *a2@<X8>)
{
  if (this)
  {
    v4 = this;
    do
    {
      v5 = re::ecs2::EntityComponentCollection::get((v4 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioSessionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v5)
      {
        v6 = *(v5 + 72);
        if (v6)
        {
          result = v6;
          goto LABEL_8;
        }

        if (*(v5 + 64))
        {
          break;
        }
      }

      v4 = *(v4 + 4);
    }

    while (v4);
  }

  result = 0;
LABEL_8:
  *a2 = result;
  return result;
}

void **re::ecs2::AudioSessionComponent::clearStateFollowingMediaServicesCrash(re::ecs2::AudioSessionComponent *this, const re::ecs2::Entity *a2)
{
  v3 = *(this + 2);
  result = re::audio::getAudioServiceForEntity(v3, a2);
  if (v3)
  {
    v5 = result == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return result;
  }

  v6 = result;
  v7 = *(v3 + 27);
  if (v7 && re::ecs2::NetworkComponent::owningProcessType(v7))
  {
    *(this + 16) = 0;
LABEL_11:

    return re::ObjCObject::operator=(this + 9, 0);
  }

  v8 = (*(*v6 + 568))(v6);
  *(this + 16) = 0;
  if (v8)
  {
    goto LABEL_11;
  }

  return re::ecs2::Component::markDirty(this);
}

BOOL re::ecs2::AudioSessionComponentStateImpl::processDirtyComponents(re::ProfilerConfig *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v56 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 8);
  if (v5)
  {
    isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(a1);
    if (isStatisticCollectionEnabled)
    {
      v11 = re::profilerThreadContext(isStatisticCollectionEnabled);
      v12 = re::ecs2::SceneComponentTable::get((v5 + 200), re::ecs2::ComponentImpl<re::ecs2::AudioSessionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      v13 = v12 ? *(v12 + 384) : 0;
      v15 = *(v11 + 152);
      if (v15)
      {
        v16 = v15[1152].u64[0];
        if (v16 >= v13)
        {
          v16 = v13;
        }

        v15[1152].i64[0] = v16;
        v17 = v15[1152].u64[1];
        if (v17 <= v13)
        {
          v17 = v13;
        }

        v15[1152].i64[1] = v17;
        v18 = vdupq_n_s64(1uLL);
        v18.i64[0] = v13;
        v15[1153] = vaddq_s64(v15[1153], v18);
        *(v11 + 184) = 0;
      }
    }

    re::ecs2::SceneComponentTable::get((v5 + 200), re::ecs2::ComponentImpl<re::ecs2::AudioSessionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v51, 3115, a1);
    v19 = *(*(v5 + 104) + 288);
    v20 = *(a1 + 2);
    if (v20)
    {
      v21 = (*(*v20 + 16))(v20, v5);
    }

    else
    {
      v21 = 0;
    }

    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v43, a5, 0);
    v48 = a4;
    v49 = v43;
    v50 = v44;
    if (v43 == a5 && v44 == 0xFFFFFFFFLL)
    {
LABEL_18:
      v14 = *(a5 + 40) != 0;
      re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v51);
      return v14;
    }

    while (1)
    {
      v23 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v48);
      re::ecs2::AudioSessionComponentStateImpl::retrieveAVAudioSessionForIPhoneTarget(v46, a1, v23);
      if (v47 != -1)
      {
        (off_1F5CF9F40[v47])(&v43, v46);
      }

      v47 = -1;
      if (*(v23 + 64))
      {
        v24 = v21 == 0;
      }

      else
      {
        v24 = 1;
      }

      if (!v24)
      {
        (*(*v21 + 792))(v21);
      }

      v25 = *(v23 + 16);
      if (v25)
      {
        v26 = *(v25 + 304);
        if (v26)
        {
          v27 = v19 >> 1;
        }

        else
        {
          v27 = -1;
        }

        re::ecs2::AudioSessionComponent::updateControllerObjectsIfSomethingChanged(v23, v27, v21);
        re::ecs2::AudioSessionComponent::updateInputModeOverrideOnControllerObjectsIfSomethingChanged(v23);
        *(v23 + 144) = v27;
        re::DynamicString::operator=((v23 + 80), (v23 + 32));
        *(v23 + 160) = *(v23 + 68);
        *(v23 + 168) = *(v23 + 112);
        if (v26)
        {
          v28 = v48;
          v29 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v49);
          v30 = re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v28, v29, *(a3 + 40));
          v31 = *re::audioLogObjects(v30);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            v32 = *(v23 + 16);
            v33 = v31;
            re::ecs2::Entity::debugDescription(v32, &v43);
            v34 = &v44 + 1;
            if (v44)
            {
              v34 = v45;
            }

            *buf = 134218242;
            v53 = v23;
            v54 = 2080;
            v55 = v34;
            v35 = v33;
            v36 = "AudioSessionComponentStateImpl::processDirtyComponents: setting state to 'prepare' for AudioSessionComponent %p on entity %s";
LABEL_45:
            _os_log_debug_impl(&dword_1E1C61000, v35, OS_LOG_TYPE_DEBUG, v36, buf, 0x16u);

            if (v43 && (v44 & 1) != 0)
            {
              (*(*v43 + 40))();
            }

            goto LABEL_38;
          }

          goto LABEL_38;
        }
      }

      else
      {
        re::ecs2::AudioSessionComponent::updateControllerObjectsIfSomethingChanged(v23, -1, v21);
        re::ecs2::AudioSessionComponent::updateInputModeOverrideOnControllerObjectsIfSomethingChanged(v23);
        *(v23 + 144) = -1;
        re::DynamicString::operator=((v23 + 80), (v23 + 32));
        *(v23 + 160) = *(v23 + 68);
        *(v23 + 168) = *(v23 + 112);
      }

      v37 = v48;
      v38 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v49);
      v39 = re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v37, v38, *(a3 + 32));
      v40 = *re::audioLogObjects(v39);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        v41 = *(v23 + 16);
        v33 = v40;
        re::ecs2::Entity::debugDescription(v41, &v43);
        v42 = &v44 + 1;
        if (v44)
        {
          v42 = v45;
        }

        *buf = 134218242;
        v53 = v23;
        v54 = 2080;
        v55 = v42;
        v35 = v33;
        v36 = "AudioSessionComponentStateImpl::processDirtyComponents: setting state to 'inactive' for AudioSessionComponent %p on entity %s";
        goto LABEL_45;
      }

LABEL_38:
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v49);
      if (v49 == a5 && v50 == 0xFFFF && HIWORD(v50) == 0xFFFF)
      {
        goto LABEL_18;
      }
    }
  }

  return 0;
}

void re::ecs2::AudioSessionComponentStateImpl::retrieveAVAudioSessionForIPhoneTarget(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 2;
  v5 = *(a3 + 16);
  if (v5 && (v6 = *(a2 + 16)) != 0)
  {
    do
    {
      v7 = v5;
      v5 = *(v5 + 32);
    }

    while (v5);
    v8 = (*(*v6 + 16))(v6, *(v7 + 24));
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a3 + 72);
  v10 = v9;
  v11 = *(a3 + 64);
  if (!v11)
  {
    *(a1 + 8) = 0;
    goto LABEL_29;
  }

  if (!v9)
  {
    *(a1 + 8) = 1;
    if (!v8)
    {
      goto LABEL_29;
    }

LABEL_20:
    (*(*v8 + 776))(buf, v8, *(a3 + 64));
    v18 = *(a1 + 8);
    if (v18 == -1)
    {
      if (*&buf[8] == -1)
      {
LABEL_27:
        if (*(a1 + 8) == 3)
        {
          re::ObjCObject::operator=((a3 + 72), *a1);
        }

        goto LABEL_29;
      }
    }

    else if (*&buf[8] == -1)
    {
      (off_1F5CF9F40[v18])(&v24, a1);
      *(a1 + 8) = -1;
      goto LABEL_25;
    }

    v24 = a1;
    (off_1F5CF9F80[*&buf[8]])(&v24, a1, buf);
LABEL_25:
    if (*&buf[8] != -1)
    {
      (off_1F5CF9F40[*&buf[8]])(&v24, buf);
    }

    goto LABEL_27;
  }

  v12 = [v9 opaqueSessionID];
  if (v11 == v12)
  {
    v13 = v10;
    *buf = v10;
    std::__variant_detail::__assignment<std::__variant_detail::__traits<re::audiosession_state::InvalidSessionID,re::audiosession_state::RetrievingSession,re::audiosession_state::SessionUnavailable,re::audiosession_state::SessionAvailable>>::__assign_alt[abi:nn200100]<3ul,re::audiosession_state::SessionAvailable,re::audiosession_state::SessionAvailable>(a1, a1, buf);

    goto LABEL_29;
  }

  v14 = *(a1 + 8);
  if (v14 != -1)
  {
    if (v14 == 1)
    {
      goto LABEL_17;
    }

    v12 = (off_1F5CF9F40[v14])(buf, a1);
  }

  *(a1 + 8) = 1;
LABEL_17:
  v15 = *(a3 + 16);
  v16 = *(v15 + 312);
  v17 = *re::audioLogObjects(v12);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v19 = v17;
    v20 = *(v15 + 296);
    v21 = *(a3 + 64);
    v22 = v10;
    v23 = [v22 opaqueSessionID];
    *buf = 136315906;
    *&buf[4] = v20;
    v26 = 2048;
    v27 = v16;
    v28 = 1024;
    v29 = v21;
    v30 = 1024;
    v31 = v23;
    _os_log_debug_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_DEBUG, "Need to update AVAudioSession for entity(%s, %llu). new audioSessionID(%u) old audioSessionID(%u)", buf, 0x22u);
  }

  re::ObjCObject::operator=((a3 + 72), 0);
  if (v8)
  {
    goto LABEL_20;
  }

LABEL_29:
}

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
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

double re::ecs2::AudioSessionComponentStateImpl::processPreparingComponents(re::ProfilerConfig *a1, double result, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a4;
  v6 = *(a4 + 8);
  if (v6)
  {
    isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(a1);
    if (isStatisticCollectionEnabled)
    {
      v11 = re::profilerThreadContext(isStatisticCollectionEnabled);
      v12 = re::ecs2::SceneComponentTable::get((v6 + 200), re::ecs2::ComponentImpl<re::ecs2::AudioSessionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      v13 = v12 ? *(v12 + 384) : 0;
      v14 = *(v11 + 152);
      if (v14)
      {
        v15 = v14[1152].u64[0];
        if (v15 >= v13)
        {
          v15 = v13;
        }

        v14[1152].i64[0] = v15;
        v16 = v14[1152].u64[1];
        if (v16 <= v13)
        {
          v16 = v13;
        }

        v14[1152].i64[1] = v16;
        v17 = vdupq_n_s64(1uLL);
        v17.i64[0] = v13;
        v14[1153] = vaddq_s64(v14[1153], v17);
        *(v11 + 184) = 0;
      }
    }

    re::ecs2::SceneComponentTable::get((v6 + 200), re::ecs2::ComponentImpl<re::ecs2::AudioSessionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v36, 3115, a1);
    v18 = *(*(v6 + 104) + 288) >> 1;
    v19 = *(a1 + 2);
    if (v19)
    {
      v20 = (*(*v19 + 16))(v19, v6);
    }

    else
    {
      v20 = 0;
    }

    v21 = (*(**(v6 + 56) + 32))(*(v6 + 56));
    v22 = re::ServiceLocator::service<re::TransformService>(v21);
    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v38, a6, 0);
    v33 = a5;
    v34 = v38;
    v35 = v39;
    if (v38 == a6 && v39 == 0xFFFFFFFFLL)
    {
LABEL_29:
      re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v36);
    }

    else
    {
      while (1)
      {
        v23 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v33);
        v32 = v23;
        if (*(v23 + 16))
        {
          v24 = v20 == 0;
        }

        else
        {
          v24 = 1;
        }

        if (!v24)
        {
          (*(*v20 + 792))(v20);
          v23 = v32;
        }

        re::ecs2::AudioSessionComponentStateImpl::retrieveAVAudioSessionForIPhoneTarget(&v30, a1, v23);
        v25 = re::ecs2::AudioSessionComponentStateImpl::processUpdatingRootTransform(a1, v32, v22, v18);
        v38 = &v37;
        v39 = &v33;
        v40 = &v32;
        v41 = &v32;
        v42 = &v37;
        v43 = &v33;
        v44 = &v32;
        v45 = &v37;
        v46 = &v33;
        v47 = &v32;
        if (v31 == -1)
        {
          break;
        }

        v48 = &v38;
        (off_1F5CF9F60[v31])(&v48, &v30, v25);
        if (v31 != -1)
        {
          (off_1F5CF9F40[v31])(&v38, &v30);
        }

        re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v34);
        if (v34 == a6 && v35 == 0xFFFF && HIWORD(v35) == 0xFFFF)
        {
          goto LABEL_29;
        }
      }

      v26 = std::__throw_bad_variant_access[abi:nn200100]();
      return re::ecs2::AudioSessionComponentStateImpl::processUpdatingRootTransform(v26, v27, v28, v29);
    }
  }

  return result;
}

double re::ecs2::AudioSessionComponentStateImpl::processUpdatingRootTransform(re::ecs2::AudioSessionComponentStateImpl *this, float32x4_t *a2, re::TransformService *a3, uint64_t a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2[1].i64[0];
  if (!v5)
  {
    goto LABEL_6;
  }

  v8 = *(this + 2);
  if (v8)
  {
    do
    {
      v9 = v5;
      v5 = *(v5 + 32);
    }

    while (v5);
    v10 = (*(*v8 + 16))(v8, *(v9 + 24));
    v5 = a2[1].i64[0];
    if (v5)
    {
      v11 = v10;
      goto LABEL_8;
    }

LABEL_6:
    a4 = -1;
LABEL_15:
    v13 = a2[13];
    v31 = a2[12];
    v32 = v13;
    v14 = a2[14];
    v15 = a2[15];
    goto LABEL_20;
  }

  v11 = 0;
LABEL_8:
  if ((*(v5 + 304) & 1) == 0)
  {
    a4 = -1;
  }

  if (v11)
  {
    v12 = a2[8].i64[0] == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    goto LABEL_15;
  }

  re::TransformService::worldMatrix(a3, v5, 0, v26);
  re::audio::cleanUpTransformForPHASE(v26, v16, v17, v18, &v27);
  v19 = a2 + 12;
  v20 = a2[8].i64[0];
  if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v28, a2[13]), vceqq_f32(v27, a2[12])), vandq_s8(vceqq_f32(v29, a2[14]), vceqq_f32(v30, a2[15])))) & 0x80000000) == 0 || v20 != a2[9].i64[1])
  {
    v26[0] = v27;
    v26[1] = v28;
    v26[2] = v29;
    v26[3] = v30;
    (*(*v11 + 416))(v11, v20, v26);
    v19 = &v27;
  }

  v21 = v19[1];
  v31 = *v19;
  v32 = v21;
  v14 = v19[2];
  v15 = v19[3];
LABEL_20:
  v33 = v14;
  v34 = v15;
  v22 = v32;
  a2[12] = v31;
  a2[13] = v22;
  result = *v33.i64;
  v24 = v34;
  a2[14] = v33;
  a2[15] = v24;
  v25 = a2[8].i64[0];
  a2[9].i64[0] = a4;
  a2[9].i64[1] = v25;
  return result;
}

BOOL re::ecs2::AudioSessionComponentStateImpl::processUpdatingComponents(re::ProfilerConfig *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a3 + 8);
  if (!v5)
  {
    return 0;
  }

  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(a1);
  if (isStatisticCollectionEnabled)
  {
    v10 = re::profilerThreadContext(isStatisticCollectionEnabled);
    v11 = re::ecs2::SceneComponentTable::get((v5 + 200), re::ecs2::ComponentImpl<re::ecs2::AudioSessionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v12 = v11 ? *(v11 + 384) : 0;
    v14 = *(v10 + 152);
    if (v14)
    {
      v15 = v14[1152].u64[0];
      if (v15 >= v12)
      {
        v15 = v12;
      }

      v14[1152].i64[0] = v15;
      v16 = v14[1152].u64[1];
      if (v16 <= v12)
      {
        v16 = v12;
      }

      v14[1152].i64[1] = v16;
      v17 = vdupq_n_s64(1uLL);
      v17.i64[0] = v12;
      v14[1153] = vaddq_s64(v14[1153], v17);
      *(v10 + 184) = 0;
    }
  }

  re::ecs2::SceneComponentTable::get((v5 + 200), re::ecs2::ComponentImpl<re::ecs2::AudioSessionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v33, 3115, a1);
  v18 = *(*(v5 + 104) + 288) >> 1;
  v19 = *(a1 + 2);
  if (v19)
  {
    v20 = (*(*v19 + 16))(v19, v5);
  }

  else
  {
    v20 = 0;
  }

  v21 = (*(**(v5 + 56) + 32))(*(v5 + 56));
  v22 = re::ServiceLocator::service<re::TransformService>(v21);
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v30, a5, 0);
  v24 = v30;
  v23 = v31;
  v30 = a4;
  v31 = v24;
  v32 = v23;
  if (v24 != a5 || v23 != 0xFFFFFFFFLL)
  {
    do
    {
      v25 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v30);
      if (v25[4].i32[0])
      {
        v26 = v20 == 0;
      }

      else
      {
        v26 = 1;
      }

      if (!v26)
      {
        (*(*v20 + 792))(v20);
      }

      re::ecs2::AudioSessionComponentStateImpl::processUpdatingRootTransform(a1, v25, v22, v18);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v31);
    }

    while (v31 != a5 || v32 != 0xFFFF || HIWORD(v32) != 0xFFFF);
  }

  v13 = *(a5 + 40) != 0;
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v33);
  return v13;
}

void ___ZN2re4ecs218AudioSessionSystem48handleMediaServicesResetNonMacTargetAsyncWrapperEPNS0_5SceneE_block_invoke(re::audio *a1)
{
  v2 = *(a1 + 4);
  MediaserverdPID = re::audio::getMediaserverdPID(a1);
  v4 = *(v2 + 224);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN2re4ecs218AudioSessionSystem48handleMediaServicesResetNonMacTargetAsyncWrapperEPNS0_5SceneE_block_invoke_2;
  block[3] = &__block_descriptor_52_e5_v8__0l;
  v5 = *(a1 + 5);
  block[4] = v2;
  block[5] = v5;
  v7 = MediaserverdPID;
  dispatch_async(v4, block);
}

void ___ZN2re4ecs218AudioSessionSystem48handleMediaServicesResetNonMacTargetAsyncWrapperEPNS0_5SceneE_block_invoke_2(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(v1 + 528);
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v3 ^ (v3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v3 ^ (v3 >> 30))) >> 27));
    v5 = *(*(v1 + 512) + 4 * ((v4 ^ (v4 >> 31)) % v2));
    if (v5 != 0x7FFFFFFF)
    {
      v6 = *(v1 + 520);
      if (*(v6 + 24 * v5 + 16) == v3)
      {
LABEL_6:
        if (v3)
        {
          v7 = *(v1 + 232);
          if (v7)
          {
            v8 = *(a1 + 48);
            v9 = (*(*v7 + 16))(v7, v3);
            if (v9)
            {
              v10 = v9;
              v11 = re::ecs2::SceneComponentTable::get((v3 + 200), re::ecs2::ComponentImpl<re::ecs2::AudioSessionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
              if (v11 && (v12 = *(v11 + 384)) != 0)
              {
                v13 = *(v11 + 400);
                v14 = 8 * v12;
                while (1)
                {
                  v15 = *v13;
                  v16 = *(*v13 + 16);
                  if (!v16)
                  {
                    break;
                  }

                  v17 = *(v16 + 216);
                  if (v17 && (v18 = re::ecs2::NetworkComponent::owningProcessType(v17), v18) || (v18 = (*(*v10 + 568))(v10), (v18 & 1) != 0) || (v18 = [*(v15 + 72) opaqueSessionID], v18 == *(v15 + 64)))
                  {
                    v19 = *(v15 + 64);
                    v20 = *re::audioLogObjects(v18);
                    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);
                    if (v8 == v19 >> 12)
                    {
                      if (v21)
                      {
                        v23 = *(v15 + 64);
                        *buf = 67109376;
                        *v33 = v23;
                        *&v33[4] = 2048;
                        *&v33[6] = v15;
                        _os_log_debug_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_DEBUG, "[RE/ECS] [AudioSessionSystem] service reset callback, found updated AudioSessionID 0x%x for component %p", buf, 0x12u);
                      }
                    }

                    else
                    {
                      if (v21)
                      {
                        v28 = *(v15 + 72);
                        v29 = *(v15 + 64);
                        *buf = 134218496;
                        *v33 = v15;
                        *&v33[8] = 2048;
                        *&v33[10] = v28;
                        v34 = 1024;
                        v35 = v29;
                        v30 = v20;
                        _os_log_debug_impl(&dword_1E1C61000, v30, OS_LOG_TYPE_DEBUG, "[RE/ECS] [AudioSessionSystem] service reset callback, resetting audio session for component %p (session %p, sessionID 0x%x)", buf, 0x1Cu);
                      }

                      re::ecs2::AudioSessionComponent::clearStateFollowingMediaServicesCrash(v15, v22);
                    }
                  }

                  else
                  {
                    v24 = *(*v10 + 784);
                    v25 = *(v15 + 72);
                    *(v15 + 64) = v24(v10, v25);

                    v27 = *re::audioLogObjects(v26);
                    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
                    {
                      v31 = *(v15 + 64);
                      *buf = 67109376;
                      *v33 = v31;
                      *&v33[4] = 2048;
                      *&v33[6] = v15;
                      _os_log_debug_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_DEBUG, "[RE/ECS] [AudioSessionSystem] service reset callback, updated AudioSessionID 0x%x for component %p", buf, 0x12u);
                    }

                    re::ecs2::Component::markDirty(v15);
                  }

                  ++v13;
                  v14 -= 8;
                  if (!v14)
                  {
                    goto LABEL_27;
                  }
                }
              }

              else
              {
LABEL_27:
                (*(*v10 + 88))(v10, 2, *(*(v3 + 104) + 288) >> 1, 1);
              }
            }
          }
        }
      }

      else
      {
        while (1)
        {
          LODWORD(v5) = *(v6 + 24 * v5 + 8) & 0x7FFFFFFF;
          if (v5 == 0x7FFFFFFF)
          {
            break;
          }

          if (*(v6 + 24 * v5 + 16) == v3)
          {
            goto LABEL_6;
          }
        }
      }
    }
  }
}

_anonymous_namespace_ *re::ecs2::AudioSessionSystem::willAddSystemToECSService(_anonymous_namespace_ *this)
{
  v1 = *(this + 5);
  if (v1)
  {
    v2 = this;
    v3 = (*(*v1 + 32))(*(this + 5));
    v4 = re::ServiceLocator::serviceOrNull<re::Engine>(v3);
    if (v4)
    {
      re::ObjCObject::operator=(v2 + 28, v4 + 55);
    }

    v5 = (*(*v1 + 32))(v1);
    this = re::ServiceLocator::serviceOrNull<re::AudioSceneService>(v5);
    *(v2 + 29) = this;
    *(v2 + 32) = this;
  }

  return this;
}

uint64_t re::ecs2::AudioSessionSystem::willRemoveSystemFromECSService(uint64_t this)
{
  *(this + 232) = 0;
  *(this + 256) = 0;
  return this;
}

uint64_t re::ecs2::AudioSessionSystem::willAddSceneToECSService(uint64_t this, re::ecs2::Scene *a2)
{
  v69[11] = *MEMORY[0x1E69E9840];
  v51 = a2;
  if (!a2)
  {
    return this;
  }

  v2 = a2;
  v3 = this;
  v4 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::AudioSessionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  *&v53 = v3;
  *(&v53 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::AudioSessionComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioSessionSystem::willRemoveComponents,re::ecs2::AudioSessionSystem>;
  *&v54 = 0;
  *(&v54 + 1) = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AudioSessionComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AudioSessionComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AudioSessionComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
  re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v4 + 272), &v53);
  v52[0] = v2;
  v5 = *(v3 + 392);
  v6 = *(v3 + 400);
  if (v5 >= 0xB)
  {
    if (v6)
    {
      v7 = (v3 + 408);
    }

    else
    {
      v7 = *(v3 + 416);
    }

    v9 = 8 * v5;
    while (!*v7)
    {
      ++v7;
      v9 -= 8;
      if (!v9)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_17;
  }

  if (v6)
  {
    v8 = (v3 + 408);
    if (!v5)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v8 = *(v3 + 416);
    if (!v5)
    {
      goto LABEL_18;
    }
  }

  v10 = 0;
  v11 = 8 * v5;
  do
  {
    v12 = *v8++;
    v10 |= v12;
    v11 -= 8;
  }

  while (v11);
  if (v10)
  {
LABEL_17:
    *&v53 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(v3 + 384, 0);
    v13 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](v3 + 264, v53);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent>::init(v13, v3 + 264, v2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((v3 + 320), v52, &v53);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(v3 + 384, v53);
    v14 = v53;
    goto LABEL_50;
  }

LABEL_18:
  v60 = 0u;
  v56 = 0u;
  v57 = 0u;
  v53 = 0u;
  *&v54 = 0;
  v55 = 0u;
  *(&v54 + 1) = -1;
  *&v57 = 0;
  DWORD2(v57) = 1;
  v58 = 0;
  v59 = 0;
  v15 = *(v3 + 304);
  *&v60 = 0;
  v16 = *(v3 + 272);
  DWORD2(v60) = 0;
  if (v15 + 1 > 4 * v16)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent>,4ul>::setBucketsCapacity((v3 + 264), (v15 + 4) >> 2);
    v16 = *(v3 + 272);
  }

  if (v16 <= v15 >> 2)
  {
    v52[1] = 0;
    memset(v69, 0, 80);
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v61 = 136315906;
    v62 = "operator[]";
    v63 = 1024;
    v64 = 858;
    v65 = 2048;
    v66 = v15 >> 2;
    v67 = 2048;
    v68 = v16;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_65;
  }

  if (*(v3 + 280))
  {
    v17 = v3 + 288;
  }

  else
  {
    v17 = *(v3 + 296);
  }

  v18 = *(v17 + 8 * (v15 >> 2));
  ++*(v3 + 304);
  ++*(v3 + 312);
  v19 = v18 + 112 * (v15 & 3);
  v20 = v53;
  v21 = v54;
  v22 = v55;
  *(v19 + 48) = v56;
  *(v19 + 16) = v21;
  *(v19 + 32) = v22;
  *v19 = v20;
  re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v19 + 56, &v56 + 8);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v53);
  v24 = *(v3 + 304);
  if (!v24)
  {
LABEL_65:
    re::internal::assertLog(4, v23, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  v25 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](v3 + 264, v24 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent>::init(v25, v3 + 264, v52[0]);
  v69[0] = *(v3 + 304) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((v3 + 320), v52, v69);
  v26 = *(v3 + 304);
  v27 = *(v3 + 424);
  if ((v26 & 0x3F) != 0)
  {
    v28 = (v26 >> 6) + 1;
  }

  else
  {
    v28 = v26 >> 6;
  }

  *(v3 + 424) = v26;
  *&v53 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((v3 + 384), v28, &v53);
  if (v26 && v27 > v26)
  {
    v29 = 63;
    v30 = *(v3 + 424) & 0x3FLL;
    if (v30 && v30 != 63)
    {
      v29 = ~(-1 << v30);
    }

    if (*(v3 + 400))
    {
      v31 = v3 + 408;
    }

    else
    {
      v31 = *(v3 + 416);
    }

    *(v31 + 8 * *(v3 + 392) - 8) &= v29;
  }

  v32 = *(v3 + 304);
  v33 = *(v3 + 472);
  if ((v32 & 0x3F) != 0)
  {
    v34 = (v32 >> 6) + 1;
  }

  else
  {
    v34 = v32 >> 6;
  }

  *(v3 + 472) = v32;
  *&v53 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((v3 + 432), v34, &v53);
  if (v32 && v33 > v32)
  {
    v35 = 63;
    v36 = *(v3 + 472) & 0x3FLL;
    if (v36 && v36 != 63)
    {
      v35 = ~(-1 << v36);
    }

    if (*(v3 + 448))
    {
      v37 = v3 + 456;
    }

    else
    {
      v37 = *(v3 + 464);
    }

    *(v37 + 8 * *(v3 + 440) - 8) &= v35;
  }

  v14 = v69[0];
LABEL_50:
  re::DynamicBitset<unsigned long long,64ul>::setBit(v3 + 432, v14);
  if (*(v3 + 496) == 1)
  {
    v38 = *(v3 + 480);
    v39 = *(v52[0] + 376);
    LOWORD(v53) = 257;
    DWORD1(v53) = 1023969417;
    BYTE8(v53) = 0;
    re::ecs2::System::setTaskOptions(v38, v39, &v53);
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v3 + 264);
  }

  v40 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v2 ^ (v2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v2 ^ (v2 >> 30))) >> 27));
  v41 = v40 ^ (v40 >> 31);
  v42 = *(v3 + 528);
  if (v42)
  {
    v43 = v41 % v42;
    v44 = *(*(v3 + 512) + 4 * (v41 % v42));
    if (v44 != 0x7FFFFFFF)
    {
      v45 = *(v3 + 520);
      if (*(v45 + 24 * v44 + 16) == v2)
      {
        goto LABEL_60;
      }

      while (1)
      {
        LODWORD(v44) = *(v45 + 24 * v44 + 8) & 0x7FFFFFFF;
        if (v44 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v45 + 24 * v44 + 16) == v2)
        {
          goto LABEL_60;
        }
      }
    }
  }

  else
  {
    LODWORD(v43) = 0;
  }

  re::HashSetBase<re::ecs2::Scene *,re::ecs2::Scene *,re::internal::ValueAsKey<re::ecs2::Scene *>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::addAsCopy(v3 + 504, v43, v41, &v51, &v51);
  ++*(v3 + 544);
  v2 = v51;
LABEL_60:
  this = *(v3 + 232);
  if (this)
  {
    v46 = *(*(v2 + 104) + 288);
    this = (*(*this + 16))(this, v2);
    if (this)
    {
      v47 = this;
      v48 = v46 >> 1;
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = ___ZN2re4ecs218AudioSessionSystem24willAddSceneToECSServiceEPNS0_5SceneE_block_invoke;
      v50[3] = &__block_descriptor_48_e5_v8__0l;
      v50[4] = v3;
      v50[5] = v51;
      (*(*this + 32))(this, 773, v48, v50);
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = ___ZN2re4ecs218AudioSessionSystem24willAddSceneToECSServiceEPNS0_5SceneE_block_invoke_2;
      v49[3] = &__block_descriptor_48_e5_v8__0l;
      v49[4] = v3;
      v49[5] = v51;
      return (*(*v47 + 32))(v47, 517, v48, v49);
    }
  }

  return this;
}

void ___ZN2re4ecs218AudioSessionSystem24willAddSceneToECSServiceEPNS0_5SceneE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 232);
    if (v3)
    {
      if ((*(*v3 + 16))(v3, v1))
      {
        v4 = dispatch_get_global_queue(33, 0);
        v5[0] = MEMORY[0x1E69E9820];
        v5[1] = 3221225472;
        v5[2] = ___ZN2re4ecs218AudioSessionSystem48handleMediaServicesResetNonMacTargetAsyncWrapperEPNS0_5SceneE_block_invoke;
        v5[3] = &__block_descriptor_48_e5_v8__0l;
        v5[4] = v2;
        v5[5] = v1;
        dispatch_async(v4, v5);
      }
    }
  }
}

void **___ZN2re4ecs218AudioSessionSystem24willAddSceneToECSServiceEPNS0_5SceneE_block_invoke_2(void **result)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = result[5];
  if (v1)
  {
    result = *(result[4] + 29);
    if (result)
    {
      result = (*(*result + 2))(result, v1);
      if (result)
      {
        result = re::ecs2::SceneComponentTable::get((v1 + 200), re::ecs2::ComponentImpl<re::ecs2::AudioSessionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (result)
        {
          v2 = result[48];
          if (v2)
          {
            v3 = result[50];
            v4 = 8 * v2;
            do
            {
              v5 = *v3;
              if (*(*v3 + 72) || *(v5 + 64))
              {
                v6 = *re::audioLogObjects(result);
                if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
                {
                  v8 = *(v5 + 72);
                  v9 = *(v5 + 64);
                  *buf = 134218496;
                  v12 = v5;
                  v13 = 2048;
                  v14 = v8;
                  v15 = 1024;
                  v16 = v9;
                  v10 = v6;
                  _os_log_debug_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEBUG, "[RE/ECS] [AudioSessionSystem] service lost callback, resetting audio session for component %p (session %p, sessionID 0x%x)", buf, 0x1Cu);
                }

                result = re::ecs2::AudioSessionComponent::clearStateFollowingMediaServicesCrash(v5, v7);
              }

              v3 += 8;
              v4 -= 8;
            }

            while (v4);
          }
        }
      }
    }
  }

  return result;
}

void *re::ecs2::AudioSessionSystem::willRemoveSceneFromECSService(void *this, re::ecs2::Scene *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v19 = a2;
  if (a2)
  {
    v3 = this;
    v4 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::AudioSessionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    *&v20 = v3;
    *(&v20 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::AudioSessionComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioSessionSystem::willRemoveComponents,re::ecs2::AudioSessionSystem>;
    v21 = 0;
    v22 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AudioSessionComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AudioSessionComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AudioSessionComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v4 + 272, &v20);
    *&v20 = a2;
    v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v3 + 40, &v20);
    if (v5 != -1)
    {
      v6 = v3[41] + 16 * v5;
      re::DynamicBitset<unsigned long long,64ul>::setBit((v3 + 48), *(v6 + 8));
      re::DynamicBitset<unsigned long long,64ul>::clearBit((v3 + 54), *(v6 + 8));
      v7 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[]((v3 + 33), *(v6 + 8));
      if (*v7)
      {
        v8 = v7;
        *v7 = 0;
        v9 = v7 + 1;
        v10 = *(v7[1] + 288);
        if (v10)
        {
          v11 = v7[12];
          if (v11)
          {
            for (i = 0; i != v11; ++i)
            {
              v13 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v8 + 7), i);
              re::EventBus::unsubscribe(v10, *v13, *(v13 + 8));
            }
          }
        }

        re::BucketArray<RESubscriptionHandle,8ul>::deinit((v8 + 7));
        v14 = 0;
        v15 = v8 + 3;
        do
        {
          v16 = v8[2];
          if (*v16)
          {
            re::ecs2::ComponentBucketsBase::removeBucket(v16, v15[v14]);
          }

          v15[v14++] = -1;
        }

        while (v14 != 4);
        *v9 = 0;
        v9[1] = 0;
      }

      re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove((v3 + 40), &v20);
    }

    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove((v3 + 63), &v19);
    this = v3[29];
    if (this)
    {
      this = (*(*this + 16))(this, v19);
      if (this)
      {
        v17 = this;
        v18 = *(*(v19 + 13) + 288) >> 1;
        (*(*this + 40))(this, 773, v18);
        return (*(*v17 + 40))(v17, 773, v18);
      }
    }
  }

  return this;
}

uint64_t re::ecs2::AudioSessionSystem::update(uint64_t result, uint64_t a2, uint64_t a3)
{
  v31[0] = a2;
  v31[1] = a3;
  if (*(result + 40))
  {
    v4 = result;
    re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v30);
    re::StackScratchAllocator::StackScratchAllocator(v43);
    v39 = 1;
    v40 = 0;
    v41 = 0;
    v37 = v43;
    v38 = 0;
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(&v37, 0);
    v39 += 2;
    v5 = v4[59];
    if ((v5 & 0x3F) != 0)
    {
      v6 = (v5 >> 6) + 1;
    }

    else
    {
      v6 = v5 >> 6;
    }

    v42 = v4[59];
    v32[0] = 0;
    re::DynamicOverflowArray<unsigned long long,2ul>::resize(&v37, v6, v32);
    v7 = *(a3 + 200);
    if (v7)
    {
      v8 = *(a3 + 216);
      v9 = 8 * v7;
      do
      {
        v10 = *v8++;
        v32[0] = v10;
        v11 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 40, v32);
        re::DynamicBitset<unsigned long long,64ul>::setBit(&v37, *(v4[41] + 16 * v11 + 8));
        v9 -= 8;
      }

      while (v9);
    }

    re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v37, (v4 + 54));
    v33 = 1;
    v34 = 0;
    v35 = 0;
    v32[0] = v43;
    v32[1] = 0;
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v32, 0);
    v33 += 2;
    v12 = v4[59];
    if ((v12 & 0x3F) != 0)
    {
      v13 = (v12 >> 6) + 1;
    }

    else
    {
      v13 = v12 >> 6;
    }

    v36 = v4[59];
    v44 = 0;
    re::DynamicOverflowArray<unsigned long long,2ul>::resize(v32, v13, &v44);
    re::DynamicBitset<unsigned long long,64ul>::subtractBitSet((v4 + 54), &v37);
    v14 = v41;
    if (v39)
    {
      v14 = &v40;
    }

    v15 = v38;
    if ((v38 & 0x3FFFFFFFFFFFFFFLL) != 0)
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
          goto LABEL_31;
        }
      }

      v19 = __clz(__rbit64(v17));
      if (v19 + 1 != v16)
      {
        FirstBitSet = v19 - v16;
        do
        {
          v21 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[]((v4 + 33), FirstBitSet);
          v22 = *(*v21 + 224);
          v23 = v21[3];
          v24 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v23);
          if (*(v24 + 40))
          {
            v25 = (*(*v22 + 24))(v22, v31, v21, v23, v24, 0);
          }

          else
          {
            v25 = 0;
          }

          v26 = v21[5];
          v27 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v26);
          if (*(v27 + 40))
          {
            v25 |= (*(*v22 + 32))(v22, v31, v21, v26, v27, 0);
          }

          v28 = v21[6];
          v29 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v28);
          if (*(v29 + 40))
          {
            if (((v25 | (*(*v22 + 40))(v22, v31, v21, v28, v29, 0)) & 1) == 0)
            {
              goto LABEL_29;
            }
          }

          else if (!v25)
          {
LABEL_29:
            re::DynamicBitset<unsigned long long,64ul>::clearBit(v32, FirstBitSet);
            goto LABEL_30;
          }

          re::DynamicBitset<unsigned long long,64ul>::setBit(v32, FirstBitSet);
LABEL_30:
          FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v37, FirstBitSet + 1);
        }

        while (FirstBitSet != -1);
      }
    }

LABEL_31:
    re::DynamicBitset<unsigned long long,64ul>::orWithBitSet((v4 + 54), v32);
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate((v4 + 33));
    if (v32[0] && (v33 & 1) == 0)
    {
      (*(*v32[0] + 40))();
    }

    if (v37)
    {
      if ((v39 & 1) == 0)
      {
        (*(*v37 + 40))();
      }
    }

    re::StackScratchAllocator::~StackScratchAllocator(v43);
    return re::ProfilerTimeGuard<(re::ProfilerStatistic)120>::end(v30);
  }

  return result;
}

void re::ecs2::AudioSessionSystem::~AudioSessionSystem(re::ecs2::AudioSessionSystem *this)
{
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 63);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 33);

  re::ecs2::System::~System(this);
}

{
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 63);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 33);

  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

unint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::AudioSessionComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioSessionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
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

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent>::setComponentState(a2, v11, v7);
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<re::internal::overloaded<re::ecs2::AudioSessionComponentStateImpl::processPreparingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent> *,re::ecs2::ComponentBuckets<re::ecs2::AudioSessionComponent>::BucketIteration,void *)::$_0,re::ecs2::AudioSessionComponentStateImpl::processPreparingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent> *,re::ecs2::ComponentBuckets<re::ecs2::AudioSessionComponent>::BucketIteration,void *)::$_1,re::ecs2::AudioSessionComponentStateImpl::processPreparingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent> *,re::ecs2::ComponentBuckets<re::ecs2::AudioSessionComponent>::BucketIteration,void *)::$_2,re::ecs2::AudioSessionComponentStateImpl::processPreparingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent> *,re::ecs2::ComponentBuckets<re::ecs2::AudioSessionComponent>::BucketIteration,void *)::$_3>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::audiosession_state::InvalidSessionID,std::__variant_detail::_Trait::RetrievingSession,std::__variant_detail::_Trait::SessionUnavailable,std::__variant_detail::_Trait::SessionAvailable> &>(uint64_t *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v3 = *(*a1 + 56);
  v2 = *(*a1 + 64);
  v4 = *v3;
  v5 = *v2;
  v6 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle((v2 + 8));
  v7 = re::ecs2::ComponentBucketsBase::moveComponent(*(v4 + 16), v5, v6, *(v4 + 32));
  v8 = *re::audioLogObjects(v7);
  result = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    v10 = **(v1 + 72);
    v11 = *(v10 + 16);
    v12 = v8;
    re::ecs2::Entity::debugDescription(v11, &v14);
    if (v15)
    {
      v13 = *&v16[7];
    }

    else
    {
      v13 = v16;
    }

    *buf = 134349314;
    v18 = v10;
    v19 = 2082;
    v20 = v13;
    _os_log_debug_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEBUG, "[RE/ECS] [processPreparingComponents] invalid session ID. Setting state to 'inactive' for AudioSessionComponent %{public}p on entity %{public}s", buf, 0x16u);

    result = v14;
    if (v14)
    {
      if (v15)
      {
        return (*(*v14 + 40))();
      }
    }
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<re::internal::overloaded<re::ecs2::AudioSessionComponentStateImpl::processPreparingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent> *,re::ecs2::ComponentBuckets<re::ecs2::AudioSessionComponent>::BucketIteration,void *)::$_0,re::ecs2::AudioSessionComponentStateImpl::processPreparingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent> *,re::ecs2::ComponentBuckets<re::ecs2::AudioSessionComponent>::BucketIteration,void *)::$_1,re::ecs2::AudioSessionComponentStateImpl::processPreparingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent> *,re::ecs2::ComponentBuckets<re::ecs2::AudioSessionComponent>::BucketIteration,void *)::$_2,re::ecs2::AudioSessionComponentStateImpl::processPreparingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent> *,re::ecs2::ComponentBuckets<re::ecs2::AudioSessionComponent>::BucketIteration,void *)::$_3>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::audiosession_state::InvalidSessionID,std::__variant_detail::_Trait::RetrievingSession,std::__variant_detail::_Trait::SessionUnavailable,std::__variant_detail::_Trait::SessionAvailable> &>(re *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v2 = *re::audioLogObjects(a1);
  result = os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    v4 = **(v1 + 24);
    v5 = *(v4 + 64);
    v6 = *(v4 + 16);
    v7 = v2;
    re::ecs2::Entity::debugDescription(v6, &v9);
    if (v10)
    {
      v8 = *&v11[7];
    }

    else
    {
      v8 = v11;
    }

    *buf = 134349826;
    v13 = v4;
    v14 = 1026;
    v15 = v5;
    v16 = 1026;
    v17 = v5;
    v18 = 2080;
    v19 = v8;
    _os_log_debug_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEBUG, "[RE/ECS] [processPreparingComponents] keeping state 'prepare' for AudioSessionComponent %{public}p audioSessionID(%{public}u, 0x%{public}x) on entity {public}%s", buf, 0x22u);

    result = v9;
    if (v9)
    {
      if (v10)
      {
        return (*(*v9 + 40))();
      }
    }
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<re::internal::overloaded<re::ecs2::AudioSessionComponentStateImpl::processPreparingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent> *,re::ecs2::ComponentBuckets<re::ecs2::AudioSessionComponent>::BucketIteration,void *)::$_0,re::ecs2::AudioSessionComponentStateImpl::processPreparingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent> *,re::ecs2::ComponentBuckets<re::ecs2::AudioSessionComponent>::BucketIteration,void *)::$_1,re::ecs2::AudioSessionComponentStateImpl::processPreparingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent> *,re::ecs2::ComponentBuckets<re::ecs2::AudioSessionComponent>::BucketIteration,void *)::$_2,re::ecs2::AudioSessionComponentStateImpl::processPreparingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent> *,re::ecs2::ComponentBuckets<re::ecs2::AudioSessionComponent>::BucketIteration,void *)::$_3>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::audiosession_state::InvalidSessionID,std::__variant_detail::_Trait::RetrievingSession,std::__variant_detail::_Trait::SessionUnavailable,std::__variant_detail::_Trait::SessionAvailable> &>(uint64_t *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v3 = *(*a1 + 32);
  v2 = *(*a1 + 40);
  v4 = *v3;
  v5 = *v2;
  v6 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle((v2 + 8));
  v7 = re::ecs2::ComponentBucketsBase::moveComponent(*(v4 + 16), v5, v6, *(v4 + 32));
  v8 = *re::audioLogObjects(v7);
  result = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    v10 = **(v1 + 48);
    v11 = *(v10 + 64);
    v12 = *(v10 + 16);
    v13 = v8;
    re::ecs2::Entity::debugDescription(v12, &v15);
    if (v16)
    {
      v14 = *&v17[7];
    }

    else
    {
      v14 = v17;
    }

    *buf = 134349826;
    v19 = v10;
    v20 = 1026;
    v21 = v11;
    v22 = 1026;
    v23 = v11;
    v24 = 2082;
    v25 = v14;
    _os_log_debug_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEBUG, "[RE/ECS] [processPreparingComponents] session not available. Setting state to 'inactive' for AudioSessionComponent %{public}p audioSessionID(%{public}u, 0x%{public}x) on entity %{public}s", buf, 0x22u);

    result = v15;
    if (v15)
    {
      if (v16)
      {
        return (*(*v15 + 40))();
      }
    }
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<re::internal::overloaded<re::ecs2::AudioSessionComponentStateImpl::processPreparingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent> *,re::ecs2::ComponentBuckets<re::ecs2::AudioSessionComponent>::BucketIteration,void *)::$_0,re::ecs2::AudioSessionComponentStateImpl::processPreparingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent> *,re::ecs2::ComponentBuckets<re::ecs2::AudioSessionComponent>::BucketIteration,void *)::$_1,re::ecs2::AudioSessionComponentStateImpl::processPreparingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent> *,re::ecs2::ComponentBuckets<re::ecs2::AudioSessionComponent>::BucketIteration,void *)::$_2,re::ecs2::AudioSessionComponentStateImpl::processPreparingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent> *,re::ecs2::ComponentBuckets<re::ecs2::AudioSessionComponent>::BucketIteration,void *)::$_3>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::audiosession_state::InvalidSessionID,std::__variant_detail::_Trait::RetrievingSession,std::__variant_detail::_Trait::SessionUnavailable,std::__variant_detail::_Trait::SessionAvailable> &>(uint64_t ***a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v3 = **a1;
  v2 = (*a1)[1];
  v4 = *v3;
  v5 = *v2;
  v6 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(v2 + 4);
  v7 = re::ecs2::ComponentBucketsBase::moveComponent(*(v4 + 16), v5, v6, *(v4 + 48));
  v8 = *re::audioLogObjects(v7);
  result = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    v10 = *v1[2];
    v11 = *(v10 + 64);
    v12 = *(v10 + 16);
    v13 = v8;
    re::ecs2::Entity::debugDescription(v12, &v15);
    if (v16)
    {
      v14 = *&v17[7];
    }

    else
    {
      v14 = v17;
    }

    *buf = 134349826;
    v19 = v10;
    v20 = 1026;
    v21 = v11;
    v22 = 1026;
    v23 = v11;
    v24 = 2082;
    v25 = v14;
    _os_log_debug_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEBUG, "[RE/ECS] [processPreparingComponents] setting state to 'updating' for AudioSessionComponent %{public}p audioSessionID(%{public}u, 0x%{public}x) on entity %{public}s", buf, 0x22u);

    result = v15;
    if (v15)
    {
      if (v16)
      {
        return (*(*v15 + 40))();
      }
    }
  }

  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2re18audiosession_state16InvalidSessionIDENS9_17RetrievingSessionENS9_18SessionUnavailableENS9_16SessionAvailableEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISE_LNS0_6_TraitE1EEEEEvOT_EUlRSK_OT0_E_JRNS0_6__baseILSI_1EJSA_SB_SC_SD_EEEOSS_EEEDcSK_DpT0_(uint64_t result)
{
  v1 = *result;
  v2 = *(*result + 8);
  if (v2 != -1)
  {
    if (!v2)
    {
      return result;
    }

    result = (off_1F5CF9F40[v2])(&v3, v1);
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2re18audiosession_state16InvalidSessionIDENS9_17RetrievingSessionENS9_18SessionUnavailableENS9_16SessionAvailableEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISE_LNS0_6_TraitE1EEEEEvOT_EUlRSK_OT0_E_JRNS0_6__baseILSI_1EJSA_SB_SC_SD_EEEOSS_EEEDcSK_DpT0_(uint64_t result)
{
  v1 = *result;
  v2 = *(*result + 8);
  if (v2 != -1)
  {
    if (v2 == 1)
    {
      return result;
    }

    result = (off_1F5CF9F40[v2])(&v3, v1);
  }

  *(v1 + 8) = 1;
  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2ELm2EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2re18audiosession_state16InvalidSessionIDENS9_17RetrievingSessionENS9_18SessionUnavailableENS9_16SessionAvailableEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISE_LNS0_6_TraitE1EEEEEvOT_EUlRSK_OT0_E_JRNS0_6__baseILSI_1EJSA_SB_SC_SD_EEEOSS_EEEDcSK_DpT0_(uint64_t result)
{
  v1 = *result;
  v2 = *(*result + 8);
  if (v2 != -1)
  {
    if (v2 == 2)
    {
      return result;
    }

    result = (off_1F5CF9F40[v2])(&v3, v1);
  }

  *(v1 + 8) = 2;
  return result;
}

void std::__variant_detail::__assignment<std::__variant_detail::__traits<re::audiosession_state::InvalidSessionID,re::audiosession_state::RetrievingSession,re::audiosession_state::SessionUnavailable,re::audiosession_state::SessionAvailable>>::__assign_alt[abi:nn200100]<3ul,re::audiosession_state::SessionAvailable,re::audiosession_state::SessionAvailable>(uint64_t a1, void **a2, void **a3)
{
  v5 = *(a1 + 8);
  if (v5 == -1)
  {
    goto LABEL_7;
  }

  if (v5 != 3)
  {
    (off_1F5CF9F40[v5])(&v9, a1);
LABEL_7:
    v8 = *a3;
    *a3 = 0;
    *a1 = v8;
    *(a1 + 8) = 3;
    return;
  }

  v6 = *a3;
  *a3 = 0;
  v7 = *a2;
  *a2 = v6;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs221AudioSessionComponentELNS_17RealityKitReleaseE6EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

re::ecs2::AudioSessionSystem *re::ecs2::AudioSessionSystem::AudioSessionSystem(re::ecs2::AudioSessionSystem *this)
{
  *re::ecs2::System::System(this, 1, 1) = &unk_1F5CF9E68;
  v2 = MEMORY[0x1E69E96A0];
  v3 = MEMORY[0x1E69E96A0];
  *(this + 28) = v2;
  *(this + 29) = 0;
  *(this + 30) = &unk_1F5CF9E28;
  *(this + 31) = this;
  *(this + 33) = 0;
  *(this + 34) = 0;
  *(this + 32) = 0;
  *(this + 70) = 1;
  *(this + 37) = 0;
  *(this + 38) = 0;
  *(this + 36) = 0;
  *(this + 78) = 0;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 100) = 1;
  *(this + 55) = 0;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 112) = 1;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 481) = 0u;
  v6 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 48, 0);
  *(this + 100) += 2;
  *(this + 53) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 54, 0);
  *(this + 112) += 2;
  *(this + 59) = 0;
  *(this + 60) = this;
  *(this + 61) = this + 240;
  *(this + 496) = 1;
  *(this + 504) = 0u;
  *(this + 520) = 0u;
  *(this + 134) = 0;
  *(this + 540) = 0x7FFFFFFFLL;
  return this;
}

uint64_t re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent>,4ul>::setBucketsCapacity(void *result, unint64_t a2)
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

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::AudioSessionComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioSessionSystem::willRemoveComponents,re::ecs2::AudioSessionSystem>(uint64_t a1, const re::ecs2::Entity *a2, re::ecs2::AudioSessionComponent **a3, uint64_t a4)
{
  if (a4)
  {
    v5 = 8 * a4;
    do
    {
      v6 = *a3++;
      re::ecs2::AudioSessionComponent::clearControllerObjects(v6, a2);
      v5 -= 8;
    }

    while (v5);
  }

  return 0;
}

uint64_t re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AudioSessionComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AudioSessionComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AudioSessionComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
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

uint64_t *re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::AudioSessionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) + 480;
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
    *v10 = &unk_1F5CF9FB0;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::AudioSessionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CFA008;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::AudioSessionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CFA060;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::AudioSessionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CFA0B8;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::AudioSessionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
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
        *v37 = &unk_1F5CF9FB0;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CFA008;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CFA060;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CFA0B8;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioSessionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioSessionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioSessionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioSessionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF9FB0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF9FB0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFA008;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFA008;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFA060;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFA060;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFA0B8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AudioSessionComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFA0B8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

void re::ecs2::snapshotMapFields<re::snapshot::DecoderRaw>(re::snapshot::DecoderRaw *a1, unint64_t a2)
{
  v4 = &unk_1EE187000;
  {
    v4 = &unk_1EE187000;
    if (v7)
    {
      re::introspect<re::ecs2::Component>(BOOL)::info = re::ecs2::introspect_Component(0);
      v4 = &unk_1EE187000;
    }
  }

  re::snapshot::introspected::read<re::snapshot::DecoderRaw>(a1, a2, v4[54]);
  re::snapshot::operator>><re::snapshot::DecoderRaw,re::SkeletalPose>(a1, (a2 + 56));
  re::snapshot::operator>><re::snapshot::DecoderRaw,re::DynamicArray<re::Matrix4x4<float>>>(a1, (a2 + 96));
  v5 = &unk_1EE187000;
  {
    v5 = &unk_1EE187000;
    if (v8)
    {
      re::introspect<re::AssetHandle>(BOOL)::info = re::introspect_AssetHandle(0, v9);
      v5 = &unk_1EE187000;
    }
  }

  v6 = v5[242];

  re::snapshot::introspected::read<re::snapshot::DecoderRaw>(a1, a2 + 32, v6);
}

BOOL re::ecs2::snapshotMapFields<re::snapshot::DecoderOPACK>(const char **a1, size_t a2)
{
  re::snapshot::DecoderOPACK::field<0,re::ecs2::Component>(a1, a2);
  re::snapshot::DecoderOPACK::field<1,re::DynamicArray<re::SkeletalPose>>(a1, (a2 + 56));
  re::snapshot::DecoderOPACK::field<2,re::DynamicArray<re::DynamicArray<re::Matrix4x4<float>>>>(a1, (a2 + 96));

  return re::snapshot::DecoderOPACK::field<3,re::AssetHandle>(a1, a2 + 32);
}

BOOL re::snapshot::DecoderOPACK::field<1,re::DynamicArray<re::SkeletalPose>>(const char **a1, void *a2)
{
  v4 = re::snapshot::DecoderOPACK::beginField<1>(a1);
  if (v4)
  {
    re::snapshot::operator>><re::snapshot::DecoderOPACK,re::SkeletalPose>(a1, a2);
    re::snapshot::DecoderOPACK::endField(a1);
  }

  return v4;
}

BOOL re::snapshot::DecoderOPACK::field<2,re::DynamicArray<re::DynamicArray<re::Matrix4x4<float>>>>(const char **a1, void *a2)
{
  v4 = re::snapshot::DecoderOPACK::beginField<2>(a1);
  if (v4)
  {
    re::snapshot::operator>><re::snapshot::DecoderOPACK,re::DynamicArray<re::Matrix4x4<float>>>(a1, a2);
    re::snapshot::DecoderOPACK::endField(a1);
  }

  return v4;
}

BOOL re::snapshot::DecoderOPACK::field<3,re::AssetHandle>(const char **a1, size_t a2)
{
  v4 = re::snapshot::DecoderOPACK::beginField<3>(a1);
  if (v4)
  {
    v5 = &unk_1EE187000;
    {
      v5 = &unk_1EE187000;
      if (v7)
      {
        re::introspect<re::AssetHandle>(BOOL)::info = re::introspect_AssetHandle(0, v8);
        v5 = &unk_1EE187000;
      }
    }

    re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(a1, a2, v5[242]);
    re::snapshot::DecoderOPACK::endField(a1);
  }

  return v4;
}

unint64_t re::ecs2::SkeletalPoseComponent::calculateRigMappingDataDepHash(uint64_t a1, void *a2)
{
  v2 = a2[24];
  if (v2 != a2[7])
  {
    v3 = a2[5];
    if (v3)
    {
      v4 = *(v3 + 792);
    }

    else
    {
      v4 = 0;
    }

    v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v3 ^ (v3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v3 ^ (v3 >> 30))) >> 27));
    v2 = v4 ^ (v5 >> 31) ^ v5;
  }

  if (*(*(a1 + 16) + 184))
  {
    v6 = 0xBF58476D1CE4E5B9;
  }

  else
  {
    v6 = 0;
  }

  v7 = ((v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9 + ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31))) ^ v2;
  v8 = *(a1 + 120) ^ (*(a1 + 120) >> 30);
  return (((0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v8) ^ ((0xBF58476D1CE4E5B9 * v8) >> 27))) ^ ((0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v8) ^ ((0xBF58476D1CE4E5B9 * v8) >> 27))) >> 31)) + (v7 << 6) + (v7 >> 2) - 0x61C8864680B583E9) ^ v7;
}

void *re::ecs2::SkeletalPoseComponent::ensureSkeletalPoseRigMappingDataUpToDate(void *this, const re::SkeletalPoseDefinitionAsset *a2, const re::MeshAsset *a3, const re::MeshNameMap *a4, const re::RigRuntimeData *a5, uint64_t a6)
{
  v27 = *MEMORY[0x1E69E9840];
  if (this[60] != a6)
  {
    v11 = this;
    if (re::DeformerFeatureFlags::isSkinningAssignLoggingEnabled(this))
    {
      v12 = v11[2];
      if (v12)
      {
        v13 = v11[2];
        do
        {
          v14 = v13;
          v13 = *(v13 + 32);
        }

        while (v13);
        v15 = *(v14 + 24);
        if (v15)
        {
          v16 = *(v15 + 56);
          if (v16)
          {
            v17 = (*(*v16 + 32))(v16);
            v18 = re::ServiceLocator::serviceOrNull<re::FrameManager>(v17);
            if (v18)
            {
              v19 = v18;
              v20 = *re::ecsComponentsLogObjects(v18);
              if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
              {
                v21 = *(v19 + 3) & 0xFFFFFFFFFFFFFFFLL;
                v22 = *(v12 + 296);
                v23 = 134218242;
                v24 = v21;
                v25 = 2080;
                v26 = v22;
                _os_log_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_INFO, "[DeformerLogging] Frame[%llu]: Updating Skeletal Pose Mesh Mapping for Entity - %s", &v23, 0x16u);
              }
            }
          }
        }
      }
    }

    return re::SkeletalPoseRigMappingData::rebuildMappingData<re::MeshAsset>((v11 + 59), a2, a5, a3, a4, a6);
  }

  return this;
}

unint64_t re::ecs2::SkeletalPoseComponent::skeletalPose(re::ecs2::SkeletalPoseComponent *this, unint64_t a2, int a3)
{
  if (*(this + 475) <= a2)
  {
    if (*(this + 9) <= a2)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    return *(this + 11) + 88 * a2;
  }

  else
  {
    v3 = (*(this + 476) + 48 * a2);
    if (a3)
    {

      return re::BindPoint::valueUntyped(v3);
    }

    else
    {

      return re::BindPoint::baseValueUntyped(v3);
    }
  }
}

double re::ecs2::SkeletalPoseComponent::constructPosesAndBindPoints(re::ecs2::SkeletalPoseComponent *this)
{
  v34 = *MEMORY[0x1E69E9840];
  if (*(this + 2))
  {
    v2 = *(this + 9);
    v3 = re::FixedArray<re::BindPoint>::deinit(this + 474);
    re::makeEntityBindNodeForComponent(this, v20);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    re::DynamicString::setCapacity(&v15, 0);
    if (v2)
    {
      v5 = 0;
      for (i = 0; i != v2; ++i)
      {
        re::DynamicString::assignf(&v15, "SkeletalPose.skeletalPoses[%zu]", i);
        v7 = v17;
        if ((v16 & 1) == 0)
        {
          v7 = &v16 + 1;
        }

        v8 = v16 >> 1;
        if (v16)
        {
          v8 = v16 >> 1;
        }

        v12[0] = v7;
        v12[1] = v8;
        {
          re::introspect<re::SkeletalPose>(BOOL)::info = re::introspect_SkeletalPose(0);
        }

        re::BindNode::bindPointWithOverride(v20, re::introspect<re::SkeletalPose>(BOOL)::info, v12, &v13);
        v9 = *(this + 475);
        if (v9 <= i)
        {
          v19 = 0;
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v29 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v21 = 136315906;
          v22 = "operator[]";
          v23 = 1024;
          v24 = 468;
          v25 = 2048;
          v26 = i;
          v27 = 2048;
          v28 = v9;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v10 = (*(this + 476) + v5);
        *v10 = v13;
        re::DynamicArray<re::RigDataValue>::operator=((v10 + 1), v14);
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(v14);
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(v14);
        v5 += 48;
      }
    }

    if (v15)
    {
      if (v16)
      {
        (*(*v15 + 40))();
      }
    }

    return re::BindNode::deinit(v20);
  }

  return result;
}

uint64_t re::ecs2::SkeletalPoseComponent::ensurePostUpdatePoses(re::ecs2::SkeletalPoseComponent *this, uint64_t a2)
{
  v113 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3816);
  if (!*(this + 3816))
  {
    return 0;
  }

  if (v2 == 1)
  {
    v4 = this;
    v5 = *(this + 2);
    if (v5)
    {
      v6 = re::ecs2::EntityComponentCollection::get((v5 + 48), re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseBufferComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      v7 = *(v5 + 192);
      v8 = !v6 || v7 == 0;
      if (!v8)
      {
        v9 = v6;
        result = re::AssetHandle::loadedAsset<re::MeshAsset>((v7 + 32));
        if (!result)
        {
          return result;
        }

        v10 = result;
        v11 = *(result + 584);
        v12 = *(result + 568);
        v13 = re::ecs2::EntityComponentCollection::get((v5 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (v13)
        {
          v11 = *(v13 + 26);
          v78 = *(v13 + 24);
        }

        else
        {
          v78 = v12;
        }

        v81 = v9[21];
        v14 = v9[19];
        v75 = v9[16];
        v77 = v9[14];
        re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v4 + 478, 0);
        *(v4 + 960) += 2;
        if ((v14 & 0x3F) != 0)
        {
          v15 = (v14 >> 6) + 1;
        }

        else
        {
          v15 = v14 >> 6;
        }

        *(v4 + 483) = v14;
        *&v101 = 0;
        re::DynamicOverflowArray<unsigned long long,2ul>::resize((v4 + 3824), v15, &v101);
        *(v4 + 486) = 0;
        ++*(v4 + 974);
        v71 = (v4 + 3872);
        re::DynamicArray<re::RigNodeConstraint>::setCapacity(v4 + 484, v14);
        re::DynamicArray<re::SkeletalPose>::clear((v4 + 3912));
        v16 = re::DynamicArray<re::SkeletalPose>::setCapacity(v4 + 489, v14);
        v84 = 0;
        v82 = 0u;
        v83 = 0u;
        v85 = 0x7FFFFFFFLL;
        v80 = v14;
        if (!v14)
        {
LABEL_86:
          *(v4 + 3816) = 2;
          re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::deinit(&v82);
          return 1;
        }

        v17 = 0;
        v76 = *(v10 + 79);
        while (1)
        {
          v18 = (v81 + 56 * v17);
          if (re::HashSetBase<unsigned int,unsigned int,re::internal::ValueAsKey<unsigned int>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::contains(&v82, v18 + 1))
          {
            goto LABEL_85;
          }

          v19 = v18[1];
          v20 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v19 ^ (v19 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v19 ^ (v19 >> 30))) >> 27));
          v21 = v20 ^ (v20 >> 31);
          if (!DWORD2(v83))
          {
            break;
          }

          v22 = v21 % DWORD2(v83);
          v23 = *(*(&v82 + 1) + 4 * v22);
          if (v23 == 0x7FFFFFFF)
          {
            goto LABEL_29;
          }

          while (*(v83 + 16 * v23 + 12) != v19)
          {
            v23 = *(v83 + 16 * v23 + 8) & 0x7FFFFFFF;
            if (v23 == 0x7FFFFFFF)
            {
              goto LABEL_29;
            }
          }

LABEL_30:
          v24 = *v18;
          if (v78 > v24)
          {
            if (*(v18 + 4))
            {
              v25 = v18[2] + v19;
              if (v77 >= v25)
              {
                v26 = WORD1(*(v11 + 8 * v24));
                v27 = v76[11];
                if (v27 <= v26)
                {
                  goto LABEL_93;
                }

                v28 = *(*(v76[13] + 16 * WORD1(*(v11 + 8 * v24))) + 144 * *(v11 + 8 * v24) + 16);
                v26 = WORD1(v28);
                v27 = v76[3];
                if (v27 <= WORD1(v28))
                {
LABEL_94:
                  v108.i64[0] = 0;
                  v104 = 0u;
                  v105 = 0u;
                  v102 = 0u;
                  v103 = 0u;
                  v101 = 0u;
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v97 = 136315906;
                  *&v97[4] = "operator[]";
                  *&v97[12] = 1024;
                  *&v97[14] = 797;
                  *&v97[18] = 2048;
                  *&v97[20] = v26;
                  *&v97[28] = 2048;
                  *&v97[30] = v27;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_95:
                  re::internal::assertLog(6, v41, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v27, v25);
                  _os_crash();
                  __break(1u);
LABEL_96:
                  *&v96 = 0;
                  v111 = 0u;
                  v112 = 0u;
                  v109 = 0u;
                  v110 = 0u;
                  v108 = 0u;
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v106 = 136315906;
                  *&v106[4] = "operator[]";
                  *&v106[12] = 1024;
                  *&v106[14] = 468;
                  *&v106[18] = 2048;
                  *&v106[20] = v27;
                  *&v106[28] = 2048;
                  *&v106[30] = v18;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_97:
                  re::internal::assertLog(6, v36, "assertion failure: '%s' (%s:line %i) Index out of range. fromInclusive = %zu, size = %zu", "fromInclusive < size()", "range", 661, v37, v77);
                  _os_crash();
                  __break(1u);
                }

                v29 = *(*(v76[5] + 16 * WORD1(v28)) + 864 * v28 + 224);
                if (v29 && *(v29 + 8) > **(v18 + 6))
                {
                  v30 = *(*(v29 + 16) + 88 * **(v18 + 6) + 4);
                }

                else
                {
                  v30 = 0xFFFFFFFFLL;
                }

                if (*(v10 + 156) > v30)
                {
                  v31 = re::MeshAsset::skeletonAtIndex(v10, v30);
                  v32 = v31[3];
                  if (v32 == v18[2])
                  {
                    v33 = v31;
                    *v97 = 0;
                    *&v97[8] = &str_67;
                    memset(&v97[16], 0, 48);
                    v98 = 0;
                    v99 = 0;
                    v100 = 0;
                    *&v101 = v31[4];
                    *(&v101 + 1) = v32;
                    v34 = re::globalAllocators(v31);
                    v35 = (*(*v34[2] + 32))(v34[2], 280, 8);
                    v108.i64[0] = v35;
                    re::SkeletalPose::init(v97, v108.i64);
                    if (v35)
                    {
                    }

                    v72 = v4;
                    v73 = v11;
                    v74 = v10;
                    v37 = v18[1];
                    if (v77 <= v37)
                    {
                      goto LABEL_97;
                    }

                    v79 = v75 + (v37 << 6);
                    v25 -= v37;
                    v39 = v33[6];
                    v38 = v33[7];
                    v18 = *&v97[24];
                    v26 = *&v97[32];
                    re::StackScratchAllocator::StackScratchAllocator(&v101);
                    v91 = 1;
                    v92 = 0;
                    v93 = 0;
                    v89 = &v101;
                    v90 = 0;
                    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(&v89, 0);
                    v91 += 2;
                    if ((v39 & 0x3F) != 0)
                    {
                      v40 = (v39 >> 6) + 1;
                    }

                    else
                    {
                      v40 = v39 >> 6;
                    }

                    v94 = v39;
                    v108.i64[0] = 0;
                    re::DynamicOverflowArray<unsigned long long,2ul>::resize(&v89, v40, &v108);
                    v86 = 0;
                    v87 = 0;
                    v88 = 0;
                    re::FixedArray<re::Matrix4x4<float>>::init<>(&v86, &v101, v39);
                    if (v39)
                    {
                      for (i = 0; i != v39; ++i)
                      {
                        v27 = *(v38 + 4 * i);
                        if (v39 <= v27)
                        {
                          if (v25 <= i)
                          {
                            re::internal::assertLog(6, v41, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, v25);
                            _os_crash();
                            __break(1u);
LABEL_88:
                            *&v96 = 0;
                            v111 = 0u;
                            v112 = 0u;
                            v109 = 0u;
                            v110 = 0u;
                            v108 = 0u;
                            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                            *v106 = 136315906;
                            *&v106[4] = "operator[]";
                            *&v106[12] = 1024;
                            *&v106[14] = 866;
                            *&v106[18] = 2048;
                            *&v106[20] = v25;
                            *&v106[28] = 2048;
                            *&v106[30] = v18;
                            _os_log_send_and_compose_impl();
                            _os_crash_msg();
                            __break(1u);
LABEL_89:
                            re::internal::assertLog(6, v41, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, i, v18);
                            _os_crash();
                            __break(1u);
LABEL_90:
                            *&v96 = 0;
                            v111 = 0u;
                            v112 = 0u;
                            v109 = 0u;
                            v110 = 0u;
                            v108 = 0u;
                            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                            *v106 = 136315906;
                            *&v106[4] = "operator[]";
                            *&v106[12] = 1024;
                            *&v106[14] = 468;
                            *&v106[18] = 2048;
                            *&v106[20] = v27;
                            *&v106[28] = 2048;
                            *&v106[30] = v18;
                            _os_log_send_and_compose_impl();
                            _os_crash_msg();
                            __break(1u);
LABEL_91:
                            re::internal::assertLog(6, v41, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, v25);
                            _os_crash();
                            __break(1u);
LABEL_92:
                            re::internal::assertLog(6, v41, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, i, v18);
                            _os_crash();
                            __break(1u);
LABEL_93:
                            v108.i64[0] = 0;
                            v104 = 0u;
                            v105 = 0u;
                            v102 = 0u;
                            v103 = 0u;
                            v101 = 0u;
                            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                            *v97 = 136315906;
                            *&v97[4] = "operator[]";
                            *&v97[12] = 1024;
                            *&v97[14] = 797;
                            *&v97[18] = 2048;
                            *&v97[20] = v26;
                            *&v97[28] = 2048;
                            *&v97[30] = v27;
                            _os_log_send_and_compose_impl();
                            _os_crash_msg();
                            __break(1u);
                            goto LABEL_94;
                          }

                          v108 = 0u;
                          *v106 = xmmword_1E30474D0;
                          v96 = 0u;
                          re::decomposeScaleRotationTranslation<float>(v79 + (i << 6), &v108, v106, &v96);
                          if (v18 <= i)
                          {
                            goto LABEL_89;
                          }

                          v57 = v108.i64[1];
                          v58 = v108.i64[0];
                          v59 = *&v106[8];
                          v60 = *v106;
                          v61 = *(&v96 + 1);
                          v62 = v96;
                        }

                        else
                        {
                          v43 = v18;
                          v44 = v25;
                          v25 = v27 >> 6;
                          v18 = v90;
                          if (v90 <= v27 >> 6)
                          {
                            goto LABEL_88;
                          }

                          v45 = v93;
                          if (v91)
                          {
                            v45 = &v92;
                          }

                          v46 = v45[v25] >> v27;
                          v25 = v44;
                          if ((v46 & 1) == 0)
                          {
                            if (v44 <= v27)
                            {
                              goto LABEL_95;
                            }

                            v114 = __invert_f4(*(v79 + (v27 << 6)));
                            v18 = v87;
                            if (v87 <= v27)
                            {
                              goto LABEL_96;
                            }

                            *(v88 + (v27 << 6)) = v114;
                            re::DynamicBitset<unsigned long long,64ul>::setBit(&v89, v27);
                          }

                          v18 = v87;
                          if (v87 <= v27)
                          {
                            goto LABEL_90;
                          }

                          if (v25 <= i)
                          {
                            goto LABEL_91;
                          }

                          v47 = 0;
                          v48 = (v88 + (v27 << 6));
                          v49 = *v48;
                          v50 = v48[1];
                          v51 = v48[2];
                          v52 = v48[3];
                          v53 = (v79 + (i << 6));
                          v54 = v53[1];
                          v55 = v53[2];
                          v56 = v53[3];
                          *v106 = *v53;
                          *&v106[16] = v54;
                          *&v106[32] = v55;
                          v107 = v56;
                          do
                          {
                            *(&v108 + v47) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v49, COERCE_FLOAT(*&v106[v47])), v50, *&v106[v47], 1), v51, *&v106[v47], 2), v52, *&v106[v47], 3);
                            v47 += 16;
                          }

                          while (v47 != 64);
                          *v106 = 0u;
                          v95 = 0u;
                          v96 = xmmword_1E30474D0;
                          re::decomposeScaleRotationTranslation<float>(&v108, v106, &v96, &v95);
                          v18 = v43;
                          if (v43 <= i)
                          {
                            goto LABEL_92;
                          }

                          v57 = *&v106[8];
                          v58 = *v106;
                          v59 = *(&v96 + 1);
                          v60 = v96;
                          v61 = *(&v95 + 1);
                          v62 = v95;
                        }

                        v63 = (v26 + 48 * i);
                        *v63 = v58;
                        v63[1] = v57;
                        v63[2] = v60;
                        v63[3] = v59;
                        v63[4] = v62;
                        v63[5] = v61;
                      }
                    }

                    if (v86 && v87)
                    {
                      (*(*v86 + 40))();
                    }

                    v11 = v73;
                    v10 = v74;
                    v4 = v72;
                    if (v89 && (v91 & 1) == 0)
                    {
                      (*(*v89 + 40))();
                    }

                    re::StackScratchAllocator::~StackScratchAllocator(&v101);
                    v64 = *(v72 + 486);
                    v65 = *(v72 + 485);
                    if (v64 >= v65)
                    {
                      v66 = v64 + 1;
                      if (v65 < v64 + 1)
                      {
                        if (*v71)
                        {
                          v67 = 2 * v65;
                          v8 = v65 == 0;
                          v68 = 8;
                          if (!v8)
                          {
                            v68 = v67;
                          }

                          if (v68 <= v66)
                          {
                            v69 = v66;
                          }

                          else
                          {
                            v69 = v68;
                          }

                          re::DynamicArray<re::RigNodeConstraint>::setCapacity(v71, v69);
                        }

                        else
                        {
                          re::DynamicArray<re::RigNodeConstraint>::setCapacity(v71, v66);
                          ++*(v72 + 974);
                        }
                      }

                      v64 = *(v72 + 486);
                    }

                    v70 = (*(v72 + 488) + 16 * v64);
                    *v70 = v79;
                    v70[1] = v25;
                    ++*(v72 + 486);
                    ++*(v72 + 974);
                    re::DynamicArray<re::SkeletalPose>::add((v72 + 3912), v97);
                    re::SkeletalPose::~SkeletalPose(v97);
                  }
                }
              }
            }
          }

LABEL_85:
          if (++v17 == v80)
          {
            goto LABEL_86;
          }
        }

        LODWORD(v22) = 0;
LABEL_29:
        re::HashSetBase<unsigned int,unsigned int,re::internal::ValueAsKey<unsigned int>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::addAsCopy(&v82, v22, v21, (v18 + 1), v18 + 1);
        ++HIDWORD(v85);
        LODWORD(v19) = v18[1];
        goto LABEL_30;
      }
    }

    return 0;
  }

  if (v2 == 2)
  {
    return 1;
  }

  re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Unexpected post update pose state: %u", "!Unreachable code", "ensurePostUpdatePoses", 132, *(this + 3816));
  result = _os_crash();
  __break(1u);
  return result;
}

re::SkeletalPose *re::DynamicArray<re::SkeletalPose>::clear(re::SkeletalPose *result)
{
  v1 = result;
  v2 = *(result + 2);
  *(result + 2) = 0;
  if (v2)
  {
    result = *(result + 4);
    v3 = 88 * v2;
    do
    {
      re::SkeletalPose::~SkeletalPose(result);
      result = (v4 + 88);
      v3 -= 88;
    }

    while (v3);
  }

  ++*(v1 + 6);
  return result;
}

BOOL re::HashSetBase<unsigned int,unsigned int,re::internal::ValueAsKey<unsigned int>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::contains(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v3 ^ (v3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v3 ^ (v3 >> 30))) >> 27));
  v5 = *(*(a1 + 8) + 4 * ((v4 ^ (v4 >> 31)) % v2));
  if (v5 == 0x7FFFFFFF)
  {
    return 0;
  }

  v7 = *(a1 + 16);
  if (*(v7 + 16 * v5 + 12) == v3)
  {
    return 1;
  }

  do
  {
    v5 = *(v7 + 16 * v5 + 8) & 0x7FFFFFFF;
    result = v5 != 0x7FFFFFFF;
  }

  while (v5 != 0x7FFFFFFF && *(v7 + 16 * v5 + 12) != v3);
  return result;
}

void **re::ecs2::SkeletalPoseComponent::calculateSkeletalPoseBufferWithRig(re::ecs2::SkeletalPoseComponent *this, re::ecs2::MeshComponent *a2, re::ecs2::RigComponent *a3, re::ecs2::SkeletalPoseBufferComponent *a4)
{
  v23[4] = *MEMORY[0x1E69E9840];
  v22 = re::ecs2::SkeletalPoseComponent::calculateRigMappingDataDepHash(this, a3);
  v8 = re::AssetHandle::blockUntilLoaded<re::MeshAsset>((a2 + 32));
  v9 = re::ecs2::EntityComponentCollection::get((*(this + 2) + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v9)
  {
    v10 = (v9 + 216);
  }

  else
  {
    v10 = (v8 + 640);
  }

  v11 = re::ecs2::SkeletalPoseComponent::skeletalPoseDefinitionAsset(this, a2, &v22);
  v12 = (*(v10 + 1) + (v22 << 6) + (v22 >> 2) - 0x61C8864680B583E9) ^ v22;
  v13 = 0xBF58476D1CE4E5B9 * (*(a4 + 16) ^ (*(a4 + 16) >> 30));
  v14 = (v12 << 6) + (v12 >> 2) - 0x61C8864680B583E9;
  v15 = (((0x94D049BB133111EBLL * (v13 ^ (v13 >> 27))) ^ ((0x94D049BB133111EBLL * (v13 ^ (v13 >> 27))) >> 31)) + v14) ^ v12;
  v16 = re::ecs2::SkeletalPoseComponent::ensureSkeletalPoseRigMappingDataUpToDate(this, v11, v8, v10, (a3 + 184), v12);
  if (*(this + 94) != v15)
  {
    re::ecs2::SkeletalPoseComponent::constructPosesAndBindPoints(this);
  }

  if (*(this + 60) != v12)
  {
    re::SkeletalPoseRigMappingData::rebuildMappingData<re::MeshAsset>((this + 472), v11, a3 + 184, v8, v10, v12);
  }

  re::ecs2::SkeletalPoseBufferComponent::initializeBufferRanges(a4, v8, v10, (this + 472));
  v17 = 0xBF58476D1CE4E5B9 * (*(a4 + 16) ^ (*(a4 + 16) >> 30));
  v18 = (((0x94D049BB133111EBLL * (v17 ^ (v17 >> 27))) ^ ((0x94D049BB133111EBLL * (v17 ^ (v17 >> 27))) >> 31)) + v14) ^ v12;
  if (*(this + 94) == v18)
  {
    re::SkeletalPoseRuntimeData::executeEvaluationTree(this + 736);
  }

  else
  {
    re::makeBindNode(*(this + 2), v23);
    v19 = *(this + 475);
    v21[0] = *(this + 476);
    v21[1] = v19;
    re::SkeletalPoseRuntimeData::update<re::MeshAsset>((this + 736), v11, (a3 + 184), v8, v10, (this + 472), v18, v21, *(a4 + 16), *(a4 + 14), this + 96, v23);
    re::BindNode::deinit(v23);
  }

  return re::ecs2::Component::markDirty(a4);
}

uint64_t re::ecs2::SkeletalPoseComponent::skeletalPoseDefinitionAsset(re::ecs2::SkeletalPoseComponent *this, const re::ecs2::MeshComponent *a2, unint64_t *a3)
{
  v6 = re::AssetHandle::loadedAsset<re::SkeletalPoseDefinitionAsset>((this + 32));
  if (v6)
  {
    v7 = v6;
    v8 = *(a2 + 5);
    if (v8)
    {
      v9 = *(v8 + 792);
    }

    else
    {
      v9 = 0;
    }

    v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) >> 27));
    v13 = v9 ^ (v12 >> 31) ^ v12;
    v14 = *(this + 5);
    if (v14)
    {
      v15 = *(v14 + 792);
    }

    else
    {
      v15 = 0;
    }

    v16 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v14 ^ (v14 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v14 ^ (v14 >> 30))) >> 27));
    *a3 ^= (*a3 << 6) - 0x61C8864680B583E9 + (*a3 >> 2) + (((v13 << 6) - 0x61C8864680B583E9 + (v13 >> 2) + (v15 ^ (v16 >> 31) ^ v16)) ^ v13);
    if (*(this + 17))
    {
      *(this + 17) = 0;
      re::SkeletalPoseDefinitionAsset::deinit((this + 152));
    }
  }

  else
  {
    if (*(this + 5))
    {
      re::AssetHandle::loadAsync((this + 32));
    }

    v10 = *(a2 + 5);
    if (v10)
    {
      v11 = *(v10 + 792);
    }

    else
    {
      v11 = 0;
    }

    v17 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) >> 27));
    v18 = v11 ^ (v17 >> 31) ^ v17;
    if (v18 != *(this + 17))
    {
      *(this + 17) = v18;
      re::SkeletalPoseDefinitionAsset::deinit((this + 152));
      v19 = re::AssetHandle::blockUntilLoaded<re::MeshAsset>((a2 + 32));
      re::SkeletalPoseDefinitionAsset::init((this + 152), v19, 0);
      v18 = *(this + 17);
    }

    *a3 ^= v18 - 0x61C8864680B583E9 + (*a3 << 6) + (*a3 >> 2);
    return this + 152;
  }

  return v7;
}

uint64_t (***re::ecs2::SkeletalPoseSystem::willAddSceneToECSService(re::ecs2::SkeletalPoseSystem *this, re::EventBus **a2))(void)
{
  v22 = *MEMORY[0x1E69E9840];
  v18 = a2;
  result = re::ecs2::BasicComponentStates<re::ecs2::SkeletalPoseComponent>::addScene(this + 272, a2);
  v5 = a2[36];
  if (v5)
  {
    v17 = 0;
    v14 = 0u;
    v15 = 1uLL;
    v16 = 0uLL;
    v6 = re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,4ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::add(this + 224, &v18, &v14);
    re::BucketArray<RESubscriptionHandle,4ul>::deinit(&v14);
    v7 = v14;
    if (v14)
    {
      if ((v15 & 1) == 0)
      {
        v7 = (*(*v14 + 40))();
      }
    }

    v20 = re::globalAllocators(v8)[2];
    v9 = (*(*v20 + 32))(v20, 32, 0);
    *v9 = &unk_1F5CFA2F0;
    v9[1] = this;
    v9[2] = re::ecs2::SkeletalPoseSystem::removedSkeletalPoseBufferHandler;
    v9[3] = 0;
    v21 = v9;
    v10 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillRemoveEvent>(v5, v19, re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseBufferComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v12 = v11;
    v13 = re::BucketArray<RESubscriptionHandle,4ul>::addUninitialized(v6);
    *v13 = v10;
    v13[1] = v12;
    return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::destroyCallable(v19);
  }

  return result;
}

unint64_t re::ecs2::BasicComponentStates<re::ecs2::SkeletalPoseComponent>::addScene(unint64_t a1, uint64_t a2)
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
    re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseComponent>::init(v12, a1, a2);
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
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseComponent>,4ul>::setBucketsCapacity(a1, (v14 + 4) >> 2);
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
  re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseComponent>::init(v24, a1, v48[0]);
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

uint64_t re::ecs2::SkeletalPoseSystem::removedSkeletalPoseBufferHandler(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  do
  {
    v5 = v4;
    v4 = *(v4 + 32);
  }

  while (v4);
  v17 = *(v5 + 24);
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 328), &v17);
  if (v6 != -1)
  {
    v7 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 272, *(*(a1 + 336) + 16 * v6 + 8));
    v8 = *(a2 + 248);
    if (v8)
    {
      v9 = v7;
      v10 = 24;
      v11 = 0xFFFFFFFFLL;
      do
      {
        v12 = re::ecs2::ComponentBucketsBase::componentHandle(*(v9 + 16), *(v9 + v10), v8);
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
      re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseComponent>::setComponentState(v9, v15, v11);
    }
  }

  return 0;
}

uint64_t re::ecs2::SkeletalPoseSystem::willRemoveSceneFromECSService(re::ecs2::SkeletalPoseSystem *this, re::ecs2::Scene *a2)
{
  v10 = a2;
  v3 = re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(this + 224, &v10);
  if (v3)
  {
    v4 = *(v10 + 36);
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

    re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,4ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(this + 224, &v10);
  }

  return re::ecs2::BasicComponentStates<re::ecs2::MeshDeformationComponent>::removeScene(this + 272, v10);
}

BOOL re::ecs2::SkeletalPosePreparationStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v34, a5, 0);
  v8 = v34;
  v9 = v35;
  v10 = v35;
  v34 = a4;
  v35 = v8;
  v36 = v9;
  if (v8 != a5 || v10 != 0xFFFFFFFFLL)
  {
    do
    {
      v12 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v34);
      v13 = *(v12 + 16);
      if (v13)
      {
        v14 = v12;
        v15 = re::AssetHandle::loadedAsset<re::SkeletalPoseDefinitionAsset>((v12 + 32));
        if (v15)
        {
          v16 = v15;
          if (v14[17])
          {
            v14[17] = 0;
            re::SkeletalPoseDefinitionAsset::deinit((v14 + 19));
          }

          v17 = v34;
          v18 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v35);
          v19 = re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v17, v18, *(a3 + 32));
          goto LABEL_26;
        }

        re::AssetHandle::loadAsync((v14 + 4));
        v16 = *(v13 + 192);
        if (!v16)
        {
          goto LABEL_22;
        }

        v19 = re::AssetHandle::loadedAsset<re::MeshAsset>((v16 + 4));
        if (v19)
        {
          v22 = v19;
          v23 = v16[5];
          if (v23)
          {
            v24 = *(v23 + 792);
          }

          else
          {
            v24 = 0;
          }

          v27 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v23 ^ (v23 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v23 ^ (v23 >> 30))) >> 27));
          v28 = v24 ^ (v27 >> 31) ^ v27;
          if (v28 == v14[17])
          {
LABEL_20:
            v16 = 0;
          }

          else
          {
            v14[17] = v28;
            v16 = v14 + 19;
            re::SkeletalPoseDefinitionAsset::deinit((v14 + 19));
            re::SkeletalPoseDefinitionAsset::init((v14 + 19), v22, 0);
          }

LABEL_22:
          v29 = v14[5];
          if (!v29 || (v30 = atomic_load((v29 + 896)), v30 != 1))
          {
            v31 = v34;
            v32 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v35);
            v19 = re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v31, v32, *(a3 + 32));
          }

          if (!v16)
          {
            goto LABEL_28;
          }

LABEL_26:
          if (v14[18] != v16)
          {
            v14[18] = v16;
          }

          goto LABEL_28;
        }

        re::AssetHandle::loadAsync((v16 + 4));
        v25 = v16[5];
        if (!v25)
        {
          goto LABEL_20;
        }

        v26 = atomic_load((v25 + 896));
        if (v26 != 1)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v20 = v34;
        v21 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v35);
        re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v20, v21, *(a3 + 32));
      }

LABEL_28:
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v35);
    }

    while (v35 != a5 || v36 != 0xFFFF || HIWORD(v36) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
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

uint64_t re::ecs2::SkeletalPosePreparationSystem::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = a2;
  v6[1] = a3;
  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v5);
  re::ecs2::BasicComponentStates<re::ecs2::SkeletalPoseComponent>::update((a1 + 224), v6);
  return re::ProfilerTimeGuard<(re::ProfilerStatistic)125>::end(v5);
}

void re::ecs2::BasicComponentStates<re::ecs2::SkeletalPoseComponent>::update(void *a1, uint64_t a2)
{
  re::StackScratchAllocator::StackScratchAllocator(v41);
  v37 = 1;
  v38 = 0;
  v39 = 0;
  v35 = v41;
  v36 = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(&v35, 0);
  v37 += 2;
  v4 = a1[26];
  if ((v4 & 0x3F) != 0)
  {
    v5 = (v4 >> 6) + 1;
  }

  else
  {
    v5 = v4 >> 6;
  }

  v40 = a1[26];
  v30[0] = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(&v35, v5, v30);
  v6 = *(a2 + 8);
  v7 = *(v6 + 200);
  if (v7)
  {
    v8 = *(v6 + 216);
    v9 = 8 * v7;
    do
    {
      v10 = *v8++;
      v30[0] = v10;
      v11 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 7, v30);
      re::DynamicBitset<unsigned long long,64ul>::setBit(&v35, *(a1[8] + 16 * v11 + 8));
      v9 -= 8;
    }

    while (v9);
  }

  re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v35, (a1 + 21));
  v31 = 1;
  v32 = 0;
  v33 = 0;
  v30[0] = v41;
  v30[1] = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v30, 0);
  v31 += 2;
  v12 = a1[26];
  if ((v12 & 0x3F) != 0)
  {
    v13 = (v12 >> 6) + 1;
  }

  else
  {
    v13 = v12 >> 6;
  }

  v34 = a1[26];
  v42 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(v30, v13, &v42);
  re::DynamicBitset<unsigned long long,64ul>::subtractBitSet((a1 + 21), &v35);
  v14 = v39;
  if (v37)
  {
    v14 = &v38;
  }

  v15 = v36;
  if ((v36 & 0x3FFFFFFFFFFFFFFLL) != 0)
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
        v21 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1, FirstBitSet);
        v22 = *(*v21 + 224);
        v23 = v21[3];
        v24 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v23);
        if (*(v24 + 40))
        {
          v25 = (*(*v22 + 24))(v22, a2, v21, v23, v24, 0);
        }

        else
        {
          v25 = 0;
        }

        v26 = v21[5];
        v27 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v26);
        if (*(v27 + 40))
        {
          v25 |= (*(*v22 + 32))(v22, a2, v21, v26, v27, 0);
        }

        v28 = v21[6];
        v29 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v28);
        if (*(v29 + 40))
        {
          if (((v25 | (*(*v22 + 40))(v22, a2, v21, v28, v29, 0)) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        else if (!v25)
        {
LABEL_28:
          re::DynamicBitset<unsigned long long,64ul>::clearBit(v30, FirstBitSet);
          goto LABEL_29;
        }

        re::DynamicBitset<unsigned long long,64ul>::setBit(v30, FirstBitSet);
LABEL_29:
        FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v35, FirstBitSet + 1);
      }

      while (FirstBitSet != -1);
    }
  }

LABEL_30:
  re::DynamicBitset<unsigned long long,64ul>::orWithBitSet((a1 + 21), v30);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1);
  if (v30[0] && (v31 & 1) == 0)
  {
    (*(*v30[0] + 40))();
  }

  if (v35 && (v37 & 1) == 0)
  {
    (*(*v35 + 40))();
  }

  re::StackScratchAllocator::~StackScratchAllocator(v41);
}

BOOL re::ecs2::SkeletalPoseComponentStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v23, a5, 0);
  v8 = v23;
  v9 = v24;
  v10 = v24;
  v23 = a4;
  v24 = v8;
  v25 = v9;
  if (v8 != a5 || v10 != 0xFFFFFFFFLL)
  {
    do
    {
      v12 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v23);
      v13 = *(v12 + 2);
      v14 = (a3 + 32);
      if (v13)
      {
        v14 = (a3 + 32);
        if (*(v13 + 304))
        {
          if (*(v12 + 475) != *(v12 + 9))
          {
            re::ecs2::SkeletalPoseComponent::constructPosesAndBindPoints(v12);
          }

          v15 = *(v13 + 192);
          v16 = re::ecs2::EntityComponentCollection::get((v13 + 48), re::ecs2::ComponentImpl<re::ecs2::RigComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          v14 = (a3 + 32);
          if (v15)
          {
            if (v16)
            {
              v17 = *(v15 + 40) == 0;
            }

            else
            {
              v17 = 1;
            }

            if (v17)
            {
              v14 = (a3 + 32);
            }

            else
            {
              v14 = (a3 + 40);
            }
          }
        }
      }

      v18 = v23;
      v19 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v24);
      re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v18, v19, *v14);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v24);
    }

    while (v24 != a5 || v25 != 0xFFFF || HIWORD(v25) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

BOOL re::ecs2::SkeletalPoseComponentStateImpl::processPreparingComponents(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v129 = *MEMORY[0x1E69E9840];
  v8 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v122, a5, 0);
  v9 = v122;
  v10 = DWORD2(v122);
  *&v122 = a4;
  *(&v122 + 1) = v9;
  v123.i32[0] = DWORD2(v9);
  if (v9 == a5 && v10 == 0xFFFFFFFFLL)
  {
    v121 = 0;
  }

  else
  {
    v121 = 0;
    do
    {
      v12 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v122);
      v13 = *(v12 + 16);
      v14 = v13[24];
      v15 = v14[5];
      if (v15 && (v16 = atomic_load((v15 + 896)), v16 == 2))
      {
        v17 = v12;
        v18 = re::ecs2::EntityComponentCollection::get((v13 + 6), re::ecs2::ComponentImpl<re::ecs2::RigComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        v19 = re::ecs2::EntityComponentCollection::getOrAdd((v13 + 6), re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseBufferComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        re::ecs2::SkeletalPoseComponent::calculateSkeletalPoseBufferWithRig(v17, v14, v18, v19);
        v20 = v13[27];
        if (v20)
        {
          re::ecs2::NetworkComponent::markDirty(v20, v19);
        }

        v121 += *(v17 + 91);
        v21 = *(v17 + 5);
        if (!v21 || (v22 = atomic_load((v21 + 896)), v22 != 1))
        {
          v23 = v122;
          v24 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v122 + 4);
          re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v23, v24, *(a3 + 48));
        }
      }

      else
      {
        re::AssetHandle::loadAsync((v14 + 4));
      }

      v8 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v122 + 4);
    }

    while (*(&v122 + 1) != a5 || v123.u16[0] != 0xFFFF || v123.u16[1] != 0xFFFF);
  }

  v27 = *(a3 + 8);
  v28 = v27[36];
  if (v28)
  {
    updated = re::EventBus::subscriptionCountInternal<re::ecs2::Scene,REAnimationSkeletalPoseUpdateCompleteEvent>(v27[36], v27);
    v8 = re::EventBus::subscriptionCountInternal<re::ecs2::Scene,REAnimationSkeletalPoseUpdateCompleteEvent>(v28, 0);
    if ((v8 + updated))
    {
      v30 = re::ecs2::SceneComponentTable::get((v27 + 25), re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      if (v30)
      {
        v31 = *(v30 + 384);
        if (v31)
        {
          v32 = *(v30 + 400);
          v33 = 8 * v31;
          do
          {
            v34 = *v32++;
            *(v34 + 3816) = 1;
            v33 -= 8;
          }

          while (v33);
        }
      }

      LODWORD(v122) = *a2;
      Type = re::EventBus::getTypeId<REAnimationSkeletalPoseUpdateCompleteEvent>();
      re::EventBus::publish(v28, v27, Type, &v122, 4uLL, 0);
      v8 = re::ecs2::SceneComponentTable::get((v27 + 25), re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      if (v8)
      {
        v36 = *(v8 + 48);
        if (v36)
        {
          v37 = *(v8 + 50);
          v120 = &v37[v36];
          do
          {
            v38 = *v37;
            if (*(*v37 + 3816) == 2)
            {
              v39 = re::ecs2::EntityComponentCollection::get((*(v38 + 16) + 48), re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseBufferComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
              if (v39)
              {
                v40 = v39;
                FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(v38 + 3824, 0);
                if (FirstBitSet != -1)
                {
                  for (i = FirstBitSet; i != -1; i = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(v38 + 3824, i + 1))
                  {
                    v44 = *(v38 + 3888);
                    if (v44 <= i)
                    {
                      goto LABEL_68;
                    }

                    v45 = (*(v38 + 3904) + 16 * i);
                    v47 = *v45;
                    v46 = v45[1];
                    v48 = *(v40 + 128);
                    if (v47 >= v48 && v47 + (v46 << 6) <= v48 + (*(v40 + 112) << 6))
                    {
                      v44 = *(v38 + 3928);
                      if (v44 <= i)
                      {
                        goto LABEL_69;
                      }

                      v50 = (*(v38 + 3944) + 88 * i);
                      if (v46 == v50[3])
                      {
                        v51 = v50[10];
                        v52 = *(v51 + 72);
                        if (v52)
                        {
                          v53 = 0;
                          v54 = *(v51 + 80);
                          v55 = v50[4];
                          do
                          {
                            v56 = *(v54 + 4 * v53);
                            if (v52 <= v56)
                            {
                              if (v46 <= v53)
                              {
                                re::internal::assertLog(6, v42, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v53, v46);
                                _os_crash();
                                __break(1u);
LABEL_66:
                                re::internal::assertLog(6, v42, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v56, v46);
                                _os_crash();
                                __break(1u);
LABEL_67:
                                re::internal::assertLog(6, v42, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v53, v46);
                                _os_crash();
                                __break(1u);
LABEL_68:
                                v125 = 0u;
                                v126 = 0u;
                                v123 = 0u;
                                v124 = 0u;
                                v122 = 0u;
                                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                                *v127 = 136315906;
                                *&v127[4] = "operator[]";
                                *&v127[12] = 1024;
                                *&v127[14] = 789;
                                *&v127[18] = 2048;
                                *&v127[20] = i;
                                *&v127[28] = 2048;
                                *&v127[30] = v44;
                                _os_log_send_and_compose_impl();
                                _os_crash_msg();
                                __break(1u);
LABEL_69:
                                v125 = 0u;
                                v126 = 0u;
                                v123 = 0u;
                                v124 = 0u;
                                v122 = 0u;
                                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                                *v127 = 136315906;
                                *&v127[4] = "operator[]";
                                *&v127[12] = 1024;
                                *&v127[14] = 789;
                                *&v127[18] = 2048;
                                *&v127[20] = i;
                                *&v127[28] = 2048;
                                *&v127[30] = v44;
                                _os_log_send_and_compose_impl();
                                _os_crash_msg();
                                __break(1u);
                              }

                              v91 = (v55 + 48 * v53);
                              v89 = v91[2];
                              v89.i32[3] = 1.0;
                              v92 = v91[1].f32[0];
                              v93 = v91[1].f32[1];
                              v94 = v92 + v92;
                              v95 = v91[1].f32[2];
                              v96 = v91[1].f32[3];
                              v97 = (v92 + v92) * v95;
                              v98 = (v93 + v93) * v96;
                              v99 = v95 * (v93 + v93);
                              v100 = (v92 + v92) * v96;
                              v101 = v92 * (v92 + v92);
                              v102 = v93 * (v93 + v93);
                              v103.i32[3] = 0;
                              v103.f32[0] = v97 + v98;
                              v103.f32[1] = v99 - v100;
                              v103.f32[2] = 1.0 - (v101 + v102);
                              v104 = v94 * v93;
                              v105 = (v95 + v95) * v96;
                              v106 = v95 * (v95 + v95);
                              *&v107 = v99 + v100;
                              v108.f32[0] = v104 - v105;
                              v108.f32[1] = 1.0 - (v101 + v106);
                              v108.i64[1] = v107;
                              v109 = v104 + v105;
                              v110.i32[3] = 0;
                              v110.f32[0] = 1.0 - (v106 + v102);
                              v110.f32[1] = v109;
                              v110.f32[2] = v97 - v98;
                              v90 = vmulq_laneq_f32(v103, *v91, 2);
                              v87 = vmulq_n_f32(v110, COERCE_FLOAT(*v91));
                              v88 = vmulq_n_f32(v108, COERCE_FLOAT(HIDWORD(v91->i64[0])));
                            }

                            else
                            {
                              if (v46 <= v56)
                              {
                                goto LABEL_66;
                              }

                              if (v46 <= v53)
                              {
                                goto LABEL_67;
                              }

                              v57 = 0;
                              v58 = (v55 + 48 * v53);
                              v59 = v58[1].f32[0];
                              v60 = v58[1].f32[1];
                              v61 = v59 + v59;
                              v62 = v60 + v60;
                              v63 = v58[1].f32[2];
                              v64 = v58[1].f32[3];
                              v65 = v63 + v63;
                              v66 = v59 * (v59 + v59);
                              v67 = v60 * (v60 + v60);
                              v68 = v63 * (v63 + v63);
                              v69 = v61 * v60;
                              v70 = v61 * v63;
                              v71 = v62 * v63;
                              v72 = v62 * v64;
                              v73 = v65 * v64;
                              v74.i32[3] = 0;
                              v74.f32[0] = 1.0 - (v67 + v68);
                              v74.f32[1] = v69 + v73;
                              v74.f32[2] = v70 - v72;
                              v75 = v61 * v64;
                              v76 = 1.0 - (v66 + v68);
                              v77.i32[3] = 0;
                              v77.f32[0] = v69 - v73;
                              v77.f32[1] = v76;
                              v77.f32[2] = v71 + v75;
                              v78 = (v47 + (v56 << 6));
                              v79.i32[3] = 0;
                              v79.f32[0] = v70 + v72;
                              v79.f32[1] = v71 - v75;
                              v79.f32[2] = 1.0 - (v66 + v67);
                              v80 = vmulq_laneq_f32(v79, *v58, 2);
                              v81 = v58[2];
                              v81.i32[3] = 1.0;
                              v82 = *v78;
                              v83 = v78[1];
                              v84 = v78[2];
                              v85 = v78[3];
                              v86 = vmulq_n_f32(v77, COERCE_FLOAT(HIDWORD(v58->i64[0])));
                              *v127 = vmulq_n_f32(v74, COERCE_FLOAT(*v58));
                              *&v127[16] = v86;
                              *&v127[32] = v80;
                              v128 = v81;
                              do
                              {
                                *(&v122 + v57) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v82, COERCE_FLOAT(*&v127[v57])), v83, *&v127[v57], 1), v84, *&v127[v57], 2), v85, *&v127[v57], 3);
                                v57 += 16;
                              }

                              while (v57 != 64);
                              v87 = v122;
                              v88 = v123;
                              v90 = v124;
                              v89 = v125;
                            }

                            v111 = (v47 + (v53 << 6));
                            *v111 = v87;
                            v111[1] = v88;
                            v111[2] = v90;
                            v111[3] = v89;
                            ++v53;
                          }

                          while (v53 != v52);
                        }
                      }
                    }
                  }
                }
              }
            }

            re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v38 + 3824);
            *(v38 + 3864) = 0;
            *(v38 + 3888) = 0;
            ++*(v38 + 3896);
            v8 = re::DynamicArray<re::SkeletalPose>::clear((v38 + 3912));
            *(v38 + 3816) = 0;
            ++v37;
          }

          while (v37 != v120);
        }
      }
    }
  }

  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v8);
  if (isStatisticCollectionEnabled)
  {
    v113 = re::profilerThreadContext(isStatisticCollectionEnabled);
    v114 = *(v113 + 152);
    if (v114)
    {
      v115 = v114[944].u64[0];
      if (v115 >= v121)
      {
        v115 = v121;
      }

      v114[944].i64[0] = v115;
      v116 = v114[944].u64[1];
      if (v116 <= v121)
      {
        v116 = v121;
      }

      v114[944].i64[1] = v116;
      v117 = vdupq_n_s64(1uLL);
      v117.i64[0] = v121;
      v114[945] = vaddq_s64(v114[945], v117);
      *(v113 + 184) = 0;
    }
  }

  return *(a5 + 40) != 0;
}

uint64_t re::ecs2::SkeletalPoseSystem::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[0] = a2;
  v19[1] = a3;
  v5 = re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v18);
  v6 = *(a3 + 200);
  if (v6)
  {
    v7 = 0;
    v8 = *(a3 + 216);
    v9 = 8 * v6;
    do
    {
      v5 = re::ecs2::SceneComponentTable::get((*v8 + 200), re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
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
      v14 = v13[872].u64[0];
      if (v14 >= v7)
      {
        v14 = v7;
      }

      v13[872].i64[0] = v14;
      v15 = v13[872].u64[1];
      if (v15 <= v7)
      {
        v15 = v7;
      }

      v13[872].i64[1] = v15;
      v16 = vdupq_n_s64(1uLL);
      v16.i64[0] = v7;
      v13[873] = vaddq_s64(v13[873], v16);
      *(v12 + 184) = 0;
    }
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  re::ecs2::BasicComponentStates<re::ecs2::SkeletalPoseComponent>::update((a1 + 272), v19);
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  return re::ProfilerTimeGuard<(re::ProfilerStatistic)125>::end(v18);
}

void *re::ecs2::allocInfo_SkeletalPoseComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B0C38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B0C38))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B0D18, "SkeletalPoseComponent");
    __cxa_guard_release(&qword_1EE1B0C38);
  }

  return &unk_1EE1B0D18;
}

void re::ecs2::initInfo_SkeletalPoseComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v18[0] = 0x1C1B51CD3B030266;
  v18[1] = "SkeletalPoseComponent";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE1B0C40, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B0C40);
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
      qword_1EE1B0C78 = v8;
      v9 = re::introspectionAllocator(v8);
      re::IntrospectionInfo<re::DynamicArray<re::SkeletalPose>>::get();
      v10 = (*(*v9 + 32))(v9, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "skeletalPoses";
      *(v10 + 16) = &qword_1EE1B0C98;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0x3800000001;
      *(v10 + 40) = 0;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE1B0C80 = v10;
      v11 = re::introspectionAllocator(v10);
      re::IntrospectionInfo<re::DynamicArray<re::DynamicArray<re::Matrix4x4<float>>>>::get();
      v12 = (*(*v11 + 32))(v11, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "modelSpaceTransforms";
      *(v12 + 16) = qword_1EE1B0CD8;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x6000000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1B0C88 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_AssetHandle(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "skeletalPoseDefinition";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x2000000003;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1B0C90 = v16;
      __cxa_guard_release(&qword_1EE1B0C40);
    }
  }

  *(this + 2) = 0xF7000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1B0C78;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::SkeletalPoseComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::SkeletalPoseComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::SkeletalPoseComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::SkeletalPoseComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs221SkeletalPoseComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v17 = v19;
}

void re::IntrospectionInfo<re::DynamicArray<re::SkeletalPose>>::get()
{
  if ((atomic_load_explicit(&qword_1EE1B0C68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B0C68))
  {
    re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1B0C98);
    qword_1EE1B0C98 = &unk_1F5CFA4A8;
    __cxa_guard_release(&qword_1EE1B0C68);
  }

  if ((_MergedGlobals_360 & 1) == 0)
  {
    v0 = re::introspect_SkeletalPose(1);
    if ((_MergedGlobals_360 & 1) == 0)
    {
      v1 = v0;
      _MergedGlobals_360 = 1;
      v2 = *(v0 + 24);
      ArcSharedObject::ArcSharedObject(&qword_1EE1B0C98, 0);
      qword_1EE1B0CA8 = 0x2800000003;
      dword_1EE1B0CB0 = v2;
      word_1EE1B0CB4 = 0;
      *&xmmword_1EE1B0CB8 = 0;
      *(&xmmword_1EE1B0CB8 + 1) = 0xFFFFFFFFLL;
      qword_1EE1B0CC8 = v1;
      unk_1EE1B0CD0 = 0;
      qword_1EE1B0C98 = &unk_1F5CFA4A8;
      re::IntrospectionRegistry::add(v3, v4);
      re::getPrettyTypeName(&qword_1EE1B0C98, &v12);
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
        re::TypeBuilder::setConstructor(&v12, re::TypeBuilderHelper::registerDynamicArray<re::SkeletalPose>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v12, re::TypeBuilderHelper::registerDynamicArray<re::SkeletalPose>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v12, 1);
        re::TypeBuilder::setListAccessors(&v12, re::TypeBuilderHelper::registerDynamicArray<re::SkeletalPose>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SkeletalPose>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v12, re::TypeBuilderHelper::registerDynamicArray<re::SkeletalPose>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v12, re::TypeBuilderHelper::registerDynamicArray<re::SkeletalPose>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SkeletalPose>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SkeletalPose>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v12, v7);
        re::StackScratchAllocator::~StackScratchAllocator(v15);
      }

      xmmword_1EE1B0CB8 = v8;
      if (v10)
      {
        if (v10)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::DynamicArray<re::Matrix4x4<float>>>>::get()
{
  if ((atomic_load_explicit(&qword_1EE1B0C70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B0C70))
  {
    re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(qword_1EE1B0CD8);
    qword_1EE1B0CD8[0] = &unk_1F5CFA540;
    __cxa_guard_release(&qword_1EE1B0C70);
  }

  if ((byte_1EE1B0C31 & 1) == 0)
  {
    v0 = re::IntrospectionInfo<re::DynamicArray<re::Matrix4x4<float>>>::get(1);
    if ((byte_1EE1B0C31 & 1) == 0)
    {
      v1 = v0;
      byte_1EE1B0C31 = 1;
      v2 = *(v0 + 6);
      ArcSharedObject::ArcSharedObject(qword_1EE1B0CD8, 0);
      unk_1EE1B0CE8 = 0x2800000003;
      unk_1EE1B0CF0 = v2;
      unk_1EE1B0CF4 = 0;
      *&xmmword_1EE1B0CF8 = 0;
      *(&xmmword_1EE1B0CF8 + 1) = 0xFFFFFFFFLL;
      unk_1EE1B0D08 = v1;
      unk_1EE1B0D10 = 0;
      qword_1EE1B0CD8[0] = &unk_1F5CFA540;
      re::IntrospectionRegistry::add(v3, v4);
      re::getPrettyTypeName(qword_1EE1B0CD8, &v12);
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

      v9 = *(v1 + 2);
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
        re::TypeBuilder::setConstructor(&v12, re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<re::Matrix4x4<float>>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v12, re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<re::Matrix4x4<float>>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v12, 1);
        re::TypeBuilder::setListAccessors(&v12, re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<re::Matrix4x4<float>>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<re::Matrix4x4<float>>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v12, re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<re::Matrix4x4<float>>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v12, re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<re::Matrix4x4<float>>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<re::Matrix4x4<float>>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<re::Matrix4x4<float>>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v12, v7);
        re::StackScratchAllocator::~StackScratchAllocator(v15);
      }

      xmmword_1EE1B0CF8 = v8;
      if (v10)
      {
        if (v10)
        {
        }
      }
    }
  }
}

void *re::ecs2::allocInfo_SkeletalPosePreparationSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B0C48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B0C48))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B0DA8, "SkeletalPosePreparationSystem");
    __cxa_guard_release(&qword_1EE1B0C48);
  }

  return &unk_1EE1B0DA8;
}

void re::ecs2::initInfo_SkeletalPosePreparationSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x6B6CEF3DEADF8BB8;
  v6[1] = "SkeletalPosePreparationSystem";
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
  *(this + 8) = &re::ecs2::initInfo_SkeletalPosePreparationSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::SkeletalPosePreparationSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::SkeletalPosePreparationSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::SkeletalPosePreparationSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::SkeletalPosePreparationSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::SkeletalPosePreparationSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::SkeletalPosePreparationSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::internal::defaultDestruct<re::ecs2::SkeletalPosePreparationSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  a3[58] = &unk_1F5CFA110;
  re::FixedArray<CoreIKTransform>::deinit(a3 + 59);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 28);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::SkeletalPosePreparationSystem>(uint64_t *a1)
{
  a1[58] = &unk_1F5CFA110;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 59);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 28);

  re::ecs2::System::~System(a1);
}

void *re::ecs2::allocInfo_SkeletalPoseSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B0C50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B0C50))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B0E38, "SkeletalPoseSystem");
    __cxa_guard_release(&qword_1EE1B0C50);
  }

  return &unk_1EE1B0E38;
}

void re::ecs2::initInfo_SkeletalPoseSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x404DC95C0462D372;
  v6[1] = "SkeletalPoseSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x22800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_SkeletalPoseSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::SkeletalPoseSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::SkeletalPoseSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::SkeletalPoseSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::SkeletalPoseSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::SkeletalPoseSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::SkeletalPoseSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::internal::defaultDestruct<re::ecs2::SkeletalPoseSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  a3[64] = &unk_1F5CFA150;
  re::FixedArray<CoreIKTransform>::deinit(a3 + 66);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 34);
  re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,4ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit((a3 + 28));

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::SkeletalPoseSystem>(uint64_t *a1)
{
  a1[64] = &unk_1F5CFA150;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 66);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 34);
  re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,4ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit((a1 + 28));

  re::ecs2::System::~System(a1);
}

void re::ecs2::BasicComponentStateImpl<re::ecs2::SkeletalPoseComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 248);
  if (v3)
  {
    v5 = 24;
    v6 = 0xFFFFFFFFLL;
    do
    {
      v7 = re::ecs2::ComponentBucketsBase::componentHandle(*(a2 + 16), *(a2 + v5), v3);
      if (v7 != -1 && (v8 & 0xFFFFFF00000000) != 0)
      {
        v10 = v7;
        v6 = v8;
        goto LABEL_11;
      }

      v5 += 8;
    }

    while (v5 != 56);
    v10 = -1;
LABEL_11:

    re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseComponent>::setComponentState(a2, v10, v6);
  }
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::SkeletalPoseComponent>::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

void re::ecs2::SkeletalPosePreparationSystem::~SkeletalPosePreparationSystem(re::ecs2::SkeletalPosePreparationSystem *this)
{
  *(this + 58) = &unk_1F5CFA110;
  re::FixedArray<CoreIKTransform>::deinit(this + 59);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 28);

  re::ecs2::System::~System(this);
}

{
  *(this + 58) = &unk_1F5CFA110;
  re::FixedArray<CoreIKTransform>::deinit(this + 59);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 28);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::SkeletalPoseSystem::~SkeletalPoseSystem(re::ecs2::SkeletalPoseSystem *this)
{
  *(this + 64) = &unk_1F5CFA150;
  re::FixedArray<CoreIKTransform>::deinit(this + 66);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 34);
  re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,4ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(this + 224);

  re::ecs2::System::~System(this);
}

{
  *(this + 64) = &unk_1F5CFA150;
  re::FixedArray<CoreIKTransform>::deinit(this + 66);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 34);
  re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,4ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(this + 224);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::CallableMemFn<re::ecs2::SkeletalPoseSystem,REEventHandlerResult (re::ecs2::SkeletalPoseSystem::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::SkeletalPoseSystem,REEventHandlerResult (re::ecs2::SkeletalPoseSystem::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFA2F0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::SkeletalPoseSystem,REEventHandlerResult (re::ecs2::SkeletalPoseSystem::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFA2F0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::HashSetBase<unsigned int,unsigned int,re::internal::ValueAsKey<unsigned int>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::addAsCopy(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, _DWORD *a5)
{
  v8 = *(a1 + 36);
  if (v8 == 0x7FFFFFFF)
  {
    v8 = *(a1 + 32);
    v9 = v8;
    if (v8 == *(a1 + 24))
    {
      re::HashSetBase<unsigned int,unsigned int,re::internal::ValueAsKey<unsigned int>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v9 = *(a1 + 32);
    }

    *(a1 + 32) = v9 + 1;
    v10 = *(a1 + 16);
    v11 = *(v10 + 16 * v8 + 8);
  }

  else
  {
    v10 = *(a1 + 16);
    v11 = *(v10 + 16 * v8 + 8);
    *(a1 + 36) = v11 & 0x7FFFFFFF;
  }

  *(v10 + 16 * v8 + 8) = v11 | 0x80000000;
  v12 = *(a1 + 8);
  *(*(a1 + 16) + 16 * v8 + 8) = *(*(a1 + 16) + 16 * v8 + 8) & 0x80000000 | *(v12 + 4 * a2);
  *(*(a1 + 16) + 16 * v8) = a3;
  *(*(a1 + 16) + 16 * v8 + 12) = *a5;
  *(v12 + 4 * a2) = v8;
  ++*(a1 + 28);
  return v8;
}

void re::HashSetBase<unsigned int,unsigned int,re::internal::ValueAsKey<unsigned int>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v13, 0, 36);
      *&v13[36] = 0x7FFFFFFFLL;
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::init(v13, v4, a2);
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
            re::HashSetBase<unsigned int,unsigned int,re::internal::ValueAsKey<unsigned int>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::addAsCopy(a1, *(*&v13[16] + v10) % *(a1 + 24), *(*&v13[16] + v10), *&v13[16] + v10 + 12, *&v13[16] + v10 + 12);
            v9 = *&v13[32];
          }

          ++v11;
          v10 += 16;
        }

        while (v11 < v9);
      }

      re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::deinit(v13);
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

uint64_t *re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType) + 480;
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
    *v10 = &unk_1F5CFA348;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CFA3A0;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CFA3F8;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CFA450;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
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
        *v37 = &unk_1F5CFA348;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CFA3A0;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CFA3F8;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CFA450;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v14 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v14);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = *(a2 + 248);
  if (v6)
  {
    for (i = 24; i != 56; i += 8)
    {
      v8 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v6);
      if (v8 != -1 && (v9 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseComponent>::setComponentState(a1, v8, v9);
        return 0;
      }
    }

    v11 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v6);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v11, v12);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v14 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v14);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = *(a2 + 248);
  if (v6)
  {
    for (i = 24; i != 56; i += 8)
    {
      v8 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v6);
      if (v8 != -1 && (v9 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseComponent>::setComponentState(a1, v8, v9);
        return 0;
      }
    }

    v11 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v6);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v11, v12);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v14 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v14);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = *(a2 + 248);
  if (v6)
  {
    for (i = 24; i != 56; i += 8)
    {
      v8 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v6);
      if (v8 != -1 && (v9 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseComponent>::setComponentState(a1, v8, v9);
        return 0;
      }
    }

    v11 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v6);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v11, v12);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v14 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v14);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = *(a2 + 248);
  if (v6)
  {
    for (i = 24; i != 56; i += 8)
    {
      v8 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v6);
      if (v8 != -1 && (v9 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseComponent>::setComponentState(a1, v8, v9);
        return 0;
      }
    }

    v11 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v6);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v11, v12);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFA348;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFA348;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFA3A0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFA3A0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFA3F8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFA3F8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFA450;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFA450;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseComponent>,4ul>::setBucketsCapacity(void *result, unint64_t a2)
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

uint64_t re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalPoseComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t re::EventBus::subscriptionCountInternal<re::ecs2::Scene,REAnimationSkeletalPoseUpdateCompleteEvent>(uint64_t a1, uint64_t a2)
{
  v9[0] = re::EventBus::getTypeId<REAnimationSkeletalPoseUpdateCompleteEvent>();
  v4 = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find((a1 + 24), v9);
  if (v4 == -1)
  {
    return 0;
  }

  v5 = *(*(a1 + 32) + 48 * v4 + 8);
  if (!v5)
  {
    return 0;
  }

  if (!a2)
  {
    v7 = v5 + 88;
    return *(v7 + 120);
  }

  v9[0] = a2;
  v9[1] = 0;
  v6 = re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::find((v5 + 216), v9);
  if (v6 == -1)
  {
    return 0;
  }

  v7 = *(v5 + 224) + 144 * v6 + 16;
  return *(v7 + 120);
}

uint64_t re::EventBus::getTypeId<REAnimationSkeletalPoseUpdateCompleteEvent>()
{
  if ((atomic_load_explicit(&qword_1EE1B0C60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B0C60))
  {
    qword_1EE1B0C58 = re::EventBus::typeStringToId(("42REAnimationSkeletalPoseUpdateCompleteEvent" & 0x7FFFFFFFFFFFFFFFLL), v1);
    __cxa_guard_release(&qword_1EE1B0C60);
  }

  return qword_1EE1B0C58;
}

void *re::IntrospectionDynamicArray<re::SkeletalPose>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::SkeletalPose>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::SkeletalPose>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::SkeletalPose>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::SkeletalPose>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::SkeletalPose>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::SkeletalPose>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::SkeletalPose>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::SkeletalPose>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::SkeletalPose>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v11 = 0;
  v12 = 0;
  *&v10[0].var0 = 0;
  memset(&v10[1], 0, 48);
  v10[0].var1 = &str_67;
  v13 = 0;
  re::DynamicArray<re::SkeletalPose>::add(this, v10);
  re::SkeletalPose::~SkeletalPose(v10);
  v8 = (*(this + 4) + 88 * *(this + 2) - 88);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

uint64_t re::IntrospectionDynamicArray<re::SkeletalPose>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 88 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 88 * a3;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::SkeletalPose>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::SkeletalPose>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::SkeletalPose>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::SkeletalPose>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::SkeletalPose>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::SkeletalPose>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::SkeletalPose>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 88 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 88;
        v11 -= 88;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SkeletalPose>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 88 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SkeletalPose>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SkeletalPose>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 88 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SkeletalPose>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::DynamicArray<re::Matrix4x4<float>>>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::DynamicArray<re::Matrix4x4<float>>>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::DynamicArray<re::Matrix4x4<float>>>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::DynamicArray<re::Matrix4x4<float>>>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::DynamicArray<re::Matrix4x4<float>>>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::DynamicArray<float>>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::DynamicArray<re::Matrix4x4<float>>>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 8);
  v9 = *(a4 + 16);
  if (v9 >= v8)
  {
    v10 = v9 + 1;
    if (v8 < v9 + 1)
    {
      if (*a4)
      {
        v11 = 2 * v8;
        v12 = v8 == 0;
        v13 = 8;
        if (!v12)
        {
          v13 = v11;
        }

        if (v13 <= v10)
        {
          v14 = v10;
        }

        else
        {
          v14 = v13;
        }

        re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity(a4, v14);
      }

      else
      {
        re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity(a4, v10);
        ++*(a4 + 24);
      }
    }

    v9 = *(a4 + 16);
  }

  v15 = *(a4 + 32) + 40 * v9;
  *(v15 + 32) = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 0;
  *v15 = 0;
  *(v15 + 24) = 1;
  v16 = *(a4 + 16);
  *(a4 + 16) = v16 + 1;
  ++*(a4 + 24);
  v17 = (*(a4 + 32) + 40 * v16);
  re::introspectionInitElement(a2, a3, a1[6], v17);
  return v17;
}

uint64_t re::IntrospectionDynamicArray<re::DynamicArray<re::Matrix4x4<float>>>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

void *re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<re::Matrix4x4<float>>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
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

void re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<re::Matrix4x4<float>>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<re::Matrix4x4<float>>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<re::Matrix4x4<float>>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<re::Matrix4x4<float>>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<re::Matrix4x4<float>>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::make::shared::unsafelyInplace<re::ecs2::SkeletalPoseComponent>(void *a1)
{
  bzero(a1, 0xF70uLL);
  ArcSharedObject::ArcSharedObject(a1, 0);
  a1[2] = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_1F5CD0548;
  *(a1 + 23) = 0u;
  *(a1 + 25) = 0u;
  *(a1 + 54) = 0;
  *(a1 + 14) = 0u;
  *(a1 + 15) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 33) = 0u;
  *(a1 + 35) = 0u;
  *(a1 + 74) = 0;
  *(a1 + 19) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 84) = 0;
  *(a1 + 43) = 0u;
  *(a1 + 45) = 0u;
  *(a1 + 94) = 0;
  *(a1 + 104) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 25) = 0u;
  *(a1 + 114) = 0;
  *(a1 + 53) = 0u;
  *(a1 + 55) = 0u;
  *(a1 + 11) = 0u;
  *(a1 + 13) = 0u;
  *(a1 + 30) = 0;
  *(a1 + 8) = 0u;
  *(a1 + 9) = 0u;
  *(a1 + 10) = 0u;
  *(a1 + 44) = 0;
  *(a1 + 29) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 20) = 0;
  a1[60] = -1;
  *(a1 + 186) = 0;
  *(a1 + 89) = 0u;
  *(a1 + 91) = 0u;
  *(a1 + 85) = 0u;
  *(a1 + 87) = 0u;
  *(a1 + 81) = 0u;
  *(a1 + 83) = 0u;
  *(a1 + 77) = 0u;
  *(a1 + 79) = 0u;
  *(a1 + 73) = 0u;
  *(a1 + 75) = 0u;
  *(a1 + 69) = 0u;
  *(a1 + 71) = 0u;
  *(a1 + 65) = 0u;
  *(a1 + 67) = 0u;
  *(a1 + 61) = 0u;
  *(a1 + 63) = 0u;
  a1[94] = -1;
  a1[102] = 0;
  *(a1 + 95) = 0u;
  *(a1 + 97) = 0u;
  re::EvaluationContextManager::EvaluationContextManager((a1 + 103));
  *(a1 + 239) = 0u;
  a1[474] = 0;
  *(a1 + 475) = 0u;
  *(a1 + 3816) = 0;
  *(a1 + 960) = 1;
  a1[493] = 0;
  *(a1 + 481) = 0u;
  *(a1 + 483) = 0u;
  *(a1 + 485) = 0u;
  *(a1 + 974) = 0;
  *(a1 + 244) = 0u;
  *(a1 + 245) = 0u;
  *(a1 + 984) = 0;
  return a1;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs221SkeletalPoseComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void re::snapshot::operator>><re::snapshot::DecoderRaw,re::SkeletalPose>(re::snapshot::DecoderRaw *a1, void *a2)
{
  v15 = 0;
  if (!re::snapshot::DecoderRaw::beginArray(a1, &v15))
  {
    return;
  }

  v4 = v15;
  if (v15 != -1 && a2[1] < v15)
  {
    re::DynamicArray<re::SkeletalPose>::setCapacity(a2, v15);
    v15 = v4 - 1;
    goto LABEL_11;
  }

  --v15;
  if (v4)
  {
LABEL_11:
    v6 = v4 + 1;
    if (v4 + 1 > 1)
    {
      v8 = v4 + 1;
    }

    else
    {
      v8 = 1;
    }

    v7 = 1;
    while (v4 != -1 && v8 != v7)
    {
      re::DynamicArray<re::SkeletalPose>::resize(a2, v7);
      v9 = a2[4];
      v10 = a2[2];
      {
        v13 = v10;
        v14 = v9;
        v10 = v13;
        v9 = v14;
        if (v12)
        {
          re::introspect<re::SkeletalPose>(BOOL)::info = re::introspect_SkeletalPose(0);
          v10 = v13;
          v9 = v14;
        }
      }

      re::snapshot::introspected::read<re::snapshot::DecoderRaw>(a1, v9 + 88 * v10 - 88, re::introspect<re::SkeletalPose>(BOOL)::info);
      ++v7;
      if (!v15--)
      {
        goto LABEL_9;
      }
    }

    re::snapshot::BufferDecoder::error(a1, "Bad data, too many elements: have %d, expected %zu");
    return;
  }

  v6 = 1;
  LODWORD(v7) = 1;
LABEL_9:
  if (v6 != v7)
  {
    re::snapshot::BufferDecoder::error(a1, "count mismatch: expected %zu, got %d");
  }
}

uint64_t *re::snapshot::operator>><re::snapshot::DecoderRaw,re::DynamicArray<re::Matrix4x4<float>>>(re::snapshot::DecoderRaw *a1, void *a2)
{
  v11 = 0;
  result = re::snapshot::DecoderRaw::beginArray(a1, &v11);
  if (!result)
  {
    return result;
  }

  v5 = v11;
  if (v11 != -1 && a2[1] < v11)
  {
    re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity(a2, v11);
LABEL_9:
    v9 = 0;
    v7 = v5 + 1;
    if (v5 + 1 > 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = 1;
    }

    while (v5 != -1 && v10 - 1 != v9)
    {
      re::DynamicArray<re::DynamicArray<float>>::resize(a2, v9 + 1);
      result = re::snapshot::operator>><re::snapshot::DecoderRaw,re::Matrix4x4<float>>(a1, (a2[4] + 40 * a2[2] - 40));
      if (v5 == ++v9)
      {
        v8 = v9 + 1;
        goto LABEL_16;
      }
    }

    return re::snapshot::BufferDecoder::error(a1, "Bad data, too many elements: have %d, expected %zu");
  }

  if (v11)
  {
    goto LABEL_9;
  }

  v7 = 1;
  v8 = 1;
LABEL_16:
  if (v7 != v8)
  {
    return re::snapshot::BufferDecoder::error(a1, "count mismatch: expected %zu, got %d");
  }

  return result;
}

uint64_t *re::snapshot::operator>><re::snapshot::DecoderRaw,re::Matrix4x4<float>>(re::snapshot::BufferDecoder *this, void *a2)
{
  v15 = 0;
  v4 = *(this + 3);
  v5 = *(this + 4) - v4;
  if (v5 >= 8)
  {
    v6 = *v4;
    *(this + 3) = v4 + 1;
    if ((v6 & 0x3F) != 0)
    {
      return re::snapshot::BufferDecoder::error(this, "Bad data: %zu bytes, expected multiple of %zu");
    }

    re::DynamicArray<re::Matrix4x4<float>>::resize(a2, v6 >> 6);
    v12 = a2[4];

    return re::snapshot::BufferDecoder::readRaw(this, v12, v6);
  }

  re::snapshot::BufferDecoder::error(this, "overrun: attempted to read %zu bytes, only %zu remaining", 8uLL, v5);
  result = re::snapshot::DecoderRaw::beginArray(this, &v15);
  if (!result)
  {
    return result;
  }

  v8 = v15;
  if (v15 != -1 && a2[1] < v15)
  {
    re::DynamicArray<re::Matrix4x4<float>>::setCapacity(a2, v15);
LABEL_15:
    v13 = 0;
    v10 = v8 + 1;
    if (v8 + 1 > 1)
    {
      v14 = v8 + 1;
    }

    else
    {
      v14 = 1;
    }

    while (v8 != -1 && v14 - 1 != v13)
    {
      re::DynamicArray<re::Matrix4x4<float>>::resize(a2, v13 + 1);
      result = re::snapshot::operator>><re::snapshot::DecoderRaw,re::Vector4<float>,4ul>(this, (a2[4] + (a2[2] << 6) - 64));
      if (v8 == ++v13)
      {
        v11 = v13 + 1;
        goto LABEL_22;
      }
    }

    return re::snapshot::BufferDecoder::error(this, "Bad data, too many elements: have %d, expected %zu");
  }

  if (v15)
  {
    goto LABEL_15;
  }

  v10 = 1;
  v11 = 1;
LABEL_22:
  if (v10 != v11)
  {
    return re::snapshot::BufferDecoder::error(this, "count mismatch: expected %zu, got %d");
  }

  return result;
}

uint64_t re::snapshot::operator>><re::snapshot::DecoderOPACK,re::SkeletalPose>(const char **a1, void *a2)
{
  v16 = 0;
  if (re::snapshot::DecoderOPACK::beginData(a1, &v16, 1))
  {
    v4 = v16;
    if (v16 % 0x58)
    {
      return re::snapshot::BufferDecoder::error(a1, "Bad data: %zu bytes, expected multiple of %zu");
    }

    else
    {
      re::DynamicArray<re::SkeletalPose>::resize(a2, v16 / 0x58);
      v10 = a2[4];

      return re::snapshot::BufferDecoder::readRaw(a1, v10, v4);
    }
  }

  else
  {
    result = re::snapshot::DecoderOPACK::beginArray(a1, &v16);
    if (result)
    {
      v6 = v16;
      if (v16 != -1 && a2[1] < v16)
      {
        re::DynamicArray<re::SkeletalPose>::setCapacity(a2, v16);
      }

      LODWORD(v8) = 1;
      if (v6 + 1 > 1)
      {
        v9 = v6 + 1;
      }

      else
      {
        v9 = 1;
      }

      result = re::snapshot::DecoderOPACK::endArray(a1, &v16);
      if (result)
      {
LABEL_14:
        if (v6 + 1 != v8)
        {
          return re::snapshot::BufferDecoder::error(a1, "count mismatch: expected %zu, got %d");
        }
      }

      else
      {
        v8 = 1;
        while (v6 != -1 && v9 != v8)
        {
          re::DynamicArray<re::SkeletalPose>::resize(a2, v8);
          v11 = a2[4];
          v12 = a2[2];
          {
            v14 = v12;
            v15 = v11;
            v12 = v14;
            v11 = v15;
            if (v13)
            {
              re::introspect<re::SkeletalPose>(BOOL)::info = re::introspect_SkeletalPose(0);
              v12 = v14;
              v11 = v15;
            }
          }

          re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(a1, v11 + 88 * v12 - 88, re::introspect<re::SkeletalPose>(BOOL)::info);
          ++v8;
          result = re::snapshot::DecoderOPACK::endArray(a1, &v16);
          if (result)
          {
            goto LABEL_14;
          }
        }

        return re::snapshot::BufferDecoder::error(a1, "Bad data, too many elements: have %d, expected %zu");
      }
    }
  }

  return result;
}

uint64_t re::snapshot::operator>><re::snapshot::DecoderOPACK,re::DynamicArray<re::Matrix4x4<float>>>(const char **a1, void *a2)
{
  v18 = 0;
  if (re::snapshot::DecoderOPACK::beginData(a1, &v18, 1))
  {
    v4 = v18;
    if (v18 % 0x28)
    {
      return re::snapshot::BufferDecoder::error(a1, "Bad data: %zu bytes, expected multiple of %zu");
    }

    else
    {
      re::DynamicArray<re::DynamicArray<float>>::resize(a2, v18 / 0x28);
      v16 = a2[4];

      return re::snapshot::BufferDecoder::readRaw(a1, v16, v4);
    }
  }

  else
  {
    result = re::snapshot::DecoderOPACK::beginArray(a1, &v18);
    if (result)
    {
      v6 = v18;
      if (v18 != -1 && a2[1] < v18)
      {
        re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity(a2, v18);
      }

      LODWORD(v8) = 1;
      if (v6 + 1 > 1)
      {
        v9 = v6 + 1;
      }

      else
      {
        v9 = 1;
      }

      result = re::snapshot::DecoderOPACK::endArray(a1, &v18);
      if (result)
      {
LABEL_39:
        if (v6 + 1 != v8)
        {
          return re::snapshot::BufferDecoder::error(a1, "count mismatch: expected %zu, got %d");
        }
      }

      else
      {
        v8 = 1;
        v17 = v9;
        while (v6 != -1 && v8 != v9)
        {
          re::DynamicArray<re::DynamicArray<float>>::resize(a2, v8);
          v10 = a2[4] + 40 * a2[2];
          v19 = 0;
          if (re::snapshot::DecoderOPACK::beginData(a1, &v19, 1))
          {
            v11 = v19;
            if ((v19 & 0x3F) != 0)
            {
              re::snapshot::BufferDecoder::error(a1, "Bad data: %zu bytes, expected multiple of %zu");
            }

            else
            {
              re::DynamicArray<re::Matrix4x4<float>>::resize(v10 - 40, v19 >> 6);
              re::snapshot::BufferDecoder::readRaw(a1, *(v10 - 8), v11);
            }
          }

          else if (re::snapshot::DecoderOPACK::beginArray(a1, &v19))
          {
            v12 = v19;
            if (v19 != -1 && *(v10 - 32) < v19)
            {
              re::DynamicArray<re::Matrix4x4<float>>::setCapacity((v10 - 40), v19);
            }

            if (v12 + 1 > 1)
            {
              v13 = v12 + 1;
            }

            else
            {
              v13 = 1;
            }

            LODWORD(v14) = 1;
            if (re::snapshot::DecoderOPACK::endArray(a1, &v19))
            {
LABEL_32:
              v9 = v17;
              if (v12 + 1 != v14)
              {
                re::snapshot::BufferDecoder::error(a1, "count mismatch: expected %zu, got %d");
              }
            }

            else
            {
              if (v12 == -1)
              {
                v15 = 0;
              }

              else
              {
                v14 = 1;
                while (v13 != v14)
                {
                  re::DynamicArray<re::Matrix4x4<float>>::resize(v10 - 40, v14);
                  re::internal::opack::decode<re::Vector4<float>,4>(a1, (*(v10 - 8) + (*(v10 - 24) << 6) - 64));
                  ++v14;
                  if (re::snapshot::DecoderOPACK::endArray(a1, &v19))
                  {
                    goto LABEL_32;
                  }
                }

                v15 = v13 - 1;
              }

              v9 = v17;
              re::snapshot::BufferDecoder::error(a1, "Bad data, too many elements: have %d, expected %zu", v15, v12);
            }
          }

          ++v8;
          result = re::snapshot::DecoderOPACK::endArray(a1, &v18);
          if (result)
          {
            goto LABEL_39;
          }
        }

        return re::snapshot::BufferDecoder::error(a1, "Bad data, too many elements: have %d, expected %zu");
      }
    }
  }

  return result;
}