uint64_t re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::PrimitivePlaneComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::PrimitivePlaneComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::PrimitivePlaneComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
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

uint64_t re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitivePyramidComponent>::PrimitiveComponentSystemBase(uint64_t a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = re::ecs2::System::System(a1, 1, 1);
  *v2 = &unk_1F5CFD098;
  v3 = v2 + 28;
  v2[28] = &unk_1F5CFD110;
  v2[29] = v2;
  v2[31] = 0;
  v2[32] = 0;
  v2[30] = 0;
  v10[0] = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
  v10[1] = re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v9[0] = v10;
  v9[1] = 2;
  v4 = re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((v2 + 30), v9);
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 1;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 288) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 1;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0;
  *(a1 + 448) = 1;
  *(a1 + 481) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  v7 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((a1 + 384), 0);
  *(a1 + 400) += 2;
  *(a1 + 424) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((a1 + 432), 0);
  *(a1 + 448) += 2;
  *(a1 + 472) = 0;
  *(a1 + 480) = a1;
  *(a1 + 488) = v3;
  *(a1 + 496) = 1;
  return a1;
}

void re::ecs2::PrimitivePyramidSystem::~PrimitivePyramidSystem(re::ecs2::PrimitivePyramidSystem *this)
{
  *this = &unk_1F5CFD098;
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 33);
  *(this + 28) = &unk_1F5CFD110;
  re::FixedArray<CoreIKTransform>::deinit(this + 30);

  re::ecs2::System::~System(this);
}

{
  *this = &unk_1F5CFD098;
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 33);
  *(this + 28) = &unk_1F5CFD110;
  re::FixedArray<CoreIKTransform>::deinit(this + 30);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

double re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitivePyramidComponent>::willAddSceneToECSService(uint64_t a1, uint64_t a2)
{
  v59 = *MEMORY[0x1E69E9840];
  v41[0] = a2;
  v4 = *(a1 + 392);
  v5 = *(a1 + 400);
  if (v4 >= 0xB)
  {
    if (v5)
    {
      v6 = (a1 + 408);
    }

    else
    {
      v6 = *(a1 + 416);
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
    v7 = (a1 + 408);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *(a1 + 416);
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
    *&v42 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(a1 + 384, 0);
    v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 264, v42);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePyramidComponent>::init(v12, a1 + 264, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 320), v41, &v42);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 384, v42);
    v13 = v42;
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
  v14 = *(a1 + 304);
  *&v49 = 0;
  v15 = *(a1 + 272);
  DWORD2(v49) = 0;
  if (v14 + 1 > 4 * v15)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePyramidComponent>,4ul>::setBucketsCapacity((a1 + 264), (v14 + 4) >> 2);
    v15 = *(a1 + 272);
  }

  if (v15 <= v14 >> 2)
  {
    v41[1] = 0;
    memset(v58, 0, sizeof(v58));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v50 = 136315906;
    v51 = "operator[]";
    v52 = 1024;
    v53 = 858;
    v54 = 2048;
    v55 = v14 >> 2;
    v56 = 2048;
    v57 = v15;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_53;
  }

  if (*(a1 + 280))
  {
    v16 = a1 + 288;
  }

  else
  {
    v16 = *(a1 + 296);
  }

  v17 = *(v16 + 8 * (v14 >> 2));
  ++*(a1 + 304);
  ++*(a1 + 312);
  v18 = v17 + 112 * (v14 & 3);
  v19 = v42;
  v20 = v43;
  v21 = v44;
  *(v18 + 48) = v45;
  *(v18 + 16) = v20;
  *(v18 + 32) = v21;
  *v18 = v19;
  re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v18 + 56, &v45 + 8);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v42);
  v23 = *(a1 + 304);
  if (!v23)
  {
LABEL_53:
    re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  v24 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 264, v23 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePyramidComponent>::init(v24, a1 + 264, v41[0]);
  *&v58[0] = *(a1 + 304) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 320), v41, v58);
  v25 = *(a1 + 304);
  v26 = *(a1 + 424);
  if ((v25 & 0x3F) != 0)
  {
    v27 = (v25 >> 6) + 1;
  }

  else
  {
    v27 = v25 >> 6;
  }

  *(a1 + 424) = v25;
  *&v42 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 384), v27, &v42);
  if (v25 && v26 > v25)
  {
    v28 = 63;
    v29 = *(a1 + 424) & 0x3FLL;
    if (v29 && v29 != 63)
    {
      v28 = ~(-1 << v29);
    }

    if (*(a1 + 400))
    {
      v30 = a1 + 408;
    }

    else
    {
      v30 = *(a1 + 416);
    }

    *(v30 + 8 * *(a1 + 392) - 8) &= v28;
  }

  v31 = *(a1 + 304);
  v32 = *(a1 + 472);
  if ((v31 & 0x3F) != 0)
  {
    v33 = (v31 >> 6) + 1;
  }

  else
  {
    v33 = v31 >> 6;
  }

  *(a1 + 472) = v31;
  *&v42 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 432), v33, &v42);
  if (v31 && v32 > v31)
  {
    v34 = 63;
    v35 = *(a1 + 472) & 0x3FLL;
    if (v35 && v35 != 63)
    {
      v34 = ~(-1 << v35);
    }

    if (*(a1 + 448))
    {
      v36 = a1 + 456;
    }

    else
    {
      v36 = *(a1 + 464);
    }

    *(v36 + 8 * *(a1 + 440) - 8) &= v34;
  }

  v13 = *&v58[0];
LABEL_49:
  re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 432, v13);
  if (*(a1 + 496) == 1)
  {
    v37 = *(a1 + 480);
    v38 = *(v41[0] + 376);
    LOWORD(v42) = 257;
    DWORD1(v42) = 1023969417;
    BYTE8(v42) = 0;
    re::ecs2::System::setTaskOptions(v37, v38, &v42);
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1 + 264);
  }

  v39 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::PrimitivePyramidComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  *&v42 = a1 + 224;
  *(&v42 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::PrimitivePyramidComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitivePyramidComponent>::deactivateComponent,re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitivePyramidComponent>>;
  *&v43 = 0;
  *(&v43 + 1) = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::PrimitivePyramidComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::PrimitivePyramidComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::PrimitivePyramidComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
  return re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v39 + 184), &v42);
}

void re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitivePyramidComponent>::willRemoveSceneFromECSService(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  *&v17 = a2;
  v4 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 320), &v17);
  if (v4 != -1)
  {
    v5 = *(a1 + 328) + 16 * v4;
    re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 384, *(v5 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 432, *(v5 + 8));
    v6 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 264, *(v5 + 8));
    if (*v6)
    {
      v7 = v6;
      *v6 = 0;
      v8 = v6 + 1;
      v9 = *(v6[1] + 288);
      if (v9)
      {
        v10 = v6[12];
        if (v10)
        {
          for (i = 0; i != v10; ++i)
          {
            v12 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v7 + 7), i);
            re::EventBus::unsubscribe(v9, *v12, *(v12 + 8));
          }
        }
      }

      re::BucketArray<RESubscriptionHandle,8ul>::deinit((v7 + 7));
      v13 = 0;
      v14 = v7 + 3;
      do
      {
        v15 = v7[2];
        if (*v15)
        {
          re::ecs2::ComponentBucketsBase::removeBucket(v15, v14[v13]);
        }

        v14[v13++] = -1;
      }

      while (v13 != 4);
      *v8 = 0;
      v8[1] = 0;
    }

    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(a1 + 320, &v17);
  }

  v16 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::PrimitivePyramidComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  *&v17 = a1 + 224;
  *(&v17 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::PrimitivePyramidComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitivePyramidComponent>::deactivateComponent,re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitivePyramidComponent>>;
  v18 = 0;
  v19 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::PrimitivePyramidComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::PrimitivePyramidComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::PrimitivePyramidComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
  re::Event<re::GeometricObjectBase>::removeSubscription(v16 + 184, &v17);
}

void re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitivePyramidComponent>::update(void *a1, uint64_t a2, uint64_t a3)
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
  v5 = a1[59];
  if ((v5 & 0x3F) != 0)
  {
    v6 = (v5 >> 6) + 1;
  }

  else
  {
    v6 = v5 >> 6;
  }

  v41 = a1[59];
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
      v11 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 40, v31);
      re::DynamicBitset<unsigned long long,64ul>::setBit(&v36, *(a1[41] + 16 * v11 + 8));
      v9 -= 8;
    }

    while (v9);
  }

  re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v36, (a1 + 54));
  v32 = 1;
  v33 = 0;
  v34 = 0;
  v31[0] = v42;
  v31[1] = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v31, 0);
  v32 += 2;
  v12 = a1[59];
  if ((v12 & 0x3F) != 0)
  {
    v13 = (v12 >> 6) + 1;
  }

  else
  {
    v13 = v12 >> 6;
  }

  v35 = a1[59];
  v43 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(v31, v13, &v43);
  re::DynamicBitset<unsigned long long,64ul>::subtractBitSet((a1 + 54), &v36);
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
        v21 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[]((a1 + 33), FirstBitSet);
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
  re::DynamicBitset<unsigned long long,64ul>::orWithBitSet((a1 + 54), v31);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate((a1 + 33));
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

unint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::PrimitivePyramidComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::PrimitivePyramidComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
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

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePyramidComponent>::setComponentState(a2, v11, v7);
  }

  return result;
}

BOOL re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitivePyramidComponent>::processDirtyComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = (*(**(*(a1 + 8) + 40) + 32))(*(*(a1 + 8) + 40));
  v8 = re::ServiceLocator::service<re::AssetService>(v7);
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v41, a5, 0);
  v55 = a4;
  v56 = v41;
  v57 = v42;
  if (v41 != a5 || v42 != 0xFFFFFFFFLL)
  {
    do
    {
      v10 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v56);
      v11 = *v10;
      v12 = *(*v10 + 16);
      if (v12)
      {
        *(v11 + 104) = *(v11 + 28);
        *(v11 + 119) = *(v11 + 43);
        v13 = *(v11 + 48);
        *(v11 + 124) = v13;
        v14 = *(v11 + 49);
        *(v11 + 125) = v14;
        re::MeshPrimitiveProvider::makeDescriptor(v11 + 28, v13, v14, &v41);
        (*(*v8 + 40))(&v39, v8, &v41);
        v15 = *(v11 + 56);
        *(v11 + 56) = v39;
        v39 = v15;
        v16 = *(v11 + 72);
        *(v11 + 72) = v40;
        v40 = v16;
        re::AssetHandle::~AssetHandle(&v39);
        re::AssetHandle::loadNow(*(v11 + 64), 0);
        v17 = *(v11 + 64);
        if (!v17 || (v18 = atomic_load((v17 + 896)), v19 = (a3 + 32), v18 != 3))
        {
          v20 = *(v12 + 192);
          if (v20 && *(v20 + 40) != *(v11 + 64))
          {
            re::AssetHandle::operator=(v20 + 32, (v11 + 56));
            re::ecs2::Component::markDirty(v20);
          }

          v19 = (a3 + 48);
          if (*(v11 + 50) == 1)
          {
            v21 = re::ecs2::EntityComponentCollection::get((v12 + 48), re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
            v19 = (a3 + 48);
            if (v21)
            {
              v19 = (a3 + 48);
              if (!*(v11 + 88))
              {
                v27 = v21;
                v28 = re::internal::buildCollisionShape((v11 + 28), v22, v23, v24, v25, v26);
                v29 = re::CollisionShapeAsset::assetType(v28);
                (*(*v8 + 424))(&v39, v8, v28, v29, 0, 2, 0);
                v31 = *(v11 + 80);
                v30 = (v11 + 80);
                *v30 = v39;
                v39 = v31;
                v32 = v30[2];
                v30[2] = v40;
                v40 = v32;
                re::AssetHandle::~AssetHandle(&v39);
                re::AssetHandle::operator=((v27 + 4), v30);
                re::ecs2::Component::markDirty(v27);
                v19 = (a3 + 48);
              }
            }
          }
        }

        v33 = v55;
        v34 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v56);
        re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v33, v34, *v19);
        if (v53)
        {
          if (BYTE8(v53))
          {
            (*(*v53 + 40))();
          }

          v53 = 0u;
          v54 = 0u;
        }

        if (v48)
        {
          if (v52)
          {
            (*(*v48 + 40))();
          }

          v52 = 0;
          v49 = 0;
          v50 = 0;
          v48 = 0;
          ++v51;
        }

        if (v43)
        {
          if (v47)
          {
            (*(*v43 + 40))();
          }

          v47 = 0;
          v44 = 0;
          v45 = 0;
          v43 = 0;
          ++v46;
        }

        if (v41 && (v42 & 1) != 0)
        {
          (*(*v41 + 40))();
        }
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v56);
    }

    while (v56 != a5 || v57 != 0xFFFF || HIWORD(v57) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::PrimitivePyramidComponent>::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePyramidComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
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

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePyramidComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePyramidComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePyramidComponent>,4ul>::setBucketsCapacity(void *result, unint64_t a2)
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

uint64_t *re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePyramidComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::PrimitivePyramidComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) + 480;
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
    *v10 = &unk_1F5CFD178;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePyramidComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::PrimitivePyramidComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CFD1D0;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePyramidComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::PrimitivePyramidComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CFD228;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePyramidComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::PrimitivePyramidComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CFD280;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePyramidComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::PrimitivePyramidComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
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
        *v37 = &unk_1F5CFD178;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePyramidComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CFD1D0;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePyramidComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CFD228;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePyramidComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CFD280;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePyramidComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePyramidComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PrimitivePyramidComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePyramidComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePyramidComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PrimitivePyramidComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePyramidComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePyramidComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PrimitivePyramidComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePyramidComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePyramidComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PrimitivePyramidComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePyramidComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePyramidComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePyramidComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePyramidComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePyramidComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePyramidComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePyramidComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePyramidComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePyramidComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFD178;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePyramidComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePyramidComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFD178;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePyramidComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePyramidComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePyramidComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePyramidComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFD1D0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePyramidComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePyramidComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFD1D0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePyramidComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePyramidComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePyramidComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePyramidComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFD228;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePyramidComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePyramidComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFD228;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePyramidComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePyramidComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePyramidComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePyramidComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFD280;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePyramidComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePyramidComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFD280;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::PrimitivePyramidComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitivePyramidComponent>::deactivateComponent,re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitivePyramidComponent>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a4)
  {
    v5 = 8 * a4;
    __asm { FMOV            V8.2S, #1.0 }

    do
    {
      v11 = *a3;
      v12 = *(*a3 + 56);
      if (v12)
      {

        *(v11 + 56) = 0;
      }

      *(v11 + 64) = 0;
      v13 = *(v11 + 80);
      if (v13)
      {

        *(v11 + 80) = 0;
      }

      *(v11 + 88) = 0;
      *(v11 + 104) = 1;
      *(v11 + 108) = _D8;
      *(v11 + 116) = 1065353216;
      *(v11 + 120) = 257;
      ++a3;
      *(v11 + 122) = 0;
      v5 -= 8;
    }

    while (v5);
  }

  return 0;
}

uint64_t re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::PrimitivePyramidComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::PrimitivePyramidComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::PrimitivePyramidComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
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

uint64_t re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitiveSphereComponent>::PrimitiveComponentSystemBase(uint64_t a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = re::ecs2::System::System(a1, 1, 1);
  *v2 = &unk_1F5CFD380;
  v3 = v2 + 28;
  v2[28] = &unk_1F5CFD3F8;
  v2[29] = v2;
  v2[31] = 0;
  v2[32] = 0;
  v2[30] = 0;
  v10[0] = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
  v10[1] = re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v9[0] = v10;
  v9[1] = 2;
  v4 = re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((v2 + 30), v9);
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 1;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 288) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 1;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0;
  *(a1 + 448) = 1;
  *(a1 + 481) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  v7 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((a1 + 384), 0);
  *(a1 + 400) += 2;
  *(a1 + 424) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((a1 + 432), 0);
  *(a1 + 448) += 2;
  *(a1 + 472) = 0;
  *(a1 + 480) = a1;
  *(a1 + 488) = v3;
  *(a1 + 496) = 1;
  return a1;
}

void re::ecs2::PrimitiveSphereSystem::~PrimitiveSphereSystem(re::ecs2::PrimitiveSphereSystem *this)
{
  *this = &unk_1F5CFD380;
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 33);
  *(this + 28) = &unk_1F5CFD3F8;
  re::FixedArray<CoreIKTransform>::deinit(this + 30);

  re::ecs2::System::~System(this);
}

{
  *this = &unk_1F5CFD380;
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 33);
  *(this + 28) = &unk_1F5CFD3F8;
  re::FixedArray<CoreIKTransform>::deinit(this + 30);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

double re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitiveSphereComponent>::willAddSceneToECSService(uint64_t a1, uint64_t a2)
{
  v59 = *MEMORY[0x1E69E9840];
  v41[0] = a2;
  v4 = *(a1 + 392);
  v5 = *(a1 + 400);
  if (v4 >= 0xB)
  {
    if (v5)
    {
      v6 = (a1 + 408);
    }

    else
    {
      v6 = *(a1 + 416);
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
    v7 = (a1 + 408);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *(a1 + 416);
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
    *&v42 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(a1 + 384, 0);
    v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 264, v42);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveSphereComponent>::init(v12, a1 + 264, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 320), v41, &v42);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 384, v42);
    v13 = v42;
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
  v14 = *(a1 + 304);
  *&v49 = 0;
  v15 = *(a1 + 272);
  DWORD2(v49) = 0;
  if (v14 + 1 > 4 * v15)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveSphereComponent>,4ul>::setBucketsCapacity((a1 + 264), (v14 + 4) >> 2);
    v15 = *(a1 + 272);
  }

  if (v15 <= v14 >> 2)
  {
    v41[1] = 0;
    memset(v58, 0, sizeof(v58));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v50 = 136315906;
    v51 = "operator[]";
    v52 = 1024;
    v53 = 858;
    v54 = 2048;
    v55 = v14 >> 2;
    v56 = 2048;
    v57 = v15;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_53;
  }

  if (*(a1 + 280))
  {
    v16 = a1 + 288;
  }

  else
  {
    v16 = *(a1 + 296);
  }

  v17 = *(v16 + 8 * (v14 >> 2));
  ++*(a1 + 304);
  ++*(a1 + 312);
  v18 = v17 + 112 * (v14 & 3);
  v19 = v42;
  v20 = v43;
  v21 = v44;
  *(v18 + 48) = v45;
  *(v18 + 16) = v20;
  *(v18 + 32) = v21;
  *v18 = v19;
  re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v18 + 56, &v45 + 8);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v42);
  v23 = *(a1 + 304);
  if (!v23)
  {
LABEL_53:
    re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  v24 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 264, v23 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveSphereComponent>::init(v24, a1 + 264, v41[0]);
  *&v58[0] = *(a1 + 304) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 320), v41, v58);
  v25 = *(a1 + 304);
  v26 = *(a1 + 424);
  if ((v25 & 0x3F) != 0)
  {
    v27 = (v25 >> 6) + 1;
  }

  else
  {
    v27 = v25 >> 6;
  }

  *(a1 + 424) = v25;
  *&v42 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 384), v27, &v42);
  if (v25 && v26 > v25)
  {
    v28 = 63;
    v29 = *(a1 + 424) & 0x3FLL;
    if (v29 && v29 != 63)
    {
      v28 = ~(-1 << v29);
    }

    if (*(a1 + 400))
    {
      v30 = a1 + 408;
    }

    else
    {
      v30 = *(a1 + 416);
    }

    *(v30 + 8 * *(a1 + 392) - 8) &= v28;
  }

  v31 = *(a1 + 304);
  v32 = *(a1 + 472);
  if ((v31 & 0x3F) != 0)
  {
    v33 = (v31 >> 6) + 1;
  }

  else
  {
    v33 = v31 >> 6;
  }

  *(a1 + 472) = v31;
  *&v42 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 432), v33, &v42);
  if (v31 && v32 > v31)
  {
    v34 = 63;
    v35 = *(a1 + 472) & 0x3FLL;
    if (v35 && v35 != 63)
    {
      v34 = ~(-1 << v35);
    }

    if (*(a1 + 448))
    {
      v36 = a1 + 456;
    }

    else
    {
      v36 = *(a1 + 464);
    }

    *(v36 + 8 * *(a1 + 440) - 8) &= v34;
  }

  v13 = *&v58[0];
LABEL_49:
  re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 432, v13);
  if (*(a1 + 496) == 1)
  {
    v37 = *(a1 + 480);
    v38 = *(v41[0] + 376);
    LOWORD(v42) = 257;
    DWORD1(v42) = 1023969417;
    BYTE8(v42) = 0;
    re::ecs2::System::setTaskOptions(v37, v38, &v42);
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1 + 264);
  }

  v39 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::PrimitiveSphereComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  *&v42 = a1 + 224;
  *(&v42 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveSphereComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitiveSphereComponent>::deactivateComponent,re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitiveSphereComponent>>;
  *&v43 = 0;
  *(&v43 + 1) = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveSphereComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveSphereComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveSphereComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
  return re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v39 + 184), &v42);
}

void re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitiveSphereComponent>::willRemoveSceneFromECSService(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  *&v17 = a2;
  v4 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 320), &v17);
  if (v4 != -1)
  {
    v5 = *(a1 + 328) + 16 * v4;
    re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 384, *(v5 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 432, *(v5 + 8));
    v6 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 264, *(v5 + 8));
    if (*v6)
    {
      v7 = v6;
      *v6 = 0;
      v8 = v6 + 1;
      v9 = *(v6[1] + 288);
      if (v9)
      {
        v10 = v6[12];
        if (v10)
        {
          for (i = 0; i != v10; ++i)
          {
            v12 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v7 + 7), i);
            re::EventBus::unsubscribe(v9, *v12, *(v12 + 8));
          }
        }
      }

      re::BucketArray<RESubscriptionHandle,8ul>::deinit((v7 + 7));
      v13 = 0;
      v14 = v7 + 3;
      do
      {
        v15 = v7[2];
        if (*v15)
        {
          re::ecs2::ComponentBucketsBase::removeBucket(v15, v14[v13]);
        }

        v14[v13++] = -1;
      }

      while (v13 != 4);
      *v8 = 0;
      v8[1] = 0;
    }

    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(a1 + 320, &v17);
  }

  v16 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::PrimitiveSphereComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  *&v17 = a1 + 224;
  *(&v17 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveSphereComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitiveSphereComponent>::deactivateComponent,re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitiveSphereComponent>>;
  v18 = 0;
  v19 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveSphereComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveSphereComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveSphereComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
  re::Event<re::GeometricObjectBase>::removeSubscription(v16 + 184, &v17);
}

void re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitiveSphereComponent>::update(void *a1, uint64_t a2, uint64_t a3)
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
  v5 = a1[59];
  if ((v5 & 0x3F) != 0)
  {
    v6 = (v5 >> 6) + 1;
  }

  else
  {
    v6 = v5 >> 6;
  }

  v41 = a1[59];
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
      v11 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 40, v31);
      re::DynamicBitset<unsigned long long,64ul>::setBit(&v36, *(a1[41] + 16 * v11 + 8));
      v9 -= 8;
    }

    while (v9);
  }

  re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v36, (a1 + 54));
  v32 = 1;
  v33 = 0;
  v34 = 0;
  v31[0] = v42;
  v31[1] = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v31, 0);
  v32 += 2;
  v12 = a1[59];
  if ((v12 & 0x3F) != 0)
  {
    v13 = (v12 >> 6) + 1;
  }

  else
  {
    v13 = v12 >> 6;
  }

  v35 = a1[59];
  v43 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(v31, v13, &v43);
  re::DynamicBitset<unsigned long long,64ul>::subtractBitSet((a1 + 54), &v36);
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
        v21 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[]((a1 + 33), FirstBitSet);
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
  re::DynamicBitset<unsigned long long,64ul>::orWithBitSet((a1 + 54), v31);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate((a1 + 33));
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

unint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::PrimitiveSphereComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::PrimitiveSphereComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
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

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveSphereComponent>::setComponentState(a2, v11, v7);
  }

  return result;
}

BOOL re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitiveSphereComponent>::processDirtyComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = (*(**(*(a1 + 8) + 40) + 32))(*(*(a1 + 8) + 40));
  v8 = re::ServiceLocator::service<re::AssetService>(v7);
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v36, a5, 0);
  v50 = a4;
  v51 = v36;
  v52 = v37;
  if (v36 != a5 || v37 != 0xFFFFFFFFLL)
  {
    do
    {
      v10 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v51);
      v11 = *v10;
      v12 = *(*v10 + 16);
      if (v12)
      {
        *(v11 + 96) = *(v11 + 28);
        *(v11 + 103) = *(v11 + 35);
        v13 = *(v11 + 40);
        *(v11 + 108) = v13;
        v14 = *(v11 + 41);
        *(v11 + 109) = v14;
        re::MeshPrimitiveProvider::makeDescriptor(v11 + 28, v13, v14, &v36);
        (*(*v8 + 40))(&v34, v8, &v36);
        v15 = *(v11 + 48);
        *(v11 + 48) = v34;
        v34 = v15;
        v16 = *(v11 + 64);
        *(v11 + 64) = v35;
        v35 = v16;
        re::AssetHandle::~AssetHandle(&v34);
        re::AssetHandle::loadNow(*(v11 + 56), 0);
        v17 = *(v11 + 56);
        if (!v17 || (v18 = atomic_load((v17 + 896)), v19 = (a3 + 32), v18 != 3))
        {
          v20 = *(v12 + 192);
          if (v20 && *(v20 + 40) != *(v11 + 56))
          {
            re::AssetHandle::operator=(v20 + 32, (v11 + 48));
            re::ecs2::Component::markDirty(v20);
          }

          v19 = (a3 + 48);
          if (*(v11 + 42) == 1)
          {
            v21 = re::ecs2::EntityComponentCollection::get((v12 + 48), re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
            v19 = (a3 + 48);
            if (v21)
            {
              v19 = (a3 + 48);
              if (!*(v11 + 80))
              {
                v22 = v21;
                v23 = re::internal::buildCollisionShape((v11 + 28));
                v24 = re::CollisionShapeAsset::assetType(v23);
                (*(*v8 + 424))(&v34, v8, v23, v24, 0, 2, 0);
                v26 = *(v11 + 72);
                v25 = (v11 + 72);
                *v25 = v34;
                v34 = v26;
                v27 = v25[2];
                v25[2] = v35;
                v35 = v27;
                re::AssetHandle::~AssetHandle(&v34);
                re::AssetHandle::operator=((v22 + 4), v25);
                re::ecs2::Component::markDirty(v22);
                v19 = (a3 + 48);
              }
            }
          }
        }

        v28 = v50;
        v29 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v51);
        re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v28, v29, *v19);
        if (v48)
        {
          if (BYTE8(v48))
          {
            (*(*v48 + 40))();
          }

          v48 = 0u;
          v49 = 0u;
        }

        if (v43)
        {
          if (v47)
          {
            (*(*v43 + 40))();
          }

          v47 = 0;
          v44 = 0;
          v45 = 0;
          v43 = 0;
          ++v46;
        }

        if (v38)
        {
          if (v42)
          {
            (*(*v38 + 40))();
          }

          v42 = 0;
          v39 = 0;
          v40 = 0;
          v38 = 0;
          ++v41;
        }

        if (v36 && (v37 & 1) != 0)
        {
          (*(*v36 + 40))();
        }
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v51);
    }

    while (v51 != a5 || v52 != 0xFFFF || HIWORD(v52) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::PrimitiveSphereComponent>::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveSphereComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
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

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveSphereComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveSphereComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveSphereComponent>,4ul>::setBucketsCapacity(void *result, unint64_t a2)
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

uint64_t *re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveSphereComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::PrimitiveSphereComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) + 480;
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
    *v10 = &unk_1F5CFD460;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveSphereComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::PrimitiveSphereComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CFD4B8;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveSphereComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::PrimitiveSphereComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CFD510;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveSphereComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::PrimitiveSphereComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CFD568;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveSphereComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::PrimitiveSphereComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
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
        *v37 = &unk_1F5CFD460;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveSphereComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CFD4B8;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveSphereComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CFD510;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveSphereComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CFD568;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveSphereComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveSphereComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PrimitiveSphereComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveSphereComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveSphereComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PrimitiveSphereComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveSphereComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveSphereComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PrimitiveSphereComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveSphereComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveSphereComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PrimitiveSphereComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveSphereComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveSphereComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveSphereComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveSphereComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveSphereComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveSphereComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveSphereComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveSphereComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveSphereComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFD460;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveSphereComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveSphereComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFD460;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveSphereComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveSphereComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveSphereComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveSphereComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFD4B8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveSphereComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveSphereComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFD4B8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveSphereComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveSphereComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveSphereComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveSphereComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFD510;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveSphereComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveSphereComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFD510;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveSphereComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveSphereComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveSphereComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveSphereComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFD568;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveSphereComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveSphereComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFD568;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveSphereComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitiveSphereComponent>::deactivateComponent,re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitiveSphereComponent>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a4)
  {
    v5 = 8 * a4;
    do
    {
      v6 = *a3;
      v7 = *(*a3 + 48);
      if (v7)
      {

        *(v6 + 48) = 0;
      }

      *(v6 + 56) = 0;
      v8 = *(v6 + 72);
      if (v8)
      {

        *(v6 + 72) = 0;
      }

      *(v6 + 80) = 0;
      *(v6 + 96) = 8;
      *(v6 + 100) = 1056964608;
      *(v6 + 104) = 257;
      ++a3;
      *(v6 + 106) = 0;
      v5 -= 8;
    }

    while (v5);
  }

  return 0;
}

uint64_t re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveSphereComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveSphereComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveSphereComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
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

uint64_t re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitiveTetrahedronComponent>::PrimitiveComponentSystemBase(uint64_t a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = re::ecs2::System::System(a1, 1, 1);
  *v2 = &unk_1F5CFD668;
  v3 = v2 + 28;
  v2[28] = &unk_1F5CFD6E0;
  v2[29] = v2;
  v2[31] = 0;
  v2[32] = 0;
  v2[30] = 0;
  v10[0] = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
  v10[1] = re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v9[0] = v10;
  v9[1] = 2;
  v4 = re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((v2 + 30), v9);
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 1;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 288) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 1;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0;
  *(a1 + 448) = 1;
  *(a1 + 481) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  v7 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((a1 + 384), 0);
  *(a1 + 400) += 2;
  *(a1 + 424) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((a1 + 432), 0);
  *(a1 + 448) += 2;
  *(a1 + 472) = 0;
  *(a1 + 480) = a1;
  *(a1 + 488) = v3;
  *(a1 + 496) = 1;
  return a1;
}

void re::ecs2::PrimitiveTetrahedronSystem::~PrimitiveTetrahedronSystem(re::ecs2::PrimitiveTetrahedronSystem *this)
{
  *this = &unk_1F5CFD668;
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 33);
  *(this + 28) = &unk_1F5CFD6E0;
  re::FixedArray<CoreIKTransform>::deinit(this + 30);

  re::ecs2::System::~System(this);
}

{
  *this = &unk_1F5CFD668;
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 33);
  *(this + 28) = &unk_1F5CFD6E0;
  re::FixedArray<CoreIKTransform>::deinit(this + 30);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

double re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitiveTetrahedronComponent>::willAddSceneToECSService(uint64_t a1, uint64_t a2)
{
  v59 = *MEMORY[0x1E69E9840];
  v41[0] = a2;
  v4 = *(a1 + 392);
  v5 = *(a1 + 400);
  if (v4 >= 0xB)
  {
    if (v5)
    {
      v6 = (a1 + 408);
    }

    else
    {
      v6 = *(a1 + 416);
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
    v7 = (a1 + 408);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *(a1 + 416);
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
    *&v42 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(a1 + 384, 0);
    v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 264, v42);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTetrahedronComponent>::init(v12, a1 + 264, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 320), v41, &v42);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 384, v42);
    v13 = v42;
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
  v14 = *(a1 + 304);
  *&v49 = 0;
  v15 = *(a1 + 272);
  DWORD2(v49) = 0;
  if (v14 + 1 > 4 * v15)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTetrahedronComponent>,4ul>::setBucketsCapacity((a1 + 264), (v14 + 4) >> 2);
    v15 = *(a1 + 272);
  }

  if (v15 <= v14 >> 2)
  {
    v41[1] = 0;
    memset(v58, 0, sizeof(v58));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v50 = 136315906;
    v51 = "operator[]";
    v52 = 1024;
    v53 = 858;
    v54 = 2048;
    v55 = v14 >> 2;
    v56 = 2048;
    v57 = v15;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_53;
  }

  if (*(a1 + 280))
  {
    v16 = a1 + 288;
  }

  else
  {
    v16 = *(a1 + 296);
  }

  v17 = *(v16 + 8 * (v14 >> 2));
  ++*(a1 + 304);
  ++*(a1 + 312);
  v18 = v17 + 112 * (v14 & 3);
  v19 = v42;
  v20 = v43;
  v21 = v44;
  *(v18 + 48) = v45;
  *(v18 + 16) = v20;
  *(v18 + 32) = v21;
  *v18 = v19;
  re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v18 + 56, &v45 + 8);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v42);
  v23 = *(a1 + 304);
  if (!v23)
  {
LABEL_53:
    re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  v24 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 264, v23 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTetrahedronComponent>::init(v24, a1 + 264, v41[0]);
  *&v58[0] = *(a1 + 304) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 320), v41, v58);
  v25 = *(a1 + 304);
  v26 = *(a1 + 424);
  if ((v25 & 0x3F) != 0)
  {
    v27 = (v25 >> 6) + 1;
  }

  else
  {
    v27 = v25 >> 6;
  }

  *(a1 + 424) = v25;
  *&v42 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 384), v27, &v42);
  if (v25 && v26 > v25)
  {
    v28 = 63;
    v29 = *(a1 + 424) & 0x3FLL;
    if (v29 && v29 != 63)
    {
      v28 = ~(-1 << v29);
    }

    if (*(a1 + 400))
    {
      v30 = a1 + 408;
    }

    else
    {
      v30 = *(a1 + 416);
    }

    *(v30 + 8 * *(a1 + 392) - 8) &= v28;
  }

  v31 = *(a1 + 304);
  v32 = *(a1 + 472);
  if ((v31 & 0x3F) != 0)
  {
    v33 = (v31 >> 6) + 1;
  }

  else
  {
    v33 = v31 >> 6;
  }

  *(a1 + 472) = v31;
  *&v42 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 432), v33, &v42);
  if (v31 && v32 > v31)
  {
    v34 = 63;
    v35 = *(a1 + 472) & 0x3FLL;
    if (v35 && v35 != 63)
    {
      v34 = ~(-1 << v35);
    }

    if (*(a1 + 448))
    {
      v36 = a1 + 456;
    }

    else
    {
      v36 = *(a1 + 464);
    }

    *(v36 + 8 * *(a1 + 440) - 8) &= v34;
  }

  v13 = *&v58[0];
LABEL_49:
  re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 432, v13);
  if (*(a1 + 496) == 1)
  {
    v37 = *(a1 + 480);
    v38 = *(v41[0] + 376);
    LOWORD(v42) = 257;
    DWORD1(v42) = 1023969417;
    BYTE8(v42) = 0;
    re::ecs2::System::setTaskOptions(v37, v38, &v42);
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1 + 264);
  }

  v39 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::PrimitiveTetrahedronComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  *&v42 = a1 + 224;
  *(&v42 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveTetrahedronComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitiveTetrahedronComponent>::deactivateComponent,re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitiveTetrahedronComponent>>;
  *&v43 = 0;
  *(&v43 + 1) = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveTetrahedronComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveTetrahedronComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveTetrahedronComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
  return re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v39 + 184), &v42);
}

void re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitiveTetrahedronComponent>::willRemoveSceneFromECSService(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  *&v17 = a2;
  v4 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 320), &v17);
  if (v4 != -1)
  {
    v5 = *(a1 + 328) + 16 * v4;
    re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 384, *(v5 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 432, *(v5 + 8));
    v6 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 264, *(v5 + 8));
    if (*v6)
    {
      v7 = v6;
      *v6 = 0;
      v8 = v6 + 1;
      v9 = *(v6[1] + 288);
      if (v9)
      {
        v10 = v6[12];
        if (v10)
        {
          for (i = 0; i != v10; ++i)
          {
            v12 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v7 + 7), i);
            re::EventBus::unsubscribe(v9, *v12, *(v12 + 8));
          }
        }
      }

      re::BucketArray<RESubscriptionHandle,8ul>::deinit((v7 + 7));
      v13 = 0;
      v14 = v7 + 3;
      do
      {
        v15 = v7[2];
        if (*v15)
        {
          re::ecs2::ComponentBucketsBase::removeBucket(v15, v14[v13]);
        }

        v14[v13++] = -1;
      }

      while (v13 != 4);
      *v8 = 0;
      v8[1] = 0;
    }

    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(a1 + 320, &v17);
  }

  v16 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::PrimitiveTetrahedronComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  *&v17 = a1 + 224;
  *(&v17 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveTetrahedronComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitiveTetrahedronComponent>::deactivateComponent,re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitiveTetrahedronComponent>>;
  v18 = 0;
  v19 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveTetrahedronComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveTetrahedronComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveTetrahedronComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
  re::Event<re::GeometricObjectBase>::removeSubscription(v16 + 184, &v17);
}

void re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitiveTetrahedronComponent>::update(void *a1, uint64_t a2, uint64_t a3)
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
  v5 = a1[59];
  if ((v5 & 0x3F) != 0)
  {
    v6 = (v5 >> 6) + 1;
  }

  else
  {
    v6 = v5 >> 6;
  }

  v41 = a1[59];
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
      v11 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 40, v31);
      re::DynamicBitset<unsigned long long,64ul>::setBit(&v36, *(a1[41] + 16 * v11 + 8));
      v9 -= 8;
    }

    while (v9);
  }

  re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v36, (a1 + 54));
  v32 = 1;
  v33 = 0;
  v34 = 0;
  v31[0] = v42;
  v31[1] = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v31, 0);
  v32 += 2;
  v12 = a1[59];
  if ((v12 & 0x3F) != 0)
  {
    v13 = (v12 >> 6) + 1;
  }

  else
  {
    v13 = v12 >> 6;
  }

  v35 = a1[59];
  v43 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(v31, v13, &v43);
  re::DynamicBitset<unsigned long long,64ul>::subtractBitSet((a1 + 54), &v36);
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
        v21 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[]((a1 + 33), FirstBitSet);
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
  re::DynamicBitset<unsigned long long,64ul>::orWithBitSet((a1 + 54), v31);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate((a1 + 33));
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

