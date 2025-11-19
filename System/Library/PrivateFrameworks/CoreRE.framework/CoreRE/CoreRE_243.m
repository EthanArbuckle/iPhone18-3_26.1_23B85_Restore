uint64_t physx::PxsCCDBlockArray<physx::PxsCCDShape,128>::pushBack(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *a1;
  if (*(*a1 + 16 * v1 + 8) == 128)
  {
    v4 = v1 + 1;
    if (v1 + 1 == *(a1 + 8))
    {
      v5 = physx::shdfnd::Foundation::mInstance;
      if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
      {
        v6 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxsCCDBlockArray<physx::PxsCCDShape, 128>::Block>::getName() [T = physx::PxsCCDBlockArray<physx::PxsCCDShape, 128>::Block]";
      }

      else
      {
        v6 = "<allocation names disabled>";
      }

      v7 = (*(*(v5 + 24) + 16))(v5 + 24, 15360, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevel/software/include/PxsCCD.h", 260);
      v8 = -15360;
      do
      {
        *(v7 + v8 + 15472) = -128;
        v8 += 120;
      }

      while (v8);
      *&v13 = v7;
      DWORD2(v13) = 0;
      v9 = *(a1 + 8);
      if ((*(a1 + 12) & 0x7FFFFFFFu) <= v9)
      {
        physx::shdfnd::Array<physx::PxsCCDBlockArray<physx::PxsCCDShape,128>::BlockInfo,physx::shdfnd::ReflectionAllocator<physx::PxsCCDBlockArray<physx::PxsCCDShape,128>::BlockInfo>>::growAndPushBack(a1, &v13);
      }

      else
      {
        *(*a1 + 16 * v9) = v13;
        ++*(a1 + 8);
      }

      v2 = *a1;
      v4 = *(a1 + 16) + 1;
    }

    *(a1 + 16) = v4;
    v1 = v4;
    *(v2 + 16 * v4 + 8) = 0;
  }

  v10 = v2 + 16 * v1;
  v11 = *(v10 + 8);
  *(v10 + 8) = v11 + 1;
  return *v10 + 120 * v11;
}

int32x2_t *physx::shdfnd::internal::HashMapBase<physx::shdfnd::Pair<physx::PxsRigidCore const*,physx::PxsShapeCore const*>,physx::PxsCCDShape *,physx::shdfnd::Hash<physx::shdfnd::Pair<physx::PxsRigidCore const*,physx::PxsShapeCore const*>>,physx::shdfnd::NonTrackingAllocator>::insert(int32x2_t *result, void *a2, uint64_t a3)
{
  v5 = result;
  v6 = result[4].u32[1];
  if (!v6)
  {
    v14 = 0;
    goto LABEL_10;
  }

  v7 = a2[1];
  v8 = (~(v7 << 32) + v7) ^ ((~(v7 << 32) + v7) >> 22);
  v9 = 9 * ((v8 + ~(v8 << 13)) ^ ((v8 + ~(v8 << 13)) >> 8));
  v10 = (v9 ^ (v9 >> 15)) + ~((v9 ^ (v9 >> 15)) << 27);
  v11 = ~(*a2 << 32) + *a2;
  v12 = 9 * (((v11 ^ (v11 >> 22)) + ~((v11 ^ (v11 >> 22)) << 13)) ^ (((v11 ^ (v11 >> 22)) + ~((v11 ^ (v11 >> 22)) << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = ((1000007 * ((v13 >> 31) ^ v13 ^ 0xFC955B95)) ^ (v10 >> 31) ^ v10) & (v6 - 1);
  v15 = *(*&result[3] + 4 * v14);
  if (v15 == -1)
  {
LABEL_10:
    if (result[6].i32[1] == result[4].i32[0])
    {
      if (v6)
      {
        v20 = 2 * v6;
      }

      else
      {
        v20 = 16;
      }

      if (v6 < v20)
      {
        result = physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<physx::shdfnd::Pair<physx::PxsRigidCore const*,physx::PxsShapeCore const*> const,physx::PxsCCDShape *>,physx::shdfnd::Pair<physx::PxsRigidCore const*,physx::PxsShapeCore const*>,physx::shdfnd::Hash<physx::shdfnd::Pair<physx::PxsRigidCore const*,physx::PxsShapeCore const*>>,physx::shdfnd::internal::HashMapBase<physx::shdfnd::Pair<physx::PxsRigidCore const*,physx::PxsShapeCore const*>,physx::PxsCCDShape *,physx::shdfnd::Hash<physx::shdfnd::Pair<physx::PxsRigidCore const*,physx::PxsShapeCore const*>>,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(result, v20);
        v6 = v5[4].u32[1];
      }

      v21 = *a2;
      v22 = ~(a2[1] << 32) + a2[1];
      v23 = (v22 ^ (v22 >> 22)) + ~((v22 ^ (v22 >> 22)) << 13);
      v24 = (9 * (v23 ^ (v23 >> 8))) ^ ((9 * (v23 ^ (v23 >> 8))) >> 15);
      v25 = ~(*a2 << 32) + *a2;
      v26 = 9 * (((v25 ^ (v25 >> 22)) + ~((v25 ^ (v25 >> 22)) << 13)) ^ (((v25 ^ (v25 >> 22)) + ~((v25 ^ (v25 >> 22)) << 13)) >> 8));
      v27 = (v26 ^ (v26 >> 15)) + ~((v26 ^ (v26 >> 15)) << 27);
      v14 = ((1000007 * ((v27 >> 31) ^ v27 ^ 0xFC955B95)) ^ ((v24 + ~(v24 << 27)) >> 31) ^ (v24 + ~(v24 << 27))) & (v6 - 1);
    }

    else
    {
      v21 = *a2;
    }

    v28 = v5[5].u32[1];
    v5[5].i32[1] = v28 + 1;
    v29 = v5[3];
    v30 = v5[1];
    *(*&v5[2] + 4 * v28) = *(*&v29 + 4 * v14);
    *(*&v29 + 4 * v14) = v28;
    v5[6] = vadd_s32(v5[6], 0x100000001);
    v31 = *&v30 + 24 * v28;
    *v31 = v21;
    *(v31 + 16) = a3;
    return result;
  }

  while (1)
  {
    v16 = (*&result[1] + 24 * v15);
    v18 = *v16;
    v17 = v16[1];
    if (v18 == *a2 && v17 == v7)
    {
      return result;
    }

    v15 = *(*&result[2] + 4 * v15);
    if (v15 == -1)
    {
      goto LABEL_10;
    }
  }
}

uint64_t physx::PxsCCDBlockArray<physx::PxsCCDOverlap,128>::pushBack(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *a1;
  if (*(*a1 + 16 * v1 + 8) == 128)
  {
    v4 = v1 + 1;
    if (v1 + 1 == *(a1 + 8))
    {
      v5 = physx::shdfnd::Foundation::mInstance;
      if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
      {
        v6 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxsCCDBlockArray<physx::PxsCCDOverlap, 128>::Block>::getName() [T = physx::PxsCCDBlockArray<physx::PxsCCDOverlap, 128>::Block]";
      }

      else
      {
        v6 = "<allocation names disabled>";
      }

      *&v11 = (*(*(v5 + 24) + 16))(v5 + 24, 2048, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevel/software/include/PxsCCD.h", 260);
      DWORD2(v11) = 0;
      v7 = *(a1 + 8);
      if ((*(a1 + 12) & 0x7FFFFFFFu) <= v7)
      {
        physx::shdfnd::Array<physx::PxsCCDBlockArray<physx::PxsCCDOverlap,128>::BlockInfo,physx::shdfnd::ReflectionAllocator<physx::PxsCCDBlockArray<physx::PxsCCDOverlap,128>::BlockInfo>>::growAndPushBack(a1, &v11);
      }

      else
      {
        *(*a1 + 16 * v7) = v11;
        ++*(a1 + 8);
      }

      v2 = *a1;
      v4 = *(a1 + 16) + 1;
    }

    *(a1 + 16) = v4;
    v1 = v4;
    *(v2 + 16 * v4 + 8) = 0;
  }

  v8 = v2 + 16 * v1;
  v9 = *(v8 + 8);
  *(v8 + 8) = v9 + 1;
  return *v8 + 16 * v9;
}

uint64_t physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::resize(uint64_t result, unsigned int a2, int *a3)
{
  v5 = result;
  if ((*(result + 12) & 0x7FFFFFFFu) < a2)
  {
    result = physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::recreate(result, a2);
  }

  v6 = *(v5 + 8);
  if (v6 < a2)
  {
    v7 = 0;
    v8 = *v5 + 4 * v6;
    v9 = *v5 + 4 * a2;
    if (v8 + 4 > v9)
    {
      v9 = v8 + 4;
    }

    v10 = *a3;
    v11 = (v9 + ~*v5 - 4 * v6) >> 2;
    v12 = vdupq_n_s64(v11);
    v13 = (v11 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v14 = (v8 + 8);
    do
    {
      v15 = vdupq_n_s64(v7);
      v16 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_1E3049620)));
      if (vuzp1_s16(v16, *v12.i8).u8[0])
      {
        *(v14 - 2) = v10;
      }

      if (vuzp1_s16(v16, *&v12).i8[2])
      {
        *(v14 - 1) = v10;
      }

      if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_1E3049640)))).i32[1])
      {
        *v14 = v10;
        v14[1] = v10;
      }

      v7 += 4;
      v14 += 4;
    }

    while (v13 != v7);
  }

  *(v5 + 8) = a2;
  return result;
}

uint64_t physx::Cm::FlushPool::allocate(pthread_mutex_t **this, int a2, unsigned int a3)
{
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_lock(*this);
  }

  NotThreadSafe = physx::Cm::FlushPool::allocateNotThreadSafe(this, a2, a3);
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_unlock(*this);
  }

  return NotThreadSafe;
}

float anonymous namespace::getShapeAbsPose(float *a1, float *a2, float *a3, int a4)
{
  if (a4)
  {
    v4 = a3[12] * -2.0;
    v5 = a3[13] * -2.0;
    v6 = a3[14] * -2.0;
    v8 = a3[10];
    v7 = a3[11];
    v9 = (v7 * v7) + -0.5;
    v11 = a3[8];
    v10 = a3[9];
    v12 = ((v5 * v10) + (v11 * v4)) + (v8 * v6);
    v13 = ((v4 * v9) - (((v10 * v6) - (v8 * v5)) * v7)) + (v11 * v12);
    v14 = ((v5 * v9) - (((v8 * v4) - (v11 * v6)) * v7)) + (v10 * v12);
    v15 = ((v6 * v9) - (((v11 * v5) - (v10 * v4)) * v7)) + (v8 * v12);
    v16 = v13 + v13;
    v17 = v14 + v14;
    v18 = v15 + v15;
    v20 = a3[2];
    v19 = a3[3];
    v21 = (v19 * v19) + -0.5;
    v22 = a3[1];
    v23 = ((v22 * v17) + (*a3 * v16)) + (v20 * v18);
    v24 = ((v19 * ((v22 * v18) - (v20 * v17))) + (v16 * v21)) + (*a3 * v23);
    v25 = ((v19 * ((v20 * v16) - (*a3 * v18))) + (v17 * v21)) + (v22 * v23);
    v26 = ((v19 * ((*a3 * v17) - (v22 * v16))) + (v18 * v21)) + (v20 * v23);
    v27 = a3[4] + v24;
    v28 = a3[6] + v26;
    v29 = (((v7 * *a3) - (v19 * v11)) - (v22 * v8)) + (v10 * v20);
    v30 = (((v7 * v22) - (v19 * v10)) - (v20 * v11)) + (v8 * *a3);
    v31 = (((v7 * v20) - (v19 * v8)) - (*a3 * v10)) + (v11 * v22);
    v32 = (((v11 * *a3) + (v19 * v7)) + (v22 * v10)) + (v20 * v8);
    v33 = a2[4] + a2[4];
    v34 = a2[5] + a2[5];
    v35 = a2[6] + a2[6];
    v36 = (v32 * v32) + -0.5;
    v37 = ((v30 * v34) + (v29 * v33)) + (v31 * v35);
    v38 = -v31;
    v39 = -v29;
    v40 = -v30;
    v41 = v27 + (((v32 * ((v30 * v35) - (v31 * v34))) + (v33 * v36)) + (v29 * v37));
    v42 = (a3[5] + v25) + (((v32 * ((v31 * v33) - (v29 * v35))) + (v34 * v36)) + (v30 * v37));
    v43 = v28 + (((v32 * ((v29 * v34) - (v30 * v33))) + (v35 * v36)) + (v31 * v37));
  }

  else
  {
    v44 = a2[4] + a2[4];
    v45 = a2[5] + a2[5];
    v46 = a2[6] + a2[6];
    v31 = a3[2];
    v32 = a3[3];
    v47 = (v32 * v32) + -0.5;
    v29 = *a3;
    v30 = a3[1];
    v48 = ((v45 * v30) + (*a3 * v44)) + (v31 * v46);
    v38 = -v31;
    v49 = ((v32 * ((v30 * v46) - (v31 * v45))) + (v44 * v47)) + (*a3 * v48);
    v39 = -*a3;
    v50 = ((v32 * ((v31 * v44) - (*a3 * v46))) + (v45 * v47)) + (v30 * v48);
    v40 = -v30;
    v51 = ((v32 * ((*a3 * v45) - (v30 * v44))) + (v46 * v47)) + (v31 * v48);
    v41 = a3[4] + v49;
    v42 = a3[5] + v50;
    v43 = a3[6] + v51;
  }

  v53 = a2[2];
  v52 = a2[3];
  v54 = a2[1];
  v55 = (((v29 * v52) + (v32 * *a2)) + (v30 * v53)) - (v54 * v31);
  v56 = (((v30 * v52) + (v32 * v54)) + (v31 * *a2)) - (v53 * v29);
  result = (((v31 * v52) + (v32 * v53)) + (v29 * v54)) - (*a2 * v30);
  v58 = v39 * *a2;
  *a1 = v55;
  a1[1] = v56;
  a1[2] = result;
  a1[3] = ((v58 + (v32 * v52)) + (v40 * v54)) + (v38 * v53);
  a1[4] = v41;
  a1[5] = v42;
  a1[6] = v43;
  return result;
}

uint64_t physx::PxsContext::PxsContext(uint64_t a1, int32x2_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  physx::PxcScratchAllocator::PxcScratchAllocator(a1);
  v11 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v12 = "static const char *physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>::getName() [T = physx::shdfnd::MutexImpl]";
  }

  else
  {
    v12 = "<allocation names disabled>";
  }

  v13 = (*(*(v11 + 24) + 16))(v11 + 24, 72, v12, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsMutex.h", 138);
  *(a1 + 40) = v13;
  physx::shdfnd::MutexImpl::MutexImpl(v13);
  *(a1 + 48) = 0u;
  *(a1 + 244) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 272) = a1;
  *(a1 + 280) = 0u;
  *(a1 + 296) = &unk_1F5D1BEB0;
  *(a1 + 424) = 0;
  *(a1 + 384) = 0;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 408) = 0;
  *(a1 + 392) = 0u;
  v14 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v15 = "static const char *physx::shdfnd::ReflectionAllocator<physx::shdfnd::SListImpl>::getName() [T = physx::shdfnd::SListImpl]";
  }

  else
  {
    v15 = "<allocation names disabled>";
  }

  v16 = (*(*(v14 + 24) + 16))(v14 + 24, 72, v15, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsSList.h", 103);
  *(a1 + 440) = v16;
  *v16 = 0;
  pthread_mutex_init((v16 + 8), 0);
  *(a1 + 448) = a1;
  *(a1 + 456) = 256;
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  *(a1 + 496) = a1;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 464) = 8;
  *(a1 + 1056) = 0x4000000000;
  *(a1 + 1040) = 1;
  *(a1 + 1048) = a1 + 528;
  *(a1 + 1064) = 256;
  *(a1 + 1072) = 73728;
  *(a1 + 1080) = 0;
  *(a1 + 1624) = 0x4000000000;
  *(a1 + 1608) = 1;
  *(a1 + 1616) = a1 + 1096;
  *(a1 + 1632) = 256;
  *(a1 + 1640) = 36864;
  *(a1 + 1672) = 0;
  *(a1 + 1680) = 0;
  *(a1 + 1688) = 0;
  *(a1 + 1696) = 0;
  *(a1 + 1704) = 0;
  *(a1 + 1712) = 0;
  *(a1 + 1720) = 0;
  *(a1 + 1728) = 0;
  *(a1 + 1664) = 0;
  *(a1 + 1648) = 0u;
  v17 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v18 = "static const char *physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>::getName() [T = physx::shdfnd::MutexImpl]";
  }

  else
  {
    v18 = "<allocation names disabled>";
  }

  v19 = (*(*(v17 + 24) + 16))(v17 + 24, 72, v18, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsMutex.h", 138);
  *(a1 + 1760) = v19;
  physx::shdfnd::MutexImpl::MutexImpl(v19);
  *(a1 + 1784) = 0;
  *(a1 + 1768) = 0u;
  *(a1 + 1912) = a3;
  *(a1 + 1920) = a4;
  *(a1 + 1928) = a5;
  bzero((a1 + 1936), 0x288uLL);
  v20 = a2[19].i32[0];
  *(a1 + 2584) = (v20 & 0x40) != 0;
  *(a1 + 2585) = 0;
  *(a1 + 2586) = (v20 & 0x800) != 0;
  *(a1 + 2616) = a6;
  bzero(*(a1 + 1704), (4 * *(a1 + 1712)));
  bzero(*(a1 + 1720), (4 * *(a1 + 1728)));
  *(a1 + 1752) = 0;
  *(a1 + 1888) = xmmword_1E31137B0;
  *(a1 + 1736) = 0u;
  *(a1 + 1904) = vdup_n_s32(0x7E7FFFFFu);
  *(a1 + 1792) = 0u;
  *(a1 + 1808) = 0u;
  *(a1 + 1824) = 0u;
  *(a1 + 1840) = 0u;
  *(a1 + 1856) = 0u;
  *(a1 + 1872) = 0u;
  v21 = a2[26];
  *(a1 + 236) = vrev64_s32(v21);
  v22 = v21.i32[0];
  if (v21.i32[0] <= 0x40u)
  {
    v23 = 64;
  }

  else
  {
    v23 = v21.i32[0];
  }

  if ((*(a1 + 60) & 0x7FFFFFFFu) < v23)
  {
    physx::shdfnd::Array<physx::PxcNpMemBlock *,physx::shdfnd::ReflectionAllocator<physx::PxcNpMemBlock *>>::recreate(a1 + 48, v23);
  }

  if ((*(a1 + 188) & 0x7FFFFFF0) == 0)
  {
    physx::shdfnd::Array<unsigned char *,physx::shdfnd::ReflectionAllocator<unsigned char *>>::recreate(a1 + 176, 0x10u);
  }

  if ((*(a1 + 108) & 0x7FFFFFFFu) < v23)
  {
    physx::shdfnd::Array<physx::PxcNpMemBlock *,physx::shdfnd::ReflectionAllocator<physx::PxcNpMemBlock *>>::recreate(a1 + 96, v23);
  }

  if ((*(a1 + 124) & 0x7FFFFFFFu) < v23)
  {
    physx::shdfnd::Array<physx::PxcNpMemBlock *,physx::shdfnd::ReflectionAllocator<physx::PxcNpMemBlock *>>::recreate(a1 + 112, v23);
  }

  if ((*(a1 + 140) & 0x7FFFFFFFu) < v23)
  {
    physx::shdfnd::Array<physx::PxcNpMemBlock *,physx::shdfnd::ReflectionAllocator<physx::PxcNpMemBlock *>>::recreate(a1 + 128, v23);
  }

  if ((*(a1 + 156) & 0x7FFFFFFFu) < v23)
  {
    physx::shdfnd::Array<physx::PxcNpMemBlock *,physx::shdfnd::ReflectionAllocator<physx::PxcNpMemBlock *>>::recreate(a1 + 144, v23);
  }

  if ((*(a1 + 204) & 0x7FFFFFFFu) < v23)
  {
    physx::shdfnd::Array<physx::PxcNpMemBlock *,physx::shdfnd::ReflectionAllocator<physx::PxcNpMemBlock *>>::recreate(a1 + 192, v23);
  }

  physx::PxcNpMemBlockPool::setBlockCount(a1 + 40, v22);
  *(a1 + 208) = 0;
  return a1;
}

void physx::PxsContext::~PxsContext(physx::PxsContext *this)
{
  v2 = *(this + 324);
  if (v2)
  {
    v3 = *(v2 + 5);
    if (v3 < 0 || ((v3 & 0x7FFFFFFF) != 0 ? (v4 = v2[1] == 0) : (v4 = 1), v4 || ((*(**v2 + 24))(*v2, v2[1]), *(this + 324))))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }
  }

  *(this + 324) = 0;
  v5 = *(this + 115);
  if (v5)
  {
    for (i = 0; i < v5; ++i)
    {
      v7 = *(this + 61);
      if (*(v7 + 8 * i))
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
        v7 = *(this + 61);
        v5 = *(this + 115);
      }

      *(v7 + 8 * i) = 0;
    }
  }

  *(this + 115) = 0;
  if (*(this + 59))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 59) = 0;
  if (*(this + 61))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    *(this + 61) = 0;
  }

  physx::shdfnd::MutexT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>>::~MutexT(this + 220);
  if (*(this + 215) && (*(this + 432) & 0x80000000) == 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 215) = 0;
  if (*(this + 213) && (*(this + 428) & 0x80000000) == 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 213) = 0;
  if (*(this + 211) && (*(this + 424) & 0x80000000) == 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 211) = 0;
  if (*(this + 209) && (*(this + 420) & 0x80000000) == 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 209) = 0;
  if (*(this + 207) && (*(this + 416) & 0x80000000) == 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 207) = 0;
  if (*(this + 409))
  {
    v53 = 0;
    v54 = 0;
    v8 = *(this + 206);
    if (v8)
    {
      do
      {
        v52 = v8;
        v9 = v54;
        if ((HIDWORD(v54) & 0x7FFFFFFFu) <= v54)
        {
          physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::Gu::SpherePersistentContactManifold>>::growAndPushBack(&v53, &v52);
        }

        else
        {
          *(v53 + 8 * v54) = v8;
          LODWORD(v54) = v9 + 1;
        }

        v8 = **(this + 206);
        *(this + 206) = v8;
      }

      while (v8);
      v10 = v53;
      v11 = v54;
    }

    else
    {
      v11 = 0;
      v10 = 0;
    }

    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Gu::SpherePersistentContactManifold>>(v10, v11);
    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Gu::SpherePersistentContactManifold>>(*(this + 202), *(this + 406));
    if ((v54 & 0x8000000000000000) == 0 && (v54 & 0x7FFFFFFF00000000) != 0 && v53)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }
  }

  v12 = *(this + 202);
  v13 = *(this + 406);
  if (v13)
  {
    v14 = 8 * v13;
    do
    {
      if (*v12)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      }

      v12 = (v12 + 8);
      v14 -= 8;
    }

    while (v14);
    v12 = *(this + 202);
  }

  v15 = *(this + 407);
  if ((v15 & 0x80000000) == 0 && (v15 & 0x7FFFFFFF) != 0)
  {
    if (v12 == (this + 1096))
    {
      *(this + 1608) = 0;
    }

    else if (v12)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v12);
    }
  }

  if (*(this + 267))
  {
    v53 = 0;
    v54 = 0;
    v16 = *(this + 135);
    if (v16)
    {
      do
      {
        v52 = v16;
        v17 = v54;
        if ((HIDWORD(v54) & 0x7FFFFFFFu) <= v54)
        {
          physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::Gu::LargePersistentContactManifold>>::growAndPushBack(&v53, &v52);
        }

        else
        {
          *(v53 + 8 * v54) = v16;
          LODWORD(v54) = v17 + 1;
        }

        v16 = **(this + 135);
        *(this + 135) = v16;
      }

      while (v16);
      v18 = v53;
      v19 = v54;
    }

    else
    {
      v19 = 0;
      v18 = 0;
    }

    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Gu::LargePersistentContactManifold>>(v18, v19);
    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Gu::LargePersistentContactManifold>>(*(this + 131), *(this + 264));
    if ((v54 & 0x8000000000000000) == 0 && (v54 & 0x7FFFFFFF00000000) != 0 && v53)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }
  }

  v20 = *(this + 131);
  v21 = *(this + 264);
  if (v21)
  {
    v22 = 8 * v21;
    do
    {
      if (*v20)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      }

      v20 = (v20 + 8);
      v22 -= 8;
    }

    while (v22);
    v20 = *(this + 131);
  }

  v23 = *(this + 265);
  if ((v23 & 0x80000000) == 0 && (v23 & 0x7FFFFFFF) != 0)
  {
    if (v20 == (this + 528))
    {
      *(this + 1040) = 0;
    }

    else if (v20)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v20);
    }
  }

  v24 = *(this + 115);
  if (v24)
  {
    for (j = 0; j < v24; ++j)
    {
      v26 = *(this + 61);
      if (*(v26 + 8 * j))
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
        v26 = *(this + 61);
        v24 = *(this + 115);
      }

      *(v26 + 8 * j) = 0;
    }
  }

  *(this + 115) = 0;
  if (*(this + 59))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 59) = 0;
  if (*(this + 61))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    *(this + 61) = 0;
  }

  if (*(this + 63) && (*(this + 128) & 0x80000000) == 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 63) = 0;
  v27 = physx::shdfnd::SListImpl::pop(*(this + 55));
  if (v27)
  {
    v28 = v27;
    do
    {
      if (v28[910] && (v28[911] & 0x80000000) == 0)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      }

      v28[910] = 0;
      if (v28[908] && (v28[909] & 0x80000000) == 0)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      }

      v28[908] = 0;
      v29 = *(v28 + 1791);
      if ((v29 & 0x80000000) == 0 && (v29 & 0x7FFFFFFF) != 0 && v28[894] != 0)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      }

      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v28 - *(v28 - 1));
      v28 = physx::shdfnd::SListImpl::pop(*(this + 55));
    }

    while (v28);
  }

  physx::shdfnd::SListT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::SListImpl>>::~SListT(this + 440);
  physx::Cm::RenderBuffer::~RenderBuffer((this + 296));
  physx::PxcNpMemBlockPool::release(this + 40, this + 16 * (1 - *(this + 55)) + 96, 0);
  v31 = *(this + 55);
  *(this + 55) = 1 - v31;
  physx::PxcNpMemBlockPool::release(this + 40, this + 16 * v31 + 96, 0);
  v32 = *(this + 54);
  *(this + 55) = 1 - *(this + 55);
  physx::PxcNpMemBlockPool::release(this + 40, this + 16 * (1 - v32) + 128, 0);
  v33 = *(this + 54);
  *(this + 54) = 1 - v33;
  physx::PxcNpMemBlockPool::release(this + 40, this + 16 * v33 + 128, 0);
  *(this + 54) = 1 - *(this + 54);
  physx::PxcNpMemBlockPool::releaseConstraintMemory(this + 40);
  physx::PxcNpMemBlockPool::releaseContacts((this + 40));
  physx::PxcNpMemBlockPool::releaseContacts((this + 40));
  v34 = *(this + 50);
  while (v34)
  {
    v35 = *(*(this + 24) + 8 * --v34);
    *(this + 50) = v34;
    if (v35)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      v34 = *(this + 50);
    }
  }

  v36 = *(this + 51);
  if ((v36 & 0x80000000) == 0 && (v36 & 0x7FFFFFFF) != 0 && *(this + 24) != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v38 = *(this + 47);
  if ((v38 & 0x80000000) == 0 && (v38 & 0x7FFFFFFF) != 0 && *(this + 22))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v39 = *(this + 43);
  if ((v39 & 0x80000000) == 0 && (v39 & 0x7FFFFFFF) != 0 && *(this + 20))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  for (k = 0; k != -32; k -= 16)
  {
    v41 = *(this + k + 156);
    if ((v41 & 0x80000000) == 0 && (v41 & 0x7FFFFFFF) != 0 && *(this + k + 144) != 0)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }
  }

  for (m = 0; m != -32; m -= 16)
  {
    v44 = *(this + m + 124);
    if ((v44 & 0x80000000) == 0 && (v44 & 0x7FFFFFFF) != 0 && *(this + m + 112) != 0)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }
  }

  for (n = 0; n != -32; n -= 16)
  {
    v47 = *(this + n + 92);
    if ((v47 & 0x80000000) == 0 && (v47 & 0x7FFFFFFF) != 0 && *(this + n + 80) != 0)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }
  }

  v49 = *(this + 15);
  if ((v49 & 0x80000000) == 0 && (v49 & 0x7FFFFFFF) != 0 && *(this + 6) != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  physx::shdfnd::MutexT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>>::~MutexT(this + 5);
  v51 = *(this + 5);
  if ((v51 & 0x80000000) == 0 && (v51 & 0x7FFFFFFF) != 0 && *(this + 1))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  physx::shdfnd::MutexT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>>::~MutexT(this);
}

uint64_t physx::PxsContext::createContactManager(uint64_t a1, uint64_t a2, int a3)
{
  if (a2)
  {
    v3 = a2;
    *(a2 + 82) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
  }

  else
  {
    v7 = *(a1 + 480);
    if (!v7)
    {
      if (!physx::Cm::PoolList<physx::PxsContactManager,physx::PxsContext>::extend((a1 + 456)))
      {
        return 0;
      }

      v7 = *(a1 + 480);
    }

    v8 = *(a1 + 472);
    v9 = v7 - 1;
    *(a1 + 480) = v9;
    v3 = *(v8 + 8 * v9);
    *(*(a1 + 504) + ((*(v3 + 88) >> 3) & 0x1FFFFFFC)) |= 1 << *(v3 + 88);
    *(v3 + 82) = 0;
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    v10 = *(v3 + 88);
    if (v10 >= 32 * *(a1 + 1664))
    {
      physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(a1 + 1656, ((2 * v10) & 0xFFFFFF00) + 256);
      v10 = *(v3 + 88);
    }

    *(*(a1 + 1656) + 4 * (v10 >> 5)) |= 1 << v10;
    if (a3)
    {
      v11 = *(v3 + 88);
      if (v11 >= 32 * *(a1 + 1680))
      {
        physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(a1 + 1672, ((2 * v11) & 0xFFFFFF00) + 256);
        v11 = *(v3 + 88);
      }

      *(*(a1 + 1672) + 4 * (v11 >> 5)) |= 1 << v11;
    }
  }

  return v3;
}

