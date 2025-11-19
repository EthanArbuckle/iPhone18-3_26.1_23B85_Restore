void re::ecs2::UISorter::removeEntityFromTracking(re::ecs2::UISorter *this, re::ecs2::Entity *a2)
{
  v7 = a2;
  v3 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(this + 96, &v7);
  if (v3)
  {
    v4 = *v3;
    v6 = v4;
    if (v4)
    {
      v5 = (v4 + 8);
    }

    re::ecs2::UICodirectionalGroup::remove(v4, v7);
    re::HashTable<re::ecs2::Entity *,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::remove(this + 96, &v7);
    re::HashSetBase<re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,true,false>::add(this + 48, &v6);
    if (v6)
    {
    }
  }
}

void re::ecs2::UICoincidentalGroup::recomputeTransform(re::ecs2::UICoincidentalGroup *this, re::Allocator *a2)
{
  v69 = *MEMORY[0x1E69E9840];
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  v4 = re::FixedArray<CoreIKTransform>::deinit(this + 6);
  v5 = (4 * *(this + 75));
  v6 = *(this + 75);
  v53 = 0;
  v54 = 0;
  v52 = 0;
  re::FixedArray<re::SortingPlane>::init<>(&v52, a2, v6);
  v8 = *(this + 76);
  if (v8)
  {
    v9 = 0;
    v10 = (*(this + 36) + 8);
    while (1)
    {
      v11 = *v10;
      v10 += 6;
      if (v11 < 0)
      {
        break;
      }

      if (v8 == ++v9)
      {
        LODWORD(v9) = *(this + 76);
        break;
      }
    }
  }

  else
  {
    LODWORD(v9) = 0;
  }

  if (v9 != v8)
  {
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = *(*(this + 36) + 24 * v9 + 16);
      re::ecs2::UISorterUtil::optionalSortingPlaneFrom(v14, *(*(this + 33) + 432), &v64);
      v50 = v66;
      v15 = v13;
      v16 = v53;
      if (v53 <= v13)
      {
        break;
      }

      v17 = &v54[2 * v13];
      *v17 = v65;
      v17[1] = v50;
      v18 = *(this + 2);
      *(this + 1) = vaddq_f32(*(this + 1), *v17);
      *(this + 2) = vaddq_f32(v18, v17[1]);
      v19 = re::ecs2::UISorterTransformCache::getOrRecomputeWorldMatrixAndInverse(*(*(this + 33) + 432), v14);
      v45 = *v19;
      v46 = v19[1];
      v47 = v19[3];
      v48 = v19[2];
      v20 = re::ecs2::EntityComponentCollection::get((v14 + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      if (v20)
      {
        v21 = vcgtq_f32(*(v20 + 48), *(v20 + 64));
        v21.i32[3] = v21.i32[2];
        if ((vmaxvq_u32(v21) & 0x80000000) != 0)
        {
          v22 = *(v20 + 32);
          v23.i64[0] = 0xBF000000BF000000;
          v23.i64[1] = 0xBF000000BF000000;
          v24.i64[0] = 0x3F0000003F000000;
          v24.i64[1] = 0x3F0000003F000000;
          v49 = vmulq_f32(v22, v23);
          v51 = vmulq_f32(v22, v24);
        }

        else
        {
          v49 = *(v20 + 48);
          v51 = *(v20 + 64);
        }

        v14 = *(this + 7);
        if (v14 <= v12)
        {
          goto LABEL_42;
        }

        v14 = v12 + 1;
        v25 = vmulq_n_f32(v45, v49.f32[0]);
        v26 = vaddq_f32(v47, vmlaq_f32(vmlaq_n_f32(v25, v46, v49.f32[1]), 0, v48));
        *(*(this + 8) + 16 * v12) = vdivq_f32(v26, vdupq_laneq_s32(v26, 3));
        v16 = *(this + 7);
        if (v16 <= v12 + 1)
        {
          goto LABEL_43;
        }

        v13 = v12 + 2;
        v27 = vaddq_f32(v47, vmlaq_f32(vmlaq_n_f32(v25, v46, v51.f32[1]), 0, v48));
        *(*(this + 8) + 16 * v14) = vdivq_f32(v27, vdupq_laneq_s32(v27, 3));
        v14 = *(this + 7);
        if (v14 <= v12 + 2)
        {
          goto LABEL_44;
        }

        v14 = v12 + 3;
        v28 = vmulq_n_f32(v45, v51.f32[0]);
        v29 = vaddq_f32(v47, vmlaq_f32(vmlaq_f32(v28, vdupq_lane_s32(*&v49.i32[1], 0), v46), 0, v48));
        *(*(this + 8) + 16 * v13) = vdivq_f32(v29, vdupq_laneq_s32(v29, 3));
        v16 = *(this + 7);
        if (v16 <= v12 + 3)
        {
          goto LABEL_45;
        }

        v12 += 4;
        v30 = vaddq_f32(v47, vmlaq_f32(vmlaq_f32(v28, vdupq_lane_s32(*&v51.i32[1], 0), v46), 0, v48));
        v7 = vdivq_f32(v30, vdupq_laneq_s32(v30, 3));
        *(*(this + 8) + 16 * v14) = v7;
      }

      v13 = (v15 + 1);
      v31 = *(this + 76);
      if (v31 <= v9 + 1)
      {
        v31 = v9 + 1;
      }

      while (v31 - 1 != v9)
      {
        LODWORD(v9) = v9 + 1;
        if ((*(*(this + 36) + 24 * v9 + 8) & 0x80000000) != 0)
        {
          goto LABEL_25;
        }
      }

      LODWORD(v9) = v31;
LABEL_25:
      if (v9 == v8)
      {
        goto LABEL_26;
      }
    }

    v55 = 0;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v64 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v56 = 136315906;
    v57 = "operator[]";
    v58 = 1024;
    v59 = 468;
    v60 = 2048;
    v61 = v13;
    v62 = 2048;
    v63 = v16;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_42:
    v55 = 0;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v64 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v56 = 136315906;
    v57 = "operator[]";
    v58 = 1024;
    v59 = 468;
    v60 = 2048;
    v61 = v12;
    v62 = 2048;
    v63 = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_43:
    v55 = 0;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v64 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v56 = 136315906;
    v57 = "operator[]";
    v58 = 1024;
    v59 = 468;
    v60 = 2048;
    v61 = v14;
    v62 = 2048;
    v63 = v16;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_44:
    v55 = 0;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v64 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v56 = 136315906;
    v57 = "operator[]";
    v58 = 1024;
    v59 = 468;
    v60 = 2048;
    v61 = v13;
    v62 = 2048;
    v63 = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_45:
    v55 = 0;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v64 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v56 = 136315906;
    v57 = "operator[]";
    v58 = 1024;
    v59 = 468;
    v60 = 2048;
    v61 = v14;
    v62 = 2048;
    v63 = v16;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_26:
  v7.f32[0] = *(this + 75);
  v32 = *(this + 1);
  v33 = vdivq_f32(*(this + 2), vdupq_lane_s32(*v7.f32, 0));
  v34 = vmulq_f32(v32, v32);
  *&v35 = v34.f32[2] + vaddv_f32(*v34.f32);
  *v34.f32 = vrsqrte_f32(v35);
  *v34.f32 = vmul_f32(*v34.f32, vrsqrts_f32(v35, vmul_f32(*v34.f32, *v34.f32)));
  v36 = vmulq_n_f32(v32, vmul_f32(*v34.f32, vrsqrts_f32(v35, vmul_f32(*v34.f32, *v34.f32))).f32[0]);
  *(this + 1) = v36;
  *(this + 2) = v33;
  *(this + 53) = 0;
  *(this + 54) = 0;
  if (v53)
  {
    v37 = 32 * v53;
    v38 = v54 + 1;
    v39 = 0.0;
    v40 = 0.0;
    do
    {
      v41 = vmulq_f32(v36, vsubq_f32(*v38, v33));
      v42 = vaddv_f32(*v41.f32);
      v44 = vmulq_f32(v38[-1], vsubq_f32(v33, *v38));
      v43 = vaddv_f32(*v44.f32);
      v44.f32[0] = -(v44.f32[2] + v43);
      if (v40 < (v41.f32[2] + v42))
      {
        v40 = v41.f32[2] + v42;
      }

      if (v40 < v44.f32[0])
      {
        v40 = -(v44.f32[2] + v43);
      }

      if ((v41.f32[2] + v42) < v39)
      {
        v39 = v41.f32[2] + v42;
      }

      if (v39 > v44.f32[0])
      {
        v39 = -(v44.f32[2] + v43);
      }

      *(this + 53) = v39;
      *(this + 54) = v40;
      v38 += 2;
      v37 -= 32;
    }

    while (v37);
    *(this + 53) = fabsf(v39);
    *(this + 208) = 0;
    if (v52)
    {
      (*(*v52 + 40))(v52);
    }
  }

  else
  {
    *(this + 208) = 0;
  }
}

float32x4_t *re::ecs2::UICoincidentalGroup::updateGroupToken(float32x4_t *this)
{
  v1 = this;
  v25 = *MEMORY[0x1E69E9840];
  v2 = this[16].i64[1];
  v3 = *(v2 + 112);
  v4 = *(v2 + 128);
  v5 = vmulq_f32(v3, vsubq_f32(this[2], v4));
  v6 = vmulq_n_f32(v3, v5.f32[2] + vaddv_f32(*v5.f32));
  if (this[21].i64[0])
  {
    v12 = v6;
    v13 = *(v2 + 128);
    this = re::ecs2::UISorterUtil::optionalInsideOutsidePartitionPlaneFrom(*this[22].i64[0], *(v2 + 432), v22);
    v7 = v22[0].u8[0];
    if (v22[0].u8[0] == 1)
    {
      v23 = v22[1];
      v24 = v22[2];
    }

    else
    {
      v7 = 0;
    }

    v6 = v12;
    v4 = v13;
  }

  else
  {
    v7 = 0;
  }

  v8 = vaddq_f32(v4, v6);
  if (*(v1 + 80))
  {
    if ((*(v1 + 96) & 1) == 0)
    {
      *(v1 + 96) = 1;
    }

    *(v1 + 112) = v8;
    v10 = *(v1 + 16);
    v9 = *(v1 + 24);
    if ((*(v1 + 128) & 1) == 0)
    {
      *(v1 + 128) = 1;
    }

    *(v1 + 144) = v10;
    *(v1 + 152) = v9;
    if (v7)
    {
      if ((*(v1 + 160) & 1) == 0)
      {
        *(v1 + 160) = 1;
      }

      v11 = v24;
      *(v1 + 176) = v23;
      *(v1 + 192) = v11;
    }

    else if (*(v1 + 160) == 1)
    {
      *(v1 + 160) = 0;
    }
  }

  else
  {
    v14[0] = 261;
    v15 = 1;
    v16 = v8;
    v17 = 1;
    v18 = *(v1 + 16);
    v19 = v7;
    if (v7)
    {
      v20 = v23;
      v21 = v24;
    }

    re::ecs2::MeshSortGroupToken::createNewToken(v14, v22);
    return re::ecs2::MeshSortGroupToken::operator=(v1 + 80, v22);
  }

  return this;
}

uint64_t re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(uint64_t a1, re::ecs2::UISorterUtil *a2, re::ecs2::UISorterUtil *a3, float32x4_t *a4)
{
  re::ecs2::UISorterUtil::optionalSortingPlaneFrom(a2, *(*(a1 + 264) + 432), v12);
  v11 = v13;
  re::ecs2::UISorterUtil::optionalSortingPlaneFrom(a3, *(*(a1 + 264) + 432), v12);
  v7 = a4[1];
  v8 = vmulq_f32(vsubq_f32(v11, v7), *a4);
  v9 = vmulq_f32(vsubq_f32(v13, v7), *a4);
  *v9.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v8, v8, 8uLL), *&vextq_s8(v9, v9, 8uLL)), vadd_f32(vzip1_s32(*v8.i8, *v9.i8), vzip2_s32(*v8.i8, *v9.i8)));
  return *&vcgt_f32(vdup_lane_s32(*v9.i8, 1), *v9.i8) & 1;
}

uint64_t re::HashSetBase<re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,re::Hash<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,true,false>::add(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v6 = (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31);
  v7 = *(a1 + 24);
  if (!v7)
  {
    LODWORD(v8) = 0;
    goto LABEL_8;
  }

  v8 = v6 % v7;
  v9 = *(*(a1 + 8) + 4 * (v6 % v7));
  if (v9 == 0x7FFFFFFF)
  {
LABEL_8:
    v12 = re::HashSetBase<re::SharedPtr<re::ResourceSharingManager::Subscription>,re::SharedPtr<re::ResourceSharingManager::Subscription>,re::internal::ValueAsKey<re::SharedPtr<re::ResourceSharingManager::Subscription>>,re::Hash<re::SharedPtr<re::ResourceSharingManager::Subscription>>,re::EqualTo<re::SharedPtr<re::ResourceSharingManager::Subscription>>,true,false>::addAsCopy(a1, v8, v6, a2);
    ++*(a1 + 40);
    v11 = *(a1 + 16) + 24 * v12;
    return v11 + 16;
  }

  v10 = *(a1 + 16);
  while (*(v10 + 24 * v9 + 16) != v4)
  {
    LODWORD(v9) = *(v10 + 24 * v9 + 8) & 0x7FFFFFFF;
    if (v9 == 0x7FFFFFFF)
    {
      goto LABEL_8;
    }
  }

  v11 = v10 + 24 * v9;
  return v11 + 16;
}

void re::ecs2::UICodirectionalGroup::checkEntityAgainstSortGroups(re::ecs2::CAMeshSortGroup **a1, uint64_t a2, re::ecs2::Entity *a3, uint64_t a4, uint64_t a5, re::Allocator *a6)
{
  v32 = a3;
  *a1 = 0;
  v7 = *(a4 + 32);
  if (v7)
  {
    v8 = 0;
    v9 = (*(a4 + 16) + 8);
    while (1)
    {
      v10 = *v9;
      v9 += 6;
      if (v10 < 0)
      {
        break;
      }

      if (v7 == ++v8)
      {
        LODWORD(v8) = *(a4 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

  if (v8 != v7)
  {
    v11 = *(a4 + 16);
    do
    {
      v12 = v11 + 24 * v8;
      v15 = *(v12 + 16);
      v13 = (v12 + 16);
      v14 = v15;
      if ((v15[13].i8[1] & 1) == 0)
      {
        v16 = v32;
        if (v14[13].i8[0] == 1)
        {
          re::ecs2::UICoincidentalGroup::recomputeTransform(v14, a6);
        }

        v17 = 1.0;
        if ((*(*(v14[16].i64[1] + 440) + 160) & 1) == 0)
        {
          if (re::CARESortingDefaults::normalThreshold(void)::onceToken != -1)
          {
            dispatch_once(&re::CARESortingDefaults::normalThreshold(void)::onceToken, &__block_literal_global_24);
          }

          v17 = *&re::CARESortingDefaults::normalThreshold(void)::sortingNormalThreshold;
        }

        v19 = v14[13].f32[1];
        v18 = v14[13].f32[2];
        v20 = v14[19].u32[0];
        if (v20)
        {
          v21 = 0;
          v22 = (v14[18].i64[0] + 8);
          do
          {
            v23 = *v22;
            v22 += 6;
            if (v23 < 0)
            {
              goto LABEL_22;
            }

            ++v21;
          }

          while (v20 != v21);
          LODWORD(v21) = v14[19].i32[0];
        }

        else
        {
          LODWORD(v21) = 0;
        }

        while (1)
        {
LABEL_22:
          if (v21 == v20)
          {
            v26 = 0;
            goto LABEL_32;
          }

          v24 = re::ecs2::EntityComponentCollection::get((*(v14[18].i64[0] + 24 * v21 + 16) + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          if (v24)
          {
            if (*(v24 + 94))
            {
              break;
            }
          }

          v25 = v14[19].u32[0];
          if (v25 <= v21 + 1)
          {
            v25 = v21 + 1;
          }

          while (v25 - 1 != v21)
          {
            LODWORD(v21) = v21 + 1;
            if ((*(v14[18].i64[0] + 24 * v21 + 8) & 0x80000000) != 0)
            {
              goto LABEL_22;
            }
          }

          LODWORD(v21) = v25;
        }

        v26 = 1;
LABEL_32:
        if (re::ecs2::UISorterUtil::doesEntityOverlapBox(v14 + 1, &v14[3], v26, v16, *(v14[16].i64[1] + 432), 0, v18, v19, v17))
        {
          if (*a1)
          {
            re::ecs2::UICodirectionalGroup::mergeSortGroups(a2, a1, v13, a5);
          }

          else
          {
            re::ecs2::CAMeshSortGroup::add(*v13, v32);
            re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a2 + 152, &v32, v13);
            re::HashSetBase<re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,re::Hash<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,true,false>::add(a2 + 296, v13);
            re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(a1, *v13);
          }
        }
      }

      v27 = *(a4 + 32);
      v11 = *(a4 + 16);
      if (v27 <= v8 + 1)
      {
        v27 = v8 + 1;
      }

      while (v27 - 1 != v8)
      {
        LODWORD(v8) = v8 + 1;
        if ((*(v11 + 24 * v8 + 8) & 0x80000000) != 0)
        {
          goto LABEL_43;
        }
      }

      LODWORD(v8) = v27;
LABEL_43:
      ;
    }

    while (v8 != v7);
  }
}

void re::ecs2::UICodirectionalGroup::checkEntitiesForSorting(uint64_t a1, re::ecs2::Entity *a2, re::ecs2::Entity *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v24 = a3;
  v25 = a2;
  v10 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(a1 + 152, &v25);
  v11 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(a1 + 152, &v24);
  v12 = v11;
  if (v10 && v11)
  {
    v13 = *v10;
    if (*v10 == *v11)
    {
      return;
    }

LABEL_7:
    v23 = v13;
    if (v13)
    {
      v14 = v13 + 8;
    }

    if (v12)
    {
      goto LABEL_10;
    }

LABEL_13:
    v22 = 0;
    goto LABEL_14;
  }

  if (v10)
  {
    v13 = *v10;
    goto LABEL_7;
  }

  v23 = 0;
  if (!v11)
  {
    goto LABEL_13;
  }

LABEL_10:
  v12 = *v12;
  v22 = v12;
  if (v12)
  {
    v15 = (v12 + 8);
  }

LABEL_14:
  v16 = 1.0;
  if ((*(*(a1 + 440) + 160) & 1) == 0)
  {
    if (re::CARESortingDefaults::normalThreshold(void)::onceToken != -1)
    {
      dispatch_once(&re::CARESortingDefaults::normalThreshold(void)::onceToken, &__block_literal_global_24);
    }

    v16 = *&re::CARESortingDefaults::normalThreshold(void)::sortingNormalThreshold;
  }

  if (re::ecs2::UISorterUtil::doEntitiesOverlap(v25, v24, *(a1 + 432), a6, 0, v16))
  {
    if (!v23)
    {
      if (!v12)
      {
        v18 = re::globalAllocators(0);
        v19 = (*(*v18[2] + 32))(v18[2], 416, 16);
        ArcSharedObject::ArcSharedObject(v19, 0);
        *v20 = &unk_1F5CEF7A8;
        *(v20 + 212) = 0;
        *(v20 + 216) = 0;
        *(v20 + 16) = 0u;
        *(v20 + 32) = 0u;
        *(v20 + 48) = 0u;
        *(v20 + 64) = 0;
        *(v20 + 80) = 0u;
        *(v20 + 96) = 0u;
        *(v20 + 112) = 0u;
        *(v20 + 128) = 0u;
        *(v20 + 144) = 0u;
        *(v20 + 160) = 0u;
        *(v20 + 176) = 0u;
        *(v20 + 192) = 0u;
        *(v20 + 208) = 0;
        *(v19 + 256) = 0;
        *(v19 + 232) = 0;
        *(v19 + 240) = 0;
        *(v19 + 248) = 0;
        re::DynamicArray<re::RigNodeConstraint>::setCapacity((v19 + 224), 0x10uLL);
        ++*(v19 + 248);
        *(v19 + 264) = a1;
        *(v19 + 272) = 0u;
        *(v19 + 288) = 0u;
        *(v19 + 304) = 0;
        *(v19 + 308) = 0x7FFFFFFFLL;
        *(v19 + 328) = 0;
        *(v19 + 336) = 0;
        *(v19 + 320) = 0;
        *(v19 + 344) = 0;
        *(v19 + 352) = 0u;
        *(v19 + 368) = 0u;
        *(v19 + 380) = 0u;
        *(v19 + 396) = 0x7FFFFFFFLL;
        v21 = v19;
        re::HashSetBase<re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,re::Hash<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,true,false>::add(a1 + 200, &v21);
        re::HashSetBase<re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,re::Hash<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,true,false>::add(a1 + 296, &v21);
        re::ecs2::CAMeshSortGroup::add(v21, v25);
        re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 152, &v25, &v21);
        re::DynamicArray<re::TransitionCondition *>::add(a4, &v25);
        re::ecs2::CAMeshSortGroup::add(v21, v24);
        re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 152, &v24, &v21);
        re::DynamicArray<re::TransitionCondition *>::add(a4, &v24);
        re::ecs2::CARESortingDebugging::m_entitiesAddedToSortGroups += 2;
        if (!v21)
        {
          goto LABEL_28;
        }

        v17 = v21 + 8;
LABEL_27:

        goto LABEL_28;
      }

      re::ecs2::CAMeshSortGroup::add(v12, v25);
      re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 152, &v25, &v22);
      re::DynamicArray<re::TransitionCondition *>::add(a4, &v25);
      ++re::ecs2::CARESortingDebugging::m_entitiesAddedToSortGroups;
LABEL_26:
      v17 = (v12 + 8);
      goto LABEL_27;
    }

    if (!v12)
    {
      re::ecs2::CAMeshSortGroup::add(v23, v24);
      re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 152, &v24, &v23);
      re::DynamicArray<re::TransitionCondition *>::add(a4, &v24);
      ++re::ecs2::CARESortingDebugging::m_entitiesAddedToSortGroups;
      goto LABEL_28;
    }

    re::ecs2::UICodirectionalGroup::mergeSortGroups(a1, v10, &v22, a5);
    v12 = v22;
  }

  if (v12)
  {
    goto LABEL_26;
  }

LABEL_28:
  if (v23)
  {
  }
}

uint64_t re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(uint64_t a1, void *a2, uint64_t *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  result = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::addInternal<re::ecs2::Entity const* const&,re::SharedPtr<re::ecs2::UICoincidentalGroup> const&>(a1, v8, v9, a2, a3);
  }

  return result;
}

void re::ecs2::UICodirectionalGroup::mergeSortGroups(uint64_t a1, re::ecs2::CAMeshSortGroup **a2, uint64_t *a3, uint64_t a4)
{
  v4 = a4;
  v8 = *a3;
  v9 = *(*a3 + 304);
  if (v9)
  {
    v10 = 0;
    v11 = (*(v8 + 288) + 8);
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
        LODWORD(v10) = *(*a3 + 304);
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
    do
    {
      v17 = *(*(v8 + 288) + 24 * v10 + 16);
      re::ecs2::CAMeshSortGroup::add(*a2, v17);
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v13 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v17 ^ (v17 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v17 ^ (v17 >> 30))) >> 27));
      re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(a1 + 152, &v17, v13 ^ (v13 >> 31), &v18);
      v14 = HIDWORD(v19);
      if (HIDWORD(v19) == 0x7FFFFFFF)
      {
        re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::addInternal<re::ecs2::Entity const* const&,re::SharedPtr<re::ecs2::UICoincidentalGroup> const&>(a1 + 152, v18, v19, &v17, a2);
      }

      else
      {
        ++*(a1 + 192);
        re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((*(a1 + 168) + 32 * v14 + 16), *a2);
      }

      v15 = *(v8 + 304);
      if (v15 <= v10 + 1)
      {
        v15 = v10 + 1;
      }

      while (v15 - 1 != v10)
      {
        LODWORD(v10) = v10 + 1;
        if ((*(*(v8 + 288) + 24 * v10 + 8) & 0x80000000) != 0)
        {
          goto LABEL_17;
        }
      }

      LODWORD(v10) = v15;
LABEL_17:
      ;
    }

    while (v10 != v9);
    v8 = *a3;
    v4 = a4;
  }

  *(v8 + 208) = *(v8 + 300) != 0;
  re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::clear(v8 + 272);
  *(v8 + 336) = 0;
  ++*(v8 + 344);
  re::HashSetBase<re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,re::Hash<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,true,false>::add(v4, a3);
  re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,true,false>::remove(a1 + 296, *a3);
  *(*a3 + 209) = 1;
}

uint64_t re::ecs2::UICodirectionalGroup::sortEntitiesBackToFront(uint64_t this, re::Allocator *a2)
{
  v97 = *MEMORY[0x1E69E9840];
  v2 = *(this + 52);
  if (v2)
  {
    v4 = this;
    v84 = 0;
    v82[1] = 0;
    v82[2] = 0;
    v83 = 0;
    v82[0] = a2;
    re::DynamicArray<float *>::setCapacity(v82, v2);
    ++v83;
    v5 = *(v4 + 56);
    if (v5)
    {
      v6 = 0;
      v7 = (*(v4 + 40) + 8);
      while (1)
      {
        v8 = *v7;
        v7 += 6;
        if (v8 < 0)
        {
          break;
        }

        if (v5 == ++v6)
        {
          LODWORD(v6) = *(v4 + 56);
          break;
        }
      }
    }

    else
    {
      LODWORD(v6) = 0;
    }

    while (v6 != v5)
    {
      v93[0].i64[0] = *(*(v4 + 40) + 24 * v6 + 16);
      re::DynamicArray<re::TransitionCondition *>::add(v82, v93);
      v9 = *(v4 + 56);
      if (v9 <= v6 + 1)
      {
        v9 = v6 + 1;
      }

      while (v9 - 1 != v6)
      {
        LODWORD(v6) = v6 + 1;
        if ((*(*(v4 + 40) + 24 * v6 + 8) & 0x80000000) != 0)
        {
          goto LABEL_15;
        }
      }

      LODWORD(v6) = v9;
LABEL_15:
      ;
    }

    v81 = 0;
    v78 = 0;
    v79 = 0;
    v80 = 0;
    v77 = a2;
    re::DynamicArray<re::ecs2::CoincidentalSortKey>::setCapacity(&v77, v2);
    v10 = ++v80;
    v76 = 0;
    v73[1] = 0;
    v74 = 0;
    v75 = 0;
    v73[0] = a2;
    re::DynamicArray<re::ecs2::UICodirectionalGroup::EntitySortGroupInfo>::setCapacity(v73, v2);
    ++v75;
    v68 = *(v4 + 56);
    if (v68)
    {
      v19 = 0;
      v20 = (*(v4 + 40) + 8);
      while (1)
      {
        v21 = *v20;
        v20 += 6;
        if (v21 < 0)
        {
          break;
        }

        if (v68 == ++v19)
        {
          LODWORD(v19) = *(v4 + 56);
          break;
        }
      }
    }

    else
    {
      LODWORD(v19) = 0;
    }

    v65 = v2;
    if (v19 == v68)
    {
      v22 = v81;
      v23 = v79;
    }

    else
    {
      v37 = 0;
      do
      {
        v38 = *(*(v4 + 40) + 24 * v19 + 16);
        *v86 = v38;
        v69 = v38;
        BYTE4(v70) = 0;
        if (!*(v4 + 152) || (v39 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v38 ^ (v38 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v38 ^ (v38 >> 30))) >> 27)), v40 = v39 ^ (v39 >> 31), v41 = *(*(v4 + 160) + 4 * (v40 % *(v4 + 176))), v41 == 0x7FFFFFFF))
        {
LABEL_53:
          re::ecs2::UISorterUtil::optionalSortingPlaneFrom(v38, *(v4 + 432), v93);
          v43 = 0;
          v44 = vmulq_f32(vsubq_f32(v94, *(v4 + 128)), *(v4 + 112));
          v45 = v44.f32[2] + vaddv_f32(*v44.f32);
          *&v70 = v45;
        }

        else
        {
          v42 = *(v4 + 168);
          while (*(v42 + 32 * v41 + 8) != v38)
          {
            v41 = *(v42 + 32 * v41) & 0x7FFFFFFF;
            if (v41 == 0x7FFFFFFF)
            {
              goto LABEL_53;
            }
          }

          re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(v4 + 152, v86, v40, v93);
          v50 = *(*(v4 + 168) + 32 * v93[0].u32[3] + 16);
          if (v50)
          {
            v51 = &v50->u32[2];
          }

          v52 = vmulq_f32(vsubq_f32(v50[2], *(v4 + 128)), *(v4 + 112));
          v45 = v52.f32[2] + vaddv_f32(*v52.f32);
          *&v70 = v45;
          v53 = *v86;
          if (re::UISortingFeatureFlags::enableCodirectionalAsSortGroup(void)::onceToken != -1)
          {
            dispatch_once(&re::UISortingFeatureFlags::enableCodirectionalAsSortGroup(void)::onceToken, &__block_literal_global_5_0);
          }

          if (re::UISortingFeatureFlags::gEnableCodirectionalAsSortGroup == 1 && (v54 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v53 ^ (v53 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v53 ^ (v53 >> 30))) >> 27)), re::HashTable<re::AssetType const*,std::pair<unsigned long,unsigned long>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::findEntry<re::AssetType const*>(v93, &v50[22].i64[1], v53, v54 ^ (v54 >> 31)), v93[0].i32[3] != 0x7FFFFFFF))
          {
            v60 = *(v50[23].i64[1] + 40 * v93[0].u32[3] + 24);
            v43 = 1;
            BYTE4(v70) = 1;
            DWORD2(v70) = v60;
          }

          else
          {
            v43 = 0;
          }
        }

        v46 = re::DynamicArray<re::ecs2::UICodirectionalGroup::EntitySortGroupInfo>::add(v73, &v69);
        if (v79 >= v78)
        {
          v47 = v79 + 1;
          if (v78 < v79 + 1)
          {
            if (v77)
            {
              v48 = 8;
              if (v78)
              {
                v48 = 2 * v78;
              }

              if (v48 <= v47)
              {
                v49 = v79 + 1;
              }

              else
              {
                v49 = v48;
              }

              re::DynamicArray<re::ecs2::CoincidentalSortKey>::setCapacity(&v77, v49);
              v10 = v80;
            }

            else
            {
              re::DynamicArray<re::ecs2::CoincidentalSortKey>::setCapacity(&v77, v47);
              v10 = v80 + 1;
            }
          }
        }

        v22 = v81;
        v55 = v79;
        v56 = v81 + (v79 << 6);
        *v56 = 0u;
        *(v56 + 16) = 0u;
        *(v56 + 32) = 0;
        v23 = v55 + 1;
        v79 = v55 + 1;
        v80 = ++v10;
        if (v43)
        {
          v57 = 0;
          HIDWORD(v67) = DWORD2(v70);
        }

        else
        {
          v57 = HIDWORD(v67);
        }

        v58 = v22 + (v23 << 6);
        v93[0].i8[0] = 0;
        re::DrawCallSortKey<4ul,unsigned long long>::appendFloat(v58 - 64, v93, v45);
        re::DrawCallSortKey<4ul,unsigned long long>::appendInt32(v58 - 64, v57, v93);
        *(v58 - 32) = v37++;
        v59 = *(v4 + 56);
        if (v59 <= v19 + 1)
        {
          v59 = v19 + 1;
        }

        while (v59 - 1 != v19)
        {
          LODWORD(v19) = v19 + 1;
          if ((*(*(v4 + 40) + 24 * v19 + 8) & 0x80000000) != 0)
          {
            goto LABEL_80;
          }
        }

        LODWORD(v19) = v59;
