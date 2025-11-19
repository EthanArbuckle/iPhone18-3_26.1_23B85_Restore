physx::Sc::RigidSim *physx::NpRigidStatic::setGlobalPose(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1 + *(&physx::NpActor::sLazyInitOffsets + *(a1 + 8) + 18);
  if (((*(v9 + 8) >> 30) - 1) > 1)
  {
    v11 = 0;
  }

  else
  {
    v10 = *v9;
    if (v10)
    {
      v11 = v10 - 16;
    }

    else
    {
      v11 = 0;
    }
  }

  v12 = *(a2 + 4);
  v13 = *(a2 + 8);
  v14 = *(a2 + 12);
  v15 = sqrtf((((v12 * v12) + (*a2 * *a2)) + (v13 * v13)) + (v14 * v14));
  v16 = *a2 / v15;
  v17 = v12 / v15;
  v18 = v13 / v15;
  v19 = v14 / v15;
  v21 = *(a2 + 16);
  v20 = *(a2 + 20);
  v22 = *(a2 + 24);
  v23 = *(a1 + 104);
  if (v23 >> 30 == 2)
  {
    v24 = *(a1 + 96);
    if (v24[961].i8[1])
    {
      goto LABEL_10;
    }

LABEL_13:
    *(a1 + 144) = v16;
    *(a1 + 148) = v17;
    *(a1 + 152) = v18;
    *(a1 + 156) = v19;
    *(a1 + 160) = v21;
    *(a1 + 164) = v20;
    *(a1 + 168) = v22;
    result = *(a1 + 128);
    if (result)
    {
      result = physx::Sc::RigidSim::notifyShapesOfTransformChange(result);
    }

    goto LABEL_15;
  }

  if (v23 >> 30 != 3)
  {
    goto LABEL_13;
  }

  v24 = *(a1 + 96);
LABEL_10:
  Stream = *(a1 + 112);
  if (!Stream)
  {
    Stream = physx::Scb::Scene::getStream(v24, HIBYTE(v23) & 0xF);
    *(a1 + 112) = Stream;
    v24 = *(a1 + 96);
  }

  *(Stream + 176) = v16;
  *(Stream + 180) = v17;
  *(Stream + 184) = v18;
  *(Stream + 188) = v19;
  *(Stream + 192) = v21;
  *(Stream + 196) = v20;
  *(Stream + 200) = v22;
  result = physx::Scb::Scene::scheduleForUpdate(v24, a1 + 96);
  *(a1 + 104) |= 0x40u;
LABEL_15:
  if (v11)
  {
    result = physx::NpShapeManager::markAllSceneQueryForUpdate(a1 + 40, v11 + 8640, a1);
    ++*(v11 + 8684);
  }

  if (*(a1 + 80))
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpRigidStatic.cpp", 101, "PxRigidStatic::setGlobalPose: Actor is part of a pruning structure, pruning structure is now invalid!", a6, a7, a8, v36);
    result = physx::Sq::PruningStructure::invalidate(*(a1 + 80), a1);
  }

  v27 = *(a1 + 32);
  if (v27)
  {
    v28 = *(v27 + 72);
    v29 = *(v27 + 80);
  }

  else
  {
    v29 = 0;
    v28 = 0;
  }

  v30 = 0;
LABEL_23:
  if (v30 <= v29)
  {
    v31 = v29;
  }

  else
  {
    v31 = v30;
  }

  v32 = (v28 + 16 * v30);
  v33 = v31 - v30 + 1;
  while (--v33)
  {
    v34 = v32 + 16;
    ++v30;
    v35 = *v32;
    v32 += 16;
    if (!v35)
    {
      result = *(v34 - 1);
      if (!result)
      {
        return result;
      }

      result = physx::NpConstraint::comShift(result, a1);
      goto LABEL_23;
    }
  }

  return result;
}

uint64_t physx::NpShapeManager::markAllSceneQueryForUpdate(uint64_t result, uint64_t a2, _WORD *a3)
{
  v4 = *(result + 32);
  if (v4 == -1)
  {
    v6 = result;
    if (*(result + 8))
    {
      v7 = 0;
      v8 = (result + 16);
      v9 = 8 * *(result + 8);
      do
      {
        v10 = v6 + 16;
        if (*(v6 + 24) != 1)
        {
          v10 = *v8;
        }

        v11 = *(v10 + v7);
        if (v11 != 0xFFFFFFFF)
        {
          *(a2 + 208) = 1;
          result = physx::Sq::PrunerExt::addToDirtyList(a2 + 48 * (v11 & 1), v11 >> 1);
        }

        v7 += 8;
      }

      while (v9 != v7);
    }
  }

  else
  {
    v5 = (a3[4] & 0xFFF7) == 5;
    (*(*a3 + 152))(v12, a3);
    result = (*(**(a2 + 96) + 16))(*(a2 + 96), v4, v12);
    ++*(a2 + 48 * v5 + 44);
  }

  return result;
}

float physx::NpRigidStatic::getGlobalPose@<S0>(physx::NpRigidStatic *this@<X0>, uint64_t a2@<X8>)
{
  if ((*(this + 104) & 0x40) != 0)
  {
    v2 = (*(this + 14) + 176);
  }

  else
  {
    v2 = this + 144;
  }

  *a2 = *v2;
  *(a2 + 16) = *(v2 + 2);
  result = *(v2 + 6);
  *(a2 + 24) = result;
  return result;
}

void physx::NpRigidStatic::switchToNoSim(physx::NpRigidStatic *this)
{
  v2 = (this + 96);
  v1 = *(this + 12);
  if (v1)
  {
    if ((*(v1 + 7689) & 1) == 0)
    {
      physx::Scb::Scene::switchRigidToNoSim(v1, v2, 0);
    }
  }
}

uint64_t physx::NpRigidStatic::switchFromNoSim(physx::NpRigidStatic *this)
{
  v2 = (this + 96);
  result = *(this + 12);
  if (result)
  {
    if ((*(result + 7689) & 1) == 0)
    {
      return physx::Scb::Scene::switchRigidFromNoSim(result, v2, 0);
    }
  }

  return result;
}

uint64_t physx::NpScene::NpScene(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5D25998;
  *(a1 + 8) = 0;
  physx::Scb::Scene::Scene(a1 + 16, a2, a1);
  physx::Sq::SceneQueryManager::SceneQueryManager(a1 + 8640, a1 + 16, *(a2 + 176), *(a2 + 180), *(a2 + 184), a2 + 96);
  *(a1 + 8856) = gRaycastMap;
  *(a1 + 8864) = gGeomSweepFuncs;
  *(a1 + 8872) = gGeomOverlapMethodTable;
  *(a1 + 8896) = 0u;
  *(a1 + 8912) = 0;
  *(a1 + 8888) = a1;
  *(a1 + 8880) = &unk_1F5D27078;
  *(a1 + 8928) = "NpSceneQueries.sceneQueriesStaticPrunerUpdate";
  *(a1 + 8952) = 0u;
  *(a1 + 8968) = 0;
  *(a1 + 8944) = a1;
  *(a1 + 8936) = &unk_1F5D27108;
  *(a1 + 8984) = "NpSceneQueries.sceneQueriesDynamicPrunerUpdate";
  *(a1 + 8992) = *(a2 + 188);
  *(a1 + 8920) = a1;
  *(a1 + 8976) = a1;
  *a1 = &unk_1F5D25D60;
  *(a1 + 9000) = &unk_1F5D1BEB0;
  *(a1 + 9008) = 0u;
  *(a1 + 9024) = 0u;
  *(a1 + 9040) = 0u;
  *(a1 + 9056) = 0u;
  *(a1 + 9072) = 0u;
  *(a1 + 9088) = 0u;
  *(a1 + 9104) = 0u;
  *(a1 + 9120) = 0;
  *(a1 + 9128) = -3233808384;
  *(a1 + 9136) = 0;
  physx::shdfnd::internal::HashBase<physx::PxConstraint *,physx::PxConstraint *,physx::shdfnd::Hash<physx::PxConstraint *>,physx::shdfnd::internal::HashSetBase<physx::PxConstraint *,physx::shdfnd::Hash<physx::PxConstraint *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(a1 + 9088, 0x40u);
  *(a1 + 9192) = 0;
  *(a1 + 9160) = 0u;
  *(a1 + 9176) = 0u;
  *(a1 + 9144) = 0u;
  *(a1 + 9200) = -3233808384;
  *(a1 + 9208) = 0;
  physx::shdfnd::internal::HashBase<physx::Sc::ConstraintSim *,physx::Sc::ConstraintSim *,physx::shdfnd::Hash<physx::Sc::ConstraintSim *>,physx::shdfnd::internal::HashSetBase<physx::Sc::ConstraintSim *,physx::shdfnd::Hash<physx::Sc::ConstraintSim *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(a1 + 9160, 0x40u);
  *(a1 + 9248) = 0;
  *(a1 + 9232) = 0u;
  *(a1 + 9216) = 0u;
  *(a1 + 9256) = -3233808384;
  *(a1 + 9264) = 0;
  physx::shdfnd::internal::HashBase<physx::Sc::ConstraintSim *,physx::Sc::ConstraintSim *,physx::shdfnd::Hash<physx::Sc::ConstraintSim *>,physx::shdfnd::internal::HashSetBase<physx::Sc::ConstraintSim *,physx::shdfnd::Hash<physx::Sc::ConstraintSim *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(a1 + 9216, 0x40u);
  *(a1 + 9272) = 0u;
  *(a1 + 9288) = *(a2 + 236);
  *(a1 + 9296) = *(a2 + 244);
  *(a1 + 9304) = *(a2 + 252);
  physx::shdfnd::SyncT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::SyncImpl>>::SyncT((a1 + 9312));
  physx::shdfnd::SyncT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::SyncImpl>>::SyncT((a1 + 9320));
  v4 = physx::shdfnd::SyncT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::SyncImpl>>::SyncT((a1 + 9328));
  *(a1 + 9340) = 1;
  *(a1 + 9344) = 0u;
  *(a1 + 9392) = 0u;
  *(a1 + 9408) = 0;
  *(a1 + 9384) = a1;
  *(a1 + 9376) = &unk_1F5D26FA8;
  *(a1 + 9416) = a1 + 9312;
  *(a1 + 9440) = 0u;
  *(a1 + 9456) = 0;
  *(a1 + 9432) = a1;
  *(a1 + 9424) = &unk_1F5D26FA8;
  *(a1 + 9464) = a1 + 9320;
  *(a1 + 9488) = 0u;
  *(a1 + 9504) = 0;
  *(a1 + 9480) = a1;
  *(a1 + 9472) = &unk_1F5D26FA8;
  *(a1 + 9512) = v4;
  *(a1 + 9536) = 0u;
  *(a1 + 9552) = 0;
  *(a1 + 9528) = a1;
  *(a1 + 9520) = &unk_1F5D27198;
  *(a1 + 9560) = 0;
  *(a1 + 9568) = "NpScene.execution";
  *(a1 + 9592) = 0u;
  *(a1 + 9608) = 0;
  *(a1 + 9584) = a1;
  *(a1 + 9576) = &unk_1F5D27228;
  *(a1 + 9616) = 0;
  *(a1 + 9624) = "NpScene.collide";
  *(a1 + 9648) = 0u;
  *(a1 + 9664) = 0;
  *(a1 + 9640) = a1;
  *(a1 + 9632) = &unk_1F5D272B8;
  *(a1 + 9672) = 0;
  *(a1 + 9680) = "NpScene.solve";
  *(a1 + 9688) = 0;
  *(a1 + 9692) = 0;
  *(a1 + 9696) = 0;
  *(a1 + 9700) = 0;
  *(a1 + 9704) = 0;
  *(a1 + 9712) = 0;
  physx::shdfnd::ReadWriteLock::ReadWriteLock((a1 + 9720));
  *(a1 + 9728) = 0;
  *(a1 + 9560) = a1;
  *(a1 + 9616) = a1;
  *(a1 + 9672) = a1;
  *(a1 + 9360) = *(a1 + 7488);
  v6 = 0;
  pthread_key_create(&v6, 0);
  *(a1 + 9708) = v6;
  return a1;
}

void *physx::Cm::DelegateTask<physx::NpSceneQueries,&physx::NpSceneQueries::sceneQueriesDynamicPrunerUpdate>::~DelegateTask(void *result)
{
  *result = &unk_1F5D1C1B0;
  result[2] = 0;
  return result;
}

void *physx::Cm::DelegateTask<physx::NpSceneQueries,&physx::NpSceneQueries::sceneQueriesStaticPrunerUpdate>::~DelegateTask(void *result)
{
  *result = &unk_1F5D1C1B0;
  result[2] = 0;
  return result;
}

void physx::NpScene::~NpScene(physx::NpScene *this)
{
  *this = &unk_1F5D25D60;
  v2 = *(this + 2317);
  if (v2)
  {
    v3 = 8 * v2 - 8;
    do
    {
      (*(*this + 136))(this, *(*(this + 1153) + v3), 0);
      v3 -= 8;
    }

    while (v3 != -8);
  }

  v4 = *(this + 2288);
  if (v4)
  {
    v5 = 8 * v4 - 8;
    do
    {
      (*(*this + 112))(this, *(*(this + 1143) + v5), 0);
      v5 -= 8;
    }

    while (v5 != -8);
  }

  v6 = *(this + 2303);
  if (v6)
  {
    v7 = 8 * v6 - 8;
    do
    {
      (*(*this + 80))(this, *(*(this + 1146) + v7), 0);
      v7 -= 8;
    }

    while (v7 != -8);
  }

  v8 = 8592;
  if ((*(this + 8624) & 4) == 0)
  {
    v8 = 4284;
  }

  v9 = *(this + v8 + 16);
  v10 = *(this + 2320);
  if (v10)
  {
    v11 = 8 * v10 - 8;
    do
    {
      v12 = *(*(this + 1159) + v11);
      if (v12)
      {
        (*(*v12 + 96))(v12);
      }

      v11 -= 8;
    }

    while (v11 != -8);
  }

  *(this + 2320) = 0;
  physx::Sc::Scene::release((this + 32));
  *(this + 1954) = 0;
  *(this + 1958) = 0;
  *(this + 1962) = 0;
  physx::Cm::FlushPool::clear(this + 964);
  if ((v9 & 0x200) != 0)
  {
    (*(*this + 808))(this);
  }

  pthread_key_delete(*(this + 2427));
  physx::shdfnd::ReadWriteLock::~ReadWriteLock(this + 1215);
  *(this + 1204) = &unk_1F5D1C1B0;
  *(this + 1206) = 0;
  *(this + 1197) = &unk_1F5D1C1B0;
  *(this + 1199) = 0;
  *(this + 1190) = &unk_1F5D1C1B0;
  *(this + 1192) = 0;
  *(this + 1184) = &unk_1F5D1C1B0;
  *(this + 1186) = 0;
  *(this + 1178) = &unk_1F5D1C1B0;
  *(this + 1180) = 0;
  *(this + 1172) = &unk_1F5D1C1B0;
  *(this + 1174) = 0;
  v13 = *(this + 2339);
  if ((v13 & 0x80000000) == 0 && (v13 & 0x7FFFFFFF) != 0 && *(this + 1168))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  physx::shdfnd::SyncT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::SyncImpl>>::~SyncT(this + 1166);
  physx::shdfnd::SyncT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::SyncImpl>>::~SyncT(this + 1165);
  physx::shdfnd::SyncT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::SyncImpl>>::~SyncT(this + 1164);
  v14 = *(this + 2321);
  if ((v14 & 0x80000000) == 0 && (v14 & 0x7FFFFFFF) != 0 && *(this + 1159))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 1152))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 1145))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v15 = *(this + 2289);
  if ((v15 & 0x80000000) == 0 && (v15 & 0x7FFFFFFF) != 0 && *(this + 1143))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 1136))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  physx::Cm::RenderBuffer::~RenderBuffer((this + 9000));
  *this = &unk_1F5D25998;
  *(this + 1117) = &unk_1F5D1C1B0;
  *(this + 1119) = 0;
  *(this + 1110) = &unk_1F5D1C1B0;
  *(this + 1112) = 0;
  physx::Sq::SceneQueryManager::~SceneQueryManager(this + 1080);
  if (*(this + 1017))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 1010))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 1003))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 996))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 989))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 982))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v16 = *(this + 1963);
  if ((v16 & 0x80000000) == 0 && (v16 & 0x7FFFFFFF) != 0 && *(this + 980))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v17 = *(this + 1959);
  if ((v17 & 0x80000000) == 0 && (v17 & 0x7FFFFFFF) != 0 && *(this + 978))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v18 = *(this + 1955);
  if ((v18 & 0x80000000) == 0 && (v18 & 0x7FFFFFFF) != 0 && *(this + 976))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 969))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  physx::Cm::FlushPool::~FlushPool((this + 7712));
  physx::shdfnd::MutexT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>>::~MutexT(this + 962);
  v19 = *(this + 1923);
  if ((v19 & 0x80000000) == 0 && (v19 & 0x7FFFFFFF) != 0 && *(this + 960))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 958) && (*(this + 1918) & 0x80000000) == 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 958) = 0;
  if (*(this + 956) && (*(this + 1914) & 0x80000000) == 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 956) = 0;
  v20 = *(this + 1911);
  if ((v20 & 0x80000000) == 0 && (v20 & 0x7FFFFFFF) != 0 && *(this + 954))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v21 = *(this + 1905);
  if ((v21 & 0x80000000) == 0 && (v21 & 0x7FFFFFFF) != 0 && *(this + 951))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v22 = *(this + 1901);
  if ((v22 & 0x80000000) == 0 && (v22 & 0x7FFFFFFF) != 0 && *(this + 949))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v23 = *(this + 1897);
  if ((v23 & 0x80000000) == 0 && (v23 & 0x7FFFFFFF) != 0 && *(this + 947))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 940))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  physx::Cm::FlushPool::~FlushPool((this + 7448));
  *(this + 924) = &unk_1F5D1C1B0;
  *(this + 926) = 0;
  *(this + 917) = &unk_1F5D1C1B0;
  *(this + 919) = 0;
  *(this + 910) = &unk_1F5D1C1B0;
  *(this + 912) = 0;
  *(this + 903) = &unk_1F5D1C1B0;
  *(this + 905) = 0;
  *(this + 896) = &unk_1F5D1C1B0;
  *(this + 898) = 0;
  *(this + 889) = &unk_1F5D1C1B0;
  *(this + 891) = 0;
  *(this + 882) = &unk_1F5D1C1B0;
  *(this + 884) = 0;
  *(this + 875) = &unk_1F5D1C1B0;
  *(this + 877) = 0;
  *(this + 853) = &unk_1F5D1F1F8;
  physx::shdfnd::MutexT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>>::~MutexT(this + 873);
  v24 = *(this + 1743);
  if ((v24 & 0x80000000) == 0 && (v24 & 0x7FFFFFFF) != 0)
  {
    v25 = *(this + 870);
    if (v25 == (this + 6920))
    {
      *(this + 6952) = 0;
    }

    else if (v25)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }
  }

  v26 = *(this + 1729);
  if ((v26 & 0x80000000) == 0 && (v26 & 0x7FFFFFFF) != 0)
  {
    v27 = *(this + 863);
    if (v27 == (this + 6864))
    {
      *(this + 6896) = 0;
    }

    else if (v27)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }
  }

  *(this + 846) = &unk_1F5D1C1B0;
  *(this + 848) = 0;
  *(this + 839) = &unk_1F5D1C1B0;
  *(this + 841) = 0;
  *(this + 832) = &unk_1F5D1C1B0;
  *(this + 834) = 0;
  *(this + 825) = &unk_1F5D1C1B0;
  *(this + 827) = 0;
  *(this + 818) = &unk_1F5D1C1B0;
  *(this + 820) = 0;
  *(this + 811) = &unk_1F5D1C1B0;
  *(this + 813) = 0;
  *(this + 804) = &unk_1F5D1C1B0;
  *(this + 806) = 0;
  *(this + 797) = &unk_1F5D1C1B0;
  *(this + 799) = 0;
  *(this + 790) = &unk_1F5D1C1B0;
  *(this + 792) = 0;
  *(this + 783) = &unk_1F5D1C1B0;
  *(this + 785) = 0;
  *(this + 776) = &unk_1F5D1C1B0;
  *(this + 778) = 0;
  *(this + 769) = &unk_1F5D1C1B0;
  *(this + 771) = 0;
  *(this + 762) = &unk_1F5D1C1B0;
  *(this + 764) = 0;
  *(this + 755) = &unk_1F5D1C1B0;
  *(this + 757) = 0;
  *(this + 748) = &unk_1F5D1C1B0;
  *(this + 750) = 0;
  *(this + 741) = &unk_1F5D1C1B0;
  *(this + 743) = 0;
  *(this + 734) = &unk_1F5D1C1B0;
  *(this + 736) = 0;
  *(this + 727) = &unk_1F5D1C1B0;
  *(this + 729) = 0;
  *(this + 720) = &unk_1F5D1C1B0;
  *(this + 722) = 0;
  *(this + 713) = &unk_1F5D1C1B0;
  *(this + 715) = 0;
  *(this + 706) = &unk_1F5D1C1B0;
  *(this + 708) = 0;
  *(this + 699) = &unk_1F5D1C1B0;
  *(this + 701) = 0;
  *(this + 692) = &unk_1F5D1C1B0;
  *(this + 694) = 0;
  *(this + 685) = &unk_1F5D1C1B0;
  *(this + 687) = 0;
  *(this + 678) = &unk_1F5D1C1B0;
  *(this + 680) = 0;
  *(this + 671) = &unk_1F5D1C1B0;
  *(this + 673) = 0;
  *(this + 664) = &unk_1F5D1C1B0;
  *(this + 666) = 0;
  v28 = *(this + 1324);
  if (v28)
  {
    v29 = *(this + 661);
    v30 = &v29[7 * v28];
    v31 = v29;
    v32 = v29;
    do
    {
      v33 = *v32;
      v32 += 7;
      (*v33)(v31);
      v29 += 7;
      v31 = v32;
    }

    while (v32 < v30);
  }

  v34 = *(this + 1325);
  if ((v34 & 0x80000000) == 0 && (v34 & 0x7FFFFFFF) != 0 && *(this + 661))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v35 = *(this + 1320);
  if (v35)
  {
    v36 = *(this + 659);
    v37 = &v36[7 * v35];
    v38 = v36;
    v39 = v36;
    do
    {
      v40 = *v39;
      v39 += 7;
      (*v40)(v38);
      v36 += 7;
      v38 = v39;
    }

    while (v39 < v37);
  }

  v41 = *(this + 1321);
  if ((v41 & 0x80000000) == 0 && (v41 & 0x7FFFFFFF) != 0 && *(this + 659))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v42 = *(this + 1316);
  if (v42)
  {
    v43 = *(this + 657);
    v44 = &v43[7 * v42];
    v45 = v43;
    v46 = v43;
    do
    {
      v47 = *v46;
      v46 += 7;
      (*v47)(v45);
      v43 += 7;
      v45 = v46;
    }

    while (v46 < v44);
  }

  v48 = *(this + 1317);
  if ((v48 & 0x80000000) == 0 && (v48 & 0x7FFFFFFF) != 0 && *(this + 657))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v49 = *(this + 1312);
  if (v49)
  {
    v50 = *(this + 655);
    v51 = &v50[7 * v49];
    v52 = v50;
    v53 = v50;
    do
    {
      v54 = *v53;
      v53 += 7;
      (*v54)(v52);
      v50 += 7;
      v52 = v53;
    }

    while (v53 < v51);
  }

  v55 = *(this + 1313);
  if ((v55 & 0x80000000) == 0 && (v55 & 0x7FFFFFFF) != 0 && *(this + 655))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v56 = *(this + 1308);
  if (v56)
  {
    v57 = *(this + 653);
    v58 = &v57[7 * v56];
    v59 = v57;
    v60 = v57;
    do
    {
      v61 = *v60;
      v60 += 7;
      (*v61)(v59);
      v57 += 7;
      v59 = v60;
    }

    while (v60 < v58);
  }

  v62 = *(this + 1309);
  if ((v62 & 0x80000000) == 0 && (v62 & 0x7FFFFFFF) != 0 && *(this + 653))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v63 = *(this + 1304);
  if (v63)
  {
    v64 = *(this + 651);
    v65 = &v64[7 * v63];
    v66 = v64;
    v67 = v64;
    do
    {
      v68 = *v67;
      v67 += 7;
      (*v68)(v66);
      v64 += 7;
      v66 = v67;
    }

    while (v67 < v65);
  }

  v69 = *(this + 1305);
  if ((v69 & 0x80000000) == 0 && (v69 & 0x7FFFFFFF) != 0 && *(this + 651))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 644) = &unk_1F5D1C1B0;
  *(this + 646) = 0;
  *(this + 622) = &unk_1F5D1F1F8;
  physx::shdfnd::MutexT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>>::~MutexT(this + 642);
  v70 = *(this + 1281);
  if ((v70 & 0x80000000) == 0 && (v70 & 0x7FFFFFFF) != 0)
  {
    v71 = *(this + 639);
    if (v71 == (this + 5072))
    {
      *(this + 5104) = 0;
    }

    else if (v71)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }
  }

  v72 = *(this + 1267);
  if ((v72 & 0x80000000) == 0 && (v72 & 0x7FFFFFFF) != 0)
  {
    v73 = *(this + 632);
    if (v73 == (this + 5016))
    {
      *(this + 5048) = 0;
    }

    else if (v73)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }
  }

  *(this + 600) = &unk_1F5D1F1F8;
  physx::shdfnd::MutexT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>>::~MutexT(this + 620);
  v74 = *(this + 1237);
  if ((v74 & 0x80000000) == 0 && (v74 & 0x7FFFFFFF) != 0)
  {
    v75 = *(this + 617);
    if (v75 == (this + 4896))
    {
      *(this + 4928) = 0;
    }

    else if (v75)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }
  }

  v76 = *(this + 1223);
  if ((v76 & 0x80000000) == 0 && (v76 & 0x7FFFFFFF) != 0)
  {
    v77 = *(this + 610);
    if (v77 == (this + 4840))
    {
      *(this + 4872) = 0;
    }

    else if (v77)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }
  }

  *(this + 593) = &unk_1F5D1C1B0;
  *(this + 595) = 0;
  if (*(this + 568) && (*(this + 1138) & 0x80000000) == 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 568) = 0;
  v78 = *(this + 1135);
  if ((v78 & 0x80000000) == 0 && (v78 & 0x7FFFFFFF) != 0 && *(this + 566))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v79 = *(this + 1131);
  if ((v79 & 0x80000000) == 0 && (v79 & 0x7FFFFFFF) != 0 && *(this + 564))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v80 = *(this + 1127);
  if ((v80 & 0x80000000) == 0 && (v80 & 0x7FFFFFFF) != 0 && *(this + 562))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v81 = *(this + 1123);
  if ((v81 & 0x80000000) == 0 && (v81 & 0x7FFFFFFF) != 0 && *(this + 560))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v82 = *(this + 1119);
  if ((v82 & 0x80000000) == 0 && (v82 & 0x7FFFFFFF) != 0 && *(this + 558))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 556) && (*(this + 1114) & 0x80000000) == 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 556) = 0;
  if (*(this + 554) && (*(this + 1110) & 0x80000000) == 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 554) = 0;
  v83 = *(this + 1107);
  if ((v83 & 0x80000000) == 0 && (v83 & 0x7FFFFFFF) != 0 && *(this + 552))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v84 = *(this + 1067);
  if ((v84 & 0x80000000) == 0 && (v84 & 0x7FFFFFFF) != 0 && *(this + 532))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v85 = *(this + 1063);
  if ((v85 & 0x80000000) == 0 && (v85 & 0x7FFFFFFF) != 0 && *(this + 530))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v86 = *(this + 1059);
  if ((v86 & 0x80000000) == 0 && (v86 & 0x7FFFFFFF) != 0 && *(this + 528))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v87 = *(this + 1055);
  if ((v87 & 0x80000000) == 0 && (v87 & 0x7FFFFFFF) != 0 && *(this + 526))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v88 = *(this + 1051);
  if ((v88 & 0x80000000) == 0 && (v88 & 0x7FFFFFFF) != 0 && *(this + 524))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 516))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 509))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 1001))
  {
    v150 = 0;
    v151 = 0;
    v89 = *(this + 502);
    if (v89)
    {
      do
      {
        v149 = v89;
        v90 = v151;
        if ((HIDWORD(v151) & 0x7FFFFFFFu) <= v151)
        {
          physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<unsigned char,384u>>>::growAndPushBack(&v150, &v149);
        }

        else
        {
          *(v150 + 8 * v151) = v89;
          LODWORD(v151) = v90 + 1;
        }

        v89 = **(this + 502);
        *(this + 502) = v89;
      }

      while (v89);
      v91 = v150;
      v92 = v151;
    }

    else
    {
      v92 = 0;
      v91 = 0;
    }

    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<unsigned char,384u>>>(v91, v92);
    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<unsigned char,384u>>>(*(this + 498), *(this + 998));
    if ((v151 & 0x8000000000000000) == 0 && (v151 & 0x7FFFFFFF00000000) != 0 && v150)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }
  }

  v93 = *(this + 498);
  v94 = *(this + 998);
  if (v94)
  {
    v95 = 8 * v94;
    do
    {
      if (*v93)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      }

      v93 = (v93 + 8);
      v95 -= 8;
    }

    while (v95);
    v93 = *(this + 498);
  }

  v96 = *(this + 999);
  if ((v96 & 0x80000000) == 0 && (v96 & 0x7FFFFFFF) != 0)
  {
    if (v93 == (this + 3464))
    {
      *(this + 3976) = 0;
    }

    else if (v93)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v93);
    }
  }

  if (*(this + 859))
  {
    v150 = 0;
    v151 = 0;
    v97 = *(this + 431);
    if (v97)
    {
      do
      {
        v149 = v97;
        v98 = v151;
        if ((HIDWORD(v151) & 0x7FFFFFFFu) <= v151)
        {
          physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<unsigned char,256u>>>::growAndPushBack(&v150, &v149);
        }

        else
        {
          *(v150 + 8 * v151) = v97;
          LODWORD(v151) = v98 + 1;
        }

        v97 = **(this + 431);
        *(this + 431) = v97;
      }

      while (v97);
      v99 = v150;
      v100 = v151;
    }

    else
    {
      v100 = 0;
      v99 = 0;
    }

    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<unsigned char,256u>>>(v99, v100);
    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<unsigned char,256u>>>(*(this + 427), *(this + 856));
    if ((v151 & 0x8000000000000000) == 0 && (v151 & 0x7FFFFFFF00000000) != 0 && v150)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }
  }

  v101 = *(this + 427);
  v102 = *(this + 856);
  if (v102)
  {
    v103 = 8 * v102;
    do
    {
      if (*v101)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      }

      v101 = (v101 + 8);
      v103 -= 8;
    }

    while (v103);
    v101 = *(this + 427);
  }

  v104 = *(this + 857);
  if ((v104 & 0x80000000) == 0 && (v104 & 0x7FFFFFFF) != 0)
  {
    if (v101 == (this + 2896))
    {
      *(this + 3408) = 0;
    }

    else if (v101)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v101);
    }
  }

  if (*(this + 717))
  {
    v150 = 0;
    v151 = 0;
    v105 = *(this + 360);
    if (v105)
    {
      do
      {
        v149 = v105;
        v106 = v151;
        if ((HIDWORD(v151) & 0x7FFFFFFFu) <= v151)
        {
          physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<unsigned char,128u>>>::growAndPushBack(&v150, &v149);
        }

        else
        {
          *(v150 + 8 * v151) = v105;
          LODWORD(v151) = v106 + 1;
        }

        v105 = **(this + 360);
        *(this + 360) = v105;
      }

      while (v105);
      v107 = v150;
      v108 = v151;
    }

    else
    {
      v108 = 0;
      v107 = 0;
    }

    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<unsigned char,128u>>>(v107, v108);
    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<unsigned char,128u>>>(*(this + 356), *(this + 714));
    if ((v151 & 0x8000000000000000) == 0 && (v151 & 0x7FFFFFFF00000000) != 0 && v150)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }
  }

  v109 = *(this + 356);
  v110 = *(this + 714);
  if (v110)
  {
    v111 = 8 * v110;
    do
    {
      if (*v109)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      }

      v109 = (v109 + 8);
      v111 -= 8;
    }

    while (v111);
    v109 = *(this + 356);
  }

  v112 = *(this + 715);
  if ((v112 & 0x80000000) == 0 && (v112 & 0x7FFFFFFF) != 0)
  {
    if (v109 == (this + 2328))
    {
      *(this + 2840) = 0;
    }

    else if (v109)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v109);
    }
  }

  if (*(this + 283))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v113 = *(this + 565);
  if ((v113 & 0x80000000) == 0 && (v113 & 0x7FFFFFFF) != 0 && *(this + 281))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 274))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v114 = *(this + 543);
  if ((v114 & 0x80000000) == 0 && (v114 & 0x7FFFFFFF) != 0 && *(this + 270))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v115 = *(this + 539);
  if ((v115 & 0x80000000) == 0 && (v115 & 0x7FFFFFFF) != 0 && *(this + 268))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v116 = *(this + 535);
  if ((v116 & 0x80000000) == 0 && (v116 & 0x7FFFFFFF) != 0 && *(this + 266))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 254))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v117 = *(this + 503);
  if ((v117 & 0x80000000) == 0 && (v117 & 0x7FFFFFFF) != 0 && *(this + 250))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 463))
  {
    v150 = 0;
    v151 = 0;
    v118 = *(this + 233);
    if (v118)
    {
      do
      {
        v149 = v118;
        v119 = v151;
        if ((HIDWORD(v151) & 0x7FFFFFFFu) <= v151)
        {
          physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<void *,32u>>>::growAndPushBack(&v150, &v149);
        }

        else
        {
          *(v150 + 8 * v151) = v118;
          LODWORD(v151) = v119 + 1;
        }

        v118 = **(this + 233);
        *(this + 233) = v118;
      }

      while (v118);
      v120 = v150;
      v121 = v151;
    }

    else
    {
      v121 = 0;
      v120 = 0;
    }

    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<void *,32u>>>(v120, v121);
    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<void *,32u>>>(*(this + 229), *(this + 460));
    if ((v151 & 0x8000000000000000) == 0 && (v151 & 0x7FFFFFFF00000000) != 0 && v150)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }
  }

  v122 = *(this + 229);
  v123 = *(this + 460);
  if (v123)
  {
    v124 = 8 * v123;
    do
    {
      if (*v122)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      }

      v122 = (v122 + 8);
      v124 -= 8;
    }

    while (v124);
    v122 = *(this + 229);
  }

  v125 = *(this + 461);
  if ((v125 & 0x80000000) == 0 && (v125 & 0x7FFFFFFF) != 0)
  {
    if (v122 == (this + 1312))
    {
      *(this + 1824) = 0;
    }

    else if (v122)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v122);
    }
  }

  if (*(this + 321))
  {
    v150 = 0;
    v151 = 0;
    v126 = *(this + 162);
    if (v126)
    {
      do
      {
        v149 = v126;
        v127 = v151;
        if ((HIDWORD(v151) & 0x7FFFFFFFu) <= v151)
        {
          physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<void *,16u>>>::growAndPushBack(&v150, &v149);
        }

        else
        {
          *(v150 + 8 * v151) = v126;
          LODWORD(v151) = v127 + 1;
        }

        v126 = **(this + 162);
        *(this + 162) = v126;
      }

      while (v126);
      v128 = v150;
      v129 = v151;
    }

    else
    {
      v129 = 0;
      v128 = 0;
    }

    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<void *,16u>>>(v128, v129);
    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<void *,16u>>>(*(this + 158), *(this + 318));
    if ((v151 & 0x8000000000000000) == 0 && (v151 & 0x7FFFFFFF00000000) != 0 && v150)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }
  }

  v130 = *(this + 158);
  v131 = *(this + 318);
  if (v131)
  {
    v132 = 8 * v131;
    do
    {
      if (*v130)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      }

      v130 = (v130 + 8);
      v132 -= 8;
    }

    while (v132);
    v130 = *(this + 158);
  }

  v133 = *(this + 319);
  if ((v133 & 0x80000000) == 0 && (v133 & 0x7FFFFFFF) != 0)
  {
    if (v130 == (this + 744))
    {
      *(this + 1256) = 0;
    }

    else if (v130)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v130);
    }
  }

  if (*(this + 179))
  {
    v150 = 0;
    v151 = 0;
    v134 = *(this + 91);
    if (v134)
    {
      do
      {
        v149 = v134;
        v135 = v151;
        if ((HIDWORD(v151) & 0x7FFFFFFFu) <= v151)
        {
          physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<void *,8u>>>::growAndPushBack(&v150, &v149);
        }

        else
        {
          *(v150 + 8 * v151) = v134;
          LODWORD(v151) = v135 + 1;
        }

        v134 = **(this + 91);
        *(this + 91) = v134;
      }

      while (v134);
      v136 = v150;
      v137 = v151;
    }

    else
    {
      v137 = 0;
      v136 = 0;
    }

    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<void *,8u>>>(v136, v137);
    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<void *,8u>>>(*(this + 87), *(this + 176));
    if ((v151 & 0x8000000000000000) == 0 && (v151 & 0x7FFFFFFF00000000) != 0 && v150)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }
  }

  v138 = *(this + 87);
  v139 = *(this + 176);
  if (v139)
  {
    v140 = 8 * v139;
    do
    {
      if (*v138)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      }

      v138 = (v138 + 8);
      v140 -= 8;
    }

    while (v140);
    v138 = *(this + 87);
  }

  v141 = *(this + 177);
  if ((v141 & 0x80000000) == 0 && (v141 & 0x7FFFFFFF) != 0)
  {
    if (v138 == (this + 176))
    {
      *(this + 688) = 0;
    }

    else if (v138)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v138);
    }
  }

  for (i = 0; i != -48; i -= 16)
  {
    v143 = *(this + i + 148);
    if ((v143 & 0x80000000) == 0 && (v143 & 0x7FFFFFFF) != 0 && *(this + i + 136) != 0)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }
  }

  v145 = *(this + 25);
  if ((v145 & 0x80000000) == 0 && (v145 & 0x7FFFFFFF) != 0 && *(this + 11) != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v147 = *(this + 19);
  if ((v147 & 0x80000000) == 0 && (v147 & 0x7FFFFFFF) != 0 && *(this + 8))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v148 = *(this + 4);
  if (v148)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v148 - *(v148 - 8));
  }
}