double physx::PxsContext::createCache(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  if (a3 && *(a1 + 2584) == 1)
  {
    if (physx::gEnablePCMCaching[8 * a4 - a4 + a5] != 1)
    {
      *a2 = 0;
      *(a2 + 11) = 0;
      return result;
    }

    if (a4 > 4 || a5 > 4)
    {
      *a2 = 0;
      *(a2 + 11) |= 3u;
      return result;
    }

    if (a4 && a5)
    {
      v7 = (a1 + 1080);
      v8 = *(a1 + 1080);
      if (v8)
      {
        v9 = 4;
        v10 = 1068;
LABEL_17:
        *v7 = *v8;
        ++*(a1 + v10);
        *(v8 + 65) = v9;
        *(v8 + 80) = v8 + 96;
        result = 1.40444743e306;
        *v8 = xmmword_1E30474D0;
        *(v8 + 16) = xmmword_1E31137A0;
        *(v8 + 32) = xmmword_1E30474D0;
        *(v8 + 48) = xmmword_1E30474D0;
        *a2 = v8;
        *(a2 + 11) |= 1u;
        *(v8 + 66) = 0;
        *(v8 + 64) = 0;
        *v8 = xmmword_1E30474D0;
        *(v8 + 16) = xmmword_1E31137A0;
        return result;
      }

      physx::shdfnd::PoolBase<physx::Gu::LargePersistentContactManifold,physx::shdfnd::ReflectionAllocator<physx::Gu::LargePersistentContactManifold>>::allocateSlab(a1 + 520);
      v9 = 4;
      v10 = 1068;
    }

    else
    {
      v7 = (a1 + 1648);
      v8 = *(a1 + 1648);
      if (v8)
      {
        v9 = 1;
        v10 = 1636;
        goto LABEL_17;
      }

      physx::shdfnd::PoolBase<physx::Gu::SpherePersistentContactManifold,physx::shdfnd::ReflectionAllocator<physx::Gu::SpherePersistentContactManifold>>::allocateSlab(a1 + 1088);
      v9 = 1;
      v10 = 1636;
    }

    v8 = *v7;
    goto LABEL_17;
  }

  return result;
}

void physx::PxsContext::destroyContactManager(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 88);
  if ((*(a2 + 16) & 2) != 0 && (*(a2 + 80) & 0x1000) != 0)
  {
    physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(a1 + 1672, v4 + 1);
    *(*(a1 + 1672) + ((v4 >> 3) & 0x1FFFFFFC)) &= ~(1 << v4);
  }

  physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(a1 + 1656, v4 + 1);
  v5 = v4 >> 5;
  *(*(a1 + 1656) + 4 * (v4 >> 5)) &= ~(1 << v4);
  physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(a1 + 1704, v4 + 1);
  *(*(a1 + 1704) + 4 * v5) &= ~(1 << v4);
  physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(a1 + 1720, v4 + 1);
  *(*(a1 + 1720) + 4 * v5) &= ~(1 << v4);
  *(*(a1 + 504) + ((*(a2 + 88) >> 3) & 0x1FFFFFFC)) &= ~(1 << *(a2 + 88));
  v6 = *(a1 + 472);
  v7 = *(a1 + 480);
  *(a1 + 480) = v7 + 1;
  *(v6 + 8 * v7) = a2;
}

uint64_t physx::PxsContext::destroyCache(uint64_t result, _BYTE *a2)
{
  if (a2[11])
  {
    if ((a2[11] & 2) == 0)
    {
      v2 = *a2;
      v3 = *(*a2 + 65) == 1;
      v4 = 1068;
      if (*(*a2 + 65) == 1)
      {
        v4 = 1636;
      }

      --*(result + v4);
      v5 = 1648;
      if (!v3)
      {
        v5 = 1080;
      }

      *v2 = *(result + v5);
      *(result + v5) = v2;
    }

    *a2 = 0;
    a2[11] = 0;
  }

  return result;
}

uint64_t physx::PxcScratchAllocator::setBlock(uint64_t this, char *a2, int a3)
{
  v3 = *(this + 8);
  *(this + 24) = a2;
  *(this + 32) = a3;
  v4 = *(this + 16);
  v5 = *(this + 20);
  *(this + 16) = v4 - 1;
  v6 = &a2[a3];
  if ((v5 & 0x7FFFFFFFu) <= v4 - 1)
  {
    return physx::shdfnd::Array<unsigned char *,physx::shdfnd::ReflectionAllocator<unsigned char *>>::growAndPushBack(this + 8, &v6);
  }

  *(v3 + 8 * (v4 - 1)) = &a2[a3];
  *(this + 16) = v4;
  return this;
}

float32_t physx::PxsContext::shiftOrigin(uint64_t a1, float32x2_t *a2)
{
  v2 = *(a1 + 2592);
  v3 = *(v2 + 20) & 0x7FFFFFFF;
  if (v3)
  {
    v4 = *a2;
    v5 = a2[1].f32[0];
    v6 = (*(v2 + 8) + 24);
    do
    {
      *(v6 - 1) = vsub_f32(*(v6 - 2), v4);
      *v6 = *v6 - v5;
      v6 += 8;
      --v3;
    }

    while (v3);
  }

  *(v2 + 28) = 1;
  v7.i32[0] = *(a1 + 1888);
  v8 = *(a1 + 1892);
  v9 = *(a1 + 1896);
  if (v7.f32[0] != -8.5071e37 || v8 != -8.5071e37)
  {
    goto LABEL_14;
  }

  v8 = -8.5071e37;
  if (v9 != -8.5071e37)
  {
    goto LABEL_14;
  }

  if (*(a1 + 1900) != 8.5071e37 || *(a1 + 1904) != 8.5071e37 || *(a1 + 1908) != 8.5071e37)
  {
    v9 = -8.5071e37;
    v8 = -8.5071e37;
LABEL_14:
    v7.f32[1] = v8;
    *(a1 + 1888) = vsub_f32(v7, *a2);
    *(a1 + 1896) = v9 - a2[1].f32[0];
    *(a1 + 1900) = vsub_f32(*(a1 + 1900), *a2);
    v7.f32[0] = *(a1 + 1908) - a2[1].f32[0];
    *(a1 + 1908) = v7.i32[0];
  }

  return v7.f32[0];
}

uint64_t physx::PxsContext::mergeCMDiscreteUpdateResults(physx::PxsContext *this, physx::PxBaseTask *a2)
{
  (*(**(this + 222) + 152))(*(this + 222), a2);
  v3 = *(this + 55);
  pthread_mutex_lock((v3 + 8));
  v4 = *v3;
  *v3 = 0;
  result = pthread_mutex_unlock((v3 + 8));
  if (v4)
  {
    v6 = v4;
    do
    {
      v7 = 0;
      *(this + 434) += *(v6 + 1825);
      *(this + 435) += *(v6 + 1824);
      *(this + 437) += *(v6 + 1826);
      v8 = *v6;
      *(this + 438) += *(v6 + 1827);
      v9 = v6 + 79;
      v10 = this + 1936;
      v11 = 7;
      do
      {
        v12 = v10;
        v13 = v9;
        v14 = v11;
        do
        {
          v15 = *(v13 - 49);
          v16 = *v13++;
          *v12 += v15;
          v12[98] += v16;
          *(this + 631) += v15;
          ++v12;
          --v14;
        }

        while (v14);
        ++v7;
        --v11;
        v9 += 8;
        v10 += 32;
      }

      while (v7 != 7);
      *(this + 316) = vadd_s32(*(this + 2528), v6[899]);
      *(this + 638) += *(v6 + 1797);
      *(v6 + 7188) = 0;
      *(v6 + 1799) = 0;
      *(v6 + 15) = 0u;
      *(v6 + 17) = 0u;
      *(v6 + 19) = 0u;
      *(v6 + 21) = 0u;
      *(v6 + 23) = 0u;
      *(v6 + 25) = 0u;
      *(v6 + 27) = 0u;
      *(v6 + 29) = 0u;
      *(v6 + 31) = 0u;
      *(v6 + 33) = 0u;
      *(v6 + 35) = 0u;
      *(v6 + 37) = 0u;
      *(v6 + 39) = 0u;
      *(v6 + 41) = 0u;
      *(v6 + 43) = 0u;
      *(v6 + 45) = 0u;
      *(v6 + 47) = 0u;
      *(v6 + 49) = 0u;
      *(v6 + 51) = 0u;
      *(v6 + 53) = 0u;
      *(v6 + 55) = 0u;
      *(v6 + 57) = 0u;
      *(v6 + 59) = 0u;
      *(v6 + 61) = 0u;
      v6[63] = 0;
      physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::combine1<physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::OR>(this + 1704, v6[908], v6[909] & 0x7FFFFFFF);
      physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::combine1<physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::OR>(this + 1720, v6[910], v6[911] & 0x7FFFFFFF);
      *(this + 653) += *(v6 + 1804);
      v17 = *(this + 652);
      if (v17 <= *(v6 + 1803))
      {
        v17 = *(v6 + 1803);
      }

      *(this + 652) = v17;
      *(v6 + 7212) = 0;
      v6 = v8;
    }

    while (v8);
    do
    {
      v18 = *v4;
      v19 = *(this + 55);
      pthread_mutex_lock((v19 + 8));
      *v4 = *v19;
      *v19 = v4;
      result = pthread_mutex_unlock((v19 + 8));
      v4 = v18;
    }

    while (v18);
  }

  return result;
}

uint64_t physx::PxsContext::resetThreadContexts(physx::PxsContext *this)
{
  v2 = *(this + 55);
  pthread_mutex_lock((v2 + 8));
  v3 = *v2;
  *v2 = 0;
  result = pthread_mutex_unlock((v2 + 8));
  if (v3)
  {
    v5 = v3;
    do
    {
      v6 = *v5;
      physx::PxcNpThreadContext::reset(v5, 32 * *(this + 428));
      v5 = v6;
    }

    while (v6);
    do
    {
      v7 = *v3;
      v8 = *(this + 55);
      pthread_mutex_lock((v8 + 8));
      *v3 = *v8;
      *v8 = v3;
      result = pthread_mutex_unlock((v8 + 8));
      v3 = v7;
    }

    while (v7);
  }

  return result;
}

uint64_t physx::PxsContext::fillManagerTouchEvents(uint64_t a1, uint64_t *a2, _DWORD *a3, uint64_t *a4, _DWORD *a5, uint64_t *a6, _DWORD *a7)
{
  v7 = a6;
  v8 = a4;
  v9 = a2;
  v10 = *(a1 + 1712) & 0x7FFFFFFF;
  if (v10)
  {
    v11 = *(a1 + 1704);
    v12 = *v11;
    if (*v11)
    {
      LODWORD(v13) = 0;
LABEL_7:
      v9 = a2;
      v8 = a4;
      v7 = a6;
      while (1)
      {
        v14 = v13;
        v15 = v12;
        v12 &= v12 - 1;
        if (!v12)
        {
          if (v13 + 1 > v10)
          {
            LODWORD(v13) = v13 + 1;
          }

          else
          {
            LODWORD(v13) = v10;
          }

          v16 = v14;
          while (v13 - 1 != v16)
          {
            v12 = v11[++v16];
            if (v12)
            {
              LODWORD(v13) = v16;
              goto LABEL_17;
            }
          }

          v12 = 0;
        }

LABEL_17:
        v17 = __clz(__rbit32(v15)) | (32 * v14);
        if (v17 == -1)
        {
          break;
        }

        v18 = *(*(a1 + 488) + 8 * (v17 >> *(a1 + 464))) + 120 * ((*(a1 + 456) - 1) & v17);
        v19 = *(v18 + 83);
        if ((v19 & 2) != 0)
        {
          if ((*(v18 + 83) & 0x10) != 0)
          {
            v22 = *(v18 + 24);
            *v7 = v18;
            v7[1] = v22;
            v7 += 2;
            *(v18 + 83) = v19 & 0xEF;
            if (!v12)
            {
              break;
            }
          }

          else
          {
            v21 = *(v18 + 24);
            *v9 = v18;
            v9[1] = v21;
            v9 += 2;
            if (!v12)
            {
              break;
            }
          }
        }

        else
        {
          v20 = *(v18 + 24);
          *v8 = v18;
          v8[1] = v20;
          v8 += 2;
          if (!v12)
          {
            break;
          }
        }
      }
    }

    else
    {
      v13 = 0;
      while (v10 - 1 != v13)
      {
        v12 = v11[++v13];
        if (v12)
        {
          goto LABEL_7;
        }
      }

      v7 = a6;
      v8 = a4;
      v9 = a2;
    }
  }

  *a3 = (v9 - a2) >> 4;
  *a5 = (v8 - a4) >> 4;
  *a7 = (v7 - a6) >> 4;
  return 1;
}

uint64_t physx::PxsContext::fillManagerPatchChangedEvents(uint64_t a1, uint64_t *a2, _DWORD *a3, uint64_t *a4, _DWORD *a5)
{
  v10 = *(a1 + 1728);
  v11 = v10 & 0x7FFFFFFF;
  if ((v10 & 0x7FFFFFFF) != 0)
  {
    v12 = *(a1 + 1720);
    v13 = *v12;
    if (*v12)
    {
      LODWORD(v11) = 0;
      goto LABEL_9;
    }

    v14 = 0;
    v15 = v12 + 1;
    while (v11 - 1 != v14)
    {
      v13 = v15[v14++];
      if (v13)
      {
        LODWORD(v11) = v14;
        goto LABEL_9;
      }
    }
  }

  v13 = 0;
LABEL_9:
  (*(**(a1 + 1776) + 168))(v28);
  v16 = a4;
  v17 = a2;
  if (v13)
  {
    v18 = *(a1 + 1728) & 0x7FFFFFFF;
    v17 = a2;
    v16 = a4;
    do
    {
      v19 = v11;
      v20 = v13;
      v13 &= v13 - 1;
      if (!v13)
      {
        if (v11 + 1 > v18)
        {
          LODWORD(v11) = v11 + 1;
        }

        else
        {
          LODWORD(v11) = v18;
        }

        v21 = v19;
        while (v11 - 1 != v21)
        {
          v13 = *(*(a1 + 1720) + 4 * ++v21);
          if (v13)
          {
            LODWORD(v11) = v21;
            goto LABEL_20;
          }
        }

        v13 = 0;
      }

LABEL_20:
      v22 = __clz(__rbit32(v20)) | (32 * v19);
      if (v22 == -1)
      {
        break;
      }

      v23 = *(*(a1 + 488) + 8 * (v22 >> *(a1 + 464))) + 120 * ((*(a1 + 456) - 1) & v22);
      v24 = v28[4] + 32 * (*(v28 + (*(v23 + 108) & 7)) + (*(v23 + 108) >> 3));
      v25 = *(v24 + 25);
      v26 = *(v24 + 27);
      if (v25 <= v26)
      {
        if (v25 < v26)
        {
          *v16++ = v23;
        }
      }

      else
      {
        *v17++ = v23;
      }
    }

    while (v13);
  }

  *a3 = (v17 - a2) >> 3;
  *a5 = (v16 - a4) >> 3;
  return 1;
}

void physx::PxsDefaultMemoryManager::~PxsDefaultMemoryManager(physx::PxsDefaultMemoryManager *this)
{
  *this = &unk_1F5D1BD70;
  if (*(this + 4))
  {
    v2 = 0;
    do
    {
      v3 = *(*(this + 1) + 8 * v2);
      (**v3)(v3);
      if (*(*(this + 1) + 8 * v2))
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      }

      ++v2;
    }

    while (v2 < *(this + 4));
  }

  v4 = *(this + 5);
  if ((v4 & 0x80000000) == 0 && (v4 & 0x7FFFFFFF) != 0 && *(this + 1) != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }
}

{
  physx::PxsDefaultMemoryManager::~PxsDefaultMemoryManager(this);

  JUMPOUT(0x1E6906520);
}

void *physx::PxsDefaultMemoryManager::createHostMemoryAllocator(physx::PxsDefaultMemoryManager *this)
{
  v2 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 8, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevel/software/src/PxsDefaultMemoryManager.cpp", 47);
  v3 = v2;
  *v2 = &unk_1F5D1BF68;
  v6 = v2;
  v4 = *(this + 4);
  if ((*(this + 5) & 0x7FFFFFFFu) <= v4)
  {
    physx::shdfnd::Array<physx::shdfnd::VirtualAllocatorCallback *,physx::shdfnd::ReflectionAllocator<physx::shdfnd::VirtualAllocatorCallback *>>::growAndPushBack(this + 8, &v6);
  }

  else
  {
    *(*(this + 1) + 8 * v4) = v2;
    *(this + 4) = v4 + 1;
  }

  return v3;
}

uint64_t physx::PxsDefaultMemoryManager::destroyMemoryAllocator(uint64_t this)
{
  if (*(this + 16))
  {
    v1 = this;
    v2 = 0;
    do
    {
      v3 = *(*(v1 + 8) + 8 * v2);
      this = (**v3)(v3);
      if (*(*(v1 + 8) + 8 * v2))
      {
        this = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      }

      ++v2;
    }

    while (v2 < *(v1 + 16));
  }

  return this;
}

