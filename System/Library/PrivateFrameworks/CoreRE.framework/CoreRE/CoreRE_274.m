BOOL physx::NpMaterialManager::setMaterial(physx::NpMaterialManager *this, physx::NpMaterial *a2)
{
  v4 = *(this + 4);
  if (v4)
  {
    v5 = v4 - 1;
    v6 = *(*(this + 1) + 4 * v5);
    *(this + 4) = v5;
  }

  else
  {
    v6 = (*this)++;
  }

  if (v6 <= 0xFFFE)
  {
    if (*(this + 8) <= v6)
    {
      physx::NpMaterialManager::resize(this);
    }

    *(*(this + 3) + 8 * v6) = a2;
    *(a2 + 36) = v6;
  }

  return v6 < 0xFFFF;
}

physx::NpMaterial *physx::NpPhysics::createMaterial(pthread_mutex_t **this, float a2, float a3, float a4)
{
  v8 = physx::NpFactory::mInstance;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_lock(*(physx::NpFactory::mInstance + 4568));
  }

  v9 = *(v8 + 4560);
  if (!v9)
  {
    v10 = physx::shdfnd::ReflectionAllocator<physx::NpMaterial>::allocate(*(v8 + 4552), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsPool.h", 180);
    v11 = v10;
    v16 = v10;
    v12 = *(v8 + 4536);
    if ((*(v8 + 4540) & 0x7FFFFFFFu) <= v12)
    {
      physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::NpMaterial>>>::growAndPushBack(v8 + 4008, &v16);
    }

    else
    {
      *(*(v8 + 4528) + 8 * v12) = v10;
      *(v8 + 4536) = v12 + 1;
    }

    v13 = v11 + 80 * *(v8 + 4544) - 80;
    v9 = *(v8 + 4560);
    if (v13 >= v11)
    {
      v14 = (v11 + 80 * *(v8 + 4544) - 80);
      do
      {
        *v14 = v9;
        v14 -= 10;
        v9 = v13;
        v13 = v14;
      }

      while (v14 >= v11);
      v9 = v14 + 10;
    }
  }

  *(v8 + 4560) = *v9;
  ++*(v8 + 4548);
  *(v9 + 2) = 196616;
  *(v9 + 8) = 1;
  *v9 = &unk_1F5D25008;
  v9[2] = 0;
  v9[3] = &unk_1F5D250D8;
  *(v9 + 12) = a3;
  *(v9 + 13) = a2;
  *(v9 + 14) = a4;
  *(v9 + 30) = 0;
  *(v9 + 31) = -13056;
  *(v9 + 18) = -842137601;
  v9[8] = v9;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_unlock(*(v8 + 4568));
  }

  return physx::NpPhysics::addMaterial(this, v9);
}

uint64_t physx::NpPhysics::getNbMaterials(pthread_mutex_t **this)
{
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_lock(this[20]);
    v2 = *(this + 8);
    v3 = *(this + 12);
    if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
    {
      pthread_mutex_unlock(this[20]);
    }
  }

  else
  {
    v2 = *(this + 8);
    v3 = *(this + 12);
  }

  return (v2 - v3);
}

uint64_t physx::NpPhysics::getMaterials(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_lock(*(a1 + 160));
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = *(a1 + 64);
LABEL_5:
  v12 = v10;
  if (v10 <= a4)
  {
    v13 = a4;
  }

  else
  {
    v13 = v10;
  }

  v10 = v13 + 1;
  while (v9 < v11)
  {
    v14 = v11 - v9;
    v15 = (*(a1 + 56) + 8 * v9++);
    while (!*v15)
    {
      ++v9;
      ++v15;
      if (!--v14)
      {
        goto LABEL_18;
      }
    }

    if (v12++ == v13)
    {
      if (v8 == a3)
      {
        goto LABEL_19;
      }

      *(a2 + 8 * v8++) = *v15;
      goto LABEL_5;
    }
  }

LABEL_18:
  a3 = v8;
LABEL_19:
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_unlock(*(a1 + 160));
  }

  return a3;
}

uint64_t physx::NpPhysics::updateMaterial(uint64_t this, physx::NpMaterial *a2)
{
  v3 = this;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    this = pthread_mutex_lock(*(this + 160));
  }

  if (*(v3 + 16))
  {
    v4 = 0;
    do
    {
      this = physx::Scb::Scene::updateMaterial(*(*(v3 + 8) + 8 * v4++) + 16, a2 + 48);
    }

    while (v4 < *(v3 + 16));
  }

  *(*(v3 + 56) + 8 * *(a2 + 36)) = a2;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    v5 = *(v3 + 160);

    return pthread_mutex_unlock(v5);
  }

  return this;
}

physx::Sq::PruningStructure *physx::NpPhysics::createPruningStructure(physx::NpPhysics *this, physx::PxRigidActor *const *a2, unsigned int a3)
{
  v5 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v6 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sq::PruningStructure>::getName() [T = physx::Sq::PruningStructure]";
  }

  else
  {
    v6 = "<allocation names disabled>";
  }

  v7 = (*(*(v5 + 24) + 16))(v5 + 24, 88, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpPhysics.cpp", 568);
  *(v7 + 2) = 196624;
  *v7 = &unk_1F5D21118;
  *(v7 + 16) = 0;
  *(v7 + 9) = 0;
  *(v7 + 80) = 1;
  *(v7 + 12) = 0;
  *(v7 + 24) = 0u;
  *(v7 + 40) = 0u;
  *(v7 + 7) = 0;
  if ((physx::Sq::PruningStructure::build(v7, a2, a3, v8, v9, v10, v11, v12) & 1) == 0)
  {
    (*(*v7 + 32))(v7);
    return 0;
  }

  return v7;
}

uint64_t physx::NpPhysics::registerDeletionListener(uint64_t result, uint64_t a2, _BYTE *a3, char a4)
{
  v7 = result;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    result = pthread_mutex_lock(*(result + 80));
  }

  if (!v7[17].i32[1] || (v8 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22), v9 = 9 * ((v8 + ~(v8 << 13)) ^ ((v8 + ~(v8 << 13)) >> 8)), v10 = (v9 ^ (v9 >> 15)) + ~((v9 ^ (v9 >> 15)) << 27), v11 = *(*&v7[14] + 4 * ((v7[15].i32[1] - 1) & ((v10 >> 31) ^ v10))), v11 == -1))
  {
LABEL_8:
    v12 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v13 = "static const char *physx::shdfnd::ReflectionAllocator<physx::NpPhysics::NpDelListenerEntry>::getName() [T = physx::NpPhysics::NpDelListenerEntry]";
    }

    else
    {
      v13 = "<allocation names disabled>";
    }

    v14 = (*(*(v12 + 24) + 16))(v12 + 24, 64, v13, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpPhysics.cpp", 605);
    *v14 = 0u;
    *(v14 + 16) = 0u;
    *(v14 + 32) = 0;
    *(v14 + 40) = 1061158912;
    *(v14 + 44) = 0xFFFFFFFFLL;
    *(v14 + 52) = 0;
    result = physx::shdfnd::internal::HashBase<physx::PxBase const*,physx::PxBase const*,physx::shdfnd::Hash<physx::PxBase const*>,physx::shdfnd::internal::HashSetBase<physx::PxBase const*,physx::shdfnd::Hash<physx::PxBase const*>,physx::shdfnd::NonTrackingAllocator,false>::GetKey,physx::shdfnd::NonTrackingAllocator,false>::reserveInternal(v14, 0x40u);
    *(v14 + 56) = *a3;
    *(v14 + 57) = a4;
    v15 = v7[15].u32[1];
    if (v15)
    {
      v16 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
      v17 = 9 * ((v16 + ~(v16 << 13)) ^ ((v16 + ~(v16 << 13)) >> 8));
      v18 = (v17 ^ (v17 >> 15)) + ~((v17 ^ (v17 >> 15)) << 27);
      v19 = (v15 - 1) & ((v18 >> 31) ^ v18);
      v20 = *(*&v7[14] + 4 * v19);
      if (v20 != -1)
      {
        while (*(*&v7[12] + 16 * v20) != a2)
        {
          v20 = *(*&v7[13] + 4 * v20);
          if (v20 == -1)
          {
            goto LABEL_17;
          }
        }

        if (*v14)
        {
          (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
        }

        result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v14);
        goto LABEL_25;
      }
    }

    else
    {
      v19 = 0;
    }

LABEL_17:
    if (v7[17].i32[1] == v7[15].i32[0])
    {
      if (v15)
      {
        v21 = 2 * v15;
      }

      else
      {
        v21 = 16;
      }

      if (v15 < v21)
      {
        result = physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<physx::PxDeletionListener * const,physx::NpPhysics::NpDelListenerEntry *>,physx::PxDeletionListener *,physx::shdfnd::Hash<physx::PxDeletionListener *>,physx::shdfnd::internal::HashMapBase<physx::PxDeletionListener *,physx::NpPhysics::NpDelListenerEntry *,physx::shdfnd::Hash<physx::PxDeletionListener *>,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(&v7[11], v21);
        v15 = v7[15].u32[1];
      }

      v22 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
      v23 = 9 * ((v22 + ~(v22 << 13)) ^ ((v22 + ~(v22 << 13)) >> 8));
      v24 = (v23 ^ (v23 >> 15)) + ~((v23 ^ (v23 >> 15)) << 27);
      v19 = (v15 - 1) & ((v24 >> 31) ^ v24);
    }

    v25 = v7[16].u32[1];
    v7[16].i32[1] = v25 + 1;
    v26 = v7[14];
    v27 = v7[12];
    *(*&v7[13] + 4 * v25) = *(*&v26 + 4 * v19);
    *(*&v26 + 4 * v19) = v25;
    v7[17] = vadd_s32(v7[17], 0x100000001);
    v28 = (*&v27 + 16 * v25);
    *v28 = a2;
    v28[1] = v14;
    v7[19].i8[0] = 1;
    goto LABEL_25;
  }

  while (*(*&v7[12] + 16 * v11) != a2)
  {
    v11 = *(*&v7[13] + 4 * v11);
    if (v11 == -1)
    {
      goto LABEL_8;
    }
  }

LABEL_25:
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    v29 = v7[10];

    return pthread_mutex_unlock(v29);
  }

  return result;
}

uint64_t physx::NpPhysics::unregisterDeletionListener(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    result = pthread_mutex_lock(*(result + 80));
  }

  if (v3[17].i32[1])
  {
    v4 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v5 = 9 * ((v4 + ~(v4 << 13)) ^ ((v4 + ~(v4 << 13)) >> 8));
    v6 = (v5 ^ (v5 >> 15)) + ~((v5 ^ (v5 >> 15)) << 27);
    v7 = (v3[15].i32[1] - 1) & ((v6 >> 31) ^ v6);
    v8 = v3[14];
    v9 = (*&v8 + 4 * v7);
    v10 = *v9;
    if (v10 != -1)
    {
      v11 = v3[12];
      v12 = *v9;
      while (*(*&v11 + 16 * v12) != a2)
      {
        v12 = *(*&v3[13] + 4 * v12);
        if (v12 == -1)
        {
          goto LABEL_24;
        }
      }

      v13 = *(*&v11 + 16 * v12 + 8);
      v14 = v3[13];
      if (*(*&v11 + 16 * v10) == a2)
      {
LABEL_14:
        *v9 = *(*&v14 + 4 * v10);
        v16 = vadd_s32(v3[17], 0xFFFFFFFF00000001);
        v3[17] = v16;
        v17 = v16.u32[1];
        if (v10 != v16.i32[1])
        {
          v18 = *(*&v11 + 16 * v16.u32[1]);
          *(*&v11 + 16 * v10) = v18;
          *(*&v14 + 4 * v10) = *(*&v14 + 4 * v17);
          v19 = (~(v18 << 32) + v18) ^ ((~(v18 << 32) + v18) >> 22);
          v20 = 9 * ((v19 + ~(v19 << 13)) ^ ((v19 + ~(v19 << 13)) >> 8));
          v21 = (v20 ^ (v20 >> 15)) + ~((v20 ^ (v20 >> 15)) << 27);
          v22 = (*&v8 + 4 * ((v3[15].i32[1] - 1) & ((v21 >> 31) ^ v21)));
          v23 = v3[17].u32[1];
          v24 = *v22;
          if (v24 != v23)
          {
            do
            {
              v25 = v24;
              v24 = *(*&v14 + 4 * v24);
            }

            while (v24 != v23);
            v22 = (*&v14 + 4 * v25);
          }

          *v22 = v10;
        }

        --v3[16].i32[1];
      }

      else
      {
        while (1)
        {
          v15 = v10;
          v10 = *(*&v14 + 4 * v10);
          if (v10 == -1)
          {
            break;
          }

          if (*(*&v11 + 16 * v10) == a2)
          {
            v9 = (*&v14 + 4 * v15);
            goto LABEL_14;
          }
        }
      }

      if (v13)
      {
        if (*v13)
        {
          (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
        }

        result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v13);
      }
    }
  }

LABEL_24:
  v3[19].i8[0] = v3[17].i32[1] != 0;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    v26 = v3[10];

    return pthread_mutex_unlock(v26);
  }

  return result;
}

pthread_mutex_t **physx::NpPhysics::registerDeletionListenerObjects(pthread_mutex_t **result, uint64_t a2, uint64_t a3, int a4)
{
  v7 = result;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    result = pthread_mutex_lock(result[10]);
  }

  if (*(v7 + 35))
  {
    v8 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v9 = 9 * ((v8 + ~(v8 << 13)) ^ ((v8 + ~(v8 << 13)) >> 8));
    v10 = (v9 ^ (v9 >> 15)) + ~((v9 ^ (v9 >> 15)) << 27);
    v11 = *(&v7[14]->__sig + ((*(v7 + 31) - 1) & ((v10 >> 31) ^ v10)));
    if (v11 != -1)
    {
      v12 = v7[12];
      while (*(&v12->__sig + 2 * v11) != a2)
      {
        v11 = *(&v7[13]->__sig + v11);
        if (v11 == -1)
        {
          goto LABEL_31;
        }
      }

      v13 = *&v12->__opaque[16 * v11];
      v14 = v13[6].i32[1] + a4;
      if (v13[4].i32[1] < v14)
      {
        result = physx::shdfnd::internal::HashBase<physx::PxBase const*,physx::PxBase const*,physx::shdfnd::Hash<physx::PxBase const*>,physx::shdfnd::internal::HashSetBase<physx::PxBase const*,physx::shdfnd::Hash<physx::PxBase const*>,physx::shdfnd::NonTrackingAllocator,false>::GetKey,physx::shdfnd::NonTrackingAllocator,false>::reserveInternal(v13, v14);
      }

      if (a4)
      {
        for (i = 0; i != a4; ++i)
        {
          v16 = v13[4].u32[1];
          if (v16)
          {
            v17 = *(a3 + 8 * i);
            v18 = (~(v17 << 32) + v17) ^ ((~(v17 << 32) + v17) >> 22);
            v19 = 9 * ((v18 + ~(v18 << 13)) ^ ((v18 + ~(v18 << 13)) >> 8));
            v20 = (v19 ^ (v19 >> 15)) + ~((v19 ^ (v19 >> 15)) << 27);
            v21 = (v16 - 1) & ((v20 >> 31) ^ v20);
            v22 = *(*&v13[3] + 4 * v21);
            if (v22 != -1)
            {
              while (*(*&v13[1] + 8 * v22) != v17)
              {
                v22 = *(*&v13[2] + 4 * v22);
                if (v22 == -1)
                {
                  goto LABEL_20;
                }
              }

              continue;
            }
          }

          else
          {
            v21 = 0;
          }

LABEL_20:
          v23 = v13[5].u32[1];
          if (v23 == -1)
          {
            if (v16)
            {
              v24 = 2 * v16;
            }

            else
            {
              v24 = 16;
            }

            if (v16 >= v24)
            {
              v23 = 0xFFFFFFFFLL;
            }

            else
            {
              result = physx::shdfnd::internal::HashBase<physx::PxBase const*,physx::PxBase const*,physx::shdfnd::Hash<physx::PxBase const*>,physx::shdfnd::internal::HashSetBase<physx::PxBase const*,physx::shdfnd::Hash<physx::PxBase const*>,physx::shdfnd::NonTrackingAllocator,false>::GetKey,physx::shdfnd::NonTrackingAllocator,false>::reserveInternal(v13, v24);
              v16 = v13[4].u32[1];
              v23 = v13[5].u32[1];
            }

            v25 = *(a3 + 8 * i);
            v26 = (~(v25 << 32) + v25) ^ ((~(v25 << 32) + v25) >> 22);
            v27 = 9 * ((v26 + ~(v26 << 13)) ^ ((v26 + ~(v26 << 13)) >> 8));
            v28 = (v27 ^ (v27 >> 15)) + ~((v27 ^ (v27 >> 15)) << 27);
            v21 = (v16 - 1) & ((v28 >> 31) ^ v28);
          }

          else
          {
            v25 = *(a3 + 8 * i);
          }

          v30 = v13[1];
          v29 = v13[2];
          v13[5].i32[1] = *(*&v29 + 4 * v23);
          v31 = v13[3];
          *(*&v29 + 4 * v23) = *(*&v31 + 4 * v21);
          *(*&v31 + 4 * v21) = v23;
          v13[6] = vadd_s32(v13[6], 0x100000001);
          *(*&v30 + 8 * v23) = v25;
        }
      }
    }
  }

LABEL_31:
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    v32 = v7[10];

    return pthread_mutex_unlock(v32);
  }

  return result;
}

uint64_t physx::NpPhysics::unregisterDeletionListenerObjects(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v7 = result;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    result = pthread_mutex_lock(*(result + 80));
  }

  if (*(v7 + 140))
  {
    v8 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v9 = 9 * ((v8 + ~(v8 << 13)) ^ ((v8 + ~(v8 << 13)) >> 8));
    v10 = (v9 ^ (v9 >> 15)) + ~((v9 ^ (v9 >> 15)) << 27);
    v11 = *(*(v7 + 112) + 4 * ((*(v7 + 124) - 1) & ((v10 >> 31) ^ v10)));
    if (v11 != -1)
    {
      v12 = *(v7 + 96);
      while (*(v12 + 16 * v11) != a2)
      {
        v11 = *(*(v7 + 104) + 4 * v11);
        if (v11 == -1)
        {
          goto LABEL_21;
        }
      }

      if (a4)
      {
        v13 = *(v12 + 16 * v11 + 8);
        if (v13[7].i8[1])
        {
          v14 = 0;
          do
          {
            if (v13[6].i32[1])
            {
              v15 = *(a3 + 8 * v14);
              v16 = (~(v15 << 32) + v15) ^ ((~(v15 << 32) + v15) >> 22);
              v17 = 9 * ((v16 + ~(v16 << 13)) ^ ((v16 + ~(v16 << 13)) >> 8));
              v18 = (v17 ^ (v17 >> 15)) + ~((v17 ^ (v17 >> 15)) << 27);
              v19 = (*&v13[3] + 4 * ((v13[4].i32[1] - 1) & ((v18 >> 31) ^ v18)));
              v20 = *v19;
              if (v20 != -1)
              {
                v22 = v13[1];
                v21 = v13[2];
                if (*(*&v22 + 8 * v20) == v15)
                {
LABEL_19:
                  *v19 = *(*&v21 + 4 * v20);
                  v13[6] = vadd_s32(v13[6], 0xFFFFFFFF00000001);
                  *(*&v21 + 4 * v20) = v13[5].i32[1];
                  v13[5].i32[1] = v20;
                }

                else
                {
                  while (1)
                  {
                    v23 = v20;
                    v20 = *(*&v21 + 4 * v20);
                    if (v20 == -1)
                    {
                      break;
                    }

                    if (*(*&v22 + 8 * v20) == v15)
                    {
                      v19 = (*&v21 + 4 * v23);
                      goto LABEL_19;
                    }
                  }
                }
              }
            }

            ++v14;
          }

          while (v14 != a4);
        }
      }
    }
  }

LABEL_21:
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    v24 = *(v7 + 80);

    return pthread_mutex_unlock(v24);
  }

  return result;
}

uint64_t physx::NpPhysics::notifyDeletionListeners(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 152) == 1)
  {
    v7 = result;
    if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
    {
      result = pthread_mutex_lock(*(result + 80));
    }

    v8 = *(v7 + 140);
    if (v8)
    {
      v9 = 0;
      v10 = *(v7 + 96);
      v11 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
      v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
      v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
      v14 = (v13 >> 31) ^ v13;
      do
      {
        v15 = (v10 + 16 * v9);
        v16 = v15[1];
        if ((*(v16 + 56) & a4) != 0)
        {
          if (*(v16 + 57) == 1)
          {
            if (!*(v16 + 52))
            {
              goto LABEL_15;
            }

            v17 = *(*(v16 + 24) + 4 * ((*(v16 + 36) - 1) & v14));
            if (v17 == -1)
            {
              goto LABEL_15;
            }

            while (*(*(v16 + 8) + 8 * v17) != a2)
            {
              v17 = *(*(v16 + 16) + 4 * v17);
              if (v17 == -1)
              {
                goto LABEL_15;
              }
            }
          }

          result = (***v15)(*v15, a2, a3, a4);
        }

LABEL_15:
        ++v9;
      }

      while (v9 != v8);
    }

    if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
    {
      v18 = *(v7 + 80);

      return pthread_mutex_unlock(v18);
    }
  }

  return result;
}

void PxRegisterArticulations(physx::Dy *a1)
{
  physx::Dy::PxvRegisterArticulations(a1);
}

void PxRegisterArticulationsReducedCoordinate(physx::Dy *a1)
{
  physx::Dy::PxvRegisterArticulationsReducedCoordinate(a1);
}

uint64_t physx::shdfnd::Array<char,physx::shdfnd::ReflectionAllocator<char>>::resizeUninitialized(uint64_t result, unsigned int a2)
{
  v3 = result;
  if ((*(result + 12) & 0x7FFFFFFFu) < a2)
  {
    result = physx::shdfnd::Array<char,physx::shdfnd::ReflectionAllocator<char>>::recreate(result, a2);
  }

  *(v3 + 8) = a2;
  return result;
}

uint64_t physx::NpPtrTableStorageManager::allocate(pthread_mutex_t **this, unsigned int a2)
{
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_lock(this[1]);
  }

  if (a2 <= 0x20)
  {
    v4 = this[72];
    if (!v4)
    {
      v5 = physx::shdfnd::ReflectionAllocator<physx::NpPtrTableStorageManager::PtrBlock<4>>::allocate(*(this + 142), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsPool.h", 180);
      v6 = v5;
      v22 = v5;
      v7 = *(this + 138);
      if ((*(this + 139) & 0x7FFFFFFFu) <= v7)
      {
        physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::NpPtrTableStorageManager::PtrBlock<4>>>>::growAndPushBack((this + 3), &v22);
      }

      else
      {
        *(&this[68]->__sig + v7) = v5;
        *(this + 138) = v7 + 1;
      }

      v14 = v6 + 32 * *(this + 140) - 32;
      v4 = this[72];
      if (v14 >= v6)
      {
        v15 = (v6 + 32 * *(this + 140) - 32);
        do
        {
          *v15 = v4;
          v15 -= 4;
          v4 = v14;
          v14 = v15;
        }

        while (v15 >= v6);
        v4 = (v15 + 4);
      }
    }

    this[72] = *v4;
    ++*(this + 141);
    v16 = 0uLL;
LABEL_34:
    *v4 = v16;
    *(v4 + 16) = v16;
    goto LABEL_35;
  }

  if (a2 <= 0x80)
  {
    v4 = this[143];
    if (!v4)
    {
      v8 = physx::shdfnd::ReflectionAllocator<physx::NpPtrTableStorageManager::PtrBlock<16>>::allocate(*(this + 284), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsPool.h", 180);
      v9 = v8;
      v22 = v8;
      v10 = *(this + 280);
      if ((*(this + 281) & 0x7FFFFFFFu) <= v10)
      {
        physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::NpPtrTableStorageManager::PtrBlock<16>>>>::growAndPushBack((this + 74), &v22);
      }

      else
      {
        *(&this[139]->__sig + v10) = v8;
        *(this + 280) = v10 + 1;
      }

      v17 = v9 + (*(this + 282) << 7) - 128;
      v4 = this[143];
      if (v17 >= v9)
      {
        v18 = (v9 + (*(this + 282) << 7) - 128);
        do
        {
          *v18 = v4;
          v18 -= 16;
          v4 = v17;
          v17 = v18;
        }

        while (v18 >= v9);
        v4 = (v18 + 16);
      }
    }

    this[143] = *v4;
    ++*(this + 283);
    v16 = 0uLL;
    *(v4 + 32) = 0u;
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
    *(v4 + 80) = 0u;
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
    goto LABEL_34;
  }

  if (a2 <= 0x200)
  {
    v4 = this[214];
    if (!v4)
    {
      v11 = physx::shdfnd::ReflectionAllocator<physx::NpPtrTableStorageManager::PtrBlock<64>>::allocate(*(this + 426), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsPool.h", 180);
      v12 = v11;
      v22 = v11;
      v13 = *(this + 422);
      if ((*(this + 423) & 0x7FFFFFFFu) <= v13)
      {
        physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::NpPtrTableStorageManager::PtrBlock<64>>>>::growAndPushBack((this + 145), &v22);
      }

      else
      {
        *(&this[210]->__sig + v13) = v11;
        *(this + 422) = v13 + 1;
      }

      v19 = (v12 + (*(this + 424) << 9) - 512);
      v4 = this[214];
      if (v19 >= v12)
      {
        do
        {
          *v19 = v4;
          v20 = v19 - 64;
          v4 = v19;
          v19 = v20;
        }

        while (v20 >= v12);
        v4 = (v20 + 64);
      }
    }

    this[214] = *v4;
    ++*(this + 425);
    v16 = 0uLL;
    *(v4 + 32) = 0u;
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
    *(v4 + 80) = 0u;
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
    *(v4 + 128) = 0u;
    *(v4 + 144) = 0u;
    *(v4 + 160) = 0u;
    *(v4 + 176) = 0u;
    *(v4 + 192) = 0u;
    *(v4 + 208) = 0u;
    *(v4 + 224) = 0u;
    *(v4 + 240) = 0u;
    *(v4 + 256) = 0u;
    *(v4 + 272) = 0u;
    *(v4 + 288) = 0u;
    *(v4 + 304) = 0u;
    *(v4 + 320) = 0u;
    *(v4 + 336) = 0u;
    *(v4 + 352) = 0u;
    *(v4 + 368) = 0u;
    *(v4 + 384) = 0u;
    *(v4 + 400) = 0u;
    *(v4 + 416) = 0u;
    *(v4 + 432) = 0u;
    *(v4 + 448) = 0u;
    *(v4 + 464) = 0u;
    *(v4 + 480) = 0u;
    *(v4 + 496) = 0u;
    goto LABEL_34;
  }

  v4 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 8 * a2, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpPtrTableStorageManager.h", 60);
LABEL_35:
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_unlock(this[1]);
  }

  return v4;
}

uint64_t physx::NpPtrTableStorageManager::deallocate(uint64_t this, void **a2, unsigned int a3)
{
  v5 = this;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    this = pthread_mutex_lock(*(this + 8));
  }

  if (a3 > 0x20)
  {
    if (a3 > 0x80)
    {
      if (a3 > 0x200)
      {
        if (a2)
        {
          this = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, a2);
        }
      }

      else if (a2)
      {
        --*(v5 + 1700);
        *a2 = *(v5 + 1712);
        *(v5 + 1712) = a2;
      }
    }

    else if (a2)
    {
      --*(v5 + 1132);
      *a2 = *(v5 + 1144);
      *(v5 + 1144) = a2;
    }
  }

  else if (a2)
  {
    --*(v5 + 564);
    *a2 = *(v5 + 576);
    *(v5 + 576) = a2;
  }

  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    v6 = *(v5 + 8);

    return pthread_mutex_unlock(v6);
  }

  return this;
}