{
  physx::NpScene::~NpScene(this);
  if (v1)
  {
    v2 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

    v2();
  }
}

void *physx::Cm::DelegateTask<physx::NpScene,&physx::NpScene::executeAdvance>::~DelegateTask(void *result)
{
  *result = &unk_1F5D1C1B0;
  result[2] = 0;
  return result;
}

void *physx::Cm::DelegateTask<physx::NpScene,&physx::NpScene::executeCollide>::~DelegateTask(void *result)
{
  *result = &unk_1F5D1C1B0;
  result[2] = 0;
  return result;
}

void *physx::Cm::DelegateTask<physx::NpScene,&physx::NpScene::executeScene>::~DelegateTask(void *result)
{
  *result = &unk_1F5D1C1B0;
  result[2] = 0;
  return result;
}

void physx::NpScene::SceneCompletion::~SceneCompletion(physx::NpScene::SceneCompletion *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

uint64_t physx::NpScene::release(physx::NpScene *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = 8592;
  if ((*(this + 8624) & 4) == 0)
  {
    v9 = 4284;
  }

  if ((*(this + v9 + 17) & 2) != 0)
  {
    (*(*this + 800))(this, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpScene.cpp", 195);
  }

  if (*(this + 1877))
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpScene.cpp", 203, "PxScene::release(): Scene is still being simulated! PxScene::fetchResults() is called implicitly.", a6, a7, a8, v13);
    v10 = *(this + 1877);
    if (v10 == 1)
    {
      (*(*this + 432))(this, 1);
      v10 = *(this + 1877);
    }

    if (v10 == 2)
    {
      (*(*this + 408))(this, 0);
    }

    (*(*this + 440))(this, 1, 0);
  }

  v11 = physx::NpPhysics::mInstance;

  return physx::NpPhysics::releaseSceneInternal(v11, this);
}

uint64_t physx::NpScene::loadFromDesc(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 96);
  if (v4 && (*(a1 + 9156) & 0x7FFFFFFFu) < v4)
  {
    physx::shdfnd::Array<physx::PxRigidActor *,physx::shdfnd::ReflectionAllocator<physx::PxRigidActor *>>::recreate(a1 + 9144, v4);
    v4 = *(a2 + 96);
  }

  physx::Sc::Scene::preAllocate((a1 + 32), v4, *(a2 + 100), *(a2 + 104), *(a2 + 108));
  *(a1 + 8) = *(a2 + 192);
  return 1;
}

double physx::NpScene::setGravity(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (*(a1 + 7705))
  {
    *(a1 + 8592) = v2;
    result = *(a2 + 1);
    *(a1 + 8596) = result;
    *(a1 + 8624) |= 1u;
  }

  else
  {
    *(a1 + 1984) = v2;
    result = *(a2 + 1);
    *(a1 + 1988) = result;
    *(a1 + 1996) = 1;
  }

  return result;
}

uint64_t physx::NpScene::getGravity@<X0>(uint64_t this@<X0>, _DWORD *a2@<X8>)
{
  v2 = this + 16;
  v3 = 8576;
  v4 = 8580;
  if ((*(this + 8624) & 1) == 0)
  {
    v4 = 1972;
  }

  v5 = 8584;
  if ((*(this + 8624) & 1) == 0)
  {
    v5 = 1976;
  }

  v6 = *(v2 + v5);
  v7 = *(v2 + v4);
  if ((*(this + 8624) & 1) == 0)
  {
    v3 = 1968;
  }

  *a2 = *(v2 + v3);
  a2[1] = v7;
  a2[2] = v6;
  return this;
}

float physx::NpScene::setBounceThresholdVelocity(physx::NpScene *this, float result)
{
  if (*(this + 7705))
  {
    *(this + 2151) = result;
    *(this + 2156) |= 2u;
  }

  else
  {
    result = -result;
    *(*(this + 240) + 120) = result;
  }

  return result;
}

float physx::NpScene::getBounceThresholdVelocity(physx::NpScene *this)
{
  if ((*(this + 8624) & 2) != 0)
  {
    return *(this + 2151);
  }

  else
  {
    return -*(*(this + 240) + 120);
  }
}

uint64_t physx::NpScene::setLimits(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  if (v4 && (*(a1 + 9156) & 0x7FFFFFFFu) < v4)
  {
    physx::shdfnd::Array<physx::PxRigidActor *,physx::shdfnd::ReflectionAllocator<physx::PxRigidActor *>>::recreate(a1 + 9144, v4);
    v4 = *a2;
  }

  physx::Sc::Scene::preAllocate((a1 + 32), v4, *(a2 + 1), *(a2 + 2), *(a2 + 3));
  v5 = *a2;
  *(a1 + 1968) = a2[1];
  *(a1 + 1952) = v5;
  v6 = *(a2 + 2);
  v7 = *(a2 + 3);
  physx::Sq::PrunerExt::preallocate((a1 + 8640), v6);

  return physx::Sq::PrunerExt::preallocate((a1 + 8688), v7);
}

__n128 physx::NpScene::getLimits@<Q0>(__n128 *this@<X0>, __n128 *a2@<X8>)
{
  result = this[122];
  v3 = this[123];
  *a2 = result;
  a2[1] = v3;
  return result;
}

uint64_t physx::NpScene::setFlag(uint64_t result, int a2, int a3)
{
  v3 = *(result + 8624);
  v4 = 8592;
  if ((v3 & 4) == 0)
  {
    v4 = 4284;
  }

  v5 = *(result + v4 + 16);
  v6 = v5 | a2;
  v7 = v5 & ~a2;
  if (a3)
  {
    v7 = v6;
  }

  if (*(result + 7705))
  {
    *(result + 8608) = v7;
    *(result + 8624) = v3 | 4;
  }

  else
  {
    *(result + 4300) = v7;
    v8 = *(result + 1872);
    *(v8 + 2584) = (v7 & 0x40) != 0;
    *(v8 + 2585) = (v7 & 0x100) == 0;
  }

  return result;
}

uint64_t physx::NpScene::getFlags@<X0>(uint64_t this@<X0>, _DWORD *a2@<X8>)
{
  v2 = 8592;
  if ((*(this + 8624) & 4) == 0)
  {
    v2 = 4284;
  }

  *a2 = *(this + v2 + 16);
  return this;
}