unint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::PrimitiveTetrahedronComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::PrimitiveTetrahedronComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
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

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTetrahedronComponent>::setComponentState(a2, v11, v7);
  }

  return result;
}

BOOL re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitiveTetrahedronComponent>::processDirtyComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = (*(**(*(a1 + 8) + 40) + 32))(*(*(a1 + 8) + 40));
  v8 = re::ServiceLocator::service<re::AssetService>(v7);
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v43, a5, 0);
  v57 = a4;
  v58 = v43;
  v59 = v44;
  if (v43 != a5 || v44 != 0xFFFFFFFFLL)
  {
    do
    {
      v10 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v58);
      v11 = *v10;
      v12 = *(*v10 + 16);
      if (v12)
      {
        *(v11 + 96) = *(v11 + 28);
        *(v11 + 103) = *(v11 + 35);
        v13 = *(v11 + 40);
        *(v11 + 108) = v13;
        v14 = *(v11 + 41);
        *(v11 + 109) = v14;
        re::MeshPrimitiveProvider::makeDescriptor(v11 + 28, v13, v14, &v43);
        (*(*v8 + 40))(&v41, v8, &v43);
        v15 = *(v11 + 48);
        *(v11 + 48) = v41;
        v41 = v15;
        v16 = *(v11 + 64);
        *(v11 + 64) = v42;
        v42 = v16;
        re::AssetHandle::~AssetHandle(&v41);
        re::AssetHandle::loadNow(*(v11 + 56), 0);
        v17 = *(v11 + 56);
        if (!v17 || (v18 = atomic_load((v17 + 896)), v19 = (a3 + 32), v18 != 3))
        {
          v20 = *(v12 + 192);
          if (v20 && *(v20 + 40) != *(v11 + 56))
          {
            re::AssetHandle::operator=(v20 + 32, (v11 + 48));
            re::ecs2::Component::markDirty(v20);
          }

          v19 = (a3 + 48);
          if (*(v11 + 42) == 1)
          {
            v21 = re::ecs2::EntityComponentCollection::get((v12 + 48), re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
            v19 = (a3 + 48);
            if (v21)
            {
              v19 = (a3 + 48);
              if (!*(v11 + 80))
              {
                v29 = v21;
                v30 = re::internal::buildCollisionShape((v11 + 28), v22, v23, v24, v25, v26, v27, v28);
                v31 = re::CollisionShapeAsset::assetType(v30);
                (*(*v8 + 424))(&v41, v8, v30, v31, 0, 2, 0);
                v33 = *(v11 + 72);
                v32 = (v11 + 72);
                *v32 = v41;
                v41 = v33;
                v34 = v32[2];
                v32[2] = v42;
                v42 = v34;
                re::AssetHandle::~AssetHandle(&v41);
                re::AssetHandle::operator=((v29 + 4), v32);
                re::ecs2::Component::markDirty(v29);
                v19 = (a3 + 48);
              }
            }
          }
        }

        v35 = v57;
        v36 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v58);
        re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v35, v36, *v19);
        if (v55)
        {
          if (BYTE8(v55))
          {
            (*(*v55 + 40))();
          }

          v55 = 0u;
          v56 = 0u;
        }

        if (v50)
        {
          if (v54)
          {
            (*(*v50 + 40))();
          }

          v54 = 0;
          v51 = 0;
          v52 = 0;
          v50 = 0;
          ++v53;
        }

        if (v45)
        {
          if (v49)
          {
            (*(*v45 + 40))();
          }

          v49 = 0;
          v46 = 0;
          v47 = 0;
          v45 = 0;
          ++v48;
        }

        if (v43 && (v44 & 1) != 0)
        {
          (*(*v43 + 40))();
        }
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v58);
    }

    while (v58 != a5 || v59 != 0xFFFF || HIWORD(v59) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::PrimitiveTetrahedronComponent>::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTetrahedronComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
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

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTetrahedronComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTetrahedronComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTetrahedronComponent>,4ul>::setBucketsCapacity(void *result, unint64_t a2)
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

uint64_t *re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTetrahedronComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::PrimitiveTetrahedronComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) + 480;
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
    *v10 = &unk_1F5CFD748;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTetrahedronComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::PrimitiveTetrahedronComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CFD7A0;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTetrahedronComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::PrimitiveTetrahedronComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CFD7F8;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTetrahedronComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::PrimitiveTetrahedronComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CFD850;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTetrahedronComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::PrimitiveTetrahedronComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
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
        *v37 = &unk_1F5CFD748;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTetrahedronComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CFD7A0;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTetrahedronComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CFD7F8;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTetrahedronComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CFD850;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTetrahedronComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTetrahedronComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PrimitiveTetrahedronComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTetrahedronComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTetrahedronComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PrimitiveTetrahedronComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTetrahedronComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTetrahedronComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PrimitiveTetrahedronComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTetrahedronComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTetrahedronComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PrimitiveTetrahedronComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTetrahedronComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTetrahedronComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTetrahedronComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTetrahedronComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTetrahedronComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTetrahedronComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTetrahedronComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTetrahedronComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTetrahedronComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFD748;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTetrahedronComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTetrahedronComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFD748;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTetrahedronComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTetrahedronComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTetrahedronComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTetrahedronComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFD7A0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTetrahedronComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTetrahedronComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFD7A0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTetrahedronComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTetrahedronComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTetrahedronComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTetrahedronComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFD7F8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTetrahedronComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTetrahedronComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFD7F8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTetrahedronComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTetrahedronComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTetrahedronComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTetrahedronComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFD850;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTetrahedronComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTetrahedronComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFD850;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveTetrahedronComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitiveTetrahedronComponent>::deactivateComponent,re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitiveTetrahedronComponent>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a4)
  {
    v5 = 8 * a4;
    do
    {
      v6 = *a3;
      v7 = *(*a3 + 48);
      if (v7)
      {

        *(v6 + 48) = 0;
      }

      *(v6 + 56) = 0;
      v8 = *(v6 + 72);
      if (v8)
      {

        *(v6 + 72) = 0;
      }

      *(v6 + 80) = 0;
      *(v6 + 96) = 1;
      *(v6 + 100) = 1065353216;
      *(v6 + 104) = 257;
      ++a3;
      *(v6 + 106) = 0;
      v5 -= 8;
    }

    while (v5);
  }

  return 0;
}

uint64_t re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveTetrahedronComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveTetrahedronComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveTetrahedronComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
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

uint64_t re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitiveTubeComponent>::PrimitiveComponentSystemBase(uint64_t a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = re::ecs2::System::System(a1, 1, 1);
  *v2 = &unk_1F5CFD950;
  v3 = v2 + 28;
  v2[28] = &unk_1F5CFD9C8;
  v2[29] = v2;
  v2[31] = 0;
  v2[32] = 0;
  v2[30] = 0;
  v10[0] = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
  v10[1] = re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v9[0] = v10;
  v9[1] = 2;
  v4 = re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((v2 + 30), v9);
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 1;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 288) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 1;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0;
  *(a1 + 448) = 1;
  *(a1 + 481) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  v7 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((a1 + 384), 0);
  *(a1 + 400) += 2;
  *(a1 + 424) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((a1 + 432), 0);
  *(a1 + 448) += 2;
  *(a1 + 472) = 0;
  *(a1 + 480) = a1;
  *(a1 + 488) = v3;
  *(a1 + 496) = 1;
  return a1;
}

void re::ecs2::PrimitiveTubeSystem::~PrimitiveTubeSystem(re::ecs2::PrimitiveTubeSystem *this)
{
  *this = &unk_1F5CFD950;
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 33);
  *(this + 28) = &unk_1F5CFD9C8;
  re::FixedArray<CoreIKTransform>::deinit(this + 30);

  re::ecs2::System::~System(this);
}

{
  *this = &unk_1F5CFD950;
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 33);
  *(this + 28) = &unk_1F5CFD9C8;
  re::FixedArray<CoreIKTransform>::deinit(this + 30);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

double re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitiveTubeComponent>::willAddSceneToECSService(uint64_t a1, uint64_t a2)
{
  v59 = *MEMORY[0x1E69E9840];
  v41[0] = a2;
  v4 = *(a1 + 392);
  v5 = *(a1 + 400);
  if (v4 >= 0xB)
  {
    if (v5)
    {
      v6 = (a1 + 408);
    }

    else
    {
      v6 = *(a1 + 416);
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
    v7 = (a1 + 408);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *(a1 + 416);
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
    *&v42 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(a1 + 384, 0);
    v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 264, v42);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTubeComponent>::init(v12, a1 + 264, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 320), v41, &v42);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 384, v42);
    v13 = v42;
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
  v14 = *(a1 + 304);
  *&v49 = 0;
  v15 = *(a1 + 272);
  DWORD2(v49) = 0;
  if (v14 + 1 > 4 * v15)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTubeComponent>,4ul>::setBucketsCapacity((a1 + 264), (v14 + 4) >> 2);
    v15 = *(a1 + 272);
  }

  if (v15 <= v14 >> 2)
  {
    v41[1] = 0;
    memset(v58, 0, sizeof(v58));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v50 = 136315906;
    v51 = "operator[]";
    v52 = 1024;
    v53 = 858;
    v54 = 2048;
    v55 = v14 >> 2;
    v56 = 2048;
    v57 = v15;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_53;
  }

  if (*(a1 + 280))
  {
    v16 = a1 + 288;
  }

  else
  {
    v16 = *(a1 + 296);
  }

  v17 = *(v16 + 8 * (v14 >> 2));
  ++*(a1 + 304);
  ++*(a1 + 312);
  v18 = v17 + 112 * (v14 & 3);
  v19 = v42;
  v20 = v43;
  v21 = v44;
  *(v18 + 48) = v45;
  *(v18 + 16) = v20;
  *(v18 + 32) = v21;
  *v18 = v19;
  re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v18 + 56, &v45 + 8);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v42);
  v23 = *(a1 + 304);
  if (!v23)
  {
LABEL_53:
    re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  v24 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 264, v23 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTubeComponent>::init(v24, a1 + 264, v41[0]);
  *&v58[0] = *(a1 + 304) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 320), v41, v58);
  v25 = *(a1 + 304);
  v26 = *(a1 + 424);
  if ((v25 & 0x3F) != 0)
  {
    v27 = (v25 >> 6) + 1;
  }

  else
  {
    v27 = v25 >> 6;
  }

  *(a1 + 424) = v25;
  *&v42 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 384), v27, &v42);
  if (v25 && v26 > v25)
  {
    v28 = 63;
    v29 = *(a1 + 424) & 0x3FLL;
    if (v29 && v29 != 63)
    {
      v28 = ~(-1 << v29);
    }

    if (*(a1 + 400))
    {
      v30 = a1 + 408;
    }

    else
    {
      v30 = *(a1 + 416);
    }

    *(v30 + 8 * *(a1 + 392) - 8) &= v28;
  }

  v31 = *(a1 + 304);
  v32 = *(a1 + 472);
  if ((v31 & 0x3F) != 0)
  {
    v33 = (v31 >> 6) + 1;
  }

  else
  {
    v33 = v31 >> 6;
  }

  *(a1 + 472) = v31;
  *&v42 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 432), v33, &v42);
  if (v31 && v32 > v31)
  {
    v34 = 63;
    v35 = *(a1 + 472) & 0x3FLL;
    if (v35 && v35 != 63)
    {
      v34 = ~(-1 << v35);
    }

    if (*(a1 + 448))
    {
      v36 = a1 + 456;
    }

    else
    {
      v36 = *(a1 + 464);
    }

    *(v36 + 8 * *(a1 + 440) - 8) &= v34;
  }

  v13 = *&v58[0];
LABEL_49:
  re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 432, v13);
  if (*(a1 + 496) == 1)
  {
    v37 = *(a1 + 480);
    v38 = *(v41[0] + 376);
    LOWORD(v42) = 257;
    DWORD1(v42) = 1023969417;
    BYTE8(v42) = 0;
    re::ecs2::System::setTaskOptions(v37, v38, &v42);
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1 + 264);
  }

  v39 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::PrimitiveTubeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  *&v42 = a1 + 224;
  *(&v42 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveTubeComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitiveTubeComponent>::deactivateComponent,re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitiveTubeComponent>>;
  *&v43 = 0;
  *(&v43 + 1) = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveTubeComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveTubeComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveTubeComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
  return re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v39 + 184), &v42);
}

void re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitiveTubeComponent>::willRemoveSceneFromECSService(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  *&v17 = a2;
  v4 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 320), &v17);
  if (v4 != -1)
  {
    v5 = *(a1 + 328) + 16 * v4;
    re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 384, *(v5 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 432, *(v5 + 8));
    v6 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 264, *(v5 + 8));
    if (*v6)
    {
      v7 = v6;
      *v6 = 0;
      v8 = v6 + 1;
      v9 = *(v6[1] + 288);
      if (v9)
      {
        v10 = v6[12];
        if (v10)
        {
          for (i = 0; i != v10; ++i)
          {
            v12 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v7 + 7), i);
            re::EventBus::unsubscribe(v9, *v12, *(v12 + 8));
          }
        }
      }

      re::BucketArray<RESubscriptionHandle,8ul>::deinit((v7 + 7));
      v13 = 0;
      v14 = v7 + 3;
      do
      {
        v15 = v7[2];
        if (*v15)
        {
          re::ecs2::ComponentBucketsBase::removeBucket(v15, v14[v13]);
        }

        v14[v13++] = -1;
      }

      while (v13 != 4);
      *v8 = 0;
      v8[1] = 0;
    }

    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(a1 + 320, &v17);
  }

  v16 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::PrimitiveTubeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  *&v17 = a1 + 224;
  *(&v17 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveTubeComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitiveTubeComponent>::deactivateComponent,re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitiveTubeComponent>>;
  v18 = 0;
  v19 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveTubeComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveTubeComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveTubeComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
  re::Event<re::GeometricObjectBase>::removeSubscription(v16 + 184, &v17);
}

void re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitiveTubeComponent>::update(void *a1, uint64_t a2, uint64_t a3)
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
  v5 = a1[59];
  if ((v5 & 0x3F) != 0)
  {
    v6 = (v5 >> 6) + 1;
  }

  else
  {
    v6 = v5 >> 6;
  }

  v41 = a1[59];
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
      v11 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 40, v31);
      re::DynamicBitset<unsigned long long,64ul>::setBit(&v36, *(a1[41] + 16 * v11 + 8));
      v9 -= 8;
    }

    while (v9);
  }

  re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v36, (a1 + 54));
  v32 = 1;
  v33 = 0;
  v34 = 0;
  v31[0] = v42;
  v31[1] = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v31, 0);
  v32 += 2;
  v12 = a1[59];
  if ((v12 & 0x3F) != 0)
  {
    v13 = (v12 >> 6) + 1;
  }

  else
  {
    v13 = v12 >> 6;
  }

  v35 = a1[59];
  v43 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(v31, v13, &v43);
  re::DynamicBitset<unsigned long long,64ul>::subtractBitSet((a1 + 54), &v36);
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
        v21 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[]((a1 + 33), FirstBitSet);
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
  re::DynamicBitset<unsigned long long,64ul>::orWithBitSet((a1 + 54), v31);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate((a1 + 33));
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

unint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::PrimitiveTubeComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::PrimitiveTubeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
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

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTubeComponent>::setComponentState(a2, v11, v7);
  }

  return result;
}

BOOL re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitiveTubeComponent>::processDirtyComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = (*(**(*(a1 + 8) + 40) + 32))(*(*(a1 + 8) + 40));
  v8 = re::ServiceLocator::service<re::AssetService>(v7);
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v36, a5, 0);
  v50 = a4;
  v51 = v36;
  v52 = v37;
  if (v36 != a5 || v37 != 0xFFFFFFFFLL)
  {
    do
    {
      v10 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v51);
      v11 = *v10;
      v12 = *(*v10 + 16);
      if (v12)
      {
        *(v11 + 104) = *(v11 + 28);
        *(v11 + 119) = *(v11 + 43);
        v13 = *(v11 + 48);
        *(v11 + 124) = v13;
        v14 = *(v11 + 49);
        *(v11 + 125) = v14;
        re::MeshPrimitiveProvider::makeDescriptor(v11 + 28, v13, v14, &v36);
        (*(*v8 + 40))(&v34, v8, &v36);
        v15 = *(v11 + 56);
        *(v11 + 56) = v34;
        v34 = v15;
        v16 = *(v11 + 72);
        *(v11 + 72) = v35;
        v35 = v16;
        re::AssetHandle::~AssetHandle(&v34);
        re::AssetHandle::loadNow(*(v11 + 64), 0);
        v17 = *(v11 + 64);
        if (!v17 || (v18 = atomic_load((v17 + 896)), v19 = (a3 + 32), v18 != 3))
        {
          v20 = *(v12 + 192);
          if (v20 && *(v20 + 40) != *(v11 + 64))
          {
            re::AssetHandle::operator=(v20 + 32, (v11 + 56));
            re::ecs2::Component::markDirty(v20);
          }

          v19 = (a3 + 48);
          if (*(v11 + 50) == 1)
          {
            v21 = re::ecs2::EntityComponentCollection::get((v12 + 48), re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
            v19 = (a3 + 48);
            if (v21)
            {
              v19 = (a3 + 48);
              if (!*(v11 + 88))
              {
                v22 = v21;
                v23 = re::internal::buildCollisionShape((v11 + 28));
                v24 = re::CollisionShapeAsset::assetType(v23);
                (*(*v8 + 424))(&v34, v8, v23, v24, 0, 2, 0);
                v26 = *(v11 + 80);
                v25 = (v11 + 80);
                *v25 = v34;
                v34 = v26;
                v27 = v25[2];
                v25[2] = v35;
                v35 = v27;
                re::AssetHandle::~AssetHandle(&v34);
                re::AssetHandle::operator=((v22 + 4), v25);
                re::ecs2::Component::markDirty(v22);
                v19 = (a3 + 48);
              }
            }
          }
        }

        v28 = v50;
        v29 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v51);
        re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v28, v29, *v19);
        if (v48)
        {
          if (BYTE8(v48))
          {
            (*(*v48 + 40))();
          }

          v48 = 0u;
          v49 = 0u;
        }

        if (v43)
        {
          if (v47)
          {
            (*(*v43 + 40))();
          }

          v47 = 0;
          v44 = 0;
          v45 = 0;
          v43 = 0;
          ++v46;
        }

        if (v38)
        {
          if (v42)
          {
            (*(*v38 + 40))();
          }

          v42 = 0;
          v39 = 0;
          v40 = 0;
          v38 = 0;
          ++v41;
        }

        if (v36 && (v37 & 1) != 0)
        {
          (*(*v36 + 40))();
        }
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v51);
    }

    while (v51 != a5 || v52 != 0xFFFF || HIWORD(v52) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::PrimitiveTubeComponent>::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTubeComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
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

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTubeComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTubeComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTubeComponent>,4ul>::setBucketsCapacity(void *result, unint64_t a2)
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

uint64_t *re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTubeComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::PrimitiveTubeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) + 480;
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
    *v10 = &unk_1F5CFDA30;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTubeComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::PrimitiveTubeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CFDA88;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTubeComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::PrimitiveTubeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CFDAE0;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTubeComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::PrimitiveTubeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CFDB38;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTubeComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::PrimitiveTubeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
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
        *v37 = &unk_1F5CFDA30;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTubeComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CFDA88;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTubeComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CFDAE0;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTubeComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CFDB38;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTubeComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTubeComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PrimitiveTubeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTubeComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTubeComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PrimitiveTubeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTubeComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTubeComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PrimitiveTubeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTubeComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTubeComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PrimitiveTubeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTubeComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTubeComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTubeComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTubeComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTubeComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTubeComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTubeComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTubeComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTubeComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFDA30;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTubeComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTubeComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFDA30;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTubeComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTubeComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTubeComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTubeComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFDA88;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTubeComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTubeComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFDA88;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTubeComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTubeComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTubeComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTubeComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFDAE0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTubeComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTubeComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFDAE0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTubeComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTubeComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTubeComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTubeComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFDB38;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTubeComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveTubeComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFDB38;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveTubeComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitiveTubeComponent>::deactivateComponent,re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitiveTubeComponent>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a4)
  {
    v5 = 8 * a4;
    do
    {
      v6 = *a3;
      v7 = *(*a3 + 56);
      if (v7)
      {

        *(v6 + 56) = 0;
      }

      *(v6 + 64) = 0;
      v8 = *(v6 + 80);
      if (v8)
      {

        *(v6 + 80) = 0;
      }

      *(v6 + 88) = 0;
      *(v6 + 104) = 65544;
      *(v6 + 108) = 0x3EC000003F800000;
      *(v6 + 116) = 1056964608;
      *(v6 + 120) = 257;
      ++a3;
      *(v6 + 122) = 0;
      v5 -= 8;
    }

    while (v5);
  }

  return 0;
}

uint64_t re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveTubeComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveTubeComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveTubeComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
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

void *re::ecs2::allocInfo_DepthMitigationStateService(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_372, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_372))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B2C48, "DepthMitigationStateService");
    __cxa_guard_release(&_MergedGlobals_372);
  }

  return &unk_1EE1B2C48;
}

void re::ecs2::initInfo_DepthMitigationStateService(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xCAFB391B7AE0888CLL;
  v6[1] = "DepthMitigationStateService";
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
  *(this + 8) = &re::ecs2::initInfo_DepthMitigationStateService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void *re::ecs2::allocInfo_VideoMaterialAttachment(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B2CE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B2CE0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B2DC0, "VideoMaterialAttachment");
    __cxa_guard_release(&qword_1EE1B2CE0);
  }

  return &unk_1EE1B2DC0;
}

void re::ecs2::initInfo_VideoMaterialAttachment(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v15[0] = 0x5307989427F46ACALL;
  v15[1] = "VideoMaterialAttachment";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE1B2CE8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B2CE8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::StringID>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "source";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1B2DB0 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::StringID>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "parameterName";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x1000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1B2DB8 = v13;
      __cxa_guard_release(&qword_1EE1B2CE8);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1B2DB0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::VideoMaterialAttachment>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::VideoMaterialAttachment>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::VideoMaterialAttachment>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::VideoMaterialAttachment>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v14 = v16;
}

void re::internal::defaultConstruct<re::ecs2::VideoMaterialAttachment>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  a3[1] = &str_67;
  a3[2] = 0;
  a3[3] = &str_67;
}

void re::internal::defaultDestruct<re::ecs2::VideoMaterialAttachment>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::StringID::destroyString((a3 + 16));

  re::StringID::destroyString(a3);
}

void *re::internal::defaultConstructV2<re::ecs2::VideoMaterialAttachment>(void *result)
{
  *result = 0;
  result[1] = &str_67;
  result[2] = 0;
  result[3] = &str_67;
  return result;
}

void re::internal::defaultDestructV2<re::ecs2::VideoMaterialAttachment>(uint64_t a1)
{
  re::StringID::destroyString((a1 + 16));

  re::StringID::destroyString(a1);
}

void *re::ecs2::allocInfo_VideoComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B2CF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B2CF8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B2EE0, "VideoComponent");
    __cxa_guard_release(&qword_1EE1B2CF8);
  }

  return &unk_1EE1B2EE0;
}

void re::ecs2::initInfo_VideoComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v75[0] = 0xEC997E67076F9DC4;
  v75[1] = "VideoComponent";
  if (v75[0])
  {
    if (v75[0])
    {
    }
  }

  *(this + 2) = v76;
  if ((atomic_load_explicit(&qword_1EE1B2CF0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B2CF0);
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
      qword_1EE1B2E50 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_AssetHandle(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "material";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x2000000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1B2E58 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_AssetHandle(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "m_video";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0xD000000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1B2E60 = v16;
      v17 = re::introspectionAllocator(v16);
      v18 = re::IntrospectionInfo<re::DynamicArray<re::ecs2::VideoMaterialAttachment>>::get(1);
      v19 = (*(*v17 + 32))(v17, 72, 8);
      *v19 = 1;
      *(v19 + 8) = "m_attachments";
      *(v19 + 16) = v18;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0x7800000003;
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;
      *(v19 + 56) = 0;
      *(v19 + 64) = 0;
      qword_1EE1B2E68 = v19;
      v20 = re::introspectionAllocator(v19);
      v22 = re::ecs2::introspect_VideoViewingMode(1, v21);
      v23 = (*(*v20 + 32))(v20, 72, 8);
      *v23 = 1;
      *(v23 + 8) = "desiredViewingMode";
      *(v23 + 16) = v22;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0x3800000008;
      *(v23 + 40) = 0;
      *(v23 + 48) = 0;
      *(v23 + 56) = 0;
      *(v23 + 64) = 0;
      qword_1EE1B2E70 = v23;
      v24 = re::introspectionAllocator(v23);
      v26 = re::ecs2::introspect_VideoViewingMode(1, v25);
      v27 = (*(*v24 + 32))(v24, 72, 8);
      *v27 = 1;
      *(v27 + 8) = "currentViewingMode";
      *(v27 + 16) = v26;
      *(v27 + 24) = 0;
      *(v27 + 32) = 0x3900000009;
      *(v27 + 40) = 0;
      *(v27 + 48) = 0;
      *(v27 + 56) = 0;
      *(v27 + 64) = 0;
      qword_1EE1B2E78 = v27;
      v28 = re::introspectionAllocator(v27);
      v29 = re::introspect_Vector2F(1);
      v30 = (*(*v28 + 32))(v28, 72, 8);
      *v30 = 1;
      *(v30 + 8) = "currentImageSize";
      *(v30 + 16) = v29;
      *(v30 + 24) = 0;
      *(v30 + 32) = 0x400000000ALL;
      *(v30 + 40) = 0;
      *(v30 + 48) = 0;
      *(v30 + 56) = 0;
      *(v30 + 64) = 0;
      qword_1EE1B2E80 = v30;
      v31 = re::introspectionAllocator(v30);
      v33 = re::introspect_BOOL(1, v32);
      v34 = (*(*v31 + 32))(v31, 72, 8);
      *v34 = 1;
      *(v34 + 8) = "forceStereoSideBySide";
      *(v34 + 16) = v33;
      *(v34 + 24) = 0;
      *(v34 + 32) = 0x480000000BLL;
      *(v34 + 40) = 0;
      *(v34 + 48) = 0;
      *(v34 + 56) = 0;
      *(v34 + 64) = 0;
      qword_1EE1B2E88 = v34;
      v35 = re::introspectionAllocator(v34);
      v37 = re::introspect_BOOL(1, v36);
      v38 = (*(*v35 + 32))(v35, 72, 8);
      *v38 = 1;
      *(v38 + 8) = "m_optOutOfAudioControl";
      *(v38 + 16) = v37;
      *(v38 + 24) = 0;
      *(v38 + 32) = 0x14B0000000ELL;
      *(v38 + 40) = 0;
      *(v38 + 48) = 0;
      *(v38 + 56) = 0;
      *(v38 + 64) = 0;
      qword_1EE1B2E90 = v38;
      v39 = re::introspectionAllocator(v38);
      v41 = re::introspect_uint32_t(1, v40);
      v42 = (*(*v39 + 32))(v39, 72, 8);
      *v42 = 1;
      *(v42 + 8) = "m_traits";
      *(v42 + 16) = v41;
      *(v42 + 24) = 0;
      *(v42 + 32) = 0x14C0000000FLL;
      *(v42 + 40) = 0;
      *(v42 + 48) = 0;
      *(v42 + 56) = 0;
      *(v42 + 64) = 0;
      qword_1EE1B2E98 = v42;
      v43 = re::introspectionAllocator(v42);
      v45 = re::introspect_BOOL(1, v44);
      v46 = (*(*v43 + 32))(v43, 72, 8);
      *v46 = 1;
      *(v46 + 8) = "m_readyToRender";
      *(v46 + 16) = v45;
      *(v46 + 24) = 0;
      *(v46 + 32) = 0x4900000010;
      *(v46 + 40) = 0;
      *(v46 + 48) = 0;
      *(v46 + 56) = 0;
      *(v46 + 64) = 0;
      qword_1EE1B2EA0 = v46;
      v47 = re::introspectionAllocator(v46);
      v49 = re::introspect_BOOL(1, v48);
      v50 = (*(*v47 + 32))(v47, 72, 8);
      *v50 = 1;
      *(v50 + 8) = "m_videoReceiverCreated";
      *(v50 + 16) = v49;
      *(v50 + 24) = 0;
      *(v50 + 32) = 0x15E00000011;
      *(v50 + 40) = 0;
      *(v50 + 48) = 0;
      *(v50 + 56) = 0;
      *(v50 + 64) = 0;
      qword_1EE1B2EA8 = v50;
      v51 = re::introspectionAllocator(v50);
      v53 = re::introspect_BOOL(1, v52);
      v54 = (*(*v51 + 32))(v51, 72, 8);
      *v54 = 1;
      *(v54 + 8) = "m_specularAndFresnelEnabled";
      *(v54 + 16) = v53;
      *(v54 + 24) = 0;
      *(v54 + 32) = 0x15F00000012;
      *(v54 + 40) = 0;
      *(v54 + 48) = 0;
      *(v54 + 56) = 0;
      *(v54 + 64) = 0;
      qword_1EE1B2EB0 = v54;
      v55 = re::introspectionAllocator(v54);
      v57 = re::ecs2::introspect_SpatialVideoMode(1, v56);
      v58 = (*(*v55 + 32))(v55, 72, 8);
      *v58 = 1;
      *(v58 + 8) = "m_desiredSpatialVideoMode";
      *(v58 + 16) = v57;
      *(v58 + 24) = 0;
      *(v58 + 32) = 0x4B00000015;
      *(v58 + 40) = 0;
      *(v58 + 48) = 0;
      *(v58 + 56) = 0;
      *(v58 + 64) = 0;
      qword_1EE1B2EB8 = v58;
      v59 = re::introspectionAllocator(v58);
      v61 = re::ecs2::introspect_SpatialVideoMode(1, v60);
      v62 = (*(*v59 + 32))(v59, 72, 8);
      *v62 = 1;
      *(v62 + 8) = "m_currentSpatialVideoMode";
      *(v62 + 16) = v61;
      *(v62 + 24) = 0;
      *(v62 + 32) = 0x4A00000016;
      *(v62 + 40) = 0;
      *(v62 + 48) = 0;
      *(v62 + 56) = 0;
      *(v62 + 64) = 0;
      qword_1EE1B2EC0 = v62;
      v63 = re::introspectionAllocator(v62);
      v65 = re::introspect_AssetHandle(1, v64);
      v66 = (*(*v63 + 32))(v63, 72, 8);
      *v66 = 1;
      *(v66 + 8) = "m_loadingAsset";
      *(v66 + 16) = v65;
      *(v66 + 24) = 0;
      *(v66 + 32) = 0x5000000017;
      *(v66 + 40) = 0;
      *(v66 + 48) = 0;
      *(v66 + 56) = 0;
      *(v66 + 64) = 0;
      qword_1EE1B2EC8 = v66;
      v67 = re::introspectionAllocator(v66);
      v69 = re::introspect_BOOL(1, v68);
      v70 = (*(*v67 + 32))(v67, 72, 8);
      *v70 = 1;
      *(v70 + 8) = "m_spatialGalleryRendering";
      *(v70 + 16) = v69;
      *(v70 + 24) = 0;
      *(v70 + 32) = 0x6800000018;
      *(v70 + 40) = 0;
      *(v70 + 48) = 0;
      *(v70 + 56) = 0;
      *(v70 + 64) = 0;
      qword_1EE1B2ED0 = v70;
      v71 = re::introspectionAllocator(v70);
      v72 = re::introspect_Vector2F(1);
      v73 = (*(*v71 + 32))(v71, 72, 8);
      *v73 = 1;
      *(v73 + 8) = "m_spatialGalleryScaleFactorForCornerRadius";
      *(v73 + 16) = v72;
      *(v73 + 24) = 0;
      *(v73 + 32) = 0x7000000019;
      *(v73 + 40) = 0;
      *(v73 + 48) = 0;
      *(v73 + 56) = 0;
      *(v73 + 64) = 0;
      qword_1EE1B2ED8 = v73;
      __cxa_guard_release(&qword_1EE1B2CF0);
    }
  }

  *(this + 2) = 0x16800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 18;
  *(this + 8) = &qword_1EE1B2E50;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::VideoComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::VideoComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::VideoComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::VideoComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs214VideoComponentELNS_17RealityKitReleaseE3EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v74 = v76;
}

double re::internal::defaultConstruct<re::ecs2::VideoComponent>(int a1, int a2, re::ecs2::VideoComponent *this)
{
  *(this + 44) = 0;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
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
  return re::ecs2::VideoComponent::VideoComponent(this);
}

double re::internal::defaultConstructV2<re::ecs2::VideoComponent>(re::ecs2::VideoComponent *this)
{
  *(this + 44) = 0;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
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
  return re::ecs2::VideoComponent::VideoComponent(this);
}

void *re::ecs2::allocInfo_VideoComponentSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B2D00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B2D00))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B2F70, "VideoComponentSystem");
    __cxa_guard_release(&qword_1EE1B2D00);
  }

  return &unk_1EE1B2F70;
}

void re::ecs2::initInfo_VideoComponentSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xF12E313453CDF762;
  v6[1] = "VideoComponentSystem";
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
  *(this + 8) = &re::ecs2::initInfo_VideoComponentSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::VideoComponentSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::VideoComponentSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::VideoComponentSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::VideoComponentSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::VideoComponentSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::VideoComponentSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

uint64_t re::ecs2::VideoMaterialAttachment::isTextureAttachment(re::ecs2::VideoMaterialAttachment *this, const re::StringID *a2)
{
  v2 = *this >> 1;
  if (v2 == 0x32970A2E88169C84)
  {
    v5 = *(this + 1);
    if (v5 != "REVideoAttachmentConstantImageFunction")
    {
      return strcmp(v5, "REVideoAttachmentConstantImageFunction") != 0;
    }
  }

  else
  {
    if (v2 != 0x41C03F11B6A8BA59)
    {
      return 1;
    }

    v3 = *(this + 1);
    if (v3 != "REVideoAttachmentConstantYCbCrMatrix")
    {
      result = strcmp(v3, "REVideoAttachmentConstantYCbCrMatrix");
      if (!result)
      {
        return result;
      }

      return 1;
    }
  }

  return 0;
}

void re::ecs2::VideoComponent::~VideoComponent(re::ecs2::VideoComponent *this)
{
  *this = &unk_1F5CFDB90;
  v2 = (this + 32);
  re::AssetHandle::~AssetHandle((this + 208));
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(this + 160);
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(this + 120);
  re::AssetHandle::~AssetHandle((this + 80));
  re::AssetHandle::~AssetHandle(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::ecs2::VideoComponent::~VideoComponent(this);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::VideoComponent::removeAttachment(uint64_t a1, const StringID *a2)
{
  re::StringID::StringID(&v21, a2);
  v20 = a2;
  v4 = re::StringID::StringID(&v23, a2 + 1);
  v5 = *(a1 + 136);
  if (!v5)
  {
    goto LABEL_34;
  }

  v6 = 0;
  for (i = 0; i < v5; ++i)
  {
    v8 = *(a1 + 152);
    v9 = v21;
    v10 = (v8 + 32 * i);
    if ((v21 ^ *v10) <= 1)
    {
      v12 = v22;
      v11 = v23;
      v13 = __s2;
      do
      {
        v4 = v10[1];
        if (v4 != v12)
        {
          v4 = strcmp(v4, v12);
          if (v4)
          {
            break;
          }
        }

        if ((v11 ^ v10[2]) > 1)
        {
          break;
        }

        v4 = v10[3];
        if (v4 != v13)
        {
          v4 = strcmp(v4, v13);
          if (v4)
          {
            break;
          }
        }

        if (++i >= v5)
        {
          goto LABEL_15;
        }

        v14 = v10[4];
        v10 += 4;
      }

      while ((v9 ^ v14) <= 1);
    }

    if (i != v6)
    {
      v15 = re::StringID::operator=((v8 + 32 * v6), v10);
      v4 = re::StringID::operator=((v15 + 16), v10 + 2);
      v5 = *(a1 + 136);
    }

    ++v6;
  }

LABEL_15:
  if (v6 != v5)
  {
    v16 = *(a1 + 152) + 32 * v6;
    v17 = 32 * v5 - 32 * v6;
    do
    {
      re::StringID::destroyString((v16 + 16));
      re::StringID::destroyString(v16);
      v16 += 32;
      v17 -= 32;
    }

    while (v17);
    v19 = *(a1 + 136);
    *(a1 + 136) = v6;
    ++*(a1 + 144);
    if (v23)
    {
      if (v23)
      {
      }
    }

    v23 = 0;
    __s2 = &str_67;
    if (v21)
    {
      if (v21)
      {
      }
    }

    v21 = 0;
    v22 = &str_67;
    if (v19 != v6)
    {
      re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((a1 + 160), v20);
    }
  }

  else
  {
LABEL_34:
    if (v23)
    {
      if (v23)
      {
      }
    }

    v23 = 0;
    __s2 = &str_67;
    if (v21)
    {
      if (v21)
      {
      }
    }
  }
}

uint64_t re::ecs2::VideoComponent::getReadyToRender(re::ecs2::VideoComponent *this)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = re::VideoDefaults::logEnabled(this);
  if (v2)
  {
    v4 = *(this + 2);
    v5 = *(v4 + 312);
    v6 = *(v4 + 32);
    if (!v6 || (*(v6 + 304) & 0x80) != 0)
    {
      v10 = *re::videoLogObjects(v2);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        return *(this + 73);
      }

      v13 = @"False";
      if (*(this + 73))
      {
        v13 = @"True";
      }

      v15 = 138412546;
      v16 = v13;
      v17 = 2048;
      v18 = v5;
      v12 = "[VideoComponentSystem]->getReadyToRender :: Getting isReadyToRender to %@ with VideoComponent with EntityID %llu";
    }

    else
    {
      v7 = *(v6 + 312);
      v8 = *(v6 + 32);
      if (!v8 || (*(v8 + 304) & 0x80) != 0)
      {
        v10 = *re::videoLogObjects(v2);
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          return *(this + 73);
        }

        v14 = @"False";
        if (*(this + 73))
        {
          v14 = @"True";
        }

        v15 = 138412546;
        v16 = v14;
        v17 = 2048;
        v18 = v7;
        v12 = "[VideoComponentSystem]->getReadyToRender :: Getting isReadyToRender to %@ with VideoComponent Parent with EntityID %llu";
      }

      else
      {
        v9 = *(v8 + 312);
        v10 = *re::videoLogObjects(v2);
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          return *(this + 73);
        }

        v11 = @"False";
        if (*(this + 73))
        {
          v11 = @"True";
        }

        v15 = 138412546;
        v16 = v11;
        v17 = 2048;
        v18 = v9;
        v12 = "[VideoComponentSystem]->getReadyToRender :: Getting isReadyToRender to %@ with VideoComponent Parent Parent with EntityID %llu";
      }
    }

    _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, v12, &v15, 0x16u);
  }

  return *(this + 73);
}

