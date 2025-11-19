void re::ecs2::ClippingParameterDataStateTracking::clearEntityHierarchyStateData(re::ecs2::ClippingParameterDataStateTracking *this, const re::ecs2::Entity *a2)
{
  v83 = *MEMORY[0x1E69E9840];
  if (*(this + 21))
  {
    re::StackScratchAllocator::StackScratchAllocator(v68);
    v62[0] = 0;
    v62[1] = 0;
    v63 = 1;
    v65 = 0;
    v66 = 0;
    v64 = 0;
    v67 = 0;
    re::BucketArray<re::ecs2::Entity const*,32ul>::init(v62, v68, 1uLL);
    *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v62) = a2;
    v4 = v66;
    if (v66)
    {
      v5 = (this + 632);
      do
      {
        v61 = *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v62, v4 - 1);
        re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v62, --v66);
        ++v67;
        v6 = re::HashTable<re::ecs2::Entity const*,re::ecs2::ClippingParameterData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(this + 56, &v61);
        if (v6)
        {
          v7 = v6;
          re::ecs2::ClippingParametersRegistry::unregisterClippingParameterDataRefs(this + 768, v6);
          re::HashTable<re::ecs2::Entity const*,re::ecs2::ClippingParameterData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 56, &v61);
          v8 = *v7;
          v9 = re::HashBrown<unsigned long long,re::HashSet<re::ecs2::PortalComponent const*,re::Hash<re::ecs2::PortalComponent const*>,re::EqualTo<re::ecs2::PortalComponent const*>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find(this + 76, v8);
          if (v9 != -1)
          {
            v10 = *(this + 77) + 56 * v9;
            re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(v10 + 8, &v61);
            if (!*(v10 + 36))
            {
              v11 = re::HashBrown<unsigned long long,re::HashSet<re::ecs2::PortalComponent const*,re::Hash<re::ecs2::PortalComponent const*>,re::EqualTo<re::ecs2::PortalComponent const*>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find(this + 76, v8);
              if (v11 != -1)
              {
                v12 = (*(this + 76) + (v11 & 0xFFFFFFFFFFFFFFF0));
                v13.i64[0] = -1;
                v13.i64[1] = -1;
                v14 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(*v12, v13), xmmword_1E304FAD0)))), 0x3830282018100800);
                v15 = *&v14 != 0;
                v16 = *&v14 ? -1 : 0x80;
                v12->i8[v11 & 0xF] = v16;
                v17 = (*(this + 77) + 56 * v11);
                v18 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*v17 ^ (*v17 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*v17 ^ (*v17 >> 30))) >> 27));
                *(this + 81) ^= (v18 >> 31) ^ v18;
                re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v17 + 1);
                v19.i64[0] = -1;
                v19.i64[1] = v15;
                v20 = vaddq_s64(*v5, v19);
                *v5 = v20;
                v21 = *(this + 78);
                if (v21 >= 0x11 && v20.i64[0] < v21 >> 2)
                {
                  re::HashBrown<unsigned long long,re::HashSet<re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::resize(this + 608, 0);
                }
              }
            }
          }
        }

        v22 = v61;
        v23 = re::HashBrown<re::ecs2::Entity const*,re::DynamicOverflowArray<re::DataArrayHandle<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>,8ul>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,void,false>::find(this + 52, v61);
        if (v23 != -1)
        {
          v24 = *(this + 53) + 96 * v23;
          if (*(v24 + 24))
          {
            v25 = (v24 + 32);
          }

          else
          {
            v25 = *(v24 + 40);
          }

          v26 = *(v24 + 16);
          if (v26)
          {
            v27 = &v25[v26];
            do
            {
              v28 = re::DataArray<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>::tryGet(this + 352, *v25);
              if (v28)
              {
                v29 = v28;
                re::ecs2::ClippingParametersRegistry::unregisterClippingParameterDataRefs(this + 768, v28 + 16);
                re::DataArray<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>::destroy(this + 352, *v25);
                v30 = *v29;
                v31 = re::HashBrown<re::ecs2::Entity const*,re::DynamicOverflowArray<re::DataArrayHandle<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>,8ul>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,void,false>::find(this + 60, v30);
                if (v31 != -1)
                {
                  v32 = *(this + 61) + 96 * v31;
                  v33 = *(v32 + 16);
                  if (v33 >= 1)
                  {
                    v34 = v32 + 8;
                    v35 = v32 + 32;
                    v36 = (*(v32 + 16) & 0x7FFFFFFFLL) - 1;
                    do
                    {
                      v37 = *(v34 + 8);
                      if (v37 <= v36)
                      {
                        v69 = 0;
                        v81 = 0u;
                        v82 = 0u;
                        v79 = 0u;
                        v80 = 0u;
                        v78 = 0u;
                        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                        v70 = 136315906;
                        v71 = "operator[]";
                        v72 = 1024;
                        v73 = 858;
                        v74 = 2048;
                        v75 = v36;
                        v76 = 2048;
                        v77 = v37;
                        _os_log_send_and_compose_impl();
                        _os_crash_msg();
                        __break(1u);
LABEL_72:
                        v69 = 0;
                        v81 = 0u;
                        v82 = 0u;
                        v79 = 0u;
                        v80 = 0u;
                        v78 = 0u;
                        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                        v70 = 136315906;
                        v71 = "operator[]";
                        v72 = 1024;
                        v73 = 858;
                        v74 = 2048;
                        v75 = v36;
                        v76 = 2048;
                        v77 = v37;
                        _os_log_send_and_compose_impl();
                        _os_crash_msg();
                        __break(1u);
                      }

                      v38 = v35;
                      if ((*(v34 + 16) & 1) == 0)
                      {
                        v38 = *(v34 + 32);
                      }

                      if (!re::DataArray<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>::tryGet(this + 352, *(v38 + 8 * v36)))
                      {
                        re::DynamicOverflowArray<re::DataArrayHandle<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>,8ul>::removeAt(v34, v36);
                      }

                      v39 = v36-- + 1;
                    }

                    while (v39 > 1);
                    v33 = *(v34 + 8);
                  }

                  if (!v33)
                  {
                    re::HashBrown<re::ecs2::Entity const*,re::DynamicOverflowArray<re::DataArrayHandle<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>,8ul>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,void,false>::remove(this + 480, v30);
                  }
                }

                re::HashBrown<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>,re::DataArrayHandle<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>,re::Hash<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>>,re::EqualTo<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>>,void,false>::remove(this + 544, v61, v30);
              }

              ++v25;
            }

            while (v25 != v27);
            v22 = v61;
          }

          re::HashBrown<re::ecs2::Entity const*,re::DynamicOverflowArray<re::DataArrayHandle<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>,8ul>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,void,false>::remove(this + 416, v22);
        }

        re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 672, &v61);
        v40 = v61;
        v60 = v61[28];
        if (v60)
        {
          v41 = re::HashBrown<re::ecs2::Entity const*,re::DynamicOverflowArray<re::DataArrayHandle<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>,8ul>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,void,false>::find(this + 60, v61);
          if (v41 == -1)
          {
            goto LABEL_61;
          }

          v42 = *(this + 61) + 96 * v41;
          if (*(v42 + 24))
          {
            v43 = (v42 + 32);
          }

          else
          {
            v43 = *(v42 + 40);
          }

          v44 = *(v42 + 16);
          if (v44)
          {
            v45 = &v43[v44];
            do
            {
              v46 = re::DataArray<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>::tryGet(this + 352, *v43);
              if (v46)
              {
                v47 = v46;
                re::ecs2::ClippingParametersRegistry::unregisterClippingParameterDataRefs(this + 768, v46 + 16);
                re::DataArray<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>::destroy(this + 352, *v43);
                v48 = *(v47 + 8);
                v49 = re::HashBrown<re::ecs2::Entity const*,re::DynamicOverflowArray<re::DataArrayHandle<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>,8ul>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,void,false>::find(this + 52, v48);
                if (v49 != -1)
                {
                  v50 = *(this + 53) + 96 * v49;
                  v51 = *(v50 + 16);
                  if (v51 >= 1)
                  {
                    v52 = v50 + 8;
                    v53 = v50 + 32;
                    v36 = (*(v50 + 16) & 0x7FFFFFFFLL) - 1;
                    do
                    {
                      v37 = *(v52 + 8);
                      if (v37 <= v36)
                      {
                        goto LABEL_72;
                      }

                      v54 = v53;
                      if ((*(v52 + 16) & 1) == 0)
                      {
                        v54 = *(v52 + 32);
                      }

                      if (!re::DataArray<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>::tryGet(this + 352, *(v54 + 8 * v36)))
                      {
                        re::DynamicOverflowArray<re::DataArrayHandle<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>,8ul>::removeAt(v52, v36);
                      }

                      v55 = v36-- + 1;
                    }

                    while (v55 > 1);
                    v51 = *(v52 + 8);
                  }

                  if (!v51)
                  {
                    re::HashBrown<re::ecs2::Entity const*,re::DynamicOverflowArray<re::DataArrayHandle<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>,8ul>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,void,false>::remove(this + 416, v48);
                  }
                }

                re::HashBrown<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>,re::DataArrayHandle<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>,re::Hash<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>>,re::EqualTo<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>>,void,false>::remove(this + 544, v48, v61);
              }

              ++v43;
            }

            while (v43 != v45);
            v40 = v61;
          }

          re::HashBrown<re::ecs2::Entity const*,re::DynamicOverflowArray<re::DataArrayHandle<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>,8ul>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,void,false>::remove(this + 480, v40);
          if (v60)
          {
LABEL_61:
            re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 720, &v60);
          }
        }

        v56 = v61[43];
        if (v56)
        {
          v57 = v61[45];
          v58 = 8 * v56;
          do
          {
            v59 = *v57++;
            *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v62) = v59;
            v58 -= 8;
          }

          while (v58);
        }

        v4 = v66;
      }

      while (v66);
    }

    re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(v62);
    if (v62[0])
    {
      if ((v63 & 1) == 0)
      {
        (*(*v62[0] + 40))();
      }
    }

    re::StackScratchAllocator::~StackScratchAllocator(v68);
  }
}

int *re::HashTable<re::ecs2::Entity const*,re::ecs2::ClippingParameterData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  result = re::HashTable<re::ecs2::Entity const*,re::ecs2::ClippingParameterData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v11);
  v5 = v13;
  if (v13 != 0x7FFFFFFF)
  {
    v6 = *(a1 + 16);
    v7 = *(v6 + 224 * v13) & 0x7FFFFFFF;
    if (v14 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * v12) = v7;
      v5 = v13;
    }

    else
    {
      *(v6 + 224 * v14) = *(v6 + 224 * v14) & 0x80000000 | v7;
    }

    result = (v6 + 224 * v5);
    v8 = *result;
    if (*result < 0)
    {
      *result = v8 & 0x7FFFFFFF;
      result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((result + 40));
      v9 = v13;
      v6 = *(a1 + 16);
      v8 = *(v6 + 224 * v13);
      v5 = v13;
    }

    else
    {
      v9 = v5;
    }

    v10 = *(a1 + 40);
    *(v6 + 224 * v9) = *(a1 + 36) | v8 & 0x80000000;
    --*(a1 + 28);
    *(a1 + 36) = v5;
    *(a1 + 40) = v10 + 1;
  }

  return result;
}

uint64_t re::DataArray<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>::destroy(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = a2 >> 16;
  result = re::DataArray<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>::tryGet(a1, a2 & 0xFFFFFFFF00000000 | (WORD1(a2) << 16) | a2);
  if (result)
  {
    v6 = result;
    result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(result + 160);
    if (*(a1 + 16) <= HIWORD(v2))
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    *(*(*(a1 + 32) + 16 * HIWORD(v2) + 8) + 4 * v2) = 0;
    *v6 = *(a1 + 52);
    *(a1 + 52) = v2;
    *(a1 + 54) = v4;
    --*(a1 + 40);
  }

  return result;
}

uint64_t re::DynamicOverflowArray<re::DataArrayHandle<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>,8ul>::removeAt(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
  if (v2 <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = v2 - 1;
  if (v2 - 1 > a2)
  {
    if (*(result + 16))
    {
      v4 = result + 24;
    }

    else
    {
      v4 = *(result + 32);
    }

    *(v4 + 8 * a2) = *(v4 + 8 * v2 - 8);
    v3 = *(result + 8) - 1;
  }

  v5 = *(result + 16);
  *(result + 8) = v3;
  *(result + 16) = v5 + 2;
  return result;
}

double re::HashBrown<re::ecs2::Entity const*,re::DynamicOverflowArray<re::DataArrayHandle<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>,8ul>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,void,false>::remove(uint64_t a1, unint64_t a2)
{
  v3 = re::HashBrown<re::ecs2::Entity const*,re::DynamicOverflowArray<re::DataArrayHandle<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>,8ul>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,void,false>::find(a1, a2);
  if (v3 != -1)
  {
    v5 = (*a1 + (v3 & 0xFFFFFFFFFFFFFFF0));
    v6.i64[0] = -1;
    v6.i64[1] = -1;
    v7 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(*v5, v6), xmmword_1E304FAD0)))), 0x3830282018100800);
    v8 = *&v7 != 0;
    v9 = *&v7 ? -1 : 0x80;
    v5->i8[v3 & 0xF] = v9;
    v10 = (*(a1 + 8) + 96 * v3);
    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*v10 ^ (*v10 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*v10 ^ (*v10 >> 30))) >> 27));
    *(a1 + 40) ^= (v11 >> 31) ^ v11;
    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((v10 + 1));
    v12.i64[0] = -1;
    v12.i64[1] = v8;
    v4 = vaddq_s64(*(a1 + 24), v12);
    *(a1 + 24) = v4;
    v13 = *(a1 + 16);
    if (v13 >= 0x11 && v4.i64[0] < v13 >> 2)
    {

      *v4.i64 = re::HashBrown<re::ecs2::Entity const*,re::DynamicOverflowArray<re::DataArrayHandle<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>,8ul>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,void,false>::resize(a1, 0);
    }
  }

  return *v4.i64;
}

void re::HashBrown<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>,re::DataArrayHandle<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>,re::Hash<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>>,re::EqualTo<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>>,void,false>::remove(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = re::HashBrown<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>,re::DataArrayHandle<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>,re::Hash<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>>,re::EqualTo<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>>,void,false>::find(a1, a2, a3);
  if (v4 != -1)
  {
    v5 = (*a1 + (v4 & 0xFFFFFFFFFFFFFFF0));
    v6.i64[0] = -1;
    v6.i64[1] = -1;
    v7 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(*v5, v6), xmmword_1E304FAD0)))), 0x3830282018100800);
    v8 = *&v7 ? -1 : 0x80;
    v5->i8[v4 & 0xF] = v8;
    v9 = *(a1 + 16);
    v10 = (*(a1 + 8) + 24 * v4);
    v11 = *v10;
    v12 = 0xBF58476D1CE4E5B9 * (v10[1] ^ (v10[1] >> 30));
    v13 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) >> 27));
    *(a1 + 40) ^= v13 ^ (v13 >> 31) ^ (((0x94D049BB133111EBLL * (v12 ^ (v12 >> 27))) ^ ((0x94D049BB133111EBLL * (v12 ^ (v12 >> 27))) >> 31)) + ((v13 ^ (v13 >> 31)) << 6) + ((v13 ^ (v13 >> 31)) >> 2) - 0x61C8864680B583E9);
    v6.i64[1] = *&v7 != 0;
    v14 = vaddq_s64(*(a1 + 24), v6);
    *(a1 + 24) = v14;
    if (v9 >= 0x11 && v14.i64[0] < v9 >> 2)
    {

      re::HashBrown<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>,re::DataArrayHandle<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>,re::Hash<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>>,re::EqualTo<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>>,void,false>::resize(a1, 0);
    }
  }
}

__n128 re::BucketArray<re::ecs2::ClippingParameterDataStateTracking::buildClippingParameterDataStateForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&,re::ecs2::RenderOptions const&,re::TransformService &)::EntityClippingData,32ul>::add(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 40);
  v5 = *(a1 + 8);
  if (v4 + 1 > 32 * v5)
  {
    re::BucketArray<re::ecs2::ClippingParameterDataStateTracking::buildClippingParameterDataStateForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&,re::ecs2::RenderOptions const&,re::TransformService &)::EntityClippingData,32ul>::setBucketsCapacity(a1, (v4 + 32) >> 5);
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
  v8 = v7 + 112 * (v4 & 0x1F);
  v9 = *a2;
  *(v8 + 16) = *(a2 + 2);
  *v8 = v9;
  re::DynamicOverflowArray<unsigned short,8ul>::DynamicOverflowArray(v8 + 24, a2 + 24);
  result = a2[4];
  v11 = a2[5];
  *(v8 + 89) = *(a2 + 89);
  *(v8 + 64) = result;
  *(v8 + 80) = v11;
  return result;
}

void *re::DynamicOverflowArray<unsigned short,8ul>::add(void *result, _WORD *a2)
{
  v3 = result;
  if (*result)
  {
    v4 = result[1];
    v5 = *(result + 4);
    if (v5)
    {
      v6 = 8;
    }

    else
    {
      v6 = result[3];
    }

    if (v4 >= v6)
    {
      result = re::DynamicOverflowArray<unsigned short,8ul>::growCapacity(result, v4 + 1);
      v5 = v3[4];
    }
  }

  else
  {
    v7 = *(v3 + 1);
    result = re::DynamicOverflowArray<unsigned short,8ul>::setCapacity(v3, v7 + 1);
    v5 = v3[4] + 2;
    v3[4] = v5;
  }

  if (v5)
  {
    v8 = (v3 + 6);
  }

  else
  {
    v8 = *(v3 + 4);
  }

  v9 = *(v3 + 1);
  *&v8[2 * v9] = *a2;
  *(v3 + 1) = v9 + 1;
  v3[4] += 2;
  return result;
}

uint64_t re::HashSetBase<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>,re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>,re::internal::ValueAsKey<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>>,re::Hash<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>>,re::EqualTo<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>>,true,false>::add(uint64_t result, uint64_t *a2)
{
  v3 = result;
  v4 = *a2;
  v5 = a2[1];
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v7 = (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31);
  v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) >> 27));
  v9 = ((v8 ^ (v8 >> 31)) + (v7 << 6) + (v7 >> 2) - 0x61C8864680B583E9) ^ v7;
  v10 = *(result + 24);
  if (!v10)
  {
    LODWORD(v11) = 0;
    goto LABEL_15;
  }

  v11 = v9 % v10;
  v12 = *(*(result + 8) + 4 * (v9 % v10));
  if (v12 == 0x7FFFFFFF)
  {
LABEL_15:
    result = re::HashSetBase<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>,re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>,re::internal::ValueAsKey<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>>,re::Hash<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>>,re::EqualTo<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>>,true,false>::addAsMove(result, v11, v9, a2);
    ++*(v3 + 40);
    return result;
  }

  v13 = *(result + 16);
  v14 = v13 + 32 * v12;
  v16 = *(v14 + 16);
  v15 = *(v14 + 24);
  if (v16 != v4 || v15 != v5)
  {
    while (1)
    {
      v12 = *(v13 + 32 * v12 + 8) & 0x7FFFFFFF;
      if (v12 == 0x7FFFFFFF)
      {
        break;
      }

      v18 = v13 + 32 * v12;
      v20 = *(v18 + 16);
      v19 = *(v18 + 24);
      if (v20 == v4 && v19 == v5)
      {
        return result;
      }
    }

    goto LABEL_15;
  }

  return result;
}

void *re::HashBrown<re::ecs2::Entity const*,re::DynamicOverflowArray<re::DataArrayHandle<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>,8ul>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,void,false>::addNew(void *a1, unint64_t *a2, uint64_t a3)
{
  v6 = re::HashBrown<re::ecs2::Entity const*,re::DynamicOverflowArray<re::DataArrayHandle<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>,8ul>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,void,false>::find(a1, *a2);
  if (v6 != -1)
  {
    return (a1[1] + 96 * v6 + 8);
  }

  return re::HashBrown<re::ecs2::Entity const*,re::DynamicOverflowArray<re::DataArrayHandle<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>,8ul>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,void,false>::internalAdd(a1, a2, a3);
}

int *re::DynamicOverflowArray<re::DataArrayHandle<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>,8ul>::add(int *result, void *a2)
{
  v3 = result;
  if (!*result)
  {
    v10 = *(v3 + 1);
    result = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::setCapacity(v3, v10 + 1);
    v5 = v3[4] + 2;
    v3[4] = v5;
    goto LABEL_15;
  }

  v4 = *(result + 1);
  v5 = result[4];
  if (v5)
  {
    if (v4 - 8 >= 0xFFFFFFFFFFFFFFF7)
    {
      goto LABEL_15;
    }

    v7 = v4 + 1;
    v9 = 16;
    goto LABEL_11;
  }

  v6 = *(result + 3);
  v8 = v4 >= v6;
  v7 = v4 + 1;
  v8 = !v8 || v6 >= v7;
  if (!v8)
  {
    v9 = 2 * v6;
LABEL_11:
    if (v9 <= v7)
    {
      v11 = v7;
    }

    else
    {
      v11 = v9;
    }

    result = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::setCapacity(result, v11);
    v5 = v3[4];
  }

LABEL_15:
  if (v5)
  {
    v12 = v3 + 6;
  }

  else
  {
    v12 = *(v3 + 4);
  }

  v12[(*(v3 + 1))++] = *a2;
  v3[4] += 2;
  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<unsigned short,8ul>::resize(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  v4 = *(result + 1);
  if (v4 < a2)
  {
    if (*result)
    {
      if ((*(result + 4) & 1) == 0)
      {
LABEL_4:
        v5 = *(v3 + 3);
LABEL_9:
        if (v5 < a2)
        {
          result = re::DynamicOverflowArray<unsigned short,8ul>::setCapacity(v3, a2);
        }

        v7 = *(v3 + 1);
        if (v7 < a2)
        {
          do
          {
            v8 = (v3 + 24);
            if ((*(v3 + 16) & 1) == 0)
            {
              v8 = *(v3 + 4);
            }

            *(v8 + v7++) = 0;
          }

          while (a2 != v7);
        }

        goto LABEL_15;
      }
    }

    else
    {
      result = re::DynamicOverflowArray<unsigned short,8ul>::setCapacity(v3, a2);
      v6 = *(v3 + 4) + 2;
      *(v3 + 4) = v6;
      if ((v6 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    v5 = 8;
    goto LABEL_9;
  }

  if (v4 > a2)
  {
LABEL_15:
    *(v3 + 1) = a2;
    *(v3 + 4) += 2;
  }

  return result;
}

char *re::DynamicOverflowArray<unsigned short,8ul>::copy(char *result, unint64_t a2, char *__src, uint64_t a4)
{
  if (!a4)
  {
    return result;
  }

  v6 = result;
  v7 = *(result + 1);
  if (v7 + 1 <= a2)
  {
    v16 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v17) = 136315906;
    *(&v17 + 4) = "copy";
    WORD6(v17) = 1024;
    HIWORD(v17) = 678;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_21:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 682, v7, a2, v4, v16, v17);
    _os_crash();
    __break(1u);
  }

  v4 = a4;
  v8 = a2 + a4;
  if (__CFADD__(a2, a4))
  {
    goto LABEL_21;
  }

  if (v7 >= v8)
  {
    if (result[16])
    {
      v14 = result + 24;
    }

    else
    {
      v14 = *(result + 4);
    }

    result = memmove(&v14[2 * a2], __src, 2 * a4);
  }

  else
  {
    re::DynamicOverflowArray<unsigned short,8ul>::growCapacity(result, a2 + a4);
    v10 = v6[1];
    v11 = v10 - a2;
    v12 = *(v6 + 4);
    if (v12)
    {
      v13 = (v6 + 3);
    }

    else
    {
      v13 = v6[4];
    }

    if (v10 != a2)
    {
      memmove(&v13[2 * a2], __src, 2 * v11);
      v12 = *(v6 + 4);
    }

    if (v12)
    {
      v15 = (v6 + 3);
    }

    else
    {
      v15 = v6[4];
    }

    result = memcpy(&v15[2 * v6[1]], &__src[2 * v11], 2 * (v4 - v11));
    v6[1] = v8;
  }

  *(v6 + 4) += 2;
  return result;
}

uint64_t re::ecs2::ClippingManager::updateClippingParameterData(uint64_t a1, re::RenderManager *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = a1 + 8;
  v7 = *(a1 + 8);
  *(a1 + 904) = a3;
  *(a1 + 912) = a4;
  *(a1 + 920) = a5;
  (*(v7 + 32))(a1 + 8, a1 + 112);
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(v8 + 104);
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(v8 + 200);
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(v8 + 248);
  *(v8 + 912) = 0;
  *(v8 + 896) = 0u;
  v32 = 0;
  v29[1] = 0;
  v30 = 0;
  v31 = 0;
  v29[0] = re::RenderManager::perFrameAllocator(a2);
  re::DynamicArray<unsigned short>::setCapacity(v29, 0);
  ++v31;
  re::DynamicArray<unsigned short>::setCapacity(v29, *(v8 + 928));
  v9 = *(v8 + 88);
  if (v9)
  {
    v10 = 0;
    v11 = *(a1 + 80);
    while (1)
    {
      v12 = *v11;
      v11 += 56;
      if (v12 < 0)
      {
        break;
      }

      if (v9 == ++v10)
      {
        LODWORD(v10) = v9;
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
      v13 = *(a1 + 80) + 224 * v10;
      re::ecs2::ClippingManager::updateClippingParameterDataInternal(a1, v13 + 16, v29, *(v13 + 8));
      v14 = *(a1 + 96);
      if (v14 <= v10 + 1)
      {
        v15 = v10 + 1;
      }

      else
      {
        v15 = *(a1 + 96);
      }

      while (v15 - 1 != v10)
      {
        LODWORD(v10) = v10 + 1;
        if ((*(*(a1 + 80) + 224 * v10) & 0x80000000) != 0)
        {
          goto LABEL_15;
        }
      }

      LODWORD(v10) = v15;
LABEL_15:
      ;
    }

    while (v10 != v14);
  }

  re::DataArray<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>::DataArrayIterator<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData,re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData&>::DataArrayIterator(v39, a1 + 360);
  v16 = *&v39[0];
  v27 = *&v39[0];
  v28 = DWORD2(v39[0]);
  v17 = WORD4(v39[0]);
  v18 = HIWORD(DWORD2(v39[0]));
  if (a1 + 360 != *&v39[0] || WORD4(v39[0]) != 0xFFFF || v18 != 0xFFFF)
  {
    do
    {
      v21 = v18;
      v22 = *(v16 + 16);
      if (v22 <= v18)
      {
        v33 = 0;
        memset(v39, 0, sizeof(v39));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v34 = 136315906;
        *&v34[4] = "operator[]";
        *&v34[12] = 1024;
        *&v34[14] = 797;
        v35 = 2048;
        v36 = v21;
        v37 = 2048;
        v38 = v22;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v23 = *(*(v16 + 32) + 16 * v18) + 208 * v17;
      re::ecs2::ClippingManager::updateClippingParameterDataInternal(a1, v23 + 16, v29, *(v23 + 8));
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v27);
      v16 = v27;
      v17 = v28;
      v18 = HIWORD(v28);
    }

    while (v27 != a1 + 360 || v28 != 0xFFFF || HIWORD(v28) != 0xFFFF);
  }

  *(a1 + 936) = v30;
  v24 = re::RenderFrameBox::get((*(a2 + 14) + 328), 0xFFFFFFFFFFFFFFFuLL);
  *&v39[0] = re::ecs2::ClippingParametersRegistry::copyClippingParameterEntries((a1 + 776), *(v24 + 392));
  *(&v39[0] + 1) = v25;
  if (v25)
  {
    (*(**(v24 + 320) + 112))(*(v24 + 320), v39);
    *v34 = v32;
    *&v34[8] = v30;
    (*(**(v24 + 320) + 144))(*(v24 + 320), v34);
  }

  result = v29[0];
  if (v29[0])
  {
    if (v32)
    {
      return (*(*v29[0] + 40))();
    }
  }

  return result;
}

void re::ecs2::ClippingManager::updateClippingParameterDataInternal(re *a1, uint64_t a2, _anonymous_namespace_ *this, uint64_t a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = *(this + 2);
  if (v4 == 0x4000)
  {
    if ((atomic_exchange(re::ecs2::ClippingManager::updateClippingParameterDataInternal(re::ecs2::ClippingParameterData &,re::DynamicArray<unsigned short> &,re::ecs2::Entity const*)::__FILE____LINE___logged, 1u) & 1) == 0)
    {
      v6 = *re::ecsComponentsLogObjects(a1);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a4 + 296);
        LODWORD(buf[0]) = 134218242;
        *(buf + 4) = 0x4000;
        WORD6(buf[0]) = 2080;
        *(buf + 14) = v7;
        _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, "Current frame has more than %zu unique clipping indices in the indirection buffer. Unable to add clipping indices for entity '%s'.", buf, 0x16u);
      }
    }

    return;
  }

  v9 = a2;
  v10 = a2 + 168;
  if (*(a2 + 160))
  {
    v11 = (a2 + 168);
  }

  else
  {
    v11 = *(a2 + 176);
  }

  v12 = *(a2 + 152);
  if (v12)
  {
    v13 = *(a1 + 101);
    v14 = *(a1 + 99);
    v15 = &v11[v12];
    while (1)
    {
      v16 = *v11;
      if (v14 <= v16)
      {
        break;
      }

      v17 = (v13 + 96 * *v11);
      if (v17[7].i32[0] | v17[7].u16[2] || v17[6].i32[0] | v17[6].u16[2] || (v18 = vcgtz_f32(v17[8]), (vpmin_u32(v18, v18).u32[0] & 0x80000000) != 0))
      {
        if (++v11 == v15)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v19 = v15 - 1;
        do
        {
          if (v19 == v11)
          {
            goto LABEL_24;
          }

          v15 = v19;
          v20 = *v19;
          if (v14 <= v20)
          {
            goto LABEL_40;
          }

          v21 = (v13 + 96 * *v19);
          a2 = v21[7].u16[2];
          if (v21[7].i32[0] | a2)
          {
            break;
          }

          a2 = v21[6].u16[2];
          if (v21[6].i32[0] | a2)
          {
            break;
          }

          v22 = vcgtz_f32(v21[8]);
          v19 = v15 - 1;
        }

        while ((vpmin_u32(v22, v22).u32[0] & 0x80000000) == 0);
        *v11++ = v20;
        *v15 = v16;
        if (v15 == v11)
        {
          goto LABEL_25;
        }
      }
    }

LABEL_39:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v16, v14);
    _os_crash();
    __break(1u);
LABEL_40:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v20, v14);
    _os_crash();
    __break(1u);
  }