void physx::NpScene::addActor(int32x2_t *this, int32x2_t *a2, const physx::PxBVHStructure *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = a2[1].u16[0];
  if (v9 == 5)
  {
    if (a2[10])
    {
      v10 = "PxScene::addActor(): actor is in a pruning structure and cannot be added to a scene directly, use addActors(const PxPruningStructure&)";
      v11 = physx::shdfnd::Foundation::mInstance;
      v12 = 352;
      goto LABEL_5;
    }
  }

  else if (v9 == 6 && *&a2[10])
  {
    v10 = "PxScene::addActor(): actor is in a pruning structure and cannot be added to a scene directly, use addActors(const PxPruningStructure&)";
    v11 = physx::shdfnd::Foundation::mInstance;
    v12 = 344;
LABEL_5:
    physx::shdfnd::Foundation::error(v11, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpScene.cpp", v12, v10, a6, a7, a8, a9);
    return;
  }

  v13 = a2 + *(&physx::NpActor::sLazyInitOffsets + v9 + 18);
  v14 = *(v13 + 2) >> 30;
  if (v14)
  {
    if (v14 != 3 || ((v15 = *v13) != 0 ? (v16 = (v15 - 16)) : (v16 = 0), v16 != this))
    {
      v10 = "PxScene::addActor(): Actor already assigned to a scene. Call will be ignored!";
      v11 = physx::shdfnd::Foundation::mInstance;
      v12 = 360;
      goto LABEL_5;
    }
  }

  physx::NpScene::addActorInternal(this, a2, a3, a4, a5, a6, a7, a8, a9);
}

void physx::NpScene::addActorInternal(int32x2_t *this, int32x2_t *a2, const physx::PxBVHStructure *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a3)
  {
    if (!(*(*a2 + 40))(a2, "PxRigidActor") || !(*(*a3 + 80))(a3) || (v12 = (*(*a3 + 80))(a3), v12 > (*(*a2 + 184))(a2)))
    {
      v13 = "PxRigidActor::setBVHStructure structure is empty or does not match shapes in the actor.";
      v14 = physx::shdfnd::Foundation::mInstance;
      v15 = 4;
      v16 = 371;
LABEL_6:

      physx::shdfnd::Foundation::error(v14, v15, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpScene.cpp", v16, v13, a6, a7, a8, a9);
      return;
    }
  }

  v17 = a2[1].u16[0];
  switch(v17)
  {
    case 5:

      physx::NpScene::addRigidDynamic(this, a2, a3, 0);
      break;
    case 13:
      v13 = "PxScene::addActor(): Individual articulation links can not be added to the scene";
      v14 = physx::shdfnd::Foundation::mInstance;
      v15 = 2;
      v16 = 400;
      goto LABEL_6;
    case 6:

      physx::NpScene::addRigidStatic(this, a2, a3, 0);
      break;
  }
}

void physx::NpScene::addRigidStatic(int32x2_t *this, int32x2_t *a2, const physx::Gu::BVHStructure *a3, unsigned int a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a2 + 12;
  v9 = a2[13].u32[0];
  if (v9)
  {
    v10 = a2[14];
  }

  else
  {
    v10 = &v8[1] + *(&physx::Scb::Actor::sLazyInitOffsets + ((v9 >> 24) & 0xF) + 3) + 4;
  }

  if ((*v10 & 8) != 0)
  {
    physx::Scb::Scene::addRigidNoSim<false,physx::Scb::RigidStatic>(this + 2, v8, this + 982);
    physx::NpShapeManager::setupAllSceneQuery(&a2[5], this, a2, a4, 0, a3, v24, v25, v26, v27, v28, v29, v30, v22, v23);
  }

  else
  {
    v11 = &v33;
    if (a2[6].u16[0] >= 9u)
    {
      v11 = 0;
    }

    if (this[963].i8[1])
    {
      v12 = 0;
    }

    else
    {
      v12 = v11;
    }

    physx::Scb::Scene::addActor(this + 2, v8, 0, v12);
    physx::NpShapeManager::setupAllSceneQuery(&a2[5], this, a2, a4, v12, a3, v15, v16, v17, v18, v19, v20, v21, v13, v14);
    if (a2[4])
    {
      physx::NpActor::addConstraintsToSceneInternal(a2 + 3);
    }
  }

  v31 = this[1144].u32[0];
  a2[11].i32[0] = v31;
  v32 = a2;
  if ((this[1144].i32[1] & 0x7FFFFFFFu) <= v31)
  {
    physx::shdfnd::Array<physx::PxRigidActor *,physx::shdfnd::ReflectionAllocator<physx::PxRigidActor *>>::growAndPushBack(&this[1143], &v32);
  }

  else
  {
    *(*&this[1143] + 8 * v31) = a2;
    this[1144].i32[0] = v31 + 1;
  }
}

void physx::NpScene::addRigidDynamic(int32x2_t *this, int32x2_t *a2, const physx::Gu::BVHStructure *a3, unsigned int a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a2 + 12;
  v9 = a2[13].u32[0];
  if (v9)
  {
    v10 = a2[14];
  }

  else
  {
    v10 = &v8[1] + *(&physx::Scb::Actor::sLazyInitOffsets + ((v9 >> 24) & 0xF) + 3) + 4;
  }

  if ((*v10 & 8) != 0)
  {
    physx::Scb::Scene::addActor(this + 2, v8, 1, 0, a3);
    physx::NpShapeManager::setupAllSceneQuery(&a2[5], this, a2, a4, 0, a3, v24, v25, v26, v27, v28, v29, v30, v22, v23);
  }

  else
  {
    v11 = &v33;
    if (a2[6].u16[0] >= 9u)
    {
      v11 = 0;
    }

    if (this[963].i8[1])
    {
      v12 = 0;
    }

    else
    {
      v12 = v11;
    }

    physx::Scb::Scene::addActor(this + 2, v8, 0, v12, a3);
    physx::NpShapeManager::setupAllSceneQuery(&a2[5], this, a2, a4, v12, a3, v15, v16, v17, v18, v19, v20, v21, v13, v14);
    if (a2[4])
    {
      physx::NpActor::addConstraintsToSceneInternal(a2 + 3);
    }
  }

  v31 = this[1144].u32[0];
  a2[11].i32[0] = v31;
  v32 = a2;
  if ((this[1144].i32[1] & 0x7FFFFFFFu) <= v31)
  {
    physx::shdfnd::Array<physx::PxRigidActor *,physx::shdfnd::ReflectionAllocator<physx::PxRigidActor *>>::growAndPushBack(&this[1143], &v32);
  }

  else
  {
    *(*&this[1143] + 8 * v31) = a2;
    this[1144].i32[0] = v31 + 1;
  }
}

uint64_t physx::NpScene::updateScbStateAndSetupSq(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, unsigned int a5, uint64_t a6, unsigned int a7, uint64_t a8, float32x4_t a9, double a10, double a11, double a12, double a13, double a14, int32x4_t a15)
{
  v29 = result + 16;
  *a3 = result + 16;
  *(a3 + 8) = *(a3 + 8) & 0x3FFFFFFF | 0x80000000;
  v15 = *(a4 + 4);
  if (v15 == 1)
  {
    v16 = a4;
  }

  else
  {
    v16 = *a4;
  }

  if (*(a4 + 4))
  {
    v20 = result;
    v21 = 0;
    v22 = a4 + 2;
    v23 = 8 * v15;
    v24 = a6;
    do
    {
      v25 = v16[v21 / 8];
      v26 = *(v25 + 144);
      atomic_fetch_add((v25 + 32), 1u);
      if ((*(v25 + 264) & 0x80000000) != 0)
      {
        *(v25 + 48) = v29;
        *(v25 + 56) = *(v25 + 56) & 0x3FFFFFFF | 0x80000000;
        if ((v26 & 2) != 0)
        {
LABEL_8:
          if (a6)
          {
            v27 = v24;
          }

          else
          {
            v27 = 0;
          }

          result = physx::Sq::SceneQueryManager::addPrunerShape(v20 + 8640, v25 + 48, a2 + *(&physx::NpActor::sLazyInitOffsets + *(a2 + 8) + 18), a5, *(a4 + 8), v27, a7, a8, a9, a10, a11, a12, a13, a14, a15);
          if (*(a4 + 12) == 1)
          {
            v28 = v22;
          }

          else
          {
            v28 = a4[2];
          }

          v28[v21 / 8] = result;
        }
      }

      else if ((v26 & 2) != 0)
      {
        goto LABEL_8;
      }

      v21 += 8;
      v24 += 24;
    }

    while (v23 != v21);
  }

  return result;
}

void physx::NpScene::addActorsInternal(int32x2_t *this, physx::PxActor **a2, unsigned int a3, const physx::Sq::PruningStructure *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v77 = *MEMORY[0x1E69E9840];
  if (this[938].i32[1])
  {
    v9 = physx::shdfnd::Foundation::mInstance;

    physx::shdfnd::Foundation::error(v9, 2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpScene.cpp", 468, "PxScene::addActors() not allowed while simulation is running.", a6, a7, a8, a9);
    return;
  }

  physx::Sc::Scene::startBatchInsertion(&this[4], v69);
  v70 = xmmword_1E3118220;
  v71 = xmmword_1E3118220;
  v72 = 80;
  v74[192] = 1;
  *v75 = v74;
  v76 = 0x800000000;
  if (!a3)
  {
LABEL_50:
    v20 = 0;
    if (a4)
    {
      goto LABEL_55;
    }

    goto LABEL_56;
  }

  v19 = 0;
  v20 = 1;
  while (1)
  {
    v21 = v19++;
    if (v19 < a3)
    {
      _X8 = a2[v19];
      v23 = ~((_X8 + 383) >> 5) + (_X8 >> 5);
      do
      {
        __asm { PRFM            #0, [X8] }

        _X8 += 32;
      }

      while (!__CFADD__(v23++, 1));
    }

    v28 = a2[v21];
    v29 = v28[1].u16[0];
    v30 = v28 + *(&physx::NpActor::sLazyInitOffsets + v29 + 18);
    v31 = *(v30 + 2) >> 30;
    if (v31)
    {
      if (v31 != 3 || ((v32 = *v30) != 0 ? (v33 = (v32 - 16)) : (v33 = 0), v33 != this))
      {
        v55 = physx::shdfnd::Foundation::mInstance;
        v56 = "PxScene::addActors(): Actor already assigned to a scene. Call will be ignored!";
        v57 = 8;
        v58 = 496;
        goto LABEL_54;
      }
    }

    if (v29 != 5)
    {
      break;
    }

    if (!a4 && *&v28[10])
    {
      v67 = physx::shdfnd::Foundation::mInstance;
      v68 = 537;
LABEL_72:
      physx::shdfnd::Foundation::error(v67, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpScene.cpp", v68, "PxScene::addActors(): actor is in a pruning structure and cannot be added to a scene directly, use addActors(const PxPruningStructure&)", v16, v17, v18, v69[0]);
      a3 = v21;
      goto LABEL_56;
    }

    v36 = v28[13].u32[0];
    if (v36)
    {
      v37 = v28[14];
    }

    else
    {
      v37 = &v28[13] + *(&physx::Scb::Actor::sLazyInitOffsets + ((v36 >> 24) & 0xF) + 3) + 4;
    }

    if ((*v37 & 8) == 0)
    {
      physx::shdfnd::Array<physx::PxBounds3,physx::shdfnd::InlineAllocator<192u,physx::shdfnd::ReflectionAllocator<physx::PxBounds3>>>::resizeUninitialized(v74, v28[6].u16[0] + 1);
      physx::Sc::Scene::addBody(&this[4], v28, v69, *v75, 0);
      v45.i32[0] = v28[46].i32[1];
      v46 = 0;
      if (v45.f32[0] == 0.0)
      {
        v45.i32[0] = v28[43].i32[1];
        if (v45.f32[0] == 0.0)
        {
          v45.i32[0] = v28[44].i32[0];
          if (v45.f32[0] == 0.0)
          {
            v45.i32[0] = v28[44].i32[1];
            if (v45.f32[0] == 0.0)
            {
              v45.i32[0] = v28[45].i32[0];
              if (v45.f32[0] == 0.0)
              {
                v45.i32[0] = v28[45].i32[1];
                if (v45.f32[0] == 0.0)
                {
                  v45.i32[0] = v28[46].i32[0];
                  if (v45.f32[0] == 0.0)
                  {
                    v46 = 1;
                  }
                }
              }
            }
          }
        }
      }

      v47 = *v75;
      v53 = a4 != 0;
      v28[47].i32[0] = v46;
      v48 = &v28[5];
      v49 = this;
      v50 = v28;
      v51 = &v28[12];
      v52 = 1;
LABEL_44:
      physx::NpScene::updateScbStateAndSetupSq(v49, v50, v51, v48, v52, v47, v53, v38, v45, v39, v40, v41, v42, v43, v44);
      v54 = this[1144].u32[0];
      v28[11].i32[0] = v54;
      v73 = v28;
      if ((this[1144].i32[1] & 0x7FFFFFFFu) <= v54)
      {
        physx::shdfnd::Array<physx::PxRigidActor *,physx::shdfnd::ReflectionAllocator<physx::PxRigidActor *>>::growAndPushBack(&this[1143], &v73);
      }

      else
      {
        *(*&this[1143] + 8 * v54) = v28;
        this[1144].i32[0] = v54 + 1;
      }

      if (v28[4])
      {
        physx::NpActor::addConstraintsToSceneInternal(v28 + 3);
      }

      goto LABEL_49;
    }

    physx::NpScene::addRigidDynamic(this, a2[v21], 0, a4 != 0);
LABEL_49:
    v20 = v19 < a3;
    if (v19 == a3)
    {
      goto LABEL_50;
    }
  }

  if (v29 == 6)
  {
    if (!a4 && *&v28[10])
    {
      v67 = physx::shdfnd::Foundation::mInstance;
      v68 = 514;
      goto LABEL_72;
    }

    v34 = v28[13].u32[0];
    if (v34)
    {
      v35 = v28[14];
    }

    else
    {
      v35 = &v28[13] + *(&physx::Scb::Actor::sLazyInitOffsets + ((v34 >> 24) & 0xF) + 3) + 4;
    }

    if ((*v35 & 8) == 0)
    {
      physx::shdfnd::Array<physx::PxBounds3,physx::shdfnd::InlineAllocator<192u,physx::shdfnd::ReflectionAllocator<physx::PxBounds3>>>::resizeUninitialized(v74, v28[6].u16[0] + 1);
      physx::Sc::Scene::addStatic(&this[4], v28, v69, *v75);
      v47 = *v75;
      v48 = &v28[5];
      v49 = this;
      v50 = v28;
      v51 = &v28[12];
      v52 = 0;
      v53 = a4 != 0;
      goto LABEL_44;
    }

    physx::NpScene::addRigidStatic(this, a2[v21], 0, a4 != 0);
    goto LABEL_49;
  }

  v55 = physx::shdfnd::Foundation::mInstance;
  v56 = "PxScene::addRigidActors(): articulation link not permitted";
  v57 = 2;
  v58 = 554;
LABEL_54:
  physx::shdfnd::Foundation::error(v55, v57, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpScene.cpp", v58, v56, v16, v17, v18, v69[0]);
  a3 = v21;
  if (!a4)
  {
    goto LABEL_56;
  }

LABEL_55:
  physx::Sq::SceneQueryManager::addPruningStructure(&this[1080], a4, v14, v15);
LABEL_56:
  physx::Sc::Scene::finishBatchInsertion(&this[4], v69);
  if (v20 && a3)
  {
    v63 = a3;
    do
    {
      v64 = *a2++;
      physx::NpScene::removeActorInternal(this, v64, 0, 1, v59, v60, v61, v62, v69[0]);
      --v63;
    }

    while (v63);
  }

  if ((v76 & 0x8000000000000000) == 0)
  {
    _ZF = (v76 & 0x7FFFFFFF00000000) == 0 || *v75 == v74;
    if (!_ZF && *v75 != 0)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }
}

void physx::NpScene::addActors(int32x2_t *this, const physx::PxPruningStructure *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (*(a2 + 80))
  {
    physx::NpScene::addActorsInternal(this, *(a2 + 9), *(a2 + 16), a2, a5, a6, a7, a8, a9);
  }

  else
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 4, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpScene.cpp", 453, "PxScene::addActors(): Provided pruning structure is not valid.", a6, a7, a8, a9);
  }
}

uint64_t physx::shdfnd::Array<physx::PxBounds3,physx::shdfnd::InlineAllocator<192u,physx::shdfnd::ReflectionAllocator<physx::PxBounds3>>>::resizeUninitialized(uint64_t result, unsigned int a2)
{
  v3 = result;
  if ((*(result + 212) & 0x7FFFFFFFu) < a2)
  {
    result = physx::shdfnd::Array<physx::PxBounds3,physx::shdfnd::InlineAllocator<192u,physx::shdfnd::ReflectionAllocator<physx::PxBounds3>>>::recreate(result, a2);
  }

  *(v3 + 208) = a2;
  return result;
}

uint64_t physx::NpScene::removeActorInternal(int32x2_t *this, physx::PxActor *a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  result = (*(*a2 + 48))(a2);
  if (result == 2)
  {
    v25 = physx::shdfnd::Foundation::mInstance;

    return physx::shdfnd::Foundation::error(v25, 2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpScene.cpp", 690, "PxScene::removeActor(): Individual articulation links can not be removed from the scene", v16, v17, v18, a9);
  }

  else
  {
    if (result == 1)
    {
      v22 = a2 + 96;
      v23 = *(a2 + 26);
      if (v23)
      {
        v24 = *(a2 + 14);
      }

      else
      {
        v24 = &v22[*(&physx::Scb::Actor::sLazyInitOffsets + ((v23 >> 24) & 0xF) + 3) + 12];
      }

      v26 = *v24;
      if (a4)
      {
        v27 = *(a2 + 4);
        if (v27)
        {
          v28 = *(v27 + 80);
          if (v28)
          {
            v29 = (*(v27 + 72) + 8);
            while (*(v29 - 8) != 1)
            {
              v29 += 2;
              if (!--v28)
              {
                goto LABEL_29;
              }
            }

            if (*v29)
            {
              physx::NpAggregate::removeActorAndReinsert(*v29, a2, 0, v14, v15, v16, v17, v18);
            }
          }
        }
      }

LABEL_29:
      physx::NpShapeManager::teardownAllSceneQuery(a2 + 40, this + 1080, a2);
      if ((v26 & 8) == 0)
      {
        physx::NpActor::removeConstraintsFromScene((a2 + 24));
      }

      physx::Scb::Scene::removeActor(this + 2, (a2 + 96), a3, (v22[*(&physx::Scb::Actor::sLazyInitOffsets + (*(a2 + 107) & 0xF) + 3) + 12] & 8) != 0);
      v36 = *(a2 + 22);
      v34 = &v36;
    }

    else
    {
      if (result)
      {
        return result;
      }

      v19 = a2 + 96;
      v20 = *(a2 + 26);
      if (v20)
      {
        v21 = *(a2 + 14);
      }

      else
      {
        v21 = &v19[*(&physx::Scb::Actor::sLazyInitOffsets + ((v20 >> 24) & 0xF) + 3) + 12];
      }

      v30 = *v21;
      if (a4)
      {
        v31 = *(a2 + 4);
        if (v31)
        {
          v32 = *(v31 + 80);
          if (v32)
          {
            v33 = (*(v31 + 72) + 8);
            while (*(v33 - 8) != 1)
            {
              v33 += 2;
              if (!--v32)
              {
                goto LABEL_34;
              }
            }

            if (*v33)
            {
              physx::NpAggregate::removeActorAndReinsert(*v33, a2, 0, v14, v15, v16, v17, v18);
            }
          }
        }
      }

LABEL_34:
      physx::NpShapeManager::teardownAllSceneQuery(a2 + 40, this + 1080, a2);
      if ((v30 & 8) == 0)
      {
        physx::NpActor::removeConstraintsFromScene((a2 + 24));
      }

      physx::Scb::Scene::removeActor(this + 2, a2 + 96, a3, (v19[*(&physx::Scb::Actor::sLazyInitOffsets + (*(a2 + 107) & 0xF) + 3) + 12] & 8) != 0);
      v35 = *(a2 + 22);
      v34 = &v35;
    }

    return physx::NpScene::removeFromRigidActorList(this, v34);
  }
}

void physx::NpScene::removeActors(int32x2_t *this, physx::PxActor *const *a2, unsigned int a3, int a4)
{
  v57 = *MEMORY[0x1E69E9840];
  physx::Sc::Scene::resizeReleasedBodyIDMaps(&this[4], this[1144].i32[0], a3);
  v52 = 0x4000000000;
  v50[512] = 1;
  v51 = v50;
  v56 = 0x4000000000;
  v54 = 1;
  v55 = v53;
  this[551] = v50;
  if (!a3)
  {
    v46 = 64;
    v47 = v53;
    goto LABEL_46;
  }

  v8 = 0;
  v9 = a3;
  while (1)
  {
    v10 = v8 + 1;
    if (v8 + 1 < v9)
    {
      _X8 = a2[v10];
      v12 = ~((_X8 + 383) >> 5) + (_X8 >> 5);
      do
      {
        __asm { PRFM            #0, [X8] }

        _X8 += 32;
        _CF = __CFADD__(v12++, 1);
      }

      while (!_CF);
    }

    v18 = a2[v8];
    v19 = v18[4];
    if ((*(*v18 + 56))(v18) != this)
    {
      physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpScene.cpp", 79, "%s not assigned to scene or assigned to another scene. Call will be ignored!", v20, v21, v22, "PxScene::removeActors(): Actor");
      goto LABEL_45;
    }

    LODWORD(v52) = 0;
    LODWORD(v56) = 0;
    if (v19 == 5)
    {
      v23 = a2[v8];
      v27 = v23 + 96;
      v28 = *(v23 + 26);
      if (v28)
      {
        v29 = *(v23 + 14);
      }

      else
      {
        v29 = &v27[*(&physx::Scb::Actor::sLazyInitOffsets + ((v28 >> 24) & 0xF) + 3) + 12];
      }

      v30 = *v29;
      if (*(v23 + 24))
      {
        v31 = (v23 + 40);
        if (*(v23 + 24) != 1)
        {
          v31 = *(v23 + 5);
        }

        _X8 = *v31;
        v33 = ~((_X8 + 271) >> 5) + (_X8 >> 5);
        do
        {
          __asm { PRFM            #0, [X8] }

          _X8 += 32;
          _CF = __CFADD__(v33++, 1);
        }

        while (!_CF);
      }

      physx::Sc::Scene::prefetchForRemove(&this[4], (v23 + 128));
      _X8 = *(*&this[1143] + 8 * (this[1144].i32[0] - 1));
      v36 = ~((_X8 + 383) >> 5) + (_X8 >> 5);
      do
      {
        __asm { PRFM            #0, [X8] }

        _X8 += 32;
        _CF = __CFADD__(v36++, 1);
      }

      while (!_CF);
      if ((v30 & 8) == 0)
      {
        physx::NpActor::removeConstraintsFromScene((v23 + 24));
      }

      physx::NpShapeManager::teardownAllSceneQuery(v23 + 40, this + 1080, v23);
      physx::Scb::Scene::removeActor(this + 2, (v23 + 96), a4, (v27[*(&physx::Scb::Actor::sLazyInitOffsets + (*(v23 + 107) & 0xF) + 3) + 12] & 8) != 0);
      goto LABEL_40;
    }

    if (v19 != 6)
    {
      break;
    }

    v23 = a2[v8];
    v24 = v23 + 96;
    v25 = *(v23 + 26);
    if (v25)
    {
      v26 = *(v23 + 14);
    }

    else
    {
      v26 = &v24[*(&physx::Scb::Actor::sLazyInitOffsets + ((v25 >> 24) & 0xF) + 3) + 12];
    }

    v38 = *v26;
    if (*(v23 + 24))
    {
      v39 = (v23 + 40);
      if (*(v23 + 24) != 1)
      {
        v39 = *(v23 + 5);
      }

      _X8 = *v39;
      v41 = ~((_X8 + 271) >> 5) + (_X8 >> 5);
      do
      {
        __asm { PRFM            #0, [X8] }

        _X8 += 32;
        _CF = __CFADD__(v41++, 1);
      }

      while (!_CF);
    }

    physx::Sc::Scene::prefetchForRemove(&this[4], v23 + 16);
    _X8 = *(*&this[1143] + 8 * (this[1144].i32[0] - 1));
    v44 = ~((_X8 + 383) >> 5) + (_X8 >> 5);
    do
    {
      __asm { PRFM            #0, [X8] }

      _X8 += 32;
      _CF = __CFADD__(v44++, 1);
    }

    while (!_CF);
    if ((v38 & 8) == 0)
    {
      physx::NpActor::removeConstraintsFromScene((v23 + 24));
    }

    physx::NpShapeManager::teardownAllSceneQuery(v23 + 40, this + 1080, v23);
    physx::Scb::Scene::removeActor(this + 2, v23 + 96, a4, (v24[*(&physx::Scb::Actor::sLazyInitOffsets + (*(v23 + 107) & 0xF) + 3) + 12] & 8) != 0);
LABEL_40:
    v49 = *(v23 + 22);
    physx::NpScene::removeFromRigidActorList(this, &v49);
    v8 = v10;
    if (v10 == v9)
    {
      goto LABEL_45;
    }
  }

  physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpScene.cpp", 652, "PxScene::removeActor(): Individual articulation links can not be removed from the scene", v20, v21, v22, v48);
LABEL_45:
  v47 = v55;
  v46 = HIDWORD(v56);
LABEL_46:
  this[551] = 0;
  if ((v46 & 0x80000000) == 0 && (v46 & 0x7FFFFFFF) != 0)
  {
    if (v47 == v53)
    {
      v54 = 0;
    }

    else if (v47)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }

  if ((v52 & 0x8000000000000000) == 0 && (v52 & 0x7FFFFFFF00000000) != 0 && v51 != v50)
  {
    if (v51)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }
}

uint64_t physx::NpShapeManager::teardownAllSceneQuery(uint64_t this, int32x2_t *a2, const physx::PxRigidActor *a3)
{
  v4 = this;
  v5 = *(this + 8);
  v6 = *(this + 32);
  if (v5 == 1)
  {
    v7 = this;
    if (v6 == -1)
    {
LABEL_13:
      v12 = 0;
      v13 = (this + 16);
      do
      {
        v14 = *(v7 + 8 * v12);
        if ((*(v14 + 56) & 0x40) != 0)
        {
          v15 = (*(v14 + 64) + 52);
        }

        else
        {
          v15 = (v14 + 144);
        }

        v16 = *v15;
        v17 = *(v4 + 24);
        if ((v16 & 2) != 0)
        {
          v18 = v4 + 16;
          if (v17 != 1)
          {
            v18 = *v13;
          }

          this = physx::Sq::SceneQueryManager::removePrunerShape(a2, 0xFFFFFFFFLL, *(v18 + 8 * v12));
          v17 = *(v4 + 24);
        }

        v19 = v4 + 16;
        if (v17 != 1)
        {
          v19 = *v13;
        }

        *(v19 + 8 * v12++) = 0xFFFFFFFFLL;
      }

      while (v5 != v12);
      return this;
    }
  }

  else if (v6 == -1)
  {
    if (!*(this + 8))
    {
      return this;
    }

    v7 = *this;
    goto LABEL_13;
  }

  v8 = (*(a3 + 4) & 0xFFF7) == 5;
  this = (*(**&a2[12] + 8))(*&a2[12]);
  ++a2[6 * v8 + 5].i32[1];
  if (v5)
  {
    v9 = 0;
    v10 = *(v4 + 24);
    do
    {
      v11 = v4 + 16;
      if (v10 != 1)
      {
        v11 = *(v4 + 16);
      }

      *(v11 + v9) = 0xFFFFFFFFLL;
      v9 += 8;
    }

    while (8 * v5 != v9);
  }

  *(v4 + 32) = -1;
  return this;
}

uint64_t physx::NpScene::removeFromRigidActorList(uint64_t this, const unsigned int *a2)
{
  v2 = *a2;
  v3 = *(this + 9144);
  v4 = *(this + 9152) - 1;
  *(this + 9152) = v4;
  *(v3 + 8 * v2) = *(v3 + 8 * v4);
  if (v4)
  {
    v6 = *a2;
    if (v4 != v6)
    {
      v7 = *(*(this + 9144) + 8 * v6);
      this = (*(*v7 + 48))(v7);
      if (this <= 1)
      {
        v7[22] = *a2;
      }
    }
  }

  return this;
}

uint64_t physx::NpScene::removeActor(int32x2_t *this, physx::PxActor *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if ((*(*a2 + 56))(a2) != this)
  {
    return physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpScene.cpp", 79, "%s not assigned to scene or assigned to another scene. Call will be ignored!", v13, v14, v15, "PxScene::removeActor(): Actor");
  }

  return physx::NpScene::removeActorInternal(this, a2, a3, 1, v12, v13, v14, v15, a9);
}

void physx::NpScene::addArticulation(int32x2_t *a1, _WORD *a2)
{
  (*(*a1 + 32))(&v15);
  if ((v15 & 0x2000) != 0)
  {
    if (a2[4] != 12)
    {
      v11 = physx::shdfnd::Foundation::mInstance;
      v12 = "PxScene::addArticulation(): Only Reduced coordinate articulations are currently supported when PxSceneFlag::eENABLE_GPU_DYNAMICS is set!";
      v13 = 816;
      goto LABEL_15;
    }

    v7 = 1;
  }

  else
  {
    v7 = a2[4] == 12;
  }

  if (a1[938].i32[1])
  {
    v8 = !v7;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = (*(*a2 + 200))(a2);
    v10 = *(v9 + 8) >> 30;
    if (!v10 || v10 == 3 && (*v9 - 16) == a1)
    {
      physx::NpScene::addArticulationInternal(a1, a2);
      return;
    }

    v11 = physx::shdfnd::Foundation::mInstance;
    v12 = "PxScene::addArticulation(): Articulation already assigned to a scene. Call will be ignored!";
    v13 = 833;
  }

  else
  {
    v11 = physx::shdfnd::Foundation::mInstance;
    v12 = "PxScene::addArticulation(): this call is not allowed while the simulation is running. Call will be ignored!";
    v13 = 822;
  }

LABEL_15:
  physx::shdfnd::Foundation::error(v11, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpScene.cpp", v13, v12, v4, v5, v6, v14);
}

void physx::NpScene::addArticulationInternal(int32x2_t *a1, uint64_t a2)
{
  v2 = a2;
  v79 = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 152))(a2);
  v5 = (*(*v2 + 200))(v2);
  if (*(v5 + 128))
  {
    v7 = **(v5 + 120);
  }

  else
  {
    v7 = 0;
  }

  v69 = v7;
  checkArticulationLink(v7, v6);
  v8 = *(v69 + 87) != 0.0 || *(v69 + 88) != 0.0 || *(v69 + 89) != 0.0 || *(v69 + 90) != 0.0 || *(v69 + 91) != 0.0 || *(v69 + 92) != 0.0;
  physx::NpScene::addArticulationLinkBody(a1, v69);
  v9 = (*(*v2 + 200))(v2);
  physx::Scb::Scene::add<physx::Scb::Articulation>(a1 + 2, v9, a1 + 1003);
  *(v9 + 76) = *(v9 + 72) == 0.0;
  v10 = v69;
  v68 = v9;
  v11 = *(v9 + 24);
  if (v11)
  {
    v12 = *(v11 + 48);
    if (v12)
    {
      v13 = 0;
      while (*(*(v11 + 40) + 8 * v13) != *(v69 + 16))
      {
        if (v12 == ++v13)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
LABEL_16:
      LODWORD(v13) = 0x80000000;
    }

    v10 = v69;
    *(v69 + 116) = v13;
  }

  v10[58].i32[1] = 0;
  v14 = physx::NpScene::addArticulationLinkConstraint(a1, v10);
  v77[8] = (8 * v4) > 0x400;
  v67 = (8 * v4);
  if ((8 * v4) < 0x401)
  {
    MEMORY[0x1EEE9AC00](v14);
    v15 = (&v67 - ((v16 + 15) & 0x1FFFFFFF0));
    bzero(v15, v16);
  }

  else
  {
    v15 = physx::shdfnd::TempAllocator::allocate(&v78, (8 * v4), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpScene.cpp", 889);
  }

  v73 = v11;
  *v15 = v69;
  v71 = (v4 - 1);
  v76 = v15;
  if (v4 != 1)
  {
    v17 = 0;
    v18 = 1;
    do
    {
      v19 = v15[v17];
      if (*(v19 + 456))
      {
        v20 = *(v19 + 448);
      }

      else
      {
        v20 = 0;
      }

      if ((*(*v19 + 520))(v15[v17]))
      {
        v22 = 0;
        do
        {
          v23 = *(v20 + 8 * v22);
          checkArticulationLink(v23, v21);
          v8 = v8 || v23[87] != 0.0 || v23[88] != 0.0 || v23[89] != 0.0 || v23[90] != 0.0 || v23[91] != 0.0 || v23[92] != 0.0;
          physx::NpScene::addArticulationLink(a1, v23);
          v24 = v76;
          v76[(v18 + v22)] = v23;
          v15 = v24;
          ++v22;
        }

        while (v22 < (*(*v19 + 520))(v19));
        v18 += v22;
      }

      ++v17;
    }

    while (v17 != v71);
  }

  if (*v68[9].i32 == 0.0 && v8)
  {
    physx::PxArticulationImpl::wakeUpInternal(v68, 1, 0);
  }

  v25 = a1[1149].u32[1];
  v26 = v73;
  if (!v25)
  {
    v30 = 0;
    goto LABEL_48;
  }

  v27 = (~(v2 << 32) + v2) ^ ((~(v2 << 32) + v2) >> 22);
  v28 = 9 * ((v27 + ~(v27 << 13)) ^ ((v27 + ~(v27 << 13)) >> 8));
  v29 = (v28 ^ (v28 >> 15)) + ~((v28 ^ (v28 >> 15)) << 27);
  v30 = (v25 - 1) & ((v29 >> 31) ^ v29);
  v31 = *(*&a1[1148] + 4 * v30);
  if (v31 == -1)
  {
LABEL_48:
    if (a1[1151].i32[1] == a1[1149].i32[0])
    {
      if (v25)
      {
        v32 = 2 * v25;
      }

      else
      {
        v32 = 16;
      }

      if (v25 < v32)
      {
        physx::shdfnd::internal::HashBase<physx::Sc::ConstraintSim *,physx::Sc::ConstraintSim *,physx::shdfnd::Hash<physx::Sc::ConstraintSim *>,physx::shdfnd::internal::HashSetBase<physx::Sc::ConstraintSim *,physx::shdfnd::Hash<physx::Sc::ConstraintSim *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(&a1[1145], v32);
        v25 = a1[1149].u32[1];
      }

      v33 = (~(v2 << 32) + v2) ^ ((~(v2 << 32) + v2) >> 22);
      v34 = 9 * ((v33 + ~(v33 << 13)) ^ ((v33 + ~(v33 << 13)) >> 8));
      v35 = (v34 ^ (v34 >> 15)) + ~((v34 ^ (v34 >> 15)) << 27);
      v30 = (v25 - 1) & ((v35 >> 31) ^ v35);
    }

    v36 = a1[1150].u32[1];
    a1[1150].i32[1] = v36 + 1;
    v37 = a1[1148];
    *(*&a1[1147] + 4 * v36) = *(*&v37 + 4 * v30);
    *(*&v37 + 4 * v30) = v36;
    a1[1151] = vadd_s32(a1[1151], 0x100000001);
    *(*&a1[1146] + 8 * v36) = v2;
    goto LABEL_56;
  }

  while (*(*&a1[1146] + 8 * v31) != v2)
  {
    v31 = *(*&a1[1147] + 4 * v31);
    if (v31 == -1)
    {
      goto LABEL_48;
    }
  }

LABEL_56:
  if (v26)
  {
    physx::Sc::ArticulationSim::checkResize(v26);
    *v15 = v69;
    if (v71)
    {
      v38 = 0;
      v39 = 1;
      v72 = a1;
      do
      {
        v40 = v15[v38];
        if (*(v40 + 456))
        {
          v75 = *(v40 + 448);
        }

        else
        {
          v75 = 0;
        }

        if ((*(*v40 + 520))(v40))
        {
          v70 = v38;
          v41 = 0;
          v42 = v75;
          v74 = v39;
          do
          {
            v43 = *(v42 + 8 * v41);
            v44 = (*(*v43 + 528))(v43);
            v43[117] = (*(**v26 + 64))(*v26, v44);
            if (*(v2 + 8) == 12)
            {
              v45 = (*(*v43 + 504))(v43);
              v46 = (*(*v45 + 120))(v45);
              if (v46 != 3)
              {
                v50 = v2;
                if (v46 == 4)
                {
                  physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpScene.cpp", 953, "PxScene::addArticulation(): The application need to set joint type. defaulting joint type to eFix", v47, v48, v49, v67);
                  (*(*v45 + 112))(v45, 3);
                  v43[117] = 0;
                }

                v51 = (*(*v45 + 136))(v45, 3);
                v52 = (*(*v45 + 136))(v45, 4);
                v53 = (*(*v45 + 136))(v45, 5);
                v54 = (*(*v45 + 136))(v45, 1);
                v55 = (*(*v45 + 136))(v45, 2);
                v56 = (v52 | v51 | v53 | v54 | v55 | (*(*v45 + 136))(v45, 0)) == 0;
                v2 = v50;
                a1 = v72;
                v26 = v73;
                v42 = v75;
                v15 = v76;
                LODWORD(v39) = v74;
                if (v56)
                {
                  physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpScene.cpp", 974, "PxScene::addArticulation(): The application need to set joint motion. defaulting joint type to eFix", v57, v58, v59, v67);
                  (*(*v45 + 112))(v45, 3);
                  v43[117] = 0;
                }
              }
            }

            v15[(v39 + v41++)] = v43;
          }

          while (v41 < (*(*v40 + 520))(v40));
          v39 = (v39 + v41);
          v38 = v70;
        }

        ++v38;
      }

      while (v38 != v71);
    }
  }

  if (*(v2 + 8) == 12)
  {
    if (v68[8].i8[0])
    {
      v60 = *(v69 + 16);
      if (v60)
      {
        *(*(v60 + 136) + 159) = 1;
      }
    }

    v61 = v68[3];
    if (v61)
    {
      v62 = a1[242];
      v63 = **&v61;
      v78 = *(*&v61 + 72);
      (*(**&v62 + 64))(v62, v63, &v78);
    }

    if (*(v2 + 192))
    {
      v64 = 0;
      do
      {
        v65 = *(*(v2 + 184) + 8 * v64);
        v66 = (*(*v65 + 208))(v65);
        physx::Sc::ArticulationSim::addLoopConstraint(v26, *(v66 + 136));
        ++v64;
      }

      while (v64 < *(v2 + 192));
    }
  }

  if (v67 >= 0x401)
  {
    physx::shdfnd::TempAllocator::deallocate(v77, v15);
  }
}

void *checkArticulationLink(physx::NpScene *a1, physx::NpArticulationLink *a2)
{
  if ((*(*a1 + 240))(a1, a2) == 0.0)
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpScene.cpp", 845, "PxScene::addArticulation(): Articulation link with zero mass added to scene; defaulting mass to 1", v3, v4, v5, v15);
    (*(*a1 + 232))(a1, 1.0);
  }

  result = (*(*a1 + 264))(&v18, a1);
  if (*&v18 == 0.0 || *(&v18 + 1) == 0.0 || v19 == 0.0)
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpScene.cpp", 852, "PxScene::addArticulation(): Articulation link with zero moment of inertia added to scene; defaulting inertia to (1,1,1)", v7, v8, v9, v15);
    __asm { FMOV            V0.2S, #1.0 }

    v16 = _D0;
    v17 = 1065353216;
    return (*(*a1 + 256))(a1, &v16);
  }

  return result;
}

void physx::NpScene::addArticulationLinkBody(int32x2_t *this, physx::NpArticulationLink *a2)
{
  physx::Scb::Scene::addActor(this + 2, a2 + 96, 0, 0, 0);

  physx::NpShapeManager::setupAllSceneQuery((a2 + 40), this, a2, 0, 0, 0, v6, v7, v8, v9, v10, v11, v12, v4, v5);
}

int32x2_t *physx::NpScene::addArticulationLinkConstraint(int32x2_t *this, int32x2_t *a2)
{
  result = (*(*a2 + 504))(a2);
  if (result)
  {
    v5 = (*(*result + 96))(result);
    result = physx::Scb::Scene::add<physx::Scb::ArticulationJoint>(&this[2], v5, this + 1010);
  }

  if (a2[4])
  {

    return physx::NpActor::addConstraintsToSceneInternal(a2 + 3);
  }

  return result;
}

uint64_t physx::NpScene::addArticulationLink(int32x2_t *this, physx::NpArticulationLink *a2)
{
  physx::NpScene::addArticulationLinkBody(this, a2);
  physx::NpScene::addArticulationLinkConstraint(this, a2);
  v4 = (*(*a2 + 496))(a2);
  result = (*(*v4 + 200))(v4);
  v6 = *(result + 24);
  if (v6)
  {
    v7 = *(v6 + 48);
    if (v7)
    {
      v8 = 0;
      v9 = *(v6 + 40);
      while (*(v9 + 8 * v8) != *(a2 + 16))
      {
        if (v7 == ++v8)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      LODWORD(v8) = 0x80000000;
    }

    *(a2 + 116) = v8;
  }

  return result;
}

void physx::NpScene::removeArticulation(int32x2_t *a1, uint64_t a2, int a3)
{
  if ((*(*a2 + 48))(a2) == a1)
  {

    physx::NpScene::removeArticulationInternal(a1, a2, a3, 1);
  }

  else
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpScene.cpp", 79, "%s not assigned to scene or assigned to another scene. Call will be ignored!", v6, v7, v8, "PxScene::removeArticulation(): Articulation");
  }
}

void physx::NpScene::removeArticulationInternal(int32x2_t *a1, uint64_t a2, int a3, int a4)
{
  v53 = *MEMORY[0x1E69E9840];
  v8 = (*(*a2 + 152))(a2);
  v9 = v8;
  if (a4)
  {
    v8 = (*(*a2 + 192))(a2);
    if (v8)
    {
      v10 = (*(*a2 + 192))(a2);
      v8 = physx::NpAggregate::removeArticulationAndReinsert(v10, a2, 0);
    }
  }

  v50 = (8 * v9);
  if ((8 * v9) < 0x401)
  {
    MEMORY[0x1EEE9AC00](v8);
    v11 = (&v49 - ((v12 + 15) & 0x1FFFFFFF0));
    bzero(v11, v12);
  }

  else
  {
    v11 = physx::shdfnd::TempAllocator::allocate(v52, (8 * v9), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpScene.cpp", 1039);
  }

  v13 = *(*a2 + 200);
  v51 = a2;
  *v11 = **(v13(a2) + 120);
  if (v9 == 1)
  {
    goto LABEL_18;
  }

  v14 = 0;
  v15 = 1;
  do
  {
    v16 = v11[v14];
    if (*(v16 + 456))
    {
      v17 = *(v16 + 448);
    }

    else
    {
      v17 = 0;
    }

    if ((*(*v16 + 520))(v11[v14]))
    {
      v18 = 0;
      do
      {
        v11[(v15 + v18)] = *(v17 + 8 * v18);
        ++v18;
      }

      while (v18 < (*(*v16 + 520))(v16));
      v15 += v18;
    }

    ++v14;
  }

  while (v14 != v9 - 1);
  if (v9 >= 1)
  {
LABEL_18:
    v19 = 0;
    v20 = v9 + 1;
    v21 = &v11[v9 - 1];
    do
    {
      v22 = *v21;
      v23 = *(*v21 + 172);
      v24 = (*(**v21 + 504))(*v21);
      physx::NpActor::removeConstraintsFromScene((v22 + 24));
      physx::NpShapeManager::teardownAllSceneQuery(v22 + 40, a1 + 1080, v22);
      if (v24)
      {
        v25 = (*(*v24 + 96))(v24);
        physx::Scb::Scene::remove<physx::Scb::ArticulationJoint>(&a1[2], v25, a1 + 1010);
      }

      v19 |= v23;
      physx::Scb::Scene::removeActor(a1 + 2, (v22 + 96), a3, 0);
      --v20;
      --v21;
    }

    while (v20 > 1);
    if ((v19 & 0x20) != 0)
    {
      v26 = *((*(*v51 + 200))(v51) + 24);
      if (v26)
      {
        v27 = *(v26 + 72);
        if (v27 <= 0xFFFFFF7F && 32 * a1[959].i32[0] > v27 >> 7)
        {
          *(*&a1[958] + ((v27 >> 10) & 0x3FFFFC)) &= ~(1 << (v27 >> 7));
        }
      }
    }
  }

  v28 = v51;
  v29 = (*(*v51 + 200))(v51);
  physx::Scb::Scene::removeArticulation(a1 + 2, v29);
  v30 = v50;
  if (a1[1151].i32[1])
  {
    v31 = (~(v28 << 32) + v28) ^ ((~(v28 << 32) + v28) >> 22);
    v32 = 9 * ((v31 + ~(v31 << 13)) ^ ((v31 + ~(v31 << 13)) >> 8));
    v33 = (v32 ^ (v32 >> 15)) + ~((v32 ^ (v32 >> 15)) << 27);
    v34 = (*&a1[1148] + 4 * ((a1[1149].i32[1] - 1) & ((v33 >> 31) ^ v33)));
    v35 = *v34;
    if (v35 != -1)
    {
      v36 = a1[1146];
      v37 = a1[1147];
      if (*(*&v36 + 8 * v35) == v28)
      {
LABEL_33:
        *v34 = *(*&v37 + 4 * v35);
        v39 = vadd_s32(a1[1151], 0xFFFFFFFF00000001);
        a1[1151] = v39;
        if (v35 != v39.i32[1])
        {
          *(*&v36 + 8 * v35) = *(*&v36 + 8 * v39.u32[1]);
          v40 = a1[1147];
          *(*&v40 + 4 * v35) = *(*&v40 + 4 * v39.u32[1]);
          v41 = *(*&a1[1146] + 8 * v35);
          v42 = (~(v41 << 32) + v41) ^ ((~(v41 << 32) + v41) >> 22);
          v43 = 9 * ((v42 + ~(v42 << 13)) ^ ((v42 + ~(v42 << 13)) >> 8));
          v44 = (v43 ^ (v43 >> 15)) + ~((v43 ^ (v43 >> 15)) << 27);
          v45 = (*&a1[1148] + 4 * ((a1[1149].i32[1] - 1) & ((v44 >> 31) ^ v44)));
          v46 = a1[1151].u32[1];
          v47 = *v45;
          if (v47 != v46)
          {
            do
            {
              v48 = v47;
              v47 = *(*&v40 + 4 * v47);
            }

            while (v47 != v46);
            v45 = (*&v40 + 4 * v48);
          }

          *v45 = v35;
        }

        --a1[1150].i32[1];
      }

      else
      {
        while (1)
        {
          v38 = v35;
          v35 = *(*&v37 + 4 * v35);
          if (v35 == -1)
          {
            break;
          }

          if (*(*&v36 + 8 * v35) == v28)
          {
            v34 = (*&v37 + 4 * v38);
            goto LABEL_33;
          }
        }
      }
    }
  }

  if (v30 >= 0x401)
  {
    physx::shdfnd::TempAllocator::deallocate(v52, v11);
  }
}

void physx::NpShapeManager::setupAllSceneQuery(physx::NpShapeManager *this, uint64_t a2, physx::PxRigidActor *a3, unsigned int a4, uint64_t a5, physx::Gu::BVHStructure *a6, float32x4_t a7, double a8, double a9, double a10, double a11, double a12, int32x4_t a13, uint64_t a14, uint64_t a15)
{
  v19 = *(this + 4);
  if (v19 == 1)
  {
    v20 = this;
    if (!a6)
    {
LABEL_10:
      v22 = 0;
      v23 = *(a3 + 4) & 0xFFF7;
      v24 = (this + 16);
      v25 = a5;
      do
      {
        v26 = *(v20 + v22);
        if ((*(v26 + 56) & 0x40) != 0)
        {
          v27 = (*(v26 + 64) + 52);
        }

        else
        {
          v27 = (v26 + 144);
        }

        if ((*v27 & 2) != 0)
        {
          if (a5)
          {
            v28 = v25;
          }

          else
          {
            v28 = 0;
          }

          v29 = physx::Sq::SceneQueryManager::addPrunerShape(a2 + 8640, v26 + 48, a3 + *(&physx::NpActor::sLazyInitOffsets + *(a3 + 4) + 18), v23 == 5, *(this + 8), v28, a4, a15, a7, a8, a9, a10, a11, a12, a13);
          v30 = this + 16;
          if (*(this + 12) != 1)
          {
            v30 = *v24;
          }

          *&v30[8 * v22] = v29;
        }

        ++v22;
        v25 += 24;
      }

      while (v19 != v22);
      return;
    }
  }

  else if (!a6)
  {
    if (!*(this + 4))
    {
      return;
    }

    v20 = *this;
    goto LABEL_10;
  }

  v21 = (a2 + 8640);

  physx::NpShapeManager::addBVHStructureShapes(this, v21, a3, a6);
}

int32x2_t physx::NpScene::addAggregate(int32x2_t *this, physx::PxAggregate *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = *(a2 + 16);
  v12 = *(a2 + 6) >> 30;
  if (v12 && (v12 != 3 || (*(a2 + 2) - 16) != this))
  {
    v13 = physx::shdfnd::Foundation::mInstance;

    physx::shdfnd::Foundation::error(v13, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpScene.cpp", 1180, "PxScene::addAggregate(): Aggregate already assigned to a scene. Call will be ignored!", a6, a7, a8, a9);
    return result;
  }

  physx::Scb::Scene::addAggregate(this + 2, a2 + 16);
  if (v11)
  {
    v15 = 0;
    do
    {
      v16 = *(*(a2 + 9) + v15);
      v17 = *(&physx::NpActor::sLazyInitOffsets + v16[4]);
      v36 = 0;
      if (physx::NpActor::getConnectors<physx::Gu::BVHStructure>(v16 + v17, 3, &v36, 1u, 0))
      {
        physx::NpActor::removeConnector(v16 + v17, v16, 3, v36);
      }

      physx::NpAggregate::addActorInternal(a2, v16, this, v36, v18, v19, v20, v21, v35);
      v22 = v36;
      if (v36 && atomic_fetch_add(v36 + 6, 0xFFFFFFFF) == 1)
      {
        (*(*(v22 + 2) + 16))();
      }

      v15 += 8;
    }

    while (8 * v11 != v15);
  }

  v23 = this[1156].u32[1];
  if (!v23)
  {
    v27 = 0;
    goto LABEL_21;
  }

  v24 = (a2 + ~(a2 << 32)) ^ ((a2 + ~(a2 << 32)) >> 22);
  v25 = 9 * ((v24 + ~(v24 << 13)) ^ ((v24 + ~(v24 << 13)) >> 8));
  v26 = (v25 ^ (v25 >> 15)) + ~((v25 ^ (v25 >> 15)) << 27);
  v27 = (v23 - 1) & ((v26 >> 31) ^ v26);
  v28 = *(*&this[1155] + 4 * v27);
  if (v28 == -1)
  {
LABEL_21:
    if (this[1158].i32[1] == this[1156].i32[0])
    {
      if (v23)
      {
        v29 = 2 * v23;
      }

      else
      {
        v29 = 16;
      }

      if (v23 < v29)
      {
        physx::shdfnd::internal::HashBase<physx::Sc::ConstraintSim *,physx::Sc::ConstraintSim *,physx::shdfnd::Hash<physx::Sc::ConstraintSim *>,physx::shdfnd::internal::HashSetBase<physx::Sc::ConstraintSim *,physx::shdfnd::Hash<physx::Sc::ConstraintSim *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(&this[1152], v29);
        v23 = this[1156].u32[1];
      }

      v30 = (a2 + ~(a2 << 32)) ^ ((a2 + ~(a2 << 32)) >> 22);
      v31 = 9 * ((v30 + ~(v30 << 13)) ^ ((v30 + ~(v30 << 13)) >> 8));
      v32 = (v31 ^ (v31 >> 15)) + ~((v31 ^ (v31 >> 15)) << 27);
      v27 = (v23 - 1) & ((v32 >> 31) ^ v32);
    }

    v33 = this[1157].u32[1];
    this[1157].i32[1] = v33 + 1;
    v34 = this[1155];
    *(*&this[1154] + 4 * v33) = *(*&v34 + 4 * v27);
    *(*&v34 + 4 * v27) = v33;
    result = vadd_s32(this[1158], 0x100000001);
    this[1158] = result;
    *(*&this[1153] + 8 * v33) = a2;
    return result;
  }

  while (*(*&this[1153] + 8 * v28) != a2)
  {
    v28 = *(*&this[1154] + 4 * v28);
    if (v28 == -1)
    {
      goto LABEL_21;
    }
  }

  return result;
}

void physx::NpScene::removeAggregate(int32x2_t *this, int32x2_t *a2, int a3)
{
  if ((*(*a2 + 104))(a2) == this)
  {
    if ((*(*a2 + 104))(a2) == this)
    {
      v9 = a2[8].u32[0];
      if (v9)
      {
        for (i = 0; i != v9; ++i)
        {
          v11 = *(*&a2[9] + 8 * i);
          if ((*(*v11 + 48))(v11) == 2)
          {
            if ((*(*v11 + 56))(v11))
            {
              v12 = *(v11 + 48);
              v13 = *((*(*v12 + 200))(v12) + 120);
              if ((*(*v12 + 152))(v12))
              {
                v14 = 0;
                do
                {
                  physx::Scb::Aggregate::removeActor(a2 + 2, *(v13 + 8 * v14++) + 96, 0);
                }

                while (v14 < (*(*v12 + 152))(v12));
              }

              physx::NpScene::removeArticulationInternal(this, v12, a3, 0);
            }
          }

          else
          {
            physx::Scb::Aggregate::removeActor(a2 + 2, v11 + *(&physx::NpActor::sLazyInitOffsets + *(v11 + 4) + 18), 0);
            physx::NpScene::removeActorInternal(this, v11, a3, 0, v15, v16, v17, v18, v37);
          }
        }
      }

      physx::Scb::Scene::removeAggregate(this + 2, &a2[2]);
      if (this[1158].i32[1])
      {
        v19 = (a2 + ~(a2 << 32)) ^ ((a2 + ~(a2 << 32)) >> 22);
        v20 = 9 * ((v19 + ~(v19 << 13)) ^ ((v19 + ~(v19 << 13)) >> 8));
        v21 = (v20 ^ (v20 >> 15)) + ~((v20 ^ (v20 >> 15)) << 27);
        v22 = (*&this[1155] + 4 * ((this[1156].i32[1] - 1) & ((v21 >> 31) ^ v21)));
        v23 = *v22;
        if (v23 != -1)
        {
          v24 = this[1153];
          v25 = this[1154];
          if (*(*&v24 + 8 * v23) == a2)
          {
LABEL_21:
            *v22 = *(*&v25 + 4 * v23);
            v27 = vadd_s32(this[1158], 0xFFFFFFFF00000001);
            this[1158] = v27;
            if (v23 != v27.i32[1])
            {
              *(*&v24 + 8 * v23) = *(*&v24 + 8 * v27.u32[1]);
              v28 = this[1154];
              *(*&v28 + 4 * v23) = *(*&v28 + 4 * v27.u32[1]);
              v29 = *(*&this[1153] + 8 * v23);
              v30 = (~(v29 << 32) + v29) ^ ((~(v29 << 32) + v29) >> 22);
              v31 = 9 * ((v30 + ~(v30 << 13)) ^ ((v30 + ~(v30 << 13)) >> 8));
              v32 = (v31 ^ (v31 >> 15)) + ~((v31 ^ (v31 >> 15)) << 27);
              v33 = (*&this[1155] + 4 * ((this[1156].i32[1] - 1) & ((v32 >> 31) ^ v32)));
              v34 = this[1158].u32[1];
              v35 = *v33;
              if (v35 != v34)
              {
                do
                {
                  v36 = v35;
                  v35 = *(*&v28 + 4 * v35);
                }

                while (v35 != v34);
                v33 = (*&v28 + 4 * v36);
              }

              *v33 = v23;
            }

            --this[1157].i32[1];
          }

          else
          {
            while (1)
            {
              v26 = v23;
              v23 = *(*&v25 + 4 * v23);
              if (v23 == -1)
              {
                break;
              }

              if (*(*&v24 + 8 * v23) == a2)
              {
                v22 = (*&v25 + 4 * v26);
                goto LABEL_21;
              }
            }
          }
        }
      }
    }
  }

  else
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpScene.cpp", 79, "%s not assigned to scene or assigned to another scene. Call will be ignored!", v6, v7, v8, "PxScene::removeAggregate(): Aggregate");
  }
}

uint64_t physx::NpScene::getAggregates(physx::NpScene *this, physx::PxAggregate **a2, unsigned int a3, unsigned int a4)
{
  v5 = (*(this + 2317) - a4) & ~((*(this + 2317) - a4) >> 31);
  if (v5 >= a3)
  {
    result = a3;
  }

  else
  {
    result = v5;
  }

  if (result)
  {
    v7 = (*(this + 1153) + 8 * a4);
    v8 = result;
    do
    {
      v9 = *v7++;
      *a2++ = v9;
      --v8;
    }

    while (v8);
  }

  return result;
}

void physx::NpScene::addCollection(int32x2_t *a1, uint64_t a2)
{
  v2 = *(a2 + 116);
  v15 = 0;
  *v16 = 0;
  if (v2)
  {
    physx::shdfnd::Array<physx::PxActor *,physx::shdfnd::ReflectionAllocator<physx::PxActor *>>::recreate(&v15, v2);
    v9 = 0;
    v10 = 16 * v2;
    do
    {
      v11 = *(*(a2 + 72) + v9);
      v12 = *(v11 + 8);
      if (v12 > 0xA)
      {
        if (v12 == 11 || v12 == 12)
        {
          if (!(*(*v11 + 192))(*(*(a2 + 72) + v9)))
          {
            (*(*a1 + 72))(a1, v11);
          }
        }

        else if (v12 == 16)
        {
          (*(*a1 + 104))(a1, *(*(a2 + 72) + v9));
        }
      }

      else if (v12 == 5 || v12 == 6)
      {
        if (!*(v11 + 80))
        {
          physx::NpScene::addCollection(physx::PxCollection const&)::Local::addActorIfNeeded(*(*(a2 + 72) + v9), &v15);
        }
      }

      else if (v12 == 10)
      {
        (*(*a1 + 128))(a1, *(*(a2 + 72) + v9));
      }

      v9 += 16;
    }

    while (v10 != v9);
    v13 = v15;
    if (v16[0])
    {
      physx::NpScene::addActorsInternal(a1, v15, v16[0], 0, v5, v6, v7, v8, v15);
      v13 = v15;
    }
  }

  else
  {
    v13 = 0;
  }

  if ((v16[1] & 0x80000000) == 0 && (v16[1] & 0x7FFFFFFF) != 0 && v13 != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v13);
  }
}

uint64_t physx::NpScene::addCollection(physx::PxCollection const&)::Local::addActorIfNeeded(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  result = (*(*a1 + 144))(a1);
  if (!result)
  {
    v5 = *(a2 + 8);
    if ((*(a2 + 12) & 0x7FFFFFFFu) <= v5)
    {
      return physx::shdfnd::Array<physx::PxActor *,physx::shdfnd::ReflectionAllocator<physx::PxActor *>>::growAndPushBack(a2, &v6);
    }

    else
    {
      *(*a2 + 8 * v5) = a1;
      *(a2 + 8) = v5 + 1;
    }
  }

  return result;
}

uint64_t physx::NpScene::getNbActors(uint64_t a1, __int16 *a2)
{
  v3 = *a2;
  if ((*a2 & 1) != 0 && (v4 = *(a1 + 9152), v4))
  {
    LODWORD(result) = 0;
    v6 = 8 * v4;
    do
    {
      v7 = *(*(a1 + 9144) - 8 + v6);
      if (v7)
      {
        v8 = *(v7 + 8) == 6;
      }

      else
      {
        v8 = 0;
      }

      if (v8)
      {
        result = (result + 1);
      }

      else
      {
        result = result;
      }

      v6 -= 8;
    }

    while (v6);
    if ((v3 & 2) == 0)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if ((v3 & 2) == 0)
    {
      return result;
    }
  }

  v9 = *(a1 + 9152);
  if (v9)
  {
    v10 = *(a1 + 9144);
    v11 = 8 * v9;
    v12 = v10 - 8;
    do
    {
      v13 = *(v12 + v11);
      if (v13)
      {
        v14 = *(v13 + 8) == 5;
      }

      else
      {
        v14 = 0;
      }

      if (v14)
      {
        result = (result + 1);
      }

      else
      {
        result = result;
      }

      v11 -= 8;
    }

    while (v11);
  }

  return result;
}

unint64_t physx::NpScene::getActors(uint64_t a1, __int16 *a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  v5 = *a2;
  if ((*a2 & 3) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (a4)
  {
    v7 = *(a1 + 9152);
    if (v7)
    {
      v8 = 0;
      v6 = 0;
      v9 = 0;
      do
      {
        if ((v5 & 1) != 0 && ((v10 = *(*(a1 + 9144) + 8 * v8)) != 0 ? (v11 = *(v10 + 8) == 6) : (v11 = 0), v11) || (v5 & 2) != 0 && ((v10 = *(*(a1 + 9144) + 8 * v8)) != 0 ? (v12 = *(v10 + 8) == 5) : (v12 = 0), v12))
        {
          if (v9 >= a5)
          {
            *(a3 + 8 * v6++) = v10;
          }

          ++v9;
        }

        ++v8;
      }

      while (v8 < v7 && v6 < a4);
    }
  }

  return v6;
}

uint64_t physx::NpScene::getActiveActors(physx::NpScene *this, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 7705))
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/buffering/ScbScene.h", 704, "PxScene::getActiveActors() not allowed while simulation is running. Call will be ignored.", a6, a7, a8, v11);
    result = 0;
    *a2 = 0;
  }

  else
  {
    v10 = *(this + 1054);
    *a2 = v10;
    if (v10)
    {
      return *(this + 526);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t physx::NpScene::getFrozenActors(physx::NpScene *this, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 7705))
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/buffering/ScbScene.h", 721, "PxScene::getFrozenActors() not allowed while simulation is running. Call will be ignored.", a6, a7, a8, v11);
    result = 0;
    *a2 = 0;
  }

  else
  {
    v10 = *(this + 1058);
    *a2 = v10;
    if (v10)
    {
      return *(this + 528);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t physx::NpScene::getArticulations(uint64_t a1, void *a2, unsigned int a3, unsigned int a4)
{
  v5 = (*(a1 + 9212) - a4) & ~((*(a1 + 9212) - a4) >> 31);
  if (v5 >= a3)
  {
    result = a3;
  }

  else
  {
    result = v5;
  }

  if (result)
  {
    v7 = (*(a1 + 9168) + 8 * a4);
    v8 = result;
    do
    {
      v9 = *v7++;
      *a2++ = v9;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t physx::NpScene::getConstraints(physx::NpScene *this, physx::PxConstraint **a2, unsigned int a3, unsigned int a4)
{
  v5 = (*(this + 2285) - a4) & ~((*(this + 2285) - a4) >> 31);
  if (v5 >= a3)
  {
    result = a3;
  }

  else
  {
    result = v5;
  }

  if (result)
  {
    v7 = (*(this + 1137) + 8 * a4);
    v8 = result;
    do
    {
      v9 = *v7++;
      *a2++ = v9;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t physx::NpScene::getRenderBuffer(physx::NpScene *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 1877))
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpScene.cpp", 1449, "PxScene::getRenderBuffer() not allowed while simulation is running.", a6, a7, a8, v10);
  }

  return this + 9000;
}

void physx::NpScene::getSimulationStatistics(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (*(a1 + 7508))
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpScene.cpp", 1552, "PxScene::getSimulationStatistics() not allowed while simulation is running. Call will be ignored.", a6, a7, a8, a9);
  }

  else
  {
    physx::Sc::Scene::getStats(a1 + 32, a2);
  }
}

uint64_t physx::NpScene::createClient(physx::NpScene *this)
{
  ++*(this + 2335);
  if ((*(this + 7705) & 1) == 0)
  {
    return physx::Sc::Scene::createClient((this + 32));
  }

  v1 = *(this + 1050);
  v2 = *(this + 2155);
  *(this + 2155) = v2 + 1;
  return (v2 + v1);
}

uint64_t physx::NpScene::setSimulationEventCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (*(a1 + 7705))
  {
    return physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/buffering/ScbScene.h", 503, "PxScene::setSimulationEventCallback() not allowed while simulation is running. Call will be ignored.", a6, a7, a8, a9);
  }

  else
  {
    return physx::Sc::Scene::setSimulationEventCallback(a1 + 32, a2);
  }
}

uint64_t physx::NpScene::setContactModifyCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (*(a1 + 7705))
  {
    return physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/buffering/ScbScene.h", 516, "PxScene::setContactModifyCallback() not allowed while simulation is running. Call will be ignored.", a6, a7, a8, a9);
  }

  v10 = *(a1 + 1872);
  *(v10 + 1768) = a2;
  return (*(**(v10 + 1776) + 176))();
}

uint64_t physx::NpScene::setCCDContactModifyCallback(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (*(result + 7705))
  {
    return physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/buffering/ScbScene.h", 529, "PxScene::setCCDContactModifyCallback() not allowed while simulation is running. Call will be ignored.", a6, a7, a8, a9);
  }

  *(*(result + 1896) + 168) = a2;
  return result;
}

uint64_t physx::NpScene::setBroadPhaseCallback(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (*(result + 7705))
  {
    return physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/buffering/ScbScene.h", 555, "PxScene::setBroadPhaseCallback() not allowed while simulation is running. Call will be ignored.", a6, a7, a8, a9);
  }

  *(result + 4280) = a2;
  return result;
}

uint64_t physx::NpScene::setCCDMaxPasses(uint64_t this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (*(this + 7705))
  {
    return physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/buffering/ScbScene.h", 542, "PxScene::setCCDMaxPasses() not allowed while simulation is running. Call will be ignored.", a6, a7, a8, a9);
  }

  *(*(this + 1896) + 436) = a2;
  return this;
}

uint64_t physx::NpScene::addBroadPhaseRegion(uint64_t a1, float *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a2 <= a2[3])
  {
    v11 = a1 + 16;

    return physx::Scb::Scene::addBroadPhaseRegion(v11, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 4, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpScene.cpp", 1683, "PxScene::addBroadPhaseRegion(): region bounds are empty. Call will be ignored.", a6, a7, a8, v8);
    return 0xFFFFFFFFLL;
  }
}

void *physx::NpScene::setFilterShaderData(physx::NpScene *this, const void *a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (*(this + 7705))
  {
    return physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/buffering/ScbScene.h", 565, "PxScene::setFilterShaderData() not allowed while simulation is running. Call will be ignored.", a6, a7, a8, a9);
  }

  else
  {
    return physx::Sc::Scene::setFilterShaderData(this + 4, a2, a3, a4, a5, a6, a7, a8, a9);
  }
}

void physx::NpScene::resetFiltering(physx::NpScene *this, int32x2_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = a2[1].u16[0];
  switch(v10)
  {
    case 5:
      physx::NpRigidActorTemplate<physx::PxRigidStatic>::resetFiltering(a2, &a2[12], 0, 0);
      if ((a2[47].i8[5] & 0x40) != 0)
      {
        v13 = (*&a2[14] + 348);
      }

      else
      {
        v13 = &a2[21] + 4;
      }

      if ((*v13 & 1) == 0)
      {

        physx::NpRigidDynamic::wakeUpInternalNoKinematicTest(a2, &a2[12], 0, 1);
      }

      break;
    case 13:
      physx::NpRigidActorTemplate<physx::PxRigidStatic>::resetFiltering(a2, &a2[12], 0, 0);
      v12 = (*(**&a2[48] + 200))(*&a2[48]);

      physx::PxArticulationImpl::wakeUpInternal(v12, 0, 1);
      break;
    case 6:
      v11 = a2 + 12;

      physx::NpRigidActorTemplate<physx::PxRigidStatic>::resetFiltering(a2, v11, 0, 0);
      break;
    default:
      v14 = physx::shdfnd::Foundation::mInstance;

      physx::shdfnd::Foundation::error(v14, 4, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpScene.cpp", 1768, "PxScene::resetFiltering(): only PxRigidActor supports this operation!", a6, a7, a8, a9);
      break;
  }
}

void physx::NpRigidActorTemplate<physx::PxRigidStatic>::resetFiltering(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v33 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    a4 = *(a1 + 48);
  }

  v8 = (8 * a4);
  v32 = v8 > 0x400;
  if (v8 > 0x400)
  {
    v18 = physx::shdfnd::TempAllocator::allocate(&v30, (8 * a4), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpRigidActorTemplate.h", 417);
    v31 = v18;
    if (!v18)
    {
      goto LABEL_49;
    }

    if (!a3)
    {
      goto LABEL_24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v18 = &v29[-((v8 + 15) & 0x1FFFFFFF0)];
    bzero(v18, (8 * a4));
    v31 = &v29[-((v8 + 15) & 0x1FFFFFFF0)];
    if (!a3)
    {
LABEL_24:
      v19 = (a1 + 40);
      if (*(a1 + 48) != 1)
      {
        v19 = *v19;
      }

      if (!a4)
      {
        return;
      }

      v20 = 0;
      v10 = 0;
      while (1)
      {
        v21 = v19[v20];
        v22 = *(v21 + 56);
        if ((v22 & 0x40) != 0)
        {
          v23 = (*(v21 + 64) + 52);
        }

        else
        {
          v23 = (v21 + 144);
        }

        if ((*v23 & 5) == 0)
        {
          goto LABEL_34;
        }

        v24 = v21 + 48;
        v25 = *(a2 + 8);
        if ((v25 & 8) != 0)
        {
          if ((v22 & 0xF000000) == 0x1000000)
          {
            if (v22 >> 30 == 1)
            {
              goto LABEL_34;
            }
          }

          else
          {
            Stream = *(a2 + 16);
            if (!Stream)
            {
              Stream = physx::Scb::Scene::getStream(*a2, HIBYTE(v25) & 0xF);
              *(a2 + 16) = Stream;
            }

            v27 = *(Stream + 56);
            if (v27)
            {
              v28 = *(Stream + 48);
              while (*v28 != v24)
              {
                ++v28;
                if (!--v27)
                {
                  goto LABEL_33;
                }
              }

              goto LABEL_34;
            }
          }
        }

LABEL_33:
        v18[v10++] = v24;
LABEL_34:
        if (++v20 == a4)
        {
          goto LABEL_46;
        }
      }
    }
  }

  if (!a4)
  {
    return;
  }

  v9 = 0;
  v10 = 0;
  do
  {
    v11 = *(a3 + 8 * v9);
    v12 = v11 + 48;
    v13 = *(a2 + 8);
    if ((v13 & 8) == 0)
    {
LABEL_10:
      v18[v10++] = v12;
      goto LABEL_11;
    }

    v14 = *(v11 + 56);
    if ((v14 & 0xF000000) == 0x1000000)
    {
      if (v14 >> 30 != 1)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v15 = *(a2 + 16);
      if (!v15)
      {
        v15 = physx::Scb::Scene::getStream(*a2, HIBYTE(v13) & 0xF);
        *(a2 + 16) = v15;
      }

      v16 = *(v15 + 56);
      if (!v16)
      {
        goto LABEL_10;
      }

      v17 = *(v15 + 48);
      while (*v17 != v12)
      {
        ++v17;
        if (!--v16)
        {
          goto LABEL_10;
        }
      }
    }

LABEL_11:
    ++v9;
  }

  while (v9 != a4);
LABEL_46:
  if (v10)
  {
    physx::Scb::RigidObject::resetFiltering(a2, v18, v10);
  }

  if (v8 >= 0x401)
  {
LABEL_49:
    physx::shdfnd::TempAllocator::deallocate(&v31, v18);
  }
}

void physx::NpScene::resetFiltering(physx::NpScene *this, int32x2_t *a2, physx::PxShape *const *a3, int a4)
{
  v5 = a2[1].u16[0];
  switch(v5)
  {
    case 5:
      physx::NpRigidActorTemplate<physx::PxRigidStatic>::resetFiltering(a2, &a2[12], a3, a4);
      if ((a2[47].i8[5] & 0x40) != 0)
      {
        v8 = (*&a2[14] + 348);
      }

      else
      {
        v8 = &a2[21] + 4;
      }

      if ((*v8 & 1) == 0)
      {

        physx::NpRigidDynamic::wakeUpInternalNoKinematicTest(a2, &a2[12], 0, 1);
      }

      break;
    case 13:
      physx::NpRigidActorTemplate<physx::PxRigidStatic>::resetFiltering(a2, &a2[12], a3, a4);
      v7 = (*(**&a2[48] + 200))(*&a2[48]);

      physx::PxArticulationImpl::wakeUpInternal(v7, 0, 1);
      break;
    case 6:
      v6 = a2 + 12;

      physx::NpRigidActorTemplate<physx::PxRigidStatic>::resetFiltering(a2, v6, a3, a4);
      break;
  }
}

uint64_t physx::NpScene::simulateOrCollide(uint64_t a1, uint64_t a2, char *a3, int a4, int a5, char *a6, uint64_t a7, uint64_t a8, float a9, char a10)
{
  if (*(a1 + 7508))
  {
    v10 = physx::shdfnd::Foundation::mInstance;

    return physx::shdfnd::Foundation::error(v10, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpScene.cpp", 1860, a6, a6, a7, a8, a10);
  }

  v12 = a7;
  v18 = (a1 + 7705);
  *(a1 + 9016) = 0;
  *(a1 + 9032) = 0;
  *(a1 + 9048) = 0;
  *(a1 + 9064) = 0;
  *(a1 + 9080) = 0;
  if ((*(*a1 + 560))(a1, 0) != 0.0)
  {
    memset(v107, 0, sizeof(v107));
    v109 = 0;
    v110 = 0;
    v108 = 0x3F80000000000000;
    v113 = 0;
    v112 = 0;
    v111 = 1065353216;
    v114 = 1065353216;
    v115 = 0;
    v116 = 0;
    v117 = 1065353216;
    v118 = a1 + 9000;
    v27 = (*(*a1 + 560))(a1, 1);
    if (v27 != 0.0)
    {
      *v104 = v27;
      *&v104[4] = v27;
      *&v104[8] = v27;
      *&v104[12] = 0xFF00FF00FFFF0000;
      *&v104[20] = -16776961;
      physx::Cm::operator<<(v107, v104);
    }

    v28 = *(a1 + 9212);
    if (v28)
    {
      for (i = 0; i < v28; ++i)
      {
        v30 = *(*(a1 + 9168) + 8 * i);
        if (*(v30 + 152))
        {
          v31 = 0;
          do
          {
            physx::NpArticulationLink::visualize(*(*(v30 + 144) + 8 * v31++), v107, a1);
          }

          while (v31 < *(v30 + 152));
          v28 = *(a1 + 9212);
        }
      }
    }

    v97 = a4;
    v98 = a5;
    v32 = *(a1 + 9152);
    if (!v32)
    {
LABEL_106:
      v86 = (*(*a1 + 560))(a1, 17);
      v87 = (*(*a1 + 560))(a1, 18);
      if (v86 != 0.0)
      {
        v88 = *(a1 + 8640);
        if (v88)
        {
          (*(*v88 + 120))(v88, v107, 4278190335);
        }
      }

      a4 = v97;
      if (v87 != 0.0)
      {
        v89 = *(a1 + 8688);
        if (v89)
        {
          (*(*v89 + 120))(v89, v107, 4294901760);
        }
      }

      if ((*(*a1 + 560))(a1, 23) != 0.0)
      {
        *v104 = xmmword_1E30474D0;
        *&v104[16] = 0;
        v105 = 0.0;
        physx::Cm::RenderOutput::operator<<(v107, v104);
        v90 = (*(**(*(a1 + 1880) + 392) + 24))(*(*(a1 + 1880) + 392));
        if (v90)
        {
          v91 = v90;
          v92 = 0;
          do
          {
            (*(**(*(a1 + 1880) + 392) + 32))(*(*(a1 + 1880) + 392), v104, 1, v92);
            if (v106)
            {
              v93 = -256;
            }

            else
            {
              v93 = -16777216;
            }

            DWORD1(v107[0]) = v93;
            *v102 = *v104;
            *&v102[16] = *&v104[16];
            v103 = 1;
            physx::Cm::operator<<(v107, v102);
            v92 = (v92 + 1);
          }

          while (v91 != v92);
        }
      }

      a5 = v98;
      if ((*(*a1 + 560))(a1, 22) != 0.0)
      {
        v94 = (*(a1 + 8624) & 0x40) != 0 ? a1 + 8316 : *(a1 + 1872) + 1888;
        v95 = *v94;
        v96 = *(v94 + 12);
        if (*v94 <= v96)
        {
          DWORD1(v107[0]) = -256;
          *v104 = v95;
          *&v104[4] = *(v94 + 4);
          *&v104[12] = v96;
          *&v104[16] = *(v94 + 16);
          LOBYTE(v105) = 1;
          physx::Cm::operator<<(v107, v104);
        }
      }

      goto LABEL_6;
    }

    v33 = *(a1 + 9144);
    __asm { FMOV            V11.2S, #1.0 }

    while (1)
    {
      v39 = *v33;
      v40 = (*(**v33 + 48))(*v33);
      physx::NpShapeManager::visualize((v39 + 40), v107, a1, v39);
      v41 = *(v39 + 104);
      if (v40 == 1)
      {
        break;
      }

      if (v41)
      {
        v43 = *(v39 + 112);
      }

      else
      {
        v43 = (v39 + *(&physx::Scb::Actor::sLazyInitOffsets + (BYTE3(v41) & 0xF) + 3) + 108);
      }

      if (*v43)
      {
        if ((*(a1 + 8624) & 0x20) == 0)
        {
          v47 = *(a1 + 1872);
          v48 = *(v47 + 1792);
          goto LABEL_102;
        }

        v51 = (a1 + 8196);
        if (!v18[587])
        {
          v51 = (*(a1 + 1872) + 1792);
        }

        v48 = *v51;
        if (v18[597])
        {
          v52 = (a1 + 8236);
        }

        else
        {
          v47 = *(a1 + 1872);
LABEL_102:
          v52 = (v47 + 1832);
        }

        v85 = v48 * *v52;
        if (v85 != 0.0)
        {
          (*(*v39 + 152))(v104, v39);
          physx::Cm::RenderOutput::operator<<(v107, v104);
          *v102 = v85;
          *&v102[4] = v85;
          *&v102[8] = v85;
          *&v102[12] = 0xFF00FF00FFFF0000;
          *&v102[20] = -16776961;
          physx::Cm::operator<<(v107, v102);
        }
      }

LABEL_105:
      ++v33;
      if (!--v32)
      {
        goto LABEL_106;
      }
    }

    if (v41)
    {
      v42 = *(v39 + 112);
    }

    else
    {
      v42 = (v39 + *(&physx::Scb::Actor::sLazyInitOffsets + ((v41 >> 24) & 0xF) + 3) + 108);
    }

    if ((*v42 & 1) == 0)
    {
LABEL_76:
      v67 = *(v39 + 104);
      if (v67)
      {
        v68 = *(v39 + 112);
      }

      else
      {
        v68 = (v39 + *(&physx::Scb::Actor::sLazyInitOffsets + ((v67 >> 24) & 0xF) + 3) + 108);
      }

      if (*v68)
      {
        v69 = (*(*a1 + 560))(a1, 0);
        if ((v69 * (*(*a1 + 560))(a1, 3)) != 0.0)
        {
          if (*(v39 + 376))
          {
            v70 = 16711680;
          }

          else
          {
            v71 = *(v39 + 372) / *(a1 + 0x2000);
            if (v71 > 1.0)
            {
              v71 = 1.0;
            }

            v70 = ((v71 * 255.0) << 16) | ((v71 * 255.0) << 8) | (v71 * 255.0);
          }

          v72 = *(v39 + 380);
          if ((v72 & 2) != 0)
          {
            v74 = *(v39 + 112) + 168;
          }

          else
          {
            v73 = *(v39 + 304);
            if (v73 && *(v73 + 31) == 1)
            {
              v74 = v73 + 32;
            }

            else
            {
              v74 = v39 + 256;
            }
          }

          v75 = *(v74 + 8);
          v76 = 1.0 / v75;
          _ZF = v75 == 0.0;
          v77 = 0;
          if (!_ZF)
          {
            *v77.i32 = v76;
          }

          if (v72)
          {
            v79 = (*(v39 + 112) + 164);
          }

          else
          {
            v78 = *(v39 + 304);
            if (v78 && *(v78 + 31) == 1)
            {
              v79 = (v78 + 44);
            }

            else
            {
              v79 = (v39 + 268);
            }
          }

          v80 = vrev64_s32(*v74);
          v81 = vbic_s8(vdiv_f32(_D11, v80), vceqz_f32(v80));
          *v77.i32 = *v77.i32 * (6.0 / (1.0 / *v79));
          v100 = 6.0 / (1.0 / *v79);
          v101 = v77;
          DWORD1(v107[0]) = v70;
          physx::Cm::RenderOutput::operator<<(v107, v39 + 320);
          v82 = vmul_n_f32(v81, v100);
          v83 = vsqrt_f32(vabs_f32(vadd_f32(vdup_lane_s32(v101, 0), vsub_f32(v82, vrev64_s32(v82)))));
          v82.f32[0] = sqrtf(vabds_f32(vaddv_f32(v82), *v101.i32));
          v84 = vmul_f32(v83, 0x3F0000003F000000);
          *v104 = vneg_f32(v84);
          *&v104[8] = -(v82.f32[0] * 0.5);
          *&v104[12] = v84;
          *&v104[20] = v82.f32[0] * 0.5;
          LOBYTE(v105) = 1;
          physx::Cm::operator<<(v107, v104);
        }
      }

      goto LABEL_105;
    }

    v44 = *(a1 + 8624);
    if ((v44 & 0x20) != 0)
    {
      v49 = (a1 + 8196);
      if (!v18[587])
      {
        v49 = (*(a1 + 1872) + 1792);
      }

      v46 = *v49;
      if (v18[597])
      {
        v50 = (a1 + 8236);
LABEL_59:
        v53 = v46 * *v50;
        if (v53 != 0.0)
        {
          (*(*v39 + 152))(v104, v39);
          physx::Cm::RenderOutput::operator<<(v107, v104);
          *v102 = v53;
          *&v102[4] = v53;
          *&v102[8] = v53;
          *&v102[12] = 0xFF00FF00FFFF0000;
          *&v102[20] = -16776961;
          physx::Cm::operator<<(v107, v102);
          v44 = *(a1 + 8624);
        }

        v54 = v44 & 0x20;
        if (!v54 || (v55 = (a1 + 8204), !v18[589]))
        {
          v55 = (*(a1 + 1872) + 1800);
        }

        v56 = v46 * *v55;
        if (v56 != 0.0)
        {
          physx::Cm::RenderOutput::operator<<(v107, v39 + 320);
          *v104 = v56;
          *&v104[4] = v56;
          *&v104[8] = v56;
          *&v104[12] = 0xFF00FF00FFFF0000;
          *&v104[20] = -16776961;
          physx::Cm::operator<<(v107, v104);
          v54 = *(a1 + 8624) & 0x20;
        }

        if (!v54 || (v57 = (a1 + 8212), !v18[591]))
        {
          v57 = (*(a1 + 1872) + 1808);
        }

        v58 = v46 * *v57;
        if (v58 != 0.0)
        {
          DWORD1(v107[0]) = 0xFFFFFF;
          HIDWORD(v108) = 1065353216;
          v109 = 0;
          v110 = 0;
          v113 = 0;
          v112 = 0;
          v111 = 1065353216;
          v114 = 1065353216;
          v115 = 0;
          v116 = 0;
          v117 = 1065353216;
          v59 = v58 * *(v39 + 356);
          v60 = v58 * 0.2;
          *&v104[8] = *(v39 + 344);
          v61 = vmul_n_f32(*(v39 + 348), v58);
          *v104 = *(v39 + 336);
          *&v104[12] = vadd_f32(v61, *v104);
          *&v104[20] = v59 + *&v104[8];
          v105 = v60;
          physx::Cm::operator<<(v107, v104);
          v54 = *(a1 + 8624) & 0x20;
        }

        if (!v54 || (v62 = (a1 + 8216), !v18[592]))
        {
          v62 = (*(a1 + 1872) + 1812);
        }

        v63 = v46 * *v62;
        if (v63 != 0.0)
        {
          DWORD1(v107[0]) = 0;
          HIDWORD(v108) = 1065353216;
          v109 = 0;
          v110 = 0;
          v113 = 0;
          v112 = 0;
          v111 = 1065353216;
          v114 = 1065353216;
          v115 = 0;
          v116 = 0;
          v117 = 1065353216;
          v64 = v63 * *(v39 + 368);
          v65 = v63 * 0.2;
          *&v104[8] = *(v39 + 344);
          v66 = vmul_n_f32(*(v39 + 360), v63);
          *v104 = *(v39 + 336);
          *&v104[12] = vadd_f32(v66, *v104);
          *&v104[20] = v64 + *&v104[8];
          v105 = v65;
          physx::Cm::operator<<(v107, v104);
        }

        goto LABEL_76;
      }

      v45 = *(a1 + 1872);
    }

    else
    {
      v45 = *(a1 + 1872);
      v46 = *(v45 + 1792);
    }

    v50 = (v45 + 1832);
    goto LABEL_59;
  }

LABEL_6:
  if (*(a1 + 9140))
  {
    v19 = 0;
    v20 = *(a1 + 9096);
    do
    {
      physx::NpConstraint::updateConstants(*(v20 + 8 * v19++));
    }

    while (v19 < *(a1 + 9140));
  }

  physx::PxcScratchAllocator::setBlock(*(a1 + 1872), a3, a4);
  *(a1 + 9336) = a9;
  if (v12 == 1)
  {
    *(a1 + 2016) = a9;
    v21 = 1.0 / a9;
    if (a9 <= 0.0)
    {
      v21 = 0.0;
    }

    *(a1 + 2020) = v21;
  }

  v18[1983] = a5;
  v22 = (*(*a1 + 56))(a1);
  physx::Scb::Scene::updateLowLevelMaterial((a1 + 16), *(v22 + 56));
  *(a1 + 7508) = v12;
  *v18 = 1;
  v18[2024] = 1;
  if (a5)
  {
    (*(**(a1 + 9360) + 16))(*(a1 + 9360));
    (*(**(a1 + 9360) + 24))(*(a1 + 9360));
  }

  v23 = *(a1 + 9360);
  if (v12 == 1)
  {
    *(a1 + 9456) = 1;
    *(a1 + 9448) = a2;
    *(a1 + 9440) = v23;
    if (a2)
    {
      (*(*a2 + 32))(a2);
    }

    *(a1 + 9608) = 1;
    *(a1 + 9600) = a1 + 9424;
    (*(*(a1 + 9424) + 32))(a1 + 9424);
    *(a1 + 9592) = *(*(a1 + 9600) + 16);
    v24 = *(a1 + 9360);
    *(a1 + 9408) = 1;
    *(a1 + 9400) = 0;
    *(a1 + 9392) = v24;
    (*(**(a1 + 9440) + 144))(*(a1 + 9440), a1 + 9424);
    v25 = *(a1 + 9592);
  }

  else
  {
    *(a1 + 9408) = 1;
    *(a1 + 9400) = a2;
    *(a1 + 9392) = v23;
    if (a2)
    {
      (*(*a2 + 32))(a2);
      v23 = *(a1 + 9360);
    }

    *(a1 + 9552) = 1;
    *(a1 + 9544) = a1 + 9376;
    *(a1 + 9536) = v23;
    (*(*(a1 + 9376) + 32))(a1 + 9376);
    (*(**(a1 + 9392) + 144))(*(a1 + 9392), a1 + 9376);
    v25 = *(a1 + 9536);
  }

  v26 = *(*v25 + 144);

  return v26();
}

uint64_t physx::NpScene::advance(pthread_mutex_t **this, pthread_mutex_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (*(this + 1877) == 2)
  {
    physx::Scb::Scene::syncWriteThroughProperties(this + 2);
    *(this + 1877) = 3;
    this[1175] = a2;
    if (a2)
    {
      (*(a2->__sig + 32))(a2);
    }

    v12 = this[1170];
    *(this + 2416) = 1;
    this[1207] = (this + 1172);
    this[1206] = v12;
    (*&this[1172]->__opaque[24])(this + 9376);
    (*(this[1174]->__sig + 144))(this[1174], this + 9376);
    v13 = *(this[1206]->__sig + 144);

    return v13();
  }

  else
  {
    v15 = physx::shdfnd::Foundation::mInstance;

    return physx::shdfnd::Foundation::error(v15, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpScene.cpp", 1951, "PxScene::advance: advance() called illegally! advance() needed to be called after fetchCollision() and before fetchResult()!!", a6, a7, a8, a9);
  }
}

BOOL physx::NpScene::fetchCollision(physx::shdfnd::SyncImpl **this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 1877) == 1)
  {
    result = physx::shdfnd::SyncImpl::wait(this[1165], a2 << 31 >> 31);
    if (result)
    {
      *(this + 1877) = 2;
      return 1;
    }
  }

  else
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpScene.cpp", 2049, "PxScene::fetchCollision: fetchCollision() should be called after collide() and before advance()!", a6, a7, a8, v10);
    return 0;
  }

  return result;
}

uint64_t physx::NpScene::fetchResultsPreContactCallbacks(physx::NpScene *this)
{
  physx::Sc::Scene::prepareOutOfBoundsCallbacks(this + 32);
  physx::Scb::Scene::processPendingRemove((this + 16));
  physx::Sc::Scene::endSimulation((this + 32));
  v5 = physx::Sc::Scene::fireOutOfBoundsCallbacks((this + 32));
  v6 = *(this + 235);
  v7 = *(v6 + 432);
  if (v7)
  {
    v8 = *(v6 + 424);
    v9 = *(this + 535);
    do
    {
      if (*(*v8 + 24) >> 30 == 3 || v9 == 0)
      {
        v5 |= *(*v8 + 24) >> 30 != 3;
      }

      else
      {
        (*(*v9 + 24))(v9);
      }

      v8 += 8;
      --v7;
    }

    while (v7);
    *(*(this + 235) + 432) = 0;
  }

  if (v5)
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpScene.cpp", 2041, "At least one object is out of the broadphase bounds. To manage those objects, define a PxBroadPhaseCallback for each used client.", v2, v3, v4, v12);
  }

  physx::Sc::Scene::fireBrokenConstraintCallbacks(this + 32);

  return physx::Sc::Scene::fireTriggerCallbacks(this + 32);
}

uint64_t physx::NpScene::fetchResultsPostContactCallbacks(physx::NpScene *this)
{
  v2 = this + 0x2000;
  v3 = (this + 16);
  physx::Sc::Scene::postCallbacksPreSync((this + 32));
  physx::Scb::Scene::syncEntireScene(v3);
  v9 = &unk_1F5D27018;
  physx::Sc::SqBoundsManager::syncBounds(*(this + 265), this + 1103, &v9, *(*(this + 262) + 8), *(this + 7), this + 4544);
  physx::Sq::SceneQueryManager::updateCompoundActors(this + 8640, *(this + 11), *(this + 24));
  physx::Sq::SceneQueryManager::afterSync((this + 8640), *(this + 2248));
  physx::Sc::Scene::fireCallbacksPostSync(this + 4);
  physx::Sc::Scene::postReportsCleanup((this + 32));
  v4 = 8592;
  if ((*(this + 8624) & 4) == 0)
  {
    v4 = 4284;
  }

  if (*(v3 + v4))
  {
    v5 = this + 32;
    if (v2[1539] == 1)
    {
      physx::Sc::Scene::buildActiveAndFrozenActors(v5);
    }

    else
    {
      physx::Sc::Scene::buildActiveActors(v5);
    }
  }

  physx::Cm::RenderBuffer::append(this + 9000, *(this + 234) + 296);
  if (v2[1496] == 1)
  {
    (*(**(this + 1170) + 32))(*(this + 1170));
  }

  *(this + 1877) = 0;
  v6 = *(this + 1164);
  pthread_mutex_lock(v6);
  v6[1].__opaque[44] = 0;
  pthread_mutex_unlock(v6);
  v7 = *(this + 1165);
  pthread_mutex_lock(v7);
  v7[1].__opaque[44] = 0;
  return pthread_mutex_unlock(v7);
}

BOOL physx::NpScene::fetchResults(physx::shdfnd::SyncImpl **this, int a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 1877) == 3)
  {
    result = physx::shdfnd::SyncImpl::wait(this[1164], a2 << 31 >> 31);
    if (result)
    {
      physx::NpScene::fetchResultsPreContactCallbacks(this);
      physx::Sc::Scene::fireQueuedContactCallbacks((this + 4), 0);
      physx::NpScene::fetchResultsPostContactCallbacks(this);
      if (a3)
      {
        *a3 = 0;
      }

      return 1;
    }
  }

  else
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpScene.cpp", 2160, "PxScene::fetchResults: fetchResults() called illegally! It must be called after advance() or simulate()", a6, a7, a8, v11);
    return 0;
  }

  return result;
}

BOOL physx::NpScene::fetchResultsStart(uint64_t a1, void *a2, _DWORD *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 7508) == 3)
  {
    result = physx::shdfnd::SyncImpl::wait(*(a1 + 9312), a4 << 31 >> 31);
    if (result)
    {
      physx::NpScene::fetchResultsPreContactCallbacks(a1);
      QueuedContactPairHeaders = physx::Sc::Scene::getQueuedContactPairHeaders((a1 + 32));
      *a3 = *(QueuedContactPairHeaders + 8);
      *a2 = *QueuedContactPairHeaders;
      result = 1;
      *(a1 + 9730) = 1;
    }
  }

  else
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpScene.cpp", 2211, "PXScene::fetchResultsStart: fetchResultsStart() called illegally! It must be called after advance() or simulate()", a6, a7, a8, v13);
    return 0;
  }

  return result;
}

uint64_t physx::NpContactCallbackTask::run(physx::NpContactCallbackTask *this)
{
  result = (*(**(this + 5) + 272))(*(this + 5));
  if (result)
  {
    v3 = result;
    (*(**(this + 5) + 784))(*(this + 5), 0, 0);
    if (*(this + 14))
    {
      v4 = 0;
      v5 = 0;
      do
      {
        (*(*v3 + 24))(v3, *(this + 6) + v4, *(*(this + 6) + v4 + 32), *(*(this + 6) + v4 + 40));
        ++v5;
        v4 += 48;
      }

      while (v5 < *(this + 14));
    }

    v6 = *(**(this + 5) + 792);

    return v6();
  }

  return result;
}

uint64_t *physx::NpScene::processCallbacks(physx::NpScene *this, physx::PxBaseTask *a2)
{
  result = physx::Sc::Scene::getQueuedContactPairHeaders((this + 32));
  v5 = *(result + 2);
  if (v5)
  {
    v6 = 0;
    v7 = *result;
    v8 = *(*(this + 234) + 1920);
    v9 = *(result + 2);
    do
    {
      v10 = physx::Cm::FlushPool::allocate(v8, 64, 0x10u);
      v11 = v10;
      *(v10 + 24) = 0u;
      *(v10 + 40) = 0u;
      *(v10 + 56) = 0;
      *(v10 + 8) = 0u;
      *(v10 + 32) = 0;
      v12 = &unk_1F5D264A0;
      *v10 = &unk_1F5D264A0;
      if (v9 >= 0x100)
      {
        v13 = 256;
      }

      else
      {
        v13 = v9;
      }

      *(v10 + 40) = this;
      *(v10 + 48) = v7 + 48 * v6;
      *(v10 + 56) = v13;
      *(v10 + 32) = 1;
      *(v10 + 24) = a2;
      if (a2)
      {
        (*(*a2 + 32))(a2);
        v11[2] = *(v11[3] + 16);
        v12 = *v11;
      }

      result = v12[5](v11);
      v6 += 256;
      v9 -= 256;
    }

    while (v6 < v5);
  }

  return result;
}

uint64_t physx::NpScene::fetchResultsFinish(physx::NpScene *this, unsigned int *a2)
{
  *(this + 9730) = 0;
  result = physx::NpScene::fetchResultsPostContactCallbacks(this);
  if (a2)
  {
    *a2 = 0;
  }

  return result;
}

void *physx::NpScene::flushSimulation(physx::NpScene *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (*(this + 1877))
  {
    v11 = physx::shdfnd::Foundation::mInstance;

    return physx::shdfnd::Foundation::error(v11, 2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpScene.cpp", 2309, "PxScene::flushSimulation(): This call is not allowed while the simulation is running. Call will be ignored", a6, a7, a8, a9);
  }

  else
  {
    v15[5] = v9;
    v15[6] = v10;
    LOWORD(v15[0]) = 0;
    physx::shdfnd::Array<unsigned short,physx::shdfnd::ReflectionAllocator<unsigned short>>::resize(this + 7808, 0, v15);
    physx::shdfnd::Array<unsigned short,physx::shdfnd::ReflectionAllocator<unsigned short>>::recreate(this + 7808, *(this + 1954));
    v15[0] = 0;
    physx::shdfnd::Array<physx::Scb::Shape *,physx::shdfnd::ReflectionAllocator<physx::Scb::Shape *>>::resize(this + 7824, 0, v15);
    physx::shdfnd::Array<physx::Scb::Shape *,physx::shdfnd::ReflectionAllocator<physx::Scb::Shape *>>::recreate(this + 7824, *(this + 1958));
    v15[0] = 0;
    physx::shdfnd::Array<physx::Scb::Actor *,physx::shdfnd::ReflectionAllocator<physx::Scb::Actor *>>::resize(this + 7840, 0, v15);
    physx::shdfnd::Array<physx::Scb::Actor *,physx::shdfnd::ReflectionAllocator<physx::Scb::Actor *>>::recreate(this + 7840, *(this + 1962));
    physx::Sc::Scene::flush((this + 32), a2);
    return physx::Sq::SceneQueryManager::flushMemory((this + 8640));
  }
}

uint64_t physx::NpScene::setDominanceGroupPair(uint64_t result, unsigned int a2, unsigned int a3, _BYTE *a4)
{
  if ((*(result + 7705) & 1) == 0)
  {
    return physx::Sc::Scene::setDominanceGroupPair(result + 32, a2, a3, a4);
  }

  if (a2 >= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = a2;
  }

  v5 = result + 4 * v4;
  if (a2 <= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = a2;
  }

  *(v5 + 8340) |= 1 << v6;
  v7 = 1 << a3;
  v8 = result + 4 * a2;
  if (*a4)
  {
    v9 = *(v8 + 8464) | v7;
  }

  else
  {
    v9 = *(v8 + 8464) & ~v7;
  }

  *(v8 + 8464) = v9;
  v10 = 1 << a2;
  v11 = result + 4 * a3;
  if (a4[1])
  {
    v12 = *(v11 + 8464) | v10;
  }

  else
  {
    v12 = *(v11 + 8464) & ~v10;
  }

  *(v11 + 8464) = v12;
  *(result + 8624) |= 8u;
  return result;
}

uint64_t physx::NpScene::getDominanceGroupPair(physx::NpScene *this, unsigned int a2, unsigned int a3)
{
  if (*(this + 8624) & 8) != 0 && (a2 >= a3 ? (v3 = a3) : (v3 = a2), (v4 = this + 4 * v3, a2 <= a3) ? (v5 = a3) : (v5 = a2), ((*(v4 + 2085) >> v5)))
  {
    v6 = (*(this + a2 + 2116) >> a3) & 1;
    v7 = (*(this + a3 + 2116) >> a2) & 1;
  }

  else
  {
    v6 = (*(this + a2 + 1140) >> a3) & 1;
    v7 = (*(this + a3 + 1140) >> a2) & 1;
  }

  return v6 | (v7 << 8);
}

uint64_t physx::NpScene::setDynamicTreeRebuildRateHint(physx::NpScene *this, uint64_t a2)
{
  v3 = 0;
  v4 = this + 8640;
  *(this + 2200) = a2;
  v5 = 1;
  do
  {
    v6 = v5;
    v7 = &v4[48 * v3];
    result = *v7;
    if (*v7)
    {
      if (*(v7 + 10) == 1)
      {
        result = (*(*result + 136))(result, a2);
      }
    }

    v5 = 0;
    v3 = 1;
  }

  while ((v6 & 1) != 0);
  return result;
}

uint64_t physx::NpScene::setSolverBatchSize(uint64_t this, int a2)
{
  if (*(this + 7705))
  {
    *(this + 8612) = a2;
    *(this + 8624) |= 0x10u;
  }

  else
  {
    *(*(this + 1920) + 140) = a2;
  }

  return this;
}

uint64_t physx::NpScene::getSolverBatchSize(physx::NpScene *this)
{
  if ((*(this + 8624) & 0x10) != 0)
  {
    v1 = (this + 8612);
  }

  else
  {
    v1 = (*(this + 240) + 140);
  }

  return *v1;
}

uint64_t physx::NpScene::setSolverArticulationBatchSize(uint64_t this, int a2)
{
  if (*(this + 7705))
  {
    *(this + 8616) = a2;
    *(this + 8624) |= 0x80u;
  }

  else
  {
    *(*(this + 1920) + 144) = a2;
  }

  return this;
}

uint64_t physx::NpScene::getSolverArticulationBatchSize(physx::NpScene *this)
{
  if ((*(this + 8624) & 0x80) != 0)
  {
    v1 = (this + 8612);
  }

  else
  {
    v1 = (*(this + 240) + 144);
  }

  return *v1;
}

uint64_t physx::NpScene::setVisualizationParameter(uint64_t a1, unsigned int a2, float a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2 >= 24)
  {
    v9 = physx::shdfnd::Foundation::mInstance;
    v10 = "setVisualizationParameter: parameter out of range.";
    v11 = 2478;
LABEL_5:
    physx::shdfnd::Foundation::error(v9, 4, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpScene.cpp", v11, v10, a7, a8, a9, vars0);
    return 0;
  }

  if (a3 < 0.0)
  {
    v9 = physx::shdfnd::Foundation::mInstance;
    v10 = "setVisualizationParameter: value must be larger or equal to 0.";
    v11 = 2483;
    goto LABEL_5;
  }

  if (*(a1 + 7705))
  {
    v12 = 1;
    *(a1 + a2 + 8292) = 1;
    *(a1 + 4 * a2 + 8196) = a3;
    *(a1 + 8624) |= 0x20u;
  }

  else
  {
    v12 = 1;
    *(a1 + 4692) = 1;
    *(*(a1 + 1872) + 4 * a2 + 1792) = a3;
    if (!a2)
    {
      *(a1 + 4688) = a3;
    }
  }

  return v12;
}

float physx::NpScene::getVisualizationParameter(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 > 23)
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 4, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpScene.cpp", 2498, "getVisualizationParameter: param is not an enum.", a6, a7, a8, v8);
    return 0.0;
  }

  if ((*(a1 + 8624) & 0x20) != 0)
  {
    v9 = a2;
    if (*(a1 + a2 + 8292))
    {
      return *(a1 + 4 * a2 + 8196);
    }
  }

  else
  {
    v9 = a2;
  }

  return *(*(a1 + 1872) + 4 * v9 + 1792);
}

double physx::NpScene::setVisualizationCullingBox(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 7705))
  {
    *(a1 + 8316) = *a2;
    *(a1 + 8324) = *(a2 + 8);
    result = *(a2 + 16);
    *(a1 + 8332) = result;
    *(a1 + 8624) |= 0x40u;
  }

  else
  {
    v3 = *(a1 + 1872);
    *(v3 + 1888) = *a2;
    *(v3 + 1896) = *(a2 + 8);
    result = *(a2 + 16);
    *(v3 + 1904) = result;
  }

  return result;
}

double physx::NpScene::getVisualizationCullingBox@<D0>(physx::NpScene *this@<X0>, uint64_t a2@<X8>)
{
  if ((*(this + 8624) & 0x40) != 0)
  {
    v2 = (this + 8316);
  }

  else
  {
    v2 = (*(this + 234) + 1888);
  }

  *a2 = *v2;
  result = v2[2];
  *(a2 + 16) = result;
  return result;
}

uint64_t physx::NpScene::getCpuDispatcher(physx::NpScene *this)
{
  v1 = *(*(*(*this + 776))(this) + 8);

  return v1();
}

uint64_t physx::NpScene::getCudaContextManager(physx::NpScene *this)
{
  return *(this + 1171);
}

{
  return *(this + 1171);
}

pthread_mutex_t ***physx::NpScene::lockRead(physx::NpScene *this, const char *a2)
{
  v3 = pthread_getspecific(*(this + 2427));
  result = pthread_setspecific(*(this + 2427), ((v3 + 0x10000) & 0xFF0000 | (v3 & 0xFF00FFFF)));
  if ((*&v3 & 0xFF0000) == 0)
  {
    v5 = *(this + 1214);
    v6 = v5 != pthread_self();

    return physx::shdfnd::ReadWriteLock::lockReader(this + 1215, v6);
  }

  return result;
}

uint64_t physx::NpScene::unlockRead(physx::NpScene *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = pthread_getspecific(*(this + 2427));
  if (BYTE2(v10))
  {
    v14 = (BYTE2(v10) - 1);
    result = pthread_setspecific(*(this + 2427), (v10 & 0xFF00FFFF | ((BYTE2(v10) - 1) << 16)));
    if (!v14)
    {
      v16 = *(this + 1215);
      if (v16)
      {
        atomic_fetch_add((v16 + 8), 0xFFFFFFFF);
      }
    }
  }

  else
  {
    v17 = physx::shdfnd::Foundation::mInstance;

    return physx::shdfnd::Foundation::error(v17, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpScene.cpp", 2750, "PxScene::unlockRead() called without matching call to PxScene::lockRead(), behaviour will be undefined.", v11, v12, v13, a9);
  }

  return result;
}

pthread_t physx::NpScene::lockWrite(physx::NpScene *this, const char *a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v12 = pthread_getspecific(*(this + 2427));
  v16 = v12 & 0xFF000000;
  if ((*&v12 & 0xFF0000) != 0 && v16 == 0)
  {
    v19 = physx::shdfnd::Foundation::mInstance;
    if (a2)
    {
      v20 = a2;
    }

    else
    {
      v20 = "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpScene.cpp";
    }

    if (a2)
    {
      v21 = a3;
    }

    else
    {
      v21 = 2767;
    }

    return physx::shdfnd::Foundation::error(v19, 8, v20, v21, "PxScene::lockWrite() detected after a PxScene::lockRead(), lock upgrading is not supported, behaviour will be undefined.", v13, v14, v15, a9);
  }

  else
  {
    pthread_setspecific(*(this + 2427), ((v12 + 0x1000000) & 0xFF000000 | *&v12 & 0xFFFFFFLL));
    if (!v16)
    {
      physx::shdfnd::ReadWriteLock::lockWriter(this + 1215);
    }

    result = pthread_self();
    *(this + 1214) = result;
  }

  return result;
}

uint64_t physx::NpScene::unlockWrite(physx::NpScene *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = pthread_getspecific(*(this + 2427));
  if ((v10 & 0xFF000000) != 0)
  {
    v14 = (HIBYTE(v10) - 1);
    result = pthread_setspecific(*(this + 2427), (*&v10 & 0xFFFFFFLL | ((HIBYTE(v10) - 1) << 24)));
    if (!v14)
    {
      *(this + 1214) = 0;
      v17 = *(this + 1215);
      if (v17)
      {
        if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
        {
          v18 = *v17;

          return pthread_mutex_unlock(v18);
        }
      }
    }
  }

  else
  {
    v16 = physx::shdfnd::Foundation::mInstance;

    return physx::shdfnd::Foundation::error(v16, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpScene.cpp", 2789, "PxScene::unlockWrite() called without matching call to PxScene::lockWrite(), behaviour will be undefined.", v11, v12, v13, a9);
  }

  return result;
}

float physx::NpScene::shiftOrigin(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (*(a1 + 7705) == 1)
  {
    v11 = physx::shdfnd::Foundation::mInstance;

    physx::shdfnd::Foundation::error(v11, 2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpScene.cpp", 2839, "PxScene::shiftOrigin() not allowed while simulation is running. Call will be ignored.", a6, a7, a8, a9);
  }

  else
  {
    v72 = v9;
    v73 = v10;
    v14 = a1;
    v15 = *(a1 + 9152);
    v16 = *(a1 + 9144);
    v69 = v16;
    if (v15 >= 4)
    {
      v18 = 0;
      v19 = 0;
      v20 = v15 >> 2;
      v21 = (v15 >> 2) - 1;
      v66 = v16 + 48;
      v67 = v16 + 40;
      v65 = v16 + 56;
      v68 = *(a1 + 9152);
      v22 = v15 - 4;
      v23 = (v16 + 32);
      do
      {
        v17 = v18 + 4;
        if (v19 >= v21)
        {
          if (v17 < v68)
          {
            v40 = v23;
            v41 = v22;
            do
            {
              v43 = *v40++;
              _X10 = v43;
              __asm
              {
                PRFM            #0, [X10]
                PRFM            #0, [X10,#0x80]
              }

              --v41;
            }

            while (v41);
          }
        }

        else
        {
          _X9 = *(v69 + 8 * v17);
          __asm
          {
            PRFM            #0, [X9]
            PRFM            #0, [X9,#0x80]
          }

          _X9 = *(v67 + 8 * v18);
          __asm
          {
            PRFM            #0, [X9]
            PRFM            #0, [X9,#0x80]
          }

          _X9 = *(v66 + 8 * v18);
          __asm
          {
            PRFM            #0, [X9]
            PRFM            #0, [X9,#0x80]
          }

          _X8 = *(v65 + 8 * v18);
          __asm
          {
            PRFM            #0, [X8]
            PRFM            #0, [X8,#0x80]
          }
        }

        for (i = 0; i != 32; i += 8)
        {
          v47 = *(v16 + i);
          v48 = (*(*v47 + 48))(v47);
          v49 = *a2;
          if (v48)
          {
            v47[42] = vsub_f32(v47[42], v49);
            v47[43].f32[0] = v47[43].f32[0] - a2[1].f32[0];
            physx::Sc::BodyCore::onOriginShift(v47 + 16, a2);
          }

          else
          {
            v47[20] = vsub_f32(v47[20], v49);
            v47[21].f32[0] = v47[21].f32[0] - a2[1].f32[0];
          }
        }

        ++v19;
        v22 -= 4;
        v23 += 4;
        v16 += 32;
        v18 = v17;
      }

      while (v19 != v20);
      v14 = a1;
      LODWORD(v15) = v68;
    }

    else
    {
      LODWORD(v17) = 0;
    }

    if (v17 < v15)
    {
      v50 = v15 - v17;
      v51 = (v69 + 8 * v17);
      do
      {
        v52 = *v51;
        v53 = (*(**v51 + 48))(*v51);
        v54 = *a2;
        if (v53)
        {
          v52[42] = vsub_f32(v52[42], v54);
          v52[43].f32[0] = v52[43].f32[0] - a2[1].f32[0];
          physx::Sc::BodyCore::onOriginShift(v52 + 16, a2);
        }

        else
        {
          v52[20] = vsub_f32(v52[20], v54);
          v52[21].f32[0] = v52[21].f32[0] - a2[1].f32[0];
        }

        ++v51;
        --v50;
      }

      while (v50);
    }

    if (*(v14 + 9212))
    {
      v55 = 0;
      v56 = *(v14 + 9168);
      do
      {
        v57 = *(v56 + 8 * v55);
        v58 = *((*(*v57 + 200))(v57) + 120);
        if ((*(*v57 + 152))(v57))
        {
          v59 = 0;
          do
          {
            v60 = *(v58 + 8 * v59);
            v61 = (*(*v60 + 48))(v60);
            v62.n128_u64[0] = *a2;
            if (v61)
            {
              v60[42] = vsub_f32(v60[42], v62.n128_u64[0]);
              v60[43].f32[0] = v60[43].f32[0] - a2[1].f32[0];
              v62.n128_f32[0] = physx::Sc::BodyCore::onOriginShift(v60 + 16, a2);
            }

            else
            {
              v62.n128_u64[0] = vsub_f32(v60[20], v62.n128_u64[0]);
              v60[20] = v62.n128_u64[0];
              v62.n128_f32[0] = v60[21].f32[0] - a2[1].f32[0];
              v60[21].i32[0] = v62.n128_u32[0];
            }

            ++v59;
          }

          while (v59 < (*(*v57 + 152))(v57, v62));
        }

        ++v55;
      }

      while (v55 < *(v14 + 9212));
    }

    physx::Sc::Scene::shiftOrigin(v14 + 32, a2);
    physx::Sq::SceneQueryManager::shiftOrigin(v14 + 8640, a2);
    v63 = -a2[1].f32[0];
    v70 = vneg_f32(*a2);
    v71 = v63;
    return physx::Cm::RenderBuffer::shift(v14 + 9000, &v70);
  }

  return result;
}

float physx::Cm::RenderBuffer::shift(uint64_t a1, float32x2_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (*(a1 + 8) + 8);
    do
    {
      *(v3 - 1) = vadd_f32(*a2, *(v3 - 2));
      result = a2[1].f32[0] + *v3;
      *v3 = result;
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = (*(a1 + 24) + 16);
    do
    {
      v6[-2] = vadd_f32(*a2, v6[-2]);
      v6[-1].f32[0] = a2[1].f32[0] + v6[-1].f32[0];
      *v6 = vadd_f32(*a2, *v6);
      result = a2[1].f32[0] + v6[1].f32[0];
      v6[1].f32[0] = result;
      v6 += 4;
      --v5;
    }

    while (v5);
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    v8 = (*(a1 + 40) + 24);
    do
    {
      v8[-3] = vadd_f32(*a2, v8[-3]);
      v8[-2].f32[0] = a2[1].f32[0] + v8[-2].f32[0];
      v8[-1] = vadd_f32(*a2, v8[-1]);
      v8->f32[0] = a2[1].f32[0] + v8->f32[0];
      v8[1] = vadd_f32(*a2, v8[1]);
      result = a2[1].f32[0] + v8[2].f32[0];
      v8[2].f32[0] = result;
      v8 += 6;
      --v7;
    }

    while (v7);
  }

  v9 = *(a1 + 64);
  if (v9)
  {
    v10 = (*(a1 + 56) + 8);
    do
    {
      *(v10 - 1) = vadd_f32(*a2, *(v10 - 2));
      result = a2[1].f32[0] + *v10;
      *v10 = result;
      v10 += 8;
      --v9;
    }

    while (v9);
  }

  return result;
}

void *physx::NpScene::setActiveActors(physx::NpScene *this, physx::PxActor **a2, unsigned int a3)
{
  *(this + 1054) = 0;
  v7 = 0;
  physx::shdfnd::Array<physx::PxActor *,physx::shdfnd::ReflectionAllocator<physx::PxActor *>>::resize(this + 4208, a3, &v7);
  return memcpy(*(this + 526), a2, 8 * a3);
}

physx::Sq::SceneQueryManager *physx::NpScene::forceSceneQueryRebuild(physx::NpScene *this)
{
  v3 = &unk_1F5D27018;
  physx::Sc::SqBoundsManager::syncBounds(*(this + 265), this + 1103, &v3, *(*(this + 262) + 8), *(this + 7), this + 4544);
  return physx::Sq::SceneQueryManager::afterSync((this + 8640), *(this + 2248));
}

uint64_t physx::NpScene::sceneQueriesUpdate(physx::NpScene *this, physx::PxBaseTask *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (*(this + 9728) == 1)
  {
    v9 = physx::shdfnd::Foundation::mInstance;

    return physx::shdfnd::Foundation::error(v9, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpScene.cpp", 2962, "PxScene::fetchSceneQueries was not called!", a6, a7, a8, a9);
  }

  else
  {
    physx::Sq::SceneQueryManager::flushUpdates(this + 8640);
    v14 = *(this + 1080);
    if (v14 && *(this + 2170) == 1)
    {
      v15 = (*(*v14 + 152))(v14);
    }

    else
    {
      v15 = 0;
    }

    v16 = *(this + 1086);
    if (v16 && *(this + 2182) == 1)
    {
      v17 = (*(*v16 + 152))(v16);
    }

    else
    {
      v17 = 0;
    }

    *(this + 9728) = 1;
    if (a3)
    {
      (*(**(this + 1170) + 16))(*(this + 1170));
      (*(**(this + 1170) + 24))(*(this + 1170));
    }

    v18 = *(this + 1170);
    v19 = this + 9472;
    *(this + 2376) = 1;
    *(this + 1187) = a2;
    *(this + 1186) = v18;
    if (a2)
    {
      (*(*a2 + 32))(a2);
    }

    if (v15)
    {
      *(this + 2228) = 1;
      *(this + 1113) = v19;
      (*(*(this + 1184) + 32))(this + 9472);
      *(this + 1112) = *(*(this + 1113) + 16);
    }

    if (v17)
    {
      *(this + 2242) = 1;
      *(this + 1120) = v19;
      (*(*(this + 1184) + 32))(this + 9472);
      *(this + 1119) = *(*(this + 1120) + 16);
    }

    result = (*(**(this + 1186) + 144))(*(this + 1186), this + 9472);
    if (v15)
    {
      result = (*(**(this + 1112) + 144))(*(this + 1112), this + 8880);
    }

    if (v17)
    {
      v20 = *(**(this + 1119) + 144);

      return v20();
    }
  }

  return result;
}

BOOL physx::NpScene::fetchQueries(physx::shdfnd::SyncImpl **this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (this[1216])
  {
    result = physx::shdfnd::SyncImpl::wait(this[1166], a2 << 31 >> 31);
    if (result)
    {
      physx::Sq::SceneQueryManager::flushUpdates((this + 1080));
      v10 = this[1166];
      pthread_mutex_lock(v10);
      v10[1].__opaque[44] = 0;
      pthread_mutex_unlock(v10);
      *(this + 9728) = 0;
      return 1;
    }
  }

  else
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpScene.cpp", 3020, "PxScene::fetchQueries: fetchQueries() called illegally! It must be called after sceneQueriesUpdate()", a6, a7, a8, v11);
    return 0;
  }

  return result;
}

uint64_t physx::NpScene::createBatchQuery(uint64_t a1, __int128 *a2)
{
  v4 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v5 = "static const char *physx::shdfnd::ReflectionAllocator<physx::NpBatchQuery>::getName() [T = physx::NpBatchQuery]";
  }

  else
  {
    v5 = "<allocation names disabled>";
  }

  v6 = (*(*(v4 + 24) + 16))(v4 + 24, 176, v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpScene.cpp", 3061);
  *v6 = &unk_1F5D24EA0;
  physx::shdfnd::SyncT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::SyncImpl>>::SyncT((v6 + 8));
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 16) = a1;
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  *(v6 + 60) = 0;
  v7 = *a2;
  v8 = a2[2];
  *(v6 + 80) = a2[1];
  *(v6 + 96) = v8;
  *(v6 + 64) = v7;
  v9 = a2[3];
  v10 = a2[4];
  v11 = a2[5];
  *(v6 + 160) = *(a2 + 12);
  *(v6 + 128) = v10;
  *(v6 + 144) = v11;
  *(v6 + 112) = v9;
  *(v6 + 168) = -16;
  *(v6 + 172) = 0;
  v14 = v6;
  v12 = *(a1 + 9280);
  if ((*(a1 + 9284) & 0x7FFFFFFFu) <= v12)
  {
    physx::shdfnd::Array<physx::NpBatchQuery *,physx::shdfnd::ReflectionAllocator<physx::NpBatchQuery *>>::growAndPushBack(a1 + 9272, &v14);
  }

  else
  {
    *(*(a1 + 9272) + 8 * v12) = v6;
    *(a1 + 9280) = v12 + 1;
  }

  return v6;
}

uint64_t physx::NpScene::releaseBatchQuery(uint64_t result, uint64_t a2)
{
  v2 = *(result + 9280);
  if (v2)
  {
    v3 = 0;
    while (*(*(result + 9272) + 8 * v3) != a2)
    {
      if (v2 == ++v3)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  if (v3 != v2)
  {
    v4 = *(result + 9272);
    v5 = v2 - 1;
    *(result + 9280) = v5;
    *(v4 + 8 * v3) = *(v4 + 8 * v5);
  }

LABEL_9:
  if (a2)
  {
    return (*(*a2 + 96))(a2);
  }

  return result;
}

uint64_t physx::NpSceneQueries::raycast(void *a1, uint64_t _X1, uint64_t _X2, uint64_t a4, __int16 *a5, uint64_t a6, uint64_t a7, void *a8, float a9)
{
  __asm
  {
    PRFM            #0, [X1]
    PRFM            #0, [X2]
  }

  v17[0] = _X1;
  v17[1] = _X2;
  v18 = a9;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v16 = *a5;
  return physx::NpSceneQueries::multiQuery<physx::PxRaycastHit>(a1, v17, a4, &v16, a8, a6, a7, 0);
}

uint64_t physx::NpSceneQueries::multiQuery<physx::PxRaycastHit>(void *a1, void *a2, uint64_t a3, __int16 *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a6 + 16) & 0x10;
  if (!a5)
  {
    v24 = 0xFFFFFFFFLL;
    v25 = 0xFFFFFFFFLL;
    goto LABEL_22;
  }

  v16 = a5[1];
  v17 = *(v16 + 8);
  v18 = (v16 + 40);
  if (v17 == 5)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v17 == 6)
  {
    v19 = v18;
  }

  if (v17 != 13)
  {
    v18 = v19;
  }

  v20 = *(v18 + 4);
  v21 = v18;
  if (v20 == 1)
  {
    goto LABEL_12;
  }

  if (*(v18 + 4))
  {
    v21 = *v18;
LABEL_12:
    v22 = 0;
    v23 = 0xFFFFFFFFLL;
    while (v21[v22] != *a5)
    {
      if (v20 == ++v22)
      {
        goto LABEL_19;
      }
    }

    v23 = v22;
    goto LABEL_19;
  }

  v23 = 0xFFFFFFFFLL;
LABEL_19:
  v24 = *(v18 + 8);
  v26 = v18 + 2;
  if (*(v18 + 12) != 1)
  {
    v26 = *v26;
  }

  v25 = v26[v23];
LABEL_22:
  physx::Sq::SceneQueryManager::flushUpdates((a1 + 1080));
  *(a3 + 72) = 0;
  *(a3 + 92) = 0;
  v27 = *(a2 + 4);
  v28 = *a4;
  v29 = v15 >> 4;
  v49[0] = &unk_1F5D27348;
  v49[1] = a1;
  v49[2] = a2;
  v49[3] = a3;
  v50 = v28;
  v51 = a6;
  v52 = a7;
  v53 = v27;
  v54 = a8;
  v55 = ((v28 & 0x40 | v15) != 0) << 6;
  v56 = 1;
  v30 = *(a6 + 16);
  v57 = (v30 & 0x20) != 0;
  v58 = v57;
  v59 = v29;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  if (v25 != 0xFFFFFFFF && !*(a3 + 88))
  {
    Payload = physx::Sq::SceneQueryManager::getPayload((a1 + 1080), v24, v25);
    v60 = 1;
    v33 = MultiQueryCallback<physx::PxRaycastHit>::invoke(v49, &v48, Payload, v32);
    v60 = 0;
    if (!v33)
    {
      LODWORD(v39) = *(a3 + 92);
      if (v39)
      {
        v40 = 1;
      }

      else
      {
        v40 = *(a3 + 72);
      }

      if ((*(a3 + 72) & 1) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_35;
    }

    v30 = *(a6 + 16);
  }

  v34 = a1[1086];
  v35 = a1[1092];
  if ((v30 & 1) != 0 && ((*(*a1[1080] + 48))(a1[1080], *a2, a2[1], &v53, v49) & 1) == 0)
  {
    LODWORD(v39) = *(a3 + 92);
    if ((*(a3 + 72) & 1) == 0)
    {
      v40 = v39 != 0;
      if (!v39)
      {
        goto LABEL_54;
      }

LABEL_51:
      if ((**a3)(a3, *(a3 + 80)))
      {
        *(a3 + 92) = 0;
      }

      goto LABEL_54;
    }

    v40 = 1;
    if (!v39)
    {
      goto LABEL_54;
    }

    goto LABEL_44;
  }

  if ((v30 & 2) != 0 && ((*(*v34 + 48))(v34, *a2, a2[1], &v53, v49) & 1) == 0)
  {
    v40 = *(a3 + 72) | (*(a3 + 92) != 0);
    goto LABEL_54;
  }

  v36 = *a2;
  v37 = a2[1];
  LOWORD(v48) = *(a6 + 16);
  v38 = (*(*v35 + 48))(v35, v36, v37, &v53, v49, &v48);
  LODWORD(v39) = *(a3 + 92);
  if (v39)
  {
    v40 = 1;
  }

  else
  {
    v40 = *(a3 + 72);
  }

  if (v38)
  {
    if (!*(a3 + 72))
    {
      goto LABEL_50;
    }

LABEL_35:
    if (!v39)
    {
      goto LABEL_54;
    }

LABEL_44:
    v41 = 0;
    v42 = *(a3 + 80);
    v43 = *(a3 + 56);
    do
    {
      v44 = v42 + (v41 << 6);
      if (*(v44 + 48) <= v43)
      {
        ++v41;
      }

      else
      {
        v39 = (v39 - 1);
        v45 = (v42 + (v39 << 6));
        v46 = *v45;
        *(v44 + 16) = *(v45 + 4);
        *v44 = v46;
        *(v44 + 20) = *(v45 + 10);
        *(v44 + 24) = *(v45 + 24);
        *(v44 + 40) = *(v45 + 5);
        *(v44 + 48) = *(v45 + 12);
        *(v44 + 52) = *(v45 + 52);
      }
    }

    while (v41 != v39);
    *(a3 + 92) = v39;
LABEL_50:
    if (!v39)
    {
      goto LABEL_54;
    }

    goto LABEL_51;
  }

LABEL_54:
  (*(*a3 + 8))(a3);
  return v40 & 1;
}

uint64_t physx::NpSceneQueries::overlap(void *a1, uint64_t _X1, uint64_t _X2, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __asm
  {
    PRFM            #0, [X1]
    PRFM            #0, [X2]
  }

  v14[3] = _X1;
  v14[4] = _X2;
  v15 = 0;
  v14[0] = 0;
  v14[1] = 0;
  v13 = 0;
  return physx::NpSceneQueries::multiQuery<physx::PxOverlapHit>(a1, v14, a4, &v13, 0, a5, a6, 0);
}

uint64_t physx::NpSceneQueries::multiQuery<physx::PxOverlapHit>(void *a1, uint64_t a2, uint64_t a3, __int16 *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v65 = *MEMORY[0x1E69E9840];
  v13 = *(a6 + 16) & 0x10;
  if (!a5)
  {
    v22 = a7;
    v23 = a8;
    v48 = 0xFFFFFFFFLL;
    v24 = 0xFFFFFFFFLL;
    goto LABEL_22;
  }

  v14 = a5[1];
  v15 = *(v14 + 8);
  v16 = (v14 + 40);
  if (v15 == 5)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v15 == 6)
  {
    v17 = v16;
  }

  if (v15 != 13)
  {
    v16 = v17;
  }

  v18 = *(v16 + 4);
  v19 = v16;
  if (v18 == 1)
  {
    goto LABEL_12;
  }

  if (*(v16 + 4))
  {
    v19 = *v16;
LABEL_12:
    v20 = 0;
    v21 = 0xFFFFFFFFLL;
    while (v19[v20] != *a5)
    {
      if (v18 == ++v20)
      {
        goto LABEL_19;
      }
    }

    v21 = v20;
    goto LABEL_19;
  }

  v21 = 0xFFFFFFFFLL;
LABEL_19:
  v25 = v16 + 2;
  v48 = *(v16 + 8);
  v22 = a7;
  v23 = a8;
  if (*(v16 + 12) != 1)
  {
    v25 = *v25;
  }

  v24 = v25[v21];
LABEL_22:
  physx::Sq::SceneQueryManager::flushUpdates((a1 + 1080));
  *(a3 + 32) = 0;
  *(a3 + 52) = 0;
  v34 = *a4;
  v50[0] = &unk_1F5D273B8;
  v50[1] = a1;
  v50[2] = a2;
  v50[3] = a3;
  v51 = v34;
  v52 = a6;
  v53 = v22;
  v54 = 2139095039;
  v55 = v23;
  v56 = ((v34 & 0x40 | v13) != 0) << 6;
  v57 = 1;
  v35 = *(a6 + 16);
  v58 = (v35 & 0x20) != 0;
  v59 = v58;
  v60 = v13 >> 4;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  if (v24 != 0xFFFFFFFF && !*(a3 + 48))
  {
    Payload = physx::Sq::SceneQueryManager::getPayload((a1 + 1080), v48, v24);
    v61 = 1;
    v26 = MultiQueryCallback<physx::PxOverlapHit>::invoke(v50, v38, v37, Payload);
    v61 = 0;
    if ((v39 & 1) == 0)
    {
      goto LABEL_33;
    }

    v35 = *(a6 + 16);
  }

  v40 = a1[1080];
  v41 = a1[1086];
  v42 = a1[1092];
  v26.i32[0] = *(a2 + 40);
  physx::Gu::ShapeData::ShapeData(v64, *(a2 + 24), *(a2 + 32), *v26.i64, v27, v28, v29, v30, v31, v32, v33);
  v63 = v64;
  if ((v35 & 1) != 0 && ((*(*v40 + 56))(v40, v64, v50) & 1) == 0)
  {
LABEL_33:
    v46 = *(a3 + 52);
    v45 = *(a3 + 32) | (v46 != 0);
    if (!v46)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if ((v35 & 2) != 0 && ((*(*v41 + 56))(v41, v64, v50) & 1) == 0)
  {
    v45 = *(a3 + 32) | (*(a3 + 52) != 0);
    goto LABEL_37;
  }

  v49 = *(a6 + 16);
  v43 = (*(*v42 + 56))(v42, v64, v50, &v49);
  v44 = *(a3 + 52);
  v45 = *(a3 + 32) | (v44 != 0);
  if (v43 && v44)
  {
LABEL_34:
    if ((**a3)(a3, *(a3 + 40)))
    {
      *(a3 + 52) = 0;
    }
  }

LABEL_37:
  (*(*a3 + 8))(a3);
  return v45 & 1;
}

uint64_t physx::NpSceneQueries::sweep(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _WORD *a6, uint64_t a7, uint64_t a8, float a9, float a10, void *a11)
{
  _X24 = a4;
  _X23 = a3;
  _X25 = a2;
  v21 = *a6;
  if ((~v21 & 0x300) == 0)
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 4, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpSceneQueries.cpp", 130, " Precise sweep doesn't support MTD. Perform MTD with default sweep", a6, a7, a8, v30);
    v21 = *a6 & 0xFEFF;
    *a6 &= ~0x100u;
  }

  if ((~v21 & 0x210) == 0)
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 4, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpSceneQueries.cpp", 136, " eMTD cannot be used in conjunction with eASSUME_NO_INITIAL_OVERLAP. eASSUME_NO_INITIAL_OVERLAP will be ignored", a6, a7, a8, v30);
    LOWORD(v21) = *a6 & 0xFFEF;
    *a6 = v21;
  }

  if (a10 > 0.0 && (v21 & 0x100) != 0)
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 4, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpSceneQueries.cpp", 144, " Precise sweep doesn't support inflation, inflation will be overwritten to be zero", a6, a7, a8, v30);
    LOWORD(v21) = *a6;
    a10 = 0.0;
  }

  __asm
  {
    PRFM            #0, [X25]
    PRFM            #0, [X23]
    PRFM            #0, [X24]
  }

  v33 = a9;
  v32[0] = 0;
  v32[1] = _X24;
  v34 = _X25;
  v35 = _X23;
  v36 = a10;
  v31 = v21;
  return physx::NpSceneQueries::multiQuery<physx::PxSweepHit>(a1, v32, a5, &v31, a11, a7, a8, 0);
}

uint64_t physx::NpSceneQueries::multiQuery<physx::PxSweepHit>(void *a1, uint64_t a2, uint64_t a3, __int16 *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v76 = *MEMORY[0x1E69E9840];
  v13 = *(a6 + 16) & 0x10;
  if (!a5)
  {
    v22 = a7;
    v23 = a8;
    v55 = 0xFFFFFFFFLL;
    v24 = 0xFFFFFFFFLL;
    goto LABEL_22;
  }

  v14 = a5[1];
  v15 = *(v14 + 8);
  v16 = (v14 + 40);
  if (v15 == 5)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v15 == 6)
  {
    v17 = v16;
  }

  if (v15 != 13)
  {
    v16 = v17;
  }

  v18 = *(v16 + 4);
  v19 = v16;
  if (v18 == 1)
  {
    goto LABEL_12;
  }

  if (*(v16 + 4))
  {
    v19 = *v16;
LABEL_12:
    v20 = 0;
    v21 = 0xFFFFFFFFLL;
    while (v19[v20] != *a5)
    {
      if (v18 == ++v20)
      {
        goto LABEL_19;
      }
    }

    v21 = v20;
    goto LABEL_19;
  }

  v21 = 0xFFFFFFFFLL;
LABEL_19:
  v25 = v16 + 2;
  v55 = *(v16 + 8);
  v22 = a7;
  v23 = a8;
  if (*(v16 + 12) != 1)
  {
    v25 = *v25;
  }

  v24 = v25[v21];
LABEL_22:
  physx::Sq::SceneQueryManager::flushUpdates((a1 + 1080));
  *(a3 + 64) = 0;
  *(a3 + 84) = 0;
  LODWORD(v32) = 1287568416;
  *&v33 = fminf(*(a2 + 16), 100000000.0);
  v34 = *a4;
  v57[0] = &unk_1F5D273F8;
  v57[1] = a1;
  v57[2] = a2;
  v57[3] = a3;
  v58 = v34;
  v59 = a6;
  v60 = v22;
  v61 = LODWORD(v33);
  v62 = v23;
  v63 = ((v34 & 0x40 | v13) != 0) << 6;
  v64 = 1;
  v35 = *(a6 + 16);
  v65 = (v35 & 0x20) != 0;
  v66 = v65;
  v67 = v13 >> 4;
  v68 = 0;
  v71 = 0;
  v72 = 0;
  if (v24 != 0xFFFFFFFF && !*(a3 + 80))
  {
    Payload = physx::Sq::SceneQueryManager::getPayload((a1 + 1080), v55, v24);
    v68 = 1;
    LODWORD(v37) = *(a2 + 40);
    physx::Gu::ShapeData::ShapeData(v73, *(a2 + 24), *(a2 + 32), v37, v38, v39, v40, v41, v42, v43, v44);
    v45.i64[1] = *(&v74 + 1);
    v69 = v74;
    v45.i64[0] = v75;
    v70 = v75;
    v71 = 1;
    v72 = v73;
    v46 = MultiQueryCallback<physx::PxSweepHit>::invoke(v57, &v56, Payload, v45);
    v72 = 0;
    v68 = 0;
    if ((v46 & 1) == 0)
    {
LABEL_36:
      v52 = *(a3 + 84);
      if (v52)
      {
        v53 = 1;
      }

      else
      {
        v53 = *(a3 + 64);
      }

      if ((*(a3 + 64) & 1) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_40;
    }

    v35 = *(a6 + 16);
  }

  v47 = a1[1080];
  v48 = a1[1086];
  v49 = a1[1092];
  LODWORD(v33) = *(a2 + 40);
  physx::Gu::ShapeData::ShapeData(v73, *(a2 + 24), *(a2 + 32), v33, v32, v26, v27, v28, v29, v30, v31);
  v69 = v74;
  v70 = v75;
  v71 = 1;
  v72 = v73;
  if ((v35 & 1) != 0 && ((*(*v47 + 64))(v47, v73, *(a2 + 8), &v61, v57) & 1) == 0)
  {
    goto LABEL_36;
  }

  if ((v35 & 2) != 0 && ((*(*v48 + 64))(v48, v73, *(a2 + 8), &v61, v57) & 1) == 0)
  {
    v53 = *(a3 + 64) | (*(a3 + 84) != 0);
    goto LABEL_46;
  }

  v50 = *(a2 + 8);
  LOWORD(v56) = *(a6 + 16);
  v51 = (*(*v49 + 64))(v49, v73, v50, &v61, v57, &v56);
  v52 = *(a3 + 84);
  if (v52)
  {
    v53 = 1;
  }

  else
  {
    v53 = *(a3 + 64);
  }

  if (v51)
  {
    if (!*(a3 + 64))
    {
LABEL_42:
      if (v52 && (**a3)(a3, *(a3 + 72)))
      {
        *(a3 + 84) = 0;
      }

      goto LABEL_46;
    }

LABEL_40:
    if (!v52)
    {
      goto LABEL_46;
    }

    LODWORD(v52) = physx::clipHitsToNewMaxDist<physx::PxSweepHit>(*(a3 + 72), v52, *(a3 + 56));
    *(a3 + 84) = v52;
    goto LABEL_42;
  }

LABEL_46:
  (*(*a3 + 8))(a3);
  return v53 & 1;
}

BOOL MultiQueryCallback<physx::PxRaycastHit>::invoke(uint64_t a1, float *a2, uint64_t *a3, int8x16_t a4)
{
  v88 = *MEMORY[0x1E69E9840];
  v80[0] = 0;
  v80[1] = 0;
  v81 = -1;
  v82 = 0;
  v84 = 0;
  v85 = 0;
  v83 = 0;
  v86 = 2139095039;
  v87 = 0;
  v5 = *a3;
  v6 = a3[1];
  v7 = *(&physx::Scb::Actor::sLazyInitOffsets + (*(v6 + 11) & 0xF) + 3) + v6;
  v8 = v7 + *(&physx::Sc::gOffsetTable + *(v7 + 13) + 10);
  v9 = (*a3 + 32);
  v10 = &v9->i8[qword_1EE1C7DF8];
  v11 = *(a1 + 40);
  v12 = v11[2].i16[0];
  v13 = v12 > -1 && *(*(a1 + 24) + 88) == 0;
  v14 = *(a1 + 32);
  if (v13)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  if (*(a1 + 78))
  {
    v15 = 2;
    goto LABEL_21;
  }

  v16 = *(a1 + 48);
  v17 = *(a1 + 64);
  if (!v17)
  {
    a4 = *v11->i8;
    if (vorr_s8(*v11, *&vextq_s8(a4, a4, 8uLL)))
    {
      a4 = vandq_s8(*v9, a4);
      *a4.i8 = vorr_s8(*a4.i8, *&vextq_s8(a4, a4, 8uLL));
      if (!a4.i64[0])
      {
        return 1;
      }
    }
  }

  if ((v12 & 4) == 0 || !(v16 | v17))
  {
    goto LABEL_21;
  }

  v77.i16[0] = v14;
  if (v16)
  {
    v18 = (**v16)(v16);
  }

  else
  {
    v19 = *(v17 + 16);
    if (!v19)
    {
      goto LABEL_21;
    }

    *v69 = *v11->i8;
    v79[0] = *v9;
    v18 = v19(v69, v79, *v17, *(v17 + 8), &v77);
  }

  v15 = v18;
  if (!v18)
  {
    return 1;
  }

  v14 = v77.i16[0] & 0x1B0 | v14 & 0xFE4F;
LABEL_21:
  physx::NpActor::getGlobalPose(v79, v5, v6, a4);
  if (*(v5 + 8))
  {
    v20 = (*(v5 + 16) + 64);
  }

  else
  {
    v20 = (v5 + 104);
  }

  v21 = *(a1 + 24);
  v22 = *(v21 + 88);
  v23 = *(v21 + 92);
  v24 = (*(v21 + 80) + (v23 << 6));
  if (v22 > v23)
  {
    v25 = v24;
  }

  else
  {
    v25 = v80;
  }

  v26 = *(a1 + 56);
  v27 = *(*(*(a1 + 8) + 8856) + 8 * *v20);
  *v69 = *(a1 + 72) | v14;
  v28 = v27(v26);
  if (!v28)
  {
    return 1;
  }

  v66 = v9;
  v29 = 0;
  v30 = 0;
  v31 = v28;
  while (1)
  {
    v32 = &v25[8 * v29];
    *v32 = v8;
    v32[1] = v10;
    v33 = v15;
    if ((*(a1 + 78) & 1) == 0)
    {
      v34 = *(a1 + 48);
      if (v34)
      {
        v33 = v15;
        if ((v12 & 8) != 0)
        {
          v33 = (*(*v34 + 8))(*(a1 + 48), *(a1 + 40), &v25[8 * v29]);
        }
      }

      else
      {
        v35 = *(a1 + 64);
        if (v35)
        {
          v36 = (v12 & 8) == 0;
        }

        else
        {
          v36 = 1;
        }

        v33 = v15;
        if (!v36)
        {
          v37 = *(v35 + 24);
          v33 = v15;
          if (v37)
          {
            *v69 = **(a1 + 40);
            v77 = *v66;
            v33 = v37(v69, &v77, *v35, *(v35 + 8), &v25[8 * v29]);
          }
        }
      }
    }

    if (*(a1 + 77) == 1 && v33 != 0)
    {
      break;
    }

    if (*(a1 + 76))
    {
      v39 = 1;
    }

    else
    {
      v39 = v33;
    }

    if (v39 == 2)
    {
      v60 = *(v32 + 12);
      if (v60 <= *(a1 + 56))
      {
        *(a1 + 56) = v60;
        *a2 = v60;
        v61 = *(a1 + 24);
        v62 = *v32;
        *(v61 + 24) = *(v32 + 4);
        *(v61 + 8) = v62;
        *(v61 + 28) = *(v32 + 10);
        *(v61 + 32) = v32[3];
        *(v61 + 40) = *(v32 + 8);
        *(v61 + 44) = *(v32 + 36);
        *(v61 + 60) = *(v32 + 52);
        *(*(a1 + 24) + 72) = 1;
      }
    }

    else if (v39 == 1)
    {
      v40 = *(a1 + 24);
      v41 = *(v40 + 88);
      if (v41)
      {
        if (*(a1 + 74) == 1 && *(v32 + 12) <= *(a1 + 56))
        {
          v42 = *(v40 + 92);
          if (v42 == v41)
          {
            v43 = *(a1 + 40);
            v77 = *v43;
            v78 = v43[1].i16[0] | 0x8000;
            *&v69[8] = 0;
            *&v69[16] = 0;
            v70 = -1;
            v71 = 0;
            *v73 = 0;
            *&v73[8] = 0;
            v72 = 0;
            *&v73[16] = 2139095039;
            *&v73[24] = 0;
            v74 = 0;
            v75 = 0;
            v76 = 0;
            *v69 = &unk_1F5D27388;
            if ((*(a1 + 75) & 1) == 0)
            {
              if (*(v40 + 88))
              {
                v44 = *(a1 + 8);
                v45 = *(a1 + 16);
                v68 = *(a1 + 32);
                v46 = physx::NpSceneQueries::multiQuery<physx::PxRaycastHit>(v44, v45, v69, &v68, 0, &v77, *(a1 + 48), *(a1 + 64));
                v40 = *(a1 + 24);
                if (v46)
                {
                  v47 = *&v69[8];
                  *(v40 + 24) = v70;
                  *(v40 + 8) = v47;
                  *(v40 + 28) = v71;
                  *(v40 + 32) = v72;
                  *(v40 + 40) = *v73;
                  v48 = *&v73[16];
                  *(v40 + 44) = *&v73[4];
                  *(v40 + 60) = *&v73[20];
                  v40 = *(a1 + 24);
                  *(v40 + 72) = 1;
                  LODWORD(v49) = *(v40 + 92);
                  v50 = v48;
                  if (v49)
                  {
                    v51 = 0;
                    v52 = *(v40 + 80);
                    do
                    {
                      v53 = v52 + (v51 << 6);
                      if (*(v53 + 48) <= v48)
                      {
                        ++v51;
                      }

                      else
                      {
                        v49 = (v49 - 1);
                        v54 = (v52 + (v49 << 6));
                        v55 = *v54;
                        *(v53 + 16) = *(v54 + 4);
                        *v53 = v55;
                        *(v53 + 20) = *(v54 + 10);
                        *(v53 + 24) = *(v54 + 24);
                        *(v53 + 40) = *(v54 + 5);
                        *(v53 + 48) = *(v54 + 12);
                        *(v53 + 52) = *(v54 + 52);
                      }
                    }

                    while (v51 != v49);
                    v40 = *(a1 + 24);
                    v50 = *&v73[16];
                  }

                  *(v40 + 92) = v49;
                  *(a1 + 56) = v50;
                  *a2 = v50;
                }
              }
            }

            *(a1 + 75) = 1;
            v42 = *(v40 + 92);
            if (v42 == *(v40 + 88))
            {
              v56 = (**v40)(v40, *(v40 + 80));
              *(a1 + 74) = v56;
              if (!v56)
              {
                return v30;
              }

              v42 = 0;
              v40 = *(a1 + 24);
              *(v40 + 92) = 0;
            }
          }

          v57 = *(v40 + 80);
          *(v40 + 92) = v42 + 1;
          v58 = v57 + (v42 << 6);
          v59 = *v32;
          *(v58 + 16) = *(v32 + 4);
          *v58 = v59;
          *(v58 + 20) = *(v32 + 10);
          *(v58 + 24) = v32[3];
          *(v58 + 32) = *(v32 + 8);
          *(v58 + 36) = *(v32 + 36);
          *(v58 + 52) = *(v32 + 52);
        }
      }
    }

    v30 = ++v29 >= v31;
    if (v29 == v31)
    {
      return v30;
    }
  }

  v63 = *(a1 + 24);
  v64 = *v32;
  *(v63 + 24) = *(v32 + 4);
  *(v63 + 8) = v64;
  *(v63 + 28) = *(v32 + 10);
  *(v63 + 32) = v32[3];
  *(v63 + 40) = *(v32 + 8);
  *(v63 + 44) = *(v32 + 36);
  *(v63 + 60) = *(v32 + 52);
  *(*(a1 + 24) + 72) = 1;
  return v30;
}

int8x16_t MultiQueryCallback<physx::PxOverlapHit>::invoke(uint64_t a1, int8x16_t result, uint64_t a3, uint64_t *a4)
{
  v52 = *MEMORY[0x1E69E9840];
  v50[0] = 0;
  v50[1] = 0;
  v51 = -1;
  v5 = *a4;
  v6 = a4[1];
  v7 = *(&physx::Scb::Actor::sLazyInitOffsets + (*(v6 + 11) & 0xF) + 3) + v6;
  v8 = v7 + *(&physx::Sc::gOffsetTable + *(v7 + 13) + 10);
  v9 = (*a4 + 32);
  v10 = &v9->i8[qword_1EE1C7DF8];
  v11 = *(a1 + 40);
  v12 = v11[2].i16[0];
  if (v12 > -1 && *(*(a1 + 24) + 48) == 0)
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  if (*(a1 + 78))
  {
    v14 = 2;
    goto LABEL_20;
  }

  v15 = *(a1 + 32);
  v16 = *(a1 + 48);
  v17 = *(a1 + 64);
  if (!v17)
  {
    result = *v11->i8;
    if (vorr_s8(*v11, *&vextq_s8(result, result, 8uLL)))
    {
      result = vandq_s8(*v9, result);
      *result.i8 = vorr_s8(*result.i8, *&vextq_s8(result, result, 8uLL));
      if (!result.i64[0])
      {
        return result;
      }
    }
  }

  if ((v12 & 4) != 0 && v16 | v17)
  {
    v47.i16[0] = v15;
    if (v16)
    {
      v18 = (**v16)(v16);
    }

    else
    {
      v19 = *(v17 + 16);
      if (!v19)
      {
        goto LABEL_20;
      }

      v48[0] = *v11->i8;
      v49 = *v9;
      v18 = v19(v48, &v49, *v17, *(v17 + 8), &v47);
    }

    v14 = v18;
    if (!v18)
    {
      return result;
    }
  }

LABEL_20:
  GlobalPose = physx::NpActor::getGlobalPose(v48, v5, v6, result);
  if (*(v5 + 8))
  {
    v21 = (*(v5 + 16) + 64);
  }

  else
  {
    v21 = (v5 + 104);
  }

  v22 = *(a1 + 24);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  v25 = *(v22 + 40) + 24 * v24;
  if (v24 >= v23)
  {
    v26 = v50;
  }

  else
  {
    v26 = (*(v22 + 40) + 24 * v24);
  }

  v27 = *v21;
  v28 = *(a1 + 16);
  v29 = *(v28 + 24);
  v30 = *(v28 + 32);
  v31 = *(*(a1 + 8) + 8872);
  v32 = *v29;
  if (v32 <= v27)
  {
    if (!(*(v31 + 56 * v32 + 8 * v27))(v29, v30, GlobalPose))
    {
      return result;
    }
  }

  else if (((*(v31 + 56 * v27 + 8 * v32))(v21, v48, v29, v30, 0, GlobalPose) & 1) == 0)
  {
    return result;
  }

  v26->i64[0] = v8;
  v33 = v50;
  if (v24 < v23)
  {
    v33 = v25;
  }

  v33[1] = v10;
  if ((*(a1 + 78) & 1) == 0)
  {
    v34 = *(a1 + 48);
    if (v34)
    {
      if ((v12 & 8) != 0)
      {
        v35 = (*(*v34 + 8))(v34, *(a1 + 40), v26);
LABEL_40:
        v14 = v35;
      }
    }

    else
    {
      v36 = *(a1 + 64);
      if (v36)
      {
        if ((v12 & 8) != 0)
        {
          v37 = *(v36 + 24);
          if (v37)
          {
            v49 = **(a1 + 40);
            v47 = *v9;
            v35 = v37(&v49, &v47, *v36, *(v36 + 8), v26);
            goto LABEL_40;
          }
        }
      }
    }
  }

  if (*(a1 + 77) == 1 && v14)
  {
    v38 = *(a1 + 24);
    result = *v26;
    *(v38 + 24) = v26[1].i64[0];
    *(v38 + 8) = result;
    *(*(a1 + 24) + 32) = 1;
    return result;
  }

  if (*(a1 + 76))
  {
    v39 = 1;
  }

  else
  {
    v39 = v14;
  }

  if (v39 == 2)
  {
    result.i32[0] = *(a1 + 56);
    if (*result.i32 >= -1.0)
    {
      v46 = *(a1 + 24);
      result = *v26;
      *(v46 + 24) = v26[1].i64[0];
      *(v46 + 8) = result;
      *(*(a1 + 24) + 32) = 1;
    }
  }

  else if (v39 == 1)
  {
    v40 = *(a1 + 24);
    v41 = *(v40 + 48);
    if (v41)
    {
      if (*(a1 + 74) == 1)
      {
        result.i32[0] = *(a1 + 56);
        if (*result.i32 >= -1.0)
        {
          v42 = *(v40 + 52);
          if (v42 == v41)
          {
            v43 = (**v40)(v40, *(v40 + 40));
            *(a1 + 74) = v43;
            if (!v43)
            {
              return result;
            }

            v42 = 0;
            v40 = *(a1 + 24);
            *(v40 + 52) = 0;
          }

          v44 = *(v40 + 40);
          *(v40 + 52) = v42 + 1;
          v45 = (v44 + 24 * v42);
          result = *v26;
          v45[1].i64[0] = v26[1].i64[0];
          *v45 = result;
        }
      }
    }
  }

  return result;
}

uint64_t MultiQueryCallback<physx::PxSweepHit>::invoke(uint64_t a1, float *a2, uint64_t *a3, int8x16_t a4)
{
  v145 = *MEMORY[0x1E69E9840];
  v138[0] = 0;
  v138[1] = 0;
  v139 = -1;
  v140 = 0;
  v142 = 0;
  v143 = 0;
  v141 = 0;
  v144 = 2139095039;
  v5 = *a3;
  v6 = a3[1];
  v7 = *(&physx::Scb::Actor::sLazyInitOffsets + (*(v6 + 11) & 0xF) + 3) + v6;
  v8 = v7 + *(&physx::Sc::gOffsetTable + *(v7 + 13) + 10);
  v9 = (*a3 + 32);
  v10 = &v9->i8[qword_1EE1C7DF8];
  v11 = *(a1 + 40);
  v12 = v11[2].i16[0];
  v13 = v12 > -1 && *(*(a1 + 24) + 80) == 0;
  v113 = *(a1 + 32);
  if (v13)
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  if (*(a1 + 78))
  {
    v109 = 2;
    goto LABEL_22;
  }

  v15 = *(a1 + 48);
  v16 = *(a1 + 64);
  if (!v16)
  {
    a4 = *v11->i8;
    if (vorr_s8(*v11, *&vextq_s8(a4, a4, 8uLL)))
    {
      a4 = vandq_s8(*v9, a4);
      *a4.i8 = vorr_s8(*a4.i8, *&vextq_s8(a4, a4, 8uLL));
      if (!a4.i64[0])
      {
        return 1;
      }
    }
  }

  if ((v12 & 4) != 0 && v15 | v16)
  {
    v123.i16[0] = v113;
    if (v15)
    {
      v17 = (**v15)(v15);
      if (!v17)
      {
        return 1;
      }

LABEL_20:
      v109 = v17;
      v113 = v123.i16[0] & 0x1B0 | v113 & 0xFE4F;
      goto LABEL_22;
    }

    v18 = *(v16 + 16);
    if (v18)
    {
      *v114 = *v11->i8;
      v127 = *v9;
      v17 = v18(v114, &v127, *v16, *(v16 + 8), &v123);
      if (!v17)
      {
        return 1;
      }

      goto LABEL_20;
    }
  }

  v109 = v14;
LABEL_22:
  GlobalPose = physx::NpActor::getGlobalPose(&v123, v5, v6, a4);
  v105 = v9;
  v106 = v12;
  v108 = v10;
  if (*(v5 + 8))
  {
    v30 = (*(v5 + 16) + 64);
  }

  else
  {
    v30 = (v5 + 104);
  }

  v32 = *(a1 + 16);
  v31 = *(a1 + 24);
  v33 = *(v31 + 84);
  v111 = *(v31 + 80);
  v110 = *(v31 + 72) + 56 * v33;
  if (v33 >= v111)
  {
    v34 = v138;
  }

  else
  {
    v34 = (*(v31 + 72) + 56 * v33);
  }

  v35 = *(a1 + 8);
  v36 = *(a1 + 72);
  v37 = *(a1 + 56);
  if (*(a1 + 104))
  {
    v38 = a1 + 80;
  }

  else
  {
    v38 = 0;
  }

  v39 = *(v32 + 24);
  v112 = *(v32 + 32);
  v40 = *(v38 + 8);
  v41 = *(v38 + 20);
  v42 = *v38;
  v43 = *(v38 + 12);
  GlobalPose.i64[0] = 0;
  LODWORD(v24) = 1.0;
  physx::Gu::computeBounds(&v134, v30, &v123, 0, GlobalPose, v24, v25, v26, v27, v28, v29, v19, v20, v21, v22, v101);
  v132 = vmul_f32(vadd_f32(vmul_f32(vsub_f32(v43, v42), 0x3F0000003F000000), vmul_f32(vsub_f32(v136, v134), 0x3F0000003F000000)), vdup_n_s32(0x3F8147AEu));
  v133 = (((v41 - v40) * 0.5) + ((v137 - v135) * 0.5)) * 1.01;
  v131 = 0;
  *v114 = vneg_f32(v132);
  *&v114[8] = -v133;
  *v127.i8 = vsub_f32(vmul_f32(vadd_f32(v42, v43), 0x3F0000003F000000), vmul_f32(vadd_f32(v136, v134), 0x3F0000003F000000));
  *&v127.i32[2] = ((v40 + v41) * 0.5) - ((v137 + v135) * 0.5);
  v44 = *(v32 + 8);
  v45 = physx::Gu::intersectRayAABB2(v114, &v132, &v127, v44, &v131 + 1, &v131, v37);
  v52.n128_u32[0] = v131;
  if (!v45 && *(&v131 + 1) > *&v131)
  {
    return 1;
  }

  v53 = *(&v131 + 1) + -10.0;
  v54 = 0.0;
  if (*(&v131 + 1) <= 10.0)
  {
    v55 = 0.0;
  }

  else
  {
    v55 = *(&v131 + 1) + -10.0;
  }

  v56 = 0;
  if (*(&v131 + 1) > 10.0)
  {
    v54 = v53 * *v44;
    v49.n128_u64[0] = *(v44 + 4);
    v56 = vmul_n_f32(v49.n128_u64[0], v53);
  }

  *v114 = v123;
  *v50.i8 = vdup_lane_s32(v56, 0);
  *v50.i32 = v54;
  *&v114[16] = vsub_f32(v124, *v50.i8);
  v115 = v125 - *&v56.i32[1];
  if (*&v131 >= v37)
  {
    v52.n128_f32[0] = v37;
  }

  v52.n128_f32[0] = v52.n128_f32[0] - v55;
  v49.n128_u32[0] = *(v32 + 40);
  v57 = *(v35 + 8864);
  v58 = *v39;
  if (*v39 <= 2)
  {
    if (v58 > 0)
    {
      if (v58 != 1)
      {
        v103 = v56;
        v104 = v54;
        if (v58 != 2)
        {
          return 1;
        }

        v65 = 56;
        if (((v36 | v113) & 0x100) == 0)
        {
          v65 = 0;
        }

        v66 = *(v57 + v65 + 8 * *v30);
        v127.i16[0] = v36 | v113;
        goto LABEL_61;
      }
    }

    else if (v58 != -1)
    {
      v103 = v56;
      v104 = v54;
      if (v58)
      {
        return 1;
      }

      v60 = v39[1];
      v130[0] = 2;
      v130[1] = v60;
      v50.i32[0] = *(v112 + 16);
      v51.i64[0] = *(v112 + 20);
      v61 = vextq_s8(vextq_s8(v50, v50, 4uLL), v51, 0xCuLL);
      v61.i32[3] = v61.i32[0];
      v130[2] = 0;
      v127 = v61;
      v128 = v51.i64[0];
      v129 = v60;
      v62 = 56;
      if (((v36 | v113) & 0x100) == 0)
      {
        v62 = 0;
      }

      v63 = *(v57 + v62 + 8 * *v30);
      v126 = v36 | v113;
      v64 = v63(v30, v114, v130, v52, v49);
      goto LABEL_62;
    }

LABEL_57:
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 4, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpSceneQueries.cpp", 306, "PxScene::sweep(): first geometry object parameter must be sphere, capsule, box or convex geometry.", v46, v47, v48, v102);
    return 1;
  }

  if ((v58 - 5) < 3)
  {
    goto LABEL_57;
  }

  v103 = v56;
  v104 = v54;
  if (v58 == 3)
  {
    v67 = 168;
    if (((v36 | v113) & 0x100) == 0)
    {
      v67 = 112;
    }

    v66 = *(v57 + v67 + 8 * *v30);
    v127.i16[0] = v36 | v113;
LABEL_61:
    v64 = v66(v30, v114, v39, v52, v49);
LABEL_62:
    if (v64)
    {
      goto LABEL_63;
    }

    return 1;
  }

  if (v58 != 4)
  {
    return 1;
  }

  v59 = *(v57 + 8 * *v30 + 224);
  v127.i16[0] = v36 | v113;
  if ((v59(v30, v114, v39, v112, v44, v34, &v127, v52.n128_f32[0], v49.n128_f32[0]) & 1) == 0)
  {
    return 1;
  }

LABEL_63:
  if (v33 >= v111)
  {
    v68 = v138;
  }

  else
  {
    v68 = v110;
  }

  *(v68 + 12) = v55 + *(v68 + 12);
  *(v68 + 6) = v104 + *(v68 + 6);
  *(v68 + 28) = vadd_f32(v103, *(v68 + 28));
  *v34 = v8;
  v68[1] = v108;
  if (*(v68 + 12) == 0.0 && (v113 & 0x200) == 0)
  {
    v69 = *(*(a1 + 16) + 8);
    v70 = -v69[1].f32[0];
    v71 = v138;
    if (v33 < v111)
    {
      v71 = v110;
    }

    *(v71 + 36) = vneg_f32(*v69);
    *(v71 + 11) = v70;
  }

  v72 = v109;
  if ((*(a1 + 78) & 1) == 0)
  {
    v73 = *(a1 + 48);
    if (v73)
    {
      if ((v106 & 8) != 0)
      {
        v74 = (*(*v73 + 8))(v73, *(a1 + 40), v34);
LABEL_79:
        v72 = v74;
      }
    }

    else
    {
      v75 = *(a1 + 64);
      if (v75)
      {
        if ((v106 & 8) != 0)
        {
          v76 = *(v75 + 24);
          if (v76)
          {
            *v114 = **(a1 + 40);
            v127 = *v105;
            v74 = v76(v114, &v127, *v75, *(v75 + 8), v34);
            goto LABEL_79;
          }
        }
      }
    }
  }

  if (*(a1 + 77) == 1 && v72)
  {
    result = 0;
    v78 = *(a1 + 24);
    v79 = *v34;
    *(v78 + 24) = *(v34 + 4);
    *(v78 + 8) = v79;
    v80 = v138;
    if (v33 < v111)
    {
      v80 = v110;
    }

LABEL_84:
    *(v78 + 28) = *(v80 + 10);
    *(v78 + 32) = *(v68 + 6);
    *(v78 + 36) = *(v68 + 28);
    *&v81 = *(v80 + 36);
    DWORD2(v81) = *(v80 + 11);
    HIDWORD(v81) = *(v68 + 12);
    *(v78 + 44) = v81;
    *(v78 + 60) = *(v80 + 13);
    *(*(a1 + 24) + 64) = 1;
    return result;
  }

  if (*(a1 + 76))
  {
    v82 = 1;
  }

  else
  {
    v82 = v72;
  }

  if (v82 != 2)
  {
    if (v82 == 1)
    {
      v83 = *(a1 + 24);
      v84 = *(v83 + 80);
      if (v84)
      {
        if (*(a1 + 74) == 1 && *(v68 + 12) <= *(a1 + 56))
        {
          v85 = *(v83 + 84);
          if (v85 == v84)
          {
            v86 = *(a1 + 40);
            v127 = *v86;
            LOWORD(v128) = v86[1].i16[0] | 0x8000;
            *&v114[8] = 0;
            *&v114[16] = 0;
            v115 = NAN;
            v116 = 0;
            *v118 = 0;
            *&v118[8] = 0;
            v117 = 0;
            *&v118[16] = 2139095039;
            v120 = 0;
            v121 = 0;
            v122 = 0;
            *v114 = &unk_1F5D27438;
            if ((*(a1 + 75) & 1) == 0)
            {
              if (*(v83 + 80))
              {
                v87 = *(a1 + 8);
                v88 = *(a1 + 16);
                v134.i16[0] = *(a1 + 32);
                v89 = physx::NpSceneQueries::multiQuery<physx::PxSweepHit>(v87, v88, v114, &v134, 0, &v127, *(a1 + 48), *(a1 + 64));
                v83 = *(a1 + 24);
                if (v89)
                {
                  v90 = *&v114[8];
                  *(v83 + 24) = v115;
                  *(v83 + 8) = v90;
                  *(v83 + 28) = v116;
                  *(v83 + 32) = v117;
                  *(v83 + 40) = *v118;
                  HIDWORD(v90) = *&v118[16];
                  *(v83 + 44) = *&v118[4];
                  *(v83 + 60) = v119;
                  v91 = *(a1 + 24);
                  *(v91 + 64) = 1;
                  v92 = physx::clipHitsToNewMaxDist<physx::PxSweepHit>(*(v91 + 72), *(v91 + 84), *(&v90 + 3));
                  v83 = *(a1 + 24);
                  *(v83 + 84) = v92;
                  v93 = *&v118[16];
                  *(a1 + 56) = *&v118[16];
                  *a2 = v93;
                }
              }
            }

            *(a1 + 75) = 1;
            v85 = *(v83 + 84);
            if (v85 == *(v83 + 80))
            {
              result = (**v83)(v83, *(v83 + 72));
              *(a1 + 74) = result;
              if (!result)
              {
                return result;
              }

              v85 = 0;
              v83 = *(a1 + 24);
              *(v83 + 84) = 0;
            }
          }

          v94 = *(v83 + 72);
          *(v83 + 84) = v85 + 1;
          v95 = v94 + 56 * v85;
          v96 = *v34;
          *(v95 + 16) = *(v34 + 4);
          *v95 = v96;
          v97 = v138;
          if (v33 < v111)
          {
            v97 = v110;
          }

          *(v95 + 20) = *(v97 + 10);
          *(v95 + 24) = *(v68 + 6);
          *(v95 + 28) = *(v68 + 28);
          *&v98 = *(v97 + 36);
          DWORD2(v98) = *(v97 + 11);
          HIDWORD(v98) = *(v68 + 12);
          *(v95 + 36) = v98;
          *(v95 + 52) = *(v97 + 13);
        }
      }
    }

    return 1;
  }

  v99 = *(v68 + 12);
  result = 1;
  if (v99 <= *(a1 + 56))
  {
    *(a1 + 56) = v99;
    *a2 = v99;
    v78 = *(a1 + 24);
    v100 = *v34;
    *(v78 + 24) = *(v34 + 4);
    *(v78 + 8) = v100;
    v80 = v138;
    if (v33 < v111)
    {
      v80 = v110;
    }

    goto LABEL_84;
  }

  return result;
}

uint64_t physx::NpShape::NpShape(uint64_t a1, uint64_t *a2, char *a3, const unsigned __int16 *a4, unsigned int a5, int a6)
{
  *(a1 + 8) = 196615;
  *(a1 + 32) = 1;
  *a1 = &unk_1F5D26148;
  *(a1 + 16) = 0;
  *(a1 + 24) = &unk_1F5D262C8;
  v8 = *a3;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 56) = 0;
  v13 = v8;
  physx::Sc::ShapeCore::ShapeCore(a1 + 80, a2, &v13, a4, a5);
  if (a6)
  {
    v9 = 0x1000000;
  }

  else
  {
    v9 = 0x2000000;
  }

  *(a1 + 56) = *(a1 + 56) & 0xF0FFFFFF | v9;
  *(a1 + 256) = 0;
  if (a6)
  {
    v10 = 0x80000000;
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 264) = v10;
  *(a1 + 16) = 0;
  MeshRefCountable = physx::NpShape::getMeshRefCountable(a1);
  if (MeshRefCountable)
  {
    atomic_fetch_add((MeshRefCountable + 8), 1u);
  }

  return a1;
}

void physx::NpShape::~NpShape(physx::NpShape *this)
{
  *this = &unk_1F5D26148;
  *(this + 3) = &unk_1F5D262C8;
  physx::NpShape::decMeshRefCount(this);
  if ((*(this + 56) & 2) != 0)
  {
    v4 = (*(this + 8) + 148);
    goto LABEL_8;
  }

  v2 = *(this + 38);
  if ((v2 - 7) >= 0xFFFFFFFE)
  {
    v5 = v2 == 5;
    v6 = 120;
    if (v5)
    {
      v6 = 144;
    }

    v4 = (this + v6 + 80);
LABEL_8:
    v3 = *v4;
    if (!v3)
    {
      goto LABEL_21;
    }

    goto LABEL_9;
  }

  v3 = 1;
LABEL_9:
  v7 = 0;
  v8 = v3;
  do
  {
    if ((*(this + 56) & 2) != 0)
    {
      v11 = *(this + 8);
      if (*(v11 + 148) == 1)
      {
        v10 = (v11 + 144);
      }

      else
      {
        v10 = (*(*(this + 6) + 7792) + 2 * *(v11 + 144));
      }
    }

    else
    {
      v9 = *(this + 38);
      v10 = this + 146;
      if ((v9 - 7) >= 0xFFFFFFFE)
      {
        if (v9 == 5)
        {
          v10 = *(this + 27);
        }

        else
        {
          v10 = *(this + 24);
        }
      }
    }

    v12 = *(*(physx::NpPhysics::mInstance + 56) + 8 * *&v10[2 * v7]);
    if (atomic_fetch_add((v12 + 32), 0xFFFFFFFF) == 1)
    {
      (*(*(v12 + 24) + 16))();
    }

    ++v7;
  }

  while (v8 != v7);
LABEL_21:
  physx::Sc::ShapeCore::~ShapeCore((this + 80));
}

{
  physx::NpShape::~NpShape(this);
  if (v1)
  {
    v2 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

    v2();
  }
}

atomic_uint *physx::NpShape::decMeshRefCount(physx::NpShape *this)
{
  result = physx::NpShape::getMeshRefCountable(this);
  if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    v2 = *(*result + 16);

    return v2();
  }

  return result;
}

void non-virtual thunk tophysx::NpShape::~NpShape(physx::NpShape *this)
{
  physx::NpShape::~NpShape((this - 24));
}

{
  physx::NpShape::~NpShape((this - 24));
  v1 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

  v1();
}

uint64_t physx::NpShape::onRefCountZero(physx::NpShape *this)
{
  physx::NpFactory::onShapeRelease(physx::NpFactory::mInstance, this);

  return physx::NpDestroy(this + 48);
}

uint64_t non-virtual thunk tophysx::NpShape::onRefCountZero(physx::NpShape *this)
{
  physx::NpFactory::onShapeRelease(physx::NpFactory::mInstance, this - 24);

  return physx::NpDestroy(this + 24);
}

uint64_t physx::NpShape::exportExtraData(uint64_t a1, uint64_t a2)
{
  physx::Sc::ShapeCore::exportExtraData(a1 + 80, a2);
  v4 = *(a1 + 256);
  v5 = *(*a2 + 32);

  return v5(a2, v4);
}

uint64_t physx::NpShape::requiresObjects(uint64_t result, uint64_t a2)
{
  v3 = result;
  v5 = (result + 152);
  v4 = *(result + 152);
  switch(v4)
  {
    case 6:
      v9 = result + 152;
      if (*(result + 56))
      {
        v9 = *(result + 64) + 64;
      }

      v7 = (v9 + 8);
      break;
    case 5:
      v8 = result + 152;
      if (*(result + 56))
      {
        v8 = *(result + 64) + 64;
      }

      v7 = (v8 + 40);
      break;
    case 4:
      v6 = result + 152;
      if (*(result + 56))
      {
        v6 = *(result + 64) + 64;
      }

      v7 = (v6 + 32);
      break;
    default:
      goto LABEL_15;
  }

  if (*v7)
  {
    result = (*(*a2 + 16))(a2);
  }

LABEL_15:
  if ((*(v3 + 56) & 2) != 0)
  {
    v11 = (*(v3 + 64) + 148);
    goto LABEL_22;
  }

  if ((*v5 - 7) >= 0xFFFFFFFE)
  {
    v12 = 120;
    if (*v5 == 5)
    {
      v12 = 144;
    }

    v11 = (v3 + v12 + 80);
LABEL_22:
    v10 = *v11;
    if (!v10)
    {
      return result;
    }

    goto LABEL_23;
  }

  v10 = 1;
LABEL_23:
  v13 = 0;
  v14 = v10;
  do
  {
    if ((*(v3 + 56) & 2) != 0)
    {
      v16 = *(v3 + 64);
      if (*(v16 + 148) == 1)
      {
        v15 = v16 + 144;
      }

      else
      {
        v15 = *(*(v3 + 48) + 7792) + 2 * *(v16 + 144);
      }
    }

    else
    {
      v15 = v3 + 146;
      if ((*v5 - 7) >= 0xFFFFFFFE)
      {
        if (*v5 == 5)
        {
          v15 = *(v3 + 216);
        }

        else
        {
          v15 = *(v3 + 192);
        }
      }
    }

    result = (*(*a2 + 16))(a2, *(*(physx::NpPhysics::mInstance + 56) + 8 * *(v15 + 2 * v13++)));
  }

  while (v14 != v13);
  return result;
}

uint64_t physx::NpShape::release(uint64_t this)
{
  if (atomic_fetch_add((this + 32), 0xFFFFFFFF) == 1)
  {
    return (*(*(this + 24) + 16))();
  }

  return this;
}

uint64_t physx::NpShape::updateSQ(uint64_t this, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 40);
  if (!v8)
  {
    return this;
  }

  v10 = this;
  v11 = ((*(this + 56) & 0x40) != 0 ? *(this + 64) + 52 : this + 144);
  if ((*v11 & 2) == 0)
  {
    return this;
  }

  v12 = *(v8 + 8);
  v13 = (v8 + *(&physx::NpActor::sLazyInitOffsets + v12 + 18));
  if (((*(v13 + 2) >> 30) - 1) > 1)
  {
    v15 = 0;
  }

  else
  {
    v14 = *v13;
    if (v14)
    {
      v15 = (v14 - 16);
    }

    else
    {
      v15 = 0;
    }
  }

  v16 = (v8 + 40);
  if (v12 == 5)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v12 == 6)
  {
    v17 = v16;
  }

  if (v12 == 13)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  if (v15)
  {
    v19 = *(v18 + 4);
    v20 = v18;
    if (v19 != 1)
    {
      if (!*(v18 + 4))
      {
        v22 = 0xFFFFFFFFLL;
LABEL_29:
        v23 = v18 + 2;
        if (*(v18 + 12) != 1)
        {
          v23 = *v23;
        }

        this = physx::Sq::SceneQueryManager::markForUpdate(v15 + 1080, *(v18 + 8), v23[v22]);
        goto LABEL_32;
      }

      v20 = *v18;
    }

    v21 = 0;
    v22 = 0xFFFFFFFFLL;
    while (v20[v21] != this)
    {
      if (v19 == ++v21)
      {
        goto LABEL_29;
      }
    }

    v22 = v21;
    goto LABEL_29;
  }