BOOL physx::NpPtrTableStorageManager::canReuse(physx::NpPtrTableStorageManager *this, unsigned int a2, unsigned int a3)
{
  if (a2 < 0x41)
  {
    v3 = 2;
  }

  else
  {
    v3 = 3;
  }

  if (a2 >= 0x11)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1;
  }

  if (a2 < 5)
  {
    v4 = 0;
  }

  if (a3 < 0x41)
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  if (a3 < 0x11)
  {
    v5 = 1;
  }

  if (a3 < 5)
  {
    v5 = 0;
  }

  return a3 < 0x41 && v4 == v5;
}

void physx::NpPtrTableStorageManager::~NpPtrTableStorageManager(physx::NpPtrTableStorageManager *this)
{
  physx::NpPtrTableStorageManager::~NpPtrTableStorageManager(this);
  if (v1)
  {
    v2 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

    v2();
  }
}

{
  *this = &unk_1F5D25398;
  if (*(this + 425))
  {
    v30 = 0;
    v31 = 0;
    v2 = *(this + 214);
    if (v2)
    {
      do
      {
        v29 = v2;
        v3 = v31;
        if ((HIDWORD(v31) & 0x7FFFFFFFu) <= v31)
        {
          physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::NpPtrTableStorageManager::PtrBlock<64>>>::growAndPushBack(&v30, &v29);
        }

        else
        {
          *(v30 + 8 * v31) = v2;
          LODWORD(v31) = v3 + 1;
        }

        v2 = **(this + 214);
        *(this + 214) = v2;
      }

      while (v2);
      v4 = v30;
      v5 = v31;
      v6 = HIDWORD(v31);
    }

    else
    {
      v6 = 0;
      v5 = 0;
      v4 = 0;
    }

    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::NpPtrTableStorageManager::PtrBlock<64>>>(v4, v5);
    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::NpPtrTableStorageManager::PtrBlock<64>>>(*(this + 210), *(this + 422));
    if ((v6 & 0x80000000) == 0 && (v6 & 0x7FFFFFFF) != 0 && v4)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v4);
    }
  }

  v7 = *(this + 210);
  v8 = *(this + 422);
  if (v8)
  {
    v9 = 8 * v8;
    do
    {
      if (*v7)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      }

      v7 = (v7 + 8);
      v9 -= 8;
    }

    while (v9);
    v7 = *(this + 210);
  }

  v10 = *(this + 423);
  if ((v10 & 0x80000000) == 0 && (v10 & 0x7FFFFFFF) != 0)
  {
    if (v7 == (this + 1160))
    {
      *(this + 1672) = 0;
    }

    else if (v7)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v7);
    }
  }

  if (*(this + 283))
  {
    v30 = 0;
    v31 = 0;
    v11 = *(this + 143);
    if (v11)
    {
      do
      {
        v29 = v11;
        v12 = v31;
        if ((HIDWORD(v31) & 0x7FFFFFFFu) <= v31)
        {
          physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::NpPtrTableStorageManager::PtrBlock<16>>>::growAndPushBack(&v30, &v29);
        }

        else
        {
          *(v30 + 8 * v31) = v11;
          LODWORD(v31) = v12 + 1;
        }

        v11 = **(this + 143);
        *(this + 143) = v11;
      }

      while (v11);
      v13 = v30;
      v14 = v31;
      v15 = HIDWORD(v31);
    }

    else
    {
      v15 = 0;
      v14 = 0;
      v13 = 0;
    }

    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::NpPtrTableStorageManager::PtrBlock<16>>>(v13, v14);
    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::NpPtrTableStorageManager::PtrBlock<16>>>(*(this + 139), *(this + 280));
    if ((v15 & 0x80000000) == 0 && (v15 & 0x7FFFFFFF) != 0 && v13)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v13);
    }
  }

  v16 = *(this + 139);
  v17 = *(this + 280);
  if (v17)
  {
    v18 = 8 * v17;
    do
    {
      if (*v16)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      }

      v16 = (v16 + 8);
      v18 -= 8;
    }

    while (v18);
    v16 = *(this + 139);
  }

  v19 = *(this + 281);
  if ((v19 & 0x80000000) == 0 && (v19 & 0x7FFFFFFF) != 0)
  {
    if (v16 == (this + 592))
    {
      *(this + 1104) = 0;
    }

    else if (v16)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v16);
    }
  }

  if (*(this + 141))
  {
    v30 = 0;
    v31 = 0;
    v20 = *(this + 72);
    if (v20)
    {
      do
      {
        v29 = v20;
        v21 = v31;
        if ((HIDWORD(v31) & 0x7FFFFFFFu) <= v31)
        {
          physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::NpPtrTableStorageManager::PtrBlock<4>>>::growAndPushBack(&v30, &v29);
        }

        else
        {
          *(v30 + 8 * v31) = v20;
          LODWORD(v31) = v21 + 1;
        }

        v20 = **(this + 72);
        *(this + 72) = v20;
      }

      while (v20);
      v22 = v30;
      v23 = v31;
      v24 = HIDWORD(v31);
    }

    else
    {
      v24 = 0;
      v23 = 0;
      v22 = 0;
    }

    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::NpPtrTableStorageManager::PtrBlock<4>>>(v22, v23);
    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::NpPtrTableStorageManager::PtrBlock<4>>>(*(this + 68), *(this + 138));
    if ((v24 & 0x80000000) == 0 && (v24 & 0x7FFFFFFF) != 0 && v22)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v22);
    }
  }

  v25 = *(this + 68);
  v26 = *(this + 138);
  if (v26)
  {
    v27 = 8 * v26;
    do
    {
      if (*v25)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      }

      v25 = (v25 + 8);
      v27 -= 8;
    }

    while (v27);
    v25 = *(this + 68);
  }

  v28 = *(this + 139);
  if ((v28 & 0x80000000) == 0 && (v28 & 0x7FFFFFFF) != 0)
  {
    if (v25 == (this + 24))
    {
      *(this + 536) = 0;
    }

    else if (v25)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v25);
    }
  }

  physx::shdfnd::MutexT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>>::~MutexT(this + 1);
}

uint64_t physx::shdfnd::ReflectionAllocator<physx::NpPtrTableStorageManager::PtrBlock<4>>::allocate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    v6 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::NpPtrTableStorageManager::PtrBlock<4>>::getName() [T = physx::NpPtrTableStorageManager::PtrBlock<4>]";
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

uint64_t physx::shdfnd::ReflectionAllocator<physx::NpPtrTableStorageManager::PtrBlock<16>>::allocate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    v6 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::NpPtrTableStorageManager::PtrBlock<16>>::getName() [T = physx::NpPtrTableStorageManager::PtrBlock<16>]";
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

uint64_t physx::shdfnd::ReflectionAllocator<physx::NpPtrTableStorageManager::PtrBlock<64>>::allocate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    v6 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::NpPtrTableStorageManager::PtrBlock<64>>::getName() [T = physx::NpPtrTableStorageManager::PtrBlock<64>]";
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

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::NpPtrTableStorageManager::PtrBlock<4>>>>::growAndPushBack(uint64_t result, void *a2)
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
    result = (8 * v5);
    if (result > 0x200 || (*(v3 + 512) & 1) != 0)
    {
      result = physx::shdfnd::ReflectionAllocator<physx::NpPtrTableStorageManager::PtrBlock<4>>::allocate(result, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
      v6 = result;
    }

    else
    {
      *(v3 + 512) = 1;
      v6 = v3;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 528);
  v8 = &v6[v7];
  if (v7)
  {
    v9 = *(v3 + 520);
    v10 = v6;
    do
    {
      v11 = *v9++;
      *v10++ = v11;
    }

    while (v10 < v8);
  }

  *v8 = *a2;
  if ((*(v3 + 532) & 0x80000000) == 0)
  {
    v12 = *(v3 + 520);
    if (v12 == v3)
    {
      *(v3 + 512) = 0;
    }

    else if (v12)
    {
      result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      LODWORD(v7) = *(v3 + 528);
    }
  }

  *(v3 + 520) = v6;
  *(v3 + 532) = v5;
  *(v3 + 528) = v7 + 1;
  return result;
}

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::NpPtrTableStorageManager::PtrBlock<16>>>>::growAndPushBack(uint64_t result, void *a2)
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
    result = (8 * v5);
    if (result > 0x200 || (*(v3 + 512) & 1) != 0)
    {
      result = physx::shdfnd::ReflectionAllocator<physx::NpPtrTableStorageManager::PtrBlock<16>>::allocate(result, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
      v6 = result;
    }

    else
    {
      *(v3 + 512) = 1;
      v6 = v3;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 528);
  v8 = &v6[v7];
  if (v7)
  {
    v9 = *(v3 + 520);
    v10 = v6;
    do
    {
      v11 = *v9++;
      *v10++ = v11;
    }

    while (v10 < v8);
  }

  *v8 = *a2;
  if ((*(v3 + 532) & 0x80000000) == 0)
  {
    v12 = *(v3 + 520);
    if (v12 == v3)
    {
      *(v3 + 512) = 0;
    }

    else if (v12)
    {
      result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      LODWORD(v7) = *(v3 + 528);
    }
  }

  *(v3 + 520) = v6;
  *(v3 + 532) = v5;
  *(v3 + 528) = v7 + 1;
  return result;
}

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::NpPtrTableStorageManager::PtrBlock<64>>>>::growAndPushBack(uint64_t result, void *a2)
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
    result = (8 * v5);
    if (result > 0x200 || (*(v3 + 512) & 1) != 0)
    {
      result = physx::shdfnd::ReflectionAllocator<physx::NpPtrTableStorageManager::PtrBlock<64>>::allocate(result, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
      v6 = result;
    }

    else
    {
      *(v3 + 512) = 1;
      v6 = v3;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 528);
  v8 = &v6[v7];
  if (v7)
  {
    v9 = *(v3 + 520);
    v10 = v6;
    do
    {
      v11 = *v9++;
      *v10++ = v11;
    }

    while (v10 < v8);
  }

  *v8 = *a2;
  if ((*(v3 + 532) & 0x80000000) == 0)
  {
    v12 = *(v3 + 520);
    if (v12 == v3)
    {
      *(v3 + 512) = 0;
    }

    else if (v12)
    {
      result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      LODWORD(v7) = *(v3 + 528);
    }
  }

  *(v3 + 520) = v6;
  *(v3 + 532) = v5;
  *(v3 + 528) = v7 + 1;
  return result;
}

void physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::NpPtrTableStorageManager::PtrBlock<64>>>(uint64_t a1, int a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v38 = 0;
  v37 = v39;
  v34 = 0x2000000000;
  v35 = v39;
  v36 = 0;
  v2 = a2 - 1;
  if (a2 - 1 < 1)
  {
    return;
  }

  v4 = 0;
  v5 = a1 + 8;
  v6 = v39;
  memset(v39, 0, sizeof(v39));
  while (1)
  {
    while (1)
    {
      if (v2 <= v4)
      {
        goto LABEL_34;
      }

      if ((v2 - v4) <= 4)
      {
        break;
      }

      v7 = (v4 + v2 + ((v4 + v2) >> 31)) >> 1;
      v8 = *(a1 + 8 * ((v4 + v2) / 2));
      v9 = *(a1 + 8 * v4);
      if (v8 < v9)
      {
        *(a1 + 8 * v4) = v8;
        *(a1 + 8 * v7) = v9;
        v8 = v9;
        v9 = *(a1 + 8 * v4);
      }

      v10 = (a1 + 8 * v2);
      if (*v10 >= v9)
      {
        v9 = *v10;
      }

      else
      {
        *(a1 + 8 * v4) = *v10;
        *v10 = v9;
        v8 = *(a1 + 8 * v7);
      }

      if (v9 < v8)
      {
        *(a1 + 8 * v7) = v9;
        *v10 = v8;
        v8 = *(a1 + 8 * v7);
      }

      *(a1 + 8 * v7) = *(v10 - 1);
      *(v10 - 1) = v8;
      v11 = v2 - 1;
      v12 = v4;
      LODWORD(v13) = v2 - 1;
      while (1)
      {
        v14 = 0;
        v15 = v12;
        v16 = (a1 + 8 * v12);
        do
        {
          v18 = v16[1];
          ++v16;
          v17 = v18;
          ++v14;
        }

        while (v18 < v8);
        v13 = v13;
        do
        {
          v19 = a1 + 8 * v13--;
          v20 = *(v19 - 8);
        }

        while (v8 < v20);
        if (v15 + v14 >= v13)
        {
          break;
        }

        *v16 = v20;
        *(a1 + 8 * v13) = v17;
        v8 = *(a1 + 8 * v11);
        v12 = v14 + v15;
      }

      *v16 = v8;
      *(a1 + 8 * v11) = v17;
      v21 = v34;
      v22 = HIDWORD(v34) - 1;
      if (v15 - v4 + v14 >= v2 - v15 - v14)
      {
        if (v34 >= v22)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::NpPtrTableStorageManager::PtrBlock<64>>>::grow(v33);
          v21 = v34;
          v6 = v35;
        }

        LODWORD(v34) = v21 + 1;
        *(v6 + v21) = v14 + v15 + 1;
        v24 = v34;
        LODWORD(v34) = v34 + 1;
        *(v6 + v24) = v2;
        v2 = v15 + v14 - 1;
      }

      else
      {
        if (v34 >= v22)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::NpPtrTableStorageManager::PtrBlock<64>>>::grow(v33);
          v21 = v34;
          v6 = v35;
        }

        LODWORD(v34) = v21 + 1;
        *(v6 + v21) = v4;
        v23 = v34;
        LODWORD(v34) = v34 + 1;
        *(v6 + v23) = v15 - 1 + v14;
        v4 = v15 + v14 + 1;
      }
    }

    v25 = v4;
    v26 = v4 + 1;
    do
    {
      v27 = v25++;
      v28 = v26;
      v29 = v27;
      v30 = v27;
      do
      {
        if (*(v5 + 8 * v29) < *(a1 + 8 * v30))
        {
          v30 = v28;
        }

        ++v29;
        ++v28;
      }

      while (v29 < v2);
      if (v30 != v27)
      {
        v31 = *(a1 + 8 * v30);
        *(a1 + 8 * v30) = *(a1 + 8 * v27);
        *(a1 + 8 * v27) = v31;
      }

      ++v26;
    }

    while (v25 != v2);
LABEL_34:
    v32 = v34;
    if (!v34)
    {
      break;
    }

    LODWORD(v34) = v34 - 1;
    v2 = *(v6 + (v32 - 1));
    LODWORD(v34) = v32 - 2;
    v4 = *(v6 + (v32 - 2));
  }

  if (v36)
  {
    if (v6)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      if (v38)
      {
        physx::shdfnd::TempAllocator::deallocate(&v37, v37);
      }
    }
  }
}

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::NpPtrTableStorageManager::PtrBlock<64>>>::growAndPushBack(uint64_t result, void *a2)
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
    result = physx::shdfnd::ReflectionAllocator<physx::NpPtrTableStorageManager::PtrBlock<64>>::allocate(8 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 8);
  v8 = &v6[v7];
  if (v7)
  {
    v9 = *v3;
    v10 = v6;
    do
    {
      v11 = *v9++;
      *v10++ = v11;
    }

    while (v10 < v8);
  }

  *v8 = *a2;
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    LODWORD(v7) = *(v3 + 8);
  }

  *v3 = v6;
  *(v3 + 8) = v7 + 1;
  *(v3 + 12) = v5;
  return result;
}

void *physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::NpPtrTableStorageManager::PtrBlock<64>>>::grow(uint64_t a1)
{
  v2 = 2 * *(a1 + 8);
  *(a1 + 8) = v2;
  v3 = physx::shdfnd::ReflectionAllocator<physx::NpPtrTableStorageManager::PtrBlock<64>>::allocate(4 * v2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsSortInternals.h", 155);
  result = memcpy(v3, *(a1 + 16), (4 * *(a1 + 4)));
  if (*(a1 + 24) == 1 && *(a1 + 16))
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *(a1 + 24) = 1;
  *(a1 + 16) = v3;
  return result;
}

void physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::NpPtrTableStorageManager::PtrBlock<16>>>(uint64_t a1, int a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v38 = 0;
  v37 = v39;
  v34 = 0x2000000000;
  v35 = v39;
  v36 = 0;
  v2 = a2 - 1;
  if (a2 - 1 < 1)
  {
    return;
  }

  v4 = 0;
  v5 = a1 + 8;
  v6 = v39;
  memset(v39, 0, sizeof(v39));
  while (1)
  {
    while (1)
    {
      if (v2 <= v4)
      {
        goto LABEL_34;
      }

      if ((v2 - v4) <= 4)
      {
        break;
      }

      v7 = (v4 + v2 + ((v4 + v2) >> 31)) >> 1;
      v8 = *(a1 + 8 * ((v4 + v2) / 2));
      v9 = *(a1 + 8 * v4);
      if (v8 < v9)
      {
        *(a1 + 8 * v4) = v8;
        *(a1 + 8 * v7) = v9;
        v8 = v9;
        v9 = *(a1 + 8 * v4);
      }

      v10 = (a1 + 8 * v2);
      if (*v10 >= v9)
      {
        v9 = *v10;
      }

      else
      {
        *(a1 + 8 * v4) = *v10;
        *v10 = v9;
        v8 = *(a1 + 8 * v7);
      }

      if (v9 < v8)
      {
        *(a1 + 8 * v7) = v9;
        *v10 = v8;
        v8 = *(a1 + 8 * v7);
      }

      *(a1 + 8 * v7) = *(v10 - 1);
      *(v10 - 1) = v8;
      v11 = v2 - 1;
      v12 = v4;
      LODWORD(v13) = v2 - 1;
      while (1)
      {
        v14 = 0;
        v15 = v12;
        v16 = (a1 + 8 * v12);
        do
        {
          v18 = v16[1];
          ++v16;
          v17 = v18;
          ++v14;
        }

        while (v18 < v8);
        v13 = v13;
        do
        {
          v19 = a1 + 8 * v13--;
          v20 = *(v19 - 8);
        }

        while (v8 < v20);
        if (v15 + v14 >= v13)
        {
          break;
        }

        *v16 = v20;
        *(a1 + 8 * v13) = v17;
        v8 = *(a1 + 8 * v11);
        v12 = v14 + v15;
      }

      *v16 = v8;
      *(a1 + 8 * v11) = v17;
      v21 = v34;
      v22 = HIDWORD(v34) - 1;
      if (v15 - v4 + v14 >= v2 - v15 - v14)
      {
        if (v34 >= v22)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::NpPtrTableStorageManager::PtrBlock<16>>>::grow(v33);
          v21 = v34;
          v6 = v35;
        }

        LODWORD(v34) = v21 + 1;
        *(v6 + v21) = v14 + v15 + 1;
        v24 = v34;
        LODWORD(v34) = v34 + 1;
        *(v6 + v24) = v2;
        v2 = v15 + v14 - 1;
      }

      else
      {
        if (v34 >= v22)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::NpPtrTableStorageManager::PtrBlock<16>>>::grow(v33);
          v21 = v34;
          v6 = v35;
        }

        LODWORD(v34) = v21 + 1;
        *(v6 + v21) = v4;
        v23 = v34;
        LODWORD(v34) = v34 + 1;
        *(v6 + v23) = v15 - 1 + v14;
        v4 = v15 + v14 + 1;
      }
    }

    v25 = v4;
    v26 = v4 + 1;
    do
    {
      v27 = v25++;
      v28 = v26;
      v29 = v27;
      v30 = v27;
      do
      {
        if (*(v5 + 8 * v29) < *(a1 + 8 * v30))
        {
          v30 = v28;
        }

        ++v29;
        ++v28;
      }

      while (v29 < v2);
      if (v30 != v27)
      {
        v31 = *(a1 + 8 * v30);
        *(a1 + 8 * v30) = *(a1 + 8 * v27);
        *(a1 + 8 * v27) = v31;
      }

      ++v26;
    }

    while (v25 != v2);
LABEL_34:
    v32 = v34;
    if (!v34)
    {
      break;
    }

    LODWORD(v34) = v34 - 1;
    v2 = *(v6 + (v32 - 1));
    LODWORD(v34) = v32 - 2;
    v4 = *(v6 + (v32 - 2));
  }

  if (v36)
  {
    if (v6)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      if (v38)
      {
        physx::shdfnd::TempAllocator::deallocate(&v37, v37);
      }
    }
  }
}

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::NpPtrTableStorageManager::PtrBlock<16>>>::growAndPushBack(uint64_t result, void *a2)
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
    result = physx::shdfnd::ReflectionAllocator<physx::NpPtrTableStorageManager::PtrBlock<16>>::allocate(8 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 8);
  v8 = &v6[v7];
  if (v7)
  {
    v9 = *v3;
    v10 = v6;
    do
    {
      v11 = *v9++;
      *v10++ = v11;
    }

    while (v10 < v8);
  }

  *v8 = *a2;
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    LODWORD(v7) = *(v3 + 8);
  }

  *v3 = v6;
  *(v3 + 8) = v7 + 1;
  *(v3 + 12) = v5;
  return result;
}

void *physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::NpPtrTableStorageManager::PtrBlock<16>>>::grow(uint64_t a1)
{
  v2 = 2 * *(a1 + 8);
  *(a1 + 8) = v2;
  v3 = physx::shdfnd::ReflectionAllocator<physx::NpPtrTableStorageManager::PtrBlock<16>>::allocate(4 * v2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsSortInternals.h", 155);
  result = memcpy(v3, *(a1 + 16), (4 * *(a1 + 4)));
  if (*(a1 + 24) == 1 && *(a1 + 16))
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *(a1 + 24) = 1;
  *(a1 + 16) = v3;
  return result;
}

void physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::NpPtrTableStorageManager::PtrBlock<4>>>(uint64_t a1, int a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v38 = 0;
  v37 = v39;
  v34 = 0x2000000000;
  v35 = v39;
  v36 = 0;
  v2 = a2 - 1;
  if (a2 - 1 < 1)
  {
    return;
  }

  v4 = 0;
  v5 = a1 + 8;
  v6 = v39;
  memset(v39, 0, sizeof(v39));
  while (1)
  {
    while (1)
    {
      if (v2 <= v4)
      {
        goto LABEL_34;
      }

      if ((v2 - v4) <= 4)
      {
        break;
      }

      v7 = (v4 + v2 + ((v4 + v2) >> 31)) >> 1;
      v8 = *(a1 + 8 * ((v4 + v2) / 2));
      v9 = *(a1 + 8 * v4);
      if (v8 < v9)
      {
        *(a1 + 8 * v4) = v8;
        *(a1 + 8 * v7) = v9;
        v8 = v9;
        v9 = *(a1 + 8 * v4);
      }

      v10 = (a1 + 8 * v2);
      if (*v10 >= v9)
      {
        v9 = *v10;
      }

      else
      {
        *(a1 + 8 * v4) = *v10;
        *v10 = v9;
        v8 = *(a1 + 8 * v7);
      }

      if (v9 < v8)
      {
        *(a1 + 8 * v7) = v9;
        *v10 = v8;
        v8 = *(a1 + 8 * v7);
      }

      *(a1 + 8 * v7) = *(v10 - 1);
      *(v10 - 1) = v8;
      v11 = v2 - 1;
      v12 = v4;
      LODWORD(v13) = v2 - 1;
      while (1)
      {
        v14 = 0;
        v15 = v12;
        v16 = (a1 + 8 * v12);
        do
        {
          v18 = v16[1];
          ++v16;
          v17 = v18;
          ++v14;
        }

        while (v18 < v8);
        v13 = v13;
        do
        {
          v19 = a1 + 8 * v13--;
          v20 = *(v19 - 8);
        }

        while (v8 < v20);
        if (v15 + v14 >= v13)
        {
          break;
        }

        *v16 = v20;
        *(a1 + 8 * v13) = v17;
        v8 = *(a1 + 8 * v11);
        v12 = v14 + v15;
      }

      *v16 = v8;
      *(a1 + 8 * v11) = v17;
      v21 = v34;
      v22 = HIDWORD(v34) - 1;
      if (v15 - v4 + v14 >= v2 - v15 - v14)
      {
        if (v34 >= v22)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::NpPtrTableStorageManager::PtrBlock<4>>>::grow(v33);
          v21 = v34;
          v6 = v35;
        }

        LODWORD(v34) = v21 + 1;
        *(v6 + v21) = v14 + v15 + 1;
        v24 = v34;
        LODWORD(v34) = v34 + 1;
        *(v6 + v24) = v2;
        v2 = v15 + v14 - 1;
      }

      else
      {
        if (v34 >= v22)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::NpPtrTableStorageManager::PtrBlock<4>>>::grow(v33);
          v21 = v34;
          v6 = v35;
        }

        LODWORD(v34) = v21 + 1;
        *(v6 + v21) = v4;
        v23 = v34;
        LODWORD(v34) = v34 + 1;
        *(v6 + v23) = v15 - 1 + v14;
        v4 = v15 + v14 + 1;
      }
    }

    v25 = v4;
    v26 = v4 + 1;
    do
    {
      v27 = v25++;
      v28 = v26;
      v29 = v27;
      v30 = v27;
      do
      {
        if (*(v5 + 8 * v29) < *(a1 + 8 * v30))
        {
          v30 = v28;
        }

        ++v29;
        ++v28;
      }

      while (v29 < v2);
      if (v30 != v27)
      {
        v31 = *(a1 + 8 * v30);
        *(a1 + 8 * v30) = *(a1 + 8 * v27);
        *(a1 + 8 * v27) = v31;
      }

      ++v26;
    }

    while (v25 != v2);
LABEL_34:
    v32 = v34;
    if (!v34)
    {
      break;
    }

    LODWORD(v34) = v34 - 1;
    v2 = *(v6 + (v32 - 1));
    LODWORD(v34) = v32 - 2;
    v4 = *(v6 + (v32 - 2));
  }

  if (v36)
  {
    if (v6)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      if (v38)
      {
        physx::shdfnd::TempAllocator::deallocate(&v37, v37);
      }
    }
  }
}

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::NpPtrTableStorageManager::PtrBlock<4>>>::growAndPushBack(uint64_t result, void *a2)
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
    result = physx::shdfnd::ReflectionAllocator<physx::NpPtrTableStorageManager::PtrBlock<4>>::allocate(8 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 8);
  v8 = &v6[v7];
  if (v7)
  {
    v9 = *v3;
    v10 = v6;
    do
    {
      v11 = *v9++;
      *v10++ = v11;
    }

    while (v10 < v8);
  }

  *v8 = *a2;
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    LODWORD(v7) = *(v3 + 8);
  }

  *v3 = v6;
  *(v3 + 8) = v7 + 1;
  *(v3 + 12) = v5;
  return result;
}