LABEL_80:
        ;
      }

      while (v19 != v68);
    }

    v24 = 126 - 2 * __clz(v23);
    if (v23)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v26 = std::__introsort<std::_ClassicAlgPolicy,re::ecs2::CAMeshSortGroup::recomputeMeshSorting(re::Allocator &)::$_1 &,re::ecs2::CoincidentalSortKey *,false>(v22, v22 + (v23 << 6), v25, 1, v11, v12, v13, v14, v61, v62, v63, v64, v15, v16, v17, v18, v65, v67, v68, v69);
    v27 = (*(*v4 + 24))(v4, v26);
    v72 = 0;
    v70 = 0uLL;
    v71 = 0;
    v69 = v27;
    re::DynamicArray<re::ecs2::UICodirectionalGroup::EntitySortGroupInfo>::setCapacity(&v69, v66);
    ++v71;
    if (v23)
    {
      v29 = v74;
      v30 = v76;
      v31 = v23 << 6;
      v32 = (v22 + 32);
      while (1)
      {
        v34 = *v32;
        v32 += 16;
        v33 = v34;
        if (v29 <= v34)
        {
          break;
        }

        re::DynamicArray<re::ecs2::UICodirectionalGroup::EntitySortGroupInfo>::add(&v69, (v30 + 24 * v33));
        v31 -= 64;
        if (!v31)
        {
          goto LABEL_31;
        }
      }

      v85 = 0;
      v95 = 0u;
      v96 = 0u;
      v94 = 0u;
      memset(v93, 0, sizeof(v93));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v86 = 136315906;
      *&v86[4] = "operator[]";
      v87 = 1024;
      v88 = 789;
      v89 = 2048;
      v90 = v33;
      v91 = 2048;
      v92 = v29;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_85:
      re::internal::assertLog(4, v28, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
      _os_crash();
      __break(1u);
    }

LABEL_31:
    v35 = *(v4 + 448);
    if (v35 && v69 && v35 != v69)
    {
      goto LABEL_85;
    }

    *(v4 + 448) = v69;
    *(v4 + 456) = v70;
    v36 = *(v4 + 480);
    *(v4 + 480) = v72;
    ++*(v4 + 472);
    if (v35 && v36)
    {
      (*(*v35 + 40))(v35);
    }

    if (v73[0] && v76)
    {
      (*(*v73[0] + 40))();
    }

    if (v22 && v77)
    {
      (*(*v77 + 40))(v77, v22);
    }

    this = v82[0];
    if (v82[0])
    {
      if (v84)
      {
        return (*(*v82[0] + 40))();
      }
    }
  }

  return this;
}

_anonymous_namespace_ *re::DynamicArray<re::ecs2::UICodirectionalGroup::EntitySortGroupInfo>::add(_anonymous_namespace_ *result, uint64_t *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = *(result + 2);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*result)
      {
        v7 = 2 * v4;
        v8 = v4 == 0;
        v9 = 8;
        if (!v8)
        {
          v9 = v7;
        }

        if (v9 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v9;
        }

        result = re::DynamicArray<re::ecs2::UICodirectionalGroup::EntitySortGroupInfo>::setCapacity(result, v10);
      }

      else
      {
        result = re::DynamicArray<re::ecs2::UICodirectionalGroup::EntitySortGroupInfo>::setCapacity(v3, v6);
        ++*(v3 + 6);
      }
    }

    v5 = *(v3 + 2);
  }

  v11 = *(v3 + 4) + 24 * v5;
  v12 = *a2;
  *(v11 + 8) = *(a2 + 2);
  *v11 = v12;
  LODWORD(v12) = *(a2 + 12);
  *(v11 + 12) = v12;
  if (v12 == 1)
  {
    *(v11 + 16) = *(a2 + 4);
  }

  ++*(v3 + 2);
  ++*(v3 + 6);
  return result;
}

uint64_t re::ecs2::UICodirectionalGroup::updateGroupToken(uint64_t this)
{
  v1 = this;
  if (*(this + 528))
  {
    v3 = *(this + 128);
    v2 = *(this + 136);
    if ((*(this + 544) & 1) == 0)
    {
      *(this + 544) = 1;
    }

    *(this + 560) = v3;
    *(this + 568) = v2;
    v5 = *(this + 112);
    v4 = *(this + 120);
    if ((*(this + 576) & 1) == 0)
    {
      *(this + 576) = 1;
    }

    *(this + 592) = v5;
    *(this + 600) = v4;
  }

  else
  {
    v7[0] = 261;
    v8 = 1;
    v6 = *(this + 112);
    v9 = *(this + 128);
    v10 = 1;
    v11 = v6;
    v12 = 0;
    re::ecs2::MeshSortGroupToken::createNewToken(v7, v13);
    return re::ecs2::MeshSortGroupToken::operator=(v1 + 528, v13);
  }

  return this;
}

float32x4_t *re::ecs2::UICodirectionalGroup::writeToMeshSorting(float32x4_t *this, uint64_t a2, BOOL *a3)
{
  v3 = this[29].i64[0];
  if (v3)
  {
    v4 = 0;
    v5 = this + 33;
    v6 = 24 * v3;
    for (i = (this[30].i64[0] + 16); ; i += 3)
    {
      v15 = 0;
      v9 = v8;
      *(v8 + 304) = 1;
      v10 = *(v8 + 160);
      if ((*(v8 + 480) & 1) == 0)
      {
        break;
      }

      if ((*(i - 4) & 1) == 0)
      {
        *(v8 + 480) = 0;
        v14 = 1;
        goto LABEL_11;
      }

      v11 = *(v8 + 484);
      v12 = *i;
      *(v8 + 484) = *i;
      v13 = (v8 + 176);
      if ((v15 & 1) == 0)
      {
        v14 = v11 != v12;
LABEL_12:
        if (!v14 && v4 == v10)
        {
          this = re::ecs2::MeshSortGroupToken::doesConfigurationMatch(v5, v13);
          if (this)
          {
            if (v5->i64[0] == v13->i64[0])
            {
              goto LABEL_17;
            }
          }
        }
      }

LABEL_16:
      re::ecs2::MeshSortGroupToken::operator=(v13, v5);
      *(v9 + 160) = v4;
      this = re::ecs2::Component::markDirty(v9);
LABEL_17:
      ++v4;
      v6 -= 24;
      if (!v6)
      {
        return this;
      }
    }

    if (*(i - 4))
    {
      v14 = 1;
      *(v8 + 480) = 1;
      *(v8 + 484) = *i;
    }

    else
    {
      v14 = 0;
    }

LABEL_11:
    v13 = (v8 + 176);
    if ((v15 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_16;
  }

  return this;
}

void re::ecs2::UICodirectionalGroup::~UICodirectionalGroup(re::ecs2::UICodirectionalGroup *this)
{
  *this = &unk_1F5CEF760;
  v2 = (this + 24);
  re::DynamicArray<unsigned long>::deinit(this + 448);
  re::DynamicArray<unsigned long>::deinit(this + 392);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 43);
  re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(this + 37);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 31);
  re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(this + 25);
  re::HashTable<unsigned long long,re::SharedPtr<re::ecs2::Entity>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 19);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CEF760;
  v2 = (this + 24);
  re::DynamicArray<unsigned long>::deinit(this + 448);
  re::DynamicArray<unsigned long>::deinit(this + 392);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 43);
  re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(this + 37);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 31);
  re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(this + 25);
  re::HashTable<unsigned long long,re::SharedPtr<re::ecs2::Entity>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 19);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::HashSetBase<re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,re::Hash<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,true,false>::copy(uint64_t a1, uint64_t a2)
{
  re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::clear(a1);
  v4 = *(a2 + 28);
  if (*(a1 + 24) < v4)
  {
    re::HashSetBase<re::SharedPtr<re::ResourceSharingManager::Subscription>,re::SharedPtr<re::ResourceSharingManager::Subscription>,re::internal::ValueAsKey<re::SharedPtr<re::ResourceSharingManager::Subscription>>,re::Hash<re::SharedPtr<re::ResourceSharingManager::Subscription>>,re::EqualTo<re::SharedPtr<re::ResourceSharingManager::Subscription>>,true,false>::setCapacity(a1, v4);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    for (i = 0; i < v5; ++i)
    {
      v8 = *(a2 + 16) + v6;
      if ((*(v8 + 8) & 0x80000000) != 0)
      {
        re::HashSetBase<re::SharedPtr<re::ResourceSharingManager::Subscription>,re::SharedPtr<re::ResourceSharingManager::Subscription>,re::internal::ValueAsKey<re::SharedPtr<re::ResourceSharingManager::Subscription>>,re::Hash<re::SharedPtr<re::ResourceSharingManager::Subscription>>,re::EqualTo<re::SharedPtr<re::ResourceSharingManager::Subscription>>,true,false>::addAsCopy(a1, *v8 % *(a1 + 24), *v8, (v8 + 16));
        v5 = *(a2 + 32);
      }

      v6 += 24;
    }
  }
}

BOOL re::HashTable<re::ecs2::Entity *,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v5 = a2[4];
    v6 = *(a1 + 16);
    v7 = *(v6 + 32 * v2) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v7;
      v8 = a2[3];
      LODWORD(v9) = a2[3];
    }

    else
    {
      *(v6 + 32 * v5) = *(v6 + 32 * v5) & 0x80000000 | v7;
      v8 = v2;
      LODWORD(v9) = v2;
    }

    v10 = (v6 + 32 * v8);
    v11 = *v10;
    if (*v10 < 0)
    {
      v11 &= ~0x80000000;
      *v10 = v11;
      v12 = *(v10 + 2);
      if (v12)
      {

        *(v10 + 2) = 0;
        v9 = a2[3];
        v6 = *(a1 + 16);
        v11 = *(v6 + 32 * v9);
      }
    }

    v13 = *(a1 + 40);
    *(v6 + 32 * v9) = *(a1 + 36) | v11 & 0x80000000;
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v13 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

void std::__introsort<std::_ClassicAlgPolicy,re::ecs2::UICoincidentalGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::UICoincidentalGroup::EntityAndPriority *,false>(re::ecs2::UISorterUtil **a1, re::ecs2::UISorterUtil **a2, uint64_t a3, uint64_t a4, char a5)
{
  while (2)
  {
    v87 = a2 - 2;
    v9 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v9;
          v10 = (a2 - v9) >> 4;
          v11 = v10 - 2;
          if (v10 > 2)
          {
            switch(v10)
            {
              case 3:

                std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::UICoincidentalGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::UICoincidentalGroup::EntityAndPriority *,0>(a1, a1 + 2, v87, a3);
                return;
              case 4:
                std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::UICoincidentalGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::UICoincidentalGroup::EntityAndPriority *,0>(a1, a1 + 2, a1 + 4, a3);
                v38 = *(a2 - 2);
                v37 = a2 - 2;
                if (re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, v38, a1[4], *(a3 + 8)))
                {
                  v39 = *(a1 + 2);
                  *(a1 + 2) = *v37;
                  *v37 = v39;
                  if (re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, a1[4], a1[2], *(a3 + 8)))
                  {
                    v40 = *(a1 + 1);
                    *(a1 + 1) = *(a1 + 2);
                    *(a1 + 2) = v40;
                    if (re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, a1[2], *a1, *(a3 + 8)))
                    {
                      v94 = *a1;
                      *a1 = *(a1 + 1);
                      *(a1 + 1) = v94;
                    }
                  }
                }

                return;
              case 5:

                std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::UICoincidentalGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::UICoincidentalGroup::EntityAndPriority *,0>(a1, a1 + 2, a1 + 4, a1 + 6, v87, a3);
                return;
            }
          }

          else
          {
            if (v10 < 2)
            {
              return;
            }

            if (v10 == 2)
            {
              v35 = *(a2 - 2);
              v34 = a2 - 2;
              if (re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, v35, *a1, *(a3 + 8)))
              {
                v93 = *a1;
                *a1 = *v34;
                *v34 = v93;
              }

              return;
            }
          }

          if (v10 <= 23)
          {
            v41 = a1 + 2;
            v43 = a1 == a2 || v41 == a2;
            if (a5)
            {
              if (!v43)
              {
                v44 = 0;
                v45 = a1;
                do
                {
                  v46 = v41;
                  if (re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, v45[2], *v45, *(a3 + 8)))
                  {
                    v47 = *v46;
                    v48 = v45[3];
                    v49 = v44;
                    while (1)
                    {
                      v50 = (a1 + v49);
                      *(a1 + v49 + 16) = *(a1 + v49);
                      if (!v49)
                      {
                        break;
                      }

                      v49 -= 16;
                      if ((re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, v47, *(v50 - 2), *(a3 + 8)) & 1) == 0)
                      {
                        v51 = (a1 + v49 + 16);
                        goto LABEL_83;
                      }
                    }

                    v51 = a1;
LABEL_83:
                    *v51 = v47;
                    v51[1] = v48;
                  }

                  v41 = v46 + 2;
                  v44 += 16;
                  v45 = v46;
                }

                while (v46 + 2 != a2);
              }
            }

            else if (!v43)
            {
              do
              {
                v80 = v41;
                if (re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, a1[2], *a1, *(a3 + 8)))
                {
                  v81 = *v80;
                  v82 = a1[3];
                  v83 = v80;
                  do
                  {
                    v84 = v83 - 2;
                    *v83 = *(v83 - 1);
                    v85 = re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, v81, *(v83 - 4), *(a3 + 8));
                    v83 = v84;
                  }

                  while ((v85 & 1) != 0);
                  *v84 = v81;
                  v84[1] = v82;
                }

                v41 = v80 + 2;
                a1 = v80;
              }

              while (v80 + 2 != a2);
            }

            return;
          }

          if (!a4)
          {
            if (a1 != a2)
            {
              v86 = a2;
              v52 = v11 >> 1;
              v53 = v11 >> 1;
              do
              {
                v54 = v53;
                if (v52 >= v53)
                {
                  v55 = (2 * v53) | 1;
                  v56 = &a1[2 * v55];
                  if (2 * v53 + 2 < v10 && re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, *v56, v56[2], *(a3 + 8)))
                  {
                    v56 += 2;
                    v55 = 2 * v54 + 2;
                  }

                  v57 = &a1[2 * v54];
                  if ((re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, *v56, *v57, *(a3 + 8)) & 1) == 0)
                  {
                    v58 = *v57;
                    v88 = v57[1];
                    do
                    {
                      v59 = v57;
                      v57 = v56;
                      *v59 = *v56;
                      if (v52 < v55)
                      {
                        break;
                      }

                      v60 = (2 * v55) | 1;
                      v56 = &a1[2 * v60];
                      v61 = 2 * v55 + 2;
                      if (v61 < v10 && re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, *v56, v56[2], *(a3 + 8)))
                      {
                        v56 += 2;
                        v60 = v61;
                      }

                      v55 = v60;
                    }

                    while (!re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, *v56, v58, *(a3 + 8)));
                    *v57 = v58;
                    v57[1] = v88;
                  }
                }

                v53 = v54 - 1;
              }

              while (v54);
              v62 = v86;
              do
              {
                v63 = v62;
                v64 = 0;
                v95 = *a1;
                v65 = a1;
                do
                {
                  v66 = &v65[2 * v64];
                  v67 = v66 + 2;
                  v68 = (2 * v64) | 1;
                  v69 = 2 * v64 + 2;
                  if (v69 >= v10)
                  {
                    v64 = (2 * v64) | 1;
                  }

                  else
                  {
                    v71 = v66[4];
                    v70 = v66 + 4;
                    if (re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, *(v70 - 2), v71, *(a3 + 8)))
                    {
                      v67 = v70;
                      v64 = v69;
                    }

                    else
                    {
                      v64 = v68;
                    }
                  }

                  *v65 = *v67;
                  v65 = v67;
                }

                while (v64 <= ((v10 - 2) >> 1));
                v62 = v63 - 2;
                if (v67 == v63 - 2)
                {
                  *v67 = v95;
                }

                else
                {
                  *v67 = *v62;
                  *v62 = v95;
                  v72 = (v67 - a1 + 16) >> 4;
                  v73 = v72 < 2;
                  v74 = v72 - 2;
                  if (!v73)
                  {
                    v75 = v74 >> 1;
                    v76 = &a1[2 * (v74 >> 1)];
                    if (re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, *v76, *v67, *(a3 + 8)))
                    {
                      v77 = *v67;
                      v78 = v67[1];
                      do
                      {
                        v79 = v67;
                        v67 = v76;
                        *v79 = *v76;
                        if (!v75)
                        {
                          break;
                        }

                        v75 = (v75 - 1) >> 1;
                        v76 = &a1[2 * v75];
                      }

                      while ((re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, *v76, v77, *(a3 + 8)) & 1) != 0);
                      *v67 = v77;
                      v67[1] = v78;
                    }
                  }
                }

                v73 = v10-- <= 2;
              }

              while (!v73);
            }

            return;
          }

          v12 = v10 >> 1;
          v13 = &a1[2 * (v10 >> 1)];
          if (v10 < 0x81)
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::UICoincidentalGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::UICoincidentalGroup::EntityAndPriority *,0>(&a1[2 * (v10 >> 1)], a1, v87, a3);
          }

          else
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::UICoincidentalGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::UICoincidentalGroup::EntityAndPriority *,0>(a1, &a1[2 * (v10 >> 1)], v87, a3);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::UICoincidentalGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::UICoincidentalGroup::EntityAndPriority *,0>(a1 + 2, v13 - 2, a2 - 4, a3);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::UICoincidentalGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::UICoincidentalGroup::EntityAndPriority *,0>(a1 + 4, &a1[2 * v12 + 2], a2 - 6, a3);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::UICoincidentalGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::UICoincidentalGroup::EntityAndPriority *,0>(v13 - 2, &a1[2 * (v10 >> 1)], &a1[2 * v12 + 2], a3);
            v90 = *a1;
            *a1 = *v13;
            *v13 = v90;
          }

          --a4;
          if (a5 & 1) != 0 || (re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, *(a1 - 2), *a1, *(a3 + 8)))
          {
            break;
          }

          v27 = *a1;
          v26 = a1[1];
          if (re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, *a1, *v87, *(a3 + 8)))
          {
            v9 = a1;
            do
            {
              v28 = v9[2];
              v9 += 2;
            }

            while ((re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, v27, v28, *(a3 + 8)) & 1) == 0);
          }

          else
          {
            v29 = (a1 + 2);
            do
            {
              v9 = v29;
              if (v29 >= a2)
              {
                break;
              }

              v29 += 16;
            }

            while (!re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, v27, *v9, *(a3 + 8)));
          }

          v30 = a2;
          if (v9 < a2)
          {
            v30 = a2;
            do
            {
              v31 = *(v30 - 2);
              v30 -= 2;
            }

            while ((re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, v27, v31, *(a3 + 8)) & 1) != 0);
          }

          while (v9 < v30)
          {
            v92 = *v9;
            *v9 = *v30;
            *v30 = v92;
            do
            {
              v32 = v9[2];
              v9 += 2;
            }

            while (!re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, v27, v32, *(a3 + 8)));
            do
            {
              v33 = *(v30 - 2);
              v30 -= 2;
            }

            while ((re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, v27, v33, *(a3 + 8)) & 1) != 0);
          }

          if (v9 - 2 != a1)
          {
            *a1 = *(v9 - 1);
          }

          a5 = 0;
          *(v9 - 2) = v27;
          *(v9 - 1) = v26;
        }

        v14 = 0;
        v16 = *a1;
        v15 = a1[1];
        do
        {
          v17 = re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, a1[v14 + 2], v16, *(a3 + 8));
          v14 += 2;
        }

        while ((v17 & 1) != 0);
        v18 = &a1[v14];
        v19 = a2;
        if (v14 == 2)
        {
          v19 = a2;
          do
          {
            if (v18 >= v19)
            {
              break;
            }

            v21 = *(v19 - 2);
            v19 -= 2;
          }

          while ((re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, v21, v16, *(a3 + 8)) & 1) == 0);
        }

        else
        {
          do
          {
            v20 = *(v19 - 2);
            v19 -= 2;
          }

          while (!re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, v20, v16, *(a3 + 8)));
        }

        v9 = &a1[v14];
        if (v18 < v19)
        {
          v22 = v19;
          do
          {
            v91 = *v9;
            *v9 = *v22;
            *v22 = v91;
            do
            {
              v23 = v9[2];
              v9 += 2;
            }

            while ((re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, v23, v16, *(a3 + 8)) & 1) != 0);
            do
            {
              v24 = *(v22 - 2);
              v22 -= 2;
            }

            while (!re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, v24, v16, *(a3 + 8)));
          }

          while (v9 < v22);
        }

        if (v9 - 2 != a1)
        {
          *a1 = *(v9 - 1);
        }

        *(v9 - 2) = v16;
        *(v9 - 1) = v15;
        if (v18 >= v19)
        {
          break;
        }

LABEL_35:
        std::__introsort<std::_ClassicAlgPolicy,re::ecs2::UICoincidentalGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::UICoincidentalGroup::EntityAndPriority *,false>(a1, v9 - 2, a3, a4, a5 & 1);
        a5 = 0;
      }

      v25 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::UICoincidentalGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::UICoincidentalGroup::EntityAndPriority *>(a1, v9 - 2, a3);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::UICoincidentalGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::UICoincidentalGroup::EntityAndPriority *>(v9, a2, a3))
      {
        break;
      }

      if (!v25)
      {
        goto LABEL_35;
      }
    }

    a2 = v9 - 2;
    if (!v25)
    {
      continue;
    }

    break;
  }
}

uint64_t std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::UICoincidentalGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::UICoincidentalGroup::EntityAndPriority *,0>(re::ecs2::UISorterUtil **a1, re::ecs2::UISorterUtil **a2, re::ecs2::UISorterUtil **a3, uint64_t a4)
{
  v8 = re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a4, *a2, *a1, *(a4 + 8));
  result = re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a4, *a3, *a2, *(a4 + 8));
  if (v8)
  {
    if (result)
    {
      v10 = *a1;
      *a1 = *a3;
    }

    else
    {
      v13 = *a1;
      *a1 = *a2;
      *a2 = v13;
      result = re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a4, *a3, *a2, *(a4 + 8));
      if (!result)
      {
        return result;
      }

      v10 = *a2;
      *a2 = *a3;
    }

    *a3 = v10;
  }

  else if (result)
  {
    v11 = *a2;
    *a2 = *a3;
    *a3 = v11;
    result = re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a4, *a2, *a1, *(a4 + 8));
    if (result)
    {
      v12 = *a1;
      *a1 = *a2;
      *a2 = v12;
    }
  }

  return result;
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::UICoincidentalGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::UICoincidentalGroup::EntityAndPriority *,0>(re::ecs2::UISorterUtil **a1, re::ecs2::UISorterUtil **a2, re::ecs2::UISorterUtil **a3, re::ecs2::UISorterUtil **a4, re::ecs2::UISorterUtil **a5, uint64_t a6)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::UICoincidentalGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::UICoincidentalGroup::EntityAndPriority *,0>(a1, a2, a3, a6);
  if (re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a6, *a4, *a3, *(a6 + 8)))
  {
    v12 = *a3;
    *a3 = *a4;
    *a4 = v12;
    if (re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a6, *a3, *a2, *(a6 + 8)))
    {
      v13 = *a2;
      *a2 = *a3;
      *a3 = v13;
      if (re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a6, *a2, *a1, *(a6 + 8)))
      {
        v14 = *a1;
        *a1 = *a2;
        *a2 = v14;
      }
    }
  }

  if (re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a6, *a5, *a4, *(a6 + 8)))
  {
    v16 = *a4;
    *a4 = *a5;
    *a5 = v16;
    if (re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a6, *a4, *a3, *(a6 + 8)))
    {
      v17 = *a3;
      *a3 = *a4;
      *a4 = v17;
      if (re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a6, *a3, *a2, *(a6 + 8)))
      {
        v18 = *a2;
        *a2 = *a3;
        *a3 = v18;
        if (re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a6, *a2, *a1, *(a6 + 8)))
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::UICoincidentalGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::UICoincidentalGroup::EntityAndPriority *>(re::ecs2::UISorterUtil **a1, re::ecs2::UISorterUtil **a2, uint64_t a3)
{
  v6 = (a2 - a1) >> 4;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::UICoincidentalGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::UICoincidentalGroup::EntityAndPriority *,0>(a1, a1 + 2, a2 - 2, a3);
        break;
      case 4:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::UICoincidentalGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::UICoincidentalGroup::EntityAndPriority *,0>(a1, a1 + 2, a1 + 4, a3);
        v19 = *(a2 - 2);
        v18 = a2 - 2;
        if (re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, v19, a1[4], *(a3 + 8)))
        {
          v20 = *(a1 + 2);
          *(a1 + 2) = *v18;
          *v18 = v20;
          if (re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, a1[4], a1[2], *(a3 + 8)))
          {
            v21 = *(a1 + 1);
            *(a1 + 1) = *(a1 + 2);
            *(a1 + 2) = v21;
            if (re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, a1[2], *a1, *(a3 + 8)))
            {
              v22 = *a1;
              *a1 = *(a1 + 1);
              *(a1 + 1) = v22;
            }
          }
        }

        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::UICoincidentalGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::UICoincidentalGroup::EntityAndPriority *,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2, a3);
        break;
      default:
        goto LABEL_11;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 2;
    if (re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, *(a2 - 2), *a1, *(a3 + 8)))
    {
      v8 = *a1;
      *a1 = *v7;
      *v7 = v8;
    }

    return 1;
  }

LABEL_11:
  v9 = a1 + 4;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::UICoincidentalGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::UICoincidentalGroup::EntityAndPriority *,0>(a1, a1 + 2, a1 + 4, a3);
  v10 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v11 = 0;
  v12 = 0;
  while (1)
  {
    if (re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, *v10, *v9, *(a3 + 8)))
    {
      v13 = *v10;
      v14 = v10[1];
      v15 = v11;
      while (1)
      {
        v16 = (a1 + v15);
        *(a1 + v15 + 48) = *(a1 + v15 + 32);
        if (v15 == -32)
        {
          break;
        }

        v15 -= 16;
        if ((re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, v13, v16[2], *(a3 + 8)) & 1) == 0)
        {
          v17 = (a1 + v15 + 48);
          goto LABEL_19;
        }
      }

      v17 = a1;
LABEL_19:
      *v17 = v13;
      v17[1] = v14;
      if (++v12 == 8)
      {
        return v10 + 2 == a2;
      }
    }

    v9 = v10;
    v11 += 16;
    v10 += 2;
    if (v10 == a2)
    {
      return 1;
    }
  }
}

uint64_t re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::addInternal<re::ecs2::Entity const* const&,re::SharedPtr<re::ecs2::UICoincidentalGroup> const&>(uint64_t a1, unint64_t a2, unsigned int a3, void *a4, uint64_t *a5)
{
  v8 = re::HashTable<re::AssetType const*,re::SharedPtr<re::RealityFileAssetProvider::PerTypeLoadCallbacks>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::allocEntry(a1, a3, a2);
  *(v8 + 8) = *a4;
  v9 = *a5;
  *(v8 + 16) = *a5;
  v10 = v8 + 16;
  if (v9)
  {
    v11 = (v9 + 8);
  }

  ++*(a1 + 40);
  return v10;
}

void re::ecs2::UICoincidentalGroup::~UICoincidentalGroup(re::ecs2::UICoincidentalGroup *this)
{
  *this = &unk_1F5CEF7A8;
  v2 = (this + 48);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 45);
  re::DynamicArray<unsigned long>::deinit(this + 320);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 34);
  re::DynamicArray<unsigned long>::deinit(this + 224);
  re::FixedArray<CoreIKTransform>::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CEF7A8;
  v2 = (this + 48);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 45);
  re::DynamicArray<unsigned long>::deinit(this + 320);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 34);
  re::DynamicArray<unsigned long>::deinit(this + 224);
  re::FixedArray<CoreIKTransform>::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void *re::DynamicArray<re::ecs2::UICodirectionalGroup::EntitySortGroupInfo>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ecs2::UICodirectionalGroup::EntitySortGroupInfo>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x18uLL))
        {
          v2 = 24 * a2;
          result = (*(*result + 32))(result, 24 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_18;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 24, a2);
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
LABEL_18:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = (v8 + 24 * v9);
        v11 = v7 + 2;
        v12 = (v8 + 16);
        do
        {
          v13 = v12 - 4;
          v14 = *(v12 - 2);
          *(v11 - 2) = *(v12 - 2);
          *(v11 - 2) = v14;
          LODWORD(v14) = *(v12 - 4);
          *(v11 - 4) = v14;
          if (v14 == 1)
          {
            *v11 = *v12;
          }

          v11 += 6;
          v12 += 6;
        }

        while (v13 + 6 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

uint64_t re::ecs2::UISorterTransformCache::getOrRecomputeWorldMatrixAndInverse(re::TransformService **this, const re::ecs2::Entity *a2)
{
  v9 = a2;
  result = re::HashTable<re::ecs2::Entity const*,re::ecs2::UISorterTransformCache::TransformAndInverse,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet((this + 1), &v9);
  if (!result)
  {
    memset(&v8, 0, sizeof(v8));
    v6 = 0u;
    v7 = 0u;
    v4 = 0u;
    v5 = 0u;
    re::TransformService::worldMatrixForRendering(*this, v9, 0, &v4);
    v10.columns[2] = v6;
    v10.columns[3] = v7;
    v10.columns[0] = v4;
    v10.columns[1] = v5;
    v8 = __invert_f4(v10);
    return re::HashTable<re::ecs2::Entity const*,re::ecs2::UISorterTransformCache::TransformAndInverse,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::addNew((this + 1), &v9, &v4);
  }

  return result;
}

uint64_t re::HashTable<re::ecs2::Entity const*,re::ecs2::UISorterTransformCache::TransformAndInverse,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::ecs2::Entity const*,re::ecs2::TransformAndInverse,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 160 * v6 + 16;
  }
}

uint64_t re::HashTable<re::ecs2::Entity const*,re::ecs2::UISorterTransformCache::TransformAndInverse,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::addNew(uint64_t a1, void *a2, __int128 *a3)
{
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::ecs2::Entity const*,re::ecs2::TransformAndInverse,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v15);
  if (HIDWORD(v16) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 160 * HIDWORD(v16) + 16;
  }

  v7 = re::HashTable<re::ecs2::Entity const*,re::ecs2::UISorterTransformCache::TransformAndInverse,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(a1, v16, v15);
  *(v7 + 8) = *a2;
  result = v7 + 16;
  v9 = a3[4];
  v10 = a3[5];
  v11 = a3[7];
  *(v7 + 112) = a3[6];
  *(v7 + 128) = v11;
  *(v7 + 80) = v9;
  *(v7 + 96) = v10;
  v12 = *a3;
  v13 = a3[1];
  v14 = a3[3];
  *(v7 + 48) = a3[2];
  *(v7 + 64) = v14;
  *(v7 + 16) = v12;
  *(v7 + 32) = v13;
  ++*(a1 + 40);
  return result;
}

uint64_t re::HashTable<re::ecs2::Entity const*,re::ecs2::UISorterTransformCache::TransformAndInverse,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v33, 0, 36);
          *&v33[36] = 0x7FFFFFFFLL;
          re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v33, v9, v8);
          v11 = *v33;
          *v33 = *a1;
          *a1 = v11;
          v12 = *&v33[16];
          v13 = *(a1 + 16);
          *&v33[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v33[24];
          *&v33[24] = *(a1 + 24);
          v14 = *&v33[32];
          *(a1 + 24) = v15;
          ++*&v33[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = 0;
            do
            {
              if ((*(v13 + v17) & 0x80000000) != 0)
              {
                v19 = re::HashTable<re::ecs2::Entity const*,re::ecs2::UISorterTransformCache::TransformAndInverse,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(a1, *(v13 + v17 + 144) % *(a1 + 24));
                v13 = *&v33[16];
                v20 = (*&v33[16] + v17);
                *(v19 + 8) = *(*&v33[16] + v17 + 8);
                v21 = v20[4];
                v23 = v20[1];
                v22 = v20[2];
                *(v19 + 48) = v20[3];
                *(v19 + 64) = v21;
                *(v19 + 16) = v23;
                *(v19 + 32) = v22;
                v25 = v20[7];
                v24 = v20[8];
                v26 = v20[6];
                *(v19 + 80) = v20[5];
                *(v19 + 96) = v26;
                *(v19 + 112) = v25;
                *(v19 + 128) = v24;
                v16 = *&v33[32];
              }

              ++v18;
              v17 += 160;
            }

            while (v18 < v16);
          }

          re::HashTable<unsigned long long,re::ecs2::MeshSortGroupToken,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v33);
        }
      }

      else
      {
        if (v8)
        {
          v29 = 2 * v7;
        }

        else
        {
          v29 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v27 = *(a1 + 16);
    v28 = *(v27 + 160 * v5);
  }

  else
  {
    v27 = *(a1 + 16);
    v28 = *(v27 + 160 * v5);
    *(a1 + 36) = v28 & 0x7FFFFFFF;
  }

  v30 = v27 + 160 * v5;
  *v30 = v28 | 0x80000000;
  v31 = *(a1 + 8);
  *v30 = *(v31 + 4 * a2) | 0x80000000;
  *(v31 + 4 * a2) = v5;
  *(v30 + 144) = a3;
  ++*(a1 + 28);
  return v27 + 160 * v5;
}