void re::ecs2::VideoComponent::queryMaterialPropertiesIfNeeded(re::ecs2::VideoComponent *this)
{
  v2 = re::AssetHandle::loadedAsset<re::MaterialAsset>((this + 32));
  v3 = (this + 320);
  if (!v2)
  {
    *(this + 327) = 0;
    *v3 = 0;
    return;
  }

  v4 = v2;
  v5 = *v3;
  v6 = *(re::AssetHandle::assetInfo((this + 32)) + 10);
  if (v6 == -1)
  {
    v6 = 0;
  }

  if (v5 != v6)
  {
    v7 = *(re::AssetHandle::assetInfo((this + 32)) + 10);
    if (v7 == -1)
    {
      v7 = 0;
    }

    *v3 = v7;
    v8 = *(v4 + 1776);
    if (v8)
    {
      v9 = *(v8 + 16);
      if (v9)
      {
        v10 = v9 + 1;
        v11 = v9[15];
        if (!v11)
        {
          v17 = 0;
          goto LABEL_23;
        }

        v12 = 0;
        v13 = 0;
        v14 = v9[16];
        v15 = 8 * v11;
        while (1)
        {
          v16 = *v14;
          if (v12)
          {
            v12 = 1;
            if (v13)
            {
              goto LABEL_15;
            }
          }

          else
          {
            v12 = strcmp(*v16, "VideoColor") == 0;
            if (v13)
            {
LABEL_15:
              v13 = 1;
              goto LABEL_16;
            }
          }

          v13 = strcmp(*v16, "VideoColorOpaque") == 0;
LABEL_16:
          ++v14;
          v15 -= 8;
          if (!v15)
          {
            v17 = v12 && v13;
LABEL_23:
            v46 = v9 + 34;
            v19 = v9[36];
            if (v19 < 0x10)
            {
              goto LABEL_29;
            }

            v20 = 0;
            v21 = v9[34];
            v22 = v19 >> 4;
            while (1)
            {
              v23 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v21), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
              v47 = v23 ^ 0xFFFFLL;
              if (v23 != 0xFFFFLL)
              {
                break;
              }

              v20 -= 16;
              ++v21;
              if (!--v22)
              {
                goto LABEL_29;
              }
            }

            v24 = __clz(__rbit64(v23 ^ 0xFFFFLL));
            v25 = v24 - v20;
            v48 = v24 - v20;
            if (v24 + 1 == v20)
            {
LABEL_29:
              v26 = 0;
LABEL_30:
              v46 = v9 + 100;
              v27 = v9[102];
              if (v27 < 0x10)
              {
                goto LABEL_36;
              }

              v28 = 0;
              v29 = v9[100];
              v30 = v27 >> 4;
              while (1)
              {
                v31 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v29), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
                v47 = v31 ^ 0xFFFFLL;
                if (v31 != 0xFFFFLL)
                {
                  break;
                }

                v28 -= 16;
                ++v29;
                if (!--v30)
                {
                  goto LABEL_36;
                }
              }

              v32 = __clz(__rbit64(v31 ^ 0xFFFFLL));
              v33 = v32 - v28;
              v48 = v32 - v28;
              if (v32 + 1 == v28)
              {
LABEL_36:
                v18 = 0;
                v34 = 0;
                v35 = 0;
                goto LABEL_37;
              }

              v35 = 0;
              v34 = 0;
              v38 = 0;
              v43 = 0;
              v45 = 0;
              v41 = 0;
              while (2)
              {
                v39 = *(v46[1] + 40 * v33 + 16);
                if (v39 <= 0x434F49B34064CA12)
                {
                  switch(v39)
                  {
                    case 0x267D7E6C64117D48:
                      v35 = 1;
                      break;
                    case 0x434F49B3406455B4:
                      v41 = 1;
                      break;
                    case 0x434F49B3406455D3:
                      LOBYTE(v45) = 1;
                      break;
                    default:
                      goto LABEL_69;
                  }
                }

                else if (v39 > 0x434F49B340653E71)
                {
                  if (v39 == 0x434F49B340653E72)
                  {
                    BYTE4(v43) = 1;
                  }

                  else
                  {
                    if (v39 != 0x5D7F34ED9D59B3C2)
                    {
                      goto LABEL_69;
                    }

                    v34 = 1;
                  }
                }

                else if (v39 == 0x434F49B34064CA13)
                {
                  LOBYTE(v43) = 1;
                }

                else
                {
                  if (v39 == 0x434F49B34064CA32)
                  {
                    BYTE4(v45) = 1;
                    goto LABEL_73;
                  }

LABEL_69:
                  v38 |= v39 == 0x434F49B340653E91;
                }

LABEL_73:
                re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v46);
                v33 = v48;
                if (v48 == -1)
                {
                  v18 = v41 & v43 & BYTE4(v43) & v45 & BYTE4(v45) & v38;
LABEL_37:

                  LOBYTE(v8) = v26 & v35 & v34;
LABEL_38:
                  *(this + 328) = v17;
                  *(this + 329) = v8 & 1;
                  *(this + 330) = v18 & 1;
                  return;
                }

                continue;
              }
            }

            v42 = 0;
            v44 = 0;
            v40 = 0;
            v36 = 0;
            while (2)
            {
              v37 = *(v46[1] + 40 * v25 + 16);
              if (v37 <= 0x2BBFE8D1A11FB57DLL)
              {
                if (v37 == 0x9A2E8768349D9F0)
                {
                  BYTE4(v44) = 1;
                }

                else
                {
                  if (v37 != 0x18BC3918B0504006)
                  {
                    goto LABEL_52;
                  }

                  v40 = 1;
                }
              }

              else
              {
                switch(v37)
                {
                  case 0x2BBFE8D1A11FB57ELL:
                    LOBYTE(v42) = 1;
                    break;
                  case 0x5249524C852BDF88:
                    LOBYTE(v44) = 1;
                    break;
                  case 0x76E0F7428E3A3C5ALL:
                    BYTE4(v42) = 1;
                    break;
                  default:
LABEL_52:
                    v36 |= v37 == 0x732BCA85D2D0C82ALL;
                    break;
                }
              }

              re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v46);
              v25 = v48;
              if (v48 == -1)
              {
                v26 = BYTE4(v44) & BYTE4(v42) & v44 & v40 & v42 & v36;
                goto LABEL_30;
              }

              continue;
            }
          }
        }
      }

      v18 = 0;
      LOBYTE(v8) = 0;
    }

    else
    {
      v18 = 0;
    }

    v17 = 0;
    goto LABEL_38;
  }
}

uint64_t re::ecs2::VideoComponent::getAverageColor(re::ecs2::VideoComponent *this)
{
  if (*(this + 27))
  {
    re::AssetHandle::AssetHandle(v5, (this + 208));
    v1 = re::VideoAsset::loadAndConnectForRendering(v5);
    re::AssetHandle::~AssetHandle(v5);
    if (v1)
    {
      return *(v1 + 80);
    }
  }

  if ((atomic_exchange(&re::ecs2::VideoComponent::getAverageColor(void)const::__FILE____LINE___logged, 1u) & 1) == 0)
  {
    v3 = *re::videoLogObjects(this);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "VideoComponent failed to get average color", v4, 2u);
    }
  }

  return 0;
}

uint64_t re::ecs2::VideoComponent::isVideoBlurTextureAvailable(re::ecs2::VideoComponent *this)
{
  if (*(this + 27) && (re::AssetHandle::AssetHandle(v6, (this + 208)), v1 = re::VideoAsset::loadAndConnectForRendering(v6), re::AssetHandle::~AssetHandle(v6), v1))
  {
    v2 = *(v1 + 266);
  }

  else
  {
    if ((atomic_exchange(&re::ecs2::VideoComponent::isVideoBlurTextureAvailable(void)const::__FILE____LINE___logged, 1u) & 1) == 0)
    {
      v3 = *re::videoLogObjects(this);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "VideoComponent failed to get whether video blur texture is available", v5, 2u);
      }
    }

    v2 = 0;
  }

  return v2 & 1;
}

float re::TargetDisplayInfoProvider::{unnamed type#9}::operator()(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(*v2 + 16);

    v3();
  }

  else
  {
    if ((atomic_exchange(&re::TargetDisplayInfoProvider::{unnamed type#9}::operator()(void)const::__FILE____LINE___logged, 1u) & 1) == 0)
    {
      v5 = *re::graphicsLogObjects(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "Current max nits provider has not been set.", v6, 2u);
      }
    }

    return *(a1 + 40);
  }

  return result;
}

float re::TargetDisplayInfoProvider::{unnamed type#8}::operator()(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(*v2 + 16);

    v3();
  }

  else
  {
    if ((atomic_exchange(&re::TargetDisplayInfoProvider::{unnamed type#8}::operator()(void)const::__FILE____LINE___logged, 1u) & 1) == 0)
    {
      v5 = *re::graphicsLogObjects(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "Current min nits provider has not been set.", v6, 2u);
      }
    }

    return *(a1 + 40);
  }

  return result;
}

uint64_t re::TargetDisplayInfoProvider::{unnamed type#3}::operator()(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(*v2 + 16);

    return v3();
  }

  else
  {
    if ((atomic_exchange(&re::TargetDisplayInfoProvider::{unnamed type#3}::operator()(void)const::__FILE____LINE___logged, 1u) & 1) == 0)
    {
      v5 = *re::graphicsLogObjects(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "Display max brightness nits provider has not been set.", v6, 2u);
      }
    }

    return *(a1 + 40);
  }
}

float re::TargetDisplayInfoProvider::{unnamed type#11}::operator()(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(*v2 + 16);

    v3();
  }

  else
  {
    if ((atomic_exchange(&re::TargetDisplayInfoProvider::{unnamed type#11}::operator()(void)const::__FILE____LINE___logged, 1u) & 1) == 0)
    {
      v5 = *re::graphicsLogObjects(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "Max EDR value provider has not been set.", v6, 2u);
      }
    }

    return *(a1 + 40);
  }

  return result;
}

void re::ecs2::VideoComponent::processAttachments(uint64_t a1, uint64_t a2, _DWORD *a3, int a4, int a5, uint64_t a6, int a7, int a8)
{
  v195 = *MEMORY[0x1E69E9840];
  v13 = *(a1 + 16);
  v14 = *(v13 + 264);
  if (v14)
  {
    v15 = *(v13 + 192);
    if (v15)
    {
      v16 = *(v15 + 88);
      v17 = *(v15 + 72);
      if (v17)
      {
        v18 = 24 * v17;
        v19 = v16;
        while (*(v19 + 8) != *(a1 + 40))
        {
          v19 += 24;
          v18 -= 24;
          if (!v18)
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
        v19 = v16;
      }

      if (v19 != v16 + 24 * v17)
      {
        v20 = 0xAAAAAAAAAAAAAAABLL * ((v19 - v16) >> 3);
        if (v20 < *(v14 + 48))
        {
          *(a1 + 352) = 0;
          v21 = *(v14 + 64) + 20 * v20;
          v23 = *(v21 + 4);
          v22 = v21 + 4;
          if (v23 == 1)
          {
            *(a1 + 352) = *(v22 + 1);
          }
        }
      }
    }
  }

LABEL_13:
  if ((atomic_load_explicit(&qword_1EE1B2D08, memory_order_acquire) & 1) == 0)
  {
    v147 = __cxa_guard_acquire(&qword_1EE1B2D08);
    if (v147)
    {
      v148 = re::VideoDefaults::overrideStereoMode(v147);
      if (v148 >= 5)
      {
        v149 = 5;
      }

      else
      {
        v149 = v148;
      }

      if (v149 < 0)
      {
        v149 = -1;
      }

      _MergedGlobals_373 = v149;
      __cxa_guard_release(&qword_1EE1B2D08);
    }
  }

  v24 = re::MaterialManager::getOrAddSystemMaterialParameterBlock(*(a2 + 24), *(*(a1 + 16) + 312));
  *(a1 + 256) = 0;
  *(a1 + 244) = 0;
  isLegacyDevice = re::VideoPlatform::isLegacyDevice(v24);
  if (isLegacyDevice)
  {
    *(a1 + 256) = 1;
    *(a1 + 245) = 1;
  }

  v26 = 0;
  for (i = a3; ; i = &a3[v26])
  {
    if (!i[1] || !*&a3[v26] || !i[3] || !i[2])
    {
      *(a1 + 244) = 0;
      goto LABEL_27;
    }

    isLegacyDevice = re::VideoPlatform::isLegacyDevice(isLegacyDevice);
    if (!isLegacyDevice)
    {
      break;
    }

    v28 = i[5];
    if (v28)
    {
      LOBYTE(v28) = i[4] != 0;
    }

    *(a1 + 244) = v28;
    if (v28)
    {
      goto LABEL_30;
    }

LABEL_27:
    v26 += 40;
    if (v26 == 80)
    {
      goto LABEL_30;
    }
  }

  *(a1 + 244) = 1;
LABEL_30:
  v29 = 0;
  *(a1 + 252) = 0;
  while (1)
  {
    v30 = &a3[v29];
    if (*&a3[v29 + 2] && *v30)
    {
      re::TextureHandle::metalTexture(v30, &v189);
      v31 = v189;
      v30 = [v189 mipmapLevelCount];
      v32 = v30;
      if (v31)
      {
      }

      if (v32 >= 2)
      {
        break;
      }
    }

    v29 += 40;
    if (v29 == 80)
    {
      goto LABEL_39;
    }
  }

  *(a1 + 252) = 1;
LABEL_39:
  *(a1 + 247) = 0;
  if (a2)
  {
    v30 = re::VideoDefaults::inverseToneMappingAllowed(v30);
    if (v30)
    {
      v33 = *(a2 + 303);
    }

    else
    {
      v33 = 0;
    }

    *(a1 + 247) = v33 & 1;
  }

  v34 = re::VideoDefaults::logEnabled(v30);
  if (v34)
  {
    v129 = *re::videoLogObjects(v34);
    if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 247))
      {
        v130 = "true";
      }

      else
      {
        v130 = "false";
      }

      LODWORD(v189) = 136315138;
      *(&v189 + 4) = v130;
      _os_log_impl(&dword_1E1C61000, v129, OS_LOG_TYPE_DEFAULT, "Needs Inverse Tone-mapping: %s", &v189, 0xCu);
    }
  }

  *(a1 + 248) = 0;
  if (a7)
  {
    goto LABEL_107;
  }

  v35 = re::VideoTextureHandles::VideoTextureHandles(v164, a3);
  if (!a2 || !a6)
  {
    v44 = *re::videoLogObjects(v35);
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_103;
    }

    LOWORD(v189) = 0;
    v45 = "Cannot process SDR content. Parameters are not valid.";
LABEL_70:
    _os_log_error_impl(&dword_1E1C61000, v44, OS_LOG_TYPE_ERROR, v45, &v189, 2u);
    goto LABEL_103;
  }

  v36 = *(a2 + 160);
  if (!v36)
  {
    v44 = *re::videoLogObjects(v35);
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_103;
    }

    LOWORD(v189) = 0;
    v45 = "Cannot process SDR content. ColorManager not found in RenderManager.";
    goto LABEL_70;
  }

  v37 = re::VideoDefaults::logEnabled(v35);
  if (v37)
  {
    re::ecs2::VideoComponent::queryMaterialPropertiesIfNeeded(a1);
    v131 = *(a1 + 329);
    v133 = *re::videoLogObjects(v132);
    v37 = os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT);
    if (v131 == 1)
    {
      if (!v37)
      {
        goto LABEL_50;
      }

      LOWORD(v189) = 0;
      v134 = "Video material supports gamma tone curve.";
    }

    else
    {
      if (!v37)
      {
        goto LABEL_50;
      }

      LOWORD(v189) = 0;
      v134 = "Video material does not support gamma tone curve.";
    }

    _os_log_impl(&dword_1E1C61000, v133, OS_LOG_TYPE_DEFAULT, v134, &v189, 2u);
  }

LABEL_50:
  v38 = re::VideoPlatform::isLegacyDevice(v37);
  v183 = v169;
  v184 = v170;
  if ((v38 & 1) != 0 || !re::VideoSDRDefaults::gammaToneCurveAllowed(v38) || (re::CoreVideoUtils::metalPixelFormatHasHardwareTransferFunction(v165) & 1) != 0 || (re::ecs2::VideoComponent::queryMaterialPropertiesIfNeeded(a1), *(a1 + 329) != 1) || !v168 || HIBYTE(v183) == 8)
  {
    v193[0] = 0;
    *&v189 = 0x9A2E8768349D9F0;
    re::MaterialParameterBlock::setConstant(v24, &v189, 1uLL, v193, 2, v194);
    v43 = 0;
    *&v194[0] = 0;
  }

  else
  {
    v39 = re::VideoColorTransformBase::gammaToneCurve(&v168, &v189);
    if (v191 == 1)
    {
      v194[0] = v189;
      v194[1] = v190;
      if (re::VideoDefaults::logEnabled(v39))
      {
        v141 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"Applying Gamma Tone Curve:"];
        re::CoreVideoUtils::printColorTransformInfo(&v168, v141);
        v143 = *re::videoLogObjects(v142);
        if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
        {
          v144 = v141;
          v145 = v143;
          v146 = [v141 cStringUsingEncoding:1];
          *v193 = 136315138;
          *&v193[4] = v146;
          _os_log_impl(&dword_1E1C61000, v145, OS_LOG_TYPE_DEFAULT, "%s", v193, 0xCu);
        }
      }

      v182 = *(a2 + 208);
      re::VideoColorManager::computeGammaToneCurvePowerFunctionTable(a6);

      if (re::VideoPlatform::Maximum1DTextureSize(v40) >> 14)
      {
        v41 = 1.0;
      }

      else
      {
        v41 = 0.5;
      }

      LOBYTE(v185[0]) = 1;
      v186[0] = 0x9A2E8768349D9F0;
      re::MaterialParameterBlock::setConstant(v24, v186, 1uLL, v185, 2, v193);
      *v193 = 0;
      *v179 = v41;
      v185[0] = 0x463751C6628B728;
      re::MaterialParameterBlock::setConstant(v24, v185, 4uLL, v179, 1, v186);
      v186[0] = 0;
      v181 = 0x5D7F34ED9D59B3C2;
      re::MaterialParameterBlock::setTextureHandle(v24, &v181, buf, v185);
      v185[0] = 0;
      v181 = 0;
      re::TextureHandle::invalidate(buf);
    }

    else
    {
      v140 = *re::videoLogObjects(v39);
      if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v194[0]) = 0;
        _os_log_impl(&dword_1E1C61000, v140, OS_LOG_TYPE_DEFAULT, "SDR color transform has no gamma tone curve parameters.", v194, 2u);
      }

      LOBYTE(v186[0]) = 0;
      *v193 = 0x9A2E8768349D9F0;
      re::MaterialParameterBlock::setConstant(v24, v193, 1uLL, v186, 2, v194);
      *&v194[0] = 0;
    }

    v43 = 1;
  }

  v46 = *v36;
  v155 = v43;
  if (v167 == v46)
  {
    re::VideoSDRDefaults::colorSpaceTransformationAllowed(v42);
    goto LABEL_80;
  }

  if (v168 && (v42 = re::VideoColorTransformBase::conversionMatrix(&v168, &v189), v192 == 1))
  {
    v47 = re::VideoDefaults::logEnabled(v42);
    if (v47)
    {
      v48 = *re::videoLogObjects(v47);
      v47 = os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT);
      if (v47)
      {
        *buf = 0;
        _os_log_impl(&dword_1E1C61000, v48, OS_LOG_TYPE_DEFAULT, "Color Space Transformation matrix computed using VideoColorTransform", buf, 2u);
      }
    }
  }

  else
  {
    v49 = re::VideoDefaults::logEnabled(v42);
    if (v49)
    {
      v139 = *re::videoLogObjects(v49);
      if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v189) = 0;
        _os_log_impl(&dword_1E1C61000, v139, OS_LOG_TYPE_DEFAULT, "SDR color transform has no color transformation matrix. Using fallback matrix instead", &v189, 2u);
      }
    }

    re::ColorHelpers::computeGamutTransformMatrix(v167, v46, &v189);
  }

  *log = v190;
  *v154 = v189;
  v150 = v191;
  if (re::VideoSDRDefaults::colorSpaceTransformationAllowed(v47))
  {
    v50 = 1;
    *(a1 + 245) = 1;
    v189 = *v154;
    v190 = *log;
    v191 = v150;
    v179[0] = 0x30C8E7322C94082DLL;
    re::MaterialParameterBlock::setConstant(v24, v179, 0x30uLL, &v189, 49, buf);
    *buf = 0;
    LOBYTE(v178[0]) = 1;
    *&v189 = 0x76E0F7428E3A3C5ALL;
    re::MaterialParameterBlock::setConstant(v24, &v189, 1uLL, v178, 2, v179);
    v179[0] = 0;
    v189 = *v154;
    v190 = *log;
    v191 = v150;
    v177[0] = 0x5249524C852BDF88;
    re::MaterialParameterBlock::setConstant(v24, v177, 0x30uLL, &v189, 49, v178);
    v178[0] = 0;
  }

  else
  {
LABEL_80:
    LOBYTE(v179[0]) = 0;
    *buf = 0x76E0F7428E3A3C5ALL;
    re::MaterialParameterBlock::setConstant(v24, buf, 1uLL, v179, 2, &v189);
    v50 = 0;
    *&v189 = 0;
  }

  v51 = *(a2 + 344);
  v52 = re::TargetDisplayInfoProvider::{unnamed type#9}::operator()((v51 + 48));
  v53 = re::TargetDisplayInfoProvider::{unnamed type#8}::operator()((v51 + 42));
  v54 = re::TargetDisplayInfoProvider::{unnamed type#3}::operator()((v51 + 12));
  v55 = *(*(a2 + 120) + 2196);
  v56 = v52 * (v55 + (v36[53] * (v36[54] - v55)));
  re::CoreVideoUtils::computeGammaBoost(&v183, v56, v52);
  v59 = v58;
  v60 = v52 / v54;
  if ((v52 / v54) > 1.0)
  {
    v60 = 1.0;
  }

  if (v60 >= 0.0)
  {
    v61 = v60;
  }

  else
  {
    v61 = 0.0;
  }

  v62 = re::VideoSDRDefaults::brightnessScalingAllowed(v57);
  if (v51[52])
  {
    v63 = v62;
  }

  else
  {
    v63 = 0;
  }

  if (!v51[16])
  {
    v63 = 0;
  }

  if (v51[76])
  {
    v64 = v63;
  }

  else
  {
    v64 = 0;
  }

  LOBYTE(v174[0]) = 0;
  v176[0] = 0x18BC3918B0504006;
  re::MaterialParameterBlock::setConstant(v24, v176, 1uLL, v174, 2, v177);
  v177[0] = 0;
  if (v64 == 1)
  {
    *v173 = v61;
    v174[0] = 0x2BBFE8D1A11FB57ELL;
    re::MaterialParameterBlock::setConstant(v24, v174, 4uLL, v173, 1, v176);
    v176[0] = 0;
  }

  if (!re::VideoSDRDefaults::gammaBoostAllowed(v65) || (v171[20] & 1) != 0 || v166 == 3)
  {
    v187[0] = 0;
    v173[0] = 0x732BCA85D2D0C82ALL;
    re::MaterialParameterBlock::setConstant(v24, v173, 1uLL, v187, 2, v174);
    v66 = 0;
    v174[0] = 0;
  }

  else
  {
    v175 = *(a2 + 208);
    re::VideoColorManager::computeBoostPowerFunctionTable(a6);

    v66 = 1;
    LOBYTE(v172) = 1;
    v173[0] = 0x732BCA85D2D0C82ALL;
    re::MaterialParameterBlock::setConstant(v24, v173, 1uLL, &v172, 2, v174);
    v174[0] = 0;
    v172 = 0x267D7E6C64117D48;
    re::MaterialParameterBlock::setTextureHandle(v24, &v172, v187, v173);
    v173[0] = 0;
    re::TextureHandle::invalidate(v187);
  }

  if (re::VideoDefaults::logEnabled(v67))
  {
    v135 = [MEMORY[0x1E696AD60] stringWithFormat:@"SDR Processing Parameters"];
    [v135 appendFormat:@"\n                    Current Max Nits: %f", v52];
    [v135 appendFormat:@"\n                        Minimum Nits: %f", v53];
    [v135 appendFormat:@"\n               Ambient Light in Nits: %f", v56];
    [v135 appendFormat:@"\n         Mean Passthrough Brightness: %f", v55];
    [v135 appendFormat:@"\n                        PreBlendMode: %s", "True"];
    [v135 appendFormat:@"\n              VideoBrightnessScaling: %s", "False"];
    [v135 appendFormat:@"\n                    Brightness Scale: %f", v61];
    [v135 appendFormat:@"\n                         Gamma Boost: %f", v59];
    v136 = "True";
    if (!v50)
    {
      v136 = "False";
    }

    loga = *re::videoLogObjects([v135 appendFormat:@"\n          Color Space Transformation: %s", v136]);
    if (os_log_type_enabled(loga, OS_LOG_TYPE_DEFAULT))
    {
      v137 = v135;
      logb = loga;
      v138 = [v135 cStringUsingEncoding:1];
      *v187 = 136315138;
      v188 = v138;
      _os_log_impl(&dword_1E1C61000, logb, OS_LOG_TYPE_DEFAULT, "%s", v187, 0xCu);
    }
  }

  *(a1 + 248) = v50 | v155 | v66 | v64;
LABEL_103:
  for (j = 0; j != -320; j -= 160)
  {
    v69 = &v164[j];
    if (*&v171[j])
    {
      re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v69 + 38);
    }

    v69[38] = 0;
    re::TextureHandle::invalidate((v69 + 32));
    re::TextureHandle::invalidate((v69 + 30));
    re::TextureHandle::invalidate((v69 + 28));
    re::TextureHandle::invalidate((v69 + 26));
    re::TextureHandle::invalidate((v69 + 24));
    re::TextureHandle::invalidate((v69 + 22));
    re::TextureHandle::invalidate((v69 + 20));
  }

LABEL_107:
  if (a2 && a7)
  {
    re::VideoTextureHandles::VideoTextureHandles(v163, a3);
    v70 = *(a2 + 344);
    if (*(v70 + 512))
    {
      v71 = re::TargetDisplayInfoProvider::{unnamed type#11}::operator()(v70 + 480);
    }

    else
    {
      v71 = *(v70 + 520);
    }

    v193[0] = v71 != 1.0;
    *&v194[0] = 0x18BC3918B0504006;
    re::MaterialParameterBlock::setConstant(v24, v194, 1uLL, v193, 2, &v189);
    *&v189 = 0;
    *v186 = v71;
    *v193 = 0x2BBFE8D1A11FB57ELL;
    re::MaterialParameterBlock::setConstant(v24, v193, 4uLL, v186, 1, v194);
    *&v194[0] = 0;
    LOBYTE(v185[0]) = 0;
    v186[0] = 0x76E0F7428E3A3C5ALL;
    re::MaterialParameterBlock::setConstant(v24, v186, 1uLL, v185, 2, v193);
    *v193 = 0;
    buf[0] = 0;
    v185[0] = 0x732BCA85D2D0C82ALL;
    re::MaterialParameterBlock::setConstant(v24, v185, 1uLL, buf, 2, v186);
    v186[0] = 0;
    LOBYTE(v179[0]) = 0;
    *buf = 0x9A2E8768349D9F0;
    re::MaterialParameterBlock::setConstant(v24, buf, 1uLL, v179, 2, v185);
    v72 = 0;
    *(a1 + 248) = v71 != 1.0;
    do
    {
      v73 = &v163[v72];
      if (*&v163[v72 + 304])
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v73 + 38);
      }

      v73[38] = 0;
      re::TextureHandle::invalidate((v73 + 32));
      re::TextureHandle::invalidate((v73 + 30));
      re::TextureHandle::invalidate((v73 + 28));
      re::TextureHandle::invalidate((v73 + 26));
      re::TextureHandle::invalidate((v73 + 24));
      re::TextureHandle::invalidate((v73 + 22));
      re::TextureHandle::invalidate((v73 + 20));
      v72 -= 160;
    }

    while (v72 != -320);
  }

  v162 = 0x18BC3918B0504006;
  re::MaterialParameterBlock::handle(v24, &v162, &v189);
  v74 = *re::ShaderGraphMaterial::getConstant(v24, &v189);
  v162 = 0;
  v75 = 1.0;
  if (v74 == 1)
  {
    v161 = 0x2BBFE8D1A11FB57ELL;
    re::MaterialParameterBlock::handle(v24, &v161, &v189);
    v75 = *re::ShaderGraphMaterial::getConstant(v24, &v189);
    v161 = 0;
  }

  *(a1 + 336) = v75;
  v76 = *(a1 + 136);
  if (v76)
  {
    v77 = 32 * v76;
    v78 = *(a1 + 152);
    do
    {
      v160 = *(v78 + 16) >> 1;
      v79 = re::MaterialParameterBlock::handle(v24, &v160, &v189);
      v160 = 0;
      if (_MergedGlobals_373 == -1)
      {
        v82 = *(a1 + 56);
        v81 = a3[80];
        if (v81 == 1 && v82 == 1)
        {
          v89 = re::VideoDefaults::logEnabled(v79);
          if (v89)
          {
            v117 = *re::videoLogObjects(v89);
            if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v194[0]) = 0;
              _os_log_impl(&dword_1E1C61000, v117, OS_LOG_TYPE_DEFAULT, "[StereoModeChanged] :: Setting actualStereoMode to kStereoModeStereoSideBySide", v194, 2u);
            }
          }

          v81 = 4;
        }

        else if (v81 == 3 && v82 == 1)
        {
          v90 = re::VideoDefaults::logEnabled(v79);
          if (v90)
          {
            v119 = *re::videoLogObjects(v90);
            if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v194[0]) = 0;
              _os_log_impl(&dword_1E1C61000, v119, OS_LOG_TYPE_DEFAULT, "[StereoModeChanged] :: Setting actualStereoMode to kStereoModeStereoOverUnder_Mono", v194, 2u);
            }
          }

          v81 = 5;
        }

        else if (v81 == -1)
        {
          v91 = *(a1 + 72);
          v92 = re::VideoDefaults::logEnabled(v79);
          if (v91 != 1)
          {
            if (!v92)
            {
              goto LABEL_146;
            }

            v86 = *re::videoLogObjects(v92);
            if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v194[0]) = 0;
              v87 = v86;
              v88 = "[StereoModeChanged] :: Setting actualStereoMode to kStereoModeMono because actualStereoMode is Undefined";
LABEL_209:
              _os_log_impl(&dword_1E1C61000, v87, OS_LOG_TYPE_DEFAULT, v88, v194, 2u);
            }

LABEL_210:

            goto LABEL_146;
          }

          if (v92)
          {
            v121 = *re::videoLogObjects(v92);
            if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
            {
              v122 = "kStereoModeStereoSideBySide_Mono";
              if (v82 != 1)
              {
                v122 = "kStereoModeStereoSideBySide";
              }

              LODWORD(v194[0]) = 136315138;
              *(v194 + 4) = v122;
              _os_log_impl(&dword_1E1C61000, v121, OS_LOG_TYPE_DEFAULT, "[StereoModeChanged] :: Setting actualStereoMode to %s", v194, 0xCu);
            }
          }

          if (v82 == 1)
          {
            v81 = 4;
          }

          else
          {
            v81 = 1;
          }
        }

        else if (v82 == 1)
        {
          v85 = re::VideoDefaults::logEnabled(v79);
          if (!v85)
          {
LABEL_146:
            v81 = 0;
            goto LABEL_147;
          }

          v86 = *re::videoLogObjects(v85);
          if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v194[0]) = 0;
            v87 = v86;
            v88 = "[StereoModeChanged] :: Setting actualStereoMode to kStereoModeMono because mono is prefered";
            goto LABEL_209;
          }

          goto LABEL_210;
        }
      }

      else
      {
        v80 = re::VideoDefaults::logEnabled(v79);
        if (v80)
        {
          v110 = *re::videoLogObjects(v80);
          if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v194[0]) = 0;
            _os_log_impl(&dword_1E1C61000, v110, OS_LOG_TYPE_DEFAULT, "[StereoModeChanged] :: Setting actualStereoMode to kOverrideStereoMode", v194, 2u);
          }
        }

        v81 = _MergedGlobals_373;
      }

LABEL_147:
      *v193 = v81;
      *&v194[0] = 0x67AF2B14BAC98610;
      re::MaterialParameterBlock::setConstant(v24, v194, 4uLL, v193, 1, v159);
      v159[0] = 0;
      v94 = re::VideoDefaults::logEnabled(v93);
      if (v94 && *(a1 + 240) != v81)
      {
        v109 = *re::videoLogObjects(v94);
        if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v194[0]) = 67109120;
          DWORD1(v194[0]) = v81;
          _os_log_impl(&dword_1E1C61000, v109, OS_LOG_TYPE_DEFAULT, "[StereoModeChanged] :: Setting m_resolvedStereoMode to actualStereoMode which is %i", v194, 8u);
        }
      }

      *(a1 + 240) = v81;
      v95 = re::VideoDefaults::opaqueTechniqueAllowed(v94);
      if (!v95)
      {
        goto LABEL_172;
      }

      if ((atomic_load_explicit(&qword_1EE1B2D18, memory_order_acquire) & 1) == 0)
      {
        v95 = __cxa_guard_acquire(&qword_1EE1B2D18);
        if (v95)
        {
          qword_1EE1B2D10 = re::hashString("Transparent", v123);
          __cxa_guard_release(&qword_1EE1B2D18);
        }
      }

      if ((atomic_load_explicit(&qword_1EE1B2D28, memory_order_acquire) & 1) == 0)
      {
        v95 = __cxa_guard_acquire(&qword_1EE1B2D28);
        if (v95)
        {
          qword_1EE1B2D20 = re::hashString("Opaque", v124);
          __cxa_guard_release(&qword_1EE1B2D28);
        }
      }

      if ((atomic_load_explicit(&qword_1EE1B2D38, memory_order_acquire) & 1) == 0)
      {
        v95 = __cxa_guard_acquire(&qword_1EE1B2D38);
        if (v95)
        {
          qword_1EE1B2D30 = re::hashString("FadeDepthPrepass", v125);
          __cxa_guard_release(&qword_1EE1B2D38);
        }
      }

      if ((atomic_load_explicit(&qword_1EE1B2D48, memory_order_acquire) & 1) == 0)
      {
        v95 = __cxa_guard_acquire(&qword_1EE1B2D48);
        if (v95)
        {
          qword_1EE1B2D40 = re::hashString("FadeOpaque", v126);
          __cxa_guard_release(&qword_1EE1B2D48);
        }
      }

      if ((atomic_load_explicit(&qword_1EE1B2D58, memory_order_acquire) & 1) == 0)
      {
        v95 = __cxa_guard_acquire(&qword_1EE1B2D58);
        if (v95)
        {
          qword_1EE1B2D50 = re::hashString("VideoColor", v127);
          __cxa_guard_release(&qword_1EE1B2D58);
        }
      }

      if ((atomic_load_explicit(&qword_1EE1B2D68, memory_order_acquire) & 1) == 0)
      {
        v95 = __cxa_guard_acquire(&qword_1EE1B2D68);
        if (v95)
        {
          qword_1EE1B2D60 = re::hashString("", v128);
          __cxa_guard_release(&qword_1EE1B2D68);
        }
      }

      if (re::VideoDefaults::logEnabled(v95))
      {
        re::ecs2::VideoComponent::queryMaterialPropertiesIfNeeded(a1);
        v111 = *(a1 + 328);
        v113 = *re::videoLogObjects(v112);
        v114 = os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT);
        if (v111 == 1)
        {
          if (v114)
          {
            LOWORD(v194[0]) = 0;
            v115 = v113;
            v116 = "Video material supports opaque rendering.";
            goto LABEL_188;
          }
        }

        else if (v114)
        {
          LOWORD(v194[0]) = 0;
          v115 = v113;
          v116 = "Video material does not opaque rendering.";
LABEL_188:
          _os_log_impl(&dword_1E1C61000, v115, OS_LOG_TYPE_DEFAULT, v116, v194, 2u);
        }
      }

      re::ecs2::VideoComponent::queryMaterialPropertiesIfNeeded(a1);
      if (*(a1 + 328) == 1)
      {
        if (a8 && (*(a1 + 244) & 1) == 0)
        {
          v108 = re::VideoDefaults::logEnabled(v96);
          if (v108)
          {
            v120 = *re::videoLogObjects(v108);
            if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(v194[0]) = 136315138;
              *(v194 + 4) = "VideoColorOpaque";
              _os_log_impl(&dword_1E1C61000, v120, OS_LOG_TYPE_DEFAULT, "Using opaque technique '%s'", v194, 0xCu);
            }
          }
        }

        else
        {
          v97 = re::VideoDefaults::logEnabled(v96);
          if (v97)
          {
            v118 = *re::videoLogObjects(v97);
            if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(v194[0]) = 136315138;
              *(v194 + 4) = "VideoColor";
              _os_log_impl(&dword_1E1C61000, v118, OS_LOG_TYPE_DEFAULT, "Using transparent technique '%s'", v194, 0xCu);
            }
          }

          v98 = qword_1EE1B2D20;
          v99 = qword_1EE1B2D60;
          if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
          {
            dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
          }

          re::MaterialParameterBlock::addPassTechniqueMapping(v24, v98, v99, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash);
          v100 = qword_1EE1B2D10;
          v101 = qword_1EE1B2D50;
          if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
          {
            dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
          }

          re::MaterialParameterBlock::addPassTechniqueMapping(v24, v100, v101, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash);
          v102 = qword_1EE1B2D30;
          v103 = qword_1EE1B2D60;
          if (re::MaterialParameterTable::kFadeNameHash(void)::once != -1)
          {
            dispatch_once(&re::MaterialParameterTable::kFadeNameHash(void)::once, &__block_literal_global_4_1);
          }

          re::MaterialParameterBlock::addPassTechniqueMapping(v24, v102, v103, re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash);
          v104 = qword_1EE1B2D40;
          v105 = qword_1EE1B2D60;
          if (re::MaterialParameterTable::kFadeNameHash(void)::once != -1)
          {
            dispatch_once(&re::MaterialParameterTable::kFadeNameHash(void)::once, &__block_literal_global_4_1);
          }

          re::MaterialParameterBlock::addPassTechniqueMapping(v24, v104, v105, re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash);
          v106 = qword_1EE1B2D10;
          v107 = qword_1EE1B2D50;
          if (re::MaterialParameterTable::kFadeNameHash(void)::once != -1)
          {
            dispatch_once(&re::MaterialParameterTable::kFadeNameHash(void)::once, &__block_literal_global_4_1);
          }

          re::MaterialParameterBlock::addPassTechniqueMapping(v24, v106, v107, re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash);
        }
      }