LABEL_32:
  if (v18[5])
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpShape.cpp", 236, a2, a6, a7, a8, v26);
    v24 = v18[5];
    v25 = *(v10 + 40);

    return physx::Sq::PruningStructure::invalidate(v24, v25);
  }

  return this;
}

uint64_t physx::NpShape::setGeometry(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (*a2 == *(a1 + 152))
  {
    v30 = v9;
    v31 = v10;
    physx::NpShape::decMeshRefCount(a1);
    v13 = *(a1 + 48);
    v14 = *(a1 + 56) >> 30;
    if (v14 == 3)
    {
LABEL_5:
      physx::Scb::Scene::scheduleForUpdate(*(a1 + 48), a1 + 48);
      v15 = *(a1 + 56);
      *(a1 + 56) = v15 | 1;
      Stream = *(a1 + 64);
      if (!Stream)
      {
        Stream = physx::Scb::Scene::getStream(*(a1 + 48), HIBYTE(v15) & 0xF);
        *(a1 + 64) = Stream;
      }

      physx::Gu::GeometryUnion::set(Stream + 64, a2);
LABEL_16:
      MeshRefCountable = physx::NpShape::getMeshRefCountable(a1);
      if (MeshRefCountable)
      {
        atomic_fetch_add((MeshRefCountable + 8), 1u);
      }

      return physx::NpShape::updateSQ(a1, "PxShape::setGeometry: Shape is a part of pruning structure, pruning structure is now invalid!", v22, v23, v24, v25, v26, v27);
    }

    if (v14 == 2)
    {
      if (*(v13 + 7689))
      {
        goto LABEL_5;
      }
    }

    else if (!v13)
    {
      v19 = a1 + 80;
      physx::Sc::ShapeCore::setGeometry(a1 + 80, a2);
LABEL_14:
      v20 = *(a1 + 40);
      if (v20)
      {
        v29 = 1;
        v28 = 0;
        physx::Sc::RigidCore::onShapeChange((v20 + 128), v19, &v29, &v28, 0);
      }

      goto LABEL_16;
    }

    v19 = a1 + 80;
    (*(**(*(v13 + 1856) + 1776) + 96))(*(*(v13 + 1856) + 1776), a1 + 112);
    physx::Sc::ShapeCore::setGeometry(a1 + 80, a2);
    (*(**(*(v13 + 1856) + 1776) + 88))(*(*(v13 + 1856) + 1776), a1 + 112);
    goto LABEL_14;
  }

  v17 = physx::shdfnd::Foundation::mInstance;

  return physx::shdfnd::Foundation::error(v17, 4, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpShape.cpp", 258, "PxShape::setGeometry(): Invalid geometry type. Changing the type of the shape is not supported.", a6, a7, a8, a9);
}

__n128 physx::NpShape::getGeometry@<Q0>(physx::NpShape *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 56))
  {
    v2 = (*(this + 8) + 64);
  }

  else
  {
    v2 = this + 152;
  }

  v3 = *(v2 + 1);
  *a2 = *v2;
  *(a2 + 16) = v3;
  result = *(v2 + 2);
  *(a2 + 32) = result;
  return result;
}