uint64_t re::ecs2::UISorterUtil::isUISortableEntity(re::ecs2::UISorterUtil *this, const re::ecs2::Entity *a2)
{
  v2 = re::ecs2::EntityComponentCollection::get((this + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (!v2)
  {
    goto LABEL_8;
  }

  if (*(v2 + 95) != 1)
  {
    goto LABEL_6;
  }

  v3 = *(*(v2 + 16) + 192);
  if (v3)
  {
    v3 = *(v3 + 40);
    if (v3)
    {
      v4 = atomic_load((v3 + 896));
      if (v4 == 2)
      {
LABEL_6:
        if (*(v2 + 92) == 1)
        {
          LOBYTE(v3) = *(v2 + 93);
        }

        else
        {
          LOBYTE(v3) = 1;
        }

        return v3 & 1;
      }

LABEL_8:
      LOBYTE(v3) = 0;
    }
  }

  return v3 & 1;
}

uint64_t re::ecs2::UISorterUtil::shouldSort(re::ecs2::UISorterUtil *this, re::TransformService **a2, re::ecs2::UISorterTransformCache *a3)
{
  if (re::ecs2::UISorterUtil::isUISortableEntity(this, a2))
  {
    re::ecs2::UISorterUtil::optionalSortingPlaneFrom(this, a2, v7);
    v5 = v7[0].i8[0];
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

float32x4_t *re::ecs2::UISorterUtil::optionalSortingPlaneFrom@<X0>(re::ecs2::UISorterUtil *this@<X0>, re::TransformService **a2@<X1>, float32x4_t *a3@<X8>)
{
  result = re::ecs2::UISorterTransformCache::getOrRecomputeWorldMatrixAndInverse(a2, this);
  v7 = result[2];
  v8 = vmulq_f32(v7, v7);
  if (fabsf(vaddv_f32(vadd_f32(*v8.i8, *&vextq_s8(v8, v8, 8uLL)))) >= 1.0e-10 && (*&v9 = *&v8.i32[2] + vaddv_f32(*v8.i8), v10 = vrsqrte_f32(v9), v11 = vmul_f32(v10, vrsqrts_f32(v9, vmul_f32(v10, v10))), v12 = vmulq_n_f32(v7, vmul_f32(v11, vrsqrts_f32(v9, vmul_f32(v11, v11))).f32[0]), v13 = v12.i32[2], v20 = v12.i64[0], v21 = result[2], v17 = *result, v18 = result[1], v19 = result[3], (result = re::ecs2::EntityComponentCollection::get((this + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)) != 0))
  {
    v14 = vcgtq_f32(result[3], result[4]);
    v14.i32[3] = v14.i32[2];
    if ((vmaxvq_u32(v14) & 0x80000000) != 0)
    {
      v15 = result[2].f32[2] * 0.5;
    }

    else
    {
      LODWORD(v15) = result[4].i64[1];
    }

    v16 = vaddq_f32(v19, vmlaq_n_f32(vmlaq_f32(vmulq_f32(v17, 0), 0, v18), v21, v15));
    a3->i8[0] = 1;
    a3[1].i64[0] = v20;
    a3[1].i32[2] = v13;
    a3[2] = vdivq_f32(v16, vdupq_laneq_s32(v16, 3));
  }

  else
  {
    a3->i8[0] = 0;
  }

  return result;
}

float32x4_t *re::ecs2::UISorterUtil::optionalInsideOutsidePartitionPlaneFrom@<X0>(re::ecs2::UISorterUtil *this@<X0>, re::TransformService **a2@<X1>, float32x4_t *a3@<X8>)
{
  result = re::ecs2::EntityComponentCollection::get((this + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (result && (result[6].i8[0] & 1) != 0)
  {

    return re::ecs2::UISorterUtil::optionalSortingPlaneFrom(this, a2, a3);
  }

  else
  {
    a3->i8[0] = 0;
  }

  return result;
}

BOOL re::ecs2::UISorterUtil::doesEntityOverlapBox(float32x4_t *a1, uint64_t a2, int a3, re::ecs2::UISorterUtil *this, re::TransformService **a5, int a6, float a7, float a8, float a9)
{
  re::ecs2::UISorterUtil::optionalSortingPlaneFrom(this, a5, &v91);
  v18 = vmulq_f32(v92, *a1);
  if ((1.0 - (v18.f32[2] + vaddv_f32(*v18.f32))) > a9)
  {
    return 0;
  }

  if (!a6)
  {
    v20 = a1[1];
    v21 = vmulq_f32(*a1, vsubq_f32(v93, v20));
    v22 = vmulq_f32(v92, vsubq_f32(v20, v93));
    v23 = vadd_f32(vzip1_s32(*&vextq_s8(v22, v22, 8uLL), *&vextq_s8(v21, v21, 8uLL)), vadd_f32(vzip1_s32(*v22.i8, *v21.i8), vzip2_s32(*v22.i8, *v21.i8)));
    v24 = vabs_f32(v23);
    if (v24.f32[0] >= v24.f32[1])
    {
      v24.f32[0] = v24.f32[1];
    }

    if (v23.f32[1] <= 0.0)
    {
      v25 = a8;
    }

    else
    {
      v25 = a7;
    }

    v26 = v24.f32[0] - v25;
    if (re::CARESortingDefaults::distanceThreshold(void)::onceToken != -1)
    {
      dispatch_once(&re::CARESortingDefaults::distanceThreshold(void)::onceToken, &__block_literal_global_4);
    }

    if (v26 > *&re::CARESortingDefaults::distanceThreshold(void)::sortingDistanceThreshold)
    {
      return 0;
    }
  }

  v27 = re::ecs2::EntityComponentCollection::get((this + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (a3 && v27 && (*(v27 + 94) & 1) != 0)
  {
    return 1;
  }

  v28 = re::ecs2::UISorterTransformCache::getOrRecomputeWorldMatrixAndInverse(a5, this);
  v29 = MEMORY[0x1E695F050];
  v30 = *MEMORY[0x1E695F050];
  v31 = *(MEMORY[0x1E695F050] + 16);
  v32 = *(MEMORY[0x1E695F050] + 24);
  v33 = *(a2 + 8);
  if (v33)
  {
    v34 = v28;
    v35 = *(a2 + 16);
    v36 = 16 * v33;
    v37 = MEMORY[0x1E695F060];
    v38.f64[0] = *(MEMORY[0x1E695F050] + 16);
    v39 = *(MEMORY[0x1E695F050] + 24);
    do
    {
      v83 = v38.f64[0];
      rect = v30;
      v40 = vaddq_f32(v34[7], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v34[4], COERCE_FLOAT(*v35->f32)), v34[5], *v35, 1), v34[6], *v35->f32, 2));
      rect_16 = vdivq_f32(v40, vdupq_laneq_s32(v40, 3)).u64[0];
      v41 = v30.f64[1];
      v42 = v30;
      v43 = v39;
      if (CGRectIsNull(*(&v38 - 1)))
      {
        v38 = *v37;
        v44 = rect_16;
      }

      else
      {
        v45.f32[0] = rect.f64[0] + v83;
        v46 = v41 + v39;
        v45.f32[1] = v46;
        v47 = vminnm_f32(rect_16, vcvt_f32_f64(rect));
        v38 = vcvtq_f64_f32(vsub_f32(vmaxnm_f32(rect_16, v45), v47));
        v44 = v47;
      }

      v30 = vcvtq_f64_f32(v44);
      v35 += 2;
      v39 = v38.f64[1];
      v36 -= 16;
    }

    while (v36);
    v48 = v30.f64[1];
    v49 = v30.f64[0];
    v50 = v29[1];
    v31 = v29[2];
    v32 = v29[3];
    v84 = v38.f64[0];
    recta = *v29;
  }

  else
  {
    v50 = *(MEMORY[0x1E695F050] + 8);
    v39 = *(MEMORY[0x1E695F050] + 24);
    v84 = *(MEMORY[0x1E695F050] + 16);
    v48 = v50;
    recta = *MEMORY[0x1E695F050];
    v49 = *MEMORY[0x1E695F050];
  }

  v51 = re::ecs2::EntityComponentCollection::get((this + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v51)
  {
    v53 = v51[3];
    v52 = v51[4];
    v54 = vcgtq_f32(v53, v52);
    v54.i32[3] = v54.i32[2];
    if ((vmaxvq_u32(v54) & 0x80000000) != 0)
    {
      v55 = v51[2];
      v56.i64[0] = 0xBF000000BF000000;
      v56.i64[1] = 0xBF000000BF000000;
      v53.i64[0] = vmulq_f32(v55, v56).u64[0];
      v56.i64[0] = 0x3F0000003F000000;
      v52.i64[1] = 0x3F0000003F000000;
      v52.i64[0] = vmulq_f32(v55, v52).u64[0];
    }

    rect_16a = *v53.f32;
    v82 = *v52.f32;
    v95.origin.x = recta;
    v95.origin.y = v50;
    v95.size.width = v31;
    v95.size.height = v32;
    if (CGRectIsNull(v95))
    {
      v57 = *MEMORY[0x1E695F060];
      v58 = rect_16a;
    }

    else
    {
      v59.f32[0] = recta;
      v60 = v50;
      v59.f32[1] = v60;
      v61.f32[0] = v31 + recta;
      v62 = v32 + v50;
      v61.f32[1] = v62;
      v58 = vminnm_f32(rect_16a, v59);
      v57 = vcvtq_f64_f32(vsub_f32(vmaxnm_f32(rect_16a, v61), v58));
    }

    rectb = v57;
    rect_16b = v58;
    v63 = vcvtq_f64_f32(v58);
    v64 = v63.f64[1];
    v65 = v57.f64[1];
    v81 = v63;
    if (CGRectIsNull(*(&v57 - 1)))
    {
      v50 = v82.f32[1];
      recta = v82.f32[0];
      v31 = *MEMORY[0x1E695F060];
      v32 = *(MEMORY[0x1E695F060] + 8);
    }

    else
    {
      v66 = vminnm_f32(v82, rect_16b);
      v67 = vmaxnm_f32(v82, vcvt_f32_f64(vaddq_f64(rectb, v81)));
      recta = v66.f32[0];
      v50 = v66.f32[1];
      v68 = vsub_f32(v67, v66);
      v31 = v68.f32[0];
      v32 = v68.f32[1];
    }
  }

  v96.size.width = v84;
  v96.origin.x = v49;
  v96.origin.y = v48;
  v96.size.height = v39;
  v97 = CGRectInset(v96, 0.00000011920929, 0.00000011920929);
  x = v97.origin.x;
  y = v97.origin.y;
  width = v97.size.width;
  height = v97.size.height;
  v97.origin.x = recta;
  v97.origin.y = v50;
  v97.size.width = v31;
  v97.size.height = v32;
  v98 = CGRectInset(v97, 0.00000011920929, 0.00000011920929);
  v73 = v98.origin.x;
  v74 = v98.origin.y;
  v75 = v98.size.width;
  v76 = v98.size.height;
  v77 = x;
  v78 = y;
  v79 = width;
  v80 = height;

  return CGRectIntersectsRect(*&v77, *&v73);
}

BOOL re::ecs2::UISorterUtil::doEntitiesOverlap(uint64_t a1, re::ecs2::UISorterUtil *a2, re::TransformService **a3, uint64_t a4, int a5, float a6)
{
  v47 = *MEMORY[0x1E69E9840];
  v37 = 0;
  v38 = 0;
  v39 = 0;
  re::FixedArray<re::Vector3<float>>::init<>(&v37, a4, 4uLL);
  v12 = re::ecs2::UISorterTransformCache::getOrRecomputeWorldMatrixAndInverse(a3, a1);
  v33 = *v12;
  v34 = v12[1];
  v35 = v12[3];
  v36 = v12[2];
  v13 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (!v13)
  {
    goto LABEL_9;
  }

  v15 = v13[3];
  v14 = v13[4];
  v16 = vcgtq_f32(v15, v14);
  v16.i32[3] = v16.i32[2];
  if ((vmaxvq_u32(v16) & 0x80000000) != 0)
  {
    v14 = v13[2];
    v17 = 0xBF000000BF000000;
    v15.i64[1] = 0xBF000000BF000000;
    v15.i64[0] = vmulq_f32(v14, v15).u64[0];
    v18.i64[0] = 0x3F0000003F000000;
    v18.i64[1] = 0x3F0000003F000000;
    v14.i64[0] = vmulq_f32(v14, v18).u64[0];
  }

  if (!v38)
  {
    v40 = 0;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v41 = 136315906;
    *&v41[4] = "operator[]";
    *&v41[12] = 1024;
    *&v41[14] = 468;
    *&v41[18] = 2048;
    *&v41[20] = 0;
    *&v41[28] = 2048;
    *&v41[30] = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  v19 = vmulq_n_f32(v33, v15.f32[0]);
  v20 = 0uLL;
  v21 = vaddq_f32(v35, vmlaq_f32(vmlaq_lane_f32(v19, v34, *v15.f32, 1), 0, v36));
  *v39 = vdivq_f32(v21, vdupq_laneq_s32(v21, 3));
  v6 = v38;
  if (v38 <= 1)
  {
LABEL_17:
    v40 = 0;
    v45 = v20;
    v46 = v20;
    v43 = v20;
    v44 = v20;
    v42 = v20;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v41 = 136315906;
    *&v41[4] = "operator[]";
    *&v41[12] = 1024;
    *&v41[14] = 468;
    *&v41[18] = 2048;
    *&v41[20] = 1;
    *&v41[28] = 2048;
    *&v41[30] = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_18;
  }

  v22 = vaddq_f32(v35, vmlaq_f32(vmlaq_lane_f32(v19, v34, *v14.f32, 1), 0, v36));
  v39[1] = vdivq_f32(v22, vdupq_laneq_s32(v22, 3));
  if (v6 == 2)
  {
LABEL_18:
    v40 = 0;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v41 = 136315906;
    *&v41[4] = "operator[]";
    *&v41[12] = 1024;
    *&v41[14] = 468;
    *&v41[18] = 2048;
    *&v41[20] = 2;
    *&v41[28] = 2048;
    *&v41[30] = 2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_19:
    v40 = 0;
    v45 = v25;
    v46 = v25;
    v43 = v25;
    v44 = v25;
    v42 = v25;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v41 = 136315906;
    *&v41[4] = "operator[]";
    *&v41[12] = 1024;
    *&v41[14] = 468;
    *&v41[18] = 2048;
    *&v41[20] = 3;
    *&v41[28] = 2048;
    *&v41[30] = 3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v23 = vmulq_n_f32(v33, v14.f32[0]);
  v24 = vmlaq_f32(v23, vdupq_lane_s32(*v15.f32, 1), v34);
  v25 = 0uLL;
  v26 = vaddq_f32(v35, vmlaq_f32(v24, 0, v36));
  v27 = v39;
  v39[2] = vdivq_f32(v26, vdupq_laneq_s32(v26, 3));
  if (v6 <= 3)
  {
    goto LABEL_19;
  }

  v28 = vaddq_f32(v35, vmlaq_f32(vmlaq_f32(v23, vdupq_lane_s32(*v14.f32, 1), v34), 0, v36));
  v27[3] = vdivq_f32(v28, vdupq_laneq_s32(v28, 3));
LABEL_9:
  re::ecs2::UISorterUtil::optionalSortingPlaneFrom(a1, a3, &v42);
  *v41 = v43;
  *&v41[16] = v44;
  v29 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v29)
  {
    v30 = *(v29 + 94);
  }

  else
  {
    v30 = 0;
  }

  doesEntityOverlapBox = re::ecs2::UISorterUtil::doesEntityOverlapBox(v41, &v37, v30 & 1, a2, a3, a5, 0.0, 0.0, a6);
  if (v37 && v38)
  {
    (*(*v37 + 40))();
  }

  return doesEntityOverlapBox;
}

uint64_t re::ecs2::UITreeTracker::PerUpdateChanges::PerUpdateChanges(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 36) = 0x7FFFFFFFLL;
  *(a1 + 48) = 0u;
  v10 = a1 + 48;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 84) = 0x7FFFFFFFLL;
  *(a1 + 96) = 0u;
  v11 = a1 + 96;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 132) = 0x7FFFFFFFLL;
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a1, a2, 3);
  v12 = *(a3 + 32);
  if (v12)
  {
    v13 = 0;
    v14 = (*(a3 + 16) + 8);
    while (1)
    {
      v15 = *v14;
      v14 += 6;
      if (v15 < 0)
      {
        break;
      }

      if (v12 == ++v13)
      {
        LODWORD(v13) = *(a3 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v13) = 0;
  }

  if (v13 != v12)
  {
    v16 = *(a3 + 16);
    do
    {
      v31 = *(v16 + 24 * v13 + 16);
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(a1, &v31);
      v17 = *(a3 + 32);
      v16 = *(a3 + 16);
      if (v17 <= v13 + 1)
      {
        v17 = v13 + 1;
      }

      while (v17 - 1 != v13)
      {
        LODWORD(v13) = v13 + 1;
        if ((*(v16 + 24 * v13 + 8) & 0x80000000) != 0)
        {
          goto LABEL_15;
        }
      }

      LODWORD(v13) = v17;
LABEL_15:
      ;
    }

    while (v13 != v12);
  }

  re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::init(v10, a2, 3);
  v18 = *(a4 + 32);
  if (v18)
  {
    v19 = 0;
    v20 = (*(a4 + 16) + 8);
    while (1)
    {
      v21 = *v20;
      v20 += 6;
      if (v21 < 0)
      {
        break;
      }

      if (v18 == ++v19)
      {
        LODWORD(v19) = *(a4 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v19) = 0;
  }

  if (v19 != v18)
  {
    v22 = *(a4 + 16);
    do
    {
      v31 = *(v22 + 24 * v19 + 16);
      re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(v10, &v31);
      v23 = *(a4 + 32);
      v22 = *(a4 + 16);
      if (v23 <= v19 + 1)
      {
        v23 = v19 + 1;
      }

      while (v23 - 1 != v19)
      {
        LODWORD(v19) = v19 + 1;
        if ((*(v22 + 24 * v19 + 8) & 0x80000000) != 0)
        {
          goto LABEL_30;
        }
      }

      LODWORD(v19) = v23;
LABEL_30:
      ;
    }

    while (v19 != v18);
  }

  re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::init(v11, a2, 3);
  v24 = *(a5 + 32);
  if (v24)
  {
    v25 = 0;
    v26 = (*(a5 + 16) + 8);
    while (1)
    {
      v27 = *v26;
      v26 += 6;
      if (v27 < 0)
      {
        break;
      }

      if (v24 == ++v25)
      {
        LODWORD(v25) = *(a5 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v25) = 0;
  }

  if (v25 != v24)
  {
    v28 = *(a5 + 16);
    do
    {
      v31 = *(v28 + 24 * v25 + 16);
      re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(v11, &v31);
      v29 = *(a5 + 32);
      v28 = *(a5 + 16);
      if (v29 <= v25 + 1)
      {
        v29 = v25 + 1;
      }

      while (v29 - 1 != v25)
      {
        LODWORD(v25) = v25 + 1;
        if ((*(v28 + 24 * v25 + 8) & 0x80000000) != 0)
        {
          goto LABEL_45;
        }
      }

      LODWORD(v25) = v29;
LABEL_45:
      ;
    }

    while (v25 != v24);
  }

  return a1;
}

re::ecs2::UITreeTracker *re::ecs2::UITreeTracker::UITreeTracker(re::ecs2::UITreeTracker *this)
{
  *(this + 12) = 0;
  *(this + 2) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  v2 = this + 16;
  *(this + 52) = 0x7FFFFFFFLL;
  *(this + 5) = 0u;
  *(this + 24) = 0;
  *(this + 4) = 0u;
  v3 = this + 64;
  *(this + 100) = 0x7FFFFFFFLL;
  *(this + 8) = 0u;
  *(this + 36) = 0;
  *(this + 7) = 0u;
  v4 = this + 112;
  *(this + 148) = 0x7FFFFFFFLL;
  *(this + 11) = 0u;
  *(this + 48) = 0;
  *(this + 10) = 0u;
  v5 = this + 160;
  *(this + 196) = 0x7FFFFFFFLL;
  *(this + 60) = 0;
  *(this + 14) = 0u;
  *(this + 13) = 0u;
  v6 = this + 208;
  *(this + 244) = 0x7FFFFFFFLL;
  *(this + 72) = 0;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 292) = 0x7FFFFFFFLL;
  *(this + 84) = 0;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 340) = 0x7FFFFFFFLL;
  *(this + 96) = 0;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 388) = 0x7FFFFFFFLL;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 108) = 0;
  *(this + 436) = 0x7FFFFFFFLL;
  return this;
}

void re::ecs2::UITreeTracker::update(re::ecs2::UITreeTracker *this@<X0>, re::Allocator *a2@<X1>, uint64_t a3@<X8>)
{
  if (*this && *(this + 1))
  {
    if (*(this + 11) || *(this + 23) || *(this + 35))
    {
      v4 = *(this + 36);
      if (v4)
      {
        v5 = 0;
        v6 = (*(this + 16) + 8);
        while (1)
        {
          v7 = *v6;
          v6 += 6;
          if (v7 < 0)
          {
            break;
          }

          if (v4 == ++v5)
          {
            LODWORD(v5) = *(this + 36);
            break;
          }
        }
      }

      else
      {
        LODWORD(v5) = 0;
      }

      if (v5 != v4)
      {
        v12 = xmmword_1E306AC00;
        do
        {
          v13 = *(*(this + 16) + 24 * v5 + 16);
          v71 = v13;
          if ((*(v13 + 304) & 0x801) == 1 && (*(v13 + 387) & 1) == 0)
          {
            v14 = *(v13 + 98);
            if (*(v13 + 98))
            {
              v15 = (*this + 16);
              v16 = *(v13 + 104);
              v17 = vld1q_dup_s16(v15);
              v18 = 1;
              v19 = v16;
              v20 = *(v13 + 98);
              while (1)
              {
                v21 = vandq_s8(vceqq_s16(v17, *v19), v12);
                v21.i16[0] = vmaxvq_u16(v21);
                if (v21.i32[0])
                {
                  break;
                }

                v18 -= 8;
                ++v19;
                if (!--v20)
                {
                  goto LABEL_31;
                }
              }

              if (v21.u16[0] - v18 >= *(v13 + 96))
              {
LABEL_31:
                v22 = (*(this + 1) + 16);
                v23 = vld1q_dup_s16(v22);
                v24 = 1;
                while (1)
                {
                  v25 = vandq_s8(vceqq_s16(v23, *v16), v12);
                  v25.i16[0] = vmaxvq_u16(v25);
                  if (v25.i32[0])
                  {
                    break;
                  }

                  v24 -= 8;
                  ++v16;
                  if (!--v14)
                  {
                    goto LABEL_55;
                  }
                }

                if (v25.u16[0] - v24 < *(v13 + 96))
                {
                  re::StackScratchAllocator::StackScratchAllocator(v79);
                  v75 = 0uLL;
                  LODWORD(v76) = 1;
                  v77 = 0uLL;
                  *(&v76 + 1) = 0;
                  v78 = 0;
                  re::BucketArray<re::ecs2::Entity *,32ul>::init(&v75, v79, 1uLL);
                  *re::BucketArray<re::ecs2::Entity *,32ul>::addUninitialized(&v75) = v13;
                  while (*(&v77 + 1))
                  {
                    v72[0] = *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](&v75, *(&v77 + 1) - 1);
                    re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](&v75, *(&v77 + 1) - 1);
                    --*(&v77 + 1);
                    ++v78;
                    v26 = v72[0];
                    if ((*(v72[0] + 76) & 0x801) == 1 && (*(v72[0] + 387) & 1) == 0)
                    {
                      v27 = *(v72[0] + 49);
                      if (*(v72[0] + 49))
                      {
                        v28 = (*(this + 1) + 16);
                        v29 = *(v72[0] + 13);
                        v30 = vld1q_dup_s16(v28);
                        v31 = 1;
                        while (1)
                        {
                          v32 = vandq_s8(vceqq_s16(v30, *v29), xmmword_1E306AC00);
                          v32.i16[0] = vmaxvq_u16(v32);
                          if (v32.i32[0])
                          {
                            break;
                          }

                          v31 -= 8;
                          ++v29;
                          if (!--v27)
                          {
                            goto LABEL_47;
                          }
                        }

                        if (v32.u16[0] - v31 < *(v72[0] + 48))
                        {
                          re::ecs2::UITreeTracker::removeTrackedEntity(this, v72[0]);
                          re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(this + 64, v72);
                          v26 = v72[0];
                        }
                      }

LABEL_47:
                      v33 = *(v26 + 43);
                      if (v33)
                      {
                        v34 = *(v26 + 45);
                        v35 = 8 * v33;
                        do
                        {
                          v36 = *v34++;
                          *re::BucketArray<re::ecs2::Entity *,32ul>::addUninitialized(&v75) = v36;
                          v35 -= 8;
                        }

                        while (v35);
                      }
                    }
                  }

                  re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(&v75);
                  if (v75 && (v76 & 1) == 0)
                  {
                    (*(*v75 + 40))(v75, v77);
                  }

                  re::StackScratchAllocator::~StackScratchAllocator(v79);
                  v12 = xmmword_1E306AC00;
                }
              }

              else
              {
                if (re::ecs2::UITreeTracker::findHighestRootComponentAncestor(this, *(v13 + 32)))
                {
                  re::ecs2::UITreeTracker::removeRootEntity(this, v13);
LABEL_30:
                  re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(this + 16, &v71);
                  v12 = xmmword_1E306AC00;
                  goto LABEL_55;
                }

                v12 = xmmword_1E306AC00;
                if (!*(this + 32))
                {
                  goto LABEL_30;
                }

                v38 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) >> 27));
                v39 = *(*(this + 33) + 4 * ((v38 ^ (v38 >> 31)) % *(this + 70)));
                if (v39 == 0x7FFFFFFF)
                {
                  goto LABEL_30;
                }

                v40 = *(this + 34);
                while (*(v40 + 72 * v39 + 8) != v13)
                {
                  v39 = *(v40 + 72 * v39) & 0x7FFFFFFF;
                  if (v39 == 0x7FFFFFFF)
                  {
                    goto LABEL_30;
                  }
                }
              }
            }
          }

LABEL_55:
          v37 = *(this + 36);
          if (v37 <= v5 + 1)
          {
            v37 = v5 + 1;
          }

          while (v37 - 1 != v5)
          {
            LODWORD(v5) = v5 + 1;
            if ((*(*(this + 16) + 24 * v5 + 8) & 0x80000000) != 0)
            {
              goto LABEL_61;
            }
          }

          LODWORD(v5) = v37;
LABEL_61:
          ;
        }

        while (v5 != v4);
      }

      v8 = *(this + 12);
      if (v8)
      {
        v9 = 0;
        v10 = (*(this + 4) + 8);
        while (1)
        {
          v11 = *v10;
          v10 += 6;
          if (v11 < 0)
          {
            break;
          }

          if (v8 == ++v9)
          {
            LODWORD(v9) = *(this + 12);
            break;
          }
        }
      }

      else
      {
        LODWORD(v9) = 0;
      }

      while (v9 != v8)
      {
        v41 = *(*(this + 4) + 24 * v9 + 16);
        HighestRootComponentAncestor = re::ecs2::UITreeTracker::findHighestRootComponentAncestor(this, *(v41 + 32));
        if (HighestRootComponentAncestor)
        {
          v43 = HighestRootComponentAncestor;
        }

        else
        {
          v43 = v41;
        }

        re::StackScratchAllocator::StackScratchAllocator(v79);
        v75 = 0uLL;
        LODWORD(v76) = 1;
        v77 = 0uLL;
        *(&v76 + 1) = 0;
        v78 = 0;
        re::BucketArray<re::ecs2::Entity *,32ul>::init(&v75, v79, 1uLL);
        *re::BucketArray<re::ecs2::Entity *,32ul>::addUninitialized(&v75) = v41;
        while (*(&v77 + 1))
        {
          v44 = *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](&v75, *(&v77 + 1) - 1);
          re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](&v75, *(&v77 + 1) - 1);
          --*(&v77 + 1);
          ++v78;
          if ((*(v44 + 304) & 0x801) == 1 && (*(v44 + 387) & 1) == 0)
          {
            v45 = *(v44 + 98);
            if (*(v44 + 98))
            {
              v46 = (*(this + 1) + 16);
              v47 = *(v44 + 104);
              v48 = vld1q_dup_s16(v46);
              v49 = 1;
              while (1)
              {
                v50 = vandq_s8(vceqq_s16(v48, *v47), xmmword_1E306AC00);
                v50.i16[0] = vmaxvq_u16(v50);
                if (v50.i32[0])
                {
                  break;
                }

                v49 -= 8;
                ++v47;
                if (!--v45)
                {
                  goto LABEL_85;
                }
              }

              if (v50.u16[0] - v49 < *(v44 + 96))
              {
                re::ecs2::UITreeTracker::addTrackedEntityForRoot(this, v44, v43);
              }
            }

LABEL_85:
            v51 = *(v44 + 344);
            if (v51)
            {
              v52 = *(v44 + 360);
              v53 = 8 * v51;
              do
              {
                v54 = *v52++;
                *re::BucketArray<re::ecs2::Entity *,32ul>::addUninitialized(&v75) = v54;
                v53 -= 8;
              }

              while (v53);
            }
          }
        }

        re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(&v75);
        if (v75 && (v76 & 1) == 0)
        {
          (*(*v75 + 40))(v75, v77);
        }

        re::StackScratchAllocator::~StackScratchAllocator(v79);
        v55 = *(this + 12);
        if (v55 <= v9 + 1)
        {
          v55 = v9 + 1;
        }

        while (v55 - 1 != v9)
        {
          LODWORD(v9) = v9 + 1;
          if ((*(*(this + 4) + 24 * v9 + 8) & 0x80000000) != 0)
          {
            goto LABEL_98;
          }
        }

        LODWORD(v9) = v55;
LABEL_98:
        ;
      }

      v56 = *(this + 24);
      if (v56)
      {
        v57 = 0;
        v58 = (*(this + 10) + 8);
        while (1)
        {
          v59 = *v58;
          v58 += 6;
          if (v59 < 0)
          {
            break;
          }

          if (v56 == ++v57)
          {
            LODWORD(v57) = *(this + 24);
            break;
          }
        }
      }

      else
      {
        LODWORD(v57) = 0;
      }

      if (v57 != v56)
      {
        v60 = *(this + 24);
        do
        {
          v61 = *(*(this + 10) + 24 * v57 + 16);
          if (!*(this + 26) || (v62 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v61 ^ (v61 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v61 ^ (v61 >> 30))) >> 27)), v63 = *(*(this + 27) + 4 * ((v62 ^ (v62 >> 31)) % *(this + 58))), v63 == 0x7FFFFFFF))
          {
LABEL_112:
            v65 = *(v61 + 32);
            if (v65)
            {
              while ((*(v65 + 304) & 0x80) == 0)
              {
                v79[0] = v65;
                v66 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(this + 208, v79);
                if (v66)
                {
                  v67 = *v66;
                  if (!*v66)
                  {
                    goto LABEL_117;
                  }

                  goto LABEL_120;
                }

                v65 = *(v79[0] + 32);
                if (!v65)
                {
                  break;
                }
              }
            }

            v79[0] = 0;
LABEL_117:
            v67 = re::ecs2::UITreeTracker::findHighestRootComponentAncestor(this, *(v61 + 32));
            if (v67)
            {
LABEL_120:
              re::ecs2::UITreeTracker::addTrackedEntityForRoot(this, v61, v67);
            }

            v60 = *(this + 24);
          }

          else
          {
            v64 = *(this + 28);
            while (*(v64 + 32 * v63 + 8) != v61)
            {
              v63 = *(v64 + 32 * v63) & 0x7FFFFFFF;
              if (v63 == 0x7FFFFFFF)
              {
                goto LABEL_112;
              }
            }
          }

          if (v60 <= v57 + 1)
          {
            v68 = v57 + 1;
          }

          else
          {
            v68 = v60;
          }

          while (v68 - 1 != v57)
          {
            LODWORD(v57) = v57 + 1;
            if ((*(*(this + 10) + 24 * v57 + 8) & 0x80000000) != 0)
            {
              goto LABEL_129;
            }
          }

          LODWORD(v57) = v68;
LABEL_129:
          ;
        }

        while (v57 != v56);
      }

      re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::clear(this + 16);
      re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::clear(this + 64);
      re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::clear(this + 112);
      re::ecs2::UITreeTracker::PerUpdateChanges::PerUpdateChanges(a3, a2, this + 352, this + 304, this + 400);
      re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::clear(this + 304);
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(this + 352);
      re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::clear(this + 400);
    }

    else
    {

      re::ecs2::UITreeTracker::PerUpdateChanges::PerUpdateChanges(a3, a2, this + 352, this + 304, this + 400);
    }
  }

  else
  {
    v80 = 0u;
    memset(v79, 0, sizeof(v79));
    DWORD1(v80) = 0x7FFFFFFF;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    DWORD1(v77) = 0x7FFFFFFF;
    *v72 = 0u;
    v73 = 0u;
    DWORD1(v74) = 0x7FFFFFFF;
    re::ecs2::UITreeTracker::PerUpdateChanges::PerUpdateChanges(a3, a2, v79, &v75, v72);
    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v72);
    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v75);
    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v79);
  }
}

