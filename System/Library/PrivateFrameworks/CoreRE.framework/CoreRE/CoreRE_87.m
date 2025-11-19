uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD4B30;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD4B30;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD4B88;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD4B88;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD4BE0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD4BE0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD4C38;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD4C38;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

void *re::ecs2::PhysicsSubsystemImpl<re::ecs2::HingeJointComponent,re::ecs2::ConstraintComponentStateImpl<re::ecs2::HingeJointComponent>>::~PhysicsSubsystemImpl(void *a1)
{
  *a1 = &unk_1F5CD4C90;
  a1[31] = &unk_1F5CD5390;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 32);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 1);
  return a1;
}

void re::ecs2::PhysicsSubsystemImpl<re::ecs2::HingeJointComponent,re::ecs2::ConstraintComponentStateImpl<re::ecs2::HingeJointComponent>>::~PhysicsSubsystemImpl(void *a1)
{
  *a1 = &unk_1F5CD4C90;
  a1[31] = &unk_1F5CD5390;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 32);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void *re::ecs2::PhysicsSubsystemImpl<re::ecs2::HingeJointComponent,re::ecs2::ConstraintComponentStateImpl<re::ecs2::HingeJointComponent>>::init(_anonymous_namespace_ *a1, uint64_t a2)
{
  v3 = a1;
  v6 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3 + 16, 0);
  *(v3 + 36) += 2;
  *(v3 + 21) = 0;
  v3 = (v3 + 176);
  result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, 0);
  *(v3 + 4) += 2;
  *(v3 + 5) = 0;
  *(v3 + 6) = a2;
  *(v3 + 7) = v3 + 72;
  *(v3 + 64) = 0;
  return result;
}

uint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::HingeJointComponent,re::ecs2::ConstraintComponentStateImpl<re::ecs2::HingeJointComponent>>::deinit(void *a1)
{
  re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::deinit((a1 + 1));
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit((a1 + 8));
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 16));
  a1[21] = 0;
  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 22));
  a1[27] = 0;
  a1[28] = 0;
  a1[29] = 0;
  return result;
}

unint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::HingeJointComponent,re::ecs2::ConstraintComponentStateImpl<re::ecs2::HingeJointComponent>>::registerScene(uint64_t a1, uint64_t a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v48[0] = a2;
  v4 = *(a1 + 136);
  v5 = *(a1 + 144);
  if (v4 >= 0xB)
  {
    if (v5)
    {
      v6 = (a1 + 152);
    }

    else
    {
      v6 = *(a1 + 160);
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
    v7 = (a1 + 152);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *(a1 + 160);
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
    *&v40 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(a1 + 128, 0);
    v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, v40);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::HingeJointComponent>::init(v12, a1 + 8, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 64), v48, &v40);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 128, v40);
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
  v14 = *(a1 + 48);
  *&v47 = 0;
  v15 = *(a1 + 16);
  DWORD2(v47) = 0;
  if (v14 + 1 > 4 * v15)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::HingeJointComponent>,4ul>::setBucketsCapacity((a1 + 8), (v14 + 4) >> 2);
    v15 = *(a1 + 16);
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

  if (*(a1 + 24))
  {
    v16 = a1 + 32;
  }

  else
  {
    v16 = *(a1 + 40);
  }

  v17 = *(v16 + 8 * (v14 >> 2));
  ++*(a1 + 48);
  ++*(a1 + 56);
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
  v23 = *(a1 + 48);
  if (!v23)
  {
LABEL_53:
    re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  v24 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, v23 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::HingeJointComponent>::init(v24, a1 + 8, v48[0]);
  *&v57[0] = *(a1 + 48) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 64), v48, v57);
  v25 = *(a1 + 48);
  v26 = *(a1 + 168);
  if ((v25 & 0x3F) != 0)
  {
    v27 = (v25 >> 6) + 1;
  }

  else
  {
    v27 = v25 >> 6;
  }

  *(a1 + 168) = v25;
  *&v40 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 128), v27, &v40);
  if (v25 && v26 > v25)
  {
    v28 = 63;
    v29 = *(a1 + 168) & 0x3FLL;
    if (v29 && v29 != 63)
    {
      v28 = ~(-1 << v29);
    }

    if (*(a1 + 144))
    {
      v30 = a1 + 152;
    }

    else
    {
      v30 = *(a1 + 160);
    }

    *(v30 + 8 * *(a1 + 136) - 8) &= v28;
  }

  v31 = *(a1 + 48);
  v32 = *(a1 + 216);
  if ((v31 & 0x3F) != 0)
  {
    v33 = (v31 >> 6) + 1;
  }

  else
  {
    v33 = v31 >> 6;
  }

  *(a1 + 216) = v31;
  *&v40 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 176), v33, &v40);
  if (v31 && v32 > v31)
  {
    v34 = 63;
    v35 = *(a1 + 216) & 0x3FLL;
    if (v35 && v35 != 63)
    {
      v34 = ~(-1 << v35);
    }

    if (*(a1 + 192))
    {
      v36 = a1 + 200;
    }

    else
    {
      v36 = *(a1 + 208);
    }

    *(v36 + 8 * *(a1 + 184) - 8) &= v34;
  }

  v13 = *&v57[0];
LABEL_49:
  result = re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 176, v13);
  if (*(a1 + 240) == 1)
  {
    v38 = *(a1 + 224);
    v39 = *(v48[0] + 376);
    LOWORD(v40) = 257;
    DWORD1(v40) = 1023969417;
    BYTE8(v40) = 0;
    re::ecs2::System::setTaskOptions(v38, v39, &v40);
    return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1 + 8);
  }

  return result;
}

uint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::HingeJointComponent,re::ecs2::ConstraintComponentStateImpl<re::ecs2::HingeJointComponent>>::unregisterScene(uint64_t a1, uint64_t a2)
{
  v15 = a2;
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 64), &v15);
  if (result != -1)
  {
    v4 = *(a1 + 72) + 16 * result;
    re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 128, *(v4 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 176, *(v4 + 8));
    v5 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, *(v4 + 8));
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

    return re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(a1 + 64, &v15);
  }

  return result;
}

unint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::HingeJointComponent,re::ecs2::ConstraintComponentStateImpl<re::ecs2::HingeJointComponent>>::ecsToSim(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[0] = 0;
  v16[1] = 0;
  v17 = a2;
  v5 = *(*(a1 + 72) + 16 * re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 64), &v17) + 8);
  re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 176, v5);
  v6 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, v5);
  v7 = *(*v6 + 224);
  v8 = v6[3];
  v9 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v6[2] + 8, v8);
  if (*(v9 + 40))
  {
    v10 = (*(*v7 + 24))(v7, v16, v6, v8, v9, a3);
  }

  else
  {
    v10 = 0;
  }

  v11 = v6[5];
  v12 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v6[2] + 8, v11);
  if (*(v12 + 40))
  {
    v10 |= (*(*v7 + 32))(v7, v16, v6, v11, v12, a3);
  }

  v13 = v6[6];
  v14 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v6[2] + 8, v13);
  if (!*(v14 + 40))
  {
    if (!v10)
    {
      return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1 + 8);
    }

    goto LABEL_8;
  }

  if ((v10 | (*(*v7 + 40))(v7, v16, v6, v13, v14, a3)))
  {
LABEL_8:
    re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 176, v5);
  }

  return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1 + 8);
}

unint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::HingeJointComponent,re::ecs2::ConstraintComponentStateImpl<re::ecs2::HingeJointComponent>>::simToECS(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a3;
  v4 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 64), &v7);
  v5 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, *(*(a1 + 72) + 16 * v4 + 8));
  return re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](*(v5 + 16) + 8, *(v5 + 48));
}

void re::ecs2::PhysicsSubsystemImpl<re::ecs2::HingeJointComponent,re::ecs2::ConstraintComponentStateImpl<re::ecs2::HingeJointComponent>>::onPhysicsSimulationRootUpdated(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  do
  {
    v5 = v4;
    v4 = *(v4 + 32);
  }

  while (v4);
  v28[0] = *(v5 + 24);
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 64), v28);
  if (v6 == -1)
  {
    v7 = 0;
  }

  else
  {
    v7 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, *(*(a1 + 72) + 16 * v6 + 8));
  }

  re::StackScratchAllocator::StackScratchAllocator(v28);
  v22[0] = 0;
  v22[1] = 0;
  v23 = 1;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  v27 = 0;
  re::BucketArray<re::ecs2::Entity const*,32ul>::init(v22, v28, 1uLL);
  *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v22) = a2;
  for (i = v26; v26; i = v26)
  {
    v9 = *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v22, i - 1);
    re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v22, --v26);
    ++v27;
    v10 = re::ecs2::EntityComponentCollection::get((v9 + 6), re::ecs2::ComponentImpl<re::ecs2::HingeJointComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v10)
    {
      v11 = v10;
      for (j = 3; j != 7; ++j)
      {
        v13 = re::ecs2::ComponentBucketsBase::componentHandle(v7[2], v7[j], v11);
        if (v13 != -1 && (v14 & 0xFFFFFF00000000) != 0)
        {
          v16 = v13;
          v17 = v14;
          goto LABEL_16;
        }
      }

      v16 = -1;
      v17 = 0xFFFFFFFFLL;
LABEL_16:
      re::ecs2::BasicComponentStateSceneData<re::ecs2::HingeJointComponent>::setComponentState(v7, v16, v17, 0);
    }

    v18 = v9[43];
    if (v18)
    {
      v19 = v9[45];
      v20 = 8 * v18;
      do
      {
        v21 = *v19++;
        *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v22) = v21;
        v20 -= 8;
      }

      while (v20);
    }
  }

  re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(v22);
  if (v22[0] && (v23 & 1) == 0)
  {
    (*(*v22[0] + 40))();
  }

  re::StackScratchAllocator::~StackScratchAllocator(v28);
}

void re::ecs2::PhysicsSubsystemImpl<re::ecs2::HingeJointComponent,re::ecs2::ConstraintComponentStateImpl<re::ecs2::HingeJointComponent>>::onPhysicsComponentDeactivated(uint64_t a1, uint64_t a2)
{
  v2 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::HingeJointComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v2)
  {

    re::ecs2::HingeJointComponent::removeFromSimulation(v2);
  }
}

unint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::HingeJointComponent>::didDependentComponentChange(uint64_t a1, re::ecs2::ComponentBucketsBase **a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::HingeJointComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
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

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::HingeJointComponent>::setComponentState(a2, v11, v7, 0);
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::HingeJointComponent>::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::HingeJointComponent>::setComponentState(re::ecs2::ComponentBucketsBase **a1, unint64_t a2, unint64_t a3, unsigned int a4)
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

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::HingeJointComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::HingeJointComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::HingeJointComponent>,4ul>::setBucketsCapacity(void *result, unint64_t a2)
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

uint64_t *re::ecs2::BasicComponentStateSceneData<re::ecs2::HingeJointComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::HingeJointComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) + 480;
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
    *v10 = &unk_1F5CD4D18;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::HingeJointComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::HingeJointComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CD4D70;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::HingeJointComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::HingeJointComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CD4DC8;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::HingeJointComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::HingeJointComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CD4E20;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::HingeJointComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::HingeJointComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
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
        *v37 = &unk_1F5CD4D18;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::HingeJointComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CD4D70;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::HingeJointComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CD4DC8;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::HingeJointComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CD4E20;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::HingeJointComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::HingeJointComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::HingeJointComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::HingeJointComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::HingeJointComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::HingeJointComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::HingeJointComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::HingeJointComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::HingeJointComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::HingeJointComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::HingeJointComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::HingeJointComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::HingeJointComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::HingeJointComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::HingeJointComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::HingeJointComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::HingeJointComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::HingeJointComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::HingeJointComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::HingeJointComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::HingeJointComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD4D18;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::HingeJointComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::HingeJointComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD4D18;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::HingeJointComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::HingeJointComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::HingeJointComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::HingeJointComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD4D70;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::HingeJointComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::HingeJointComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD4D70;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::HingeJointComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::HingeJointComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::HingeJointComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::HingeJointComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD4DC8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::HingeJointComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::HingeJointComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD4DC8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::HingeJointComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::HingeJointComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::HingeJointComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::HingeJointComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD4E20;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::HingeJointComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::HingeJointComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD4E20;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

void *re::ecs2::PhysicsSubsystemImpl<re::ecs2::PhysicsConstraintsComponent,re::ecs2::ConstraintComponentStateImpl<re::ecs2::PhysicsConstraintsComponent>>::~PhysicsSubsystemImpl(void *a1)
{
  *a1 = &unk_1F5CD4E78;
  a1[31] = &unk_1F5CD53D0;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 32);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 1);
  return a1;
}

void re::ecs2::PhysicsSubsystemImpl<re::ecs2::PhysicsConstraintsComponent,re::ecs2::ConstraintComponentStateImpl<re::ecs2::PhysicsConstraintsComponent>>::~PhysicsSubsystemImpl(void *a1)
{
  *a1 = &unk_1F5CD4E78;
  a1[31] = &unk_1F5CD53D0;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 32);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void *re::ecs2::PhysicsSubsystemImpl<re::ecs2::PhysicsConstraintsComponent,re::ecs2::ConstraintComponentStateImpl<re::ecs2::PhysicsConstraintsComponent>>::init(_anonymous_namespace_ *a1, uint64_t a2)
{
  v3 = a1;
  v6 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3 + 16, 0);
  *(v3 + 36) += 2;
  *(v3 + 21) = 0;
  v3 = (v3 + 176);
  result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, 0);
  *(v3 + 4) += 2;
  *(v3 + 5) = 0;
  *(v3 + 6) = a2;
  *(v3 + 7) = v3 + 72;
  *(v3 + 64) = 0;
  return result;
}

uint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::PhysicsConstraintsComponent,re::ecs2::ConstraintComponentStateImpl<re::ecs2::PhysicsConstraintsComponent>>::deinit(void *a1)
{
  re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::deinit((a1 + 1));
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit((a1 + 8));
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 16));
  a1[21] = 0;
  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 22));
  a1[27] = 0;
  a1[28] = 0;
  a1[29] = 0;
  return result;
}

unint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::PhysicsConstraintsComponent,re::ecs2::ConstraintComponentStateImpl<re::ecs2::PhysicsConstraintsComponent>>::registerScene(uint64_t a1, uint64_t a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v48[0] = a2;
  v4 = *(a1 + 136);
  v5 = *(a1 + 144);
  if (v4 >= 0xB)
  {
    if (v5)
    {
      v6 = (a1 + 152);
    }

    else
    {
      v6 = *(a1 + 160);
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
    v7 = (a1 + 152);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *(a1 + 160);
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
    *&v40 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(a1 + 128, 0);
    v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, v40);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsConstraintsComponent>::init(v12, a1 + 8, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 64), v48, &v40);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 128, v40);
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
  v14 = *(a1 + 48);
  *&v47 = 0;
  v15 = *(a1 + 16);
  DWORD2(v47) = 0;
  if (v14 + 1 > 4 * v15)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsConstraintsComponent>,4ul>::setBucketsCapacity((a1 + 8), (v14 + 4) >> 2);
    v15 = *(a1 + 16);
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

  if (*(a1 + 24))
  {
    v16 = a1 + 32;
  }

  else
  {
    v16 = *(a1 + 40);
  }

  v17 = *(v16 + 8 * (v14 >> 2));
  ++*(a1 + 48);
  ++*(a1 + 56);
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
  v23 = *(a1 + 48);
  if (!v23)
  {
LABEL_53:
    re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  v24 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, v23 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsConstraintsComponent>::init(v24, a1 + 8, v48[0]);
  *&v57[0] = *(a1 + 48) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 64), v48, v57);
  v25 = *(a1 + 48);
  v26 = *(a1 + 168);
  if ((v25 & 0x3F) != 0)
  {
    v27 = (v25 >> 6) + 1;
  }

  else
  {
    v27 = v25 >> 6;
  }

  *(a1 + 168) = v25;
  *&v40 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 128), v27, &v40);
  if (v25 && v26 > v25)
  {
    v28 = 63;
    v29 = *(a1 + 168) & 0x3FLL;
    if (v29 && v29 != 63)
    {
      v28 = ~(-1 << v29);
    }

    if (*(a1 + 144))
    {
      v30 = a1 + 152;
    }

    else
    {
      v30 = *(a1 + 160);
    }

    *(v30 + 8 * *(a1 + 136) - 8) &= v28;
  }

  v31 = *(a1 + 48);
  v32 = *(a1 + 216);
  if ((v31 & 0x3F) != 0)
  {
    v33 = (v31 >> 6) + 1;
  }

  else
  {
    v33 = v31 >> 6;
  }

  *(a1 + 216) = v31;
  *&v40 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 176), v33, &v40);
  if (v31 && v32 > v31)
  {
    v34 = 63;
    v35 = *(a1 + 216) & 0x3FLL;
    if (v35 && v35 != 63)
    {
      v34 = ~(-1 << v35);
    }

    if (*(a1 + 192))
    {
      v36 = a1 + 200;
    }

    else
    {
      v36 = *(a1 + 208);
    }

    *(v36 + 8 * *(a1 + 184) - 8) &= v34;
  }

  v13 = *&v57[0];
LABEL_49:
  result = re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 176, v13);
  if (*(a1 + 240) == 1)
  {
    v38 = *(a1 + 224);
    v39 = *(v48[0] + 376);
    LOWORD(v40) = 257;
    DWORD1(v40) = 1023969417;
    BYTE8(v40) = 0;
    re::ecs2::System::setTaskOptions(v38, v39, &v40);
    return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1 + 8);
  }

  return result;
}

uint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::PhysicsConstraintsComponent,re::ecs2::ConstraintComponentStateImpl<re::ecs2::PhysicsConstraintsComponent>>::unregisterScene(uint64_t a1, uint64_t a2)
{
  v15 = a2;
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 64), &v15);
  if (result != -1)
  {
    v4 = *(a1 + 72) + 16 * result;
    re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 128, *(v4 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 176, *(v4 + 8));
    v5 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, *(v4 + 8));
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

    return re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(a1 + 64, &v15);
  }

  return result;
}

unint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::PhysicsConstraintsComponent,re::ecs2::ConstraintComponentStateImpl<re::ecs2::PhysicsConstraintsComponent>>::ecsToSim(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[0] = 0;
  v16[1] = 0;
  v17 = a2;
  v5 = *(*(a1 + 72) + 16 * re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 64), &v17) + 8);
  re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 176, v5);
  v6 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, v5);
  v7 = *(*v6 + 224);
  v8 = v6[3];
  v9 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v6[2] + 8, v8);
  if (*(v9 + 40))
  {
    v10 = (*(*v7 + 24))(v7, v16, v6, v8, v9, a3);
  }

  else
  {
    v10 = 0;
  }

  v11 = v6[5];
  v12 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v6[2] + 8, v11);
  if (*(v12 + 40))
  {
    v10 |= (*(*v7 + 32))(v7, v16, v6, v11, v12, a3);
  }

  v13 = v6[6];
  v14 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v6[2] + 8, v13);
  if (!*(v14 + 40))
  {
    if (!v10)
    {
      return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1 + 8);
    }

    goto LABEL_8;
  }

  if ((v10 | (*(*v7 + 40))(v7, v16, v6, v13, v14, a3)))
  {
LABEL_8:
    re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 176, v5);
  }

  return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1 + 8);
}

unint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::PhysicsConstraintsComponent,re::ecs2::ConstraintComponentStateImpl<re::ecs2::PhysicsConstraintsComponent>>::simToECS(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a3;
  v4 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 64), &v7);
  v5 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, *(*(a1 + 72) + 16 * v4 + 8));
  return re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](*(v5 + 16) + 8, *(v5 + 48));
}

