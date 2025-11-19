uint64_t re::DynamicArray<re::RigNode>::operator[](uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 56 * a2;
}

uint64_t RERigAssetBuilderSetRigNodeRotation(void *a1, unint64_t a2, char a3, __n128 a4)
{
  v4 = a2;
  v19 = *MEMORY[0x1E69E9840];
  if (a1[133] <= a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v9 = CoreRELog::log;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = v4;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Invalid rig node index: %zu", buf, 0xCu);
    }

    return 0;
  }

  v5 = a1;
  v6 = a1[135] + 56 * a2;
  v7 = *(v6 + 24);
  v8 = *(v6 + 16);
  if (v8 == 2)
  {
    v10 = a1[118];
    if (v10 > v7)
    {
      *(a1[120] + 96 * v7 + 32) = a4;
      if (a1[118] > v7)
      {
        *(a1[120] + 96 * v7 + 80) = a3;
        return 1;
      }

LABEL_25:
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    goto LABEL_22;
  }

  if (v8 == 1)
  {
    if (a1[113] > v7)
    {
      *(a1[115] + (v7 << 6) + 16) = a4;
      if (a1[113] > v7)
      {
        *(a1[115] + (v7 << 6) + 48) = a3;
        return 1;
      }

      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_25;
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_22:
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    *buf = 0u;
    v4 = MEMORY[0x1E69E9C10];
    v5 = v10;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_23;
  }

  if (CoreRELog::onceToken != -1)
  {
LABEL_23:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v12 = CoreRELog::log;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = *(re::DynamicArray<re::RigNode>::operator[]((v5 + 131), v4) + 16);
    *buf = 67109120;
    *&buf[4] = v13;
    _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "Unknown rig node type: %u", buf, 8u);
  }

  return 0;
}

uint64_t RERigAssetBuilderSetRigNodeScale(void *a1, unint64_t a2, __n128 a3)
{
  v3 = a2;
  v18 = *MEMORY[0x1E69E9840];
  if (a1[133] <= a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v8 = CoreRELog::log;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = v3;
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "Invalid rig node index: %zu", buf, 0xCu);
    }

    return 0;
  }

  v4 = a1;
  v5 = a1[135] + 56 * a2;
  v6 = *(v5 + 24);
  v7 = *(v5 + 16);
  if (v7 == 2)
  {
    v9 = a1[118];
    if (v9 > v6)
    {
      *(a1[120] + 96 * v6 + 64) = a3;
      return 1;
    }

    goto LABEL_20;
  }

  if (v7 == 1)
  {
    if (a1[113] > v6)
    {
      *(a1[115] + (v6 << 6) + 32) = a3;
      return 1;
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_20:
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    *buf = 0u;
    v3 = MEMORY[0x1E69E9C10];
    v4 = v9;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_21;
  }

  if (CoreRELog::onceToken != -1)
  {
LABEL_21:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v11 = CoreRELog::log;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = *(re::DynamicArray<re::RigNode>::operator[]((v4 + 131), v3) + 16);
    *buf = 67109120;
    *&buf[4] = v12;
    _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "Unknown rig node type: %u", buf, 8u);
  }

  return 0;
}

uint64_t RERigAssetBuilderSetRigNodeRotationOrientation(void *a1, unint64_t a2, __n128 a3)
{
  v3 = a2;
  v17 = *MEMORY[0x1E69E9840];
  if (a1[133] <= a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v9 = CoreRELog::log;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = v3;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Invalid rig node index: %zu", buf, 0xCu);
    }

    return 0;
  }

  v4 = a1;
  v5 = a1[135] + 56 * a2;
  if (*(v5 + 16) == 2)
  {
    v6 = *(v5 + 24);
    v7 = a1[118];
    if (v7 > v6)
    {
      *(a1[120] + 96 * v6 + 16) = a3;
      return 1;
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    *buf = 0u;
    v3 = MEMORY[0x1E69E9C10];
    v4 = v7;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_16;
  }

  if (CoreRELog::onceToken != -1)
  {
LABEL_16:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v10 = CoreRELog::log;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = *(re::DynamicArray<re::RigNode>::operator[]((v4 + 131), v3) + 16);
    *buf = 67109120;
    *&buf[4] = v11;
    _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Invalid rig node type for rotation orientation: %u", buf, 8u);
  }

  return 0;
}

uint64_t RERigAssetBuilderSetRigNodeScaleOrientation(void *a1, unint64_t a2, __n128 a3)
{
  v3 = a2;
  v17 = *MEMORY[0x1E69E9840];
  if (a1[133] <= a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v9 = CoreRELog::log;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = v3;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Invalid rig node index: %zu", buf, 0xCu);
    }

    return 0;
  }

  v4 = a1;
  v5 = a1[135] + 56 * a2;
  if (*(v5 + 16) == 2)
  {
    v6 = *(v5 + 24);
    v7 = a1[118];
    if (v7 > v6)
    {
      *(a1[120] + 96 * v6 + 48) = a3;
      return 1;
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    *buf = 0u;
    v3 = MEMORY[0x1E69E9C10];
    v4 = v7;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_16;
  }

  if (CoreRELog::onceToken != -1)
  {
LABEL_16:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v10 = CoreRELog::log;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = *(re::DynamicArray<re::RigNode>::operator[]((v4 + 131), v3) + 16);
    *buf = 67109120;
    *&buf[4] = v11;
    _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Invalid rig node type for scale orientation: %u", buf, 8u);
  }

  return 0;
}

BOOL RERigAssetBuilderSetRigNodeParent(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1064);
  if (v4 <= a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 134217984;
      v8 = a2;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Invalid rig node index: %zu", &v7, 0xCu);
    }
  }

  else
  {
    *(*(a1 + 1080) + 56 * a2 + 32) = a3;
  }

  return v4 > a2;
}

uint64_t RERigAssetBuilderSetRigNodeConstraints(uint64_t a1, unint64_t a2, unint64_t *a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1064) <= a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v15 = CoreRELog::log;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v17 = 134217984;
    v18 = a2;
    v16 = "Invalid rig node index: %zu";
    goto LABEL_17;
  }

  v7 = *(a1 + 1080) + 56 * a2;
  *(v7 + 40) = 0;
  *(v7 + 48) = *(a1 + 984);
  if (!a4)
  {
LABEL_8:
    *(v7 + 40) = a4;
    return 1;
  }

  v9 = a4;
  while (1)
  {
    v11 = *a3++;
    v10 = v11;
    if (v11 >= *(a1 + 1208))
    {
      break;
    }

    v12 = re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::operator[](a1 + 1168, v10);
    v13 = *(a1 + 984);
    if (v13 >= *(a1 + 976))
    {
      re::DynamicArray<re::RigNodeConstraint>::growCapacity((a1 + 968), v13 + 1);
      v13 = *(a1 + 984);
    }

    *(*(a1 + 1000) + 16 * v13) = *v12;
    ++*(a1 + 984);
    ++*(a1 + 992);
    if (!--v9)
    {
      goto LABEL_8;
    }
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v15 = CoreRELog::log;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v17 = 134217984;
    v18 = v10;
    v16 = "Invalid constraint index: %zu";
LABEL_17:
    _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, v16, &v17, 0xCu);
  }

LABEL_18:

  return 0;
}

uint64_t RERigAssetBuilderAddTwoBoneIKHandle(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v56 = *MEMORY[0x1E69E9840];
  v21 = a3;
  v22[0] = a2;
  v19 = a5;
  v20 = a4;
  v6 = a1[158];
  if (v6 && *re::BucketArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData,32ul>::operator[]((a1 + 153), v6 - 1) == 1)
  {
    v8 = a1[158];
    if (!v8)
    {
      goto LABEL_32;
    }

    v9 = *(re::BucketArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData,32ul>::operator[]((a1 + 153), v8 - 1) + 8);
  }

  else
  {
    v10 = (*(*a1 + 24))(a1);
    *&v25 = 0;
    *&v24 = 0;
    DWORD2(v24) = 0;
    v23 = v10;
    re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(&v23, 0);
    ++DWORD2(v24);
    v11 = (*(*a1 + 24))(a1);
    *(&v27 + 1) = 0;
    v26 = 0uLL;
    LODWORD(v27) = 0;
    *(&v25 + 1) = v11;
    re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(&v25 + 1, 0);
    LODWORD(v27) = v27 + 1;
    v12 = (*(*a1 + 24))(a1);
    v32 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v28 = v12;
    re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(&v28, 0);
    ++v31;
    v13 = (*(*a1 + 24))(a1);
    v37 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v33 = v13;
    re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(&v33, 0);
    ++v36;
    v14 = (*(*a1 + 24))(a1);
    v42 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v38 = v14;
    re::DynamicArray<int>::setCapacity(&v38, 0);
    ++v41;
    v15 = (*(*a1 + 24))(a1);
    v47 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v43 = v15;
    re::DynamicArray<int>::setCapacity(&v43, 0);
    ++v46;
    re::DynamicArray<re::RigTwoBoneIKHandles>::add((a1 + 96), &v23);
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

    if (v33)
    {
      if (v37)
      {
        (*(*v33 + 40))();
      }

      v37 = 0;
      v34 = 0;
      v35 = 0;
      v33 = 0;
      ++v36;
    }

    if (v28)
    {
      if (v32)
      {
        (*(*v28 + 40))();
      }

      v32 = 0;
      v29 = 0;
      v30 = 0;
      v28 = 0;
      ++v31;
    }

    if (*(&v25 + 1))
    {
      if (*(&v27 + 1))
      {
        (*(**(&v25 + 1) + 40))();
      }

      *(&v27 + 1) = 0;
      v26 = 0uLL;
      *(&v25 + 1) = 0;
      LODWORD(v27) = v27 + 1;
    }

    if (v23.n128_u64[0] && v25)
    {
      (*(*v23.n128_u64[0] + 40))();
    }

    v9 = a1[98] - 1;
    v23.n128_u8[0] = 1;
    v23.n128_u64[1] = v9;
    re::DynamicArray<re::RigNodeConstraint>::add((a1 + 126), &v23);
  }

  v16 = a1[98];
  if (v16 <= v9)
  {
    v22[1] = 0;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v48 = 136315906;
    v49 = "operator[]";
    v50 = 1024;
    v51 = 789;
    v52 = 2048;
    v53 = v9;
    v54 = 2048;
    v55 = v16;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_32:
    re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  v17 = (a1[100] + 240 * v9);
  re::DynamicArray<unsigned long>::add(v17, v22);
  re::DynamicArray<unsigned long>::add(v17 + 5, &v21);
  re::DynamicArray<unsigned long>::add(v17 + 10, &v20);
  re::DynamicArray<unsigned long>::add(v17 + 15, &v19);
  v23.n128_u8[0] = 1;
  v23.n128_u64[1] = v9;
  *&v24 = v17[2] - 1;
  return a1[158] - 1;
}

__n128 re::BucketArray<anonymous namespace::RigAssetBuilder::MappedIKHandle,32ul>::add(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 40);
  v5 = *(a1 + 8);
  if (v4 + 1 > 32 * v5)
  {
    v5 = *(a1 + 8);
  }

  if (v5 <= v4 >> 5)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 16))
  {
    v6 = a1 + 24;
  }

  else
  {
    v6 = *(a1 + 32);
  }

  v7 = *(v6 + 8 * (v4 >> 5));
  ++*(a1 + 40);
  ++*(a1 + 48);
  v8 = (v7 + 24 * (v4 & 0x1F));
  result = *a2;
  v8[1].n128_u64[0] = a2[1].n128_u64[0];
  *v8 = result;
  return result;
}

uint64_t RERigAssetBuilderSetTwoBoneIKHandleTwistOffset(unint64_t a1, unint64_t a2, float a3)
{
  v3 = a2;
  v21 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1264) <= a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = v3;
      _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "Invalid IK handle index: %zu", buf, 0xCu);
    }

    return 0;
  }

  v5 = a1;
  if (*re::BucketArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData,32ul>::operator[](a1 + 1224, a2) != 1)
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_14:
      v14 = CoreRELog::log;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = *re::BucketArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData,32ul>::operator[](v5 + 1224, v3);
        *buf = 67109120;
        *&buf[4] = v15;
        _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, "IK handle type is not a two-bone IK: %u", buf, 8u);
      }

      return 0;
    }

LABEL_19:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_14;
  }

  v6 = *(re::BucketArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData,32ul>::operator[](v5 + 1224, v3) + 8);
  v7 = *(v5 + 784);
  if (v7 <= v6)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    *buf = 0u;
    v3 = MEMORY[0x1E69E9C10];
    v5 = v7;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  v8 = *(v5 + 800);
  v9 = *(re::BucketArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData,32ul>::operator[](v5 + 1224, v3) + 16);
  v10 = v8 + 240 * v6;
  v11 = *(v10 + 176);
  if (v9 >= v11)
  {
    re::DynamicArray<float>::resize(v10 + 160, v9 + 1);
    v11 = *(v10 + 176);
  }

  if (v11 <= v9)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *(*(v10 + 192) + 4 * v9) = a3;
  return 1;
}

uint64_t RERigAssetBuilderSetTwoBoneIKHandleSoftIKPercentage(unint64_t a1, unint64_t a2, float a3)
{
  v3 = a2;
  v22 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1264) <= a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v14 = CoreRELog::log;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = v3;
      _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, "Invalid IK handle index: %zu", buf, 0xCu);
    }

    return 0;
  }

  v5 = a1;
  if (*re::BucketArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData,32ul>::operator[](a1 + 1224, a2) != 1)
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_14:
      v15 = CoreRELog::log;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = *re::BucketArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData,32ul>::operator[](v5 + 1224, v3);
        *buf = 67109120;
        *&buf[4] = v16;
        _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, "IK handle type is not a two-bone IK: %u", buf, 8u);
      }

      return 0;
    }

LABEL_19:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_14;
  }

  v6 = *(re::BucketArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData,32ul>::operator[](v5 + 1224, v3) + 8);
  v7 = *(v5 + 784);
  if (v7 <= v6)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    *buf = 0u;
    v3 = MEMORY[0x1E69E9C10];
    v5 = v7;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  v8 = *(v5 + 800);
  v9 = *(re::BucketArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData,32ul>::operator[](v5 + 1224, v3) + 16);
  v11 = (v8 + 240 * v6);
  v12 = v11[27];
  if (v9 >= v12)
  {
    re::DynamicArray<float>::resize(v11 + 25, v9 + 1, &re::TwoBoneIKOptions::kDefaultSoftIKPercentage, v10);
    v12 = v11[27];
  }

  if (v12 <= v9)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *(v11[29] + 4 * v9) = a3;
  return 1;
}

uint64_t RERigAssetBuilderAddSingleChainIKHandle(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v18 = a2;
  v16 = a4;
  v5 = a1[158];
  if (v5 && *re::BucketArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData,32ul>::operator[]((a1 + 153), v5 - 1) == 2)
  {
    v7 = a1[158];
    if (!v7)
    {
      goto LABEL_20;
    }

    v8 = *(re::BucketArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData,32ul>::operator[]((a1 + 153), v7 - 1) + 8);
  }

  else
  {
    v9 = (*(*a1 + 24))(a1);
    *&v22 = 0;
    *&v21 = 0;
    DWORD2(v21) = 0;
    v20 = v9;
    re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(&v20, 0);
    ++DWORD2(v21);
    v10 = (*(*a1 + 24))(a1);
    *(&v24 + 1) = 0;
    v23 = 0uLL;
    LODWORD(v24) = 0;
    *(&v22 + 1) = v10;
    re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(&v22 + 1, 0);
    LODWORD(v24) = v24 + 1;
    v11 = (*(*a1 + 24))(a1);
    v29 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v25 = v11;
    re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(&v25, 0);
    ++v28;
    v30 = 1008981770;
    v12.n128_f32[0] = re::DynamicArray<re::RigSingleChainIKHandles>::add((a1 + 101), &v20);
    if (v25)
    {
      if (v29)
      {
        (*(*v25 + 40))(v12.n128_f32[0]);
      }

      v29 = 0;
      v26 = 0;
      v27 = 0;
      v25 = 0;
      ++v28;
    }

    if (*(&v22 + 1))
    {
      if (*(&v24 + 1))
      {
        (*(**(&v22 + 1) + 40))(v12);
      }

      *(&v24 + 1) = 0;
      v23 = 0uLL;
      *(&v22 + 1) = 0;
      LODWORD(v24) = v24 + 1;
    }

    if (v20.n128_u64[0] && v22)
    {
      (*(*v20.n128_u64[0] + 40))(v12);
    }

    v8 = a1[103] - 1;
    v20.n128_u8[0] = 2;
    v20.n128_u64[1] = v8;
    re::DynamicArray<re::RigNodeConstraint>::add((a1 + 126), &v20);
  }

  v13 = a1[103];
  if (v13 <= v8)
  {
    v19 = 0;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v31 = 136315906;
    v32 = "operator[]";
    v33 = 1024;
    v34 = 789;
    v35 = 2048;
    v36 = v8;
    v37 = 2048;
    v38 = v13;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_20:
    re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768, v16, v17, v18, v19);
    _os_crash();
    __break(1u);
  }

  v14 = (a1[105] + (v8 << 7));
  re::DynamicArray<unsigned long>::add(v14, &v18);
  re::DynamicArray<unsigned long>::add(v14 + 5, &v17);
  re::DynamicArray<unsigned long>::add(v14 + 10, &v16);
  v20.n128_u8[0] = 2;
  v20.n128_u64[1] = v8;
  *&v21 = v14[2] - 1;
  return a1[158] - 1;
}

uint64_t RERigAssetBuilderSetSingleChainIKHandleTolerance(unint64_t a1, unint64_t a2, float a3)
{
  v3 = a2;
  v17 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1264) <= a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v9 = CoreRELog::log;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = v3;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Invalid IK handle index: %zu", buf, 0xCu);
    }

    return 0;
  }

  v5 = a1;
  if (*re::BucketArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData,32ul>::operator[](a1 + 1224, a2) == 2)
  {
    v6 = *(re::BucketArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData,32ul>::operator[](v5 + 1224, v3) + 8);
    v7 = *(v5 + 824);
    if (v7 > v6)
    {
      *(*(v5 + 840) + (v6 << 7) + 120) = a3;
      return 1;
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    *buf = 0u;
    v3 = MEMORY[0x1E69E9C10];
    v5 = v7;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_16;
  }

  if (CoreRELog::onceToken != -1)
  {
LABEL_16:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v10 = CoreRELog::log;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = *re::BucketArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData,32ul>::operator[](v5 + 1224, v3);
    *buf = 67109120;
    *&buf[4] = v11;
    _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "IK handle type is not a single-chain IK: %u", buf, 8u);
  }

  return 0;
}

uint64_t RERigAssetBuilderFinishRigDefinition(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 24);
  v3 = (*(*a1 + 24))(a1);
  re::validateRigDefinitionData(v3, v2, v13);
  if (v13[0])
  {
    v4 = *(a1 + 1320);
    v5 = *(a1 + 1288);
    if (v4 + 1 > 4 * v5)
    {
      re::BucketArray<re::RigDefinition,4ul>::setBucketsCapacity((a1 + 1280), (v4 + 4) >> 2);
      v5 = *(a1 + 1288);
    }

    if (v5 > v4 >> 2)
    {
      if (*(a1 + 1296))
      {
        v6 = a1 + 1304;
      }

      else
      {
        v6 = *(a1 + 1312);
      }

      v9 = *(v6 + 8 * (v4 >> 2));
      ++*(a1 + 1320);
      ++*(a1 + 1328);
      re::RigDefinition::RigDefinition(v9 + 1144 * (v4 & 3), v2);
      re::RigDefinition::deinit(v2);
      v10 = (*(*a1 + 24))(a1);
      re::RigDefinition::init(v2, v10);
      v8 = *(a1 + 1320) - 1;
      goto LABEL_12;
    }

    v18 = 0;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v19 = 136315906;
    v20 = "operator[]";
    v21 = 1024;
    v22 = 858;
    v23 = 2048;
    v24 = v4 >> 2;
    v25 = 2048;
    v26 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_22;
  }

  if (CoreRELog::onceToken != -1)
  {
LABEL_22:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v7 = CoreRELog::log;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    if (v15)
    {
      v12 = v17;
    }

    else
    {
      v12 = v16;
    }

    *buf = 136315138;
    *&buf[4] = v12;
    _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Rig Definition Validation Failed: %s", buf, 0xCu);
  }

  v8 = -1;
LABEL_12:
  if (v13[0] & 1) == 0 && v14 && (v15)
  {
    (*(*v14 + 40))(v14, v17);
  }

  return v8;
}

void *re::RigDefinition::init(re::RigDefinition *this, re::Allocator *a2)
{
  v3 = this;
  v5 = a2;
  *this = a2;
  re::DynamicArray<re::RigComponentConstraint>::setCapacity(this, 0);
  ++*(v3 + 6);
  *(v3 + 5) = a2;
  re::DynamicArray<re::RigComponentConstraint>::setCapacity(v3 + 5, 0);
  ++*(v3 + 16);
  *(v3 + 10) = a2;
  re::DynamicArray<re::RigBasicConstraint>::setCapacity(v3 + 10, 0);
  ++*(v3 + 26);
  *(v3 + 15) = a2;
  re::DynamicArray<re::RigAimConstraint>::setCapacity(v3 + 15, 0);
  *(v3 + 20) = a2;
  v3 = (v3 + 160);
  ++*(v3 - 4);
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(v3, 0);
  ++*(v3 + 6);
  re::DynamicRegisterTable::initArrays<re::Allocator *&>(v3 + 5, &v5);
  *(v3 + 45) = v5;
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(v3 + 45, 0);
  ++*(v3 + 96);
  *(v3 + 58) = v5;
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(v3 + 58, 0);
  ++*(v3 + 122);
  *(v3 + 63) = v5;
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(v3 + 63, 0);
  ++*(v3 + 132);
  *(v3 + 68) = v5;
  re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(v3 + 68, 0);
  ++*(v3 + 142);
  *(v3 + 73) = v5;
  re::DynamicArray<re::RigTwoBoneIKHandles>::setCapacity(v3 + 73, 0);
  ++*(v3 + 152);
  *(v3 + 78) = v5;
  re::DynamicArray<re::RigSingleChainIKHandles>::setCapacity(v3 + 78, 0);
  ++*(v3 + 162);
  *(v3 + 88) = v5;
  re::DynamicArray<re::RigTransform>::setCapacity(v3 + 88, 0);
  ++*(v3 + 182);
  *(v3 + 93) = v5;
  re::DynamicArray<re::RigJoint>::setCapacity(v3 + 93, 0);
  ++*(v3 + 192);
  *(v3 + 98) = v5;
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(v3 + 98, 0);
  ++*(v3 + 202);
  *(v3 + 103) = v5;
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(v3 + 103, 0);
  ++*(v3 + 212);
  *(v3 + 108) = v5;
  re::DynamicArray<re::RigNode>::setCapacity(v3 + 108, 0);
  ++*(v3 + 222);
  *(v3 + 113) = v5;
  re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(v3 + 113, 0);
  ++*(v3 + 232);
  *(v3 + 118) = v5;
  result = re::DynamicArray<re::RigPose>::setCapacity(v3 + 118, 0);
  ++*(v3 + 242);
  return result;
}

uint64_t RERigAssetBuilderGetRigDefinition(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 1320) <= a2)
  {
    return 0;
  }

  else
  {
    return re::BucketArray<re::RigDefinition,4ul>::operator[](a1 + 1280, a2);
  }
}

uint64_t re::BucketArray<re::RigDefinition,4ul>::operator[](uint64_t a1, unint64_t a2)
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

  if (*(a1 + 8) <= a2 >> 2)
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

  return *(v3 + 8 * (a2 >> 2)) + 1144 * (a2 & 3);
}

BOOL RERigAssetBuilderAssignMeshRig(uint64_t a1, unint64_t a2, char a3, const char *a4, const char *a5, const char *a6)
{
  v6 = a2;
  v45 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 1320);
  if (v7 > a2)
  {
    v24 = 0;
    v25 = &str_67;
    v26 = 0;
    v27 = &str_67;
    if (a5)
    {
    }

    v28 = 0;
    v29 = &str_67;
    if (a6)
    {
    }

    v30 = v6;
    v13 = *(a1 + 1376);
    v14 = *(a1 + 1344);
    if (v13 + 1 > 8 * v14)
    {
      v12 = re::BucketArray<re::DeformationPassBuilder::DeformationInstanceBucket,8ul>::setBucketsCapacity((a1 + 1336), (v13 + 8) >> 3);
      v14 = *(a1 + 1344);
    }

    if (v14 > v13 >> 3)
    {
      if (*(a1 + 1352))
      {
        v15 = a1 + 1360;
      }

      else
      {
        v15 = *(a1 + 1368);
      }

      v17 = *(v15 + 8 * (v13 >> 3));
      ++*(a1 + 1376);
      ++*(a1 + 1384);
      v18 = v17 + ((v13 & 7) << 6);
      *v18 = a3;
      v19 = v24;
      *(v18 + 8) = *(v18 + 8) & 0xFFFFFFFFFFFFFFFELL | v24 & 1;
      *(v18 + 8) = v24 & 0xFFFFFFFFFFFFFFFELL | v19 & 1;
      *(v18 + 16) = v25;
      v24 = 0;
      v25 = &str_67;
      v20 = v26;
      *(v18 + 24) = *(v18 + 24) & 0xFFFFFFFFFFFFFFFELL | v26 & 1;
      *(v18 + 24) = v26 & 0xFFFFFFFFFFFFFFFELL | v20 & 1;
      *(v18 + 32) = v27;
      v26 = 0;
      v27 = &str_67;
      v21 = v28;
      *(v18 + 40) = *(v18 + 40) & 0xFFFFFFFFFFFFFFFELL | v28 & 1;
      *(v18 + 40) = v28 & 0xFFFFFFFFFFFFFFFELL | v21 & 1;
      *(v18 + 48) = v29;
      v28 = 0;
      v29 = &str_67;
      *(v18 + 56) = v30;
      if (v28)
      {
        if (v28)
        {
        }
      }

      v28 = 0;
      v29 = &str_67;
      if (v26)
      {
        if (v26)
        {
        }
      }

      v26 = 0;
      v27 = &str_67;
      if (v24)
      {
        if (v24)
        {
        }
      }

      return v7 > v6;
    }

    v31 = 0;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    *buf = 0u;
    v6 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v32 = 136315906;
    v33 = "operator[]";
    v34 = 1024;
    v35 = 858;
    v36 = 2048;
    v37 = v13 >> 3;
    v38 = 2048;
    v39 = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_27;
  }

  if (CoreRELog::onceToken != -1)
  {
LABEL_27:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v16 = CoreRELog::log;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    *&buf[4] = v6;
    _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, "Invalid rig definition index: %zu", buf, 0xCu);
  }

  return v7 > v6;
}