void *physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::NpPtrTableStorageManager::PtrBlock<4>>>::grow(uint64_t a1)
{
  v2 = 2 * *(a1 + 8);
  *(a1 + 8) = v2;
  v3 = physx::shdfnd::ReflectionAllocator<physx::NpPtrTableStorageManager::PtrBlock<4>>::allocate(4 * v2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsSortInternals.h", 155);
  result = memcpy(v3, *(a1 + 16), (4 * *(a1 + 4)));
  if (*(a1 + 24) == 1 && *(a1 + 16))
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *(a1 + 24) = 1;
  *(a1 + 16) = v3;
  return result;
}

void physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::NpArticulationJointReducedCoordinate>>(uint64_t a1, int a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v38 = 0;
  v37 = v39;
  v34 = 0x2000000000;
  v35 = v39;
  v36 = 0;
  v2 = a2 - 1;
  if (a2 - 1 < 1)
  {
    return;
  }

  v4 = 0;
  v5 = a1 + 8;
  v6 = v39;
  memset(v39, 0, sizeof(v39));
  while (1)
  {
    while (1)
    {
      if (v2 <= v4)
      {
        goto LABEL_34;
      }

      if ((v2 - v4) <= 4)
      {
        break;
      }

      v7 = (v4 + v2 + ((v4 + v2) >> 31)) >> 1;
      v8 = *(a1 + 8 * ((v4 + v2) / 2));
      v9 = *(a1 + 8 * v4);
      if (v8 < v9)
      {
        *(a1 + 8 * v4) = v8;
        *(a1 + 8 * v7) = v9;
        v8 = v9;
        v9 = *(a1 + 8 * v4);
      }

      v10 = (a1 + 8 * v2);
      if (*v10 >= v9)
      {
        v9 = *v10;
      }

      else
      {
        *(a1 + 8 * v4) = *v10;
        *v10 = v9;
        v8 = *(a1 + 8 * v7);
      }

      if (v9 < v8)
      {
        *(a1 + 8 * v7) = v9;
        *v10 = v8;
        v8 = *(a1 + 8 * v7);
      }

      *(a1 + 8 * v7) = *(v10 - 1);
      *(v10 - 1) = v8;
      v11 = v2 - 1;
      v12 = v4;
      LODWORD(v13) = v2 - 1;
      while (1)
      {
        v14 = 0;
        v15 = v12;
        v16 = (a1 + 8 * v12);
        do
        {
          v18 = v16[1];
          ++v16;
          v17 = v18;
          ++v14;
        }

        while (v18 < v8);
        v13 = v13;
        do
        {
          v19 = a1 + 8 * v13--;
          v20 = *(v19 - 8);
        }

        while (v8 < v20);
        if (v15 + v14 >= v13)
        {
          break;
        }

        *v16 = v20;
        *(a1 + 8 * v13) = v17;
        v8 = *(a1 + 8 * v11);
        v12 = v14 + v15;
      }

      *v16 = v8;
      *(a1 + 8 * v11) = v17;
      v21 = v34;
      v22 = HIDWORD(v34) - 1;
      if (v15 - v4 + v14 >= v2 - v15 - v14)
      {
        if (v34 >= v22)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::NpArticulationJointReducedCoordinate>>::grow(v33);
          v21 = v34;
          v6 = v35;
        }

        LODWORD(v34) = v21 + 1;
        *(v6 + v21) = v14 + v15 + 1;
        v24 = v34;
        LODWORD(v34) = v34 + 1;
        *(v6 + v24) = v2;
        v2 = v15 + v14 - 1;
      }

      else
      {
        if (v34 >= v22)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::NpArticulationJointReducedCoordinate>>::grow(v33);
          v21 = v34;
          v6 = v35;
        }

        LODWORD(v34) = v21 + 1;
        *(v6 + v21) = v4;
        v23 = v34;
        LODWORD(v34) = v34 + 1;
        *(v6 + v23) = v15 - 1 + v14;
        v4 = v15 + v14 + 1;
      }
    }

    v25 = v4;
    v26 = v4 + 1;
    do
    {
      v27 = v25++;
      v28 = v26;
      v29 = v27;
      v30 = v27;
      do
      {
        if (*(v5 + 8 * v29) < *(a1 + 8 * v30))
        {
          v30 = v28;
        }

        ++v29;
        ++v28;
      }

      while (v29 < v2);
      if (v30 != v27)
      {
        v31 = *(a1 + 8 * v30);
        *(a1 + 8 * v30) = *(a1 + 8 * v27);
        *(a1 + 8 * v27) = v31;
      }

      ++v26;
    }

    while (v25 != v2);
LABEL_34:
    v32 = v34;
    if (!v34)
    {
      break;
    }

    LODWORD(v34) = v34 - 1;
    v2 = *(v6 + (v32 - 1));
    LODWORD(v34) = v32 - 2;
    v4 = *(v6 + (v32 - 2));
  }

  if (v36)
  {
    if (v6)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      if (v38)
      {
        physx::shdfnd::TempAllocator::deallocate(&v37, v37);
      }
    }
  }
}

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::NpArticulationJointReducedCoordinate>>::growAndPushBack(uint64_t result, void *a2)
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
    result = physx::shdfnd::ReflectionAllocator<physx::NpArticulationJointReducedCoordinate>::allocate(result, 8 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 8);
  v8 = &v6[v7];
  if (v7)
  {
    v9 = *v3;
    v10 = v6;
    do
    {
      v11 = *v9++;
      *v10++ = v11;
    }

    while (v10 < v8);
  }

  *v8 = *a2;
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    LODWORD(v7) = *(v3 + 8);
  }

  *v3 = v6;
  *(v3 + 8) = v7 + 1;
  *(v3 + 12) = v5;
  return result;
}

uint64_t physx::shdfnd::ReflectionAllocator<physx::NpArticulationJointReducedCoordinate>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::NpArticulationJointReducedCoordinate>::getName() [T = physx::NpArticulationJointReducedCoordinate]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

void *physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::NpArticulationJointReducedCoordinate>>::grow(uint64_t a1)
{
  v2 = 2 * *(a1 + 8);
  *(a1 + 8) = v2;
  v3 = physx::shdfnd::ReflectionAllocator<physx::NpArticulationJointReducedCoordinate>::allocate(a1, 4 * v2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsSortInternals.h", 155);
  result = memcpy(v3, *(a1 + 16), (4 * *(a1 + 4)));
  if (*(a1 + 24) == 1 && *(a1 + 16))
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *(a1 + 24) = 1;
  *(a1 + 16) = v3;
  return result;
}

void physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::NpArticulationJoint>>(uint64_t a1, int a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v38 = 0;
  v37 = v39;
  v34 = 0x2000000000;
  v35 = v39;
  v36 = 0;
  v2 = a2 - 1;
  if (a2 - 1 < 1)
  {
    return;
  }

  v4 = 0;
  v5 = a1 + 8;
  v6 = v39;
  memset(v39, 0, sizeof(v39));
  while (1)
  {
    while (1)
    {
      if (v2 <= v4)
      {
        goto LABEL_34;
      }

      if ((v2 - v4) <= 4)
      {
        break;
      }

      v7 = (v4 + v2 + ((v4 + v2) >> 31)) >> 1;
      v8 = *(a1 + 8 * ((v4 + v2) / 2));
      v9 = *(a1 + 8 * v4);
      if (v8 < v9)
      {
        *(a1 + 8 * v4) = v8;
        *(a1 + 8 * v7) = v9;
        v8 = v9;
        v9 = *(a1 + 8 * v4);
      }

      v10 = (a1 + 8 * v2);
      if (*v10 >= v9)
      {
        v9 = *v10;
      }

      else
      {
        *(a1 + 8 * v4) = *v10;
        *v10 = v9;
        v8 = *(a1 + 8 * v7);
      }

      if (v9 < v8)
      {
        *(a1 + 8 * v7) = v9;
        *v10 = v8;
        v8 = *(a1 + 8 * v7);
      }

      *(a1 + 8 * v7) = *(v10 - 1);
      *(v10 - 1) = v8;
      v11 = v2 - 1;
      v12 = v4;
      LODWORD(v13) = v2 - 1;
      while (1)
      {
        v14 = 0;
        v15 = v12;
        v16 = (a1 + 8 * v12);
        do
        {
          v18 = v16[1];
          ++v16;
          v17 = v18;
          ++v14;
        }

        while (v18 < v8);
        v13 = v13;
        do
        {
          v19 = a1 + 8 * v13--;
          v20 = *(v19 - 8);
        }

        while (v8 < v20);
        if (v15 + v14 >= v13)
        {
          break;
        }

        *v16 = v20;
        *(a1 + 8 * v13) = v17;
        v8 = *(a1 + 8 * v11);
        v12 = v14 + v15;
      }

      *v16 = v8;
      *(a1 + 8 * v11) = v17;
      v21 = v34;
      v22 = HIDWORD(v34) - 1;
      if (v15 - v4 + v14 >= v2 - v15 - v14)
      {
        if (v34 >= v22)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::NpArticulationJoint>>::grow(v33);
          v21 = v34;
          v6 = v35;
        }

        LODWORD(v34) = v21 + 1;
        *(v6 + v21) = v14 + v15 + 1;
        v24 = v34;
        LODWORD(v34) = v34 + 1;
        *(v6 + v24) = v2;
        v2 = v15 + v14 - 1;
      }

      else
      {
        if (v34 >= v22)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::NpArticulationJoint>>::grow(v33);
          v21 = v34;
          v6 = v35;
        }

        LODWORD(v34) = v21 + 1;
        *(v6 + v21) = v4;
        v23 = v34;
        LODWORD(v34) = v34 + 1;
        *(v6 + v23) = v15 - 1 + v14;
        v4 = v15 + v14 + 1;
      }
    }

    v25 = v4;
    v26 = v4 + 1;
    do
    {
      v27 = v25++;
      v28 = v26;
      v29 = v27;
      v30 = v27;
      do
      {
        if (*(v5 + 8 * v29) < *(a1 + 8 * v30))
        {
          v30 = v28;
        }

        ++v29;
        ++v28;
      }

      while (v29 < v2);
      if (v30 != v27)
      {
        v31 = *(a1 + 8 * v30);
        *(a1 + 8 * v30) = *(a1 + 8 * v27);
        *(a1 + 8 * v27) = v31;
      }

      ++v26;
    }

    while (v25 != v2);
LABEL_34:
    v32 = v34;
    if (!v34)
    {
      break;
    }

    LODWORD(v34) = v34 - 1;
    v2 = *(v6 + (v32 - 1));
    LODWORD(v34) = v32 - 2;
    v4 = *(v6 + (v32 - 2));
  }

  if (v36)
  {
    if (v6)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      if (v38)
      {
        physx::shdfnd::TempAllocator::deallocate(&v37, v37);
      }
    }
  }
}

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::NpArticulationJoint>>::growAndPushBack(uint64_t result, void *a2)
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
    result = physx::shdfnd::ReflectionAllocator<physx::NpArticulationJoint>::allocate(result, 8 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 8);
  v8 = &v6[v7];
  if (v7)
  {
    v9 = *v3;
    v10 = v6;
    do
    {
      v11 = *v9++;
      *v10++ = v11;
    }

    while (v10 < v8);
  }

  *v8 = *a2;
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    LODWORD(v7) = *(v3 + 8);
  }

  *v3 = v6;
  *(v3 + 8) = v7 + 1;
  *(v3 + 12) = v5;
  return result;
}

uint64_t physx::shdfnd::ReflectionAllocator<physx::NpArticulationJoint>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::NpArticulationJoint>::getName() [T = physx::NpArticulationJoint]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

void *physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::NpArticulationJoint>>::grow(uint64_t a1)
{
  v2 = 2 * *(a1 + 8);
  *(a1 + 8) = v2;
  v3 = physx::shdfnd::ReflectionAllocator<physx::NpArticulationJoint>::allocate(a1, 4 * v2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsSortInternals.h", 155);
  result = memcpy(v3, *(a1 + 16), (4 * *(a1 + 4)));
  if (*(a1 + 24) == 1 && *(a1 + 16))
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *(a1 + 24) = 1;
  *(a1 + 16) = v3;
  return result;
}

void physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::NpArticulationLink>>(uint64_t a1, int a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v38 = 0;
  v37 = v39;
  v34 = 0x2000000000;
  v35 = v39;
  v36 = 0;
  v2 = a2 - 1;
  if (a2 - 1 < 1)
  {
    return;
  }

  v4 = 0;
  v5 = a1 + 8;
  v6 = v39;
  memset(v39, 0, sizeof(v39));
  while (1)
  {
    while (1)
    {
      if (v2 <= v4)
      {
        goto LABEL_34;
      }

      if ((v2 - v4) <= 4)
      {
        break;
      }

      v7 = (v4 + v2 + ((v4 + v2) >> 31)) >> 1;
      v8 = *(a1 + 8 * ((v4 + v2) / 2));
      v9 = *(a1 + 8 * v4);
      if (v8 < v9)
      {
        *(a1 + 8 * v4) = v8;
        *(a1 + 8 * v7) = v9;
        v8 = v9;
        v9 = *(a1 + 8 * v4);
      }

      v10 = (a1 + 8 * v2);
      if (*v10 >= v9)
      {
        v9 = *v10;
      }

      else
      {
        *(a1 + 8 * v4) = *v10;
        *v10 = v9;
        v8 = *(a1 + 8 * v7);
      }

      if (v9 < v8)
      {
        *(a1 + 8 * v7) = v9;
        *v10 = v8;
        v8 = *(a1 + 8 * v7);
      }

      *(a1 + 8 * v7) = *(v10 - 1);
      *(v10 - 1) = v8;
      v11 = v2 - 1;
      v12 = v4;
      LODWORD(v13) = v2 - 1;
      while (1)
      {
        v14 = 0;
        v15 = v12;
        v16 = (a1 + 8 * v12);
        do
        {
          v18 = v16[1];
          ++v16;
          v17 = v18;
          ++v14;
        }

        while (v18 < v8);
        v13 = v13;
        do
        {
          v19 = a1 + 8 * v13--;
          v20 = *(v19 - 8);
        }

        while (v8 < v20);
        if (v15 + v14 >= v13)
        {
          break;
        }

        *v16 = v20;
        *(a1 + 8 * v13) = v17;
        v8 = *(a1 + 8 * v11);
        v12 = v14 + v15;
      }

      *v16 = v8;
      *(a1 + 8 * v11) = v17;
      v21 = v34;
      v22 = HIDWORD(v34) - 1;
      if (v15 - v4 + v14 >= v2 - v15 - v14)
      {
        if (v34 >= v22)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::NpArticulationLink>>::grow(v33);
          v21 = v34;
          v6 = v35;
        }

        LODWORD(v34) = v21 + 1;
        *(v6 + v21) = v14 + v15 + 1;
        v24 = v34;
        LODWORD(v34) = v34 + 1;
        *(v6 + v24) = v2;
        v2 = v15 + v14 - 1;
      }

      else
      {
        if (v34 >= v22)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::NpArticulationLink>>::grow(v33);
          v21 = v34;
          v6 = v35;
        }

        LODWORD(v34) = v21 + 1;
        *(v6 + v21) = v4;
        v23 = v34;
        LODWORD(v34) = v34 + 1;
        *(v6 + v23) = v15 - 1 + v14;
        v4 = v15 + v14 + 1;
      }
    }

    v25 = v4;
    v26 = v4 + 1;
    do
    {
      v27 = v25++;
      v28 = v26;
      v29 = v27;
      v30 = v27;
      do
      {
        if (*(v5 + 8 * v29) < *(a1 + 8 * v30))
        {
          v30 = v28;
        }

        ++v29;
        ++v28;
      }

      while (v29 < v2);
      if (v30 != v27)
      {
        v31 = *(a1 + 8 * v30);
        *(a1 + 8 * v30) = *(a1 + 8 * v27);
        *(a1 + 8 * v27) = v31;
      }

      ++v26;
    }

    while (v25 != v2);
LABEL_34:
    v32 = v34;
    if (!v34)
    {
      break;
    }

    LODWORD(v34) = v34 - 1;
    v2 = *(v6 + (v32 - 1));
    LODWORD(v34) = v32 - 2;
    v4 = *(v6 + (v32 - 2));
  }

  if (v36)
  {
    if (v6)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      if (v38)
      {
        physx::shdfnd::TempAllocator::deallocate(&v37, v37);
      }
    }
  }
}

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::NpArticulationLink>>::growAndPushBack(uint64_t result, void *a2)
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
    result = physx::shdfnd::ReflectionAllocator<physx::NpArticulationLink>::allocate(8 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 8);
  v8 = &v6[v7];
  if (v7)
  {
    v9 = *v3;
    v10 = v6;
    do
    {
      v11 = *v9++;
      *v10++ = v11;
    }

    while (v10 < v8);
  }

  *v8 = *a2;
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    LODWORD(v7) = *(v3 + 8);
  }

  *v3 = v6;
  *(v3 + 8) = v7 + 1;
  *(v3 + 12) = v5;
  return result;
}

uint64_t physx::shdfnd::ReflectionAllocator<physx::NpArticulationLink>::allocate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    v6 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::NpArticulationLink>::getName() [T = physx::NpArticulationLink]";
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

void *physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::NpArticulationLink>>::grow(uint64_t a1)
{
  v2 = 2 * *(a1 + 8);
  *(a1 + 8) = v2;
  v3 = physx::shdfnd::ReflectionAllocator<physx::NpArticulationLink>::allocate(4 * v2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsSortInternals.h", 155);
  result = memcpy(v3, *(a1 + 16), (4 * *(a1 + 4)));
  if (*(a1 + 24) == 1 && *(a1 + 16))
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *(a1 + 24) = 1;
  *(a1 + 16) = v3;
  return result;
}

void physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::NpArticulationReducedCoordinate>>(uint64_t a1, int a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v38 = 0;
  v37 = v39;
  v34 = 0x2000000000;
  v35 = v39;
  v36 = 0;
  v2 = a2 - 1;
  if (a2 - 1 < 1)
  {
    return;
  }

  v4 = 0;
  v5 = a1 + 8;
  v6 = v39;
  memset(v39, 0, sizeof(v39));
  while (1)
  {
    while (1)
    {
      if (v2 <= v4)
      {
        goto LABEL_34;
      }

      if ((v2 - v4) <= 4)
      {
        break;
      }

      v7 = (v4 + v2 + ((v4 + v2) >> 31)) >> 1;
      v8 = *(a1 + 8 * ((v4 + v2) / 2));
      v9 = *(a1 + 8 * v4);
      if (v8 < v9)
      {
        *(a1 + 8 * v4) = v8;
        *(a1 + 8 * v7) = v9;
        v8 = v9;
        v9 = *(a1 + 8 * v4);
      }

      v10 = (a1 + 8 * v2);
      if (*v10 >= v9)
      {
        v9 = *v10;
      }

      else
      {
        *(a1 + 8 * v4) = *v10;
        *v10 = v9;
        v8 = *(a1 + 8 * v7);
      }

      if (v9 < v8)
      {
        *(a1 + 8 * v7) = v9;
        *v10 = v8;
        v8 = *(a1 + 8 * v7);
      }

      *(a1 + 8 * v7) = *(v10 - 1);
      *(v10 - 1) = v8;
      v11 = v2 - 1;
      v12 = v4;
      LODWORD(v13) = v2 - 1;
      while (1)
      {
        v14 = 0;
        v15 = v12;
        v16 = (a1 + 8 * v12);
        do
        {
          v18 = v16[1];
          ++v16;
          v17 = v18;
          ++v14;
        }

        while (v18 < v8);
        v13 = v13;
        do
        {
          v19 = a1 + 8 * v13--;
          v20 = *(v19 - 8);
        }

        while (v8 < v20);
        if (v15 + v14 >= v13)
        {
          break;
        }

        *v16 = v20;
        *(a1 + 8 * v13) = v17;
        v8 = *(a1 + 8 * v11);
        v12 = v14 + v15;
      }

      *v16 = v8;
      *(a1 + 8 * v11) = v17;
      v21 = v34;
      v22 = HIDWORD(v34) - 1;
      if (v15 - v4 + v14 >= v2 - v15 - v14)
      {
        if (v34 >= v22)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::NpArticulationReducedCoordinate>>::grow(v33);
          v21 = v34;
          v6 = v35;
        }

        LODWORD(v34) = v21 + 1;
        *(v6 + v21) = v14 + v15 + 1;
        v24 = v34;
        LODWORD(v34) = v34 + 1;
        *(v6 + v24) = v2;
        v2 = v15 + v14 - 1;
      }

      else
      {
        if (v34 >= v22)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::NpArticulationReducedCoordinate>>::grow(v33);
          v21 = v34;
          v6 = v35;
        }

        LODWORD(v34) = v21 + 1;
        *(v6 + v21) = v4;
        v23 = v34;
        LODWORD(v34) = v34 + 1;
        *(v6 + v23) = v15 - 1 + v14;
        v4 = v15 + v14 + 1;
      }
    }

    v25 = v4;
    v26 = v4 + 1;
    do
    {
      v27 = v25++;
      v28 = v26;
      v29 = v27;
      v30 = v27;
      do
      {
        if (*(v5 + 8 * v29) < *(a1 + 8 * v30))
        {
          v30 = v28;
        }

        ++v29;
        ++v28;
      }

      while (v29 < v2);
      if (v30 != v27)
      {
        v31 = *(a1 + 8 * v30);
        *(a1 + 8 * v30) = *(a1 + 8 * v27);
        *(a1 + 8 * v27) = v31;
      }

      ++v26;
    }

    while (v25 != v2);
LABEL_34:
    v32 = v34;
    if (!v34)
    {
      break;
    }

    LODWORD(v34) = v34 - 1;
    v2 = *(v6 + (v32 - 1));
    LODWORD(v34) = v32 - 2;
    v4 = *(v6 + (v32 - 2));
  }

  if (v36)
  {
    if (v6)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      if (v38)
      {
        physx::shdfnd::TempAllocator::deallocate(&v37, v37);
      }
    }
  }
}

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::NpArticulationReducedCoordinate>>::growAndPushBack(uint64_t result, void *a2)
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
    result = physx::shdfnd::ReflectionAllocator<physx::NpArticulationReducedCoordinate>::allocate(8 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 8);
  v8 = &v6[v7];
  if (v7)
  {
    v9 = *v3;
    v10 = v6;
    do
    {
      v11 = *v9++;
      *v10++ = v11;
    }

    while (v10 < v8);
  }

  *v8 = *a2;
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    LODWORD(v7) = *(v3 + 8);
  }

  *v3 = v6;
  *(v3 + 8) = v7 + 1;
  *(v3 + 12) = v5;
  return result;
}

uint64_t physx::shdfnd::ReflectionAllocator<physx::NpArticulationReducedCoordinate>::allocate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    v6 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::NpArticulationReducedCoordinate>::getName() [T = physx::NpArticulationReducedCoordinate]";
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

void *physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::NpArticulationReducedCoordinate>>::grow(uint64_t a1)
{
  v2 = 2 * *(a1 + 8);
  *(a1 + 8) = v2;
  v3 = physx::shdfnd::ReflectionAllocator<physx::NpArticulationReducedCoordinate>::allocate(4 * v2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsSortInternals.h", 155);
  result = memcpy(v3, *(a1 + 16), (4 * *(a1 + 4)));
  if (*(a1 + 24) == 1 && *(a1 + 16))
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *(a1 + 24) = 1;
  *(a1 + 16) = v3;
  return result;
}

void physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::NpArticulation>>(uint64_t a1, int a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v38 = 0;
  v37 = v39;
  v34 = 0x2000000000;
  v35 = v39;
  v36 = 0;
  v2 = a2 - 1;
  if (a2 - 1 < 1)
  {
    return;
  }

  v4 = 0;
  v5 = a1 + 8;
  v6 = v39;
  memset(v39, 0, sizeof(v39));
  while (1)
  {
    while (1)
    {
      if (v2 <= v4)
      {
        goto LABEL_34;
      }

      if ((v2 - v4) <= 4)
      {
        break;
      }

      v7 = (v4 + v2 + ((v4 + v2) >> 31)) >> 1;
      v8 = *(a1 + 8 * ((v4 + v2) / 2));
      v9 = *(a1 + 8 * v4);
      if (v8 < v9)
      {
        *(a1 + 8 * v4) = v8;
        *(a1 + 8 * v7) = v9;
        v8 = v9;
        v9 = *(a1 + 8 * v4);
      }

      v10 = (a1 + 8 * v2);
      if (*v10 >= v9)
      {
        v9 = *v10;
      }

      else
      {
        *(a1 + 8 * v4) = *v10;
        *v10 = v9;
        v8 = *(a1 + 8 * v7);
      }

      if (v9 < v8)
      {
        *(a1 + 8 * v7) = v9;
        *v10 = v8;
        v8 = *(a1 + 8 * v7);
      }

      *(a1 + 8 * v7) = *(v10 - 1);
      *(v10 - 1) = v8;
      v11 = v2 - 1;
      v12 = v4;
      LODWORD(v13) = v2 - 1;
      while (1)
      {
        v14 = 0;
        v15 = v12;
        v16 = (a1 + 8 * v12);
        do
        {
          v18 = v16[1];
          ++v16;
          v17 = v18;
          ++v14;
        }

        while (v18 < v8);
        v13 = v13;
        do
        {
          v19 = a1 + 8 * v13--;
          v20 = *(v19 - 8);
        }

        while (v8 < v20);
        if (v15 + v14 >= v13)
        {
          break;
        }

        *v16 = v20;
        *(a1 + 8 * v13) = v17;
        v8 = *(a1 + 8 * v11);
        v12 = v14 + v15;
      }

      *v16 = v8;
      *(a1 + 8 * v11) = v17;
      v21 = v34;
      v22 = HIDWORD(v34) - 1;
      if (v15 - v4 + v14 >= v2 - v15 - v14)
      {
        if (v34 >= v22)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::NpArticulation>>::grow(v33);
          v21 = v34;
          v6 = v35;
        }

        LODWORD(v34) = v21 + 1;
        *(v6 + v21) = v14 + v15 + 1;
        v24 = v34;
        LODWORD(v34) = v34 + 1;
        *(v6 + v24) = v2;
        v2 = v15 + v14 - 1;
      }

      else
      {
        if (v34 >= v22)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::NpArticulation>>::grow(v33);
          v21 = v34;
          v6 = v35;
        }

        LODWORD(v34) = v21 + 1;
        *(v6 + v21) = v4;
        v23 = v34;
        LODWORD(v34) = v34 + 1;
        *(v6 + v23) = v15 - 1 + v14;
        v4 = v15 + v14 + 1;
      }
    }

    v25 = v4;
    v26 = v4 + 1;
    do
    {
      v27 = v25++;
      v28 = v26;
      v29 = v27;
      v30 = v27;
      do
      {
        if (*(v5 + 8 * v29) < *(a1 + 8 * v30))
        {
          v30 = v28;
        }

        ++v29;
        ++v28;
      }

      while (v29 < v2);
      if (v30 != v27)
      {
        v31 = *(a1 + 8 * v30);
        *(a1 + 8 * v30) = *(a1 + 8 * v27);
        *(a1 + 8 * v27) = v31;
      }

      ++v26;
    }

    while (v25 != v2);
LABEL_34:
    v32 = v34;
    if (!v34)
    {
      break;
    }

    LODWORD(v34) = v34 - 1;
    v2 = *(v6 + (v32 - 1));
    LODWORD(v34) = v32 - 2;
    v4 = *(v6 + (v32 - 2));
  }

  if (v36)
  {
    if (v6)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      if (v38)
      {
        physx::shdfnd::TempAllocator::deallocate(&v37, v37);
      }
    }
  }
}

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::NpArticulation>>::growAndPushBack(uint64_t result, void *a2)
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
    result = physx::shdfnd::ReflectionAllocator<physx::NpArticulation>::allocate(8 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 8);
  v8 = &v6[v7];
  if (v7)
  {
    v9 = *v3;
    v10 = v6;
    do
    {
      v11 = *v9++;
      *v10++ = v11;
    }

    while (v10 < v8);
  }

  *v8 = *a2;
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    LODWORD(v7) = *(v3 + 8);
  }

  *v3 = v6;
  *(v3 + 8) = v7 + 1;
  *(v3 + 12) = v5;
  return result;
}