void re::ecs2::PhysicsSubsystemImpl<re::ecs2::PhysicsConstraintsComponent,re::ecs2::ConstraintComponentStateImpl<re::ecs2::PhysicsConstraintsComponent>>::onPhysicsSimulationRootUpdated(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  do
  {
    v5 = v4;
    v4 = *(v4 + 32);
  }

  while (v4);
  v28[0] = *(v5 + 24);
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 64), v28);
  if (v6 == -1)
  {
    v7 = 0;
  }

  else
  {
    v7 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, *(*(a1 + 72) + 16 * v6 + 8));
  }

  re::StackScratchAllocator::StackScratchAllocator(v28);
  v22[0] = 0;
  v22[1] = 0;
  v23 = 1;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  v27 = 0;
  re::BucketArray<re::ecs2::Entity const*,32ul>::init(v22, v28, 1uLL);
  *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v22) = a2;
  for (i = v26; v26; i = v26)
  {
    v9 = *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v22, i - 1);
    re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v22, --v26);
    ++v27;
    v10 = re::ecs2::EntityComponentCollection::get((v9 + 6), re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (v10)
    {
      v11 = v10;
      for (j = 3; j != 7; ++j)
      {
        v13 = re::ecs2::ComponentBucketsBase::componentHandle(v7[2], v7[j], v11);
        if (v13 != -1 && (v14 & 0xFFFFFF00000000) != 0)
        {
          v16 = v13;
          v17 = v14;
          goto LABEL_16;
        }
      }

      v16 = -1;
      v17 = 0xFFFFFFFFLL;
LABEL_16:
      re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsConstraintsComponent>::setComponentState(v7, v16, v17, 0);
    }

    v18 = v9[43];
    if (v18)
    {
      v19 = v9[45];
      v20 = 8 * v18;
      do
      {
        v21 = *v19++;
        *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v22) = v21;
        v20 -= 8;
      }

      while (v20);
    }
  }

  re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(v22);
  if (v22[0] && (v23 & 1) == 0)
  {
    (*(*v22[0] + 40))();
  }

  re::StackScratchAllocator::~StackScratchAllocator(v28);
}

re::ecs2::PhysicsConstraintsComponent *re::ecs2::PhysicsSubsystemImpl<re::ecs2::PhysicsConstraintsComponent,re::ecs2::ConstraintComponentStateImpl<re::ecs2::PhysicsConstraintsComponent>>::onPhysicsComponentDeactivated(uint64_t a1, uint64_t a2)
{
  result = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (result)
  {

    return re::ecs2::PhysicsConstraintsComponent::syncConstraintArrays(result, 1);
  }

  return result;
}

unint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::PhysicsConstraintsComponent>::didDependentComponentChange(uint64_t a1, re::ecs2::ComponentBucketsBase **a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
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

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsConstraintsComponent>::setComponentState(a2, v11, v7, 0);
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::PhysicsConstraintsComponent>::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsConstraintsComponent>::setComponentState(re::ecs2::ComponentBucketsBase **a1, unint64_t a2, unint64_t a3, unsigned int a4)
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

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsConstraintsComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsConstraintsComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsConstraintsComponent>,4ul>::setBucketsCapacity(void *result, unint64_t a2)
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

uint64_t *re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsConstraintsComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType) + 480;
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
    *v10 = &unk_1F5CD4F00;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsConstraintsComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CD4F58;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsConstraintsComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CD4FB0;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsConstraintsComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CD5008;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsConstraintsComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
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
        *v37 = &unk_1F5CD4F00;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsConstraintsComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CD4F58;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsConstraintsComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CD4FB0;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsConstraintsComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CD5008;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsConstraintsComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsConstraintsComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsConstraintsComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsConstraintsComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsConstraintsComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsConstraintsComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsConstraintsComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsConstraintsComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PhysicsConstraintsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsConstraintsComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsConstraintsComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsConstraintsComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsConstraintsComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsConstraintsComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsConstraintsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsConstraintsComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsConstraintsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsConstraintsComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD4F00;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsConstraintsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsConstraintsComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD4F00;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsConstraintsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsConstraintsComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsConstraintsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsConstraintsComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD4F58;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsConstraintsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsConstraintsComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD4F58;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsConstraintsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsConstraintsComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsConstraintsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsConstraintsComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD4FB0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsConstraintsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsConstraintsComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD4FB0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsConstraintsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsConstraintsComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsConstraintsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsConstraintsComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD5008;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsConstraintsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsConstraintsComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD5008;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

void *re::ecs2::PhysicsSubsystemImpl<re::ecs2::PinComponent,re::ecs2::PinComponentStateImpl>::~PhysicsSubsystemImpl(void *a1)
{
  *a1 = &unk_1F5CD5060;
  a1[31] = &unk_1F5CF79D0;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 32);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 1);
  return a1;
}

void re::ecs2::PhysicsSubsystemImpl<re::ecs2::PinComponent,re::ecs2::PinComponentStateImpl>::~PhysicsSubsystemImpl(void *a1)
{
  *a1 = &unk_1F5CD5060;
  a1[31] = &unk_1F5CF79D0;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 32);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void *re::ecs2::PhysicsSubsystemImpl<re::ecs2::PinComponent,re::ecs2::PinComponentStateImpl>::init(_anonymous_namespace_ *a1, uint64_t a2)
{
  v3 = a1;
  v6 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3 + 16, 0);
  *(v3 + 36) += 2;
  *(v3 + 21) = 0;
  v3 = (v3 + 176);
  result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, 0);
  *(v3 + 4) += 2;
  *(v3 + 5) = 0;
  *(v3 + 6) = a2;
  *(v3 + 7) = v3 + 72;
  *(v3 + 64) = 0;
  return result;
}

uint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::PinComponent,re::ecs2::PinComponentStateImpl>::deinit(void *a1)
{
  re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::deinit((a1 + 1));
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit((a1 + 8));
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 16));
  a1[21] = 0;
  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 22));
  a1[27] = 0;
  a1[28] = 0;
  a1[29] = 0;
  return result;
}

unint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::PinComponent,re::ecs2::PinComponentStateImpl>::registerScene(uint64_t a1, uint64_t a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v48[0] = a2;
  v4 = *(a1 + 136);
  v5 = *(a1 + 144);
  if (v4 >= 0xB)
  {
    if (v5)
    {
      v6 = (a1 + 152);
    }

    else
    {
      v6 = *(a1 + 160);
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
    v7 = (a1 + 152);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *(a1 + 160);
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
    *&v40 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(a1 + 128, 0);
    v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, v40);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::PinComponent>::init(v12, a1 + 8, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 64), v48, &v40);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 128, v40);
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
  v14 = *(a1 + 48);
  *&v47 = 0;
  v15 = *(a1 + 16);
  DWORD2(v47) = 0;
  if (v14 + 1 > 4 * v15)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PinComponent>,4ul>::setBucketsCapacity((a1 + 8), (v14 + 4) >> 2);
    v15 = *(a1 + 16);
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

  if (*(a1 + 24))
  {
    v16 = a1 + 32;
  }

  else
  {
    v16 = *(a1 + 40);
  }

  v17 = *(v16 + 8 * (v14 >> 2));
  ++*(a1 + 48);
  ++*(a1 + 56);
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
  v23 = *(a1 + 48);
  if (!v23)
  {
LABEL_53:
    re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  v24 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, v23 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::PinComponent>::init(v24, a1 + 8, v48[0]);
  *&v57[0] = *(a1 + 48) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 64), v48, v57);
  v25 = *(a1 + 48);
  v26 = *(a1 + 168);
  if ((v25 & 0x3F) != 0)
  {
    v27 = (v25 >> 6) + 1;
  }

  else
  {
    v27 = v25 >> 6;
  }

  *(a1 + 168) = v25;
  *&v40 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 128), v27, &v40);
  if (v25 && v26 > v25)
  {
    v28 = 63;
    v29 = *(a1 + 168) & 0x3FLL;
    if (v29 && v29 != 63)
    {
      v28 = ~(-1 << v29);
    }

    if (*(a1 + 144))
    {
      v30 = a1 + 152;
    }

    else
    {
      v30 = *(a1 + 160);
    }

    *(v30 + 8 * *(a1 + 136) - 8) &= v28;
  }

  v31 = *(a1 + 48);
  v32 = *(a1 + 216);
  if ((v31 & 0x3F) != 0)
  {
    v33 = (v31 >> 6) + 1;
  }

  else
  {
    v33 = v31 >> 6;
  }

  *(a1 + 216) = v31;
  *&v40 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 176), v33, &v40);
  if (v31 && v32 > v31)
  {
    v34 = 63;
    v35 = *(a1 + 216) & 0x3FLL;
    if (v35 && v35 != 63)
    {
      v34 = ~(-1 << v35);
    }

    if (*(a1 + 192))
    {
      v36 = a1 + 200;
    }

    else
    {
      v36 = *(a1 + 208);
    }

    *(v36 + 8 * *(a1 + 184) - 8) &= v34;
  }

  v13 = *&v57[0];
LABEL_49:
  result = re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 176, v13);
  if (*(a1 + 240) == 1)
  {
    v38 = *(a1 + 224);
    v39 = *(v48[0] + 376);
    LOWORD(v40) = 257;
    DWORD1(v40) = 1023969417;
    BYTE8(v40) = 0;
    re::ecs2::System::setTaskOptions(v38, v39, &v40);
    return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1 + 8);
  }

  return result;
}

uint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::PinComponent,re::ecs2::PinComponentStateImpl>::unregisterScene(uint64_t a1, uint64_t a2)
{
  v15 = a2;
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 64), &v15);
  if (result != -1)
  {
    v4 = *(a1 + 72) + 16 * result;
    re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 128, *(v4 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 176, *(v4 + 8));
    v5 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, *(v4 + 8));
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

    return re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(a1 + 64, &v15);
  }

  return result;
}

unint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::PinComponent,re::ecs2::PinComponentStateImpl>::ecsToSim(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[0] = 0;
  v16[1] = 0;
  v17 = a2;
  v5 = *(*(a1 + 72) + 16 * re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 64), &v17) + 8);
  re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 176, v5);
  v6 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, v5);
  v7 = *(*v6 + 224);
  v8 = v6[3];
  v9 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v6[2] + 8, v8);
  if (*(v9 + 40))
  {
    v10 = (*(*v7 + 24))(v7, v16, v6, v8, v9, a3);
  }

  else
  {
    v10 = 0;
  }

  v11 = v6[5];
  v12 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v6[2] + 8, v11);
  if (*(v12 + 40))
  {
    v10 |= (*(*v7 + 32))(v7, v16, v6, v11, v12, a3);
  }

  v13 = v6[6];
  v14 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v6[2] + 8, v13);
  if (!*(v14 + 40))
  {
    if (!v10)
    {
      return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1 + 8);
    }

    goto LABEL_8;
  }

  if ((v10 | (*(*v7 + 40))(v7, v16, v6, v13, v14, a3)))
  {
LABEL_8:
    re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 176, v5);
  }

  return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1 + 8);
}

void re::ecs2::PhysicsSubsystemImpl<re::ecs2::PinComponent,re::ecs2::PinComponentStateImpl>::simToECS(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[0] = a3;
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 64), v9);
  v6 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, *(*(a1 + 72) + 16 * v5 + 8));
  v7 = *(v6 + 48);
  v8 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](*(v6 + 16) + 8, v7);
  if (*(v8 + 40))
  {
    v9[0] = 0;
    v9[1] = 0;
    re::ecs2::PinComponentStateImpl::simToECS(a1 + 248, a2, v9, v6, v7, v8);
  }
}

void re::ecs2::PhysicsSubsystemImpl<re::ecs2::PinComponent,re::ecs2::PinComponentStateImpl>::onPhysicsSimulationRootUpdated(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  do
  {
    v5 = v4;
    v4 = *(v4 + 32);
  }

  while (v4);
  v28[0] = *(v5 + 24);
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 64), v28);
  if (v6 == -1)
  {
    v7 = 0;
  }

  else
  {
    v7 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, *(*(a1 + 72) + 16 * v6 + 8));
  }

  re::StackScratchAllocator::StackScratchAllocator(v28);
  v22[0] = 0;
  v22[1] = 0;
  v23 = 1;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  v27 = 0;
  re::BucketArray<re::ecs2::Entity const*,32ul>::init(v22, v28, 1uLL);
  *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v22) = a2;
  for (i = v26; v26; i = v26)
  {
    v9 = *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v22, i - 1);
    re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v22, --v26);
    ++v27;
    v10 = re::ecs2::EntityComponentCollection::get((v9 + 6), re::ecs2::ComponentImpl<re::ecs2::PinComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (v10)
    {
      v11 = v10;
      for (j = 3; j != 7; ++j)
      {
        v13 = re::ecs2::ComponentBucketsBase::componentHandle(v7[2], v7[j], v11);
        if (v13 != -1 && (v14 & 0xFFFFFF00000000) != 0)
        {
          v16 = v13;
          v17 = v14;
          goto LABEL_16;
        }
      }

      v16 = -1;
      v17 = 0xFFFFFFFFLL;
LABEL_16:
      re::ecs2::BasicComponentStateSceneData<re::ecs2::PinComponent>::setComponentState(v7, v16, v17, 0);
    }

    v18 = v9[43];
    if (v18)
    {
      v19 = v9[45];
      v20 = 8 * v18;
      do
      {
        v21 = *v19++;
        *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v22) = v21;
        v20 -= 8;
      }

      while (v20);
    }
  }

  re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(v22);
  if (v22[0] && (v23 & 1) == 0)
  {
    (*(*v22[0] + 40))();
  }

  re::StackScratchAllocator::~StackScratchAllocator(v28);
}

_anonymous_namespace_ *re::ecs2::PhysicsSubsystemImpl<re::ecs2::PinComponent,re::ecs2::PinComponentStateImpl>::onPhysicsComponentDeactivated(uint64_t a1, uint64_t a2)
{
  result = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PinComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (result)
  {

    return re::ecs2::PinComponent::removeAllPins(result);
  }

  return result;
}

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PinComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PinComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PinComponent>,4ul>::setBucketsCapacity(void *result, unint64_t a2)
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

uint64_t *re::ecs2::BasicComponentStateSceneData<re::ecs2::PinComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::PinComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType) + 480;
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
    *v10 = &unk_1F5CD50E8;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PinComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::PinComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CD5140;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PinComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::PinComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CD5198;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PinComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::PinComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CD51F0;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PinComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::PinComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
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
        *v37 = &unk_1F5CD50E8;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PinComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CD5140;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PinComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CD5198;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PinComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CD51F0;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PinComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PinComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PinComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PinComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PinComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PinComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PinComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PinComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PinComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PinComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PinComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PinComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PinComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PinComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PinComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PinComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PinComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PinComponent>::setComponentState(re::ecs2::ComponentBucketsBase **a1, unint64_t a2, unint64_t a3, unsigned int a4)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PinComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PinComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PinComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PinComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD50E8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PinComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PinComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD50E8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PinComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PinComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PinComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PinComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD5140;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PinComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PinComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD5140;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PinComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PinComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PinComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PinComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD5198;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PinComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PinComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD5198;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PinComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PinComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PinComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PinComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD51F0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PinComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PinComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD51F0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::PhysicsSystem,REEventHandlerResult (re::ecs2::PhysicsSystem::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::PhysicsSystem,REEventHandlerResult (re::ecs2::PhysicsSystem::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD5248;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::PhysicsSystem,REEventHandlerResult (re::ecs2::PhysicsSystem::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD5248;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::PhysicsSystem,REEventHandlerResult (re::ecs2::PhysicsSystem::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::PhysicsSystem,REEventHandlerResult (re::ecs2::PhysicsSystem::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD52A0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::PhysicsSystem,REEventHandlerResult (re::ecs2::PhysicsSystem::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD52A0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::PhysicsSystem,REEventHandlerResult (re::ecs2::PhysicsSystem::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::PhysicsSystem,REEventHandlerResult (re::ecs2::PhysicsSystem::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD52F8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::PhysicsSystem,REEventHandlerResult (re::ecs2::PhysicsSystem::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD52F8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::HashTable<re::ecs2::Entity const*,re::ecs2::RootPhysicsSimulationData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::ecs2::Entity const*,re::ecs2::EntityRenderOptions,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 56 * v6 + 16;
  }
}

double re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,16ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      do
      {
        re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,16ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::free(a1[2], v3++);
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

uint64_t re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,16ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::free(uint64_t result, unsigned int a2)
{
  v2 = (result + 80 * a2);
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;
    v3 = (v2 + 4);
    re::BucketArray<RESubscriptionHandle,16ul>::deinit(v3);

    return re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v3);
  }

  return result;
}

uint64_t re::introspect<re::TransformService>(unsigned int a1)
{
  v1 = &unk_1EE187000;
  {
    v1 = &unk_1EE187000;
    if (v3)
    {
      re::introspect<re::TransformService>(BOOL)::info = re::introspect_TransformService(a1);
      v1 = &unk_1EE187000;
    }
  }

  return v1[213];
}

uint64_t re::Event<re::NetworkSystem,re::ecs2::Component *>::createSubscription<re::ecs2::PhysicsSystem>(re::ecs2::PhysicsSystem *,REEventHandlerResult (re::ecs2::PhysicsSystem::*)(re::NetworkSystem*,re::ecs2::Component *))::{lambda(re::NetworkSystem*,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription const&,re::ecs2::Component *&&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2[1];
  v5 = a2[2];
  v6 = (*a2 + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  return v4(v6, a1, *a3);
}

uint64_t re::BucketArray<RESubscriptionHandle,16ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      re::BucketArray<RESubscriptionHandle,16ul>::operator[](a1, i);
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

uint64_t re::BucketArray<RESubscriptionHandle,16ul>::addUninitialized(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 16 * v3)
  {
    re::BucketArray<RESubscriptionHandle,16ul>::setBucketsCapacity(a1, (v2 + 16) >> 4);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 4)
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

  v5 = *(v4 + 8 * (v2 >> 4));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + 16 * (v2 & 0xF);
}

uint64_t *re::BucketArray<RESubscriptionHandle,16ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 16 * a2)
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
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    v3[5] = 0;
    result = re::BucketArray<RESubscriptionHandle,16ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

uint64_t re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,16ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(v25, v9, v8);
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
                v17 = re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,16ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::allocEntry(a1, *(v13 + 72) % *(a1 + 24));
                v18 = *(v13 + 8);
                *(v17 + 16) = 0;
                v17 += 16;
                *(v17 - 8) = v18;
                *(v17 + 8) = 0;
                *(v17 + 16) = 1;
                *(v17 + 48) = 0;
                *(v17 + 32) = 0;
                *(v17 + 40) = 0;
                *(v17 + 24) = 0;
                re::BucketArray<RESubscriptionHandle,8ul>::swap(v17, v13 + 16);
              }

              v13 += 80;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,16ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(v25);
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
    v20 = *(v19 + 80 * v5);
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *(v19 + 80 * v5);
    *(a1 + 36) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + 80 * v5;
  *v22 = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v23 + 4 * a2) = v5;
  *(v22 + 72) = a3;
  ++*(a1 + 28);
  return v19 + 80 * v5;
}

uint64_t re::BucketArray<RESubscriptionHandle,16ul>::operator[](uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 4)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return *(v3 + 8 * (a2 >> 4)) + 16 * (a2 & 0xF);
}

uint64_t re::ProfilerTimeGuard<(re::ProfilerStatistic)121>::end(uint64_t result)
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
      v5 = v3[976].u64[0];
      if (v5 >= v4)
      {
        v5 = result - v1[1];
      }

      v3[976].i64[0] = v5;
      v6 = v3[976].u64[1];
      if (v6 <= v4)
      {
        v6 = v4;
      }

      v3[976].i64[1] = v6;
      v7 = vdupq_n_s64(1uLL);
      v7.i64[0] = v4;
      v3[977] = vaddq_s64(v3[977], v7);
      *(v2 + 184) = 0;
    }

    *v1 = 0;
  }

  return result;
}

uint64_t re::ProfilerTimeGuard<(re::ProfilerStatistic)19>::end(uint64_t result)
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
      v5 = v3[160].u64[0];
      if (v5 >= v4)
      {
        v5 = result - v1[1];
      }

      v3[160].i64[0] = v5;
      v6 = v3[160].u64[1];
      if (v6 <= v4)
      {
        v6 = v4;
      }

      v3[160].i64[1] = v6;
      v7 = vdupq_n_s64(1uLL);
      v7.i64[0] = v4;
      v3[161] = vaddq_s64(v3[161], v7);
      *(v2 + 184) = 0;
    }

    *v1 = 0;
  }

  return result;
}