BOOL physx::NpShape::getBoxGeometry(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 152;
  v2 = *(a1 + 152);
  if (v2 == 3)
  {
    if (*(a1 + 56))
    {
      v5 = *(a1 + 64);
      v6 = *(v5 + 64);
      v3 = v5 + 64;
      v4 = v6;
    }

    else
    {
      v4 = 3;
    }

    *a2 = v4;
    *(a2 + 4) = *(v3 + 4);
    *(a2 + 12) = *(v3 + 12);
  }

  return v2 == 3;
}

BOOL physx::NpShape::getSphereGeometry(uint64_t a1, void *a2)
{
  v3 = (a1 + 152);
  v2 = *(a1 + 152);
  if (!v2)
  {
    if (*(a1 + 56))
    {
      v3 = (*(a1 + 64) + 64);
    }

    *a2 = *v3;
  }

  return v2 == 0;
}

BOOL physx::NpShape::getCapsuleGeometry(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 152;
  v2 = *(a1 + 152);
  if (v2 == 2)
  {
    if (*(a1 + 56))
    {
      v3 = *(a1 + 64) + 64;
    }

    v4 = *v3;
    *(a2 + 8) = *(v3 + 8);
    *a2 = v4;
  }

  return v2 == 2;
}

BOOL physx::NpShape::getPlaneGeometry(uint64_t a1, int *a2)
{
  v2 = *(a1 + 152);
  if (v2 == 1)
  {
    if (*(a1 + 56))
    {
      v3 = *(*(a1 + 64) + 64);
    }

    else
    {
      v3 = 1;
    }

    *a2 = v3;
  }

  return v2 == 1;
}