uint64_t RERigAssetBuilderCreateRigAsset(uint64_t a1, uint64_t a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 120, 8);
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0;
  v6 = *(a1 + 1320);
  if (*(v5 + 8) < v6)
  {
    re::DynamicArray<re::RigDefinition>::setCapacity(v5, *(a1 + 1320));
    goto LABEL_4;
  }

  if (v6)
  {
LABEL_4:
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = re::BucketArray<re::RigDefinition,4ul>::operator[](a1 + 1280, v8);
      if (*(v5 + 16) <= v8)
      {
        break;
      }

      re::RigDefinition::operator=((*(v5 + 32) + v7), v9);
      ++v8;
      v7 += 1144;
      if (v6 == v8)
      {
        goto LABEL_7;
      }
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_32:
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_7:
  v10 = *(a1 + 1376);
  if (*(v5 + 88) < v10)
  {
    re::DynamicArray<re::MeshRigGraphIndex>::setCapacity((v5 + 80), *(a1 + 1376));
    goto LABEL_10;
  }

  if (v10)
  {
LABEL_10:
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](a1 + 1336, v12);
      if (*(v5 + 96) <= v12)
      {
        goto LABEL_32;
      }

      v14 = v13;
      v15 = *(v5 + 112) + v11;
      *v15 = *v13;
      re::StringID::operator=((v15 + 8), (v13 + 8));
      re::StringID::operator=((v15 + 24), (v14 + 24));
      re::StringID::operator=((v15 + 40), (v14 + 40));
      *(v15 + 56) = *(v14 + 56);
      ++v12;
      v11 += 64;
    }

    while (v10 != v12);
  }

  re::RigDefinition::deinit((a1 + 24));
  v16 = (*(*a1 + 24))(a1);
  v17 = re::RigDefinition::init((a1 + 24), v16);
  v18 = *(a1 + 1208);
  if (v18)
  {
    for (i = 0; i != v18; ++i)
    {
      v17 = re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::operator[](a1 + 1168, i);
    }
  }

  *(a1 + 1208) = 0;
  ++*(a1 + 1216);
  v20 = *(a1 + 1264);
  if (v20)
  {
    for (j = 0; j != v20; ++j)
    {
      v17 = re::BucketArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData,32ul>::operator[](a1 + 1224, j);
    }
  }

  *(a1 + 1264) = 0;
  ++*(a1 + 1272);
  v22 = *(a1 + 1320);
  if (v22)
  {
    for (k = 0; k != v22; ++k)
    {
      v24 = re::BucketArray<re::RigDefinition,4ul>::operator[](a1 + 1280, k);
      re::RigDefinition::~RigDefinition(v24);
    }
  }

  *(a1 + 1320) = 0;
  ++*(a1 + 1328);
  v25 = *(a1 + 1376);
  if (v25)
  {
    for (m = 0; m != v25; ++m)
    {
      v27 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](a1 + 1336, m);
      re::StringID::destroyString((v27 + 40));
      re::StringID::destroyString((v27 + 24));
      re::StringID::destroyString((v27 + 8));
    }
  }

  *(a1 + 1376) = 0;
  ++*(a1 + 1384);
  v28 = *(a1 + 1432);
  if (v28)
  {
    for (n = 0; n != v28; ++n)
    {
      v30 = re::BucketArray<re::ecs2::RootPhysicsSimulationData,32ul>::operator[](a1 + 1392, n);
      re::DynamicString::deinit(v30);
    }
  }

  *(a1 + 1432) = 0;
  ++*(a1 + 1440);
  v31 = re::RigAsset::assetType(v17);
  (*(*a2 + 424))(&v35, a2, v5, v31, 0, 0, 0);
  v32 = v35;
  if (v35)
  {
    v33 = (v35 + 8);
  }

  re::AssetHandle::~AssetHandle(&v35);
  return v32;
}

void *re::BucketArray<re::DynamicString,32ul>::setBucketsCapacity(void *result, unint64_t a2)
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
          result = (*(**v3 + 32))(*v3, 1024, 0);
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

void *re::BucketArray<re::DynamicString,32ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::DynamicString,32ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::RigNodeConstraint,32ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::RigNodeConstraint,32ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<anonymous namespace::RigAssetBuilder::MappedIKHandle,32ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

void anonymous namespace::RigAssetBuilder::~RigAssetBuilder(_anonymous_namespace_::RigAssetBuilder *this)
{
  *this = &unk_1F5D2D868;
  v2 = *(this + 179);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::ecs2::RootPhysicsSimulationData,32ul>::operator[](this + 1392, i);
      re::DynamicString::deinit(v4);
    }
  }

  while (*(this + 175))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 174);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1392);
  *(this + 179) = 0;
  ++*(this + 360);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1392);
  v5 = *(this + 172);
  if (v5)
  {
    for (j = 0; j != v5; ++j)
    {
      v7 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](this + 1336, j);
      re::StringID::destroyString((v7 + 40));
      re::StringID::destroyString((v7 + 24));
      re::StringID::destroyString((v7 + 8));
    }
  }

  while (*(this + 168))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 167);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1336);
  *(this + 172) = 0;
  ++*(this + 346);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1336);
  v8 = *(this + 165);
  if (v8)
  {
    for (k = 0; k != v8; ++k)
    {
      v10 = re::BucketArray<re::RigDefinition,4ul>::operator[](this + 1280, k);
      re::RigDefinition::~RigDefinition(v10);
    }
  }

  while (*(this + 161))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 160);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1280);
  *(this + 165) = 0;
  ++*(this + 332);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1280);
  v11 = *(this + 158);
  if (v11)
  {
    for (m = 0; m != v11; ++m)
    {
      re::BucketArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData,32ul>::operator[](this + 1224, m);
    }
  }

  while (*(this + 154))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 153);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1224);
  *(this + 158) = 0;
  ++*(this + 318);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1224);
  v13 = *(this + 151);
  if (v13)
  {
    for (n = 0; n != v13; ++n)
    {
      re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::operator[](this + 1168, n);
    }
  }

  while (*(this + 147))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 146);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1168);
  *(this + 151) = 0;
  ++*(this + 304);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1168);
  re::RigDefinition::~RigDefinition((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{

  JUMPOUT(0x1E6906520);
}

void *re::BucketArray<re::RigNodeConstraint,32ul>::setBucketsCapacity(void *result, unint64_t a2)
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
          result = (*(**v3 + 32))(*v3, 512, 0);
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

void *re::BucketArray<anonymous namespace::RigAssetBuilder::MappedIKHandle,32ul>::setBucketsCapacity(void *result, unint64_t a2)
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
          result = (*(**v3 + 32))(*v3, 768, 0);
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

uint64_t re::BucketArray<re::RigNodeConstraint,32ul>::addUninitialized(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 32 * v3)
  {
    re::BucketArray<re::RigNodeConstraint,32ul>::setBucketsCapacity(a1, (v2 + 32) >> 5);
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
  return v5 + 16 * (v2 & 0x1F);
}

void *re::BucketArray<re::RigDefinition,4ul>::setBucketsCapacity(void *result, unint64_t a2)
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
          result = (*(**v3 + 32))(*v3, 4576, 0);
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
                goto LABEL_22;
              }

              v12 = 2 * v9;
              goto LABEL_18;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_18:
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

LABEL_22:
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
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    v3[5] = 0;
    result = re::BucketArray<re::RigDefinition,4ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

void *REUILayerGeometryComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::UILayerGeometryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

uint64_t REUILayerGeometryComponentSetWidthSegmentCount(uint64_t this, int a2)
{
  if (*(this + 26) != a2)
  {
    *(this + 26) = a2;
    return re::ecs2::Component::enqueueMarkDirty(this);
  }

  return this;
}

uint64_t REUILayerGeometryComponentSetHeightSegmentCount(uint64_t this, int a2)
{
  if (*(this + 28) != a2)
  {
    *(this + 28) = a2;
    return re::ecs2::Component::enqueueMarkDirty(this);
  }

  return this;
}

uint64_t REUILayerGeometryComponentSetFlatDepthSegmentCount(uint64_t this, int a2)
{
  if (*(this + 30) != a2)
  {
    *(this + 30) = a2;
    return re::ecs2::Component::enqueueMarkDirty(this);
  }

  return this;
}

uint64_t REUILayerGeometryComponentSetCornerRadiusSegmentCount(uint64_t this, int a2)
{
  if (*(this + 32) != a2)
  {
    *(this + 32) = a2;
    return re::ecs2::Component::enqueueMarkDirty(this);
  }

  return this;
}

uint64_t REUILayerGeometryComponentSetFrontBackBevelSegmentCount(uint64_t this, int a2)
{
  if (*(this + 34) != a2)
  {
    *(this + 34) = a2;
    return re::ecs2::Component::enqueueMarkDirty(this);
  }

  return this;
}

uint64_t REUILayerGeometryComponentSetBevelFrontDepth(uint64_t this, float a2)
{
  v2 = *(this + 36);
  if (v2 != a2 && vabds_f32(v2, a2) >= (((fabsf(a2) + fabsf(v2)) + 1.0) * 0.00001))
  {
    *(this + 36) = a2;
    return re::ecs2::Component::enqueueMarkDirty(this);
  }

  return this;
}

uint64_t REUILayerGeometryComponentSetBevelBackDepth(uint64_t this, float a2)
{
  v2 = *(this + 40);
  if (v2 != a2 && vabds_f32(v2, a2) >= (((fabsf(a2) + fabsf(v2)) + 1.0) * 0.00001))
  {
    *(this + 40) = a2;
    return re::ecs2::Component::enqueueMarkDirty(this);
  }

  return this;
}

uint64_t REUILayerGeometryComponentSetFlatDepth(uint64_t this, float a2)
{
  v2 = *(this + 44);
  if (v2 != a2 && vabds_f32(v2, a2) >= (((fabsf(a2) + fabsf(v2)) + 1.0) * 0.00001))
  {
    *(this + 44) = a2;
    return re::ecs2::Component::enqueueMarkDirty(this);
  }

  return this;
}

uint64_t REUILayerGeometryComponentSetWidth(uint64_t this, float a2)
{
  v2 = *(this + 48);
  if (v2 != a2 && vabds_f32(v2, a2) >= (((fabsf(a2) + fabsf(v2)) + 1.0) * 0.00001))
  {
    *(this + 48) = a2;
    return re::ecs2::Component::enqueueMarkDirty(this);
  }

  return this;
}

uint64_t REUILayerGeometryComponentSetHeight(uint64_t this, float a2)
{
  v2 = *(this + 52);
  if (v2 != a2 && vabds_f32(v2, a2) >= (((fabsf(a2) + fabsf(v2)) + 1.0) * 0.00001))
  {
    *(this + 52) = a2;
    return re::ecs2::Component::enqueueMarkDirty(this);
  }

  return this;
}

uint64_t REUILayerGeometryComponentSetCornerRadius(uint64_t this, float a2)
{
  v2 = *(this + 56);
  if (v2 != a2 && vabds_f32(v2, a2) >= (((fabsf(a2) + fabsf(v2)) + 1.0) * 0.00001))
  {
    *(this + 56) = a2;
    return re::ecs2::Component::enqueueMarkDirty(this);
  }

  return this;
}

uint64_t REUILayerGeometryComponentSetNeedsVertDistanceToPlatterEdge(uint64_t this, int a2)
{
  if (*(this + 60) != a2)
  {
    *(this + 60) = a2;
    return re::ecs2::Component::enqueueMarkDirty(this);
  }

  return this;
}

uint64_t REUILayerGeometryComponentSetCurveTheta(uint64_t this, float a2)
{
  v2 = *(this + 64);
  if (v2 != a2 && vabds_f32(v2, a2) >= (((fabsf(a2) + fabsf(v2)) + 1.0) * 0.00001))
  {
    *(this + 64) = a2;
    return re::ecs2::Component::enqueueMarkDirty(this);
  }

  return this;
}

uint64_t REUILayerGeometryComponentSetCurveDirectionIsFrontward(uint64_t this, int a2)
{
  if (*(this + 68) != a2)
  {
    *(this + 68) = a2;
    return re::ecs2::Component::enqueueMarkDirty(this);
  }

  return this;
}

uint64_t REUILayerGeometryComponentSetGroundingShadowType(uint64_t this, int a2)
{
  if (*(this + 108) != a2)
  {
    *(this + 108) = a2;
    return re::ecs2::Component::enqueueMarkDirty(this);
  }

  return this;
}

uint64_t REAudioFileGroupAssetGetType(re::AudioFileGroupAsset *a1)
{
  v1 = *re::AudioFileGroupAsset::assetType(a1);
  v2 = MEMORY[0x1E696AEC0];

  return [v2 stringWithUTF8String:v1];
}

uint64_t REAudioFileGroupAssetCreateWithFileAssets(re *a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v8 = re::globalAllocators(a1);
  v9 = (*(*v8[2] + 32))(v8[2], 56, 8);
  re::AudioFileGroupAsset::AudioFileGroupAsset(v9);
  v19 = 0;
  memset(v17, 0, sizeof(v17));
  for (i = 0; a4; --a4)
  {
    v10 = *a3++;
    re::AssetAPIHelper::assetHandleCreate(v10, &v20);
    re::DynamicArray<re::AssetHandle>::add(v17, &v20);
    re::AssetHandle::~AssetHandle(&v20);
  }

  re::DynamicArray<re::AssetHandle>::operator=(v9 + 8, v17);
  v11 = [a2 UTF8String];
  v12 = re::AudioFileGroupAsset::assetType(v11);
  (*(*a1 + 432))(v16, a1, v9, v12, &v20, 0, 0, 0);
  if (v20 && (v21 & 1) != 0)
  {
    (*(*v20 + 40))();
  }

  v13 = v16[0];
  if (v16[0])
  {
    v14 = (v16[0] + 8);
  }

  re::AssetHandle::~AssetHandle(v16);
  re::DynamicArray<re::AssetHandle>::deinit(v17);
  return v13;
}

uint64_t REAudioFileGroupAssetGetByName(uint64_t a1, id a2)
{
  v4 = a2;
  v5 = [a2 UTF8String];
  v6 = re::AudioFileGroupAsset::assetType(v5);
  (*(*a1 + 32))(&v10, a1, v5, v6);
  re::AssetHandle::loadNow(v11, 0);
  if (v11)
  {
    v7 = atomic_load((v11 + 896));
    if (v7 == 2)
    {
      v8 = v10;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  re::AssetHandle::~AssetHandle(&v10);
  return v8;
}

uint64_t REAudioFileGroupAssetGetAssetCount(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v4);
  v1 = re::AssetHandle::blockUntilLoaded<re::AudioFileGroupAsset>(v4);
  if (v1)
  {
    v2 = *(v1 + 24);
  }

  else
  {
    v2 = 0;
  }

  re::AssetHandle::~AssetHandle(v4);
  return v2;
}

uint64_t re::AssetHandle::blockUntilLoaded<re::AudioFileGroupAsset>(re::AudioFileGroupAsset *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = re::AudioFileGroupAsset::assetType(a1);
  v3 = re::AssetHandle::assetWithType(a1, v2, 0);
  if (!v3)
  {
    v4 = *re::assetsLogObjects(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = v4;
      v7 = re::AssetHandle::assetInfo(a1);
      if (v7[17])
      {
        v8 = v7[18];
      }

      else
      {
        v8 = v7 + 137;
      }

      v9 = 136315138;
      v10 = v8;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Invalid asset: '%s'", &v9, 0xCu);
    }
  }

  return v3;
}

uint64_t REAudioFileGroupAssetGetAssetAtIndex(uint64_t a1, unint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  re::AssetAPIHelper::assetHandleCreate(a1, v7);
  v3 = re::AssetHandle::blockUntilLoaded<re::AudioFileGroupAsset>(v7);
  if (v3)
  {
    v4 = *(v3 + 24);
    if (v4 <= a2)
    {
      v7[3] = 0;
      memset(v16, 0, sizeof(v16));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v8 = 136315906;
      v9 = "operator[]";
      v10 = 1024;
      v11 = 797;
      v12 = 2048;
      v13 = a2;
      v14 = 2048;
      v15 = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    re::AssetHandle::AssetHandle(v16, (*(v3 + 40) + 24 * a2));
    v5 = *&v16[0];
    re::AssetHandle::~AssetHandle(v16);
  }

  else
  {
    v5 = 0;
  }

  re::AssetHandle::~AssetHandle(v7);
  return v5;
}

uint64_t REAudioFileGroupAssetIsCompletelyLoaded(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v4);
  v1 = re::AssetHandle::blockUntilLoaded<re::AudioFileGroupAsset>(v4);
  if (v1)
  {
    isCompletelyLoaded = re::AudioFileGroupAsset::isCompletelyLoaded(v1);
  }

  else
  {
    isCompletelyLoaded = 0;
  }

  re::AssetHandle::~AssetHandle(v4);
  return isCompletelyLoaded;
}

void REAudioFileGroupAssetCompleteLoad(uint64_t a1)
{
  AssetManager = REAssetGetAssetManager(a1);
  v3 = re::AudioFileGroupAsset::assetType(AssetManager);
  v4 = *(AssetManager + 226);
  v8 = v3;
  v5 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v4, &v8);
  (*(**v5 + 128))(*v5);
  v6 = *(*v5 + 24);
  if (v6)
  {
    v7 = (*(*v6 + 24))(v6);
  }

  else
  {
    v7 = 0;
  }

  REAudioFileGroupAssetCompleteLoadWithService(a1, v7);
}

void REAudioFileGroupAssetCompleteLoadWithService(uint64_t a1, AudioSceneService *a2)
{
  re::AssetAPIHelper::assetHandleCreate(a1, &v9);
  if (v10 && (v4 = atomic_load((v10 + 896)), v4 == 2))
  {
    v5 = atomic_load((v10 + 896));
    if (v5 == 2)
    {
      ++*(v10 + 276);
      v6 = re::AssetHandle::loadedAsset<re::AudioFileGroupAsset>(&v9);
      if (v6)
      {
        re::AudioFileGroupAsset::completeLoad(v6, a2);
      }
    }
  }

  else
  {
    v7 = *re::audioLogObjects(v3);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "[CoreRE] [REAudioFileGroupAsset] Cannot complete loading an audio group file asset that is not loaded.", v8, 2u);
    }
  }

  re::AssetHandle::~AssetHandle(&v9);
}

re::ecs2::ComponentTypeBase *RECustomComponentTypeCreateWithType(_anonymous_namespace_ *a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  *&v18 = a1;
  *(&v18 + 1) = a2;
  if (!a1)
  {
    v10 = *re::ecsCoreLogObjects(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v11 = "Invalid type ID.";
      v12 = v10;
      v13 = 2;
LABEL_9:
      _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
    }

    return 0;
  }

  v3 = re::TypeRegistry::typeName(a1, &v18);
  re::TypeRegistry::typeInfo(a1, &v18, buf);
  if ((buf[0] & 1) == 0)
  {
    v14 = *re::ecsCoreLogObjects(v4);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(v3 + 1);
      *buf = 136315138;
      v20 = v15;
      v11 = "Type information missing for %s. Type has been declared, but no type information was provided.";
      v12 = v14;
      v13 = 12;
      goto LABEL_9;
    }

    return 0;
  }

  v5 = re::ecs2::ComponentTypeRegistry::instance(v4);
  v6 = re::ecs2::ComponentTypeRegistry::componentTypeWithName(v5, v3);
  if (!v6)
  {
    v7 = re::globalAllocators(0);
    v6 = (*(*v7[2] + 32))(v7[2], 176, 8);
    v17 = v18;
    v8 = re::ecs2::CustomComponentType::CustomComponentType(v6, v3, &v17, 0, 0, 0);
    v9 = re::ecs2::ComponentTypeRegistry::instance(v8);
    re::ecs2::ComponentTypeRegistry::add(v9, v6, 0);
  }

  return v6;
}

double REDebugRendererDrawLineWithDepth(uint64_t a1, int a2, __n128 a3, __n128 a4, __n128 a5)
{
  v5 = *(a1 + 80);
  v9 = a3;
  v7 = a5;
  v8 = a4;
  return re::DebugRenderer::drawLine(v5, &v9, &v8, &v7, a2);
}

double REDebugRendererDrawLine(uint64_t a1, __n128 a2, __n128 a3, __n128 a4)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 80);
  v6[0] = a2;
  v6[1] = a3;
  v6[2] = a4;
  v7 = 1065353216;
  *&result = re::DynamicArray<re::RigTransform>::add((v4 + 16), v6).n128_u64[0];
  return result;
}

void *REDebugRendererDrawArrowWithDepth(uint64_t a1, int a2, float32x4_t a3, float32x4_t a4, float a5, __n128 a6)
{
  v6 = *(a1 + 80);
  v10 = a3;
  v8 = a6;
  v9 = a4;
  return re::DebugRenderer::drawArrow(v6, &v10, &v9, &v8, a2, a5);
}

void *REDebugRendererDrawArrow(uint64_t a1, float32x4_t a2, float32x4_t a3, float a4, __n128 a5)
{
  v5 = *(a1 + 80);
  v9 = a2;
  v7 = a5;
  v8 = a3;
  return re::DebugRenderer::drawArrow(v5, &v9, &v8, &v7, 1, a4);
}

void *REDebugRendererDrawAxisWithWorldPoseWithDepth(uint64_t a1, int a2, float32x4_t a3, float32x4_t a4, float a5, float a6)
{
  v7[0] = a3;
  v7[1] = a4;
  return re::DebugRenderer::drawAxis(*(a1 + 80), v7, a2, a5, a6);
}

void *REDebugRendererDrawAxisWithWorldPose(uint64_t a1, float32x4_t a2, float32x4_t a3, float a4, float a5)
{
  v6[0] = a2;
  v6[1] = a3;
  return re::DebugRenderer::drawAxis(*(a1 + 80), v6, 1, a4, a5);
}

void *REDebugRendererDrawAxisWithWorldTransformWithDepth(uint64_t a1, int a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float a7, float a8)
{
  v8 = *(a1 + 80);
  v10[0] = a3;
  v10[1] = a4;
  v10[2] = a5;
  v10[3] = a6;
  return re::DebugRenderer::drawAxis(v8, v10, a2, a7, a8);
}

void *REDebugRendererDrawAxisWithWorldTransform(uint64_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float a6, float a7)
{
  v7 = *(a1 + 80);
  v9[0] = a2;
  v9[1] = a3;
  v9[2] = a4;
  v9[3] = a5;
  return re::DebugRenderer::drawAxis(v7, v9, 1, a6, a7);
}

double REDebugRendererDrawPointWithDepth(uint64_t a1, int a2, __n128 a3, float a4, __n128 a5)
{
  v5 = *(a1 + 80);
  v7 = a5;
  v8 = a3;
  return re::DebugRenderer::drawPoint(v5, &v8, &v7, a2, a4);
}

double REDebugRendererDrawPoint(uint64_t a1, __n128 a2, float a3, __n128 a4)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 80);
  v6[0] = a2;
  v6[1] = a4;
  v7 = a3;
  *&result = re::DynamicArray<re::RenderPoint>::add((v4 + 96), v6).n128_u64[0];
  return result;
}

void REDebugRendererDrawTextAtWorldPose(uint64_t a1, const char *a2, uint64_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, __n128 a7)
{
  v19 = *MEMORY[0x1E69E9840];
  v17[0] = a4;
  v17[1] = a5;
  v17[2] = a6;
  re::AssetAPIHelper::assetHandleCreate(a3, v16);
  v9 = re::AssetHandle::assetInfo(v16);
  if (*(v9 + 13))
  {
    v10 = *(v9 + 14);
  }

  else
  {
    v10 = v9 + 105;
  }

  *&v15.var0 = 0;
  v15.var1 = &str_67;
  if (re::TextManager::isFontLoaded(*(a1 + 64), &v15))
  {
    v11 = *(a1 + 80);
    *buf = a7;
    re::DebugRenderer::drawText(v11, v17, a2, &v15, buf, 0);
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = v10;
      *&buf[12] = 2080;
      *&buf[14] = a2;
    }
  }

  if (*&v15.var0)
  {
    if (*&v15.var0)
    {
    }
  }

  re::AssetHandle::~AssetHandle(v16);
}

void REDebugRendererDrawTextAtWorldTransform(uint64_t a1, const char *a2, uint64_t a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8)
{
  v26 = *MEMORY[0x1E69E9840];
  re::AssetAPIHelper::assetHandleCreate(a3, v22);
  v10 = re::AssetHandle::assetInfo(v22);
  if (*(v10 + 13))
  {
    v11 = *(v10 + 14);
  }

  else
  {
    v11 = v10 + 105;
  }

  *&v21.var0 = 0;
  v21.var1 = &str_67;
  if (re::TextManager::isFontLoaded(*(a1 + 64), &v21))
  {
    v12 = *(a1 + 80);
    *buf = a4;
    *&buf[16] = a5;
    v24 = a6;
    v25 = a7;
    v20 = a8;
    re::DebugRenderer::drawText(v12, buf, a2, &v21, &v20, 0);
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v14 = CoreRELog::log;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = v11;
      *&buf[12] = 2080;
      *&buf[14] = a2;
    }
  }

  if (*&v21.var0)
  {
    if (*&v21.var0)
    {
    }
  }

  re::AssetHandle::~AssetHandle(v22);
}

