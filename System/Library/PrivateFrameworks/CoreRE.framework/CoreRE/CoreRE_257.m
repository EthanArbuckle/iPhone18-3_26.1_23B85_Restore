uint64_t physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNodePair>>::growAndPushBack(uint64_t result, void *a2)
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
    result = physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNodePair>::allocate(result, 8 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
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

uint64_t physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNodePair>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNodePair>::getName() [T = physx::Sq::IncrementalAABBTreeNodePair]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

void *physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNodePair>>::grow(uint64_t a1)
{
  v2 = 2 * *(a1 + 8);
  *(a1 + 8) = v2;
  v3 = physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNodePair>::allocate(a1, 4 * v2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsSortInternals.h", 155);
  result = memcpy(v3, *(a1 + 16), (4 * *(a1 + 4)));
  if (*(a1 + 24) == 1 && *(a1 + 16))
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *(a1 + 24) = 1;
  *(a1 + 16) = v3;
  return result;
}

uint64_t physx::shdfnd::PoolBase<physx::Sq::AABBTreeIndices,physx::shdfnd::ReflectionAllocator<physx::Sq::AABBTreeIndices>>::~PoolBase(uint64_t a1)
{
  if (*(a1 + 548))
  {
    v13 = 0;
    v14 = 0;
    v2 = *(a1 + 560);
    if (v2)
    {
      do
      {
        v12 = v2;
        v3 = v14;
        if ((HIDWORD(v14) & 0x7FFFFFFFu) <= v14)
        {
          physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::Sq::AABBTreeIndices>>::growAndPushBack(&v13, &v12);
        }

        else
        {
          *(v13 + 8 * v14) = v2;
          LODWORD(v14) = v3 + 1;
        }

        v2 = **(a1 + 560);
        *(a1 + 560) = v2;
      }

      while (v2);
      v4 = v13;
      v5 = v14;
      v6 = HIDWORD(v14);
    }

    else
    {
      v6 = 0;
      v5 = 0;
      v4 = 0;
    }

    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Sq::AABBTreeIndices>>(v4, v5);
    physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Sq::AABBTreeIndices>>(*(a1 + 528), *(a1 + 536));
    if ((v6 & 0x80000000) == 0 && (v6 & 0x7FFFFFFF) != 0 && v4)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v4);
    }
  }

  v7 = *(a1 + 528);
  v8 = *(a1 + 536);
  if (v8)
  {
    v9 = 8 * v8;
    do
    {
      if (*v7)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      }

      ++v7;
      v9 -= 8;
    }

    while (v9);
    v7 = *(a1 + 528);
  }

  v10 = *(a1 + 540);
  if ((v10 & 0x80000000) == 0 && (v10 & 0x7FFFFFFF) != 0)
  {
    if (v7 == (a1 + 8))
    {
      *(a1 + 520) = 0;
    }

    else if (v7)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v7);
    }
  }

  return a1;
}