uint64_t re::ecs2::UITreeTracker::findHighestRootComponentAncestor(void *a1, uint64_t a2)
{
  if (!a2 || (*(a2 + 304) & 0x80) != 0)
  {
    return 0;
  }

  result = 0;
  do
  {
    v4 = *(a2 + 98);
    if (*(a2 + 98))
    {
      v5 = (*a1 + 16);
      v6 = *(a2 + 104);
      v7 = vld1q_dup_s16(v5);
      v8 = 1;
      while (1)
      {
        v9 = vandq_s8(vceqq_s16(v7, *v6), xmmword_1E306AC00);
        v9.i16[0] = vmaxvq_u16(v9);
        if (v9.i32[0])
        {
          break;
        }

        v8 -= 8;
        ++v6;
        if (!--v4)
        {
          goto LABEL_11;
        }
      }

      if (v9.u16[0] - v8 < *(a2 + 96))
      {
        result = a2;
      }
    }

LABEL_11:
    a2 = *(a2 + 32);
  }

  while (a2 && (*(a2 + 304) & 0x80) == 0);
  return result;
}

void re::ecs2::UITreeTracker::removeRootEntity(re::ecs2::UITreeTracker *this, re::ecs2::Entity *a2)
{
  v18 = a2;
  v3 = re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(this + 256, a2);
  if (v3)
  {
    v4 = v3;
    v5 = *(v3 + 32);
    if (v5)
    {
      v6 = 0;
      v7 = (*(v3 + 16) + 8);
      while (1)
      {
        v8 = *v7;
        v7 += 6;
        if (v8 < 0)
        {
          break;
        }

        if (v5 == ++v6)
        {
          LODWORD(v6) = *(v3 + 32);
          break;
        }
      }
    }

    else
    {
      LODWORD(v6) = 0;
    }

    while (v6 != v5)
    {
      v17 = *(*(v4 + 16) + 24 * v6 + 16);
      re::HashTable<re::ecs2::Entity const*,re::ecs2::DepthMitigationState,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 208, &v17);
      v9 = *(v4 + 32);
      if (v9 <= v6 + 1)
      {
        v9 = v6 + 1;
      }

      while (v9 - 1 != v6)
      {
        LODWORD(v6) = v6 + 1;
        if ((*(*(v4 + 16) + 24 * v6 + 8) & 0x80000000) != 0)
        {
          goto LABEL_15;
        }
      }

      LODWORD(v6) = v9;
LABEL_15:
      ;
    }

    re::HashTable<re::ecs2::Entity const*,re::ecs2::DepthMitigationState,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 208, &v18);
    re::HashTable<re::ecs2::Entity *,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::remove(this + 256, v18);
    v10 = *(v18 + 39);
    v17 = v10;
    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) >> 27));
    v12 = v11 ^ (v11 >> 31);
    v13 = *(this + 94);
    if (v13)
    {
      v14 = v12 % v13;
      v15 = *(*(this + 45) + 4 * (v12 % v13));
      if (v15 != 0x7FFFFFFF)
      {
        v16 = *(this + 46);
        if (*(v16 + 24 * v15 + 16) == v10)
        {
          return;
        }

        while (1)
        {
          LODWORD(v15) = *(v16 + 24 * v15 + 8) & 0x7FFFFFFF;
          if (v15 == 0x7FFFFFFF)
          {
            break;
          }

          if (*(v16 + 24 * v15 + 16) == v10)
          {
            return;
          }
        }
      }
    }

    else
    {
      LODWORD(v14) = 0;
    }

    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addAsCopy(this + 352, v14, v12, &v17, &v17);
    ++*(this + 98);
  }
}

uint64_t re::ecs2::UITreeTracker::addTrackedEntityForRoot(re::ecs2::UITreeTracker *this, re::ecs2::Entity *a2, unint64_t a3)
{
  v3 = a3;
  v17 = a3;
  v18 = a2;
  v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) >> 27));
  v6 = v5 ^ (v5 >> 31);
  if (!*(this + 32) || (v7 = *(*(this + 33) + 4 * (v6 % *(this + 70))), v7 == 0x7FFFFFFF))
  {
LABEL_6:
    memset(v16, 0, sizeof(v16));
    DWORD1(v16[2]) = 0x7FFFFFFF;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(&v19, this + 256, a3, v6);
    if (HIDWORD(v20) == 0x7FFFFFFF)
    {
      v9 = re::HashTable<re::ecs2::Entity *,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::allocEntry(this + 256, v20, v19);
      *(v9 + 8) = v3;
      *(v9 + 56) = 0;
      *(v9 + 16) = 0u;
      v16[0] = 0u;
      *(v9 + 32) = 0;
      *&v16[1] = 0;
      *(v9 + 40) = xmmword_1E3058120;
      *(&v16[1] + 8) = xmmword_1E3058120;
      ++*(this + 74);
    }

    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v16);
    re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(this + 304, &v17);
    v3 = v17;
    v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v17 ^ (v17 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v17 ^ (v17 >> 30))) >> 27));
    v6 = v10 ^ (v10 >> 31);
  }

  else
  {
    v8 = *(this + 34);
    while (*(v8 + 72 * v7 + 8) != a3)
    {
      v7 = *(v8 + 72 * v7) & 0x7FFFFFFF;
      if (v7 == 0x7FFFFFFF)
      {
        goto LABEL_6;
      }
    }
  }

  re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(v16, this + 256, v3, v6);
  re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(*(this + 34) + 72 * HIDWORD(v16[0]) + 16, &v18);
  memset(v16, 0, 24);
  v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v18 ^ (v18 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v18 ^ (v18 >> 30))) >> 27));
  re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(this + 208, &v18, v11 ^ (v11 >> 31), v16);
  v12 = HIDWORD(v16[0]);
  if (HIDWORD(v16[0]) == 0x7FFFFFFF)
  {
    v13 = re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::allocEntry(this + 208, DWORD2(v16[0]), *&v16[0]);
    v14 = v17;
    *(v13 + 8) = v18;
    *(v13 + 16) = v14;
    ++*(this + 62);
  }

  else
  {
    ++*(this + 62);
    *(*(this + 28) + 32 * v12 + 16) = v17;
  }

  return re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(this + 400, &v18);
}

uint64_t re::ecs2::UITreeTracker::registerScene(uint64_t this, unint64_t a2)
{
  v43 = *MEMORY[0x1E69E9840];
  if (*this)
  {
    v2 = this;
    if (*(this + 8))
    {
      v4 = *(a2 + 288);
      if (v4)
      {
        v25 = 0;
        v23 = 0uLL;
        v22 = 0;
        v24 = 0;
        v41 = re::globalAllocators(this)[2];
        v5 = (*(*v41 + 32))(v41, 32, 0);
        *v5 = &unk_1F5CEF7F0;
        v5[1] = v2;
        v5[2] = re::ecs2::UITreeTracker::didActivateRootComponent;
        v5[3] = 0;
        v42 = v5;
        v26.n128_u64[0] = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v4, v40, *v2, 0);
        v26.n128_u64[1] = v6;
        re::DynamicArray<re::RigNodeConstraint>::add(&v22, &v26);
        v7 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v40);
        v38 = re::globalAllocators(v7)[2];
        v8 = (*(*v38 + 32))(v38, 32, 0);
        *v8 = &unk_1F5CEF848;
        v8[1] = v2;
        v8[2] = re::ecs2::UITreeTracker::willDeactivateRootComponent;
        v8[3] = 0;
        v39 = v8;
        v26.n128_u64[0] = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v4, v37, *v2, 0);
        v26.n128_u64[1] = v9;
        re::DynamicArray<re::RigNodeConstraint>::add(&v22, &v26);
        v10 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v37);
        v35 = re::globalAllocators(v10)[2];
        v11 = (*(*v35 + 32))(v35, 32, 0);
        *v11 = &unk_1F5CEF7F0;
        v11[1] = v2;
        v11[2] = re::ecs2::UITreeTracker::didActivateTrackedComponent;
        v11[3] = 0;
        v36 = v11;
        v26.n128_u64[0] = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v4, v34, *(v2 + 8), 0);
        v26.n128_u64[1] = v12;
        re::DynamicArray<re::RigNodeConstraint>::add(&v22, &v26);
        v13 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v34);
        v32 = re::globalAllocators(v13)[2];
        v14 = (*(*v32 + 32))(v32, 32, 0);
        *v14 = &unk_1F5CEF848;
        v14[1] = v2;
        v14[2] = re::ecs2::UITreeTracker::willDeactivateTrackedComponent;
        v14[3] = 0;
        v33 = v14;
        v26.n128_u64[0] = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v4, v31, *(v2 + 8), 0);
        v26.n128_u64[1] = v15;
        re::DynamicArray<re::RigNodeConstraint>::add(&v22, &v26);
        v16 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v31);
        v29 = re::globalAllocators(v16)[2];
        v17 = (*(*v29 + 32))(v29, 32, 0);
        *v17 = &unk_1F5CEF8A0;
        v17[1] = v2;
        v17[2] = re::ecs2::UITreeTracker::didReparentEntity;
        v17[3] = 0;
        v30 = v17;
        v26.n128_u64[0] = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidReparentEvent>(v4, v28, 0, 0);
        v26.n128_u64[1] = v18;
        re::DynamicArray<re::RigNodeConstraint>::add(&v22, &v26);
        re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::destroyCallable(v28);
        v21 = a2;
        v26 = 0uLL;
        v27 = 0;
        v19 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
        re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::findEntry<re::AssetType const*>(v2 + 160, &v21, v19 ^ (v19 >> 31), &v26);
        if (v26.n128_u32[3] == 0x7FFFFFFF)
        {
          this = re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::allocEntry(v2 + 160, v26.n128_u32[2], v26.n128_u64[0]);
          v20 = v22;
          *(this + 8) = v21;
          *(this + 16) = v20;
          *(this + 24) = v23;
          *(this + 48) = v25;
          *(this + 40) = 1;
          ++*(v2 + 200);
        }

        else
        {
          this = v22;
          if (v22)
          {
            if (v25)
            {
              return (*(*v22 + 40))();
            }
          }
        }
      }
    }
  }

  return this;
}

uint64_t re::ecs2::UITreeTracker::didActivateRootComponent(void *a1, uint64_t a2)
{
  v3 = a2;
  if (*a1 && a1[1] && (*(a2 + 387) & 1) == 0 && (*(a2 + 305) & 8) == 0)
  {
    re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add((a1 + 2), &v3);
  }

  return 0;
}

uint64_t re::ecs2::UITreeTracker::willDeactivateRootComponent(re::ecs2::UITreeTracker *a1, unint64_t a2)
{
  v14 = a2;
  if (*a1 && *(a1 + 1))
  {
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(a1 + 16, &v14);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(a1 + 112, &v14);
    v3 = v14;
    v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v14 ^ (v14 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v14 ^ (v14 >> 30))) >> 27));
    re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(&v15, a1 + 256, v14, v4 ^ (v4 >> 31));
    if (v16 != 0x7FFFFFFF)
    {
      v5 = *(a1 + 34) + 72 * v16;
      v6 = *(v5 + 48);
      if (v6)
      {
        v7 = 0;
        v8 = (*(v5 + 32) + 8);
        while (1)
        {
          v9 = *v8;
          v8 += 6;
          if (v9 < 0)
          {
            break;
          }

          if (v6 == ++v7)
          {
            LODWORD(v7) = *(v5 + 48);
            break;
          }
        }
      }

      else
      {
        LODWORD(v7) = 0;
      }

      if (v7 != v6)
      {
        v10 = *(v5 + 48);
        do
        {
          v11 = *(*(v5 + 32) + 24 * v7 + 16);
          v15 = v11;
          if ((*(v11 + 304) & 0x801) == 1 && (*(v11 + 387) & 1) == 0)
          {
            re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(a1 + 64, &v15);
            v10 = *(v5 + 48);
          }

          if (v10 <= v7 + 1)
          {
            v12 = v7 + 1;
          }

          else
          {
            v12 = v10;
          }

          while (v12 - 1 != v7)
          {
            LODWORD(v7) = v7 + 1;
            if ((*(*(v5 + 32) + 24 * v7 + 8) & 0x80000000) != 0)
            {
              goto LABEL_22;
            }
          }

          LODWORD(v7) = v12;
LABEL_22:
          ;
        }

        while (v7 != v6);
        v3 = v14;
      }
    }

    re::ecs2::UITreeTracker::removeRootEntity(a1, v3);
  }

  return 0;
}

uint64_t re::ecs2::UITreeTracker::didActivateTrackedComponent(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (*a1 && *(a1 + 8) && *(a1 + 284) && (*(a2 + 387) & 1) == 0 && (*(a2 + 305) & 8) == 0)
  {
    re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(a1 + 64, &v3);
  }

  return 0;
}

uint64_t re::ecs2::UITreeTracker::willDeactivateTrackedComponent(re::ecs2::UITreeTracker *a1, re::ecs2::Entity *a2)
{
  v4 = a2;
  if (*a1 && *(a1 + 1))
  {
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(a1 + 64, &v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(a1 + 112, &v4);
    re::ecs2::UITreeTracker::removeTrackedEntity(a1, v4);
  }

  return 0;
}

uint64_t re::ecs2::UITreeTracker::didReparentEntity(uint64_t a1, uint64_t a2)
{
  v16 = a2;
  if (*a1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      if (*(a1 + 284))
      {
        if ((*(a2 + 304) & 0x801) == 1 && (*(a2 + 387) & 1) == 0)
        {
          v3 = *(a2 + 98);
          if (*(a2 + 98))
          {
            v4 = (*a1 + 16);
            v5 = vld1q_dup_s16(v4);
            v6 = *(a2 + 104);
            v7 = 1;
            v8 = v6;
            v9 = *(a2 + 98);
            while (1)
            {
              v10 = vandq_s8(vceqq_s16(v5, *v8), xmmword_1E306AC00);
              v10.i16[0] = vmaxvq_u16(v10);
              if (v10.i32[0])
              {
                break;
              }

              v7 -= 8;
              ++v8;
              if (!--v9)
              {
                goto LABEL_12;
              }
            }

            if (v10.u16[0] - v7 < *(a2 + 96))
            {
LABEL_17:
              re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(a1 + 112, &v16);
              return 0;
            }

LABEL_12:
            v11 = (v2 + 16);
            v12 = vld1q_dup_s16(v11);
            for (i = 1; ; i -= 8)
            {
              v14 = vandq_s8(vceqq_s16(v12, *v6), xmmword_1E306AC00);
              v14.i16[0] = vmaxvq_u16(v14);
              if (v14.i32[0])
              {
                break;
              }

              ++v6;
              if (!--v3)
              {
                return 0;
              }
            }

            if (v14.u16[0] - i < *(a2 + 96))
            {
              goto LABEL_17;
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t re::ecs2::UITreeTracker::unregisterScene(uint64_t this, unint64_t a2)
{
  if (*this)
  {
    if (*(this + 8))
    {
      v2 = this + 160;
      if (*(this + 160))
      {
        v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
        v5 = *(*(this + 168) + 4 * ((v4 ^ (v4 >> 31)) % *(this + 184)));
        if (v5 != 0x7FFFFFFF)
        {
          v6 = *(this + 176);
          while (*(v6 + (v5 << 6) + 8) != a2)
          {
            v5 = *(v6 + (v5 << 6)) & 0x7FFFFFFF;
            if (v5 == 0x7FFFFFFF)
            {
              return this;
            }
          }

          v16 = a2;
          v7 = re::HashTable<re::ecs2::Entity *,re::SortingPlane,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::tryGet(this + 160, &v16);
          v8 = *v7;
          *v7 = 0;
          *(v7 + 8) = 0;
          v9 = *(v7 + 16);
          *(v7 + 16) = 0;
          v10 = *(v7 + 32);
          *(v7 + 32) = 0;
          ++*(v7 + 24);
          v16 = a2;
          this = re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(v2, &v16);
          v11 = *(a2 + 288);
          if (v11 && v9)
          {
            v12 = &v10[2 * v9];
            v13 = v10;
            do
            {
              v14 = *v13;
              v15 = v13[1];
              v13 += 2;
              this = re::EventBus::unsubscribe(v11, v14, v15);
            }

            while (v13 != v12);
          }

          if (v8)
          {
            if (v10)
            {
              return (*(*v8 + 40))(v8, v10);
            }
          }
        }
      }
    }
  }

  return this;
}

unint64_t *re::ecs2::UITreeTracker::removeTrackedEntity(re::ecs2::UITreeTracker *this, re::ecs2::Entity *a2)
{
  v8 = a2;
  result = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(this + 208, &v8);
  if (result)
  {
    v4 = result;
    re::HashTable<re::ecs2::Entity const*,re::ecs2::DepthMitigationState,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 208, &v8);
    v5 = *v4;
    v7 = *(*v4 + 312);
    result = re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(this + 256, v5);
    if (result)
    {
      v6 = result;
      result = re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(result, &v8);
      if (!*(v6 + 28))
      {
        re::HashTable<re::ecs2::Entity *,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::remove(this + 256, *v4);
        return re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(this + 352, &v7);
      }
    }
  }

  return result;
}

void re::HashTable<re::ecs2::Entity *,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::remove(uint64_t a1, unint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(v10, a1, a2, v3 ^ (v3 >> 31));
  v4 = v12;
  if (v12 != 0x7FFFFFFF)
  {
    v5 = *(a1 + 16);
    v6 = (v5 + 72 * v12);
    v7 = *v6 & 0x7FFFFFFF;
    if (v13 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * v11) = v7;
    }

    else
    {
      *(v5 + 72 * v13) = *(v5 + 72 * v13) & 0x80000000 | v7;
    }

    v8 = *v6;
    if ((*v6 & 0x80000000) != 0)
    {
      *v6 = v8 & 0x7FFFFFFF;
      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v6 + 2);
      v5 = *(a1 + 16);
      v8 = *(v5 + 72 * v4);
    }

    v9 = *(a1 + 40);
    *(v5 + 72 * v4) = *(a1 + 36) | v8 & 0x80000000;
    --*(a1 + 28);
    *(a1 + 36) = v4;
    *(a1 + 40) = v9 + 1;
  }
}

uint64_t re::internal::CallableMemFn<re::ecs2::UITreeTracker,REEventHandlerResult (re::ecs2::UITreeTracker::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::UITreeTracker,REEventHandlerResult (re::ecs2::UITreeTracker::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEF7F0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::UITreeTracker,REEventHandlerResult (re::ecs2::UITreeTracker::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEF7F0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::UITreeTracker,REEventHandlerResult (re::ecs2::UITreeTracker::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::UITreeTracker,REEventHandlerResult (re::ecs2::UITreeTracker::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEF848;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::UITreeTracker,REEventHandlerResult (re::ecs2::UITreeTracker::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEF848;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::UITreeTracker,REEventHandlerResult (re::ecs2::UITreeTracker::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::UITreeTracker,REEventHandlerResult (re::ecs2::UITreeTracker::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEF8A0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::UITreeTracker,REEventHandlerResult (re::ecs2::UITreeTracker::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEF8A0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::HashTable<re::ecs2::Entity *,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v26, 0, 36);
          *&v26[36] = 0x7FFFFFFFLL;
          re::HashTable<char const*,re::AssetLoadRequest::LoadStatistics::AssetTypeStats,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::init(v26, v9, v8);
          v11 = *v26;
          *v26 = *a1;
          *a1 = v11;
          v12 = *&v26[16];
          v13 = *(a1 + 16);
          *&v26[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v26[24];
          *&v26[24] = *(a1 + 24);
          v14 = *&v26[32];
          *(a1 + 24) = v15;
          ++*&v26[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                v18 = re::HashTable<re::ecs2::Entity *,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::allocEntry(a1, *(v13 + 64) % *(a1 + 24));
                v19 = *(v13 + 8);
                *(v18 + 16) = 0u;
                v18 += 16;
                *(v18 - 8) = v19;
                *(v18 + 32) = 0;
                *(v18 + 16) = 0u;
                *(v18 + 36) = 0x7FFFFFFFLL;
                re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::swap(v18, (v13 + 16));
              }

              ++v17;
              v13 += 72;
            }

            while (v17 < v16);
          }

          re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v26);
        }
      }

      else
      {
        if (v8)
        {
          v22 = 2 * v7;
        }

        else
        {
          v22 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v20 = *(a1 + 16);
    v21 = *(v20 + 72 * v5);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 72 * v5);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = v20 + 72 * v5;
  *v23 = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *v23 = *(v24 + 4 * a2) | 0x80000000;
  *(v24 + 4 * a2) = v5;
  *(v23 + 64) = a3;
  ++*(a1 + 28);
  return v20 + 72 * v5;
}

void *re::ecs2::allocInfo_SkyboxComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_241, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_241))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A7890, "SkyboxComponent");
    __cxa_guard_release(&_MergedGlobals_241);
  }

  return &unk_1EE1A7890;
}

void re::ecs2::initInfo_SkyboxComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v18[0] = 0x86D071A0DABBBDE6;
  v18[1] = "SkyboxComponent";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE1A7868, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A7868);
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
      qword_1EE1A7878 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_float(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "intensityExponent";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1C00000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1A7880 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_AssetHandle(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "material";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x2000000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1A7888 = v16;
      __cxa_guard_release(&qword_1EE1A7868);
    }
  }

  *(this + 2) = 0x4000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1A7878;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::SkyboxComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::SkyboxComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::SkyboxComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::SkyboxComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs215SkyboxComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v17 = v19;
}

double re::internal::defaultConstruct<re::ecs2::SkyboxComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE2590;
  result = 0.0;
  *(v3 + 28) = 0u;
  *(v3 + 44) = 0u;
  *(v3 + 60) = 0;
  return result;
}

void *re::internal::defaultDestruct<re::ecs2::SkyboxComponent>(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3[7];
  if (v4)
  {

    a3[7] = 0;
  }

  re::AssetHandle::~AssetHandle((a3 + 4));
  *a3 = &unk_1F5CCF868;

  return objc_destructInstance(a3 + 1);
}

double re::internal::defaultConstructV2<re::ecs2::SkyboxComponent>(ArcSharedObject *a1)
{
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE2590;
  result = 0.0;
  *(v1 + 28) = 0u;
  *(v1 + 44) = 0u;
  *(v1 + 60) = 0;
  return result;
}

void *re::internal::defaultDestructV2<re::ecs2::SkyboxComponent>(void *a1)
{
  v2 = a1[7];
  if (v2)
  {

    a1[7] = 0;
  }

  re::AssetHandle::~AssetHandle((a1 + 4));
  *a1 = &unk_1F5CCF868;

  return objc_destructInstance(a1 + 1);
}

void *re::allocInfo_SkyboxSystem(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1A7870, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A7870))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A7920, "SkyboxSystem");
    __cxa_guard_release(&qword_1EE1A7870);
  }

  return &unk_1EE1A7920;
}

void re::initInfo_SkyboxSystem(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x3D0F2824BC4FC7F2;
  v6[1] = "SkyboxSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x12800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::initInfo_SkyboxSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::SkyboxSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::SkyboxSystem>;
  *(this + 11) = re::internal::defaultRetain<re::SkyboxSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::SkyboxSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::SkyboxSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::SkyboxSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

double re::internal::defaultConstruct<re::SkyboxSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 288) = 0;
  *(a3 + 256) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 192) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v3 = re::ecs2::System::System(a3, 1, 1);
  *(v3 + 288) = 0;
  result = 0.0;
  *(v3 + 256) = 0u;
  *(v3 + 272) = 0u;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *v3 = &unk_1F5CEF8F8;
  return result;
}

double re::internal::defaultConstructV2<re::SkyboxSystem>(uint64_t a1)
{
  *(a1 + 288) = 0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v1 = re::ecs2::System::System(a1, 1, 1);
  *(v1 + 288) = 0;
  result = 0.0;
  *(v1 + 256) = 0u;
  *(v1 + 272) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0u;
  *v1 = &unk_1F5CEF8F8;
  return result;
}

double re::SkyboxSystem::willAddSceneToECSService(re::SkyboxSystem *this, re::ecs2::Scene *a2)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v3 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::SkyboxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  v5[0] = this;
  v5[1] = re::ecs2::SceneComponentCollection<re::ecs2::SkyboxComponent>::EventWrapper::erasedMemberCallback<&re::SkyboxSystem::onActivateSkyboxComponent,re::SkyboxSystem>;
  v5[2] = 0;
  v5[3] = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::SkyboxComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::SkyboxComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::SkyboxComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
  return re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v3 + 96), v5);
}