uint64_t re::ecs2::VisualDepthCustomMaterialManager::addEntityWithVisualDepthCustomMaterial(uint64_t this, unint64_t a2)
{
  v2 = this;
  v10 = a2;
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  v4 = v3 ^ (v3 >> 31);
  v5 = *(this + 32);
  if (v5)
  {
    v7 = v4 % v5;
    v8 = *(*(this + 16) + 4 * (v4 % v5));
    if (v8 != 0x7FFFFFFF)
    {
      v9 = *(this + 24);
      if (*(v9 + 24 * v8 + 16) == a2)
      {
        return this;
      }

      while (1)
      {
        LODWORD(v8) = *(v9 + 24 * v8 + 8) & 0x7FFFFFFF;
        if (v8 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v9 + 24 * v8 + 16) == a2)
        {
          return this;
        }
      }
    }
  }

  else
  {
    LODWORD(v7) = 0;
  }

  this = re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::addAsCopy(this + 8, v7, v4, &v10, &v10);
  ++*(v2 + 48);
  return this;
}

void re::ecs2::VisualDepthCustomMaterialManager::~VisualDepthCustomMaterialManager(re::ecs2::VisualDepthCustomMaterialManager *this)
{
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 1);
}

{
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 1);

  JUMPOUT(0x1E6906520);
}

void *re::ecs2::allocInfo_AnchoringResourceComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_154, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_154))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19F9A8, "AnchoringResourceComponent");
    __cxa_guard_release(&_MergedGlobals_154);
  }

  return &unk_1EE19F9A8;
}

void re::ecs2::initInfo_AnchoringResourceComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v30[0] = 0x9BAD4079DE588644;
  v30[1] = "AnchoringResourceComponent";
  if (v30[0])
  {
    if (v30[0])
    {
    }
  }

  *(this + 2) = v31;
  if ((atomic_load_explicit(&qword_1EE19F970, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19F970);
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
      qword_1EE19F978 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_AssetHandle(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "imageAsset";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x2000000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE19F980 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_float(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "imageWidth";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x3800000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE19F988 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::introspect_AssetHandle(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "arReferenceObjectAsset";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x4000000003;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE19F990 = v20;
      v21 = re::introspectionAllocator(v20);
      v23 = re::IntrospectionInfo<unsigned char [16]>::get(1, v22);
      v24 = (*(*v21 + 32))(v21, 72, 8);
      *v24 = 1;
      *(v24 + 8) = "arReferenceObjectIdentifier";
      *(v24 + 16) = v23;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0x5800000005;
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      *(v24 + 56) = 0;
      *(v24 + 64) = 0;
      qword_1EE19F998 = v24;
      v25 = re::introspectionAllocator(v24);
      v27 = re::introspect_float(1, v26);
      v28 = (*(*v25 + 32))(v25, 72, 8);
      *v28 = 1;
      *(v28 + 8) = "imageHeight";
      *(v28 + 16) = v27;
      *(v28 + 24) = 0;
      *(v28 + 32) = 0x3C00000006;
      *(v28 + 40) = 0;
      *(v28 + 48) = 0;
      *(v28 + 56) = 0;
      *(v28 + 64) = 0;
      qword_1EE19F9A0 = v28;
      __cxa_guard_release(&qword_1EE19F970);
    }
  }

  *(this + 2) = 0x6800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE19F978;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AnchoringResourceComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AnchoringResourceComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AnchoringResourceComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AnchoringResourceComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs226AnchoringResourceComponentELNS_17RealityKitReleaseE10EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v29 = v31;
}

double re::internal::defaultConstruct<re::ecs2::AnchoringResourceComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 12) = 0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CD54F0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
  result = 0.0;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0;
  return result;
}

void *re::internal::defaultDestruct<re::ecs2::AnchoringResourceComponent>(uint64_t a1, uint64_t a2, void *a3)
{
  re::AssetHandle::~AssetHandle((a3 + 8));
  re::AssetHandle::~AssetHandle((a3 + 4));
  *a3 = &unk_1F5CCF868;

  return objc_destructInstance(a3 + 1);
}

double re::internal::defaultConstructV2<re::ecs2::AnchoringResourceComponent>(uint64_t a1)
{
  *(a1 + 96) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CD54F0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 32) = 0;
  result = 0.0;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0;
  return result;
}

void *re::internal::defaultDestructV2<re::ecs2::AnchoringResourceComponent>(void *a1)
{
  re::AssetHandle::~AssetHandle((a1 + 8));
  re::AssetHandle::~AssetHandle((a1 + 4));
  *a1 = &unk_1F5CCF868;

  return objc_destructInstance(a1 + 1);
}

void re::ecs2::AnchoringResourceComponent::~AnchoringResourceComponent(re::ecs2::AnchoringResourceComponent *this)
{
  re::AssetHandle::~AssetHandle((this + 64));
  re::AssetHandle::~AssetHandle((this + 32));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::AssetHandle::~AssetHandle((this + 64));
  re::AssetHandle::~AssetHandle((this + 32));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs226AnchoringResourceComponentELNS_17RealityKitReleaseE10EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 10;
  *(a2 + 8) = 0;
  return result;
}

re::ecs2::DepthMitigationStateTracking *re::ecs2::DepthMitigationStateTracking::DepthMitigationStateTracking(re::ecs2::DepthMitigationStateTracking *this)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v2 = re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>::HierarchyStateTracking(this);
  *v2 = &unk_1F5CD5578;
  *(v2 + 300) = 1;
  *(v2 + 304) = 0u;
  *(v2 + 320) = 0u;
  *(v2 + 336) = 0;
  v5[0] = re::ecs2::ComponentImpl<re::ecs2::SceneUnderstandingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v5[1] = re::ecs2::ComponentImpl<re::ecs2::DepthMitigationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v4[0] = v5;
  v4[1] = 2;
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((v2 + 312), v4);
  return this;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>::HierarchyStateTracking(uint64_t a1)
{
  *a1 = &unk_1F5CD5650;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 44) = 0x7FFFFFFFLL;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  v2 = a1 + 56;
  *(a1 + 88) = 0;
  *(a1 + 92) = 0x7FFFFFFFLL;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  v3 = a1 + 104;
  *(a1 + 136) = 0;
  *(a1 + 140) = 0x7FFFFFFFLL;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  v4 = a1 + 152;
  *(a1 + 184) = 0;
  *(a1 + 188) = 0x7FFFFFFFLL;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  v5 = a1 + 200;
  *(a1 + 232) = 0;
  *(a1 + 236) = 0x7FFFFFFFLL;
  *(a1 + 248) = 0u;
  *(a1 + 280) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 284) = 0x7FFFFFFFLL;
  *(a1 + 296) = -1;
  return a1;
}

void re::ecs2::DepthMitigationStateTracking::buildPerEntityStateForDirtyEntityHierarchies(uint64_t a1, uint64_t a2)
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
    v44 = v8;
    do
    {
      v9 = *(v7 + 24 * v4 + 16);
      v10 = *(a1 + 336);
      if (!*(a1 + 56) || (v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) >> 27)), v12 = *(*(a1 + 64) + 4 * ((v11 ^ (v11 >> 31)) % *(a1 + 80))), v12 == 0x7FFFFFFF))
      {
        while (1)
        {
LABEL_14:
          v14 = *(v9 + 32);
          if (!v14 || (*(v14 + 304) & 0x80) != 0)
          {
            v16 = 0;
            LOWORD(v17) = 0;
            goto LABEL_20;
          }

          v60[0] = *(v9 + 32);
          v15 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(a1 + 56, v60);
          if (v15)
          {
            break;
          }

          v9 = v60[0];
        }

        v16 = *v15;
        v17 = HIBYTE(*v15);
LABEL_20:
        re::StackScratchAllocator::StackScratchAllocator(v60);
        v54[0] = 0;
        v54[1] = 0;
        v55 = 1;
        v57 = 0;
        v58 = 0;
        v56 = 0;
        v59 = 0;
        re::BucketArray<re::ecs2::Entity const*,32ul>::init(v54, v60, 1uLL);
        v47 = 0;
        v48 = 0;
        v49 = 1;
        v51 = 0;
        v52 = 0;
        v50 = 0;
        v53 = 0;
        re::BucketArray<re::ecs2::DepthMitigationState,32ul>::init(&v47, v60, 1uLL);
        *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v54) = v9;
        *re::BucketArray<re::ecs2::DepthMitigationState,32ul>::addUninitialized(&v47) = v16 | (v17 << 8);
        while (v58)
        {
          v46 = *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v54, v58 - 1);
          if (!v52)
          {
            re::internal::assertLog(4, v18, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
            _os_crash();
            __break(1u);
            return;
          }

          v19 = v52 - 1;
          v20 = *re::BucketArray<re::ecs2::DepthMitigationState,32ul>::operator[](&v47, v52 - 1);
          re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v54, --v58);
          ++v59;
          re::BucketArray<re::ecs2::DepthMitigationState,32ul>::operator[](&v47, v19);
          v52 = v19;
          ++v53;
          (*(**v10 + 8))(&v61);
          v21 = v61;
          v22 = v62;
          v23 = re::ecs2::EntityComponentCollection::get((v46 + 48), re::ecs2::ComponentImpl<re::ecs2::SceneUnderstandingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          v24 = v20 >> 8;
          if (v21 == 1 && v22)
          {
            if (v23)
            {
              if (((*(v23 + 41) == 1) & ((*(v23 + 42) & 2) >> 1)) != 0)
              {
                v25 = 8;
              }

              else
              {
                v25 = 0;
              }

              v26 = v25 | v24 & 0xFFFFFFF7;
            }

            else
            {
              v26 = v24;
            }

            v28 = v26 & 0xFFFFFFFD;
          }

          else
          {
            if (v23)
            {
              if (((*(v23 + 41) == 1) & *(v23 + 42)) != 0)
              {
                v27 = 4;
              }

              else
              {
                v27 = 0;
              }

              v28 = v27 | v24 & 0xFFFFFFFB;
            }

            else
            {
              v28 = v24;
            }

            v29 = re::ecs2::EntityComponentCollection::get((v46 + 48), re::ecs2::ComponentImpl<re::ecs2::DepthMitigationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
            if (v29)
            {
              v30 = v29[25] ? 2 : 0;
              v31 = v29[27] ? 16 : 0;
              v28 = v28 & 0xFFFFFFED | v31 | v30;
              v32 = v30 | v24 & 0xFFFD;
              if (v29[26] == 1)
              {
                LOWORD(v24) = v32;
              }
            }
          }

          *(a1 + 304) += (v28 >> 4) & 1;
          v61 = 0;
          v62 = 0;
          v63 = 0;
          v33 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v46 ^ (v46 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v46 ^ (v46 >> 30))) >> 27));
          re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(a1 + 56, &v46, v33 ^ (v33 >> 31), &v61);
          v34 = v28 | (v24 << 8);
          if (HIDWORD(v62) == 0x7FFFFFFF)
          {
            v35 = re::HashTable<re::ecs2::Entity const*,re::ecs2::DepthMitigationState,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(a1 + 56, v62, v61);
            v36 = v46;
            *(v35 + 8) = v46;
            *(v35 + 16) = v34;
            ++*(a1 + 96);
          }

          else
          {
            v36 = v46;
          }

          v37 = *(v36 + 344);
          if (v37)
          {
            v38 = *(v36 + 360);
            v39 = 8 * v37;
            do
            {
              v40 = *v38++;
              *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v54) = v40;
              *re::BucketArray<re::ecs2::DepthMitigationState,32ul>::addUninitialized(&v47) = v34;
              v39 -= 8;
            }

            while (v39);
          }
        }

        v41 = v52;
        if (v52)
        {
          v42 = 0;
          do
          {
            re::BucketArray<re::ecs2::DepthMitigationState,32ul>::operator[](&v47, v42++);
          }

          while (v41 != v42);
        }

        while (v48)
        {
          re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(&v47);
        }

        LODWORD(v3) = v44;
        if (v47 && (v49 & 1) == 0)
        {
          (*(*v47 + 40))();
        }

        re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(v54);
        if (v54[0] && (v55 & 1) == 0)
        {
          (*(*v54[0] + 40))();
        }

        re::StackScratchAllocator::~StackScratchAllocator(v60);
        v8 = *(a2 + 32);
        v7 = *(a2 + 16);
      }

      else
      {
        v13 = *(a1 + 72);
        while (*(v13 + 32 * v12 + 8) != v9)
        {
          v12 = *(v13 + 32 * v12) & 0x7FFFFFFF;
          if (v12 == 0x7FFFFFFF)
          {
            goto LABEL_14;
          }
        }
      }

      if (v8 <= v4 + 1)
      {
        v43 = v4 + 1;
      }

      else
      {
        v43 = v8;
      }

      while (v43 - 1 != v4)
      {
        LODWORD(v4) = v4 + 1;
        if ((*(v7 + 24 * v4 + 8) & 0x80000000) != 0)
        {
          goto LABEL_73;
        }
      }

      LODWORD(v4) = v43;
LABEL_73:
      ;
    }

    while (v4 != v3);
  }
}

void re::ecs2::DepthMitigationStateTracking::clearEntityHierarchyStateData(re::ecs2::DepthMitigationStateTracking *this, const re::ecs2::Entity *a2)
{
  if (*(this + 21))
  {
    re::StackScratchAllocator::StackScratchAllocator(v16);
    v10[0] = 0;
    v10[1] = 0;
    v11 = 1;
    v13 = 0;
    v14 = 0;
    v12 = 0;
    v15 = 0;
    re::BucketArray<re::ecs2::Entity const*,32ul>::init(v10, v16, 1uLL);
    *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v10) = a2;
    while (v14)
    {
      v9 = *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v10, v14 - 1);
      re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v10, --v14);
      ++v15;
      v4 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(this + 56, &v9);
      if (v4)
      {
        *(this + 38) -= (*v4 >> 4) & 1;
        re::HashTable<re::ecs2::Entity const*,re::ecs2::DepthMitigationState,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 56, &v9);
      }

      v5 = *(v9 + 344);
      if (v5)
      {
        v6 = *(v9 + 360);
        v7 = 8 * v5;
        do
        {
          v8 = *v6++;
          *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v10) = v8;
          v7 -= 8;
        }

        while (v7);
      }
    }

    re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(v10);
    if (v10[0] && (v11 & 1) == 0)
    {
      (*(*v10[0] + 40))();
    }

    re::StackScratchAllocator::~StackScratchAllocator(v16);
  }
}

uint64_t re::HashTable<re::ecs2::Entity const*,re::ecs2::DepthMitigationState,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  result = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v9);
  v5 = v11;
  if (v11 != 0x7FFFFFFF)
  {
    v6 = *(a1 + 16);
    v7 = *(v6 + 32 * v11) & 0x7FFFFFFF;
    if (v12 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * v10) = v7;
      v5 = v11;
    }

    else
    {
      *(v6 + 32 * v12) = *(v6 + 32 * v12) & 0x80000000 | v7;
    }

    v8 = *(a1 + 40);
    *(v6 + 32 * v5) = *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v5;
    *(a1 + 40) = v8 + 1;
  }

  return result;
}

void re::ecs2::DepthMitigationStateManager::updateDepthMitigationStateData(uint64_t a1, int a2, uint64_t a3)
{
  *(a1 + 344) = a3;
  if (*(a1 + 308) == a2)
  {
LABEL_2:
    if (a2)
    {
      (*(*(a1 + 8) + 32))(a1 + 8, a1 + 112);
    }

    goto LABEL_19;
  }

  *(a1 + 308) = a2;
  if (*(a1 + 92))
  {
    v5 = *(a1 + 88);
    if (v5)
    {
      memset_pattern16(*(a1 + 72), &unk_1E304C660, 4 * v5);
    }

    v6 = *(a1 + 96);
    if (v6)
    {
      v7 = *(a1 + 80);
      do
      {
        if ((*v7 & 0x80000000) != 0)
        {
          *v7 &= ~0x80000000;
        }

        v7 += 8;
        --v6;
      }

      while (v6);
    }

    *(a1 + 92) = 0;
    *(a1 + 96) = 0;
    v8 = *(a1 + 104) + 1;
    *(a1 + 100) = 0x7FFFFFFF;
    *(a1 + 104) = v8;
  }

  *(a1 + 312) = 0;
  if (a2)
  {
    v9 = *(a1 + 48);
    if (v9)
    {
      v10 = 0;
      v11 = (*(a1 + 32) + 8);
      while (1)
      {
        v12 = *v11;
        v11 += 6;
        if (v12 < 0)
        {
          break;
        }

        if (v9 == ++v10)
        {
          LODWORD(v10) = *(a1 + 48);
          break;
        }
      }
    }

    else
    {
      LODWORD(v10) = 0;
    }

    if (v10 != v9)
    {
      v13 = *(a1 + 48);
      do
      {
        v14 = *(*(*(a1 + 32) + 24 * v10 + 16) + 104);
        v15 = *(v14 + 344);
        if (v15)
        {
          v16 = *(v14 + 360);
          v17 = 8 * v15;
          do
          {
            v18 = *v16++;
            v20 = v18;
            re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 112, &v20);
            v17 -= 8;
          }

          while (v17);
          v13 = *(a1 + 48);
        }

        if (v13 <= v10 + 1)
        {
          v19 = v10 + 1;
        }

        else
        {
          v19 = v13;
        }

        while (v19 - 1 != v10)
        {
          LODWORD(v10) = v10 + 1;
          if ((*(*(a1 + 32) + 24 * v10 + 8) & 0x80000000) != 0)
          {
            goto LABEL_34;
          }
        }

        LODWORD(v10) = v19;
LABEL_34:
        ;
      }

      while (v10 != v9);
    }

    goto LABEL_2;
  }

LABEL_19:
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(a1 + 112);
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(a1 + 208);
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(a1 + 256);
  *(a1 + 344) = 0;
}

void re::ecs2::DepthMitigationStateTracking::~DepthMitigationStateTracking(re::ecs2::DepthMitigationStateTracking *this)
{
  re::FixedArray<CoreIKTransform>::deinit(this + 39);

  re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>::~HierarchyStateTracking(this);
}

{
  re::FixedArray<CoreIKTransform>::deinit(this + 39);
  re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>::~HierarchyStateTracking(this);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::DepthMitigationStateManager::~DepthMitigationStateManager(re::ecs2::DepthMitigationStateManager *this)
{
  re::FixedArray<CoreIKTransform>::deinit(this + 40);
  re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>::~HierarchyStateTracking(this + 1);
}

{
  re::FixedArray<CoreIKTransform>::deinit(this + 40);
  re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>::~HierarchyStateTracking(this + 1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::ecs2::DepthMitigationStateManager::registerScene(re::ecs2::DepthMitigationStateManager *this, re::ecs2::Scene *a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v50 = a2;
  v2 = *(a2 + 36);
  if (!v2)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) An event bus is expected for this system to track entity state changes.", "eventBus", "registerScene", 106);
    _os_crash();
    __break(1u);
  }

  v4 = (this + 8);
  v44[0] = 0;
  v44[1] = 0;
  v45 = 1;
  v47 = 0;
  v48 = 0;
  v46 = 0;
  v49 = 0;
  v5 = (*(*v4 + 16))(v4);
  if (v6)
  {
    v7 = v5;
    v8 = 8 * v6;
    do
    {
      v9 = *v7++;
      v52 = re::globalAllocators(v5)[2];
      v10 = (*(*v52 + 32))(v52, 32, 0);
      *v10 = &unk_1F5CD5690;
      v10[1] = v4;
      v10[2] = re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>::invalidateEntityHierarchyEventHandler<REComponentDidChangeEvent>;
      v10[3] = 0;
      v53 = v10;
      v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v2, v51, v9, 0);
      v13 = v12;
      v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v44);
      *v14 = v11;
      v14[1] = v13;
      re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v51);
      re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>::subscribeToEventToInvalidateEntityHierarchy<REComponentDidActivateEvent>(v4, v2, v44, v9);
      v5 = re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>::subscribeToEventToInvalidateEntityHierarchy<REComponentWillDeactivateEvent>(v4, v2, v44, v9);
      v8 -= 8;
    }

    while (v8);
  }

  v15 = (*(*v4 + 24))(v4);
  if (v16)
  {
    v17 = v15;
    v18 = 8 * v16;
    do
    {
      v19 = *v17++;
      re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>::subscribeToEventToInvalidateEntityHierarchy<REComponentDidActivateEvent>(v4, v2, v44, v19);
      v15 = re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>::subscribeToEventToInvalidateEntityHierarchy<REComponentWillDeactivateEvent>(v4, v2, v44, v19);
      v18 -= 8;
    }

    while (v18);
  }

  v52 = re::globalAllocators(v15)[2];
  v20 = (*(*v52 + 32))(v52, 32, 0);
  *v20 = &unk_1F5CD5798;
  v20[1] = v4;
  v20[2] = re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>::invalidateEntityHierarchyEventHandler<RESceneEntityDidReparentEvent>;
  v20[3] = 0;
  v53 = v20;
  v21 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidReparentEvent>(v2, v51, 0, 0);
  v23 = v22;
  v24 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v44);
  *v24 = v21;
  v24[1] = v23;
  v25 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::destroyCallable(v51);
  v52 = re::globalAllocators(v25)[2];
  v26 = (*(*v52 + 32))(v52, 32, 0);
  *v26 = &unk_1F5CD57F0;
  v26[1] = v4;
  v26[2] = re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>::invalidateEntityHierarchyEventHandler<RESceneEntityDidActivateEvent>;
  v26[3] = 0;
  v53 = v26;
  v27 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidActivateEvent>(v2, v51, 0, 0);
  v29 = v28;
  v30 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v44);
  *v30 = v27;
  v30[1] = v29;
  v31 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::destroyCallable(v51);
  v52 = re::globalAllocators(v31)[2];
  v32 = (*(*v52 + 32))(v52, 32, 0);
  *v32 = &unk_1F5CD5848;
  v32[1] = v4;
  v32[2] = re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>::invalidateEntityHierarchyEventHandler<RESceneEntityWillDeactivateEvent>;
  v32[3] = 0;
  v53 = v32;
  v33 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityWillDeactivateEvent>(v2, v51, 0, 0);
  v35 = v34;
  v36 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v44);
  *v36 = v33;
  v36[1] = v35;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::destroyCallable(v51);
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::add(this + 160, &v50, v44);
  v37 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v50 ^ (v50 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v50 ^ (v50 >> 30))) >> 27));
  v38 = v37 ^ (v37 >> 31);
  v39 = *(this + 10);
  if (v39)
  {
    v40 = v38 % v39;
    v41 = *(*(this + 3) + 4 * (v38 % v39));
    if (v41 != 0x7FFFFFFF)
    {
      v42 = *(this + 4);
      if (*(v42 + 24 * v41 + 16) == v50)
      {
        goto LABEL_16;
      }

      while (1)
      {
        LODWORD(v41) = *(v42 + 24 * v41 + 8) & 0x7FFFFFFF;
        if (v41 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v42 + 24 * v41 + 16) == v50)
        {
          goto LABEL_16;
        }
      }
    }
  }

  else
  {
    LODWORD(v40) = 0;
  }

  re::HashSetBase<re::ecs2::Scene const*,re::ecs2::Scene const*,re::internal::ValueAsKey<re::ecs2::Scene const*>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::addAsCopy(this + 16, v40, v38, &v50, &v50);
  ++*(this + 14);