void physx::shdfnd::sort<void *,physx::shdfnd::Less<void *>,physx::shdfnd::ReflectionAllocator<physx::Sq::AABBTreeIndices>>(uint64_t a1, int a2)
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
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sq::AABBTreeIndices>>::grow(v33);
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
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sq::AABBTreeIndices>>::grow(v33);
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

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::ReflectionAllocator<physx::Sq::AABBTreeIndices>>::growAndPushBack(uint64_t result, void *a2)
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
    result = physx::shdfnd::ReflectionAllocator<physx::Sq::AABBTreeIndices>::allocate(8 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
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

uint64_t physx::shdfnd::ReflectionAllocator<physx::Sq::AABBTreeIndices>::allocate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    v6 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sq::AABBTreeIndices>::getName() [T = physx::Sq::AABBTreeIndices]";
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

void *physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Sq::AABBTreeIndices>>::grow(uint64_t a1)
{
  v2 = 2 * *(a1 + 8);
  *(a1 + 8) = v2;
  v3 = physx::shdfnd::ReflectionAllocator<physx::Sq::AABBTreeIndices>::allocate(4 * v2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsSortInternals.h", 155);
  result = memcpy(v3, *(a1 + 16), (4 * *(a1 + 4)));
  if (*(a1 + 24) == 1 && *(a1 + 16))
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *(a1 + 24) = 1;
  *(a1 + 16) = v3;
  return result;
}

uint64_t MainTreeOBBOverlapCompoundPrunerCallback::invoke(MainTreeOBBOverlapCompoundPrunerCallback *this, float *a2, const physx::Sq::CompoundTree *a3, double a4, double a5, double a6, double a7)
{
  if ((*(a3 + 13) & *(this + 12)) == 0)
  {
    return 1;
  }

  v58 = v7;
  v59 = v8;
  if (!*(*a3 + 1144))
  {
    return 1;
  }

  v12 = *(this + 1);
  v13 = *(v12 + 56) - *(a3 + 12);
  v14 = v13 + v13;
  LODWORD(a7) = *(a3 + 8);
  v15 = *(a3 + 9);
  v16 = (v15 * v15) + -0.5;
  v17 = vsub_f32(*(v12 + 48), *(a3 + 40));
  *v18.f32 = vadd_f32(v17, v17);
  v19 = *(a3 + 24);
  v20 = (vmuls_lane_f32(v18.f32[1], v19, 1) + (v19.f32[0] * v18.f32[0])) + (*&a7 * v14);
  v21.i32[0] = vdup_lane_s32(*v18.f32, 1).u32[0];
  v21.f32[1] = v14;
  v56 = vmla_n_f32(vmla_n_f32(vmul_n_f32(vneg_f32(vmla_f32(vmul_f32(v21, vneg_f32(vzip1_s32(*&a7, v19))), vext_s8(v21, *v18.f32, 4uLL), *(a3 + 28))), v15), *v18.f32, v16), v19, v20);
  v57 = ((v14 * v16) - (((-v19.f32[1] * v18.f32[0]) + (v19.f32[0] * v18.f32[1])) * v15)) + (*&a7 * v20);
  v22 = vadd_f32(v19, v19);
  v18.f32[0] = *&a7 + *&a7;
  v23 = vmul_f32(v19, v22).f32[0];
  v24 = vmuls_lane_f32(v19.f32[1] + v19.f32[1], v19, 1);
  v25 = *&a7 * (*&a7 + *&a7);
  v19.f32[0] = vmuls_lane_f32(v22.f32[0], v19, 1);
  v21.f32[0] = *&a7 * v22.f32[0];
  v22.f32[0] = v15 * v22.f32[0];
  v26 = (v19.f32[1] + v19.f32[1]) * *&a7;
  v27 = v15 * (v19.f32[1] + v19.f32[1]);
  v28 = v15 * v18.f32[0];
  *&v29 = (1.0 - v24) - v25;
  v30.f32[0] = v19.f32[0] + (v15 * v18.f32[0]);
  *&v31 = v21.f32[0] - v27;
  v18.f32[0] = v19.f32[0] - v28;
  *&v32 = (1.0 - v23) - v25;
  *&v33 = v22.f32[0] + v26;
  *&v34 = v21.f32[0] + v27;
  v35 = v26 - v22.f32[0];
  *&v36 = (1.0 - v23) - v24;
  v37.i64[0] = *(v12 + 12);
  v38 = (v12 + 20);
  v39.i32[0] = *(v12 + 24);
  v22.i32[0] = *(v12 + 32);
  v40.i64[0] = __PAIR64__(v34, v32);
  v40.i64[1] = __PAIR64__(v18.u32[0], v30.u32[0]);
  v41.i64[0] = __PAIR64__(v32, v29);
  v41.i64[1] = __PAIR64__(v30.u32[0], v34);
  v30.i32[1] = v18.i32[0];
  v30.i64[1] = __PAIR64__(v29, LODWORD(v35));
  v9.i32[0] = *(v12 + 44);
  *v42.f32 = vrev64_s32(*v37.f32);
  v42.i64[1] = __PAIR64__(v39.u32[0], v42.u32[0]);
  v43.i32[0] = *(v12 + 28);
  v43.i32[1] = v39.i32[0];
  v43.i32[2] = HIDWORD(*(v12 + 36));
  v44 = ((*&v34 * COERCE_FLOAT(*(v12 + 36))) + vmuls_lane_f32(v35, *(v12 + 36), 1)) + (*&v36 * *v9.i32);
  v43.i32[3] = *(v12 + 36);
  v18.f32[1] = v35;
  v18.i64[1] = __PAIR64__(v32, v29);
  v37.i64[1] = __PAIR64__(v43.u32[0], v37.u32[0]);
  v39.i64[1] = *(v12 + 36);
  v39.i32[1] = v43.i32[0];
  v45 = vmulq_f32(v18, v39);
  v39.i64[0] = __PAIR64__(v36, v33);
  v46 = vaddq_f32(vmulq_f32(v30, v42), vmulq_f32(v41, v37));
  v39.i64[1] = __PAIR64__(v33, v31);
  v47.i64[0] = __PAIR64__(v33, v31);
  v47.i64[1] = __PAIR64__(v31, v36);
  *v48.f32 = vdup_lane_s32(v22, 0);
  *&v48.u32[2] = vdup_lane_s32(v9, 0);
  v49 = vld1q_dup_f32(v38);
  v49.i32[3] = v22.i32[0];
  v50 = vmulq_f32(v39, v48);
  v53 = vaddq_f32(v46, vmulq_f32(v47, v49));
  v54 = vaddq_f32(vaddq_f32(vmulq_f32(v40, v43), v45), v50);
  v55 = v44;
  physx::Gu::OBBAABBTests<true>::OBBAABBTests(v52, &v56, &v53, v12, *v54.i64, *v53.i64, *v50.i64, *v49.i64, v45, *v46.i64, *v39.i64, v47);
  return physx::Gu::AABBTreeOverlap<physx::Gu::OBBAABBTests<true>,physx::Sq::IncrementalAABBTree,physx::Sq::IncrementalAABBTreeNode,physx::Sq::PrunerPayload,physx::Sq::PrunerCallback>::operator()(*(*(a3 + 1) + 16), *(*(a3 + 1) + 8), *(*a3 + 1144), v52, *(this + 2));
}

uint64_t MainTreeAABBOverlapCompoundPrunerCallback::invoke(MainTreeAABBOverlapCompoundPrunerCallback *this, float *a2, const physx::Sq::CompoundTree *a3, double a4, double a5, double a6, double a7)
{
  if ((*(a3 + 13) & *(this + 12)) == 0)
  {
    return 1;
  }

  v58 = v7;
  v59 = v8;
  if (!*(*a3 + 1144))
  {
    return 1;
  }

  v12 = *(this + 1);
  v13 = *(v12 + 56) - *(a3 + 12);
  v14 = v13 + v13;
  LODWORD(a7) = *(a3 + 8);
  v15 = *(a3 + 9);
  v16 = (v15 * v15) + -0.5;
  v17 = vsub_f32(*(v12 + 48), *(a3 + 40));
  *v18.f32 = vadd_f32(v17, v17);
  v19 = *(a3 + 24);
  v20 = (vmuls_lane_f32(v18.f32[1], v19, 1) + (v19.f32[0] * v18.f32[0])) + (*&a7 * v14);
  v21.i32[0] = vdup_lane_s32(*v18.f32, 1).u32[0];
  v21.f32[1] = v14;
  v56 = vmla_n_f32(vmla_n_f32(vmul_n_f32(vneg_f32(vmla_f32(vmul_f32(v21, vneg_f32(vzip1_s32(*&a7, v19))), vext_s8(v21, *v18.f32, 4uLL), *(a3 + 28))), v15), *v18.f32, v16), v19, v20);
  v57 = ((v14 * v16) - (((-v19.f32[1] * v18.f32[0]) + (v19.f32[0] * v18.f32[1])) * v15)) + (*&a7 * v20);
  v22 = vadd_f32(v19, v19);
  v18.f32[0] = *&a7 + *&a7;
  v23 = vmul_f32(v19, v22).f32[0];
  v24 = vmuls_lane_f32(v19.f32[1] + v19.f32[1], v19, 1);
  v25 = *&a7 * (*&a7 + *&a7);
  v19.f32[0] = vmuls_lane_f32(v22.f32[0], v19, 1);
  v21.f32[0] = *&a7 * v22.f32[0];
  v22.f32[0] = v15 * v22.f32[0];
  v26 = (v19.f32[1] + v19.f32[1]) * *&a7;
  v27 = v15 * (v19.f32[1] + v19.f32[1]);
  v28 = v15 * v18.f32[0];
  *&v29 = (1.0 - v24) - v25;
  v30.f32[0] = v19.f32[0] + (v15 * v18.f32[0]);
  *&v31 = v21.f32[0] - v27;
  v18.f32[0] = v19.f32[0] - v28;
  *&v32 = (1.0 - v23) - v25;
  *&v33 = v22.f32[0] + v26;
  *&v34 = v21.f32[0] + v27;
  v35 = v26 - v22.f32[0];
  *&v36 = (1.0 - v23) - v24;
  v37.i64[0] = *(v12 + 12);
  v38 = (v12 + 20);
  v39.i32[0] = *(v12 + 24);
  v22.i32[0] = *(v12 + 32);
  v40.i64[0] = __PAIR64__(v34, v32);
  v40.i64[1] = __PAIR64__(v18.u32[0], v30.u32[0]);
  v41.i64[0] = __PAIR64__(v32, v29);
  v41.i64[1] = __PAIR64__(v30.u32[0], v34);
  v30.i32[1] = v18.i32[0];
  v30.i64[1] = __PAIR64__(v29, LODWORD(v35));
  v9.i32[0] = *(v12 + 44);
  *v42.f32 = vrev64_s32(*v37.f32);
  v42.i64[1] = __PAIR64__(v39.u32[0], v42.u32[0]);
  v43.i32[0] = *(v12 + 28);
  v43.i32[1] = v39.i32[0];
  v43.i32[2] = HIDWORD(*(v12 + 36));
  v44 = ((*&v34 * COERCE_FLOAT(*(v12 + 36))) + vmuls_lane_f32(v35, *(v12 + 36), 1)) + (*&v36 * *v9.i32);
  v43.i32[3] = *(v12 + 36);
  v18.f32[1] = v35;
  v18.i64[1] = __PAIR64__(v32, v29);
  v37.i64[1] = __PAIR64__(v43.u32[0], v37.u32[0]);
  v39.i64[1] = *(v12 + 36);
  v39.i32[1] = v43.i32[0];
  v45 = vmulq_f32(v18, v39);
  v39.i64[0] = __PAIR64__(v36, v33);
  v46 = vaddq_f32(vmulq_f32(v30, v42), vmulq_f32(v41, v37));
  v39.i64[1] = __PAIR64__(v33, v31);
  v47.i64[0] = __PAIR64__(v33, v31);
  v47.i64[1] = __PAIR64__(v31, v36);
  *v48.f32 = vdup_lane_s32(v22, 0);
  *&v48.u32[2] = vdup_lane_s32(v9, 0);
  v49 = vld1q_dup_f32(v38);
  v49.i32[3] = v22.i32[0];
  v50 = vmulq_f32(v39, v48);
  v53 = vaddq_f32(v46, vmulq_f32(v47, v49));
  v54 = vaddq_f32(vaddq_f32(vmulq_f32(v40, v43), v45), v50);
  v55 = v44;
  physx::Gu::OBBAABBTests<true>::OBBAABBTests(v52, &v56, &v53, v12, *v54.i64, *v53.i64, *v50.i64, *v49.i64, v45, *v46.i64, *v39.i64, v47);
  return physx::Gu::AABBTreeOverlap<physx::Gu::OBBAABBTests<true>,physx::Sq::IncrementalAABBTree,physx::Sq::IncrementalAABBTreeNode,physx::Sq::PrunerPayload,physx::Sq::PrunerCallback>::operator()(*(*(a3 + 1) + 16), *(*(a3 + 1) + 8), *(*a3 + 1144), v52, *(this + 2));
}

uint64_t MainTreeCapsuleOverlapCompoundPrunerCallback::invoke(MainTreeCapsuleOverlapCompoundPrunerCallback *this, float *a2, float32x2_t *a3, double a4, double a5)
{
  if ((a3[6].i32[1] & *(this + 12)) == 0)
  {
    return 1;
  }

  v8 = *(*a3 + 1144);
  if (!v8)
  {
    return 1;
  }

  v58 = v5;
  v59 = v6;
  v10 = *(this + 1);
  v9 = *(this + 2);
  v11 = *(v10 + 120) - a3[6].f32[0];
  v12 = a3[3];
  _D4 = a3[4];
  v14 = vadd_f32(v12, v12);
  v15 = vadd_f32(_D4, _D4);
  v16 = vrev64_s32(vmul_f32(v12, v14));
  v17 = vmul_f32(_D4, v15);
  v18 = vmul_n_f32(v12, v14.f32[0]);
  v19 = vmul_n_f32(_D4, v14.f32[0]);
  v20 = vmul_lane_f32(_D4, v14, 1);
  v21 = vrev64_s32(v20);
  _S21 = _D4.i32[1];
  v15.f32[0] = vmuls_lane_f32(v15.f32[0], _D4, 1);
  v23 = vdup_lane_s32(v18, 1);
  v24 = vzip1_s32(vadd_f32(v23, v15), vsub_f32(v23, v15));
  __asm { FMOV            V18.2S, #1.0 }

  v30 = vsub_f32(_D18, v16);
  v31.i32[0] = vsub_f32(v19, v21).u32[0];
  v32 = vadd_f32(v19, v21);
  v31.i32[1] = v32.i32[1];
  v33 = vsub_f32(*(v10 + 112), a3[5]);
  v34 = vadd_f32(v33, v33);
  __asm { FMLA            S24, S21, V4.S[1] }

  v36 = vzip1_s32(_D4, v12);
  v37.i32[0] = vdup_lane_s32(v34, 1).u32[0];
  v37.f32[1] = v11 + v11;
  v38 = vmla_f32(vmul_f32(v37, vneg_f32(v36)), vext_s8(v37, v34, 4uLL), vext_s8(v12, v36, 4uLL));
  v36.f32[0] = (vmuls_lane_f32(v12.f32[1], v34, 1) + (v12.f32[0] * v34.f32[0])) + (_D4.f32[0] * (v11 + v11));
  *v47.f32 = vmla_n_f32(vmla_n_f32(vmul_lane_f32(vneg_f32(v38), _D4, 1), v34, _S24), v12, v36.f32[0]);
  v39 = (vmuls_lane_f32(-((-v12.f32[1] * v34.f32[0]) + (v12.f32[0] * v34.f32[1])), _D4, 1) + ((v11 + v11) * _S24)) + (_D4.f32[0] * v36.f32[0]);
  v40 = *(v10 + 12);
  v20.i32[1] = v30.i32[1];
  v41 = vmul_f32(vsub_f32(v20, vext_s8(v19, v16, 4uLL)), *(v10 + 16));
  v42 = vadd_f32(vadd_f32(vmul_f32(v24, vrev64_s32(v40)), vmul_f32(vsub_f32(v30, vdup_lane_s32(v17, 0)), v40)), vmul_n_f32(v31, *(v10 + 20)));
  v43 = vadd_f32(vadd_f32(vmul_f32(v32, v40), v41), vdup_lane_s32(v41, 1)).f32[0];
  v44 = *(v10 + 60) + *(v10 + 60);
  *&a5 = *(v10 + 124) * 1.01;
  v45 = COERCE_DOUBLE(vadd_f32(*v47.f32, vmul_n_f32(v42, v44)));
  v46 = COERCE_DOUBLE(vbsl_s8(vceqz_f32(v42), *v47.f32, vbsl_s8(vcgez_f32(v42), vneg_f32(0x80000000800000), 0x80000000800000)));
  v47.i64[1] = LODWORD(v39);
  *v48.f32 = v42;
  v48.i64[1] = LODWORD(v43);
  *v49.f32 = vext_s8(v42, *&vextq_s8(v48, v48, 8uLL), 4uLL);
  v49.i64[1] = v42.u32[0];
  v57[0] = v47;
  v57[1] = v48;
  v50 = vdupq_lane_s32(*&a5, 0);
  v50.i32[3] = 0;
  v57[2] = v49;
  v57[3] = v50;
  v51 = vabsq_f32(v48);
  *v52.f32 = vext_s8(*v51.i8, *&vextq_s8(v51, v51, 8uLL), 4uLL);
  v53 = v39 + (v43 * v44);
  v54 = -3.4028e38;
  if (v43 >= 0.0)
  {
    v54 = 3.4028e38;
  }

  if (v43 != 0.0)
  {
    v39 = v54;
  }

  if (v44 >= 3.4028e38)
  {
    *v55.i64 = v46;
  }

  else
  {
    v39 = v53;
    *v55.i64 = v45;
  }

  v55.i64[1] = LODWORD(v39);
  v57[4] = v51;
  v52.i64[1] = v51.u32[0];
  v57[5] = v52;
  v57[6] = vminq_f32(v47, v55);
  v57[7] = vmaxq_f32(v47, v55);
  return physx::Gu::AABBTreeOverlap<physx::Gu::CapsuleAABBTest,physx::Sq::IncrementalAABBTree,physx::Sq::IncrementalAABBTreeNode,physx::Sq::PrunerPayload,physx::Sq::PrunerCallback>::operator()(*(*&a3[1] + 16), *(*&a3[1] + 8), v8, v57, v9);
}

uint64_t MainTreeSphereOverlapCompoundPrunerCallback::invoke(MainTreeSphereOverlapCompoundPrunerCallback *this, float *a2, const physx::Sq::CompoundTree *a3, double a4, double a5, double a6, double a7, double a8)
{
  v24 = *MEMORY[0x1E69E9840];
  if ((*(a3 + 13) & *(this + 12)) == 0)
  {
    return 1;
  }

  v9 = *(*a3 + 1144);
  if (!v9)
  {
    return 1;
  }

  v11 = *(this + 1);
  v10 = *(this + 2);
  v12 = *(v11 + 112);
  *&a4 = *(v11 + 108) - *(a3 + 12);
  LODWORD(a8) = *(a3 + 8);
  v13 = *(a3 + 9);
  v14 = (v13 * v13) + -0.5;
  v15 = vsub_f32(*(v11 + 100), *(a3 + 40));
  v16 = vadd_f32(v15, v15);
  v17 = *(a3 + 24);
  v18.i32[0] = vdup_lane_s32(v16, 1).u32[0];
  v18.f32[1] = *&a4 + *&a4;
  v19 = vmla_f32(vmul_f32(v18, vneg_f32(vzip1_s32(*&a8, v17))), vext_s8(v18, v16, 4uLL), *(a3 + 28));
  v18.f32[0] = (vmuls_lane_f32(v16.f32[1], v17, 1) + (v17.f32[0] * v16.f32[0])) + (*&a8 * (*&a4 + *&a4));
  *&v20 = vmla_n_f32(vmla_n_f32(vmul_n_f32(vneg_f32(v19), v13), v16, v14), v17, v18.f32[0]);
  *(&v20 + 2) = (((*&a4 + *&a4) * v14) - (((-v17.f32[1] * v16.f32[0]) + (v17.f32[0] * v16.f32[1])) * v13)) + (*&a8 * v18.f32[0]);
  HIDWORD(v20) = 0;
  v22 = v20;
  *&a4 = v12 * v12;
  v23 = vdup_lane_s32(*&a4, 0);
  return physx::Gu::AABBTreeOverlap<physx::Gu::SphereAABBTest,physx::Sq::IncrementalAABBTree,physx::Sq::IncrementalAABBTreeNode,physx::Sq::PrunerPayload,physx::Sq::PrunerCallback>::operator()(*(*(a3 + 1) + 16), *(*(a3 + 1) + 8), v9, &v22, v10);
}

uint64_t physx::shdfnd::Array<physx::Sq::AABBPruner::NewTreeFixup,physx::shdfnd::ReflectionAllocator<physx::Sq::AABBPruner::NewTreeFixup>>::growAndPushBack(uint64_t result, void *a2)
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
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sq::AABBPruner::NewTreeFixup>::getName() [T = physx::Sq::AABBPruner::NewTreeFixup]";
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

float32x4_t physx::Gu::OBBAABBTests<true>::OBBAABBTests(uint64_t a1, uint64_t a2, __int32 *a3, uint64_t a4, double a5, double a6, double a7, double a8, float32x4_t a9, double a10, double a11, float32x4_t a12)
{
  *&v12 = *a2;
  *(&v12 + 1) = *(a2 + 8);
  *(a1 + 16) = v12;
  v13.i64[0] = *a4;
  v13.i64[1] = *(a4 + 8);
  *a1 = v13;
  v14.i32[0] = *a3;
  v14.i32[1] = a3[3];
  v14.i64[1] = a3[6];
  a9.i32[0] = a3[1];
  a9.i32[1] = a3[4];
  a9.i32[2] = a3[7];
  a12.i32[0] = a3[2];
  a12.i32[1] = a3[5];
  a12.i32[2] = a3[8];
  v15 = vaddq_f32(vabsq_f32(v14), xmmword_1E3115C00);
  v16 = vaddq_f32(vabsq_f32(a9), xmmword_1E3115C00);
  v17 = vaddq_f32(vabsq_f32(a12), xmmword_1E3115C00);
  v18 = vmulq_f32(v13, v15);
  v18.i64[0] = vpaddq_f32(v18, v18).u64[0];
  v19 = vmulq_f32(v13, v16);
  v19.i64[0] = vpaddq_f32(v19, v19).u64[0];
  v20 = vmulq_f32(v13, v17);
  v20.i64[0] = vpaddq_f32(v20, v20).u64[0];
  v21 = vpadd_f32(*v20.f32, *v20.f32).u32[0];
  *v20.f32 = vext_s8(vpadd_f32(*v18.f32, *v18.f32), vpadd_f32(*v19.f32, *v19.f32), 4uLL);
  v20.i64[1] = v21;
  v19.i64[0] = vextq_s8(v13, v13, 8uLL).u64[0];
  *v18.f32 = vext_s8(*v13.f32, *v19.f32, 4uLL);
  v22 = vrev64_s32(*v19.f32);
  *v19.f32 = vext_s8(v22, *v13.f32, 4uLL);
  v18.i64[1] = v13.u32[0];
  *&v19.u32[2] = vext_s8(*v13.f32, v22, 4uLL);
  v13.i64[0] = vextq_s8(v15, v15, 8uLL).u64[0];
  v23 = vrev64_s32(*v13.f32);
  *v24.f32 = vext_s8(v23, *v15.f32, 4uLL);
  *&v24.u32[2] = vext_s8(*v15.f32, v23, 4uLL);
  *(a1 + 64) = a12;
  *(a1 + 80) = v15;
  *v13.f32 = vext_s8(*v15.f32, *v13.f32, 4uLL);
  v13.i64[1] = v15.u32[0];
  *(a1 + 32) = v14;
  *(a1 + 48) = a9;
  v25 = vmlaq_f32(vmulq_f32(v19, v13), v24, v18);
  v26 = vextq_s8(v16, v16, 8uLL).u64[0];
  *v13.f32 = vrev64_s32(v26);
  *v27.f32 = vext_s8(*v13.f32, *v16.f32, 4uLL);
  *&v27.u32[2] = vext_s8(*v16.f32, *v13.f32, 4uLL);
  *(a1 + 96) = v16;
  *(a1 + 112) = v17;
  *(a1 + 128) = v20;
  *(a1 + 144) = v25;
  *v25.f32 = vext_s8(*v16.f32, v26, 4uLL);
  v25.i64[1] = v16.u32[0];
  v16.i64[0] = vextq_s8(v17, v17, 8uLL).u64[0];
  v28 = vrev64_s32(*v16.f32);
  *v13.f32 = vext_s8(v28, *v17.f32, 4uLL);
  *&v13.u32[2] = vext_s8(*v17.f32, v28, 4uLL);
  *v16.f32 = vext_s8(*v17.f32, *v16.f32, 4uLL);
  v16.i64[1] = v17.u32[0];
  result = vmlaq_f32(vmulq_f32(v19, v16), v13, v18);
  *(a1 + 160) = vmlaq_f32(vmulq_f32(v19, v25), v27, v18);
  *(a1 + 176) = result;
  return result;
}

BOOL physx::Gu::OBBAABBTests<true>::operator()(float32x4_t *a1, float32x4_t a2, float32x4_t a3)
{
  v3 = a1[1];
  if ((vuzp1_s8(vmovn_s32(vcgtq_f32(vabdq_f32(v3, a2), vaddq_f32(a1[8], a3))), *a2.f32).u32[0] & 0xFFFFFF) != 0)
  {
    return 0;
  }

  v4 = vsubq_f32(v3, a2);
  v6 = a1[2];
  v5 = a1[3];
  v8 = a1[4];
  v7 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  v11 = vmulq_n_f32(v6, v4.f32[0]);
  v11.i32[3] = 0;
  v12 = vmlaq_lane_f32(v11, v5, *v4.f32, 1);
  v12.i64[1] = vextq_s8(v12, v12, 8uLL).u32[0];
  v13 = vmlaq_laneq_f32(v12, v8, v4, 2);
  v13.i64[1] = vextq_s8(v13, v13, 8uLL).u32[0];
  v14 = vmlaq_n_f32(*a1, v7, a3.f32[0]);
  v14.i64[1] = vextq_s8(v14, v14, 8uLL).u32[0];
  v15 = vmlaq_lane_f32(v14, v9, *a3.f32, 1);
  v15.i64[1] = vextq_s8(v15, v15, 8uLL).u32[0];
  v16 = vmlaq_laneq_f32(v15, v10, a3, 2);
  v16.i64[1] = vextq_s8(v16, v16, 8uLL).u32[0];
  if ((vuzp1_s8(vmovn_s32(vcgtq_f32(vabsq_f32(v13), v16)), *v7.f32).u32[0] & 0xFFFFFF) != 0)
  {
    return 0;
  }

  v18 = vdupq_lane_s32(*a3.f32, 1);
  v19 = vdupq_laneq_s32(a3, 2);
  v20 = vmulq_laneq_f32(v5, v4, 2);
  v20.i32[3] = 0;
  v21 = vmlsq_f32(v20, vdupq_lane_s32(*v4.f32, 1), v8);
  v21.i64[1] = vextq_s8(v21, v21, 8uLL).u32[0];
  v22 = vmlaq_f32(a1[9], v18, v10);
  v22.i64[1] = vextq_s8(v22, v22, 8uLL).u32[0];
  v23 = vmlaq_f32(v22, v19, v9);
  v23.i64[1] = vextq_s8(v23, v23, 8uLL).u32[0];
  v24 = vnegq_f32(v23);
  v24.i32[3] = 0;
  v25 = vdupq_lane_s32(*a3.f32, 0);
  v26 = vmulq_n_f32(v8, v4.f32[0]);
  v26.i32[3] = 0;
  v27 = vmlsq_f32(v26, vdupq_laneq_s32(v4, 2), v6);
  v27.i64[1] = vextq_s8(v27, v27, 8uLL).u32[0];
  v28 = vmlaq_f32(a1[10], v25, v10);
  v28.i64[1] = vextq_s8(v28, v28, 8uLL).u32[0];
  v29 = vmlaq_f32(v28, v19, v7);
  v29.i64[1] = vextq_s8(v29, v29, 8uLL).u32[0];
  v30 = vnegq_f32(v29);
  v30.i32[3] = 0;
  v31 = vmulq_lane_f32(v6, *v4.f32, 1);
  v31.i32[3] = 0;
  v32 = vmlsq_lane_f32(v31, v5, *v4.f32, 0);
  v32.i64[1] = vextq_s8(v32, v32, 8uLL).u32[0];
  v33 = vmlaq_f32(a1[11], v25, v9);
  v33.i64[1] = vextq_s8(v33, v33, 8uLL).u32[0];
  v34 = vmlaq_f32(v33, v18, v7);
  v34.i64[1] = vextq_s8(v34, v34, 8uLL).u32[0];
  v35 = vcgtq_f32(v32, v34);
  v36 = vnegq_f32(v34);
  v36.i32[3] = 0;
  v37 = vcltz_s16(vshl_n_s16(vmovn_s32(vbicq_s8(vbicq_s8(vbicq_s8(vbicq_s8(vbicq_s8(vmvnq_s8(vcgtq_f32(v24, v21)), vcgtq_f32(v21, v23)), vcgtq_f32(v27, v29)), vcgtq_f32(v30, v27)), v35), vcgtq_f32(v36, v32))), 0xFuLL));
  return vuzp1_s8(v37, v37).u32[0] == -1;
}

uint64_t physx::shdfnd::Array<physx::Sq::AABBTreeRuntimeNode const*,physx::shdfnd::InlineAllocator<2048u,physx::shdfnd::ReflectionAllocator<physx::Sq::AABBTreeRuntimeNode const*>>>::resizeUninitialized(uint64_t result, unsigned int a2)
{
  v3 = result;
  if ((*(result + 2068) & 0x7FFFFFFFu) < a2)
  {
    result = physx::shdfnd::Array<physx::Sq::AABBTreeRuntimeNode const*,physx::shdfnd::InlineAllocator<2048u,physx::shdfnd::ReflectionAllocator<physx::Sq::AABBTreeRuntimeNode const*>>>::recreate(result, a2);
  }

  *(v3 + 2064) = a2;
  return result;
}

uint64_t physx::shdfnd::ReflectionAllocator<physx::Sq::AABBTreeRuntimeNode const*>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<const physx::Sq::AABBTreeRuntimeNode *>::getName() [T = const physx::Sq::AABBTreeRuntimeNode *]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

uint64_t physx::shdfnd::Array<physx::Sq::AABBTreeRuntimeNode const*,physx::shdfnd::InlineAllocator<2048u,physx::shdfnd::ReflectionAllocator<physx::Sq::AABBTreeRuntimeNode const*>>>::recreate(uint64_t result, int a2)
{
  v3 = result;
  if (a2)
  {
    v4 = (8 * a2);
    if (v4 > 0x800 || (*(result + 2048) & 1) != 0)
    {
      result = physx::shdfnd::ReflectionAllocator<physx::Sq::AABBTreeRuntimeNode const*>::allocate(result, v4, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
      v5 = result;
    }

    else
    {
      *(result + 2048) = 1;
      v5 = result;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v3 + 2064);
  v7 = *(v3 + 2056);
  if (v6)
  {
    v8 = &v5[v6];
    v9 = v5;
    do
    {
      v10 = *v7++;
      *v9++ = v10;
    }

    while (v9 < v8);
    v7 = *(v3 + 2056);
  }

  if ((*(v3 + 2068) & 0x80000000) == 0)
  {
    if (v7 == v3)
    {
      *(v3 + 2048) = 0;
    }

    else if (v7)
    {
      result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }

  *(v3 + 2056) = v5;
  *(v3 + 2068) = a2;
  return result;
}

uint64_t physx::shdfnd::ReflectionAllocator<physx::Sq::AABBTreeRuntimeNode>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sq::AABBTreeRuntimeNode>::getName() [T = physx::Sq::AABBTreeRuntimeNode]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

uint64_t physx::shdfnd::Array<physx::Sq::IncrementalAABBTreeNode *,physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNode *>>::recreate(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2)
  {
    result = physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNode *>::allocate(result, 8 * a2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
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

uint64_t physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNode *>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNode *>::getName() [T = physx::Sq::IncrementalAABBTreeNode *]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

uint64_t physx::shdfnd::Array<physx::Sq::IncrementalAABBTreeNode const*,physx::shdfnd::InlineAllocator<2048u,physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNode const*>>>::resizeUninitialized(uint64_t result, unsigned int a2)
{
  v3 = result;
  if ((*(result + 2068) & 0x7FFFFFFFu) < a2)
  {
    result = physx::shdfnd::Array<physx::Sq::IncrementalAABBTreeNode const*,physx::shdfnd::InlineAllocator<2048u,physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNode const*>>>::recreate(result, a2);
  }

  *(v3 + 2064) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::Sq::IncrementalAABBTreeNode const*,physx::shdfnd::InlineAllocator<2048u,physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNode const*>>>::recreate(uint64_t result, int a2)
{
  v3 = result;
  v4 = (8 * a2);
  if (v4 > 0x800 || (*(result + 2048) & 1) != 0)
  {
    if (v4)
    {
      v6 = physx::shdfnd::Foundation::mInstance;
      if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
      {
        v7 = "static const char *physx::shdfnd::ReflectionAllocator<const physx::Sq::IncrementalAABBTreeNode *>::getName() [T = const physx::Sq::IncrementalAABBTreeNode *]";
      }

      else
      {
        v7 = "<allocation names disabled>";
      }

      result = (*(*(v6 + 24) + 16))(v6 + 24, v4, v7, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
      v5 = result;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    *(result + 2048) = 1;
    v5 = result;
  }

  v8 = *(v3 + 2064);
  v9 = *(v3 + 2056);
  if (v8)
  {
    v10 = &v5[v8];
    v11 = v5;
    do
    {
      v12 = *v9++;
      *v11++ = v12;
    }

    while (v11 < v10);
    v9 = *(v3 + 2056);
  }

  if ((*(v3 + 2068) & 0x80000000) == 0)
  {
    if (v9 == v3)
    {
      *(v3 + 2048) = 0;
    }

    else if (v9)
    {
      result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }

  *(v3 + 2056) = v5;
  *(v3 + 2068) = a2;
  return result;
}

uint64_t physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<unsigned int const,physx::Sq::IncrementalAABBTreeNode *>,unsigned int,physx::shdfnd::Hash<unsigned int>,physx::shdfnd::internal::HashMapBase<unsigned int,physx::Sq::IncrementalAABBTreeNode *,physx::shdfnd::Hash<unsigned int>,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::create(int32x2_t *a1, int *a2, _BYTE *a3)
{
  v5 = a1[4].u32[1];
  if (!v5)
  {
    v9 = 0;
    goto LABEL_8;
  }

  v6 = *a2;
  v7 = 9 * ((v6 + ~(v6 << 15)) ^ ((v6 + ~(v6 << 15)) >> 10));
  v8 = (v7 ^ (v7 >> 6)) + ~((v7 ^ (v7 >> 6)) << 11);
  v9 = (v8 ^ HIWORD(v8)) & (v5 - 1);
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
        physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<unsigned int const,physx::Sq::IncrementalAABBTreeNode *>,unsigned int,physx::shdfnd::Hash<unsigned int>,physx::shdfnd::internal::HashMapBase<unsigned int,physx::Sq::IncrementalAABBTreeNode *,physx::shdfnd::Hash<unsigned int>,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(a1, v12);
        v5 = a1[4].u32[1];
      }

      v13 = 9 * ((*a2 + ~(*a2 << 15)) ^ ((*a2 + ~(*a2 << 15)) >> 10));
      v9 = (((v13 ^ (v13 >> 6)) + ~((v13 ^ (v13 >> 6)) << 11)) ^ (((v13 ^ (v13 >> 6)) + ~((v13 ^ (v13 >> 6)) << 11)) >> 16)) & (v5 - 1);
    }

    v14 = a1[5].u32[1];
    a1[5].i32[1] = v14 + 1;
    v15 = a1[3];
    v16 = a1[1];
    *(*&a1[2] + 4 * v14) = *(*&v15 + 4 * v9);
    *(*&v15 + 4 * v9) = v14;
    a1[6] = vadd_s32(a1[6], 0x100000001);
    return *&v16 + 16 * v14;
  }

  v11 = a1[1];
  while (*(*&v11 + 16 * v10) != v6)
  {
    v10 = *(*&a1[2] + 4 * v10);
    if (v10 == -1)
    {
      goto LABEL_8;
    }
  }

  result = *&v11 + 16 * v10;
  *a3 = 1;
  return result;
}

uint64_t physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<unsigned int const,physx::Sq::IncrementalAABBTreeNode *>,unsigned int,physx::shdfnd::Hash<unsigned int>,physx::shdfnd::internal::HashMapBase<unsigned int,physx::Sq::IncrementalAABBTreeNode *,physx::shdfnd::Hash<unsigned int>,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::erase(int32x2_t *a1, int *a2, uint64_t a3)
{
  if (!a1[6].i32[1])
  {
    return 0;
  }

  v3 = *a2;
  v4 = 9 * ((v3 + ~(v3 << 15)) ^ ((v3 + ~(v3 << 15)) >> 10));
  v5 = a1[3];
  v6 = (*&v5 + 4 * ((((v4 ^ (v4 >> 6)) + ~((v4 ^ (v4 >> 6)) << 11)) ^ (((v4 ^ (v4 >> 6)) + ~((v4 ^ (v4 >> 6)) << 11)) >> 16)) & (a1[4].i32[1] - 1)));
  v7 = *v6;
  if (v7 == -1)
  {
    return 0;
  }

  v9 = a1[1];
  v8 = a1[2];
  if (*(*&v9 + 16 * v7) != v3)
  {
    while (1)
    {
      v10 = v7;
      v7 = *(*&v8 + 4 * v7);
      if (v7 == -1)
      {
        return 0;
      }

      if (*(*&v9 + 16 * v7) == v3)
      {
        v6 = (*&v8 + 4 * v10);
        break;
      }
    }
  }

  *a3 = v3;
  *(a3 + 8) = *(*&v9 + 16 * v7 + 8);
  v11 = *v6;
  *v6 = *(*&v8 + 4 * v11);
  v12 = vadd_s32(a1[6], 0xFFFFFFFF00000001);
  a1[6] = v12;
  if (v11 != v12.i32[1])
  {
    v13 = *&v9 + 16 * v11;
    v14 = *&v9 + 16 * v12.u32[1];
    *v13 = *v14;
    v15 = *(v14 + 8);
    *(*&v8 + 4 * v11) = *(*&v8 + 4 * v12.u32[1]);
    *(v13 + 8) = v15;
    v16 = 9 * ((*v13 + ~(*v13 << 15)) ^ ((*v13 + ~(*v13 << 15)) >> 10));
    v17 = (*&v5 + 4 * ((((v16 ^ (v16 >> 6)) + ~((v16 ^ (v16 >> 6)) << 11)) ^ (((v16 ^ (v16 >> 6)) + ~((v16 ^ (v16 >> 6)) << 11)) >> 16)) & (a1[4].i32[1] - 1)));
    v18 = a1[6].u32[1];
    v19 = *v17;
    if (v19 != v18)
    {
      do
      {
        v20 = v19;
        v19 = *(*&v8 + 4 * v19);
      }

      while (v19 != v18);
      v17 = (*&v8 + 4 * v20);
    }

    *v17 = v11;
  }

  --a1[5].i32[1];
  return 1;
}

uint64_t physx::shdfnd::PoolBase<physx::Sq::IncrementalAABBTreeNodePair,physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNodePair>>::allocateSlab(uint64_t a1)
{
  result = physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNodePair>::allocate(a1, *(a1 + 552), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsPool.h", 180);
  v3 = result;
  v8 = result;
  v4 = *(a1 + 536);
  if ((*(a1 + 540) & 0x7FFFFFFFu) <= v4)
  {
    result = physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNodePair>>>::growAndPushBack(a1 + 8, &v8);
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

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNodePair>>>::growAndPushBack(uint64_t a1, void *a2)
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
      v7 = physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNodePair>::allocate(a1, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
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

uint64_t physx::shdfnd::PoolBase<physx::Sq::AABBTreeIndices,physx::shdfnd::ReflectionAllocator<physx::Sq::AABBTreeIndices>>::allocateSlab(uint64_t a1)
{
  result = physx::shdfnd::ReflectionAllocator<physx::Sq::AABBTreeIndices>::allocate(*(a1 + 552), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsPool.h", 180);
  v3 = result;
  v8 = result;
  v4 = *(a1 + 536);
  if ((*(a1 + 540) & 0x7FFFFFFFu) <= v4)
  {
    result = physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::Sq::AABBTreeIndices>>>::growAndPushBack(a1 + 8, &v8);
  }

  else
  {
    *(*(a1 + 528) + 8 * v4) = result;
    *(a1 + 536) = v4 + 1;
  }

  v5 = v3 + 20 * *(a1 + 544) - 20;
  if (v5 >= v3)
  {
    v6 = *(a1 + 560);
    v7 = (v3 + 20 * *(a1 + 544) - 20);
    do
    {
      *v7 = v6;
      v7 = (v7 - 20);
      v6 = v5;
      v5 = v7;
    }

    while (v7 >= v3);
    *(a1 + 560) = v7 + 20;
  }

  return result;
}

uint64_t physx::shdfnd::Array<void *,physx::shdfnd::InlineAllocator<512u,physx::shdfnd::ReflectionAllocator<physx::Sq::AABBTreeIndices>>>::growAndPushBack(uint64_t result, void *a2)
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
      result = physx::shdfnd::ReflectionAllocator<physx::Sq::AABBTreeIndices>::allocate(result, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
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

uint64_t physx::shdfnd::Array<physx::Sq::IncrementalAABBTreeNode *,physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNode *>>::growAndPushBack(uint64_t a1, void *a2)
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
    v6 = physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNode *>::allocate(a1, 8 * v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
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

void *physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<unsigned int const,unsigned int>,unsigned int,physx::shdfnd::Hash<unsigned int>,physx::shdfnd::internal::HashMapBase<unsigned int,unsigned int,physx::shdfnd::Hash<unsigned int>,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(uint64_t a1, unsigned int a2)
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
      v15 = *v14 + ~(*v14 << 15);
      v16 = (9 * (v15 ^ (v15 >> 10))) ^ ((9 * (v15 ^ (v15 >> 10))) >> 6);
      v17 = ((v16 + ~(v16 << 11)) ^ ((v16 + ~(v16 << 11)) >> 16)) & (v2 - 1);
      *&v10[4 * v13] = *&v9[4 * v17];
      *&v9[4 * v17] = v13;
      v18 = *v14;
      v14 += 2;
      *&v11[8 * v13++] = v18;
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

uint64_t physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<unsigned int const,unsigned int>,unsigned int,physx::shdfnd::Hash<unsigned int>,physx::shdfnd::internal::HashMapBase<unsigned int,unsigned int,physx::shdfnd::Hash<unsigned int>,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::create(int32x2_t *a1, int *a2, _BYTE *a3)
{
  v5 = a1[4].u32[1];
  if (!v5)
  {
    v9 = 0;
    goto LABEL_8;
  }

  v6 = *a2;
  v7 = 9 * ((v6 + ~(v6 << 15)) ^ ((v6 + ~(v6 << 15)) >> 10));
  v8 = (v7 ^ (v7 >> 6)) + ~((v7 ^ (v7 >> 6)) << 11);
  v9 = (v8 ^ HIWORD(v8)) & (v5 - 1);
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
        physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<unsigned int const,unsigned int>,unsigned int,physx::shdfnd::Hash<unsigned int>,physx::shdfnd::internal::HashMapBase<unsigned int,unsigned int,physx::shdfnd::Hash<unsigned int>,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(a1, v12);
        v5 = a1[4].u32[1];
      }

      v13 = 9 * ((*a2 + ~(*a2 << 15)) ^ ((*a2 + ~(*a2 << 15)) >> 10));
      v9 = (((v13 ^ (v13 >> 6)) + ~((v13 ^ (v13 >> 6)) << 11)) ^ (((v13 ^ (v13 >> 6)) + ~((v13 ^ (v13 >> 6)) << 11)) >> 16)) & (v5 - 1);
    }

    v14 = a1[5].u32[1];
    a1[5].i32[1] = v14 + 1;
    v15 = a1[3];
    v16 = a1[1];
    *(*&a1[2] + 4 * v14) = *(*&v15 + 4 * v9);
    *(*&v15 + 4 * v9) = v14;
    a1[6] = vadd_s32(a1[6], 0x100000001);
    return *&v16 + 8 * v14;
  }

  v11 = a1[1];
  while (*(*&v11 + 8 * v10) != v6)
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

uint64_t MainTreeRaycastCompoundPrunerCallback<false>::invoke(uint64_t a1, float *a2, uint64_t a3)
{
  if ((*(a3 + 52) & *(a1 + 40)) == 0)
  {
    return 1;
  }

  v5 = *a3;
  if (!*(*a3 + 1144))
  {
    return 1;
  }

  v33 = v3;
  v34 = v4;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = v6[1] - *(a3 + 44);
  v9 = v6[2] - *(a3 + 48);
  v10 = (*v6 - *(a3 + 40)) + (*v6 - *(a3 + 40));
  v11 = v8 + v8;
  v12 = v9 + v9;
  v14 = *(a3 + 32);
  v13 = *(a3 + 36);
  v15 = (v13 * v13) + -0.5;
  v16 = *(a3 + 24);
  v17 = *(a3 + 28);
  v18 = ((v11 * v17) + (v16 * v10)) + (v14 * v12);
  v31.f32[0] = ((v10 * v15) - (((v17 * v12) - (v14 * v11)) * v13)) + (v16 * v18);
  v31.f32[1] = ((v11 * v15) - (((v14 * v10) - (v16 * v12)) * v13)) + (v17 * v18);
  v32 = ((v12 * v15) - (((v16 * v11) - (v17 * v10)) * v13)) + (v14 * v18);
  v19 = *v7 + *v7;
  v20 = v7[1] + v7[1];
  v21 = v7[2] + v7[2];
  v22 = ((v17 * v20) + (v16 * v19)) + (v14 * v21);
  v29.f32[0] = ((v19 * v15) - (((v17 * v21) - (v14 * v20)) * v13)) + (v16 * v22);
  v29.f32[1] = ((v20 * v15) - (((v14 * v19) - (v16 * v21)) * v13)) + (v17 * v22);
  v30 = ((v21 * v15) - (((v16 * v20) - (v17 * v19)) * v13)) + (v14 * v22);
  v23 = *(a1 + 24);
  v24 = *(a1 + 32);
  v27 = *v23;
  v28 = *(v23 + 2);
  return physx::Gu::AABBTreeRaycast<false,physx::Sq::IncrementalAABBTree,physx::Sq::IncrementalAABBTreeNode,physx::Sq::PrunerPayload,physx::Sq::PrunerCallback>::operator()(&v26, *(*(a3 + 8) + 16), *(*(a3 + 8) + 8), v5, &v31, &v29, a2, &v27, v24);
}

uint64_t MainTreeRaycastCompoundPrunerCallback<true>::invoke(uint64_t a1, float *a2, uint64_t a3)
{
  if ((*(a3 + 52) & *(a1 + 40)) == 0)
  {
    return 1;
  }

  v5 = *a3;
  if (!*(*a3 + 1144))
  {
    return 1;
  }

  v81 = v3;
  v82 = v4;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a3 + 40);
  v9 = *(a3 + 44);
  v10 = v6[2];
  v11 = *(a3 + 48);
  v12 = (*v6 - v8) + (*v6 - v8);
  v13 = (v6[1] - v9) + (v6[1] - v9);
  v14 = (v10 - v11) + (v10 - v11);
  v16 = *(a3 + 32);
  v15 = *(a3 + 36);
  v17 = (v15 * v15) + -0.5;
  v18 = *(a3 + 24);
  v19 = *(a3 + 28);
  v20 = ((v13 * v19) + (v18 * v12)) + (v16 * v14);
  v79.f32[0] = ((v12 * v17) - (((v19 * v14) - (v16 * v13)) * v15)) + (v18 * v20);
  v79.f32[1] = ((v13 * v17) - (((v16 * v12) - (v18 * v14)) * v15)) + (v19 * v20);
  v80 = ((v14 * v17) - (((v18 * v13) - (v19 * v12)) * v15)) + (v16 * v20);
  v21 = *v7 + *v7;
  v22 = v7[1] + v7[1];
  v23 = v7[2] + v7[2];
  v24 = ((v19 * v22) + (v18 * v21)) + (v16 * v23);
  v77.f32[0] = ((v21 * v17) - (((v19 * v23) - (v16 * v22)) * v15)) + (v18 * v24);
  v77.f32[1] = ((v22 * v17) - (((v16 * v21) - (v18 * v23)) * v15)) + (v19 * v24);
  v78 = ((v23 * v17) - (((v18 * v22) - (v19 * v21)) * v15)) + (v16 * v24);
  v25 = *(a1 + 24);
  v26 = v25[1];
  v27 = v25[2];
  v28 = v6[1];
  v29 = *v6 - *v25;
  v30 = v28 - v26;
  v31 = v10 - v27;
  v32 = *v25 + *v6;
  v33 = v26 + v28;
  v34 = v27 + v10;
  if (v29 <= v32)
  {
    v35 = -v16;
    v36 = -v19;
    v37 = v11 * -2.0;
    v38 = v8 * -2.0;
    v39 = v9 * -2.0;
    v40 = ((v39 * v19) + (v18 * v38)) + (v16 * v37);
    v41 = ((v37 * v17) - (((v38 * -v19) + (v18 * v39)) * v15)) + (v16 * v40);
    v42 = ((v39 * v17) - (((v37 * -v18) + (v16 * v38)) * v15)) + (v19 * v40);
    v43 = ((v38 * v17) - (((v39 * -v16) + (v19 * v37)) * v15)) + (v18 * v40);
    v44 = ((v29 + v32) * 0.5) + ((v29 + v32) * 0.5);
    v45 = ((v30 + v33) * 0.5) + ((v30 + v33) * 0.5);
    v46 = ((v31 + v34) * 0.5) + ((v31 + v34) * 0.5);
    v47 = ((v45 * -v19) + (-v18 * v44)) + (-v16 * v46);
    v48 = ((v15 * ((v16 * v45) + (-v19 * v46))) + (v44 * v17)) + (-v18 * v47);
    v49 = ((v15 * ((v18 * v46) + (-v16 * v44))) + (v45 * v17)) + (-v19 * v47);
    v50 = ((v15 * ((v19 * v44) + (-v18 * v45))) + (v46 * v17)) + (-v16 * v47);
    v51 = v43 + v48;
    v52 = v42 + v49;
    v53 = v41 + v50;
    v54 = -v18 - v18;
    v55 = -v19 - v19;
    v56 = -v16 - v16;
    v57 = v55 * v36;
    v58 = v56 * v35;
    v59 = v54 * v36;
    v60 = v54 * v35;
    v61 = v15 * v54;
    v62 = v55 * v35;
    v63 = v15 * v55;
    v64 = v15 * v56;
    v65 = (v18 * v54) + 1.0;
    v66 = (v32 - v29) * 0.5;
    v67 = (v33 - v30) * 0.5;
    v68 = (v34 - v31) * 0.5;
    v69 = (v59 + v64) * v66;
    v70 = (fabsf(((1.0 - v57) - v58) * v66) + fabsf((v59 - v64) * v67)) + fabsf((v60 + v63) * v68);
    v71 = (fabsf(v69) + fabsf((v65 - v58) * v67)) + fabsf((v62 - v61) * v68);
    v72 = (fabsf((v60 - v63) * v66) + fabsf((v61 + v62) * v67)) + fabsf((v65 - v57) * v68);
    v29 = v51 - v70;
    v30 = v52 - v71;
    v31 = v53 - v72;
    v32 = v70 + v51;
    v33 = v71 + v52;
    v34 = v72 + v53;
  }

  v75.f32[0] = (v32 - v29) * 0.5;
  v75.f32[1] = (v33 - v30) * 0.5;
  v76 = (v34 - v31) * 0.5;
  return physx::Gu::AABBTreeRaycast<true,physx::Sq::IncrementalAABBTree,physx::Sq::IncrementalAABBTreeNode,physx::Sq::PrunerPayload,physx::Sq::PrunerCallback>::operator()(&v74, *(*(a3 + 8) + 16), *(*(a3 + 8) + 8), v5, &v79, &v77, a2, &v75, *(a1 + 32));
}

uint64_t physx::Sq::CompoundTree::updateObjectAfterManualBoundsUpdates(physx::Sq::CompoundTree *this, unsigned int a2)
{
  v3 = *(this + 1);
  v4 = *(v3 + 8);
  v5 = *(*(v3 + 24) + 4 * a2);
  v8 = 0;
  v9 = 0;
  physx::shdfnd::Array<physx::Sq::IncrementalAABBTreeNode *,physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNode *>>::recreate(&v8, 8u);
  v6 = physx::Sq::IncrementalAABBTree::update(*this, *(**(this + 2) + 8 * v5), v5, v4, &v8);
  result = physx::Sq::CompoundTree::updateMapping(this, v5, v6, &v8);
  if ((v9 & 0x8000000000000000) == 0 && (v9 & 0x7FFFFFFF00000000) != 0)
  {
    if (v8)
    {
      return (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }

  return result;
}

uint64_t physx::Sq::CompoundTree::updateMapping(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 8);
  if (v4)
  {
    if (a3)
    {
      if (!*(a3 + 48))
      {
        v5 = *(a3 + 40);
        if (*v5)
        {
          v6 = 0;
          do
          {
            *(**(result + 16) + 8 * v5[++v6]) = a3;
            v5 = *(a3 + 40);
          }

          while (v6 < *v5);
        }
      }
    }

    for (i = 0; i != v4; ++i)
    {
      v8 = *(*a4 + 8 * i);
      v9 = *(v8 + 40);
      if (*v9)
      {
        v10 = 0;
        do
        {
          *(**(result + 16) + 8 * v9[++v10]) = v8;
          v9 = *(v8 + 40);
        }

        while (v10 < *v9);
      }
    }
  }

  else
  {
    *(**(result + 16) + 8 * a2) = a3;
  }

  return result;
}

uint64_t physx::Sq::CompoundTree::removeObject(physx::Sq::CompoundTree *this, unsigned int a2)
{
  v3 = *(this + 1);
  v4 = *(*(v3 + 3) + 4 * a2);
  v5 = physx::Sq::PruningPool::removeObject(v3, a2);
  result = physx::Sq::IncrementalAABBTree::remove(*this, *(**(this + 2) + 8 * v4), v4, *(*(this + 1) + 8));
  if (result)
  {
    if (!*(result + 48))
    {
      v7 = *(result + 40);
      if (*v7)
      {
        v8 = 0;
        do
        {
          *(**(this + 2) + 8 * v7[++v8]) = result;
          v7 = *(result + 40);
        }

        while (v8 < *v7);
      }
    }
  }

  *(**(this + 2) + 8 * v4) = *(**(this + 2) + 8 * v5);
  if (v5 != v4)
  {
    v9 = *(*(**(this + 2) + 8 * v4) + 40);
    v10 = *v9;
    if (v10)
    {
      for (i = v9 + 1; *i != v5; ++i)
      {
        if (!--v10)
        {
          return result;
        }
      }

      *i = v4;
    }
  }

  return result;
}

uint64_t physx::Sq::PruningPool::removeObject(physx::Sq::PruningPool *this, unsigned int a2)
{
  v2 = *(this + 3);
  v3 = *(v2 + 4 * a2);
  v4 = (*this - 1);
  *this = v4;
  if (v4 != v3)
  {
    v5 = *(this + 1);
    v6 = *(this + 2);
    v7 = v5 + 24 * v4;
    v8 = v5 + 24 * v3;
    v9 = *(*(this + 4) + 4 * v4);
    *v8 = *v7;
    *(v8 + 16) = *(v7 + 16);
    *(v6 + 16 * v3) = *(v6 + 16 * v4);
    v2 = *(this + 3);
    *(*(this + 4) + 4 * v3) = v9;
    *(v2 + 4 * v9) = v3;
  }

  *(v2 + 4 * a2) = *(this + 10);
  *(this + 10) = a2;
  return v4;
}

uint64_t physx::Sq::CompoundTree::addObject(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  *&v11 = a4;
  *(&v11 + 1) = a5;
  physx::Sq::PruningPool::addObjects(*(a1 + 8), a2, a3, &v11, 1u);
  LODWORD(v5) = *(*(*(a1 + 8) + 24) + 4 * *v5);
  v9 = 0;
  v10 = 0;
  physx::shdfnd::Array<physx::Sq::IncrementalAABBTreeNode *,physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNode *>>::recreate(&v9, 8u);
  v7 = physx::Sq::IncrementalAABBTree::insert(*a1, v5, *(*(a1 + 8) + 8), &v9);
  physx::Sq::CompoundTree::updateMapping(a1, v5, v7, &v9);
  if ((v10 & 0x8000000000000000) == 0 && (v10 & 0x7FFFFFFF00000000) != 0 && v9)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  return 1;
}

uint64_t physx::Sq::PruningPool::addObjects(physx::Sq::PruningPool *this, uint64_t a2, uint64_t a3, __int128 *a4, unsigned int a5)
{
  if (a5)
  {
    v8 = 0;
    v9 = (a3 + 16);
    v10 = a5;
    while (1)
    {
      v11 = *this;
      if (*this == *(this + 1))
      {
        v12 = 2 * v11;
        if (v12 <= 0x40)
        {
          v13 = 64;
        }

        else
        {
          v13 = v12;
        }

        if (!physx::Sq::PruningPool::resize(this, v13))
        {
          *(a2 + 4 * v8) = -1;
          return v8;
        }

        v11 = *this;
      }

      *this = v11 + 1;
      v14 = *(this + 10);
      if (v14 == -1)
      {
        v14 = v11;
        v15 = v11;
      }

      else
      {
        *(this + 10) = *(*(this + 3) + 4 * v14);
        v15 = v14;
      }

      v16 = *(this + 2);
      v17 = (*(this + 1) + 24 * v11);
      *v17 = *(v9 - 2);
      v17[1] = *(v9 - 1);
      v18 = *v9;
      v9 += 3;
      v17[2] = v18;
      v19 = *a4++;
      *(v16 + 16 * v11) = v19;
      v20 = *(this + 3);
      *(*(this + 4) + 4 * v11) = v15;
      *(v20 + 4 * v14) = v11;
      *(a2 + 4 * v8++) = v15;
      if (v10 == v8)
      {
        return v10;
      }
    }
  }

  return 0;
}

void physx::Sq::CompoundTreePool::~CompoundTreePool(physx::Sq::CompoundTreePool *this)
{
  if (*(this + 1))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 1) = 0;
  if (*(this + 2))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 2) = 0;
}

uint64_t physx::Sq::CompoundTreePool::resize(physx::Sq::CompoundTreePool *this, unsigned int a2)
{
  if (a2 == -1)
  {
    v4 = 0;
  }

  else
  {
    v4 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 24 * (a2 + 1), "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/scenequery/src/SqCompoundPruningPool.cpp", 152);
    if (!a2)
    {
      v5 = 0;
      goto LABEL_16;
    }
  }

  v5 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 56 * a2, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/scenequery/src/SqCompoundPruningPool.cpp", 153);
  bzero(v5, 56 * a2);
  if (v4 && v5)
  {
    v6 = *(this + 1);
    if (v6)
    {
      memcpy(v4, v6, (24 * *this));
    }

    v7 = *(this + 2);
    if (v7)
    {
      memcpy(v5, v7, (56 * *this));
    }

    *(this + 1) = a2;
    if (*(this + 1))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    *(this + 1) = 0;
    if (*(this + 2))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    *(this + 1) = v4;
    *(this + 2) = v5;
    return 1;
  }

LABEL_16:
  if (v4)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v4);
  }

  if (v5)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v5);
  }

  return 0;
}

float physx::Sq::CompoundTreePool::shiftOrigin(unsigned int *a1, uint64_t a2)
{
  v2 = *a1;
  if (v2)
  {
    v3 = (*(a1 + 1) + 16);
    v4 = (*(a1 + 2) + 48);
    do
    {
      v5 = v3[-1];
      v3[-2] = vsub_f32(v3[-2], *a2);
      v6.i32[0] = *(a2 + 8);
      v6.i32[1] = *a2;
      v3[-1] = vsub_f32(v5, v6);
      *v3 = vsub_f32(*v3, *(a2 + 4));
      v3 += 3;
      *(v4 - 1) = vsub_f32(*(v4 - 2), *a2);
      result = *v4 - *(a2 + 8);
      *v4 = result;
      v4 += 14;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t physx::Sq::CompoundTreePool::addCompound(physx::Sq::CompoundTreePool *this, uint64_t a2, void *a3, void *a4, uint64_t a5, int a6, __int128 *a7)
{
  v14 = *this;
  if (v14 == *(this + 1))
  {
    if ((2 * v14) <= 0x20)
    {
      v15 = 32;
    }

    else
    {
      v15 = 2 * v14;
    }

    if (!physx::Sq::CompoundTreePool::resize(this, v15))
    {
      physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 16, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/scenequery/src/SqCompoundPruningPool.cpp", 207, "CompoundTreePool::addCompound memory allocation in resize failed.", v16, v17, v18, v30);
      return 0xFFFFFFFFLL;
    }

    v14 = *this;
  }

  *this = v14 + 1;
  v19 = (*(this + 1) + 24 * v14);
  *v19 = *a4;
  v19[1] = a4[1];
  v19[2] = a4[2];
  v20 = (*(*a3 + 80))(a3);
  v21 = *(this + 2) + 56 * v14;
  *(v21 + 24) = *a5;
  *(v21 + 40) = *(a5 + 16);
  *(v21 + 48) = *(a5 + 24);
  *(v21 + 52) = a6;
  v22 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 48, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/scenequery/src/SqCompoundPruningPool.cpp", 228);
  v23 = v22;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 32) = 0;
  *(v22 + 40) = -1;
  if (v20)
  {
    physx::Sq::PruningPool::resize(v22, v20);
  }

  v24 = (*(*a3 + 72))(a3);
  physx::Sq::PruningPool::addObjects(v23, a2, v24, a7, v20);
  *(v21 + 8) = v23;
  v25 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 16, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/scenequery/src/SqCompoundPruningPool.cpp", 234);
  *v25 = 0;
  v25[1] = 0;
  physx::shdfnd::Array<physx::Sq::IncrementalAABBTreeNode *,physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTreeNode *>>::resizeUninitialized(v25, v20);
  *(v21 + 16) = v25;
  v26 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v27 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sq::IncrementalAABBTree>::getName() [T = physx::Sq::IncrementalAABBTree]";
  }

  else
  {
    v27 = "<allocation names disabled>";
  }

  v28 = (*(*(v26 + 24) + 16))(v26 + 24, 1184, v27, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/scenequery/src/SqCompoundPruningPool.cpp", 238);
  *(v28 + 544) = 0x4000000000;
  *(v28 + 528) = 1;
  *(v28 + 536) = v28 + 16;
  *(v28 + 552) = 256;
  *(v28 + 560) = 5120;
  *(v28 + 568) = 0;
  *(v28 + 1112) = 0x4000000000;
  *(v28 + 1096) = 1;
  *(v28 + 1104) = v28 + 584;
  *(v28 + 1120) = 256;
  *(v28 + 1128) = 0x8000;
  *(v28 + 1136) = 0u;
  *(v28 + 1152) = 0u;
  *(v28 + 1168) = 0u;
  physx::Sq::IncrementalAABBTree::copy(v28, a3, v25);
  *v21 = v28;
  return v14;
}

float physx::Sq::CompoundTreePool::removeCompound(physx::Sq::CompoundTreePool *this, unsigned int a2)
{
  v4 = a2;
  v5 = *(*(this + 2) + 56 * a2);
  v6 = *(v5 + 143);
  if (v6)
  {
    physx::Sq::IncrementalAABBTree::releaseNode(v5, v6);
    *(v5 + 143) = 0;
    v5 = *(*(this + 2) + 56 * v4);
  }

  physx::Sq::IncrementalAABBTree::~IncrementalAABBTree(v5);
  v7 = *(this + 2);
  if (*(v7 + 56 * v4))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    v7 = *(this + 2);
  }

  v8 = (v7 + 56 * v4);
  *v8 = 0;
  v9 = v8[2];
  *(v9 + 8) = 0;
  v10 = *(v9 + 12);
  if (v10 < 0 || ((v10 & 0x7FFFFFFF) != 0 ? (v11 = *v9 == 0) : (v11 = 1), v11 || ((*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, *v9), v12 = *(this + 2), *(v12 + 56 * v4 + 16))))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    v12 = *(this + 2);
  }

  v13 = v12 + 56 * v4;
  *(v13 + 16) = 0;
  physx::Sq::PruningPool::~PruningPool(*(v13 + 8));
  v15 = *(this + 2);
  if (*(v15 + 56 * v4 + 8))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    v15 = *(this + 2);
  }

  *(v15 + 56 * v4 + 8) = 0;
  v16 = *this - 1;
  *this = v16;
  if (v16 != a2)
  {
    v17 = *(this + 1);
    v18 = v17 + 24 * v16;
    v19 = v17 + 24 * v4;
    *v19 = *v18;
    *(v19 + 16) = *(v18 + 16);
    v20 = 56 * v16;
    v21 = (v15 + v20);
    v22 = v15 + 56 * v4;
    v23 = *v21;
    *(v22 + 16) = *(v21 + 2);
    *v22 = v23;
    *(v22 + 24) = *(v21 + 24);
    *(v22 + 40) = *(v21 + 5);
    result = *(v21 + 12);
    *(v22 + 48) = result;
    *(v22 + 52) = *(v21 + 13);
    v24 = (*(this + 2) + v20);
    *v24 = 0;
    v24[1] = 0;
    v24[2] = 0;
  }

  return result;
}

uint64_t physx::Sq::BucketPrunerNode::classifyBoxes(uint64_t result, unsigned int a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, int a7, int a8, float32_t a9, float a10)
{
  v10 = 0;
  v46 = *MEMORY[0x1E69E9840];
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  do
  {
    *&v45[v10 + 80] = xmmword_1E3115DE0;
    *&v45[v10] = xmmword_1E3115DF0;
    v10 += 16;
  }

  while (v10 != 80);
  v11 = 2;
  if (a8 != 1)
  {
    v11 = 1;
  }

  if (a7)
  {
    v12 = 16;
  }

  else
  {
    v12 = 0;
  }

  v13 = a2;
  v14 = a3;
  v15 = a2;
  do
  {
    v16 = v14[1];
    v17 = vsubq_f32(*v14, v16);
    v18 = vaddq_f32(*v14, v16);
    v16.i32[0] = v14->i32[v11];
    v19 = v14[1].f32[v11];
    v20 = (v16.f32[0] + v19) < a10;
    v21 = v16.f32[0] - v19;
    if (v17.f32[0] <= a9)
    {
      v22 = v12;
    }

    else
    {
      v22 = v12 + 1;
    }

    v23 = gCodes[v22 | (2 * (v18.f32[0] < a9)) | (4 * (v21 > a10)) | (8 * v20)];
    v24 = vminq_f32(*&v45[16 * v23 + 80], v17);
    v25 = *&v45[16 * v23];
    *&v45[16 * v23 + 80] = v24;
    *&v45[16 * v23] = vmaxq_f32(v25, v18);
    v14->i32[3] = v23;
    ++*(result + 4 * v23);
    v14 += 2;
    --v15;
  }

  while (v15);
  v26 = 0;
  *(result + 20) = 0;
  v27 = (result + 20);
  v28 = 4;
  v29 = result;
  do
  {
    v26 += *v29;
    v29[6] = v26;
    ++v29;
    --v28;
  }

  while (v28);
  v30 = (a3 + 16);
  do
  {
    v31 = *(v30 - 1);
    v32 = v27[v31];
    v27[v31] = v32 + 1;
    v33 = (a5 + 32 * v32);
    *v33 = *(v30 - 1);
    v34 = *v30;
    v30 += 2;
    v33[1] = v34;
    v35 = *a4++;
    *(a6 + 16 * v32) = v35;
    --v13;
  }

  while (v13);
  *v27 = 0;
  v36 = 4;
  v37 = result;
  do
  {
    LODWORD(v13) = *v37 + v13;
    v37[6] = v13;
    ++v37;
    --v36;
  }

  while (v36);
  v38 = 0;
  v39 = (result + 72);
  v40.i64[0] = 0x3F0000003F000000;
  v40.i64[1] = 0x3F0000003F000000;
  do
  {
    v41 = *&v45[v38 + 80];
    v42 = *&v45[v38];
    v43 = vmulq_f32(vaddq_f32(v41, v42), v40);
    v44 = vmulq_f32(vsubq_f32(v42, v41), v40);
    *(v39 - 3) = v43.i64[0];
    *(v39 - 4) = v43.i32[2];
    *(v39 - 1) = v44.i64[0];
    *v39 = v44.i32[2];
    v38 += 16;
    v39 += 8;
  }

  while (v38 != 80);
  return result;
}

void *processChildBuckets(void *result, const void *a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v9 = result;
  v10 = 0;
  if (a7 == 1)
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  v12 = (a3 + 12);
  v13 = a3;
  do
  {
    v15 = *v13++;
    v14 = v15;
    if (v15)
    {
      v16 = a3[5];
      v17 = (a5 + 32 * v16);
      v18 = (a6 + 16 * v16);
      physx::Sq::BucketPrunerNode::classifyBoxes(a4 + v10, v14, v17, v18, v9, a2, v10 == 896, a7, *v12, v12[v11]);
      memcpy(v17, v9, 32 * v14);
      result = memcpy(v18, a2, 16 * v14);
    }

    else
    {
      v19 = a4 + v10;
      *v19 = 0;
      *(v19 + 8) = 0;
      *(v19 + 16) = 0;
      *(v19 + 28) = 0;
      *(v19 + 20) = 0;
      *(v19 + 36) = 0;
    }

    v10 += 224;
    v12 += 8;
    a3 = v13;
  }

  while (v10 != 1120);
  return result;
}

int32x4_t *gPrecomputeSort(int32x4_t *result)
{
  if ((vaddvq_s32(*result) + result[1].i32[0]) > 0xF)
  {
    v2 = v202 & 0x7FFFFFF8;
    v3 = v203 & 0x7FFFFFF8;
    v4 = v203 & 0x7FFFFFF8 | 1;
    v5 = v204 & 0x7FFFFFF8 | 2;
    v6 = v205 & 0x7FFFFFF8 | 3;
    v7 = v206 & 0x7FFFFFF8 | 4;
    v8 = v4 > (v202 & 0x7FFFFFF8u);
    if (v4 < (v202 & 0x7FFFFFF8u))
    {
      v9 = v3 + 1;
    }

    else
    {
      v9 = v202 & 0x7FFFFFF8;
    }

    if (v8)
    {
      v2 = v3 + 1;
    }

    if (v5 >= v2)
    {
      v10 = v2;
    }

    else
    {
      v10 = v204 & 0x7FFFFFF8 | 2;
    }

    if (v5 > v2)
    {
      v2 = v204 & 0x7FFFFFF8 | 2;
    }

    if (v6 >= v2)
    {
      v11 = v2;
    }

    else
    {
      v11 = v205 & 0x7FFFFFF8 | 3;
    }

    if (v6 > v2)
    {
      v2 = v205 & 0x7FFFFFF8 | 3;
    }

    if (v7 >= v2)
    {
      v12 = v2;
    }

    else
    {
      v12 = v206 & 0x7FFFFFF8 | 4;
    }

    if (v7 <= v2)
    {
      v7 = v2;
    }

    if (v5 >= v9)
    {
      v13 = v9;
    }

    else
    {
      v13 = v10;
    }

    if (v5 < v9)
    {
      v10 = v9;
    }

    if (v11 >= v10)
    {
      v14 = v10;
    }

    else
    {
      v14 = v11;
    }

    if (v11 > v10)
    {
      v10 = v11;
    }

    if (v12 >= v10)
    {
      v15 = v10;
    }

    else
    {
      v15 = v12;
    }

    if (v12 <= v10)
    {
      v12 = v10;
    }

    v16 = v10 > v7;
    if (v10 <= v7)
    {
      v17 = v12;
    }

    else
    {
      v17 = v7;
    }

    if (v16)
    {
      v7 = v12;
    }

    if (v14 >= v13)
    {
      v18 = v13;
    }

    else
    {
      v18 = v14;
    }

    if (v14 > v13)
    {
      v13 = v14;
    }

    if (v15 >= v13)
    {
      v19 = v13;
    }

    else
    {
      v19 = v15;
    }

    if (v15 > v13)
    {
      v13 = v15;
    }

    if (v17 >= v13)
    {
      v20 = v13;
    }

    else
    {
      v20 = v17;
    }

    if (v17 > v13)
    {
      v13 = v17;
    }

    if (v7 >= v13)
    {
      v21 = v13;
    }

    else
    {
      v21 = v7;
    }

    if (v7 <= v13)
    {
      v7 = v13;
    }

    if (v15 >= v18)
    {
      v22 = v18;
    }

    else
    {
      v22 = v19;
    }

    if (v15 < v18)
    {
      v19 = v18;
    }

    if (v20 >= v19)
    {
      v23 = v19;
    }

    else
    {
      v23 = v20;
    }

    if (v20 > v19)
    {
      v19 = v20;
    }

    if (v21 >= v19)
    {
      v24 = v19;
    }

    else
    {
      v24 = v21;
    }

    if (v21 <= v19)
    {
      LOBYTE(v21) = v19;
    }

    v25 = v19 > v7;
    if (v19 <= v7)
    {
      v26 = v21;
    }

    else
    {
      v26 = v7;
    }

    if (v25)
    {
      LOBYTE(v7) = v21;
    }

    result[13].i16[0] = v22 & 7 | (8 * (v23 & 7)) & 0x3F | ((v24 & 7) << 6) & 0x81FF | ((v26 & 7) << 9) & 0x8FFF | ((v7 & 7) << 12);
    v27 = v202 & 0x7FFFFFF8;
    v28 = v203 & 0x7FFFFFF8;
    v29 = v203 & 0x7FFFFFF8 | 1;
    v30 = v204 & 0x7FFFFFF8 | 2;
    v31 = v205 & 0x7FFFFFF8 | 3;
    v32 = v206 & 0x7FFFFFF8 | 4;
    v33 = v29 > (v202 & 0x7FFFFFF8u);
    if (v29 < (v202 & 0x7FFFFFF8u))
    {
      v34 = v28 + 1;
    }

    else
    {
      v34 = v202 & 0x7FFFFFF8;
    }

    if (v33)
    {
      v27 = v28 + 1;
    }

    if (v30 >= v27)
    {
      v35 = v27;
    }

    else
    {
      v35 = v204 & 0x7FFFFFF8 | 2;
    }

    if (v30 > v27)
    {
      v27 = v204 & 0x7FFFFFF8 | 2;
    }

    if (v31 >= v27)
    {
      v36 = v27;
    }

    else
    {
      v36 = v205 & 0x7FFFFFF8 | 3;
    }

    if (v31 > v27)
    {
      v27 = v205 & 0x7FFFFFF8 | 3;
    }

    if (v32 >= v27)
    {
      v37 = v27;
    }

    else
    {
      v37 = v206 & 0x7FFFFFF8 | 4;
    }

    if (v32 <= v27)
    {
      v32 = v27;
    }

    if (v30 >= v34)
    {
      v38 = v34;
    }

    else
    {
      v38 = v35;
    }

    if (v30 < v34)
    {
      v35 = v34;
    }

    if (v36 >= v35)
    {
      v39 = v35;
    }

    else
    {
      v39 = v36;
    }

    if (v36 > v35)
    {
      v35 = v36;
    }

    if (v37 >= v35)
    {
      v40 = v35;
    }

    else
    {
      v40 = v37;
    }

    if (v37 <= v35)
    {
      v37 = v35;
    }

    v41 = v35 > v32;
    if (v35 <= v32)
    {
      v42 = v37;
    }

    else
    {
      v42 = v32;
    }

    if (v41)
    {
      v32 = v37;
    }

    if (v39 >= v38)
    {
      v43 = v38;
    }

    else
    {
      v43 = v39;
    }

    if (v39 > v38)
    {
      v38 = v39;
    }

    if (v40 >= v38)
    {
      v44 = v38;
    }

    else
    {
      v44 = v40;
    }

    if (v40 > v38)
    {
      v38 = v40;
    }

    if (v42 >= v38)
    {
      v45 = v38;
    }

    else
    {
      v45 = v42;
    }

    if (v42 > v38)
    {
      v38 = v42;
    }

    if (v32 >= v38)
    {
      v46 = v38;
    }

    else
    {
      v46 = v32;
    }

    if (v32 <= v38)
    {
      v32 = v38;
    }

    if (v40 >= v43)
    {
      v47 = v43;
    }

    else
    {
      v47 = v44;
    }

    if (v40 < v43)
    {
      v44 = v43;
    }

    if (v45 >= v44)
    {
      v48 = v44;
    }

    else
    {
      v48 = v45;
    }

    if (v45 > v44)
    {
      v44 = v45;
    }

    if (v46 >= v44)
    {
      v49 = v44;
    }

    else
    {
      v49 = v46;
    }

    if (v46 <= v44)
    {
      LOBYTE(v46) = v44;
    }

    v50 = v44 > v32;
    if (v44 <= v32)
    {
      v51 = v46;
    }

    else
    {
      v51 = v32;
    }

    if (v50)
    {
      LOBYTE(v32) = v46;
    }

    result[13].i16[1] = v47 & 7 | (8 * (v48 & 7)) & 0x3F | ((v49 & 7) << 6) & 0x81FF | ((v51 & 7) << 9) & 0x8FFF | ((v32 & 7) << 12);
    v52 = v202 & 0x7FFFFFF8;
    v53 = v203 & 0x7FFFFFF8;
    v54 = v203 & 0x7FFFFFF8 | 1;
    v55 = v204 & 0x7FFFFFF8 | 2;
    v56 = v205 & 0x7FFFFFF8 | 3;
    v57 = v206 & 0x7FFFFFF8 | 4;
    v58 = v54 > (v202 & 0x7FFFFFF8u);
    if (v54 < (v202 & 0x7FFFFFF8u))
    {
      v59 = v53 + 1;
    }

    else
    {
      v59 = v202 & 0x7FFFFFF8;
    }

    if (v58)
    {
      v52 = v53 + 1;
    }

    if (v55 >= v52)
    {
      v60 = v52;
    }

    else
    {
      v60 = v204 & 0x7FFFFFF8 | 2;
    }

    if (v55 > v52)
    {
      v52 = v204 & 0x7FFFFFF8 | 2;
    }

    if (v56 >= v52)
    {
      v61 = v52;
    }

    else
    {
      v61 = v205 & 0x7FFFFFF8 | 3;
    }

    if (v56 > v52)
    {
      v52 = v205 & 0x7FFFFFF8 | 3;
    }

    if (v57 >= v52)
    {
      v62 = v52;
    }

    else
    {
      v62 = v206 & 0x7FFFFFF8 | 4;
    }

    if (v57 <= v52)
    {
      v57 = v52;
    }

    if (v55 >= v59)
    {
      v63 = v59;
    }

    else
    {
      v63 = v60;
    }

    if (v55 < v59)
    {
      v60 = v59;
    }

    if (v61 >= v60)
    {
      v64 = v60;
    }

    else
    {
      v64 = v61;
    }

    if (v61 > v60)
    {
      v60 = v61;
    }

    if (v62 >= v60)
    {
      v65 = v60;
    }

    else
    {
      v65 = v62;
    }

    if (v62 <= v60)
    {
      v62 = v60;
    }

    v66 = v60 > v57;
    if (v60 <= v57)
    {
      v67 = v62;
    }

    else
    {
      v67 = v57;
    }

    if (v66)
    {
      v57 = v62;
    }

    if (v64 >= v63)
    {
      v68 = v63;
    }

    else
    {
      v68 = v64;
    }

    if (v64 > v63)
    {
      v63 = v64;
    }

    if (v65 >= v63)
    {
      v69 = v63;
    }

    else
    {
      v69 = v65;
    }

    if (v65 > v63)
    {
      v63 = v65;
    }

    if (v67 >= v63)
    {
      v70 = v63;
    }

    else
    {
      v70 = v67;
    }

    if (v67 > v63)
    {
      v63 = v67;
    }

    if (v57 >= v63)
    {
      v71 = v63;
    }

    else
    {
      v71 = v57;
    }

    if (v57 <= v63)
    {
      v57 = v63;
    }

    if (v65 >= v68)
    {
      v72 = v68;
    }

    else
    {
      v72 = v69;
    }

    if (v65 < v68)
    {
      v69 = v68;
    }

    if (v70 >= v69)
    {
      v73 = v69;
    }

    else
    {
      v73 = v70;
    }

    if (v70 > v69)
    {
      v69 = v70;
    }

    if (v71 >= v69)
    {
      v74 = v69;
    }

    else
    {
      v74 = v71;
    }

    if (v71 <= v69)
    {
      LOBYTE(v71) = v69;
    }

    v75 = v69 > v57;
    if (v69 <= v57)
    {
      v76 = v71;
    }

    else
    {
      v76 = v57;
    }

    if (v75)
    {
      LOBYTE(v57) = v71;
    }

    result[13].i16[2] = v72 & 7 | (8 * (v73 & 7)) & 0x3F | ((v74 & 7) << 6) & 0x81FF | ((v76 & 7) << 9) & 0x8FFF | ((v57 & 7) << 12);
    v77 = v202 & 0x7FFFFFF8;
    v78 = v203 & 0x7FFFFFF8;
    v79 = v203 & 0x7FFFFFF8 | 1;
    v80 = v204 & 0x7FFFFFF8 | 2;
    v81 = v205 & 0x7FFFFFF8 | 3;
    v82 = v206 & 0x7FFFFFF8 | 4;
    v83 = v79 > (v202 & 0x7FFFFFF8u);
    if (v79 < (v202 & 0x7FFFFFF8u))
    {
      v84 = v78 + 1;
    }

    else
    {
      v84 = v202 & 0x7FFFFFF8;
    }

    if (v83)
    {
      v77 = v78 + 1;
    }

    if (v80 >= v77)
    {
      v85 = v77;
    }

    else
    {
      v85 = v204 & 0x7FFFFFF8 | 2;
    }

    if (v80 > v77)
    {
      v77 = v204 & 0x7FFFFFF8 | 2;
    }

    if (v81 >= v77)
    {
      v86 = v77;
    }

    else
    {
      v86 = v205 & 0x7FFFFFF8 | 3;
    }

    if (v81 > v77)
    {
      v77 = v205 & 0x7FFFFFF8 | 3;
    }

    if (v82 >= v77)
    {
      v87 = v77;
    }

    else
    {
      v87 = v206 & 0x7FFFFFF8 | 4;
    }

    if (v82 <= v77)
    {
      v82 = v77;
    }

    if (v80 >= v84)
    {
      v88 = v84;
    }

    else
    {
      v88 = v85;
    }

    if (v80 < v84)
    {
      v85 = v84;
    }

    if (v86 >= v85)
    {
      v89 = v85;
    }

    else
    {
      v89 = v86;
    }

    if (v86 > v85)
    {
      v85 = v86;
    }

    if (v87 >= v85)
    {
      v90 = v85;
    }

    else
    {
      v90 = v87;
    }

    if (v87 <= v85)
    {
      v87 = v85;
    }

    v91 = v85 > v82;
    if (v85 <= v82)
    {
      v92 = v87;
    }

    else
    {
      v92 = v82;
    }

    if (v91)
    {
      v82 = v87;
    }

    if (v89 >= v88)
    {
      v93 = v88;
    }

    else
    {
      v93 = v89;
    }

    if (v89 > v88)
    {
      v88 = v89;
    }

    if (v90 >= v88)
    {
      v94 = v88;
    }

    else
    {
      v94 = v90;
    }

    if (v90 > v88)
    {
      v88 = v90;
    }

    if (v92 >= v88)
    {
      v95 = v88;
    }

    else
    {
      v95 = v92;
    }

    if (v92 > v88)
    {
      v88 = v92;
    }

    if (v82 >= v88)
    {
      v96 = v88;
    }

    else
    {
      v96 = v82;
    }

    if (v82 <= v88)
    {
      v82 = v88;
    }

    if (v90 >= v93)
    {
      v97 = v93;
    }

    else
    {
      v97 = v94;
    }

    if (v90 < v93)
    {
      v94 = v93;
    }

    if (v95 >= v94)
    {
      v98 = v94;
    }

    else
    {
      v98 = v95;
    }

    if (v95 > v94)
    {
      v94 = v95;
    }

    if (v96 >= v94)
    {
      v99 = v94;
    }

    else
    {
      v99 = v96;
    }

    if (v96 <= v94)
    {
      LOBYTE(v96) = v94;
    }

    v100 = v94 > v82;
    if (v94 <= v82)
    {
      v101 = v96;
    }

    else
    {
      v101 = v82;
    }

    if (v100)
    {
      LOBYTE(v82) = v96;
    }

    result[13].i16[3] = v97 & 7 | (8 * (v98 & 7)) & 0x3F | ((v99 & 7) << 6) & 0x81FF | ((v101 & 7) << 9) & 0x8FFF | ((v82 & 7) << 12);
    v102 = v202 & 0x7FFFFFF8;
    v103 = v203 & 0x7FFFFFF8;
    v104 = v203 & 0x7FFFFFF8 | 1;
    v105 = v204 & 0x7FFFFFF8 | 2;
    v106 = v205 & 0x7FFFFFF8 | 3;
    v107 = v206 & 0x7FFFFFF8 | 4;
    v108 = v104 > (v202 & 0x7FFFFFF8u);
    if (v104 < (v202 & 0x7FFFFFF8u))
    {
      v109 = v103 + 1;
    }

    else
    {
      v109 = v202 & 0x7FFFFFF8;
    }

    if (v108)
    {
      v102 = v103 + 1;
    }

    if (v105 >= v102)
    {
      v110 = v102;
    }

    else
    {
      v110 = v204 & 0x7FFFFFF8 | 2;
    }

    if (v105 > v102)
    {
      v102 = v204 & 0x7FFFFFF8 | 2;
    }

    if (v106 >= v102)
    {
      v111 = v102;
    }

    else
    {
      v111 = v205 & 0x7FFFFFF8 | 3;
    }

    if (v106 > v102)
    {
      v102 = v205 & 0x7FFFFFF8 | 3;
    }

    if (v107 >= v102)
    {
      v112 = v102;
    }

    else
    {
      v112 = v206 & 0x7FFFFFF8 | 4;
    }

    if (v107 <= v102)
    {
      v107 = v102;
    }

    if (v105 >= v109)
    {
      v113 = v109;
    }

    else
    {
      v113 = v110;
    }

    if (v105 < v109)
    {
      v110 = v109;
    }

    if (v111 >= v110)
    {
      v114 = v110;
    }

    else
    {
      v114 = v111;
    }

    if (v111 > v110)
    {
      v110 = v111;
    }

    if (v112 >= v110)
    {
      v115 = v110;
    }

    else
    {
      v115 = v112;
    }

    if (v112 <= v110)
    {
      v112 = v110;
    }

    v116 = v110 > v107;
    if (v110 <= v107)
    {
      v117 = v112;
    }

    else
    {
      v117 = v107;
    }

    if (v116)
    {
      v107 = v112;
    }

    if (v114 >= v113)
    {
      v118 = v113;
    }

    else
    {
      v118 = v114;
    }

    if (v114 > v113)
    {
      v113 = v114;
    }

    if (v115 >= v113)
    {
      v119 = v113;
    }

    else
    {
      v119 = v115;
    }

    if (v115 > v113)
    {
      v113 = v115;
    }

    if (v117 >= v113)
    {
      v120 = v113;
    }

    else
    {
      v120 = v117;
    }

    if (v117 > v113)
    {
      v113 = v117;
    }

    if (v107 >= v113)
    {
      v121 = v113;
    }

    else
    {
      v121 = v107;
    }

    if (v107 <= v113)
    {
      v107 = v113;
    }

    if (v115 >= v118)
    {
      v122 = v118;
    }

    else
    {
      v122 = v119;
    }

    if (v115 < v118)
    {
      v119 = v118;
    }

    if (v120 >= v119)
    {
      v123 = v119;
    }

    else
    {
      v123 = v120;
    }

    if (v120 > v119)
    {
      v119 = v120;
    }

    if (v121 >= v119)
    {
      v124 = v119;
    }

    else
    {
      v124 = v121;
    }

    if (v121 <= v119)
    {
      LOBYTE(v121) = v119;
    }

    v125 = v119 > v107;
    if (v119 <= v107)
    {
      v126 = v121;
    }

    else
    {
      v126 = v107;
    }

    if (v125)
    {
      LOBYTE(v107) = v121;
    }

    result[13].i16[4] = v122 & 7 | (8 * (v123 & 7)) & 0x3F | ((v124 & 7) << 6) & 0x81FF | ((v126 & 7) << 9) & 0x8FFF | ((v107 & 7) << 12);
    v127 = v202 & 0x7FFFFFF8;
    v128 = v203 & 0x7FFFFFF8;
    v129 = v203 & 0x7FFFFFF8 | 1;
    v130 = v204 & 0x7FFFFFF8 | 2;
    v131 = v205 & 0x7FFFFFF8 | 3;
    v132 = v206 & 0x7FFFFFF8 | 4;
    v133 = v129 > (v202 & 0x7FFFFFF8u);
    if (v129 < (v202 & 0x7FFFFFF8u))
    {
      v134 = v128 + 1;
    }

    else
    {
      v134 = v202 & 0x7FFFFFF8;
    }

    if (v133)
    {
      v127 = v128 + 1;
    }

    if (v130 >= v127)
    {
      v135 = v127;
    }

    else
    {
      v135 = v204 & 0x7FFFFFF8 | 2;
    }

    if (v130 > v127)
    {
      v127 = v204 & 0x7FFFFFF8 | 2;
    }

    if (v131 >= v127)
    {
      v136 = v127;
    }

    else
    {
      v136 = v205 & 0x7FFFFFF8 | 3;
    }

    if (v131 > v127)
    {
      v127 = v205 & 0x7FFFFFF8 | 3;
    }

    if (v132 >= v127)
    {
      v137 = v127;
    }

    else
    {
      v137 = v206 & 0x7FFFFFF8 | 4;
    }

    if (v132 <= v127)
    {
      v132 = v127;
    }

    if (v130 >= v134)
    {
      v138 = v134;
    }

    else
    {
      v138 = v135;
    }

    if (v130 < v134)
    {
      v135 = v134;
    }

    if (v136 >= v135)
    {
      v139 = v135;
    }

    else
    {
      v139 = v136;
    }

    if (v136 > v135)
    {
      v135 = v136;
    }

    if (v137 >= v135)
    {
      v140 = v135;
    }

    else
    {
      v140 = v137;
    }

    if (v137 <= v135)
    {
      v137 = v135;
    }

    v141 = v135 > v132;
    if (v135 <= v132)
    {
      v142 = v137;
    }

    else
    {
      v142 = v132;
    }

    if (v141)
    {
      v132 = v137;
    }

    if (v139 >= v138)
    {
      v143 = v138;
    }

    else
    {
      v143 = v139;
    }

    if (v139 > v138)
    {
      v138 = v139;
    }

    if (v140 >= v138)
    {
      v144 = v138;
    }

    else
    {
      v144 = v140;
    }

    if (v140 > v138)
    {
      v138 = v140;
    }

    if (v142 >= v138)
    {
      v145 = v138;
    }

    else
    {
      v145 = v142;
    }

    if (v142 > v138)
    {
      v138 = v142;
    }

    if (v132 >= v138)
    {
      v146 = v138;
    }

    else
    {
      v146 = v132;
    }

    if (v132 <= v138)
    {
      v132 = v138;
    }

    if (v140 >= v143)
    {
      v147 = v143;
    }

    else
    {
      v147 = v144;
    }

    if (v140 < v143)
    {
      v144 = v143;
    }

    if (v145 >= v144)
    {
      v148 = v144;
    }

    else
    {
      v148 = v145;
    }

    if (v145 > v144)
    {
      v144 = v145;
    }

    if (v146 >= v144)
    {
      v149 = v144;
    }

    else
    {
      v149 = v146;
    }

    if (v146 <= v144)
    {
      LOBYTE(v146) = v144;
    }

    v150 = v144 > v132;
    if (v144 <= v132)
    {
      v151 = v146;
    }

    else
    {
      v151 = v132;
    }

    if (v150)
    {
      LOBYTE(v132) = v146;
    }

    result[13].i16[5] = v147 & 7 | (8 * (v148 & 7)) & 0x3F | ((v149 & 7) << 6) & 0x81FF | ((v151 & 7) << 9) & 0x8FFF | ((v132 & 7) << 12);
    v152 = v202 & 0x7FFFFFF8;
    v153 = v203 & 0x7FFFFFF8;
    v154 = v203 & 0x7FFFFFF8 | 1;
    v155 = v204 & 0x7FFFFFF8 | 2;
    v156 = v205 & 0x7FFFFFF8 | 3;
    v157 = v206 & 0x7FFFFFF8 | 4;
    v158 = v154 > (v202 & 0x7FFFFFF8u);
    if (v154 < (v202 & 0x7FFFFFF8u))
    {
      v159 = v153 + 1;
    }

    else
    {
      v159 = v202 & 0x7FFFFFF8;
    }

    if (v158)
    {
      v152 = v153 + 1;
    }

    if (v155 >= v152)
    {
      v160 = v152;
    }

    else
    {
      v160 = v204 & 0x7FFFFFF8 | 2;
    }

    if (v155 > v152)
    {
      v152 = v204 & 0x7FFFFFF8 | 2;
    }

    if (v156 >= v152)
    {
      v161 = v152;
    }

    else
    {
      v161 = v205 & 0x7FFFFFF8 | 3;
    }

    if (v156 > v152)
    {
      v152 = v205 & 0x7FFFFFF8 | 3;
    }

    if (v157 >= v152)
    {
      v162 = v152;
    }

    else
    {
      v162 = v206 & 0x7FFFFFF8 | 4;
    }

    if (v157 <= v152)
    {
      v157 = v152;
    }

    if (v155 >= v159)
    {
      v163 = v159;
    }

    else
    {
      v163 = v160;
    }

    if (v155 < v159)
    {
      v160 = v159;
    }

    if (v161 >= v160)
    {
      v164 = v160;
    }

    else
    {
      v164 = v161;
    }

    if (v161 > v160)
    {
      v160 = v161;
    }

    if (v162 >= v160)
    {
      v165 = v160;
    }

    else
    {
      v165 = v162;
    }

    if (v162 <= v160)
    {
      v162 = v160;
    }

    v166 = v160 > v157;
    if (v160 <= v157)
    {
      v167 = v162;
    }

    else
    {
      v167 = v157;
    }

    if (v166)
    {
      v157 = v162;
    }

    if (v164 >= v163)
    {
      v168 = v163;
    }

    else
    {
      v168 = v164;
    }

    if (v164 > v163)
    {
      v163 = v164;
    }

    if (v165 >= v163)
    {
      v169 = v163;
    }

    else
    {
      v169 = v165;
    }

    if (v165 > v163)
    {
      v163 = v165;
    }

    if (v167 >= v163)
    {
      v170 = v163;
    }

    else
    {
      v170 = v167;
    }

    if (v167 > v163)
    {
      v163 = v167;
    }

    if (v157 >= v163)
    {
      v171 = v163;
    }

    else
    {
      v171 = v157;
    }

    if (v157 <= v163)
    {
      v157 = v163;
    }

    if (v165 >= v168)
    {
      v172 = v168;
    }

    else
    {
      v172 = v169;
    }

    if (v165 < v168)
    {
      v169 = v168;
    }

    if (v170 >= v169)
    {
      v173 = v169;
    }

    else
    {
      v173 = v170;
    }

    if (v170 > v169)
    {
      v169 = v170;
    }

    if (v171 >= v169)
    {
      v174 = v169;
    }

    else
    {
      v174 = v171;
    }

    if (v171 <= v169)
    {
      LOBYTE(v171) = v169;
    }

    v175 = v169 > v157;
    if (v169 <= v157)
    {
      v176 = v171;
    }

    else
    {
      v176 = v157;
    }

    if (v175)
    {
      LOBYTE(v157) = v171;
    }

    result[13].i16[6] = v172 & 7 | (8 * (v173 & 7)) & 0x3F | ((v174 & 7) << 6) & 0x81FF | ((v176 & 7) << 9) & 0x8FFF | ((v157 & 7) << 12);
    v177 = v202 & 0x7FFFFFF8;
    v178 = v203 & 0x7FFFFFF8;
    v179 = v203 & 0x7FFFFFF8 | 1;
    v180 = v204 & 0x7FFFFFF8 | 2;
    v181 = v205 & 0x7FFFFFF8 | 3;
    v182 = v206 & 0x7FFFFFF8 | 4;
    v183 = v179 > (v202 & 0x7FFFFFF8u);
    if (v179 < (v202 & 0x7FFFFFF8u))
    {
      v184 = v178 + 1;
    }

    else
    {
      v184 = v202 & 0x7FFFFFF8;
    }

    if (v183)
    {
      v177 = v178 + 1;
    }

    if (v180 >= v177)
    {
      v185 = v177;
    }

    else
    {
      v185 = v204 & 0x7FFFFFF8 | 2;
    }

    if (v180 > v177)
    {
      v177 = v204 & 0x7FFFFFF8 | 2;
    }

    if (v181 >= v177)
    {
      v186 = v177;
    }

    else
    {
      v186 = v205 & 0x7FFFFFF8 | 3;
    }

    if (v181 > v177)
    {
      v177 = v205 & 0x7FFFFFF8 | 3;
    }

    if (v182 >= v177)
    {
      v187 = v177;
    }

    else
    {
      v187 = v206 & 0x7FFFFFF8 | 4;
    }

    if (v182 <= v177)
    {
      v182 = v177;
    }

    if (v180 >= v184)
    {
      v188 = v184;
    }

    else
    {
      v188 = v185;
    }

    if (v180 < v184)
    {
      v185 = v184;
    }

    if (v186 >= v185)
    {
      v189 = v185;
    }

    else
    {
      v189 = v186;
    }

    if (v186 > v185)
    {
      v185 = v186;
    }

    if (v187 >= v185)
    {
      v190 = v185;
    }

    else
    {
      v190 = v187;
    }

    if (v187 <= v185)
    {
      v187 = v185;
    }

    v191 = v185 > v182;
    if (v185 <= v182)
    {
      v192 = v187;
    }

    else
    {
      v192 = v182;
    }

    if (v191)
    {
      v182 = v187;
    }

    if (v189 >= v188)
    {
      v193 = v188;
    }

    else
    {
      v193 = v189;
    }

    if (v189 > v188)
    {
      v188 = v189;
    }

    if (v190 >= v188)
    {
      v194 = v188;
    }

    else
    {
      v194 = v190;
    }

    if (v190 > v188)
    {
      v188 = v190;
    }

    if (v192 >= v188)
    {
      v195 = v188;
    }

    else
    {
      v195 = v192;
    }

    if (v192 > v188)
    {
      v188 = v192;
    }

    if (v182 >= v188)
    {
      v196 = v188;
    }

    else
    {
      v196 = v182;
    }

    if (v182 <= v188)
    {
      v182 = v188;
    }

    if (v190 >= v193)
    {
      v197 = v193;
    }

    else
    {
      v197 = v194;
    }

    if (v190 < v193)
    {
      v194 = v193;
    }

    if (v195 >= v194)
    {
      v198 = v194;
    }

    else
    {
      v198 = v195;
    }

    if (v195 > v194)
    {
      v194 = v195;
    }

    if (v196 >= v194)
    {
      v199 = v194;
    }

    else
    {
      v199 = v196;
    }

    if (v196 <= v194)
    {
      LOBYTE(v196) = v194;
    }

    v200 = v194 > v182;
    if (v194 <= v182)
    {
      v201 = v196;
    }

    else
    {
      v201 = v182;
    }

    if (!v200)
    {
      LOBYTE(v196) = v182;
    }

    v1 = v197 & 7 | (8 * (v198 & 7)) & 0x3F | ((v199 & 7) << 6) & 0x81FF | ((v201 & 7) << 9) & 0x8FFF | ((v196 & 7) << 12);
  }

  else
  {
    v1 = 18056;
    *result[13].i8 = vdup_n_s16(0x4688u);
    result[13].i32[2] = 1183336072;
    result[13].i16[6] = 18056;
  }

  result[13].i16[7] = v1;
  return result;
}

uint64_t BucketPrunerOverlapTraversal<OBBAABBTest_SIMD,false>::operator()(float32x4_t *a1, float32x4_t *a2, uint64_t (***a3)(void, int *, uint64_t), uint64_t a4, double a5, double a6, double a7, int8x16_t a8)
{
  v12 = a1[3].u32[0];
  if (v12)
  {
    v13 = 0;
    v14 = &a1[19].i8[8];
    v15 = &a1[3].i8[8];
    do
    {
      v16 = *(v14 + 2);
      v17 = *(v14 + 5);
      v18 = *(v14 + 12);
      *v25.f32 = vmul_f32(vadd_f32(*v14, v18), 0x3F0000003F000000);
      *&v19 = (v16 + v17) * 0.5;
      v20 = vsub_f32(v18, *v14);
      v21 = vmuls_lane_f32(0.5, v20, 1);
      v18.f32[0] = (v17 - v16) * 0.5;
      a8.i32[1] = 0;
      a8.i64[1] = 0;
      *a8.i32 = 0.5 * v20.f32[0];
      v22 = a8.u32[0];
      v22.f32[1] = v21;
      v23 = v22;
      v23.i32[2] = v18.i32[0];
      v24 = a2[1];
      v25.i64[1] = v19;
      if ((vuzp1_s8(vmovn_s32(vcgtq_f32(vabdq_f32(v24, v25), vaddq_f32(a2[8], v23))), *v22.f32).u32[0] & 0xFFFFFF) == 0)
      {
        v26 = vsubq_f32(v24, v25);
        v27 = vmulq_n_f32(a2[2], v26.f32[0]);
        v27.i32[3] = 0;
        v28 = vmlaq_lane_f32(v27, a2[3], *v26.f32, 1);
        v28.i64[1] = vextq_s8(v28, v28, 8uLL).u32[0];
        v29 = vmlaq_laneq_f32(v28, a2[4], v26, 2);
        v29.i64[1] = vextq_s8(v29, v29, 8uLL).u32[0];
        v30 = vmlaq_n_f32(*a2, a2[5], *a8.i32);
        a8 = vextq_s8(v30, v30, 8uLL);
        a8.i32[1] = 0;
        v30.i64[1] = a8.u32[0];
        v31 = vmlaq_lane_f32(v30, a2[6], *v22.f32, 1);
        v31.i64[1] = vextq_s8(v31, v31, 8uLL).u32[0];
        v32 = vmlaq_laneq_f32(v31, a2[7], v23, 2);
        v32.i64[1] = vextq_s8(v32, v32, 8uLL).u32[0];
        v33 = vmovn_s32(vcgtq_f32(vabsq_f32(v29), v32));
        if ((vuzp1_s8(v33, v33).u32[0] & 0xFFFFFF) == 0)
        {
          v126 = -1082130432;
          result = (**a3)(a3, &v126, v15);
          if (!result)
          {
            return result;
          }

          v12 = a1[3].u32[0];
        }
      }

      ++v13;
      v15 += 16;
      v14 += 24;
    }

    while (v13 < v12);
  }

  if (!a1[50].i32[2])
  {
    return 1;
  }

  a8.i32[0] = a1[53].i32[0];
  v35 = a8;
  v35.n128_u32[1] = a1[53].u32[1];
  v36 = v35;
  v36.i32[2] = a1[53].i32[2];
  v37 = a2[1];
  v38 = a1[52];
  v38.i64[1] = a1[52].u32[2];
  if ((vuzp1_s8(vmovn_s32(vcgtq_f32(vabdq_f32(v37, v38), vaddq_f32(v36, a2[8]))), v35.n128_u64[0]).u32[0] & 0xFFFFFF) != 0)
  {
    return 1;
  }

  v39 = vsubq_f32(v37, v38);
  v40 = vmulq_n_f32(a2[2], v39.f32[0]);
  v40.i32[3] = 0;
  v41 = vmlaq_lane_f32(v40, a2[3], *v39.f32, 1);
  v41.i64[1] = vextq_s8(v41, v41, 8uLL).u32[0];
  v42 = vmlaq_laneq_f32(v41, a2[4], v39, 2);
  v42.i64[1] = vextq_s8(v42, v42, 8uLL).u32[0];
  v43 = vmlaq_n_f32(*a2, a2[5], *a8.i32);
  v44 = vextq_s8(v43, v43, 8uLL);
  v44.i32[1] = 0;
  v43.i64[1] = v44.u32[0];
  v45 = vmlaq_lane_f32(v43, a2[6], v35.n128_u64[0], 1);
  v45.i64[1] = vextq_s8(v45, v45, 8uLL).u32[0];
  v46 = vmlaq_laneq_f32(v45, a2[7], v36, 2);
  v46.i64[1] = vextq_s8(v46, v46, 8uLL).u32[0];
  v47 = vmovn_s32(vcgtq_f32(vabsq_f32(v42), v46));
  if ((vuzp1_s8(v47, v47).u32[0] & 0xFFFFFF) != 0)
  {
    return 1;
  }

  v48 = 0;
  v49 = (a4 + 4 * a1[51].u32[0]);
  v50 = *v49;
  v51 = *v49 | 0x80000000;
  v52 = v49[3];
  if (v50 < 0)
  {
    v53 = ~v50;
  }

  else
  {
    v53 = v51;
  }

  if (v52 < 0)
  {
    v54 = ~v52;
  }

  else
  {
    v54 = v52 | 0x80000000;
  }

  v125 = a1 + 54;
  v120 = a1 + 57;
  v121 = a3;
  v115 = a1 + 138;
  v116 = a1 + 68;
  v117 = &a1[55].i8[4];
  v118 = a1;
  while (1)
  {
    if (v125->i32[v48])
    {
      v55 = &v120[2 * v48];
      v44.i32[0] = v55[1].i32[0];
      v56 = v44;
      v56.i32[1] = v55[1].i32[1];
      v57 = v56;
      v57.i32[2] = v55[1].i32[2];
      v58 = a2[1];
      v59.i64[0] = v55->i64[0];
      v59.i64[1] = v55->u32[2];
      if ((vuzp1_s8(vmovn_s32(vcgtq_f32(vabdq_f32(v58, v59), vaddq_f32(v57, a2[8]))), *v56.f32).u32[0] & 0xFFFFFF) == 0)
      {
        v60 = vsubq_f32(v58, v59);
        v61 = vmulq_n_f32(a2[2], v60.f32[0]);
        v61.i32[3] = 0;
        v62 = vmlaq_lane_f32(v61, a2[3], *v60.f32, 1);
        v62.i64[1] = vextq_s8(v62, v62, 8uLL).u32[0];
        v63 = vmlaq_laneq_f32(v62, a2[4], v60, 2);
        v63.i64[1] = vextq_s8(v63, v63, 8uLL).u32[0];
        v64 = vmlaq_n_f32(*a2, a2[5], *v44.i32);
        v44 = vextq_s8(v64, v64, 8uLL);
        v44.i32[1] = 0;
        v64.i64[1] = v44.u32[0];
        v65 = vmlaq_lane_f32(v64, a2[6], *v56.f32, 1);
        v65.i64[1] = vextq_s8(v65, v65, 8uLL).u32[0];
        v66 = vmlaq_laneq_f32(v65, a2[7], v57, 2);
        v66.i64[1] = vextq_s8(v66, v66, 8uLL).u32[0];
        v67 = vmovn_s32(vcgtq_f32(vabsq_f32(v63), v66));
        if ((vuzp1_s8(v67, v67).u32[0] & 0xFFFFFF) == 0)
        {
          break;
        }
      }
    }

LABEL_38:
    if (++v48 == 5)
    {
      return 1;
    }
  }

  v68 = 0;
  v69 = &v116[14 * v48];
  while (1)
  {
    if (v69->i32[v68])
    {
      v70 = &v69[2 * v68 + 3];
      v44.i32[0] = *(v70 + 16);
      v71 = v44;
      v71.i32[1] = *(v70 + 20);
      v72 = v71;
      v72.i32[2] = *(v70 + 24);
      v73 = a2[1];
      v74.i64[0] = *v70;
      v74.i64[1] = *(v70 + 8);
      if ((vuzp1_s8(vmovn_s32(vcgtq_f32(vabdq_f32(v73, v74), vaddq_f32(v72, a2[8]))), *v71.f32).u32[0] & 0xFFFFFF) == 0)
      {
        v75 = vsubq_f32(v73, v74);
        v76 = vmulq_n_f32(a2[2], v75.f32[0]);
        v76.i32[3] = 0;
        v77 = vmlaq_lane_f32(v76, a2[3], *v75.f32, 1);
        v77.i64[1] = vextq_s8(v77, v77, 8uLL).u32[0];
        v78 = vmlaq_laneq_f32(v77, a2[4], v75, 2);
        v78.i64[1] = vextq_s8(v78, v78, 8uLL).u32[0];
        v79 = vmlaq_n_f32(*a2, a2[5], *v44.i32);
        v44 = vextq_s8(v79, v79, 8uLL);
        v44.i32[1] = 0;
        v79.i64[1] = v44.u32[0];
        v80 = vmlaq_lane_f32(v79, a2[6], *v71.f32, 1);
        v80.i64[1] = vextq_s8(v80, v80, 8uLL).u32[0];
        v81 = vmlaq_laneq_f32(v80, a2[7], v72, 2);
        v81.i64[1] = vextq_s8(v81, v81, 8uLL).u32[0];
        v82 = vmovn_s32(vcgtq_f32(vabsq_f32(v78), v81));
        if ((vuzp1_s8(v82, v82).u32[0] & 0xFFFFFF) == 0)
        {
          break;
        }
      }
    }

LABEL_37:
    if (++v68 == 5)
    {
      goto LABEL_38;
    }
  }

  v83 = 0;
  v84 = &v115[70 * v48 + 14 * v68];
  v85 = v84 + 48;
  v119 = v84 + 20;
  v123 = v84;
  v124 = v68;
  v122 = v84 + 48;
  while (1)
  {
    v86 = *(v84 + 4 * v83);
    if (v86)
    {
      v87 = v85 + 32 * v83;
      v44.i32[0] = *(v87 + 16);
      v88 = v44;
      v88.i32[1] = *(v87 + 20);
      v89 = v88;
      v89.i32[2] = *(v87 + 24);
      v90 = a2[1];
      v91.i64[0] = *v87;
      v91.i64[1] = *(v87 + 8);
      if ((vuzp1_s8(vmovn_s32(vcgtq_f32(vabdq_f32(v90, v91), vaddq_f32(v89, a2[8]))), *v88.f32).u32[0] & 0xFFFFFF) == 0)
      {
        v92 = vsubq_f32(v90, v91);
        v93 = vmulq_n_f32(a2[2], v92.f32[0]);
        v93.i32[3] = 0;
        v94 = vmlaq_lane_f32(v93, a2[3], *v92.f32, 1);
        v94.i64[1] = vextq_s8(v94, v94, 8uLL).u32[0];
        v95 = vmlaq_laneq_f32(v94, a2[4], v92, 2);
        v95.i64[1] = vextq_s8(v95, v95, 8uLL).u32[0];
        v96 = vmlaq_n_f32(*a2, a2[5], *v44.i32);
        v44 = vextq_s8(v96, v96, 8uLL);
        v44.i32[1] = 0;
        v96.i64[1] = v44.u32[0];
        v97 = vmlaq_lane_f32(v96, a2[6], *v88.f32, 1);
        v97.i64[1] = vextq_s8(v97, v97, 8uLL).u32[0];
        v98 = vmlaq_laneq_f32(v97, a2[7], v89, 2);
        v98.i64[1] = vextq_s8(v98, v98, 8uLL).u32[0];
        v99 = vmovn_s32(vcgtq_f32(vabsq_f32(v95), v98));
        if ((vuzp1_s8(v99, v99).u32[0] & 0xFFFFFF) == 0)
        {
          break;
        }
      }
    }

LABEL_36:
    if (++v83 == 5)
    {
      goto LABEL_37;
    }
  }

  v100 = (v69[1].i32[v68 + 1] + *&v117[4 * v48] + *(v119 + 4 * v83));
  v101 = v118[2].i64[1] + 16 * v100;
  v102 = (v118[2].i64[0] + 32 * v100 + 16);
  while (1)
  {
    if (v102[3] >= v53)
    {
      if (*(v102 - 1) > v54)
      {
        goto LABEL_36;
      }

      v44.i32[1] = 0;
      v44.i64[1] = 0;
      v103 = *v102;
      v103.i32[1] = v102[1];
      v104 = v103;
      v104.i32[2] = v102[2];
      v105 = a2[1];
      v106.i64[0] = *(v102 - 2);
      v106.i64[1] = *(v102 - 2);
      if ((vuzp1_s8(vmovn_s32(vcgtq_f32(vabdq_f32(v105, v106), vaddq_f32(v104, a2[8]))), *v103.f32).u32[0] & 0xFFFFFF) == 0)
      {
        v107 = vsubq_f32(v105, v106);
        v108 = vmulq_n_f32(a2[2], v107.f32[0]);
        v108.i32[3] = 0;
        v109 = vmlaq_lane_f32(v108, a2[3], *v107.f32, 1);
        v109.i64[1] = vextq_s8(v109, v109, 8uLL).u32[0];
        v110 = vmlaq_laneq_f32(v109, a2[4], v107, 2);
        v110.i64[1] = vextq_s8(v110, v110, 8uLL).u32[0];
        v111 = vmlaq_n_f32(*a2, a2[5], *v102);
        v44 = vextq_s8(v111, v111, 8uLL);
        v44.i32[1] = 0;
        v111.i64[1] = v44.u32[0];
        v112 = vmlaq_lane_f32(v111, a2[6], *v103.f32, 1);
        v112.i64[1] = vextq_s8(v112, v112, 8uLL).u32[0];
        v113 = vmlaq_laneq_f32(v112, a2[7], v104, 2);
        v113.i64[1] = vextq_s8(v113, v113, 8uLL).u32[0];
        v114 = vmovn_s32(vcgtq_f32(vabsq_f32(v110), v113));
        if ((vuzp1_s8(v114, v114).u32[0] & 0xFFFFFF) == 0)
        {
          v127 = -1082130432;
          result = (**v121)(v121, &v127, v101);
          v85 = v122;
          v84 = v123;
          v68 = v124;
          if (!result)
          {
            return result;
          }
        }
      }
    }

    v101 += 16;
    v102 += 8;
    if (!--v86)
    {
      goto LABEL_36;
    }
  }
}

uint64_t visualize(_DWORD *a1, uint64_t a2, int8x16_t a3, int8x16_t a4, int8x16_t a5, int8x16_t a6)
{
  a3.i32[0] = *a2;
  a4.i32[0] = *(a2 + 16);
  a5.i64[0] = *(a2 + 4);
  a6.i64[0] = *(a2 + 20);
  v6 = vadd_f32(*a5.i8, *a6.i8);
  v7 = vextq_s8(vextq_s8(a3, a3, 4uLL), a5, 0xCuLL);
  v8 = vextq_s8(vextq_s8(a4, a4, 4uLL), a6, 0xCuLL);
  v9 = vsubq_f32(v7, v8);
  v7.i32[3] = a4.i32[0];
  v8.i32[3] = *a2;
  v9.i32[3] = vaddq_f32(v7, v8).i32[3];
  v11 = v9;
  v12 = v6;
  v13 = 1;
  return physx::Cm::operator<<(a1, &v11);
}

void physx::Sq::BucketPruner::~BucketPruner(physx::Sq::BucketPruner *this)
{
  v2 = this + 4096;
  *this = &unk_1F5D21068;
  physx::Sq::PruningPool::~PruningPool((this + 7840));
  v2[3728] = 1;
  *(this + 2) = 0;
  if (v2[3729] == 1)
  {
    if (*(this + 3))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    *(this + 3) = 0;
    if (*(this + 4))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    *(this + 4) = 0;
    if (*(this + 5))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    *(this + 5) = 0;
  }

  if (*(this + 6))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 6) = 0;
  if (*(this + 7))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 7) = 0;
  *(this + 103) = 0;
  *(this + 16) = 0;
  physx::Bp::PairManagerData::purge(this + 776);
  physx::Bp::PairManagerData::purge(this + 776);
}

{
  physx::Sq::BucketPruner::~BucketPruner(this);
  if (v1)
  {
    v2 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

    v2();
  }
}

BOOL physx::Sq::BucketPruner::addObjects(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, unsigned int a5)
{
  v5 = 1;
  if (a5)
  {
    v8 = a1 + 4096;
    v9 = physx::Sq::PruningPool::addObjects((a1 + 7840), a2, a3, a4, a5);
    *(v8 + 3728) = 1;
    *(a1 + 16) = *(a1 + 7840);
    *(a1 + 24) = *(v8 + 3752);
    *(a1 + 40) = 0;
    return v9 == a5;
  }

  return v5;
}

__n128 physx::Sq::BucketPruner::removeObjects(physx::Sq::BucketPruner *this, unsigned int *a2, unsigned int a3)
{
  if (a3)
  {
    v5 = this + 4096;
    v6 = a3;
    do
    {
      v7 = *a2++;
      physx::Sq::PruningPool::removeObject((this + 7840), v7);
      --v6;
    }

    while (v6);
    *(this + 4) = *(this + 1960);
    result = *(v5 + 3752);
    *(this + 24) = result;
    *(this + 5) = 0;
    v5[3728] = 1;
  }

  return result;
}

__n128 physx::Sq::BucketPruner::updateObjectsAfterManualBoundsUpdates(physx::Sq::BucketPruner *this, const unsigned int *a2, int a3)
{
  if (a3)
  {
    *(this + 4) = *(this + 1960);
    result = *(this + 7848);
    *(this + 24) = result;
    *(this + 5) = 0;
    *(this + 7824) = 1;
  }

  return result;
}

uint64_t physx::Sq::BucketPruner::updateObjectsAndInflateBounds(uint64_t result, unsigned int *a2, unsigned int *a3, uint64_t a4, unsigned int a5)
{
  if (a5)
  {
    v5 = *(result + 7864);
    v6 = *(result + 7848);
    v7 = a5;
    v8 = vdupq_n_s32(0x3BA3D70Au);
    do
    {
      v9 = *a2++;
      v10 = (v6 + 24 * *(v5 + 4 * v9));
      v11 = *a3++;
      v12 = a4 + 24 * v11;
      v13 = *(v12 + 12);
      v14 = vmulq_f32(vsubq_f32(v13, *v12), v8);
      v15 = vsubq_f32(*v12, v14);
      v16 = vaddq_f32(v13, v14);
      v15.i32[3] = v16.i32[0];
      *v10 = v15;
      v10[1].i64[0] = vextq_s8(v16, v16, 4uLL).u64[0];
      --v7;
    }

    while (v7);
    v17 = *(result + 7856);
    *(result + 16) = *(result + 7840);
    *(result + 24) = v6;
    *(result + 32) = v17;
    *(result + 40) = 0;
    *(result + 7824) = 1;
  }

  return result;
}

int32x4_t *physx::Sq::BucketPruner::commit(physx::Sq::BucketPruner *this)
{
  result = MEMORY[0x1EEE9AC00](this);
  v83[512] = *MEMORY[0x1E69E9840];
  if (result[489].i8[0] == 1)
  {
    v2 = result;
    result[489].i8[0] = 0;
    v3 = result[1].u32[0];
    if (v3)
    {
      v4 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 8 * v3, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/scenequery/src/SqBucketPruner.cpp", 1093);
      v5 = 0;
      v6 = v2[2].i64[0];
      v7 = v6;
      do
      {
        *(v4 + 8 * v5) = *v7;
        *v7 = v5;
        v7 += 2;
        ++v5;
      }

      while (v3 != v5);
      v75 = v4;
      if (v3 <= 0x100)
      {
        v8 = v83;
        v9 = &v82;
      }

      else
      {
        v8 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 16 * v3, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/scenequery/src/SqBucketPruner.cpp", 1108);
        v9 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 32 * v3, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/scenequery/src/SqBucketPruner.cpp", 1109);
        v6 = v2[2].i64[0];
      }

      v10 = v2[1].i64[1];
      v11 = (v3 - 1);
      v12 = (v10 + 24 * v11);
      v13 = *v12;
      v14.i32[0] = HIDWORD(*v12);
      v14.i32[1] = v12[1].i32[0];
      v14.i64[1] = v12[1].u32[1];
      if (v3 != 1)
      {
        v15 = v2[1].i64[1];
        do
        {
          v13 = vminq_f32(v13, *v15);
          v14 = vmaxq_f32(v14, *(v15 + 12));
          v15 += 24;
          --v11;
        }

        while (v11);
      }

      v16 = 0;
      v17.i64[0] = 0x3F0000003F000000;
      v17.i64[1] = 0x3F0000003F000000;
      v18 = vmulq_f32(vaddq_f32(v14, v13), v17);
      v19 = vmulq_f32(vsubq_f32(v14, v13), v17);
      v2[53].i64[0] = v18.i64[0];
      v2[53].i32[2] = v18.i32[2];
      v2[54].i64[0] = v19.i64[0];
      v2[54].i32[2] = v19.i32[2];
      if (fabsf(v19.f32[1]) < fabsf(v19.f32[2]))
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      v21 = (v10 + 4 * v20);
      do
      {
        v22 = *v21;
        v21 += 6;
        v8[v16++] = v22;
      }

      while (v3 != v16);
      *&v79 = 0;
      v77 = 0u;
      v78 = 0u;
      BYTE8(v79) = 1;
      LODWORD(v76.f64[1]) = 0x80000000;
      *&v76.f64[0] = &unk_1F5D21400;
      physx::Cm::RadixSortBuffered::Sort(&v76, v8);
      v23 = 0;
      v24 = v77.f64[0];
      v25.i64[0] = 0x3F0000003F000000;
      v25.i64[1] = 0x3F0000003F000000;
      v26 = v3;
      do
      {
        v27 = **&v24;
        *&v24 += 4;
        v28 = (v10 + 24 * v27);
        v29.i32[0] = HIDWORD(*v28);
        v29.i32[1] = v28[1].i32[0];
        v29.i64[1] = v28[1].u32[1];
        v30 = vmulq_f32(vaddq_f32(*v28, v29), v25);
        v31 = vmulq_f32(vsubq_f32(v29, *v28), v25);
        v32 = &v9[16 * v23];
        *v32 = v30;
        v32[1] = v31;
        *&v8[2 * v23] = *&v6[2 * v27];
        v23 += 2;
        --v26;
      }

      while (v26);
      *&v76.f64[0] = &unk_1F5D21400;
      physx::Cm::RadixSortBuffered::reset(&v76);
      v2[52].i32[0] = v20;
      v2[51].i32[2] = v3;
      v33 = v2[51].u32[3];
      if (v33 < v3 || v33 >> 1 > v3)
      {
        v35 = v3 | (v3 >> 1) | ((v3 | (v3 >> 1)) >> 2);
        v36 = v35 | (v35 >> 4) | ((v35 | (v35 >> 4)) >> 8);
        v37 = (v36 | HIWORD(v36)) + 1;
        v2[51].i32[3] = v37;
        if (v2[3].i64[1])
        {
          (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
        }

        if (v2[3].i64[0])
        {
          (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
        }

        if (32 * v37)
        {
          v38 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, (32 * v37), "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/scenequery/src/SqBucketPruner.cpp", 484);
        }

        else
        {
          v38 = 0;
        }

        v2[3].i64[0] = v38;
        if (16 * v37)
        {
          v34 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, (16 * v37), "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/scenequery/src/SqBucketPruner.cpp", 485);
        }

        else
        {
          v34 = 0;
        }

        v2[3].i64[1] = v34;
        v20 = v2[52].u32[0];
      }

      else
      {
        v34 = v2[3].i64[1];
      }

      v39 = 1;
      if (v20 == 1)
      {
        v39 = 2;
      }

      physx::Sq::BucketPrunerNode::classifyBoxes(v2[55].i64, v3, v9, v8, v2[3].i64[0], v34, 0, v20, *v2[53].i32, *&v2[53].i32[v39]);
      v40 = v2 + 69;
      processChildBuckets(v9, v8, &v2[55], v2[69].i64, v2[3].i64[0], v2[3].i64[1], v2[52].i32[0]);
      v41 = 0;
      v42 = v2 + 139;
      v43 = &v2[69];
      i64 = v2[139].i64;
      do
      {
        processChildBuckets(v9, v8, v43, i64, v2[3].i64[0] + 32 * v2[56].u32[v41 + 1], v2[3].i64[1] + 16 * v2[56].u32[v41 + 1], v2[52].i32[0]);
        ++v41;
        i64 += 1120;
        v43 += 56;
      }

      while (v41 != 5);
      v45 = v2[3].i64[0];
      v46 = 4 * v2[52].u32[0];
      v47 = v3;
      do
      {
        v48 = *(v45 + v46);
        v49 = *(v45 + v46 + 16);
        v50 = v48 - v49;
        v51 = v48 + v49;
        if (v50 < 0.0)
        {
          v52 = ~LODWORD(v50);
        }

        else
        {
          v52 = LODWORD(v50) | 0x80000000;
        }

        *(v45 + 12) = v52;
        if (v51 < 0.0)
        {
          v53 = ~LODWORD(v51);
        }

        else
        {
          v53 = LODWORD(v51) | 0x80000000;
        }

        *(v45 + 28) = v53;
        v45 += 32;
        --v47;
      }

      while (v47);
      if (v3 > 0x100)
      {
        if (v9)
        {
          (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v9);
        }

        if (v8)
        {
          (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v8);
        }
      }

      v54 = 0;
      v55 = v2[3].i64[1];
      v56 = v2[2].i64[0];
      v57 = v2[2].i64[1];
      do
      {
        v58 = *v55;
        v59 = *(v75 + 8 * v58);
        *v55 = v59;
        *(v56 + 16 * v58) = v59;
        if (v57)
        {
          *(v57 + 4 * v58) = v54;
        }

        ++v54;
        v55 += 2;
      }

      while (v3 != v54);
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      v60 = 0;
      __asm { FMOV            V0.4S, #1.0 }

      v76 = _Q0;
      v77 = vnegq_f64(_Q0);
      v78 = xmmword_1E3113F30;
      v79 = xmmword_1E3115E00;
      v80 = xmmword_1E3115E10;
      v81 = xmmword_1E3115E10;
      do
      {
        v66 = *(v76.f64 + v60);
        v67 = vmul_f32(v66, v66);
        v68 = *(&v76.f64[1] + v60);
        v69 = sqrtf((v67.f32[1] + (v66.f32[0] * v66.f32[0])) + (v68 * v68));
        if (v69 > 0.0)
        {
          v70 = 1.0 / v69;
          *(v76.f64 + v60) = vmul_n_f32(v66, v70);
          *(&v76.f64[1] + v60) = v68 * v70;
        }

        v60 += 12;
      }

      while (v60 != 96);
      gPrecomputeSort(v2 + 55);
      v71 = 5;
      do
      {
        gPrecomputeSort(v40);
        v40 += 14;
        --v71;
      }

      while (v71);
      for (i = 0; i != 5; ++i)
      {
        v73 = v42;
        v74 = 5;
        do
        {
          result = gPrecomputeSort(v73);
          v73 += 14;
          --v74;
        }

        while (v74);
        v42 += 70;
      }
    }

    else
    {
      result[51].i32[2] = 0;
    }
  }

  return result;
}

float32x2_t *physx::Sq::BucketPruner::shiftOrigin(float32x2_t *result, uint64_t a2)
{
  v2 = result[8].u32[0];
  if (v2)
  {
    v3 = result + 43;
    do
    {
      v4 = v3[-1];
      v3[-2] = vsub_f32(v3[-2], *a2);
      v5.i32[0] = *(a2 + 8);
      v5.i32[1] = *a2;
      v3[-1] = vsub_f32(v4, v5);
      *v3 = vsub_f32(*v3, *(a2 + 4));
      v3 += 3;
      --v2;
    }

    while (v2);
  }

  v6 = result[2].u32[0];
  result[106] = vsub_f32(result[106], *a2);
  result[107].f32[0] = result[107].f32[0] - *(a2 + 8);
  v7 = result[104].u32[0];
  v8 = result[106].f32[v7];
  v9 = result[108].f32[v7];
  v10 = v8 - v9;
  v11 = v8 + v9;
  if (v10 < 0.0)
  {
    v12 = ~LODWORD(v10);
  }

  else
  {
    v12 = LODWORD(v10) | 0x80000000;
  }

  result[107].i32[1] = v12;
  if (v11 < 0.0)
  {
    v13 = ~LODWORD(v11);
  }

  else
  {
    v13 = LODWORD(v11) | 0x80000000;
  }

  result[109].i32[1] = v13;
  if (v6)
  {
    v14 = (*&result[3] + 16);
    do
    {
      v15 = v14[-1];
      v14[-2] = vsub_f32(v14[-2], *a2);
      v16.i32[0] = *(a2 + 8);
      v16.i32[1] = *a2;
      v14[-1] = vsub_f32(v15, v16);
      *v14 = vsub_f32(*v14, *(a2 + 4));
      v14 += 3;
      --v6;
    }

    while (v6);
  }

  v17 = result[103].u32[0];
  if (v17)
  {
    v18 = result[6];
    v19 = v7;
    do
    {
      *v18 = vsub_f32(*v18, *a2);
      v18[1].f32[0] = v18[1].f32[0] - *(a2 + 8);
      v20 = v18->f32[v19];
      v21 = v18[2].f32[v19];
      v22 = v20 - v21;
      v23 = v20 + v21;
      if (v22 < 0.0)
      {
        v24 = ~LODWORD(v22);
      }

      else
      {
        v24 = LODWORD(v22) | 0x80000000;
      }

      v18[1].i32[1] = v24;
      if (v23 < 0.0)
      {
        v25 = ~LODWORD(v23);
      }

      else
      {
        v25 = LODWORD(v23) | 0x80000000;
      }

      v18[3].i32[1] = v25;
      v18 += 4;
      --v17;
    }

    while (v17);
  }

  v26 = &result[117];
  v27 = 5;
  do
  {
    *(v26 - 1) = vsub_f32(*(v26 - 2), *a2);
    *v26 = *v26 - *(a2 + 8);
    v26 += 8;
    --v27;
  }

  while (v27);
  v28 = 0;
  v29 = result + 145;
  do
  {
    v30 = v29;
    v31 = 5;
    do
    {
      *(v30 - 1) = vsub_f32(*(v30 - 2), *a2);
      *v30 = *v30 - *(a2 + 8);
      v30 += 8;
      --v31;
    }

    while (v31);
    ++v28;
    v29 += 28;
  }

  while (v28 != 5);
  v32 = 0;
  v33 = result + 285;
  do
  {
    v34 = 0;
    v35 = v33;
    do
    {
      v36 = v35;
      v37 = 5;
      do
      {
        *(v36 - 1) = vsub_f32(*(v36 - 2), *a2);
        *v36 = *v36 - *(a2 + 8);
        v36 += 8;
        --v37;
      }

      while (v37);
      ++v34;
      v35 += 56;
    }

    while (v34 != 5);
    ++v32;
    v33 += 140;
  }

  while (v32 != 5);
  return result;
}

uint64_t physx::Sq::BucketPruner::sweep(float32x2_t *a1, uint64_t a2, float32x2_t *a3, float *a4, unsigned int (***a5)(void, float *, float32x2_t *))
{
  if (a1[978].i8[0])
  {
    v11 = 1;
  }

  else
  {
    v195 = v10;
    v196 = v9;
    v197 = v8;
    v198 = v7;
    v199 = v5;
    v200 = v6;
    v13 = *(a2 + 92);
    v14 = *(a2 + 80);
    v15 = (v13 - v14) * 0.5;
    v16 = v13 + v14;
    v17 = *(a2 + 84);
    v18 = *(a2 + 72);
    *v19.f32 = vmul_f32(vsub_f32(v17, v18), 0x3F0000003F000000);
    v20 = vmul_f32(vadd_f32(v17, v18), 0x3F0000003F000000);
    v21 = v16 * 0.5;
    v189 = v20;
    v190 = v16 * 0.5;
    v187 = v19.i64[0];
    v188 = v15;
    v22 = a1[103].i32[0];
    v23 = a1[8].u32[0];
    if (v22 | v23)
    {
      v27 = *a4;
      if (*a4 == 3.4028e38)
      {
        v181 = v20;
        v184 = v21;
        v28 = a1[107].f32[0];
        v29 = a1[109].f32[0];
        v30 = a1[106];
        v31 = a1[108];
        v32 = vsub_f32(vsub_f32(v30, v31), *v19.f32);
        v33 = (v28 - v29) - v15;
        v193 = v32;
        v194 = v33;
        v34 = v28 + v29;
        v35 = vadd_f32(*v19.f32, vadd_f32(v30, v31));
        v36 = v15 + v34;
        v191 = v35;
        v192 = v36;
        if (v23)
        {
          v37 = vdup_n_s32(0xFE7FFFFF);
          v38 = vdup_n_s32(0x7E7FFFFFu);
          v39 = a1 + 41;
          v40 = 8.5071e37;
          v41 = -8.5071e37;
          do
          {
            v38 = vbsl_s8(vcgt_f32(*v39, v38), v38, *v39);
            if (v40 >= v39[1].f32[0])
            {
              v40 = v39[1].f32[0];
            }

            v37 = vbsl_s8(vcgt_f32(v37, *(v39 + 12)), v37, *(&v39[1] + 4));
            if (v41 <= v39[2].f32[1])
            {
              v41 = v39[2].f32[1];
            }

            v39 += 3;
            --v23;
          }

          while (v23);
          v42 = v40 - v15;
          v43 = v15 + v41;
          if (v33 >= v42)
          {
            v33 = v42;
          }

          v44 = vsub_f32(v38, *v19.f32);
          v193 = vbsl_s8(vcgt_f32(v44, v32), v32, v44);
          v194 = v33;
          if (v36 <= v43)
          {
            v45 = v43;
          }

          else
          {
            v45 = v36;
          }

          v46 = vadd_f32(*v19.f32, v37);
          v191 = vbsl_s8(vcgt_f32(v35, v46), v35, v46);
          v192 = v45;
        }

        v177 = v15;
        v179 = v19.i64[0];
        clipRay(&v189, a3, a4, &v193, &v191);
        v15 = v177;
        v19.i64[0] = v179;
        v27 = *a4;
        v20 = v181;
        v21 = v184;
      }

      *v47.f32 = v20;
      v47.i64[1] = LODWORD(v21);
      v48 = a3[1].f32[0];
      *v49.f32 = *a3;
      v49.i64[1] = LODWORD(v48);
      *v50.f32 = vext_s8(*a3, *&vextq_s8(v49, v49, 8uLL), 4uLL);
      v50.i64[1] = a3->u32[0];
      v19.i64[1] = LODWORD(v15);
      v51 = vabsq_f32(v49);
      *v52.f32 = vext_s8(*v51.f32, *&vextq_s8(v51, v51, 8uLL), 4uLL);
      v52.i64[1] = v51.u32[0];
      v53 = COERCE_DOUBLE(vadd_f32(v20, vmul_n_f32(*a3, v27)));
      v54 = v21 + (v27 * v48);
      v55 = COERCE_DOUBLE(vbsl_s8(vceqz_f32(*a3), v20, vbsl_s8(vcgez_f32(*a3), vneg_f32(0x80000000800000), 0x80000000800000)));
      v56 = -3.4028e38;
      if (v48 >= 0.0)
      {
        v56 = 3.4028e38;
      }

      if (v48 == 0.0)
      {
        v57 = v21;
      }

      else
      {
        v57 = v56;
      }

      v58 = v27 < 3.4028e38;
      if (v27 >= 3.4028e38)
      {
        v59 = v57;
      }

      else
      {
        v59 = v54;
      }

      if (v58)
      {
        *v60.i64 = v53;
      }

      else
      {
        *v60.i64 = v55;
      }

      v60.i64[1] = LODWORD(v59);
      v61 = vminq_f32(v47, v60);
      v62 = vmaxq_f32(v47, v60);
      v63 = a1[8].u32[0];
      v171 = v50;
      v64 = vnegq_f32(v50);
      v178 = v47;
      v180 = v19;
      v175 = v51;
      v176 = v49;
      v173 = v64;
      v174 = v52;
      if (v63)
      {
        v65 = 0;
        v66 = a1 + 41;
        v67 = a1 + 9;
        v182 = v62;
        v185 = v61;
        do
        {
          v68 = v66[1].f32[0];
          v69 = v66[2].f32[1];
          *&v70 = (v68 + v69) * 0.5;
          v71 = v69 - v68;
          v72 = *(v66 + 12);
          *v73.f32 = vmul_f32(vadd_f32(*v66, v72), 0x3F0000003F000000);
          *v74.f32 = vmul_f32(vsub_f32(v72, *v66), 0x3F0000003F000000);
          v73.i64[1] = v70;
          v74.f32[2] = v71 * 0.5;
          v74.i32[3] = 0;
          v75 = vaddq_f32(v19, v74);
          v76 = vaddq_f32(v73, v75);
          v77 = vsubq_f32(v73, v75);
          v78 = vsubq_f32(v47, v73);
          *v73.f32 = vext_s8(*v78.f32, *&vextq_s8(v78, v78, 8uLL), 4uLL);
          v73.i64[1] = v78.u32[0];
          *v79.f32 = vext_s8(*v75.f32, *&vextq_s8(v75, v75, 8uLL), 4uLL);
          v79.i64[1] = v75.u32[0];
          *v75.f32 = vmovn_s32(vandq_s8(vandq_s8(vcgeq_f32(v76, v61), vcgeq_f32(v62, v77)), vcgeq_f32(vmlaq_f32(vmulq_f32(v51, v79), v52, v75), vabsq_f32(vmlaq_f32(vmulq_f32(v49, v73), v78, v64)))));
          if (vuzp1_s8(*v75.f32, *v75.f32).u32[0] == -1)
          {
            if (!(**a5)(a5, a4, v67))
            {
              v11 = 0;
              return v11 & 1;
            }

            v63 = a1[8].u32[0];
            v47 = v178;
            v19 = v180;
            v51 = v175;
            v49 = v176;
            v64 = v173;
            v52 = v174;
            v62 = v182;
            v61 = v185;
          }

          ++v65;
          v67 += 2;
          v66 += 3;
        }

        while (v65 < v63);
      }

      if (v22)
      {
        *v80.f32 = a1[106];
        v80.i64[1] = a1[107].u32[0];
        *v81.f32 = a1[108];
        v81.i64[1] = a1[109].u32[0];
        v82 = vaddq_f32(v19, v81);
        v83 = vaddq_f32(v80, v82);
        v84 = vsubq_f32(v80, v82);
        v85 = vsubq_f32(v47, v80);
        *v86.f32 = vext_s8(*v85.f32, *&vextq_s8(v85, v85, 8uLL), 4uLL);
        v86.i64[1] = v85.u32[0];
        *v87.f32 = vext_s8(*v82.f32, *&vextq_s8(v82, v82, 8uLL), 4uLL);
        v87.i64[1] = v82.u32[0];
        v88 = vmlsq_f32(vmulq_f32(v49, v86), v85, v171);
        v89 = vmlaq_f32(vmulq_f32(v51, v87), v52, v82);
        v90 = vcgeq_f32(v83, v61);
        v91 = vcgeq_f32(v62, v84);
        v92 = vandq_s8(v90, v91);
        *v89.f32 = vmovn_s32(vandq_s8(v92, vcgeq_f32(v89, vabsq_f32(v88))));
        v93 = vuzp1_s8(*v89.f32, *v89.f32);
        if (v93.i32[0] == -1)
        {
          v95 = 0;
          v164 = 0;
          v96 = a1[104].u32[0];
          v93.i32[0] = *a4;
          v92.i32[0] = *(&v187 + v96);
          v88.i32[0] = v189.i32[v96];
          v169 = v96;
          *v91.i32 = v88.f32[0] + (*a4 * a3->f32[v96]);
          v97.i32[0] = v91.i32[0];
          v97.i32[1] = v88.i32[0];
          v167 = v88.i32[0];
          v168 = v88.f32[0];
          v98 = vdup_lane_s32(*v88.f32, 0);
          v99 = vbsl_s8(vcgt_f32(vrev64_s32(v97), v97), v98, vdup_lane_s32(*v91.i8, 0));
          v100 = vdup_lane_s32(*v92.i8, 0);
          v101 = vext_s8(vsub_f32(v99, v100), vadd_f32(v99, *v92.i8), 4uLL);
          *v50.f32 = vbsl_s8(vcltz_s32(v101), vmvn_s8(v101), vneg_f32(vabs_f32(v101)));
          v193.i32[0] = *a4;
          v102 = vand_s8(vshl_u32(*a3, 0xFFFFFFE2FFFFFFE3), 0x200000004);
          v161 = a4;
          v160 = vorr_s8(vdup_lane_s32(v102, 1), v102).u32[0] | (a3[1].i32[0] >> 31);
          v103 = a1[136].u16[v160];
          v170 = a3;
          do
          {
            v163 = v103;
            v104 = v103 & 7;
            if (a1[110].i32[v104])
            {
              v105 = &a1[4 * v104 + 116];
              v106.i64[0] = *v105;
              v106.i64[1] = *(v105 + 8);
              v107.i64[0] = *(v105 + 16);
              v107.i64[1] = *(v105 + 24);
              v108 = vaddq_f32(v19, v107);
              v109 = vaddq_f32(v106, v108);
              v110 = vsubq_f32(v106, v108);
              v111 = vsubq_f32(v47, v106);
              *v112.f32 = vext_s8(*v111.f32, *&vextq_s8(v111, v111, 8uLL), 4uLL);
              v112.i64[1] = v111.u32[0];
              *v113.f32 = vext_s8(*v108.f32, *&vextq_s8(v108, v108, 8uLL), 4uLL);
              v113.i64[1] = v108.u32[0];
              if (vuzp1_s8(vmovn_s32(vandq_s8(vandq_s8(vcgeq_f32(v109, v61), vcgeq_f32(v62, v110)), vcgeq_f32(vmlaq_f32(vmulq_f32(v51, v113), v52, v108), vabsq_f32(vmlaq_f32(vmulq_f32(v49, v112), v111, v64))))), v93).u32[0] == -1)
              {
                v157 = v95;
                v114 = 0;
                v115 = &a1[28 * (v103 & 7) + 138];
                v116 = *(v115 + 2 * v160 + 208);
                v162 = v115 + 48;
                v165 = v115;
                v158 = v115 + 20;
                v159 = v104;
                v117 = *v93.i32;
                do
                {
                  v118 = v116 & 7;
                  if (*(v165 + 4 * v118) && (v119 = v162 + 32 * v118, v120.i64[0] = *v119, v120.i64[1] = *(v119 + 8), v121.i64[0] = *(v119 + 16), v121.i64[1] = *(v119 + 24), v122 = vaddq_f32(v19, v121), v123 = vaddq_f32(v120, v122), v124 = vsubq_f32(v120, v122), v125 = vsubq_f32(v47, v120), *v126.f32 = vext_s8(*v125.f32, *&vextq_s8(v125, v125, 8uLL), 4uLL), v126.i64[1] = v125.u32[0], *v127.f32 = vext_s8(*v122.f32, *&vextq_s8(v122, v122, 8uLL), 4uLL), v127.i64[1] = v122.u32[0], *v125.f32 = vmovn_s32(vandq_s8(vandq_s8(vcgeq_f32(v123, v61), vcgeq_f32(v62, v124)), vcgeq_f32(vmlaq_f32(vmulq_f32(v51, v127), v52, v122), vabsq_f32(vmlaq_f32(vmulq_f32(v49, v126), v125, v64))))), v93 = vuzp1_s8(*v125.f32, *v125.f32), v93.i32[0] == -1))
                  {
                    v128 = 0;
                    v129 = &a1[140 * v159 + 278 + 28 * (v116 & 7)];
                    v166 = *(v158 + 4 * v118) + a1[112].i32[v159 + 1];
                    v130 = *(v129 + 2 * v160 + 208);
                    do
                    {
                      v131 = v130 & 7;
                      v132 = *(v129 + 4 * v131);
                      if (v132)
                      {
                        v133 = v129 + 48 + 32 * v131;
                        v134.i64[0] = *v133;
                        v134.i64[1] = *(v133 + 8);
                        v135.i64[0] = *(v133 + 16);
                        v135.i64[1] = *(v133 + 24);
                        v136 = vaddq_f32(v19, v135);
                        v137 = vaddq_f32(v134, v136);
                        v138 = vsubq_f32(v134, v136);
                        v139 = vsubq_f32(v47, v134);
                        *v140.f32 = vext_s8(*v139.f32, *&vextq_s8(v139, v139, 8uLL), 4uLL);
                        v140.i64[1] = v139.u32[0];
                        *v141.f32 = vext_s8(*v136.f32, *&vextq_s8(v136, v136, 8uLL), 4uLL);
                        v141.i64[1] = v136.u32[0];
                        *v139.f32 = vmovn_s32(vandq_s8(vandq_s8(vcgeq_f32(v137, v61), vcgeq_f32(v62, v138)), vcgeq_f32(vmlaq_f32(vmulq_f32(v51, v141), v52, v136), vabsq_f32(vmlaq_f32(vmulq_f32(v49, v140), v139, v64)))));
                        v93 = vuzp1_s8(*v139.f32, *v139.f32);
                        if (v93.i32[0] == -1)
                        {
                          v142 = (v166 + *(v129 + 20 + 4 * v131));
                          v143 = *&a1[7] + 16 * v142;
                          v144 = *&a1[6] + 32 * v142 + 16;
                          v145 = 32 * v132;
                          while (1)
                          {
                            if (*(v144 + 12) < v50.i32[0])
                            {
                              goto LABEL_61;
                            }

                            if (*(v144 - 4) > v50.i32[1])
                            {
                              break;
                            }

                            v146.i64[0] = *(v144 - 16);
                            v146.i64[1] = *(v144 - 8);
                            v147.i64[0] = *v144;
                            v147.i64[1] = *(v144 + 8);
                            v148 = vaddq_f32(v19, v147);
                            v149 = vaddq_f32(v146, v148);
                            v150 = vsubq_f32(v146, v148);
                            v151 = vsubq_f32(v47, v146);
                            *v152.f32 = vext_s8(*v151.f32, *&vextq_s8(v151, v151, 8uLL), 4uLL);
                            v152.i64[1] = v151.u32[0];
                            *v153.f32 = vext_s8(*v148.f32, *&vextq_s8(v148, v148, 8uLL), 4uLL);
                            v153.i64[1] = v148.u32[0];
                            *v151.f32 = vmovn_s32(vandq_s8(vandq_s8(vcgeq_f32(v62, v150), vcgeq_f32(v149, v61)), vcgeq_f32(vmlaq_f32(vmulq_f32(v51, v153), v52, v148), vabsq_f32(vmlaq_f32(vmulq_f32(v49, v152), v151, v64)))));
                            v93 = vuzp1_s8(*v151.f32, *v151.f32);
                            if (v93.i32[0] == -1)
                            {
                              v172 = v50;
                              v183 = v62;
                              v186 = v61;
                              if (!(**a5)(a5, &v193, v143))
                              {
                                v11 = v157;
                                return v11 & 1;
                              }

                              v93.i32[0] = v193.i32[0];
                              v50 = v172;
                              v47 = v178;
                              if (*v193.i32 >= v117)
                              {
                                v19 = v180;
                                v51 = v175;
                                v49 = v176;
                                v64 = v173;
                                v52 = v174;
                                v62 = v183;
                                v61 = v186;
                              }

                              else
                              {
                                v49 = v176;
                                v154 = vmlaq_n_f32(v178, v176, *v193.i32);
                                v154.i64[1] = vextq_s8(v154, v154, 8uLL).u32[0];
                                v61 = vminq_f32(v178, v154);
                                v62 = vmaxq_f32(v178, v154);
                                v154.i32[1] = v167;
                                v154.f32[0] = v168 + (*v193.i32 * v170->f32[v169]);
                                v155 = vbsl_s8(vcgt_f32(vrev64_s32(*v154.f32), *v154.f32), v98, vdup_lane_s32(*v154.f32, 0));
                                v156 = vext_s8(vsub_f32(v155, v100), vadd_f32(v155, v100), 4uLL);
                                *v50.f32 = vbsl_s8(vcltz_s32(v156), vmvn_s8(v156), vneg_f32(vabs_f32(v156)));
                                v19 = v180;
                                v52 = v174;
                                v51 = v175;
                                v64 = v173;
                              }
                            }

                            else
                            {
LABEL_61:
                              *v93.i32 = v117;
                            }

                            v143 += 16;
                            v144 += 32;
                            v117 = *v93.i32;
                            v145 -= 32;
                            if (!v145)
                            {
                              goto LABEL_55;
                            }
                          }
                        }
                      }

                      *v93.i32 = v117;
LABEL_55:
                      v130 >>= 3;
                      ++v128;
                      v117 = *v93.i32;
                    }

                    while (v128 != 5);
                  }

                  else
                  {
                    *v93.i32 = v117;
                  }

                  v116 >>= 3;
                  ++v114;
                  v117 = *v93.i32;
                }

                while (v114 != 5);
              }
            }

            v103 = v163 >> 3;
            v95 = v164++ > 3;
          }

          while (v164 != 5);
          *v161 = *v93.i32;
        }
      }
    }

    v11 = 1;
  }

  return v11 & 1;
}

uint64_t physx::Sq::BucketPruner::overlap(float32x4_t *a1, uint64_t a2, uint64_t (***a3)(void, int *, uint64_t), double a4, double a5, float32x4_t a6, float32x4_t a7)
{
  if (a1[489].i8[0])
  {
    return 1;
  }

  v188 = v14;
  v189 = v13;
  v190 = v12;
  v191 = v11;
  v192 = v10;
  v193 = v9;
  v194 = v7;
  v195 = v8;
  v19 = a2 + 72;
  v20 = *(a2 + 98);
  result = 1;
  if (v20 <= 2)
  {
    if (*(a2 + 98))
    {
      if (v20 != 2)
      {
        return result;
      }

LABEL_10:
      *&v21 = OBBAABBTest_SIMD::OBBAABBTest_SIMD(v187, (a2 + 12), a2 + 48, a2, a4, a5, a6, a7);
      return BucketPrunerOverlapTraversal<OBBAABBTest_SIMD,false>::operator()(a1 + 1, v187, a3, v19, v21, v22, v23, v24);
    }

    v25 = *(a2 + 100);
    v25.i64[1] = *(a2 + 108);
    *&a4 = *(a2 + 112) * *(a2 + 112);
    v26 = vdup_lane_s32(*&a4, 0);
    v27 = a1[4].u32[0];
    v186 = v25;
    if (v27)
    {
      v28 = 0;
      v29 = &a1[20].i8[8];
      v30 = &a1[4].i8[8];
      do
      {
        v31 = *(v29 + 2);
        v32 = *(v29 + 5);
        *&v33 = (v31 + v32) * 0.5;
        v34 = v32 - v31;
        v35 = *(v29 + 12);
        *v36.f32 = vmul_f32(vadd_f32(*v29, v35), 0x3F0000003F000000);
        *v37.f32 = vmul_f32(vsub_f32(v35, *v29), 0x3F0000003F000000);
        v36.i64[1] = v33;
        v37.f32[2] = v34 * 0.5;
        v37.i32[3] = 0;
        v38 = vsubq_f32(v25, v36);
        v39 = vnegq_f32(v37);
        v39.i32[3] = 0;
        v40 = vsubq_f32(v38, vmaxq_f32(vminq_f32(v38, v37), v39));
        v41 = vmulq_f32(v40, v40);
        v41.i64[0] = vpaddq_f32(v41, v41).u64[0];
        *v41.f32 = vdup_lane_s16(vcge_f32(v26, vpadd_f32(*v41.f32, *v41.f32)), 0);
        if (vuzp1_s8(*v41.f32, *v41.f32).u32[0] == -1)
        {
          v187[0].i32[0] = -1082130432;
          result = (**a3)(a3, v187, v30);
          if (!result)
          {
            return result;
          }

          v27 = a1[4].u32[0];
          v25 = v186;
        }

        ++v28;
        v30 += 16;
        v29 += 24;
      }

      while (v28 < v27);
    }

    if (a1[51].i32[2])
    {
      v42.i64[0] = a1[53].i64[0];
      v42.i64[1] = a1[53].u32[2];
      v43.i64[0] = a1[54].i64[0];
      v43.i64[1] = a1[54].u32[2];
      v44 = vsubq_f32(v25, v42);
      v45 = vnegq_f32(v43);
      v45.i32[3] = 0;
      v46 = vsubq_f32(v44, vmaxq_f32(vminq_f32(v44, v43), v45));
      v47 = vmulq_f32(v46, v46);
      v47.i64[0] = vpaddq_f32(v47, v47).u64[0];
      *v47.f32 = vdup_lane_s16(vcge_f32(v26, vpadd_f32(*v47.f32, *v47.f32)), 0);
      if (vuzp1_s8(*v47.f32, *v47.f32).u32[0] == -1)
      {
        v48 = 0;
        v49 = a1[52].u32[0];
        v50 = *(v19 + 4 * v49);
        v51 = *(a2 + 4 * v49 + 84);
        if (v50 < 0)
        {
          v52 = ~v50;
        }

        else
        {
          v52 = v50 | 0x80000000;
        }

        if (v51 < 0)
        {
          v53 = ~v51;
        }

        else
        {
          v53 = v51 | 0x80000000;
        }

        while (1)
        {
          if (a1[55].i32[v48])
          {
            v54 = &a1[2 * v48 + 58];
            v55.i64[0] = *v54;
            v55.i64[1] = *(v54 + 8);
            v56.i64[0] = *(v54 + 16);
            v56.i64[1] = *(v54 + 24);
            v57 = vsubq_f32(v25, v55);
            v58 = vnegq_f32(v56);
            v58.i32[3] = 0;
            v59 = vsubq_f32(v57, vmaxq_f32(vminq_f32(v57, v56), v58));
            v60 = vmulq_f32(v59, v59);
            v60.i64[0] = vpaddq_f32(v60, v60).u64[0];
            *v60.f32 = vdup_lane_s16(vcge_f32(v26, vpadd_f32(*v60.f32, *v60.f32)), 0);
            if (vuzp1_s8(*v60.f32, *v60.f32).u32[0] == -1)
            {
              break;
            }
          }

LABEL_27:
          ++v48;
          result = 1;
          if (v48 == 5)
          {
            return result;
          }
        }

        v61 = 0;
        v62 = &a1[14 * v48 + 69];
        v178 = v62 + 48;
        v182 = v62;
        v180 = v62 + 20;
        v176 = &a1[70 * v48 + 139];
        v184 = v48;
        while (1)
        {
          if (*(v182 + 4 * v61))
          {
            v63 = v178 + 32 * v61;
            v64.i64[0] = *v63;
            v64.i64[1] = *(v63 + 8);
            v65.i64[0] = *(v63 + 16);
            v65.i64[1] = *(v63 + 24);
            v66 = vsubq_f32(v25, v64);
            v67 = vnegq_f32(v65);
            v67.i32[3] = 0;
            v68 = vsubq_f32(v66, vmaxq_f32(vminq_f32(v66, v65), v67));
            v69 = vmulq_f32(v68, v68);
            v69.i64[0] = vpaddq_f32(v69, v69).u64[0];
            *v69.f32 = vdup_lane_s16(vcge_f32(v26, vpadd_f32(*v69.f32, *v69.f32)), 0);
            if (vuzp1_s8(*v69.f32, *v69.f32).u32[0] == -1)
            {
              break;
            }
          }

LABEL_42:
          ++v61;
          v48 = v184;
          if (v61 == 5)
          {
            goto LABEL_27;
          }
        }

        v70 = 0;
        v71 = v176 + 224 * v61;
        while (1)
        {
          v72 = *(v71 + 4 * v70);
          if (v72)
          {
            v73 = v71 + 48 + 32 * v70;
            v74.i64[0] = *v73;
            v74.i64[1] = *(v73 + 8);
            v75.i64[0] = *(v73 + 16);
            v75.i64[1] = *(v73 + 24);
            v76 = vsubq_f32(v25, v74);
            v77 = vnegq_f32(v75);
            v77.i32[3] = 0;
            v78 = vsubq_f32(v76, vmaxq_f32(vminq_f32(v76, v75), v77));
            v79 = vmulq_f32(v78, v78);
            v79.i64[0] = vpaddq_f32(v79, v79).u64[0];
            *v79.f32 = vdup_lane_s16(vcge_f32(v26, vpadd_f32(*v79.f32, *v79.f32)), 0);
            if (vuzp1_s8(*v79.f32, *v79.f32).u32[0] == -1)
            {
              break;
            }
          }

LABEL_41:
          if (++v70 == 5)
          {
            goto LABEL_42;
          }
        }

        v80 = (*(v180 + 4 * v61) + a1[56].i32[v184 + 1] + *(v71 + 20 + 4 * v70));
        v81 = a1[3].i64[1] + 16 * v80;
        v82 = a1[3].i64[0] + 32 * v80 + 16;
        while (1)
        {
          if (*(v82 + 12) >= v52)
          {
            if (*(v82 - 4) > v53)
            {
              goto LABEL_41;
            }

            v83.i64[0] = *(v82 - 16);
            v83.i64[1] = *(v82 - 8);
            v84.i64[0] = *v82;
            v84.i64[1] = *(v82 + 8);
            v85 = vsubq_f32(v25, v83);
            v86 = vnegq_f32(v84);
            v86.i32[3] = 0;
            v87 = vsubq_f32(v85, vmaxq_f32(vminq_f32(v85, v84), v86));
            v88 = vmulq_f32(v87, v87);
            v88.i64[0] = vpaddq_f32(v88, v88).u64[0];
            *v88.f32 = vdup_lane_s16(vcge_f32(v26, vpadd_f32(*v88.f32, *v88.f32)), 0);
            if (vuzp1_s8(*v88.f32, *v88.f32).u32[0] == -1)
            {
              v187[0].i32[0] = -1082130432;
              result = (**a3)(a3, v187, v81);
              v25 = v186;
              if (!result)
              {
                return result;
              }
            }
          }

          v81 += 16;
          v82 += 32;
          if (!--v72)
          {
            goto LABEL_41;
          }
        }
      }
    }

    return 1;
  }

  if (v20 == 4)
  {
    goto LABEL_10;
  }

  if (v20 == 3)
  {
    if (*(a2 + 96))
    {
      goto LABEL_10;
    }

    v89 = a2 + 84;
    v90 = *(a2 + 84);
    v91 = *(a2 + 72);
    v92 = *(a2 + 76);
    v93 = *(a2 + 80);
    v94 = *(a2 + 88);
    v95 = *(a2 + 92);
    v96 = a1[4].u32[0];
    if (v96)
    {
      v97 = 0;
      v98 = &a1[4].i8[8];
      v99 = &a1[21].f32[3];
      do
      {
        if (v91 <= *(v99 - 2) && *(v99 - 5) <= v90 && v92 <= *(v99 - 1) && *(v99 - 4) <= v94 && v93 <= *v99 && *(v99 - 3) <= v95)
        {
          v187[0].i32[0] = -1082130432;
          result = (**a3)(a3, v187, v98);
          if (!result)
          {
            return result;
          }

          v96 = a1[4].u32[0];
        }

        ++v97;
        v98 += 16;
        v99 += 6;
      }

      while (v97 < v96);
    }

    if (!a1[51].i32[2])
    {
      return 1;
    }

    v100 = a1[53].f32[0];
    v101 = a1[54].f32[0];
    v102 = a1[53].f32[1];
    v103 = a1[54].f32[1];
    v104 = a1[53].f32[2];
    v105 = a1[54].f32[2];
    v106 = v91 <= (v100 + v101) && (v100 - v101) <= v90;
    v107 = v106 && v92 <= (v102 + v103);
    v108 = v107 && (v102 - v103) <= v94;
    v109 = v108 && v93 <= (v104 + v105);
    if (!v109 || (v104 - v105) > v95)
    {
      return 1;
    }

    v111 = 0;
    v112 = a1[52].u32[0];
    v113 = *(v19 + 4 * v112);
    v114 = *(v89 + 4 * v112);
    if (v113 < 0)
    {
      v115 = ~v113;
    }

    else
    {
      v115 = v113 | 0x80000000;
    }

    if (v114 < 0)
    {
      v116 = ~v114;
    }

    else
    {
      v116 = v114 | 0x80000000;
    }

    while (1)
    {
      if (a1[55].i32[v111])
      {
        f32 = a1[2 * v111 + 58].f32;
        v118 = f32[1];
        v119 = f32[4];
        v120 = f32[5];
        v121 = v118 - v120;
        v122 = f32[2];
        v123 = f32[6];
        v124 = v118 + v120;
        v125 = v91 <= (*f32 + v119) && (*f32 - v119) <= v90;
        v126 = v125 && v92 <= v124;
        v127 = v126 && v121 <= v94;
        v128 = v127 && v93 <= (v122 + v123);
        if (v128 && (v122 - v123) <= v95)
        {
          break;
        }
      }

LABEL_97:
      ++v111;
      result = 1;
      if (v111 == 5)
      {
        return result;
      }
    }

    v130 = 0;
    v131 = &a1[14 * v111 + 69];
    v179 = v131 + 48;
    v181 = v131;
    v183 = v131 + 20;
    v177 = &a1[70 * v111 + 139];
    v185 = v111;
    while (1)
    {
      if (*(v181 + 4 * v130))
      {
        v132 = (v179 + 32 * v130);
        v133 = v132[1];
        v134 = v132[4];
        v135 = v132[5];
        v136 = v133 - v135;
        v137 = v132[2];
        v138 = v132[6];
        v139 = v133 + v135;
        v140 = v91 <= (*v132 + v134) && (*v132 - v134) <= v90;
        v141 = v140 && v92 <= v139;
        v142 = v141 && v136 <= v94;
        v143 = v142 && v93 <= (v137 + v138);
        if (v143 && (v137 - v138) <= v95)
        {
          break;
        }
      }

LABEL_160:
      ++v130;
      v111 = v185;
      if (v130 == 5)
      {
        goto LABEL_97;
      }
    }

    v145 = 0;
    v146 = v177 + 224 * v130;
    while (1)
    {
      v147 = *(v146 + 4 * v145);
      if (v147)
      {
        v148 = (v146 + 48 + 32 * v145);
        v149 = v148[1];
        v150 = v148[4];
        v151 = v148[5];
        v152 = v149 - v151;
        v153 = v148[2];
        v154 = v148[6];
        v155 = v149 + v151;
        v156 = v91 <= (*v148 + v150) && (*v148 - v150) <= v90;
        v157 = v156 && v92 <= v155;
        v158 = v157 && v152 <= v94;
        v159 = v158 && v93 <= (v153 + v154);
        if (v159 && (v153 - v154) <= v95)
        {
          break;
        }
      }

LABEL_159:
      if (++v145 == 5)
      {
        goto LABEL_160;
      }
    }

    v161 = (*(v183 + 4 * v130) + a1[56].i32[v185 + 1] + *(v146 + 20 + 4 * v145));
    v162 = a1[3].i64[1] + 16 * v161;
    v163 = a1[3].i64[0] + 32 * v161 + 16;
    while (1)
    {
      if (*(v163 + 12) >= v115)
      {
        if (*(v163 - 4) > v116)
        {
          goto LABEL_159;
        }

        v164 = *(v163 - 16);
        v165 = *(v163 - 12);
        v166 = *(v163 + 4);
        v167 = v165 - v166;
        v168 = *(v163 - 8);
        v169 = *(v163 + 8);
        v170 = v165 + v166;
        v171 = v91 <= (v164 + *v163) && (v164 - *v163) <= v90;
        v172 = v171 && v92 <= v170;
        v173 = v172 && v167 <= v94;
        v174 = v173 && v93 <= (v168 + v169);
        if (v174 && (v168 - v169) <= v95)
        {
          v187[0].i32[0] = -1082130432;
          result = (**a3)(a3, v187, v162);
          if (!result)
          {
            break;
          }
        }
      }

      v162 += 16;
      v163 += 32;
      if (!--v147)
      {
        goto LABEL_159;
      }
    }
  }

  return result;
}

uint64_t physx::Sq::BucketPruner::raycast(float32x2_t *a1, float32x2_t *a2, float32x2_t *a3, float *a4, unsigned int (***a5)(void, float *, float32x2_t *))
{
  if (a1[978].i8[0])
  {
    v10 = 1;
  }

  else
  {
    v176 = v8;
    v177 = v7;
    v178 = v5;
    v179 = v6;
    v12 = a1[103].i32[0];
    v13 = a1[8].u32[0];
    if (v12 | v13)
    {
      v18 = *a4;
      if (*a4 == 3.4028e38)
      {
        v19 = a1[106];
        v20 = a1[108];
        v21 = vsub_f32(v19, v20);
        v22 = a1[107].f32[0];
        v23 = a1[109].f32[0];
        v24 = v22 - v23;
        v174 = v21;
        v175 = v22 - v23;
        v25 = v22 + v23;
        v26 = vadd_f32(v19, v20);
        v27 = vadd_f32(v26, 0);
        v172 = v27;
        v173 = v25 + 0.0;
        if (v13)
        {
          v28 = vdup_n_s32(0xFE7FFFFF);
          v29 = vdup_n_s32(0x7E7FFFFFu);
          v30 = a1 + 41;
          v31 = 8.5071e37;
          v32 = -8.5071e37;
          do
          {
            v29 = vbsl_s8(vcgt_f32(*v30, v29), v29, *v30);
            if (v31 >= v30[1].f32[0])
            {
              v31 = v30[1].f32[0];
            }

            v28 = vbsl_s8(vcgt_f32(v28, *(v30 + 12)), v28, *(&v30[1] + 4));
            if (v32 <= v30[2].f32[1])
            {
              v32 = v30[2].f32[1];
            }

            v30 += 3;
            --v13;
          }

          while (v13);
          v33 = vadd_f32(v28, 0);
          v34 = vcgt_f32(v29, v21);
          if (v24 >= v31)
          {
            v24 = v31;
          }

          v174 = vbsl_s8(v34, v21, v29);
          v175 = v24;
          v35 = vcgt_f32(v26, v28);
          if (v25 <= v32)
          {
            v36 = v32 + 0.0;
          }

          else
          {
            v36 = v25 + 0.0;
          }

          v172 = vbsl_s8(v35, v27, v33);
          v173 = v36;
        }

        clipRay(a2, a3, a4, &v174, &v172);
        v18 = *a4;
      }

      v37 = a2[1].f32[0];
      v38 = COERCE_DOUBLE(vadd_f32(*a2, vmul_n_f32(*a3, v18)));
      *v39.f32 = *a2;
      v39.i64[1] = LODWORD(v37);
      v40 = a3[1].f32[0];
      *v41.f32 = *a3;
      v41.i64[1] = LODWORD(v40);
      *v42.f32 = vext_s8(*a3, *&vextq_s8(v41, v41, 8uLL), 4uLL);
      v42.i64[1] = a3->u32[0];
      v43 = vabsq_f32(v41);
      *v44.f32 = vext_s8(*v43.f32, *&vextq_s8(v43, v43, 8uLL), 4uLL);
      v44.i64[1] = v43.u32[0];
      v45 = COERCE_DOUBLE(vbsl_s8(vceqz_f32(*a3), *a2, vbsl_s8(vcgez_f32(*a3), vneg_f32(0x80000000800000), 0x80000000800000)));
      v46 = v37 + (v18 * v40);
      v47 = -3.4028e38;
      if (v40 >= 0.0)
      {
        v47 = 3.4028e38;
      }

      if (v40 != 0.0)
      {
        v37 = v47;
      }

      v48 = v18 < 3.4028e38;
      if (v18 >= 3.4028e38)
      {
        v49 = v37;
      }

      else
      {
        v49 = v46;
      }

      if (v48)
      {
        *v50.i64 = v38;
      }

      else
      {
        *v50.i64 = v45;
      }

      v50.i64[1] = LODWORD(v49);
      v51 = vminq_f32(v39, v50);
      v52 = vmaxq_f32(v39, v50);
      v53 = a1[8].u32[0];
      v161 = v42;
      v54 = vnegq_f32(v42);
      v166 = v41;
      v167 = v39;
      v164 = v44;
      v165 = v43;
      v163 = v54;
      if (v53)
      {
        v55 = 0;
        v56 = a1 + 41;
        v57 = a1 + 9;
        v168 = v52;
        v170 = v51;
        do
        {
          v58 = v56[1].f32[0];
          v50.i32[0] = v56[2].i32[1];
          *&v59 = (v58 + v50.f32[0]) * 0.5;
          v60 = v50.f32[0] - v58;
          v61 = *(v56 + 12);
          *v62.f32 = vmul_f32(vadd_f32(*v56, v61), 0x3F0000003F000000);
          *v50.f32 = vmul_f32(vsub_f32(v61, *v56), 0x3F0000003F000000);
          v62.i64[1] = v59;
          v63 = v50;
          v63.f32[2] = v60 * 0.5;
          v64 = v63;
          v64.i32[3] = 0;
          v65 = vaddq_f32(v62, v64);
          v66 = vsubq_f32(v62, v64);
          v67 = vsubq_f32(v39, v62);
          *v68.f32 = vext_s8(*v67.f32, *&vextq_s8(v67, v67, 8uLL), 4uLL);
          v68.i64[1] = v67.u32[0];
          *v63.f32 = vext_s8(*v50.f32, *&vextq_s8(v63, v63, 8uLL), 4uLL);
          v63.i64[1] = v50.u32[0];
          v50 = vcgeq_f32(vmlaq_f32(vmulq_f32(v43, v63), v44, v64), vabsq_f32(vmlaq_f32(vmulq_f32(v41, v68), v67, v54)));
          *v64.f32 = vmovn_s32(vandq_s8(vandq_s8(vcgeq_f32(v65, v51), vcgeq_f32(v52, v66)), v50));
          if (vuzp1_s8(*v64.f32, *v64.f32).u32[0] == -1)
          {
            if (!(**a5)(a5, a4, v57))
            {
              v10 = 0;
              return v10 & 1;
            }

            v53 = a1[8].u32[0];
            v41 = v166;
            v39 = v167;
            v44 = v164;
            v43 = v165;
            v54 = v163;
            v52 = v168;
            v51 = v170;
          }

          ++v55;
          v57 += 2;
          v56 += 3;
        }

        while (v55 < v53);
      }

      if (v12)
      {
        *v69.f32 = a1[106];
        v69.i64[1] = a1[107].u32[0];
        *v50.f32 = a1[108];
        v70 = v50;
        v70.i32[2] = a1[109].i32[0];
        v71 = v70;
        v71.i32[3] = 0;
        v72 = vaddq_f32(v69, v71);
        v73 = vsubq_f32(v69, v71);
        v74 = vsubq_f32(v39, v69);
        *v75.f32 = vext_s8(*v74.f32, *&vextq_s8(v74, v74, 8uLL), 4uLL);
        v75.i64[1] = v74.u32[0];
        *v70.f32 = vext_s8(*v50.f32, *&vextq_s8(v70, v70, 8uLL), 4uLL);
        v70.i64[1] = v50.u32[0];
        v76 = vmlsq_f32(vmulq_f32(v41, v75), v74, v161);
        v77 = vmlaq_f32(vmulq_f32(v43, v70), v44, v71);
        v78 = vcgeq_f32(v72, v51);
        v79 = vcgeq_f32(v77, vabsq_f32(v76));
        v80 = vandq_s8(v78, vcgeq_f32(v52, v73));
        *v79.i8 = vmovn_s32(vandq_s8(v80, v79));
        v81 = vuzp1_s8(*v79.i8, *v79.i8);
        if (v81.i32[0] == -1)
        {
          v83 = 0;
          v155 = 0;
          v84 = a1[104].u32[0];
          v80.i32[0] = a2->i32[v84];
          v158 = v84;
          v81.i32[0] = *a4;
          *v78.i32 = *v80.i32 + (*a4 * a3->f32[v84]);
          v85 = vdup_lane_s32(*v80.i8, 0);
          v80.i32[1] = v78.i32[0];
          v86 = vrev64_s32(vbsl_s8(vcgt_f32(vrev64_s32(*v80.i8), *v80.i8), v85, vdup_lane_s32(*v78.i8, 0)));
          *&v9 = vbsl_s8(vcltz_s32(v86), vmvn_s8(v86), vneg_f32(vabs_f32(v86)));
          v174.i32[0] = *a4;
          v87 = vand_s8(vshl_u32(*a3, 0xFFFFFFE2FFFFFFE3), 0x200000004);
          v152 = a4;
          v151 = vorr_s8(vdup_lane_s32(v87, 1), v87).u32[0] | (a3[1].i32[0] >> 31);
          v88 = a1[136].u16[v151];
          v159 = a2;
          v160 = a3;
          do
          {
            v154 = v88;
            v89 = v88 & 7;
            if (a1[110].i32[v89])
            {
              v90 = &a1[4 * v89 + 116];
              v91.i64[0] = *v90;
              v91.i64[1] = *(v90 + 8);
              v78.i64[0] = *(v90 + 16);
              v92 = v78;
              v92.i32[2] = *(v90 + 24);
              v93 = v92;
              v93.i32[3] = 0;
              v94 = vaddq_f32(v91, v93);
              v95 = vsubq_f32(v91, v93);
              v96 = vsubq_f32(v39, v91);
              *v97.f32 = vext_s8(*v96.f32, *&vextq_s8(v96, v96, 8uLL), 4uLL);
              v97.i64[1] = v96.u32[0];
              *v92.f32 = vext_s8(*v78.i8, *&vextq_s8(v92, v92, 8uLL), 4uLL);
              v92.i64[1] = v78.u32[0];
              v78 = vandq_s8(vcgeq_f32(v94, v51), vcgeq_f32(v52, v95));
              v98 = vandq_s8(v78, vcgeq_f32(vmlaq_f32(vmulq_f32(v43, v92), v44, v93), vabsq_f32(vmlaq_f32(vmulq_f32(v41, v97), v96, v54))));
              if (vuzp1_s8(vmovn_s32(v98), v81).u32[0] == -1)
              {
                v148 = v83;
                v99 = 0;
                v100 = &a1[28 * (v88 & 7) + 138];
                v101 = *(v100 + 2 * v151 + 208);
                v153 = v100 + 48;
                v156 = v100;
                v149 = v100 + 20;
                v150 = v89;
                v102 = *v81.i32;
                do
                {
                  v103 = v101 & 7;
                  if (*(v156 + 4 * v103) && (v104 = v153 + 32 * v103, v105.i64[0] = *v104, v105.i64[1] = *(v104 + 8), v98.i64[0] = *(v104 + 16), v106 = v98, v106.i32[2] = *(v104 + 24), v107 = v106, v107.i32[3] = 0, v108 = vaddq_f32(v105, v107), v109 = vsubq_f32(v105, v107), v110 = vsubq_f32(v39, v105), *v111.f32 = vext_s8(*v110.f32, *&vextq_s8(v110, v110, 8uLL), 4uLL), v111.i64[1] = v110.u32[0], *v106.f32 = vext_s8(*v98.i8, *&vextq_s8(v106, v106, 8uLL), 4uLL), v106.i64[1] = v98.u32[0], v112 = vmlaq_f32(vmulq_f32(v41, v111), v110, v54), v113 = vmlaq_f32(vmulq_f32(v43, v106), v44, v107), v78 = vcgeq_f32(v108, v51), v114 = vcgeq_f32(v113, vabsq_f32(v112)), v98 = vandq_s8(v78, vcgeq_f32(v52, v109)), *v114.i8 = vmovn_s32(vandq_s8(v98, v114)), v81 = vuzp1_s8(*v114.i8, *v114.i8), v81.i32[0] == -1))
                  {
                    v115 = 0;
                    v116 = &a1[140 * v150 + 278 + 28 * (v101 & 7)];
                    v157 = *(v149 + 4 * v103) + a1[112].i32[v150 + 1];
                    v117 = *(v116 + 2 * v151 + 208);
                    do
                    {
                      v118 = v117 & 7;
                      v119 = *(v116 + 4 * v118);
                      if (v119)
                      {
                        v120 = v116 + 48 + 32 * v118;
                        v121.i64[0] = *v120;
                        v121.i64[1] = *(v120 + 8);
                        v98.i64[0] = *(v120 + 16);
                        v122 = v98;
                        v122.i32[2] = *(v120 + 24);
                        v123 = v122;
                        v123.i32[3] = 0;
                        v124 = vaddq_f32(v121, v123);
                        v125 = vsubq_f32(v121, v123);
                        v126 = vsubq_f32(v39, v121);
                        *v127.f32 = vext_s8(*v126.f32, *&vextq_s8(v126, v126, 8uLL), 4uLL);
                        v127.i64[1] = v126.u32[0];
                        *v122.f32 = vext_s8(*v98.i8, *&vextq_s8(v122, v122, 8uLL), 4uLL);
                        v122.i64[1] = v98.u32[0];
                        v128 = vmlaq_f32(vmulq_f32(v41, v127), v126, v54);
                        v129 = vmlaq_f32(vmulq_f32(v43, v122), v44, v123);
                        v78 = vcgeq_f32(v124, v51);
                        v130 = vcgeq_f32(v129, vabsq_f32(v128));
                        v98 = vandq_s8(v78, vcgeq_f32(v52, v125));
                        *v130.i8 = vmovn_s32(vandq_s8(v98, v130));
                        v81 = vuzp1_s8(*v130.i8, *v130.i8);
                        if (v81.i32[0] == -1)
                        {
                          v131 = (v157 + *(v116 + 20 + 4 * v118));
                          v132 = *&a1[7] + 16 * v131;
                          v133 = (*&a1[6] + 32 * v131 + 16);
                          v134 = 32 * v119;
                          while (1)
                          {
                            if (v133[1].i32[1] < DWORD1(v9))
                            {
                              goto LABEL_60;
                            }

                            if (v133[-1].i32[1] > v9)
                            {
                              break;
                            }

                            *v135.f32 = v133[-2];
                            v135.i64[1] = v133[-1].u32[0];
                            *v98.i8 = *v133;
                            v136 = v98;
                            v136.i32[2] = v133[1].i32[0];
                            v137 = v136;
                            v137.i32[3] = 0;
                            v138 = vaddq_f32(v135, v137);
                            v139 = vsubq_f32(v135, v137);
                            v140 = vsubq_f32(v39, v135);
                            *v141.f32 = vext_s8(*v140.f32, *&vextq_s8(v140, v140, 8uLL), 4uLL);
                            v141.i64[1] = v140.u32[0];
                            *v136.f32 = vext_s8(*v133, *&vextq_s8(v136, v136, 8uLL), 4uLL);
                            v136.i64[1] = v133->u32[0];
                            v142 = vmlaq_f32(vmulq_f32(v41, v141), v140, v54);
                            v143 = vmlaq_f32(vmulq_f32(v43, v136), v44, v137);
                            v78 = vcgeq_f32(v138, v51);
                            v144 = vcgeq_f32(v143, vabsq_f32(v142));
                            v98 = vandq_s8(vcgeq_f32(v52, v139), v78);
                            *v144.i8 = vmovn_s32(vandq_s8(v98, v144));
                            v81 = vuzp1_s8(*v144.i8, *v144.i8);
                            if (v81.i32[0] == -1)
                            {
                              v162 = v9;
                              v169 = v52;
                              v171 = v51;
                              if (!(**a5)(a5, &v174, v132))
                              {
                                v10 = v148;
                                return v10 & 1;
                              }

                              v81.i32[0] = v174.i32[0];
                              v9 = v162;
                              if (*v174.i32 >= v102)
                              {
                                v41 = v166;
                                v39 = v167;
                                v44 = v164;
                                v43 = v165;
                                v54 = v163;
                                v52 = v169;
                                v51 = v171;
                              }

                              else
                              {
                                v98.i32[0] = v159->i32[v158];
                                *v78.i32 = *v98.i32 + (*v174.i32 * v160->f32[v158]);
                                v41 = v166;
                                v39 = v167;
                                v145 = vmlaq_n_f32(v167, v166, *v174.i32);
                                v145.i64[1] = vextq_s8(v145, v145, 8uLL).u32[0];
                                v51 = vminq_f32(v167, v145);
                                v146 = vdup_lane_s32(*v98.i8, 0);
                                v98.i32[1] = v78.i32[0];
                                v52 = vmaxq_f32(v167, v145);
                                v147 = vrev64_s32(vbsl_s8(vcgt_f32(vrev64_s32(*v98.i8), *v98.i8), v146, vdup_lane_s32(*v78.i8, 0)));
                                *&v9 = vbsl_s8(vcltz_s32(v147), vmvn_s8(v147), vneg_f32(vabs_f32(v147)));
                                v44 = v164;
                                v43 = v165;
                                v54 = v163;
                              }
                            }

                            else
                            {
LABEL_60:
                              *v81.i32 = v102;
                            }

                            v132 += 16;
                            v133 += 4;
                            v102 = *v81.i32;
                            v134 -= 32;
                            if (!v134)
                            {
                              goto LABEL_54;
                            }
                          }
                        }
                      }

                      *v81.i32 = v102;
LABEL_54:
                      v117 >>= 3;
                      ++v115;
                      v102 = *v81.i32;
                    }

                    while (v115 != 5);
                  }

                  else
                  {
                    *v81.i32 = v102;
                  }

                  v101 >>= 3;
                  ++v99;
                  v102 = *v81.i32;
                }

                while (v99 != 5);
              }
            }

            v88 = v154 >> 3;
            v83 = v155++ > 3;
          }

          while (v155 != 5);
          *v152 = *v81.i32;
        }
      }
    }

    v10 = 1;
  }

  return v10 & 1;
}

uint64_t physx::Sq::BucketPruner::visualize(uint64_t a1, _DWORD *a2, int a3)
{
  v28 = xmmword_1E30474D0;
  v29 = 0;
  v30 = 0;
  v6 = physx::Cm::RenderOutput::operator<<(a2, &v28);
  a2[1] = a3;
  result = visualize(v6, a1 + 848, v7, v8, v9, v10);
  v16 = 0;
  v25 = a1 + 928;
  v26 = a1 + 880;
  v24 = a1 + 1104;
  v27 = a1 + 2224;
  v17 = a1 + 2272;
  do
  {
    if (*(v26 + 4 * v16))
    {
      result = visualize(a2, v25 + 32 * v16, v12, v13, v14, v15);
      v18 = 0;
      v19 = v24 + 224 * v16;
      v20 = v27;
      v21 = v17;
      do
      {
        if (*(v19 + 4 * v18))
        {
          result = visualize(a2, v19 + 48 + 32 * v18, v12, v13, v14, v15);
          v22 = 0;
          v23 = v21;
          do
          {
            if (*(v20 + v22))
            {
              result = visualize(a2, v23, v12, v13, v14, v15);
            }

            v22 += 4;
            v23 += 32;
          }

          while (v22 != 20);
        }

        ++v18;
        v21 += 224;
        v20 += 224;
      }

      while (v18 != 5);
    }

    ++v16;
    v17 += 1120;
    v27 += 1120;
  }

  while (v16 != 5);
  return result;
}

physx::Sq::ExtendedBucketPruner *physx::Sq::ExtendedBucketPruner::ExtendedBucketPruner(physx::Sq::ExtendedBucketPruner *this, const physx::Sq::PruningPool *a2)
{
  *this = &unk_1F5D210F8;
  physx::Sq::IncrementalAABBPrunerCore::IncrementalAABBPrunerCore((this + 8), a2);
  *(this + 23) = a2;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 28) = 0;
  *(this + 58) = 1061158912;
  *(this + 236) = 0xFFFFFFFFLL;
  *(this + 61) = 0;
  physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<physx::Sq::PrunerPayload const,physx::Sq::ExtendedBucketPrunerData>,physx::Sq::PrunerPayload,physx::Sq::ExtendedBucketPrunerHash,physx::shdfnd::internal::HashMapBase<physx::Sq::PrunerPayload,physx::Sq::ExtendedBucketPrunerData,physx::Sq::ExtendedBucketPrunerHash,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(this + 192, 0x40u);
  *(this + 248) = 0u;
  *(this + 312) = 0;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 292) = 0u;
  *(this + 77) = 32;
  *(this + 36) = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 792, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/scenequery/src/SqExtendedBucketPruner.cpp", 60);
  v4 = *(this + 77);
  if (v4)
  {
    v5 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 16 * v4, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/scenequery/src/SqExtendedBucketPruner.cpp", 61);
    v6 = *(this + 77);
    *(this + 37) = v5;
    if (*(this + 57) < v6)
    {
      physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<physx::Sq::PrunerPayload const,physx::Sq::ExtendedBucketPrunerData>,physx::Sq::PrunerPayload,physx::Sq::ExtendedBucketPrunerHash,physx::shdfnd::internal::HashMapBase<physx::Sq::PrunerPayload,physx::Sq::ExtendedBucketPrunerData,physx::Sq::ExtendedBucketPrunerHash,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(this + 192, v6);
    }
  }

  else
  {
    *(this + 37) = 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sq::AABBTree>::getName() [T = physx::Sq::AABBTree]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = (*(*(v7 + 24) + 16))(v7 + 24, 104, v8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/scenequery/src/SqExtendedBucketPruner.cpp", 65);
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 96) = 0;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0u;
  *(v9 + 64) = 0u;
  *(v9 + 76) = 0u;
  *(this + 31) = v9;
  if (*(this + 77))
  {
    v10 = 0;
    v11 = 0;
    v12 = *(this + 37);
    do
    {
      *(v12 + v10 + 8) = 0;
      v13 = physx::shdfnd::Foundation::mInstance;
      if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
      {
        v14 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sq::AABBTree>::getName() [T = physx::Sq::AABBTree]";
      }

      else
      {
        v14 = "<allocation names disabled>";
      }

      v15 = (*(*(v13 + 24) + 16))(v13 + 24, 104, v14, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/scenequery/src/SqExtendedBucketPruner.cpp", 71);
      *v15 = 0;
      *(v15 + 8) = 0;
      *(v15 + 96) = 0;
      *(v15 + 16) = 0u;
      *(v15 + 32) = 0u;
      *(v15 + 48) = 0u;
      *(v15 + 64) = 0u;
      *(v15 + 76) = 0u;
      v12 = *(this + 37);
      *(v12 + v10) = v15;
      ++v11;
      v10 += 16;
    }

    while (v11 < *(this + 77));
  }

  return this;
}

void physx::Sq::ExtendedBucketPruner::~ExtendedBucketPruner(physx::Sq::ExtendedBucketPruner *this)
{
  *this = &unk_1F5D210F8;
  v2 = *(this + 31);
  if (v2)
  {
    physx::Sq::AABBTree::~AABBTree(*(this + 31));
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v2);
    *(this + 31) = 0;
  }

  v3 = *(this + 77);
  if (v3)
  {
    v4 = 0;
    for (i = 0; i < v3; ++i)
    {
      v6 = *(this + 37);
      v7 = *(v6 + v4);
      if (v7)
      {
        physx::Sq::AABBTree::~AABBTree(*(v6 + v4));
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v7);
        v3 = *(this + 77);
      }

      v4 += 16;
    }
  }

  if (*(this + 36))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 37))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  physx::IG::HandleManager<unsigned int>::~HandleManager(this + 272);
  physx::IG::HandleManager<unsigned int>::~HandleManager(this + 256);
  if (*(this + 24))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  physx::Sq::IncrementalAABBPrunerCore::~IncrementalAABBPrunerCore((this + 8));
}

{
  physx::Sq::ExtendedBucketPruner::~ExtendedBucketPruner(this);

  JUMPOUT(0x1E6906520);
}

void physx::Sq::ExtendedBucketPruner::release(physx::Sq::ExtendedBucketPruner *this)
{
  physx::Sq::IncrementalAABBPrunerCore::release((this + 8));
  v5 = 0;
  physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::resize(this + 256, 0, &v5);
  physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::recreate(this + 256, *(this + 66));
  v6 = 0;
  physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::resize(this + 272, 0, &v6);
  physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::recreate(this + 272, *(this + 70));
  physx::shdfnd::internal::HashBase<physx::Sc::Interaction *,physx::Sc::Interaction *,physx::shdfnd::Hash<physx::Sc::Interaction *>,physx::shdfnd::internal::HashSetBase<physx::Sc::Interaction *,physx::shdfnd::Hash<physx::Sc::Interaction *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::clear(this + 192);
  if (*(this + 77))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(this + 37) + v2;
      *(v4 + 8) = 0;
      physx::Sq::AABBTree::release(*v4, 1);
      ++v3;
      v2 += 16;
    }

    while (v3 < *(this + 77));
  }

  *(this + 76) = 0;
}