LABEL_172:
      re::ecs2::VideoComponent::applyVideoAttachmentToParameterBlock(*(a1 + 16), v78, a3, v24, a4, a5);
      re::ecs2::VideoComponent::queryMaterialPropertiesIfNeeded(a1);
      if (*(a1 + 330) == 1)
      {
        re::ecs2::VideoComponent::applyVideoTextureArrayAttachmentToParameterBlock(*(a1 + 16), v78, a3, v24);
      }

      v78 += 32;
      v77 -= 32;
    }

    while (v77);
  }
}

uint64_t re::VideoTextureHandles::VideoTextureHandles(uint64_t a1, uint64_t a2)
{
  for (i = 0; i != 320; i += 160)
  {
    re::TextureHandle::TextureHandle((a1 + i), (a2 + i));
    re::TextureHandle::TextureHandle((a1 + i + 16), (a2 + i + 16));
    re::TextureHandle::TextureHandle((a1 + i + 32), (a2 + i + 32));
    re::TextureHandle::TextureHandle((a1 + i + 48), (a2 + i + 48));
    re::TextureHandle::TextureHandle((a1 + i + 64), (a2 + i + 64));
    re::TextureHandle::TextureHandle((a1 + i + 80), (a2 + i + 80));
    re::TextureHandle::TextureHandle((a1 + i + 96), (a2 + i + 96));
    v5 = *(a2 + i + 112);
    v6 = *(a2 + i + 128);
    *(a1 + i + 144) = 0;
    v7 = a1 + i + 144;
    *(v7 - 32) = v5;
    *(v7 - 16) = v6;
    re::VideoObject<re::VideoColorTransformBase>::setRef(v7, v7, *(a2 + i + 144));
    v8 = *(a2 + i + 152);
    *(v7 + 10) = *(a2 + i + 154);
    *(v7 + 8) = v8;
  }

  v9 = *(a2 + 320);
  *(a1 + 324) = *(a2 + 324);
  *(a1 + 320) = v9;
  return a1;
}

void re::ecs2::VideoComponent::removeParamsFromSystemParameterBlock(re::ecs2::VideoComponent *this, re::MaterialManager *a2, char a3, int a4)
{
  if ((atomic_load_explicit(&qword_1EE1B2D78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B2D78))
  {
    qword_1EE1B2D70 = re::hashString("Transparent", v23);
    __cxa_guard_release(&qword_1EE1B2D78);
  }

  if ((atomic_load_explicit(&qword_1EE1B2D88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B2D88))
  {
    qword_1EE1B2D80 = re::hashString("Opaque", v24);
    __cxa_guard_release(&qword_1EE1B2D88);
  }

  if ((atomic_load_explicit(&qword_1EE1B2D98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B2D98))
  {
    qword_1EE1B2D90 = re::hashString("FadeDepthPrepass", v25);
    __cxa_guard_release(&qword_1EE1B2D98);
  }

  if ((atomic_load_explicit(&qword_1EE1B2DA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B2DA8))
  {
    qword_1EE1B2DA0 = re::hashString("FadeOpaque", v26);
    __cxa_guard_release(&qword_1EE1B2DA8);
  }

  v8 = *(*(this + 2) + 312);
  SystemMaterialParameterBlock = re::MaterialManager::getSystemMaterialParameterBlock(a2, v8);
  if (SystemMaterialParameterBlock)
  {
    v10 = SystemMaterialParameterBlock;
    v33 = 0xE34F2A557A3E977;
    re::MaterialParameterBlock::removeTexture(SystemMaterialParameterBlock, &v33);
    v33 = 0;
    v34 = 0x264EA9E237B8F170;
    re::MaterialParameterBlock::removeConstant(v10, &v34, 4);
    v34 = 0x4D4BBA333CD6C2E7;
    re::MaterialParameterBlock::removeConstant(v10, &v34, 16);
    v34 = 0x13C58749F480030;
    re::MaterialParameterBlock::removeConstant(v10, &v34, 1);
    v34 = 0x67AF2B14BAC98610;
    re::MaterialParameterBlock::removeConstant(v10, &v34, 4);
    v34 = 0x30C8E7322C94082DLL;
    re::MaterialParameterBlock::removeConstant(v10, &v34, 48);
    if (a4)
    {
      v11 = qword_1EE1B2D70;
      if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
      {
        dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
      }

      re::MaterialParameterBlock::removePassTechniqueMapping(v10, v11, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash);
      v12 = qword_1EE1B2D80;
      if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
      {
        dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
      }

      re::MaterialParameterBlock::removePassTechniqueMapping(v10, v12, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash);
      v13 = qword_1EE1B2D90;
      if (re::MaterialParameterTable::kFadeNameHash(void)::once != -1)
      {
        dispatch_once(&re::MaterialParameterTable::kFadeNameHash(void)::once, &__block_literal_global_4_1);
      }

      re::MaterialParameterBlock::removePassTechniqueMapping(v10, v13, re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash);
      v14 = qword_1EE1B2DA0;
      if (re::MaterialParameterTable::kFadeNameHash(void)::once != -1)
      {
        dispatch_once(&re::MaterialParameterTable::kFadeNameHash(void)::once, &__block_literal_global_4_1);
      }

      re::MaterialParameterBlock::removePassTechniqueMapping(v10, v14, re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash);
      v15 = qword_1EE1B2D70;
      if (re::MaterialParameterTable::kFadeNameHash(void)::once != -1)
      {
        dispatch_once(&re::MaterialParameterTable::kFadeNameHash(void)::once, &__block_literal_global_4_1);
      }

      re::MaterialParameterBlock::removePassTechniqueMapping(v10, v15, re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash);
    }

    v32 = 0x434F49B3406455B4;
    re::MaterialParameterBlock::removeTexture(v10, &v32);
    v31 = 0x434F49B34064CA13;
    v32 = 0;
    re::MaterialParameterBlock::removeTexture(v10, &v31);
    v30 = 0x434F49B340653E72;
    v31 = 0;
    re::MaterialParameterBlock::removeTexture(v10, &v30);
    v29 = 0x434F49B3406455D3;
    v30 = 0;
    re::MaterialParameterBlock::removeTexture(v10, &v29);
    v28 = 0x434F49B34064CA32;
    v29 = 0;
    re::MaterialParameterBlock::removeTexture(v10, &v28);
    v27 = 0x434F49B340653E91;
    v28 = 0;
    re::MaterialParameterBlock::removeTexture(v10, &v27);
    v27 = 0;
    v17 = *(this + 17);
    if (v17)
    {
      v18 = *(this + 19);
      v19 = 32 * v17;
      do
      {
        re::ecs2::VideoComponent::removeVideoAttachmentFromParameterBlock(v18, v10, v16);
        v18 += 4;
        v19 -= 32;
      }

      while (v19);
    }

    v20 = *(this + 22);
    if (v20)
    {
      v21 = *(this + 24);
      v22 = 32 * v20;
      do
      {
        re::ecs2::VideoComponent::removeVideoAttachmentFromParameterBlock(v21, v10, v16);
        v21 += 4;
        v22 -= 32;
      }

      while (v22);
    }

    re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::clear(this + 160);
    if ((a3 & 1) != 0 && re::MaterialParameterBlock::isEmpty(v10))
    {
      re::MaterialManager::removeSystemMaterialParameterBlock(a2, v8);
    }
  }
}

BOOL re::areAlmostEqual<float>(float a1, float a2, float a3, float a4)
{
  if (a1 != a3 && vabds_f32(a1, a3) >= (((fabsf(a1) + fabsf(a3)) + 1.0) * 0.00001))
  {
    return 0;
  }

  if (a2 == a4)
  {
    return 1;
  }

  return vabds_f32(a2, a4) < (((fabsf(a2) + fabsf(a4)) + 1.0) * 0.00001);
}

void re::ecs2::VideoComponent::getVideoTextureHandles(re::ecs2::VideoComponent *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 27) && (re::AssetHandle::AssetHandle(v8, (this + 208)), v3 = re::VideoAsset::loadAndConnectForRendering(v8), re::AssetHandle::~AssetHandle(v8), v3))
  {
    re::VideoAsset::getVideoTextureHandles(v3, a2);
  }

  else
  {
    if ((atomic_exchange(&re::ecs2::VideoComponent::getVideoTextureHandles(void)const::__FILE____LINE___logged, 1u) & 1) == 0)
    {
      v4 = *re::videoLogObjects(this);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "VideoComponent failed to get video texture handles", v7, 2u);
      }
    }

    *(a2 + 320) = 0;
    *(a2 + 288) = 0u;
    *(a2 + 304) = 0u;
    *(a2 + 256) = 0u;
    *(a2 + 272) = 0u;
    *(a2 + 224) = 0u;
    *(a2 + 240) = 0u;
    *(a2 + 192) = 0u;
    *(a2 + 208) = 0u;
    *(a2 + 160) = 0u;
    *(a2 + 176) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 144) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    v5 = (a2 + 154);
    v6 = 320;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    do
    {
      *(v5 - 46) = 0uLL;
      *(v5 - 58) = 0uLL;
      *(v5 - 74) = 0uLL;
      *(v5 - 90) = 0uLL;
      *(v5 - 106) = 0uLL;
      *(v5 - 122) = 0uLL;
      *(v5 - 138) = 0uLL;
      *(v5 - 154) = 0uLL;
      *(v5 - 14) = 0x10000;
      *(v5 - 10) = 0;
      *(v5 - 1) = 514;
      *v5 = 2;
      v5 += 160;
      v6 -= 160;
    }

    while (v6);
    *(a2 + 320) = -1;
    *(a2 + 324) = 0;
  }
}

void re::ecs2::VideoComponent::getLegacyVideoTextureHandles(re::ecs2::VideoComponent *this, uint64_t a2)
{
  if (*(a2 + 216) && (re::AssetHandle::AssetHandle(v8, (a2 + 208)), v3 = re::VideoAsset::loadAndConnectForRendering(v8), re::AssetHandle::~AssetHandle(v8), v3))
  {
    re::VideoAsset::getLegacyVideoTextureHandles(v3, this);
  }

  else
  {
    if ((atomic_exchange(&re::ecs2::VideoComponent::getLegacyVideoTextureHandles(void)const::__FILE____LINE___logged, 1u) & 1) == 0)
    {
      v4 = *re::videoLogObjects(this);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "VideoComponent failed to get legacy video texture handles", v7, 2u);
      }
    }

    *(this + 40) = 0;
    *(this + 18) = 0u;
    *(this + 19) = 0u;
    *(this + 16) = 0u;
    *(this + 17) = 0u;
    *(this + 14) = 0u;
    *(this + 15) = 0u;
    *(this + 12) = 0u;
    *(this + 13) = 0u;
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
    v5 = this + 154;
    v6 = 320;
    *this = 0u;
    *(this + 1) = 0u;
    do
    {
      *(v5 - 46) = 0uLL;
      *(v5 - 58) = 0uLL;
      *(v5 - 74) = 0uLL;
      *(v5 - 90) = 0uLL;
      *(v5 - 106) = 0uLL;
      *(v5 - 122) = 0uLL;
      *(v5 - 138) = 0uLL;
      *(v5 - 154) = 0uLL;
      *(v5 - 14) = 0x10000;
      *(v5 - 10) = 0;
      *(v5 - 1) = 514;
      *v5 = 2;
      v5 += 160;
      v6 -= 160;
    }

    while (v6);
    *(this + 80) = -1;
    *(this + 324) = 0;
  }
}

uint64_t re::ecs2::VideoComponent::YCbCrMatrix(re::ecs2::VideoComponent *this)
{
  if (*(this + 27) && (re::AssetHandle::AssetHandle(v6, (this + 208)), v1 = re::VideoAsset::loadAndConnectForRendering(v6), re::AssetHandle::~AssetHandle(v6), v1))
  {
    v2 = *(v1 + 26);
    if (v2)
    {
      return *(v2 + 5040);
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    if ((atomic_exchange(&re::ecs2::VideoComponent::YCbCrMatrix(void)const::__FILE____LINE___logged, 1u) & 1) == 0)
    {
      v4 = *re::videoLogObjects(this);
      result = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      *v5 = 0;
      _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "VideoComponent failed to get YCbCrMatrix", v5, 2u);
    }

    return 0;
  }
}

uint64_t re::ecs2::VideoComponent::imageFunction(re::ecs2::VideoComponent *this)
{
  if (*(this + 27) && (re::AssetHandle::AssetHandle(v6, (this + 208)), v1 = re::VideoAsset::loadAndConnectForRendering(v6), re::AssetHandle::~AssetHandle(v6), v1))
  {
    v2 = *(v1 + 26);
    if (v2)
    {
      return *(v2 + 5044);
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    if ((atomic_exchange(re::ecs2::VideoComponent::imageFunction(void)const::__FILE____LINE___logged, 1u) & 1) == 0)
    {
      v4 = *re::videoLogObjects(this);
      result = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      *v5 = 0;
      _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "VideoComponent failed to get image function", v5, 2u);
    }

    return 0;
  }
}

void re::ecs2::VideoComponent::calculateColorSpaceTransformationMatrix(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  re::TextureHandle::TextureHandle(v7, a2);
  re::TextureHandle::TextureHandle(v8, (a2 + 16));
  re::TextureHandle::TextureHandle(v9, (a2 + 32));
  re::TextureHandle::TextureHandle(v10, (a2 + 48));
  re::TextureHandle::TextureHandle(v11, (a2 + 64));
  re::TextureHandle::TextureHandle(v12, (a2 + 80));
  re::TextureHandle::TextureHandle(v13, (a2 + 96));
  v6 = *(a2 + 128);
  v13[1] = *(a2 + 112);
  v14 = v6;
  v15 = 0;
  re::VideoObject<re::VideoColorTransformBase>::setRef(&v15, &v15, *(a2 + 144));
  v16 = *(a2 + 152);
  v17 = *(a2 + 154);
  if (*(a1 + 245) == 1)
  {
    re::ColorHelpers::computeGamutTransformMatrix(HIBYTE(v14), *(a1 + 246), a3);
  }

  else
  {
    *a3 = xmmword_1E3047670;
    a3[1] = xmmword_1E3047680;
    a3[2] = xmmword_1E30476A0;
  }

  if (v15)
  {
    re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(&v15);
  }

  v15 = 0;
  re::TextureHandle::invalidate(v13);
  re::TextureHandle::invalidate(v12);
  re::TextureHandle::invalidate(v11);
  re::TextureHandle::invalidate(v10);
  re::TextureHandle::invalidate(v9);
  re::TextureHandle::invalidate(v8);
  re::TextureHandle::invalidate(v7);
}

double re::ecs2::VideoComponent::getDimensions(re::ecs2::VideoComponent *this)
{
  result = 0.0;
  if (*(this + 27))
  {
    v2 = re::AssetHandle::loadedAsset<re::VideoAsset>((this + 208));
    result = 0.0;
    if (v2)
    {
      v3 = v2;
      v4 = re::VideoAsset::dimensions(v2);
      return COERCE_DOUBLE(__PAIR64__(re::VideoAsset::dimensions(v3) >> 32, v4));
    }
  }

  return result;
}

void *re::ecs2::VideoComponent::getRectangularMask(void *this)
{
  if (this[27])
  {
    this = re::AssetHandle::loadedAsset<re::VideoAsset>((this + 26));
    if (this)
    {
      v1 = this;
      v2 = this[26];
      if (!v2 || (*(v2 + 5120) & 1) == 0)
      {
        re::VideoAsset::dimensions(this);
        return re::VideoAsset::dimensions(v1);
      }
    }
  }

  return this;
}

re::ecs2::VideoComponentSystem *re::ecs2::VideoComponentSystem::VideoComponentSystem(re::ecs2::VideoComponentSystem *this)
{
  v2 = re::ecs2::System::System(this, 1, 1);
  *v2 = &unk_1F5CFDBE8;
  *(v2 + 224) = 0;
  *(v2 + 336) = 0;
  *(v2 + 248) = 0u;
  *(v2 + 232) = 0u;
  *(v2 + 264) = 0u;
  *(v2 + 280) = 0u;
  *(v2 + 296) = 0u;
  *(v2 + 312) = 0u;
  *(v2 + 344) = 0x3F80000000000000;
  LOWORD(v4) = 257;
  HIDWORD(v4) = 1023969417;
  v5 = 0;
  re::ecs2::System::setDefaultTaskOptions(v2, &v4);
  return this;
}

void re::ecs2::VideoComponentSystem::willAddSystemToECSService(re::VideoManager **this)
{
  v17[4] = *MEMORY[0x1E69E9840];
  re::VideoLightSpillGenerator::WarmUp(this);
  v2 = (*(*this[5] + 32))(this[5]);
  this[29] = re::ServiceLocator::serviceOrNull<re::Engine>(v2);
  v3 = (*(*this[5] + 32))(this[5]);
  this[30] = re::ServiceLocator::serviceOrNull<re::RenderManager>(v3);
  v4 = (*(*this[5] + 32))(this[5]);
  this[31] = re::ServiceLocator::serviceOrNull<re::ColorManager>(v4);
  v5 = (*(*this[5] + 32))(this[5]);
  v6 = re::ServiceLocator::serviceOrNull<re::VideoService>(v5);
  this[33] = v6;
  if (v6)
  {
    this[32] = v6;
  }

  v7 = (*(*this[5] + 32))(this[5]);
  this[35] = re::ServiceLocator::serviceOrNull<re::ProtectionOptionsService>(v7);
  v8 = (*(*this[5] + 32))(this[5]);
  this[39] = re::ServiceLocator::serviceOrNull<re::ecs2::OpacityService>(v8);
  this[36] = re::ServiceLocator::serviceOrNull<re::AssetService>(*(this[29] + 86));
  v9 = (*(*this[5] + 32))(this[5]);
  this[41] = re::ServiceLocator::serviceOrNull<re::ecs2::PortalService>(v9);
  v10 = (*(*this[5] + 32))(this[5]);
  this[42] = re::ServiceLocator::serviceOrNull<re::ResourceFetchService>(v10);
  v11 = (*(*this[5] + 32))(this[5]);
  this[37] = re::ServiceLocator::serviceOrNull<re::TransformService>(v11);
  v12 = (*(*this[5] + 32))(this[5]);
  this[38] = re::ServiceLocator::serviceOrNull<re::SpatialMediaService>(v12);
  v13 = (*(*this[5] + 32))(this[5]);
  v14 = re::ServiceLocator::serviceOrNull<re::NetworkSystem>(v13);
  if (v14 && (this[28] & 1) == 0)
  {
    v17[0] = this;
    v17[1] = re::ecs2::VideoComponentSystem::onComponentUpdated;
    v17[2] = 0;
    v17[3] = re::Event<re::NetworkSystem,re::ecs2::Component *>::createSubscription<re::ecs2::VideoComponentSystem>(re::ecs2::VideoComponentSystem *,REEventHandlerResult (re::ecs2::VideoComponentSystem::*)(re::NetworkSystem*,re::ecs2::Component *))::{lambda(re::NetworkSystem*,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription const&,re::ecs2::Component *&&)#1}::__invoke;
    re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription(v14 + 88, v17);
    *(this + 224) = 1;
  }

  v15 = this[36];
  if (v15)
  {
    v16 = this[32];
    if (v16)
    {
      re::VideoManager::loadDRMTextureIfNeeded(v16, this[36]);
      re::VideoManager::loadVideoMaterialIfNeeded(this[32], v15);
    }
  }
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::SpatialMediaService>(uint64_t a1)
{
  {
    re::introspect<re::SpatialMediaService>(BOOL)::info = re::introspect_SpatialMediaService(0);
  }

  v2 = re::introspect<re::SpatialMediaService>(BOOL)::info;
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

void re::ecs2::VideoComponentSystem::willRemoveSystemFromECSService(re::ecs2::VideoComponentSystem *this)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  v3 = re::ServiceLocator::serviceOrNull<re::NetworkSystem>(v2);
  if (v3)
  {
    if (*(this + 224) == 1)
    {
      v4 = v3;
      if (*(v3 + 46))
      {
        v5 = 0;
        do
        {
          v6 = (*(v4 + 48) + 32 * v5);
          if (*v6 == this)
          {
            if (!*(v4 + 108))
            {
              re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::removeStableAt(v4 + 44, v5);
              continue;
            }

            v8[0] = 0;
            v7 = *v6;
            v10 = *(v6 + 1);
            v9 = v7;
            re::DynamicArray<re::Pair<BOOL,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription,true>>::add((v4 + 392), v8);
          }

          ++v5;
        }

        while (v5 < *(v4 + 46));
      }
    }
  }

  *(this + 41) = 0;
  *(this + 29) = 0;
  *(this + 30) = 0;
  *(this + 35) = 0;
  *(this + 36) = 0;
  *(this + 34) = 0;
}

double re::ecs2::VideoComponentSystem::willAddSceneToECSService(re::ecs2::VideoComponentSystem *this, re::ecs2::Scene *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = *(this + 34);
    if (v4)
    {
      (*(*v4 + 40))(v4, a2);
    }

    v5 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v9 = this;
    v10 = re::ecs2::SceneComponentCollection<re::ecs2::VideoComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::VideoComponentSystem::onActivateVideoComponent,re::ecs2::VideoComponentSystem>;
    v11 = 0;
    v12 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::VideoComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::VideoComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::VideoComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v5 + 96), &v9);
    v9 = this;
    v10 = re::ecs2::SceneComponentCollection<re::ecs2::VideoComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::VideoComponentSystem::willRemoveComponents,re::ecs2::VideoComponentSystem>;
    v11 = 0;
    v12 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::VideoComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::VideoComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::VideoComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v5 + 272), &v9);
    v6 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v9 = this;
    v10 = re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::VideoComponentSystem::onActivateVideoPlayerComponent,re::ecs2::VideoComponentSystem>;
    v11 = 0;
    v12 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription(v6 + 24, &v9);
    v9 = this;
    v10 = re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::VideoComponentSystem::willRemoveVideoPlayerComponents,re::ecs2::VideoComponentSystem>;
    v11 = 0;
    v12 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription(v6 + 68, &v9);
    v9 = this;
    v10 = re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::VideoComponentSystem::didAddVideoPlayerComponents,re::ecs2::VideoComponentSystem>;
    v11 = 0;
    v12 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription(v6 + 2, &v9);
    v7 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::VideoProxyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v9 = this;
    v10 = re::ecs2::SceneComponentCollection<re::ecs2::VideoProxyComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::VideoComponentSystem::onActivateVideoProxyComponent,re::ecs2::VideoComponentSystem>;
    v11 = 0;
    v12 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::VideoProxyComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::VideoProxyComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::VideoProxyComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    return re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v7 + 96), &v9);
  }

  return result;
}

void re::ecs2::VideoComponentSystem::willRemoveSceneFromECSService(re::ecs2::VideoComponentSystem *this, re::ecs2::Scene *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = *(this + 34);
    if (v4)
    {
      (*(*v4 + 48))(v4, a2);
    }

    v5 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    *&v8 = this;
    *(&v8 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::VideoComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::VideoComponentSystem::onActivateVideoComponent,re::ecs2::VideoComponentSystem>;
    v9 = 0;
    v10 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::VideoComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::VideoComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::VideoComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v5 + 96, &v8);
    *&v8 = this;
    *(&v8 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::VideoComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::VideoComponentSystem::willRemoveComponents,re::ecs2::VideoComponentSystem>;
    v9 = 0;
    v10 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::VideoComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::VideoComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::VideoComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v5 + 272, &v8);
    v6 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    *&v8 = this;
    *(&v8 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::VideoComponentSystem::onActivateVideoPlayerComponent,re::ecs2::VideoComponentSystem>;
    v9 = 0;
    v10 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v6 + 96, &v8);
    *&v8 = this;
    *(&v8 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::VideoComponentSystem::willRemoveVideoPlayerComponents,re::ecs2::VideoComponentSystem>;
    v9 = 0;
    v10 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v6 + 272, &v8);
    *&v8 = this;
    *(&v8 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::VideoComponentSystem::didAddVideoPlayerComponents,re::ecs2::VideoComponentSystem>;
    v9 = 0;
    v10 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v6 + 8, &v8);
    v7 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::VideoProxyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    *&v8 = this;
    *(&v8 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::VideoProxyComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::VideoComponentSystem::onActivateVideoProxyComponent,re::ecs2::VideoComponentSystem>;
    v9 = 0;
    v10 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::VideoProxyComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::VideoProxyComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::VideoProxyComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v7 + 96, &v8);
  }
}

void re::ecs2::VideoComponentSystem::update(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = a1[32];
  if (v6)
  {
    *(v6 + 264) = 0;
    v7 = *(v6 + 272);
    if (v7)
    {
      if (*(v7 + 128) == 1)
      {
        a1 = *(v7 + 64);
        if (a1)
        {
          a1 = [a1 dispatchAvailableCompletionNotifications];
        }
      }
    }

    if (re::VideoDefaults::pipelineEnabled(a1))
    {
      v8 = re::VideoManager::pipelineProcessor(*(v5 + 256));
      re::VideoPipelineProcessor::handleCompletionsIfNeeded(v8);
    }
  }

  v9 = *(a3 + 200);
  if (v9)
  {
    v10 = *(a3 + 216);
    v11 = 8 * v9;
    do
    {
      v12 = *v10++;
      re::ecs2::VideoComponentSystem::updateInternal(v5, v12, a2, a3);
      v11 -= 8;
    }

    while (v11);
  }
}