void REDebugRendererDrawCollisionWorld(re *a1, uint64_t a2)
{
  v56 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 10);
  if (v2)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __REDebugRendererDrawCollisionWorld_block_invoke;
    aBlock[3] = &__block_descriptor_40_e107_v56__0_Vector3_float________fff__3f___8_Vector3_float________fff__3f___24_Vector3_float________fff__3f___40l;
    aBlock[4] = v2;
    v5 = _Block_copy(aBlock);
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __REDebugRendererDrawCollisionWorld_block_invoke_2;
    v41[3] = &__block_descriptor_40_e76_v44__0_Vector3_float________fff__3f___8f24_Vector3_float________fff__3f___28l;
    v41[4] = v2;
    v6 = _Block_copy(v41);
    (*(*a2 + 112))(a2, v5, v6, 0, 0);
    (*(*a2 + 128))(a2);
    v7 = (*(*a2 + 160))(a2);
    if (v7)
    {
      v8 = (*(*v7 + 56))(v7);
      if (v8)
      {
        v9 = v8;
        v10 = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v8);
        if (v10)
        {
          v11 = v10;
          v12 = (*(*v10 + 176))(v10);
          if (v12)
          {
            if (*(v12 + 56) == a2)
            {
              v14 = re::ServiceLocator::serviceOrNull<re::ecs2::ECSService>(v9);
              if (v14)
              {
                v34 = v6;
                v35 = v5;
                v15 = (*(*v14 + 288))(v14) + 120;
                re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::DataArrayIterator(&buf, v15, 0);
                v16 = buf;
                v39 = buf;
                v40 = DWORD2(buf);
                v17 = WORD4(buf);
                v18 = HIWORD(DWORD2(buf));
                v36 = v15;
                if (v15 != buf || WORD4(buf) != 0xFFFF || v18 != 0xFFFF)
                {
                  while (1)
                  {
                    v21 = v18;
                    v22 = *(v16 + 16);
                    if (v22 <= v18)
                    {
                      goto LABEL_43;
                    }

                    v23 = *(*(v16 + 32) + 16 * v18) + 240 * v17;
                    v24 = *(v23 + 200);
                    if (v24)
                    {
                      break;
                    }

LABEL_38:
                    re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::increment(&v39);
                    v16 = v39;
                    v17 = v40;
                    v18 = HIWORD(v40);
                    if (v39 == v36 && v40 == 0xFFFF && HIWORD(v40) == 0xFFFF)
                    {
                      goto LABEL_41;
                    }
                  }

                  v25 = *(v23 + 216);
                  v21 = &v25[v24];
                  while (1)
                  {
                    v26 = (*(*v11 + 32))(v11, *v25);
                    if (v26)
                    {
                      v27 = v26;
                      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&buf, v26, 0);
                      v28 = buf;
                      v37 = buf;
                      v38 = DWORD2(buf);
                      v29 = WORD4(buf);
                      v30 = HIWORD(DWORD2(buf));
                      v31 = v27 == buf && WORD4(buf) == 0xFFFF;
                      if (!v31 || v30 != 0xFFFF)
                      {
                        break;
                      }
                    }

LABEL_37:
                    if (++v25 == v21)
                    {
                      goto LABEL_38;
                    }
                  }

                  while (1)
                  {
                    v22 = v30;
                    v33 = *(v28 + 16);
                    if (v33 <= v30)
                    {
                      break;
                    }

                    if (*(*(*(*(v28 + 32) + 16 * v30) + 272 * v29 + 16) + 56) != a2)
                    {
                      REDebugRendererDrawCollisionWorld(a1);
                    }

                    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v37);
                    v28 = v37;
                    v29 = v38;
                    v30 = HIWORD(v38);
                    if (v37 == v27 && v38 == 0xFFFF && HIWORD(v38) == 0xFFFF)
                    {
                      goto LABEL_37;
                    }
                  }

                  aBlock[5] = 0;
                  v54 = 0u;
                  v55 = 0u;
                  v52 = 0u;
                  v53 = 0u;
                  buf = 0u;
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  v43 = 136315906;
                  v44 = "operator[]";
                  v45 = 1024;
                  v46 = 797;
                  v47 = 2048;
                  v48 = v22;
                  v49 = 2048;
                  v50 = v33;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_43:
                  v37 = 0;
                  v54 = 0u;
                  v55 = 0u;
                  v52 = 0u;
                  v53 = 0u;
                  buf = 0u;
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  v43 = 136315906;
                  v44 = "operator[]";
                  v45 = 1024;
                  v46 = 797;
                  v47 = 2048;
                  v48 = v21;
                  v49 = 2048;
                  v50 = v22;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
                }

LABEL_41:
                v6 = v34;
                v5 = v35;
              }
            }
          }
        }
      }
    }
  }

  else if ((atomic_exchange(REDebugRendererDrawCollisionWorld::__FILE____LINE___logged, 1u) & 1) == 0)
  {
    v13 = *re::graphicsLogObjects(a1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "DebugRenderer is null. Probably REDebugRendererDrawCollisionWorld was called from a shared app. Skipping.", &buf, 2u);
    }
  }
}

double __REDebugRendererDrawCollisionWorld_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v9[0] = a2;
  v9[1] = a3;
  v9[2] = a4;
  v9[3] = a5;
  v9[4] = a6;
  v9[5] = a7;
  v10 = 1065353216;
  *&result = re::DynamicArray<re::RigTransform>::add((v7 + 16), v9).n128_u64[0];
  return result;
}

double __REDebugRendererDrawCollisionWorld_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float a6)
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v8[0] = a2;
  v8[1] = a3;
  v8[2] = a4;
  v8[3] = a5;
  v9 = a6;
  *&result = re::DynamicArray<re::RenderPoint>::add((v6 + 96), v8).n128_u64[0];
  return result;
}

uint64_t REGetGraphicsDebugSettingsManager(uint64_t a1)
{
  if (a1)
  {
    result = *(a1 + 96);
    if (result)
    {
      return result;
    }

    v2 = *re::graphicsLogObjects(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 0;
      v3 = "RenderManager is initialized, but DebugSettingsManager is not.";
      v4 = &v5;
LABEL_7:
      _os_log_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_DEFAULT, v3, v4, 2u);
    }
  }

  else
  {
    v2 = *re::graphicsLogObjects(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v3 = "RenderManager not initialized.";
      v4 = buf;
      goto LABEL_7;
    }
  }

  return 0;
}

uint64_t RESetGraphicsParameterInt(uint64_t a1, const char *a2, unsigned int a3)
{
  if (!a1)
  {
    return 3;
  }

  v15 = 0;
  v16 = &str_67;
  if (*(a1 + 112) == 1)
  {
    std::mutex::lock((a1 + 48));
    v7 = re::DebugSettingsManager::contains<int>(a1, &v15);
    if (v7)
    {
      v8 = v7;
      std::mutex::unlock((a1 + 48));
      if (v8 >= 6)
      {
        v9 = 0;
      }

      else
      {
        v9 = v8;
      }
    }

    else
    {
      v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v15 >> 31) ^ (v15 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v15 >> 31) ^ (v15 >> 1))) >> 27));
      re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, &v15, v10 ^ (v10 >> 31), v17);
      v11 = *(a1 + 16) + 40 * v18;
      v13 = *(v11 + 24);
      v12 = v11 + 24;
      if ((v13 & 1) == 0)
      {
        *v12 = 1;
      }

      *(v12 + 4) = a3;
      std::mutex::unlock((a1 + 48));
      v9 = 0;
    }
  }

  else
  {
    v9 = 3;
  }

  if (v15)
  {
    if (v15)
    {
    }
  }

  return v9;
}

uint64_t REGetGraphicsParameterInt(_anonymous_namespace_ *a1, const char *a2, _DWORD *a3)
{
  if (!a1)
  {
    return 3;
  }

  v9 = 0;
  v10 = &str_67;
  v6 = re::DebugSettingsManager::getWithErrorCode<int>(a1, &v9, a3);
  if ((v6 - 1) >= 5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  if (v9)
  {
    if (v9)
    {
    }
  }

  return v7;
}

uint64_t RESetGraphicsParameterFloat(uint64_t a1, const char *a2, float a3)
{
  if (!a1)
  {
    return 3;
  }

  v15 = 0;
  v16 = &str_67;
  if (*(a1 + 112) == 1)
  {
    std::mutex::lock((a1 + 48));
    v7 = re::DebugSettingsManager::contains<float>(a1, &v15);
    if (v7)
    {
      v8 = v7;
      std::mutex::unlock((a1 + 48));
      if (v8 >= 6)
      {
        v9 = 0;
      }

      else
      {
        v9 = v8;
      }
    }

    else
    {
      v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v15 >> 31) ^ (v15 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v15 >> 31) ^ (v15 >> 1))) >> 27));
      re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, &v15, v10 ^ (v10 >> 31), v17);
      v11 = *(a1 + 16) + 40 * v18;
      v13 = *(v11 + 24);
      v12 = v11 + 24;
      if ((v13 & 1) == 0)
      {
        *v12 = 1;
      }

      *(v12 + 4) = LODWORD(a3) | 0x100000000;
      std::mutex::unlock((a1 + 48));
      v9 = 0;
    }
  }

  else
  {
    v9 = 3;
  }

  if (v15)
  {
    if (v15)
    {
    }
  }

  return v9;
}

uint64_t REGetGraphicsParameterFloat(_anonymous_namespace_ *a1, const char *a2, _DWORD *a3)
{
  if (!a1)
  {
    return 3;
  }

  v9 = 0;
  v10 = &str_67;
  v6 = re::DebugSettingsManager::getWithErrorCode<float>(a1, &v9, a3);
  if ((v6 - 1) >= 5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  if (v9)
  {
    if (v9)
    {
    }
  }

  return v7;
}

uint64_t RESetGraphicsParameterBool(_anonymous_namespace_ *a1, const char *a2, unsigned __int8 a3)
{
  v10 = a3;
  if (!a1)
  {
    return 3;
  }

  v8 = 0;
  v9 = &str_67;
  v5 = re::DebugSettingsManager::setWithErrorCode<BOOL>(a1, &v8, &v10);
  if ((v5 - 1) >= 5)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  if (v8)
  {
    if (v8)
    {
    }
  }

  return v6;
}

uint64_t REGetGraphicsParameterBool(_anonymous_namespace_ *a1, const char *a2, _BYTE *a3)
{
  if (!a1)
  {
    return 3;
  }

  v9 = 0;
  v10 = &str_67;
  v6 = re::DebugSettingsManager::getWithErrorCode<BOOL>(a1, &v9, a3);
  if ((v6 - 1) >= 5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  if (v9)
  {
    if (v9)
    {
    }
  }

  return v7;
}

uint64_t REGetGraphicsParametersAsString(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    return 4;
  }

  result = 0;
  *a3 = @"Deprecated: params to report.";
  return result;
}

uint64_t REThrottleSetParametersForContext(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) context is null!", "context", "REThrottleSetParametersForContext", 17);
    _os_crash();
    __break(1u);
    goto LABEL_5;
  }

  if (!a2)
  {
LABEL_5:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) parameters is null!", "parameters", "REThrottleSetParametersForContext", 18);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t REThrottleGetParametersForContext(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) context is null!", "context", "REThrottleGetParametersForContext", 37);
    _os_crash();
    __break(1u);
    goto LABEL_5;
  }

  if (!a2)
  {
LABEL_5:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) parameters is null!", "parameters", "REThrottleGetParametersForContext", 38);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t REThrottleSetParametersForEngine(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) REEngineRef is null!", "engineRef", "REThrottleSetParametersForEngine", 54);
    _os_crash();
    __break(1u);
    goto LABEL_5;
  }

  if (!a2)
  {
LABEL_5:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) parameters is null!", "parameters", "REThrottleSetParametersForEngine", 55);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t REThrottleGetParametersForEngine(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) REEngineRef is null!", "engineRef", "REThrottleGetParametersForEngine", 61);
    _os_crash();
    __break(1u);
    goto LABEL_5;
  }

  if (!a2)
  {
LABEL_5:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) parameters is null!", "parameters", "REThrottleGetParametersForEngine", 62);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t REThrottleServiceSetThermalMitigationLevelAuto(uint64_t result)
{
  if (result)
  {
    return (*(*result + 128))(result, 0);
  }

  return result;
}

uint64_t REThrottleServiceSetThermalMitigationLevelMedium(uint64_t result)
{
  if (result)
  {
    return (*(*result + 128))(result, 1);
  }

  return result;
}

uint64_t REThrottleServiceSetThermalMitigationLevelMax(uint64_t result)
{
  if (result)
  {
    return (*(*result + 128))(result, 2);
  }

  return result;
}

uint64_t REThrottleServiceGetThermalMitigationLevel(uint64_t result)
{
  if (result)
  {
    return (*(*result + 136))();
  }

  return result;
}

void *REPhysicsDebugComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::PhysicsDebugComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