void *physx::Sq::ExtendedBucketPruner::addTree(int32x2_t *a1, uint64_t a2, unsigned int a3)
{
  v5 = a1[38].u32[0];
  if (v5 == a1[38].i32[1])
  {
    v48 = a3;
    v6 = 2 * v5;
    v7 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 24 * ((2 * v5) | 1), "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/scenequery/src/SqExtendedBucketPruner.cpp", 201);
    memcpy(v7, *&a1[36], (24 * a1[38].i32[1]));
    if (a1[36])
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    a1[36] = v7;
    if (v6)
    {
      v8 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 32 * v5, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/scenequery/src/SqExtendedBucketPruner.cpp", 208);
    }

    else
    {
      v8 = 0;
    }

    memcpy(v8, *&a1[37], (16 * a1[38].i32[1]));
    if (a1[37])
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    a1[37] = v8;
    v9 = a1[38].u32[1];
    if (v9 < v6)
    {
      v10 = v9 - v6;
      v11 = 16 * v9;
      do
      {
        *&v8[v11 + 8] = 0;
        v12 = physx::shdfnd::Foundation::mInstance;
        if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
        {
          v13 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sq::AABBTree>::getName() [T = physx::Sq::AABBTree]";
        }

        else
        {
          v13 = "<allocation names disabled>";
        }

        v14 = (*(*(v12 + 24) + 16))(v12 + 24, 104, v13, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/scenequery/src/SqExtendedBucketPruner.cpp", 217);
        *v14 = 0;
        *(v14 + 8) = 0;
        *(v14 + 96) = 0;
        *(v14 + 16) = 0u;
        *(v14 + 32) = 0u;
        *(v14 + 48) = 0u;
        *(v14 + 64) = 0u;
        *(v14 + 76) = 0u;
        v8 = a1[37];
        *&v8[v11] = v14;
        v11 += 16;
      }

      while (!__CFADD__(v10++, 1));
    }

    a1[38].i32[1] = v6;
    v5 = a1[38].u32[0];
    a3 = v48;
  }

  else
  {
    v8 = a1[37];
  }

  a1[38].i32[0] = v5 + 1;
  v16 = *(*&a1[23] + 16);
  v17 = *(a2 + 32);
  v18 = a3;
  v19 = &v8[16 * v5];
  v19[1] = a3;
  v20 = *v19;
  physx::Sq::AABBTree::initTree(*v19, a2);
  v21 = *(a2 + 8);
  v22 = (*&a1[36] + 24 * v5);
  *v22 = *v21;
  v22[1] = v21[1];
  v22[2] = v21[2];
  physx::Sq::AABBTreeUpdateMap::initMap(&a1[34], *(a2 + 16), v20);
  result = physx::Sq::ExtendedBucketPruner::buildMainAABBTree(a1);
  v24 = *(a2 + 16);
  if (v24)
  {
    v25 = 0;
    v26 = v16 + 16 * v17;
    do
    {
      if (v25 >= a1[35].u32[0])
      {
        v27 = 0xFFFFFFFF00000000;
      }

      else
      {
        v27 = *(*&a1[34] + 4 * v25) << 32;
      }

      v28 = *(v26 + 16 * v25);
      v29 = a1[28].u32[1];
      v30 = *(v26 + 16 * v25 + 8);
      if (v29)
      {
        v31 = ~(v28.i64[0] << 32) + v28.u32[0] + (v30 << 32);
        v32 = (v31 ^ (v31 >> 22)) + ~((v31 ^ (v31 >> 22)) << 13);
        v33 = (9 * (v32 ^ (v32 >> 8))) ^ ((9 * (v32 ^ (v32 >> 8))) >> 15);
        v34 = (v29 - 1) & (((v33 + ~(v33 << 27)) >> 31) ^ (v33 + ~(v33 << 27)));
        for (i = *(*&a1[27] + 4 * v34); i != -1; i = *(*&a1[26] + 4 * i))
        {
          v36 = vmovn_s64(vceqq_s64(*(*&a1[25] + 32 * i), v28));
          if (v36.i32[0] & v36.i32[1])
          {
            goto LABEL_37;
          }
        }
      }

      else
      {
        v34 = 0;
      }

      if (a1[30].i32[1] == a1[28].i32[0])
      {
        if (v29)
        {
          v37 = 2 * v29;
        }

        else
        {
          v37 = 16;
        }

        if (v29 < v37)
        {
          v49 = *(v26 + 16 * v25);
          result = physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<physx::Sq::PrunerPayload const,physx::Sq::ExtendedBucketPrunerData>,physx::Sq::PrunerPayload,physx::Sq::ExtendedBucketPrunerHash,physx::shdfnd::internal::HashMapBase<physx::Sq::PrunerPayload,physx::Sq::ExtendedBucketPrunerData,physx::Sq::ExtendedBucketPrunerHash,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(&a1[24], v37);
          v28 = v49;
          v29 = a1[28].u32[1];
        }

        v38 = ~(v28.i64[0] << 32) + v28.u32[0] + (v30 << 32);
        v39 = (v38 ^ (v38 >> 22)) + ~((v38 ^ (v38 >> 22)) << 13);
        v40 = (9 * (v39 ^ (v39 >> 8))) ^ ((9 * (v39 ^ (v39 >> 8))) >> 15);
        v34 = (v29 - 1) & (((v40 + ~(v40 << 27)) >> 31) ^ (v40 + ~(v40 << 27)));
      }

      v41 = a1[29].u32[1];
      a1[29].i32[1] = v41 + 1;
      v42 = a1[27];
      v43 = a1[25];
      *(*&a1[26] + 4 * v41) = *(*&v42 + 4 * v34);
      *(*&v42 + 4 * v34) = v41;
      a1[30] = vadd_s32(a1[30], 0x100000001);
      v44 = (*&v43 + 32 * v41);
      *v44 = v28;
      v44[1].i64[0] = v27 | v18;
      v44[1].i32[2] = v5;
      v24 = *(a2 + 16);
LABEL_37:
      ++v25;
    }

    while (v25 < v24);
  }

  if (v20[2])
  {
    v45 = 0;
    v46 = *(a2 + 32);
    v47 = *v20;
    do
    {
      *(v47 + 4 * v45++) += v46;
    }

    while (v45 < v20[2]);
  }

  return result;
}

