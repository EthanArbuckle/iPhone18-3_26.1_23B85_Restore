uint64_t physx::Sq::SceneQueryManager::flushUpdates(uint64_t this)
{
  if (*(this + 208) == 1)
  {
    v1 = this;
    if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
    {
      this = pthread_mutex_lock(*(this + 176));
    }

    if (*(v1 + 208) == 1)
    {
      physx::Sq::SceneQueryManager::flushShapes(v1);
      v2 = 0;
      v3 = 1;
      do
      {
        v4 = v3;
        this = *(v1 + 48 * v2);
        if (this)
        {
          this = (*(*this + 32))(this);
        }

        v3 = 0;
        v2 = 1;
      }

      while ((v4 & 1) != 0);
      __dmb(0xBu);
      *(v1 + 208) = 0;
    }

    if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
    {
      v5 = *(v1 + 176);

      return pthread_mutex_unlock(v5);
    }
  }

  return this;
}

uint64_t physx::Sq::SceneQueryManager::forceDynamicTreeRebuild(uint64_t this, char a2, char a3)
{
  v5 = this;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    this = pthread_mutex_lock(*(this + 176));
  }

  v6 = 0;
  v7 = 1;
  do
  {
    v8 = v7;
    if (a2)
    {
      v9 = (v5 + 48 * v6);
      this = *v9;
      if (*v9)
      {
        if (v9[10] == 1)
        {
          (*(*this + 128))(this);
          this = (*(**v9 + 32))();
        }
      }
    }

    v7 = 0;
    a2 = a3;
    v6 = 1;
  }

  while ((v8 & 1) != 0);
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    v10 = *(v5 + 176);

    return pthread_mutex_unlock(v10);
  }

  return this;
}

uint64_t physx::Sq::SceneQueryManager::shiftOrigin(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = 1;
  do
  {
    v6 = v5;
    (*(**(a1 + 48 * v4) + 96))(*(a1 + 48 * v4), a2);
    v5 = 0;
    v4 = 1;
  }

  while ((v6 & 1) != 0);
  v7 = *(**(a1 + 96) + 88);

  return v7();
}

uint64_t physx::Sq::DynamicBoundsSync::sync(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a5)
  {
    v10 = result;
    v11 = *(a6 + 8) & 0x7FFFFFFF;
    if (!v11)
    {
      goto LABEL_12;
    }

    v12 = 0;
    v13 = *a6;
    do
    {
      v14 = *v13++;
      v15 = vcnt_s8(v14);
      v15.i16[0] = vaddlv_u8(v15);
      v12 += v15.i32[0];
      --v11;
    }

    while (v11);
    if (v12)
    {
      v16 = 0;
      v17 = 0;
      v18 = a5;
      a5 = 0;
      do
      {
        if ((*(*a6 + ((*(a3 + 4 * v16) >> 3) & 0x1FFFFFFC)) >> *(a3 + 4 * v16)))
        {
          (*(**(v10 + 8) + 24))(*(v10 + 8), a2 + 4 * v17, a3 + 4 * v17, a4, a5);
          a5 = 0;
          v17 = ++v16;
        }

        else
        {
          a5 = (a5 + 1);
          ++v16;
        }
      }

      while (v16 != v18);
    }

    else
    {
LABEL_12:
      v17 = 0;
    }

    result = (*(**(v10 + 8) + 24))(*(v10 + 8), a2 + 4 * v17, a3 + 4 * v17, a4, a5);
    ++**(v10 + 16);
  }

  return result;
}

void *physx::Sq::SceneQueryManager::addPruningStructure(void *this, const physx::Sq::PruningStructure *a2, uint64_t a3, uint64_t a4)
{
  v5 = this;
  v6 = *(a2 + 3);
  if (v6)
  {
    v7 = *(a2 + 10);
    v8 = *(a2 + 6);
    v12 = *(a2 + 3);
    v13 = v6;
    v14 = v7;
    v15 = v8;
    this = (*(**this + 40))(*this, &v12, a3, a4);
  }

  v9 = *(a2 + 4);
  if (v9)
  {
    v10 = *(a2 + 11);
    v11 = *(a2 + 7);
    v12 = *(a2 + 4);
    v13 = v9;
    v14 = v10;
    v15 = v11;
    return (*(*v5[6] + 40))(v5[6], &v12);
  }

  return this;
}

void physx::Sq::SceneQueryManager::addCompoundShape(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v32 = *MEMORY[0x1E69E9840];
  v14 = (*(*a2 + 80))(a2);
  v15 = v14;
  v16 = (4 * v14);
  v29 = a4;
  v28 = a3;
  if (v16 < 0x401)
  {
    MEMORY[0x1EEE9AC00](v14);
    v18 = &v27[-((v16 + 15) & 0x1FFFFFFF0)];
    bzero(v18, v16);
  }

  else
  {
    v17 = physx::shdfnd::TempAllocator::allocate(v31, v16, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/scenequery/src/SqSceneQueryManager.cpp", 561);
    v18 = v17;
  }

  v19 = 16 * v15;
  if (v19 < 0x401)
  {
    MEMORY[0x1EEE9AC00](v17);
    v20 = &v27[-((v19 + 15) & 0x1FFFFFFF0)];
    bzero(v20, 16 * v15);
    if (!v15)
    {
      goto LABEL_10;
    }

LABEL_8:
    v21 = v15;
    v22 = v20 + 1;
    do
    {
      v23 = *a6++;
      *(v22 - 1) = v23;
      *v22 = a7;
      v22 += 2;
      --v21;
    }

    while (v21);
    goto LABEL_10;
  }

  v20 = physx::shdfnd::TempAllocator::allocate(&v30, 16 * v15, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/scenequery/src/SqSceneQueryManager.cpp", 562);
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_10:
  if (*(*(&physx::Scb::Actor::sLazyInitOffsets + (*(a7 + 11) & 0xF) + 3) + a7 + 13) == 1)
  {
    v24 = 2;
  }

  else
  {
    v24 = 1;
  }

  (***(a1 + 96))(*(a1 + 96), v18, a2, v28, v29, v24, v20);
  v25 = a1 + 48 * ((v24 & 1) == 0);
  ++*(v25 + 44);
  if (v15)
  {
    for (i = 0; i != v15; ++i)
    {
      *(a5 + 8 * i) = ((v24 & 1) == 0) | (2 * *&v18[4 * i]);
    }

    if (v19 >= 0x401)
    {
      physx::shdfnd::TempAllocator::deallocate(v31, v20);
    }

    if (v16 >= 0x401)
    {
      physx::shdfnd::TempAllocator::deallocate(v31, v18);
    }
  }
}

uint64_t physx::Sq::SceneQueryManager::updateCompoundActors(uint64_t this, physx::Sc::BodyCore *const *a2, unsigned int a3)
{
  v3 = this;
  if (a3)
  {
    v5 = a3;
    do
    {
      v6 = *a2++;
      this = (*(**(v3 + 96) + 16))(*(v3 + 96), *(*v6 + 88), v6 + 16);
      --v5;
    }

    while (v5);
  }

  ++*(v3 + 92);
  return this;
}

uint64_t physx::Sq::BucketPruner::getPayload(void *a1, unsigned int a2, void *a3)
{
  v3 = *(a1[983] + 4 * a2);
  *a3 = a1[981] + 24 * v3;
  return a1[982] + 16 * v3;
}

uint64_t physx::Sq::BucketPruner::preallocate(uint64_t this, unsigned int a2)
{
  if (*(this + 7844) < a2)
  {
    return physx::Sq::PruningPool::resize((this + 7840), a2);
  }

  return this;
}

float OBBAABBTest_SIMD::OBBAABBTest_SIMD(float32x4_t *a1, __int32 *a2, uint64_t a3, uint64_t a4, double a5, double a6, float32x4_t a7, float32x4_t a8)
{
  v8.i64[0] = *a3;
  v8.i64[1] = *(a3 + 8);
  a1[1] = v8;
  v8.i64[0] = *a4;
  v8.i64[1] = *(a4 + 8);
  *a1 = v8;
  v9.i32[0] = *a2;
  v9.i32[1] = a2[3];
  v9.i64[1] = a2[6];
  a7.i32[0] = a2[1];
  a7.i32[1] = a2[4];
  a7.i32[2] = a2[7];
  a8.i32[0] = a2[2];
  a8.i32[1] = a2[5];
  a8.i32[2] = a2[8];
  a1[2] = v9;
  a1[3] = a7;
  v10 = vaddq_f32(vabsq_f32(v9), xmmword_1E3115C00);
  v11 = vaddq_f32(vabsq_f32(a7), xmmword_1E3115C00);
  v12 = vaddq_f32(vabsq_f32(a8), xmmword_1E3115C00);
  a1[4] = a8;
  a1[5] = v10;
  a1[6] = v11;
  a1[7] = v12;
  v13 = vmulq_f32(v8, v10);
  v13.i64[0] = vpaddq_f32(v13, v13).u64[0];
  v14 = vmulq_f32(v8, v11);
  v14.i64[0] = vpaddq_f32(v14, v14).u64[0];
  v15 = vmulq_f32(v8, v12);
  v15.i64[0] = vpaddq_f32(v15, v15).u64[0];
  LODWORD(result) = vpadd_f32(*v15.f32, *v15.f32).u32[0];
  *v13.f32 = vext_s8(vpadd_f32(*v13.f32, *v13.f32), vpadd_f32(*v14.f32, *v14.f32), 4uLL);
  v13.i64[1] = LODWORD(result);
  a1[8] = v13;
  return result;
}

float clipRay(float *a1, float *a2, float *a3, float *a4, float *a5)
{
  v5 = a5[1];
  v6 = a4[1];
  v7 = a5[2];
  v8 = a4[2];
  v9 = (v7 + v8) * 0.5;
  v10 = (v7 - v8) * 0.5;
  v11 = a2[1];
  v12 = a2[2];
  v13 = ((((v5 + v6) * 0.5) * v11) + (((*a5 + *a4) * 0.5) * *a2)) + (v9 * v12);
  v14 = sqrtf(((((v5 - v6) * 0.5) * ((v5 - v6) * 0.5)) + (((*a5 - *a4) * 0.5) * ((*a5 - *a4) * 0.5))) + (v10 * v10));
  v15 = v13 - v14;
  v16 = v14 + v13;
  v17 = ((v11 * a1[1]) + (*a1 * *a2)) + (a1[2] * v12);
  v18 = v14 + v14;
  v19 = vabds_f32(v15, v17);
  v20 = vabds_f32(v16, v17);
  if (v19 >= v20)
  {
    v19 = v20;
  }

  result = v19 + (v18 * 2.0);
  *a3 = result;
  return result;
}

void *physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<physx::Sq::PrunerPayload const,physx::Sq::ExtendedBucketPrunerData>,physx::Sq::PrunerPayload,physx::Sq::ExtendedBucketPrunerHash,physx::shdfnd::internal::HashMapBase<physx::Sq::PrunerPayload,physx::Sq::ExtendedBucketPrunerData,physx::Sq::ExtendedBucketPrunerHash,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(uint64_t a1, unsigned int a2)
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
  if (v8 + 32 * v7)
  {
    v9 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v8 + 32 * v7, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsHashInternals.h", 372);
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
    v14 = 0;
    do
    {
      v15 = *(a1 + 8) + v13;
      v16 = ~(*v15 << 32) + *v15 + (*(v15 + 8) << 32);
      v17 = (v16 ^ (v16 >> 22)) + ~((v16 ^ (v16 >> 22)) << 13);
      v18 = (9 * (v17 ^ (v17 >> 8))) ^ ((9 * (v17 ^ (v17 >> 8))) >> 15);
      LODWORD(v18) = (v2 - 1) & (((v18 + ~(v18 << 27)) >> 31) ^ (v18 + ~(v18 << 27)));
      *&v10[4 * v14] = *&v9[4 * v18];
      *&v9[4 * v18] = v14;
      v19 = &v11[v13];
      *v19 = *v15;
      v20 = *(v15 + 16);
      *(v19 + 6) = *(v15 + 24);
      *(v19 + 2) = v20;
      ++v14;
      v13 += 32;
    }

    while (v14 < *(a1 + 52));
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

uint64_t physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<physx::Sq::PrunerPayload const,physx::Sq::ExtendedBucketPrunerData>,physx::Sq::PrunerPayload,physx::Sq::ExtendedBucketPrunerHash,physx::shdfnd::internal::HashMapBase<physx::Sq::PrunerPayload,physx::Sq::ExtendedBucketPrunerData,physx::Sq::ExtendedBucketPrunerHash,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::erase(int32x2_t *a1, uint64_t *a2, uint64_t a3)
{
  if (!a1[6].i32[1])
  {
    return 0;
  }

  v3 = *a2;
  v4 = a2[1];
  v5 = ~(*a2 << 32) + *a2 + (v4 << 32);
  v6 = 9 * (((v5 ^ (v5 >> 22)) + ~((v5 ^ (v5 >> 22)) << 13)) ^ (((v5 ^ (v5 >> 22)) + ~((v5 ^ (v5 >> 22)) << 13)) >> 8));
  v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
  v8 = (*&a1[3] + 4 * ((a1[4].i32[1] - 1) & ((v7 >> 31) ^ v7)));
  v9 = *v8;
  if (v9 == -1)
  {
    return 0;
  }

  v10 = a1[1];
  v11 = *&v10 + 32 * v9;
  if (*v11 != v3 || *(v11 + 8) != v4)
  {
    v13 = a1[2];
    while (1)
    {
      v14 = v9;
      v9 = *(*&v13 + 4 * v9);
      if (v9 == -1)
      {
        return 0;
      }

      v11 = *&v10 + 32 * v9;
      if (*v11 == v3 && *(v11 + 8) == v4)
      {
        v8 = (*&v13 + 4 * v14);
        break;
      }
    }
  }

  *a3 = *v11;
  v16 = *(v11 + 16);
  *(a3 + 24) = *(v11 + 24);
  *(a3 + 16) = v16;
  v17 = *v8;
  *v8 = *(*&a1[2] + 4 * v17);
  v18 = vadd_s32(a1[6], 0xFFFFFFFF00000001);
  a1[6] = v18;
  if (v17 != v18.i32[1])
  {
    v19 = a1[1];
    v20 = *&v19 + 32 * v17;
    v21 = *&v19 + 32 * v18.u32[1];
    *v20 = *v21;
    v19.i32[0] = *(v21 + 24);
    *(v20 + 16) = *(v21 + 16);
    *(v20 + 24) = v19.i32[0];
    v23 = a1[1];
    v22 = a1[2];
    *(*&v22 + 4 * v17) = *(*&v22 + 4 * a1[6].u32[1]);
    v24 = ~(*(*&v23 + 32 * v17) << 32) + *(*&v23 + 32 * v17) + (*(*&v23 + 32 * v17 + 8) << 32);
    v25 = (v24 ^ (v24 >> 22)) + ~((v24 ^ (v24 >> 22)) << 13);
    v26 = (9 * (v25 ^ (v25 >> 8))) ^ ((9 * (v25 ^ (v25 >> 8))) >> 15);
    v27 = (*&a1[3] + 4 * ((a1[4].i32[1] - 1) & (((v26 + ~(v26 << 27)) >> 31) ^ (v26 + ~(v26 << 27)))));
    v28 = a1[6].u32[1];
    v29 = *v27;
    if (v29 != v28)
    {
      do
      {
        v30 = v29;
        v29 = *(*&v22 + 4 * v29);
      }

      while (v29 != v28);
      v27 = (*&v22 + 4 * v30);
    }

    *v27 = v17;
  }

  --a1[5].i32[1];
  return 1;
}

void *physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<unsigned int,unsigned int>,physx::shdfnd::Pair<unsigned int,unsigned int>,physx::shdfnd::Hash<physx::shdfnd::Pair<unsigned int,unsigned int>>,physx::shdfnd::internal::HashSetBase<physx::shdfnd::Pair<unsigned int,unsigned int>,physx::shdfnd::Hash<physx::shdfnd::Pair<unsigned int,unsigned int>>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(uint64_t a1, unsigned int a2)
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
  if (v8 + 8 * v7)
  {
    v9 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v8 + 8 * v7, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsHashInternals.h", 372);
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
      v15 = v14[1] + ~(v14[1] << 15);
      v16 = (9 * (v15 ^ (v15 >> 10))) ^ ((9 * (v15 ^ (v15 >> 10))) >> 6);
      v17 = *v14 + ~(*v14 << 15);
      v18 = (9 * (v17 ^ (v17 >> 10))) ^ ((9 * (v17 ^ (v17 >> 10))) >> 6);
      v19 = ((1000007 * ((v18 + ~(v18 << 11)) ^ ((v18 + ~(v18 << 11)) >> 16) ^ 0xFC955B95)) ^ ((v16 + ~(v16 << 11)) >> 16) ^ (v16 + ~(v16 << 11))) & (v2 - 1);
      *&v10[4 * v13] = *&v9[4 * v19];
      *&v9[4 * v19] = v13;
      v20 = *v14;
      v14 += 2;
      *&v11[8 * v13++] = v20;
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

_DWORD *physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<unsigned int,unsigned int>,physx::shdfnd::Pair<unsigned int,unsigned int>,physx::shdfnd::Hash<physx::shdfnd::Pair<unsigned int,unsigned int>>,physx::shdfnd::internal::HashSetBase<physx::shdfnd::Pair<unsigned int,unsigned int>,physx::shdfnd::Hash<physx::shdfnd::Pair<unsigned int,unsigned int>>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::create(int32x2_t *a1, int *a2, _BYTE *a3)
{
  v5 = a1[4].u32[1];
  if (!v5)
  {
    v11 = 0;
    goto LABEL_10;
  }

  v7 = *a2;
  v6 = a2[1];
  v8 = 9 * ((v6 + ~(v6 << 15)) ^ ((v6 + ~(v6 << 15)) >> 10));
  v9 = (v8 ^ (v8 >> 6)) + ~((v8 ^ (v8 >> 6)) << 11);
  v10 = 9 * ((v7 + ~(v7 << 15)) ^ ((v7 + ~(v7 << 15)) >> 10));
  v11 = ((1000007 * (((v10 ^ (v10 >> 6)) + ~((v10 ^ (v10 >> 6)) << 11)) ^ (((v10 ^ (v10 >> 6)) + ~((v10 ^ (v10 >> 6)) << 11)) >> 16) ^ 0xFC955B95)) ^ HIWORD(v9) ^ v9) & (v5 - 1);
  v12 = *(*&a1[3] + 4 * v11);
  if (v12 == -1)
  {
LABEL_10:
    *a3 = 0;
    if (a1[6].i32[1] == a1[4].i32[0])
    {
      if (v5)
      {
        v15 = 2 * v5;
      }

      else
      {
        v15 = 16;
      }

      if (v5 < v15)
      {
        physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<unsigned int,unsigned int>,physx::shdfnd::Pair<unsigned int,unsigned int>,physx::shdfnd::Hash<physx::shdfnd::Pair<unsigned int,unsigned int>>,physx::shdfnd::internal::HashSetBase<physx::shdfnd::Pair<unsigned int,unsigned int>,physx::shdfnd::Hash<physx::shdfnd::Pair<unsigned int,unsigned int>>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(a1, v15);
        v5 = a1[4].u32[1];
      }

      v16 = a2[1] + ~(a2[1] << 15);
      v17 = (9 * (v16 ^ (v16 >> 10))) ^ ((9 * (v16 ^ (v16 >> 10))) >> 6);
      v18 = 9 * ((*a2 + ~(*a2 << 15)) ^ ((*a2 + ~(*a2 << 15)) >> 10));
      v11 = ((1000007 * (((v18 ^ (v18 >> 6)) + ~((v18 ^ (v18 >> 6)) << 11)) ^ (((v18 ^ (v18 >> 6)) + ~((v18 ^ (v18 >> 6)) << 11)) >> 16) ^ 0xFC955B95)) ^ ((v17 + ~(v17 << 11)) >> 16) ^ (v17 + ~(v17 << 11))) & (v5 - 1);
    }

    v19 = a1[5].u32[1];
    a1[5].i32[1] = v19 + 1;
    v20 = a1[3];
    v21 = a1[1];
    *(*&a1[2] + 4 * v19) = *(*&v20 + 4 * v11);
    *(*&v20 + 4 * v11) = v19;
    a1[6] = vadd_s32(a1[6], 0x100000001);
    return (*&v21 + 8 * v19);
  }

  while (1)
  {
    result = (*&a1[1] + 8 * v12);
    if (*result == v7 && result[1] == v6)
    {
      break;
    }

    v12 = *(*&a1[2] + 4 * v12);
    if (v12 == -1)
    {
      goto LABEL_10;
    }
  }

  *a3 = 1;
  return result;
}

uint64_t physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<unsigned int,unsigned int>,physx::shdfnd::Pair<unsigned int,unsigned int>,physx::shdfnd::Hash<physx::shdfnd::Pair<unsigned int,unsigned int>>,physx::shdfnd::internal::HashSetBase<physx::shdfnd::Pair<unsigned int,unsigned int>,physx::shdfnd::Hash<physx::shdfnd::Pair<unsigned int,unsigned int>>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::erase(int32x2_t *a1, int *a2)
{
  if (!a1[6].i32[1])
  {
    return 0;
  }

  v3 = *a2;
  v2 = a2[1];
  v4 = 9 * ((v2 + ~(v2 << 15)) ^ ((v2 + ~(v2 << 15)) >> 10));
  v5 = (v4 ^ (v4 >> 6)) + ~((v4 ^ (v4 >> 6)) << 11);
  v6 = 9 * ((v3 + ~(v3 << 15)) ^ ((v3 + ~(v3 << 15)) >> 10));
  v7 = (1000007 * (((v6 ^ (v6 >> 6)) + ~((v6 ^ (v6 >> 6)) << 11)) ^ (((v6 ^ (v6 >> 6)) + ~((v6 ^ (v6 >> 6)) << 11)) >> 16) ^ 0xFC955B95)) ^ HIWORD(v5) ^ v5;
  v8 = a1[3];
  v9 = (*&v8 + 4 * (v7 & (a1[4].i32[1] - 1)));
  v10 = *v9;
  if (v10 == -1)
  {
    return 0;
  }

  v12 = a1[1];
  v11 = a1[2];
  v13 = (*&v12 + 8 * v10);
  if (*v13 != v3 || v13[1] != v2)
  {
    while (1)
    {
      v15 = v10;
      v10 = *(*&v11 + 4 * v10);
      if (v10 == -1)
      {
        return 0;
      }

      v13 = (*&v12 + 8 * v10);
      if (*v13 == v3 && v13[1] == v2)
      {
        v9 = (*&v11 + 4 * v15);
        break;
      }
    }
  }

  *v9 = *(*&v11 + 4 * v10);
  v17 = vadd_s32(a1[6], 0xFFFFFFFF00000001);
  a1[6] = v17;
  if (v10 != v17.i32[1])
  {
    *v13 = *(*&v12 + 8 * v17.u32[1]);
    *(*&v11 + 4 * v10) = *(*&v11 + 4 * v17.u32[1]);
    v18 = v13[1] + ~(v13[1] << 15);
    v19 = (9 * (v18 ^ (v18 >> 10))) ^ ((9 * (v18 ^ (v18 >> 10))) >> 6);
    v20 = 9 * ((*v13 + ~(*v13 << 15)) ^ ((*v13 + ~(*v13 << 15)) >> 10));
    v21 = (*&v8 + 4 * (((1000007 * (((v20 ^ (v20 >> 6)) + ~((v20 ^ (v20 >> 6)) << 11)) ^ (((v20 ^ (v20 >> 6)) + ~((v20 ^ (v20 >> 6)) << 11)) >> 16) ^ 0xFC955B95)) ^ ((v19 + ~(v19 << 11)) >> 16) ^ (v19 + ~(v19 << 11))) & (a1[4].i32[1] - 1)));
    v22 = a1[6].u32[1];
    v23 = *v21;
    if (v23 != v22)
    {
      do
      {
        v24 = v23;
        v23 = *(*&v11 + 4 * v23);
      }

      while (v23 != v22);
      v21 = (*&v11 + 4 * v24);
    }

    *v21 = v10;
  }

  --a1[5].i32[1];
  return 1;
}

float32x2_t physx::PxTransformFromPlaneEquation@<D0>(float32x2_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1].f32[0];
  v4 = a1[1].f32[1];
  v5 = 1.0 / sqrtf((COERCE_FLOAT(vmul_f32(*a1, *a1).i32[1]) + (COERCE_FLOAT(*a1) * COERCE_FLOAT(*a1))) + (v3 * v3));
  v6 = vmul_n_f32(*a1, v5);
  v19 = v6;
  v7 = v3 * v5;
  v8 = v4 * v5;
  v20 = v7;
  v21 = v8;
  v9 = vceqz_f32(v6);
  v10 = (v9.i8[0] & 1) - v9.i32[1];
  if (v7 == 0.0)
  {
    ++v10;
  }

  if (v10 == 2)
  {
    if (v6.f32[0] <= 0.0)
    {
      if (v6.f32[0] < 0.0)
      {
        v11 = xmmword_1E30476A0;
      }

      else
      {
        v11 = xmmword_1E3116080;
        *(&v11 + 4) = vmul_f32(__PAIR64__(v6.u32[1], LODWORD(v7)), 0x3F3504F3BF3504F3);
      }
    }

    else
    {
      v11 = xmmword_1E30474D0;
    }
  }

  else
  {
    v16 = 1065353216;
    v17 = 0;
    v14 = v8;
    v15 = v6;
    v13 = v7;
    physx::PxShortestRotation(&v16, &v19, &v18);
    v7 = v13;
    v8 = v14;
    v6 = v15;
    v11 = v18;
  }

  *a2 = v11;
  result = vmul_n_f32(vneg_f32(v6), v8);
  *(a2 + 16) = result;
  *(a2 + 24) = -(v7 * v8);
  return result;
}

float32x2_t physx::PxTransformFromSegment@<D0>(float32x2_t *a1@<X0>, float32x2_t *a2@<X1>, float *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  v6 = *a1;
  v7 = vsub_f32(*a2, *a1);
  v8 = a2[1].f32[0];
  v9 = a1[1].f32[0];
  v10 = v8 - v9;
  v11 = sqrtf((COERCE_FLOAT(vmul_f32(v7, v7).i32[1]) + (v7.f32[0] * v7.f32[0])) + (v10 * v10));
  if (a3)
  {
    *a3 = v11 * 0.5;
    v5 = *a2;
    v6 = *a1;
    v8 = a2[1].f32[0];
    v9 = a1[1].f32[0];
  }

  if (v11 >= 0.000001)
  {
    v17 = 1065353216;
    v18 = 0;
    v13 = 1.0 / v11;
    v15 = vmul_n_f32(v7, v13);
    v16 = v10 * v13;
    physx::PxShortestRotation(&v17, &v15, &v19);
    v12 = v19;
  }

  else
  {
    v12 = xmmword_1E30474D0;
  }

  *a4 = v12;
  result = vmul_f32(vadd_f32(v6, v5), 0x3F0000003F000000);
  *(a4 + 16) = result;
  *(a4 + 24) = (v9 + v8) * 0.5;
  return result;
}

uint64_t physx::Cm::PtrTable::clear(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (*(result + 10) == 1)
  {
    v3 = *(result + 8);
    if (v3 >= 2)
    {
      v4 = (v3 - 1) | ((v3 - 1) >> 1) | (((v3 - 1) | ((v3 - 1) >> 1)) >> 2);
      result = (*(*a2 + 8))(a2, *result, 8 * (v4 | (v4 >> 4) | ((v4 | (v4 >> 4)) >> 8)) + 8);
    }
  }

  *v2 = 0;
  *(v2 + 10) = 1;
  *(v2 + 8) = 0;
  return result;
}

uint64_t physx::Cm::PtrTable::exportExtraData(uint64_t result, uint64_t a2)
{
  if (*(result + 8) >= 2u)
  {
    v4 = result;
    (*(*a2 + 24))(a2, 16);
    v5 = *v4;
    v6 = 8 * *(v4 + 8);
    v7 = *(*a2 + 16);

    return v7(a2, v5, v6);
  }

  return result;
}

uint64_t physx::Cm::PtrTable::realloc(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v6 = a2;
  if ((*(a1 + 10) & 1) == 0 || (result = (*(*a4 + 16))(a4, a2, a3), (result & 1) == 0))
  {
    v9 = (**a4)(a4, (8 * v5));
    result = memcpy(v9, *a1, 8 * *(a1 + 4));
    if (*(a1 + 10) == 1)
    {
      result = (*(*a4 + 8))(a4, *a1, (8 * v6));
    }

    *a1 = v9;
    *(a1 + 10) = 1;
  }

  return result;
}

uint64_t physx::Cm::PtrTable::add(uint64_t result, uint64_t a2, uint64_t (***a3)(void, uint64_t))
{
  v5 = result;
  v6 = *(result + 8);
  if (v6 == 1)
  {
    v7 = *result;
    result = (**a3)(a3, 16);
    *v5 = result;
    *result = v7;
    *(v5 + 10) = 1;
  }

  else
  {
    if (!*(result + 8))
    {
      *result = a2;
      *(result + 8) = 1;
      *(result + 11) = 1;
      return result;
    }

    if ((*(result + 10) & 1) == 0)
    {
      v9 = v6 | (v6 >> 1) | ((v6 | (v6 >> 1)) >> 2);
      v8 = (v9 | (v9 >> 4) | ((v9 | (v9 >> 4)) >> 8)) + 1;
      v6 = 0;
      goto LABEL_9;
    }

    if ((v6 & (v6 - 1)) == 0)
    {
      v8 = (2 * v6);
LABEL_9:
      result = physx::Cm::PtrTable::realloc(result, v6, v8, a3);
    }
  }

  v10 = *v5;
  v11 = *(v5 + 8);
  *(v5 + 8) = v11 + 1;
  *(v10 + 8 * v11) = a2;
  return result;
}

void *physx::Cm::PtrTable::replaceWithLast(void *result, unsigned int a2, uint64_t a3)
{
  v4 = result;
  v5 = *(result + 4);
  if (v5 == 2)
  {
    v7 = *(*result + 8 * (1 - a2));
    if (*(result + 10) == 1)
    {
      result = (*(*a3 + 8))(a3, *result, 16);
    }

    *v4 = v7;
    *(v4 + 2) = 16842753;
  }

  else
  {
    v6 = v5 - 1;
    if (!v6)
    {
      *result = 0;
      *(result + 4) = 0;
      *(result + 11) = 0;
      return result;
    }

    v8 = *result;
    *(result + 4) = v6;
    *(v8 + 8 * a2) = *(v8 + 8 * v6);
    v9 = v6;
    if (*(result + 10))
    {
      if ((v6 & (v6 - 1)) != 0)
      {
        return result;
      }

      v10 = 2 * v6;
    }

    else
    {
      v11 = (v6 - 1) | ((v6 - 1) >> 1) | (((v6 - 1) | ((v6 - 1) >> 1)) >> 2);
      v12 = v11 | (v11 >> 4) | ((v11 | (v11 >> 4)) >> 8);
      v9 = (v12 | HIWORD(v12)) + 1;
      v10 = 0;
    }

    return physx::Cm::PtrTable::realloc(result, v10, v9, a3);
  }

  return result;
}

uint64_t physx::Cm::RadixSort::Sort(uint64_t a1, unsigned __int8 *a2, unsigned int a3, int a4)
{
  if (!a2 || a3 < 1)
  {
    return a1;
  }

  ++*(a1 + 48);
  bzero(*(a1 + 32), 0x1000uLL);
  v8 = 4 * a3;
  v9 = &a2[v8];
  v10 = *(a1 + 32);
  v11 = v10 + 1024;
  v12 = v10 + 2048;
  v13 = v10 + 3072;
  v14 = *(a1 + 8);
  if (a4 != 1)
  {
    if (v14 < 0)
    {
      if (!v8)
      {
LABEL_36:
        v38 = 0;
        v39 = vdupq_n_s64(a3 - 1);
        ++*(a1 + 52);
        v40 = xmmword_1E3049640;
        v41 = xmmword_1E3049620;
        v42 = vdupq_n_s64(4uLL);
        v43 = (*(a1 + 16) + 8);
        do
        {
          v44 = vmovn_s64(vcgeq_u64(v39, v41));
          if (vuzp1_s16(v44, *v39.i8).u8[0])
          {
            *(v43 - 2) = v38;
          }

          if (vuzp1_s16(v44, *&v39).i8[2])
          {
            *(v43 - 1) = v38 + 1;
          }

          if (vuzp1_s16(*&v39, vmovn_s64(vcgeq_u64(v39, *&v40))).i32[1])
          {
            *v43 = v38 + 2;
            v43[1] = v38 + 3;
          }

          v38 += 4;
          v40 = vaddq_s64(v40, v42);
          v41 = vaddq_s64(v41, v42);
          v43 += 4;
        }

        while (((a3 + 3) & 0xFFFFFFFC) != v38);
        return a1;
      }

      v35 = *a2;
      v22 = a2;
      while (1)
      {
        v36 = *v22;
        if (*v22 < v35)
        {
          break;
        }

        ++*(v10 + 4 * *v22);
        ++*(v11 + 4 * v22[1]);
        ++*(v12 + 4 * v22[2]);
        v37 = v22[3];
        v22 += 4;
        ++*(v13 + 4 * v37);
        v35 = v36;
        v8 -= 4;
        if (!v8)
        {
          goto LABEL_36;
        }
      }
    }

    else
    {
      if (!v8)
      {
        goto LABEL_15;
      }

      v20 = *(a1 + 16);
      v21 = *&a2[4 * *v20];
      v22 = a2;
      while (1)
      {
        v23 = *&a2[4 * *v20];
        if (v23 < v21)
        {
          break;
        }

        ++v20;
        ++*(v10 + 4 * *v22);
        ++*(v11 + 4 * v22[1]);
        ++*(v12 + 4 * v22[2]);
        v24 = v22[3];
        v22 += 4;
        ++*(v13 + 4 * v24);
        v21 = v23;
        v8 -= 4;
        if (!v8)
        {
          goto LABEL_15;
        }
      }
    }

    while (v22 != v9)
    {
      ++*(v10 + 4 * *v22);
      ++*(v11 + 4 * v22[1]);
      ++*(v12 + 4 * v22[2]);
      ++*(v13 + 4 * v22[3]);
      v22 += 4;
    }

    goto LABEL_47;
  }

  if ((v14 & 0x80000000) == 0)
  {
    if (v8)
    {
      v15 = *(a1 + 16);
      v16 = *&a2[4 * *v15];
      v17 = a2;
      while (1)
      {
        v18 = *&a2[4 * *v15];
        if (v18 < v16)
        {
          break;
        }

        ++v15;
        ++*(v10 + 4 * *v17);
        ++*(v11 + 4 * v17[1]);
        ++*(v12 + 4 * v17[2]);
        v19 = v17[3];
        v17 += 4;
        ++*(v13 + 4 * v19);
        v16 = v18;
        v8 -= 4;
        if (!v8)
        {
          goto LABEL_15;
        }
      }

LABEL_30:
      while (v17 != v9)
      {
        ++*(v10 + 4 * *v17);
        ++*(v11 + 4 * v17[1]);
        ++*(v12 + 4 * v17[2]);
        ++*(v13 + 4 * v17[3]);
        v17 += 4;
      }

LABEL_47:
      v45 = 0;
      if (!a4)
      {
        v46 = 0uLL;
        do
        {
          v46 = vaddq_s32(*(v10 + 3584 + v45), v46);
          v45 += 16;
        }

        while (v45 != 512);
        v45 = vaddvq_s32(v46);
      }

      v47 = 0;
      v48 = 0;
      v49 = 512;
      do
      {
        v50 = *(a1 + 32);
        v51 = &a2[v48];
        if (v50)
        {
          v52 = *(v50 + (v48 << 10) + 4 * a2[v48]) == a3;
        }

        else
        {
          v52 = 1;
        }

        if (!v52)
        {
          v53 = *(a1 + 40);
          v54 = *(a1 + 24);
          if (a4 == 1 || v48 != 3)
          {
            v60 = 0;
            *v53 = v54;
            v61 = v50 + v47;
            do
            {
              v54 += 4 * *(v61 + 4 * v60);
              v53[++v60] = v54;
            }

            while (v60 != 255);
          }

          else
          {
            v55 = 0;
            v56 = v54 + 4 * v45;
            *v53 = v56;
            do
            {
              v56 += 4 * *(v50 + v47 + 4 * v55);
              v53[++v55] = v56;
            }

            while (v55 != 127);
            v57 = 0;
            v58 = *(a1 + 24);
            v53[128] = v58;
            v59 = v50 + v49;
            do
            {
              v58 += 4 * *(v59 + 4 * v57);
              v53[v57++ + 129] = v58;
            }

            while (v57 != 127);
          }

          if ((*(a1 + 8) & 0x80000000) != 0)
          {
            v67 = 0;
            v68 = 0;
            do
            {
              v69 = v51[v67 & 0xFFFFFFFC];
              v70 = v53[v69];
              *v70 = v68;
              v53[v69] = v70 + 1;
              ++v68;
              v67 += 4;
            }

            while (a3 != v68);
            *(a1 + 8) &= ~0x80000000;
          }

          else
          {
            v62 = *(a1 + 16);
            v63 = 4 * a3;
            do
            {
              v64 = *v62++;
              v65 = v51[4 * v64];
              v66 = v53[v65];
              *v66 = v64;
              v53[v65] = v66 + 1;
              v63 -= 4;
            }

            while (v63);
          }

          *(a1 + 16) = vextq_s8(*(a1 + 16), *(a1 + 16), 8uLL);
        }

        ++v48;
        v47 += 1024;
        v49 += 1024;
      }

      while (v48 != 4);
      return a1;
    }

LABEL_15:
    ++*(a1 + 52);
    return a1;
  }

  if (v8)
  {
    v25 = *a2;
    v17 = a2;
    do
    {
      v26 = *v17;
      if (*v17 < v25)
      {
        goto LABEL_30;
      }

      ++*(v10 + 4 * *v17);
      ++*(v11 + 4 * v17[1]);
      ++*(v12 + 4 * v17[2]);
      v27 = v17[3];
      v17 += 4;
      ++*(v13 + 4 * v27);
      v25 = v26;
      v8 -= 4;
    }

    while (v8);
  }

  v28 = 0;
  v29 = vdupq_n_s64(a3 - 1);
  ++*(a1 + 52);
  v30 = xmmword_1E3049640;
  v31 = xmmword_1E3049620;
  v32 = vdupq_n_s64(4uLL);
  v33 = (*(a1 + 16) + 8);
  do
  {
    v34 = vmovn_s64(vcgeq_u64(v29, v31));
    if (vuzp1_s16(v34, *v29.i8).u8[0])
    {
      *(v33 - 2) = v28;
    }

    if (vuzp1_s16(v34, *&v29).i8[2])
    {
      *(v33 - 1) = v28 + 1;
    }

    if (vuzp1_s16(*&v29, vmovn_s64(vcgeq_u64(v29, *&v30))).i32[1])
    {
      *v33 = v28 + 2;
      v33[1] = v28 + 3;
    }

    v28 += 4;
    v30 = vaddq_s64(v30, v32);
    v31 = vaddq_s64(v31, v32);
    v33 += 4;
  }

  while (((a3 + 3) & 0xFFFFFFFC) != v28);
  return a1;
}

physx::Cm::RadixSort *physx::Cm::RadixSort::Sort(physx::Cm::RadixSort *this, float *a2, unsigned int a3)
{
  if (a2)
  {
    v5 = a3 - 1;
    if (a3 >= 1)
    {
      ++*(this + 12);
      bzero(*(this + 4), 0x1000uLL);
      v7 = 4 * a3;
      v8 = *(this + 4);
      v9 = v8 + 1024;
      v10 = v8 + 2048;
      v11 = v8 + 3072;
      if ((*(this + 2) & 0x80000000) != 0)
      {
        if (v7)
        {
          v18 = *a2;
          v19 = 4 * a3;
          v15 = a2;
          do
          {
            v20 = v18;
            v18 = *v15;
            if (*v15 < v20)
            {
              goto LABEL_22;
            }

            ++*(v8 + 4 * LOBYTE(v18));
            ++*(v9 + 4 * *(v15 + 1));
            ++*(v10 + 4 * *(v15 + 2));
            v21 = *(v15++ + 3);
            ++*(v11 + 4 * v21);
            v19 -= 4;
          }

          while (v19);
        }

        v22 = 0;
        v23 = vdupq_n_s64(a3 - 1);
        ++*(this + 13);
        v24 = xmmword_1E3049640;
        v25 = xmmword_1E3049620;
        v26 = vdupq_n_s64(4uLL);
        v27 = (*(this + 2) + 8);
        do
        {
          v28 = vmovn_s64(vcgeq_u64(v23, v25));
          if (vuzp1_s16(v28, *v23.i8).u8[0])
          {
            *(v27 - 2) = v22;
          }

          if (vuzp1_s16(v28, *&v23).i8[2])
          {
            *(v27 - 1) = v22 + 1;
          }

          if (vuzp1_s16(*&v23, vmovn_s64(vcgeq_u64(v23, *&v24))).i32[1])
          {
            *v27 = v22 + 2;
            v27[1] = v22 + 3;
          }

          v22 += 4;
          v24 = vaddq_s64(v24, v26);
          v25 = vaddq_s64(v25, v26);
          v27 += 4;
        }

        while (((a3 + 3) & 0xFFFFFFFC) != v22);
      }

      else
      {
        if (v7)
        {
          v12 = *(this + 2);
          v13 = a2[*v12];
          v14 = 4 * a3;
          v15 = a2;
          while (1)
          {
            v16 = v13;
            v13 = a2[*v12];
            if (v13 < v16)
            {
              break;
            }

            ++v12;
            ++*(v8 + 4 * *v15);
            ++*(v9 + 4 * *(v15 + 1));
            ++*(v10 + 4 * *(v15 + 2));
            v17 = *(v15++ + 3);
            ++*(v11 + 4 * v17);
            v14 -= 4;
            if (!v14)
            {
              goto LABEL_8;
            }
          }

LABEL_22:
          v30 = &a2[v7 / 4];
          while (v15 != v30)
          {
            ++*(v8 + 4 * *v15);
            ++*(v9 + 4 * *(v15 + 1));
            ++*(v10 + 4 * *(v15 + 2));
            ++*(v11 + 4 * *(v15++ + 3));
          }

          v31 = 0;
          v32 = v11 + 512;
          v33 = 0uLL;
          do
          {
            v33 = vaddq_s32(*(v32 + v31), v33);
            v31 += 16;
          }

          while (v31 != 512);
          v34 = vaddvq_s32(v33);
          v35 = vdupq_n_s64(a3 - 1);
          v36 = vdupq_n_s64(4uLL);
          v37 = 0;
          v38 = 0;
          while (1)
          {
            v39 = *(this + 4);
            v40 = v39 + (v38 << 10);
            v41 = a2 + v38;
            v42 = *(a2 + v38);
            v43 = *(v40 + 4 * v42);
            if (v43 == a3)
            {
              v40 = 0;
            }

            if (v38 == 3)
            {
              break;
            }

            if (v40)
            {
              v50 = 0;
              v51 = *(this + 5);
              v52 = *(this + 3);
              *v51 = v52;
              do
              {
                v52 += 4 * *(v40 + 4 * v50);
                v51[++v50] = v52;
              }

              while (v50 != 255);
              if ((*(this + 2) & 0x80000000) == 0)
              {
                v53 = *(this + 2);
                v54 = 4 * a3;
                do
                {
                  v55 = *v53++;
                  v56 = v41[4 * v55];
                  v57 = v51[v56];
                  *v57 = v55;
                  v51[v56] = v57 + 1;
                  v54 -= 4;
                }

                while (v54);
                goto LABEL_73;
              }

              v80 = 0;
              v81 = 0;
              do
              {
                v82 = v41[v80 & 0xFFFFFFFC];
                v83 = v51[v82];
                *v83 = v81;
                v51[v82] = v83 + 1;
                ++v81;
                v80 += 4;
              }

              while (a3 != v81);
LABEL_72:
              *(this + 2) &= ~0x80000000;
              goto LABEL_73;
            }

LABEL_75:
            ++v38;
            v37 += 1024;
            if (v38 == 4)
            {
              return this;
            }
          }

          if (v43 == a3)
          {
            if ((v42 & 0x80000000) == 0)
            {
              return this;
            }

            if ((*(this + 2) & 0x80000000) != 0)
            {
              v91 = 0;
              v45 = *(this + 3);
              v92 = v45 + 2;
              v93 = v5;
              v94 = xmmword_1E3049620;
              v95 = xmmword_1E3049640;
              do
              {
                v96 = vmovn_s64(vcgeq_u64(v35, v94));
                if (vuzp1_s16(v96, *v35.i8).u8[0])
                {
                  *(v92 - 2) = v93;
                }

                if (vuzp1_s16(v96, *&v35).i8[2])
                {
                  *(v92 - 1) = (v91 ^ 0xFFFFFFFE) + a3;
                }

                if (vuzp1_s16(*&v35, vmovn_s64(vcgeq_u64(v35, *&v95))).i32[1])
                {
                  *v92 = (v91 ^ 0xFFFFFFFD) + a3;
                  v92[1] = (v91 ^ 0xFFFFFFFC) + a3;
                }

                v91 += 4;
                v95 = vaddq_s64(v95, v36);
                v94 = vaddq_s64(v94, v36);
                v93 -= 4;
                v92 += 4;
              }

              while (((a3 + 3) & 0xFFFFFFFC) != v91);
              *(this + 2) &= ~0x80000000;
              v44 = *(this + 2);
            }

            else
            {
              v44 = *(this + 2);
              v45 = *(this + 3);
              v46 = v5;
              v47 = v45;
              v48 = -a3;
              do
              {
                *v47++ = *(v44 + 4 * v46--);
              }

              while (!__CFADD__(v48++, 1));
            }
          }

          else
          {
            v58 = 0;
            v59 = *(this + 5);
            v60 = *(this + 3) + 4 * v34;
            v59->i64[0] = v60;
            v61 = v39 + v37;
            do
            {
              v60 += 4 * *(v61 + 4 * v58);
              v59->i64[++v58] = v60;
            }

            while (v58 != 127);
            v62 = 0;
            v63 = *(this + 3);
            v59[127].i64[1] = v63;
            do
            {
              v63 += 4 * *(v40 + 1020 + 4 * v62);
              v59[127].i64[v62--] = v63;
            }

            while (v62 != -127);
            v64 = 0;
            v65 = v40 + 512;
            v66 = v59 + 64;
            do
            {
              v67 = *(v65 + v64);
              v68 = vaddq_s64(*v66, vshll_n_u32(*v67.i8, 2uLL));
              v69 = vaddq_s64(v66[1], vshll_high_n_u32(v67, 2uLL));
              *v66 = v68;
              v66[1] = v69;
              v66 += 2;
              v64 += 16;
            }

            while (v64 != 512);
            if ((*(this + 2) & 0x80000000) != 0)
            {
              v84 = 0;
              do
              {
                v85 = LODWORD(a2[v84]);
                v86 = (v85 >> 21) & 0x7F8;
                v87 = *(v59->i64 + v86);
                v88 = (v85 & 0x80000000) != 0;
                if ((v85 & 0x80000000) != 0)
                {
                  v89 = v87 - 4;
                }

                else
                {
                  v89 = v87 + 4;
                }

                if (v88)
                {
                  v90 = -4;
                }

                else
                {
                  v90 = 0;
                }

                *(v59->i64 + v86) = v89;
                *(v87 + v90) = v84++;
              }

              while (a3 != v84);
              goto LABEL_72;
            }

            v70 = *(this + 2);
            v71 = a3;
            do
            {
              v73 = *v70++;
              v72 = v73;
              v74 = LODWORD(a2[v73]);
              v75 = (v74 >> 21) & 0x7F8;
              v76 = *(v59->i64 + v75);
              v77 = (v74 & 0x80000000) != 0;
              if ((v74 & 0x80000000) != 0)
              {
                v78 = v76 - 4;
              }

              else
              {
                v78 = v76 + 4;
              }

              if (v77)
              {
                v79 = -4;
              }

              else
              {
                v79 = 0;
              }

              *(v59->i64 + v75) = v78;
              *(v76 + v79) = v72;
              --v71;
            }

            while (v71);
LABEL_73:
            v44 = *(this + 2);
            v45 = *(this + 3);
          }

          *(this + 2) = v45;
          *(this + 3) = v44;
          goto LABEL_75;
        }

LABEL_8:
        ++*(this + 13);
      }
    }
  }

  return this;
}

uint64_t physx::Cm::RadixSortBuffered::reset(uint64_t this)
{
  v1 = this;
  if (*(this + 56) == 1)
  {
    if (*(this + 24))
    {
      this = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    *(v1 + 24) = 0;
    if (*(v1 + 16))
    {
      this = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    *(v1 + 16) = 0;
  }

  *(v1 + 8) = 0x80000000;
  return this;
}

void physx::Cm::RadixSortBuffered::~RadixSortBuffered(physx::Cm::RadixSortBuffered *this)
{
  *this = &unk_1F5D21400;
  physx::Cm::RadixSortBuffered::reset(this);
}

{
  *this = &unk_1F5D21400;
  physx::Cm::RadixSortBuffered::reset(this);

  JUMPOUT(0x1E6906520);
}

uint64_t physx::Cm::RadixSortBuffered::Resize(physx::Cm::RadixSortBuffered *this, unsigned int a2)
{
  if (*(this + 56) == 1)
  {
    if (*(this + 3))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    *(this + 3) = 0;
    if (*(this + 2))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    *(this + 2) = 0;
    if (a2)
    {
      v4 = 4 * a2;
      *(this + 2) = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v4, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/CmRadixSortBuffered.cpp", 76);
      v5 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v4, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/CmRadixSortBuffered.cpp", 77);
    }

    else
    {
      v5 = 0;
    }

    *(this + 3) = v5;
  }

  return 1;
}

uint64_t physx::Cm::RadixSortBuffered::Sort(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v5 = v1;
  v13 = *MEMORY[0x1E69E9840];
  if (v2)
  {
    v6 = v3;
    if (v3 >= 1)
    {
      v7 = v4;
      v8 = v2;
      v9 = *(v1 + 2) & 0x7FFFFFFF;
      if (v9 != v3)
      {
        if (v9 < v3)
        {
          physx::Cm::RadixSortBuffered::Resize(v1, v3);
        }

        *(v5 + 8) = v6 | 0x80000000;
      }

      memset(v11, 0, sizeof(v11));
      *(v5 + 32) = &v12;
      *(v5 + 40) = v11;
      physx::Cm::RadixSort::Sort(v5, v8, v6, v7);
    }
  }

  return v5;
}

physx::Cm::RadixSortBuffered *physx::Cm::RadixSortBuffered::Sort(physx::Cm::RadixSortBuffered *this, const float *a2)
{
  v2 = MEMORY[0x1EEE9AC00](this);
  v5 = v2;
  v12 = *MEMORY[0x1E69E9840];
  if (v3)
  {
    v6 = v4;
    if (v4 >= 1)
    {
      v7 = v3;
      v8 = *(v2 + 2) & 0x7FFFFFFF;
      if (v8 != v4)
      {
        if (v8 < v4)
        {
          physx::Cm::RadixSortBuffered::Resize(v2, v4);
        }

        *(v5 + 2) = v6 | 0x80000000;
      }

      memset(v10, 0, sizeof(v10));
      *(v5 + 4) = &v11;
      *(v5 + 5) = v10;
      physx::Cm::RadixSort::Sort(v5, v7, v6);
    }
  }

  return v5;
}

__n128 physx::Cm::RenderOutput::operator<<(uint64_t a1, uint64_t a2)
{
  *(a1 + 36) = *a2;
  *(a1 + 52) = *(a2 + 16);
  *(a1 + 68) = *(a2 + 32);
  result = *(a2 + 48);
  *(a1 + 84) = result;
  return result;
}

uint64_t physx::Cm::RenderOutput::operator<<(uint64_t a1, uint64_t a2)
{
  physx::PxMat44::PxMat44(v6, a2);
  v3 = v6[1];
  *(a1 + 36) = v6[0];
  *(a1 + 52) = v3;
  v4 = v6[3];
  *(a1 + 68) = v6[2];
  *(a1 + 84) = v4;
  return a1;
}

uint64_t physx::Cm::RenderOutput::operator<<(uint64_t a1, float *a2)
{
  v4 = a2[1];
  v5 = a2[2];
  v6 = ((*a2 * *(a1 + 44)) + (v4 * *(a1 + 60))) + (v5 * *(a1 + 76));
  v7 = *(a1 + 92);
  v8 = vadd_f32(vadd_f32(vadd_f32(vmul_n_f32(*(a1 + 36), *a2), vmul_n_f32(*(a1 + 52), v4)), vmul_n_f32(*(a1 + 68), v5)), *(a1 + 84));
  v9 = v6 + v7;
  *a2 = v8;
  a2[2] = v6 + v7;
  v10 = *(a1 + 32);
  v11 = v10 + 1;
  *(a1 + 32) = v10 + 1;
  v12 = *a1;
  if (*a1 > 1)
  {
    if (v12 == 2)
    {
      if (v11 < 2)
      {
        goto LABEL_38;
      }

      v35 = *(a1 + 104);
      v36 = *(a1 + 8);
      v37 = *(a1 + 12);
      v58 = __PAIR64__(v37, v36);
      v38 = *(a1 + 16);
      v59 = v38;
      v39 = *(a1 + 4);
      v60 = v39;
      v61 = v8;
      v62 = v9;
      v63 = v39;
      v40 = *(v35 + 32);
      if ((*(v35 + 36) & 0x7FFFFFFFu) <= v40)
      {
        physx::shdfnd::Array<physx::PxDebugLine,physx::shdfnd::ReflectionAllocator<physx::PxDebugLine>>::growAndPushBack(v35 + 24, &v58);
      }

      else
      {
        v41 = *(v35 + 24) + 32 * v40;
        *v41 = v36;
        *(v41 + 4) = v37;
        *(v41 + 8) = v38;
        *(v41 + 12) = v39;
        *(v41 + 16) = v8;
        *(v41 + 24) = v9;
        *(v41 + 28) = v39;
        *(v35 + 32) = v40 + 1;
      }

      goto LABEL_33;
    }

    if (v12 != 3)
    {
      if (v12 == 4 && v11 >= 3)
      {
        v13 = *(a1 + 104);
        v14 = 8;
        if (v10)
        {
          v15 = 20;
        }

        else
        {
          v15 = 8;
        }

        v16 = *(a1 + v15);
        v17 = a1 + 8;
        if (v10)
        {
          v18 = a1 + 20;
        }

        else
        {
          v18 = a1 + 8;
        }

        v19 = *(v18 + 4);
        v20 = *(v18 + 8);
        if ((v10 & 1) == 0)
        {
          v14 = 20;
          v17 = a1 + 20;
        }

        v58 = __PAIR64__(v19, v16);
        v59 = v20;
        v21 = *(a1 + 4);
        v60 = v21;
        v22 = *(a1 + v14);
        v23 = *(v17 + 4);
        v24 = *(v17 + 8);
        v61 = __PAIR64__(v23, v22);
        v62 = v24;
        v63 = v21;
        v64 = v8;
        v65 = v9;
        v25 = *(v13 + 48);
        v26 = *(v13 + 52) & 0x7FFFFFFF;
        v66 = v21;
        if (v26 <= v25)
        {
          physx::shdfnd::Array<physx::PxDebugTriangle,physx::shdfnd::ReflectionAllocator<physx::PxDebugTriangle>>::growAndPushBack(v13 + 40, &v58);
        }

        else
        {
          v27 = *(v13 + 40) + 48 * v25;
          *v27 = v16;
          *(v27 + 4) = v19;
          *(v27 + 8) = v20;
          *(v27 + 12) = v21;
          *(v27 + 16) = v22;
          *(v27 + 20) = v23;
          *(v27 + 24) = v24;
          *(v27 + 28) = v21;
          *(v27 + 32) = v8;
          *(v27 + 40) = v9;
          *(v27 + 44) = v21;
          *(v13 + 48) = v25 + 1;
        }

        goto LABEL_33;
      }

      goto LABEL_34;
    }

    if (v10 != 2)
    {
      goto LABEL_34;
    }

    v42 = *(a1 + 104);
    v43 = *(a1 + 24);
    v44 = *(a1 + 28);
    v46 = *(a1 + 16);
    v45 = *(a1 + 20);
    v58 = __PAIR64__(v43, v45);
    v59 = v44;
    v47 = *(a1 + 4);
    v60 = v47;
    v48 = *(a1 + 8);
    v49 = *(a1 + 12);
    v61 = __PAIR64__(v49, v48);
    v62 = v46;
    v63 = v47;
    v64 = v8;
    v65 = v9;
    v50 = *(v42 + 48);
    v51 = *(v42 + 52) & 0x7FFFFFFF;
    v66 = v47;
    if (v51 <= v50)
    {
      physx::shdfnd::Array<physx::PxDebugTriangle,physx::shdfnd::ReflectionAllocator<physx::PxDebugTriangle>>::growAndPushBack(v42 + 40, &v58);
    }

    else
    {
      v52 = *(v42 + 40) + 48 * v50;
      *v52 = v45;
      *(v52 + 4) = v43;
      *(v52 + 8) = v44;
      *(v52 + 12) = v47;
      *(v52 + 16) = v48;
      *(v52 + 20) = v49;
      *(v52 + 24) = v46;
      *(v52 + 28) = v47;
      *(v52 + 32) = v8;
      *(v52 + 40) = v9;
      *(v52 + 44) = v47;
      *(v42 + 48) = v50 + 1;
    }

LABEL_37:
    *(a1 + 32) = 0;
    goto LABEL_38;
  }

  if (!v12)
  {
    v53 = *(a1 + 104);
    v58 = v8;
    v59 = v6 + v7;
    v54 = *(a1 + 4);
    v60 = v54;
    v55 = *(v53 + 16);
    if ((*(v53 + 20) & 0x7FFFFFFFu) <= v55)
    {
      physx::shdfnd::Array<physx::PxDebugPoint,physx::shdfnd::ReflectionAllocator<physx::PxDebugPoint>>::growAndPushBack(v53 + 8, &v58);
    }

    else
    {
      v56 = *(v53 + 8) + 16 * v55;
      *v56 = v8;
      *(v56 + 8) = v9;
      *(v56 + 12) = v54;
      *(v53 + 16) = v55 + 1;
    }

LABEL_33:
    v11 = *(a1 + 32);
    goto LABEL_34;
  }

  if (v12 == 1 && v10 == 1)
  {
    v28 = *(a1 + 104);
    v29 = *(a1 + 8);
    v30 = *(a1 + 12);
    v58 = __PAIR64__(v30, v29);
    v31 = *(a1 + 16);
    v59 = v31;
    v32 = *(a1 + 4);
    v60 = v32;
    v61 = v8;
    v62 = v9;
    v63 = v32;
    v33 = *(v28 + 32);
    if ((*(v28 + 36) & 0x7FFFFFFFu) <= v33)
    {
      physx::shdfnd::Array<physx::PxDebugLine,physx::shdfnd::ReflectionAllocator<physx::PxDebugLine>>::growAndPushBack(v28 + 24, &v58);
    }

    else
    {
      v34 = *(v28 + 24) + 32 * v33;
      *v34 = v29;
      *(v34 + 4) = v30;
      *(v34 + 8) = v31;
      *(v34 + 12) = v32;
      *(v34 + 16) = v8;
      *(v34 + 24) = v9;
      *(v34 + 28) = v32;
      *(v28 + 32) = v33 + 1;
    }

    goto LABEL_37;
  }

LABEL_34:
  if (v11 >= 2)
  {
    *(a1 + 20) = *(a1 + 8);
    *(a1 + 28) = *(a1 + 16);
  }

LABEL_38:
  *(a1 + 8) = *a2;
  *(a1 + 16) = a2[2];
  return a1;
}

uint64_t physx::Cm::operator<<(_DWORD *a1, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    *a1 = 2;
    a1[8] = 0;
    v3 = *(a2 + 8);
    *v59 = *a2;
    *&v59[8] = v3;
    v4 = physx::Cm::RenderOutput::operator<<(a1, v59);
    *v59 = *(a2 + 12);
    *&v59[4] = *(a2 + 4);
    v5 = physx::Cm::RenderOutput::operator<<(v4, v59);
    v6 = *(a2 + 8);
    *v59 = *(a2 + 12);
    *&v59[8] = v6;
    v7 = physx::Cm::RenderOutput::operator<<(v5, v59);
    v8 = *(a2 + 16);
    v9 = *(a2 + 8);
    *v59 = *a2;
    *&v59[4] = v8;
    *&v59[8] = v9;
    v10 = physx::Cm::RenderOutput::operator<<(v7, v59);
    v11 = *(a2 + 8);
    *v59 = *a2;
    *&v59[8] = v11;
    v12 = physx::Cm::RenderOutput::operator<<(v10, v59);
    v13 = *(a2 + 20);
    *v59 = *a2;
    *&v59[8] = v13;
    v14 = physx::Cm::RenderOutput::operator<<(v12, v59);
    v15 = *(a2 + 4);
    v16 = *(a2 + 20);
    *v59 = *(a2 + 12);
    *&v59[4] = v15;
    *&v59[8] = v16;
    v17 = physx::Cm::RenderOutput::operator<<(v14, v59);
    v18 = *(a2 + 20);
    *v59 = *(a2 + 12);
    *&v59[8] = v18;
    v19 = physx::Cm::RenderOutput::operator<<(v17, v59);
    *v59 = *a2;
    *&v59[4] = *(a2 + 16);
    v20 = physx::Cm::RenderOutput::operator<<(v19, v59);
    v21 = *(a2 + 20);
    *v59 = *a2;
    *&v59[8] = v21;
    v22 = physx::Cm::RenderOutput::operator<<(v20, v59);
    *v22 = 1;
    v22[8] = 0;
    *v59 = *(a2 + 12);
    *&v59[4] = *(a2 + 4);
    v23 = physx::Cm::RenderOutput::operator<<(v22, v59);
    v24 = *(a2 + 4);
    v25 = *(a2 + 20);
    *v59 = *(a2 + 12);
    *&v59[4] = v24;
    *&v59[8] = v25;
    v26 = physx::Cm::RenderOutput::operator<<(v23, v59);
    v27 = *(a2 + 8);
    *v59 = *(a2 + 12);
    *&v59[8] = v27;
    v28 = physx::Cm::RenderOutput::operator<<(v26, v59);
    v29 = *(a2 + 20);
    *v59 = *(a2 + 12);
    *&v59[8] = v29;
    v30 = physx::Cm::RenderOutput::operator<<(v28, v59);
    v31 = *(a2 + 16);
    v32 = *(a2 + 8);
    *v59 = *a2;
    *&v59[4] = v31;
    *&v59[8] = v32;
  }

  else
  {
    *a1 = 4;
    a1[8] = 0;
    v33 = *(a2 + 8);
    *v59 = *a2;
    *&v59[8] = v33;
    v34 = physx::Cm::RenderOutput::operator<<(a1, v59);
    v35 = *(a2 + 16);
    v36 = *(a2 + 8);
    *v59 = *a2;
    *&v59[4] = v35;
    *&v59[8] = v36;
    v37 = physx::Cm::RenderOutput::operator<<(v34, v59);
    *v59 = *(a2 + 12);
    *&v59[4] = *(a2 + 4);
    v38 = physx::Cm::RenderOutput::operator<<(v37, v59);
    v39 = *(a2 + 8);
    *v59 = *(a2 + 12);
    *&v59[8] = v39;
    v40 = physx::Cm::RenderOutput::operator<<(v38, v59);
    v41 = *(a2 + 20);
    *v59 = *(a2 + 12);
    *&v59[8] = v41;
    v42 = physx::Cm::RenderOutput::operator<<(v40, v59);
    v43 = *(a2 + 16);
    v44 = *(a2 + 8);
    *v59 = *a2;
    *&v59[4] = v43;
    *&v59[8] = v44;
    v45 = physx::Cm::RenderOutput::operator<<(v42, v59);
    *v59 = *a2;
    *&v59[4] = *(a2 + 16);
    v46 = physx::Cm::RenderOutput::operator<<(v45, v59);
    v47 = *(a2 + 8);
    *v59 = *a2;
    *&v59[8] = v47;
    v48 = physx::Cm::RenderOutput::operator<<(v46, v59);
    v49 = *(a2 + 20);
    *v59 = *a2;
    *&v59[8] = v49;
    v50 = physx::Cm::RenderOutput::operator<<(v48, v59);
    *v59 = *(a2 + 12);
    *&v59[4] = *(a2 + 4);
    v51 = physx::Cm::RenderOutput::operator<<(v50, v59);
    v52 = *(a2 + 4);
    v53 = *(a2 + 20);
    *v59 = *(a2 + 12);
    *&v59[4] = v52;
    *&v59[8] = v53;
    v54 = physx::Cm::RenderOutput::operator<<(v51, v59);
    v55 = *(a2 + 20);
    *v59 = *(a2 + 12);
    *&v59[8] = v55;
    v30 = physx::Cm::RenderOutput::operator<<(v54, v59);
    v56 = *(a2 + 20);
    *v59 = *a2;
    *&v59[8] = v56;
  }

  v57 = physx::Cm::RenderOutput::operator<<(v30, v59);
  *v59 = *a2;
  *&v59[4] = *(a2 + 16);
  return physx::Cm::RenderOutput::operator<<(v57, v59);
}

{
  v3 = *a2;
  v4 = sqrtf(((*(a2 + 4) * *(a2 + 4)) + (v3 * v3)) + (*(a2 + 8) * *(a2 + 8)));
  a1[1] = *(a2 + 12);
  *(&v12 + 1) = v3 + 0.0;
  v11 = 0;
  LODWORD(v12) = 0;
  v5 = v4 * 0.15;
  v13 = 0;
  v14 = v4 * 0.15;
  v6 = physx::Cm::operator<<(a1, &v11);
  v6[1] = *(a2 + 16);
  *&v7 = *(a2 + 4) + 0.0;
  v11 = 0;
  v12 = 0;
  v13 = v7;
  v14 = v5;
  v8 = physx::Cm::operator<<(v6, &v11);
  v8[1] = *(a2 + 20);
  v9 = *(a2 + 8) + 0.0;
  v11 = 0;
  v12 = 0;
  LODWORD(v13) = 0;
  *(&v13 + 1) = v9;
  v14 = v5;
  return physx::Cm::operator<<(v8, &v11);
}

{
  v4 = *a2;
  *a1 = 2;
  a1[8] = 0;
  if (v4)
  {
    v5 = 0;
    v6 = 6.2832 / v4;
    v7 = 0.0;
    do
    {
      v8 = *(a2 + 4);
      v9 = __sincosf_stret(v7);
      v12 = v9.__sinval * v8;
      v13 = v9.__cosval * v8;
      v14 = 0;
      physx::Cm::RenderOutput::operator<<(a1, &v12);
      ++v5;
      v7 = v6 + v7;
    }

    while (v5 < *a2);
  }

  v10 = *(a2 + 4);
  v12 = 0.0;
  v13 = v10;
  v14 = 0;
  return physx::Cm::RenderOutput::operator<<(a1, &v12);
}

{
  v5 = *(a2 + 8);
  v4 = *(a2 + 12);
  v6 = *a2;
  *a1 = 2;
  a1[8] = 0;
  if (v6)
  {
    v7 = 0;
    v8 = (v4 - v5) / v6;
    do
    {
      v9 = *(a2 + 4);
      v10 = __sincosf_stret(v5);
      v14 = v10.__sinval * v9;
      v15 = v10.__cosval * v9;
      v16 = 0;
      physx::Cm::RenderOutput::operator<<(a1, &v14);
      ++v7;
      v5 = v8 + v5;
    }

    while (v7 < *a2);
    v4 = *(a2 + 12);
  }

  v11 = *(a2 + 4);
  v12 = __sincosf_stret(v4);
  v14 = v12.__sinval * v11;
  v15 = v12.__cosval * v11;
  v16 = 0;
  return physx::Cm::RenderOutput::operator<<(a1, &v14);
}

uint64_t physx::Cm::operator<<(_DWORD *a1, float *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = v6 - *a2;
  v9 = a2[4];
  v8 = a2[5];
  v10 = v9 - v4;
  v11 = v8 - v5;
  v12 = sqrtf(((v10 * v10) + (v7 * v7)) + (v11 * v11));
  if (v12 > 0.0)
  {
    v13 = 1.0 / v12;
    v7 = v7 * v13;
    v10 = v10 * v13;
    v11 = v11 * v13;
  }

  v14 = fabsf(v7);
  v15 = v14 < 0.70711;
  v16 = 0.0;
  if (v14 >= 0.70711)
  {
    v17 = -v10;
  }

  else
  {
    v17 = 0.0;
  }

  if (v15)
  {
    v18 = -v11;
  }

  else
  {
    v18 = v7;
  }

  if (v15)
  {
    v16 = v10;
  }

  v19 = sqrtf(((v18 * v18) + (v17 * v17)) + (v16 * v16));
  if (v19 > 0.0)
  {
    v20 = 1.0 / v19;
    v17 = v17 * v20;
    v18 = v18 * v20;
    v16 = v16 * v20;
  }

  v21 = (v11 * v17) - (v7 * v16);
  v22 = (v17 * -v10) + (v7 * v18);
  v23 = a2[6];
  v24 = v17 * (v23 * 0.25);
  v25 = v18 * (v23 * 0.25);
  v26 = v16 * (v23 * 0.25);
  v27 = (v23 * 0.25) * 1.7321;
  v28 = ((v18 * -v11) + (v10 * v16)) * v27;
  v46 = v22 * v27;
  v47 = v21 * v27;
  v29 = v6 - (v7 * v23);
  v30 = v9 - (v10 * v23);
  *a1 = 1;
  a1[8] = 0;
  v31 = v8 - (v11 * v23);
  v48 = __PAIR64__(LODWORD(v4), LODWORD(v3));
  v49 = v5;
  v32 = physx::Cm::RenderOutput::operator<<(a1, &v48);
  v48 = *(a2 + 3);
  v49 = a2[5];
  v33 = physx::Cm::RenderOutput::operator<<(v32, &v48);
  *v33 = 4;
  v33[8] = 0;
  v48 = *(a2 + 3);
  v49 = a2[5];
  v34 = physx::Cm::RenderOutput::operator<<(v33, &v48);
  *&v44 = v25 + (v30 + v25);
  *&v45 = v24 + (v29 + v24);
  v35 = v26 + (v31 + v26);
  *&v48 = *&v45;
  *(&v48 + 1) = *&v44;
  v49 = v35;
  v36 = physx::Cm::RenderOutput::operator<<(v34, &v48);
  v37 = v29 - v24;
  v38 = v30 - v25;
  v39 = v31 - v26;
  *&v48 = v37 - v28;
  *(&v48 + 1) = v38 - v47;
  v49 = v39 - v46;
  v40 = physx::Cm::RenderOutput::operator<<(v36, &v48);
  *&v48 = v37 + v28;
  *(&v48 + 1) = v38 + v47;
  v49 = v39 + v46;
  v41 = physx::Cm::RenderOutput::operator<<(v40, &v48);
  v48 = *(a2 + 3);
  v49 = a2[5];
  v42 = physx::Cm::RenderOutput::operator<<(v41, &v48);
  v48 = __PAIR64__(v44, v45);
  v49 = v35;
  return physx::Cm::RenderOutput::operator<<(v42, &v48);
}

uint64_t physx::Cm::RenderOutput::outputCapsule(uint64_t a1, float32x2_t *a2, float a3, float a4)
{
  v6 = a2[1].f32[0];
  v7 = a2[1].i32[1];
  v9 = a2[5].f32[0];
  v8 = a2[5].f32[1];
  v122 = 100;
  v123 = a3;
  v124 = 0x40C90FDB40490FDBLL;
  v10 = -v9;
  v11 = -v8;
  v109 = a2[3];
  v116 = vadd_f32(COERCE_UNSIGNED_INT(((0.0 * v109.f32[0]) - (v6 * a4)) + (v9 * 0.0)), a2[7]);
  *(a1 + 44) = v6;
  *(a1 + 48) = v7;
  *(a1 + 60) = v109;
  *(a1 + 76) = v9;
  *(a1 + 80) = v8;
  *(a1 + 92) = v116;
  v12 = a2[2];
  v13 = *a2;
  v14 = a2[4];
  v15 = -v14.f32[0];
  v16 = -v14.f32[1];
  v113 = vadd_f32(vadd_f32(vsub_f32(vmul_f32(v12, 0), vmul_n_f32(*a2, a4)), vmul_f32(v14, 0)), a2[6]);
  *(a1 + 36) = *a2;
  *(a1 + 52) = v12;
  *(a1 + 68) = v14;
  *(a1 + 84) = v113;
  v17 = physx::Cm::operator<<(a1, &v122);
  *(v17 + 36) = v13;
  *(v17 + 44) = v6;
  *(v17 + 48) = v7;
  *(v17 + 52) = v15;
  *(v17 + 56) = v16;
  *(v17 + 60) = v10;
  *(v17 + 64) = v11;
  *(v17 + 68) = v12;
  *(v17 + 76) = v109;
  *&v18 = v113;
  *(&v18 + 1) = v116;
  *(v17 + 84) = v18;
  v122 = 100;
  v123 = a3;
  v124 = 0x40C90FDB40490FDBLL;
  v19 = physx::Cm::operator<<(v17, &v122);
  *(v19 + 36) = vneg_f32(v12);
  *(v19 + 44) = vneg_f32(v109);
  *(v19 + 52) = v15;
  *(v19 + 56) = v16;
  *(v19 + 60) = v10;
  *(v19 + 64) = v11;
  *(v19 + 68) = v13;
  *(v19 + 76) = v6;
  *(v19 + 80) = v7;
  *(v19 + 84) = v113;
  *(v19 + 92) = v116;
  v122 = 100;
  v123 = a3;
  v20 = physx::Cm::operator<<(v19, &v122);
  v21 = a2[1].f32[0];
  v22 = a2[1].i32[1];
  v23 = a2[5].f32[0];
  v24 = a2[5].f32[1];
  v122 = 100;
  v123 = a3;
  v124 = 0x40490FDB00000000;
  v25 = -v23;
  v26 = -v24;
  v110 = a2[3];
  v117 = vadd_f32(COERCE_UNSIGNED_INT(((v21 * a4) + (0.0 * v110.f32[0])) + (v23 * 0.0)), a2[7]);
  *(v20 + 44) = v21;
  *(v20 + 48) = v22;
  *(v20 + 60) = v110;
  *(v20 + 76) = v23;
  *(v20 + 80) = v24;
  *(v20 + 92) = v117;
  v27 = a2[2];
  v28 = *a2;
  v29 = a2[4];
  v12.f32[0] = -v29.f32[0];
  v30 = -v29.f32[1];
  v114 = vadd_f32(vadd_f32(vadd_f32(vmul_n_f32(*a2, a4), vmul_f32(v27, 0)), vmul_f32(v29, 0)), a2[6]);
  *(v20 + 36) = *a2;
  *(v20 + 52) = v27;
  *(v20 + 68) = v29;
  *(v20 + 84) = v114;
  v31 = physx::Cm::operator<<(v20, &v122);
  *(v31 + 36) = v28;
  *(v31 + 44) = v21;
  *(v31 + 48) = v22;
  *(v31 + 52) = v12.i32[0];
  *(v31 + 56) = v30;
  *(v31 + 60) = v25;
  *(v31 + 64) = v26;
  *(v31 + 68) = v27;
  *(v31 + 76) = v110;
  *&v32 = v114;
  *(&v32 + 1) = v117;
  *(v31 + 84) = v32;
  v122 = 100;
  v123 = a3;
  v124 = 0x40490FDB00000000;
  v33 = physx::Cm::operator<<(v31, &v122);
  *(v33 + 36) = vneg_f32(v27);
  *(v33 + 44) = vneg_f32(v110);
  *(v33 + 52) = v12.i32[0];
  *(v33 + 56) = v30;
  *(v33 + 60) = v25;
  *(v33 + 64) = v26;
  *(v33 + 68) = v28;
  *(v33 + 76) = v21;
  *(v33 + 80) = v22;
  *(v33 + 84) = v114;
  *(v33 + 92) = v117;
  v122 = 100;
  v123 = a3;
  v34 = physx::Cm::operator<<(v33, &v122);
  physx::Cm::RenderOutput::operator<<(v34, a2);
  v36 = a4;
  v37 = a2->f32[0];
  v38 = a2->f32[1];
  v39 = a2[1].f32[0];
  v40 = a2[2].f32[0];
  v41 = a2[2].f32[1];
  v42 = a2[3].f32[0];
  v43 = a2->f32[0] * a4;
  v44 = v38 * a4;
  v45 = v39 * a4;
  v46 = a2[4].f32[0];
  v47 = a2[4].f32[1];
  v48 = v46 * 0.0;
  v49 = v47 * 0.0;
  v50 = a2[5].f32[0];
  v51 = v50 * 0.0;
  v52 = a2[6].f32[0];
  v53 = a2[6].f32[1];
  v54 = a2[7].f32[0];
  v55 = (((v40 * a3) - v43) + (v46 * 0.0)) + v52;
  v56 = (((v41 * a3) - (v38 * a4)) + (v47 * 0.0)) + v53;
  v57 = (((v42 * a3) - (v39 * a4)) + (v50 * 0.0)) + v54;
  v58 = ((v43 + (v40 * a3)) + (v46 * 0.0)) + v52;
  v59 = (((v38 * a4) + (v41 * a3)) + (v47 * 0.0)) + v53;
  v60 = (((v39 * a4) + (v42 * a3)) + (v50 * 0.0)) + v54;
  v61 = *(v35 + 104);
  v62 = *(v61 + 32);
  v63 = *(v61 + 36) & 0x7FFFFFFF;
  v64 = v62 + 1;
  if (v62 + 1 <= v63)
  {
    v68 = *(v35 + 104);
  }

  else
  {
    if (v63)
    {
      v65 = 2 * *(v61 + 36);
    }

    else
    {
      v65 = 2;
    }

    if (v64 <= v65)
    {
      v66 = v65;
    }

    else
    {
      v66 = v62 + 1;
    }

    v67 = (((v39 * a4) + (v42 * a3)) + (v50 * 0.0)) + v54;
    physx::shdfnd::Array<physx::PxDebugLine,physx::shdfnd::ReflectionAllocator<physx::PxDebugLine>>::recreate(v61 + 24, v66);
    v60 = v67;
    v36 = a4;
    v62 = *(v61 + 32);
    v37 = a2->f32[0];
    v38 = a2->f32[1];
    v39 = a2[1].f32[0];
    v40 = a2[2].f32[0];
    v41 = a2[2].f32[1];
    v42 = a2[3].f32[0];
    v46 = a2[4].f32[0];
    v47 = a2[4].f32[1];
    v50 = a2[5].f32[0];
    v52 = a2[6].f32[0];
    v53 = a2[6].f32[1];
    v54 = a2[7].f32[0];
    v68 = *(a1 + 104);
    v43 = a2->f32[0] * a4;
    v44 = v38 * a4;
    v45 = v39 * a4;
    v48 = v46 * 0.0;
    v49 = v47 * 0.0;
    v51 = v50 * 0.0;
    v63 = *(v68 + 36) & 0x7FFFFFFF;
  }

  v69 = *(v61 + 24) + 32 * v62;
  *(v61 + 32) = v64;
  *v69 = v55;
  *(v69 + 4) = v56;
  *(v69 + 8) = v57;
  *(v69 + 16) = v58;
  *(v69 + 20) = v59;
  *(v69 + 24) = v60;
  v70 = *(a1 + 4);
  *(v69 + 28) = v70;
  *(v69 + 12) = v70;
  v71 = v52 + (v48 + (-(a3 * v40) - v43));
  v72 = v53 + (v49 + (-(a3 * v41) - v44));
  v73 = v54 + (v51 + (-(a3 * v42) - v45));
  v74 = v52 + (v48 + (v43 - (a3 * v40)));
  v75 = v53 + (v49 + (v44 - (a3 * v41)));
  v76 = v54 + (v51 + (v45 - (a3 * v42)));
  v77 = *(v68 + 32);
  v78 = v77 + 1;
  if (v77 + 1 <= v63)
  {
    v81 = v68;
  }

  else
  {
    if (v63)
    {
      v79 = 2 * v63;
    }

    else
    {
      v79 = 2;
    }

    if (v78 <= v79)
    {
      v80 = v79;
    }

    else
    {
      v80 = v77 + 1;
    }

    physx::shdfnd::Array<physx::PxDebugLine,physx::shdfnd::ReflectionAllocator<physx::PxDebugLine>>::recreate(v68 + 24, v80);
    v36 = a4;
    v77 = *(v68 + 32);
    v70 = *(a1 + 4);
    v37 = a2->f32[0];
    v38 = a2->f32[1];
    v39 = a2[1].f32[0];
    v40 = a2[2].f32[0];
    v41 = a2[2].f32[1];
    v42 = a2[3].f32[0];
    v46 = a2[4].f32[0];
    v47 = a2[4].f32[1];
    v50 = a2[5].f32[0];
    v52 = a2[6].f32[0];
    v53 = a2[6].f32[1];
    v54 = a2[7].f32[0];
    v81 = *(a1 + 104);
    v43 = a2->f32[0] * a4;
    v44 = v38 * a4;
    v45 = v39 * a4;
    v63 = *(v81 + 36) & 0x7FFFFFFF;
  }

  v82 = *(v68 + 24) + 32 * v77;
  *(v68 + 32) = v78;
  *v82 = v71;
  *(v82 + 4) = v72;
  *(v82 + 8) = v73;
  *(v82 + 16) = v74;
  *(v82 + 20) = v75;
  *(v82 + 24) = v76;
  *(v82 + 28) = v70;
  *(v82 + 12) = v70;
  v83 = v52 + ((v46 * a3) + ((v40 * 0.0) - v43));
  v84 = v53 + ((v47 * a3) + ((v41 * 0.0) - v44));
  v85 = v54 + ((v50 * a3) + ((v42 * 0.0) - v45));
  v86 = v52 + ((v46 * a3) + (v43 + (v40 * 0.0)));
  v87 = v53 + ((v47 * a3) + (v44 + (v41 * 0.0)));
  v88 = v54 + ((v50 * a3) + (v45 + (v42 * 0.0)));
  v89 = *(v81 + 32);
  v90 = v89 + 1;
  if (v89 + 1 <= v63)
  {
    v93 = v81;
  }

  else
  {
    if (v63)
    {
      v91 = 2 * v63;
    }

    else
    {
      v91 = 2;
    }

    if (v90 <= v91)
    {
      v92 = v91;
    }

    else
    {
      v92 = v89 + 1;
    }

    physx::shdfnd::Array<physx::PxDebugLine,physx::shdfnd::ReflectionAllocator<physx::PxDebugLine>>::recreate(v81 + 24, v92);
    v36 = a4;
    v89 = *(v81 + 32);
    v70 = *(a1 + 4);
    v37 = a2->f32[0];
    v38 = a2->f32[1];
    v39 = a2[1].f32[0];
    v40 = a2[2].f32[0];
    v41 = a2[2].f32[1];
    v42 = a2[3].f32[0];
    v46 = a2[4].f32[0];
    v47 = a2[4].f32[1];
    v50 = a2[5].f32[0];
    v52 = a2[6].f32[0];
    v53 = a2[6].f32[1];
    v54 = a2[7].f32[0];
    v93 = *(a1 + 104);
    v63 = *(v93 + 36) & 0x7FFFFFFF;
  }

  v94 = -a3;
  v95 = *(v81 + 24) + 32 * v89;
  *(v81 + 32) = v90;
  *v95 = v83;
  *(v95 + 4) = v84;
  *(v95 + 8) = v85;
  *(v95 + 16) = v86;
  *(v95 + 20) = v87;
  *(v95 + 24) = v88;
  *(v95 + 28) = v70;
  *(v95 + 12) = v70;
  v96 = *(v93 + 32);
  v97 = v96 + 1;
  if (v96 + 1 > v63)
  {
    if (v63)
    {
      v98 = 2 * v63;
    }

    else
    {
      v98 = 2;
    }

    if (v97 <= v98)
    {
      v99 = v98;
    }

    else
    {
      v99 = v96 + 1;
    }

    v100 = v37;
    v112 = v38;
    v101 = v40;
    v102 = v39;
    v111 = v50;
    v103 = v41;
    v118 = v46;
    v104 = v42;
    v120 = v54;
    v105 = v52;
    v115 = v47;
    v106 = v53;
    physx::shdfnd::Array<physx::PxDebugLine,physx::shdfnd::ReflectionAllocator<physx::PxDebugLine>>::recreate(v93 + 24, v99);
    v53 = v106;
    v47 = v115;
    v52 = v105;
    v54 = v120;
    v42 = v104;
    v46 = v118;
    v41 = v103;
    v50 = v111;
    v39 = v102;
    v40 = v101;
    v38 = v112;
    v37 = v100;
    v36 = a4;
    v96 = *(v93 + 32);
    v70 = *(a1 + 4);
  }

  v107 = *(v93 + 24) + 32 * v96;
  *(v93 + 32) = v97;
  *v107 = v52 + ((v46 * v94) + ((v40 * 0.0) - (v37 * v36)));
  *(v107 + 4) = v53 + ((v47 * v94) + ((v41 * 0.0) - (v38 * v36)));
  *(v107 + 8) = v54 + ((v50 * v94) + ((v42 * 0.0) - (v39 * v36)));
  *(v107 + 16) = v52 + ((v46 * v94) + ((v40 * 0.0) + (v37 * v36)));
  *(v107 + 20) = v53 + ((v47 * v94) + ((v41 * 0.0) + (v38 * v36)));
  *(v107 + 24) = v54 + ((v50 * v94) + ((v42 * 0.0) + (v39 * v36)));
  *(v107 + 28) = v70;
  *(v107 + 12) = v70;
  return a1;
}

uint64_t physx::Cm::visualizeJointFrames(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  if (a4 != 0.0)
  {
    v18 = v7;
    v19 = v6;
    v20 = v4;
    v21 = v5;
    v10 = physx::Cm::RenderOutput::operator<<(result, a2);
    v13 = a4 * 1.5;
    v14 = a4 * 1.5;
    v15 = a4 * 1.5;
    v16 = 0x8800880088880000;
    v17 = -2013265784;
    v11 = physx::Cm::operator<<(v10, &v13);
    v12 = physx::Cm::RenderOutput::operator<<(v11, a3);
    v13 = a4;
    v14 = a4;
    v15 = a4;
    v16 = 0xFF00FF00FFFF0000;
    v17 = -16776961;
    return physx::Cm::operator<<(v12, &v13);
  }

  return result;
}

uint64_t physx::Cm::visualizeLinearLimit(uint64_t result, uint64_t a2, float a3, float a4, double a5, double a6, double a7, int8x16_t a8, uint64_t a9, int a10)
{
  if (a3 != 0.0)
  {
    v42 = v15;
    v43 = v14;
    v44 = v13;
    v45 = v12;
    v46 = v10;
    v47 = v11;
    v18 = *a2;
    v19 = *(a2 + 4);
    a8.i32[0] = *(a2 + 8);
    v20 = *(a2 + 12);
    v21 = -v19;
    v22 = *(a2 + 16) + ((((v20 * (v20 + v20)) + -1.0) + (v18 * (v18 + v18))) * a4);
    v23 = *(a2 + 20) + ((((v18 + v18) * v19) + (*a8.i32 * (v20 + v20))) * a4);
    v24 = ((((v18 + v18) * *a8.i32) - (v19 * (v20 + v20))) * a4) + *(a2 + 24);
    a8.i32[1] = *a2;
    *&a8.i32[2] = v19;
    v25 = vextq_s8(vextq_s8(a8, a8, 0xCuLL), a8, 8uLL);
    a8.i32[3] = *a2;
    v26 = vextq_s8(vextq_s8(v25, v25, 0xCuLL), v25, 8uLL);
    v25.f32[3] = v21;
    v26.f32[3] = -*a8.i32;
    v27 = vmlaq_f32(vmlaq_f32(vmlaq_n_f32(vmulq_f32(a8, xmmword_1E3116090), xmmword_1E31160A0, v20), xmmword_1E31160B0, v25), xmmword_1E30714A0, v26);
    v38 = vzip2q_s32(vzip1q_s32(v27, vextq_s8(v27, v27, 0xCuLL)), v27);
    v39 = v22;
    v40 = v23;
    v41 = v24;
    if (a10)
    {
      v28 = -65536;
    }

    else
    {
      v28 = -8355712;
    }

    *(result + 4) = v28;
    v35 = xmmword_1E30474D0;
    v36 = 0;
    v37 = 0.0;
    v29 = physx::Cm::RenderOutput::operator<<(result, &v35);
    v31 = *(a2 + 20);
    v32 = *(a2 + 24);
    LODWORD(v35) = *(a2 + 16);
    v30 = *&v35;
    *(&v35 + 4) = __PAIR64__(LODWORD(v32), LODWORD(v31));
    *(&v35 + 3) = v30 + (v22 - v30);
    *&v36 = v31 + (v23 - v31);
    *(&v36 + 1) = v32 + (v24 - v32);
    v37 = sqrtf((((v23 - v31) * (v23 - v31)) + ((v22 - v30) * (v22 - v30))) + ((v24 - v32) * (v24 - v32))) * 0.15;
    v33 = physx::Cm::operator<<(v29, &v35);
    v34 = physx::Cm::RenderOutput::operator<<(v33, &v38);
    LODWORD(v35) = 20;
    *(&v35 + 1) = a3 * 0.3;
    return physx::Cm::operator<<(v34, &v35);
  }

  return result;
}

uint64_t physx::Cm::visualizeAngularLimit(uint64_t result, uint64_t a2, int a3, float a4, float a5, float a6)
{
  if (a4 != 0.0)
  {
    v29 = v13;
    v30 = v12;
    v31 = v11;
    v32 = v10;
    v33 = v9;
    v34 = v8;
    v35 = v6;
    v36 = v7;
    v18 = result;
    v19 = physx::Cm::RenderOutput::operator<<(result, a2);
    if (a3)
    {
      v20 = -65536;
    }

    else
    {
      v20 = -8355712;
    }

    *v19 = 1;
    v19[1] = v20;
    v19[8] = 0;
    v27 = 0;
    v28 = 0.0;
    physx::Cm::RenderOutput::operator<<(v19, &v27);
    v21 = __sincosf_stret(a5);
    *&v27 = a4 * 0.0;
    *(&v27 + 1) = v21.__cosval * a4;
    v28 = v21.__sinval * a4;
    v22 = physx::Cm::RenderOutput::operator<<(v18, &v27);
    v27 = 0;
    v28 = 0.0;
    physx::Cm::RenderOutput::operator<<(v22, &v27);
    v23 = __sincosf_stret(a6);
    *&v27 = a4 * 0.0;
    *(&v27 + 1) = v23.__cosval * a4;
    v28 = v23.__sinval * a4;
    physx::Cm::RenderOutput::operator<<(v18, &v27);
    *v18 = 2;
    v18[8] = 0;
    v24 = 21;
    v25 = (a6 - a5) / 20.0;
    do
    {
      v26 = __sincosf_stret(a5);
      *&v27 = a4 * 0.0;
      *(&v27 + 1) = v26.__cosval * a4;
      v28 = v26.__sinval * a4;
      result = physx::Cm::RenderOutput::operator<<(v18, &v27);
      a5 = v25 + a5;
      --v24;
    }

    while (v24);
  }

  return result;
}

uint64_t physx::Cm::visualizeLimitCone(uint64_t result, uint64_t a2, int a3, float a4, float a5, float a6)
{
  if (a4 != 0.0)
  {
    v48 = v15;
    v49 = v14;
    v50 = v13;
    v51 = v12;
    v52 = v11;
    v53 = v10;
    v54 = v9;
    v55 = v8;
    v56 = v6;
    v57 = v7;
    v20 = result;
    v21 = physx::Cm::RenderOutput::operator<<(result, a2);
    v22 = 0;
    if (a3)
    {
      v23 = -65536;
    }

    else
    {
      v23 = -8355712;
    }

    *v21 = 1;
    v21[1] = v23;
    v21[8] = 0;
    v45 = -a6;
    v24 = 0.0;
    v25 = 0;
    v26 = 0;
    do
    {
      v27 = __sincosf_stret(v22 * 0.19635);
      v28 = v27.__sinval * v45;
      v29 = v27.__cosval * a5;
      v30 = (v28 * v28) + (v29 * v29);
      v31 = 1.0 - v30;
      v32 = 1.0 / (v30 + 1.0);
      v33 = v32 * 0.0;
      v34 = (v28 + v28) * v32;
      v35 = (v29 + v29) * v32;
      v36 = v31 * v32;
      v37 = (v36 * v36) + -0.5;
      v38 = ((v34 * 0.0) + (v33 * 2.0)) + (v35 * 0.0);
      *&v39 = (((v36 * ((v35 * -0.0) + (v34 * 0.0))) + (v37 * 2.0)) + (v33 * v38)) * a4;
      *&v40 = (((v36 * ((v33 * -0.0) + (v35 * 2.0))) + (v37 * 0.0)) + (v34 * v38)) * a4;
      v41 = (((v36 * ((v34 * -2.0) + (v33 * 0.0))) + (v37 * 0.0)) + (v35 * v38)) * a4;
      v46 = __PAIR64__(v25, v26);
      v47 = v24;
      v42 = physx::Cm::RenderOutput::operator<<(v20, &v46);
      v46 = __PAIR64__(v40, v39);
      v47 = v41;
      v43 = physx::Cm::RenderOutput::operator<<(v42, &v46);
      v46 = 0;
      v47 = 0.0;
      v44 = physx::Cm::RenderOutput::operator<<(v43, &v46);
      v46 = __PAIR64__(v40, v39);
      v47 = v41;
      result = physx::Cm::RenderOutput::operator<<(v44, &v46);
      ++v22;
      v24 = v41;
      v25 = v40;
      v26 = v39;
    }

    while (v22 != 33);
  }

  return result;
}

uint64_t physx::Cm::visualizeDoubleCone(uint64_t result, uint64_t a2, int a3, float a4, float a5)
{
  if (a4 != 0.0)
  {
    v34 = v14;
    v35 = v13;
    v36 = v12;
    v37 = v11;
    v38 = v10;
    v39 = v9;
    v40 = v8;
    v41 = v7;
    v42 = v5;
    v43 = v6;
    v18 = result;
    v19 = physx::Cm::RenderOutput::operator<<(result, a2);
    if (a3)
    {
      v20 = -65536;
    }

    else
    {
      v20 = -8355712;
    }

    *(v19 + 4) = v20;
    v21 = tanf(a5);
    v22 = 0;
    *v18 = 2;
    v18[8] = 0;
    v23 = v21 * a4;
    do
    {
      v24 = __sincosf_stret(v22 * 0.19635);
      *&v32 = v21 * a4;
      *(&v32 + 1) = v24.__cosval * a4;
      v33 = v24.__sinval * a4;
      physx::Cm::RenderOutput::operator<<(v18, &v32);
      ++v22;
    }

    while (v22 != 33);
    v25 = 0;
    *v18 = 2;
    v18[8] = 0;
    v26 = -(v21 * a4);
    do
    {
      v27 = __sincosf_stret(v25 * 0.19635);
      *&v32 = v26;
      *(&v32 + 1) = v27.__cosval * a4;
      v33 = v27.__sinval * a4;
      physx::Cm::RenderOutput::operator<<(v18, &v32);
      ++v25;
    }

    while (v25 != 33);
    v28 = 0;
    *v18 = 1;
    v18[8] = 0;
    do
    {
      v32 = 0;
      v33 = 0.0;
      physx::Cm::RenderOutput::operator<<(v18, &v32);
      v29 = __sincosf_stret(v28 * 0.19635);
      *&v32 = v26;
      *(&v32 + 1) = v29.__cosval * a4;
      v33 = v29.__sinval * a4;
      v30 = physx::Cm::RenderOutput::operator<<(v18, &v32);
      v32 = 0;
      v33 = 0.0;
      v31 = physx::Cm::RenderOutput::operator<<(v30, &v32);
      v32 = __PAIR64__(v29.__cosval * a4, LODWORD(v23));
      v33 = v29.__sinval * a4;
      result = physx::Cm::RenderOutput::operator<<(v31, &v32);
      ++v28;
    }

    while (v28 != 32);
  }

  return result;
}

BOOL physx::Gu::contactCapsuleMesh(uint64_t a1, uint64_t a2, float *a3, float *a4, float *a5, uint64_t a6, uint64_t a7)
{
  v12 = *a3;
  v13 = a3[1];
  v15 = a3[2];
  v14 = a3[3];
  v16 = v14 + v14;
  v17 = ((v14 * (v14 + v14)) + -1.0) + (v12 * (v12 + v12));
  v18 = ((v12 + v12) * v13) + (v15 * v16);
  v19 = ((v12 + v12) * v15) - (v13 * v16);
  v20 = *(a1 + 4);
  v21 = *(a1 + 8);
  v22 = a4[4] - a3[4];
  v23 = a4[5] - a3[5];
  v24 = a4[6] - a3[6];
  v25 = ((v17 * v21) - v22) + ((v17 * v21) - v22);
  v26 = ((v21 * v18) - v23) + ((v21 * v18) - v23);
  v27 = ((v19 * v21) - v24) + ((v19 * v21) - v24);
  v29 = a4[2];
  v28 = a4[3];
  v30 = (v28 * v28) + -0.5;
  v31 = a4[1];
  v32 = (v26 * v31) + (*a4 * v25);
  v33 = (v25 * v30) - (((v31 * v27) - (v29 * v26)) * v28);
  v34 = (v26 * v30) - (((v29 * v25) - (*a4 * v27)) * v28);
  v35 = (*a4 * v26) - (v31 * v25);
  v36 = *a5;
  v37 = v32 + (v29 * v27);
  v38 = ((v27 * v30) - (v35 * v28)) + (v29 * v37);
  v39 = -(v21 * v18);
  v40 = -(v19 * v21);
  v41 = (-(v17 * v21) - v22) + (-(v17 * v21) - v22);
  v42 = (v39 - v23) + (v39 - v23);
  v43 = (v40 - v24) + (v40 - v24);
  v44 = ((v42 * v31) + (*a4 * v41)) + (v29 * v43);
  v45 = ((v41 * v30) - (((v31 * v43) - (v29 * v42)) * v28)) + (*a4 * v44);
  v46 = ((v42 * v30) - (((v29 * v41) - (*a4 * v43)) * v28)) + (v31 * v44);
  v47 = -(((*a4 * v42) - (v31 * v41)) * v28);
  *&v68 = v33 + (*a4 * v37);
  *(&v68 + 1) = v34 + (v31 * v37);
  v69 = v38;
  v70 = v45;
  v71 = v46;
  v72 = (v47 + (v43 * v30)) + (v29 * v44);
  v48 = *(a2 + 48);
  v58 = v68;
  v59 = LODWORD(v38);
  v60 = v45;
  v49 = v20 + v36;
  *v61 = v46;
  *&v61[1] = v72;
  *&v61[2] = v20 + v36;
  physx::Gu::Box::create(v65, &v58);
  if (*(a2 + 4) == 1.0 && *(a2 + 8) == 1.0 && *(a2 + 12) == 1.0)
  {
    v51 = *a5;
    v52 = *(a1 + 4);
    v59 = 2;
    v58 = &unk_1F5D21448;
    *&v50 = v49;
    v62 = v48;
  }

  else
  {
    physx::Cm::FastVertex2ShapeScaling::init(v64, (a2 + 4), (a2 + 16));
    v54 = *a5;
    v55 = *(a1 + 4);
    v59 = 2;
    *&v56 = v49;
    v62 = v48;
    v63 = v64;
    v58 = &unk_1F5D21498;
    v53.n128_f32[0] = physx::Cm::FastVertex2ShapeScaling::transformQueryBounds(v64, &v66, &v67, v65);
  }

  (physx::Gu::gMidphaseBoxCBOverlapTable[*(v48 + 8) - 3])(v48, v65, &v58, 1, 1, v53);
  return *(a7 + 4096) != 0;
}

float physx::Cm::FastVertex2ShapeScaling::transformQueryBounds(uint64_t a1, float *a2, float *a3, float *a4)
{
  v5 = *a3 * *a4;
  v6 = *a3 * a4[1];
  v7 = a4[3];
  v8 = *a3 * a4[2];
  v9 = ((v5 * *(a1 + 44)) + (v6 * *(a1 + 56))) + (v8 * *(a1 + 68));
  *a4 = vadd_f32(vadd_f32(vmul_n_f32(*(a1 + 36), v5), vmul_n_f32(*(a1 + 48), v6)), vmul_n_f32(*(a1 + 60), v8));
  a4[2] = v9;
  v10 = a3[1];
  v11 = v10 * v7;
  v12 = v10 * a4[4];
  v13 = v10 * a4[5];
  v14 = ((v11 * *(a1 + 44)) + (v12 * *(a1 + 56))) + (v13 * *(a1 + 68));
  *(a4 + 3) = vadd_f32(vadd_f32(vmul_n_f32(*(a1 + 36), v11), vmul_n_f32(*(a1 + 48), v12)), vmul_n_f32(*(a1 + 60), v13));
  a4[5] = v14;
  v15 = a3[2];
  v16 = v15 * a4[6];
  v17 = v15 * a4[7];
  v18 = v15 * a4[8];
  v19 = ((v16 * *(a1 + 44)) + (v17 * *(a1 + 56))) + (v18 * *(a1 + 68));
  *(a4 + 3) = vadd_f32(vadd_f32(vmul_n_f32(*(a1 + 36), v16), vmul_n_f32(*(a1 + 48), v17)), vmul_n_f32(*(a1 + 60), v18));
  a4[8] = v19;
  v20 = a2[1];
  v21 = a2[2];
  v22 = ((*a2 * *(a1 + 44)) + (v20 * *(a1 + 56))) + (v21 * *(a1 + 68));
  *a2 = vadd_f32(vadd_f32(vmul_n_f32(*(a1 + 36), *a2), vmul_n_f32(*(a1 + 48), v20)), vmul_n_f32(*(a1 + 60), v21));
  a2[2] = v22;
  physx::shdfnd::optimizeBoundingBox(a4, &v24);
  *a3 = v24;
  result = v25;
  a3[2] = v25;
  return result;
}

BOOL physx::Gu::contactCapsuleHeightfield(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4, float *a5, int8x16_t a6, double a7, double a8, double a9, double a10, double a11, int32x4_t a12, int32x4_t a13, uint64_t a14, uint64_t a15)
{
  v24 = *a5;
  v25 = *(a1 + 4);
  v26 = *(a1 + 8);
  v27 = v25 + *a5;
  a6.i32[0] = *a3;
  LODWORD(a9) = *(a3 + 4);
  a13.i32[0] = *(a3 + 8);
  a12.i32[0] = *(a3 + 12);
  v28.f32[0] = (((*a12.i32 * (*a12.i32 + *a12.i32)) + -1.0) + (*a6.i32 * (*a6.i32 + *a6.i32))) * v26;
  v29.f32[0] = v26 * (((*a6.i32 + *a6.i32) * *&a9) + (*a13.i32 * (*a12.i32 + *a12.i32)));
  v30.f32[0] = (((*a6.i32 + *a6.i32) * *a13.i32) - (*&a9 * (*a12.i32 + *a12.i32))) * v26;
  LODWORD(a9) = *(a4 + 12);
  *v15.i32 = *(a4 + 16) - *(a3 + 16);
  *v17.i32 = *(a4 + 20) - *(a3 + 20);
  *v16.i32 = *(a4 + 24) - *(a3 + 24);
  *&a10 = (*&a9 * *&a9) + -0.5;
  a6.i32[0] = *a4;
  v28.f32[1] = -v28.f32[0];
  *a12.i8 = vsub_f32(v28, vdup_lane_s32(v15, 0));
  v29.f32[1] = -v29.f32[0];
  v30.f32[1] = -v30.f32[0];
  v31 = vsub_f32(v29, vdup_lane_s32(*v17.i8, 0));
  v32 = vsub_f32(v30, vdup_lane_s32(*v16.i8, 0));
  *a13.i8 = vadd_f32(*a12.i8, *a12.i8);
  v33 = vadd_f32(v31, v31);
  *a12.i8 = vadd_f32(v32, v32);
  *v34.i8 = vzip1_s32(v33, *a12.i8);
  v34.i64[1] = __PAIR64__(v33.u32[1], a13.u32[0]);
  v35 = vzip1q_s32(vrev64q_s32(v34), a12);
  v35.i32[1] = a13.i32[0];
  v36 = vdupq_lane_s32(*&a9, 0).u64[0];
  v37 = vuzp1q_s32(vextq_s8(v34, v34, 8uLL), vuzp2q_s32(v34, a13));
  v38 = vdupq_lane_s32(*&a10, 0).u64[0];
  v16.i64[0] = *(a4 + 4);
  *v17.i32 = -*&v16.i32[1];
  *v18.i8 = vneg_f32(vzip1_s32(*a6.i8, *v16.i8));
  v39.i32[0] = vdup_lane_s32(*v16.i8, 1).u32[0];
  *v19.i8 = vmla_lane_f32(vmla_n_f32(vmul_n_f32(v33, *v16.i32), *a13.i8, *a4), *a12.i8, *v16.i8, 1);
  v40 = vzip1q_s32(v19, v19);
  v40.i32[2] = v19.i32[0];
  v41 = vextq_s8(vextq_s8(v17, v17, 4uLL), v18, 0xCuLL);
  v41.i32[3] = v41.i32[0];
  v42 = vmulq_f32(v34, v41);
  v41.i64[0] = v16.i64[0];
  v41.i32[2] = *a4;
  v41.i32[3] = v16.i32[0];
  v43 = vmlaq_n_f32(vmulq_n_f32(vnegq_f32(vmlaq_f32(v42, v35, v41)), *&a9), v37, *&a10);
  _Q4 = vextq_s8(vextq_s8(a6, a6, 4uLL), v16, 0xCuLL);
  _Q4.i32[3] = _Q4.i32[0];
  v39.i32[1] = *a4;
  v45 = COERCE_DOUBLE(vmla_lane_f32(vmla_f32(vmul_f32(v36, vneg_f32(vmla_f32(vmul_f32(vzip2_s32(*a12.i8, *a13.i8), *v18.i8), vzip2_s32(*a13.i8, v33), v39))), v38, vzip2_s32(v33, *a12.i8)), *v16.i8, *v19.i8, 1));
  v112 = vmlaq_f32(v43, v40, _Q4);
  v113 = v45;
  v110 = a2[1];
  v111 = a2;
  LODWORD(v45) = a2[3].i32[0];
  __asm { FMOV            V4.2S, #1.0 }

  v108 = vrev64_s32(vdiv_f32(*_Q4.f32, a2[2]));
  v109 = 1.0 / *&v45;
  v106 = &unk_1F5D214D8;
  *&v45 = v27;
  v107[14] = &v108;
  v107[15] = a4;
  v50 = v27 + *(a1 + 8);
  v51 = *(a4 + 4);
  v52 = *(a4 + 8);
  v53 = *(a4 + 12);
  v54 = *(a3 + 16) - *(a4 + 16);
  v55 = *(a3 + 20) - *(a4 + 20);
  v56 = *(a3 + 24) - *(a4 + 24);
  v57 = v54 + v54;
  v58 = v55 + v55;
  v59 = v56 + v56;
  v60 = (v53 * v53) + -0.5;
  v61 = (-(v51 * v58) - (*a4 * v57)) - (v52 * v59);
  v62 = ((v53 * ((v52 * v58) - (v51 * v59))) + (v57 * v60)) - (*a4 * v61);
  v63 = ((v53 * ((*a4 * v59) - (v52 * v57))) + (v58 * v60)) - (v51 * v61);
  v64 = ((v53 * ((v51 * v57) - (*a4 * v58))) + (v59 * v60)) - (v52 * v61);
  v66 = *(a3 + 8);
  v65 = *(a3 + 12);
  v67 = *(a3 + 4);
  v68 = (((v53 * *a3) - (*a4 * v65)) - (v51 * v66)) + (v67 * v52);
  v69 = (((v53 * v67) - (v51 * v65)) - (v52 * *a3)) + (v66 * *a4);
  v70 = (((v53 * v66) - (v52 * v65)) - (*a4 * v67)) + (*a3 * v51);
  v71 = (((*a4 * *a3) + (v53 * v65)) + (v51 * v67)) + (v52 * v66);
  v72 = ((v50 - v50) * 0.5) + ((v50 - v50) * 0.5);
  v73 = ((v27 - v27) * 0.5) + ((v27 - v27) * 0.5);
  v74 = (v71 * v71) + -0.5;
  v75 = ((v73 * v69) + (v68 * v72)) + (v70 * v73);
  v76 = ((v71 * ((v69 * v73) - (v70 * v73))) + (v72 * v74)) + (v68 * v75);
  v77 = ((v71 * ((v70 * v72) - (v68 * v73))) + (v73 * v74)) + (v69 * v75);
  v78 = ((v71 * ((v68 * v73) - (v69 * v72))) + (v73 * v74)) + (v70 * v75);
  v79 = v62 + v76;
  v80 = v63 + v77;
  v81 = v64 + v78;
  v82 = v69 + v69;
  v83 = v70 + v70;
  v84 = v69 * (v69 + v69);
  v85 = v70 * (v70 + v70);
  v86 = (v68 + v68) * v69;
  v87 = v70 * (v68 + v68);
  v88 = v71 * (v68 + v68);
  v89 = v70 * v82;
  v90 = v71 * v82;
  v91 = v71 * v83;
  v92 = (1.0 - v84) - v85;
  v93 = 1.0 - (v68 * (v68 + v68));
  v94 = v93 - v85;
  v95 = v93 - v84;
  v96 = (v50 + v50) * 0.5;
  v97 = (v27 + v27) * 0.5;
  v98 = v96 * (v86 + v91);
  v99 = v97 * (v86 - v91);
  v100 = v97 * (v88 + v89);
  v101 = fabsf(v97 * (v87 + v90)) + (fabsf(v99) + fabsf(v96 * v92));
  v102 = fabsf(v97 * (v89 - v88)) + (fabsf(v98) + fabsf(v97 * v94));
  v103 = fabsf(v97 * v95) + (fabsf(v96 * (v87 - v90)) + fabsf(v100));
  v105[0] = v79 - v101;
  v105[1] = v80 - v102;
  v105[2] = v81 - v103;
  v105[3] = v79 + v101;
  v105[4] = v80 + v102;
  v105[5] = v81 + v103;
  physx::Gu::HeightFieldUtil::overlapAABBTriangles(&v108, a4, v105, 0, &v106);
  return *(a15 + 4096) != 0;
}

double physx::PxMat44::PxMat44(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 4);
  v4 = *(a2 + 8);
  v5 = *(a2 + 12);
  v6 = v3 + v3;
  v7 = v4 + v4;
  v8 = v3 * (v3 + v3);
  v9 = v4 * (v4 + v4);
  v10 = (v2 + v2) * v3;
  v11 = (v2 + v2) * v4;
  v12 = (v2 + v2) * v5;
  v13 = v6 * v4;
  v14 = v6 * v5;
  v15 = v7 * v5;
  v16 = 1.0 - (v2 * (v2 + v2));
  v17 = v13 + v12;
  v18 = v13 - v12;
  v19 = *(a2 + 24);
  *a1 = (1.0 - v8) - v9;
  *(a1 + 4) = v10 + v15;
  *(a1 + 8) = v11 - v14;
  *(a1 + 12) = 0;
  *(a1 + 16) = v10 - v15;
  *(a1 + 20) = v16 - v9;
  *(a1 + 24) = v17;
  *(a1 + 28) = 0;
  *(a1 + 32) = v11 + v14;
  *(a1 + 36) = v18;
  *(a1 + 40) = v16 - v8;
  *(a1 + 44) = 0;
  result = *(a2 + 16);
  *(a1 + 48) = result;
  *(a1 + 56) = v19;
  *(a1 + 60) = 1065353216;
  return result;
}

float anonymous namespace::CapsuleMeshContactGeneration::CapsuleMeshContactGeneration(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, float a6, float a7)
{
  *a1 = a2;
  v7 = *a3;
  v8 = *(a3 + 4);
  v9 = *(a3 + 8);
  v10 = *(a3 + 12);
  v11 = v8 + v8;
  v12 = v9 + v9;
  v13 = v8 * (v8 + v8);
  v14 = v9 * (v9 + v9);
  v15 = (v7 + v7) * v8;
  v16 = (v7 + v7) * v9;
  v17 = (v7 + v7) * v10;
  v18 = v11 * v9;
  v19 = v11 * v10;
  v20 = v12 * v10;
  *(a1 + 8) = (1.0 - v13) - v14;
  *(a1 + 12) = v15 + v20;
  v21 = 1.0 - (v7 * (v7 + v7));
  *(a1 + 16) = v16 - v19;
  *(a1 + 20) = v15 - v20;
  *(a1 + 24) = v21 - v14;
  *(a1 + 28) = v18 + v17;
  *(a1 + 32) = v16 + v19;
  *(a1 + 36) = v18 - v17;
  *(a1 + 40) = v21 - v13;
  *(a1 + 44) = *(a3 + 16);
  *(a1 + 52) = *(a3 + 24);
  *(a1 + 56) = a4;
  *(a1 + 96) = LODWORD(a5);
  *(a1 + 100) = a6;
  *(a1 + 104) = a7;
  v22 = (*(a4 + 8) + *(a4 + 20)) * 0.5;
  *(a1 + 64) = vmul_f32(vadd_f32(*a4, *(a4 + 12)), 0x3F0000003F000000);
  *(a1 + 72) = v22;
  v23 = (*(a4 + 8) - *(a4 + 20)) * 0.5;
  *(a1 + 80) = vadd_f32(vabs_f32(vmul_f32(vsub_f32(*a4, *(a4 + 12)), 0x3F0000003F000000)), vdup_lane_s32(*&a5, 0));
  result = fabsf(v23) + *&a5;
  *(a1 + 88) = result;
  return result;
}

uint64_t anonymous namespace::CapsuleMeshContactGenerationCallback_NoScale::processHit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v5 = *a3;
  DWORD2(v5) = *(a3 + 8);
  HIDWORD(v5) = *a4;
  *&v6 = *(a4 + 4);
  *(&v6 + 1) = *a5;
  v11[0] = v5;
  v11[1] = v6;
  v12 = *(a5 + 8);
  v7 = *(a2 + 16);
  v8 = *(*(a1 + 128) + 80);
  if (v8)
  {
    v9 = *(v8 + v7);
  }

  else
  {
    v9 = 56;
  }

  return 1;
}

void anonymous namespace::CapsuleMeshContactGeneration::processTriangle(uint64_t a1, __int32 a2, void *a3, physx::Gu *a4)
{
  if (physx::Gu::intersectTriangleBox_Unsafe((a1 + 64), (a1 + 80), a3, (a3 + 12), (a3 + 3)))
  {
    v178 = 0.0;
    v176 = 0.0;
    v177 = 0.0;
    v8 = *(a3 + 2);
    v9 = *(a3 + 5) - v8;
    v10 = *a3;
    *v175 = vsub_f32(*(a3 + 12), *a3);
    *&v175[8] = v9;
    v11 = *(a3 + 8) - v8;
    *v174 = vsub_f32(a3[3], v10);
    *&v174[8] = v11;
    v12 = *(a1 + 56);
    v13 = *(v12 + 20) - *(v12 + 8);
    v187 = vsub_f32(*(v12 + 12), *v12);
    v188 = v13;
    physx::Gu::distanceSegmentTriangleSquared(v12, &v187, a3, v175, v174, &v178, &v177, &v176);
    v15 = *(a1 + 96);
    if (v14 < (v15 * v15))
    {
      v16.i32[0] = vdup_lane_s32(*&v175[4], 1).u32[0];
      v16.i32[1] = *v175;
      v17 = vmul_f32(*&v174[4], vneg_f32(v16));
      v16.i32[0] = vdup_lane_s32(*&v174[4], 1).u32[0];
      v16.i32[1] = *v174;
      v18 = vmla_f32(v17, v16, *&v175[4]);
      v19 = (*v175 * *&v174[4]) - (*&v175[4] * *v174);
      v20 = *a3;
      v21 = v18.f32[1];
      v22 = *(a3 + 2);
      if (((vmuls_lane_f32(*(a1 + 68), v18, 1) + (v18.f32[0] * *(a1 + 64))) + (v19 * *(a1 + 72))) >= ((vmuls_lane_f32(v18.f32[1], *a3, 1) + (v18.f32[0] * COERCE_FLOAT(*a3))) + (v19 * v22)))
      {
        v162 = *a3;
        if (v14 > 0.000001)
        {
          v165 = v177;
          v167 = v176;
          v170 = v18;
          if (physx::Gu::selectNormal(a4, v177, v176))
          {
            v23 = ((v21 * v21) + (v170.f32[0] * v170.f32[0])) + (v19 * v19);
            if (v23 <= 0.0)
            {
              v25 = 0;
              v26 = 0.0;
            }

            else
            {
              v24 = 1.0 / sqrtf(v23);
              v25 = vmul_n_f32(v170, v24);
              v26 = v19 * v24;
            }

            v179 = v25;
            v180 = v26;
            v118 = *(a1 + 56);
            v110.i32[0] = *v118;
            v115 = *(v118 + 4);
            v106 = *(v118 + 8);
            v109.i32[0] = *(v118 + 12);
            v117 = *(v118 + 16);
            v105 = *(v118 + 20);
            v111.f32[0] = v109.f32[0] - *v118;
            v116 = v117 - v115;
            v107 = v105 - v106;
          }

          else
          {
            v102 = (1.0 - v165) - v167;
            v103 = ((v165 * *(a3 + 5)) + (v102 * v22)) + (v167 * *(a3 + 8));
            v104 = *(a1 + 56);
            v105 = *(v104 + 20);
            v106 = *(v104 + 8);
            v107 = v105 - v106;
            v108 = vmla_n_f32(vmla_n_f32(vmul_n_f32(*(a3 + 12), v165), v162, v102), a3[3], v167);
            v109 = *(v104 + 12);
            v110 = *v104;
            v111 = vsub_f32(v109, *v104);
            v112 = vsub_f32(vadd_f32(*v104, vmul_n_f32(v111, v178)), v108);
            v113 = (v106 + (v178 * (v105 - v106))) - v103;
            v114 = sqrtf((COERCE_FLOAT(vmul_f32(v112, v112).i32[1]) + (v112.f32[0] * v112.f32[0])) + (v113 * v113));
            if (v114 == 0.0)
            {
              return;
            }

            v179 = vmul_n_f32(v112, 1.0 / v114);
            v180 = v113 * (1.0 / v114);
            v115 = v110.f32[1];
            v116 = v111.f32[1];
            v117 = v109.f32[1];
          }

          v119 = *a1;
          v121 = *(a1 + 100);
          v120 = *(a1 + 104);
          v187 = __PAIR64__(LODWORD(v115), v110.u32[0]);
          v188 = v106;
          v184 = v109.f32[0];
          v185 = v117;
          v186 = v105;
          v122 = sqrtf(((v116 * v116) + (v111.f32[0] * v111.f32[0])) + (v107 * v107));
          if (v122 > 0.0)
          {
            v123 = 0.01 / v122;
            v124 = v111.f32[0] * v123;
            v125 = v116 * v123;
            v126 = v107 * v123;
            *&v187 = v110.f32[0] - v124;
            *(&v187 + 1) = v115 - v125;
            v188 = v106 - v126;
            v184 = v109.f32[0] + v124;
            v185 = v117 + v125;
            v186 = v105 + v126;
          }

          v127 = 0;
          v128 = v120 + v121;
          v129 = a3;
          do
          {
            v173[0] = 0.0;
            if (physx::Gu::intersectEdgeEdge(v129, a3 + 3 * ((v127 + (v127 >> 1) + 1) & 3), &v179, &v187, &v184, v173, &v181) && v173[0] < v128)
            {
              v130 = *(v119 + 4096);
              if (v130 <= 0x3F)
              {
                v131 = *(a1 + 16);
                v132 = v181;
                v133 = *(a1 + 28);
                v134 = v182;
                v135 = *(a1 + 40);
                v136 = *(a1 + 52) + (((v181.f32[0] * v131) + (v181.f32[1] * v133)) + (v182 * v135));
                v137 = v173[0] - v120;
                v138 = v179;
                v139 = (v131 * v179.f32[0]) + (v133 * v179.f32[1]);
                v140 = v180;
                v141 = v139 + (v135 * v180);
                *(v119 + 4096) = v130 + 1;
                v142 = (v119 + (v130 << 6));
                v143 = *(a1 + 8);
                v144 = *(a1 + 20);
                v145 = *(a1 + 32);
                v142[1].f32[0] = v141;
                v146 = vadd_f32(*(a1 + 44), vadd_f32(vadd_f32(vmul_n_f32(v143, v132.f32[0]), vmul_n_f32(v144, v132.f32[1])), vmul_n_f32(v145, v134)));
                *v142 = vadd_f32(vadd_f32(vmul_n_f32(v143, v138.f32[0]), vmul_n_f32(v144, v138.f32[1])), vmul_n_f32(v145, v140));
                v142[2] = v146;
                v142[3].f32[0] = v136;
                v142[1].f32[1] = v137;
                v142[6].i32[1] = a2;
              }
            }

            ++v127;
            v129 += 3;
          }

          while (v127 != 3);
          v96 = *a1;
          v97 = *(a1 + 56);
          v99 = *(a1 + 100);
          v98 = *(a1 + 104);
          v100 = a1 + 8;
          v101 = &v179;
          goto LABEL_53;
        }

        LODWORD(v27) = HIDWORD(*a3);
        v28 = *(a1 + 56);
        v181.i32[0] = 2139095039;
        v30 = *(a3 + 3);
        v29 = *(a3 + 4);
        v31 = v20.f32[0] - v30;
        v32 = *(a3 + 6);
        v161 = *(a3 + 5);
        v20.f32[0] = v20.f32[0] - v32;
        v33 = *(a3 + 7);
        v160 = *(a3 + 8);
        v34 = ((v20.f32[1] - v29) * (v22 - v160)) - ((v22 - v161) * (v20.f32[1] - v33));
        v35 = ((v22 - v161) * v20.f32[0]) - (v31 * (v22 - v160));
        v36 = (v31 * (v20.f32[1] - v33)) - ((v20.f32[1] - v29) * v20.f32[0]);
        v37 = ((v35 * v35) + (v34 * v34)) + (v36 * v36);
        v38 = 0.0;
        v39 = 0.0;
        v40 = 0.0;
        if (v37 > 0.0)
        {
          v41 = 1.0 / sqrtf(v37);
          v38 = v34 * v41;
          v39 = v35 * v41;
          v40 = v36 * v41;
        }

        v163 = v39;
        v164 = v38;
        v187 = __PAIR64__(LODWORD(v39), LODWORD(v38));
        v42 = v40;
        v188 = v40;
        v168 = v15;
        if (PxcTestAxis(&v187, v28, a3, &v181, v15))
        {
          v155 = v32;
          v156 = v33;
          v157 = v30;
          v158 = v29;
          v159 = v22;
          v154 = v28[3];
          v152 = *v28;
          v43 = v154 - *v28;
          v150 = v28[1];
          v151 = v28[4];
          v44 = v151 - v150;
          v153 = v28[5];
          v149 = v28[2];
          v45 = v153 - v149;
          v46 = ((v44 * v44) + (v43 * v43)) + (v45 * v45);
          v47 = 0.0;
          v48 = sqrtf(v46);
          v49 = 0.0;
          v50 = 0.0;
          if (v46 > 0.0)
          {
            v47 = v43 * (1.0 / v48);
            v49 = v44 * (1.0 / v48);
            v50 = v45 * (1.0 / v48);
          }

          v147 = v154 - *v28;
          v148 = v48;
          v51 = 0;
          v171 = v181.f32[0];
          v52 = -v50;
          v53 = -v47;
          v54 = -v49;
          v55 = v42;
          do
          {
            if ((*&asc_1E311613C[4 * v51] & a4) != 0)
            {
              v56 = a3 + 3 * v51;
              v57 = v51 + 1;
              v58 = a3 + 3 * ((v51 + 1 + (v51 >> 1)) & 3);
              v59 = *v56 - *v58;
              v60 = v56[1] - v58[1];
              v61 = v56[2] - v58[2];
              v62 = (v60 * v52) + (v49 * v61);
              v63 = (v61 * v53) + (v50 * v59);
              v64 = (v59 * v54) + (v47 * v60);
              if (fabsf(v62) > 0.000001 || fabsf(v63) > 0.000001 || fabsf(v64) > 0.000001)
              {
                v65 = ((v63 * v63) + (v62 * v62)) + (v64 * v64);
                v66 = 0.0;
                v67 = 0.0;
                v68 = 0.0;
                if (v65 > 0.0)
                {
                  v69 = 1.0 / sqrtf(v65);
                  v66 = v62 * v69;
                  v67 = v63 * v69;
                  v68 = v64 * v69;
                }

                v184 = v66;
                v185 = v67;
                v186 = v68;
                v179.i32[0] = 0;
                if (!PxcTestAxis(&v184, v28, a3, &v179, v168))
                {
                  return;
                }

                if (v179.f32[0] < v171)
                {
                  v55 = v68;
                  v163 = v67;
                  v164 = v66;
                  v171 = v179.f32[0];
                }

                v53 = -v47;
                v52 = -v50;
                v54 = -v49;
              }

              v51 = v57;
            }

            else
            {
              ++v51;
            }
          }

          while (v51 != 3);
          v70 = (((((v151 + v150) * 0.5) - (((v27 + v158) + v156) * 0.33333)) * v163) + (v164 * (((v154 + v152) * 0.5) - (((v162.f32[0] + v157) + v155) * 0.33333)))) + (v55 * (((v153 + v149) * 0.5) - (((v159 + v161) + v160) * 0.33333)));
          v71 = -v164;
          v72 = v70 < 0.0;
          if (v70 < 0.0)
          {
            v73 = -v163;
          }

          else
          {
            v71 = v164;
            v73 = v163;
          }

          v74 = -v55;
          if (!v72)
          {
            v74 = v55;
          }

          v169 = v73;
          v172 = v71;
          v173[0] = v71;
          v173[1] = v73;
          v166 = v74;
          v173[2] = v74;
          v75 = *a1;
          v76 = *(a1 + 104);
          v187 = __PAIR64__(LODWORD(v150), LODWORD(v152));
          v188 = v149;
          v184 = v154;
          v185 = v151;
          v186 = v153;
          if (v148 > 0.0)
          {
            v77 = v147 * (0.01 / v148);
            v78 = (v151 - v150) * (0.01 / v148);
            v79 = (v153 - v149) * (0.01 / v148);
            *&v187 = v152 - v77;
            *(&v187 + 1) = v150 - v78;
            v188 = v149 - v79;
            v184 = v154 + v77;
            v185 = v151 + v78;
            v186 = v153 + v79;
          }

          v80 = 0;
          v81 = a3;
          do
          {
            v183 = 0.0;
            v179.f32[0] = -v172;
            v179.f32[1] = -v169;
            v180 = -v166;
            if (physx::Gu::intersectEdgeEdge(v81, a3 + 3 * ((v80 + (v80 >> 1) + 1) & 3), &v179, &v187, &v184, &v183, &v181))
            {
              v82 = *(v75 + 4096);
              if (v82 <= 0x3F)
              {
                v83 = *(a1 + 16);
                v84 = v181;
                v85 = *(a1 + 28);
                v86 = v182;
                v87 = *(a1 + 40);
                v88 = *(a1 + 52) + (((v181.f32[0] * v83) + (v181.f32[1] * v85)) + (v182 * v87));
                v89 = -(v76 + v183);
                v90 = ((v172 * v83) + (v169 * v85)) + (v166 * v87);
                *(v75 + 4096) = v82 + 1;
                v91 = (v75 + (v82 << 6));
                v92 = *(a1 + 8);
                v93 = *(a1 + 20);
                v94 = *(a1 + 32);
                v91[1].f32[0] = v90;
                v95 = *(a1 + 44);
                *v91 = vadd_f32(vadd_f32(vmul_n_f32(v92, v172), vmul_n_f32(v93, v169)), vmul_n_f32(v94, v166));
                v91[2] = vadd_f32(v95, vadd_f32(vadd_f32(vmul_n_f32(v92, v84.f32[0]), vmul_n_f32(v93, v84.f32[1])), vmul_n_f32(v94, v86)));
                v91[3].f32[0] = v88;
                v91[1].f32[1] = v89;
                v91[6].i32[1] = a2;
              }
            }

            ++v80;
            v81 += 3;
          }

          while (v80 != 3);
          v96 = *a1;
          v97 = *(a1 + 56);
          v99 = *(a1 + 100);
          v98 = *(a1 + 104);
          v100 = a1 + 8;
          v101 = v173;
LABEL_53:
          PxcGenerateVFContacts(v100, v96, v97, a3, v101, a2, v98, v99);
        }
      }
    }
  }
}

uint64_t PxcGenerateVFContacts(uint64_t result, uint64_t a2, uint64_t a3, float *a4, float *a5, __int32 a6, float a7, float a8)
{
  v8 = 0;
  v9 = a7 + a8;
  v10 = *(a2 + 4096);
  v11 = *a5;
  v12 = *a4;
  v13 = 1;
  do
  {
    v14 = v13;
    v16 = a5[1];
    v15 = a5[2];
    v17 = a4[3] - v12;
    v18 = a4[1];
    v19 = a4[2];
    v20 = a4[4] - v18;
    v21 = a4[5] - v19;
    v22 = a4[6] - v12;
    v23 = a4[7] - v18;
    v24 = a4[8] - v19;
    v25 = (v15 * v23) - (v16 * v24);
    v26 = (v11 * v24) - (v15 * v22);
    v27 = (v16 * v22) - (v11 * v23);
    v28 = ((v20 * v26) + (v17 * v25)) + (v21 * v27);
    if (v28 >= 1.4211e-14)
    {
      v29 = (a3 + 12 * v8);
      v30 = v29[1];
      v31 = *v29 - v12;
      v32 = v30 - v18;
      v33 = v29[2];
      v34 = v33 - v19;
      v35 = ((v26 * v32) + (v31 * v25)) + (v34 * v27);
      v36 = -(v28 * 0.001);
      v37 = v28 + (v28 * 0.001);
      v38 = v35 >= v36 && v35 <= v37;
      v39 = (v32 * v21) - (v34 * v20);
      v40 = (v34 * v17) - (v31 * v21);
      v41 = (v31 * v20) - (v32 * v17);
      v42 = ((v40 * -v16) + (-v11 * v39)) + (-v15 * v41);
      v44 = v38 && v42 >= v36 && (v35 + v42) <= v37;
      v45 = (1.0 / v28) * (((v23 * v40) + (v22 * v39)) + (v24 * v41));
      v46 = v44 && v45 < v9;
      if (v46 && v10 <= 0x3F)
      {
        v47 = v45 - a7;
        v48 = *(result + 8);
        v49 = *(result + 20);
        v50 = *(result + 32);
        v51 = ((v11 * v48) + (v16 * v49)) + (v15 * v50);
        v52 = *v29 - (v11 * v45);
        v53 = v30 - (v16 * v45);
        v54 = v33 - (v15 * v45);
        v55 = (((v52 * v48) + (v53 * v49)) + (v54 * v50)) + *(result + 44);
        v56 = (a2 + (v10++ << 6));
        *(a2 + 4096) = v10;
        v57 = *result;
        v58 = *(result + 12);
        v59 = vadd_f32(vmul_n_f32(*result, v11), vmul_n_f32(v58, v16));
        v60 = *(result + 24);
        v61 = vadd_f32(v59, vmul_n_f32(v60, v15));
        v56[1].f32[0] = v51;
        v62 = vadd_f32(vadd_f32(vadd_f32(vmul_n_f32(v57, v52), vmul_n_f32(v58, v53)), vmul_n_f32(v60, v54)), *(result + 36));
        *v56 = v61;
        v56[2] = v62;
        v56[3].f32[0] = v55;
        v56[1].f32[1] = v47;
        v56[6].i32[1] = a6;
        v11 = *a5;
        v12 = *a4;
      }
    }

    v13 = 0;
    v8 = 1;
  }

  while ((v14 & 1) != 0);
  return result;
}

BOOL PxcTestAxis(float *a1, float *a2, float *a3, float *a4, float a5)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a2[3];
  v9 = ((a2[1] * v6) + (*a2 * *a1)) + (a2[2] * v7);
  v10 = a2[5];
  v11 = ((v6 * a2[4]) + (v8 * *a1)) + (v10 * v7);
  if (v9 <= v11)
  {
    v12 = ((a2[1] * v6) + (*a2 * *a1)) + (a2[2] * v7);
  }

  else
  {
    v12 = ((v6 * a2[4]) + (v8 * *a1)) + (v10 * v7);
  }

  if (v9 > v11)
  {
    v11 = ((a2[1] * v6) + (*a2 * *a1)) + (a2[2] * v7);
  }

  v13 = v12 - a5;
  v14 = v11 + a5;
  v15 = a3[3];
  v16 = ((v6 * a3[1]) + (*a3 * v5)) + (a3[2] * v7);
  v17 = a3[5];
  v18 = ((v6 * a3[4]) + (v15 * v5)) + (v17 * v7);
  if (v16 >= v18)
  {
    v19 = ((v6 * a3[4]) + (v15 * v5)) + (v17 * v7);
  }

  else
  {
    v19 = ((v6 * a3[1]) + (*a3 * v5)) + (a3[2] * v7);
  }

  if (v16 <= v18)
  {
    v16 = v18;
  }

  v20 = ((v6 * a3[7]) + (a3[6] * v5)) + (a3[8] * v7);
  if (v19 >= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = v19;
  }

  if (v16 > v20)
  {
    v20 = v16;
  }

  result = v20 >= v13 && v14 >= v21;
  if (result)
  {
    v23 = v14 - v21;
    v24 = v20 - v13;
    if (v23 >= v24)
    {
      v23 = v24;
    }

    *a4 = v23;
  }

  return result;
}

{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a2[3];
  v9 = ((a2[1] * v6) + (*a2 * *a1)) + (a2[2] * v7);
  v10 = a2[5];
  v11 = ((v6 * a2[4]) + (v8 * *a1)) + (v10 * v7);
  if (v9 <= v11)
  {
    v12 = ((v6 * a2[4]) + (v8 * *a1)) + (v10 * v7);
  }

  else
  {
    v12 = ((a2[1] * v6) + (*a2 * *a1)) + (a2[2] * v7);
  }

  if (v9 > v11)
  {
    v9 = v11;
  }

  v13 = v9 - a5;
  v14 = v12 + a5;
  v15 = ((v6 * a3[10]) + (a3[9] * v5)) + (a3[11] * v7);
  v16 = ((a3[13] * fabsf(((v6 * a3[4]) + (a3[3] * v5)) + (a3[5] * v7))) + (fabsf(((v6 * a3[1]) + (*a3 * v5)) + (a3[2] * v7)) * a3[12])) + (fabsf(((v6 * a3[7]) + (a3[6] * v5)) + (a3[8] * v7)) * a3[14]);
  v17 = v15 - v16;
  v18 = v15 + v16;
  result = v18 >= v13 && v14 >= v17;
  if (result)
  {
    v20 = v14 - v17;
    if (v20 >= (v18 - v13))
    {
      v20 = v18 - v13;
    }

    *a4 = v20;
  }

  return result;
}

uint64_t physx::Gu::unsupportedBoxCBOverlapMidphase(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if ((physx::Gu::Midphase::outputError(void)::reportOnlyOnce & 1) == 0)
  {
    physx::Gu::Midphase::outputError(void)::reportOnlyOnce = 1;
    return physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/geomutils/src/mesh/GuMidphaseInterface.h", 175, "BV4 midphase only supported on Intel platforms.", a6, a7, a8, a9);
  }

  return result;
}

{
  if ((physx::Gu::Midphase::outputError(void)::reportOnlyOnce & 1) == 0)
  {
    physx::Gu::Midphase::outputError(void)::reportOnlyOnce = 1;
    return physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/geomutils/src/mesh/GuMidphaseInterface.h", 175, "BV4 midphase only supported on Intel platforms.", a6, a7, a8, a9);
  }

  return result;
}

{
  if ((physx::Gu::Midphase::outputError(void)::reportOnlyOnce & 1) == 0)
  {
    physx::Gu::Midphase::outputError(void)::reportOnlyOnce = 1;
    return physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/geomutils/src/mesh/GuMidphaseInterface.h", 175, "BV4 midphase only supported on Intel platforms.", a6, a7, a8, a9);
  }

  return result;
}

{
  if ((physx::Gu::Midphase::outputError(void)::reportOnlyOnce & 1) == 0)
  {
    physx::Gu::Midphase::outputError(void)::reportOnlyOnce = 1;
    return physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/geomutils/src/mesh/GuMidphaseInterface.h", 175, "BV4 midphase only supported on Intel platforms.", a6, a7, a8, a9);
  }

  return result;
}

{
  if ((physx::Gu::Midphase::outputError(void)::reportOnlyOnce & 1) == 0)
  {
    physx::Gu::Midphase::outputError(void)::reportOnlyOnce = 1;
    return physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/geomutils/src/mesh/GuMidphaseInterface.h", 175, "BV4 midphase only supported on Intel platforms.", a6, a7, a8, a9);
  }

  return result;
}

{
  if ((physx::Gu::Midphase::outputError(void)::reportOnlyOnce & 1) == 0)
  {
    physx::Gu::Midphase::outputError(void)::reportOnlyOnce = 1;
    return physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/mesh/GuMidphaseInterface.h", 175, "BV4 midphase only supported on Intel platforms.", a6, a7, a8, a9);
  }

  return result;
}

{
  if ((physx::Gu::Midphase::outputError(void)::reportOnlyOnce & 1) == 0)
  {
    physx::Gu::Midphase::outputError(void)::reportOnlyOnce = 1;
    return physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/geomutils/src/mesh/GuMidphaseInterface.h", 175, "BV4 midphase only supported on Intel platforms.", a6, a7, a8, a9);
  }

  return result;
}

{
  if ((physx::Gu::Midphase::outputError(void)::reportOnlyOnce & 1) == 0)
  {
    physx::Gu::Midphase::outputError(void)::reportOnlyOnce = 1;
    return physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/geomutils/src/mesh/GuMidphaseInterface.h", 175, "BV4 midphase only supported on Intel platforms.", a6, a7, a8, a9);
  }

  return result;
}

{
  if ((physx::Gu::Midphase::outputError(void)::reportOnlyOnce & 1) == 0)
  {
    physx::Gu::Midphase::outputError(void)::reportOnlyOnce = 1;
    return physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/geomutils/src/mesh/GuMidphaseInterface.h", 175, "BV4 midphase only supported on Intel platforms.", a6, a7, a8, a9);
  }

  return result;
}

uint64_t physx::Cm::FastVertex2ShapeScaling::init(uint64_t result, float *a2, float *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = a3[2];
  v6 = a3[3];
  v7 = v5 + v5;
  v8 = v3 * (v3 + v3);
  v9 = v4 * (v4 + v4);
  v10 = v5 * (v5 + v5);
  v11 = (v3 + v3) * v4;
  v12 = (v3 + v3) * v5;
  v13 = (v3 + v3) * v6;
  v14 = (v4 + v4) * v5;
  v15 = (v4 + v4) * v6;
  v16 = v7 * v6;
  v17 = 1.0;
  v18 = (1.0 - v9) - v10;
  v19 = v11 + v16;
  v20 = v12 - v15;
  v21 = v11 - v16;
  v22 = (1.0 - v8) - v10;
  v23 = v14 + v13;
  v24 = v12 + v15;
  v25 = v14 - v13;
  v26 = (1.0 - v8) - v9;
  *result = v18;
  *(result + 4) = v21;
  *(result + 8) = v12 + v15;
  *(result + 12) = v19;
  *(result + 16) = v22;
  *(result + 20) = v25;
  *(result + 24) = v12 - v15;
  *(result + 28) = v23;
  *(result + 32) = v26;
  v27 = a2[1];
  v28 = a2[2];
  v29 = ((v12 - v15) * 0.0) + ((v19 * 0.0) + (v18 * *a2));
  v30 = (v23 * 0.0) + ((v22 * 0.0) + (v21 * *a2));
  v31 = (v26 * 0.0) + ((v25 * 0.0) + (v24 * *a2));
  v32 = (v20 * 0.0) + ((v18 * 0.0) + (v19 * v27));
  v33 = (v23 * 0.0) + ((v21 * 0.0) + (v22 * v27));
  v34 = (v26 * 0.0) + ((v24 * 0.0) + (v25 * v27));
  v35 = ((v18 * 0.0) + (v19 * 0.0)) + (v20 * v28);
  v36 = ((v21 * 0.0) + (v22 * 0.0)) + (v23 * v28);
  v37 = ((v24 * 0.0) + (v25 * 0.0)) + (v26 * v28);
  v38 = v20 * v36;
  v39 = v20 * v37;
  v40 = (v20 * v35) + ((v18 * v29) + (v19 * v32));
  v41 = v38 + ((v18 * v30) + (v19 * v33));
  v42 = v39 + ((v18 * v31) + (v19 * v34));
  v43 = (v21 * v29) + (v22 * v32);
  v44 = (v21 * v30) + (v22 * v33);
  v45 = (v21 * v31) + (v22 * v34);
  v46 = v23 * v37;
  v47 = (v23 * v35) + v43;
  v48 = (v23 * v36) + v44;
  v49 = v46 + v45;
  v50 = v24 * v30;
  v51 = (v24 * v29) + (v25 * v32);
  v52 = (v24 * v31) + (v25 * v34);
  v53 = v26 * v36;
  v54 = v26 * v37;
  v55 = (v26 * v35) + v51;
  v56 = v53 + (v50 + (v25 * v33));
  v57 = v54 + v52;
  *result = v40;
  *(result + 4) = v41;
  *(result + 8) = v42;
  *(result + 12) = v47;
  *(result + 16) = v48;
  *(result + 20) = v49;
  *(result + 24) = v55;
  *(result + 28) = v56;
  *(result + 32) = v57;
  v58 = ((v41 * ((v49 * v55) - (v47 * v57))) + (v40 * ((v48 * v57) - (v49 * v56)))) + (v42 * ((v47 * v56) - (v48 * v55)));
  if (v58 == 0.0)
  {
    v61 = xmmword_1E3047670;
    v63 = xmmword_1E3047670;
  }

  else
  {
    v59.f32[0] = (v48 * v57) - (v56 * v49);
    v59.f32[1] = -((v41 * v57) - (v56 * v42));
    v59.f32[2] = (v41 * v49) - (v42 * v48);
    v59.f32[3] = -((v55 * -v49) + (v47 * v57));
    v60 = 1.0 / v58;
    v61 = vmulq_n_f32(v59, 1.0 / v58);
    v62.f32[0] = (v40 * v57) - (v42 * v55);
    v62.f32[1] = -((v40 * v49) - (v42 * v47));
    v62.f32[2] = (v47 * v56) - (v48 * v55);
    v62.f32[3] = -((v40 * v56) - (v41 * v55));
    v63 = vmulq_n_f32(v62, v60);
    v17 = ((v41 * -v47) + (v40 * v48)) * v60;
  }

  *(result + 36) = v61;
  *(result + 52) = v63;
  *(result + 68) = v17;
  *(result + 72) = ((*a2 * a2[1]) * a2[2]) < 0.0;
  return result;
}

uint64_t anonymous namespace::CapsuleMeshContactGenerationCallback_Scale::processHit(uint64_t a1, uint64_t a2, float *a3, float *a4, float *a5)
{
  v6 = *(a1 + 128);
  v5 = *(a1 + 136);
  v7 = v5[1].f32[0];
  v8 = v5[2].f32[1];
  v9 = v5[4].f32[0];
  v10 = *v5;
  v11 = *(v5 + 12);
  v12 = v5[3];
  v13 = a4[1];
  v14 = (*a4 * COERCE_FLOAT(*v5)) + (v13 * v11.f32[0]);
  v15 = vmuls_lane_f32(*a4, *v5, 1) + vmuls_lane_f32(v13, v11, 1);
  v16 = (v7 * *a4) + (v8 * v13);
  v17 = a4[2];
  v18 = v14 + (v17 * v12.f32[0]);
  v19 = v15 + vmuls_lane_f32(v17, v12, 1);
  v20 = v16 + (v9 * v17);
  v21 = v5[9].i8[0] == 0;
  v22 = 3;
  if (v21)
  {
    v23 = 3;
  }

  else
  {
    v23 = 6;
  }

  v42.f32[v23] = v18;
  if (v21)
  {
    v24 = 4;
  }

  else
  {
    v24 = 7;
  }

  v42.f32[v24] = v19;
  if (v21)
  {
    v25 = 5;
  }

  else
  {
    v25 = 8;
  }

  v42.f32[v25] = v20;
  v26 = a3[1];
  v27 = a3[2];
  v28 = ((*a3 * v7) + (v26 * v8)) + (v27 * v9);
  v42 = vadd_f32(vadd_f32(vmul_n_f32(v10, *a3), vmul_n_f32(v11, v26)), vmul_n_f32(v12, v27));
  v43 = v28;
  v29 = a5[1];
  v30 = *a5 * v10.f32[0];
  v31 = (v7 * *a5) + (v8 * v29);
  v32 = a5[2];
  v33 = v9 * v32;
  v34 = (vmuls_lane_f32(*a5, v10, 1) + vmuls_lane_f32(v29, v11, 1)) + vmuls_lane_f32(v32, v12, 1);
  if (v21)
  {
    v22 = 6;
  }

  v42.f32[v22] = (v30 + (v29 * v11.f32[0])) + (v32 * v12.f32[0]);
  if (v21)
  {
    v35 = 7;
  }

  else
  {
    v35 = 4;
  }

  v42.f32[v35] = v34;
  v36 = v31 + v33;
  if (v21)
  {
    v37 = 8;
  }

  else
  {
    v37 = 5;
  }

  v42.f32[v37] = v36;
  v38 = *(a2 + 16);
  v39 = *(v6 + 80);
  if (v39)
  {
    v40 = *(v39 + v38);
  }

  else
  {
    v40 = 56;
  }

  return 1;
}

uint64_t anonymous namespace::CapsuleHeightfieldContactGenerationCallback::onEvent(_anonymous_namespace_::CapsuleHeightfieldContactGenerationCallback *this, int a2, unsigned int *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  for (i = a2; i; a3 = v21)
  {
    v4 = *a3;
    v21 = a3 + 1;
    physx::Gu::HeightFieldUtil::getTriangle(*(this + 15), *(this + 16), &v32, v41, v40, *a3, 0, 0);
    v5 = ((v35 - *(&v32 + 1)) * (v39 - v33)) - ((v36 - v33) * (v38 - *(&v32 + 1)));
    v6 = ((v36 - v33) * (v37 - *&v32)) - ((v34 - *&v32) * (v39 - v33));
    v7 = ((v34 - *&v32) * (v38 - *(&v32 + 1))) - ((v35 - *(&v32 + 1)) * (v37 - *&v32));
    v8 = sqrtf(((v6 * v6) + (v5 * v5)) + (v7 * v7));
    if (v8 > 0.0)
    {
      v9 = 1.0 / v8;
      v5 = v5 * v9;
      v6 = v6 * v9;
      v7 = v7 * v9;
    }

    v10 = 0;
    v11 = 0;
    --i;
    do
    {
      v12 = v40[v10];
      if (v12 == -1)
      {
        v11 |= 8 << v10;
      }

      else
      {
        physx::Gu::HeightFieldUtil::getTriangle(*(this + 15), *(this + 16), &v23, 0, 0, v12, 0, 0);
        v13 = ((v27 - v24) * (v31 - v25)) - ((v28 - v25) * (v30 - v24));
        v14 = ((v28 - v25) * (v29 - v23)) - ((v26 - v23) * (v31 - v25));
        v15 = ((v26 - v23) * (v30 - v24)) - ((v27 - v24) * (v29 - v23));
        v16 = &v32 + 3 * byte_1E31161C3[v10];
        if ((((v14 * (v16[1] - v24)) + (v13 * (*v16 - v23))) + (v15 * (v16[2] - v25))) < 0.0)
        {
          v17 = sqrtf(((v14 * v14) + (v13 * v13)) + (v15 * v15));
          if (v17 > 0.0)
          {
            v18 = 1.0 / v17;
            v13 = v13 * v18;
            v14 = v14 * v18;
            v15 = v15 * v18;
          }

          v19 = 8 << v10;
          if ((((v6 * v14) + (v13 * v5)) + (v15 * v7)) >= 0.999)
          {
            v19 = 0;
          }

          v11 |= v19;
        }
      }

      ++v10;
    }

    while (v10 != 3);
  }

  return 1;
}

void physx::Gu::computeBounds(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, float32x4_t a5, double a6, double a7, double a8, double a9, double a10, int32x4_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  v17 = *&a6;
  v16.i32[0] = a5.i32[0];
  v20 = *a2;
  if (*a2 > 2)
  {
    v21 = a4;
    if (v20 <= 4)
    {
      if (v20 == 3)
      {
        a5.i64[0] = *(a3 + 16);
        a5.i32[2] = *(a3 + 24);
        v58 = vdup_lane_s32(*a3, 1);
        v59 = vdup_laneq_s32(*a3, 2);
        v60 = vdup_laneq_s32(*a3, 3);
        _Q5 = vaddq_f32(*a3, *a3);
        v62 = vdup_lane_s32(vmul_f32(*a3, *_Q5.f32), 0);
        v63 = vmul_lane_f32(v58, *_Q5.f32, 1);
        v64 = vmul_laneq_f32(v59, _Q5, 2);
        v65 = vmul_n_f32(v58, _Q5.f32[0]);
        v66 = vmul_n_f32(v59, _Q5.f32[0]);
        v67 = vmul_n_f32(v60, _Q5.f32[0]);
        v68 = vmul_lane_f32(v59, *_Q5.f32, 1);
        v69 = vmul_lane_f32(v60, *_Q5.f32, 1);
        *&v70 = vmul_laneq_f32(v60, _Q5, 2);
        __asm { FMOV            V5.2S, #1.0 }

        v75 = vsub_f32(*_Q5.f32, v62);
        _Q5.i32[0] = vadd_f32(v65, *&v70).u32[0];
        LODWORD(v76) = vsub_f32(v66, v69).u32[0];
        v77 = vsub_f32(v65, *&v70);
        LODWORD(v70) = vsub_f32(v75, v64).u32[0];
        *v146 = (1.0 - v63.f32[1]) - v64.f32[1];
        *&v146[4] = _Q5.i32[0];
        HIDWORD(v76) = v77.i32[1];
        *(&v70 + 1) = vext_s8(vadd_f32(v66, v69), vsub_f32(v68, v67), 4uLL);
        *&v146[8] = v76;
        DWORD1(v70) = vadd_f32(v68, v67).u32[0];
        *&v146[16] = v70;
        *&v146[32] = vsub_f32(v75, v63).u32[0];
        v78 = vmulq_n_f32(vaddq_f32(vdupq_lane_s32(v16, 0), vaddq_f32(vaddq_f32(vabsq_f32(vmulq_n_f32(*v146, *(a2 + 4))), vabsq_f32(vmulq_n_f32(*&v146[12], *(a2 + 8)))), vabsq_f32(vmulq_n_f32(*&v146[24], *(a2 + 12))))), v17);
        v79 = vsubq_f32(a5, v78);
        v80 = vaddq_f32(a5, v78);
LABEL_40:
        v79.i32[3] = v80.i32[0];
        *a1 = v79;
        v83 = vextq_s8(v80, v80, 4uLL).u64[0];
LABEL_41:
        *(a1 + 16) = v83;
        return;
      }

      if (v20 != 4)
      {
        return;
      }

      v33 = *(a2 + 32);
      if (*(a2 + 40))
      {
        v84 = vdup_lane_s32(*a3, 1);
        v86 = *(a2 + 4);
        v87 = *(a2 + 8);
        v85 = a2 + 4;
        v88 = *(v85 + 8);
        v89 = vdup_laneq_s32(*a3, 2);
        v90 = vdup_laneq_s32(*a3, 3);
        _Q4 = vaddq_f32(*a3, *a3);
        v92 = vdup_lane_s32(vmul_f32(*a3, *_Q4.f32), 0);
        v93 = vmul_lane_f32(v84, *_Q4.f32, 1);
        *a11.i8 = vmul_laneq_f32(v89, _Q4, 2);
        v94 = vmul_n_f32(v84, _Q4.f32[0]);
        v95 = vmul_n_f32(v89, _Q4.f32[0]);
        v96 = vmul_n_f32(v90, _Q4.f32[0]);
        v97 = vmul_lane_f32(v89, *_Q4.f32, 1);
        v98 = vmul_lane_f32(v90, *_Q4.f32, 1);
        v99 = vmul_laneq_f32(v90, _Q4, 2);
        __asm { FMOV            V4.2S, #1.0 }

        v100 = vsub_f32(*_Q4.f32, v92);
        v101 = COERCE_DOUBLE(vadd_f32(v94, v99));
        LODWORD(v102) = vsub_f32(v95, v98).u32[0];
        v103 = COERCE_DOUBLE(vsub_f32(v94, v99));
        LODWORD(v107) = vsub_f32(v100, *a11.i8).u32[0];
        v104 = vadd_f32(v97, v96).u32[0];
        *&v105 = vsub_f32(v100, v93).u32[0];
        v106 = COERCE_DOUBLE(vext_s8(vadd_f32(v95, v98), vsub_f32(v97, v96), 4uLL));
        a11.i32[0] = a11.i32[1];
        *v146 = (1.0 - v93.f32[1]) - *&a11.i32[1];
        *&v146[4] = LODWORD(v101);
        HIDWORD(v102) = HIDWORD(v103);
        *&v146[8] = v102;
        *(&v107 + 1) = v106;
        DWORD1(v107) = v104;
        *&v146[16] = v107;
        *&v146[32] = LODWORD(v105);
        if ((v87 - 1065353216) | (v86 - 1065353216) | (v88 - 1065353216))
        {
          v140 = v16;
          v143 = v17;
          v93.f32[0] = (1.0 - v93.f32[1]) - *&a11.i32[1];
          computeScaledMatrix(v146, v85, v103, v105, v106, *&v107, v101, *&v93, a11);
          v16 = v140;
          v17 = v143;
        }

        v108 = *(v33 + 72);
        v109 = 20 * *(v33 + 71);
        v110 = vaddq_f32(vaddq_f32(vmulq_n_f32(*v146, COERCE_FLOAT(*(v108 + v109))), vmulq_lane_f32(*&v146[12], *(v108 + v109), 1)), vmulq_laneq_f32(*&v146[24], *(v108 + v109), 2));
        v111 = *(v33 + 70) - 1;
        if (*(v33 + 70) == 1)
        {
          v113 = v110;
        }

        else
        {
          v112 = (v109 + v108 + 12);
          v113 = v110;
          do
          {
            v114 = *v112;
            v112 = (v112 + 12);
            v115 = vaddq_f32(vmulq_laneq_f32(*&v146[24], v114, 2), vaddq_f32(vmulq_n_f32(*v146, v114.f32[0]), vmulq_lane_f32(*&v146[12], *v114.f32, 1)));
            v110 = vminq_f32(v110, v115);
            v113 = vmaxq_f32(v113, v115);
            --v111;
          }

          while (v111);
        }

        v119 = vdupq_lane_s32(v16, 0);
        v120 = vsubq_f32(v110, v119);
        v121.i64[0] = *(a3 + 16);
        v121.i64[1] = *(a3 + 24);
        v122 = vaddq_f32(vaddq_f32(v119, v113), v121);
        v123 = vaddq_f32(v120, v121);
        v124.i64[0] = 0x3F0000003F000000;
        v124.i64[1] = 0x3F0000003F000000;
        v125 = vmulq_f32(vaddq_f32(v122, v123), v124);
        v126 = vmulq_n_f32(vsubq_f32(v122, v123), v17 * 0.5);
        v127 = vaddq_f32(v125, v126);
        v128 = vsubq_f32(v125, v126);
        v128.i32[3] = v127.i32[0];
        *a1 = v128;
        v83 = vextq_s8(v127, v127, 4uLL).u64[0];
        goto LABEL_41;
      }

      if (!a4)
      {
        v21 = (v33 + 32);
      }

      v34 = (a2 + 4);
      v35 = a3;
      v36 = v21;
      v138 = v16;
      v141 = *&a6;
    }

    else
    {
      if (v20 != 5)
      {
        if (v20 != 6)
        {
          if (v20 != 7)
          {
            return;
          }

          goto LABEL_23;
        }

        v139 = v16;
        v142 = *&a6;
        v81 = *(a2 + 24);
        v82 = COERCE_DOUBLE(vrev64_s32(*(a2 + 16)));
        *v146 = v82;
        *&v146[8] = v81;
        *&v146[12] = xmmword_1E30474D0;
        if (!a4)
        {
          v21 = (*(a2 + 8) + 32);
        }

        computeMeshBounds(a3, v21, v146, &v145, &v144, 0.0, v82, a7, a8, a9, a10, a11);
        v56 = vmulq_n_f32(vaddq_f32(vdupq_lane_s32(v139, 0), v144), v142);
        v57 = v145;
        goto LABEL_39;
      }

      v138 = v16;
      v141 = *&a6;
      if (!a4)
      {
        v21 = (*(a2 + 40) + 56);
      }

      v34 = (a2 + 4);
      v35 = a3;
      v36 = v21;
    }

    computeMeshBounds(v35, v36, v34, v146, &v145, *a5.i64, a6, a7, a8, a9, a10, a11);
    v56 = vmulq_n_f32(vaddq_f32(vdupq_lane_s32(v138, 0), v145), v141);
    v57 = *v146;
LABEL_39:
    v79 = vsubq_f32(v57, v56);
    v80 = vaddq_f32(v57, v56);
    goto LABEL_40;
  }

  if (v20 <= 0)
  {
    if (v20 == -1)
    {
LABEL_23:
      v37 = physx::shdfnd::Foundation::mInstance;

      physx::shdfnd::Foundation::error(v37, 32, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/GuBounds.cpp", 364, "Gu::GeometryUnion::computeBounds: Unknown shape type.", a13, a14, a15, a16);
      return;
    }

    if (v20)
    {
      return;
    }

    a5.f32[0] = (*(a2 + 4) + a5.f32[0]) * *&a6;
    v22 = *(a3 + 24) - a5.f32[0];
    v23 = vdup_lane_s32(*a5.f32, 0);
    *a1 = vsub_f32(*(a3 + 16), v23);
    *(a1 + 8) = v22;
    a5.f32[0] = a5.f32[0] + *(a3 + 24);
LABEL_16:
    *(a1 + 12) = vadd_f32(v23, *(a3 + 16));
    *(a1 + 20) = a5.i32[0];
    return;
  }

  if (v20 != 1)
  {
    if (v20 != 2)
    {
      return;
    }

    v24 = 0;
    v26 = *(a3 + 8);
    v25 = *(a3 + 12);
    v27 = *a3;
    v28 = *(a3 + 4);
    *v146 = ((v25 * (v25 + v25)) + -1.0) + (v27 * (v27 + v27));
    *&v146[4] = ((v27 + v27) * v28) + (v26 * (v25 + v25));
    *&v146[8] = ((v27 + v27) * v26) - (v28 * (v25 + v25));
    v30 = *(a2 + 4);
    v29 = *(a2 + 8);
    do
    {
      v145.f32[v24] = ((v30 + (fabsf(*&v146[v24 * 4]) * v29)) + *v16.i32) * v17;
      ++v24;
    }

    while (v24 != 3);
    v31 = v145.f32[2];
    v32 = *(a3 + 24) - v145.f32[2];
    v23 = *v145.f32;
    *a1 = vsub_f32(*(a3 + 16), *v145.f32);
    *(a1 + 8) = v32;
    a5.f32[0] = v31 + *(a3 + 24);
    goto LABEL_16;
  }

  v38 = *a3;
  v39 = *(a3 + 4);
  v40 = v38 + v38;
  v42 = *(a3 + 8);
  v41 = *(a3 + 12);
  v43 = v41 + v41;
  v44 = ((v41 * (v41 + v41)) + -1.0) + (v38 * (v38 + v38));
  v45 = ((v38 + v38) * v39) + (v42 * v43);
  v46 = (v40 * v42) - (v39 * v43);
  v47 = ((*(a3 + 20) * v45) + (*(a3 + 16) * v44)) + (*(a3 + 24) * v46);
  v48 = -v47;
  v49 = fabsf(v44);
  v50 = fabsf(v45);
  v51 = fabsf(v46);
  if (v49 > 1.0 && v50 < 0.000001 && v51 < 0.000001)
  {
    if (v44 > 0.0)
    {
      v52 = v47 + *v16.i32;
      v53 = -8.5071e37;
      v54 = 8.5071e37;
      v55 = 8.5071e37;
LABEL_66:
      v117 = -8.5071e37;
      goto LABEL_67;
    }

    v53 = v48 - *v16.i32;
    v117 = -8.5071e37;
    v52 = 8.5071e37;
    v54 = 8.5071e37;
    v55 = 8.5071e37;
    v118 = -8.5071e37;
    goto LABEL_68;
  }

  if (v49 < 0.000001 && v50 > 1.0 && v51 < 0.000001)
  {
    if (v45 <= 0.0)
    {
      v117 = v48 - *v16.i32;
      v53 = -8.5071e37;
      v52 = 8.5071e37;
      v54 = 8.5071e37;
      v55 = 8.5071e37;
LABEL_67:
      v118 = -8.5071e37;
      goto LABEL_68;
    }

    v54 = v47 + *v16.i32;
    v53 = -8.5071e37;
    v52 = 8.5071e37;
    goto LABEL_65;
  }

  v53 = -8.5071e37;
  v52 = 8.5071e37;
  if (v49 >= 0.000001 || v50 >= 0.000001)
  {
    v54 = 8.5071e37;
LABEL_65:
    v55 = 8.5071e37;
    goto LABEL_66;
  }

  v116 = v51 <= 1.0;
  v54 = 8.5071e37;
  v55 = 8.5071e37;
  v117 = -8.5071e37;
  v118 = -8.5071e37;
  if (!v116)
  {
    if (v46 > 0.0)
    {
      v55 = v47 + *v16.i32;
      v53 = -8.5071e37;
      v52 = 8.5071e37;
      v54 = 8.5071e37;
      goto LABEL_66;
    }

    v118 = v48 - *v16.i32;
    v53 = -8.5071e37;
    v52 = 8.5071e37;
    v54 = 8.5071e37;
    v55 = 8.5071e37;
    v117 = -8.5071e37;
  }

LABEL_68:
  if (v17 != 1.0)
  {
    v129 = (v52 + v53) * 0.5;
    v130 = (v54 + v117) * 0.5;
    v131 = (v55 + v118) * 0.5;
    v132 = v52 - v53;
    v133 = v54 - v117;
    v134 = (v55 - v118) * 0.5;
    v135 = (v132 * 0.5) * v17;
    v136 = (v133 * 0.5) * v17;
    v137 = v134 * v17;
    v53 = v129 - v135;
    v117 = v130 - v136;
    v118 = v131 - (v134 * v17);
    v52 = v129 + v135;
    v54 = v130 + v136;
    v55 = v131 + v137;
  }

  *a1 = v53;
  *(a1 + 4) = v117;
  *(a1 + 8) = v118;
  *(a1 + 12) = v52;
  *(a1 + 16) = v54;
  *(a1 + 20) = v55;
}

int32x4_t computeScaledMatrix(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, int32x4_t a9)
{
  a9.i32[0] = *(a2 + 8);
  v11 = *(a2 + 12);
  v12 = *(a2 + 20);
  *v9.i8 = vadd_f32(v11, v11);
  v13 = vmul_f32(v11, __PAIR64__(v9.u32[1], v11.u32[0]));
  v14 = vadd_f32(v11, __PAIR64__(v9.u32[1], v11.u32[0]));
  *v10.i8 = vext_s8(v13, v14, 4uLL);
  v15 = vmul_f32(v11, v14).f32[0];
  v16 = vmul_n_f32(v12, v14.f32[0]);
  *v9.i8 = vrev64_s32(vmul_lane_f32(v12, *v9.i8, 1));
  v11.i32[0] = 1.0;
  v17 = vmul_n_f32(v12, vadd_f32(v12, v12).f32[0]);
  v18.i32[0] = vsub_f32(v11, *v10.i8).u32[0];
  *v10.i8 = vmul_f32(v11, *v10.i8);
  v18.i32[1] = v10.i32[1];
  v19 = vsub_f32(v18, v17);
  v20 = 1.0 - v15;
  v18.f32[0] = v20;
  *v10.i8 = vext_s8(vadd_f32(*v10.i8, v17), vsub_f32(v18, v17), 4uLL);
  v21 = vsub_f32(v16, *v9.i8).f32[0];
  v22 = vadd_f32(v16, *v9.i8);
  v18.f32[0] = *a9.i32 * v21;
  v23 = __PAIR64__(v22.u32[1], LODWORD(v21));
  *v13.i32 = v20 - *&v13.i32[1];
  v24 = vmuls_lane_f32(*a9.i32, v22, 1);
  v25 = *v13.i32 * *a9.i32;
  v26 = *a2;
  v22.i32[1] = vsub_f32(*&v9, v16).i32[1];
  v27 = vmul_f32(*a2, v22);
  *a9.i8 = vadd_f32(vadd_f32(vmul_n_f32(v19, v27.f32[0]), vmul_lane_f32(*v10.i8, v27, 1)), vmul_n_f32(v23, *v13.i32 * *a9.i32));
  v28 = vzip1q_s32(a9, a9);
  v28.i32[2] = a9.i32[0];
  v29.i32[0] = v19.i32[0];
  v29.i32[1] = HIDWORD(*a2);
  v30 = vmul_f32(vzip1_s32(*a2, *v10.i8), v29);
  *v9.i8 = vadd_f32(vadd_f32(vmul_n_f32(v19, v30.f32[0]), vmul_lane_f32(*v10.i8, v30, 1)), vmul_n_f32(v23, v18.f32[0]));
  v31 = vzip1q_s32(v9, v9);
  v31.i32[2] = v9.i32[0];
  v26.i32[1] = v10.i32[1];
  v32 = vmul_f32(v26, vzip2_s32(v19, *a2));
  *v10.i8 = vadd_f32(vadd_f32(vmul_n_f32(v19, v32.f32[0]), vmul_lane_f32(*v10.i8, v32, 1)), vmul_n_f32(v23, v24));
  v33 = vzip1q_s32(v10, v10);
  v33.i32[2] = v10.i32[0];
  v18.f32[0] = vaddv_f32(vmul_f32(v22, v30)) + (*v13.i32 * v18.f32[0]);
  v34 = vaddv_f32(vmul_f32(v22, v32)) + (*v13.i32 * v24);
  v19.f32[0] = vaddv_f32(vmul_f32(v22, v27)) + (*v13.i32 * v25);
  v35.i64[0] = *a1;
  v35.i32[2] = *(a1 + 8);
  v35.i32[3] = *a1;
  v36.i64[0] = *(a1 + 12);
  v36.i32[2] = *(a1 + 20);
  v36.i32[3] = v36.i32[0];
  v37.i64[0] = *(a1 + 24);
  v37.i32[2] = *(a1 + 32);
  v37.i32[3] = v37.i32[0];
  v38 = vaddq_f32(vaddq_f32(vmulq_f32(v35, v31), vmulq_f32(v33, v36)), vmulq_f32(v28, v37));
  v28.f32[0] = ((*(a1 + 8) * v18.f32[0]) + (v34 * v36.f32[2])) + (v19.f32[0] * v37.f32[2]);
  *v36.f32 = vrev64_s32(*a1);
  v36.i32[2] = *(a1 + 8);
  v36.i32[3] = v36.i32[0];
  v39.i32[0] = vdup_lane_s32(*v9.i8, 1).u32[0];
  v39.i32[1] = v18.i32[0];
  v39.i64[1] = v39.i64[0];
  v40.i32[0] = vdup_lane_s32(*v10.i8, 1).u32[0];
  v40.f32[1] = v34;
  v40.i64[1] = v40.i64[0];
  *v41.f32 = vrev64_s32(*(a1 + 12));
  v41.i32[2] = *(a1 + 20);
  v42 = vmulq_f32(v36, v39);
  v41.i32[3] = v41.i32[0];
  v39.i32[0] = vdup_lane_s32(*a9.i8, 1).u32[0];
  v39.i32[1] = v19.i32[0];
  v39.i64[1] = v39.i64[0];
  *v43.f32 = vrev64_s32(*v37.f32);
  v43.i64[1] = __PAIR64__(v43.u32[0], v37.u32[2]);
  v44 = vaddq_f32(vaddq_f32(v42, vmulq_f32(v40, v41)), vmulq_f32(v39, v43));
  result = vuzp1q_s32(v44, vrev64q_s32(v44));
  *a1 = v38;
  *(a1 + 16) = result;
  *(a1 + 32) = v28.i32[0];
  return result;
}

float32x4_t computeMeshBounds(int32x2_t *a1, _OWORD *a2, _DWORD *a3, float32x4_t *a4, float32x4_t *a5, double a6, double a7, double a8, double a9, double a10, double a11, int32x4_t a12)
{
  v16 = vdup_lane_s32(*a1, 1);
  v17 = vdup_laneq_s32(*a1->i8, 2);
  v18 = vdup_laneq_s32(*a1->i8, 3);
  _Q4 = vaddq_f32(*a1->i8, *a1->i8);
  v20 = vdup_lane_s32(vmul_f32(*a1, *_Q4.f32), 0);
  v21 = vmul_lane_f32(v16, *_Q4.f32, 1);
  *a12.i8 = vmul_laneq_f32(v17, _Q4, 2);
  v22 = vmul_n_f32(v16, _Q4.f32[0]);
  v23 = vmul_n_f32(v17, _Q4.f32[0]);
  v24 = vmul_n_f32(v18, _Q4.f32[0]);
  v25 = vmul_lane_f32(v17, *_Q4.f32, 1);
  v26 = vmul_lane_f32(v18, *_Q4.f32, 1);
  v27 = vmul_laneq_f32(v18, _Q4, 2);
  __asm { FMOV            V4.2S, #1.0 }

  v32 = vsub_f32(*_Q4.f32, v20);
  v33 = COERCE_DOUBLE(vadd_f32(v22, v27));
  LODWORD(v34) = vsub_f32(v23, v26).u32[0];
  v35 = COERCE_DOUBLE(vsub_f32(v22, v27));
  LODWORD(v39) = vsub_f32(v32, *a12.i8).u32[0];
  v36 = vadd_f32(v25, v24).u32[0];
  *&v37 = vsub_f32(v32, v21).u32[0];
  v38 = COERCE_DOUBLE(vext_s8(vadd_f32(v23, v26), vsub_f32(v25, v24), 4uLL));
  a12.i32[0] = a12.i32[1];
  *v45 = (1.0 - v21.f32[1]) - *&a12.i32[1];
  *&v45[4] = LODWORD(v33);
  HIDWORD(v34) = HIDWORD(v35);
  *(&v39 + 1) = v38;
  DWORD1(v39) = v36;
  *&v45[8] = v34;
  *&v45[16] = v39;
  *&v45[32] = LODWORD(v37);
  if ((a3[1] - 1065353216) | (*a3 - 1065353216) | (a3[2] - 1065353216))
  {
    v21.f32[0] = (1.0 - v21.f32[1]) - *&a12.i32[1];
    computeScaledMatrix(v45, a3, v37, v35, v38, *&v39, v33, *&v21, a12);
  }

  *v40.f32 = a1[2];
  v40.i64[1] = a1[3].u32[0];
  v41 = *v45;
  v42 = *&v45[12];
  v43 = *&v45[24];
  *a4 = vaddq_f32(v40, vaddq_f32(vaddq_f32(vmulq_n_f32(*v45, COERCE_FLOAT(*a2)), vmulq_lane_f32(*&v45[12], *a2, 1)), vmulq_laneq_f32(*&v45[24], *a2, 2)));
  result = vaddq_f32(vabsq_f32(vmulq_laneq_f32(v43, *(a2 + 12), 2)), vaddq_f32(vabsq_f32(vmulq_n_f32(v41, COERCE_FLOAT(*(a2 + 12)))), vabsq_f32(vmulq_lane_f32(v42, *(a2 + 12), 1))));
  *a5 = result;
  return result;
}

float physx::Gu::computeBoundsWithCCDThreshold(float32x2_t *a1, float32x2_t *a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, float32x4_t a9, double a10, double a11, double a12, double a13, double a14, int32x4_t a15)
{
  a9.i64[0] = 0;
  LODWORD(a10) = 1.0;
  physx::Gu::computeBounds(&v33, a3, a4, a5, a9, a10, a11, a12, a13, a14, a15, a5, a6, a7, a8, v31);
  v21 = v34;
  v22 = v36;
  v23 = (v34 + v36) * 0.5;
  v24 = v33;
  v25 = v35;
  *a1 = vmul_f32(vadd_f32(v33, v35), 0x3F0000003F000000);
  a1[1].f32[0] = v23;
  *a2 = vmul_f32(vsub_f32(v25, v24), 0x3F0000003F000000);
  a2[1].f32[0] = (v22 - v21) * 0.5;
  v26 = *a3;
  result = 3.4028e38;
  if (*a3 <= 3)
  {
    if (v26 > 1)
    {
      if (v26 != 2)
      {
        if (v26 != 3)
        {
          return result;
        }

        v28 = *(a3 + 4);
        if (v28 >= *(a3 + 8))
        {
          v28 = *(a3 + 8);
        }

        if (v28 >= *(a3 + 12))
        {
          v28 = *(a3 + 12);
        }

        return v28 * 0.75;
      }

      goto LABEL_20;
    }

    if (v26 != -1)
    {
      if (v26)
      {
        return result;
      }

LABEL_20:
      v28 = *(a3 + 4);
      return v28 * 0.75;
    }

LABEL_19:
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 32, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/GuBounds.cpp", 440, "Gu::GeometryUnion::computeBounds: Unknown shape type.", v18, v19, v20, v32);
    return 3.4028e38;
  }

  if (v26 > 5)
  {
    if (v26 != 6)
    {
      if (v26 != 7)
      {
        return result;
      }

      goto LABEL_19;
    }

    return 0.0;
  }

  if (v26 == 4)
  {
    v29 = *(a3 + 12);
    v30 = *(a3 + 4);
    if (v30 >= *(a3 + 8))
    {
      v30 = *(a3 + 8);
    }

    if (v29 >= v30)
    {
      v29 = v30;
    }

    v28 = *(*(a3 + 32) + 88) * v29;
    return v28 * 0.75;
  }

  if (v26 == 5)
  {
    return 0.0;
  }

  return result;
}

uint64_t physx::Gu::ShapeData::ShapeData(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, float32x4_t a6, double a7, int32x4_t a8, int32x4_t a9, float32x4_t _Q6, int32x4_t _Q7)
{
  v15 = fabsf(*(a3 + 12));
  if (v15 >= 1.0)
  {
    __asm { FMOV            V7.2S, #1.0 }

    v36 = 0;
    v35.i32[0] = 1.0;
    v37 = 20;
    a6.i64[0] = 0;
    _Q6.i64[0] = 0;
  }

  else
  {
    v16 = vdup_lane_s32(*a3, 1);
    v17 = vdup_laneq_s32(*a3, 2);
    v18 = vdup_laneq_s32(*a3, 3);
    _Q6 = vaddq_f32(*a3, *a3);
    v19 = vdup_lane_s32(vmul_f32(*a3, *_Q6.f32), 0);
    v20 = vmul_lane_f32(v16, *_Q6.f32, 1);
    v21 = vmul_laneq_f32(v17, _Q6, 2);
    v22 = vmul_n_f32(v16, _Q6.f32[0]);
    v23 = vmul_n_f32(v17, _Q6.f32[0]);
    v24 = vmul_n_f32(v18, _Q6.f32[0]);
    v25 = vmul_lane_f32(v17, *_Q6.f32, 1);
    v26 = vmul_lane_f32(v18, *_Q6.f32, 1);
    v27 = vmul_laneq_f32(v18, _Q6, 2);
    __asm { FMOV            V6.2S, #1.0 }

    v35 = vsub_f32(*_Q6.f32, v19);
    *_Q6.f32 = vadd_f32(v22, v27);
    v31 = vsub_f32(v23, v26);
    v32 = vsub_f32(v22, v27);
    v33 = vsub_f32(v35, v21);
    v34 = vadd_f32(v25, v24);
    v35.i32[0] = vsub_f32(v35, v20).u32[0];
    *a6.f32 = vext_s8(vadd_f32(v23, v26), vsub_f32(v25, v24), 4uLL);
    v25.f32[0] = (1.0 - v20.f32[1]) - v21.f32[1];
    *(a1 + 20) = v31.i32[0];
    v36 = vext_s8(v32, *_Q6.f32, 4uLL);
    *_Q7.i8 = vdup_lane_s32(v33, 0);
    _Q7.i32[0] = v25.i32[0];
    *_Q6.f32 = vzip1_s32(v34, v31);
    v37 = 48;
  }

  v38 = __PAIR64__(v36.u32[1], _Q7.u32[0]);
  *(a1 + 12) = __PAIR64__(v36.u32[1], _Q7.u32[0]);
  *(a1 + v37) = 0;
  *(a1 + 24) = v36.i32[0];
  v39 = vdup_lane_s32(*_Q7.i8, 1).u32[0];
  v40.i64[1] = a6.i64[0];
  v40.i32[1] = _Q6.i32[0];
  *(a1 + 28) = v40;
  *(a1 + 44) = v35.i32[0];
  v40.i64[0] = *(a3 + 16);
  *(a1 + 48) = v40.i64[0];
  a8.i32[0] = *(a3 + 24);
  *(a1 + 56) = a8.i32[0];
  v41 = *a2;
  if (*a2 > 2)
  {
    if (v41 == 3)
    {
      v67 = vdupq_n_s32(0x3F8147AEu);
      v68 = vmulq_f32(vaddq_f32(vdupq_lane_s32(*&a4, 0), vaddq_f32(vaddq_f32(vabsq_f32(vmulq_n_f32(*(a1 + 12), *(a2 + 4))), vabsq_f32(vmulq_n_f32(*(a1 + 24), *(a2 + 8)))), vabsq_f32(vmulq_n_f32(*(a1 + 36), *(a2 + 12))))), v67);
      v69 = *(a1 + 48);
      v70 = vsubq_f32(v69, v68);
      v71 = vaddq_f32(v69, v68);
      v70.i32[3] = v71.i32[0];
      *(a1 + 72) = v70;
      *(a1 + 88) = vextq_s8(v71, v71, 4uLL).u64[0];
      *(a1 + 96) = v71.i32[3];
      v71.i32[0] = *(a2 + 12);
      *(a1 + 68) = v71.i32[0];
      v51 = *v71.i32 * 1.01;
      v69.i64[0] = *(a2 + 4);
      *(a1 + 60) = v69.i64[0];
      *a1 = vmul_f32(*v69.f32, *v67.f32);
      goto LABEL_19;
    }

    if (v41 == 4)
    {
      _X2 = *(a2 + 32);
      __asm { PRFM            #0, [X2,#0x20] }

      v54 = *(a2 + 4);
      v55 = *(a2 + 12);
      if (v54.f32[0] == 1.0 && (v54.f32[1] == 1.0 ? (_ZF = v55 == 1.0) : (_ZF = 0), _ZF))
      {
        v57 = *(_X2 + 40);
        v58 = *(_X2 + 32);
        v59 = vrev64_s32(v58);
        v60 = v35.f32[0] * v57;
        v61 = vadd_f32(vadd_f32(vmul_f32(v36, v59), vmul_f32(*_Q7.i8, v58)), vmul_n_f32(*a6.f32, v57));
        v62 = vaddv_f32(vmul_f32(*_Q6.f32, v59)) + v60;
        v36.i32[1] = _Q7.i32[1];
        v63 = v36;
      }

      else
      {
        v72 = *(a2 + 16);
        v73 = *(a2 + 20);
        v74 = v72 + v72;
        v75 = v73 + v73;
        v76 = v73 * (v73 + v73);
        v11.f32[0] = (v72 + v72) * v73;
        v77 = 1.0 - v76;
        v78 = 1.0 - (v72 * (v72 + v72));
        v79.f32[0] = v78 - v76;
        v80 = v55 * (v78 - v76);
        v81 = *(_X2 + 40);
        v82 = *(a2 + 24);
        v83 = vrev64_s32(vmul_n_f32(v82, v74));
        v84 = vmul_n_f32(v82, v75);
        v85 = vmul_n_f32(vrev64_s32(v82), vadd_f32(v82, v82).f32[0]);
        v86 = vadd_f32(v11, v85);
        v11.f32[1] = v77;
        v87 = vsub_f32(v11, v85);
        v11.f32[1] = v78;
        v88 = vext_s8(vsub_f32(v11, v85), v86, 4uLL);
        v89 = vadd_f32(v83, v84);
        v90 = vsub_f32(v83, v84);
        v84.i32[0] = vsub_f32(v84, v83).u32[0];
        v91 = vmul_lane_f32(v88, v54, 1);
        v92 = vmul_n_f32(v91, v84.f32[0]);
        v84.i32[1] = v89.i32[1];
        v83.i32[0] = vdup_lane_s32(v89, 1).u32[0];
        v93 = vmul_n_f32(v87, v54.f32[0]);
        v94 = vmul_lane_f32(v93, v89, 1);
        v89.i32[1] = v90.i32[1];
        v95 = vmul_f32(vrev64_s32(v54), v84);
        v96 = vmul_n_f32(v89, v55);
        v97 = vext_s8(v88, v87, 4uLL);
        v98 = vzip2_s32(v91, v93);
        v99 = vrev64_s32(vmul_f32(v97, v98));
        v100 = vzip1_s32(v91, v93);
        v101 = vrev64_s32(vmul_f32(v97, v100));
        v88.i32[1] = v87.i32[1];
        v102 = vmul_f32(v88, v98);
        v103 = vmul_f32(v88, v100);
        v104 = vadd_f32(vmul_f32(v88, v95), vrev64_s32(vmul_f32(v97, v95)));
        v105 = vadd_f32(vmul_lane_f32(v89, v96, 1), vadd_f32(v102, v99));
        v106 = vadd_f32(vmul_n_f32(v89, v96.f32[0]), vadd_f32(v103, v101));
        v107 = vadd_f32(vmul_n_f32(v89, v80), v104);
        v108 = vadd_f32(vmul_n_f32(v96, v79.f32[0]), vadd_f32(v94, v92));
        v109 = vmul_f32(*_Q6.f32, v106);
        v110 = vmul_f32(*_Q6.f32, v108);
        v83.i32[1] = _Q6.i32[1];
        v111 = vzip1_s32(v84, *_Q6.f32);
        _Q6.i32[0] = v35.i32[0];
        v112 = vmul_f32(*_Q6.f32, vzip1_s32(v107, v105));
        v63 = vadd_f32(vmul_f32(*a6.f32, v107), vadd_f32(vmul_f32(__PAIR64__(v36.u32[1], _Q7.u32[0]), v105), vmul_f32(__PAIR64__(_Q7.u32[1], v36.u32[0]), v106)));
        v113 = vadd_f32(vmul_f32(*a6.f32, vrev64_s32(v107)), vadd_f32(vmul_f32(__PAIR64__(v36.u32[1], _Q7.u32[0]), vrev64_s32(v105)), vmul_f32(__PAIR64__(_Q7.u32[1], v36.u32[0]), vrev64_s32(v106))));
        *_Q6.f32 = vadd_f32(v112, vadd_f32(vdup_lane_s32(v112, 1), v109));
        v114 = vadd_f32(vmul_f32(v36, v108), vmul_f32(*_Q7.i8, vrev64_s32(v108)));
        *_Q7.i8 = vadd_f32(vdup_lane_s32(v110, 1), v110);
        v115 = *(_X2 + 32);
        v116 = vrev64_s32(v115);
        v117 = vmul_f32(v116, *_Q6.f32);
        v118 = vadd_f32(vmul_f32(v116, v63), vmul_f32(v115, v113));
        v119 = vmul_f32(v83, vzip2_s32(v95, v105));
        v95.i32[1] = v106.i32[1];
        v79.i32[1] = v35.i32[0];
        v107.f32[0] = v80;
        v120 = vadd_f32(vmul_f32(v79, v107), vadd_f32(v119, vmul_f32(v111, v95)));
        *a6.f32 = vadd_f32(vmul_n_f32(*a6.f32, v120.f32[0]), v114);
        v116.i32[0] = v35.i32[0];
        v35 = vadd_f32(vmul_f32(v116, v120), vzip1_s32(*_Q7.i8, v117));
        *_Q7.i32 = v81 * v35.f32[0];
        v61 = vadd_f32(vmul_n_f32(*a6.f32, v81), v118);
        v38 = __PAIR64__(v63.u32[1], v113.u32[0]);
        v62 = *_Q7.i32 + v35.f32[1];
        v63.i32[1] = v113.i32[1];
        _Q6.i32[1] = v120.i32[1];
      }

      *v40.f32 = vadd_f32(*v40.f32, v61);
      v40.f32[2] = *a8.i32 + v62;
      a8.i32[0] = *(_X2 + 52);
      v121 = v35.f32[0] * *a8.i32;
      *a6.f32 = vabs_f32(vmul_n_f32(*a6.f32, *a8.i32));
      a8.i64[0] = *(_X2 + 44);
      *a9.i8 = vmul_f32(vrev64_s32(*_Q6.f32), *a8.i8);
      *_Q6.f32 = vabs_f32(vmul_n_f32(v38, *a8.i32));
      *a6.f32 = vadd_f32(vadd_f32(*_Q6.f32, vabs_f32(vmul_lane_f32(v63, *a8.i8, 1))), *a6.f32);
      *a8.i8 = vabs_f32(*a9.i8);
      *a8.i32 = vaddv_f32(*a8.i8);
      a6.f32[2] = *a8.i32 + fabsf(v121);
      v128 = vdupq_n_s32(0x3F8147AEu);
      v122 = vmulq_f32(vaddq_f32(vdupq_lane_s32(*&a4, 0), a6), v128);
      v123 = vsubq_f32(v40, v122);
      v124 = vaddq_f32(v40, v122);
      v123.i32[3] = v124.i32[0];
      *(a1 + 72) = v123;
      v123.i64[0] = vextq_s8(v124, v124, 4uLL).u64[0];
      *(a1 + 88) = v123.i64[0];
      *(a1 + 96) = v124.i32[3];
      physx::Gu::computeOBBAroundConvex(v129, a2, _X2, a3, *v124.i64, *v123.i64, a6, *v40.i64, a8, a9, _Q6, _Q7);
      v125 = v129[1];
      *(a1 + 12) = v129[0];
      *(a1 + 28) = v125;
      v126 = v131 * 1.01;
      *a1 = vmul_f32(v130, *v128.f32);
      *(a1 + 8) = v126;
      *(a1 + 44) = v129[2];
    }
  }

  else if (v41)
  {
    if (v41 == 2)
    {
      v36.i32[0] = *(a1 + 12);
      *a6.f32 = vabs_f32(v36);
      v42 = *(a2 + 8);
      *a6.f32 = vmul_n_f32(*a6.f32, v42);
      a6.f32[2] = fabsf(_Q6.f32[1]) * v42;
      v40.i32[2] = a8.i32[0];
      *&a4 = *(a2 + 4) + *&a4;
      v43 = vmulq_f32(vaddq_f32(a6, vdupq_lane_s32(*&a4, 0)), vdupq_n_s32(0x3F8147AEu));
      v44 = vsubq_f32(v40, v43);
      v45 = vaddq_f32(v40, v43);
      v44.i32[3] = v45.i32[0];
      *(a1 + 72) = v44;
      *(a1 + 88) = vextq_s8(v45, v45, 4uLL).u64[0];
      *(a1 + 96) = v45.i32[3];
      v45.i32[0] = *a3;
      v44.f32[0] = *v45.i32 + *v45.i32;
      v46 = *(a3 + 12);
      v47 = v46 + v46;
      *v45.i32 = ((v46 * (v46 + v46)) + -1.0) + (*v45.i32 * (*v45.i32 + *v45.i32));
      v48 = *(a2 + 8);
      *v45.i32 = *v45.i32 * v48;
      *(a1 + 100) = *(a3 + 16) + *v45.i32;
      v49 = *(a3 + 4);
      v50.i32[0] = vdup_lane_s32(v49, 1).u32[0];
      v50.f32[1] = -v49.f32[0];
      *v44.f32 = vmul_n_f32(vmla_n_f32(vmul_n_f32(v49, v44.f32[0]), v50, v47), v48);
      *(a1 + 104) = vadd_f32(*(a3 + 20), *v44.f32);
      v49.f32[0] = *(a3 + 24) - v44.f32[1];
      *v44.f32 = vdup_lane_s32(*v44.f32, 0);
      v44.i32[0] = v45.i32[0];
      *(a1 + 112) = vsub_f32(*(a3 + 16), *v44.f32);
      v45.i32[0] = *(a2 + 4);
      *(a1 + 120) = v49.i32[0];
      *(a1 + 124) = v45.i32[0];
      *(a1 + 60) = v48;
      v44.f32[0] = v48 + *v45.i32;
      v51 = *v45.i32 * 1.01;
      *a1 = v44.f32[0] * 1.01;
      *(a1 + 4) = v51;
LABEL_19:
      *(a1 + 8) = v51;
    }
  }

  else
  {
    v40.i32[2] = a8.i32[0];
    *&a4 = *(a2 + 4) + *&a4;
    v64 = vmulq_f32(vaddq_f32(vdupq_lane_s32(*&a4, 0), 0), vdupq_n_s32(0x3F8147AEu));
    v65 = vsubq_f32(v40, v64);
    v66 = vaddq_f32(v40, v64);
    v65.i32[3] = v66.i32[0];
    *(a1 + 72) = v65;
    *(a1 + 88) = vextq_s8(v66, v66, 4uLL).u64[0];
    *(a1 + 96) = v66.i32[3];
    v66.i64[0] = *(a3 + 16);
    v66.i32[2] = *(a3 + 24);
    v66.i32[3] = *(a2 + 4);
    *(a1 + 100) = v66;
  }

  *(a1 + 96) = v15 < 1.0;
  *(a1 + 98) = *a2;
  return a1;
}

float physx::Gu::Box::create(physx::Gu::Box *this, const Capsule *a2)
{
  v2 = (*(a2 + 2) + *(a2 + 5)) * 0.5;
  *(this + 36) = vmul_f32(vadd_f32(*a2, *(a2 + 12)), 0x3F0000003F000000);
  *(this + 11) = v2;
  v3 = vsub_f32(*(a2 + 12), *a2);
  v4 = *(a2 + 5) - *(a2 + 2);
  v5 = sqrtf((COERCE_FLOAT(vmul_f32(v3, v3).i32[1]) + (v3.f32[0] * v3.f32[0])) + (v4 * v4));
  if (v5 == 0.0)
  {
    *this = xmmword_1E3047670;
    *(this + 1) = xmmword_1E3047670;
    *(this + 8) = 1065353216;
  }

  else
  {
    v6 = v4 * (1.0 / v5);
    v7 = vmul_n_f32(v3, 1.0 / v5);
    *this = v7;
    *(this + 2) = v6;
    v8 = v7.f32[1];
    if (fabsf(v7.f32[1]) <= 0.9999)
    {
      v11 = -v7.f32[0];
      *(this + 3) = v6;
      *(this + 4) = 0;
      *(this + 5) = -v7.f32[0];
      v12 = sqrtf(((v6 * v6) + 0.0) + (v7.f32[0] * v7.f32[0]));
      v7.f32[0] = v6;
      v13 = v11;
      if (v12 > 0.0)
      {
        v7 = vmul_n_f32(LODWORD(v6), 1.0 / v12);
        *(this + 12) = v7;
        v13 = (1.0 / v12) * v11;
        *(this + 5) = v13;
      }

      *(this + 6) = v8 * v13;
      *(this + 7) = (v13 * v11) + (v6 * v7.f32[0]);
      *(this + 8) = -(v8 * v7.f32[0]);
    }

    else
    {
      *(this + 12) = xmmword_1E3047670;
      *(this + 7) = v6;
      *(this + 8) = -v7.f32[1];
      v9 = sqrtf((v6 * v6) + (v7.f32[1] * v7.f32[1]));
      if (v9 > 0.0)
      {
        v10 = 1.0 / v9;
        *(this + 6) = v10 * 0.0;
        *(this + 7) = v6 * v10;
        *(this + 8) = v10 * -v7.f32[1];
      }
    }
  }

  v14 = *(a2 + 6);
  result = v14 + (v5 * 0.5);
  *(this + 12) = result;
  *(this + 13) = v14;
  *(this + 14) = v14;
  return result;
}

float physx::Gu::computeOBBPoints(uint64_t a1, float32x2_t *a2, float *a3, float32x2_t *a4, float32x2_t *a5, float32x2_t *a6)
{
  v6 = *a3;
  v7 = a3[1];
  v8 = *a3 * a4[1].f32[0];
  v9 = v7 * a5[1].f32[0];
  v10 = a3[2];
  v11 = v10 * a6[1].f32[0];
  v12 = a2[1].f32[0] - v8;
  *(a1 + 92) = v12;
  *(a1 + 56) = v12;
  *(a1 + 44) = v12;
  *(a1 + 8) = v12;
  v13 = v8 + a2[1].f32[0];
  v14 = vmul_n_f32(*a4, v6);
  v15 = vmul_n_f32(*a5, v7);
  v16 = vmul_n_f32(*a6, v10);
  v17 = vsub_f32(*a2, v14);
  *(a1 + 84) = v17;
  *(a1 + 48) = v17;
  *(a1 + 36) = v17;
  *a1 = v17;
  v18 = vadd_f32(v15, v16);
  *(a1 + 8) = v12 - (v9 + v11);
  v19 = vadd_f32(v14, *a2);
  *a1 = vsub_f32(v17, v18);
  *(a1 + 12) = vsub_f32(v19, v18);
  *(a1 + 20) = v13 - (v9 + v11);
  *(a1 + 72) = vadd_f32(v18, v19);
  *(a1 + 80) = (v9 + v11) + v13;
  *(a1 + 84) = vadd_f32(v18, v17);
  *(a1 + 92) = (v9 + v11) + v12;
  v20 = v9 - v11;
  v21 = vsub_f32(v15, v16);
  *(a1 + 24) = vadd_f32(v21, v19);
  *(a1 + 32) = v20 + v13;
  *(a1 + 36) = vadd_f32(v21, v17);
  *(a1 + 44) = v20 + v12;
  *(a1 + 48) = vsub_f32(v17, v21);
  *(a1 + 56) = v12 - v20;
  *(a1 + 60) = vsub_f32(v19, v21);
  result = v13 - v20;
  *(a1 + 68) = result;
  return result;
}

uint64_t physx::Gu::computeBoxAroundCapsule(uint64_t this, const Capsule *a2, physx::Gu::Box *a3)
{
  v3 = (*(this + 8) + *(this + 20)) * 0.5;
  *(a2 + 36) = vmul_f32(vadd_f32(*this, *(this + 12)), 0x3F0000003F000000);
  *(a2 + 11) = v3;
  v4 = *(this + 4) - *(this + 16);
  v5 = *(this + 8) - *(this + 20);
  v6 = sqrtf(((v4 * v4) + ((*this - *(this + 12)) * (*this - *(this + 12)))) + (v5 * v5));
  v7 = *(this + 24);
  *(a2 + 12) = v7 + (v6 * 0.5);
  *(a2 + 13) = v7;
  *(a2 + 14) = v7;
  v8 = 0.0;
  if (v6 == 0.0)
  {
    v9 = 0x3F80000000000000;
    v10 = 1065353216;
    v11 = 1.0;
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
  }

  else
  {
    v10 = vsub_f32(*(this + 12), *this);
    v12 = *(this + 20) - *(this + 8);
    v15 = sqrtf((COERCE_FLOAT(vmul_f32(v10, v10).i32[1]) + (v10.f32[0] * v10.f32[0])) + (v12 * v12));
    if (v15 > 0.0)
    {
      v16 = 1.0 / v15;
      v10 = vmul_n_f32(v10, v16);
      v12 = v12 * v16;
    }

    if (fabsf(v10.f32[1]) <= 0.9999)
    {
      v19 = -v10.f32[0];
      v20 = sqrtf(((v12 * v12) + 0.0) + (v10.f32[0] * v10.f32[0]));
      v9 = LODWORD(v12);
      if (v20 <= 0.0)
      {
        v8 = -v10.f32[0];
      }

      else
      {
        v21 = 1.0 / v20;
        v9 = vmul_n_f32(LODWORD(v12), v21);
        v8 = v21 * v19;
      }

      v13 = v10.f32[1] * v8;
      v14 = (v8 * v19) + (v12 * v9.f32[0]);
      v11 = -v10.f32[1] * v9.f32[0];
    }

    else
    {
      v11 = -v10.f32[1];
      v17 = sqrtf((v12 * v12) + (v10.f32[1] * v10.f32[1]));
      v9 = 1065353216;
      if (v17 <= 0.0)
      {
        v13 = 0.0;
        v14 = v12;
      }

      else
      {
        v18 = 1.0 / v17;
        v8 = 0.0;
        v13 = (1.0 / v17) * 0.0;
        v14 = v12 * v18;
        v11 = v18 * v11;
      }
    }
  }

  *a2 = v10;
  *(a2 + 2) = v12;
  *(a2 + 12) = v9;
  *(a2 + 5) = v8;
  *(a2 + 6) = v13;
  *(a2 + 7) = v14;
  *(a2 + 8) = v11;
  return this;
}

uint64_t sweepCapsule_BoxGeom_Precise(uint64_t a1, uint64_t a2, float a3, uint64_t a4, uint64_t a5, float32x2_t *a6, uint64_t a7, uint64_t a8, __int16 *a9)
{
  if (a6->f32[0] == a6[1].f32[1] && a6->f32[1] == a6[2].f32[0] && a6[1].f32[0] == a6[2].f32[1])
  {
    v16 = vdup_lane_s32(*a2, 1);
    v17 = vdup_laneq_s32(*a2, 2);
    v18 = vdup_laneq_s32(*a2, 3);
    _Q5 = vaddq_f32(*a2, *a2);
    v20 = vdup_lane_s32(vmul_f32(*a2, *_Q5.f32), 0);
    v21 = vmul_lane_f32(v16, *_Q5.f32, 1);
    v22 = vmul_laneq_f32(v17, _Q5, 2);
    v23 = vmul_n_f32(v16, _Q5.f32[0]);
    v24 = vmul_n_f32(v17, _Q5.f32[0]);
    v25 = vmul_n_f32(v18, _Q5.f32[0]);
    v26 = vmul_lane_f32(v17, *_Q5.f32, 1);
    v27 = vmul_lane_f32(v18, *_Q5.f32, 1);
    v28 = vmul_laneq_f32(v18, _Q5, 2);
    __asm { FMOV            V5.2S, #1.0 }

    v33 = vsub_f32(*_Q5.f32, v20);
    LODWORD(v34) = vsub_f32(v24, v27).u32[0];
    LODWORD(v35) = vadd_f32(v26, v25).u32[0];
    v77.f32[0] = (1.0 - v21.f32[1]) - v22.f32[1];
    v77.i32[1] = vadd_f32(v23, v28).u32[0];
    HIDWORD(v34) = vsub_f32(v23, v28).i32[1];
    *v78 = v34;
    HIDWORD(v35) = vadd_f32(v24, v27).i32[1];
    *&v78[8] = vsub_f32(v33, v22).u32[0];
    *&v79 = v35;
    *(&v79 + 1) = vzip1_s32(vsub_f32(v26, v25), vsub_f32(v33, v21));
    *&v36 = *(a2 + 16);
    DWORD2(v36) = *(a2 + 24);
    HIDWORD(v36) = *(a1 + 4);
    v80 = v36;
    v81 = *(a1 + 8);
    LODWORD(v36) = a6[3].i32[0];
    v37 = (a8 + 48);
    v72.i16[0] = *a9;
    result = physx::Gu::sweepBoxSphere(&v77, a6, a7, (a8 + 48), (a8 + 36), &v72, *&v36, a3);
    if (!result)
    {
      return result;
    }

    v39 = -*(a8 + 44);
    *(a8 + 36) = vneg_f32(*(a8 + 36));
    *(a8 + 44) = v39;
    *(a8 + 20) = 2;
    if ((*a9 & 1) == 0)
    {
      return 1;
    }

    v40 = *v37;
    if (*v37 == 0.0)
    {
      return 1;
    }

    v41 = (v40 * *(a7 + 8)) + a6[1].f32[0];
    *v72.f32 = vadd_f32(vmul_n_f32(*a7, v40), *a6);
    v72.f32[2] = v41;
    physx::Gu::distancePointBoxSquared(v72.f32, &v80, &v80 + 12, &v77, &v75);
    v42 = (((v75.f32[0] * *v78) + (v75.f32[1] * *&v79)) + (v76 * *(&v79 + 3))) + *(&v80 + 2);
    *(a8 + 24) = vadd_f32(vadd_f32(vadd_f32(vmul_n_f32(v77, v75.f32[0]), vmul_n_f32(*&v78[4], v75.f32[1])), vmul_n_f32(*(&v79 + 4), v76)), *&v80);
    *(a8 + 32) = v42;
    v43 = 3;
    goto LABEL_12;
  }

  v44 = (a8 + 48);
  v77.i16[0] = *a9;
  result = physx::Gu::sweepCapsuleBox(a6, a2, (a1 + 4), a7, a8 + 24, (a8 + 48), a8 + 36, &v77, a3);
  if (!result)
  {
    return result;
  }

  *(a8 + 20) = 2;
  if (*a9)
  {
    v45.i32[0] = *v44;
    if (*v44 != 0.0)
    {
      v74 = a6[3].i32[0];
      *v46.i32 = *v45.i32 * *a7;
      v47 = a6[2];
      *v45.i8 = vmul_n_f32(*(a7 + 4), *v45.i32);
      v48 = vextq_s8(vextq_s8(v46, v46, 4uLL), v45, 0xCuLL);
      v48.i32[3] = v48.i32[0];
      v72 = vaddq_f32(*a6->f32, v48);
      v49 = *a2;
      v50 = vdup_lane_s32(*a2, 1);
      v73 = vadd_f32(v47, *v45.i8);
      v51 = vdup_laneq_s32(v49, 2);
      v52 = vdup_laneq_s32(v49, 3);
      _Q4 = vaddq_f32(v49, v49);
      *v49.f32 = vdup_lane_s32(vmul_f32(*v49.f32, *_Q4.f32), 0);
      v54 = vmul_lane_f32(v50, *_Q4.f32, 1);
      v55 = vmul_laneq_f32(v51, _Q4, 2);
      v56 = vmul_n_f32(v50, _Q4.f32[0]);
      v57 = vmul_n_f32(v51, _Q4.f32[0]);
      v58 = vmul_n_f32(v52, _Q4.f32[0]);
      v59 = vmul_lane_f32(v51, *_Q4.f32, 1);
      v60 = vmul_lane_f32(v52, *_Q4.f32, 1);
      v61 = vmul_laneq_f32(v52, _Q4, 2);
      __asm { FMOV            V4.2S, #1.0 }

      *v49.f32 = vsub_f32(*_Q4.f32, *v49.f32);
      LODWORD(v62) = vsub_f32(v57, v60).u32[0];
      LODWORD(v63) = vadd_f32(v59, v58).u32[0];
      v77.f32[0] = (1.0 - v54.f32[1]) - v55.f32[1];
      v77.i32[1] = vadd_f32(v56, v61).u32[0];
      HIDWORD(v62) = vsub_f32(v56, v61).i32[1];
      *v78 = v62;
      *&v78[8] = vsub_f32(*v49.f32, v55).u32[0];
      HIDWORD(v63) = vadd_f32(v57, v60).i32[1];
      *&v79 = v63;
      *(&v79 + 1) = vzip1_s32(vsub_f32(v59, v58), vsub_f32(*v49.f32, v54));
      *&v64 = *(a2 + 16);
      DWORD2(v64) = *(a2 + 24);
      HIDWORD(v64) = *(a1 + 4);
      v80 = v64;
      v81 = *(a1 + 8);
      physx::Gu::distanceSegmentBoxSquared(v72.f32, (&v72 | 0xC), &v80, (&v80 + 12), &v77, 0, &v75);
      v66 = *(a2 + 8);
      v65 = *(a2 + 12);
      v67 = (v65 * v65) + -0.5;
      v68 = *(a2 + 4);
      v69 = (((v75.f32[1] + v75.f32[1]) * v68) + (*a2 * (v75.f32[0] + v75.f32[0]))) + (v66 * (v76 + v76));
      v70 = *(a2 + 20) + (((v65 * ((v66 * (v75.f32[0] + v75.f32[0])) - (*a2 * (v76 + v76)))) + ((v75.f32[1] + v75.f32[1]) * v67)) + (v68 * v69));
      v71 = *(a2 + 24) + (((v65 * ((*a2 * (v75.f32[1] + v75.f32[1])) - (v68 * (v75.f32[0] + v75.f32[0])))) + ((v76 + v76) * v67)) + (v66 * v69));
      *(a8 + 24) = *(a2 + 16) + (((v65 * ((v68 * (v76 + v76)) - (v66 * (v75.f32[1] + v75.f32[1])))) + ((v75.f32[0] + v75.f32[0]) * v67)) + (*a2 * v69));
      *(a8 + 28) = v70;
      *(a8 + 32) = v71;
      v43 = *(a8 + 20) | 1;
LABEL_12:
      *(a8 + 20) = v43;
    }
  }

  return 1;
}

uint64_t sweepBox_SphereGeom_Precise(uint64_t a1, float32x2_t *a2, float a3, float a4, uint64_t a5, uint64_t a6, uint64_t a7, float32x2_t *a8, uint64_t a9, __int16 *a10)
{
  v15 = *(a7 + 44) - a2[3].f32[0];
  v16 = *(a7 + 16);
  *v31 = *a7;
  *&v31[16] = v16;
  v32 = *(a7 + 32);
  v33 = vsub_f32(*(a7 + 36), a2[2]);
  v34 = v15;
  v35 = *(a7 + 48);
  v36 = *(a7 + 56);
  v17 = *(a1 + 4) + a4;
  v29 = 0;
  v30 = 0.0;
  v18 = -a8[1].f32[0];
  v27 = vneg_f32(*a8);
  v28 = v18;
  v19 = (a9 + 48);
  v26 = *a10;
  v20 = physx::Gu::sweepBoxSphere(v31, &v29, &v27, (a9 + 48), (a9 + 36), &v26, v17, a3);
  if (v20)
  {
    *(a9 + 20) = 2;
    if (*a10)
    {
      v21 = *v19;
      if (*v19 != 0.0)
      {
        v22 = v21 * a8[1].f32[0];
        v23 = vmul_n_f32(*a8, v21);
        v29 = vneg_f32(v23);
        v30 = -v22;
        physx::Gu::distancePointBoxSquared(&v29, &v33, &v35, v31, &v27);
        v24 = v22 + ((((v27.f32[0] * *&v31[8]) + (v27.f32[1] * *&v31[20])) + (v28 * v32)) + *(a7 + 44));
        *(a9 + 24) = vadd_f32(v23, vadd_f32(vadd_f32(vadd_f32(vmul_n_f32(*v31, v27.f32[0]), vmul_n_f32(*&v31[12], v27.f32[1])), vmul_n_f32(*&v31[24], v28)), *(a7 + 36)));
        *(a9 + 32) = v24;
        *(a9 + 20) = 3;
      }
    }
  }

  return v20;
}

uint64_t sweepBox_CapsuleGeom_Precise(uint64_t a1, float32x2_t *a2, float a3, uint64_t a4, __int128 *a5, uint64_t a6, float32x2_t *a7, uint64_t a8, __int16 *a9)
{
  v13 = *(a6 + 44) - a2[3].f32[0];
  v14 = *(a6 + 16);
  *v42 = *a6;
  *&v42[16] = v14;
  v43 = *(a6 + 32);
  v44 = vsub_f32(*(a6 + 36), a2[2]);
  v45 = v13;
  v46 = *(a6 + 48);
  v47 = *(a6 + 56);
  LODWORD(v14) = a2->i32[0];
  v15 = a2->f32[1];
  v16 = *&v14 + *&v14;
  v18 = a2[1].f32[0];
  v17 = a2[1].f32[1];
  v19 = v17 + v17;
  *&v14 = ((v17 * (v17 + v17)) + -1.0) + (*&v14 * (*&v14 + *&v14));
  v20 = (v16 * v15) + (v18 * (v17 + v17));
  v21 = (v16 * v18) - (v15 * v19);
  v23 = *(a1 + 4);
  v22 = *(a1 + 8);
  v40[0] = *&v14 * v22;
  v40[1] = v22 * v20;
  v40[2] = v21 * v22;
  v41[0] = -(*&v14 * v22);
  v41[1] = -(v22 * v20);
  v41[2] = -(v21 * v22);
  v41[3] = v23;
  v37 = *a5;
  v38 = v44;
  v39 = v13;
  v24 = -a7[1].f32[0];
  v33 = vneg_f32(*a7);
  v34 = v24;
  v25 = (a8 + 48);
  v32 = *a9;
  v26 = physx::Gu::sweepCapsuleBox(v40, &v37, &v46, &v33, a8 + 24, (a8 + 48), &v35, &v32, a3);
  if (v26)
  {
    v27 = -v36;
    *(a8 + 36) = vneg_f32(v35);
    *(a8 + 44) = v27;
    *(a8 + 20) = 2;
    if (*a9)
    {
      v28 = *v25;
      if (*v25 != 0.0)
      {
        v29 = v28 * a7[1].f32[0];
        v44 = vadd_f32(vmul_n_f32(*a7, v28), v44);
        v45 = v29 + v45;
        physx::Gu::distanceSegmentBoxSquared(v40, v41, &v44, &v46, v42, 0, &v33);
        v30 = ((((v33.f32[0] * *&v42[8]) + (v33.f32[1] * *&v42[20])) + (v34 * v43)) + v45) + a2[3].f32[0];
        *(a8 + 24) = vadd_f32(vadd_f32(vadd_f32(vadd_f32(vmul_n_f32(*v42, v33.f32[0]), vmul_n_f32(*&v42[12], v33.f32[1])), vmul_n_f32(*&v42[24], v34)), v44), a2[2]);
        *(a8 + 32) = v30;
        *(a8 + 20) |= 1u;
      }
    }
  }

  return v26;
}

float32_t sweepBox_BoxGeom_Precise(uint64_t a1, uint64_t a2, float a3, uint64_t a4, uint64_t a5, uint64_t a6, float32x2_t *a7, float32x2_t *a8, __int16 *a9)
{
  v11 = *(a6 + 44) - *(a2 + 24);
  v12 = *(a6 + 16);
  v41[0] = *a6;
  v41[1] = v12;
  v42 = *(a6 + 32);
  v43 = vsub_f32(*(a6 + 36), *(a2 + 16));
  v44 = v11;
  v45 = *(a6 + 48);
  v13 = *a2;
  *&v12 = vdup_lane_s32(*a2, 1);
  v14 = vdup_laneq_s32(*a2, 2);
  v15 = vdup_laneq_s32(*a2, 3);
  v46 = *(a6 + 56);
  v16 = vaddq_f32(v13, v13);
  *v13.f32 = vdup_lane_s32(vmul_f32(*v13.f32, *v16.f32), 0);
  v17 = vmul_lane_f32(*&v12, *v16.f32, 1);
  v18 = vmul_laneq_f32(v14, v16, 2);
  *&v12 = vmul_n_f32(*&v12, v16.f32[0]);
  v19 = vmul_n_f32(v14, v16.f32[0]);
  v20 = vmul_n_f32(v15, v16.f32[0]);
  v21 = vmul_lane_f32(v14, *v16.f32, 1);
  v22 = vmul_lane_f32(v15, *v16.f32, 1);
  *v16.f32 = vmul_laneq_f32(v15, v16, 2);
  __asm { FMOV            V5.2S, #1.0 }

  *v13.f32 = vsub_f32(_D5, *v13.f32);
  LODWORD(v28) = vsub_f32(v19, v22).u32[0];
  LODWORD(v29) = vadd_f32(v21, v20).u32[0];
  v32[0] = (1.0 - v17.f32[1]) - v18.f32[1];
  LODWORD(v32[1]) = vadd_f32(*&v12, *v16.f32).u32[0];
  HIDWORD(v28) = vsub_f32(*&v12, *&v16).i32[1];
  v33 = v28;
  v34 = vsub_f32(*v13.f32, v18).u32[0];
  HIDWORD(v29) = vadd_f32(v19, v22).i32[1];
  v35 = v29;
  v36 = vzip1_s32(vsub_f32(v21, v20), vsub_f32(*v13.f32, v17));
  v37 = 0;
  v38 = 0;
  v39 = *(a1 + 4);
  v40 = *(a1 + 12);
  v31 = *a9;
  if (physx::Gu::sweepBoxBox(v41, v32, a7, &v31, a8, a3))
  {
    result = a8[6].f32[0];
    if (result != 0.0)
    {
      a8[3] = vadd_f32(*(a2 + 16), a8[3]);
      result = *(a2 + 24) + a8[4].f32[0];
      a8[4].f32[0] = result;
    }
  }

  return result;
}

uint64_t sweepBox_HeightFieldGeom_Precise(float32x2_t *a1, float *a2, float a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7, uint64_t a8, __int16 *a9)
{
  physx::Gu::computeSweptBox(&v72, a6 + 12, (a6 + 36), a6, a7, a3);
  if (v80 >= 0.0)
  {
    v18 = v73 - v75;
    if (v72 >= -v76)
    {
      v27 = v80 + ((v72 + 1.0) + v76);
      v28 = 0.5 / sqrtf(v27);
      v20 = v28 * (v77 - v79);
      v21 = v28 * (v78 - v74);
      v22 = v28 * v18;
      v24 = v27 * v28;
      goto LABEL_9;
    }

    v23 = v80 + ((1.0 - v72) - v76);
    v19 = 0.5 / sqrtf(v23);
    v20 = v19 * (v78 + v74);
    v21 = v19 * (v77 + v79);
    v22 = v23 * v19;
  }

  else
  {
    v16 = v73 + v75;
    if (v72 <= v76)
    {
      v25 = ((1.0 - v72) + v76) - v80;
      v26 = 0.5 / sqrtf(v25);
      v20 = v26 * v16;
      v21 = v25 * v26;
      v22 = v26 * (v77 + v79);
      v24 = v26 * (v78 - v74);
      goto LABEL_9;
    }

    v17 = ((v72 + 1.0) - v76) - v80;
    v18 = v77 - v79;
    v19 = 0.5 / sqrtf(v17);
    v20 = v17 * v19;
    v21 = v19 * v16;
    v22 = v19 * (v78 + v74);
  }

  v24 = v19 * v18;
LABEL_9:
  v29 = v21 + v21;
  v30 = v22 + v22;
  v31 = v21 * (v21 + v21);
  v32 = v22 * (v22 + v22);
  v33 = (v20 + v20) * v21;
  v34 = (v20 + v20) * v22;
  v35 = (v20 + v20) * v24;
  v36 = v29 * v22;
  v37 = v29 * v24;
  v38 = v30 * v24;
  v39 = (1.0 - v31) - v32;
  v40 = v33 + v38;
  v41 = v33 - v38;
  v42 = 1.0 - (v20 * (v20 + v20));
  v43 = v42 - v32;
  v44 = v36 + v35;
  v45 = (fabsf(v39 * v84) + fabsf(v41 * v85)) + fabsf((v34 + v37) * v86);
  v46 = (fabsf(v40 * v84) + fabsf(v43 * v85)) + fabsf((v36 - v35) * v86);
  v47 = (fabsf((v34 - v37) * v84) + fabsf(v44 * v85)) + fabsf((v42 - v31) * v86);
  v71[0] = v81 - v45;
  v71[1] = v82 - v46;
  v71[2] = v83 - v47;
  v71[3] = v81 + v45;
  v71[4] = v82 + v46;
  v71[5] = v83 + v47;
  *(a8 + 48) = 2139095039;
  v60 = a1;
  v61[0] = &unk_1F5D21570;
  v59 = a1[1];
  v48 = a1[3].f32[0];
  __asm { FMOV            V3.2S, #1.0 }

  v57 = vrev64_s32(vdiv_f32(_D3, a1[2]));
  v58 = 1.0 / v48;
  v54 = a6[1];
  v63 = *a6;
  v64 = v54;
  v65 = a6[2];
  *&v55 = *(a6 + 6);
  DWORD2(v55) = *(a6 + 14);
  HIDWORD(v55) = *a7;
  v66 = v55;
  v67 = *(a7 + 4);
  v68 = a3;
  v69 = *a9;
  v62 = 0;
  v61[1] = &v57;
  v61[2] = a2;
  v61[3] = a8;
  v70 = (a1[3].i8[4] & 2 | v69 & 0x80) != 0;
  physx::Gu::HeightFieldUtil::overlapAABBTriangles(&v57, a2, v71, 1, v61);
  return v62;
}

float32x2_t physx::Gu::computeSweptBox(uint64_t a1, float *a2, float32x2_t *a3, float *a4, float32x2_t *a5, float a6)
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = a5->f32[0];
  v6 = a5->f32[1];
  v8 = a5[1].f32[0];
  v9 = fabsf(((v6 * a4[1]) + (*a4 * a5->f32[0])) + (a4[2] * v8));
  v10 = fabsf(((v6 * a4[4]) + (a4[3] * a5->f32[0])) + (a4[5] * v8));
  *v40 = v9;
  *&v40[1] = v10;
  v11 = fabsf(((v6 * a4[7]) + (a4[6] * v7)) + (a4[8] * v8));
  *&v40[2] = v11;
  v12 = v10 <= v9;
  if (v10 > v9)
  {
    v9 = v10;
  }

  if (v11 > v9)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  if (v11 > v9)
  {
    v12 = 0;
  }

  if (*&v40[v13] < *&v40[v12])
  {
    v12 = v13;
  }

  v14 = &a4[3 * v12];
  v15 = v14[1];
  v16 = v14[2];
  v17 = ((v6 * v15) + (*v14 * v7)) + (v16 * v8);
  v18 = v8 * v17;
  v19 = *v14 - (v7 * v17);
  v20 = v15 - (v6 * v17);
  v21 = v16 - v18;
  v22 = sqrtf(((v20 * v20) + (v19 * v19)) + (v21 * v21));
  if (v22 > 0.0)
  {
    v23 = 1.0 / v22;
    v19 = v19 * v23;
    v20 = v20 * v23;
    v21 = v21 * v23;
  }

  v24 = 0;
  v25 = (v6 * v21) - (v8 * v20);
  v26 = (v8 * v19) - (v7 * v21);
  v27 = (v7 * v20) - (v6 * v19);
  *a1 = v7;
  *(a1 + 4) = v6;
  *(a1 + 8) = v8;
  *(a1 + 12) = v19;
  *(a1 + 16) = v20;
  *(a1 + 20) = v21;
  *(a1 + 24) = v25;
  *(a1 + 28) = v26;
  *(a1 + 32) = v27;
  v28 = a5->f32[0];
  v29 = a5->f32[1];
  v30 = (v20 * v29) + (a5->f32[0] * v19);
  v31 = a5[1].f32[0];
  *v39 = a6;
  *&v39[1] = (v30 + (v31 * v21)) * a6;
  *&v39[2] = (((v26 * v29) + (v28 * v25)) + (v31 * v27)) * a6;
  v32 = a1 + 48;
  v33 = -36;
  do
  {
    v34 = *(v32 + v33 - 12);
    v35 = *(v32 + v33 - 8);
    v36 = *(v32 + v33 - 4);
    *(v32 + v24 * 4) = (((*a2 * fabsf(((a4[1] * v35) + (*a4 * v34)) + (a4[2] * v36))) + (*&v39[v24] * 0.5)) + (fabsf(((v35 * a4[4]) + (a4[3] * v34)) + (a4[5] * v36)) * a2[1])) + (fabsf(((v35 * a4[7]) + (a4[6] * v34)) + (a4[8] * v36)) * a2[2]);
    ++v24;
    v33 += 12;
  }

  while (v33);
  v37 = ((a5[1].f32[0] * a6) * 0.5) + a3[1].f32[0];
  result = vadd_f32(vmul_f32(vmul_n_f32(*a5, a6), 0x3F0000003F000000), *a3);
  *(a1 + 36) = result;
  *(a1 + 44) = v37;
  return result;
}

uint64_t physx::Gu::sweepBoxTriangles_Precise(int a1, uint64_t a2, char a3, uint64_t a4, int32x2_t *a5, float32x2_t *a6, uint64_t a7, unsigned int *a8, float a9, double a10, double a11, double a12, double a13, double a14, double a15, __n128 a16, __int16 *a17)
{
  v17 = vdup_lane_s32(*a5, 1);
  v18 = vdup_laneq_s32(*a5->i8, 2);
  v19 = vdup_laneq_s32(*a5->i8, 3);
  _Q5 = vaddq_f32(*a5->i8, *a5->i8);
  v21 = vdup_lane_s32(vmul_f32(*a5, *_Q5.f32), 0);
  v22 = vmul_lane_f32(v17, *_Q5.f32, 1);
  a16.n128_u64[0] = vmul_laneq_f32(v18, _Q5, 2);
  v23 = vmul_n_f32(v17, _Q5.f32[0]);
  v24 = vmul_n_f32(v18, _Q5.f32[0]);
  v25 = vmul_n_f32(v19, _Q5.f32[0]);
  v26 = vmul_lane_f32(v18, *_Q5.f32, 1);
  v27 = vmul_lane_f32(v19, *_Q5.f32, 1);
  v28 = vmul_laneq_f32(v19, _Q5, 2);
  __asm { FMOV            V5.2S, #1.0 }

  v33 = vsub_f32(*_Q5.f32, v21);
  *_Q5.f32 = vadd_f32(v23, v28);
  LODWORD(v34) = vsub_f32(v24, v27).u32[0];
  v35 = vsub_f32(v23, v28);
  v36 = COERCE_DOUBLE(vsub_f32(v33, a16.n128_u64[0]));
  LODWORD(v37) = vadd_f32(v26, v25).u32[0];
  v38 = vsub_f32(v26, v25);
  v39 = vsub_f32(v33, v22);
  a16.n128_u32[0] = a16.n128_u32[1];
  v22.f32[0] = (1.0 - v22.f32[1]) - a16.n128_f32[1];
  v43[0] = v22.f32[0];
  v43[1] = _Q5.f32[0];
  HIDWORD(v34) = v35.i32[1];
  v44 = v34;
  v45 = LODWORD(v36);
  HIDWORD(v37) = vadd_f32(v24, v27).i32[1];
  *&v40 = a5[2];
  DWORD2(v40) = a5[3].i32[0];
  HIDWORD(v40) = *(a4 + 4);
  v46 = v37;
  v47 = vzip1_s32(v38, v39);
  v48 = v40;
  v49 = *(a4 + 8);
  v42 = *a17;
  return sweepBoxVsTriangles(a1, a2, v43, a6, a7, &v42, a3, a8, a9, v49, *&v40, *&v38, v36, *_Q5.i64, *&v22, a16);
}

uint64_t sweepBoxVsTriangles(int a1, uint64_t a2, uint64_t a3, float32x2_t *a4, uint64_t a5, __int16 *a6, char a7, unsigned int *a8, float a9, double a10, double a11, double a12, double a13, double a14, double a15, __n128 a16)
{
  if (!a1)
  {
    v52 = 0;
    return v52 & 1;
  }

  v105 = *a6;
  v112 = (*a6 & 0x80) == 0;
  v23 = *a3;
  v22 = *(a3 + 4);
  v25 = *(a3 + 8);
  v24.i32[0] = *(a3 + 12);
  v26 = *(a3 + 16);
  v16.i32[0] = *(a3 + 20);
  v28 = *(a3 + 24);
  v27 = *(a3 + 28);
  v30 = *(a3 + 32);
  v29 = *(a3 + 36);
  v32 = *(a3 + 40);
  v31 = *(a3 + 44);
  v123 = (-(v32 * v22) - (*a3 * v29)) - (v25 * v31);
  v124 = *a3;
  v116 = (-(v32 * v26) - (v24.f32[0] * v29)) - (*v16.i32 * v31);
  v33 = a4[1].f32[0];
  *(a5 + 48) = a9;
  v34 = *a4;
  v119 = v24.f32[0];
  v120 = v26;
  v125 = v22;
  v24.f32[1] = v22;
  v126 = v25;
  v122 = v16;
  a16.n128_u64[0] = vadd_f32(vadd_f32(vrev64_s32(vmul_f32(v24, *a4)), vmul_f32(__PAIR64__(LODWORD(v26), LODWORD(v23)), *a4)), vmul_n_f32(__PAIR64__(v16.u32[0], LODWORD(v25)), v33));
  v35 = ((v28 * COERCE_FLOAT(*a4)) + vmuls_lane_f32(v27, *a4, 1)) + (v30 * v33);
  v136 = vmul_n_f32(a16.n128_u64[0], a9);
  v137 = v35 * a9;
  __asm { FMOV            V19.2S, #1.0 }

  v40 = vbic_s8(vdiv_f32(_D19, v136), vceqz_f32(a16.n128_u64[0]));
  v41 = 1.0;
  v42 = 1.0 / (v35 * a9);
  v43 = 0.0;
  if (v35 == 0.0)
  {
    v42 = 0.0;
  }

  v134 = v40;
  v135 = v42;
  v45 = *(a3 + 48);
  v44 = (a3 + 48);
  v46 = *(a3 + 56);
  v47 = fabsf(a16.n128_f32[1]) * *(a3 + 52);
  v117 = v28;
  v118 = v27;
  v121 = v30;
  v48 = (-(v32 * v27) - (v28 * v29)) - (v30 * v31);
  v115 = v48;
  v138 = a16.n128_u64[0];
  v139 = v35;
  v49 = (v47 + (fabsf(a16.n128_f32[0]) * v45)) + (fabsf(v35) * v46);
  v50 = (vmuls_lane_f32(v32, v34, 1) + (v29 * v34.f32[0])) + (v31 * v33);
  if (a8)
  {
    v51 = *a8;
  }

  else
  {
    v51 = 0;
  }

  v53 = 0;
  v54 = 0;
  v55.i64[0] = __PAIR64__(LODWORD(v48), LODWORD(v116));
  v55.i64[1] = __PAIR64__(LODWORD(v116), LODWORD(v123));
  v111 = v55;
  v57.n128_u64[0] = __PAIR64__(LODWORD(v26), LODWORD(v28));
  v55.i64[0] = __PAIR64__(LODWORD(v27), LODWORD(v119));
  v56 = v49 + 0.002;
  v57.n128_u64[1] = __PAIR64__(LODWORD(v125), LODWORD(v119));
  v55.i64[1] = __PAIR64__(LODWORD(v26), LODWORD(v124));
  v109 = v55;
  v110 = v57;
  v58 = v50 - (v49 + 0.002);
  v59 = v122;
  v60.i64[0] = __PAIR64__(LODWORD(v30), v122.u32[0]);
  v60.i64[1] = __PAIR64__(v122.u32[0], LODWORD(v126));
  v108 = v60;
  v61 = 0.0;
  v62 = 0.0;
  v113 = a9;
  while (1)
  {
    if (v51 == v54)
    {
      v63 = 0;
    }

    else
    {
      v63 = v54;
    }

    if (v54)
    {
      v64 = v63;
    }

    else
    {
      v64 = v51;
    }

    v65 = (a2 + 36 * v64);
    v66 = a4->f32[1];
    v59.i32[0] = *(v65 + 2);
    v67 = *(v65 + 12);
    v68 = vmuls_lane_f32(v66, *&v67, 1) + (*&v67 * a4->f32[0]);
    v70 = *(v65 + 5);
    v69 = *(v65 + 6);
    v71 = *(v65 + 7);
    v72 = *(v65 + 8);
    v73 = (v66 * v71) + (v69 * a4->f32[0]);
    v74 = a4[1].f32[0];
    v75 = (vmuls_lane_f32(v66, *v65, 1) + (COERCE_FLOAT(*v65) * a4->f32[0])) + (*v59.i32 * v74);
    v76 = v68 + (v70 * v74);
    v77 = v73 + (v72 * v74);
    if (v75 >= v76)
    {
      v78 = v68 + (v70 * v74);
    }

    else
    {
      v78 = v75;
    }

    if (v78 >= v77)
    {
      v78 = v73 + (v72 * v74);
    }

    if (v78 > (v56 + (v50 + (v41 * a9))))
    {
      goto LABEL_36;
    }

    _NF = v75 < v58 && v76 < v58;
    if (_NF && v77 < v58)
    {
      goto LABEL_36;
    }

    v81.i64[0] = *v65;
    v81.i64[1] = *(v65 + 12);
    v82 = v59;
    v82.i32[1] = *(v65 + 5);
    v128 = v123 + (((v124 * COERCE_FLOAT(*v65)) + (v125 * COERCE_FLOAT(HIDWORD(*v65)))) + (v126 * *v59.i32));
    v129 = vaddq_f32(v111, vaddq_f32(vaddq_f32(vrev64q_s32(vmulq_f32(v110, v81)), vmulq_f32(v109, v81)), vmulq_f32(v108, vzip1q_s32(v82, v82))));
    v130 = v115 + (((v117 * *&v67) + (v118 * *(&v67 + 1))) + (v121 * v70));
    v131 = v123 + (((v124 * v69) + (v125 * v71)) + (v126 * v72));
    v132 = v116 + (((v119 * v69) + (v120 * v71)) + (*v122.i32 * v72));
    v133 = v115 + (((v117 * v69) + (v118 * v71)) + (v121 * v72));
    v127 = 3.4028e38;
    if (physx::Gu::triBoxSweepTestBoxSpace(&v128, v44, &v136, &v134, &v127, v112 & ~a7, v41))
    {
      break;
    }

    v83 = v41;
    a9 = v113;
LABEL_35:
    v41 = v83;
LABEL_36:
    if (a1 == ++v54)
    {
      v84 = 0;
      goto LABEL_38;
    }
  }

  v83 = v127;
  a9 = v113;
  if (v127 >= v41)
  {
    v83 = v41;
    goto LABEL_35;
  }

  v84 = v127 == 0.0;
  if (v127 != 0.0)
  {
    *(a5 + 48) = v127 * v113;
    *(a5 + 16) = v64;
    v62 = ((v129.f32[3] - v129.f32[0]) * (v133 - v129.f32[1])) - ((v130 - v129.f32[1]) * (v132 - v129.f32[0]));
    v61 = ((v130 - v129.f32[1]) * (v131 - v128)) - ((v129.f32[2] - v128) * (v133 - v129.f32[1]));
    v43 = ((v129.f32[2] - v128) * (v132 - v129.f32[0])) - ((v129.f32[3] - v129.f32[0]) * (v131 - v128));
    v53 = 1;
    if ((*a6 & 0x40) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  *(a5 + 16) = v64;
  *(a5 + 20) = 1026;
  v104 = -a4[1].f32[0];
  *v59.i8 = vneg_f32(*a4);
  *(a5 + 36) = v59.i64[0];
  *(a5 + 44) = v104;
  *(a5 + 48) = 0;
LABEL_38:
  v52 = v84 | v53;
  if (!v84 && (v53 & 1) != 0)
  {
    *(a5 + 20) = 0;
    if ((*a6 & 3) != 0)
    {
      v85 = a2 + 36 * *(a5 + 16);
      v59.i32[0] = *(v85 + 4);
      v34.i32[0] = *(v85 + 8);
      LODWORD(v67) = *(v85 + 12);
      v60.f32[0] = v116 + (((v119 * *v85) + (v120 * *v59.i32)) + (*v122.i32 * v34.f32[0]));
      v86 = *(v85 + 16);
      v87 = *(v85 + 20);
      *&a15 = v116 + (((v119 * *&v67) + (v120 * v86)) + (*v122.i32 * v87));
      v88 = *(v85 + 24);
      v89 = *(v85 + 28);
      v90 = *(v85 + 32);
      v91 = v123 + (((v124 * *v85) + (v125 * *v59.i32)) + (v126 * v34.f32[0]));
      *v59.i32 = v115 + (((v117 * *v85) + (v118 * *v59.i32)) + (v121 * v34.f32[0]));
      v57.n128_f32[0] = v123 + (((v124 * *&v67) + (v125 * v86)) + (v126 * v87));
      v34.f32[0] = v115 + (((v117 * *&v67) + (v118 * v86)) + (v121 * v87));
      a16.n128_f32[0] = v126 * v90;
      *&v67 = v123 + (((v124 * v88) + (v125 * v89)) + (v126 * v90));
      v128 = v91;
      v129.i64[0] = __PAIR64__(v59.u32[0], v60.u32[0]);
      v129.i64[1] = __PAIR64__(LODWORD(a15), v57.n128_u32[0]);
      v130 = v34.f32[0];
      v131 = *&v67;
      v132 = v116 + (((v119 * v88) + (v120 * v89)) + (*v122.i32 * v90));
      v133 = v115 + (((v117 * v88) + (v118 * v89)) + (v121 * v90));
      physx::Gu::computeBoxTriImpactData((a5 + 24), (a5 + 36), v44, &v138, &v128, *(a5 + 48), *v59.i64, *v60.i64, v57, *&v34, v67, a15, a16);
      v92 = *a6;
      if ((*a6 & 2) != 0)
      {
        v94 = *(a5 + 36);
        v93 = *(a5 + 40);
        v95 = *(a5 + 44);
        v96 = sqrtf(((v93 * v93) + (v94 * v94)) + (v95 * v95));
        if (v96 > 0.0)
        {
          v97 = 1.0 / v96;
          v94 = v94 * v97;
          v93 = v93 * v97;
          v95 = v95 * v97;
        }

        if ((v105 & 0x80) != 0 && (a7 & 1) == 0 && (((v61 * v138.f32[1]) + (v62 * v138.f32[0])) + (v43 * v139)) > 0.0)
        {
          v94 = -v94;
          v93 = -v93;
          v95 = -v95;
        }

        v98 = ((v94 * *(a3 + 8)) + (v93 * *(a3 + 20))) + (v95 * *(a3 + 32));
        *(a5 + 36) = vadd_f32(vadd_f32(vmul_n_f32(*a3, v94), vmul_n_f32(*(a3 + 12), v93)), vmul_n_f32(*(a3 + 24), v95));
        *(a5 + 44) = v98;
        *(a5 + 20) |= 2u;
        v92 = *a6;
      }

      if (v92)
      {
        v99 = *(a5 + 24);
        v100 = *(a5 + 28);
        v101 = *(a5 + 32);
        v102 = (((v99 * *(a3 + 8)) + (v100 * *(a3 + 20))) + (v101 * *(a3 + 32))) + *(a3 + 44);
        *(a5 + 24) = vadd_f32(vadd_f32(vadd_f32(vmul_n_f32(*a3, v99), vmul_n_f32(*(a3 + 12), v100)), vmul_n_f32(*(a3 + 24), v101)), *(a3 + 36));
        *(a5 + 32) = v102;
        *(a5 + 20) |= 1u;
      }
    }

    v52 = v53;
  }

  return v52 & 1;
}

uint64_t physx::PxGeometryQuery::sweep(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, __int16 *a7)
{
  result = 0;
  v10 = *a2;
  if (*a2 > 2)
  {
    if (v10 == 3)
    {
      v38 = vdup_lane_s32(*a3, 1);
      v39 = vdup_laneq_s32(*a3, 2);
      v40 = vdup_laneq_s32(*a3, 3);
      _Q6 = vaddq_f32(*a3, *a3);
      v42 = vdup_lane_s32(vmul_f32(*a3, *_Q6.f32), 0);
      v43 = vmul_lane_f32(v38, *_Q6.f32, 1);
      v44 = vmul_laneq_f32(v39, _Q6, 2);
      v45 = vmul_n_f32(v38, _Q6.f32[0]);
      v46 = vmul_n_f32(v39, _Q6.f32[0]);
      v47 = vmul_n_f32(v40, _Q6.f32[0]);
      v48 = vmul_lane_f32(v39, *_Q6.f32, 1);
      v49 = vmul_lane_f32(v40, *_Q6.f32, 1);
      v50 = vmul_laneq_f32(v40, _Q6, 2);
      __asm { FMOV            V6.2S, #1.0 }

      v55 = vsub_f32(*_Q6.f32, v42);
      LODWORD(v56) = vsub_f32(v46, v49).u32[0];
      LODWORD(v57) = vadd_f32(v48, v47).u32[0];
      *&v60 = (1.0 - v43.f32[1]) - v44.f32[1];
      DWORD1(v60) = vadd_f32(v45, v50).u32[0];
      HIDWORD(v56) = vsub_f32(v45, v50).i32[1];
      *(&v60 + 1) = v56;
      *v61 = vsub_f32(v55, v44).u32[0];
      HIDWORD(v57) = vadd_f32(v46, v49).i32[1];
      *&v61[4] = v57;
      *&v61[12] = vzip1_s32(vsub_f32(v48, v47), vsub_f32(v55, v43));
      *&v58 = *(a3 + 16);
      DWORD2(v58) = *(a3 + 24);
      HIDWORD(v58) = *(a2 + 4);
      *&v61[20] = v58;
      *&v61[36] = *(a2 + 8);
      v28 = *a7;
      v29 = *a4;
      v30 = off_1EE185DF8;
LABEL_12:
      if ((v28 & 0x100) != 0)
      {
        v30 += 7;
      }

      v59 = v30[v29];
      LOWORD(v63[0]) = v28;
      return (v59)(a4, a5, a2, a3, &v60, a1, a6, v63, v60, *(&v60 + 1), *v61, *&v61[8], *&v61[16], *&v61[24], *&v61[32], *&v61[40]);
    }

    if (v10 == 4)
    {
      v31 = gGeomSweepFuncs[*a4 + 28];
      LOWORD(v60) = *a7;
      return (v31)(a4, a5, a2, a3, a1, a6, &v60);
    }
  }

  else
  {
    if (v10)
    {
      if (v10 != 2)
      {
        return result;
      }

      v11 = *a3;
      v12 = *(a3 + 4);
      v13 = v11 + v11;
      v15 = *(a3 + 8);
      v14 = *(a3 + 12);
      v16 = v14 + v14;
      v17 = ((v14 * (v14 + v14)) + -1.0) + (v11 * (v11 + v11));
      v18 = (v13 * v12) + (v15 * (v14 + v14));
      v19 = (v13 * v15) - (v12 * v16);
      v21 = *(a2 + 4);
      v20 = *(a2 + 8);
      v22 = v17 * v20;
      v23 = v20 * v18;
      v24 = v19 * v20;
      v25 = *(a3 + 16);
      v26 = *(a3 + 20);
      v27 = *(a3 + 24);
      *&v60 = v25 + v22;
      *(&v60 + 1) = v26 + v23;
      *(&v60 + 2) = v24 + v27;
      *(&v60 + 3) = v25 - v22;
      *v61 = v26 - v23;
      *&v61[4] = v27 - v24;
      *&v61[8] = v21;
      v28 = *a7;
      v29 = *a4;
      v30 = gGeomSweepFuncs;
      goto LABEL_12;
    }

    v32 = *(a2 + 4);
    v63[0] = 2;
    v63[1] = v32;
    v63[2] = 0;
    v33 = *(a3 + 20);
    v34 = vzip1_s32(*(a3 + 16), v33);
    *&v35 = v34;
    *(&v35 + 1) = __PAIR64__(v34.u32[0], vdup_lane_s32(v33, 1).u32[0]);
    v60 = v35;
    *v61 = v33;
    *&v61[8] = v32;
    v36 = gGeomSweepFuncs;
    if ((*a7 & 0x100) != 0)
    {
      v36 = off_1EE185DC0;
    }

    v37 = v36[*a4];
    v62 = *a7;
    return (v37)(a4, a5, v63, a3, &v60, a1, a6, &v62, v60, *(&v60 + 1), *v61, *&v61[8], *&v61[16], *&v61[24], *&v61[32], *&v61[40]);
  }

  return result;
}

uint64_t physx::PxGeometryQuery::overlap(int *a1, uint64_t a2, int *a3, uint64_t a4)
{
  v4 = *a1;
  v5 = *a3;
  if (v4 <= v5)
  {
    return (*(&gGeomOverlapMethodTable[7 * v4] + v5))(a1, a2);
  }

  else
  {
    return (*(&gGeomOverlapMethodTable[7 * v5] + v4))(a3, a4, a1, a2, 0);
  }
}

float physx::PxGeometryQuery::pointDistance(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v9 = *a2;
  LODWORD(a5) = -1.0;
  if (*a2 > 2)
  {
    if (v9 == 3)
    {
      v45 = vdup_lane_s32(*a3, 1);
      v46 = vdup_laneq_s32(*a3, 2);
      v47 = vdup_laneq_s32(*a3, 3);
      _Q4 = vaddq_f32(*a3, *a3);
      v49 = vdup_lane_s32(vmul_f32(*a3, *_Q4.f32), 0);
      v50 = vmul_lane_f32(v45, *_Q4.f32, 1);
      v51 = vmul_laneq_f32(v46, _Q4, 2);
      *&v52 = vmul_n_f32(v45, _Q4.f32[0]);
      v53 = vmul_n_f32(v46, _Q4.f32[0]);
      v54 = vmul_n_f32(v47, _Q4.f32[0]);
      v55 = vmul_lane_f32(v46, *_Q4.f32, 1);
      v56 = vmul_lane_f32(v47, *_Q4.f32, 1);
      v57 = vmul_laneq_f32(v47, _Q4, 2);
      __asm { FMOV            V4.2S, #1.0 }

      v58 = vsub_f32(*_Q4.f32, v49);
      v59 = vadd_f32(*&v52, v57);
      v60 = vsub_f32(v53, v56);
      v61 = vsub_f32(*&v52, v57);
      *_Q4.f32 = vadd_f32(v55, v54);
      v62 = vadd_f32(v53, v56);
      v53.i32[0] = vsub_f32(v58, v50).u32[0];
      v81 = (1.0 - v50.f32[1]) - v51.f32[1];
      v82 = v60;
      v92[0] = v81;
      v92[1] = v59.f32[0];
      v85 = v59;
      v86 = *_Q4.f32;
      v83 = v61;
      v93 = __PAIR64__(v61.u32[1], v60.u32[0]);
      v88 = v62;
      v84 = vsub_f32(v58, v51);
      v94 = v84.i32[0];
      v95 = __PAIR64__(v62.u32[1], _Q4.u32[0]);
      v87 = vsub_f32(v55, v54);
      *&v63 = __PAIR64__(v53.u32[0], v87.u32[0]);
      v79 = v53.f32[0];
      v80 = *(a3 + 16);
      *(&v63 + 1) = v80;
      v96 = v63;
      LODWORD(v52) = *(a3 + 24);
      v78 = *&v52;
      DWORD1(v52) = *(a2 + 4);
      *(&v52 + 1) = *(a2 + 8);
      v97 = v52;
      physx::Gu::distancePointBoxSquared(a1, &v96 + 2, &v97 + 4, v92, &v90);
      if (a4 && *&a5 != 0.0)
      {
        v64 = vdup_lane_s32(v84, 0);
        v64.f32[0] = v81;
        v65 = v78 + (vadd_f32(vmul_f32(v82, v90), vmul_lane_f32(v86, v90, 1)).f32[0] + (v91 * v79));
        *a4 = vadd_f32(v80, vadd_f32(vadd_f32(vmul_f32(vext_s8(v83, v85, 4uLL), vrev64_s32(v90)), vmul_f32(v64, v90)), vmul_n_f32(vext_s8(v88, v87, 4uLL), v91)));
        *(a4 + 8) = v65;
      }
    }

    else if (v9 == 4)
    {
      v89 = 0;
      v37 = pointConvexDistance(v92, &v90, &v89, a1, *(a2 + 32), (a2 + 4), a3, a5, a6, a7, a8);
      if (a4 && !v37)
      {
        *a4 = v90;
        *(a4 + 8) = v91;
      }

      LODWORD(a5) = v89;
    }
  }

  else if (v9)
  {
    if (v9 == 2)
    {
      v10 = *a3;
      v11 = v10 + v10;
      v12 = *(a3 + 12);
      v13 = *(a3 + 16);
      v14 = v12 + v12;
      v15 = ((v12 * (v12 + v12)) + -1.0) + (v10 * (v10 + v10));
      v16 = *(a2 + 4);
      v17 = *(a2 + 8);
      v18 = v15 * v17;
      v19 = v13 + v18;
      v20 = (v13 - v18) - (v13 + v18);
      v21 = *(a3 + 4);
      v22 = -v21.f32[0];
      v23 = vmul_n_f32(v21, v11);
      v21.i32[0] = vdup_lane_s32(v21, 1).u32[0];
      v21.f32[1] = v22;
      a5 = COERCE_DOUBLE(vmul_n_f32(vmla_n_f32(v23, v21, v14), v17));
      v24 = *(a3 + 20);
      v25 = vadd_f32(v24, *&a5);
      v26 = vsub_f32(vsub_f32(v24, *&a5), v25);
      v27 = *(a1 + 4);
      _D17 = vsub_f32(v27, v25);
      _S19 = v26.i32[1];
      __asm { FMLA            S18, S19, V17.S[1] }

      LODWORD(a5) = 0;
      if (_S18 <= 0.0)
      {
        v36 = 0.0;
      }

      else
      {
        v35 = (vmul_f32(v26, v26).f32[0] + (v20 * v20)) + (v26.f32[1] * v26.f32[1]);
        if (_S18 >= v35)
        {
          _D17 = vsub_f32(_D17, v26);
          v36 = 1.0;
        }

        else
        {
          v36 = _S18 / v35;
          _D17 = vsub_f32(_D17, vmul_n_f32(v26, v36));
        }
      }

      _S19 = _D17.i32[1];
      __asm { FMLA            S6, S19, V17.S[1] }

      if (_S6 > (v16 * v16))
      {
        v68 = sqrtf(_S6);
        if (a4)
        {
          v69 = v19 + (v20 * v36);
          v70 = *a1 - v69;
          v71 = vadd_f32(v25, vmul_n_f32(v26, v36));
          _D4 = vsub_f32(v27, v71);
          _S7 = _D4.i32[1];
          __asm { FMLA            S5, S7, V4.S[1] }

          v75 = sqrtf(_S5);
          if (v75 > 0.0)
          {
            v76 = 1.0 / v75;
            v70 = v70 * v76;
            _D4 = vmul_n_f32(_D4, v76);
          }

          *a4 = v69 + (v16 * v70);
          *(a4 + 4) = vadd_f32(v71, vmul_n_f32(_D4, v16));
        }

        v44 = v68 - v16;
LABEL_28:
        *&a5 = v44 * v44;
      }
    }
  }

  else
  {
    v38 = *(a2 + 4);
    v39 = *(a3 + 16);
    v40 = vsub_f32(*a1, v39);
    v41 = *(a3 + 24);
    v42 = *(a1 + 8) - v41;
    v43 = sqrtf((COERCE_FLOAT(vmul_f32(v40, v40).i32[1]) + (v40.f32[0] * v40.f32[0])) + (v42 * v42));
    LODWORD(a5) = 0;
    if (v43 > v38)
    {
      if (a4)
      {
        *a4 = vadd_f32(v39, vmul_n_f32(vmul_n_f32(v40, 1.0 / v43), v38));
        *(a4 + 8) = v41 + (v38 * (v42 * (1.0 / v43)));
      }

      v44 = v43 - v38;
      goto LABEL_28;
    }
  }

  return *&a5;
}

BOOL pointConvexDistance(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, _OWORD *a6, float *a7, double a8, double a9, double a10, double a11)
{
  v171 = *MEMORY[0x1E69E9840];
  v16 = *a4;
  LODWORD(a11) = *(a4 + 4);
  v17 = *(a4 + 8);
  v18 = *a6;
  v19 = *a6;
  v19.i32[3] = 0;
  v20 = *(a6 + 12);
  v21 = *(a5 + 72) + 20 * *(a5 + 71);
  v22 = COERCE_FLOAT(*(a6 + 1)) == 1.0;
  if (COERCE_FLOAT(*a6) != 1.0 || COERCE_FLOAT(HIDWORD(*a6)) != 1.0)
  {
    v22 = 0;
  }

  v160 = 0;
  v158 = 0u;
  v159 = 0u;
  v167 = a5 + 32;
  v169 = v21;
  v24.i64[0] = *(a5 + 92);
  v24.i64[1] = *(a5 + 100);
  v25 = vmulq_f32(v19, v24);
  v170 = *(a5 + 70);
  *v25.i8 = vpmin_f32(vdup_laneq_s32(v25, 2), *v25.i8);
  *v25.i32 = vpmin_f32(*v25.i8, *v25.i8).f32[0];
  *&v159 = vmul_n_f32(0x3D4CCCCD3DCCCCCDLL, *v25.i32);
  *(&v159 + 2) = 0.025 * *v25.i32;
  __asm { FMOV            V0.2S, #1.0 }

  if (v22)
  {
    v161 = xmmword_1E3047670;
    v162 = xmmword_1E3047680;
    v163 = xmmword_1E30476A0;
    v164 = xmmword_1E3047670;
    v165 = xmmword_1E3047680;
    v166 = xmmword_1E30476A0;
  }

  else
  {
    v30 = vrecpeq_f32(v19);
    v31 = 4;
    do
    {
      v30 = vmulq_f32(v30, vrecpsq_f32(v30, v19));
      --v31;
    }

    while (v31);
    *v32.f32 = vdup_lane_s32(*v18.f32, 0);
    v32.i64[1] = v32.u32[0];
    if ((~vuzp1_s8(vmovn_s32(vceqq_f32(v32, v19)), _D0).u32[0] & 0xFFFFFF) != 0)
    {
      v39 = vdup_lane_s32(*v20.f32, 1);
      v40 = vdup_laneq_s32(v20, 2);
      v41 = vdup_laneq_s32(v20, 3);
      v42 = vaddq_f32(v20, v20);
      v43 = vmul_lane_f32(v39, *v42.f32, 1);
      v44 = vmul_laneq_f32(v40, v42, 2);
      v45 = vmul_n_f32(v39, v42.f32[0]);
      v46 = vmul_n_f32(v40, v42.f32[0]);
      v47 = vmul_n_f32(v41, v42.f32[0]);
      v48 = vmul_lane_f32(v40, *v42.f32, 1);
      v49 = vmul_lane_f32(v41, *v42.f32, 1);
      v50 = vmul_laneq_f32(v41, v42, 2);
      v51 = vsub_f32(_D0, vdup_lane_s32(vmul_f32(*v20.f32, *v42.f32), 0));
      v52 = vsub_f32(vsub_f32(_D0, v43), v44);
      *v42.f32 = vadd_f32(v45, v50);
      v53 = vsub_f32(v46, v49);
      v54 = vsub_f32(v45, v50);
      v55 = vadd_f32(v46, v49);
      v56 = vsub_f32(v48, v47);
      v57 = vext_s8(v55, v56, 4uLL);
      v58 = vsub_f32(v51, v44);
      *v59.f32 = vext_s8(v52, *&vdupq_lane_s32(v54, 1), 4uLL);
      v59.i64[1] = vdup_lane_s32(v57, 0).u32[0];
      v60 = vsub_f32(v51, v43);
      *v61.f32 = vext_s8(*&vdupq_lane_s32(*v42.f32, 0), v58, 4uLL);
      v61.i64[1] = vdup_lane_s32(v57, 1).u32[0];
      v62 = vadd_f32(v48, v47);
      *v63.f32 = vext_s8(*&vdupq_lane_s32(v53, 0), v62, 4uLL);
      v63.i64[1] = vdup_lane_s32(v60, 0).u32[0];
      v64 = vmulq_n_f32(v59, v18.f32[0]);
      v64.i32[3] = 0;
      v65 = vmulq_lane_f32(v61, *v18.f32, 1);
      v65.i32[3] = 0;
      v66 = vmulq_laneq_f32(v63, v18, 2);
      v66.i32[3] = 0;
      v67 = vmulq_lane_f32(v64, v52, 1);
      v67.i32[3] = 0;
      v68 = vmulq_n_f32(v65, v42.f32[0]);
      v68.i32[3] = 0;
      v69 = vmulq_n_f32(v66, *v53.i32);
      v69.i32[3] = 0;
      v33 = vaddq_f32(v69, vaddq_f32(v67, v68));
      v70 = vmulq_lane_f32(v64, v54, 1);
      v70.i32[3] = 0;
      v71 = vmulq_n_f32(v65, *v58.i32);
      v71.i32[3] = 0;
      v72 = vmulq_n_f32(v66, *v62.i32);
      v72.i32[3] = 0;
      v34 = vaddq_f32(v72, vaddq_f32(v70, v71));
      v73 = vmulq_lane_f32(v64, v55, 1);
      v73.i32[3] = 0;
      v74 = vmulq_n_f32(v65, *v56.i32);
      v74.i32[3] = 0;
      v75 = vmulq_n_f32(v66, *v60.i32);
      v75.i32[3] = 0;
      v35 = vaddq_f32(v75, vaddq_f32(v73, v74));
      v161 = v33;
      v162 = v34;
      v76 = vmulq_n_f32(v59, v30.f32[0]);
      v76.i32[3] = 0;
      v77 = vmulq_lane_f32(v61, *v30.f32, 1);
      v77.i32[3] = 0;
      v78 = vmulq_laneq_f32(v63, v30, 2);
      v78.i32[3] = 0;
      v79 = vmulq_lane_f32(v76, v52, 1);
      v79.i32[3] = 0;
      v80 = vmulq_n_f32(v77, v42.f32[0]);
      v80.i32[3] = 0;
      v81 = vmulq_n_f32(v78, *v53.i32);
      v81.i32[3] = 0;
      v82 = vaddq_f32(v81, vaddq_f32(v79, v80));
      v83 = vmulq_lane_f32(v76, v54, 1);
      v83.i32[3] = 0;
      v84 = vmulq_n_f32(v77, *v58.i32);
      v84.i32[3] = 0;
      v11 = vmulq_n_f32(v78, *v62.i32);
      v11.i32[3] = 0;
      v85 = vmulq_lane_f32(v76, v55, 1);
      v85.i32[3] = 0;
      v86 = vmulq_n_f32(v77, *v56.i32);
      v86.i32[3] = 0;
      v87 = vmulq_n_f32(v78, *v60.i32);
      v87.i32[3] = 0;
      v38 = vaddq_f32(v87, vaddq_f32(v85, v86));
      v163 = v35;
      v164 = v82;
      v165 = vaddq_f32(v11, vaddq_f32(v83, v84));
    }

    else
    {
      v30.i32[3] = 0;
      v33 = vmulq_f32(v19, xmmword_1E3047670);
      v34 = vmulq_f32(v19, xmmword_1E3047680);
      v35 = vmulq_f32(v19, xmmword_1E30476A0);
      v161 = v33;
      v162 = v34;
      v36 = vmulq_f32(v30, xmmword_1E3047670);
      v37 = vmulq_f32(v30, xmmword_1E3047680);
      v38 = vmulq_f32(v30, xmmword_1E30476A0);
      v163 = v35;
      v164 = v36;
      v165 = v37;
    }

    v166 = v38;
    v88 = vmulq_f32(v33, 0);
    v88.i32[3] = 0;
    v89 = vmulq_f32(v34, 0);
    v89.i32[3] = 0;
    v90 = vmulq_f32(v35, 0);
    v90.i32[3] = 0;
    v158 = vaddq_f32(v90, vaddq_f32(v89, v88));
  }

  v149 = 0u;
  v150 = 0u;
  v148 = 0u;
  v147 = 0;
  v168 = *(a5 + 80);
  v91 = a7[1];
  v92 = a7[2];
  v93 = a7[3];
  v94 = (v16 - a7[4]) + (v16 - a7[4]);
  *&a11 = (*&a11 - a7[5]) + (*&a11 - a7[5]);
  v95 = (v17 - a7[6]) + (v17 - a7[6]);
  v96 = (v93 * v93) + -0.5;
  v11.f32[0] = (-(v91 * *&a11) - (*a7 * v94)) - (v92 * v95);
  *&v97 = ((v93 * ((v92 * *&a11) - (v91 * v95))) + (v94 * v96)) - (*a7 * v11.f32[0]);
  *&v98 = ((v93 * ((*a7 * v95) - (v92 * v94))) + (*&a11 * v96)) - (v91 * v11.f32[0]);
  *&v99 = ((v93 * ((v91 * v94) - (*a7 * *&a11))) + (v95 * v96)) - (v92 * v11.f32[0]);
  v100.i32[1] = 0x80000000;
  *&a11 = ((v91 * -0.0) - (*a7 - (v93 * 0.0))) + (v92 * 0.0);
  v11.f32[0] = ((v92 * -0.0) - (v91 - (v93 * 0.0))) + (*a7 * 0.0);
  *v100.i32 = ((*a7 * -0.0) - (v92 - (v93 * 0.0))) + (v91 * 0.0);
  v101 = ((*a7 * 0.0) + v93) + (v91 * 0.0);
  v102.i64[0] = __PAIR64__(v98, v97);
  v102.i64[1] = v99;
  v103 = vdup_lane_s32(*v11.f32, 0);
  v104 = vdup_lane_s32(v100, 0);
  v105 = vdup_lane_s32(COERCE_UNSIGNED_INT(v101 + (v92 * 0.0)), 0);
  v106 = *&a11 + *&a11;
  v107 = v11.f32[0] + v11.f32[0];
  v108 = *v100.i32 + *v100.i32;
  *&a11 = *&a11 * (*&a11 + *&a11);
  v109 = vmul_n_f32(v103, v11.f32[0] + v11.f32[0]);
  v110 = vmul_n_f32(v104, v108);
  v111 = vmul_n_f32(v103, v106);
  v112 = vmul_n_f32(v104, v106);
  v113 = vmul_n_f32(v105, v106);
  v114 = vmul_n_f32(v104, v107);
  v115 = vmul_n_f32(v105, v107);
  v116 = vmul_n_f32(v105, v108);
  v117 = vsub_f32(_D0, vdup_lane_s32(*&a11, 0));
  *&v118 = vext_s8(vsub_f32(vsub_f32(_D0, v109), v110), vadd_f32(v111, v116), 4uLL);
  *(&v118 + 1) = vsub_f32(v112, v115).u32[0];
  *&v119 = vext_s8(vsub_f32(v111, v116), vsub_f32(v117, v110), 4uLL);
  *(&v119 + 1) = vadd_f32(v114, v113).u32[0];
  v143 = v118;
  v144 = v119;
  *&v118 = vext_s8(vadd_f32(v112, v115), vsub_f32(v114, v113), 4uLL);
  *(&v118 + 1) = vsub_f32(v117, v109).u32[0];
  v145 = v118;
  v146 = v102;
  v151 = v102;
  v157 = 0;
  v155 = v102;
  v156 = v102;
  v152 = 0;
  v153 = 0x400000000;
  v154 = 1;
  v142[1] = &v151;
  v141[1] = &v158;
  v142[0] = &unk_1F5D217B8;
  v141[0] = &unk_1F5D21818;
  v140 = vneg_f32(0x80000000800000);
  v120 = physx::Gu::gjk<physx::Gu::LocalConvex<physx::Gu::CapsuleV>,physx::Gu::LocalConvex<physx::Gu::ConvexHullV>>(v142, v141, &v146, &v140, &v150, &v149, &v148, &v147);
  if (v120 == 2)
  {
    *a3 = 0;
  }

  else
  {
    *a3 = vmul_f32(v147, v147).u32[0];
    v121 = v148.i32[2];
    *a1 = v148.i64[0];
    *(a1 + 8) = v121;
    v122 = v149.i64[0];
    *(a2 + 8) = v149.i32[2];
    *a2 = v122;
    *&v122 = *a1 + *a1;
    v123 = *(a1 + 4) + *(a1 + 4);
    v124 = *(a1 + 8) + *(a1 + 8);
    v126 = a7[2];
    v125 = a7[3];
    v127 = (v125 * v125) + -0.5;
    v128 = *a7;
    v129 = a7[1];
    v130 = ((v123 * v129) + (*a7 * *&v122)) + (v126 * v124);
    v131 = ((v125 * ((v129 * v124) - (v126 * v123))) + (*&v122 * v127)) + (*a7 * v130);
    v132 = ((v125 * ((v126 * *&v122) - (*a7 * v124))) + (v123 * v127)) + (v129 * v130);
    *&v122 = ((v125 * ((*a7 * v123) - (v129 * *&v122))) + (v124 * v127)) + (v126 * v130);
    *a1 = v131;
    *(a1 + 4) = v132;
    *(a1 + 8) = v122;
    *&v122 = *a2 + *a2;
    v133 = *(a2 + 4) + *(a2 + 4);
    v134 = *(a2 + 8) + *(a2 + 8);
    v135 = ((v129 * v133) + (v128 * *&v122)) + (v126 * v134);
    v136 = ((v125 * ((v129 * v134) - (v126 * v133))) + (*&v122 * v127)) + (v128 * v135);
    v137 = ((v125 * ((v126 * *&v122) - (v128 * v134))) + (v133 * v127)) + (v129 * v135);
    *&v122 = ((v125 * ((v128 * v133) - (v129 * *&v122))) + (v134 * v127)) + (v126 * v135);
    v138 = a7[5] + v137;
    *&v122 = a7[6] + *&v122;
    *a2 = a7[4] + v136;
    *(a2 + 4) = v138;
    *(a2 + 8) = v122;
  }

  return v120 == 2;
}

uint64_t physx::PxGeometryQuery::computePenetration(float32x2_t *a1, uint64_t a2, int *a3, uint64_t a4, int *a5, uint64_t a6)
{
  v7 = *a3;
  v8 = *a5;
  if (v7 <= v8)
  {
    v11 = *(&gGeomMTDMethodTable[7 * v7] + v8);

    return v11();
  }

  else
  {
    result = (*(&gGeomMTDMethodTable[7 * v8] + v7))(a1, a2, a5, a6, a3, a4);
    if (result)
    {
      v10 = -a1[1].f32[0];
      *a1 = vneg_f32(*a1);
      a1[1].f32[0] = v10;
      return 1;
    }
  }

  return result;
}

uint64_t physx::Gu::GeometryUnion::set(uint64_t result, uint64_t *a2)
{
  v2 = result;
  v3 = *a2;
  if (*a2 <= 2)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        *result = 1;
      }

      else if (v3 == 2)
      {
        v7 = *a2;
        *(result + 8) = *(a2 + 2);
        *result = v7;
      }
    }

    else
    {
      *result = *a2;
      *(result + 8) = 0;
    }
  }

  else if (v3 > 4)
  {
    if (v3 == 5)
    {
      *result = 5;
      *(result + 4) = *(a2 + 4);
      *(result + 20) = *(a2 + 20);
      *(result + 28) = *(a2 + 7);
      *(result + 32) = *(a2 + 32);
      v10 = *(a2 + 33);
      *(result + 40) = a2[5];
      *(result + 33) = v10;
      v11 = *(result + 40);
      v12 = *(v11 + 96);
      *(result + 48) = v11;
      *(result + 56) = v12;
      *(result + 64) = 0;
      *(result + 72) = 0xCDCDCDCDCDCD0000;
    }

    else if (v3 == 6)
    {
      *result = 6;
      v8 = *(a2 + 1);
      *(result + 24) = *(a2 + 6);
      *(result + 8) = v8;
      *(result + 28) = *(a2 + 28);
      v9 = *(a2 + 29);
      *(result + 31) = *(a2 + 31);
      *(result + 29) = v9;
      *(result + 32) = *(result + 8) + 32;
      *(result + 40) = 0;
      *(result + 48) = 0xCDCDCDCDCDCD0000;
    }
  }

  else if (v3 == 3)
  {
    *result = 3;
    *(result + 4) = *(a2 + 4);
    *(result + 12) = *(a2 + 3);
  }

  else if (v3 == 4)
  {
    *result = 4;
    *(result + 4) = *(a2 + 4);
    *(result + 20) = *(a2 + 20);
    *(result + 28) = *(a2 + 7);
    v4 = a2[4];
    *(v2 + 32) = v4;
    *(v2 + 40) = *(a2 + 40);
    v5 = *(a2 + 41);
    *(v2 + 43) = *(a2 + 43);
    *(v2 + 41) = v5;
    v6 = *v4;
    *(v2 + 48) = v4 + 4;
    result = (*(v6 + 120))();
    *(v2 + 56) = result;
  }

  return result;
}

uint64_t physx::Gu::computeBoundsAroundVertices(uint64_t result, int a2, _OWORD *a3)
{
  if (a2)
  {
    v3 = a2 - 1;
    v4 = a3 + 12 * (a2 - 1);
    v5.i64[0] = *v4;
    v5.i64[1] = *(v4 + 2);
    v6 = v5;
    if (a2 != 1)
    {
      do
      {
        v7 = *a3;
        a3 = (a3 + 12);
        v6 = vminq_f32(v6, v7);
        v5 = vmaxq_f32(v5, v7);
        --v3;
      }

      while (v3);
    }

    v6.i32[3] = v5.i32[0];
    *result = v6;
    v8 = vextq_s8(v5, v5, 4uLL).u64[0];
  }

  else
  {
    *result = xmmword_1E3113BA0;
    v8 = vdup_n_s32(0xFE7FFFFF);
  }

  *(result + 16) = v8;
  return result;
}

physx::GuMeshFactory *physx::GuMeshFactory::GuMeshFactory(physx::GuMeshFactory *this)
{
  *this = &unk_1F5D21538;
  v2 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v3 = "static const char *physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>::getName() [T = physx::shdfnd::MutexImpl]";
  }

  else
  {
    v3 = "<allocation names disabled>";
  }

  v4 = (*(*(v2 + 24) + 16))(v2 + 24, 72, v3, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsMutex.h", 138);
  *(this + 1) = v4;
  physx::shdfnd::MutexImpl::MutexImpl(v4);
  *(this + 6) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 14) = 1061158912;
  *(this + 60) = 0xFFFFFFFFLL;
  *(this + 17) = 0;
  physx::shdfnd::internal::HashBase<physx::Gu::TriangleMesh *,physx::Gu::TriangleMesh *,physx::shdfnd::Hash<physx::Gu::TriangleMesh *>,physx::shdfnd::internal::HashSetBase<physx::Gu::TriangleMesh *,physx::shdfnd::Hash<physx::Gu::TriangleMesh *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(this + 16, 0x40u);
  *(this + 13) = 0;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 28) = 1061158912;
  *(this + 116) = 0xFFFFFFFFLL;
  *(this + 31) = 0;
  physx::shdfnd::internal::HashBase<physx::Gu::TriangleMesh *,physx::Gu::TriangleMesh *,physx::shdfnd::Hash<physx::Gu::TriangleMesh *>,physx::shdfnd::internal::HashSetBase<physx::Gu::TriangleMesh *,physx::shdfnd::Hash<physx::Gu::TriangleMesh *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(this + 72, 0x40u);
  *(this + 20) = 0;
  *(this + 9) = 0u;
  *(this + 8) = 0u;
  *(this + 42) = 1061158912;
  *(this + 172) = 0xFFFFFFFFLL;
  *(this + 45) = 0;
  physx::shdfnd::internal::HashBase<physx::Gu::TriangleMesh *,physx::Gu::TriangleMesh *,physx::shdfnd::Hash<physx::Gu::TriangleMesh *>,physx::shdfnd::internal::HashSetBase<physx::Gu::TriangleMesh *,physx::shdfnd::Hash<physx::Gu::TriangleMesh *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(this + 128, 0x40u);
  *(this + 27) = 0;
  *(this + 200) = 0u;
  *(this + 184) = 0u;
  *(this + 56) = 1061158912;
  *(this + 228) = 0xFFFFFFFFLL;
  *(this + 59) = 0;
  physx::shdfnd::internal::HashBase<physx::Gu::TriangleMesh *,physx::Gu::TriangleMesh *,physx::shdfnd::Hash<physx::Gu::TriangleMesh *>,physx::shdfnd::internal::HashSetBase<physx::Gu::TriangleMesh *,physx::shdfnd::Hash<physx::Gu::TriangleMesh *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(this + 184, 0x40u);
  *(this + 30) = 0;
  *(this + 31) = 0;
  return this;
}

void physx::GuMeshFactory::~GuMeshFactory(physx::GuMeshFactory *this)
{
  *this = &unk_1F5D21538;
  v2 = *(this + 63);
  if ((v2 & 0x80000000) == 0 && (v2 & 0x7FFFFFFF) != 0 && *(this + 30) != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 23))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 16))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 9))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 2))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  physx::shdfnd::MutexT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>>::~MutexT(this + 1);
}

{
  physx::GuMeshFactory::~GuMeshFactory(this);
  if (v1)
  {
    v2 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

    v2();
  }
}

uint64_t physx::GuMeshFactory::release(physx::GuMeshFactory *this)
{
  while (*(this + 17))
  {
    (****(this + 3))(**(this + 3));
  }

  while (*(this + 31))
  {
    (****(this + 10))(**(this + 10));
  }

  while (*(this + 45))
  {
    (****(this + 17))(**(this + 17));
  }

  while (*(this + 59))
  {
    (****(this + 24))(**(this + 24));
  }

  v2 = *(*this + 8);

  return v2(this);
}

uint64_t physx::GuMeshFactory::addTriangleMesh(uint64_t this, physx::Gu::TriangleMesh *a2, int a3)
{
  v4 = a2;
  if (a2)
  {
    v3 = this;
    if (a3)
    {
      if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
      {
        pthread_mutex_lock(*(this + 8));
      }

      v5 = 0;
      this = physx::shdfnd::internal::HashBase<physx::Gu::TriangleMesh *,physx::Gu::TriangleMesh *,physx::shdfnd::Hash<physx::Gu::TriangleMesh *>,physx::shdfnd::internal::HashSetBase<physx::Gu::TriangleMesh *,physx::shdfnd::Hash<physx::Gu::TriangleMesh *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::create((v3 + 16), &v4, &v5);
      if ((v5 & 1) == 0)
      {
        *this = v4;
      }

      if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
      {
        return pthread_mutex_unlock(*(v3 + 8));
      }
    }

    else
    {
      v6 = 0;
      this = physx::shdfnd::internal::HashBase<physx::Gu::TriangleMesh *,physx::Gu::TriangleMesh *,physx::shdfnd::Hash<physx::Gu::TriangleMesh *>,physx::shdfnd::internal::HashSetBase<physx::Gu::TriangleMesh *,physx::shdfnd::Hash<physx::Gu::TriangleMesh *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::create((this + 16), &v4, &v6);
      if ((v6 & 1) == 0)
      {
        *this = v4;
      }
    }
  }

  return this;
}

physx::Gu::BV4TriangleMesh *physx::GuMeshFactory::createTriangleMesh(physx::GuMeshFactory *this, physx::Gu::TriangleMeshData *a2)
{
  v4 = *(a2 + 2);
  if (v4 == 1)
  {
    v9 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v10 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Gu::BV4TriangleMesh>::getName() [T = physx::Gu::BV4TriangleMesh]";
    }

    else
    {
      v10 = "<allocation names disabled>";
    }

    v7 = (*(*(v9 + 24) + 16))(v9 + 24, 280, v10, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/GuMeshFactory.cpp", 119);
    if (!physx::Gu::BV4TriangleMesh::BV4TriangleMesh(v7, this, a2))
    {
      return v7;
    }

LABEL_12:
    physx::GuMeshFactory::addTriangleMesh(this, v7, 1);
    return v7;
  }

  if (v4)
  {
    return 0;
  }

  v5 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v6 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Gu::RTreeTriangleMesh>::getName() [T = physx::Gu::RTreeTriangleMesh]";
  }

  else
  {
    v6 = "<allocation names disabled>";
  }

  v7 = (*(*(v5 + 24) + 16))(v5 + 24, 256, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/GuMeshFactory.cpp", 115);
  physx::Gu::RTreeTriangleMesh::RTreeTriangleMesh(v7, this, a2);
  if (v8)
  {
    goto LABEL_12;
  }

  return v7;
}

physx::Gu::BV4TriangleMesh *physx::GuMeshFactory::createTriangleMesh(physx::GuMeshFactory *a1, uint64_t (***a2)(void, uint64_t, uint64_t))
{
  v115 = 0;
  v114 = 0;
  if (!physx::readHeader(0x4Du, 0x45u, 0x53u, 0x48u, &v115, &v114, a2))
  {
    return 0;
  }

  v7 = v115;
  if (v115 <= 0xD)
  {
    if (v115 <= 9)
    {
      physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 32, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/GuMeshFactory.cpp", 152, "Loading triangle mesh failed: Deprecated mesh cooking format. Please recook your mesh in a new cooking format.", v4, v5, v6, v107);
      return 0;
    }

    v8 = v114;
    Dword = physx::readDword(v114, a2);
    if (v7 != 13)
    {
      v11.n128_f32[0] = physx::readFloat(v8, a2);
    }

    goto LABEL_10;
  }

  v8 = v114;
  v9 = physx::readDword(v114, a2);
  Dword = physx::readDword(v8, a2);
  if (v9 != 1)
  {
    if (v9)
    {
      return 0;
    }

LABEL_10:
    v110 = a1;
    v12 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance, v11))
    {
      v13 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Gu::RTreeTriangleData>::getName() [T = physx::Gu::RTreeTriangleData]";
    }

    else
    {
      v13 = "<allocation names disabled>";
    }

    v14 = (*(*(v12 + 24) + 16))(v12 + 24, 240, v13, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/GuMeshFactory.cpp", 170);
    v15 = 0;
    *(v14 + 12) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    *(v14 + 32) = xmmword_1E3113BA0;
    *(v14 + 48) = vdup_n_s32(0xFE7FFFFF);
    *(v14 + 56) = 0;
    *(v14 + 112) = 0u;
    *(v14 + 128) = 0u;
    *(v14 + 64) = 0u;
    *(v14 + 80) = 0u;
    *(v14 + 92) = 0u;
    *v14 = &unk_1F5D215B0;
    *(v14 + 228) = 0;
    *(v14 + 232) = 0;
    *(v14 + 216) = 0;
    *(v14 + 208) = 4;
    *(v14 + 8) = 0;
    v16 = 1;
    goto LABEL_18;
  }

  v110 = a1;
  v17 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v18 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Gu::BV4TriangleData>::getName() [T = physx::Gu::BV4TriangleData]";
  }

  else
  {
    v18 = "<allocation names disabled>";
  }

  v14 = (*(*(v17 + 24) + 16))(v17 + 24, 264, v18, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/GuMeshFactory.cpp", 172);
  v16 = 0;
  *(v14 + 12) = 0;
  *(v14 + 16) = 0;
  *(v14 + 32) = xmmword_1E3113BA0;
  *(v14 + 24) = 0;
  *(v14 + 48) = vdup_n_s32(0xFE7FFFFF);
  *(v14 + 56) = 0;
  *(v14 + 112) = 0u;
  *(v14 + 128) = 0u;
  *(v14 + 64) = 0u;
  *(v14 + 80) = 0u;
  *(v14 + 92) = 0u;
  *v14 = &unk_1F5D21658;
  *(v14 + 144) = 0;
  *(v14 + 152) = 0;
  *(v14 + 160) = 0;
  *(v14 + 168) = 0;
  *(v14 + 224) = 0u;
  *(v14 + 240) = 0u;
  *(v14 + 254) = 0;
  *(v14 + 204) = 0u;
  *(v14 + 176) = 0u;
  *(v14 + 192) = 0u;
  v15 = 1;
  *(v14 + 8) = 1;
LABEL_18:
  v19 = physx::readDword(v8, a2);
  Vertices = physx::Gu::MeshDataBase::allocateVertices(v14, v19);
  v108 = physx::readDword(v8, a2);
  Triangles = physx::Gu::TriangleMeshData::allocateTriangles(v14, v108, (Dword & 0xC) == 0, Dword & 0x20);
  (**a2)(a2, Vertices, (12 * *(v14 + 16)));
  if (v8 && *(v14 + 16))
  {
    v21 = 0;
    v22 = (Vertices + 8);
    do
    {
      v23 = vrev32_s8(v22[-1]);
      v22[-1] = v23;
      v23.i32[0] = v22->i32[0];
      v24 = vrev64_s16(*&vmovl_u8(v23));
      v22->i32[0] = vuzp1_s8(v24, v24).u32[0];
      v22 = (v22 + 12);
      ++v21;
    }

    while (v21 < *(v14 + 16));
  }

  v109 = Vertices;
  v25 = *(v14 + 104);
  v112 = 3 * v25;
  if ((Dword & 4) != 0)
  {
    v31 = v15;
    v32 = v16;
    LOBYTE(v113) = 0;
    if ((*(v14 + 12) & 2) != 0)
    {
      if (v25)
      {
        if (v112 <= 1)
        {
          v38 = 1;
        }

        else
        {
          v38 = 3 * v25;
        }

        v39 = Triangles;
        do
        {
          (**a2)(a2, &v113, 1);
          *v39++ = v113;
          --v38;
        }

        while (v38);
      }
    }

    else if (v25)
    {
      if (v112 <= 1)
      {
        v33 = 1;
      }

      else
      {
        v33 = 3 * v25;
      }

      v34 = Triangles;
      do
      {
        (**a2)(a2, &v113, 1);
        *v34++ = v113;
        --v33;
      }

      while (v33);
    }

    goto LABEL_68;
  }

  if ((Dword & 8) == 0)
  {
    if ((*(v14 + 12) & 2) == 0)
    {
      (**a2)(a2, Triangles, (12 * v25));
      if (v25)
      {
        v27 = v8;
      }

      else
      {
        v27 = 0;
      }

      if (v27 == 1)
      {
        if (v112 <= 1)
        {
          v28 = 1;
        }

        else
        {
          v28 = v112;
        }

        v29 = Triangles;
        do
        {
          v26.i32[0] = *v29;
          v30 = vrev64_s16(*&vmovl_u8(v26));
          v26 = vuzp1_s8(v30, v30);
          *v29++ = v26.i32[0];
          --v28;
        }

        while (v28);
      }

      goto LABEL_69;
    }

    v31 = v15;
    v32 = v16;
    v113 = 0;
    if (v25)
    {
      if (v112 <= 1)
      {
        v40 = 1;
      }

      else
      {
        v40 = 3 * v25;
      }

      v41 = Triangles;
      do
      {
        (**a2)(a2, &v113, 4);
        if (v8)
        {
          v42.i32[0] = v113;
          v43 = vrev64_s16(*&vmovl_u8(v42));
          v113 = vuzp1_s8(v43, v43).u32[0];
        }

        *v41++ = v113;
        --v40;
      }

      while (v40);
    }

LABEL_68:
    v16 = v32;
    v15 = v31;
    goto LABEL_69;
  }

  if ((*(v14 + 12) & 2) == 0)
  {
    v31 = v15;
    v32 = v16;
    LOWORD(v113) = 0;
    if (v25)
    {
      if (v112 <= 1)
      {
        v35 = 1;
      }

      else
      {
        v35 = 3 * v25;
      }

      v36 = Triangles;
      do
      {
        (**a2)(a2, &v113, 2);
        if (v8)
        {
          v37 = v113;
          LOBYTE(v113) = BYTE1(v113);
          BYTE1(v113) = v37;
        }

        *v36++ = v113;
        --v35;
      }

      while (v35);
    }

    goto LABEL_68;
  }

  (**a2)(a2, Triangles, (6 * v25));
  if (v25)
  {
    v75 = v8;
  }

  else
  {
    v75 = 0;
  }

  if (v75 == 1)
  {
    if (v112 <= 1)
    {
      v76 = 1;
    }

    else
    {
      v76 = v112;
    }

    v77 = (Triangles + 1);
    do
    {
      v78 = *(v77 - 1);
      *(v77 - 1) = *v77;
      *v77 = v78;
      v77 += 2;
      --v76;
    }

    while (v76);
  }

LABEL_69:
  if (Dword)
  {
    v44 = physx::shdfnd::ReflectionAllocator<unsigned short>::allocate(&v113, 2 * *(v14 + 104), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/geomutils/src/mesh/GuMeshData.h", 239);
    *(v14 + 128) = v44;
    (**a2)(a2, v44, (2 * *(v14 + 104)));
    if (v8)
    {
      if (*(v14 + 104))
      {
        v45 = 0;
        v46 = (v44 + 1);
        do
        {
          v47 = *(v46 - 1);
          *(v46 - 1) = *v46;
          *v46 = v47;
          v46 += 2;
          ++v45;
        }

        while (v45 < *(v14 + 104));
      }
    }
  }

  if ((Dword & 2) != 0)
  {
    v48 = physx::shdfnd::ReflectionAllocator<unsigned int>::allocate(&v113, 4 * *(v14 + 104), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/geomutils/src/mesh/GuMeshData.h", 215);
    *(v14 + 64) = v48;
    v49 = physx::readDword(v8, a2);
    physx::readIndices(v49, *(v14 + 104), v48, a2, v8);
  }

  if ((Dword & 0x10) != 0)
  {
    v50 = physx::shdfnd::ReflectionAllocator<unsigned int>::allocate(&v113, 4 * (3 * *(v14 + 104)), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/geomutils/src/mesh/GuMeshData.h", 206);
    *(v14 + 72) = v50;
    *(v14 + 12) |= 4u;
    (**a2)(a2, v50, (12 * *(v14 + 104)));
    if (v8)
    {
      if (*(v14 + 104))
      {
        v52 = 0;
        do
        {
          v51.i32[0] = *(v50 + 4 * v52);
          v53 = vrev64_s16(*&vmovl_u8(v51));
          v51 = vuzp1_s8(v53, v53);
          *(v50 + 4 * v52++) = v51.i32[0];
        }

        while (v52 < (3 * *(v14 + 104)));
      }
    }
  }

  if (v16)
  {
    if ((physx::Gu::RTree::load(v14 + 144, a2, v7, v8) & 1) == 0)
    {
      v57 = physx::shdfnd::Foundation::mInstance;
      v58 = "RTree binary image load error.";
      v59 = 303;
LABEL_177:
      physx::shdfnd::Foundation::error(v57, 32, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/GuMeshFactory.cpp", v59, v58, v54, v55, v56, v107);
      (*(*v14 + 8))(v14);
      return 0;
    }
  }

  else if (v15)
  {
    if ((physx::Gu::BV4Tree::load(v14 + 192, a2, v8) & 1) == 0)
    {
      v57 = physx::shdfnd::Foundation::mInstance;
      v58 = "BV4 binary image load error.";
      v59 = 313;
      goto LABEL_177;
    }

    *(v14 + 144) = *(v14 + 16);
    *(v14 + 168) = v108;
    v60 = Triangles;
    if ((*(v14 + 12) & 2) != 0)
    {
      v61 = 0;
    }

    else
    {
      v61 = Triangles;
    }

    if ((*(v14 + 12) & 2) == 0)
    {
      v60 = 0;
    }

    *(v14 + 176) = v61;
    *(v14 + 184) = v60;
    *(v14 + 152) = v109;
    *(v14 + 192) = v14 + 144;
  }

  v62 = v114;
  *(v14 + 56) = physx::readFloat(v114, a2);
  physx::readFloatBuffer((v14 + 32), 6u, v62, a2);
  v63 = v114;
  v64 = physx::readDword(v114, a2);
  if (v64)
  {
    v65 = v64;
    v66 = physx::shdfnd::ReflectionAllocator<unsigned char>::allocate(&v113, *(v14 + 104), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/geomutils/src/mesh/GuMeshData.h", 247);
    *(v14 + 120) = v66;
    (**a2)(a2, v66, v65);
  }

  if ((Dword & 0x20) != 0)
  {
    v67 = v115;
    if (v115 > 0xE)
    {
      v68 = 0;
      if ((Dword & 4) != 0)
      {
LABEL_97:
        LOBYTE(v113) = 0;
        if ((*(v14 + 12) & 2) != 0)
        {
          if (v25)
          {
            v79 = *(v14 + 80);
            if (v112 <= 1)
            {
              v80 = 1;
            }

            else
            {
              v80 = 3 * v25;
            }

            do
            {
              (**a2)(a2, &v113, 1);
              *v79++ = v113;
              --v80;
            }

            while (v80);
          }
        }

        else if (v25)
        {
          v69 = *(v14 + 80);
          if (v112 <= 1)
          {
            v70 = 1;
          }

          else
          {
            v70 = 3 * v25;
          }

          do
          {
            (**a2)(a2, &v113, 1);
            *v69++ = v113;
            --v70;
          }

          while (v70);
        }

        goto LABEL_155;
      }
    }

    else
    {
      v68 = physx::readDword(v63, a2);
      if ((Dword & 4) != 0)
      {
        goto LABEL_97;
      }
    }

    if ((Dword & 8) != 0)
    {
      v81 = *(v14 + 80);
      if ((*(v14 + 12) & 2) != 0)
      {
        (**a2)(a2, *(v14 + 80), (6 * v25));
        if (v63 && v25)
        {
          if (v112 <= 1)
          {
            v88 = 1;
          }

          else
          {
            v88 = v112;
          }

          v89 = v81 + 1;
          do
          {
            v90 = *(v89 - 1);
            *(v89 - 1) = *v89;
            *v89 = v90;
            v89 += 2;
            --v88;
          }

          while (v88);
        }
      }

      else
      {
        LOWORD(v113) = 0;
        if (v25)
        {
          if (v112 <= 1)
          {
            v82 = 1;
          }

          else
          {
            v82 = 3 * v25;
          }

          do
          {
            (**a2)(a2, &v113, 2);
            if (v63)
            {
              v83 = v113;
              LOBYTE(v113) = BYTE1(v113);
              BYTE1(v113) = v83;
            }

            *v81++ = v113;
            --v82;
          }

          while (v82);
        }
      }
    }

    else if ((*(v14 + 12) & 2) != 0)
    {
      v113 = 0;
      if (v25)
      {
        v84 = *(v14 + 80);
        if (v112 <= 1)
        {
          v85 = 1;
        }

        else
        {
          v85 = 3 * v25;
        }

        do
        {
          (**a2)(a2, &v113, 4);
          if (v63)
          {
            v86.i32[0] = v113;
            v87 = vrev64_s16(*&vmovl_u8(v86));
            v113 = vuzp1_s8(v87, v87).u32[0];
          }

          *v84++ = v113;
          --v85;
        }

        while (v85);
      }
    }

    else
    {
      v71 = *(v14 + 80);
      (**a2)(a2, v71, (12 * v25));
      if (v63 && v25)
      {
        if (v112 <= 1)
        {
          v73 = 1;
        }

        else
        {
          v73 = v112;
        }

        do
        {
          v72.i32[0] = *v71;
          v74 = vrev64_s16(*&vmovl_u8(v72));
          v72 = vuzp1_s8(v74, v74);
          *v71++ = v72.i32[0];
          --v73;
        }

        while (v73);
      }
    }

LABEL_155:
    *(v14 + 88) = physx::shdfnd::ReflectionAllocator<unsigned int>::allocate(&v113, 4 * (4 * *(v14 + 104)), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/GuMeshFactory.cpp", 427);
    *(v14 + 96) = physx::shdfnd::ReflectionAllocator<unsigned int>::allocate(&v113, 4 * *(v14 + 104), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/GuMeshFactory.cpp", 428);
    (**a2)(a2, *(v14 + 88), (16 * *(v14 + 104)));
    if (v67 <= 0xE)
    {
      if (*(v14 + 16))
      {
        v91 = 0;
        do
        {
          physx::readDword(v63, a2);
          ++v91;
          v92 = *(v14 + 16);
        }

        while (v91 < v92);
        if (v92)
        {
          v93 = 0;
          do
          {
            physx::readDword(v63, a2);
            ++v93;
          }

          while (v93 < *(v14 + 16));
        }
      }

      for (; v68; --v68)
      {
        physx::readDword(v63, a2);
      }
    }

    (**a2)(a2, *(v14 + 96), (4 * *(v14 + 104)));
    if (v63)
    {
      if ((*(v14 + 104) & 0x3FFFFFFF) != 0)
      {
        v95 = 0;
        do
        {
          v96 = *(v14 + 80);
          v94.i32[0] = *(v96 + 4 * v95);
          v97 = vrev64_s16(*&vmovl_u8(v94));
          v94 = vuzp1_s8(v97, v97);
          *(v96 + 4 * v95++) = v94.i32[0];
          v98 = *(v14 + 104);
        }

        while (v95 < (4 * v98));
        if ((v98 & 0x3FFFFFFF) != 0)
        {
          v99 = 0;
          do
          {
            v100 = *(v14 + 88);
            v94.i32[0] = *(v100 + 4 * v99);
            v101 = vrev64_s16(*&vmovl_u8(v94));
            v94 = vuzp1_s8(v101, v101);
            *(v100 + 4 * v99++) = v94.i32[0];
          }

          while (v99 < (4 * *(v14 + 104)));
        }
      }
    }

    v102 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v103 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Gu::BV32Tree>::getName() [T = physx::Gu::BV32Tree]";
    }

    else
    {
      v103 = "<allocation names disabled>";
    }

    v104 = (*(*(v102 + 24) + 16))(v102 + 24, 64, v103, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/GuMeshFactory.cpp", 455);
    *(v104 + 40) = 0;
    *(v104 + 48) = 0;
    *(v104 + 32) = 0;
    *(v104 + 56) = 0;
    *(v104 + 8) = 0;
    *(v104 + 16) = 0;
    *v104 = 0;
    *(v104 + 24) = 0;
    *(v14 + 136) = v104;
    if ((physx::Gu::BV32Tree::load(v104, a2, v63) & 1) == 0)
    {
      v57 = physx::shdfnd::Foundation::mInstance;
      v58 = "BV32 binary image load error.";
      v59 = 459;
      goto LABEL_177;
    }
  }

  TriangleMesh = physx::GuMeshFactory::createTriangleMesh(v110, v14);
  (*(*v14 + 8))(v14);
  return TriangleMesh;
}

uint64_t physx::GuMeshFactory::removeTriangleMesh(uint64_t a1, uint64_t a2)
{
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_lock(*(a1 + 8));
  }

  if (!*(a1 + 68) || (v4 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22), v5 = 9 * ((v4 + ~(v4 << 13)) ^ ((v4 + ~(v4 << 13)) >> 8)), v6 = (v5 ^ (v5 >> 15)) + ~((v5 ^ (v5 >> 15)) << 27), v7 = (*(a1 + 40) + 4 * ((*(a1 + 52) - 1) & ((v6 >> 31) ^ v6))), v8 = *v7, v8 == -1))
  {
LABEL_16:
    v22 = 0;
    goto LABEL_17;
  }

  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  if (*(v9 + 8 * v8) != a2)
  {
    while (1)
    {
      v11 = v8;
      v8 = *(v10 + 4 * v8);
      if (v8 == -1)
      {
        goto LABEL_16;
      }

      if (*(v9 + 8 * v8) == a2)
      {
        v7 = (v10 + 4 * v11);
        break;
      }
    }
  }

  *v7 = *(v10 + 4 * v8);
  v12 = vadd_s32(*(a1 + 64), 0xFFFFFFFF00000001);
  *(a1 + 64) = v12;
  if (v8 != v12.i32[1])
  {
    *(v9 + 8 * v8) = *(v9 + 8 * v12.u32[1]);
    v14 = *(a1 + 24);
    v13 = *(a1 + 32);
    *(v13 + 4 * v8) = *(v13 + 4 * v12.u32[1]);
    v15 = ~(*(v14 + 8 * v8) << 32) + *(v14 + 8 * v8);
    v16 = 9 * (((v15 ^ (v15 >> 22)) + ~((v15 ^ (v15 >> 22)) << 13)) ^ (((v15 ^ (v15 >> 22)) + ~((v15 ^ (v15 >> 22)) << 13)) >> 8));
    v17 = (v16 ^ (v16 >> 15)) + ~((v16 ^ (v16 >> 15)) << 27);
    v18 = (*(a1 + 40) + 4 * ((*(a1 + 52) - 1) & ((v17 >> 31) ^ v17)));
    v19 = *(a1 + 68);
    v20 = *v18;
    if (v20 != v19)
    {
      do
      {
        v21 = v20;
        v20 = *(v13 + 4 * v20);
      }

      while (v20 != v19);
      v18 = (v13 + 4 * v21);
    }

    *v18 = v8;
  }

  --*(a1 + 60);
  v22 = 1;
LABEL_17:
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_unlock(*(a1 + 8));
  }

  return v22;
}

uint64_t physx::GuMeshFactory::getNbTriangleMeshes(pthread_mutex_t **this)
{
  if ((physx::shdfnd::g_alwaysUseLocking & 1) == 0 && (physx::shdfnd::g_isLockingEnabled & 1) == 0)
  {
    return *(this + 17);
  }

  pthread_mutex_lock(this[1]);
  v2 = *(this + 17);
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_unlock(this[1]);
  }

  return v2;
}

uint64_t physx::GuMeshFactory::getTriangleMeshes(uint64_t a1, void *a2, int a3, unsigned int a4)
{
  LODWORD(v5) = a3;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_lock(*(a1 + 8));
  }

  v8 = (*(a1 + 68) - a4) & ~((*(a1 + 68) - a4) >> 31);
  if (v8 >= v5)
  {
    v5 = v5;
  }

  else
  {
    v5 = v8;
  }

  if (v5)
  {
    v9 = (*(a1 + 24) + 8 * a4);
    v10 = v5;
    do
    {
      v11 = *v9++;
      *a2++ = v11;
      --v10;
    }

    while (v10);
  }

  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_unlock(*(a1 + 8));
  }

  return v5;
}

uint64_t physx::GuMeshFactory::addConvexMesh(uint64_t this, physx::Gu::ConvexMesh *a2, int a3)
{
  v4 = a2;
  if (a2)
  {
    v3 = this;
    if (a3)
    {
      if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
      {
        pthread_mutex_lock(*(this + 8));
      }

      v5 = 0;
      this = physx::shdfnd::internal::HashBase<physx::Gu::TriangleMesh *,physx::Gu::TriangleMesh *,physx::shdfnd::Hash<physx::Gu::TriangleMesh *>,physx::shdfnd::internal::HashSetBase<physx::Gu::TriangleMesh *,physx::shdfnd::Hash<physx::Gu::TriangleMesh *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::create((v3 + 72), &v4, &v5);
      if ((v5 & 1) == 0)
      {
        *this = v4;
      }

      if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
      {
        return pthread_mutex_unlock(*(v3 + 8));
      }
    }

    else
    {
      v6 = 0;
      this = physx::shdfnd::internal::HashBase<physx::Gu::TriangleMesh *,physx::Gu::TriangleMesh *,physx::shdfnd::Hash<physx::Gu::TriangleMesh *>,physx::shdfnd::internal::HashSetBase<physx::Gu::TriangleMesh *,physx::shdfnd::Hash<physx::Gu::TriangleMesh *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::create((this + 72), &v4, &v6);
      if ((v6 & 1) == 0)
      {
        *this = v4;
      }
    }
  }

  return this;
}

physx::Gu::ConvexMesh *physx::GuMeshFactory::createConvexMesh(uint64_t a1, uint64_t a2)
{
  v4 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v5 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Gu::ConvexMesh>::getName() [T = physx::Gu::ConvexMesh]";
  }

  else
  {
    v5 = "<allocation names disabled>";
  }

  v6 = (*(*(v4 + 24) + 16))(v4 + 24, 168, v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/GuMeshFactory.cpp", 514);
  physx::Gu::ConvexMesh::ConvexMesh(v6, a1, a2);
  if (v7)
  {
    physx::GuMeshFactory::addConvexMesh(a1, v6, 1);
  }

  return v6;
}

uint64_t physx::GuMeshFactory::createConvexMesh(uint64_t a1, uint64_t (***a2)(void, uint64_t, uint64_t))
{
  v4 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v5 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Gu::ConvexMesh>::getName() [T = physx::Gu::ConvexMesh]";
  }

  else
  {
    v5 = "<allocation names disabled>";
  }

  v6 = (*(*(v4 + 24) + 16))(v4 + 24, 168, v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/GuMeshFactory.cpp", 524);
  physx::Gu::ConvexMesh::ConvexMesh(v6);
  if (v7)
  {
    *(v6 + 160) = a1;
    if (physx::Gu::ConvexMesh::load(v6, a2))
    {
      physx::GuMeshFactory::addConvexMesh(a1, v6, 1);
    }

    else
    {
      if (atomic_fetch_add((v6 + 24), 0xFFFFFFFF) == 1)
      {
        (*(*(v6 + 16) + 16))(v6 + 16);
      }

      return 0;
    }
  }

  return v6;
}

uint64_t physx::GuMeshFactory::removeConvexMesh(uint64_t a1, uint64_t a2)
{
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_lock(*(a1 + 8));
  }

  if (!*(a1 + 124) || (v4 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22), v5 = 9 * ((v4 + ~(v4 << 13)) ^ ((v4 + ~(v4 << 13)) >> 8)), v6 = (v5 ^ (v5 >> 15)) + ~((v5 ^ (v5 >> 15)) << 27), v7 = (*(a1 + 96) + 4 * ((*(a1 + 108) - 1) & ((v6 >> 31) ^ v6))), v8 = *v7, v8 == -1))
  {
LABEL_16:
    v22 = 0;
    goto LABEL_17;
  }

  v9 = *(a1 + 80);
  v10 = *(a1 + 88);
  if (*(v9 + 8 * v8) != a2)
  {
    while (1)
    {
      v11 = v8;
      v8 = *(v10 + 4 * v8);
      if (v8 == -1)
      {
        goto LABEL_16;
      }

      if (*(v9 + 8 * v8) == a2)
      {
        v7 = (v10 + 4 * v11);
        break;
      }
    }
  }

  *v7 = *(v10 + 4 * v8);
  v12 = vadd_s32(*(a1 + 120), 0xFFFFFFFF00000001);
  *(a1 + 120) = v12;
  if (v8 != v12.i32[1])
  {
    *(v9 + 8 * v8) = *(v9 + 8 * v12.u32[1]);
    v14 = *(a1 + 80);
    v13 = *(a1 + 88);
    *(v13 + 4 * v8) = *(v13 + 4 * v12.u32[1]);
    v15 = ~(*(v14 + 8 * v8) << 32) + *(v14 + 8 * v8);
    v16 = 9 * (((v15 ^ (v15 >> 22)) + ~((v15 ^ (v15 >> 22)) << 13)) ^ (((v15 ^ (v15 >> 22)) + ~((v15 ^ (v15 >> 22)) << 13)) >> 8));
    v17 = (v16 ^ (v16 >> 15)) + ~((v16 ^ (v16 >> 15)) << 27);
    v18 = (*(a1 + 96) + 4 * ((*(a1 + 108) - 1) & ((v17 >> 31) ^ v17)));
    v19 = *(a1 + 124);
    v20 = *v18;
    if (v20 != v19)
    {
      do
      {
        v21 = v20;
        v20 = *(v13 + 4 * v20);
      }

      while (v20 != v19);
      v18 = (v13 + 4 * v21);
    }

    *v18 = v8;
  }

  --*(a1 + 116);
  v22 = 1;
LABEL_17:
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_unlock(*(a1 + 8));
  }

  return v22;
}

uint64_t physx::GuMeshFactory::getNbConvexMeshes(pthread_mutex_t **this)
{
  if ((physx::shdfnd::g_alwaysUseLocking & 1) == 0 && (physx::shdfnd::g_isLockingEnabled & 1) == 0)
  {
    return *(this + 31);
  }

  pthread_mutex_lock(this[1]);
  v2 = *(this + 31);
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_unlock(this[1]);
  }

  return v2;
}

uint64_t physx::GuMeshFactory::getConvexMeshes(uint64_t a1, void *a2, int a3, unsigned int a4)
{
  LODWORD(v5) = a3;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_lock(*(a1 + 8));
  }

  v8 = (*(a1 + 124) - a4) & ~((*(a1 + 124) - a4) >> 31);
  if (v8 >= v5)
  {
    v5 = v5;
  }

  else
  {
    v5 = v8;
  }

  if (v5)
  {
    v9 = (*(a1 + 80) + 8 * a4);
    v10 = v5;
    do
    {
      v11 = *v9++;
      *a2++ = v11;
      --v10;
    }

    while (v10);
  }

  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_unlock(*(a1 + 8));
  }

  return v5;
}

uint64_t physx::GuMeshFactory::addHeightField(uint64_t this, physx::Gu::HeightField *a2, int a3)
{
  v4 = a2;
  if (a2)
  {
    v3 = this;
    if (a3)
    {
      if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
      {
        pthread_mutex_lock(*(this + 8));
      }

      v5 = 0;
      this = physx::shdfnd::internal::HashBase<physx::Gu::TriangleMesh *,physx::Gu::TriangleMesh *,physx::shdfnd::Hash<physx::Gu::TriangleMesh *>,physx::shdfnd::internal::HashSetBase<physx::Gu::TriangleMesh *,physx::shdfnd::Hash<physx::Gu::TriangleMesh *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::create((v3 + 128), &v4, &v5);
      if ((v5 & 1) == 0)
      {
        *this = v4;
      }

      if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
      {
        return pthread_mutex_unlock(*(v3 + 8));
      }
    }

    else
    {
      v6 = 0;
      this = physx::shdfnd::internal::HashBase<physx::Gu::TriangleMesh *,physx::Gu::TriangleMesh *,physx::shdfnd::Hash<physx::Gu::TriangleMesh *>,physx::shdfnd::internal::HashSetBase<physx::Gu::TriangleMesh *,physx::shdfnd::Hash<physx::Gu::TriangleMesh *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::create((this + 128), &v4, &v6);
      if ((v6 & 1) == 0)
      {
        *this = v4;
      }
    }
  }

  return this;
}

physx::Gu::HeightField *physx::GuMeshFactory::createHeightField(physx::GuMeshFactory *this, uint64_t a2)
{
  v4 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v5 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Gu::HeightField>::getName() [T = physx::Gu::HeightField]";
  }

  else
  {
    v5 = "<allocation names disabled>";
  }

  v6 = (*(*(v4 + 24) + 16))(v4 + 24, 136, v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/GuMeshFactory.cpp", 570);
  physx::Gu::HeightField::HeightField(v6, this, a2);
  if (v7)
  {
    physx::GuMeshFactory::addHeightField(this, v6, 1);
  }

  return v6;
}

uint64_t physx::GuMeshFactory::createHeightField(uint64_t a1, void (***a2)(void, unsigned __int32 *, uint64_t))
{
  v4 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v5 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Gu::HeightField>::getName() [T = physx::Gu::HeightField]";
  }

  else
  {
    v5 = "<allocation names disabled>";
  }

  v6 = (*(*(v4 + 24) + 16))(v4 + 24, 136, v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/GuMeshFactory.cpp", 580);
  *(v6 + 8) = 196609;
  *(v6 + 24) = 1;
  *v6 = &unk_1F5D21FF8;
  *(v6 + 16) = &unk_1F5D220C8;
  *(v6 + 104) = 0;
  *(v6 + 112) = 0;
  *(v6 + 120) = 0;
  *(v6 + 128) = a1;
  *(v6 + 96) = 1;
  *(v6 + 56) = 0;
  *(v6 + 88) = 0;
  *(v6 + 92) = 0;
  *(v6 + 80) = 0;
  if (physx::Gu::HeightField::load(v6, a2))
  {
    physx::GuMeshFactory::addHeightField(a1, v6, 1);
  }

  else
  {
    if (atomic_fetch_add((v6 + 24), 0xFFFFFFFF) == 1)
    {
      (*(*(v6 + 16) + 16))(v6 + 16);
    }

    return 0;
  }

  return v6;
}

uint64_t physx::GuMeshFactory::removeHeightField(uint64_t a1, uint64_t a2)
{
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_lock(*(a1 + 8));
  }

  if (!*(a1 + 180) || (v4 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22), v5 = 9 * ((v4 + ~(v4 << 13)) ^ ((v4 + ~(v4 << 13)) >> 8)), v6 = (v5 ^ (v5 >> 15)) + ~((v5 ^ (v5 >> 15)) << 27), v7 = (*(a1 + 152) + 4 * ((*(a1 + 164) - 1) & ((v6 >> 31) ^ v6))), v8 = *v7, v8 == -1))
  {
LABEL_16:
    v22 = 0;
    goto LABEL_17;
  }

  v9 = *(a1 + 136);
  v10 = *(a1 + 144);
  if (*(v9 + 8 * v8) != a2)
  {
    while (1)
    {
      v11 = v8;
      v8 = *(v10 + 4 * v8);
      if (v8 == -1)
      {
        goto LABEL_16;
      }

      if (*(v9 + 8 * v8) == a2)
      {
        v7 = (v10 + 4 * v11);
        break;
      }
    }
  }

  *v7 = *(v10 + 4 * v8);
  v12 = vadd_s32(*(a1 + 176), 0xFFFFFFFF00000001);
  *(a1 + 176) = v12;
  if (v8 != v12.i32[1])
  {
    *(v9 + 8 * v8) = *(v9 + 8 * v12.u32[1]);
    v14 = *(a1 + 136);
    v13 = *(a1 + 144);
    *(v13 + 4 * v8) = *(v13 + 4 * v12.u32[1]);
    v15 = ~(*(v14 + 8 * v8) << 32) + *(v14 + 8 * v8);
    v16 = 9 * (((v15 ^ (v15 >> 22)) + ~((v15 ^ (v15 >> 22)) << 13)) ^ (((v15 ^ (v15 >> 22)) + ~((v15 ^ (v15 >> 22)) << 13)) >> 8));
    v17 = (v16 ^ (v16 >> 15)) + ~((v16 ^ (v16 >> 15)) << 27);
    v18 = (*(a1 + 152) + 4 * ((*(a1 + 164) - 1) & ((v17 >> 31) ^ v17)));
    v19 = *(a1 + 180);
    v20 = *v18;
    if (v20 != v19)
    {
      do
      {
        v21 = v20;
        v20 = *(v13 + 4 * v20);
      }

      while (v20 != v19);
      v18 = (v13 + 4 * v21);
    }

    *v18 = v8;
  }

  --*(a1 + 172);
  v22 = 1;
LABEL_17:
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_unlock(*(a1 + 8));
  }

  return v22;
}

uint64_t physx::GuMeshFactory::getNbHeightFields(pthread_mutex_t **this)
{
  if ((physx::shdfnd::g_alwaysUseLocking & 1) == 0 && (physx::shdfnd::g_isLockingEnabled & 1) == 0)
  {
    return *(this + 45);
  }

  pthread_mutex_lock(this[1]);
  v2 = *(this + 45);
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_unlock(this[1]);
  }

  return v2;
}

uint64_t physx::GuMeshFactory::getHeightFields(uint64_t a1, void *a2, int a3, unsigned int a4)
{
  LODWORD(v5) = a3;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_lock(*(a1 + 8));
  }

  v8 = (*(a1 + 180) - a4) & ~((*(a1 + 180) - a4) >> 31);
  if (v8 >= v5)
  {
    v5 = v5;
  }

  else
  {
    v5 = v8;
  }

  if (v5)
  {
    v9 = (*(a1 + 136) + 8 * a4);
    v10 = v5;
    do
    {
      v11 = *v9++;
      *a2++ = v11;
      --v10;
    }

    while (v10);
  }

  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_unlock(*(a1 + 8));
  }

  return v5;
}

uint64_t physx::GuMeshFactory::addFactoryListener(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    result = pthread_mutex_lock(*(result + 8));
  }

  v5 = a2;
  v4 = *(v3 + 248);
  if ((*(v3 + 252) & 0x7FFFFFFFu) <= v4)
  {
    result = physx::shdfnd::Array<physx::GuMeshFactoryListener *,physx::shdfnd::ReflectionAllocator<physx::GuMeshFactoryListener *>>::growAndPushBack(v3 + 240, &v5);
  }

  else
  {
    *(*(v3 + 240) + 8 * v4) = a2;
    *(v3 + 248) = v4 + 1;
  }

  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    return pthread_mutex_unlock(*(v3 + 8));
  }

  return result;
}

uint64_t physx::GuMeshFactory::addBVHStructure(uint64_t this, physx::Gu::BVHStructure *a2, int a3)
{
  v4 = a2;
  if (a2)
  {
    v3 = this;
    if (a3)
    {
      if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
      {
        pthread_mutex_lock(*(this + 8));
      }

      v5 = 0;
      this = physx::shdfnd::internal::HashBase<physx::Gu::TriangleMesh *,physx::Gu::TriangleMesh *,physx::shdfnd::Hash<physx::Gu::TriangleMesh *>,physx::shdfnd::internal::HashSetBase<physx::Gu::TriangleMesh *,physx::shdfnd::Hash<physx::Gu::TriangleMesh *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::create((v3 + 184), &v4, &v5);
      if ((v5 & 1) == 0)
      {
        *this = v4;
      }

      if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
      {
        return pthread_mutex_unlock(*(v3 + 8));
      }
    }

    else
    {
      v6 = 0;
      this = physx::shdfnd::internal::HashBase<physx::Gu::TriangleMesh *,physx::Gu::TriangleMesh *,physx::shdfnd::Hash<physx::Gu::TriangleMesh *>,physx::shdfnd::internal::HashSetBase<physx::Gu::TriangleMesh *,physx::shdfnd::Hash<physx::Gu::TriangleMesh *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::create((this + 184), &v4, &v6);
      if ((v6 & 1) == 0)
      {
        *this = v4;
      }
    }
  }

  return this;
}

uint64_t physx::GuMeshFactory::createBVHStructure(uint64_t a1, uint64_t a2)
{
  v4 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v5 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Gu::BVHStructure>::getName() [T = physx::Gu::BVHStructure]";
  }

  else
  {
    v5 = "<allocation names disabled>";
  }

  v6 = (*(*(v4 + 24) + 16))(v4 + 24, 80, v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/GuMeshFactory.cpp", 658);
  *(v6 + 8) = 196625;
  *(v6 + 24) = 1;
  *v6 = &unk_1F5D21878;
  *(v6 + 16) = &unk_1F5D218E8;
  *(v6 + 32) = a1;
  *(v6 + 40) = *a2;
  *(v6 + 48) = *(a2 + 8);
  v7 = *(a2 + 24);
  *(v6 + 64) = 0;
  *(v6 + 72) = v7;
  physx::GuMeshFactory::addBVHStructure(a1, v6, 1);
  return v6;
}

uint64_t physx::GuMeshFactory::createBVHStructure(uint64_t a1, uint64_t (***a2)(void, uint64_t, uint64_t))
{
  v4 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v5 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Gu::BVHStructure>::getName() [T = physx::Gu::BVHStructure]";
  }

  else
  {
    v5 = "<allocation names disabled>";
  }

  v6 = (*(*(v4 + 24) + 16))(v4 + 24, 80, v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/GuMeshFactory.cpp", 668);
  *(v6 + 8) = 196625;
  *(v6 + 24) = 1;
  *v6 = &unk_1F5D21878;
  *(v6 + 16) = &unk_1F5D218E8;
  *(v6 + 32) = a1;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 72) = 0;
  if (physx::Gu::BVHStructure::load(v6, a2))
  {
    physx::GuMeshFactory::addBVHStructure(a1, v6, 1);
  }

  else
  {
    if (atomic_fetch_add((v6 + 24), 0xFFFFFFFF) == 1)
    {
      (*(*(v6 + 16) + 16))(v6 + 16);
    }

    return 0;
  }

  return v6;
}

uint64_t physx::GuMeshFactory::removeBVHStructure(uint64_t a1, uint64_t a2)
{
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_lock(*(a1 + 8));
  }

  if (!*(a1 + 236) || (v4 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22), v5 = 9 * ((v4 + ~(v4 << 13)) ^ ((v4 + ~(v4 << 13)) >> 8)), v6 = (v5 ^ (v5 >> 15)) + ~((v5 ^ (v5 >> 15)) << 27), v7 = (*(a1 + 208) + 4 * ((*(a1 + 220) - 1) & ((v6 >> 31) ^ v6))), v8 = *v7, v8 == -1))
  {
LABEL_16:
    v22 = 0;
    goto LABEL_17;
  }

  v9 = *(a1 + 192);
  v10 = *(a1 + 200);
  if (*(v9 + 8 * v8) != a2)
  {
    while (1)
    {
      v11 = v8;
      v8 = *(v10 + 4 * v8);
      if (v8 == -1)
      {
        goto LABEL_16;
      }

      if (*(v9 + 8 * v8) == a2)
      {
        v7 = (v10 + 4 * v11);
        break;
      }
    }
  }

  *v7 = *(v10 + 4 * v8);
  v12 = vadd_s32(*(a1 + 232), 0xFFFFFFFF00000001);
  *(a1 + 232) = v12;
  if (v8 != v12.i32[1])
  {
    *(v9 + 8 * v8) = *(v9 + 8 * v12.u32[1]);
    v14 = *(a1 + 192);
    v13 = *(a1 + 200);
    *(v13 + 4 * v8) = *(v13 + 4 * v12.u32[1]);
    v15 = ~(*(v14 + 8 * v8) << 32) + *(v14 + 8 * v8);
    v16 = 9 * (((v15 ^ (v15 >> 22)) + ~((v15 ^ (v15 >> 22)) << 13)) ^ (((v15 ^ (v15 >> 22)) + ~((v15 ^ (v15 >> 22)) << 13)) >> 8));
    v17 = (v16 ^ (v16 >> 15)) + ~((v16 ^ (v16 >> 15)) << 27);
    v18 = (*(a1 + 208) + 4 * ((*(a1 + 220) - 1) & ((v17 >> 31) ^ v17)));
    v19 = *(a1 + 236);
    v20 = *v18;
    if (v20 != v19)
    {
      do
      {
        v21 = v20;
        v20 = *(v13 + 4 * v20);
      }

      while (v20 != v19);
      v18 = (v13 + 4 * v21);
    }

    *v18 = v8;
  }

  --*(a1 + 228);
  v22 = 1;
LABEL_17:
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_unlock(*(a1 + 8));
  }

  return v22;
}

uint64_t physx::GuMeshFactory::getNbBVHStructures(pthread_mutex_t **this)
{
  if ((physx::shdfnd::g_alwaysUseLocking & 1) == 0 && (physx::shdfnd::g_isLockingEnabled & 1) == 0)
  {
    return *(this + 59);
  }

  pthread_mutex_lock(this[1]);
  v2 = *(this + 59);
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_unlock(this[1]);
  }

  return v2;
}

uint64_t physx::GuMeshFactory::getBVHStructures(uint64_t a1, void *a2, int a3, unsigned int a4)
{
  LODWORD(v5) = a3;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_lock(*(a1 + 8));
  }

  v8 = (*(a1 + 236) - a4) & ~((*(a1 + 236) - a4) >> 31);
  if (v8 >= v5)
  {
    v5 = v5;
  }

  else
  {
    v5 = v8;
  }

  if (v5)
  {
    v9 = (*(a1 + 192) + 8 * a4);
    v10 = v5;
    do
    {
      v11 = *v9++;
      *a2++ = v11;
      --v10;
    }

    while (v10);
  }

  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_unlock(*(a1 + 8));
  }

  return v5;
}

uint64_t physx::Gu::gjk<physx::Gu::LocalConvex<physx::Gu::CapsuleV>,physx::Gu::LocalConvex<physx::Gu::ConvexHullV>>(uint64_t a1, uint64_t a2, float32x4_t *a3, void *a4, int8x16_t *a5, int8x16_t *a6, float32x4_t *a7, float32x2_t *a8)
{
  v222 = *MEMORY[0x1E69E9840];
  v210 = 0;
  v10 = vmulq_f32(*a3, *a3);
  v10.i64[0] = vpaddq_f32(v10, v10).u64[0];
  v11 = vbslq_s8(vmovl_s16(vdup_lane_s16(vcgtz_f32(vpadd_f32(*v10.f32, *v10.f32)), 0)), *a3, xmmword_1E3047670);
  v209 = v11;
  v12 = vmulq_f32(v11, v11);
  v12.i64[0] = vpaddq_f32(v12, v12).u64[0];
  v13 = vpadd_f32(*v12.f32, *v12.f32);
  v14 = vrsqrte_f32(v13);
  v15 = 4;
  do
  {
    v14 = vmul_f32(v14, vrsqrts_f32(vmul_f32(v14, v14), v13));
    --v15;
  }

  while (v15);
  v16 = vbsl_s8(vdup_lane_s32(vceqz_f32(v13), 0), v13, vmul_f32(v13, v14));
  v17 = vrecpe_f32(v16);
  v18 = 4;
  do
  {
    v17 = vmul_f32(v17, vrecps_f32(v16, v17));
    --v18;
  }

  while (v18);
  v19 = vmulq_n_f32(v11, v17.f32[0]);
  v19.i32[3] = 0;
  v20 = *(a1 + 8);
  v21 = (v20 + 20);
  v22 = vld1_dup_f32(v21);
  v23 = *(a2 + 8);
  v24 = (v23 + 20);
  v25 = vld1_dup_f32(v24);
  v26 = vdup_n_s32(0x358637BDu);
  v27 = vmax_f32(vmul_f32(vmin_f32(v22, v25), vdup_n_s32(0x3DCCCCCDu)), v26);
  v28 = vdupq_n_s32(-*(v20 + 32));
  v29 = vdupq_n_s32(-*(v23 + 32));
  v196 = v28;
  v197 = v29;
  v29.i32[0] = *(v20 + 16);
  v28.i32[0] = -*(v20 + 32);
  *v29.i8 = vdup_lane_s32(vand_s8(*v29.i8, *v28.i8), 0);
  v28.i32[0] = *(v23 + 16);
  v26.i32[0] = -*(v23 + 32);
  *v28.i8 = vadd_f32(*v29.i8, vdup_lane_s32(vand_s8(*v28.i8, v26), 0));
  v203 = *v28.i8;
  v30 = COERCE_FLOAT(*a4) + *v28.i32;
  v31 = vneg_f32(0x80000000800000);
  v32 = vdup_n_s32(0x3F7FF141u);
  v28.i32[0] = -1;
  v195 = v28;
  while (1)
  {
    v205 = v19;
    v208 = v11;
    v33 = v31;
    v202 = v11;
    v34 = vnegq_f32(v11);
    v34.i32[3] = 0;
    v35 = *(a1 + 8);
    v36 = v35[3];
    v37 = v35[4];
    v38 = vmulq_f32(v34, v36);
    v38.i64[0] = vpaddq_f32(v38, v38).u64[0];
    v39 = vmulq_f32(v34, v37);
    v39.i64[0] = vpaddq_f32(v39, v39).u64[0];
    v204 = vbslq_s8(vmovl_s16(vdup_lane_s16(vcgt_f32(vpadd_f32(*v38.f32, *v38.f32), vpadd_f32(*v39.f32, *v39.f32)), 0)), v36, v37);
    *v40.i64 = physx::Gu::LocalConvex<physx::Gu::ConvexHullV>::support(a2, &v209);
    v41 = v40;
    v11 = vsubq_f32(v204, v40);
    v42 = vmulq_f32(v205, v11);
    v42.i64[0] = vpaddq_f32(v42, v42).u64[0];
    v43 = vpadd_f32(*v42.f32, *v42.f32);
    if (v43.f32[0] > v30)
    {
      return 0;
    }

    if (vuzp1_s8(vdup_lane_s16(vand_s8(vcgt_f32(v43, v203), vcgt_f32(v43, vmul_f32(v33, v32))), 0), *v11.f32).u32[0] == -1)
    {
      break;
    }

    v44 = v210;
    *(&v216 + v210) = v204;
    *(&v213 + v44) = v41;
    v210 = v44 + 1;
    *(&v219 + v44) = v11;
    if (v44 == 3)
    {
      physx::Gu::closestPtPointTetrahedron(&v219, &v216, &v213, &v210);
      goto LABEL_45;
    }

    if (v44 != 2)
    {
      if (v44 != 1)
      {
        goto LABEL_45;
      }

      v11 = v219;
      v45 = vsubq_f32(v220, v219);
      v46 = vmulq_f32(v45, v45);
      v46.i64[0] = vpaddq_f32(v46, v46).u64[0];
      v47 = vpadd_f32(*v46.f32, *v46.f32);
      if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v47), 0), *v219.f32).u32[0] != -1)
      {
        v48 = vnegq_f32(v219);
        v48.i32[3] = 0;
        v49 = vmulq_f32(v48, v45);
        v49.i64[0] = vpaddq_f32(v49, v49).u64[0];
        v50 = vpadd_f32(*v49.f32, *v49.f32);
        v51 = vrecpe_f32(v47);
        v52 = 4;
        do
        {
          v51 = vmul_f32(v51, vrecps_f32(v47, v51));
          --v52;
        }

        while (v52);
        v53 = vmul_f32(v50, v51);
        __asm { FMOV            V3.2S, #1.0 }

        v11 = vmlaq_n_f32(v219, v45, vmax_f32(vmin_f32(v53, _D3), 0).f32[0]);
LABEL_29:
        v11.i64[1] = vextq_s8(v11, v11, 8uLL).u32[0];
        goto LABEL_45;
      }

LABEL_30:
      v210 = 1;
      goto LABEL_45;
    }

    v11 = v219;
    v59 = vsubq_f32(v220, v219);
    v60 = vsubq_f32(v221[0], v219);
    v62 = vmls_f32(vmul_f32(*v59.f32, *&vextq_s8(v60, v60, 4uLL)), *&vextq_s8(v59, v59, 4uLL), *v60.f32);
    *v61.f32 = vext_s8(v62, vmls_f32(vmul_f32(*&vextq_s8(v59, v59, 8uLL), *v60.f32), *v59.f32, *&vextq_s8(v60, v60, 8uLL)), 4uLL);
    v62.i32[1] = 0;
    v210 = 3;
    v63 = vpadd_f32(vmul_f32(*v61.f32, *v61.f32), vmul_f32(v62.u32[0], v62.u32[0]));
    v64 = vpadd_f32(v63, v63);
    if (v64.f32[0] <= 0.00000011921)
    {
      v210 = 2;
      v101 = vmulq_f32(v59, v59);
      v101.i64[0] = vpaddq_f32(v101, v101).u64[0];
      v102 = vpadd_f32(*v101.f32, *v101.f32);
      if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v102), 0), *v219.f32).u32[0] != -1)
      {
        v103 = vnegq_f32(v219);
        v103.i32[3] = 0;
        v104 = vmulq_f32(v103, v59);
        v104.i64[0] = vpaddq_f32(v104, v104).u64[0];
        v105 = vpadd_f32(*v104.f32, *v104.f32);
        v106 = vrecpe_f32(v102);
        v107 = 4;
        do
        {
          v106 = vmul_f32(v106, vrecps_f32(v102, v106));
          --v107;
        }

        while (v107);
        v108 = vmul_f32(v105, v106);
        __asm { FMOV            V2.2S, #1.0 }

        v11 = vmlaq_n_f32(v219, v59, vmax_f32(vmin_f32(v108, _D2), 0).f32[0]);
        goto LABEL_29;
      }

      goto LABEL_30;
    }

    *&v61.u32[2] = v62;
    v65 = vextq_s8(v220, v220, 8uLL).u64[0];
    v66 = vextq_s8(v221[0], v221[0], 8uLL).u64[0];
    v67 = vextq_s8(v221[0], v221[0], 4uLL).u64[0];
    v68 = vextq_s8(v220, v220, 4uLL).u64[0];
    v69 = vmls_f32(vmul_f32(*v220.f32, v67), v68, *v221[0].f32);
    *v70.f32 = vext_s8(v69, vmls_f32(vmul_f32(v65, *v221[0].f32), *v220.f32, v66), 4uLL);
    v70.i64[1] = v69.u32[0];
    v71 = vextq_s8(v219, v219, 8uLL).u64[0];
    v72 = vextq_s8(v219, v219, 4uLL).u64[0];
    v73 = vmls_f32(vmul_f32(v72, *v221[0].f32), v67, *v219.f32);
    *v74.f32 = vext_s8(v73, vmls_f32(vmul_f32(*v219.f32, v66), *v221[0].f32, v71), 4uLL);
    v74.i64[1] = v73.u32[0];
    v75 = vmls_f32(vmul_f32(*v219.f32, v68), v72, *v220.f32);
    *v76.f32 = vext_s8(v75, vmls_f32(vmul_f32(v71, *v220.f32), *v219.f32, v65), 4uLL);
    v76.i64[1] = v75.u32[0];
    v77 = vmulq_f32(v70, v61);
    v77.i64[0] = vpaddq_f32(v77, v77).u64[0];
    v78 = vpadd_f32(*v77.f32, *v77.f32);
    v79 = vmulq_f32(v74, v61);
    v79.i64[0] = vpaddq_f32(v79, v79).u64[0];
    v80 = vpadd_f32(*v79.f32, *v79.f32);
    v81 = vmulq_f32(v76, v61);
    v81.i64[0] = vpaddq_f32(v81, v81).u64[0];
    v82 = vpadd_f32(*v81.f32, *v81.f32);
    if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcgez_f32(v80), vcgez_f32(v78)), vcgez_f32(v82)), 0), *v219.f32).u32[0] == -1)
    {
      v110 = vmulq_f32(v219, v61);
      v111 = vextq_s8(v110, v110, 8uLL).u64[0];
      v112 = vrecpe_f32(v64);
      v113 = 4;
      do
      {
        v112 = vmul_f32(v112, vrecps_f32(v64, v112));
        --v113;
      }

      while (v113);
      v114 = vpadd_f32(*v110.i8, v111);
      v11 = vmulq_n_f32(v61, vmul_f32(v112, vpadd_f32(v114, v114)).f32[0]);
      v11.i32[3] = 0;
      goto LABEL_45;
    }

    v83 = vnegq_f32(v219);
    v83.i32[3] = 0;
    v84 = vnegq_f32(v220);
    v84.i32[3] = 0;
    v85 = vmulq_f32(v83, v59);
    v85.i64[0] = vpaddq_f32(v85, v85).u64[0];
    v86 = vpadd_f32(*v85.f32, *v85.f32);
    v87 = vmulq_f32(v59, v84);
    v87.i64[0] = vpaddq_f32(v87, v87).u64[0];
    v88 = vpadd_f32(*v87.f32, *v87.f32);
    if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v82), vand_s8(vclez_f32(v88), vcgez_f32(v86))), 0), *v219.f32).u32[0] == -1)
    {
      v115 = vsub_f32(v86, v88);
      v116 = vrecpe_f32(v115);
      v117 = 4;
      do
      {
        v116 = vmul_f32(v116, vrecps_f32(v115, v116));
        --v117;
      }

      while (v117);
      v100 = 0;
      v11 = vmlaq_n_f32(v219, v59, vmul_f32(v86, vbsl_s8(vcgt_f32(vabs_f32(v115), 0x3400000034000000), v116, 0)).f32[0]);
      v11.i64[1] = vextq_s8(v11, v11, 8uLL).u32[0];
      v99 = 2;
    }

    else
    {
      v89 = vnegq_f32(v221[0]);
      v89.i32[3] = 0;
      v90 = vmulq_f32(v84, v60);
      v90.i64[0] = vpaddq_f32(v90, v90).u64[0];
      v91 = vpadd_f32(*v90.f32, *v90.f32);
      v92 = vmulq_f32(v59, v89);
      v92.i64[0] = vpaddq_f32(v92, v92).u64[0];
      v93 = vpadd_f32(*v92.f32, *v92.f32);
      v94 = vmulq_f32(v60, v89);
      v94.i64[0] = vpaddq_f32(v94, v94).u64[0];
      v95 = vpadd_f32(*v94.f32, *v94.f32);
      if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcge_f32(v91, v88), vcge_f32(v93, v95)), vclez_f32(v78)), 0), *v219.f32).u32[0] == -1)
      {
        v121 = vsub_f32(v91, v88);
        v122 = vadd_f32(v121, vsub_f32(v93, v95));
        v123 = vrecpe_f32(v122);
        v124 = 4;
        do
        {
          v123 = vmul_f32(v123, vrecps_f32(v122, v123));
          --v124;
        }

        while (v124);
        v125 = vmlaq_n_f32(v220, vsubq_f32(v221[0], v220), vmul_f32(v121, vbsl_s8(vcgt_f32(vabs_f32(v122), 0x3400000034000000), v123, 0)).f32[0]);
        v99 = 2;
        v118 = v215;
        v119 = v218;
        v125.i64[1] = vextq_s8(v125, v125, 8uLL).u32[0];
        v120 = v221;
        v100 = 1;
        v11 = v125;
        goto LABEL_44;
      }

      v96 = vmulq_f32(v83, v60);
      v96.i64[0] = vpaddq_f32(v96, v96).u64[0];
      v97 = vpadd_f32(*v96.f32, *v96.f32);
      if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v80), vand_s8(vclez_f32(v95), vcgez_f32(v97))), 0), *v219.f32).u32[0] == -1)
      {
        v126 = vsub_f32(v97, v95);
        v127 = vrecpe_f32(v126);
        v128 = 4;
        do
        {
          v127 = vmul_f32(v127, vrecps_f32(v126, v127));
          --v128;
        }

        while (v128);
        v100 = 0;
        v11 = vmlaq_n_f32(v219, v60, vmul_f32(v97, vbsl_s8(vcgt_f32(vabs_f32(v126), 0x3400000034000000), v127, 0)).f32[0]);
        v11.i64[1] = vextq_s8(v11, v11, 8uLL).u32[0];
        v99 = 2;
        v118 = v215;
        v119 = v218;
        v120 = v221;
        goto LABEL_44;
      }

      if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v97), vclez_f32(v86)), 0), *v219.f32).u32[0] == -1)
      {
        v100 = 0;
        v99 = 1;
      }

      else
      {
        *v11.f32 = vdup_lane_s16(vand_s8(vcge_f32(v88, v91), vcgez_f32(v88)), 0);
        *v11.f32 = vuzp1_s8(*v11.f32, *v11.f32);
        v98 = v11.i32[0];
        v99 = 1;
        v11 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v11, v195), 0), v220, v221[0]);
        if (v98 == -1)
        {
          v100 = 1;
        }

        else
        {
          v100 = 2;
        }
      }
    }

    v118 = &v214;
    v119 = &v217;
    v120 = &v220;
LABEL_44:
    v129 = *(&v216 + v100);
    v130 = *v120;
    v131 = *v119;
    v132 = *(&v213 + v100);
    v133 = *v118;
    v219 = *(&v219 + v100);
    v220 = v130;
    v216 = v129;
    v217 = v131;
    v213 = v132;
    v214 = v133;
    v210 = v99;
LABEL_45:
    v209 = v11;
    v134 = vmulq_f32(v11, v11);
    v134.i64[0] = vpaddq_f32(v134, v134).u64[0];
    v135 = vpadd_f32(*v134.f32, *v134.f32);
    v136 = vrsqrte_f32(v135);
    v137 = 4;
    do
    {
      v136 = vmul_f32(v136, vrsqrts_f32(vmul_f32(v136, v136), v135));
      --v137;
    }

    while (v137);
    v31 = vbsl_s8(vdup_lane_s32(vceqz_f32(v135), 0), v135, vmul_f32(v135, v136));
    v138 = vrecpe_f32(v31);
    v139 = 4;
    do
    {
      v138 = vmul_f32(v138, vrecps_f32(v31, v138));
      --v139;
    }

    while (v139);
    v19 = vmulq_n_f32(v11, v138.f32[0]);
    v19.i32[3] = 0;
    v140 = vcgt_f32(v33, v31);
    if (vuzp1_s8(vdup_lane_s16(vand_s8(vcgt_f32(v31, v27), v140), 0), *v11.f32).u32[0] != -1)
    {
      v151 = vdup_lane_s16(v140, 0);
      *v152.f32 = vuzp1_s8(v151, v151);
      if (v152.i32[0] == -1)
      {
        *a8 = 0;
        return 2;
      }

      else
      {
        v152.i32[0] = *(*(a1 + 8) + 16);
        v153 = (*(a2 + 8) + 16);
        v154 = vld1_dup_f32(v153);
        v155 = vbsl_s8(vdup_lane_s32(vcgtz_f32(v203), 0), v203, vmul_f32(vmin_f32(vdup_lane_s32(*v152.f32, 0), v154), vdup_n_s32(0x3E4CCCCDu)));
        v156 = vnegq_f32(v205);
        v156.i32[3] = 0;
        if (v210 == 3)
        {
          v211 = 0;
          v212 = 0;
          v207 = v156;
          physx::Gu::barycentricCoordinates(&v208, &v219, &v220, v221, &v212, &v211);
          v156 = v207;
          v189 = vmulq_n_f32(vsubq_f32(v217, v216), v212.f32[0]);
          v189.i32[3] = 0;
          v190 = vmulq_n_f32(vsubq_f32(v218[0], v216), v211.f32[0]);
          v190.i32[3] = 0;
          v157 = vaddq_f32(v216, vaddq_f32(v189, v190));
          v152 = vmulq_n_f32(vsubq_f32(v214, v213), v212.f32[0]);
          v152.i32[3] = 0;
          v191 = vmulq_n_f32(vsubq_f32(v215[0], v213), v211.f32[0]);
          v191.i32[3] = 0;
          v164 = vaddq_f32(v213, vaddq_f32(v152, v191));
          v152.i32[0] = *(*(a1 + 8) + 16);
          v159 = a7;
          v158 = a8;
          v161 = a5;
          v160 = a6;
          v163 = v196;
          v162 = v197;
        }

        else if (v210 == 2)
        {
          v181 = vsubq_f32(v219, v202);
          v182 = vsubq_f32(vsubq_f32(v220, v202), v181);
          v183 = vmulq_f32(v182, v182);
          v183.i64[0] = vpaddq_f32(v183, v183).u64[0];
          v184 = vpadd_f32(*v183.f32, *v183.f32);
          v185 = vrecpe_f32(v184);
          v186 = 4;
          v159 = a7;
          v158 = a8;
          v161 = a5;
          v160 = a6;
          v163 = v196;
          v162 = v197;
          do
          {
            v185 = vmul_f32(v185, vrecps_f32(v184, v185));
            --v186;
          }

          while (v186);
          v187 = vnegq_f32(v181);
          v187.i32[3] = 0;
          v188 = vmulq_f32(v187, v182);
          v188.i64[0] = vpaddq_f32(v188, v188).u64[0];
          v187.i32[0] = vmul_f32(vbsl_s8(vcgtz_f32(v184), v185, 0), vpadd_f32(*v188.f32, *v188.f32)).u32[0];
          v157 = vmlaq_n_f32(v216, vsubq_f32(v217, v216), v187.f32[0]);
          v157.i64[1] = vextq_s8(v157, v157, 8uLL).u32[0];
          v164 = vmlaq_n_f32(v213, vsubq_f32(v214, v213), v187.f32[0]);
          v164.i64[1] = vextq_s8(v164, v164, 8uLL).u32[0];
        }

        else
        {
          v157 = 0uLL;
          v159 = a7;
          v158 = a8;
          v161 = a5;
          v160 = a6;
          v163 = v196;
          v162 = v197;
          if (v210 == 1)
          {
            v157 = v216;
            v164 = v213;
          }

          else
          {
            v164 = 0uLL;
          }
        }

        v192 = vmlaq_n_f32(v157, v156, v152.f32[0]);
        v192.i64[1] = vextq_s8(v192, v192, 8uLL).u32[0];
        v193 = vbslq_s8(v163, v192, v157);
        *v161 = v193;
        v193.i32[0] = *(*(a2 + 8) + 16);
        v194 = vmlsq_lane_f32(v164, v156, *v193.i8, 0);
        v194.i64[1] = vextq_s8(v194, v194, 8uLL).u32[0];
        *v160 = vbslq_s8(v162, v194, v164);
        *v159 = v156;
        *v193.i8 = vmax_f32(vsub_f32(v33, v203), 0);
        *v158 = *v193.i8;
        if (vcgt_f32(*v193.i8, v155).u8[0])
        {
          return 1;
        }

        else
        {
          return 2;
        }
      }
    }
  }

  v142 = vnegq_f32(v205);
  v142.i32[3] = 0;
  if (v210 == 3)
  {
    v211 = 0;
    v212 = 0;
    v206 = v142;
    physx::Gu::barycentricCoordinates(&v209, &v219, &v220, v221, &v212, &v211);
    v173 = vmulq_n_f32(vsubq_f32(v217, v216), v212.f32[0]);
    v173.i32[3] = 0;
    v174 = vmulq_n_f32(vsubq_f32(v218[0], v216), v211.f32[0]);
    v174.i32[3] = 0;
    v175 = vaddq_f32(v173, v174);
    v176 = vmulq_n_f32(vsubq_f32(v214, v213), v212.f32[0]);
    v176.i32[3] = 0;
    v143 = vaddq_f32(v216, v175);
    v177 = vmulq_n_f32(vsubq_f32(v215[0], v213), v211.f32[0]);
    v142 = v206;
    v177.i32[3] = 0;
    v144 = vaddq_f32(v213, vaddq_f32(v176, v177));
    v146 = a7;
    v145 = a8;
    v148 = a5;
    v147 = a6;
    v150 = v196;
    v149 = v197;
  }

  else if (v210 == 2)
  {
    v165 = vsubq_f32(v219, v209);
    v166 = vsubq_f32(vsubq_f32(v220, v209), v165);
    v167 = vmulq_f32(v166, v166);
    v167.i64[0] = vpaddq_f32(v167, v167).u64[0];
    v168 = vpadd_f32(*v167.f32, *v167.f32);
    v169 = vrecpe_f32(v168);
    v170 = 4;
    v146 = a7;
    v145 = a8;
    v148 = a5;
    v147 = a6;
    v150 = v196;
    v149 = v197;
    do
    {
      v169 = vmul_f32(v169, vrecps_f32(v168, v169));
      --v170;
    }

    while (v170);
    v171 = vnegq_f32(v165);
    v171.i32[3] = 0;
    v172 = vmulq_f32(v171, v166);
    v172.i64[0] = vpaddq_f32(v172, v172).u64[0];
    v171.i32[0] = vmul_f32(vbsl_s8(vcgtz_f32(v168), v169, 0), vpadd_f32(*v172.f32, *v172.f32)).u32[0];
    v143 = vmlaq_n_f32(v216, vsubq_f32(v217, v216), v171.f32[0]);
    v143.i64[1] = vextq_s8(v143, v143, 8uLL).u32[0];
    v144 = vmlaq_n_f32(v213, vsubq_f32(v214, v213), v171.f32[0]);
    v144.i64[1] = vextq_s8(v144, v144, 8uLL).u32[0];
  }

  else
  {
    v143 = 0uLL;
    v144 = 0uLL;
    v146 = a7;
    v145 = a8;
    v148 = a5;
    v147 = a6;
    v150 = v196;
    v149 = v197;
    if (v210 == 1)
    {
      v143 = v216;
      v144 = v213;
    }
  }

  v178 = vmlaq_n_f32(v143, v142, *(*(a1 + 8) + 16));
  v178.i64[1] = vextq_s8(v178, v178, 8uLL).u32[0];
  v179 = vbslq_s8(v150, v178, v143);
  *v148 = v179;
  v179.i32[0] = *(*(a2 + 8) + 16);
  v180 = vmlsq_lane_f32(v144, v142, *v179.i8, 0);
  v180.i64[1] = vextq_s8(v180, v180, 8uLL).u32[0];
  *v147 = vbslq_s8(v149, v180, v144);
  *v145 = vmax_f32(vsub_f32(v33, v203), 0);
  *v146 = v142;
  return 1;
}

BOOL GeomMTDCallback_SphereSphere(float32x2_t *a1, float *a2, uint64_t a3, float32x2_t *a4, uint64_t a5, float32x2_t *a6)
{
  v6 = vsub_f32(a4[2], a6[2]);
  v7 = a4[3].f32[0] - a6[3].f32[0];
  v8 = (COERCE_FLOAT(vmul_f32(v6, v6).i32[1]) + (v6.f32[0] * v6.f32[0])) + (v7 * v7);
  v9 = *(a3 + 4) + *(a5 + 4);
  if (v8 <= (v9 * v9))
  {
    v10 = sqrtf(v8);
    if (v8 >= 0.000001)
    {
      v11 = vmul_n_f32(v6, 1.0 / v10);
      v12 = v7 * (1.0 / v10);
    }

    else
    {
      v11 = 1065353216;
      v12 = 0.0;
    }

    *a1 = v11;
    a1[1].f32[0] = v12;
    *a2 = fmaxf(v9 - v10, 0.0);
  }

  return v8 <= (v9 * v9);
}

BOOL GeomMTDCallback_SpherePlane(float *a1, float *a2, uint64_t a3, float *a4, uint64_t a5, float *a6)
{
  v6 = *(a3 + 4);
  v8 = a6[2];
  v7 = a6[3];
  v9 = v7 + v7;
  v10 = *a6;
  v11 = a6[1];
  v12 = v10 + v10;
  v13 = ((v7 * (v7 + v7)) + -1.0) + (v10 * (v10 + v10));
  v14 = ((v10 + v10) * v11) + (v8 * v9);
  v15 = (v12 * v8) - (v11 * v9);
  v16 = (((a4[5] * v14) + (a4[4] * v13)) + (a4[6] * v15)) - (((a6[5] * v14) + (a6[4] * v13)) + (a6[6] * v15));
  if (v16 <= v6)
  {
    *a1 = v13;
    a1[1] = v14;
    a1[2] = v15;
    *a2 = fmaxf(v6 - v16, 0.0);
  }

  return v16 <= v6;
}

BOOL GeomMTDCallback_SphereCapsule(uint64_t a1, float *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a6;
  v7 = v6 + v6;
  v8 = *(a6 + 12);
  v9 = *(a6 + 16);
  v10 = v8 + v8;
  v11 = *(a5 + 8);
  v12 = (((v8 * (v8 + v8)) + -1.0) + (v6 * (v6 + v6))) * v11;
  v13 = v9 + v12;
  v14 = v9 - v12;
  v15 = *(a5 + 4) + *(a3 + 4);
  v16 = v14 - v13;
  v17 = *(a6 + 4);
  v18.i32[0] = vdup_lane_s32(v17, 1).u32[0];
  v18.f32[1] = -v17.f32[0];
  v19 = vmul_n_f32(vmla_n_f32(vmul_n_f32(v17, v7), v18, v10), v11);
  v20 = *(a6 + 20);
  v21 = vadd_f32(v20, v19);
  v22 = vsub_f32(v20, v19);
  v23 = *(a4 + 20);
  v24 = vsub_f32(v22, v21);
  _D7 = vsub_f32(v23, v21);
  _S19 = v24.i32[1];
  __asm { FMLA            S18, S19, V7.S[1] }

  v32 = 0.0;
  if (_S18 > 0.0)
  {
    v33 = (vmul_f32(v24, v24).f32[0] + (v16 * v16)) + (v24.f32[1] * v24.f32[1]);
    if (_S18 >= v33)
    {
      _D7 = vsub_f32(_D7, v24);
      v32 = 1.0;
    }

    else
    {
      v32 = _S18 / v33;
      _D7 = vsub_f32(_D7, vmul_n_f32(v24, v32));
    }
  }

  _S18 = _D7.i32[1];
  __asm { FMLA            S16, S18, V7.S[1] }

  if (_S16 <= (v15 * v15))
  {
    v36 = *(a4 + 16) - (v13 + (v16 * v32));
    _D3 = vsub_f32(v23, vadd_f32(v21, vmul_n_f32(v24, v32)));
    _S1 = _D3.i32[1];
    __asm { FMLA            S4, S1, V3.S[1] }

    v40 = sqrtf(_S4);
    if (_S4 >= 0.000001)
    {
      v42 = v36 * (1.0 / v40);
      v41 = vmul_n_f32(_D3, 1.0 / v40);
    }

    else
    {
      v41 = 0;
      v42 = 1.0;
    }

    *a1 = v42;
    *(a1 + 4) = v41;
    *a2 = fmaxf(v15 - v40, 0.0);
  }

  return _S16 <= (v15 * v15);
}