BOOL physx::NpShape::getConvexMeshGeometry(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 152;
  v2 = *(a1 + 152);
  if (v2 == 4)
  {
    if (*(a1 + 56))
    {
      v5 = *(a1 + 64);
      v6 = *(v5 + 64);
      v3 = v5 + 64;
      v4 = v6;
    }

    else
    {
      v4 = 4;
    }

    *a2 = v4;
    *(a2 + 4) = *(v3 + 4);
    *(a2 + 20) = *(v3 + 20);
    *(a2 + 28) = *(v3 + 28);
    *(a2 + 32) = *(v3 + 32);
    *(a2 + 40) = *(v3 + 40);
    v7 = *(v3 + 41);
    *(a2 + 43) = *(v3 + 43);
    *(a2 + 41) = v7;
  }

  return v2 == 4;
}

BOOL physx::NpShape::getTriangleMeshGeometry(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 152;
  v2 = *(a1 + 152);
  if (v2 == 5)
  {
    if (*(a1 + 56))
    {
      v5 = *(a1 + 64);
      v6 = *(v5 + 64);
      v3 = v5 + 64;
      v4 = v6;
    }

    else
    {
      v4 = 5;
    }

    *a2 = v4;
    *(a2 + 4) = *(v3 + 4);
    *(a2 + 20) = *(v3 + 20);
    *(a2 + 28) = *(v3 + 28);
    *(a2 + 32) = *(v3 + 32);
    v7 = *(v3 + 33);
    *(a2 + 40) = *(v3 + 40);
    *(a2 + 33) = v7;
  }

  return v2 == 5;
}