void RESceneAddPhysicsDebugComponent(uint64_t a1)
{
  v11[0] = 0;
  SceneDataEntity = makeSceneDataEntity(a1, v11, 1, re::ecs2::Scene::kLocalSceneDataEntityID, 0);
  v2 = SceneDataEntity;
  v3 = *(SceneDataEntity + 49);
  if (!*(SceneDataEntity + 49))
  {
    goto LABEL_7;
  }

  v4 = (re::ecs2::ComponentImpl<re::ecs2::PhysicsDebugComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 16);
  v5 = *(SceneDataEntity + 13);
  v6 = vld1q_dup_s16(v4);
  v7 = 1;
  while (1)
  {
    v8 = vandq_s8(vceqq_s16(v6, *v5), xmmword_1E306AC00);
    v8.i16[0] = vmaxvq_u16(v8);
    if (v8.i32[0])
    {
      break;
    }

    v7 -= 8;
    ++v5;
    if (!--v3)
    {
      goto LABEL_7;
    }
  }

  if (v8.u16[0] - v7 >= *(SceneDataEntity + 48))
  {
LABEL_7:
    v9 = re::ecs2::EntityComponentCollection::getOrAdd((SceneDataEntity + 48), re::ecs2::ComponentImpl<re::ecs2::PhysicsDebugComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    re::ecs2::Component::markDirty(v9);
    v10 = *(v2 + 27);
    if (!v10)
    {
      v10 = re::ecs2::EntityComponentCollection::add((v2 + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    }

    re::ecs2::NetworkComponent::markDirty(v10, v9);
  }
}

void RESceneRemovePhysicsDebugComponent(uint64_t a1)
{
  v4[0] = 0;
  SceneDataEntity = makeSceneDataEntity(a1, v4, 0, re::ecs2::Scene::kLocalSceneDataEntityID, 0);
  if (SceneDataEntity)
  {
    v2 = re::ecs2::ComponentImpl<re::ecs2::PhysicsDebugComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    v3 = (SceneDataEntity + 48);

    re::ecs2::EntityComponentCollection::remove(v3, v2);
  }
}

void RESceneSetPhysicsDebugDrawLevel(uint64_t a1, int a2)
{
  v6[0] = 0;
  SceneDataEntity = makeSceneDataEntity(a1, v6, 1, re::ecs2::Scene::kLocalSceneDataEntityID, 0);
  v4 = re::ecs2::EntityComponentCollection::getOrAdd((SceneDataEntity + 48), re::ecs2::ComponentImpl<re::ecs2::PhysicsDebugComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  *(v4 + 28) = a2;
  re::ecs2::Component::markDirty(v4);
  v5 = *(SceneDataEntity + 27);
  if (!v5)
  {
    v5 = re::ecs2::EntityComponentCollection::add((SceneDataEntity + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  }

  re::ecs2::NetworkComponent::markDirty(v5, v4);
}

uint64_t RESceneGetPhysicsDebugDrawLevel(uint64_t a1)
{
  v3[0] = 0;
  SceneDataEntity = makeSceneDataEntity(a1, v3, 1, re::ecs2::Scene::kLocalSceneDataEntityID, 0);
  result = re::ecs2::EntityComponentCollection::get((SceneDataEntity + 48), re::ecs2::ComponentImpl<re::ecs2::PhysicsDebugComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (result)
  {
    return *(result + 28);
  }

  return result;
}

void RESceneSetPhysicsDebugDrawMode(uint64_t a1, int a2)
{
  v6[0] = 0;
  SceneDataEntity = makeSceneDataEntity(a1, v6, 1, re::ecs2::Scene::kLocalSceneDataEntityID, 0);
  v4 = re::ecs2::EntityComponentCollection::getOrAdd((SceneDataEntity + 48), re::ecs2::ComponentImpl<re::ecs2::PhysicsDebugComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  *(v4 + 32) = a2;
  re::ecs2::Component::markDirty(v4);
  v5 = *(SceneDataEntity + 27);
  if (!v5)
  {
    v5 = re::ecs2::EntityComponentCollection::add((SceneDataEntity + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  }

  re::ecs2::NetworkComponent::markDirty(v5, v4);
}

uint64_t RESceneGetPhysicsDebugDrawMode(uint64_t a1)
{
  v4[0] = 0;
  SceneDataEntity = makeSceneDataEntity(a1, v4, 1, re::ecs2::Scene::kLocalSceneDataEntityID, 0);
  v2 = re::ecs2::EntityComponentCollection::get((SceneDataEntity + 48), re::ecs2::ComponentImpl<re::ecs2::PhysicsDebugComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v2)
  {
    return *(v2 + 32);
  }

  else
  {
    return 3;
  }
}

void REPhysicsDebugComponentSetDrawLevel(uint64_t a1, int a2)
{
  *(a1 + 28) = a2;
  re::ecs2::Component::markDirty(a1);
  v3 = *(a1 + 16);
  v4 = *(v3 + 216);
  if (!v4)
  {
    v4 = re::ecs2::EntityComponentCollection::add((v3 + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  }

  re::ecs2::NetworkComponent::markDirty(v4, a1);
}

void REPhysicsDebugComponentSetDrawMode(uint64_t a1, int a2)
{
  *(a1 + 32) = a2;
  re::ecs2::Component::markDirty(a1);
  v3 = *(a1 + 16);
  v4 = *(v3 + 216);
  if (!v4)
  {
    v4 = re::ecs2::EntityComponentCollection::add((v3 + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  }

  re::ecs2::NetworkComponent::markDirty(v4, a1);
}

void *REAnimationLibraryComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::AnimationLibraryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
}

uint64_t REAnimationLibraryComponentAssignAnimationLibraryAsset(uint64_t a1, uint64_t a2)
{
  re::AssetAPIHelper::assetHandleCreate(a2, &v6);
  v3 = *(a1 + 32);
  *(a1 + 32) = v6;
  v6 = v3;
  v4 = *(a1 + 48);
  *(a1 + 48) = v7;
  v7 = v4;
  re::AssetHandle::~AssetHandle(&v6);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

re::ecs2::Entity *REAnimationLibraryComponentCreateDefaultAnimation(re::ecs2::Entity *a1, uint64_t *a2, int a3)
{
  v129 = *MEMORY[0x1E69E9840];
  v6 = re::ecs2::EntityComponentCollection::get((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::AnimationLibraryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (!v6 || (v7 = *(v6 + 40)) == 0 || (v8 = atomic_load((v7 + 896)), v8 != 2))
  {
LABEL_59:
    if (a3)
    {
      goto LABEL_60;
    }

    return 0;
  }

  v9 = re::AssetHandle::blockUntilLoaded<re::AnimationLibraryAsset>((v6 + 32));
  v10 = v9[12];
  if (!a3)
  {
    if (v10)
    {
      v11 = v9[14];
      v14 = 40 * v10;
      while (!re::StringID::operator==(v11, re::kLocalEntitySceneAnimationName) && !re::StringID::operator==(v11, re::kDefaultEntityAnimationName))
      {
        v11 += 5;
        v14 -= 40;
        if (!v14)
        {
          goto LABEL_59;
        }
      }

      goto LABEL_17;
    }

    v27 = v9[17];
    if (v27)
    {
      v28 = 24 * v27;
      v18 = v9[19];
      while (1)
      {
        v116 = 0;
        __s1 = &str_67;
        v29 = re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>::assetType();
        v30 = *(v18 + 1);
        if (v30)
        {
          v30 = *(v30 + 280);
        }

        if (v29 != v30)
        {
          v31 = v116;
          goto LABEL_55;
        }

        v32 = re::AssetHandle::blockUntilLoaded<re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>>(v18);
        v29 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>(v32);
        v33 = *(v29 + 16);
        if (v33)
        {
          v29 = re::StringID::operator=(&v116, (v33 + 24));
        }

        v31 = v116;
        if (v116 >> 1 == 0x34A574094D1AF786)
        {
          v34 = __s1;
          if (__s1 == "default entity animation")
          {
            goto LABEL_113;
          }

          v35 = "default entity animation";
        }

        else
        {
          if (v116 >> 1 != 0x3D5505122B750911)
          {
            goto LABEL_55;
          }

          v34 = __s1;
          if (__s1 == "default scene animation")
          {
            goto LABEL_113;
          }

          v35 = "default scene animation";
        }

        v29 = strcmp(v34, v35);
        if (!v29)
        {
LABEL_113:
          re::StringID::destroyString(&v116);
          return v57;
        }

LABEL_55:
        if (v31)
        {
          if (v116)
          {
          }
        }

        v18 = (v18 + 24);
        v28 -= 24;
        if (!v28)
        {
          goto LABEL_59;
        }
      }
    }

    return 0;
  }

  if (v10)
  {
    v11 = v9[14];
    v12 = 40 * v10;
    while (!re::StringID::operator==(v11, re::kGlobalSceneAnimationName) && !re::StringID::operator==(v11, re::kLocalSubtreeSceneAnimationName))
    {
      v11 += 5;
      v12 -= 40;
      if (!v12)
      {
        goto LABEL_59;
      }
    }

LABEL_17:
  }

  v16 = v9[17];
  if (v16)
  {
    v17 = 24 * v16;
    v18 = v9[19];
    while (1)
    {
      v116 = 0;
      __s1 = &str_67;
      v19 = re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>::assetType();
      v20 = *(v18 + 1);
      if (v20)
      {
        v20 = *(v20 + 280);
      }

      if (v19 == v20)
      {
        v22 = re::AssetHandle::blockUntilLoaded<re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>>(v18);
        v19 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>(v22);
        v24 = *(v19 + 16);
        if (v24)
        {
          v19 = re::StringID::operator=(&v116, (v24 + 24));
        }

        v21 = v116;
        if (v116 >> 1 == 0x3455FFA1B1837FA3)
        {
          v25 = __s1;
          if (__s1 == "default subtree animation")
          {
            goto LABEL_113;
          }

          v26 = "default subtree animation";
LABEL_34:
          v19 = strcmp(v25, v26);
          if (!v19)
          {
            goto LABEL_113;
          }

          goto LABEL_35;
        }

        if (v116 >> 1 == 0x3C015B2DF8573273)
        {
          v25 = __s1;
          if (__s1 == "global scene animation")
          {
            goto LABEL_113;
          }

          v26 = "global scene animation";
          goto LABEL_34;
        }
      }

      else
      {
        v21 = v116;
      }

LABEL_35:
      if (v21)
      {
        if (v116)
        {
        }
      }

      v18 = (v18 + 24);
      v17 -= 24;
      if (!v17)
      {
        goto LABEL_59;
      }
    }
  }

LABEL_60:
  re::StackScratchAllocator::StackScratchAllocator(&v116);
  *v115 = 0;
  v112[1] = 0;
  *v113 = 0;
  v114 = 0;
  v112[0] = &v116;
  re::DynamicArray<float *>::setCapacity(v112, 0);
  ++v114;
  *&v124 = a2 + 36;
  v36 = re::DynamicArray<re::RigDataValue *>::add(v112, &v124);
  v109 = 0;
  v110 = 0;
  v111 = 0;
  v37 = a2[4];
  if (!v37 || (*(v37 + 304) & 0x80) != 0)
  {
    goto LABEL_122;
  }

  do
  {
    if (v110)
    {
      v38 = atomic_load((v110 + 896));
      if (v38 == 2)
      {
        break;
      }
    }

    v39 = re::ecs2::EntityComponentCollection::get((v37 + 48), re::ecs2::ComponentImpl<re::ecs2::AnimationLibraryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (!v39)
    {
      goto LABEL_93;
    }

    v40 = *(v39 + 40);
    if (!v40)
    {
      goto LABEL_93;
    }

    v41 = atomic_load((v40 + 896));
    if (v41 != 2)
    {
      goto LABEL_93;
    }

    v42 = re::AssetHandle::blockUntilLoaded<re::AnimationLibraryAsset>((v39 + 32));
    v43 = v42[12];
    if (!v43)
    {
      v46 = v42[17];
      if (!v46)
      {
        goto LABEL_93;
      }

      v47 = v42[19];
      v48 = 24 * v46;
      while (2)
      {
        *&v124 = 0;
        *(&v124 + 1) = &str_67;
        v49 = re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>::assetType();
        v50 = *(v47 + 1);
        if (v50)
        {
          v50 = *(v50 + 280);
        }

        if (v49 != v50)
        {
          v51 = v124;
LABEL_89:
          if (v51)
          {
            if (v124)
            {
            }
          }

          v47 = (v47 + 24);
          v48 -= 24;
          if (!v48)
          {
            goto LABEL_93;
          }

          continue;
        }

        break;
      }

      v52 = re::AssetHandle::blockUntilLoaded<re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>>(v47);
      v49 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>(v52);
      v53 = *(v49 + 16);
      if (v53)
      {
        v49 = re::StringID::operator=(&v124, (v53 + 24));
      }

      v51 = v124;
      if (v124 >> 1 == 0x3455FFA1B1837FA3)
      {
        v54 = *(&v124 + 1);
        if (*(&v124 + 1) == "default subtree animation")
        {
          goto LABEL_96;
        }

        v55 = "default subtree animation";
      }

      else
      {
        if (v124 >> 1 != 0x3C015B2DF8573273)
        {
          goto LABEL_89;
        }

        v54 = *(&v124 + 1);
        if (*(&v124 + 1) == "global scene animation")
        {
          goto LABEL_96;
        }

        v55 = "global scene animation";
      }

      v49 = strcmp(v54, v55);
      if (!v49)
      {
LABEL_96:
        v56 = re::AssetHandle::operator=(&v109, v47);
        if (v124)
        {
          if (v124)
          {
          }
        }

        goto LABEL_93;
      }

      goto LABEL_89;
    }

    v44 = v42[14];
    v45 = 40 * v43;
    while (!re::StringID::operator==(v44, re::kGlobalSceneAnimationName) && !re::StringID::operator==(v44, re::kLocalSubtreeSceneAnimationName))
    {
      v44 += 5;
      v45 -= 40;
      if (!v45)
      {
        goto LABEL_93;
      }
    }

    re::AssetHandle::operator=(&v109, v44 + 2);
LABEL_93:
    *&v124 = v37 + 288;
    v36 = re::DynamicArray<re::RigDataValue *>::add(v112, &v124);
    v37 = *(v37 + 32);
  }

  while (v37 && (*(v37 + 304) & 0x80) == 0);
  if (!v110)
  {
    goto LABEL_122;
  }

  v58 = atomic_load((v110 + 896));
  if (v58 != 2)
  {
    goto LABEL_122;
  }

  v36 = re::AssetHandle::blockUntilLoaded<re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>>(&v109);
  v105 = v36;
  v60 = (v36 + 24);
  v61 = *v115;
  v62 = *v113;
  LODWORD(v63) = v115[0];
  v64 = *v113;
  while (1)
  {
    v65 = v64 - 1;
    if (v64 == 1)
    {
      break;
    }

    v36 = re::Slice<re::StringID const*>::range(v63, v64, v65);
    v67 = v60[4];
    if (!v67)
    {
      goto LABEL_122;
    }

    v64 = v66;
    if (!v66)
    {
      re::internal::assertLog(4, 0, "assertion failure: '%s' (%s:line %i) Array is empty.", "!isEmpty()", "last", 240);
      _os_crash();
      __break(1u);
LABEL_137:
      re::internal::assertLog(4, v70, "assertion failure: '%s' (%s:line %i) Array is empty.", "!isEmpty()", "last", 240);
      _os_crash();
      __break(1u);
    }

    v63 = v36;
    v60 = v60[6];
    v68 = *(v36 + 8 * v66 - 8);
    v69 = 88 * v67;
    while (1)
    {
      v36 = re::StringID::operator==(v60, v68);
      if (v36)
      {
        break;
      }

      v60 += 11;
      v69 -= 88;
      if (!v69)
      {
        goto LABEL_122;
      }
    }

    if (!v64)
    {
      goto LABEL_137;
    }

    v36 = re::StringID::operator==(v60, *(v63 + 8 * v64 - 8));
    if (!v36)
    {
      goto LABEL_122;
    }
  }

  if (!v60)
  {
    goto LABEL_122;
  }

  if (v62 == -1)
  {
    v106 = 0;
    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    v124 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v121 = 136315906;
    *&v121[4] = "slice";
    *&v121[12] = 1024;
    *&v121[14] = 1119;
    v122 = 2048;
    *v123 = 0;
    *&v123[8] = 2048;
    *&v123[10] = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_139;
  }

  v71 = v62 - 1;
  if (!v62)
  {
LABEL_139:
    re::internal::assertLog(7, v59, v65, "assertion failure: '%s' (%s:line %i) Invalid count. index = %zu, count = %zu, array size = %zu", "endIndexExclusive <= m_size", "slice", 1129, 0, v71, 0, v105, v106);
    result = _os_crash();
    __break(1u);
    return result;
  }

  if (*(&v118 + 1))
  {
    v72 = atomic_load((*(&v118 + 1) + 896));
    if (v72 == 2)
    {
      if (fabs(v74) >= 1.0e-12)
      {
        v92 = re::globalAllocators(v73);
        v93 = (*(*v92[2] + 32))(v92[2], 176, 8);
        v94 = re::TimelineAssetData::TimelineAssetData(v93, 1);
        *v94 = &unk_1F5CBE660;
        *(v94 + 112) = 0;
        *(v94 + 128) = 0;
        *(v94 + 136) = 0;
        *(v94 + 144) = 0;
        *(v94 + 152) = 0;
        *(v94 + 72) = 0;
        *(v93 + 80) = 0;
        *(v93 + 88) = 0;
        *(v93 + 168) = 1065353216;
        *(v93 + 172) = 0;
        *(v93 + 96) = 1;
        *(v93 + 104) = v74;
        re::AssetHandle::operator=(v94 + 72, &v118);
        TimelineAsset = re::AssetHelper::makeTimelineAsset(v93, v95);
        v97 = re::TimelineAsset::assetType(TimelineAsset);
        (*(*a1 + 424))(&v124, a1, TimelineAsset, v97, 0, 0, 0);
      }

      else
      {
        re::AssetHandle::AssetHandle(&v124, &v118);
      }

      v98 = v118;
      v118 = v124;
      v124 = v98;
      v99 = v119;
      v119 = v125;
      *&v125 = v99;
      re::AssetHandle::~AssetHandle(&v124);
      v101 = re::globalAllocators(v100);
      v102 = (*(*v101[2] + 32))(v101[2], 112, 8);
      *(v102 + 32) = 0u;
      *(v102 + 48) = 0u;
      *(v102 + 64) = 0u;
      *v102 = 0u;
      *(v102 + 16) = 0u;
      *(v102 + 80) = 0;
      *(v102 + 88) = 0;
      *(v102 + 32) = &str_67;
      *(v102 + 48) = 0;
      *(v102 + 56) = 0;
      *(v102 + 64) = 0;
      *(v102 + 40) = 0;
      *(v102 + 96) = 0;
      *(v102 + 104) = 0;
      v103 = re::AssetHandle::operator=(v102, &v118);
      re::StringID::operator=((v103 + 24), v60);
      re::DynamicArray<re::AnimationSceneEntityData>::operator=(v102 + 40, v60 + 2);
      *(v102 + 80) = *(v60 + 56);
      re::AssetHandle::operator=(v102 + 88, v60 + 8);
      v104 = re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>::assetType();
      (*(*a1 + 424))(&v124, a1, v102, v104, 0, 0, 0);
      v57 = v124;
      *&v124 = 0;
      re::AssetHandle::~AssetHandle(&v124);
      re::AssetHandle::~AssetHandle(&v118);
      goto LABEL_129;
    }
  }

  re::AssetHandle::~AssetHandle(&v118);
LABEL_122:
  v75 = re::globalAllocators(v36);
  v76 = (*(*v75[2] + 32))(v75[2], 112, 8);
  *(v76 + 32) = 0u;
  *(v76 + 48) = 0u;
  *(v76 + 64) = 0u;
  *v76 = 0u;
  *(v76 + 16) = 0u;
  *(v76 + 80) = 0;
  *(v76 + 88) = 0;
  *(v76 + 32) = &str_67;
  *(v76 + 40) = 0;
  *(v76 + 48) = 0;
  *(v76 + 56) = 0;
  *(v76 + 64) = 0;
  *(v76 + 96) = 0;
  *(v76 + 104) = 0;
  *v121 = &unk_1F5D2D9D0;
  *&v123[4] = v121;
  *&v126 = &v124 + 8;
  *&v124 = v76;
  *(&v124 + 1) = &unk_1F5D2D9D0;
  std::__function::__value_func<void ()(re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension> *)>::~__value_func[abi:nn200100](v121);
  v77 = re::StringID::operator=((v124 + 24), a2 + 36);
  v78 = re::globalAllocators(v77);
  v79 = (*(*v78[2] + 32))(v78[2], 112, 8);
  v80 = re::TimelineAssetData::TimelineAssetData(v79, 2);
  *v80 = &unk_1F5CBE6B8;
  *(v80 + 104) = 0;
  *(v80 + 80) = 0;
  *(v80 + 88) = 0;
  *(v80 + 72) = 0;
  *(v80 + 96) = 0;
  *&v118 = &unk_1F5D2DA50;
  v120 = &v118;
  *&v123[12] = &v121[8];
  *v121 = v80;
  *&v121[8] = &unk_1F5D2DA50;
  v81 = std::__function::__value_func<void ()(re::TimelineGroupAssetData *)>::~__value_func[abi:nn200100](&v118);
  v83 = *v121;
  if (*(*v121 + 88))
  {
    *v121 = 0;
    v84 = re::AssetHelper::makeTimelineAsset(v83, v82);
    v85 = re::TimelineAsset::assetType(v84);
    (*(*a1 + 424))(&v106, a1, v84, v85, 0, 0, 0);
    v86 = v124;
    v87 = *(v124 + 8);
    v88 = *(v124 + 16);
    *(v124 + 8) = v107;
    v107 = v87;
    v89 = *v86;
    *v86 = 0;
    *v86 = v106;
    v86[2] = v108;
    v106 = v89;
    v108 = v88;
    re::AssetHandle::~AssetHandle(&v106);
    v90 = v124;
    *&v124 = 0;
    v91 = re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>::assetType();
    (*(*a1 + 424))(&v106, a1, v90, v91, 0, 0, 0);
    v57 = v106;
    v106 = 0;
    re::AssetHandle::~AssetHandle(&v106);
  }

  else
  {
    v57 = 0;
  }

  if (v118 && (BYTE8(v118) & 1) != 0)
  {
    (*(*v118 + 40))();
  }

  std::unique_ptr<re::TimelineGroupAssetData,std::function<void ()(re::TimelineGroupAssetData*)>>::~unique_ptr[abi:nn200100](v121);
  std::unique_ptr<re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>,std::function<void ()(re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>*)>>::~unique_ptr[abi:nn200100](&v124);
LABEL_129:
  re::AssetHandle::~AssetHandle(&v109);
  if (v112[0])
  {
    if (*v115)
    {
      (*(*v112[0] + 40))();
    }
  }

  re::StackScratchAllocator::~StackScratchAllocator(&v116);
  return v57;
}

re::ecs2::Entity *anonymous namespace::validateAndRetainSceneAsset(_anonymous_namespace_ *this, const re::AssetHandle *a2, re::ecs2::Entity *a3, AssetService *a4)
{
  v38[4] = *MEMORY[0x1E69E9840];
  v7 = re::AssetHandle::blockUntilLoaded<re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>>(this);
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = re::StringID::operator==((v7 + 24), a2 + 36);
  if (v8)
  {
    goto LABEL_9;
  }

  v9 = re::globalAllocators(v8);
  v10 = (*(*v9[2] + 32))(v9[2], 112, 8);
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0u;
  *(v10 + 64) = 0u;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 80) = 0;
  *(v10 + 88) = 0;
  *(v10 + 32) = &str_67;
  *(v10 + 40) = 0;
  *(v10 + 48) = 0;
  *(v10 + 56) = 0;
  *(v10 + 64) = 0;
  *(v10 + 96) = 0;
  *(v10 + 104) = 0;
  v35 = &unk_1F5D2D8B0;
  v36[2] = &v35;
  v38[3] = v38;
  v37 = v10;
  v38[0] = &unk_1F5D2D8B0;
  std::__function::__value_func<void ()(re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension> *)>::~__value_func[abi:nn200100](&v35);
  v11 = re::StringID::operator=(v37 + 3, a2 + 36);
  v12 = re::globalAllocators(v11);
  v13 = (*(*v12[2] + 32))(v12[2], 112, 8);
  v14 = re::TimelineAssetData::TimelineAssetData(v13, 2);
  *v14 = &unk_1F5CBE6B8;
  *(v14 + 104) = 0;
  *(v14 + 80) = 0;
  *(v14 + 88) = 0;
  *(v14 + 72) = 0;
  *(v14 + 96) = 0;
  v32 = &unk_1F5D2D940;
  v34 = &v32;
  v35 = v14;
  v36[3] = v36;
  v36[0] = &unk_1F5D2D940;
  v15 = std::__function::__value_func<void ()(re::TimelineGroupAssetData *)>::~__value_func[abi:nn200100](&v32);
  v17 = v35;
  v18 = *(v35 + 11);
  if (v18)
  {
    v35 = 0;
    TimelineAsset = re::AssetHelper::makeTimelineAsset(v17, v16);
    v20 = re::TimelineAsset::assetType(TimelineAsset);
    (*(*a3 + 424))(&v29, a3, TimelineAsset, v20, 0, 0, 0);
    v21 = v37;
    v22 = v37[1];
    v23 = v37[2];
    v37[1] = v30;
    v30 = v22;
    v24 = *v21;
    *v21 = 0;
    *v21 = v29;
    v21[2] = v31;
    v29 = v24;
    v31 = v23;
    re::AssetHandle::~AssetHandle(&v29);
    v25 = v37;
    v37 = 0;
    v26 = re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>::assetType();
    (*(*a3 + 424))(&v29, a3, v25, v26, 0, 0, 0);
    a3 = v29;
    v29 = 0;
    re::AssetHandle::~AssetHandle(&v29);
  }

  if (v32 && (v33 & 1) != 0)
  {
    (*(*v32 + 40))();
  }

  std::unique_ptr<re::TimelineGroupAssetData,std::function<void ()(re::TimelineGroupAssetData*)>>::~unique_ptr[abi:nn200100](&v35);
  std::unique_ptr<re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>,std::function<void ()(re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>*)>>::~unique_ptr[abi:nn200100](&v37);
  if (!v18)
  {
LABEL_9:
    a3 = *this;
    if (*this)
    {
      v27 = a3 + 8;
    }
  }

  return a3;
}

void anonymous namespace::findTimelineSubtreeWithEntityPath(re::AssetHandle *a1, re::TimelineAsset *a2, re::TimelineAsset *a3, uint64_t a4, unint64_t a5)
{
  v10 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>(a3);
  if (!v10)
  {
    goto LABEL_39;
  }

  v11 = *(v10 + 8);
  v68[0] = 46;
  v12 = re::DynamicString::find((v11 + 40), v68, 1, 0, &v70);
  if (v70 != 1)
  {
    v13 = 0;
    if (!a5)
    {
      goto LABEL_64;
    }

LABEL_19:
    v22 = *(v11 + 48);
    if (v22)
    {
      v23 = v22 >> 1;
    }

    else
    {
      v23 = v22 >> 1;
    }

    if (v13 >= v23)
    {
      goto LABEL_45;
    }

    v24 = re::DynamicString::operator[](v11 + 40, v13);
    v25 = v24;
    v26 = *(v11 + 48);
    if (v26)
    {
      v27 = v26 >> 1;
    }

    else
    {
      v27 = v26 >> 1;
    }

    v28 = v27 - v13;
    v70 = 0;
    v71 = &str_67;
    v30 = *(a4 + 8 * a5 - 8);
    v31 = v70;
    v32 = a2;
    if ((*v30 ^ v70) > 1)
    {
      v34 = 1;
      if ((v70 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v29 = v71;
      v33 = v30[1];
      if (v71 == v33)
      {
        v34 = 0;
        if ((v70 & 1) == 0)
        {
LABEL_38:
          if (v34)
          {
LABEL_39:
            *a1 = 0;
            *(a1 + 1) = 0;
            *(a1 + 2) = 0;
            return;
          }

          v12 = re::Slice<re::StringID const*>::range(a4, a5, a5 - 1);
          v36 = *(v11 + 48);
          if (v36)
          {
            v13 = v36 >> 1;
          }

          else
          {
            v13 = v36 >> 1;
          }

          if (!v35)
          {
            a2 = v32;
            goto LABEL_64;
          }

          a4 = v12;
          a5 = v35;
          a2 = v32;
LABEL_45:
          v37 = *(v11 + 8);
          if (v37 > 5)
          {
            if (v37 > 10 && v37 != 60)
            {
              goto LABEL_39;
            }

            goto LABEL_51;
          }

          if (v37 > 2)
          {
LABEL_51:
            v38 = v11 + 80;
LABEL_52:
            return;
          }

          if (v37 == 1)
          {
            v38 = v11 + 72;
            goto LABEL_52;
          }

          if (v37 != 2)
          {
            goto LABEL_39;
          }

          v74 = 0;
          v71 = 0;
          v72 = 0;
          v70 = 0;
          v73 = 0;
          v39 = *(v11 + 88);
          if (v39)
          {
            v40 = *(v11 + 104);
            v41 = 24 * v39;
            do
            {
              if (__s1)
              {
                v42 = atomic_load(__s1 + 224);
                if (v42 == 2)
                {
                  re::DynamicArray<re::AssetHandle>::add(&v70, v68);
                }
              }

              re::AssetHandle::~AssetHandle(v68);
              v40 += 24;
              v41 -= 24;
            }

            while (v41);
            if (v72 == 1)
            {
              v44 = v74;
              v45 = a1;
LABEL_88:
              re::AssetHandle::AssetHandle(v45, v44);
LABEL_90:
              re::DynamicArray<re::AssetHandle>::deinit(&v70);
              return;
            }

            v59 = *(v11 + 88);
            if (v72 != v59)
            {
LABEL_89:
              v63 = re::globalAllocators(v43);
              v64 = (*(*v63[2] + 32))(v63[2], 112, 8);
              v65 = re::TimelineAssetData::TimelineAssetData(v64, 2);
              *v65 = &unk_1F5CBE6B8;
              *(v65 + 104) = 0;
              *(v65 + 80) = 0;
              *(v65 + 88) = 0;
              *(v65 + 96) = 0;
              *(v65 + 72) = 0;
              re::DynamicArray<re::AssetHandle>::operator=(v65 + 72, &v70);
              TimelineAsset = re::AssetHelper::makeTimelineAsset(v64, v66);
              re::AssetService::createMemoryAsset<re::TimelineAsset>(a2, TimelineAsset, 0);
              goto LABEL_90;
            }

            if (v59)
            {
              v60 = (*(v11 + 104) + 8);
              v61 = 24 * v59;
              v62 = v74 + 1;
              while (*v62 == *v60)
              {
                v60 += 3;
                v62 += 3;
                v61 -= 24;
                if (!v61)
                {
                  goto LABEL_87;
                }
              }

              goto LABEL_89;
            }
          }

LABEL_87:
          v45 = a1;
          v44 = a3;
          goto LABEL_88;
        }
      }

      else
      {
        v29 = strcmp(v71, v33);
        v34 = v29 != 0;
        if ((v31 & 1) == 0)
        {
          goto LABEL_38;
        }
      }
    }

    if (v70)
    {
    }

    goto LABEL_38;
  }

  v13 = 0;
  if (!a5)
  {
    goto LABEL_64;
  }

  v14 = v71;
  while (1)
  {
    v15 = re::DynamicString::operator[](v11 + 40, v13);
    *v68 = 0;
    __s1 = &str_67;
    v17 = *(a4 + 8 * a5 - 8);
    v18 = v68[0];
    if ((*v17 ^ *v68) > 1)
    {
      v20 = 1;
      if ((v68[0] & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v16 = __s1;
      v19 = v17[1];
      if (__s1 == v19)
      {
        v20 = 0;
        if ((v68[0] & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v16 = strcmp(__s1, v19);
        v20 = v16 != 0;
        if ((v18 & 1) == 0)
        {
          goto LABEL_14;
        }
      }
    }

    if (v68[0])
    {
    }

LABEL_14:
    if (v20)
    {
      *a1 = 0;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      return;
    }

    a4 = re::Slice<re::StringID const*>::range(a4, a5, a5 - 1);
    a5 = v21;
    v13 = v14 + 1;
    v75 = 46;
    v12 = re::DynamicString::find((v11 + 40), &v75, 1, v14 + 1, v68);
    if ((v68[0] & 1) == 0)
    {
      break;
    }

    v14 = __s1;
    if (!a5)
    {
      goto LABEL_64;
    }
  }

  if (a5)
  {
    goto LABEL_19;
  }

LABEL_64:
  v46 = *(v11 + 48);
  if (v46)
  {
    v47 = v46 >> 1;
  }

  else
  {
    v47 = v46 >> 1;
  }

  if (v13 >= v47)
  {
    if (v47)
    {
      if (v54[6])
      {
        v54[6] = 1;
        v56 = v54[7];
      }

      else
      {
        *(v54 + 48) = 0;
        v56 = v54 + 49;
      }

      *v56 = 0;
      v57 = re::AssetHelper::makeTimelineAsset(v54, v55);
      v58 = re::TimelineAsset::assetType(v57);
      (*(*a2 + 424))(a2, v57, v58, 0, 0, 0);
    }

    else
    {
      re::AssetHandle::AssetHandle(a1, a3);
    }
  }

  else
  {
    v49 = *(v11 + 48);
    if (v49)
    {
      v50 = v49 >> 1;
    }

    else
    {
      v50 = v49 >> 1;
    }

    re::DynamicString::substr((v11 + 40), v13, v50, &v70);
    re::DynamicString::operator=((v48 + 40), &v70);
    if (v70)
    {
      if (v71)
      {
        (*(*v70 + 40))();
      }
    }

    v52 = re::AssetHelper::makeTimelineAsset(v48, v51);
    v53 = re::TimelineAsset::assetType(v52);
    (*(*a2 + 424))(a2, v52, v53, 0, 0, 0);
  }
}

void anonymous namespace::createDefaultSubtreeAnimation(_anonymous_namespace_ *this, re::AnimationSceneEntityData *a2, re::TimelineGroupAssetData *a3, re::DynamicString *a4, AssetService *a5, re::ecs2::Entity *a6)
{
  v59[0] = a6;
  v7 = re::ecs2::EntityComponentCollection::get(&a5[6], re::ecs2::ComponentImpl<re::ecs2::AnimationLibraryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (!v7)
  {
    goto LABEL_54;
  }

  v8 = *(v7 + 40);
  if (!v8)
  {
    goto LABEL_54;
  }

  v9 = atomic_load((v8 + 896));
  if (v9 != 2)
  {
    goto LABEL_54;
  }

  v10 = re::AssetHandle::blockUntilLoaded<re::AnimationLibraryAsset>((v7 + 32));
  v11 = v10[12];
  if (v11)
  {
    v12 = 40 * v11;
    v13 = v10[14];
    while (1)
    {
      if (v59[0])
      {
        if (!re::StringID::operator==(v13, re::kDefaultEntityAnimationName))
        {
          goto LABEL_16;
        }
      }

      else if (!re::StringID::operator==(v13, re::kGlobalSceneAnimationName) && !re::StringID::operator==(v13, re::kLocalSubtreeSceneAnimationName) && !re::StringID::operator==(v13, re::kLocalEntitySceneAnimationName) && !re::StringID::operator==(v13, re::kDefaultEntityAnimationName))
      {
        goto LABEL_16;
      }

      v14 = re::AssetHandle::blockUntilLoaded<re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>>((v13 + 2));
      re::StringID::operator=(this, (v14 + 24));
      re::DynamicArray<re::AnimationSceneEntityData>::operator=(this + 16, (v14 + 40));
      *(this + 56) = *(v14 + 80);
      re::AssetHandle::operator=(this + 64, (v14 + 88));
      v15 = re::StringID::operator=(this, &a5[36]);
      v16 = re::globalAllocators(v15);
      v17 = (*(*v16[2] + 32))(v16[2], 176, 8);
      v18 = re::TimelineAssetData::TimelineAssetData(v17, 1);
      *v18 = &unk_1F5CBE660;
      *(v18 + 112) = 0;
      *(v18 + 128) = 0;
      *(v18 + 136) = 0;
      *(v18 + 144) = 0;
      *(v18 + 152) = 0;
      *(v18 + 80) = 0;
      *(v18 + 88) = 0;
      *(v18 + 96) = 0;
      *(v18 + 72) = 0;
      v19 = v18 + 72;
      *(v18 + 168) = 1065353216;
      *(v18 + 172) = 0;
      re::DynamicString::operator=((v18 + 40), a3);
      re::AssetHandle::operator=(v19, v14);
      TimelineAsset = re::AssetHelper::makeTimelineAsset(v17, v20);
      re::TimelineAsset::assetType(TimelineAsset);
      (*(*a4 + 424))(&v59[1]);
      re::DynamicArray<re::AssetHandle>::add(a2 + 9, &v59[1]);
      re::AssetHandle::~AssetHandle(&v59[1]);
      if ((v59[0] & 1) == 0 && (re::StringID::operator==(v13, re::kGlobalSceneAnimationName) || re::StringID::operator==(v13, re::kLocalSubtreeSceneAnimationName)))
      {
        return;
      }

LABEL_16:
      v13 += 5;
      v12 -= 40;
      if (!v12)
      {
        goto LABEL_54;
      }
    }
  }

  v22 = v10[17];
  if (!v22)
  {
LABEL_54:
    var0 = a5[43].var0;
    if (var0)
    {
      v43 = a5[45].var0;
      v44 = 8 * var0;
      do
      {
        v45 = *v43;
        v46 = re::DynamicString::DynamicString(&v68, a3);
        if (v69)
        {
          v47 = v69 >> 1;
        }

        else
        {
          v47 = v69 >> 1;
        }

        if (v47)
        {
          v46 = re::DynamicString::append(v46, ".", 1uLL);
        }

        v66 = 0u;
        v67 = 0u;
        re::DynamicString::setCapacity(&v66, 0);
        v48 = strlen(*(v45 + 37));
        *&v59[1] = *(v45 + 37);
        v60 = v48;
        re::internal::escapeBindingKey(&v59[1], &v66);
        if (BYTE8(v66))
        {
          v49 = v67;
        }

        else
        {
          v49 = &v66 + 9;
        }

        re::DynamicString::format("entities[%s]", &v59[1], v49);
        v50 = v60 & 1;
        if (v60)
        {
          v51 = v61[0];
        }

        else
        {
          v51 = &v60 + 1;
        }

        if (v60)
        {
          v52 = v60 >> 1;
        }

        else
        {
          v52 = v60 >> 1;
        }

        re::DynamicString::append(&v68, v51, v52);
        if (*&v59[1] && v50)
        {
          (*(**&v59[1] + 40))();
        }

        *&v59[1] = 0;
        v60 = &str_67;
        v63 = 0;
        memset(v61, 0, sizeof(v61));
        v62 = 0;
        v64 = 0;
        memset(v65, 0, sizeof(v65));
        re::StringID::operator=(&v59[1], v45 + 36);
        re::DynamicArray<re::AnimationSceneEntityData>::add(this + 2, &v59[1]);
        re::AssetHandle::~AssetHandle(v65);
        v54 = re::DynamicArray<re::AnimationSceneEntityData>::deinit(v61);
        if (v59[1])
        {
          if (v59[1])
          {
          }
        }

        if (v66 && (BYTE8(v66) & 1) != 0)
        {
          (*(*v66 + 40))();
        }

        if (v68)
        {
          if (v69)
          {
            (*(*v68 + 40))();
          }
        }

        ++v43;
        v44 -= 8;
      }

      while (v44);
    }

    return;
  }

  v23 = 24 * v22;
  v24 = v10[19];
  while (1)
  {
    v68 = 0;
    v69 = &str_67;
    v25 = re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>::assetType();
    v26 = *(v24 + 1);
    if (v26)
    {
      v26 = *(v26 + 280);
    }

    if (v25 == v26)
    {
      v27 = re::AssetHandle::blockUntilLoaded<re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>>(v24);
      v25 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>(v27);
      v28 = *(v25 + 16);
      if (v28)
      {
        v25 = re::StringID::operator=(&v68, (v28 + 24));
      }
    }

    v29 = v68;
    if (v59[0])
    {
      if (v68 >> 1 != 0x34A574094D1AF786)
      {
        goto LABEL_50;
      }

LABEL_31:
      v31 = v69;
      if (v69 == "default entity animation")
      {
        goto LABEL_42;
      }

      v32 = "default entity animation";
      goto LABEL_41;
    }

    v30 = v68 >> 1;
    if (v68 >> 1 <= 0x3C015B2DF8573272)
    {
      if (v30 == 0x3455FFA1B1837FA3)
      {
        v31 = v69;
        if (v69 == "default subtree animation")
        {
          goto LABEL_42;
        }

        v32 = "default subtree animation";
        goto LABEL_41;
      }

      if (v30 != 0x34A574094D1AF786)
      {
        goto LABEL_50;
      }

      goto LABEL_31;
    }

    if (v30 == 0x3D5505122B750911)
    {
      v31 = v69;
      if (v69 == "default scene animation")
      {
        goto LABEL_42;
      }

      v32 = "default scene animation";
    }

    else
    {
      if (v30 != 0x3C015B2DF8573273)
      {
        goto LABEL_50;
      }

      v31 = v69;
      if (v69 == "global scene animation")
      {
        goto LABEL_42;
      }

      v32 = "global scene animation";
    }

LABEL_41:
    v25 = strcmp(v31, v32);
    if (v25)
    {
      goto LABEL_50;
    }

LABEL_42:
    v33 = re::AssetHandle::blockUntilLoaded<re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>>(v24);
    re::StringID::operator=(this, (v33 + 24));
    re::DynamicArray<re::AnimationSceneEntityData>::operator=(this + 16, (v33 + 40));
    *(this + 56) = *(v33 + 80);
    re::AssetHandle::operator=(this + 64, (v33 + 88));
    v34 = re::StringID::operator=(this, &a5[36]);
    v35 = re::globalAllocators(v34);
    v36 = (*(*v35[2] + 32))(v35[2], 176, 8);
    v37 = re::TimelineAssetData::TimelineAssetData(v36, 1);
    *v37 = &unk_1F5CBE660;
    *(v37 + 112) = 0;
    *(v37 + 128) = 0;
    *(v37 + 136) = 0;
    *(v37 + 144) = 0;
    *(v37 + 152) = 0;
    *(v37 + 80) = 0;
    *(v37 + 88) = 0;
    *(v37 + 96) = 0;
    *(v37 + 72) = 0;
    v38 = v37 + 72;
    *(v37 + 168) = 1065353216;
    *(v37 + 172) = 0;
    re::DynamicString::operator=((v37 + 40), a3);
    re::AssetHandle::operator=(v38, v33);
    v40 = re::AssetHelper::makeTimelineAsset(v36, v39);
    re::TimelineAsset::assetType(v40);
    (*(*a4 + 424))(&v59[1]);
    re::DynamicArray<re::AssetHandle>::add(a2 + 9, &v59[1]);
    re::AssetHandle::~AssetHandle(&v59[1]);
    v29 = v68;
    if (v59[0])
    {
      goto LABEL_50;
    }

    if (v68 >> 1 == 0x3455FFA1B1837FA3)
    {
      v25 = v69;
      if (v69 == "default subtree animation")
      {
        break;
      }

      v41 = "default subtree animation";
    }

    else
    {
      if (v68 >> 1 != 0x3C015B2DF8573273)
      {
        goto LABEL_50;
      }

      v25 = v69;
      if (v69 == "global scene animation")
      {
        break;
      }

      v41 = "global scene animation";
    }

    v25 = strcmp(v25, v41);
    if (!v25)
    {
      break;
    }

LABEL_50:
    if (v29)
    {
      if (v68)
      {
      }
    }

    v24 = (v24 + 24);
    v23 -= 24;
    if (!v23)
    {
      goto LABEL_54;
    }
  }

  if (v29)
  {
    if (v68)
    {
    }
  }
}

uint64_t re::AssetService::createMemoryAsset<re::TimelineAsset>(re::TimelineAsset *a1, uint64_t a2, uint64_t a3)
{
  v6 = re::TimelineAsset::assetType(a1);
  v7 = *(*a1 + 424);

  return v7(a1, a2, v6, 0, a3, 0);
}

uint64_t REAnimationLibraryComponentGetAnimationLibraryAsset(uint64_t a1)
{
  re::AssetHandle::AssetHandle(v3, (a1 + 32));
  if (v3[1])
  {
    v1 = v3[0];
  }

  else
  {
    v1 = 0;
  }

  re::AssetHandle::~AssetHandle(v3);
  return v1;
}

uint64_t REAnimationLibraryComponentGetFirstTransformAnimation(uint64_t a1)
{
  v1 = a1;
  v2 = re::AssetHandle::blockUntilLoaded<re::AnimationLibraryAsset>((a1 + 32));
  if (!v2 || (v3 = v2, !*(v2 + 56)))
  {
    re::AssetHandle::AssetHandle(&v37, (v1 + 32));
    if (v37)
    {
      if (v38)
      {
        v4 = *(v38 + 24);
      }

      else
      {
        v4 = 0;
      }

      v5 = REAnimationLibraryDefinitionCreateFromAnimationLibraryAsset(v4, v37);
      v6 = AnimationLibraryDefinition::assetData(v5);
      if (v6)
      {
        v7 = *(v6 + 136);
        if (v7)
        {
          v8 = 0;
          v9 = 0;
          while (1)
          {
            v10 = AnimationLibraryDefinition::assetData(v5);
            if (*(v10 + 136) <= v9)
            {
              v11 = 0;
            }

            else
            {
              v11 = *(*(v10 + 152) + v8);
            }

            Type = REAssetGetType(v11);
            if (CFStringCompare(Type, @"Timeline", 0))
            {
              goto LABEL_44;
            }

            v13 = RETimelineDefinitionCreateFromTimeline(v11);
            v14 = v13;
            v15 = *(v13 + 48);
            if (!v15)
            {
              v15 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((v13 + 24)) + 8);
            }

            v16 = *(v15 + 8);
            if (v16 > 0x3D)
            {
              break;
            }

            if (v17 > 0x1A || ((1 << v17) & 0x4040400) == 0)
            {
              goto LABEL_29;
            }

            re::make::shared::object<re::Shareable<re::DynamicArray<re::NamedAnimationLibraryEntry>>>(&v36);
            v1 = v36;
            if (!*(v36 + 32))
            {
              re::DynamicArray<re::NamedAnimationLibraryEntry>::setCapacity((v36 + 24), 1uLL);
            }

            *&v33.var0 = 0;
            v33.var1 = &str_67;
            v35 = 0;
            v34 = 0;
            re::AssetAPIHelper::assetHandleCreate(v11, &v31);
            v19 = v34;
            v34 = v31;
            v31 = v19;
            v20 = v35;
            v35 = v32;
            v32 = v20;
            re::AssetHandle::~AssetHandle(&v31);
            if (*(v14 + 88) == 1)
            {
              v22 = v14 + 96;
            }

            else
            {
              v23 = *(v14 + 48);
              if (!v23)
              {
                v21 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((v14 + 24));
                if (v21)
                {
                  v23 = *(v21 + 1);
                }

                else
                {
                  v23 = 0;
                }
              }

              v22 = v23 + 24;
            }

            v24 = *(v22 + 8);
            *&v31.var0 = 0;
            v31.var1 = &str_67;
            v26 = v31;
            *&v31.var0 = 0;
            v31.var1 = &str_67;
            var0 = v33.var0;
            v33 = v26;
            if (var0)
            {
              if (*&v31.var0)
              {
                if (*&v31.var0)
                {
                }
              }
            }

            re::DynamicArray<re::NamedAnimationLibraryEntry>::add((v1 + 24), &v33);

            re::AssetHandle::~AssetHandle(&v34);
            if (*&v33.var0)
            {
              if (*&v33.var0)
              {
              }
            }

LABEL_42:
            if (v17 <= 0x1A && ((1 << v17) & 0x4040400) != 0)
            {
              re::AssetHandle::~AssetHandle(&v37);
              return v1;
            }

LABEL_44:
            ++v9;
            v8 += 24;
            if (v7 == v9)
            {
              goto LABEL_45;
            }
          }

          v17 = 0;
LABEL_29:

          goto LABEL_42;
        }
      }

LABEL_45:
    }

    re::AssetHandle::~AssetHandle(&v37);
    return 0;
  }

  re::make::shared::object<re::Shareable<re::DynamicArray<re::NamedAnimationLibraryEntry>>>(&v33);
  v1 = *&v33.var0;
  if (!*(*&v33.var0 + 32))
  {
    re::DynamicArray<re::NamedAnimationLibraryEntry>::setCapacity((*&v33.var0 + 24), 1uLL);
  }

  re::DynamicArray<re::NamedAnimationLibraryEntry>::add((v1 + 24), *(v3 + 72));
  return v1;
}

uint64_t REAnimationLibraryComponentCreateQueryTransformAnimationWithName(uint64_t a1, const char *a2)
{
  v4 = re::AssetHandle::blockUntilLoaded<re::AnimationLibraryAsset>((a1 + 32));
  if (a2)
  {
    v5 = *a2;
    if (*a2)
    {
      v6 = a2[1];
      if (v6)
      {
        v7 = (a2 + 2);
        do
        {
          v5 = 31 * v5 + v6;
          v8 = *v7++;
          v6 = v8;
        }

        while (v8);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v9 = 2 * v5;
  if (v4 && (v10 = *(v4 + 56)) != 0)
  {
    v11 = *(v4 + 72);
    v12 = 40 * v10;
    while (1)
    {
      if ((*&v11->var0 ^ v9) <= 1)
      {
        var1 = v11->var1;
        if (var1 == a2 || !strcmp(var1, a2))
        {
          break;
        }
      }

      v11 = (v11 + 40);
      v12 -= 40;
      if (!v12)
      {
        return 0;
      }
    }

    re::make::shared::object<re::Shareable<re::DynamicArray<re::NamedAnimationLibraryEntry>>>(&v45);
    v15 = *&v45.var0;
    if (!*(*&v45.var0 + 32))
    {
      re::DynamicArray<re::NamedAnimationLibraryEntry>::setCapacity((*&v45.var0 + 24), 1uLL);
    }

    re::DynamicArray<re::NamedAnimationLibraryEntry>::add((v15 + 24), v11);
  }

  else
  {
    re::AssetHandle::AssetHandle(&v49, (a1 + 32));
    if (v49)
    {
      if (v50)
      {
        v14 = *(v50 + 24);
      }

      else
      {
        v14 = 0;
      }

      v16 = REAnimationLibraryDefinitionCreateFromAnimationLibraryAsset(v14, v49);
      v17 = AnimationLibraryDefinition::assetData(v16);
      if (v17)
      {
        v18 = *(v17 + 136);
        if (v18)
        {
          v19 = 0;
          for (i = 0; v18 != i; ++i)
          {
            v21 = AnimationLibraryDefinition::assetData(v16);
            if (*(v21 + 136) <= i)
            {
              v22 = 0;
            }

            else
            {
              v22 = *(*(v21 + 152) + v19);
            }

            Type = REAssetGetType(v22);
            if (CFStringCompare(Type, @"Timeline", 0) == kCFCompareEqualTo)
            {
              v24 = RETimelineDefinitionCreateFromTimeline(v22);
              v25 = v24;
              v26 = *(v24 + 48);
              if (!v26)
              {
                v26 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((v24 + 24)) + 8);
              }

              v27 = *(v26 + 8);
              if (v27 <= 0x3D)
              {
                v29 = v28 > 0x1A;
                v30 = (1 << v28) & 0x4040400;
                if (!v29 && v30 != 0)
                {
                  re::AssetAPIHelper::assetHandleCreate(v22, v48);
                  v32 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>(v48) + 16);
                  if ((*(v32 + 24) ^ v9) <= 1)
                  {
                    v33 = *(v32 + 32);
                    if (v33 == a2 || !strcmp(v33, a2))
                    {
                      re::make::shared::object<re::Shareable<re::DynamicArray<re::NamedAnimationLibraryEntry>>>(&v47);
                      v15 = v47;
                      if (!*(v47 + 32))
                      {
                        re::DynamicArray<re::NamedAnimationLibraryEntry>::setCapacity((v47 + 24), 1uLL);
                      }

                      *&v45.var0 = 0;
                      v45.var1 = &str_67;
                      memset(v46, 0, sizeof(v46));
                      v35 = re::AssetHandle::operator=(v46, v48);
                      v43 = 0;
                      v44 = &str_67;
                      v37 = v43;
                      v38 = v44;
                      v43 = 0;
                      v44 = &str_67;
                      var0 = v45.var0;
                      v40 = v45.var1;
                      *&v45.var0 = v37;
                      v45.var1 = v38;
                      if (var0)
                      {
                        if (v43)
                        {
                          if (v43)
                          {
                          }
                        }
                      }

                      re::DynamicArray<re::NamedAnimationLibraryEntry>::add((v15 + 24), &v45);

                      re::AssetHandle::~AssetHandle(v46);
                      if (*&v45.var0)
                      {
                        if (*&v45.var0)
                        {
                        }
                      }

                      re::AssetHandle::~AssetHandle(v48);
                      re::AssetHandle::~AssetHandle(&v49);
                      return v15;
                    }
                  }

                  re::AssetHandle::~AssetHandle(v48);
                }
              }
            }

            v19 += 24;
          }
        }
      }
    }

    re::AssetHandle::~AssetHandle(&v49);
    return 0;
  }

  return v15;
}

uint64_t REAnimationLibraryComponentCreateQueryAllTransformAnimations(uint64_t a1)
{
  v2 = re::AssetHandle::blockUntilLoaded<re::AnimationLibraryAsset>((a1 + 32));
  if (v2 && (v3 = v2, *(v2 + 56)))
  {
    re::make::shared::object<re::Shareable<re::DynamicArray<re::NamedAnimationLibraryEntry>>>(v47);
    v4 = v47[0];
    re::DynamicArray<re::NamedAnimationLibraryEntry>::operator=(v47[0] + 24, (v3 + 40));
  }

  else
  {
    re::AssetHandle::AssetHandle(&v48, (a1 + 32));
    if (!v48)
    {
      goto LABEL_48;
    }

    if (v49)
    {
      v5 = *(v49 + 24);
    }

    else
    {
      v5 = 0;
    }

    v4 = REAnimationLibraryDefinitionCreateFromAnimationLibraryAsset(v5, v48);
    v6 = AnimationLibraryDefinition::assetData(v4);
    if (v6)
    {
      v7 = *(v6 + 136);
    }

    else
    {
      v7 = 0;
    }

    re::StackScratchAllocator::StackScratchAllocator(v47);
    v46 = 0;
    v43[1] = 0;
    v44 = 0;
    v45 = 0;
    v43[0] = v47;
    re::DynamicArray<re::NamedAnimationLibraryEntry>::setCapacity(v43, 0);
    ++v45;
    if (v7)
    {
      v8 = 0;
      for (i = 0; i != v7; ++i)
      {
        v10 = AnimationLibraryDefinition::assetData(v4);
        if (*(v10 + 136) <= i)
        {
          v11 = 0;
        }

        else
        {
          v11 = *(*(v10 + 152) + v8);
        }

        Type = REAssetGetType(v11);
        if (CFStringCompare(Type, @"Timeline", 0) == kCFCompareEqualTo)
        {
          v13 = RETimelineDefinitionCreateFromTimeline(v11);
          v14 = v13;
          v15 = *(v13 + 48);
          if (!v15)
          {
            v15 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((v13 + 24)) + 8);
          }

          v16 = *(v15 + 8);
          {
          }

          else
          {
            *&v40.var0 = 0;
            v40.var1 = &str_67;
            v42 = 0;
            v41 = 0;
            re::AssetAPIHelper::assetHandleCreate(v11, &v38);
            v21 = v41;
            v41 = v38;
            v38 = v21;
            v22 = v42;
            v42 = v39;
            v39 = v22;
            re::AssetHandle::~AssetHandle(&v38);
            if (*(v14 + 88) == 1)
            {
              v24 = v14 + 96;
            }

            else
            {
              v25 = *(v14 + 48);
              if (!v25)
              {
                v23 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((v14 + 24));
                if (v23)
                {
                  v25 = *(v23 + 1);
                }

                else
                {
                  v25 = 0;
                }
              }

              v24 = v25 + 24;
            }

            v26 = *(v24 + 8);
            *&v38.var0 = 0;
            v38.var1 = &str_67;
            v28 = v38;
            *&v38.var0 = 0;
            v38.var1 = &str_67;
            var0 = v40.var0;
            var1 = v40.var1;
            v40 = v28;
            if (var0)
            {
              if (*&v38.var0)
              {
                if (*&v38.var0)
                {
                }
              }
            }

            re::DynamicArray<re::NamedAnimationLibraryEntry>::add(v43, &v40);

            re::AssetHandle::~AssetHandle(&v41);
            if (*&v40.var0)
            {
              if (*&v40.var0)
              {
              }
            }
          }
        }

        v8 += 24;
      }
    }

    v33 = v44;
    if (v44)
    {
      re::make::shared::object<re::Shareable<re::DynamicArray<re::NamedAnimationLibraryEntry>>>(&v40);
      v4 = *&v40.var0;
      v34 = v44;
      if (*(*&v40.var0 + 32) < v44)
      {
        re::DynamicArray<re::NamedAnimationLibraryEntry>::setCapacity((*&v40.var0 + 24), v44);
        v34 = v44;
      }

      if (v34)
      {
        v35 = 0;
        v36 = 0;
        do
        {
          re::DynamicArray<re::NamedAnimationLibraryEntry>::add((v4 + 24), (v46 + v35));
          ++v36;
          v35 += 40;
        }

        while (v36 < v44);
      }
    }

    re::DynamicArray<re::NamedAnimationLibraryEntry>::deinit(v43);
    re::StackScratchAllocator::~StackScratchAllocator(v47);
    if (v33)
    {
      re::AssetHandle::~AssetHandle(&v48);
    }

    else
    {
LABEL_48:
      re::AssetHandle::~AssetHandle(&v48);
      return 0;
    }
  }

  return v4;
}

uint64_t re::DynamicArray<re::NamedAnimationLibraryEntry>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::NamedAnimationLibraryEntry>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::NamedAnimationLibraryEntry>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::NamedAnimationLibraryEntry>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::NamedAnimationLibraryEntry>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t REAnimationLibraryComponentGetTransformQueryResultCount(uint64_t result)
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

CFStringRef REAnimationLibraryComponentCopyTransformQueryResultAnimationName(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  if (*(a1 + 40) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v2 = *(*(a1 + 56) + 40 * a2 + 8);

  return CFStringCreateWithCString(0, v2, 0x8000100u);
}

uint64_t REAnimationLibraryComponentGetTransformQueryResultAnimationAsset(uint64_t result, unint64_t a2)
{
  if (result)
  {
    if (*(result + 40) <= a2)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    return *(*(result + 56) + 40 * a2 + 16);
  }

  return result;
}

uint64_t REAnimationLibraryComponentGetFirstSkeletalAnimation(uint64_t a1)
{
  re::ecs2::AnimationLibraryComponent::constructAnimationLibraryMeshMapping(a1);
  re::StackScratchAllocator::StackScratchAllocator(v13);
  v12 = 0;
  v9[1] = 0;
  v10 = 0;
  v11 = 0;
  v9[0] = v13;
  re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity(v9, 0);
  ++v11;
  v2 = re::AssetHandle::blockUntilLoaded<re::AnimationLibraryAsset>((a1 + 32));
  if (v2 && re::AnimationLibraryMeshMapping::getFirstSkeletalAnimation(a1 + 56, v2, v9))
  {
    re::make::shared::object<re::Shareable<re::DynamicArray<re::SkeletalAnimationQueryEntry>>>(&v8);
    v3 = v8;
    v4 = v10;
    if (*(v8 + 32) < v10)
    {
      re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity((v8 + 24), v10);
      v4 = v10;
    }

    if (v4)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        re::DynamicArray<re::SkeletalAnimationQueryEntry>::add((v3 + 24), (v12 + v5));
        ++v6;
        v5 += 40;
      }

      while (v6 < v10);
    }
  }

  else
  {
    v3 = 0;
  }

  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v9);
  re::StackScratchAllocator::~StackScratchAllocator(v13);
  return v3;
}

uint64_t REAnimationLibraryComponentCreateQuerySkeletalAnimationWithName(uint64_t a1, const char *a2)
{
  re::ecs2::AnimationLibraryComponent::constructAnimationLibraryMeshMapping(a1);
  re::StackScratchAllocator::StackScratchAllocator(v19);
  v18 = 0;
  v15[1] = 0;
  v16 = 0;
  v17 = 0;
  v15[0] = v19;
  re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity(v15, 0);
  ++v17;
  v4 = re::AssetHandle::blockUntilLoaded<re::AnimationLibraryAsset>((a1 + 32));
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = v4;
  v13 = 0;
  v14 = &str_67;
  NamedSkeletalAnimation = re::AnimationLibraryMeshMapping::getNamedSkeletalAnimation(a1 + 56, &v13, v5, v15);
  v7 = NamedSkeletalAnimation;
  if (v13)
  {
    if (v13)
    {
    }
  }

  if (v7)
  {
    re::make::shared::object<re::Shareable<re::DynamicArray<re::SkeletalAnimationQueryEntry>>>(&v13);
    v8 = v13;
    v9 = v16;
    if (*(v13 + 32) < v16)
    {
      re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity((v13 + 24), v16);
      v9 = v16;
    }

    if (v9)
    {
      v10 = 0;
      v11 = 0;
      do
      {
        re::DynamicArray<re::SkeletalAnimationQueryEntry>::add((v8 + 24), (v18 + v10));
        ++v11;
        v10 += 40;
      }

      while (v11 < v16);
    }
  }

  else
  {
LABEL_12:
    v8 = 0;
  }

  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v15);
  re::StackScratchAllocator::~StackScratchAllocator(v19);
  return v8;
}

uint64_t REAnimationLibraryComponentCreateQueryAllSkeletalAnimations(re::ecs2::AnimationLibraryComponent *a1)
{
  re::ecs2::AnimationLibraryComponent::constructAnimationLibraryMeshMapping(a1);
  re::StackScratchAllocator::StackScratchAllocator(v13);
  v12 = 0;
  v9[1] = 0;
  v10 = 0;
  v11 = 0;
  v9[0] = v13;
  re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity(v9, 0);
  ++v11;
  AllSkeletalAnimations = re::AnimationLibraryMeshMapping::getAllSkeletalAnimations(a1 + 56, v9);
  v3 = 0;
  if (AllSkeletalAnimations)
  {
    re::make::shared::object<re::Shareable<re::DynamicArray<re::SkeletalAnimationQueryEntry>>>(&v8);
    v3 = v8;
    v4 = v10;
    if (*(v8 + 32) < v10)
    {
      re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity((v8 + 24), v10);
      v4 = v10;
    }

    if (v4)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        re::DynamicArray<re::SkeletalAnimationQueryEntry>::add((v3 + 24), (v12 + v5));
        ++v6;
        v5 += 40;
      }

      while (v6 < v10);
    }
  }

  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v9);
  re::StackScratchAllocator::~StackScratchAllocator(v13);
  return v3;
}

uint64_t REAnimationLibraryComponentGetSkeletalQueryResultCount(uint64_t result)
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

uint64_t REAnimationLibraryComponentGetSkeletalQueryResultAnimationCount(uint64_t result, unint64_t a2)
{
  if (result)
  {
    if (*(result + 40) <= a2)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    return *(*(result + 56) + 40 * a2 + 16);
  }

  return result;
}

CFStringRef REAnimationLibraryComponentCopySkeletalQueryResultAnimationName(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = re::AssetHandle::blockUntilLoaded<re::AnimationLibraryAsset>((a1 + 32));
  if (!a2 || !v7)
  {
    return 0;
  }

  if (*(a2 + 40) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_11;
  }

  v8 = *(a2 + 56) + 40 * a3;
  if (*(v8 + 16) <= a4)
  {
LABEL_11:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_12:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v9 = *(*(v8 + 32) + 12 * a4);
  if (*(v7 + 16) <= v9)
  {
    goto LABEL_12;
  }

  v10 = *(*(v7 + 32) + 120 * v9 + 64);

  return CFStringCreateWithCString(0, v10, 0x8000100u);
}

CFStringRef REAnimationLibraryComponentCopySkeletalQueryResultSkeletonName(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = re::AssetHandle::blockUntilLoaded<re::AnimationLibraryAsset>((a1 + 32));
  if (!a2 || !v7)
  {
    return 0;
  }

  if (*(a2 + 40) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_11;
  }

  v8 = *(a2 + 56) + 40 * a3;
  if (*(v8 + 16) <= a4)
  {
LABEL_11:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_12:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v9 = *(*(v8 + 32) + 12 * a4);
  if (*(v7 + 16) <= v9)
  {
    goto LABEL_12;
  }

  v10 = *(*(v7 + 32) + 120 * v9 + 48);

  return CFStringCreateWithCString(0, v10, 0x8000100u);
}

uint64_t REAnimationLibraryComponentGetSkeletalQueryResultAnimationAsset(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = re::AssetHandle::blockUntilLoaded<re::AnimationLibraryAsset>((a1 + 32));
  v8 = 0;
  if (a2 && v7)
  {
    if (*(a2 + 40) <= a3)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    else
    {
      v9 = *(a2 + 56) + 40 * a3;
      if (*(v9 + 16) > a4)
      {
        v10 = *(*(v9 + 32) + 12 * a4);
        if (*(v7 + 16) > v10)
        {
          return *(*(v7 + 32) + 120 * v10 + 72);
        }

LABEL_10:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_10;
  }

  return v8;
}

uint64_t REAnimationLibraryComponentGetSkeletalQueryResultAnimationClipAsset(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = re::AssetHandle::blockUntilLoaded<re::AnimationLibraryAsset>((a1 + 32));
  v8 = 0;
  if (a2 && v7)
  {
    if (*(a2 + 40) <= a3)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    else
    {
      v9 = *(a2 + 56) + 40 * a3;
      if (*(v9 + 16) > a4)
      {
        v10 = *(*(v9 + 32) + 12 * a4);
        if (*(v7 + 16) > v10)
        {
          return *(*(v7 + 32) + 120 * v10 + 96);
        }

LABEL_10:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_10;
  }

  return v8;
}

uint64_t REAnimationLibraryComponentGetSkeletalQueryResultMeshInstanceIndex(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a1)
  {
    if (*(a1 + 40) <= a2)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    else
    {
      v3 = *(a1 + 56) + 40 * a2;
      if (*(v3 + 16) > a3)
      {
        return *(*(v3 + 32) + 12 * a3 + 4);
      }
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return 0xFFFFFFFFLL;
}

uint64_t REAnimationLibraryComponentGetSkeletalQueryResultSkeletonIndex(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a1)
  {
    if (*(a1 + 40) <= a2)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    else
    {
      v3 = *(a1 + 56) + 40 * a2;
      if (*(v3 + 16) > a3)
      {
        return *(*(v3 + 32) + 12 * a3 + 8);
      }
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return 0xFFFFFFFFLL;
}

uint64_t REAnimationLibraryComponentGetAnimationSceneByName(uint64_t a1, const char *a2)
{
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = (a2 + 2);
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v8 = 2 * v4;
  v9 = re::AssetHandle::blockUntilLoaded<re::AnimationLibraryAsset>((a1 + 32));
  if (v9 && (v10 = *(v9 + 96)) != 0)
  {
    v11 = *(v9 + 112) + 16;
    v12 = 40 * v10;
    while (1)
    {
      if ((*(v11 - 16) ^ v8) <= 1)
      {
        v13 = *(v11 - 8);
        if (v13 == a2 || !strcmp(v13, a2))
        {
          break;
        }
      }

      v11 += 40;
      v12 -= 40;
      if (!v12)
      {
        return 0;
      }
    }

    return *v11;
  }

  else
  {
    re::AssetHandle::AssetHandle(&v29, (a1 + 32));
    if (v29)
    {
      if (v30)
      {
        v14 = *(v30 + 24);
      }

      else
      {
        v14 = 0;
      }

      v16 = REAnimationLibraryDefinitionCreateFromAnimationLibraryAsset(v14, v29);
      v17 = AnimationLibraryDefinition::assetData(v16);
      if (v17)
      {
        v18 = *(v17 + 136);
        if (v18)
        {
          v19 = 0;
          for (i = 0; v18 != i; ++i)
          {
            v21 = AnimationLibraryDefinition::assetData(v16);
            if (*(v21 + 136) <= i)
            {
              v22 = 0;
            }

            else
            {
              v22 = *(*(v21 + 152) + v19);
            }

            Type = REAssetGetType(v22);
            if (CFStringCompare(Type, @"AnimationScene", 0) == kCFCompareEqualTo)
            {
              re::AssetAPIHelper::assetHandleCreate(v22, v28);
              v24 = re::AssetHandle::blockUntilLoaded<re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>>(v28);
              v25 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>(v24) + 16);
              if (v25)
              {
                if ((*(v25 + 24) ^ v8) <= 1)
                {
                  v26 = *(v25 + 32);
                  if (v26 == a2 || !strcmp(v26, a2))
                  {

                    v15 = v28[0];
                    re::AssetHandle::~AssetHandle(v28);
                    re::AssetHandle::~AssetHandle(&v29);
                    return v15;
                  }
                }
              }

              re::AssetHandle::~AssetHandle(v28);
            }

            v19 += 24;
          }
        }
      }
    }

    re::AssetHandle::~AssetHandle(&v29);
    return 0;
  }
}

uint64_t REAnimationLibraryComponentCreateQueryAllAnimationScenes(uint64_t a1)
{
  v2 = re::AssetHandle::blockUntilLoaded<re::AnimationLibraryAsset>((a1 + 32));
  if (v2 && (v3 = v2, *(v2 + 96)))
  {
    re::make::shared::object<re::Shareable<re::DynamicArray<re::NamedAnimationLibraryEntry>>>(&v25);
    v4 = v25;
    re::DynamicArray<re::NamedAnimationLibraryEntry>::operator=(v25 + 24, (v3 + 80));
  }

  else
  {
    re::AssetHandle::AssetHandle(&v30, (a1 + 32));
    if (v30)
    {
      if (v31)
      {
        v5 = *(v31 + 24);
      }

      else
      {
        v5 = 0;
      }

      v6 = REAnimationLibraryDefinitionCreateFromAnimationLibraryAsset(v5, v30);
      v7 = AnimationLibraryDefinition::assetData(v6);
      if (v7)
      {
        v8 = *(v7 + 136);
        v29 = 0;
        v26 = 0;
        v27 = 0;
        v25 = 0;
        v28 = 0;
        if (v8)
        {
          v9 = 0;
          for (i = 0; i != v8; ++i)
          {
            v11 = AnimationLibraryDefinition::assetData(v6);
            if (*(v11 + 136) <= i)
            {
              v12 = 0;
            }

            else
            {
              v12 = *(*(v11 + 152) + v9);
            }

            Type = REAssetGetType(v12);
            if (CFStringCompare(Type, @"AnimationScene", 0) == kCFCompareEqualTo)
            {
              *&v22.var0 = 0;
              v22.var1 = &str_67;
              v24 = 0;
              v23 = 0uLL;
              re::AssetAPIHelper::assetHandleCreate(v12, &v20);
              v14 = v23;
              v23 = v20;
              v20 = v14;
              v15 = v24;
              v24 = v21;
              v21 = v15;
              re::AssetHandle::~AssetHandle(&v20);
              re::AssetAPIHelper::assetHandleCreate(v12, &v20);
              v16 = re::AssetHandle::blockUntilLoaded<re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>>(&v20);
              v17 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>(v16);
              re::StringID::operator=(&v22, (*(v17 + 16) + 24));
              re::DynamicArray<re::NamedAnimationLibraryEntry>::add(&v25, &v22);
              re::AssetHandle::~AssetHandle(&v20);
              re::AssetHandle::~AssetHandle(&v23);
              if (*&v22.var0)
              {
                if (*&v22.var0)
                {
                }
              }
            }

            v9 += 24;
          }
        }
      }

      else
      {
        v29 = 0;
        v26 = 0;
        v27 = 0;
        v25 = 0;
        v28 = 0;
      }

      re::make::shared::object<re::Shareable<re::DynamicArray<re::NamedAnimationLibraryEntry>>>(&v22);
      v4 = *&v22.var0;
      re::DynamicArray<re::NamedAnimationLibraryEntry>::operator=(*&v22.var0 + 24, &v25);
      re::DynamicArray<re::NamedAnimationLibraryEntry>::deinit(&v25);
    }

    else
    {
      v4 = 0;
    }

    re::AssetHandle::~AssetHandle(&v30);
  }

  return v4;
}

CFStringRef REAnimationLibraryComponentCopyAnimationSceneResultAnimationName(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 40) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v2 = *(*(a1 + 56) + 40 * a2 + 8);

  return CFStringCreateWithCString(0, v2, 0x8000100u);
}

uint64_t REAnimationLibraryComponentGetAnimationSceneResultAnimationAsset(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 40) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 56) + 40 * a2 + 16);
}

uint64_t std::__function::__func<anonymous namespace::validateAndRetainSceneAsset(re::AssetHandle const&,re::ecs2::Entity *,re::AssetService *)::$_0,std::allocator<anonymous namespace::validateAndRetainSceneAsset(re::AssetHandle const&,re::ecs2::Entity *,re::AssetService *)::$_0>,void ()(re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension> *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<anonymous namespace::validateAndRetainSceneAsset(re::AssetHandle const&,re::ecs2::Entity *,re::AssetService *)::$_1,std::allocator<anonymous namespace::validateAndRetainSceneAsset(re::AssetHandle const&,re::ecs2::Entity *,re::AssetService *)::$_1>,void ()(re::TimelineGroupAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re *re::internal::destroyPersistent<re::TimelineGroupAssetData>(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    re::DynamicArray<re::AssetHandle>::deinit(v1 + 72);
    *v1 = &unk_1F5CC3608;
    re::DynamicString::deinit((v1 + 40));
    re::StringID::destroyString((v1 + 24));
    v3 = *(*v2 + 40);

    return v3(v2, v1);
  }

  return result;
}

uint64_t re::Slice<re::StringID const*>::range(int a1, unint64_t a2, unint64_t a3)
{
  if (a2 < a3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. toExclusive = %zu, size = %zu", "toExclusive <= size()", "range", 249, 0, a2, v3, v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

double anonymous namespace::minimumClipDelay(_anonymous_namespace_ *this, const re::AssetHandle *a2)
{
  v3 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>(this);
  if (!v3)
  {
    return 1.79769313e308;
  }

  v5 = *(v3 + 8);
  v6 = *(v5 + 8);
  if (v6 > 5)
  {
    if (v6 <= 10 || v6 == 60)
    {
      goto LABEL_9;
    }

LABEL_22:
    if (a2)
    {
      return 1.79769313e308;
    }

    else
    {
      return 0.0;
    }
  }

  if (v6 > 2)
  {
LABEL_9:
    v9 = *(v5 + 152);
    goto LABEL_10;
  }

  if (v6 == 1)
  {
    v9 = *(v5 + 144);
LABEL_10:
    if (v9 <= v8)
    {
      return v9;
    }

    else
    {
      return v8;
    }
  }

  if (v6 != 2)
  {
    goto LABEL_22;
  }

  v11 = *(v5 + 88);
  if (!v11)
  {
    goto LABEL_22;
  }

  v12 = *(v5 + 104);
  v13 = 24 * v11;
  v7 = 1.79769313e308;
  do
  {
    if (v7 > v14)
    {
      v7 = v14;
    }

    v12 = (v12 + 24);
    v13 -= 24;
  }

  while (v13);
  return v7;
}

uint64_t std::__function::__value_func<void ()(re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension> *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::unique_ptr<re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>,std::function<void ()(re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>*)>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = a1[4];
  v6 = v2;
  if (v3)
  {
    (*(*v3 + 48))(v3, &v6);
LABEL_4:
    std::__function::__value_func<void ()(re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension> *)>::~__value_func[abi:nn200100]((a1 + 1));
    return a1;
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__value_func<void ()(re::TimelineGroupAssetData *)>::~__value_func[abi:nn200100](v5);
}

uint64_t std::__function::__value_func<void ()(re::TimelineGroupAssetData *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t *std::unique_ptr<re::TimelineGroupAssetData,std::function<void ()(re::TimelineGroupAssetData*)>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = a1[4];
    v5 = v2;
    if (!v3)
    {
      std::__throw_bad_function_call[abi:nn200100]();
      JUMPOUT(0x1E2F3A1CCLL);
    }

    (*(*v3 + 48))(v3, &v5);
  }

  std::__function::__value_func<void ()(re::TimelineGroupAssetData *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

uint64_t std::__function::__func<REAnimationLibraryComponentCreateDefaultAnimation::$_0,std::allocator<REAnimationLibraryComponentCreateDefaultAnimation::$_0>,void ()(re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension> *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<REAnimationLibraryComponentCreateDefaultAnimation::$_1,std::allocator<REAnimationLibraryComponentCreateDefaultAnimation::$_1>,void ()(re::TimelineGroupAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void re::make::shared::object<re::Shareable<re::DynamicArray<re::NamedAnimationLibraryEntry>>>(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 64, 8);
  ArcSharedObject::ArcSharedObject(v3, 0);
  *(v3 + 24) = 0;
  *v3 = &unk_1F5D2DAD0;
  *(v3 + 56) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *a1 = v3;
}

void *re::Shareable<re::DynamicArray<re::NamedAnimationLibraryEntry>>::~Shareable(void *a1)
{
  *a1 = &unk_1F5D2DAD0;
  re::DynamicArray<re::NamedAnimationLibraryEntry>::deinit((a1 + 3));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::Shareable<re::DynamicArray<re::NamedAnimationLibraryEntry>>::~Shareable(void *a1)
{
  *a1 = &unk_1F5D2DAD0;
  re::DynamicArray<re::NamedAnimationLibraryEntry>::deinit((a1 + 3));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::DynamicArray<re::NamedAnimationLibraryEntry>::copy(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= *(a1 + 16))
  {
    re::DynamicArray<re::NamedAnimationLibraryEntry>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<re::NamedAnimationLibraryEntry *,re::NamedAnimationLibraryEntry *,re::NamedAnimationLibraryEntry *>(&v14, *(a2 + 32), (*(a2 + 32) + 40 * *(a1 + 16)), *(a1 + 32));
    v8 = *(a1 + 16);
    if (v8 != v4)
    {
      v9 = 5 * v8;
      v10 = (*(a2 + 32) + 8 * v9);
      v11 = *(a1 + 32) + 8 * v9;
      v12 = 40 * v4 - 8 * v9;
      do
      {
        re::StringID::StringID(v11, v10);
        re::AssetHandle::AssetHandle((v11 + 16), &v10[1]);
        v10 = (v10 + 40);
        v11 += 40;
        v12 -= 40;
      }

      while (v12);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::NamedAnimationLibraryEntry *,re::NamedAnimationLibraryEntry *,re::NamedAnimationLibraryEntry *>(&v13, *(a2 + 32), (*(a2 + 32) + 40 * v4), *(a1 + 32));
    v5 = *(a1 + 16);
    if (v4 != v5)
    {
      v6 = *(a1 + 32) + 40 * v4;
      v7 = 40 * v5 - 40 * v4;
      do
      {
        re::AssetHandle::~AssetHandle((v6 + 16));
        re::StringID::destroyString(v6);
        v6 += 40;
        v7 -= 40;
      }

      while (v7);
    }
  }

  *(a1 + 16) = v4;
}

uint64_t *std::__copy_impl::operator()[abi:nn200100]<re::NamedAnimationLibraryEntry *,re::NamedAnimationLibraryEntry *,re::NamedAnimationLibraryEntry *>(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      re::StringID::operator=(a4, v5);
      re::AssetHandle::operator=((a4 + 2), v5 + 2);
      v5 += 5;
      a4 += 5;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void re::make::shared::object<re::Shareable<re::DynamicArray<re::SkeletalAnimationQueryEntry>>>(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 64, 8);
  ArcSharedObject::ArcSharedObject(v3, 0);
  *(v3 + 24) = 0;
  *v3 = &unk_1F5D2DB18;
  *(v3 + 56) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *a1 = v3;
}

void *re::Shareable<re::DynamicArray<re::SkeletalAnimationQueryEntry>>::~Shareable(void *a1)
{
  *a1 = &unk_1F5D2DB18;
  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit((a1 + 3));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::Shareable<re::DynamicArray<re::SkeletalAnimationQueryEntry>>::~Shareable(void *a1)
{
  *a1 = &unk_1F5D2DB18;
  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit((a1 + 3));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

float REPhysicsForceEffectSimplexNoiseDerivative4(_OWORD *a1, __n128 a2, float a3)
{
  v92 = a2.n128_u64[0];
  v4 = a2.n128_f32[2];
  v6 = __sincosf_stret(a3);
  v7 = (v4 + vaddv_f32(v92)) * 0.333333333;
  *&v7 = v7;
  v8 = v4 + *&v7;
  v9 = vadd_f32(v92, vdup_lane_s32(*&v7, 0));
  v10 = vadd_s32(vmvn_s8(vcgtz_f32(v9)), vcvt_s32_f32(v9));
  v11 = v8 - (v8 <= 0.0);
  v12 = v10.u8[4];
  v13 = vcvt_f32_s32(v10);
  v14 = v10.i8[0];
  v15 = (v10.i32[0] + v11 + v10.i32[1]) * 0.166666667;
  *&v15 = v15;
  v16 = v11 - *&v15;
  v17 = vsub_f32(v92, vsub_f32(v13, vdup_lane_s32(*&v15, 0)));
  v18 = v4 - v16;
  if (v17.f32[0] >= v17.f32[1])
  {
    if (v17.f32[1] >= v18)
    {
      v22 = 0;
      v23 = 0;
      v19 = 0;
      v21 = 0x100000001;
      v20 = 1;
    }

    else
    {
      v19 = 0;
      v23 = v17.f32[0] < v18;
      v20 = v17.f32[0] >= v18;
      v21 = 1;
      v22 = 1;
    }
  }

  else if (v17.f32[1] >= v18)
  {
    v23 = 0;
    v20 = 0;
    v22 = v17.f32[0] < v18;
    v21.i32[1] = 1;
    v21.i32[0] = v17.f32[0] >= v18;
    v19 = 1;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v21 = 0x100000000;
    v22 = 1;
    v23 = 1;
  }

  v24 = (v18 - v23) + 0.166666667;
  __asm { FMOV            V4.2S, #-1.0 }

  v30 = vadd_f32(v17, _D4);
  _D4 = vcvt_f32_f64(vaddq_f64(vcvtq_f64_f32(vsub_f32(v17, vcvt_f32_u32(__PAIR64__(v19, v20)))), vdupq_n_s64(0x3FC55555560C95D4uLL)));
  v32 = vaddq_f64(vcvtq_f64_f32(vsub_f32(v17, vcvt_f32_u32(v21))), vdupq_n_s64(0x3FD55555560C95D4uLL));
  v33 = vcvtq_f64_f32(v30);
  v34 = vdupq_n_s64(0x3FE000000089705FuLL);
  v35 = ((0.6 - (v17.f32[0] * v17.f32[0])) - (v17.f32[1] * v17.f32[1])) - (v18 * v18);
  v36 = 0;
  v37 = 0.0;
  v38 = 0.0;
  v39 = 0.0;
  v40 = 0.0;
  v41 = 0.0;
  v42 = 0.0;
  v43 = 0;
  if (v35 >= 0.0)
  {
    v44 = (&grad3u + 12 * (perm[perm[perm[v11] + v12] + v14] & 0xF));
    v45 = (&grad3v + 12 * (perm[perm[perm[v11] + v12] + v14] & 0xF));
    v43 = vmla_n_f32(vmul_n_f32(*v45, v6.__sinval), *v44, v6.__cosval);
    v38 = (v6.__sinval * v45[1].f32[0]) + (v6.__cosval * v44[1].f32[0]);
    v40 = v35 * v35;
    v41 = v40 * v40;
    v42 = (v40 * v40) * ((COERCE_FLOAT(vmul_f32(v17, v43).i32[1]) + (v43.f32[0] * v17.f32[0])) + (v38 * v18));
    v39 = ((0.6 - (v17.f32[0] * v17.f32[0])) - (v17.f32[1] * v17.f32[1])) - (v18 * v18);
  }

  v91 = v39;
  v93 = v42;
  v46 = vaddq_f64(v33, v34);
  v47 = (v18 - v22) + 0.333333334;
  _D20 = vcvt_f32_f64(v32);
  _S21 = _D4.i32[1];
  __asm { FMLS            S6, S21, V4.S[1] }

  v51 = _S6 - (v24 * v24);
  v52 = 0.0;
  v53 = 0.0;
  v54 = 0.0;
  v55 = 0.0;
  if (v51 >= 0.0)
  {
    v56 = 3 * (perm[v20 + v14 + perm[v19 + v12 + perm[v23 + v11]]] & 0xF);
    v57 = (&grad3u + 4 * v56);
    v58 = (&grad3v + 4 * v56);
    v36 = vmla_n_f32(vmul_n_f32(*v58, v6.__sinval), *v57, v6.__cosval);
    v37 = (v6.__sinval * v58[1].f32[0]) + (v6.__cosval * v57[1].f32[0]);
    v53 = v51 * v51;
    v54 = v53 * v53;
    v55 = (v53 * v53) * ((COERCE_FLOAT(vmul_f32(v36, _D4).i32[1]) + (v36.f32[0] * _D4.f32[0])) + (v37 * v24));
    v52 = _S6 - (v24 * v24);
  }

  _D28 = vcvt_f32_f64(v46);
  v60 = (v18 + -1.0) + 0.500000001;
  _S21 = _D20.i32[1];
  __asm { FMLS            S6, S21, V20.S[1] }

  v63 = _S6 - (v47 * v47);
  v64 = 0;
  v65 = 0.0;
  v66 = 0.0;
  v67 = 0.0;
  v68 = 0.0;
  v69 = 0.0;
  v70 = 0.0;
  v71 = 0;
  if (v63 >= 0.0)
  {
    v72 = 3 * (perm[v21.i32[0] + v14 + perm[v21.i32[1] + v12 + perm[v22 + v11]]] & 0xF);
    v73 = (&grad3u + 4 * v72);
    v74 = (&grad3v + 4 * v72);
    v71 = vmla_n_f32(vmul_n_f32(*v74, v6.__sinval), *v73, v6.__cosval);
    v66 = (v6.__sinval * v74[1].f32[0]) + (v6.__cosval * v73[1].f32[0]);
    v68 = v63 * v63;
    v69 = v68 * v68;
    v70 = (v68 * v68) * ((COERCE_FLOAT(vmul_f32(v71, _D20).i32[1]) + (v71.f32[0] * _D20.f32[0])) + (v66 * v47));
    v67 = _S6 - (v47 * v47);
  }

  _S23 = _D28.i32[1];
  __asm { FMLS            S6, S23, V28.S[1] }

  v77 = _S6 - (v60 * v60);
  v78 = 0.0;
  v79 = 0.0;
  v80 = 0.0;
  if (v77 >= 0.0)
  {
    v81 = 3 * (perm[v14 + 1 + perm[v12 + 1 + perm[v11 + 1]]] & 0xF);
    v82 = (&grad3u + 12 * (perm[v14 + 1 + perm[v12 + 1 + perm[v11 + 1]]] & 0xF));
    v83 = (&grad3v + 4 * v81);
    v64 = vmla_n_f32(vmul_n_f32(*v83, v6.__sinval), *v82, v6.__cosval);
    v65 = (v6.__sinval * v83[1].f32[0]) + (v6.__cosval * v82[1].f32[0]);
    v78 = (v77 * v77) * (v77 * v77);
    v79 = v78 * ((COERCE_FLOAT(vmul_f32(v64, _D28).i32[1]) + (v64.f32[0] * _D28.f32[0])) + (v65 * v60));
    v80 = v77 * (v77 * v77);
  }

  if (a1)
  {
    v84 = (((v37 * v54) + (v41 * v38)) + (v69 * v66)) + (v78 * v65);
    *&v5 = ((COERCE_FLOAT(vmul_f32(v64, _D28).i32[1]) + (v64.f32[0] * _D28.f32[0])) + (v65 * v60)) * v80;
    v85 = ((COERCE_FLOAT(vmul_f32(v71, _D20).i32[1]) + (v71.f32[0] * _D20.f32[0])) + (v66 * v47)) * (v67 * v68);
    v86 = ((COERCE_FLOAT(vmul_f32(v36, _D4).i32[1]) + (v36.f32[0] * _D4.f32[0])) + (v37 * v24)) * (v52 * v53);
    v87 = ((COERCE_FLOAT(vmul_f32(v17, v43).i32[1]) + (v43.f32[0] * v17.f32[0])) + (v38 * v18)) * (v91 * v40);
    v88 = (((v18 * v87) + (v86 * v24)) + (v85 * v47)) + (*&v5 * v60);
    *&v5 = vadd_f32(vmla_n_f32(vmla_n_f32(vmla_n_f32(vmul_n_f32(v36, v54), v43, v41), v71, v69), v64, v78), vmul_f32(vmla_n_f32(vmla_n_f32(vmla_n_f32(vmul_n_f32(v17, v87), _D4, v86), _D20, v85), _D28, *&v5), 0xC1000000C1000000));
    __asm { FMOV            V2.2S, #28.0 }

    *&v5 = vmul_f32(*&v5, _D2);
    *(&v5 + 2) = (v84 + (v88 * -8.0)) * 28.0;
    *a1 = v5;
  }

  return (((v93 + v55) + v70) + v79) * 28.0;
}

void *REMeshOffsetsComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::MeshOffsetsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

uint64_t REMeshOffsetsComponentSetAssignedMeshDeformationEx(uint64_t a1, uint64_t a2)
{
  re::AssetAPIHelper::assetHandleCreate(a2, &v6);
  v3 = *(a1 + 72);
  *(a1 + 72) = v6;
  v6 = v3;
  v4 = *(a1 + 88);
  *(a1 + 88) = v7;
  v7 = v4;
  re::AssetHandle::~AssetHandle(&v6);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

void REMeshOffsetsComponentSetOffsetsCounts(re::ecs2::Component *this, unint64_t a2, uint64_t a3)
{
  v6 = *(this + 6);
  v7 = v6 != a2;
  if (v6 != a2)
  {
    re::DynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::resize(this + 4, a2);
  }

  if (a2)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      if (*(this + 6) <= v9)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v10 = *(this + 8) + v8;
      v11 = *(a3 + 4 * v9);
      if (*(v10 + 16) != v11)
      {
        re::DynamicArray<float>::resize(v10, v11);
        v7 = 1;
      }

      ++v9;
      v8 += 192;
    }

    while (a2 != v9);
  }

  if (v7)
  {

    re::ecs2::Component::enqueueMarkDirty(this);
  }
}

uint64_t REMeshOffsetsComponentGetOffsetsCountEx(re *a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(a1 + 6) > a2)
  {
    return *(*(a1 + 8) + 192 * a2 + 16);
  }

  v5 = *re::graphicsLogObjects(a1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    if (v10)
    {
      v7 = *&v11[7];
    }

    else
    {
      v7 = v11;
    }

    v8 = *(a1 + 6);
    *buf = 136315650;
    v13 = v7;
    v14 = 2048;
    v15 = a2;
    v16 = 2048;
    v17 = v8;
    _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, "[%s] Trying to set offsets count for mesh %zu, but only %zu offset meshes are present.", buf, 0x20u);

    if (v9)
    {
      if (v10)
      {
        (*(*v9 + 40))();
      }
    }
  }

  return 0;
}

uint64_t REMeshOffsetsComponentSetOffsetsEx(re *a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(a1 + 6) <= a2)
  {
    v9 = *re::graphicsLogObjects(a1);
    result = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      v10 = v9;
      v11 = (v14 & 1) != 0 ? *&v15[7] : v15;
      v12 = *(a1 + 6);
      *buf = 136315650;
      *&buf[4] = v11;
      *&buf[12] = 2048;
      *&buf[14] = a2;
      v17 = 2048;
      v18 = v12;
      _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "[%s] Trying to set offsets for mesh %zu, but only %zu offset meshes are present. Adjust the offset counts first.", buf, 0x20u);

      result = v13;
      if (v13)
      {
        if (v14)
        {
          return (*(*v13 + 40))();
        }
      }
    }
  }

  else
  {
    v6 = (*(a1 + 8) + 192 * a2);
    v7 = *(v6 + 2);
    if (v7 >= a4)
    {
      v7 = a4;
    }

    *buf = a3;
    *&buf[8] = v7;
    re::DynamicArray<float>::operator=(v6, buf);
    return re::ecs2::Component::enqueueMarkDirty(a1);
  }

  return result;
}

uint64_t REMeshOffsetsComponentSetPreTransform(re *this, unint64_t a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(this + 6) <= a2)
  {
    v10 = *re::graphicsLogObjects(this);
    result = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      v11 = v10;
      v12 = (v15 & 1) != 0 ? *&v16[7] : v16;
      v13 = *(this + 6);
      *buf = 136315650;
      v18 = v12;
      v19 = 2048;
      v20 = a2;
      v21 = 2048;
      v22 = v13;
      _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "[%s] Trying to set pre-transform for mesh %zu, but only %zu offset meshes are present. Adjust the offset counts first.", buf, 0x20u);

      result = v14;
      if (v14)
      {
        if (v15)
        {
          return (*(*v14 + 40))();
        }
      }
    }
  }

  else
  {
    v8 = (*(this + 8) + 192 * a2);
    v8[3] = a3;
    v8[4] = a4;
    v8[5] = a5;
    v8[6] = a6;

    return re::ecs2::Component::enqueueMarkDirty(this);
  }

  return result;
}

double REMeshOffsetsComponentGetPreTransform(re *a1, unint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(a1 + 6) <= a2)
  {
    v5 = *re::graphicsLogObjects(a1);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    *&v4 = 0;
    if (v6)
    {
      v7 = v5;
      if (v12)
      {
        v8 = *&v13[7];
      }

      else
      {
        v8 = v13;
      }

      v9 = *(a1 + 6);
      *buf = 136315650;
      v15 = v8;
      v16 = 2048;
      v17 = a2;
      v18 = 2048;
      v19 = v9;
      _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "[%s] Trying to get post-transform for mesh %zu, but only %zu offset meshes are present.", buf, 0x20u);

      if (v11 && (v12 & 1) != 0)
      {
        (*(*v11 + 40))();
      }

      *&v4 = 0;
    }
  }

  else
  {
    v4 = *(*(a1 + 8) + 192 * a2 + 48);
  }

  return *&v4;
}

uint64_t REMeshOffsetsComponentSetPostTransform(re *this, unint64_t a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(this + 6) <= a2)
  {
    v10 = *re::graphicsLogObjects(this);
    result = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      v11 = v10;
      v12 = (v15 & 1) != 0 ? *&v16[7] : v16;
      v13 = *(this + 6);
      *buf = 136315650;
      v18 = v12;
      v19 = 2048;
      v20 = a2;
      v21 = 2048;
      v22 = v13;
      _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "[%s] Trying to set pre-transform for mesh %zu, but only %zu offset meshes are present. Adjust the offset counts first.", buf, 0x20u);

      result = v14;
      if (v14)
      {
        if (v15)
        {
          return (*(*v14 + 40))();
        }
      }
    }
  }

  else
  {
    v8 = (*(this + 8) + 192 * a2);
    v8[7] = a3;
    v8[8] = a4;
    v8[9] = a5;
    v8[10] = a6;

    return re::ecs2::Component::enqueueMarkDirty(this);
  }

  return result;
}

double REMeshOffsetsComponentGetPostTransform(re *a1, unint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(a1 + 6) <= a2)
  {
    v5 = *re::graphicsLogObjects(a1);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    *&v4 = 0;
    if (v6)
    {
      v7 = v5;
      if (v12)
      {
        v8 = *&v13[7];
      }

      else
      {
        v8 = v13;
      }

      v9 = *(a1 + 6);
      *buf = 136315650;
      v15 = v8;
      v16 = 2048;
      v17 = a2;
      v18 = 2048;
      v19 = v9;
      _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "[%s] Trying to get post-transform for mesh %zu, but only %zu offset meshes are present.", buf, 0x20u);

      if (v11 && (v12 & 1) != 0)
      {
        (*(*v11 + 40))();
      }

      *&v4 = 0;
    }
  }

  else
  {
    v4 = *(*(a1 + 8) + 192 * a2 + 112);
  }

  return *&v4;
}

uint64_t REMeshOffsetsComponentSetBlendingModeEx(uint64_t this, unint64_t a2, int a3)
{
  v4 = this;
  v21 = *MEMORY[0x1E69E9840];
  if (*(this + 48) <= a2)
  {
    v8 = *re::graphicsLogObjects(this);
    this = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (this)
    {
      v9 = v8;
      v10 = (v13 & 1) != 0 ? *&v14[7] : v14;
      v11 = *(v4 + 48);
      *buf = 136315650;
      v16 = v10;
      v17 = 2048;
      v18 = a2;
      v19 = 2048;
      v20 = v11;
      _os_log_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEFAULT, "[%s] Trying to set blending mode to offsets for mesh %zu, but only %zu offset meshes are present. Adjust the offset counts first.", buf, 0x20u);

      this = v12;
      if (v12)
      {
        if (v13)
        {
          return (*(*v12 + 40))();
        }
      }
    }
  }

  else
  {
    v5 = *(this + 64) + 192 * a2;
    v7 = *(v5 + 176);
    v6 = (v5 + 176);
    if (v7 != a3)
    {
      *v6 = a3;

      return re::ecs2::Component::enqueueMarkDirty(this);
    }
  }

  return this;
}

uint64_t REMeshOffsetsComponentGetBlendingMode(re *a1, unint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(a1 + 6) > a2)
  {
    return *(*(a1 + 8) + 192 * a2 + 176);
  }

  v5 = *re::graphicsLogObjects(a1);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v6)
  {
    v7 = v5;
    if (v11)
    {
      v8 = *&v12[7];
    }

    else
    {
      v8 = v12;
    }

    v9 = *(a1 + 6);
    *buf = 136315650;
    v14 = v8;
    v15 = 2048;
    v16 = a2;
    v17 = 2048;
    v18 = v9;
    _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "[%s] Trying to get blending mode for mesh %zu, but only %zu offset meshes are present.", buf, 0x20u);

    if (v10)
    {
      if (v11)
      {
        (*(*v10 + 40))();
      }
    }

    return 0;
  }

  return result;
}

uint64_t REMeshOffsetsComponentSetAssignedMeshDeformation(uint64_t a1, uint64_t a2)
{
  re::AssetAPIHelper::assetHandleCreate(a2, &v6);
  v3 = *(a1 + 72);
  *(a1 + 72) = v6;
  v6 = v3;
  v4 = *(a1 + 88);
  *(a1 + 88) = v7;
  v7 = v4;
  re::AssetHandle::~AssetHandle(&v6);
  re::DynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::clear(a1 + 32);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMeshOffsetsComponentGetOffsetsCount(void *a1, unint64_t a2)
{
  if (!re::initializeAttributes<re::ecs2::MeshOffsetsAttributes,re::ecs2::MeshOffsetsComponent>((a1 + 4), a1))
  {
    return 0;
  }

  re::ecs2::Component::enqueueMarkDirty(a1);
  v4 = a1[6];
  if (!v4)
  {
    return 0;
  }

  if (v4 <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1[8] + 192 * a2 + 16);
}

uint64_t re::initializeAttributes<re::ecs2::MeshOffsetsAttributes,re::ecs2::MeshOffsetsComponent>(re::ecs2::MeshOffsetsAttributes *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(a1 + 2))
  {
    return 1;
  }

  v4 = a2[10];
  if (!v4)
  {
    return 0;
  }

  v5 = atomic_load((v4 + 896));
  if (v5 != 2)
  {
    return 0;
  }

  v6 = *(a2[2] + 192);
  if (!v6)
  {
    return 0;
  }

  result = re::AssetHandle::loadedAsset<re::MeshAsset>((v6 + 32));
  if (result)
  {
    v8 = result;
    v9 = re::AssetHandle::blockUntilLoaded<re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>>((a2 + 9));
    re::DynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::clear(a1);
    if (!*(v9 + 16))
    {
      return 1;
    }

    v10 = 0;
    do
    {
      re::MeshNameMap::meshInstancePartsForIdentifier(v8 + 640, (*(v9 + 32) + 40 * v10), &v15);
      if (v15)
      {
        for (i = 0; i != v15; ++i)
        {
          v14 = i;
          v12 = (*(*v17 + 16))(v17, &v14);
          v14 = i;
          v13 = (*(*v17 + 16))(v17, &v14);
          re::ecs2::MeshOffsetsAttributes::add(a1, v8, v12, WORD2(v13));
        }
      }

      re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(&v16);
      ++v10;
      result = 1;
    }

    while (v10 < *(v9 + 16));
  }

  return result;
}

__n128 REMeshOffsetsComponentSetOffsetsWithTransform(void *a1, unint64_t a2, uint64_t a3, unint64_t a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10, __n128 a11, __n128 a12)
{
  v29 = *MEMORY[0x1E69E9840];
  if (re::initializeAttributes<re::ecs2::MeshOffsetsAttributes,re::ecs2::MeshOffsetsComponent>((a1 + 4), a1))
  {
    re::ecs2::Component::enqueueMarkDirty(a1);
    v17 = a1[6];
    if (v17)
    {
      if (v17 <= a2)
      {
        memset(v28, 0, sizeof(v28));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v18 = (a1[8] + 192 * a2);
      v19 = v18[1].n128_u64[0];
      if (v19 >= a4)
      {
        v19 = a4;
      }

      *&v28[0] = a3;
      *(&v28[0] + 1) = v19;
      re::DynamicArray<float>::operator=(v18, v28);
      v18[3] = a5;
      v18[4] = a6;
      v18[5] = a7;
      v18[6] = a8;
      v18[7] = a9;
      v18[8] = a10;
      result = a12;
      v18[9] = a11;
      v18[10] = a12;
      v18[11].n128_u32[0] = 0;
    }
  }

  return result;
}

uint64_t REMeshOffsetsComponentSetBlendingMode(void *a1, unint64_t a2, int a3)
{
  result = re::initializeAttributes<re::ecs2::MeshOffsetsAttributes,re::ecs2::MeshOffsetsComponent>((a1 + 4), a1);
  if (result)
  {
    result = re::ecs2::Component::enqueueMarkDirty(a1);
    v7 = a1[6];
    if (v7)
    {
      if (v7 <= a2)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      *(a1[8] + 192 * a2 + 176) = a3;
    }
  }

  return result;
}

void *REAmbientLightComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::AmbientLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

uint64_t REAmbientLightComponentSetColor(uint64_t this, __n128 a2)
{
  *(this + 64) = a2;
  *(this + 80) = 0;
  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t REAmbientLightComponentSetColorGamut3F(uint64_t this, char a2, __n128 a3)
{
  *(this + 64) = a3;
  *(this + 80) = a2;
  return re::ecs2::Component::enqueueMarkDirty(this);
}

double REAmbientLightComponentGetColor(uint64_t a1)
{
  v1 = *(a1 + 72);
  v2 = *(a1 + 80);
  v4 = *(a1 + 64);
  v6 = v2;
  v5 = v1;
  return COERCE_DOUBLE(re::ColorGamut3F::as(&v4, 0, 1));
}

__n128 REAmbientLightComponentGetColorGamut3F(uint64_t a1, __n128 *a2, _BYTE *a3, __n128 a4)
{
  v4 = *(a1 + 80);
  a4.n128_u64[0] = *(a1 + 64);
  a4.n128_u32[2] = *(a1 + 72);
  *a2 = a4;
  *a3 = v4;
  result.n128_u64[0] = a4.n128_u64[0];
  result.n128_u32[2] = a4.n128_u32[2];
  return result;
}

void *REDirectionalLightComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::DirectionalLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
}

uint64_t REDirectionalLightComponentSetColor(uint64_t this, __n128 a2)
{
  *(this + 352) = a2;
  *(this + 368) = 0;
  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t REDirectionalLightComponentSetColorGamut3F(uint64_t this, char a2, __n128 a3)
{
  *(this + 352) = a3;
  *(this + 368) = a2;
  return re::ecs2::Component::enqueueMarkDirty(this);
}

double REDirectionalLightComponentGetColor(uint64_t a1)
{
  v1 = *(a1 + 360);
  v2 = *(a1 + 368);
  v4 = *(a1 + 352);
  v6 = v2;
  v5 = v1;
  return COERCE_DOUBLE(re::ColorGamut3F::as(&v4, 0, 1));
}

__n128 REDirectionalLightComponentGetColorGamut3F(uint64_t a1, __n128 *a2, _BYTE *a3, __n128 a4)
{
  v4 = *(a1 + 368);
  a4.n128_u64[0] = *(a1 + 352);
  a4.n128_u32[2] = *(a1 + 360);
  *a2 = a4;
  *a3 = v4;
  result.n128_u64[0] = a4.n128_u64[0];
  result.n128_u32[2] = a4.n128_u32[2];
  return result;
}

void *RESpotLightComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::SpotLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
}

uint64_t RESpotLightComponentSetColor(uint64_t this, __n128 a2)
{
  *(this + 288) = a2;
  *(this + 304) = 0;
  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t RESpotLightComponentSetColorGamut3F(uint64_t this, char a2, __n128 a3)
{
  *(this + 288) = a3;
  *(this + 304) = a2;
  return re::ecs2::Component::enqueueMarkDirty(this);
}

double RESpotLightComponentGetColor(uint64_t a1)
{
  v1 = *(a1 + 296);
  v2 = *(a1 + 304);
  v4 = *(a1 + 288);
  v6 = v2;
  v5 = v1;
  return COERCE_DOUBLE(re::ColorGamut3F::as(&v4, 0, 1));
}

__n128 RESpotLightComponentGetColorGamut3F(uint64_t a1, __n128 *a2, _BYTE *a3, __n128 a4)
{
  v4 = *(a1 + 304);
  a4.n128_u64[0] = *(a1 + 288);
  a4.n128_u32[2] = *(a1 + 296);
  *a2 = a4;
  *a3 = v4;
  result.n128_u64[0] = a4.n128_u64[0];
  result.n128_u32[2] = a4.n128_u32[2];
  return result;
}

uint64_t RESpotLightComponentSetAttenuationFalloffExponent(uint64_t this, float a2)
{
  v2 = *(this + 44);
  if (v2 != a2 && vabds_f32(v2, a2) >= (((fabsf(a2) + fabsf(v2)) + 1.0) * 0.00001))
  {
    if (a2 < 0.0)
    {
      a2 = 0.0;
    }

    *(this + 44) = a2;
    return re::ecs2::Component::enqueueMarkDirty(this);
  }

  return this;
}

void *REPointLightComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::PointLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
}

uint64_t REPointLightComponentSetColor(uint64_t this, __n128 a2)
{
  *(this + 272) = a2;
  *(this + 288) = 0;
  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t REPointLightComponentSetColorGamut3F(uint64_t this, char a2, __n128 a3)
{
  *(this + 272) = a3;
  *(this + 288) = a2;
  return re::ecs2::Component::enqueueMarkDirty(this);
}

double REPointLightComponentGetColor(uint64_t a1)
{
  v1 = *(a1 + 280);
  v2 = *(a1 + 288);
  v4 = *(a1 + 272);
  v6 = v2;
  v5 = v1;
  return COERCE_DOUBLE(re::ColorGamut3F::as(&v4, 0, 1));
}

__n128 REPointLightComponentGetColorGamut3F(uint64_t a1, __n128 *a2, _BYTE *a3, __n128 a4)
{
  v4 = *(a1 + 288);
  a4.n128_u64[0] = *(a1 + 272);
  a4.n128_u32[2] = *(a1 + 280);
  *a2 = a4;
  *a3 = v4;
  result.n128_u64[0] = a4.n128_u64[0];
  result.n128_u32[2] = a4.n128_u32[2];
  return result;
}

uint64_t REPointLightComponentSetAttenuationFalloffExponent(uint64_t this, float a2)
{
  v2 = *(this + 36);
  if (v2 != a2 && vabds_f32(v2, a2) >= (((fabsf(a2) + fabsf(v2)) + 1.0) * 0.00001))
  {
    if (a2 < 0.0)
    {
      a2 = 0.0;
    }

    *(this + 36) = a2;
    return re::ecs2::Component::enqueueMarkDirty(this);
  }

  return this;
}

void *RERectAreaLightComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::RectAreaLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

uint64_t RERectAreaLightComponentSetColor(uint64_t this, __n128 a2)
{
  *(this + 192) = a2;
  *(this + 208) = 0;
  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t RERectAreaLightComponentSetColorGamut3F(uint64_t this, char a2, __n128 a3)
{
  *(this + 192) = a3;
  *(this + 208) = a2;
  return re::ecs2::Component::enqueueMarkDirty(this);
}

double RERectAreaLightComponentGetColor(uint64_t a1)
{
  v1 = *(a1 + 200);
  v2 = *(a1 + 208);
  v4 = *(a1 + 192);
  v6 = v2;
  v5 = v1;
  return COERCE_DOUBLE(re::ColorGamut3F::as(&v4, 0, 1));
}

__n128 RERectAreaLightComponentGetColorGamut3F(uint64_t a1, __n128 *a2, _BYTE *a3, __n128 a4)
{
  v4 = *(a1 + 208);
  a4.n128_u64[0] = *(a1 + 192);
  a4.n128_u32[2] = *(a1 + 200);
  *a2 = a4;
  *a3 = v4;
  result.n128_u64[0] = a4.n128_u64[0];
  result.n128_u32[2] = a4.n128_u32[2];
  return result;
}

void *REFrustumLightComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::FrustumLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

uint64_t REFrustumLightComponentSetColor(uint64_t this, __n128 a2)
{
  *(this + 304) = a2;
  *(this + 320) = 0;
  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t REFrustumLightComponentSetColorGamut3F(uint64_t this, char a2, __n128 a3)
{
  *(this + 304) = a3;
  *(this + 320) = a2;
  return re::ecs2::Component::enqueueMarkDirty(this);
}

double REFrustumLightComponentGetColor(uint64_t a1)
{
  v1 = *(a1 + 312);
  v2 = *(a1 + 320);
  v4 = *(a1 + 304);
  v6 = v2;
  v5 = v1;
  return COERCE_DOUBLE(re::ColorGamut3F::as(&v4, 0, 1));
}

__n128 REFrustumLightComponentGetColorGamut3F(uint64_t a1, __n128 *a2, _BYTE *a3, __n128 a4)
{
  v4 = *(a1 + 320);
  a4.n128_u64[0] = *(a1 + 304);
  a4.n128_u32[2] = *(a1 + 312);
  *a2 = a4;
  *a3 = v4;
  result.n128_u64[0] = a4.n128_u64[0];
  result.n128_u32[2] = a4.n128_u32[2];
  return result;
}

void *REFilterMapComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::FilterMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

void REFilterMapComponentSetMaterial(uint64_t a1, uint64_t a2)
{
  re::AssetAPIHelper::assetHandleCreate(a2, &v5);
  v3 = *(a1 + 32);
  *(a1 + 32) = v5;
  v5 = v3;
  v4 = *(a1 + 48);
  *(a1 + 48) = v6;
  v6 = v4;
  re::AssetHandle::~AssetHandle(&v5);
}

void *REShadowMapComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::ShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

void *REPointLightShadowMapComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::PointLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
}

uint64_t REPointLightShadowMapComponentGetZNear(uint64_t a1, _DWORD *a2)
{
  if (!a2 || *(a1 + 36) != 1)
  {
    return 0;
  }

  *a2 = *(a1 + 40);
  return 1;
}

uint64_t REPointLightShadowMapComponentSetZNear(uint64_t this, float *a2)
{
  if (!a2)
  {
    if (*(this + 36) != 1)
    {
      return this;
    }

    *(this + 36) = 0;
    return re::ecs2::Component::enqueueMarkDirty(this);
  }

  v2 = *a2;
  if (*(this + 36) != 1)
  {
    *(this + 36) = 1;
    goto LABEL_9;
  }

  if (*(this + 40) != v2)
  {
LABEL_9:
    *(this + 40) = v2;
    return re::ecs2::Component::enqueueMarkDirty(this);
  }

  return this;
}

uint64_t REPointLightShadowMapComponentGetZFar(uint64_t a1, _DWORD *a2)
{
  if (!a2 || *(a1 + 44) != 1)
  {
    return 0;
  }

  *a2 = *(a1 + 48);
  return 1;
}

uint64_t REPointLightShadowMapComponentSetZFar(uint64_t this, float *a2)
{
  if (!a2)
  {
    if (*(this + 44) != 1)
    {
      return this;
    }

    *(this + 44) = 0;
    return re::ecs2::Component::enqueueMarkDirty(this);
  }

  v2 = *a2;
  if (*(this + 44) != 1)
  {
    *(this + 44) = 1;
    goto LABEL_9;
  }

  if (*(this + 48) != v2)
  {
LABEL_9:
    *(this + 48) = v2;
    return re::ecs2::Component::enqueueMarkDirty(this);
  }

  return this;
}

uint64_t REPointLightShadowMapComponentGetCullModeEx(uint64_t a1, void *a2)
{
  result = (a2 != 0) & *(a1 + 32);
  if (result == 1)
  {
    *a2 = *(a1 + 33);
  }

  return result;
}

uint64_t REPointLightShadowMapComponentSetCullMode(uint64_t this, char *a2)
{
  if (a2)
  {
    v2 = *a2;
    if ((*(this + 32) & 1) == 0)
    {
      *(this + 32) = 1;
    }

    *(this + 33) = v2;
  }

  else if (*(this + 32) == 1)
  {
    *(this + 32) = 0;
  }

  return re::ecs2::Component::enqueueMarkDirty(this);
}

void *REDirectionalLightShadowMapComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::DirectionalLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
}

uint64_t REDirectionalLightShadowMapComponentSetDistance(re::ecs2::Component *this, float a2)
{
  if (this)
  {
    *(this + 52) = dyld_program_sdk_at_least() ^ 1;
  }

  *(this + 8) = a2;

  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t REDirectionalLightShadowMapComponentSetZNear(uint64_t this, float a2)
{
  if (*(this + 40) != a2)
  {
    *(this + 40) = a2;
    return re::ecs2::Component::enqueueMarkDirty(this);
  }

  return this;
}

uint64_t REDirectionalLightShadowMapComponentSetZFar(uint64_t this, float a2)
{
  if (*(this + 44) != a2)
  {
    *(this + 44) = a2;
    return re::ecs2::Component::enqueueMarkDirty(this);
  }

  return this;
}

uint64_t REDirectionalLightShadowMapComponentGetCullModeEx(uint64_t a1, void *a2)
{
  result = (a2 != 0) & *(a1 + 36);
  if (result == 1)
  {
    *a2 = *(a1 + 37);
  }

  return result;
}

uint64_t REDirectionalLightShadowMapComponentSetCullMode(uint64_t this, char *a2)
{
  if (a2)
  {
    v2 = *a2;
    if ((*(this + 36) & 1) == 0)
    {
      *(this + 36) = 1;
    }

    *(this + 37) = v2;
  }

  else if (*(this + 36) == 1)
  {
    *(this + 36) = 0;
  }

  return re::ecs2::Component::enqueueMarkDirty(this);
}

void *RESpotLightShadowMapComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::SpotLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
}

uint64_t RESpotLightShadowMapComponentGetZNear(uint64_t a1, _DWORD *a2)
{
  if (!a2 || *(a1 + 36) != 1)
  {
    return 0;
  }

  *a2 = *(a1 + 40);
  return 1;
}

uint64_t RESpotLightShadowMapComponentSetZNear(uint64_t this, float *a2)
{
  if (!a2)
  {
    if (*(this + 36) != 1)
    {
      return this;
    }

    *(this + 36) = 0;
    return re::ecs2::Component::enqueueMarkDirty(this);
  }

  v2 = *a2;
  if (*(this + 36) != 1)
  {
    *(this + 36) = 1;
    goto LABEL_9;
  }

  if (*(this + 40) != v2)
  {
LABEL_9:
    *(this + 40) = v2;
    return re::ecs2::Component::enqueueMarkDirty(this);
  }

  return this;
}

uint64_t RESpotLightShadowMapComponentGetZFar(uint64_t a1, _DWORD *a2)
{
  if (!a2 || *(a1 + 44) != 1)
  {
    return 0;
  }

  *a2 = *(a1 + 48);
  return 1;
}

uint64_t RESpotLightShadowMapComponentSetZFar(uint64_t this, float *a2)
{
  if (!a2)
  {
    if (*(this + 44) != 1)
    {
      return this;
    }

    *(this + 44) = 0;
    return re::ecs2::Component::enqueueMarkDirty(this);
  }

  v2 = *a2;
  if (*(this + 44) != 1)
  {
    *(this + 44) = 1;
    goto LABEL_9;
  }

  if (*(this + 48) != v2)
  {
LABEL_9:
    *(this + 48) = v2;
    return re::ecs2::Component::enqueueMarkDirty(this);
  }

  return this;
}

uint64_t RESpotLightShadowMapComponentGetCullModeEx(uint64_t a1, void *a2)
{
  result = (a2 != 0) & *(a1 + 32);
  if (result == 1)
  {
    *a2 = *(a1 + 33);
  }

  return result;
}

uint64_t RESpotLightShadowMapComponentSetCullMode(uint64_t this, char *a2)
{
  if (a2)
  {
    v2 = *a2;
    if ((*(this + 32) & 1) == 0)
    {
      *(this + 32) = 1;
    }

    *(this + 33) = v2;
  }

  else if (*(this + 32) == 1)
  {
    *(this + 32) = 0;
  }

  return re::ecs2::Component::enqueueMarkDirty(this);
}

void *RELightComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::LightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

uint64_t RELightComponentSetColor(uint64_t this, __n128 a2)
{
  *(this + 864) = a2;
  *(this + 880) = 0;
  return re::ecs2::Component::enqueueMarkDirty(this);
}

double RELightComponentGetColor(uint64_t a1)
{
  v1 = *(a1 + 872);
  v2 = *(a1 + 880);
  v4 = *(a1 + 864);
  v6 = v2;
  v5 = v1;
  return COERCE_DOUBLE(re::ColorGamut3F::as(&v4, 0, 1));
}

re::ecs2::Entity *REMakeEntityWithDirectionalLight(float32x4_t a1, float32x4_t a2, __n128 a3)
{
  v8[0] = a1;
  v8[1] = a2;
  v6 = a3;
  re::ecs2::LightComponentHelper::makeEntityWithDirectionalLight(v8, &v6, 0, &v7, 0.01, 100.0);
  v3 = v7;
  v4 = v7 + 8;
  if (v7)
  {
  }

  return v3;
}

void *REEntityFunctionConstantComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::EntityFunctionConstantComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

uint64_t REEntityFunctionConstantComponentAddOrReplace(uint64_t a1, char *__s, int a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = strlen(__s);
  if (v6)
  {
    MurmurHash3_x64_128(__s, v6, 0, &v12);
    v7 = (v13 + (v12 << 6) + (v12 >> 2) - 0x61C8864680B583E9) ^ v12;
  }

  else
  {
    v7 = 0;
  }

  v11 = v7;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) >> 27));
  result = re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1 + 32, &v11, v8 ^ (v8 >> 31), &v12);
  v10 = HIDWORD(v13);
  if (HIDWORD(v13) == 0x7FFFFFFF)
  {
    result = re::HashTable<unsigned long long,int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1 + 32, v13, v12);
    *(result + 8) = v11;
    *(result + 16) = a3;
    ++*(a1 + 72);
  }

  else
  {
    ++*(a1 + 72);
    *(*(a1 + 48) + 32 * v10 + 16) = a3;
  }

  return result;
}

BOOL REEntityFunctionConstantComponentRemove(uint64_t a1, char *__s)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v4 = strlen(__s);
  if (v4)
  {
    MurmurHash3_x64_128(__s, v4, 0, v7);
    v5 = (v7[1] + (v7[0] << 6) + (v7[0] >> 2) - 0x61C8864680B583E9) ^ v7[0];
  }

  else
  {
    v5 = 0;
  }

  v7[0] = v5;
  return re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(a1 + 32, v7);
}

uint64_t REEntityFunctionConstantComponentTryGet(uint64_t a1, char *__s)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v4 = strlen(__s);
  if (v4)
  {
    MurmurHash3_x64_128(__s, v4, 0, v8);
    v5 = (v8[1] + (v8[0] << 6) + (v8[0] >> 2) - 0x61C8864680B583E9) ^ v8[0];
  }

  else
  {
    v5 = 0;
  }

  v8[0] = v5;
  v6 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(a1 + 32, v8);
  if (v6)
  {
    return *v6;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

BOOL REEntityFunctionConstantComponentCanGet(uint64_t a1, char *__s, _DWORD *a3)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v6 = strlen(__s);
  if (v6)
  {
    MurmurHash3_x64_128(__s, v6, 0, v10);
    v7 = (v10[1] + (v10[0] << 6) + (v10[0] >> 2) - 0x61C8864680B583E9) ^ v10[0];
  }

  else
  {
    v7 = 0;
  }

  v10[0] = v7;
  v8 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(a1 + 32, v10);
  if (v8)
  {
    *a3 = *v8;
  }

  return v8 != 0;
}

uint64_t REAssetTypeBuilderCreate(re *a1)
{
  v1 = re::globalAllocators(a1);
  v2 = (*(*v1[2] + 32))(v1[2], 104, 8);
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0;
  *(v2 + 48) = 0u;
  ArcSharedObject::ArcSharedObject(v2, 0);
  *v2 = &unk_1F5D2DB60;
  ArcSharedObject::ArcSharedObject((v2 + 24), 0);
  *(v2 + 24) = &unk_1F5CB8348;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  re::DynamicString::setCapacity((v2 + 48), 0);
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  return v2;
}

re::DynamicString *REAssetTypeBuilderSetName(uint64_t a1, const char *a2)
{
  if (result)
  {
    v4 = result;
    v5[0] = a2;
    v5[1] = strlen(a2);
    return re::DynamicString::operator=((v4 + 48), v5);
  }

  return result;
}

uint64_t anonymous namespace::castAssetTypeBuilder(uint64_t result)
{
  if (*(result + 96))
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v1 = CoreRELog::log;
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      *v2 = 0;
      _os_log_error_impl(&dword_1E1C61000, v1, OS_LOG_TYPE_ERROR, "This REAssetTypeBuilder has already completed registering an asset type. It should be released.", v2, 2u);
    }

    return 0;
  }

  return result;
}

void REAssetTypeBuilderSetDataDecoderCallback(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v3)
  {
    re::CustomAssetRegistrationParameters::setAssetDecoder(v3 + 24, v4);
  }
}

void REAssetTypeBuilderSetDataEncoderCallback(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v3)
  {
    re::CustomAssetRegistrationParameters::setAssetEncoder(v3 + 24, v4);
  }
}

id REAssetTypeBuilderFinalize(uint64_t a1, re::AssetManager *a2, CFErrorRef *a3)
{
  if (v5)
  {
    v6 = v5;
    re::AssetManager::registerCustomAssetType(a2, (v5 + 24), v9);
    if (v9[0])
    {
      result = v10;
      *(v6 + 96) = v10;
      return result;
    }

    if (!a3 || (*a3 = v10, CFRetain(a3), (v9[0] & 1) == 0))
    {
    }
  }

  else if (a3)
  {
    v8 = CFErrorCreate(0, @"REAssetTypeRegistrationErrorDomain", 5, 0);
    result = 0;
    *a3 = v8;
    return result;
  }

  return 0;
}

void anonymous namespace::AssetTypeBuilder::~AssetTypeBuilder(_anonymous_namespace_::AssetTypeBuilder *this)
{
  *this = &unk_1F5D2DB60;
  re::CustomAssetRegistrationParameters::~CustomAssetRegistrationParameters((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5D2DB60;
  re::CustomAssetRegistrationParameters::~CustomAssetRegistrationParameters((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void *RERemoteEffectsComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::RemoteEffectsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

void **RERemoteEffectsComponentSetIsPlanar(re::ecs2::RemoteEffectsComponent *a1, char a2)
{
  LegacyStyle = re::ecs2::RemoteEffectsComponent::getLegacyStyle(a1);
  if (LegacyStyle)
  {
    *(LegacyStyle + 17) = a2;
  }

  return re::ecs2::Component::markDirty(a1);
}

uint64_t RERemoteEffectsComponentIsPlanar(re::ecs2::RemoteEffectsComponent *a1)
{
  LegacyStyle = re::ecs2::RemoteEffectsComponent::getLegacyStyle(a1);
  if (LegacyStyle)
  {
    v2 = *(LegacyStyle + 17);
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

void **RERemoteEffectsComponentSetIsHierarchical(re::ecs2::RemoteEffectsComponent *a1, char a2)
{
  LegacyStyle = re::ecs2::RemoteEffectsComponent::getLegacyStyle(a1);
  if (LegacyStyle)
  {
    *(LegacyStyle + 20) = a2;
  }

  return re::ecs2::Component::markDirty(a1);
}

BOOL RERemoteEffectsComponentIsHierarchical(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (!v1)
  {
    return 1;
  }

  v2 = (*(a1 + 72) + 112);
  v3 = (v1 << 7) - 128;
  while (*(v2 - 92) == 1)
  {
    v5 = *v2;
    v2 += 16;
    v4 = v5;
    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v6 = v3 == 0;
    }

    v3 -= 128;
    if (v6)
    {
      return v4 == 0;
    }
  }

  return 0;
}

void **RERemoteEffectsComponentSetColorTint(re::ecs2::RemoteEffectsComponent *a1, char a2, __n128 a3)
{
  LegacyStyle = re::ecs2::RemoteEffectsComponent::getLegacyStyle(a1);
  if (LegacyStyle)
  {
    *(LegacyStyle + 24) = a3.n128_u32[0] | (a3.n128_u32[1] << 32);
    *(LegacyStyle + 32) = a3.n128_u32[2];
    *(LegacyStyle + 36) = a2;
  }

  return re::ecs2::Component::markDirty(a1);
}

uint64_t RERemoteEffectsComponentGetColorTint(re::ecs2::RemoteEffectsComponent *a1, __int128 *a2, _BYTE *a3)
{
  result = re::ecs2::RemoteEffectsComponent::getLegacyStyle(a1);
  if (result)
  {
    v6 = *(result + 24);
  }

  else
  {
    v6 = xmmword_1E304F3C0;
  }

  *a2 = v6;
  *a3 = BYTE12(v6);
  return result;
}

void **RERemoteEffectsComponentSetStyle(re::ecs2::RemoteEffectsComponent *a1, int a2)
{
  v3 = a2 != 2;
  if (a2 == 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  if (a2 == 3)
  {
    v3 = 0;
    v4 = 3;
  }

  v5 = a2 != 1 && v3;
  if (a2 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4;
  }

  LegacyStyle = re::ecs2::RemoteEffectsComponent::getLegacyStyle(a1);
  if (LegacyStyle)
  {
    *(LegacyStyle + 12) = v6;
    *(LegacyStyle + 22) = v5;
  }

  return re::ecs2::Component::markDirty(a1);
}

uint64_t RERemoteEffectsComponentGetStyle(re::ecs2::RemoteEffectsComponent *a1)
{
  LegacyStyle = re::ecs2::RemoteEffectsComponent::getLegacyStyle(a1);
  if (LegacyStyle)
  {
    v2 = *(LegacyStyle + 12);
  }

  else
  {
    v2 = 0;
  }

  __asm { FMOV            V0.2S, #1.0 }

  memset(v10, 0, sizeof(v10));
  v11 = 0;
  if (v2 - 1 >= 3)
  {
    v8 = 0;
  }

  else
  {
    v8 = v2;
  }

  re::AssetHandle::~AssetHandle(v10);
  return v8;
}

void **RERemoteEffectsComponentSetIntensityMultiplier(re::ecs2::RemoteEffectsComponent *a1, float a2)
{
  LegacyStyle = re::ecs2::RemoteEffectsComponent::getLegacyStyle(a1);
  if (LegacyStyle)
  {
    *(LegacyStyle + 40) = a2;
  }

  return re::ecs2::Component::markDirty(a1);
}

float RERemoteEffectsComponentGetIntensityMultiplier(re::ecs2::RemoteEffectsComponent *a1)
{
  LegacyStyle = re::ecs2::RemoteEffectsComponent::getLegacyStyle(a1);
  if (LegacyStyle)
  {
    return *(LegacyStyle + 40);
  }

  else
  {
    return 1.0;
  }
}

void **RERemoteEffectsComponentSetGlowAppearDurationOverride(re::ecs2::RemoteEffectsComponent *a1, double a2)
{
  v4[0] = 1;
  v5 = a2;
  re::ecs2::RemoteEffectsComponent::setGlowAppearDurationOverride(a1, v4);

  return re::ecs2::Component::markDirty(a1);
}

void **RERemoteEffectsComponentResetGlowAppearDurationOverride(re::ecs2::RemoteEffectsComponent *a1)
{
  v3[0] = 0;
  re::ecs2::RemoteEffectsComponent::setGlowAppearDurationOverride(a1, v3);

  return re::ecs2::Component::markDirty(a1);
}

double RERemoteEffectsComponentGetGlowAppearDurationOverride(re::ecs2::RemoteEffectsComponent *a1)
{
  LegacyStyle = re::ecs2::RemoteEffectsComponent::getLegacyStyle(a1);
  if (LegacyStyle && *(LegacyStyle + 56) != 1)
  {
    return 0.2;
  }

  v3 = re::ecs2::RemoteEffectsComponent::getLegacyStyle(a1);
  if (!v3)
  {
    return 0.2;
  }

  if (*(v3 + 56) == 1)
  {
    return *(v3 + 64);
  }

  return result;
}

void **RERemoteEffectsComponentSetGlowDisappearDurationOverride(re::ecs2::RemoteEffectsComponent *a1, double a2)
{
  v4[0] = 1;
  v5 = a2;
  re::ecs2::RemoteEffectsComponent::setGlowDisappearDurationOverride(a1, v4);

  return re::ecs2::Component::markDirty(a1);
}

void **RERemoteEffectsComponentResetGlowDisappearDurationOverride(re::ecs2::RemoteEffectsComponent *a1)
{
  v3[0] = 0;
  re::ecs2::RemoteEffectsComponent::setGlowDisappearDurationOverride(a1, v3);

  return re::ecs2::Component::markDirty(a1);
}

double RERemoteEffectsComponentGetGlowDisappearDurationOverride(re::ecs2::RemoteEffectsComponent *a1)
{
  LegacyStyle = re::ecs2::RemoteEffectsComponent::getLegacyStyle(a1);
  if (!LegacyStyle)
  {
    return 0.2;
  }

  if (*(LegacyStyle + 72) == 1)
  {
    return *(LegacyStyle + 80);
  }

  return 0.1;
}

void **RERemoteEffectsComponentSetEnableAutoFade(re::ecs2::RemoteEffectsComponent *a1, char a2)
{
  LegacyStyle = re::ecs2::RemoteEffectsComponent::getLegacyStyle(a1);
  if (LegacyStyle)
  {
    *(LegacyStyle + 18) = a2;
  }

  return re::ecs2::Component::markDirty(a1);
}

uint64_t RERemoteEffectsComponentGetEnableAutoFade(re::ecs2::RemoteEffectsComponent *a1)
{
  LegacyStyle = re::ecs2::RemoteEffectsComponent::getLegacyStyle(a1);
  if (LegacyStyle)
  {
    v2 = *(LegacyStyle + 18);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void **RERemoteEffectsComponentSetOpacityFunction(re::ecs2::RemoteEffectsComponent *a1, int a2)
{
  LegacyStyle = re::ecs2::RemoteEffectsComponent::getLegacyStyle(a1);
  if (LegacyStyle)
  {
    v5 = a2 == 1;
    if (a2 == 2)
    {
      v5 = 2;
    }

    *(LegacyStyle + 16) = v5;
  }

  return re::ecs2::Component::markDirty(a1);
}

uint64_t RERemoteEffectsComponentGetOpacityFunction(re::ecs2::RemoteEffectsComponent *a1)
{
  result = re::ecs2::RemoteEffectsComponent::getLegacyStyle(a1);
  if (result)
  {
    v2 = *(result + 16);
    if (v2 == 2)
    {
      return 2;
    }

    else
    {
      return v2 == 1;
    }
  }

  return result;
}

void **RERemoteEffectsComponentSetAudioAssetRef(re::ecs2::RemoteEffectsComponent *a1, uint64_t a2)
{
  re::AssetAPIHelper::assetHandleCreate(a2, v4);
  re::ecs2::RemoteEffectsComponent::setAudioAssetHandle(a1, v4);
  re::AssetHandle::~AssetHandle(v4);
  return re::ecs2::Component::markDirty(a1);
}

uint64_t RERemoteEffectsComponentGetAudioAssetRef(re::ecs2::RemoteEffectsComponent *a1)
{
  re::ecs2::RemoteEffectsComponent::getAudioAssetHandle(a1, v3);
  v1 = v3[0];
  re::AssetHandle::~AssetHandle(v3);
  return v1;
}

void **RERemoteEffectsComponentSetFadeUsesActiveTime(re::ecs2::RemoteEffectsComponent *a1, char a2)
{
  LegacyStyle = re::ecs2::RemoteEffectsComponent::getLegacyStyle(a1);
  if (LegacyStyle)
  {
    *(LegacyStyle + 19) = a2;
  }

  return re::ecs2::Component::markDirty(a1);
}

uint64_t RERemoteEffectsComponentGetFadeUsesActiveTime(re::ecs2::RemoteEffectsComponent *a1)
{
  LegacyStyle = re::ecs2::RemoteEffectsComponent::getLegacyStyle(a1);
  if (LegacyStyle)
  {
    v2 = *(LegacyStyle + 19);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void **RERemoteEffectsComponentSetFadeUsesActiveTimeMultiplier(re::ecs2::RemoteEffectsComponent *a1, float a2)
{
  LegacyStyle = re::ecs2::RemoteEffectsComponent::getLegacyStyle(a1);
  if (LegacyStyle)
  {
    *(LegacyStyle + 44) = a2;
  }

  return re::ecs2::Component::markDirty(a1);
}

float RERemoteEffectsComponentGetFadeUsesActiveTimeMultiplier(re::ecs2::RemoteEffectsComponent *a1)
{
  LegacyStyle = re::ecs2::RemoteEffectsComponent::getLegacyStyle(a1);
  if (LegacyStyle)
  {
    return *(LegacyStyle + 44);
  }

  else
  {
    return 1.0;
  }
}

void **RERemoteEffectsComponentSetActivationDelay(re::ecs2::RemoteEffectsComponent *a1, double a2)
{
  LegacyStyle = re::ecs2::RemoteEffectsComponent::getLegacyStyle(a1);
  if (LegacyStyle)
  {
    *(LegacyStyle + 48) = a2;
  }

  return re::ecs2::Component::markDirty(a1);
}

double RERemoteEffectsComponentGetActivationDelay(re::ecs2::RemoteEffectsComponent *a1)
{
  LegacyStyle = re::ecs2::RemoteEffectsComponent::getLegacyStyle(a1);
  if (LegacyStyle)
  {
    return *(LegacyStyle + 48);
  }

  else
  {
    return 0.0;
  }
}

uint64_t RERemoteEffectsComponentHasValidGroupID(re::ecs2::RemoteEffectsComponent *a1)
{
  result = re::ecs2::RemoteEffectsComponent::getLegacyStyle(a1);
  if (result)
  {
    return *(result + 112) != 0;
  }

  return result;
}

uint64_t RERemoteEffectsComponentGetGroupID(re::ecs2::RemoteEffectsComponent *a1)
{
  result = re::ecs2::RemoteEffectsComponent::getLegacyStyle(a1);
  if (result)
  {
    return *(result + 112);
  }

  return result;
}

void **RERemoteEffectsComponentSetGroupID(re::ecs2::RemoteEffectsComponent *a1, uint64_t a2)
{
  LegacyStyle = re::ecs2::RemoteEffectsComponent::getLegacyStyle(a1);
  if (LegacyStyle)
  {
    *(LegacyStyle + 112) = a2;
  }

  return re::ecs2::Component::markDirty(a1);
}

void **RERemoteEffectsComponentSetGroupBehavior(re::ecs2::RemoteEffectsComponent *a1, int a2)
{
  LegacyStyle = re::ecs2::RemoteEffectsComponent::getLegacyStyle(a1);
  if (LegacyStyle)
  {
    v5 = a2 == 1;
    if (a2 == 2)
    {
      v5 = 2;
    }

    *(LegacyStyle + 120) = v5;
  }

  return re::ecs2::Component::markDirty(a1);
}

uint64_t RERemoteEffectsComponentGetGroupBehavior(re::ecs2::RemoteEffectsComponent *a1)
{
  result = re::ecs2::RemoteEffectsComponent::getLegacyStyle(a1);
  if (result)
  {
    v2 = *(result + 120);
    if (v2 == 2)
    {
      return 2;
    }

    else
    {
      return v2 == 1;
    }
  }

  return result;
}

void **RERemoteEffectsComponentSetEnableDirectPinchAnimation(void **this, char a2)
{
  if (this[7])
  {
    *(this[9] + 21) = a2;
    return re::ecs2::Component::markDirty(this);
  }

  return this;
}

uint64_t RERemoteEffectsComponentGetEnableDirectPinchAnimation(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    LOBYTE(v1) = *(*(a1 + 72) + 21);
  }

  return v1 & 1;
}

uint64_t RERemoteEffectsComponentGetSettingsModifier(uint64_t a1)
{
  v1 = *(a1 + 156);
  if (v1 == 2)
  {
    return 2;
  }

  else
  {
    return v1 == 1;
  }
}

void **RERemoteEffectsComponentSetSettingsModifier(void **this, int a2)
{
  v2 = a2 == 1;
  if (a2 == 2)
  {
    v2 = 2;
  }

  *(this + 39) = v2;
  return re::ecs2::Component::markDirty(this);
}

uint64_t RERemoteEffectsComponentIsPinchActive(uint64_t a1)
{
  if (*(a1 + 86))
  {
    v1 = 1;
  }

  else
  {
    v1 = *(a1 + 87);
  }

  return v1 & 1;
}

void **RERemoteEffectsComponentSetArePinchesActive(void **this, char a2, char a3)
{
  *(this + 87) = a2;
  *(this + 86) = a3;
  return re::ecs2::Component::markDirty(this);
}

uint64_t _RECustomComponentTypeCreate(uint64_t a1, int a2)
{
  if (*(a1 + 72))
  {
    v4 = re::ecs2::ComponentTypeRegistry::instance(a1);
    v5 = *(a1 + 8);
    *buf = 0;
    v25 = &str_67;
    v6 = re::ecs2::ComponentTypeRegistry::componentTypeWithName(v4, buf);
    v7 = v6;
    if (buf[0])
    {
      if (buf[0])
      {
      }
    }

    if (!v7)
    {
      v8 = *(a1 + 72);
      v9 = RESyncSyncableTypeInfoCreate();
      v10 = v9;
      if (*a1 >= 2 && (v11 = *(a1 + 80)) != 0)
      {
        if (!*(v11 + 24) && *(v11 + 40) == 1)
        {
          v12 = *re::ecsCoreLogObjects(v9);
          v9 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
          if (v9)
          {
            *buf = 0;
            _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "writeNetworkSnapshot cannot be null", buf, 2u);
          }

          v11 = *(a1 + 80);
        }

        v13 = *(v11 + 32);
        if (!v13)
        {
          if (*(v11 + 40) == 1)
          {
            v14 = *re::ecsCoreLogObjects(v9);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, "readNetworkSnapshot cannot be null", buf, 2u);
            }

            v11 = *(a1 + 80);
          }
        }

        v15 = *(v11 + 16);
        RESyncSyncableTypeInfoSetSupportsNetworkSync();
        RESyncSyncableTypeInfoSetDebugName();
        *buf = MEMORY[0x1E69E9820];
        v25 = 3221225472;
        v26 = ___ZN12_GLOBAL__N_131GenerateCustomComponentSyncInfoEPK25RECustomComponentTypeInfoP22RESyncSyncableTypeInfo_block_invoke;
        v27 = &__block_descriptor_48_e56_B32__0__RESyncBitReader__8_v16r__RESyncObjectContext__24l;
        v28 = v13;
        v29 = v15;
        RESyncSyncableTypeInfoSetReadSnapshotCb();
        RESyncSyncableTypeInfoSetWriteSnapshotCb();
        RESyncSyncableTypeInfoSetReadPayloadCb();
        v9 = RESyncSyncableTypeInfoSetWritePayloadCb();
        v17 = v10;
      }

      else
      {
        v17 = 0;
      }

      v18 = re::globalAllocators(v9);
      v7 = (*(*v18[2] + 32))(v18[2], 176, 8);
      v19 = *(a1 + 8);
      *buf = 0;
      v25 = &str_67;
      v20 = re::ecs2::CustomComponentType::CustomComponentType(v7, buf, v8, v17, 0, a2);
      if (buf[0])
      {
        if (buf[0])
        {
        }
      }

      v21 = RESyncRelease();
      *(v7 + 112) = *(a1 + 16);
      *(v7 + 48) = *(a1 + 24);
      *(v7 + 64) = *(a1 + 40);
      *(v7 + 88) = *(a1 + 48);
      *(v7 + 72) = *(a1 + 56);
      v22 = re::ecs2::ComponentTypeRegistry::instance(v21);
      re::ecs2::ComponentTypeRegistry::add(v22, v7, 0);
    }
  }

  else
  {
    v16 = *re::ecsCoreLogObjects(a1);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEFAULT, "introspection must not be null", buf, 2u);
    }

    return 0;
  }

  return v7;
}

uint64_t RECustomComponentTypeCreate(_DWORD *a1)
{
  if ((*a1 - 1) > 1)
  {
    return 0;
  }

  else
  {
    return _RECustomComponentTypeCreate(a1, 0);
  }
}

re *RECustomComponentTypeDestroy(re::ecs2::ComponentTypeRegistry *a1)
{
  v2 = re::ecs2::ComponentTypeRegistry::instance(a1);
  result = re::ecs2::ComponentTypeRegistry::remove(v2, a1);
  if (a1)
  {
    v4 = re::globalAllocators(result)[2];
    (*(*a1 + 16))(a1);
    v5 = *(*v4 + 40);

    return v5(v4, a1);
  }

  return result;
}

uint64_t RECustomComponentTypeSetEncodeCallback(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      *(result + 96) = a2;
      return result;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Component type must not be null.", "cComponentType", "RECustomComponentTypeSetEncodeCallback", 221);
    _os_crash();
    __break(1u);
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Encode callback must not be null.", "encode", "RECustomComponentTypeSetEncodeCallback", 222);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t RECustomComponentTypeSetDecodeCallback(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      *(result + 104) = a2;
      return result;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Component type must not be null.", "cComponentType", "RECustomComponentTypeSetDecodeCallback", 231);
    _os_crash();
    __break(1u);
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Decode callback must not be null.", "decode", "RECustomComponentTypeSetDecodeCallback", 232);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t ___ZN12_GLOBAL__N_131GenerateCustomComponentSyncInfoEPK25RECustomComponentTypeInfoP22RESyncSyncableTypeInfo_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = RESyncBitReaderBytesLeft();
  v6 = v5;
  if (v5 < 0x41)
  {
    RESyncBitReaderReadData();
    v13 = *(a1 + 32);
    v12 = *(a1 + 40);
    v14 = a3[2];
    v15 = (*(*a3 + 40))(a3);
    return v13(v12, v14, a3, v15, v20, v6);
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v20);
    v19 = 0;
    v17[1] = 0;
    v17[2] = 0;
    v18 = 0;
    v17[0] = v20;
    re::DynamicArray<BOOL>::setCapacity(v17, 0);
    ++v18;
    re::DynamicArray<BOOL>::resize(v17, v6);
    RESyncBitReaderReadData();
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = a3[2];
    v10 = (*(*a3 + 40))(a3);
    v11 = v8(v7, v9, a3, v10, v19, v6);
    if (v17[0] && v19)
    {
      (*(*v17[0] + 40))();
    }

    re::StackScratchAllocator::~StackScratchAllocator(v20);
  }

  return v11;
}

uint64_t ___ZN12_GLOBAL__N_131GenerateCustomComponentSyncInfoEPK25RECustomComponentTypeInfoP22RESyncSyncableTypeInfo_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 40);
  v9 = *(a1 + 32);
  v6 = a3[2];
  v7 = (*(*a3 + 40))(a3);

  return v9(v5, v6, a3, v7, a2);
}

uint64_t ___ZN12_GLOBAL__N_131GenerateCustomComponentSyncInfoEPK25RECustomComponentTypeInfoP22RESyncSyncableTypeInfo_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  RESyncBitReaderAlignToByte();
  v4 = RESyncBitReaderBytesLeft();
  v5 = RESyncBitReaderDataPtr();
  RESyncBitReaderSkipData();
  IsOverflow = RESyncBitReaderIsOverflow();
  if ((IsOverflow & 1) == 0)
  {
    MEMORY[0x1E69049A0](a3, v5, v4);
  }

  return IsOverflow ^ 1u;
}

void ___ZN12_GLOBAL__N_131GenerateCustomComponentSyncInfoEPK25RECustomComponentTypeInfoP22RESyncSyncableTypeInfo_block_invoke_4()
{
  RESyncBitReaderDataPtr();
  RESyncBitReaderBytesLeft();

  JUMPOUT(0x1E69049A0);
}

void *RELoadTraceComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::LoadTraceComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

uint64_t RECreateLoadTraceTypeBitFieldSignpostArg(unsigned int a1, int a2)
{
  v2 = 256;
  if (!a2)
  {
    v2 = 0;
  }

  return v2 | a1;
}

re::ecs2::NetworkComponent *REEntityAddLoadTraceComponent(uint64_t a1, int a2, char a3, char a4)
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  v8 = re::ecs2::EntityComponentCollection::getOrAdd((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::LoadTraceComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  *(v8 + 28) = a2;
  *(v8 + 32) = a3;
  *(v8 + 33) = a4;

  return RENetworkMarkComponentDirty(v8);
}

float RECollisionGetMinimumBoxDimension()
{
  if (re::RECollisionFeatureFlags::getMinimumBoxDimension(void)::onceToken != -1)
  {
    dispatch_once(&re::RECollisionFeatureFlags::getMinimumBoxDimension(void)::onceToken, &__block_literal_global_11);
  }

  return *&re::RECollisionFeatureFlags::gMinimumBoxDimension;
}

uint64_t RECollisionShapeDestroy(_anonymous_namespace_ *a1)
{
  result = (*(*a1 + 24))(a1);
  if ((result - 2) < 8)
  {
    goto LABEL_2;
  }

  if (result == 1)
  {
    return result;
  }

  if (result == 12)
  {
LABEL_2:
    (**a1)(a1);

    return v4();
  }

  else if ((result - 10) >= 2)
  {
    re::internal::assertLog(4, v3, "assertion failure: '%s' (%s:line %i) Unexpected collision shape type.", "!Unreachable code", "RECollisionShapeDestroy", 218);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    re::internal::assertLog(4, v3, "assertion failure: '%s' (%s:line %i) Collision shape type not yet exposed in CoreRE.", "!Unreachable code", "RECollisionShapeDestroy", 215);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

double RECollisionShapeGetBoundingBox(uint64_t a1, __n128 a2, __n128 a3)
{
  v4[2] = a2;
  v4[3] = a3;
  (*(*a1 + 16))(v4);
  return *v4;
}

uint64_t REBoxShapeCreate(re *inited, __n128 a2)
{
  {
    inited = re::initCollision(inited);
  }

  v3 = re::globalAllocators(inited)[2];
  v6 = a2;
  return (*(*v2 + 32))(v2, v3, &v6);
}

uint64_t RECapsuleShapeCreate(re *inited, float a2, float a3)
{
  {
    inited = re::initCollision(inited);
  }

  v6 = re::globalAllocators(inited)[2];
  v7 = *(*v5 + 40);
  v8.n128_f32[0] = a2;
  v9.n128_f32[0] = a3;

  return v7(v5, v6, v8, v9);
}

uint64_t RECompoundShapeCreate(_anonymous_namespace_ *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  if (a1)
  {
    v9 = 0;
    v10 = 0;
    v11 = &v35;
    v12 = v24;
    v13 = v21;
    while (v12 != v10)
    {
      *(v25 + 8 * v10) = a2[v10];
      if (v13 == v10)
      {
        goto LABEL_15;
      }

      v14 = (v22 + v9);
      v15 = *(a3 + v9 + 16);
      *v14 = *(a3 + v9);
      v14[1] = v15;
      v10 = (v10 + 1);
      v9 += 32;
      if (a1 == v10)
      {
        goto LABEL_6;
      }
    }

    v26 = 0;
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
    v35 = 0u;
    v36 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v27 = 136315906;
    v28 = "operator[]";
    v29 = 1024;
    v30 = 468;
    v31 = 2048;
    v32 = v12;
    v33 = 2048;
    v34 = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_15:
    v26 = 0;
    v11[3] = 0u;
    v11[4] = 0u;
    v11[2] = 0u;
    v35 = 0u;
    v36 = 0u;
    a4 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v27 = 136315906;
    v28 = "operator[]";
    v29 = 1024;
    v30 = 468;
    v31 = 2048;
    v32 = v13;
    v33 = 2048;
    v34 = v13;
    _os_log_send_and_compose_impl();
    inited = _os_crash_msg();
    __break(1u);
    goto LABEL_16;
  }

LABEL_6:
  a2 = &re::StackScratchAllocator::s_rootsWithPersistentBlocks[17];
  {
LABEL_16:
    inited = re::initCollision(inited);
    v16 = a2[252];
  }

  v17 = re::globalAllocators(inited);
  v18 = (*(*v16 + 160))(v16, v17[2], v25, v22, a1, a4, 0);
  if (v20 && v21)
  {
    (*(*v20 + 40))(v20, v22);
  }

  if (v23 && v24)
  {
    (*(*v23 + 40))(v23, v25);
  }

  return v18;
}

__n128 RECompoundShapeGetChildPose(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 32) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 40) + 240 * a2 + 112);
}

uint64_t RECompoundShapeGetChildShape(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 32) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 40) + 240 * a2 + 64);
}

uint64_t REConeShapeCreate(re *inited, float a2, float a3)
{
  {
    inited = re::initCollision(inited);
  }

  v6 = re::globalAllocators(inited)[2];
  v7 = *(*v5 + 120);
  v8.n128_f32[0] = a2;
  v9.n128_f32[0] = a3;

  return v7(v5, v6, v8, v9);
}

uint64_t RECylinderShapeCreate(re *inited, float a2, float a3)
{
  {
    inited = re::initCollision(inited);
  }

  v6 = re::globalAllocators(inited)[2];
  v7 = *(*v5 + 128);
  v8.n128_f32[0] = a2;
  v9.n128_f32[0] = a3;

  return v7(v5, v6, v8, v9);
}

uint64_t REConvexPolyhedronShapeCreate(re *a1, uint64_t a2)
{
  result = REConvexPolyhedronShapeCreateNullable(a1, a2);
  if (!result)
  {
    re::internal::assertLog(4, v3, "assertion failure: '%s' (%s:line %i) Bad parameters passed for convex mesh creation.", "convexPolyhedronShape != nullptr", "REConvexPolyhedronShapeCreate", 364);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t REConvexPolyhedronShapeCreateNullable(re *inited, uint64_t a2)
{
  v3 = inited;
  {
    inited = re::initCollision(inited);
  }

  v5 = re::globalAllocators(inited)[2];
  v6 = *(*v4 + 56);

  return v6(v4, v5, v3, a2);
}

unint64_t REConvexPolyhedronShapeExtractPositions(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 64))(a1);
  result = (*(*a1 + 80))(a1);
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      v7 = v4 + (*(*a1 + 72))(a1) * i;
      *&v8 = *v7;
      DWORD2(v8) = *(v7 + 8);
      *(a2 + 16 * i) = v8;
      result = (*(*a1 + 80))(a1);
    }
  }

  return result;
}