void *physx::Sq::ExtendedBucketPruner::buildMainAABBTree(physx::Sq::ExtendedBucketPruner *this)
{
  v2 = *(this + 76);
  v5 = *(this + 36);
  v6 = 0;
  LODWORD(v4) = 4;
  HIDWORD(v4) = v2;
  physx::Sq::AABBTree::build(*(this + 31), &v4);
  result = physx::Sq::AABBTreeUpdateMap::initMap((this + 256), *(this + 76), *(this + 31));
  v4 = 0;
  v5 = 0;
  if (v6)
  {
    return (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  return result;
}

uint64_t physx::Sq::ExtendedBucketPruner::updateObject(uint64_t a1, int a2, void *a3, unsigned int a4)
{
  if (!*(a1 + 244) || (v5 = a3[1], v6 = ~(*a3 << 32) + *a3 + (v5 << 32), v7 = 9 * (((v6 ^ (v6 >> 22)) + ~((v6 ^ (v6 >> 22)) << 13)) ^ (((v6 ^ (v6 >> 22)) + ~((v6 ^ (v6 >> 22)) << 13)) >> 8)), v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27), v9 = *(*(a1 + 216) + 4 * ((*(a1 + 228) - 1) & ((v8 >> 31) ^ v8))), v9 == -1))
  {
LABEL_8:
    v12 = (a1 + 8);

    return physx::Sq::IncrementalAABBPrunerCore::updateObject(v12, a4);
  }

  else
  {
    while (1)
    {
      v10 = *(a1 + 200) + 32 * v9;
      if (*v10 == *a3 && *(v10 + 8) == v5)
      {
        break;
      }

      v9 = *(*(a1 + 208) + 4 * v9);
      if (v9 == -1)
      {
        goto LABEL_8;
      }
    }

    physx::Sq::AABBTree::markNodeForRefit(*(*(a1 + 296) + 16 * *(v10 + 24)), *(v10 + 20));
    v14 = *(v10 + 24);
    if (*(a1 + 264) <= v14)
    {
      v15 = -1;
    }

    else
    {
      v15 = *(*(a1 + 256) + 4 * v14);
    }

    physx::Sq::AABBTree::markNodeForRefit(*(a1 + 248), v15);
    *(a1 + 312) = 1;
    return 1;
  }
}

void physx::Sq::ExtendedBucketPruner::refitMarkedNodes(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 312) != 1)
  {
    return;
  }

  v3 = *(a1 + 304);
  if (!v3)
  {
    v22 = *(a1 + 288);
    goto LABEL_76;
  }

  v5 = 0;
  v6 = 16 * v3 - 16;
  v7 = 24 * v3 - 8;
  do
  {
    v8 = *(*(a1 + 296) + v6);
    physx::Sq::AABBTree::refitMarkedNodes(v8, a2);
    v9 = v8[2];
    v10 = *v9;
    v11 = v9[1];
    if ((*v9 >> 23) != 255 && (LODWORD(v11) >> 23) != 255)
    {
      v12 = v9[2];
      if ((LODWORD(v12) >> 23) != 255)
      {
        v13 = v9[3];
        if ((LODWORD(v13) >> 23) != 255)
        {
          v14 = v9[4];
          if ((LODWORD(v14) >> 23) != 255)
          {
            v15 = v9[5];
            if ((LODWORD(v15) >> 23) != 255)
            {
              if (v10 <= v13 && v11 <= v14 && v12 <= v15)
              {
                goto LABEL_34;
              }

              if (v10 == 8.5071e37 && v11 == 8.5071e37)
              {
                if (v12 != 8.5071e37 || v13 != -8.5071e37 || v14 != -8.5071e37 || v15 != -8.5071e37)
                {
                  v11 = 8.5071e37;
                  goto LABEL_35;
                }

LABEL_34:
                ++v5;
              }
            }
          }
        }
      }
    }

LABEL_35:
    v22 = *(a1 + 288);
    v23 = (v22 + v7);
    *(v23 - 4) = v10;
    *(v23 - 3) = v11;
    *(v23 - 1) = *(v9 + 1);
    *v23 = *(v9 + 2);
    v6 -= 16;
    v7 -= 24;
  }

  while (v6 != -16);
  v24 = *(a1 + 304);
  if (v5 == v24)
  {
LABEL_76:
    physx::Sq::AABBTree::refitMarkedNodes(*(a1 + 248), v22);
    goto LABEL_87;
  }

  v25 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, (4 * v24) | 1, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/scenequery/src/SqExtendedBucketPruner.cpp", 300);
  if (*(a1 + 304))
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = *(a1 + 296);
    do
    {
      v31 = *(v30 + v27);
      v32 = *(v31 + 2);
      v33 = *v32;
      if ((*v32 >> 23) == 255 || (v34 = v32[1], (LODWORD(v34) >> 23) == 255) || (v35 = v32[2], (LODWORD(v35) >> 23) == 255) || (v36 = v32[3], (LODWORD(v36) >> 23) == 255) || (v37 = v32[4], (LODWORD(v37) >> 23) == 255) || (v38 = v32[5], (LODWORD(v38) >> 23) == 255) || (v33 <= v36 ? (v39 = v34 > v37) : (v39 = 1), !v39 ? (v40 = v35 > v38) : (v40 = 1), v40 && (v33 == 8.5071e37 ? (v41 = v34 == 8.5071e37) : (v41 = 0), v41 ? (v42 = v35 == 8.5071e37) : (v42 = 0), v42 ? (v43 = v36 == -8.5071e37) : (v43 = 0), v43 ? (v44 = v37 == -8.5071e37) : (v44 = 0), v44 ? (v45 = v38 == -8.5071e37) : (v45 = 0), !v45)))
      {
        physx::Sq::AABBTree::release(v31, 1);
        v30 = *(a1 + 296);
        *(v30 + v27 + 8) = 0;
      }

      else
      {
        if (v28 != v29)
        {
          v46 = *(v30 + 16 * v29);
          *(v30 + 16 * v29) = *(v30 + v27);
          v47 = *(a1 + 288);
          v30 = *(a1 + 296);
          *(v30 + v27) = v46;
          v48 = v47 + 24 * v29;
          *v48 = *(v47 + v26);
          *(v48 + 16) = *(v47 + v26 + 16);
        }

        *(v25 + 4 * v28) = v29++;
      }

      *(v25 + 4 * *(a1 + 304)) = v28++;
      v27 += 16;
      v26 += 24;
    }

    while (v28 < *(a1 + 304));
  }

  *(a1 + 304) = v5;
  if (v5)
  {
    physx::Sq::ExtendedBucketPruner::buildMainAABBTree(a1);
    if (*(a1 + 224))
    {
      v49 = *(a1 + 216);
      v50 = *v49;
      if (v50 == -1)
      {
        v51 = 0;
        while (*(a1 + 228) - 1 != v51)
        {
          v50 = v49[++v51];
          if (v50 != -1)
          {
            goto LABEL_90;
          }
        }
      }

      else
      {
        LODWORD(v51) = 0;
LABEL_90:
        v52 = *(a1 + 200);
        v53 = *(a1 + 208);
        do
        {
LABEL_91:
          *(v52 + 32 * v50 + 24) = *(v25 + 4 * *(v52 + 32 * v50 + 24));
          v50 = *(v53 + 4 * v50);
        }

        while (v50 != -1);
        while (*(a1 + 228) - 1 != v51)
        {
          LODWORD(v51) = v51 + 1;
          v50 = v49[v51];
          if (v50 != -1)
          {
            goto LABEL_91;
          }
        }
      }
    }
  }

  else
  {
    physx::Sq::AABBTree::release(*(a1 + 248), 1);
  }

  if (v25)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v25);
  }