LABEL_24:
  LODWORD(v15) = v11;
LABEL_25:
  if (*(v9 + 160))
  {
    v23 = v10;
  }

  else
  {
    v23 = *(v9 + 176);
  }

  *(v9 + 188) = (v15 - v23) >> 1;
  *(v9 + 184) = v4;
  v24 = 0x4000 - v4;
  if (v12 < v24)
  {
    LOWORD(v24) = v12;
  }

  *(v9 + 186) = v24;
  if (v24)
  {
    v25 = 0;
    v26 = 0;
    while (*(v9 + 152) > v26)
    {
      if (*(v9 + 160))
      {
        v27 = v10;
      }

      else
      {
        v27 = *(v9 + 176);
      }

      re::DynamicArray<unsigned short>::add(this, (v27 + v25));
      ++v26;
      v25 += 2;
      if (v26 >= *(v9 + 186))
      {
        return;
      }
    }

    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_39;
  }
}

uint64_t (***re::ecs2::ClippingManager::registerScene(re::ecs2::ClippingManager *this, re::EventBus **a2))(void)
{
  v63 = *MEMORY[0x1E69E9840];
  v52 = a2;
  v53 = a2;
  v2 = a2[36];
  if (!v2)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) An event bus is expected for this system to track entity state changes.", "eventBus", "registerScene", 106);
    _os_crash();
    __break(1u);
  }

  v5 = (this + 8);
  v54[0] = 0;
  v54[1] = 0;
  v55 = 1;
  v57 = 0;
  v58 = 0;
  v56 = 0;
  v59 = 0;
  v6 = (*(*v5 + 16))(v5);
  if (v7)
  {
    v8 = v6;
    v9 = 8 * v7;
    do
    {
      v10 = *v8++;
      v61 = re::globalAllocators(v6)[2];
      v11 = (*(*v61 + 32))(v61, 32, 0);
      *v11 = &unk_1F5D00BB0;
      v11[1] = v5;
      v11[2] = re::ecs2::HierarchyStateTracking<re::ecs2::ClippingParameterData>::invalidateEntityHierarchyEventHandler<REComponentDidChangeEvent>;
      v11[3] = 0;
      v62 = v11;
      v12 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v2, v60, v10, 0);
      v14 = v13;
      v15 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v54);
      *v15 = v12;
      v15[1] = v14;
      re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v60);
      re::ecs2::HierarchyStateTracking<re::ecs2::ClippingParameterData>::subscribeToEventToInvalidateEntityHierarchy<REComponentDidActivateEvent>(v5, v2, v54, v10);
      v6 = re::ecs2::HierarchyStateTracking<re::ecs2::ClippingParameterData>::subscribeToEventToInvalidateEntityHierarchy<REComponentWillDeactivateEvent>(v5, v2, v54, v10);
      v9 -= 8;
    }

    while (v9);
  }

  v16 = (*(*v5 + 24))(v5);
  if (v17)
  {
    v18 = v16;
    v19 = 8 * v17;
    do
    {
      v20 = *v18++;
      re::ecs2::HierarchyStateTracking<re::ecs2::ClippingParameterData>::subscribeToEventToInvalidateEntityHierarchy<REComponentDidActivateEvent>(v5, v2, v54, v20);
      v16 = re::ecs2::HierarchyStateTracking<re::ecs2::ClippingParameterData>::subscribeToEventToInvalidateEntityHierarchy<REComponentWillDeactivateEvent>(v5, v2, v54, v20);
      v19 -= 8;
    }

    while (v19);
  }

  v61 = re::globalAllocators(v16)[2];
  v21 = (*(*v61 + 32))(v61, 32, 0);
  *v21 = &unk_1F5D00CB8;
  v21[1] = v5;
  v21[2] = re::ecs2::HierarchyStateTracking<re::ecs2::ClippingParameterData>::invalidateEntityHierarchyEventHandler<RESceneEntityDidReparentEvent>;
  v21[3] = 0;
  v62 = v21;
  v22 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidReparentEvent>(v2, v60, 0, 0);
  v24 = v23;
  v25 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v54);
  *v25 = v22;
  v25[1] = v24;
  v26 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::destroyCallable(v60);
  v61 = re::globalAllocators(v26)[2];
  v27 = (*(*v61 + 32))(v61, 32, 0);
  *v27 = &unk_1F5D00D10;
  v27[1] = v5;
  v27[2] = re::ecs2::HierarchyStateTracking<re::ecs2::ClippingParameterData>::invalidateEntityHierarchyEventHandler<RESceneEntityDidActivateEvent>;
  v27[3] = 0;
  v62 = v27;
  v28 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidActivateEvent>(v2, v60, 0, 0);
  v30 = v29;
  v31 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v54);
  *v31 = v28;
  v31[1] = v30;
  v32 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::destroyCallable(v60);
  v61 = re::globalAllocators(v32)[2];
  v33 = (*(*v61 + 32))(v61, 32, 0);
  *v33 = &unk_1F5D00D68;
  v33[1] = v5;
  v33[2] = re::ecs2::HierarchyStateTracking<re::ecs2::ClippingParameterData>::invalidateEntityHierarchyEventHandler<RESceneEntityWillDeactivateEvent>;
  v33[3] = 0;
  v62 = v33;
  v34 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityWillDeactivateEvent>(v2, v60, 0, 0);
  v36 = v35;
  v37 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v54);
  *v37 = v34;
  v37[1] = v36;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::destroyCallable(v60);
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::add(this + 160, &v53, v54);
  v38 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v53 ^ (v53 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v53 ^ (v53 >> 30))) >> 27));
  v39 = v38 ^ (v38 >> 31);
  v40 = *(this + 10);
  if (!v40)
  {
    LODWORD(v41) = 0;
    goto LABEL_15;
  }

  v41 = v39 % v40;
  v42 = *(*(this + 3) + 4 * (v39 % v40));
  if (v42 == 0x7FFFFFFF)
  {
LABEL_15:
    re::HashSetBase<re::ecs2::Scene const*,re::ecs2::Scene const*,re::internal::ValueAsKey<re::ecs2::Scene const*>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::addAsCopy(this + 16, v41, v39, &v53, &v53);
    ++*(this + 14);
    goto LABEL_16;
  }

  v43 = *(this + 4);
  while (*(v43 + 24 * v42 + 16) != v53)
  {
    LODWORD(v42) = *(v43 + 24 * v42 + 8) & 0x7FFFFFFF;
    if (v42 == 0x7FFFFFFF)
    {
      goto LABEL_15;
    }
  }

LABEL_16:
  re::BucketArray<RESubscriptionHandle,8ul>::deinit(v54);
  result = v54[0];
  if (v54[0] && (v55 & 1) == 0)
  {
    result = (*(*v54[0] + 40))();
  }

  v45 = a2[36];
  if (v45)
  {
    v46 = re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::operator[](this + 160, &v52);
    v56 = re::globalAllocators(v46)[2];
    v47 = (*(*v56 + 32))(v56, 32, 0);
    *v47 = &unk_1F5D00B18;
    v47[1] = v5;
    v47[2] = re::ecs2::ClippingParameterDataStateTracking::invalidateTransformEventHandler<REBillboardTransformChangedEvent>;
    v47[3] = 0;
    v57 = v47;
    v48 = re::EventBus::subscribe<re::ecs2::Entity,REBillboardTransformChangedEvent>(v45, v54, 0, 0);
    v50 = v49;
    v51 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v46);
    *v51 = v48;
    v51[1] = v50;
    return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REBillboardTransformChangedEvent const&)>::destroyCallable(v54);
  }

  return result;
}

uint64_t re::ecs2::ClippingManager::unregisterScene(re::ecs2::ClippingManager *this, re::ecs2::Scene *a2)
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

void re::ecs2::ClippingParameterDataStateTracking::~ClippingParameterDataStateTracking(re::ecs2::ClippingParameterDataStateTracking *this)
{
  re::ecs2::ClippingParameterDataStateTracking::~ClippingParameterDataStateTracking(this);

  JUMPOUT(0x1E6906520);
}

{
  v2 = this;
  v27 = *MEMORY[0x1E69E9840];
  re::ecs2::ClippingParametersRegistry::~ClippingParametersRegistry((this + 768));
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v2 + 90);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v2 + 84);
  re::HashBrown<re::ecs2::ShadowScopeComponent const*,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::ShadowScopeComponent const*>,re::EqualTo<re::ecs2::ShadowScopeComponent const*>,void,false>::deinit(v2 + 608);
  re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::deinit(v2 + 544);
  re::HashBrown<re::ecs2::Entity const*,re::DynamicOverflowArray<re::DataArrayHandle<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>,8ul>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,void,false>::deinit(v2 + 480);
  re::HashBrown<re::ecs2::Entity const*,re::DynamicOverflowArray<re::DataArrayHandle<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>,8ul>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,void,false>::deinit(v2 + 416);
  v3 = v2 + 352;
  if (!*(v2 + 99))
  {
    goto LABEL_20;
  }

  re::DataArray<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>::DataArrayIterator<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData,re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData&>::DataArrayIterator(&v22, v2 + 352);
  v4 = v22;
  v11 = v22;
  v12 = DWORD2(v22);
  if (v3 != v22 || DWORD2(v22) != 0xFFFFFFFFLL)
  {
    v5 = WORD4(v22);
    v6 = WORD5(v22);
    while (1)
    {
      v7 = *(v4 + 16);
      if (v7 <= v6)
      {
        break;
      }

      re::DataArray<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>::destroy(v2 + 352, ((*(*(*(v4 + 32) + 16 * v6 + 8) + 4 * v5) & 0xFFFFFF) << 32) | (v6 << 16) | v5);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v11);
      v4 = v11;
      v5 = v12;
      v6 = HIWORD(v12);
      if (v11 == v3 && v12 == 0xFFFFLL && HIWORD(v12) == 0xFFFFLL)
      {
        goto LABEL_9;
      }
    }

LABEL_23:
    v13 = 0;
    v26 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    v17 = 797;
    v18 = 2048;
    v19 = v6;
    v20 = 2048;
    v21 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_9:
  v8 = *(v2 + 46);
  v6 = v8 - 1;
  if (v8 == 1)
  {
    goto LABEL_18;
  }

  v7 = 16 * v8 - 16;
  do
  {
    if (v8 <= v6)
    {
      v11 = 0;
      v26 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v14 = 136315906;
      v15 = "operator[]";
      v16 = 1024;
      v17 = 789;
      v18 = 2048;
      v19 = v6;
      v20 = 2048;
      v21 = v8;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_22:
      v11 = 0;
      v26 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v14 = 136315906;
      v15 = "removeAt";
      v16 = 1024;
      v17 = 931;
      v18 = 2048;
      v19 = v6;
      v20 = 2048;
      v21 = v1;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_23;
    }

    v9 = (*(v2 + 48) + v7);
    (*(**(v2 + 44) + 40))(*(v2 + 44), *v9);
    (*(**(v2 + 44) + 40))(*(v2 + 44), v9[1]);
    v1 = *(v2 + 46);
    if (v1 <= v6)
    {
      goto LABEL_22;
    }

    v8 = v1 - 1;
    if (v1 - 1 > v6)
    {
      *(*(v2 + 48) + v7) = *(*(v2 + 48) + 16 * v1 - 16);
      v8 = *(v2 + 46) - 1;
    }

    *(v2 + 46) = v8;
    ++*(v2 + 94);
    v7 -= 16;
    --v6;
  }

  while (v6);
  *(v2 + 50) = 0xFFFFFFFF00000000;
  if (!v8)
  {
    v11 = 0;
    v26 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v2 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    v17 = 789;
    v18 = 2048;
    v19 = 0;
    v20 = 2048;
    v21 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_18:
    *(v2 + 50) = 0xFFFFFFFF00000000;
  }

  v10 = *(v2 + 48);
  (*(**(v2 + 44) + 40))(*(v2 + 44), *v10);
  (*(**(v2 + 44) + 40))(*(v2 + 44), v10[1]);
  re::DynamicArray<unsigned long>::deinit(v3);
  *(v2 + 99) = 0;
LABEL_20:
  re::DynamicArray<unsigned long>::deinit(v3);
  re::FixedArray<CoreIKTransform>::deinit(v2 + 41);
  re::FixedArray<CoreIKTransform>::deinit(v2 + 38);
  *v2 = &unk_1F5D00B70;
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v2 + 31);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v2 + 25);
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(v2 + 152);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v2 + 13);
  re::HashTable<re::ecs2::Entity const*,re::ecs2::ClippingParameterData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::deinit(v2 + 7);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v2 + 1);
}

void re::ecs2::ClippingManager::~ClippingManager(re::ecs2::ClippingManager *this)
{
  re::ecs2::ClippingParameterDataStateTracking::~ClippingParameterDataStateTracking((this + 8));
}

{
  re::ecs2::ClippingParameterDataStateTracking::~ClippingParameterDataStateTracking((this + 8));

  JUMPOUT(0x1E6906520);
}

uint64_t re::ecs2::ClippingManager::clippingDataForPortalCrossingPair(re::ecs2::ClippingManager *this, const re::ecs2::Entity *a2, const re::ecs2::Entity *a3)
{
  v4 = re::HashBrown<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>,re::DataArrayHandle<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>,re::Hash<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>>,re::EqualTo<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>>,void,false>::find(this + 69, a2, a3);
  if (v4 == -1)
  {
    return 0;
  }

  v5 = re::DataArray<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>::tryGet(this + 360, *(*(this + 70) + 24 * v4 + 16));
  if (v5)
  {
    return v5 + 16;
  }

  else
  {
    return 0;
  }
}

uint64_t re::internal::CallableMemFn<re::ecs2::ClippingParameterDataStateTracking,REEventHandlerResult (re::ecs2::ClippingParameterDataStateTracking::*)(re::ecs2::Entity *,REBillboardTransformChangedEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REBillboardTransformChangedEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::ClippingParameterDataStateTracking,REEventHandlerResult (re::ecs2::ClippingParameterDataStateTracking::*)(re::ecs2::Entity *,REBillboardTransformChangedEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REBillboardTransformChangedEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D00B18;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::ClippingParameterDataStateTracking,REEventHandlerResult (re::ecs2::ClippingParameterDataStateTracking::*)(re::ecs2::Entity *,REBillboardTransformChangedEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REBillboardTransformChangedEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D00B18;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

double re::HashBrown<re::ecs2::Entity const*,re::DynamicOverflowArray<re::DataArrayHandle<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>,8ul>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,void,false>::deinit(uint64_t a1)
{
  if (*(a1 + 56))
  {
    if (*(a1 + 8))
    {
      v10[0] = a1;
      v2 = *(a1 + 16);
      if (v2 >= 0x10)
      {
        v3 = 0;
        v4 = *a1;
        v5 = v2 >> 4;
        while (1)
        {
          v6 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v4), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
          v10[1] = v6 ^ 0xFFFFLL;
          if (v6 != 0xFFFFLL)
          {
            break;
          }

          v3 -= 16;
          ++v4;
          if (!--v5)
          {
            goto LABEL_10;
          }
        }

        v7 = __clz(__rbit64(v6 ^ 0xFFFFLL));
        v8 = v7 - v3;
        v11 = v7 - v3;
        if (v7 + 1 != v3)
        {
          do
          {
            re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(*(a1 + 8) + 96 * v8 + 8);
            re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v10);
            v8 = v11;
          }

          while (v11 != -1);
        }
      }

LABEL_10:
      *(a1 + 8) = 0;
    }

    if (*a1)
    {
      (*(**(a1 + 56) + 40))(*(a1 + 56));
      *a1 = 0;
    }

    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

void re::ecs2::HierarchyStateTracking<re::ecs2::ClippingParameterData>::clearEntityHierarchyStateData(_DWORD *a1, uint64_t a2)
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
        re::HashTable<re::ecs2::Entity const*,re::ecs2::ClippingParameterData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove((a1 + 14), &v8);
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

double re::HashTable<re::ecs2::Entity const*,re::ecs2::ClippingParameterData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v6 + v4 + 160);
          v3 = *(a1 + 8);
        }

        v4 += 224;
      }

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

_anonymous_namespace_ *re::DataArray<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>::allocBlock(void *a1)
{
  v3 = 208 * *(a1 + 11);
  v4 = (*(**a1 + 32))(*a1, v3, 0);
  if (!v4)
  {
    re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.elements", "allocBlock", 520, v3, *(*a1 + 8));
    _os_crash();
    __break(1u);
    goto LABEL_16;
  }

  v6 = v4;
  v1 = 4 * *(a1 + 11);
  result = (*(**a1 + 32))(*a1, v1, 0);
  if (!result)
  {
LABEL_16:
    re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.allocationCounters", "allocBlock", 528, v1, *(*a1 + 8));
    result = _os_crash();
    __break(1u);
    return result;
  }

  v9 = result;
  v11 = a1[1];
  v10 = a1[2];
  if (v10 >= v11)
  {
    v12 = v10 + 1;
    if (v11 < v10 + 1)
    {
      if (*a1)
      {
        v13 = 2 * v11;
        if (!v11)
        {
          v13 = 8;
        }

        if (v13 <= v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = v13;
        }

        result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, v14);
      }

      else
      {
        result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, v12);
        ++*(a1 + 6);
      }
    }

    v10 = a1[2];
  }

  v15 = (a1[4] + 16 * v10);
  *v15 = v6;
  v15[1] = v9;
  a1[2] = v10 + 1;
  ++*(a1 + 6);
  *(a1 + 12) = 0;
  return result;
}

uint64_t (***re::ecs2::HierarchyStateTracking<re::ecs2::ClippingParameterData>::subscribeToEventToInvalidateEntityHierarchy<REComponentDidActivateEvent>(re *a1, re::EventBus *a2, uint64_t a3, uint64_t a4))(void)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = re::globalAllocators(a1)[2];
  v8 = (*(*v15 + 32))(v15, 32, 0);
  *v8 = &unk_1F5D00C08;
  v8[1] = a1;
  v8[2] = re::ecs2::HierarchyStateTracking<re::ecs2::ClippingParameterData>::invalidateEntityHierarchyEventHandler<REComponentDidActivateEvent>;
  v8[3] = 0;
  v16 = v8;
  v9 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(a2, v14, a4, 0);
  v11 = v10;
  v12 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a3);
  *v12 = v9;
  v12[1] = v11;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v14);
}

uint64_t (***re::ecs2::HierarchyStateTracking<re::ecs2::ClippingParameterData>::subscribeToEventToInvalidateEntityHierarchy<REComponentWillDeactivateEvent>(re *a1, re::EventBus *a2, uint64_t a3, uint64_t a4))(void)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = re::globalAllocators(a1)[2];
  v8 = (*(*v15 + 32))(v15, 32, 0);
  *v8 = &unk_1F5D00C60;
  v8[1] = a1;
  v8[2] = re::ecs2::HierarchyStateTracking<re::ecs2::ClippingParameterData>::invalidateEntityHierarchyEventHandler<REComponentWillDeactivateEvent>;
  v8[3] = 0;
  v16 = v8;
  v9 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(a2, v14, a4, 0);
  v11 = v10;
  v12 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a3);
  *v12 = v9;
  v12[1] = v11;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v14);
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::ClippingParameterData>::invalidateEntityHierarchyEventHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::ClippingParameterData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::ClippingParameterData>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::ClippingParameterData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::ClippingParameterData>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D00BB0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::ClippingParameterData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::ClippingParameterData>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D00BB0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::ClippingParameterData>::invalidateEntityHierarchyEventHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::ClippingParameterData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::ClippingParameterData>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::ClippingParameterData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::ClippingParameterData>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D00C08;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::ClippingParameterData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::ClippingParameterData>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D00C08;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::ClippingParameterData>::invalidateEntityHierarchyEventHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::ClippingParameterData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::ClippingParameterData>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::ClippingParameterData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::ClippingParameterData>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D00C60;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::ClippingParameterData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::ClippingParameterData>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D00C60;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::ClippingParameterData>::invalidateEntityHierarchyEventHandler<RESceneEntityDidReparentEvent>(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::ClippingParameterData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::ClippingParameterData>::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::ClippingParameterData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::ClippingParameterData>::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D00CB8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::ClippingParameterData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::ClippingParameterData>::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D00CB8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::ClippingParameterData>::invalidateEntityHierarchyEventHandler<RESceneEntityDidActivateEvent>(uint64_t a1, uint64_t a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::ClippingParameterData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::ClippingParameterData>::*)(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::ClippingParameterData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::ClippingParameterData>::*)(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D00D10;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::ClippingParameterData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::ClippingParameterData>::*)(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D00D10;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::ClippingParameterData>::invalidateEntityHierarchyEventHandler<RESceneEntityWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v3 = a1 + 200;
  (*(*a1 + 40))(a1);
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(a1 + 104, &v5);
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(v3, &v5);
  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::ClippingParameterData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::ClippingParameterData>::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::ClippingParameterData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::ClippingParameterData>::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D00D68;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::ClippingParameterData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::ClippingParameterData>::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D00D68;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::HashBrown<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>,re::DataArrayHandle<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>,re::Hash<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>>,re::EqualTo<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>>,void,false>::find(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  if (!a1[7])
  {
    return -1;
  }

  v4 = a1[2];
  if (v4 < 0x10 || !a1[3])
  {
    return -1;
  }

  v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) >> 27));
  v9 = ((v8 ^ (v8 >> 31)) + ((v7 ^ (v7 >> 31)) << 6) + ((v7 ^ (v7 >> 31)) >> 2) - 0x61C8864680B583E9) ^ v7 ^ (v7 >> 31);
  v10 = v4 >> 4;
  v11 = v9 % (v4 >> 4);
  v12 = *a1;
  v13 = vdupq_n_s8(v9 & 0x7F);
  v14 = xmmword_1E304FAD0;
  v15.i64[0] = -1;
  for (v15.i64[1] = -1; ; v15.i64[1] = -1)
  {
    v16 = *(v12 + 16 * v11);
    v17 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v13, v16), v14)))), 0x3830282018100800);
    v18 = __clz(__rbit64(v17));
    if (v18 <= 0x3F)
    {
      break;
    }

LABEL_13:
    if (vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v16, v15), v14)))), 0x3830282018100800))
    {
      return -1;
    }

    v26 = v14;
    v27 = v13;
    if (++v11 == v10)
    {
      v11 = 0;
    }

    v25 = re::Hash<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>>::operator()(a2, a3) % v10;
    result = -1;
    v14 = v26;
    v13 = v27;
    v15.i64[0] = -1;
    if (v11 == v25)
    {
      return result;
    }
  }

  v19 = 16 * v11;
  while (1)
  {
    result = v18 + v19;
    v21 = (a1[1] + 24 * (v18 + v19));
    v23 = *v21;
    v22 = v21[1];
    if (v23 == a2 && v22 == a3)
    {
      return result;
    }

    if (v18 <= 0x3E)
    {
      v18 = __clz(__rbit64((-2 << v18) & v17));
      if (v18 < 0x40)
      {
        continue;
      }
    }

    goto LABEL_13;
  }
}

uint64_t re::Hash<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>>::operator()(unint64_t a1, unint64_t a2)
{
  v2 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a1 ^ (a1 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a1 ^ (a1 >> 30))) >> 27));
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  return ((v3 ^ (v3 >> 31)) + ((v2 ^ (v2 >> 31)) << 6) + ((v2 ^ (v2 >> 31)) >> 2) - 0x61C8864680B583E9) ^ v2 ^ (v2 >> 31);
}

double re::HashBrown<unsigned long long,re::HashSet<re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::resize(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24) + a2;
  v5 = (((151 * v4) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v5 > v3)
  {
    v6 = 3 * v3;
    v7 = v6 << 6;
    v8 = (v6 >> 1) & 0x1FFFFFFFFFFFFFFLL;
    if (v5 > v7 >> 7)
    {
      v8 = (((151 * v4) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
    }

    v4 = (v8 << 7) / 0x97;
  }

  v9 = *(a1 + 56);
  memset(v28, 0, sizeof(v28));
  re::HashBrown<RESubscriptionHandle,re::Function<void ()(void)>,re::Hash<RESubscriptionHandle>,re::EqualTo<RESubscriptionHandle>,void,false>::init(v28, v9, v4);
  v26[0] = a1;
  v11 = *(a1 + 16);
  if (v11 >= 0x10)
  {
    v12 = 0;
    v13 = *a1;
    v14 = v11 >> 4;
    v15 = xmmword_1E304FAD0;
    v10.n128_u64[0] = 0x3830282018100800;
    while (1)
    {
      v16 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v13), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v26[1] = v16 ^ 0xFFFFLL;
      if (v16 != 0xFFFFLL)
      {
        break;
      }

      v12 -= 16;
      ++v13;
      if (!--v14)
      {
        goto LABEL_13;
      }
    }

    v17 = __clz(__rbit64(v16 ^ 0xFFFFLL));
    v18 = v17 - v12;
    v27 = v17 - v12;
    if (v17 + 1 != v12)
    {
      do
      {
        re::HashBrown<unsigned long long,re::HashSet<re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::internalAdd(v28, *(v26[0] + 8) + 56 * v18, *(v26[0] + 8) + 56 * v18 + 8, v15, v10);
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v26);
        v18 = v27;
      }

      while (v27 != -1);
      v11 = *(a1 + 16);
    }
  }

LABEL_13:
  v19 = *(&v28[3] + 1);
  *(&v28[3] + 1) = *(a1 + 56);
  v20 = v28[0];
  v21 = v28[1];
  v28[0] = *a1;
  *&v28[1] = v11;
  v22 = v28[2];
  v23 = *(a1 + 40);
  *(a1 + 48) = *&v28[3];
  *(a1 + 56) = v19;
  *(&v28[2] + 8) = v23;
  v24 = *(a1 + 24);
  *a1 = v20;
  *(a1 + 16) = v21;
  *(a1 + 32) = v22;
  *(&v28[1] + 8) = v24;
  return re::HashBrown<re::ecs2::ShadowScopeComponent const*,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::ShadowScopeComponent const*>,re::EqualTo<re::ecs2::ShadowScopeComponent const*>,void,false>::deinit(v28);
}

void *re::HashBrown<unsigned long long,re::HashSet<re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::internalAdd(uint64_t a1, void *a2, uint64_t *a3)
{
  if (!*(a1 + 56))
  {
  }

  v6 = *(a1 + 32);
  if (!v6 || (v7 = *(a1 + 16), v7 > 8 * v6))
  {
    re::HashBrown<unsigned long long,re::HashSet<re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::resize(a1, 1u);
    v7 = *(a1 + 16);
  }

  v8 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
  v10 = v7 >> 4;
  v11 = v9 % (v7 >> 4);
  v12 = *a1;
  v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * v11)), xmmword_1E304FAD0)))), 0x3830282018100800)));
  if (v13 >= 0x40)
  {
    do
    {
      if (v11 + 1 == v10)
      {
        v11 = 0;
      }

      else
      {
        ++v11;
      }

      v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v12 + 16 * v11)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    }

    while (v13 > 0x3F);
  }

  v14 = v12 + 16 * v11;
  v15 = *(v14 + v13);
  *(v14 + v13) = v9 & 0x7F;
  v16 = 56 * (v13 + 16 * v11);
  v17 = *(a1 + 8) + v16;
  *v17 = *a2;
  *(v17 + 44) = 0x7FFFFFFFLL;
  *(v17 + 24) = 0u;
  *(v17 + 40) = 0;
  *(v17 + 8) = 0u;
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::swap((v17 + 8), a3);
  if (v15 == 255)
  {
    v18 = -1;
  }

  else
  {
    v18 = 0;
  }

  v19.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v19.i64[1] = v18;
  *(a1 + 24) = vaddq_s64(*(a1 + 24), v19);
  v20 = (*(a1 + 8) + v16);
  v22 = *v20;
  result = v20 + 1;
  v23 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v22 ^ (v22 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v22 ^ (v22 >> 30))) >> 27));
  *(a1 + 40) ^= (v23 >> 31) ^ v23;
  return result;
}

uint64_t re::HashBrown<re::ecs2::Entity const*,re::DynamicOverflowArray<re::DataArrayHandle<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>,8ul>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,void,false>::find(void *a1, unint64_t a2)
{
  if (!a1[7])
  {
    return -1;
  }

  v2 = a1[2];
  if (v2 < 0x10 || !a1[3])
  {
    return -1;
  }

  v3 = v2 >> 4;
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  v5 = v4 ^ (v4 >> 31);
  v6 = v5 % v3;
  v7 = vdupq_n_s8(v5 & 0x7F);
  v8.i64[0] = -1;
  v8.i64[1] = -1;
  v9 = v5 % v3;
  while (1)
  {
    v10 = *(*a1 + 16 * v9);
    v11 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v7, v10), xmmword_1E304FAD0)))), 0x3830282018100800);
    v12 = __clz(__rbit64(v11));
    if (v12 <= 0x3F)
    {
      break;
    }