LABEL_16:
  re::BucketArray<RESubscriptionHandle,8ul>::deinit(v44);
  result = v44[0];
  if (v44[0])
  {
    if ((v45 & 1) == 0)
    {
      return (*(*v44[0] + 40))();
    }
  }

  return result;
}

uint64_t re::ecs2::DepthMitigationStateManager::unregisterScene(re::ecs2::DepthMitigationStateManager *this, re::ecs2::Scene *a2)
{
  v13 = a2;
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 16, &v13);
  v3 = *(v13 + 13);
  v4 = *(v3 + 344);
  if (v4)
  {
    v5 = *(v3 + 360);
    v6 = 8 * v4;
    do
    {
      if (*(*v5 + 304))
      {
        (*(*(this + 1) + 40))(this + 8);
      }

      v5 += 8;
      v6 -= 8;
    }

    while (v6);
  }

  result = re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(this + 160, &v13);
  if (result)
  {
    v8 = *(v13 + 36);
    if (v8)
    {
      v9 = result;
      v10 = *(result + 40);
      if (v10)
      {
        for (i = 0; i != v10; ++i)
        {
          v12 = re::BucketArray<RESubscriptionHandle,8ul>::operator[](v9, i);
          re::EventBus::unsubscribe(v8, *v12, *(v12 + 8));
        }
      }
    }

    return re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::remove(this + 160, &v13);
  }

  return result;
}

uint64_t *re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>::~HierarchyStateTracking(uint64_t *a1)
{
  *a1 = &unk_1F5CD5650;
  v2 = a1 + 1;
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(a1 + 31);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(a1 + 25);
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit((a1 + 19));
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(a1 + 13);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 7);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v2);
  return a1;
}

void re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>::clearEntityHierarchyStateData(_DWORD *a1, uint64_t a2)
{
  if (a1[21])
  {
    if (a1[74] != a1[24])
    {
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear((a1 + 62));
    }

    re::StackScratchAllocator::StackScratchAllocator(v15);
    v9[0] = 0;
    v9[1] = 0;
    v10 = 1;
    v12 = 0;
    v13 = 0;
    v11 = 0;
    v14 = 0;
    re::BucketArray<re::ecs2::Entity const*,32ul>::init(v9, v15, 1uLL);
    *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v9) = a2;
    while (v13)
    {
      v8 = *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v9, v13 - 1);
      re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v9, --v13);
      ++v14;
      if (!re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains((a1 + 62), &v8))
      {
        re::HashTable<re::ecs2::Entity const*,re::ecs2::DepthMitigationState,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove((a1 + 14), &v8);
        re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add((a1 + 62), &v8);
        v4 = *(v8 + 344);
        if (v4)
        {
          v5 = *(v8 + 360);
          v6 = 8 * v4;
          do
          {
            v7 = *v5++;
            *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v9) = v7;
            v6 -= 8;
          }

          while (v6);
        }
      }
    }

    a1[74] = a1[24];
    re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(v9);
    if (v9[0] && (v10 & 1) == 0)
    {
      (*(*v9[0] + 40))();
    }

    re::StackScratchAllocator::~StackScratchAllocator(v15);
  }
}

uint64_t (***re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>::subscribeToEventToInvalidateEntityHierarchy<REComponentDidActivateEvent>(re *a1, re::EventBus *a2, uint64_t a3, uint64_t a4))(void)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = re::globalAllocators(a1)[2];
  v8 = (*(*v15 + 32))(v15, 32, 0);
  *v8 = &unk_1F5CD56E8;
  v8[1] = a1;
  v8[2] = re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>::invalidateEntityHierarchyEventHandler<REComponentDidActivateEvent>;
  v8[3] = 0;
  v16 = v8;
  v9 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(a2, v14, a4, 0);
  v11 = v10;
  v12 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a3);
  *v12 = v9;
  v12[1] = v11;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v14);
}

uint64_t (***re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>::subscribeToEventToInvalidateEntityHierarchy<REComponentWillDeactivateEvent>(re *a1, re::EventBus *a2, uint64_t a3, uint64_t a4))(void)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = re::globalAllocators(a1)[2];
  v8 = (*(*v15 + 32))(v15, 32, 0);
  *v8 = &unk_1F5CD5740;
  v8[1] = a1;
  v8[2] = re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>::invalidateEntityHierarchyEventHandler<REComponentWillDeactivateEvent>;
  v8[3] = 0;
  v16 = v8;
  v9 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(a2, v14, a4, 0);
  v11 = v10;
  v12 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a3);
  *v12 = v9;
  v12[1] = v11;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v14);
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>::invalidateEntityHierarchyEventHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD5690;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD5690;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>::invalidateEntityHierarchyEventHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD56E8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD56E8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>::invalidateEntityHierarchyEventHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD5740;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD5740;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>::invalidateEntityHierarchyEventHandler<RESceneEntityDidReparentEvent>(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD5798;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD5798;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>::invalidateEntityHierarchyEventHandler<RESceneEntityDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  if ((*(a2 + 387) & 1) == 0)
  {
    v3 = a1 + 200;
    (*(*a1 + 40))(a1);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v5);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(v3, &v5);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>::*)(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>::*)(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD57F0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>::*)(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD57F0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>::invalidateEntityHierarchyEventHandler<RESceneEntityWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v3 = a1 + 200;
  (*(*a1 + 40))(a1);
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(a1 + 104, &v5);
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(v3, &v5);
  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD5848;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::DepthMitigationState>::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD5848;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

void *re::BucketArray<re::ecs2::DepthMitigationState,32ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::DepthMitigationState,32ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::ecs2::DepthMitigationState,32ul>::setBucketsCapacity(void *result, unint64_t a2)
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

uint64_t re::BucketArray<re::ecs2::DepthMitigationState,32ul>::operator[](uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 5)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return *(v3 + 8 * (a2 >> 5)) + 2 * (a2 & 0x1F);
}

uint64_t re::BucketArray<re::ecs2::DepthMitigationState,32ul>::addUninitialized(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 32 * v3)
  {
    re::BucketArray<re::ecs2::DepthMitigationState,32ul>::setBucketsCapacity(a1, (v2 + 32) >> 5);
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
  return v5 + 2 * (v2 & 0x1F);
}

uint64_t re::HashTable<re::ecs2::Entity const*,re::ecs2::DepthMitigationState,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v25, v9, v8);
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
            v17 = v13 + 16;
            do
            {
              if ((*(v17 - 16) & 0x80000000) != 0)
              {
                v18 = re::HashTable<re::ecs2::Entity const*,re::ecs2::DepthMitigationState,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(a1, *(v17 + 8) % *(a1 + 24));
                *(v18 + 8) = *(v17 - 8);
                *(v18 + 16) = *v17;
              }

              v17 += 32;
              --v16;
            }

            while (v16);
          }

          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v25);
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
    v20 = *(v19 + 32 * v5);
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *(v19 + 32 * v5);
    *(a1 + 36) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + 32 * v5;
  *v22 = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v22 + 24) = a3;
  *(v23 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v19 + 32 * v5;
}

void *re::introspect_BlendingType(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    if (v9)
    {
      v10 = re::introspectionAllocator(v9);
      v11 = (*(*v10 + 32))(v10, 24, 8);
      *v11 = 1;
      *(v11 + 1) = 0;
      *(v11 + 2) = "BlendingOpaque";
      re::introspect_BlendingType(BOOL)::enumAttributes = v11;
      v12 = re::introspectionAllocator(v11);
      v13 = (*(*v12 + 32))(v12, 24, 8);
      *v13 = 1;
      *(v13 + 1) = 1;
      *(v13 + 2) = "BlendingTranslucent";
      qword_1EE1C6798 = v13;
      v14 = re::introspectionAllocator(v13);
      v15 = (*(*v14 + 32))(v14, 24, 8);
      *v15 = 1;
      *(v15 + 8) = 2;
      *(v15 + 16) = "BlendingCutout";
      qword_1EE1C67A0 = v15;
    }
  }

  {
    v16 = re::IntrospectionBasic::IntrospectionBasic(&re::introspect_BlendingType(BOOL)::info, "BlendingType", 1, 1, 1, 1);
    *v16 = &unk_1F5D0C658;
    *(v16 + 8) = &re::introspect_BlendingType(BOOL)::enumTable;
    *(v16 + 4) = 9;
  }

  if (v2)
  {
    if (re::introspect_BlendingType(BOOL)::isInitialized)
    {
      return &re::introspect_BlendingType(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v18);
    v3 = re::introspect_BlendingType(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v18);
    if (v3)
    {
      return &re::introspect_BlendingType(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::introspect_BlendingType(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::introspect_BlendingType(BOOL)::info;
    }
  }

  re::introspect_BlendingType(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_BlendingType(BOOL)::info, a2);
  v17[0] = 0x31142575D52B81D6;
  v17[1] = "BlendingType";
  xmmword_1EE1C6768 = v18;
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

  return &re::introspect_BlendingType(BOOL)::info;
}

void loadMatDefAsset(re::AssetHandle *this, const char *a2, AssetService *a3)
{
  v4 = *(this + 1);
  if (v4 || ((*(a3->var0 + 1))(&v8, a3, a2), v5 = *this, *this = v8, v8 = v5, v6 = *(this + 2), *(this + 2) = v9, v9 = v6, re::AssetHandle::~AssetHandle(&v8), (v4 = *(this + 1)) != 0))
  {
    if (!atomic_load((v4 + 896)))
    {
      re::AssetHandle::loadAsync(this);
    }
  }
}

void tryMakeMaterialAsset(re::AssetHandle *a1, re::AssetHandle *a2, re::RenderManager *a3, AssetService *a4)
{
  v7 = *(a1 + 1);
  if (!v7 || (v8 = atomic_load((v7 + 896)), v8 != 2))
  {
    v9 = *(a2 + 1);
    if (v9)
    {
      v10 = atomic_load((v9 + 896));
      if (v10 == 2)
      {
        re::AssetHandle::AssetHandle(v13, a2);
        re::MaterialAsset::makeMaterialMemoryAsset(a4, a3, v13, 0, 0);
        v11 = *a1;
        *a1 = v14;
        v14 = v11;
        v12 = *(a1 + 2);
        *(a1 + 2) = v15;
        v15 = v12;
        re::AssetHandle::~AssetHandle(&v14);
        re::AssetHandle::~AssetHandle(v13);
      }
    }
  }
}

void re::ecs2::PrimitiveRenderingSystem::willAddSystemToECSService(re::ecs2::PrimitiveRenderingSystem *this)
{
  re::ecs2::RenderingSubsystem::willAddSystemToECSService(this);
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  v3 = re::ServiceLocator::service<re::AssetService>(v2);
  loadMatDefAsset((this + 488), "engine:primitivePoint.rematerialdefinition", v3);
  loadMatDefAsset((this + 512), "engine:primitiveLine.rematerialdefinition", v3);
  loadMatDefAsset((this + 536), "engine:primitiveShapeWireframe.rematerialdefinition", v3);
  loadMatDefAsset((this + 560), "engine:primitiveMeshWireframe.rematerialdefinition", v3);
  loadMatDefAsset((this + 584), "engine:primitivePointNoZ.rematerialdefinition", v3);
  loadMatDefAsset((this + 608), "engine:primitiveLineNoZ.rematerialdefinition", v3);
  loadMatDefAsset((this + 632), "engine:primitiveShapeWireframeNoZ.rematerialdefinition", v3);

  loadMatDefAsset((this + 656), "engine:primitiveMeshWireframeNoZ.rematerialdefinition", v3);
}

void re::ecs2::PrimitiveRenderingSystem::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v69[48] = *MEMORY[0x1E69E9840];
  v5 = (*(**(a1 + 40) + 32))(*(a1 + 40));
  v6 = re::ServiceLocator::serviceOrNull<re::RenderManager>(v5);
  if (v6)
  {
    v7 = v6;
    v8 = *(v6 + 11);
    if (v8)
    {
      if (*v8 == 1 && *(v8 + 272))
      {
        v9 = *(v6 + 14);
        if (v9)
        {
          v59 = re::RenderFrameBox::get((v9 + 328), 0xFFFFFFFFFFFFFFFuLL);
        }

        else
        {
          v59 = 0;
        }

        v10 = (*(**(a1 + 40) + 32))(*(a1 + 40));
        v11 = re::ServiceLocator::service<re::AssetService>(v10);
        tryMakeMaterialAsset((a1 + 296), (a1 + 488), v7, v11);
        tryMakeMaterialAsset((a1 + 320), (a1 + 512), v7, v11);
        tryMakeMaterialAsset((a1 + 344), (a1 + 536), v7, v11);
        tryMakeMaterialAsset((a1 + 368), (a1 + 560), v7, v11);
        tryMakeMaterialAsset((a1 + 392), (a1 + 584), v7, v11);
        tryMakeMaterialAsset((a1 + 416), (a1 + 608), v7, v11);
        tryMakeMaterialAsset((a1 + 440), (a1 + 632), v7, v11);
        tryMakeMaterialAsset((a1 + 464), (a1 + 656), v7, v11);
        v12 = *(a3 + 200);
        if (v12)
        {
          v13 = *(v59 + 49);
          v14 = *(a3 + 216);
          v60 = &v14[v12];
          do
          {
            v15 = *v14;
            v62[1] = 0;
            v63 = 0;
            v64 = 0;
            v65 = 0;
            v62[0] = v13;
            re::DynamicArray<re::MeshScene>::setCapacity(v62, 0);
            ++v64;
            v16 = *(v8 + 272);
            if (v16)
            {
              v17 = *(v8 + 288);
              v18 = v17 + 1200 * v16;
              do
              {
                v19 = *(v17 + 16);
                if (v19 && (v19 << 7) - 128 + *(v17 + 520))
                {
                  v20 = *(v17 + 1096);
                  if (v20 || (v42 = *(a1 + 304)) != 0 && (v43 = atomic_load((v42 + 896)), v43 == 2) && (v44 = *(a1 + 400)) != 0 && (v45 = atomic_load((v44 + 896)), v45 == 2) && (!*(v17 + 1128) ? (v46 = (a1 + 392)) : (v46 = (a1 + 296)), (v20 = *(re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v46) + 1776)) != 0))
                  {
                    re::PrimitiveRenderingContext::buildMeshSceneOfPoints(v17, v13, v20, &__src);
                    if (v62[0])
                    {
                      re::DynamicArray<re::MeshScene>::add(v62, &__src);
                    }

                    re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v69);
                  }
                }

                v21 = *(v17 + 136);
                if (v21 && (v21 << 7) - 128 + *(v17 + 528))
                {
                  v22 = *(v17 + 1104);
                  if (v22 || (v47 = *(a1 + 328)) != 0 && (v48 = atomic_load((v47 + 896)), v48 == 2) && (v49 = *(a1 + 424)) != 0 && (v50 = atomic_load((v49 + 896)), v50 == 2) && (!*(v17 + 1129) ? (v51 = (a1 + 416)) : (v51 = (a1 + 320)), (v22 = *(re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v51) + 1776)) != 0))
                  {
                    re::PrimitiveRenderingContext::buildMeshSceneOfLines(v17, v13, v22, &__src);
                    if (v62[0])
                    {
                      re::DynamicArray<re::MeshScene>::add(v62, &__src);
                    }

                    re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v69);
                  }
                }

                if (*(v17 + 1176))
                {
                  v23 = 1;
                  do
                  {
                    v24 = re::PrimitiveRenderingDynamicGeometry::numShapes<unsigned long>(v17, v23 - 1);
                  }

                  while (v23++ < *(v17 + 1176) && v24 == 0);
                  if (v24)
                  {
                    v27 = *(v17 + 1112);
                    if (v27 || (v37 = *(a1 + 352)) != 0 && (v38 = atomic_load((v37 + 896)), v38 == 2) && (v39 = *(a1 + 448)) != 0 && (v40 = atomic_load((v39 + 896)), v40 == 2) && (!*(v17 + 1130) ? (v41 = (a1 + 440)) : (v41 = (a1 + 344)), (v27 = *(re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v41) + 1776)) != 0))
                    {
                      re::PrimitiveRenderingContext::buildMeshSceneOfShapes(v17, v13, v27, &__src);
                      v28 = v67;
                      if (v67)
                      {
                        v29 = 0;
                        v30 = 0;
                        do
                        {
                          if (v62[0])
                          {
                            re::DynamicArray<re::MeshScene>::add(v62, (v68 + v29));
                            v28 = v67;
                          }

                          ++v30;
                          v29 += 736;
                        }

                        while (v28 > v30);
                      }

                      re::DynamicArray<re::MeshScene>::deinit(&__src);
                    }
                  }
                }

                if (*(v17 + 1072))
                {
                  v31 = *(v17 + 1120);
                  if (v31 || (v32 = *(a1 + 376)) != 0 && (v33 = atomic_load((v32 + 896)), v33 == 2) && (v34 = *(a1 + 472)) != 0 && (v35 = atomic_load((v34 + 896)), v35 == 2) && (!*(v17 + 1131) ? (v36 = (a1 + 464)) : (v36 = (a1 + 368)), (v31 = *(re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v36) + 1776)) != 0))
                  {
                    re::PrimitiveRenderingContext::buildMeshSceneOfMeshes(v17, v13, v31, &__src);
                    if (v62[0])
                    {
                      re::DynamicArray<re::MeshScene>::add(v62, &__src);
                    }

                    re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v69);
                  }
                }

                v17 += 1200;
              }

              while (v17 != v18);
            }

            if (v63)
            {
              re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(v15, 0, v59, &__src);
              v61 = __src >> 1;
              v52 = **(re::RenderFrameData::stream((v59 + 264), &v61) + 48);
              v53 = (*(v52 + 504))();
              if (__src)
              {
                if (__src)
                {
                }
              }
            }

            re::DynamicArray<re::MeshScene>::deinit(v62);
            ++v14;
          }

          while (v14 != v60);
        }

        v54 = *(v8 + 272);
        *(v8 + 272) = 0;
        if (v54)
        {
          v55 = *(v8 + 288);
          v56 = v55 + 1200 * v54;
          do
          {
            re::DynamicArray<unsigned long>::deinit(v55 + 1136);
            re::DynamicArray<re::PrimitiveRenderingContext::PrimitiveMesh>::deinit(v55 + 1056);
            re::DynamicArray<unsigned long>::deinit(v55 + 1016);
            for (i = 976; i != 816; i -= 40)
            {
              re::DynamicArray<unsigned long>::deinit(v55 + i);
            }

            do
            {
              re::DynamicArray<unsigned long>::deinit(v55 + i);
              i -= 40;
            }

            while (i != 656);
            do
            {
              re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v55 + i);
              i -= 40;
            }

            while (i != 496);
            for (j = 240; j != -40; j -= 40)
            {
              re::DynamicArray<unsigned long>::deinit(v55 + j);
            }

            v55 += 1200;
          }

          while (v55 != v56);
        }

        ++*(v8 + 280);
      }
    }
  }
}