LABEL_87:
  *(a1 + 312) = 0;
}

uint64_t physx::Sq::ExtendedBucketPruner::removeObject(uint64_t a1, uint64_t *a2, int a3, void *a4, int a5, unsigned int *a6)
{
  v13[0] = 0;
  v13[1] = 0;
  v15 = 0;
  v14 = 0;
  if (physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<physx::Sq::PrunerPayload const,physx::Sq::ExtendedBucketPrunerData>,physx::Sq::PrunerPayload,physx::Sq::ExtendedBucketPrunerHash,physx::shdfnd::internal::HashMapBase<physx::Sq::PrunerPayload,physx::Sq::ExtendedBucketPrunerData,physx::Sq::ExtendedBucketPrunerHash,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::erase((a1 + 192), a2, v13))
  {
    physx::Sq::AABBTree::markNodeForRefit(*(*(a1 + 296) + 16 * v15), HIDWORD(v14));
    if (*(a1 + 264) <= v15)
    {
      v11 = -1;
    }

    else
    {
      v11 = *(*(a1 + 256) + 4 * v15);
    }

    physx::Sq::AABBTree::markNodeForRefit(*(a1 + 248), v11);
    physx::Sq::ExtendedBucketPruner::invalidateObject(a1, &v14, a3, a4, a5);
    result = 1;
    *(a1 + 312) = 1;
  }

  else
  {
    physx::Sq::ExtendedBucketPruner::swapIndex(a1, a3, a4, a5, 0);
    return physx::Sq::IncrementalAABBPrunerCore::removeObject((a1 + 8), a3, a5, a6);
  }

  return result;
}