LABEL_10:
    if (vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v10, v8), xmmword_1E304FAD0)))), 0x3830282018100800))
    {
      return -1;
    }

    if (v9 + 1 == v3)
    {
      v9 = 0;
    }

    else
    {
      ++v9;
    }

    v14 = -1;
    if (v9 == v6)
    {
      return v14;
    }
  }

  v13 = 16 * v9;
  while (1)
  {
    v14 = v12 + v13;
    if (*(a1[1] + 96 * (v12 + v13)) == a2)
    {
      return v14;
    }

    if (v12 <= 0x3E)
    {
      v12 = __clz(__rbit64((-2 << v12) & v11));
      if (v12 < 0x40)
      {
        continue;
      }
    }

    goto LABEL_10;
  }
}

double re::HashBrown<re::ecs2::Entity const*,re::DynamicOverflowArray<re::DataArrayHandle<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>,8ul>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,void,false>::resize(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24) + a2;
  v5 = (((151 * v4) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v5 > v3)
  {
    v6 = 3 * v3;
    v7 = v6 << 6;
    v8 = (v6 >> 1) & 0x1FFFFFFFFFFFFFFLL;
    if (v5 > v7 >> 7)
    {
      v8 = (((151 * v4) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
    }

    v4 = (v8 << 7) / 0x97;
  }

  v9 = *(a1 + 56);
  memset(v28, 0, sizeof(v28));
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::init(v28, v9, v4);
  v26[0] = a1;
  v11 = *(a1 + 16);
  if (v11 >= 0x10)
  {
    v12 = 0;
    v13 = *a1;
    v14 = v11 >> 4;
    v15 = xmmword_1E304FAD0;
    v10.n128_u64[0] = 0x3830282018100800;
    while (1)
    {
      v16 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v13), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v26[1] = v16 ^ 0xFFFFLL;
      if (v16 != 0xFFFFLL)
      {
        break;
      }

      v12 -= 16;
      ++v13;
      if (!--v14)
      {
        goto LABEL_13;
      }
    }

    v17 = __clz(__rbit64(v16 ^ 0xFFFFLL));
    v18 = v17 - v12;
    v27 = v17 - v12;
    if (v17 + 1 != v12)
    {
      do
      {
        re::HashBrown<re::ecs2::Entity const*,re::DynamicOverflowArray<re::DataArrayHandle<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>,8ul>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,void,false>::internalAdd(v28, *(v26[0] + 8) + 96 * v18, *(v26[0] + 8) + 96 * v18 + 8, v15, v10);
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v26);
        v18 = v27;
      }

      while (v27 != -1);
      v11 = *(a1 + 16);
    }
  }

LABEL_13:
  v19 = *(&v28[3] + 1);
  *(&v28[3] + 1) = *(a1 + 56);
  v20 = v28[0];
  v21 = v28[1];
  v28[0] = *a1;
  *&v28[1] = v11;
  v22 = v28[2];
  v23 = *(a1 + 40);
  *(a1 + 48) = *&v28[3];
  *(a1 + 56) = v19;
  *(&v28[2] + 8) = v23;
  v24 = *(a1 + 24);
  *a1 = v20;
  *(a1 + 16) = v21;
  *(a1 + 32) = v22;
  *(&v28[1] + 8) = v24;
  return re::HashBrown<re::ecs2::Entity const*,re::DynamicOverflowArray<re::DataArrayHandle<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>,8ul>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,void,false>::deinit(v28);
}

void *re::HashBrown<re::ecs2::Entity const*,re::DynamicOverflowArray<re::DataArrayHandle<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>,8ul>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,void,false>::internalAdd(uint64_t a1, void *a2, uint64_t a3)
{
  if (!*(a1 + 56))
  {
  }

  v6 = *(a1 + 32);
  if (!v6 || (v7 = *(a1 + 16), v7 > 8 * v6))
  {
    re::HashBrown<re::ecs2::Entity const*,re::DynamicOverflowArray<re::DataArrayHandle<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>,8ul>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,void,false>::resize(a1, 1u);
    v7 = *(a1 + 16);
  }

  v8 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
  v10 = v7 >> 4;
  v11 = v9 % (v7 >> 4);
  v12 = *a1;
  v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * v11)), xmmword_1E304FAD0)))), 0x3830282018100800)));
  if (v13 >= 0x40)
  {
    do
    {
      if (v11 + 1 == v10)
      {
        v11 = 0;
      }

      else
      {
        ++v11;
      }

      v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v12 + 16 * v11)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    }

    while (v13 > 0x3F);
  }

  v14 = v12 + 16 * v11;
  v15 = *(v14 + v13);
  *(v14 + v13) = v9 & 0x7F;
  v16 = v13 + 16 * v11;
  *(*(a1 + 8) + 96 * v16) = *a2;
  v17 = *(a1 + 8) + 96 * v16;
  *(v17 + 8) = 0;
  *(v17 + 16) = 0;
  v18 = v17 + 8;
  *(v18 + 16) = 1;
  *(v18 + 24) = 0;
  v19 = v18 + 24;
  *(v18 + 32) = 0;
  if ((*(a3 + 16) & 1) == 0)
  {
    *(v18 + 16) = 3;
    v20 = *(a3 + 8);
    *v18 = *a3;
    *(v18 + 8) = v20;
    *a3 = 0;
    *(a3 + 8) = 0;
    v21 = *(v18 + 32);
    *(v18 + 32) = *(a3 + 32);
    *(a3 + 32) = v21;
    *(a3 + 16) = *(a3 + 16) & 0xFFFFFFFE | *(v18 + 16) & 1;
    *(v18 + 16) &= ~1u;
    v22 = *(v18 + 24);
    *(v18 + 24) = *(a3 + 24);
    *(a3 + 24) = v22;
LABEL_23:
    v29 = 2;
    goto LABEL_24;
  }

  v23 = *(a3 + 8);
  if (!v23)
  {
    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v18);
    *v18 = *a3;
    goto LABEL_23;
  }

  *v18 = *a3;
  re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::setCapacity(v18, v23);
  if (*(a3 + 16))
  {
    v24 = (a3 + 24);
  }

  else
  {
    v24 = *(a3 + 32);
  }

  v25 = *(v18 + 8);
  v26 = *(v18 + 16);
  v27 = (v18 + 24);
  if ((v26 & 1) == 0)
  {
    v27 = *(v18 + 32);
  }

  if (v25)
  {
    memmove(v27, v24, 8 * v25);
    v26 = *(v18 + 16);
  }

  if ((v26 & 1) == 0)
  {
    v19 = *(v18 + 32);
  }

  if (*(a3 + 16))
  {
    v28 = a3 + 24;
  }

  else
  {
    v28 = *(a3 + 32);
  }

  memcpy((v19 + 8 * *(v18 + 8)), (v28 + 8 * *(v18 + 8)), 8 * (v23 - *(v18 + 8)));
  *(v18 + 8) = v23;
  *(a3 + 8) = 0;
  v29 = 4;
LABEL_24:
  *(a3 + 16) = ((*(a3 + 16) & 0xFFFFFFFE) + v29) | *(a3 + 16) & 1;
  *(v18 + 16) += 2;
  if (v15 == 255)
  {
    v30 = -1;
  }

  else
  {
    v30 = 0;
  }

  v31.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v31.i64[1] = v30;
  *(a1 + 24) = vaddq_s64(*(a1 + 24), v31);
  v32 = (*(a1 + 8) + 96 * v16);
  v34 = *v32;
  result = v32 + 1;
  v35 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v34 ^ (v34 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v34 ^ (v34 >> 30))) >> 27));
  *(a1 + 40) ^= (v35 >> 31) ^ v35;
  return result;
}

void re::HashBrown<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>,re::DataArrayHandle<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>,re::Hash<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>>,re::EqualTo<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>>,void,false>::resize(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24) + a2;
  v5 = (((151 * v4) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v5 > v3)
  {
    v6 = 3 * v3;
    v7 = v6 << 6;
    v8 = (v6 >> 1) & 0x1FFFFFFFFFFFFFFLL;
    if (v5 > v7 >> 7)
    {
      v8 = (((151 * v4) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
    }

    v4 = (v8 << 7) / 0x97;
  }

  v9 = *(a1 + 56);
  memset(v46, 0, sizeof(v46));
  v10 = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::init(v46, v9, v4);
  v44[0] = a1;
  v11 = *(a1 + 16);
  if (v11 >= 0x10)
  {
    v12 = 0;
    v13 = *a1;
    v14 = v11 >> 4;
    while (1)
    {
      v15 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v13), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v44[1] = v15 ^ 0xFFFFLL;
      if (v15 != 0xFFFFLL)
      {
        break;
      }

      v12 -= 16;
      ++v13;
      if (!--v14)
      {
        goto LABEL_28;
      }
    }

    v16 = __clz(__rbit64(v15 ^ 0xFFFFLL));
    v17 = v16 - v12;
    v45 = v16 - v12;
    if (v16 + 1 != v12)
    {
      do
      {
        v18 = *(v44[0] + 8);
        if (*(&v46[3] + 1))
        {
          v19 = *&v46[2];
        }

        else
        {
          *&v46[1] = 16;
          *&v37 = -1;
          *(&v37 + 1) = -1;
          **&v46[0] = v37;
          v19 = *&v46[1];
          *(&v46[0] + 1) = *&v46[0] + 16;
          *(&v46[1] + 1) = 0;
          v46[2] = *&v46[1];
          *&v46[3] = 0;
        }

        v20 = xmmword_1E304FAD0;
        if (!v19 || (v21 = *&v46[1], *&v46[1] > (8 * v19)))
        {
          re::HashBrown<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>,re::DataArrayHandle<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>,re::Hash<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>>,re::EqualTo<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>>,void,false>::resize(v46, 1);
          v20 = xmmword_1E304FAD0;
          v21 = *&v46[1];
        }

        v22 = (v18 + 24 * v17);
        v23 = 0xBF58476D1CE4E5B9 * (*v22 ^ (*v22 >> 30));
        v24 = (0x94D049BB133111EBLL * (v23 ^ (v23 >> 27))) ^ ((0x94D049BB133111EBLL * (v23 ^ (v23 >> 27))) >> 31);
        v25 = 0xBF58476D1CE4E5B9 * (v22[1] ^ (v22[1] >> 30));
        v26 = (((0x94D049BB133111EBLL * (v25 ^ (v25 >> 27))) ^ ((0x94D049BB133111EBLL * (v25 ^ (v25 >> 27))) >> 31)) - 0x61C8864680B583E9 + (v24 << 6) + (v24 >> 2)) ^ v24;
        v27 = v21 >> 4;
        v28 = v26 % (v21 >> 4);
        v29 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*&v46[0] + 16 * v28)), v20)))), 0x3830282018100800)));
        if (v29 >= 0x40)
        {
          do
          {
            if (v28 + 1 == v27)
            {
              v28 = 0;
            }

            else
            {
              ++v28;
            }

            v29 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*&v46[0] + 16 * v28)), v20)))), 0x3830282018100800)));
          }

          while (v29 > 0x3F);
        }

        v30 = *&v46[0] + 16 * v28;
        v31 = *(v30 + v29);
        *(v30 + v29) = v26 & 0x7F;
        *(*(&v46[0] + 1) + 24 * (v29 + 16 * v28)) = *v22;
        *(*(&v46[0] + 1) + 24 * (v29 + 16 * v28) + 16) = v22[2];
        if (v31 == 255)
        {
          v32 = -1;
        }

        else
        {
          v32 = 0;
        }

        v33.i64[0] = vdupq_n_s64(1uLL).u64[0];
        v33.i64[1] = v32;
        *(&v46[1] + 8) = vaddq_s64(*(&v46[1] + 8), v33);
        v34 = (*(&v46[0] + 1) + 24 * (v29 + 16 * v28));
        v35 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*v34 ^ (*v34 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*v34 ^ (*v34 >> 30))) >> 27));
        v36 = 0xBF58476D1CE4E5B9 * (v34[1] ^ (v34[1] >> 30));
        *(&v46[2] + 1) ^= v35 ^ (v35 >> 31) ^ (((0x94D049BB133111EBLL * (v36 ^ (v36 >> 27))) ^ ((0x94D049BB133111EBLL * (v36 ^ (v36 >> 27))) >> 31)) - 0x61C8864680B583E9 + ((v35 ^ (v35 >> 31)) << 6) + ((v35 ^ (v35 >> 31)) >> 2));
        v10 = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v44);
        v17 = v45;
      }

      while (v45 != -1);
      v11 = *(a1 + 16);
    }
  }

LABEL_28:
  v38 = *(&v46[3] + 1);
  *(&v46[3] + 1) = *(a1 + 56);
  v39 = v46[0];
  v40 = v46[1];
  v46[0] = *a1;
  *&v46[1] = v11;
  v41 = v46[2];
  v42 = *(a1 + 40);
  *(a1 + 48) = *&v46[3];
  *(a1 + 56) = v38;
  *(&v46[2] + 8) = v42;
  v43 = *(a1 + 24);
  *a1 = v39;
  *(a1 + 16) = v40;
  *(a1 + 32) = v41;
  *(&v46[1] + 8) = v43;
  re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::deinit(v46);
}

uint64_t re::BucketArray<re::ecs2::ClippingParameterDataStateTracking::buildClippingParameterDataStateForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&,re::ecs2::RenderOptions const&,re::TransformService &)::EntityClippingData,32ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::ClippingParameterDataStateTracking::buildClippingParameterDataStateForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&,re::ecs2::RenderOptions const&,re::TransformService &)::EntityClippingData,32ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::ecs2::ClippingParameterDataStateTracking::buildClippingParameterDataStateForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&,re::ecs2::RenderOptions const&,re::TransformService &)::EntityClippingData,32ul>::setBucketsCapacity(void *result, unint64_t a2)
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
          result = (*(**v3 + 32))(*v3, 3584, 0);
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

uint64_t re::BucketArray<re::ecs2::ClippingParameterDataStateTracking::buildClippingParameterDataStateForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&,re::ecs2::RenderOptions const&,re::TransformService &)::EntityClippingData,32ul>::operator[](uint64_t a1, unint64_t a2)
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

  return *(v3 + 8 * (a2 >> 5)) + 112 * (a2 & 0x1F);
}

_anonymous_namespace_ *re::DynamicOverflowArray<unsigned short,8ul>::growCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  if (!*result)
  {
    result = re::DynamicOverflowArray<unsigned short,8ul>::setCapacity(v3, v2);
    *(v3 + 4) += 2;
    return result;
  }

  if (*(result + 16))
  {
    if (a2 <= 8)
    {
      return result;
    }

    v5 = 16;
  }

  else
  {
    v4 = *(result + 3);
    if (v4 >= a2)
    {
      return result;
    }

    v5 = 2 * v4;
  }

  if (v5 > a2)
  {
    a2 = v5;
  }

  return re::DynamicOverflowArray<unsigned short,8ul>::setCapacity(result, a2);
}

uint64_t re::HashTable<re::ecs2::Entity const*,re::ecs2::ClippingParameterData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v32, 0, 36);
          *&v32[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v32, v9, v8);
          v11 = *v32;
          *v32 = *a1;
          *a1 = v11;
          v12 = *&v32[16];
          v13 = *(a1 + 16);
          *&v32[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v32[24];
          *&v32[24] = *(a1 + 24);
          v14 = *&v32[32];
          *(a1 + 24) = v15;
          ++*&v32[40];
          v16 = v14;
          if (v14)
          {
            v17 = v13 + 160;
            do
            {
              if ((*(v17 - 160) & 0x80000000) != 0)
              {
                v18 = re::HashTable<re::ecs2::Entity const*,re::ecs2::ClippingParameterData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(a1, *(v17 + 48) % *(a1 + 24));
                *(v18 + 8) = *(v17 - 152);
                v19 = *(v17 - 64);
                v20 = *(v17 - 48);
                v21 = *(v17 - 16);
                *(v18 + 128) = *(v17 - 32);
                *(v18 + 144) = v21;
                *(v18 + 96) = v19;
                *(v18 + 112) = v20;
                v22 = *(v17 - 128);
                v23 = *(v17 - 112);
                v24 = *(v17 - 80);
                *(v18 + 64) = *(v17 - 96);
                *(v18 + 80) = v24;
                *(v18 + 32) = v22;
                *(v18 + 48) = v23;
                *(v18 + 16) = *(v17 - 144);
                re::DynamicOverflowArray<unsigned short,8ul>::DynamicOverflowArray(v18 + 160, v17);
                v25 = *(v17 + 40);
                *(v18 + 203) = *(v17 + 43);
                *(v18 + 200) = v25;
              }

              v17 += 224;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::ecs2::Entity const*,re::ecs2::ClippingParameterData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::deinit(v32);
        }
      }

      else
      {
        if (v8)
        {
          v28 = 2 * v7;
        }

        else
        {
          v28 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v26 = *(a1 + 16);
    v27 = *(v26 + 224 * v5);
  }

  else
  {
    v26 = *(a1 + 16);
    v27 = *(v26 + 224 * v5);
    *(a1 + 36) = v27 & 0x7FFFFFFF;
  }

  v29 = v26 + 224 * v5;
  *v29 = v27 | 0x80000000;
  v30 = *(a1 + 8);
  *v29 = *(v30 + 4 * a2) | 0x80000000;
  *(v30 + 4 * a2) = v5;
  *(v29 + 208) = a3;
  ++*(a1 + 28);
  return v26 + 224 * v5;
}

uint64_t re::HashSetBase<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>,re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>,re::internal::ValueAsKey<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>>,re::Hash<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>>,re::EqualTo<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>>,true,false>::addAsMove(uint64_t a1, unsigned int a2, unint64_t a3, _OWORD *a4)
{
  v7 = *(a1 + 36);
  if (v7 == 0x7FFFFFFF)
  {
    v7 = *(a1 + 32);
    v8 = v7;
    if (v7 == *(a1 + 24))
    {
      v9 = *(a1 + 28);
      v10 = 2 * v9;
      v11 = *a1;
      if (*a1)
      {
        if (v10)
        {
          v12 = v7 == v10;
        }

        else
        {
          v12 = 1;
        }

        if (!v12 && (v9 & 0x80000000) == 0)
        {
          memset(v24, 0, 36);
          *&v24[36] = 0x7FFFFFFFLL;
          re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::init(v24, v11, v10);
          v13 = *v24;
          *v24 = *a1;
          *a1 = v13;
          v14 = *&v24[16];
          v15 = *(a1 + 16);
          *&v24[16] = v15;
          *(a1 + 16) = v14;
          v17 = *&v24[24];
          *&v24[24] = *(a1 + 24);
          v16 = *&v24[32];
          *(a1 + 24) = v17;
          v18 = v16;
          if (v16)
          {
            v19 = v15 + 16;
            do
            {
              if ((*(v19 - 8) & 0x80000000) != 0)
              {
                re::HashSetBase<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>,re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>,re::internal::ValueAsKey<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>>,re::Hash<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>>,re::EqualTo<re::Pair<re::ecs2::Entity const*,re::ecs2::Entity const*,true>>,true,false>::addAsMove(a1, *(v19 - 16) % *(a1 + 24), *(v19 - 16), v19);
              }

              v19 += 32;
              --v18;
            }

            while (v18);
          }

          re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(v24);
        }
      }

      else
      {
        if (v10)
        {
          v22 = v10;
        }

        else
        {
          v22 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v8 = *(a1 + 32);
    }

    *(a1 + 32) = v8 + 1;
    v20 = *(a1 + 16);
    v21 = *(v20 + 32 * v7 + 8);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 32 * v7 + 8);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  *(v20 + 32 * v7 + 8) = v21 | 0x80000000;
  *(*(a1 + 16) + 32 * v7 + 8) = *(*(a1 + 16) + 32 * v7 + 8) & 0x80000000 | *(*(a1 + 8) + 4 * a2);
  *(*(a1 + 16) + 32 * v7) = a3;
  *(*(a1 + 16) + 32 * v7 + 16) = *a4;
  *(*(a1 + 8) + 4 * a2) = v7;
  ++*(a1 + 28);
  return v7;
}

uint64_t re::DataArray<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>::DataArrayIterator<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData,re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData&>::DataArrayIterator(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  if (*(a2 + 40))
  {
    *(a1 + 8) = 0;
    if (!*(a2 + 16))
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    if (!**(*(a2 + 32) + 8))
    {
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(a1);
    }
  }

  else
  {
    *(a1 + 8) = -1;
  }

  return a1;
}

void *re::ecs2::allocInfo_RenderGraphFileProviderEntry(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B5998, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B5998))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B5A58, "RenderGraphFileProviderEntry");
    __cxa_guard_release(&qword_1EE1B5998);
  }

  return &unk_1EE1B5A58;
}

void re::ecs2::initInfo_RenderGraphFileProviderEntry(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v27[0] = 0xB11ACD09D60D6D1ALL;
  v27[1] = "RenderGraphFileProviderEntry";
  if (v27[0])
  {
    if (v27[0])
    {
    }
  }

  *(this + 2) = v28;
  if ((atomic_load_explicit(&qword_1EE1B59A0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B59A0);
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
      qword_1EE1B59F0 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::DynamicString>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "typeScope";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x1800000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1B59F8 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_int(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "order";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x3800000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1B5A00 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::introspect_uint64_t(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "token";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x4000000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE1B5A08 = v21;
      v22 = re::introspectionAllocator(v21);
      v24 = re::introspect_BOOL(1, v23);
      v25 = (*(*v22 + 32))(v22, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "removed";
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0x4800000005;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE1B5A10 = v25;
      __cxa_guard_release(&qword_1EE1B59A0);
    }
  }

  *(this + 2) = 0x5000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE1B59F0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::RenderGraphFileProviderEntry>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::RenderGraphFileProviderEntry>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::RenderGraphFileProviderEntry>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::RenderGraphFileProviderEntry>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v26 = v28;
}

void *re::internal::defaultConstruct<re::ecs2::RenderGraphFileProviderEntry>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  *(a3 + 48) = 0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  v3 += 24;
  result = re::DynamicString::setCapacity(v3, 0);
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  return result;
}

void re::internal::defaultDestruct<re::ecs2::RenderGraphFileProviderEntry>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicString::deinit((a3 + 24));

  re::AssetHandle::~AssetHandle(a3);
}

void *re::internal::defaultConstructV2<re::ecs2::RenderGraphFileProviderEntry>(uint64_t a1)
{
  v1 = a1;
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v1 += 24;
  result = re::DynamicString::setCapacity(v1, 0);
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  return result;
}

void re::internal::defaultDestructV2<re::ecs2::RenderGraphFileProviderEntry>(uint64_t a1)
{
  re::DynamicString::deinit((a1 + 24));

  re::AssetHandle::~AssetHandle(a1);
}

void re::IntrospectionInfo<re::DynamicArray<re::ecs2::RenderGraphFileProviderEntry>>::get(re::ecs2 *a1)
{
  if ((atomic_load_explicit(&qword_1EE1B59C8, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1B59C8);
    if (a1)
    {
      re::IntrospectionDynamicArray<re::ecs2::RenderGraphFileProviderEntry>::IntrospectionDynamicArray();
      __cxa_guard_release(&qword_1EE1B59C8);
    }
  }

  if ((_MergedGlobals_404 & 1) == 0)
  {
    v1 = qword_1EE1B59A8;
    if (qword_1EE1B59A8 || (v1 = re::ecs2::allocInfo_RenderGraphFileProviderEntry(a1), qword_1EE1B59A8 = v1, re::ecs2::initInfo_RenderGraphFileProviderEntry(v1, v2), (_MergedGlobals_404 & 1) == 0))
    {
      _MergedGlobals_404 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1B5A18, 0);
      qword_1EE1B5A28 = 0x2800000003;
      dword_1EE1B5A30 = v3;
      word_1EE1B5A34 = 0;
      *&xmmword_1EE1B5A38 = 0;
      *(&xmmword_1EE1B5A38 + 1) = 0xFFFFFFFFLL;
      qword_1EE1B5A48 = v1;
      qword_1EE1B5A50 = 0;
      qword_1EE1B5A18 = &unk_1F5D00E50;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE1B5A18, &v13);
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
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::RenderGraphFileProviderEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::RenderGraphFileProviderEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::RenderGraphFileProviderEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::RenderGraphFileProviderEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::RenderGraphFileProviderEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::RenderGraphFileProviderEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::RenderGraphFileProviderEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::RenderGraphFileProviderEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE1B5A38 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void *re::ecs2::allocInfo_RenderGraphFileProviderArrayComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B59B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B59B8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B5AE8, "RenderGraphFileProviderArrayComponent");
    __cxa_guard_release(&qword_1EE1B59B8);
  }

  return &unk_1EE1B5AE8;
}

void re::ecs2::initInfo_RenderGraphFileProviderArrayComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v20[0] = 0x5223CBB28538BDD2;
  v20[1] = "RenderGraphFileProviderArrayComponent";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE1B59B0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B59B0);
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
      qword_1EE1B59D0 = v8;
      v9 = re::introspectionAllocator(v8);
      re::IntrospectionInfo<re::DynamicArray<re::ecs2::RenderGraphFileProviderEntry>>::get(v9);
      v10 = (*(*v9 + 32))(v9, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "m_entries";
      *(v10 + 16) = &qword_1EE1B5A18;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0x2800000001;
      *(v10 + 40) = 0;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE1B59D8 = v10;
      v11 = re::introspectionAllocator(v10);
      v13 = re::introspect_uint64_t(1, v12);
      v14 = (*(*v11 + 32))(v11, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "m_currentProviderToken";
      *(v14 + 16) = v13;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0x2000000002;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE1B59E0 = v14;
      v15 = re::introspectionAllocator(v14);
      v17 = re::introspect_BOOL(1, v16);
      v18 = (*(*v15 + 32))(v15, 72, 8);
      *v18 = 1;
      *(v18 + 8) = "m_useForScene";
      *(v18 + 16) = v17;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0x5000000003;
      *(v18 + 40) = 0;
      *(v18 + 48) = 0;
      *(v18 + 56) = 0;
      *(v18 + 64) = 0;
      qword_1EE1B59E8 = v18;
      __cxa_guard_release(&qword_1EE1B59B0);
    }
  }

  *(this + 2) = 0x5800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1B59D0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::RenderGraphFileProviderArrayComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::RenderGraphFileProviderArrayComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::RenderGraphFileProviderArrayComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::RenderGraphFileProviderArrayComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs237RenderGraphFileProviderArrayComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v19 = v21;
}

void re::internal::defaultConstruct<re::ecs2::RenderGraphFileProviderArrayComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 10) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CDDD98;
  *(v3 + 72) = 0;
  *(v3 + 32) = 1000;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  *(v3 + 80) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::RenderGraphFileProviderArrayComponent>(uint64_t a1)
{
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CDDD98;
  *(v1 + 72) = 0;
  *(v1 + 32) = 1000;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 80) = 0;
}

void *re::ecs2::allocInfo_RenderGraphFileProviderArraySystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B59C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B59C0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B5B78, "RenderGraphFileProviderArraySystem");
    __cxa_guard_release(&qword_1EE1B59C0);
  }

  return &unk_1EE1B5B78;
}

void re::ecs2::initInfo_RenderGraphFileProviderArraySystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x5B49CEE5C618AF86;
  v6[1] = "RenderGraphFileProviderArraySystem";
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
  *(this + 8) = &re::ecs2::initInfo_RenderGraphFileProviderArraySystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::RenderGraphFileProviderArraySystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::RenderGraphFileProviderArraySystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::RenderGraphFileProviderArraySystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::RenderGraphFileProviderArraySystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::RenderGraphFileProviderArraySystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::RenderGraphFileProviderArraySystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

double re::internal::defaultConstruct<re::ecs2::RenderGraphFileProviderArraySystem>(uint64_t a1, uint64_t a2, uint64_t a3)
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
  *v3 = &unk_1F5D00DC0;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::RenderGraphFileProviderArraySystem>(uint64_t a1)
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
  *v1 = &unk_1F5D00DC0;
  return result;
}

uint64_t re::ecs2::RenderGraphFileProviderArrayComponent::add(uint64_t a1, uint64_t *a2, const char *a3, int a4)
{
  *(a1 + 25) = 2;
  v15 = 0;
  memset(&v16[1], 0, 24);
  v14 = 0u;
  re::DynamicString::setCapacity(v16, 0);
  v18 = 0;
  v19 = 0;
  re::AssetHandle::operator=(&v14, a2);
  v8 = strlen(a3);
  v20[0] = a3;
  v20[1] = v8;
  re::DynamicString::operator=(v16, v20);
  v17 = a4;
  v9 = *(a1 + 32) + 1;
  do
  {
    v10 = v9;
    v9 = 1;
  }

  while (!v10);
  *(a1 + 32) = v10;
  v18 = v10;
  v11 = re::DynamicArray<re::ecs2::RenderGraphFileProviderEntry>::add((a1 + 40), &v14);
  v12 = v18;
  if (v16[0])
  {
    if (v16[1])
    {
      (*(*v16[0] + 40))(v11);
    }

    memset(v16, 0, sizeof(v16));
  }

  re::AssetHandle::~AssetHandle(&v14);
  return v12;
}

