void *physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::postSolver>::~DelegateTask(void *result)
{
  *result = &unk_1F5D1C1B0;
  result[2] = 0;
  return result;
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::postSolver>::~DelegateTask(void *a1)
{
  *a1 = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  a1[2] = 0;
  return (*(v1 + 24))();
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::postSolver>::runInternal(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 24);
  v3 = *(v1 + 1840);
  (*(**(v1 + 1888) + 32))(*(v1 + 1888));
  physx::PxcNpMemBlockPool::releaseConstraintMemory(v3 + 40);
  physx::PxcNpMemBlockPool::release(v3 + 40, v3 + 16 * (1 - *(v3 + 220)) + 96, 0);
  *(v3 + 220) = 1 - *(v3 + 220);
  *(v1 + 2104) = 0;
  *(v1 + 2120) = 0;
  v4 = *(v1 + 1840);
  *(v4 + 2560) = *(v3 + 280);
  *(v1 + 5368) = 1;
  *(v1 + 5360) = v2;
  if (v2)
  {
    (*(*v2 + 32))(v2);
    *(v1 + 5352) = *(*(v1 + 5360) + 16);
    v4 = *(v1 + 1840);
  }

  v5 = *(v1 + 48);
  if (v5)
  {
    v6 = 0;
    v7 = *(v1 + 32);
    v8 = *(v4 + 1920);
    v9 = *(v1 + 48);
    do
    {
      v10 = physx::Cm::FlushPool::allocate(v8, 56, 0x10u);
      v11 = v10;
      if (v9 >= 0x400)
      {
        v12 = 1024;
      }

      else
      {
        v12 = v9;
      }

      *(v10 + 8) = *(v1 + 24);
      *(v10 + 16) = 0;
      *(v10 + 32) = 0;
      *v10 = &unk_1F5D1EBD8;
      *(v10 + 40) = v7 + 8 * v6;
      *(v10 + 48) = v12;
      *(v10 + 32) = 1;
      *(v10 + 24) = v1 + 5336;
      (*(*(v1 + 5336) + 32))(v1 + 5336);
      v11[2] = *(v11[3] + 16);
      (*(*v11 + 40))(v11);
      v6 += 1024;
      v9 -= 1024;
    }

    while (v6 < v5);
  }

  v13 = *(**(v1 + 5352) + 144);

  return v13();
}

void *physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::solver>::~DelegateTask(void *result)
{
  *result = &unk_1F5D1C1B0;
  result[2] = 0;
  return result;
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::solver>::~DelegateTask(void *a1)
{
  *a1 = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  a1[2] = 0;
  return (*(v1 + 24))();
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::solver>::runInternal(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 24);
  *(*(*(v1 + 1888) + 8) + 16) = 0;
  v3 = *(v1 + 1880);
  v4 = *(v3 + 384);
  *(v1 + 4704) = 0;
  v41 = *(*(v1 + 1840) + 1920);
  (*(**(v1 + 1904) + 248))(*(v1 + 1904), v4);
  v40 = *(v1 + 4268) & 8;
  v5 = *(v1 + 4424) & 0x7FFFFFFF;
  if (v5)
  {
    v6 = *(v1 + 4416);
    v7 = *v6;
    if (*v6)
    {
      v8 = 0;
LABEL_7:
      v9 = __clz(__rbit32(v7)) | (32 * v8);
      v10 = (v7 - 1) & v7;
      if (!v10)
      {
        v11 = v8;
        if (v8 + 1 > v5)
        {
          v8 = (v8 + 1);
        }

        else
        {
          v8 = v5;
        }

        v12 = v11 + 1;
        while (v12 < v5)
        {
          v10 = v6[v12++];
          if (v10)
          {
            v8 = (v12 - 1);
            goto LABEL_16;
          }
        }

        v10 = 0;
      }

LABEL_16:
      while (v9 != -1)
      {
        v13 = physx::Cm::FlushPool::allocate(v41, 1096, 0x10u);
        v14 = *(v1 + 1984);
        v15 = v2;
        v16 = v3;
        v17 = *(v1 + 1880);
        v18 = *(v1 + 1904);
        v19 = *(v1 + 24);
        *(v13 + 16) = 0;
        *(v13 + 24) = 0;
        *(v13 + 32) = 0;
        *v13 = &unk_1F5D1EE08;
        *(v13 + 8) = v19;
        memset_pattern16((v13 + 36), &unk_1E3114850, 0x400uLL);
        v20 = 0;
        *(v13 + 1064) = v14;
        *(v13 + 1072) = v17;
        v3 = v16;
        v2 = v15;
        *(v13 + 1080) = v18;
        *(v13 + 1088) = v40 >> 3;
        v21 = v8;
        v22 = v10;
        v23 = *(v3 + 248);
        while (1)
        {
          v24 = *(v23 + 32 * (v9 & 0x1FFFFFF) + 24);
          if (!v24 || (*(v13 + 36 + 4 * v20) = v9 << 7, ++v20, (*(*(v24 + 40) + 28) & 0x80000000) == 0))
          {
            *(*(v1 + 4416) + 4 * (v9 >> 5)) &= ~(1 << v9);
          }

          if (!v22)
          {
            break;
          }

          v10 = (v22 - 1) & v22;
          if (v10)
          {
            v8 = v21;
          }

          else
          {
            v25 = *(v1 + 4424) & 0x7FFFFFFF;
            if (v21 + 1 > v25)
            {
              v8 = (v21 + 1);
            }

            else
            {
              v8 = v25;
            }

            LODWORD(v26) = v21;
            while (v8 - 1 != v26)
            {
              v26 = (v26 + 1);
              v10 = *(*(v1 + 4416) + 4 * v26);
              if (v10)
              {
                v8 = v26;
                goto LABEL_32;
              }
            }

            v10 = 0;
          }

LABEL_32:
          v9 = __clz(__rbit32(v22)) | (32 * v21);
          if (v20 <= 0xFF)
          {
            v21 = v8;
            v22 = v10;
            if (v9 != -1)
            {
              continue;
            }
          }

          goto LABEL_36;
        }

        v10 = 0;
        v9 = -1;
        v8 = v21;
LABEL_36:
        *(v13 + 1060) = v20;
        *(v13 + 32) = 1;
        *(v13 + 24) = v15;
        v27 = &unk_1F5D1EE08;
        if (v15)
        {
          (*(*v15 + 32))(v15);
          *(v13 + 16) = *(*(v13 + 24) + 16);
          v27 = *v13;
        }

        v27[5](v13);
      }
    }

    else
    {
      v8 = 0;
      while (v5 - 1 != v8)
      {
        v7 = v6[++v8];
        if (v7)
        {
          goto LABEL_7;
        }
      }
    }
  }

  v28 = *(v3 + 400);
  if (v28)
  {
    v29 = 0;
    v30 = *(v3 + 392);
    v31 = *(v3 + 400);
    do
    {
      v32 = v31 - 32;
      if (v31 >= 0x20)
      {
        v33 = 32;
      }

      else
      {
        v33 = v31;
      }

      v34 = physx::Cm::FlushPool::allocate(v41, 72, 0x10u);
      v35 = *(v1 + 1984);
      v36 = *(v1 + 1880);
      *(v34 + 8) = *(v1 + 24);
      *(v34 + 16) = 0;
      *(v34 + 32) = 0;
      v37 = &unk_1F5D1EE78;
      *v34 = &unk_1F5D1EE78;
      *(v34 + 40) = v30 + 4 * v29;
      *(v34 + 48) = v33;
      *(v34 + 52) = v35;
      *(v34 + 56) = v36;
      *(v34 + 64) = v40 >> 3;
      *(v34 + 32) = 1;
      *(v34 + 24) = v2;
      if (v2)
      {
        (*(*v2 + 32))(v2);
        *(v34 + 16) = *(*(v34 + 24) + 16);
        v37 = *v34;
      }

      v37[5](v34);
      v29 += 32;
      v31 = v32;
    }

    while (v29 < v28);
  }

  *(v1 + 1964) = 0;
  v38 = *(v1 + 1840);
  result = physx::PxcNpMemBlockPool::release(v38 + 40, v38 + 16 * (1 - *(v38 + 216)) + 128, 0);
  *(v38 + 216) = 1 - *(v38 + 216);
  return result;
}

void *physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::updateBodiesAndShapes>::~DelegateTask(void *result)
{
  *result = &unk_1F5D1C1B0;
  result[2] = 0;
  return result;
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::updateBodiesAndShapes>::~DelegateTask(void *a1)
{
  *a1 = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  a1[2] = 0;
  return (*(v1 + 24))();
}

void *physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::updateSimulationController>::~DelegateTask(void *result)
{
  *result = &unk_1F5D1C1B0;
  result[2] = 0;
  return result;
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::updateSimulationController>::~DelegateTask(void *a1)
{
  *a1 = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  a1[2] = 0;
  return (*(v1 + 24))();
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::updateSimulationController>::runInternal(uint64_t a1)
{
  v1 = *(a1 + 40);
  (*(**(v1 + 1888) + 24))(*(v1 + 1888), *(a1 + 24));
  v2 = *(**(v1 + 1904) + 144);

  return v2();
}

void *physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::updateDynamics>::~DelegateTask(void *result)
{
  *result = &unk_1F5D1C1B0;
  result[2] = 0;
  return result;
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::updateDynamics>::~DelegateTask(void *a1)
{
  *a1 = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  a1[2] = 0;
  return (*(v1 + 24))();
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::updateDynamics>::runInternal(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 24);
  v3 = *(v2 + 24);
  *(v1 + 5816) = 1;
  *(v1 + 5808) = v3;
  if (v3)
  {
    (*(*v3 + 32))(v3);
    *(v1 + 5800) = *(*(v1 + 5808) + 16);
  }

  *(v1 + 5760) = 1;
  *(v1 + 5752) = v1 + 5784;
  (*(*(v1 + 5784) + 32))(v1 + 5784);
  *(v1 + 5744) = *(*(v1 + 5752) + 16);
  *(v1 + 5704) = 1;
  *(v1 + 5696) = v1 + 5728;
  (*(*(v1 + 5728) + 32))(v1 + 5728);
  *(v1 + 5688) = *(*(v1 + 5696) + 16);
  physx::PxcNpMemBlockPool::acquireConstraintMemory((*(v1 + 1840) + 40));
  v4 = *(v1 + 1840);
  v5 = *(v4 + 2608);
  (*(**(v4 + 1776) + 168))(v12);
  v6 = (*(**(*(v1 + 1840) + 1776) + 136))(*(*(v1 + 1840) + 1776));
  v7 = *(v1 + 1848);
  v8 = (*(*(v1 + 4296) + 8) + 31) >> 5;
  v9 = *(v7 + 232);
  v10 = *(v7 + 224);
  if (v8 > (v9 & 0x7FFFFFFFu))
  {
    if ((v9 & 0x80000000) == 0 && v10)
    {
      (*(**(v7 + 240) + 24))(*(v7 + 240), *(v7 + 224));
    }

    *(v7 + 232) = v8;
    v10 = (*(**(v7 + 240) + 16))(*(v7 + 240), 4 * v8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/CmBitMap.h", 461);
    *(v7 + 224) = v10;
    v9 = *(v7 + 232);
  }

  bzero(v10, (4 * v9));
  (*(**(v1 + 1888) + 8))(*(v1 + 1888), *(v1 + 1880), v2, v1 + 5672, *(v1 + 4464), *(v1 + 4472), *(v1 + 4480), *(v1 + 4488), *(v1 + 1984), v5, v12, v6, v1 + 1952, *(v7 + 232) & 0x7FFFFFFF);
  *(*(v1 + 1880) + 136) = 0;
  (*(**(v1 + 5800) + 144))(*(v1 + 5800), v1 + 5784);
  (*(**(v1 + 5744) + 144))(*(v1 + 5744), v1 + 5728);
  return (*(**(v1 + 5688) + 144))(*(v1 + 5688), v1 + 5672);
}

void *physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::processLostContacts>::~DelegateTask(void *result)
{
  *result = &unk_1F5D1C1B0;
  result[2] = 0;
  return result;
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::processLostContacts>::~DelegateTask(void *a1)
{
  *a1 = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  a1[2] = 0;
  return (*(v1 + 24))();
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::processLostContacts>::runInternal(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 24);
  *(v1 + 6040) = 1;
  *(v1 + 6032) = v2;
  if (v2)
  {
    (*(*v2 + 32))(v2);
    v3 = *(*(v1 + 6032) + 16);
    *(v1 + 6024) = v3;
  }

  else
  {
    v3 = *(v1 + 6024);
  }

  (*(*v3 + 144))(v3, v1 + 6008);
  *(v1 + 6096) = 1;
  *(v1 + 6088) = v2;
  if (v2)
  {
    (*(*v2 + 32))(v2);
    v4 = *(*(v1 + 6088) + 16);
    *(v1 + 6080) = v4;
  }

  else
  {
    v4 = *(v1 + 6080);
  }

  result = (*(*v4 + 144))(v4, v1 + 6064);
  v6 = *(v1 + 1848);
  v7 = *(v6 + 480);
  if (v7)
  {
    v8 = *(v6 + 472);
    v9 = *(v1 + 3992);
    do
    {
      --v7;
      result = physx::Sc::NPhaseCore::findInteraction(v9, *v8, v8[1]);
      v8[2] = result;
      v8 += 3;
    }

    while (v7);
  }

  return result;
}

void *physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::processLostContacts2>::~DelegateTask(void *result)
{
  *result = &unk_1F5D1C1B0;
  result[2] = 0;
  return result;
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::processLostContacts2>::~DelegateTask(void *a1)
{
  *a1 = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  a1[2] = 0;
  return (*(v1 + 24))();
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::processLostContacts2>::runInternal(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 24);
  *(v1 + 5872) = 1;
  *(v1 + 5864) = v2;
  if (v2)
  {
    (*(*v2 + 32))(v2);
    *(v1 + 5856) = *(*(v1 + 5864) + 16);
  }

  *(v1 + 5928) = 1;
  *(v1 + 5920) = v1 + 5840;
  (*(*(v1 + 5840) + 32))(v1 + 5840);
  v3 = *(*(v1 + 5920) + 16);
  *(v1 + 5912) = v3;
  (*(*v3 + 144))(v3, v1 + 5896);
  *(v1 + 5984) = 1;
  *(v1 + 5976) = v2;
  if (v2)
  {
    (*(*v2 + 32))(v2);
    v4 = *(*(v1 + 5976) + 16);
    *(v1 + 5968) = v4;
  }

  else
  {
    v4 = *(v1 + 5968);
  }

  (*(*v4 + 144))(v4, v1 + 5952);
  v5 = *(v1 + 1848);
  v6 = *(v5 + 480);
  if (v6)
  {
    v7 = (*(v5 + 472) + 16);
    do
    {
      v8 = *v7;
      if (*v7)
      {
        if (!*(v8 + 36))
        {
          v9 = *(v8 + 96);
          if (v9 != -1)
          {
            physx::IG::SimpleIslandManager::removeConnection(*(*(*(v8 + 8) + 72) + 1880), v9);
            *(v8 + 96) = -1;
          }
        }
      }

      v7 += 3;
      --v6;
    }

    while (v6);
  }

  v10 = *(**(v1 + 5856) + 144);

  return v10();
}

void *physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::processLostContacts3>::~DelegateTask(void *result)
{
  *result = &unk_1F5D1C1B0;
  result[2] = 0;
  return result;
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::processLostContacts3>::~DelegateTask(void *a1)
{
  *a1 = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  a1[2] = 0;
  return (*(v1 + 24))();
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::processLostContacts3>::runInternal(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 4268);
  (*(**(*(v1 + 1840) + 1776) + 168))(v12);
  v3 = *(v1 + 1848);
  v4 = *(v3 + 480);
  v5 = (v2 >> 3) & 1;
  if (v4)
  {
    v6 = *(v3 + 472);
    do
    {
      --v4;
      physx::Sc::NPhaseCore::onOverlapRemoved(*(v1 + 3992), *v6, *(v6 + 8), 0, *(v6 + 16), v12, v5);
      v6 += 24;
    }

    while (v4);
  }

  v7 = *(v3 + 496);
  if (v7)
  {
    v8 = *(v3 + 488);
    do
    {
      --v7;
      v9 = *v8;
      v10 = v8[1];
      v8 += 3;
      physx::Sc::NPhaseCore::onOverlapRemoved(*(v1 + 3992), v9, v10, 0, 0, v12, v5);
    }

    while (v7);
  }

  (*(**(v3 + 392) + 160))(*(v3 + 392));
  (*(**(v3 + 392) + 136))(*(v3 + 392));
  return (*(**(v1 + 6136) + 144))(*(v1 + 6136), v1 + 6120);
}

void *physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::destroyManagers>::~DelegateTask(void *result)
{
  *result = &unk_1F5D1C1B0;
  result[2] = 0;
  return result;
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::destroyManagers>::~DelegateTask(void *a1)
{
  *a1 = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  a1[2] = 0;
  return (*(v1 + 24))();
}

void physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::destroyManagers>::runInternal(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 5808);
  *(v1 + 6152) = 1;
  *(v1 + 6144) = v2;
  if (v2)
  {
    (*(*v2 + 32))(v2);
    *(v1 + 6136) = *(*(v1 + 6144) + 16);
  }

  physx::IG::SimpleIslandManager::thirdPassIslandGen(*(v1 + 1880), v1 + 6120);
  v3 = *(v1 + 1848);
  v4 = *(v3 + 480);
  if (v4)
  {
    v5 = (*(v3 + 472) + 16);
    do
    {
      v6 = *v5;
      if (*v5 && !*(v6 + 36))
      {
        if (*(v6 + 88))
        {
          v7 = *(*(v6 + 8) + 72);
          (*(**(*(v7 + 1840) + 1776) + 72))(*(*(v7 + 1840) + 1776));
          physx::PxsContext::destroyContactManager(*(v7 + 1840), *(v6 + 88));
          *(v6 + 88) = 0;
        }
      }

      v5 += 3;
      --v4;
    }

    while (v4);
  }
}

void *physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::lostTouchReports>::~DelegateTask(void *result)
{
  *result = &unk_1F5D1C1B0;
  result[2] = 0;
  return result;
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::lostTouchReports>::~DelegateTask(void *a1)
{
  *a1 = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  a1[2] = 0;
  return (*(v1 + 24))();
}

void *physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::lostTouchReports>::runInternal(uint64_t a1)
{
  v1 = *(a1 + 40);
  result = (*(**(*(v1 + 1840) + 1776) + 168))(v8);
  v3 = *(v1 + 1848);
  v4 = *(v3 + 480);
  if (v4)
  {
    v5 = (*(v3 + 472) + 16);
    v6 = (*(v1 + 4268) >> 3) & 1;
    do
    {
      v7 = *v5;
      if (*v5)
      {
        if (!*(v7 + 36))
        {
          result = physx::Sc::NPhaseCore::lostTouchReports(*(v1 + 3992), v7, 4, 0, v8, v6);
        }
      }

      v5 += 3;
      --v4;
    }

    while (v4);
  }

  return result;
}

void *physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::unregisterInteractions>::~DelegateTask(void *result)
{
  *result = &unk_1F5D1C1B0;
  result[2] = 0;
  return result;
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::unregisterInteractions>::~DelegateTask(void *a1)
{
  *a1 = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  a1[2] = 0;
  return (*(v1 + 24))();
}

int32x2_t *physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::unregisterInteractions>::runInternal(int32x2_t *result)
{
  v1 = result[5];
  v2 = *(v1 + 1848);
  v3 = *(v2 + 480);
  if (v3)
  {
    v4 = (*(v2 + 472) + 16);
    do
    {
      v5 = *v4;
      if (*v4)
      {
        if ((*(v5 + 36) | 2) == 2)
        {
          physx::Sc::Scene::unregisterInteraction(v1, (v5 + 8));
          result = physx::Sc::NPhaseCore::unregisterInteraction(*(v1 + 3992), v5);
        }
      }

      v4 += 3;
      --v3;
    }

    while (v3);
  }

  return result;
}

void *physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::processNarrowPhaseLostTouchEventsIslands>::~DelegateTask(void *result)
{
  *result = &unk_1F5D1C1B0;
  result[2] = 0;
  return result;
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::processNarrowPhaseLostTouchEventsIslands>::~DelegateTask(void *a1)
{
  *a1 = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  a1[2] = 0;
  return (*(v1 + 24))();
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::processNarrowPhaseLostTouchEventsIslands>::runInternal(uint64_t result)
{
  v1 = *(result + 40);
  if (*(v1 + 4456))
  {
    v2 = 0;
    v3 = 8;
    do
    {
      result = physx::IG::SimpleIslandManager::setEdgeDisconnected(*(v1 + 1880), *(*(*(v1 + 4448) + v3) + 96));
      ++v2;
      v3 += 16;
    }

    while (v2 < *(v1 + 4456));
  }

  return result;
}

void *physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::processNarrowPhaseLostTouchEvents>::~DelegateTask(void *result)
{
  *result = &unk_1F5D1C1B0;
  result[2] = 0;
  return result;
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::processNarrowPhaseLostTouchEvents>::~DelegateTask(void *a1)
{
  *a1 = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  a1[2] = 0;
  return (*(v1 + 24))();
}

void *physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::processNarrowPhaseLostTouchEvents>::runInternal(uint64_t a1)
{
  v1 = *(a1 + 40);
  result = (*(**(*(v1 + 1840) + 1776) + 168))(v9);
  if (*(v1 + 4456))
  {
    v3 = 0;
    v4 = 8;
    v5 = (*(v1 + 4268) >> 3) & 1;
    do
    {
      v6 = *(*(v1 + 4448) + v4);
      result = physx::Sc::ShapeInteraction::managerLostTouch(v6, 0, 1, v9, v5);
      if (result && (*(v6 + 66) & 4) == 0)
      {
        if (*(*(*(*(v6 + 40) + 8) + 80) + 13) - 1 >= 2)
        {
          v7 = 0;
        }

        else
        {
          v7 = *(*(v6 + 40) + 8);
        }

        if (*(*(*(*(v6 + 48) + 8) + 80) + 13) - 1 >= 2)
        {
          v8 = 0;
        }

        else
        {
          v8 = *(*(v6 + 48) + 8);
        }

        result = physx::Sc::Scene::addToLostTouchList(v1, v7, v8);
      }

      ++v3;
      v4 += 16;
    }

    while (v3 < *(v1 + 4456));
  }

  return result;
}

void *physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::postThirdPassIslandGen>::~DelegateTask(void *result)
{
  *result = &unk_1F5D1C1B0;
  result[2] = 0;
  return result;
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::postThirdPassIslandGen>::~DelegateTask(void *a1)
{
  *a1 = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  a1[2] = 0;
  return (*(v1 + 24))();
}

char *physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::postThirdPassIslandGen>::runInternal(uint64_t a1, physx::Sc::Interaction *a2)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 1880);
  v4 = *(v3 + 576);
  if (v4)
  {
    v5 = *(v3 + 568);
    do
    {
      v6 = *v5++;
      v7 = *(v3 + 248) + ((v6 >> 2) & 0x3FFFFFE0);
      v8 = *(v7 + 24);
      if (v8 && (*(v7 + 4) & 2) == 0)
      {
        physx::Sc::BodySim::setActive((v8 - 96), 0, 2);
      }

      --v4;
    }

    while (v4);
  }

  v9 = *(v3 + 592);
  if (v9)
  {
    v10 = *(v3 + 584);
    do
    {
      v11 = *v10++;
      v12 = *(v3 + 248) + 32 * (v11 >> 7);
      v13 = *(*(v12 + 24) + 24);
      if (v13 && (*(v12 + 4) & 2) == 0)
      {
        physx::Sc::ArticulationSim::setActive(v13, 0, 2);
      }

      --v9;
    }

    while (v9);
  }

  v14 = *(v2 + 1880);
  v15 = *(v14 + 1440);
  if (v15)
  {
    v16 = *(v14 + 1432);
    v17 = v2 + 120;
    v18 = v2 + 72;
    do
    {
      v20 = *v16++;
      v19 = v20;
      v21 = *(*(*(*(v2 + 1880) + 64) + 8 * (v20 / *(*(v2 + 1880) + 88))) + 8 * (v20 % *(*(v2 + 1880) + 88)));
      if (v21)
      {
        if ((*(v21 + 29) & 0x20) != 0 && (*(*(*(v14 + 920) + 8 * (v19 / *(v14 + 944))) + 16 * (v19 % *(v14 + 944)) + 4) & 4) == 0)
        {
          if (physx::Sc::deactivateInteraction(v21, a2))
          {
            v22 = *(v21 + 28);
            if (v22 <= 2)
            {
              v23 = *(v17 + 4 * v22);
              if (v23 >= 2)
              {
                v24 = v23 - 1;
                v25 = *(v21 + 16);
                v26 = *(v18 + 16 * v22);
                v27 = *(v26 + 8 * v24);
                v28 = *(v26 + 8 * v25);
                *(v26 + 8 * v24) = v28;
                *(*(v18 + 16 * v22) + 8 * v25) = v27;
                *(v27 + 16) = v25;
                *(v28 + 16) = v24;
                v23 = *(v17 + 4 * v22);
              }

              *(v17 + 4 * v22) = v23 - 1;
            }
          }
        }
      }

      --v15;
    }

    while (v15);
  }

  (*(**(*(v2 + 1840) + 1776) + 168))(v30);
  return physx::Sc::NPhaseCore::processPersistentContactEvents(*(v2 + 3992), v30);
}

void *physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::postIslandGen>::~DelegateTask(void *result)
{
  *result = &unk_1F5D1C1B0;
  result[2] = 0;
  return result;
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::postIslandGen>::~DelegateTask(void *a1)
{
  *a1 = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  a1[2] = 0;
  return (*(v1 + 24))();
}

void *physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::islandGen>::~DelegateTask(void *result)
{
  *result = &unk_1F5D1C1B0;
  result[2] = 0;
  return result;
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::islandGen>::~DelegateTask(void *a1)
{
  *a1 = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  a1[2] = 0;
  return (*(v1 + 24))();
}

char *physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::islandGen>::runInternal(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 24);
  *(v1 + 6488) = 1;
  *(v1 + 6480) = v1 + 5616;
  (*(*(v1 + 5616) + 32))();
  *(v1 + 6472) = *(*(v1 + 6480) + 16);
  *(v1 + 6432) = 1;
  *(v1 + 6424) = v1 + 6456;
  (*(*(v1 + 6456) + 32))(v1 + 6456);
  *(v1 + 6416) = *(*(v1 + 6424) + 16);
  (*(**(v1 + 6472) + 144))(*(v1 + 6472), v1 + 6456);
  (*(**(v1 + 6416) + 144))(*(v1 + 6416), v1 + 6400);
  v3 = *(v1 + 1840);
  LODWORD(v20[0]) = v3[435];
  v4 = v20[0];
  v5 = v3[434];
  v18 = 0;
  v19 = v5;
  *(v1 + 4440) = 0;
  if ((*(v1 + 4444) & 0x7FFFFFFFu) < v4)
  {
    physx::shdfnd::Array<physx::PxvContactManagerTouchEvent,physx::shdfnd::ReflectionAllocator<physx::PxvContactManagerTouchEvent>>::recreate(v1 + 4432, v4);
  }

  *(v1 + 4440) = v4;
  *(v1 + 4456) = 0;
  if ((*(v1 + 4460) & 0x7FFFFFFFu) < v5)
  {
    physx::shdfnd::Array<physx::PxvContactManagerTouchEvent,physx::shdfnd::ReflectionAllocator<physx::PxvContactManagerTouchEvent>>::recreate(v1 + 4448, v5);
  }

  *(v1 + 4456) = v5;
  physx::PxsContext::fillManagerTouchEvents(v3, *(v1 + 4432), v20, *(v1 + 4448), &v19, 0, &v18);
  v7 = v19;
  v6 = v20[0];
  *(v1 + 4440) = v20[0];
  *(v1 + 4456) = v7;
  v3[643] = v6;
  v3[644] = v7;
  *(v1 + 6376) = 1;
  *(v1 + 6368) = v2;
  if (v2)
  {
    (*(*v2 + 32))(v2);
    v8 = *(*(v1 + 6368) + 16);
    *(v1 + 6360) = v8;
  }

  else
  {
    v8 = *(v1 + 6360);
  }

  (*(*v8 + 144))(v8, v1 + 6344);
  result = (*(**(*(v1 + 1840) + 1776) + 168))(v20);
  v10 = *(v1 + 4440);
  if (v10)
  {
    v11 = 0;
    v12 = (*(v1 + 4268) >> 3) & 1;
    v13 = *(v1 + 4440);
    do
    {
      v14 = v13;
      if (v13 >= 0x100uLL)
      {
        v14 = 256;
      }

      if (v14 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v14;
      }

      v16 = (16 * v11) | 8;
      do
      {
        v17 = *(*(v1 + 4432) + v16);
        physx::Sc::NPhaseCore::managerNewTouch(*(v1 + 3992), v17);
        result = physx::Sc::ShapeInteraction::managerNewTouch(v17, 0, 1, v20, v12);
        v16 += 16;
        --v15;
      }

      while (v15);
      v11 += 256;
      v13 -= 256;
    }

    while (v11 < v10);
  }

  return result;
}

void *physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::preRigidBodyNarrowPhase>::~DelegateTask(void *result)
{
  *result = &unk_1F5D1C1B0;
  result[2] = 0;
  return result;
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::preRigidBodyNarrowPhase>::~DelegateTask(void *a1)
{
  *a1 = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  a1[2] = 0;
  return (*(v1 + 24))();
}

void physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::preRigidBodyNarrowPhase>::runInternal(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 24);
  v74 = *(*(v1 + 1840) + 1920);
  v3 = *(v1 + 7624);
  v4 = v3 & 0x7FFFFFFF;
  if ((v3 & 0x7FFFFFFF) != 0)
  {
    v5 = *(v1 + 7616);
    v6 = *v5;
    if (*v5)
    {
      LODWORD(v4) = 0;
      goto LABEL_9;
    }

    v7 = 0;
    v8 = v5 + 1;
    while (v4 - 1 != v7)
    {
      v6 = v8[v7++];
      if (v6)
      {
        LODWORD(v4) = v7;
        goto LABEL_9;
      }
    }
  }

  v6 = 0;
LABEL_9:
  v9 = physx::Cm::FlushPool::allocate(v74, 1096, 0x10u);
  v10 = *(v1 + 24);
  v11 = *(*(v1 + 2072) + 8);
  v12 = *(v1 + 1984);
  v13 = *(v1 + 2064);
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;
  *v9 = &unk_1F5D1EA18;
  *(v9 + 8) = v10;
  *(v9 + 40) = v11;
  *(v9 + 48) = v12;
  *(v9 + 1080) = 0;
  *(v9 + 1088) = v13;
  v14 = *(v1 + 1880);
  v15 = *(v1 + 1848);
  v16 = *(v1 + 2080);
  if (v6)
  {
    v17 = v9;
    do
    {
      v18 = v6;
      v19 = v4;
      v6 &= v6 - 1;
      if (!v6)
      {
        if (v4 + 1 > (*(v1 + 7624) & 0x7FFFFFFFu))
        {
          LODWORD(v4) = v4 + 1;
        }

        else
        {
          LODWORD(v4) = *(v1 + 7624) & 0x7FFFFFFF;
        }

        v20 = v19;
        while (v4 - 1 != v20)
        {
          v6 = *(*(v1 + 7616) + 4 * ++v20);
          if (v6)
          {
            LODWORD(v4) = v20;
            goto LABEL_20;
          }
        }

        v6 = 0;
      }

LABEL_20:
      v21 = __clz(__rbit32(v18)) | (32 * v19);
      if (v21 == -1)
      {
        break;
      }

      v22 = *(*(v14 + 248) + 32 * (v21 & 0x1FFFFFF) + 24);
      if (v22)
      {
        v23 = *(v17 + 1080);
        v24 = v17 + 8 * v23;
        v25 = v23 + 1;
        *(v17 + 1080) = v25;
        *(v24 + 56) = v22 - 96;
        v26 = *(v22 - 40);
        if (v26)
        {
          do
          {
            if (v26[7][8])
            {
              v27 = *(v26 + 4);
              physx::Cm::BitMapBase<physx::shdfnd::VirtualAllocator>::extend(v15 + 224, (v27 & 0x7FFFFFFF) + 1);
              *(*(v15 + 224) + ((v27 >> 3) & 0xFFFFFFC)) |= 1 << v27;
            }

            v26 = *v26;
          }

          while (v26);
          v25 = *(v17 + 1080);
        }

        if (v25 == 128)
        {
          *(v17 + 32) = 1;
          *(v17 + 24) = v2;
          if (v2)
          {
            (*(*v2 + 32))(v2);
            *(v17 + 16) = *(*(v17 + 24) + 16);
          }

          (*(*v17 + 40))(v17);
          v17 = physx::Cm::FlushPool::allocate(v74, 1096, 0x10u);
          v28 = *(v1 + 24);
          v29 = *(*(v1 + 2072) + 8);
          v30 = *(v1 + 1984);
          v31 = *(v1 + 2064);
          *(v17 + 16) = 0;
          *(v17 + 24) = 0;
          *(v17 + 32) = 0;
          *v17 = &unk_1F5D1EA18;
          *(v17 + 8) = v28;
          *(v17 + 40) = v29;
          *(v17 + 48) = v30;
          *(v17 + 1080) = 0;
          *(v17 + 1088) = v31;
        }

        v16 = 1;
      }
    }

    while (v6);
    if (*(v17 + 1080))
    {
      *(v17 + 32) = 1;
      *(v17 + 24) = v2;
      if (v2)
      {
        (*(*v2 + 32))(v2);
        *(v17 + 16) = *(*(v17 + 24) + 16);
      }

      (*(*v17 + 40))(v17);
    }
  }

  v32 = *(v1 + 7640);
  v33 = v32 & 0x7FFFFFFF;
  if ((v32 & 0x7FFFFFFF) != 0)
  {
    v34 = *(v1 + 7632);
    v35 = *v34;
    if (*v34)
    {
      v36 = 0;
      do
      {
LABEL_43:
        v39 = (v35 - 1) & v35;
        if (v39)
        {
          v40 = v36;
        }

        else
        {
          v41 = *(v1 + 7640) & 0x7FFFFFFF;
          if (v36 + 1 > v41)
          {
            v40 = (v36 + 1);
          }

          else
          {
            v40 = v41;
          }

          LODWORD(v42) = v36;
          while (v40 - 1 != v42)
          {
            v42 = (v42 + 1);
            v39 = *(*(v1 + 7632) + 4 * v42);
            if (v39)
            {
              v40 = v42;
              goto LABEL_53;
            }
          }

          v39 = 0;
        }

LABEL_53:
        v43 = __clz(__rbit32(v35)) | (32 * v36);
        if (v43 == -1)
        {
          break;
        }

        v44 = *(*(*(v14 + 248) + 32 * (v43 & 0x1FFFFFF) + 24) + 24);
        if (v44)
        {
          v45 = physx::Cm::FlushPool::allocate(v74, 72, 0x10u);
          v46 = *(*(v1 + 2072) + 8);
          v47 = *(v1 + 1984);
          v48 = *(v1 + 2064);
          *(v45 + 8) = *(v1 + 24);
          *(v45 + 16) = 0;
          *(v45 + 32) = 0;
          v49 = &unk_1F5D1EA88;
          *v45 = &unk_1F5D1EA88;
          *(v45 + 40) = v46;
          *(v45 + 48) = v47;
          *(v45 + 56) = v44;
          *(v45 + 64) = v48;
          *(v45 + 32) = 1;
          *(v45 + 24) = v2;
          if (v2)
          {
            (*(*v2 + 32))(v2);
            *(v45 + 16) = *(*(v45 + 24) + 16);
            v49 = *v45;
          }

          v49[5](v45);
          v16 = 1;
        }

        v35 = v39;
        v36 = v40;
      }

      while (v39);
    }

    else
    {
      v36 = 0;
      v37 = v34 + 1;
      v38 = v33 - 1;
      while (v38 != v36)
      {
        v35 = v37[v36++];
        if (v35)
        {
          goto LABEL_43;
        }
      }
    }
  }

  *(v1 + 2080) = v16 & 1;
  v50 = *(v1 + 4520);
  v51 = v50 & 0x7FFFFFFF;
  if ((v50 & 0x7FFFFFFF) != 0)
  {
    v52 = *(v1 + 4512);
    v53 = *v52;
    if (*v52)
    {
      LODWORD(v51) = 0;
      goto LABEL_67;
    }

    v54 = 0;
    v55 = v52 + 1;
    while (v51 - 1 != v54)
    {
      v53 = v55[v54++];
      if (v53)
      {
        LODWORD(v51) = v54;
        goto LABEL_67;
      }
    }
  }

  v53 = 0;
LABEL_67:
  v56 = *(*(v1 + 1840) + 2592);
  v57 = *(*(v1 + 1848) + 400);
  v58 = physx::Cm::FlushPool::allocate(v74, 2112, 0x10u);
  v59 = *(v1 + 24);
  *(v58 + 16) = 0;
  *(v58 + 24) = 0;
  *(v58 + 32) = 0;
  *v58 = &unk_1F5D1EAF8;
  *(v58 + 8) = v59;
  v73 = v56;
  *(v58 + 40) = v56;
  *(v58 + 48) = v57;
  *(v58 + 2104) = 0;
  if (v53)
  {
    v60 = 0;
    do
    {
      v61 = v51;
      v62 = v53;
      v53 &= v53 - 1;
      if (!v53)
      {
        if (v51 + 1 > (*(v1 + 4520) & 0x7FFFFFFFu))
        {
          LODWORD(v51) = v51 + 1;
        }

        else
        {
          LODWORD(v51) = *(v1 + 4520) & 0x7FFFFFFF;
        }

        v63 = v61;
        while (v51 - 1 != v63)
        {
          v53 = *(*(v1 + 4512) + 4 * ++v63);
          if (v53)
          {
            LODWORD(v51) = v63;
            goto LABEL_78;
          }
        }

        v53 = 0;
      }

LABEL_78:
      v64 = __clz(__rbit32(v62));
      v65 = v64 | (32 * v61);
      if (v65 == -1)
      {
        break;
      }

      v66 = *(v1 + 1848);
      if (*(v66 + 296) > v65)
      {
        v67 = *(*(v66 + 288) + 16 * (v64 | (32 * v61))) & 0xFFFFFFFFFFFFFFFCLL;
        if (v67)
        {
          physx::Cm::BitMapBase<physx::shdfnd::VirtualAllocator>::extend(v15 + 224, v65 + 1);
          v60 = 1;
          *(*(v15 + 224) + 4 * (v61 & 0x7FFFFFF)) |= 1 << v64;
          v68 = *(v58 + 2104);
          v69 = v58 + 8 * v68;
          LODWORD(v68) = v68 + 1;
          *(v58 + 2104) = v68;
          *(v69 + 56) = v67;
          if (v68 == 256)
          {
            *(v58 + 32) = 1;
            *(v58 + 24) = v2;
            if (v2)
            {
              (*(*v2 + 32))(v2);
              *(v58 + 16) = *(*(v58 + 24) + 16);
            }

            (*(*v58 + 40))(v58);
            v58 = physx::Cm::FlushPool::allocate(v74, 2112, 0x10u);
            v70 = *(v1 + 24);
            *(v58 + 16) = 0;
            *(v58 + 24) = 0;
            *(v58 + 32) = 0;
            *v58 = &unk_1F5D1EAF8;
            *(v58 + 8) = v70;
            *(v58 + 40) = v73;
            *(v58 + 48) = v57;
            *(v58 + 2104) = 0;
            v60 = 1;
          }
        }
      }
    }

    while (v53);
    if (v60)
    {
      *(*(v1 + 2064) + 24) = 1;
      *(*(*(v1 + 1840) + 2592) + 28) = 1;
    }
  }

  if (*(v58 + 2104))
  {
    *(v58 + 32) = 1;
    *(v58 + 24) = v2;
    if (v2)
    {
      (*(*v2 + 32))(v2);
      *(v58 + 16) = *(*(v58 + 24) + 16);
    }

    (*(*v58 + 40))(v58);
  }

  v71 = *(v1 + 4512);
  v72 = (4 * *(v1 + 4520));

  bzero(v71, v72);
}

void *physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::setEdgesConnected>::~DelegateTask(void *result)
{
  *result = &unk_1F5D1C1B0;
  result[2] = 0;
  return result;
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::setEdgesConnected>::~DelegateTask(void *a1)
{
  *a1 = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  a1[2] = 0;
  return (*(v1 + 24))();
}

void physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::setEdgesConnected>::runInternal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 4440);
  if (v4)
  {
    v5 = 8;
    do
    {
      v6 = *(*(v3 + 4432) + v5);
      if ((*(v6 + 66) & 4) == 0)
      {
        physx::IG::SimpleIslandManager::setEdgeConnected(*(v3 + 1880), *(v6 + 96), a3);
      }

      v5 += 16;
      --v4;
    }

    while (v4);
  }

  physx::IG::SimpleIslandManager::secondPassIslandGen(*(v3 + 1880));
  v7 = *(v3 + 1880);
  v8 = *(v7 + 384);
  v9 = *(v7 + 560);
  v10 = (v8 - v9);
  if (v8 != v9)
  {
    v11 = (*(v7 + 376) + 4 * v9);
    do
    {
      v12 = *v11++;
      v13 = *(v7 + 248) + ((v12 >> 2) & 0x3FFFFFE0);
      v14 = *(v13 + 24);
      if (v14 && (*(v13 + 4) & 2) != 0)
      {
        physx::Sc::BodySim::setActive((v14 - 96), 1, 2);
      }

      --v10;
    }

    while (v10);
  }

  v15 = *(v7 + 400);
  v16 = *(v7 + 564);
  v17 = (v15 - v16);
  if (v15 != v16)
  {
    v18 = (*(v7 + 392) + 4 * v16);
    do
    {
      v19 = *v18++;
      v20 = *(v7 + 248) + 32 * (v19 >> 7);
      v21 = *(*(v20 + 24) + 24);
      if (v21)
      {
        if ((*(v20 + 4) & 2) != 0)
        {
          physx::Sc::ArticulationSim::setActive(v21, 1, 2);
        }
      }

      --v17;
    }

    while (v17);
  }
}

void *physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::fetchPatchEvents>::~DelegateTask(void *result)
{
  *result = &unk_1F5D1C1B0;
  result[2] = 0;
  return result;
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::fetchPatchEvents>::~DelegateTask(void *a1)
{
  *a1 = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  a1[2] = 0;
  return (*(v1 + 24))();
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::fetchPatchEvents>::runInternal(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 1840);
  v3 = *(v2 + 1748);
  v7 = *(v2 + 1752);
  v4 = v7;
  v8 = v3;
  *(v1 + 4472) = 0;
  physx::shdfnd::Array<physx::PxsContactManager *,physx::shdfnd::ReflectionAllocator<physx::PxsContactManager *>>::resizeUninitialized(v1 + 4464, v3);
  physx::shdfnd::Array<physx::PxsContactManager *,physx::shdfnd::ReflectionAllocator<physx::PxsContactManager *>>::recreate(v1 + 4464, *(v1 + 4472));
  *(v1 + 4488) = 0;
  physx::shdfnd::Array<physx::PxsContactManager *,physx::shdfnd::ReflectionAllocator<physx::PxsContactManager *>>::resizeUninitialized(v1 + 4480, v4);
  physx::shdfnd::Array<physx::PxsContactManager *,physx::shdfnd::ReflectionAllocator<physx::PxsContactManager *>>::recreate(v1 + 4480, *(v1 + 4488));
  result = physx::PxsContext::fillManagerPatchChangedEvents(*(v1 + 1840), *(v1 + 4464), &v8, *(v1 + 4480), &v7);
  v6 = v7;
  *(v1 + 4472) = v8;
  *(v1 + 4488) = v6;
  return result;
}

void *physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::processLostSolverPatches>::~DelegateTask(void *result)
{
  *result = &unk_1F5D1C1B0;
  result[2] = 0;
  return result;
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::processLostSolverPatches>::~DelegateTask(void *a1)
{
  *a1 = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  a1[2] = 0;
  return (*(v1 + 24))();
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::processLostSolverPatches>::runInternal(uint64_t a1)
{
  v1 = *(a1 + 40);
  (*(**(*(v1 + 1840) + 1776) + 168))(v3);
  return (*(**(v1 + 1888) + 16))(*(v1 + 1888), *(v1 + 1880), *(v1 + 4480), *(v1 + 4488), v3);
}

void *physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::rigidBodyNarrowPhase>::~DelegateTask(void *result)
{
  *result = &unk_1F5D1C1B0;
  result[2] = 0;
  return result;
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::rigidBodyNarrowPhase>::~DelegateTask(void *a1)
{
  *a1 = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  a1[2] = 0;
  return (*(v1 + 24))();
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::rigidBodyNarrowPhase>::runInternal(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 24);
  *(v1 + 1876) = 0;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_lock(*(v1 + 6952));
  }

  atomic_fetch_add((v1 + 6816), 1u);
  *(v1 + 6808) = v2[2];
  v6 = v2;
  v3 = *(v1 + 6880);
  if ((*(v1 + 6884) & 0x7FFFFFFFu) <= v3)
  {
    physx::shdfnd::Array<physx::PxBaseTask *,physx::shdfnd::InlineAllocator<32u,physx::shdfnd::ReflectionAllocator<physx::PxBaseTask *>>>::growAndPushBack(v1 + 6832, &v6);
  }

  else
  {
    *(*(v1 + 6872) + 8 * v3) = v2;
    *(v1 + 6880) = v3 + 1;
  }

  (*(*v2 + 32))(v2);
  *(v1 + 6944) = 1;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_unlock(*(v1 + 6952));
  }

  *(v1 + 6768) = 1;
  *(v1 + 6760) = v1 + 6792;
  (*(*(v1 + 6792) + 32))(v1 + 6792);
  *(v1 + 6752) = *(*(v1 + 6760) + 16);
  *(v1 + 6712) = 1;
  *(v1 + 6704) = v1 + 6736;
  (*(*(v1 + 6736) + 32))(v1 + 6736);
  *(v1 + 6696) = *(*(v1 + 6704) + 16);
  *(v1 + 6656) = 1;
  *(v1 + 6648) = v1 + 6680;
  (*(*(v1 + 6680) + 32))(v1 + 6680);
  *(v1 + 6640) = *(*(v1 + 6648) + 16);
  *(v1 + 7280) = 1;
  *(v1 + 7272) = v1 + 6624;
  (*(*(v1 + 6624) + 32))(v1 + 6624);
  *(v1 + 7264) = *(*(v1 + 7272) + 16);
  *(v1 + 6600) = 1;
  *(v1 + 6592) = v2;
  (*(*v2 + 32))(v2);
  v4 = *(*(v1 + 6592) + 16);
  *(v1 + 6584) = v4;
  (*(*v4 + 152))(v4, v1 + 6568);
  physx::PxsContext::resetThreadContexts(*(v1 + 1840));
  (*(**(*(v1 + 1840) + 1776) + 24))(*(*(v1 + 1840) + 1776), *(*(v1 + 2064) + 24), *(v1 + 2080), v2, v1 + 6568, *(v1 + 1984));
  physx::Cm::FanoutTask::removeReference(v1 + 6792);
  (*(**(v1 + 6752) + 144))(*(v1 + 6752), v1 + 6736);
  (*(**(v1 + 6696) + 144))(*(v1 + 6696), v1 + 6680);
  (*(**(v1 + 6640) + 144))(*(v1 + 6640), v1 + 6624);
  return (*(**(v1 + 7264) + 144))(*(v1 + 7264), v1 + 7248);
}

void *physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::unblockNarrowPhase>::~DelegateTask(void *result)
{
  *result = &unk_1F5D1C1B0;
  result[2] = 0;
  return result;
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::unblockNarrowPhase>::~DelegateTask(void *a1)
{
  *a1 = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  a1[2] = 0;
  return (*(v1 + 24))();
}

void *physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::postBroadPhase>::~DelegateTask(void *result)
{
  *result = &unk_1F5D1C1B0;
  result[2] = 0;
  return result;
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::postBroadPhase>::~DelegateTask(void *a1)
{
  *a1 = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  a1[2] = 0;
  return (*(v1 + 24))();
}

void physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::postBroadPhase>::runInternal(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 24);
  (*(**(v1[230] + 1776) + 32))(*(v1[230] + 1776));
  v3 = v1[231];
  v4 = *(v1[230] + 1920);

  physx::Bp::AABBManager::postBroadPhase(v3, v2, (v1 + 821), v4);
}

void *physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::postBroadPhaseContinuation>::~DelegateTask(void *result)
{
  *result = &unk_1F5D1C1B0;
  result[2] = 0;
  return result;
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::postBroadPhaseContinuation>::~DelegateTask(void *a1)
{
  *a1 = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  a1[2] = 0;
  return (*(v1 + 24))();
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::postBroadPhaseContinuation>::runInternal(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 24);
  bzero(*(*(v1 + 231) + 224), (4 * *(*(v1 + 231) + 232)));

  return physx::Sc::Scene::finishBroadPhase(v1, v2);
}

void *physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::postBroadPhaseStage2>::~DelegateTask(void *result)
{
  *result = &unk_1F5D1C1B0;
  result[2] = 0;
  return result;
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::postBroadPhaseStage2>::~DelegateTask(void *a1)
{
  *a1 = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  a1[2] = 0;
  return (*(v1 + 24))();
}

uint64_t physx::Cm::DelegateFanoutTask<physx::Sc::Scene,&physx::Sc::Scene::postBroadPhaseStage3>::~DelegateFanoutTask(uint64_t a1)
{
  *a1 = &unk_1F5D1F1F8;
  physx::shdfnd::MutexT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>>::~MutexT((a1 + 160));
  v2 = *(a1 + 148);
  if ((v2 & 0x80000000) == 0 && (v2 & 0x7FFFFFFF) != 0)
  {
    v3 = *(a1 + 136);
    if (v3 == a1 + 96)
    {
      *(a1 + 128) = 0;
    }

    else if (v3)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }

  v4 = *(a1 + 92);
  if ((v4 & 0x80000000) == 0 && (v4 & 0x7FFFFFFF) != 0)
  {
    v5 = *(a1 + 80);
    if (v5 == a1 + 40)
    {
      *(a1 + 72) = 0;
    }

    else if (v5)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }

  return a1;
}

{
  *a1 = &unk_1F5D1F1F8;
  physx::shdfnd::MutexT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>>::~MutexT((a1 + 160));
  v2 = *(a1 + 148);
  if ((v2 & 0x80000000) == 0 && (v2 & 0x7FFFFFFF) != 0)
  {
    v3 = *(a1 + 136);
    if (v3 == a1 + 96)
    {
      *(a1 + 128) = 0;
    }

    else if (v3)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }
  }

  v4 = *(a1 + 92);
  if ((v4 & 0x80000000) == 0 && (v4 & 0x7FFFFFFF) != 0)
  {
    v5 = *(a1 + 80);
    if (v5 == a1 + 40)
    {
      *(a1 + 72) = 0;
    }

    else if (v5)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }
  }

  v6 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

  return v6();
}

void physx::Cm::DelegateFanoutTask<physx::Sc::Scene,&physx::Sc::Scene::postBroadPhaseStage3>::runInternal(uint64_t a1)
{
  v1 = *(a1 + 168);
  *(*(v1 + 230) + 2568) += *(*(v1 + 231) + 480) + *(*(v1 + 231) + 496);
  physx::Sc::Scene::processLostTouchPairs(v1);
}

void *physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::preallocateContactManagers>::~DelegateTask(void *result)
{
  *result = &unk_1F5D1C1B0;
  result[2] = 0;
  return result;
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::preallocateContactManagers>::~DelegateTask(void *a1)
{
  *a1 = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  a1[2] = 0;
  return (*(v1 + 24))();
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::preallocateContactManagers>::runInternal(uint64_t a1)
{
  v1 = *(a1 + 40);
  v48 = *(a1 + 24);
  v2 = *(v1 + 1848);
  v3 = *(v2 + 440);
  v4 = *(v1 + 7600);
  v5 = *(v1 + 7592);
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v49 = *(v2 + 440);
    v50 = *(a1 + 40);
    do
    {
      if (*(v5 + 208))
      {
        v51 = v6;
        v53 = v7;
        v8 = 0;
        v9 = *(*(v1 + 3992) + 152);
        v10 = *(v1 + 4000);
        v57[0] = *(v1 + 4016);
        v57[1] = v10;
        v58 = *(v1 + 4008);
        v59 = *(v1 + 4024);
        v60 = v9;
        v61 = *(v1 + 4032);
        do
        {
          v11 = *(v5 + 124 + 4 * v8);
          if (v11)
          {
            v12 = 32 * v8;
            do
            {
              v13 = __clz(__rbit32(v11));
              v14 = (*(v5 + 48) + 24 * (v13 | v12));
              v15 = *v14;
              v16 = v14[1];
              v17 = *(*v14 + 8);
              if (*(*(v17 + 80) + 13) - 1 >= 2)
              {
                v18 = 0;
              }

              else
              {
                v18 = v17;
              }

              if (*(*(*(v16 + 8) + 80) + 13) - 1 >= 2)
              {
                v19 = 0;
              }

              else
              {
                v19 = *(v16 + 8);
              }

              physx::Sc::filterRbCollisionPairSecondStage(v57, v15, v16, v18, v19, 0xFFFFFFFFLL, 1, v56);
              v20 = (*(v5 + 192) + 8 * (v13 | v12));
              v21 = v56[0];
              *v20 = v56[0];
              v20[1] = v56[1];
              if ((v21 & 1) == 0)
              {
                if ((v21 & 2) != 0)
                {
                  ++*(v5 + 204);
                }

                else
                {
                  ++*(v5 + 200);
                }

                *(v5 + 60 + 4 * v8) |= 1 << v13;
              }

              v11 &= v11 - 1;
            }

            while (v11);
          }

          ++v8;
        }

        while (v8 != 16);
        v3 = v49;
        v1 = v50;
        v7 = v53;
        v6 = v51;
      }

      v6 += *(v5 + 200);
      v7 += *(v5 + 204);
      v5 = *(v5 + 216);
    }

    while (v5);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  physx::shdfnd::Array<physx::PxsContactManager *,physx::shdfnd::ReflectionAllocator<physx::PxsContactManager *>>::recreate(v1 + 7544, *(v1 + 7552));
  physx::shdfnd::Array<physx::Sc::ShapeInteraction *,physx::shdfnd::ReflectionAllocator<physx::Sc::ShapeInteraction *>>::recreate(v1 + 7560, *(v1 + 7568));
  physx::shdfnd::Array<physx::Sc::ElementInteractionMarker *,physx::shdfnd::ReflectionAllocator<physx::Sc::ElementInteractionMarker *>>::recreate(v1 + 7576, *(v1 + 7584));
  if ((*(v1 + 7556) & 0x7FFFFFFFu) < v6 + 1)
  {
    physx::shdfnd::Array<physx::PxsContactManager *,physx::shdfnd::ReflectionAllocator<physx::PxsContactManager *>>::recreate(v1 + 7544, v6 + 1);
  }

  if ((*(v1 + 7572) & 0x7FFFFFFFu) < v6 + 1)
  {
    physx::shdfnd::Array<physx::Sc::ShapeInteraction *,physx::shdfnd::ReflectionAllocator<physx::Sc::ShapeInteraction *>>::recreate(v1 + 7560, v6 + 1);
  }

  if ((*(v1 + 7588) & 0x7FFFFFFFu) < v7 + 1)
  {
    physx::shdfnd::Array<physx::Sc::ElementInteractionMarker *,physx::shdfnd::ReflectionAllocator<physx::Sc::ElementInteractionMarker *>>::recreate(v1 + 7576, v7 + 1);
  }

  *(v1 + 7552) = v6;
  *(v1 + 7568) = v6;
  *(v1 + 7584) = v7;
  v22 = *(v1 + 7544);
  v23 = *(v1 + 7560);
  v24 = *(v1 + 7576);
  v52 = *(*(v1 + 1840) + 1920);
  result = physx::Cm::FlushPool::allocate(v52, 96, 0x10u);
  v26 = *(v1 + 24);
  v27 = *(v1 + 3992);
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *result = &unk_1F5D1F038;
  *(result + 8) = v26;
  *(result + 40) = v27;
  *(result + 48) = v3;
  *(result + 56) = v4;
  *(result + 64) = v22;
  v54 = v22;
  v55 = v24;
  *(result + 72) = v23;
  *(result + 80) = v24;
  *(result + 88) = 0;
  LODWORD(v57[0]) = 0;
  v56[0] = 0;
  v28 = *(v1 + 7592);
  if (v28)
  {
    v29 = result;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    while (2)
    {
      v34 = 0;
      while (1)
      {
        if (*(v28 + 200) || *(v28 + 204))
        {
          for (i = 0; i != 16; ++i)
          {
            for (j = *(v28 + 60 + 4 * i); j; j &= j - 1)
            {
              v37 = __clz(__rbit32(j)) | (32 * i);
              if (v30 < (v37 | v31))
              {
                v38 = *(v28 + 48) + 24 * v37;
                v39 = v3 + 24 * v30;
                v40 = *v38;
                *(v39 + 16) = *(v38 + 16);
                *v39 = v40;
                v41 = (*(v28 + 192) + 8 * v37);
                v42 = (v4 + 8 * v30);
                *v42 = *v41;
                v42[1] = v41[1];
              }

              ++v30;
              ++v34;
            }
          }

          v33 += *(v28 + 204);
          v32 += *(v28 + 200);
          if (v34 > 0xFF)
          {
            break;
          }
        }

        v31 += 512;
        v28 = *(v28 + 216);
        if (!v28)
        {
          if (v34)
          {
            return physx::Sc::Scene::preallocateContactManagers(physx::PxBaseTask *)::Local::processBatch(v32, v56, v33, v57, v34, *(v1 + 1840), *(v1 + 3992), v29, v48, v54, v23, v55);
          }

          return result;
        }
      }

      physx::Sc::Scene::preallocateContactManagers(physx::PxBaseTask *)::Local::processBatch(v32, v56, v33, v57, v34, *(v1 + 1840), *(v1 + 3992), v29, v48, v54, v23, v55);
      result = physx::Cm::FlushPool::allocate(v52, 96, 0x10u);
      v29 = result;
      v43 = *(v1 + 24);
      v44 = *(v1 + 3992);
      v45 = v54 + 8 * v56[0];
      v46 = v23 + 8 * v56[0];
      v47 = v55 + 8 * LODWORD(v57[0]);
      *(result + 16) = 0;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *result = &unk_1F5D1F038;
      *(result + 8) = v43;
      *(result + 40) = v44;
      *(result + 48) = v3 + 24 * v30;
      *(result + 56) = v4 + 8 * v30;
      *(result + 64) = v45;
      *(result + 72) = v46;
      *(result + 80) = v47;
      *(result + 88) = 0;
      v31 += 512;
      v28 = *(v28 + 216);
      if (v28)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void *physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::islandInsertion>::~DelegateTask(void *result)
{
  *result = &unk_1F5D1C1B0;
  result[2] = 0;
  return result;
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::islandInsertion>::~DelegateTask(void *a1)
{
  *a1 = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  a1[2] = 0;
  return (*(v1 + 24))();
}

void physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::islandInsertion>::runInternal(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 7568);
  if (v2)
  {
    v3 = 0;
    v4 = 8 * v2;
    do
    {
      v5 = *(*(v1 + 7560) + v3);
      if (v5)
      {
        v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
        v7 = *((v5 & 0xFFFFFFFFFFFFFFFELL) + 48);
        v8 = *(*((v5 & 0xFFFFFFFFFFFFFFFELL) + 40) + 8);
        if (*(*(v8 + 80) + 13) - 1 >= 2)
        {
          v8 = 0;
        }

        v9 = *(v7 + 8);
        if (v9)
        {
          v10 = *(*(v9 + 80) + 13) - 3 >= 0xFFFFFFFE;
        }

        else
        {
          v10 = 0;
        }

        if (v10)
        {
          v11 = *(v9 + 176);
        }

        else
        {
          v11 = -128;
        }

        v12 = *(v6 + 88);
        if (v6)
        {
          v13 = v6 + 8;
        }

        else
        {
          v13 = 0;
        }

        v14 = physx::IG::SimpleIslandManager::addContactManager(*(v1 + 1880), *(v6 + 88), *(v8 + 176), v11, v13);
        *(v6 + 96) = v14;
        if (v12)
        {
          *(v12 + 104) = v14;
        }
      }

      v3 += 8;
    }

    while (v4 != v3);
  }

  if (!*(v1 + 1876))
  {
    v15 = *(v1 + 1880);

    physx::IG::SimpleIslandManager::firstPassIslandGen(v15);
  }
}

void *physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::registerContactManagers>::~DelegateTask(void *result)
{
  *result = &unk_1F5D1C1B0;
  result[2] = 0;
  return result;
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::registerContactManagers>::~DelegateTask(void *a1)
{
  *a1 = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  a1[2] = 0;
  return (*(v1 + 24))();
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::registerContactManagers>::runInternal(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(v1 + 1840) + 1776);
  (*(*v2 + 208))(v2);
  v3 = *(v1 + 7552);
  if (v3)
  {
    v4 = 0;
    v5 = 8 * v3;
    do
    {
      v6 = *(*(v1 + 7544) + v4);
      if (v6)
      {
        (*(*v2 + 56))(v2, v6 & 0xFFFFFFFFFFFFFFFELL, 0, 0);
      }

      v4 += 8;
    }

    while (v5 != v4);
  }

  v7 = *(*v2 + 216);

  return v7(v2);
}

void *physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::registerInteractions>::~DelegateTask(void *result)
{
  *result = &unk_1F5D1C1B0;
  result[2] = 0;
  return result;
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::registerInteractions>::~DelegateTask(void *a1)
{
  *a1 = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  a1[2] = 0;
  return (*(v1 + 24))();
}

physx::Sc::Scene **physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::registerInteractions>::runInternal(physx::Sc::Scene **result, uint64_t a2, void *a3)
{
  v3 = result[5];
  v4 = *(v3 + 1892);
  if (v4)
  {
    v5 = 0;
    v6 = 8 * v4;
    do
    {
      v7 = *(*(v3 + 945) + v5);
      if (v7)
      {
        v9 = v7 & 0xFFFFFFFFFFFFFFFELL;
        v8 = v9 == 0;
        v12 = *(v9 + 8);
        v11 = *(v9 + 16);
        v10 = v9 + 8;
        v13 = v8 ? 0 : v10;
        physx::Sc::ActorSim::registerInteractionInActor(v12, v13);
        result = physx::Sc::ActorSim::registerInteractionInActor(v11, v13);
        v14 = *(*(v12 + 10) + 13) - 1 >= 2 ? 0 : v12;
        v15 = *(*(v11 + 10) + 13) - 1;
        ++*(*(v14 + 17) + 148);
        if (v15 <= 1)
        {
          ++*(*(v11 + 17) + 148);
        }
      }

      v5 += 8;
    }

    while (v6 != v5);
  }

  v16 = *(v3 + 1896);
  if (v16)
  {
    v17 = 0;
    v18 = 8 * v16;
    do
    {
      v19 = *(*(v3 + 947) + v17);
      if (v19)
      {
        v20 = v19 & 0xFFFFFFFFFFFFFFFELL;
        physx::Sc::activateInteraction(((v19 & 0xFFFFFFFFFFFFFFFELL) + 8), 0, a3);
        physx::Sc::ActorSim::registerInteractionInActor(*(v20 + 8), (v20 + 8));
        result = physx::Sc::ActorSim::registerInteractionInActor(*(v20 + 16), (v20 + 8));
      }

      v17 += 8;
    }

    while (v18 != v17);
  }

  return result;
}

void *physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::registerSceneInteractions>::~DelegateTask(void *result)
{
  *result = &unk_1F5D1C1B0;
  result[2] = 0;
  return result;
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::registerSceneInteractions>::~DelegateTask(void *a1)
{
  *a1 = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  a1[2] = 0;
  return (*(v1 + 24))();
}

void physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::registerSceneInteractions>::runInternal(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 7568);
  if (v2)
  {
    v3 = 0;
    v4 = 8 * v2;
    do
    {
      v5 = *(*(v1 + 7560) + v3);
      if (v5)
      {
        v7 = (v5 & 0xFFFFFFFFFFFFFFFELL);
        v6 = (v5 & 0xFFFFFFFFFFFFFFFELL) == 0;
        v8 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
        v9 = v6 ? 0 : v8;
        physx::Sc::Scene::registerInteraction(v1, v9, v7[11] != 0);
        v10 = v7[5];
        v11 = v7[6];
        v12 = v10 <= v11 ? v7[5] : v7[6];
        v13 = v10 <= v11 ? v7[6] : v7[5];
        physx::shdfnd::internal::HashMapBase<physx::Sc::ElementSimKey,physx::Sc::ElementSimInteraction *,physx::shdfnd::Hash<physx::Sc::ElementSimKey>,physx::shdfnd::NonTrackingAllocator>::insert((*(v1 + 3992) + 3704), v12, v13, v7);
        v14 = v7[11];
        if (v14)
        {
          v15 = *(v1 + 1840);
          v16 = *(v14 + 88);
          if (v16 >= 32 * *(v15 + 1664))
          {
            physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(v15 + 1656, ((2 * v16) & 0xFFFFFF00) + 256);
          }

          *(*(v15 + 1656) + 4 * (v16 >> 5)) |= 1 << v16;
          if ((*(v14 + 16) & 2) != 0 && (*(v14 + 80) & 0x1000) != 0)
          {
            if (v16 >= 32 * *(v15 + 1680))
            {
              physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(v15 + 1672, ((2 * v16) & 0xFFFFFF00) + 256);
            }

            *(*(v15 + 1672) + 4 * (v16 >> 5)) |= 1 << v16;
          }
        }
      }

      v3 += 8;
    }

    while (v4 != v3);
  }

  v17 = *(v1 + 7584);
  if (v17)
  {
    v18 = 0;
    v19 = 8 * v17;
    do
    {
      v20 = *(*(v1 + 7576) + v18);
      if (v20)
      {
        v21 = v20 & 0xFFFFFFFFFFFFFFFELL;
        v6 = (v20 & 0xFFFFFFFFFFFFFFFELL) == 0;
        v22 = (v20 & 0xFFFFFFFFFFFFFFFELL) + 8;
        if (v6)
        {
          v23 = 0;
        }

        else
        {
          v23 = v22;
        }

        physx::Sc::Scene::registerInteraction(v1, v23, 0);
        v24 = *(v21 + 40);
        v25 = *(v21 + 48);
        if (v24 <= v25)
        {
          v26 = *(v21 + 40);
        }

        else
        {
          v26 = *(v21 + 48);
        }

        if (v24 <= v25)
        {
          v27 = *(v21 + 48);
        }

        else
        {
          v27 = *(v21 + 40);
        }

        physx::shdfnd::internal::HashMapBase<physx::Sc::ElementSimKey,physx::Sc::ElementSimInteraction *,physx::shdfnd::Hash<physx::Sc::ElementSimKey>,physx::shdfnd::NonTrackingAllocator>::insert((*(v1 + 3992) + 3704), v26, v27, v21);
      }

      v18 += 8;
    }

    while (v19 != v18);
  }
}

void *physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::broadPhase>::~DelegateTask(void *result)
{
  *result = &unk_1F5D1C1B0;
  result[2] = 0;
  return result;
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::broadPhase>::~DelegateTask(void *a1)
{
  *a1 = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  a1[2] = 0;
  return (*(v1 + 24))();
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::broadPhase>::runInternal(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 24);
  v3 = (*(**(v2 + 2) + 8))(*(v2 + 2));
  v4 = (*(*v3 + 8))(v3);
  v5 = *(v1 + 1848);
  v6 = *(v1 + 1840);
  v7 = *(v6 + 240);
  v8 = *(v1 + 2080);

  return physx::Bp::AABBManager::updateAABBsAndBP(v5, v4, v7, v6, v8, v2, (v1 + 6568));
}

void *physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::advanceStep>::~DelegateTask(void *result)
{
  *result = &unk_1F5D1C1B0;
  result[2] = 0;
  return result;
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::advanceStep>::~DelegateTask(void *a1)
{
  *a1 = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  a1[2] = 0;
  return (*(v1 + 24))();
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::advanceStep>::runInternal(uint64_t result)
{
  v1 = *(result + 40);
  if (*(v1 + 1984) != 0.0)
  {
    v2 = *(result + 24);
    if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
    {
      pthread_mutex_lock(*(v1 + 5104));
    }

    v3 = v1 + 4944;
    atomic_fetch_add((v1 + 4968), 1u);
    *(v1 + 4960) = v2[2];
    v7 = v2;
    v4 = *(v1 + 5032);
    if ((*(v1 + 5036) & 0x7FFFFFFFu) <= v4)
    {
      physx::shdfnd::Array<physx::PxBaseTask *,physx::shdfnd::InlineAllocator<32u,physx::shdfnd::ReflectionAllocator<physx::PxBaseTask *>>>::growAndPushBack(v1 + 4984, &v7);
    }

    else
    {
      *(*(v1 + 5024) + 8 * v4) = v2;
      *(v1 + 5032) = v4 + 1;
    }

    (*(*v2 + 32))(v2);
    *(v1 + 5096) = 1;
    if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
    {
      pthread_mutex_unlock(*(v1 + 5104));
    }

    physx::Cm::FanoutTask::removeReference(v3);
    if ((*(v1 + 4268) & 2) != 0)
    {
      *(v1 + 5152) = 1;
      *(v1 + 5144) = v3;
      (*(*(v1 + 4944) + 32))(v3);
      *(v1 + 5136) = *(*(v1 + 5144) + 16);
      *(v1 + 5312) = 1;
      *(v1 + 5304) = v1 + 5120;
      (*(*(v1 + 5120) + 32))(v1 + 5120);
      *(v1 + 5296) = *(*(v1 + 5304) + 16);
      (*(**(v1 + 5136) + 144))(*(v1 + 5136), v1 + 5120);
    }

    else
    {
      *(v1 + 5312) = 1;
      *(v1 + 5304) = v3;
      (*(*(v1 + 4944) + 32))(v3);
      *(v1 + 5296) = *(*(v1 + 5304) + 16);
    }

    *(v1 + 5424) = 1;
    *(v1 + 5416) = v1 + 5280;
    (*(*(v1 + 5280) + 32))(v1 + 5280);
    *(v1 + 5408) = *(*(v1 + 5416) + 16);
    *(v1 + 5592) = 1;
    *(v1 + 5584) = v1 + 5392;
    (*(*(v1 + 5392) + 32))(v1 + 5392);
    *(v1 + 5576) = *(*(v1 + 5584) + 16);
    *(v1 + 5648) = 1;
    *(v1 + 5640) = v1 + 5560;
    (*(*(v1 + 5560) + 32))(v1 + 5560);
    *(v1 + 5632) = *(*(v1 + 5640) + 16);
    *(v1 + 5536) = 1;
    *(v1 + 5528) = v1 + 5616;
    (*(*(v1 + 5616) + 32))(v1 + 5616);
    *(v1 + 5520) = *(*(v1 + 5528) + 16);
    *(v1 + 5480) = 1;
    *(v1 + 5472) = v1 + 5504;
    (*(*(v1 + 5504) + 32))(v1 + 5504);
    *(v1 + 5464) = *(*(v1 + 5472) + 16);
    *(v1 + 6208) = 1;
    *(v1 + 6200) = v1 + 5448;
    (*(*(v1 + 5448) + 32))(v1 + 5448);
    *(v1 + 6192) = *(*(v1 + 6200) + 16);
    *(v1 + 6264) = 1;
    *(v1 + 6256) = v1 + 6176;
    (*(*(v1 + 6176) + 32))(v1 + 6176);
    *(v1 + 6248) = *(*(v1 + 6256) + 16);
    if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
    {
      pthread_mutex_lock(*(v1 + 4928));
    }

    v5 = v1 + 4768;
    atomic_fetch_add((v1 + 4792), 1u);
    *(v1 + 4784) = *(v1 + 6248);
    v7 = (v1 + 6232);
    v6 = *(v1 + 4856);
    if ((*(v1 + 4860) & 0x7FFFFFFFu) <= v6)
    {
      physx::shdfnd::Array<physx::PxBaseTask *,physx::shdfnd::InlineAllocator<32u,physx::shdfnd::ReflectionAllocator<physx::PxBaseTask *>>>::growAndPushBack(v1 + 4808, &v7);
    }

    else
    {
      *(*(v1 + 4848) + 8 * v6) = v1 + 6232;
      *(v1 + 4856) = v6 + 1;
    }

    (*(*(v1 + 6232) + 32))(v1 + 6232);
    *(v1 + 4920) = 1;
    if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
    {
      pthread_mutex_unlock(*(v1 + 4928));
    }

    physx::Cm::FanoutTask::removeReference(v5);
    *(v1 + 4744) = 1;
    *(v1 + 4736) = v5;
    (*(*(v1 + 4768) + 32))(v5);
    *(v1 + 4728) = *(*(v1 + 4736) + 16);
    physx::Cm::FanoutTask::removeReference(v3);
    (*(**(v1 + 5296) + 144))(*(v1 + 5296), v1 + 5280);
    (*(**(v1 + 5408) + 144))(*(v1 + 5408), v1 + 5392);
    (*(**(v1 + 5576) + 144))(*(v1 + 5576), v1 + 5560);
    (*(**(v1 + 5632) + 144))(*(v1 + 5632), v1 + 5616);
    (*(**(v1 + 5520) + 144))(*(v1 + 5520), v1 + 5504);
    (*(**(v1 + 5464) + 144))(*(v1 + 5464), v1 + 5448);
    (*(**(v1 + 6192) + 144))(*(v1 + 6192), v1 + 6176);
    (*(**(v1 + 6248) + 144))(*(v1 + 6248), v1 + 6232);
    physx::Cm::FanoutTask::removeReference(v5);
    return (*(**(v1 + 4728) + 144))(*(v1 + 4728), v1 + 4712);
  }

  return result;
}

void *physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::collideStep>::~DelegateTask(void *result)
{
  *result = &unk_1F5D1C1B0;
  result[2] = 0;
  return result;
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::collideStep>::~DelegateTask(void *a1)
{
  *a1 = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  a1[2] = 0;
  return (*(v1 + 24))();
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::collideStep>::runInternal(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 24);
  v3 = *(v1 + 4256);
  *v3 = *(v3 + 8);
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0u;
  *(v3 + 104) = 0u;
  *(v3 + 120) = 0u;
  *(v3 + 136) = 0u;
  *(v3 + 152) = 0;
  *(v3 + 8) = 0u;
  bzero((*(v1 + 1840) + 1936), 0x288uLL);
  *(v1 + 4784) = v2[2];
  physx::Cm::FanoutTask::addReference(v1 + 4768);
  *(v1 + 4960) = v2[2];
  physx::Cm::FanoutTask::addReference(v1 + 4944);
  *(v1 + 6544) = 1;
  *(v1 + 6536) = v2;
  (*(*v2 + 32))(v2);
  *(v1 + 6528) = *(*(v1 + 6536) + 16);
  *(v1 + 6320) = 1;
  *(v1 + 6312) = v1 + 6512;
  (*(*(v1 + 6512) + 32))(v1 + 6512);
  *(v1 + 6304) = *(*(v1 + 6312) + 16);
  (*(**(v1 + 6528) + 144))(*(v1 + 6528), v1 + 6512);
  v4 = *(**(v1 + 6304) + 144);

  return v4();
}

physx::Cm::PreallocatingRegionManager *physx::Cm::PreallocatingRegionManager::PreallocatingRegionManager(physx::Cm::PreallocatingRegionManager *this, unsigned int a2, uint64_t a3, const char *a4)
{
  *this = 64;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 2) = 0;
  v5 = (this + 16);
  *(this + 3) = 0;
  *(this + 32) = 1;
  *(this + 5) = a3;
  v12 = 0uLL;
  LODWORD(v13) = 0;
  if (a2 && (v6 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, a2 << 6, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/CmPreallocatingPool.h", 60), v7 = *(this + 6), v8 = *(this + 7) & 0x7FFFFFFF, *&v12 = v6, v8 > v7))
  {
    v9 = *(this + 2) + 24 * v7;
    v10 = v12;
    *(v9 + 16) = v13;
    *v9 = v10;
    ++*(this + 6);
  }

  else
  {
    physx::shdfnd::Array<physx::Cm::PreallocatingRegion,physx::shdfnd::ReflectionAllocator<physx::Cm::PreallocatingRegion>>::growAndPushBack(v5, &v12);
  }

  return this;
}

uint64_t physx::shdfnd::Array<physx::Cm::PreallocatingRegion,physx::shdfnd::ReflectionAllocator<physx::Cm::PreallocatingRegion>>::growAndPushBack(uint64_t *a1, __int128 *a2)
{
  v4 = *(a1 + 3);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = physx::shdfnd::ReflectionAllocator<physx::Cm::PreallocatingRegion>::allocate(24 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 2);
  if (v7)
  {
    v8 = v6 + 24 * v7;
    v9 = *a1;
    v10 = v6;
    do
    {
      v11 = *v9;
      *(v10 + 16) = *(v9 + 2);
      *v10 = v11;
      v10 += 24;
      v9 = (v9 + 24);
    }

    while (v10 < v8);
    v12 = *(a1 + 2);
  }

  else
  {
    v12 = 0;
  }

  v13 = v6 + 24 * v12;
  v14 = *a2;
  *(v13 + 16) = *(a2 + 2);
  *v13 = v14;
  if ((*(a1 + 3) & 0x80000000) == 0 && *a1)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *a1 = v6;
  v15 = *(a1 + 2);
  *(a1 + 2) = v15 + 1;
  *(a1 + 3) = v5;
  return v6 + 24 * v15;
}

uint64_t physx::shdfnd::ReflectionAllocator<physx::Cm::PreallocatingRegion>::allocate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    v6 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Cm::PreallocatingRegion>::getName() [T = physx::Cm::PreallocatingRegion]";
    }

    else
    {
      v7 = "<allocation names disabled>";
    }

    v8 = *(*(v6 + 24) + 16);

    return v8(v6 + 24, v5, v7, a2, a3);
  }

  return result;
}

uint64_t physx::shdfnd::Array<physx::Sc::Client *,physx::shdfnd::ReflectionAllocator<physx::Sc::Client *>>::growAndPushBack(uint64_t a1, void *a2)
{
  v4 = *(a1 + 12);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sc::Client *>::getName() [T = physx::Sc::Client *]";
    }

    else
    {
      v7 = "<allocation names disabled>";
    }

    v8 = (*(*(v6 + 24) + 16))(v6 + 24, 8 * v5, v7, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 8);
  v10 = (v8 + 8 * v9);
  if (v9)
  {
    v11 = *a1;
    v12 = v8;
    do
    {
      v13 = *v11++;
      *v12++ = v13;
    }

    while (v12 < v10);
  }

  *v10 = *a2;
  if ((*(a1 + 12) & 0x80000000) == 0 && *a1)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    v9 = *(a1 + 8);
  }

  *a1 = v8;
  *(a1 + 8) = v9 + 1;
  *(a1 + 12) = v5;
  return v8 + 8 * v9;
}

void *physx::Cm::PreallocatingRegionManager::searchForMemory(physx::Cm::PreallocatingRegionManager *this)
{
  v2 = *(this + 6);
  v4 = *this;
  v3 = *(this + 1);
  if (v2)
  {
    v5 = 0;
    v6 = 0;
    v7 = 24 * *(this + 2);
    while (1)
    {
      if (v7 != v5)
      {
        v8 = *(this + 2);
        v9 = v8 + v5;
        result = *(v8 + v5 + 8);
        if (result)
        {
          *(v9 + 8) = *result;
          goto LABEL_21;
        }

        v11 = *(v9 + 16);
        if (v11 != v4)
        {
          *(v9 + 16) = v11 + 1;
          v12 = *(v8 + v5);
          if (v12)
          {
            break;
          }
        }
      }

      ++v6;
      v5 += 24;
      if (24 * v2 == v5)
      {
        goto LABEL_8;
      }
    }

    result = (v12 + v11 * v3);
LABEL_21:
    *(this + 2) = v6;
  }

  else
  {
LABEL_8:
    *(this + 2) = v2;
    *(this + 32) = 1;
    v13 = v3 * v4;
    LODWORD(v22) = 0;
    *(&v21 + 1) = 0;
    if (v13)
    {
      v14 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v13, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/CmPreallocatingPool.h", 60);
      LODWORD(v2) = *(this + 6);
    }

    else
    {
      v14 = 0;
    }

    *&v21 = v14;
    if ((*(this + 7) & 0x7FFFFFFFu) <= v2)
    {
      v19 = physx::shdfnd::Array<physx::Cm::PreallocatingRegion,physx::shdfnd::ReflectionAllocator<physx::Cm::PreallocatingRegion>>::growAndPushBack(this + 2, &v21);
    }

    else
    {
      v15 = *(this + 2) + 24 * v2;
      v16 = v21;
      *(v15 + 16) = v22;
      *v15 = v16;
      v17 = *(this + 2);
      v18 = *(this + 6);
      *(this + 6) = v18 + 1;
      v19 = v17 + 24 * v18;
    }

    result = *(v19 + 8);
    if (result)
    {
      *(v19 + 8) = *result;
    }

    else
    {
      v20 = *(v19 + 16);
      if (v20 == v4)
      {
        return 0;
      }

      else
      {
        *(v19 + 16) = v20 + 1;
        return (*v19 + v20 * v3);
      }
    }
  }

  return result;
}

void physx::Sc::StaticSim::~StaticSim(physx::Sc::StaticSim *this)
{
  *this = &unk_1F5D207B0;
  **(this + 10) = 0;
  physx::Sc::RigidSim::~RigidSim(this);
}

{
  *this = &unk_1F5D207B0;
  **(this + 10) = 0;
  physx::Sc::RigidSim::~RigidSim(this);
  v1 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

  v1();
}

void physx::Cm::PreallocatingRegionManager::deallocateMemory(physx::Cm::PreallocatingRegionManager *this, unsigned __int8 *a2)
{
  if (a2)
  {
    if (*(this + 32) == 1)
    {
      physx::shdfnd::sort<physx::Cm::PreallocatingRegion,physx::shdfnd::Less<physx::Cm::PreallocatingRegion>,physx::shdfnd::ReflectionAllocator<physx::Cm::PreallocatingRegion>>(*(this + 2), *(this + 6), &v10, &v9, 32);
    }

    v4 = *(this + 6) - 1;
    if (v4 >= 0)
    {
      v5 = 0;
      while (1)
      {
        v6 = (v4 + v5) >> 1;
        v7 = (*(this + 2) + 24 * v6);
        if (*v7 <= a2 && *v7 + (*this * *(this + 1)) > a2)
        {
          break;
        }

        if (*v7 < a2)
        {
          v5 = v6 + 1;
        }

        else
        {
          v4 = v6 - 1;
        }

        if (v5 > v4)
        {
          return;
        }
      }

      *a2 = v7[1];
      v7[1] = a2;
      if (*(this + 32) == 1)
      {
        *(this + 2) = v6;
      }

      *(this + 32) = 0;
    }
  }
}

void physx::shdfnd::sort<physx::Cm::PreallocatingRegion,physx::shdfnd::Less<physx::Cm::PreallocatingRegion>,physx::shdfnd::ReflectionAllocator<physx::Cm::PreallocatingRegion>>(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v72 = *MEMORY[0x1E69E9840];
  v8 = (4 * a5);
  v71 = v8 > 0x400;
  if (v8 < 0x401)
  {
    MEMORY[0x1EEE9AC00](a1);
    v9 = &v65[-((v8 + 15) & 0x1FFFFFFF0)];
    bzero(v9, v8);
  }

  else
  {
    v9 = physx::shdfnd::TempAllocator::allocate(v65, (4 * a5), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsSort.h", 65);
  }

  v70 = v9;
  v66 = 0;
  v67 = a5;
  v68 = v9;
  v10 = a2 - 1;
  v69 = 0;
  if (a2 - 1 < 1)
  {
    if (v8 <= 0x400)
    {
      return;
    }

    goto LABEL_43;
  }

  v11 = 0;
  for (i = v9; ; v11 = *(i + v64 - 2))
  {
    while (1)
    {
      if (v10 <= v11)
      {
        goto LABEL_36;
      }

      if ((v10 - v11) <= 4)
      {
        break;
      }

      v13 = (a1 + 24 * ((v11 + v10) / 2));
      v14 = (a1 + 24 * v11);
      v15 = *v14;
      if (*v13 < *v14)
      {
        v16 = *v14;
        v17 = v14[2];
        v18 = *(v13 + 4);
        *v14 = *v13;
        *(v14 + 4) = v18;
        *(v13 + 4) = v17;
        *v13 = v16;
        v15 = *v14;
      }

      v19 = (a1 + 24 * v10);
      v20 = *v19;
      if (*v19 < v15)
      {
        v21 = *v14;
        v22 = v14[2];
        v23 = *(v19 + 4);
        *v14 = *v19;
        *(v14 + 4) = v23;
        *(v19 + 4) = v22;
        *v19 = v21;
        v20 = *v19;
      }

      if (v20 < *v13)
      {
        v24 = *v13;
        v25 = *(v13 + 2);
        v26 = *(v19 + 4);
        *v13 = *v19;
        *(v13 + 4) = v26;
        *(v19 + 4) = v25;
        *v19 = v24;
      }

      v27 = *v13;
      v28 = *(v13 + 2);
      v29 = *(v19 - 2);
      *v13 = *(v19 - 3);
      *(v13 + 4) = v29;
      *(v19 - 2) = v28;
      *(v19 - 3) = v27;
      v30 = v10 - 1;
      v31 = (a1 + 24 * v30);
      v32 = v11;
      while (1)
      {
        v33 = 0;
        v34 = *v31;
        v35 = v32;
        v36 = (a1 + 24 * v32);
        do
        {
          v37 = *(v36 + 3);
          v36 = (v36 + 24);
          ++v33;
        }

        while (v37 < v34);
        v38 = v30;
        v30 = a1 + 24 * v30;
        do
        {
          --v38;
          v39 = *(v30 - 24);
          v30 -= 24;
        }

        while (v34 < v39);
        if (v35 + v33 >= v38)
        {
          break;
        }

        v40 = *v36;
        v41 = *(v36 + 2);
        v42 = *(v30 + 16);
        *v36 = *v30;
        *(v36 + 4) = v42;
        *(v30 + 16) = v41;
        *v30 = v40;
        v32 = v33 + v35;
        LODWORD(v30) = v38;
      }

      v43 = *v36;
      v44 = *(v36 + 2);
      v45 = *(v31 + 4);
      *v36 = *v31;
      *(v36 + 4) = v45;
      *(v31 + 4) = v44;
      *v31 = v43;
      v46 = v66;
      v47 = v67 - 1;
      if (v35 - v11 + v33 >= v10 - v35 - v33)
      {
        if (v66 >= v47)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Cm::PreallocatingRegion>>::grow(v65);
          v46 = v66;
          i = v68;
        }

        v66 = v46 + 1;
        *(i + v46) = v33 + v35 + 1;
        v49 = v66++;
        *(i + v49) = v10;
        v10 = v35 + v33 - 1;
      }

      else
      {
        if (v66 >= v47)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Cm::PreallocatingRegion>>::grow(v65);
          v46 = v66;
          i = v68;
        }

        v66 = v46 + 1;
        *(i + v46) = v11;
        v48 = v66++;
        *(i + v48) = v35 - 1 + v33;
        v11 = v35 + v33 + 1;
      }
    }

    v50 = v11;
    v51 = v11 + 1;
    v52 = a1 + 24 + 24 * v11;
    do
    {
      v53 = v50++;
      v54 = v52;
      v55 = v51;
      v56 = v53;
      v57 = v53;
      do
      {
        v58 = *v54;
        v54 += 3;
        if (v58 < *(a1 + 24 * v57))
        {
          v57 = v55;
        }

        ++v56;
        ++v55;
      }

      while (v56 < v10);
      if (v57 != v53)
      {
        v59 = (a1 + 24 * v57);
        v60 = (a1 + 24 * v53);
        v61 = *v59;
        v62 = *(v59 + 2);
        v63 = *(v60 + 4);
        *v59 = *v60;
        *(v59 + 4) = v63;
        *(v60 + 4) = v62;
        *v60 = v61;
      }

      ++v51;
      v52 += 24;
    }

    while (v50 != v10);
LABEL_36:
    v64 = v66;
    if (!v66)
    {
      break;
    }

    --v66;
    v10 = *(i + v64 - 1);
    v66 = v64 - 2;
  }

  if ((v69 & 1) == 0 || !i)
  {
    if (v8 < 0x401)
    {
      return;
    }

LABEL_43:
    physx::shdfnd::TempAllocator::deallocate(&v70, v9);
    return;
  }

  (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  if (v71)
  {
    v9 = v70;
    goto LABEL_43;
  }
}

void *physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Cm::PreallocatingRegion>>::grow(uint64_t a1)
{
  v2 = 2 * *(a1 + 8);
  *(a1 + 8) = v2;
  v3 = physx::shdfnd::ReflectionAllocator<physx::Cm::PreallocatingRegion>::allocate(4 * v2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsSortInternals.h", 155);
  result = memcpy(v3, *(a1 + 16), (4 * *(a1 + 4)));
  if (*(a1 + 24) == 1 && *(a1 + 16))
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *(a1 + 24) = 1;
  *(a1 + 16) = v3;
  return result;
}

void physx::Cm::PreallocatingRegionManager::~PreallocatingRegionManager(physx::Cm::PreallocatingRegionManager *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    v3 = 0;
    v4 = 24 * v2;
    do
    {
      v5 = *(this + 2);
      if (*(v5 + v3))
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      }

      *(v5 + v3) = 0;
      v3 += 24;
    }

    while (v4 != v3);
  }

  v6 = *(this + 7);
  if ((v6 & 0x80000000) == 0 && (v6 & 0x7FFFFFFF) != 0 && *(this + 2) != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }
}

uint64_t physx::shdfnd::Array<physx::Sc::BodyCore *,physx::shdfnd::ReflectionAllocator<physx::Sc::BodyCore *>>::recreate(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2)
  {
    v4 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v5 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sc::BodyCore *>::getName() [T = physx::Sc::BodyCore *]";
    }

    else
    {
      v5 = "<allocation names disabled>";
    }

    result = (*(*(v4 + 24) + 16))(v4 + 24, 8 * a2, v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 8);
  v8 = *v3;
  if (v7)
  {
    v9 = &v6[v7];
    v10 = v6;
    do
    {
      v11 = *v8++;
      *v10++ = v11;
    }

    while (v10 < v9);
    v8 = *v3;
  }

  if ((*(v3 + 12) & 0x80000000) == 0 && v8)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *v3 = v6;
  *(v3 + 12) = a2;
  return result;
}

uint64_t *physx::Cm::PreallocatingRegionManager::preAllocate(uint64_t *this, unsigned int a2)
{
  if (a2)
  {
    v3 = this;
    v4 = *this;
    v5 = *this * *(this + 6);
    if (v5 < a2)
    {
      v6 = *(this + 1) * v4;
      do
      {
        v10 = 0uLL;
        LODWORD(v11) = 0;
        if (v6)
        {
          this = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v6, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/CmPreallocatingPool.h", 60);
        }

        else
        {
          this = 0;
        }

        *&v10 = this;
        v7 = *(v3 + 6);
        if ((*(v3 + 7) & 0x7FFFFFFFu) <= v7)
        {
          this = physx::shdfnd::Array<physx::Cm::PreallocatingRegion,physx::shdfnd::ReflectionAllocator<physx::Cm::PreallocatingRegion>>::growAndPushBack(v3 + 2, &v10);
        }

        else
        {
          v8 = v3[2] + 24 * v7;
          v9 = v10;
          *(v8 + 16) = v11;
          *v8 = v9;
          ++*(v3 + 6);
        }

        v5 += v4;
      }

      while (v5 < a2);
    }
  }

  return this;
}

uint64_t physx::shdfnd::Array<physx::Sc::BodyCore *,physx::shdfnd::ReflectionAllocator<physx::Sc::BodyCore *>>::growAndPushBack(uint64_t a1, void *a2)
{
  v4 = *(a1 + 12);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sc::BodyCore *>::getName() [T = physx::Sc::BodyCore *]";
    }

    else
    {
      v7 = "<allocation names disabled>";
    }

    v8 = (*(*(v6 + 24) + 16))(v6 + 24, 8 * v5, v7, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 8);
  v10 = (v8 + 8 * v9);
  if (v9)
  {
    v11 = *a1;
    v12 = v8;
    do
    {
      v13 = *v11++;
      *v12++ = v13;
    }

    while (v12 < v10);
  }

  *v10 = *a2;
  if ((*(a1 + 12) & 0x80000000) == 0 && *a1)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    v9 = *(a1 + 8);
  }

  *a1 = v8;
  *(a1 + 8) = v9 + 1;
  *(a1 + 12) = v5;
  return v8 + 8 * v9;
}

uint64_t physx::shdfnd::Array<physx::Sc::Interaction *,physx::shdfnd::ReflectionAllocator<physx::Sc::Interaction *>>::recreate(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2)
  {
    v4 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v5 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sc::Interaction *>::getName() [T = physx::Sc::Interaction *]";
    }

    else
    {
      v5 = "<allocation names disabled>";
    }

    result = (*(*(v4 + 24) + 16))(v4 + 24, 8 * a2, v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 8);
  v8 = *v3;
  if (v7)
  {
    v9 = &v6[v7];
    v10 = v6;
    do
    {
      v11 = *v8++;
      *v10++ = v11;
    }

    while (v10 < v9);
    v8 = *v3;
  }

  if ((*(v3 + 12) & 0x80000000) == 0 && v8)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *v3 = v6;
  *(v3 + 12) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::Sc::Interaction *,physx::shdfnd::ReflectionAllocator<physx::Sc::Interaction *>>::growAndPushBack(uint64_t a1, void *a2)
{
  v4 = *(a1 + 12);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sc::Interaction *>::getName() [T = physx::Sc::Interaction *]";
    }

    else
    {
      v7 = "<allocation names disabled>";
    }

    v8 = (*(*(v6 + 24) + 16))(v6 + 24, 8 * v5, v7, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 8);
  v10 = (v8 + 8 * v9);
  if (v9)
  {
    v11 = *a1;
    v12 = v8;
    do
    {
      v13 = *v11++;
      *v12++ = v13;
    }

    while (v12 < v10);
  }

  *v10 = *a2;
  if ((*(a1 + 12) & 0x80000000) == 0 && *a1)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    v9 = *(a1 + 8);
  }

  *a1 = v8;
  *(a1 + 8) = v9 + 1;
  *(a1 + 12) = v5;
  return v8 + 8 * v9;
}

uint64_t physx::shdfnd::PoolBase<physx::Sc::Scene::Block<void *,8u>,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<void *,8u>>>::allocateSlab(uint64_t a1)
{
  result = physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<void *,8u>>::allocate(a1, *(a1 + 552), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsPool.h", 180);
  v3 = result;
  v8 = result;
  v4 = *(a1 + 536);
  if ((*(a1 + 540) & 0x7FFFFFFFu) <= v4)
  {
    result = physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<void *,8u>>>>::growAndPushBack(a1 + 8, &v8);
  }

  else
  {
    *(*(a1 + 528) + 8 * v4) = result;
    *(a1 + 536) = v4 + 1;
  }

  v5 = v3 + (*(a1 + 544) << 6) - 64;
  if (v5 >= v3)
  {
    v6 = *(a1 + 560);
    v7 = (v3 + (*(a1 + 544) << 6) - 64);
    do
    {
      *v7 = v6;
      v7 -= 8;
      v6 = v5;
      v5 = v7;
    }

    while (v7 >= v3);
    *(a1 + 560) = v7 + 8;
  }

  return result;
}

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<void *,8u>>>>::growAndPushBack(uint64_t a1, void *a2)
{
  v4 = *(a1 + 532);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = (8 * v5);
    if (v6 > 0x200 || (*(a1 + 512) & 1) != 0)
    {
      v7 = physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<void *,8u>>::allocate(a1, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    }

    else
    {
      *(a1 + 512) = 1;
      v7 = a1;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 528);
  v9 = (v7 + 8 * v8);
  if (v8)
  {
    v10 = *(a1 + 520);
    v11 = v7;
    do
    {
      v12 = *v10++;
      *v11++ = v12;
    }

    while (v11 < v9);
  }

  *v9 = *a2;
  if ((*(a1 + 532) & 0x80000000) == 0)
  {
    v13 = *(a1 + 520);
    if (v13 == a1)
    {
      *(a1 + 512) = 0;
    }

    else if (v13)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      v8 = *(a1 + 528);
    }
  }

  *(a1 + 520) = v7;
  *(a1 + 532) = v5;
  *(a1 + 528) = v8 + 1;
  return v7 + 8 * v8;
}

uint64_t physx::shdfnd::PoolBase<physx::Sc::Scene::Block<void *,16u>,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<void *,16u>>>::allocateSlab(uint64_t a1)
{
  result = physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<void *,16u>>::allocate(a1, *(a1 + 552), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsPool.h", 180);
  v3 = result;
  v8 = result;
  v4 = *(a1 + 536);
  if ((*(a1 + 540) & 0x7FFFFFFFu) <= v4)
  {
    result = physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<void *,16u>>>>::growAndPushBack(a1 + 8, &v8);
  }

  else
  {
    *(*(a1 + 528) + 8 * v4) = result;
    *(a1 + 536) = v4 + 1;
  }

  v5 = v3 + (*(a1 + 544) << 7) - 128;
  if (v5 >= v3)
  {
    v6 = *(a1 + 560);
    v7 = (v3 + (*(a1 + 544) << 7) - 128);
    do
    {
      *v7 = v6;
      v7 -= 16;
      v6 = v5;
      v5 = v7;
    }

    while (v7 >= v3);
    *(a1 + 560) = v7 + 16;
  }

  return result;
}

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<void *,16u>>>>::growAndPushBack(uint64_t a1, void *a2)
{
  v4 = *(a1 + 532);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = (8 * v5);
    if (v6 > 0x200 || (*(a1 + 512) & 1) != 0)
    {
      v7 = physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<void *,16u>>::allocate(a1, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    }

    else
    {
      *(a1 + 512) = 1;
      v7 = a1;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 528);
  v9 = (v7 + 8 * v8);
  if (v8)
  {
    v10 = *(a1 + 520);
    v11 = v7;
    do
    {
      v12 = *v10++;
      *v11++ = v12;
    }

    while (v11 < v9);
  }

  *v9 = *a2;
  if ((*(a1 + 532) & 0x80000000) == 0)
  {
    v13 = *(a1 + 520);
    if (v13 == a1)
    {
      *(a1 + 512) = 0;
    }

    else if (v13)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      v8 = *(a1 + 528);
    }
  }

  *(a1 + 520) = v7;
  *(a1 + 532) = v5;
  *(a1 + 528) = v8 + 1;
  return v7 + 8 * v8;
}

uint64_t physx::shdfnd::PoolBase<physx::Sc::Scene::Block<void *,32u>,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<void *,32u>>>::allocateSlab(uint64_t a1)
{
  result = physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<void *,32u>>::allocate(a1, *(a1 + 552), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsPool.h", 180);
  v3 = result;
  v8 = result;
  v4 = *(a1 + 536);
  if ((*(a1 + 540) & 0x7FFFFFFFu) <= v4)
  {
    result = physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<void *,32u>>>>::growAndPushBack(a1 + 8, &v8);
  }

  else
  {
    *(*(a1 + 528) + 8 * v4) = result;
    *(a1 + 536) = v4 + 1;
  }

  v5 = v3 + (*(a1 + 544) << 8) - 256;
  if (v5 >= v3)
  {
    v6 = *(a1 + 560);
    v7 = (v3 + (*(a1 + 544) << 8) - 256);
    do
    {
      *v7 = v6;
      v7 -= 32;
      v6 = v5;
      v5 = v7;
    }

    while (v7 >= v3);
    *(a1 + 560) = v7 + 32;
  }

  return result;
}

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<void *,32u>>>>::growAndPushBack(uint64_t a1, void *a2)
{
  v4 = *(a1 + 532);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = (8 * v5);
    if (v6 > 0x200 || (*(a1 + 512) & 1) != 0)
    {
      v7 = physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<void *,32u>>::allocate(a1, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    }

    else
    {
      *(a1 + 512) = 1;
      v7 = a1;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 528);
  v9 = (v7 + 8 * v8);
  if (v8)
  {
    v10 = *(a1 + 520);
    v11 = v7;
    do
    {
      v12 = *v10++;
      *v11++ = v12;
    }

    while (v11 < v9);
  }

  *v9 = *a2;
  if ((*(a1 + 532) & 0x80000000) == 0)
  {
    v13 = *(a1 + 520);
    if (v13 == a1)
    {
      *(a1 + 512) = 0;
    }

    else if (v13)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      v8 = *(a1 + 528);
    }
  }

  *(a1 + 520) = v7;
  *(a1 + 532) = v5;
  *(a1 + 528) = v8 + 1;
  return v7 + 8 * v8;
}

uint64_t physx::shdfnd::Array<physx::PxTriggerPair,physx::shdfnd::ReflectionAllocator<physx::PxTriggerPair>>::recreate(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2)
  {
    result = physx::shdfnd::ReflectionAllocator<physx::PxTriggerPair>::allocate(result, 40 * a2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v4 = result;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v3 + 8);
  v6 = *v3;
  if (v5)
  {
    v7 = v4 + 40 * v5;
    v8 = v4;
    do
    {
      v9 = *v6;
      v10 = v6[1];
      *(v8 + 32) = *(v6 + 8);
      *v8 = v9;
      *(v8 + 16) = v10;
      *(v8 + 36) = *(v6 + 36);
      v8 += 40;
      v6 = (v6 + 40);
    }

    while (v8 < v7);
    v6 = *v3;
  }

  if ((*(v3 + 12) & 0x80000000) == 0 && v6)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *v3 = v4;
  *(v3 + 12) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::Sc::TriggerPairExtraData,physx::shdfnd::ReflectionAllocator<physx::Sc::TriggerPairExtraData>>::recreate(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2)
  {
    result = physx::shdfnd::ReflectionAllocator<physx::Sc::TriggerPairExtraData>::allocate(result, 12 * a2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v4 = result;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v3 + 8);
  v6 = *v3;
  if (v5)
  {
    v7 = v4 + 12 * v5;
    v8 = v4;
    do
    {
      v9 = *v6;
      *(v8 + 8) = *(v6 + 2);
      *v8 = v9;
      v8 += 12;
      v6 = (v6 + 12);
    }

    while (v8 < v7);
    v6 = *v3;
  }

  if ((*(v3 + 12) & 0x80000000) == 0 && v6)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *v3 = v4;
  *(v3 + 12) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::Sc::ConstraintCore *,physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintCore *>>::recreate(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2)
  {
    v4 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v5 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintCore *>::getName() [T = physx::Sc::ConstraintCore *]";
    }

    else
    {
      v5 = "<allocation names disabled>";
    }

    result = (*(*(v4 + 24) + 16))(v4 + 24, 8 * a2, v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 8);
  v8 = *v3;
  if (v7)
  {
    v9 = &v6[v7];
    v10 = v6;
    do
    {
      v11 = *v8++;
      *v10++ = v11;
    }

    while (v10 < v9);
    v8 = *v3;
  }

  if ((*(v3 + 12) & 0x80000000) == 0 && v8)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *v3 = v6;
  *(v3 + 12) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::Sc::Client *,physx::shdfnd::ReflectionAllocator<physx::Sc::Client *>>::recreate(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2)
  {
    v4 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v5 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sc::Client *>::getName() [T = physx::Sc::Client *]";
    }

    else
    {
      v5 = "<allocation names disabled>";
    }

    result = (*(*(v4 + 24) + 16))(v4 + 24, 8 * a2, v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 8);
  v8 = *v3;
  if (v7)
  {
    v9 = &v6[v7];
    v10 = v6;
    do
    {
      v11 = *v8++;
      *v10++ = v11;
    }

    while (v10 < v9);
    v8 = *v3;
  }

  if ((*(v3 + 12) & 0x80000000) == 0 && v8)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *v3 = v6;
  *(v3 + 12) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::Sc::Scene::SimpleBodyPair,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::SimpleBodyPair>>::recreate(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2)
  {
    v4 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v5 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::SimpleBodyPair>::getName() [T = physx::Sc::Scene::SimpleBodyPair]";
    }

    else
    {
      v5 = "<allocation names disabled>";
    }

    result = (*(*(v4 + 24) + 16))(v4 + 24, 24 * a2, v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 8);
  v8 = *v3;
  if (v7)
  {
    v9 = v6 + 24 * v7;
    v10 = v6;
    do
    {
      v11 = *v8;
      *(v10 + 16) = *(v8 + 2);
      *v10 = v11;
      v10 += 24;
      v8 = (v8 + 24);
    }

    while (v10 < v9);
    v8 = *v3;
  }

  if ((*(v3 + 12) & 0x80000000) == 0 && v8)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *v3 = v6;
  *(v3 + 12) = a2;
  return result;
}

uint64_t physx::shdfnd::PoolBase<physx::Sc::ConstraintSim,physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintSim>>::allocateSlab(uint64_t a1)
{
  result = physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintSim>::allocate(a1, *(a1 + 552), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsPool.h", 180);
  v3 = result;
  v8 = result;
  v4 = *(a1 + 536);
  if ((*(a1 + 540) & 0x7FFFFFFFu) <= v4)
  {
    result = physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintSim>>>::growAndPushBack(a1 + 8, &v8);
  }

  else
  {
    *(*(a1 + 528) + 8 * v4) = result;
    *(a1 + 536) = v4 + 1;
  }

  v5 = v3 + (*(a1 + 544) << 7) - 128;
  if (v5 >= v3)
  {
    v6 = *(a1 + 560);
    v7 = (v3 + (*(a1 + 544) << 7) - 128);
    do
    {
      *v7 = v6;
      v7 -= 16;
      v6 = v5;
      v5 = v7;
    }

    while (v7 >= v3);
    *(a1 + 560) = v7 + 16;
  }

  return result;
}

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintSim>>>::growAndPushBack(uint64_t a1, void *a2)
{
  v4 = *(a1 + 532);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = (8 * v5);
    if (v6 > 0x200 || (*(a1 + 512) & 1) != 0)
    {
      v7 = physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintSim>::allocate(a1, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    }

    else
    {
      *(a1 + 512) = 1;
      v7 = a1;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 528);
  v9 = (v7 + 8 * v8);
  if (v8)
  {
    v10 = *(a1 + 520);
    v11 = v7;
    do
    {
      v12 = *v10++;
      *v11++ = v12;
    }

    while (v11 < v9);
  }

  *v9 = *a2;
  if ((*(a1 + 532) & 0x80000000) == 0)
  {
    v13 = *(a1 + 520);
    if (v13 == a1)
    {
      *(a1 + 512) = 0;
    }

    else if (v13)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      v8 = *(a1 + 528);
    }
  }

  *(a1 + 520) = v7;
  *(a1 + 532) = v5;
  *(a1 + 528) = v8 + 1;
  return v7 + 8 * v8;
}

uint64_t physx::shdfnd::internal::HashBase<physx::Sc::ConstraintCore *,physx::Sc::ConstraintCore *,physx::shdfnd::Hash<physx::Sc::ConstraintCore *>,physx::shdfnd::internal::HashSetBase<physx::Sc::ConstraintCore *,physx::shdfnd::Hash<physx::Sc::ConstraintCore *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::create(int32x2_t *a1, void *a2, _BYTE *a3)
{
  v5 = a1[4].u32[1];
  if (!v5)
  {
    v9 = 0;
    goto LABEL_8;
  }

  v6 = ~(*a2 << 32) + *a2;
  v7 = 9 * (((v6 ^ (v6 >> 22)) + ~((v6 ^ (v6 >> 22)) << 13)) ^ (((v6 ^ (v6 >> 22)) + ~((v6 ^ (v6 >> 22)) << 13)) >> 8));
  v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27);
  v9 = (v5 - 1) & ((v8 >> 31) ^ v8);
  v10 = *(*&a1[3] + 4 * v9);
  if (v10 == -1)
  {
LABEL_8:
    *a3 = 0;
    if (a1[6].i32[1] == a1[4].i32[0])
    {
      if (v5)
      {
        v12 = 2 * v5;
      }

      else
      {
        v12 = 16;
      }

      if (v5 < v12)
      {
        physx::shdfnd::internal::HashBase<physx::Sc::ArticulationCore *,physx::Sc::ArticulationCore *,physx::shdfnd::Hash<physx::Sc::ArticulationCore *>,physx::shdfnd::internal::HashSetBase<physx::Sc::ArticulationCore *,physx::shdfnd::Hash<physx::Sc::ArticulationCore *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(a1, v12);
        v5 = a1[4].u32[1];
      }

      v13 = ~(*a2 << 32) + *a2;
      v14 = 9 * (((v13 ^ (v13 >> 22)) + ~((v13 ^ (v13 >> 22)) << 13)) ^ (((v13 ^ (v13 >> 22)) + ~((v13 ^ (v13 >> 22)) << 13)) >> 8));
      v15 = (v14 ^ (v14 >> 15)) + ~((v14 ^ (v14 >> 15)) << 27);
      v9 = (v5 - 1) & ((v15 >> 31) ^ v15);
    }

    v16 = a1[5].u32[1];
    a1[5].i32[1] = v16 + 1;
    v17 = a1[3];
    v18 = a1[1];
    *(*&a1[2] + 4 * v16) = *(*&v17 + 4 * v9);
    *(*&v17 + 4 * v9) = v16;
    a1[6] = vadd_s32(a1[6], 0x100000001);
    return *&v18 + 8 * v16;
  }

  v11 = a1[1];
  while (*(*&v11 + 8 * v10) != *a2)
  {
    v10 = *(*&a1[2] + 4 * v10);
    if (v10 == -1)
    {
      goto LABEL_8;
    }
  }

  result = *&v11 + 8 * v10;
  *a3 = 1;
  return result;
}

uint64_t physx::shdfnd::Array<physx::Sc::ConstraintCore *,physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintCore *>>::growAndPushBack(uint64_t a1, void *a2)
{
  v4 = *(a1 + 12);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sc::ConstraintCore *>::getName() [T = physx::Sc::ConstraintCore *]";
    }

    else
    {
      v7 = "<allocation names disabled>";
    }

    v8 = (*(*(v6 + 24) + 16))(v6 + 24, 8 * v5, v7, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 8);
  v10 = (v8 + 8 * v9);
  if (v9)
  {
    v11 = *a1;
    v12 = v8;
    do
    {
      v13 = *v11++;
      *v12++ = v13;
    }

    while (v12 < v10);
  }

  *v10 = *a2;
  if ((*(a1 + 12) & 0x80000000) == 0 && *a1)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    v9 = *(a1 + 8);
  }

  *a1 = v8;
  *(a1 + 8) = v9 + 1;
  *(a1 + 12) = v5;
  return v8 + 8 * v9;
}

uint64_t physx::shdfnd::PoolBase<physx::Sc::Scene::Block<unsigned char,128u>,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<unsigned char,128u>>>::allocateSlab(uint64_t a1)
{
  result = physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<unsigned char,128u>>::allocate(a1, *(a1 + 552), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsPool.h", 180);
  v3 = result;
  v8 = result;
  v4 = *(a1 + 536);
  if ((*(a1 + 540) & 0x7FFFFFFFu) <= v4)
  {
    result = physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<unsigned char,128u>>>>::growAndPushBack(a1 + 8, &v8);
  }

  else
  {
    *(*(a1 + 528) + 8 * v4) = result;
    *(a1 + 536) = v4 + 1;
  }

  v5 = v3 + (*(a1 + 544) << 7) - 128;
  if (v5 >= v3)
  {
    v6 = *(a1 + 560);
    v7 = (v3 + (*(a1 + 544) << 7) - 128);
    do
    {
      *v7 = v6;
      v7 -= 16;
      v6 = v5;
      v5 = v7;
    }

    while (v7 >= v3);
    *(a1 + 560) = v7 + 16;
  }

  return result;
}

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<unsigned char,128u>>>>::growAndPushBack(uint64_t a1, void *a2)
{
  v4 = *(a1 + 532);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = (8 * v5);
    if (v6 > 0x200 || (*(a1 + 512) & 1) != 0)
    {
      v7 = physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<unsigned char,128u>>::allocate(a1, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    }

    else
    {
      *(a1 + 512) = 1;
      v7 = a1;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 528);
  v9 = (v7 + 8 * v8);
  if (v8)
  {
    v10 = *(a1 + 520);
    v11 = v7;
    do
    {
      v12 = *v10++;
      *v11++ = v12;
    }

    while (v11 < v9);
  }

  *v9 = *a2;
  if ((*(a1 + 532) & 0x80000000) == 0)
  {
    v13 = *(a1 + 520);
    if (v13 == a1)
    {
      *(a1 + 512) = 0;
    }

    else if (v13)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      v8 = *(a1 + 528);
    }
  }

  *(a1 + 520) = v7;
  *(a1 + 532) = v5;
  *(a1 + 528) = v8 + 1;
  return v7 + 8 * v8;
}

uint64_t physx::shdfnd::PoolBase<physx::Sc::Scene::Block<unsigned char,256u>,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<unsigned char,256u>>>::allocateSlab(uint64_t a1)
{
  result = physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<unsigned char,256u>>::allocate(a1, *(a1 + 552), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsPool.h", 180);
  v3 = result;
  v8 = result;
  v4 = *(a1 + 536);
  if ((*(a1 + 540) & 0x7FFFFFFFu) <= v4)
  {
    result = physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<unsigned char,256u>>>>::growAndPushBack(a1 + 8, &v8);
  }

  else
  {
    *(*(a1 + 528) + 8 * v4) = result;
    *(a1 + 536) = v4 + 1;
  }

  v5 = v3 + (*(a1 + 544) << 8) - 256;
  if (v5 >= v3)
  {
    v6 = *(a1 + 560);
    v7 = (v3 + (*(a1 + 544) << 8) - 256);
    do
    {
      *v7 = v6;
      v7 -= 32;
      v6 = v5;
      v5 = v7;
    }

    while (v7 >= v3);
    *(a1 + 560) = v7 + 32;
  }

  return result;
}

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<unsigned char,256u>>>>::growAndPushBack(uint64_t a1, void *a2)
{
  v4 = *(a1 + 532);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = (8 * v5);
    if (v6 > 0x200 || (*(a1 + 512) & 1) != 0)
    {
      v7 = physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<unsigned char,256u>>::allocate(a1, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    }

    else
    {
      *(a1 + 512) = 1;
      v7 = a1;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 528);
  v9 = (v7 + 8 * v8);
  if (v8)
  {
    v10 = *(a1 + 520);
    v11 = v7;
    do
    {
      v12 = *v10++;
      *v11++ = v12;
    }

    while (v11 < v9);
  }

  *v9 = *a2;
  if ((*(a1 + 532) & 0x80000000) == 0)
  {
    v13 = *(a1 + 520);
    if (v13 == a1)
    {
      *(a1 + 512) = 0;
    }

    else if (v13)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      v8 = *(a1 + 528);
    }
  }

  *(a1 + 520) = v7;
  *(a1 + 532) = v5;
  *(a1 + 528) = v8 + 1;
  return v7 + 8 * v8;
}

uint64_t physx::shdfnd::PoolBase<physx::Sc::Scene::Block<unsigned char,384u>,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<unsigned char,384u>>>::allocateSlab(uint64_t a1)
{
  result = physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<unsigned char,384u>>::allocate(a1, *(a1 + 552), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsPool.h", 180);
  v3 = result;
  v8 = result;
  v4 = *(a1 + 536);
  if ((*(a1 + 540) & 0x7FFFFFFFu) <= v4)
  {
    result = physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<unsigned char,384u>>>>::growAndPushBack(a1 + 8, &v8);
  }

  else
  {
    *(*(a1 + 528) + 8 * v4) = result;
    *(a1 + 536) = v4 + 1;
  }

  v5 = (v3 + 384 * *(a1 + 544) - 384);
  if (v5 >= v3)
  {
    v6 = *(a1 + 560);
    do
    {
      *v5 = v6;
      v7 = v5 - 48;
      v6 = v5;
      v5 = v7;
    }

    while (v7 >= v3);
    *(a1 + 560) = v7 + 48;
  }

  return result;
}

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<unsigned char,384u>>>>::growAndPushBack(uint64_t a1, void *a2)
{
  v4 = *(a1 + 532);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = (8 * v5);
    if (v6 > 0x200 || (*(a1 + 512) & 1) != 0)
    {
      v7 = physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::Block<unsigned char,384u>>::allocate(a1, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    }

    else
    {
      *(a1 + 512) = 1;
      v7 = a1;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 528);
  v9 = (v7 + 8 * v8);
  if (v8)
  {
    v10 = *(a1 + 520);
    v11 = v7;
    do
    {
      v12 = *v10++;
      *v11++ = v12;
    }

    while (v11 < v9);
  }

  *v9 = *a2;
  if ((*(a1 + 532) & 0x80000000) == 0)
  {
    v13 = *(a1 + 520);
    if (v13 == a1)
    {
      *(a1 + 512) = 0;
    }

    else if (v13)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      v8 = *(a1 + 528);
    }
  }

  *(a1 + 520) = v7;
  *(a1 + 532) = v5;
  *(a1 + 528) = v8 + 1;
  return v7 + 8 * v8;
}

uint64_t physx::shdfnd::Array<physx::PxvContactManagerTouchEvent,physx::shdfnd::ReflectionAllocator<physx::PxvContactManagerTouchEvent>>::recreate(uint64_t a1, unsigned int a2)
{
  v4 = 16 * a2;
  v5 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v6 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxvContactManagerTouchEvent>::getName() [T = physx::PxvContactManagerTouchEvent]";
  }

  else
  {
    v6 = "<allocation names disabled>";
  }

  result = (*(*(v5 + 24) + 16))(v5 + 24, v4, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  v8 = result;
  v9 = *(a1 + 8);
  v10 = *a1;
  if (v9)
  {
    v11 = result + 16 * v9;
    v12 = result;
    do
    {
      v13 = *v10++;
      *v12++ = v13;
    }

    while (v12 < v11);
    v10 = *a1;
  }

  if ((*(a1 + 12) & 0x80000000) == 0 && v10)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *a1 = v8;
  *(a1 + 12) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::postCCDPass>,physx::shdfnd::ReflectionAllocator<physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::postCCDPass>>>::recreate(_DWORD *a1)
{
  v2 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v3 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Cm::DelegateTask<physx::Sc::Scene, &physx::Sc::Scene::postCCDPass>>::getName() [T = physx::Cm::DelegateTask<physx::Sc::Scene, &physx::Sc::Scene::postCCDPass>]";
  }

  else
  {
    v3 = "<allocation names disabled>";
  }

  result = (*(*(v2 + 24) + 16))(v2 + 24, 112, v3, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  v5 = result;
  v6 = a1[2];
  if (v6)
  {
    v7 = result + 56 * v6;
    v8 = (*a1 + 40);
    v9 = result;
    v10 = result;
    do
    {
      *v10 = &unk_1F5D1E9C8;
      *(v10 + 8) = *(v8 - 2);
      *(v10 + 24) = *(v8 - 2);
      *(v10 + 32) = *(v8 - 2);
      *v10 = &unk_1F5D207F0;
      v11 = *v8;
      v8 = (v8 + 56);
      *(v10 + 40) = v11;
      v10 += 56;
      v9 += 56;
    }

    while (v10 < v7);
    v12 = a1[2];
    if (v12)
    {
      v13 = *a1;
      v14 = *a1 + 56 * v12;
      result = *a1;
      v15 = *a1;
      do
      {
        v16 = *v15;
        v15 += 7;
        (*v16)(result);
        v13 += 56;
        result = v15;
      }

      while (v15 < v14);
    }
  }

  if ((a1[3] & 0x80000000) == 0 && *a1)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *a1 = v5;
  a1[3] = 2;
  return result;
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::postCCDPass>::~DelegateTask(void *a1)
{
  *a1 = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  a1[2] = 0;
  return (*(v1 + 24))();
}

uint64_t physx::shdfnd::Array<physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::updateCCDSinglePass>,physx::shdfnd::ReflectionAllocator<physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::updateCCDSinglePass>>>::recreate(_DWORD *a1)
{
  v2 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v3 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Cm::DelegateTask<physx::Sc::Scene, &physx::Sc::Scene::updateCCDSinglePass>>::getName() [T = physx::Cm::DelegateTask<physx::Sc::Scene, &physx::Sc::Scene::updateCCDSinglePass>]";
  }

  else
  {
    v3 = "<allocation names disabled>";
  }

  result = (*(*(v2 + 24) + 16))(v2 + 24, 112, v3, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  v5 = result;
  v6 = a1[2];
  if (v6)
  {
    v7 = result + 56 * v6;
    v8 = (*a1 + 40);
    v9 = result;
    v10 = result;
    do
    {
      *v10 = &unk_1F5D1E9C8;
      *(v10 + 8) = *(v8 - 2);
      *(v10 + 24) = *(v8 - 2);
      *(v10 + 32) = *(v8 - 2);
      *v10 = &unk_1F5D20880;
      v11 = *v8;
      v8 = (v8 + 56);
      *(v10 + 40) = v11;
      v10 += 56;
      v9 += 56;
    }

    while (v10 < v7);
    v12 = a1[2];
    if (v12)
    {
      v13 = *a1;
      v14 = *a1 + 56 * v12;
      result = *a1;
      v15 = *a1;
      do
      {
        v16 = *v15;
        v15 += 7;
        (*v16)(result);
        v13 += 56;
        result = v15;
      }

      while (v15 < v14);
    }
  }

  if ((a1[3] & 0x80000000) == 0 && *a1)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *a1 = v5;
  a1[3] = 2;
  return result;
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::updateCCDSinglePass>::~DelegateTask(void *a1)
{
  *a1 = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  a1[2] = 0;
  return (*(v1 + 24))();
}

void physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::updateCCDSinglePass>::runInternal(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 24);
  ++*(v1 + 1996);
  physx::Bp::AABBManager::postBroadPhase(*(v1 + 1848), 0, 0, *(*(v1 + 1840) + 1920));
  physx::Sc::Scene::finishBroadPhase(v1, v2);
  if (!*(*(v1 + 1864) + 180))
  {
    v3 = *(v1 + 2104);
    if (v3)
    {
      v4 = 0;
      v5 = *(v1 + 1848);
      do
      {
        v6 = *(*(*(v1 + 2096) + 8 * v4) + 56);
        if (v6)
        {
          do
          {
            if ((v6[7][8] & 5) != 0)
            {
              v7 = *(v6 + 4);
              physx::Cm::BitMapBase<physx::shdfnd::VirtualAllocator>::extend(v5 + 224, (v7 & 0x7FFFFFFF) + 1);
              *(*(v5 + 224) + ((v7 >> 3) & 0xFFFFFFC)) |= 1 << v7;
            }

            v6 = *v6;
          }

          while (v6);
          v3 = *(v1 + 2104);
        }

        ++v4;
      }

      while (v4 < v3);
    }
  }
}

uint64_t physx::shdfnd::Array<physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::updateCCDSinglePassStage2>,physx::shdfnd::ReflectionAllocator<physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::updateCCDSinglePassStage2>>>::recreate(_DWORD *a1)
{
  v2 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v3 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Cm::DelegateTask<physx::Sc::Scene, &physx::Sc::Scene::updateCCDSinglePassStage2>>::getName() [T = physx::Cm::DelegateTask<physx::Sc::Scene, &physx::Sc::Scene::updateCCDSinglePassStage2>]";
  }

  else
  {
    v3 = "<allocation names disabled>";
  }

  result = (*(*(v2 + 24) + 16))(v2 + 24, 112, v3, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  v5 = result;
  v6 = a1[2];
  if (v6)
  {
    v7 = result + 56 * v6;
    v8 = (*a1 + 40);
    v9 = result;
    v10 = result;
    do
    {
      *v10 = &unk_1F5D1E9C8;
      *(v10 + 8) = *(v8 - 2);
      *(v10 + 24) = *(v8 - 2);
      *(v10 + 32) = *(v8 - 2);
      *v10 = &unk_1F5D20910;
      v11 = *v8;
      v8 = (v8 + 56);
      *(v10 + 40) = v11;
      v10 += 56;
      v9 += 56;
    }

    while (v10 < v7);
    v12 = a1[2];
    if (v12)
    {
      v13 = *a1;
      v14 = *a1 + 56 * v12;
      result = *a1;
      v15 = *a1;
      do
      {
        v16 = *v15;
        v15 += 7;
        (*v16)(result);
        v13 += 56;
        result = v15;
      }

      while (v15 < v14);
    }
  }

  if ((a1[3] & 0x80000000) == 0 && *a1)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *a1 = v5;
  a1[3] = 2;
  return result;
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::updateCCDSinglePassStage2>::~DelegateTask(void *a1)
{
  *a1 = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  a1[2] = 0;
  return (*(v1 + 24))();
}

uint64_t physx::shdfnd::Array<physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::updateCCDSinglePassStage3>,physx::shdfnd::ReflectionAllocator<physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::updateCCDSinglePassStage3>>>::recreate(_DWORD *a1)
{
  v2 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v3 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Cm::DelegateTask<physx::Sc::Scene, &physx::Sc::Scene::updateCCDSinglePassStage3>>::getName() [T = physx::Cm::DelegateTask<physx::Sc::Scene, &physx::Sc::Scene::updateCCDSinglePassStage3>]";
  }

  else
  {
    v3 = "<allocation names disabled>";
  }

  result = (*(*(v2 + 24) + 16))(v2 + 24, 112, v3, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  v5 = result;
  v6 = a1[2];
  if (v6)
  {
    v7 = result + 56 * v6;
    v8 = (*a1 + 40);
    v9 = result;
    v10 = result;
    do
    {
      *v10 = &unk_1F5D1E9C8;
      *(v10 + 8) = *(v8 - 2);
      *(v10 + 24) = *(v8 - 2);
      *(v10 + 32) = *(v8 - 2);
      *v10 = &unk_1F5D209A0;
      v11 = *v8;
      v8 = (v8 + 56);
      *(v10 + 40) = v11;
      v10 += 56;
      v9 += 56;
    }

    while (v10 < v7);
    v12 = a1[2];
    if (v12)
    {
      v13 = *a1;
      v14 = *a1 + 56 * v12;
      result = *a1;
      v15 = *a1;
      do
      {
        v16 = *v15;
        v15 += 7;
        (*v16)(result);
        v13 += 56;
        result = v15;
      }

      while (v15 < v14);
    }
  }

  if ((a1[3] & 0x80000000) == 0 && *a1)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *a1 = v5;
  a1[3] = 2;
  return result;
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::updateCCDSinglePassStage3>::~DelegateTask(void *a1)
{
  *a1 = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  a1[2] = 0;
  return (*(v1 + 24))();
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::updateCCDSinglePassStage3>::runInternal(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 24);
  ++*(v1 + 1996);
  v3 = *(*(v1 + 1864) + 180);
  v4 = *(v1 + 1848);
  v5 = *(v1 + 1840);
  *(v5 + 2568) += *(v4 + 480) + *(v4 + 496);
  v6 = v3 + 1;
  if (v3 == -1)
  {
    physx::Sc::Scene::processLostTouchPairs(v1);
    goto LABEL_17;
  }

  (*(**(v5 + 1776) + 168))(v25);
  v7 = *(v4 + 480);
  v8 = (*(v1 + 4268) >> 3) & 1;
  if (v7)
  {
    v9 = *(v4 + 472);
    while (1)
    {
      v10 = *(v1 + 3992);
      Interaction = physx::Sc::NPhaseCore::findInteraction(v10, *v9, v9[1]);
      v9[2] = Interaction;
      if (Interaction)
      {
        break;
      }

LABEL_12:
      v9 += 3;
      if (!--v7)
      {
        goto LABEL_13;
      }
    }

    v12 = Interaction;
    if (*(Interaction + 36) != 2)
    {
      if (*(Interaction + 36))
      {
LABEL_11:
        physx::Sc::NPhaseCore::releaseElementPair(v10, v12, 4, v6, 1, v25, v8);
        goto LABEL_12;
      }

      physx::Sc::NPhaseCore::lostTouchReports(v10, Interaction, 4, 0, v25, v8);
      v13 = *(*(v12 + 8) + 72);
      (*(**(*(v13 + 1840) + 1776) + 72))(*(*(v13 + 1840) + 1776), *(v12 + 88));
      physx::PxsContext::destroyContactManager(*(v13 + 1840), *(v12 + 88));
      *(v12 + 88) = 0;
      v14 = *(v12 + 96);
      if (v14 != -1)
      {
        physx::IG::SimpleIslandManager::removeConnection(*(*(*(v12 + 8) + 72) + 1880), v14);
        *(v12 + 96) = -1;
      }
    }

    physx::Sc::Scene::unregisterInteraction(v1, (v12 + 8));
    physx::Sc::NPhaseCore::unregisterInteraction(*(v1 + 3992), v12);
    v10 = *(v1 + 3992);
    goto LABEL_11;
  }

LABEL_13:
  v15 = *(v4 + 496);
  if (v15)
  {
    v16 = *(v4 + 488);
    do
    {
      --v15;
      v17 = *v16;
      v18 = v16[1];
      v16[2] = 0;
      physx::Sc::NPhaseCore::onOverlapRemoved(*(v1 + 3992), v17, v18, v6, 0, v25, v8);
      v16 += 3;
    }

    while (v15);
  }

  physx::Sc::Scene::processLostTouchPairs(v1);
  (*(**(v4 + 392) + 160))(*(v4 + 392));
  (*(**(v4 + 392) + 136))(*(v4 + 392));
LABEL_17:
  physx::PxsContext::resetThreadContexts(*(v1 + 1840));
  v19 = *(v1 + 1864);
  v20 = *(v1 + 1984);
  v21 = (*(v1 + 4268) >> 2) & 1;
  v22 = *(v1 + 1872);
  v23 = (*(v1 + 1880) + 224);

  return physx::PxsCCDContext::updateCCD(v19, v20, v2, v23, v21, v22);
}

uint64_t physx::shdfnd::Array<physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::ccdBroadPhase>,physx::shdfnd::ReflectionAllocator<physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::ccdBroadPhase>>>::recreate(_DWORD *a1)
{
  v2 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v3 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Cm::DelegateTask<physx::Sc::Scene, &physx::Sc::Scene::ccdBroadPhase>>::getName() [T = physx::Cm::DelegateTask<physx::Sc::Scene, &physx::Sc::Scene::ccdBroadPhase>]";
  }

  else
  {
    v3 = "<allocation names disabled>";
  }

  result = (*(*(v2 + 24) + 16))(v2 + 24, 112, v3, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  v5 = result;
  v6 = a1[2];
  if (v6)
  {
    v7 = result + 56 * v6;
    v8 = (*a1 + 40);
    v9 = result;
    v10 = result;
    do
    {
      *v10 = &unk_1F5D1E9C8;
      *(v10 + 8) = *(v8 - 2);
      *(v10 + 24) = *(v8 - 2);
      *(v10 + 32) = *(v8 - 2);
      *v10 = &unk_1F5D20A30;
      v11 = *v8;
      v8 = (v8 + 56);
      *(v10 + 40) = v11;
      v10 += 56;
      v9 += 56;
    }

    while (v10 < v7);
    v12 = a1[2];
    if (v12)
    {
      v13 = *a1;
      v14 = *a1 + 56 * v12;
      result = *a1;
      v15 = *a1;
      do
      {
        v16 = *v15;
        v15 += 7;
        (*v16)(result);
        v13 += 56;
        result = v15;
      }

      while (v15 < v14);
    }
  }

  if ((a1[3] & 0x80000000) == 0 && *a1)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *a1 = v5;
  a1[3] = 2;
  return result;
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::ccdBroadPhase>::~DelegateTask(void *a1)
{
  *a1 = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  a1[2] = 0;
  return (*(v1 + 24))();
}

void physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::ccdBroadPhase>::runInternal(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 24);
  v3 = *(v1 + 1864);
  v4 = *(v3 + 45);
  v5 = *(v3 + 109);
  *(v1 + 1876) = v4 + 1;
  if (v4)
  {
    if (!*(v3 + 46) || !*(v1 + 1872))
    {
      return;
    }

    goto LABEL_6;
  }

  if (*(v1 + 1872))
  {
LABEL_6:
    v6 = !(v4 & 1);
    v7 = v5 - 1;
    if (v4 == v5 - 1)
    {
      v8 = (v1 + 5256);
      v9 = *(v1 + 5256);
      v10 = v4 & 1;
      v11 = v9 + 56 * v10;
    }

    else
    {
      v12 = *(v1 + 5240);
      v13 = v12 + 56 * !(v4 & 1);
      *(v13 + 32) = 1;
      *(v13 + 24) = v2;
      if (v2)
      {
        (*(*v2 + 32))(v2);
        *(v13 + 16) = *(*(v13 + 24) + 16);
        v12 = *(v1 + 5240);
      }

      v14 = *(v1 + 5224);
      v15 = v14 + 56 * v6;
      v16 = v12 + 56 * v6;
      *(v15 + 32) = 1;
      *(v15 + 24) = v16;
      if (v12)
      {
        (*(*v16 + 32))(v16);
        *(v15 + 16) = *(*(v15 + 24) + 16);
        v14 = *(v1 + 5224);
      }

      v8 = (v1 + 5256);
      v9 = *(v1 + 5256);
      v10 = v4 & 1;
      v11 = v9 + 56 * v10;
      v2 = v14 + 56 * !(v4 & 1);
    }

    *(v11 + 32) = 1;
    *(v11 + 24) = v2;
    if (v2)
    {
      (*(*v2 + 32))(v2);
      *(v11 + 16) = *(*(v11 + 24) + 16);
      v9 = *v8;
    }

    v17 = *(v1 + 5208);
    v18 = 56 * v10;
    v19 = v17 + 56 * v10;
    v20 = v9 + 56 * v10;
    *(v19 + 32) = 1;
    *(v19 + 24) = v20;
    if (v9)
    {
      (*(*v20 + 32))(v20);
      *(v19 + 16) = *(*(v19 + 24) + 16);
      v17 = *(v1 + 5208);
    }

    v21 = *(v1 + 5192);
    v22 = v21 + v18;
    *(v22 + 32) = 1;
    *(v22 + 24) = v17 + v18;
    if (v17)
    {
      (*(*(v17 + v18) + 32))(v17 + v18);
      *(v22 + 16) = *(*(v22 + 24) + 16);
      v21 = *(v1 + 5192);
    }

    v23 = *(v1 + 5176);
    v24 = v23 + v18;
    *(v24 + 32) = 1;
    *(v24 + 24) = v21 + v18;
    if (v21)
    {
      (*(*(v21 + v18) + 32))(v21 + v18);
      *(v24 + 16) = *(*(v24 + 24) + 16);
      v23 = *(v1 + 5176);
    }

    v25 = (v23 + v18);
    v26 = (*(**(v23 + v18 + 16) + 8))(*(v23 + v18 + 16));
    v27 = (*(*v26 + 8))(v26);
    physx::Bp::AABBManager::updateAABBsAndBP(*(v1 + 1848), v27, *(*(v1 + 1840) + 1920), *(v1 + 1840), 0, v25, 0);
    (*(*(*(v1 + 5256) + v18) + 40))(*(v1 + 5256) + v18);
    (*(*(*(v1 + 5208) + v18) + 40))(*(v1 + 5208) + v18);
    (*(*(*(v1 + 5192) + v18) + 40))(*(v1 + 5192) + v18);
    (*(*(*(v1 + 5176) + v18) + 40))(*(v1 + 5176) + v18);
    if (v4 != v7)
    {
      v28 = *(v1 + 5240) + 56 * !(v4 & 1);
      (*(*v28 + 40))(v28);
      v29 = *(*(*(v1 + 5224) + 56 * !(v4 & 1)) + 40);

      v29();
    }

    return;
  }

  physx::PxsCCDContext::resetContactManagers(v3);
}

uint64_t physx::shdfnd::Array<physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::ccdBroadPhaseAABB>,physx::shdfnd::ReflectionAllocator<physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::ccdBroadPhaseAABB>>>::recreate(_DWORD *a1)
{
  v2 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v3 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Cm::DelegateTask<physx::Sc::Scene, &physx::Sc::Scene::ccdBroadPhaseAABB>>::getName() [T = physx::Cm::DelegateTask<physx::Sc::Scene, &physx::Sc::Scene::ccdBroadPhaseAABB>]";
  }

  else
  {
    v3 = "<allocation names disabled>";
  }

  result = (*(*(v2 + 24) + 16))(v2 + 24, 112, v3, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  v5 = result;
  v6 = a1[2];
  if (v6)
  {
    v7 = result + 56 * v6;
    v8 = (*a1 + 40);
    v9 = result;
    v10 = result;
    do
    {
      *v10 = &unk_1F5D1E9C8;
      *(v10 + 8) = *(v8 - 2);
      *(v10 + 24) = *(v8 - 2);
      *(v10 + 32) = *(v8 - 2);
      *v10 = &unk_1F5D20AC0;
      v11 = *v8;
      v8 = (v8 + 56);
      *(v10 + 40) = v11;
      v10 += 56;
      v9 += 56;
    }

    while (v10 < v7);
    v12 = a1[2];
    if (v12)
    {
      v13 = *a1;
      v14 = *a1 + 56 * v12;
      result = *a1;
      v15 = *a1;
      do
      {
        v16 = *v15;
        v15 += 7;
        (*v16)(result);
        v13 += 56;
        result = v15;
      }

      while (v15 < v14);
    }
  }

  if ((a1[3] & 0x80000000) == 0 && *a1)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *a1 = v5;
  a1[3] = 2;
  return result;
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::ccdBroadPhaseAABB>::~DelegateTask(void *a1)
{
  *a1 = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  a1[2] = 0;
  return (*(v1 + 24))();
}

uint64_t physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::ccdBroadPhaseAABB>::runInternal(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(result + 24);
  v3 = *(v1 + 1864);
  v4 = *(v3 + 180);
  v5 = *(*(v1 + 1840) + 1920);
  *(v1 + 1872) = 0;
  if (!v4 || *(v3 + 184))
  {
    v6 = *(v1 + 2104);
    if (v6)
    {
      v7 = 0;
      for (i = 0; i < v6; i += 256)
      {
        v9 = v6 + v7;
        if (v9 >= 0x100)
        {
          v10 = 256;
        }

        else
        {
          v10 = v9;
        }

        v11 = physx::Cm::FlushPool::allocate(v5, 64, 0x10u);
        v12 = *(v1 + 2096) + 8 * i;
        *(v11 + 8) = *(v1 + 24);
        *(v11 + 16) = 0;
        *(v11 + 32) = 0;
        v13 = &unk_1F5D1EB68;
        *v11 = &unk_1F5D1EB68;
        *(v11 + 40) = v12;
        *(v11 + 48) = v10;
        *(v11 + 56) = v1 + 1872;
        *(v11 + 32) = 1;
        *(v11 + 24) = v2;
        if (v2)
        {
          (*(*v2 + 32))(v2);
          *(v11 + 16) = *(*(v11 + 24) + 16);
          v13 = *v11;
        }

        result = v13[5](v11);
        v6 = *(v1 + 2104);
        v7 -= 256;
      }
    }
  }

  return result;
}

uint64_t physx::shdfnd::Array<physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::postCCDPass>,physx::shdfnd::ReflectionAllocator<physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::postCCDPass>>>::growAndPushBack(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 12);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Cm::DelegateTask<physx::Sc::Scene, &physx::Sc::Scene::postCCDPass>>::getName() [T = physx::Cm::DelegateTask<physx::Sc::Scene, &physx::Sc::Scene::postCCDPass>]";
    }

    else
    {
      v7 = "<allocation names disabled>";
    }

    result = (*(*(v6 + 24) + 16))(v6 + 24, 56 * v5, v7, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v8 = result;
  }

  else
  {
    v8 = 0;
  }

  v9 = v3[2];
  if (v9)
  {
    v10 = v8 + 56 * v9;
    v11 = (*v3 + 40);
    v12 = v8;
    v13 = v8;
    do
    {
      *v13 = &unk_1F5D1E9C8;
      *(v13 + 8) = *(v11 - 2);
      *(v13 + 24) = *(v11 - 2);
      *(v13 + 32) = *(v11 - 2);
      *v13 = &unk_1F5D207F0;
      v14 = *v11;
      v11 = (v11 + 56);
      *(v13 + 40) = v14;
      v13 += 56;
      v12 += 56;
    }

    while (v13 < v10);
    v15 = v3[2];
  }

  else
  {
    v15 = 0;
  }

  v16 = v8 + 56 * v15;
  *v16 = &unk_1F5D1E9C8;
  *(v16 + 8) = *(a2 + 8);
  *(v16 + 24) = *(a2 + 24);
  *(v16 + 32) = *(a2 + 32);
  *v16 = &unk_1F5D207F0;
  *(v16 + 40) = *(a2 + 40);
  v17 = v3[2];
  if (v17)
  {
    v18 = *v3;
    v19 = *v3 + 56 * v17;
    result = *v3;
    v20 = *v3;
    do
    {
      v21 = *v20;
      v20 += 7;
      (*v21)(result);
      v18 += 56;
      result = v20;
    }

    while (v20 < v19);
  }

  if ((v3[3] & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *v3 = v8;
  ++v3[2];
  v3[3] = v5;
  return result;
}

uint64_t physx::shdfnd::Array<physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::updateCCDSinglePass>,physx::shdfnd::ReflectionAllocator<physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::updateCCDSinglePass>>>::growAndPushBack(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 12);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Cm::DelegateTask<physx::Sc::Scene, &physx::Sc::Scene::updateCCDSinglePass>>::getName() [T = physx::Cm::DelegateTask<physx::Sc::Scene, &physx::Sc::Scene::updateCCDSinglePass>]";
    }

    else
    {
      v7 = "<allocation names disabled>";
    }

    result = (*(*(v6 + 24) + 16))(v6 + 24, 56 * v5, v7, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v8 = result;
  }

  else
  {
    v8 = 0;
  }

  v9 = v3[2];
  if (v9)
  {
    v10 = v8 + 56 * v9;
    v11 = (*v3 + 40);
    v12 = v8;
    v13 = v8;
    do
    {
      *v13 = &unk_1F5D1E9C8;
      *(v13 + 8) = *(v11 - 2);
      *(v13 + 24) = *(v11 - 2);
      *(v13 + 32) = *(v11 - 2);
      *v13 = &unk_1F5D20880;
      v14 = *v11;
      v11 = (v11 + 56);
      *(v13 + 40) = v14;
      v13 += 56;
      v12 += 56;
    }

    while (v13 < v10);
    v15 = v3[2];
  }

  else
  {
    v15 = 0;
  }

  v16 = v8 + 56 * v15;
  *v16 = &unk_1F5D1E9C8;
  *(v16 + 8) = *(a2 + 8);
  *(v16 + 24) = *(a2 + 24);
  *(v16 + 32) = *(a2 + 32);
  *v16 = &unk_1F5D20880;
  *(v16 + 40) = *(a2 + 40);
  v17 = v3[2];
  if (v17)
  {
    v18 = *v3;
    v19 = *v3 + 56 * v17;
    result = *v3;
    v20 = *v3;
    do
    {
      v21 = *v20;
      v20 += 7;
      (*v21)(result);
      v18 += 56;
      result = v20;
    }

    while (v20 < v19);
  }

  if ((v3[3] & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *v3 = v8;
  ++v3[2];
  v3[3] = v5;
  return result;
}

uint64_t physx::shdfnd::Array<physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::updateCCDSinglePassStage2>,physx::shdfnd::ReflectionAllocator<physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::updateCCDSinglePassStage2>>>::growAndPushBack(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 12);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Cm::DelegateTask<physx::Sc::Scene, &physx::Sc::Scene::updateCCDSinglePassStage2>>::getName() [T = physx::Cm::DelegateTask<physx::Sc::Scene, &physx::Sc::Scene::updateCCDSinglePassStage2>]";
    }

    else
    {
      v7 = "<allocation names disabled>";
    }

    result = (*(*(v6 + 24) + 16))(v6 + 24, 56 * v5, v7, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v8 = result;
  }

  else
  {
    v8 = 0;
  }

  v9 = v3[2];
  if (v9)
  {
    v10 = v8 + 56 * v9;
    v11 = (*v3 + 40);
    v12 = v8;
    v13 = v8;
    do
    {
      *v13 = &unk_1F5D1E9C8;
      *(v13 + 8) = *(v11 - 2);
      *(v13 + 24) = *(v11 - 2);
      *(v13 + 32) = *(v11 - 2);
      *v13 = &unk_1F5D20910;
      v14 = *v11;
      v11 = (v11 + 56);
      *(v13 + 40) = v14;
      v13 += 56;
      v12 += 56;
    }

    while (v13 < v10);
    v15 = v3[2];
  }

  else
  {
    v15 = 0;
  }

  v16 = v8 + 56 * v15;
  *v16 = &unk_1F5D1E9C8;
  *(v16 + 8) = *(a2 + 8);
  *(v16 + 24) = *(a2 + 24);
  *(v16 + 32) = *(a2 + 32);
  *v16 = &unk_1F5D20910;
  *(v16 + 40) = *(a2 + 40);
  v17 = v3[2];
  if (v17)
  {
    v18 = *v3;
    v19 = *v3 + 56 * v17;
    result = *v3;
    v20 = *v3;
    do
    {
      v21 = *v20;
      v20 += 7;
      (*v21)(result);
      v18 += 56;
      result = v20;
    }

    while (v20 < v19);
  }

  if ((v3[3] & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *v3 = v8;
  ++v3[2];
  v3[3] = v5;
  return result;
}

uint64_t physx::shdfnd::Array<physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::updateCCDSinglePassStage3>,physx::shdfnd::ReflectionAllocator<physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::updateCCDSinglePassStage3>>>::growAndPushBack(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 12);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Cm::DelegateTask<physx::Sc::Scene, &physx::Sc::Scene::updateCCDSinglePassStage3>>::getName() [T = physx::Cm::DelegateTask<physx::Sc::Scene, &physx::Sc::Scene::updateCCDSinglePassStage3>]";
    }

    else
    {
      v7 = "<allocation names disabled>";
    }

    result = (*(*(v6 + 24) + 16))(v6 + 24, 56 * v5, v7, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v8 = result;
  }

  else
  {
    v8 = 0;
  }

  v9 = v3[2];
  if (v9)
  {
    v10 = v8 + 56 * v9;
    v11 = (*v3 + 40);
    v12 = v8;
    v13 = v8;
    do
    {
      *v13 = &unk_1F5D1E9C8;
      *(v13 + 8) = *(v11 - 2);
      *(v13 + 24) = *(v11 - 2);
      *(v13 + 32) = *(v11 - 2);
      *v13 = &unk_1F5D209A0;
      v14 = *v11;
      v11 = (v11 + 56);
      *(v13 + 40) = v14;
      v13 += 56;
      v12 += 56;
    }

    while (v13 < v10);
    v15 = v3[2];
  }

  else
  {
    v15 = 0;
  }

  v16 = v8 + 56 * v15;
  *v16 = &unk_1F5D1E9C8;
  *(v16 + 8) = *(a2 + 8);
  *(v16 + 24) = *(a2 + 24);
  *(v16 + 32) = *(a2 + 32);
  *v16 = &unk_1F5D209A0;
  *(v16 + 40) = *(a2 + 40);
  v17 = v3[2];
  if (v17)
  {
    v18 = *v3;
    v19 = *v3 + 56 * v17;
    result = *v3;
    v20 = *v3;
    do
    {
      v21 = *v20;
      v20 += 7;
      (*v21)(result);
      v18 += 56;
      result = v20;
    }

    while (v20 < v19);
  }

  if ((v3[3] & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *v3 = v8;
  ++v3[2];
  v3[3] = v5;
  return result;
}

uint64_t physx::shdfnd::Array<physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::ccdBroadPhase>,physx::shdfnd::ReflectionAllocator<physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::ccdBroadPhase>>>::growAndPushBack(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 12);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Cm::DelegateTask<physx::Sc::Scene, &physx::Sc::Scene::ccdBroadPhase>>::getName() [T = physx::Cm::DelegateTask<physx::Sc::Scene, &physx::Sc::Scene::ccdBroadPhase>]";
    }

    else
    {
      v7 = "<allocation names disabled>";
    }

    result = (*(*(v6 + 24) + 16))(v6 + 24, 56 * v5, v7, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v8 = result;
  }

  else
  {
    v8 = 0;
  }

  v9 = v3[2];
  if (v9)
  {
    v10 = v8 + 56 * v9;
    v11 = (*v3 + 40);
    v12 = v8;
    v13 = v8;
    do
    {
      *v13 = &unk_1F5D1E9C8;
      *(v13 + 8) = *(v11 - 2);
      *(v13 + 24) = *(v11 - 2);
      *(v13 + 32) = *(v11 - 2);
      *v13 = &unk_1F5D20A30;
      v14 = *v11;
      v11 = (v11 + 56);
      *(v13 + 40) = v14;
      v13 += 56;
      v12 += 56;
    }

    while (v13 < v10);
    v15 = v3[2];
  }

  else
  {
    v15 = 0;
  }

  v16 = v8 + 56 * v15;
  *v16 = &unk_1F5D1E9C8;
  *(v16 + 8) = *(a2 + 8);
  *(v16 + 24) = *(a2 + 24);
  *(v16 + 32) = *(a2 + 32);
  *v16 = &unk_1F5D20A30;
  *(v16 + 40) = *(a2 + 40);
  v17 = v3[2];
  if (v17)
  {
    v18 = *v3;
    v19 = *v3 + 56 * v17;
    result = *v3;
    v20 = *v3;
    do
    {
      v21 = *v20;
      v20 += 7;
      (*v21)(result);
      v18 += 56;
      result = v20;
    }

    while (v20 < v19);
  }

  if ((v3[3] & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *v3 = v8;
  ++v3[2];
  v3[3] = v5;
  return result;
}

uint64_t physx::shdfnd::Array<physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::ccdBroadPhaseAABB>,physx::shdfnd::ReflectionAllocator<physx::Cm::DelegateTask<physx::Sc::Scene,&physx::Sc::Scene::ccdBroadPhaseAABB>>>::growAndPushBack(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 12);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Cm::DelegateTask<physx::Sc::Scene, &physx::Sc::Scene::ccdBroadPhaseAABB>>::getName() [T = physx::Cm::DelegateTask<physx::Sc::Scene, &physx::Sc::Scene::ccdBroadPhaseAABB>]";
    }

    else
    {
      v7 = "<allocation names disabled>";
    }

    result = (*(*(v6 + 24) + 16))(v6 + 24, 56 * v5, v7, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v8 = result;
  }

  else
  {
    v8 = 0;
  }

  v9 = v3[2];
  if (v9)
  {
    v10 = v8 + 56 * v9;
    v11 = (*v3 + 40);
    v12 = v8;
    v13 = v8;
    do
    {
      *v13 = &unk_1F5D1E9C8;
      *(v13 + 8) = *(v11 - 2);
      *(v13 + 24) = *(v11 - 2);
      *(v13 + 32) = *(v11 - 2);
      *v13 = &unk_1F5D20AC0;
      v14 = *v11;
      v11 = (v11 + 56);
      *(v13 + 40) = v14;
      v13 += 56;
      v12 += 56;
    }

    while (v13 < v10);
    v15 = v3[2];
  }

  else
  {
    v15 = 0;
  }

  v16 = v8 + 56 * v15;
  *v16 = &unk_1F5D1E9C8;
  *(v16 + 8) = *(a2 + 8);
  *(v16 + 24) = *(a2 + 24);
  *(v16 + 32) = *(a2 + 32);
  *v16 = &unk_1F5D20AC0;
  *(v16 + 40) = *(a2 + 40);
  v17 = v3[2];
  if (v17)
  {
    v18 = *v3;
    v19 = *v3 + 56 * v17;
    result = *v3;
    v20 = *v3;
    do
    {
      v21 = *v20;
      v20 += 7;
      (*v21)(result);
      v18 += 56;
      result = v20;
    }

    while (v20 < v19);
  }

  if ((v3[3] & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *v3 = v8;
  ++v3[2];
  v3[3] = v5;
  return result;
}

uint64_t physx::shdfnd::Array<physx::PxContactPairHeader,physx::shdfnd::ReflectionAllocator<physx::PxContactPairHeader>>::recreate(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2)
  {
    v4 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v5 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxContactPairHeader>::getName() [T = physx::PxContactPairHeader]";
    }

    else
    {
      v5 = "<allocation names disabled>";
    }

    result = (*(*(v4 + 24) + 16))(v4 + 24, 48 * a2, v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 8);
  v8 = *v3;
  if (v7)
  {
    v9 = v6 + 48 * v7;
    v10 = v6;
    do
    {
      v11 = *v8;
      *(v10 + 10) = *(v8 + 10);
      *v10 = v11;
      *(v10 + 26) = *(v8 + 13);
      v12 = *(v8 + 4);
      *(v10 + 40) = *(v8 + 10);
      *(v10 + 32) = v12;
      v10 += 48;
      v8 += 3;
    }

    while (v10 < v9);
    v8 = *v3;
  }

  if ((*(v3 + 12) & 0x80000000) == 0 && v8)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *v3 = v6;
  *(v3 + 12) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::PxRigidBody const*,physx::shdfnd::ReflectionAllocator<physx::PxRigidBody const*>>::recreate(uint64_t a1, unsigned int a2)
{
  v4 = 8 * a2;
  v5 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v6 = "static const char *physx::shdfnd::ReflectionAllocator<const physx::PxRigidBody *>::getName() [T = const physx::PxRigidBody *]";
  }

  else
  {
    v6 = "<allocation names disabled>";
  }

  result = (*(*(v5 + 24) + 16))(v5 + 24, v4, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  v8 = result;
  v9 = *(a1 + 8);
  v10 = *a1;
  if (v9)
  {
    v11 = result + 8 * v9;
    v12 = result;
    do
    {
      v13 = *v10++;
      *v12++ = v13;
    }

    while (v12 < v11);
    v10 = *a1;
  }

  if ((*(a1 + 12) & 0x80000000) == 0 && v10)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *a1 = v8;
  *(a1 + 12) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::PxRigidBody const*,physx::shdfnd::ReflectionAllocator<physx::PxRigidBody const*>>::growAndPushBack(uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 12);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<const physx::PxRigidBody *>::getName() [T = const physx::PxRigidBody *]";
    }

    else
    {
      v7 = "<allocation names disabled>";
    }

    result = (*(*(v6 + 24) + 16))(v6 + 24, 8 * v5, v7, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v8 = result;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v3 + 8);
  v10 = &v8[v9];
  if (v9)
  {
    v11 = *v3;
    v12 = v8;
    do
    {
      v13 = *v11++;
      *v12++ = v13;
    }

    while (v12 < v10);
  }

  *v10 = *a2;
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    LODWORD(v9) = *(v3 + 8);
  }

  *v3 = v8;
  *(v3 + 8) = v9 + 1;
  *(v3 + 12) = v5;
  return result;
}

uint64_t physx::shdfnd::Array<physx::PxTransform,physx::shdfnd::ReflectionAllocator<physx::PxTransform>>::growAndPushBack(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 12);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    result = physx::shdfnd::ReflectionAllocator<physx::PxTransform>::allocate(result, 28 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 8);
  v8 = v6 + 28 * v7;
  v9 = *v3;
  if (v7)
  {
    v10 = *v3;
    v11 = v6;
    do
    {
      *v11 = *v10;
      *(v11 + 16) = *(v10 + 16);
      *(v11 + 24) = *(v10 + 24);
      v11 += 28;
      v10 += 28;
    }

    while (v11 < v8);
  }

  *v8 = *a2;
  *(v8 + 16) = *(a2 + 16);
  *(v8 + 24) = *(a2 + 24);
  if ((*(v3 + 12) & 0x80000000) == 0 && v9)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    v7 = *(v3 + 8);
  }

  *v3 = v6;
  *(v3 + 8) = v7 + 1;
  *(v3 + 12) = v5;
  return result;
}

uint64_t physx::shdfnd::Array<physx::Sc::ShapeSim *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::Sc::ShapeSim *>>>::growAndPushBack(uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 532);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = (8 * v5);
    if (v6 > 0x200 || (*(result + 512) & 1) != 0)
    {
      result = physx::shdfnd::ReflectionAllocator<physx::Sc::ShapeSim *>::allocate(result, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
      v7 = result;
    }

    else
    {
      *(result + 512) = 1;
      v7 = result;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v3 + 528);
  v9 = &v7[v8];
  if (v8)
  {
    v10 = *(v3 + 520);
    v11 = v7;
    do
    {
      v12 = *v10++;
      *v11++ = v12;
    }

    while (v11 < v9);
  }

  *v9 = *a2;
  if ((*(v3 + 532) & 0x80000000) == 0)
  {
    v13 = *(v3 + 520);
    if (v13 == v3)
    {
      *(v3 + 512) = 0;
    }

    else if (v13)
    {
      result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      LODWORD(v8) = *(v3 + 528);
    }
  }

  *(v3 + 520) = v7;
  *(v3 + 532) = v5;
  *(v3 + 528) = v8 + 1;
  return result;
}

uint64_t physx::shdfnd::ReflectionAllocator<physx::Sc::ShapeSim *>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sc::ShapeSim *>::getName() [T = physx::Sc::ShapeSim *]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

uint64_t physx::shdfnd::Array<physx::Sc::ShapeCore const*,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::Sc::ShapeCore const*>>>::growAndPushBack(uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 532);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  if ((8 * v5) <= 0x200 && (*(result + 512) & 1) == 0)
  {
    *(result + 512) = 1;
    v6 = result;
    goto LABEL_14;
  }

  if (8 * v5)
  {
    v7 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v8 = "static const char *physx::shdfnd::ReflectionAllocator<const physx::Sc::ShapeCore *>::getName() [T = const physx::Sc::ShapeCore *]";
    }

    else
    {
      v8 = "<allocation names disabled>";
    }

    result = (*(*(v7 + 24) + 16))(v7 + 24, (8 * v5), v8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v6 = result;
  }

  else
  {
LABEL_13:
    v6 = 0;
  }

LABEL_14:
  v9 = *(v3 + 528);
  v10 = &v6[v9];
  if (v9)
  {
    v11 = *(v3 + 520);
    v12 = v6;
    do
    {
      v13 = *v11++;
      *v12++ = v13;
    }

    while (v12 < v10);
  }

  *v10 = *a2;
  if ((*(v3 + 532) & 0x80000000) == 0)
  {
    v14 = *(v3 + 520);
    if (v14 == v3)
    {
      *(v3 + 512) = 0;
    }

    else if (v14)
    {
      result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      LODWORD(v9) = *(v3 + 528);
    }
  }

  *(v3 + 520) = v6;
  *(v3 + 532) = v5;
  *(v3 + 528) = v9 + 1;
  return result;
}

uint64_t physx::shdfnd::Array<physx::PxActor *,physx::shdfnd::ReflectionAllocator<physx::PxActor *>>::growAndPushBack(uint64_t a1, void *a2)
{
  v4 = *(a1 + 12);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = physx::shdfnd::ReflectionAllocator<physx::PxActor *>::allocate(a1, 8 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 8);
  v8 = (v6 + 8 * v7);
  if (v7)
  {
    v9 = *a1;
    v10 = v6;
    do
    {
      v11 = *v9++;
      *v10++ = v11;
    }

    while (v10 < v8);
  }

  *v8 = *a2;
  if ((*(a1 + 12) & 0x80000000) == 0 && *a1)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    v7 = *(a1 + 8);
  }

  *a1 = v6;
  *(a1 + 8) = v7 + 1;
  *(a1 + 12) = v5;
  return v6 + 8 * v7;
}

uint64_t physx::shdfnd::ReflectionAllocator<physx::PxActor *>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxActor *>::getName() [T = physx::PxActor *]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

uint64_t physx::shdfnd::Array<physx::PxActor *,physx::shdfnd::ReflectionAllocator<physx::PxActor *>>::recreate(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2)
  {
    result = physx::shdfnd::ReflectionAllocator<physx::PxActor *>::allocate(result, 8 * a2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v4 = result;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v3 + 8);
  v6 = *v3;
  if (v5)
  {
    v7 = &v4[v5];
    v8 = v4;
    do
    {
      v9 = *v6++;
      *v8++ = v9;
    }

    while (v8 < v7);
    v6 = *v3;
  }

  if ((*(v3 + 12) & 0x80000000) == 0 && v6)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *v3 = v4;
  *(v3 + 12) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::Sc::Scene::SimpleBodyPair,physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::SimpleBodyPair>>::growAndPushBack(uint64_t *a1, __int128 *a2)
{
  v4 = *(a1 + 3);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sc::Scene::SimpleBodyPair>::getName() [T = physx::Sc::Scene::SimpleBodyPair]";
    }

    else
    {
      v7 = "<allocation names disabled>";
    }

    v8 = (*(*(v6 + 24) + 16))(v6 + 24, 24 * v5, v7, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 2);
  if (v9)
  {
    v10 = v8 + 24 * v9;
    v11 = *a1;
    v12 = v8;
    do
    {
      v13 = *v11;
      *(v12 + 16) = *(v11 + 2);
      *v12 = v13;
      v12 += 24;
      v11 = (v11 + 24);
    }

    while (v12 < v10);
    v14 = *(a1 + 2);
  }

  else
  {
    v14 = 0;
  }

  v15 = v8 + 24 * v14;
  v16 = *a2;
  *(v15 + 16) = *(a2 + 2);
  *v15 = v16;
  if ((*(a1 + 3) & 0x80000000) == 0 && *a1)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *a1 = v8;
  v17 = *(a1 + 2);
  *(a1 + 2) = v17 + 1;
  *(a1 + 3) = v5;
  return v8 + 24 * v17;
}

unint64_t physx::shdfnd::PoolBase<physx::Dy::Articulation,physx::shdfnd::AlignedAllocator<64u,physx::shdfnd::NonTrackingAllocator>>::allocateSlab(uint64_t a1)
{
  result = physx::shdfnd::AlignedAllocator<64u,physx::shdfnd::NonTrackingAllocator>::allocate(a1, *(a1 + 552), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsPool.h", 180);
  v3 = result;
  v8 = result;
  v4 = *(a1 + 536);
  if ((*(a1 + 540) & 0x7FFFFFFFu) <= v4)
  {
    result = physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::AlignedAllocator<64u,physx::shdfnd::NonTrackingAllocator>>>::growAndPushBack(a1 + 8, &v8);
  }

  else
  {
    *(*(a1 + 528) + 8 * v4) = result;
    *(a1 + 536) = v4 + 1;
  }

  v5 = (v3 + 320 * *(a1 + 544) - 320);
  if (v5 >= v3)
  {
    v6 = *(a1 + 560);
    do
    {
      *v5 = v6;
      v7 = v5 - 40;
      v6 = v5;
      v5 = v7;
    }

    while (v7 >= v3);
    *(a1 + 560) = v7 + 40;
  }

  return result;
}

unint64_t physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::AlignedAllocator<64u,physx::shdfnd::NonTrackingAllocator>>>::growAndPushBack(uint64_t a1, void *a2)
{
  v4 = *(a1 + 532);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = (8 * v5);
    if (v6 > 0x200 || (*(a1 + 512) & 1) != 0)
    {
      v7 = physx::shdfnd::AlignedAllocator<64u,physx::shdfnd::NonTrackingAllocator>::allocate(a1, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    }

    else
    {
      *(a1 + 512) = 1;
      v7 = a1;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 528);
  v9 = (v7 + 8 * v8);
  if (v8)
  {
    v10 = *(a1 + 520);
    v11 = v7;
    do
    {
      v12 = *v10++;
      *v11++ = v12;
    }

    while (v11 < v9);
  }

  *v9 = *a2;
  if ((*(a1 + 532) & 0x80000000) == 0)
  {
    v13 = *(a1 + 520);
    if (v13 == a1)
    {
      *(a1 + 512) = 0;
    }

    else if (v13)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v13 - *(v13 - 8));
      v8 = *(a1 + 528);
    }
  }

  *(a1 + 520) = v7;
  *(a1 + 532) = v5;
  *(a1 + 528) = v8 + 1;
  return v7 + 8 * v8;
}

unint64_t physx::shdfnd::PoolBase<physx::Dy::FeatherstoneArticulation,physx::shdfnd::AlignedAllocator<64u,physx::shdfnd::NonTrackingAllocator>>::allocateSlab(uint64_t a1)
{
  result = physx::shdfnd::AlignedAllocator<64u,physx::shdfnd::NonTrackingAllocator>::allocate(a1, *(a1 + 552), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsPool.h", 180);
  v3 = result;
  v8 = result;
  v4 = *(a1 + 536);
  if ((*(a1 + 540) & 0x7FFFFFFFu) <= v4)
  {
    result = physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::AlignedAllocator<64u,physx::shdfnd::NonTrackingAllocator>>>::growAndPushBack(a1 + 8, &v8);
  }

  else
  {
    *(*(a1 + 528) + 8 * v4) = result;
    *(a1 + 536) = v4 + 1;
  }

  v5 = (v3 + 896 * *(a1 + 544) - 896);
  if (v5 >= v3)
  {
    v6 = *(a1 + 560);
    do
    {
      *v5 = v6;
      v7 = v5 - 112;
      v6 = v5;
      v5 = v7;
    }

    while (v7 >= v3);
    *(a1 + 560) = v7 + 112;
  }

  return result;
}

uint64_t physx::shdfnd::Array<physx::Sc::ShapeInteraction *,physx::shdfnd::ReflectionAllocator<physx::Sc::ShapeInteraction *>>::recreate(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2)
  {
    result = physx::shdfnd::ReflectionAllocator<physx::Sc::ShapeInteraction *>::allocate(result, 8 * a2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v4 = result;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v3 + 8);
  v6 = *v3;
  if (v5)
  {
    v7 = &v4[v5];
    v8 = v4;
    do
    {
      v9 = *v6++;
      *v8++ = v9;
    }

    while (v8 < v7);
    v6 = *v3;
  }

  if ((*(v3 + 12) & 0x80000000) == 0 && v6)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *v3 = v4;
  *(v3 + 12) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::Sc::ElementInteractionMarker *,physx::shdfnd::ReflectionAllocator<physx::Sc::ElementInteractionMarker *>>::recreate(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2)
  {
    v4 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v5 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sc::ElementInteractionMarker *>::getName() [T = physx::Sc::ElementInteractionMarker *]";
    }

    else
    {
      v5 = "<allocation names disabled>";
    }

    result = (*(*(v4 + 24) + 16))(v4 + 24, 8 * a2, v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 8);
  v8 = *v3;
  if (v7)
  {
    v9 = &v6[v7];
    v10 = v6;
    do
    {
      v11 = *v8++;
      *v10++ = v11;
    }

    while (v10 < v9);
    v8 = *v3;
  }

  if ((*(v3 + 12) & 0x80000000) == 0 && v8)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *v3 = v6;
  *(v3 + 12) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::PxFilterInfo,physx::shdfnd::ReflectionAllocator<physx::PxFilterInfo>>::recreate(uint64_t a1, unsigned int a2)
{
  v4 = 8 * a2;
  v5 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v6 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxFilterInfo>::getName() [T = physx::PxFilterInfo]";
  }

  else
  {
    v6 = "<allocation names disabled>";
  }

  result = (*(*(v5 + 24) + 16))(v5 + 24, v4, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  v8 = result;
  v9 = *(a1 + 8);
  v10 = *a1;
  if (v9)
  {
    v11 = result + 8 * v9;
    v12 = *a1;
    v13 = result;
    do
    {
      *v13 = *v12;
      v13[1] = v12[1];
      v13 += 2;
      v12 += 2;
    }

    while (v13 < v11);
  }

  if ((*(a1 + 12) & 0x80000000) == 0 && v10)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *a1 = v8;
  *(a1 + 12) = a2;
  return result;
}

uint64_t physx::Sc::ShapeCore::ShapeCore(uint64_t a1, uint64_t *a2, _BYTE *a3, const unsigned __int16 *a4, unsigned int a5)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 72) = -1;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 65) = 1;
  v9 = physx::Sc::Physics::mInstance;
  physx::Gu::GeometryUnion::set(a1 + 72, a2);
  *(a1 + 32) = xmmword_1E30474D0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 60) = *v9 * 0.02;
  *(a1 + 64) = *a3;
  physx::Sc::ShapeCore::setMaterialIndices(a1, a4, a5);
  return a1;
}

char *physx::Sc::ShapeCore::setMaterialIndices(char *this, const unsigned __int16 *__src, unsigned int a3)
{
  v5 = *(this + 18);
  *(this + 33) = *__src;
  if (v5 == 6)
  {
    v6 = this + 120;
    v7 = this + 112;
    if (*(this + 60) < a3)
    {
      v9 = this + 65;
      v8 = this[65];
      v10 = *(this + 14);
      goto LABEL_7;
    }
  }

  else
  {
    if (v5 != 5)
    {
      return this;
    }

    v6 = this + 144;
    v7 = this + 136;
    if (*(this + 72) < a3)
    {
      v9 = this + 65;
      v8 = this[65];
      v10 = *(this + 17);
LABEL_7:
      if (v10)
      {
        v11 = v8 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (!v11)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
        *(v7 + 4) = 0;
      }

      *v7 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 2 * a3, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/geomutils/src/GuGeometryUnion.h", 109);
      *(v7 + 4) = a3;
      *v9 = 1;
    }
  }

  this = memcpy(*v7, __src, 2 * a3);
  *v6 = a3;
  return this;
}

void physx::Sc::ShapeCore::~ShapeCore(physx::Sc::ShapeCore *this)
{
  v1 = *(this + 18);
  if (v1 == 6)
  {
    if (!*(this + 65))
    {
      return;
    }

    v2 = 112;
  }

  else
  {
    if (v1 != 5 || !*(this + 65))
    {
      return;
    }

    v2 = 136;
  }

  v3 = this + v2;
  if (*(this + v2))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *(v3 + 4) = 0;
}

_WORD *physx::Sc::ShapeCore::setGeometry(uint64_t a1, uint64_t *a2)
{
  v5 = *(a1 + 72);
  v3 = a1 + 72;
  v4 = v5;
  v6 = *a2;
  if (v5 == 5)
  {
    v7 = 148;
    v8 = 146;
    v9 = 144;
    v10 = 136;
    goto LABEL_5;
  }

  if (v4 == 6)
  {
    v7 = 124;
    v8 = 122;
    v9 = 120;
    v10 = 112;
LABEL_5:
    v11 = *(a1 + v10);
    v12 = *(a1 + v9);
    v13 = *(a1 + v8);
    v14 = *(a1 + v7);
    goto LABEL_7;
  }

  v12 = 0;
  v11 = 0;
  v13 = -12851;
  v14 = -842150451;
LABEL_7:
  result = physx::Gu::GeometryUnion::set(v3, a2);
  if ((v6 - 5) > 1)
  {
    if (v12 && *(a1 + 65) && v11)
    {
      v18 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

      return v18();
    }
  }

  else
  {
    v16 = 112;
    if (v6 == 5)
    {
      v16 = 136;
    }

    v17 = a1 + v16;
    if (v12)
    {
      *v17 = v11;
      *(v17 + 8) = v12;
      *(v17 + 10) = v13;
      *(v17 + 12) = v14;
    }

    else
    {
      result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 2, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/geomutils/src/GuGeometryUnion.h", 109);
      *v17 = result;
      *(v17 + 8) = 1;
      *result = *(a1 + 66);
      *(a1 + 65) = 1;
    }
  }

  return result;
}

uint64_t physx::Sc::ShapeCore::exportExtraData(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 72);
  if (v4 == 5)
  {
    v5 = 144;
    v6 = 136;
  }

  else
  {
    if (v4 != 6)
    {
      return result;
    }

    v5 = 120;
    v6 = 112;
  }

  (*(*a2 + 24))(a2, 16);
  v7 = *(v3 + v6);
  v8 = 2 * *(v3 + v5);
  v9 = *(*a2 + 16);

  return v9(a2, v7, v8);
}

physx::Sc::ShapeInteraction *physx::Sc::ShapeInteraction::ShapeInteraction(physx::Sc::ShapeInteraction *this, uint64_t a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5)
{
  v6 = 0;
  v7 = *(a2 + 8);
  v8 = *(a3 + 8);
  *(this + 1) = v7;
  v9 = (this + 8);
  *(this + 2) = v8;
  *(this + 3) = -1;
  *(this + 8) = -1;
  *(this + 18) = 1280;
  *(this + 38) = 0;
  *(this + 5) = a2;
  *(this + 6) = a3;
  *this = &unk_1F5D20B68;
  *(this + 7) = -1;
  *(this + 9) = 0;
  *(this + 20) = -1;
  *(this + 11) = 0;
  *(this + 24) = -1;
  *(this + 50) = 0;
  v10 = *a4;
  v11 = v10 & 0x7FFF;
  v12 = *(v7 + 72);
  if (*(*(*(a2 + 8) + 80) + 13) - 1 >= 2)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(a2 + 8);
  }

  v14 = *(a3 + 8);
  if (*(*(v14 + 80) + 13) - 1 >= 2)
  {
    v14 = 0;
  }

  if (*(*(v13 + 80) + 44))
  {
    if (!v14)
    {
LABEL_11:
      v11 |= 0x40000u;
      goto LABEL_12;
    }

    v6 = *(*(v14 + 80) + 44) & 1;
  }

  if ((v10 & 1) == 0 || v6)
  {
    goto LABEL_11;
  }

LABEL_12:
  if ((v10 & 0x2020202) == 0 && (v15 = v12[230], v15[454] == 0.0) && v15[455] == 0.0 && v15[456] == 0.0 && v15[457] == 0.0)
  {
    v16 = v11 & 0xFFFDFFFF;
  }

  else
  {
    v16 = v11 | 0x20000;
  }

  *(this + 16) = v16;
  if (a5)
  {
    physx::Sc::ShapeInteraction::onActivate_(this, a5);
  }

  else
  {
    v17 = *(v13 + 176);
    ++*(*(v13 + 136) + 148);
    if (v14)
    {
      v18 = *(v14 + 176);
      ++*(*(v14 + 136) + 148);
    }

    else
    {
      v18 = -128;
    }

    *(this + 24) = physx::IG::SimpleIslandManager::addContactManager(v12[235], 0, v17, v18, v9);
    v20 = physx::Sc::activateInteraction(v9, 0, v19);
    physx::Sc::ActorSim::registerInteractionInActor(*(this + 1), v9);
    physx::Sc::ActorSim::registerInteractionInActor(*(this + 2), v9);
    v21 = *(this + 5);
    v22 = *(this + 6);
    if (v21 <= v22)
    {
      v23 = *(this + 5);
    }

    else
    {
      v23 = *(this + 6);
    }

    if (v21 <= v22)
    {
      v24 = *(this + 6);
    }

    else
    {
      v24 = *(this + 5);
    }

    physx::shdfnd::internal::HashMapBase<physx::Sc::ElementSimKey,physx::Sc::ElementSimInteraction *,physx::shdfnd::Hash<physx::Sc::ElementSimKey>,physx::shdfnd::NonTrackingAllocator>::insert((v12[499] + 3704), v23, v24, this);
    physx::Sc::Scene::registerInteraction(v12, v9, v20);
  }

  return this;
}

uint64_t physx::Sc::ShapeInteraction::onActivate_(physx::Sc::ShapeInteraction *this, uint64_t a2)
{
  if ((*(this + 16) & 0x1DC) != 0 && (*(this + 16) & 0x400000) != 0)
  {
    physx::Sc::NPhaseCore::addToPersistentContactEventPairs(*(*(*(this + 1) + 72) + 3992), this);
    *(this + 16) &= ~0x400000u;
  }

  if (*(*(*(*(this + 5) + 8) + 80) + 13) - 1 >= 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(*(this + 5) + 8);
  }

  v6 = *(*(this + 6) + 8);
  if (*(*(v6 + 80) + 13) - 1 >= 2)
  {
    v6 = 0;
  }

  v7 = *(*(*(*(this + 1) + 72) + 1880) + 888);
  if ((*(v7 + ((*(v5 + 176) >> 2) & 0x3FFFFFE0) + 4) & 2) == 0 && (!v6 || (*(v7 + ((*(v6 + 176) >> 2) & 0x3FFFFFE0) + 4) & 2) == 0))
  {
    return 0;
  }

  if (!*(this + 11))
  {
    physx::Sc::ShapeInteraction::createManager(this, a2);
    if (!*(this + 11))
    {
      return 0;
    }
  }

  *(this + 37) |= 0x20u;
  return 1;
}

void physx::Sc::ShapeInteraction::~ShapeInteraction(physx::Sc::ShapeInteraction *this)
{
  *this = &unk_1F5D20B68;
  if (*(*(*(*(this + 5) + 8) + 80) + 13) - 1 >= 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(*(this + 5) + 8);
  }

  v3 = *(*(this + 6) + 8);
  v4 = *(*(v3 + 80) + 13) - 3;
  --*(*(v2 + 136) + 148);
  if (v3)
  {
    v5 = v4 >= 0xFFFFFFFE;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    --*(*(v3 + 136) + 148);
  }

  if (*(this + 11))
  {
    v6 = *(*(this + 1) + 72);
    (*(**(*(v6 + 1840) + 1776) + 72))(*(*(v6 + 1840) + 1776));
    physx::PxsContext::destroyContactManager(*(v6 + 1840), *(this + 11));
    *(this + 11) = 0;
  }

  v7 = *(this + 24);
  if (v7 != -1)
  {
    v8 = *(*(this + 1) + 72);
    physx::IG::SimpleIslandManager::removeConnection(*(v8 + 1880), v7);
    *(this + 24) = -1;
    physx::Sc::Scene::unregisterInteraction(v8, (this + 8));
    physx::Sc::NPhaseCore::unregisterInteraction(*(v8 + 3992), this);
  }

  physx::Sc::ActorSim::unregisterInteractionFromActor(*(this + 1), this + 1);
  physx::Sc::ActorSim::unregisterInteractionFromActor(*(this + 2), this + 1);
  v9 = *(this + 20);
  if (v9 != -1)
  {
    v10 = *(this + 16);
    v11 = *(*(*(this + 1) + 72) + 3992);
    if ((v10 & 0x800000) != 0)
    {
      *(this + 16) = v10 & 0xFF7FFFFF;
      *(this + 20) = -1;
      v12 = *(v11 + 48);
      v13 = *(v11 + 56) - 1;
      *(v11 + 56) = v13;
      *(v12 + 8 * v9) = *(v12 + 8 * v13);
      if (v9 < v13)
      {
        *(*(*(v11 + 48) + 8 * v9) + 80) = v9;
      }
    }

    else
    {
      physx::Sc::NPhaseCore::removeFromPersistentContactEventPairs(v11, this);
    }
  }
}

{
  physx::Sc::ShapeInteraction::~ShapeInteraction(this);
  if (v1)
  {
    v2 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

    v2();
  }
}

uint64_t physx::Sc::ShapeInteraction::visualize(uint64_t result, _DWORD *a2, uint64_t a3)
{
  if (*(result + 88))
  {
    v5 = a3;
    v7 = result;
    v8 = 0;
    v46 = *(*(result + 8) + 72);
    v9 = -1.0;
    if (*(*(result + 40) + 8) < *(*(result + 48) + 8))
    {
      v9 = 1.0;
    }

    v55 = v9;
    v45 = *(v46 + 4656);
    v10 = v45 * 0.1;
    v47 = result;
    while (1)
    {
      v11 = *(v7 + 88);
      if (!v11)
      {
        return result;
      }

      v12 = *(v11 + 108);
      if ((v12 & 0x80000000) != 0)
      {
        v13 = *(*(*(*(v7 + 8) + 72) + 1840) + 1776);
        result = (*(*v13 + 160))(v13);
      }

      else
      {
        result = *(v5 + 32) + 32 * (*(v5 + 4 * (v12 & 7)) + (v12 >> 3));
      }

      v14 = *(v11 + 64);
      v15 = *(result + 24);
      if (!*(result + 24))
      {
        goto LABEL_12;
      }

      if (v8)
      {
        break;
      }

      v22 = *(result + 25);
      v17 = *(result + 16);
      v49 = v14 != 0;
      v23 = *(v46 + 1840);
      v20 = v23[457];
      v54 = v23[455];
      v52 = v23[456];
      v21 = v23[454];
      if (!*result)
      {
        v51 = 0;
        goto LABEL_29;
      }

      v4 = *(result + 8);
      v3 = *result;
LABEL_23:
      if ((v3[5].i8[3] & 2) != 0)
      {
        v24 = 64;
      }

      else
      {
        v24 = 16;
      }

      if (v3[5].i8[3] < 0)
      {
        v24 = 32;
      }

      v51 = v24;
LABEL_29:
      v50 = v8;
      if (v22)
      {
        v25 = 0;
        v26 = 0;
        v27 = 0;
        if (v17)
        {
          v28 = v20 == 0.0;
        }

        else
        {
          v28 = 1;
        }

        v29 = !v28;
        v53 = v45 * v20;
        while (1)
        {
          if (v26)
          {
            v30 = v3[5].u8[1];
            v31 = v30 > v27;
            LODWORD(v32) = (v30 - v27) * v51;
            if (v31)
            {
              v32 = v32;
            }

            else
            {
              v32 = 0;
            }

            v4 = (v4 + v32);
            v3 += 6;
          }

          if (v3[5].i8[1])
          {
            break;
          }

          v27 = 0;
LABEL_59:
          if (++v26 == v22)
          {
            goto LABEL_60;
          }
        }

        v27 = 0;
        if (v25)
        {
          v33 = v51;
        }

        else
        {
          v33 = 0;
        }

        while (2)
        {
          v4 = (v4 + v33);
          if (v29)
          {
            v34 = v53 * *v17;
            v35 = 16711680;
LABEL_52:
            if (v34 != 0.0)
            {
              a2[8] = 0;
              *a2 = 1;
              a2[1] = v35;
              v56 = v34;
              v57 = *v4;
              v58 = v4[1].f32[0];
              v36 = physx::Cm::RenderOutput::operator<<(a2, &v57);
              v37 = (v55 * (v56 * v3[3].f32[0])) + v4[1].f32[0];
              v57 = vadd_f32(vmul_n_f32(vmul_n_f32(v3[2], v56), v55), *v4);
              v58 = v37;
              result = physx::Cm::RenderOutput::operator<<(v36, &v57);
            }
          }

          else
          {
            if (v54 != 0.0)
            {
              v35 = 255;
              v34 = v45 * v54;
              goto LABEL_52;
            }

            if (v52 != 0.0)
            {
              v34 = fabsf((v45 * v52) * v4[1].f32[1]);
              v35 = 16776960;
              goto LABEL_52;
            }
          }

          if (v21 != 0.0)
          {
            v39 = v4->f32[0];
            v38 = v4->f32[1];
            v40 = v4[1].f32[0];
            a2[8] = 0;
            *a2 = 0xFFFF000000000001;
            v57.f32[0] = v39 - v10;
            v57.f32[1] = v38 + 0.0;
            v58 = v40 + 0.0;
            v41 = physx::Cm::RenderOutput::operator<<(a2, &v57);
            v57.f32[0] = v10 + v39;
            v57.f32[1] = v38 + 0.0;
            v58 = v40 + 0.0;
            physx::Cm::RenderOutput::operator<<(v41, &v57);
            v42 = v39 + 0.0;
            v57.f32[0] = v42;
            v57.f32[1] = v38 - v10;
            v58 = v40 + 0.0;
            v43 = physx::Cm::RenderOutput::operator<<(a2, &v57);
            v57.f32[0] = v42;
            v57.f32[1] = v10 + v38;
            v58 = v40 + 0.0;
            physx::Cm::RenderOutput::operator<<(v43, &v57);
            v57.f32[0] = v42;
            v57.f32[1] = v38 + 0.0;
            v58 = v40 - v10;
            v44 = physx::Cm::RenderOutput::operator<<(a2, &v57);
            v57.f32[0] = v42;
            v57.f32[1] = v38 + 0.0;
            v58 = v10 + v40;
            result = physx::Cm::RenderOutput::operator<<(v44, &v57);
          }

          ++v27;
          v33 = v51;
          if (v27 >= v3[5].u8[1])
          {
            v25 = 1;
            goto LABEL_59;
          }

          continue;
        }
      }

LABEL_60:
      v8 = v49;
      v7 = v47;
      v5 = a3;
      if (v49 == v50)
      {
        return result;
      }
    }

    v15 = 1;
LABEL_12:
    if (!v14)
    {
      return result;
    }

    v16 = v8 - v15 + 1;
    while (--v16)
    {
      v14 = *v14;
      if (!v14)
      {
        return result;
      }
    }

    v3 = v14 + 2;
    v4 = v14 + 8;
    v17 = (v14 + ((v14[1].u16[0] + 15) & 0x1FFF0));
    if (*v14)
    {
      v18 = v8 + 1;
    }

    else
    {
      v18 = v8;
    }

    v49 = v18;
    v19 = *(v46 + 1840);
    v20 = v19[457];
    v54 = v19[455];
    v52 = v19[456];
    v21 = v19[454];
    v22 = 1;
    goto LABEL_23;
  }

  return result;
}

uint64_t physx::Sc::ShapeInteraction::setContactReportPostSolverVelocity(uint64_t result, unsigned int *a2)
{
  v2 = *(*(*(*(result + 8) + 72) + 3992) + 64) + *a2;
  v3 = *(result + 72);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  v6 = *(v5 + 80);
  if (*(v6 + 13))
  {
    *(v2 + 12) = *(v6 + 80);
    *(v2 + 20) = *(v6 + 88);
    v7 = *(v6 + 96);
    v8 = *(v6 + 104);
  }

  else
  {
    v7 = 0;
    *(v2 + 12) = 0;
    *(v2 + 20) = 0;
    v8 = 0;
  }

  *(v2 + 36) = v7;
  *(v2 + 44) = v8;
  v9 = *(v4 + 80);
  if (*(v9 + 13))
  {
    *(v2 + 24) = *(v9 + 80);
    *(v2 + 32) = *(v9 + 88);
    v10 = *(v9 + 96);
    v11 = *(v9 + 104);
  }

  else
  {
    v10 = 0;
    *(v2 + 24) = 0;
    *(v2 + 32) = 0;
    v11 = 0;
  }

  *(v2 + 48) = v10;
  *(v2 + 56) = v11;
  *(a2 + 5) &= ~8u;
  return result;
}

uint64_t physx::Sc::ShapeInteraction::resetManagerCachedState(uint64_t this)
{
  v1 = *(this + 88);
  if (v1)
  {
    v2 = *(*(*(*(this + 8) + 72) + 1840) + 1776);
    *(v1 + 82) = 0;
    *(v1 + 64) = 0;
    *(v1 + 72) = 0;
    return (*(*v2 + 80))(v2, *(this + 88));
  }

  return this;
}

uint64_t physx::Sc::ShapeInteraction::processUserNotificationSync(uint64_t this)
{
  if (*(this + 88))
  {
    __asm { PRFM            #0, [X8] }
  }

  v7 = *(this + 72);
  if (v7)
  {
    v8 = *(*(*(this + 8) + 72) + 3992);
    if ((*v7 & 2) == 0)
    {
      *v7 |= 2u;
      v14 = v7;
      v9 = *(v8 + 16);
      if ((*(v8 + 20) & 0x7FFFFFFFu) <= v9)
      {
        this = physx::shdfnd::Array<physx::Sc::ActorPairReport *,physx::shdfnd::ReflectionAllocator<physx::Sc::ActorPairReport *>>::growAndPushBack(v8 + 8, &v14);
      }

      else
      {
        *(*(v8 + 8) + 8 * v9) = v7;
        *(v8 + 16) = v9 + 1;
      }

      ++*(v7 + 4);
    }

    if (!*(v7 + 24))
    {
      this = physx::Sc::NPhaseCore::createActorPairContactReportData(v8);
      *(v7 + 24) = this;
      v10 = *(v7 + 8);
      v11 = *(v7 + 16);
      v12 = *(v11 + 88);
      *(this + 16) = *(v10 + 88);
      *(this + 20) = v12;
      v13 = *(v11 + 80) + qword_1EE1C7E30[*(*(v11 + 80) + 13)];
      *(this + 24) = *(v10 + 80) + qword_1EE1C7E30[*(*(v10 + 80) + 13)];
      *(this + 32) = v13;
    }
  }

  return this;
}

char *physx::Sc::ShapeInteraction::processUserNotificationAsync(char *result, __int16 a2, __int16 a3, int a4, int a5, int a6, uint64_t a7, physx::Sc::ContactReportAllocationManager *a8, int8x16_t a9, double a10, int8x16_t a11)
{
  if (a5)
  {
    v11 = a2 | 0x20;
  }

  else
  {
    v11 = a2;
  }

  v12 = *(result + 9);
  if (!v12)
  {
    return result;
  }

  v15 = a5;
  v17 = result;
  v18 = *(*(result + 1) + 72);
  result = *(v18 + 3992);
  ActorPairContactReportData = v12[3];
  v239 = v11;
  if (ActorPairContactReportData)
  {
    v20 = v12[1];
  }

  else
  {
    v22 = *(v18 + 3992);
    ActorPairContactReportData = physx::Sc::NPhaseCore::createActorPairContactReportData(result);
    result = v22;
    v15 = a5;
    v12[3] = ActorPairContactReportData;
    v20 = v12[1];
    *&ActorPairContactReportData->__opaque[8] = *(v20 + 88);
    v23 = v12[2];
    *&ActorPairContactReportData->__opaque[12] = *(v23 + 88);
    *&ActorPairContactReportData->__opaque[16] = *(v20 + 80) + qword_1EE1C7E30[*(*(v20 + 80) + 13)];
    *&ActorPairContactReportData->__opaque[24] = *(v23 + 80) + qword_1EE1C7E30[*(*(v23 + 80) + 13)];
  }

  v24 = *(v18 + 1992);
  v25 = *(v18 + 1996);
  v26 = *(v17 + 16);
  v234 = *(*(v17 + 5) + 8);
  if (v20 == v234)
  {
    v27 = *(v17 + 5);
  }

  else
  {
    v27 = *(v17 + 6);
  }

  v235 = v27;
  if (v20 == v234)
  {
    v28 = *(v17 + 6);
  }

  else
  {
    v28 = *(v17 + 5);
  }

  v29 = *&ActorPairContactReportData->__opaque[4];
  *&ActorPairContactReportData->__opaque[4] = v24;
  v238 = a4;
  if (v29 == v24)
  {
    sig_high = HIWORD(ActorPairContactReportData->__sig);
    if (!HIWORD(ActorPairContactReportData->__sig))
    {
      goto LABEL_68;
    }

    v232 = a6;
    v31 = (*(result + 8) + LODWORD(ActorPairContactReportData->__sig));
    if ((v26 & 0x7000) != 0 && (v238 & 1) == 0)
    {
      v229 = v20;
      v32 = *ActorPairContactReportData->__opaque;
      if (*ActorPairContactReportData->__opaque)
      {
        v33 = *v31;
      }

      else
      {
        v33 = -1;
      }

      if (v33 < v15)
      {
        if ((v26 & 0x1000) != 0)
        {
          v57 = 56;
        }

        else
        {
          v57 = 4;
        }

        if ((v26 & 0x2000) != 0)
        {
          v57 += 52;
        }

        if ((v26 & 0x4000) != 0)
        {
          v57 += 60;
        }

        if (!*ActorPairContactReportData->__opaque)
        {
          v57 += 4;
        }

        v58 = v57 + v32;
        v46 = *(result + 8) + LODWORD(ActorPairContactReportData->__sig);
        if (((*&ActorPairContactReportData->__opaque[2] >> 1) & 0x7FF0u) < v58)
        {
          v59 = WORD2(ActorPairContactReportData->__sig);
          if (sig_high < v59)
          {
            v60 = WORD2(ActorPairContactReportData->__sig);
          }

          else
          {
            v60 = v59 + 1;
          }

          v227 = v15;
          v61 = result;
          v62 = v25;
          v225 = v28;
          v63 = v26;
          v64 = physx::Sc::NPhaseCore::resizeContactReportPairData(result, v60, v58, ActorPairContactReportData);
          v26 = v63;
          v28 = v225;
          v25 = v62;
          v46 = v64;
          result = v61;
          v15 = v227;
        }

        if (v46)
        {
          if (v32)
          {
            v65 = v32;
          }

          else
          {
            v65 = 4;
          }

          v66 = v12[1];
          v67 = v12[2];
          *v46 = v15;
          v68 = v46 + v65;
          *v68 = 3;
          *(v68 + 2) = sig_high;
          if ((v26 & 0x2000) != 0)
          {
            *(v68 + 4) = 1;
            v69 = v68 + 56;
            if (v15)
            {
              v71 = *(v66 + 80);
              v20 = v229;
              if (*(v71 + 13))
              {
                *(v68 + 8) = *(v71 + 80);
                *(v68 + 16) = *(v71 + 88);
                v72 = *(v71 + 96);
                v73 = *(v71 + 104);
              }

              else
              {
                v72 = 0;
                *(v68 + 8) = 0;
                *(v68 + 16) = 0;
                v73 = 0;
              }

              *(v68 + 32) = v72;
              *(v68 + 40) = v73;
              v174 = *(v67 + 80);
              if (*(v174 + 13))
              {
                *(v68 + 20) = *(v174 + 80);
                *(v68 + 28) = *(v174 + 88);
                a9.i64[0] = *(v174 + 96);
                *(v68 + 44) = a9.i64[0];
                *(v68 + 52) = *(v174 + 104);
              }

              else
              {
                a9.i32[1] = 0;
                *(v68 + 20) = 0;
                *(v68 + 28) = 0;
                *(v68 + 44) = 0;
                *(v68 + 52) = 0;
              }

LABEL_149:
              if ((v26 & 0x1000) == 0)
              {
                goto LABEL_167;
              }

              *v69 = 0;
              v175 = *(v66 + 80);
              if (*(v175 + 13))
              {
                if (v15)
                {
                  v176 = *(v66 + 128);
                  if (v176)
                  {
                    a9.i64[0] = *v176;
                    v177 = *(v176 + 8);
                    v178 = *(v176 + 16);
                    a11.i32[0] = *(v176 + 24);
                  }

                  else
                  {
                    a9.i64[0] = 0;
                    v177 = 0;
                    a11.i64[0] = 0;
                    v178 = 0;
                  }

                  *(v69 + 4) = a9.i64[0];
                  *(v69 + 12) = v177;
                  *(v69 + 28) = v178;
                  *(v69 + 36) = a11.i32[0];
                  if (*(*(v67 + 80) + 13))
                  {
                    goto LABEL_161;
                  }

                  goto LABEL_163;
                }

                *(v69 + 4) = *(v175 + 80);
                *(v69 + 12) = *(v175 + 88);
                *(v69 + 28) = *(v175 + 96);
                *(v69 + 36) = *(v175 + 104);
                v179 = *(v67 + 80);
                if (*(v179 + 13))
                {
LABEL_158:
                  *(v69 + 16) = *(v179 + 80);
                  *(v69 + 24) = *(v179 + 88);
                  a9.i64[0] = *(v179 + 96);
                  *(v69 + 40) = a9.i64[0];
                  a9.i32[0] = *(v179 + 104);
LABEL_166:
                  *(v69 + 48) = a9.i32[0];
                  v69 += 52;
LABEL_167:
                  if ((v26 & 0x4000) != 0)
                  {
                    v226 = v46 + v65;
                    v228 = v65;
                    v231 = v26;
                    v183 = v15;
                    v224 = result;
                    v184 = v25;
                    *v69 = 2;
                    v185 = *(v66 + 80);
                    if (*(v185 + 13))
                    {
                      v186 = v232 ^ 1;
                      if (v15)
                      {
                        v186 = 1;
                      }

                      v187 = v66 + 96;
                      if (v186)
                      {
                        v188 = v187;
                      }

                      else
                      {
                        v188 = v185 + 16;
                      }

                      *a9.i32 = *(v185 + 64) * -2.0;
                      v189 = *(v185 + 68) * -2.0;
                      *a11.i32 = *(v185 + 72) * -2.0;
                      v191 = *(v185 + 56);
                      v190 = *(v185 + 60);
                      v192 = (v190 * v190) + -0.5;
                      v193 = *(v185 + 48);
                      v194 = *(v185 + 52);
                      v195 = ((v189 * v194) + (v193 * *a9.i32)) + (v191 * *a11.i32);
                      *v240.i32 = -v193;
                      *&v240.i32[1] = -v194;
                      *&v240.i32[2] = -v191;
                      *&v240.i32[3] = v190;
                      v241 = ((*a9.i32 * v192) - (((v194 * *a11.i32) - (v191 * v189)) * v190)) + (v193 * v195);
                      v242 = ((v189 * v192) - (((v191 * *a9.i32) - (v193 * *a11.i32)) * v190)) + (v194 * v195);
                      v243 = ((*a11.i32 * v192) - (((v193 * v189) - (v194 * *a9.i32)) * v190)) + (v191 * v195);
                      v197 = *(v188 + 8);
                      v196 = *(v188 + 12);
                      v198 = (v196 * v196) + -0.5;
                      v199 = *(v188 + 4);
                      v200 = (((v242 + v242) * v199) + (*v188 * (v241 + v241))) + (v197 * (v243 + v243));
                      *a9.i32 = ((v196 * ((*v188 * (v242 + v242)) - (v199 * (v241 + v241)))) + ((v243 + v243) * v198)) + (v197 * v200);
                      a11.i32[0] = *(v188 + 20);
                      v201 = *(v188 + 16) + (((v196 * ((v199 * (v243 + v243)) - (v197 * (v242 + v242)))) + ((v241 + v241) * v198)) + (*v188 * v200));
                      v202 = *a11.i32 + (((v196 * ((v197 * (v241 + v241)) - (*v188 * (v243 + v243)))) + ((v242 + v242) * v198)) + (v199 * v200));
                      v203 = *(v188 + 24) + *a9.i32;
                      v204 = v67;
                      physx::PxQuat::operator*(v188, &v240, v244, a9, a11);
                      v67 = v204;
                      v205 = v244[0];
                      *(v69 + 4) = v244[0];
                      *(v69 + 20) = v201;
                      *(v69 + 24) = v202;
                    }

                    else
                    {
                      v205 = *(v185 + 16);
                      *(v69 + 4) = v205;
                      v205.i64[0] = *(v185 + 32);
                      *(v69 + 20) = v205.i64[0];
                      v203 = *(v185 + 40);
                    }

                    *(v69 + 28) = v203;
                    v206 = *(v67 + 80);
                    if (*(v206 + 13))
                    {
                      v207 = v232 ^ 1;
                      if (v183)
                      {
                        v207 = 1;
                      }

                      if (v207)
                      {
                        v208 = v67 + 96;
                      }

                      else
                      {
                        v208 = v206 + 16;
                      }

                      *v205.i32 = *(v206 + 64) * -2.0;
                      v209 = *(v206 + 68) * -2.0;
                      *a11.i32 = *(v206 + 72) * -2.0;
                      v211 = *(v206 + 56);
                      v210 = *(v206 + 60);
                      v212 = (v210 * v210) + -0.5;
                      v213 = *(v206 + 48);
                      v214 = *(v206 + 52);
                      v215 = ((v209 * v214) + (v213 * *v205.i32)) + (v211 * *a11.i32);
                      *v240.i32 = -v213;
                      *&v240.i32[1] = -v214;
                      *&v240.i32[2] = -v211;
                      *&v240.i32[3] = v210;
                      v241 = ((*v205.i32 * v212) - (((v214 * *a11.i32) - (v211 * v209)) * v210)) + (v213 * v215);
                      v242 = ((v209 * v212) - (((v211 * *v205.i32) - (v213 * *a11.i32)) * v210)) + (v214 * v215);
                      v243 = ((*a11.i32 * v212) - (((v213 * v209) - (v214 * *v205.i32)) * v210)) + (v211 * v215);
                      v217 = *(v208 + 8);
                      v216 = *(v208 + 12);
                      v218 = (v216 * v216) + -0.5;
                      v219 = *(v208 + 4);
                      v220 = (((v242 + v242) * v219) + (*v208 * (v241 + v241))) + (v217 * (v243 + v243));
                      *v205.i32 = ((v216 * ((*v208 * (v242 + v242)) - (v219 * (v241 + v241)))) + ((v243 + v243) * v218)) + (v217 * v220);
                      a11.i32[0] = *(v208 + 20);
                      v221 = *(v208 + 16) + (((v216 * ((v219 * (v243 + v243)) - (v217 * (v242 + v242)))) + ((v241 + v241) * v218)) + (*v208 * v220));
                      v222 = *a11.i32 + (((v216 * ((v217 * (v241 + v241)) - (*v208 * (v243 + v243)))) + ((v242 + v242) * v218)) + (v219 * v220));
                      v223 = *(v208 + 24) + *v205.i32;
                      physx::PxQuat::operator*(v208, &v240, v244, v205, a11);
                      *(v69 + 32) = v244[0];
                      *(v69 + 48) = v221;
                    }

                    else
                    {
                      *(v69 + 32) = *(v206 + 16);
                      *(v69 + 48) = *(v206 + 32);
                      v222 = *(v206 + 36);
                      v223 = *(v206 + 40);
                    }

                    v25 = v184;
                    result = v224;
                    LOWORD(v68) = v226;
                    v26 = v231;
                    LOWORD(v65) = v228;
                    *(v69 + 52) = v222;
                    *(v69 + 56) = v223;
                    LOWORD(v69) = v69 + 60;
                    v15 = v183;
                  }

                  *ActorPairContactReportData->__opaque = v65 + v69 - v68;
                  if ((~v26 & 0x2800) != 0)
                  {
                    goto LABEL_113;
                  }

LABEL_112:
                  *(v18 + 7472) = 1;
                  goto LABEL_113;
                }
              }

              else
              {
                a9.i32[1] = 0;
                *(v69 + 4) = 0;
                *(v69 + 12) = 0;
                *(v69 + 28) = 0;
                *(v69 + 36) = 0;
                v179 = *(v67 + 80);
                if (*(v179 + 13))
                {
                  if (v15)
                  {
LABEL_161:
                    v180 = *(v67 + 128);
                    if (v180)
                    {
                      v181 = *v180;
                      a11.i32[0] = *(v180 + 2);
                      v182 = v180[2];
                      a9.i32[0] = *(v180 + 6);
                    }

                    else
                    {
                      v181 = 0;
                      a11.i64[0] = 0;
                      a9.i64[0] = 0;
                      v182 = 0;
                    }

                    *(v69 + 16) = v181;
                    *(v69 + 24) = a11.i32[0];
                    *(v69 + 40) = v182;
                    goto LABEL_166;
                  }

                  goto LABEL_158;
                }
              }

LABEL_163:
              *(v69 + 16) = 0;
              *(v69 + 24) = 0;
              *(v69 + 40) = 0;
              a9.i64[0] = 0;
              goto LABEL_166;
            }

            *&ActorPairContactReportData->__opaque[2] |= 8u;
          }

          else
          {
            v69 = v68 + 4;
          }

          v20 = v229;
          goto LABEL_149;
        }

        *&ActorPairContactReportData->__opaque[2] |= 4u;
      }

      v20 = v229;
    }

LABEL_67:
    v46 = v31;
    if (v31)
    {
      goto LABEL_113;
    }

LABEL_68:
    v70 = *&ActorPairContactReportData->__opaque[2] | 2;
    goto LABEL_69;
  }

  v34 = WORD2(ActorPairContactReportData->__sig);
  if (!WORD2(ActorPairContactReportData->__sig))
  {
    v34 = 2;
    WORD2(ActorPairContactReportData->__sig) = 2;
  }

  if (v26 & 0x7000) == 0 || (a4)
  {
    *&ActorPairContactReportData->__opaque[2] &= 0x1Fu;
    v51 = result;
    v52 = v25;
    v53 = physx::Sc::NPhaseCore::reserveContactReportPairData(result, v34, 0, ActorPairContactReportData, a8);
    v25 = v52;
    v31 = v53;
    result = v51;
    *(&ActorPairContactReportData->__sig + 6) = 0;
    *&ActorPairContactReportData->__opaque[2] &= 0xFFE0u;
    goto LABEL_67;
  }

  v233 = a6;
  v230 = v17;
  v35 = v18;
  v36 = v28;
  v37 = v20;
  v38 = v15;
  v39 = v25;
  v40 = (*&ActorPairContactReportData->__opaque[2] >> 1) & 0x7FF0;
  if ((v26 & 0x1000) != 0)
  {
    v41 = 56;
  }

  else
  {
    v41 = 4;
  }

  if ((v26 & 0x2000) != 0)
  {
    v41 += 52;
  }

  v42 = v26;
  if ((v26 & 0x4000) != 0)
  {
    v41 += 60;
  }

  v43 = v41 + 4;
  if (v40 < v43)
  {
    v44 = v43 >> 4;
    if ((v43 & 0xF) != 0)
    {
      LOWORD(v44) = v44 + 1;
    }

    *&ActorPairContactReportData->__opaque[2] = *&ActorPairContactReportData->__opaque[2] & 0x1F | (32 * v44);
    v40 = v43;
  }

  v45 = result;
  v46 = physx::Sc::NPhaseCore::reserveContactReportPairData(result, v34, v40, ActorPairContactReportData, a8);
  result = v45;
  v15 = v38;
  v20 = v37;
  v28 = v36;
  v18 = v35;
  v17 = v230;
  if (!v46)
  {
    goto LABEL_68;
  }

  v25 = v39;
  *(&ActorPairContactReportData->__sig + 6) = 0;
  v47 = *&ActorPairContactReportData->__opaque[2] & 0xFFE0;
  *&ActorPairContactReportData->__opaque[2] = v47;
  v49 = v12[1];
  v48 = v12[2];
  *v46 = v15;
  *(v46 + 4) = 3;
  *(v46 + 6) = 0;
  if ((v42 & 0x2000) != 0)
  {
    *(v46 + 8) = 1;
    v50 = v46 + 60;
    if (v15)
    {
      v54 = *(v49 + 80);
      if (*(v54 + 13))
      {
        *(v46 + 12) = *(v54 + 80);
        *(v46 + 20) = *(v54 + 88);
        v55 = *(v54 + 96);
        v56 = *(v54 + 104);
      }

      else
      {
        v55 = 0;
        *(v46 + 12) = 0;
        *(v46 + 20) = 0;
        v56 = 0;
      }

      *(v46 + 36) = v55;
      *(v46 + 44) = v56;
      v74 = *(v48 + 80);
      if (*(v74 + 13))
      {
        *(v46 + 24) = *(v74 + 80);
        *(v46 + 32) = *(v74 + 88);
        *(v46 + 48) = *(v74 + 96);
        *(v46 + 56) = *(v74 + 104);
      }

      else
      {
        *(v46 + 24) = 0;
        *(v46 + 32) = 0;
        *(v46 + 48) = 0;
        *(v46 + 56) = 0;
      }
    }

    else
    {
      *&ActorPairContactReportData->__opaque[2] = v47 | 8;
    }
  }

  else
  {
    v50 = v46 + 8;
  }

  if ((v42 & 0x1000) != 0)
  {
    *v50 = 0;
    v75 = *(v49 + 80);
    if (*(v75 + 13))
    {
      if (v15)
      {
        v76 = *(v49 + 128);
        if (v76)
        {
          v77 = *v76;
          v78 = *(v76 + 2);
          v79 = v76[2];
          v80 = *(v76 + 6);
        }

        else
        {
          v77 = 0;
          v78 = 0;
          v80 = 0;
          v79 = 0;
        }

        *(v50 + 4) = v77;
        *(v50 + 12) = v78;
        *(v50 + 28) = v79;
        *(v50 + 36) = v80;
        if (*(*(v48 + 80) + 13))
        {
          goto LABEL_89;
        }

        goto LABEL_91;
      }

      *(v50 + 4) = *(v75 + 80);
      *(v50 + 12) = *(v75 + 88);
      *(v50 + 28) = *(v75 + 96);
      *(v50 + 36) = *(v75 + 104);
      v81 = *(v48 + 80);
      if (*(v81 + 13))
      {
LABEL_86:
        *(v50 + 16) = *(v81 + 80);
        *(v50 + 24) = *(v81 + 88);
        *(v50 + 40) = *(v81 + 96);
        v82 = *(v81 + 104);
LABEL_94:
        *(v50 + 48) = v82;
        v50 += 52;
        goto LABEL_95;
      }
    }

    else
    {
      *(v50 + 4) = 0;
      *(v50 + 12) = 0;
      *(v50 + 28) = 0;
      *(v50 + 36) = 0;
      v81 = *(v48 + 80);
      if (*(v81 + 13))
      {
        if (v15)
        {
LABEL_89:
          v83 = *(v48 + 128);
          if (v83)
          {
            v84 = *v83;
            v85 = *(v83 + 2);
            v86 = v83[2];
            v82 = *(v83 + 6);
          }

          else
          {
            v84 = 0;
            v85 = 0;
            v82 = 0;
            v86 = 0;
          }

          *(v50 + 16) = v84;
          *(v50 + 24) = v85;
          *(v50 + 40) = v86;
          goto LABEL_94;
        }

        goto LABEL_86;
      }
    }

LABEL_91:
    *(v50 + 16) = 0;
    *(v50 + 24) = 0;
    *(v50 + 40) = 0;
    v82 = 0;
    goto LABEL_94;
  }

LABEL_95:
  if ((v42 & 0x4000) != 0)
  {
    *v50 = 2;
    v87 = *(v49 + 80);
    if (*(v87 + 13))
    {
      v88 = v233 ^ 1;
      if (v15)
      {
        v88 = 1;
      }

      v89 = (v49 + 96);
      if (!v88)
      {
        v89 = (v87 + 16);
      }

      v90 = *(v87 + 64) * -2.0;
      v91 = *(v87 + 68) * -2.0;
      v92 = *(v87 + 72) * -2.0;
      v94 = *(v87 + 56);
      v93 = *(v87 + 60);
      v95 = (v93 * v93) + -0.5;
      v97 = *(v87 + 48);
      v96 = *(v87 + 52);
      v98 = ((v91 * v96) + (v97 * v90)) + (v94 * v92);
      v99 = ((v90 * v95) - (((v96 * v92) - (v94 * v91)) * v93)) + (v97 * v98);
      v100 = ((v91 * v95) - (((v94 * v90) - (v97 * v92)) * v93)) + (v96 * v98);
      v101 = ((v92 * v95) - (((v97 * v91) - (v96 * v90)) * v93)) + (v94 * v98);
      v102 = v100 + v100;
      v103 = v101 + v101;
      v105 = v89[2];
      v104 = v89[3];
      v106 = (v104 * v104) + -0.5;
      v107 = v89[1];
      v108 = ((v107 * v102) + (*v89 * (v99 + v99))) + (v105 * v103);
      v109 = ((v104 * ((v107 * v103) - (v105 * v102))) + ((v99 + v99) * v106)) + (*v89 * v108);
      v110 = ((v104 * ((v105 * (v99 + v99)) - (*v89 * v103))) + (v102 * v106)) + (v107 * v108);
      v111 = ((v104 * ((*v89 * v102) - (v107 * (v99 + v99)))) + (v103 * v106)) + (v105 * v108);
      v112 = v89[4] + v109;
      v113 = v89[5] + v110;
      v114 = v89[6] + v111;
      v115 = (((v93 * *v89) - (v104 * v97)) - (v107 * v94)) + (v96 * v105);
      v116 = (((v93 * v107) - (v104 * v96)) - (v105 * v97)) + (v94 * *v89);
      v117 = (((v93 * v105) - (v104 * v94)) - (*v89 * v96)) + (v97 * v107);
      v118 = (((v97 * *v89) + (v104 * v93)) + (v107 * v96)) + (v105 * v94);
      *(v50 + 4) = v115;
      *(v50 + 8) = v116;
      *(v50 + 12) = v117;
    }

    else
    {
      *(v50 + 4) = *(v87 + 16);
      *(v50 + 12) = *(v87 + 24);
      v118 = *(v87 + 28);
      v112 = *(v87 + 32);
      v113 = *(v87 + 36);
      v114 = *(v87 + 40);
    }

    *(v50 + 16) = v118;
    *(v50 + 20) = v112;
    *(v50 + 24) = v113;
    *(v50 + 28) = v114;
    v119 = *(v48 + 80);
    if (*(v119 + 13))
    {
      v120 = v233 ^ 1;
      if (v15)
      {
        v120 = 1;
      }

      v121 = (v48 + 96);
      if (!v120)
      {
        v121 = (v119 + 16);
      }

      v122 = *(v119 + 64) * -2.0;
      v123 = *(v119 + 68) * -2.0;
      v124 = *(v119 + 72) * -2.0;
      v126 = *(v119 + 56);
      v125 = *(v119 + 60);
      v127 = (v125 * v125) + -0.5;
      v129 = *(v119 + 48);
      v128 = *(v119 + 52);
      v130 = ((v123 * v128) + (v129 * v122)) + (v126 * v124);
      v131 = ((v122 * v127) - (((v128 * v124) - (v126 * v123)) * v125)) + (v129 * v130);
      v132 = ((v123 * v127) - (((v126 * v122) - (v129 * v124)) * v125)) + (v128 * v130);
      v133 = ((v124 * v127) - (((v129 * v123) - (v128 * v122)) * v125)) + (v126 * v130);
      v134 = v132 + v132;
      v135 = v133 + v133;
      v137 = v121[2];
      v136 = v121[3];
      v138 = (v136 * v136) + -0.5;
      v139 = v121[1];
      v140 = ((v139 * v134) + (*v121 * (v131 + v131))) + (v137 * v135);
      v141 = ((v136 * ((v139 * v135) - (v137 * v134))) + ((v131 + v131) * v138)) + (*v121 * v140);
      v142 = ((v136 * ((v137 * (v131 + v131)) - (*v121 * v135))) + (v134 * v138)) + (v139 * v140);
      v143 = ((v136 * ((*v121 * v134) - (v139 * (v131 + v131)))) + (v135 * v138)) + (v137 * v140);
      v144 = v121[4] + v141;
      v145 = v121[5] + v142;
      v146 = v121[6] + v143;
      v147 = (((v125 * *v121) - (v136 * v129)) - (v139 * v126)) + (v128 * v137);
      v148 = (((v125 * v139) - (v136 * v128)) - (v137 * v129)) + (v126 * *v121);
      v149 = (((v125 * v137) - (v136 * v126)) - (*v121 * v128)) + (v129 * v139);
      v150 = (((v129 * *v121) + (v136 * v125)) + (v139 * v128)) + (v137 * v126);
      *(v50 + 32) = v147;
      *(v50 + 36) = v148;
      *(v50 + 40) = v149;
    }

    else
    {
      *(v50 + 32) = *(v119 + 16);
      *(v50 + 40) = *(v119 + 24);
      v150 = *(v119 + 28);
      v144 = *(v119 + 32);
      v145 = *(v119 + 36);
      v146 = *(v119 + 40);
    }

    *(v50 + 44) = v150;
    *(v50 + 48) = v144;
    *(v50 + 52) = v145;
    *(v50 + 56) = v146;
    LOWORD(v50) = v50 + 60;
  }

  *ActorPairContactReportData->__opaque = v50 - v46;
  if ((~v42 & 0x2800) == 0)
  {
    goto LABEL_112;
  }

LABEL_113:
  v151 = (*&ActorPairContactReportData->__opaque[2] >> 1) & 0x7FF0;
  v152 = (v46 + v151);
  if (*(v17 + 15) != v25)
  {
    v156 = HIWORD(ActorPairContactReportData->__sig);
    v154 = v239;
    if (v156 < WORD2(ActorPairContactReportData->__sig))
    {
LABEL_120:
      v153 = &v152[64 * v156];
      *(v17 + 50) = v156;
      v159 = qword_1EE1C7DF8;
      *v153 = *(v235 + 56) + qword_1EE1C7DF8;
      *(v153 + 1) = *(v28 + 56) + v159;
      *(v153 + 1) = 0u;
      *(v153 + 2) = 0u;
      *(v153 + 24) = a3;
      *(v153 + 25) = v239;
      *(v153 + 13) = *(v235 + 64);
      *(v153 + 14) = *(v28 + 64);
      HIWORD(ActorPairContactReportData->__sig) = v156 + 1;
      *(v17 + 15) = v25;
      goto LABEL_121;
    }

    v157 = v25;
    result = physx::Sc::NPhaseCore::resizeContactReportPairData(result, v156 + (v156 >> 1) + 1, v151, ActorPairContactReportData);
    v158 = *&ActorPairContactReportData->__opaque[2];
    if (result)
    {
      v152 = &result[(v158 >> 1) & 0x7FF0];
      v156 = HIWORD(ActorPairContactReportData->__sig);
      v25 = v157;
      goto LABEL_120;
    }

    v70 = v158 | 4;
LABEL_69:
    *&ActorPairContactReportData->__opaque[2] = v70;
    return result;
  }

  v153 = &v152[64 * *(v17 + 50)];
  v154 = v239;
  v155 = *(v153 + 25) | v239;
  if (v238)
  {
    v155 &= ~8u;
  }

  *(v153 + 25) = v155;
  *(v153 + 24) |= a3;
LABEL_121:
  if ((v17[65] & 2) != 0)
  {
    v160 = *(v17 + 11);
    if (v160)
    {
      if ((v154 & 0x110) == 0 && !*(v153 + 2))
      {
        v161 = *(v160 + 108);
        if ((v161 & 0x80000000) != 0)
        {
          v162 = *(*(*(*(v17 + 1) + 72) + 1840) + 1776);
          result = (*(*v162 + 160))(v162);
        }

        else
        {
          result = (*(a7 + 32) + 32 * (*(a7 + 4 * (v161 & 7)) + (v161 >> 3)));
        }

        v163 = *(v160 + 64);
        if (v15 || (v164 = result[25], !result[25]))
        {
          if (!v163 || !v15 || *(v163 + 10))
          {
            return result;
          }

          v166 = vaddq_s64(vdupq_n_s64(v163), xmmword_1E3115B50);
          v170 = *(v163 + 8);
          v167 = v170 - 16;
          v169 = ((v170 + 15) & 0x1FFF0u) - 16;
          v168 = v163 + v169 + 16;
          v165 = 1;
          LOBYTE(v164) = 1;
        }

        else
        {
          v165 = result[24];
          v166 = *result;
          v167 = 48 * v164 + 16 * v165;
          v168 = *(result + 2);
          LODWORD(v169) = 48 * v164 + 16 * v165;
        }

        v171 = *(v153 + 24) | (32 * (v20 != v234));
        v172 = 4 * v165;
        *(v153 + 1) = v166;
        if (!v168)
        {
          v172 = 0;
        }

        v153[44] = v165;
        v153[45] = v164;
        if (v172)
        {
          v173 = v171 | 0x10;
        }

        else
        {
          v173 = v171;
        }

        *(v153 + 23) = v167;
        *(v153 + 10) = v172 + v169;
        *(v153 + 4) = v168;
        *(v153 + 24) = v173;
      }
    }
  }

  return result;
}

char *physx::Sc::ShapeInteraction::managerNewTouch(char *this, int a2, int a3, uint64_t a4, char a5)
{
  v5 = *(this + 16);
  if ((v5 & 0x8000) == 0)
  {
    v8 = this;
    *(this + 16) = v5 & 0xFFFE7FFF | 0x8000;
    if (a3)
    {
      v9 = *(*(this + 5) + 8);
      v10 = *(*(v9 + 80) + 13);
      v11 = *(*(this + 6) + 8);
      if (*(*(v11 + 80) + 13) - 1 >= 2)
      {
        v11 = 0;
      }

      v12 = *(this + 9);
      v13 = *(v12 + 2);
      *(v12 + 2) = v13 + 1;
      if ((a5 & 1) != 0 || !v13)
      {
        if ((v10 - 1) >= 2)
        {
          v9 = 0;
        }

        ++*(*(v9 + 136) + 152);
        if (v11)
        {
          ++*(*(v11 + 136) + 152);
        }
      }
    }

    if ((v5 & 0x1DC) != 0)
    {
      if ((v5 & 4) != 0)
      {
        v14 = *(*(this + 9) + 2) == 1;
        physx::Sc::ShapeInteraction::processUserNotificationSync(this);
        this = physx::Sc::ShapeInteraction::processUserNotificationAsync(v8, 4, 4 * v14, 0, a2, 1, a4, 0, v15, v16, v17);
      }

      if ((v5 & 8) != 0)
      {
        v19 = *(*(*(v8 + 1) + 72) + 3992);

        return physx::Sc::NPhaseCore::addToPersistentContactEventPairsDelayed(v19, v8);
      }

      else if ((v5 & 0x1C0) != 0)
      {
        v18 = *(*(*(v8 + 1) + 72) + 3992);

        return physx::Sc::NPhaseCore::addToForceThresholdContactEventPairs(v18, v8);
      }
    }
  }

  return this;
}

uint64_t physx::Sc::ShapeInteraction::managerLostTouch(physx::Sc::ShapeInteraction *this, int a2, int a3, uint64_t a4, char a5)
{
  v5 = *(this + 16);
  if ((v5 & 0x8000) == 0)
  {
    return 0;
  }

  if ((v5 & 0x1DC) != 0)
  {
    if ((v5 & 0x80000) != 0)
    {
      v10 = 272;
    }

    else
    {
      v10 = 16;
    }

    v11 = v10 & v5;
    if ((v10 & v5) != 0)
    {
      v14 = *(*(this + 9) + 2) == 1;
      physx::Sc::ShapeInteraction::processUserNotificationSync(this);
      physx::Sc::ShapeInteraction::processUserNotificationAsync(this, v11, 8 * v14, 1, a2, 0, a4, 0, v15, v16, v17);
    }

    v18 = *(*(this + 9) + 24);
    if (v18 && *(v18 + 12) == *(*(*(this + 1) + 72) + 1992))
    {
      *(v18 + 10) |= 0x10u;
    }

    v19 = *(this + 16);
    if ((v19 & 0xA00000) != 0)
    {
      v20 = *(*(*(this + 1) + 72) + 3992);
      if ((v19 & 0x800000) != 0)
      {
        v23 = *(this + 20);
        v21 = v19 & 0xFF7FFFFF;
        *(this + 20) = -1;
        v24 = *(v20 + 48);
        v25 = *(v20 + 56) - 1;
        *(v20 + 56) = v25;
        *(v24 + 8 * v23) = *(v24 + 8 * v25);
        if (v23 < v25)
        {
          *(*(*(v20 + 48) + 8 * v23) + 80) = v23;
        }
      }

      else
      {
        physx::Sc::NPhaseCore::removeFromPersistentContactEventPairs(v20, this);
        v21 = *(this + 16);
      }

      v19 = v21 & 0xFFE7FFFF;
    }

    v22 = v19 & 0xFFFE7FFF;
  }

  else
  {
    v22 = v5 & 0xFFFF7E23;
  }

  *(this + 16) = v22 | 0x10000;
  if (*(*(*(*(this + 5) + 8) + 80) + 13) - 1 >= 2)
  {
    v26 = 0;
  }

  else
  {
    v26 = *(*(this + 5) + 8);
  }

  v27 = *(*(this + 6) + 8);
  if (*(*(v27 + 80) + 13) - 1 >= 2)
  {
    v27 = 0;
  }

  if (!a3 || (v28 = *(this + 9), v29 = *(v28 + 2) - 1, *(v28 + 2) = v29, (a5 & 1) == 0) && v29)
  {
    if (!v27)
    {
      goto LABEL_33;
    }

    return 1;
  }

  --*(*(v26 + 17) + 152);
  if (v27)
  {
    --*(*(v27 + 136) + 152);
    return 1;
  }

LABEL_33:
  physx::Sc::BodySim::internalWakeUp(v26, 0.4);
  return 0;
}

uint64_t physx::Sc::ShapeInteraction::updateState(uint64_t this, char a2, uint64_t a3)
{
  v3 = this;
  v4 = *(this + 64);
  v5 = *(this + 38) | a2;
  v6 = *(*(this + 8) + 72);
  if ((v5 & 0x21) == 0)
  {
    goto LABEL_27;
  }

  if (*(*(*(*(this + 40) + 8) + 80) + 13) - 1 >= 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(*(this + 40) + 8);
  }

  v8 = *(*(this + 48) + 8);
  if (*(*(v8 + 80) + 13) - 1 >= 2)
  {
    v8 = 0;
  }

  if (*(*(v7 + 80) + 44))
  {
    if (!v8)
    {
      goto LABEL_14;
    }

    v9 = *(*(v8 + 80) + 44) & 1;
    if ((v4 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v9 = 0;
    if ((v4 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  if (v9)
  {
LABEL_14:
    v10 = v4 | 0x40000;
    goto LABEL_15;
  }

  v10 = v4 & 0xFFFBFFFF;
LABEL_15:
  if ((v4 & 0x202) == 0 && (v11 = *(v6 + 1840), v11[454] == 0.0) && v11[455] == 0.0 && v11[456] == 0.0 && v11[457] == 0.0)
  {
    v12 = v10 & 0xFFFDFFFF;
  }

  else
  {
    v12 = v10 | 0x20000;
  }

  *(this + 64) = v12;
  if ((v4 & 0x40000) != 0 || (v12 & 0x40000) == 0)
  {
    if ((v4 & 0x40000) != 0 && (v12 & 0x48000) == 0x8000)
    {
      this = physx::IG::SimpleIslandManager::setEdgeConnected(*(v6 + 1880), *(this + 96), a3);
    }
  }

  else
  {
    this = physx::IG::SimpleIslandManager::setEdgeDisconnected(*(v6 + 1880), *(this + 96));
  }

LABEL_27:
  v13 = *(v3 + 64);
  if (((v13 ^ v4) & 0x601DE) == 0)
  {
    v20 = *(v3 + 88);
    if (v20)
    {
      v21 = *(v3 + 40);
      v22 = *(v3 + 48);
      if ((v5 & 8) != 0)
      {
        v23 = *(v21 + 8);
        if (*(*(v23 + 80) + 13) - 1 >= 2)
        {
          v23 = 0;
        }

        v24 = *(v22 + 8);
        v25 = *(v24 + 80);
        v26 = *(*(v23 + 80) + 14);
        if (v24)
        {
          v27 = *(v25 + 13) - 3 >= 0xFFFFFFFE;
        }

        else
        {
          v27 = 0;
        }

        if (v27)
        {
          v28 = *(v25 + 14);
        }

        else
        {
          v28 = 0;
        }

        v40 = *(*(v3 + 8) + 72) + 4528;
        v41 = *(v40 + 4 * v26);
        LODWORD(v40) = *(v40 + 4 * v28);
        *(v20 + 84) = (v41 >> v28) & 1;
        *(v20 + 85) = (v40 >> v26) & 1;
      }

      if ((v5 & 5) != 0)
      {
        v42 = *(v22 + 8);
        v43 = *(v42 + 80);
        if (v42 && *(v43 + 13) - 3 >= 0xFFFFFFFE)
        {
          *(v20 + 80) = *(v20 + 80) & 0xFBFF | ((*(v43 + 44) & 1) << 10);
        }
      }

      if ((v5 & 0x10) != 0)
      {
        *(v20 + 92) = *(*(v21 + 56) + 160) + *(*(v22 + 56) + 160);
      }

      *(v20 + 16) = *(v20 + 16) & 0xFFFFFFF9 | (v13 >> 10) & 2;
      return this;
    }
  }

  if ((*(v3 + 37) & 0x20) == 0)
  {
    return this;
  }

  if ((v5 & 5) == 0)
  {
    v29 = *(v3 + 96);
    if (v29 != -1)
    {
      physx::IG::SimpleIslandManager::clearEdgeRigidCM(*(v6 + 1880), v29);
    }

    v30 = *(*(v3 + 8) + 72);
    (*(**(*(v30 + 1840) + 1776) + 72))(*(*(v30 + 1840) + 1776), *(v3 + 88));
    v19 = *(v30 + 1840);
    goto LABEL_51;
  }

  v14 = *(*(v3 + 8) + 72);
  if (*(*(*(*(v3 + 40) + 8) + 80) + 13) - 1 >= 2)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(*(v3 + 40) + 8);
  }

  v16 = *(*(v3 + 48) + 8);
  if (*(*(v16 + 80) + 13) - 1 >= 2)
  {
    v16 = 0;
  }

  v17 = *(*(v14 + 1880) + 888);
  if ((*(v17 + ((*(v15 + 176) >> 2) & 0x3FFFFFE0) + 4) & 0x22) != 0 || v16 && (*(v17 + ((*(v16 + 176) >> 2) & 0x3FFFFFE0) + 4) & 0x22) != 0)
  {
    v18 = *(v3 + 96);
    if (v18 != -1)
    {
      physx::IG::SimpleIslandManager::clearEdgeRigidCM(*(v6 + 1880), v18);
      v14 = *(*(v3 + 8) + 72);
    }

    (*(**(*(v14 + 1840) + 1776) + 72))(*(*(v14 + 1840) + 1776), *(v3 + 88));
    v19 = *(v14 + 1840);
LABEL_51:
    physx::PxsContext::destroyContactManager(v19, *(v3 + 88));
    *(v3 + 88) = 0;

    return physx::Sc::ShapeInteraction::createManager(v3, 0);
  }

  this = physx::Sc::ShapeInteraction::onDeactivate_(v3);
  v31 = *(v3 + 36);
  v32 = v6 + 120;
  v33 = *(v6 + 120 + 4 * v31);
  if (v33 >= 2)
  {
    v34 = v33 - 1;
    v35 = v6 + 16 * v31;
    v36 = *(v35 + 72);
    v37 = *(v36 + 8 * v34);
    v38 = *(v3 + 24);
    v39 = *(v36 + 8 * v38);
    *(v36 + 8 * v34) = v39;
    *(*(v35 + 72) + 8 * v38) = v37;
    *(v37 + 16) = v38;
    *(v39 + 16) = v34;
    v33 = *(v32 + 4 * v31);
  }

  *(v32 + 4 * v31) = v33 - 1;
  return this;
}

uint64_t physx::Sc::ShapeInteraction::onDeactivate_(physx::Sc::ShapeInteraction *this)
{
  if (*(*(*(*(this + 5) + 8) + 80) + 13) - 1 >= 2)
  {
    v1 = 0;
  }

  else
  {
    v1 = *(*(this + 5) + 8);
  }

  v2 = *(*(this + 6) + 8);
  if (*(*(v2 + 80) + 13) - 1 >= 2)
  {
    v2 = 0;
  }

  if (*(v1 + 184) < 0xFFFFFFFE || v2 && *(v2 + 184) < 0xFFFFFFFE)
  {
    return 0;
  }

  v5 = *(this + 20);
  if (v5 != -1)
  {
    v6 = *(this + 16);
    *(this + 16) = (2 * v6) & 0x400000 | v6;
    v7 = *(*(*(this + 1) + 72) + 3992);
    if ((v6 & 0x800000) != 0)
    {
      *(this + 16) = (2 * v6) & 0x400000 | v6 & 0xFF7FFFFF;
      *(this + 20) = -1;
      v8 = *(v7 + 48);
      v9 = *(v7 + 56) - 1;
      *(v7 + 56) = v9;
      *(v8 + 8 * v5) = *(v8 + 8 * v9);
      if (v5 < v9)
      {
        *(*(*(v7 + 48) + 8 * v5) + 80) = v5;
      }
    }

    else
    {
      physx::Sc::NPhaseCore::removeFromPersistentContactEventPairs(v7, this);
    }
  }

  v10 = *(this + 11);
  if (v10)
  {
    v11 = *(this + 16);
    if ((v11 & 0x18000) == 0 && (*(v10 + 83) & 3) != 0 && (*(v10 + 83) & 2) == 0)
    {
      *(this + 16) = v11 | 0x10000;
    }

    v13 = *(*(this + 1) + 72);
    (*(**(*(v13 + 1840) + 1776) + 72))(*(*(v13 + 1840) + 1776));
    physx::PxsContext::destroyContactManager(*(v13 + 1840), *(this + 11));
    *(this + 11) = 0;
    v14 = *(this + 24);
    if (v14 != -1)
    {
      physx::IG::SimpleIslandManager::clearEdgeRigidCM(*(*(*(this + 1) + 72) + 1880), v14);
    }
  }

  physx::IG::SimpleIslandManager::deactivateEdge(*(*(*(this + 1) + 72) + 1880), *(this + 24));
  *(this + 37) &= ~0x20u;
  return 1;
}

uint64_t physx::Sc::ShapeInteraction::createManager(physx::Sc::ShapeInteraction *this, uint64_t a2)
{
  v4 = *(*(this + 1) + 72);
  v5 = *(this + 16);
  result = physx::PxsContext::createContactManager(*(v4 + 1840), a2, (v5 >> 11) & 1);
  v7 = v5 & 2;
  v9 = *(this + 5);
  v8 = *(this + 6);
  v10 = *(v9 + 8);
  v11 = *(v10 + 80);
  v12 = *(v11 + 13);
  v13 = *(*(v8 + 8) + 80);
  v14 = *(v13 + 13);
  v15 = *(this + 16);
  v16 = v15 & 0x40000;
  if ((v5 & 0x1C0) != 0)
  {
    v17 = (v15 >> 18) & 1;
  }

  else
  {
    v17 = 1;
  }

  if ((v15 & 0x8000) != 0)
  {
    v18 = 1;
  }

  else
  {
    v18 = -1;
  }

  v19 = v15 & 0x18000;
  if ((v15 & 0x18000) == 0)
  {
    v18 = 0;
  }

  if ((v12 - 1) >= 2)
  {
    v10 = 0;
  }

  if ((v14 - 1) >= 2)
  {
    v20 = 0;
  }

  else
  {
    v20 = *(v8 + 8);
  }

  v21 = *(*(v10 + 80) + 14);
  if (v20)
  {
    v22 = *(v20 + 80);
    v23 = *(v22 + 14);
    v24 = *(v22 + 44) & 1;
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  if (v20)
  {
    v25 = v20 + 96;
  }

  else
  {
    v25 = 0;
  }

  if (v14 == 2)
  {
    v26 = (8 * (v12 == 2)) | 0x10;
  }

  else
  {
    v26 = 8 * (v12 == 2);
  }

  if (*(v11 + 13))
  {
    v27 = v26 | 0x20;
  }

  else
  {
    v27 = v26;
  }

  if (*(v13 + 13))
  {
    v27 |= 0x40u;
  }

  if (!(v16 | v7))
  {
    v27 |= 2u;
  }

  v28 = v27 | (v5 >> 1) & 0x200;
  if (v24)
  {
    LOWORD(v28) = v28 | 0x400;
  }

  if (v16)
  {
    v29 = v28 | 0x800;
  }

  else
  {
    v29 = v28;
  }

  if ((v5 & 0x800) != 0)
  {
    v29 |= 0x1000u;
  }

  if (v17)
  {
    v30 = v29 | ((v15 & 0x20000 | v7) != 0);
  }

  else
  {
    v30 = v29 | ((v15 & 0x20000 | v7) != 0) | 0x100;
  }

  v35 = (*(this + 16) & 0x8000) == 0;
  v31 = (*(v4 + 4528 + 4 * v21) >> v23) & 1;
  v32 = (*(v4 + 4528 + 4 * v23) >> v21) & 1;
  v33 = *(v9 + 56);
  v34 = *(v8 + 56);
  *result = v10 + 96;
  *(result + 8) = v25;
  *(result + 48) = v33 + 32;
  *(result + 56) = v34 + 32;
  *(result + 24) = this;
  *(result + 32) = v11 + 16;
  *(result + 40) = v13 + 16;
  *(result + 92) = *(v33 + 160) + *(v34 + 160);
  *(result + 84) = v31;
  *(result + 85) = v32;
  *(result + 86) = *(v33 + 72);
  *(result + 87) = *(v34 + 72);
  *(result + 96) = *(v9 + 16) & 0x7FFFFFFF;
  *(result + 100) = *(v8 + 16) & 0x7FFFFFFF;
  *(result + 112) = vbsl_s8(vcgt_f32(*(v33 + 164), *(v34 + 164)), *(v33 + 164), *(v34 + 164));
  *(result + 80) = v30 | (v7 << 6);
  *(result + 16) = (v5 >> 1) & 1 | ((v5 & 0x800) >> 10);
  *(result + 108) = -1;
  *(this + 11) = result;
  v35 = !v35 || v19 == 0;
  v36 = !v35;
  if (v18 > 0)
  {
    v36 = 2;
  }

  *(result + 83) = v36;
  if (!a2)
  {
    v37 = *(this + 24);
    *(*(*(*(v4 + 1880) + 176) + 8 * (v37 / *(*(v4 + 1880) + 200))) + 8 * (v37 % *(*(v4 + 1880) + 200))) = result;
    *(result + 104) = v37;
    v38 = *(**(*(v4 + 1840) + 1776) + 56);

    return v38();
  }

  return result;
}

uint64_t physx::Sc::ShapeInteraction::onShapeChangeWhileSleeping(uint64_t this, int a2)
{
  if (!*(this + 88))
  {
    v3 = *(*(*(*(this + 40) + 8) + 80) + 13) - 1 >= 2 ? 0 : *(*(this + 40) + 8);
    if (a2)
    {
      v4 = *(this + 64);
      if ((v4 & 0x18000) == 0)
      {
        if (*(*(*(*(this + 48) + 8) + 80) + 13) - 1 >= 2)
        {
          v5 = 0;
        }

        else
        {
          v5 = *(*(this + 48) + 8);
        }

        if ((v4 & 0x40000) == 0)
        {
          if (v5)
          {
            return physx::Sc::Scene::addToLostTouchList(*(*(this + 8) + 72), v3, v5);
          }
        }
      }
    }
  }

  return this;
}

void physx::Sc::ShapeSim::initSubsystemsDependingOnElementID(physx::Sc::ShapeSim *this)
{
  v2 = *(*(this + 1) + 72);
  v3 = *(v2 + 2064);
  v4 = *(this + 4) & 0x7FFFFFFF;
  physx::Sc::ShapeSim::getAbsPoseAligned(this, &v39);
  v15 = *(*(v2 + 1840) + 2592);
  v16 = *(v15 + 20) & 0x7FFFFFFF;
  if (v16 <= v4)
  {
    v17 = v4 | (v4 >> 1) | ((v4 | (v4 >> 1)) >> 2);
    v18 = v17 | (v17 >> 4) | ((v17 | (v17 >> 4)) >> 8);
    v19 = v18 | HIWORD(v18);
    v20 = v19 + 1;
    if (v16 <= v19)
    {
      physx::shdfnd::Array<physx::PxsCachedTransform,physx::shdfnd::VirtualAllocator>::recreate(*(*(v2 + 1840) + 2592), v19 + 1);
    }

    *(v15 + 16) = v20;
  }

  v21 = *(v15 + 24);
  if (v21 <= v4 + 1)
  {
    v21 = v4 + 1;
  }

  *(v15 + 24) = v21;
  v22 = (*(v15 + 8) + 32 * v4);
  v23.i64[1] = v39.i64[1];
  *v22 = v39;
  v22[1].i64[0] = v40;
  v22[1].i32[2] = v41;
  v22[1].i32[3] = 0;
  *(v15 + 28) = 1;
  v23.i64[0] = 0;
  LODWORD(v9) = 1.0;
  physx::Gu::computeBounds(*(v3 + 8) + 24 * v4, *(this + 7) + 72, &v39, 0, v23, v9, v10, v11, v12, v13, v14, v5, v6, v7, v8, v39.i8[0]);
  *(v3 + 24) = 1;
  v24 = *(this + 7);
  v25 = *(v24 + 64);
  if ((v25 & 5) != 0)
  {
    v26 = *(v24 + 60);
    BPGroup = physx::Sc::ShapeSim::getBPGroup(this);
    physx::Sc::ElementSim::addToAABBMgr(this, BPGroup, v25 & 4, v26, v28, v29, v30, v31, v32, v39.i8[0]);
  }

  else
  {
    physx::Bp::AABBManager::reserveSpaceForBounds(*(v2 + 1848), v4);
  }

  *(*(*(v2 + 2072) + 8) + 4 * v4) = *(*(this + 7) + 60);
  *(v2 + 2080) = 1;
  v33 = *(v2 + 4520);
  if (v4 >= 32 * v33)
  {
    v34 = (v33 << 6) | 2;
    if (v4 + 1 <= v34)
    {
      v35 = v34;
    }

    else
    {
      v35 = v4 + 1;
    }

    physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(v2 + 4512, v35);
  }

  v36 = *(this + 1);
  v37 = *(*(v36 + 80) + 13);
  if ((v37 - 1) <= 1 && *(v36 + 184) <= 0xFFFFFFFD)
  {
    physx::Sc::ShapeSim::createSqBounds(this);
    v37 = *(*(v36 + 80) + 13);
  }

  *(this + 9) = v4;
  *(this + 3) = *(this + 7) + 32;
  if (v37)
  {
    v38 = *(*(this + 1) + 176);
  }

  else
  {
    v38 = -128;
  }

  *(this + 8) = v38;
}

float32x4_t physx::Sc::ShapeSim::getAbsPoseAligned(uint64_t a1, float32x4_t *a2)
{
  v2 = *(a1 + 56);
  v3 = *(*(a1 + 8) + 80);
  if (v3->i8[13] && !v3[2].i8[13])
  {
    v25.i64[0] = v2[3].i64[0];
    v25.i64[1] = v2[3].u32[2];
    v26 = v2[2];
    v27.i64[0] = v3[4].i64[0];
    v27.i64[1] = v3[4].u32[2];
    v4.i64[0] = v3[2].i64[0];
    v4.i64[1] = v3[2].u32[2];
    v28 = v3[3];
    v29 = vdupq_laneq_s32(v28, 3).u64[0];
    v30 = v28;
    v30.i32[3] = 0;
    v31 = v3[1];
    v32 = v26;
    v32.i32[3] = 0;
    v33 = vmulq_f32(v32, v30);
    v33.i64[0] = vpaddq_f32(v33, v33).u64[0];
    *v33.f32 = vmla_f32(vpadd_f32(*v33.f32, *v33.f32), *&vdupq_laneq_s32(v26, 3), v29);
    v34 = vextq_s8(v32, v32, 8uLL).u64[0];
    v35 = vextq_s8(v30, v30, 8uLL).u64[0];
    v36 = vext_s8(*v28.f32, v35, 4uLL);
    v37 = vmls_f32(vmul_f32(*v26.f32, v36), vext_s8(*v26.f32, v34, 4uLL), *v28.f32);
    *v38.f32 = vext_s8(v37, vmls_f32(vmul_f32(v34, *v28.f32), *v26.f32, v35), 4uLL);
    v38.i64[1] = v37.u32[0];
    v39 = vmlaq_laneq_f32(v38, v32, v28, 3);
    v39.i64[1] = vextq_s8(v39, v39, 8uLL).u32[0];
    v40 = vmlsq_laneq_f32(v39, v30, v26, 3);
    v41 = v31;
    v41.i32[3] = 0;
    v42 = vextq_s8(v41, v41, 8uLL).u64[0];
    v43 = vext_s8(*v31.f32, v42, 4uLL);
    v44 = vmls_f32(vmul_f32(*v31.f32, *&vextq_s8(v40, v40, 4uLL)), v43, *v40.f32);
    v40.i64[1] = vextq_s8(v40, v40, 8uLL).u32[0];
    v45 = vsubq_f32(v25, v27);
    v46 = vmulq_n_f32(v45, vmla_f32(0xBF000000BF000000, v29, v29).f32[0]);
    v46.i32[3] = 0;
    v47 = vmls_f32(vmul_f32(*v45.f32, v36), *&vextq_s8(v45, v45, 4uLL), *v28.f32);
    *v48.f32 = vext_s8(v47, vmls_f32(vmul_f32(*v28.f32, *&vextq_s8(v45, v45, 8uLL)), *v45.f32, v35), 4uLL);
    v48.i64[1] = v47.u32[0];
    v49 = vmlaq_laneq_f32(v46, v48, v28, 3);
    v49.i64[1] = vextq_s8(v49, v49, 8uLL).u32[0];
    v50 = vmulq_f32(v30, v45);
    v50.i64[0] = vpaddq_f32(v50, v50).u64[0];
    v51 = vmlaq_n_f32(v49, v30, vpadd_f32(*v50.f32, *v50.f32).f32[0]);
    v28.i64[0] = vextq_s8(v51, v51, 8uLL).u32[0];
    v52 = vadd_f32(*v51.f32, *v51.f32);
    v51.i64[1] = v28.u32[0];
    v53 = vaddq_f32(v51, v51);
    v54 = vdupq_laneq_s32(v31, 3).u64[0];
    v55 = vmulq_f32(v41, v40);
    v55.i64[0] = vpaddq_f32(v55, v55).u64[0];
    v17 = vsub_f32(vmul_laneq_f32(*v33.f32, v31, 3), vpadd_f32(*v55.f32, *v55.f32));
    *v50.f32 = vext_s8(v44, vmls_f32(vmul_f32(v42, *v40.f32), *v31.f32, *&v40.u32[2]), 4uLL);
    v50.i64[1] = v44.u32[0];
    v56 = vmlaq_laneq_f32(v50, v40, v31, 3);
    v56.i64[1] = vextq_s8(v56, v56, 8uLL).u32[0];
    v18 = vmlaq_n_f32(v56, v41, v33.f32[0]);
    v57 = vmulq_n_f32(v53, vmla_f32(0xBF000000BF000000, v54, v54).f32[0]);
    v57.i32[3] = 0;
    *v28.f32 = vadd_f32(*v28.f32, *v28.f32);
    *v26.f32 = vmls_f32(vmul_f32(*v31.f32, vext_s8(v52, *v28.f32, 4uLL)), v43, v52);
    *v28.f32 = vext_s8(*v26.f32, vmls_f32(vmul_f32(v42, v52), *v31.f32, *v28.f32), 4uLL);
    v28.i64[1] = v26.u32[0];
    v58 = vmlaq_laneq_f32(v57, v28, v31, 3);
    v58.i64[1] = vextq_s8(v58, v58, 8uLL).u32[0];
    v59 = vmulq_f32(v41, v53);
    v59.i64[0] = vpaddq_f32(v59, v59).u64[0];
    v24 = vmlaq_n_f32(v58, v41, vpadd_f32(*v59.f32, *v59.f32).f32[0]);
  }

  else
  {
    v4.i64[0] = v3[2].i64[0];
    v4.i64[1] = v3[2].u32[2];
    v5 = v3[1];
    v6.i64[0] = v2[3].i64[0];
    v6.i64[1] = v2[3].u32[2];
    v7 = vdupq_laneq_s32(v5, 3).u64[0];
    v8 = v2[2];
    v9 = v5;
    v9.i32[3] = 0;
    v10 = v8;
    v10.i32[3] = 0;
    v11 = vmulq_f32(v9, v10);
    v11.i64[0] = vpaddq_f32(v11, v11).u64[0];
    v12 = vpadd_f32(*v11.f32, *v11.f32);
    v13 = vextq_s8(v9, v9, 8uLL).u64[0];
    v11.i64[0] = vextq_s8(v10, v10, 8uLL).u64[0];
    v14 = vext_s8(*v5.f32, v13, 4uLL);
    v15 = vmls_f32(vmul_f32(*v5.f32, vext_s8(*v8.f32, *v11.f32, 4uLL)), v14, *v8.f32);
    *v11.f32 = vext_s8(v15, vmls_f32(vmul_f32(v13, *v8.f32), *v5.f32, *v11.f32), 4uLL);
    v11.i64[1] = v15.u32[0];
    v16 = vmlaq_laneq_f32(v11, v10, v5, 3);
    v17 = vsub_f32(vmul_f32(*&vextq_s8(v5, v5, 8uLL), *&vextq_s8(v8, v8, 8uLL)), v12);
    v16.i64[1] = vextq_s8(v16, v16, 8uLL).u32[0];
    v18 = vmlaq_laneq_f32(v16, v9, v8, 3);
    v19 = vmulq_n_f32(v6, vmla_f32(0xBF000000BF000000, v7, v7).f32[0]);
    v19.i32[3] = 0;
    v8.i64[0] = vextq_s8(v6, v6, 8uLL).u64[0];
    v20 = vmls_f32(vmul_f32(*v5.f32, vext_s8(*v6.f32, *v8.f32, 4uLL)), v14, *v6.f32);
    *v21.f32 = vext_s8(v20, vmls_f32(vmul_f32(v13, *v6.f32), *v5.f32, *v8.f32), 4uLL);
    v21.i64[1] = v20.u32[0];
    v22 = vmlaq_laneq_f32(v19, v21, v5, 3);
    v22.i64[1] = vextq_s8(v22, v22, 8uLL).u32[0];
    v23 = vmulq_f32(v9, v6);
    v23.i64[0] = vpaddq_f32(v23, v23).u64[0];
    v24 = vmlaq_n_f32(v22, v9, vpadd_f32(*v23.f32, *v23.f32).f32[0]);
  }

  v24.i64[1] = vextq_s8(v24, v24, 8uLL).u32[0];
  v60.i64[0] = 0x4000000040000000;
  v60.i64[1] = 0x4000000040000000;
  result = vmlaq_f32(v4, v60, v24);
  a2[1].i64[0] = result.i64[0];
  a2[1].i32[2] = result.i32[2];
  v18.i32[3] = v17.i32[1];
  *a2 = v18;
  return result;
}