void re::SkyboxSystem::willRemoveSceneFromECSService(re::SkyboxSystem *this, re::ecs2::Scene *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::SkyboxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  *&v4 = this;
  *(&v4 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::SkyboxComponent>::EventWrapper::erasedMemberCallback<&re::SkyboxSystem::onActivateSkyboxComponent,re::SkyboxSystem>;
  v5 = 0;
  v6 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::SkyboxComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::SkyboxComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::SkyboxComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
  re::Event<re::GeometricObjectBase>::removeSubscription(v3 + 96, &v4);
}

uint64_t re::SkyboxSystem::update(uint64_t result, uint64_t a2, uint64_t a3)
{
  v221 = *MEMORY[0x1E69E9840];
  v3 = *(a3 + 200);
  if (v3)
  {
    v4 = result;
    v5 = *(a3 + 216);
    v6 = &v5[v3];
    v7.i64[0] = 0x7F0000007FLL;
    v7.i64[1] = 0x7F0000007FLL;
    v144 = vnegq_f32(v7);
    v146 = result;
    v143 = v6;
    do
    {
      v149 = *v5;
      if (*v5)
      {
        v8 = *(v4 + 224);
        if (!v8 || (*(v8 + 432) & 0x10) != 0)
        {
          re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v171);
          re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v170, 3013, v4);
          if (!*(v4 + 240))
          {
            goto LABEL_119;
          }

          if (!*(v4 + 232))
          {
            goto LABEL_120;
          }

          v145 = v5;
          v10 = (*(**(v4 + 256) + 24))(*(v4 + 256));
          v11 = (*(*v10 + 16))(v10);
          if (*(v11 + 31))
          {
            v12 = *(v11 + 31);
          }

          else
          {
            v12 = *(v11 + 4);
          }

          v168 = 0;
          v166 = 0u;
          v167 = 0u;
          v169 = 0x7FFFFFFFLL;
          v160 = re::RenderManager::perFrameAllocator(*(v4 + 232));
          v13 = re::ecs2::SceneComponentTable::get((v149 + 200), re::ecs2::ComponentImpl<re::ecs2::SkyboxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          if (v13)
          {
            v14 = *(v13 + 384);
            if (v14)
            {
              v15 = *(v13 + 400);
              v16 = 8 * v14;
              do
              {
                v17 = *v15;
                v18 = *(*v15 + 16);
                if (*(v18 + 304))
                {
                  (*(*v10 + 8))(__dst, v10, *(*v15 + 16));
                  v19 = __dst[0].i8[0] ? __dst[0].i64[1] : 0;
                  re::HashTable<unsigned long long,re::SkyboxSystem::updateSceneInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::SkyboxData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(__dst, &v166, v19);
                  if (__dst[0].i32[3] == 0x7FFFFFFF)
                  {
                    v20 = *(v17 + 40);
                    if (v20 && (v21 = atomic_load((v20 + 896)), v21 == 2))
                    {
                      re::TransformService::worldMatrix(*(v146 + 288), v18, 0, v219);
                      __dst[0] = *v219;
                      __dst[1] = *&v219[16];
                      __dst[2] = *&v219[32];
                      QuaternionFrom = re::makeQuaternionFromMatrix<float>(__dst);
                      v24 = v23;
                      v25 = QuaternionFrom;
                      ++*(*(v17 + 40) + 276);
                      v26 = re::AssetHandle::loadedAsset<re::MaterialAsset>((v17 + 32));
                      v27 = *(v26 + 1784);
                      if (v27)
                      {
                        v27 = re::MaterialParameterBlock::deltaSynchronizedMaterialParameterTable(v27, v160);
                      }

                      v158 = v27;
                      v28 = *(v17 + 56);
                      if (!v28)
                      {
                        __dst[0].i64[0] = *(v146 + 232);
                        re::make::shared::object<re::MaterialParameterBlock,re::RenderManager *&>(__dst, __src);
                        v29 = *(v17 + 56);
                        v28 = *__src;
                        *(v17 + 56) = *__src;
                        *__src = v29;
                        if (v29)
                        {

                          v28 = *(v17 + 56);
                        }
                      }

                      v30 = v25;
                      v31 = *&v24;
                      v32 = v31 + v31;
                      v33 = (*&v30 + *&v30) * *&v30;
                      v34 = (*(&v25 + 1) + *(&v25 + 1)) * *(&v25 + 1);
                      v35 = (v31 + v31) * v31;
                      v36 = (*&v30 + *&v30) * *(&v25 + 1);
                      v37 = (*&v30 + *&v30) * *&v24;
                      v38 = (*(&v25 + 1) + *(&v25 + 1)) * *&v24;
                      v39 = (*&v30 + *&v30) * *(&v24 + 1);
                      v40 = (*(&v25 + 1) + *(&v25 + 1)) * *(&v24 + 1);
                      *&v41 = v37 - v40;
                      *v42.i32 = 1.0 - (v34 + v35);
                      *&v42.i32[1] = v36 + (v32 * *(&v24 + 1));
                      v43.i32[3] = 0;
                      *v43.i32 = v37 + v40;
                      *&v43.i32[1] = v38 - v39;
                      v44 = vzip1q_s32(v42.u64[0], v43.u64[0]);
                      v42.i64[1] = v41;
                      *&v45 = v39 + v38;
                      *v46.i32 = v36 - (v32 * *(&v24 + 1));
                      *&v46.i32[1] = 1.0 - (v33 + v35);
                      v47 = vzip1q_s32(v46.u64[0], 0);
                      v46.i64[1] = v45;
                      *&v43.i32[2] = 1.0 - (v33 + v34);
                      v48 = vzip2q_s32(v42, v43);
                      v49 = vzip2q_s32(v46, xmmword_1E30474D0);
                      __dst[0] = vzip1q_s32(v44, v47);
                      __dst[1] = vzip2q_s32(v44, v47);
                      __dst[2] = vzip1q_s32(v48, v49);
                      __dst[3] = vzip2q_s32(v48, v49);
                      re::MaterialParameterBlock::setMatrix4x4F(v28, "matrixRotation", __dst, v165);
                      v165[0] = 0;
                      v50 = exp2f(*(v17 + 28));
                      re::MaterialParameterBlock::setFloat(v28, "intensityScale", v50, v164);
                      v164[0] = 0;
                      v51 = re::MaterialParameterBlock::deltaSynchronizedMaterialParameterTable(v28, v160);
                      re::MeshAssetLoader::sharedCube(*(v146 + 240), 1, v163);
                      v52 = re::AssetHandle::blockUntilLoaded<re::MeshAsset>(v163);
                      v53 = *(v18 + 312);
                      memset(__src, 0, 80);
                      *&__src[80] = v144;
                      *&v54 = 0x7F0000007FLL;
                      *(&v54 + 1) = 0x7F0000007FLL;
                      *&__src[96] = v54;
                      v202 = 0;
                      v204[0] = 0;
                      *&v204[8] = 0u;
                      memset(&__src[112], 0, 161);
                      memset(&__src[280], 0, 140);
                      if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
                      {
                        dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
                      }

                      *&v204[24] = re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash;
                      __asm { FMOV            V0.2S, #1.0 }

                      *&v205 = _D0;
                      DWORD2(v205) = 1065353216;
                      v206 = 0u;
                      memset(v207, 0, 19);
                      *&v207[20] = 0xFFFFFFFF00000001;
                      v207[28] = 0;
                      v208 = 0;
                      v211 = 0;
                      v212 = 0;
                      *v217 = 65537;
                      v217[4] = 1;
                      *&v217[8] = xmmword_1E3060D60;
                      *&v217[24] = 16788070;
                      v218 = 0;
                      *&v217[28] = 0;
                      re::MeshScene::setPrecomputedRenderMeshData(__src, v160, *(v52 + 1080), *(v52 + 1072), *(v52 + 1104), *(v52 + 1096), *(v52 + 1128), *(v52 + 1120), *(v52 + 1152), *(v52 + 1144), *(v52 + 1176), *(v52 + 1168));
                      v60 = v160;
                      *&__src[128] = *v219;
                      *&__src[144] = *&v219[16];
                      *&__src[160] = *&v219[32];
                      *&__src[176] = v220;
                      v61 = v19;
                      if (v158)
                      {
                        v62 = (*(*v160 + 32))(v160, 8, 8);
                        *v62 = v158;
                        *&__src[296] = v62;
                        v60 = v160;
                        *&__src[304] = 1;
                      }

                      v63 = *(v26 + 1776);
                      v64 = v60;
                      v65 = (*(*v60 + 32))(v60, 8, 8);
                      *v65 = v63;
                      *&__src[192] = v65;
                      *&__src[200] = 1;
                      v66 = (*(*v64 + 32))(v64, 8, 8);
                      *v66 = v51;
                      *&__src[280] = v66;
                      *&__src[288] = 1;
                      *&v207[8] = v53;
                      LODWORD(v67) = *v207 & 0xFFFFFFF7;
                      HIDWORD(v67) = *&v207[4] | 8;
                      *v207 = v67;
                      memcpy(__dst, __src, sizeof(__dst));
                      re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::HashBrown(&v176, &__src[352]);
                      v180 = *&__src[416];
                      v181 = v202;
                      if (v202 == 1)
                      {
                        v182 = v203;
                      }

                      v185 = v205;
                      v186 = v206;
                      v187[0] = *v207;
                      *(v187 + 13) = *&v207[13];
                      v183 = *v204;
                      v184 = *&v204[16];
                      v188 = v208;
                      if (v208 == 1)
                      {
                        v189 = v209;
                        v190 = v210;
                      }

                      v191 = v211;
                      v192 = v212;
                      if (v212 == 1)
                      {
                        v193 = v213;
                        v194 = v214;
                        v195 = v215;
                        v196 = v216;
                      }

                      v197 = *v217;
                      v198 = *&v217[16];
                      v199 = v218;
                      v200 = v53;
                      v172 = 0;
                      v173 = 0;
                      v174 = 0;
                      re::HashTable<unsigned long long,re::SkyboxSystem::updateSceneInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::SkyboxData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v172, &v166, v61);
                      if (HIDWORD(v173) == 0x7FFFFFFF)
                      {
                        v68 = re::HashTable<unsigned long long,re::SkyboxSystem::updateSceneInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::SkyboxData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(&v166, v173, v172);
                        *(v68 + 8) = v61;
                        memcpy((v68 + 16), __dst, 0x160uLL);
                        v69 = *(&v179 + 1);
                        *(v68 + 416) = v179;
                        *(v68 + 424) = v69;
                        v70 = v177;
                        *(v68 + 368) = v176;
                        *(v68 + 384) = v70;
                        v176 = 0u;
                        v177 = 0u;
                        *(v68 + 400) = v178;
                        v178 = 0u;
                        v179 = 0u;
                        *(v68 + 432) = v180;
                        LODWORD(v69) = v181;
                        *(v68 + 440) = v181;
                        if (v69 == 1)
                        {
                          *(v68 + 448) = v182;
                        }

                        v71 = v186;
                        *(v68 + 488) = v185;
                        *(v68 + 504) = v71;
                        *(v68 + 520) = v187[0];
                        *(v68 + 533) = *(v187 + 13);
                        v72 = v184;
                        *(v68 + 456) = v183;
                        *(v68 + 472) = v72;
                        v73 = v188;
                        *(v68 + 560) = v188;
                        if (v73 == 1)
                        {
                          v74 = v190;
                          *(v68 + 576) = v189;
                          *(v68 + 592) = v74;
                        }

                        *(v68 + 608) = v191;
                        v75 = v192;
                        *(v68 + 624) = v192;
                        if (v75 == 1)
                        {
                          v76 = v194;
                          *(v68 + 640) = v193;
                          *(v68 + 656) = v76;
                          v77 = v196;
                          *(v68 + 672) = v195;
                          *(v68 + 688) = v77;
                        }

                        v78 = v198;
                        *(v68 + 704) = v197;
                        *(v68 + 720) = v78;
                        *(v68 + 736) = v199;
                        *(v68 + 752) = v200;
                        ++HIDWORD(v169);
                      }

                      re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v176);
                      re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&__src[352]);
                      re::AssetHandle::~AssetHandle(v163);
                    }

                    else
                    {
                      re::AssetHandle::loadAsync((v17 + 32));
                    }
                  }
                }

                ++v15;
                v16 -= 8;
              }

              while (v16);
            }
          }

          v79 = *(*(v146 + 232) + 112);
          if (v79)
          {
            v80 = re::RenderFrameBox::get((v79 + 328), 0xFFFFFFFFFFFFFFFuLL);
          }

          else
          {
            v80 = 0;
          }

          v150 = v168;
          if (v168)
          {
            v81 = 0;
            v82 = v167;
            while ((*v82 & 0x80000000) == 0)
            {
              v82 += 196;
              if (v168 == ++v81)
              {
                LODWORD(v81) = v168;
                break;
              }
            }
          }

          else
          {
            LODWORD(v81) = 0;
          }

          if (v81 != v168)
          {
            v83 = v167;
            v148 = v80;
            while (1)
            {
              v84 = v83 + 784 * v81;
              re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(v149, *(v84 + 8), v80, &v172);
              v162 = v172 >> 1;
              v85 = re::RenderFrameData::stream((v80 + 33), &v162);
              re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::findEntry<std::type_index>(v85, v163, __dst);
              if (__dst[0].i32[3] == 0x7FFFFFFF)
              {
                v86 = *(*(v85 + 48) + 8);
                v87 = (*(*v86 + 32))(v86, 56, 8);
                *v87 = 0;
                *(v87 + 8) = 0;
                *(v87 + 16) = 1;
                *(v87 + 32) = 0;
                *(v87 + 40) = 0;
                *(v87 + 24) = 0;
                *(v87 + 48) = 0;
                v88 = re::BucketArray<re::MeshScene,4ul>::init(v87, v86, 1uLL);
                *&__src[24] = re::globalAllocators(v88)[2];
                *__src = &unk_1F5CEF9C8;
                *&__src[8] = v86;
                *&__src[32] = __src;
                __dst[0].i64[0] = std::__any_imp::_SmallHandler<re::BucketArray<re::MeshScene,4ul> *>::__handle[abi:nn200100];
                __dst[0].i64[1] = v87;
                __dst[3].i64[1] = *&__src[24];
                __dst[4].i64[0] = 0;
                re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::operator=<24ul>(&__dst[2], __src);
                v89 = re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::addNew(v85, v163, __dst);
                if (__dst[4].i64[0])
                {
                  *v219 = __dst;
                  (*(*__dst[4].i64[0] + 16))(__dst[4].i64[0], v219);
                }

                re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::destroyCallable(&__dst[2]);
                if (__dst[0].i64[0])
                {
                  (__dst[0].i64[0])(0, __dst, 0, 0, 0);
                }

                re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::destroyCallable(__src);
              }

              else
              {
                v89 = (*(v85 + 16) + 96 * __dst[0].u32[3] + 16);
              }

              v90 = v84 + 16;
              memcpy(__dst, (v84 + 16), sizeof(__dst));
              v92 = *(v84 + 424);
              *(&v179 + 1) = v92;
              *(v84 + 424) = 0;
              v93 = *(v84 + 368);
              *&v176 = v93;
              *(v84 + 368) = 0;
              v159 = *(v84 + 376);
              *(&v176 + 1) = v159;
              *(v84 + 376) = 0;
              v157 = *(v84 + 384);
              *&v177 = v157;
              *(v84 + 384) = 0;
              v156 = *(v84 + 408);
              *(&v178 + 1) = v156;
              *(v84 + 408) = 0;
              v155 = *(v84 + 416);
              *&v179 = v155;
              *(v84 + 416) = 0;
              v154 = *(v84 + 392);
              *(&v177 + 1) = v154;
              *(v84 + 392) = 0;
              v153 = *(v84 + 400);
              *&v178 = v153;
              *(v84 + 400) = 0;
              v152 = *(v84 + 432);
              v180 = v152;
              v181 = *(v84 + 440);
              v94 = v181;
              if (v181 == 1)
              {
                v147 = *(v90 + 432);
                v182 = v147;
              }

              v95 = *(v90 + 456);
              v183 = *(v90 + 440);
              v184 = v95;
              v96 = *(v90 + 472);
              v97 = *(v90 + 488);
              v98 = *(v90 + 504);
              *(v187 + 13) = *(v90 + 517);
              v186 = v97;
              v187[0] = v98;
              v185 = v96;
              v188 = *(v90 + 544);
              v99 = v188;
              if (v188 == 1)
              {
                v100 = *(v90 + 576);
                v189 = *(v90 + 560);
                v190 = v100;
              }

              v161 = v93;
              v101 = v92;
              v151 = *(v90 + 592);
              v191 = v151;
              v192 = *(v90 + 608);
              v102 = v192;
              if (v192 == 1)
              {
                v103 = *(v90 + 624);
                v104 = *(v90 + 640);
                v105 = *(v90 + 672);
                v195 = *(v90 + 656);
                v196 = v105;
                v193 = v103;
                v194 = v104;
              }

              v106 = *(v90 + 688);
              v107 = *(v90 + 704);
              v199 = *(v90 + 720);
              v197 = v106;
              v198 = v107;
              v108 = *(v91 + 40);
              v109 = *(v91 + 8);
              if (v108 + 1 > 4 * v109)
              {
                re::BucketArray<re::MeshScene,4ul>::setBucketsCapacity(v91, (v108 + 4) >> 2);
                v109 = *(v91 + 8);
              }

              v110 = v108 >> 2;
              if (v109 <= v108 >> 2)
              {
                break;
              }

              if (*(v91 + 16))
              {
                v111 = v91 + 24;
              }

              else
              {
                v111 = *(v91 + 32);
              }

              v112 = *(v111 + 8 * v110);
              ++*(v91 + 40);
              ++*(v91 + 48);
              v110 = v112 + 736 * (v108 & 3);
              memcpy(v110, __dst, 0x160uLL);
              *(v110 + 408) = v101;
              *(&v179 + 1) = 0;
              *(v110 + 352) = v161;
              *&v176 = 0;
              *(v110 + 360) = v159;
              *(&v176 + 1) = 0;
              *(v110 + 368) = v157;
              *&v177 = 0;
              *(v110 + 392) = v156;
              *(&v178 + 1) = 0;
              *(v110 + 400) = v155;
              *&v179 = 0;
              *(v110 + 376) = v154;
              *(&v177 + 1) = 0;
              *(v110 + 384) = v153;
              *&v178 = 0;
              *(v110 + 416) = v152;
              *(v110 + 424) = v94;
              if (v94)
              {
                *(v110 + 432) = v147;
              }

              v113 = v184;
              *(v110 + 440) = v183;
              *(v110 + 456) = v113;
              v114 = v185;
              v115 = v186;
              v116 = v187[0];
              *(v110 + 517) = *(v187 + 13);
              *(v110 + 488) = v115;
              *(v110 + 504) = v116;
              *(v110 + 472) = v114;
              *(v110 + 544) = v99;
              if (v99)
              {
                v117 = v190;
                *(v110 + 560) = v189;
                *(v110 + 576) = v117;
              }

              *(v110 + 592) = v151;
              *(v110 + 608) = v102;
              if (v102)
              {
                v118 = v193;
                v119 = v194;
                v120 = v196;
                *(v110 + 656) = v195;
                *(v110 + 672) = v120;
                *(v110 + 624) = v118;
                *(v110 + 640) = v119;
              }

              v121 = v197;
              v122 = v198;
              *(v110 + 720) = v199;
              *(v110 + 688) = v121;
              *(v110 + 704) = v122;
              v124 = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v176);
              v125 = *(v91 + 40);
              v80 = v148;
              if (!v125)
              {
                goto LABEL_116;
              }

              re::BucketArray<re::MeshScene,4ul>::operator[](v91, v125 - 1);
              v163[0] = v172 >> 1;
              v126 = re::RenderFrameData::stream((v148 + 33), v163);
              re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::findEntry<std::type_index>(v126, v219, __dst);
              if (__dst[0].i32[3] == 0x7FFFFFFF)
              {
                v127 = *(*(v126 + 48) + 8);
                v128 = (*(*v127 + 32))(v127, 56, 8);
                *v128 = 0;
                *(v128 + 8) = 0;
                *(v128 + 16) = 1;
                *(v128 + 32) = 0;
                *(v128 + 40) = 0;
                *(v128 + 24) = 0;
                *(v128 + 48) = 0;
                v129 = re::BucketArray<re::ecs2::SkyboxMeshID,4ul>::init(v128, v127, 1uLL);
                __dst[0].i64[0] = std::__any_imp::_SmallHandler<re::BucketArray<re::ecs2::SkyboxMeshID,4ul> *>::__handle[abi:nn200100];
                __dst[0].i64[1] = v128;
                __dst[3].i64[1] = re::globalAllocators(v129)[2];
                __dst[4].i64[0] = 0;
                v130 = re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::addNew(v126, v219, __dst);
                if (__dst[4].i64[0])
                {
                  *__src = __dst;
                  (*(*__dst[4].i64[0] + 16))(__dst[4].i64[0], __src);
                }

                re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::destroyCallable(&__dst[2]);
                if (__dst[0].i64[0])
                {
                  (__dst[0].i64[0])(0, __dst, 0, 0, 0);
                }
              }

              else
              {
                v130 = (*(v126 + 16) + 96 * __dst[0].u32[3] + 16);
              }

              v133 = *v131;
              v134 = *(v90 + 736);
              v135 = *(*v131 + 40);
              v110 = *(*v131 + 8);
              if (v135 + 1 > 4 * v110)
              {
                re::BucketArray<re::ecs2::SkyboxMeshID,4ul>::setBucketsCapacity(*v131, (v135 + 4) >> 2);
                v110 = *(v133 + 8);
              }

              v94 = v135 >> 2;
              if (v110 <= v135 >> 2)
              {
                goto LABEL_117;
              }

              if (*(v133 + 16))
              {
                v136 = v133 + 24;
              }

              else
              {
                v136 = *(v133 + 32);
              }

              v137 = *(v136 + 8 * v94);
              ++*(v133 + 40);
              ++*(v133 + 48);
              *(v137 + 8 * (v135 & 3)) = v134;
              v138 = *(v133 + 40);
              if (!v138)
              {
                goto LABEL_118;
              }

              v139 = re::BucketArray<unsigned long,4ul>::operator[](v133, v138 - 1);
              if (v172)
              {
                if (v172)
                {
                }
              }

              if (v168 <= v81 + 1)
              {
                v140 = v81 + 1;
              }

              else
              {
                v140 = v168;
              }

              v83 = v167;
              while (v140 - 1 != v81)
              {
                LODWORD(v81) = v81 + 1;
                if ((*(v167 + 784 * v81) & 0x80000000) != 0)
                {
                  goto LABEL_108;
                }
              }

              LODWORD(v81) = v140;
LABEL_108:
              if (v81 == v150)
              {
                goto LABEL_109;
              }
            }

            v163[0] = 0;
            memset(__src, 0, 80);
            v94 = MEMORY[0x1E69E9C10];
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v219 = 136315906;
            *&v219[4] = "operator[]";
            *&v219[12] = 1024;
            *&v219[14] = 858;
            *&v219[18] = 2048;
            *&v219[20] = v108 >> 2;
            *&v219[28] = 2048;
            *&v219[30] = v109;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_116:
            re::internal::assertLog(4, v123, v124, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
            _os_crash();
            __break(1u);
LABEL_117:
            *v219 = 0;
            memset(__dst, 0, 80);
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *__src = 136315906;
            *&__src[4] = "operator[]";
            *&__src[12] = 1024;
            *&__src[14] = 858;
            *&__src[18] = 2048;
            *&__src[20] = v94;
            *&__src[28] = 2048;
            *&__src[30] = v110;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_118:
            re::internal::assertLog(4, v132, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
            _os_crash();
            __break(1u);
LABEL_119:
            re::internal::assertLog(4, v9, "assertion failure: '%s' (%s:line %i) ", "m_assetService", "updateSceneInternal", 114);
            _os_crash();
            __break(1u);
LABEL_120:
            re::internal::assertLog(4, v9, "assertion failure: '%s' (%s:line %i) ", "m_renderManager", "updateSceneInternal", 115);
            _os_crash();
            __break(1u);
          }

LABEL_109:
          v141 = re::ecs2::SceneComponentTable::get((v149 + 200), re::ecs2::ComponentImpl<re::ecs2::SkyboxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          v4 = v146;
          if (!v141 || !*(v141 + 384))
          {
            v142 = *(v149 + 47);
            __dst[0].i64[0] = re::ecs2::ComponentImpl<re::ecs2::SkyboxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
            re::ecs2::SystemSchedulingDisabler::disableSchedulingIfNoComponent(v146, v142, __dst, 1);
          }

          re::HashTable<unsigned long long,re::SkyboxSystem::updateSceneInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::SkyboxData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::~HashTable(&v166);
          re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v170);
          result = re::ProfilerTimeGuard<(re::ProfilerStatistic)122>::end(v171);
          v5 = v145;
          v6 = v143;
        }
      }

      ++v5;
    }

    while (v5 != v6);
  }

  return result;
}

uint64_t *re::HashTable<unsigned long long,re::SkyboxSystem::updateSceneInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::SkyboxData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::~HashTable(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      v5 = 368;
      do
      {
        v6 = a1[2] + v5;
        v7 = *(v6 - 368);
        if (v7 < 0)
        {
          *(v6 - 368) = v7 & 0x7FFFFFFF;
          re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v6);
          v3 = *(a1 + 8);
        }

        ++v4;
        v5 += 784;
      }

      while (v4 < v3);
      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return a1;
}

void re::SkyboxSystem::~SkyboxSystem(re::SkyboxSystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs215SkyboxComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 1;
  *(a2 + 8) = 0;
  return result;
}

uint64_t re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::SkyboxComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::SkyboxComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::SkyboxComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
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

void re::HashTable<unsigned long long,re::SkyboxSystem::updateSceneInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::SkyboxData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = v7 + 1;
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 784 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &unk_1E304C660, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash();
    __break(1u);
  }
}

uint64_t re::HashTable<unsigned long long,re::SkyboxSystem::updateSceneInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::SkyboxData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) >> 27));
  v4 = v3 ^ (v3 >> 31);
  v5 = *a2;
  LODWORD(v6) = 0x7FFFFFFF;
  if (!*a2)
  {
    v7 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v5 = v4 % *(a2 + 24);
  v7 = *(*(a2 + 8) + 4 * v5);
  if (v7 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v8 = *(a2 + 16);
  if (*(v8 + 784 * v7 + 8) == a3)
  {
    LODWORD(v6) = *(*(a2 + 8) + 4 * v5);
LABEL_5:
    v7 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v6 = *(v8 + 784 * v7) & 0x7FFFFFFF;
  if (v6 == 0x7FFFFFFF)
  {
    LODWORD(v6) = 0x7FFFFFFF;
  }

  else if (*(v8 + 784 * v6 + 8) != a3)
  {
    LODWORD(v9) = *(v8 + 784 * v7) & 0x7FFFFFFF;
    while (1)
    {
      v7 = v9;
      v9 = *(v8 + 784 * v6) & 0x7FFFFFFF;
      LODWORD(v6) = 0x7FFFFFFF;
      if (v9 == 0x7FFFFFFF)
      {
        break;
      }

      v6 = v9;
      if (*(v8 + 784 * v9 + 8) == a3)
      {
        LODWORD(v6) = v9;
        break;
      }
    }
  }

LABEL_7:
  *result = v4;
  *(result + 8) = v5;
  *(result + 12) = v6;
  *(result + 16) = v7;
  return result;
}

uint64_t re::HashTable<unsigned long long,re::SkyboxSystem::updateSceneInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::SkyboxData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v40, 0, 36);
          *&v40[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::SkyboxSystem::updateSceneInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::SkyboxData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v40, v9, v8);
          v11 = *v40;
          *v40 = *a1;
          *a1 = v11;
          v12 = *&v40[16];
          v13 = *(a1 + 16);
          *&v40[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v40[24];
          *&v40[24] = *(a1 + 24);
          v14 = *&v40[32];
          *(a1 + 24) = v15;
          ++*&v40[40];
          if (v14)
          {
            v16 = 0;
            v17 = 784 * v14;
            do
            {
              if ((*(v13 + v16) & 0x80000000) != 0)
              {
                v18 = v13 + v16;
                v19 = re::HashTable<unsigned long long,re::SkyboxSystem::updateSceneInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::SkyboxData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v13 + v16 + 768) % *(a1 + 24));
                *(v19 + 8) = *(v13 + v16 + 8);
                memcpy((v19 + 16), (v13 + v16 + 16), 0x160uLL);
                *(v19 + 368) = 0u;
                *(v19 + 384) = 0u;
                *(v19 + 400) = 0u;
                *(v19 + 416) = 0u;
                re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap((v19 + 368), (v13 + v16 + 368));
                *(v19 + 432) = *(v13 + v16 + 432);
                v20 = *(v13 + v16 + 440);
                *(v19 + 440) = v20;
                if (v20 == 1)
                {
                  *(v19 + 448) = *(v18 + 448);
                }

                v21 = *(v18 + 472);
                *(v19 + 456) = *(v18 + 456);
                *(v19 + 472) = v21;
                v22 = *(v18 + 488);
                v23 = *(v18 + 504);
                v24 = *(v18 + 520);
                *(v19 + 533) = *(v18 + 533);
                *(v19 + 504) = v23;
                *(v19 + 520) = v24;
                *(v19 + 488) = v22;
                v25 = *(v18 + 560);
                *(v19 + 560) = v25;
                if (v25 == 1)
                {
                  v26 = *(v13 + v16 + 592);
                  *(v19 + 576) = *(v13 + v16 + 576);
                  *(v19 + 592) = v26;
                }

                v27 = v13 + v16;
                *(v19 + 608) = *(v13 + v16 + 608);
                v28 = *(v13 + v16 + 624);
                *(v19 + 624) = v28;
                if (v28 == 1)
                {
                  v29 = *(v27 + 640);
                  v30 = *(v27 + 656);
                  v31 = *(v27 + 688);
                  *(v19 + 672) = *(v27 + 672);
                  *(v19 + 688) = v31;
                  *(v19 + 640) = v29;
                  *(v19 + 656) = v30;
                }

                v32 = *(v27 + 704);
                v33 = *(v27 + 720);
                *(v19 + 736) = *(v27 + 736);
                *(v19 + 704) = v32;
                *(v19 + 720) = v33;
                *(v19 + 752) = *(v27 + 752);
              }

              v16 += 784;
            }

            while (v17 != v16);
          }

          re::HashTable<unsigned long long,re::SkyboxSystem::updateSceneInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::SkyboxData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::~HashTable(v40);
        }
      }

      else
      {
        if (v8)
        {
          v36 = 2 * v7;
        }

        else
        {
          v36 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v34 = *(a1 + 16);
    v35 = *(v34 + 784 * v5);
  }

  else
  {
    v34 = *(a1 + 16);
    v35 = *(v34 + 784 * v5);
    *(a1 + 36) = v35 & 0x7FFFFFFF;
  }

  v37 = v34 + 784 * v5;
  *v37 = v35 | 0x80000000;
  v38 = *(a1 + 8);
  *v37 = *(v38 + 4 * a2) | 0x80000000;
  *(v38 + 4 * a2) = v5;
  *(v37 + 768) = a3;
  ++*(a1 + 28);
  return v34 + 784 * v5;
}

void *re::BucketArray<re::MeshScene,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::MeshScene,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::MeshScene,4ul>::setBucketsCapacity(void *result, unint64_t a2)
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
          result = (*(**v3 + 32))(*v3, 2944, 0);
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

void *std::__any_imp::_SmallHandler<re::BucketArray<re::MeshScene,4ul> *>::__handle[abi:nn200100](int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      v9 = a2[1];
      *a3 = std::__any_imp::_SmallHandler<re::BucketArray<re::MeshScene,4ul> *>::__handle[abi:nn200100];
      a3[1] = v9;
      return result;
    }

    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v8 = a2[1];
    *a3 = std::__any_imp::_SmallHandler<re::BucketArray<re::MeshScene,4ul> *>::__handle[abi:nn200100];
    a3[1] = v8;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
  }

  if (a4)
  {
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<re::BucketArray<re::MeshScene,4ul> *>::__id;
  }

  if (v6)
  {
    return a2 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t *re::internal::Callable<re::RenderFrameDataArrayWrapper & re::RenderFrameDataStream::getOrAddDataArrayWrapper<re::MeshScene>(void)::{lambda(re::RenderFrameDataArrayWrapper*)#1},void ()(re::RenderFrameDataArrayWrapper*)>::operator()(uint64_t a1, uint64_t (***a2)(uint64_t))
{
  v2 = *(a1 + 8);
  result = (**a2)(3);
  v4 = *result;
  if (*result)
  {
    v5 = *(v4 + 40);
    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        v7 = re::BucketArray<re::MeshScene,4ul>::operator[](v4, i);
        re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v7 + 352);
      }
    }

    while (*(v4 + 8))
    {
      re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v4);
    }

    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v4);
    *(v4 + 40) = 0;
    ++*(v4 + 48);
    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v4);
    v8 = *(*v2 + 40);

    return v8(v2, v4);
  }

  return result;
}

void *re::internal::Callable<re::RenderFrameDataArrayWrapper & re::RenderFrameDataStream::getOrAddDataArrayWrapper<re::MeshScene>(void)::{lambda(re::RenderFrameDataArrayWrapper*)#1},void ()(re::RenderFrameDataArrayWrapper*)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEF9C8;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::RenderFrameDataArrayWrapper & re::RenderFrameDataStream::getOrAddDataArrayWrapper<re::MeshScene>(void)::{lambda(re::RenderFrameDataArrayWrapper*)#1},void ()(re::RenderFrameDataArrayWrapper*)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEF9C8;
  a2[1] = v2;
  return a2;
}

uint64_t re::BucketArray<re::MeshScene,4ul>::operator[](uint64_t a1, unint64_t a2)
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

  return *(v3 + 8 * (a2 >> 2)) + 736 * (a2 & 3);
}

void *re::BucketArray<re::ecs2::SkyboxMeshID,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::SkyboxMeshID,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::ecs2::SkyboxMeshID,4ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 4 * a2)
    {
      v4 = result[1];
      if (v4 > a2)
      {
        v5 = *(result + 4);
        do
        {
          v6 = v3 + 3;
          if ((v5 & 1) == 0)
          {
            v6 = v3[4];
          }

          result = (*(**v3 + 40))(*v3, v6[v4 - 1]);
          v7 = *(v3 + 4);
          v4 = v3[1] - 1;
          v3[1] = v4;
          v5 = v7 + 2;
          *(v3 + 4) = v5;
        }

        while (v4 > a2);
      }

      if (v4 < a2)
      {
        v8 = v3 + 3;
        do
        {
          result = (*(**v3 + 32))(*v3, 32, 0);
          v9 = result;
          if (*v3)
          {
            v10 = v3[1];
            v11 = *(v3 + 4);
            if ((v11 & 1) == 0)
            {
              v12 = *v8;
              v14 = v10 >= *v8;
              v13 = v10 + 1;
              v14 = !v14 || v12 >= v13;
              if (v14)
              {
                goto LABEL_24;
              }

              v15 = 2 * v12;
              goto LABEL_20;
            }

            v13 = v10 + 1;
            if (v13 >= 3)
            {
              v15 = 4;
LABEL_20:
              if (v15 <= v13)
              {
                v17 = v13;
              }

              else
              {
                v17 = v15;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v17);
              v11 = *(v3 + 4);
            }
          }

          else
          {
            v16 = v3[1];
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v16 + 1);
            v11 = *(v3 + 4) + 2;
            *(v3 + 4) = v11;
          }

LABEL_24:
          v18 = v3 + 3;
          if ((v11 & 1) == 0)
          {
            v18 = v3[4];
          }

          v19 = v3[1];
          v18[v19++] = v9;
          v3[1] = v19;
          *(v3 + 4) += 2;
        }

        while (v19 < a2);
      }
    }
  }

  else
  {
  }

  return result;
}

void *std::__any_imp::_SmallHandler<re::BucketArray<re::ecs2::SkyboxMeshID,4ul> *>::__handle[abi:nn200100](int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      v9 = a2[1];
      *a3 = std::__any_imp::_SmallHandler<re::BucketArray<re::ecs2::SkyboxMeshID,4ul> *>::__handle[abi:nn200100];
      a3[1] = v9;
      return result;
    }

    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v8 = a2[1];
    *a3 = std::__any_imp::_SmallHandler<re::BucketArray<re::ecs2::SkyboxMeshID,4ul> *>::__handle[abi:nn200100];
    a3[1] = v8;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
  }

  if (a4)
  {
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<re::BucketArray<re::ecs2::SkyboxMeshID,4ul> *>::__id;
  }

  if (v6)
  {
    return a2 + 1;
  }

  else
  {
    return 0;
  }
}

void *re::ecs2::allocInfo_SpecifyLaneCommand(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A79B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A79B8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A7C80, "SpecifyLaneCommand");
    __cxa_guard_release(&qword_1EE1A79B8);
  }

  return &unk_1EE1A7C80;
}

void re::ecs2::initInfo_SpecifyLaneCommand(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v14[0] = 0xF5E828FC47FA9F7CLL;
  v14[1] = "SpecifyLaneCommand";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1A79C0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A79C0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::DynamicString>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "lane";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1A7A40 = v9;
      v10 = re::introspectionAllocator(v9);
      re::IntrospectionInfo<re::AssetHandle [2]>::get(v10, v11);
      v12 = (*(*v10 + 32))(v10, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "renderTarget";
      *(v12 + 16) = &unk_1EE1A7B40;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x2000000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1A7A48 = v12;
      __cxa_guard_release(&qword_1EE1A79C0);
    }
  }

  *(this + 2) = 0x8800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1A7A40;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::SpecifyLaneCommand>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::SpecifyLaneCommand>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::SpecifyLaneCommand>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::SpecifyLaneCommand>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v13 = v15;
}

void re::IntrospectionInfo<re::AssetHandle [2]>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A7A10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A7A10))
  {
    re::IntrospectionCStyleArray::IntrospectionCStyleArray(&unk_1EE1A7B40);
    __cxa_guard_release(&qword_1EE1A7A10);
  }

  if ((_MergedGlobals_242 & 1) == 0)
  {
    _MergedGlobals_242 = 1;
    v2 = re::introspect_AssetHandle(1, a2);
    re::IntrospectionCStyleArray::IntrospectionCStyleArray(&unk_1EE1A7B40, v2, 2);
    re::IntrospectionRegistry::add(&unk_1EE1A7B40, v3);
    re::getPrettyTypeName(&unk_1EE1A7B40, &v7);
    if (BYTE8(v7))
    {
      v4 = v8;
    }

    else
    {
      v4 = &v7 + 9;
    }

    if (v7 && (BYTE8(v7) & 1) != 0)
    {
      (*(*v7 + 40))();
    }

    v7 = *(v2 + 2);
    xmmword_1EE1A7B60 = v6;
    if (v9)
    {
      if (v9)
      {
      }
    }
  }
}