uint64_t physx::PxLightCpuTask::release(physx::PxLightCpuTask *this)
{
  result = *(this + 3);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

uint64_t physx::Cm::FlushPool::allocateNotThreadSafe(physx::Cm::FlushPool *this, int a2, unsigned int a3)
{
  v6 = this + 8;
  v5 = *(this + 1);
  v8 = *(this + 6);
  v7 = *(this + 7);
  v9 = *(v5 + 8 * v8);
  v10 = a3 - 1;
  v11 = a3 - 1 + v9 + v7;
  v12 = -a3;
  v13 = (v11 & v12) - (v9 + v7);
  v14 = a2 + (v11 & v12) - v9;
  v15 = *(this + 8);
  if (v14 > v15)
  {
    v16 = v8 + 1;
    *(this + 3) = (v8 + 1);
    v17 = *(this + 4);
    if (v8 + 1 >= v17)
    {
      if (v15)
      {
        v19 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v15, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/CmFlushPool.h", 88);
        v17 = *(this + 4);
      }

      else
      {
        v19 = 0;
      }

      v21 = v19;
      if ((*(this + 5) & 0x7FFFFFFFu) <= v17)
      {
        physx::shdfnd::Array<unsigned char *,physx::shdfnd::ReflectionAllocator<unsigned char *>>::growAndPushBack(v6, &v21);
      }

      else
      {
        *(*(this + 1) + 8 * v17) = v19;
        *(this + 4) = v17 + 1;
      }

      v5 = *(this + 1);
      v16 = *(this + 6);
      v18 = *(this + 7);
    }

    else
    {
      v18 = 0;
    }

    v9 = *(v5 + 8 * v16);
    v13 = ((v10 + v9) & v12) - v9;
    v7 = v18;
    v14 = v18 + a2 + v13;
  }

  result = v9 + v7 + v13;
  *(this + 7) = v14;
  return result;
}

void physx::PxsCCDSweepTask::~PxsCCDSweepTask(physx::PxsCCDSweepTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

void physx::PxsCCDSweepTask::runInternal(physx::PxsCCDSweepTask *this)
{
  if (*(this + 12))
  {
    v2 = 0;
    do
    {
      v3 = *(*(this + 5) + 8 * v2);
      physx::PxsCCDPair::sweepEstimateToi(v3, *(this + 13));
      *(v3 + 29) = 0;
      ++v2;
    }

    while (v2 < *(this + 12));
  }
}

void physx::PxsCCDAdvanceTask::~PxsCCDAdvanceTask(physx::PxsCCDAdvanceTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

uint64_t physx::PxsCCDAdvanceTask::runInternal(physx::PxsCCDAdvanceTask *this)
{
  v277 = *MEMORY[0x1E69E9840];
  v2 = *(this + 7);
  v3 = physx::shdfnd::SListImpl::pop(*(v2 + 440));
  if (!v3)
  {
    v4 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v5 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxcNpThreadContext>::getName() [T = physx::PxcNpThreadContext]";
    }

    else
    {
      v5 = "<allocation names disabled>";
    }

    v6 = (*(*(v4 + 24) + 16))(v4 + 24, 7335, v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevel/common/include/utils/PxcThreadCoherentCache.h", 82);
    if (v6)
    {
      v3 = (v6 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v3 - 8) = v3 - v6;
    }

    else
    {
      v3 = 0;
    }

    physx::PxcNpThreadContext::PxcNpThreadContext(v3, *(v2 + 448));
  }

  v7 = *(this + 22);
  LODWORD(v8) = *(this + 23) + v7;
  v9 = *(this + 24);
  if (v8 >= v9)
  {
    v8 = v9;
  }

  else
  {
    v8 = v8;
  }

  v227 = v8;
  v234 = v3;
  if (v7 < v8)
  {
    v241 = 0;
    v240 = *(*(this + 8) + 472);
    LODWORD(v10) = *(this + 25);
    v228 = (v3 + 7208);
    HIDWORD(PoseToToi) = 32;
    v12 = 1.0;
    while (1)
    {
      v13 = *(this + 12);
      if (v10 >= v13)
      {
        goto LABEL_320;
      }

      v14 = v10;
      v15 = v10 + 1;
      LODWORD(v10) = v15;
      if (v15 >= v13)
      {
        goto LABEL_78;
      }

      v16 = *(this + 5);
      v10 = v14 + 1;
      while (v7 == *(*(v16 + 8 * v10) + 80))
      {
        if (++v10 >= v13)
        {
          LODWORD(v10) = *(this + 12);
          break;
        }
      }

      if (v10 <= v15)
      {
        goto LABEL_78;
      }

      HIDWORD(PoseToToi) = 32;
      *(&v258 + 4) = 0x2000000000;
      v259 = &v269;
      LOBYTE(v260) = 0;
      v17 = v10 + ~v14;
      if (v17 < 1)
      {
        goto LABEL_78;
      }

      v18 = 0;
      HIDWORD(PoseToToi) = 0;
      v275 = 0u;
      v276 = 0u;
      v19 = v16 + 8 * v14;
      v273 = 0u;
      v274 = 0u;
      v271 = 0u;
      v272 = 0u;
      v20 = v19 + 8;
      v21 = &v269;
      v269 = 0u;
      v270 = 0u;
      while (1)
      {
        while (1)
        {
          if (v17 <= v18)
          {
            goto LABEL_73;
          }

          if ((v17 - v18) <= 4)
          {
            break;
          }

          v22 = *(v19 + 8 * ((v18 + v17) / 2));
          v23 = (v18 + v17 + ((v18 + v17) >> 31)) >> 1;
          v24 = *(v22 + 44);
          v25 = *(v19 + 8 * v18);
          v26 = *(v25 + 44);
          if (v24 < v26 || v24 == v26 && *(v22 + 8) && !*(v25 + 8))
          {
            *(v19 + 8 * v18) = v22;
            *(v19 + 8 * v23) = v25;
            v22 = v25;
            v25 = *(v19 + 8 * v18);
            v26 = *(v25 + 44);
          }

          v27 = v19 + 8 * v17;
          v28 = *v27;
          v29 = *(*v27 + 44);
          if (v29 < v26 || v29 == v26 && *(v28 + 8) && !*(v25 + 8))
          {
            *(v19 + 8 * v18) = v28;
            *v27 = v25;
            v22 = *(v19 + 8 * v23);
          }

          else
          {
            v26 = *(*v27 + 44);
            v25 = *v27;
          }

          v30 = *(v22 + 44);
          if (v26 < v30 || v26 == v30 && *(v25 + 8) && !*(v22 + 8))
          {
            *(v19 + 8 * v23) = v25;
            *v27 = v22;
            v22 = *(v19 + 8 * v23);
          }

          *(v19 + 8 * v23) = *(v27 - 8);
          *(v27 - 8) = v22;
          v31 = v17 - 1;
          v32 = v18;
          LODWORD(v27) = v17 - 1;
          while (1)
          {
            v33 = 0;
            v34 = *(v22 + 44);
            v35 = v32;
            v36 = v20 + 8 * v32;
            while (1)
            {
              v37 = *(v36 + 8 * v33);
              v38 = *(v37 + 44);
              if (v38 >= v34 && (v38 != v34 || !*(v37 + 8) || *(v22 + 8)))
              {
                break;
              }

              ++v33;
            }

            v39 = v20 + 8 * v35;
            v32 = v33 + v35 + 1;
            v27 = v27;
            do
            {
              do
              {
                --v27;
                v40 = *(v19 + 8 * v27);
                v41 = *(v40 + 44);
              }

              while (v34 < v41);
            }

            while (v34 == v41 && *(v22 + 8) && !*(v40 + 8));
            if (v35 + v33 + 1 >= v27)
            {
              break;
            }

            *(v39 + 8 * v33) = v40;
            *(v19 + 8 * v27) = v37;
            v22 = *(v19 + 8 * v31);
          }

          *(v39 + 8 * v33) = v22;
          *(v19 + 8 * v31) = v37;
          v42 = DWORD1(v258);
          v43 = DWORD2(v258) - 1;
          if (v35 - v18 + v33 + 1 >= ~v35 + v17 - v33)
          {
            if (DWORD1(v258) >= v43)
            {
              physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::PxsCCDPair *>>::grow(&v258);
              v42 = DWORD1(v258);
              v21 = v259;
            }

            DWORD1(v258) = v42 + 1;
            *(v21 + v42) = v33 + v35 + 2;
            v45 = DWORD1(v258);
            ++DWORD1(v258);
            *(v21 + v45) = v17;
            v17 = v35 + v33;
          }

          else
          {
            if (DWORD1(v258) >= v43)
            {
              physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::PxsCCDPair *>>::grow(&v258);
              v42 = DWORD1(v258);
              v21 = v259;
            }

            DWORD1(v258) = v42 + 1;
            *(v21 + v42) = v18;
            v44 = DWORD1(v258);
            ++DWORD1(v258);
            *(v21 + v44) = v33 + v35;
            v18 = v35 + v33 + 2;
          }
        }

        v46 = v18;
        v47 = v18 + 1;
        do
        {
          v48 = v46++;
          v49 = v48;
          v50 = v47;
          v51 = v48;
          do
          {
            v52 = *(v20 + 8 * v49);
            v53 = *(v52 + 44);
            v54 = *(v19 + 8 * v51);
            v55 = *(v54 + 44);
            if (v53 < v55 || v53 == v55 && *(v52 + 8) && !*(v54 + 8))
            {
              v51 = v50;
            }

            ++v50;
            ++v49;
          }

          while (v49 < v17);
          if (v51 != v48)
          {
            v56 = *(v19 + 8 * v51);
            *(v19 + 8 * v51) = *(v19 + 8 * v48);
            *(v19 + 8 * v48) = v56;
          }

          ++v47;
        }

        while (v46 != v17);
LABEL_73:
        v57 = DWORD1(v258);
        if (!DWORD1(v258))
        {
          break;
        }

        --DWORD1(v258);
        v17 = *(v21 + (v57 - 1));
        DWORD1(v258) = v57 - 2;
        v18 = *(v21 + (v57 - 2));
      }

      if ((v260 & 1) != 0 && v21)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      }

LABEL_78:
      if (v14 < v10)
      {
        v242 = *(this + 18);
        v58 = (v10 - 1);
        v59 = 1;
        while (2)
        {
          v60 = *(*(this + 5) + 8 * v14);
          LODWORD(PoseToToi) = *(v60 + 11);
          if (*&PoseToToi > v12)
          {
            goto LABEL_317;
          }

          v61 = *v60;
          if (*v60)
          {
            LODWORD(v61) = *(*(v61 + 32) + 34) == 0;
          }

          v62 = v60[1];
          if (v62)
          {
            LODWORD(v62) = *(*(v62 + 32) + 34) == 0;
          }

          if ((v61 | v62) != 1)
          {
            goto LABEL_244;
          }

          v243 = v59;
          if (!*(v60 + 32))
          {
            physx::PxsCCDPair::updateShapes(v60);
            v63 = *(v60 + 21);
            v64 = *(v60 + 22);
            v65 = v64 < v63;
            if (v64 < v63)
            {
              v66 = *(v60 + 21);
            }

            else
            {
              v66 = *(v60 + 22);
            }

            if (v64 < v63)
            {
              v63 = *(v60 + 22);
            }

            v232 = v63;
            v233 = v66;
            v67 = (v65 ? v60[2] : v60[3]);
            v68 = (v65 ? v60[3] : v60[2]);
            v69 = v65 ? *v60 : v60[1];
            v231 = v69;
            v70 = v65 ? v60[1] : *v60;
            v269 = *(v68 + 5);
            v238 = *(v68 + 15);
            v239 = *(v68 + 14);
            *&v270 = __PAIR64__(LODWORD(v238), LODWORD(v239));
            v236 = *(v68 + 16);
            *(&v270 + 2) = v236;
            v255 = *(v68 + 12);
            v71 = *(v68 + 8);
            v237 = *(v68 + 7);
            v256 = __PAIR64__(LODWORD(v71), LODWORD(v237));
            v235 = v71;
            v72 = *(v68 + 9);
            v257 = v72;
            v258 = *(v67 + 5);
            v74 = *(v67 + 14);
            v73 = *(v67 + 15);
            v259 = __PAIR64__(LODWORD(v73), LODWORD(v74));
            v75 = *(v67 + 16);
            *&v260 = v75;
            v79 = *(v67 + 12);
            v251 = v79;
            v77 = *(v67 + 7);
            v76 = *(v67 + 8);
            v252 = v77;
            v253 = v76;
            v78 = *(v67 + 9);
            v254 = v78;
            v249 = 0;
            v250 = 0.0;
            v247 = 0;
            v248 = 0;
            v79.n128_u64[0] = *(v60[9] + 92);
            v79.n128_f32[0] = fmaxf(v79.n128_f32[0], 0.0);
            *(v234 + 7200) = v242;
            *(v234 + 7208) = -1;
            v229 = *(v68 + 2);
            v230 = *(v67 + 2);
            v80 = (v229 + v230) >= v240 ? v240 : v229 + v230;
            *&PoseToToi = (*(&physx::Gu::g_SweepMethodTable[7 * **v68] + **v67))(v68, v67, &v269, &v258, &v255, &v251, &v249, &v247, v79, *(v60 + 11), v80, v228);
            if (*&PoseToToi >= 1.0)
            {
              *(v60 + 32) = 1;
              *(v60 + 16) = 0;
              *&PoseToToi = 2139095039;
              *(v60 + 44) = 2139095039;
              v12 = 1.0;
            }

            else
            {
              v81 = *v228;
              *(v60 + 24) = *v228;
              v82 = v249;
              v83 = v250;
              v84 = v250;
              v85 = *(&v249 + 1);
              v86 = *&v249;
              if (*(v60 + 22) >= *(v60 + 21))
              {
                v86 = -*&v249;
                v85 = -*(&v249 + 1);
                v84 = -v250;
                *&v249 = -*&v249;
                *(&v249 + 1) = -*(&v82 + 1);
                v250 = -v250;
              }

              v87 = (-(*(&v82 + 1) * ((v238 - v235) - (v73 - v76))) - (((v239 - v237) - (v74 - v77)) * *&v82)) - (((v236 - v72) - (v75 - v78)) * v83);
              *(v60 + 32) = 1;
              if (v87 >= v80)
              {
                v12 = 1.0;
                if (*&PoseToToi <= 0.0)
                {
                  v90 = 1.0;
                  v91 = 1.0;
                  if (v70)
                  {
                    v91 = *(*(v70 + 32) + 36);
                  }

                  v92 = v230;
                  if (v231)
                  {
                    v90 = *(*(v231 + 32) + 36);
                  }

                  if (v91 >= v90)
                  {
                    v91 = v90;
                  }

                  v89 = -*&PoseToToi;
                  LODWORD(PoseToToi) = 0;
                  if (v91 == 1.0)
                  {
                    v93 = 1.0;
                    v94 = 1.0;
                    if (v70)
                    {
                      v94 = *(*(v70 + 40) + 60);
                    }

                    if (v231)
                    {
                      v93 = *(*(v231 + 40) + 60);
                    }

                    else
                    {
                      v92 = 3.4028e38;
                    }

                    if (v94 < v93)
                    {
                      v93 = v94;
                    }

                    v95 = v229;
                    if (v229 >= v92)
                    {
                      v95 = v92;
                    }

                    v88 = (v95 * v93) / v87;
                  }

                  else
                  {
                    v88 = 0.0;
                  }
                }

                else
                {
                  v88 = 0.0;
                  v89 = 0.0;
                }

                *(v60 + 11) = LODWORD(PoseToToi);
                *(v60 + 12) = v88;
                *(v60 + 52) = v247;
                *(v60 + 15) = v248;
                *(v60 + 16) = v89;
                *(v60 + 8) = v86;
                *(v60 + 9) = v85;
                *(v60 + 10) = v84;
                if ((v233 - 5) >= 2)
                {
                  v81 = -1;
                }

                *(v234 + 4656) = 1;
                *(v234 + 560) = v86;
                *(v234 + 564) = v85;
                *(v234 + 568) = v84;
                *(v234 + 576) = *(v60 + 52);
                *(v234 + 584) = *(v60 + 15);
                *(v234 + 572) = 0;
                *(v234 + 612) = v81;
                (physx::g_GetSingleMaterialMethodTable[v232])(v68[12], 0, v234, &v245);
                (physx::g_GetSingleMaterialMethodTable[v233])(v67[12], 1, v234, &v245);
                v96 = v245;
                v97 = **(v234 + 7256);
                v98 = (v97 + 32 * v245);
                v99 = v246;
                v100 = (v97 + 32 * v246);
                v101 = physx::PxsMaterialCombiner::combineRestitution(v98, v100);
                __asm { FMOV            V0.2S, #1.0 }

                v244 = _D0;
                v106 = physx::PxsMaterialCombiner::combineIsotropicFriction(&v244, v98, v100);
                *(v60 + 50) = v96;
                *(v60 + 51) = v99;
                *(v60 + 26) = HIDWORD(v106);
                *(v60 + 27) = v106;
                *(v60 + 28) = v101;
                LODWORD(PoseToToi) = *(v60 + 11);
                v59 = v243;
                v58 = v58;
              }

              else
              {
                *(v60 + 11) = 2139095039;
                LODWORD(PoseToToi) = 2139095039;
                v12 = 1.0;
              }
            }

            v107 = v14 + 1;
            if (v107 < v10 && *(*(*(this + 5) + 8 * v107) + 44) < *&PoseToToi)
            {
              v108 = 8 * v107;
              v109 = v14;
              while (1)
              {
                v110 = *(this + 5);
                v111 = *(v110 + v108);
                if (*(v111 + 44) >= *&PoseToToi)
                {
                  break;
                }

                *(v110 + 8 * v109++) = v111;
                v108 += 8;
                if (v58 == v109)
                {
                  v110 = *(this + 5);
                  v109 = v58;
                  break;
                }
              }

              *(v110 + 8 * v109) = v60;
              --v14;
              goto LABEL_244;
            }
          }

          if (*&PoseToToi > v12)
          {
            goto LABEL_317;
          }

          if (*&PoseToToi <= 3.4028e38 && *(v60 + 93) == 1)
          {
            v112 = *(*(this + 8) + 168);
            if (v112)
            {
              v113 = v58;
              __asm { FMOV            V0.4S, #1.0 }

              v269 = _Q0;
              *&v270 = v60[4];
              v115 = *(v60 + 26);
              v116 = *(v60 + 27);
              DWORD2(v270) = *(v60 + 10);
              *&v271 = __PAIR64__(v116, v115);
              HIDWORD(v271) = *(v60 + 25);
              DWORD2(v271) = 256;
              *&v272 = *(v60 + 52);
              *(&v272 + 1) = *(v60 + 15);
              *&_Q0 = v60[4];
              DWORD2(_Q0) = *(v60 + 10);
              DWORD1(v275) = HIDWORD(v271);
              *(&v275 + 1) = __PAIR64__(v115, v116);
              HIDWORD(_Q0) = *(v60 + 28);
              v274 = _Q0;
              LODWORD(v275) = 0;
              *(&v273 + 1) = 0x7F7FFFFF00000000;
              *&v273 = 0;
              v117 = v60[2];
              v118 = v60[3];
              v119 = *(v117 + 96);
              v120 = *(v117 + 104);
              v121 = *(v118 + 96);
              v122 = *(v118 + 104);
              v123 = *v60;
              v124 = v60[1];
              v259 = (v119 + physx::gPxvOffsetTable);
              v260 = v121 + physx::gPxvOffsetTable;
              _ZF = v123 == 0;
              v125 = v123 != 0;
              v126 = qword_1EE1C7EE8;
              if (_ZF)
              {
                v127 = qword_1EE1C7EE8;
              }

              else
              {
                v127 = *(&physx::gPxvOffsetTable + 1);
              }

              v128 = v120 + v127;
              v129 = v124 != 0;
              if (v124)
              {
                v126 = *(&physx::gPxvOffsetTable + 1);
              }

              *&v258 = v128;
              *(&v258 + 1) = v122 + v126;
              v261 = v255;
              v262 = v256;
              v263 = v257;
              v264 = v255;
              v265 = v256;
              v266 = v257;
              v267 = 1;
              v268 = &v272;
              (**v112)(v112, &v258, 1);
              if ((BYTE11(v271) & 0x20) != 0)
              {
                *(v60 + 31) = HIDWORD(v273);
              }

              v60[13] = vrev64_s32(*(&v275 + 8));
              *(v60 + 28) = HIDWORD(v274);
              *(v60 + 52) = v272;
              *(v60 + 15) = DWORD2(v272);
              HIDWORD(PoseToToi) = DWORD1(v274);
              v60[4] = v274;
              *(v60 + 10) = DWORD2(v274);
              v58 = v113;
            }
          }

          v130 = *v60;
          v131 = *v60 != 0;
          if (*v60 && !*(*&v130[4] + 34))
          {
            v131 = 0;
          }

          v132 = v60[1];
          v133 = v132 != 0;
          if (v132 && !*(*&v132[4] + 34))
          {
            v133 = 0;
          }

          v134 = *(v60 + 11);
          if (v134 > v12)
          {
            v131 = 1;
          }

          if (!v133 && !v131)
          {
            *(v60 + 92) = 1;
          }

          v135 = *(this + 128);
          v137 = v60[2];
          v136 = v60[3];
          if (v130 && *(*&v130[4] + 34) != 1)
          {
LABEL_171:
            if (*(*&v130[5] + 124) == 0.0)
            {
              if (v132)
              {
                goto LABEL_173;
              }
            }

            else if (v134 < v12)
            {
              goto LABEL_177;
            }
          }

          else if (v132 && (*(*&v132[4] + 34) & 1) == 0)
          {
            if (v130)
            {
              goto LABEL_171;
            }

LABEL_173:
            v138 = 0;
            if (v134 >= v12 || *(*&v132[5] + 124) == 0.0)
            {
LABEL_181:
              LODWORD(PoseToToi) = *(v60 + 11);
              if (*&PoseToToi >= 0.0)
              {
                if (*&PoseToToi <= v12)
                {
                  v141 = v138;
                }

                else
                {
                  v141 = 0;
                }

                v59 = v243;
                if (v141)
                {
LABEL_188:
                  v142 = *(this + 14);
                  if (v7)
                  {
                    v143 = *(v142 + 2 * (v7 - 1));
                  }

                  else
                  {
                    v143 = 0;
                  }

                  if (*&PoseToToi > 0.0)
                  {
                    v144 = *(v142 + 2 * v7);
                    if (v143 < v144)
                    {
                      do
                      {
                        v145 = *(*(this + 13) + 8 * v143);
                        if ((*(v145 + 34) & 1) == 0)
                        {
                          v146 = *(v145 + 40);
                          PoseToToi = physx::PxsRigidBody::advancePrevPoseToToi(v146, PoseToToi);
                          v147 = v146[4];
                          LODWORD(PoseToToi) = *(v60 + 11);
                          *(*&v147 + 36) = fmaxf(*(*&v147 + 36) * (v12 - *&PoseToToi), 0.01);
                          ++*(*&v147 + 56);
                        }

                        ++v143;
                      }

                      while (v144 != v143);
                    }

                    v242 = v242 - (v242 * *&PoseToToi);
                    if (v14 + 1 < v10)
                    {
                      v148 = v58 - v14;
                      v149 = (*(this + 5) + 8 * (v14 + 1));
                      v150 = v12 / (v12 - *&PoseToToi);
                      do
                      {
                        v151 = *v149++;
                        *(v151 + 44) = v150 * (*(v151 + 44) - *(v60 + 11));
                        --v148;
                      }

                      while (v148);
                    }
                  }

                  if ((*(this + 129) & 1) == 0 && (*(v60[9] + 80) & 0x800) == 0 && *(v60 + 31) != 0.0)
                  {
                    v152 = v14 + 1;
                    if (v14 + 1 < v10)
                    {
                      v154 = *v60;
                      v153 = v60[1];
                      v155 = v14;
                      do
                      {
                        v156 = *(*(this + 5) + 8 * v152);
                        v157 = *v156;
                        if (*v156)
                        {
                          v158 = v156[1];
                          if (v158)
                          {
                            _ZF = v157 != v154 || v158 == v153;
                            if (!_ZF || (v158 == v154 ? (v160 = v157 == v153) : (v160 = 1), !v160 || (v157 == v153 ? (v161 = v158 == v154) : (v161 = 1), !v161 || (v158 == v153 ? (v162 = v157 == v154) : (v162 = 1), !v162))))
                            {
                              if (v59 != *(v156 + 29))
                              {
                                *(v156 + 29) = v59;
                                v163 = *(v156 + 11);
                                physx::PxsCCDPair::sweepEstimateToi(v156, v240);
                                if (*&PoseToToi >= v163)
                                {
                                  if (*&PoseToToi > v163)
                                  {
                                    v169 = v152 + 1;
                                    if (v169 >= v10 || (v170 = *(this + 5), v171 = (v170 + 8 * v169), v172 = *v171, *(*v171 + 44) >= *&PoseToToi))
                                    {
                                      v175 = 0;
                                    }

                                    else
                                    {
                                      v173 = 8 * v169 + 8;
                                      v174 = v152;
                                      do
                                      {
                                        *v171 = *(v170 + 8 * v174);
                                        *(*(this + 5) + 8 * v174) = v172;
                                        if (v10 - 2 == v174)
                                        {
                                          break;
                                        }

                                        ++v169;
                                        v170 = *(this + 5);
                                        v171 = (v170 + 8 * v169);
                                        v172 = *(v170 + v173);
                                        ++v174;
                                        v173 += 8;
                                      }

                                      while (*(v172 + 44) < *&PoseToToi);
                                      v175 = -1;
                                    }

                                    v152 += v175;
                                  }
                                }

                                else if (v155 > v14)
                                {
                                  v164 = 8 * v155;
                                  v165 = v152;
                                  do
                                  {
                                    v166 = *(this + 5);
                                    v167 = *(v166 + v164);
                                    if (*(v167 + 44) <= *&PoseToToi)
                                    {
                                      break;
                                    }

                                    v168 = v155;
                                    *(v166 + v164) = *(v166 + 8 * v165);
                                    *(*(this + 5) + 8 * v165) = v167;
                                    --v155;
                                    v164 -= 8;
                                    v165 = v168;
                                  }

                                  while (v14 < v155);
                                }
                              }
                            }
                          }
                        }

                        v155 = v152++;
                      }

                      while (v152 < v10);
                    }
                  }

                  ++v241;
                  ++v59;
                }
              }

              else
              {
                *(v60 + 11) = 0;
                PoseToToi = 0.0;
                v59 = v243;
                if (v138)
                {
                  goto LABEL_188;
                }
              }

LABEL_244:
              if (++v14 >= v10)
              {
                goto LABEL_317;
              }

              continue;
            }

LABEL_177:
            v139 = v60[9];
            if ((*(v139 + 80) & 0x800) != 0 || (v140 = *(v60 + 31), v140 == 0.0))
            {
LABEL_179:
              v138 = 1;
              goto LABEL_181;
            }

            v176 = *(v60 + 8);
            if ((LODWORD(v176) >> 23) == 255 || (v177 = *(v60 + 36), (v177.i32[0] & 0x7FFFFFFFu) >> 23 > 0xFE) || (_S5 = v177.i32[1], (v177.i32[1] >> 23) == 255) || fabsf(sqrtf((vmul_f32(v177, v177).f32[0] + (v176 * v176)) + (v177.f32[1] * v177.f32[1])) + -1.0) >= 0.0001)
            {
              if (v130 && (*(*&v130[4] + 34) & 1) == 0)
              {
                *&PoseToToi = v134;
                physx::PxsRigidBody::advancePrevPoseToToi(v130, PoseToToi);
                v138 = 1;
                physx::PxsRigidBody::advanceToToi(v130, v134, v242, 1);
                ++*(*&v130[4] + 56);
                goto LABEL_181;
              }

              goto LABEL_179;
            }

            v179 = 0;
            v180 = 0.0;
            v181 = 0;
            v182 = 0.0;
            v183 = 0;
            if (v130)
            {
              LOBYTE(v182) = *(v139 + 84);
              v184 = v130[5];
              _S4 = v137[8].f32[0] - *(*&v184 + 24);
              v181.i32[0] = *(*&v184 + 88);
              _D18 = *(*&v184 + 80);
              v187 = vsub_f32(v137[7], *(*&v184 + 16));
              __asm { FMLA            S17, S4, V18.S[1] }

              v189 = vdup_lane_s32(v187, 0);
              v189.f32[0] = _S4;
              v190 = vmla_f32(vmul_f32(v189, vneg_f32(_D18)), v187, vzip1_s32(v181, _D18));
              *v181.i32 = *(*&v184 + 64) + _S17;
              v183 = vadd_f32(*(*&v184 + 68), v190);
              v182 = *(*&v184 + 124) * LODWORD(v182);
            }

            v191 = 0.0;
            if (v132)
            {
              LOBYTE(v191) = *(v139 + 85);
              v192 = v132[5];
              _S6 = v136[8].f32[0] - *(*&v192 + 24);
              v179.i32[0] = *(*&v192 + 88);
              _D19 = *(*&v192 + 80);
              v195 = vsub_f32(v136[7], *(*&v192 + 16));
              __asm { FMLA            S18, S6, V19.S[1] }

              v197 = vdup_lane_s32(v195, 0);
              v197.f32[0] = _S6;
              v180 = *(*&v192 + 64) + _S18;
              v179 = vadd_f32(*(*&v192 + 68), vmla_f32(vmul_f32(v197, vneg_f32(_D19)), v195, vzip1_s32(v179, _D19)));
              v191 = *(*&v192 + 124) * LODWORD(v191);
            }

            v198 = v180 - *v181.i32;
            _D7 = vsub_f32(v179, v183);
            __asm { FMLA            S17, S5, V7.S[1] }

            v201 = _S17 - (*(v60 + 16) * 10.0);
            if (v201 >= -0.000001)
            {
              goto LABEL_292;
            }

            v202 = -v140;
            v203 = ((*(v60 + 28) + v12) * v201) / (v182 + v191);
            if (v203 < v202)
            {
              v203 = v202;
            }

            if (*(v60 + 132) == 1)
            {
              v204 = v198 - (v176 * _S17);
              _D7 = COERCE_DOUBLE(vsub_f32(_D7, vmul_n_f32(v177, _S17)));
              _S19 = HIDWORD(_D7);
              __asm { FMLA            S17, S19, V7.S[1] }

              v208 = sqrtf(_S17);
              v209 = COERCE_DOUBLE(vmul_n_f32(*&_D7, v12 / v208));
              if (v208 > 0.0)
              {
                v204 = v204 * (v12 / v208);
                _D7 = v209;
              }

              v210 = fabsf(*(v60 + 27) * v203) >= (v208 / (v182 + v191)) ? v208 / (v182 + v191) : -(v203 * *(v60 + 26));
              v211 = vmul_n_f32(*&_D7, v210);
              v212 = (v176 * v203) + (v210 * v204);
              PoseToToi = COERCE_DOUBLE(vadd_f32(vmul_n_f32(v177, v203), v211));
            }

            else
            {
              v212 = v176 * v203;
              PoseToToi = COERCE_DOUBLE(vmul_n_f32(v177, v203));
            }

            if (v203 >= 0.0)
            {
              goto LABEL_292;
            }

            *(v60 + 30) = -v203;
            if (v130 && (*(*&v130[4] + 34) & 1) != 0 || v132 && *(*&v132[4] + 34) == 1)
            {
              v213 = v60 + 6;
              goto LABEL_274;
            }

            if (!v130)
            {
              goto LABEL_281;
            }

            v214 = v130[5];
            v215 = (v182 * v212) + *(*&v214 + 64);
            v216 = (v182 * *&PoseToToi) + *(*&v214 + 68);
            v217 = vmuls_lane_f32(v182, *&PoseToToi, 1) + *(*&v214 + 72);
            *(*&v214 + 64) = v215;
            *(*&v214 + 68) = v216;
            *(*&v214 + 72) = v217;
            v218 = *(*&v214 + 158);
            if (!v218)
            {
              goto LABEL_281;
            }

            if ((*(*&v214 + 158) & 1) == 0)
            {
              if ((*(*&v214 + 158) & 2) == 0)
              {
                goto LABEL_279;
              }

LABEL_288:
              *(*&v214 + 68) = 0;
              if ((v218 & 4) == 0)
              {
                goto LABEL_281;
              }

LABEL_280:
              *(*&v214 + 72) = 0;
              goto LABEL_281;
            }

            *(*&v214 + 64) = 0;
            if ((v218 & 2) != 0)
            {
              goto LABEL_288;
            }

LABEL_279:
            if ((v218 & 4) != 0)
            {
              goto LABEL_280;
            }

LABEL_281:
            if (!v132)
            {
              goto LABEL_292;
            }

            v219 = v132[5];
            v220 = *(*&v219 + 72);
            v213 = (*&v219 + 72);
            v221 = *(*&v219 + 68) - (v191 * *&PoseToToi);
            *(*&v219 + 64) = *(*&v219 + 64) - (v191 * v212);
            *(*&v219 + 68) = v221;
            *(*&v219 + 72) = v220 - vmuls_lane_f32(v191, *&PoseToToi, 1);
            v222 = *(*&v219 + 158);
            if (!v222)
            {
              goto LABEL_292;
            }

            if (*(*&v219 + 158))
            {
              *(*&v219 + 64) = 0;
              if ((v222 & 2) != 0)
              {
                goto LABEL_291;
              }

LABEL_285:
              if ((v222 & 4) == 0)
              {
LABEL_292:
                if (v130 && (*(*&v130[4] + 34) & 1) == 0)
                {
                  *&PoseToToi = v134;
                  physx::PxsRigidBody::advancePrevPoseToToi(v130, PoseToToi);
                  if (v135)
                  {
                    v223 = *(v60 + 12) == 0.0;
                  }

                  else
                  {
                    v223 = 0;
                  }

                  physx::PxsRigidBody::advanceToToi(v130, v134, v242, v223);
                  ++*(*&v130[4] + 56);
                }

                if (v132 && (*(*&v132[4] + 34) & 1) == 0)
                {
                  *&PoseToToi = v134;
                  physx::PxsRigidBody::advancePrevPoseToToi(v132, PoseToToi);
                  if (v135)
                  {
                    v224 = *(v60 + 12) == 0.0;
                  }

                  else
                  {
                    v224 = 0;
                  }

                  physx::PxsRigidBody::advanceToToi(v132, v134, v242, v224);
                  ++*(*&v132[4] + 56);
                }

                LODWORD(PoseToToi) = *(v60 + 12);
                if (*&PoseToToi > 0.0)
                {
                  if (v130)
                  {
                    if ((*(*&v130[4] + 34) & 1) == 0)
                    {
                      PoseToToi = physx::PxsRigidBody::advancePrevPoseToToi(v130, PoseToToi);
                      if (v135)
                      {
                        physx::PxsRigidBody::advanceToToi(v130, *(v60 + 12), v242, 1);
                      }
                    }
                  }

                  if (v132)
                  {
                    if ((*(*&v132[4] + 34) & 1) == 0)
                    {
                      LODWORD(PoseToToi) = *(v60 + 12);
                      PoseToToi = physx::PxsRigidBody::advancePrevPoseToToi(v132, PoseToToi);
                      if (v135)
                      {
                        physx::PxsRigidBody::advanceToToi(v132, *(v60 + 12), v242, 1);
                      }
                    }
                  }
                }

                if (v130)
                {
                  *(*&v130[4] + 34) = 257;
                }

                if (v132)
                {
                  *(*&v132[4] + 34) = 257;
                }

                goto LABEL_179;
              }
            }

            else
            {
              if ((*(*&v219 + 158) & 2) == 0)
              {
                goto LABEL_285;
              }

LABEL_291:
              *(*&v219 + 68) = 0;
              if ((v222 & 4) == 0)
              {
                goto LABEL_292;
              }
            }

LABEL_274:
            *v213 = 0;
            goto LABEL_292;
          }

          break;
        }

        v138 = 0;
        goto LABEL_181;
      }

LABEL_317:
      if (++v7 == v227)
      {
        goto LABEL_320;
      }
    }
  }

  v241 = 0;
LABEL_320:
  atomic_fetch_add(*(this + 15), v241);
  v225 = *(*(this + 7) + 440);
  pthread_mutex_lock((v225 + 8));
  *v234 = *v225;
  *v225 = v234;
  return pthread_mutex_unlock((v225 + 8));
}

void *physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::PxsCCDPair *>>::grow(uint64_t a1)
{
  v2 = 2 * *(a1 + 8);
  *(a1 + 8) = v2;
  v3 = physx::shdfnd::ReflectionAllocator<physx::PxsCCDPair *>::allocate(4 * v2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsSortInternals.h", 155);
  result = memcpy(v3, *(a1 + 16), (4 * *(a1 + 4)));
  if (*(a1 + 24) == 1 && *(a1 + 16))
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *(a1 + 24) = 1;
  *(a1 + 16) = v3;
  return result;
}

uint64_t physx::shdfnd::ReflectionAllocator<physx::PxsCCDPair *>::allocate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    v6 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxsCCDPair *>::getName() [T = physx::PxsCCDPair *]";
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

physx::PxcScratchAllocator *physx::PxcScratchAllocator::PxcScratchAllocator(physx::PxcScratchAllocator *this)
{
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
  *this = v4;
  physx::shdfnd::MutexImpl::MutexImpl(v4);
  *(this + 1) = 0;
  *(this + 8) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  physx::shdfnd::Array<unsigned char *,physx::shdfnd::ReflectionAllocator<unsigned char *>>::recreate(this + 8, 0x40u);
  v5 = *(this + 4);
  v6 = *(this + 5);
  v8 = 0;
  if ((v6 & 0x7FFFFFFFu) <= v5)
  {
    physx::shdfnd::Array<unsigned char *,physx::shdfnd::ReflectionAllocator<unsigned char *>>::growAndPushBack(this + 8, &v8);
  }

  else
  {
    *(*(this + 1) + 8 * v5) = 0;
    *(this + 4) = v5 + 1;
  }

  return this;
}

void physx::Cm::RenderBuffer::~RenderBuffer(physx::Cm::RenderBuffer *this)
{
  physx::Cm::RenderBuffer::~RenderBuffer(this);
  if (v1)
  {
    v2 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

    v2();
  }
}

{
  *this = &unk_1F5D1BEB0;
  v2 = *(this + 21);
  if ((v2 & 0x80000000) == 0 && (v2 & 0x7FFFFFFF) != 0 && *(this + 9) != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  v4 = *(this + 17);
  if ((v4 & 0x80000000) == 0 && (v4 & 0x7FFFFFFF) != 0 && *(this + 7) != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  v6 = *(this + 13);
  if ((v6 & 0x80000000) == 0 && (v6 & 0x7FFFFFFF) != 0 && *(this + 5) != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  v8 = *(this + 9);
  if ((v8 & 0x80000000) == 0 && (v8 & 0x7FFFFFFF) != 0 && *(this + 3))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  v9 = *(this + 5);
  if ((v9 & 0x80000000) == 0 && (v9 & 0x7FFFFFFF) != 0)
  {
    if (*(this + 1))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }
}

uint64_t physx::Cm::RenderBuffer::append(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a2 + 24))(a2);
  v5 = (*(*a2 + 16))(a2);
  physx::Cm::RenderBuffer::append<physx::PxDebugPoint>(a1, a1 + 8, v4, v5);
  v6 = (*(*a2 + 40))(a2);
  v7 = (*(*a2 + 32))(a2);
  physx::Cm::RenderBuffer::append<physx::PxDebugLine>(a1, a1 + 24, v6, v7);
  v8 = (*(*a2 + 56))(a2);
  v9 = (*(*a2 + 48))(a2);
  physx::Cm::RenderBuffer::append<physx::PxDebugTriangle>(a1, a1 + 40, v8, v9);
  v10 = (*(*a2 + 72))(a2);
  v11 = (*(*a2 + 64))(a2);

  return physx::Cm::RenderBuffer::append<physx::PxDebugText>(a1, a1 + 56, v10, v11);
}

_DWORD *physx::Cm::RenderBuffer::clear(_DWORD *this)
{
  this[4] = 0;
  this[8] = 0;
  this[12] = 0;
  this[16] = 0;
  this[20] = 0;
  return this;
}

uint64_t physx::Cm::RenderBuffer::append<physx::PxDebugPoint>(uint64_t a1, uint64_t a2, unint64_t a3, unsigned int a4)
{
  v7 = *(a2 + 12);
  v8 = *(a2 + 8) + a4;
  if ((v7 & 0x7FFFFFFFu) < v8)
  {
    result = physx::shdfnd::Array<physx::PxDebugPoint,physx::shdfnd::ReflectionAllocator<physx::PxDebugPoint>>::recreate(a2, v8);
  }

  if (a4)
  {
    v10 = a3 + 16 * a4;
    do
    {
      v11 = *(a2 + 8);
      if ((*(a2 + 12) & 0x7FFFFFFFu) <= v11)
      {
        result = physx::shdfnd::Array<physx::PxDebugPoint,physx::shdfnd::ReflectionAllocator<physx::PxDebugPoint>>::growAndPushBack(a2, a3);
      }

      else
      {
        v12 = *a2 + 16 * v11;
        *v12 = *a3;
        *(v12 + 8) = *(a3 + 8);
        *(v12 + 12) = *(a3 + 12);
        *(a2 + 8) = v11 + 1;
      }

      a3 += 16;
    }

    while (a3 < v10);
  }

  return result;
}

uint64_t physx::Cm::RenderBuffer::append<physx::PxDebugLine>(uint64_t a1, uint64_t a2, unint64_t a3, unsigned int a4)
{
  v7 = *(a2 + 12);
  v8 = *(a2 + 8) + a4;
  if ((v7 & 0x7FFFFFFFu) < v8)
  {
    result = physx::shdfnd::Array<physx::PxDebugLine,physx::shdfnd::ReflectionAllocator<physx::PxDebugLine>>::recreate(a2, v8);
  }

  if (a4)
  {
    v10 = a3 + 32 * a4;
    do
    {
      v11 = *(a2 + 8);
      if ((*(a2 + 12) & 0x7FFFFFFFu) <= v11)
      {
        result = physx::shdfnd::Array<physx::PxDebugLine,physx::shdfnd::ReflectionAllocator<physx::PxDebugLine>>::growAndPushBack(a2, a3);
      }

      else
      {
        v12 = *a2 + 32 * v11;
        *v12 = *a3;
        *(v12 + 8) = *(a3 + 8);
        *(v12 + 12) = *(a3 + 12);
        *(v12 + 16) = *(a3 + 16);
        *(v12 + 24) = *(a3 + 24);
        *(v12 + 28) = *(a3 + 28);
        *(a2 + 8) = v11 + 1;
      }

      a3 += 32;
    }

    while (a3 < v10);
  }

  return result;
}

uint64_t physx::Cm::RenderBuffer::append<physx::PxDebugTriangle>(uint64_t a1, uint64_t a2, unint64_t a3, unsigned int a4)
{
  v7 = *(a2 + 12);
  v8 = *(a2 + 8) + a4;
  if ((v7 & 0x7FFFFFFFu) < v8)
  {
    result = physx::shdfnd::Array<physx::PxDebugTriangle,physx::shdfnd::ReflectionAllocator<physx::PxDebugTriangle>>::recreate(a2, v8);
  }

  if (a4)
  {
    v10 = a3 + 48 * a4;
    do
    {
      v11 = *(a2 + 8);
      if ((*(a2 + 12) & 0x7FFFFFFFu) <= v11)
      {
        result = physx::shdfnd::Array<physx::PxDebugTriangle,physx::shdfnd::ReflectionAllocator<physx::PxDebugTriangle>>::growAndPushBack(a2, a3);
      }

      else
      {
        v12 = *a2 + 48 * v11;
        *v12 = *a3;
        *(v12 + 8) = *(a3 + 8);
        *(v12 + 12) = *(a3 + 12);
        *(v12 + 16) = *(a3 + 16);
        *(v12 + 24) = *(a3 + 24);
        *(v12 + 28) = *(a3 + 28);
        *(v12 + 32) = *(a3 + 32);
        *(v12 + 40) = *(a3 + 40);
        *(v12 + 44) = *(a3 + 44);
        *(a2 + 8) = v11 + 1;
      }

      a3 += 48;
    }

    while (a3 < v10);
  }

  return result;
}

uint64_t physx::Cm::RenderBuffer::append<physx::PxDebugText>(uint64_t a1, uint64_t a2, unint64_t a3, unsigned int a4)
{
  v7 = *(a2 + 12);
  v8 = *(a2 + 8) + a4;
  if ((v7 & 0x7FFFFFFFu) < v8)
  {
    result = physx::shdfnd::Array<physx::PxDebugText,physx::shdfnd::ReflectionAllocator<physx::PxDebugText>>::recreate(a2, v8);
  }

  if (a4)
  {
    v10 = a3 + 32 * a4;
    do
    {
      v11 = *(a2 + 8);
      if ((*(a2 + 12) & 0x7FFFFFFFu) <= v11)
      {
        result = physx::shdfnd::Array<physx::PxDebugText,physx::shdfnd::ReflectionAllocator<physx::PxDebugText>>::growAndPushBack(a2, a3);
      }

      else
      {
        v12 = *a2 + 32 * v11;
        *v12 = *a3;
        *(v12 + 8) = *(a3 + 8);
        v13 = *(a3 + 12);
        *(v12 + 28) = *(a3 + 28);
        *(v12 + 12) = v13;
        ++*(a2 + 8);
      }

      a3 += 32;
    }

    while (a3 < v10);
  }

  return result;
}

uint64_t physx::shdfnd::Array<physx::PxDebugPoint,physx::shdfnd::ReflectionAllocator<physx::PxDebugPoint>>::recreate(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2)
  {
    result = physx::shdfnd::ReflectionAllocator<physx::PxDebugPoint>::allocate(result, 16 * a2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
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
    v7 = v4 + 16 * v5;
    v8 = *v3;
    v9 = v4;
    do
    {
      *v9 = *v8;
      *(v9 + 8) = *(v8 + 8);
      *(v9 + 12) = *(v8 + 12);
      v9 += 16;
      v8 += 16;
    }

    while (v9 < v7);
  }

  if ((*(v3 + 12) & 0x80000000) == 0 && v6)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *v3 = v4;
  *(v3 + 12) = a2;
  return result;
}

uint64_t physx::shdfnd::ReflectionAllocator<physx::PxDebugPoint>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxDebugPoint>::getName() [T = physx::PxDebugPoint]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

uint64_t physx::shdfnd::Array<physx::PxDebugPoint,physx::shdfnd::ReflectionAllocator<physx::PxDebugPoint>>::growAndPushBack(uint64_t a1, uint64_t a2)
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
    v6 = physx::shdfnd::ReflectionAllocator<physx::PxDebugPoint>::allocate(a1, 16 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 8);
  v8 = v6 + 16 * v7;
  v9 = *a1;
  if (v7)
  {
    v10 = *a1;
    v11 = v6;
    do
    {
      *v11 = *v10;
      *(v11 + 8) = *(v10 + 8);
      *(v11 + 12) = *(v10 + 12);
      v11 += 16;
      v10 += 16;
    }

    while (v11 < v8);
  }

  *v8 = *a2;
  *(v8 + 8) = *(a2 + 8);
  *(v8 + 12) = *(a2 + 12);
  if ((*(a1 + 12) & 0x80000000) == 0 && v9)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    v7 = *(a1 + 8);
  }

  *a1 = v6;
  *(a1 + 8) = v7 + 1;
  *(a1 + 12) = v5;
  return v6 + 16 * v7;
}

uint64_t physx::shdfnd::Array<physx::PxDebugLine,physx::shdfnd::ReflectionAllocator<physx::PxDebugLine>>::recreate(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2)
  {
    result = physx::shdfnd::ReflectionAllocator<physx::PxDebugLine>::allocate(result, 32 * a2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
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
    v7 = v4 + 32 * v5;
    v8 = *v3;
    v9 = v4;
    do
    {
      *v9 = *v8;
      *(v9 + 8) = *(v8 + 8);
      *(v9 + 12) = *(v8 + 12);
      *(v9 + 16) = *(v8 + 16);
      *(v9 + 24) = *(v8 + 24);
      *(v9 + 28) = *(v8 + 28);
      v9 += 32;
      v8 += 32;
    }

    while (v9 < v7);
  }

  if ((*(v3 + 12) & 0x80000000) == 0 && v6)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *v3 = v4;
  *(v3 + 12) = a2;
  return result;
}

uint64_t physx::shdfnd::ReflectionAllocator<physx::PxDebugLine>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxDebugLine>::getName() [T = physx::PxDebugLine]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

uint64_t physx::shdfnd::Array<physx::PxDebugLine,physx::shdfnd::ReflectionAllocator<physx::PxDebugLine>>::growAndPushBack(uint64_t a1, uint64_t a2)
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
    v6 = physx::shdfnd::ReflectionAllocator<physx::PxDebugLine>::allocate(a1, 32 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 8);
  v8 = v6 + 32 * v7;
  v9 = *a1;
  if (v7)
  {
    v10 = *a1;
    v11 = v6;
    do
    {
      *v11 = *v10;
      *(v11 + 8) = *(v10 + 8);
      *(v11 + 12) = *(v10 + 12);
      *(v11 + 16) = *(v10 + 16);
      *(v11 + 24) = *(v10 + 24);
      *(v11 + 28) = *(v10 + 28);
      v11 += 32;
      v10 += 32;
    }

    while (v11 < v8);
  }

  *v8 = *a2;
  *(v8 + 8) = *(a2 + 8);
  *(v8 + 12) = *(a2 + 12);
  *(v8 + 16) = *(a2 + 16);
  *(v8 + 24) = *(a2 + 24);
  *(v8 + 28) = *(a2 + 28);
  if ((*(a1 + 12) & 0x80000000) == 0 && v9)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    v7 = *(a1 + 8);
  }

  *a1 = v6;
  *(a1 + 8) = v7 + 1;
  *(a1 + 12) = v5;
  return v6 + 32 * v7;
}

uint64_t physx::shdfnd::Array<physx::PxDebugTriangle,physx::shdfnd::ReflectionAllocator<physx::PxDebugTriangle>>::recreate(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2)
  {
    result = physx::shdfnd::ReflectionAllocator<physx::PxDebugTriangle>::allocate(result, 48 * a2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
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
    v7 = v4 + 48 * v5;
    v8 = *v3;
    v9 = v4;
    do
    {
      *v9 = *v8;
      *(v9 + 8) = *(v8 + 8);
      *(v9 + 12) = *(v8 + 12);
      *(v9 + 16) = *(v8 + 16);
      *(v9 + 24) = *(v8 + 24);
      *(v9 + 28) = *(v8 + 28);
      *(v9 + 32) = *(v8 + 32);
      *(v9 + 40) = *(v8 + 40);
      *(v9 + 44) = *(v8 + 44);
      v9 += 48;
      v8 += 48;
    }

    while (v9 < v7);
  }

  if ((*(v3 + 12) & 0x80000000) == 0 && v6)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *v3 = v4;
  *(v3 + 12) = a2;
  return result;
}

uint64_t physx::shdfnd::ReflectionAllocator<physx::PxDebugTriangle>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxDebugTriangle>::getName() [T = physx::PxDebugTriangle]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

uint64_t physx::shdfnd::Array<physx::PxDebugTriangle,physx::shdfnd::ReflectionAllocator<physx::PxDebugTriangle>>::growAndPushBack(uint64_t a1, uint64_t a2)
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
    v6 = physx::shdfnd::ReflectionAllocator<physx::PxDebugTriangle>::allocate(a1, 48 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 8);
  v8 = v6 + 48 * v7;
  v9 = *a1;
  if (v7)
  {
    v10 = *a1;
    v11 = v6;
    do
    {
      *v11 = *v10;
      *(v11 + 8) = *(v10 + 8);
      *(v11 + 12) = *(v10 + 12);
      *(v11 + 16) = *(v10 + 16);
      *(v11 + 24) = *(v10 + 24);
      *(v11 + 28) = *(v10 + 28);
      *(v11 + 32) = *(v10 + 32);
      *(v11 + 40) = *(v10 + 40);
      *(v11 + 44) = *(v10 + 44);
      v11 += 48;
      v10 += 48;
    }

    while (v11 < v8);
  }

  *v8 = *a2;
  *(v8 + 8) = *(a2 + 8);
  *(v8 + 12) = *(a2 + 12);
  *(v8 + 16) = *(a2 + 16);
  *(v8 + 24) = *(a2 + 24);
  *(v8 + 28) = *(a2 + 28);
  *(v8 + 32) = *(a2 + 32);
  *(v8 + 40) = *(a2 + 40);
  *(v8 + 44) = *(a2 + 44);
  if ((*(a1 + 12) & 0x80000000) == 0 && v9)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    v7 = *(a1 + 8);
  }

  *a1 = v6;
  *(a1 + 8) = v7 + 1;
  *(a1 + 12) = v5;
  return v6 + 48 * v7;
}