int32x2_t *physx::Sq::ExtendedBucketPruner::swapIndex(int32x2_t *result, int a2, void *a3, int a4, int a5)
{
  if (a2 != a4)
  {
    if (!result[30].i32[1] || (v5 = a3[1], v6 = ~(*a3 << 32) + *a3 + (v5 << 32), v7 = 9 * (((v6 ^ (v6 >> 22)) + ~((v6 ^ (v6 >> 22)) << 13)) ^ (((v6 ^ (v6 >> 22)) + ~((v6 ^ (v6 >> 22)) << 13)) >> 8)), v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27), v9 = *(*&result[27] + 4 * ((result[28].i32[1] - 1) & ((v8 >> 31) ^ v8))), v9 == -1))
    {
LABEL_9:
      if (a5)
      {
        return physx::Sq::IncrementalAABBPrunerCore::swapIndex(result + 1, a2, a4);
      }
    }

    else
    {
      while (1)
      {
        v10 = *&result[25] + 32 * v9;
        if (*v10 == *a3 && *(v10 + 8) == v5)
        {
          break;
        }

        v9 = *(*&result[26] + 4 * v9);
        if (v9 == -1)
        {
          goto LABEL_9;
        }
      }

      v12 = *(*&result[37] + 16 * *(v10 + 24));
      v13 = *(v12[2] + 28 * *(v10 + 20) + 24);
      v14 = (v13 >> 1) & 0xF;
      if (v14)
      {
        for (i = (*v12 + ((v13 >> 3) & 0x1FFFFFFC)); *i != a4; ++i)
        {
          if (!--v14)
          {
            return result;
          }
        }

        *i = a2;
      }
    }
  }

  return result;
}