void *re::ecs2::allocInfo_PrimitiveRenderingSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_155, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_155))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19FA40, "PrimitiveRenderingSystem");
    __cxa_guard_release(&_MergedGlobals_155);
  }

  return &unk_1EE19FA40;
}

void re::ecs2::initInfo_PrimitiveRenderingSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xCCA9A79D1A5F6028;
  v6[1] = "PrimitiveRenderingSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x2A800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_PrimitiveRenderingSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PrimitiveRenderingSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PrimitiveRenderingSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::PrimitiveRenderingSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::PrimitiveRenderingSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PrimitiveRenderingSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PrimitiveRenderingSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

double re::internal::defaultConstruct<re::ecs2::PrimitiveRenderingSystem>(int a1, int a2, char *a3)
{
  bzero(a3, 0x2A8uLL);
  re::ecs2::System::System(a3, 1, 1);
  *(a3 + 36) = 0;
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 17) = 0u;
  *(a3 + 14) = 0u;
  *(a3 + 15) = 0u;
  *a3 = &unk_1F5CD58A0;
  *(a3 + 296) = 0u;
  *(a3 + 312) = 0u;
  *(a3 + 328) = 0u;
  *(a3 + 344) = 0u;
  *(a3 + 360) = 0u;
  *(a3 + 376) = 0u;
  *(a3 + 392) = 0u;
  *(a3 + 408) = 0u;
  *(a3 + 424) = 0u;
  *(a3 + 440) = 0u;
  *(a3 + 456) = 0u;
  *(a3 + 472) = 0u;
  *(a3 + 488) = 0u;
  *(a3 + 504) = 0u;
  *(a3 + 520) = 0u;
  *(a3 + 536) = 0u;
  *(a3 + 552) = 0u;
  *(a3 + 568) = 0u;
  *(a3 + 584) = 0u;
  *(a3 + 600) = 0u;
  *(a3 + 616) = 0u;
  *(a3 + 632) = 0u;
  *(a3 + 648) = 0u;
  *(a3 + 664) = 0u;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::PrimitiveRenderingSystem>(void *a1)
{
  bzero(a1, 0x2A8uLL);
  re::ecs2::System::System(a1, 1, 1);
  a1[36] = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 17) = 0u;
  *(a1 + 14) = 0u;
  *(a1 + 15) = 0u;
  *a1 = &unk_1F5CD58A0;
  *(a1 + 37) = 0u;
  *(a1 + 39) = 0u;
  *(a1 + 41) = 0u;
  *(a1 + 43) = 0u;
  *(a1 + 45) = 0u;
  *(a1 + 47) = 0u;
  *(a1 + 49) = 0u;
  *(a1 + 51) = 0u;
  *(a1 + 53) = 0u;
  *(a1 + 55) = 0u;
  *(a1 + 57) = 0u;
  *(a1 + 59) = 0u;
  *(a1 + 61) = 0u;
  *(a1 + 63) = 0u;
  *(a1 + 65) = 0u;
  *(a1 + 67) = 0u;
  *(a1 + 69) = 0u;
  *(a1 + 71) = 0u;
  *(a1 + 73) = 0u;
  *(a1 + 75) = 0u;
  *(a1 + 77) = 0u;
  *(a1 + 79) = 0u;
  *(a1 + 81) = 0u;
  *(a1 + 83) = 0u;
  return result;
}

void re::ecs2::PrimitiveRenderingSystem::~PrimitiveRenderingSystem(re::ecs2::PrimitiveRenderingSystem *this)
{
  re::ecs2::PrimitiveRenderingSystem::~PrimitiveRenderingSystem(this);

  JUMPOUT(0x1E6906520);
}

{
  *this = &unk_1F5CD58A0;
  re::AssetHandle::~AssetHandle((this + 656));
  re::AssetHandle::~AssetHandle((this + 632));
  re::AssetHandle::~AssetHandle((this + 608));
  re::AssetHandle::~AssetHandle((this + 584));
  re::AssetHandle::~AssetHandle((this + 560));
  re::AssetHandle::~AssetHandle((this + 536));
  re::AssetHandle::~AssetHandle((this + 512));
  re::AssetHandle::~AssetHandle((this + 488));
  re::AssetHandle::~AssetHandle((this + 464));
  re::AssetHandle::~AssetHandle((this + 440));
  re::AssetHandle::~AssetHandle((this + 416));
  re::AssetHandle::~AssetHandle((this + 392));
  re::AssetHandle::~AssetHandle((this + 368));
  re::AssetHandle::~AssetHandle((this + 344));
  re::AssetHandle::~AssetHandle((this + 320));
  re::AssetHandle::~AssetHandle((this + 296));

  re::ecs2::System::~System(this);
}

__n128 re::DynamicArray<re::MeshScene>::add(_anonymous_namespace_ *this, unsigned __int8 *__src)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::MeshScene>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 736 * v4;
  memcpy(v5, __src, 0x160uLL);
  *(v5 + 352) = 0u;
  *(v5 + 368) = 0u;
  *(v5 + 384) = 0u;
  *(v5 + 400) = 0u;
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap((v5 + 352), __src + 44);
  *(v5 + 416) = *(__src + 104);
  v6 = __src[424];
  *(v5 + 424) = v6;
  if (v6 == 1)
  {
    *(v5 + 432) = *(__src + 54);
  }

  v7 = *(__src + 456);
  *(v5 + 440) = *(__src + 440);
  *(v5 + 456) = v7;
  v8 = *(__src + 472);
  v9 = *(__src + 488);
  v10 = *(__src + 504);
  *(v5 + 517) = *(__src + 517);
  *(v5 + 488) = v9;
  *(v5 + 504) = v10;
  *(v5 + 472) = v8;
  v11 = __src[544];
  *(v5 + 544) = v11;
  if (v11 == 1)
  {
    v12 = *(__src + 36);
    *(v5 + 560) = *(__src + 35);
    *(v5 + 576) = v12;
  }

  *(v5 + 592) = *(__src + 74);
  v13 = __src[608];
  *(v5 + 608) = v13;
  if (v13 == 1)
  {
    v14 = *(__src + 39);
    v15 = *(__src + 40);
    v16 = *(__src + 42);
    *(v5 + 656) = *(__src + 41);
    *(v5 + 672) = v16;
    *(v5 + 624) = v14;
    *(v5 + 640) = v15;
  }

  result = *(__src + 43);
  v18 = *(__src + 44);
  *(v5 + 720) = *(__src + 360);
  *(v5 + 688) = result;
  *(v5 + 704) = v18;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::MeshScene>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 736 * v4;
  memcpy(v5, __src, 0x160uLL);
  re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::HashBrown(v5 + 352, (__src + 352));
  *(v5 + 416) = *(__src + 104);
  v6 = __src[424];
  *(v5 + 424) = v6;
  if (v6 == 1)
  {
    *(v5 + 432) = *(__src + 54);
  }

  v7 = *(__src + 456);
  *(v5 + 440) = *(__src + 440);
  *(v5 + 456) = v7;
  v8 = *(__src + 472);
  v9 = *(__src + 488);
  v10 = *(__src + 504);
  *(v5 + 517) = *(__src + 517);
  *(v5 + 488) = v9;
  *(v5 + 504) = v10;
  *(v5 + 472) = v8;
  v11 = __src[544];
  *(v5 + 544) = v11;
  if (v11 == 1)
  {
    v12 = *(__src + 36);
    *(v5 + 560) = *(__src + 35);
    *(v5 + 576) = v12;
  }

  *(v5 + 592) = *(__src + 74);
  v13 = __src[608];
  *(v5 + 608) = v13;
  if (v13 == 1)
  {
    v14 = *(__src + 39);
    v15 = *(__src + 40);
    v16 = *(__src + 42);
    *(v5 + 656) = *(__src + 41);
    *(v5 + 672) = v16;
    *(v5 + 624) = v14;
    *(v5 + 640) = v15;
  }

  result = *(__src + 43);
  v18 = *(__src + 44);
  *(v5 + 720) = *(__src + 360);
  *(v5 + 688) = result;
  *(v5 + 704) = v18;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void *re::DynamicArray<re::MeshScene>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::MeshScene>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::MeshScene>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::MeshScene>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::MeshScene>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x2E0uLL))
        {
          v2 = 736 * a2;
          result = (*(*result + 32))(result, 736 * a2, 16);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_22;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 736, a2);
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
LABEL_22:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + 736 * v9;
        v11 = v7;
        do
        {
          memcpy(v11, v8, 0x160uLL);
          v12 = v8 + 352;
          *(v11 + 22) = 0u;
          *(v11 + 23) = 0u;
          *(v11 + 24) = 0u;
          *(v11 + 25) = 0u;
          re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap(v11 + 44, (v8 + 352));
          *(v11 + 104) = *(v8 + 416);
          v13 = *(v8 + 424);
          *(v11 + 424) = v13;
          if (v13 == 1)
          {
            v11[54] = *(v8 + 432);
          }

          v14 = *(v8 + 440);
          *(v11 + 57) = *(v8 + 456);
          *(v11 + 55) = v14;
          v15 = *(v8 + 472);
          v16 = *(v8 + 488);
          v17 = *(v8 + 504);
          *(v11 + 517) = *(v8 + 517);
          *(v11 + 63) = v17;
          *(v11 + 61) = v16;
          *(v11 + 59) = v15;
          v18 = *(v8 + 544);
          *(v11 + 544) = v18;
          if (v18 == 1)
          {
            v19 = *(v8 + 576);
            *(v11 + 35) = *(v8 + 560);
            *(v11 + 36) = v19;
          }

          v11[74] = *(v8 + 592);
          v20 = *(v8 + 608);
          *(v11 + 608) = v20;
          if (v20 == 1)
          {
            v21 = *(v8 + 624);
            v22 = *(v8 + 640);
            v23 = *(v8 + 672);
            *(v11 + 41) = *(v8 + 656);
            *(v11 + 42) = v23;
            *(v11 + 39) = v21;
            *(v11 + 40) = v22;
          }

          v24 = *(v8 + 688);
          v25 = *(v8 + 704);
          *(v11 + 360) = *(v8 + 720);
          *(v11 + 43) = v24;
          *(v11 + 44) = v25;
          re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v8 + 352);
          v8 += 736;
          v11 += 92;
        }

        while (v12 + 384 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_22;
    }
  }

  return result;
}

uint64_t re::DynamicArray<re::MeshScene>::deinit(uint64_t a1)
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
        v5 = 736 * v4;
        v6 = v3 + 352;
        do
        {
          re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v6);
          v6 += 736;
          v5 -= 736;
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

uint64_t re::DynamicArray<re::PrimitiveRenderingContext::PrimitiveMesh>::deinit(uint64_t a1)
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
        v5 = 96 * v4;
        do
        {
          re::DynamicArray<re::PrimitiveMeshAttribute>::deinit(v3);
          v3 += 96;
          v5 -= 96;
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

uint64_t re::DynamicArray<re::PrimitiveMeshAttribute>::deinit(uint64_t a1)
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
        v5 = v4 << 6;
        do
        {
          v6 = *(v3 + 3);
          if (v6)
          {

            *(v3 + 3) = 0;
          }

          re::StringID::destroyString(v3);
          v3 = (v3 + 64);
          v5 -= 64;
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

void *re::ecs2::allocInfo_NetworkEntityState(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_156, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_156))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19FB20, "NetworkEntityState");
    __cxa_guard_release(&_MergedGlobals_156);
  }

  return &unk_1EE19FB20;
}

void re::ecs2::initInfo_NetworkEntityState(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v27[0] = 0xEC448F177CEECF00;
  v27[1] = "NetworkEntityState";
  if (v27[0])
  {
    if (v27[0])
    {
    }
  }

  *(this + 2) = v28;
  if ((atomic_load_explicit(&qword_1EE19FAD8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19FAD8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::StringID>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "name";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE19FAF8 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_uint64_t(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "entityId";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x1000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE19FB00 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_uint64_t(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "parentGuid";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x1800000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE19FB08 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::introspect_BOOL(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "active";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x2000000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE19FB10 = v21;
      v22 = re::introspectionAllocator(v21);
      v24 = re::ecs2::introspect_NetworkShareMode(1, v23);
      v25 = (*(*v22 + 32))(v22, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "shareMode";
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0x2100000006;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE19FB18 = v25;
      __cxa_guard_release(&qword_1EE19FAD8);
    }
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE19FAF8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::NetworkEntityState>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::NetworkEntityState>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::NetworkEntityState>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::NetworkEntityState>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v26 = v28;
}

void re::internal::defaultConstruct<re::ecs2::NetworkEntityState>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = &str_67;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 512;
}

uint64_t re::internal::defaultConstructV2<re::ecs2::NetworkEntityState>(uint64_t result)
{
  *result = 0;
  *(result + 8) = &str_67;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 512;
  return result;
}

uint64_t re::ecs2::NetworkEntityState::makeSyncInfo(re::ecs2::NetworkEntityState *this)
{
  v1 = RESyncSyncableTypeInfoCreate();
  RESyncSyncableTypeInfoSetTypeId();
  if ((atomic_load_explicit(&qword_1EE19FAF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19FAF0))
  {
    qword_1EE19FAE8 = re::internal::getOrCreateInfo("NetworkEntityState", re::ecs2::allocInfo_NetworkEntityState, re::ecs2::initInfo_NetworkEntityState, &unk_1EE19FAE0, 0);
    __cxa_guard_release(&qword_1EE19FAF0);
  }

  re::getPrettyTypeName(qword_1EE19FAE8, &v3);
  RESyncSyncableTypeInfoSetDebugName();
  if (v3 && (v4 & 1) != 0)
  {
    (*(*v3 + 40))();
  }

  RESyncSyncableTypeInfoSetSupportsOwnershipTransfer();
  RESyncSyncableTypeInfoSetSupportsViews();
  RESyncSyncableTypeInfoSetWriteSnapshotCb();
  RESyncSyncableTypeInfoSetReadSnapshotCb();
  RESyncSyncableTypeInfoSetWritePayloadCb();
  RESyncSyncableTypeInfoSetReadPayloadCb();
  RESyncSyncableTypeInfoSetWritePayloadDeltaCb();
  RESyncSyncableTypeInfoSetReadPayloadDeltaCb();
  return v1;
}

uint64_t ___ZN2re4ecs218NetworkEntityState12makeSyncInfoEv_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = 0;
  v15 = RESyncBitWriterOpenBuffer();
  v16 = 0;
  v17 = 0;
  v18 = a2;
  v19 = _ZZZN2re4ecs218NetworkEntityState12makeSyncInfoEvEUb_EN3__08__invokeEPvPhm;
  memset(v20, 0, sizeof(v20));
  re::DynamicString::setCapacity(v20, 0);
  v21 = 6;
  v22 = 0;
  v14 = &unk_1F5D16F10;
  re::snapshot::EncoderOPACK::beginObject(&v14);
  v5 = v16;
  if (v16 >= v17)
  {
    re::snapshot::EncoderOPACK::writeInteger(&v14, 1);
  }

  else
  {
    ++v16;
    *(v15 + v5) = 9;
  }

  re::snapshot::EncoderOPACK::writeInteger(&v14, *(a3 + 16));
  v6 = v16;
  if (v16 >= v17)
  {
    re::snapshot::EncoderOPACK::writeInteger(&v14, 2);
  }

  else
  {
    ++v16;
    *(v15 + v6) = 10;
  }

  re::snapshot::EncoderOPACK::writeInteger(&v14, *(a3 + 24));
  v7 = v16;
  if (v16 >= v17)
  {
    re::snapshot::EncoderOPACK::writeInteger(&v14, 3);
  }

  else
  {
    ++v16;
    *(v15 + v7) = 11;
  }

  re::snapshot::EncoderOPACK::operator<<(&v14, *(a3 + 32));
  v8 = *(a3 + 8);
  v9 = strlen(v8);
  if (v9)
  {
    v10 = v9;
    v11 = v16;
    if (v16 >= v17)
    {
      re::snapshot::EncoderOPACK::writeInteger(&v14, 5);
    }

    else
    {
      ++v16;
      *(v15 + v11) = 13;
    }

    re::snapshot::EncoderOPACK::beginData(&v14, v10, v10);
    re::snapshot::BufferEncoder::writeRaw<true>(&v14, v8, v10);
  }

  v12 = v16;
  if (v16 >= v17)
  {
    re::snapshot::EncoderOPACK::writeInteger(&v14, 6);
  }

  else
  {
    ++v16;
    *(v15 + v12) = 14;
  }

  re::snapshot::EncoderOPACK::writeInteger(&v14, *(a3 + 33));
  re::snapshot::EncoderOPACK::endObject(&v14);
  RESyncBitWriterCloseBuffer();
  v14 = &unk_1F5D16DD0;
  if (*&v20[0] && (BYTE8(v20[0]) & 1) != 0)
  {
    (*(**&v20[0] + 40))(*&v20[0]);
  }

  return 1;
}

uint64_t ___ZN2re4ecs218NetworkEntityState12makeSyncInfoEv_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = RESyncBitReaderDataPtr();
  v5 = RESyncBitReaderBytesLeft();
  v6 = v5;
  v7 = v5;
  v17[1] = v4;
  v17[2] = v7;
  v18 = -1;
  v19 = 0;
  v20 = 0;
  v22 = 0;
  v17[3] = v4;
  v17[4] = v4 + v6;
  v17[0] = &unk_1F5D17190;
  re::snapshot::DecoderOPACK::beginObject(v17, 0);
  re::snapshot::DecoderOPACK::field<1,unsigned long long>(v17, (a3 + 16));
  re::snapshot::DecoderOPACK::field<2,unsigned long long>(v17, (a3 + 24));
  re::snapshot::DecoderOPACK::field<3,BOOL>(v17, (a3 + 32));
  v15 = 0;
  v16 = 0;
  v8 = re::snapshot::DecoderOPACK::field<5,re::Slice<unsigned char>>(v17, &v15);
  v9 = v15;
  v10 = v16;
  v13 = 0;
  v14 = &str_67;
  v11 = re::StringID::operator=(a3, &v13);
  if (v13)
  {
    if (v13)
    {
    }
  }

  re::snapshot::DecoderOPACK::field<6,re::ecs2::NetworkShareMode>(v17, (a3 + 33));
  re::snapshot::DecoderOPACK::endObject(v17, 0);
  RESyncBitReaderSkipData();
  return RESyncBitReaderIsOverflow() ^ 1;
}

uint64_t re::snapshot::DecoderOPACK::field<1,unsigned long long>(re::snapshot::DecoderOPACK *a1, void *a2)
{
  result = re::snapshot::DecoderOPACK::beginField<1>(a1);
  if (result)
  {
    *a2 = re::snapshot::DecoderOPACK::readInteger(a1, 0);

    return re::snapshot::DecoderOPACK::endField(a1);
  }

  return result;
}

uint64_t re::snapshot::DecoderOPACK::field<2,unsigned long long>(re::snapshot::DecoderOPACK *a1, void *a2)
{
  result = re::snapshot::DecoderOPACK::beginField<2>(a1);
  if (result)
  {
    *a2 = re::snapshot::DecoderOPACK::readInteger(a1, 0);

    return re::snapshot::DecoderOPACK::endField(a1);
  }

  return result;
}

uint64_t re::snapshot::DecoderOPACK::field<3,BOOL>(uint64_t *a1, _BYTE *a2)
{
  result = re::snapshot::DecoderOPACK::beginField<3>(a1);
  if (result)
  {
    re::snapshot::DecoderOPACK::operator>>(a1, a2);

    return re::snapshot::DecoderOPACK::endField(a1);
  }

  return result;
}

uint64_t re::snapshot::DecoderOPACK::field<5,re::Slice<unsigned char>>(uint64_t a1, uint64_t *a2)
{
  result = re::snapshot::DecoderOPACK::beginField<5>(a1);
  if (result)
  {
    v8 = 0;
    if (re::snapshot::DecoderOPACK::beginData(a1, &v8, 0))
    {
      v7 = *(a1 + 8);
      v5 = v8;
      *a2 = re::Slice<unsigned char>::range(&v7, *(a1 + 24) - v7, *(a1 + 24) - v7 + v8);
      a2[1] = v6;
      re::snapshot::BufferDecoder::skipData(a1, v5);
    }

    return re::snapshot::DecoderOPACK::endField(a1);
  }

  return result;
}

uint64_t re::snapshot::DecoderOPACK::field<6,re::ecs2::NetworkShareMode>(re::snapshot::DecoderOPACK *a1, _BYTE *a2)
{
  result = re::snapshot::DecoderOPACK::beginField<6>(a1);
  if (result)
  {
    *a2 = re::snapshot::DecoderOPACK::readInteger(a1, 0);

    return re::snapshot::DecoderOPACK::endField(a1);
  }

  return result;
}

void ___ZN2re4ecs218NetworkEntityState12makeSyncInfoEv_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = RESyncBitReaderBytesLeft();
  v5 = RESyncBitReaderDataPtr();
  v6 = MEMORY[0x1E69049A0](a3, v5, v4);
  if ((v6 & 1) == 0)
  {
    v7 = *re::ecsNetworkLogObjects(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "WritePayloadCb: Error copying snapshot to packet", v8, 2u);
    }
  }
}

uint64_t ___ZN2re4ecs218NetworkEntityState12makeSyncInfoEv_block_invoke_15(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = RESyncBitReaderBytesLeft();
  v5 = RESyncBitReaderDataPtr();
  v6 = MEMORY[0x1E69049A0](a3, v5, v4);
  if ((v6 & 1) == 0)
  {
    v7 = *re::ecsNetworkLogObjects(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "ReadPayloadCb: Error copying payload to snapshot", v9, 2u);
    }
  }

  RESyncBitReaderSkipData();
  return RESyncBitReaderIsOverflow() ^ 1;
}

uint64_t ___ZN2re4ecs218NetworkEntityState12makeSyncInfoEv_block_invoke_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = RESyncBitReaderDataPtr();
  v6 = RESyncBitReaderBytesLeft();
  v7 = v6;
  v8 = v6;
  v48[1] = v5;
  v48[2] = v8;
  v49 = -1;
  v50 = 0;
  v51 = 0;
  v53 = 0;
  v48[3] = v5;
  v48[4] = v5 + v7;
  v48[0] = &unk_1F5D17190;
  v9 = RESyncBitReaderDataPtr();
  v10 = RESyncBitReaderBytesLeft();
  v11 = v10;
  v12 = v10;
  v42[1] = v9;
  v42[2] = v12;
  v43 = -1;
  v44 = 0;
  v45 = 0;
  v47 = 0;
  v42[3] = v9;
  v42[4] = v9 + v11;
  v41 = 0;
  v42[0] = &unk_1F5D17190;
  v33 = RESyncBitWriterOpenBuffer();
  v34 = 0;
  v35 = 0;
  v36 = a4;
  v37 = _ZZZN2re4ecs218NetworkEntityState12makeSyncInfoEvEUb0_EN3__18__invokeEPvPhm;
  memset(v38, 0, sizeof(v38));
  re::DynamicString::setCapacity(v38, 0);
  v39 = 6;
  v40 = 0;
  v32 = &unk_1F5D16F10;
  re::snapshot::DecoderOPACK::beginObject(v48, 0);
  re::snapshot::DecoderOPACK::beginObject(v42, 0);
  re::snapshot::EncoderOPACK::beginObject(&v32);
  v31 = 0;
  re::snapshot::DecoderOPACK::field<2,unsigned long long>(v42, &v31);
  v30 = 0;
  re::snapshot::DecoderOPACK::field<2,unsigned long long>(v48, &v30);
  v13 = v30;
  if (v30 != v31)
  {
    v14 = v34;
    if (v34 >= v35)
    {
      re::snapshot::EncoderOPACK::writeInteger(&v32, 2);
    }

    else
    {
      ++v34;
      *(v33 + v14) = 10;
    }

    re::snapshot::EncoderOPACK::writeInteger(&v32, v13);
  }

  v29 = 0;
  re::snapshot::DecoderOPACK::field<3,BOOL>(v42, &v29);
  v28 = 0;
  re::snapshot::DecoderOPACK::field<3,BOOL>(v48, &v28);
  v15 = v28;
  if (v29 != v28)
  {
    v16 = v34;
    if (v34 >= v35)
    {
      re::snapshot::EncoderOPACK::writeInteger(&v32, 3);
    }

    else
    {
      ++v34;
      *(v33 + v16) = 11;
    }

    re::snapshot::EncoderOPACK::operator<<(&v32, v15);
  }

  __s2 = 0;
  v27 = 0;
  re::snapshot::DecoderOPACK::field<5,re::Slice<unsigned char>>(v42, &__s2);
  __s1 = 0;
  __n = 0;
  re::snapshot::DecoderOPACK::field<5,re::Slice<unsigned char>>(v48, &__s1);
  v17 = __n;
  if (__n != v27 || __n && strncmp(__s1, __s2, __n))
  {
    v18 = v34;
    if (v34 >= v35)
    {
      re::snapshot::EncoderOPACK::writeInteger(&v32, 5);
    }

    else
    {
      ++v34;
      *(v33 + v18) = 13;
    }

    re::snapshot::EncoderOPACK::beginData(&v32, v17, v17);
    re::snapshot::BufferEncoder::writeRaw<true>(&v32, __s1, v17);
  }

  v23 = 0;
  re::snapshot::DecoderOPACK::field<6,re::ecs2::NetworkShareMode>(v42, &v23);
  v22 = 0;
  re::snapshot::DecoderOPACK::field<6,re::ecs2::NetworkShareMode>(v48, &v22);
  v19 = v22;
  if (v23 != v22)
  {
    v20 = v34;
    if (v34 >= v35)
    {
      re::snapshot::EncoderOPACK::writeInteger(&v32, 6);
    }

    else
    {
      ++v34;
      *(v33 + v20) = 14;
    }

    re::snapshot::EncoderOPACK::writeInteger(&v32, v19);
  }

  re::snapshot::DecoderOPACK::endObject(v48, 0);
  re::snapshot::DecoderOPACK::endObject(v42, 0);
  re::snapshot::EncoderOPACK::endObject(&v32);
  RESyncBitWriterCloseBuffer();
  v32 = &unk_1F5D16DD0;
  result = *&v38[0];
  if (*&v38[0])
  {
    if (BYTE8(v38[0]))
    {
      return (*(**&v38[0] + 40))();
    }
  }

  return result;
}