uint64_t physx::shdfnd::Array<physx::PxDebugText,physx::shdfnd::ReflectionAllocator<physx::PxDebugText>>::recreate(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2)
  {
    result = physx::shdfnd::ReflectionAllocator<physx::PxDebugText>::allocate(result, 32 * a2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
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
    v7 = v4 + 32 * v5;
    v8 = v4;
    do
    {
      *v8 = *v6;
      *(v8 + 8) = *(v6 + 8);
      v9 = *(v6 + 12);
      *(v8 + 28) = *(v6 + 28);
      *(v8 + 12) = v9;
      v8 += 32;
      v6 += 32;
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

uint64_t physx::shdfnd::ReflectionAllocator<physx::PxDebugText>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxDebugText>::getName() [T = physx::PxDebugText]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

uint64_t physx::shdfnd::Array<physx::PxDebugText,physx::shdfnd::ReflectionAllocator<physx::PxDebugText>>::growAndPushBack(uint64_t a1, uint64_t a2)
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
    v6 = physx::shdfnd::ReflectionAllocator<physx::PxDebugText>::allocate(a1, 32 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = v6 + 32 * v7;
    v9 = *a1;
    v10 = v6;
    do
    {
      *v10 = *v9;
      *(v10 + 8) = *(v9 + 8);
      v11 = *(v9 + 12);
      *(v10 + 28) = *(v9 + 28);
      *(v10 + 12) = v11;
      v10 += 32;
      v9 += 32;
    }

    while (v10 < v8);
    v12 = *(a1 + 8);
  }

  else
  {
    v12 = 0;
  }

  v13 = v6 + 32 * v12;
  *v13 = *a2;
  *(v13 + 8) = *(a2 + 8);
  v14 = *(a2 + 12);
  *(v13 + 28) = *(a2 + 28);
  *(v13 + 12) = v14;
  if ((*(a1 + 12) & 0x80000000) == 0 && *a1)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *a1 = v6;
  v15 = *(a1 + 8);
  *(a1 + 8) = v15 + 1;
  *(a1 + 12) = v5;
  return v6 + 32 * v15;
}

void physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Gu::SpherePersistentContactManifold>>(uint64_t a1, int a2)
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
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Gu::SpherePersistentContactManifold>>::grow(v33);
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
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Gu::SpherePersistentContactManifold>>::grow(v33);
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

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::Gu::SpherePersistentContactManifold>>::growAndPushBack(uint64_t result, void *a2)
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
    result = physx::shdfnd::ReflectionAllocator<physx::Gu::SpherePersistentContactManifold>::allocate(result, 8 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
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

uint64_t physx::shdfnd::ReflectionAllocator<physx::Gu::SpherePersistentContactManifold>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Gu::SpherePersistentContactManifold>::getName() [T = physx::Gu::SpherePersistentContactManifold]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

void *physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Gu::SpherePersistentContactManifold>>::grow(uint64_t a1)
{
  v2 = 2 * *(a1 + 8);
  *(a1 + 8) = v2;
  v3 = physx::shdfnd::ReflectionAllocator<physx::Gu::SpherePersistentContactManifold>::allocate(a1, 4 * v2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsSortInternals.h", 155);
  result = memcpy(v3, *(a1 + 16), (4 * *(a1 + 4)));
  if (*(a1 + 24) == 1 && *(a1 + 16))
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *(a1 + 24) = 1;
  *(a1 + 16) = v3;
  return result;
}

void physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Gu::LargePersistentContactManifold>>(uint64_t a1, int a2)
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
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Gu::LargePersistentContactManifold>>::grow(v33);
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
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Gu::LargePersistentContactManifold>>::grow(v33);
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

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::Gu::LargePersistentContactManifold>>::growAndPushBack(uint64_t result, void *a2)
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
    result = physx::shdfnd::ReflectionAllocator<physx::Gu::LargePersistentContactManifold>::allocate(result, 8 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
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

uint64_t physx::shdfnd::ReflectionAllocator<physx::Gu::LargePersistentContactManifold>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Gu::LargePersistentContactManifold>::getName() [T = physx::Gu::LargePersistentContactManifold]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

void *physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Gu::LargePersistentContactManifold>>::grow(uint64_t a1)
{
  v2 = 2 * *(a1 + 8);
  *(a1 + 8) = v2;
  v3 = physx::shdfnd::ReflectionAllocator<physx::Gu::LargePersistentContactManifold>::allocate(a1, 4 * v2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsSortInternals.h", 155);
  result = memcpy(v3, *(a1 + 16), (4 * *(a1 + 4)));
  if (*(a1 + 24) == 1 && *(a1 + 16))
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *(a1 + 24) = 1;
  *(a1 + 16) = v3;
  return result;
}

uint64_t physx::PxsDefaultMemoryAllocator::allocate(physx::PxsDefaultMemoryAllocator *this, uint64_t a2, const char *a3)
{
  if (a2)
  {
    return (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, a2, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevel/software/include/PxsDefaultMemoryManager.h", 67);
  }

  else
  {
    return 0;
  }
}

uint64_t physx::PxsDefaultMemoryAllocator::deallocate(physx::PxsDefaultMemoryAllocator *this, void *a2)
{
  if (a2)
  {
    return (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  return result;
}

pthread_mutex_t **physx::shdfnd::MutexT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>>::~MutexT(pthread_mutex_t **a1)
{
  pthread_mutex_destroy(*a1);
  if (*a1)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  return a1;
}

uint64_t physx::shdfnd::Array<unsigned char *,physx::shdfnd::ReflectionAllocator<unsigned char *>>::recreate(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2)
  {
    result = physx::shdfnd::ReflectionAllocator<unsigned char *>::allocate(result, 8 * a2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
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

uint64_t physx::shdfnd::ReflectionAllocator<unsigned char *>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<unsigned char *>::getName() [T = unsigned char *]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

uint64_t physx::shdfnd::Array<unsigned char *,physx::shdfnd::ReflectionAllocator<unsigned char *>>::growAndPushBack(uint64_t a1, void *a2)
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
    v6 = physx::shdfnd::ReflectionAllocator<unsigned char *>::allocate(a1, 8 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
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

uint64_t physx::shdfnd::Array<physx::PxcNpMemBlock *,physx::shdfnd::ReflectionAllocator<physx::PxcNpMemBlock *>>::recreate(uint64_t a1, unsigned int a2)
{
  v4 = 8 * a2;
  v5 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v6 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxcNpMemBlock *>::getName() [T = physx::PxcNpMemBlock *]";
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

uint64_t physx::shdfnd::Array<physx::PxcNpMemBlock *,physx::shdfnd::ReflectionAllocator<physx::PxcNpMemBlock *>>::growAndPushBack(uint64_t a1, void *a2)
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
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxcNpMemBlock *>::getName() [T = physx::PxcNpMemBlock *]";
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

void physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(uint64_t a1, int a2)
{
  v2 = (a2 + 31) >> 5;
  if (v2 > (*(a1 + 8) & 0x7FFFFFFFu))
  {
    v4 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 4 * v2, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/CmBitMap.h", 438);
    v5 = v4;
    v6 = *(a1 + 8);
    if (*a1)
    {
      memcpy(v4, *a1, (4 * v6));
      v6 = *(a1 + 8);
      if ((v6 & 0x80000000) == 0)
      {
        if (*a1)
        {
          (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
          v6 = *(a1 + 8);
        }
      }
    }

    bzero(&v5[4 * (v6 & 0x7FFFFFFF)], 4 * (v2 - v6));
    *a1 = v5;
    *(a1 + 8) = v2;
  }
}

uint64_t physx::Cm::DelegateTask<physx::PxsCCDContext,&physx::PxsCCDContext::postCCDSweep>::~DelegateTask(void *a1)
{
  *a1 = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  a1[2] = 0;
  return (*(v1 + 24))();
}

uint64_t physx::Cm::DelegateTask<physx::PxsCCDContext,&physx::PxsCCDContext::postCCDSweep>::runInternal(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(v1 + 416);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = *(result + 24);
    do
    {
      v6 = 0;
      v7 = v4++;
      if (v2 <= v4)
      {
        v8 = v7 + 1;
      }

      else
      {
        v8 = v2;
      }

      v9 = v7;
      while (1)
      {
        v6 += *(*(v1 + 408) + 4 * v9);
        if (v6 > *(v1 + 432))
        {
          break;
        }

        if (++v9 >= v2)
        {
          goto LABEL_11;
        }
      }

      v4 = v9 + 1;
      v8 = v9;
LABEL_11:
      if (v8 == v2)
      {
        v4 = v2;
        if (!v6)
        {
          break;
        }
      }

      v10 = physx::Cm::FlushPool::allocate(*(*(v1 + 440) + 1920), 136, 0x10u);
      v11 = *(v1 + 180);
      v12 = v11 == *(v1 + 436) - 1;
      v13 = *(v1 + 392);
      v14 = *(v1 + 400);
      v15 = *(v1 + 440);
      v16 = *(*(v1 + 424) + 7200);
      v17 = *(v1 + 264);
      v18 = *(v1 + 280);
      v19 = *(v1 + 176);
      v20 = *(v15 + 2616);
      *(v10 + 16) = 0;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 8) = v20;
      v21 = &unk_1F5D1BE40;
      *v10 = &unk_1F5D1BE40;
      *(v10 + 40) = v13;
      *(v10 + 48) = v14;
      *(v10 + 56) = v15;
      *(v10 + 64) = v1;
      *(v10 + 72) = v16;
      *(v10 + 76) = v11;
      *(v10 + 80) = v1 + 192;
      *(v10 + 88) = v7;
      *(v10 + 92) = v4 - v7;
      *(v10 + 96) = v2;
      *(v10 + 100) = v3;
      *(v10 + 104) = v17;
      *(v10 + 112) = v18;
      *(v10 + 120) = v1 + 184;
      *(v10 + 128) = v12;
      *(v10 + 129) = v19;
      v22 = *(*(v1 + 440) + 1912);
      *(v10 + 32) = 1;
      *(v10 + 16) = v22;
      *(v10 + 24) = v5;
      if (v5)
      {
        (*(*v5 + 32))(v5);
        v21 = *v10;
      }

      v3 += v6;
      result = v21[5](v10);
    }

    while (v4 < v2);
  }

  return result;
}

uint64_t physx::Cm::DelegateTask<physx::PxsCCDContext,&physx::PxsCCDContext::postCCDAdvance>::~DelegateTask(void *a1)
{
  *a1 = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  a1[2] = 0;
  return (*(v1 + 24))();
}

void physx::Cm::DelegateTask<physx::PxsCCDContext,&physx::PxsCCDContext::postCCDAdvance>::runInternal(uint64_t a1)
{
  v1 = *(a1 + 40);
  v35 = *(v1 + 416);
  if (v35)
  {
    v2 = 0;
    v3 = 0;
    v37 = 0;
    v4 = 0;
    do
    {
      v5 = *(*(v1 + 408) + 4 * v2);
      v36 = v5 + v4;
      if (v4 < v5 + v4)
      {
        v6 = 8 * v4;
        do
        {
          v7 = *(*(v1 + 392) + v6);
          if (*(v7 + 44) > 1.0)
          {
            break;
          }

          if (*(v7 + 92) == 1)
          {
            v8 = *(v7 + 72);
            *(v8 + 16) |= 4u;
            v9 = *(v8 + 83);
            v10 = *(v1 + 440);
            v11 = *(v8 + 88);
            physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(v10 + 1704, v11 + 1);
            *(*(v10 + 1704) + ((v11 >> 3) & 0x1FFFFFFC)) |= 1 << v11;
            v12 = *(v7 + 72);
            v13 = *(v12 + 83);
            if ((v9 & 2) != 0)
            {
              *(v12 + 83) = v13 | 0x10;
              ++v37;
            }

            else
            {
              *(v12 + 83) = v13 & 0xFC | 2;
              (*(**(v1 + 456) + 72))(*(v1 + 456));
              (*(**(v1 + 456) + 56))(*(v1 + 456), *(v7 + 72), 1, 0);
              ++v3;
              v12 = *(v7 + 72);
            }

            v14 = *(v12 + 80);
            if ((v14 & 1) != 0 || (*(v12 + 80) & 0x100) != 0 && ((v14 & 0x20) != 0 && *(*(v12 + 32) + 92) != 2139095039 || (v14 & 0x40) != 0 && *(*(v12 + 40) + 92) != 2139095039))
            {
              v15 = *(v1 + 440);
              v16 = *(v12 + 88);
              physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(v15 + 1688, v16 + 1);
              *(*(v15 + 1688) + ((v16 >> 3) & 0x1FFFFFFC)) |= 1 << v16;
              v17 = *(v1 + 424);
              *(v17 + 576) = *(v7 + 52);
              *(v17 + 584) = *(v7 + 60);
              v18 = -*(v7 + 40);
              *(v17 + 560) = vneg_f32(*(v7 + 32));
              *(v17 + 568) = v18;
              v19 = *(v7 + 96);
              *(v17 + 612) = v19;
              *(v17 + 572) = 0;
              *(v17 + 620) = *(v7 + 112);
              v20 = *(v7 + 108);
              *(v17 + 616) = *(v7 + 104);
              *(v17 + 604) = v20;
              *(v17 + 588) = xmmword_1E31137C0;
              v46[0] = *(v7 + 100);
              v46[1] = *(v7 + 102);
              v44 = 0;
              v45 = 0;
              v42 = 0;
              v21 = *(v7 + 72);
              v22 = *(v21 + 64);
              if (physx::writeCompressedContact((v17 + 560), 1u, v17, &v41, &v44, &v43, &v42, &v45, 4, *(v17 + 7256), (*(v21 + 80) & 0x80) != 0, 1u, v46, &v40, 0x10u, 0, 0, 0, 0, 0, 0, v19 != -1))
              {
                v23 = v44;
                *(v44 + 8) = v42;
                *(v23 + 10) = 0;
                v24 = *(v7 + 72);
                *(v24 + 64) = v23;
                if (v22)
                {
                  *(v22 + 10) = 1;
                }

                *v23 = v22;
                *v45 = *(v7 + 120);
              }

              else if (v22)
              {
                *(v22 + 10) = 1;
                v24 = *(v7 + 72);
              }

              else
              {
                v24 = *(v7 + 72);
                *(v24 + 64) = 0;
              }

              if ((*(v24 + 80) & 0x18) == 0 && *(v7 + 120) != 0.0)
              {
                DWORD2(v38) = *(v7 + 120);
                DWORD2(v39) = 0;
                if (*v7)
                {
                  v25 = *(*(*v7 + 40) + 92);
                }

                else
                {
                  v25 = 3.4028e38;
                }

                v26 = *(v7 + 8);
                if (v26)
                {
                  v27 = *(*(v26 + 40) + 92);
                }

                else
                {
                  v27 = 3.4028e38;
                }

                if (v25 >= v27)
                {
                  v25 = v27;
                }

                *(&v38 + 3) = v25;
                v28 = *(*(v7 + 16) + 112);
                v29 = *(*(v7 + 24) + 112);
                *&v39 = __PAIR64__(v29, v28);
                if (v29 < v28)
                {
                  *&v39 = __PAIR64__(v28, v29);
                }

                v30 = *(v1 + 448);
                v31 = *(v30 + 16);
                if ((*(v30 + 20) & 0x7FFFFFFFu) <= v31)
                {
                  physx::shdfnd::Array<physx::Dy::ThresholdStreamElement,physx::shdfnd::VirtualAllocator>::growAndPushBack(v30, &v38);
                }

                else
                {
                  v32 = (*(v30 + 8) + 32 * v31);
                  v33 = v39;
                  *v32 = v38;
                  v32[1] = v33;
                  ++*(v30 + 16);
                }
              }
            }
          }

          v6 += 8;
          --v5;
        }

        while (v5);
      }

      ++v2;
      v4 = v36;
    }

    while (v2 != v35);
  }

  else
  {
    v37 = 0;
    v3 = 0;
  }

  v34 = *(v1 + 440);
  *(v34 + 1740) += v3;
  *(v34 + 1744) += v37;
}

uint64_t physx::Cm::DelegateTask<physx::PxsCCDContext,&physx::PxsCCDContext::postCCDDepenetrate>::~DelegateTask(void *a1)
{
  *a1 = &unk_1F5D1C1B0;
  v1 = *(physx::shdfnd::Foundation::mInstance + 24);
  a1[2] = 0;
  return (*(v1 + 24))();
}

uint64_t physx::Cm::DelegateTask<physx::PxsCCDContext,&physx::PxsCCDContext::postCCDDepenetrate>::runInternal(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 192);
  v3 = *(v2 + 16 * *(v1 + 208) + 8) + (*(v1 + 208) << 7);
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v5 = *(v2 + 16 * (i >> 7)) + ((i & 0x7F) << 6);
      *(v5 + 48) = 0;
      *(v5 + 60) = 0;
    }
  }

  *(v1 + 232) = 0;
  *(*(v1 + 216) + 8) = 0;
  physx::PxsCCDContext::updateCCDEnd(v1);
  v6 = *(v1 + 440);
  v7 = *(v1 + 424);
  v8 = *(v6 + 440);
  pthread_mutex_lock((v8 + 8));
  *v7 = *v8;
  *v8 = v7;

  return pthread_mutex_unlock((v8 + 8));
}

uint64_t physx::shdfnd::Array<physx::PxsCCDBlockArray<physx::PxsCCDBody,128>::BlockInfo,physx::shdfnd::ReflectionAllocator<physx::PxsCCDBlockArray<physx::PxsCCDBody,128>::BlockInfo>>::growAndPushBack(uint64_t result, _OWORD *a2)
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
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxsCCDBlockArray<physx::PxsCCDBody, 128>::BlockInfo>::getName() [T = physx::PxsCCDBlockArray<physx::PxsCCDBody, 128>::BlockInfo]";
    }

    else
    {
      v7 = "<allocation names disabled>";
    }

    result = (*(*(v6 + 24) + 16))(v6 + 24, 16 * v5, v7, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v8 = result;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v3 + 8);
  if (v9)
  {
    v10 = &v8[v9];
    v11 = *v3;
    v12 = v8;
    do
    {
      v13 = *v11++;
      *v12++ = v13;
    }

    while (v12 < v10);
    v14 = *(v3 + 8);
  }

  else
  {
    v14 = 0;
  }

  v8[v14] = *a2;
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *v3 = v8;
  ++*(v3 + 8);
  *(v3 + 12) = v5;
  return result;
}

uint64_t physx::shdfnd::Array<physx::PxsCCDBlockArray<physx::PxsCCDOverlap,128>::BlockInfo,physx::shdfnd::ReflectionAllocator<physx::PxsCCDBlockArray<physx::PxsCCDOverlap,128>::BlockInfo>>::growAndPushBack(uint64_t result, _OWORD *a2)
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
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxsCCDBlockArray<physx::PxsCCDOverlap, 128>::BlockInfo>::getName() [T = physx::PxsCCDBlockArray<physx::PxsCCDOverlap, 128>::BlockInfo]";
    }

    else
    {
      v7 = "<allocation names disabled>";
    }

    result = (*(*(v6 + 24) + 16))(v6 + 24, 16 * v5, v7, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v8 = result;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v3 + 8);
  if (v9)
  {
    v10 = &v8[v9];
    v11 = *v3;
    v12 = v8;
    do
    {
      v13 = *v11++;
      *v12++ = v13;
    }

    while (v12 < v10);
    v14 = *(v3 + 8);
  }

  else
  {
    v14 = 0;
  }

  v8[v14] = *a2;
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *v3 = v8;
  ++*(v3 + 8);
  *(v3 + 12) = v5;
  return result;
}

uint64_t physx::shdfnd::Array<physx::PxsCCDBlockArray<physx::PxsCCDShape,128>::BlockInfo,physx::shdfnd::ReflectionAllocator<physx::PxsCCDBlockArray<physx::PxsCCDShape,128>::BlockInfo>>::growAndPushBack(uint64_t result, _OWORD *a2)
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
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxsCCDBlockArray<physx::PxsCCDShape, 128>::BlockInfo>::getName() [T = physx::PxsCCDBlockArray<physx::PxsCCDShape, 128>::BlockInfo]";
    }

    else
    {
      v7 = "<allocation names disabled>";
    }

    result = (*(*(v6 + 24) + 16))(v6 + 24, 16 * v5, v7, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v8 = result;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v3 + 8);
  if (v9)
  {
    v10 = &v8[v9];
    v11 = *v3;
    v12 = v8;
    do
    {
      v13 = *v11++;
      *v12++ = v13;
    }

    while (v12 < v10);
    v14 = *(v3 + 8);
  }

  else
  {
    v14 = 0;
  }

  v8[v14] = *a2;
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *v3 = v8;
  ++*(v3 + 8);
  *(v3 + 12) = v5;
  return result;
}

void *physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<physx::shdfnd::Pair<physx::PxsRigidCore const*,physx::PxsShapeCore const*> const,physx::PxsCCDShape *>,physx::shdfnd::Pair<physx::PxsRigidCore const*,physx::PxsShapeCore const*>,physx::shdfnd::Hash<physx::shdfnd::Pair<physx::PxsRigidCore const*,physx::PxsShapeCore const*>>,physx::shdfnd::internal::HashMapBase<physx::shdfnd::Pair<physx::PxsRigidCore const*,physx::PxsShapeCore const*>,physx::PxsCCDShape *,physx::shdfnd::Hash<physx::shdfnd::Pair<physx::PxsRigidCore const*,physx::PxsShapeCore const*>>,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(uint64_t a1, unsigned int a2)
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
  v9 = v8 + 24 * v7;
  if (v9)
  {
    v10 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v9, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsHashInternals.h", 372);
  }

  else
  {
    v10 = 0;
  }

  v11 = &v10[4 * v2];
  result = memset(v10, 255, 4 * v2);
  if (*(a1 + 52))
  {
    v13 = 0;
    v14 = &v10[v8 + 8];
    v15 = (*(a1 + 8) + 8);
    do
    {
      v16 = *(v15 - 1);
      v17 = (~(v16 << 32) + v16) ^ ((~(v16 << 32) + v16) >> 22);
      v18 = 9 * ((v17 + ~(v17 << 13)) ^ ((v17 + ~(v17 << 13)) >> 8));
      *(v14 - 1) = v16;
      v19 = *v15;
      v15 = (v15 + 24);
      v20 = (v18 ^ (v18 >> 15)) + ~((v18 ^ (v18 >> 15)) << 27);
      v21 = (~(v19 << 32) + v19) ^ ((~(v19 << 32) + v19) >> 22);
      v22 = 9 * ((v21 + ~(v21 << 13)) ^ ((v21 + ~(v21 << 13)) >> 8));
      v23 = (v22 ^ (v22 >> 15)) + ~((v22 ^ (v22 >> 15)) << 27);
      LODWORD(v23) = ((1000007 * ((v20 >> 31) ^ v20 ^ 0xFC955B95)) ^ (v23 >> 31) ^ v23) & (v2 - 1);
      *&v11[4 * v13] = *&v10[4 * v23];
      *&v10[4 * v23] = v13;
      *v14 = v19;
      v14 += 24;
      ++v13;
    }

    while (v13 < *(a1 + 52));
  }

  if (*a1)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(a1 + 16) = v11;
  *(a1 + 24) = v10;
  *a1 = v10;
  *(a1 + 8) = &v10[v8];
  *(a1 + 32) = v7;
  *(a1 + 36) = v2;
  if (*(a1 + 44) == -1)
  {
    *(a1 + 44) = v6;
  }

  return result;
}

uint64_t physx::shdfnd::Array<physx::PxsCCDBlockArray<physx::PxsCCDPair,128>::BlockInfo,physx::shdfnd::ReflectionAllocator<physx::PxsCCDBlockArray<physx::PxsCCDPair,128>::BlockInfo>>::growAndPushBack(uint64_t result, _OWORD *a2)
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
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxsCCDBlockArray<physx::PxsCCDPair, 128>::BlockInfo>::getName() [T = physx::PxsCCDBlockArray<physx::PxsCCDPair, 128>::BlockInfo]";
    }

    else
    {
      v7 = "<allocation names disabled>";
    }

    result = (*(*(v6 + 24) + 16))(v6 + 24, 16 * v5, v7, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v8 = result;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v3 + 8);
  if (v9)
  {
    v10 = &v8[v9];
    v11 = *v3;
    v12 = v8;
    do
    {
      v13 = *v11++;
      *v12++ = v13;
    }

    while (v12 < v10);
    v14 = *(v3 + 8);
  }

  else
  {
    v14 = 0;
  }

  v8[v14] = *a2;
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *v3 = v8;
  ++*(v3 + 8);
  *(v3 + 12) = v5;
  return result;
}