int32x2_t *physx::Sq::ExtendedBucketPruner::invalidateObject(int32x2_t *a1, uint64_t a2, int a3, void *a4, int a5)
{
  v5 = *(*&a1[37] + 16 * *(a2 + 8));
  v6 = v5[2] + 28 * *(a2 + 4);
  v9 = *(v6 + 24);
  v7 = (v6 + 24);
  v8 = v9;
  v10 = (v9 >> 1) & 0xF;
  if (v10)
  {
    v11 = *v5 + ((v8 >> 3) & 0x1FFFFFFC);
    v12 = v11;
    v13 = v10;
    while (*v12 != a3)
    {
      ++v12;
      if (!--v13)
      {
        return physx::Sq::ExtendedBucketPruner::swapIndex(a1, a3, a4, a5, 1);
      }
    }

    v14 = v10 - 1;
    *v7 = v8 & 0xFFFFFFE1 | (2 * v14);
    *v12 = -1;
    if (v13 != 1)
    {
      *v12 = *(v11 + 4 * v14);
      *(v11 + 4 * v14) = -1;
    }
  }

  return physx::Sq::ExtendedBucketPruner::swapIndex(a1, a3, a4, a5, 1);
}

uint64_t physx::Sq::ExtendedBucketPruner::removeMarkedObjects(physx::Sq::ExtendedBucketPruner *this, int a2)
{
  v4 = physx::Sq::IncrementalAABBPrunerCore::removeMarkedObjects((this + 8));
  v5 = *(this + 76);
  if (v5)
  {
    v6 = *(this + 37);
    if (*(v6 + 16 * (v5 - 1) + 8) == a2)
    {
      v7 = 0;
      v8 = 0;
      v9 = *(this + 61);
      do
      {
        physx::Sq::AABBTree::release(*(v6 + v7), 1);
        v6 = *(this + 37);
        *(v6 + v7 + 8) = 0;
        ++v8;
        v7 += 16;
      }

      while (v8 < *(this + 76));
      v4 = (v9 + v4);
      physx::shdfnd::internal::HashBase<physx::Sc::Interaction *,physx::Sc::Interaction *,physx::shdfnd::Hash<physx::Sc::Interaction *>,physx::shdfnd::internal::HashSetBase<physx::Sc::Interaction *,physx::shdfnd::Hash<physx::Sc::Interaction *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::clear(this + 192);
      *(this + 76) = 0;
      physx::Sq::AABBTree::release(*(this + 31), 1);
      return v4;
    }

    if (*(v6 + 8) == a2)
    {
      v10 = v5 - 1;
      v11 = -1;
      v12 = 24;
      while (v10)
      {
        v13 = *(v6 + v12);
        ++v11;
        v12 += 16;
        --v10;
        if (v13 != a2)
        {
          goto LABEL_12;
        }
      }

      v11 = v5 - 1;
LABEL_12:
      if (v11 != -1)
      {
        v14 = v11;
        v15 = v11 + 1;
        LODWORD(v5) = v5 - (v11 + 1);
        *(this + 76) = v5;
        if (!v5)
        {
          goto LABEL_17;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        do
        {
          v19 = v14 + v18 + 1;
          v20 = (v6 + 16 * v19);
          v22 = *v20;
          v21 = v20[1];
          v23 = *(v22 + 16);
          v24 = (*(this + 36) + v16);
          *v24 = *v23;
          v24[1] = v23[1];
          v24[2] = v23[2];
          v25 = v6 + v17;
          *(v25 + 8) = v21;
          v26 = *v25;
          physx::Sq::AABBTree::release(*v25, 1);
          v6 = *(this + 37);
          v27 = (v6 + 16 * v19);
          *(v6 + v17) = *v27;
          *v27 = v26;
          v27[1] = 0;
          ++v18;
          v5 = *(this + 76);
          v17 += 16;
          v16 += 24;
        }

        while (v18 < v5);
        if (v5 <= v14)
        {
LABEL_17:
          v28 = v14 - v5 + 1;
          v29 = 16 * v5;
          do
          {
            physx::Sq::AABBTree::release(*(v6 + v29), 1);
            v6 = *(this + 37);
            *(v6 + v29 + 8) = 0;
            v29 += 16;
            --v28;
          }

          while (v28);
        }

        physx::Sq::ExtendedBucketPruner::buildMainAABBTree(this);
        v30 = *(this + 57);
        if (v30)
        {
          v31 = *(this + 27);
          v32 = 1;
          for (i = v31; ; ++i)
          {
            v34 = *i;
            if (v34 != -1)
            {
              break;
            }

            ++v32;
            if (!--v30)
            {
              return (v30 + v4);
            }
          }

          v35 = *(this + 25);
          if (v35)
          {
            LODWORD(v30) = 0;
            v36 = v35 + 32 * v34;
            while (*(v36 + 16) != a2)
            {
              *(v36 + 24) -= v15;
              i = (*(this + 26) + 4 * *i);
              LODWORD(v34) = *i;
              if (*i == -1)
              {
                v52 = *(this + 57);
                v53 = v52 - v32;
                if (v52 <= v32)
                {
                  return (v30 + v4);
                }

                v51 = ~v32;
                for (i = &v31[v32]; ; ++i)
                {
                  LODWORD(v34) = *i;
                  if (*i != -1)
                  {
                    break;
                  }

                  --v51;
                  if (!--v53)
                  {
                    return (v30 + v4);
                  }
                }

LABEL_44:
                v32 = -v51;
              }

LABEL_45:
              v36 = v35 + 32 * v34;
              if (!v35)
              {
                return (v30 + v4);
              }
            }

            *i = *(*(this + 26) + 4 * v34);
            v37 = vadd_s32(*(this + 240), 0xFFFFFFFF00000001);
            *(this + 30) = v37;
            if (v34 != v37.i32[1])
            {
              v38 = v35 + 32 * v34;
              v39 = v35 + 32 * v37.u32[1];
              *v38 = *v39;
              v40 = *(v39 + 24);
              *(v38 + 16) = *(v39 + 16);
              *(v38 + 24) = v40;
              v35 = *(this + 25);
              v41 = *(this + 26);
              *(v41 + 4 * v34) = *(v41 + 4 * *(this + 61));
              v42 = ~(*(v35 + 32 * v34) << 32) + *(v35 + 32 * v34) + (*(v35 + 32 * v34 + 8) << 32);
              v43 = (v42 ^ (v42 >> 22)) + ~((v42 ^ (v42 >> 22)) << 13);
              v44 = (9 * (v43 ^ (v43 >> 8))) ^ ((9 * (v43 ^ (v43 >> 8))) >> 15);
              LODWORD(v38) = (*(this + 57) - 1) & (((v44 + ~(v44 << 27)) >> 31) ^ (v44 + ~(v44 << 27)));
              v31 = *(this + 27);
              v45 = &v31[v38];
              v46 = *(this + 61);
              v47 = *v45;
              if (v47 != v46)
              {
                do
                {
                  v48 = v47;
                  v47 = *(v41 + 4 * v47);
                }

                while (v47 != v46);
                v45 = (v41 + 4 * v48);
              }

              *v45 = v34;
            }

            LODWORD(v30) = v30 + 1;
            --*(this + 59);
            LODWORD(v34) = *i;
            if (*i != -1)
            {
              goto LABEL_45;
            }

            v49 = *(this + 57);
            v50 = v49 - v32;
            if (v49 <= v32)
            {
              return (v30 + v4);
            }

            v51 = ~v32;
            for (i = &v31[v32]; ; ++i)
            {
              LODWORD(v34) = *i;
              if (*i != -1)
              {
                break;
              }

              --v51;
              if (!--v50)
              {
                return (v30 + v4);
              }
            }

            goto LABEL_44;
          }

          LODWORD(v30) = 0;
        }

        return (v30 + v4);
      }
    }
  }

  return v4;
}

void physx::Sq::ExtendedBucketPruner::shiftOrigin(uint64_t a1, float32x4_t *a2)
{
  physx::Sq::AABBTree::shiftOrigin(*(a1 + 248), a2);
  if (*(a1 + 304))
  {
    v4 = 0;
    v5 = 0;
    do
    {
      physx::Sq::AABBTree::shiftOrigin(*(*(a1 + 296) + v4), a2);
      ++v5;
      v4 += 16;
    }

    while (v5 < *(a1 + 304));
  }

  physx::Sq::IncrementalAABBPrunerCore::shiftOrigin(a1 + 8, a2);
}

uint64_t physx::Sq::ExtendedBucketPruner::raycast(uint64_t a1, unsigned int (**a2)(void, float *, uint64_t), unsigned int (**a3)(void, float *, uint64_t), float *a4, unsigned int (**a5)(void, float *, uint64_t))
{
  if (!(*(a1 + 84) + *(a1 + 156)) || (result = physx::Sq::IncrementalAABBPrunerCore::raycast(a1 + 8, a2, a3, a4, a5), result))
  {
    if (*(a1 + 244))
    {
      v15 = 0;
      v11 = *(a1 + 184);
      v13[0] = &unk_1F5D21240;
      v13[1] = a2;
      v13[2] = a3;
      v13[3] = &v14;
      v13[4] = a5;
      v13[5] = v11;
      v14 = 0;
      return physx::Gu::AABBTreeRaycast<false,physx::Sq::AABBTree,physx::Sq::AABBTreeRuntimeNode,physx::Sq::PrunerPayload,physx::Sq::PrunerCallback>::operator()(&v12, *(a1 + 296), *(a1 + 288), *(a1 + 248), a2, a3, a4, &v14, v13);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t physx::Sq::ExtendedBucketPruner::overlap(uint64_t a1, uint64_t a2, unsigned int (***a3)(void, int *, uint64_t), double a4, double a5, double a6, double a7, float32x4_t a8, double a9, double a10, float32x4_t a11)
{
  v57 = *MEMORY[0x1E69E9840];
  if (!(*(a1 + 84) + *(a1 + 156)) || (result = physx::Sq::IncrementalAABBPrunerCore::overlap(a1 + 8, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11), result))
  {
    if (!*(a1 + 244))
    {
      return 1;
    }

    v15 = *(a2 + 98);
    result = 1;
    if (v15 > 2)
    {
      if (v15 == 4)
      {
        goto LABEL_22;
      }

      if (v15 != 3)
      {
        return result;
      }

      if (*(a2 + 96))
      {
LABEL_22:
        physx::Gu::OBBAABBTests<true>::OBBAABBTests(&v49, a2 + 48, (a2 + 12), a2, a4, a5, a6, a7, a8, a9, a10, a11);
        v32 = *(a1 + 184);
        v45 = &unk_1F5D21290;
        v46 = &v49;
        v47 = a3;
        v48 = v32;
        return physx::Gu::AABBTreeOverlap<physx::Gu::OBBAABBTests<true>,physx::Sq::AABBTree,physx::Sq::AABBTreeRuntimeNode,physx::Sq::PrunerPayload,physx::Sq::PrunerCallback>::operator()(&v44, *(a1 + 296), *(a1 + 288), *(a1 + 248), &v49, &v45);
      }

      else
      {
        v36 = *(a2 + 80);
        v37 = *(a2 + 92);
        v38 = *(a2 + 72);
        v39 = *(a2 + 84);
        *v40.f32 = vmul_f32(vadd_f32(v38, v39), 0x3F0000003F000000);
        v40.f32[2] = (v36 + v37) * 0.5;
        v40.i32[3] = 0;
        v41 = v37 - v36;
        *v42.f32 = vmul_f32(vsub_f32(v39, v38), 0x3F0000003F000000);
        v42.i64[1] = COERCE_UNSIGNED_INT(v41 * 0.5);
        v49 = v40;
        v50 = v42;
        v43 = *(a1 + 184);
        v45 = &unk_1F5D212D0;
        v46 = &v49;
        v47 = a3;
        v48 = v43;
        return physx::Gu::AABBTreeOverlap<physx::Gu::AABBAABBTest,physx::Sq::AABBTree,physx::Sq::AABBTreeRuntimeNode,physx::Sq::PrunerPayload,physx::Sq::PrunerCallback>::operator()(&v44, *(a1 + 296), *(a1 + 288), *(a1 + 248), &v49, &v45);
      }
    }

    else if (*(a2 + 98))
    {
      if (v15 == 2)
      {
        v16 = *(a2 + 60) + *(a2 + 60);
        v17 = *(a2 + 120);
        v21.i64[0] = *(a2 + 112);
        v18 = *(a2 + 12);
        v19 = COERCE_DOUBLE(vadd_f32(*v21.f32, vmul_n_f32(v18, v16)));
        v20 = COERCE_DOUBLE(vbsl_s8(vceqz_f32(v18), *v21.f32, vbsl_s8(vcgez_f32(v18), vneg_f32(0x80000000800000), 0x80000000800000)));
        v21.i64[1] = LODWORD(v17);
        v22 = *(a2 + 20);
        *v23.f32 = v18;
        v23.i64[1] = LODWORD(v22);
        *&a6 = *(a2 + 124) * 1.01;
        v49 = v21;
        v50 = v23;
        *&v24 = vext_s8(v18, *&vextq_s8(v23, v23, 8uLL), 4uLL);
        *(&v24 + 1) = v18.u32[0];
        v25 = vdupq_lane_s32(*&a6, 0);
        v25.i32[3] = 0;
        v51 = v24;
        v52 = v25;
        v53 = vabsq_f32(v23);
        *&v24 = vext_s8(*v53.i8, *&vextq_s8(v53, v53, 8uLL), 4uLL);
        *(&v24 + 1) = v53.u32[0];
        v54 = v24;
        v26 = v17 + (v16 * v22);
        v27 = -3.4028e38;
        if (v22 >= 0.0)
        {
          v27 = 3.4028e38;
        }

        if (v22 != 0.0)
        {
          v17 = v27;
        }

        v28 = v16 < 3.4028e38;
        if (v16 >= 3.4028e38)
        {
          v29 = v17;
        }

        else
        {
          v29 = v26;
        }

        if (v28)
        {
          *v30.i64 = v19;
        }

        else
        {
          *v30.i64 = v20;
        }

        v30.i64[1] = LODWORD(v29);
        v55 = vminq_f32(v21, v30);
        v56 = vmaxq_f32(v21, v30);
        v31 = *(a1 + 184);
        v45 = &unk_1F5D21310;
        v46 = &v49;
        v47 = a3;
        v48 = v31;
        return physx::Gu::AABBTreeOverlap<physx::Gu::CapsuleAABBTest,physx::Sq::AABBTree,physx::Sq::AABBTreeRuntimeNode,physx::Sq::PrunerPayload,physx::Sq::PrunerCallback>::operator()(&v44, *(a1 + 296), *(a1 + 288), *(a1 + 248), &v49, &v45);
      }
    }

    else
    {
      v33 = *(a2 + 100);
      v33.i64[1] = *(a2 + 108);
      v34 = *(a2 + 112);
      v49 = v33;
      v33.f32[0] = v34 * v34;
      *v50.f32 = vdup_lane_s32(*v33.f32, 0);
      v35 = *(a1 + 184);
      v45 = &unk_1F5D21350;
      v46 = &v49;
      v47 = a3;
      v48 = v35;
      return physx::Gu::AABBTreeOverlap<physx::Gu::SphereAABBTest,physx::Sq::AABBTree,physx::Sq::AABBTreeRuntimeNode,physx::Sq::PrunerPayload,physx::Sq::PrunerCallback>::operator()(&v44, *(a1 + 296), *(a1 + 288), *(a1 + 248), &v49, &v45);
    }
  }

  return result;
}

uint64_t physx::Sq::ExtendedBucketPruner::sweep(uint64_t a1, uint64_t a2, unsigned int (**a3)(void, float *, uint64_t), float *a4, unsigned int (**a5)(void, float *, uint64_t))
{
  if (!(*(a1 + 84) + *(a1 + 156)) || (result = physx::Sq::IncrementalAABBPrunerCore::sweep(a1 + 8, a2, a3, a4, a5), result))
  {
    if (*(a1 + 244))
    {
      v11 = *(a2 + 92);
      v12 = *(a2 + 80);
      v13 = *(a2 + 84);
      v14 = *(a2 + 72);
      v20 = vmul_f32(vsub_f32(v13, v14), 0x3F0000003F000000);
      v21 = (v11 - v12) * 0.5;
      v18 = vmul_f32(vadd_f32(v13, v14), 0x3F0000003F000000);
      v19 = (v11 + v12) * 0.5;
      v15 = *(a1 + 184);
      v17[0] = &unk_1F5D21390;
      v17[1] = &v18;
      v17[2] = a3;
      v17[3] = &v20;
      v17[4] = a5;
      v17[5] = v15;
      return physx::Gu::AABBTreeRaycast<true,physx::Sq::AABBTree,physx::Sq::AABBTreeRuntimeNode,physx::Sq::PrunerPayload,physx::Sq::PrunerCallback>::operator()(&v16, *(a1 + 296), *(a1 + 288), *(a1 + 248), &v18, a3, a4, &v20, v17);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t physx::Sq::ExtendedBucketPruner::visualize(uint64_t a1, _DWORD *a2, int a3)
{
  visualizeTree(a2, a3, *(a1 + 248));
  if (*(a1 + 304))
  {
    v6 = 0;
    v7 = 0;
    do
    {
      visualizeTree(a2, a3, *(*(a1 + 296) + v6));
      ++v7;
      v6 += 16;
    }

    while (v7 < *(a1 + 304));
  }

  return physx::Sq::IncrementalAABBPrunerCore::visualize(a1 + 8, a2, a3);
}

uint64_t visualizeTree(uint64_t result, int a2, uint64_t a3)
{
  if (a3)
  {
    if (*(a3 + 16))
    {
      v4 = result;
      v5 = xmmword_1E30474D0;
      v6 = 0;
      v7 = 0;
      *(physx::Cm::RenderOutput::operator<<(result, &v5) + 4) = a2;
      return physx::Sq::AABBPruner::visualize(physx::Cm::RenderOutput &,unsigned int)const::Local::_Draw(*(a3 + 16), *(a3 + 16), v4);
    }
  }

  return result;
}

void physx::Sq::PruningPool::~PruningPool(physx::Sq::PruningPool *this)
{
  if (*(this + 1))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 1) = 0;
  if (*(this + 2))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 2) = 0;
  if (*(this + 3))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 3) = 0;
  if (*(this + 4))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 4) = 0;
}

uint64_t physx::Sq::PruningPool::resize(physx::Sq::PruningPool *this, unsigned int a2)
{
  if (a2 == -1)
  {
    v4 = 0;
    v5 = 0xFFFFFFFFLL;
LABEL_5:
    v6 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 16 * v5, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/scenequery/src/SqPruningPool.cpp", 62);
    v7 = 4 * v5;
    v8 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 4 * v5, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/scenequery/src/SqPruningPool.cpp", 63);
    v9 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v7, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/scenequery/src/SqPruningPool.cpp", 64);
    goto LABEL_6;
  }

  v4 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 24 * (a2 + 1), "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/scenequery/src/SqPruningPool.cpp", 61);
  if (a2)
  {
    v5 = a2;
    goto LABEL_5;
  }

  v6 = 0;
  v8 = 0;
  v9 = 0;
LABEL_6:
  if (v4)
  {
    v10 = v6 == 0;
  }

  else
  {
    v10 = 1;
  }

  v12 = v10 || v8 == 0 || v9 == 0;
  v13 = !v12;
  if (v12)
  {
    if (v4)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v4);
    }

    if (v6)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v6);
    }

    if (v8)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v8);
    }

    if (v9)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v9);
    }
  }

  else
  {
    v14 = *(this + 1);
    if (v14)
    {
      memcpy(v4, v14, (24 * *this));
    }

    v15 = *(this + 2);
    if (v15)
    {
      memcpy(v6, v15, (16 * *this));
    }

    v16 = *(this + 4);
    if (v16)
    {
      memcpy(v8, v16, (4 * *this));
    }

    v17 = *(this + 3);
    if (v17)
    {
      memcpy(v9, v17, (4 * *(this + 1)));
    }

    *(this + 1) = a2;
    if (*(this + 1))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    *(this + 1) = 0;
    if (*(this + 2))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    *(this + 2) = 0;
    if (*(this + 3))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    *(this + 3) = 0;
    if (*(this + 4))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    *(this + 1) = v4;
    *(this + 2) = v6;
    *(this + 3) = v9;
    *(this + 4) = v8;
  }

  return v13;
}

float32x2_t physx::Sq::PruningPool::shiftOrigin(unsigned int *a1, uint64_t a2)
{
  v2 = *a1;
  if (v2)
  {
    v3 = (*(a1 + 1) + 16);
    do
    {
      v4 = v3[-1];
      v3[-2] = vsub_f32(v3[-2], *a2);
      v5.i32[0] = *(a2 + 8);
      v5.i32[1] = *a2;
      v3[-1] = vsub_f32(v4, v5);
      result = vsub_f32(*v3, *(a2 + 4));
      *v3 = result;
      v3 += 3;
      --v2;
    }

    while (v2);
  }

  return result;
}