double re::internal::defaultConstruct<re::ecs2::SpecifyLaneCommand>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  re::DynamicString::setCapacity(a3, 0);
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 32) = 0u;
  result = NAN;
  *(a3 + 80) = -1;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 116) = 0u;
  return result;
}

double re::internal::defaultDestruct<re::ecs2::SpecifyLaneCommand>(uint64_t a1, uint64_t a2, re::DynamicString *a3)
{
  for (i = 112; i != 96; i -= 8)
  {
    v5 = *(a3 + i);
    if (v5)
    {

      *(a3 + i) = 0;
    }
  }

  do
  {
    v6 = *(a3 + i);
    if (v6)
    {

      *(a3 + i) = 0;
    }

    i -= 8;
  }

  while (i != 80);
  for (j = 56; j != 8; j -= 24)
  {
    re::AssetHandle::~AssetHandle((a3 + j));
  }

  return re::DynamicString::deinit(a3);
}

double re::internal::defaultConstructV2<re::ecs2::SpecifyLaneCommand>(uint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  re::DynamicString::setCapacity(a1, 0);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  result = NAN;
  *(a1 + 80) = -1;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 116) = 0u;
  return result;
}

double re::internal::defaultDestructV2<re::ecs2::SpecifyLaneCommand>(re::DynamicString *a1)
{
  for (i = 112; i != 96; i -= 8)
  {
    v3 = *(a1 + i);
    if (v3)
    {

      *(a1 + i) = 0;
    }
  }

  do
  {
    v4 = *(a1 + i);
    if (v4)
    {

      *(a1 + i) = 0;
    }

    i -= 8;
  }

  while (i != 80);
  for (j = 56; j != 8; j -= 24)
  {
    re::AssetHandle::~AssetHandle((a1 + j));
  }

  return re::DynamicString::deinit(a1);
}

void re::IntrospectionInfo<re::DynamicArray<re::ecs2::ScopeLanePair>>::get()
{
  if ((atomic_load_explicit(&qword_1EE1A7A18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A7A18))
  {
    re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1A7A80);
    qword_1EE1A7A80 = &unk_1F5CEFBD8;
    __cxa_guard_release(&qword_1EE1A7A18);
  }

  if ((byte_1EE1A79B1 & 1) == 0)
  {
    v0 = re::ecs2::introspect_ScopeLanePair(1);
    if ((byte_1EE1A79B1 & 1) == 0)
    {
      v1 = v0;
      byte_1EE1A79B1 = 1;
      v2 = *(v0 + 24);
      ArcSharedObject::ArcSharedObject(&qword_1EE1A7A80, 0);
      *&algn_1EE1A7A88[8] = 0x2800000003;
      *&algn_1EE1A7A88[16] = v2;
      *&algn_1EE1A7A88[20] = 0;
      *&xmmword_1EE1A7AA0 = 0;
      *(&xmmword_1EE1A7AA0 + 1) = 0xFFFFFFFFLL;
      unk_1EE1A7AB0 = v1;
      qword_1EE1A7AB8 = 0;
      qword_1EE1A7A80 = &unk_1F5CEFBD8;
      re::IntrospectionRegistry::add(v3, v4);
      re::getPrettyTypeName(&qword_1EE1A7A80, &v12);
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
        re::TypeBuilder::setConstructor(&v12, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ScopeLanePair>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v12, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ScopeLanePair>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v12, 1);
        re::TypeBuilder::setListAccessors(&v12, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ScopeLanePair>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ScopeLanePair>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v12, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ScopeLanePair>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v12, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ScopeLanePair>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ScopeLanePair>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ScopeLanePair>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v12, v7);
        re::StackScratchAllocator::~StackScratchAllocator(v15);
      }

      xmmword_1EE1A7AA0 = v8;
      if (v10)
      {
        if (v10)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::ecs2::ScopeLanePair> [2]>::get()
{
  if ((atomic_load_explicit(&qword_1EE1A7A20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A7A20))
  {
    re::IntrospectionCStyleArray::IntrospectionCStyleArray(&unk_1EE1A7B88);
    __cxa_guard_release(&qword_1EE1A7A20);
  }

  if ((byte_1EE1A79B2 & 1) == 0)
  {
    byte_1EE1A79B2 = 1;
    re::IntrospectionInfo<re::DynamicArray<re::ecs2::ScopeLanePair>>::get();
    re::IntrospectionCStyleArray::IntrospectionCStyleArray(&unk_1EE1A7B88, &qword_1EE1A7A80, 2);
    re::IntrospectionRegistry::add(&unk_1EE1A7B88, v0);
    re::getPrettyTypeName(&unk_1EE1A7B88, &v4);
    if (BYTE8(v4))
    {
      v1 = v5;
    }

    else
    {
      v1 = &v4 + 9;
    }

    if (v4 && (BYTE8(v4) & 1) != 0)
    {
      (*(*v4 + 40))();
    }

    v4 = xmmword_1EE1A7AA0;
    xmmword_1EE1A7BA8 = v3;
    if (v6)
    {
      if (v6)
      {
      }
    }
  }
}

void re::IntrospectionInfo<re::ecs2::CameraViewport [2]>::get()
{
  if ((atomic_load_explicit(&qword_1EE1A7A28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A7A28))
  {
    re::IntrospectionCStyleArray::IntrospectionCStyleArray(&unk_1EE1A7BD0);
    __cxa_guard_release(&qword_1EE1A7A28);
  }

  if ((byte_1EE1A79B3 & 1) == 0)
  {
    byte_1EE1A79B3 = 1;
    v0 = re::ecs2::introspect_CameraViewport(1);
    re::IntrospectionCStyleArray::IntrospectionCStyleArray(&unk_1EE1A7BD0, v0, 2);
    re::IntrospectionRegistry::add(&unk_1EE1A7BD0, v1);
    re::getPrettyTypeName(&unk_1EE1A7BD0, &v5);
    if (BYTE8(v5))
    {
      v2 = v6;
    }

    else
    {
      v2 = &v5 + 9;
    }

    if (v5 && (BYTE8(v5) & 1) != 0)
    {
      (*(*v5 + 40))();
    }

    v5 = *(v0 + 2);
    xmmword_1EE1A7BF0 = v4;
    if (v7)
    {
      if (v7)
      {
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::ecs2::SpecifyLaneCommand>>::get(re::ecs2 *a1)
{
  if ((atomic_load_explicit(&qword_1EE1A7A30, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1A7A30);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1A7AC0);
      qword_1EE1A7AC0 = &unk_1F5CEFC70;
      __cxa_guard_release(&qword_1EE1A7A30);
    }
  }

  if ((byte_1EE1A79B4 & 1) == 0)
  {
    v1 = qword_1EE1A79C8;
    if (qword_1EE1A79C8 || (v1 = re::ecs2::allocInfo_SpecifyLaneCommand(a1), qword_1EE1A79C8 = v1, re::ecs2::initInfo_SpecifyLaneCommand(v1, v2), (byte_1EE1A79B4 & 1) == 0))
    {
      byte_1EE1A79B4 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1A7AC0, 0);
      qword_1EE1A7AD0 = 0x2800000003;
      dword_1EE1A7AD8 = v3;
      word_1EE1A7ADC = 0;
      *&xmmword_1EE1A7AE0 = 0;
      *(&xmmword_1EE1A7AE0 + 1) = 0xFFFFFFFFLL;
      qword_1EE1A7AF0 = v1;
      unk_1EE1A7AF8 = 0;
      qword_1EE1A7AC0 = &unk_1F5CEFC70;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE1A7AC0, &v13);
      if (v14)
      {
        v6 = *&v15[7];
      }

      else
      {
        v6 = v15;
      }

      if (v13 && (v14 & 1) != 0)
      {
        (*(*v13 + 40))();
      }

      v10 = *(v1 + 2);
      if (v17)
      {
        v9 = v17;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v16);
        re::TypeBuilder::TypeBuilder(&v13, v16);
        v12 = v10;
        re::TypeBuilder::beginListType(&v13, &v11, 1, 0x28uLL, 8uLL, &v12);
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SpecifyLaneCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SpecifyLaneCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SpecifyLaneCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SpecifyLaneCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SpecifyLaneCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SpecifyLaneCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SpecifyLaneCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SpecifyLaneCommand>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE1A7AE0 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void *re::ecs2::allocInfo_CameraViewDescriptor(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A79D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A79D8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A7D10, "CameraViewDescriptor");
    __cxa_guard_release(&qword_1EE1A79D8);
  }

  return &unk_1EE1A7D10;
}

void re::ecs2::initInfo_CameraViewDescriptor(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v50[0] = 0xA0AAB9439DFEFD32;
  v50[1] = "CameraViewDescriptor";
  if (v50[0])
  {
    if (v50[0])
    {
    }
  }

  *(this + 2) = v51;
  if ((atomic_load_explicit(&qword_1EE1A79D0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A79D0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_AssetHandle(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "renderGraph";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1A7C18 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_BOOL(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "disableAA";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x1800000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1A7C20 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_BOOL(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "enableUnwarp";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x1A00000004;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1A7C28 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::introspect_BOOL(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "disableTonemapping";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x1900000005;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE1A7C30 = v21;
      v22 = re::introspectionAllocator(v21);
      v24 = re::introspect_BOOL(1, v23);
      v25 = (*(*v22 + 32))(v22, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "disableDebugDraw";
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0x1B00000006;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE1A7C38 = v25;
      v26 = re::introspectionAllocator(v25);
      v27 = re::introspect_Vector4F(1);
      v28 = (*(*v26 + 32))(v26, 72, 8);
      *v28 = 1;
      *(v28 + 8) = "clearColor";
      *(v28 + 16) = v27;
      *(v28 + 24) = 0;
      *(v28 + 32) = 0x3000000007;
      *(v28 + 40) = 0;
      *(v28 + 48) = 0;
      *(v28 + 56) = 0;
      *(v28 + 64) = 0;
      qword_1EE1A7C40 = v28;
      v29 = re::introspectionAllocator(v28);
      re::IntrospectionInfo<re::DynamicArray<re::ecs2::ScopeLanePair>>::get();
      v30 = (*(*v29 + 32))(v29, 72, 8);
      *v30 = 1;
      *(v30 + 8) = "pickupScopeLanes";
      *(v30 + 16) = &qword_1EE1A7A80;
      *(v30 + 24) = 0;
      *(v30 + 32) = 0x5000000009;
      *(v30 + 40) = 0;
      *(v30 + 48) = 0;
      *(v30 + 56) = 0;
      *(v30 + 64) = 0;
      qword_1EE1A7C48 = v30;
      v31 = re::introspectionAllocator(v30);
      re::IntrospectionInfo<re::DynamicArray<re::ecs2::ScopeLanePair> [2]>::get();
      v32 = (*(*v31 + 32))(v31, 72, 8);
      *v32 = 1;
      *(v32 + 8) = "pickupScopeLanesPerEye";
      *(v32 + 16) = &unk_1EE1A7B88;
      *(v32 + 24) = 0;
      *(v32 + 32) = 0x780000000ALL;
      *(v32 + 40) = 0;
      *(v32 + 48) = 0;
      *(v32 + 56) = 0;
      *(v32 + 64) = 0;
      qword_1EE1A7C50 = v32;
      v33 = re::introspectionAllocator(v32);
      v35 = re::introspect_ViewMode(1, v34);
      v36 = (*(*v33 + 32))(v33, 72, 8);
      *v36 = 1;
      *(v36 + 8) = "viewMode";
      *(v36 + 16) = v35;
      *(v36 + 24) = 0;
      *(v36 + 32) = 0xC80000000BLL;
      *(v36 + 40) = 0;
      *(v36 + 48) = 0;
      *(v36 + 56) = 0;
      *(v36 + 64) = 0;
      qword_1EE1A7C58 = v36;
      v37 = re::introspectionAllocator(v36);
      re::IntrospectionInfo<re::ecs2::CameraViewport [2]>::get();
      v38 = (*(*v37 + 32))(v37, 72, 8);
      *v38 = 1;
      *(v38 + 8) = "viewport";
      *(v38 + 16) = &unk_1EE1A7BD0;
      *(v38 + 24) = 0;
      *(v38 + 32) = 0xCC0000000CLL;
      *(v38 + 40) = 0;
      *(v38 + 48) = 0;
      *(v38 + 56) = 0;
      *(v38 + 64) = 0;
      qword_1EE1A7C60 = v38;
      v39 = re::introspectionAllocator(v38);
      re::IntrospectionInfo<re::DynamicArray<re::ecs2::SpecifyLaneCommand>>::get(v39);
      v40 = (*(*v39 + 32))(v39, 72, 8);
      *v40 = 1;
      *(v40 + 8) = "specifyCommands";
      *(v40 + 16) = &qword_1EE1A7AC0;
      *(v40 + 24) = 0;
      *(v40 + 32) = 0x3900000000DLL;
      *(v40 + 40) = 0;
      *(v40 + 48) = 0;
      *(v40 + 56) = 0;
      *(v40 + 64) = 0;
      qword_1EE1A7C68 = v40;
      v41 = re::introspectionAllocator(v40);
      v43 = re::introspect_BOOL(1, v42);
      v44 = (*(*v41 + 32))(v41, 72, 8);
      *v44 = 1;
      *(v44 + 8) = "forceHidePassthroughFeed";
      *(v44 + 16) = v43;
      *(v44 + 24) = 0;
      *(v44 + 32) = 0x1C00000013;
      *(v44 + 40) = 0;
      *(v44 + 48) = 0;
      *(v44 + 56) = 0;
      *(v44 + 64) = 0;
      qword_1EE1A7C70 = v44;
      v45 = re::introspectionAllocator(v44);
      v47 = re::introspect_BOOL(1, v46);
      v48 = (*(*v45 + 32))(v45, 72, 8);
      *v48 = 1;
      *(v48 + 8) = "skipManagedForceClear";
      *(v48 + 16) = v47;
      *(v48 + 24) = 0;
      *(v48 + 32) = 0x2000000014;
      *(v48 + 40) = 0;
      *(v48 + 48) = 0;
      *(v48 + 56) = 0;
      *(v48 + 64) = 0;
      qword_1EE1A7C78 = v48;
      __cxa_guard_release(&qword_1EE1A79D0);
    }
  }

  *(this + 2) = 0x3C000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 13;
  *(this + 8) = &qword_1EE1A7C18;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::CameraViewDescriptor>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::CameraViewDescriptor>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::CameraViewDescriptor>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::CameraViewDescriptor>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v49 = v51;
}

double re::internal::defaultConstruct<re::ecs2::CameraViewDescriptor>(re *a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 32) = 0;
  v4 = (a3 + 436);
  *(a3 + 48) = xmmword_1E30474D0;
  *(a3 + 68) = 117440767;
  *(a3 + 204) = xmmword_1E308B878;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 64) = 0;
  *(a3 + 72) = -1;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0;
  *(a3 + 192) = 0;
  *(a3 + 200) = 0;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0;
  *(a3 + 184) = 0;
  *(a3 + 168) = 0u;
  *(a3 + 152) = 0u;
  *(a3 + 220) = unk_1E308B888;
  *(a3 + 240) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 288) = 0u;
  v5 = re::globalAllocators(a1);
  v6 = (*(*v5[2] + 32))(v5[2], 272, 8);
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 2) = 0u;
  *(v6 + 3) = 0u;
  *(v6 + 4) = 0u;
  *(v6 + 5) = 0u;
  *(v6 + 6) = 0u;
  *(v6 + 7) = 0u;
  *(v6 + 8) = 0u;
  *(v6 + 9) = 0u;
  *(v6 + 10) = 0u;
  *(v6 + 11) = 0u;
  *(v6 + 12) = 0u;
  *(v6 + 13) = 0u;
  *(v6 + 14) = 0u;
  *(v6 + 15) = 0u;
  *(v6 + 16) = 0u;
  *(a3 + 304) = v6;
  *(a3 + 312) = -1;
  *(a3 + 320) = 1;
  *(a3 + 322) = 0;
  *(a3 + 352) = re::globalAllocators(v6)[2];
  *(a3 + 360) = 0;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  re::Pose<float>::Pose(v14, 0, 0, &v11);
  v7 = v14[1];
  *(a3 + 368) = v14[0];
  *(a3 + 384) = v7;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  re::Pose<float>::Pose(v10, 0, 0, &v11);
  v8 = v10[1];
  *(a3 + 400) = v10[0];
  *(a3 + 416) = v8;
  *(a3 + 432) = 0;
  *v4 = xmmword_1E308B7C0;
  *(a3 + 452) = 0xBDCCCCCD3DCCCCCDLL;
  *(a3 + 460) = 0;
  *(a3 + 464) = xmmword_1E30476A0;
  *(a3 + 480) = 1;
  *(a3 + 488) = 0;
  *(a3 + 496) = 0;
  *(a3 + 512) = 0;
  *(a3 + 592) = 0;
  *(a3 + 672) = 0;
  v4[15] = xmmword_1E308B7C0;
  *(a3 + 692) = 0xBDCCCCCD3DCCCCCDLL;
  *(a3 + 700) = 0;
  *(a3 + 704) = xmmword_1E30476A0;
  *(a3 + 720) = 1;
  *(a3 + 728) = 0;
  *(a3 + 736) = 0;
  *(a3 + 752) = 0;
  *(a3 + 832) = 0;
  *(a3 + 944) = 0;
  *(a3 + 936) = 0;
  *(a3 + 928) = 0;
  result = 0.0;
  *(a3 + 912) = 0u;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::CameraViewDescriptor>(uint64_t a1)
{
  *(a1 + 32) = 0;
  v2 = (a1 + 436);
  *(a1 + 48) = xmmword_1E30474D0;
  *(a1 + 68) = 117440767;
  *(a1 + 204) = xmmword_1E308B878;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = -1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 220) = unk_1E308B888;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 272, 8);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  *(v4 + 5) = 0u;
  *(v4 + 6) = 0u;
  *(v4 + 7) = 0u;
  *(v4 + 8) = 0u;
  *(v4 + 9) = 0u;
  *(v4 + 10) = 0u;
  *(v4 + 11) = 0u;
  *(v4 + 12) = 0u;
  *(v4 + 13) = 0u;
  *(v4 + 14) = 0u;
  *(v4 + 15) = 0u;
  *(v4 + 16) = 0u;
  *(a1 + 304) = v4;
  *(a1 + 312) = -1;
  *(a1 + 320) = 1;
  *(a1 + 322) = 0;
  *(a1 + 352) = re::globalAllocators(v4)[2];
  *(a1 + 360) = 0;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  re::Pose<float>::Pose(v12, 0, 0, &v9);
  v5 = v12[1];
  *(a1 + 368) = v12[0];
  *(a1 + 384) = v5;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  re::Pose<float>::Pose(v8, 0, 0, &v9);
  v6 = v8[1];
  *(a1 + 400) = v8[0];
  *(a1 + 416) = v6;
  *(a1 + 432) = 0;
  *v2 = xmmword_1E308B7C0;
  *(a1 + 452) = 0xBDCCCCCD3DCCCCCDLL;
  *(a1 + 460) = 0;
  *(a1 + 464) = xmmword_1E30476A0;
  *(a1 + 480) = 1;
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  *(a1 + 512) = 0;
  *(a1 + 592) = 0;
  *(a1 + 672) = 0;
  v2[15] = xmmword_1E308B7C0;
  *(a1 + 692) = 0xBDCCCCCD3DCCCCCDLL;
  *(a1 + 700) = 0;
  *(a1 + 704) = xmmword_1E30476A0;
  *(a1 + 720) = 1;
  *(a1 + 728) = 0;
  *(a1 + 736) = 0;
  *(a1 + 752) = 0;
  *(a1 + 832) = 0;
  *(a1 + 944) = 0;
  *(a1 + 936) = 0;
  *(a1 + 928) = 0;
  result = 0.0;
  *(a1 + 912) = 0u;
  return result;
}

void re::IntrospectionInfo<re::DynamicArray<re::ecs2::CameraViewDescriptor>>::get(re::ecs2 *a1)
{
  if ((atomic_load_explicit(&qword_1EE1A7A38, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1A7A38);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1A7B00);
      qword_1EE1A7B00 = &unk_1F5CEFD08;
      __cxa_guard_release(&qword_1EE1A7A38);
    }
  }

  if ((byte_1EE1A79B5 & 1) == 0)
  {
    v1 = qword_1EE1A79E0;
    if (qword_1EE1A79E0 || (v1 = re::ecs2::allocInfo_CameraViewDescriptor(a1), qword_1EE1A79E0 = v1, re::ecs2::initInfo_CameraViewDescriptor(v1, v2), (byte_1EE1A79B5 & 1) == 0))
    {
      byte_1EE1A79B5 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1A7B00, 0);
      qword_1EE1A7B10 = 0x2800000003;
      dword_1EE1A7B18 = v3;
      word_1EE1A7B1C = 0;
      *&xmmword_1EE1A7B20 = 0;
      *(&xmmword_1EE1A7B20 + 1) = 0xFFFFFFFFLL;
      qword_1EE1A7B30 = v1;
      unk_1EE1A7B38 = 0;
      qword_1EE1A7B00 = &unk_1F5CEFD08;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE1A7B00, &v13);
      if (v14)
      {
        v6 = *&v15[7];
      }

      else
      {
        v6 = v15;
      }

      if (v13 && (v14 & 1) != 0)
      {
        (*(*v13 + 40))();
      }

      v10 = *(v1 + 2);
      if (v17)
      {
        v9 = v17;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v16);
        re::TypeBuilder::TypeBuilder(&v13, v16);
        v12 = v10;
        re::TypeBuilder::beginListType(&v13, &v11, 1, 0x28uLL, 8uLL, &v12);
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::CameraViewDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::CameraViewDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::CameraViewDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::CameraViewDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::CameraViewDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::CameraViewDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::CameraViewDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::CameraViewDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE1A7B20 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void *re::ecs2::allocInfo_CameraViewDescriptorsComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A79F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A79F0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A7DA0, "CameraViewDescriptorsComponent");
    __cxa_guard_release(&qword_1EE1A79F0);
  }

  return &unk_1EE1A7DA0;
}

void re::ecs2::initInfo_CameraViewDescriptorsComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v16[0] = 0x57901BFF93CFC246;
  v16[1] = "CameraViewDescriptorsComponent";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE1A79E8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A79E8);
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
      qword_1EE1A7A50 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_int(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "renderOrder";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1C00000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1A7A58 = v12;
      v13 = re::introspectionAllocator(v12);
      re::IntrospectionInfo<re::DynamicArray<re::ecs2::CameraViewDescriptor>>::get(v13);
      v14 = (*(*v13 + 32))(v13, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "viewDescriptors";
      *(v14 + 16) = &qword_1EE1A7B00;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0xC800000002;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE1A7A60 = v14;
      __cxa_guard_release(&qword_1EE1A79E8);
    }
  }

  *(this + 2) = 0x17800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1A7A50;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::CameraViewDescriptorsComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::CameraViewDescriptorsComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::CameraViewDescriptorsComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::CameraViewDescriptorsComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs230CameraViewDescriptorsComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v15 = v17;
}

void *re::ecs2::allocInfo_CameraViewDescriptorsSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A79F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A79F8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A7E30, "CameraViewDescriptorsSystem");
    __cxa_guard_release(&qword_1EE1A79F8);
  }

  return &unk_1EE1A7E30;
}

void re::ecs2::initInfo_CameraViewDescriptorsSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x9886566CB711F92;
  v6[1] = "CameraViewDescriptorsSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x27000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_CameraViewDescriptorsSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::CameraViewDescriptorsSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::CameraViewDescriptorsSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::CameraViewDescriptorsSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::CameraViewDescriptorsSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::CameraViewDescriptorsSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::CameraViewDescriptorsSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::internal::defaultDestruct<re::ecs2::CameraViewDescriptorsSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  a3[67] = &unk_1F5CEFA60;
  re::FixedArray<CoreIKTransform>::deinit(a3 + 75);
  re::FixedArray<CoreIKTransform>::deinit(a3 + 72);
  re::FixedArray<CoreIKTransform>::deinit(a3 + 69);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 37);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::CameraViewDescriptorsSystem>(uint64_t *a1)
{
  a1[67] = &unk_1F5CEFA60;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 75);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 72);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 69);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 37);

  re::ecs2::System::~System(a1);
}

void *re::ecs2::allocInfo_TintComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A7A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A7A00))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A7EC0, "TintComponent");
    __cxa_guard_release(&qword_1EE1A7A00);
  }

  return &unk_1EE1A7EC0;
}

void re::ecs2::initInfo_TintComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v17[0] = 0x790C845E74D08844;
  v17[1] = "TintComponent";
  if (v17[0])
  {
    if (v17[0])
    {
    }
  }

  *(this + 2) = v18;
  if ((atomic_load_explicit(&qword_1EE1A7A08, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A7A08);
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
      qword_1EE1A7A68 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = re::introspect_Vector4F(1);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "tintColor";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x2000000001;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1A7A70 = v11;
      v12 = re::introspectionAllocator(v11);
      v14 = re::introspect_BOOL(1, v13);
      v15 = (*(*v12 + 32))(v12, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "tintVirtualObject";
      *(v15 + 16) = v14;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x3000000002;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE1A7A78 = v15;
      __cxa_guard_release(&qword_1EE1A7A08);
    }
  }

  *(this + 2) = 0x4000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1A7A68;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::TintComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::TintComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::TintComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::TintComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs213TintComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v16 = v18;
}

void re::internal::defaultConstruct<re::ecs2::TintComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE5360;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::TintComponent>(ArcSharedObject *a1)
{
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE5360;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
}

uint64_t re::ecs2::SpecifyLaneCommand::SpecifyLaneCommand(uint64_t a1, const char *a2, void **a3, uint64_t a4)
{
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 80) = -1;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 116) = 0u;
  NS::SharedPtr<MTL::Buffer>::operator=((a1 + 88 + 8 * a4), a3);
  return a1;
}

uint64_t re::ecs2::CameraViewDescriptor::updateWithSettings(float32x4_t *this, const re::RuntimeRenderGraphDataStruct *a2)
{
  v75 = *MEMORY[0x1E69E9840];
  *&v70 = 0x504AF4A11108;
  re::RuntimeRenderGraphDataStruct::getValueOfType<BOOL>(a2, &v70, &v59);
  if (v59 == 1)
  {
    v4 = this[1].u8[8] != v60;
    this[1].i8[8] = v60;
  }

  else
  {
    v4 = 0;
  }

  *&v70 = 0x74A061BF70DDE1D1;
  re::RuntimeRenderGraphDataStruct::getValueOfType<BOOL>(a2, &v70, &v57);
  if (v57 == 1)
  {
    if (this[20].u8[0] == v58)
    {
      v4 = v4;
    }

    else
    {
      v4 = 1;
    }

    this[20].i8[0] = v58;
  }

  *&v70 = 0x24E6E6F49E875004;
  re::RuntimeRenderGraphDataStruct::getValueOfType<BOOL>(a2, &v70, &v55);
  if (v55 == 1)
  {
    if (this[1].u8[10] == v56)
    {
      v4 = v4;
    }

    else
    {
      v4 = 1;
    }

    this[1].i8[10] = v56;
  }

  *&v70 = 0x16C48E2908A3AF14;
  re::RuntimeRenderGraphDataStruct::getValueOfType<BOOL>(a2, &v70, &v53);
  if (v53 == 1)
  {
    if (this[1].u8[9] == v54)
    {
      v4 = v4;
    }

    else
    {
      v4 = 1;
    }

    this[1].i8[9] = v54;
  }

  *&v70 = 0x4270C405D50982FLL;
  re::RuntimeRenderGraphDataStruct::getValueOfType<BOOL>(a2, &v70, &v51);
  if (v51 == 1)
  {
    if (this[1].u8[11] == v52)
    {
      v4 = v4;
    }

    else
    {
      v4 = 1;
    }

    this[1].i8[11] = v52;
  }

  *&v70 = 0x4B7000EBA30446C5;
  re::RuntimeRenderGraphDataStruct::getValueOfType<BOOL>(a2, &v70, &v49);
  if (v49 == 1)
  {
    if (this[1].u8[12] == v50)
    {
      v4 = v4;
    }

    else
    {
      v4 = 1;
    }

    this[1].i8[12] = v50;
  }

  *&v70 = 0xC500FCA9BFE3EB2;
  re::RuntimeRenderGraphDataStruct::getValueOfType<BOOL>(a2, &v70, &v47);
  if (v47 == 1)
  {
    if (this[1].u8[13] == v48)
    {
      v4 = v4;
    }

    else
    {
      v4 = 1;
    }

    this[1].i8[13] = v48;
  }

  *&v70 = 0x56A251469A1DLL;
  re::RuntimeRenderGraphDataStruct::getValueOfType<BOOL>(a2, &v70, &v45);
  if (v45 == 1)
  {
    if (this[1].u8[14] == v46)
    {
      v4 = v4;
    }

    else
    {
      v4 = 1;
    }

    this[1].i8[14] = v46;
  }

  *&v70 = 0xC5FA659672DAF62;
  re::RuntimeRenderGraphDataStruct::getValueOfType<BOOL>(a2, &v70, &v43);
  if (v43 == 1)
  {
    if (this[2].u8[0] == v44)
    {
      v4 = v4;
    }

    else
    {
      v4 = 1;
    }

    this[2].i8[0] = v44;
  }

  *&v70 = 0x9A301D2C57116;
  v5 = re::RuntimeRenderGraphDataStruct::getValueOfType<re::Vector4<float>>(a2, &v70, &v41);
  if (v41.n128_u8[0] == 1)
  {
    v5.n128_u64[0] = this[3].u64[0];
    v5.n128_u32[2] = this[3].u32[2];
    v6 = vmvnq_s8(vceqq_f32(v5, v42));
    v6.i32[3] = v6.i32[2];
    if ((vmaxvq_u32(v6) & 0x80000000) != 0)
    {
      v4 = 1;
    }

    else
    {
      v4 = v4;
    }

    this[3] = v42;
  }

  *&v70 = 0x9A301D2CF0C76;
  re::RuntimeRenderGraphDataStruct::getValueOfType<float>(a2, &v70, v39);
  if (v39[0] == 1)
  {
    if (vabds_f32(this[4].f32[0], v40) > 0.00000011921)
    {
      v4 = 1;
    }

    else
    {
      v4 = v4;
    }

    this[4].f32[0] = v40;
  }

  v36 = 0x15A1511E410CAC8;
  re::RuntimeRenderGraphDataStruct::getValueOfType<unsigned char>(&v37, a2, &v36);
  v36 = 0;
  if (v37 == 1)
  {
    if (this[4].u8[4] == v38)
    {
      v4 = v4;
    }

    else
    {
      v4 = 1;
    }

    this[4].i8[4] = v38;
  }

  v33 = 0x3B329F1BFF8984EFLL;
  re::RuntimeRenderGraphDataStruct::getValueOfType<unsigned char>(&v34, a2, &v33);
  v33 = 0;
  if (v34 == 1)
  {
    v4 = (v35 | v4) != 0;
    this[4].i8[5] = v35;
  }

  v32 = 0x3B329D0E99C91B0BLL;
  v7 = re::SmallHashTable<re::WeakStringID,re::IntrospectionMember,8ul,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false>::tryGet(a2 + 24, &v32);
  if (!v7)
  {
    goto LABEL_64;
  }

  {
    v27 = v7;
    v7 = v27;
    if (v24)
    {
      re::introspect<re::mtl::StencilOperation>(BOOL)::info = re::mtl::introspect_StencilOperation(0, v23);
      v7 = v27;
    }
  }

  if (re::introspect<re::mtl::StencilOperation>(BOOL)::info != *(v7 + 16))
  {
LABEL_64:
    v8 = 0;
    v32 = 0;
LABEL_65:
    v31 = 0x7769DD2C0A86D905;
    re::RuntimeRenderGraphDataStruct::getValueOfType<unsigned int>(a2, &v31, &v70);
    v31 = 0;
    if (v70 == 1)
    {
      if (this[4].u8[6] == BYTE4(v70))
      {
        v4 = v4;
      }

      else
      {
        v4 = 1;
      }

      this[4].i8[6] = BYTE4(v70);
    }

    goto LABEL_75;
  }

  v9 = *(v7 + 36);
  v10 = *(a2 + 94);
  if (v10 <= v9)
  {
    v61 = 0;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v70 = 0u;
    v20 = v10;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v62 = 136315906;
    v63 = "operator[]";
    v64 = 1024;
    v65 = 866;
    v66 = 2048;
    v67 = v9;
    v68 = 2048;
    v69 = v20;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_94;
  }

  if (*(a2 + 190))
  {
    v11 = a2 + 768;
  }

  else
  {
    v11 = *(a2 + 97);
  }

  v12 = v11[v9];
  v32 = 0;
  v13 = this[4].u8[6];
  this[4].i8[6] = v12;
  v8 = 1;
  if (v13 == v12)
  {
    goto LABEL_65;
  }

LABEL_75:
  v30 = 0x51F9ECF944B29B89;
  v14 = re::SmallHashTable<re::WeakStringID,re::IntrospectionMember,8ul,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false>::tryGet(a2 + 24, &v30);
  if (v14)
  {
    v16 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
    if ((v15 & 1) == 0)
    {
      v28 = v14;
      v16 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
      LODWORD(v15) = v25;
      v14 = v28;
      if (v15)
      {
        re::introspect<re::mtl::CompareFunction>(BOOL)::info = re::mtl::introspect_CompareFunction(0, v26);
        v16 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
        v14 = v28;
      }
    }

    if (v16[85] == *(v14 + 16))
    {
      v15 = *(v14 + 36);
      v17 = *(a2 + 94);
      if (v17 > v15)
      {
        v18 = a2 + 768;
        if ((*(a2 + 760) & 1) == 0)
        {
          v18 = *(a2 + 97);
        }

        LOBYTE(v15) = v18[v15];
        goto LABEL_82;
      }

LABEL_94:
      v61 = 0;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v70 = 0u;
      v21 = v15;
      v22 = v17;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v62 = 136315906;
      v63 = "operator[]";
      v64 = 1024;
      v65 = 866;
      v66 = 2048;
      v67 = v21;
      v68 = 2048;
      v69 = v22;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }
  }

LABEL_82:
  v30 = 0;
  if (v8)
  {
    if (this[4].u8[7] == v15)
    {
      v4 = v4;
    }

    else
    {
      v4 = 1;
    }

    this[4].i8[7] = v15;
  }

  v29 = 0x331D263FBA10EA83;
  re::RuntimeRenderGraphDataStruct::getValueOfType<unsigned int>(a2, &v29, &v70);
  if (v70 == 1)
  {
    if (this[4].i32[2] == DWORD1(v70))
    {
      v4 = v4;
    }

    else
    {
      v4 = 1;
    }

    this[4].i32[2] = DWORD1(v70);
  }

  return v4;
}