__n128 re::DynamicArray<re::ecs2::RenderGraphFileProviderEntry>::add(_anonymous_namespace_ *this, re::AssetHandle *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::ecs2::RenderGraphFileProviderEntry>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 80 * v4;
  re::AssetHandle::AssetHandle(v5, a2);
  re::DynamicString::DynamicString((v5 + 24), (a2 + 24));
  result = *(a2 + 56);
  *(v5 + 72) = *(a2 + 72);
  *(v5 + 56) = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

unint64_t re::ecs2::RenderGraphFileProviderArrayComponent::entry(re::ecs2::RenderGraphFileProviderArrayComponent *this, unint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (v6[0] != 1)
  {
    return 0;
  }

  v3 = v7;
  v4 = *(this + 7);
  if (v4 <= v7)
  {
    v8 = 0;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    v12 = 797;
    v13 = 2048;
    v14 = v3;
    v15 = 2048;
    v16 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(this + 9) + 80 * v7;
}

uint64_t anonymous namespace::providerTokenIndex<re::ecs2::RenderGraphFileProviderEntry>(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a3 + 80 * a2;
  v5 = a3;
  if (a2)
  {
    v5 = a3;
    do
    {
      v6 = v5 + 80 * (a2 >> 1);
      v7 = *(v6 + 64);
      v8 = v6 + 80;
      if (v7 >= a4)
      {
        a2 >>= 1;
      }

      else
      {
        a2 += ~(a2 >> 1);
      }

      if (v7 < a4)
      {
        v5 = v8;
      }
    }

    while (a2);
  }

  if (v5 == v4 || *(v5 + 64) != a4)
  {
    *result = 0;
  }

  else
  {
    *result = 1;
    *(result + 8) = 0xCCCCCCCCCCCCCCCDLL * ((v5 - a3) >> 4);
  }

  return result;
}

uint64_t re::ecs2::RenderGraphFileProviderArrayComponent::setRenderGraph(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if (v9[0] == 1)
  {
    v6 = v10;
    v7 = *(a1 + 56);
    if (v7 <= v10)
    {
      v11 = 0;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v20 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v12 = 136315906;
      v13 = "operator[]";
      v14 = 1024;
      v15 = 789;
      v16 = 2048;
      v17 = v6;
      v18 = 2048;
      v19 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v8 = *(a1 + 72) + 80 * v10;

    return re::AssetHandle::operator=(v8, a3);
  }

  return result;
}

re::DynamicString *re::ecs2::RenderGraphFileProviderArrayComponent::setTypeScope(re::ecs2::RenderGraphFileProviderArrayComponent *this, unint64_t a2, const char *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (v10[0] == 1)
  {
    v6 = v11;
    v7 = *(this + 7);
    if (v7 <= v11)
    {
      v12 = 0;
      memset(v21, 0, sizeof(v21));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v13 = 136315906;
      v14 = "operator[]";
      v15 = 1024;
      v16 = 789;
      v17 = 2048;
      v18 = v6;
      v19 = 2048;
      v20 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v8 = *(this + 9) + 80 * v11;
    v9 = strlen(a3);
    *&v21[0] = a3;
    *(&v21[0] + 1) = v9;
    return re::DynamicString::operator=((v8 + 24), v21);
  }

  return result;
}

uint64_t re::ecs2::RenderGraphFileProviderArrayComponent::setOrder(re::ecs2::RenderGraphFileProviderArrayComponent *this, unint64_t a2, int a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (v8[0] == 1)
  {
    v6 = v9;
    v7 = *(this + 7);
    if (v7 <= v9)
    {
      v10 = 0;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v19 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v11 = 136315906;
      v12 = "operator[]";
      v13 = 1024;
      v14 = 789;
      v15 = 2048;
      v16 = v6;
      v17 = 2048;
      v18 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    *(*(this + 9) + 80 * v9 + 56) = a3;
  }

  return result;
}

uint64_t re::ecs2::RenderGraphFileProviderArraySystem::update(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v79 = *MEMORY[0x1E69E9840];
  v6 = *(result + 224);
  if (!v6 || (*(v6 + 432) & 0x10) != 0)
  {
    v7 = *(a3 + 200);
    if (v7)
    {
      v8 = *(a3 + 216);
      v57 = &v8[v7];
      v55 = result;
      while (1)
      {
        v9 = *v8;
        if (*v8)
        {
          break;
        }

LABEL_96:
        if (++v8 == v57)
        {
          return result;
        }
      }

      re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v66);
      v11 = *(v5 + 232);
      if (!v11)
      {
        goto LABEL_99;
      }

      v12 = *(v11 + 112);
      v58 = v8;
      if (v12)
      {
        v13 = re::RenderFrameBox::get((v12 + 328), 0xFFFFFFFFFFFFFFFuLL);
      }

      else
      {
        v13 = 0;
      }

      v14 = *(v13 + 392);
      v62[1] = 0;
      v63 = 0;
      v64 = 0;
      v65 = 0;
      v59 = v14;
      v62[0] = v14;
      re::DynamicArray<re::RenderGraphFileProvider>::setCapacity(v62, 0);
      ++v64;
      v61 = (*(**(v5 + 256) + 24))(*(v5 + 256));
      v56 = v9;
      v15 = re::ecs2::SceneComponentTable::get((v9 + 200), re::ecs2::ComponentImpl<re::ecs2::RenderGraphFileProviderArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      if (v15)
      {
        v16 = *(v15 + 384);
        if (v16)
        {
          v17 = *(v15 + 400);
          v18 = &v17[v16];
          while (2)
          {
            v19 = *v17;
            v20 = *(*v17 + 16);
            if (!v20 || (~*(v20 + 304) & 0x2008) != 0)
            {
              goto LABEL_61;
            }

            v21 = *(v19 + 25);
            if (!*(v19 + 25))
            {
              v22 = *(v20 + 216);
              if (!v22)
              {
                goto LABEL_21;
              }

              if (*(v22 + 32))
              {
                if (RESyncableGetOwnerPeerID())
                {
                  goto LABEL_19;
                }

LABEL_21:
                v21 = 2;
              }

              else
              {
                if ((*(v22 + 116) & 0x80000000) == 0 || !*(v22 + 64))
                {
                  goto LABEL_21;
                }

LABEL_19:
                v21 = 1;
              }

              *(v19 + 25) = v21;
            }

            v4 = *(v19 + 56);
            if (v21 == 2)
            {
              if (v4)
              {
                v23 = 0;
                while (1)
                {
                  v24 = *(v19 + 72);
                  if (*(v24 + 80 * v23 + 72) == 1)
                  {
                    if (v4 <= v23)
                    {
                      v67 = 0;
                      memset(v70, 0, 48);
                      v68 = 0u;
                      v69 = 0u;
                      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      *v74 = 136315906;
                      *&v74[4] = "removeStableAt";
                      *&v74[12] = 1024;
                      *&v74[14] = 969;
                      v75 = 2048;
                      v76 = v23;
                      v77 = 2048;
                      v78 = v4;
                      _os_log_send_and_compose_impl();
                      _os_crash_msg();
                      __break(1u);
LABEL_99:
                      re::internal::assertLog(4, v10, "assertion failure: '%s' (%s:line %i) ", "m_renderManager", "updateSceneInternal", 193);
                      _os_crash();
                      __break(1u);
                    }

                    if (v4 - 1 > v23 && v24 + 80 * v23 + 80 != v24 + 80 * v4)
                    {
                      v25 = 80 * v23;
                      v26 = 80 * v4 - 80;
                      do
                      {
                        v3 = v24 + v25;
                        v27 = *(v24 + 80 * v23);
                        *v3 = *(v24 + v25 + 80);
                        *(v3 + 80) = v27;
                        v28 = *(v24 + v25 + 16);
                        *(v3 + 16) = *(v24 + v25 + 96);
                        *(v3 + 96) = v28;
                        re::DynamicString::operator=((v24 + v25 + 24), (v24 + v25 + 104));
                        *(v3 + 56) = *(v3 + 136);
                        *(v3 + 72) = *(v3 + 152);
                        v24 += 80;
                        v26 -= 80;
                      }

                      while (v25 != v26);
                      v4 = *(v19 + 56);
                      v24 = *(v19 + 72);
                    }

                    v29 = v24 + 80 * v4;
                    v30 = (v29 - 80);
                    re::DynamicString::deinit((v29 - 56));
                    re::AssetHandle::~AssetHandle(v30);
                    v4 = *(v19 + 56) - 1;
                    *(v19 + 56) = v4;
                    ++*(v19 + 64);
                  }

                  else
                  {
                    ++v23;
                  }

                  if (v23 >= v4)
                  {
                    if (v4)
                    {
                      v31 = 2;
                    }

                    else
                    {
                      v31 = 1;
                    }

                    goto LABEL_42;
                  }
                }
              }

              *(v19 + 25) = 1;
              goto LABEL_61;
            }

            if (v4)
            {
              v31 = 3;
            }

            else
            {
              v31 = 1;
            }

LABEL_42:
            *(v19 + 25) = v31;
            if ((*(v19 + 80) & 1) != 0 && v4)
            {
              v32 = 0;
              v33 = *(v19 + 72);
              v34 = 80 * v4;
              do
              {
                v4 = v33 + v32;
                if ((*(v33 + v32 + 72) & 1) == 0)
                {
                  v35 = *(v4 + 8);
                  if (v35)
                  {
                    v36 = atomic_load((v35 + 896));
                    if (v36 == 2)
                    {
LABEL_51:
                      v39 = v33 + v32;
                      if (*(v33 + v32 + 32))
                      {
                        v40 = *(v39 + 40);
                      }

                      else
                      {
                        v40 = (v39 + 33);
                      }

                      *&v68 = 0;
                      re::DynamicString::DynamicString((&v68 + 8), v40, v59);
                      *&v68 = re::AssetHandle::blockUntilLoaded<re::RenderGraphAsset>((v33 + v32)) + 8;
                      DWORD2(v70[0]) = *(v33 + v32 + 56);
                      re::DynamicArray<re::RenderGraphFileProvider>::add(v62, &v68);
                      if (*(&v68 + 1) && (v69 & 1) != 0)
                      {
                        (*(**(&v68 + 1) + 40))();
                      }

                      goto LABEL_58;
                    }
                  }

                  if (*(a3 + 8) == 2)
                  {
                    re::AssetHandle::loadNow(*(v4 + 8), 0);
                    v37 = *(v4 + 8);
                    if (v37)
                    {
                      v38 = atomic_load((v37 + 896));
                      if (v38 == 2)
                      {
                        goto LABEL_51;
                      }
                    }
                  }

                  else
                  {
                    re::AssetHandle::loadAsync((v33 + v32));
                  }
                }

LABEL_58:
                v32 += 80;
              }

              while (v34 != v32);
            }

LABEL_61:
            if (++v17 == v18)
            {
              break;
            }

            continue;
          }
        }
      }

      v5 = v55;
      if (!v63)
      {
LABEL_95:
        re::DynamicArray<re::RenderGraphFileProvider>::deinit(v62);
        result = re::ProfilerTimeGuard<(re::ProfilerStatistic)122>::end(v66);
        v8 = v58;
        goto LABEL_96;
      }

      re::ecs2::WorldRootProvider::worldIds(&v61, &v68);
      v41 = v72;
      if (v72)
      {
        LODWORD(v3) = v73;
        if (v73)
        {
          v4 = 0;
          v42 = v71[2];
          v43 = v56;
          while (1)
          {
            v44 = *v42;
            v42 += 4;
            if (v44 < 0)
            {
              break;
            }

            if (v73 == ++v4)
            {
              LODWORD(v4) = v73;
              break;
            }
          }

          v45 = v71;
          v46 = v71;
          goto LABEL_76;
        }

        LODWORD(v4) = 0;
        v45 = v71;
        v46 = v71;
      }

      else
      {
        v46 = v70;
        v45 = v70 + 8 * v69;
      }

      v43 = v56;
LABEL_76:
      v47 = v46 != v45;
      if (v72)
      {
        v47 = v3 != v4;
      }

      if (v47)
      {
        do
        {
          if (v41)
          {
            re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(v43, *(*(v46 + 2) + 16 * v4 + 8), v13, v74);
            v67 = *v74 >> 1;
            v48 = **(re::RenderFrameData::stream((v13 + 264), &v67) + 48);
            v49 = (*(v48 + 800))();
            if (v74[0])
            {
              if (v74[0])
              {
              }
            }

            v50 = v4 + 1;
            do
            {
              LODWORD(v4) = v50;
              if (v50 >= *(v46 + 8))
              {
                break;
              }

              v51 = *(*(v46 + 2) + 16 * v50++);
            }

            while ((v51 & 0x80000000) == 0);
          }

          else
          {
            re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(v43, *v46, v13, v74);
            v67 = *v74 >> 1;
            v52 = **(re::RenderFrameData::stream((v13 + 264), &v67) + 48);
            v53 = (*(v52 + 800))();
            if (v74[0])
            {
              if (v74[0])
              {
              }
            }

            v46 += 8;
          }

          v54 = v46 != v45;
          if (v41)
          {
            v54 = v3 != v4;
          }
        }

        while (v54);
      }

      re::SmallHashSet<unsigned long long,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::~SmallHashSet(&v68);
      goto LABEL_95;
    }
  }

  return result;
}

void re::ecs2::RenderGraphFileProviderArraySystem::~RenderGraphFileProviderArraySystem(re::ecs2::RenderGraphFileProviderArraySystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::IntrospectionDynamicArray<re::ecs2::RenderGraphFileProviderEntry>::IntrospectionDynamicArray()
{
  ArcSharedObject::ArcSharedObject(&qword_1EE1B5A18, 0);
  *(&qword_1EE1B5A28 + 6) = 0;
  qword_1EE1B5A28 = 0;
  *&xmmword_1EE1B5A38 = 0;
  *(&xmmword_1EE1B5A38 + 1) = 0xFFFFFFFFLL;
  qword_1EE1B5A18 = &unk_1F5CADA48;
  qword_1EE1B5A50 = 0;
  result = re::SerializedReference<re::IntrospectionBase const*>::reset(&qword_1EE1B5A48);
  qword_1EE1B5A18 = &unk_1F5D00E50;
  return result;
}

void *re::IntrospectionDynamicArray<re::ecs2::RenderGraphFileProviderEntry>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::ecs2::RenderGraphFileProviderEntry>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::ecs2::RenderGraphFileProviderEntry>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::ecs2::RenderGraphFileProviderEntry>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::ecs2::RenderGraphFileProviderEntry>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::ecs2::RenderGraphFileProviderEntry>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::ecs2::RenderGraphFileProviderEntry>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::ecs2::RenderGraphFileProviderEntry>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::ecs2::RenderGraphFileProviderEntry>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::ecs2::RenderGraphFileProviderEntry>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
{
  memset(v19, 0, sizeof(v19));
  v16 = 0;
  v18 = 0u;
  v15 = 0u;
  re::DynamicString::setCapacity(&v17, 0);
  *&v19[1] = 0;
  BYTE8(v19[1]) = 0;
  v8 = *(a4 + 16);
  if (v8 >= *(a4 + 8))
  {
    re::DynamicArray<re::ecs2::RenderGraphFileProviderEntry>::growCapacity(a4, v8 + 1);
    v8 = *(a4 + 16);
  }

  v9 = *(a4 + 32) + 80 * v8;
  v10 = *&v19[0];
  *(v9 + 8) = *(&v15 + 1);
  *(&v15 + 1) = 0;
  *(v9 + 48) = v10;
  v11 = v18;
  *v9 = v15;
  *&v15 = 0;
  *(v9 + 16) = v16;
  v16 = 0;
  *&v19[0] = 0;
  *(v9 + 24) = v17;
  *(v9 + 32) = v11;
  v17 = 0;
  *(v9 + 40) = *(&v18 + 1);
  v18 = 0uLL;
  v12 = BYTE8(v19[1]);
  *(v9 + 56) = *(v19 + 8);
  *(v9 + 72) = v12;
  ++*(a4 + 16);
  ++*(a4 + 24);
  re::AssetHandle::~AssetHandle(&v15);
  v13 = (*(a4 + 32) + 80 * *(a4 + 16) - 80);
  re::introspectionInitElement(a2, a3, a1[6], v13);
  return v13;
}

uint64_t re::IntrospectionDynamicArray<re::ecs2::RenderGraphFileProviderEntry>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 80 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 80 * a3;
}

void re::DynamicArray<re::ecs2::RenderGraphFileProviderEntry>::resize(_anonymous_namespace_ *a1, unint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 2);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 80 * a2;
    v9 = a2;
    do
    {
      v10 = *(v3 + 4) + v8;
      re::DynamicString::deinit((v10 + 24));
      re::AssetHandle::~AssetHandle(v10);
      ++v9;
      v8 += 80;
    }

    while (v9 < *(v3 + 2));
  }

  else
  {
    if (*(a1 + 1) < a2)
    {
      a1 = re::DynamicArray<re::ecs2::RenderGraphFileProviderEntry>::setCapacity(a1, a2);
      v4 = *(v3 + 2);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 80 * v4;
      do
      {
        v7 = *(v3 + 4) + v6;
        *(v7 + 48) = 0;
        *(v7 + 16) = 0u;
        *(v7 + 32) = 0u;
        *v7 = 0u;
        v7 += 24;
        a1 = re::DynamicString::setCapacity(v7, 0);
        *(v7 + 32) = 0;
        *(v7 + 40) = 0;
        v6 += 80;
        *(v7 + 48) = 0;
        --v5;
      }

      while (v5);
    }
  }

  *(v3 + 2) = a2;
  ++*(v3 + 6);
}

void *re::DynamicArray<re::ecs2::RenderGraphFileProviderEntry>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::ecs2::RenderGraphFileProviderEntry>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::ecs2::RenderGraphFileProviderEntry>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::ecs2::RenderGraphFileProviderEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::ecs2::RenderGraphFileProviderEntry>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::ecs2::RenderGraphFileProviderEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = 80 * v8;
      do
      {
        re::DynamicString::deinit((v9 + 24));
        re::AssetHandle::~AssetHandle(v9);
        v9 += 80;
        v10 -= 80;
      }

      while (v10);
    }
  }

  else
  {
    re::DynamicArray<re::ecs2::RenderGraphFileProviderEntry>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::ecs2::RenderGraphFileProviderEntry>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::ecs2::RenderGraphFileProviderEntry>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = 80 * v12;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 80;
        v14 -= 80;
      }

      while (v14);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::RenderGraphFileProviderEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 80 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::RenderGraphFileProviderEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::RenderGraphFileProviderEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + 80 * v5;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::RenderGraphFileProviderEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs237RenderGraphFileProviderArrayComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void *re::ecs2::allocInfo_ImageBasedLightService(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_405, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_405))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B5C10, "ImageBasedLightService");
    __cxa_guard_release(&_MergedGlobals_405);
  }

  return &unk_1EE1B5C10;
}

void re::ecs2::initInfo_ImageBasedLightService(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x16BB2D00FED2B82ELL;
  v6[1] = "ImageBasedLightService";
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
  *(this + 8) = &re::ecs2::initInfo_ImageBasedLightService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void *re::ecs2::allocInfo_PbrMaterialParametersComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_406, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_406))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B5CC8, "PbrMaterialParametersComponent");
    __cxa_guard_release(&_MergedGlobals_406);
  }

  return &unk_1EE1B5CC8;
}

void re::ecs2::initInfo_PbrMaterialParametersComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v17[0] = 0x3ABE975A155C7198;
  v17[1] = "PbrMaterialParametersComponent";
  if (v17[0])
  {
    if (v17[0])
    {
    }
  }

  *(this + 2) = v18;
  if ((atomic_load_explicit(&qword_1EE1B5CA8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B5CA8);
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
      qword_1EE1B5CB0 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = re::introspect_PbrMaterialParameters(1);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "params";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x2000000001;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1B5CB8 = v11;
      v12 = re::introspectionAllocator(v11);
      v14 = re::introspect_AssetHandle(1, v13);
      v15 = (*(*v12 + 32))(v12, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "materialAsset";
      *(v15 + 16) = v14;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x21000000002;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE1B5CC0 = v15;
      __cxa_guard_release(&qword_1EE1B5CA8);
    }
  }

  *(this + 2) = 0x23000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1B5CB0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PbrMaterialParametersComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PbrMaterialParametersComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PbrMaterialParametersComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PbrMaterialParametersComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs230PbrMaterialParametersComponentELNS_17RealityKitReleaseE9EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v16 = v18;
}

void *re::make::shared::unsafelyInplace<re::ecs2::PbrMaterialParametersComponent>(void *a1)
{
  bzero(a1, 0x230uLL);
  ArcSharedObject::ArcSharedObject(a1, 0);
  a1[2] = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_1F5CDE410;
  re::PbrMaterialParameters::PbrMaterialParameters((a1 + 4));
  a1[68] = 0;
  *(a1 + 33) = 0u;
  return a1;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs230PbrMaterialParametersComponentELNS_17RealityKitReleaseE9EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 9;
    *(a2 + 8) = 0;
  }
}

void *re::ecs2::allocInfo_VFXEmitterSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_407, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_407))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B5D60, "VFXEmitterSystem");
    __cxa_guard_release(&_MergedGlobals_407);
  }

  return &unk_1EE1B5D60;
}

void re::ecs2::initInfo_VFXEmitterSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x49E29E8B3C4CC8EALL;
  v6[1] = "VFXEmitterSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x17000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_VFXEmitterSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::VFXEmitterSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::VFXEmitterSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::VFXEmitterSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::VFXEmitterSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::VFXEmitterSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::VFXEmitterSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

double re::internal::defaultConstruct<re::ecs2::VFXEmitterSystem>(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  a3[21] = 0u;
  a3[22] = 0u;
  a3[19] = 0u;
  a3[20] = 0u;
  a3[17] = 0u;
  a3[18] = 0u;
  a3[15] = 0u;
  a3[16] = 0u;
  a3[13] = 0u;
  a3[14] = 0u;
  a3[11] = 0u;
  a3[12] = 0u;
  a3[9] = 0u;
  a3[10] = 0u;
  a3[7] = 0u;
  a3[8] = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  v3 = re::ecs2::System::System(a3, 1, 1);
  *(v3 + 288) = 0;
  result = 0.0;
  *(v3 + 256) = 0u;
  *(v3 + 272) = 0u;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *v3 = &unk_1F5D00EE8;
  *(v3 + 312) = 0u;
  *(v3 + 328) = 0u;
  *(v3 + 344) = 0u;
  *(v3 + 360) = 0;
  return result;
}

void re::internal::defaultDestruct<re::ecs2::VFXEmitterSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 360);
  if (v4)
  {

    *(a3 + 360) = 0;
  }

  v5 = (a3 + 336);
  std::vector<re::ecs2::VFXEmitterComponent::VFXBindingValue>::__destroy_vector::operator()[abi:nn200100](&v5);
  re::AssetHandle::~AssetHandle((a3 + 312));
  re::ecs2::System::~System(a3);
}

double re::internal::defaultConstructV2<re::ecs2::VFXEmitterSystem>(_OWORD *a1)
{
  a1[21] = 0u;
  a1[22] = 0u;
  a1[19] = 0u;
  a1[20] = 0u;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  v1 = re::ecs2::System::System(a1, 1, 1);
  *(v1 + 288) = 0;
  result = 0.0;
  *(v1 + 256) = 0u;
  *(v1 + 272) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0u;
  *v1 = &unk_1F5D00EE8;
  *(v1 + 312) = 0u;
  *(v1 + 328) = 0u;
  *(v1 + 344) = 0u;
  *(v1 + 360) = 0;
  return result;
}

void re::internal::defaultDestructV2<re::ecs2::VFXEmitterSystem>(uint64_t a1)
{
  v2 = *(a1 + 360);
  if (v2)
  {

    *(a1 + 360) = 0;
  }

  v3 = (a1 + 336);
  std::vector<re::ecs2::VFXEmitterComponent::VFXBindingValue>::__destroy_vector::operator()[abi:nn200100](&v3);
  re::AssetHandle::~AssetHandle((a1 + 312));
  re::ecs2::System::~System(a1);
}