uint64_t physx::shdfnd::ReflectionAllocator<physx::NpArticulation>::allocate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    v6 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::NpArticulation>::getName() [T = physx::NpArticulation]";
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

void *physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::NpArticulation>>::grow(uint64_t a1)
{
  v2 = 2 * *(a1 + 8);
  *(a1 + 8) = v2;
  v3 = physx::shdfnd::ReflectionAllocator<physx::NpArticulation>::allocate(4 * v2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsSortInternals.h", 155);
  result = memcpy(v3, *(a1 + 16), (4 * *(a1 + 4)));
  if (*(a1 + 24) == 1 && *(a1 + 16))
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *(a1 + 24) = 1;
  *(a1 + 16) = v3;
  return result;
}

void physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::NpMaterial>>(uint64_t a1, int a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v38 = 0;
  v37 = v39;
  v34 = 0x2000000000;
  v35 = v39;
  v36 = 0;
  v2 = a2 - 1;
  if (a2 - 1 < 1)
  {
    return;
  }

  v4 = 0;
  v5 = a1 + 8;
  v6 = v39;
  memset(v39, 0, sizeof(v39));
  while (1)
  {
    while (1)
    {
      if (v2 <= v4)
      {
        goto LABEL_34;
      }

      if ((v2 - v4) <= 4)
      {
        break;
      }

      v7 = (v4 + v2 + ((v4 + v2) >> 31)) >> 1;
      v8 = *(a1 + 8 * ((v4 + v2) / 2));
      v9 = *(a1 + 8 * v4);
      if (v8 < v9)
      {
        *(a1 + 8 * v4) = v8;
        *(a1 + 8 * v7) = v9;
        v8 = v9;
        v9 = *(a1 + 8 * v4);
      }

      v10 = (a1 + 8 * v2);
      if (*v10 >= v9)
      {
        v9 = *v10;
      }

      else
      {
        *(a1 + 8 * v4) = *v10;
        *v10 = v9;
        v8 = *(a1 + 8 * v7);
      }

      if (v9 < v8)
      {
        *(a1 + 8 * v7) = v9;
        *v10 = v8;
        v8 = *(a1 + 8 * v7);
      }

      *(a1 + 8 * v7) = *(v10 - 1);
      *(v10 - 1) = v8;
      v11 = v2 - 1;
      v12 = v4;
      LODWORD(v13) = v2 - 1;
      while (1)
      {
        v14 = 0;
        v15 = v12;
        v16 = (a1 + 8 * v12);
        do
        {
          v18 = v16[1];
          ++v16;
          v17 = v18;
          ++v14;
        }

        while (v18 < v8);
        v13 = v13;
        do
        {
          v19 = a1 + 8 * v13--;
          v20 = *(v19 - 8);
        }

        while (v8 < v20);
        if (v15 + v14 >= v13)
        {
          break;
        }

        *v16 = v20;
        *(a1 + 8 * v13) = v17;
        v8 = *(a1 + 8 * v11);
        v12 = v14 + v15;
      }

      *v16 = v8;
      *(a1 + 8 * v11) = v17;
      v21 = v34;
      v22 = HIDWORD(v34) - 1;
      if (v15 - v4 + v14 >= v2 - v15 - v14)
      {
        if (v34 >= v22)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::NpMaterial>>::grow(v33);
          v21 = v34;
          v6 = v35;
        }

        LODWORD(v34) = v21 + 1;
        *(v6 + v21) = v14 + v15 + 1;
        v24 = v34;
        LODWORD(v34) = v34 + 1;
        *(v6 + v24) = v2;
        v2 = v15 + v14 - 1;
      }

      else
      {
        if (v34 >= v22)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::NpMaterial>>::grow(v33);
          v21 = v34;
          v6 = v35;
        }

        LODWORD(v34) = v21 + 1;
        *(v6 + v21) = v4;
        v23 = v34;
        LODWORD(v34) = v34 + 1;
        *(v6 + v23) = v15 - 1 + v14;
        v4 = v15 + v14 + 1;
      }
    }

    v25 = v4;
    v26 = v4 + 1;
    do
    {
      v27 = v25++;
      v28 = v26;
      v29 = v27;
      v30 = v27;
      do
      {
        if (*(v5 + 8 * v29) < *(a1 + 8 * v30))
        {
          v30 = v28;
        }

        ++v29;
        ++v28;
      }

      while (v29 < v2);
      if (v30 != v27)
      {
        v31 = *(a1 + 8 * v30);
        *(a1 + 8 * v30) = *(a1 + 8 * v27);
        *(a1 + 8 * v27) = v31;
      }

      ++v26;
    }

    while (v25 != v2);
LABEL_34:
    v32 = v34;
    if (!v34)
    {
      break;
    }

    LODWORD(v34) = v34 - 1;
    v2 = *(v6 + (v32 - 1));
    LODWORD(v34) = v32 - 2;
    v4 = *(v6 + (v32 - 2));
  }

  if (v36)
  {
    if (v6)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      if (v38)
      {
        physx::shdfnd::TempAllocator::deallocate(&v37, v37);
      }
    }
  }
}

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::NpMaterial>>::growAndPushBack(uint64_t result, void *a2)
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
    result = physx::shdfnd::ReflectionAllocator<physx::NpMaterial>::allocate(8 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 8);
  v8 = &v6[v7];
  if (v7)
  {
    v9 = *v3;
    v10 = v6;
    do
    {
      v11 = *v9++;
      *v10++ = v11;
    }

    while (v10 < v8);
  }

  *v8 = *a2;
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    LODWORD(v7) = *(v3 + 8);
  }

  *v3 = v6;
  *(v3 + 8) = v7 + 1;
  *(v3 + 12) = v5;
  return result;
}

uint64_t physx::shdfnd::ReflectionAllocator<physx::NpMaterial>::allocate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    v6 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::NpMaterial>::getName() [T = physx::NpMaterial]";
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

void *physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::NpMaterial>>::grow(uint64_t a1)
{
  v2 = 2 * *(a1 + 8);
  *(a1 + 8) = v2;
  v3 = physx::shdfnd::ReflectionAllocator<physx::NpMaterial>::allocate(4 * v2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsSortInternals.h", 155);
  result = memcpy(v3, *(a1 + 16), (4 * *(a1 + 4)));
  if (*(a1 + 24) == 1 && *(a1 + 16))
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *(a1 + 24) = 1;
  *(a1 + 16) = v3;
  return result;
}

void physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::NpConstraint>>(uint64_t a1, int a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v38 = 0;
  v37 = v39;
  v34 = 0x2000000000;
  v35 = v39;
  v36 = 0;
  v2 = a2 - 1;
  if (a2 - 1 < 1)
  {
    return;
  }

  v4 = 0;
  v5 = a1 + 8;
  v6 = v39;
  memset(v39, 0, sizeof(v39));
  while (1)
  {
    while (1)
    {
      if (v2 <= v4)
      {
        goto LABEL_34;
      }

      if ((v2 - v4) <= 4)
      {
        break;
      }

      v7 = (v4 + v2 + ((v4 + v2) >> 31)) >> 1;
      v8 = *(a1 + 8 * ((v4 + v2) / 2));
      v9 = *(a1 + 8 * v4);
      if (v8 < v9)
      {
        *(a1 + 8 * v4) = v8;
        *(a1 + 8 * v7) = v9;
        v8 = v9;
        v9 = *(a1 + 8 * v4);
      }

      v10 = (a1 + 8 * v2);
      if (*v10 >= v9)
      {
        v9 = *v10;
      }

      else
      {
        *(a1 + 8 * v4) = *v10;
        *v10 = v9;
        v8 = *(a1 + 8 * v7);
      }

      if (v9 < v8)
      {
        *(a1 + 8 * v7) = v9;
        *v10 = v8;
        v8 = *(a1 + 8 * v7);
      }

      *(a1 + 8 * v7) = *(v10 - 1);
      *(v10 - 1) = v8;
      v11 = v2 - 1;
      v12 = v4;
      LODWORD(v13) = v2 - 1;
      while (1)
      {
        v14 = 0;
        v15 = v12;
        v16 = (a1 + 8 * v12);
        do
        {
          v18 = v16[1];
          ++v16;
          v17 = v18;
          ++v14;
        }

        while (v18 < v8);
        v13 = v13;
        do
        {
          v19 = a1 + 8 * v13--;
          v20 = *(v19 - 8);
        }

        while (v8 < v20);
        if (v15 + v14 >= v13)
        {
          break;
        }

        *v16 = v20;
        *(a1 + 8 * v13) = v17;
        v8 = *(a1 + 8 * v11);
        v12 = v14 + v15;
      }

      *v16 = v8;
      *(a1 + 8 * v11) = v17;
      v21 = v34;
      v22 = HIDWORD(v34) - 1;
      if (v15 - v4 + v14 >= v2 - v15 - v14)
      {
        if (v34 >= v22)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::NpConstraint>>::grow(v33);
          v21 = v34;
          v6 = v35;
        }

        LODWORD(v34) = v21 + 1;
        *(v6 + v21) = v14 + v15 + 1;
        v24 = v34;
        LODWORD(v34) = v34 + 1;
        *(v6 + v24) = v2;
        v2 = v15 + v14 - 1;
      }

      else
      {
        if (v34 >= v22)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::NpConstraint>>::grow(v33);
          v21 = v34;
          v6 = v35;
        }

        LODWORD(v34) = v21 + 1;
        *(v6 + v21) = v4;
        v23 = v34;
        LODWORD(v34) = v34 + 1;
        *(v6 + v23) = v15 - 1 + v14;
        v4 = v15 + v14 + 1;
      }
    }

    v25 = v4;
    v26 = v4 + 1;
    do
    {
      v27 = v25++;
      v28 = v26;
      v29 = v27;
      v30 = v27;
      do
      {
        if (*(v5 + 8 * v29) < *(a1 + 8 * v30))
        {
          v30 = v28;
        }

        ++v29;
        ++v28;
      }

      while (v29 < v2);
      if (v30 != v27)
      {
        v31 = *(a1 + 8 * v30);
        *(a1 + 8 * v30) = *(a1 + 8 * v27);
        *(a1 + 8 * v27) = v31;
      }

      ++v26;
    }

    while (v25 != v2);
LABEL_34:
    v32 = v34;
    if (!v34)
    {
      break;
    }

    LODWORD(v34) = v34 - 1;
    v2 = *(v6 + (v32 - 1));
    LODWORD(v34) = v32 - 2;
    v4 = *(v6 + (v32 - 2));
  }

  if (v36)
  {
    if (v6)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      if (v38)
      {
        physx::shdfnd::TempAllocator::deallocate(&v37, v37);
      }
    }
  }
}

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::NpConstraint>>::growAndPushBack(uint64_t result, void *a2)
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
    result = physx::shdfnd::ReflectionAllocator<physx::NpConstraint>::allocate(8 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 8);
  v8 = &v6[v7];
  if (v7)
  {
    v9 = *v3;
    v10 = v6;
    do
    {
      v11 = *v9++;
      *v10++ = v11;
    }

    while (v10 < v8);
  }

  *v8 = *a2;
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    LODWORD(v7) = *(v3 + 8);
  }

  *v3 = v6;
  *(v3 + 8) = v7 + 1;
  *(v3 + 12) = v5;
  return result;
}

uint64_t physx::shdfnd::ReflectionAllocator<physx::NpConstraint>::allocate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    v6 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::NpConstraint>::getName() [T = physx::NpConstraint]";
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

void *physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::NpConstraint>>::grow(uint64_t a1)
{
  v2 = 2 * *(a1 + 8);
  *(a1 + 8) = v2;
  v3 = physx::shdfnd::ReflectionAllocator<physx::NpConstraint>::allocate(4 * v2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsSortInternals.h", 155);
  result = memcpy(v3, *(a1 + 16), (4 * *(a1 + 4)));
  if (*(a1 + 24) == 1 && *(a1 + 16))
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *(a1 + 24) = 1;
  *(a1 + 16) = v3;
  return result;
}

void physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::NpAggregate>>(uint64_t a1, int a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v38 = 0;
  v37 = v39;
  v34 = 0x2000000000;
  v35 = v39;
  v36 = 0;
  v2 = a2 - 1;
  if (a2 - 1 < 1)
  {
    return;
  }

  v4 = 0;
  v5 = a1 + 8;
  v6 = v39;
  memset(v39, 0, sizeof(v39));
  while (1)
  {
    while (1)
    {
      if (v2 <= v4)
      {
        goto LABEL_34;
      }

      if ((v2 - v4) <= 4)
      {
        break;
      }

      v7 = (v4 + v2 + ((v4 + v2) >> 31)) >> 1;
      v8 = *(a1 + 8 * ((v4 + v2) / 2));
      v9 = *(a1 + 8 * v4);
      if (v8 < v9)
      {
        *(a1 + 8 * v4) = v8;
        *(a1 + 8 * v7) = v9;
        v8 = v9;
        v9 = *(a1 + 8 * v4);
      }

      v10 = (a1 + 8 * v2);
      if (*v10 >= v9)
      {
        v9 = *v10;
      }

      else
      {
        *(a1 + 8 * v4) = *v10;
        *v10 = v9;
        v8 = *(a1 + 8 * v7);
      }

      if (v9 < v8)
      {
        *(a1 + 8 * v7) = v9;
        *v10 = v8;
        v8 = *(a1 + 8 * v7);
      }

      *(a1 + 8 * v7) = *(v10 - 1);
      *(v10 - 1) = v8;
      v11 = v2 - 1;
      v12 = v4;
      LODWORD(v13) = v2 - 1;
      while (1)
      {
        v14 = 0;
        v15 = v12;
        v16 = (a1 + 8 * v12);
        do
        {
          v18 = v16[1];
          ++v16;
          v17 = v18;
          ++v14;
        }

        while (v18 < v8);
        v13 = v13;
        do
        {
          v19 = a1 + 8 * v13--;
          v20 = *(v19 - 8);
        }

        while (v8 < v20);
        if (v15 + v14 >= v13)
        {
          break;
        }

        *v16 = v20;
        *(a1 + 8 * v13) = v17;
        v8 = *(a1 + 8 * v11);
        v12 = v14 + v15;
      }

      *v16 = v8;
      *(a1 + 8 * v11) = v17;
      v21 = v34;
      v22 = HIDWORD(v34) - 1;
      if (v15 - v4 + v14 >= v2 - v15 - v14)
      {
        if (v34 >= v22)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::NpAggregate>>::grow(v33);
          v21 = v34;
          v6 = v35;
        }

        LODWORD(v34) = v21 + 1;
        *(v6 + v21) = v14 + v15 + 1;
        v24 = v34;
        LODWORD(v34) = v34 + 1;
        *(v6 + v24) = v2;
        v2 = v15 + v14 - 1;
      }

      else
      {
        if (v34 >= v22)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::NpAggregate>>::grow(v33);
          v21 = v34;
          v6 = v35;
        }

        LODWORD(v34) = v21 + 1;
        *(v6 + v21) = v4;
        v23 = v34;
        LODWORD(v34) = v34 + 1;
        *(v6 + v23) = v15 - 1 + v14;
        v4 = v15 + v14 + 1;
      }
    }

    v25 = v4;
    v26 = v4 + 1;
    do
    {
      v27 = v25++;
      v28 = v26;
      v29 = v27;
      v30 = v27;
      do
      {
        if (*(v5 + 8 * v29) < *(a1 + 8 * v30))
        {
          v30 = v28;
        }

        ++v29;
        ++v28;
      }

      while (v29 < v2);
      if (v30 != v27)
      {
        v31 = *(a1 + 8 * v30);
        *(a1 + 8 * v30) = *(a1 + 8 * v27);
        *(a1 + 8 * v27) = v31;
      }

      ++v26;
    }

    while (v25 != v2);
LABEL_34:
    v32 = v34;
    if (!v34)
    {
      break;
    }

    LODWORD(v34) = v34 - 1;
    v2 = *(v6 + (v32 - 1));
    LODWORD(v34) = v32 - 2;
    v4 = *(v6 + (v32 - 2));
  }

  if (v36)
  {
    if (v6)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      if (v38)
      {
        physx::shdfnd::TempAllocator::deallocate(&v37, v37);
      }
    }
  }
}

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::NpAggregate>>::growAndPushBack(uint64_t result, void *a2)
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
    result = physx::shdfnd::ReflectionAllocator<physx::NpAggregate>::allocate(8 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 8);
  v8 = &v6[v7];
  if (v7)
  {
    v9 = *v3;
    v10 = v6;
    do
    {
      v11 = *v9++;
      *v10++ = v11;
    }

    while (v10 < v8);
  }

  *v8 = *a2;
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    LODWORD(v7) = *(v3 + 8);
  }

  *v3 = v6;
  *(v3 + 8) = v7 + 1;
  *(v3 + 12) = v5;
  return result;
}

uint64_t physx::shdfnd::ReflectionAllocator<physx::NpAggregate>::allocate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    v6 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::NpAggregate>::getName() [T = physx::NpAggregate]";
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

void *physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::NpAggregate>>::grow(uint64_t a1)
{
  v2 = 2 * *(a1 + 8);
  *(a1 + 8) = v2;
  v3 = physx::shdfnd::ReflectionAllocator<physx::NpAggregate>::allocate(4 * v2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsSortInternals.h", 155);
  result = memcpy(v3, *(a1 + 16), (4 * *(a1 + 4)));
  if (*(a1 + 24) == 1 && *(a1 + 16))
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *(a1 + 24) = 1;
  *(a1 + 16) = v3;
  return result;
}

void physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::NpShape>>(uint64_t a1, int a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v38 = 0;
  v37 = v39;
  v34 = 0x2000000000;
  v35 = v39;
  v36 = 0;
  v2 = a2 - 1;
  if (a2 - 1 < 1)
  {
    return;
  }

  v4 = 0;
  v5 = a1 + 8;
  v6 = v39;
  memset(v39, 0, sizeof(v39));
  while (1)
  {
    while (1)
    {
      if (v2 <= v4)
      {
        goto LABEL_34;
      }

      if ((v2 - v4) <= 4)
      {
        break;
      }

      v7 = (v4 + v2 + ((v4 + v2) >> 31)) >> 1;
      v8 = *(a1 + 8 * ((v4 + v2) / 2));
      v9 = *(a1 + 8 * v4);
      if (v8 < v9)
      {
        *(a1 + 8 * v4) = v8;
        *(a1 + 8 * v7) = v9;
        v8 = v9;
        v9 = *(a1 + 8 * v4);
      }

      v10 = (a1 + 8 * v2);
      if (*v10 >= v9)
      {
        v9 = *v10;
      }

      else
      {
        *(a1 + 8 * v4) = *v10;
        *v10 = v9;
        v8 = *(a1 + 8 * v7);
      }

      if (v9 < v8)
      {
        *(a1 + 8 * v7) = v9;
        *v10 = v8;
        v8 = *(a1 + 8 * v7);
      }

      *(a1 + 8 * v7) = *(v10 - 1);
      *(v10 - 1) = v8;
      v11 = v2 - 1;
      v12 = v4;
      LODWORD(v13) = v2 - 1;
      while (1)
      {
        v14 = 0;
        v15 = v12;
        v16 = (a1 + 8 * v12);
        do
        {
          v18 = v16[1];
          ++v16;
          v17 = v18;
          ++v14;
        }

        while (v18 < v8);
        v13 = v13;
        do
        {
          v19 = a1 + 8 * v13--;
          v20 = *(v19 - 8);
        }

        while (v8 < v20);
        if (v15 + v14 >= v13)
        {
          break;
        }

        *v16 = v20;
        *(a1 + 8 * v13) = v17;
        v8 = *(a1 + 8 * v11);
        v12 = v14 + v15;
      }

      *v16 = v8;
      *(a1 + 8 * v11) = v17;
      v21 = v34;
      v22 = HIDWORD(v34) - 1;
      if (v15 - v4 + v14 >= v2 - v15 - v14)
      {
        if (v34 >= v22)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::NpShape>>::grow(v33);
          v21 = v34;
          v6 = v35;
        }

        LODWORD(v34) = v21 + 1;
        *(v6 + v21) = v14 + v15 + 1;
        v24 = v34;
        LODWORD(v34) = v34 + 1;
        *(v6 + v24) = v2;
        v2 = v15 + v14 - 1;
      }

      else
      {
        if (v34 >= v22)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::NpShape>>::grow(v33);
          v21 = v34;
          v6 = v35;
        }

        LODWORD(v34) = v21 + 1;
        *(v6 + v21) = v4;
        v23 = v34;
        LODWORD(v34) = v34 + 1;
        *(v6 + v23) = v15 - 1 + v14;
        v4 = v15 + v14 + 1;
      }
    }

    v25 = v4;
    v26 = v4 + 1;
    do
    {
      v27 = v25++;
      v28 = v26;
      v29 = v27;
      v30 = v27;
      do
      {
        if (*(v5 + 8 * v29) < *(a1 + 8 * v30))
        {
          v30 = v28;
        }

        ++v29;
        ++v28;
      }

      while (v29 < v2);
      if (v30 != v27)
      {
        v31 = *(a1 + 8 * v30);
        *(a1 + 8 * v30) = *(a1 + 8 * v27);
        *(a1 + 8 * v27) = v31;
      }

      ++v26;
    }

    while (v25 != v2);
LABEL_34:
    v32 = v34;
    if (!v34)
    {
      break;
    }

    LODWORD(v34) = v34 - 1;
    v2 = *(v6 + (v32 - 1));
    LODWORD(v34) = v32 - 2;
    v4 = *(v6 + (v32 - 2));
  }

  if (v36)
  {
    if (v6)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      if (v38)
      {
        physx::shdfnd::TempAllocator::deallocate(&v37, v37);
      }
    }
  }
}

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::NpShape>>::growAndPushBack(uint64_t result, void *a2)
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
    result = physx::shdfnd::ReflectionAllocator<physx::NpShape>::allocate(8 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 8);
  v8 = &v6[v7];
  if (v7)
  {
    v9 = *v3;
    v10 = v6;
    do
    {
      v11 = *v9++;
      *v10++ = v11;
    }

    while (v10 < v8);
  }

  *v8 = *a2;
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    LODWORD(v7) = *(v3 + 8);
  }

  *v3 = v6;
  *(v3 + 8) = v7 + 1;
  *(v3 + 12) = v5;
  return result;
}

uint64_t physx::shdfnd::ReflectionAllocator<physx::NpShape>::allocate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    v6 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::NpShape>::getName() [T = physx::NpShape]";
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

void *physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::NpShape>>::grow(uint64_t a1)
{
  v2 = 2 * *(a1 + 8);
  *(a1 + 8) = v2;
  v3 = physx::shdfnd::ReflectionAllocator<physx::NpShape>::allocate(4 * v2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsSortInternals.h", 155);
  result = memcpy(v3, *(a1 + 16), (4 * *(a1 + 4)));
  if (*(a1 + 24) == 1 && *(a1 + 16))
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *(a1 + 24) = 1;
  *(a1 + 16) = v3;
  return result;
}

void physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::NpRigidStatic>>(uint64_t a1, int a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v38 = 0;
  v37 = v39;
  v34 = 0x2000000000;
  v35 = v39;
  v36 = 0;
  v2 = a2 - 1;
  if (a2 - 1 < 1)
  {
    return;
  }

  v4 = 0;
  v5 = a1 + 8;
  v6 = v39;
  memset(v39, 0, sizeof(v39));
  while (1)
  {
    while (1)
    {
      if (v2 <= v4)
      {
        goto LABEL_34;
      }

      if ((v2 - v4) <= 4)
      {
        break;
      }

      v7 = (v4 + v2 + ((v4 + v2) >> 31)) >> 1;
      v8 = *(a1 + 8 * ((v4 + v2) / 2));
      v9 = *(a1 + 8 * v4);
      if (v8 < v9)
      {
        *(a1 + 8 * v4) = v8;
        *(a1 + 8 * v7) = v9;
        v8 = v9;
        v9 = *(a1 + 8 * v4);
      }

      v10 = (a1 + 8 * v2);
      if (*v10 >= v9)
      {
        v9 = *v10;
      }

      else
      {
        *(a1 + 8 * v4) = *v10;
        *v10 = v9;
        v8 = *(a1 + 8 * v7);
      }

      if (v9 < v8)
      {
        *(a1 + 8 * v7) = v9;
        *v10 = v8;
        v8 = *(a1 + 8 * v7);
      }

      *(a1 + 8 * v7) = *(v10 - 1);
      *(v10 - 1) = v8;
      v11 = v2 - 1;
      v12 = v4;
      LODWORD(v13) = v2 - 1;
      while (1)
      {
        v14 = 0;
        v15 = v12;
        v16 = (a1 + 8 * v12);
        do
        {
          v18 = v16[1];
          ++v16;
          v17 = v18;
          ++v14;
        }

        while (v18 < v8);
        v13 = v13;
        do
        {
          v19 = a1 + 8 * v13--;
          v20 = *(v19 - 8);
        }

        while (v8 < v20);
        if (v15 + v14 >= v13)
        {
          break;
        }

        *v16 = v20;
        *(a1 + 8 * v13) = v17;
        v8 = *(a1 + 8 * v11);
        v12 = v14 + v15;
      }

      *v16 = v8;
      *(a1 + 8 * v11) = v17;
      v21 = v34;
      v22 = HIDWORD(v34) - 1;
      if (v15 - v4 + v14 >= v2 - v15 - v14)
      {
        if (v34 >= v22)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::NpRigidStatic>>::grow(v33);
          v21 = v34;
          v6 = v35;
        }

        LODWORD(v34) = v21 + 1;
        *(v6 + v21) = v14 + v15 + 1;
        v24 = v34;
        LODWORD(v34) = v34 + 1;
        *(v6 + v24) = v2;
        v2 = v15 + v14 - 1;
      }

      else
      {
        if (v34 >= v22)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::NpRigidStatic>>::grow(v33);
          v21 = v34;
          v6 = v35;
        }

        LODWORD(v34) = v21 + 1;
        *(v6 + v21) = v4;
        v23 = v34;
        LODWORD(v34) = v34 + 1;
        *(v6 + v23) = v15 - 1 + v14;
        v4 = v15 + v14 + 1;
      }
    }

    v25 = v4;
    v26 = v4 + 1;
    do
    {
      v27 = v25++;
      v28 = v26;
      v29 = v27;
      v30 = v27;
      do
      {
        if (*(v5 + 8 * v29) < *(a1 + 8 * v30))
        {
          v30 = v28;
        }

        ++v29;
        ++v28;
      }

      while (v29 < v2);
      if (v30 != v27)
      {
        v31 = *(a1 + 8 * v30);
        *(a1 + 8 * v30) = *(a1 + 8 * v27);
        *(a1 + 8 * v27) = v31;
      }

      ++v26;
    }

    while (v25 != v2);
LABEL_34:
    v32 = v34;
    if (!v34)
    {
      break;
    }

    LODWORD(v34) = v34 - 1;
    v2 = *(v6 + (v32 - 1));
    LODWORD(v34) = v32 - 2;
    v4 = *(v6 + (v32 - 2));
  }

  if (v36)
  {
    if (v6)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      if (v38)
      {
        physx::shdfnd::TempAllocator::deallocate(&v37, v37);
      }
    }
  }
}

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::NpRigidStatic>>::growAndPushBack(uint64_t result, void *a2)
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
    result = physx::shdfnd::ReflectionAllocator<physx::NpRigidStatic>::allocate(8 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 8);
  v8 = &v6[v7];
  if (v7)
  {
    v9 = *v3;
    v10 = v6;
    do
    {
      v11 = *v9++;
      *v10++ = v11;
    }

    while (v10 < v8);
  }

  *v8 = *a2;
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    LODWORD(v7) = *(v3 + 8);
  }

  *v3 = v6;
  *(v3 + 8) = v7 + 1;
  *(v3 + 12) = v5;
  return result;
}