uint64_t ___ZN2re4ecs218NetworkEntityState12makeSyncInfoEv_block_invoke_2_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = RESyncBitReaderDataPtr();
  v6 = RESyncBitReaderBytesLeft();
  v7 = v6;
  v8 = v6;
  v41[1] = v5;
  v41[2] = v8;
  v42 = -1;
  v43 = 0;
  v44 = 0;
  v46 = 0;
  v41[3] = v5;
  v41[4] = v5 + v7;
  v41[0] = &unk_1F5D17190;
  v9 = RESyncBitReaderDataPtr();
  v10 = RESyncBitReaderBytesLeft();
  LODWORD(v5) = v10;
  v11 = v10;
  v35[1] = v9;
  v35[2] = v11;
  v36 = -1;
  v37 = 0;
  v38 = 0;
  v40 = 0;
  v35[3] = v9;
  v35[4] = v9 + v5;
  v34 = 0;
  v35[0] = &unk_1F5D17190;
  v26 = RESyncBitWriterOpenBuffer();
  v27 = 0;
  v28 = 0;
  v29 = a4;
  v30 = _ZZZN2re4ecs218NetworkEntityState12makeSyncInfoEvEUb1_EN3__28__invokeEPvPhm;
  memset(v31, 0, sizeof(v31));
  re::DynamicString::setCapacity(v31, 0);
  v32 = 6;
  v33 = 0;
  v25 = &unk_1F5D16F10;
  re::snapshot::EncoderOPACK::beginObject(&v25);
  re::snapshot::DecoderOPACK::beginObject(v41, 0);
  re::snapshot::DecoderOPACK::beginObject(v35, 0);
  v24 = 0;
  re::snapshot::DecoderOPACK::field<1,unsigned long long>(v41, &v24);
  v12 = v27;
  if (v27 >= v28)
  {
    re::snapshot::EncoderOPACK::writeInteger(&v25, 1);
  }

  else
  {
    ++v27;
    *(v26 + v12) = 9;
  }

  re::snapshot::EncoderOPACK::writeInteger(&v25, v24);
  v23 = 0;
  re::snapshot::DecoderOPACK::field<2,unsigned long long>(v41, &v23);
  re::snapshot::DecoderOPACK::field<2,unsigned long long>(v35, &v23);
  v13 = v27;
  if (v27 >= v28)
  {
    re::snapshot::EncoderOPACK::writeInteger(&v25, 2);
  }

  else
  {
    ++v27;
    *(v26 + v13) = 10;
  }

  re::snapshot::EncoderOPACK::writeInteger(&v25, v23);
  v22 = 0;
  re::snapshot::DecoderOPACK::field<3,BOOL>(v41, &v22);
  re::snapshot::DecoderOPACK::field<3,BOOL>(v35, &v22);
  v14 = v27;
  if (v27 >= v28)
  {
    re::snapshot::EncoderOPACK::writeInteger(&v25, 3);
  }

  else
  {
    ++v27;
    *(v26 + v14) = 11;
  }

  re::snapshot::EncoderOPACK::operator<<(&v25, v22);
  *&__src[1] = 0;
  v21 = 0;
  re::snapshot::DecoderOPACK::field<5,re::Slice<unsigned char>>(v41, &__src[1]);
  re::snapshot::DecoderOPACK::field<5,re::Slice<unsigned char>>(v35, &__src[1]);
  v15 = v21;
  if (v21)
  {
    v16 = v27;
    if (v27 >= v28)
    {
      re::snapshot::EncoderOPACK::writeInteger(&v25, 5);
    }

    else
    {
      ++v27;
      *(v26 + v16) = 13;
    }

    re::snapshot::EncoderOPACK::beginData(&v25, v15, v15);
    re::snapshot::BufferEncoder::writeRaw<true>(&v25, *&__src[1], v15);
  }

  __src[0] = 0;
  re::snapshot::DecoderOPACK::field<6,re::ecs2::NetworkShareMode>(v41, __src);
  re::snapshot::DecoderOPACK::field<6,re::ecs2::NetworkShareMode>(v35, __src);
  v17 = v27;
  if (v27 >= v28)
  {
    re::snapshot::EncoderOPACK::writeInteger(&v25, 6);
  }

  else
  {
    ++v27;
    *(v26 + v17) = 14;
  }

  re::snapshot::EncoderOPACK::writeInteger(&v25, __src[0]);
  re::snapshot::EncoderOPACK::endObject(&v25);
  re::snapshot::DecoderOPACK::endObject(v41, 0);
  re::snapshot::DecoderOPACK::endObject(v35, 0);
  RESyncBitWriterCloseBuffer();
  RESyncBitReaderSkipData();
  IsOverflow = RESyncBitReaderIsOverflow();
  v25 = &unk_1F5D16DD0;
  if (*&v31[0] && (BYTE8(v31[0]) & 1) != 0)
  {
    (*(**&v31[0] + 40))();
  }

  return IsOverflow ^ 1u;
}

unsigned int *re::snapshot::BufferEncoder::writeRaw<true>(unsigned int *this, void *__src, size_t __len)
{
  v5 = this;
  v6 = this[4];
  if (v6 + __len <= this[5])
  {
    if (!__len)
    {
LABEL_4:
      v5[4] = v6 + __len;
      return this;
    }

LABEL_3:
    this = memmove((*(v5 + 1) + v6), __src, __len);
    LODWORD(v6) = v5[4];
    goto LABEL_4;
  }

  this = re::snapshot::BufferEncoder::grow(this, v6 + __len);
  if (this)
  {
    LODWORD(v6) = v5[4];
    if (!__len)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  return this;
}

BOOL re::snapshot::DecoderOPACK::beginField<2>(uint64_t a1)
{
  Integer = *(a1 + 40);
  if (Integer <= 1)
  {
    while (1)
    {
      v3 = *(a1 + 24);
      if (v3 >= *(a1 + 32))
      {
        v4 = 0;
      }

      else
      {
        *(a1 + 24) = v3 + 1;
        v4 = *v3;
      }

      re::snapshot::DecoderOPACK::skip(a1, v4);
      v5 = *(a1 + 24);
      if (v5 >= *(a1 + 32))
      {
        break;
      }

      v6 = *v5;
      if (v6 == 3)
      {
        break;
      }

      if ((v6 - 7) > 0x28)
      {
        Integer = re::snapshot::DecoderOPACK::readInteger(a1, 0x7FFFFFFFLL);
      }

      else
      {
        *(a1 + 24) = v5 + 1;
        Integer = v6 - 8;
      }

      *(a1 + 40) = Integer;
      if (Integer >= 2)
      {
        return Integer == 2;
      }
    }

    Integer = 0x7FFFFFFF;
    *(a1 + 40) = 0x7FFFFFFF;
  }

  return Integer == 2;
}

BOOL re::snapshot::DecoderOPACK::beginField<3>(uint64_t a1)
{
  Integer = *(a1 + 40);
  if (Integer <= 2)
  {
    while (1)
    {
      v3 = *(a1 + 24);
      if (v3 >= *(a1 + 32))
      {
        v4 = 0;
      }

      else
      {
        *(a1 + 24) = v3 + 1;
        v4 = *v3;
      }

      re::snapshot::DecoderOPACK::skip(a1, v4);
      v5 = *(a1 + 24);
      if (v5 >= *(a1 + 32))
      {
        break;
      }

      v6 = *v5;
      if (v6 == 3)
      {
        break;
      }

      if ((v6 - 7) > 0x28)
      {
        Integer = re::snapshot::DecoderOPACK::readInteger(a1, 0x7FFFFFFFLL);
      }

      else
      {
        *(a1 + 24) = v5 + 1;
        Integer = v6 - 8;
      }

      *(a1 + 40) = Integer;
      if (Integer >= 3)
      {
        return Integer == 3;
      }
    }

    Integer = 0x7FFFFFFF;
    *(a1 + 40) = 0x7FFFFFFF;
  }

  return Integer == 3;
}

BOOL re::snapshot::DecoderOPACK::beginField<5>(uint64_t a1)
{
  Integer = *(a1 + 40);
  if (Integer <= 4)
  {
    while (1)
    {
      v3 = *(a1 + 24);
      if (v3 >= *(a1 + 32))
      {
        v4 = 0;
      }

      else
      {
        *(a1 + 24) = v3 + 1;
        v4 = *v3;
      }

      re::snapshot::DecoderOPACK::skip(a1, v4);
      v5 = *(a1 + 24);
      if (v5 >= *(a1 + 32))
      {
        break;
      }

      v6 = *v5;
      if (v6 == 3)
      {
        break;
      }

      if ((v6 - 7) > 0x28)
      {
        Integer = re::snapshot::DecoderOPACK::readInteger(a1, 0x7FFFFFFFLL);
      }

      else
      {
        *(a1 + 24) = v5 + 1;
        Integer = v6 - 8;
      }

      *(a1 + 40) = Integer;
      if (Integer >= 5)
      {
        return Integer == 5;
      }
    }

    Integer = 0x7FFFFFFF;
    *(a1 + 40) = 0x7FFFFFFF;
  }

  return Integer == 5;
}

BOOL re::snapshot::DecoderOPACK::beginField<6>(uint64_t a1)
{
  Integer = *(a1 + 40);
  if (Integer <= 5)
  {
    while (1)
    {
      v3 = *(a1 + 24);
      if (v3 >= *(a1 + 32))
      {
        v4 = 0;
      }

      else
      {
        *(a1 + 24) = v3 + 1;
        v4 = *v3;
      }

      re::snapshot::DecoderOPACK::skip(a1, v4);
      v5 = *(a1 + 24);
      if (v5 >= *(a1 + 32))
      {
        break;
      }

      v6 = *v5;
      if (v6 == 3)
      {
        break;
      }

      if ((v6 - 7) > 0x28)
      {
        Integer = re::snapshot::DecoderOPACK::readInteger(a1, 0x7FFFFFFFLL);
      }

      else
      {
        *(a1 + 24) = v5 + 1;
        Integer = v6 - 8;
      }

      *(a1 + 40) = Integer;
      if (Integer >= 6)
      {
        return Integer == 6;
      }
    }

    Integer = 0x7FFFFFFF;
    *(a1 + 40) = 0x7FFFFFFF;
  }

  return Integer == 6;
}

uint64_t re::internal::CharacterControllerHitCallback::controllerHit(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 16);
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = (v4 + 8);
  v6 = v4;
  do
  {
    v7 = v6;
    v6 = *(v6 + 32);
  }

  while (v6);
  if (*(v7 + 24))
  {
    v8 = v4;
    do
    {
      v9 = v8;
      v8 = *(v8 + 32);
    }

    while (v8);
    v10 = *(*(v9 + 24) + 288);
  }

  else
  {
LABEL_8:
    v10 = 0;
  }

  v11 = *(a2 + 8);
  v15[0] = *a1;
  v15[1] = v11;
  v12 = *(a2 + 32);
  v16 = *(a2 + 16);
  v17 = v12;
  v18 = *(a2 + 48);
  v19 = *(a2 + 64);
  Type = re::EventBus::getTypeId<RECharacterControllerDidHitEvent>();
  re::EventBus::publish(v10, v4, Type, v15, 0x50uLL, 0);
  if (v4)
  {
  }

  return 0;
}

void *re::ecs2::allocInfo_CharacterControllerComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE19FBB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19FBB8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19FBE8, "CharacterControllerComponent");
    __cxa_guard_release(&qword_1EE19FBB8);
  }

  return &unk_1EE19FBE8;
}

void re::ecs2::initInfo_CharacterControllerComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v13[0] = 0xD5FAC35167B7DF0;
  v13[1] = "CharacterControllerComponent";
  if (v13[0])
  {
    if (v13[0])
    {
    }
  }

  *(this + 2) = v14;
  if ((atomic_load_explicit(&_MergedGlobals_157, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&_MergedGlobals_157);
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
      qword_1EE19FBD8 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = re::introspect_CharacterControllerDescription(1);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "m_controllerDesc";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x2800000001;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE19FBE0 = v11;
      __cxa_guard_release(&_MergedGlobals_157);
    }
  }

  *(this + 2) = 0x6000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE19FBD8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::CharacterControllerComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::CharacterControllerComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::CharacterControllerComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::CharacterControllerComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs228CharacterControllerComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v12 = v14;
}

void *re::ecs2::allocInfo_CharacterControllerStateComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE19FBD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19FBD0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19FC78, "CharacterControllerStateComponent");
    __cxa_guard_release(&qword_1EE19FBD0);
  }

  return &unk_1EE19FC78;
}

void re::ecs2::initInfo_CharacterControllerStateComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v10[0] = 0x12A2C497EF14DCA2;
  v10[1] = "CharacterControllerStateComponent";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE19FBC8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19FBC8);
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
      qword_1EE19FBC0 = v8;
      __cxa_guard_release(&qword_1EE19FBC8);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE19FBC0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::CharacterControllerStateComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::CharacterControllerStateComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::CharacterControllerStateComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::CharacterControllerStateComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs233CharacterControllerStateComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v9 = v11;
}

void re::internal::defaultConstruct<re::ecs2::CharacterControllerStateComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CD5C48;
}

void re::internal::defaultConstructV2<re::ecs2::CharacterControllerStateComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CD5C48;
}