void re::ecs2::VFXEmitterSystem::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 224);
  if ((!v5 || (*(v5 + 432) & 0x10) != 0) && ((*(**(a1 + 40) + 216))(*(a1 + 40)) & 1) == 0)
  {
    v6 = *(a3 + 200);
    if (!v6)
    {
      goto LABEL_32;
    }

    v7 = 0;
    v8 = *(a3 + 216);
    v9 = &v8[v6];
    do
    {
      while (1)
      {
        v10 = *v8;
        v11 = re::ecs2::SceneComponentTable::get((*v8 + 200), re::ecs2::ComponentImpl<re::ecs2::VFXEmitterComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        if (!v11)
        {
          break;
        }

        v12 = *(v11 + 48);
        if (!v12)
        {
          break;
        }

        v13 = *(v11 + 50);
        if ((v7 & 1) == 0)
        {
          if (*(a1 + 240) && !*(a1 + 320))
          {
            re::loadVFXAssetsFramework(v11);
            (*(**(a1 + 240) + 8))(&v24);
            v14 = *(a1 + 312);
            *(a1 + 312) = v24;
            v24 = v14;
            v15 = *(a1 + 328);
            *(a1 + 328) = v25;
            v25 = v15;
            re::AssetHandle::~AssetHandle(&v24);
            re::AssetHandle::loadAsync((a1 + 312));
          }

          if (!*(a1 + 360))
          {
            v18 = *(a1 + 320);
            if (v18)
            {
              v19 = atomic_load((v18 + 896));
              if (v19 == 2)
              {
                re::ecs2::VFXSceneComponent::createDetachedSceneComponent(&v24);
                v20 = *(a1 + 360);
                v21 = v24;
                *(a1 + 360) = v24;
                if (v20)
                {

                  v21 = *(a1 + 360);
                }

                re::AssetHandle::AssetHandle(v23, (a1 + 312));
                re::ecs2::VFXSceneComponent::setVFXFromParticleEmitter(v21, v23);
                re::AssetHandle::~AssetHandle(v23);
                re::ecs2::VFXSceneComponent::initializeBindings(*(a1 + 360));
                re::ecs2::VFXSceneComponent::updateBindingStatesInitialValues(*(a1 + 360));
                re::ecs2::VFXSceneComponent::finishInitializationFromParticleEmitter(*(a1 + 360));
                re::ecs2::VFXEmitterComponent::loadBindingValues(*(a1 + 360), &v24);
                std::vector<re::ecs2::VFXEmitterComponent::VFXBindingValue>::__vdeallocate((a1 + 336));
                *(a1 + 336) = v24;
                *(a1 + 352) = v25;
                v25 = 0;
                v24 = 0uLL;
                v26 = &v24;
                std::vector<re::ecs2::VFXEmitterComponent::VFXBindingValue>::__destroy_vector::operator()[abi:nn200100](&v26);
              }
            }
          }
        }

        if (v10)
        {
          re::ecs2::SceneComponentTable::get((v10 + 200), re::ecs2::ComponentImpl<re::ecs2::VFXEmitterComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(&v24, 3142, a1);
          v16 = 8 * v12;
          do
          {
            v17 = *v13++;
            re::ecs2::VFXEmitterComponent::loadAssetsIfNeeded(v17, *(a1 + 240), *(a1 + 360), (a1 + 336));
            re::ecs2::VFXEmitterComponent::update(v17);
            v16 -= 8;
          }

          while (v16);
          re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(&v24);
        }

        ++v8;
        v7 = 1;
        if (v8 == v9)
        {
          return;
        }
      }

      ++v8;
    }

    while (v8 != v9);
    if ((v7 & 1) == 0)
    {
LABEL_32:
      if (*(a1 + 360))
      {
        std::vector<re::ecs2::VFXEmitterComponent::VFXBindingValue>::__base_destruct_at_end[abi:nn200100](a1 + 336, *(a1 + 336));
        v22 = *(a1 + 360);
        if (v22)
        {

          *(a1 + 360) = 0;
        }
      }
    }
  }
}

uint64_t emitterComponentDidChangeHandler(uint64_t a1, void **a2)
{
  if (a2[1] == re::ecs2::ComponentImpl<re::ecs2::VFXEmitterComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
  {
    v2 = re::ecs2::EntityComponentCollection::get((*a2 + 48), re::ecs2::ComponentImpl<re::ecs2::VFXEmitterComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (v2)
    {
      re::ecs2::VFXEmitterComponent::update(v2);
    }
  }

  return 0;
}

re::EventBus *re::ecs2::VFXEmitterSystem::willAddSceneToECSService(re::ecs2::VFXEmitterSystem *this, re::ecs2::Scene *a2)
{
  result = *(a2 + 36);
  if (result)
  {
    result = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(result, 0, emitterComponentDidChangeHandler, 0, 0);
    *(this + 37) = result;
    *(this + 38) = v4;
  }

  return result;
}

uint64_t re::ecs2::VFXEmitterSystem::willRemoveSceneFromECSService(re::ecs2::VFXEmitterSystem *this, re::ecs2::Scene *a2)
{
  result = *(a2 + 36);
  if (result)
  {
    return re::EventBus::unsubscribe(result, *(this + 37), *(this + 38));
  }

  return result;
}

void re::ecs2::VFXEmitterSystem::~VFXEmitterSystem(re::ecs2::VFXEmitterSystem *this)
{
  v2 = *(this + 45);
  if (v2)
  {

    *(this + 45) = 0;
  }

  v3 = (this + 336);
  std::vector<re::ecs2::VFXEmitterComponent::VFXBindingValue>::__destroy_vector::operator()[abi:nn200100](&v3);
  re::AssetHandle::~AssetHandle((this + 312));
  re::ecs2::System::~System(this);
}

{
  v2 = *(this + 45);
  if (v2)
  {

    *(this + 45) = 0;
  }

  v3 = (this + 336);
  std::vector<re::ecs2::VFXEmitterComponent::VFXBindingValue>::__destroy_vector::operator()[abi:nn200100](&v3);
  re::AssetHandle::~AssetHandle((this + 312));
  re::ecs2::System::~System(this);
  MEMORY[0x1E6906520]();
}

void std::vector<re::ecs2::VFXEmitterComponent::VFXBindingValue>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<re::ecs2::VFXEmitterComponent::VFXBindingValue>::__base_destruct_at_end[abi:nn200100](a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

BOOL re::CollisionEventDelegate::hasCollisionEventSubscriptions(_BOOL8 this, const re::EventBus *a2)
{
  if (this)
  {
    v2 = this;
    Event = re::EventBus::getEventInfo<RECollisionDidStartEvent>(this);
    if (Event)
    {
      v4 = re::EventBus::EventInfo::subscriptionCount(Event);
    }

    else
    {
      v4 = 0;
    }

    v5 = re::EventBus::getEventInfo<RECollisionDidStartEventEx>(v2);
    if (v5)
    {
      v5 = re::EventBus::EventInfo::subscriptionCount(v5);
    }

    v6 = v5 + v4;
    v7 = re::EventBus::getEventInfo<RECollisionDidStopEvent>(v2);
    if (v7)
    {
      v7 = re::EventBus::EventInfo::subscriptionCount(v7);
    }

    v8 = v7 + v6;
    v9 = re::EventBus::getEventInfo<RECollisionDidUpdateEvent>(v2);
    if (v9)
    {
      v9 = re::EventBus::EventInfo::subscriptionCount(v9);
    }

    v10 = v9 + v8;
    v11 = re::EventBus::getEventInfo<RECollisionDidUpdateEventEx>(v2);
    if (v11)
    {
      v11 = re::EventBus::EventInfo::subscriptionCount(v11);
    }

    v12 = v11 + v10;
    v13 = re::EventBus::getEventInfo<RECollisionStartEvent>(v2);
    if (v13)
    {
      v13 = re::EventBus::EventInfo::subscriptionCount(v13);
    }

    v14 = v13 + v12;
    v15 = re::EventBus::getEventInfo<RECollisionStopEvent>(v2);
    if (v15)
    {
      v15 = re::EventBus::EventInfo::subscriptionCount(v15);
    }

    v16 = v15 + v14;
    v17 = re::EventBus::getEventInfo<RECollisionUpdateEvent>(v2);
    if (v17)
    {
      v17 = re::EventBus::EventInfo::subscriptionCount(v17);
    }

    return (v17 + v16) != 0;
  }

  return this;
}

void re::EngineCollisionEventDelegate::startCollision(re::EngineCollisionEventDelegate *this, const re::CollisionObject *a2, const re::CollisionObject *a3, float32x4_t *a4)
{
  v8 = *(a2 + 5);
  if (v8)
  {
    v9 = (v8 + 8);
  }

  v10 = *(a3 + 5);
  if (v10)
  {
    v11 = (v10 + 8);
  }

  if (v8)
  {
    v12 = v8;
    do
    {
      v13 = v12;
      v12 = *(v12 + 32);
    }

    while (v12);
    if (!*(v13 + 24))
    {
      goto LABEL_12;
    }

    v14 = v8;
    do
    {
      v15 = v14;
      v14 = *(v14 + 32);
    }

    while (v14);
    v16 = *(*(v15 + 24) + 288);
    if (!v16)
    {
LABEL_12:
      v16 = *(this + 1);
    }

    started = re::EventBus::subscriptionCountInternal<re::ecs2::Entity,RECollisionDidStartEventEx>(v16, v8);
    Event = re::EventBus::getEventInfo<RECollisionDidStartEventEx>(v16);
    if (Event)
    {
      v19 = *(Event + 208);
    }

    else
    {
      v19 = 0;
    }

    if (v19 + started)
    {
      v54 = a2;
      v55 = a3;
      v56.i64[0] = a4;
      Type = re::EventBus::getTypeId<RECollisionDidStartEventEx>();
      re::EventBus::publish(v16, v8, Type, &v54, 0x18uLL, 0);
    }

    v21 = re::EventBus::subscriptionCountInternal<re::ecs2::Entity,RECollisionDidStartEvent>(v16, v8);
    v22 = re::EventBus::getEventInfo<RECollisionDidStartEvent>(v16);
    if (v22)
    {
      v23 = *(v22 + 208);
    }

    else
    {
      v23 = 0;
    }

    if (v23 + v21)
    {
      v54 = a2;
      v55 = a3;
      v24 = a4[5];
      v56 = a4[4];
      v25 = vmulq_f32(v24, v24);
      v57 = sqrtf(v25.f32[2] + vaddv_f32(*v25.f32));
      v26 = re::EventBus::getTypeId<RECollisionDidStartEvent>();
      re::EventBus::publish(v16, v8, v26, &v54, 0x30uLL, 0);
    }

    v27 = re::EventBus::subscriptionCountInternal<re::ecs2::Entity,RECollisionStartEvent>(v16, v8);
    v28 = re::EventBus::getEventInfo<RECollisionStartEvent>(v16);
    if (v28)
    {
      v29 = *(v28 + 208);
    }

    else
    {
      v29 = 0;
    }

    if (v29 + v27)
    {
      v54 = a2;
      v55 = a3;
      v30 = a4[5];
      v56 = a4[4];
      v31 = vmulq_f32(v30, v30);
      v57 = sqrtf(v31.f32[2] + vaddv_f32(*v31.f32));
      v32 = re::EventBus::getTypeId<RECollisionStartEvent>();
      re::EventBus::publish(v16, v8, v32, &v54, 0x30uLL, 0);
    }
  }

  if (v10)
  {
    v33 = v10;
    do
    {
      v34 = v33;
      v33 = *(v33 + 32);
    }

    while (v33);
    if (!*(v34 + 24))
    {
      goto LABEL_35;
    }

    v35 = v10;
    do
    {
      v36 = v35;
      v35 = *(v35 + 32);
    }

    while (v35);
    v37 = *(*(v36 + 24) + 288);
    if (!v37)
    {
LABEL_35:
      v37 = *(this + 1);
    }

    v38 = re::EventBus::subscriptionCountInternal<re::ecs2::Entity,RECollisionDidStartEventEx>(v37, v10);
    v39 = re::EventBus::getEventInfo<RECollisionDidStartEventEx>(v37);
    if (v39)
    {
      v40 = *(v39 + 208);
    }

    else
    {
      v40 = 0;
    }

    if (v40 + v38)
    {
      v54 = a3;
      v55 = a2;
      v56.i64[0] = a4;
      v41 = re::EventBus::getTypeId<RECollisionDidStartEventEx>();
      re::EventBus::publish(v37, v10, v41, &v54, 0x18uLL, 0);
    }

    v42 = re::EventBus::subscriptionCountInternal<re::ecs2::Entity,RECollisionDidStartEvent>(v37, v10);
    v43 = re::EventBus::getEventInfo<RECollisionDidStartEvent>(v37);
    if (v43)
    {
      v44 = *(v43 + 208);
    }

    else
    {
      v44 = 0;
    }

    if (v44 + v42)
    {
      v54 = a3;
      v55 = a2;
      v45 = a4[5];
      v56 = a4[4];
      v46 = vmulq_f32(v45, v45);
      v57 = sqrtf(v46.f32[2] + vaddv_f32(*v46.f32));
      v47 = re::EventBus::getTypeId<RECollisionDidStartEvent>();
      re::EventBus::publish(v37, v10, v47, &v54, 0x30uLL, 0);
    }

    v48 = re::EventBus::subscriptionCountInternal<re::ecs2::Entity,RECollisionStartEvent>(v37, v10);
    v49 = re::EventBus::getEventInfo<RECollisionStartEvent>(v37);
    if (v49)
    {
      v50 = *(v49 + 208);
    }

    else
    {
      v50 = 0;
    }

    if (v50 + v48)
    {
      v54 = a3;
      v55 = a2;
      v51 = a4[5];
      v56 = a4[4];
      v52 = vmulq_f32(v51, v51);
      v57 = sqrtf(v52.f32[2] + vaddv_f32(*v52.f32));
      v53 = re::EventBus::getTypeId<RECollisionStartEvent>();
      re::EventBus::publish(v37, v10, v53, &v54, 0x30uLL, 0);
    }
  }

  if (v8 && [v8 + 8 retainCount] == 1)
  {
    *(a2 + 5) = 0;
  }

  if (v10)
  {
    if ([v10 + 8 retainCount] == 1)
    {
      *(a3 + 5) = 0;
    }
  }

  if (v8)
  {
  }
}

void re::EngineCollisionEventDelegate::updateCollision(re::EngineCollisionEventDelegate *this, const re::CollisionObject *a2, const re::CollisionObject *a3, float32x4_t *a4)
{
  v8 = *(a2 + 5);
  if (v8)
  {
    v9 = (v8 + 8);
  }

  v10 = *(a3 + 5);
  if (v10)
  {
    v11 = (v10 + 8);
  }

  if (v8)
  {
    v12 = v8;
    do
    {
      v13 = v12;
      v12 = *(v12 + 32);
    }

    while (v12);
    if (!*(v13 + 24))
    {
      goto LABEL_12;
    }

    v14 = v8;
    do
    {
      v15 = v14;
      v14 = *(v14 + 32);
    }

    while (v14);
    v16 = *(*(v15 + 24) + 288);
    if (!v16)
    {
LABEL_12:
      v16 = *(this + 1);
    }

    updated = re::EventBus::subscriptionCountInternal<re::ecs2::Entity,RECollisionDidUpdateEventEx>(v16, v8);
    Event = re::EventBus::getEventInfo<RECollisionDidUpdateEventEx>(v16);
    if (Event)
    {
      v19 = *(Event + 208);
    }

    else
    {
      v19 = 0;
    }

    if (v19 + updated)
    {
      v54 = a2;
      v55 = a3;
      v56.i64[0] = a4;
      Type = re::EventBus::getTypeId<RECollisionDidUpdateEventEx>();
      re::EventBus::publish(v16, v8, Type, &v54, 0x18uLL, 0);
    }

    v21 = re::EventBus::subscriptionCountInternal<re::ecs2::Entity,RECollisionDidUpdateEvent>(v16, v8);
    v22 = re::EventBus::getEventInfo<RECollisionDidUpdateEvent>(v16);
    if (v22)
    {
      v23 = *(v22 + 208);
    }

    else
    {
      v23 = 0;
    }

    if (v23 + v21)
    {
      v54 = a2;
      v55 = a3;
      v24 = a4[5];
      v56 = a4[4];
      v25 = vmulq_f32(v24, v24);
      v57 = sqrtf(v25.f32[2] + vaddv_f32(*v25.f32));
      v26 = re::EventBus::getTypeId<RECollisionDidUpdateEvent>();
      re::EventBus::publish(v16, v8, v26, &v54, 0x30uLL, 0);
    }

    v27 = re::EventBus::subscriptionCountInternal<re::ecs2::Entity,RECollisionUpdateEvent>(v16, v8);
    v28 = re::EventBus::getEventInfo<RECollisionUpdateEvent>(v16);
    if (v28)
    {
      v29 = *(v28 + 208);
    }

    else
    {
      v29 = 0;
    }

    if (v29 + v27)
    {
      v54 = a2;
      v55 = a3;
      v30 = a4[5];
      v56 = a4[4];
      v31 = vmulq_f32(v30, v30);
      v57 = sqrtf(v31.f32[2] + vaddv_f32(*v31.f32));
      v32 = re::EventBus::getTypeId<RECollisionUpdateEvent>();
      re::EventBus::publish(v16, v8, v32, &v54, 0x30uLL, 0);
    }
  }

  if (v10)
  {
    v33 = v10;
    do
    {
      v34 = v33;
      v33 = *(v33 + 32);
    }

    while (v33);
    if (!*(v34 + 24))
    {
      goto LABEL_35;
    }

    v35 = v10;
    do
    {
      v36 = v35;
      v35 = *(v35 + 32);
    }

    while (v35);
    v37 = *(*(v36 + 24) + 288);
    if (!v37)
    {
LABEL_35:
      v37 = *(this + 1);
    }

    v38 = re::EventBus::subscriptionCountInternal<re::ecs2::Entity,RECollisionDidUpdateEventEx>(v37, v10);
    v39 = re::EventBus::getEventInfo<RECollisionDidUpdateEventEx>(v37);
    if (v39)
    {
      v40 = *(v39 + 208);
    }

    else
    {
      v40 = 0;
    }

    if (v40 + v38)
    {
      v54 = a3;
      v55 = a2;
      v56.i64[0] = a4;
      v41 = re::EventBus::getTypeId<RECollisionDidUpdateEventEx>();
      re::EventBus::publish(v37, v10, v41, &v54, 0x18uLL, 0);
    }

    v42 = re::EventBus::subscriptionCountInternal<re::ecs2::Entity,RECollisionDidUpdateEvent>(v37, v10);
    v43 = re::EventBus::getEventInfo<RECollisionDidUpdateEvent>(v37);
    if (v43)
    {
      v44 = *(v43 + 208);
    }

    else
    {
      v44 = 0;
    }

    if (v44 + v42)
    {
      v54 = a3;
      v55 = a2;
      v45 = a4[5];
      v56 = a4[4];
      v46 = vmulq_f32(v45, v45);
      v57 = sqrtf(v46.f32[2] + vaddv_f32(*v46.f32));
      v47 = re::EventBus::getTypeId<RECollisionDidUpdateEvent>();
      re::EventBus::publish(v37, v10, v47, &v54, 0x30uLL, 0);
    }

    v48 = re::EventBus::subscriptionCountInternal<re::ecs2::Entity,RECollisionUpdateEvent>(v37, v10);
    v49 = re::EventBus::getEventInfo<RECollisionUpdateEvent>(v37);
    if (v49)
    {
      v50 = *(v49 + 208);
    }

    else
    {
      v50 = 0;
    }

    if (v50 + v48)
    {
      v54 = a3;
      v55 = a2;
      v51 = a4[5];
      v56 = a4[4];
      v52 = vmulq_f32(v51, v51);
      v57 = sqrtf(v52.f32[2] + vaddv_f32(*v52.f32));
      v53 = re::EventBus::getTypeId<RECollisionUpdateEvent>();
      re::EventBus::publish(v37, v10, v53, &v54, 0x30uLL, 0);
    }
  }

  if (v8 && [v8 + 8 retainCount] == 1)
  {
    *(a2 + 5) = 0;
  }

  if (v10)
  {
    if ([v10 + 8 retainCount] == 1)
    {
      *(a3 + 5) = 0;
    }
  }

  if (v8)
  {
  }
}

void re::EngineCollisionEventDelegate::stopCollision(re::EngineCollisionEventDelegate *this, const re::CollisionObject *a2, const re::CollisionObject *a3)
{
  v6 = *(a2 + 5);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  v8 = *(a3 + 5);
  if (v8)
  {
    v9 = (v8 + 8);
  }

  if (v6)
  {
    v10 = v6;
    do
    {
      v11 = v10;
      v10 = *(v10 + 32);
    }

    while (v10);
    if (!*(v11 + 24))
    {
      goto LABEL_12;
    }

    v12 = v6;
    do
    {
      v13 = v12;
      v12 = *(v12 + 32);
    }

    while (v12);
    v14 = *(*(v13 + 24) + 288);
    if (!v14)
    {
LABEL_12:
      v14 = *(this + 1);
    }

    v15 = re::EventBus::subscriptionCountInternal<re::ecs2::Entity,RECollisionDidStopEvent>(v14, v6);
    Event = re::EventBus::getEventInfo<RECollisionDidStopEvent>(v14);
    if (Event)
    {
      v17 = *(Event + 208);
    }

    else
    {
      v17 = 0;
    }

    if (v17 + v15)
    {
      v36 = a2;
      v37 = a3;
      Type = re::EventBus::getTypeId<RECollisionDidStopEvent>();
      re::EventBus::publish(v14, v6, Type, &v36, 0x10uLL, 0);
    }

    v19 = re::EventBus::subscriptionCountInternal<re::ecs2::Entity,RECollisionStopEvent>(v14, v6);
    v20 = re::EventBus::getEventInfo<RECollisionStopEvent>(v14);
    if (v20)
    {
      v21 = *(v20 + 208);
    }

    else
    {
      v21 = 0;
    }

    if (v21 + v19)
    {
      v36 = a2;
      v37 = a3;
      v22 = re::EventBus::getTypeId<RECollisionStopEvent>();
      re::EventBus::publish(v14, v6, v22, &v36, 0x10uLL, 0);
    }
  }

  if (v8)
  {
    v23 = v8;
    do
    {
      v24 = v23;
      v23 = *(v23 + 32);
    }

    while (v23);
    if (!*(v24 + 24))
    {
      goto LABEL_30;
    }

    v25 = v8;
    do
    {
      v26 = v25;
      v25 = *(v25 + 32);
    }

    while (v25);
    v27 = *(*(v26 + 24) + 288);
    if (!v27)
    {
LABEL_30:
      v27 = *(this + 1);
    }

    v28 = re::EventBus::subscriptionCountInternal<re::ecs2::Entity,RECollisionDidStopEvent>(v27, v8);
    v29 = re::EventBus::getEventInfo<RECollisionDidStopEvent>(v27);
    if (v29)
    {
      v30 = *(v29 + 208);
    }

    else
    {
      v30 = 0;
    }

    if (v30 + v28)
    {
      v36 = a3;
      v37 = a2;
      v31 = re::EventBus::getTypeId<RECollisionDidStopEvent>();
      re::EventBus::publish(v27, v8, v31, &v36, 0x10uLL, 0);
    }

    v32 = re::EventBus::subscriptionCountInternal<re::ecs2::Entity,RECollisionStopEvent>(v27, v8);
    v33 = re::EventBus::getEventInfo<RECollisionStopEvent>(v27);
    if (v33)
    {
      v34 = *(v33 + 208);
    }

    else
    {
      v34 = 0;
    }

    if (v34 + v32)
    {
      v36 = a3;
      v37 = a2;
      v35 = re::EventBus::getTypeId<RECollisionStopEvent>();
      re::EventBus::publish(v27, v8, v35, &v36, 0x10uLL, 0);
    }
  }

  if (v6 && [v6 + 8 retainCount] == 1)
  {
    *(a2 + 5) = 0;
  }

  if (v8)
  {
    if ([v8 + 8 retainCount] == 1)
    {
      *(a3 + 5) = 0;
    }
  }

  if (v6)
  {
  }
}

uint64_t re::EventBus::getEventInfo<RECollisionDidStartEvent>(uint64_t a1)
{
  Type = re::EventBus::getTypeId<RECollisionDidStartEvent>();
  v2 = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find((a1 + 24), &Type);
  if (v2 == -1)
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 32) + 48 * v2 + 8);
  }
}

uint64_t re::EventBus::EventInfo::subscriptionCount(re::EventBus::EventInfo *this)
{
  v1 = *(this + 26);
  v10[0] = this + 216;
  v2 = *(this + 29);
  if (v2 >= 0x10)
  {
    v3 = 0;
    v4 = *(this + 27);
    v5 = v2 >> 4;
    while (1)
    {
      v6 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v4), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v10[1] = v6 ^ 0xFFFFLL;
      if (v6 != 0xFFFFLL)
      {
        break;
      }

      v3 -= 16;
      ++v4;
      if (!--v5)
      {
        return v1;
      }
    }

    v7 = __clz(__rbit64(v6 ^ 0xFFFFLL));
    v8 = v7 - v3;
    v11 = v7 - v3;
    if (v7 + 1 != v3)
    {
      do
      {
        v1 += *(*(v10[0] + 8) + 144 * v8 + 136);
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v10);
        v8 = v11;
      }

      while (v11 != -1);
    }
  }

  return v1;
}

char *re::EventBus::getTypeId<RECollisionDidStartEvent>()
{
  v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
  {
    v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
    if (v2)
    {
      re::EventBus::getTypeId<RECollisionDidStartEvent>(void)const::s_id = re::EventBus::typeStringToId(("24RECollisionDidStartEvent" & 0x7FFFFFFFFFFFFFFFLL), v3);
      v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
    }
  }

  return v0[189];
}

uint64_t re::EventBus::getEventInfo<RECollisionDidStartEventEx>(uint64_t a1)
{
  Type = re::EventBus::getTypeId<RECollisionDidStartEventEx>();
  v2 = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find((a1 + 24), &Type);
  if (v2 == -1)
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 32) + 48 * v2 + 8);
  }
}

char *re::EventBus::getTypeId<RECollisionDidStartEventEx>()
{
  v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
  {
    v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
    if (v2)
    {
      re::EventBus::getTypeId<RECollisionDidStartEventEx>(void)const::s_id = re::EventBus::typeStringToId(("26RECollisionDidStartEventEx" & 0x7FFFFFFFFFFFFFFFLL), v3);
      v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
    }
  }

  return v0[191];
}

uint64_t re::EventBus::getEventInfo<RECollisionDidStopEvent>(uint64_t a1)
{
  Type = re::EventBus::getTypeId<RECollisionDidStopEvent>();
  v2 = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find((a1 + 24), &Type);
  if (v2 == -1)
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 32) + 48 * v2 + 8);
  }
}

char *re::EventBus::getTypeId<RECollisionDidStopEvent>()
{
  v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
  {
    v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
    if (v2)
    {
      re::EventBus::getTypeId<RECollisionDidStopEvent>(void)const::s_id = re::EventBus::typeStringToId(("23RECollisionDidStopEvent" & 0x7FFFFFFFFFFFFFFFLL), v3);
      v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
    }
  }

  return v0[193];
}

uint64_t re::EventBus::getEventInfo<RECollisionDidUpdateEvent>(uint64_t a1)
{
  Type = re::EventBus::getTypeId<RECollisionDidUpdateEvent>();
  v2 = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find((a1 + 24), &Type);
  if (v2 == -1)
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 32) + 48 * v2 + 8);
  }
}

char *re::EventBus::getTypeId<RECollisionDidUpdateEvent>()
{
  v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
  {
    v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
    if (v2)
    {
      re::EventBus::getTypeId<RECollisionDidUpdateEvent>(void)const::s_id = re::EventBus::typeStringToId(("25RECollisionDidUpdateEvent" & 0x7FFFFFFFFFFFFFFFLL), v3);
      v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
    }
  }

  return v0[195];
}

uint64_t re::EventBus::getEventInfo<RECollisionDidUpdateEventEx>(uint64_t a1)
{
  Type = re::EventBus::getTypeId<RECollisionDidUpdateEventEx>();
  v2 = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find((a1 + 24), &Type);
  if (v2 == -1)
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 32) + 48 * v2 + 8);
  }
}

char *re::EventBus::getTypeId<RECollisionDidUpdateEventEx>()
{
  v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
  {
    v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
    if (v2)
    {
      re::EventBus::getTypeId<RECollisionDidUpdateEventEx>(void)const::s_id = re::EventBus::typeStringToId(("27RECollisionDidUpdateEventEx" & 0x7FFFFFFFFFFFFFFFLL), v3);
      v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
    }
  }

  return v0[197];
}

uint64_t re::EventBus::getEventInfo<RECollisionStartEvent>(uint64_t a1)
{
  Type = re::EventBus::getTypeId<RECollisionStartEvent>();
  v2 = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find((a1 + 24), &Type);
  if (v2 == -1)
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 32) + 48 * v2 + 8);
  }
}

char *re::EventBus::getTypeId<RECollisionStartEvent>()
{
  v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
  {
    v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
    if (v2)
    {
      re::EventBus::getTypeId<RECollisionStartEvent>(void)const::s_id = re::EventBus::typeStringToId(("21RECollisionStartEvent" & 0x7FFFFFFFFFFFFFFFLL), v3);
      v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
    }
  }

  return v0[199];
}

uint64_t re::EventBus::getEventInfo<RECollisionStopEvent>(uint64_t a1)
{
  Type = re::EventBus::getTypeId<RECollisionStopEvent>();
  v2 = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find((a1 + 24), &Type);
  if (v2 == -1)
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 32) + 48 * v2 + 8);
  }
}

char *re::EventBus::getTypeId<RECollisionStopEvent>()
{
  v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
  {
    v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
    if (v2)
    {
      re::EventBus::getTypeId<RECollisionStopEvent>(void)const::s_id = re::EventBus::typeStringToId(("20RECollisionStopEvent" & 0x7FFFFFFFFFFFFFFFLL), v3);
      v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
    }
  }

  return v0[201];
}

uint64_t re::EventBus::getEventInfo<RECollisionUpdateEvent>(uint64_t a1)
{
  Type = re::EventBus::getTypeId<RECollisionUpdateEvent>();
  v2 = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find((a1 + 24), &Type);
  if (v2 == -1)
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 32) + 48 * v2 + 8);
  }
}

char *re::EventBus::getTypeId<RECollisionUpdateEvent>()
{
  v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
  {
    v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
    if (v2)
    {
      re::EventBus::getTypeId<RECollisionUpdateEvent>(void)const::s_id = re::EventBus::typeStringToId(("22RECollisionUpdateEvent" & 0x7FFFFFFFFFFFFFFFLL), v3);
      v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
    }
  }

  return v0[203];
}

uint64_t re::EventBus::subscriptionCountInternal<re::ecs2::Entity,RECollisionDidStartEventEx>(uint64_t a1, uint64_t a2)
{
  result = re::EventBus::getEventInfo<RECollisionDidStartEventEx>(a1);
  if (result)
  {
    v4 = result;
    if (!a2)
    {
      v6 = result + 88;
      return *(v6 + 120);
    }

    v7[0] = a2;
    v7[1] = 0;
    v5 = re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::find((result + 216), v7);
    if (v5 != -1)
    {
      v6 = *(v4 + 224) + 144 * v5 + 16;
      return *(v6 + 120);
    }

    return 0;
  }

  return result;
}

uint64_t re::EventBus::subscriptionCountInternal<re::ecs2::Entity,RECollisionDidStartEvent>(uint64_t a1, uint64_t a2)
{
  result = re::EventBus::getEventInfo<RECollisionDidStartEvent>(a1);
  if (result)
  {
    v4 = result;
    if (!a2)
    {
      v6 = result + 88;
      return *(v6 + 120);
    }

    v7[0] = a2;
    v7[1] = 0;
    v5 = re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::find((result + 216), v7);
    if (v5 != -1)
    {
      v6 = *(v4 + 224) + 144 * v5 + 16;
      return *(v6 + 120);
    }

    return 0;
  }

  return result;
}

uint64_t re::EventBus::subscriptionCountInternal<re::ecs2::Entity,RECollisionStartEvent>(uint64_t a1, uint64_t a2)
{
  result = re::EventBus::getEventInfo<RECollisionStartEvent>(a1);
  if (result)
  {
    v4 = result;
    if (!a2)
    {
      v6 = result + 88;
      return *(v6 + 120);
    }

    v7[0] = a2;
    v7[1] = 0;
    v5 = re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::find((result + 216), v7);
    if (v5 != -1)
    {
      v6 = *(v4 + 224) + 144 * v5 + 16;
      return *(v6 + 120);
    }

    return 0;
  }

  return result;
}

uint64_t re::EventBus::subscriptionCountInternal<re::ecs2::Entity,RECollisionDidUpdateEventEx>(uint64_t a1, uint64_t a2)
{
  result = re::EventBus::getEventInfo<RECollisionDidUpdateEventEx>(a1);
  if (result)
  {
    v4 = result;
    if (!a2)
    {
      v6 = result + 88;
      return *(v6 + 120);
    }

    v7[0] = a2;
    v7[1] = 0;
    v5 = re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::find((result + 216), v7);
    if (v5 != -1)
    {
      v6 = *(v4 + 224) + 144 * v5 + 16;
      return *(v6 + 120);
    }

    return 0;
  }

  return result;
}

uint64_t re::EventBus::subscriptionCountInternal<re::ecs2::Entity,RECollisionDidUpdateEvent>(uint64_t a1, uint64_t a2)
{
  result = re::EventBus::getEventInfo<RECollisionDidUpdateEvent>(a1);
  if (result)
  {
    v4 = result;
    if (!a2)
    {
      v6 = result + 88;
      return *(v6 + 120);
    }

    v7[0] = a2;
    v7[1] = 0;
    v5 = re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::find((result + 216), v7);
    if (v5 != -1)
    {
      v6 = *(v4 + 224) + 144 * v5 + 16;
      return *(v6 + 120);
    }

    return 0;
  }

  return result;
}

uint64_t re::EventBus::subscriptionCountInternal<re::ecs2::Entity,RECollisionUpdateEvent>(uint64_t a1, uint64_t a2)
{
  result = re::EventBus::getEventInfo<RECollisionUpdateEvent>(a1);
  if (result)
  {
    v4 = result;
    if (!a2)
    {
      v6 = result + 88;
      return *(v6 + 120);
    }

    v7[0] = a2;
    v7[1] = 0;
    v5 = re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::find((result + 216), v7);
    if (v5 != -1)
    {
      v6 = *(v4 + 224) + 144 * v5 + 16;
      return *(v6 + 120);
    }

    return 0;
  }

  return result;
}

uint64_t re::EventBus::subscriptionCountInternal<re::ecs2::Entity,RECollisionDidStopEvent>(uint64_t a1, uint64_t a2)
{
  result = re::EventBus::getEventInfo<RECollisionDidStopEvent>(a1);
  if (result)
  {
    v4 = result;
    if (!a2)
    {
      v6 = result + 88;
      return *(v6 + 120);
    }

    v7[0] = a2;
    v7[1] = 0;
    v5 = re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::find((result + 216), v7);
    if (v5 != -1)
    {
      v6 = *(v4 + 224) + 144 * v5 + 16;
      return *(v6 + 120);
    }

    return 0;
  }

  return result;
}

uint64_t re::EventBus::subscriptionCountInternal<re::ecs2::Entity,RECollisionStopEvent>(uint64_t a1, uint64_t a2)
{
  result = re::EventBus::getEventInfo<RECollisionStopEvent>(a1);
  if (result)
  {
    v4 = result;
    if (!a2)
    {
      v6 = result + 88;
      return *(v6 + 120);
    }

    v7[0] = a2;
    v7[1] = 0;
    v5 = re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::find((result + 216), v7);
    if (v5 != -1)
    {
      v6 = *(v4 + 224) + 144 * v5 + 16;
      return *(v6 + 120);
    }

    return 0;
  }

  return result;
}

void *re::ecs2::allocInfo_ThrottleComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_408, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_408))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B5E08, "ThrottleComponent");
    __cxa_guard_release(&_MergedGlobals_408);
  }

  return &unk_1EE1B5E08;
}