uint64_t physx::shdfnd::ReflectionAllocator<physx::NpRigidStatic>::allocate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    v6 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::NpRigidStatic>::getName() [T = physx::NpRigidStatic]";
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

void *physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::NpRigidStatic>>::grow(uint64_t a1)
{
  v2 = 2 * *(a1 + 8);
  *(a1 + 8) = v2;
  v3 = physx::shdfnd::ReflectionAllocator<physx::NpRigidStatic>::allocate(4 * v2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsSortInternals.h", 155);
  result = memcpy(v3, *(a1 + 16), (4 * *(a1 + 4)));
  if (*(a1 + 24) == 1 && *(a1 + 16))
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *(a1 + 24) = 1;
  *(a1 + 16) = v3;
  return result;
}

void physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::NpRigidDynamic>>(uint64_t a1, int a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v38 = 0;
  v37 = v39;
  v34 = 0x2000000000;
  v35 = v39;
  v36 = 0;
  v2 = a2 - 1;
  if (a2 - 1 < 1)
  {
    return;
  }

  v4 = 0;
  v5 = a1 + 8;
  v6 = v39;
  memset(v39, 0, sizeof(v39));
  while (1)
  {
    while (1)
    {
      if (v2 <= v4)
      {
        goto LABEL_34;
      }

      if ((v2 - v4) <= 4)
      {
        break;
      }

      v7 = (v4 + v2 + ((v4 + v2) >> 31)) >> 1;
      v8 = *(a1 + 8 * ((v4 + v2) / 2));
      v9 = *(a1 + 8 * v4);
      if (v8 < v9)
      {
        *(a1 + 8 * v4) = v8;
        *(a1 + 8 * v7) = v9;
        v8 = v9;
        v9 = *(a1 + 8 * v4);
      }

      v10 = (a1 + 8 * v2);
      if (*v10 >= v9)
      {
        v9 = *v10;
      }

      else
      {
        *(a1 + 8 * v4) = *v10;
        *v10 = v9;
        v8 = *(a1 + 8 * v7);
      }

      if (v9 < v8)
      {
        *(a1 + 8 * v7) = v9;
        *v10 = v8;
        v8 = *(a1 + 8 * v7);
      }

      *(a1 + 8 * v7) = *(v10 - 1);
      *(v10 - 1) = v8;
      v11 = v2 - 1;
      v12 = v4;
      LODWORD(v13) = v2 - 1;
      while (1)
      {
        v14 = 0;
        v15 = v12;
        v16 = (a1 + 8 * v12);
        do
        {
          v18 = v16[1];
          ++v16;
          v17 = v18;
          ++v14;
        }

        while (v18 < v8);
        v13 = v13;
        do
        {
          v19 = a1 + 8 * v13--;
          v20 = *(v19 - 8);
        }

        while (v8 < v20);
        if (v15 + v14 >= v13)
        {
          break;
        }

        *v16 = v20;
        *(a1 + 8 * v13) = v17;
        v8 = *(a1 + 8 * v11);
        v12 = v14 + v15;
      }

      *v16 = v8;
      *(a1 + 8 * v11) = v17;
      v21 = v34;
      v22 = HIDWORD(v34) - 1;
      if (v15 - v4 + v14 >= v2 - v15 - v14)
      {
        if (v34 >= v22)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::NpRigidDynamic>>::grow(v33);
          v21 = v34;
          v6 = v35;
        }

        LODWORD(v34) = v21 + 1;
        *(v6 + v21) = v14 + v15 + 1;
        v24 = v34;
        LODWORD(v34) = v34 + 1;
        *(v6 + v24) = v2;
        v2 = v15 + v14 - 1;
      }

      else
      {
        if (v34 >= v22)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::NpRigidDynamic>>::grow(v33);
          v21 = v34;
          v6 = v35;
        }

        LODWORD(v34) = v21 + 1;
        *(v6 + v21) = v4;
        v23 = v34;
        LODWORD(v34) = v34 + 1;
        *(v6 + v23) = v15 - 1 + v14;
        v4 = v15 + v14 + 1;
      }
    }

    v25 = v4;
    v26 = v4 + 1;
    do
    {
      v27 = v25++;
      v28 = v26;
      v29 = v27;
      v30 = v27;
      do
      {
        if (*(v5 + 8 * v29) < *(a1 + 8 * v30))
        {
          v30 = v28;
        }

        ++v29;
        ++v28;
      }

      while (v29 < v2);
      if (v30 != v27)
      {
        v31 = *(a1 + 8 * v30);
        *(a1 + 8 * v30) = *(a1 + 8 * v27);
        *(a1 + 8 * v27) = v31;
      }

      ++v26;
    }

    while (v25 != v2);
LABEL_34:
    v32 = v34;
    if (!v34)
    {
      break;
    }

    LODWORD(v34) = v34 - 1;
    v2 = *(v6 + (v32 - 1));
    LODWORD(v34) = v32 - 2;
    v4 = *(v6 + (v32 - 2));
  }

  if (v36)
  {
    if (v6)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      if (v38)
      {
        physx::shdfnd::TempAllocator::deallocate(&v37, v37);
      }
    }
  }
}

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::NpRigidDynamic>>::growAndPushBack(uint64_t result, void *a2)
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
    result = physx::shdfnd::ReflectionAllocator<physx::NpRigidDynamic>::allocate(8 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 8);
  v8 = &v6[v7];
  if (v7)
  {
    v9 = *v3;
    v10 = v6;
    do
    {
      v11 = *v9++;
      *v10++ = v11;
    }

    while (v10 < v8);
  }

  *v8 = *a2;
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    LODWORD(v7) = *(v3 + 8);
  }

  *v3 = v6;
  *(v3 + 8) = v7 + 1;
  *(v3 + 12) = v5;
  return result;
}

uint64_t physx::shdfnd::ReflectionAllocator<physx::NpRigidDynamic>::allocate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    v6 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::NpRigidDynamic>::getName() [T = physx::NpRigidDynamic]";
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

void *physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::NpRigidDynamic>>::grow(uint64_t a1)
{
  v2 = 2 * *(a1 + 8);
  *(a1 + 8) = v2;
  v3 = physx::shdfnd::ReflectionAllocator<physx::NpRigidDynamic>::allocate(4 * v2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsSortInternals.h", 155);
  result = memcpy(v3, *(a1 + 16), (4 * *(a1 + 4)));
  if (*(a1 + 24) == 1 && *(a1 + 16))
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *(a1 + 24) = 1;
  *(a1 + 16) = v3;
  return result;
}

void physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::NpConnectorArray>>(uint64_t a1, int a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v38 = 0;
  v37 = v39;
  v34 = 0x2000000000;
  v35 = v39;
  v36 = 0;
  v2 = a2 - 1;
  if (a2 - 1 < 1)
  {
    return;
  }

  v4 = 0;
  v5 = a1 + 8;
  v6 = v39;
  memset(v39, 0, sizeof(v39));
  while (1)
  {
    while (1)
    {
      if (v2 <= v4)
      {
        goto LABEL_34;
      }

      if ((v2 - v4) <= 4)
      {
        break;
      }

      v7 = (v4 + v2 + ((v4 + v2) >> 31)) >> 1;
      v8 = *(a1 + 8 * ((v4 + v2) / 2));
      v9 = *(a1 + 8 * v4);
      if (v8 < v9)
      {
        *(a1 + 8 * v4) = v8;
        *(a1 + 8 * v7) = v9;
        v8 = v9;
        v9 = *(a1 + 8 * v4);
      }

      v10 = (a1 + 8 * v2);
      if (*v10 >= v9)
      {
        v9 = *v10;
      }

      else
      {
        *(a1 + 8 * v4) = *v10;
        *v10 = v9;
        v8 = *(a1 + 8 * v7);
      }

      if (v9 < v8)
      {
        *(a1 + 8 * v7) = v9;
        *v10 = v8;
        v8 = *(a1 + 8 * v7);
      }

      *(a1 + 8 * v7) = *(v10 - 1);
      *(v10 - 1) = v8;
      v11 = v2 - 1;
      v12 = v4;
      LODWORD(v13) = v2 - 1;
      while (1)
      {
        v14 = 0;
        v15 = v12;
        v16 = (a1 + 8 * v12);
        do
        {
          v18 = v16[1];
          ++v16;
          v17 = v18;
          ++v14;
        }

        while (v18 < v8);
        v13 = v13;
        do
        {
          v19 = a1 + 8 * v13--;
          v20 = *(v19 - 8);
        }

        while (v8 < v20);
        if (v15 + v14 >= v13)
        {
          break;
        }

        *v16 = v20;
        *(a1 + 8 * v13) = v17;
        v8 = *(a1 + 8 * v11);
        v12 = v14 + v15;
      }

      *v16 = v8;
      *(a1 + 8 * v11) = v17;
      v21 = v34;
      v22 = HIDWORD(v34) - 1;
      if (v15 - v4 + v14 >= v2 - v15 - v14)
      {
        if (v34 >= v22)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::NpConnectorArray>>::grow(v33);
          v21 = v34;
          v6 = v35;
        }

        LODWORD(v34) = v21 + 1;
        *(v6 + v21) = v14 + v15 + 1;
        v24 = v34;
        LODWORD(v34) = v34 + 1;
        *(v6 + v24) = v2;
        v2 = v15 + v14 - 1;
      }

      else
      {
        if (v34 >= v22)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::NpConnectorArray>>::grow(v33);
          v21 = v34;
          v6 = v35;
        }

        LODWORD(v34) = v21 + 1;
        *(v6 + v21) = v4;
        v23 = v34;
        LODWORD(v34) = v34 + 1;
        *(v6 + v23) = v15 - 1 + v14;
        v4 = v15 + v14 + 1;
      }
    }

    v25 = v4;
    v26 = v4 + 1;
    do
    {
      v27 = v25++;
      v28 = v26;
      v29 = v27;
      v30 = v27;
      do
      {
        if (*(v5 + 8 * v29) < *(a1 + 8 * v30))
        {
          v30 = v28;
        }

        ++v29;
        ++v28;
      }

      while (v29 < v2);
      if (v30 != v27)
      {
        v31 = *(a1 + 8 * v30);
        *(a1 + 8 * v30) = *(a1 + 8 * v27);
        *(a1 + 8 * v27) = v31;
      }

      ++v26;
    }

    while (v25 != v2);
LABEL_34:
    v32 = v34;
    if (!v34)
    {
      break;
    }

    LODWORD(v34) = v34 - 1;
    v2 = *(v6 + (v32 - 1));
    LODWORD(v34) = v32 - 2;
    v4 = *(v6 + (v32 - 2));
  }

  if (v36)
  {
    if (v6)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      if (v38)
      {
        physx::shdfnd::TempAllocator::deallocate(&v37, v37);
      }
    }
  }
}

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::NpConnectorArray>>::growAndPushBack(uint64_t result, void *a2)
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
    result = physx::shdfnd::ReflectionAllocator<physx::NpConnectorArray>::allocate(result, 8 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 8);
  v8 = &v6[v7];
  if (v7)
  {
    v9 = *v3;
    v10 = v6;
    do
    {
      v11 = *v9++;
      *v10++ = v11;
    }

    while (v10 < v8);
  }

  *v8 = *a2;
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    LODWORD(v7) = *(v3 + 8);
  }

  *v3 = v6;
  *(v3 + 8) = v7 + 1;
  *(v3 + 12) = v5;
  return result;
}

uint64_t physx::shdfnd::ReflectionAllocator<physx::NpConnectorArray>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::NpConnectorArray>::getName() [T = physx::NpConnectorArray]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

void *physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::NpConnectorArray>>::grow(uint64_t a1)
{
  v2 = 2 * *(a1 + 8);
  *(a1 + 8) = v2;
  v3 = physx::shdfnd::ReflectionAllocator<physx::NpConnectorArray>::allocate(a1, 4 * v2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsSortInternals.h", 155);
  result = memcpy(v3, *(a1 + 16), (4 * *(a1 + 4)));
  if (*(a1 + 24) == 1 && *(a1 + 16))
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *(a1 + 24) = 1;
  *(a1 + 16) = v3;
  return result;
}

physx::Gu::ConvexMesh *physx::NpPhysicsInsertionCallback::buildObjectFromData(int a1, int a2, physx::Gu::TriangleMeshData *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a2 - 3) > 1)
  {
    switch(a2)
    {
      case 1:
        v14 = physx::NpFactory::mInstance;

        return physx::GuMeshFactory::createHeightField(v14, a3);
      case 17:
        v13 = physx::NpFactory::mInstance;

        return physx::GuMeshFactory::createBVHStructure(v13, a3);
      case 2:
        v12 = physx::NpFactory::mInstance;

        return physx::GuMeshFactory::createConvexMesh(v12, a3);
      default:
        physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 32, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpPhysicsInsertionCallback.h", 62, "Inserting object failed: Object type not supported for buildObjectFromData.", a6, a7, a8, v8);
        return 0;
    }
  }

  else
  {
    v10 = physx::NpFactory::mInstance;

    return physx::GuMeshFactory::createTriangleMesh(v10, a3);
  }
}

void physx::NpMaterialManager::resize(physx::NpMaterialManager *this)
{
  v2 = *(this + 8);
  if ((2 * v2) >= 0xFFFF)
  {
    v3 = 0xFFFF;
  }

  else
  {
    v3 = 2 * v2;
  }

  *(this + 8) = v3;
  if (2 * v2)
  {
    v4 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, (8 * v3), "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpMaterialManager.h", 126);
    v3 = *(this + 8);
  }

  else
  {
    v4 = 0;
  }

  bzero(v4, (8 * v3));
  if (v2)
  {
    v5 = 0;
    do
    {
      *&v4[v5] = *(*(this + 3) + v5);
      v5 += 8;
    }

    while (8 * v2 != v5);
  }

  if (*(this + 3))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 3) = v4;
}

void *physx::shdfnd::internal::HashBase<physx::PxBase const*,physx::PxBase const*,physx::shdfnd::Hash<physx::PxBase const*>,physx::shdfnd::internal::HashSetBase<physx::PxBase const*,physx::shdfnd::Hash<physx::PxBase const*>,physx::shdfnd::NonTrackingAllocator,false>::GetKey,physx::shdfnd::NonTrackingAllocator,false>::reserveInternal(uint64_t a1, unsigned int a2)
{
  v2 = a2;
  if ((a2 ^ (a2 - 1)) <= a2 - 1)
  {
    v4 = a2 | (a2 >> 1) | ((a2 | (a2 >> 1)) >> 2);
    v5 = v4 | (v4 >> 4) | ((v4 | (v4 >> 4)) >> 8);
    v2 = (v5 | HIWORD(v5)) + 1;
  }

  v6 = *(a1 + 44);
  v7 = *(a1 + 32);
  v8 = (*(a1 + 40) * v2);
  v9 = 4 * v2;
  v10 = ((-4 * (v2 + v8)) & 0xC) + 4 * (v2 + v8);
  if (v10 + 8 * v8)
  {
    v11 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v10 + 8 * v8, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsHashInternals.h", 372);
  }

  else
  {
    v11 = 0;
  }

  v12 = &v11[v9];
  v13 = &v11[v10];
  result = memset(v11, 255, 4 * v2);
  if (v6 == -1)
  {
    if (*(a1 + 52))
    {
      v22 = 0;
      do
      {
        v23 = *(*(a1 + 8) + 8 * v22);
        v24 = (~(v23 << 32) + v23) ^ ((~(v23 << 32) + v23) >> 22);
        v25 = 9 * ((v24 + ~(v24 << 13)) ^ ((v24 + ~(v24 << 13)) >> 8));
        v26 = (v25 ^ (v25 >> 15)) + ~((v25 ^ (v25 >> 15)) << 27);
        LODWORD(v26) = (v2 - 1) & ((v26 >> 31) ^ v26);
        *&v12[4 * v22] = *&v11[4 * v26];
        *&v11[4 * v26] = v22;
        *&v13[8 * v22++] = v23;
      }

      while (v22 < *(a1 + 52));
    }
  }

  else
  {
    result = memcpy(&v11[v9], *(a1 + 16), (4 * *(a1 + 32)));
    v15 = *(a1 + 36);
    if (v15)
    {
      for (i = 0; i < v15; ++i)
      {
        v17 = *(*(a1 + 24) + 4 * i);
        if (v17 != -1)
        {
          do
          {
            v18 = *(*(a1 + 8) + 8 * v17);
            v19 = (~(v18 << 32) + v18) ^ ((~(v18 << 32) + v18) >> 22);
            v20 = 9 * ((v19 + ~(v19 << 13)) ^ ((v19 + ~(v19 << 13)) >> 8));
            v21 = (v20 ^ (v20 >> 15)) + ~((v20 ^ (v20 >> 15)) << 27);
            LODWORD(v21) = (v2 - 1) & ((v21 >> 31) ^ v21);
            *&v12[4 * v17] = *&v11[4 * v21];
            *&v11[4 * v21] = v17;
            *&v13[8 * v17] = v18;
            v17 = *(*(a1 + 16) + 4 * v17);
          }

          while (v17 != -1);
          v15 = *(a1 + 36);
        }
      }
    }
  }

  if (*a1)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(a1 + 16) = v12;
  *(a1 + 24) = v11;
  *a1 = v11;
  *(a1 + 8) = v13;
  v27 = v8 - 1;
  *(a1 + 32) = v8;
  *(a1 + 36) = v2;
  if (v27 > v7)
  {
    v28 = 0;
    v29 = vdupq_n_s64(v7);
    v30 = vaddq_s64(v29, xmmword_1E3049640);
    v31 = vaddq_s64(v29, xmmword_1E3049620);
    v32 = vdupq_n_s64(v27 - v7 - 1);
    v33 = &v11[4 * v7 + 8 + v9];
    v34 = vdupq_n_s64(1uLL);
    v35 = vdupq_n_s64(4uLL);
    do
    {
      v36 = vdupq_n_s64(v28);
      v37 = vmovn_s64(vcgeq_u64(v32, vorrq_s8(v36, xmmword_1E3049620)));
      v38 = vaddq_s64(v31, v34);
      if (vuzp1_s16(v37, 2).u8[0])
      {
        *(v33 - 2) = v38.i32[0];
      }

      if (vuzp1_s16(v37, 2).i8[2])
      {
        *(v33 - 1) = v38.i32[2];
      }

      v39 = vorrq_s8(v36, xmmword_1E3049640);
      v40 = vaddq_s64(v30, v34);
      if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v32, v39))).i32[1])
      {
        *v33 = v40.i32[0];
        *(v33 + 1) = v40.i32[2];
      }

      v28 += 4;
      v30 = vaddq_s64(v30, v35);
      v31 = vaddq_s64(v31, v35);
      v33 += 16;
    }

    while (((v27 - v7 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v28);
  }

  *&v12[4 * v27] = *(a1 + 44);
  *(a1 + 44) = v7;
  return result;
}

uint64_t *physx::shdfnd::SyncT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::SyncImpl>>::SyncT(uint64_t *a1)
{
  v2 = physx::shdfnd::ReflectionAllocator<physx::shdfnd::SyncImpl>::allocate(a1, 120, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsSync.h", 95);
  *a1 = v2;
  pthread_mutex_init(v2, 0);
  pthread_cond_init((v2 + 64), 0);
  *(v2 + 116) = 0;
  *(v2 + 112) = 0;
  return a1;
}

uint64_t physx::shdfnd::ReflectionAllocator<physx::shdfnd::SyncImpl>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::shdfnd::SyncImpl>::getName() [T = physx::shdfnd::SyncImpl]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

pthread_mutex_t **physx::shdfnd::SyncT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::SyncImpl>>::~SyncT(pthread_mutex_t **a1)
{
  v2 = *a1;
  pthread_cond_destroy(&(*a1)[1]);
  pthread_mutex_destroy(v2);
  if (*a1)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  return a1;
}

uint64_t PxOverflowBuffer<physx::PxRaycastHit>::processTouches(uint64_t a1)
{
  v1 = *(a1 + 176);
  if ((v1 & 1) == 0)
  {
    *(a1 + 168) = *(a1 + 80);
    *(a1 + 100) = *(a1 + 92);
    *(a1 + 176) = 1;
    *(a1 + 80) = a1 + 104;
    *(a1 + 88) = 1;
  }

  return v1 ^ 1u;
}

uint64_t PxOverflowBuffer<physx::PxRaycastHit>::finalizeQuery(uint64_t result)
{
  if (*(result + 176) == 1)
  {
    *(result + 96) = *(result + 92) != 0;
    *(result + 92) = *(result + 100);
    *(result + 80) = *(result + 168);
  }

  return result;
}

uint64_t PxOverflowBuffer<physx::PxOverlapHit>::processTouches(uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 1) == 0)
  {
    *(a1 + 88) = *(a1 + 40);
    *(a1 + 60) = *(a1 + 52);
    *(a1 + 96) = 1;
    *(a1 + 40) = a1 + 64;
    *(a1 + 48) = 1;
  }

  return v1 ^ 1u;
}

uint64_t PxOverflowBuffer<physx::PxOverlapHit>::finalizeQuery(uint64_t result)
{
  if (*(result + 96) == 1)
  {
    *(result + 56) = *(result + 52) != 0;
    *(result + 52) = *(result + 60);
    *(result + 40) = *(result + 88);
  }

  return result;
}

uint64_t PxOverflowBuffer<physx::PxSweepHit>::processTouches(uint64_t a1)
{
  v1 = *(a1 + 160);
  if ((v1 & 1) == 0)
  {
    *(a1 + 152) = *(a1 + 72);
    *(a1 + 92) = *(a1 + 84);
    *(a1 + 160) = 1;
    *(a1 + 72) = a1 + 96;
    *(a1 + 80) = 1;
  }

  return v1 ^ 1u;
}

uint64_t PxOverflowBuffer<physx::PxSweepHit>::finalizeQuery(uint64_t result)
{
  if (*(result + 160) == 1)
  {
    *(result + 88) = *(result + 84) != 0;
    *(result + 84) = *(result + 92);
    *(result + 72) = *(result + 152);
  }

  return result;
}

uint64_t physx::shdfnd::Array<physx::PxAggregate *,physx::shdfnd::ReflectionAllocator<physx::PxAggregate *>>::recreate(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2)
  {
    result = physx::shdfnd::ReflectionAllocator<physx::PxAggregate *>::allocate(result, 8 * a2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
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

uint64_t physx::shdfnd::ReflectionAllocator<physx::PxAggregate *>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxAggregate *>::getName() [T = physx::PxAggregate *]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

uint64_t physx::shdfnd::Array<physx::PxAggregate *,physx::shdfnd::ReflectionAllocator<physx::PxAggregate *>>::growAndPushBack(uint64_t result, void *a2)
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
    result = physx::shdfnd::ReflectionAllocator<physx::PxAggregate *>::allocate(result, 8 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 8);
  v8 = &v6[v7];
  if (v7)
  {
    v9 = *v3;
    v10 = v6;
    do
    {
      v11 = *v9++;
      *v10++ = v11;
    }

    while (v10 < v8);
  }

  *v8 = *a2;
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    LODWORD(v7) = *(v3 + 8);
  }

  *v3 = v6;
  *(v3 + 8) = v7 + 1;
  *(v3 + 12) = v5;
  return result;
}

uint64_t physx::shdfnd::Array<physx::PxConstraint *,physx::shdfnd::ReflectionAllocator<physx::PxConstraint *>>::recreate(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2)
  {
    result = physx::shdfnd::ReflectionAllocator<physx::PxConstraint *>::allocate(result, 8 * a2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
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

uint64_t physx::shdfnd::ReflectionAllocator<physx::PxConstraint *>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxConstraint *>::getName() [T = physx::PxConstraint *]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

uint64_t physx::shdfnd::Array<physx::PxConstraint *,physx::shdfnd::ReflectionAllocator<physx::PxConstraint *>>::growAndPushBack(uint64_t result, void *a2)
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
    result = physx::shdfnd::ReflectionAllocator<physx::PxConstraint *>::allocate(result, 8 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 8);
  v8 = &v6[v7];
  if (v7)
  {
    v9 = *v3;
    v10 = v6;
    do
    {
      v11 = *v9++;
      *v10++ = v11;
    }

    while (v10 < v8);
  }

  *v8 = *a2;
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    LODWORD(v7) = *(v3 + 8);
  }

  *v3 = v6;
  *(v3 + 8) = v7 + 1;
  *(v3 + 12) = v5;
  return result;
}

uint64_t physx::shdfnd::Array<physx::PxArticulationBase *,physx::shdfnd::ReflectionAllocator<physx::PxArticulationBase *>>::recreate(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2)
  {
    result = physx::shdfnd::ReflectionAllocator<physx::PxArticulationBase *>::allocate(result, 8 * a2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
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

uint64_t physx::shdfnd::ReflectionAllocator<physx::PxArticulationBase *>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxArticulationBase *>::getName() [T = physx::PxArticulationBase *]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

uint64_t physx::shdfnd::Array<physx::PxArticulationBase *,physx::shdfnd::ReflectionAllocator<physx::PxArticulationBase *>>::growAndPushBack(uint64_t result, void *a2)
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
    result = physx::shdfnd::ReflectionAllocator<physx::PxArticulationBase *>::allocate(result, 8 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 8);
  v8 = &v6[v7];
  if (v7)
  {
    v9 = *v3;
    v10 = v6;
    do
    {
      v11 = *v9++;
      *v10++ = v11;
    }

    while (v10 < v8);
  }

  *v8 = *a2;
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    LODWORD(v7) = *(v3 + 8);
  }

  *v3 = v6;
  *(v3 + 8) = v7 + 1;
  *(v3 + 12) = v5;
  return result;
}