void re::ecs2::VideoComponentSystem::updateInternal(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v1057 = *MEMORY[0x1E69E9840];
  _D9 = CACurrentMediaTime();
  v8 = _D9;
  if (re::VideoDefaults::targetDisplayTimeAllowed(v9))
  {
    v10 = *(a1 + 232);
    if (v10)
    {
      if (*(v10 + 1312) > 0.0)
      {
        v8 = *(v10 + 1312);
      }
    }
  }

  v11 = *&a3;
  memset(&v980, 0, sizeof(v980));
  CMTimeMakeWithSeconds(&v980, v8, 1000000000);
  v12 = *(a1 + 280);
  if (v12)
  {
    v895 = (*(*v12 + 24))(v12);
  }

  else
  {
    v895 = 0;
  }

  v13 = *(a1 + 256);
  v903 = a1;
  if (!v13)
  {
    v26 = (a1 + 288);
    goto LABEL_122;
  }

  v14 = *(a1 + 240);
  if (v14)
  {
    re::VideoManager::initializeVideoProcessorIfNeeded(v13, v14);
    v16 = re::VideoDefaults::pipelineEnabled(v15);
    if (v16)
    {
      v17 = *(*(a1 + 240) + 344);
      v18 = re::defaultVideoHDRDisplayInfo(v16);
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v23 = *(v18 + 3);
      v22 = *(v18 + 4);
      v24 = *(v18 + 20);
      *v1036 = *(v18 + 21);
      v1036[2] = *(v18 + 23);
      if (v17[58])
      {
        v25 = re::TargetDisplayInfoProvider::{unnamed type#10}::operator()((v17 + 54));
      }

      else
      {
        v25 = re::VideoHDRDefaults::targetNits(v18);
      }

      v27 = re::VideoHDRDefaults::overrideTargetNits(v25);
      v28 = v27;
      if (v17[64])
      {
        v30 = re::TargetDisplayInfoProvider::{unnamed type#11}::operator()((v17 + 60));
      }

      else
      {
        v30 = re::VideoHDRDefaults::maxEdrValue(v27);
      }

      v913 = re::VideoHDRDefaults::overrideMaxEdrValue(v29, v30);
      if (v17[70])
      {
        v33 = re::TargetDisplayInfoProvider::{unnamed type#12}::operator()((v17 + 66));
      }

      else
      {
        v33 = re::VideoHDRDefaults::maxEdrFactor(v31);
      }

      v910 = re::VideoHDRDefaults::overrideMaxEdrFactor(v32, v33);
      if (v17[52])
      {
        v36 = re::TargetDisplayInfoProvider::{unnamed type#9}::operator()((v17 + 48));
      }

      else
      {
        v36 = re::VideoHDRDefaults::currentMaxNits(v34);
      }

      v38 = re::VideoHDRDefaults::overrideCurrentMaxNits(v35, v36);
      v928 = v8;
      v920 = _D9;
      if (v17[46])
      {
        v40 = re::TargetDisplayInfoProvider::{unnamed type#8}::operator()((v17 + 42));
      }

      else
      {
        v40 = re::VideoHDRDefaults::currentMinNits(v37);
      }

      v41 = re::VideoHDRDefaults::overrideCurrentMinNits(v39, v40);
      v42 = *(v903 + 240);
      v43 = *(*(v42 + 120) + 2196);
      v46 = re::VideoHDRDefaults::overrideAmbientLightInNits(v44, v38 * (v43 + (*(*(v42 + 160) + 212) * (*(*(v42 + 160) + 216) - v43))));
      if (v17[34])
      {
        v48 = re::TargetDisplayInfoProvider::{unnamed type#6}::operator()((v17 + 30));
      }

      else
      {
        v48 = re::VideoHDRDefaults::sdrMaxBrightnessInNits(v45);
      }

      v49 = re::VideoHDRDefaults::overrideSdrMaxBrightnessInNits(v47, v48);
      if (v17[16])
      {
        v20 = re::TargetDisplayInfoProvider::{unnamed type#3}::operator()((v17 + 12));
      }

      if (v17[10])
      {
        v21 = re::TargetDisplayInfoProvider::{unnamed type#2}::operator()((v17 + 6));
      }

      if (v17[4])
      {
        v23 = re::TargetDisplayInfoProvider::{unnamed type#1}::operator()(v17);
      }

      if (v17[22])
      {
        v22 = re::TargetDisplayInfoProvider::{unnamed type#4}::operator()((v17 + 18));
      }

      if (v17[28])
      {
        v24 = re::TargetDisplayInfoProvider::{unnamed type#5}::operator()((v17 + 24));
      }

      v50 = re::VideoHDRDefaults::overrideDisplayMaximumBrightnessInNits(v20);
      v51 = re::VideoHDRDefaults::overrideDisplayAverageBrightnessInNits(v21);
      v52 = v51;
      v53 = re::VideoHDRDefaults::overrideDisplayMinimumBrightnessInNits(v51, v23);
      v55 = re::VideoHDRDefaults::overrideDisplayContrastRatio(v54, v22);
      v56 = re::VideoHDRDefaults::overrideDisplayAdjustsBlackLevel((v24 & 1));
      a1 = v903;
      re::VideoManager::globalContext(*(v903 + 256));
      v58 = *(*(v903 + 240) + 160);
      LOBYTE(v59) = 1;
      if (v58[112] == 1)
      {
        v60 = *v58;
        if (v60 > 3)
        {
          LOBYTE(v59) = 2;
        }

        else
        {
          v59 = 0x9090C01u >> (8 * v60);
        }
      }

      *(v57 + 16) = v59;
      *(v57 + 17) = 8;
      *(v57 + 19) = 1;
      *(v57 + 20) = v19;
      *(v57 + 24) = v50;
      *(v57 + 28) = v52;
      *(v57 + 32) = v53;
      *(v57 + 36) = v55;
      *(v57 + 40) = v56;
      *(v57 + 41) = *v1036;
      *(v57 + 43) = v1036[2];
      *(v57 + 56) = v38;
      *(v57 + 60) = v41;
      *(v57 + 48) = v913;
      *(v57 + 52) = v910;
      *(v57 + 64) = v43;
      *(v57 + 68) = v46;
      *(v57 + 72) = v49;
      *(v57 + 44) = v28;
      v8 = v928;
      _D9 = v920;
    }
  }

  v61 = *(a1 + 256);
  v880 = (a1 + 288);
  v62 = *(a1 + 288);
  if (v62)
  {
    if (!v61)
    {
      v26 = (a1 + 288);
      goto LABEL_122;
    }

    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashSetBase(v1036, v61 + 80);
    v63 = *&v1036[32];
    if (*&v1036[32])
    {
      v64 = 0;
      v65 = (*&v1036[16] + 8);
      while (1)
      {
        v66 = *v65;
        v65 += 6;
        if (v66 < 0)
        {
          break;
        }

        if (*&v1036[32] == ++v64)
        {
          LODWORD(v64) = *&v1036[32];
          break;
        }
      }
    }

    else
    {
      LODWORD(v64) = 0;
    }

    if (v64 != *&v1036[32])
    {
      v67 = *&v1036[16];
      do
      {
        v68 = *(v67 + 24 * v64 + 16);
        os_unfair_lock_lock((v62 + 128));
        re::AssetManager::lookupExistingAsset_assetTablesLocked(v62, v68, buf);
        os_unfair_lock_unlock((v62 + 128));
        if (buf[0].u8[0] == 1)
        {
          re::AssetHandle::AssetHandle(v1046, &buf[0].u32[2]);
          re::AssetHandle::AssetHandle(v979, v1046);
          v69 = re::VideoAsset::loadAndConnectForRendering(v979);
          re::AssetHandle::~AssetHandle(v979);
          if (v69)
          {
            v70 = *(a1 + 256);
            *&v1014[0] = v68;
            re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(v70 + 80, v1014);
            v71 = *(a1 + 256);
            *&v1014[0] = v68;
            re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v71 + 128, v1014);
          }

          re::AssetHandle::~AssetHandle(v1046);
          if (buf[0].i8[0])
          {
            re::AssetHandle::~AssetHandle(&buf[0].u32[2]);
          }
        }

        v67 = *&v1036[16];
        if (*&v1036[32] <= (v64 + 1))
        {
          v72 = v64 + 1;
        }

        else
        {
          v72 = *&v1036[32];
        }

        while (v72 - 1 != v64)
        {
          LODWORD(v64) = v64 + 1;
          if ((*(*&v1036[16] + 24 * v64 + 8) & 0x80000000) != 0)
          {
            goto LABEL_68;
          }
        }

        LODWORD(v64) = v72;
LABEL_68:
        ;
      }

      while (v64 != v63);
    }

    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashSetBase(buf, *(a1 + 256) + 128);
    v73 = buf[2].i32[0];
    if (buf[2].i32[0])
    {
      v74 = 0;
      v75 = (buf[1].i64[0] + 8);
      while (1)
      {
        v76 = *v75;
        v75 += 6;
        if (v76 < 0)
        {
          break;
        }

        if (buf[2].u32[0] == ++v74)
        {
          LODWORD(v74) = buf[2].i32[0];
          break;
        }
      }
    }

    else
    {
      LODWORD(v74) = 0;
    }

    if (v74 != buf[2].i32[0])
    {
      v77 = buf[1].i64[0];
      do
      {
        v78 = *(v77 + 24 * v74 + 16);
        os_unfair_lock_lock((v62 + 128));
        re::AssetManager::lookupExistingAsset_assetTablesLocked(v62, v78, v1046);
        os_unfair_lock_unlock((v62 + 128));
        if (v1046[0].u8[0] == 1)
        {
          re::AssetHandle::AssetHandle(v1014, &v1046[0].u32[2]);
          v79 = re::AssetHandle::loadedAsset<re::VideoAsset>(v1014);
          if (v79)
          {
            v80 = v79;
            if (*(v79 + 208))
            {
              v1009 = 0;
              LOBYTE(v1004) = 0;
              LOBYTE(v1000[0]) = 0;
              v81 = *(*(*(a1 + 240) + 56) + 16);
              v82 = *(a1 + 256);
              v83 = a1;
              v84 = *(a1 + 240);
              v85 = *(v83 + 248);
              v983 = *&v980.value;
              v984.i64[0] = v980.epoch;
              v978 = v81;
              re::VideoAsset::retrieveBuffersAndUpdateRuntimeData(v80, v82, v84, v85, v895, &v1009, &v983, &v1004, v1000, &v978);
              if (v978)
              {

                v978 = 0;
              }

              a1 = v903;
              if (v1004 == 1)
              {
                v86 = *(v903 + 256);
                v983.i64[0] = v78;
                re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(v86 + 128, &v983);
              }

              if (v81)
              {
              }
            }
          }

          re::AssetHandle::~AssetHandle(v1014);
          if (v1046[0].i8[0])
          {
            re::AssetHandle::~AssetHandle(&v1046[0].u32[2]);
          }
        }

        v77 = buf[1].i64[0];
        if (buf[2].i32[0] <= (v74 + 1))
        {
          v87 = v74 + 1;
        }

        else
        {
          v87 = buf[2].i32[0];
        }

        while (v87 - 1 != v74)
        {
          LODWORD(v74) = v74 + 1;
          if ((*(buf[1].i64[0] + 24 * v74 + 8) & 0x80000000) != 0)
          {
            goto LABEL_95;
          }
        }

        LODWORD(v74) = v87;
LABEL_95:
        ;
      }

      while (v74 != v73);
    }

    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashSetBase(v1046, *(a1 + 256) + 176);
    v88 = v1047.i32[0];
    if (v1047.i32[0])
    {
      v89 = 0;
      v90 = (v1046[1].i64[0] + 8);
      while (1)
      {
        v91 = *v90;
        v90 += 6;
        if (v91 < 0)
        {
          break;
        }

        if (v1047.u32[0] == ++v89)
        {
          LODWORD(v89) = v1047.i32[0];
          break;
        }
      }
    }

    else
    {
      LODWORD(v89) = 0;
    }

    if (v89 != v1047.i32[0])
    {
      v92 = v1046[1].i64[0];
      do
      {
        v93 = *(v92 + 24 * v89 + 16);
        os_unfair_lock_lock((v62 + 128));
        re::AssetManager::lookupExistingAsset_assetTablesLocked(v62, v93, v1014);
        os_unfair_lock_unlock((v62 + 128));
        if (LOBYTE(v1014[0]) == 1)
        {
          re::AssetHandle::AssetHandle(&v983, (v1014 + 8));
          v94 = re::AssetHandle::loadedAsset<re::VideoAsset>(&v983);
          if (v94)
          {
            v95 = v94 + 120;
            v96 = atomic_load(v94 + 120);
            if (v96)
            {
              re::VideoAsset::cleanupTextureCache(v94);
              atomic_store(0, v95);
            }
          }

          re::AssetHandle::~AssetHandle(&v983);
          if (v1014[0])
          {
            re::AssetHandle::~AssetHandle((v1014 + 8));
          }
        }

        v92 = v1046[1].i64[0];
        if (v1047.i32[0] <= (v89 + 1))
        {
          v97 = v89 + 1;
        }

        else
        {
          v97 = v1047.i32[0];
        }

        while (v97 - 1 != v89)
        {
          LODWORD(v89) = v89 + 1;
          if ((*(v1046[1].i64[0] + 24 * v89 + 8) & 0x80000000) != 0)
          {
            goto LABEL_117;
          }
        }

        LODWORD(v89) = v97;
LABEL_117:
        ;
      }

      while (v89 != v88);
    }

    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v1046);
    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(buf);
    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v1036);
    v61 = *(a1 + 256);
  }

  v26 = v880;
  if (v61)
  {
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashSetBase(v1036, v61 + 176);
    v98 = *&v1036[28];
    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v1036);
    if (v98 || ((re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashSetBase(v1036, *(a1 + 256) + 80), v124 = *&v1036[28], re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v1036), re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashSetBase(v1036, *(a1 + 256) + 128), v125 = *&v1036[28], re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v1036), v126 = re::VideoAutoCounter::count((*(a1 + 256) + 280)), !re::VideoDefaults::pipelineEnabled(v126)) ? (v128 = 0) : (v127 = re::VideoManager::pipelineProcessor(*(a1 + 256)), v128 = re::VideoAutoCounter::count((v127 + 8)) > 0), v126 > 0 || v124 || v125 || v128))
    {
      re::ecs2::System::queueToRun(a1, a2[47], 0.0);
    }
  }

LABEL_122:
  v99 = re::ecs2::SceneComponentTable::get((a2 + 25), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v99)
  {
    v100 = *(v99 + 384);
  }

  else
  {
    v100 = 0;
  }

  v101 = re::ecs2::SceneComponentTable::get((a2 + 25), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v101)
  {
    v102 = *(v101 + 384) == 0;
  }

  else
  {
    v102 = 1;
  }

  v103 = re::ecs2::SceneComponentTable::get((a2 + 25), re::ecs2::ComponentImpl<re::ecs2::VideoProxyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v103)
  {
    v104 = *(v103 + 384) == 0;
  }

  else
  {
    v104 = 1;
  }

  if (v100 == 0 && v102 && v104)
  {
    return;
  }

  re::ecs2::System::queueToRun(a1, a2[47], 0.0);
  if ((a3 & 0x100000000) != 0)
  {
    return;
  }

  if (!*(a1 + 240))
  {
    return;
  }

  v105 = *(a1 + 232);
  if (v105)
  {
    if ((*(v105 + 432) & 0x10) == 0)
    {
      return;
    }
  }

  v877 = a3;
  v893.i64[0] = re::ecs2::ImageBasedReflectionSystem::findReflectionContentComponent(a2, 0);
  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v977);
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v976, 3091, a1);
  ViewportInfoForCurrentFrame = re::ecs2::VideoPlayerComponentHelper::getViewportInfoForCurrentFrame(a2, v106);
  v974 = ViewportInfoForCurrentFrame;
  v975 = WORD2(ViewportInfoForCurrentFrame);
  v108 = re::ecs2::SceneComponentTable::get((a2 + 25), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v108)
  {
    v109 = *(v108 + 48);
    if (v109)
    {
      v110 = *(v108 + 50);
      for (i = 8 * v109; i; i -= 8)
      {
        v112 = *v110;
        re::AssetHandle::AssetHandle(v1036, (*v110 + 40));
        v113 = re::AssetHandle::loadedAsset<re::VideoAsset>(v1036);
        if (v113)
        {
          v114 = v113;
          if (*&v1036[8] && *(*&v1036[8] + 24))
          {
            re::internal::AssetEntry::fromPeerID(*&v1036[8], buf);
            if (buf[0].i8[0])
            {
              v115 = buf[0].i64[1];
            }

            else
            {
              v115 = 0;
            }
          }

          else
          {
            v115 = 0;
          }

          if (v115 != *(v114 + 960))
          {
            v116 = *(v903 + 336);
            if (v116)
            {
              v117 = (*(*v116 + 64))(v116, v115);
              if (v117)
              {
                if (*(v114 + 960) != v115)
                {
                  *(v114 + 960) = v115;
                }

                if (*(v114 + 968) != v117)
                {
                  *(v114 + 968) = v117;
                  *(v114 + 972) = 1;
                }
              }
            }
          }

          re::VideoAsset::processResourceData(v114);
          VideoPlayerComponentHelper = re::VideoAsset::createOrGetVideoPlayerComponentHelper(v114, *(v903 + 296), *(v903 + 304), *(*(v903 + 240) + 80));
          if (VideoPlayerComponentHelper)
          {
            v119 = VideoPlayerComponentHelper;
            v120 = *(v112 + 108);
            if (v120 == 2)
            {
              re::ecs2::VideoPlayerComponentHelper::impl::startVideoBlurFadeOut(*VideoPlayerComponentHelper);
            }

            else if (v120 == 1)
            {
              re::ecs2::VideoPlayerComponentHelper::impl::startVideoBlurFadeIn(*VideoPlayerComponentHelper, *(v112 + 100), *(v112 + 104));
            }

            if (*v26)
            {
              v123 = *(v112 + 16);
              re::AssetHandle::AssetHandle(v973, v1036);
              re::ecs2::VideoPlayerComponentHelper::preBufferRetrievalUpdate(v119, &v974, v123, v973, *(v903 + 288), *(v903 + 240), *(v903 + 256));
              re::AssetHandle::~AssetHandle(v973);
            }

            goto LABEL_166;
          }

          v122 = *re::videoLogObjects(0);
          if (os_log_type_enabled(v122, OS_LOG_TYPE_FAULT))
          {
            buf[0].i16[0] = 0;
            _os_log_fault_impl(&dword_1E1C61000, v122, OS_LOG_TYPE_FAULT, "Unable to create VideoPlayerComponentHelper", buf, 2u);
          }
        }

        else
        {
          re::AssetHandle::loadAsync(v1036);
          v122 = *re::videoLogObjects(v121);
          if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
          {
            buf[0].i16[0] = 0;
            _os_log_impl(&dword_1E1C61000, v122, OS_LOG_TYPE_DEFAULT, "Started async loading of VideoPlayerComponent's VideoAsset.", buf, 2u);
          }
        }

LABEL_166:
        re::AssetHandle::~AssetHandle(v1036);
        ++v110;
      }
    }
  }

  v881 = v26;
  v129 = re::VideoDefaults::logEnabled(v108);
  if (v129)
  {
    goto LABEL_1179;
  }

LABEL_171:
  v904 = *(v903 + 240);
  v972 = 0;
  v970 = 0;
  v969[0] = 0;
  v969[1] = 0;
  v971 = 0;
  ViewDescriptor = re::ecs2::SceneComponentTable::get((a2 + 25), re::ecs2::ComponentImpl<re::ecs2::CameraViewDescriptorsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  __asm { FMOV            V9.2S, #1.0 }

  if (ViewDescriptor)
  {
    v134 = *(ViewDescriptor + 48);
    if (v134)
    {
      v135 = *(ViewDescriptor + 50);
      log = &v135[v134];
      v136 = v1036;
      v911 = 0;
      v908 = 0;
      LODWORD(v8) = 786163454;
      LODWORD(v4) = 1.0;
      do
      {
        v890 = v135;
        v137 = *v135;
        v138 = *(*v135 + 16);
        if (v138 && (*(v138 + 304) & 1) != 0)
        {
          v139 = re::ecs2::EntityComponentCollection::get((v138 + 48), re::ecs2::ComponentImpl<re::ecs2::PerspectiveCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          v898 = v137;
          if (v139)
          {
            v140 = v139;
            v141 = *(v137 + 216);
            if (!v141)
            {
              if (*(v137 + 256))
              {
                goto LABEL_261;
              }

              re::ecs2::PerspectiveCameraComponent::calculateWorldPose(v139, 0, v1046);
              v300 = *(v904 + 112);
              if (v300)
              {
                LayerSize = re::DrawingManager::getLayerSize(v300, 0, v298, v299);
              }

              else
              {
                LayerSize = 1.0;
                v302 = 1.0;
              }

              buf[0].i32[0] = -1;
              v1024 = xmmword_1E3047670;
              v1025 = xmmword_1E3047680;
              v1026 = xmmword_1E30476A0;
              v1027 = xmmword_1E30474D0;
              buf[1] = v1046[0];
              buf[2] = v1046[1];
              *&v1028 = __PAIR64__(LODWORD(v302), LODWORD(LayerSize));
              *(&v1028 + 1) = 0x3F8000003F800000;
              v345 = LayerSize / v302;
              if (v302 < 0.0001)
              {
                v345 = 1.0;
              }

              re::ecs2::PerspectiveCameraComponent::calculateProjection(v140, v1036, v345);
LABEL_474:
              if (v1038[0] == 1)
              {
                v1024 = v1039;
                v1025 = v1040;
                v1026 = v1041;
                v1027 = cf;
              }

              else
              {
                re::Projection::cullingProjectionMatrix(v1036, &v1024);
              }

              goto LABEL_478;
            }

            if (v141 != 1 || *(v137 + 256))
            {
              v142 = 0;
              while (1)
              {
                ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(v137, v142);
                if (ViewDescriptor)
                {
                  break;
                }

LABEL_215:
                v142 = (v142 + 1);
                v137 = v898;
                if (*(v898 + 216) <= v142)
                {
                  if (!*(v898 + 256))
                  {
                    goto LABEL_478;
                  }

LABEL_261:
                  v202 = 0;
                  while (1)
                  {
                    ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(v137, (v202 + 0x10000));
                    if (ViewDescriptor)
                    {
                      break;
                    }

LABEL_296:
                    ++v202;
                    v137 = v898;
                    if (v202 >= *(v898 + 256))
                    {
                      goto LABEL_478;
                    }
                  }

                  v203 = ViewDescriptor;
                  v204 = 0;
                  v205 = ViewDescriptor + 204;
                  v206 = 1;
                  v207 = 1;
                  while (2)
                  {
                    v208 = v207;
                    if (!*(v203 + 116))
                    {
                      v215 = 0;
                      goto LABEL_287;
                    }

                    re::AssetHandle::AssetHandle(v1046, (*(v203 + 118) + 24 * v204 + 32));
                    if (v1046[0].i64[1])
                    {
                      v211 = re::AssetHandle::loadedAsset<re::TextureAsset>(v1046);
                      if (v211)
                      {
                        v929 = 0;
                        if (*(v211 + 120))
                        {
                          goto LABEL_1192;
                        }

                        v212 = *(v211 + 112);
                        if (v212)
                        {
                          v137 = v212;
                          v936 = [v212 width];
                          v213 = [v137 height];
                          v214.f32[0] = v936;
                          v214.f32[1] = v213;
                          v929 = v214;
                        }

LABEL_286:
                        re::AssetHandle::~AssetHandle(v1046);
                        v215 = v929;
LABEL_287:
                        if (fabsf(vaddv_f32(vmul_f32(v215, v215))) >= 1.0e-10)
                        {
                          v938 = v215;
                          re::ecs2::PerspectiveCameraComponent::calculateWorldPose(v140, v206, &buf[1]);
                          v1024 = xmmword_1E3047670;
                          v1025 = xmmword_1E3047680;
                          v1026 = xmmword_1E30476A0;
                          v1027 = xmmword_1E30474D0;
                          buf[0].i32[0] = v204;
                          *(&v1028 + 1) = *&v205[16 * v204 + 8];
                          *&v1028 = v938;
                          if (v938.f32[1] >= 0.0001)
                          {
                            v229 = v938.f32[0] / v938.f32[1];
                          }

                          else
                          {
                            v229 = 1.0;
                          }

                          re::ecs2::PerspectiveCameraComponent::calculateProjection(v140, v1036, v229);
                          if (v1038[0] == 1)
                          {
                            v1024 = v1039;
                            v1025 = v1040;
                            v1026 = v1041;
                            v1027 = cf;
                          }

                          else
                          {
                            re::Projection::cullingProjectionMatrix(v1036, &v1024);
                          }
                        }

                        v207 = 0;
                        v206 = 2;
                        v204 = 1;
                        if ((v208 & 1) == 0)
                        {
                          goto LABEL_296;
                        }

                        continue;
                      }

LABEL_284:
                      v219 = 0;
                    }

                    else
                    {
                      if (!*(v203 + 116))
                      {
                        goto LABEL_1160;
                      }

                      v216 = *(v203 + 118);
                      v217 = *(v216 + 4 * v204 + 80);
                      if (v217 == -1)
                      {
                        v221 = v216 + 8 * v204;
                        v222 = *(v221 + 88);
                        if (v222)
                        {
                          v223 = [v222 width];
                          if (!*(v203 + 116))
                          {
                            goto LABEL_1166;
                          }

                          v937 = v223;
                          v224 = *(*(v203 + 118) + 8 * v204 + 88);
                        }

                        else
                        {
                          v225 = *(v221 + 104);
                          if (!v225)
                          {
                            goto LABEL_284;
                          }

                          v226 = [v225 width];
                          if (!*(v203 + 116))
                          {
                            goto LABEL_1171;
                          }

                          v937 = v226;
                          v224 = *(*(v203 + 118) + 8 * v204 + 104);
                        }

                        v227 = [v224 height];
                        v228.f32[0] = v937;
                        v228.f32[1] = v227;
                        v929 = v228;
                        goto LABEL_286;
                      }

                      v218 = *(v904 + 112);
                      if (v218)
                      {
                        v219.f32[0] = re::DrawingManager::getLayerSize(v218, v217, v209, v210);
                      }

                      else
                      {
                        v219.i32[0] = 1.0;
                        v220 = 1.0;
                      }

                      v219.f32[1] = v220;
                    }

                    break;
                  }

                  v929 = v219;
                  goto LABEL_286;
                }
              }

              v143 = ViewDescriptor;
              v144 = 0;
              v145 = ViewDescriptor + 204;
              v146 = 1;
              v147 = 1;
              while (2)
              {
                v148 = v147;
                if (!*(v143 + 116))
                {
                  v155 = 0;
                  goto LABEL_206;
                }

                re::AssetHandle::AssetHandle(v1046, (*(v143 + 118) + 24 * v144 + 32));
                if (v1046[0].i64[1])
                {
                  v151 = re::AssetHandle::loadedAsset<re::TextureAsset>(v1046);
                  if (v151)
                  {
                    v929 = 0;
                    if (*(v151 + 120))
                    {
                      goto LABEL_1192;
                    }

                    v152 = *(v151 + 112);
                    if (v152)
                    {
                      v137 = v152;
                      v930 = [v152 width];
                      v136 = v1036;
                      v153 = [v137 width];
                      v154.f32[0] = v930;
                      v154.f32[1] = v153;
                      v929 = v154;
                    }

LABEL_205:
                    re::AssetHandle::~AssetHandle(v1046);
                    v155 = v929;
LABEL_206:
                    if (fabsf(vaddv_f32(vmul_f32(v155, v155))) >= 1.0e-10)
                    {
                      v932 = v155;
                      re::ecs2::PerspectiveCameraComponent::calculateWorldPose(v140, v146, &buf[1]);
                      v1024 = xmmword_1E3047670;
                      v1025 = xmmword_1E3047680;
                      v1026 = xmmword_1E30476A0;
                      v1027 = xmmword_1E30474D0;
                      buf[0].i32[0] = v144;
                      *(&v1028 + 1) = *&v145[16 * v144 + 8];
                      *&v1028 = v932;
                      if (v932.f32[1] >= 0.0001)
                      {
                        v169 = v932.f32[0] / v932.f32[1];
                      }

                      else
                      {
                        v169 = 1.0;
                      }

                      re::ecs2::PerspectiveCameraComponent::calculateProjection(v140, v1036, v169);
                      if (v1038[0] == 1)
                      {
                        v1024 = v1039;
                        v1025 = v1040;
                        v1026 = v1041;
                        v1027 = cf;
                      }

                      else
                      {
                        re::Projection::cullingProjectionMatrix(v1036, &v1024);
                      }
                    }

                    v147 = 0;
                    v146 = 2;
                    v144 = 1;
                    if ((v148 & 1) == 0)
                    {
                      goto LABEL_215;
                    }

                    continue;
                  }

LABEL_203:
                  v159 = 0;
                }

                else
                {
                  if (!*(v143 + 116))
                  {
                    *&v1014[0] = 0;
                    v1037 = 0u;
                    memset(v1036, 0, sizeof(v1036));
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    buf[0].i32[0] = 136315906;
                    *(buf[0].i64 + 4) = "operator[]";
                    buf[0].i16[6] = 1024;
                    *(&buf[0].i32[3] + 2) = 797;
                    buf[1].i16[1] = 2048;
                    *(buf[1].i64 + 4) = 0;
                    buf[1].i16[6] = 2048;
                    *(&buf[1].i64[1] + 6) = 0;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_1160:
                    *&v1014[0] = 0;
                    v1037 = 0u;
                    memset(v1036, 0, sizeof(v1036));
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    buf[0].i32[0] = 136315906;
                    *(buf[0].i64 + 4) = "operator[]";
                    buf[0].i16[6] = 1024;
                    *(&buf[0].i32[3] + 2) = 797;
                    buf[1].i16[1] = 2048;
                    *(buf[1].i64 + 4) = 0;
                    buf[1].i16[6] = 2048;
                    *(&buf[1].i64[1] + 6) = 0;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
                    goto LABEL_1161;
                  }

                  v156 = *(v143 + 118);
                  v157 = *(v156 + 4 * v144 + 80);
                  if (v157 == -1)
                  {
                    v161 = v156 + 8 * v144;
                    v162 = *(v161 + 88);
                    if (v162)
                    {
                      v163 = [v162 width];
                      if (!*(v143 + 116))
                      {
                        goto LABEL_1165;
                      }

                      v931 = v163;
                      v164 = *(*(v143 + 118) + 8 * v144 + 88);
                    }

                    else
                    {
                      v165 = *(v161 + 104);
                      if (!v165)
                      {
                        goto LABEL_203;
                      }

                      v166 = [v165 width];
                      if (!*(v143 + 116))
                      {
                        goto LABEL_1169;
                      }

                      v931 = v166;
                      v164 = *(*(v143 + 118) + 8 * v144 + 104);
                    }

                    v167 = [v164 height];
                    v168.f32[0] = v931;
                    v168.f32[1] = v167;
                    v929 = v168;
                    goto LABEL_205;
                  }

                  v158 = *(v904 + 112);
                  if (v158)
                  {
                    v159.f32[0] = re::DrawingManager::getLayerSize(v158, v157, v149, v150);
                  }

                  else
                  {
                    v159.i32[0] = 1.0;
                    v160 = 1.0;
                  }

                  v159.f32[1] = v160;
                }

                break;
              }

              v929 = v159;
              goto LABEL_205;
            }

            ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(v137, 0);
            if (ViewDescriptor)
            {
              v261 = ViewDescriptor;
              v262 = 0;
              v263 = 1;
              v264 = 1;
              do
              {
                v265 = v264;
                v266 = 0;
                if (!*(v261 + 116))
                {
                  ViewDescriptor = *(v904 + 112);
                  if (ViewDescriptor)
                  {
                    v266.f32[0] = re::DrawingManager::getLayerSize(ViewDescriptor, 0, 0.0, v260);
                  }

                  else
                  {
                    v266.i32[0] = 1.0;
                    v267 = 1.0;
                  }

                  v266.f32[1] = v267;
                }

                v260 = COERCE_DOUBLE(vmul_f32(v266, v266));
                *&v260 = fabsf(vaddv_f32(*&v260));
                if (*&v260 >= 1.0e-10)
                {
                  v942 = v266;
                  re::ecs2::PerspectiveCameraComponent::calculateWorldPose(v140, v263, &buf[1]);
                  v1024 = xmmword_1E3047670;
                  v1025 = xmmword_1E3047680;
                  v1026 = xmmword_1E30476A0;
                  v1027 = xmmword_1E30474D0;
                  buf[0].i32[0] = v262;
                  *(&v1028 + 1) = _D9;
                  *&v1028 = v942;
                  if (v942.f32[1] >= 0.0001)
                  {
                    v268 = v942.f32[0] / v942.f32[1];
                  }

                  else
                  {
                    v268 = 1.0;
                  }

                  re::ecs2::PerspectiveCameraComponent::calculateProjection(v140, v1036, v268);
                  if (v1038[0] == 1)
                  {
                    v1024 = v1039;
                    v1025 = v1040;
                    v1026 = v1041;
                    v1027 = cf;
                  }

                  else
                  {
                    re::Projection::cullingProjectionMatrix(v1036, &v1024);
                  }
                }

                v264 = 0;
                v262 = 1;
                v263 = 2;
              }

              while ((v265 & 1) != 0);
            }
          }

          else
          {
            v170 = re::ecs2::EntityComponentCollection::get((v138 + 48), re::ecs2::ComponentImpl<re::ecs2::OrthographicCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
            if (v170)
            {
              v171 = v170;
              v172 = *(v137 + 216);
              if (!v172)
              {
                if (*(v137 + 256))
                {
                  goto LABEL_355;
                }

                re::ecs2::OrthographicCameraComponent::calculateWorldPose(v170, 0, v1046);
                v342 = *(v904 + 112);
                if (v342)
                {
                  v343 = re::DrawingManager::getLayerSize(v342, 0, v340, v341);
                }

                else
                {
                  v343 = 1.0;
                  v344 = 1.0;
                }

                buf[0].i32[0] = -1;
                v1024 = xmmword_1E3047670;
                v1025 = xmmword_1E3047680;
                v1026 = xmmword_1E30476A0;
                v1027 = xmmword_1E30474D0;
                buf[1] = v1046[0];
                buf[2] = v1046[1];
                *&v1028 = __PAIR64__(LODWORD(v344), LODWORD(v343));
                *(&v1028 + 1) = 0x3F8000003F800000;
                v359 = v343 / v344;
                if (v344 < 0.0001)
                {
                  v359 = 1.0;
                }

                re::ecs2::OrthographicCameraComponent::calculateProjection(v171, v1036, v359);
                goto LABEL_474;
              }

              if (v172 != 1 || *(v137 + 256))
              {
                v173 = 0;
                while (1)
                {
                  ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(v137, v173);
                  if (ViewDescriptor)
                  {
                    break;
                  }

LABEL_257:
                  v173 = (v173 + 1);
                  v137 = v898;
                  if (*(v898 + 216) <= v173)
                  {
                    if (!*(v898 + 256))
                    {
                      goto LABEL_478;
                    }

LABEL_355:
                    v269 = 0;
                    while (1)
                    {
                      ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(v137, (v269 + 0x10000));
                      if (ViewDescriptor)
                      {
                        break;
                      }

LABEL_390:
                      ++v269;
                      v137 = v898;
                      if (v269 >= *(v898 + 256))
                      {
                        goto LABEL_478;
                      }
                    }

                    v270 = ViewDescriptor;
                    v271 = 0;
                    v272 = ViewDescriptor + 204;
                    v273 = 1;
                    v274 = 1;
                    while (2)
                    {
                      v275 = v274;
                      if (!*(v270 + 116))
                      {
                        v283 = 0;
                        goto LABEL_381;
                      }

                      re::AssetHandle::AssetHandle(v1046, (*(v270 + 118) + 24 * v271 + 32));
                      if (v1046[0].i64[1])
                      {
                        v278 = re::AssetHandle::loadedAsset<re::TextureAsset>(v1046);
                        if (v278)
                        {
                          v929 = 0;
                          if (*(v278 + 120))
                          {
                            goto LABEL_1192;
                          }

                          v279 = *(v278 + 112);
                          if (v279)
                          {
                            v280 = v279;
                            v943 = [v279 width];
                            v281 = [v280 height];
                            v282.f32[0] = v943;
                            v282.f32[1] = v281;
                            v929 = v282;
                          }

LABEL_380:
                          re::AssetHandle::~AssetHandle(v1046);
                          v283 = v929;
LABEL_381:
                          if (fabsf(vaddv_f32(vmul_f32(v283, v283))) >= 1.0e-10)
                          {
                            v945 = v283;
                            re::ecs2::OrthographicCameraComponent::calculateWorldPose(v171, v273, &buf[1]);
                            v1024 = xmmword_1E3047670;
                            v1025 = xmmword_1E3047680;
                            v1026 = xmmword_1E30476A0;
                            v1027 = xmmword_1E30474D0;
                            buf[0].i32[0] = v271;
                            *(&v1028 + 1) = *&v272[16 * v271 + 8];
                            *&v1028 = v945;
                            if (v945.f32[1] >= 0.0001)
                            {
                              v297 = v945.f32[0] / v945.f32[1];
                            }

                            else
                            {
                              v297 = 1.0;
                            }

                            re::ecs2::OrthographicCameraComponent::calculateProjection(v171, v1036, v297);
                            if (v1038[0] == 1)
                            {
                              v1024 = v1039;
                              v1025 = v1040;
                              v1026 = v1041;
                              v1027 = cf;
                            }

                            else
                            {
                              re::Projection::cullingProjectionMatrix(v1036, &v1024);
                            }
                          }

                          v274 = 0;
                          v273 = 2;
                          v271 = 1;
                          if ((v275 & 1) == 0)
                          {
                            goto LABEL_390;
                          }

                          continue;
                        }

LABEL_378:
                        v287 = 0;
                      }

                      else
                      {
                        if (!*(v270 + 116))
                        {
                          goto LABEL_1164;
                        }

                        v284 = *(v270 + 118);
                        v285 = *(v284 + 4 * v271 + 80);
                        if (v285 == -1)
                        {
                          v289 = v284 + 8 * v271;
                          v290 = *(v289 + 88);
                          if (v290)
                          {
                            v291 = [v290 width];
                            if (!*(v270 + 116))
                            {
                              goto LABEL_1172;
                            }

                            v944 = v291;
                            v292 = *(*(v270 + 118) + 8 * v271 + 88);
                          }

                          else
                          {
                            v293 = *(v289 + 104);
                            if (!v293)
                            {
                              goto LABEL_378;
                            }

                            v294 = [v293 width];
                            if (!*(v270 + 116))
                            {
                              goto LABEL_1175;
                            }

                            v944 = v294;
                            v292 = *(*(v270 + 118) + 8 * v271 + 104);
                          }

                          v295 = [v292 height];
                          v296.f32[0] = v944;
                          v296.f32[1] = v295;
                          v929 = v296;
                          goto LABEL_380;
                        }

                        v286 = *(v904 + 112);
                        if (v286)
                        {
                          v287.f32[0] = re::DrawingManager::getLayerSize(v286, v285, v276, v277);
                        }

                        else
                        {
                          v287.i32[0] = 1.0;
                          v288 = 1.0;
                        }

                        v287.f32[1] = v288;
                      }

                      break;
                    }

                    v929 = v287;
                    goto LABEL_380;
                  }
                }

                v174 = ViewDescriptor;
                v175 = 0;
                v176 = ViewDescriptor + 204;
                v177 = 1;
                v178 = 1;
                while (2)
                {
                  v179 = v178;
                  if (!*(v174 + 116))
                  {
                    v187 = 0;
                    goto LABEL_248;
                  }

                  re::AssetHandle::AssetHandle(v1046, (*(v174 + 118) + 24 * v175 + 32));
                  if (v1046[0].i64[1])
                  {
                    v182 = re::AssetHandle::loadedAsset<re::TextureAsset>(v1046);
                    if (v182)
                    {
                      v929 = 0;
                      if (*(v182 + 120))
                      {
                        goto LABEL_1192;
                      }

                      v183 = *(v182 + 112);
                      if (v183)
                      {
                        v184 = v183;
                        v933 = [v183 width];
                        v136 = v1036;
                        v185 = [v184 width];
                        v186.f32[0] = v933;
                        v186.f32[1] = v185;
                        v929 = v186;
                      }

LABEL_247:
                      re::AssetHandle::~AssetHandle(v1046);
                      v187 = v929;
LABEL_248:
                      if (fabsf(vaddv_f32(vmul_f32(v187, v187))) >= 1.0e-10)
                      {
                        v935 = v187;
                        re::ecs2::OrthographicCameraComponent::calculateWorldPose(v171, v177, &buf[1]);
                        v1024 = xmmword_1E3047670;
                        v1025 = xmmword_1E3047680;
                        v1026 = xmmword_1E30476A0;
                        v1027 = xmmword_1E30474D0;
                        buf[0].i32[0] = v175;
                        *(&v1028 + 1) = *&v176[16 * v175 + 8];
                        *&v1028 = v935;
                        if (v935.f32[1] >= 0.0001)
                        {
                          v201 = v935.f32[0] / v935.f32[1];
                        }

                        else
                        {
                          v201 = 1.0;
                        }

                        re::ecs2::OrthographicCameraComponent::calculateProjection(v171, v1036, v201);
                        if (v1038[0] == 1)
                        {
                          v1024 = v1039;
                          v1025 = v1040;
                          v1026 = v1041;
                          v1027 = cf;
                        }

                        else
                        {
                          re::Projection::cullingProjectionMatrix(v1036, &v1024);
                        }
                      }

                      v178 = 0;
                      v177 = 2;
                      v175 = 1;
                      if ((v179 & 1) == 0)
                      {
                        goto LABEL_257;
                      }

                      continue;
                    }

LABEL_245:
                    v191 = 0;
                  }

                  else
                  {
                    if (!*(v174 + 116))
                    {
                      goto LABEL_1163;
                    }

                    v188 = *(v174 + 118);
                    v189 = *(v188 + 4 * v175 + 80);
                    if (v189 == -1)
                    {
                      v193 = v188 + 8 * v175;
                      v194 = *(v193 + 88);
                      if (v194)
                      {
                        v195 = [v194 width];
                        if (!*(v174 + 116))
                        {
                          goto LABEL_1170;
                        }

                        v934 = v195;
                        v196 = *(*(v174 + 118) + 8 * v175 + 88);
                      }

                      else
                      {
                        v197 = *(v193 + 104);
                        if (!v197)
                        {
                          goto LABEL_245;
                        }

                        v198 = [v197 width];
                        if (!*(v174 + 116))
                        {
                          goto LABEL_1173;
                        }

                        v934 = v198;
                        v196 = *(*(v174 + 118) + 8 * v175 + 104);
                      }

                      v199 = [v196 height];
                      v200.f32[0] = v934;
                      v200.f32[1] = v199;
                      v929 = v200;
                      goto LABEL_247;
                    }

                    v190 = *(v904 + 112);
                    if (v190)
                    {
                      v191.f32[0] = re::DrawingManager::getLayerSize(v190, v189, v180, v181);
                    }

                    else
                    {
                      v191.i32[0] = 1.0;
                      v192 = 1.0;
                    }

                    v191.f32[1] = v192;
                  }

                  break;
                }

                v929 = v191;
                goto LABEL_247;
              }

              ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(v137, 0);
              if (ViewDescriptor)
              {
                v304 = ViewDescriptor;
                v305 = 0;
                v306 = 1;
                v307 = 1;
                do
                {
                  v308 = v307;
                  v309 = 0;
                  if (!*(v304 + 116))
                  {
                    ViewDescriptor = *(v904 + 112);
                    if (ViewDescriptor)
                    {
                      v309.f32[0] = re::DrawingManager::getLayerSize(ViewDescriptor, 0, 0.0, v303);
                    }

                    else
                    {
                      v309.i32[0] = 1.0;
                      v310 = 1.0;
                    }

                    v309.f32[1] = v310;
                  }

                  v303 = COERCE_DOUBLE(vmul_f32(v309, v309));
                  *&v303 = fabsf(vaddv_f32(*&v303));
                  if (*&v303 >= 1.0e-10)
                  {
                    v946 = v309;
                    re::ecs2::OrthographicCameraComponent::calculateWorldPose(v171, v306, &buf[1]);
                    v1024 = xmmword_1E3047670;
                    v1025 = xmmword_1E3047680;
                    v1026 = xmmword_1E30476A0;
                    v1027 = xmmword_1E30474D0;
                    buf[0].i32[0] = v305;
                    *(&v1028 + 1) = _D9;
                    *&v1028 = v946;
                    if (v946.f32[1] >= 0.0001)
                    {
                      v311 = v946.f32[0] / v946.f32[1];
                    }

                    else
                    {
                      v311 = 1.0;
                    }

                    re::ecs2::OrthographicCameraComponent::calculateProjection(v171, v1036, v311);
                    if (v1038[0] == 1)
                    {
                      v1024 = v1039;
                      v1025 = v1040;
                      v1026 = v1041;
                      v1027 = cf;
                    }

                    else
                    {
                      re::Projection::cullingProjectionMatrix(v1036, &v1024);
                    }
                  }

                  v307 = 0;
                  v305 = 1;
                  v306 = 2;
                }

                while ((v308 & 1) != 0);
              }
            }

            else
            {
              ViewDescriptor = re::ecs2::EntityComponentCollection::get((v138 + 48), re::ecs2::ComponentImpl<re::ecs2::CustomMatrixCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
              if (!ViewDescriptor)
              {
                goto LABEL_478;
              }

              v230 = ViewDescriptor;
              v231 = *(v137 + 216);
              if (!v231)
              {
                if (*(v137 + 256))
                {
                  goto LABEL_412;
                }

                re::ecs2::CustomMatrixCameraComponent::calculateWorldPose(ViewDescriptor, 0, v1046);
                v356 = *(v904 + 112);
                if (v356)
                {
                  v357 = re::DrawingManager::getLayerSize(v356, 0, v354, v355);
                }

                else
                {
                  v357 = 1.0;
                  v358 = 1.0;
                }

                buf[0].i32[0] = -1;
                v1024 = xmmword_1E3047670;
                v1025 = xmmword_1E3047680;
                v1026 = xmmword_1E30476A0;
                v1027 = xmmword_1E30474D0;
                buf[1] = v1046[0];
                buf[2] = v1046[1];
                *&v1028 = __PAIR64__(LODWORD(v358), LODWORD(v357));
                *(&v1028 + 1) = 0x3F8000003F800000;
                re::ecs2::CustomMatrixCameraComponent::calculateProjection(v230, 0, v1036);
                goto LABEL_474;
              }

              if (v231 != 1 || *(v137 + 256))
              {
                v232 = 0;
                while (1)
                {
                  ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(v137, v232);
                  if (ViewDescriptor)
                  {
                    break;
                  }

LABEL_334:
                  v232 = (v232 + 1);
                  v137 = v898;
                  if (*(v898 + 216) <= v232)
                  {
                    if (!*(v898 + 256))
                    {
                      goto LABEL_478;
                    }

LABEL_412:
                    v312 = 0;
                    while (1)
                    {
                      ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(v137, (v312 + 0x10000));
                      if (ViewDescriptor)
                      {
                        break;
                      }

LABEL_444:
                      ++v312;
                      v137 = v898;
                      if (v312 >= *(v898 + 256))
                      {
                        goto LABEL_478;
                      }
                    }

                    v313 = ViewDescriptor;
                    v314 = 0;
                    v315 = ViewDescriptor + 204;
                    v316 = 1;
                    v317 = 1;
                    while (2)
                    {
                      v318 = v317;
                      if (!*(v313 + 116))
                      {
                        v326 = 0;
                        goto LABEL_438;
                      }

                      re::AssetHandle::AssetHandle(v1046, (*(v313 + 118) + 24 * v314 + 32));
                      if (v1046[0].i64[1])
                      {
                        v321 = re::AssetHandle::loadedAsset<re::TextureAsset>(v1046);
                        if (v321)
                        {
                          v929 = 0;
                          if (*(v321 + 120))
                          {
                            goto LABEL_1192;
                          }

                          v322 = *(v321 + 112);
                          if (v322)
                          {
                            v323 = v322;
                            v947 = [v322 width];
                            v324 = [v323 height];
                            v325.f32[0] = v947;
                            v325.f32[1] = v324;
                            v929 = v325;
                          }

LABEL_437:
                          re::AssetHandle::~AssetHandle(v1046);
                          v326 = v929;
LABEL_438:
                          if (fabsf(vaddv_f32(vmul_f32(v326, v326))) >= 1.0e-10)
                          {
                            v949 = v326;
                            re::ecs2::CustomMatrixCameraComponent::calculateWorldPose(v230, v316, &buf[1]);
                            v1024 = xmmword_1E3047670;
                            v1025 = xmmword_1E3047680;
                            v1026 = xmmword_1E30476A0;
                            v1027 = xmmword_1E30474D0;
                            buf[0].i32[0] = v314;
                            *(&v1028 + 1) = *&v315[16 * v314 + 8];
                            *&v1028 = v949;
                            re::ecs2::CustomMatrixCameraComponent::calculateProjection(v230, v316, v1036);
                            if (v1038[0] == 1)
                            {
                              v1024 = v1039;
                              v1025 = v1040;
                              v1026 = v1041;
                              v1027 = cf;
                            }

                            else
                            {
                              re::Projection::cullingProjectionMatrix(v1036, &v1024);
                            }
                          }

                          v317 = 0;
                          v316 = 2;
                          v314 = 1;
                          if ((v318 & 1) == 0)
                          {
                            goto LABEL_444;
                          }

                          continue;
                        }

LABEL_435:
                        v330 = 0;
                      }

                      else
                      {
                        if (!*(v313 + 116))
                        {
                          goto LABEL_1168;
                        }

                        v327 = *(v313 + 118);
                        v328 = *(v327 + 4 * v314 + 80);
                        if (v328 == -1)
                        {
                          v332 = v327 + 8 * v314;
                          v333 = *(v332 + 88);
                          if (v333)
                          {
                            v334 = [v333 width];
                            if (!*(v313 + 116))
                            {
                              goto LABEL_1176;
                            }

                            v948 = v334;
                            v335 = *(*(v313 + 118) + 8 * v314 + 88);
                          }

                          else
                          {
                            v336 = *(v332 + 104);
                            if (!v336)
                            {
                              goto LABEL_435;
                            }

                            v337 = [v336 width];
                            if (!*(v313 + 116))
                            {
                              goto LABEL_1178;
                            }

                            v948 = v337;
                            v335 = *(*(v313 + 118) + 8 * v314 + 104);
                          }

                          v338 = [v335 height];
                          v339.f32[0] = v948;
                          v339.f32[1] = v338;
                          v929 = v339;
                          goto LABEL_437;
                        }

                        v329 = *(v904 + 112);
                        if (v329)
                        {
                          v330.f32[0] = re::DrawingManager::getLayerSize(v329, v328, v319, v320);
                        }

                        else
                        {
                          v330.i32[0] = 1.0;
                          v331 = 1.0;
                        }

                        v330.f32[1] = v331;
                      }

                      break;
                    }

                    v929 = v330;
                    goto LABEL_437;
                  }
                }

                v233 = ViewDescriptor;
                v234 = 0;
                v235 = ViewDescriptor + 204;
                v236 = 1;
                v237 = 1;
                while (2)
                {
                  v238 = v237;
                  if (!*(v233 + 116))
                  {
                    v246 = 0;
                    goto LABEL_328;
                  }

                  re::AssetHandle::AssetHandle(v1046, (*(v233 + 118) + 24 * v234 + 32));
                  if (v1046[0].i64[1])
                  {
                    v241 = re::AssetHandle::loadedAsset<re::TextureAsset>(v1046);
                    if (v241)
                    {
                      v929 = 0;
                      if (*(v241 + 120))
                      {
LABEL_1192:
                        v864 = std::__throw_bad_variant_access[abi:nn200100]();
                        goto LABEL_1193;
                      }

                      v242 = *(v241 + 112);
                      if (v242)
                      {
                        v243 = v242;
                        v939 = [v242 width];
                        v136 = v1036;
                        v244 = [v243 width];
                        v245.f32[0] = v939;
                        v245.f32[1] = v244;
                        v929 = v245;
                      }

LABEL_327:
                      re::AssetHandle::~AssetHandle(v1046);
                      v246 = v929;
LABEL_328:
                      if (fabsf(vaddv_f32(vmul_f32(v246, v246))) >= 1.0e-10)
                      {
                        v941 = v246;
                        re::ecs2::CustomMatrixCameraComponent::calculateWorldPose(v230, v236, &buf[1]);
                        v1024 = xmmword_1E3047670;
                        v1025 = xmmword_1E3047680;
                        v1026 = xmmword_1E30476A0;
                        v1027 = xmmword_1E30474D0;
                        buf[0].i32[0] = v234;
                        *(&v1028 + 1) = *&v235[16 * v234 + 8];
                        *&v1028 = v941;
                        re::ecs2::CustomMatrixCameraComponent::calculateProjection(v230, v236, v1036);
                        if (v1038[0] == 1)
                        {
                          v1024 = v1039;
                          v1025 = v1040;
                          v1026 = v1041;
                          v1027 = cf;
                        }

                        else
                        {
                          re::Projection::cullingProjectionMatrix(v1036, &v1024);
                        }
                      }

                      v237 = 0;
                      v236 = 2;
                      v234 = 1;
                      if ((v238 & 1) == 0)
                      {
                        goto LABEL_334;
                      }

                      continue;
                    }

LABEL_325:
                    v250 = 0;
                  }

                  else
                  {
                    if (!*(v233 + 116))
                    {
                      goto LABEL_1167;
                    }

                    v247 = *(v233 + 118);
                    v248 = *(v247 + 4 * v234 + 80);
                    if (v248 == -1)
                    {
                      v252 = v247 + 8 * v234;
                      v253 = *(v252 + 88);
                      if (v253)
                      {
                        v254 = [v253 width];
                        if (!*(v233 + 116))
                        {
                          goto LABEL_1174;
                        }

                        v940 = v254;
                        v255 = *(*(v233 + 118) + 8 * v234 + 88);
                      }

                      else
                      {
                        v256 = *(v252 + 104);
                        if (!v256)
                        {
                          goto LABEL_325;
                        }

                        v257 = [v256 width];
                        if (!*(v233 + 116))
                        {
                          goto LABEL_1177;
                        }

                        v940 = v257;
                        v255 = *(*(v233 + 118) + 8 * v234 + 104);
                      }

                      v258 = [v255 height];
                      v259.f32[0] = v940;
                      v259.f32[1] = v258;
                      v929 = v259;
                      goto LABEL_327;
                    }

                    v249 = *(v904 + 112);
                    if (v249)
                    {
                      v250.f32[0] = re::DrawingManager::getLayerSize(v249, v248, v239, v240);
                    }

                    else
                    {
                      v250.i32[0] = 1.0;
                      v251 = 1.0;
                    }

                    v250.f32[1] = v251;
                  }

                  break;
                }

                v929 = v250;
                goto LABEL_327;
              }

              ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(v137, 0);
              if (ViewDescriptor)
              {
                v347 = ViewDescriptor;
                v348 = 0;
                v349 = 1;
                v350 = 1;
                do
                {
                  v351 = v350;
                  v352 = 0;
                  if (!*(v347 + 116))
                  {
                    ViewDescriptor = *(v904 + 112);
                    if (ViewDescriptor)
                    {
                      v352.f32[0] = re::DrawingManager::getLayerSize(ViewDescriptor, 0, 0.0, v346);
                    }

                    else
                    {
                      v352.i32[0] = 1.0;
                      v353 = 1.0;
                    }

                    v352.f32[1] = v353;
                  }

                  v346 = COERCE_DOUBLE(vmul_f32(v352, v352));
                  *&v346 = fabsf(vaddv_f32(*&v346));
                  if (*&v346 >= 1.0e-10)
                  {
                    v950 = v352;
                    re::ecs2::CustomMatrixCameraComponent::calculateWorldPose(v230, v349, &buf[1]);
                    v1024 = xmmword_1E3047670;
                    v1025 = xmmword_1E3047680;
                    v1026 = xmmword_1E30476A0;
                    v1027 = xmmword_1E30474D0;
                    buf[0].i32[0] = v348;
                    *(&v1028 + 1) = _D9;
                    *&v1028 = v950;
                    re::ecs2::CustomMatrixCameraComponent::calculateProjection(v230, v349, v1036);
                    if (v1038[0] == 1)
                    {
                      v1024 = v1039;
                      v1025 = v1040;
                      v1026 = v1041;
                      v1027 = cf;
                    }

                    else
                    {
                      re::Projection::cullingProjectionMatrix(v1036, &v1024);
                    }
                  }

                  v350 = 0;
                  v348 = 1;
                  v349 = 2;
                }

                while ((v351 & 1) != 0);
              }
            }
          }
        }

LABEL_478:
        v135 = v890 + 1;
      }

      while (v890 + 1 != log);
    }
  }

  v968 = 0;
  v966 = 0;
  v967 = 0;
  v965 = 0;
  v360 = re::DynamicArray<re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::VideoAssetInfo>::setCapacity(&v964, 0);
  ++v967;
  if (re::VideoDefaults::colorSpaceTransformationAllowed(v360))
  {
    v361 = v903;
    v362 = *(v903 + 248);
    if (v362[112] == 1)
    {
      v363 = *v362;
    }

    else
    {
      v363 = 0;
    }
  }

  else
  {
    v363 = 0;
    v361 = v903;
  }

  v364 = (*(**(v361 + 328) + 24))(*(v361 + 328));
  v365 = re::ecs2::SceneComponentTable::get((a2 + 25), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v365)
  {
    v366 = *(v365 + 48);
    if (v366)
    {
      v367 = *(v365 + 50);
      v368 = &v367[v366];
      v369 = &unk_1EE1C6000;
      v370 = &unk_1ECEF7000;
      v921 = v363;
      v914 = v368;
      do
      {
        v371 = *v367;
        v951 = *(*v367 + 16);
        v372 = re::VideoDefaults::logEnabled(v365);
        if (v372)
        {
          v436 = *re::videoLogObjects(v372);
          if (os_log_type_enabled(v436, OS_LOG_TYPE_DEFAULT))
          {
            v437 = *(v951 + 296);
            v438 = @"Yes";
            if ((*(v951 + 304) & 1) == 0)
            {
              v438 = @"No";
            }

            *v1036 = 136315394;
            *&v1036[4] = v437;
            *&v1036[12] = 2112;
            *&v1036[14] = v438;
            _os_log_impl(&dword_1E1C61000, v436, OS_LOG_TYPE_DEFAULT, "[VideoComponent]->update :: Entity %s isActive == %@;", v1036, 0x16u);
          }

          v370 = &unk_1ECEF7000;
        }

        if (v369[320] != -1)
        {
          dispatch_once(&re::GraphicsFeatureFlags::systemMaterialParametersDirtyTracking(void)::onceToken, &__block_literal_global_41);
        }

        if (v370[232] == 1)
        {
          re::ecs2::VideoComponent::removeParamsFromSystemParameterBlock(v371, *(*(v903 + 240) + 24), 0, (*(v371 + 348) & 1) == 0);
        }

        *(v371 + 240) = -1;
        *(v371 + 232) = 0;
        *(v371 + 246) = v363;
        *(v371 + 344) = 1065353216;
        re::AssetHandle::loadAsync((v371 + 32));
        v374 = re::VideoDefaults::logEnabled(v373);
        if (v374)
        {
          v439 = *re::videoLogObjects(v374);
          if (os_log_type_enabled(v439, OS_LOG_TYPE_DEFAULT))
          {
            v440 = *(v951 + 296);
            if (*(v951 + 304))
            {
              v441 = @"Yes";
            }

            else
            {
              v441 = @"No";
            }

            v442 = *(v371 + 40);
            if (v442)
            {
              v443 = atomic_load((v442 + 896));
              if (v443 == 2)
              {
                v444 = @"Yes";
              }

              else
              {
                v444 = @"No";
              }
            }

            else
            {
              v444 = @"No";
            }

            v451 = *(v371 + 332);
            *v1036 = 136315906;
            *&v1036[4] = v440;
            *&v1036[12] = 2112;
            *&v1036[14] = v441;
            *&v1036[22] = 2112;
            *&v1036[24] = v444;
            *&v1036[32] = 1024;
            *&v1036[34] = v451;
            _os_log_impl(&dword_1E1C61000, v439, OS_LOG_TYPE_DEFAULT, "[VideoComponent]->update :: Entity %s isActive == %@; materials.isLoaded == %@; traits == %d", v1036, 0x26u);
          }

          v370 = &unk_1ECEF7000;
        }

        if ((*(v951 + 304) & 1) != 0 && (v375 = *(v371 + 40)) != 0 && (v376 = atomic_load((v375 + 896)), v376 == 2) && (v377 = *(v371 + 16)) != 0 && (v378 = *(v377 + 216)) != 0 && re::ecs2::NetworkComponent::owningProcessType(v378) == 2 && *(v903 + 344) == 0.0)
        {
          for (j = 0; j != 320; j += 160)
          {
            v380 = &v1036[j];
            *(v380 + 108) = 0uLL;
            *(v380 + 5) = 0uLL;
            *(v380 + 6) = 0uLL;
            *(v380 + 3) = 0uLL;
            *(v380 + 4) = 0uLL;
            *(v380 + 1) = 0uLL;
            *(v380 + 2) = 0uLL;
            *v380 = 0uLL;
            *(v380 + 35) = 0x10000;
            *(v380 + 18) = 0;
            *(v380 + 76) = 514;
            v380[154] = 2;
          }

          v1044 = -1;
          v1045 = 0;
          re::ecs2::VideoComponent::queryMaterialPropertiesIfNeeded(v371);
          v381 = *(v371 + 329);
          v383 = re::VideoDefaults::logEnabled(v382);
          if (v381 == 1)
          {
            if (v383)
            {
              v458 = *re::videoLogObjects(v383);
              if (os_log_type_enabled(v458, OS_LOG_TYPE_DEFAULT))
              {
                buf[0].i16[0] = 0;
                _os_log_impl(&dword_1E1C61000, v458, OS_LOG_TYPE_DEFAULT, "VideoComponent's material supports applying a gamma tone curve. Using Metal textures that do not apply a hardware de-gamma", buf, 2u);
              }

              v363 = v921;
              v368 = v914;
            }

            re::ecs2::VideoComponent::getVideoTextureHandles(v371, buf);
            for (k = 0; k != 320; k += 160)
            {
              v385 = &v1036[k];
              v386 = &buf[k / 0x10];
              re::TextureHandle::operator=(&v1036[k], &buf[k / 0x10]);
              re::TextureHandle::operator=(&v1036[k + 16], &buf[k / 0x10 + 1]);
              re::TextureHandle::operator=(&v1036[k + 32], &buf[k / 0x10 + 2]);
              re::TextureHandle::operator=(&v1036[k + 48], &buf[k / 0x10 + 3]);
              re::TextureHandle::operator=(&v1036[k + 64], &v1025 + k);
              re::TextureHandle::operator=(&v1038[k], &v1026 + k);
              re::TextureHandle::operator=(&v1039 + k, &v1027 + k);
              v387 = *(&v1029 + k);
              *(v385 + 7) = *(&v1028 + k);
              *(v385 + 8) = v387;
              *(v385 + 18) = *(&v1030 + k);
              v386[9].i64[0] = 0;
              *(v385 + 76) = *(&v1031 + k);
              v385[154] = v386[9].i8[10];
            }

            v388 = 0;
            v1044 = v1034;
            v1045 = v1035;
            do
            {
              v389 = &buf[v388];
              if (*&v1033[v388 * 16])
              {
                re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v389 + 38);
              }

              v389[38] = 0;
              re::TextureHandle::invalidate((v389 + 32));
              re::TextureHandle::invalidate((v389 + 30));
              re::TextureHandle::invalidate((v389 + 28));
              re::TextureHandle::invalidate((v389 + 26));
              re::TextureHandle::invalidate((v389 + 24));
              re::TextureHandle::invalidate((v389 + 22));
              re::TextureHandle::invalidate((v389 + 20));
              v388 -= 10;
            }

            while (v388 != -20);
          }

          else
          {
            if (v383)
            {
              v459 = *re::videoLogObjects(v383);
              if (os_log_type_enabled(v459, OS_LOG_TYPE_DEFAULT))
              {
                buf[0].i16[0] = 0;
                _os_log_impl(&dword_1E1C61000, v459, OS_LOG_TYPE_DEFAULT, "VideoComponent's material does not support applying a gamma tone curve. Using Metal textures that apply a hardware de-gamma", buf, 2u);
              }

              v363 = v921;
              v368 = v914;
            }

            re::ecs2::VideoComponent::getLegacyVideoTextureHandles(buf, v371);
            for (m = 0; m != 320; m += 160)
            {
              v420 = &v1036[m];
              v421 = &buf[m / 0x10];
              re::TextureHandle::operator=(&v1036[m], &buf[m / 0x10]);
              re::TextureHandle::operator=(&v1036[m + 16], &buf[m / 0x10 + 1]);
              re::TextureHandle::operator=(&v1036[m + 32], &buf[m / 0x10 + 2]);
              re::TextureHandle::operator=(&v1036[m + 48], &buf[m / 0x10 + 3]);
              re::TextureHandle::operator=(&v1036[m + 64], &v1025 + m);
              re::TextureHandle::operator=(&v1038[m], &v1026 + m);
              re::TextureHandle::operator=(&v1039 + m, &v1027 + m);
              v422 = *(&v1029 + m);
              *(v420 + 7) = *(&v1028 + m);
              *(v420 + 8) = v422;
              *(v420 + 18) = *(&v1030 + m);
              v421[9].i64[0] = 0;
              *(v420 + 76) = *(&v1031 + m);
              v420[154] = v421[9].i8[10];
            }

            v423 = 0;
            v1044 = v1034;
            v1045 = v1035;
            do
            {
              v424 = &buf[v423];
              if (*&v1033[v423 * 16])
              {
                re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v424 + 38);
              }

              v424[38] = 0;
              re::TextureHandle::invalidate((v424 + 32));
              re::TextureHandle::invalidate((v424 + 30));
              re::TextureHandle::invalidate((v424 + 28));
              re::TextureHandle::invalidate((v424 + 26));
              re::TextureHandle::invalidate((v424 + 24));
              re::TextureHandle::invalidate((v424 + 22));
              re::TextureHandle::invalidate((v424 + 20));
              v423 -= 10;
            }

            while (v423 != -20);
          }

          re::TextureHandle::TextureHandle(buf, v1036);
          re::TextureHandle::TextureHandle(&buf[1], &v1036[16]);
          re::TextureHandle::TextureHandle(&buf[2], &v1036[32]);
          re::TextureHandle::TextureHandle(&v1024, &v1036[48]);
          re::TextureHandle::TextureHandle(&v1025, &v1037);
          re::TextureHandle::TextureHandle(&v1026, v1038);
          re::TextureHandle::TextureHandle(&v1027, &v1039);
          v1028 = v1040;
          v1029 = v1041;
          v1030 = 0;
          re::VideoObject<re::VideoColorTransformBase>::setRef(&v1030, &v1030, cf);
          v1031 = WORD4(cf);
          v1032 = BYTE10(cf);
          v425 = BYTE12(v1029);
          v426 = BYTE13(v1029);
          v427 = *(v903 + 240);
          re::VideoTextureHandles::VideoTextureHandles(v963, v1036);
          v428 = re::ecs2::VideoComponent::YCbCrMatrix(v371);
          v429 = re::ecs2::VideoComponent::imageFunction(v371);
          re::ecs2::VideoComponent::processAttachments(v371, v427, v963, v428, v429, 0, v425, (v426 & 1) == 0);
          for (n = 0; n != -80; n -= 40)
          {
            v431 = &v963[n];
            if (*&v963[n + 76])
            {
              re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v431 + 38);
            }

            v431[38] = 0;
            re::TextureHandle::invalidate((v431 + 32));
            re::TextureHandle::invalidate((v431 + 30));
            re::TextureHandle::invalidate((v431 + 28));
            re::TextureHandle::invalidate((v431 + 26));
            re::TextureHandle::invalidate((v431 + 24));
            re::TextureHandle::invalidate((v431 + 22));
            re::TextureHandle::invalidate((v431 + 20));
          }

          v433 = re::VideoDefaults::logEnabled(v432);
          if (v433)
          {
            v452 = *re::videoLogObjects(v433);
            if (os_log_type_enabled(v452, OS_LOG_TYPE_DEFAULT))
            {
              v453 = *(v951 + 296);
              v454 = @"Yes";
              if ((*(v951 + 304) & 1) == 0)
              {
                v454 = @"No";
              }

              v455 = *(v371 + 40);
              if (v455)
              {
                v456 = atomic_load((v455 + 896));
                _ZF = v456 == 2;
                v457 = @"Yes";
                if (!_ZF)
                {
                  v457 = @"No";
                }
              }

              else
              {
                v457 = @"No";
              }

              v1046[0].i32[0] = 136315650;
              *(v1046[0].i64 + 4) = v453;
              v1046[0].i16[6] = 2112;
              *(&v1046[0].i64[1] + 6) = v454;
              v1046[1].i16[3] = 2112;
              v1046[1].i64[1] = v457;
              _os_log_impl(&dword_1E1C61000, v452, OS_LOG_TYPE_DEFAULT, "[VideoComponent]->update :: PlaybackComponent is Remote :: Entity %s isActive == %@; materials.isLoaded == %@", v1046, 0x20u);
            }

            v363 = v921;
            v368 = v914;
          }

          v410 = v363;
          v370 = &unk_1ECEF7000;
          if (v1030)
          {
            re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(&v1030);
          }

          v1030 = 0;
          re::TextureHandle::invalidate(&v1027);
          re::TextureHandle::invalidate(&v1026);
          re::TextureHandle::invalidate(&v1025);
          re::TextureHandle::invalidate(&v1024);
          re::TextureHandle::invalidate(&buf[2]);
          re::TextureHandle::invalidate(&buf[1]);
          re::TextureHandle::invalidate(buf);
          for (ii = 0; ii != -320; ii -= 160)
          {
            v435 = &v1036[ii];
            if (*&v1043[ii])
            {
              re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v435 + 38);
            }

            v435[38] = 0;
            re::TextureHandle::invalidate((v435 + 32));
            re::TextureHandle::invalidate((v435 + 30));
            re::TextureHandle::invalidate((v435 + 28));
            re::TextureHandle::invalidate((v435 + 26));
            re::TextureHandle::invalidate((v435 + 24));
            re::TextureHandle::invalidate((v435 + 22));
            re::TextureHandle::invalidate((v435 + 20));
          }
        }

        else
        {
          re::AssetHandle::AssetHandle(v962, (v371 + 208));
          v390 = re::VideoAsset::loadAndConnectForRendering(v962);
          re::AssetHandle::~AssetHandle(v962);
          v365 = re::VideoDefaults::logEnabled(v391);
          if (v365)
          {
            v445 = *re::videoLogObjects(v365);
            if (os_log_type_enabled(v445, OS_LOG_TYPE_DEFAULT))
            {
              v446 = *(v951 + 296);
              v447 = @"Yes";
              if (*(v951 + 304))
              {
                v448 = @"Yes";
              }

              else
              {
                v448 = @"No";
              }

              if (!v390)
              {
                v447 = @"No";
              }

              *v1036 = 136315650;
              *&v1036[4] = v446;
              *&v1036[12] = 2112;
              *&v1036[14] = v448;
              *&v1036[22] = 2112;
              *&v1036[24] = v447;
              _os_log_impl(&dword_1E1C61000, v445, OS_LOG_TYPE_DEFAULT, "[VideoComponent]->update :: Entity %s isActive == %@; VideoAssetIsLoaded == %@", v1036, 0x20u);
            }

            v370 = &unk_1ECEF7000;
          }

          if ((*(v951 + 304) & 1) == 0 || !v390)
          {
            goto LABEL_549;
          }

          v392 = re::ecs2::EntityComponentCollection::get((v951 + 48), re::ecs2::ComponentImpl<re::ecs2::PassthroughDarkeningComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
          if (v392)
          {
            v393 = v392;
            v392 = re::VideoDefaults::logEnabled(v392);
            if (v392)
            {
              v449 = *re::videoLogObjects(v392);
              if (os_log_type_enabled(v449, OS_LOG_TYPE_DEFAULT))
              {
                v450 = "Disabled";
                if (*(v393 + 25))
                {
                  v450 = "Enabled";
                }

                *v1036 = 136315138;
                *&v1036[4] = v450;
                _os_log_impl(&dword_1E1C61000, v449, OS_LOG_TYPE_DEFAULT, "[VideoComponent]->update :: PassthroughDarkeningComponent Exists and lightspillEnabled is %s", v1036, 0xCu);
              }
            }

            v394 = *(v393 + 25);
          }

          else
          {
            v394 = 0;
          }

          v395 = *(v390 + 26);
          v396 = v395 && *v395;
          if (*(v371 + 350) != v396)
          {
            *(v371 + 350) = v396;
            re::ecs2::Component::enqueueMarkDirty(v371);
            v392 = *(*(v371 + 16) + 216);
            if (v392)
            {
              re::ecs2::NetworkComponent::markDirty(v392, v371);
            }
          }

          v397 = re::VideoPSEProcessor::NeedsProcessing(v392);
          v398 = re::VideoDefaults::overridePseEnabled(v397);
          v399 = v398;
          if (re::VideoDefaults::useLegacyVideoTextures(v398))
          {
            v400 = 1;
          }

          else
          {
            re::ecs2::VideoComponent::queryMaterialPropertiesIfNeeded(v371);
            v400 = *(v371 + 329) ^ 1;
          }

          v401 = *(v390 + 27);
          if (v401)
          {
            v402 = *(*v401 + 4);
          }

          else
          {
            v402 = 0;
          }

          v403 = (v399 ^ 1) & v394;
          v404 = v400 & 1;
          v405 = v401 != 0;
          v406 = v402 & 1;
          v407 = re::ecs2::EntityComponentCollection::get((v951 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoProxyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) != 0;
          *(v390 + 949) = 0;
          v408 = (v407 | v402) & 1;
          *v1036 = v951;
          *&v1036[8] = v371;
          v409 = re::AssetHandle::AssetHandle(&v1036[16], (v371 + 208));
          *&v1036[40] = v390;
          v1036[48] = v403;
          v1036[49] = v404;
          v1036[50] = v408;
          v1036[51] = v405;
          v1036[52] = v406;
          v410 = v921;
          v368 = v914;
          v370 = &unk_1ECEF7000;
          if (v966 >= v965)
          {
            v411 = v966 + 1;
            if (v965 < v966 + 1)
            {
              if (v964)
              {
                v412 = 8;
                if (v965)
                {
                  v412 = 2 * v965;
                }

                if (v412 <= v411)
                {
                  v413 = v966 + 1;
                }

                else
                {
                  v413 = v412;
                }

                re::DynamicArray<re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::VideoAssetInfo>::setCapacity(&v964, v413);
              }

              else
              {
                re::DynamicArray<re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::VideoAssetInfo>::setCapacity(&v964, v411);
                ++v967;
              }
            }
          }

          v414 = v966;
          v415 = &v968[7 * v966];
          *v415 = *v1036;
          v415[3] = 0;
          v415[4] = 0;
          v415[2] = 0;
          v415[3] = *&v1036[24];
          *&v1036[24] = 0;
          v416 = v415[2];
          v415[2] = 0;
          v415[2] = *&v1036[16];
          *&v1036[16] = v416;
          v417 = v415[4];
          v415[4] = *&v1036[32];
          *&v1036[32] = v417;
          v418 = *&v1036[45];
          v415[5] = *&v1036[40];
          *(v415 + 45) = v418;
          v966 = v414 + 1;
          ++v967;
          re::AssetHandle::~AssetHandle(&v1036[16]);
        }

        v369 = &unk_1EE1C6000;
        v363 = v410;
LABEL_549:
        ++v367;
      }

      while (v367 != v368);
    }
  }

  v460 = re::VideoDefaults::autoSynchronousProcessingAllowed(v365);
  v461 = v968;
  v462 = v966;
  if (v460)
  {
    v463 = 126 - 2 * __clz(v966);
    if (v966)
    {
      v464 = v463;
    }

    else
    {
      v464 = 0;
    }

    std::__introsort<std::_ClassicAlgPolicy,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::$_1 &,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::VideoAssetInfo *,false>(v968, &v968[7 * v966], v464, 1);
  }

  if (v462)
  {
    v465 = (v461 + 40);
    v466 = 56 * v462;
    do
    {
      v467 = *v465;
      *(v467 + 16) = -1;
      v468 = *(v467 + 184);
      if (v468)
      {
        *(v468 + 9704) = 0;
      }

      v465 += 7;
      v466 -= 56;
    }

    while (v466);
  }

  v922 = v461;
  v469 = re::VideoDefaults::histogramGenerationAllowed(v460);
  if (v469)
  {
    v469 = re::VideoDefaults::overrideHistogramGeneration(v469);
    if (!v462)
    {
      goto LABEL_639;
    }

    v470 = 56 * v462;
    v471 = (v461 + 48);
    do
    {
      if ((*v471 | v469))
      {
        v472 = *(v471 - 1);
        if (v472)
        {
          v473 = *(v472 + 184);
          if (v473)
          {
            *(v473 + 9704) |= 1u;
          }
        }
      }

      v471 += 56;
      v470 -= 56;
    }

    while (v470);
  }

  if (v462)
  {
    v474 = 56 * v462;
    v475 = (v461 + 40);
    do
    {
      if (v475[9] == 1)
      {
        v476 = *(*v475 + 184);
        if (v476)
        {
          *(v476 + 9704) |= 2u;
        }
      }

      v475 += 56;
      v474 -= 56;
    }

    while (v474);
  }

LABEL_639:
  v477 = re::VideoDefaults::autoSynchronousProcessingAllowed(v469);
  if (v477)
  {
    if (!v462)
    {
      goto LABEL_657;
    }

    v478 = 56 * v462;
    v479 = v461 + 40;
    do
    {
      v480 = *(*v479 + 184);
      if (v480)
      {
        *(v480 + 9704) |= 8u;
      }

      v479 += 56;
      v478 -= 56;
    }

    while (v478);
  }

  else
  {
    if (!v462)
    {
      goto LABEL_657;
    }

    v481 = 56 * v462;
    v482 = (v461 + 40);
    do
    {
      if (v482[10] == 1)
      {
        v483 = *(*v482 + 184);
        if (v483)
        {
          *(v483 + 9704) |= 8u;
        }
      }

      v482 += 56;
      v481 -= 56;
    }

    while (v481);
  }

  v484 = 56 * v462;
  v485 = (v461 + 40);
  do
  {
    if (v485[12] == 1)
    {
      v486 = *(*v485 + 184);
      if (v486)
      {
        *(v486 + 9704) |= 0x80u;
      }
    }

    v485 += 56;
    v484 -= 56;
  }

  while (v484);
LABEL_657:
  v961 = 0;
  v912 = (v461 + 56 * v462);
  v959[2] = 0;
  v959[1] = 0;
  v960 = 0;
  re::DynamicArray<float *>::setCapacity(v959, v462);
  ++v960;
  if (v462)
  {
    v487 = 56 * v462;
    v488 = (v461 + 40);
    v874 = 7 * v462;
    do
    {
      if (v488[11] == 1)
      {
        if (*v488)
        {
          v489 = *(*v488 + 184);
          if (v489)
          {
            *(v489 + 9704) |= 0x10u;
          }
        }
      }

      v488 += 56;
      v487 -= 56;
    }

    while (v487);
    v875 = v462;
    v876 = v11;
    v929.i8[0] = 0;
    v490 = v461;
    do
    {
      v491 = re::ecs2::EntityComponentCollection::get((*v490 + 48), re::ecs2::ComponentImpl<re::ecs2::ImageBasedReflectionContentComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      v492 = 0;
      v493 = v490[5];
      if (v893.i64[0] && v893.i64[0] == v491)
      {
        v494 = re::ecs2::SceneComponentTable::get((a2 + 25), re::ecs2::ComponentImpl<re::ecs2::ImageBasedReflectionReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (v494 && (v495 = *(v494 + 384)) != 0)
        {
          v492 = 0;
          v496 = *(v494 + 400);
          v497 = 8 * v495;
          do
          {
            v498 = *v496;
            v499 = re::ecs2::ImageBasedReflectionReceiverComponent::receivesSpecularLightSpill(*v496);
            if (v499)
            {
              v500 = *(v493 + 184);
              if (v500)
              {
                v501 = *(v500 + 9704);
                *(v500 + 9704) = v501 | 4;
                if (*(v498 + 72) == 1)
                {
                  *(v500 + 9704) = v501 | 0x24;
                }
              }
            }

            v502 = re::ecs2::ImageBasedReflectionReceiverComponent::receivesDiffuseLightSpill(v498);
            (*(*v364 + 8))(v1036, v364, *(v498 + 2));
            v503 = v1036[0];
            if (!*&v1036[8])
            {
              v503 = 0;
            }

            if ((v499 | v503))
            {
              v504 = v503 ^ 1;
            }

            else
            {
              v504 = re::ecs2::ImageBasedReflectionReceiverComponent::receivesDiffuseLightSpill(v498);
            }

            v492 |= v502;
            v929.i8[0] |= v504;
            ++v496;
            v497 -= 8;
          }

          while (v497);
        }

        else
        {
          v492 = 0;
        }
      }

      v505 = *(v493 + 216);
      if (v505)
      {
        v492 |= re::ecs2::VideoPlayerComponentHelper::impl::diffuseLightSpillNeeded(*v505);
      }

      v506 = v922;
      v507 = v912;
      v508 = *(v493 + 184);
      if (v508)
      {
        if (v492)
        {
          v509 = 64;
        }

        else
        {
          v509 = 0;
        }

        *(v508 + 9704) = *(v508 + 9704) & 0xBF | v509;
      }

      v490 += 7;
    }

    while (v490 != v912);
    do
    {
      v510 = *(v506 + 8);
      v511 = *(v510 + 40);
      if (v511)
      {
        v512 = *v506;
        v513 = *(v506 + 40);
        v514 = atomic_load((v511 + 896));
        if (v514 == 2 && *(v903 + 344) == 0.0)
        {
          if (*(v510 + 57) && (v515 = v970) != 0)
          {
            v516 = v512[24];
            if (v516)
            {
              v923 = v506;
              v517 = *(v903 + 296);
              v518 = re::AssetHandle::loadedAsset<re::MeshAsset>((v516 + 32));
              if (v518)
              {
                v519 = v518;
                v872 = v513;
                re::TransformService::worldMatrix(v517, v512, 0, &v983);
                *v1036 = xmmword_1E3047670;
                *&v1036[16] = xmmword_1E3047680;
                *&v1036[32] = xmmword_1E30476A0;
                *&v1036[48] = xmmword_1E30474D0;
                re::MeshAsset::tightAABBFromMesh(v519, v1036, &v981);
                v520 = 0;
                v521 = v972;
                v879 = &v972[8 * v515];
                do
                {
                  v1020 = 0;
                  __p = 0;
                  v1021 = 0;
                  v1017 = 0;
                  __src = 0;
                  v1018 = 0;
                  std::vector<re::ecs2::PolygonFrustumClipper::Vertex>::reserve(&__src, 4uLL);
                  v522 = v521[2].f32[0];
                  v523 = v521[2].f32[1];
                  v524 = v523 + v523;
                  v525 = v521[2].f32[2];
                  v526 = v521[2].f32[3];
                  v527 = v525 + v525;
                  v528 = v522 * (v522 + v522);
                  v529 = v523 * (v523 + v523);
                  v530 = v525 * (v525 + v525);
                  v531 = (v522 + v522) * v523;
                  v532 = (v522 + v522) * v525;
                  v533 = v524 * v525;
                  v534 = (v522 + v522) * v526;
                  v535 = v524 * v526;
                  v536 = v527 * v526;
                  v1058.columns[0].i32[3] = 0;
                  v1058.columns[0].f32[0] = 1.0 - (v529 + v530);
                  v1058.columns[0].f32[1] = v531 + v536;
                  v1058.columns[0].f32[2] = v532 - v535;
                  v1058.columns[1].i32[3] = 0;
                  v1058.columns[1].f32[0] = v531 - v536;
                  v1058.columns[1].f32[1] = 1.0 - (v528 + v530);
                  v1058.columns[1].f32[2] = v533 + v534;
                  v537 = v533 - v534;
                  v1058.columns[2].i32[3] = 0;
                  v1058.columns[2].f32[0] = v532 + v535;
                  v1058.columns[2].f32[1] = v537;
                  v1058.columns[2].f32[2] = 1.0 - (v528 + v529);
                  v1058.columns[3] = v521[1];
                  v1058.columns[3].i32[3] = 1.0;
                  v1059 = __invert_f4(v1058);
                  v905 = v1059.columns[1];
                  v909 = v1059.columns[0];
                  v899 = v1059.columns[2];
                  v893 = v1059.columns[3];
                  v11 = ((v521[7].f32[0] * v521[7].f32[2]) * v521[7].f32[1]) * v521[7].f32[3];
                  v915 = v521[1];
                  re::AABB::transform(&v981, &v983, v1015);
                  v538 = vcgtq_f32(v1015[0], v915);
                  v538.i32[3] = v538.i32[2];
                  if ((vmaxvq_u32(v538) & 0x80000000) != 0 || (v539 = vcgtq_f32(v915, v1015[1]), v539.i32[3] = v539.i32[2], (vmaxvq_u32(v539) & 0x80000000) != 0))
                  {
                    v541 = 0;
                    v1048 = 0u;
                    v1047 = 0u;
                    v542 = v981;
                    v543 = v981;
                    v543.i32[0] = v982;
                    v543.i32[3] = HIDWORD(v982);
                    memset(v1046, 0, sizeof(v1046));
                    v1014[0] = v981;
                    v1014[1] = v543;
                    v544 = v982;
                    DWORD2(v544) = v981.i32[2];
                    v542.i32[1] = DWORD1(v982);
                    v1014[2] = v544;
                    v1014[3] = v542;
                    v546 = v521[3];
                    v545 = v521[4];
                    v547 = v521[5];
                    v548 = v521[6];
                    v549 = v983;
                    v550 = v984;
                    v551 = v985;
                    v552 = v986;
                    do
                    {
                      v553 = 0;
                      buf[0] = v549;
                      buf[1] = v550;
                      buf[2] = v551;
                      v1024 = v552;
                      do
                      {
                        *&v1036[v553 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v909, COERCE_FLOAT(*&buf[v553])), v905, *buf[v553].f32, 1), v899, buf[v553], 2), v893, buf[v553], 3);
                        ++v553;
                      }

                      while (v553 != 4);
                      v1046[v541] = vaddq_f32(*&v1036[48], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v1036, COERCE_FLOAT(v1014[v541])), *&v1036[16], *&v1014[v541], 1), *&v1036[32], v1014[v541], 2));
                      ++v541;
                    }

                    while (v541 != 4);
                    v554 = vaddq_f32(v548, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v546, v1046[0].f32[0]), v545, *v1046[0].f32, 1), v547, v1046[0], 2));
                    v555 = v1017;
                    v916 = v547;
                    *loga = v545;
                    v891 = v548;
                    v883 = v546;
                    if (v1017 >= v1018)
                    {
                      v557 = (v1017 - __src) >> 5;
                      v558 = v557 + 1;
                      if ((v557 + 1) >> 59)
                      {
                        goto LABEL_1195;
                      }

                      v559 = v1018 - __src;
                      if ((v1018 - __src) >> 4 > v558)
                      {
                        v558 = v559 >> 4;
                      }

                      if (v559 >= 0x7FFFFFFFFFFFFFE0)
                      {
                        v560 = 0x7FFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v560 = v558;
                      }

                      if (v560)
                      {
                        std::__allocate_at_least[abi:nn200100]<std::allocator<re::ecs2::PolygonFrustumClipper::Vertex>>(&__src, v560);
                      }

                      v561 = 32 * v557;
                      *v561 = v554;
                      *(v561 + 16) = 0;
                      v556 = 32 * v557 + 32;
                      v562 = (v561 - (v1017 - __src));
                      memcpy(v562, __src, v1017 - __src);
                      v563 = __src;
                      __src = v562;
                      v1017 = v556;
                      v1018 = 0;
                      if (v563)
                      {
                        operator delete(v563);
                      }

                      v547 = v916;
                      v545 = *loga;
                      v548 = v891;
                      v546 = v883;
                    }

                    else
                    {
                      *v1017 = v554;
                      *(v555 + 2) = 0;
                      v556 = (v555 + 32);
                    }

                    v1017 = v556;
                    v564 = vaddq_f32(v548, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v546, v1046[1].f32[0]), v545, *v1046[1].f32, 1), v547, v1046[1], 2));
                    if (v556 >= v1018)
                    {
                      v566 = (v556 - __src) >> 5;
                      if ((v566 + 1) >> 59)
                      {
                        goto LABEL_1195;
                      }

                      v567 = (v1018 - __src) >> 4;
                      if (v567 <= v566 + 1)
                      {
                        v567 = v566 + 1;
                      }

                      if (v1018 - __src >= 0x7FFFFFFFFFFFFFE0)
                      {
                        v568 = 0x7FFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v568 = v567;
                      }

                      if (v568)
                      {
                        std::__allocate_at_least[abi:nn200100]<std::allocator<re::ecs2::PolygonFrustumClipper::Vertex>>(&__src, v568);
                      }

                      v569 = 32 * v566;
                      *v569 = v564;
                      *(v569 + 16) = 1065353216;
                      v565 = 32 * v566 + 32;
                      v570 = (v569 - (v1017 - __src));
                      memcpy(v570, __src, v1017 - __src);
                      v571 = __src;
                      __src = v570;
                      v1017 = v565;
                      v1018 = 0;
                      if (v571)
                      {
                        operator delete(v571);
                      }

                      v547 = v916;
                      v545 = *loga;
                      v548 = v891;
                      v546 = v883;
                    }

                    else
                    {
                      *v556 = v564;
                      *(v556 + 16) = 1065353216;
                      v565 = v556 + 32;
                    }

                    v1017 = v565;
                    v572 = vaddq_f32(v548, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v546, v1047.f32[0]), v545, *v1047.f32, 1), v547, v1047, 2));
                    if (v565 >= v1018)
                    {
                      v574 = (v565 - __src) >> 5;
                      if ((v574 + 1) >> 59)
                      {
                        goto LABEL_1195;
                      }

                      v575 = (v1018 - __src) >> 4;
                      if (v575 <= v574 + 1)
                      {
                        v575 = v574 + 1;
                      }

                      if (v1018 - __src >= 0x7FFFFFFFFFFFFFE0)
                      {
                        v576 = 0x7FFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v576 = v575;
                      }

                      if (v576)
                      {
                        std::__allocate_at_least[abi:nn200100]<std::allocator<re::ecs2::PolygonFrustumClipper::Vertex>>(&__src, v576);
                      }

                      v577 = 32 * v574;
                      *v577 = v572;
                      *(v577 + 16) = 0x3F8000003F800000;
                      v573 = 32 * v574 + 32;
                      v578 = (v577 - (v1017 - __src));
                      memcpy(v578, __src, v1017 - __src);
                      v579 = __src;
                      __src = v578;
                      v1017 = v573;
                      v1018 = 0;
                      if (v579)
                      {
                        operator delete(v579);
                      }

                      v547 = v916;
                      v545 = *loga;
                      v548 = v891;
                      v546 = v883;
                    }

                    else
                    {
                      *v565 = v572;
                      *(v565 + 16) = 0x3F8000003F800000;
                      v573 = v565 + 32;
                    }

                    v1017 = v573;
                    v580 = vaddq_f32(v548, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v546, v1048.f32[0]), v545, *v1048.f32, 1), v547, v1048, 2));
                    if (v573 >= v1018)
                    {
                      v582 = (v573 - __src) >> 5;
                      if ((v582 + 1) >> 59)
                      {
LABEL_1195:
                        std::string::__throw_length_error[abi:nn200100]();
                      }

                      v583 = (v1018 - __src) >> 4;
                      if (v583 <= v582 + 1)
                      {
                        v583 = v582 + 1;
                      }

                      if (v1018 - __src >= 0x7FFFFFFFFFFFFFE0)
                      {
                        v584 = 0x7FFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v584 = v583;
                      }

                      if (v584)
                      {
                        std::__allocate_at_least[abi:nn200100]<std::allocator<re::ecs2::PolygonFrustumClipper::Vertex>>(&__src, v584);
                      }

                      v585 = 32 * v582;
                      *v585 = v580;
                      *(v585 + 16) = 0x3F80000000000000;
                      v581 = 32 * v582 + 32;
                      v586 = (v585 - (v1017 - __src));
                      memcpy(v586, __src, v1017 - __src);
                      v587 = __src;
                      __src = v586;
                      v1017 = v581;
                      v1018 = 0;
                      if (v587)
                      {
                        operator delete(v587);
                      }
                    }

                    else
                    {
                      *v573 = v580;
                      *(v573 + 16) = 0x3F80000000000000;
                      v581 = v573 + 32;
                    }

                    v1017 = v581;
                    re::ecs2::PolygonFrustumClipper::clipToFrustum(&__p, &__src);
                    v588 = (v1017 - __src) >> 5;
                    if (v588 >= 3)
                    {
                      buf[2].i64[0] = 0;
                      memset(buf, 0, 28);
                      v1013 = 0;
                      v1011 = 0;
                      v1009 = 0;
                      v1010 = 0;
                      v1012 = 0;
                      v1008 = 0;
                      v1006 = 0;
                      v1004 = 0;
                      v1005 = 0;
                      v1007 = 0;
                      re::DynamicArray<re::Quaternion<float>>::setCapacity(buf, (v1017 - __src) >> 5);
                      if (v1010 < v588)
                      {
                        re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(&v1009, v588);
                      }

                      if (v1005 < v588)
                      {
                        re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(&v1004, v588);
                      }

                      v590 = __src;
                      v591 = v1017;
                      while (v590 != v591)
                      {
                        *v589.f32 = *v590;
                        v589.i32[2] = v590[1].i32[0];
                        v592 = &v590[1] + 1;
                        v593 = vld1q_dup_f32(v592);
                        v594 = vdivq_f32(v589, v593);
                        *v1036 = v594;
                        v594.f32[1] = -v594.f32[1];
                        v1000[0] = vmul_f32(vadd_f32(*v594.f32, *&_D9), 0x3F0000003F000000);
                        re::DynamicArray<re::Vector3<float>>::add(buf, v1036);
                        re::DynamicArray<unsigned long>::add(&v1009, v1000);
                        v996[0] = vminnm_f32(vmaxnm_f32(v590[2], 0), *&_D9);
                        re::DynamicArray<unsigned long>::add(&v1004, v996);
                        v590 += 4;
                      }

                      v1003 = 0;
                      v1001 = 0;
                      v1000[0] = 0;
                      v1000[1] = 0;
                      v1002 = 0;
                      v999 = 0;
                      v997 = 0;
                      v996[0] = 0;
                      v996[1] = 0;
                      v998 = 0;
                      re::computeConvexHull2d(v1013, v1011, v1000);
                      re::computeConvexHull2d(v1008, v1006, v996);
                      v540 = 0;
                      if (v1001 && v997)
                      {
                        v995 = 0;
                        v993 = 0;
                        v992[0] = 0;
                        v992[1] = 0;
                        v994 = 0;
                        v991 = 0;
                        v989 = 0;
                        v987 = 0;
                        v988 = 0;
                        v990 = 0;
                        if (v1011)
                        {
                          re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(v992, v1011);
                          v595 = v988;
                        }

                        else
                        {
                          v595 = 0;
                        }

                        v596 = v1006;
                        if (v595 < v1006)
                        {
                          re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(&v987, v1006);
                        }

                        if (v1001)
                        {
                          v597 = v1003;
                          v598 = 4 * v1001;
                          while (1)
                          {
                            v137 = *v597;
                            v136 = v1011;
                            if (v1011 <= v137)
                            {
                              break;
                            }

                            re::DynamicArray<unsigned long>::add(v992, (v1013 + 8 * v137));
                            ++v597;
                            v598 -= 4;
                            if (!v598)
                            {
                              goto LABEL_776;
                            }
                          }

LABEL_1161:
                          v1022 = 0;
                          v1037 = 0u;
                          memset(v1036, 0, sizeof(v1036));
                          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                          v1049 = 136315906;
                          v1050 = "operator[]";
                          v1051 = 1024;
                          v1052 = 789;
                          v1053 = 2048;
                          v1054 = v137;
                          v1055 = 2048;
                          v1056 = v136;
                          _os_log_send_and_compose_impl();
                          _os_crash_msg();
                          __break(1u);
LABEL_1162:
                          v1022 = 0;
                          v1037 = 0u;
                          memset(v1036, 0, sizeof(v1036));
                          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                          v1049 = 136315906;
                          v1050 = "operator[]";
                          v1051 = 1024;
                          v1052 = 789;
                          v1053 = 2048;
                          v1054 = v137;
                          v1055 = 2048;
                          v1056 = v136;
                          _os_log_send_and_compose_impl();
                          _os_crash_msg();
                          __break(1u);
LABEL_1163:
                          *&v1014[0] = 0;
                          v1037 = 0u;
                          memset(v1036, 0, sizeof(v1036));
                          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                          buf[0].i32[0] = 136315906;
                          *(buf[0].i64 + 4) = "operator[]";
                          buf[0].i16[6] = 1024;
                          *(&buf[0].i32[3] + 2) = 797;
                          buf[1].i16[1] = 2048;
                          *(buf[1].i64 + 4) = 0;
                          buf[1].i16[6] = 2048;
                          *(&buf[1].i64[1] + 6) = 0;
                          _os_log_send_and_compose_impl();
                          _os_crash_msg();
                          __break(1u);
LABEL_1164:
                          *&v1014[0] = 0;
                          v1037 = 0u;
                          memset(v1036, 0, sizeof(v1036));
                          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                          buf[0].i32[0] = 136315906;
                          *(buf[0].i64 + 4) = "operator[]";
                          buf[0].i16[6] = 1024;
                          *(&buf[0].i32[3] + 2) = 797;
                          buf[1].i16[1] = 2048;
                          *(buf[1].i64 + 4) = 0;
                          buf[1].i16[6] = 2048;
                          *(&buf[1].i64[1] + 6) = 0;
                          _os_log_send_and_compose_impl();
                          _os_crash_msg();
                          __break(1u);
LABEL_1165:
                          *&v1014[0] = 0;
                          v1037 = 0u;
                          memset(v1036, 0, sizeof(v1036));
                          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                          buf[0].i32[0] = 136315906;
                          *(buf[0].i64 + 4) = "operator[]";
                          buf[0].i16[6] = 1024;
                          *(&buf[0].i32[3] + 2) = 797;
                          buf[1].i16[1] = 2048;
                          *(buf[1].i64 + 4) = 0;
                          buf[1].i16[6] = 2048;
                          *(&buf[1].i64[1] + 6) = 0;
                          _os_log_send_and_compose_impl();
                          _os_crash_msg();
                          __break(1u);
LABEL_1166:
                          *&v1014[0] = 0;
                          v1037 = 0u;
                          memset(v1036, 0, sizeof(v1036));
                          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                          buf[0].i32[0] = 136315906;
                          *(buf[0].i64 + 4) = "operator[]";
                          buf[0].i16[6] = 1024;
                          *(&buf[0].i32[3] + 2) = 797;
                          buf[1].i16[1] = 2048;
                          *(buf[1].i64 + 4) = 0;
                          buf[1].i16[6] = 2048;
                          *(&buf[1].i64[1] + 6) = 0;
                          _os_log_send_and_compose_impl();
                          _os_crash_msg();
                          __break(1u);
LABEL_1167:
                          *&v1014[0] = 0;
                          v1037 = 0u;
                          memset(v1036, 0, sizeof(v1036));
                          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                          buf[0].i32[0] = 136315906;
                          *(buf[0].i64 + 4) = "operator[]";
                          buf[0].i16[6] = 1024;
                          *(&buf[0].i32[3] + 2) = 797;
                          buf[1].i16[1] = 2048;
                          *(buf[1].i64 + 4) = 0;
                          buf[1].i16[6] = 2048;
                          *(&buf[1].i64[1] + 6) = 0;
                          _os_log_send_and_compose_impl();
                          _os_crash_msg();
                          __break(1u);
LABEL_1168:
                          *&v1014[0] = 0;
                          v1037 = 0u;
                          memset(v1036, 0, sizeof(v1036));
                          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                          buf[0].i32[0] = 136315906;
                          *(buf[0].i64 + 4) = "operator[]";
                          buf[0].i16[6] = 1024;
                          *(&buf[0].i32[3] + 2) = 797;
                          buf[1].i16[1] = 2048;
                          *(buf[1].i64 + 4) = 0;
                          buf[1].i16[6] = 2048;
                          *(&buf[1].i64[1] + 6) = 0;
                          _os_log_send_and_compose_impl();
                          _os_crash_msg();
                          __break(1u);
LABEL_1169:
                          *&v1014[0] = 0;
                          v1037 = 0u;
                          memset(v1036, 0, sizeof(v1036));
                          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                          buf[0].i32[0] = 136315906;
                          *(buf[0].i64 + 4) = "operator[]";
                          buf[0].i16[6] = 1024;
                          *(&buf[0].i32[3] + 2) = 797;
                          buf[1].i16[1] = 2048;
                          *(buf[1].i64 + 4) = 0;
                          buf[1].i16[6] = 2048;
                          *(&buf[1].i64[1] + 6) = 0;
                          _os_log_send_and_compose_impl();
                          _os_crash_msg();
                          __break(1u);
LABEL_1170:
                          *&v1014[0] = 0;
                          v1037 = 0u;
                          memset(v1036, 0, sizeof(v1036));
                          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                          buf[0].i32[0] = 136315906;
                          *(buf[0].i64 + 4) = "operator[]";
                          buf[0].i16[6] = 1024;
                          *(&buf[0].i32[3] + 2) = 797;
                          buf[1].i16[1] = 2048;
                          *(buf[1].i64 + 4) = 0;
                          buf[1].i16[6] = 2048;
                          *(&buf[1].i64[1] + 6) = 0;
                          _os_log_send_and_compose_impl();
                          _os_crash_msg();
                          __break(1u);
LABEL_1171:
                          *&v1014[0] = 0;
                          v1037 = 0u;
                          memset(v1036, 0, sizeof(v1036));
                          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                          buf[0].i32[0] = 136315906;
                          *(buf[0].i64 + 4) = "operator[]";
                          buf[0].i16[6] = 1024;
                          *(&buf[0].i32[3] + 2) = 797;
                          buf[1].i16[1] = 2048;
                          *(buf[1].i64 + 4) = 0;
                          buf[1].i16[6] = 2048;
                          *(&buf[1].i64[1] + 6) = 0;
                          _os_log_send_and_compose_impl();
                          _os_crash_msg();
                          __break(1u);
LABEL_1172:
                          *&v1014[0] = 0;
                          v1037 = 0u;
                          memset(v1036, 0, sizeof(v1036));
                          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                          buf[0].i32[0] = 136315906;
                          *(buf[0].i64 + 4) = "operator[]";
                          buf[0].i16[6] = 1024;
                          *(&buf[0].i32[3] + 2) = 797;
                          buf[1].i16[1] = 2048;
                          *(buf[1].i64 + 4) = 0;
                          buf[1].i16[6] = 2048;
                          *(&buf[1].i64[1] + 6) = 0;
                          _os_log_send_and_compose_impl();
                          _os_crash_msg();
                          __break(1u);
LABEL_1173:
                          *&v1014[0] = 0;
                          v1037 = 0u;
                          memset(v1036, 0, sizeof(v1036));
                          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                          buf[0].i32[0] = 136315906;
                          *(buf[0].i64 + 4) = "operator[]";
                          buf[0].i16[6] = 1024;
                          *(&buf[0].i32[3] + 2) = 797;
                          buf[1].i16[1] = 2048;
                          *(buf[1].i64 + 4) = 0;
                          buf[1].i16[6] = 2048;
                          *(&buf[1].i64[1] + 6) = 0;
                          _os_log_send_and_compose_impl();
                          _os_crash_msg();
                          __break(1u);
LABEL_1174:
                          *&v1014[0] = 0;
                          v1037 = 0u;
                          memset(v1036, 0, sizeof(v1036));
                          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                          buf[0].i32[0] = 136315906;
                          *(buf[0].i64 + 4) = "operator[]";
                          buf[0].i16[6] = 1024;
                          *(&buf[0].i32[3] + 2) = 797;
                          buf[1].i16[1] = 2048;
                          *(buf[1].i64 + 4) = 0;
                          buf[1].i16[6] = 2048;
                          *(&buf[1].i64[1] + 6) = 0;
                          _os_log_send_and_compose_impl();
                          _os_crash_msg();
                          __break(1u);
LABEL_1175:
                          *&v1014[0] = 0;
                          v1037 = 0u;
                          memset(v1036, 0, sizeof(v1036));
                          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                          buf[0].i32[0] = 136315906;
                          *(buf[0].i64 + 4) = "operator[]";
                          buf[0].i16[6] = 1024;
                          *(&buf[0].i32[3] + 2) = 797;
                          buf[1].i16[1] = 2048;
                          *(buf[1].i64 + 4) = 0;
                          buf[1].i16[6] = 2048;
                          *(&buf[1].i64[1] + 6) = 0;
                          _os_log_send_and_compose_impl();
                          _os_crash_msg();
                          __break(1u);
LABEL_1176:
                          *&v1014[0] = 0;
                          v1037 = 0u;
                          memset(v1036, 0, sizeof(v1036));
                          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                          buf[0].i32[0] = 136315906;
                          *(buf[0].i64 + 4) = "operator[]";
                          buf[0].i16[6] = 1024;
                          *(&buf[0].i32[3] + 2) = 797;
                          buf[1].i16[1] = 2048;
                          *(buf[1].i64 + 4) = 0;
                          buf[1].i16[6] = 2048;
                          *(&buf[1].i64[1] + 6) = 0;
                          _os_log_send_and_compose_impl();
                          _os_crash_msg();
                          __break(1u);
LABEL_1177:
                          *&v1014[0] = 0;
                          v1037 = 0u;
                          memset(v1036, 0, sizeof(v1036));
                          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                          buf[0].i32[0] = 136315906;
                          *(buf[0].i64 + 4) = "operator[]";
                          buf[0].i16[6] = 1024;
                          *(&buf[0].i32[3] + 2) = 797;
                          buf[1].i16[1] = 2048;
                          *(buf[1].i64 + 4) = 0;
                          buf[1].i16[6] = 2048;
                          *(&buf[1].i64[1] + 6) = 0;
                          _os_log_send_and_compose_impl();
                          _os_crash_msg();
                          __break(1u);
LABEL_1178:
                          *&v1014[0] = 0;
                          v1037 = 0u;
                          memset(v1036, 0, sizeof(v1036));
                          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                          buf[0].i32[0] = 136315906;
                          *(buf[0].i64 + 4) = "operator[]";
                          buf[0].i16[6] = 1024;
                          *(&buf[0].i32[3] + 2) = 797;
                          buf[1].i16[1] = 2048;
                          *(buf[1].i64 + 4) = 0;
                          buf[1].i16[6] = 2048;
                          *(&buf[1].i64[1] + 6) = 0;
                          LODWORD(v871) = 38;
                          v870 = buf;
                          _os_log_send_and_compose_impl();
                          v129 = _os_crash_msg();
                          __break(1u);
LABEL_1179:
                          v863 = *re::videoLogObjects(v129);
                          if (os_log_type_enabled(v863, OS_LOG_TYPE_DEFAULT))
                          {
                            *v1036 = 134218240;
                            *&v1036[4] = v8;
                            *&v1036[12] = 2048;
                            *&v1036[14] = v8 - _D9;
                            _os_log_impl(&dword_1E1C61000, v863, OS_LOG_TYPE_DEFAULT, "Target Display Time: %.6fs (%+.6fs)", v1036, 0x16u);
                          }

                          goto LABEL_171;
                        }

LABEL_776:
                        if (v997)
                        {
                          v599 = v999;
                          v600 = 4 * v997;
                          do
                          {
                            v137 = *v599;
                            v136 = v1006;
                            if (v1006 <= v137)
                            {
                              goto LABEL_1162;
                            }

                            re::DynamicArray<unsigned long>::add(&v987, (v1008 + 8 * v137));
                            ++v599;
                            v600 -= 4;
                          }

                          while (v600);
                        }

                        *v1036 = v995;
                        *&v1036[8] = v993;
                        re::computeSignedAreaOf2DPolygon(v1036, v596);
                        v602 = v11 * v601;
                        *v1036 = v991;
                        *&v1036[8] = v989;
                        v604 = re::computeSignedAreaOf2DPolygon(v1036, v603);
                        *&v8 = v605;
                        v606 = 1.0 / v605;
                        if (*&v8 <= 0.0001)
                        {
                          v606 = 0.0;
                        }

                        if (v606 <= 4.0)
                        {
                          v607 = v606;
                        }

                        else
                        {
                          v607 = 4.0;
                        }

                        v608 = vcvtps_s32_f32(v602 * v607);
                        v609 = v11;
                        if (v11 >= v608)
                        {
                          v609 = v608;
                        }

                        if (v608 >= 0)
                        {
                          v540 = v609;
                        }

                        else
                        {
                          v540 = 0;
                        }

                        v610 = re::VideoDefaults::logEnabled(v604);
                        if (v610)
                        {
                          v611 = *re::videoLogObjects(v610);
                          if (os_log_type_enabled(v611, OS_LOG_TYPE_DEFAULT))
                          {
                            *v1036 = 134218752;
                            *&v1036[4] = v607;
                            *&v1036[12] = 2048;
                            *&v1036[14] = v602;
                            *&v1036[22] = 2048;
                            *&v1036[24] = v540;
                            *&v1036[32] = 2048;
                            *&v1036[34] = (*&v8 * 100.0);
                            _os_log_impl(&dword_1E1C61000, v611, OS_LOG_TYPE_DEFAULT, "Area: %f * %f,  estimation = %lld (%.0f%% visible)", v1036, 0x2Au);
                          }
                        }

                        if (v987 && v991)
                        {
                          (*(*v987 + 40))();
                        }

                        if (v992[0] && v995)
                        {
                          (*(*v992[0] + 40))();
                        }
                      }

                      if (v996[0] && v999)
                      {
                        (*(*v996[0] + 40))();
                      }

                      if (v1000[0] && v1003)
                      {
                        (*(*v1000[0] + 40))();
                      }

                      if (v1004 && v1008)
                      {
                        (*(*v1004 + 40))();
                      }

                      if (*&v1009 && v1013)
                      {
                        (*(**&v1009 + 40))();
                      }

                      if (buf[0].i64[0] && buf[2].i64[0])
                      {
                        (*(*buf[0].i64[0] + 40))();
                      }
                    }

                    else
                    {
                      v540 = 0;
                    }
                  }

                  else
                  {
                    v540 = v11;
                  }

                  if (__src)
                  {
                    v1017 = __src;
                    operator delete(__src);
                  }

                  if (__p)
                  {
                    v1020 = __p;
                    operator delete(__p);
                  }

                  if (v540 > v520)
                  {
                    v520 = v540;
                  }

                  v521 += 8;
                }

                while (v521 != v879);
                v506 = v923;
                v507 = v912;
                v513 = v872;
              }

              else
              {
                v520 = 0;
                v506 = v923;
                v507 = v912;
              }
            }

            else
            {
              v520 = 0;
            }
          }

          else
          {
            v520 = -1;
          }

          v612 = *(v513 + 16);
          if (v612 <= v520)
          {
            v612 = v520;
          }

          *(v513 + 16) = v612;
        }
      }

      v506 += 56;
    }

    while (v506 != v507);
    v461 = v968;
    v613 = v874 * 8;
    v912 = &v968[v874];
    v614 = *(a4 + 8) != 2;
    v615 = 40;
    do
    {
      *(*(v461 + v615) + 951) = v614;
      v615 += 56;
      v613 -= 56;
    }

    while (v613);
    v11 = v876;
    v462 = v875;
  }

  else
  {
    v929.i8[0] = 0;
  }

  v1047.i32[0] = 0;
  memset(v1046, 0, sizeof(v1046));
  v4 = 0x7FFFFFFFLL;
  *(v1047.i64 + 4) = 0x7FFFFFFFLL;
  v617 = v462;
  v618 = v912;
  if (v462)
  {
    v619 = v461;
    do
    {
      v620 = *(v619 + 8);
      v621 = *(v619 + 40);
      if (v620)
      {
        _ZF = v621 == 0;
      }

      else
      {
        _ZF = 1;
      }

      if (!_ZF && *(v621 + 208))
      {
        v623 = v461;
        v624 = *(v620 + 56);
        re::AssetHandle::AssetHandle(v1014, (v620 + 80));
        re::HashTable<re::VideoAsset const*,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::VideoAssetRenderInfo,re::Hash<re::VideoAsset const*>,re::EqualTo<re::VideoAsset const*>,true,false>::findEntry<re::VideoAsset const*>(v1036, v1046, v621);
        if (*&v1036[12] == 0x7FFFFFFF)
        {
          memset(&v1036[8], 0, 24);
          v1036[0] = v624;
          re::AssetHandle::operator=(&v1036[8], v1014);
          memset(buf, 0, 24);
          re::HashTable<re::VideoAsset const*,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::VideoAssetRenderInfo,re::Hash<re::VideoAsset const*>,re::EqualTo<re::VideoAsset const*>,true,false>::findEntry<re::VideoAsset const*>(buf, v1046, v621);
          if (buf[0].i32[3] == 0x7FFFFFFF)
          {
            v625 = re::HashTable<re::VideoAsset const*,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::VideoAssetRenderInfo,re::Hash<re::VideoAsset const*>,re::EqualTo<re::VideoAsset const*>,true,false>::allocEntry(v1046, buf[0].u32[2], buf[0].u64[0]);
            *(v625 + 8) = v621;
            *(v625 + 16) = v1036[0];
            re::AssetHandle::AssetHandle((v625 + 24), &v1036[8]);
            ++v1047.i32[2];
          }

          re::AssetHandle::~AssetHandle(&v1036[8]);
          v461 = v623;
        }

        else
        {
          v626 = v1046[1].i64[0];
          if (*(v1046[1].i64[0] + 56 * *&v1036[12] + 16) != v624)
          {
            v627 = re::HashTable<re::VideoAsset const*,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::VideoAssetRenderInfo,re::Hash<re::VideoAsset const*>,re::EqualTo<re::VideoAsset const*>,true,false>::findEntry<re::VideoAsset const*>(v1036, v1046, v621);
            *(v626 + 56 * *&v1036[12] + 16) = v624;
            v628 = *re::videoLogObjects(v627);
            if (os_log_type_enabled(v628, OS_LOG_TYPE_DEFAULT))
            {
              *v1036 = 0;
              _os_log_impl(&dword_1E1C61000, v628, OS_LOG_TYPE_DEFAULT, "Differing viewing modes detected on VideoComponents that share the same VideoAsset.", v1036, 2u);
            }
          }

          v461 = v623;
          if (*(&v1014[0] + 1))
          {
            re::HashTable<re::VideoAsset const*,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::VideoAssetRenderInfo,re::Hash<re::VideoAsset const*>,re::EqualTo<re::VideoAsset const*>,true,false>::findEntry<re::VideoAsset const*>(v1036, v1046, v621);
            re::AssetHandle::operator=(v626 + 56 * *&v1036[12] + 24, v1014);
          }
        }

        re::AssetHandle::~AssetHandle(v1014);
        v618 = v912;
      }

      v619 += 56;
    }

    while (v619 != v618);
  }

  v629 = v1047.i32[0];
  if (v1047.i32[0])
  {
    v630 = 0;
    v631 = v1046[1].i64[0];
    while (1)
    {
      v632 = *v631;
      v631 += 14;
      if (v632 < 0)
      {
        break;
      }

      if (v1047.u32[0] == ++v630)
      {
        LODWORD(v630) = v1047.i32[0];
        break;
      }
    }
  }

  else
  {
    LODWORD(v630) = 0;
  }

  if (v630 == v1047.i32[0])
  {
    v911 = 0;
    v908 = 0;
  }

  else
  {
    v908 = 0;
    v911 = 0;
    v633 = v1046[1].i64[0];
    v634 = v1047.i32[0];
    v924 = v1047.i32[0];
    do
    {
      v635 = *(v633 + 56 * v630 + 8);
      if (*(v635 + 208))
      {
        *&v1014[0] = 0;
        v636 = re::ecs2::SceneComponentTable::get((a2 + 25), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (v636)
        {
          v637 = *(v636 + 384);
          if (v637)
          {
            v638 = *(v636 + 400);
            v639 = 8 * v637;
            do
            {
              v640 = *v638;
              v641 = (*v638)[8];
              buf[0] = (*v638)[7];
              buf[1] = v641;
              v642 = re::DynamicString::DynamicString(&buf[2], &v640[9]);
              if (buf[0].u8[0] == 1)
              {
                v956 = buf[0];
                v957 = buf[1];
                re::DynamicString::DynamicString(v958, &buf[2]);
                v643 = v957;
                *(v635 + 40) = v956;
                *(v635 + 56) = v643;
                re::DynamicString::operator=((v635 + 72), v958);
                v644 = v958[0];
                if (v958[0])
                {
                  if (v958[1])
                  {
                    v644 = (*(*v958[0] + 40))();
                  }

                  memset(v958, 0, sizeof(v958));
                }

                v1036[0] = 0;
                memset(&v1036[8], 0, 56);
                re::DynamicString::setCapacity(&v1036[32], 0);
                v645 = *&v1036[16];
                v640[7] = *v1036;
                v640[8] = v645;
                re::DynamicString::operator=(&v640[9], &v1036[32]);
                v642 = *&v1036[32];
                if (*&v1036[32] && (v1036[40] & 1) != 0)
                {
                  v642 = (*(**&v1036[32] + 40))();
                }
              }

              v646 = *(v635 + 208);
              if (v646 && (*(v646 + 5120) & 1) != 0 && re::VideoDefaults::overridePFRMEnablement(v642))
              {
                *(v635 + 973) = 1;
              }

              if (buf[2].i64[0] && (buf[2].i8[8] & 1) != 0)
              {
                (*(*buf[2].i64[0] + 40))();
              }

              ++v638;
              v639 -= 8;
            }

            while (v639);
          }
        }

        v983.i8[0] = 0;
        v1009.i8[0] = 0;
        v647 = re::AssetHandle::loadedAsset<re::TextureAsset>((v633 + 56 * v630 + 24));
        v648 = *(*(*(v903 + 240) + 56) + 16);
        buf[0].i64[0] = v648;
        if (v647)
        {
          re::TextureHandle::metalTexture((v647 + 8), v1036);
          NS::SharedPtr<MTL::Texture>::operator=(buf, v1036);
          if (*v1036)
          {
          }

          v648 = buf[0].i64[0];
        }

        v650 = *(v903 + 248);
        v649 = *(v903 + 256);
        v651 = *(v903 + 240);
        *v1036 = v980;
        v955 = v648;
        re::VideoAsset::retrieveBuffersAndUpdateRuntimeData(v635, v649, v651, v650, v895, v1014, v1036, &v983, &v1009, &v955);
        if (v955)
        {

          v955 = 0;
        }

        v652 = *&v1014[0];
        v908 = (v983.u8[0] | v908) != 0;
        v616 = buf[0].i64[0];
        if (buf[0].i64[0])
        {
        }

        v911 |= v652;
        v634 = v1047.i32[0];
        v633 = v1046[1].i64[0];
        v629 = v924;
      }

      if (v634 <= v630 + 1)
      {
        v653 = v630 + 1;
      }

      else
      {
        v653 = v634;
      }

      while (v653 - 1 != v630)
      {
        LODWORD(v630) = v630 + 1;
        if ((*(v633 + 56 * v630) & 0x80000000) != 0)
        {
          goto LABEL_897;
        }
      }

      LODWORD(v630) = v653;
LABEL_897:
      ;
    }

    while (v630 != v629);
    v461 = v968;
    v617 = v966;
  }

  if (v617)
  {
    v654 = v461 + 56 * v617;
    v906 = v654;
    do
    {
      v655 = *(v461 + 8);
      v656 = *(v655 + 40);
      if (v656)
      {
        v657 = *(v461 + 40);
        v658 = atomic_load((v656 + 896));
        if (v658 == 2)
        {
          v925 = v461;
          if (*(v655 + 216))
          {
            v659 = *(v657 + 23);
            v660 = *(v461 + 40);
            if (re::VideoDefaults::useLegacyVideoTextures(v616))
            {
              v661 = 1;
            }

            else
            {
              re::ecs2::VideoComponent::queryMaterialPropertiesIfNeeded(v655);
              v661 = *(v655 + 329) ^ 1;
            }

            re::ecs2::VideoComponent::getVideoTextureHandles(v655, v1036);
            v662 = 0;
            v917 = BYTE12(v1041);
            do
            {
              v663 = &v1036[v662];
              if (*&v1043[v662])
              {
                re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v663 + 38);
              }

              v663[38] = 0;
              re::TextureHandle::invalidate((v663 + 32));
              re::TextureHandle::invalidate((v663 + 30));
              re::TextureHandle::invalidate((v663 + 28));
              re::TextureHandle::invalidate((v663 + 26));
              re::TextureHandle::invalidate((v663 + 24));
              re::TextureHandle::invalidate((v663 + 22));
              re::TextureHandle::invalidate((v663 + 20));
              v662 -= 160;
            }

            while (v662 != -320);
            for (jj = 0; jj != 320; jj += 160)
            {
              v666 = &v1036[jj];
              *(v666 + 108) = 0uLL;
              *(v666 + 5) = 0uLL;
              *(v666 + 6) = 0uLL;
              *(v666 + 3) = 0uLL;
              *(v666 + 4) = 0uLL;
              *(v666 + 1) = 0uLL;
              *(v666 + 2) = 0uLL;
              *v666 = 0uLL;
              *(v666 + 35) = 0x10000;
              *(v666 + 18) = 0;
              *(v666 + 76) = 514;
              v666[154] = 2;
            }

            v1044 = -1;
            v1045 = 0;
            v667 = re::VideoDefaults::logEnabled(v664);
            v657 = v660;
            if (v661)
            {
              if (v667)
              {
                v690 = *re::videoLogObjects(v667);
                if (os_log_type_enabled(v690, OS_LOG_TYPE_DEFAULT))
                {
                  buf[0].i16[0] = 0;
                  _os_log_impl(&dword_1E1C61000, v690, OS_LOG_TYPE_DEFAULT, "Using legacy video textures.", buf, 2u);
                }
              }

              re::ecs2::VideoComponent::getLegacyVideoTextureHandles(buf, v655);
              for (kk = 0; kk != 320; kk += 160)
              {
                v669 = &v1036[kk];
                v670 = &buf[kk / 0x10];
                re::TextureHandle::operator=(&v1036[kk], &buf[kk / 0x10]);
                re::TextureHandle::operator=(&v1036[kk + 16], &buf[kk / 0x10 + 1]);
                re::TextureHandle::operator=(&v1036[kk + 32], &buf[kk / 0x10 + 2]);
                re::TextureHandle::operator=(&v1036[kk + 48], &buf[kk / 0x10 + 3]);
                re::TextureHandle::operator=(&v1036[kk + 64], &v1025 + kk);
                re::TextureHandle::operator=(&v1038[kk], &v1026 + kk);
                re::TextureHandle::operator=(&v1039 + kk, &v1027 + kk);
                v671 = *(&v1029 + kk);
                *(v669 + 7) = *(&v1028 + kk);
                *(v669 + 8) = v671;
                *(v669 + 18) = *(&v1030 + kk);
                v670[9].i64[0] = 0;
                *(v669 + 76) = *(&v1031 + kk);
                v669[154] = v670[9].i8[10];
              }

              v672 = 0;
              v1044 = v1034;
              v1045 = v1035;
              do
              {
                v673 = &buf[v672];
                if (*&v1033[v672 * 16])
                {
                  re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v673 + 38);
                }

                v673[38] = 0;
                re::TextureHandle::invalidate((v673 + 32));
                re::TextureHandle::invalidate((v673 + 30));
                re::TextureHandle::invalidate((v673 + 28));
                re::TextureHandle::invalidate((v673 + 26));
                re::TextureHandle::invalidate((v673 + 24));
                re::TextureHandle::invalidate((v673 + 22));
                re::TextureHandle::invalidate((v673 + 20));
                v672 -= 10;
              }

              while (v672 != -20);
            }

            else
            {
              if (v667)
              {
                v691 = *re::videoLogObjects(v667);
                if (os_log_type_enabled(v691, OS_LOG_TYPE_DEFAULT))
                {
                  buf[0].i16[0] = 0;
                  _os_log_impl(&dword_1E1C61000, v691, OS_LOG_TYPE_DEFAULT, "Using regular video textures.", buf, 2u);
                }
              }

              re::ecs2::VideoComponent::getVideoTextureHandles(v655, buf);
              for (mm = 0; mm != 320; mm += 160)
              {
                v675 = &v1036[mm];
                v676 = &buf[mm / 0x10];
                re::TextureHandle::operator=(&v1036[mm], &buf[mm / 0x10]);
                re::TextureHandle::operator=(&v1036[mm + 16], &buf[mm / 0x10 + 1]);
                re::TextureHandle::operator=(&v1036[mm + 32], &buf[mm / 0x10 + 2]);
                re::TextureHandle::operator=(&v1036[mm + 48], &buf[mm / 0x10 + 3]);
                re::TextureHandle::operator=(&v1036[mm + 64], &v1025 + mm);
                re::TextureHandle::operator=(&v1038[mm], &v1026 + mm);
                re::TextureHandle::operator=(&v1039 + mm, &v1027 + mm);
                v677 = *(&v1029 + mm);
                *(v675 + 7) = *(&v1028 + mm);
                *(v675 + 8) = v677;
                *(v675 + 18) = *(&v1030 + mm);
                v676[9].i64[0] = 0;
                *(v675 + 76) = *(&v1031 + mm);
                v675[154] = v676[9].i8[10];
              }

              v678 = 0;
              v1044 = v1034;
              v1045 = v1035;
              do
              {
                v679 = &buf[v678];
                if (*&v1033[v678 * 16])
                {
                  re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v679 + 38);
                }

                v679[38] = 0;
                re::TextureHandle::invalidate((v679 + 32));
                re::TextureHandle::invalidate((v679 + 30));
                re::TextureHandle::invalidate((v679 + 28));
                re::TextureHandle::invalidate((v679 + 26));
                re::TextureHandle::invalidate((v679 + 24));
                re::TextureHandle::invalidate((v679 + 22));
                re::TextureHandle::invalidate((v679 + 20));
                v678 -= 10;
              }

              while (v678 != -20);
            }

            re::TextureHandle::TextureHandle(buf, v1036);
            re::TextureHandle::TextureHandle(&buf[1], &v1036[16]);
            re::TextureHandle::TextureHandle(&buf[2], &v1036[32]);
            re::TextureHandle::TextureHandle(&v1024, &v1036[48]);
            re::TextureHandle::TextureHandle(&v1025, &v1037);
            re::TextureHandle::TextureHandle(&v1026, v1038);
            re::TextureHandle::TextureHandle(&v1027, &v1039);
            v1028 = v1040;
            v1029 = v1041;
            v1030 = 0;
            re::VideoObject<re::VideoColorTransformBase>::setRef(&v1030, &v1030, cf);
            v1031 = WORD4(cf);
            v1032 = BYTE10(cf);
            v680 = BYTE13(v1029);
            if (v659)
            {
              v681 = v659 + 4704;
            }

            else
            {
              v681 = 0;
            }

            v682 = *(v903 + 240);
            re::VideoTextureHandles::VideoTextureHandles(v954, v1036);
            v683 = re::ecs2::VideoComponent::YCbCrMatrix(v655);
            v684 = re::ecs2::VideoComponent::imageFunction(v655);
            re::ecs2::VideoComponent::processAttachments(v655, v682, v954, v683, v684, v681, v917, (v680 & 1) == 0);
            for (nn = 0; nn != -80; nn -= 40)
            {
              v686 = &v954[nn];
              if (*&v954[nn + 76])
              {
                re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v686 + 38);
              }

              v686[38] = 0;
              re::TextureHandle::invalidate((v686 + 32));
              re::TextureHandle::invalidate((v686 + 30));
              re::TextureHandle::invalidate((v686 + 28));
              re::TextureHandle::invalidate((v686 + 26));
              re::TextureHandle::invalidate((v686 + 24));
              re::TextureHandle::invalidate((v686 + 22));
              re::TextureHandle::invalidate((v686 + 20));
            }

            if (v1030)
            {
              re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(&v1030);
            }

            v1030 = 0;
            re::TextureHandle::invalidate(&v1027);
            re::TextureHandle::invalidate(&v1026);
            re::TextureHandle::invalidate(&v1025);
            re::TextureHandle::invalidate(&v1024);
            re::TextureHandle::invalidate(&buf[2]);
            re::TextureHandle::invalidate(&buf[1]);
            re::TextureHandle::invalidate(buf);
            for (i1 = 0; i1 != -320; i1 -= 160)
            {
              v688 = &v1036[i1];
              if (*&v1043[i1])
              {
                re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v688 + 38);
              }

              v688[38] = 0;
              re::TextureHandle::invalidate((v688 + 32));
              re::TextureHandle::invalidate((v688 + 30));
              re::TextureHandle::invalidate((v688 + 28));
              re::TextureHandle::invalidate((v688 + 26));
              re::TextureHandle::invalidate((v688 + 24));
              re::TextureHandle::invalidate((v688 + 22));
              re::TextureHandle::invalidate((v688 + 20));
            }

            v654 = v906;
          }

          v689 = re::VideoAsset::dimensions(v657);
          v616 = re::VideoAsset::dimensions(v657);
          *(v655 + 232) = __PAIR64__(HIDWORD(v616), v689);
          v461 = v925;
        }
      }

      v461 += 56;
    }

    while (v461 != v654);
  }

  ReadyToRender = re::ecs2::SceneComponentTable::get((a2 + 25), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (ReadyToRender)
  {
    v693 = *(ReadyToRender + 384);
    if (v693)
    {
      v694 = 8 * v693;
      v695 = *(ReadyToRender + 400);
      v696 = @"False";
      do
      {
        v697 = *v695;
        if (!*(*v695 + 216))
        {
          if (!*(v697 + 57))
          {
            goto LABEL_987;
          }

          *(v697 + 64) = 0;
          *(v697 + 57) = 0;
LABEL_985:
          ReadyToRender = *(*(v697 + 16) + 216);
          if (ReadyToRender)
          {
            re::ecs2::NetworkComponent::markDirty(ReadyToRender, v697);
          }

          goto LABEL_987;
        }

        buf[0].i64[0] = *(v697 + 64);
        v698 = *(v697 + 57);
        v699 = re::VideoDefaults::logEnabled(ReadyToRender);
        if (v699)
        {
          v699 = re::areAlmostEqual<float>(*(v697 + 64), *(v697 + 68), *(v697 + 232), *(v697 + 236));
          if ((v699 & 1) == 0)
          {
            v721 = *re::videoLogObjects(v699);
            v699 = os_log_type_enabled(v721, OS_LOG_TYPE_DEFAULT);
            if (v699)
            {
              v722 = *(v697 + 232);
              v723 = *(v697 + 236);
              *v1036 = 134218240;
              *&v1036[4] = v722;
              *&v1036[12] = 2048;
              *&v1036[14] = v723;
              _os_log_impl(&dword_1E1C61000, v721, OS_LOG_TYPE_DEFAULT, "New video texture dimension: %f, %f", v1036, 0x16u);
            }
          }
        }

        v700 = *(v697 + 232);
        *(v697 + 64) = v700;
        v701 = *(v697 + 240);
        if (v701 <= 1)
        {
          if (v701 != -1)
          {
            if (!v701)
            {
              v703 = (v697 + 74);
              v702 = *(v697 + 74);
              *(v697 + 57) = 1;
              goto LABEL_980;
            }

            if (v701 != 1)
            {
              goto LABEL_982;
            }

            v703 = (v697 + 74);
            v702 = *(v697 + 74);
            *(v697 + 57) = 2;
            goto LABEL_978;
          }

          v703 = (v697 + 74);
          v702 = *(v697 + 74);
          *(v697 + 57) = 0;
        }

        else
        {
          if (v701 > 3)
          {
            if (v701 == 4)
            {
              v703 = (v697 + 74);
              v702 = *(v697 + 74);
              *(v697 + 57) = 1;
LABEL_978:
              *(v703 - 10) = *&v700 * 0.5;
              goto LABEL_980;
            }

            if (v701 != 5)
            {
              goto LABEL_982;
            }

            v703 = (v697 + 74);
            v702 = *(v697 + 74);
            *(v697 + 57) = 1;
          }

          else
          {
            if (v701 == 2)
            {
              v703 = (v697 + 74);
              v704 = *(v697 + 74);
              *(v697 + 57) = 2;
              *(v697 + 201) = v704;
              v699 = re::VideoDefaults::logLevel(v699);
              if (v699 >= 2)
              {
                logb = *re::videoLogObjects(v699);
                v699 = os_log_type_enabled(logb, OS_LOG_TYPE_DEFAULT);
                if (v699)
                {
                  v705 = *(*(v697 + 16) + 312);
                  v706 = "Screen";
                  if (*(v697 + 75) == 1)
                  {
                    v706 = "Spatial";
                  }

                  *v1036 = 134218754;
                  *&v1036[4] = v705;
                  *&v1036[12] = 2080;
                  *&v1036[14] = "FALSE";
                  *&v1036[22] = 2080;
                  *&v1036[24] = "FALSE";
                  *&v1036[32] = 2080;
                  *&v1036[34] = v706;
                  _os_log_impl(&dword_1E1C61000, logb, OS_LOG_TYPE_DEFAULT, "[VideoComponent]->updateSyncedState :: Entity %llu :: isSpatialVideo = %s :: isSpatialImagePresenting = %s :: desiredMediaMode = %s", v1036, 0x2Au);
                }
              }

              goto LABEL_981;
            }

            v703 = (v697 + 74);
            v702 = *(v697 + 74);
            *(v697 + 57) = 2;
          }

          *(v703 - 6) = *(&v700 + 1) * 0.5;
        }

LABEL_980:
        v703[127] = v702;
LABEL_981:
        *v703 = 0;
LABEL_982:
        ReadyToRender = re::VideoDefaults::logEnabled(v699);
        if (ReadyToRender)
        {
          v724 = *re::videoLogObjects(ReadyToRender);
          v725 = os_log_type_enabled(v724, OS_LOG_TYPE_DEFAULT);
          if (v725)
          {
            v726 = *(v697 + 240);
            *v1036 = 67109120;
            *&v1036[4] = v726;
            _os_log_impl(&dword_1E1C61000, v724, OS_LOG_TYPE_DEFAULT, "[VideoComponent]->updateSyncedState :: m_resolvedStereoMode == %d", v1036, 8u);
          }

          v727 = *re::videoLogObjects(v725);
          ReadyToRender = os_log_type_enabled(v727, OS_LOG_TYPE_DEFAULT);
          if (ReadyToRender)
          {
            v728 = *(v697 + 57);
            *v1036 = 67109376;
            *&v1036[4] = 1;
            *&v1036[8] = 1024;
            *&v1036[10] = v728;
            _os_log_impl(&dword_1E1C61000, v727, OS_LOG_TYPE_DEFAULT, "[VideoComponent]->updateSyncedState :: allResourcesAreReady == %d and currentViewingMode == %hhu", v1036, 0xEu);
          }
        }

        if (v698 != *(v697 + 57) || buf[0].i64[0] != *(v697 + 64))
        {
          goto LABEL_985;
        }

LABEL_987:
        if (*(v697 + 216) && (ReadyToRender = re::AssetHandle::loadedAsset<re::VideoAsset>((v697 + 208))) != 0)
        {
          v707 = *(ReadyToRender + 950);
        }

        else
        {
          v707 = 0;
        }

        v708 = re::VideoDefaults::logEnabled(ReadyToRender);
        if (!v708)
        {
          goto LABEL_992;
        }

        v710 = *(v697 + 16);
        v711 = *(v710 + 312);
        v712 = *(v710 + 32);
        if (!v712 || (*(v712 + 304) & 0x80) != 0)
        {
          v716 = *re::videoLogObjects(v708);
          if (os_log_type_enabled(v716, OS_LOG_TYPE_DEFAULT))
          {
            *v1036 = 138412546;
            v720 = @"True";
            if ((v707 & 1) == 0)
            {
              v720 = @"False";
            }

            *&v1036[4] = v720;
            *&v1036[12] = 2048;
            *&v1036[14] = v711;
            v718 = v716;
            v719 = "[VideoComponentSystem]->update :: Setting isReadyToRender to %@ with VideoComponent with EntityID %llu";
            goto LABEL_1030;
          }
        }

        else
        {
          v713 = *(v712 + 312);
          v714 = *(v712 + 32);
          if (!v714 || (*(v714 + 304) & 0x80) != 0)
          {
            v716 = *re::videoLogObjects(v708);
            if (os_log_type_enabled(v716, OS_LOG_TYPE_DEFAULT))
            {
              *v1036 = 138412546;
              v734 = @"True";
              if ((v707 & 1) == 0)
              {
                v734 = @"False";
              }

              *&v1036[4] = v734;
              *&v1036[12] = 2048;
              *&v1036[14] = v713;
              v718 = v716;
              v719 = "[VideoComponentSystem]->update :: Setting isReadyToRender to %@ with VideoComponent Parent with EntityID %llu";
              goto LABEL_1030;
            }
          }

          else
          {
            v715 = *(v714 + 312);
            v716 = *re::videoLogObjects(v708);
            if (os_log_type_enabled(v716, OS_LOG_TYPE_DEFAULT))
            {
              *v1036 = 138412546;
              v717 = @"True";
              if ((v707 & 1) == 0)
              {
                v717 = @"False";
              }

              *&v1036[4] = v717;
              *&v1036[12] = 2048;
              *&v1036[14] = v715;
              v718 = v716;
              v719 = "[VideoComponentSystem]->update :: Setting isReadyToRender to %@ with VideoComponent Parent Parent with EntityID %llu";
LABEL_1030:
              _os_log_impl(&dword_1E1C61000, v718, OS_LOG_TYPE_DEFAULT, v719, v1036, 0x16u);
            }
          }
        }

        v696 = @"False";
LABEL_992:
        ReadyToRender = re::ecs2::VideoComponent::getReadyToRender(v697);
        if ((ReadyToRender & 1) == 0 && ((v707 ^ 1) & 1) == 0)
        {
          ReadyToRender = re::VideoDefaults::logEnabled(ReadyToRender);
          if (ReadyToRender)
          {
            v729 = *re::videoLogObjects(ReadyToRender);
            if (os_log_type_enabled(v729, OS_LOG_TYPE_DEFAULT))
            {
              v730 = v696;
              v731 = *(*(v697 + 16) + 312);
              v732 = re::AssetHandle::assetInfo((v697 + 208));
              if (v732[17])
              {
                v733 = v732[18];
              }

              else
              {
                v733 = v732 + 137;
              }

              *v1036 = 134218498;
              *&v1036[4] = v731;
              v696 = v730;
              *&v1036[12] = 2112;
              *&v1036[14] = @"True";
              *&v1036[22] = 2080;
              *&v1036[24] = v733;
              _os_log_impl(&dword_1E1C61000, v729, OS_LOG_TYPE_DEFAULT, "[VideoComponentSystem]->update :: Setting VideoComponent with EntityID %llu isReadyToRender to %@ for VideAsset %s", v1036, 0x20u);
            }
          }

          if ((*(v697 + 73) & 1) == 0)
          {
            *(v697 + 73) = 1;
            v709 = re::VideoDefaults::logEnabled(ReadyToRender);
            if (v709)
            {
              v735 = *re::videoLogObjects(v709);
              if (os_log_type_enabled(v735, OS_LOG_TYPE_DEFAULT))
              {
                *v1036 = 136315138;
                *&v1036[4] = "TRUE";
                _os_log_impl(&dword_1E1C61000, v735, OS_LOG_TYPE_DEFAULT, "[VideoComponent]->setIsReadyToRender :: Setting ready to render %s", v1036, 0xCu);
              }
            }

            ReadyToRender = *(*(v697 + 16) + 216);
            if (ReadyToRender)
            {
              re::ecs2::NetworkComponent::markDirty(ReadyToRender, v697);
            }
          }
        }

        ++v695;
        v694 -= 8;
      }

      while (v694);
    }
  }

  v736 = re::ecs2::SceneComponentTable::get((a2 + 25), re::ecs2::ComponentImpl<re::ecs2::VideoProxyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v736)
  {
    v737 = *(v736 + 48);
    if (v737)
    {
      v738 = *(v736 + 50);
      v739 = 8 * v737;
      do
      {
        v740 = *v738;
        re::AssetHandle::AssetHandle(v1036, (*(*v738 + 56) + 152));
        if (!*&v1036[8])
        {
          Asset = re::ecs2::VideoProxyComponent::impl::generateAsset(*(v740 + 56), *v881);
          re::AssetHandle::operator=(v1036, Asset);
        }

        v742 = *(v740 + 16);
        re::AssetHandle::AssetHandle(v953, v1036);
        re::ecs2::VideoProxyComponent::update(v740, v742, v953, *v881);
        re::AssetHandle::~AssetHandle(v953);
        re::AssetHandle::~AssetHandle(v1036);
        ++v738;
        v739 -= 8;
      }

      while (v739);
    }
  }

  v743 = re::VideoDefaults::frameTimeLogEnabled(v736);
  if ((v743 & 1) == 0 || re::VideoDefaults::frameDropThreshold(v743) >= v11)
  {
    goto LABEL_1041;
  }

  v864 = re::ecs2::SceneComponentTable::get((a2 + 25), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v864)
  {
    v865 = *(v864 + 48);
    if (v865)
    {
      v866 = *(v864 + 50);
      v867 = 8 * v865;
      while (*(*v866 + 64) <= 0.0)
      {
        v866 += 8;
        v867 -= 8;
        if (!v867)
        {
          goto LABEL_1188;
        }
      }

LABEL_1193:
      v868 = *re::videoLogObjects(v864);
      if (!os_log_type_enabled(v868, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_1191;
      }

      *v1036 = 134217984;
      *&v1036[4] = v11;
      v869 = "VideoFrameTime VideoPlaying deltaTime: %f";
      goto LABEL_1190;
    }
  }

LABEL_1188:
  v868 = *re::videoLogObjects(v864);
  if (os_log_type_enabled(v868, OS_LOG_TYPE_DEFAULT))
  {
    *v1036 = 134217984;
    *&v1036[4] = v11;
    v869 = "VideoFrameTime VideoHidden deltaTime: %f";
LABEL_1190:
    _os_log_impl(&dword_1E1C61000, v868, OS_LOG_TYPE_DEFAULT, v869, v1036, 0xCu);
  }

LABEL_1191:

LABEL_1041:
  v744 = re::ecs2::SceneComponentTable::get((a2 + 25), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v744)
  {
    v745 = *(v744 + 384);
    if (v745)
    {
      v746 = *(v744 + 400);
      v747 = 8 * v745;
      do
      {
        v748 = *v746;
        re::AssetHandle::AssetHandle(v1036, (*v746 + 40));
        v749 = re::AssetHandle::loadedAsset<re::VideoAsset>(v1036);
        if (v749)
        {
          v750 = re::VideoAsset::createOrGetVideoPlayerComponentHelper(v749, *(v903 + 296), *(v903 + 304), *(*(v903 + 240) + 80));
          if (v750)
          {
            v751 = v750;
            v752 = *(v748 + 16);
            isVideoEntityHierarchyValid = re::ecs2::VideoPlayerComponentHelper::impl::isVideoEntityHierarchyValid(v750, v752);
            if (isVideoEntityHierarchyValid)
            {
              if (*v881)
              {
                v754 = re::VideoDefaults::logEnabled(isVideoEntityHierarchyValid);
                if (v754)
                {
                  v755 = *re::videoLogObjects(v754);
                  if (os_log_type_enabled(v755, OS_LOG_TYPE_DEFAULT))
                  {
                    buf[0].i16[0] = 0;
                    _os_log_impl(&dword_1E1C61000, v755, OS_LOG_TYPE_DEFAULT, "[VideoComponentSystem]->update ::  VPC Manager Post Buffer Retrieval Update called", buf, 2u);
                  }
                }

                re::ecs2::VideoPlayerComponentHelper::impl::postBufferRetrievalUpdate(*v751, v11, *(v748 + 16), *(v903 + 288), *(v903 + 240));
              }

              re::ecs2::VideoPlayerComponentHelper::impl::handleEntitiesPosition(*v751, v752);
              re::AssetHandle::AssetHandle(v952, v1036);
              re::ecs2::VideoPlayerComponentHelper::updateAudioSrcPosition(v751, v752, v952);
              re::AssetHandle::~AssetHandle(v952);
            }
          }
        }

        re::AssetHandle::~AssetHandle(v1036);
        ++v746;
        v747 -= 8;
      }

      while (v747);
    }
  }

  v756 = v11;
  v757 = re::ecs2::SceneComponentTable::get((a2 + 25), re::ecs2::ComponentImpl<re::ecs2::VideoProxyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v758 = v903;
  if (v757)
  {
    v759 = *(v757 + 384);
    if (v759)
    {
      v760 = *(v757 + 400);
      v761 = 8 * v759;
      do
      {
        v762 = *v760;
        re::AssetHandle::AssetHandle(v1036, (*(*v760 + 56) + 152));
        if (re::AssetHandle::loadedAsset<re::VideoAsset>(v1036) && *v881)
        {
          re::ecs2::VideoProxyComponent::impl::postBufferRetrievalUpdate(*(v762 + 56), v763, *(v762 + 16), *v881);
        }

        re::AssetHandle::~AssetHandle(v1036);
        ++v760;
        v761 -= 8;
      }

      while (v761);
    }
  }

  v764 = re::ecs2::SceneComponentTable::get((a2 + 25), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v764)
  {
    v765 = *(v764 + 48);
    if (v765)
    {
      v766 = *(v764 + 50);
      v767 = 8 * v765;
      do
      {
        v768 = *v766;
        v769 = v758[30];
        v770 = *(*v766 + 264);
        v771 = *(*v766 + 272);
        v772 = *(*v766 + 280);
        v773 = (*v766 + 288);
        v774 = *(*v766 + 292);
        v775 = vld1_dup_f32(v773);
        v776 = re::MaterialManager::getOrAddSystemMaterialParameterBlock(*(v769 + 24), *(*(*v766 + 16) + 312));
        buf[0].i64[0] = v770;
        *&v1014[0] = 111644657;
        re::MaterialParameterBlock::setConstant(v776, v1014, 8uLL, buf, 32, v1036);
        *v1036 = 0;
        *&v1014[0] = v771;
        v758 = v903;
        v983.i64[0] = 111644419;
        re::MaterialParameterBlock::setConstant(v776, &v983, 8uLL, v1014, 32, buf);
        buf[0].i64[0] = 0;
        v983.i64[0] = v772;
        v1009 = 0x30654208A56;
        re::MaterialParameterBlock::setConstant(v776, &v1009, 8uLL, &v983, 32, v1014);
        *&v1014[0] = 0;
        v1009 = v775;
        v1004 = 0x173F7DF32DLL;
        re::MaterialParameterBlock::setConstant(v776, &v1004, 8uLL, &v1009, 32, &v983);
        v983.i64[0] = 0;
        LODWORD(v1000[0]) = v774;
        v1004 = 0x26C7B60B7DDA417CLL;
        re::MaterialParameterBlock::setConstant(v776, &v1004, 4uLL, v1000, 3, &v1009);
        v777 = *(v768 + 296);
        v778 = *(v768 + 300);
        v918 = *(v768 + 304);
        v779 = *(v768 + 308);
        v926 = *(v768 + 312);
        v780 = re::MaterialManager::getOrAddSystemMaterialParameterBlock(*(*(v903 + 240) + 24), *(*(v768 + 16) + 312));
        if (v777 == 3)
        {
          v778 = powf(v778, 3.0);
        }

        else if (v777 == 2)
        {
          v778 = 1.0 - powf(1.0 - v778, 3.0);
        }

        v782.i32[0] = v926;
        if (v918 <= v779)
        {
          *v781.i32 = v779;
        }

        else
        {
          *v781.i32 = v918;
        }

        v782.f32[1] = v918;
        v783 = vdiv_f32(v782, vdup_lane_s32(v781, 0));
        v784 = vmul_f32(vsub_f32(*&_D9, v783), 0x3F0000003F000000);
        *buf[0].f32 = v783;
        *&v1014[0] = 0x127E09672A27CC2;
        re::MaterialParameterBlock::setConstant(v780, v1014, 8uLL, buf, 32, v1036);
        *v1036 = 0;
        *&v1014[0] = v784;
        v983.i64[0] = 0x23D43237DB06601BLL;
        re::MaterialParameterBlock::setConstant(v780, &v983, 8uLL, v1014, 32, buf);
        buf[0].i64[0] = 0;
        v1009.i32[0] = fmaxf(fminf(v778, 1.0), 0.0);
        v983.i64[0] = 93838541;
        re::MaterialParameterBlock::setConstant(v780, &v983, 4uLL, &v1009, 1, v1014);
        ++v766;
        v767 -= 8;
      }

      while (v767);
    }
  }

  if (re::VideoDefaults::passthroughTintColorTuningAllowed(v764))
  {
    memset(buf, 0, 36);
    *(buf[2].i64 + 4) = v4;
    if (v966)
    {
      v785 = v968;
      v786 = 56 * v966;
      do
      {
        re::AssetHandle::AssetHandle(v1014, (v785 + 2));
        if (*(&v1014[0] + 1))
        {
          v787 = atomic_load((*(&v1014[0] + 1) + 896));
          if (v787 == 2)
          {
            v788 = v785[5];
            v789 = *(v788 + 184);
            if (v789)
            {
              if (*(v789 + 9704))
              {
                v790 = *v785;
                v791 = re::ecs2::EntityComponentCollection::get((*v785 + 48), re::ecs2::ComponentImpl<re::ecs2::PassthroughDarkeningComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
                if (v791)
                {
                  v792 = v791;
                  if (*(v791 + 25) == 1)
                  {
                    v793 = re::AssetHandle::assetInfo(v1014);
                    v794 = v793[10] == -1 ? 0 : v793[10];
                    re::HashTable<unsigned long long,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::VideoColorInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v1036, buf, v794);
                    if (*&v1036[12] == 0x7FFFFFFF)
                    {
                      v795 = *(v792 + 96);
                      memset(v1036, 0, 24);
                      re::HashTable<unsigned long long,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::VideoColorInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v1036, buf, v794);
                      if (*&v1036[12] == 0x7FFFFFFF)
                      {
                        v796 = re::HashTable<unsigned long long,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::VideoColorInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(buf, *&v1036[8], *v1036);
                        *(v796 + 8) = v794;
                        *(v796 + 16) = v788;
                        *(v796 + 24) = v790;
                        *(v796 + 32) = v795;
                        *(v796 + 36) = xmmword_1E309B9A0;
                        *(v796 + 52) = xmmword_1E309B9B0;
                        ++buf[2].i32[2];
                      }
                    }
                  }
                }
              }
            }
          }
        }

        re::AssetHandle::~AssetHandle(v1014);
        v785 += 7;
        v786 -= 56;
      }

      while (v786);
      v797 = buf[2].i32[0];
      v758 = v903;
      if (buf[2].i32[0])
      {
        v798 = 0;
        v799 = buf[1].i64[0];
        v800 = buf[1].i64[0];
        while (1)
        {
          v801 = *v800;
          v800 += 20;
          if (v801 < 0)
          {
            break;
          }

          if (buf[2].u32[0] == ++v798)
          {
            LODWORD(v798) = buf[2].i32[0];
            break;
          }
        }

        if (buf[2].i32[0] != v798)
        {
          v873 = v756;
          do
          {
            v808 = v799 + 80 * v798;
            v811 = *(v808 + 16);
            v810 = v808 + 16;
            v809 = v811;
            if (v811 && *(v810 + 8))
            {
              re::VideoAsset::getVideoTextureHandles(v809, v1036);
              v812 = 0;
              v813 = BYTE12(v1041);
              do
              {
                v814 = &v1036[v812];
                if (*&v1043[v812])
                {
                  re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v814 + 38);
                }

                v814[38] = 0;
                re::TextureHandle::invalidate((v814 + 32));
                re::TextureHandle::invalidate((v814 + 30));
                re::TextureHandle::invalidate((v814 + 28));
                re::TextureHandle::invalidate((v814 + 26));
                re::TextureHandle::invalidate((v814 + 24));
                re::TextureHandle::invalidate((v814 + 22));
                re::TextureHandle::invalidate((v814 + 20));
                v812 -= 160;
              }

              while (v812 != -320);
              v816 = re::VideoDefaults::logEnabled(v815);
              if (v816)
              {
                v858 = *re::videoLogObjects(v816);
                if (os_log_type_enabled(v858, OS_LOG_TYPE_DEFAULT))
                {
                  v859 = "Disabled";
                  if (v813)
                  {
                    v859 = "Enabled";
                  }

                  *v1036 = 136315138;
                  *&v1036[4] = v859;
                  _os_log_impl(&dword_1E1C61000, v858, OS_LOG_TYPE_DEFAULT, "=========== HDR Tuning %s ========================", v1036, 0xCu);
                }

                v758 = v903;
              }

              v900 = re::VideoDefaults::hueLerpVelocityVideoTuning(0);
              v907 = re::VideoDefaults::saturationPowerVideoTuning(0);
              v817 = re::VideoDefaults::minSaturationVideoTuning(0);
              v818 = re::VideoDefaults::maxSaturationVideoTuning(0);
              v819 = re::VideoDefaults::saturationInflectionVideoTuning(0);
              v902 = re::VideoDefaults::saturationSmoothingVideoTuning(0);
              v820 = re::VideoDefaults::brightnessMinVideoTuning(0);
              v821 = re::VideoDefaults::brightnessMaxVideoTuning(0);
              v927 = re::VideoDefaults::brightnessInflectionVideoTuning(0);
              v919 = re::VideoDefaults::brightnessSmoothingVideoTuning(0);
              v822 = re::VideoDefaults::colorSmoothTimeVideoTuning(0);
              v823 = re::VideoDefaults::gazeDeadbandVideoTuning(0);
              v824 = re::VideoDefaults::gazeMaxAngleVideoTuning(0);
              if (v813)
              {
                v817 = re::VideoDefaults::minSaturationVideoTuning(1);
                v818 = re::VideoDefaults::maxSaturationVideoTuning(1);
                v907 = re::VideoDefaults::saturationPowerVideoTuning(1);
                v819 = re::VideoDefaults::saturationInflectionVideoTuning(1);
                v902 = re::VideoDefaults::saturationSmoothingVideoTuning(1);
                v900 = re::VideoDefaults::hueLerpVelocityVideoTuning(1);
                v820 = re::VideoDefaults::brightnessMinVideoTuning(1);
                v821 = re::VideoDefaults::brightnessMaxVideoTuning(1);
                v927 = re::VideoDefaults::brightnessInflectionVideoTuning(1);
                v919 = re::VideoDefaults::brightnessSmoothingVideoTuning(1);
                v822 = re::VideoDefaults::colorSmoothTimeVideoTuning(1);
                v825 = re::VideoDefaults::gazeMaxAngleVideoTuning(1);
                v823 = re::VideoDefaults::gazeDeadbandVideoTuning(1);
              }

              else
              {
                v825 = v824;
              }

              re::TransformService::worldTransform(v758[37], *(v810 + 8), 0, v1036);
              v826 = v970;
              v894 = v823;
              v892 = v825;
              logc = v820;
              if (v970)
              {
                v827 = v972;
                v828 = &v972[8 * v970];
                v829 = v970 << 7;
                v830 = 0.0;
                v831 = 1;
                v832 = v970 << 7;
                do
                {
                  v833 = vsubq_f32(v972[v831], *&v1036[32]);
                  v834 = vmulq_f32(v833, v833);
                  v830 = v830 + sqrtf(v834.f32[2] + vaddv_f32(*v834.f32));
                  v831 += 8;
                  v832 -= 128;
                }

                while (v832);
                v835 = 0uLL;
                v836 = 2;
                do
                {
                  v837 = v972[v836];
                  v838 = vextq_s8(vuzp1q_s32(v837, v837), v837, 0xCuLL);
                  v839 = vmlaq_f32(vmulq_f32(v837, xmmword_1E3080630), xmmword_1E306DD20, v838);
                  v840 = vaddq_f32(v839, v839);
                  v841 = vextq_s8(vuzp1q_s32(v840, v840), v840, 0xCuLL);
                  v842 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v841, v841), v841, 0xCuLL), vnegq_f32(v837)), v841, v838);
                  v843 = vaddq_f32(vaddq_f32(vmulq_laneq_f32(v841, v837, 3), xmmword_1E306DD20), vextq_s8(vuzp1q_s32(v842, v842), v842, 0xCuLL));
                  v835 = vaddq_f32(v835, v843);
                  v836 += 8;
                  v829 -= 128;
                }

                while (v829);
                v896 = v835;
                v843.f32[0] = v970;
                v884 = *v843.f32;
                v844 = v830 / v970;
              }

              else
              {
                v896 = 0u;
                v884 = 0;
                v828 = v972;
                v827 = v972;
                v844 = 0.0;
              }

              v845 = v821;
              re::TransformService::worldTransform(*(v903 + 296), *(v810 + 8), 0, v1036);
              v846 = v818;
              v847 = v817;
              v848 = v822;
              if (v826)
              {
                v849 = 0uLL;
                v850 = v896;
                v851 = v884;
                do
                {
                  v849 = vaddq_f32(v849, vsubq_f32(*&v1036[32], v827[1]));
                  v827 += 8;
                }

                while (v827 != v828);
              }

              else
              {
                v849 = 0uLL;
                v850 = v896;
                v851 = v884;
              }

              v885 = vdivq_f32(v850, vdupq_lane_s32(v851, 0));
              v897 = vdivq_f32(v849, vdupq_lane_s32(v851, 0));
              v758 = v903;
              v852 = re::TargetDisplayInfoProvider::{unnamed type#11}::operator()(*(*(v903 + 240) + 344) + 480);
              v853 = re::TargetDisplayInfoProvider::{unnamed type#12}::operator()(*(*(v903 + 240) + 344) + 528);
              v854 = *(v810 + 16);
              v855 = *v810;
              *(v855 + 880) = v877;
              *(v855 + 884) = v844;
              *(v855 + 896) = v885.i64[0];
              *(v855 + 904) = v885.i32[2];
              *(v855 + 912) = v897.i64[0];
              *(v855 + 920) = v897.i32[2];
              *(v855 + 928) = v852;
              *(v855 + 932) = v853;
              *(v855 + 736) = v900;
              *(v855 + 740) = xmmword_1E3060D40;
              *(v855 + 756) = v907;
              *(v855 + 760) = 0x3FC666663D4CCCCDLL;
              *(v855 + 768) = v847;
              *(v855 + 772) = v846;
              *(v855 + 776) = v819;
              *(v855 + 780) = v902;
              *(v855 + 784) = logc;
              *(v855 + 788) = v845;
              *(v855 + 792) = 0x42C800003F800000;
              *(v855 + 800) = v927;
              *(v855 + 804) = v919;
              *(v855 + 808) = 0x40A000003F800000;
              v882 = v854;
              *(v855 + 816) = v854;
              *(v855 + 820) = 1092616192;
              *(v855 + 824) = v848;
              *(v855 + 828) = 1120403456;
              *(v855 + 832) = vdupq_n_s32(0x3E99999Au);
              *(v855 + 848) = 0x3E8000003F0A3D71;
              *(v855 + 856) = v894;
              *(v855 + 860) = 1036831949;
              *(v855 + 864) = v892;
              if (re::VideoDefaults::logEnabled(v856))
              {
                v860 = [MEMORY[0x1E696AD60] stringWithFormat:@"Color Tuning Frame %llu:", *(*(*(v903 + 240) + 144) + 24) & 0xFFFFFFFFFFFFFFFLL];
                [v860 appendString:@"\n== Context ========================"];
                [v860 appendFormat:@"\n        deltaTime: %f", *&v873];
                [v860 appendFormat:@"\n     gazeDistance: %{private}f", v844];
                [v860 appendFormat:@"\n    gazeDirection: (%{private}f, %{private}f, %{private}f)", v885.f32[0], v885.f32[1], v885.f32[2]];
                [v860 appendFormat:@"\n     gazeToCenter: (%{private}f, %{private}f, %{private}f)", v897.f32[0], v897.f32[1], v897.f32[2]];
                [v860 appendFormat:@"\n         edrValue: %f", v852];
                [v860 appendFormat:@"\n        edrFactor: %f", v853];
                [v860 appendFormat:@"\n== Properties ====================="];
                [v860 appendFormat:@"\n-- Hue ----------------------------"];
                [v860 appendFormat:@"\n       hueLerpVelocity: %f", v900];
                [v860 appendFormat:@"\n    hueMinLerpVelocity: %f", 0x3FC1EB8520000000];
                [v860 appendFormat:@"\n    hueMaxLerpVelocity: %f", 0x3FF4CCCCC0000000];
                [v860 appendFormat:@"\n          hueLerpPower: %f", 0x4000000000000000];
                [v860 appendFormat:@"\n-- Saturation ---------------------"];
                [v860 appendFormat:@"\n                        saturationPower: %f", 0x3FCEB851E0000000];
                [v860 appendFormat:@"\n                       saturationPower2: %f", v907];
                [v860 appendFormat:@"\n    saturationHueDependentMinMultiplier: %f", 0x3FA99999A0000000];
                [v860 appendFormat:@"\n    saturationHueDependentMaxMultiplier: %f", 0x3FF8CCCCC0000000];
                [v860 appendFormat:@"\n                          saturationMin: %f", v847];
                [v860 appendFormat:@"\n                          saturationMax: %f", v846];
                [v860 appendFormat:@"\n                    saturationSmoothing: %f", v902];
                [v860 appendFormat:@"\n                   saturationInflection: %f", v819];
                [v860 appendFormat:@"\n-- Brightness ---------------------"];
                [v860 appendFormat:@"\n             brightnessMin: %f", logc];
                [v860 appendFormat:@"\n             brightnessMax: %f", v845];
                [v860 appendFormat:@"\n      brightnessInflection: %f", v927];
                [v860 appendFormat:@"\n       brightnessSmoothing: %f", v919];
                [v860 appendFormat:@"\n           brightnessPower: %f", 0x3FF0000000000000];
                [v860 appendFormat:@"\n    brightnessLerpVelocity: %f", 0x4059000000000000];
                [v860 appendFormat:@"\n               darkenValue: %f", 0x3FF0000000000000];
                [v860 appendFormat:@"\n      darkenDividingFactor: %f", 0x4014000000000000];
                [v860 appendFormat:@"\n-- Color --------------------------"];
                [v860 appendFormat:@"\n            colorTransition: %f", v882];
                [v860 appendFormat:@"\n     colorSmoothMaxVelocity: %f", 0x4024000000000000];
                [v860 appendFormat:@"\n            colorSmoothTime: %f", v848];
                [v860 appendFormat:@"\n    colorOutputLerpVelocity: %f", 0x4059000000000000];
                [v860 appendFormat:@"\n               colorDefault: [%f, %f, %f]", 0x3FD3333340000000, 0x3FD3333340000000, 0x3FD3333340000000];
                [v860 appendFormat:@"\n-- Gaze ---------------------------"];
                [v860 appendFormat:@"\n        gazeDistancePower: %f", 0x3FE147AE20000000];
                [v860 appendFormat:@"\n    gazeMinDistanceEffect: %f", 0x3FD0000000000000];
                [v860 appendFormat:@"\n        gazeAngleDeadband: %f", v894];
                [v860 appendFormat:@"\n           gazeMinDimming: %f", 0x3FB99999A0000000];
                v861 = *re::videoLogObjects([v860 appendFormat:@"\n             gazeMaxAngle: %f", v892]);
                if (os_log_type_enabled(v861, OS_LOG_TYPE_DEFAULT))
                {
                  v862 = [v860 cStringUsingEncoding:1];
                  *v1036 = 136315138;
                  *&v1036[4] = v862;
                  _os_log_impl(&dword_1E1C61000, v861, OS_LOG_TYPE_DEFAULT, "%s", v1036, 0xCu);
                }

                v758 = v903;
              }
            }

            if (buf[2].i32[0] <= (v798 + 1))
            {
              v857 = v798 + 1;
            }

            else
            {
              v857 = buf[2].i32[0];
            }

            v799 = buf[1].i64[0];
            while (v857 - 1 != v798)
            {
              LODWORD(v798) = v798 + 1;
              if ((*(buf[1].i64[0] + 80 * v798) & 0x80000000) != 0)
              {
                goto LABEL_1149;
              }
            }

            LODWORD(v798) = v857;
LABEL_1149:
            ;
          }

          while (v798 != v797);
        }
      }
    }

    re::HashTable<unsigned long long,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::VideoColorInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::~HashTable(buf);
  }

  v802 = v758[35];
  if (v802 && v911)
  {
    (*(*v802 + 32))(v802, v911);
  }

  v803 = v758[32];
  if (v803)
  {
    *(v803 + 264) = v908;
    *(v803 + 265) = v908 & v929.i8[0];
  }

  re::HashTable<re::VideoAsset const*,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::VideoAssetRenderInfo,re::Hash<re::VideoAsset const*>,re::EqualTo<re::VideoAsset const*>,true,false>::~HashTable(v1046);
  if (v959[0] && v961)
  {
    (*(*v959[0] + 40))();
  }

  v804 = v964;
  if (v964 && v968)
  {
    if (v966)
    {
      v805 = 56 * v966;
      v806 = (v968 + 2);
      do
      {
        re::AssetHandle::~AssetHandle(v806);
        v806 = (v807 + 56);
        v805 -= 56;
      }

      while (v805);
      v804 = v964;
    }

    (*(*v804 + 40))(v804);
  }

  if (v969[0])
  {
    if (v972)
    {
      (*(*v969[0] + 40))();
    }
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v976);
  re::ProfilerTimeGuard<(re::ProfilerStatistic)122>::end(v977);
}