BOOL physx::NpShape::getHeightFieldGeometry(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 152;
  v2 = *(a1 + 152);
  if (v2 == 6)
  {
    if (*(a1 + 56))
    {
      v5 = *(a1 + 64);
      v6 = *(v5 + 64);
      v3 = v5 + 64;
      v4 = v6;
    }

    else
    {
      v4 = 6;
    }

    *a2 = v4;
    v7 = *(v3 + 8);
    *(a2 + 24) = *(v3 + 24);
    *(a2 + 8) = v7;
    *(a2 + 28) = *(v3 + 28);
    v8 = *(v3 + 29);
    *(a2 + 31) = *(v3 + 31);
    *(a2 + 29) = v8;
  }

  return v2 == 6;
}

uint64_t physx::NpShape::setLocalPose(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a2 + 4);
  v10 = *(a2 + 8);
  v11 = *(a2 + 12);
  v12 = sqrtf((((v9 * v9) + (*a2 * *a2)) + (v10 * v10)) + (v11 * v11));
  v13 = *a2 / v12;
  v14 = v9 / v12;
  v15 = v10 / v12;
  v16 = v11 / v12;
  v18 = *(a2 + 16);
  v17 = *(a2 + 20);
  v19 = *(a2 + 24);
  v20 = *(a1 + 56);
  v21 = v20 >> 30;
  if (v20 >> 30 == 2)
  {
    v22 = *(a1 + 48);
    if (v22[961].i8[1])
    {
      goto LABEL_5;
    }
  }

  else if (v21 == 3)
  {
    v22 = *(a1 + 48);
LABEL_5:
    Stream = *(a1 + 64);
    if (!Stream)
    {
      Stream = physx::Scb::Scene::getStream(v22, HIBYTE(v20) & 0xF);
      *(a1 + 64) = Stream;
      v22 = *(a1 + 48);
    }

    *Stream = v13;
    *(Stream + 4) = v14;
    *(Stream + 8) = v15;
    *(Stream + 12) = v16;
    *(Stream + 16) = v18;
    *(Stream + 20) = v17;
    *(Stream + 24) = v19;
    physx::Scb::Scene::scheduleForUpdate(v22, a1 + 48);
    *(a1 + 56) |= 4u;
    goto LABEL_11;
  }

  v24 = *(a1 + 144);
  *(a1 + 112) = v13;
  *(a1 + 116) = v14;
  *(a1 + 120) = v15;
  *(a1 + 124) = v16;
  *(a1 + 128) = v18;
  *(a1 + 132) = v17;
  *(a1 + 136) = v19;
  if (v21 != 1)
  {
    v25 = *(a1 + 40);
    if (v25)
    {
      v28 = 4;
      v27 = v24;
      physx::Sc::RigidCore::onShapeChange((v25 + 128), a1 + 80, &v28, &v27, 0);
    }
  }