uint64_t physx::shdfnd::Array<physx::PxsRigidBody *,physx::shdfnd::ReflectionAllocator<physx::PxsRigidBody *>>::growAndPushBack(uint64_t result, void *a2)
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
    result = physx::shdfnd::ReflectionAllocator<physx::PxsRigidBody *>::allocate(result, 8 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
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

uint64_t physx::shdfnd::ReflectionAllocator<physx::PxsRigidBody *>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxsRigidBody *>::getName() [T = physx::PxsRigidBody *]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

uint64_t physx::shdfnd::Array<physx::PxsCCDPair *,physx::shdfnd::ReflectionAllocator<physx::PxsCCDPair *>>::recreate(uint64_t a1, unsigned int a2)
{
  result = physx::shdfnd::ReflectionAllocator<physx::PxsCCDPair *>::allocate(8 * a2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  v5 = result;
  v6 = *(a1 + 8);
  v7 = *a1;
  if (v6)
  {
    v8 = result + 8 * v6;
    v9 = result;
    do
    {
      v10 = *v7++;
      *v9++ = v10;
    }

    while (v9 < v8);
    v7 = *a1;
  }

  if ((*(a1 + 12) & 0x80000000) == 0 && v7)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *a1 = v5;
  *(a1 + 12) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::PxsCCDPair *,physx::shdfnd::ReflectionAllocator<physx::PxsCCDPair *>>::growAndPushBack(uint64_t result, void *a2)
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
    result = physx::shdfnd::ReflectionAllocator<physx::PxsCCDPair *>::allocate(8 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
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

uint64_t physx::shdfnd::Array<physx::Dy::ThresholdStreamElement,physx::shdfnd::VirtualAllocator>::recreate(uint64_t result, int a2)
{
  v3 = result;
  if (a2)
  {
    result = (*(**result + 16))();
    v4 = result;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v3 + 16);
  v6 = *(v3 + 8);
  if (v5)
  {
    v7 = &v4[2 * v5];
    v8 = v4;
    do
    {
      v9 = *v6;
      v10 = v6[1];
      v6 += 2;
      *v8 = v9;
      v8[1] = v10;
      v8 += 2;
    }

    while (v8 < v7);
    v6 = *(v3 + 8);
  }

  if ((*(v3 + 20) & 0x80000000) == 0 && v6)
  {
    result = (*(**v3 + 24))();
  }

  *(v3 + 8) = v4;
  *(v3 + 20) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::recreate(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2)
  {
    result = physx::shdfnd::ReflectionAllocator<unsigned int>::allocate(result, 4 * a2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
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
    v8 = *v3;
    v9 = v4;
    do
    {
      v10 = *v8++;
      *v9++ = v10;
    }

    while (v9 < v7);
  }

  if ((*(v3 + 12) & 0x80000000) == 0 && v6)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *v3 = v4;
  *(v3 + 12) = a2;
  return result;
}

uint64_t physx::shdfnd::ReflectionAllocator<unsigned int>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<unsigned int>::getName() [T = unsigned int]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

uint64_t physx::shdfnd::Array<physx::PxsCCDBody const*,physx::shdfnd::ReflectionAllocator<physx::PxsCCDBody const*>>::recreate(uint64_t a1, unsigned int a2)
{
  v4 = 8 * a2;
  v5 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v6 = "static const char *physx::shdfnd::ReflectionAllocator<const physx::PxsCCDBody *>::getName() [T = const physx::PxsCCDBody *]";
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

uint64_t physx::shdfnd::Array<unsigned short,physx::shdfnd::ReflectionAllocator<unsigned short>>::recreate(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2)
  {
    result = physx::shdfnd::ReflectionAllocator<unsigned short>::allocate(result, 2 * a2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
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
    v8 = *v3;
    v9 = v4;
    do
    {
      v10 = *v8++;
      *v9++ = v10;
    }

    while (v9 < v7);
  }

  if ((*(v3 + 12) & 0x80000000) == 0 && v6)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *v3 = v4;
  *(v3 + 12) = a2;
  return result;
}

uint64_t physx::shdfnd::ReflectionAllocator<unsigned short>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<unsigned short>::getName() [T = unsigned short]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

uint64_t physx::shdfnd::Array<physx::PxsCCDBody *,physx::shdfnd::ReflectionAllocator<physx::PxsCCDBody *>>::recreate(uint64_t a1, unsigned int a2)
{
  v4 = 8 * a2;
  v5 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v6 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxsCCDBody *>::getName() [T = physx::PxsCCDBody *]";
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

uint64_t physx::shdfnd::Array<physx::Dy::ThresholdStreamElement,physx::shdfnd::VirtualAllocator>::growAndPushBack(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 20);
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
    v6 = (*(**a1 + 16))();
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = v6 + 32 * v7;
    v9 = *(a1 + 8);
    v10 = v6;
    do
    {
      v11 = *v9;
      v12 = v9[1];
      v9 += 2;
      *v10 = v11;
      v10[1] = v12;
      v10 += 2;
    }

    while (v10 < v8);
    v13 = *(a1 + 16);
  }

  else
  {
    v13 = 0;
  }

  v14 = (v6 + 32 * v13);
  v15 = a2[1];
  *v14 = *a2;
  v14[1] = v15;
  if ((*(a1 + 20) & 0x80000000) == 0 && *(a1 + 8))
  {
    (*(**a1 + 24))();
  }

  *(a1 + 8) = v6;
  v16 = *(a1 + 16);
  *(a1 + 16) = v16 + 1;
  *(a1 + 20) = v5;
  return v6 + 32 * v16;
}

uint64_t physx::shdfnd::SListT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::SListImpl>>::~SListT(uint64_t a1)
{
  pthread_mutex_destroy((*a1 + 8));
  if (*a1)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  return a1;
}

BOOL physx::Cm::PoolList<physx::PxsContactManager,physx::PxsContext>::extend(unsigned int *a1)
{
  v2 = physx::shdfnd::ReflectionAllocator<physx::PxsContactManager>::allocate(a1, 120 * *a1, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/CmPool.h", 237);
  if (v2)
  {
    v4 = *a1;
    v3 = a1[1];
    v5 = v3 + 1;
    if (*a1 * (v3 + 1) <= 32 * a1[14])
    {
      v7 = *(a1 + 4);
    }

    else
    {
      physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend((a1 + 12), 2 * v5 * v4);
      if (*(a1 + 2))
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      }

      *(a1 + 2) = physx::shdfnd::ReflectionAllocator<physx::PxsContactManager>::allocate(a1, 8 * *a1 * 2 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/CmPool.h", 249);
      v6 = physx::shdfnd::ReflectionAllocator<physx::PxsContactManager>::allocate(a1, 16 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/CmPool.h", 251);
      v7 = v6;
      v8 = *(a1 + 4);
      if (v8)
      {
        memcpy(v6, v8, 8 * v5);
        if (*(a1 + 4))
        {
          (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
        }
      }

      *(a1 + 4) = v7;
      v4 = *a1;
      v3 = a1[1];
      v5 = v3 + 1;
    }

    a1[1] = v5;
    v7[v3] = v2;
    v9 = a1[6];
    if (v4 - 1 < 0)
    {
      v15 = a1[6];
    }

    else
    {
      v10 = 120 * (v4 - 1);
      v11 = v4 + v4 * v3 - 1;
      v12 = -120;
      v13 = v2;
      do
      {
        v14 = v13 + v10;
        *(v14 + 16) = 0;
        *(v14 + 32) = 0;
        *(v14 + 40) = 0;
        *(v14 + 84) = 257;
        *(v14 + 72) = 0;
        v15 = v9 + 1;
        *(*(a1 + 2) + 8 * v9) = v13 + v10;
        v12 += 120;
        *(v14 + 88) = v11;
        *(v14 + 92) = 0;
        *(v14 + 82) = 0;
        --v11;
        v13 -= 120;
        ++v9;
      }

      while (v10 != v12);
    }

    a1[6] = v15;
  }

  return v2 != 0;
}

uint64_t physx::shdfnd::ReflectionAllocator<physx::PxsContactManager>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxsContactManager>::getName() [T = physx::PxsContactManager]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

uint64_t physx::shdfnd::PoolBase<physx::Gu::SpherePersistentContactManifold,physx::shdfnd::ReflectionAllocator<physx::Gu::SpherePersistentContactManifold>>::allocateSlab(uint64_t a1)
{
  result = physx::shdfnd::ReflectionAllocator<physx::Gu::SpherePersistentContactManifold>::allocate(a1, *(a1 + 552), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsPool.h", 180);
  v3 = result;
  v8 = result;
  v4 = *(a1 + 536);
  if ((*(a1 + 540) & 0x7FFFFFFFu) <= v4)
  {
    result = physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::Gu::SpherePersistentContactManifold>>>::growAndPushBack(a1 + 8, &v8);
  }

  else
  {
    *(*(a1 + 528) + 8 * v4) = result;
    *(a1 + 536) = v4 + 1;
  }

  v5 = v3 + 144 * *(a1 + 544) - 144;
  if (v5 >= v3)
  {
    v6 = *(a1 + 560);
    v7 = (v3 + 144 * *(a1 + 544) - 144);
    do
    {
      *v7 = v6;
      v7 -= 18;
      v6 = v5;
      v5 = v7;
    }

    while (v7 >= v3);
    *(a1 + 560) = v7 + 18;
  }

  return result;
}

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::Gu::SpherePersistentContactManifold>>>::growAndPushBack(uint64_t a1, void *a2)
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
      v7 = physx::shdfnd::ReflectionAllocator<physx::Gu::SpherePersistentContactManifold>::allocate(a1, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
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

uint64_t physx::shdfnd::PoolBase<physx::Gu::LargePersistentContactManifold,physx::shdfnd::ReflectionAllocator<physx::Gu::LargePersistentContactManifold>>::allocateSlab(uint64_t a1)
{
  result = physx::shdfnd::ReflectionAllocator<physx::Gu::LargePersistentContactManifold>::allocate(a1, *(a1 + 552), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsPool.h", 180);
  v3 = result;
  v8 = result;
  v4 = *(a1 + 536);
  if ((*(a1 + 540) & 0x7FFFFFFFu) <= v4)
  {
    result = physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::Gu::LargePersistentContactManifold>>>::growAndPushBack(a1 + 8, &v8);
  }

  else
  {
    *(*(a1 + 528) + 8 * v4) = result;
    *(a1 + 536) = v4 + 1;
  }

  v5 = (v3 + 288 * *(a1 + 544) - 288);
  if (v5 >= v3)
  {
    v6 = *(a1 + 560);
    do
    {
      *v5 = v6;
      v7 = v5 - 36;
      v6 = v5;
      v5 = v7;
    }

    while (v7 >= v3);
    *(a1 + 560) = v7 + 36;
  }

  return result;
}

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::Gu::LargePersistentContactManifold>>>::growAndPushBack(uint64_t a1, void *a2)
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
      v7 = physx::shdfnd::ReflectionAllocator<physx::Gu::LargePersistentContactManifold>::allocate(a1, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
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

void physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::combine1<physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::OR>(uint64_t a1, int *a2, unsigned int a3)
{
  physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(a1, 32 * a3);
  LODWORD(v6) = *(a1 + 8) & 0x7FFFFFFF;
  if (v6 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = v6;
  }

  if (v6)
  {
    v7 = *a1;
    do
    {
      v8 = *a2++;
      *v7++ |= v8;
      --v6;
    }

    while (v6);
  }
}

uint64_t physx::shdfnd::Array<physx::shdfnd::VirtualAllocatorCallback *,physx::shdfnd::ReflectionAllocator<physx::shdfnd::VirtualAllocatorCallback *>>::growAndPushBack(uint64_t result, void *a2)
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
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::shdfnd::VirtualAllocatorCallback *>::getName() [T = physx::shdfnd::VirtualAllocatorCallback *]";
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

double physx::IG::IslandSim::IslandSim(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  result = 0.0;
  *(a1 + 336) = 0;
  *(a1 + 232) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = 2048;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  *(a1 + 112) = 2048;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 424) = 0;
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 480) = 0;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 528) = 0;
  *(a1 + 520) = 0;
  *(a1 + 600) = a2;
  *(a1 + 608) = a3;
  *(a1 + 616) = a4;
  *(a1 + 632) = a5;
  *(a1 + 240) = 0u;
  *(a1 + 624) = 0;
  *(a1 + 284) = 0u;
  *(a1 + 404) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  return result;
}

_DWORD *physx::Cm::BlockArray<physx::IG::Edge>::reserve(_DWORD *result, unsigned int a2)
{
  v4 = result[5];
  if (v4 < a2)
  {
    v13[7] = v2;
    v13[8] = v3;
    v5 = result;
    v6 = result[6];
    v7 = (a2 + v6 - 1) / v6;
    v8 = result[2];
    v9 = v7 - v8;
    result[5] = v4 + (v7 - v8) * v6;
    if (v7 != v8)
    {
      v10 = 0;
      do
      {
        v11 = *(v5 + 24);
        if (v11)
        {
          result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 16 * v11, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/CmBlockArray.h", 84);
        }

        else
        {
          result = 0;
        }

        v13[0] = result;
        v12 = *(v5 + 8);
        if ((*(v5 + 12) & 0x7FFFFFFFu) <= v12)
        {
          result = physx::shdfnd::Array<physx::IG::Edge *,physx::shdfnd::ReflectionAllocator<physx::IG::Edge *>>::growAndPushBack(v5, v13);
        }

        else
        {
          *(*v5 + 8 * v12) = result;
          *(v5 + 8) = v12 + 1;
        }

        ++v10;
      }

      while (v10 < v9);
    }
  }

  return result;
}

_DWORD *physx::Cm::BlockArray<physx::IG::EdgeInstance>::reserve(_DWORD *result, unsigned int a2)
{
  v4 = result[5];
  if (v4 < a2)
  {
    v13[7] = v2;
    v13[8] = v3;
    v5 = result;
    v6 = result[6];
    v7 = (a2 + v6 - 1) / v6;
    v8 = result[2];
    v9 = v7 - v8;
    result[5] = v4 + (v7 - v8) * v6;
    if (v7 != v8)
    {
      v10 = 0;
      do
      {
        v11 = *(v5 + 24);
        if (v11)
        {
          result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 8 * v11, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/CmBlockArray.h", 84);
        }

        else
        {
          result = 0;
        }

        v13[0] = result;
        v12 = *(v5 + 8);
        if ((*(v5 + 12) & 0x7FFFFFFFu) <= v12)
        {
          result = physx::shdfnd::Array<physx::IG::EdgeInstance *,physx::shdfnd::ReflectionAllocator<physx::IG::EdgeInstance *>>::growAndPushBack(v5, v13);
        }

        else
        {
          *(*v5 + 8 * v12) = result;
          *(v5 + 8) = v12 + 1;
        }

        ++v10;
      }

      while (v10 < v9);
    }
  }

  return result;
}

void physx::IG::IslandSim::addNode(uint64_t a1, int a2, int a3, int a4, unsigned int a5)
{
  v10 = a5 >> 7;
  if (a5 >> 7 == (*(a1 + 36) & 0x7FFFFFFF))
  {
    if (2 * v10 <= 0x100)
    {
      v11 = 256;
    }

    else
    {
      v11 = 2 * v10;
    }

    physx::shdfnd::Array<physx::IG::Node,physx::shdfnd::ReflectionAllocator<physx::IG::Node>>::recreate(a1 + 24, v11);
    if ((*(a1 + 284) & 0x7FFFFFFFu) < v11)
    {
      physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::recreate(a1 + 272, v11);
    }

    if ((*(a1 + 268) & 0x7FFFFFFFu) < v11)
    {
      physx::shdfnd::Array<physx::IG::NodeIndex,physx::shdfnd::ReflectionAllocator<physx::IG::NodeIndex>>::recreate(a1 + 256, v11);
    }

    if ((*(a1 + 252) & 0x7FFFFFFFu) < v11)
    {
      physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::recreate(a1 + 240, v11);
    }

    if ((*(a1 + 52) & 0x7FFFFFFFu) < v11)
    {
      physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::recreate(a1 + 40, v11);
    }
  }

  if (v10 + 1 > *(a1 + 32))
  {
    v12 = v10 + 1;
  }

  else
  {
    v12 = *(a1 + 32);
  }

  *&v26 = 0x8FFFFFFFFLL;
  *(&v26 + 1) = 0x7F0000007FLL;
  LODWORD(v27) = 0;
  v28 = 0;
  physx::shdfnd::Array<physx::IG::Node,physx::shdfnd::ReflectionAllocator<physx::IG::Node>>::resize(a1 + 24, v12, &v26);
  LODWORD(v26) = 0;
  physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::resize(a1 + 272, v12, &v26);
  LODWORD(v26) = -128;
  physx::shdfnd::Array<physx::IG::NodeIndex,physx::shdfnd::ReflectionAllocator<physx::IG::NodeIndex>>::resize(a1 + 256, v12, &v26);
  LODWORD(v26) = 0;
  physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::resize(a1 + 240, v12, &v26);
  LODWORD(v26) = 0;
  physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::resize(a1 + 40, v12, &v26);
  v13 = v10;
  *(*(a1 + 40) + 4 * v10) = 0x1FFFFFF;
  v14 = *(a1 + 24) + 32 * v10;
  *(v14 + 5) = a4;
  v15 = a2 ^ 1;
  if (a3)
  {
    v15 = a2 ^ 1 | 4;
  }

  *(v14 + 4) = v15;
  *(*(a1 + 272) + 4 * v10) = -1;
  *(*(a1 + 256) + 4 * v10) = -128;
  *(*(a1 + 240) + 4 * v10) = 0;
  if ((a3 & 1) == 0)
  {
    v16 = *(a1 + 8);
    if (v16)
    {
      v17 = v16 - 1;
      v18 = *(*a1 + 4 * v17);
      *(a1 + 8) = v17;
    }

    else
    {
      v18 = *(a1 + 16);
      *(a1 + 16) = v18 + 1;
    }

    if (v18 == (*(a1 + 132) & 0x7FFFFFFF))
    {
      v19 = 2 * v18 <= 0x100 ? 256 : 2 * v18;
      physx::shdfnd::Array<physx::IG::Island,physx::shdfnd::ReflectionAllocator<physx::IG::Island>>::recreate(a1 + 120, v19);
      physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(a1 + 288, v19);
      if ((*(a1 + 148) & 0x7FFFFFFFu) < v19)
      {
        physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::recreate(a1 + 136, v19);
      }
    }

    v20 = v18 + 1;
    v21 = *(a1 + 128);
    *&v26 = 0x7F0000007FLL;
    if (v18 + 1 > v21)
    {
      v22 = v18 + 1;
    }

    else
    {
      v22 = v21;
    }

    v27 = -1;
    v28 = -1;
    v29 = -1;
    v30 = 0;
    *(&v26 + 1) = 0;
    physx::shdfnd::Array<physx::IG::Island,physx::shdfnd::ReflectionAllocator<physx::IG::Island>>::resize(a1 + 120, v22, &v26);
    if (v20 > *(a1 + 128))
    {
      v23 = v18 + 1;
    }

    else
    {
      v23 = *(a1 + 128);
    }

    LODWORD(v26) = 0;
    physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::resize(a1 + 136, v23, &v26);
    if (v20 > *(a1 + 128))
    {
      v24 = v18 + 1;
    }

    else
    {
      v24 = *(a1 + 128);
    }

    physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(a1 + 288, v24 + 1);
    *(*(a1 + 288) + 4 * (v24 >> 5)) &= ~(1 << v24);
    v25 = (*(a1 + 120) + 44 * v18);
    *v25 = a5;
    v25[1] = a5;
    v25[a4 + 2] = 1;
    *(*(a1 + 272) + 4 * v13) = v18;
    *(*(a1 + 136) + 4 * v18) = 0;
  }

  if (a2)
  {
    physx::IG::IslandSim::activateNode(a1, a5);
  }
}

uint64_t physx::shdfnd::Array<physx::IG::Node,physx::shdfnd::ReflectionAllocator<physx::IG::Node>>::resize(uint64_t result, unsigned int a2, _OWORD *a3)
{
  v5 = result;
  if ((*(result + 12) & 0x7FFFFFFFu) < a2)
  {
    result = physx::shdfnd::Array<physx::IG::Node,physx::shdfnd::ReflectionAllocator<physx::IG::Node>>::recreate(result, a2);
  }

  v6 = *(v5 + 8);
  if (v6 < a2)
  {
    v7 = *v5 + 32 * a2;
    v8 = (*v5 + 32 * v6);
    do
    {
      v9 = a3[1];
      *v8 = *a3;
      v8[1] = v9;
      v8 += 2;
    }

    while (v8 < v7);
  }

  *(v5 + 8) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::IG::NodeIndex,physx::shdfnd::ReflectionAllocator<physx::IG::NodeIndex>>::resize(uint64_t result, unsigned int a2, int *a3)
{
  v5 = result;
  if ((*(result + 12) & 0x7FFFFFFFu) < a2)
  {
    result = physx::shdfnd::Array<physx::IG::NodeIndex,physx::shdfnd::ReflectionAllocator<physx::IG::NodeIndex>>::recreate(result, a2);
  }

  v6 = *(v5 + 8);
  if (v6 < a2)
  {
    v7 = 0;
    v8 = *v5 + 4 * v6;
    v9 = *v5 + 4 * a2;
    if (v8 + 4 > v9)
    {
      v9 = v8 + 4;
    }

    v10 = *a3;
    v11 = (v9 + ~*v5 - 4 * v6) >> 2;
    v12 = vdupq_n_s64(v11);
    v13 = (v11 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v14 = (v8 + 8);
    do
    {
      v15 = vdupq_n_s64(v7);
      v16 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_1E3049620)));
      if (vuzp1_s16(v16, *v12.i8).u8[0])
      {
        *(v14 - 2) = v10;
      }

      if (vuzp1_s16(v16, *&v12).i8[2])
      {
        *(v14 - 1) = v10;
      }

      if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_1E3049640)))).i32[1])
      {
        *v14 = v10;
        v14[1] = v10;
      }

      v7 += 4;
      v14 += 4;
    }

    while (v13 != v7);
  }

  *(v5 + 8) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::IG::Island,physx::shdfnd::ReflectionAllocator<physx::IG::Island>>::resize(uint64_t result, uint64_t a2, __int128 *a3)
{
  v4 = a2;
  v5 = result;
  if ((*(result + 12) & 0x7FFFFFFFu) < a2)
  {
    result = physx::shdfnd::Array<physx::IG::Island,physx::shdfnd::ReflectionAllocator<physx::IG::Island>>::recreate(result, a2);
  }

  v6 = *(v5 + 8);
  if (v6 < v4)
  {
    v7 = *v5 + 44 * v4;
    v8 = (*v5 + 44 * v6);
    do
    {
      v9 = *a3;
      v10 = a3[1];
      *(v8 + 28) = *(a3 + 28);
      *v8 = v9;
      v8[1] = v10;
      v8 = (v8 + 44);
    }

    while (v8 < v7);
  }

  *(v5 + 8) = v4;
  return result;
}

uint64_t physx::IG::IslandSim::activateNode(uint64_t result, unsigned int a2)
{
  v12 = a2;
  v2 = a2 >> 7;
  if (a2 >> 7 != 0x1FFFFFF)
  {
    v3 = v2;
    v4 = *(result + 24) + 32 * v2;
    v5 = *(v4 + 4);
    if ((v5 & 0x22222222) == 0)
    {
      v6 = *(result + 40);
      if ((v5 & 4) != 0 && *(v6 + 4 * v3) != 0x1FFFFFF)
      {
        v7 = *(v4 + 16);
        *(v4 + 16) = 0;
        v8 = *(v6 + 4 * v3);
        if (v8 != 0x1FFFFFF)
        {
          v9 = *(result + 184);
          v10 = *(v9 + 4 * (*(result + 192) - 1));
          *(v6 + ((v10 >> 5) & 0x7FFFFFC)) = v8;
          *(v9 + 4 * *(v6 + 4 * v3)) = v10;
          --*(result + 192);
          *(v6 + 4 * v3) = 0x1FFFFFF;
        }

        *(v4 + 16) = v7;
      }

      LOBYTE(v5) = v5 | 0x20;
      *(v4 + 4) = v5;
      v11 = *(result + 440);
      *(v6 + 4 * v3) = v11;
      if ((*(result + 444) & 0x7FFFFFFFu) <= v11)
      {
        result = physx::shdfnd::Array<physx::IG::NodeIndex,physx::shdfnd::ReflectionAllocator<physx::IG::NodeIndex>>::growAndPushBack(result + 432, &v12);
        LOBYTE(v5) = *(v4 + 4);
      }

      else
      {
        *(*(result + 432) + 4 * v11) = a2;
        ++*(result + 440);
      }
    }

    *(v4 + 4) = v5 & 0xBE;
  }

  return result;
}

uint64_t physx::IG::IslandSim::addConnection(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  v20 = a5;
  if (*(a1 + 76) <= a5)
  {
    physx::Cm::BlockArray<physx::IG::Edge>::reserve((a1 + 56), a5 + 2048);
    physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(a1 + 304, *(a1 + 76));
  }

  if (*(a1 + 72) <= a5 + 1)
  {
    v8 = a5 + 1;
  }

  else
  {
    v8 = *(a1 + 72);
  }

  result = physx::Cm::BlockArray<physx::IG::Edge>::reserve((a1 + 56), v8);
  v10 = *(a1 + 72);
  v11 = *(a1 + 56);
  if (v10 < v8)
  {
    do
    {
      v12 = *(v11 + 8 * (v10 / *(a1 + 80))) + 16 * (v10 % *(a1 + 80));
      *v12 = 0;
      *(v12 + 4) = 16;
      *(v12 + 8) = -1;
      ++v10;
    }

    while (v8 != v10);
  }

  *(a1 + 72) = v8;
  *(*(a1 + 304) + 4 * (a5 >> 5)) &= ~(1 << a5);
  v13 = *(v11 + 8 * (a5 / *(a1 + 80))) + 16 * (a5 % *(a1 + 80));
  v14 = *(v13 + 4);
  if ((v14 & 2) != 0)
  {
    v19 = v14 & 0xFFFD;
  }

  else
  {
    if ((v14 & 8) != 0)
    {
      return result;
    }

    v15 = v14 & 0xFFE5;
    *(v13 + 4) = v15;
    *v13 = a4;
    v16 = a1 + 16 * a4;
    result = v16 + 376;
    v17 = *(v16 + 388) & 0x7FFFFFFF;
    v18 = *(v16 + 384);
    if (v17 <= v18)
    {
      result = physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(result, &v20);
      v15 = *(v13 + 4);
    }

    else
    {
      *(*result + 4 * v18) = a5;
      ++*(result + 8);
    }

    v19 = v15 & 0xFFB7 | 8;
  }

  *(v13 + 4) = v19;
  return result;
}

void physx::IG::IslandSim::removeConnectionFromGraph(physx::IG::IslandSim *this, int a2)
{
  v3 = *(this + 76);
  v4 = *(v3 + 6);
  v5 = *v3;
  v6 = *(v5 + 8 * (2 * a2 / v4));
  v7 = *(v6 + 4 * (2 * a2 % v4));
  v8 = *(*(v5 + 8 * (((2 * a2) | 1u) / v4)) + 4 * (((2 * a2) | 1u) % v4));
  v9 = v7 >> 7;
  if (*(v6 + 4 * (2 * a2 % v4)) >> 7 != 0x1FFFFFF)
  {
    v10 = *(this + 3);
    v11 = *(this + 32);
    if ((*(v11 + 4 * v9) ^ v8) <= 0x7F)
    {
      *(v11 + 4 * v9) = -128;
    }

    v12 = v10 + 32 * v9;
    v14 = *(v12 + 4);
    v13 = (v12 + 4);
    if ((v14 & 0x10) == 0)
    {
      physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(this + 408, v9 + 1);
      *(*(this + 51) + ((v7 >> 10) & 0x3FFFFC)) |= 1 << (v7 >> 7);
      *v13 |= 0x10u;
    }
  }

  v15 = v8 >> 7;
  if ((v8 >> 7) != 0x1FFFFFF)
  {
    v16 = *(this + 3);
    v17 = *(this + 32);
    if (v9 == *(v17 + 4 * v15) >> 7)
    {
      *(v17 + 4 * v15) = -128;
    }

    v18 = v16 + 32 * v15;
    v20 = *(v18 + 4);
    v19 = (v18 + 4);
    if ((v20 & 0x10) == 0)
    {
      physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(this + 408, v15 + 1);
      *(*(this + 51) + ((v8 >> 10) & 0x3FFFFC)) |= 1 << (v8 >> 7);
      *v19 |= 0x10u;
    }
  }
}

double physx::IG::IslandSim::disconnectEdge(uint64_t a1, unsigned int *a2, int a3, unsigned int *a4)
{
  v4 = *a2;
  if (*a4 == a3)
  {
    *a4 = *a2;
  }

  else
  {
    *(*(*(a1 + 88) + 8 * (a2[1] / *(a1 + 112))) + 8 * (a2[1] % *(a1 + 112))) = *a2;
  }

  if (v4 != -1)
  {
    *(*(*(a1 + 88) + 8 * (v4 / *(a1 + 112))) + 8 * (v4 % *(a1 + 112)) + 4) = a2[1];
  }

  result = NAN;
  *a2 = -1;
  return result;
}

uint64_t physx::IG::IslandSim::removeConnection(uint64_t this, unsigned int a2)
{
  v7 = a2;
  v2 = *(*(this + 56) + 8 * (a2 / *(this + 80))) + 16 * (a2 % *(this + 80));
  v5 = *(v2 + 4);
  v4 = (v2 + 4);
  v3 = v5;
  if ((v5 & 2) == 0)
  {
    v6 = *(this + 456);
    if ((*(this + 460) & 0x7FFFFFFFu) <= v6)
    {
      this = physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(this + 448, &v7);
      v3 = *v4;
    }

    else
    {
      *(*(this + 448) + 4 * v6) = a2;
      ++*(this + 456);
    }
  }

  *v4 = v3 | 2;
  return this;
}

double physx::IG::IslandSim::removeConnectionInternal(physx::IG::IslandSim *this, int a2)
{
  v3 = 2 * a2;
  v4 = *(this + 76);
  v5 = *(v4 + 6);
  v6 = *v4;
  v7 = *(v6 + 8 * (2 * a2 / v5));
  v8 = *(v7 + 4 * (2 * a2 % v5)) >> 7;
  if (*(v7 + 4 * (2 * a2 % v5)) >> 7 != 0x1FFFFFF)
  {
    result = physx::IG::IslandSim::disconnectEdge(this, (*(*(this + 11) + 8 * (v3 / *(this + 28))) + 8 * (v3 % *(this + 28))), v3, (*(this + 3) + 32 * v8));
    v10 = *(this + 76);
    v5 = *(v10 + 6);
    v6 = *v10;
  }

  v11 = v3 | 1;
  v12 = *(*(v6 + 8 * (v11 / v5)) + 4 * (v11 % v5)) >> 7;
  if (v12 != 0x1FFFFFF && v8 != v12)
  {
    v14 = (*(this + 3) + 32 * v12);
    v15 = (*(*(this + 11) + 8 * (v11 / *(this + 28))) + 8 * (v11 % *(this + 28)));

    return physx::IG::IslandSim::disconnectEdge(this, v15, v11, v14);
  }

  return result;
}

uint64_t physx::IG::IslandSim::deactivateNode(uint64_t result, unsigned int a2)
{
  v14 = a2;
  v2 = a2 >> 7;
  if (a2 >> 7 != 0x1FFFFFF)
  {
    v3 = v2;
    v4 = *(result + 24) + 32 * v2;
    v7 = *(v4 + 4);
    v6 = (v4 + 4);
    v5 = v7;
    if ((v7 & 0x20) != 0)
    {
      v8 = v5 & 0xDF;
      *v6 = v5 & 0xDF;
      v9 = *(result + 432);
      v10 = *(v9 + 4 * (*(result + 440) - 1));
      v11 = *(result + 40);
      v12 = *(v11 + 4 * v3);
      *(v11 + ((v10 >> 5) & 0x7FFFFFC)) = v12;
      *(v9 + 4 * v12) = v10;
      --*(result + 440);
      *(v11 + 4 * v3) = 0x1FFFFFF;
      if ((v5 & 4) != 0)
      {
        v13 = *(result + 192);
        *(v11 + 4 * v3) = v13;
        if ((*(result + 196) & 0x7FFFFFFFu) <= v13)
        {
          result = physx::shdfnd::Array<physx::IG::NodeIndex,physx::shdfnd::ReflectionAllocator<physx::IG::NodeIndex>>::growAndPushBack(result + 184, &v14);
          v8 = *v6;
        }

        else
        {
          *(*(result + 184) + 4 * v13) = a2;
          ++*(result + 192);
        }
      }
    }

    else
    {
      v8 = v5;
    }

    *v6 = v8 | 1;
  }

  return result;
}

uint64_t physx::IG::IslandSim::activateNodeInternal(uint64_t result, unsigned int a2)
{
  v2 = a2 >> 7;
  v3 = *(result + 24) + 32 * v2;
  v4 = *(v3 + 4);
  if ((v4 & 2) == 0)
  {
    v5 = result;
    v6 = *v3;
    if (*v3 != -1)
    {
      v36 = a2 >> 7;
      v37 = a2;
      v7 = result + 232;
      do
      {
        v8 = v6 >> 1;
        v9 = (*(*(v5 + 56) + 8 * (v8 / *(v5 + 80))) + 16 * (v8 % *(v5 + 80)));
        v10 = *(v9 + 2);
        if ((v10 & 4) == 0)
        {
          v38 = v6 >> 1;
          *(v9 + 2) = v10 | 0x40;
          v11 = *v9;
          result = v5 + 200 + 16 * v11;
          v12 = *(result + 8);
          if ((*(result + 12) & 0x7FFFFFFFu) <= v12)
          {
            result = physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(result, &v38);
            v11 = *v9;
          }

          else
          {
            *(*result + 4 * v12) = v8;
            ++*(result + 8);
          }

          ++*(v7 + 4 * v11);
          if (!v11)
          {
            *(*(v5 + 304) + ((v38 >> 3) & 0x1FFFFFFC)) |= 1 << v38;
          }

          v13 = *(v5 + 608);
          v14 = *(v13 + 6);
          v15 = *v13;
          v16 = *(v15 + 8 * (2 * v38 / v14));
          v17 = *(v16 + 4 * (2 * v38 % v14));
          v18 = *(*(v15 + 8 * (((2 * v38) | 1) / v14)) + 4 * (((2 * v38) | 1) % v14));
          v19 = v17 >> 7;
          v20 = v18 >> 7;
          if (*(v16 + 4 * (2 * v38 % v14)) >> 7 != 0x1FFFFFF && v20 != 0x1FFFFFF)
          {
            v22 = *(v5 + 24);
            v23 = v22 + 32 * v19;
            v24 = *(v23 + 16);
            if (!v24)
            {
              if ((*(v23 + 4) & 0x26) == 4)
              {
                v39 = v17;
                if (!*(v23 + 16))
                {
                  v25 = *(v5 + 40);
                  if (*(v25 + 4 * v19) == 0x1FFFFFF)
                  {
                    v26 = *(v5 + 192);
                    *(v25 + 4 * v19) = v26;
                    if ((*(v5 + 196) & 0x7FFFFFFFu) <= v26)
                    {
                      result = physx::shdfnd::Array<physx::IG::NodeIndex,physx::shdfnd::ReflectionAllocator<physx::IG::NodeIndex>>::growAndPushBack(v5 + 184, &v39);
                      v22 = *(v5 + 24);
                    }

                    else
                    {
                      *(*(v5 + 184) + 4 * v26) = v39;
                      ++*(v5 + 192);
                    }
                  }
                }

                v24 = *(v23 + 16);
              }

              else
              {
                v24 = 0;
              }
            }

            *(v23 + 16) = v24 + 1;
            v27 = v22 + 32 * v20;
            v28 = *(v27 + 16);
            if (!v28)
            {
              if ((*(v27 + 4) & 0x26) == 4)
              {
                v39 = v18;
                if (!*(v27 + 16))
                {
                  v29 = *(v5 + 40);
                  if (*(v29 + 4 * v20) == 0x1FFFFFF)
                  {
                    v30 = *(v5 + 192);
                    *(v29 + 4 * v20) = v30;
                    if ((*(v5 + 196) & 0x7FFFFFFFu) <= v30)
                    {
                      result = physx::shdfnd::Array<physx::IG::NodeIndex,physx::shdfnd::ReflectionAllocator<physx::IG::NodeIndex>>::growAndPushBack(v5 + 184, &v39);
                    }

                    else
                    {
                      *(*(v5 + 184) + 4 * v30) = v39;
                      ++*(v5 + 192);
                    }
                  }
                }

                v28 = *(v27 + 16);
              }

              else
              {
                v28 = 0;
              }
            }

            *(v27 + 16) = v28 + 1;
          }

          *(v9 + 2) |= 4u;
        }

        v6 = *(*(*(v5 + 88) + 8 * (v6 / *(v5 + 112))) + 8 * (v6 % *(v5 + 112)));
      }

      while (v6 != -1);
      v4 = *(v3 + 4);
      v2 = v36;
      a2 = v37;
    }

    if ((v4 & 4) != 0)
    {
      v39 = a2;
      if (*(*(v5 + 24) + 32 * v2 + 16))
      {
        goto LABEL_45;
      }

      v33 = *(v5 + 40);
      if (*(v33 + 4 * v2) != 0x1FFFFFF)
      {
        goto LABEL_45;
      }

      v34 = *(v5 + 192);
      *(v33 + 4 * v2) = v34;
      if ((*(v5 + 196) & 0x7FFFFFFFu) > v34)
      {
        *(*(v5 + 184) + 4 * v34) = a2;
        ++*(v5 + 192);
        goto LABEL_45;
      }

      v35 = v5 + 184;
    }

    else
    {
      v39 = a2;
      v31 = v5 + 16 * *(*(v5 + 24) + 32 * v2 + 5);
      v32 = *(v31 + 160);
      *(*(v5 + 40) + 4 * v2) = v32;
      if ((*(v31 + 164) & 0x7FFFFFFFu) > v32)
      {
        *(*(v31 + 152) + 4 * v32) = a2;
        ++*(v31 + 160);
LABEL_45:
        *(v3 + 4) |= 2u;
        return result;
      }

      v35 = v31 + 152;
    }

    result = physx::shdfnd::Array<physx::IG::NodeIndex,physx::shdfnd::ReflectionAllocator<physx::IG::NodeIndex>>::growAndPushBack(v35, &v39);
    goto LABEL_45;
  }

  return result;
}

uint64_t physx::IG::IslandSim::removeEdgeFromActivatingList(uint64_t this, unsigned int a2)
{
  v2 = (*(*(this + 56) + 8 * (a2 / *(this + 80))) + 16 * (a2 % *(this + 80)));
  v3 = *(v2 + 2);
  if ((v3 & 0x40) != 0)
  {
    v4 = this + 16 * *v2;
    v5 = *(v4 + 208);
    if (v5)
    {
      v6 = *(v4 + 200);
      v7 = *(v4 + 208);
      v8 = v6;
      while (*v8 != a2)
      {
        ++v8;
        if (!--v7)
        {
          goto LABEL_8;
        }
      }

      v9 = v5 - 1;
      *(v4 + 208) = v9;
      *v8 = v6[v9];
    }

LABEL_8:
    *(v2 + 2) = v3 & 0xFFBF;
  }

  v10 = *(this + 608);
  v11 = *(v10 + 6);
  v12 = *v10;
  v13 = *(*(*v10 + 8 * (2 * a2 / v11)) + 4 * (2 * a2 % v11));
  if (v13 <= 0xFFFFFF7F)
  {
    v14 = *(*(v12 + 8 * (((2 * a2) | 1) / v11)) + 4 * (((2 * a2) | 1) % v11));
    if (v14 <= 0xFFFFFF7F)
    {
      v15 = *(this + 24);
      --*(v15 + ((v13 >> 2) & 0x3FFFFFE0) + 16);
      --*(v15 + ((v14 >> 2) & 0x3FFFFFE0) + 16);
    }
  }

  if (!*v2)
  {
    *(*(this + 304) + 4 * (a2 >> 5)) &= ~(1 << a2);
  }

  return this;
}

uint64_t physx::IG::IslandSim::activateIsland(uint64_t this, unsigned int a2)
{
  v3 = this;
  v4 = *(this + 120);
  v6 = *(v4 + 44 * a2);
  v7 = v6 >> 7;
  if (v6 >> 7 != 0x1FFFFFF)
  {
    do
    {
      this = physx::IG::IslandSim::activateNodeInternal(v3, v6);
      v6 = *(*(v3 + 24) + 32 * v7 + 8);
      v7 = v6 >> 7;
    }

    while (v6 >> 7 != 0x1FFFFFF);
    v4 = *(v3 + 120);
  }

  v9 = a2;
  *(*(v3 + 288) + 4 * (a2 >> 5)) |= 1 << a2;
  v8 = *(v3 + 328);
  *(v4 + 44 * a2 + 16) = v8;
  if ((*(v3 + 332) & 0x7FFFFFFFu) <= v8)
  {
    return physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(v3 + 320, &v9);
  }

  *(*(v3 + 320) + 4 * v8) = a2;
  ++*(v3 + 328);
  return this;
}

uint64_t physx::IG::IslandSim::wakeIslands(uint64_t this)
{
  v1 = this;
  v2 = 0;
  v57 = *(this + 328);
  v3 = this + 200;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = v3 + 16 * v2;
    v7 = *(v6 + 8);
    if (v7)
    {
      v8 = *v6;
      v9 = *(this + 80);
      v10 = *(this + 56);
      do
      {
        v11 = *v8++;
        v12 = *(v10 + 8 * (v11 / v9)) + 16 * (v11 % v9);
        *(v12 + 4) &= ~0x40u;
        --v7;
      }

      while (v7);
    }

    v4 = 0;
    v2 = 1;
  }

  while ((v5 & 1) != 0);
  *(this + 208) = 0;
  *(this + 224) = 0;
  if (*(this + 440))
  {
    v13 = 0;
    v58 = this + 232;
    do
    {
      v59 = *(*(v1 + 432) + 4 * v13);
      v14 = v59 >> 7;
      v15 = *(*(v1 + 272) + 4 * v14);
      v16 = *(v1 + 24) + 32 * v14;
      v17 = *(v16 + 4) & 0xDF;
      *(v16 + 4) = v17;
      if (v15 == -1)
      {
        *(v16 + 4) = v17 | 2;
        v21 = *(v1 + 192);
        *(*(v1 + 40) + 4 * v14) = v21;
        if ((*(v1 + 196) & 0x7FFFFFFFu) <= v21)
        {
          this = physx::shdfnd::Array<physx::IG::NodeIndex,physx::shdfnd::ReflectionAllocator<physx::IG::NodeIndex>>::growAndPushBack(v1 + 184, &v59);
        }

        else
        {
          *(*(v1 + 184) + 4 * v21) = v59;
          ++*(v1 + 192);
        }

        for (i = *v16; i != -1; i = *(v24 + 8 * (i % v23)))
        {
          v23 = *(v1 + 112);
          v24 = *(*(v1 + 88) + 8 * (i / v23));
          v25 = *(*(**(v1 + 608) + 8 * ((i ^ 1) / *(*(v1 + 608) + 24))) + 4 * ((i ^ 1) % *(*(v1 + 608) + 24)));
          if (v25 > 0xFFFFFF7F || (v26 = *(*(v1 + 272) + ((v25 >> 5) & 0x7FFFFFC)), v26 == -1))
          {
            v30 = i >> 1;
            v31 = (*(*(v1 + 56) + 8 * (v30 / *(v1 + 80))) + 16 * (v30 % *(v1 + 80)));
            v32 = *(v31 + 2);
            if ((v32 & 4) == 0)
            {
              v33 = *v31;
              if (v33 != 1)
              {
                v60 = i >> 1;
                *(v31 + 2) = v32 | 0x40;
                this = v3 + 16 * v33;
                v34 = *(this + 8);
                if ((*(this + 12) & 0x7FFFFFFFu) <= v34)
                {
                  this = physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(this, &v60);
                  v33 = *v31;
                }

                else
                {
                  *(*this + 4 * v34) = v30;
                  ++*(this + 8);
                }

                ++*(v58 + 4 * v33);
                if (!v33)
                {
                  *(*(v1 + 304) + ((v60 >> 3) & 0x1FFFFFFC)) |= 1 << v60;
                }

                v35 = *(v1 + 608);
                v36 = *(v35 + 6);
                v37 = *v35;
                v38 = *(*(*v35 + 8 * (2 * v60 / v36)) + 4 * (2 * v60 % v36));
                v39 = v38 >> 7;
                if ((v38 >> 7) != 0x1FFFFFF)
                {
                  v40 = *(*(v37 + 8 * (((2 * v60) | 1) / v36)) + 4 * (((2 * v60) | 1) % v36));
                  v41 = v40 >> 7;
                  if (*(*(v37 + 8 * (((2 * v60) | 1) / v36)) + 4 * (((2 * v60) | 1) % v36)) >> 7 != 0x1FFFFFF)
                  {
                    v42 = *(v1 + 24);
                    v43 = v42 + 32 * v39;
                    v44 = *(v43 + 16);
                    if (!v44)
                    {
                      if ((*(v43 + 4) & 0x26) == 4)
                      {
                        v61 = v38;
                        if (!*(v43 + 16))
                        {
                          v45 = *(v1 + 40);
                          if (*(v45 + 4 * v39) == 0x1FFFFFF)
                          {
                            v46 = *(v1 + 192);
                            *(v45 + 4 * v39) = v46;
                            if ((*(v1 + 196) & 0x7FFFFFFFu) <= v46)
                            {
                              v56 = v40;
                              this = physx::shdfnd::Array<physx::IG::NodeIndex,physx::shdfnd::ReflectionAllocator<physx::IG::NodeIndex>>::growAndPushBack(v1 + 184, &v61);
                              LODWORD(v40) = v56;
                              v42 = *(v1 + 24);
                            }

                            else
                            {
                              *(*(v1 + 184) + 4 * v46) = v61;
                              ++*(v1 + 192);
                            }
                          }
                        }

                        v44 = *(v43 + 16);
                      }

                      else
                      {
                        v44 = 0;
                      }
                    }

                    *(v43 + 16) = v44 + 1;
                    v47 = v42 + 32 * v41;
                    v48 = *(v47 + 16);
                    if (!v48)
                    {
                      if ((*(v47 + 4) & 0x26) == 4)
                      {
                        v61 = v40;
                        if (!*(v47 + 16))
                        {
                          v49 = *(v1 + 40);
                          if (*(v49 + 4 * v41) == 0x1FFFFFF)
                          {
                            v50 = *(v1 + 192);
                            *(v49 + 4 * v41) = v50;
                            if ((*(v1 + 196) & 0x7FFFFFFFu) <= v50)
                            {
                              this = physx::shdfnd::Array<physx::IG::NodeIndex,physx::shdfnd::ReflectionAllocator<physx::IG::NodeIndex>>::growAndPushBack(v1 + 184, &v61);
                            }

                            else
                            {
                              *(*(v1 + 184) + 4 * v50) = v61;
                              ++*(v1 + 192);
                            }
                          }
                        }

                        v48 = *(v47 + 16);
                      }

                      else
                      {
                        v48 = 0;
                      }
                    }

                    *(v47 + 16) = v48 + 1;
                  }
                }

                *(v31 + 2) |= 4u;
              }
            }
          }

          else
          {
            v27 = *(v1 + 288);
            if ((*(v27 + 4 * (v26 >> 5)) & (1 << v26)) == 0)
            {
              v61 = v26;
              v28 = *(v1 + 120);
              *(v27 + 4 * (v26 >> 5)) |= 1 << v26;
              v29 = *(v1 + 328);
              *(v28 + 44 * v26 + 16) = v29;
              if ((*(v1 + 332) & 0x7FFFFFFFu) <= v29)
              {
                this = physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(v1 + 320, &v61);
              }

              else
              {
                *(*(v1 + 320) + 4 * v29) = v61;
                ++*(v1 + 328);
              }
            }
          }
        }
      }

      else
      {
        v18 = *(v1 + 288);
        if ((*(v18 + 4 * (v15 >> 5)) & (1 << v15)) == 0)
        {
          v61 = v15;
          v19 = *(v1 + 120);
          *(v18 + 4 * (v15 >> 5)) |= 1 << v15;
          v20 = *(v1 + 328);
          *(v19 + 44 * v15 + 16) = v20;
          if ((*(v1 + 332) & 0x7FFFFFFFu) <= v20)
          {
            physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(v1 + 320, &v61);
          }

          else
          {
            *(*(v1 + 320) + 4 * v20) = v61;
            ++*(v1 + 328);
          }

          v14 = v59 >> 7;
        }

        *(*(v1 + 40) + 4 * v14) = 0x1FFFFFF;
        this = physx::IG::IslandSim::activateNodeInternal(v1, v59);
      }

      ++v13;
    }

    while (v13 < *(v1 + 440));
    v51 = *(v1 + 328);
    *(v1 + 336) = *(v1 + 160);
    *(v1 + 340) = *(v1 + 176);
    *(v1 + 440) = 0;
    for (j = v57; j < v51; ++j)
    {
      v53 = *(*(v1 + 120) + 44 * *(*(v1 + 320) + 4 * j));
      v54 = v53 >> 7;
      if (v53 >> 7 != 0x1FFFFFF)
      {
        v55 = j;
        do
        {
          this = physx::IG::IslandSim::activateNodeInternal(v1, v53);
          v53 = *(*(v1 + 24) + 32 * v54 + 8);
          v54 = v53 >> 7;
        }

        while (v53 >> 7 != 0x1FFFFFF);
        v51 = *(v1 + 328);
        j = v55;
      }
    }
  }

  else
  {
    *(this + 336) = *(this + 160);
    *(this + 340) = *(this + 176);
  }

  return this;
}

uint64_t physx::IG::IslandSim::wakeIslands2(uint64_t this)
{
  if (*(this + 440))
  {
    v1 = this;
    v2 = 0;
    v45 = *(this + 328);
    v46 = this + 232;
    v47 = this + 200;
    do
    {
      v48 = *(*(v1 + 432) + 4 * v2);
      v3 = v48 >> 7;
      v4 = *(*(v1 + 272) + 4 * v3);
      v5 = *(v1 + 24) + 32 * v3;
      v6 = *(v5 + 4) & 0xDF;
      *(v5 + 4) = v6;
      if (v4 == -1)
      {
        *(v5 + 4) = v6 | 2;
        v10 = *(v1 + 192);
        *(*(v1 + 40) + 4 * v3) = v10;
        if ((*(v1 + 196) & 0x7FFFFFFFu) <= v10)
        {
          this = physx::shdfnd::Array<physx::IG::NodeIndex,physx::shdfnd::ReflectionAllocator<physx::IG::NodeIndex>>::growAndPushBack(v1 + 184, &v48);
        }

        else
        {
          *(*(v1 + 184) + 4 * v10) = v48;
          ++*(v1 + 192);
        }

        for (i = *v5; i != -1; i = *(v13 + 8 * (i % v12)))
        {
          v12 = *(v1 + 112);
          v13 = *(*(v1 + 88) + 8 * (i / v12));
          v14 = *(*(**(v1 + 608) + 8 * ((i ^ 1) / *(*(v1 + 608) + 24))) + 4 * ((i ^ 1) % *(*(v1 + 608) + 24)));
          if (v14 > 0xFFFFFF7F || (v15 = *(*(v1 + 272) + ((v14 >> 5) & 0x7FFFFFC)), v15 == -1))
          {
            v19 = i >> 1;
            v20 = (*(*(v1 + 56) + 8 * (v19 / *(v1 + 80))) + 16 * (v19 % *(v1 + 80)));
            v21 = *(v20 + 2);
            if ((v21 & 4) == 0)
            {
              v22 = *v20;
              if (v22 != 1)
              {
                v49 = i >> 1;
                *(v20 + 2) = v21 | 0x40;
                this = v47 + 16 * v22;
                v23 = *(this + 8);
                if ((*(this + 12) & 0x7FFFFFFFu) <= v23)
                {
                  this = physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(this, &v49);
                  v22 = *v20;
                }

                else
                {
                  *(*this + 4 * v23) = v19;
                  ++*(this + 8);
                }

                ++*(v46 + 4 * v22);
                if (!v22)
                {
                  *(*(v1 + 304) + ((v49 >> 3) & 0x1FFFFFFC)) |= 1 << v49;
                }

                v24 = *(v1 + 608);
                v25 = *(v24 + 6);
                v26 = *v24;
                v27 = *(*(*v24 + 8 * (2 * v49 / v25)) + 4 * (2 * v49 % v25));
                v28 = v27 >> 7;
                if ((v27 >> 7) != 0x1FFFFFF)
                {
                  v29 = *(*(v26 + 8 * (((2 * v49) | 1) / v25)) + 4 * (((2 * v49) | 1) % v25));
                  v30 = v29 >> 7;
                  if (*(*(v26 + 8 * (((2 * v49) | 1) / v25)) + 4 * (((2 * v49) | 1) % v25)) >> 7 != 0x1FFFFFF)
                  {
                    v31 = *(v1 + 24);
                    v32 = v31 + 32 * v28;
                    v33 = *(v32 + 16);
                    if (!v33)
                    {
                      if ((*(v32 + 4) & 0x26) == 4)
                      {
                        v50 = v27;
                        if (!*(v32 + 16))
                        {
                          v34 = *(v1 + 40);
                          if (*(v34 + 4 * v28) == 0x1FFFFFF)
                          {
                            v35 = *(v1 + 192);
                            *(v34 + 4 * v28) = v35;
                            if ((*(v1 + 196) & 0x7FFFFFFFu) <= v35)
                            {
                              this = physx::shdfnd::Array<physx::IG::NodeIndex,physx::shdfnd::ReflectionAllocator<physx::IG::NodeIndex>>::growAndPushBack(v1 + 184, &v50);
                              v31 = *(v1 + 24);
                            }

                            else
                            {
                              *(*(v1 + 184) + 4 * v35) = v50;
                              ++*(v1 + 192);
                            }
                          }
                        }

                        v33 = *(v32 + 16);
                      }

                      else
                      {
                        v33 = 0;
                      }
                    }

                    *(v32 + 16) = v33 + 1;
                    v36 = v31 + 32 * v30;
                    v37 = *(v36 + 16);
                    if (!v37)
                    {
                      if ((*(v36 + 4) & 0x26) == 4)
                      {
                        v50 = v29;
                        if (!*(v36 + 16))
                        {
                          v38 = *(v1 + 40);
                          if (*(v38 + 4 * v30) == 0x1FFFFFF)
                          {
                            v39 = *(v1 + 192);
                            *(v38 + 4 * v30) = v39;
                            if ((*(v1 + 196) & 0x7FFFFFFFu) <= v39)
                            {
                              this = physx::shdfnd::Array<physx::IG::NodeIndex,physx::shdfnd::ReflectionAllocator<physx::IG::NodeIndex>>::growAndPushBack(v1 + 184, &v50);
                            }

                            else
                            {
                              *(*(v1 + 184) + 4 * v39) = v50;
                              ++*(v1 + 192);
                            }
                          }
                        }

                        v37 = *(v36 + 16);
                      }

                      else
                      {
                        v37 = 0;
                      }
                    }

                    *(v36 + 16) = v37 + 1;
                  }
                }

                *(v20 + 2) |= 4u;
              }
            }
          }

          else
          {
            v16 = *(v1 + 288);
            if ((*(v16 + 4 * (v15 >> 5)) & (1 << v15)) == 0)
            {
              v50 = v15;
              v17 = *(v1 + 120);
              *(v16 + 4 * (v15 >> 5)) |= 1 << v15;
              v18 = *(v1 + 328);
              *(v17 + 44 * v15 + 16) = v18;
              if ((*(v1 + 332) & 0x7FFFFFFFu) <= v18)
              {
                this = physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(v1 + 320, &v50);
              }

              else
              {
                *(*(v1 + 320) + 4 * v18) = v50;
                ++*(v1 + 328);
              }
            }
          }
        }
      }

      else
      {
        v7 = *(v1 + 288);
        if ((*(v7 + 4 * (v4 >> 5)) & (1 << v4)) == 0)
        {
          v50 = v4;
          v8 = *(v1 + 120);
          *(v7 + 4 * (v4 >> 5)) |= 1 << v4;
          v9 = *(v1 + 328);
          *(v8 + 44 * v4 + 16) = v9;
          if ((*(v1 + 332) & 0x7FFFFFFFu) <= v9)
          {
            physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(v1 + 320, &v50);
          }

          else
          {
            *(*(v1 + 320) + 4 * v9) = v50;
            ++*(v1 + 328);
          }

          v3 = v48 >> 7;
        }

        *(*(v1 + 40) + 4 * v3) = 0x1FFFFFF;
        this = physx::IG::IslandSim::activateNodeInternal(v1, v48);
      }

      ++v2;
    }

    while (v2 < *(v1 + 440));
    v40 = *(v1 + 328);
    *(v1 + 440) = 0;
    v41 = v45;
    if (v45 < v40)
    {
      do
      {
        v42 = v41;
        v43 = *(*(v1 + 120) + 44 * *(*(v1 + 320) + 4 * v41));
        v44 = v43 >> 7;
        if (v43 >> 7 != 0x1FFFFFF)
        {
          do
          {
            this = physx::IG::IslandSim::activateNodeInternal(v1, v43);
            v43 = *(*(v1 + 24) + 32 * v44 + 8);
            v44 = v43 >> 7;
          }

          while (v43 >> 7 != 0x1FFFFFF);
          v40 = *(v1 + 328);
        }

        v41 = v42 + 1;
      }

      while (v42 + 1 < v40);
    }
  }

  return this;
}

void physx::IG::IslandSim::removeDestroyedEdges(physx::IG::IslandSim *this)
{
  v1 = *(this + 114);
  if (v1)
  {
    for (i = 0; i < v1; ++i)
    {
      v4 = *(*(this + 56) + 4 * i);
      if ((*(*(*(this + 7) + 8 * (v4 / *(this + 20))) + 16 * (v4 % *(this + 20)) + 4) & 0xB) == 3)
      {
        physx::IG::IslandSim::removeConnectionInternal(this, *(*(this + 56) + 4 * i));
        physx::IG::IslandSim::removeConnectionFromGraph(this, v4);
        v1 = *(this + 114);
      }
    }
  }
}

uint64_t physx::IG::IslandSim::processNewEdges(physx::IG::IslandSim *this)
{
  physx::Cm::BlockArray<physx::IG::EdgeInstance>::reserve(this + 22, 2 * *(this + 19));
  v2 = 0;
  v108 = this + 376;
  v3 = this + 200;
  v4 = 1;
  do
  {
    v106 = v4;
    v5 = &v108[16 * v2];
    v6 = *(v5 + 2);
    if (v6)
    {
      v7 = 0;
      while (1)
      {
        v8 = *(*v5 + 4 * v7);
        v9 = *(*(this + 7) + 8 * (v8 / *(this + 20))) + 16 * (v8 % *(this + 20));
        v11 = *(v9 + 4);
        v10 = (v9 + 4);
        if ((v11 & 3) == 0)
        {
          break;
        }

LABEL_55:
        if (++v7 >= v6)
        {
          goto LABEL_56;
        }
      }

      v12 = 2 * v8;
      if (2 * v8 + 2 <= *(this + 26))
      {
        v13 = *(this + 26);
      }

      else
      {
        v13 = 2 * v8 + 2;
      }

      physx::Cm::BlockArray<physx::IG::EdgeInstance>::reserve(this + 22, v13);
      v14 = *(this + 26);
      if (v14 < v13)
      {
        do
        {
          *(*(*(this + 11) + 8 * (v14 / *(this + 28))) + 8 * (v14 % *(this + 28))) = -1;
          ++v14;
        }

        while (v13 != v14);
      }

      *(this + 26) = v13;
      v15 = *(this + 20);
      v16 = *(*(this + 7) + 8 * (v8 / v15));
      v17 = *(this + 76);
      v18 = *(v17 + 6);
      v19 = *v17;
      v20 = v12 | 1;
      v21 = *(*(v19 + 8 * (v20 / v18)) + 4 * (v20 % v18));
      v22 = *(*(v19 + 8 * (v12 / v18)) + 4 * (v12 % v18)) >> 7;
      if (v22 == 0x1FFFFFF)
      {
        v23 = 0;
        v24 = 1;
      }

      else
      {
        v25 = *(this + 28);
        v26 = *(this + 11);
        v27 = *(this + 3) + 32 * v22;
        v28 = (*(v26 + 8 * (v12 / v25)) + 8 * (v12 % v25));
        v29 = *v27;
        *v28 = *v27;
        if (v29 != -1)
        {
          *(*(v26 + 8 * (v29 / v25)) + 8 * (v29 % v25) + 4) = v12;
        }

        *v27 = v12;
        v28[1] = -1;
        v30 = *(v27 + 4);
        v23 = (v30 & 0x22) != 0;
        v24 = (v30 >> 2) & 1;
      }

      v31 = v21 >> 7;
      if (v22 != v31 && v31 != 0x1FFFFFF)
      {
        v32 = *(this + 28);
        v33 = *(this + 11);
        v34 = *(this + 3) + 32 * v31;
        v35 = (*(v33 + 8 * (v20 / v32)) + 8 * (v20 % v32));
        v36 = *v34;
        *v35 = *v34;
        if (v36 != -1)
        {
          *(*(v33 + 8 * (v36 / v32)) + 8 * (v36 % v32) + 4) = v20;
        }

        *v34 = v20;
        v35[1] = -1;
        if ((v23 & 1) == 0)
        {
          v37 = *(v34 + 4);
          if ((v37 & 2) == 0)
          {
            v23 = (v37 >> 5) & 1;
            if (!v24)
            {
              goto LABEL_22;
            }

LABEL_25:
            if ((v23 & 1) == 0)
            {
LABEL_54:
              *v10 |= 1u;
              v6 = *(v5 + 2);
              goto LABEL_55;
            }

            v24 = (*(v34 + 4) >> 2) & 1;
LABEL_27:
            v38 = (v16 + 16 * (v8 % v15));
            v39 = *v38;
            if (!v24 || !v39)
            {
              v109 = v8;
              *(v38 + 2) |= 0x40u;
              v40 = &v3[16 * v39];
              v41 = *(v40 + 8);
              if ((*(v40 + 12) & 0x7FFFFFFFu) <= v41)
              {
                physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(v40, &v109);
                v39 = *v38;
                v8 = v109;
              }

              else
              {
                *(*v40 + 4 * v41) = v8;
                ++*(v40 + 8);
              }

              ++*(this + v39 + 58);
              if (!v39)
              {
                *(*(this + 38) + 4 * (v8 >> 5)) |= 1 << v8;
                v8 = v109;
              }

              v42 = *(this + 76);
              v43 = *(v42 + 6);
              v44 = *v42;
              v45 = *(*(*v42 + 8 * (2 * v8 / v43)) + 4 * (2 * v8 % v43));
              v46 = v45 >> 7;
              if ((v45 >> 7) != 0x1FFFFFF)
              {
                v47 = (2 * v8) | 1;
                v48 = *(v44 + 8 * (v47 / v43));
                v49 = v47 % v43;
                v50 = *(v48 + 4 * v49);
                v51 = v50 >> 7;
                if (*(v48 + 4 * v49) >> 7 != 0x1FFFFFF)
                {
                  v52 = *(this + 3);
                  v53 = v52 + 32 * v46;
                  v54 = *(v53 + 16);
                  if (!v54)
                  {
                    if ((*(v53 + 4) & 0x26) == 4)
                    {
                      v110 = v45;
                      v55 = *(this + 5);
                      if (*(v55 + 4 * v46) == 0x1FFFFFF)
                      {
                        v56 = *(this + 48);
                        *(v55 + 4 * v46) = v56;
                        if ((*(this + 49) & 0x7FFFFFFFu) <= v56)
                        {
                          physx::shdfnd::Array<physx::IG::NodeIndex,physx::shdfnd::ReflectionAllocator<physx::IG::NodeIndex>>::growAndPushBack(this + 184, &v110);
                          v52 = *(this + 3);
                        }

                        else
                        {
                          *(*(this + 23) + 4 * v56) = v45;
                          ++*(this + 48);
                        }
                      }

                      v54 = *(v53 + 16);
                    }

                    else
                    {
                      v54 = 0;
                    }
                  }

                  *(v53 + 16) = v54 + 1;
                  v57 = v52 + 32 * v51;
                  v58 = *(v57 + 16);
                  if (!v58)
                  {
                    if ((*(v57 + 4) & 0x26) == 4)
                    {
                      v110 = v50;
                      v59 = *(this + 5);
                      if (*(v59 + 4 * v51) == 0x1FFFFFF)
                      {
                        v60 = *(this + 48);
                        *(v59 + 4 * v51) = v60;
                        if ((*(this + 49) & 0x7FFFFFFFu) <= v60)
                        {
                          physx::shdfnd::Array<physx::IG::NodeIndex,physx::shdfnd::ReflectionAllocator<physx::IG::NodeIndex>>::growAndPushBack(this + 184, &v110);
                        }

                        else
                        {
                          *(*(this + 23) + 4 * v60) = v50;
                          ++*(this + 48);
                        }
                      }

                      v58 = *(v57 + 16);
                    }

                    else
                    {
                      v58 = 0;
                    }
                  }

                  *(v57 + 16) = v58 + 1;
                  v3 = this + 200;
                }
              }

              *(v38 + 2) |= 4u;
            }

            goto LABEL_54;
          }
        }

        v23 = 1;
        if (v24)
        {
          goto LABEL_25;
        }
      }

LABEL_22:
      if (!v23)
      {
        goto LABEL_54;
      }

      goto LABEL_27;
    }

LABEL_56:
    v4 = 0;
    v2 = 1;
  }

  while ((v106 & 1) != 0);
  v61 = *(this + 8);
  v110 = 0;
  physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::resize(this + 240, v61, &v110);
  v62 = *(this + 8);
  v110 = -128;
  result = physx::shdfnd::Array<physx::IG::NodeIndex,physx::shdfnd::ReflectionAllocator<physx::IG::NodeIndex>>::resize(this + 256, v62, &v110);
  v64 = 0;
  v65 = 1;
  do
  {
    v107 = v65;
    v66 = &v108[16 * v64];
    if (*(v66 + 2))
    {
      v67 = 0;
      while (1)
      {
        v68 = *(*v66 + 4 * v67);
        if ((*(*(*(this + 7) + 8 * (v68 / *(this + 20))) + 16 * (v68 % *(this + 20)) + 4) & 2) != 0)
        {
          goto LABEL_117;
        }

        v69 = *(this + 76);
        v70 = *(v69 + 6);
        v71 = *v69;
        v72 = *(*(*v69 + 8 * (2 * v68 / v70)) + 4 * (2 * v68 % v70));
        v73 = v72 >> 7;
        v74 = (v72 >> 7) == 0x1FFFFFF ? -1 : *(*(this + 34) + 4 * v73);
        v75 = *(*(v71 + 8 * (((2 * v68) | 1) / v70)) + 4 * (((2 * v68) | 1) % v70));
        v76 = v75 >> 7;
        v77 = (v75 >> 7) == 0x1FFFFFF ? -1 : *(*(this + 34) + 4 * v76);
        v78 = v73 != 0x1FFFFFF && (*(*(this + 3) + 32 * v73 + 4) >> 1) & 1;
        v79 = v76 != 0x1FFFFFF && (*(*(this + 3) + 32 * v76 + 4) >> 1) & 1;
        if (v74 == -1 && v77 == -1)
        {
          goto LABEL_117;
        }

        if (v74 != v77)
        {
          break;
        }

        v80 = *(this + 30);
        v81 = *(v80 + 4 * v73);
        v82 = *(v80 + 4 * v76);
        if (v81 + 1 >= v82)
        {
          if (v82 + 1 < v81)
          {
            *(v80 + 4 * v73) = v82 + 1;
            *(*(this + 32) + 4 * v73) = v75;
          }
        }

        else
        {
          *(v80 + 4 * v76) = v81 + 1;
          *(*(this + 32) + 4 * v76) = v72;
        }

LABEL_112:
        if (v74 != -1)
        {
          goto LABEL_113;
        }

LABEL_117:
        if (++v67 >= *(v66 + 2))
        {
          goto LABEL_121;
        }
      }

      if (v74 != -1)
      {
        if (v77 != -1)
        {
          if (v78 || v79)
          {
            v83 = *(this + 36);
            if (((*(v83 + 4 * (v74 >> 5)) >> v74) & 1) == 0)
            {
              physx::IG::IslandSim::activateIsland(this, v74);
              v83 = *(this + 36);
            }

            if (((*(v83 + 4 * (v77 >> 5)) >> v77) & 1) == 0)
            {
              physx::IG::IslandSim::activateIsland(this, v77);
            }
          }

          v84 = *(this + 15);
          v85 = (v84 + 44 * v74);
          v86 = (v84 + 44 * v77);
          if (v85[3] + v85[2] <= v86[3] + v86[2])
          {
            physx::IG::IslandSim::mergeIslandsInternal(this, v86, v85, v77, v74, v75, v72);
            v87 = v74;
            v88 = v72;
            LODWORD(v72) = v75;
            v74 = v77;
          }

          else
          {
            physx::IG::IslandSim::mergeIslandsInternal(this, v85, v86, v74, v77, v72, v75);
            v87 = v77;
            v88 = v75;
          }

          *(*(this + 36) + 4 * (v87 >> 5)) &= ~(1 << v87);
          result = physx::IG::HandleManager<unsigned int>::freeHandle(this, v87);
          *(*(this + 32) + ((v88 >> 5) & 0x7FFFFFC)) = v72;
          goto LABEL_113;
        }

        v90 = *(this + 3);
        if (v76 == 0x1FFFFFF)
        {
          ++*(v90 + 32 * v73 + 6);
          ++*(*(this + 17) + 4 * v74);
        }

        else
        {
          v94 = v90 + 32 * v76;
          if ((*(v94 + 4) & 4) != 0)
          {
            if (!v78 && v79)
            {
              result = physx::IG::IslandSim::activateIsland(this, v74);
            }

            goto LABEL_113;
          }

          v95 = *(this + 15) + 44 * v74;
          *(v90 + ((*(v95 + 4) >> 2) & 0x3FFFFFE0) + 8) = v75;
          *(v94 + 12) = *(v95 + 4);
          *(v95 + 4) = v75;
          v96 = v95 + 4 * *(v94 + 5);
          ++*(v96 + 8);
          *(*(this + 34) + 4 * v76) = v74;
          *(*(this + 30) + 4 * v76) = *(*(this + 30) + 4 * v73) + 1;
          *(*(this + 32) + 4 * v76) = v72;
          if (v78 || v79)
          {
            if ((*(*(this + 36) + 4 * (v74 >> 5)) >> v74))
            {
              if (v78)
              {
                goto LABEL_113;
              }
            }

            else
            {
              result = physx::IG::IslandSim::activateIsland(this, v74);
              if (v78)
              {
                goto LABEL_113;
              }
            }

            result = physx::IG::IslandSim::activateNodeInternal(this, v75);
          }
        }

LABEL_113:
        v97 = *(this + 15) + 44 * v74;
        v98 = *(this + 20);
        v99 = *(this + 7);
        v100 = (*(v99 + 8 * (v68 / v98)) + 16 * (v68 % v98));
        v101 = v97 + 28;
        v102 = *v100;
        v103 = *(v97 + 28 + 4 * v102);
        v104 = v97 + 4 * v102;
        if (v103 == -1)
        {
          *(v104 + 20) = v68;
          v105 = -1;
        }

        else
        {
          *(*(v99 + 8 * (v103 / v98)) + 16 * (v103 % v98) + 8) = v68;
          v105 = *(v101 + 4 * v102);
        }

        v100[3] = v105;
        *(v101 + 4 * v102) = v68;
        ++*(v104 + 36);
        goto LABEL_117;
      }

      v89 = *(this + 3);
      if (v73 == 0x1FFFFFF)
      {
        ++*(v89 + 32 * v76 + 6);
        ++*(*(this + 17) + 4 * v77);
      }

      else
      {
        v91 = v89 + 32 * v73;
        if ((*(v91 + 4) & 4) != 0)
        {
          if (!v79 && v78)
          {
            result = physx::IG::IslandSim::activateIsland(this, v77);
          }

          goto LABEL_111;
        }

        v92 = *(this + 15) + 44 * v77;
        *(v89 + ((*(v92 + 4) >> 2) & 0x3FFFFFE0) + 8) = v72;
        *(v91 + 12) = *(v92 + 4);
        *(v92 + 4) = v72;
        v93 = v92 + 4 * *(v91 + 5);
        ++*(v93 + 8);
        *(*(this + 34) + 4 * v73) = v77;
        *(*(this + 30) + 4 * v73) = *(*(this + 30) + 4 * v76) + 1;
        *(*(this + 32) + 4 * v73) = v75;
        if (v78 || v79)
        {
          if ((*(*(this + 36) + 4 * (v77 >> 5)) >> v77))
          {
            if (v78)
            {
              goto LABEL_111;
            }
          }

          else
          {
            result = physx::IG::IslandSim::activateIsland(this, v77);
            if (v78)
            {
              goto LABEL_111;
            }
          }

          result = physx::IG::IslandSim::activateNodeInternal(this, v72);
        }
      }

LABEL_111:
      v74 = v77;
      goto LABEL_112;
    }

LABEL_121:
    v65 = 0;
    v64 = 1;
  }

  while ((v107 & 1) != 0);
  return result;
}

void physx::IG::IslandSim::processLostEdges(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v354[1] = *MEMORY[0x1E69E9840];
  v6 = (a1 + 520);
  physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extendUninitialized(a1 + 520, *(a1 + 32));
  bzero(*(a1 + 520), (4 * *(a1 + 528)));
  if (*(a1 + 496) <= 0x3FFu)
  {
    v7 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::IG::QueueElement>::getName() [T = physx::IG::QueueElement]";
    }

    else
    {
      v8 = "<allocation names disabled>";
    }

    v9 = (*(*(v7 + 24) + 16))(v7 + 24, 0x4000, v8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/CmPriorityQueue.h", 219);
    v10 = v9;
    v11 = *(a1 + 488);
    if (v11)
    {
      memcpy(v9, v11, (16 * *(a1 + 480)));
      if (*(a1 + 488))
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      }
    }

    *(a1 + 488) = v10;
    *(a1 + 496) = 1024;
  }

  v347 = a1 + 536;
  if ((*(a1 + 548) & 0x7FFFFC00) == 0)
  {
    physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::recreate(v347, 0x400u);
  }

  if ((*(a1 + 564) & 0x7FFFFC00) == 0)
  {
    physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::recreate(a1 + 552, 0x400u);
  }

  v12 = *(a1 + 32);
  if ((*(a1 + 516) & 0x7FFFFFFFu) < v12)
  {
    physx::shdfnd::Array<physx::IG::TraversalState,physx::shdfnd::ReflectionAllocator<physx::IG::TraversalState>>::recreate(a1 + 504, v12);
  }

  v13 = *(a1 + 456);
  if (v13)
  {
    v14 = 0;
    v15 = *(a1 + 448);
    v16 = *(a1 + 56);
    while (1)
    {
      v17 = *(v15 + 4 * v14);
      v18 = *(v16 + 8 * (v17 / *(a1 + 80))) + 16 * (v17 % *(a1 + 80));
      v21 = *(v18 + 4);
      v20 = (v18 + 4);
      v19 = v21;
      if ((v21 & 0xA) == 2)
      {
        break;
      }

LABEL_42:
      if (++v14 >= v13)
      {
        goto LABEL_45;
      }
    }

    if ((v19 & 0x21) == 1)
    {
      v22 = *(a1 + 608);
      v23 = *(v22 + 6);
      v24 = *v22;
      v25 = *(*(*v22 + 8 * (2 * v17 / v23)) + 4 * (2 * v17 % v23)) >> 7;
      v26 = *(*(v24 + 8 * (((2 * v17) | 1) / v23)) + 4 * (((2 * v17) | 1) % v23)) >> 7;
      v27 = v25 == 0x1FFFFFF || v26 == 0x1FFFFFF;
      if (!v27)
      {
        v29 = *(a1 + 272);
        if (*(v29 + 4 * v25) == -1)
        {
          v25 = v26;
        }

        v30 = *(v29 + 4 * v25);
        goto LABEL_33;
      }

      if (v25 == 0x1FFFFFF)
      {
        if (v26 == 0x1FFFFFF)
        {
          goto LABEL_41;
        }

        v25 = v26;
        v28 = *(a1 + 24) + 32 * v26;
      }

      else
      {
        v25 = v25;
        v28 = *(a1 + 24) + 32 * v25;
      }

      if ((*(v28 + 4) & 4) == 0)
      {
        v30 = *(*(a1 + 272) + 4 * v25);
        --*(v28 + 6);
        --*(*(a1 + 136) + 4 * v30);
LABEL_33:
        if (v30 != 0xFFFFFFFFLL)
        {
          v31 = *(a1 + 120) + 44 * v30;
          v32 = *(a1 + 80);
          v33 = (*(v16 + 8 * (v17 / v32)) + 16 * (v17 % v32));
          v34 = v33[2];
          if (v34 == -1)
          {
            v35 = (v31 + 4 * *v33 + 28);
          }

          else
          {
            v35 = (*(v16 + 8 * (v34 / v32)) + 16 * (v34 % v32) + 12);
          }

          v36 = v33[3];
          *v35 = v36;
          v37 = v33[2];
          if (v36 == -1)
          {
            v38 = *v33;
            *(v31 + 4 * v38 + 20) = v37;
          }

          else
          {
            *(*(v16 + 8 * (v36 / *(a1 + 80))) + 16 * (v36 % *(a1 + 80)) + 8) = v37;
            v38 = *v33;
          }

          --*(v31 + 4 * v38 + 36);
          *(v33 + 1) = -1;
        }
      }
    }

LABEL_41:
    *v20 = v19 & 0xFFF6;
    v13 = *(a1 + 456);
    goto LABEL_42;
  }

  v13 = 0;
LABEL_45:
  v337 = a4;
  if (a3)
  {
    v39 = *(a1 + 416);
    if ((v39 & 0x7FFFFFFF) != 0)
    {
      v40 = *(a1 + 408);
      v41 = *v40;
      if (*v40)
      {
        v42 = 0;
LABEL_52:
        v339 = v6;
        while (1)
        {
          v44 = v41;
          v45 = v42;
          v39 = *(a1 + 416);
          v41 &= v41 - 1;
          if (!v41)
          {
            if (v42 + 1 > (v39 & 0x7FFFFFFFu))
            {
              v42 = (v42 + 1);
            }

            else
            {
              v42 = v39 & 0x7FFFFFFF;
            }

            LODWORD(v46) = v45;
            while (v42 - 1 != v46)
            {
              v46 = (v46 + 1);
              v41 = *(*(a1 + 408) + 4 * v46);
              if (v41)
              {
                v42 = v46;
                goto LABEL_62;
              }
            }

            v41 = 0;
          }

LABEL_62:
          v47 = __clz(__rbit32(v44));
          v48 = v47 | (32 * v45);
          if (v48 == -1)
          {
            goto LABEL_204;
          }

          *(a1 + 480) = 0;
          *(a1 + 512) = 0;
          v49 = v48 & 0x1FFFFFF;
          v50 = *(a1 + 24) + 32 * v49;
          if ((*(v50 + 4) & 0xC) == 0)
          {
            v51 = *v6;
            v52 = 1 << v47;
            if ((*(*v6 + 4 * (v49 >> 5)) & (1 << v47)) == 0)
            {
              v53 = *(a1 + 272);
              v54 = *(*(a1 + 120) + 44 * *(v53 + 4 * v49)) >> 7;
              if (v54 != v49)
              {
                v55 = v48 << 7;
                v56 = *(a1 + 256);
                v325 = *(v53 + 4 * v49);
                v326 = v42;
                v335 = *(a1 + 24) + 32 * v49;
                v341 = *(*(a1 + 120) + 44 * v325) >> 7;
                v324 = v55;
                if (*(v56 + 4 * v49) > 0xFFFFFF7F)
                {
                  goto LABEL_86;
                }

                v57 = v49;
                v58 = 0;
                v59 = v55;
                while (1)
                {
                  v60 = v59 >> 7;
                  v61 = v59 >> 12;
                  v62 = 1 << (v59 >> 7);
                  if ((v62 & *(v51 + 4 * (v59 >> 12))) != 0)
                  {
                    break;
                  }

                  v63 = v60 == v54;
                  if (v60 != v54)
                  {
                    v64 = *(a1 + 512);
                    *&v348 = __PAIR64__(v64, v59);
                    DWORD2(v348) = v64 - 1;
                    HIDWORD(v348) = v58;
                    if ((*(a1 + 516) & 0x7FFFFFFFu) <= v64)
                    {
                      physx::shdfnd::Array<physx::IG::TraversalState,physx::shdfnd::ReflectionAllocator<physx::IG::TraversalState>>::growAndPushBack(a1 + 504, &v348);
                      v54 = v341;
                    }

                    else
                    {
                      *(*(a1 + 504) + 16 * v64) = v348;
                      ++*(a1 + 512);
                    }

                    v53 = *(a1 + 272);
                    *(v53 + 4 * v60) = -1;
                    v51 = *(a1 + 520);
                    *(v51 + 4 * v61) |= v62;
                    v56 = *(a1 + 256);
                    v59 = *(v56 + 4 * v60);
                    ++v58;
                    if (v59 < 0xFFFFFF80)
                    {
                      continue;
                    }
                  }

                  goto LABEL_76;
                }

                v63 = *(v53 + 4 * v60) != -1;
LABEL_76:
                if (*(a1 + 512))
                {
                  v65 = 0;
                  v66 = *(a1 + 504);
                  v6 = v339;
                  v67 = v325;
                  v42 = v326;
                  v50 = v335;
                  v49 = v57;
                  do
                  {
                    v68 = *v66;
                    v66 += 4;
                    *(v53 + ((v68 >> 5) & 0x7FFFFFC)) = v325;
                    ++v65;
                    v69 = *(a1 + 512);
                  }

                  while (v65 < v69);
                  if (!v63)
                  {
                    if (*(a1 + 512))
                    {
                      v70 = 0;
                      v71 = *(a1 + 504);
                      do
                      {
                        v72 = *v71;
                        v71 += 4;
                        *(v51 + ((v72 >> 10) & 0x3FFFFC)) &= ~(1 << (v72 >> 7));
                        ++v70;
                      }

                      while (v70 < *(a1 + 512));
                    }

LABEL_85:
                    *(a1 + 512) = 0;
                    v55 = v324;
LABEL_86:
                    *(v53 + 4 * v49) = -1;
                    v73 = *(a1 + 512);
                    *&v348 = __PAIR64__(v73, v55);
                    *(&v348 + 1) = 0x1FFFFFFLL;
                    if ((*(a1 + 516) & 0x7FFFFFFFu) <= v73)
                    {
                      v77 = physx::shdfnd::Array<physx::IG::TraversalState,physx::shdfnd::ReflectionAllocator<physx::IG::TraversalState>>::growAndPushBack(a1 + 504, &v348);
                      v54 = v341;
                      v76 = v77;
                    }

                    else
                    {
                      *(*(a1 + 504) + 16 * v73) = v348;
                      v74 = *(a1 + 504);
                      v75 = *(a1 + 512);
                      *(a1 + 512) = v75 + 1;
                      v76 = v74 + 16 * v75;
                    }

                    *(*(a1 + 520) + 4 * (v55 >> 12)) |= v52;
                    v78 = *(*(a1 + 240) + 4 * v49);
                    LODWORD(v79) = *(a1 + 480);
                    if (v79 == *(a1 + 496))
                    {
                      v80 = 2 * v79 + 2;
                      if (v79 < v80)
                      {
                        v81 = physx::shdfnd::ReflectionAllocator<physx::IG::QueueElement>::allocate(16 * (2 * v79 + 2));
                        v82 = v81;
                        v83 = *(a1 + 488);
                        if (v83)
                        {
                          memcpy(v81, v83, (16 * *(a1 + 480)));
                          if (*(a1 + 488))
                          {
                            (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
                          }
                        }

                        *(a1 + 488) = v82;
                        *(a1 + 496) = v80;
                        LODWORD(v79) = *(a1 + 480);
                        v54 = v341;
                      }
                    }

                    v323 = v49;
                    if (v79)
                    {
                      while (1)
                      {
                        v84 = v79 - 1;
                        v85 = *(a1 + 488);
                        v86 = (v85 + 16 * ((v79 - 1) >> 1));
                        v79 = v79;
                        if (v78 >= *(v86 + 2))
                        {
                          break;
                        }

                        v87 = *v86;
                        v79 = v85 + 16 * v79;
                        *(v79 + 8) = *(v86 + 2);
                        *v79 = v87;
                        LODWORD(v79) = v84 >> 1;
                        if (v84 <= 1)
                        {
                          v79 = v84 >> 1;
                          break;
                        }
                      }
                    }

                    else
                    {
                      v79 = 0;
                    }

                    v88 = *(a1 + 488) + 16 * v79;
                    *v88 = v76;
                    *(v88 + 8) = v78;
                    v89 = *(a1 + 480) + 1;
                    v6 = v339;
                    while (2)
                    {
                      v90 = v89 - 1;
                      *(a1 + 480) = v89 - 1;
                      v91 = *(a1 + 488);
                      v92 = *v91;
                      v93 = &v91[2 * (v89 - 1)];
                      v94 = *v93;
                      v95 = *(v93 + 2);
                      if (v90 < 2)
                      {
                        v104 = 0;
                      }

                      else
                      {
                        v96 = 0;
                        v97 = 0;
                        v98 = 1;
                        while (1)
                        {
                          v99 = v96 + 2;
                          v101 = v96 + 2 >= v90;
                          v91 = *(a1 + 488);
                          v100 = v91[2 * v99 + 1];
                          v101 = v101 || v100 >= LODWORD(v91[2 * v98 + 1]);
                          v102 = v101 ? v98 : v98 + 1;
                          v103 = &v91[2 * v102];
                          v104 = v97;
                          if (v95 < *(v103 + 2))
                          {
                            break;
                          }

                          v105 = &v91[2 * v97];
                          v106 = *v103;
                          *(v105 + 2) = *(v103 + 2);
                          *v105 = v106;
                          v96 = 2 * v102;
                          v98 = (2 * v102) | 1;
                          v97 = v102;
                          if (v98 >= v90)
                          {
                            v91 = *(a1 + 488);
                            v104 = v102;
                            break;
                          }
                        }
                      }

                      v107 = &v91[2 * v104];
                      *v107 = v94;
                      *(v107 + 2) = v95;
                      for (i = *(*(a1 + 24) + ((*v92 >> 2) & 0x3FFFFFE0)); i != -1; i = *(v110 + 8 * (i % v109)))
                      {
                        v109 = *(a1 + 112);
                        v110 = *(*(a1 + 88) + 8 * (i / v109));
                        v111 = *(a1 + 608);
                        v112 = *(v111 + 24);
                        v113 = *(*v111 + 8 * ((i ^ 1) / v112));
                        v114 = (i ^ 1) % v112;
                        v115 = *(v113 + 4 * v114);
                        v116 = v115 >> 7;
                        if (*(v113 + 4 * v114) >> 7 != 0x1FFFFFF && (*(*(a1 + 24) + 32 * v116 + 4) & 4) == 0)
                        {
                          if (v116 == v54)
                          {
                            v162 = v92[1];
                            v163 = *(a1 + 504);
                            v164 = *(a1 + 240);
                            v53 = *(a1 + 272);
                            v165 = 1;
                            v56 = *(a1 + 256);
                            v67 = v325;
                            do
                            {
                              v166 = (v163 + 16 * v162);
                              *(v164 + ((*v166 >> 5) & 0x7FFFFFC)) = v165;
                              *(v53 + ((*v166 >> 5) & 0x7FFFFFC)) = v325;
                              *(v56 + ((*v166 >> 5) & 0x7FFFFFC)) = v115;
                              v162 = v166[2];
                              LODWORD(v115) = *v166;
                              ++v165;
                            }

                            while (v162 != 0x1FFFFFF);
                            goto LABEL_166;
                          }

                          v117 = v115 >> 12;
                          v118 = 1 << (v115 >> 7);
                          if ((*(*v6 + 4 * (v115 >> 12)) & v118) != 0)
                          {
                            v53 = *(a1 + 272);
                            if (*(v53 + 4 * v116) != -1)
                            {
                              v167 = v92[1];
                              v168 = *(a1 + 240);
                              v169 = *(a1 + 504);
                              v56 = *(a1 + 256);
                              v170 = *(v168 + 4 * v116) + 1;
                              v67 = v325;
                              do
                              {
                                v171 = (v169 + 16 * v167);
                                *(v168 + ((*v171 >> 5) & 0x7FFFFFC)) = v170;
                                *(v53 + ((*v171 >> 5) & 0x7FFFFFC)) = v325;
                                *(v56 + ((*v171 >> 5) & 0x7FFFFFC)) = v115;
                                v167 = v171[2];
                                LODWORD(v115) = *v171;
                                ++v170;
                              }

                              while (v167 != 0x1FFFFFF);
LABEL_166:
                              v42 = v326;
                              v50 = v335;
                              v69 = *(a1 + 512);
                              goto LABEL_167;
                            }
                          }

                          else
                          {
                            v119 = *(a1 + 512);
                            v120 = v92[1];
                            v121 = v92[3] + 1;
                            *&v348 = __PAIR64__(v119, v115);
                            *(&v348 + 1) = __PAIR64__(v121, v120);
                            if ((*(a1 + 516) & 0x7FFFFFFFu) <= v119)
                            {
                              v125 = v92;
                              v124 = physx::shdfnd::Array<physx::IG::TraversalState,physx::shdfnd::ReflectionAllocator<physx::IG::TraversalState>>::growAndPushBack(a1 + 504, &v348);
                              v54 = v341;
                              v92 = v125;
                            }

                            else
                            {
                              *(*(a1 + 504) + 16 * v119) = v348;
                              v122 = *(a1 + 504);
                              v123 = *(a1 + 512);
                              *(a1 + 512) = v123 + 1;
                              v124 = v122 + 16 * v123;
                            }

                            v126 = *(*(a1 + 240) + 4 * v116);
                            LODWORD(v127) = *(a1 + 480);
                            if (v127 == *(a1 + 496) && v127 < 2 * v127 + 2)
                            {
                              v328 = v124;
                              v330 = v92;
                              v327 = 2 * v127 + 2;
                              v128 = physx::shdfnd::ReflectionAllocator<physx::IG::QueueElement>::allocate(16 * v327);
                              v129 = *(a1 + 488);
                              if (v129)
                              {
                                v332 = v128;
                                memcpy(v128, v129, (16 * *(a1 + 480)));
                                v128 = v332;
                                if (*(a1 + 488))
                                {
                                  (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
                                  v128 = v332;
                                }
                              }

                              *(a1 + 488) = v128;
                              v124 = v328;
                              *(a1 + 496) = v327;
                              LODWORD(v127) = *(a1 + 480);
                              v54 = v341;
                              v92 = v330;
                            }

                            if (v127)
                            {
                              while (1)
                              {
                                v130 = v127 - 1;
                                v131 = *(a1 + 488);
                                v132 = (v131 + 16 * ((v127 - 1) >> 1));
                                v127 = v127;
                                if (v126 >= *(v132 + 2))
                                {
                                  break;
                                }

                                v133 = *v132;
                                v127 = v131 + 16 * v127;
                                *(v127 + 8) = *(v132 + 2);
                                *v127 = v133;
                                LODWORD(v127) = v130 >> 1;
                                if (v130 <= 1)
                                {
                                  v127 = v130 >> 1;
                                  break;
                                }
                              }
                            }

                            else
                            {
                              v127 = 0;
                            }

                            v134 = *(a1 + 488) + 16 * v127;
                            *v134 = v124;
                            *(v134 + 8) = v126;
                            ++*(a1 + 480);
                            *(*(a1 + 520) + 4 * v117) |= v118;
                            *(*(a1 + 272) + 4 * v116) = -1;
                            v6 = v339;
                          }
                        }
                      }

                      v89 = *(a1 + 480);
                      v135 = v335;
                      if (v89)
                      {
                        continue;
                      }

                      break;
                    }

                    v136 = (*(a1 + 120) + 44 * v325);
                    *(a1 + 544) = 0;
                    *(a1 + 560) = 0;
                    v354[0] = 0;
                    if (*(a1 + 512))
                    {
                      v137 = 0;
                      v138 = 0;
                      v329 = v136;
                      v331 = v136 + 1;
                      v139 = &v136[3] + 4;
                      v140 = &v136[2] + 4;
                      v141 = &v136[4] + 4;
                      do
                      {
                        v342 = v138;
                        v142 = *(a1 + 24);
                        v143 = (v142 + ((*(*(a1 + 504) + 16 * v137) >> 2) & 0x3FFFFFE0));
                        v144 = v143[3];
                        v145 = v143[2] >> 7;
                        v27 = v145 == 0x1FFFFFF;
                        v146 = (v142 + 32 * v145 + 12);
                        if (v27)
                        {
                          v146 = v331;
                        }

                        *v146 = v144;
                        if ((v144 >> 7) != 0x1FFFFFF)
                        {
                          *(v142 + 32 * (v144 >> 7) + 8) = v143[2];
                        }

                        ++*(v354 + *(v143 + 5));
                        *(v143 + 1) = 0x7F0000007FLL;
                        v333 = *(v143 + 3);
                        v147 = *v143;
                        if (*v143 != -1)
                        {
                          v148 = *(a1 + 56);
                          do
                          {
                            v149 = *(a1 + 112);
                            v150 = *(*(a1 + 88) + 8 * (v147 / v149));
                            LODWORD(v348) = v147 >> 1;
                            if ((v147 & 1) == 0 || (v151 = *(*(**(a1 + 608) + 8 * ((v147 & 0xFFFFFFFE) / *(*(a1 + 608) + 24))) + 4 * ((v147 & 0xFFFFFFFE) % *(*(a1 + 608) + 24))) >> 7, v151 == 0x1FFFFFF) || (*(*(a1 + 24) + 32 * v151 + 4) & 4) != 0)
                            {
                              v152 = v347 + 16 * *(*(v148 + 8 * ((v147 >> 1) / *(a1 + 80))) + 16 * ((v147 >> 1) % *(a1 + 80)));
                              v153 = *(v152 + 8);
                              if ((*(v152 + 12) & 0x7FFFFFFFu) <= v153)
                              {
                                physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(v152, &v348);
                                v148 = *(a1 + 56);
                              }

                              else
                              {
                                *(*v152 + 4 * v153) = v147 >> 1;
                                ++*(v152 + 8);
                              }

                              v154 = *(a1 + 80);
                              v155 = (*(v148 + 8 * (v348 / v154)) + 16 * (v348 % v154));
                              v157 = v155[2];
                              v156 = v155[3];
                              if (v157 == -1)
                              {
                                v158 = &v139[4 * *v155];
                              }

                              else
                              {
                                v158 = (*(v148 + 8 * (v157 / v154)) + 16 * (v157 % v154) + 12);
                              }

                              *v158 = v156;
                              v159 = v155[2];
                              if (v156 == -1)
                              {
                                v160 = *v155;
                                *&v140[4 * v160] = v159;
                              }

                              else
                              {
                                *(*(v148 + 8 * (v156 / *(a1 + 80))) + 16 * (v156 % *(a1 + 80)) + 8) = v159;
                                v160 = *v155;
                              }

                              --*&v141[4 * v160];
                              *(v155 + 1) = -1;
                            }

                            v147 = *(v150 + 8 * (v147 % v149));
                          }

                          while (v147 != -1);
                        }

                        v138 = v342 + v333;
                        ++v137;
                      }

                      while (v137 < *(a1 + 512));
                      v161 = v354[0];
                      v135 = v335;
                      v136 = v329;
                    }

                    else
                    {
                      v138 = 0;
                      v161 = 0;
                    }

                    *(*(a1 + 136) + 4 * v325) -= v138;
                    v136[1] = vsub_s32(v136[1], v161);
                    v176 = *(a1 + 8);
                    if (v176)
                    {
                      v177 = v176 - 1;
                      v178 = *(*a1 + 4 * (v176 - 1));
                      *(a1 + 8) = v177;
                      v179 = v178 + 1;
                    }

                    else
                    {
                      v178 = *(a1 + 16);
                      v179 = v178 + 1;
                      *(a1 + 16) = v178 + 1;
                    }

                    v353 = v178;
                    v180 = *(a1 + 128);
                    if (v179 <= v180)
                    {
                      v181 = v180;
                    }

                    else
                    {
                      v181 = v179;
                    }

                    v348 = 0x7F0000007FuLL;
                    v349 = -1;
                    v350 = -1;
                    v351 = -1;
                    v352 = 0;
                    physx::shdfnd::Array<physx::IG::Island,physx::shdfnd::ReflectionAllocator<physx::IG::Island>>::resize(a1 + 120, v181, &v348);
                    if (v353 + 1 > *(a1 + 144))
                    {
                      v182 = v353 + 1;
                    }

                    else
                    {
                      v182 = *(a1 + 144);
                    }

                    LODWORD(v348) = 0;
                    physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::resize(a1 + 136, v182, &v348);
                    v183 = v353;
                    v184 = (*(a1 + 120) + 44 * v353);
                    if ((*(*(a1 + 288) + ((v325 >> 3) & 0x1FFFFFFC)) >> v325))
                    {
                      v185 = *(a1 + 328);
                      v184[4] = v185;
                      if ((*(a1 + 332) & 0x7FFFFFFFu) <= v185)
                      {
                        physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(a1 + 320, &v353);
                        v186 = v353;
                      }

                      else
                      {
                        v186 = v353;
                        *(*(a1 + 320) + 4 * v185) = v353;
                        ++*(a1 + 328);
                      }

                      physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(a1 + 288, v186 + 1);
                      *(*(a1 + 288) + 4 * (v186 >> 5)) |= 1 << v186;
                    }

                    else
                    {
                      physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(a1 + 288, v353 + 1);
                      *(*(a1 + 288) + ((v183 >> 3) & 0x1FFFFFFC)) &= ~(1 << v183);
                    }

                    *v184 = v324;
                    v187 = *(a1 + 240);
                    *(v187 + 4 * v323) = 0;
                    v188 = *(a1 + 272);
                    *(v188 + 4 * v323) = v353;
                    v189 = *(a1 + 24);
                    *(v189 + 32 * v323 + 12) = -128;
                    v190 = *(a1 + 256);
                    *(v190 + 4 * v323) = -128;
                    v354[0] = 0;
                    *(v354 + *(v135 + 5)) = 1;
                    v191 = *(a1 + 504);
                    if (*(a1 + 512) >= 2u)
                    {
                      v192 = (v191 + 28);
                      v193 = 1;
                      do
                      {
                        v194 = *(v192 - 3);
                        v195 = v194 >> 7;
                        v196 = v189 + 32 * (v194 >> 7);
                        v197 = *(v192 - 7);
                        *(v196 + 12) = v197;
                        *(v189 + ((v197 >> 2) & 0x3FFFFFE0) + 8) = v194;
                        ++*(v354 + *(v196 + 5));
                        *(v188 + 4 * v195) = v353;
                        *(v187 + 4 * v195) = *v192;
                        *(v190 + 4 * v195) = *(v191 + 16 * *(v192 - 1));
                        ++v193;
                        v192 += 4;
                      }

                      while (v193 < *(a1 + 512));
                    }

                    v198 = 0;
                    v199 = v354[0];
                    v184[2] = v354[0];
                    v200 = HIDWORD(v354[0]);
                    v184[3] = HIDWORD(v354[0]);
                    v201 = *(v191 + 16 * (*(a1 + 512) - 1));
                    *(v189 + ((v201 >> 2) & 0x3FFFFFE0) + 8) = -128;
                    v184[1] = v201;
                    *(*(a1 + 136) + 4 * v353) = v138;
                    v184[2] = v199;
                    v184[3] = v200;
                    v202 = v184 + 5;
                    v203 = v184 + 7;
                    v204 = v184 + 9;
                    v205 = 1;
                    do
                    {
                      v206 = v205;
                      v207 = v347 + 16 * v198;
                      v208 = *(v207 + 8);
                      if (v208)
                      {
                        LODWORD(v348) = -1;
                        if ((*(v207 + 12) & 0x7FFFFFFFu) <= v208)
                        {
                          physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(v347 + 16 * v198, &v348);
                          v209 = *v207;
                        }

                        else
                        {
                          v209 = *v207;
                          *(*v207 + 4 * v208) = -1;
                          ++*(v207 + 8);
                        }

                        v210 = *(a1 + 80);
                        v211 = *(a1 + 56);
                        *(*(v211 + 8 * (*v209 / v210)) + 16 * (*v209 % v210) + 8) = v209[1];
                        if (v208 != 1)
                        {
                          v212 = v209 + 2;
                          v213 = v208 - 1;
                          do
                          {
                            v214 = *(v211 + 8 * (*(v212 - 1) / v210)) + 16 * (*(v212 - 1) % v210);
                            *(v214 + 8) = *v212;
                            *(v214 + 12) = *(v212 - 2);
                            ++v212;
                            --v213;
                          }

                          while (v213);
                        }

                        v202[v198] = *v209;
                        v203[v198] = v209[(v208 - 1)];
                        v204[v198] = v208;
                      }

                      v205 = 0;
                      v198 = 1;
                    }

                    while ((v206 & 1) != 0);
                    v6 = v339;
                    v42 = v326;
                    v50 = v335;
                    goto LABEL_172;
                  }

LABEL_167:
                  if (v69)
                  {
                    v172 = 0;
                    v173 = *(a1 + 504);
                    v174 = v173;
                    do
                    {
                      v175 = *v174 >> 7;
                      if (*(v53 + 4 * v175) == -1)
                      {
                        *(*(a1 + 240) + 4 * v175) = *(*(a1 + 240) + ((v173[4 * v174[2]] >> 5) & 0x7FFFFFC)) + 1;
                        *(v56 + ((*v174 >> 5) & 0x7FFFFFC)) = v173[4 * v174[2]];
                        *(v53 + ((*v174 >> 5) & 0x7FFFFFC)) = v67;
                        v69 = *(a1 + 512);
                      }

                      ++v172;
                      v174 += 4;
                    }

                    while (v172 < v69);
                  }
                }

                else
                {
                  v6 = v339;
                  v42 = v326;
                  v50 = v335;
                  v49 = v57;
                  if (!v63)
                  {
                    goto LABEL_85;
                  }
                }
              }
            }
          }

LABEL_172:
          *(v50 + 4) &= ~0x10u;
          if (!v41)
          {
            v39 = *(a1 + 416);
            goto LABEL_204;
          }
        }
      }

      v42 = 0;
      v43 = v40 + 1;
      while ((v39 & 0x7FFFFFFF) - 1 != v42)
      {
        v41 = v43[v42++];
        if (v41)
        {
          goto LABEL_52;
        }
      }
    }

LABEL_204:
    bzero(*(a1 + 408), (4 * v39));
    v13 = *(a1 + 456);
  }

  if (v13)
  {
    v215 = 0;
    while (1)
    {
      v216 = *(*(a1 + 448) + 4 * v215);
      v217 = (*(*(a1 + 56) + 8 * (v216 / *(a1 + 80))) + 16 * (v216 % *(a1 + 80)));
      v218 = *(v217 + 2);
      if ((v218 & 2) != 0)
      {
        break;
      }

LABEL_216:
      if (++v215 >= v13)
      {
        goto LABEL_221;
      }
    }

    v219 = *(a1 + 600);
    if (v219)
    {
      v220 = *(*v219 + 8 * v216);
      *&v348 = v220;
      if (v220)
      {
        v221 = *(a1 + 616);
        v222 = *(v221 + 8);
        if ((*(v221 + 12) & 0x7FFFFFFFu) <= v222)
        {
          physx::shdfnd::Array<physx::PartitionEdge *,physx::shdfnd::ReflectionAllocator<physx::PartitionEdge *>>::growAndPushBack(v221, &v348);
          v218 = *(v217 + 2);
        }

        else
        {
          *(*v221 + 8 * v222) = v220;
          *(v221 + 8) = v222 + 1;
        }

        *(**(a1 + 600) + 8 * v216) = 0;
        if ((v218 & 4) == 0)
        {
          goto LABEL_215;
        }

        goto LABEL_214;
      }
    }

    else
    {
      *&v348 = 0;
    }

    if ((v218 & 4) == 0)
    {
LABEL_215:
      *v217 = 0;
      *(v217 + 2) = 16;
      *(v217 + 1) = -1;
      physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(a1 + 304, v216 + 1);
      *(*(a1 + 304) + 4 * (v216 >> 5)) &= ~(1 << v216);
      v13 = *(a1 + 456);
      goto LABEL_216;
    }

LABEL_214:
    physx::IG::IslandSim::removeEdgeFromActivatingList(a1, v216);
    --*(a1 + 232 + 4 * *v217);
    goto LABEL_215;
  }

LABEL_221:
  *(a1 + 456) = 0;
  v223 = a2;
  if (*(a2 + 8))
  {
    v224 = 0;
    v225 = a1 + 336;
    while (1)
    {
      v226 = *(*v223 + 4 * v224);
      v227 = v226 >> 7;
      v228 = *(a1 + 272);
      v229 = *(v228 + 4 * (v226 >> 7));
      v230 = *(a1 + 24);
      v231 = v230 + 32 * (v226 >> 7);
      if (v229 != -1)
      {
        v232 = (*(a1 + 120) + 44 * v229);
        v233 = v232 + 1;
        v235 = *(v231 + 8);
        v234 = *(v231 + 12);
        if (v235 < 0xFFFFFF80)
        {
          v233 = (v230 + ((v235 >> 2) & 0x3FFFFFE0) + 12);
        }

        *v233 = v234;
        if (v234 > 0xFFFFFF7F)
        {
          *v232 = *(v231 + 8);
        }

        else
        {
          *(v230 + ((v234 >> 2) & 0x3FFFFFE0) + 8) = *(v231 + 8);
        }

        --v232[*(v231 + 5) + 2];
        *(v231 + 8) = 0x7F0000007FLL;
        *(v228 + 4 * v227) = -1;
        if (!(v232[2] + v232[3]))
        {
          physx::IG::HandleManager<unsigned int>::freeHandle(a1, v229);
          v236 = v232[4];
          if (v236 != -1)
          {
            v237 = *(a1 + 320);
            v238 = *(v237 + 4 * (*(a1 + 328) - 1));
            *(*(a1 + 120) + 44 * v238 + 16) = v236;
            *(v237 + 4 * v232[4]) = v238;
            --*(a1 + 328);
            v232[4] = -1;
            *(*(a1 + 136) + 4 * v229) -= *(v231 + 6);
          }

          *(*(a1 + 288) + ((v229 >> 3) & 0x1FFFFFFC)) &= ~(1 << v229);
          *v232 = 0x7F0000007FLL;
          v232[4] = -1;
          v223 = a2;
        }
      }

      v239 = *(a1 + 40);
      v240 = *(v239 + 4 * v227);
      if ((*(v231 + 4) & 4) != 0)
      {
        break;
      }

      if (v240 != 0x1FFFFFF)
      {
        v241 = *(*(a1 + 24) + 32 * v227 + 5);
        v242 = (a1 + 152 + 16 * v241);
        v243 = *(v225 + 4 * v241);
        v244 = *v242;
        if (v240 < v243)
        {
          v245 = *(v244 + 4 * (v243 - 1));
          v246 = (v245 >> 5) & 0x7FFFFFC;
          *(v239 + 4 * v227) = *(v239 + v246);
          *(v239 + v246) = v240;
          *(v244 + 4 * v240) = v245;
          *(v244 + 4 * *(v239 + 4 * v227)) = v226;
          --*(v225 + 4 * v241);
          v240 = *(v239 + 4 * v227);
        }

        v247 = v242 + 1;
LABEL_241:
        v248 = *(v244 + 4 * (*v247 - 1));
        *(v239 + ((v248 >> 5) & 0x7FFFFFC)) = v240;
        *(v244 + 4 * *(v239 + 4 * v227)) = v248;
        --*v247;
        *(v239 + 4 * v227) = 0x1FFFFFF;
      }

LABEL_242:
      *v231 = -1;
      *(v231 + 4) = 8;
      *(v231 + 24) = 0;
      *(v231 + 16) = 0;
      *(v231 + 6) = 0;
      if (++v224 >= *(v223 + 8))
      {
        goto LABEL_243;
      }
    }

    if (v240 == 0x1FFFFFF || *(*(a1 + 24) + 32 * v227 + 16))
    {
      goto LABEL_242;
    }

    v244 = *(a1 + 184);
    v247 = (a1 + 192);
    goto LABEL_241;
  }

LABEL_243:
  if (!a3)
  {
    goto LABEL_299;
  }

  if (*(a1 + 328))
  {
    v249 = 0;
    v250 = *(a1 + 320);
    v251 = *(a1 + 288);
    v252 = v337;
    do
    {
      *(v251 + ((*(v250 + 4 * v249) >> 3) & 0x1FFFFFFC)) &= ~(1 << *(v250 + 4 * v249));
      ++v249;
      v253 = *(a1 + 328);
    }

    while (v249 < v253);
  }

  else
  {
    LODWORD(v253) = 0;
    v252 = v337;
  }

  v254 = *(a1 + 192);
  v343 = (a1 + 192);
  if (v254)
  {
    v255 = *(a1 + 184);
    v256 = *(a1 + 24);
    do
    {
      --v254;
      v257 = *(v255 + 4 * v254) >> 7;
      v258 = (v256 + 32 * v257);
      if (v258[1])
      {
        if (v252)
        {
          *(v258 + 4) &= ~2u;
          if (!v258[4])
          {
            v267 = *(a1 + 40);
            v268 = *(v267 + 4 * v257);
            if (v268 != 0x1FFFFFF)
            {
              v269 = *(v255 + 4 * (*v343 - 1));
              *(v267 + ((v269 >> 5) & 0x7FFFFFC)) = v268;
              *(v255 + 4 * *(v267 + 4 * v257)) = v269;
              --*v343;
              *(v267 + 4 * v257) = 0x1FFFFFF;
            }
          }
        }
      }

      else
      {
        v259 = *v258;
        if (*v258 != -1)
        {
          v260 = *(a1 + 88);
          v261 = *(a1 + 608);
          v262 = *v261;
          do
          {
            v263 = *(a1 + 112);
            v264 = *(v260 + 8 * (v259 / v263));
            v265 = *(*(v262 + 8 * ((v259 ^ 1) / *(v261 + 6))) + 4 * ((v259 ^ 1) % *(v261 + 6))) >> 7;
            if (v265 != 0x1FFFFFF)
            {
              v266 = *(*(a1 + 272) + 4 * v265);
              if (v266 != -1)
              {
                *(*(a1 + 288) + ((v266 >> 3) & 0x1FFFFFFC)) |= 1 << v266;
              }
            }

            v259 = *(v264 + 8 * (v259 % v263));
          }

          while (v259 != -1);
        }
      }
    }

    while (v254);
    LODWORD(v253) = *(a1 + 328);
  }

  if (!v253)
  {
    goto LABEL_299;
  }

  v270 = *(a1 + 320);
  v271 = *(a1 + 120);
  v272 = *(a1 + 288);
  v273 = v253;
  v345 = a1 + 336;
  do
  {
    --v273;
    v274 = *(v270 + 4 * v273);
    v275 = v274 >> 5;
    v276 = *(v272 + 4 * (v274 >> 5));
    v277 = 1 << v274;
    *(v272 + 4 * (v274 >> 5)) = v276 | (1 << v274);
    if ((v276 & (1 << v274)) != 0)
    {
      continue;
    }

    v278 = *(v271 + 44 * v274);
    v279 = v278 >> 7;
    if (v278 >> 7 == 0x1FFFFFF)
    {
      LODWORD(v354[0]) = *(v271 + 44 * v274);
      goto LABEL_297;
    }

    v280 = v278 >> 7;
    do
    {
      v281 = *(a1 + 24) + 32 * v280;
      if ((*(v281 + 4) & 1) == 0)
      {
        goto LABEL_298;
      }

      v280 = *(v281 + 8) >> 7;
    }

    while (v280 != 0x1FFFFFF);
    v334 = v274;
    v336 = 1 << v274;
    v338 = v274 >> 5;
    v340 = v273;
    LODWORD(v354[0]) = *(v271 + 44 * v274);
    do
    {
      v282 = *(a1 + 24);
      v283 = v282 + 32 * v279;
      v284 = a1 + 344 + 16 * *(v283 + 5);
      v285 = *(v284 + 8);
      if ((*(v284 + 12) & 0x7FFFFFFFu) <= v285)
      {
        physx::shdfnd::Array<physx::IG::NodeIndex,physx::shdfnd::ReflectionAllocator<physx::IG::NodeIndex>>::growAndPushBack(v284, v354);
        v282 = *(a1 + 24);
      }

      else
      {
        *(*v284 + 4 * v285) = v278;
        ++*(v284 + 8);
      }

      v286 = v354[0];
      v287 = LODWORD(v354[0]) >> 7;
      v288 = (v282 + 32 * v287);
      v289 = *(v288 + 4);
      if ((v289 & 2) == 0)
      {
        goto LABEL_278;
      }

      if ((v288[1] & 4) == 0)
      {
        v290 = *(v288 + 5);
        v291 = *(v345 + 4 * v290);
        v292 = (a1 + 152 + 16 * v290);
        v293 = *(a1 + 40);
        v294 = (v293 + 4 * v287);
        v295 = *v294;
        v296 = *v292;
        if (*v294 < v291)
        {
          v297 = *(v296 + 4 * (v291 - 1));
          v298 = (v297 >> 5) & 0x7FFFFFC;
          *v294 = *(v293 + v298);
          *(v293 + v298) = v295;
          *(v296 + 4 * v295) = v297;
          *(v296 + 4 * *v294) = v286;
          --*(v345 + 4 * v290);
          v295 = *v294;
        }

        v299 = v292 + 1;
        goto LABEL_284;
      }

      if (!v288[4])
      {
        v293 = *(a1 + 40);
        v294 = (v293 + 4 * v287);
        v295 = *v294;
        if (*v294 != 0x1FFFFFF)
        {
          v296 = *(a1 + 184);
          v299 = (a1 + 192);
LABEL_284:
          v300 = *(v296 + 4 * (*v299 - 1));
          *(v293 + ((v300 >> 5) & 0x7FFFFFC)) = v295;
          *(v296 + 4 * *v294) = v300;
          --*v299;
          *v294 = 0x1FFFFFF;
        }
      }

      *(v288 + 4) = v289 & 0xDD;
      while (1)
      {
        v301 = *v288;
        if (*v288 == -1)
        {
          break;
        }

        v302 = *(a1 + 112);
        v303 = *(*(a1 + 88) + 8 * (v301 / v302));
        v304 = *(*(**(a1 + 608) + 8 * ((v301 ^ 1) / *(*(a1 + 608) + 24))) + 4 * ((v301 ^ 1) % *(*(a1 + 608) + 24))) >> 7;
        if (v304 == 0x1FFFFFF || (*(*(a1 + 24) + 32 * v304 + 4) & 2) == 0)
        {
          v305 = v301 >> 1;
          LODWORD(v348) = v305;
          v306 = (*(*(a1 + 56) + 8 * (v305 / *(a1 + 80))) + 16 * (v305 % *(a1 + 80)));
          v307 = *(v306 + 2);
          if ((v307 & 4) != 0)
          {
            *(v306 + 2) = v307 & 0xFFFB;
            --*(a1 + 232 + 4 * *v306);
            physx::IG::IslandSim::removeEdgeFromActivatingList(a1, v305);
            v308 = a1 + 568 + 16 * *v306;
            v309 = *(v308 + 8);
            if ((*(v308 + 12) & 0x7FFFFFFFu) <= v309)
            {
              physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(v308, &v348);
            }

            else
            {
              *(*v308 + 4 * v309) = v348;
              ++*(v308 + 8);
            }
          }
        }

        v288 = (v303 + 8 * (v301 % v302));
      }

LABEL_278:
      LODWORD(v354[0]) = *(v283 + 8);
      LODWORD(v278) = v354[0];
      v279 = LODWORD(v354[0]) >> 7;
    }

    while (v279 != 0x1FFFFFF);
    v271 = *(a1 + 120);
    v270 = *(a1 + 320);
    v272 = *(a1 + 288);
    v275 = v338;
    v273 = v340;
    v277 = v336;
    LODWORD(v274) = v334;
LABEL_297:
    v310 = *(v270 + 4 * (*(a1 + 328) - 1));
    v311 = v271 + 44 * v274;
    v312 = *(v311 + 16);
    *(v271 + 44 * v310 + 16) = v312;
    *(v270 + 4 * v312) = v310;
    --*(a1 + 328);
    *(v311 + 16) = -1;
    *(v272 + 4 * v275) &= ~v277;
LABEL_298:
    ;
  }

  while (v273);
LABEL_299:
  v313 = 0;
  v314 = 1;
  do
  {
    v315 = v314;
    v316 = a1 + 376 + 16 * v313;
    v317 = *(v316 + 8);
    if (v317)
    {
      v318 = *v316;
      v319 = *(a1 + 80);
      v320 = *(a1 + 56);
      do
      {
        v321 = *v318++;
        v322 = *(v320 + 8 * (v321 / v319)) + 16 * (v321 % v319);
        *(v322 + 4) &= ~8u;
        --v317;
      }

      while (v317);
    }

    v314 = 0;
    *(v316 + 8) = 0;
    v313 = 1;
  }

  while ((v315 & 1) != 0);
}