void re::ecs2::initInfo_ThrottleComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v10[0] = 0x7C4A073DE665C1A6;
  v10[1] = "ThrottleComponent";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1B5E00, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B5E00);
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
      qword_1EE1B5DF8 = v8;
      __cxa_guard_release(&qword_1EE1B5E00);
    }
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1B5DF8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ThrottleComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ThrottleComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ThrottleComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ThrottleComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs217ThrottleComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v9 = v11;
}

void re::internal::defaultConstruct<re::ecs2::ThrottleComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 4) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE49B8;
  *(v3 + 28) = 0;
  *(v3 + 32) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::ThrottleComponent>(uint64_t a1)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE49B8;
  *(v1 + 28) = 0;
  *(v1 + 32) = 0;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs217ThrottleComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

BOOL re::SRTNetworkSyncHelper::readSnapshot()
{
  v0 = RESyncBitReaderBytesLeft();
  if (v0 >= 0x30)
  {
    RESyncBitReaderReadData();
  }

  return v0 > 0x2F;
}

uint64_t re::SRTNetworkSyncHelper::read(uint64_t a1, uint64_t a2)
{
  v4[0] = 0x3F8000003F800000;
  v4[1] = 1065353216;
  v4[2] = 0;
  v4[3] = 0x3F80000000000000;
  v4[4] = 0;
  v4[5] = 0;
  RESyncBitReaderReadBool();
  RESyncBitReaderReadBool();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  return MEMORY[0x1E69049A0](a2, v4, 48);
}

uint64_t re::SRTNetworkSyncHelper::readDelta(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v9 = 0x3F8000003F800000;
  *(&v9 + 1) = 1065353216;
  *&v10 = 0;
  *(&v10 + 1) = 0x3F80000000000000;
  v11 = 0uLL;
  result = re::SRTNetworkSyncHelper::readSnapshot();
  if (result)
  {
    v8 = 0;
    RESyncBitReaderReadBool();
    v7 = 0;
    RESyncBitReaderReadBool();
    v6 = 0;
    RESyncBitReaderReadBool();
    v5[0] = v9;
    v5[1] = v10;
    v5[2] = v11;
    return MEMORY[0x1E69049A0](a3, v5, 48);
  }

  return result;
}

BOOL re::SRTNetworkSyncHelper::write(uint64_t a1, uint64_t a2)
{
  v8 = 0x3F8000003F800000;
  v9 = 1065353216;
  v10 = 0;
  v11 = 0x3F80000000000000;
  v12 = 0;
  v13 = 0;
  Snapshot = re::SRTNetworkSyncHelper::readSnapshot();
  if (Snapshot)
  {
    if ((*&v8 == 1.0 || fabsf(*&v8 + -1.0) < (((fabsf(*&v8) + 1.0) + 1.0) * 0.00001)) && (*(&v8 + 1) == 1.0 || fabsf(*(&v8 + 1) + -1.0) < (((fabsf(*(&v8 + 1)) + 1.0) + 1.0) * 0.00001)))
    {
      if (*&v9 == 1.0)
      {
        RESyncBitWriterWriteBool();
LABEL_19:
        MEMORY[0x1E69049A0](a2, &v10, 4);
        MEMORY[0x1E69049A0](a2, &v10 + 4, 4);
        MEMORY[0x1E69049A0](a2, &v11, 4);
        MEMORY[0x1E69049A0](a2, &v11 + 4, 4);
        MEMORY[0x1E69049A0](a2, &v12, 4);
        MEMORY[0x1E69049A0](a2, &v12 + 4, 4);
        MEMORY[0x1E69049A0](a2, &v13, 4);
        return Snapshot;
      }

      RESyncBitWriterWriteBool();
      if (fabsf(*&v9 + -1.0) < (((fabsf(*&v9) + 1.0) + 1.0) * 0.00001))
      {
        goto LABEL_19;
      }
    }

    else
    {
      RESyncBitWriterWriteBool();
    }

    if (*&v8 == *(&v8 + 1) || vabds_f32(*&v8, *(&v8 + 1)) < (((fabsf(*&v8) + fabsf(*(&v8 + 1))) + 1.0) * 0.00001))
    {
      if (*&v8 == *&v9)
      {
        RESyncBitWriterWriteBool();
        v4 = &v8;
LABEL_18:
        MEMORY[0x1E69049A0](a2, v4, 4);
        goto LABEL_19;
      }

      v5 = ((fabsf(*&v8) + fabsf(*&v9)) + 1.0) * 0.00001;
      v6 = vabds_f32(*&v8, *&v9);
      RESyncBitWriterWriteBool();
      MEMORY[0x1E69049A0](a2, &v8, 4);
      if (v6 < v5)
      {
        goto LABEL_19;
      }
    }

    else
    {
      RESyncBitWriterWriteBool();
      MEMORY[0x1E69049A0](a2, &v8, 4);
    }

    MEMORY[0x1E69049A0](a2, &v8 + 4, 4);
    v4 = &v9;
    goto LABEL_18;
  }

  return Snapshot;
}

BOOL re::SRTNetworkSyncHelper::writeDelta(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17.i64[0] = 0x3F8000003F800000;
  v17.i64[1] = 1065353216;
  v18.i64[0] = 0;
  v18.i64[1] = 0x3F80000000000000;
  v19 = 0uLL;
  if (!re::SRTNetworkSyncHelper::readSnapshot())
  {
    return 0;
  }

  v14.i64[0] = 0x3F8000003F800000;
  v14.i64[1] = 1065353216;
  v15.i64[0] = 0;
  v15.i64[1] = 0x3F80000000000000;
  v16 = 0uLL;
  Snapshot = re::SRTNetworkSyncHelper::readSnapshot();
  if (Snapshot)
  {
    v5 = vmvnq_s8(vceqq_f32(v14, v17));
    v5.i32[3] = v5.i32[2];
    v6 = vmaxvq_u32(v5);
    RESyncBitWriterWriteBool();
    v7 = vmaxvq_u32(vmvnq_s8(vceqq_f32(v15, v18)));
    RESyncBitWriterWriteBool();
    v8 = vmvnq_s8(vceqq_f32(v16, v19));
    v8.i32[3] = v8.i32[2];
    v9 = vmaxvq_u32(v8);
    RESyncBitWriterWriteBool();
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    if ((v14.f32[0] == 1.0 || fabsf(v14.f32[0] + -1.0) < (((fabsf(v14.f32[0]) + 1.0) + 1.0) * 0.00001)) && (v14.f32[1] == 1.0 || fabsf(v14.f32[1] + -1.0) < (((fabsf(v14.f32[1]) + 1.0) + 1.0) * 0.00001)))
    {
      if (v14.f32[2] == 1.0)
      {
        RESyncBitWriterWriteBool();
        goto LABEL_4;
      }

      RESyncBitWriterWriteBool();
      if (fabsf(v14.f32[2] + -1.0) < (((fabsf(v14.f32[2]) + 1.0) + 1.0) * 0.00001))
      {
LABEL_4:
        if ((v7 & 0x80000000) != 0)
        {
          MEMORY[0x1E69049A0](a3, &v15, 4);
          MEMORY[0x1E69049A0](a3, &v15.i32[1], 4);
          MEMORY[0x1E69049A0](a3, &v15.u32[2], 4);
          MEMORY[0x1E69049A0](a3, &v15.u64[1] + 4, 4);
          if ((v9 & 0x80000000) != 0)
          {
LABEL_16:
            MEMORY[0x1E69049A0](a3, &v16, 4);
            MEMORY[0x1E69049A0](a3, &v16.i32[1], 4);
            MEMORY[0x1E69049A0](a3, &v16.u32[2], 4);
            return Snapshot;
          }
        }

        else if ((v9 & 0x80000000) != 0)
        {
          goto LABEL_16;
        }

        return Snapshot;
      }
    }

    else
    {
      RESyncBitWriterWriteBool();
    }

    if (v14.f32[0] == v14.f32[1] || vabds_f32(v14.f32[0], v14.f32[1]) < (((fabsf(v14.f32[0]) + fabsf(v14.f32[1])) + 1.0) * 0.00001))
    {
      if (v14.f32[0] == v14.f32[2])
      {
        RESyncBitWriterWriteBool();
        v11 = &v14;
LABEL_27:
        MEMORY[0x1E69049A0](a3, v11, 4);
        goto LABEL_4;
      }

      v12 = ((fabsf(v14.f32[0]) + fabsf(v14.f32[2])) + 1.0) * 0.00001;
      v13 = vabds_f32(v14.f32[0], v14.f32[2]);
      RESyncBitWriterWriteBool();
      MEMORY[0x1E69049A0](a3, &v14, 4);
      if (v13 < v12)
      {
        goto LABEL_4;
      }
    }

    else
    {
      RESyncBitWriterWriteBool();
      MEMORY[0x1E69049A0](a3, &v14, 4);
    }

    MEMORY[0x1E69049A0](a3, &v14.i32[1], 4);
    v11 = &v14.u32[2];
    goto LABEL_27;
  }

  return Snapshot;
}

void re::ecs2::System::~System(re::ecs2::System *this)
{
  *this = &unk_1F5D00FD8;
  v2 = this + 72;
  re::DynamicArray<unsigned long>::deinit(this + 184);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 17);
  re::DataArray<re::ecs2::System::SystemScheduling>::deinit(v2);
  re::DynamicArray<unsigned long>::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

uint64_t re::ecs2::System::taskOptions(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v3 = re::HashTable<re::DataArrayHandle<re::ecs2::SceneGroup>,re::DataArrayHandle<re::ecs2::System::SystemScheduling>,re::Hash<re::DataArrayHandle<re::ecs2::SceneGroup>>,re::EqualTo<re::DataArrayHandle<re::ecs2::SceneGroup>>,true,false>::tryGet(a1 + 136, &v6);
  if (v3 && (v4 = re::DataArray<re::ecs2::System::SystemScheduling>::get(a1 + 72, *v3), *(v4 + 24) == 1))
  {
    return v4 + 28;
  }

  else
  {
    return a1 + 56;
  }
}

uint64_t re::HashTable<re::DataArrayHandle<re::ecs2::SceneGroup>,re::DataArrayHandle<re::ecs2::System::SystemScheduling>,re::Hash<re::DataArrayHandle<re::ecs2::SceneGroup>>,re::EqualTo<re::DataArrayHandle<re::ecs2::SceneGroup>>,true,false>::tryGet(uint64_t a1, _DWORD *a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*a2 & 0xFFFFFFLL)) ^ ((0xBF58476D1CE4E5B9 * (*a2 & 0xFFFFFFLL)) >> 27));
  re::HashTable<re::DataArrayHandle<re::MeshModel>,unsigned long,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::findEntry<re::DataArrayHandle<re::MeshModel>>(a1, a2, v3 ^ (v3 >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 32 * v6 + 16;
  }
}

uint64_t re::DataArray<re::ecs2::System::SystemScheduling>::get(uint64_t a1, int a2)
{
  if (*(a1 + 16) <= HIWORD(a2))
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 32) + 16 * HIWORD(a2)) + 40 * a2;
}

uint64_t re::ecs2::System::taskHandle(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v3 = re::HashTable<re::DataArrayHandle<re::ecs2::SceneGroup>,re::DataArrayHandle<re::ecs2::System::SystemScheduling>,re::Hash<re::DataArrayHandle<re::ecs2::SceneGroup>>,re::EqualTo<re::DataArrayHandle<re::ecs2::SceneGroup>>,true,false>::tryGet(a1 + 136, &v5);
  if (v3)
  {
    return *(re::DataArray<re::ecs2::System::SystemScheduling>::get(a1 + 72, *v3) + 16);
  }

  else
  {
    return -1;
  }
}

void *re::ecs2::System::setTaskHandle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a2;
  result = re::HashTable<re::DataArrayHandle<re::ecs2::SceneGroup>,re::DataArrayHandle<re::ecs2::System::SystemScheduling>,re::Hash<re::DataArrayHandle<re::ecs2::SceneGroup>>,re::EqualTo<re::DataArrayHandle<re::ecs2::SceneGroup>>,true,false>::tryGet(a1 + 136, &v6);
  if (result)
  {
    result = re::DataArray<re::ecs2::System::SystemScheduling>::get(a1 + 72, *result);
    result[2] = a3;
  }

  return result;
}

uint64_t re::ecs2::System::setDefaultTaskOptions(uint64_t result, uint64_t *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  *(result + 64) = *(a2 + 8);
  *(result + 56) = v2;
  if (*(result + 40))
  {
    v4 = result;
    v5 = result + 72;
    result = re::DataArray<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>::DataArrayIterator<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData,re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData&>::DataArrayIterator(v27, result + 72);
    v6 = *&v27[0];
    v16 = *&v27[0];
    v17 = DWORD2(v27[0]);
    v7 = WORD4(v27[0]);
    v8 = HIWORD(DWORD2(v27[0]));
    v9 = v5 == *&v27[0] && WORD4(v27[0]) == 0xFFFF;
    if (!v9 || v8 != 0xFFFF)
    {
      do
      {
        v11 = v8;
        v12 = *(v6 + 16);
        if (v12 <= v8)
        {
          v18 = 0;
          memset(v27, 0, sizeof(v27));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v19 = 136315906;
          v20 = "operator[]";
          v21 = 1024;
          v22 = 797;
          v23 = 2048;
          v24 = v11;
          v25 = 2048;
          v26 = v12;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v13 = *(*(v6 + 32) + 16 * v8) + 40 * v7;
        v14 = (*(**(v4 + 40) + 104))(*(v4 + 40), *v13);
        if (v14)
        {
          v15 = *(v13 + 16);
          if (*(v14 + 5) > v15 && (*(v13 + 24) & 1) == 0)
          {
            re::Scheduler::setTaskOptions(v14, v15, a2);
          }
        }

        result = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v16);
        v6 = v16;
        v7 = v17;
        v8 = HIWORD(v17);
      }

      while (v16 != v5 || v17 != 0xFFFF || HIWORD(v17) != 0xFFFF);
    }
  }

  return result;
}

void *re::ecs2::System::setTaskOptions(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v10 = a2;
  result = re::HashTable<re::DataArrayHandle<re::ecs2::SceneGroup>,re::DataArrayHandle<re::ecs2::System::SystemScheduling>,re::Hash<re::DataArrayHandle<re::ecs2::SceneGroup>>,re::EqualTo<re::DataArrayHandle<re::ecs2::SceneGroup>>,true,false>::tryGet(a1 + 136, &v10);
  if (result)
  {
    result = re::DataArray<re::ecs2::System::SystemScheduling>::get(a1 + 72, *result);
    v6 = result;
    v8 = *a3;
    v9 = *(a3 + 2);
    if (result[3])
    {
      v7 = *a3;
      *(result + 36) = *(a3 + 8);
      *(result + 28) = v7;
    }

    else
    {
      *(result + 24) = 1;
      *(result + 28) = v8;
      *(result + 9) = v9;
    }

    if (result[2] != -1)
    {
      result = *(a1 + 40);
      if (result)
      {
        result = (*(*result + 104))(result, v10);
        if (result)
        {
          return re::Scheduler::setTaskOptions(result, v6[2], a3);
        }
      }
    }
  }

  return result;
}

re::Scheduler *re::ecs2::System::resetTaskOptions(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  result = re::HashTable<re::DataArrayHandle<re::ecs2::SceneGroup>,re::DataArrayHandle<re::ecs2::System::SystemScheduling>,re::Hash<re::DataArrayHandle<re::ecs2::SceneGroup>>,re::EqualTo<re::DataArrayHandle<re::ecs2::SceneGroup>>,true,false>::tryGet(a1 + 136, &v5);
  if (result)
  {
    result = re::DataArray<re::ecs2::System::SystemScheduling>::get(a1 + 72, *result);
    v4 = result;
    if (*(result + 24) == 1)
    {
      *(result + 24) = 0;
    }

    if (*(result + 2) != -1)
    {
      result = *(a1 + 40);
      if (result)
      {
        result = (*(*result + 104))(result, v5);
        if (result)
        {
          return re::Scheduler::setTaskOptions(result, *(v4 + 2), (a1 + 56));
        }
      }
    }
  }

  return result;
}

void re::ecs2::System::queueToRun(uint64_t a1, uint64_t a2, float a3)
{
  v10 = a2;
  v5 = re::HashTable<re::DataArrayHandle<re::ecs2::SceneGroup>,re::DataArrayHandle<re::ecs2::System::SystemScheduling>,re::Hash<re::DataArrayHandle<re::ecs2::SceneGroup>>,re::EqualTo<re::DataArrayHandle<re::ecs2::SceneGroup>>,true,false>::tryGet(a1 + 136, &v10);
  if (v5)
  {
    v6 = re::DataArray<re::ecs2::System::SystemScheduling>::get(a1 + 72, *v5);
    *(v6 + 9) = 1;
    *(v6 + 12) = a3;
    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = (*(*v7 + 104))(v7, v10);
      if (v8)
      {
        v9 = *(v6 + 16);
        if (*(v8 + 5) > v9)
        {
          re::Scheduler::enqueueTaskWithDeadline(v8, v9, a3);
        }
      }
    }
  }
}

uint64_t re::ecs2::System::isQueuedToRun(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v3 = re::HashTable<re::DataArrayHandle<re::ecs2::SceneGroup>,re::DataArrayHandle<re::ecs2::System::SystemScheduling>,re::Hash<re::DataArrayHandle<re::ecs2::SceneGroup>>,re::EqualTo<re::DataArrayHandle<re::ecs2::SceneGroup>>,true,false>::tryGet(a1 + 136, &v6);
  if (v3)
  {
    v4 = *(re::DataArray<re::ecs2::System::SystemScheduling>::get(a1 + 72, *v3) + 9);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t re::ecs2::System::resetQueuedToRun(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  result = re::HashTable<re::DataArrayHandle<re::ecs2::SceneGroup>,re::DataArrayHandle<re::ecs2::System::SystemScheduling>,re::Hash<re::DataArrayHandle<re::ecs2::SceneGroup>>,re::EqualTo<re::DataArrayHandle<re::ecs2::SceneGroup>>,true,false>::tryGet(a1 + 136, &v4);
  if (result)
  {
    result = re::DataArray<re::ecs2::System::SystemScheduling>::get(a1 + 72, *result);
    *(result + 9) = 0;
  }

  return result;
}

float re::ecs2::System::queuedToRunDeadline(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v3 = re::HashTable<re::DataArrayHandle<re::ecs2::SceneGroup>,re::DataArrayHandle<re::ecs2::System::SystemScheduling>,re::Hash<re::DataArrayHandle<re::ecs2::SceneGroup>>,re::EqualTo<re::DataArrayHandle<re::ecs2::SceneGroup>>,true,false>::tryGet(a1 + 136, &v5);
  if (v3)
  {
    return *(re::DataArray<re::ecs2::System::SystemScheduling>::get(a1 + 72, *v3) + 12);
  }

  else
  {
    return 3.4028e38;
  }
}

void re::ecs2::System::setTaskEnabled(uint64_t a1, uint64_t a2, int a3)
{
  v10 = a2;
  v5 = re::HashTable<re::DataArrayHandle<re::ecs2::SceneGroup>,re::DataArrayHandle<re::ecs2::System::SystemScheduling>,re::Hash<re::DataArrayHandle<re::ecs2::SceneGroup>>,re::EqualTo<re::DataArrayHandle<re::ecs2::SceneGroup>>,true,false>::tryGet(a1 + 136, &v10);
  if (v5)
  {
    v6 = re::DataArray<re::ecs2::System::SystemScheduling>::get(a1 + 72, *v5);
    if (*(v6 + 8) != a3)
    {
      v7 = v6;
      *(v6 + 8) = a3;
      if (*(v6 + 16) != -1)
      {
        v8 = *(a1 + 40);
        if (v8)
        {
          v9 = (*(*v8 + 104))(v8, v10);
          if (v9)
          {
            re::Scheduler::setEnabled(v9, *(v7 + 16), a3);
          }
        }
      }
    }
  }
}

uint64_t re::ecs2::System::isTaskEnabled(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v3 = re::HashTable<re::DataArrayHandle<re::ecs2::SceneGroup>,re::DataArrayHandle<re::ecs2::System::SystemScheduling>,re::Hash<re::DataArrayHandle<re::ecs2::SceneGroup>>,re::EqualTo<re::DataArrayHandle<re::ecs2::SceneGroup>>,true,false>::tryGet(a1 + 136, &v6);
  if (v3)
  {
    v4 = *(re::DataArray<re::ecs2::System::SystemScheduling>::get(a1 + 72, *v3) + 8);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void *re::ecs2::System::willAddToSystemCollection(re::ecs2::System *this, re::ecs2::SystemCollection *a2)
{
  v7 = *(*(a2 + 6) + 16);
  v6 = re::DataArray<re::ecs2::System::SystemScheduling>::create<re::DataArrayHandle<re::ecs2::SceneGroup> const&>(this + 72, &v7);
  re::HashTable<re::DataArrayHandle<re::ecs2::SceneGroup>,re::DataArrayHandle<re::ecs2::System::SystemScheduling>,re::Hash<re::DataArrayHandle<re::ecs2::SceneGroup>>,re::EqualTo<re::DataArrayHandle<re::ecs2::SceneGroup>>,true,false>::addNew(this + 136, &v7, &v6);
  result = re::DynamicArray<re::DataArrayHandle<re::MeshModel>>::add(this + 23, &v7);
  v5 = *(this + 13);
  if (!v5)
  {
    *(this + 5) = ***(a2 + 6);
    result = (*(*this + 40))(this);
    v5 = *(this + 13);
  }

  *(this + 13) = v5 + 1;
  return result;
}

uint64_t re::HashTable<re::DataArrayHandle<re::ecs2::SceneGroup>,re::DataArrayHandle<re::ecs2::System::SystemScheduling>,re::Hash<re::DataArrayHandle<re::ecs2::SceneGroup>>,re::EqualTo<re::DataArrayHandle<re::ecs2::SceneGroup>>,true,false>::addNew(uint64_t a1, _DWORD *a2, void *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*a2 & 0xFFFFFFLL)) ^ ((0xBF58476D1CE4E5B9 * (*a2 & 0xFFFFFFLL)) >> 27));
  re::HashTable<re::DataArrayHandle<re::MeshModel>,unsigned long,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::findEntry<re::DataArrayHandle<re::MeshModel>>(a1, a2, v6 ^ (v6 >> 31), &v9);
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 32 * HIDWORD(v10) + 16;
  }

  v7 = re::HashTable<re::DataArrayHandle<re::ecs2::SceneGroup>,re::DataArrayHandle<re::ecs2::System::SystemScheduling>,re::Hash<re::DataArrayHandle<re::ecs2::SceneGroup>>,re::EqualTo<re::DataArrayHandle<re::ecs2::SceneGroup>>,true,false>::allocEntry(a1, v10, v9);
  *(v7 + 8) = *a2;
  *(v7 + 16) = *a3;
  result = v7 + 16;
  ++*(a1 + 40);
  return result;
}

unint64_t re::DataArray<re::ecs2::System::SystemScheduling>::create<re::DataArrayHandle<re::ecs2::SceneGroup> const&>(uint64_t a1, void *a2)
{
  v4 = *(a1 + 56);
  if ((v4 + 1) >> 24)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 + 1;
  }

  *(a1 + 56) = v5;
  v6 = *(a1 + 52);
  v7 = *(a1 + 54);
  if (v6 == 0xFFFF && v7 == 0xFFFF)
  {
    if (*(a1 + 48) >= *(a1 + 44))
    {
      re::DataArray<re::ecs2::System::SystemScheduling>::allocBlock(a1);
    }

    v11 = *(a1 + 16);
    v7 = (v11 - 1);
    if (v11)
    {
      v6 = *(a1 + 48);
      if (v6 < 0x10000)
      {
        v12 = (*(a1 + 32) + 16 * v7);
        *(a1 + 48) = v6 + 1;
        *(v12[1] + 4 * v6) = *(a1 + 56);
        v10 = *v12 + 40 * v6;
        goto LABEL_15;
      }

LABEL_18:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", "!overflow", "create", 601, v6, v14, v15);
      _os_crash();
      __break(1u);
    }

LABEL_17:
    v14 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v15) = 136315906;
    *(&v15 + 4) = "operator[]";
    WORD6(v15) = 1024;
    HIWORD(v15) = 789;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_18;
  }

  if (*(a1 + 16) <= v7)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  v9 = (*(a1 + 32) + 16 * v7);
  *(v9[1] + 4 * v6) = v5;
  v10 = *v9 + 40 * v6;
  *(a1 + 52) = *v10;
LABEL_15:
  ++*(a1 + 40);
  *v10 = *a2;
  *(v10 + 8) = 1;
  *(v10 + 12) = 0;
  *(v10 + 16) = -1;
  *(v10 + 24) = 0;
  return ((v7 << 16) | ((*(a1 + 56) & 0xFFFFFF) << 32)) + v6;
}

BOOL re::ecs2::System::willRemoveFromSystemCollection(re::ecs2::System *this, re::ecs2::SystemCollection *a2)
{
  v4 = *(this + 13) - 1;
  *(this + 13) = v4;
  if (!v4)
  {
    (*(*this + 72))(this);
    *(this + 5) = 0;
  }

  v7 = *(*(a2 + 6) + 16);
  re::DynamicArray<re::DataArrayHandle<re::ecs2::SceneGroup>>::remove(this + 184, &v7);
  v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v7 & 0xFFFFFF)) ^ ((0xBF58476D1CE4E5B9 * (v7 & 0xFFFFFF)) >> 27));
  re::HashTable<re::DataArrayHandle<re::MeshModel>,unsigned long,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::findEntry<re::DataArrayHandle<re::MeshModel>>(this + 136, &v7, v5 ^ (v5 >> 31), v8);
  re::DataArray<re::ecs2::System::SystemScheduling>::destroy(this + 72, *(*(this + 19) + 32 * v9 + 16));
  return re::HashTable<re::DataArrayHandle<re::ecs2::SceneGroup>,re::DataArrayHandle<re::ecs2::System::SystemScheduling>,re::Hash<re::DataArrayHandle<re::ecs2::SceneGroup>>,re::EqualTo<re::DataArrayHandle<re::ecs2::SceneGroup>>,true,false>::remove(this + 136, &v7);
}

uint64_t re::DynamicArray<re::DataArrayHandle<re::ecs2::SceneGroup>>::remove(uint64_t a1, _DWORD *a2)
{
  re::DynamicArray<re::DataArrayHandle<re::ecs2::SceneGroup>>::indexOf(a1, a2, v5);
  v3 = v5[0];
  if (v5[0] == 1)
  {
    re::DynamicArray<re::DataArrayHandle<re::ecs2::SceneGroup>>::removeAt(a1, v6);
  }

  return v3;
}

uint64_t re::DataArray<re::ecs2::System::SystemScheduling>::destroy(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (WORD1(a2) < v2)
  {
    v3 = (v2 - 1) == WORD1(a2) ? *(result + 48) : *(result + 44);
    if (a2 < v3)
    {
      v4 = (*(result + 32) + 16 * WORD1(a2));
      v5 = v4[1];
      v6 = *(v5 + 4 * a2);
      if (v6)
      {
        v7 = v6 == (HIDWORD(a2) & 0xFFFFFF);
      }

      else
      {
        v7 = 0;
      }

      if (v7)
      {
        v8 = *v4;
        if (v8)
        {
          *(v5 + 4 * a2) = 0;
          *(v8 + 40 * a2) = *(result + 52);
          *(result + 52) = a2;
          --*(result + 40);
        }
      }
    }
  }

  return result;
}

BOOL re::HashTable<re::DataArrayHandle<re::ecs2::SceneGroup>,re::DataArrayHandle<re::ecs2::System::SystemScheduling>,re::Hash<re::DataArrayHandle<re::ecs2::SceneGroup>>,re::EqualTo<re::DataArrayHandle<re::ecs2::SceneGroup>>,true,false>::remove(uint64_t a1, _DWORD *a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*a2 & 0xFFFFFFLL)) ^ ((0xBF58476D1CE4E5B9 * (*a2 & 0xFFFFFFLL)) >> 27));
  re::HashTable<re::DataArrayHandle<re::MeshModel>,unsigned long,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::findEntry<re::DataArrayHandle<re::MeshModel>>(a1, a2, v3 ^ (v3 >> 31), v5);
  return re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::removeInternal(a1, v5);
}

uint64_t re::DataArray<re::ecs2::System::SystemScheduling>::deinit(uint64_t result)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!*(result + 44))
  {
    return result;
  }

  v2 = result;
  re::DataArray<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData>::DataArrayIterator<re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData,re::ecs2::ClippingParameterDataStateTracking::PortalCrossingData&>::DataArrayIterator(&v22, result);
  v3 = v22;
  v11 = v22;
  v12 = DWORD2(v22);
  if (v22 != v2 || DWORD2(v22) != 0xFFFFFFFFLL)
  {
    v5 = WORD4(v22);
    v6 = WORD5(v22);
    while (1)
    {
      v7 = v3[2];
      if (v7 <= v6)
      {
        break;
      }

      re::DataArray<re::ecs2::System::SystemScheduling>::destroy(v2, ((*(*(v3[4] + 16 * v6 + 8) + 4 * v5) & 0xFFFFFF) << 32) | (v6 << 16) | v5);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v11);
      v3 = v11;
      v5 = v12;
      v6 = HIWORD(v12);
      if (v11 == v2 && v12 == 0xFFFFLL && HIWORD(v12) == 0xFFFFLL)
      {
        goto LABEL_11;
      }
    }