uint64_t re::RuntimeRenderGraphDataStruct::getValueOfType<unsigned char>(_BYTE *a1, uint64_t a2, void *a3)
{
  result = re::SmallHashTable<re::WeakStringID,re::IntrospectionMember,8ul,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false>::tryGet(a2 + 24, a3);
  if (!result)
  {
    goto LABEL_4;
  }

  v6 = &unk_1EE187000;
  {
    v12 = result;
    v6 = &unk_1EE187000;
    v11 = v9;
    result = v12;
    if (v11)
    {
      re::introspect<unsigned char>(BOOL)::info = re::introspect_uint8_t(0, v10);
      v6 = &unk_1EE187000;
      result = v12;
    }
  }

  if (v6[39] == *(result + 16))
  {
    v7 = *(result + 36);
    if (*(a2 + 752) <= v7)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    if (*(a2 + 760))
    {
      v8 = a2 + 768;
    }

    else
    {
      v8 = *(a2 + 776);
    }

    *a1 = 1;
    a1[1] = *(v8 + v7);
  }

  else
  {
LABEL_4:
    *a1 = 0;
  }

  return result;
}

uint64_t re::RuntimeRenderGraphDataStruct::getValueOfType<unsigned int>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  result = re::SmallHashTable<re::WeakStringID,re::IntrospectionMember,8ul,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false>::tryGet(a1 + 24, a2);
  if (!result)
  {
    goto LABEL_4;
  }

  v6 = &unk_1EE187000;
  {
    v12 = result;
    v6 = &unk_1EE187000;
    v11 = v9;
    result = v12;
    if (v11)
    {
      re::introspect<unsigned int>(BOOL)::info = re::introspect_uint32_t(0, v10);
      v6 = &unk_1EE187000;
      result = v12;
    }
  }

  if (v6[37] == *(result + 16))
  {
    v7 = *(result + 36);
    if (*(a1 + 752) <= v7)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    if (*(a1 + 760))
    {
      v8 = a1 + 768;
    }

    else
    {
      v8 = *(a1 + 776);
    }

    *a3 = 1;
    *(a3 + 4) = *(v8 + v7);
  }

  else
  {
LABEL_4:
    *a3 = 0;
  }

  return result;
}

uint64_t re::ecs2::CameraViewDescriptor::tryGetSpecifyByLane(re::ecs2::CameraViewDescriptor *this, const char *__s2)
{
  v2 = *(this + 116);
  if (!v2)
  {
    return 0;
  }

  v4 = *(this + 118);
  v5 = 136 * v2;
  while (1)
  {
    v6 = (*(v4 + 8) & 1) != 0 ? *(v4 + 16) : (v4 + 9);
    if (!strcmp(v6, __s2))
    {
      break;
    }

    v4 += 136;
    v5 -= 136;
    if (!v5)
    {
      return 0;
    }
  }

  return v4;
}

BOOL re::ecs2::CameraViewDescriptor::operator==(float32x4_t *a1, float32x4_t *a2)
{
  if (a1[1].u8[8] != a2[1].u8[8] || a1[1].u8[9] != a2[1].u8[9] || a1[1].u8[10] != a2[1].u8[10] || a1[1].u8[11] != a2[1].u8[11] || a1[1].u8[13] != a2[1].u8[13] || a1[20].u8[0] != a2[20].u8[0] || a1[1].u8[12] != a2[1].u8[12] || a1[1].u8[14] != a2[1].u8[14] || a1[20].u8[1] != a2[20].u8[1] || a1[20].u8[2] != a2[20].u8[2] || a1[2].u8[0] != a2[2].u8[0] || a1[1].u8[15] != a2[1].u8[15] || (vminvq_u32(vceqq_f32(a1[3], a2[3])) & 0x80000000) == 0 || a1[4].f32[0] != a2[4].f32[0])
  {
    return 0;
  }

  v24 = v2;
  v25 = v3;
  if (a1[4].u8[4] != a2[4].u8[4] || a1[4].u8[5] != a2[4].u8[5] || a1[4].u8[6] != a2[4].u8[6] || a1[4].u8[7] != a2[4].u8[7] || a1[12].u8[8] != a2[12].u8[8] || a1[4].i32[2] != a2[4].i32[2])
  {
    return 0;
  }

  v5 = 0;
  v6 = 1;
  while (1)
  {
    v7 = v6;
    f32 = a1[2 * v5 + 23].f32;
    v9 = f32[1];
    v23[0] = *f32;
    v23[1] = v9;
    v10 = a2[2 * v5 + 23].f32;
    v11 = v10[1];
    v22[0] = *v10;
    v22[1] = v11;
    result = re::areAlmostEqual<float>(v23, v22);
    if (!result)
    {
      break;
    }

    if (!re::Projection::operator==(&a1[15 * v5 + 27], &a2[15 * v5 + 27]))
    {
      return 0;
    }

    v6 = 0;
    v5 = 1;
    if ((v7 & 1) == 0)
    {
      v12 = a1[6].i64[0];
      if (v12 != a2[6].i64[0] || !std::equal[abi:nn200100]<re::ecs2::ScopeLanePair const*,re::ecs2::ScopeLanePair const*>(a1[7].i64[0], a1[7].i64[0] + (v12 << 6), a2[7].i64[0]))
      {
        return 1;
      }

      v13 = 0;
      for (i = 1; ; i = 0)
      {
        v15 = 5 * v13;
        v16 = &a1[7].i64[v15 + 1];
        v17 = &a2[7].i64[v15 + 1];
        v18 = *(v16 + 16);
        if (v18 != *(v17 + 16))
        {
          break;
        }

        result = std::equal[abi:nn200100]<re::ecs2::ScopeLanePair const*,re::ecs2::ScopeLanePair const*>(*(v16 + 32), *(v16 + 32) + (v18 << 6), *(v17 + 32));
        v19 = i & result;
        v13 = 1;
        if (!v19)
        {
          return result;
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t re::ecs2::CameraViewDescriptorsComponent::handleToTypeAndIndex(unint64_t this)
{
  if (this < 0x10000)
  {
    return 0;
  }

  if (!(this >> 17))
  {
    return 1;
  }

  if (this >> 16 <= 2)
  {
    return 2;
  }

  re::internal::assertLog(4, this, "assertion failure: '%s' (%s:line %i) Invalid handle passed", "!Unreachable code", "handleToTypeAndIndex", 327, v1, v2);
  result = _os_crash();
  __break(1u);
  return result;
}

re::ecs2::CameraViewDescriptor *re::DynamicArray<re::ecs2::CameraViewDescriptor>::add(_anonymous_namespace_ *this, re::ecs2::CameraViewDescriptor *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::ecs2::CameraViewDescriptor>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  result = re::ecs2::CameraViewDescriptor::CameraViewDescriptor((*(this + 4) + 960 * v4), a2);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::DynamicArray<re::ecs2::CameraViewDescriptorsComponent::OneoffViewDescriptor>::add(uint64_t a1, re::ecs2::CameraViewDescriptor *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*a1)
      {
        v7 = 2 * v4;
        v8 = v4 == 0;
        v9 = 8;
        if (!v8)
        {
          v9 = v7;
        }

        if (v9 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v9;
        }

        re::DynamicArray<re::ecs2::CameraViewDescriptorsComponent::OneoffViewDescriptor>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::ecs2::CameraViewDescriptorsComponent::OneoffViewDescriptor>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = re::ecs2::CameraViewDescriptor::CameraViewDescriptor((*(a1 + 32) + 1008 * v5), a2);
  *(v11 + 123) = *(a2 + 123);
  *(v11 + 124) = 0;
  result = re::FunctionBase<24ul,void ()(re::FrameCount const&)>::operator=<24ul>(v11 + 960, a2 + 960);
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

void re::ecs2::CameraViewDescriptorsComponent::clearSpecifyCommands(re::ecs2::CameraViewDescriptorsComponent *this, re::ecs2::CameraViewDescriptorsComponent *a2)
{
  ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(this, a2);
  if (ViewDescriptor)
  {
    v3 = ViewDescriptor + 912;

    re::DynamicArray<re::ecs2::SpecifyLaneCommand>::clear(v3);
  }

  else
  {
    v4 = *re::graphicsLogObjects(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "View descriptor not found (invalid handle)", v5, 2u);
    }
  }
}

void re::DynamicArray<re::ecs2::SpecifyLaneCommand>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = (v3 + 136 * v2);
    do
    {
      for (i = 112; i != 96; i -= 8)
      {
        v6 = *(v3 + i);
        if (v6)
        {

          *(v3 + i) = 0;
        }
      }

      do
      {
        v7 = *(v3 + i);
        if (v7)
        {

          *(v3 + i) = 0;
        }

        i -= 8;
      }

      while (i != 80);
      for (j = 56; j != 8; j -= 24)
      {
        re::AssetHandle::~AssetHandle((v3 + j));
      }

      re::DynamicString::deinit(v3);
      v3 = (v3 + 136);
    }

    while (v3 != v4);
  }

  ++*(a1 + 24);
}

BOOL re::ecs2::CameraViewDescriptorsComponent::addSpecifyCommand(re::ecs2::CameraViewDescriptorsComponent *a1, re::ecs2::CameraViewDescriptorsComponent *a2, __n128 *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(a1, a2);
  if (!ViewDescriptor)
  {
    v9 = *re::graphicsLogObjects(0);
    result = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    LOWORD(v22[0]) = 0;
    v11 = "View descriptor not found (invalid handle)";
LABEL_33:
    v20 = v9;
    v21 = 2;
    goto LABEL_34;
  }

  v6 = ViewDescriptor;
  v7 = re::ecs2::CameraViewDescriptorsComponent::handleToTypeAndIndex(a2);
  v8 = a3[5].n128_u32[0] == -1 && a3[5].n128_u32[1] == -1;
  if (a3[2].n128_u64[1])
  {
    v12 = 0;
  }

  else
  {
    v12 = a3[4].n128_u64[0] == 0;
  }

  if (a3[5].n128_u64[1])
  {
    v13 = 0;
  }

  else
  {
    v13 = a3[6].n128_u64[0] == 0;
  }

  if (a3[6].n128_u64[1])
  {
    v14 = 0;
    if (v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = a3[7].n128_u64[0] == 0;
    if (v7)
    {
      goto LABEL_17;
    }
  }

  if (!v8)
  {
    v9 = *re::graphicsLogObjects(v7);
    result = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    LOWORD(v22[0]) = 0;
    v11 = "For serialized view descriptor layerHandle must be kInvalidRenderLayerHandle";
    goto LABEL_33;
  }

  if (!v13)
  {
    v9 = *re::graphicsLogObjects(v7);
    result = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    LOWORD(v22[0]) = 0;
    v11 = "For serialized view descriptor textures must not be set";
    goto LABEL_33;
  }

  if (!v14)
  {
    v9 = *re::graphicsLogObjects(v7);
    result = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    LOWORD(v22[0]) = 0;
    v11 = "For serialized view descriptor texture descriptors must not be set";
    goto LABEL_33;
  }

  if (v12)
  {
    v9 = *re::graphicsLogObjects(v7);
    result = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    LOWORD(v22[0]) = 0;
    v11 = "For serialized view descriptor renderTarget must not be null";
    goto LABEL_33;
  }

LABEL_17:
  v15 = !v8;
  v16 = !v12;
  v17 = !v13;
  v18 = !v14;
  if (!v12 + !v8 + !v13 + !v14 == 1)
  {
    re::DynamicArray<re::ecs2::SpecifyLaneCommand>::add(v6 + 912, a3);
    return 1;
  }

  v19 = *re::graphicsLogObjects(v7);
  result = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v22[0] = 67109888;
    v22[1] = v15;
    v23 = 1024;
    v24 = v17;
    v25 = 1024;
    v26 = v18;
    v27 = 1024;
    v28 = v16;
    v11 = "Exactly one set of properties on a specify command must be valid. Validity: Layer handles=%d, textures=%d, descriptors=%d, render targets=%d";
    v20 = v19;
    v21 = 26;
LABEL_34:
    _os_log_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_DEFAULT, v11, v22, v21);
    return 0;
  }

  return result;
}

__n128 re::DynamicArray<re::ecs2::SpecifyLaneCommand>::add(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*a1)
      {
        v7 = 2 * v4;
        v8 = v4 == 0;
        v9 = 8;
        if (!v8)
        {
          v9 = v7;
        }

        if (v9 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v9;
        }

        re::DynamicArray<re::ecs2::SpecifyLaneCommand>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::ecs2::SpecifyLaneCommand>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = *(a1 + 32) + 136 * v5;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 24) = a2[1].n128_u64[1];
  v12 = a2->n128_u64[1];
  *v11 = a2->n128_u64[0];
  a2->n128_u64[0] = 0;
  v13 = a2[1].n128_u64[0];
  a2[1].n128_u64[1] = 0;
  v15 = *(v11 + 8);
  v14 = *(v11 + 16);
  *(v11 + 8) = v12;
  *(v11 + 16) = v13;
  a2->n128_u64[1] = v15;
  a2[1].n128_u64[0] = v14;
  v16 = (v11 + 32);
  v17 = a2 + 3;
  v18 = 2;
  do
  {
    *v16 = 0;
    v16[1] = 0;
    v16[2] = 0;
    v16[1] = v17[-1].n128_u64[1];
    v17[-1].n128_u64[1] = 0;
    v19 = *v16;
    *v16 = 0;
    *v16 = v17[-1].n128_u64[0];
    v17[-1].n128_u64[0] = v19;
    v20 = v16[2];
    v16[2] = v17->n128_u64[0];
    v17->n128_u64[0] = v20;
    v17 = (v17 + 24);
    v16 += 3;
    --v18;
  }

  while (v18);
  *(v11 + 80) = a2[5].n128_u64[0];
  *(v11 + 88) = a2[5].n128_u64[1];
  a2[5].n128_u64[1] = 0;
  result = a2[6];
  *(v11 + 96) = result;
  a2[6].n128_u64[0] = 0;
  a2[6].n128_u64[1] = 0;
  *(v11 + 112) = a2[7].n128_u64[0];
  a2[7].n128_u64[0] = 0;
  v22 = a2[7].n128_u64[1];
  *(v11 + 128) = a2[8].n128_u32[0];
  *(v11 + 120) = v22;
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

uint64_t re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(re::ecs2::CameraViewDescriptorsComponent *this, re::ecs2::CameraViewDescriptorsComponent *a2)
{
  v3 = re::ecs2::CameraViewDescriptorsComponent::handleToTypeAndIndex(a2);
  if (v3 == 2)
  {
    if (v4 < *(this + 37))
    {
      v5 = *(this + 39);
      v6 = 1008;
      return v5 + v4 * v6;
    }
  }

  else if (v3 == 1)
  {
    if (v4 < *(this + 32))
    {
      v5 = *(this + 34);
      goto LABEL_8;
    }
  }

  else if (!v3 && v4 < *(this + 27))
  {
    v5 = *(this + 29);
LABEL_8:
    v6 = 960;
    return v5 + v4 * v6;
  }

  return 0;
}

uint64_t *re::DynamicArray<re::ecs2::CameraViewDescriptor>::add(_anonymous_namespace_ *this, uint64_t *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::ecs2::CameraViewDescriptor>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  result = re::ecs2::CameraViewDescriptor::CameraViewDescriptor((*(this + 4) + 960 * v4), a2);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

re::DynamicString *re::ecs2::CameraViewDescriptorsComponent::viewScopeNameFromCache@<X0>(re::ecs2::CameraViewDescriptorsComponent *this@<X0>, re::ecs2::CameraViewDescriptorsComponent *a2@<X1>, uint64_t a3@<X2>, re::DynamicString *a4@<X8>)
{
  v8 = re::ecs2::CameraViewDescriptorsComponent::handleToTypeAndIndex(a2);
  v10 = v9;
  ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(this, a2);
  if (ViewDescriptor && !*(ViewDescriptor + 200))
  {
    v12 = 0;
  }

  else if (a3)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  v13 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v12) ^ ((0xBF58476D1CE4E5B9 * v12) >> 27));
  v14 = 0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30));
  v15 = ((v10 << 6) + (v10 >> 2) - 0x61C8864680B583E9 + ((((0x94D049BB133111EBLL * (v14 ^ (v14 >> 27))) ^ ((0x94D049BB133111EBLL * (v14 ^ (v14 >> 27))) >> 31)) + ((v13 ^ (v13 >> 31)) << 6) + ((v13 ^ (v13 >> 31)) >> 2) - 0x61C8864680B583E9) ^ v13 ^ (v13 >> 31))) ^ v10;
  v16 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v15 ^ (v15 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v15 ^ (v15 >> 30))) >> 27));
  v17 = v16 ^ (v16 >> 31);
  re::HashTable<long long,re::ecs2::VFXSceneComponent::ClientRuntimeTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>::findEntry<long long>(&v28, this + 328, v15, v17);
  if (HIDWORD(v29) == 0x7FFFFFFF)
  {
    v18 = *(this + 2);
    if (**(v18 + 296))
    {
      v19 = *(v18 + 296);
    }

    else
    {
      v19 = "Camera";
    }

    v20 = "Right";
    if (!a3)
    {
      v20 = "Left";
    }

    if (v12)
    {
      v21 = v20;
    }

    else
    {
      v21 = "Mono";
    }

    v22 = (*(*this + 24))(this);
    re::DynamicString::format(v22, "%s_%d_%zu_%llX_%s", a4, v19, v8, v10, *(v18 + 312), v21);
    v28 = 0;
    v29 = 0;
    v30 = 0;
    re::HashTable<long long,re::ecs2::VFXSceneComponent::ClientRuntimeTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>::findEntry<long long>(&v28, this + 328, v15, v17);
    v23 = HIDWORD(v29);
    if (HIDWORD(v29) == 0x7FFFFFFF)
    {
      v24 = re::HashTable<unsigned long,re::DynamicString,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(this + 328, v29, v28);
      *(v24 + 8) = v15;
      result = re::DynamicString::DynamicString((v24 + 16), a4);
      ++*(this + 92);
    }

    else
    {
      ++*(this + 92);
      v27 = (*(this + 43) + 56 * v23 + 16);

      return re::DynamicString::operator=(v27, a4);
    }
  }

  else
  {
    v26 = (*(this + 43) + 56 * HIDWORD(v29) + 16);

    return re::DynamicString::DynamicString(a4, v26);
  }

  return result;
}

re::DynamicString *re::ecs2::CameraViewDescriptorsComponent::viewScopeName@<X0>(re::ecs2::CameraViewDescriptorsComponent *this@<X0>, re::ecs2::CameraViewDescriptorsComponent *a2@<X1>, re::ecs2::Entity *a3@<X3>, re::Allocator *a4@<X4>, uint64_t a5@<X2>, re::DynamicString *a6@<X8>)
{
  if (*(this + 2))
  {

    return re::ecs2::CameraViewDescriptorsComponent::viewScopeNameFromCache(this, a2, a5, a6);
  }

  else
  {
    if (**(a3 + 37))
    {
      v13 = *(a3 + 37);
    }

    else
    {
      v13 = "Camera";
    }

    v14 = re::ecs2::CameraViewDescriptorsComponent::handleToTypeAndIndex(a2);
    re::DynamicString::format(a4, "%d_%zu_%llu", &v19, v14, v15, *(a3 + 39));
    ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(this, a2);
    if (ViewDescriptor && !*(ViewDescriptor + 200))
    {
      if (v20)
      {
        v17 = v22;
      }

      else
      {
        v17 = v21;
      }

      v18 = "_Mono";
    }

    else
    {
      v17 = v22;
      if ((v20 & 1) == 0)
      {
        v17 = v21;
      }

      if (a5)
      {
        v18 = "_Right";
      }

      else
      {
        v18 = "_Left";
      }
    }

    re::DynamicString::format(a4, "%s_%s%s", a6, v13, v17, v18);
    result = v19;
    if (v19 && (v20 & 1) != 0)
    {
      return (*(*v19 + 40))();
    }
  }

  return result;
}

re::ecs2::CameraViewDescriptorsComponentStateImpl *re::ecs2::CameraViewDescriptorsComponentStateImpl::CameraViewDescriptorsComponentStateImpl(re::ecs2::CameraViewDescriptorsComponentStateImpl *this, re::ecs2::CameraViewDescriptorsSystem *a2)
{
  __src[5] = *MEMORY[0x1E69E9840];
  *this = &unk_1F5CEFA60;
  *(this + 1) = a2;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 10) = 0;
  *(this + 1) = 0u;
  __src[0] = re::ecs2::ComponentImpl<re::ecs2::CameraViewDescriptorsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  __src[1] = re::ecs2::ComponentImpl<re::ecs2::PerspectiveCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  __src[2] = re::ecs2::ComponentImpl<re::ecs2::OrthographicCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  __src[3] = re::ecs2::ComponentImpl<re::ecs2::CustomMatrixCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  __src[4] = re::ecs2::ComponentImpl<re::ecs2::RenderGraphFileProviderArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v12[0] = re::ecs2::ComponentImpl<re::ecs2::WorldRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v12[1] = re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v12[2] = re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v7 = __src;
  v8 = 5;
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((this + 16), &v7);
  v7 = v12;
  v8 = 3;
  v3 = re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((this + 40), &v7);
  v11 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  re::DynamicArray<float *>::setCapacity(&v7, 5uLL);
  ++v10;
  re::DynamicArray<char const*>::copy(&v7, 0, __src, 5);
  for (i = 0; i != 3; ++i)
  {
    v6[0] = v12[i];
    re::DynamicArray<re::TransitionCondition *>::add(&v7, v6);
  }

  v6[0] = v11;
  v6[1] = v9;
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((this + 64), v6);
  if (v7 && v11)
  {
    (*(*v7 + 40))();
  }

  return this;
}

uint64_t re::ecs2::CameraViewDescriptorsComponentStateImpl::didDependentComponentChange(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 6), re::ecs2::ComponentImpl<re::ecs2::CameraViewDescriptorsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v9 = result;
  v10 = *(a1 + 24);
  if (v10)
  {
    v11 = 8 * v10;
    v12 = *(a1 + 32);
    while (*v12 != a4)
    {
      ++v12;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    v12 = *(a1 + 32);
  }

  if (v12 == (*(a1 + 32) + 8 * v10))
  {
LABEL_17:
    if (re::ecs2::ComponentImpl<re::ecs2::WorldRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType == a4)
    {
      v18 = *(re::ecs2::EntityComponentCollection::get((a3 + 6), re::ecs2::ComponentImpl<re::ecs2::WorldRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType) + 40);
    }

    else
    {
      v18 = 1;
    }

    v19 = (re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType == a4) | v18 & 1;

    return re::ecs2::CameraViewDescriptorsComponentStateImpl::hierarchicallyDirtyEntities(a3, a4, v19, a2);
  }

  else if (result)
  {
    v13 = 24;
    v14 = 0xFFFFFFFFLL;
    do
    {
      v15 = re::ecs2::ComponentBucketsBase::componentHandle(*(a2 + 16), *(a2 + v13), v9);
      if (v15 != -1 && (v16 & 0xFFFFFF00000000) != 0)
      {
        v20 = v15;
        v14 = v16;
        goto LABEL_24;
      }

      v13 += 8;
    }

    while (v13 != 56);
    v20 = -1;
LABEL_24:

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::setComponentState(a2, v20, v14);
  }

  return result;
}

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
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

unint64_t re::ecs2::CameraViewDescriptorsComponentStateImpl::hierarchicallyDirtyEntities(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  result = re::ecs2::EntityComponentCollection::get((a1 + 6), re::ecs2::ComponentImpl<re::ecs2::CameraViewDescriptorsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (a3)
  {
    v9 = result;
    if (result)
    {
      v10 = 24;
      v11 = 0xFFFFFFFFLL;
      do
      {
        v12 = re::ecs2::ComponentBucketsBase::componentHandle(*(a4 + 16), *(a4 + v10), v9);
        if (v12 != -1 && (v13 & 0xFFFFFF00000000) != 0)
        {
          v15 = v12;
          v11 = v13;
          goto LABEL_11;
        }

        v10 += 8;
      }

      while (v10 != 56);
      v15 = -1;
LABEL_11:
      result = re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::setComponentState(a4, v15, v11);
    }
  }

  v16 = a1[43];
  if (v16)
  {
    v17 = a1[45];
    v18 = &v17[v16];
    v19 = xmmword_1E306AC00;
    do
    {
      result = *v17;
      v20 = *(*v17 + 98);
      if (*(*v17 + 98))
      {
        v21 = (a2 + 16);
        v22 = *(result + 104);
        v23 = vld1q_dup_s16(v21);
        v24 = 1;
        while (1)
        {
          v25 = vandq_s8(vceqq_s16(v23, *v22), v19);
          v25.i16[0] = vmaxvq_u16(v25);
          if (v25.i32[0])
          {
            break;
          }

          v24 -= 8;
          ++v22;
          if (!--v20)
          {
            goto LABEL_20;
          }
        }

        if (v25.u16[0] - v24 < *(result + 96))
        {
          break;
        }
      }

LABEL_20:
      result = re::ecs2::CameraViewDescriptorsComponentStateImpl::hierarchicallyDirtyEntities();
      v19 = xmmword_1E306AC00;
      ++v17;
    }

    while (v17 != v18);
  }

  return result;
}

uint64_t re::ecs2::CameraViewDescriptorsComponentStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v73 = *(*(a2 + 8) + 8);
  v8 = (*(**(*(a3 + 8) + 56) + 32))(*(*(a3 + 8) + 56));
  v9 = re::ServiceLocator::serviceOrNull<re::ecs2::RenderOptionsService>(v8);
  if (v9)
  {
    v75[0] = (*(*v9 + 16))(v9);
    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v76, a5, 0);
    v11 = v76;
    v10 = v77;
    v76 = a4;
    v77 = v11;
    LODWORD(v78) = v10;
    if (v11 != a5 || v10 != 0xFFFFFFFFLL)
    {
      do
      {
        v37 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v76);
        v38 = *(v37 + 16);
        if (*re::ecs2::RenderOptions::forEntity(v75, v38) == 1 && (v39 = *(v38 + 98), *(v38 + 98)))
        {
          v40 = (re::ecs2::ComponentImpl<re::ecs2::PerspectiveCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
          v41 = *(v38 + 104);
          v42 = vld1q_dup_s16(v40);
          v43 = 1;
          v44 = v41;
          v45 = *(v38 + 98);
          while (1)
          {
            v46 = vandq_s8(vceqq_s16(v42, *v44), xmmword_1E306AC00);
            v46.i16[0] = vmaxvq_u16(v46);
            if (v46.i32[0])
            {
              break;
            }

            v43 -= 8;
            ++v44;
            if (!--v45)
            {
              goto LABEL_36;
            }
          }

          if (v46.u16[0] - v43 < *(v38 + 96))
          {
            goto LABEL_46;
          }

LABEL_36:
          v47 = (re::ecs2::ComponentImpl<re::ecs2::OrthographicCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
          v48 = vld1q_dup_s16(v47);
          v49 = 1;
          v50 = *(v38 + 104);
          v51 = *(v38 + 98);
          while (1)
          {
            v52 = vandq_s8(vceqq_s16(v48, *v50), xmmword_1E306AC00);
            v52.i16[0] = vmaxvq_u16(v52);
            if (v52.i32[0])
            {
              break;
            }

            v49 -= 8;
            ++v50;
            if (!--v51)
            {
              goto LABEL_41;
            }
          }

          if (v52.u16[0] - v49 < *(v38 + 96))
          {
            goto LABEL_46;
          }

LABEL_41:
          v53 = (re::ecs2::ComponentImpl<re::ecs2::CustomMatrixCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
          v54 = vld1q_dup_s16(v53);
          v55 = 1;
          while (1)
          {
            v56 = vandq_s8(vceqq_s16(v54, *v41), xmmword_1E306AC00);
            v56.i16[0] = vmaxvq_u16(v56);
            if (v56.i32[0])
            {
              break;
            }

            v55 -= 8;
            ++v41;
            if (!--v39)
            {
              goto LABEL_54;
            }
          }

          if (v56.u16[0] - v55 >= *(v38 + 96))
          {
            goto LABEL_54;
          }

LABEL_46:
          WeakRetained = objc_loadWeakRetained((v37 + 32));
          v58 = WeakRetained;
          if (WeakRetained)
          {
            v59 = WeakRetained - 8;
          }

          else
          {
            v59 = 0;
          }

          v28 = *(v38 + 98);
          if (*(v38 + 98))
          {
            v60 = (re::ecs2::ComponentImpl<re::ecs2::PerspectiveCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
            v27 = *(v38 + 104);
            v61 = vld1q_dup_s16(v60);
            v62 = 1;
            v63 = v27;
            v64 = *(v38 + 98);
            while (1)
            {
              v65 = vandq_s8(vceqq_s16(v61, *v63), xmmword_1E306AC00);
              v65.i16[0] = vmaxvq_u16(v65);
              if (v65.i32[0])
              {
                break;
              }

              v62 -= 8;
              ++v63;
              if (!--v64)
              {
                goto LABEL_7;
              }
            }

            if (v65.u16[0] - v62 < *(v38 + 96))
            {
              v12 = re::ecs2::EntityComponentCollection::get((v38 + 48), re::ecs2::ComponentImpl<re::ecs2::PerspectiveCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
              v13 = *(*(a1 + 8) + 232);
              goto LABEL_19;
            }

LABEL_7:
            v15 = (re::ecs2::ComponentImpl<re::ecs2::OrthographicCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
            v16 = vld1q_dup_s16(v15);
            v17 = 1;
            v18 = *(v38 + 104);
            v19 = *(v38 + 98);
            while (1)
            {
              v20 = vandq_s8(vceqq_s16(v16, *v18), xmmword_1E306AC00);
              v20.i16[0] = vmaxvq_u16(v20);
              if (v20.i32[0])
              {
                break;
              }

              v17 -= 8;
              ++v18;
              if (!--v19)
              {
                goto LABEL_13;
              }
            }

            if (v20.u16[0] - v17 < *(v38 + 96))
            {
              v21 = re::ecs2::EntityComponentCollection::get((v38 + 48), re::ecs2::ComponentImpl<re::ecs2::OrthographicCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
              v22 = *(*(a1 + 8) + 232);
              goto LABEL_19;
            }

LABEL_13:
            v23 = (re::ecs2::ComponentImpl<re::ecs2::CustomMatrixCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
            v24 = vld1q_dup_s16(v23);
            v25 = 1;
            while (1)
            {
              v26 = vandq_s8(vceqq_s16(v24, *v27), xmmword_1E306AC00);
              v26.i16[0] = vmaxvq_u16(v26);
              if (v26.i32[0])
              {
                break;
              }

              v25 -= 8;
              ++v27;
              if (!--v28)
              {
                goto LABEL_22;
              }
            }

            if (v26.u16[0] - v25 >= *(v38 + 96))
            {
              goto LABEL_22;
            }

            v29 = re::ecs2::EntityComponentCollection::get((v38 + 48), re::ecs2::ComponentImpl<re::ecs2::CustomMatrixCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
            v30 = *(*(a1 + 8) + 232);
LABEL_19:
            if (v14 == 2)
            {
              v31 = v76;
              v32 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v77);
              v33 = *(a3 + 16);
              v34 = *(a3 + 40);
              goto LABEL_23;
            }

            if (v14 == 1)
            {
              v35 = v76;
              v36 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v77);
              re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::setComponentState(a3, v35, v36);
              if (v58)
              {
                goto LABEL_25;
              }

              goto LABEL_55;
            }

            if (v14)
            {
              goto LABEL_24;
            }
          }

LABEL_22:
          v31 = v76;
          v32 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v77);
          v33 = *(a3 + 16);
          v34 = *(a3 + 48);
LABEL_23:
          re::ecs2::ComponentBucketsBase::moveComponent(v33, v31, v32, v34);
LABEL_24:
          if (v58)
          {
LABEL_25:
          }
        }

        else
        {
LABEL_54:
          v66 = v76;
          v67 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v77);
          re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v66, v67, *(a3 + 32));
        }

LABEL_55:
        re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v77);
      }

      while (v77 != a5 || v78 != 0xFFFF || WORD1(v78) != 0xFFFF);
    }

    return *(a5 + 40) != 0;
  }

  else
  {
    v69 = re::introspect<re::ecs2::RenderOptionsService>();
    re::StringID::invalid(v75);
    re::internal::missingServiceErrorMessage(v69, v75, &v76);
    re::DynamicString::~DynamicString(&v76);
    re::StringID::~StringID(v75);
    v70 = re::introspect<re::ecs2::RenderOptionsService>();
    re::StringID::invalid(v75);
    re::internal::missingServiceErrorMessage(v70, v75, &v76);
    if (v77)
    {
      v72 = v78;
    }

    else
    {
      v72 = &v77 + 1;
    }

    re::internal::assertLog(5, v71, "assertion failure: '%s' (%s:line %i) %s", "service", "service", 69, v72);
    re::DynamicString::~DynamicString(&v76);
    re::StringID::~StringID(v75);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

BOOL re::ecs2::CameraViewDescriptorsComponentStateImpl::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(*(a2 + 8) + 8);
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v25, a5, 0);
  v13 = v25;
  v14 = v26;
  v15 = v26;
  v25 = a4;
  v26 = v13;
  v27 = v14;
  if (v13 != a5 || v15 != 0xFFFFFFFFLL)
  {
    do
    {
      v17 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v25);
      if (re::ecs2::CameraViewDescriptorsHelper::setCameraViewsRenderGraphFileProviders(*(v17 + 16), (v12 != 2)))
      {
        v18 = v25;
        v19 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v26);
        re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v18, v19, *(a3 + 48));
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v26);
    }

    while (v26 != a5 || v27 != 0xFFFF || HIWORD(v27) != 0xFFFF);
  }

  v22 = *(a3 + 48);
  v23 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](*(a3 + 16) + 8, v22);
  if (!*(v23 + 40))
  {
    (*(*a1 + 40))(a1, a2, a3, v22, v23, a6);
  }

  return *(a5 + 40) != 0;
}