uint64_t physx::shdfnd::internal::HashBase<physx::PxActor *,physx::PxActor *,physx::shdfnd::Hash<physx::PxActor *>,physx::shdfnd::internal::HashSetBase<physx::PxActor *,physx::shdfnd::Hash<physx::PxActor *>,physx::shdfnd::NonTrackingAllocator,false>::GetKey,physx::shdfnd::NonTrackingAllocator,false>::create(int32x2_t *a1, void *a2, _BYTE *a3)
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
    v12 = a1[5].u32[1];
    if (v12 == -1)
    {
      if (v5)
      {
        v13 = 2 * v5;
      }

      else
      {
        v13 = 16;
      }

      if (v5 >= v13)
      {
        v12 = -1;
      }

      else
      {
        physx::shdfnd::internal::HashBase<physx::PxBase const*,physx::PxBase const*,physx::shdfnd::Hash<physx::PxBase const*>,physx::shdfnd::internal::HashSetBase<physx::PxBase const*,physx::shdfnd::Hash<physx::PxBase const*>,physx::shdfnd::NonTrackingAllocator,false>::GetKey,physx::shdfnd::NonTrackingAllocator,false>::reserveInternal(a1, v13);
        v5 = a1[4].u32[1];
        v12 = a1[5].u32[1];
      }

      v15 = ~(*a2 << 32) + *a2;
      v16 = 9 * (((v15 ^ (v15 >> 22)) + ~((v15 ^ (v15 >> 22)) << 13)) ^ (((v15 ^ (v15 >> 22)) + ~((v15 ^ (v15 >> 22)) << 13)) >> 8));
      v17 = (v16 ^ (v16 >> 15)) + ~((v16 ^ (v16 >> 15)) << 27);
      v9 = (v5 - 1) & ((v17 >> 31) ^ v17);
    }

    v19 = a1[1];
    v18 = a1[2];
    a1[5].i32[1] = *(*&v18 + 4 * v12);
    v20 = a1[3];
    *(*&v18 + 4 * v12) = *(*&v20 + 4 * v9);
    *(*&v20 + 4 * v9) = v12;
    a1[6] = vadd_s32(a1[6], 0x100000001);
    return *&v19 + 8 * v12;
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

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::NpArticulation>>>::growAndPushBack(uint64_t result, void *a2)
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
    result = (8 * v5);
    if (result > 0x200 || (*(v3 + 512) & 1) != 0)
    {
      result = physx::shdfnd::ReflectionAllocator<physx::NpArticulation>::allocate(result, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
      v6 = result;
    }

    else
    {
      *(v3 + 512) = 1;
      v6 = v3;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 528);
  v8 = &v6[v7];
  if (v7)
  {
    v9 = *(v3 + 520);
    v10 = v6;
    do
    {
      v11 = *v9++;
      *v10++ = v11;
    }

    while (v10 < v8);
  }

  *v8 = *a2;
  if ((*(v3 + 532) & 0x80000000) == 0)
  {
    v12 = *(v3 + 520);
    if (v12 == v3)
    {
      *(v3 + 512) = 0;
    }

    else if (v12)
    {
      result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      LODWORD(v7) = *(v3 + 528);
    }
  }

  *(v3 + 520) = v6;
  *(v3 + 532) = v5;
  *(v3 + 528) = v7 + 1;
  return result;
}

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::NpArticulationReducedCoordinate>>>::growAndPushBack(uint64_t result, void *a2)
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
    result = (8 * v5);
    if (result > 0x200 || (*(v3 + 512) & 1) != 0)
    {
      result = physx::shdfnd::ReflectionAllocator<physx::NpArticulationReducedCoordinate>::allocate(result, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
      v6 = result;
    }

    else
    {
      *(v3 + 512) = 1;
      v6 = v3;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 528);
  v8 = &v6[v7];
  if (v7)
  {
    v9 = *(v3 + 520);
    v10 = v6;
    do
    {
      v11 = *v9++;
      *v10++ = v11;
    }

    while (v10 < v8);
  }

  *v8 = *a2;
  if ((*(v3 + 532) & 0x80000000) == 0)
  {
    v12 = *(v3 + 520);
    if (v12 == v3)
    {
      *(v3 + 512) = 0;
    }

    else if (v12)
    {
      result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      LODWORD(v7) = *(v3 + 528);
    }
  }

  *(v3 + 520) = v6;
  *(v3 + 532) = v5;
  *(v3 + 528) = v7 + 1;
  return result;
}

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::NpArticulationLink>>>::growAndPushBack(uint64_t result, void *a2)
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
    result = (8 * v5);
    if (result > 0x200 || (*(v3 + 512) & 1) != 0)
    {
      result = physx::shdfnd::ReflectionAllocator<physx::NpArticulationLink>::allocate(result, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
      v6 = result;
    }

    else
    {
      *(v3 + 512) = 1;
      v6 = v3;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 528);
  v8 = &v6[v7];
  if (v7)
  {
    v9 = *(v3 + 520);
    v10 = v6;
    do
    {
      v11 = *v9++;
      *v10++ = v11;
    }

    while (v10 < v8);
  }

  *v8 = *a2;
  if ((*(v3 + 532) & 0x80000000) == 0)
  {
    v12 = *(v3 + 520);
    if (v12 == v3)
    {
      *(v3 + 512) = 0;
    }

    else if (v12)
    {
      result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      LODWORD(v7) = *(v3 + 528);
    }
  }

  *(v3 + 520) = v6;
  *(v3 + 532) = v5;
  *(v3 + 528) = v7 + 1;
  return result;
}