LABEL_11:

  return physx::NpShape::updateSQ(a1, "PxShape::setLocalPose: Shape is a part of pruning structure, pruning structure is now invalid!", a3, a4, a5, a6, a7, a8);
}

float physx::NpShape::getLocalPose@<S0>(physx::NpShape *this@<X0>, uint64_t a2@<X8>)
{
  if ((*(this + 56) & 4) != 0)
  {
    v2 = *(this + 8);
  }

  else
  {
    v2 = this + 112;
  }

  *a2 = *v2;
  *(a2 + 16) = *(v2 + 2);
  result = *(v2 + 6);
  *(a2 + 24) = result;
  return result;
}

void physx::NpShape::setSimulationFilterData(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 56);
  v5 = v4 >> 30;
  if (v4 >> 30 == 2)
  {
    v6 = *(a1 + 48);
    if (v6[961].i8[1])
    {
      goto LABEL_5;
    }
  }

  else if (v5 == 3)
  {
    v6 = *(a1 + 48);
LABEL_5:
    Stream = *(a1 + 64);
    if (!Stream)
    {
      Stream = physx::Scb::Scene::getStream(v6, HIBYTE(v4) & 0xF);
      *(a1 + 64) = Stream;
      v6 = *(a1 + 48);
    }

    *(Stream + 28) = *a2;
    physx::Scb::Scene::scheduleForUpdate(v6, a1 + 48);
    *(a1 + 56) |= 8u;
    return;
  }

  v8 = *(a1 + 144);
  *(a1 + 96) = *a2;
  v9 = *(a1 + 40);
  if (v5 != 1 && v9 != 0)
  {
    v12 = 8;
    v11 = v8;
    physx::Sc::RigidCore::onShapeChange((v9 + 128), a1 + 80, &v12, &v11, 0);
  }
}

__n128 physx::NpShape::getSimulationFilterData@<Q0>(physx::NpShape *this@<X0>, __n128 *a2@<X8>)
{
  if ((*(this + 56) & 8) != 0)
  {
    v2 = (*(this + 8) + 28);
  }

  else
  {
    v2 = (this + 96);
  }

  result = *v2;
  *a2 = *v2;
  return result;
}

__n128 physx::NpShape::setQueryFilterData(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[5] = *a2;
  return result;
}

__n128 physx::NpShape::getQueryFilterData@<Q0>(__n128 *this@<X0>, __n128 *a2@<X8>)
{
  result = this[5];
  *a2 = result;
  return result;
}

void physx::NpShape::setMaterials(physx::NpShape *this, physx::PxMaterial *const *a2, unsigned int a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = *(this + 14);
  if ((v6 & 2) != 0)
  {
    v9 = (*(this + 8) + 148);
  }

  else
  {
    v7 = *(this + 38);
    if ((v7 - 7) <= 0xFFFFFFFD)
    {
      v40 = 0;
      LODWORD(v8) = 1;
      goto LABEL_10;
    }

    v19 = v7 == 5;
    v10 = 120;
    if (v19)
    {
      v10 = 144;
    }

    v9 = (this + v10 + 80);
  }

  v8 = *v9;
  v40 = v8 > 0x80;
  if (v8 >= 0x81)
  {
    v11 = physx::shdfnd::TempAllocator::allocate(&v41, 8 * v8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpShape.cpp", 410);
    v6 = *(this + 14);
    v12 = 1;
    goto LABEL_11;
  }

LABEL_10:
  MEMORY[0x1EEE9AC00](this);
  v11 = (&v39 - v13);
  bzero(&v39 - v13, v14);
  v12 = 0;
LABEL_11:
  v39 = v11;
  if ((v6 & 2) != 0)
  {
    v18 = *(this + 8);
    LODWORD(v17) = *(v18 + 148);
    if (v17 == 1)
    {
      v16 = (v18 + 144);
    }

    else
    {
      v16 = (*(*(this + 6) + 7792) + 2 * *(v18 + 144));
    }
  }

  else
  {
    v15 = *(this + 38);
    if ((v15 - 7) >= 0xFFFFFFFE)
    {
      v19 = v15 == 5;
      v20 = 120;
      if (v19)
      {
        v20 = 144;
      }

      v17 = this + v20;
      v21 = 192;
      if (v19)
      {
        v21 = 216;
      }

      v16 = *(this + v21);
      LODWORD(v17) = *(v17 + 80);
    }

    else
    {
      v16 = (this + 146);
      LODWORD(v17) = 1;
    }
  }

  if (v17 >= v8)
  {
    v17 = v8;
  }

  else
  {
    v17 = v17;
  }

  if (v17)
  {
    v22 = physx::NpPhysics::mInstance;
    v23 = v11;
    do
    {
      v24 = *v16++;
      *v23++ = *(*(v22 + 56) + 8 * v24);
      --v17;
    }

    while (v17);
  }

  if (v6 >> 30 != 3 && (v6 >> 30 != 2 || *(*(this + 6) + 7689) != 1))
  {
    if (!physx::Scb::Shape::setMaterialsHelper((this + 48), a2, a3))
    {
      goto LABEL_50;
    }

    if (a3)
    {
      goto LABEL_43;
    }

    goto LABEL_45;
  }

  Stream = *(this + 8);
  if (!Stream)
  {
    Stream = physx::Scb::Scene::getStream(*(this + 6), HIBYTE(v6) & 0xF);
    *(this + 8) = Stream;
  }

  if (a3 == 1)
  {
    v26 = (Stream + 144);
    *(Stream + 148) = 1;
  }

  else
  {
    v28 = *(this + 6);
    v29 = *(v28 + 7800);
    v41 = 0;
    physx::shdfnd::Array<unsigned short,physx::shdfnd::ReflectionAllocator<unsigned short>>::resize(v28 + 7792, v29 + a3, &v41);
    v30 = *(v28 + 7792);
    *(Stream + 144) = v29;
    *(Stream + 148) = a3;
    if (!a3)
    {
      goto LABEL_42;
    }

    v26 = (v30 + 2 * v29);
  }

  v31 = a3;
  v32 = a2;
  do
  {
    v33 = *v32++;
    *v26++ = *(v33 + 72);
    --v31;
  }

  while (v31);
LABEL_42:
  physx::Scb::Scene::scheduleForUpdate(*(this + 6), this + 48);
  *(this + 14) |= 2u;
  if (a3)
  {
LABEL_43:
    v34 = a3;
    do
    {
      v35 = *a2++;
      atomic_fetch_add((v35 + 32), 1u);
      --v34;
    }

    while (v34);
  }

LABEL_45:
  if (!v8)
  {
    return;
  }

  v36 = v8;
  v37 = v11;
  do
  {
    v38 = *v37;
    if (atomic_fetch_add((*v37 + 32), 0xFFFFFFFF) == 1)
    {
      (*(*(v38 + 24) + 16))(v38 + 24, v27);
    }

    ++v37;
    --v36;
  }

  while (v36);
LABEL_50:
  if (v12)
  {
    physx::shdfnd::TempAllocator::deallocate(&v39, v11);
  }
}

uint64_t physx::NpShape::getNbMaterials(physx::NpShape *this)
{
  if ((*(this + 56) & 2) != 0)
  {
    return *(*(this + 8) + 148);
  }

  v1 = *(this + 38);
  if ((v1 - 7) < 0xFFFFFFFE)
  {
    return 1;
  }

  v3 = v1 == 5;
  v4 = 120;
  if (v3)
  {
    v4 = 144;
  }

  return *(this + v4 + 80);
}

uint64_t physx::NpShape::getMaterials(physx::NpShape *this, physx::PxMaterial **a2, unsigned int a3, int a4)
{
  if ((*(this + 56) & 2) != 0)
  {
    v7 = *(this + 8);
    v6 = *(v7 + 148);
    if (v6 == 1)
    {
      v5 = (v7 + 144);
    }

    else
    {
      v5 = (*(*(this + 6) + 7792) + 2 * *(v7 + 144));
    }
  }

  else
  {
    v4 = *(this + 38);
    if ((v4 - 7) >= 0xFFFFFFFE)
    {
      v8 = v4 == 5;
      v9 = 120;
      if (v8)
      {
        v9 = 144;
      }

      v10 = this + v9;
      v11 = 192;
      if (v8)
      {
        v11 = 216;
      }

      v5 = *(this + v11);
      v6 = *(v10 + 40);
    }

    else
    {
      v5 = this + 146;
      v6 = 1;
    }
  }

  v12 = (v6 - a4) & ~((v6 - a4) >> 31);
  if (v12 >= a3)
  {
    result = a3;
  }

  else
  {
    result = v12;
  }

  if (result)
  {
    v14 = physx::NpPhysics::mInstance;
    v15 = &v5[2 * a4];
    v16 = result;
    do
    {
      v17 = *v15;
      v15 += 2;
      *a2++ = *(*(v14 + 56) + 8 * v17);
      --v16;
    }

    while (v16);
  }

  return result;
}

uint64_t physx::NpShape::getMaterialFromInternalFaceIndex(physx::NpShape *this, uint64_t a2)
{
  v4 = (*(*this + 64))(this);
  v5 = (*(*this + 64))(this);
  v10 = v4 == 6 || v5 == 5;
  if (a2 == -1 && v10)
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpShape.cpp", 447, "PxShape::getMaterialFromInternalFaceIndex received 0xFFFFffff as input - returning NULL.", v6, v7, v8, v20);
    return 0;
  }

  else
  {
    if (v4 == 6)
    {
      v20 = 6;
      *&v21[4] = 0;
      __asm { FMOV            V0.2S, #1.0 }

      *&v21[12] = _D0;
      v22[0] = 1065353216;
      (*(*this + 136))(this, &v20);
      v16 = (*(**&v21[4] + 136))(*&v21[4], a2);
    }

    else if (v5 == 5 && (v20 = 5, *v21 = xmmword_1E304F3C0, *&v21[16] = 0, LODWORD(v22[0]) = 0, *(v22 + 4) = 1065353216, v23 = 0, (*(*this + 128))(this, &v20), v23[12]))
    {
      v16 = (*(*v23 + 112))(v23, a2);
    }

    else
    {
      v16 = 0;
    }

    if ((*(this + 56) & 2) != 0)
    {
      v19 = *(this + 8);
      if (*(v19 + 148) == 1)
      {
        v18 = (v19 + 144);
      }

      else
      {
        v18 = (*(*(this + 6) + 7792) + 2 * *(v19 + 144));
      }
    }

    else
    {
      v17 = *(this + 38);
      if ((v17 - 7) > 0xFFFFFFFD)
      {
        if (v17 == 5)
        {
          v18 = *(this + 27);
        }

        else
        {
          v18 = *(this + 24);
        }
      }

      else
      {
        v18 = this + 146;
      }
    }

    return *(*(physx::NpPhysics::mInstance + 56) + 8 * *&v18[2 * v16]);
  }
}

void physx::NpShape::setContactOffset(physx::NpShape *this, float a2)
{
  v4 = *(this + 14);
  v5 = v4 >> 30;
  if (v4 >> 30 == 2)
  {
    v6 = *(this + 6);
    if (v6[961].i8[1])
    {
      goto LABEL_5;
    }

    v8 = *(this + 144);
    *(this + 35) = a2;
    v9 = *(this + 5);
    if (!v9)
    {
      return;
    }

    goto LABEL_12;
  }

  if (v5 == 3)
  {
    v6 = *(this + 6);
LABEL_5:
    Stream = *(this + 8);
    if (!Stream)
    {
      Stream = physx::Scb::Scene::getStream(v6, HIBYTE(v4) & 0xF);
      *(this + 8) = Stream;
      v6 = *(this + 6);
    }

    *(Stream + 44) = a2;
    physx::Scb::Scene::scheduleForUpdate(v6, this + 48);
    *(this + 14) |= 0x10u;
    return;
  }

  v8 = *(this + 144);
  *(this + 35) = a2;
  v9 = *(this + 5);
  if (v5 != 1 && v9 != 0)
  {
LABEL_12:
    v12 = 16;
    v11 = v8;
    physx::Sc::RigidCore::onShapeChange((v9 + 128), this + 80, &v12, &v11, 0);
  }
}

float physx::NpShape::getContactOffset(physx::NpShape *this)
{
  if ((*(this + 56) & 0x10) != 0)
  {
    v1 = (*(this + 8) + 44);
  }

  else
  {
    v1 = this + 140;
  }

  return *v1;
}

void physx::NpShape::setRestOffset(physx::NpShape *this, float a2)
{
  v4 = *(this + 14);
  v5 = v4 >> 30;
  if (v4 >> 30 == 2)
  {
    v6 = *(this + 6);
    if (v6[961].i8[1])
    {
      goto LABEL_5;
    }

    v8 = *(this + 144);
    *(this + 60) = a2;
    v9 = *(this + 5);
    if (!v9)
    {
      return;
    }

    goto LABEL_12;
  }

  if (v5 == 3)
  {
    v6 = *(this + 6);
LABEL_5:
    Stream = *(this + 8);
    if (!Stream)
    {
      Stream = physx::Scb::Scene::getStream(v6, HIBYTE(v4) & 0xF);
      *(this + 8) = Stream;
      v6 = *(this + 6);
    }

    *(Stream + 48) = a2;
    physx::Scb::Scene::scheduleForUpdate(v6, this + 48);
    *(this + 14) |= 0x20u;
    return;
  }

  v8 = *(this + 144);
  *(this + 60) = a2;
  v9 = *(this + 5);
  if (v5 != 1 && v9 != 0)
  {
LABEL_12:
    v12 = 32;
    v11 = v8;
    physx::Sc::RigidCore::onShapeChange((v9 + 128), this + 80, &v12, &v11, 0);
  }
}

float physx::NpShape::getRestOffset(physx::NpShape *this)
{
  if ((*(this + 56) & 0x20) != 0)
  {
    v1 = (*(this + 8) + 48);
  }

  else
  {
    v1 = this + 240;
  }

  return *v1;
}

void physx::NpShape::setTorsionalPatchRadius(physx::NpShape *this, float a2)
{
  v4 = *(this + 14);
  v5 = v4 >> 30;
  if (v4 >> 30 == 2)
  {
    v6 = *(this + 6);
    if (v6[961].i8[1])
    {
      goto LABEL_5;
    }

    v8 = *(this + 144);
    *(this + 61) = a2;
    v9 = *(this + 5);
    if (!v9)
    {
      return;
    }

    goto LABEL_12;
  }

  if (v5 == 3)
  {
    v6 = *(this + 6);
LABEL_5:
    Stream = *(this + 8);
    if (!Stream)
    {
      Stream = physx::Scb::Scene::getStream(v6, HIBYTE(v4) & 0xF);
      *(this + 8) = Stream;
      v6 = *(this + 6);
    }

    *(Stream + 56) = a2;
    physx::Scb::Scene::scheduleForUpdate(v6, this + 48);
    *(this + 14) |= 0x80u;
    return;
  }

  v8 = *(this + 144);
  *(this + 61) = a2;
  v9 = *(this + 5);
  if (v5 != 1 && v9 != 0)
  {
LABEL_12:
    v12 = 128;
    v11 = v8;
    physx::Sc::RigidCore::onShapeChange((v9 + 128), this + 80, &v12, &v11, 0);
  }
}

float physx::NpShape::getTorsionalPatchRadius(physx::NpShape *this)
{
  if ((*(this + 56) & 0x80) != 0)
  {
    v1 = (*(this + 8) + 56);
  }

  else
  {
    v1 = this + 244;
  }

  return *v1;
}

void physx::NpShape::setMinTorsionalPatchRadius(physx::NpShape *this, float a2)
{
  v4 = *(this + 14);
  v5 = v4 >> 30;
  if (v4 >> 30 == 2)
  {
    v6 = *(this + 6);
    if (v6[961].i8[1])
    {
      goto LABEL_5;
    }

    v8 = *(this + 144);
    *(this + 62) = a2;
    v9 = *(this + 5);
    if (!v9)
    {
      return;
    }

    goto LABEL_12;
  }

  if (v5 == 3)
  {
    v6 = *(this + 6);
LABEL_5:
    Stream = *(this + 8);
    if (!Stream)
    {
      Stream = physx::Scb::Scene::getStream(v6, HIBYTE(v4) & 0xF);
      *(this + 8) = Stream;
      v6 = *(this + 6);
    }

    *(Stream + 60) = a2;
    physx::Scb::Scene::scheduleForUpdate(v6, this + 48);
    *(this + 14) |= 0x100u;
    return;
  }

  v8 = *(this + 144);
  *(this + 62) = a2;
  v9 = *(this + 5);
  if (v5 != 1 && v9 != 0)
  {
LABEL_12:
    v12 = 256;
    v11 = v8;
    physx::Sc::RigidCore::onShapeChange((v9 + 128), this + 80, &v12, &v11, 0);
  }
}

float physx::NpShape::getMinTorsionalPatchRadius(physx::NpShape *this)
{
  if (*(this + 57))
  {
    v1 = (*(this + 8) + 60);
  }

  else
  {
    v1 = this + 248;
  }

  return *v1;
}

void physx::NpShape::setFlagsInternal(uint64_t a1, char *a2, float32x4_t a3, double a4, double a5, double a6, double a7, double a8, int32x4_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  v16 = *(a1 + 152) - 7;
  v17 = *a2;
  if (v16 >= 0xFFFFFFFE && (v17 & 4) != 0)
  {
    v19 = "PxShape::setFlag(s): triangle mesh and heightfield triggers are not supported!";
    v20 = physx::shdfnd::Foundation::mInstance;
    v21 = 545;
LABEL_8:

    physx::shdfnd::Foundation::error(v20, 4, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpShape.cpp", v21, v19, a13, a14, a15, a16);
    return;
  }

  if ((~v17 & 5) == 0)
  {
    v19 = "PxShape::setFlag(s): shapes cannot simultaneously be trigger shapes and simulation shapes.";
    v20 = physx::shdfnd::Foundation::mInstance;
    v21 = 552;
    goto LABEL_8;
  }

  if ((*(a1 + 56) & 0x40) != 0)
  {
    v24 = (*(a1 + 64) + 52);
  }

  else
  {
    v24 = (a1 + 144);
  }

  v25 = *v24;
  v26 = *(a1 + 40);
  if (v26)
  {
    v27 = v26[4];
    if (v27 == 5)
    {
      (*(*v26 + 432))(&v48);
      v28 = v48 & 1;
    }

    else
    {
      v28 = 0;
    }

    if ((v17 & 1) != 0 && v27 != 6 && (v28 & 1) == 0 && (v25 & 1) == 0 && (v16 > 0xFFFFFFFD || *(a1 + 152) == 1))
    {
      physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 4, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpShape.cpp", 576, "PxShape::setFlag(s): triangle mesh, heightfield and plane shapes can only be simulation shapes if part of a PxRigidStatic!", a13, a14, a15, v47);
      return;
    }
  }

  v29 = *a2;
  v30 = *(a1 + 56);
  v31 = v30 >> 30;
  if (v30 >> 30 == 2)
  {
    v32 = *(a1 + 48);
    if (v32[961].i8[1])
    {
      goto LABEL_29;
    }

    v34 = *(a1 + 144);
    *(a1 + 144) = v29;
  }

  else
  {
    if (v31 == 3)
    {
      v32 = *(a1 + 48);
LABEL_29:
      Stream = *(a1 + 64);
      if (!Stream)
      {
        Stream = physx::Scb::Scene::getStream(v32, HIBYTE(v30) & 0xF);
        *(a1 + 64) = Stream;
        v32 = *(a1 + 48);
      }

      *(Stream + 52) = v29;
      physx::Scb::Scene::scheduleForUpdate(v32, a1 + 48);
      *(a1 + 56) |= 0x40u;
      goto LABEL_37;
    }

    v34 = *(a1 + 144);
    *(a1 + 144) = v29;
    if (v31 == 1)
    {
      goto LABEL_37;
    }
  }

  v35 = *(a1 + 40);
  if (v35)
  {
    *(&v48 + 2) = 64;
    BYTE1(v48) = v34;
    physx::Sc::RigidCore::onShapeChange((v35 + 128), a1 + 80, (&v48 + 2), &v48 + 1, 0);
  }

LABEL_37:
  if (((v25 >> 1) & 1) == (v29 & 2) >> 1)
  {
    return;
  }

  v36 = *(a1 + 40);
  if (!v36)
  {
    return;
  }

  v37 = v36[4];
  v38 = v36 + *(&physx::NpActor::sLazyInitOffsets + v37 + 18);
  if (((*(v38 + 2) >> 30) - 1) > 1)
  {
    v40 = 0;
  }

  else
  {
    v39 = *v38;
    if (v39)
    {
      v40 = v39 - 16;
    }

    else
    {
      v40 = 0;
    }
  }

  if (v37 == 5)
  {
    v41 = v36 + 20;
  }

  else
  {
    v41 = 0;
  }

  if (v37 == 6)
  {
    v41 = v36 + 20;
  }

  if (v37 == 13)
  {
    v42 = v36 + 20;
  }

  else
  {
    v42 = v41;
  }

  if (!v40)
  {
    goto LABEL_70;
  }

  v43 = v42[4];
  v44 = v42;
  if ((v29 & 2) != 0)
  {
    if (v43 != 1)
    {
      if (!v42[4])
      {
LABEL_60:
        LODWORD(v45) = -1;
LABEL_61:
        physx::NpShapeManager::setupSceneQuery(v42, (v40 + 8640), v36, v45, a3, a4, a5, a6, a7, a8, a9, a12, a13, a14, a15);
        goto LABEL_70;
      }

      v44 = *v42;
    }

    v45 = 0;
    while (*&v44[4 * v45] != a1)
    {
      if (v43 == ++v45)
      {
        goto LABEL_60;
      }
    }

    goto LABEL_61;
  }

  if (v43 == 1)
  {
    goto LABEL_65;
  }

  if (v42[4])
  {
    v44 = *v42;
LABEL_65:
    v46 = 0;
    while (*&v44[4 * v46] != a1)
    {
      if (v43 == ++v46)
      {
        goto LABEL_68;
      }
    }

    goto LABEL_69;
  }

LABEL_68:
  LODWORD(v46) = -1;
LABEL_69:
  physx::NpShapeManager::teardownSceneQuery(v42, (v40 + 8640), v46);
LABEL_70:
  if (*(v42 + 5))
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpShape.cpp", 602, "PxShape::setFlag: Shape is a part of pruning structure, pruning structure is now invalid!", a13, a14, a15, v47);
    physx::Sq::PruningStructure::invalidate(*(v42 + 5), *(a1 + 40));
  }
}