BOOL re::ecs2::CameraViewDescriptorsComponentStateImpl::processUpdatingComponents(re *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  j = a3;
  v7 = a1;
  v194 = *MEMORY[0x1E69E9840];
  v164 = *(a3 + 8);
  *v157 = *(*(a1 + 1) + 232);
  v8 = *(*v157 + 112);
  if (v8)
  {
    a1 = re::RenderFrameBox::get((v8 + 328), 0xFFFFFFFFFFFFFFFuLL);
    v9 = a1;
  }

  else
  {
    v9 = 0;
  }

  v10 = re::globalAllocators(a1);
  v158 = v9;
  v11 = re::PerFrameAllocatorManager::perFrameAllocator(v10[6], v9[48]);
  v182 = 0;
  v180 = 0;
  v181 = 0;
  v179[1] = 0;
  v162 = v11;
  v179[0] = v11;
  re::DynamicArray<float *>::setCapacity(v179, 0);
  ++v181;
  v163 = j;
  v12 = *(j + 40);
  v13 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](*(j + 16) + 8, v12);
  v156 = *(*(a2 + 8) + 8);
  v161 = (*(**(*(v7 + 1) + 256) + 24))(*(*(v7 + 1) + 256));
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v169, v13, 0);
  *&v190 = v12;
  *(&v190 + 1) = v169;
  LODWORD(v191) = v170;
  if (v13 != v169 || (v14 = 0, v15 = 0, v16 = 0, v17 = 0, v170 != 0xFFFFFFFFLL))
  {
    v17 = 0;
    v16 = 0;
    v15 = 0;
    v14 = 0;
    j = &v190;
    while (1)
    {
      v121 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v190);
      *v186 = v121;
      re::DynamicArray<re::RigDataValue *>::add(v179, v186);
      v169 = v121;
      v171 = 0;
      if (v121[27])
      {
        v122 = 0;
        goto LABEL_141;
      }

      if (v121[32])
      {
        break;
      }

      if (v121[37])
      {
        v122 = 2;
LABEL_141:
        v123 = 0;
        v124 = 0;
        LODWORD(v170) = v122;
        do
        {
          v125 = re::ecs2::CameraViewDescriptorsComponent::ViewDescriptorIterator::operator*(&v169);
          if (*(v125 + 240))
          {
            v126 = 1;
          }

          else
          {
            v126 = *(v125 + 272) != 0;
          }

          v127 = *(v125 + 200) != 0;
          v124 = (*(v125 + 928) + v124) << v127;
          v123 = (v126 + v123) << v127;
          if (*(v125 + 296))
          {
            ++v16;
          }

          if (*(v125 + 288))
          {
            ++v17;
          }

          re::ecs2::CameraViewDescriptorsComponent::ViewDescriptorIterator::operator++(&v169);
        }

        while (v169 != v121 || v170 != 3 || v171);
        goto LABEL_152;
      }

      v124 = 0;
      v123 = 0;
LABEL_152:
      v14 += v123;
      v15 += v124;
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v190 + 4);
      if (*(&v190 + 1) == v13 && v191 == 0xFFFF && WORD1(v191) == 0xFFFF)
      {
        goto LABEL_6;
      }
    }

    v122 = 1;
    goto LABEL_141;
  }

LABEL_6:
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v169, a5, 0);
  *&v190 = a4;
  *(&v190 + 1) = v169;
  LODWORD(v191) = v170;
  if (v169 != a5 || v170 != 0xFFFFFFFFLL)
  {
    while (1)
    {
      v20 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v190);
      *v186 = v20;
      re::DynamicArray<re::RigDataValue *>::add(v179, v186);
      v169 = v20;
      v171 = 0;
      if (v20[27])
      {
        v21 = 0;
        goto LABEL_16;
      }

      if (v20[32])
      {
        break;
      }

      if (v20[37])
      {
        v21 = 2;
LABEL_16:
        v19 = 0;
        v18 = 0;
        LODWORD(v170) = v21;
        do
        {
          v22 = re::ecs2::CameraViewDescriptorsComponent::ViewDescriptorIterator::operator*(&v169);
          if (*(v22 + 240))
          {
            v23 = 1;
          }

          else
          {
            v23 = *(v22 + 272) != 0;
          }

          v24 = *(v22 + 200) != 0;
          v18 = (*(v22 + 928) + v18) << v24;
          v19 = (v23 + v19) << v24;
          if (*(v22 + 296))
          {
            ++v16;
          }

          if (*(v22 + 288))
          {
            ++v17;
          }

          re::ecs2::CameraViewDescriptorsComponent::ViewDescriptorIterator::operator++(&v169);
        }

        while (v169 != v20 || v170 != 3 || v171);
        goto LABEL_27;
      }

      v18 = 0;
      v19 = 0;
LABEL_27:
      v14 += v19;
      v15 += v18;
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v190 + 4);
      if (*(&v190 + 1) == a5 && v191 == 0xFFFF && WORD1(v191) == 0xFFFF)
      {
        goto LABEL_30;
      }
    }

    v21 = 1;
    goto LABEL_16;
  }

LABEL_30:
  v25 = v158;
  re::RenderFrame::reserveDynamicArraysSize(v158, v14, v15, v16, v17);
  v26 = v182;
  v27 = v180;
  v28 = 126 - 2 * __clz(v180);
  if (v180)
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  v160 = (v182 + 8 * v180);
  std::__introsort<std::_ClassicAlgPolicy,re::ecs2::CameraViewDescriptorsComponentStateImpl::processUpdatingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent> *,re::ecs2::ComponentBuckets<re::ecs2::CameraViewDescriptorsComponent>::BucketIteration,void *)::$_1 &,re::ecs2::CameraViewDescriptorsComponent**,false>(v182, v160, v29, 1);
  v30 = *(*v157 + 319);
  v169 = 0;
  LODWORD(v170) = 0;
  v171 = 0;
  v172 = 0;
  v175 = 0u;
  v176 = 0u;
  v177 = 0;
  v178 = 0x7FFFFFFFLL;
  if (!v27)
  {
    v128 = 0;
LABEL_159:
    v129 = v173;
    v130 = &v173[88 * v128];
    v120 = 1;
    goto LABEL_163;
  }

  v31 = xmmword_1E306AC00;
  v32 = v163;
  do
  {
    v166 = v26;
    v33 = *v26;
    v34 = *(*v26 + 16);
    v35 = *(v34 + 98);
    if (*(v34 + 98))
    {
      v36 = (re::ecs2::ComponentImpl<re::ecs2::PerspectiveCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
      v37 = *(v34 + 104);
      v38 = vld1q_dup_s16(v36);
      v39 = 1;
      v40 = v37;
      v41 = *(v34 + 98);
      while (1)
      {
        v42 = vandq_s8(vceqq_s16(v38, *v40), v31);
        v42.i16[0] = vmaxvq_u16(v42);
        if (v42.i32[0])
        {
          break;
        }

        v39 -= 8;
        ++v40;
        if (!--v41)
        {
          goto LABEL_42;
        }
      }

      if (v42.u16[0] - v39 < *(v34 + 96))
      {
        v43 = re::ecs2::EntityComponentCollection::get((v34 + 48), re::ecs2::ComponentImpl<re::ecs2::PerspectiveCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        re::ecs2::CameraViewDescriptorsHelper::updateCameraViewsPerFrameData<re::ecs2::PerspectiveCameraComponent>(*v157, v33, v156 == 2, v43, v34);
        goto LABEL_54;
      }

LABEL_42:
      v44 = (re::ecs2::ComponentImpl<re::ecs2::OrthographicCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
      v45 = vld1q_dup_s16(v44);
      v46 = 1;
      v47 = *(v34 + 104);
      v48 = *(v34 + 98);
      while (1)
      {
        v49 = vandq_s8(vceqq_s16(v45, *v47), v31);
        v49.i16[0] = vmaxvq_u16(v49);
        if (v49.i32[0])
        {
          break;
        }

        v46 -= 8;
        ++v47;
        if (!--v48)
        {
          goto LABEL_48;
        }
      }

      if (v49.u16[0] - v46 < *(v34 + 96))
      {
        v50 = re::ecs2::EntityComponentCollection::get((v34 + 48), re::ecs2::ComponentImpl<re::ecs2::OrthographicCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        re::ecs2::CameraViewDescriptorsHelper::updateCameraViewsPerFrameData<re::ecs2::OrthographicCameraComponent>(*v157, v33, v156 == 2, v50, v34);
        goto LABEL_54;
      }

LABEL_48:
      v51 = (re::ecs2::ComponentImpl<re::ecs2::CustomMatrixCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
      v52 = vld1q_dup_s16(v51);
      v53 = 1;
      while (1)
      {
        v54 = vandq_s8(vceqq_s16(v52, *v37), v31);
        v54.i16[0] = vmaxvq_u16(v54);
        if (v54.i32[0])
        {
          break;
        }

        v53 -= 8;
        ++v37;
        if (!--v35)
        {
          goto LABEL_54;
        }
      }

      if (v54.u16[0] - v53 < *(v34 + 96))
      {
        v55 = re::ecs2::EntityComponentCollection::get((v34 + 48), re::ecs2::ComponentImpl<re::ecs2::CustomMatrixCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        re::ecs2::CameraViewDescriptorsHelper::updateCameraViewsPerFrameData<re::ecs2::CustomMatrixCameraComponent>(*v157, v33, v156 == 2, v55, v34);
      }
    }

LABEL_54:
    objc_destroyWeak((v33 + 32));
    *(v33 + 32) = 0;
    v56 = *(v33 + 296);
    if (v56)
    {
      *(v33 + 296) = 0;
      v57 = *(v33 + 312);
      v58 = 1008 * v56;
      do
      {
        re::FunctionBase<24ul,void ()(re::FrameCount const&)>::destroyCallable(v57 + 960);
        re::ecs2::CameraViewDescriptor::~CameraViewDescriptor(v57);
        v57 = (v57 + 1008);
        v58 -= 1008;
      }

      while (v58);
      ++*(v33 + 304);
      for (i = 24; i != 56; i += 8)
      {
        v60 = re::ecs2::ComponentBucketsBase::componentHandle(*(v32 + 16), *(v32 + i), v33);
        if (v60 != -1 && (v61 & 0xFFFFFF00000000) != 0)
        {
          v63 = v60;
          v64 = v61;
          goto LABEL_65;
        }
      }

      v63 = -1;
      v64 = 0xFFFFFFFFLL;
LABEL_65:
      re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::setComponentState(v32, v63, v64);
    }

    (*(*v161 + 8))(&v190);
    if (v190)
    {
      v65 = *(&v190 + 1);
    }

    else
    {
      v65 = 0;
    }

    v167 = v65;
    v66 = v186;
    memset(&v186[8], 0, 20);
    *&v186[32] = 0;
    LODWORD(j) = v162;
    *v186 = v162;
    re::DynamicArray<re::CameraView>::setCapacity(v186, 0);
    ++*&v186[24];
    v187 = 0uLL;
    v188 = 0;
    v189 = 0;
    *&v186[40] = v162;
    v67 = v186;
    v68 = re::DynamicArray<re::CameraMultiView>::setCapacity(&v186[40], 0);
    v70 = v188++;
    if (HIDWORD(v176))
    {
      v71 = re::HashTable<unsigned long long,re::ecs2::CameraViewDescriptorsComponentStateImpl::CameraViewArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::add(&v175, &v167, v186);
      goto LABEL_94;
    }

    v72 = v171;
    v66 = 88;
    if (!v171)
    {
      goto LABEL_91;
    }

    v73 = 88 * v171;
    v74 = 88 * v171;
    v71 = &v174;
    do
    {
      if (*(v71 - 1) == v65)
      {
        goto LABEL_94;
      }

      v71 += 11;
      v74 -= 88;
    }

    while (v74);
    j = &v175;
    if ((v171 & 0xFFFFFFF8) != 0)
    {
      v75 = v173;
      if (v175)
      {
        goto LABEL_81;
      }

      v76 = v169;
      if (!v169)
      {
      }

      re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::init(&v175, v76, 16);
      if (v171)
      {
        v73 = 88 * v171;
LABEL_81:
        v65 = &v173[v73];
        do
        {
          v77 = 0xBF58476D1CE4E5B9 * (*v75 ^ (*v75 >> 30));
          v78 = (0x94D049BB133111EBLL * (v77 ^ (v77 >> 27))) ^ ((0x94D049BB133111EBLL * (v77 ^ (v77 >> 27))) >> 31);
          if (v175)
          {
            v79 = v78 % DWORD2(v176);
            v80 = *(*(&v175 + 1) + 4 * v79);
            if (v80 != 0x7FFFFFFF)
            {
              while (*(v176 + 96 * v80 + 8) != *v75)
              {
                LODWORD(v80) = *(v176 + 96 * v80) & 0x7FFFFFFF;
                if (v80 == 0x7FFFFFFF)
                {
                  goto LABEL_88;
                }
              }

              goto LABEL_89;
            }
          }

          else
          {
            LODWORD(v79) = 0;
          }

LABEL_88:
          v81 = re::HashTable<unsigned long long,re::ecs2::CameraViewDescriptorsComponentStateImpl::CameraViewArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::allocEntry(&v175, v79, v78);
          v82 = *v75;
          *(v81 + 48) = 0;
          *(v81 + 40) = 0;
          *(v81 + 24) = 0;
          *(v81 + 32) = 0;
          *(v81 + 8) = v82;
          *(v81 + 16) = 0;
          *(v81 + 16) = *(v75 + 1);
          *(v75 + 1) = 0;
          *(v81 + 24) = *(v75 + 2);
          *(v75 + 2) = 0;
          v83 = *(v81 + 32);
          *(v81 + 32) = *(v75 + 3);
          *(v75 + 3) = v83;
          v84 = *(v81 + 48);
          *(v81 + 48) = *(v75 + 5);
          *(v75 + 5) = v84;
          ++*(v75 + 8);
          ++*(v81 + 40);
          *(v81 + 88) = 0;
          *(v81 + 64) = 0;
          *(v81 + 72) = 0;
          *(v81 + 56) = 0;
          *(v81 + 80) = 0;
          *(v81 + 56) = *(v75 + 6);
          *(v75 + 6) = 0;
          *(v81 + 64) = *(v75 + 7);
          *(v75 + 7) = 0;
          v85 = *(v81 + 72);
          *(v81 + 72) = *(v75 + 8);
          *(v75 + 8) = v85;
          v86 = *(v81 + 88);
          *(v81 + 88) = *(v75 + 10);
          *(v75 + 10) = v86;
          ++*(v75 + 18);
          ++*(v81 + 80);
          ++HIDWORD(v178);
LABEL_89:
          v75 += 88;
        }

        while (v75 != v65);
      }

      re::DynamicInlineArray<re::KeyValuePair<unsigned long long,re::ecs2::CameraViewDescriptorsComponentStateImpl::CameraViewArrays>,8ul>::clear(&v171);
      v71 = re::HashTable<unsigned long long,re::ecs2::CameraViewDescriptorsComponentStateImpl::CameraViewArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::add(&v175, &v167, v186);
      v32 = v163;
    }

    else
    {
LABEL_91:
      v87 = *v186;
      *&v190 = v65;
      *(&v190 + 1) = *v186;
      memset(v186, 0, 24);
      v88 = *&v186[8];
      *&v191 = *&v186[8];
      ++*&v186[24];
      v89 = *&v186[32];
      v90 = v187;
      *&v186[32] = 0u;
      v187 = 0u;
      v91 = v189;
      v189 = 0;
      v188 = v70 + 2;
      if (v171 >= 8)
      {
        goto LABEL_210;
      }

      j = v173;
      v92 = &v173[88 * v171];
      *v92 = v65;
      *(v92 + 1) = v87;
      *(&v190 + 1) = 0;
      *(v92 + 1) = v88;
      v191 = 0uLL;
      *(v92 + 8) = 1;
      *(v92 + 40) = v89;
      *(v192 + 8) = 0uLL;
      *(v92 + 56) = v90;
      *(&v192[1] + 8) = 0uLL;
      *(v92 + 10) = v91;
      v193 = 0;
      LODWORD(v192[0]) = 2;
      DWORD2(v192[2]) = 2;
      *(v92 + 18) = 1;
      v171 = v72 + 1;
      ++v172;
      v65 = &v190;
      re::DynamicArray<re::CameraMultiView>::deinit(&v192[1]);
      re::DynamicArray<re::CameraView>::deinit(&v190 + 8);
      v94 = v171 - 1;
      if (!v171)
      {
        goto LABEL_207;
      }

      v71 = &v173[88 * v94 + 8];
    }

LABEL_94:
    re::DynamicArray<re::CameraMultiView>::deinit(&v186[40]);
    re::DynamicArray<re::CameraView>::deinit(v186);
    v96 = *(v33 + 56);
    if (v96)
    {
      v97 = v71[2];
      if (v97 == -1)
      {
        v183 = 0;
        v191 = 0u;
        memset(v192, 0, sizeof(v192));
        v190 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v186 = 136315906;
        *&v186[4] = "copy";
        *&v186[12] = 1024;
        *&v186[14] = 643;
        *&v186[18] = 2048;
        *&v186[20] = -1;
        *&v186[28] = 2048;
        *&v186[30] = 0;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_204:
        re::internal::assertLog(7, v95, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v97, v97, v96);
        _os_crash();
        __break(1u);
LABEL_205:
        v30 = v67 + 1;
        v183 = 0;
        v191 = 0u;
        memset(v192, 0, sizeof(v192));
        v190 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v186 = 136315906;
        *&v186[4] = "copy";
        *&v186[12] = 1024;
        *&v186[14] = 643;
        *&v186[18] = 2048;
        *&v186[20] = v67;
        *&v186[28] = 2048;
        *&v186[30] = v67 + 1;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_206:
        re::internal::assertLog(7, v95, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v67, v67, v66);
        _os_crash();
        __break(1u);
LABEL_207:
        re::internal::assertLog(6, v93, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v94, 0);
        _os_crash();
        __break(1u);
        goto LABEL_208;
      }

      v65 = v97 + v96;
      if (__CFADD__(v97, v96))
      {
        goto LABEL_204;
      }

      v98 = *(v33 + 72);
      if (v97 >= v65)
      {
        v65 = v71[4] + 1552 * v97;
        j = 1552 * v96;
        do
        {
          re::CameraView::operator=(v65, v98);
          v98 += 1552;
          v65 += 1552;
          j -= 1552;
        }

        while (j);
      }

      else
      {
        re::DynamicArray<re::CameraView>::growCapacity(v71, v97 + v96);
        v99 = v71[2];
        v100 = v71[4];
        v101 = v97;
        v102 = v99 - v97;
        if (v99 != v97)
        {
          v154 = v99 - v97;
          v155 = v71[2];
          v103 = v100 + 1552 * v97;
          j = 1552 * v99 - 1552 * v97;
          v104 = v98;
          do
          {
            re::CameraView::operator=(v103, v104);
            v104 += 1552;
            v103 += 1552;
            j -= 1552;
          }

          while (j);
          v100 = v71[4];
          v101 = v71[2];
          v102 = v154;
          v99 = v155;
        }

        if (v102 != v96)
        {
          v105 = (v98 + 1552 * v102);
          v106 = (v100 + 1552 * v101);
          j = 1552 * v96 + 1552 * v97 - 1552 * v99;
          do
          {
            v107 = re::CameraView::CameraView(v106, v105);
            v105 = (v105 + 1552);
            v106 = (v107 + 1552);
            j -= 1552;
          }

          while (j);
        }

        v71[2] = v65;
        v32 = v163;
      }

      ++*(v71 + 6);
      v25 = v158;
    }

    v66 = *(v33 + 96);
    v31 = xmmword_1E306AC00;
    if (v66)
    {
      v67 = v71[7];
      if (v67 == -1)
      {
        goto LABEL_205;
      }

      v65 = v67 + v66;
      if (__CFADD__(v67, v66))
      {
        goto LABEL_206;
      }

      v108 = *(v33 + 112);
      if (v67 >= v65)
      {
        std::__copy_impl::operator()[abi:nn200100]<re::CameraMultiView const*,re::CameraMultiView const*,re::CameraMultiView*>(*(v33 + 112), v108 + 3120 * v66, v71[9] + 3120 * v67);
      }

      else
      {
        re::DynamicArray<re::CameraMultiView>::growCapacity(v71 + 5, v67 + v66);
        j = v71[7] - v67;
        v109 = v108 + 3120 * j;
        std::__copy_impl::operator()[abi:nn200100]<re::CameraMultiView const*,re::CameraMultiView const*,re::CameraMultiView*>(v108, v109, v71[9] + 3120 * v67);
        if (j != v66)
        {
          v110 = v108 + 3120 * v66;
          v111 = v71[9] + 3120 * v71[7];
          do
          {
            for (j = 0; j != 3104; j += 1552)
            {
              re::CameraView::CameraView((v111 + j), (v109 + j));
            }

            *(v111 + 3104) = *(v109 + 3104);
            v109 += 3120;
            v111 += 3120;
          }

          while (v109 != v110);
        }

        v71[7] = v65;
      }

      ++*(v71 + 16);
      v32 = v163;
      v31 = xmmword_1E306AC00;
    }

    v112 = v71[2];
    if (v112)
    {
      v113 = 1552 * v112;
      v114 = (v71[4] + 1173);
      do
      {
        v30 = (*v114 | v30 & 1) != 0;
        v114 += 1552;
        v113 -= 1552;
      }

      while (v113);
    }

    v115 = v71[7];
    if (v115)
    {
      v116 = 3120 * v115;
      v117 = (v71[9] + 1173);
      do
      {
        v30 = (*v117 | v30 & 1) != 0;
        v117 += 3120;
        v116 -= 3120;
      }

      while (v116);
    }

    v26 = v166 + 8;
  }

  while ((v166 + 8) != v160);
  if (!HIDWORD(v176))
  {
    v128 = v171;
    goto LABEL_159;
  }

  LODWORD(v26) = v177;
  if (v177)
  {
    j = 0;
    v118 = v176;
    while (1)
    {
      v119 = *v118;
      v118 += 24;
      if (v119 < 0)
      {
        break;
      }

      if (v177 == ++j)
      {
        v120 = 0;
        LODWORD(j) = v177;
        goto LABEL_162;
      }
    }

    v120 = 0;
  }

  else
  {
    v120 = 0;
    LODWORD(j) = 0;
  }

LABEL_162:
  v129 = &v175;
  v130 = &v175;
LABEL_163:
  while (2)
  {
    if (v120)
    {
      if (v129 == v130)
      {
        break;
      }

      v131 = v129 + 1;
      v132 = v129;
      goto LABEL_168;
    }

    if (v26 != j)
    {
      v133 = v129[2] + 96 * j;
      v132 = (v133 + 8);
      v131 = (v133 + 16);
LABEL_168:
      v134 = re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(v164, *v132, v25, &v190);
      if (*(v131 + 2))
      {
        *v186 = v190 >> 1;
        v135 = **(re::RenderFrameData::stream((v25 + 264), v186) + 48);
        v134 = (*(v135 + 544))();
      }

      if (*(v131 + 7))
      {
        *v186 = v190 >> 1;
        v136 = **(re::RenderFrameData::stream((v25 + 264), v186) + 48);
        v134 = (*(v136 + 576))();
      }

      if (v190)
      {
        if (v190)
        {
        }
      }

      if (v120)
      {
        v129 += 11;
      }

      else
      {
        v137 = j + 1;
        if (*(v129 + 8) <= (j + 1))
        {
          LODWORD(j) = j + 1;
        }

        else
        {
          LODWORD(j) = *(v129 + 8);
        }

        while (j != v137)
        {
          v138 = v137;
          v139 = *(v129[2] + 24 * v137++);
          if (v139 < 0)
          {
            LODWORD(j) = v138;
            goto LABEL_163;
          }
        }
      }

      continue;
    }

    break;
  }

  if (v30)
  {
    v167 = &unk_1F5CEFB58;
    v168 = 1;
    *&v190 = 0xC1ECEDF69A9CD01;
    v140 = re::RenderFrameData::stream((v25 + 264), &v190);
    re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::findEntry<std::type_index>(v140, &v185, &v190);
    if (HIDWORD(v190) == 0x7FFFFFFF)
    {
      v141 = *(*(v140 + 48) + 8);
      v142 = (*(*v141 + 32))(v141, 56, 8);
      *v142 = 0;
      *(v142 + 8) = 0;
      *(v142 + 16) = 1;
      *(v142 + 32) = 0;
      *(v142 + 40) = 0;
      *(v142 + 24) = 0;
      *(v142 + 48) = 0;
      v143 = re::BucketArray<re::PipelineCompilationData,4ul>::init(v142, v141, 1uLL);
      *&v186[24] = re::globalAllocators(v143)[2];
      *v186 = &unk_1F5CEFDD0;
      *&v186[8] = v141;
      *&v186[32] = v186;
      *&v190 = std::__any_imp::_SmallHandler<re::BucketArray<re::PipelineCompilationData,4ul> *>::__handle[abi:nn200100];
      *(&v190 + 1) = v142;
      *(&v192[1] + 1) = *&v186[24];
      *&v192[2] = 0;
      re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::operator=<24ul>(v192, v186);
      v144 = re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::addNew(v140, &v185, &v190);
      if (*&v192[2])
      {
        v183 = &v190;
        (*(**&v192[2] + 16))(*&v192[2], &v183);
      }

      re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::destroyCallable(v192);
      if (v190)
      {
        (v190)(0, &v190, 0, 0, 0);
      }

      re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::destroyCallable(v186);
    }

    else
    {
      v144 = (*(v140 + 16) + 96 * HIDWORD(v190) + 16);
    }

    v183 = &unk_1F5CEFB58;
    v184 = v168;
    v147 = *(v146 + 40);
    v65 = *(v146 + 8);
    if (v147 + 1 > 4 * v65)
    {
      re::BucketArray<re::PipelineCompilationData,4ul>::setBucketsCapacity(v146, (v147 + 4) >> 2);
      v65 = *(v146 + 8);
    }

    v30 = v147 >> 2;
    if (v65 > v147 >> 2)
    {
      if (*(v146 + 16))
      {
        v148 = v146 + 24;
      }

      else
      {
        v148 = *(v146 + 32);
      }

      v149 = *(v148 + 8 * v30);
      ++*(v146 + 40);
      ++*(v146 + 48);
      v150 = v149 + 16 * (v147 & 3);
      *v150 = &unk_1F5CEFB58;
      *(v150 + 8) = v184;
      v151 = *(v146 + 40);
      if (v151)
      {
        re::BucketArray<RESubscriptionHandle,4ul>::operator[](v146, v151 - 1);
        goto LABEL_199;
      }

LABEL_209:
      re::internal::assertLog(4, v145, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
      _os_crash();
      __break(1u);
LABEL_210:
      re::internal::assertLog(4, v69, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277);
      _os_crash();
      __break(1u);
    }

LABEL_208:
    v185 = 0;
    v191 = 0u;
    memset(v192, 0, sizeof(v192));
    v190 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v186 = 136315906;
    *&v186[4] = "operator[]";
    *&v186[12] = 1024;
    *&v186[14] = 858;
    *&v186[18] = 2048;
    *&v186[20] = v30;
    *&v186[28] = 2048;
    *&v186[30] = v65;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_209;
  }

LABEL_199:
  *&v190 = &unk_1F5CEFB98;
  BYTE8(v190) = 0;
  (*(**(v25 + 40) + 80))(*(v25 + 40), &v190);
  v152 = *(a5 + 40);
  re::DynamicInlineArray<re::KeyValuePair<unsigned long long,re::ecs2::CameraViewDescriptorsComponentStateImpl::CameraViewArrays>,8ul>::clear(&v171);
  re::HashTable<unsigned long long,re::ecs2::CameraViewDescriptorsComponentStateImpl::CameraViewArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::deinit(&v175);
  v169 = 0;
  LODWORD(v170) = 0;
  re::HashTable<unsigned long long,re::ecs2::CameraViewDescriptorsComponentStateImpl::CameraViewArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::deinit(&v175);
  re::DynamicInlineArray<re::KeyValuePair<unsigned long long,re::ecs2::CameraViewDescriptorsComponentStateImpl::CameraViewArrays>,8ul>::clear(&v171);
  if (v179[0] && v182)
  {
    (*(*v179[0] + 40))();
  }

  return v152 != 0;
}