void physx::Sq::PruningStructure::~PruningStructure(physx::Sq::PruningStructure *this)
{
  *this = &unk_1F5D21118;
  if (*(this + 5))
  {
    v2 = 0;
    v3 = 1;
    do
    {
      v4 = v3;
      if (*(this + v2 + 6))
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      }

      if (*(this + v2 + 3))
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      }

      v3 = 0;
      v2 = 1;
    }

    while ((v4 & 1) != 0);
    if (*(this + 9))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }
  }
}

{
  physx::Sq::PruningStructure::~PruningStructure(this);
  if (v1)
  {
    v2 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

    v2();
  }
}

uint64_t physx::Sq::PruningStructure::release(physx::Sq::PruningStructure *this)
{
  v1 = *(this + 16);
  if (v1)
  {
    v2 = *(this + 9);
    do
    {
      if (*(*v2 + 8) - 5 <= 1)
      {
        *(*v2 + 80) = 0;
      }

      v2 += 8;
      --v1;
    }

    while (v1);
  }

  v3 = *this;
  if (*(this + 5))
  {
    return (*(v3 + 32))();
  }

  else
  {
    return (*(v3 + 24))();
  }
}

uint64_t physx::Sq::PruningStructure::build(physx::Sq::PruningStructure *this, physx::PxRigidActor *const *a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v107[13] = *MEMORY[0x1E69E9840];
  v97 = a2;
  if (!a3)
  {
    v9 = 0;
    v11 = 0;
LABEL_29:
    v104 = 0;
    v105 = 0;
    v33 = &v105;
    v34 = 1;
    do
    {
      v35 = v34;
      if (v11)
      {
        if (v11 == -1)
        {
          v36 = 0;
        }

        else
        {
          v36 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 24 * (v11 + 1), "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/scenequery/src/SqPruningStructure.cpp", 227);
        }

        *v33 = v36;
      }

      v34 = 0;
      v33 = &v104;
      v11 = v9;
    }

    while ((v35 & 1) != 0);
    v37 = v97;
    if (!a3)
    {
      v38 = 0;
      v39 = 0;
LABEL_60:
      for (i = 0; i != 26; i += 13)
      {
        v71 = &v106[i];
        *v71 = 0;
        *(v71 + 2) = 0;
        *(v71 + 24) = 0;
        *(v71 + 1) = 0uLL;
        *(v71 + 2) = 0uLL;
        *(v71 + 3) = 0uLL;
        *(v71 + 4) = 0uLL;
        *(v71 + 76) = 0uLL;
      }

      v72 = 0;
      v73 = this + 40;
      v74 = this + 12;
      v75 = &v105;
      v76 = v106;
      v77 = 1;
      do
      {
        v78 = v77;
        *&v73[4 * v72] = v38;
        if (v38)
        {
          v79 = *v75;
          v102 = *v75;
          v103 = 0;
          LODWORD(v101) = 4;
          HIDWORD(v101) = v38;
          physx::Sq::AABBTree::build(v76, &v101);
          v80 = *(v76 + 16);
          *&v74[4 * v72] = v80;
          if (v80)
          {
            v81 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 28 * v80, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/scenequery/src/SqPruningStructure.cpp", 267);
            v82 = (28 * *&v74[4 * v72]);
          }

          else
          {
            v82 = 0;
            v81 = 0;
          }

          *(this + v72 + 3) = v81;
          memcpy(v81, v76[2], v82);
          v83 = *&v73[4 * v72];
          if (v83)
          {
            v84 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 4 * v83, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/scenequery/src/SqPruningStructure.cpp", 269);
            v85 = (4 * *&v73[4 * v72]);
          }

          else
          {
            v85 = 0;
            v84 = 0;
          }

          *(this + v72 + 6) = v84;
          memcpy(v84, *v76, v85);
          if (v79)
          {
            (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v79);
          }

          v101 = 0;
          v102 = 0;
          if (v103)
          {
            (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
          }
        }

        v77 = 0;
        v75 = &v104;
        v76 = v107;
        v38 = v39;
        v72 = 1;
      }

      while ((v78 & 1) != 0);
      *(this + 16) = a3;
      if (a3)
      {
        v86 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 8 * a3, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/scenequery/src/SqPruningStructure.cpp", 279);
        v87 = (8 * *(this + 16));
      }

      else
      {
        v87 = 0;
        v86 = 0;
      }

      *(this + 9) = v86;
      memcpy(v86, v97, v87);
      for (j = 13; j != -13; j -= 13)
      {
        physx::Sq::AABBTree::~AABBTree(&v106[j]);
      }

      v89 = 1;
      return v89 & 1;
    }

    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = physx::Sq::gComputeBoundsTable[0];
    v100 = off_1F5D21038;
    v42 = a3;
    while (1)
    {
      v43 = v37[v40];
      v44 = v43->u16[4];
      if (v44 != 5)
      {
        break;
      }

      v57 = v104;
      v58 = (*(v43->i64[0] + 184))(v37[v40], a2);
      if (v58)
      {
        v59 = 0;
        v60 = v57 + 24 * v39;
        v61 = 8 * v58;
        do
        {
          v62 = &v43[2].i8[8];
          if (v43[3].i16[0] != 1)
          {
            v62 = v43[2].i64[1];
          }

          v63 = *&v62[v59];
          (*(*v63 + 312))(v106, v63);
          if ((v106[0] & 2) != 0)
          {
            v100(v60, v63 + 6, v43[6].i64, v69, v64, v65, v66, v67, v68);
            v60 += 24;
            ++v39;
          }

          v59 += 8;
        }

        while (v61 != v59);
LABEL_55:
        v37 = v97;
        v42 = a3;
      }

LABEL_56:
      if (++v40 == v42)
      {
        goto LABEL_60;
      }
    }

    if (v44 != 6)
    {
      goto LABEL_56;
    }

    v45 = v105;
    v46 = (*(v43->i64[0] + 184))(v37[v40], a2);
    if (!v46)
    {
      goto LABEL_56;
    }

    v47 = 0;
    v48 = v45 + 24 * v38;
    v49 = 8 * v46;
    do
    {
      v50 = &v43[2].i8[8];
      if (v43[3].i16[0] != 1)
      {
        v50 = v43[2].i64[1];
      }

      v51 = *&v50[v47];
      (*(*v51 + 312))(v106, v51);
      if ((v106[0] & 2) != 0)
      {
        v41(v48, v51 + 48, v43 + 6, v52, v53, v54, v55, v56);
        v48 += 24;
        ++v38;
      }

      v47 += 8;
    }

    while (v49 != v47);
    goto LABEL_55;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = a3;
  v98 = a3;
  while (1)
  {
    v99 = v10;
    v13 = v8 + 1;
    if (v8 + 1 < v12)
    {
      _X8 = a2[v13];
      v15 = ~((_X8 + 383) >> 5) + (_X8 >> 5);
      do
      {
        __asm { PRFM            #0, [X8] }

        _X8 += 32;
      }

      while (!__CFADD__(v15++, 1));
    }

    v20 = a2[v8];
    v21 = v20[4];
    v22 = *(v20 + *(&physx::NpActor::sLazyInitOffsets + v20[4] + 18) + 8) >> 30;
    if (v22)
    {
      _ZF = v22 == 3;
    }

    else
    {
      _ZF = 1;
    }

    if (!_ZF)
    {
      v90 = physx::shdfnd::Foundation::mInstance;
      v91 = "PrunerStructure::build: Actor already assigned to a scene!";
      v92 = 167;
      goto LABEL_83;
    }

    v24 = (*(*v20 + 184))(a2[v8]);
    if (!v24)
    {
      goto LABEL_58;
    }

    v25 = v24;
    v26 = 0;
    v27 = 0;
    do
    {
      v106[0] = 0;
      (*(*v20 + 192))(v20, v106, 1, v26);
      (*(*v106[0] + 312))(&v101);
      if ((v101 & 2) != 0)
      {
        if (v21 == 6)
        {
          ++v11;
        }

        else
        {
          ++v9;
        }

        v27 = 1;
      }

      v26 = (v26 + 1);
    }

    while (v25 != v26);
    if ((v27 & 1) == 0)
    {
LABEL_58:
      v90 = physx::shdfnd::Foundation::mInstance;
      v91 = "PrunerStructure::build: Provided actor has no scene query shape!";
      v92 = 190;
      goto LABEL_83;
    }

    if (v21 == 5)
    {
      break;
    }

    a2 = v97;
    if (v21 != 6)
    {
      v90 = physx::shdfnd::Foundation::mInstance;
      v91 = "PrunerStructure::build: Provided actor is not a rigid actor!";
      v92 = 216;
      goto LABEL_83;
    }

    v28 = v97[v8];
    v30 = *(v28 + 10);
    v29 = (v28 + 80);
    if (v30)
    {
      v90 = physx::shdfnd::Foundation::mInstance;
      v91 = "PrunerStructure::build: Provided actor has already a pruning structure!";
      v92 = 199;
      goto LABEL_83;
    }

LABEL_26:
    *v29 = this;
    ++v8;
    v12 = v98;
    v10 = v13 >= v98;
    if (v13 == v98)
    {
      goto LABEL_29;
    }
  }

  a2 = v97;
  v31 = v97[v8];
  v32 = *(v31 + 10);
  v29 = (v31 + 80);
  if (!v32)
  {
    goto LABEL_26;
  }

  v90 = physx::shdfnd::Foundation::mInstance;
  v91 = "PrunerStructure::build: Provided actor has already a pruning structure!";
  v92 = 209;
LABEL_83:
  physx::shdfnd::Foundation::error(v90, 4, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/scenequery/src/SqPruningStructure.cpp", v92, v91, a6, a7, a8, v94);
  v89 = v99;
  return v89 & 1;
}

uint64_t physx::Sq::PruningStructure::resolveReferences(uint64_t result, uint64_t (***a2)(void, uint64_t))
{
  if (*(result + 80) == 1)
  {
    v2 = result;
    v3 = *(result + 64);
    if (v3)
    {
      for (i = 0; i < v3; ++i)
      {
        v6 = *(v2 + 72);
        if (*(v6 + 8 * i))
        {
          result = (**a2)(a2, 0x80000000);
          *(v6 + 8 * i) = result;
          v3 = *(v2 + 64);
        }
      }
    }
  }

  return result;
}

uint64_t physx::Sq::PruningStructure::requiresObjects(uint64_t result, uint64_t a2)
{
  if (*(result + 80) == 1)
  {
    v2 = result;
    if (*(result + 64))
    {
      v4 = 0;
      do
      {
        result = (*(*a2 + 16))(a2, *(*(v2 + 72) + 8 * v4++));
      }

      while (v4 < *(v2 + 64));
    }
  }

  return result;
}

uint64_t physx::Sq::PruningStructure::getRigidActors(physx::Sq::PruningStructure *this, physx::PxRigidActor **a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 80))
  {
    v9 = (*(this + 16) - a4) & ~((*(this + 16) - a4) >> 31);
    if (v9 >= a3)
    {
      result = a3;
    }

    else
    {
      result = v9;
    }

    if (result)
    {
      v11 = (*(this + 9) + 8 * a4);
      v12 = result;
      do
      {
        v13 = *v11++;
        *a2++ = v13;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/scenequery/src/SqPruningStructure.cpp", 392, "PrunerStructure::getRigidActors: Pruning structure is invalid!", a6, a7, a8, vars0);
    return 0;
  }

  return result;
}

uint64_t physx::Sq::PruningStructure::invalidate(uint64_t result, uint64_t a2)
{
  v2 = *(result + 64);
  if (v2)
  {
    v3 = *(result + 72);
    v4 = *(result + 64);
    v5 = v3;
    while (1)
    {
      v6 = *v5;
      if (*v5 == a2)
      {
        break;
      }

      ++v5;
      if (!--v4)
      {
        goto LABEL_9;
      }
    }

    if (*(v6 + 8) - 5 <= 1)
    {
      *(v6 + 80) = 0;
    }

    *(result + 64) = v2 - 1;
    *v5 = v3[v2];
  }

LABEL_9:
  *(result + 80) = 0;
  return result;
}

void physx::Sq::PrunerExt::~PrunerExt(physx::Sq::PrunerExt *this)
{
  v2 = *this;
  if (v2)
  {
    (*(*v2 + 112))(v2);
  }

  *this = 0;
  v3 = *(this + 9);
  if ((v3 & 0x80000000) == 0 && (v3 & 0x7FFFFFFF) != 0 && *(this + 3) != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  if (*(this + 1) && (*(this + 4) & 0x80000000) == 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *(this + 1) = 0;
}

physx::Sq::AABBPruner *physx::Sq::PrunerExt::init(uint64_t a1, int a2, uint64_t a3)
{
  *(a1 + 40) = a2;
  *(a1 + 44) = 0;
  if (a2 == 2)
  {
    v28 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v29 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sq::AABBPruner>::getName() [T = physx::Sq::AABBPruner]";
    }

    else
    {
      v29 = "<allocation names disabled>";
    }

    v26 = (*(*(v28 + 24) + 16))(v28 + 24, 544, v29, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/scenequery/src/SqSceneQueryManager.cpp", 85);
    v27 = 0;
    goto LABEL_30;
  }

  if (a2 == 1)
  {
    v24 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v25 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sq::AABBPruner>::getName() [T = physx::Sq::AABBPruner]";
    }

    else
    {
      v25 = "<allocation names disabled>";
    }

    v26 = (*(*(v24 + 24) + 16))(v24 + 24, 544, v25, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/scenequery/src/SqSceneQueryManager.cpp", 84);
    v27 = 1;
LABEL_30:
    result = physx::Sq::AABBPruner::AABBPruner(v26, v27, a3);
    goto LABEL_32;
  }

  if (a2)
  {
    result = 0;
  }

  else
  {
    v5 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v6 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sq::BucketPruner>::getName() [T = physx::Sq::BucketPruner]";
    }

    else
    {
      v6 = "<allocation names disabled>";
    }

    result = (*(*(v5 + 24) + 16))(v5 + 24, 7888, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/scenequery/src/SqSceneQueryManager.cpp", 83);
    v8 = 0;
    *result = &unk_1F5D21068;
    *(result + 97) = 0;
    *(result + 196) = 0;
    *(result + 99) = 0;
    *(result + 50) = 0u;
    *(result + 204) = 0;
    *(result + 103) = 0;
    *(result + 208) = 0;
    *(result + 1) = 0u;
    *(result + 2) = 0u;
    *(result + 3) = 0u;
    *(result + 16) = 0;
    v9 = vdup_n_s32(0xFE7FFFFF);
    do
    {
      v10 = (result + v8);
      v10[116] = 0;
      v10[117].i32[0] = 0;
      v10[118] = v9;
      v10[119].i32[0] = -25165825;
      v8 += 32;
    }

    while (v8 != 160);
    v11 = (result + 1176);
    v12 = 1088;
    v13 = vdup_n_s32(0xFE7FFFFF);
    do
    {
      v14 = v11;
      v15 = 5;
      do
      {
        v14[-3] = 0;
        v14[-2].i32[0] = 0;
        v14[-1] = v13;
        v14->i32[0] = -25165825;
        v14 += 4;
        --v15;
      }

      while (v15);
      v12 += 224;
      v11 += 28;
    }

    while (v12 != 2208);
    v16 = (result + 2296);
    v17 = vdup_n_s32(0xFE7FFFFF);
    do
    {
      v18 = v16;
      v19 = 5;
      do
      {
        v18[-3] = 0;
        v18[-2].i32[0] = 0;
        v18[-1] = v17;
        v18->i32[0] = -25165825;
        v18 += 4;
        --v19;
      }

      while (v19);
      v12 += 224;
      v16 += 28;
    }

    while (v12 != 7808);
    v20 = 0;
    *(result + 3912) = 1;
    *(result + 106) = 0;
    *(result + 214) = 0;
    *(result + 108) = vdup_n_s32(0xFE7FFFFF);
    *(result + 218) = -25165825;
    *(result + 55) = 0u;
    *(result + 56) = 0u;
    *(result + 114) = 0;
    *(result + 69) = 0u;
    *(result + 70) = 0u;
    *(result + 142) = 0;
    *(result + 83) = 0u;
    *(result + 84) = 0u;
    *(result + 170) = 0;
    *(result + 97) = 0u;
    *(result + 98) = 0u;
    *(result + 198) = 0;
    *(result + 226) = 0;
    *(result + 112) = 0u;
    *(result + 111) = 0u;
    *(result + 254) = 0;
    *(result + 126) = 0u;
    v21 = result + 2244;
    *(result + 125) = 0u;
    do
    {
      v22 = v21;
      v23 = 5;
      do
      {
        *(v22 - 12) = 0;
        *(v22 - 20) = 0;
        *(v22 - 1) = 0;
        *v22 = 0;
        *(v22 + 1) = 0;
        *(v22 + 4) = 0;
        v22 += 224;
        --v23;
      }

      while (v23);
      ++v20;
      v21 += 1120;
    }

    while (v20 != 5);
    *(result + 984) = 0;
    *(result + 491) = 0u;
    *(result + 490) = 0u;
    *(result + 1970) = -1;
  }

LABEL_32:
  *a1 = result;
  return result;
}

uint64_t physx::Sq::PrunerExt::preallocate(physx::Sq::PrunerExt *this, unsigned int a2)
{
  if (a2 > 32 * *(this + 4))
  {
    physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(this + 8, a2);
  }

  result = *this;
  if (*this)
  {
    v4 = *(*result + 88);

    return v4();
  }

  return result;
}

uint64_t physx::Sq::PrunerExt::flushMemory(uint64_t this)
{
  if (!*(this + 32))
  {
    v5 = v1;
    v6 = v2;
    v3 = this;
    v4 = 0;
    physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::resize(this + 24, 0, &v4);
    return physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::recreate(v3 + 24, *(v3 + 32));
  }

  return this;
}

uint64_t physx::Sq::PrunerExt::flushShapes(uint64_t this, int a2)
{
  v2 = *(this + 32);
  if (v2)
  {
    v3 = this;
    v4 = 0;
    v5 = *(this + 24);
    v6 = physx::Sq::gComputeBoundsTable[a2];
    do
    {
      v7 = *v3;
      *(v3[1] + ((*(v5 + v4) >> 3) & 0x1FFFFFFC)) &= ~(1 << *(v5 + v4));
      v8 = (*(*v7 + 80))(v7);
      (v6)(0, *v8, v8[1]);
      v4 += 4;
    }

    while (4 * v2 != v4);
    this = (*(**v3 + 16))(*v3, v5, v2);
    *(v3 + 11) += v2;
    *(v3 + 8) = 0;
  }

  return this;
}

uint64_t physx::Sq::PrunerExt::addToDirtyList(uint64_t this, unsigned int a2)
{
  v6 = a2;
  v2 = *(this + 8);
  v3 = *(v2 + 4 * (a2 >> 5));
  if ((v3 & (1 << a2)) == 0)
  {
    v4 = this;
    *(v2 + 4 * (a2 >> 5)) = v3 | (1 << a2);
    v5 = *(this + 32);
    if ((*(this + 36) & 0x7FFFFFFFu) <= v5)
    {
      this = physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(this + 24, &v6);
    }

    else
    {
      *(*(this + 24) + 4 * v5) = a2;
      ++*(this + 32);
    }

    ++*(v4 + 44);
  }

  return this;
}

uint64_t physx::Sq::PrunerExt::removeFromDirtyList(uint64_t this, unsigned int a2)
{
  v2 = *(this + 8);
  v3 = *(v2 + 4 * (a2 >> 5));
  if ((v3 & (1 << a2)) != 0)
  {
    *(v2 + 4 * (a2 >> 5)) = v3 & ~(1 << a2);
    v4 = *(this + 32);
    if (v4)
    {
      v5 = 0;
      while (*(*(this + 24) + 4 * v5) != a2)
      {
        if (v4 == ++v5)
        {
          return this;
        }
      }
    }

    else
    {
      LODWORD(v5) = 0;
    }

    if (v5 != v4)
    {
      v6 = *(this + 24);
      v7 = v4 - 1;
      *(this + 32) = v7;
      *(v6 + 4 * v5) = *(v6 + 4 * v7);
    }
  }

  return this;
}

void physx::Sq::CompoundPrunerExt::~CompoundPrunerExt(physx::Sq::CompoundPrunerExt *this)
{
  v2 = *this;
  if (v2)
  {
    (*(*v2 + 104))(v2);
  }

  *this = 0;
  if (*(this + 1))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }
}

void *physx::Sq::CompoundPrunerExt::flushShapes(void *this)
{
  v1 = *(this + 15);
  if (v1)
  {
    v2 = this;
    v3 = (this[2] + 4);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v23 = 0;
      v6 = (*(**v2 + 80))(*v2, v4, v5, &v23);
      v18 = *v6;
      v19 = *(*v6 + 8);
      if ((v19 & 4) != 0)
      {
        v20 = *(v18 + 16);
      }

      else
      {
        v20 = v18 + 64;
      }

      if (v19)
      {
        v21 = *(v18 + 16) + 64;
      }

      else
      {
        v21 = v18 + 104;
      }

      v3 += 2;
      v11.i64[0] = 0;
      LODWORD(v12) = 1065437102;
      physx::Gu::computeBounds(v23, v21, v20, 0, v11, v12, v13, v14, v15, v16, v17, v7, v8, v9, v10, v22);
      (*(**v2 + 24))(*v2, v5, v4);
      --v1;
    }

    while (v1);
    return physx::shdfnd::internal::HashBase<physx::Sc::Interaction *,physx::Sc::Interaction *,physx::shdfnd::Hash<physx::Sc::Interaction *>,physx::shdfnd::internal::HashSetBase<physx::Sc::Interaction *,physx::shdfnd::Hash<physx::Sc::Interaction *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::clear(v2 + 1);
  }

  return this;
}

uint64_t physx::shdfnd::internal::HashSetBase<physx::shdfnd::Pair<unsigned int,unsigned int>,physx::shdfnd::Hash<physx::shdfnd::Pair<unsigned int,unsigned int>>,physx::shdfnd::NonTrackingAllocator,true>::insert(int32x2_t *a1, int *a2)
{
  v6 = 0;
  v3 = physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<unsigned int,unsigned int>,physx::shdfnd::Pair<unsigned int,unsigned int>,physx::shdfnd::Hash<physx::shdfnd::Pair<unsigned int,unsigned int>>,physx::shdfnd::internal::HashSetBase<physx::shdfnd::Pair<unsigned int,unsigned int>,physx::shdfnd::Hash<physx::shdfnd::Pair<unsigned int,unsigned int>>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::create(a1, a2, &v6);
  v4 = v6;
  if ((v6 & 1) == 0)
  {
    *v3 = *a2;
  }

  return v4 ^ 1u;
}

uint64_t physx::Sq::SceneQueryManager::SceneQueryManager(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  *(a1 + 24) = 0u;
  *(a1 + 16) = 0;
  *a1 = 0u;
  *(a1 + 40) = 0xFFFFFFFF00000003;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0u;
  v12 = (a1 + 48);
  *(a1 + 88) = 0xFFFFFFFF00000003;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 1061158912;
  *(a1 + 148) = 0xFFFFFFFFLL;
  *(a1 + 156) = 0;
  physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<unsigned int,unsigned int>,physx::shdfnd::Pair<unsigned int,unsigned int>,physx::shdfnd::Hash<physx::shdfnd::Pair<unsigned int,unsigned int>>,physx::shdfnd::internal::HashSetBase<physx::shdfnd::Pair<unsigned int,unsigned int>,physx::shdfnd::Hash<physx::shdfnd::Pair<unsigned int,unsigned int>>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(a1 + 104, 0x40u);
  *(a1 + 168) = a2;
  v13 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v14 = "static const char *physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>::getName() [T = physx::shdfnd::MutexImpl]";
  }

  else
  {
    v14 = "<allocation names disabled>";
  }

  v15 = (*(*(v13 + 24) + 16))(v13 + 24, 72, v14, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsMutex.h", 138);
  *(a1 + 176) = v15;
  physx::shdfnd::MutexImpl::MutexImpl(v15);
  *(a1 + 184) = &unk_1F5D211F0;
  physx::Sq::PrunerExt::init(a1, a3, *(a2 + 40));
  physx::Sq::PrunerExt::init(v12, a4, *(a2 + 40));
  v16 = 0;
  *(a1 + 160) = a5;
  v17 = 1;
  do
  {
    v18 = v17;
    v19 = (a1 + 48 * v16);
    if (*v19 && v19[10] == 1)
    {
      (*(**v19 + 136))(*v19, a5);
    }

    v17 = 0;
    v16 = 1;
  }

  while ((v18 & 1) != 0);
  v20 = *(a6 + 8);
  v21 = *(a6 + 12);
  physx::Sq::PrunerExt::preallocate(a1, v20);
  physx::Sq::PrunerExt::preallocate(v12, v21);
  *(a1 + 192) = *(a1 + 48);
  *(a1 + 200) = a1 + 92;
  v22 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v23 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Sq::BVHCompoundPruner>::getName() [T = physx::Sq::BVHCompoundPruner]";
  }

  else
  {
    v23 = "<allocation names disabled>";
  }

  v24 = (*(*(v22 + 24) + 16))(v22 + 24, 1320, v23, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/scenequery/src/SqSceneQueryManager.cpp", 268);
  *(a1 + 96) = physx::Sq::BVHCompoundPruner::BVHCompoundPruner(v24);
  if (*(a1 + 156) <= 0x1Fu && *(a1 + 140) <= 0x1Fu)
  {
    physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<unsigned int,unsigned int>,physx::shdfnd::Pair<unsigned int,unsigned int>,physx::shdfnd::Hash<physx::shdfnd::Pair<unsigned int,unsigned int>>,physx::shdfnd::internal::HashSetBase<physx::shdfnd::Pair<unsigned int,unsigned int>,physx::shdfnd::Hash<physx::shdfnd::Pair<unsigned int,unsigned int>>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(a1 + 104, 0x20u);
  }

  *(a1 + 208) = 0;
  return a1;
}

void physx::Sq::SceneQueryManager::~SceneQueryManager(pthread_mutex_t **this)
{
  physx::shdfnd::MutexT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>>::~MutexT(this + 22);
  physx::Sq::CompoundPrunerExt::~CompoundPrunerExt((this + 12));
  for (i = 6; i != -6; i -= 6)
  {
    physx::Sq::PrunerExt::~PrunerExt(&this[i]);
  }
}

void *physx::Sq::SceneQueryManager::flushMemory(physx::Sq::SceneQueryManager *this)
{
  physx::Sq::PrunerExt::flushMemory(this);
  result = physx::Sq::PrunerExt::flushMemory(this + 48);
  if (!*(this + 39))
  {

    return physx::shdfnd::internal::HashBase<physx::Sc::Interaction *,physx::Sc::Interaction *,physx::shdfnd::Hash<physx::Sc::Interaction *>,physx::shdfnd::internal::HashSetBase<physx::Sc::Interaction *,physx::shdfnd::Hash<physx::Sc::Interaction *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::clear(this + 104);
  }

  return result;
}

uint64_t physx::Sq::SceneQueryManager::markForUpdate(int32x2_t *this, int a2, unint64_t a3)
{
  this[26].i8[0] = 1;
  if (a2 == -1)
  {
    v6 = &this[6 * (a3 & 1)];

    return physx::Sq::PrunerExt::addToDirtyList(v6, a3 >> 1);
  }

  else
  {
    v8 = v3;
    v9 = v4;
    ++this[6 * (a3 & 1) + 5].i32[1];
    v7[0] = a2;
    v7[1] = a3 >> 1;
    return physx::shdfnd::internal::HashSetBase<physx::shdfnd::Pair<unsigned int,unsigned int>,physx::shdfnd::Hash<physx::shdfnd::Pair<unsigned int,unsigned int>>,physx::shdfnd::NonTrackingAllocator,true>::insert(this + 13, v7);
  }
}

uint64_t physx::Sq::SceneQueryManager::addPrunerShape(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float32x4_t a9, double a10, double a11, double a12, double a13, double a14, int32x4_t a15)
{
  *(a1 + 208) = 1;
  v37[0] = a2;
  v37[1] = a3;
  v36 = 0;
  v18 = a1 + 48 * a4;
  ++*(v18 + 44);
  if (a5 == -1)
  {
    if (a6)
    {
      v25 = *(a6 + 12);
      v26 = vmulq_f32(vsubq_f32(v25, *a6), vdupq_n_s32(0x3BA3D70Au));
      v27 = vsubq_f32(*a6, v26);
      v28 = vaddq_f32(v25, v26);
      v27.i32[3] = v28.i32[0];
      v34 = v27;
      v35 = vextq_s8(v28, v28, 4uLL).u64[0];
    }

    else
    {
      (physx::Sq::gComputeBoundsTable[a4])(&v34, a2, a3);
    }

    (***v18)(*v18, &v36, &v34, v37, 1, a7);
    v29 = v36;
    v30 = *(v18 + 16);
    if (v36 >= 32 * v30)
    {
      v31 = v30 << 6;
      if (v31 <= 0x400)
      {
        v32 = 1024;
      }

      else
      {
        v32 = v31;
      }

      physx::Cm::BitMapBase<physx::shdfnd::NonTrackingAllocator>::extend(v18 + 8, v32);
    }

    *(*(v18 + 8) + ((v29 >> 3) & 0x1FFFFFFC)) &= ~(1 << v29);
  }

  else
  {
    v21 = *(a2 + 8);
    if ((v21 & 4) != 0)
    {
      v22 = *(a2 + 16);
    }

    else
    {
      v22 = a2 + 64;
    }

    if (v21)
    {
      v23 = *(a2 + 16) + 64;
    }

    else
    {
      v23 = a2 + 104;
    }

    LODWORD(a10) = 1065437102;
    a9.i64[0] = 0;
    physx::Gu::computeBounds(&v34, v23, v22, 0, a9, a10, a11, a12, a13, a14, a15, a5, a6, a7, a8, v34.i8[0]);
    (*(**(a1 + 96) + 40))(*(a1 + 96), a5, &v36, &v34, a2, a3);
  }

  return a4 | (2 * v36);
}

uint64_t physx::Sq::SceneQueryManager::getPayload(physx::Sq::SceneQueryManager *this, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 1;
  if (a2 != -1)
  {
    return (*(**(this + 12) + 72))(*(this + 12), v4, a2);
  }

  v6 = *(this + 6 * (a3 & 1));
  return (*(*v6 + 72))(v6, v4);
}

uint64_t physx::Sq::SceneQueryManager::removePrunerShape(int32x2_t *this, uint64_t a2, unint64_t a3)
{
  this[26].i8[0] = 1;
  v3 = a3 >> 1;
  v8 = a3 >> 1;
  v4 = &this[6 * (a3 & 1)];
  ++v4[5].i32[1];
  if (a2 == -1)
  {
    physx::Sq::PrunerExt::removeFromDirtyList(&this[6 * (a3 & 1)], a3 >> 1);
    return (*(**v4 + 8))(*v4, &v8, 1);
  }

  else
  {
    v9[0] = a2;
    v9[1] = a3 >> 1;
    physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<unsigned int,unsigned int>,physx::shdfnd::Pair<unsigned int,unsigned int>,physx::shdfnd::Hash<physx::shdfnd::Pair<unsigned int,unsigned int>>,physx::shdfnd::internal::HashSetBase<physx::shdfnd::Pair<unsigned int,unsigned int>,physx::shdfnd::Hash<physx::shdfnd::Pair<unsigned int,unsigned int>>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::erase(this + 13, v9);
    return (*(**&this[12] + 32))(*&this[12], a2, v3);
  }
}

physx::Sq::SceneQueryManager *physx::Sq::SceneQueryManager::afterSync(physx::Sq::SceneQueryManager *this, int a2)
{
  v2 = this;
  if (a2 == 2)
  {
    v3 = 1;
  }

  else
  {
    physx::Sq::SceneQueryManager::flushShapes(this);
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = v6;
      v8 = (v2 + 48 * v5);
      this = *v8;
      if (*v8 && v8[10] == 1)
      {
        this = (*(*this + 144))(this, 1);
      }

      if (!a2)
      {
        this = (*(**v8 + 32))();
      }

      v6 = 0;
      v5 = 1;
    }

    while ((v7 & 1) != 0);
    v3 = a2 != 0;
  }

  *(v2 + 208) = v3;
  return this;
}

void *physx::Sq::SceneQueryManager::flushShapes(physx::Sq::SceneQueryManager *this)
{
  physx::Sq::PrunerExt::flushShapes(this, 0);
  physx::Sq::PrunerExt::flushShapes(this + 48, 1);

  return physx::Sq::CompoundPrunerExt::flushShapes(this + 12);
}