LABEL_25:
    v13 = 0;
    v26 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    v17 = 797;
    v18 = 2048;
    v19 = v6;
    v20 = 2048;
    v21 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_11:
  v8 = v2[2];
  v6 = v8 - 1;
  if (v8 == 1)
  {
    goto LABEL_20;
  }

  v7 = 16 * v8 - 16;
  do
  {
    if (v8 <= v6)
    {
      v11 = 0;
      v26 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v14 = 136315906;
      v15 = "operator[]";
      v16 = 1024;
      v17 = 789;
      v18 = 2048;
      v19 = v6;
      v20 = 2048;
      v21 = v8;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_24:
      v11 = 0;
      v26 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v14 = 136315906;
      v15 = "removeAt";
      v16 = 1024;
      v17 = 931;
      v18 = 2048;
      v19 = v6;
      v20 = 2048;
      v21 = v1;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_25;
    }

    v9 = (v2[4] + v7);
    (*(**v2 + 40))(*v2, *v9);
    (*(**v2 + 40))(*v2, v9[1]);
    v1 = v2[2];
    if (v1 <= v6)
    {
      goto LABEL_24;
    }

    v8 = v1 - 1;
    if (v1 - 1 > v6)
    {
      *(v2[4] + v7) = *(v2[4] + 16 * v1 - 16);
      v8 = v2[2] - 1;
    }

    v2[2] = v8;
    ++*(v2 + 6);
    v7 -= 16;
    --v6;
  }

  while (v6);
  v2[6] = 0xFFFFFFFF00000000;
  if (!v8)
  {
    v11 = 0;
    v26 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v2 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    v17 = 789;
    v18 = 2048;
    v19 = 0;
    v20 = 2048;
    v21 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_20:
    v2[6] = 0xFFFFFFFF00000000;
  }

  v10 = v2[4];
  (*(**v2 + 40))(*v2, *v10);
  (*(**v2 + 40))(*v2, v10[1]);
  result = re::DynamicArray<unsigned long>::deinit(v2);
  *(v2 + 11) = 0;
  return result;
}

uint64_t re::HashTable<re::DataArrayHandle<re::ecs2::SceneGroup>,re::DataArrayHandle<re::ecs2::System::SystemScheduling>,re::Hash<re::DataArrayHandle<re::ecs2::SceneGroup>>,re::EqualTo<re::DataArrayHandle<re::ecs2::SceneGroup>>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          *&v25[16] = *(a1 + 16);
          *(a1 + 16) = v12;
          v14 = *&v25[24];
          *&v25[24] = *(a1 + 24);
          v13 = *&v25[32];
          *(a1 + 24) = v14;
          ++*&v25[40];
          v15 = v13;
          if (v13)
          {
            v16 = 0;
            v17 = 0;
            do
            {
              if ((*(*&v25[16] + v16) & 0x80000000) != 0)
              {
                v18 = re::HashTable<re::DataArrayHandle<re::ecs2::SceneGroup>,re::DataArrayHandle<re::ecs2::System::SystemScheduling>,re::Hash<re::DataArrayHandle<re::ecs2::SceneGroup>>,re::EqualTo<re::DataArrayHandle<re::ecs2::SceneGroup>>,true,false>::allocEntry(a1, *(*&v25[16] + v16 + 24) % *(a1 + 24));
                *(v18 + 8) = *(*&v25[16] + v16 + 8);
                *(v18 + 16) = *(*&v25[16] + v16 + 16);
                v15 = *&v25[32];
              }

              ++v17;
              v16 += 32;
            }

            while (v17 < v15);
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

uint64_t re::DynamicArray<re::DataArrayHandle<re::ecs2::SceneGroup>>::indexOf@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 32);
  v4 = *(result + 16);
  if (v4)
  {
    v5 = 8 * v4;
    v6 = *(result + 32);
    while (*v6 != *a2 || v6[1] != HIWORD(*a2) || ((*(v6 + 1) ^ a2[1]) & 0xFFFFFF) != 0)
    {
      v6 += 4;
      v5 -= 8;
      if (!v5)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v6 = *(result + 32);
  }

  if (v6 == (v3 + 8 * v4))
  {
LABEL_11:
    v7 = 0;
  }

  else
  {
    *(a3 + 8) = (v6 - v3) >> 3;
    v7 = 1;
  }

  *a3 = v7;
  return result;
}

uint64_t re::DynamicArray<re::DataArrayHandle<re::ecs2::SceneGroup>>::removeAt(uint64_t result, unint64_t a2)
{
  v2 = *(result + 16);
  if (v2 <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = v2 - 1;
  if (v2 - 1 > a2)
  {
    *(*(result + 32) + 8 * a2) = *(*(result + 32) + 8 * v2 - 8);
    v3 = *(result + 16) - 1;
  }

  *(result + 16) = v3;
  ++*(result + 24);
  return result;
}

void *re::ecs2::allocInfo_ECSService(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_409, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_409))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B5EA0, "ECSService");
    __cxa_guard_release(&_MergedGlobals_409);
  }

  return &unk_1EE1B5EA0;
}

void re::ecs2::initInfo_ECSService(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xD62AE5A64EB00;
  v6[1] = "ECSService";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x1800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::ECSService>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::ECSService>(void)::{lambda(void *)#1}::__invoke;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_ECSService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

uint64_t re::ecs2::SceneComponentCollectionBase::remove(re::ecs2::SceneComponentCollectionBase *this, re::ecs2::Component *a2)
{
  v11 = a2;
  v3 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 51, &v11);
  if (v3 == -1)
  {
    return 0;
  }

  if (*(*(this + 52) + 16 * v3 + 8) >= *(this + 48))
  {
    return 0;
  }

  re::ecs2::SceneComponentCollectionBase::willRemoveAt(this, v4, &v11);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 51, &v11);
  if (v5 == -1)
  {
    return 0;
  }

  v6 = *(this + 52) + 16 * v5;
  v9 = *(v6 + 8);
  v8 = (v6 + 8);
  v7 = v9;
  if (v9 >= *(this + 48))
  {
    return 0;
  }

  re::DynamicArray<re::internal::AnimationCompositionChainBase *>::removeAt(this + 368, v7);
  re::ecs2::SceneComponentCollectionBase::didRemoveAt(this, *v8, &v11);
  return 1;
}

uint64_t re::ecs2::SceneComponentCollectionBase::willRemoveAt(uint64_t this, unint64_t a2, re::ecs2::Component **a3)
{
  if (*(*(this + 472) + 56))
  {
    v4 = this;
    re::ScratchDynamicArray<re::ecs2::Component *>::ScratchDynamicArray(v6, a3);
    v5 = *(*a3 + 2);
    if (v5 && (*(v5 + 304) & 1) != 0 && (*(v5 + 386) & 1) == 0)
    {
      (*(*v4 + 40))(v4, v6);
    }

    (*(*v4 + 48))(v4, v6);
    this = v6[0];
    if (v6[0])
    {
      if (v6[4])
      {
        return (*(*v6[0] + 40))();
      }
    }
  }

  return this;
}

void re::ecs2::SceneComponentCollectionBase::didRemoveAt(re::ecs2::SceneComponentCollectionBase *this, unint64_t a2, re::ecs2::Component **a3)
{
  re::HashBrown<re::ecs2::Component *,unsigned long,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,void,false>::remove(this + 408, a3);
  if (*(this + 48) > a2)
  {
    v5 = *(this + 52) + 16 * re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 51, (*(this + 50) + 8 * a2));
    v7 = *(v5 + 8);
    v6 = (v5 + 8);
    v8 = *(this + 48);
    if (v7 == v8)
    {
      *v6 = a2;
    }

    else
    {
      v9 = a2;
      if (v8 > a2)
      {
        do
        {
          re::HashBrown<re::ecs2::Component *,unsigned long,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,void,false>::addOrReplace(this + 51, (*(this + 50) + 8 * a2), &v9);
          a2 = v9 + 1;
          v9 = a2;
        }

        while (a2 < *(this + 48));
      }
    }
  }
}

void re::ecs2::SceneComponentCollectionBase::add(re::ecs2::SceneComponentCollectionBase *this, re::ecs2::Component *a2)
{
  v5 = a2;
  v3 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 51, &v5);
  if (v3 == -1)
  {
    v4 = *(this + 48);
    goto LABEL_5;
  }

  v4 = *(this + 48);
  if (*(*(this + 52) + 16 * v3 + 8) >= v4)
  {
LABEL_5:
    re::DynamicArray<re::TransitionCondition *>::add(this + 46, &v5);
    re::ecs2::SceneComponentCollectionBase::didInsert(this, v4, &v5);
  }
}

void re::ecs2::SceneComponentCollectionBase::didInsert(re::ecs2::SceneComponentCollectionBase *this, unint64_t a2, re::ecs2::Component **a3)
{
  for (v6[0] = a2; a2 < *(this + 48); v6[0] = a2)
  {
    re::HashBrown<re::ecs2::Component *,unsigned long,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,void,false>::addOrReplace(this + 51, (*(this + 50) + 8 * a2), v6);
    a2 = v6[0] + 1;
  }

  if (*(*(this + 59) + 56))
  {
    re::ScratchDynamicArray<re::ecs2::Component *>::ScratchDynamicArray(v6, a3);
    (*(*this + 24))(this, v6);
    v5 = *(*a3 + 2);
    if (v5 && (*(v5 + 304) & 1) != 0 && (*(v5 + 386) & 1) == 0)
    {
      (*(*this + 32))(this, v6);
    }

    if (v6[0])
    {
      if (v6[4])
      {
        (*(*v6[0] + 40))();
      }
    }
  }
}

re::ecs2::SceneComponentCollectionBase *re::ecs2::SceneComponentCollectionBase::SceneComponentCollectionBase(re::ecs2::SceneComponentCollectionBase *this, const re::ecs2::ComponentTypeBase *a2)
{
  *this = &unk_1F5D01068;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = 0;
  v3 = (this + 8);
  *(this + 8) = 0;
  *(this + 10) = 0;
  *(this + 22) = 0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 12) = 0;
  v4 = (this + 96);
  *(this + 30) = 0;
  *(this + 21) = 0;
  *(this + 44) = 0;
  *(this + 40) = 0;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 52) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 23) = 0;
  v5 = (this + 184);
  *(this + 32) = 0;
  *(this + 66) = 0;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 62) = 0;
  *(this + 34) = 0;
  *(this + 35) = 0;
  *(this + 74) = 0;
  *(this + 36) = 0;
  *(this + 43) = 0;
  *(this + 88) = 0;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 84) = 0;
  *(this + 45) = a2;
  *(this + 46) = 0;
  *(this + 98) = 0;
  *(this + 47) = 0;
  *(this + 48) = 0;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 25) = 0u;
  v6 = re::DynamicArray<re::EvaluationRegister>::setCapacity(v3, 0);
  ++*(this + 8);
  v7 = re::DynamicArray<re::EvaluationRegister>::setCapacity(v4, 0);
  ++*(this + 30);
  v8 = re::DynamicArray<re::EvaluationRegister>::setCapacity(v5, 0);
  ++*(this + 52);
  v9 = re::DynamicArray<re::EvaluationRegister>::setCapacity(this + 34, 0);
  ++*(this + 74);
  re::DynamicArray<float *>::setCapacity(this + 46, 0);
  ++*(this + 98);
  return this;
}

void re::ecs2::SceneComponentCollectionBase::~SceneComponentCollectionBase(re::ecs2::SceneComponentCollectionBase *this)
{
  *this = &unk_1F5D01068;
  v2 = (this + 8);
  if (*(this + 1))
  {
    re::DynamicArray<unsigned long>::deinit(this + 8);
  }

  if (*(this + 12))
  {
    re::DynamicArray<unsigned long>::deinit(this + 96);
  }

  if (*(this + 23))
  {
    re::DynamicArray<unsigned long>::deinit(this + 184);
  }

  if (*(this + 34))
  {
    re::DynamicArray<unsigned long>::deinit(this + 272);
  }

  re::DynamicArray<unsigned long>::deinit(this + 368);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 408);
  re::DynamicArray<unsigned long>::deinit(this + 368);
  re::Event<re::GeometricObjectBase>::~Event(this + 34);
  re::Event<re::GeometricObjectBase>::~Event(this + 23);
  re::Event<re::GeometricObjectBase>::~Event(this + 12);
  re::Event<re::GeometricObjectBase>::~Event(v2);
}

double re::HashBrown<re::ecs2::Component *,unsigned long,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,void,false>::addOrReplace(void *a1, void *a2, void *a3)
{
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
  if (v6 == -1)
  {

    *&result = re::HashBrown<re::ecs2::Component *,unsigned long,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,void,false>::internalAdd(a1, a2, a3).u64[0];
  }

  else
  {
    *(a1[1] + 16 * v6 + 8) = *a3;
  }

  return result;
}

uint64_t re::ScratchDynamicArray<re::ecs2::Component *>::ScratchDynamicArray(uint64_t a1, void *a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  re::DynamicArray<float *>::setCapacity(a1, 1uLL);
  ++*(a1 + 24);
  re::DynamicArray<re::TransitionCondition *>::add(a1, a2);
  return a1;
}

BOOL re::HashBrown<re::ecs2::Component *,unsigned long,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,void,false>::remove(uint64_t a1, void *a2)
{
  v3 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
  v4 = v3;
  if (v3 != -1)
  {
    v5 = (*a1 + (v3 & 0xFFFFFFFFFFFFFFF0));
    v6.i64[0] = -1;
    v6.i64[1] = -1;
    v7 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(*v5, v6), xmmword_1E304FAD0)))), 0x3830282018100800);
    if (v7)
    {
      v8 = -1;
    }

    else
    {
      v8 = 0x80;
    }

    v5->i8[v3 & 0xF] = v8;
    v9 = *(a1 + 16);
    v10 = *(*(a1 + 8) + 16 * v3);
    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) >> 27));
    *(a1 + 40) ^= (v11 >> 31) ^ v11;
    v6.i64[1] = *&v7 != 0;
    v12 = vaddq_s64(*(a1 + 24), v6);
    *(a1 + 24) = v12;
    if (v9 >= 0x11 && v12.i64[0] < v9 >> 2)
    {
      re::HashBrown<re::ecs2::Component *,unsigned long,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,void,false>::resize(a1, 0);
    }
  }

  return v4 != -1;
}

double re::ecs2::SceneComponentCollectionCallbacks::subscribe(re::ecs2::SceneComponentCollectionCallbacks *this, re::ecs2::SceneComponentCollectionBase *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(this + 3))
  {
    v5 = this;
    v6 = re::ecs2::SceneComponentCollectionCallbacks::didAddComponent;
    v7 = 0;
    v8 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollectionCallbacks>(re::ecs2::SceneComponentCollectionCallbacks *,REEventHandlerResult (re::ecs2::SceneComponentCollectionCallbacks::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    result = re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription(a2 + 2, &v5);
  }

  if (*(this + 4))
  {
    v5 = this;
    v6 = re::ecs2::SceneComponentCollectionCallbacks::willRemoveComponent;
    v7 = 0;
    v8 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollectionCallbacks>(re::ecs2::SceneComponentCollectionCallbacks *,REEventHandlerResult (re::ecs2::SceneComponentCollectionCallbacks::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    result = re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription(a2 + 68, &v5);
  }

  if (*(this + 5))
  {
    v5 = this;
    v6 = re::ecs2::SceneComponentCollectionCallbacks::doActivateComponent;
    v7 = 0;
    v8 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollectionCallbacks>(re::ecs2::SceneComponentCollectionCallbacks *,REEventHandlerResult (re::ecs2::SceneComponentCollectionCallbacks::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    result = re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription(a2 + 24, &v5);
  }

  if (*(this + 6))
  {
    v5 = this;
    v6 = re::ecs2::SceneComponentCollectionCallbacks::doDeactivateComponent;
    v7 = 0;
    v8 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollectionCallbacks>(re::ecs2::SceneComponentCollectionCallbacks *,REEventHandlerResult (re::ecs2::SceneComponentCollectionCallbacks::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    return re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription(a2 + 46, &v5);
  }

  return result;
}

void re::ecs2::SceneComponentCollectionCallbacks::unsubscribe(re::ecs2::SceneComponentCollectionCallbacks *this, re::ecs2::SceneComponentCollectionBase *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(this + 3))
  {
    *&v4 = this;
    *(&v4 + 1) = re::ecs2::SceneComponentCollectionCallbacks::didAddComponent;
    v5 = 0;
    v6 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollectionCallbacks>(re::ecs2::SceneComponentCollectionCallbacks *,REEventHandlerResult (re::ecs2::SceneComponentCollectionCallbacks::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(a2 + 8, &v4);
  }

  if (*(this + 4))
  {
    *&v4 = this;
    *(&v4 + 1) = re::ecs2::SceneComponentCollectionCallbacks::willRemoveComponent;
    v5 = 0;
    v6 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollectionCallbacks>(re::ecs2::SceneComponentCollectionCallbacks *,REEventHandlerResult (re::ecs2::SceneComponentCollectionCallbacks::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(a2 + 272, &v4);
  }

  if (*(this + 5))
  {
    *&v4 = this;
    *(&v4 + 1) = re::ecs2::SceneComponentCollectionCallbacks::doActivateComponent;
    v5 = 0;
    v6 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollectionCallbacks>(re::ecs2::SceneComponentCollectionCallbacks *,REEventHandlerResult (re::ecs2::SceneComponentCollectionCallbacks::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(a2 + 96, &v4);
  }

  if (*(this + 6))
  {
    *&v4 = this;
    *(&v4 + 1) = re::ecs2::SceneComponentCollectionCallbacks::doDeactivateComponent;
    v5 = 0;
    v6 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollectionCallbacks>(re::ecs2::SceneComponentCollectionCallbacks *,REEventHandlerResult (re::ecs2::SceneComponentCollectionCallbacks::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(a2 + 184, &v4);
  }
}

void re::ecs2::SceneComponentCollectionBase::didAdd(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::raise(a1 + 8, a1);
  }
}

void re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::raise(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 80);
  *(a1 + 80) = v3 + 1;
  if (*(a1 + 16))
  {
    v5 = 0;
    do
    {
      if ((*(*(a1 + 32) + 32 * v5 + 24))(a2) == 1)
      {
        re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::removeStableAt(a1, v5);
      }

      else
      {
        ++v5;
      }
    }

    while (v5 < *(a1 + 16));
    v3 = *(a1 + 80) - 1;
  }

  *(a1 + 80) = v3;
  if (!v3)
  {
    re::Event<re::GeometricObjectBase>::doDeferredActions(a1);
  }
}

void re::ecs2::SceneComponentCollectionBase::doActivate(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::raise(a1 + 96, a1);
  }
}

void re::ecs2::SceneComponentCollectionBase::doDeactivate(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::raise(a1 + 184, a1);
  }
}

re::ecs2::ComponentBucketsBase *re::ecs2::SceneComponentCollectionBase::willRemove(re::ecs2::ComponentBucketsBase *result, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v3 = result;
    re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::raise(result + 272, result);
    result = (*(*v3 + 64))(v3);
    v4 = *(a2 + 16);
    if (v4)
    {
      v5 = result;
      v6 = *(a2 + 32);
      v7 = 8 * v4;
      do
      {
        v8 = *v6++;
        result = re::ecs2::ComponentBucketsBase::removeComponentFromAllBuckets(v5, v8);
        v7 -= 8;
      }

      while (v7);
    }
  }

  return result;
}

uint64_t re::ecs2::SceneComponentCollectionCallbacks::didAddComponent(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a1 + 24);
  if (*(a1 + 16) == 1)
  {
    if (a4)
    {
      v7 = 8 * a4;
      do
      {
        v8 = *a3++;
        (v5)(v8, *(a1 + 56));
        v7 -= 8;
      }

      while (v7);
    }
  }

  else if (a4)
  {
    v9 = 8 * a4;
    do
    {
      v10 = *a3++;
      v5(v10);
      v9 -= 8;
    }

    while (v9);
  }

  return 0;
}

uint64_t re::ecs2::SceneComponentCollectionCallbacks::willRemoveComponent(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  if (*(a1 + 16) == 1)
  {
    if (a4)
    {
      v7 = 8 * a4;
      do
      {
        v8 = *a3++;
        (v5)(v8, *(a1 + 56));
        v7 -= 8;
      }

      while (v7);
    }
  }

  else if (a4)
  {
    v9 = 8 * a4;
    do
    {
      v10 = *a3++;
      v5(v10);
      v9 -= 8;
    }

    while (v9);
  }

  return 0;
}

uint64_t re::ecs2::SceneComponentCollectionCallbacks::doActivateComponent(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a1 + 40);
  if (*(a1 + 16) == 1)
  {
    if (a4)
    {
      v7 = 8 * a4;
      do
      {
        v8 = *a3++;
        (v5)(v8, *(a1 + 56));
        v7 -= 8;
      }

      while (v7);
    }
  }

  else if (a4)
  {
    v9 = 8 * a4;
    do
    {
      v10 = *a3++;
      v5(v10);
      v9 -= 8;
    }

    while (v9);
  }

  return 0;
}

uint64_t re::ecs2::SceneComponentCollectionCallbacks::doDeactivateComponent(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a1 + 48);
  if (*(a1 + 16) == 1)
  {
    if (a4)
    {
      v7 = 8 * a4;
      do
      {
        v8 = *a3++;
        (v5)(v8, *(a1 + 56));
        v7 -= 8;
      }

      while (v7);
    }
  }

  else if (a4)
  {
    v9 = 8 * a4;
    do
    {
      v10 = *a3++;
      v5(v10);
      v9 -= 8;
    }

    while (v9);
  }

  return 0;
}

uint64_t re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollectionCallbacks>(re::ecs2::SceneComponentCollectionCallbacks *,REEventHandlerResult (re::ecs2::SceneComponentCollectionCallbacks::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
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

int64x2_t re::HashBrown<re::ecs2::Component *,unsigned long,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,void,false>::internalAdd(uint64_t a1, void *a2, void *a3)
{
  if (!*(a1 + 56))
  {
  }

  v6 = *(a1 + 32);
  if (!v6 || (v7 = *(a1 + 16), v7 > 8 * v6))
  {
    re::HashBrown<re::ecs2::Component *,unsigned long,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,void,false>::resize(a1, 1);
    v7 = *(a1 + 16);
  }

  v8 = 0xBF58476D1CE4E5B9;
  v9 = 0x94D049BB133111EBLL;
  v10 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v11 = (0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) ^ ((0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) >> 31);
  v12 = v7 >> 4;
  v13 = *a1;
  v14 = v11 % v12;
  while (1)
  {
    v15 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v13 + 16 * v14)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    if (v15 < 0x40)
    {
      break;
    }

    if (v14 + 1 == v12)
    {
      v14 = 0;
    }

    else
    {
      ++v14;
    }

    if (v14 == v11 % v12)
    {
      re::internal::assertLog(4, a2, -1.79399301e-307, 4.74803907e-38, "assertion failure: '%s' (%s:line %i) Unexpected full hash-table", "blockIndex != h1(key) % blockCount()", "internalAdd", 658);
      _os_crash();
      __break(1u);
      break;
    }
  }

  v16 = v13 + 16 * v14;
  v17 = *(v16 + v15);
  *(v16 + v15) = v11 & 0x7F;
  v18 = 16 * (v15 + 16 * v14);
  *(*(a1 + 8) + v18) = *a2;
  v19 = *(a1 + 8);
  *(v19 + v18 + 8) = *a3;
  if (v17 == 255)
  {
    v20 = -1;
  }

  else
  {
    v20 = 0;
  }

  v21.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v21.i64[1] = v20;
  result = vaddq_s64(*(a1 + 24), v21);
  *(a1 + 24) = result;
  v23 = *(v19 + v18) ^ (*(v19 + v18) >> 30);
  v24 = ((v23 * v8) ^ ((v23 * v8) >> 27)) * v9;
  *(a1 + 40) ^= (v24 >> 31) ^ v24;
  return result;
}

void re::HashBrown<re::ecs2::Component *,unsigned long,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,void,false>::resize(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24) + a2;
  v4 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v4 > v2)
  {
    v5 = 3 * v2;
    v6 = v5 << 6;
    v7 = (v5 >> 1) & 0x1FFFFFFFFFFFFFFLL;
    if (v4 > v6 >> 7)
    {
      v7 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
    }

    v3 = (v7 << 7) / 0x97;
  }

  re::HashBrown<re::ecs2::Component *,unsigned long,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,void,false>::doResize(a1, v3);
}

void re::HashBrown<re::ecs2::Component *,unsigned long,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,void,false>::doResize(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  memset(v41, 0, sizeof(v41));
  v5 = re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init(v41, v4, a2);
  v39[0] = a1;
  v6 = *(a1 + 16);
  if (v6 >= 0x10)
  {
    v7 = 0;
    v8 = *a1;
    v9 = v6 >> 4;
    while (1)
    {
      v10 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v8), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v39[1] = v10 ^ 0xFFFFLL;
      if (v10 != 0xFFFFLL)
      {
        break;
      }

      v7 -= 16;
      ++v8;
      if (!--v9)
      {
        goto LABEL_24;
      }
    }

    v11 = __clz(__rbit64(v10 ^ 0xFFFFLL));
    v12 = v11 - v7;
    v40 = v11 - v7;
    if (v11 + 1 != v7)
    {
      do
      {
        v13 = *(v39[0] + 8);
        if (*(&v41[3] + 1))
        {
          v14 = *&v41[2];
        }

        else
        {
          *&v41[1] = 16;
          *&v32 = -1;
          *(&v32 + 1) = -1;
          **&v41[0] = v32;
          v14 = *&v41[1];
          *(&v41[0] + 1) = *&v41[0] + 16;
          *(&v41[1] + 1) = 0;
          v41[2] = *&v41[1];
          *&v41[3] = 0;
        }

        v15 = xmmword_1E304FAD0;
        if (!v14 || (v16 = *&v41[1], *&v41[1] > (8 * v14)))
        {
          re::HashBrown<re::ecs2::Component *,unsigned long,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,void,false>::resize(v41, 1);
          v15 = xmmword_1E304FAD0;
          v16 = *&v41[1];
        }

        v17 = (v13 + 16 * v12);
        v18 = 0xBF58476D1CE4E5B9 * (*v17 ^ (*v17 >> 30));
        v19 = (0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) ^ ((0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) >> 31);
        v20 = v16 >> 4;
        v21 = v19 % (v16 >> 4);
        v22 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*&v41[0] + 16 * v21)), v15)))), 0x3830282018100800)));
        if (v22 >= 0x40)
        {
          do
          {
            if (v21 + 1 == v20)
            {
              v21 = 0;
            }

            else
            {
              ++v21;
            }

            v22 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*&v41[0] + 16 * v21)), v15)))), 0x3830282018100800)));
          }

          while (v22 > 0x3F);
        }

        v23 = *&v41[0] + 16 * v21;
        v24 = *(v23 + v22);
        *(v23 + v22) = v19 & 0x7F;
        v25 = 16 * (v22 + 16 * v21);
        v27 = *v17;
        v26 = v17[1];
        *(*(&v41[0] + 1) + v25) = v27;
        v28 = (*(&v41[0] + 1) + v25);
        *(*(&v41[0] + 1) + v25 + 8) = v26;
        if (v24 == 255)
        {
          v29 = -1;
        }

        else
        {
          v29 = 0;
        }

        v30.i64[0] = vdupq_n_s64(1uLL).u64[0];
        v30.i64[1] = v29;
        *(&v41[1] + 8) = vaddq_s64(*(&v41[1] + 8), v30);
        v31 = 0xBF58476D1CE4E5B9 * (*v28 ^ (*v28 >> 30));
        *(&v41[2] + 1) ^= ((0x94D049BB133111EBLL * (v31 ^ (v31 >> 27))) >> 31) ^ (0x94D049BB133111EBLL * (v31 ^ (v31 >> 27)));
        v5 = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v39);
        v12 = v40;
      }

      while (v40 != -1);
      v6 = *(a1 + 16);
    }
  }

LABEL_24:
  v33 = *(&v41[3] + 1);
  *(&v41[3] + 1) = *(a1 + 56);
  v34 = v41[0];
  v35 = v41[1];
  v41[0] = *a1;
  *&v41[1] = v6;
  v36 = v41[2];
  v37 = *(a1 + 40);
  *(a1 + 48) = *&v41[3];
  *(a1 + 56) = v33;
  *(&v41[2] + 8) = v37;
  v38 = *(a1 + 24);
  *a1 = v34;
  *(a1 + 16) = v35;
  *(a1 + 32) = v36;
  *(&v41[1] + 8) = v38;
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v41);
}

void re::ecs2::AnchoringComponent::adjustedIntroReleaseInfo(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) == 12)
  {
    re::getRequiredDeploymentTargetsForRelease(0xF, &v14);
    if (v15)
    {
      v3 = v17;
    }

    else
    {
      v3 = v16;
    }

    snprintf(__str, 0x100uLL, "%s %s %s", "AnchoringComponent uses an Accessory target which is available for", v3, "and later.");
    v4 = v14;
    if (v14 && (v15 & 1) != 0)
    {
      v4 = (*(*v14 + 40))();
    }

    v15 = 0;
    LODWORD(v14) = 15;
    v9 = 0;
    v10 = &str_67;
    v5 = strlen(__str);
    v11[0] = 1;
    v12 = v9;
    v13 = v10;
    v9 = 0;
    v10 = &str_67;
    v6 = re::Optional<re::StringID>::operator=(&v15, v11);
    if (v11[0] == 1)
    {
      if (v12)
      {
        if (v12)
        {
        }
      }

      v12 = 0;
      v13 = &str_67;
    }

    if (v9)
    {
      if (v9)
      {
      }
    }

    *a2 = 1;
    *(a2 + 8) = v14;
    v7 = v15;
    *(a2 + 16) = v15;
    if (v7 == 1)
    {
      v8 = v18;
      *(a2 + 24) = v17;
      *(a2 + 32) = v8;
    }
  }

  else
  {
    *a2 = 0;
  }
}