uint64_t physx::shdfnd::PoolBase<physx::NpArticulationJoint,physx::shdfnd::ReflectionAllocator<physx::NpArticulationJoint>>::allocateSlab(uint64_t a1)
{
  result = physx::shdfnd::ReflectionAllocator<physx::NpArticulationJoint>::allocate(a1, *(a1 + 552), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsPool.h", 180);
  v3 = result;
  v8 = result;
  v4 = *(a1 + 536);
  if ((*(a1 + 540) & 0x7FFFFFFFu) <= v4)
  {
    result = physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::NpArticulationJoint>>>::growAndPushBack(a1 + 8, &v8);
  }

  else
  {
    *(*(a1 + 528) + 8 * v4) = result;
    *(a1 + 536) = v4 + 1;
  }

  v5 = (v3 + 440 * *(a1 + 544) - 440);
  if (v5 >= v3)
  {
    v6 = *(a1 + 560);
    do
    {
      *v5 = v6;
      v7 = v5 - 55;
      v6 = v5;
      v5 = v7;
    }

    while (v7 >= v3);
    *(a1 + 560) = v7 + 55;
  }

  return result;
}

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::NpArticulationJoint>>>::growAndPushBack(uint64_t a1, void *a2)
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
      v7 = physx::shdfnd::ReflectionAllocator<physx::NpArticulationJoint>::allocate(a1, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
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

uint64_t physx::shdfnd::PoolBase<physx::NpArticulationJointReducedCoordinate,physx::shdfnd::ReflectionAllocator<physx::NpArticulationJointReducedCoordinate>>::allocateSlab(uint64_t a1)
{
  result = physx::shdfnd::ReflectionAllocator<physx::NpArticulationJointReducedCoordinate>::allocate(a1, *(a1 + 552), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsPool.h", 180);
  v3 = result;
  v8 = result;
  v4 = *(a1 + 536);
  if ((*(a1 + 540) & 0x7FFFFFFFu) <= v4)
  {
    result = physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::NpArticulationJointReducedCoordinate>>>::growAndPushBack(a1 + 8, &v8);
  }

  else
  {
    *(*(a1 + 528) + 8 * v4) = result;
    *(a1 + 536) = v4 + 1;
  }

  v5 = (v3 + 440 * *(a1 + 544) - 440);
  if (v5 >= v3)
  {
    v6 = *(a1 + 560);
    do
    {
      *v5 = v6;
      v7 = v5 - 55;
      v6 = v5;
      v5 = v7;
    }

    while (v7 >= v3);
    *(a1 + 560) = v7 + 55;
  }

  return result;
}

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::NpArticulationJointReducedCoordinate>>>::growAndPushBack(uint64_t a1, void *a2)
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
      v7 = physx::shdfnd::ReflectionAllocator<physx::NpArticulationJointReducedCoordinate>::allocate(a1, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
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

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::NpConstraint>>>::growAndPushBack(uint64_t result, void *a2)
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
    result = (8 * v5);
    if (result > 0x200 || (*(v3 + 512) & 1) != 0)
    {
      result = physx::shdfnd::ReflectionAllocator<physx::NpConstraint>::allocate(result, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
      v6 = result;
    }

    else
    {
      *(v3 + 512) = 1;
      v6 = v3;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 528);
  v8 = &v6[v7];
  if (v7)
  {
    v9 = *(v3 + 520);
    v10 = v6;
    do
    {
      v11 = *v9++;
      *v10++ = v11;
    }

    while (v10 < v8);
  }

  *v8 = *a2;
  if ((*(v3 + 532) & 0x80000000) == 0)
  {
    v12 = *(v3 + 520);
    if (v12 == v3)
    {
      *(v3 + 512) = 0;
    }

    else if (v12)
    {
      result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      LODWORD(v7) = *(v3 + 528);
    }
  }

  *(v3 + 520) = v6;
  *(v3 + 532) = v5;
  *(v3 + 528) = v7 + 1;
  return result;
}

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::NpAggregate>>>::growAndPushBack(uint64_t result, void *a2)
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
    result = (8 * v5);
    if (result > 0x200 || (*(v3 + 512) & 1) != 0)
    {
      result = physx::shdfnd::ReflectionAllocator<physx::NpAggregate>::allocate(result, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
      v6 = result;
    }

    else
    {
      *(v3 + 512) = 1;
      v6 = v3;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 528);
  v8 = &v6[v7];
  if (v7)
  {
    v9 = *(v3 + 520);
    v10 = v6;
    do
    {
      v11 = *v9++;
      *v10++ = v11;
    }

    while (v10 < v8);
  }

  *v8 = *a2;
  if ((*(v3 + 532) & 0x80000000) == 0)
  {
    v12 = *(v3 + 520);
    if (v12 == v3)
    {
      *(v3 + 512) = 0;
    }

    else if (v12)
    {
      result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      LODWORD(v7) = *(v3 + 528);
    }
  }

  *(v3 + 520) = v6;
  *(v3 + 532) = v5;
  *(v3 + 528) = v7 + 1;
  return result;
}

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::NpMaterial>>>::growAndPushBack(uint64_t result, void *a2)
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
    result = (8 * v5);
    if (result > 0x200 || (*(v3 + 512) & 1) != 0)
    {
      result = physx::shdfnd::ReflectionAllocator<physx::NpMaterial>::allocate(result, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
      v6 = result;
    }

    else
    {
      *(v3 + 512) = 1;
      v6 = v3;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 528);
  v8 = &v6[v7];
  if (v7)
  {
    v9 = *(v3 + 520);
    v10 = v6;
    do
    {
      v11 = *v9++;
      *v10++ = v11;
    }

    while (v10 < v8);
  }

  *v8 = *a2;
  if ((*(v3 + 532) & 0x80000000) == 0)
  {
    v12 = *(v3 + 520);
    if (v12 == v3)
    {
      *(v3 + 512) = 0;
    }

    else if (v12)
    {
      result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      LODWORD(v7) = *(v3 + 528);
    }
  }

  *(v3 + 520) = v6;
  *(v3 + 532) = v5;
  *(v3 + 528) = v7 + 1;
  return result;
}

uint64_t physx::shdfnd::PoolBase<physx::NpConnectorArray,physx::shdfnd::ReflectionAllocator<physx::NpConnectorArray>>::allocateSlab(uint64_t a1)
{
  result = physx::shdfnd::ReflectionAllocator<physx::NpConnectorArray>::allocate(a1, *(a1 + 552), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsPool.h", 180);
  v3 = result;
  v8 = result;
  v4 = *(a1 + 536);
  if ((*(a1 + 540) & 0x7FFFFFFFu) <= v4)
  {
    result = physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::NpConnectorArray>>>::growAndPushBack(a1 + 8, &v8);
  }

  else
  {
    *(*(a1 + 528) + 8 * v4) = result;
    *(a1 + 536) = v4 + 1;
  }

  v5 = v3 + 88 * *(a1 + 544) - 88;
  if (v5 >= v3)
  {
    v6 = *(a1 + 560);
    v7 = (v3 + 88 * *(a1 + 544) - 88);
    do
    {
      *v7 = v6;
      v7 -= 11;
      v6 = v5;
      v5 = v7;
    }

    while (v7 >= v3);
    *(a1 + 560) = v7 + 11;
  }

  return result;
}

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::NpConnectorArray>>>::growAndPushBack(uint64_t a1, void *a2)
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
      v7 = physx::shdfnd::ReflectionAllocator<physx::NpConnectorArray>::allocate(a1, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
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

uint64_t physx::shdfnd::Array<unsigned short,physx::shdfnd::InlineAllocator<8u,physx::shdfnd::ReflectionAllocator<unsigned short>>>::recreate(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2 > 4 || (*(result + 8) & 1) != 0)
  {
    result = physx::shdfnd::ReflectionAllocator<unsigned short>::allocate(result, 2 * a2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v4 = result;
  }

  else
  {
    *(result + 8) = 1;
    v4 = result;
  }

  v5 = *(v3 + 24);
  v6 = *(v3 + 16);
  if (v5)
  {
    v7 = &v4[v5];
    v8 = *(v3 + 16);
    v9 = v4;
    do
    {
      v10 = *v8++;
      *v9++ = v10;
    }

    while (v9 < v7);
  }

  if ((*(v3 + 28) & 0x80000000) == 0)
  {
    if (v6 == v3)
    {
      *(v3 + 8) = 0;
    }

    else if (v6)
    {
      result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }

  *(v3 + 16) = v4;
  *(v3 + 28) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::NpShape>>>::growAndPushBack(uint64_t result, void *a2)
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
    result = (8 * v5);
    if (result > 0x200 || (*(v3 + 512) & 1) != 0)
    {
      result = physx::shdfnd::ReflectionAllocator<physx::NpShape>::allocate(result, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
      v6 = result;
    }

    else
    {
      *(v3 + 512) = 1;
      v6 = v3;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 528);
  v8 = &v6[v7];
  if (v7)
  {
    v9 = *(v3 + 520);
    v10 = v6;
    do
    {
      v11 = *v9++;
      *v10++ = v11;
    }

    while (v10 < v8);
  }

  *v8 = *a2;
  if ((*(v3 + 532) & 0x80000000) == 0)
  {
    v12 = *(v3 + 520);
    if (v12 == v3)
    {
      *(v3 + 512) = 0;
    }

    else if (v12)
    {
      result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      LODWORD(v7) = *(v3 + 528);
    }
  }

  *(v3 + 520) = v6;
  *(v3 + 532) = v5;
  *(v3 + 528) = v7 + 1;
  return result;
}

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::NpRigidStatic>>>::growAndPushBack(uint64_t result, void *a2)
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
    result = (8 * v5);
    if (result > 0x200 || (*(v3 + 512) & 1) != 0)
    {
      result = physx::shdfnd::ReflectionAllocator<physx::NpRigidStatic>::allocate(result, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
      v6 = result;
    }

    else
    {
      *(v3 + 512) = 1;
      v6 = v3;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 528);
  v8 = &v6[v7];
  if (v7)
  {
    v9 = *(v3 + 520);
    v10 = v6;
    do
    {
      v11 = *v9++;
      *v10++ = v11;
    }

    while (v10 < v8);
  }

  *v8 = *a2;
  if ((*(v3 + 532) & 0x80000000) == 0)
  {
    v12 = *(v3 + 520);
    if (v12 == v3)
    {
      *(v3 + 512) = 0;
    }

    else if (v12)
    {
      result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      LODWORD(v7) = *(v3 + 528);
    }
  }

  *(v3 + 520) = v6;
  *(v3 + 532) = v5;
  *(v3 + 528) = v7 + 1;
  return result;
}

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::NpRigidDynamic>>>::growAndPushBack(uint64_t result, void *a2)
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
    result = (8 * v5);
    if (result > 0x200 || (*(v3 + 512) & 1) != 0)
    {
      result = physx::shdfnd::ReflectionAllocator<physx::NpRigidDynamic>::allocate(result, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
      v6 = result;
    }

    else
    {
      *(v3 + 512) = 1;
      v6 = v3;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 528);
  v8 = &v6[v7];
  if (v7)
  {
    v9 = *(v3 + 520);
    v10 = v6;
    do
    {
      v11 = *v9++;
      *v10++ = v11;
    }

    while (v10 < v8);
  }

  *v8 = *a2;
  if ((*(v3 + 532) & 0x80000000) == 0)
  {
    v12 = *(v3 + 520);
    if (v12 == v3)
    {
      *(v3 + 512) = 0;
    }

    else if (v12)
    {
      result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      LODWORD(v7) = *(v3 + 528);
    }
  }

  *(v3 + 520) = v6;
  *(v3 + 532) = v5;
  *(v3 + 528) = v7 + 1;
  return result;
}

void *physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<physx::PxDeletionListener * const,physx::NpPhysics::NpDelListenerEntry *>,physx::PxDeletionListener *,physx::shdfnd::Hash<physx::PxDeletionListener *>,physx::shdfnd::internal::HashMapBase<physx::PxDeletionListener *,physx::NpPhysics::NpDelListenerEntry *,physx::shdfnd::Hash<physx::PxDeletionListener *>,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(uint64_t a1, unsigned int a2)
{
  v2 = a2;
  if ((a2 ^ (a2 - 1)) <= a2 - 1)
  {
    v4 = a2 | (a2 >> 1) | ((a2 | (a2 >> 1)) >> 2);
    v5 = v4 | (v4 >> 4) | ((v4 | (v4 >> 4)) >> 8);
    v2 = (v5 | HIWORD(v5)) + 1;
  }

  v6 = *(a1 + 32);
  v7 = (*(a1 + 40) * v2);
  v8 = ((-4 * (v2 + v7)) & 0xC) + 4 * (v2 + v7);
  if (v8 + 16 * v7)
  {
    v9 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v8 + 16 * v7, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsHashInternals.h", 372);
  }

  else
  {
    v9 = 0;
  }

  v10 = &v9[4 * v2];
  v11 = &v9[v8];
  result = memset(v9, 255, 4 * v2);
  if (*(a1 + 52))
  {
    v13 = 0;
    v14 = *(a1 + 8);
    do
    {
      v15 = *(v14 + 16 * v13);
      *&v11[16 * v13] = v15;
      v16 = (~(v15 << 32) + v15) ^ ((~(v15 << 32) + v15) >> 22);
      v17 = 9 * ((v16 + ~(v16 << 13)) ^ ((v16 + ~(v16 << 13)) >> 8));
      v18 = (v17 ^ (v17 >> 15)) + ~((v17 ^ (v17 >> 15)) << 27);
      LODWORD(v18) = (v2 - 1) & ((v18 >> 31) ^ v18);
      *&v10[4 * v13] = *&v9[4 * v18];
      *&v9[4 * v18] = v13++;
    }

    while (v13 < *(a1 + 52));
  }

  if (*a1)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(a1 + 16) = v10;
  *(a1 + 24) = v9;
  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 32) = v7;
  *(a1 + 36) = v2;
  if (*(a1 + 44) == -1)
  {
    *(a1 + 44) = v6;
  }

  return result;
}

uint64_t physx::shdfnd::Array<physx::NpScene *,physx::shdfnd::ReflectionAllocator<physx::NpScene *>>::growAndPushBack(uint64_t result, void *a2)
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
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::NpScene *>::getName() [T = physx::NpScene *]";
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

uint64_t physx::NpRigidDynamic::NpRigidDynamic(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 196613;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0x10000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0x10000;
  *(a1 + 72) = -1;
  *(a1 + 80) = 0;
  *a1 = &unk_1F5D26568;
  *(a1 + 96) = 0;
  *(a1 + 112) = 0;
  *(a1 + 104) = 0;
  physx::Sc::BodyCore::BodyCore(a1 + 128, 1, a2);
  *(a1 + 104) = *(a1 + 104) & 0xF0FFFFFF | 0x3000000;
  *&v3 = *(a1 + 160);
  DWORD2(v3) = *(a1 + 168);
  HIDWORD(v3) = *(a1 + 208);
  *(a1 + 320) = *(a1 + 144);
  *(a1 + 336) = v3;
  *&v4 = *(a1 + 212);
  *(&v4 + 1) = *(a1 + 224);
  *(a1 + 352) = v4;
  *(a1 + 368) = *(a1 + 232);
  *(a1 + 372) = *(a1 + 284);
  *(a1 + 376) = 1;
  *a1 = &unk_1F5D255C0;
  return a1;
}

void physx::NpRigidDynamic::~NpRigidDynamic(physx::NpRigidDynamic *this)
{
  *this = &unk_1F5D26568;
  physx::NpRigidActorTemplate<physx::PxRigidDynamic>::~NpRigidActorTemplate(this);
  v1 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

  v1();
}

uint64_t physx::NpRigidActorTemplate<physx::PxRigidDynamic>::requiresObjects(uint64_t result, uint64_t a2)
{
  if (*(result + 48))
  {
    v3 = result;
    v4 = 0;
    v5 = (result + 40);
    v6 = 8 * *(result + 48);
    do
    {
      v7 = v5;
      if (*(v3 + 48) != 1)
      {
        v7 = *v5;
      }

      result = (*(*a2 + 16))(a2, v7[v4 / 8]);
      v4 += 8;
    }

    while (v6 != v4);
  }

  return result;
}

uint64_t physx::NpRigidDynamic::release(physx::NpRigidDynamic *this)
{
  v2 = (this + 96);
  physx::NpPhysics::notifyDeletionListeners(physx::NpPhysics::mInstance, this, *(this + 2), 1);
  v3 = *(this + 26);
  if ((v3 >> 30) - 1 > 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = *v2;
  }

  v5 = *(v2 + *(&physx::Scb::Actor::sLazyInitOffsets + ((v3 >> 24) & 0xF) + 3) + 12);
  if (v4 && (*(v2 + *(&physx::Scb::Actor::sLazyInitOffsets + ((v3 >> 24) & 0xF) + 3) + 12) & 8) != 0)
  {
    physx::NpShapeManager::clearShapesOnRelease(this + 5, v4);
    physx::NpRigidActorTemplate<physx::PxRigidDynamic>::release(this);
  }

  else
  {
    physx::NpRigidActorTemplate<physx::PxRigidDynamic>::release(this);
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  physx::Scb::Scene::removeActor(v4, v2, 1, (v5 & 8) != 0);
  v7 = *(this + 22);
  physx::NpScene::removeFromRigidActorList(&v4[-2], &v7);
LABEL_9:

  return physx::Scb::Base::destroy(v2);
}

int32x2_t *physx::NpRigidDynamic::setGlobalPose(uint64_t a1, float *a2, int a3)
{
  v5 = a1 + *(&physx::NpActor::sLazyInitOffsets + *(a1 + 8) + 18);
  if (((*(v5 + 8) >> 30) - 1) > 1)
  {
    v7 = 0;
  }

  else
  {
    v6 = *v5;
    if (v6)
    {
      v7 = v6 - 16;
    }

    else
    {
      v7 = 0;
    }
  }

  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = sqrtf((((v8 * v8) + (*a2 * *a2)) + (v9 * v9)) + (v10 * v10));
  v12 = *a2 / v11;
  v13 = v8 / v11;
  v14 = v9 / v11;
  v15 = v10 / v11;
  v16 = (a1 + 96);
  v17 = *(a1 + 380);
  if ((v17 & 0x400) != 0)
  {
    v18 = (*(a1 + 112) + 224);
  }

  else
  {
    v18 = (a1 + 176);
  }

  v19 = v18[4] + v18[4];
  v20 = v18[5] + v18[5];
  v21 = v18[6] + v18[6];
  v22 = (v15 * v15) + -0.5;
  v23 = ((v13 * v20) + (v12 * v19)) + (v14 * v21);
  v24 = a2[4] + (((v15 * ((v13 * v21) - (v14 * v20))) + (v19 * v22)) + (v12 * v23));
  v25 = a2[5] + (((v15 * ((v14 * v19) - (v12 * v21))) + (v20 * v22)) + (v13 * v23));
  v26 = a2[6] + (((v15 * ((v12 * v20) - (v13 * v19))) + (v21 * v22)) + (v14 * v23));
  v28 = v18[2];
  v27 = v18[3];
  v29 = v18[1];
  v30 = (((v12 * v27) + (v15 * *v18)) + (v13 * v28)) - (v29 * v14);
  v31 = (((v13 * v27) + (v15 * v29)) + (v14 * *v18)) - (v28 * v12);
  v32 = (((v14 * v27) + (v15 * v28)) + (v12 * v29)) - (*v18 * v13);
  v33 = ((v15 * v27) - (v12 * *v18)) - (v13 * v29);
  *v45 = v30;
  *&v45[1] = v31;
  v34 = v33 - (v14 * v28);
  *&v45[2] = v32;
  *&v45[3] = v34;
  *&v45[4] = v24;
  *&v45[5] = v25;
  *&v45[6] = v26;
  *(a1 + 320) = v30;
  *(a1 + 324) = v31;
  *(a1 + 328) = v32;
  *(a1 + 332) = v34;
  *(a1 + 336) = v24;
  *(a1 + 340) = v25;
  *(a1 + 344) = v26;
  v35 = *(a1 + 104) >> 30;
  if (v35 == 2)
  {
    v36 = *v16;
    if ((*v16)[961].i8[1])
    {
LABEL_13:
      *(a1 + 380) = v17 & 0xFFDFFFFF;
      result = physx::Scb::Scene::scheduleForUpdate(v36, a1 + 96);
      *(a1 + 380) |= 0x100000u;
      if (!v7)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if (v35 == 3)
  {
    v36 = *v16;
    goto LABEL_13;
  }

  result = physx::Sc::BodyCore::setBody2World(a1 + 128, v45);
  if (v7)
  {
LABEL_14:
    result = physx::NpShapeManager::markAllSceneQueryForUpdate(a1 + 40, v7 + 8640, a1);
    ++*(v7 + 8732);
  }

LABEL_15:
  if (*(a1 + 80))
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/NpRigidDynamic.cpp", 102, "PxRigidDynamic::setGlobalPose: Actor is part of a pruning structure, pruning structure is now invalid!", v38, v39, v40, v44);
    result = physx::Sq::PruningStructure::invalidate(*(a1 + 80), a1);
  }

  if (v7 && a3)
  {
    v41 = *(a1 + 104);
    v42 = (v41 & 1) != 0 ? *(a1 + 112) : v16 + *(&physx::Scb::Actor::sLazyInitOffsets + ((v41 >> 24) & 0xF) + 3) + 12;
    if ((*v42 & 8) == 0)
    {
      v43 = ((*(a1 + 381) & 0x40) != 0 ? *(a1 + 112) + 348 : a1 + 172);
      if ((*v43 & 1) == 0)
      {

        return physx::NpRigidDynamic::wakeUpInternalNoKinematicTest(a1, a1 + 96, 0, 1);
      }
    }
  }

  return result;
}

uint64_t physx::NpRigidDynamic::setKinematicTarget(uint64_t a1, float *a2, double a3, int32x4_t a4)
{
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = sqrtf((((v5 * v5) + (*a2 * *a2)) + (v6 * v6)) + (v7 * v7));
  *a4.i32 = *a2 / v8;
  v9 = v5 / v8;
  v10 = v6 / v8;
  v11 = v7 / v8;
  v12 = a2[4];
  if ((*(a1 + 381) & 4) != 0)
  {
    v13 = *(a1 + 112) + 224;
  }

  else
  {
    v13 = a1 + 176;
  }

  v14 = *(v13 + 16) + *(v13 + 16);
  v15 = *(v13 + 20) + *(v13 + 20);
  v16 = *(v13 + 24) + *(v13 + 24);
  v17 = (v11 * v11) + -0.5;
  v18 = ((v9 * v15) + (*a4.i32 * v14)) + (v10 * v16);
  v19 = -v9;
  v20 = a2[5] + (((v11 * ((v10 * v14) - (*a4.i32 * v16))) + (v15 * v17)) + (v9 * v18));
  v21 = a2[6] + (((v11 * ((*a4.i32 * v15) - (v9 * v14))) + (v16 * v17)) + (v10 * v18));
  v22 = vextq_s8(vextq_s8(*v13, *v13, 0xCuLL), *v13, 8uLL);
  v23 = v22;
  v23.f32[3] = v10;
  v24 = (v11 * (vmuls_lane_f32(v15, vnegq_f32(v23), 3) + (v9 * v16))) + (v14 * v17);
  *&a4.i32[1] = v9;
  *&a4.i32[2] = v10;
  v25 = a4;
  v25.f32[3] = -*a4.i32;
  v26 = vmlaq_n_f32(vmulq_f32(vextq_s8(vdupq_laneq_s32(*v13, 3), *v13, 4uLL), v25), *v13, v11);
  v27 = vuzp2q_s32(vextq_s8(v26, v26, 4uLL), v26);
  v25.f32[3] = v19;
  v28 = vuzp2q_s32(v22, a4);
  v22.i32[3] = v22.i32[0];
  v29 = vmlaq_f32(v27, v22, v25);
  v35 = vmlsq_f32(vzip2q_s32(vzip1q_s32(v29, vextq_s8(v29, v29, 0xCuLL)), v29), vrev64q_s32(vuzp1q_s32(a4, v28)), v23);
  v36 = v12 + (v24 + (*a4.i32 * v18));
  v37 = v20;
  v38 = v21;
  result = physx::Scb::Body::setKinematicTarget(a1 + 96, &v35);
  v31 = (a1 + *(&physx::NpActor::sLazyInitOffsets + *(a1 + 8) + 18));
  if (((*(v31 + 2) >> 30) - 1) > 1)
  {
    v33 = 0;
  }

  else
  {
    v32 = *v31;
    if (v32)
    {
      v33 = v32 - 16;
    }

    else
    {
      v33 = 0;
    }
  }

  if ((*(a1 + 381) & 0x40) != 0)
  {
    v34 = (*(a1 + 112) + 348);
  }

  else
  {
    v34 = (a1 + 172);
  }

  if ((*v34 & 2) != 0)
  {
    if (v33)
    {
      result = physx::NpShapeManager::markAllSceneQueryForUpdate(a1 + 40, v33 + 8640, a1);
      ++*(v33 + 8732);
    }
  }

  return result;
}

uint64_t physx::NpRigidDynamic::getKinematicTarget(uint64_t a1, float *a2)
{
  v2 = *(a1 + 380);
  if ((v2 & 0x4000) != 0)
  {
    v3 = (*(a1 + 112) + 348);
  }

  else
  {
    v3 = (a1 + 172);
  }

  if ((*v3 & 1) == 0)
  {
    return 0;
  }

  if ((v2 & 0x8000) != 0)
  {
    v12 = *(a1 + 112);
    v5 = v12 + 68;
    v6 = v12 + 69;
    v7 = v12 + 70;
    v8 = v12 + 71;
    v9 = v12 + 72;
    v10 = v12 + 73;
    v11 = v12 + 74;
  }

  else
  {
    if (*(a1 + 104) >> 30 == 3)
    {
      return 0;
    }

    v5 = *(a1 + 304);
    if (!v5 || *(v5 + 31) != 1 || !*(v5 + 28))
    {
      return 0;
    }

    v6 = v5 + 1;
    v7 = v5 + 2;
    v8 = v5 + 3;
    v9 = v5 + 4;
    v10 = v5 + 5;
    v11 = v5 + 6;
  }

  v13 = *v5;
  v14 = *v6;
  v15 = *v7;
  v16 = *v8;
  v17 = *v10;
  v18 = *v11;
  if ((v2 & 0x400) != 0)
  {
    v19 = (*(a1 + 112) + 224);
  }

  else
  {
    v19 = (a1 + 176);
  }

  v20 = v19[4] * -2.0;
  v21 = v19[5] * -2.0;
  v22 = v19[6] * -2.0;
  v24 = v19[2];
  v23 = v19[3];
  v25 = (v23 * v23) + -0.5;
  v26 = v19[1];
  v27 = ((v21 * v26) + (*v19 * v20)) + (v24 * v22);
  v28 = ((v20 * v25) - (((v26 * v22) - (v24 * v21)) * v23)) + (*v19 * v27);
  v29 = ((v21 * v25) - (((v24 * v20) - (*v19 * v22)) * v23)) + (v26 * v27);
  v30 = ((v22 * v25) - (((*v19 * v21) - (v26 * v20)) * v23)) + (v24 * v27);
  v31 = v28 + v28;
  v32 = v30 + v30;
  v33 = (v16 * v16) + -0.5;
  v34 = ((v14 * (v29 + v29)) + (v13 * (v28 + v28))) + (v15 * v32);
  v35 = ((v16 * ((v14 * v32) - (v15 * (v29 + v29)))) + ((v28 + v28) * v33)) + (v13 * v34);
  v36 = ((v16 * ((v15 * (v28 + v28)) - (v13 * v32))) + ((v29 + v29) * v33)) + (v14 * v34);
  v37 = ((v16 * ((v13 * (v29 + v29)) - (v14 * v31))) + (v32 * v33)) + (v15 * v34);
  v38 = *v9 + v35;
  v39 = (((v13 * v23) - (v16 * *v19)) - (v14 * v24)) + (v26 * v15);
  v40 = (((v14 * v23) - (v16 * v26)) - (v15 * *v19)) + (v24 * v13);
  v41 = (((v15 * v23) - (v16 * v24)) - (v13 * v26)) + (*v19 * v14);
  v42 = (((v13 * *v19) + (v16 * v23)) + (v14 * v26)) + (v15 * v24);
  *a2 = v39;
  a2[1] = v40;
  a2[2] = v41;
  a2[3] = v42;
  a2[4] = v38;
  a2[5] = v17 + v36;
  a2[6] = v18 + v37;
  return 1;
}

uint64_t physx::NpRigidDynamic::setCMassLocalPose(_WORD *a1, float *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = sqrtf((((v3 * v3) + (*a2 * *a2)) + (v4 * v4)) + (v5 * v5));
  v7 = *a2 / v6;
  v8 = v3 / v6;
  v9 = v4 / v6;
  v10 = v5 / v6;
  v93[0] = v7;
  v93[1] = v3 / v6;
  v93[2] = v4 / v6;
  v93[3] = v5 / v6;
  v11 = a2[4];
  v12 = a2[5];
  v93[4] = v11;
  v93[5] = v12;
  v13 = a2[6];
  v93[6] = v13;
  if ((*(a1 + 381) & 4) != 0)
  {
    v14 = (*(a1 + 14) + 224);
  }

  else
  {
    v14 = (a1 + 88);
  }

  v92 = v14[1];
  v15 = v14[3];
  v90 = *v14;
  v91 = v14[2];
  v88 = v14[5];
  v89 = v14[4];
  v87 = v14[6];
  (*(*a1 + 152))(&v94, a1);
  v16 = (v96 * v96) + -0.5;
  v17 = (((v12 + v12) * *(&v94 + 1)) + (*&v94 * (v11 + v11))) + (v95 * (v13 + v13));
  v18 = v97 + (((v96 * ((*(&v94 + 1) * (v13 + v13)) - (v95 * (v12 + v12)))) + ((v11 + v11) * v16)) + (*&v94 * v17));
  v19 = v98 + (((v96 * ((v95 * (v11 + v11)) - (*&v94 * (v13 + v13)))) + ((v12 + v12) * v16)) + (*(&v94 + 1) * v17));
  v20 = v99 + (((v96 * ((*&v94 * (v12 + v12)) - (*(&v94 + 1) * (v11 + v11)))) + ((v13 + v13) * v16)) + (v95 * v17));
  v21 = (((v10 * *(&v94 + 1)) + (v96 * v8)) + (v95 * v7)) - (v9 * *&v94);
  v22 = (((v10 * v95) + (v96 * v9)) + (*&v94 * v8)) - (v7 * *(&v94 + 1));
  v100.f32[0] = (((v10 * *&v94) + (v96 * v7)) + (*(&v94 + 1) * v9)) - (v8 * v95);
  v100.f32[1] = v21;
  v23 = (((v96 * v10) - (*&v94 * v7)) - (*(&v94 + 1) * v8)) - (v95 * v9);
  v100.f32[2] = v22;
  v100.f32[3] = v23;
  v101 = v18;
  v102 = v19;
  v103 = v20;
  *(a1 + 80) = v100.i32[0];
  *(a1 + 81) = v21;
  *(a1 + 82) = v22;
  *(a1 + 83) = v23;
  *(a1 + 84) = v18;
  *(a1 + 85) = v19;
  *(a1 + 86) = v20;
  v24 = *(a1 + 26) >> 30;
  if (v24 == 3 || v24 == 2 && (*(*(a1 + 12) + 7689) & 1) != 0)
  {
    v25 = *(a1 + 95);
    if ((v25 & 0x100000) == 0)
    {
      *(a1 + 95) = v25 | 0x200000;
    }

    physx::Scb::Scene::scheduleForUpdate(*(a1 + 12), (a1 + 48));
    *(a1 + 95) |= 0x100000u;
  }

  else
  {
    physx::Sc::BodyCore::setBody2World((a1 + 64), &v100);
  }

  v26 = *(a1 + 26);
  if (v26 >> 30 == 2)
  {
    v27 = *(a1 + 12);
    if (v27[961].i8[1])
    {
      goto LABEL_15;
    }
  }

  else if (v26 >> 30 == 3)
  {
    v27 = *(a1 + 12);
LABEL_15:
    Stream = *(a1 + 14);
    if (!Stream)
    {
      Stream = physx::Scb::Scene::getStream(v27, HIBYTE(v26) & 0xF);
      *(a1 + 14) = Stream;
      v27 = *(a1 + 12);
    }

    Stream[56] = v7;
    Stream[57] = v8;
    Stream[58] = v9;
    Stream[59] = v10;
    Stream[60] = v11;
    Stream[61] = v12;
    Stream[62] = v13;
    result = physx::Scb::Scene::scheduleForUpdate(v27, (a1 + 48));
    *(a1 + 95) |= 0x400u;
    goto LABEL_19;
  }

  result = physx::Sc::BodyCore::setBody2Actor((a1 + 64), v93);
LABEL_19:
  v31 = *(a1 + 4);
  if (v31)
  {
    v32 = *(v31 + 72);
    v33 = *(v31 + 80);
  }

  else
  {
    v33 = 0;
    v32 = 0;
  }

  v34 = 0;
LABEL_23:
  if (v34 <= v33)
  {
    v35 = v33;
  }

  else
  {
    v35 = v34;
  }

  v36 = (v32 + 16 * v34);
  v37 = v35 - v34 + 1;
  while (--v37)
  {
    v38 = v36 + 16;
    ++v34;
    v39 = *v36;
    v36 += 16;
    if (!v39)
    {
      result = *(v38 - 1);
      if (!result)
      {
        break;
      }

      result = physx::NpConstraint::comShift(result, a1);
      goto LABEL_23;
    }
  }

  v40 = *(a1 + 95);
  if ((v40 & 0x4000) != 0)
  {
    v41 = (*(a1 + 14) + 348);
  }

  else
  {
    v41 = a1 + 86;
  }

  if (*v41)
  {
    if ((v40 & 0x8000) != 0)
    {
      v49 = *(a1 + 14);
      v42 = v49 + 68;
      v43 = v49 + 69;
      v44 = v49 + 70;
      v45 = v49 + 71;
      v46 = v49 + 72;
      v47 = v49 + 73;
      v48 = v49 + 74;
    }

    else
    {
      if (*(a1 + 26) >> 30 == 3)
      {
        return result;
      }

      v42 = *(a1 + 38);
      if (!v42 || *(v42 + 31) != 1 || !*(v42 + 28))
      {
        return result;
      }

      v43 = v42 + 1;
      v44 = v42 + 2;
      v45 = v42 + 3;
      v46 = v42 + 4;
      v47 = v42 + 5;
      v48 = v42 + 6;
    }

    v50 = (v15 * v15) + -0.5;
    v51 = ((v92 * (v88 * -2.0)) + (v90 * (v89 * -2.0))) + (v91 * (v87 * -2.0));
    v52 = (((v89 * -2.0) * v50) - (((v92 * (v87 * -2.0)) - (v91 * (v88 * -2.0))) * v15)) + (v90 * v51);
    v53 = (((v88 * -2.0) * v50) - (((v91 * (v89 * -2.0)) - (v90 * (v87 * -2.0))) * v15)) + (v92 * v51);
    v54 = (((v87 * -2.0) * v50) - (((v90 * (v88 * -2.0)) - (v92 * (v89 * -2.0))) * v15)) + (v91 * v51);
    v55 = v52 + v52;
    v56 = v54 + v54;
    v57 = (*v45 * *v45) + -0.5;
    v58 = (((v53 + v53) * *v43) + (*v42 * (v52 + v52))) + (*v44 * v56);
    v59 = ((*v45 * ((*v43 * v56) - (*v44 * (v53 + v53)))) + ((v52 + v52) * v57)) + (*v42 * v58);
    v60 = ((*v45 * ((*v44 * (v52 + v52)) - (*v42 * v56))) + ((v53 + v53) * v57)) + (*v43 * v58);
    v61 = *v46 + v59;
    v62 = *v48 + (((*v45 * ((*v42 * (v53 + v53)) - (*v43 * v55))) + (v56 * v57)) + (*v44 * v58));
    *v30.i32 = (((v15 * *v42) - (*v45 * v90)) - (*v43 * v91)) + (v92 * *v44);
    v63 = (((v15 * *v43) - (*v45 * v92)) - (*v44 * v90)) + (v91 * *v42);
    v64 = (((v15 * *v44) - (*v45 * v91)) - (*v42 * v92)) + (v90 * *v43);
    v65 = (((v90 * *v42) + (*v45 * v15)) + (*v43 * v92)) + (*v44 * v91);
    if ((v40 & 0x400) != 0)
    {
      v66 = *(a1 + 14) + 224;
    }

    else
    {
      v66 = (a1 + 88);
    }

    v67 = *(v66 + 16) + *(v66 + 16);
    v68 = *(v66 + 20) + *(v66 + 20);
    v69 = *(v66 + 24) + *(v66 + 24);
    v70 = (v65 * v65) + -0.5;
    v71 = ((v63 * v68) + (*v30.i32 * v67)) + (v64 * v69);
    v72 = -v63;
    v73 = (*v47 + v60) + (((v65 * ((v64 * v67) - (*v30.i32 * v69))) + (v68 * v70)) + (v63 * v71));
    v74 = v62 + (((v65 * ((*v30.i32 * v68) - (v63 * v67))) + (v69 * v70)) + (v64 * v71));
    v75 = vextq_s8(vextq_s8(*v66, *v66, 0xCuLL), *v66, 8uLL);
    v76 = v75;
    v76.f32[3] = (((v15 * *v44) - (*v45 * v91)) - (*v42 * v92)) + (v90 * *v43);
    v77 = (v65 * (vmuls_lane_f32(v68, vnegq_f32(v76), 3) + (v63 * v69))) + (v67 * v70);
    *&v30.i32[1] = (((v15 * *v43) - (*v45 * v92)) - (*v44 * v90)) + (v91 * *v42);
    *&v30.i32[2] = v76.f32[3];
    v78 = v30;
    v78.f32[3] = -*v30.i32;
    v79 = vmlaq_n_f32(vmulq_f32(vextq_s8(vdupq_laneq_s32(*v66, 3), *v66, 4uLL), v78), *v66, v65);
    v80 = vuzp2q_s32(vextq_s8(v79, v79, 4uLL), v79);
    v78.f32[3] = v72;
    v81 = vuzp2q_s32(v75, v30);
    v75.i32[3] = v75.i32[0];
    v82 = vmlaq_f32(v80, v75, v78);
    v100 = vmlsq_f32(vzip2q_s32(vzip1q_s32(v82, vextq_s8(v82, v82, 0xCuLL)), v82), vrev64q_s32(vuzp1q_s32(v30, v81)), v76);
    v101 = v61 + (v77 + (*v30.i32 * v71));
    v102 = v73;
    v103 = v74;
    result = physx::Scb::Body::setKinematicTarget((a1 + 48), &v100);
    v83 = a1 + *(&physx::NpActor::sLazyInitOffsets + a1[4] + 18);
    if (((*(v83 + 2) >> 30) - 1) > 1)
    {
      v85 = 0;
    }

    else
    {
      v84 = *v83;
      if (v84)
      {
        v85 = v84 - 16;
      }

      else
      {
        v85 = 0;
      }
    }

    if ((*(a1 + 381) & 0x40) != 0)
    {
      v86 = (*(a1 + 14) + 348);
    }

    else
    {
      v86 = a1 + 86;
    }

    if ((*v86 & 2) != 0)
    {
      if (v85)
      {
        result = physx::NpShapeManager::markAllSceneQueryForUpdate((a1 + 20), v85 + 8640, a1);
        ++*(v85 + 8732);
      }
    }
  }

  return result;
}

float *physx::NpRigidDynamic::setLinearDamping(physx::NpRigidDynamic *this, float a2)
{
  v4 = *(this + 26);
  if (v4 >> 30 == 2)
  {
    v5 = *(this + 12);
    if (v5[961].i8[1])
    {
      goto LABEL_5;
    }
  }

  else if (v4 >> 30 == 3)
  {
    v5 = *(this + 12);
LABEL_5:
    Stream = *(this + 14);
    if (!Stream)
    {
      Stream = physx::Scb::Scene::getStream(v5, HIBYTE(v4) & 0xF);
      *(this + 14) = Stream;
      v5 = *(this + 12);
    }

    *(Stream + 180) = a2;
    result = physx::Scb::Scene::scheduleForUpdate(v5, this + 96);
    *(this + 95) |= 4u;
    return result;
  }

  return physx::Sc::BodyCore::setLinearDamping(this + 32, a2);
}

float physx::NpRigidDynamic::getLinearDamping(physx::NpRigidDynamic *this)
{
  if ((*(this + 380) & 4) != 0)
  {
    v2 = (*(this + 14) + 180);
  }

  else
  {
    v1 = *(this + 38);
    if (v1 && *(v1 + 31) == 1)
    {
      v2 = (v1 + 48);
    }

    else
    {
      v2 = this + 248;
    }
  }

  return *v2;
}

float *physx::NpRigidDynamic::setAngularDamping(physx::NpRigidDynamic *this, float a2)
{
  v4 = *(this + 26);
  if (v4 >> 30 == 2)
  {
    v5 = *(this + 12);
    if (v5[961].i8[1])
    {
      goto LABEL_5;
    }
  }

  else if (v4 >> 30 == 3)
  {
    v5 = *(this + 12);
LABEL_5:
    Stream = *(this + 14);
    if (!Stream)
    {
      Stream = physx::Scb::Scene::getStream(v5, HIBYTE(v4) & 0xF);
      *(this + 14) = Stream;
      v5 = *(this + 12);
    }

    *(Stream + 184) = a2;
    result = physx::Scb::Scene::scheduleForUpdate(v5, this + 96);
    *(this + 95) |= 8u;
    return result;
  }

  return physx::Sc::BodyCore::setAngularDamping(this + 32, a2);
}

float physx::NpRigidDynamic::getAngularDamping(physx::NpRigidDynamic *this)
{
  if ((*(this + 380) & 8) != 0)
  {
    v2 = (*(this + 14) + 184);
  }

  else
  {
    v1 = *(this + 38);
    if (v1 && *(v1 + 31) == 1)
    {
      v2 = (v1 + 52);
    }

    else
    {
      v2 = this + 252;
    }
  }

  return *v2;
}

int32x2_t *physx::NpRigidDynamic::setLinearVelocity(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 348) = *a2;
  *(a1 + 356) = *(a2 + 8);
  v6 = *(a1 + 104) >> 30;
  if (v6 == 2)
  {
    v7 = *(a1 + 96);
    if (v7[961].i8[1])
    {
      goto LABEL_5;
    }

LABEL_6:
    result = physx::Sc::BodyCore::setLinearVelocity(a1 + 128, a2);
    goto LABEL_7;
  }

  if (v6 != 3)
  {
    goto LABEL_6;
  }

  v7 = *(a1 + 96);
LABEL_5:
  result = physx::Scb::Scene::scheduleForUpdate(v7, a1 + 96);
  *(a1 + 380) |= 0x400000u;
LABEL_7:
  v9 = a1 + *(&physx::NpActor::sLazyInitOffsets + *(a1 + 8) + 18);
  if (((*(v9 + 8) >> 30) - 1) <= 1 && *v9)
  {
    v10 = 1;
    if (*a2 == 0.0 && *(a2 + 4) == 0.0)
    {
      v10 = *(a2 + 8) != 0.0;
    }

    return physx::NpRigidDynamic::wakeUpInternalNoKinematicTest(a1, a1 + 96, v10, a3);
  }

  return result;
}

int32x2_t *physx::NpRigidDynamic::wakeUpInternalNoKinematicTest(int32x2_t *result, uint64_t a2, int a3, int a4)
{
  v5 = *(result + *(&physx::NpActor::sLazyInitOffsets + result[1].u16[0] + 18));
  if (v5)
  {
    v6 = v5 - 16;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v6 + 0x2000);
  v8 = a3 | a4;
  if (!*(a2 + 280))
  {
    v8 = 0;
  }

  v9 = a4 & (*(a2 + 276) < v7);
  if (!v9)
  {
    v7 = *(a2 + 276);
  }

  if ((v9 & 1) != 0 || v8)
  {
    v10 = *(a2 + 8) >> 30;
    if (v10 == 2)
    {
      v11 = *a2;
      if (*(*a2 + 7689))
      {
        goto LABEL_14;
      }
    }

    else if (v10 == 3)
    {
      v11 = *a2;
LABEL_14:
      *(a2 + 280) = 0;
      *(a2 + 276) = v7;
      result = physx::Scb::Scene::scheduleForUpdate(v11, a2);
      *(a2 + 284) = *(a2 + 284) & 0xF8FFFFFF | 0x5000000;
      return result;
    }

    *(a2 + 280) = 0;
    *(a2 + 276) = v7;

    return physx::Sc::BodyCore::setWakeCounter(a2 + 32, v7, 1);
  }

  return result;
}

int32x2_t *physx::NpRigidDynamic::setAngularVelocity(int32x2_t *a1, uint64_t a2, int a3)
{
  a1[45] = *a2;
  a1[46].i32[0] = *(a2 + 8);
  v6 = a1[13].i32[0] >> 30;
  if (v6 == 2)
  {
    v7 = a1[12];
    if (v7[961].i8[1])
    {
      goto LABEL_5;
    }

LABEL_6:
    result = physx::Sc::BodyCore::setAngularVelocity(&a1[16], a2);
    goto LABEL_7;
  }

  if (v6 != 3)
  {
    goto LABEL_6;
  }

  v7 = a1[12];
LABEL_5:
  result = physx::Scb::Scene::scheduleForUpdate(v7, &a1[12]);
  a1[47].i32[1] |= 0x800000u;
LABEL_7:
  v9 = a1 + *(&physx::NpActor::sLazyInitOffsets + a1[1].u16[0] + 18);
  if (((*(v9 + 2) >> 30) - 1) <= 1 && *v9)
  {
    v10 = 1;
    if (*a2 == 0.0 && *(a2 + 4) == 0.0)
    {
      v10 = *(a2 + 8) != 0.0;
    }

    return physx::NpRigidDynamic::wakeUpInternalNoKinematicTest(a1, &a1[12], v10, a3);
  }

  return result;
}

float *physx::NpRigidDynamic::setMaxAngularVelocity(physx::NpRigidDynamic *this, float a2)
{
  v3 = a2 * a2;
  v4 = *(this + 26);
  if (v4 >> 30 == 2)
  {
    v5 = *(this + 12);
    if (v5[961].i8[1])
    {
      goto LABEL_5;
    }
  }

  else if (v4 >> 30 == 3)
  {
    v5 = *(this + 12);
LABEL_5:
    Stream = *(this + 14);
    if (!Stream)
    {
      Stream = physx::Scb::Scene::getStream(v5, HIBYTE(v4) & 0xF);
      *(this + 14) = Stream;
      v5 = *(this + 12);
    }

    *(Stream + 188) = v3;
    result = physx::Scb::Scene::scheduleForUpdate(v5, this + 96);
    *(this + 95) |= 0x10u;
    return result;
  }

  v8 = a2 * a2;

  return physx::Sc::BodyCore::setMaxAngVelSq(this + 32, v8);
}

float physx::NpRigidDynamic::getMaxAngularVelocity(physx::NpRigidDynamic *this)
{
  if ((*(this + 380) & 0x10) != 0)
  {
    v2 = (*(this + 14) + 188);
  }

  else
  {
    v1 = *(this + 38);
    if (v1 && *(v1 + 31) == 1)
    {
      v2 = (v1 + 56);
    }

    else
    {
      v2 = (this + 240);
    }
  }

  return sqrtf(*v2);
}

float *physx::NpRigidDynamic::setMaxLinearVelocity(physx::NpRigidDynamic *this, float a2)
{
  v3 = a2 * a2;
  v4 = *(this + 26);
  if (v4 >> 30 == 2)
  {
    v5 = *(this + 12);
    if (v5[961].i8[1])
    {
      goto LABEL_5;
    }
  }

  else if (v4 >> 30 == 3)
  {
    v5 = *(this + 12);
LABEL_5:
    Stream = *(this + 14);
    if (!Stream)
    {
      Stream = physx::Scb::Scene::getStream(v5, HIBYTE(v4) & 0xF);
      *(this + 14) = Stream;
      v5 = *(this + 12);
    }

    *(Stream + 192) = v3;
    result = physx::Scb::Scene::scheduleForUpdate(v5, this + 96);
    *(this + 95) |= 0x20u;
    return result;
  }

  v8 = a2 * a2;

  return physx::Sc::BodyCore::setMaxLinVelSq(this + 32, v8);
}

float physx::NpRigidDynamic::getMaxLinearVelocity(physx::NpRigidDynamic *this)
{
  if ((*(this + 380) & 0x20) != 0)
  {
    v2 = (*(this + 14) + 192);
  }

  else
  {
    v1 = *(this + 38);
    if (v1 && *(v1 + 31) == 1)
    {
      v2 = (v1 + 60);
    }

    else
    {
      v2 = (this + 244);
    }
  }

  return sqrtf(*v2);
}

int32x2_t *physx::NpRigidDynamic::addForce(float32x4_t *a1, float32x2_t *a2, int a3, int a4)
{
  physx::NpRigidBodyTemplate<physx::PxArticulationLink>::addSpatialForce(a1, a2, 0, a3);
  v7 = 1;
  if (a2->f32[0] == 0.0 && a2->f32[1] == 0.0)
  {
    v7 = a2[1].f32[0] != 0.0;
  }

  return physx::NpRigidDynamic::wakeUpInternalNoKinematicTest(a1, &a1[6], v7, a4);
}

int32x2_t *physx::NpRigidDynamic::setForceAndTorque(uint64_t a1, uint64_t a2, int32x2_t *a3, int a4)
{
  if (a4 <= 1)
  {
    if (a4)
    {
      if (a4 == 1)
      {
        v7 = *(a1 + 380);
        if (v7)
        {
          v9 = (*(a1 + 112) + 164);
        }

        else
        {
          v8 = *(a1 + 304);
          if (v8 && *(v8 + 31) == 1)
          {
            v9 = (v8 + 44);
          }

          else
          {
            v9 = (a1 + 268);
          }
        }

        v22 = *v9 * *(a2 + 8);
        *v111 = vmul_n_f32(*a2, *v9);
        *&v111[8] = v22;
        if ((v7 & 2) != 0)
        {
          v24 = *(a1 + 112) + 168;
        }

        else
        {
          v23 = *(a1 + 304);
          if (v23 && *(v23 + 31) == 1)
          {
            v24 = v23 + 32;
          }

          else
          {
            v24 = a1 + 256;
          }
        }

        v25 = *(v24 + 4);
        v26 = *(a1 + 96);
        v27 = *(a1 + 320);
        v28 = vdup_lane_s32(*v27.f32, 1);
        v29 = *(v24 + 8);
        v30 = vdup_laneq_s32(v27, 2);
        v31 = vdup_laneq_s32(v27, 3);
        _Q7 = vaddq_f32(v27, v27);
        *v27.f32 = vdup_lane_s32(vmul_f32(*v27.f32, *_Q7.f32), 0);
        v33 = vmul_lane_f32(v28, *_Q7.f32, 1);
        v34 = vmul_laneq_f32(v30, _Q7, 2);
        v35 = vmul_n_f32(v28, _Q7.f32[0]);
        v36 = vmul_n_f32(v30, _Q7.f32[0]);
        v37 = vmul_n_f32(v31, _Q7.f32[0]);
        v38 = vmul_lane_f32(v30, *_Q7.f32, 1);
        _D20 = vmul_lane_f32(v31, *_Q7.f32, 1);
        v40 = vmul_laneq_f32(v31, _Q7, 2);
        __asm { FMOV            V7.2S, #1.0 }

        *_Q7.f32 = vsub_f32(*_Q7.f32, *v27.f32);
        v45 = vadd_f32(v35, v40);
        *v27.f32 = vsub_f32(v36, _D20);
        _D3 = vsub_f32(v35, v40);
        v47 = vsub_f32(*_Q7.f32, v34);
        v48 = vadd_f32(v38, v37);
        _D18 = vadd_f32(v36, _D20);
        v50 = vsub_f32(v38, v37);
        *_Q7.f32 = vsub_f32(*_Q7.f32, v33);
        v37.f32[0] = vmuls_lane_f32(v25, _D3, 1);
        _D20.f32[0] = vmuls_lane_f32(v29, _D18, 1);
        __asm { FMLA            S3, S20, V18.S[1] }

        v33.f32[0] = ((v37.f32[0] * *v47.i32) + ((*v24 * ((1.0 - v33.f32[1]) - v34.f32[1])) * *v45.i32)) + (_D20.f32[0] * *v50.i32);
        _D18.i32[0] = a3[1].i32[0];
        v51 = vzip1_s32(v45, *v27.f32);
        v52 = vmul_n_f32(v51, *v24);
        v53 = vzip1_s32(v47, v48);
        v54 = vmul_n_f32(v53, v25);
        v55 = vzip1_s32(v50, *_Q7.f32);
        v56 = vmul_n_f32(v55, v29);
        v57 = vmul_n_f32(v54, *v48.i32);
        v54.i32[1] = v37.i32[0];
        v58 = vmla_n_f32(v57, v52, v27.f32[0]);
        v52.f32[1] = *v24 * ((1.0 - v33.f32[1]) - v34.f32[1]);
        v59 = vmla_n_f32(v58, v56, _Q7.f32[0]);
        v56.i32[1] = _D20.i32[0];
        v60 = vmla_f32(vmla_f32(vmul_f32(v53, v54), v51, v52), v55, v56);
        v61 = vdup_lane_s32(v59, 0);
        v61.i32[0] = v33.i32[0];
        *v27.f32 = vadd_f32(vmul_f32(vrev64_s32(*a3), v60), vmul_f32(*a3, v61));
        v62 = vmuls_lane_f32(_D18.f32[0], v60, 1) + ((_D3.f32[0] * COERCE_FLOAT(*a3)) + vmuls_lane_f32(v33.f32[0], *a3, 1));
        v63 = vadd_f32(vmul_n_f32(v59, _D18.f32[0]), *v27.f32);
        *v110 = v62;
        *&v110[4] = v63;
        v64 = *(a1 + 104);
        if (v64 >> 30 == 3 || v64 >> 30 == 2 && (*(v26 + 7689) & 1) != 0)
        {
          v65 = *(a1 + 112);
          if (!v65)
          {
            v109 = v62;
            Stream = physx::Scb::Scene::getStream(v26, HIBYTE(v64) & 0xF);
            v62 = v109;
            v65 = Stream;
            *(a1 + 112) = Stream;
            v26 = *(a1 + 96);
          }

          v67 = v65 + 324;
          v68.i64[0] = *v111;
          v68.i64[1] = __PAIR64__(LODWORD(v62), *&v111[8]);
          *v67 = vaddq_f32(v68, *v67);
          *(v67 + 16) = vadd_f32(v63, *(v67 + 16));
          physx::Scb::Scene::scheduleForUpdate(v26, a1 + 96);
          v69 = *(a1 + 380) | 0xC0000;
          goto LABEL_52;
        }

        physx::Sc::BodyCore::addSpatialVelocity((a1 + 128), *(v26 + 4384), v111, v110);
      }

      goto LABEL_55;
    }

    v15 = *(a1 + 380);
    if (v15)
    {
      v17 = (*(a1 + 112) + 164);
    }

    else
    {
      v16 = *(a1 + 304);
      if (v16 && *(v16 + 31) == 1)
      {
        v17 = (v16 + 44);
      }

      else
      {
        v17 = (a1 + 268);
      }
    }

    v70 = *v17 * *a2;
    v71 = vmul_n_f32(*(a2 + 4), *v17);
    *v111 = v70;
    *&v111[4] = v71;
    if ((v15 & 2) != 0)
    {
      v73 = (*(a1 + 112) + 168);
    }

    else
    {
      v72 = *(a1 + 304);
      if (v72 && *(v72 + 31) == 1)
      {
        v73 = (v72 + 32);
      }

      else
      {
        v73 = (a1 + 256);
      }
    }

    v74 = v73[1];
    v75 = v73[2];
    v11 = a1 + 96;
    v10 = *(a1 + 96);
    v76 = *(a1 + 320);
    v77 = vdup_lane_s32(*v76.f32, 1);
    v78 = vdup_laneq_s32(v76, 2);
    v79 = vdup_laneq_s32(v76, 3);
    _Q7 = vaddq_f32(v76, v76);
    *v76.f32 = vdup_lane_s32(vmul_f32(*v76.f32, *_Q7.f32), 0);
    v81 = vmul_lane_f32(v77, *_Q7.f32, 1);
    v82 = vmul_laneq_f32(v78, _Q7, 2);
    v83 = vmul_n_f32(v77, _Q7.f32[0]);
    v84 = vmul_n_f32(v78, _Q7.f32[0]);
    v85 = vmul_n_f32(v79, _Q7.f32[0]);
    v86 = vmul_lane_f32(v78, *_Q7.f32, 1);
    v87 = vmul_lane_f32(v79, *_Q7.f32, 1);
    v88 = vmul_laneq_f32(v79, _Q7, 2);
    __asm { FMOV            V7.2S, #1.0 }

    *v76.f32 = vsub_f32(*_Q7.f32, *v76.f32);
    *_Q7.f32 = vadd_f32(v83, v88);
    v89 = vsub_f32(v84, v87).f32[0];
    v90 = vsub_f32(v83, v88);
    v91 = vsub_f32(*v76.f32, v82);
    v92 = vadd_f32(v86, v85).f32[0];
    v93 = vadd_f32(v84, v87);
    v94 = vsub_f32(v86, v85);
    v76.f32[0] = vsub_f32(*v76.f32, v81).f32[0];
    v85.i32[0] = a3[1].i32[0];
    v95 = vdup_lane_s32(*_Q7.f32, 0);
    v95.f32[0] = (1.0 - v81.f32[1]) - v82.f32[1];
    v81.f32[0] = v85.f32[0] * ((((v74 * v92) * v92) + ((*v73 * v89) * v89)) + ((v75 * v76.f32[0]) * v76.f32[0]));
    v96 = vmul_n_f32(v95, *v73);
    v97 = vext_s8(v90, v91, 4uLL);
    v98 = vmul_n_f32(v97, v74);
    v99 = vext_s8(v93, v94, 4uLL);
    v100 = vmul_n_f32(v99, v75);
    v101 = vmla_f32(vmla_f32(vmul_f32(v97, v98), v95, v96), v99, v100);
    *v94.i32 = (vmul_f32(v98, v91).f32[0] + (v96.f32[0] * _Q7.f32[0])) + (v100.f32[0] * *v94.i32);
    v102 = vmla_n_f32(vmla_n_f32(vmul_n_f32(v98, v92), v96, v89), v100, v76.f32[0]);
    v103 = vadd_f32(vmul_n_f32(v102, v85.f32[0]), vadd_f32(vrev64_s32(vmul_n_f32(*a3, *v94.i32)), vmul_f32(*a3, v101)));
    v104 = v81.f32[0] + vaddv_f32(vmul_f32(*a3, v102));
    *v110 = v103;
    *&v110[8] = v104;
    v105 = *(a1 + 104);
    if (v105 >> 30 == 3 || v105 >> 30 == 2 && (v10[961].i8[1] & 1) != 0)
    {
      v13 = *(a1 + 112);
      if (!v13)
      {
        v13 = physx::Scb::Scene::getStream(v10, HIBYTE(v105) & 0xF);
        *(a1 + 112) = v13;
        v10 = *(a1 + 96);
      }

      v13[37].f32[1] = v70;
      v106 = vadd_f32(v103, v13[39]);
      v13[38] = v71;
      v13[39] = v106;
      v14 = v104 + v13[40].f32[0];
LABEL_51:
      v13[40].f32[0] = v14;
      physx::Scb::Scene::scheduleForUpdate(v10, v11);
      v69 = *(a1 + 380) | 0x30000;
LABEL_52:
      *(a1 + 380) = v69;
      goto LABEL_55;
    }

    v18 = v10[548];
    v19 = (a1 + 128);
    v20 = v111;
    v21 = v110;
    goto LABEL_54;
  }

  if (a4 == 2)
  {
    physx::Scb::Body::addSpatialVelocity(a1 + 96, a2, a3);
    goto LABEL_55;
  }

  if (a4 == 3)
  {
    v11 = a1 + 96;
    v10 = *(a1 + 96);
    v12 = *(a1 + 104);
    if (v12 >> 30 == 3 || v12 >> 30 == 2 && (v10[961].i8[1] & 1) != 0)
    {
      v13 = *(a1 + 112);
      if (!v13)
      {
        v13 = physx::Scb::Scene::getStream(v10, HIBYTE(v12) & 0xF);
        *(a1 + 112) = v13;
        v10 = *(a1 + 96);
      }

      *(v13 + 300) = *a2;
      v13[38].i32[1] = *(a2 + 8);
      v13[39] = vadd_f32(*a3, v13[39]);
      v14 = *a3[1].i32 + v13[40].f32[0];
      goto LABEL_51;
    }

    v18 = v10[548];
    v19 = (a1 + 128);
    v20 = a2;
    v21 = a3;
LABEL_54:
    physx::Sc::BodyCore::setSpatialAcceleration(v19, v18, v20, v21);
  }

LABEL_55:
  v107 = 1;
  if (*a2 == 0.0 && *(a2 + 4) == 0.0)
  {
    v107 = *(a2 + 8) != 0.0;
  }

  return physx::NpRigidDynamic::wakeUpInternalNoKinematicTest(a1, a1 + 96, v107, 1);
}

int32x2_t *physx::NpRigidDynamic::addTorque(float32x4_t *a1, float32x2_t *a2, int a3, int a4)
{
  physx::NpRigidBodyTemplate<physx::PxArticulationLink>::addSpatialForce(a1, 0, a2, a3);
  v7 = 1;
  if (a2->f32[0] == 0.0 && a2->f32[1] == 0.0)
  {
    v7 = a2[1].f32[0] != 0.0;
  }

  return physx::NpRigidDynamic::wakeUpInternalNoKinematicTest(a1, &a1[6], v7, a4);
}

float *physx::NpRigidDynamic::setSleepThreshold(physx::NpRigidDynamic *this, float a2)
{
  v4 = *(this + 26);
  if (v4 >> 30 == 2)
  {
    v5 = *(this + 12);
    if (v5[961].i8[1])
    {
      goto LABEL_5;
    }
  }

  else if (v4 >> 30 == 3)
  {
    v5 = *(this + 12);
LABEL_5:
    Stream = *(this + 14);
    if (!Stream)
    {
      Stream = physx::Scb::Scene::getStream(v5, HIBYTE(v4) & 0xF);
      *(this + 14) = Stream;
      v5 = *(this + 12);
    }

    *(Stream + 196) = a2;
    result = physx::Scb::Scene::scheduleForUpdate(v5, this + 96);
    *(this + 95) |= 0x40u;
    return result;
  }

  return physx::Sc::BodyCore::setSleepThreshold(this + 32, a2);
}

float physx::NpRigidDynamic::getSleepThreshold(physx::NpRigidDynamic *this)
{
  if ((*(this + 380) & 0x40) != 0)
  {
    v1 = (*(this + 14) + 196);
  }

  else
  {
    v1 = this + 276;
  }

  return *v1;
}

float *physx::NpRigidDynamic::setStabilizationThreshold(physx::NpRigidDynamic *this, float a2)
{
  v4 = *(this + 26);
  if (v4 >> 30 == 2)
  {
    v5 = *(this + 12);
    if (v5[961].i8[1])
    {
      goto LABEL_5;
    }
  }

  else if (v4 >> 30 == 3)
  {
    v5 = *(this + 12);
LABEL_5:
    Stream = *(this + 14);
    if (!Stream)
    {
      Stream = physx::Scb::Scene::getStream(v5, HIBYTE(v4) & 0xF);
      *(this + 14) = Stream;
      v5 = *(this + 12);
    }

    *(Stream + 256) = a2;
    result = physx::Scb::Scene::scheduleForUpdate(v5, this + 96);
    *(this + 95) |= 0x1000u;
    return result;
  }

  return physx::Sc::BodyCore::setFreezeThreshold(this + 32, a2);
}

float physx::NpRigidDynamic::getStabilizationThreshold(physx::NpRigidDynamic *this)
{
  if ((*(this + 381) & 0x10) != 0)
  {
    v1 = (*(this + 14) + 256);
  }

  else
  {
    v1 = this + 280;
  }

  return *v1;
}

int32x2_t *physx::NpRigidDynamic::setWakeCounter(physx::NpRigidDynamic *this, float a2)
{
  *(this + 93) = a2;
  v3 = *(this + 26) >> 30;
  if (v3 == 2)
  {
    v4 = *(this + 12);
    if (v4[961].i8[1])
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (v3 == 3)
    {
      v4 = *(this + 12);
LABEL_5:
      if (a2 <= 0.0)
      {
        result = physx::Scb::Scene::scheduleForUpdate(v4, this + 96);
        v6 = *(this + 95) | 0x1000000;
      }

      else
      {
        *(this + 94) = 0;
        *(this + 93) = a2;
        result = physx::Scb::Scene::scheduleForUpdate(v4, this + 96);
        v6 = *(this + 95) & 0xF8FFFFFF | 0x5000000;
      }

      *(this + 95) = v6;
      return result;
    }

    v4 = *(this + 12);
  }

  if (a2 > 0.0 && v4 != 0)
  {
    *(this + 94) = 0;
  }

  return physx::Sc::BodyCore::setWakeCounter(this + 128, a2, 0);
}

int32x2_t *physx::NpRigidDynamic::wakeUp(physx::NpRigidDynamic *this)
{
  v3 = this + 96;
  v2 = *(this + 12);
  v4 = *v2[1022].i32;
  v5 = *(v3 + 2) >> 30;
  if (v5 == 3 || v5 == 2 && (v2[961].i8[1] & 1) != 0)
  {
    *(this + 94) = 0;
    *(this + 93) = v4;
    result = physx::Scb::Scene::scheduleForUpdate(v2, v3);
    *(this + 95) = *(this + 95) & 0xF8FFFFFF | 0x5000000;
  }

  else
  {
    *(this + 94) = 0;
    *(this + 93) = v4;

    return physx::Sc::BodyCore::setWakeCounter(this + 128, v4, 1);
  }

  return result;
}

int32x2_t *physx::NpRigidDynamic::setSolverIterationCounts(int32x2_t *this, unsigned __int8 a2, __int16 a3)
{
  v3 = this;
  v4 = a2 | (a3 << 8);
  v5 = this[13].u32[0];
  if (v5 >> 30 == 2)
  {
    this = this[12];
    if (this[961].i8[1])
    {
      goto LABEL_5;
    }
  }

  else if (v5 >> 30 == 3)
  {
    this = this[12];
LABEL_5:
    Stream = v3[14];
    if (!Stream)
    {
      Stream = physx::Scb::Scene::getStream(this, HIBYTE(v5) & 0xF);
      v3[14] = Stream;
      this = v3[12];
    }

    *(Stream + 208) = v4;
    this = physx::Scb::Scene::scheduleForUpdate(this, &v3[12]);
    v3[47].i32[1] |= 0x200u;
    return this;
  }

  v3[21].i16[3] = v4;
  v7 = v3[16];
  if (v7)
  {
    *(*&v7 + 126) = v4;
  }

  return this;
}

uint64_t physx::NpRigidDynamic::getSolverIterationCounts(uint64_t this, unsigned int *a2, unsigned int *a3)
{
  if ((*(this + 381) & 2) != 0)
  {
    v3 = (*(this + 112) + 208);
  }

  else
  {
    v3 = (this + 174);
  }

  v4 = *v3;
  *a3 = v4 >> 8;
  *a2 = v4;
  return this;
}

int32x2_t *physx::NpRigidDynamic::setContactReportThreshold(int32x2_t *this, float a2)
{
  v2 = this;
  if (a2 >= 0.0)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = this[13].u32[0];
  if (v4 >> 30 == 2)
  {
    this = this[12];
    if (this[961].i8[1])
    {
      goto LABEL_8;
    }

LABEL_11:
    *&v2[29].i32[1] = v3;
    return this;
  }

  if (v4 >> 30 != 3)
  {
    goto LABEL_11;
  }

  this = this[12];
LABEL_8:
  Stream = v2[14];
  if (!Stream)
  {
    Stream = physx::Scb::Scene::getStream(this, HIBYTE(v4) & 0xF);
    v2[14] = Stream;
    this = v2[12];
  }

  *(Stream + 204) = v3;
  this = physx::Scb::Scene::scheduleForUpdate(this, &v2[12]);
  v2[47].i32[1] |= 0x100u;
  return this;
}

float physx::NpRigidDynamic::getContactReportThreshold(physx::NpRigidDynamic *this)
{
  if (*(this + 381))
  {
    v1 = (*(this + 14) + 204);
  }

  else
  {
    v1 = this + 236;
  }

  return *v1;
}

int32x2_t *physx::NpRigidDynamic::switchToNoSim(physx::NpRigidDynamic *this)
{
  v3 = (this + 96);
  v2 = *(this + 12);
  if (v2)
  {
    if (*(v2 + 7689) & 1) != 0 || (physx::Scb::Scene::switchRigidToNoSim(v2, v3, 1), (*(*v3 + 7689)))
    {
      result = physx::Scb::Body::putToSleepInternal(v3);
    }

    else
    {
      *(this + 364) = 0;
      *(this + 372) = 0x100000000;
      *(this + 348) = 0;
      *(this + 356) = 0;
      result = physx::Sc::BodyCore::putToSleep((this + 128));
    }

    if (*(this + 26) >> 30 == 1)
    {
      v5 = *(this + 38);
      if (v5)
      {
        v6 = *(*v3 + 4384);
        if (*(v5 + 31) == 1)
        {

          return physx::Sc::BodyCore::tearDownSimStateData(this + 128, v6, 1);
        }

        else
        {
          --*(v6 + 548);
          *v5 = *(v6 + 560);
          *(v6 + 560) = v5;
          *(this + 38) = 0;
        }
      }
    }
  }

  else
  {
    *(this + 364) = 0;
    *(this + 372) = 0x100000000;
    *(this + 348) = 0;
    *(this + 356) = 0;

    return physx::Sc::BodyCore::putToSleep((this + 128));
  }

  return result;
}

uint64_t physx::NpRigidDynamic::switchFromNoSim(physx::NpRigidDynamic *this)
{
  v2 = (this + 96);
  result = *(this + 12);
  if (result)
  {
    if ((*(result + 7689) & 1) == 0)
    {
      return physx::Scb::Scene::switchRigidFromNoSim(result, v2, 1);
    }
  }

  return result;
}

uint64_t physx::NpRigidDynamic::getRigidDynamicLockFlags@<X0>(uint64_t this@<X0>, _BYTE *a2@<X8>)
{
  if ((*(this + 381) & 0x40) != 0)
  {
    v2 = (*(this + 112) + 264);
  }

  else
  {
    v2 = (this + 302);
  }

  *a2 = *v2;
  return this;
}

int32x2_t *physx::NpRigidDynamic::setRigidDynamicLockFlags(int32x2_t *result, __int8 *a2)
{
  v2 = result;
  v3 = *a2;
  v4 = result[13].u32[0];
  if (v4 >> 30 == 2)
  {
    result = result[12];
    if (result[961].i8[1])
    {
      goto LABEL_5;
    }

LABEL_8:
    v2[37].i8[6] = v3;
    return result;
  }

  if (v4 >> 30 != 3)
  {
    goto LABEL_8;
  }

  result = result[12];
LABEL_5:
  Stream = v2[14];
  if (!Stream)
  {
    Stream = physx::Scb::Scene::getStream(result, HIBYTE(v4) & 0xF);
    v2[14] = Stream;
    result = v2[12];
  }

  *(Stream + 264) = v3;
  result = physx::Scb::Scene::scheduleForUpdate(result, &v2[12]);
  v2[47].i32[1] |= 0x4000u;
  return result;
}

int32x2_t *physx::NpRigidDynamic::setRigidDynamicLockFlag(int32x2_t *result, char a2, int a3)
{
  v3 = result;
  if ((result[47].i8[5] & 0x40) != 0)
  {
    v4 = (*&result[14] + 264);
  }

  else
  {
    v4 = &result[37] + 6;
  }

  v5 = *v4;
  v6 = v5 | a2;
  v7 = v5 & ~a2;
  if (a3)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  v9 = result[13].u32[0];
  if (v9 >> 30 == 2)
  {
    result = result[12];
    if (result[961].i8[1])
    {
      goto LABEL_11;
    }

LABEL_14:
    v3[37].i8[6] = v8;
    return result;
  }

  if (v9 >> 30 != 3)
  {
    goto LABEL_14;
  }

  result = result[12];
LABEL_11:
  Stream = v3[14];
  if (!Stream)
  {
    Stream = physx::Scb::Scene::getStream(result, HIBYTE(v9) & 0xF);
    v3[14] = Stream;
    result = v3[12];
  }

  *(Stream + 264) = v8;
  result = physx::Scb::Scene::scheduleForUpdate(result, &v3[12]);
  v3[47].i32[1] |= 0x4000u;
  return result;
}

float physx::NpRigidStatic::NpRigidStatic(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 196614;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0x10000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0x10000;
  *(a1 + 72) = -1;
  *(a1 + 80) = 0;
  *a1 = &unk_1F5D25880;
  *(a1 + 96) = 0;
  *(a1 + 112) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0xFFFFFF;
  *(a1 + 140) = 1;
  *(a1 + 142) = 0;
  *(a1 + 173) = 0;
  *(a1 + 174) = 0;
  *(a1 + 144) = *a2;
  *(a1 + 160) = *(a2 + 16);
  result = *(a2 + 24);
  *(a1 + 168) = result;
  *(a1 + 172) = 0;
  *(a1 + 104) = 83886080;
  return result;
}

physx::PxActor *physx::NpRigidActorTemplate<physx::PxRigidStatic>::~NpRigidActorTemplate(physx::PxActor *a1)
{
  *a1 = &unk_1F5D26D90;
  v2 = *(physx::NpFactory::mInstance + 832);
  physx::Cm::PtrTable::clear(a1 + 40, v2);
  physx::Cm::PtrTable::clear(a1 + 56, v2);
  *a1 = &unk_1F5D26EA8;
  physx::NpFactory::onActorRelease(physx::NpFactory::mInstance, a1);
  return a1;
}

void physx::NpRigidStatic::~NpRigidStatic(physx::NpRigidStatic *this)
{
  *this = &unk_1F5D25880;
  physx::NpRigidActorTemplate<physx::PxRigidStatic>::~NpRigidActorTemplate(this);
  v1 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

  v1();
}

uint64_t physx::NpRigidActorTemplate<physx::PxRigidStatic>::requiresObjects(uint64_t result, uint64_t a2)
{
  if (*(result + 48))
  {
    v3 = result;
    v4 = 0;
    v5 = (result + 40);
    v6 = 8 * *(result + 48);
    do
    {
      v7 = v5;
      if (*(v3 + 48) != 1)
      {
        v7 = *v5;
      }

      result = (*(*a2 + 16))(a2, v7[v4 / 8]);
      v4 += 8;
    }

    while (v6 != v4);
  }

  return result;
}

uint64_t physx::NpRigidStatic::release(physx::NpRigidStatic *this)
{
  v2 = (this + 96);
  physx::NpPhysics::notifyDeletionListeners(physx::NpPhysics::mInstance, this, *(this + 2), 1);
  v3 = *(this + 26);
  if ((v3 >> 30) - 1 > 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = *v2;
  }

  v5 = *(v2 + *(&physx::Scb::Actor::sLazyInitOffsets + ((v3 >> 24) & 0xF) + 3) + 12);
  if (v4 && (*(v2 + *(&physx::Scb::Actor::sLazyInitOffsets + ((v3 >> 24) & 0xF) + 3) + 12) & 8) != 0)
  {
    physx::NpShapeManager::clearShapesOnRelease(this + 5, v4);
    physx::NpRigidActorTemplate<physx::PxRigidStatic>::release(this);
  }

  else
  {
    physx::NpRigidActorTemplate<physx::PxRigidStatic>::release(this);
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  physx::Scb::Scene::removeActor(v4, v2, 1, (v5 & 8) != 0);
  v7 = *(this + 22);
  physx::NpScene::removeFromRigidActorList(&v4[-2], &v7);
LABEL_9:

  return physx::Scb::Base::destroy(v2);
}