uint64_t *re::ecs2::CharacterControllerComponent::removeFromSimulation(uint64_t *this)
{
  if (this[10])
  {
    v1 = this;
    WeakRetained = objc_loadWeakRetained(this + 4);
    if (WeakRetained)
    {
      v3 = WeakRetained;
      v4 = WeakRetained[6];
      v5 = *(v1[10] + 136);
      re::ContactSetCollection::remove((*(v4 + 128) + 72), v5);
      (*(**(v4 + 128) + 200))(*(v4 + 128), v5);
      *(v5 + 7) = 0;
      objc_destroyWeak(v1 + 4);
      v1[4] = 0;
    }

    this = re::globalAllocators(WeakRetained);
    v6 = v1[10];
    if (v6)
    {
      v7 = this[2];
      (**v6)(v1[10]);
      this = (*(*v7 + 40))(v7, v6);
    }

    v1[10] = 0;
  }

  return this;
}

double re::ecs2::CharacterControllerComponent::updateController(re::ecs2::CharacterControllerComponent *this, re::ecs2::PhysicsSimulationData *a2)
{
  v169 = *MEMORY[0x1E69E9840];
  re::ecs2::PhysicsSimulationData::ensurePhysicsSimulation(a2);
  re::TransformService::parentWorldMatrix(*(a2 + 1), *(this + 2), 0, v168);
  re::ecs2::PhysicsSimulationData::transformInPhysicsSimulationSpace(a2, v168, &v160);
  v4 = *(this + 10);
  if (v4)
  {
    v170 = __invert_f4(*(v4 + 272));
    v146 = v170.columns[0];
    v147 = v170.columns[1];
    v148 = v170.columns[2];
    v152 = v170.columns[3];
    (*(**(this + 10) + 40))(v168);
    v153 = vaddq_f32(v152, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v146, *v168), v147, *v168, 1), v148, *v168, 2));
    v149 = vdupq_laneq_s32(v153, 3);
    v5 = vmulq_f32(v146, v146);
    *&v6 = v5.f32[2] + vaddv_f32(*v5.f32);
    *v5.f32 = vrsqrte_f32(v6);
    *v5.f32 = vmul_f32(*v5.f32, vrsqrts_f32(v6, vmul_f32(*v5.f32, *v5.f32)));
    v171.columns[0] = vmulq_n_f32(v146, vmul_f32(*v5.f32, vrsqrts_f32(v6, vmul_f32(*v5.f32, *v5.f32))).f32[0]);
    v7 = vmulq_f32(v147, v171.columns[0]);
    v8 = vmulq_f32(v171.columns[0], v171.columns[0]);
    v9 = vmulq_f32(v148, v171.columns[0]);
    *v8.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v9, v9, 8uLL), *&vextq_s8(v8, v8, 8uLL)), vadd_f32(vzip1_s32(*v9.i8, *v8.i8), vzip2_s32(*v9.i8, *v8.i8)));
    v10 = vsubq_f32(v147, vmulq_n_f32(v171.columns[0], (v7.f32[2] + vaddv_f32(*v7.f32)) / *&v8.i32[1]));
    v11 = vmulq_f32(v10, v10);
    *&v12 = v11.f32[2] + vaddv_f32(*v11.f32);
    *v11.f32 = vrsqrte_f32(v12);
    *v11.f32 = vmul_f32(*v11.f32, vrsqrts_f32(v12, vmul_f32(*v11.f32, *v11.f32)));
    v171.columns[1] = vmulq_n_f32(v10, vmul_f32(*v11.f32, vrsqrts_f32(v12, vmul_f32(*v11.f32, *v11.f32))).f32[0]);
    v13 = vmulq_f32(v148, v171.columns[1]);
    v14 = vmulq_f32(v171.columns[1], v171.columns[1]);
    *v13.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v13, v13, 8uLL), *&vextq_s8(v14, v14, 8uLL)), vadd_f32(vzip1_s32(*v13.i8, *v14.i8), vzip2_s32(*v13.i8, *v14.i8)));
    v171.columns[3] = vsubq_f32(vsubq_f32(v148, vmulq_n_f32(v171.columns[0], *v8.i32 / *&v8.i32[1])), vmulq_n_f32(v171.columns[1], vdiv_f32(*v13.i8, vdup_lane_s32(*v13.i8, 1)).f32[0]));
    v15 = vmulq_f32(v171.columns[3], v171.columns[3]);
    *&v16 = v15.f32[2] + vaddv_f32(*v15.f32);
    *v15.f32 = vrsqrte_f32(v16);
    *v15.f32 = vmul_f32(*v15.f32, vrsqrts_f32(v16, vmul_f32(*v15.f32, *v15.f32)));
    v171.columns[2] = vmulq_n_f32(v171.columns[3], vmul_f32(*v15.f32, vrsqrts_f32(v16, vmul_f32(*v15.f32, *v15.f32))).f32[0]);
    *_Q0.i64 = simd_quaternion(v171);
    v76 = vdivq_f32(v153, v149);
    v77 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*&v168[16], *&v168[16]), *&v168[16], 0xCuLL), vnegq_f32(_Q0)), *&v168[16], vextq_s8(vuzp1q_s32(_Q0, _Q0), _Q0, 0xCuLL));
    _S2 = *&v168[28];
    v83 = vmlaq_laneq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v77, v77), v77, 0xCuLL), *&v168[16], _Q0, 3), _Q0, *&v168[16], 3);
    __asm { FMLA            S1, S2, V0.S[3] }

    v83.i32[3] = _S1;
    v84 = *(this + 2);
    v85 = *(v84 + 256);
    if (!v85)
    {
      v150 = v83;
      v156 = v76;
      v86 = re::ecs2::EntityComponentCollection::add((v84 + 48), re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      v83 = v150;
      v76 = v156;
      v85 = v86;
    }

    *(v85 + 48) = v83;
    *(v85 + 64) = v76;
    re::ecs2::Component::markDirty(v85);
    v87 = *(*(this + 2) + 216);
    if (v87)
    {
      re::ecs2::NetworkComponent::markDirty(v87, v85);
    }

LABEL_30:
    v88 = *(this + 10);
    v89 = *(v88 + 272);
    v90 = *(v88 + 276);
    v91 = *(v88 + 280);
    v92 = *(v88 + 284);
    v93 = *(v88 + 288);
    v94 = *(v88 + 292);
    v95 = *(v88 + 296);
    v96 = *(v88 + 300);
    v97 = *(v88 + 304);
    v98 = *(v88 + 308);
    v99 = *(v88 + 312);
    v100 = *(v88 + 316);
    v101 = *(v88 + 320);
    v102 = *(v88 + 324);
    v103 = *(v88 + 328);
    LODWORD(result) = *(v88 + 332);
    if (v89 != *&v160 && vabds_f32(v89, *&v160) >= (((fabsf(v89) + fabsf(*&v160)) + 1.0) * 0.00001) || v90 != *(&v160 + 1) && vabds_f32(v90, *(&v160 + 1)) >= (((fabsf(v90) + fabsf(*(&v160 + 1))) + 1.0) * 0.00001) || v91 != *(&v160 + 2) && vabds_f32(v91, *(&v160 + 2)) >= (((fabsf(v91) + fabsf(*(&v160 + 2))) + 1.0) * 0.00001) || v92 != *(&v160 + 3) && vabds_f32(v92, *(&v160 + 3)) >= (((fabsf(v92) + fabsf(*(&v160 + 3))) + 1.0) * 0.00001) || v93 != *&v161 && vabds_f32(v93, *&v161) >= (((fabsf(v93) + fabsf(*&v161)) + 1.0) * 0.00001) || v94 != *(&v161 + 1) && vabds_f32(v94, *(&v161 + 1)) >= (((fabsf(v94) + fabsf(*(&v161 + 1))) + 1.0) * 0.00001) || v95 != *(&v161 + 2) && vabds_f32(v95, *(&v161 + 2)) >= (((fabsf(v95) + fabsf(*(&v161 + 2))) + 1.0) * 0.00001) || v96 != *(&v161 + 3) && vabds_f32(v96, *(&v161 + 3)) >= (((fabsf(v96) + fabsf(*(&v161 + 3))) + 1.0) * 0.00001) || v97 != *&v162 && vabds_f32(v97, *&v162) >= (((fabsf(v97) + fabsf(*&v162)) + 1.0) * 0.00001) || v98 != *(&v162 + 1) && vabds_f32(v98, *(&v162 + 1)) >= (((fabsf(v98) + fabsf(*(&v162 + 1))) + 1.0) * 0.00001) || v99 != *(&v162 + 2) && vabds_f32(v99, *(&v162 + 2)) >= (((fabsf(v99) + fabsf(*(&v162 + 2))) + 1.0) * 0.00001) || v100 != *(&v162 + 3) && vabds_f32(v100, *(&v162 + 3)) >= (((fabsf(v100) + fabsf(*(&v162 + 3))) + 1.0) * 0.00001) || v101 != *&v163 && vabds_f32(v101, *&v163) >= (((fabsf(v101) + fabsf(*&v163)) + 1.0) * 0.00001) || v102 != *(&v163 + 1) && vabds_f32(v102, *(&v163 + 1)) >= (((fabsf(v102) + fabsf(*(&v163 + 1))) + 1.0) * 0.00001) || v103 != *(&v163 + 2) && vabds_f32(v103, *(&v163 + 2)) >= (((fabsf(v103) + fabsf(*(&v163 + 2))) + 1.0) * 0.00001) || *&result != *(&v163 + 3) && (v104 = ((fabsf(*&result) + fabsf(*(&v163 + 3))) + 1.0) * 0.00001, *&result = vabds_f32(*&result, *(&v163 + 3)), *&result >= v104))
    {
      re::TransformService::worldMatrix(*(a2 + 1), *(this + 2), 0, v168);
      re::ecs2::PhysicsSimulationData::transformInPhysicsSimulationSpace(a2, v168, &v164);
      v105 = v165;
      v106 = v166;
      v157 = v167;
      v107 = vmulq_f32(v164, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v106, v106, 0xCuLL), v166, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v105, v105), v165, 0xCuLL))), vextq_s8(vuzp1q_s32(v106, v106), v166, 0xCuLL), vextq_s8(vextq_s8(v105, v105, 0xCuLL), v165, 8uLL)));
      v108 = vaddv_f32(*v107.f32);
      v109 = -1.0;
      v110 = vmulq_f32(v164, v164);
      v111 = vmulq_f32(v105, v105);
      v112 = vadd_f32(vzip1_s32(*v110.i8, *v111.i8), vzip2_s32(*v110.i8, *v111.i8));
      v114 = vextq_s8(v110, v110, 8uLL);
      *v114.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v114.f32, *&vextq_s8(v111, v111, 8uLL)), v112));
      v113 = vmulq_f32(v106, v106);
      v114.i32[2] = sqrtf(v113.f32[2] + vaddv_f32(*v113.f32));
      if ((v107.f32[2] + v108) > 0.0)
      {
        v109 = 1.0;
      }

      v115 = vmulq_n_f32(v114, v109);
      v151 = vdupq_lane_s32(*&v115, 0);
      v116 = vdivq_f32(v164, v151);
      v117 = vdivq_f32(v165, vdupq_lane_s32((v115 >> 32), 0));
      v118 = vdivq_f32(v166, vdupq_laneq_s32(v115, 2));
      v119 = vmulq_f32(v116, v116);
      v120 = vaddv_f32(*v119.f32);
      *v119.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v119.f32[2] + v120));
      *v119.f32 = vmul_f32(*v119.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v119.f32[2] + v120), vmul_f32(*v119.f32, *v119.f32)));
      v173.columns[0] = vmulq_n_f32(v116, vmul_f32(*v119.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v119.f32[2] + v120), vmul_f32(*v119.f32, *v119.f32))).f32[0]);
      v121 = vmulq_f32(v173.columns[0], v117);
      v122 = vmulq_f32(v173.columns[0], v173.columns[0]);
      v123 = vmulq_f32(v173.columns[0], v118);
      *v122.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v123, v123, 8uLL), *&vextq_s8(v122, v122, 8uLL)), vadd_f32(vzip1_s32(*v123.i8, *v122.i8), vzip2_s32(*v123.i8, *v122.i8)));
      v124 = vsubq_f32(v117, vmulq_n_f32(v173.columns[0], (v121.f32[2] + vaddv_f32(*v121.f32)) / *&v122.i32[1]));
      v125 = vmulq_f32(v124, v124);
      *&v126 = v125.f32[2] + vaddv_f32(*v125.f32);
      *v125.f32 = vrsqrte_f32(v126);
      *v125.f32 = vmul_f32(*v125.f32, vrsqrts_f32(v126, vmul_f32(*v125.f32, *v125.f32)));
      v173.columns[1] = vmulq_n_f32(v124, vmul_f32(*v125.f32, vrsqrts_f32(v126, vmul_f32(*v125.f32, *v125.f32))).f32[0]);
      v127 = vmulq_f32(v118, v173.columns[1]);
      v128 = vmulq_f32(v173.columns[1], v173.columns[1]);
      *v127.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v127, v127, 8uLL), *&vextq_s8(v128, v128, 8uLL)), vadd_f32(vzip1_s32(*v127.i8, *v128.i8), vzip2_s32(*v127.i8, *v128.i8)));
      v173.columns[3] = vsubq_f32(vsubq_f32(v118, vmulq_n_f32(v173.columns[0], *v122.i32 / *&v122.i32[1])), vmulq_n_f32(v173.columns[1], vdiv_f32(*v127.i8, vdup_lane_s32(*v127.i8, 1)).f32[0]));
      v129 = vmulq_f32(v173.columns[3], v173.columns[3]);
      *&v130 = v129.f32[2] + vaddv_f32(*v129.f32);
      *v129.f32 = vrsqrte_f32(v130);
      *v129.f32 = vmul_f32(*v129.f32, vrsqrts_f32(v130, vmul_f32(*v129.f32, *v129.f32)));
      v173.columns[2] = vmulq_n_f32(v173.columns[3], vmul_f32(*v129.f32, vrsqrts_f32(v130, vmul_f32(*v129.f32, *v129.f32))).f32[0]);
      *v131.i64 = simd_quaternion(v173);
      v132 = v131.i64[1];
      v133 = vextq_s8(v131, v131, 8uLL).u64[0];
      v134 = vmvn_s8(vceq_f32(v133, v133));
      v135 = (v134.i8[0] | v134.i8[4]);
      v136 = (v135 & 1) == 0;
      if (v135)
      {
        v137 = 0;
      }

      else
      {
        v137 = v131.i64[0];
      }

      if (!v136)
      {
        v132 = 0x3F80000000000000;
      }

      *v168 = v157;
      *&v168[16] = v137;
      *&v168[24] = v132;
      v138 = *(this + 10);
      v139 = *&v168[16];
      v138[1] = v157;
      v138[2] = v139;
      (*(*v138 + 64))(v138, v168);
      v140 = *(*(this + 10) + 136);
      v164 = v151;
      re::CollisionObject::setScale(v140, &v164);
      v141 = *(this + 10);
      v142 = v161;
      v141[17] = v160;
      v141[18] = v142;
      result = *&v162;
      v143 = v163;
      v141[19] = v162;
      v141[20] = v143;
    }

    return result;
  }

  v18 = *(a2 + 2);
  re::TransformService::worldMatrix(*(a2 + 1), *(this + 2), 0, v168);
  re::ecs2::PhysicsSimulationData::transformInPhysicsSimulationSpace(a2, v168, &v164);
  v19 = v165;
  v20 = v166;
  v154 = v167;
  v21 = vmulq_f32(v164, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v20, v20, 0xCuLL), v166, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v19, v19), v165, 0xCuLL))), vextq_s8(vuzp1q_s32(v20, v20), v166, 0xCuLL), vextq_s8(vextq_s8(v19, v19, 0xCuLL), v165, 8uLL)));
  v22 = vaddv_f32(*v21.f32);
  v23 = -1.0;
  v24 = vmulq_f32(v164, v164);
  v25 = vmulq_f32(v19, v19);
  v26 = vadd_f32(vzip1_s32(*v24.i8, *v25.i8), vzip2_s32(*v24.i8, *v25.i8));
  v28 = vextq_s8(v24, v24, 8uLL);
  *v28.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v28.f32, *&vextq_s8(v25, v25, 8uLL)), v26));
  v27 = vmulq_f32(v20, v20);
  v28.i32[2] = sqrtf(v27.f32[2] + vaddv_f32(*v27.f32));
  if ((v21.f32[2] + v22) > 0.0)
  {
    v23 = 1.0;
  }

  v29 = vmulq_n_f32(v28, v23);
  v30 = *&v29;
  v31 = vdivq_f32(v164, vdupq_lane_s32(*&v29, 0));
  v32 = vdivq_f32(v165, vdupq_lane_s32((v29 >> 32), 0));
  v33 = vdivq_f32(v166, vdupq_laneq_s32(v29, 2));
  v34 = vmulq_f32(v31, v31);
  *&v29 = v34.f32[2] + vaddv_f32(*v34.f32);
  v35 = vrsqrte_f32(v29);
  v36 = vmul_f32(v35, vrsqrts_f32(v29, vmul_f32(v35, v35)));
  v172.columns[0] = vmulq_n_f32(v31, vmul_f32(v36, vrsqrts_f32(v29, vmul_f32(v36, v36))).f32[0]);
  v37 = vmulq_f32(v172.columns[0], v32);
  v38 = vmulq_f32(v172.columns[0], v172.columns[0]);
  v39 = vmulq_f32(v172.columns[0], v33);
  *v38.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v39, v39, 8uLL), *&vextq_s8(v38, v38, 8uLL)), vadd_f32(vzip1_s32(*v39.i8, *v38.i8), vzip2_s32(*v39.i8, *v38.i8)));
  v40 = vsubq_f32(v32, vmulq_n_f32(v172.columns[0], (v37.f32[2] + vaddv_f32(*v37.f32)) / *&v38.i32[1]));
  v41 = vmulq_f32(v40, v40);
  *&v42 = v41.f32[2] + vaddv_f32(*v41.f32);
  *v41.f32 = vrsqrte_f32(v42);
  *v41.f32 = vmul_f32(*v41.f32, vrsqrts_f32(v42, vmul_f32(*v41.f32, *v41.f32)));
  v172.columns[1] = vmulq_n_f32(v40, vmul_f32(*v41.f32, vrsqrts_f32(v42, vmul_f32(*v41.f32, *v41.f32))).f32[0]);
  v43 = vmulq_n_f32(v172.columns[0], *v38.i32 / *&v38.i32[1]);
  v44 = vmulq_f32(v33, v172.columns[1]);
  v45 = vmulq_f32(v172.columns[1], v172.columns[1]);
  *v44.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v44, v44, 8uLL), *&vextq_s8(v45, v45, 8uLL)), vadd_f32(vzip1_s32(*v44.i8, *v45.i8), vzip2_s32(*v44.i8, *v45.i8)));
  v172.columns[3] = vsubq_f32(vsubq_f32(v33, v43), vmulq_n_f32(v172.columns[1], vdiv_f32(*v44.i8, vdup_lane_s32(*v44.i8, 1)).f32[0]));
  v46 = vmulq_f32(v172.columns[3], v172.columns[3]);
  v34.f32[0] = v46.f32[2] + vaddv_f32(*v46.f32);
  *v46.f32 = vrsqrte_f32(v34.u32[0]);
  *v46.f32 = vmul_f32(*v46.f32, vrsqrts_f32(v34.u32[0], vmul_f32(*v46.f32, *v46.f32)));
  v172.columns[2] = vmulq_n_f32(v172.columns[3], vmul_f32(*v46.f32, vrsqrts_f32(v34.u32[0], vmul_f32(*v46.f32, *v46.f32))).f32[0]);
  *v48.i64 = simd_quaternion(v172);
  v50 = v48.i64[1];
  v51 = vextq_s8(v48, v48, 8uLL).u64[0];
  v52 = vmvn_s8(vceq_f32(v51, v51));
  v53 = (v52.i8[0] | v52.i8[4]);
  _ZF = (v53 & 1) == 0;
  if (v53)
  {
    v55 = 0;
  }

  else
  {
    v55 = v48.i64[0];
  }

  if (!_ZF)
  {
    v50 = 0x3F80000000000000;
  }

  result = *&v154;
  v158.i64[0] = v55;
  v158.i64[1] = v50;
  v159 = v154;
  if ((LODWORD(v30) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    v49.n128_f32[0] = v30;
    LODWORD(result) = 925353388;
    if (fabsf(*(this + 16) * v30) >= 0.00001 && fabsf(*(this + 15) * v30) >= 0.00001)
    {
      v155 = v49;
      {
        inited = re::initCollision(inited);
      }

      v58 = re::globalAllocators(inited)[2];
      v59 = vextq_s8(vuzp1q_s32(v158, v158), v158, 0xCuLL);
      v60 = vmlaq_f32(vmulq_f32(v158, xmmword_1E30661E0), xmmword_1E3047680, v59);
      v61 = vaddq_f32(v60, v60);
      v62 = vextq_s8(vuzp1q_s32(v61, v61), v61, 0xCuLL);
      v63 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v62, v62), v62, 0xCuLL), vnegq_f32(v158)), v62, v59);
      *v168 = vaddq_f32(vaddq_f32(vmulq_laneq_f32(v62, v158, 3), xmmword_1E3047680), vextq_s8(vuzp1q_s32(v63, v63), v63, 0xCuLL));
      v64 = (*(*v57 + 176))(v57, v58, this + 40, &v159, v168, *(v18 + 56), v155);
      v65 = *(v64 + 136);
      *(v65 + 40) = *(this + 2);
      *v168 = vdupq_lane_s32(v155.n128_u64[0], 0);
      re::CollisionObject::setScale(v65, v168);
      v66 = v161;
      *(v64 + 272) = v160;
      *(v64 + 288) = v66;
      v67 = v163;
      *(v64 + 304) = v162;
      *(v64 + 320) = v67;
      *(this + 10) = v64;
      *(this + 16) = (*(*v64 + 176))(v64);
      *(this + 15) = (*(**(this + 10) + 192))(*(this + 10));
      *(this + 10) = (*(**(this + 10) + 112))(*(this + 10));
      *(this + 12) = (*(**(this + 10) + 144))(*(this + 10));
      *(this + 11) = (*(**(this + 10) + 128))(*(this + 10));
      v68 = *(this + 10);
      *(this + 52) = *(*(v68 + 136) + 32);
      v164.i64[0] = this + 88;
      v164.i64[1] = re::internal::CharacterControllerHitCallback::controllerHit;
      v165.i64[0] = 0;
      v165.i64[1] = re::Event<re::CharacterControllerHitInfo>::createSubscription<re::internal::CharacterControllerHitCallback>(re::internal::CharacterControllerHitCallback *,REEventHandlerResult (re::internal::CharacterControllerHitCallback::*)(re::CharacterControllerHitInfo*))::{lambda(re::CharacterControllerHitInfo*,re::Event<re::CharacterControllerHitInfo>::Subscription const&)#1}::__invoke;
      v69 = re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::indexOf(v68 + 168, &v164, v168);
      if ((v168[0] & 1) == 0)
      {
        if (*(v68 + 248))
        {
          *&v168[7] = v164;
          *&v168[23] = v165;
          v70 = *(v68 + 216);
          v71 = *(v68 + 224);
          if (v71 >= v70)
          {
            v72 = v71 + 1;
            if (v70 < v71 + 1)
            {
              if (*(v68 + 208))
              {
                v73 = 2 * v70;
                _ZF = v70 == 0;
                v74 = 8;
                if (!_ZF)
                {
                  v74 = v73;
                }

                if (v74 <= v72)
                {
                  v75 = v72;
                }

                else
                {
                  v75 = v74;
                }

                re::DynamicArray<re::Pair<BOOL,re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription,true>>::setCapacity((v68 + 208), v75);
              }

              else
              {
                re::DynamicArray<re::Pair<BOOL,re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription,true>>::setCapacity((v68 + 208), v72);
                ++*(v68 + 232);
              }
            }

            v71 = *(v68 + 224);
          }

          v144 = *(v68 + 240) + 40 * v71;
          *v144 = 1;
          *(v144 + 1) = *v168;
          *(v144 + 17) = *&v168[16];
          *(v144 + 32) = *&v168[31];
          ++*(v68 + 224);
          ++*(v68 + 232);
        }

        else
        {
          re::DynamicArray<re::EvaluationRegister>::add((v68 + 168), &v164);
        }
      }

      *(this + 11) = this;
      objc_storeWeak(this + 4, (v18 + 8));
      v145 = *(*(v18 + 56) + 128);
      *(*(*(this + 10) + 136) + 56) = v145;
      (*(*v145 + 192))(v145);
      goto LABEL_30;
    }
  }

  return result;
}