void re::ecs2::introspect_AnchoringAlignment(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B5F38, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1B5F40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B5F40))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1B60C0, "AnchoringAlignment", 1, 1, 1, 1);
      qword_1EE1B60C0 = &unk_1F5D0C658;
      qword_1EE1B6100 = &re::ecs2::introspect_AnchoringAlignment(BOOL)::enumTable;
      dword_1EE1B60D0 = 9;
      __cxa_guard_release(&qword_1EE1B5F40);
    }

    if (_MergedGlobals_410)
    {
      break;
    }

    _MergedGlobals_410 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1B60C0, a2);
    v35 = 0x21BB132D812DFEECLL;
    v36 = "AnchoringAlignment";
    v39 = 0x31CD534126;
    v40 = "uint8_t";
    v4 = v38[0];
    v5 = v38[1];
    if (v39)
    {
      if (v39)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1B6100;
      v39 = v4;
      v40 = v5;
      re::TypeBuilder::beginEnumType(v38, &v35, 1, 1, &v39);
      v7 = *v6;
      if (v7)
      {
        for (i = 0; i < v7; ++i)
        {
          v9 = *(*(v6 + 1) + 8 * i);
          if (*v9 == 1)
          {
            v10 = *(v9 + 16);
            if (v10)
            {
              v11 = *v10;
              if (*v10)
              {
                v12 = v10[1];
                if (v12)
                {
                  v13 = (v10 + 2);
                  do
                  {
                    v11 = 31 * v11 + v12;
                    v14 = *v13++;
                    v12 = v14;
                  }

                  while (v14);
                }
              }
            }

            else
            {
              v11 = 0;
            }

            v15 = *(v9 + 8);
            *&v37.var0 = 2 * v11;
            v37.var1 = v10;
            re::TypeBuilder::addEnumConstant(v38, v15, &v37);
            if (*&v37.var0)
            {
              if (*&v37.var0)
              {
              }
            }

            v7 = *v6;
          }
        }

        if (v7)
        {
          for (j = 0; j < v7; ++j)
          {
            v18 = *(*(v6 + 1) + 8 * j);
            if (*v18 == 2)
            {
              v19 = *(v18 + 16);
              if (v19)
              {
                v20 = *v19;
                if (*v19)
                {
                  v21 = v19[1];
                  if (v21)
                  {
                    v22 = (v19 + 2);
                    do
                    {
                      v20 = 31 * v20 + v21;
                      v23 = *v22++;
                      v21 = v23;
                    }

                    while (v23);
                  }
                }
              }

              else
              {
                v20 = 0;
              }

              v24 = *(v18 + 8);
              *&v37.var0 = 2 * v20;
              v37.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v38, v24, &v37);
              if (*&v37.var0)
              {
                if (*&v37.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v38, v26);
      xmmword_1EE1B60E0 = v37;
      if (v35)
      {
        if (v35)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v36);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE1B5F38);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 1;
      *(v30 + 2) = "Horizontal";
      qword_1EE1B5FF0 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 2;
      *(v32 + 2) = "Vertical";
      qword_1EE1B5FF8 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 8) = 255;
      *(v34 + 16) = "Any";
      qword_1EE1B6000 = v34;
      __cxa_guard_release(&qword_1EE1B5F38);
    }
  }
}

void re::ecs2::introspect_AnchoringClassification(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B5F48, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1B5F50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B5F50))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1B6108, "AnchoringClassification", 8, 8, 1, 1);
      qword_1EE1B6108 = &unk_1F5D0C658;
      qword_1EE1B6148 = &re::ecs2::introspect_AnchoringClassification(BOOL)::enumTable;
      dword_1EE1B6118 = 9;
      __cxa_guard_release(&qword_1EE1B5F50);
    }

    if (byte_1EE1B5F31)
    {
      break;
    }

    byte_1EE1B5F31 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1B6108, a2);
    v41 = 0xBAF40396AEFAB466;
    v42 = "AnchoringClassification";
    v45 = 0x607DD11CB1ALL;
    v46 = "uint64_t";
    v4 = v44[0];
    v5 = v44[1];
    if (v45)
    {
      if (v45)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1B6148;
      v45 = v4;
      v46 = v5;
      re::TypeBuilder::beginEnumType(v44, &v41, 1, 1, &v45);
      v7 = *v6;
      if (v7)
      {
        for (i = 0; i < v7; ++i)
        {
          v9 = *(*(v6 + 1) + 8 * i);
          if (*v9 == 1)
          {
            v10 = *(v9 + 16);
            if (v10)
            {
              v11 = *v10;
              if (*v10)
              {
                v12 = v10[1];
                if (v12)
                {
                  v13 = (v10 + 2);
                  do
                  {
                    v11 = 31 * v11 + v12;
                    v14 = *v13++;
                    v12 = v14;
                  }

                  while (v14);
                }
              }
            }

            else
            {
              v11 = 0;
            }

            v15 = *(v9 + 8);
            *&v43.var0 = 2 * v11;
            v43.var1 = v10;
            re::TypeBuilder::addEnumConstant(v44, v15, &v43);
            if (*&v43.var0)
            {
              if (*&v43.var0)
              {
              }
            }

            v7 = *v6;
          }
        }

        if (v7)
        {
          for (j = 0; j < v7; ++j)
          {
            v18 = *(*(v6 + 1) + 8 * j);
            if (*v18 == 2)
            {
              v19 = *(v18 + 16);
              if (v19)
              {
                v20 = *v19;
                if (*v19)
                {
                  v21 = v19[1];
                  if (v21)
                  {
                    v22 = (v19 + 2);
                    do
                    {
                      v20 = 31 * v20 + v21;
                      v23 = *v22++;
                      v21 = v23;
                    }

                    while (v23);
                  }
                }
              }

              else
              {
                v20 = 0;
              }

              v24 = *(v18 + 8);
              *&v43.var0 = 2 * v20;
              v43.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v44, v24, &v43);
              if (*&v43.var0)
              {
                if (*&v43.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v44, v26);
      xmmword_1EE1B6128 = v43;
      if (v41)
      {
        if (v41)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v42);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE1B5F48);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 1;
      *(v30 + 2) = "Wall";
      qword_1EE1B6060 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 2;
      *(v32 + 2) = "Floor";
      qword_1EE1B6068 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 1) = 4;
      *(v34 + 2) = "Ceiling";
      qword_1EE1B6070 = v34;
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 1) = 8;
      *(v36 + 2) = "Table";
      qword_1EE1B6078 = v36;
      v37 = re::introspectionAllocator(v36);
      v38 = (*(*v37 + 32))(v37, 24, 8);
      *v38 = 1;
      *(v38 + 1) = 16;
      *(v38 + 2) = "Seat";
      qword_1EE1B6080 = v38;
      v39 = re::introspectionAllocator(v38);
      v40 = (*(*v39 + 32))(v39, 24, 8);
      *v40 = 1;
      *(v40 + 8) = -1;
      *(v40 + 16) = "Any";
      qword_1EE1B6088 = v40;
      __cxa_guard_release(&qword_1EE1B5F48);
    }
  }
}

void re::ecs2::introspect_AnchoringAccessoryType(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B5F58, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1B5F60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B5F60))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1B6150, "AnchoringAccessoryType", 4, 4, 1, 1);
      qword_1EE1B6150 = &unk_1F5D0C658;
      qword_1EE1B6190 = &re::ecs2::introspect_AnchoringAccessoryType(BOOL)::enumTable;
      dword_1EE1B6160 = 9;
      __cxa_guard_release(&qword_1EE1B5F60);
    }

    if (byte_1EE1B5F32)
    {
      break;
    }

    byte_1EE1B5F32 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1B6150, a2);
    v35 = 0xD3FEAFD0AE5BAAFELL;
    v36 = "AnchoringAccessoryType";
    v39 = 0x607DD0F01DCLL;
    v40 = "uint32_t";
    v4 = v38[0];
    v5 = v38[1];
    if (v39)
    {
      if (v39)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1B6190;
      v39 = v4;
      v40 = v5;
      re::TypeBuilder::beginEnumType(v38, &v35, 1, 1, &v39);
      v7 = *v6;
      if (v7)
      {
        for (i = 0; i < v7; ++i)
        {
          v9 = *(*(v6 + 1) + 8 * i);
          if (*v9 == 1)
          {
            v10 = *(v9 + 16);
            if (v10)
            {
              v11 = *v10;
              if (*v10)
              {
                v12 = v10[1];
                if (v12)
                {
                  v13 = (v10 + 2);
                  do
                  {
                    v11 = 31 * v11 + v12;
                    v14 = *v13++;
                    v12 = v14;
                  }

                  while (v14);
                }
              }
            }

            else
            {
              v11 = 0;
            }

            v15 = *(v9 + 8);
            *&v37.var0 = 2 * v11;
            v37.var1 = v10;
            re::TypeBuilder::addEnumConstant(v38, v15, &v37);
            if (*&v37.var0)
            {
              if (*&v37.var0)
              {
              }
            }

            v7 = *v6;
          }
        }

        if (v7)
        {
          for (j = 0; j < v7; ++j)
          {
            v18 = *(*(v6 + 1) + 8 * j);
            if (*v18 == 2)
            {
              v19 = *(v18 + 16);
              if (v19)
              {
                v20 = *v19;
                if (*v19)
                {
                  v21 = v19[1];
                  if (v21)
                  {
                    v22 = (v19 + 2);
                    do
                    {
                      v20 = 31 * v20 + v21;
                      v23 = *v22++;
                      v21 = v23;
                    }

                    while (v23);
                  }
                }
              }

              else
              {
                v20 = 0;
              }

              v24 = *(v18 + 8);
              *&v37.var0 = 2 * v20;
              v37.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v38, v24, &v37);
              if (*&v37.var0)
              {
                if (*&v37.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v38, v26);
      xmmword_1EE1B6170 = v37;
      if (v35)
      {
        if (v35)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v36);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE1B5F58);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 1;
      *(v30 + 2) = "Spatial_L";
      qword_1EE1B6008 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 2;
      *(v32 + 2) = "Spatial_R";
      qword_1EE1B6010 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 8) = 255;
      *(v34 + 16) = "Unsupported";
      qword_1EE1B6018 = v34;
      __cxa_guard_release(&qword_1EE1B5F58);
    }
  }
}

void re::ecs2::introspect_AnchoringDescriptorType(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B5F68, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1B5F70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B5F70))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1B6198, "AnchoringDescriptorType", 4, 4, 1, 1);
      qword_1EE1B6198 = &unk_1F5D0C658;
      qword_1EE1B61D8 = &re::ecs2::introspect_AnchoringDescriptorType(BOOL)::enumTable;
      dword_1EE1B61A8 = 9;
      __cxa_guard_release(&qword_1EE1B5F70);
    }

    if (byte_1EE1B5F33)
    {
      break;
    }

    byte_1EE1B5F33 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1B6198, a2);
    v59 = 0xD3F8AB5ECB755B2CLL;
    v60 = "AnchoringDescriptorType";
    v63 = 208862;
    v64 = "int";
    v4 = v62[0];
    v5 = v62[1];
    if (v63)
    {
      if (v63)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1B61D8;
      v63 = v4;
      v64 = v5;
      re::TypeBuilder::beginEnumType(v62, &v59, 1, 1, &v63);
      v7 = *v6;
      if (v7)
      {
        for (i = 0; i < v7; ++i)
        {
          v9 = *(*(v6 + 1) + 8 * i);
          if (*v9 == 1)
          {
            v10 = *(v9 + 16);
            if (v10)
            {
              v11 = *v10;
              if (*v10)
              {
                v12 = v10[1];
                if (v12)
                {
                  v13 = (v10 + 2);
                  do
                  {
                    v11 = 31 * v11 + v12;
                    v14 = *v13++;
                    v12 = v14;
                  }

                  while (v14);
                }
              }
            }

            else
            {
              v11 = 0;
            }

            v15 = *(v9 + 8);
            *&v61.var0 = 2 * v11;
            v61.var1 = v10;
            re::TypeBuilder::addEnumConstant(v62, v15, &v61);
            if (*&v61.var0)
            {
              if (*&v61.var0)
              {
              }
            }

            v7 = *v6;
          }
        }

        if (v7)
        {
          for (j = 0; j < v7; ++j)
          {
            v18 = *(*(v6 + 1) + 8 * j);
            if (*v18 == 2)
            {
              v19 = *(v18 + 16);
              if (v19)
              {
                v20 = *v19;
                if (*v19)
                {
                  v21 = v19[1];
                  if (v21)
                  {
                    v22 = (v19 + 2);
                    do
                    {
                      v20 = 31 * v20 + v21;
                      v23 = *v22++;
                      v21 = v23;
                    }

                    while (v23);
                  }
                }
              }

              else
              {
                v20 = 0;
              }

              v24 = *(v18 + 8);
              *&v61.var0 = 2 * v20;
              v61.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v62, v24, &v61);
              if (*&v61.var0)
              {
                if (*&v61.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v62, v26);
      xmmword_1EE1B61B8 = v61;
      if (v59)
      {
        if (v59)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v60);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE1B5F68);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Camera";
      qword_1EE1B6300 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "World";
      qword_1EE1B6308 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 1) = 2;
      *(v34 + 2) = "Anchor";
      qword_1EE1B6310 = v34;
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 1) = 3;
      *(v36 + 2) = "Plane";
      qword_1EE1B6318 = v36;
      v37 = re::introspectionAllocator(v36);
      v38 = (*(*v37 + 32))(v37, 24, 8);
      *v38 = 1;
      *(v38 + 1) = 4;
      *(v38 + 2) = "Image";
      qword_1EE1B6320 = v38;
      v39 = re::introspectionAllocator(v38);
      v40 = (*(*v39 + 32))(v39, 24, 8);
      *v40 = 1;
      *(v40 + 1) = 5;
      *(v40 + 2) = "Object";
      qword_1EE1B6328 = v40;
      v41 = re::introspectionAllocator(v40);
      v42 = (*(*v41 + 32))(v41, 24, 8);
      *v42 = 1;
      *(v42 + 1) = 6;
      *(v42 + 2) = "Face";
      qword_1EE1B6330 = v42;
      v43 = re::introspectionAllocator(v42);
      v44 = (*(*v43 + 32))(v43, 24, 8);
      *v44 = 1;
      *(v44 + 1) = 7;
      *(v44 + 2) = "Body";
      qword_1EE1B6338 = v44;
      v45 = re::introspectionAllocator(v44);
      v46 = (*(*v45 + 32))(v45, 24, 8);
      *v46 = 1;
      *(v46 + 1) = 8;
      *(v46 + 2) = "Hand";
      qword_1EE1B6340 = v46;
      v47 = re::introspectionAllocator(v46);
      v48 = (*(*v47 + 32))(v47, 24, 8);
      *v48 = 1;
      *(v48 + 1) = 9;
      *(v48 + 2) = "Reserved1";
      qword_1EE1B6348 = v48;
      v49 = re::introspectionAllocator(v48);
      v50 = (*(*v49 + 32))(v49, 24, 8);
      *v50 = 1;
      *(v50 + 1) = 10;
      *(v50 + 2) = "Head";
      qword_1EE1B6350 = v50;
      v51 = re::introspectionAllocator(v50);
      v52 = (*(*v51 + 32))(v51, 24, 8);
      *v52 = 1;
      *(v52 + 1) = 11;
      *(v52 + 2) = "Deprecated0";
      qword_1EE1B6358 = v52;
      v53 = re::introspectionAllocator(v52);
      v54 = (*(*v53 + 32))(v53, 24, 8);
      *v54 = 1;
      *(v54 + 1) = 12;
      *(v54 + 2) = "Accessory";
      qword_1EE1B6360 = v54;
      v55 = re::introspectionAllocator(v54);
      v56 = (*(*v55 + 32))(v55, 24, 8);
      *v56 = 2;
      *(v56 + 1) = 8;
      *(v56 + 2) = "Reserved0";
      qword_1EE1B6368 = v56;
      v57 = re::introspectionAllocator(v56);
      v58 = (*(*v57 + 32))(v57, 24, 8);
      *v58 = 2;
      *(v58 + 8) = 11;
      *(v58 + 16) = "Controller";
      qword_1EE1B6370 = v58;
      __cxa_guard_release(&qword_1EE1B5F68);
    }
  }
}

void *re::ecs2::introspect_AnchoringOrientation(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    if (v9)
    {
      v10 = re::introspectionAllocator(v9);
      v11 = (*(*v10 + 32))(v10, 24, 8);
      *v11 = 1;
      *(v11 + 1) = 1;
      *(v11 + 2) = "Right";
      re::ecs2::introspect_AnchoringOrientation(BOOL)::enumAttributes = v11;
      v12 = re::introspectionAllocator(v11);
      v13 = (*(*v12 + 32))(v12, 24, 8);
      *v13 = 1;
      *(v13 + 1) = 2;
      *(v13 + 2) = "Left";
      qword_1EE1C58E0 = v13;
      v14 = re::introspectionAllocator(v13);
      v15 = (*(*v14 + 32))(v14, 24, 8);
      *v15 = 2;
      *(v15 + 1) = 1;
      *(v15 + 2) = "Orientation0";
      qword_1EE1C58E8 = v15;
      v16 = re::introspectionAllocator(v15);
      v17 = (*(*v16 + 32))(v16, 24, 8);
      *v17 = 2;
      *(v17 + 1) = 2;
      *(v17 + 2) = "Orientation1";
      qword_1EE1C58F0 = v17;
      v18 = re::introspectionAllocator(v17);
      v19 = (*(*v18 + 32))(v18, 24, 8);
      *v19 = 1;
      *(v19 + 8) = 255;
      *(v19 + 16) = "Any";
      qword_1EE1C58F8 = v19;
    }
  }

  {
    v20 = re::IntrospectionBasic::IntrospectionBasic(&re::ecs2::introspect_AnchoringOrientation(BOOL)::info, "AnchoringOrientation", 1, 1, 1, 1);
    *v20 = &unk_1F5D0C658;
    *(v20 + 8) = &re::ecs2::introspect_AnchoringOrientation(BOOL)::enumTable;
    *(v20 + 4) = 9;
  }

  if (v2)
  {
    if (re::ecs2::introspect_AnchoringOrientation(BOOL)::isInitialized)
    {
      return &re::ecs2::introspect_AnchoringOrientation(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v22);
    v3 = re::ecs2::introspect_AnchoringOrientation(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v22);
    if (v3)
    {
      return &re::ecs2::introspect_AnchoringOrientation(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::ecs2::introspect_AnchoringOrientation(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::ecs2::introspect_AnchoringOrientation(BOOL)::info;
    }
  }

  re::ecs2::introspect_AnchoringOrientation(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::ecs2::introspect_AnchoringOrientation(BOOL)::info, a2);
  v21[0] = 0x9F95A6D022127546;
  v21[1] = "AnchoringOrientation";
  xmmword_1EE1C58B0 = v22;
  if (v21[0])
  {
    if (v21[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::ecs2::introspect_AnchoringOrientation(BOOL)::info;
}

void re::ecs2::introspect_AnchoringLocation(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B5F78, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1B5F80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B5F80))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1B61E0, "AnchoringLocation", 4, 4, 1, 1);
      qword_1EE1B61E0 = &unk_1F5D0C658;
      qword_1EE1B6220 = &re::ecs2::introspect_AnchoringLocation(BOOL)::enumTable;
      dword_1EE1B61F0 = 9;
      __cxa_guard_release(&qword_1EE1B5F80);
    }

    if (byte_1EE1B5F34)
    {
      break;
    }

    byte_1EE1B5F34 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1B61E0, a2);
    v95 = 0x119AAE97CF798784;
    v96 = "AnchoringLocation";
    v99 = 208862;
    v100 = "int";
    v4 = v98[0];
    v5 = v98[1];
    if (v99)
    {
      if (v99)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1B6220;
      v99 = v4;
      v100 = v5;
      re::TypeBuilder::beginEnumType(v98, &v95, 1, 1, &v99);
      v7 = *v6;
      if (v7)
      {
        for (i = 0; i < v7; ++i)
        {
          v9 = *(*(v6 + 1) + 8 * i);
          if (*v9 == 1)
          {
            v10 = *(v9 + 16);
            if (v10)
            {
              v11 = *v10;
              if (*v10)
              {
                v12 = v10[1];
                if (v12)
                {
                  v13 = (v10 + 2);
                  do
                  {
                    v11 = 31 * v11 + v12;
                    v14 = *v13++;
                    v12 = v14;
                  }

                  while (v14);
                }
              }
            }

            else
            {
              v11 = 0;
            }

            v15 = *(v9 + 8);
            *&v97.var0 = 2 * v11;
            v97.var1 = v10;
            re::TypeBuilder::addEnumConstant(v98, v15, &v97);
            if (*&v97.var0)
            {
              if (*&v97.var0)
              {
              }
            }

            v7 = *v6;
          }
        }

        if (v7)
        {
          for (j = 0; j < v7; ++j)
          {
            v18 = *(*(v6 + 1) + 8 * j);
            if (*v18 == 2)
            {
              v19 = *(v18 + 16);
              if (v19)
              {
                v20 = *v19;
                if (*v19)
                {
                  v21 = v19[1];
                  if (v21)
                  {
                    v22 = (v19 + 2);
                    do
                    {
                      v20 = 31 * v20 + v21;
                      v23 = *v22++;
                      v21 = v23;
                    }

                    while (v23);
                  }
                }
              }

              else
              {
                v20 = 0;
              }

              v24 = *(v18 + 8);
              *&v97.var0 = 2 * v20;
              v97.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v98, v24, &v97);
              if (*&v97.var0)
              {
                if (*&v97.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v98, v26);
      xmmword_1EE1B6200 = v97;
      if (v95)
      {
        if (v95)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v96);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE1B5F78);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Origin";
      qword_1EE1B6510 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "Palm";
      qword_1EE1B6518 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 1) = 2;
      *(v34 + 2) = "IndexFingerTip";
      qword_1EE1B6520 = v34;
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 1) = 3;
      *(v36 + 2) = "ThumbTip";
      qword_1EE1B6528 = v36;
      v37 = re::introspectionAllocator(v36);
      v38 = (*(*v37 + 32))(v37, 24, 8);
      *v38 = 1;
      *(v38 + 1) = 4;
      *(v38 + 2) = "AboveHand";
      qword_1EE1B6530 = v38;
      v39 = re::introspectionAllocator(v38);
      v40 = (*(*v39 + 32))(v39, 24, 8);
      *v40 = 1;
      *(v40 + 1) = 5;
      *(v40 + 2) = "ThumbKnuckle";
      qword_1EE1B6538 = v40;
      v41 = re::introspectionAllocator(v40);
      v42 = (*(*v41 + 32))(v41, 24, 8);
      *v42 = 1;
      *(v42 + 1) = 6;
      *(v42 + 2) = "ThumbIntermediateBase";
      qword_1EE1B6540 = v42;
      v43 = re::introspectionAllocator(v42);
      v44 = (*(*v43 + 32))(v43, 24, 8);
      *v44 = 1;
      *(v44 + 1) = 7;
      *(v44 + 2) = "ThumbIntermediateTip";
      qword_1EE1B6548 = v44;
      v45 = re::introspectionAllocator(v44);
      v46 = (*(*v45 + 32))(v45, 24, 8);
      *v46 = 1;
      *(v46 + 1) = 8;
      *(v46 + 2) = "IndexFingerMetacarpal";
      qword_1EE1B6550 = v46;
      v47 = re::introspectionAllocator(v46);
      v48 = (*(*v47 + 32))(v47, 24, 8);
      *v48 = 1;
      *(v48 + 1) = 9;
      *(v48 + 2) = "IndexFingerKnuckle";
      qword_1EE1B6558 = v48;
      v49 = re::introspectionAllocator(v48);
      v50 = (*(*v49 + 32))(v49, 24, 8);
      *v50 = 1;
      *(v50 + 1) = 10;
      *(v50 + 2) = "IndexFingerIntermediateBase";
      qword_1EE1B6560 = v50;
      v51 = re::introspectionAllocator(v50);
      v52 = (*(*v51 + 32))(v51, 24, 8);
      *v52 = 1;
      *(v52 + 1) = 11;
      *(v52 + 2) = "IndexFingerIntermediateTip";
      qword_1EE1B6568 = v52;
      v53 = re::introspectionAllocator(v52);
      v54 = (*(*v53 + 32))(v53, 24, 8);
      *v54 = 1;
      *(v54 + 1) = 12;
      *(v54 + 2) = "MiddleFingerMetacarpal";
      qword_1EE1B6570 = v54;
      v55 = re::introspectionAllocator(v54);
      v56 = (*(*v55 + 32))(v55, 24, 8);
      *v56 = 1;
      *(v56 + 1) = 13;
      *(v56 + 2) = "MiddleFingerKnuckle";
      qword_1EE1B6578 = v56;
      v57 = re::introspectionAllocator(v56);
      v58 = (*(*v57 + 32))(v57, 24, 8);
      *v58 = 1;
      *(v58 + 1) = 14;
      *(v58 + 2) = "MiddleFingerIntermediateBase";
      qword_1EE1B6580 = v58;
      v59 = re::introspectionAllocator(v58);
      v60 = (*(*v59 + 32))(v59, 24, 8);
      *v60 = 1;
      *(v60 + 1) = 15;
      *(v60 + 2) = "MiddleFingerIntermediateTip";
      qword_1EE1B6588 = v60;
      v61 = re::introspectionAllocator(v60);
      v62 = (*(*v61 + 32))(v61, 24, 8);
      *v62 = 1;
      *(v62 + 1) = 16;
      *(v62 + 2) = "MiddleFingerTip";
      qword_1EE1B6590 = v62;
      v63 = re::introspectionAllocator(v62);
      v64 = (*(*v63 + 32))(v63, 24, 8);
      *v64 = 1;
      *(v64 + 1) = 17;
      *(v64 + 2) = "RingFingerMetacarpal";
      qword_1EE1B6598 = v64;
      v65 = re::introspectionAllocator(v64);
      v66 = (*(*v65 + 32))(v65, 24, 8);
      *v66 = 1;
      *(v66 + 1) = 18;
      *(v66 + 2) = "RingFingerKnuckle";
      qword_1EE1B65A0 = v66;
      v67 = re::introspectionAllocator(v66);
      v68 = (*(*v67 + 32))(v67, 24, 8);
      *v68 = 1;
      *(v68 + 1) = 19;
      *(v68 + 2) = "RingFingerIntermediateBase";
      qword_1EE1B65A8 = v68;
      v69 = re::introspectionAllocator(v68);
      v70 = (*(*v69 + 32))(v69, 24, 8);
      *v70 = 1;
      *(v70 + 1) = 20;
      *(v70 + 2) = "RingFingerIntermediateTip";
      qword_1EE1B65B0 = v70;
      v71 = re::introspectionAllocator(v70);
      v72 = (*(*v71 + 32))(v71, 24, 8);
      *v72 = 1;
      *(v72 + 1) = 21;
      *(v72 + 2) = "RingFingerTip";
      qword_1EE1B65B8 = v72;
      v73 = re::introspectionAllocator(v72);
      v74 = (*(*v73 + 32))(v73, 24, 8);
      *v74 = 1;
      *(v74 + 1) = 22;
      *(v74 + 2) = "LittleFingerMetacarpal";
      qword_1EE1B65C0 = v74;
      v75 = re::introspectionAllocator(v74);
      v76 = (*(*v75 + 32))(v75, 24, 8);
      *v76 = 1;
      *(v76 + 1) = 23;
      *(v76 + 2) = "LittleFingerKnuckle";
      qword_1EE1B65C8 = v76;
      v77 = re::introspectionAllocator(v76);
      v78 = (*(*v77 + 32))(v77, 24, 8);
      *v78 = 1;
      *(v78 + 1) = 24;
      *(v78 + 2) = "LittleFingerIntermediateBase";
      qword_1EE1B65D0 = v78;
      v79 = re::introspectionAllocator(v78);
      v80 = (*(*v79 + 32))(v79, 24, 8);
      *v80 = 1;
      *(v80 + 1) = 25;
      *(v80 + 2) = "LittleFingerIntermediateTip";
      qword_1EE1B65D8 = v80;
      v81 = re::introspectionAllocator(v80);
      v82 = (*(*v81 + 32))(v81, 24, 8);
      *v82 = 1;
      *(v82 + 1) = 26;
      *(v82 + 2) = "LittleFingerTip";
      qword_1EE1B65E0 = v82;
      v83 = re::introspectionAllocator(v82);
      v84 = (*(*v83 + 32))(v83, 24, 8);
      *v84 = 1;
      *(v84 + 1) = 27;
      *(v84 + 2) = "ForearmWrist";
      qword_1EE1B65E8 = v84;
      v85 = re::introspectionAllocator(v84);
      v86 = (*(*v85 + 32))(v85, 24, 8);
      *v86 = 1;
      *(v86 + 1) = 28;
      *(v86 + 2) = "ForearmArm";
      qword_1EE1B65F0 = v86;
      v87 = re::introspectionAllocator(v86);
      v88 = (*(*v87 + 32))(v87, 24, 8);
      *v88 = 2;
      *(v88 + 1) = 1;
      *(v88 + 2) = "ReservedLocation0";
      qword_1EE1B65F8 = v88;
      v89 = re::introspectionAllocator(v88);
      v90 = (*(*v89 + 32))(v89, 24, 8);
      *v90 = 2;
      *(v90 + 1) = 2;
      *(v90 + 2) = "ReservedLocation1";
      qword_1EE1B6600 = v90;
      v91 = re::introspectionAllocator(v90);
      v92 = (*(*v91 + 32))(v91, 24, 8);
      *v92 = 2;
      *(v92 + 1) = 3;
      *(v92 + 2) = "ReservedLocation2";
      qword_1EE1B6608 = v92;
      v93 = re::introspectionAllocator(v92);
      v94 = (*(*v93 + 32))(v93, 24, 8);
      *v94 = 2;
      *(v94 + 8) = 4;
      *(v94 + 16) = "ReservedLocation3";
      qword_1EE1B6610 = v94;
      __cxa_guard_release(&qword_1EE1B5F78);
    }
  }
}