BOOL re::ecs2::CharacterControllerComponentStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v33, 3047, a1);
  v8 = (*(**(*(a3 + 8) + 56) + 32))(*(*(a3 + 8) + 56));
  v9 = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v8);
  if (v9 && (v10 = v9, v11 = *(a3 + 8), v12 = (*(*v9 + 24))(v9), v13 = (*(*v10 + 40))(v10, v11), v32[0] = v12, (v32[1] = v13) != 0))
  {
    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v29, a5, 0);
    v15 = v29;
    v14 = v30;
    v29 = a4;
    v30 = v15;
    v31 = v14;
    if (v15 != a5 || v14 != 0xFFFFFFFFLL)
    {
      do
      {
        v16 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v29);
        v17 = *(v16 + 16);
        v18 = re::ecs2::PhysicsSimulationMapping::physicsSimulationDataForEntity(v32, v17);
        if (v18 && (v19 = re::ecs2::PhysicsSimulationData::ensurePhysicsSimulation(v18), (*(v17 + 304) & 1) != 0) && (v20 = v19) != 0)
        {
          WeakRetained = objc_loadWeakRetained((v16 + 32));
          if (WeakRetained)
          {
            v22 = WeakRetained - 8;
          }

          else
          {
            v22 = 0;
          }

          if (v22 != v20)
          {
            re::ecs2::CharacterControllerComponent::removeFromSimulation(v16);
          }

          v25 = v29;
          v26 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v30);
          re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v25, v26, *(a3 + 48));
        }

        else
        {
          v23 = v29;
          v24 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v30);
          re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v23, v24, *(a3 + 32));
          re::ecs2::CharacterControllerComponent::removeFromSimulation(v16);
        }

        re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v30);
      }

      while (v30 != a5 || v31 != 0xFFFF || HIWORD(v31) != 0xFFFF);
    }

    v27 = *(a5 + 40) != 0;
  }

  else
  {
    v27 = 0;
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v33);
  return v27;
}

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
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

BOOL re::ecs2::CharacterControllerComponentStateImpl::processUpdatingComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v27, 3047, a1);
  v10 = (*(**(*(a3 + 8) + 56) + 32))(*(*(a3 + 8) + 56));
  v11 = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v10);
  if (v11 && (v12 = v11, v13 = *(a3 + 8), v14 = (*(*v11 + 24))(v11), v15 = (*(*v12 + 40))(v12, v13), v26[0] = v14, (v26[1] = v15) != 0))
  {
    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v23, a5, 0);
    v17 = v23;
    v16 = v24;
    v23 = a4;
    v24 = v17;
    v25 = v16;
    if (v17 != a5 || v16 != 0xFFFFFFFFLL)
    {
      do
      {
        v18 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v23);
        v19 = re::ecs2::PhysicsSimulationMapping::physicsSimulationDataForEntity(v26, v18[2]);
        v20 = v19;
        if (!a6 || re::ecs2::PhysicsSimulationData::ensurePhysicsSimulation(v19) == a6)
        {
          re::ecs2::CharacterControllerComponent::updateController(v18, v20);
        }

        re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v24);
      }

      while (v24 != a5 || v25 != 0xFFFF || HIWORD(v25) != 0xFFFF);
    }

    v21 = *(a5 + 40) != 0;
  }

  else
  {
    v21 = 0;
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v27);
  return v21;
}

re *re::ecs2::CharacterControllerPhysicsSubsystem::registerScene(re::ecs2::CharacterControllerPhysicsSubsystem *this, re::EventBus **a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = a2;
  result = re::ecs2::BasicComponentStates<re::ecs2::CharacterControllerComponent>::addScene(this + 8, a2);
  v5 = a2[36];
  if (v5)
  {
    v11 = re::globalAllocators(result)[2];
    v6 = (*(*v11 + 32))(v11, 32, 0);
    *v6 = &unk_1F5CD5AF8;
    v6[1] = this;
    v6[2] = re::ecs2::CharacterControllerPhysicsSubsystem::onControllerActivated;
    v6[3] = 0;
    v12 = v6;
    *&v8 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v5, v10, re::ecs2::ComponentImpl<re::ecs2::CharacterControllerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    *(&v8 + 1) = v7;
    re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::addNew(this + 256, &v9, &v8);
    return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v10);
  }

  return result;
}

uint64_t re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::addNew(uint64_t a1, void *a2, _OWORD *a3)
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

  v7 = re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::allocEntry(a1, v10, v9);
  *(v7 + 8) = *a2;
  result = v7 + 16;
  *(v7 + 16) = *a3;
  ++*(a1 + 40);
  return result;
}

uint64_t re::ecs2::CharacterControllerPhysicsSubsystem::onControllerActivated(uint64_t a1, uint64_t a2)
{
  v3 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::CharacterControllerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v3)
  {
    v4 = v3;
    v5 = a2;
    do
    {
      v6 = v5;
      v5 = *(v5 + 32);
    }

    while (v5);
    v7 = (*(**(*(v6 + 24) + 56) + 32))(*(*(v6 + 24) + 56));
    v8 = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v7);
    if (v8)
    {
      v9 = v8;
      (*(*v8 + 56))(v8, 1);
      v10 = re::ecs2::PhysicsSimulationService::physicsSimulationDataForEntity(v9, a2);
      if (v10)
      {
        re::ecs2::CharacterControllerComponent::updateController(v4, v10);
      }
    }
  }

  return 0;
}

uint64_t re::ecs2::CharacterControllerPhysicsSubsystem::unregisterScene(re::ecs2::CharacterControllerPhysicsSubsystem *this, re::ecs2::Scene *a2)
{
  v16 = a2;
  v3 = re::HashTable<re::ecs2::Entity const*,re::ecs2::RenderPassGroup,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(this + 256, &v16);
  if (v3)
  {
    if (*(v16 + 36))
    {
      re::EventBus::unsubscribe(*(v16 + 36), *v3, *(v3 + 8));
    }

    re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(this + 256, &v16);
  }

  v17 = v16;
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 8, &v17);
  if (result != -1)
  {
    v5 = *(this + 9) + 16 * result;
    re::DynamicBitset<unsigned long long,64ul>::setBit(this + 128, *(v5 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 176, *(v5 + 8));
    v6 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 8, *(v5 + 8));
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

    return re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(this + 64, &v17);
  }

  return result;
}

BOOL re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::ecs2::Entity const*,re::ecs2::RenderPassGroup,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::removeInternal(a1, v5);
}

uint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::CharacterControllerComponent,re::ecs2::CharacterControllerComponentStateImpl>::unregisterScene(uint64_t a1, uint64_t a2)
{
  v15 = a2;
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 64), &v15);
  if (result != -1)
  {
    v4 = *(a1 + 72) + 16 * result;
    re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 128, *(v4 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 176, *(v4 + 8));
    v5 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, *(v4 + 8));
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

    return re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(a1 + 64, &v15);
  }

  return result;
}

unint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::CharacterControllerComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::CharacterControllerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
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

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::setComponentState(a2, v11, v7);
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::CharacterControllerComponent>::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

void re::ecs2::CharacterControllerPhysicsSubsystem::~CharacterControllerPhysicsSubsystem(re::ecs2::CharacterControllerPhysicsSubsystem *this)
{
  *this = &unk_1F5CD5A58;
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 32);
  *this = &unk_1F5CD5B50;
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 1);
}

{
  *this = &unk_1F5CD5A58;
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 32);
  *this = &unk_1F5CD5B50;
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 1);

  JUMPOUT(0x1E6906520);
}

void *re::ecs2::PhysicsSubsystemImpl<re::ecs2::CharacterControllerComponent,re::ecs2::CharacterControllerComponentStateImpl>::init(_anonymous_namespace_ *a1, uint64_t a2)
{
  v3 = a1;
  v6 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3 + 16, 0);
  *(v3 + 36) += 2;
  *(v3 + 21) = 0;
  v3 = (v3 + 176);
  result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, 0);
  *(v3 + 4) += 2;
  *(v3 + 5) = 0;
  *(v3 + 6) = a2;
  *(v3 + 7) = v3 + 72;
  *(v3 + 64) = 0;
  return result;
}

uint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::CharacterControllerComponent,re::ecs2::CharacterControllerComponentStateImpl>::deinit(void *a1)
{
  re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::deinit((a1 + 1));
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit((a1 + 8));
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 16));
  a1[21] = 0;
  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 22));
  a1[27] = 0;
  a1[28] = 0;
  a1[29] = 0;
  return result;
}

unint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::CharacterControllerComponent,re::ecs2::CharacterControllerComponentStateImpl>::simToECS(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a3;
  v4 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 64), &v7);
  v5 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, *(*(a1 + 72) + 16 * v4 + 8));
  return re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](*(v5 + 16) + 8, *(v5 + 48));
}

unint64_t re::ecs2::CharacterControllerPhysicsSubsystem::afterSimulationUpdate(re::ecs2::CharacterControllerPhysicsSubsystem *this, const re::ecs2::Scene *a2)
{
  v6[0] = 0;
  v6[1] = 0;
  v7 = a2;
  v3 = *(*(this + 9) + 16 * re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 8, &v7) + 8);
  re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 176, v3);
  v4 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 8, v3);
  if (re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::update(v4, v6, 0))
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(this + 176, v3);
  }

  return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(this + 8);
}

void re::ecs2::PhysicsSubsystemImpl<re::ecs2::CharacterControllerComponent,re::ecs2::CharacterControllerComponentStateImpl>::onPhysicsSimulationRootUpdated(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  do
  {
    v5 = v4;
    v4 = *(v4 + 32);
  }

  while (v4);
  v28[0] = *(v5 + 24);
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 64), v28);
  if (v6 == -1)
  {
    v7 = 0;
  }

  else
  {
    v7 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, *(*(a1 + 72) + 16 * v6 + 8));
  }

  re::StackScratchAllocator::StackScratchAllocator(v28);
  v22[0] = 0;
  v22[1] = 0;
  v23 = 1;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  v27 = 0;
  re::BucketArray<re::ecs2::Entity const*,32ul>::init(v22, v28, 1uLL);
  *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v22) = a2;
  for (i = v26; v26; i = v26)
  {
    v9 = *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v22, i - 1);
    re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v22, --v26);
    ++v27;
    v10 = re::ecs2::EntityComponentCollection::get((v9 + 6), re::ecs2::ComponentImpl<re::ecs2::CharacterControllerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (v10)
    {
      v11 = v10;
      for (j = 24; j != 56; j += 8)
      {
        v13 = re::ecs2::ComponentBucketsBase::componentHandle(*(v7 + 16), *(v7 + j), v11);
        if (v13 != -1 && (v14 & 0xFFFFFF00000000) != 0)
        {
          v16 = v13;
          v17 = v14;
          goto LABEL_16;
        }
      }

      v16 = -1;
      v17 = 0xFFFFFFFFLL;
LABEL_16:
      re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::setComponentState(v7, v16, v17);
    }

    v18 = v9[43];
    if (v18)
    {
      v19 = v9[45];
      v20 = 8 * v18;
      do
      {
        v21 = *v19++;
        *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v22) = v21;
        v20 -= 8;
      }

      while (v20);
    }
  }

  re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(v22);
  if (v22[0] && (v23 & 1) == 0)
  {
    (*(*v22[0] + 40))();
  }

  re::StackScratchAllocator::~StackScratchAllocator(v28);
}

uint64_t *re::ecs2::PhysicsSubsystemImpl<re::ecs2::CharacterControllerComponent,re::ecs2::CharacterControllerComponentStateImpl>::onPhysicsComponentDeactivated(uint64_t a1, uint64_t a2)
{
  result = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::CharacterControllerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (result)
  {

    return re::ecs2::CharacterControllerComponent::removeFromSimulation(result);
  }

  return result;
}

uint64_t re::internal::CallableMemFn<re::ecs2::CharacterControllerPhysicsSubsystem,REEventHandlerResult (re::ecs2::CharacterControllerPhysicsSubsystem::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::CharacterControllerPhysicsSubsystem,REEventHandlerResult (re::ecs2::CharacterControllerPhysicsSubsystem::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD5AF8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::CharacterControllerPhysicsSubsystem,REEventHandlerResult (re::ecs2::CharacterControllerPhysicsSubsystem::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD5AF8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

void *re::ecs2::PhysicsSubsystemImpl<re::ecs2::CharacterControllerComponent,re::ecs2::CharacterControllerComponentStateImpl>::~PhysicsSubsystemImpl(void *a1)
{
  *a1 = &unk_1F5CD5B50;
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 1);
  return a1;
}

void re::ecs2::PhysicsSubsystemImpl<re::ecs2::CharacterControllerComponent,re::ecs2::CharacterControllerComponentStateImpl>::~PhysicsSubsystemImpl(void *a1)
{
  *a1 = &unk_1F5CD5B50;
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 1);

  JUMPOUT(0x1E6906520);
}

unint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::CharacterControllerComponent,re::ecs2::CharacterControllerComponentStateImpl>::ecsToSim(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[0] = 0;
  v8[1] = 0;
  v9 = a2;
  v5 = *(*(a1 + 72) + 16 * re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 64), &v9) + 8);
  re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 176, v5);
  v6 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, v5);
  if (re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::update(v6, v8, a3))
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 176, v5);
  }

  return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1 + 8);
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::update(void *a1, uint64_t a2, uint64_t a3)
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

char *re::EventBus::getTypeId<RECharacterControllerDidHitEvent>()
{
  v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
  {
    v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
    if (v2)
    {
      re::EventBus::getTypeId<RECharacterControllerDidHitEvent>(void)const::s_id = re::EventBus::typeStringToId(("32RECharacterControllerDidHitEvent" & 0x7FFFFFFFFFFFFFFFLL), v3);
      v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
    }
  }

  return v0[22];
}

uint64_t re::make::shared::unsafelyInplace<re::ecs2::CharacterControllerComponent>(uint64_t a1)
{
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v2 = (a1 + 32);
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CD5BC0;
  objc_initWeak(v2, 0);
  *(a1 + 40) = 0x3F490FD83C23D70ALL;
  *(a1 + 48) = 1045220557;
  *(a1 + 52) = 0xFFFFFFFF00000001;
  *(a1 + 60) = 0;
  *(a1 + 64) = 0;
  *(a1 + 68) = 0x100000000;
  *(a1 + 80) = 0;
  return a1;
}

void re::ecs2::CharacterControllerComponent::~CharacterControllerComponent(id *this)
{
  *this = &unk_1F5CD5BC0;
  objc_destroyWeak(this + 4);
  this[4] = 0;
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 1);
}

{
  *this = &unk_1F5CD5BC0;
  objc_destroyWeak(this + 4);
  this[4] = 0;
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 1);

  JUMPOUT(0x1E6906520);
}

void _ZZN2re8internal15setIntroVersionINS_4ecs228CharacterControllerComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void re::ecs2::CharacterControllerStateComponent::~CharacterControllerStateComponent(re::ecs2::CharacterControllerStateComponent *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void _ZZN2re8internal15setIntroVersionINS_4ecs233CharacterControllerStateComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t re::Event<re::CharacterControllerHitInfo>::createSubscription<re::internal::CharacterControllerHitCallback>(re::internal::CharacterControllerHitCallback *,REEventHandlerResult (re::internal::CharacterControllerHitCallback::*)(re::CharacterControllerHitInfo*))::{lambda(re::CharacterControllerHitInfo*,re::Event<re::CharacterControllerHitInfo>::Subscription const&)#1}::__invoke(uint64_t a1, void *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = (*a2 + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5, a1);
}

unint64_t re::ecs2::BasicComponentStates<re::ecs2::CharacterControllerComponent>::addScene(unint64_t a1, uint64_t a2)
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
    re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::init(v12, a1, a2);
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
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>,4ul>::setBucketsCapacity(a1, (v14 + 4) >> 2);
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
  re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::init(v24, a1, v48[0]);
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

uint64_t *re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::CharacterControllerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType) + 480;
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
    *v10 = &unk_1F5CD5CD0;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::CharacterControllerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CD5D28;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::CharacterControllerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CD5D80;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::CharacterControllerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CD5DD8;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::CharacterControllerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
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
        *v37 = &unk_1F5CD5CD0;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CD5D28;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CD5D80;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CD5DD8;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::CharacterControllerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::CharacterControllerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::CharacterControllerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::CharacterControllerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD5CD0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD5CD0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD5D28;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD5D28;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD5D80;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD5D80;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD5DD8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD5DD8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>,4ul>::setBucketsCapacity(void *result, unint64_t a2)
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

uint64_t re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
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

void re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
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
      re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::move(a1, v9);
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