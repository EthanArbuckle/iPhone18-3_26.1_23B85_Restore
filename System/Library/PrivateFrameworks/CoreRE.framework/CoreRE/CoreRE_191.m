double re::PersistentShadowState::processMeshShadowUpdate@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  re::PersistentShadowState::processMeshShadowInputRemovals(a1, a2, v7);
  re::PersistentShadowState::processMeshShadowInputUpdates(a1);
  re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::HashSetBase(a3, v7);
  re::DynamicArray<re::AllocatedShadowHandle>::DynamicArray(a3 + 48, v6);
  if (v6[0] && v6[4])
  {
    (*(*v6[0] + 40))();
  }

  return re::HashSetBase<re::TriggerPair,re::TriggerPair,re::internal::ValueAsKey<re::TriggerPair>,re::Hash<re::TriggerPair>,re::EqualTo<re::TriggerPair>,true,false>::deinit(v7);
}

uint64_t re::HashTable<re::SceneShadowClusterID,re::PersistentShadowState::ClusterInfo,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::findEntry<re::SceneShadowClusterID>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = 0x7FFFFFFF;
  if (!*result)
  {
    goto LABEL_16;
  }

  v4 = a3 % *(result + 24);
  v6 = *(*(result + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_16;
  }

  v7 = *(result + 16);
  v8 = a2[1];
  v9 = v7 + 384 * v6;
  v11 = *(v9 + 8);
  v10 = *(v9 + 16);
  if (v11 == *a2 && v10 == v8)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_16:
    v6 = 0x7FFFFFFF;
    goto LABEL_17;
  }

  v13 = *(v7 + 384 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v13 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v14 = v13;
      v15 = v7 + 384 * v13;
      result = *(v15 + 8);
      v16 = *(v15 + 16);
      if (result == *a2 && v16 == v8)
      {
        break;
      }

      v13 = *(v7 + 384 * v14) & 0x7FFFFFFF;
      v6 = v14;
      if (v13 == 0x7FFFFFFF)
      {
        v6 = v14;
        goto LABEL_17;
      }
    }

    v5 = v14;
  }

LABEL_17:
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v6;
  return result;
}

uint64_t re::HashTable<re::ShadowPair,re::AllocatedShadowHandle,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::tryGet(uint64_t a1, void *a2)
{
  v4 = re::Hash<re::ShadowPair>::operator()(v6, a2);
  re::HashTable<re::ShadowPair,re::AllocatedShadowHandle,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::findEntry<re::ShadowPair>(a1, a2, v4, v6);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 72 * v7 + 32;
  }
}

uint64_t re::HashTable<re::SceneShadowClusterID,re::PersistentShadowState::ClusterInfo,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v41, 0, 36);
          *&v41[36] = 0x7FFFFFFFLL;
          re::HashTable<re::SceneShadowClusterID,re::PersistentShadowState::ClusterInfo,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::init(v41, v9, v8);
          v11 = *v41;
          *v41 = *a1;
          *a1 = v11;
          v12 = *&v41[16];
          v13 = *(a1 + 16);
          *&v41[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v41[24];
          *&v41[24] = *(a1 + 24);
          v14 = *&v41[32];
          *(a1 + 24) = v15;
          ++*&v41[40];
          if (v14)
          {
            v16 = 0;
            v17 = 384 * v14;
            do
            {
              if ((*(v13 + v16) & 0x80000000) != 0)
              {
                v18 = v13 + v16;
                v19 = re::HashTable<re::SceneShadowClusterID,re::PersistentShadowState::ClusterInfo,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::allocEntry(a1, *(v13 + v16 + 368) % *(a1 + 24));
                *(v19 + 8) = *(v13 + v16 + 8);
                *(v19 + 64) = 0;
                *(v19 + 56) = 0;
                *(v19 + 40) = 0;
                *(v19 + 48) = 0;
                *(v19 + 32) = 0;
                v20 = *(v13 + v16 + 40);
                *(v19 + 32) = *(v13 + v16 + 32);
                *(v19 + 40) = v20;
                *(v18 + 32) = 0;
                *(v18 + 40) = 0;
                v21 = *(v19 + 48);
                *(v19 + 48) = *(v13 + v16 + 48);
                *(v18 + 48) = v21;
                v22 = *(v19 + 64);
                *(v19 + 64) = *(v13 + v16 + 64);
                *(v18 + 64) = v22;
                ++*(v18 + 56);
                ++*(v19 + 56);
                v23 = *(v13 + v16 + 80);
                v24 = *(v13 + v16 + 96);
                v25 = *(v13 + v16 + 128);
                *(v19 + 112) = *(v13 + v16 + 112);
                *(v19 + 128) = v25;
                *(v19 + 80) = v23;
                *(v19 + 96) = v24;
                v26 = *(v13 + v16 + 144);
                v27 = *(v13 + v16 + 160);
                v28 = *(v13 + v16 + 192);
                *(v19 + 176) = *(v13 + v16 + 176);
                *(v19 + 192) = v28;
                *(v19 + 144) = v26;
                *(v19 + 160) = v27;
                v29 = *(v13 + v16 + 208);
                v30 = *(v13 + v16 + 224);
                v31 = *(v13 + v16 + 240);
                *(v19 + 256) = *(v13 + v16 + 256);
                *(v19 + 224) = v30;
                *(v19 + 240) = v31;
                *(v19 + 208) = v29;
                LODWORD(v22) = *(v13 + v16 + 272);
                *(v19 + 272) = v22;
                if (v22 == 1)
                {
                  v32 = *(v18 + 304);
                  *(v19 + 288) = *(v18 + 288);
                  *(v19 + 304) = v32;
                }

                v33 = *(v18 + 320);
                *(v19 + 320) = v33;
                if (v33 == 1)
                {
                  v34 = *(v13 + v16 + 352);
                  *(v19 + 336) = *(v13 + v16 + 336);
                  *(v19 + 352) = v34;
                }
              }

              v16 += 384;
            }

            while (v17 != v16);
          }

          re::HashTable<re::SceneShadowClusterID,re::PersistentShadowState::ClusterInfo,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(v41);
        }
      }

      else
      {
        if (v8)
        {
          v37 = 2 * v7;
        }

        else
        {
          v37 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v35 = *(a1 + 16);
    v36 = *(v35 + 384 * v5);
  }

  else
  {
    v35 = *(a1 + 16);
    v36 = *(v35 + 384 * v5);
    *(a1 + 36) = v36 & 0x7FFFFFFF;
  }

  v38 = v35 + 384 * v5;
  *v38 = v36 | 0x80000000;
  v39 = *(a1 + 8);
  *v38 = *(v39 + 4 * a2) | 0x80000000;
  *(v39 + 4 * a2) = v5;
  *(v38 + 368) = a3;
  ++*(a1 + 28);
  return v35 + 384 * v5;
}

void re::HashTable<re::SceneShadowClusterID,re::PersistentShadowState::ClusterInfo,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 384 * v10, 16);
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

uint64_t re::HashTable<re::SceneShadowClusterID,re::PersistentShadowState::ClusterInfo,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::tryGet(uint64_t a1, void *a2)
{
  v4 = re::Hash<re::Pair<void const*,void const*,true>>::operator()(v6, a2);
  re::HashTable<re::SceneShadowClusterID,re::PersistentShadowState::ClusterInfo,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::findEntry<re::SceneShadowClusterID>(a1, a2, v4, v6);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 384 * v7 + 32;
  }
}

uint64_t re::HashTable<re::ShadowPair,re::AllocatedShadowHandle,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v28, 0, 36);
          *&v28[36] = 0x7FFFFFFFLL;
          re::HashTable<char const*,re::AssetLoadRequest::LoadStatistics::AssetTypeStats,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::init(v28, v9, v8);
          v11 = *v28;
          *v28 = *a1;
          *a1 = v11;
          v12 = *&v28[16];
          v13 = *(a1 + 16);
          *&v28[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v28[24];
          *&v28[24] = *(a1 + 24);
          v14 = *&v28[32];
          *(a1 + 24) = v15;
          ++*&v28[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = v13 + 32;
            do
            {
              if ((*(v18 - 32) & 0x80000000) != 0)
              {
                v19 = re::HashTable<re::ShadowPair,re::AllocatedShadowHandle,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::allocEntry(a1, *(v18 + 32) % *(a1 + 24));
                v20 = *(v18 - 24);
                *(v19 + 24) = *(v18 - 8);
                *(v19 + 8) = v20;
                v21 = *(v18 + 16);
                *(v19 + 32) = *v18;
                *(v19 + 48) = v21;
              }

              ++v17;
              v18 += 72;
            }

            while (v17 < v16);
          }

          re::HashTable<re::ShadowPair,re::AllocatedShadowHandle,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::deinit(v28);
        }
      }

      else
      {
        if (v8)
        {
          v24 = 2 * v7;
        }

        else
        {
          v24 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v22 = *(a1 + 16);
    v23 = *(v22 + 72 * v5);
  }

  else
  {
    v22 = *(a1 + 16);
    v23 = *(v22 + 72 * v5);
    *(a1 + 36) = v23 & 0x7FFFFFFF;
  }

  v25 = v22 + 72 * v5;
  *v25 = v23 | 0x80000000;
  v26 = *(a1 + 8);
  *v25 = *(v26 + 4 * a2) | 0x80000000;
  *(v26 + 4 * a2) = v5;
  *(v25 + 64) = a3;
  ++*(a1 + 28);
  return v22 + 72 * v5;
}

uint64_t re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::HashSetBase(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 36) = 0x7FFFFFFFLL;
  v4 = *a2;
  if (v4)
  {
    if (*(a2 + 28) <= 3u)
    {
      v5 = 3;
    }

    else
    {
      v5 = *(a2 + 28);
    }

    re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::init(a1, v4, v5);
    re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::copy(a1, a2);
  }

  return a1;
}

void re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::copy(uint64_t a1, uint64_t a2)
{
  re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::clear(a1);
  v4 = *(a2 + 28);
  if (*(a1 + 24) < v4)
  {
    re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::setCapacity(a1, v4);
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
        re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::addAsCopy(a1, *v8 % *(a1 + 24), *v8, v8 + 16, (v8 + 16));
        v5 = *(a2 + 32);
      }

      v6 += 40;
    }
  }
}

uint64_t re::HashTable<re::SceneWorldRootId,re::WorldOrderedShadows::Range,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::add(uint64_t a1, void *a2, void *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = re::Hash<re::Pair<void const*,void const*,true>>::operator()(&v12, a2);
  re::HashTable<re::SceneWorldRootId,re::WorldOrderedShadows::Range,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::findEntry<re::SceneWorldRootId>(a1, a2, v6, &v9);
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 40 * HIDWORD(v10) + 24;
  }

  v7 = re::HashTable<re::SceneWorldRootId,re::WorldOrderedShadows::Range,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::allocEntry(a1, v10, v9);
  *(v7 + 8) = *a2;
  *(v7 + 24) = *a3;
  result = v7 + 24;
  ++*(a1 + 40);
  return result;
}

void *re::DynamicArray<re::AllocatedShadowHandle>::resizeUninitialized(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }
  }

  else if (result[1] < a2)
  {
    result = re::DynamicArray<re::EvaluationRegister>::setCapacity(result, a2);
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

uint64_t re::HashTable<re::SceneWorldRootId,re::WorldOrderedShadows::Range,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::tryGet(uint64_t a1, void *a2)
{
  v4 = re::Hash<re::Pair<void const*,void const*,true>>::operator()(v6, a2);
  re::HashTable<re::SceneWorldRootId,re::WorldOrderedShadows::Range,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::findEntry<re::SceneWorldRootId>(a1, a2, v4, v6);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 40 * v7 + 24;
  }
}

uint64_t re::HashTable<re::SceneWorldRootId,re::WorldOrderedShadows::Range,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::findEntry<re::SceneWorldRootId>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = 0x7FFFFFFF;
  if (!*result)
  {
    goto LABEL_16;
  }

  v4 = a3 % *(result + 24);
  v6 = *(*(result + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_16;
  }

  v7 = *(result + 16);
  v8 = a2[1];
  v9 = v7 + 40 * v6;
  v11 = *(v9 + 8);
  v10 = *(v9 + 16);
  if (v11 == *a2 && v10 == v8)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_16:
    v6 = 0x7FFFFFFF;
    goto LABEL_17;
  }

  v13 = *(v7 + 40 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v13 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v14 = v13;
      v15 = v7 + 40 * v13;
      result = *(v15 + 8);
      v16 = *(v15 + 16);
      if (result == *a2 && v16 == v8)
      {
        break;
      }

      v13 = *(v7 + 40 * v14) & 0x7FFFFFFF;
      v6 = v14;
      if (v13 == 0x7FFFFFFF)
      {
        v6 = v14;
        goto LABEL_17;
      }
    }

    v5 = v14;
  }

LABEL_17:
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v6;
  return result;
}

uint64_t re::HashTable<re::SceneWorldRootId,re::WorldOrderedShadows::Range,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::SceneWorldRootId,re::WorldOrderedShadows::Range,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::setCapacity(a1, (2 * *(a1 + 28)));
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

void re::HashTable<re::SceneWorldRootId,re::WorldOrderedShadows::Range,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
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
      re::HashTable<re::SceneWorldRootId,re::WorldOrderedShadows::Range,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::move(a1, v9);
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

uint64_t re::HashTable<re::SceneWorldRootId,re::WorldOrderedShadows::Range,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      v7 = *(a2 + 16);
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        result = re::HashTable<re::SceneWorldRootId,re::WorldOrderedShadows::Range,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::allocEntry(v4, *(v7 + v5 + 32) % *(v4 + 24), *(v7 + v5 + 32));
        *(result + 8) = *(*(a2 + 16) + v5 + 8);
        *(result + 24) = *(*(a2 + 16) + v5 + 24);
        v2 = *(a2 + 32);
      }

      v5 += 40;
    }
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::DynamicArray<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v30, 0, 36);
          *&v30[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v30, v9, v8);
          v11 = *v30;
          *v30 = *a1;
          *a1 = v11;
          v12 = *&v30[16];
          v13 = *(a1 + 16);
          *&v30[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v30[24];
          *&v30[24] = *(a1 + 24);
          v14 = *&v30[32];
          *(a1 + 24) = v15;
          ++*&v30[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = v13 + 32;
            do
            {
              if ((*(v18 - 32) & 0x80000000) != 0)
              {
                v19 = re::HashTable<unsigned long long,re::DynamicArray<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v18 + 24) % *(a1 + 24));
                v20 = *(v18 - 24);
                *(v19 + 48) = 0;
                *(v19 + 40) = 0;
                *(v19 + 24) = 0;
                *(v19 + 32) = 0;
                *(v19 + 8) = v20;
                *(v19 + 16) = 0;
                v21 = *(v18 - 8);
                *(v19 + 16) = *(v18 - 16);
                *(v19 + 24) = v21;
                *(v18 - 16) = 0;
                *(v18 - 8) = 0;
                v22 = *(v19 + 32);
                *(v19 + 32) = *v18;
                *v18 = v22;
                v23 = *(v19 + 48);
                *(v19 + 48) = *(v18 + 16);
                *(v18 + 16) = v23;
                ++*(v18 + 8);
                ++*(v19 + 40);
              }

              v18 += 64;
              ++v17;
            }

            while (v17 < v16);
          }

          re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(v30);
        }
      }

      else
      {
        if (v8)
        {
          v26 = 2 * v7;
        }

        else
        {
          v26 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v24 = *(a1 + 16);
    v25 = *(v24 + (v5 << 6));
  }

  else
  {
    v24 = *(a1 + 16);
    v25 = *(v24 + (v5 << 6));
    *(a1 + 36) = v25 & 0x7FFFFFFF;
  }

  v27 = v24 + (v5 << 6);
  *v27 = v25 | 0x80000000;
  v28 = *(a1 + 8);
  *v27 = *(v28 + 4 * a2) | 0x80000000;
  *(v27 + 56) = a3;
  *(v28 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v24 + (v5 << 6);
}

void re::HashTable<re::ShadowPair,re::ShadowInfo,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 1872 * v10, 16);
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

double re::HashTable<re::ShadowPair,re::ShadowInfo,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = a1[2];
      do
      {
        if ((*v4 & 0x80000000) != 0)
        {
          *v4 &= ~0x80000000;
        }

        v4 += 468;
        --v3;
      }

      while (v3);
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

uint64_t re::HashTable<re::ShadowPair,re::ShadowInfo,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::findEntry<re::ShadowPair>(uint64_t result, uint64_t a2, void *a3, unint64_t a4)
{
  v4 = *a2;
  v5 = 0x7FFFFFFF;
  if (*a2 && (v4 = a4 % *(a2 + 24), v6 = *(*(a2 + 8) + 4 * v4), v6 != 0x7FFFFFFF))
  {
    v8 = *(a2 + 16);
    v5 = 0x7FFFFFFF;
    v7 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v6;
      v10 = v8 + 1872 * v6;
      v12 = *(v10 + 8);
      v11 = v10 + 8;
      if (v12 == *a3 && *(v11 + 8) == a3[1] && *(v11 + 16) == a3[2])
      {
        break;
      }

      v6 = *(v8 + 1872 * v9) & 0x7FFFFFFF;
      v7 = v9;
      if (v6 == 0x7FFFFFFF)
      {
        v7 = v9;
        goto LABEL_11;
      }
    }

    v5 = v9;
  }

  else
  {
    v7 = 0x7FFFFFFF;
  }

LABEL_11:
  *result = a4;
  *(result + 8) = v4;
  *(result + 12) = v5;
  *(result + 16) = v7;
  return result;
}

uint64_t re::HashTable<re::ShadowPair,re::ShadowInfo,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::ShadowPair,re::ShadowInfo,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::init(v25, v9, v8);
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
                v17 = re::HashTable<re::ShadowPair,re::ShadowInfo,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::allocEntry(a1, *(v13 + 1856) % *(a1 + 24));
                v18 = *(v13 + 24);
                *(v17 + 8) = *(v13 + 8);
                *(v17 + 24) = v18;
                memcpy((v17 + 32), (v13 + 32), 0x720uLL);
              }

              v13 += 1872;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::ShadowPair,re::ShadowInfo,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::deinit(v25);
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
    v20 = *(v19 + 1872 * v5);
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *(v19 + 1872 * v5);
    *(a1 + 36) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + 1872 * v5;
  *v22 = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v23 + 4 * a2) = v5;
  *(v22 + 1856) = a3;
  ++*(a1 + 28);
  return v19 + 1872 * v5;
}

uint64_t re::DynamicArray<re::AllocatedShadowHandle>::DynamicArray(uint64_t a1, uint64_t *a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v3 = *a2;
  if (*a2)
  {
    v5 = a2[2];
    *a1 = v3;
    re::DynamicArray<re::EvaluationRegister>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::AllocatedShadowHandle>::copy(a1, a2);
  }

  return a1;
}

void **re::DynamicArray<re::AllocatedShadowHandle>::copy(void **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4 >= result[2])
  {
    re::DynamicArray<re::EvaluationRegister>::setCapacity(result, *(a2 + 16));
    v5 = v3[2];
    if (v5)
    {
      memmove(v3[4], *(a2 + 32), 32 * v5 - 4);
      v5 = v3[2];
    }

    result = memcpy(v3[4] + 32 * v5, (*(a2 + 32) + 32 * v5), 32 * (v4 - v5));
  }

  else if (v4)
  {
    result = memmove(result[4], *(a2 + 32), 32 * v4 - 4);
  }

  v3[2] = v4;
  return result;
}

uint64_t re::SkinningModelBuilder::addSkinnedMeshPartData(uint64_t a1, int a2, char a3, char a4, uint64_t a5)
{
  v34 = 0xA7268F0C3B45D55ELL;
  v35 = "skinningInfluences";
  v10 = re::HashTable<re::StringID,re::Optional<re::DynamicString>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a5, &v34, 0x5626F7127DF0A498uLL, &v22);
  v11 = HIDWORD(v24);
  v12 = *(a5 + 16);
  if (v34)
  {
    if (v34)
    {
    }
  }

  v34 = 0xF98D22D8F2059642;
  v35 = "influenceEndIndices";
  v13 = re::HashTable<re::StringID,re::Optional<re::DynamicString>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a5, &v34, 0x1554917AD4E323E0uLL, &v22);
  v14 = HIDWORD(v24);
  v15 = *(a5 + 16);
  if (v34)
  {
    if (v34)
    {
    }
  }

  v22 = a2;
  LOBYTE(v23) = a3;
  HIBYTE(v23) = a4;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  if (v11 == 0x7FFFFFFF)
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
  }

  else
  {
    v16 = v12 + (v11 << 6);
    LOBYTE(v27) = 0;
    DWORD2(v28) = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(&v27, v16 + 24);
    v29 = *(v16 + 56);
  }

  v30 = 0uLL;
  if (v14 == 0x7FFFFFFF)
  {
    v33 = 0;
    v32 = 0u;
    v31 = 0u;
  }

  else
  {
    v17 = v15 + (v14 << 6);
    LOBYTE(v31) = 0;
    DWORD2(v32) = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(&v31, v17 + 24);
    v33 = *(v17 + 56);
  }

  v18 = re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::addUninitialized(a1 + 80);
  v19 = v23;
  *v18 = v22;
  *(v18 + 4) = v19;
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 8) = 0;
  *(v18 + 8) = v24;
  *(v18 + 16) = v25;
  v24 = 0;
  v25 = 0;
  *(v18 + 24) = v26;
  v26 = 0;
  *(v18 + 32) = 0;
  *(v18 + 56) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v18 + 32, &v27);
  v20 = v29;
  *(v18 + 88) = 0;
  v18 += 88;
  *(v18 - 24) = v20;
  *(v18 - 16) = v30;
  *(v18 + 24) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v18, &v31);
  *(v18 + 32) = v33;
  if (DWORD2(v32) != -1)
  {
    (off_1F5D0A000[DWORD2(v32)])(&v34, &v31);
  }

  DWORD2(v32) = -1;
  if (DWORD2(v28) != -1)
  {
    (off_1F5D0A000[DWORD2(v28)])(&v34, &v27);
  }

  DWORD2(v28) = -1;
  if (v24 && v25)
  {
    (*(*v24 + 40))();
  }

  return *(a1 + 120) - 1;
}

uint64_t re::SkinningModelBuilder::buildDeformationModel(re::SkinningModelBuilder *this, id *a2, DeformationModelData *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  re::SkinningModelBuilder::generatePreparedSkinnedMeshPartData(this, 1, a2);
  var0 = a3->var0[2].var0;
  v5 = &a3->var0[2];
  if (var0)
  {
    (*(**this + 40))();
  }

  v7 = *this;
  v8 = (*(**this + 32))(*this, 48, 8);
  *v8 = 0u;
  v8[1] = 0u;
  v8[2] = 0u;
  *&v38 = &unk_1F5D0A020;
  *(&v38 + 1) = v7;
  *(&v39 + 1) = &v38;
  v25 = v24;
  v23 = v8;
  v24[0] = &unk_1F5D0A020;
  v24[1] = v7;
  std::unique_ptr<void,std::function<void ()(void *)>>::operator=[abi:nn200100](v5, &v23);
  std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](&v23);
  v9 = std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](&v38);
  v10 = *v5;
  v11 = *(this + 15);
  v10[1] = v11;
  if (v11)
  {
    if (v11 < 0x2E8BA2E8BA2E8BBLL)
    {
      v10[2] = v13;
      if (!v13)
      {
        goto LABEL_20;
      }

      v15 = v11 - 1;
      if (v11 != 1)
      {
        do
        {
          *v13 = 0;
          *(v13 + 4) = 0uLL;
          *(v13 + 20) = 0uLL;
          *(v13 + 36) = 0uLL;
          *(v13 + 52) = 0uLL;
          *(v13 + 68) = 0uLL;
          *(v13 + 84) = 0;
          v13 += 88;
          --v15;
        }

        while (v15);
      }

      *v13 = 0;
      *(v13 + 4) = 0u;
      *(v13 + 20) = 0u;
      *(v13 + 36) = 0u;
      *(v13 + 52) = 0u;
      *(v13 + 68) = 0u;
      *(v13 + 84) = 0;
      re::FixedArray<re::BufferSlice>::init<>(v10 + 3, *this, *(this + 2));
      re::FixedArray<re::BufferSlice>::operator=((v10 + 3), this + 1);
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v18 = re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::operator[](this + 80, v17);
        LOWORD(v23) = *(v18 + 4);
        HIDWORD(v23) = *v18;
        LOBYTE(v24[0]) = 0;
        LODWORD(v25) = -1;
        std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v24, v18 + 88);
        v26 = *(v18 + 120);
        v27[0] = 0;
        v28 = -1;
        std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v27, v18 + 32);
        v29 = *(v18 + 64);
        v19 = v10[1];
        if (v19 <= v17)
        {
          break;
        }

        v20 = (v10[2] + v16);
        *v20 = v23;
        std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>((v20 + 1), v24);
        v20[5] = v26;
        std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>((v20 + 6), v27);
        v20[10] = v29;
        if (v28 != -1)
        {
          (off_1F5D0A000[v28])(&v38, v27);
        }

        v28 = -1;
        if (v25 != -1)
        {
          (off_1F5D0A000[v25])(&v38, v24);
        }

        ++v17;
        v16 += 88;
        if (v11 == v17)
        {
          return 1;
        }
      }

      v22 = 0;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v38 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v30 = 136315906;
      v31 = "operator[]";
      v32 = 1024;
      v33 = 468;
      v34 = 2048;
      v35 = v17;
      v36 = 2048;
      v37 = v19;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 88, v11, v22);
    _os_crash();
    __break(1u);
LABEL_20:
    re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash();
    __break(1u);
  }

  re::FixedArray<re::BufferSlice>::init<>(v10 + 3, *this, *(this + 2));
  re::FixedArray<re::BufferSlice>::operator=((v10 + 3), this + 1);
  return 1;
}

void re::SkinningModelBuilder::generatePreparedSkinnedMeshPartData(re::SkinningModelBuilder *this, int a2, id *a3)
{
  v4 = *(this + 8);
  v5 = *(this + 15);
  if (v4 <= v5)
  {
    if (v5)
    {
      v52 = a2 == 0;
    }

    else
    {
      v52 = 1;
    }

    if (!v52)
    {
      v53 = 0;
      do
      {
        v54 = re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::operator[](this + 80, v53);
        v55 = v54;
        v56 = *(v54 + 68);
        if (*(v54 + 16))
        {
          v57 = v56 == 0;
        }

        else
        {
          v57 = 0;
        }

        if (v57)
        {
          v58 = [*a3 newBufferWithBytes:*(v54 + 24) length:? options:?];
          v73[0] = v58;
          v74 = 0;
          LODWORD(v75) = 0;
          HIDWORD(v75) = [v58 length];
          std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v55 + 32, v73);
          *(v55 + 64) = v75;
          if (v74 != -1)
          {
            (off_1F5D0A000[v74])(v70, v73);
          }

          v74 = -1;
          if (v58)
          {
          }

          v56 = *(v55 + 68);
        }

        if (*(v55 + 80))
        {
          v59 = v56 == 0;
        }

        else
        {
          v59 = 0;
        }

        if (v59)
        {
          v60 = [*a3 newBufferWithBytes:*(v55 + 72) length:? options:?];
          v73[0] = v60;
          v74 = 0;
          LODWORD(v75) = 0;
          HIDWORD(v75) = [v60 length];
          std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v55 + 32, v73);
          *(v55 + 64) = v75;
          if (v74 != -1)
          {
            (off_1F5D0A000[v74])(v70, v73);
          }

          v74 = -1;
          if (v60)
          {
          }
        }

        ++v53;
      }

      while (v5 != v53);
    }

    return;
  }

  if (v4 > 4 * *(this + 11))
  {
    re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::setBucketsCapacity(this + 10, (v4 + 3) >> 2);
    v4 = *(this + 8);
    if (!v4)
    {
      return;
    }
  }

  v61 = v4;
  v6 = 0;
  while (1)
  {
    v7 = re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::operator[](this + 24, v6);
    v8 = re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::addUninitialized(this + 80);
    *(v8 + 4) = 0;
    *(v8 + 8) = 0u;
    *(v8 + 24) = 0u;
    *(v8 + 40) = 0u;
    *(v8 + 56) = 0u;
    *(v8 + 72) = 0u;
    *(v8 + 104) = 0u;
    *(v8 + 120) = 0;
    *(v8 + 88) = 0u;
    *v8 = *v7;
    v9 = *(v7 + 32);
    if (v9)
    {
      v10 = *(v7 + 24);
      v11 = *v10;
      v12 = v9 - 1;
      if (v12)
      {
        v13 = v10 + 1;
        v14 = v11;
        while (1)
        {
          v16 = *v13++;
          v15 = v16;
          if (v11 != v16 - v14)
          {
            break;
          }

          v14 = v15;
          if (!--v12)
          {
            goto LABEL_13;
          }
        }

        v11 = 0;
      }

LABEL_13:
      if (v11 >= 256)
      {
        LOBYTE(v11) = 0;
      }

      v17 = v11;
    }

    else
    {
      v17 = 0;
    }

    v18 = *(v7 + 16);
    if (v18)
    {
      v19 = (*(v7 + 8) + 4);
      v20 = *(v7 + 16);
      while (*(v19 - 1) <= 0x3FFu)
      {
        if (*v19 < 0.0 || *v19 > 1.0)
        {
          break;
        }

        v19 += 2;
        if (!--v20)
        {
          goto LABEL_25;
        }
      }

      v22 = 0;
    }

    else
    {
LABEL_25:
      v22 = 1;
    }

    v76 = 0;
    v77 = 0;
    v78 = 0;
    v73[0] = 0;
    v74 = 0;
    v75 = 0;
    v70[0] = 0;
    v71 = 0;
    v72 = 0;
    if (!v18)
    {
      goto LABEL_66;
    }

    if (v22)
    {
      v23 = 4 * v18;
      if (a2)
      {
        v24 = [*a3 newBufferWithLength:v23 options:0];
        v65 = v24;
        v68 = 0;
        LODWORD(v69) = 0;
        HIDWORD(v69) = [v24 length];
        std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v73, &v65);
        v75 = v69;
        if (v68 != -1)
        {
          (off_1F5D0A000[v68])(v64, &v65);
        }

        v68 = -1;
        if (v24)
        {
        }

        v25 = re::BufferSlice::contents(v73);
      }

      else
      {
        re::FixedArray<BOOL>::init<>(&v76, *this, v23);
        v25 = v78;
      }

      v30 = 0;
      v31 = *(v7 + 16);
      v33 = *(v7 + 40);
      v32 = *(v7 + 48);
      v34 = (*(v7 + 8) + 4);
      while (v31 != v30)
      {
        *&v35 = *(v34 - 1);
        if (v32)
        {
          v35 = v35;
          if (v32 <= v35)
          {
            goto LABEL_110;
          }

          LODWORD(v35) = *(v33 + 4 * v35);
        }

        v36 = *v34;
        v34 += 2;
        *(v25 + 4 * v30++) = ((v36 * 4194300.0) + 0.5) | (v35 << 22);
        if (v18 == v30)
        {
          goto LABEL_63;
        }
      }

      re::internal::assertLog(6, v26, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v31, v31);
      _os_crash();
      __break(1u);
LABEL_110:
      re::internal::assertLog(6, v26, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v35, v32);
      _os_crash();
      __break(1u);
      goto LABEL_111;
    }

    v27 = (8 * v18);
    if (*(v7 + 48))
    {
      break;
    }

    v37 = *(v7 + 8);
    v38 = *this;
    v64[0] = v37;
    v64[1] = v27;
    v66 = 0;
    v67 = 0;
    v65 = 0;
    re::FixedArray<BOOL>::init<>(&v65, v38, v27);
    re::FixedArray<unsigned char>::copy(&v65, v64);
    re::FixedArray<float>::operator=(&v76, &v65);
    if (v65 && v66)
    {
      (*(*v65 + 40))();
    }

    if (a2)
    {
      v39 = [*a3 newBufferWithBytes:v37 length:v27 options:0];
      v65 = v39;
      v68 = 0;
      LODWORD(v69) = 0;
      HIDWORD(v69) = [v39 length];
      std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v73, &v65);
      v75 = v69;
      if (v68 != -1)
      {
        (off_1F5D0A000[v68])(v64, &v65);
      }

      v68 = -1;
      if (v39)
      {
      }
    }

LABEL_65:
    if (!v17)
    {
      v50 = v61;
      if (a2)
      {
        v51 = [*a3 newBufferWithBytes:*(v7 + 24) length:4 * *(v7 + 32) options:0];
        v65 = v51;
        v68 = 0;
        LODWORD(v69) = 0;
        HIDWORD(v69) = [v51 length];
        std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v70, &v65);
        v72 = v69;
        if (v68 != -1)
        {
          (off_1F5D0A000[v68])(v64, &v65);
        }

        v68 = -1;
        if (v51)
        {
        }

        v48 = 0;
        v49 = 0;
      }

      else
      {
        v49 = *(v7 + 24);
        v48 = 4 * *(v7 + 32);
      }

      goto LABEL_67;
    }

LABEL_66:
    v48 = 0;
    v49 = 0;
    v50 = v61;
LABEL_67:
    *(v8 + 4) = v22;
    *(v8 + 5) = v17;
    re::FixedArray<float>::operator=((v8 + 8), &v76);
    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v8 + 32, v73);
    *(v8 + 64) = v75;
    *(v8 + 72) = v49;
    *(v8 + 80) = v48;
    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v8 + 88, v70);
    *(v8 + 120) = v72;
    if (v71 != -1)
    {
      (off_1F5D0A000[v71])(&v65, v70);
    }

    if (v74 != -1)
    {
      (off_1F5D0A000[v74])(v70, v73);
    }

    if (v76)
    {
      if (v77)
      {
        (*(*v76 + 40))(v76, v78);
      }
    }

    if (++v6 == v50)
    {
      return;
    }
  }

  if (a2)
  {
    v28 = [*a3 newBufferWithLength:8 * v18 options:0];
    v65 = v28;
    v68 = 0;
    LODWORD(v69) = 0;
    HIDWORD(v69) = [v28 length];
    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v73, &v65);
    v75 = v69;
    if (v68 != -1)
    {
      (off_1F5D0A000[v68])(v64, &v65);
    }

    v68 = -1;
    if (v28)
    {
    }

    v29 = re::BufferSlice::contents(v73);
  }

  else
  {
    re::FixedArray<BOOL>::init<>(&v76, *this, 8 * v18);
    v29 = v78;
  }

  v40 = *(v7 + 16);
  v42 = *(v7 + 40);
  v41 = *(v7 + 48);
  v43 = (v29 + 4);
  v44 = (*(v7 + 8) + 4);
  v45 = v40;
  while (v45)
  {
    v46 = *(v44 - 1);
    if (v41 <= v46)
    {
      goto LABEL_112;
    }

    v47 = *v44;
    v44 += 2;
    *(v43 - 1) = *(v42 + 4 * v46);
    *v43 = v47;
    v43 += 2;
    --v45;
    if (!--v18)
    {
LABEL_63:
      if (a2)
      {
        re::BufferSlice::buffer(v73, v26);
      }

      goto LABEL_65;
    }
  }

LABEL_111:
  re::internal::assertLog(6, v26, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v40, v40);
  _os_crash();
  __break(1u);
LABEL_112:
  re::internal::assertLog(6, v26, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v46, v41);
  _os_crash();
  __break(1u);
}

uint64_t re::FixedArray<re::BufferSlice>::operator=(_anonymous_namespace_ *a1, uint64_t *a2)
{
  if (!*a1)
  {
    v4 = a2[1];
    if (!v4)
    {
      return a1;
    }
  }

  v5 = a2[1];
  if (*(a1 + 1) == v5)
  {
    if (v5)
    {
      v6 = *a2;
      v7 = v6 + 40 * v5;
      v8 = *(a1 + 2);
      do
      {
        std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v8, v6);
        *(v8 + 32) = *(v6 + 32);
        v6 += 40;
        v8 += 40;
      }

      while (v6 != v7);
    }

    return a1;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::SkinningModelBuilder::buildAttributeDescriptor(uint64_t *a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  re::SkinningModelBuilder::generatePreparedSkinnedMeshPartData(a1, 0, 0);
  *a2 = *(a1 + 1);
  v5 = a1[15];
  v6 = *a1;
  *(a2 + 16) = *a1;
  *(a2 + 24) = v5;
  if (v5)
  {
    if (v5 < 0x492492492492493)
    {
      v7 = (*(*v6 + 32))(v6, 56 * v5, 8);
      *(a2 + 32) = v7;
      if (!v7)
      {
        goto LABEL_24;
      }

      v9 = v5 - 1;
      if (v5 == 1)
      {
        *v7 = -1;
        *(v7 + 4) = 0;
        v11 = (v7 + 8);
        v10 = (v7 + 44);
      }

      else
      {
        v10 = (v7 + 44);
        do
        {
          *(v10 - 11) = -1;
          *(v10 - 20) = 0;
          *(v10 - 1) = 0uLL;
          *(v10 - 9) = 0uLL;
          *(v10 - 5) = 0uLL;
          *v10 = 0x7FFFFFFF;
          v10 += 14;
          --v9;
        }

        while (v9);
        *(v10 - 11) = -1;
        *(v10 - 20) = 0;
        v11 = v10 - 9;
      }

      v12 = 0;
      v13 = 0;
      v11[1] = 0u;
      v11[2] = 0u;
      *v11 = 0u;
      *v10 = 0x7FFFFFFF;
      while (1)
      {
        v14 = re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::operator[]((a1 + 10), v13);
        v15 = *(a2 + 24);
        if (v15 <= v13)
        {
          break;
        }

        v16 = v14;
        v17 = *(a2 + 32) + v12;
        *v17 = *v14;
        *(v17 + 4) = *(v14 + 4);
        re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v17 + 8, *a1, 3);
        v18 = 8;
        if (*(v17 + 4))
        {
          v18 = 4;
        }

        *v24 = 0xA7268F0C3B45D55ELL;
        *&v24[8] = "skinningInfluences";
        v20 = *(v16 + 16);
        v19 = *(v16 + 24);
        v29[0].n128_u64[0] = v18;
        v29[0].n128_u64[1] = v19;
        v29[1].n128_u64[0] = v20;
        re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(v17 + 8, v24, v29);
        if (v24[0])
        {
          if (v24[0])
          {
          }
        }

        if (*(v16 + 80))
        {
          *v24 = 0xF98D22D8F2059642;
          *&v24[8] = "influenceEndIndices";
          v29[0].n128_u64[0] = 4;
          *(v29 + 8) = *(v16 + 72);
          re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(v17 + 8, v24, v29);
          if (v24[0])
          {
            if (v24[0])
            {
            }
          }
        }

        ++v13;
        v12 += 56;
        if (v5 == v13)
        {
          return 1;
        }
      }

      memset(v29, 0, sizeof(v29));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v24 = 136315906;
      *&v24[4] = "operator[]";
      *&v24[12] = 1024;
      *&v24[14] = 468;
      v25 = 2048;
      v26 = v13;
      v27 = 2048;
      v28 = v15;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    re::internal::assertLog(6, v4, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 56, v5);
    _os_crash();
    __break(1u);
LABEL_24:
    re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash();
    __break(1u);
  }

  return 1;
}

__n128 re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(uint64_t a1, uint64_t *a2, __n128 *a3)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v11);
  if (HIDWORD(v12) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v12, v11);
    v9 = *a2;
    *(v8 + 8) = *(v8 + 8) & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
    *(v8 + 8) = *a2 & 0xFFFFFFFFFFFFFFFELL | v9 & 1;
    *(v8 + 16) = a2[1];
    *a2 = 0;
    a2[1] = &str_67;
    v10 = a3[1].n128_u64[0];
    result = *a3;
    *(v8 + 24) = *a3;
    *(v8 + 40) = v10;
    ++*(a1 + 40);
  }

  return result;
}

double re::SkinningModelUtil::inverseBindPoseBufferForPart@<D0>(re::SkinningModelUtil *this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(this + 10);
  if (!v4 || v4[1] <= a2 || (v5 = *(v4[2] + 88 * a2 + 4), v5 == -1) || v4[4] <= v5)
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    v6 = v4[5] + 40 * v5;
    *a3 = 0;
    *(a3 + 24) = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(a3, v6);
    *(a3 + 32) = *(v6 + 32);
  }

  return result;
}

double re::SkinningModelUtil::skinnedEndIndicesBuffer@<D0>(re::SkinningModelUtil *this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(this + 10);
  if (v4 && *(v4 + 8) > a2)
  {
    v5 = *(v4 + 16) + 88 * a2;
    *a3 = 0;
    *(a3 + 24) = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(a3, v5 + 8);
    *(a3 + 32) = *(v5 + 40);
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

re **re::SkinningDeformer::init(re **result, uint64_t a2)
{
  if ((result[2] & 1) == 0)
  {
    v2 = result;
    *(result + 16) = 1;
    v3 = *(a2 + 16);
    if (v3)
    {
      if (*(v3 + 208))
      {
        v4 = 0;
        v5 = 1;
        do
        {
          v6 = 0;
          v7 = v5;
          v8 = 1;
          do
          {
            v9 = v8;
            if (re::DeformerFeatureFlags::enableStitchableDeformation(result))
            {
              re::SkinningDeformer::getPerformSkinningFunction(v2, 0, v4 & 1, v6 & 1, 0);
              re::SkinningDeformer::getPerformSkinningFunction(v2, 1, v4 & 1, v6 & 1, 0);
              re::SkinningDeformer::getPerformSkinningFunction(v2, 2, v4 & 1, v6 & 1, 0);
              result = re::SkinningDeformer::getPerformSkinningFunction(v2, 3, v4 & 1, v6 & 1, 0);
            }

            else
            {
              LODWORD(v17) = 0;
              re::VertexFormatInfo::setVertexFormat(v16, 0xC, 0x1Eu);
              re::SkinningDeformer::getPerformSkinningPipeline(v2, 0, v17, 0, 0, 0, v4 & 1, v6 & 1, 0);
              LODWORD(v17) = 0;
              re::VertexFormatInfo::setVertexFormat(v16, 0xC, 0x1Eu);
              v15 = 0;
              re::VertexFormatInfo::setVertexFormat(v14, 0xC, 0x1Eu);
              re::SkinningDeformer::getPerformSkinningPipeline(v2, 1u, v17, v15, 0, 0, v4 & 1, v6 & 1, 0);
              LODWORD(v17) = 0;
              re::VertexFormatInfo::setVertexFormat(v16, 0xC, 0x1Eu);
              v15 = 0;
              re::VertexFormatInfo::setVertexFormat(v14, 0xC, 0x1Eu);
              v13 = 0;
              re::VertexFormatInfo::setVertexFormat(v12, 0xC, 0x1Eu);
              re::SkinningDeformer::getPerformSkinningPipeline(v2, 2u, v17, v15, v13, 0, v4 & 1, v6 & 1, 0);
              LODWORD(v17) = 0;
              re::VertexFormatInfo::setVertexFormat(v16, 0xC, 0x1Eu);
              v15 = 0;
              re::VertexFormatInfo::setVertexFormat(v14, 0xC, 0x1Eu);
              v13 = 0;
              re::VertexFormatInfo::setVertexFormat(v12, 0xC, 0x1Eu);
              v11 = 0;
              re::VertexFormatInfo::setVertexFormat(v10, 0xC, 0x1Eu);
              result = re::SkinningDeformer::getPerformSkinningPipeline(v2, 3u, v17, v15, v13, v11, v4 & 1, v6 & 1, 0);
            }

            v8 = 0;
            v6 = 1;
          }

          while ((v9 & 1) != 0);
          v5 = 0;
          v4 = 1;
        }

        while ((v7 & 1) != 0);
      }
    }
  }

  return result;
}

char *re::SkinningDeformer::getPerformSkinningFunction(re **this, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v63 = *MEMORY[0x1E69E9840];
  v5 = (&this[4 * a2] + 2 * a3 + a4);
  if (!v5[4099])
  {
    v20[0] = 0;
    v23 = 0;
    memset(v26, 0, sizeof(v26));
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 1;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    re::DynamicString::setCapacity(&v54, 0);
    memset(v62, 0, sizeof(v62));
    v61 = 0u;
    v60 = 0u;
    v58 = 33;
    v59 = a2;
    re::DynamicArray<re::TechniqueFunctionConstant>::add(v26, &v54);
    memset(v48, 0, sizeof(v48));
    re::DynamicString::setCapacity(v48, 0);
    v53 = 0u;
    v52 = 0u;
    v51 = 0u;
    v50 = 0u;
    v49 = 65569;
    re::DynamicArray<re::TechniqueFunctionConstant>::add(v26, v48);
    memset(v42, 0, sizeof(v42));
    re::DynamicString::setCapacity(v42, 0);
    v44 = 0u;
    v47 = 0u;
    v46 = 0u;
    v45 = 0u;
    LOBYTE(v44) = a3;
    v43 = 131125;
    re::DynamicArray<re::TechniqueFunctionConstant>::add(v26, v42);
    memset(v36, 0, sizeof(v36));
    re::DynamicString::setCapacity(v36, 0);
    v38 = 0u;
    v41 = 0u;
    v40 = 0u;
    v39 = 0u;
    LOBYTE(v38) = a4;
    v37 = 196661;
    re::DynamicArray<re::TechniqueFunctionConstant>::add(v26, v36);
    if (a5)
    {
      isPhysicalHardware = re::mtl::Device::isPhysicalHardware((this[1] + 208));
      if (isPhysicalHardware)
      {
        v15 = *re::graphicsLogObjects(isPhysicalHardware);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109632;
          *&buf[4] = a2;
          v32 = 1024;
          v33 = a3;
          v34 = 1024;
          LODWORD(v35) = a4;
          _os_log_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_DEFAULT, "Compiling performSkinningStitchable vfbc=%d di=%d pi=%d", buf, 0x14u);
        }

        re::DynamicString::format("vfbc=%d di=%d pi=%d", buf, a2, a3, a4);
        isPhysicalHardware = *buf;
        if (*buf && (v32 & 1) != 0)
        {
          isPhysicalHardware = (*(**buf + 40))();
        }
      }
    }

    MetalFunction = re::getOrCreateMetalFunction(this[1], buf, v20, v16);
    NS::SharedPtr<MTL::Buffer>::operator=(v5 + 4099, MetalFunction);
    if (!v5[4099])
    {
      re::internal::assertLog(4, v18, "assertion failure: '%s' (%s:line %i) ", "function->isValid()", "getPerformSkinningFunction", 1330);
      _os_crash();
      __break(1u);
    }

    if (*buf && (v32 & 1) != 0)
    {
      (*(**buf + 40))();
    }

    if (v36[0] && (v36[1] & 1) != 0)
    {
      (*(*v36[0] + 40))();
    }

    if (v42[0] && (v42[1] & 1) != 0)
    {
      (*(*v42[0] + 40))();
    }

    if (v48[0] && (v48[1] & 1) != 0)
    {
      (*(*v48[0] + 40))();
    }

    if (v54 && (v55 & 1) != 0)
    {
      (*(*v54 + 40))(v54, v56);
    }

    re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v26);
    if (v23 == 1 && v24)
    {
      if (BYTE8(v24))
      {
        (*(*v24 + 40))();
      }

      v24 = 0u;
      v25 = 0u;
    }

    if (v20[0] == 1 && v21 && (v22 & 1) != 0)
    {
      (*(*v21 + 40))();
    }
  }

  return (v5 + 4099);
}

void **re::SkinningDeformer::getPerformSkinningPipeline(re::SkinningDeformer *this, unsigned int a2, const re::VertexFormatInfo *a3, const re::VertexFormatInfo *a4, const re::VertexFormatInfo *a5, const re::VertexFormatInfo *a6, unsigned int a7, unsigned int a8, BOOL a9)
{
  v73 = *MEMORY[0x1E69E9840];
  v9 = a3 | (4 * a4) | (16 * a5) | (a6 << 6);
  v10 = this + 0x2000 * a2 + 4096 * a7 + 2048 * a8 + 8 * v9;
  v12 = *(v10 + 3);
  v11 = (v10 + 24);
  if (!v12)
  {
    v27 = 0;
    v30 = 0;
    memset(v33, 0, sizeof(v33));
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 1;
    v38 = 0;
    v39 = 0;
    v66 = 0u;
    v67 = 0u;
    re::DynamicString::setCapacity(&v66, 0);
    memset(v72, 0, sizeof(v72));
    v71 = 0u;
    v70 = 0u;
    v68 = 33;
    v69 = a2;
    re::DynamicArray<re::TechniqueFunctionConstant>::add(v33, &v66);
    memset(v60, 0, sizeof(v60));
    re::DynamicString::setCapacity(v60, 0);
    memset(v65, 0, sizeof(v65));
    v64 = 0u;
    v63 = 0u;
    v62 = v9;
    v61 = 65569;
    re::DynamicArray<re::TechniqueFunctionConstant>::add(v33, v60);
    memset(v54, 0, sizeof(v54));
    re::DynamicString::setCapacity(v54, 0);
    v56 = 0u;
    v59 = 0u;
    v58 = 0u;
    v57 = 0u;
    LOBYTE(v56) = a7;
    v55 = 131125;
    re::DynamicArray<re::TechniqueFunctionConstant>::add(v33, v54);
    memset(v48, 0, sizeof(v48));
    re::DynamicString::setCapacity(v48, 0);
    v50 = 0u;
    v53 = 0u;
    v52 = 0u;
    v51 = 0u;
    LOBYTE(v50) = a8;
    v49 = 196661;
    re::DynamicArray<re::TechniqueFunctionConstant>::add(v33, v48);
    if (a9)
    {
      isPhysicalHardware = re::mtl::Device::isPhysicalHardware((*(this + 1) + 208));
      if (isPhysicalHardware)
      {
        v23 = *re::graphicsLogObjects(isPhysicalHardware);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109888;
          v41 = a2;
          v42 = 1024;
          v43 = v9;
          v44 = 1024;
          v45 = a7;
          v46 = 1024;
          v47 = a8;
          _os_log_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_DEFAULT, "Compiling performSkinning vfbc=%d ci=%d di=%d pi=%d", buf, 0x1Au);
        }
      }
    }

    ComputePipelineState = re::getOrCreateComputePipelineState(*(this + 1), &v25);
    NS::SharedPtr<MTL::Buffer>::operator=(v11, ComputePipelineState);
    if (v48[0] && (v48[1] & 1) != 0)
    {
      (*(*v48[0] + 40))();
    }

    if (v54[0] && (v54[1] & 1) != 0)
    {
      (*(*v54[0] + 40))();
    }

    if (v60[0] && (v60[1] & 1) != 0)
    {
      (*(*v60[0] + 40))();
    }

    if (v66 && (BYTE8(v66) & 1) != 0)
    {
      (*(*v66 + 40))(v66, v67);
    }

    if (v38)
    {

      v38 = 0;
    }

    re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v33);
    if (v30 == 1 && v31)
    {
      if (BYTE8(v31))
      {
        (*(*v31 + 40))();
      }

      v31 = 0u;
      v32 = 0u;
    }

    if (v27 == 1 && v28)
    {
      if (BYTE8(v28))
      {
        (*(*v28 + 40))();
      }

      v29 = 0u;
      v28 = 0u;
    }

    if (v25 && (v26 & 1) != 0)
    {
      (*(*v25 + 40))();
    }
  }

  return v11;
}

re::DeformerFeatureFlags *re::SkinningDeformer::addDeformationInstance@<X0>(re::DeformerFeatureFlags *result@<X0>, _BYTE *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a2)
  {
    v5 = 0;
  }

  else if (*(*(result + 1) + 304))
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  v6 = 2;
  if (a2[1])
  {
    v6 = 30;
  }

  *a4 = 0xFFFFFFFFLL;
  *(a4 + 8) = v6;
  *(a4 + 16) = v6;
  LODWORD(v6) = *a3;
  if (v6 == 255)
  {
    v6 = *(a3 + 2);
    if (v6)
    {
      v6 = *(v6 + 208);
      if (v6)
      {
        if (v5 && (result = re::DeformerFeatureFlags::enableStitchableDeformation(result), !result))
        {
          LOBYTE(v6) = 1;
        }

        else
        {
          LOBYTE(v6) = v5;
        }
      }
    }
  }

  *(a4 + 24) = v6;
  *(a4 + 32) = -1;
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  return result;
}

void *re::SkinningDeformer::allocateBuffers(re::SkinningDeformer *a1, void *a2, unint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = a5;
  v162 = *MEMORY[0x1E69E9840];
  v106 = *a5;
  v107 = *(*a5 + 48);
  if (a4 == 1)
  {
    v9 = (*(*a2 + 32))(a2, 56, 8);
    *v9 = 0;
    *(v9 + 8) = 0;
    *(v9 + 16) = 1;
    *(v9 + 32) = 0;
    *(v9 + 40) = 0;
    *(v9 + 24) = 0;
    *(v9 + 48) = 0;
    v89 = v9;
  }

  else
  {
    v89 = 0;
  }

  if (v107)
  {
    v10 = 0;
    v110 = v6;
    v100 = a3;
    do
    {
      v11 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v106 + 8, v10);
      v12 = *(v11 + 8);
      v13 = re::BucketArray<re::ActiveDeformation,8ul>::operator[](v6[1], v12);
      v15 = *(v11 + 16);
      v16 = v13[42];
      if (v16 <= v15)
      {
        goto LABEL_57;
      }

      v17 = v13;
      v18 = *(v13[44] + 40);
      if (v18)
      {
        v19 = v6[6];
        if (v19 <= v12)
        {
          goto LABEL_58;
        }

        v108 = v10;
        a3 = v13[41];
        v20 = v6[5];
        v98 = v13[46];
        v21 = re::DataArray<re::MeshModel>::get(*(*(a1 + 1) + 32) + 8, *(v98 + 16));
        v5 = *(v17 + 196);
        v10 = *(v21 + 56);
        if (v10 <= v5)
        {
LABEL_59:
          *v149 = 0;
          v160 = 0u;
          v161 = 0u;
          v159 = 0u;
          memset(buf, 0, sizeof(buf));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v144 = 136315906;
          *&v144[4] = "operator[]";
          *&v144[12] = 1024;
          *&v144[14] = 476;
          *&v144[18] = 2048;
          *&v144[20] = v5;
          *&v144[28] = 2048;
          *&v144[30] = v10;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_60:
          *v149 = 0;
          v160 = 0u;
          v161 = 0u;
          v159 = 0u;
          memset(buf, 0, sizeof(buf));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v144 = 136315906;
          *&v144[4] = "operator[]";
          *&v144[12] = 1024;
          *&v144[14] = 476;
          *&v144[18] = 2048;
          *&v144[20] = v15;
          *&v144[28] = 2048;
          *&v144[30] = a3;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_61:
          *v149 = 0;
          v160 = 0u;
          v161 = 0u;
          v159 = 0u;
          memset(buf, 0, sizeof(buf));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v144 = 136315906;
          *&v144[4] = "operator[]";
          *&v144[12] = 1024;
          *&v144[14] = 476;
          *&v144[18] = 2048;
          *&v144[20] = v15;
          *&v144[28] = 2048;
          *&v144[30] = a3;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_62:
          *&v143[1] = 0;
          v160 = 0u;
          v161 = 0u;
          v159 = 0u;
          memset(buf, 0, sizeof(buf));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v150 = 136315906;
          v151 = "operator[]";
          v152 = 1024;
          v153 = 858;
          v154 = 2048;
          v155 = v5;
          v156 = 2048;
          v157 = a3;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_63:
          re::internal::assertLog(5, v48, "assertion failure: '%s' (%s:line %i) Unexpected vertex buffer index: %zu", "!Unreachable code", "allocateBuffers", 833, a3);
          _os_crash();
          __break(1u);
LABEL_64:
          std::__throw_bad_variant_access[abi:nn200100]();
LABEL_65:
          re::internal::assertLog(5, v26, "assertion failure: '%s' (%s:line %i) Unsupported execution mode: %u.", "!Unreachable code", "allocateBuffers", 887, v28);
          _os_crash();
          __break(1u);
        }

        v22 = v21;
        v23 = (v20 + 312 * v12);
        v24 = *(v21 + 64);
        v12 = *(a3 + (v15 << 6) + 16) & *v23;
        buf[0] = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v23, 1u);
        v25 = *(v23[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v23 + 7, buf) + 20);
        buf[0] = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v23, 1u);
        v27 = *(v23[16] + 20 * re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v23 + 15, buf) + 4);
        v105 = v25;
        v109 = v25 / v27;
        v28 = a4;
        if (a4)
        {
          if (a4 != 1)
          {
            goto LABEL_65;
          }

          v29 = *(v17[43] + 80);
          v15 = *(v17 + 196);
          a3 = v29[1];
          if (a3 <= v15)
          {
            goto LABEL_60;
          }

          v30 = v29[2] + 88 * *(v17 + 196);
          v15 = *(v30 + 4);
          a3 = v29[4];
          if (a3 <= v15)
          {
            goto LABEL_61;
          }

          v102 = v27;
          v31 = (v24 + 544 * v5);
          v5 = v29[5] + 40 * v15;
          v103 = (v29[2] + 88 * *(v17 + 196));
          a3 = *(v30 + 1);
          v32 = *(v5 + 36) >> 6;
          *&v149[4] = v31[22];
          *&v149[20] = v31[23];
          *&v149[36] = v31[24];
          v91 = v31;
          *&v149[52] = v31[25];
          v15 = v100;
          re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(v100, 0x50uLL, 0x10uLL, buf);
          v95 = *&buf[16];
          v96 = *&buf[8];
          v33 = *buf + *&buf[8];
          *v33 = a3;
          *(v33 + 4) = v32;
          *(v33 + 8) = v109;
          *(v33 + 12) = *v149;
          *(v33 + 76) = *&v149[64];
          *(v33 + 60) = *&v149[48];
          *(v33 + 44) = *&v149[32];
          *(v33 + 28) = *&v149[16];
          v97 = v5;
          v34 = *(v5 + 36);
          if (v18[9] == v34)
          {
            v35 = v18[6];
            if (v35 == -1)
            {
              goto LABEL_64;
            }

            v94 = v18[8];
            *buf = v144;
            v36 = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNS6_10BufferViewC1ERKNS6_11BufferSliceEmmE3__0ZNS9_C1ESC_mmE3__1EEEEEJRKNS0_6__implIJN2NS9SharedPtrIN3MTL6BufferEEENS6_20BufferSliceSourceCPUEEEEEEEDcOT_DpOT0____fmatrix[v35])(buf, v18);
            v92 = v37;
            v93 = v36;
            v90 = HIDWORD(v37);
          }

          else
          {
            re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(v100, *(v5 + 36), 0x10uLL, v144);
            v40 = *&v144[8];
            v34 = *&v144[12];
            if (*&v144[12] >= 0x40u)
            {
              v41 = (*v144 + *&v144[8]);
              v42 = (*&v144[12] >> 6) + 1;
              do
              {
                *v41 = xmmword_1E3047670;
                v41[1] = xmmword_1E3047680;
                v41[2] = xmmword_1E30476A0;
                v41[3] = xmmword_1E30474D0;
                v41 += 4;
                --v42;
              }

              while (v42 > 1);
            }

            v93 = *&v144[16];
            v94 = v40;
            isSkinningAssignLoggingEnabled = re::DeformerFeatureFlags::isSkinningAssignLoggingEnabled(v39);
            if (isSkinningAssignLoggingEnabled)
            {
              v45 = *re::graphicsLogObjects(isSkinningAssignLoggingEnabled);
              if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
              {
                v83 = a2[3] & 0xFFFFFFFFFFFFFFFLL;
                v84 = *(v98 + 8);
                v85 = *(v22 + 8);
                v86 = *(v91 + 62);
                *buf = 134218754;
                *&buf[4] = v83;
                *&buf[12] = 2080;
                *&buf[14] = v84;
                *&buf[22] = 2080;
                *&buf[24] = v85;
                LOWORD(v159) = 2080;
                *(&v159 + 2) = v86;
                _os_log_error_impl(&dword_1E1C61000, v45, OS_LOG_TYPE_ERROR, "[DeformerLogging] Frame[%llu]: Mesh Instance[%s] Model[%s] Part[%s] missing pose data.", buf, 0x2Au);
              }
            }

            LODWORD(v90) = v44;
            v92 = 0;
          }

          v99 = v34;
          v142 = 0;
          v143[0] = 0;
          v140 = 0;
          memset(v141, 0, sizeof(v141));
          v138 = 0;
          memset(v139, 0, sizeof(v139));
          v135 = 0;
          v136 = 0;
          memset(v137, 0, sizeof(v137));
          *&v133 = 0;
          DWORD2(v133) = 0;
          v134 = 0;
          *&v131 = 0;
          DWORD2(v131) = 0;
          v132 = 0;
          *&v129 = 0;
          DWORD2(v129) = 0;
          v130 = 0;
          *&v127 = 0;
          DWORD2(v127) = 0;
          v128 = 0;
          *&v125 = 0;
          DWORD2(v125) = 0;
          v126 = 0;
          *&v123 = 0;
          DWORD2(v123) = 0;
          v124 = 0;
          *&v121 = 0;
          DWORD2(v121) = 0;
          v122 = 0;
          *v144 = &v139[1];
          *&v144[8] = &v129;
          *&v144[16] = &v127;
          *&v144[24] = &v137[1];
          *&v144[32] = &v125;
          v145 = &v123;
          v146 = &v135;
          v147 = 0;
          v148 = &v121;
          v46 = 0;
          if (v12)
          {
            a3 = __clz(__rbit64(v12));
            while (1)
            {
              buf[0] = a3;
              re::DeformationVertexBufferState::ensureVertexBufferInitialized(v23, a3);
              v47 = v23[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v23 + 7, buf);
              buf[0] = a3;
              re::DeformationVertexBufferState::ensureVertexBufferInitialized(v23, a3);
              *v119 = *(v23[16] + 20 * re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v23 + 15, buf) + 4);
              if (a3 - 2 >= 3)
              {
                break;
              }

              v15 = v46 + 1;
              v49 = &v144[24 * v46];
              v50 = v49[1];
              v5 = v49[2];
              re::VertexFormatInfo::setVertexFormat(*v49, LOWORD(v119[0]), BYTE4(v119[1]));
              ++v46;
              if (v50)
              {
                goto LABEL_37;
              }

LABEL_38:
              v52 = re::DeformationBufferAllocator::alloc(v17[45], v110[2], a3, v119[0], v119[1], *(v11 + 16), *(v47 + 20));
              v53 = v17[45];
              v54 = *(v11 + 16);
              v10 = *(v53 + 8);
              if (v10 <= v54)
              {
                v160 = 0u;
                v161 = 0u;
                v159 = 0u;
                memset(buf, 0, sizeof(buf));
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v150 = 136315906;
                v151 = "operator[]";
                v152 = 1024;
                v153 = 476;
                v154 = 2048;
                v155 = v54;
                v156 = 2048;
                v157 = v10;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_57:
                re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v15, v16);
                _os_crash();
                __break(1u);
LABEL_58:
                re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v12, v19);
                _os_crash();
                __break(1u);
                goto LABEL_59;
              }

              v55 = re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::operator[](*(v53 + 16) + 72 * *(v11 + 16) + 16, v52);
              re::DeformationVertexBufferState::setOutputBuffer(v23, a3, 1, (v55 + 24), v119);
              re::BufferSlice::buffer(v55 + 24, v56);
              v57 = *(v55 + 56);
              *v5 = *(v55 + 24);
              *(v5 + 8) = 0;
              *(v5 + 16) = v57;
              if (a3 != 63)
              {
                v38 = ((-2 << a3) & v12) == 0;
                a3 = __clz(__rbit64((-2 << a3) & v12));
                if (!v38)
                {
                  continue;
                }
              }

              goto LABEL_42;
            }

            if (a3 != 1)
            {
              goto LABEL_63;
            }

            re::VertexFormatInfo::setVertexFormat(&v141[1], LOWORD(v119[0]), BYTE4(v119[1]));
            v5 = &v131;
            v50 = &v133;
LABEL_37:
            v51 = *(v47 + 16);
            *v50 = *(v47 + 24);
            *(v50 + 2) = 0;
            *(v50 + 2) = v51;
            goto LABEL_38;
          }

LABEL_42:
          if (v105 >= v102)
          {
            PerformSkinningPipeline = re::SkinningDeformer::getPerformSkinningPipeline(a1, v46, v143[0], v141[0], v139[0], v137[0], v103[1] == 0, *v103, 1);
            if (*PerformSkinningPipeline)
            {
              v59 = *(v103 + 18);
              if (v59 == -1)
              {
                goto LABEL_64;
              }

              v60 = PerformSkinningPipeline;
              v61 = *(v103 + 10);
              *buf = &v150;
              v62 = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNS6_10BufferViewC1ERKNS6_11BufferSliceEmmE3__0ZNS9_C1ESC_mmE3__1EEEEEJRKNS0_6__implIJN2NS9SharedPtrIN3MTL6BufferEEENS6_20BufferSliceSourceCPUEEEEEEEDcOT_DpOT0____fmatrix[v59])(buf, v103 + 48);
              v64 = *(v103 + 8);
              if (v64 == -1)
              {
                goto LABEL_64;
              }

              v65 = v62;
              v66 = v63;
              v67 = *(v103 + 5);
              *buf = &v150;
              v68 = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNS6_10BufferViewC1ERKNS6_11BufferSliceEmmE3__0ZNS9_C1ESC_mmE3__1EEEEEJRKNS0_6__implIJN2NS9SharedPtrIN3MTL6BufferEEENS6_20BufferSliceSourceCPUEEEEEEEDcOT_DpOT0____fmatrix[v64])(buf, v103 + 8);
              v70 = *(v97 + 24);
              if (v70 == -1)
              {
                goto LABEL_64;
              }

              v71 = v68;
              v72 = v69;
              v73 = *(v97 + 32);
              *buf = &v150;
              v74 = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNS6_10BufferViewC1ERKNS6_11BufferSliceEmmE3__0ZNS9_C1ESC_mmE3__1EEEEEJRKNS0_6__implIJN2NS9SharedPtrIN3MTL6BufferEEENS6_20BufferSliceSourceCPUEEEEEEEDcOT_DpOT0____fmatrix[v70])(buf, v97);
              v76 = v75;
              *v119 = v129;
              v120 = v130;
              v117 = v127;
              v118 = v128;
              v115 = v125;
              v116 = v126;
              v114 = v124;
              v113 = v123;
              v112 = v122;
              v77 = v89;
              v78 = v89[5];
              a3 = v89[1];
              v111 = v121;
              if (v78 + 1 > 8 * a3)
              {
                v77 = v89;
                a3 = v89[1];
              }

              v5 = v78 >> 3;
              if (a3 <= v78 >> 3)
              {
                goto LABEL_62;
              }

              v79 = v89 + 3;
              if ((v77[2] & 1) == 0)
              {
                v79 = v77[4];
              }

              v80 = v79[v5];
              ++v77[5];
              ++*(v77 + 12);
              v81 = v80 + 304 * (v78 & 7);
              *v81 = v60;
              *(v81 + 8) = v109;
              *(v81 + 16) = v65;
              *(v81 + 24) = v66;
              *(v81 + 32) = v61;
              *(v81 + 40) = v71;
              *(v81 + 48) = v72;
              *(v81 + 56) = v67;
              *(v81 + 64) = v133;
              *(v81 + 80) = v134;
              *(v81 + 88) = v131;
              *(v81 + 104) = v132;
              *(v81 + 112) = v74;
              *(v81 + 120) = v76;
              *(v81 + 128) = v73;
              *(v81 + 136) = v93;
              *(v81 + 144) = v92;
              *(v81 + 148) = v90;
              *(v81 + 152) = v94;
              *(v81 + 156) = v99;
              *(v81 + 160) = v95;
              *(v81 + 168) = 0;
              *(v81 + 176) = v96;
              v82 = *v119;
              *(v81 + 200) = v120;
              *(v81 + 184) = v82;
              *(v81 + 224) = v118;
              *(v81 + 208) = v117;
              *(v81 + 248) = v116;
              *(v81 + 232) = v115;
              *(v81 + 272) = v114;
              *(v81 + 256) = v113;
              *(v81 + 296) = v112;
              *(v81 + 280) = v111;
            }
          }

          v6 = v110;
          v10 = v108;
        }

        else
        {
          v6 = v110;
          a3 = v100;
          v10 = v108;
          if (v12)
          {
            v5 = __clz(__rbit64(v12));
            do
            {
              re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(v100, 4 * (v109 + 2 * v109), 0x10uLL, buf);
              *&v144[4] = 257;
              *v144 = 65548;
              v144[12] = 30;
              *&v144[8] = 0;
              re::DeformationVertexBufferState::setOutputBuffer(v23, v5, 0, buf, v144);
              if (v5 == 63)
              {
                break;
              }

              v38 = ((-2 << v5) & v12) == 0;
              v5 = __clz(__rbit64((-2 << v5) & v12));
            }

            while (!v38);
          }
        }
      }

      ++v10;
    }

    while (v10 != v107);
  }

  return v89;
}

uint64_t re::VertexFormatInfo::setVertexFormat(uint64_t this, const VertexBufferFormat *a2, unsigned __int8 a3)
{
  *(this + 8) = a2;
  v5 = re::unpackHalf3Data;
  if (a3 > 0x19u)
  {
    if (a3 == 26)
    {
      v6 = 1;
      goto LABEL_10;
    }

    if (a3 == 30)
    {
      v6 = 0;
      v5 = re::unpackFloat3Data;
      goto LABEL_10;
    }
  }

  else
  {
    if (a3 == 8)
    {
      v6 = 2;
      v5 = re::unpackUChar3NormalizedData;
      goto LABEL_10;
    }

    if (a3 == 11)
    {
      v6 = 3;
      v5 = re::unpackChar3NormalizedData;
LABEL_10:
      *this = v5;
      *(this + 12) = v6;
      return this;
    }
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unsupported format", "!Unreachable code", "setVertexFormat", 142, v3, v4);
  this = _os_crash();
  __break(1u);
  return this;
}

void re::SkinningDeformer::stitchedFunctionParameters(uint64_t a1, uint64_t a2, re::PerFrameAllocatorGPU **a3, uint64_t *a4, void *a5)
{
  v82 = *MEMORY[0x1E69E9840];
  v6 = *a4;
  v74 = *(*a4 + 48);
  if (v74)
  {
    v7 = a4;
    v8 = 0;
    v62 = *a4;
    while (1)
    {
      v9 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v6 + 8, v8);
      v10 = *(v9 + 8);
      v11 = re::BucketArray<re::ActiveDeformation,8ul>::operator[](v7[1], v10);
      v13 = *(v9 + 16);
      v14 = v11[42];
      if (v14 <= v13)
      {
        break;
      }

      v5 = v11;
      v15 = *(v11[44] + 40);
      if (v15)
      {
        v16 = v7[6];
        if (v16 <= v10)
        {
          goto LABEL_42;
        }

        v17 = (v7[5] + 312 * v10);
        if ((*v17 & 2) != 0)
        {
          v18 = v11[41];
          v65 = v11[46];
          v19 = re::DataArray<re::MeshModel>::get(*(*(a1 + 8) + 32) + 8, *(v65 + 16));
          v9 = *(v5 + 392);
          v6 = *(v19 + 56);
          if (v6 <= v9)
          {
            goto LABEL_43;
          }

          v20 = *(*(v5 + 344) + 80);
          v6 = v20[1];
          if (v6 <= v9)
          {
            goto LABEL_44;
          }

          v21 = (v20[2] + 88 * *(v5 + 392));
          v5 = *(v21 + 1);
          v22 = v20[4];
          if (v22 <= v5)
          {
            goto LABEL_45;
          }

          v23 = v19;
          v70 = v18;
          v71 = v17;
          v24 = *(v19 + 64) + 544 * v9;
          v25 = v20[5] + 40 * v5;
          v26 = v21[1];
          v27 = *(v25 + 36) >> 6;
          *(v81 + 4) = *(v24 + 352);
          *(&v81[1] + 4) = *(v24 + 368);
          *(&v81[2] + 4) = *(v24 + 384);
          *(&v81[3] + 4) = *(v24 + 400);
          re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(a3, 0x50uLL, 0x10uLL, buf);
          v68 = *&buf[16];
          v69 = *&buf[8];
          v28 = *buf + *&buf[8];
          *v28 = v26;
          *(v28 + 4) = v27;
          *(v28 + 8) = 0;
          *(v28 + 12) = v81[0];
          *(v28 + 76) = v81[4];
          *(v28 + 60) = v81[3];
          *(v28 + 44) = v81[2];
          *(v28 + 28) = v81[1];
          v29 = *(v25 + 36);
          if (v15[9] == v29)
          {
            v30 = v15[6];
            if (v30 == -1)
            {
              goto LABEL_47;
            }

            v67 = v15[8];
            *buf = &v75;
            v31 = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNS6_10BufferViewC1ERKNS6_11BufferSliceEmmE3__0ZNS9_C1ESC_mmE3__1EEEEEJRKNS0_6__implIJN2NS9SharedPtrIN3MTL6BufferEEENS6_20BufferSliceSourceCPUEEEEEEEDcOT_DpOT0____fmatrix[v30])(buf, v15);
            v33 = v32;
            v66 = HIDWORD(v32);
            v5 = 2;
          }

          else
          {
            re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(a3, *(v25 + 36), 0x10uLL, &v75);
            v35 = v76;
            v29 = v77;
            if (v77 >= 0x40)
            {
              v36 = &v75[v76];
              v37 = (v77 >> 6) + 1;
              do
              {
                *v36 = xmmword_1E3047670;
                *(v36 + 1) = xmmword_1E3047680;
                *(v36 + 2) = xmmword_1E30476A0;
                *(v36 + 3) = xmmword_1E30474D0;
                v36 += 64;
                --v37;
              }

              while (v37 > 1);
            }

            v67 = v35;
            v31 = v78;
            isSkinningAssignLoggingEnabled = re::DeformerFeatureFlags::isSkinningAssignLoggingEnabled(v34);
            v5 = 2;
            if (isSkinningAssignLoggingEnabled)
            {
              v40 = *re::graphicsLogObjects(isSkinningAssignLoggingEnabled);
              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                v57 = *(a2 + 24) & 0xFFFFFFFFFFFFFFFLL;
                v58 = *(v65 + 8);
                v59 = *(v23 + 8);
                v60 = *(v24 + 496);
                *buf = 134218754;
                *&buf[4] = v57;
                *&buf[12] = 2080;
                *&buf[14] = v58;
                *&buf[22] = 2080;
                *&buf[24] = v59;
                *&buf[32] = 2080;
                *&buf[34] = v60;
                _os_log_error_impl(&dword_1E1C61000, v40, OS_LOG_TYPE_ERROR, "[DeformerLogging] Frame[%llu]: Mesh Instance[%s] Model[%s] Part[%s] missing pose data.", buf, 0x2Au);
              }
            }

            v33 = 0;
            LODWORD(v66) = v39;
          }

          v41 = *(v70 + (v13 << 6) + 16) & *v71;
          if ((v41 & 0x10) != 0)
          {
            v42 = 3;
          }

          else
          {
            v42 = 2;
          }

          if ((v41 & 8) == 0)
          {
            v42 = 1;
          }

          if ((v41 & 4) != 0)
          {
            v43 = v42;
          }

          else
          {
            v43 = 0;
          }

          PerformSkinningFunction = re::SkinningDeformer::getPerformSkinningFunction(a1, v43, v21[1] == 0, *v21, 1);
          if (!*PerformSkinningFunction)
          {
            goto LABEL_48;
          }

          v46 = a5[1];
          if (v46 <= v8)
          {
            goto LABEL_46;
          }

          v47 = (*a5 + 48 * v8);
          *v47 = PerformSkinningFunction;
          if (v47[2] <= 5)
          {
            re::DynamicArray<re::Pair<BOOL,re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription,true>>::setCapacity(v47 + 1, 6uLL);
          }

          *buf = 1;
          memset(&buf[8], 0, 32);
          re::DynamicArray<re::Pair<BOOL,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription,true>>::add((v47 + 1), buf);
          *buf = 2;
          *&buf[8] = 0;
          *&buf[16] = 0;
          *&buf[24] = *(v25 + 32);
          v48 = *(v25 + 24);
          if (v48 == -1)
          {
            goto LABEL_47;
          }

          v75 = &v79;
          *&buf[8] = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNS6_10BufferViewC1ERKNS6_11BufferSliceEmmE3__0ZNS9_C1ESC_mmE3__1EEEEEJRKNS0_6__implIJN2NS9SharedPtrIN3MTL6BufferEEENS6_20BufferSliceSourceCPUEEEEEEEDcOT_DpOT0____fmatrix[v48])(&v75, v25);
          *&buf[16] = v49;
          *&buf[32] = 1;
          re::DynamicArray<re::Pair<BOOL,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription,true>>::add((v47 + 1), buf);
          *buf = 2;
          *&buf[8] = v31;
          *&buf[16] = v33;
          *&buf[20] = v66;
          *&buf[24] = v67;
          *&buf[28] = v29;
          *&buf[32] = 1;
          re::DynamicArray<re::Pair<BOOL,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription,true>>::add((v47 + 1), buf);
          *buf = 3;
          *&buf[8] = v68;
          *&buf[16] = 0;
          *&buf[24] = v69;
          re::DynamicArray<re::Pair<BOOL,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription,true>>::add((v47 + 1), buf);
          *buf = 2;
          *&buf[8] = 0;
          *&buf[16] = 0;
          *&buf[24] = *(v21 + 10);
          v50 = *(v21 + 18);
          if (v50 == -1)
          {
            goto LABEL_47;
          }

          v75 = &v79;
          *&buf[8] = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNS6_10BufferViewC1ERKNS6_11BufferSliceEmmE3__0ZNS9_C1ESC_mmE3__1EEEEEJRKNS0_6__implIJN2NS9SharedPtrIN3MTL6BufferEEENS6_20BufferSliceSourceCPUEEEEEEEDcOT_DpOT0____fmatrix[v50])(&v75, v21 + 48);
          *&buf[16] = v51;
          *&buf[32] = 1;
          v52 = re::DynamicArray<re::Pair<BOOL,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription,true>>::add((v47 + 1), buf);
          *buf = 2;
          v53 = *(v21 + 11);
          if (v53)
          {
            v54 = *(v21 + 10);
            *&buf[8] = 0;
            *&buf[16] = 0;
            *&buf[24] = v54;
            *&buf[28] = v53;
            v55 = *(v21 + 8);
            if (v55 == -1)
            {
              goto LABEL_47;
            }

            v75 = &v79;
            *&buf[8] = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNS6_10BufferViewC1ERKNS6_11BufferSliceEmmE3__0ZNS9_C1ESC_mmE3__1EEEEEJRKNS0_6__implIJN2NS9SharedPtrIN3MTL6BufferEEENS6_20BufferSliceSourceCPUEEEEEEEDcOT_DpOT0____fmatrix[v55])(&v75, v21 + 8, v52);
            *&buf[16] = v56;
          }

          else
          {
            memset(&buf[8], 0, 24);
          }

          *&buf[32] = 1;
          re::DynamicArray<re::Pair<BOOL,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription,true>>::add((v47 + 1), buf);
          v6 = v62;
          v7 = a4;
        }
      }

      if (++v8 == v74)
      {
        return;
      }
    }

    re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, *(v9 + 16), v14);
    _os_crash();
    __break(1u);
LABEL_42:
    re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v16);
    _os_crash();
    __break(1u);
LABEL_43:
    v75 = 0;
    memset(v81, 0, sizeof(v81));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *buf = 136315906;
    *&buf[4] = "operator[]";
    *&buf[12] = 1024;
    *&buf[14] = 476;
    *&buf[18] = 2048;
    *&buf[20] = v9;
    *&buf[28] = 2048;
    *&buf[30] = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_44:
    v75 = 0;
    memset(v81, 0, sizeof(v81));
    v22 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *buf = 136315906;
    *&buf[4] = "operator[]";
    *&buf[12] = 1024;
    *&buf[14] = 476;
    *&buf[18] = 2048;
    *&buf[20] = v9;
    *&buf[28] = 2048;
    *&buf[30] = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_45:
    v75 = 0;
    memset(v81, 0, sizeof(v81));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *buf = 136315906;
    *&buf[4] = "operator[]";
    *&buf[12] = 1024;
    *&buf[14] = 476;
    *&buf[18] = 2048;
    *&buf[20] = v5;
    *&buf[28] = 2048;
    *&buf[30] = v22;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_46:
    re::internal::assertLog(6, v45, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v8, v46);
    _os_crash();
    __break(1u);
LABEL_47:
    std::__throw_bad_variant_access[abi:nn200100]();
LABEL_48:
    re::internal::assertLog(4, v45, "assertion failure: '%s' (%s:line %i) no valid function", "false", "stitchedFunctionParameters", 1028);
    _os_crash();
    __break(1u);
  }
}

uint64_t re::SkinningDeformer::deformGPU(int a1, uint64_t a2, void **this)
{
  v21 = *MEMORY[0x1E69E9840];
  re::mtl::ComputeCommandEncoder::pushDebugGroup(this, "Linear Blend Skinning");
  v8 = *(a2 + 40);
  if (v8)
  {
    v9 = 0;
    v16 = vdupq_n_s64(1uLL);
    do
    {
      v10 = *(a2 + 40);
      if (v10 <= v9)
      {
        re::internal::assertLog(6, v7, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1018, v9, v10);
        _os_crash();
        __break(1u);
LABEL_22:
        memset(v20, 0, sizeof(v20));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v17 = 136315906;
        *&v17[4] = "operator[]";
        *&v17[12] = 1024;
        *&v17[14] = 866;
        *&v17[18] = 2048;
        *&v17[20] = v3;
        v18 = 2048;
        v19 = v4;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v3 = v9 >> 3;
      v4 = *(a2 + 8);
      if (v4 <= v9 >> 3)
      {
        goto LABEL_22;
      }

      v11 = a2 + 24;
      if ((*(a2 + 16) & 1) == 0)
      {
        v11 = *(a2 + 32);
      }

      v3 = *(v11 + 8 * v3) + 304 * (v9 & 7);
      [*this setComputePipelineState:**v3];
      if (*(v3 + 108))
      {
        [*this setBuffer:*(v3 + 64) offset:*(v3 + 80) atIndex:0];
        [*this setBuffer:*(v3 + 88) offset:*(v3 + 104) atIndex:1];
      }

      [*this setBuffer:*(v3 + 112) offset:*(v3 + 128) atIndex:2];
      [*this setBuffer:*(v3 + 136) offset:*(v3 + 152) atIndex:3];
      [*this setBuffer:*(v3 + 160) offset:*(v3 + 176) atIndex:4];
      [*this setBuffer:*(v3 + 16) offset:*(v3 + 32) atIndex:5];
      if (*(v3 + 60))
      {
        [*this setBuffer:*(v3 + 40) offset:*(v3 + 56) atIndex:6];
      }

      if (*(v3 + 228))
      {
        [*this setBuffer:*(v3 + 184) offset:*(v3 + 200) atIndex:7];
        [*this setBuffer:*(v3 + 208) offset:*(v3 + 224) atIndex:8];
      }

      if (*(v3 + 276))
      {
        [*this setBuffer:*(v3 + 232) offset:*(v3 + 248) atIndex:9];
        [*this setBuffer:*(v3 + 256) offset:*(v3 + 272) atIndex:10];
      }

      if (*(v3 + 300))
      {
        [*this setBuffer:*(v3 + 280) offset:*(v3 + 296) atIndex:11];
      }

      v4 = *(v3 + 8);
      v12 = [**v3 threadExecutionWidth];
      v13 = *this;
      *&v20[0] = ((v4 + v12 - 1) / v12);
      *(v20 + 8) = v16;
      *v17 = v12;
      *&v17[8] = v16;
      [v13 dispatchThreadgroups:v20 threadsPerThreadgroup:v17];
      ++v9;
    }

    while (v8 != v9);
  }

  v14 = *this;

  return [v14 popDebugGroup];
}

void re::SkinningDeformer::deformCPU(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v98 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  v63 = *(*a3 + 48);
  if (v63)
  {
    v6 = a3;
    v7 = a1;
    v8 = 0;
    v61 = *a3;
    while (1)
    {
      v10 = *(re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v5 + 8, v8) + 8);
      v11 = v6[6];
      if (v11 <= v10)
      {
        goto LABEL_74;
      }

      v12 = v6[5];
      v13 = re::BucketArray<re::ActiveDeformation,8ul>::operator[](v6[1], v10);
      v14 = re::DataArray<re::MeshModel>::get(*(*(v7 + 8) + 32) + 8, *(*(v13 + 368) + 16));
      v3 = *(v13 + 392);
      v4 = *(v14 + 56);
      if (v4 <= v3)
      {
        goto LABEL_75;
      }

      v15 = *(*(v13 + 352) + 40);
      if (v15)
      {
        break;
      }

LABEL_68:
      if (++v8 == v63)
      {
        return;
      }
    }

    v16 = *(*(v13 + 344) + 80);
    v4 = v16[1];
    if (v4 <= v3)
    {
      goto LABEL_76;
    }

    v66 = v8;
    v17 = (v16[2] + 88 * *(v13 + 392));
    v8 = *(v17 + 1);
    v4 = v16[4];
    if (v4 <= v8)
    {
      goto LABEL_77;
    }

    v4 = *(v14 + 64);
    re::ReadOnlyCPUAccessibleBufferSliceContent::make((v16[5] + 40 * v8), &v93);
    if ((v93 & 1) == 0)
    {
      v22 = *re::graphicsLogObjects(v18);
      v8 = v66;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_DEFAULT, "Failure: Read metal buffer", buf, 2u);
      }

      goto LABEL_63;
    }

    v20 = *(&v93 + 1);
    v19 = v94;
    re::ReadOnlyCPUAccessibleBufferSliceContent::make((v17 + 8), buf);
    if (v17[1])
    {
      v78 = 0;
      v68 = 0;
    }

    else
    {
      if ((buf[0] & 1) == 0)
      {
        v57 = *re::graphicsLogObjects(v21);
        v5 = v61;
        v8 = v66;
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          *v86 = 0;
          _os_log_impl(&dword_1E1C61000, v57, OS_LOG_TYPE_DEFAULT, "Failure: Read metal buffer", v86, 2u);
        }

LABEL_58:
        if (buf[0] == 1)
        {
          re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent(&v92[4]);
        }

        else if (*&v92[20] && (v92[28] & 1) != 0)
        {
          (*(**&v92[20] + 40))();
        }

LABEL_63:
        if (v93 == 1)
        {
          re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent((&v93 + 8));
        }

        else if (*(&v94 + 1))
        {
          if (v95)
          {
            (*(**(&v94 + 1) + 40))(*(&v94 + 1), *(&v95 + 1));
          }
        }

        goto LABEL_68;
      }

      v68 = *&v92[4];
      v78 = *&v92[12] >> 2;
    }

    re::ReadOnlyCPUAccessibleBufferSliceContent::make((v17 + 48), v86);
    if (v86[0])
    {
      v67 = v87;
      re::ReadOnlyCPUAccessibleBufferSliceContent::make(v15, v82);
      if (v82[0])
      {
        v62 = (v12 + 312 * v10);
        v25 = v62[2];
        if (v25)
        {
          v8 = v19 >> 6;
          v26 = v83;
          v27 = v15[9];
          v10 = __clz(__rbit64(v25));
          v65 = (v4 + 544 * v3);
          v60 = v17;
          while (1)
          {
            v79[0] = v10;
            re::DeformationVertexBufferState::ensureVertexBufferInitialized(v62, v10);
            v4 = 20;
            v28 = v62[16] + 20 * re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v62 + 15, v79);
            *v79 = 0;
            v80 = 0;
            v81 = 0;
            re::VertexFormatInfo::setVertexFormat(v79, *(v28 + 4), *(v28 + 16));
            v90 = v10;
            re::DeformationVertexBufferState::ensureVertexBufferInitialized(v62, v10);
            v29 = v62[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v62 + 7, &v90);
            v76 = *(v29 + 16);
            v77 = *(v29 + 8);
            v90 = v10;
            re::DeformationVertexBufferState::ensureVertexBufferInitialized(v62, v10);
            v30 = v62[24] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v62 + 23, &v90);
            v74 = *(v30 + 8);
            v70 = *(v30 + 16);
            v72 = *(v30 + 20);
            v3 = *v17;
            v64 = v17[1];
            v90 = v10;
            re::DeformationVertexBufferState::ensureVertexBufferInitialized(v62, v10);
            v31 = *(v62[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v62 + 7, &v90) + 20);
            v90 = v10;
            re::DeformationVertexBufferState::ensureVertexBufferInitialized(v62, v10);
            v33 = *(v62[16] + 20 * re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v62 + 15, &v90) + 4);
            if (v31 >= v33)
            {
              break;
            }

LABEL_39:
            v17 = v60;
            if (v10 == 63 || (v62[2] & (-2 << v10)) == 0)
            {
              goto LABEL_46;
            }

            v10 = __clz(__rbit64(v62[2] & (-2 << v10)));
          }

          v34 = 0;
          v4 = 0;
          v71 = v74 + v70;
          v73 = v72 / 0xCuLL;
          v75 = *v79;
          v69 = v31 / v33;
          while (1)
          {
            v35 = v78;
            if (v78)
            {
              if (v78 <= v34)
              {
                goto LABEL_73;
              }

              v36 = *(v68 + 4 * v34);
            }

            else
            {
              v36 = (v4 + v64);
            }

            v37 = v75(v77 + v76, v34);
            v38 = 0uLL;
            v39 = v36 - v4;
            if (v36 > v4)
            {
              break;
            }

LABEL_35:
            if (v10 != 1)
            {
              v51 = vmulq_f32(v38, v38);
              *v51.i8 = vadd_f32(*v51.i8, *&vextq_s8(v51, v51, 8uLL));
              v51.i32[0] = vadd_f32(*v51.i8, vdup_lane_s32(*v51.i8, 1)).u32[0];
              v52 = vrsqrte_f32(v51.u32[0]);
              v53 = vmul_f32(v52, vrsqrts_f32(v51.u32[0], vmul_f32(v52, v52)));
              v38 = vmulq_n_f32(v38, vmul_f32(v53, vrsqrts_f32(v51.u32[0], vmul_f32(v53, v53))).f32[0]);
            }

            if (v34 == v73)
            {
              goto LABEL_72;
            }

            v54 = v71 + 12 * v34;
            *v54 = v38.i64[0];
            *(v54 + 8) = v38.i32[2];
            ++v34;
            v4 = v36;
            if (v34 >= v69)
            {
              goto LABEL_39;
            }
          }

          *v40.f32 = v37;
          v40.i64[1] = v32;
          v41 = vaddq_f32(v65[25], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v65[22], v37.f32[0]), v65[23], v37, 1), v65[24], v40, 2));
          v42 = vdupq_lane_s32(*v41.i8, 1);
          v43 = vdupq_laneq_s32(v41, 2);
          v44 = vdupq_laneq_s32(v41, 3);
          v45 = (v67 + 4 + 8 * v4);
          v46 = (v67 + 4 * v4);
          v38 = 0uLL;
          while (1)
          {
            if (v3)
            {
              v47 = *v46 >> 22;
              v48 = (*v46 & 0x3FFFFF) * 0.00000023842;
            }

            else
            {
              v47 = *(v45 - 1);
              v48 = *v45;
            }

            v49 = v47;
            if (v8 <= v47)
            {
              break;
            }

            v50 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(*(v20 + (v47 << 6)), *v41.i32), v42, *(v20 + (v47 << 6) + 16)), v43, *(v20 + (v47 << 6) + 32)), v44, *(v20 + (v47 << 6) + 48));
            if (v27 >= 0x40)
            {
              if ((v27 >> 6) <= v47)
              {
                goto LABEL_71;
              }

              v50 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*(v26 + (v47 << 6)), v50.f32[0]), *(v26 + (v47 << 6) + 16), *v50.f32, 1), *(v26 + (v47 << 6) + 32), v50, 2), *(v26 + (v47 << 6) + 48), v50, 3);
            }

            v38 = vaddq_f32(v38, vmulq_n_f32(v50, v48));
            v45 += 2;
            ++v46;
            if (!--v39)
            {
              goto LABEL_35;
            }
          }

          re::internal::assertLog(6, v32, *v38.i64, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v47, v8);
          _os_crash();
          __break(1u);
LABEL_71:
          re::internal::assertLog(6, v32, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v49, v27 >> 6);
          _os_crash();
          __break(1u);
LABEL_72:
          re::internal::assertLog(6, v32, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v73, v73);
          _os_crash();
          __break(1u);
LABEL_73:
          re::internal::assertLog(6, v32, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v34, v35);
          _os_crash();
          __break(1u);
LABEL_74:
          re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v10, v11);
          _os_crash();
          __break(1u);
LABEL_75:
          *v86 = 0;
          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          v93 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *buf = 136315906;
          *v92 = "operator[]";
          *&v92[8] = 1024;
          *&v92[10] = 476;
          *&v92[14] = 2048;
          *&v92[16] = v3;
          *&v92[24] = 2048;
          *&v92[26] = v4;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_76:
          *v86 = 0;
          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          v93 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *buf = 136315906;
          *v92 = "operator[]";
          *&v92[8] = 1024;
          *&v92[10] = 476;
          *&v92[14] = 2048;
          *&v92[16] = v3;
          *&v92[24] = 2048;
          *&v92[26] = v4;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_77:
          *v86 = 0;
          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          v93 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *buf = 136315906;
          *v92 = "operator[]";
          *&v92[8] = 1024;
          *&v92[10] = 476;
          *&v92[14] = 2048;
          *&v92[16] = v8;
          *&v92[24] = 2048;
          *&v92[26] = v4;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }
      }

      else
      {
        v56 = *re::graphicsLogObjects(v24);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          *v79 = 0;
          _os_log_impl(&dword_1E1C61000, v56, OS_LOG_TYPE_DEFAULT, "Failure: Read metal buffer", v79, 2u);
        }
      }

LABEL_46:
      if (v82[0] == 1)
      {
        re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent(&v83);
        v7 = a1;
        v6 = a3;
        v5 = v61;
        v8 = v66;
      }

      else
      {
        v7 = a1;
        v6 = a3;
        v5 = v61;
        v8 = v66;
        if (v84 && (v85 & 1) != 0)
        {
          (*(*v84 + 40))();
        }
      }
    }

    else
    {
      v55 = *re::graphicsLogObjects(v23);
      v5 = v61;
      v8 = v66;
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *v82 = 0;
        _os_log_impl(&dword_1E1C61000, v55, OS_LOG_TYPE_DEFAULT, "Failure: Read metal buffer", v82, 2u);
      }
    }

    if (v86[0] == 1)
    {
      re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent(&v87);
    }

    else if (v88 && (v89 & 1) != 0)
    {
      (*(*v88 + 40))();
    }

    goto LABEL_58;
  }
}

uint64_t re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::addUninitialized(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 4 * v3)
  {
    re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::setBucketsCapacity(a1, (v2 + 4) >> 2);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 2)
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

  v5 = *(v4 + 8 * (v2 >> 2));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + 56 * (v2 & 3);
}

uint64_t re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::addUninitialized(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 4 * v3)
  {
    re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::setBucketsCapacity(a1, (v2 + 4) >> 2);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 2)
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

  v5 = *(v4 + 8 * (v2 >> 2));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + ((v2 & 3) << 7);
}

uint64_t _ZNKSt3__110__function6__funcIZN2re20DeformationModelData6createINS2_16SkinningDeformerENS2_12_GLOBAL__N_113SkinningModelEJEEEPT0_PNS2_9AllocatorEDpOT1_EUlPvE_NS_9allocatorISG_EEFvSF_EE7__cloneEPNS0_6__baseISJ_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D0A020;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN2re20DeformationModelData6createINS2_16SkinningDeformerENS2_12_GLOBAL__N_113SkinningModelEJEEEPT0_PNS2_9AllocatorEDpOT1_EUlPvE_NS_9allocatorISG_EEFvSF_EEclEOSF_(uint64_t result, void **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(result + 8);
    re::FixedArray<re::BufferSlice>::deinit(v2 + 3);
    if (*v2)
    {
      v4 = v2[1];
      if (v4)
      {
        v5 = 88 * v4;
        v6 = v2[2] + 48;
        do
        {
          v7 = *(v6 + 24);
          if (v7 != -1)
          {
            (off_1F5D0A000[v7])(&v9, v6);
          }

          *(v6 + 24) = -1;
          v8 = *(v6 - 16);
          if (v8 != -1)
          {
            (off_1F5D0A000[v8])(&v10, v6 - 40);
          }

          *(v6 - 16) = -1;
          v6 += 88;
          v5 -= 88;
        }

        while (v5);
        (*(**v2 + 40))(*v2, v2[2]);
        v2[1] = 0;
        v2[2] = 0;
      }

      *v2 = 0;
    }

    return (*(*v3 + 40))(v3, v2);
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2re20DeformationModelData6createINS2_16SkinningDeformerENS2_12_GLOBAL__N_113SkinningModelEJEEEPT0_PNS2_9AllocatorEDpOT1_EUlPvE_NS_9allocatorISG_EEFvSF_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v4 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v30, 0, 36);
          *&v30[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v30, v9, v8);
          v11 = *v30;
          *v30 = *a1;
          *a1 = v11;
          v12 = *&v30[16];
          v13 = *(a1 + 16);
          *&v30[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v30[24];
          *&v30[24] = *(a1 + 24);
          v14 = *&v30[32];
          *(a1 + 24) = v15;
          ++*&v30[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = 0;
            do
            {
              if ((*(v13 + v17) & 0x80000000) != 0)
              {
                v19 = v13 + v17;
                v20 = 0xBF58476D1CE4E5B9 * ((*(v13 + v17 + 8) >> 31) ^ (*(v13 + v17 + 8) >> 1));
                v21 = re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, ((0x94D049BB133111EBLL * (v20 ^ (v20 >> 27))) ^ ((0x94D049BB133111EBLL * (v20 ^ (v20 >> 27))) >> 31)) % *(a1 + 24));
                v22 = *(v19 + 8);
                *(v21 + 8) = *(v21 + 8) & 0xFFFFFFFFFFFFFFFELL | v22 & 1;
                *(v21 + 8) = *(v19 + 8) & 0xFFFFFFFFFFFFFFFELL | v22 & 1;
                *(v21 + 16) = *(v19 + 16);
                *(v19 + 8) = 0;
                *(v19 + 16) = &str_67;
                v13 = *&v30[16];
                v23 = *(*&v30[16] + v17 + 40);
                *(v21 + 24) = *(*&v30[16] + v17 + 24);
                *(v21 + 40) = v23;
                v16 = *&v30[32];
              }

              ++v18;
              v17 += 48;
            }

            while (v18 < v16);
          }

          re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v30);
        }
      }

      else
      {
        if (v8)
        {
          v26 = 2 * v7;
        }

        else
        {
          v26 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v24 = *(a1 + 16);
    v25 = *(v24 + 48 * v4);
  }

  else
  {
    v24 = *(a1 + 16);
    v25 = *(v24 + 48 * v4);
    *(a1 + 36) = v25 & 0x7FFFFFFF;
  }

  v27 = 48 * v4;
  *(v24 + v27) = v25 | 0x80000000;
  v28 = *(a1 + 8);
  *(v24 + v27) = *(v28 + 4 * a2) | 0x80000000;
  *(v28 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v24 + 48 * v4;
}

void *re::BucketArray<re::anonymous namespace::GpuAllocationData::SkinTask,8ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::anonymous namespace::GpuAllocationData::SkinTask,8ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 8 * a2)
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
          result = (*(**v3 + 32))(*v3, 2432, 0);
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

float32x4_t re::ColorManager::computeWPCMatrix@<Q0>(float32x4_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v3 = a2;
  {
    v3 = a2;
    if (v15)
    {
      re::Defaults::floatValue("iblWPCStrength", v16, &re::ColorManager::computeWPCMatrix(re::Matrix3x3<float> const&,re::DebugSettingsManager *)const::overrideWpcStrength);
      v3 = a2;
    }
  }

  v6 = *&dword_1ECF1CCE4;
  if (!re::ColorManager::computeWPCMatrix(re::Matrix3x3<float> const&,re::DebugSettingsManager *)const::overrideWpcStrength)
  {
    v6 = 1.0;
  }

  v19 = v6;
  if (v3)
  {
    v18[0] = 0xFEE1A01690D44944;
    v18[1] = "colorpipe:wpcStrength";
    v7 = re::DebugSettingsManager::getWithErrorCode<float>(v3, v18, &v19);
    if (v18[0])
    {
      if (v18[0])
      {
      }
    }

    v6 = v19;
  }

  v8 = vmulq_n_f32(*a1, v6);
  v9 = vmulq_n_f32(a1[1], v6);
  v10 = vmulq_n_f32(a1[2], v6);
  v11 = 1.0 - v6;
  v12 = vaddq_f32(v8, vmulq_n_f32(xmmword_1E3047670, v11));
  v13 = vaddq_f32(v9, vmulq_n_f32(xmmword_1E3047680, v11));
  *(a3 + 8) = v12.i32[2];
  *(a3 + 24) = v13.i32[2];
  result = vaddq_f32(vmulq_n_f32(xmmword_1E30476A0, v11), v10);
  *a3 = v12.i64[0];
  *(a3 + 16) = v13.i64[0];
  *(a3 + 40) = result.i32[2];
  *(a3 + 32) = result.i64[0];
  return result;
}

void re::ColorManager::init(uint64_t a1, int a2, unsigned int a3, char a4, char a5)
{
  *a1 = a2;
  *(a1 + 1) = a3;
  *(a1 + 112) = a4;
  *(a1 + 113) = a5;
  re::ColorHelpers::computeGamutTransformMatrix(a2, a3, __A);
  v6 = __A[1];
  *(a1 + 16) = __A[0];
  *(a1 + 32) = v6;
  *(a1 + 48) = __A[2];
  __B = 0.00097752;
  LODWORD(__A[0]) = 0;
  vDSP_vramp(__A, &__B, (a1 + 8416), 1, 0x400uLL);
  *(a1 + 12564) = 1;
}

uint64_t re::ColorManager::deinit(re::ColorManager *this)
{
  v2 = *(this + 16);
  if (v2)
  {
    MEMORY[0x1E69064F0](v2, 0x1000C8052888210);
    *(this + 16) = 0;
  }

  result = *(this + 1565);
  if (result)
  {
    result = MEMORY[0x1E69064F0](result, 0x1000C8052888210);
    *(this + 1565) = 0;
  }

  return result;
}

void *re::ColorManager::setTargetDisplayTonemapLUTDomain(void *a1, uint64_t *a2)
{
  v4 = a1[16];
  if (v4)
  {
    v5 = a1[15];
    if (v5 == *a2)
    {
      goto LABEL_7;
    }

    MEMORY[0x1E69064F0]();
    a1[16] = 0;
  }

  v5 = *a2;
  if (*a2)
  {
    operator new[]();
  }

  v4 = 0;
LABEL_7:
  a1[15] = v5;
  result = memcpy(v4, a2[1], 4 * *a2);
  if (a1[1564] != *a2 && *a2 != 0)
  {
    v8 = a1[1565];
    if (v8)
    {
      MEMORY[0x1E69064F0](v8, 0x1000C8052888210);
    }

    operator new[]();
  }

  return result;
}

__n128 re::ColorManager::setTonemapUserParameters(re::ColorManager *this, const re::TonemapUserParameters *a2, const re::TonemapUserParameters *a3)
{
  *(this + 221) |= !re::haveSamePreBlendLUT((this + 136), a2, a3);
  *(this + 222) |= !re::haveSameExposure((this + 136), a2, v5);
  result = *a2;
  v7 = *(a2 + 1);
  v8 = *(a2 + 2);
  *(this + 177) = *(a2 + 41);
  *(this + 168) = v8;
  *(this + 152) = v7;
  *(this + 136) = result;
  return result;
}

uint64_t re::ColorManager::updateTonemapLUTs(uint64_t a1, float *a2)
{
  if ((*(a1 + 222) & 1) == 0 && *(a1 + 221) != 1)
  {
    return 0;
  }

  v4 = *(a1 + 12512);
  if (v4)
  {
    v5 = *(a1 + 128);
    v6 = *(a1 + 12520);
    do
    {
      v7 = *v5++;
      *v6++ = re::computeTonemapping(a2, v7 * *a2);
      --v4;
    }

    while (v4);
  }

  if ((*(a1 + 115) & 1) == 0 && *(a1 + 221) == 1)
  {
    for (i = 0; i != 1024; ++i)
    {
      *(a1 + 224 + 4 * i) = re::computeTonemapping(a2, a2[31] * (*a2 * ((i * 0.00097752) + 0.0))) * a2[32];
    }

    for (j = 0; j != 1024; ++j)
    {
      *(a1 + 4320 + 4 * j) = (re::computeTonemappingInverse(a2, (j * 0.00097752) + 0.0) * a2[1]) * a2[6];
    }
  }

  *(a1 + 221) = 0;
  return 1;
}

uint64_t re::ColorManager::updateISPTonemapLUTAccelerated(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v5 = v1;
  v22 = *MEMORY[0x1E69E9840];
  v6 = *(v2 + 8);
  if (v6)
  {
    v7 = v4;
    v8 = v3;
    v9 = v2;
    __A = 0.0;
    __B = vcvts_n_f32_u64(v6, 0xAuLL);
    vDSP_vramp(&__A, &__B, __C, 1, 0x400uLL);
    __S2 = 0.0;
    __S1 = 1.0;
    vDSP_vtabi(__C, 1, &__S1, &__S2, *v9, *(v9 + 8), v5 + 2104, 1, 0x400uLL);
    re::computeTonemappingInverseAccelerated(v8, (v5 + 2104), v5 + 2104, 0x400uLL);
    v11 = *(v9 + 8);
    v12 = v11 * 0.1;
    if (v11 <= v12)
    {
      re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v12, v11);
      _os_crash();
      __break(1u);
    }

    v13 = *v9;
    v5[3134] = re::computeTonemappingInverse(v8, v13[v12]) / 0.1;
    v14 = ((v5[3132] * v11) / v7);
    if (v11 - 1 < v14)
    {
      v14 = v11 - 1;
    }

    v15 = v5[3133] + (v13[v14] - v5[3133]) * 0.05;
    v5[3133] = v15;
    return 1;
  }

  if (*(v1 + 12564) == 1)
  {
    *(v1 + 12564) = 0;
    return 1;
  }

  return 0;
}

void *re::allocInfo_ColorManager(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_479, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_479))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BBDE8, "ColorManager");
    __cxa_guard_release(&_MergedGlobals_479);
  }

  return &unk_1EE1BBDE8;
}

void re::initInfo_ColorManager(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x31DB7AC1852E8DD4;
  v6[1] = "ColorManager";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x312000000008;
  *(this + 6) = 16;
  *(this + 14) = 1;
  *(this + 14) = 0;
  *(this + 8) = &re::initInfo_ColorManager(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ColorManager>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ColorManager>;
  *(this + 13) = re::internal::defaultConstructV2<re::ColorManager>;
  *(this + 14) = re::internal::defaultDestructV2<re::ColorManager>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

float32x4_t *re::computeFrustumCorners@<X0>(float32x4_t *result@<X0>, uint64_t a2@<X1>, int a3@<W2>, float32x4_t *a4@<X8>, float32x4_t a5@<Q1>, float32x4_t a6@<Q2>, float32x4_t a7@<Q3>, float32x4_t a8@<Q4>)
{
  v9.i32[3] = 0;
  a4[6] = 0u;
  a4[7] = 0u;
  a4[4] = 0u;
  a4[5] = 0u;
  a4[2] = 0u;
  a4[3] = 0u;
  *a4 = 0u;
  a4[1] = 0u;
  if (*a2)
  {
    if (!a3)
    {
      return result;
    }

    v10 = *result;
    v11 = result[1].f32[0];
    v12 = result[1].f32[1];
    v13 = result[1].f32[2];
    v14 = result[1].f32[3];
    v15 = (v11 + v11) * v13;
    v16 = (v12 + v12) * v14;
    a6.f32[0] = v15 + v16;
    v17 = (v12 + v12) * v13;
    v18 = (v11 + v11) * v14;
    v19 = (v11 + v11) * v11;
    v20 = (v12 + v12) * v12;
    a6.f32[1] = v17 - v18;
    a6.f32[2] = 1.0 - (v19 + v20);
    v21 = (v11 + v11) * v12;
    v22 = (v13 + v13) * v14;
    v8.f32[0] = v21 - v22;
    a8.f32[0] = (v13 + v13) * v13;
    v8.f32[1] = 1.0 - (v19 + a8.f32[0]);
    v8.f32[2] = v18 + v17;
    a8.f32[0] = 1.0 - (v20 + a8.f32[0]);
    a8.f32[1] = v21 + v22;
    a8.f32[2] = v15 - v16;
    v23 = vsubq_f32(*result, vmulq_n_f32(a6, COERCE_FLOAT(*(a2 + 4))));
    v24 = vmulq_n_f32(a8, COERCE_FLOAT(*(a2 + 16)));
    v25 = vaddq_f32(v24, v23);
    v26 = vmulq_n_f32(v8, COERCE_FLOAT(*(a2 + 20)));
    v27 = vaddq_f32(v26, v25);
    v27.i32[3] = 1.0;
    v28 = vmulq_n_f32(v8, COERCE_FLOAT(*(a2 + 24)));
    v29 = vaddq_f32(v28, v25);
    v29.i32[3] = 1.0;
    *a4 = v27;
    a4[1] = v29;
    v30 = vmulq_n_f32(a8, COERCE_FLOAT(*(a2 + 12)));
    v31 = vaddq_f32(v30, v23);
    v32 = vaddq_f32(v26, v31);
    v32.i32[3] = 1.0;
    v33 = vaddq_f32(v28, v31);
    v33.i32[3] = 1.0;
    a4[2] = v32;
    a4[3] = v33;
    v34 = vsubq_f32(v10, vmulq_n_f32(a6, COERCE_FLOAT(*(a2 + 8))));
    v35 = vaddq_f32(v24, v34);
    v36 = vaddq_f32(v26, v35);
    v36.i32[3] = 1.0;
    v37 = vaddq_f32(v28, v35);
    v37.i32[3] = 1.0;
    a4[4] = v36;
    a4[5] = v37;
    v38 = vaddq_f32(v30, v34);
    v39 = vaddq_f32(v26, v38);
    v39.i32[3] = 1.0;
    a4[6] = v39;
    v40 = vaddq_f32(v28, v38);
    v40.i32[3] = 1.0;
  }

  else
  {
    v9.i32[0] = result[1].i32[0];
    a5.i32[0] = result[1].i32[1];
    v41 = result[1].f32[2];
    a7.i32[0] = result[1].i32[3];
    v42 = a5.f32[0] + a5.f32[0];
    v43 = (v9.f32[0] + v9.f32[0]) * v9.f32[0];
    v44 = (a5.f32[0] + a5.f32[0]) * a5.f32[0];
    v45 = (v41 + v41) * v41;
    a5.f32[0] = (v9.f32[0] + v9.f32[0]) * a5.f32[0];
    v46 = (v9.f32[0] + v9.f32[0]) * v41;
    v47 = v42 * v41;
    v48 = (v9.f32[0] + v9.f32[0]) * a7.f32[0];
    v49 = v42 * a7.f32[0];
    a7.f32[0] = (v41 + v41) * a7.f32[0];
    v9.f32[0] = 1.0 - (v44 + v45);
    v9.f32[1] = a5.f32[0] + a7.f32[0];
    v9.f32[2] = v46 - v49;
    a5.f32[0] = a5.f32[0] - a7.f32[0];
    a5.f32[1] = 1.0 - (v43 + v45);
    a5.f32[2] = v48 + v47;
    a7.f32[0] = v46 + v49;
    a7.f32[1] = v47 - v48;
    a7.f32[2] = 1.0 - (v43 + v44);
    v50 = *result;
    v51 = *(a2 + 4);
    v52 = vaddq_f32(*result, vmulq_n_f32(a7, -v51));
    v53 = *(a2 + 16);
    v54 = vmulq_n_f32(v9, *&v53);
    v55 = vaddq_f32(v52, v54);
    v56 = *(a2 + 12);
    v57 = vmulq_n_f32(v9, *&v56);
    v58 = vaddq_f32(v52, v57);
    v59 = *(a2 + 20);
    v60 = vmulq_n_f32(a5, *&v59);
    v61 = vaddq_f32(v60, v55);
    v62 = *(a2 + 24);
    v63 = vmulq_n_f32(a5, *&v62);
    v64 = vaddq_f32(v63, v55);
    v65 = vaddq_f32(v60, v58);
    v66 = vaddq_f32(v63, v58);
    v61.i32[3] = 1.0;
    v64.i32[3] = 1.0;
    *a4 = v61;
    a4[1] = v64;
    v65.i32[3] = 1.0;
    v66.i32[3] = 1.0;
    a4[2] = v65;
    a4[3] = v66;
    if (a3 && (v67 = *(a2 + 8), v67 != INFINITY))
    {
      v71 = vaddq_f32(v50, vmulq_n_f32(a7, -v67));
      v72 = 1.0 / v51;
      v73 = vmulq_n_f32(v9, v67);
      v74 = vmulq_n_f32(a5, v67);
      v75 = vaddq_f32(v71, vmulq_n_f32(vmulq_n_f32(v73, *&v53), v72));
      v76 = vaddq_f32(v71, vmulq_n_f32(vmulq_n_f32(vmulq_f32(v9, v73), *&v56), v72));
      v77 = vmulq_n_f32(vmulq_n_f32(v74, *&v59), v72);
      v78 = vaddq_f32(v77, v75);
      v79 = vmulq_n_f32(vmulq_n_f32(v74, *&v62), v72);
      v80 = vaddq_f32(v79, v75);
      v81 = vaddq_f32(v77, v76);
      v40 = vaddq_f32(v79, v76);
      v78.i32[3] = 1.0;
      v80.i32[3] = 1.0;
      a4[4] = v78;
      a4[5] = v80;
      v81.i32[3] = 1.0;
      a4[6] = v81;
      v40.i32[3] = 1.0;
    }

    else
    {
      v68 = vaddq_f32(v60, v54);
      v69 = vaddq_f32(v63, v54);
      v70 = vaddq_f32(v60, v57);
      v40 = vaddq_f32(v63, v57);
      v68.i32[3] = 0;
      v69.i32[3] = 0;
      a4[4] = v68;
      a4[5] = v69;
      v70.i32[3] = 0;
      a4[6] = v70;
      v40.i32[3] = 0;
    }
  }

  a4[7] = v40;
  return result;
}

unint64_t re::computeCullingPlanes@<X0>(float32x4_t *this@<X0>, const re::RenderCamera *a2@<X1>, const re::Projection *a3@<X2>, float32x4_t *a4@<X8>, float32x4_t a5@<Q1>, float32x4_t a6@<Q2>, float32x4_t a7@<Q3>, float32x4_t a8@<Q4>, float32x4_t a9@<Q6>)
{
  v9 = a3;
  a4->i64[0] = 0;
  a4->i32[2] = 0;
  if (*a2)
  {
    v105 = *this;
    v12 = this[1].f32[0];
    v13 = this[1].f32[1];
    a6.i32[0] = this[1].i32[2];
    v14 = this[1].f32[3];
    a8.f32[0] = v12 + v12;
    v15 = v13 + v13;
    v16 = (v12 + v12) * v12;
    v17 = (v13 + v13) * v13;
    v18 = (a6.f32[0] + a6.f32[0]) * a6.f32[0];
    v19 = a8.f32[0] * v13;
    v20 = a8.f32[0] * a6.f32[0];
    v21 = v15 * a6.f32[0];
    v22 = a8.f32[0] * v14;
    v23 = v15 * v14;
    a6.f32[0] = (a6.f32[0] + a6.f32[0]) * v14;
    a8.f32[0] = 1.0 - (v17 + v18);
    a8.f32[1] = v19 + a6.f32[0];
    a8.f32[2] = v20 - (v15 * v14);
    a6.f32[0] = v19 - a6.f32[0];
    a6.f32[1] = 1.0 - (v16 + v18);
    a6.f32[2] = v22 + v21;
    v100 = a8;
    v102 = a6;
    v98 = *(a2 + 1);
    re::DynamicInlineArray<re::PlaneF,6ul>::ensureCapacity(0, a2);
    v24 = vmulq_f32(v100, vaddq_f32(v105, vmulq_n_f32(v100, *&v98)));
    v25 = v100;
    v25.f32[3] = -(v24.f32[2] + vaddv_f32(*v24.f32));
    a4[1] = v25;
    LODWORD(v98) = *(a2 + 12);
    re::DynamicInlineArray<re::PlaneF,6ul>::ensureCapacity(1uLL, v26);
    v27 = vnegq_f32(v100);
    v28 = vmulq_f32(vaddq_f32(v105, vmulq_n_f32(v100, *&v98)), v27);
    v27.f32[3] = -(v28.f32[2] + vaddv_f32(*v28.f32));
    a4[2] = v27;
    v100.i32[0] = *(a2 + 20);
    re::DynamicInlineArray<re::PlaneF,6ul>::ensureCapacity(2uLL, v29);
    v30 = vmulq_f32(v102, vaddq_f32(v105, vmulq_n_f32(v102, v100.f32[0])));
    v31 = v102;
    v31.f32[3] = -(v30.f32[2] + vaddv_f32(*v30.f32));
    a4[3] = v31;
    v100.i32[0] = *(a2 + 3);
    result = re::DynamicInlineArray<re::PlaneF,6ul>::ensureCapacity(3uLL, v32);
    v35 = vnegq_f32(v102);
    v36.i32[3] = v105.i32[3];
    v37 = vmulq_f32(vaddq_f32(v105, vmulq_n_f32(v102, v100.f32[0])), v35);
    v35.f32[3] = -(v37.f32[2] + vaddv_f32(*v37.f32));
    a4[4] = v35;
    a4->i64[0] = 4;
    a4->i32[2] = 4;
    if (v9)
    {
      v36.f32[0] = v20 + v23;
      v36.f32[1] = v21 - v22;
      v36.f32[2] = 1.0 - (v16 + v17);
      v103 = v36;
      v38 = *(a2 + 2);
      re::DynamicInlineArray<re::PlaneF,6ul>::ensureCapacity(4uLL, v34);
      v39 = vnegq_f32(v103);
      v40 = vmulq_f32(vaddq_f32(v105, vmulq_n_f32(v103, -v38)), v39);
      v39.f32[3] = -(v40.f32[2] + vaddv_f32(*v40.f32));
      a4[5] = v39;
      v41 = 5;
      a4->i64[0] = 5;
      a4->i32[2] = 5;
      v42 = *(a2 + 1);
      result = re::DynamicInlineArray<re::PlaneF,6ul>::ensureCapacity(5uLL, v43);
      v44 = v103;
      v45 = vmulq_f32(v103, vaddq_f32(v105, vmulq_n_f32(v103, -v42)));
LABEL_4:
      v44.f32[3] = -(v45.f32[2] + vaddv_f32(*v45.f32));
      a4[v41 + 1] = v44;
      ++a4->i64[0];
      ++a4->i32[2];
    }
  }

  else
  {
    v46 = this[1].f32[0];
    a5.i32[0] = this[1].i32[1];
    v47 = this[1].f32[2];
    a7.i32[0] = this[1].i32[3];
    v48 = v46 + v46;
    v49 = a5.f32[0] + a5.f32[0];
    a9.f32[0] = v47 + v47;
    v50 = (v46 + v46) * v46;
    v51 = (a5.f32[0] + a5.f32[0]) * a5.f32[0];
    v52 = (v47 + v47) * v47;
    a5.f32[0] = v48 * a5.f32[0];
    v53 = v48 * v47;
    v54 = v49 * v47;
    v55 = v48 * a7.f32[0];
    v56 = v49 * a7.f32[0];
    a7.f32[0] = a9.f32[0] * a7.f32[0];
    a9.f32[0] = 1.0 - (v51 + v52);
    a9.f32[1] = a5.f32[0] + a7.f32[0];
    a9.f32[2] = v53 - v56;
    a5.f32[0] = a5.f32[0] - a7.f32[0];
    a5.f32[1] = 1.0 - (v50 + v52);
    a5.f32[2] = v55 + v54;
    a7.f32[0] = v53 + v56;
    a7.f32[1] = v54 - v55;
    a7.f32[2] = 1.0 - (v50 + v51);
    v94 = a7;
    v106 = *this;
    v95 = vaddq_f32(*this, vmulq_n_f32(a7, -*(a2 + 1)));
    v96 = vsubq_f32(*this, v95);
    v57 = vaddq_f32(vmulq_n_f32(a9, COERCE_FLOAT(*(a2 + 1))), v95);
    v58 = vaddq_f32(vmulq_n_f32(a9, COERCE_FLOAT(*(a2 + 12))), v95);
    v59 = vmulq_n_f32(a5, COERCE_FLOAT(*(a2 + 20)));
    v60 = vmulq_n_f32(a5, COERCE_FLOAT(*(a2 + 3)));
    v97 = vaddq_f32(v59, v57);
    v99 = vaddq_f32(v59, v58);
    v101 = vaddq_f32(v60, v57);
    v104 = vaddq_f32(v60, v58);
    re::DynamicInlineArray<re::PlaneF,6ul>::ensureCapacity(0, a2);
    v61 = vmulq_f32(v95, v96);
    v62 = v96;
    v62.f32[3] = -(v61.f32[2] + vaddv_f32(*v61.f32));
    v63 = a4 + 1;
    a4[a4->i64[0] + 1] = v62;
    v64 = a4->i64[0] + 1;
    a4->i64[0] = v64;
    ++a4->i32[2];
    re::DynamicInlineArray<re::PlaneF,6ul>::ensureCapacity(v64, v65);
    v66 = vsubq_f32(v101, v106);
    v67 = vsubq_f32(v97, v101);
    v68 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v67, v67), v67, 0xCuLL), vnegq_f32(v66)), v67, vextq_s8(vuzp1q_s32(v66, v66), v66, 0xCuLL));
    v69 = vextq_s8(vuzp1q_s32(v68, v68), v68, 0xCuLL);
    v70 = vmulq_f32(v106, v69);
    v69.f32[3] = -(v70.f32[2] + vaddv_f32(*v70.f32));
    v63[v64] = v69;
    v71 = a4->i64[0] + 1;
    a4->i64[0] = v71;
    ++a4->i32[2];
    re::DynamicInlineArray<re::PlaneF,6ul>::ensureCapacity(v71, v72);
    v73 = vsubq_f32(v97, v106);
    v74 = vsubq_f32(v99, v97);
    v75 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v74, v74), v74, 0xCuLL), vnegq_f32(v73)), v74, vextq_s8(vuzp1q_s32(v73, v73), v73, 0xCuLL));
    v76 = vextq_s8(vuzp1q_s32(v75, v75), v75, 0xCuLL);
    v77 = vmulq_f32(v106, v76);
    v76.f32[3] = -(v77.f32[2] + vaddv_f32(*v77.f32));
    v63[v71] = v76;
    v78 = a4->i64[0] + 1;
    a4->i64[0] = v78;
    ++a4->i32[2];
    re::DynamicInlineArray<re::PlaneF,6ul>::ensureCapacity(v78, v79);
    v80 = vsubq_f32(v99, v106);
    v81 = vsubq_f32(v104, v99);
    v82 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v81, v81), v81, 0xCuLL), vnegq_f32(v80)), v81, vextq_s8(vuzp1q_s32(v80, v80), v80, 0xCuLL));
    v83 = vextq_s8(vuzp1q_s32(v82, v82), v82, 0xCuLL);
    v84 = vmulq_f32(v106, v83);
    v83.f32[3] = -(v84.f32[2] + vaddv_f32(*v84.f32));
    v63[v78] = v83;
    v85 = a4->i64[0] + 1;
    a4->i64[0] = v85;
    ++a4->i32[2];
    result = re::DynamicInlineArray<re::PlaneF,6ul>::ensureCapacity(v85, v86);
    v88 = vsubq_f32(v104, v106);
    v89 = vsubq_f32(v101, v104);
    v90 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v89, v89), v89, 0xCuLL), vnegq_f32(v88)), v89, vextq_s8(vuzp1q_s32(v88, v88), v88, 0xCuLL));
    v91 = vextq_s8(vuzp1q_s32(v90, v90), v90, 0xCuLL);
    v92 = vmulq_f32(v106, v91);
    v91.f32[3] = -(v92.f32[2] + vaddv_f32(*v92.f32));
    v63[v85] = v91;
    v41 = a4->i64[0] + 1;
    a4->i64[0] = v41;
    ++a4->i32[2];
    if (v9)
    {
      v93 = *(a2 + 2);
      if (v93 != INFINITY)
      {
        result = re::DynamicInlineArray<re::PlaneF,6ul>::ensureCapacity(v41, v87);
        v44 = vnegq_f32(v96);
        v45 = vmulq_f32(vaddq_f32(v106, vmulq_n_f32(v94, -v93)), v44);
        goto LABEL_4;
      }
    }
  }

  return result;
}

unint64_t re::buildCullingPlanes@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = 0;
  v6 = 0;
  *a3 = 0;
  *(a3 + 8) = 0;
  v7 = a1 + 16;
  v8 = a1 + 32;
  v9 = a1 + 48;
  v10 = a3 + 16;
  v11 = 1;
  do
  {
    v12 = v11;
    v13 = 1;
    do
    {
      v14 = v13;
      v15 = *(a1 + 4 * v6);
      if (v13)
      {
        v15 = -v15;
        v29 = -*(v7 + 4 * v6) - *(a1 + 28);
        v28 = -*(v8 + 4 * v6) - *(a1 + 44);
        v16 = -*(v9 + 4 * v6);
      }

      else
      {
        v29 = *(v7 + 4 * v6) - *(a1 + 28);
        v28 = *(v8 + 4 * v6) - *(a1 + 44);
        v16 = *(v9 + 4 * v6);
      }

      v17 = *(a1 + 12);
      v18 = *(a1 + 60);
      result = re::DynamicInlineArray<re::PlaneF,6ul>::ensureCapacity(v5, a2);
      v13 = 0;
      *&v21 = v15 - v17;
      *(&v21 + 1) = v29;
      *(&v21 + 2) = v28;
      *(&v21 + 3) = v16 - v18;
      *(v10 + 16 * v5) = v21;
      v5 = *a3 + 1;
      *a3 = v5;
      ++*(a3 + 8);
    }

    while ((v14 & 1) != 0);
    v11 = 0;
    v6 = 1;
  }

  while ((v12 & 1) != 0);
  v20.i32[0] = *(a1 + 8);
  v22 = *(a1 + 24);
  v23 = v20;
  v23.f32[1] = v22;
  v24 = *(a1 + 40);
  v25 = vnegq_f32(v23);
  v25.f32[2] = -v24;
  v26 = vmulq_f32(v25, v25);
  if (sqrtf(v26.f32[2] + vaddv_f32(*v26.f32)) > 0.0)
  {
    v25.f32[3] = -*(a1 + 56);
    v30 = v25;
    result = re::DynamicInlineArray<re::PlaneF,6ul>::ensureCapacity(v5, a2);
    *(v10 + 16 * v5) = v30;
    v5 = *a3 + 1;
    *a3 = v5;
    ++*(a3 + 8);
    v20.i32[0] = *(a1 + 8);
    v22 = *(a1 + 24);
    v24 = *(a1 + 40);
  }

  v26.f32[0] = -*(a1 + 12) - v20.f32[0];
  v26.f32[1] = -*(a1 + 28) - v22;
  v26.f32[2] = -*(a1 + 44) - v24;
  v27 = vmulq_f32(v26, v26);
  if (sqrtf(v27.f32[2] + vaddv_f32(*v27.f32)) > 0.0)
  {
    v26.f32[3] = -*(a1 + 60) - *(a1 + 56);
    v31 = v26;
    result = re::DynamicInlineArray<re::PlaneF,6ul>::ensureCapacity(v5, a2);
    *(v10 + 16 * v5) = v31;
    ++*a3;
    ++*(a3 + 8);
  }

  return result;
}

double re::buildCullingFrustum@<D0>(uint64_t a1@<X0>, float32x4_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = 0;
  v5 = 0;
  v40[1] = *MEMORY[0x1E69E9840];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v40[0] = 0x3F80000000000000;
  v6 = *a2;
  v7 = a2[1];
  __asm { FMOV            V2.2S, #-1.0 }

  v13 = -_D2;
  v14 = a2[2];
  v15 = a2[3];
  do
  {
    v16 = 0;
    v17 = (v40 + v5);
    v18 = vld1q_dup_f32(v17);
    v39 = v13;
    do
    {
      v19 = 0;
      v20 = (&v40[-1] + v16);
      v21 = vld1q_dup_f32(v20);
      v38 = v13;
      if (v4 <= 8)
      {
        v22 = 8;
      }

      else
      {
        v22 = v4;
      }

      v23 = v4;
      do
      {
        v24 = vaddq_f32(v15, vmlaq_f32(vmlaq_f32(vmulq_n_f32(v6, *(&v38 + v19)), v21, v7), v18, v14));
        if (v24.f32[3] != 0.0)
        {
          v24 = vdivq_f32(v24, vdupq_laneq_s32(v24, 3));
        }

        if (v22 == v23)
        {
          re::internal::assertLog(6, v23, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, v22, 8);
          _os_crash();
          __break(1u);
        }

        v4 = v23 + 1;
        *(&v30 + v23) = v24;
        v19 += 4;
        ++v23;
      }

      while (v19 != 8);
      v16 += 4;
    }

    while (v16 != 8);
    v5 += 4;
  }

  while (v5 != 8);
  re::buildCullingPlanes(a1, v23, a3);
  v25 = v35;
  a3[11] = v34;
  a3[12] = v25;
  v26 = v37;
  a3[13] = v36;
  a3[14] = v26;
  v27 = v31;
  a3[7] = v30;
  a3[8] = v27;
  result = *&v32;
  v29 = v33;
  a3[9] = v32;
  a3[10] = v29;
  return result;
}

uint64_t re::boundingBoxIntersectFrustums(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::transformedAABBVertices(a1, a2, &v70);
  v5 = *(a2 + 16);
  v6 = *(a2 + 32);
  v7 = vmulq_f32(*a2, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v6, v6, 0xCuLL), v6, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v5, v5), v5, 0xCuLL))), vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL), vextq_s8(vextq_s8(v5, v5, 0xCuLL), v5, 8uLL)));
  *v5.i32 = v7.f32[2] + vaddv_f32(*v7.f32);
  v8 = v70;
  if (*v5.i32 >= 0.0)
  {
    v18 = v72;
    v33 = vsubq_f32(v70, v71);
    v9 = v73;
    v10 = v74;
    v34 = vsubq_f32(v73, v70);
    v35 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL), vnegq_f32(v33)), v34, vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL));
    v36 = vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL);
    v37 = vmulq_f32(v71, v36);
    v36.f32[3] = -(v37.f32[2] + vaddv_f32(*v37.f32));
    v69[0] = v36;
    v13 = v77;
    v38 = vsubq_f32(v74, v70);
    v39 = vsubq_f32(v77, v74);
    v40 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL), vnegq_f32(v38)), v39, vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL));
    v26 = vextq_s8(vuzp1q_s32(v40, v40), v40, 0xCuLL);
    v41 = vmulq_f32(v70, v26);
    v26.f32[3] = -(v41.f32[2] + vaddv_f32(*v41.f32));
    v32 = v75;
    v42 = vsubq_f32(v75, v74);
    v43 = vsubq_f32(v76, v75);
    v44 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v43, v43), v43, 0xCuLL), vnegq_f32(v42)), v43, vextq_s8(vuzp1q_s32(v42, v42), v42, 0xCuLL));
    v28 = vextq_s8(vuzp1q_s32(v44, v44), v44, 0xCuLL);
    v45 = vmulq_f32(v74, v28);
    v28.f32[3] = -(v45.f32[2] + vaddv_f32(*v45.f32));
    v29 = vsubq_f32(v71, v75);
    v30 = vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL);
    v31 = vsubq_f32(v72, v71);
    v12 = v70;
    v8 = v71;
  }

  else
  {
    v9 = v73;
    v10 = v74;
    v11 = vsubq_f32(v70, v73);
    v12 = v71;
    v13 = v72;
    v14 = vsubq_f32(v71, v70);
    v15 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL), vnegq_f32(v11)), v14, vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL));
    v16 = vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL);
    v17 = vmulq_f32(v73, v16);
    v16.f32[3] = -(v17.f32[2] + vaddv_f32(*v17.f32));
    v18 = v77;
    v19 = vsubq_f32(v74, v77);
    v20 = vsubq_f32(v70, v74);
    v21 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL), vnegq_f32(v19)), v20, vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL));
    v26 = vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL);
    v22 = vsubq_f32(v75, v76);
    v23 = vsubq_f32(v74, v75);
    v24 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL), vnegq_f32(v22)), v23, vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL));
    v25 = vmulq_f32(v77, v26);
    v26.f32[3] = -(v25.f32[2] + vaddv_f32(*v25.f32));
    v28 = vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL);
    v27 = vmulq_f32(v76, v28);
    v28.f32[3] = -(v27.f32[2] + vaddv_f32(*v27.f32));
    v69[0] = v16;
    v29 = vsubq_f32(v71, v72);
    v30 = vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL);
    v31 = vsubq_f32(v75, v71);
    v32 = v72;
  }

  v46 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v31, v31), v31, 0xCuLL), vnegq_f32(v29)), v31, v30);
  v47 = vextq_s8(vuzp1q_s32(v46, v46), v46, 0xCuLL);
  v48 = vmulq_f32(v32, v47);
  v47.f32[3] = -(v48.f32[2] + vaddv_f32(*v48.f32));
  v49 = vsubq_f32(v9, v18);
  v50 = vsubq_f32(v13, v9);
  v51 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v50, v50), v50, 0xCuLL), vnegq_f32(v49)), v50, vextq_s8(vuzp1q_s32(v49, v49), v49, 0xCuLL));
  v52 = vextq_s8(vuzp1q_s32(v51, v51), v51, 0xCuLL);
  v53 = vmulq_f32(v18, v52);
  v52.f32[3] = -(v53.f32[2] + vaddv_f32(*v53.f32));
  v69[1] = v26;
  v69[2] = v28;
  v69[3] = v47;
  v69[4] = v52;
  v54 = vsubq_f32(v10, v8);
  v55 = vsubq_f32(v12, v10);
  v56 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v55, v55), v55, 0xCuLL), vnegq_f32(v54)), v55, vextq_s8(vuzp1q_s32(v54, v54), v54, 0xCuLL));
  v57 = vextq_s8(vuzp1q_s32(v56, v56), v56, 0xCuLL);
  v58 = vmulq_f32(v8, v57);
  v57.f32[3] = -(v58.f32[2] + vaddv_f32(*v58.f32));
  v69[5] = v57;
  v67 = 6;
  v68 = 6;
  result = 1;
  if (*a3 == 1)
  {
    v66 = 1;
    result = re::boxVerticesIntersectPlanesForFrustumCulling(&v70, a3 + 32, *(a3 + 16), &v66, *(a3 + 544));
    if (result)
    {
      if (v66 == 1)
      {
        return re::frustumVerticesIntersectWithBox((a3 + 240), 0, v69, 6);
      }

      else
      {
        return 1;
      }
    }
  }

  else if (*a3 == 2)
  {
    v66 = 1;
    v60 = *(a3 + 544);
    v61 = re::boxVerticesIntersectPlanesForFrustumCulling(&v70, a3 + 32, *(a3 + 16), &v66, v60);
    if (v61 && (v66 & 1) != 0)
    {
      v62 = re::frustumVerticesIntersectWithBox((a3 + 240), 0, v69, 6);
      v64 = *a3;
      v66 = 1;
      if (v64 < 2)
      {
        re::internal::assertLog(6, v63, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, 1, v64);
        result = _os_crash();
        __break(1u);
        return result;
      }

      v61 = v62;
      v60 = *(a3 + 544);
    }

    else
    {
      v66 = 1;
    }

    v65 = re::boxVerticesIntersectPlanesForFrustumCulling(&v70, a3 + 144, *(a3 + 128), &v66, v60 & 1);
    if (v65)
    {
      if (v66 == 1)
      {
        v65 = re::frustumVerticesIntersectWithBox((a3 + 240), 1, v69, v67);
      }

      else
      {
        v65 = 1;
      }
    }

    return v61 | v65;
  }

  return result;
}

uint64_t re::transformedAABBVertices@<X0>(uint64_t a1@<X0>, float32x4_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  memset(v13, 0, sizeof(v13));
  result = re::AABB::extractCorners(a1, v13, 8uLL, 0);
  v6 = 0;
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  do
  {
    v11 = vaddq_f32(v10, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v7, COERCE_FLOAT(*&v13[v6])), v8, v13[v6].n128_u64[0], 1), v9, v13[v6], 2));
    v12 = vdivq_f32(v11, vdupq_laneq_s32(v11, 3));
    v12.i32[3] = 1.0;
    a3[v6++] = v12;
  }

  while (v6 != 8);
  return result;
}

uint64_t re::boxVerticesIntersectPlanesForFrustumCulling(uint64_t result, uint64_t a2, uint64_t a3, char *a4, int a5)
{
  if (a3 < 1)
  {
    v13 = 0;
    result = 1;
  }

  else
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    LOBYTE(result) = 1;
    do
    {
      v8 = 0;
      v9 = 0;
      if (v6 == 5)
      {
        v10 = a5;
      }

      else
      {
        v10 = 1;
      }

      do
      {
        v11 = vmulq_f32(*(a2 + 16 * v6), *(v5 + v8));
        *v11.i8 = vadd_f32(*v11.i8, *&vextq_s8(v11, v11, 8uLL));
        if (vadd_f32(*v11.i8, vdup_lane_s32(*v11.i8, 1)).f32[0] > 0.0)
        {
          v12 = v10;
        }

        else
        {
          v12 = 0;
        }

        v9 += v12;
        v8 += 16;
      }

      while (v8 != 128);
      result = result & (v9 != 8);
      v7 = v7 - v9 + 8;
      ++v6;
    }

    while (v6 != (a3 & 0x7FFFFFFF));
    v13 = v7;
  }

  if (v13 == 8 * a3)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a4;
  }

  *a4 = v14;
  return result;
}

uint64_t re::frustumVerticesIntersectWithBox(unint64_t *a1, uint64_t a2, float32x4_t *a3, uint64_t a4)
{
  v4 = *a1;
  if (!*a1)
  {
    return 1;
  }

  if (v4 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, a2, v4);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v5 = &a1[18 * a2];
  v8 = v5[2];
  v7 = (v5 + 2);
  v6 = v8;
  if (!v8 || !a4)
  {
    return 1;
  }

  v9 = &a3[a4];
  v10 = v7 + 1;
  result = 1;
  do
  {
    v12 = v6;
    for (i = v10; ; ++i)
    {
      v14 = vmulq_f32(*a3, *i);
      if (vaddv_f32(vadd_f32(*v14.i8, *&vextq_s8(v14, v14, 8uLL))) <= 0.0)
      {
        break;
      }

      if (!--v12)
      {
        return 0;
      }
    }

    ++a3;
  }

  while (a3 != v9);
  return result;
}

uint64_t re::buildCullingFrustum@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, unsigned int a3@<W2>, _BYTE *a4@<X3>, uint64_t a5@<X8>, float32x4_t a6@<Q2>, float32x4_t a7@<Q4>)
{
  v7 = a4;
  v8 = a5;
  v157 = *MEMORY[0x1E69E9840];
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 240) = 0;
  *(a5 + 248) = 0;
  *(a5 + 544) = 0;
  if (*a2)
  {
    if (a3)
    {
      v9 = result + 16;
      v10 = (a2 + 3);
      v11 = a3;
      do
      {
        v127 = *(v9 - 16);
        v12 = *v9;
        v13 = *(v9 + 4);
        a6.i32[0] = *(v9 + 8);
        v14 = *(v9 + 12);
        a7.f32[0] = v12 + v12;
        v15 = v13 + v13;
        v16 = (v12 + v12) * v12;
        v17 = (v13 + v13) * v13;
        v18 = (a6.f32[0] + a6.f32[0]) * a6.f32[0];
        v19 = a7.f32[0] * v13;
        v20 = a7.f32[0] * a6.f32[0];
        v21 = v15 * a6.f32[0];
        v22 = a7.f32[0] * v14;
        v23 = v15 * v14;
        a6.f32[0] = (a6.f32[0] + a6.f32[0]) * v14;
        a7.f32[0] = 1.0 - (v17 + v18);
        a7.f32[1] = v19 + a6.f32[0];
        a7.f32[2] = v20 - (v15 * v14);
        a6.f32[0] = v19 - a6.f32[0];
        a6.f32[1] = 1.0 - (v16 + v18);
        a6.f32[2] = v22 + v21;
        v125 = a7;
        v126 = a6;
        v121 = v10[1];
        re::DynamicInlineArray<re::PlaneF,6ul>::ensureCapacity(0, a2);
        v24 = vmulq_f32(v125, vaddq_f32(v127, vmulq_n_f32(v125, v121)));
        v25 = v125;
        v25.f32[3] = -(v24.f32[2] + vaddv_f32(*v24.f32));
        v134 = v25;
        v122 = *v10;
        re::DynamicInlineArray<re::PlaneF,6ul>::ensureCapacity(1uLL, v26);
        v27 = vnegq_f32(v125);
        v28 = vmulq_f32(vaddq_f32(v127, vmulq_n_f32(v125, v122)), v27);
        v27.f32[3] = -(v28.f32[2] + vaddv_f32(*v28.f32));
        v135 = v27;
        v27.f32[0] = v10[2];
        v125 = v27;
        re::DynamicInlineArray<re::PlaneF,6ul>::ensureCapacity(2uLL, v29);
        v30 = vmulq_f32(v126, vaddq_f32(v127, vmulq_n_f32(v126, v125.f32[0])));
        v31 = v126;
        v31.f32[3] = -(v30.f32[2] + vaddv_f32(*v30.f32));
        v136 = v31;
        v30.f32[0] = v10[3];
        v125 = v30;
        re::DynamicInlineArray<re::PlaneF,6ul>::ensureCapacity(3uLL, v32);
        v36 = vnegq_f32(v126);
        v34.i32[3] = v127.i32[3];
        v35 = vmulq_f32(vaddq_f32(v127, vmulq_n_f32(v126, v125.f32[0])), v36);
        v36.f32[3] = -(v35.f32[2] + vaddv_f32(*v35.f32));
        v137 = v36;
        v133.i64[0] = 4;
        v133.i32[2] = 4;
        if (*v7 == 1)
        {
          v34.f32[0] = v20 + v23;
          v34.f32[1] = v21 - v22;
          v34.f32[2] = 1.0 - (v16 + v17);
          v36.f32[0] = *(v10 - 1);
          v125 = v36;
          v126 = v34;
          re::DynamicInlineArray<re::PlaneF,6ul>::ensureCapacity(4uLL, v33);
          v37 = vmulq_f32(v126, vaddq_f32(v127, vmulq_n_f32(v126, v125.f32[0])));
          v38 = v126;
          v38.f32[3] = -(v37.f32[2] + vaddv_f32(*v37.f32));
          v138 = v38;
          v37.f32[0] = *(v10 - 2);
          v125 = v37;
          re::DynamicInlineArray<re::PlaneF,6ul>::ensureCapacity(5uLL, v39);
          v40 = vnegq_f32(v126);
          v41 = vmulq_f32(vaddq_f32(v127, vmulq_n_f32(v126, v125.f32[0])), v40);
          v40.f32[3] = -(v41.f32[2] + vaddv_f32(*v41.f32));
          v139 = v40;
          v133.i64[0] = 6;
          v133.i32[2] = 6;
        }

        result = re::DynamicInlineArray<re::DynamicInlineArray<re::PlaneF,6ul>,2ul>::add(v8, &v133);
        v9 += 32;
        v10 += 60;
        --v11;
      }

      while (v11);
    }

    goto LABEL_45;
  }

  if (!a3)
  {
    goto LABEL_45;
  }

  v42 = 0;
  __asm { FMOV            V0.2S, #-1.0 }

  v47 = -_D0;
  v107 = a3;
  v108 = a5 + 240;
  v109 = result;
  v110 = a2;
  do
  {
    v48 = &a2[60 * v42];
    v49 = v48[3];
    v135 = v48[2];
    v136 = v49;
    v137.i16[0] = v48[4].i16[0];
    v50 = v48[1];
    v133 = *v48;
    v134 = v50;
    v138.i8[0] = v48[5].i8[0];
    if (v138.u8[0] == 1)
    {
      v51 = v48[7];
      v139 = v48[6];
      v140 = v51;
      v52 = v48[9];
      v141 = v48[8];
      v142 = v52;
    }

    v143 = v48[10].i8[0];
    if (v143 == 1)
    {
      v53 = v48[12];
      v144 = v48[11];
      v145 = v53;
      v54 = v48[14];
      v146 = v48[13];
      v147 = v54;
    }

    v55 = v133.f32[2];
    v134.i8[12] = 0;
    if (v133.f32[2] == INFINITY)
    {
      v56 = 1000.0;
    }

    else
    {
      v56 = v133.f32[2];
    }

    v133.f32[2] = v56;
    v113 = v42;
    v57 = (result + 32 * v42);
    v114 = *v57;
    re::Projection::cullingProjectionMatrix(&v133, v156);
    re::RenderCamera::computeInverseTransform(v57, v155);
    v58 = 0;
    v59 = v156[0];
    v60 = v156[1];
    v61 = v156[2];
    v62 = v156[3];
    v148 = v155[0];
    v149 = v155[1];
    v150 = v155[2];
    v151 = v155[3];
    do
    {
      v128.columns[v58 / 0x10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v59, COERCE_FLOAT(*(&v148 + v58))), v60, *(&v148 + v58), 1), v61, *(&v148 + v58), 2), v62, *(&v148 + v58), 3);
      v58 += 16;
    }

    while (v58 != 64);
    v158 = __invert_f4(v128);
    v119 = v158.columns[1];
    v123 = v158.columns[0];
    v115 = v158.columns[3];
    v117 = v158.columns[2];
    v64 = 0;
    LODWORD(v65) = 0;
    v66 = 0;
    v128.columns[0].i64[0] = 0;
    v128.columns[0].i32[2] = 0;
    *&v148 = 1065353216;
    do
    {
      v67 = 0;
      v158.columns[0].i32[0] = *(&v148 + v66);
      _ZF = v158.columns[0].f32[0] == 0.0 && v55 == INFINITY;
      *v156 = v47;
      v69 = _ZF;
      v125 = vdupq_lane_s32(*v158.columns[0].f32, 0);
      do
      {
        v70 = 0;
        v71 = (v156 + v67);
        v158.columns[0] = vld1q_dup_f32(v71);
        v126 = v158.columns[0];
        *v155 = v47;
        v65 = v65;
        v72 = 4 * v65;
        do
        {
          if (v69)
          {
            if (v64 <= v65 - 4)
            {
              re::internal::assertLog(6, v63, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v65 - 4, v64);
              _os_crash();
              __break(1u);
LABEL_47:
              re::internal::assertLog(6, v63, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, 0, 0);
              _os_crash();
              __break(1u);
LABEL_48:
              re::internal::assertLog(6, v63, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, 1, 1);
              _os_crash();
              __break(1u);
LABEL_49:
              re::internal::assertLog(6, v63, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, 3, v64);
              _os_crash();
              __break(1u);
              goto LABEL_50;
            }

            v158.columns[0].i64[0] = v125.i64[v72 / 2];
            v158.columns[0].i32[2] = v125.i32[v72 + 2];
            v127 = v158.columns[0];
            re::DynamicInlineArray<re::Vector4<float>,8ul>::ensureCapacity(v64, v63);
            v158.columns[0] = vsubq_f32(v127, v114);
            v158.columns[0].i32[3] = 0;
          }

          else
          {
            v158.columns[0].i32[0] = *(v155 + v70);
            v127 = v158.columns[0];
            re::DynamicInlineArray<re::Vector4<float>,8ul>::ensureCapacity(v64, v63);
            v158.columns[0] = vaddq_f32(v115, vmlaq_f32(vmlaq_f32(vmulq_n_f32(v123, v127.f32[0]), v126, v119), v125, v117));
            v158.columns[0] = vdivq_f32(v158.columns[0], vdupq_laneq_s32(v158.columns[0], 3));
            v158.columns[0].i32[3] = 1.0;
          }

          v128.columns[v64 + 1] = v158.columns[0];
          v73 = v128.columns[0].i64[0];
          v64 = ++v128.columns[0].i64[0];
          ++v128.columns[0].i32[2];
          ++v65;
          v70 += 4;
          v72 += 4;
        }

        while (v70 != 8);
        v67 += 4;
      }

      while (v67 != 8);
      v66 += 4;
    }

    while (v66 != 8);
    if (!v64)
    {
      goto LABEL_47;
    }

    v8 = a5;
    v7 = a4;
    if (!v73)
    {
      goto LABEL_48;
    }

    if (v64 <= 3)
    {
      goto LABEL_49;
    }

    v125 = v128.columns[2];
    v126 = v129;
    v127 = v128.columns[1];
    re::DynamicInlineArray<re::PlaneF,6ul>::ensureCapacity(0, v63);
    v74 = vsubq_f32(v125, v127);
    v118 = vextq_s8(vuzp1q_s32(v74, v74), v74, 0xCuLL);
    v120 = v74;
    v116 = vsubq_f32(v126, v125);
    v106 = vextq_s8(vuzp1q_s32(v116, v116), v116, 0xCuLL);
    v75 = vmlaq_f32(vmulq_f32(v106, vnegq_f32(v74)), v116, v118);
    v76 = vextq_s8(vuzp1q_s32(v75, v75), v75, 0xCuLL);
    v77 = vmulq_f32(v127, v76);
    v76.f32[3] = -(v77.f32[2] + vaddv_f32(*v77.f32));
    v149 = v76;
    v124 = v128.columns[3];
    re::DynamicInlineArray<re::PlaneF,6ul>::ensureCapacity(1uLL, v78);
    v79 = vsubq_f32(v124, v114);
    v80 = vsubq_f32(v127, v124);
    v81 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v80, v80), v80, 0xCuLL), vnegq_f32(v79)), v80, vextq_s8(vuzp1q_s32(v79, v79), v79, 0xCuLL));
    v82 = vextq_s8(vuzp1q_s32(v81, v81), v81, 0xCuLL);
    v83 = vmulq_f32(v114, v82);
    v82.f32[3] = -(v83.f32[2] + vaddv_f32(*v83.f32));
    v150 = v82;
    re::DynamicInlineArray<re::PlaneF,6ul>::ensureCapacity(2uLL, v84);
    v85 = vsubq_f32(v125, v114);
    v86 = vmlaq_f32(vmulq_f32(v106, vnegq_f32(v85)), v116, vextq_s8(vuzp1q_s32(v85, v85), v85, 0xCuLL));
    v87 = vextq_s8(vuzp1q_s32(v86, v86), v86, 0xCuLL);
    v88 = vmulq_f32(v114, v87);
    v87.f32[3] = -(v88.f32[2] + vaddv_f32(*v88.f32));
    v151 = v87;
    re::DynamicInlineArray<re::PlaneF,6ul>::ensureCapacity(3uLL, v89);
    v90 = vsubq_f32(v126, v114);
    v91 = vsubq_f32(v124, v126);
    v92 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v91, v91), v91, 0xCuLL), vnegq_f32(v90)), v91, vextq_s8(vuzp1q_s32(v90, v90), v90, 0xCuLL));
    v93 = vextq_s8(vuzp1q_s32(v92, v92), v92, 0xCuLL);
    v94 = vmulq_f32(v114, v93);
    v93.f32[3] = -(v94.f32[2] + vaddv_f32(*v94.f32));
    v152 = v93;
    re::DynamicInlineArray<re::PlaneF,6ul>::ensureCapacity(4uLL, v95);
    v97 = vsubq_f32(v127, v114);
    v98 = vmlaq_f32(vmulq_f32(v118, vnegq_f32(v97)), v120, vextq_s8(vuzp1q_s32(v97, v97), v97, 0xCuLL));
    v99 = vextq_s8(vuzp1q_s32(v98, v98), v98, 0xCuLL);
    v100 = vmulq_f32(v114, v99);
    v99.f32[3] = -(v100.f32[2] + vaddv_f32(*v100.f32));
    v153 = v99;
    *&v148 = 5;
    DWORD2(v148) = 5;
    if (*a4 == 1 && v55 != INFINITY)
    {
      if (v64 > 7)
      {
        v125 = v131;
        v126 = v132;
        v127 = v130;
        re::DynamicInlineArray<re::PlaneF,6ul>::ensureCapacity(5uLL, v96);
        v101 = vsubq_f32(v125, v126);
        v102 = vsubq_f32(v127, v125);
        v103 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v102, v102), v102, 0xCuLL), vnegq_f32(v101)), v102, vextq_s8(vuzp1q_s32(v101, v101), v101, 0xCuLL));
        v104 = vextq_s8(vuzp1q_s32(v103, v103), v103, 0xCuLL);
        v105 = vmulq_f32(v126, v104);
        v104.f32[3] = -(v105.f32[2] + vaddv_f32(*v105.f32));
        v154 = v104;
        *&v148 = 6;
        DWORD2(v148) = 6;
        goto LABEL_42;
      }

LABEL_50:
      re::internal::assertLog(6, v96, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, 7, v64);
      _os_crash();
      __break(1u);
    }

LABEL_42:
    re::DynamicInlineArray<re::DynamicInlineArray<re::PlaneF,6ul>,2ul>::add(a5, &v148);
    if (a4[1] == 1)
    {
      re::DynamicInlineArray<re::DynamicInlineArray<re::Vector4<float>,8ul>,2ul>::add(v108, &v128);
    }

    v42 = v113 + 1;
    result = v109;
    a2 = v110;
  }

  while (v113 + 1 != v107);
LABEL_45:
  *(v8 + 544) = *v7;
  return result;
}

uint64_t re::DynamicInlineArray<re::DynamicInlineArray<re::PlaneF,6ul>,2ul>::add(uint64_t a1, uint64_t *a2)
{
  if (*a1 >= 2uLL)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v3 = a1 + 112 * *a1;
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    v4 = *a2;
    result = memcpy((v3 + 32), a2 + 2, 16 * *a2);
    *(v3 + 16) = v4;
    ++*a1;
    ++*(a1 + 8);
  }

  return result;
}

uint64_t re::DynamicInlineArray<re::DynamicInlineArray<re::Vector4<float>,8ul>,2ul>::add(uint64_t a1, uint64_t *a2)
{
  if (*a1 >= 2uLL)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v3 = a1 + 144 * *a1;
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    v4 = *a2;
    result = memcpy((v3 + 32), a2 + 2, 16 * *a2);
    *(v3 + 16) = v4;
    ++*a1;
    ++*(a1 + 8);
  }

  return result;
}

uint64_t re::isBoundingBoxInsidePlanes(uint64_t a1, uint64_t a2, float32x4_t *a3)
{
  if (!*(a2 + 8))
  {
    return 1;
  }

  re::transformedAABBVertices(a1, a3, v10);
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *a2;
    v6 = *a2 + 16 * v4;
    do
    {
      v7 = 0;
      while (1)
      {
        v8 = vmulq_f32(*v5, v10[v7]);
        if (vaddv_f32(vadd_f32(*v8.i8, *&vextq_s8(v8, v8, 8uLL))) <= 0.0)
        {
          break;
        }

        if (++v7 == 8)
        {
          return 0;
        }
      }

      ++v5;
    }

    while (v5 != v6);
  }

  return 1;
}

uint64_t re::isBoundingBoxInsidePlanesArray(uint64_t a1, float32x4_t *a2, float32x4_t *a3)
{
  if (a2->i64[0] == 1)
  {
    v11 = a2[1].i64[0];
    *&v18[0] = a2 + 2;
    *(&v18[0] + 1) = v11;
    return re::isBoundingBoxInsidePlanes(a1, v18, a3);
  }

  if (a2->i64[0] != 2)
  {
    return 0;
  }

  if (!a2[1].i64[0] || !a2[8].i64[0])
  {
    return 1;
  }

  re::transformedAABBVertices(a1, a3, v18);
  v5 = a2->i64[0];
  if (a2->i64[0])
  {
    v6 = a2[1].i64[0];
    if (v6)
    {
      v7 = a2 + 2;
      v8 = &a2[v6 + 2];
LABEL_8:
      for (i = 0; i != 8; ++i)
      {
        v10 = vmulq_f32(*v7, v18[i]);
        if (vaddv_f32(vadd_f32(*v10.i8, *&vextq_s8(v10, v10, 8uLL))) <= 0.0)
        {
          if (++v7 != v8)
          {
            goto LABEL_8;
          }

          return 1;
        }
      }

      if (v5 == 1)
      {
        goto LABEL_27;
      }

      v13 = a2[8].i64[0];
      if (v13)
      {
        v14 = a2 + 9;
        v15 = &a2[v13 + 9];
        result = 1;
        do
        {
          v16 = 0;
          while (1)
          {
            v17 = vmulq_f32(*v14, v18[v16]);
            if (vaddv_f32(vadd_f32(*v17.i8, *&vextq_s8(v17, v17, 8uLL))) <= 0.0)
            {
              break;
            }

            if (++v16 == 8)
            {
              return 0;
            }
          }

          ++v14;
        }

        while (v14 != v15);
        return result;
      }
    }

    return 1;
  }

  re::internal::assertLog(6, v4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, 0, 0);
  _os_crash();
  __break(1u);
LABEL_27:
  re::internal::assertLog(6, v4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v5, v5);
  result = _os_crash();
  __break(1u);
  return result;
}

BOOL re::isBoundingSphereIntersectingFrustumPlanes(float32x4_t *a1, void *a2, double a3, double a4, float32x4_t a5)
{
  if (!*a2)
  {
    return 1;
  }

  v5 = *a1;
  LODWORD(v6) = HIDWORD(*a1);
  v7 = a2 + 7;
  v8 = 16 * *a2 - 16;
  do
  {
    a5.i64[0] = *(v7 - 3);
    a5.f32[2] = *(v7 - 1);
    v9 = vmulq_f32(a5, a5);
    a5 = vmulq_f32(v5, a5);
    v10 = *v7;
    v7 += 4;
    a5.f32[0] = (v10 + (a5.f32[2] + vaddv_f32(*a5.f32))) / sqrtf(v9.f32[2] + vaddv_f32(*v9.f32));
    result = a5.f32[0] <= v6;
    v12 = a5.f32[0] > v6 || v8 == 0;
    v8 -= 16;
  }

  while (!v12);
  return result;
}

uint64_t re::approxFrustumIntersectFrustum(float32x4_t *a1, float32x4_t *a2)
{
  if (!a1->i64[0] || !a2->i64[0])
  {
    return 1;
  }

  v2 = a1 + 1;
  do
  {
    v3 = 0;
    while (1)
    {
      v4 = vmulq_f32(*v2, a2[v3 + 7]);
      if (vaddv_f32(vadd_f32(*v4.i8, *&vextq_s8(v4, v4, 8uLL))) <= 0.0)
      {
        break;
      }

      if (++v3 == 8)
      {
        return 0;
      }
    }

    ++v2;
  }

  while (v2 != &a1[a1->i64[0] + 1]);
  v5 = a1 + 7;
  v6 = a2 + 1;
  do
  {
    v7 = 0;
    while (1)
    {
      v8 = vmulq_f32(*v6, v5[v7]);
      if (vaddv_f32(vadd_f32(*v8.i8, *&vextq_s8(v8, v8, 8uLL))) <= 0.0)
      {
        break;
      }

      result = 0;
      if (++v7 == 8)
      {
        return result;
      }
    }

    ++v6;
    result = 1;
  }

  while (v6 != &a2[a2->i64[0] + 1]);
  return result;
}

_DWORD *re::setResolvedTechniqueStateOverride(_DWORD *result, re::MaterialParameterTableLayers *this)
{
  v2 = result[15];
  if (v2 != -1)
  {
    v3 = result;
    result = re::MaterialParameterTableLayers::getTechniqueAtIndex(this, v2);
    if (result && *(*result + 2846) == 1)
    {
      *(v3 + 192) = 1;
      v4 = v3[49];
      if ((v4 & 0x1000000) == 0)
      {
        *(v3 + 193) |= 4u;
      }

      if ((v4 & 0x800000) == 0)
      {
        *(v3 + 193) |= 1u;
      }
    }

    if (*(v3 + 161) < 0)
    {
      *(v3 + 192) = 1;
    }
  }

  return result;
}

double re::bucketMeshPart(uint64_t a1, int8x16_t *a2, uint64_t a3, uint64_t a4, _WORD *a5)
{
  v111 = *MEMORY[0x1E69E9840];
  v86 = *(a3 + 32);
  v87 = 0;
  v88 = 0;
  v90 = 0u;
  v91 = 0u;
  v92 = 0;
  v93 = 0x7FFFFFFFLL;
  if (re::s_debugSettingsManager)
  {
    LOBYTE(v98) = 0;
    *&v106 = 0x38C0AA772CC1B274;
    *(&v106 + 1) = "overrides:usepbrlite";
    v7 = re::DebugSettingsManager::getWithErrorCode<BOOL>(re::s_debugSettingsManager, &v106, &v98);
    v8 = v7;
    if (v106)
    {
      if (v106)
      {
      }
    }

    v9 = v98;
    if (v8)
    {
      v9 = 0;
    }

    v80 = v9;
    v10 = a4;
  }

  else
  {
    v10 = a4;
    v80 = 0;
  }

  v11 = 0;
  v95 = vextq_s8(a2[4], a2[4], 8uLL);
  v12 = a2[3].i64[1] + 304;
  v96 = a2[5].i64[1];
  v97 = v12;
  while (1)
  {
    v13 = v95.i64[v11];
    if (v13)
    {
      *&v106 = a2[14].i64[0];
      if (re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(v13 + 1032, &v106))
      {
        break;
      }
    }

    if (++v11 == 4)
    {
      v79 = 1;
      goto LABEL_15;
    }
  }

  v79 = 0;
LABEL_15:
  v14 = 0;
  do
  {
    v81 = v14;
    v15 = *(v95.i64 + v14);
    if (!v15)
    {
      goto LABEL_24;
    }

    v16 = re::MaterialParameterTable::passTechniqueHashTable(v15, a2[14].i64[0], v79);
    v17 = *(v16 + 8);
    if (v17)
    {
      v18 = 0;
      v19 = v16[2];
      while (1)
      {
        v20 = *v19;
        v19 += 6;
        if (v20 < 0)
        {
          break;
        }

        if (v17 == ++v18)
        {
          LODWORD(v18) = *(v16 + 8);
          break;
        }
      }
    }

    else
    {
      LODWORD(v18) = 0;
    }

    if (v18 == v17)
    {
      goto LABEL_24;
    }

    v21 = v16[2];
    v84 = *(v16 + 8);
    v85 = v16;
    do
    {
      v22 = v21 + 24 * v18;
      if (HIDWORD(v91))
      {
        v23 = *(v22 + 8);
        if (DWORD2(v91))
        {
          for (i = *(*(&v90 + 1) + 4 * (v23 % DWORD2(v91))); i != 0x7FFFFFFF; i = *(v91 + 16 * i) & 0x7FFFFFFF)
          {
            if (*(v91 + 16 * i + 8) == v23)
            {
              goto LABEL_71;
            }
          }
        }
      }

      else
      {
        if (v87)
        {
          v25 = 8 * v87;
          v26 = v89;
          while (*v26 != *(v22 + 8))
          {
            ++v26;
            v25 -= 8;
            if (!v25)
            {
              goto LABEL_37;
            }
          }
        }

        else
        {
LABEL_37:
          v26 = &v89[v87];
        }

        if (v26 != &v89[v87])
        {
          goto LABEL_71;
        }

        v23 = *(v22 + 8);
      }

      re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v10, (v22 + 8), v23, &v106);
      if (HIDWORD(v106) == 0x7FFFFFFF)
      {
        v27 = *(a3 + 32);
        v106 = 0uLL;
        LODWORD(v107) = 1;
        v108 = 0uLL;
        *(&v107 + 1) = 0;
        LODWORD(v109) = 0;
        re::BucketArray<re::MeshPartDrawContext,128ul>::init(&v106, v27, 1uLL);
        DWORD2(v109) = 0;
        v28 = re::HashTable<unsigned long,re::MeshPassInfo,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::add(v10, (v22 + 8), &v106);
        re::BucketArray<re::MeshPartDrawContext,128ul>::deinit(&v106);
        if (v106 && (v107 & 1) == 0)
        {
          (*(*v106 + 40))(v106, v108);
        }
      }

      else
      {
        v28 = *(v10 + 16) + 80 * HIDWORD(v106) + 16;
      }

      *(a1 + 64) = 0;
      *(a1 + 66) = 0;
      v29 = a2[3].i64[1];
      re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(v29 + 24, (v22 + 16), *(v22 + 16), &v106);
      if (HIDWORD(v106) == 0x7FFFFFFF)
      {
        *(a1 + 60) = -1;
LABEL_60:
        v39 = re::BucketArray<re::MeshPartDrawContext,128ul>::addUninitialized(v28);
        v41 = *(a1 + 16);
        v40 = *(a1 + 32);
        *v39 = *a1;
        v39[1] = v41;
        v39[2] = v40;
        v42 = *(a1 + 96);
        v44 = *(a1 + 48);
        v43 = *(a1 + 64);
        v39[5] = *(a1 + 80);
        v39[6] = v42;
        v39[3] = v44;
        v39[4] = v43;
        v45 = *(a1 + 160);
        v47 = *(a1 + 112);
        v46 = *(a1 + 128);
        v39[9] = *(a1 + 144);
        v39[10] = v45;
        v39[7] = v47;
        v39[8] = v46;
        v48 = *(a1 + 224);
        v50 = *(a1 + 176);
        v49 = *(a1 + 192);
        v39[13] = *(a1 + 208);
        v39[14] = v48;
        v39[11] = v50;
        v39[12] = v49;
        goto LABEL_61;
      }

      v31 = *(v29 + 40) + 48 * HIDWORD(v106);
      v32 = *(v31 + 40);
      if ((v32 & 0x80000000) == 0)
      {
        v33 = *(a1 + 196);
        if ((v33 & 0x400) != 0)
        {
          v34 = 0;
        }

        else
        {
          v34 = -2;
        }

        if ((v33 & 0x100) != 0)
        {
          v35 = ((v33 >> 9) | 0xFE) + v34;
        }

        else
        {
          v35 = (v33 >> 9) & 3;
        }

        if ((*(a1 + 196) & 0x700) == 0x100)
        {
          v35 = v80;
        }

        v36 = (v35 + v32);
        v37 = *(v31 + 24);
        if (v36 >= (v37 - 1))
        {
          v36 = (v37 - 1);
        }

        v38 = v36 & ~(v36 >> 31);
        if (v37 <= v38)
        {
          v94 = 0;
          v109 = 0u;
          v110 = 0u;
          v107 = 0u;
          v108 = 0u;
          v106 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v98 = 136315906;
          v99 = "operator[]";
          v100 = 1024;
          v101 = 476;
          v102 = 2048;
          v103 = v38;
          v104 = 2048;
          v105 = v37;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_105;
        }

        *(a1 + 60) = *(*(v31 + 32) + 4 * v38);
        re::setResolvedTechniqueStateOverride(a1, a2);
        goto LABEL_60;
      }

      v57 = *(v31 + 24);
      if (v57 < 2)
      {
        if (!v57)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v58 = (*a5)++;
        *(a1 + 64) = v58;
      }

      v59 = 0;
      do
      {
        *(a1 + 60) = *(*(v31 + 32) + 4 * v59);
        *(a1 + 66) = v59;
        re::setResolvedTechniqueStateOverride(a1, a2);
        v60 = re::BucketArray<re::MeshPartDrawContext,128ul>::addUninitialized(v28);
        v62 = *(a1 + 16);
        v61 = *(a1 + 32);
        *v60 = *a1;
        v60[1] = v62;
        v60[2] = v61;
        v63 = *(a1 + 96);
        v65 = *(a1 + 48);
        v64 = *(a1 + 64);
        v60[5] = *(a1 + 80);
        v60[6] = v63;
        v60[3] = v65;
        v60[4] = v64;
        v66 = *(a1 + 160);
        v68 = *(a1 + 112);
        v67 = *(a1 + 128);
        v60[9] = *(a1 + 144);
        v60[10] = v66;
        v60[7] = v68;
        v60[8] = v67;
        v69 = *(a1 + 224);
        v71 = *(a1 + 176);
        v70 = *(a1 + 192);
        v60[13] = *(a1 + 208);
        v60[14] = v69;
        v60[11] = v71;
        v60[12] = v70;
        ++v59;
      }

      while (v59 < *(v31 + 24));
LABEL_61:
      v10 = a4;
      if (HIDWORD(v91))
      {
        goto LABEL_62;
      }

      v51 = *(v22 + 8);
      LODWORD(v17) = v84;
      v16 = v85;
      if (!v87)
      {
        goto LABEL_70;
      }

      v52 = 8 * v87;
      v53 = v89;
      while (*v53 != v51)
      {
        ++v53;
        v52 -= 8;
        if (!v52)
        {
          v53 = &v89[v87];
          break;
        }
      }

      if (v53 != &v89[v87])
      {
        goto LABEL_71;
      }

      if (v87 <= 9)
      {
LABEL_70:
        v89[v87] = v51;
        v54 = v87;
        ++v88;
        if (!__CFADD__(v87++, 1))
        {
          goto LABEL_71;
        }

LABEL_105:
        re::internal::assertLog(6, v30, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v54, 0);
        _os_crash();
        __break(1u);
      }

      v72 = v86;
      if (!v86)
      {
      }

      if (!v90)
      {
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::init(&v90, v72, 20);
      }

      v73 = v89;
      do
      {
        v74 = *v73;
        if (!DWORD2(v91))
        {
          LODWORD(v75) = 0;
LABEL_98:
          re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addAsCopy(&v90, v75, v74, v73, v73);
          ++HIDWORD(v93);
          goto LABEL_99;
        }

        v75 = v74 % DWORD2(v91);
        v76 = *(*(&v90 + 1) + 4 * v75);
        if (v76 == 0x7FFFFFFF)
        {
          goto LABEL_98;
        }

        while (*(v91 + 16 * v76 + 8) != v74)
        {
          v76 = *(v91 + 16 * v76) & 0x7FFFFFFF;
          if (v76 == 0x7FFFFFFF)
          {
            goto LABEL_98;
          }
        }

LABEL_99:
        ++v73;
      }

      while (v73 != &v89[v87]);
      v87 = 0;
      ++v88;
LABEL_62:
      re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::add(&v90, (v22 + 8));
      LODWORD(v17) = v84;
      v16 = v85;
LABEL_71:
      if (*(v16 + 8) <= (v18 + 1))
      {
        v56 = v18 + 1;
      }

      else
      {
        v56 = *(v16 + 8);
      }

      v21 = v16[2];
      while (v56 - 1 != v18)
      {
        LODWORD(v18) = v18 + 1;
        if ((*(v21 + 24 * v18) & 0x80000000) != 0)
        {
          goto LABEL_79;
        }
      }

      LODWORD(v18) = v56;
LABEL_79:
      ;
    }

    while (v18 != v17);
LABEL_24:
    v14 = v81 + 8;
  }

  while (v81 != 24);
  if (v90)
  {
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(&v90);
  }

  return re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(&v90);
}

unint64_t re::DynamicInlineArray<re::PlaneF,6ul>::ensureCapacity(unint64_t result, uint64_t a2)
{
  if (result > 5)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

unint64_t re::DynamicInlineArray<re::Vector4<float>,8ul>::ensureCapacity(unint64_t result, uint64_t a2)
{
  if (result > 7)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::DrawCallSortKey<3ul,unsigned long long>::appendUInt8(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v5 = *a3;
  if (v5 >= 0x18)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) SortKey trying to use %zu bytes when it only has capacity for %zu.", "(size_t)inoutByteOffset + byteCount <= WordCount * sizeof(WordType)", "appendBytesToKey", 19, v5 + 1, 24, v3, v4);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    *(result - v5 + 23) = a2;
    ++*a3;
  }

  return result;
}

uint64_t re::DrawCallSortKey<3ul,unsigned long long>::appendUInt16(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v5 = *a3;
  if (v5 >= 0x17)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) SortKey trying to use %zu bytes when it only has capacity for %zu.", "(size_t)inoutByteOffset + byteCount <= WordCount * sizeof(WordType)", "appendBytesToKey", 19, v5 + 2, 24, v3, v4);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    *(result - v5 + 22) = a2;
    *a3 += 2;
  }

  return result;
}

uint64_t re::DrawCallSortKey<3ul,unsigned long long>::appendUInt64(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v5 = *a3;
  if (v5 >= 0x11)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) SortKey trying to use %zu bytes when it only has capacity for %zu.", "(size_t)inoutByteOffset + byteCount <= WordCount * sizeof(WordType)", "appendBytesToKey", 19, v5 + 8, 24, v3, v4);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    *(result - v5 + 16) = a2;
    *a3 += 8;
  }

  return result;
}

uint64_t re::DrawCallSortKey<3ul,unsigned long long>::appendBytes(uint64_t a1, uint64_t a2, uint64_t a3, size_t __n, _BYTE *a5)
{
  v9 = a2;
  v5 = *a5;
  if (v5 + __n >= 0x19)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) SortKey trying to use %zu bytes when it only has capacity for %zu.", "(size_t)inoutByteOffset + byteCount <= WordCount * sizeof(WordType)", "appendBytesToKey", 19, v5 + __n, 24);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v7 = __n;
    result = memcpy((a1 + (24 - __n - v5)), &v9 + a3, __n);
    *a5 += v7;
  }

  return result;
}

uint64_t re::DrawCallSortKey<4ul,unsigned long long>::appendFloat(uint64_t result, _BYTE *a2, float a3)
{
  v5 = *a2;
  if (v5 >= 0x1D)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) SortKey trying to use %zu bytes when it only has capacity for %zu.", "(size_t)inoutByteOffset + byteCount <= WordCount * sizeof(WordType)", "appendBytesToKey", 19, v5 + 4, 32, v3, v4);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    *(result - v5 + 28) = ((SLODWORD(a3) >> 31) | 0x80000000) ^ LODWORD(a3);
    *a2 += 4;
  }

  return result;
}

uint64_t re::DrawCallSortKey<4ul,unsigned long long>::appendInt8(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v5 = *a3;
  if (v5 >= 0x20)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) SortKey trying to use %zu bytes when it only has capacity for %zu.", "(size_t)inoutByteOffset + byteCount <= WordCount * sizeof(WordType)", "appendBytesToKey", 19, v5 + 1, 32, v3, v4);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    *(result - v5 + 31) = a2 ^ 0x80;
    ++*a3;
  }

  return result;
}

uint64_t re::DrawCallSortKey<4ul,unsigned long long>::appendInt32(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v5 = *a3;
  if (v5 >= 0x1D)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) SortKey trying to use %zu bytes when it only has capacity for %zu.", "(size_t)inoutByteOffset + byteCount <= WordCount * sizeof(WordType)", "appendBytesToKey", 19, v5 + 4, 32, v3, v4);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    *(result - v5 + 28) = a2 ^ 0x80000000;
    *a3 += 4;
  }

  return result;
}

uint64_t re::DrawCallSortKey<4ul,unsigned long long>::appendUInt8(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v5 = *a3;
  if (v5 >= 0x20)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) SortKey trying to use %zu bytes when it only has capacity for %zu.", "(size_t)inoutByteOffset + byteCount <= WordCount * sizeof(WordType)", "appendBytesToKey", 19, v5 + 1, 32, v3, v4);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    *(result - v5 + 31) = a2;
    ++*a3;
  }

  return result;
}

uint64_t re::DrawCallSortKey<4ul,unsigned long long>::appendUInt16(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v5 = *a3;
  if (v5 >= 0x1F)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) SortKey trying to use %zu bytes when it only has capacity for %zu.", "(size_t)inoutByteOffset + byteCount <= WordCount * sizeof(WordType)", "appendBytesToKey", 19, v5 + 2, 32, v3, v4);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    *(result - v5 + 30) = a2;
    *a3 += 2;
  }

  return result;
}

uint64_t re::DrawCallSortKey<4ul,unsigned long long>::appendUInt32(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v5 = *a3;
  if (v5 >= 0x1D)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) SortKey trying to use %zu bytes when it only has capacity for %zu.", "(size_t)inoutByteOffset + byteCount <= WordCount * sizeof(WordType)", "appendBytesToKey", 19, v5 + 4, 32, v3, v4);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    *(result - v5 + 28) = a2;
    *a3 += 4;
  }

  return result;
}

uint64_t re::DrawCallSortKey<5ul,unsigned long long>::appendFloat(uint64_t result, _BYTE *a2, float a3)
{
  v5 = *a2;
  if (v5 >= 0x25)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) SortKey trying to use %zu bytes when it only has capacity for %zu.", "(size_t)inoutByteOffset + byteCount <= WordCount * sizeof(WordType)", "appendBytesToKey", 19, v5 + 4, 40, v3, v4);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    *(result - v5 + 36) = ((SLODWORD(a3) >> 31) | 0x80000000) ^ LODWORD(a3);
    *a2 += 4;
  }

  return result;
}

uint64_t re::DrawCallSortKey<5ul,unsigned long long>::appendInt8(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v5 = *a3;
  if (v5 >= 0x28)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) SortKey trying to use %zu bytes when it only has capacity for %zu.", "(size_t)inoutByteOffset + byteCount <= WordCount * sizeof(WordType)", "appendBytesToKey", 19, v5 + 1, 40, v3, v4);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    *(result - v5 + 39) = a2 ^ 0x80;
    ++*a3;
  }

  return result;
}

uint64_t re::DrawCallSortKey<5ul,unsigned long long>::appendInt32(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v5 = *a3;
  if (v5 >= 0x25)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) SortKey trying to use %zu bytes when it only has capacity for %zu.", "(size_t)inoutByteOffset + byteCount <= WordCount * sizeof(WordType)", "appendBytesToKey", 19, v5 + 4, 40, v3, v4);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    *(result - v5 + 36) = a2 ^ 0x80000000;
    *a3 += 4;
  }

  return result;
}

uint64_t re::DrawCallSortKey<5ul,unsigned long long>::appendUInt8(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v5 = *a3;
  if (v5 >= 0x28)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) SortKey trying to use %zu bytes when it only has capacity for %zu.", "(size_t)inoutByteOffset + byteCount <= WordCount * sizeof(WordType)", "appendBytesToKey", 19, v5 + 1, 40, v3, v4);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    *(result - v5 + 39) = a2;
    ++*a3;
  }

  return result;
}

uint64_t re::DrawCallSortKey<5ul,unsigned long long>::appendUInt16(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v5 = *a3;
  if (v5 >= 0x27)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) SortKey trying to use %zu bytes when it only has capacity for %zu.", "(size_t)inoutByteOffset + byteCount <= WordCount * sizeof(WordType)", "appendBytesToKey", 19, v5 + 2, 40, v3, v4);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    *(result - v5 + 38) = a2;
    *a3 += 2;
  }

  return result;
}

uint64_t re::DrawCallSortKey<5ul,unsigned long long>::appendUInt32(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v5 = *a3;
  if (v5 >= 0x25)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) SortKey trying to use %zu bytes when it only has capacity for %zu.", "(size_t)inoutByteOffset + byteCount <= WordCount * sizeof(WordType)", "appendBytesToKey", 19, v5 + 4, 40, v3, v4);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    *(result - v5 + 36) = a2;
    *a3 += 4;
  }

  return result;
}

void re::OpenSubdivUtils::generateOpenSubdivTesselationBuffers(uint64_t a1, id *a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v177 = *MEMORY[0x1E69E9840];
  v96 = a4;
  if (a4)
  {
    v7 = a2;
    if (*a2)
    {
      v150 = 0;
      v135 = 0;
      v138 = 0;
      v143 = 0;
      v141 = 0;
      v142 = 0;
      v144 = 0;
      v148 = 0;
      v149 = 0;
      v146 = 0;
      v145 = 0;
      v147 = 0;
      v10 = *re::getOrCreateComputePipelineState(a1, &v133);
      v118 = 0;
      v121 = 0;
      v126 = 0;
      v124 = 0;
      v125 = 0;
      v127 = 0;
      v131 = 0;
      v132 = 0;
      v129 = 0;
      v128 = 0;
      v130 = 0;
      v11 = *re::getOrCreateComputePipelineState(a1, &v116);
      v114 = 0;
      memset(v156, 0, 24);
      v99 = 0;
      *v100 = 0uLL;
      v13 = *&v100[8];
      v14 = (*&v156[1] + 4);
      v15 = a3;
      v16 = v96;
      do
      {
        *(v14 - 1) = 2;
        v17 = *v15;
        v15 += 8;
        *v14 = v17;
        *v13 = v17;
        v13 += 64;
        v14 += 64;
        --v16;
      }

      while (v16);
      *&v174[0] = [*(a1 + 208) newBufferWithBytes_length_options_];
      NS::SharedPtr<MTL::Texture>::operator=(&v114, v174);
      if (*&v174[0])
      {
      }

      if (!v114 || ![v114 contents])
      {
        goto LABEL_13;
      }

      *&v174[0] = [*(a1 + 208) newBufferWithBytes:*&v100[8] length:*v100 options:0];
      NS::SharedPtr<MTL::Texture>::operator=(&v150, v174);
      if (*&v174[0])
      {
      }

      if (v150)
      {
        v18 = [v150 contents] != 0;
      }

      else
      {
LABEL_13:
        v18 = 0;
      }

      if (v99 && *v100)
      {
        (*(*v99 + 40))();
      }

      if (*&v156[0] && *(&v156[0] + 1))
      {
        (*(**&v156[0] + 40))();
      }

      if (v18)
      {
        v77 = v18;
        v78 = v7;
        v19 = [(_anonymous_namespace_ *)v11 threadExecutionWidth];
        v20 = [*(a1 + 208) maxThreadgroupMemoryLength];
        v22 = 0;
        if (v19 * v19 >= v20)
        {
          v23 = v20;
        }

        else
        {
          v23 = v19 * v19;
        }

        v80 = v23;
        v24 = v19;
        v25 = vcnt_s8(v19);
        v25.i16[0] = vaddlv_u8(v25);
        v79 = v25.u32[0];
        v26 = 0x10000;
        v92 = a3;
        v81 = v11;
        v83 = v10;
        do
        {
          if (v22 == a6)
          {
            re::internal::assertLog(6, v21, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a6, a6);
            _os_crash();
            __break(1u);
LABEL_215:
            re::internal::assertLog(4, v30, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
            _os_crash();
            __break(1u);
LABEL_216:
            *v167 = 0;
            memset(v157, 0, sizeof(v157));
            memset(v156, 0, sizeof(v156));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v174[0]) = 136315906;
            *(v174 + 4) = "operator[]";
            WORD6(v174[0]) = 1024;
            *(v174 + 14) = 468;
            WORD1(v174[1]) = 2048;
            *(&v174[1] + 4) = 0;
            WORD6(v174[1]) = 2048;
            *(&v174[1] + 14) = 0;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_217:
            *v167 = 0;
            memset(v157, 0, sizeof(v157));
            memset(v156, 0, sizeof(v156));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v174[0]) = 136315906;
            *(v174 + 4) = "operator[]";
            WORD6(v174[0]) = 1024;
            *(v174 + 14) = 468;
            WORD1(v174[1]) = 2048;
            *(&v174[1] + 4) = 1;
            WORD6(v174[1]) = 2048;
            *(&v174[1] + 14) = v22;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_218:
            *v167 = 0;
            memset(v157, 0, sizeof(v157));
            memset(v156, 0, sizeof(v156));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v174[0]) = 136315906;
            *(v174 + 4) = "operator[]";
            WORD6(v174[0]) = 1024;
            *(v174 + 14) = 468;
            WORD1(v174[1]) = 2048;
            *(&v174[1] + 4) = 2;
            WORD6(v174[1]) = 2048;
            *(&v174[1] + 14) = v24;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_219:
            re::internal::assertLog(6, v47, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a6, a6);
            _os_crash();
            __break(1u);
LABEL_220:
            *v167 = 0;
            v175 = 0u;
            v176 = 0u;
            memset(v174, 0, sizeof(v174));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v152 = 136315906;
            *&v152[4] = "operator[]";
            *&v152[12] = 1024;
            *&v152[14] = 468;
            *&v152[18] = 2048;
            *&v152[20] = 0;
            *&v152[28] = 2048;
            *v153 = 0;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_221:
            *v167 = 0;
            v175 = 0u;
            v176 = 0u;
            memset(v174, 0, sizeof(v174));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v152 = 136315906;
            *&v152[4] = "operator[]";
            *&v152[12] = 1024;
            *&v152[14] = 468;
            *&v152[18] = 2048;
            *&v152[20] = 1;
            *&v152[28] = 2048;
            *v153 = 1;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_222:
            *v167 = 0;
            v175 = 0u;
            v176 = 0u;
            memset(v174, 0, sizeof(v174));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v152 = 136315906;
            *&v152[4] = "operator[]";
            *&v152[12] = 1024;
            *&v152[14] = 468;
            *&v152[18] = 2048;
            *&v152[20] = 2;
            *&v152[28] = 2048;
            *v153 = 2;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_223:
            re::internal::assertLog(4, v55, "assertion failure: '%s' (%s:line %i) Array is empty.", "!isEmpty()", "last", 240);
            _os_crash();
            __break(1u);
LABEL_224:
            v151 = 0;
            v175 = 0u;
            v176 = 0u;
            memset(v174, 0, sizeof(v174));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v167 = 136315906;
            *&v167[4] = "operator[]";
            v168 = 1024;
            v169 = 468;
            v170 = 2048;
            v171 = 4;
            v172 = 2048;
            v173 = v6;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_225:
            v151 = 0;
            v175 = 0u;
            v176 = 0u;
            memset(v174, 0, sizeof(v174));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v167 = 136315906;
            *&v167[4] = "operator[]";
            v168 = 1024;
            v169 = 468;
            v170 = 2048;
            v171 = 5;
            v172 = 2048;
            v173 = v26;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_226:
            re::internal::assertLog(4, v68, "assertion failure: '%s' (%s:line %i) Array is empty.", "!isEmpty()", "last", 240);
            _os_crash();
            __break(1u);
LABEL_227:
            v151 = 0;
            v175 = 0u;
            v176 = 0u;
            memset(v174, 0, sizeof(v174));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v167 = 136315906;
            *&v167[4] = "operator[]";
            v168 = 1024;
            v169 = 468;
            v170 = 2048;
            v171 = 3;
            v172 = 2048;
            v173 = v26;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_228:
            v151 = 0;
            v175 = 0u;
            v176 = 0u;
            memset(v174, 0, sizeof(v174));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v167 = 136315906;
            *&v167[4] = "operator[]";
            v168 = 1024;
            v169 = 468;
            v170 = 2048;
            v171 = 3;
            v172 = 2048;
            v173 = v26;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          v27 = &a3[8 * v22];
          v24 = *v27;
          v28 = (a5 + 24 * v22);
          v28[1] = 6;
          v28[2] = v29;
          if (!v29)
          {
            goto LABEL_215;
          }

          v31 = v29 + 16;
          v32 = 5;
          v94 = (v19 - 1 + v24) / v19;
          do
          {
            *(v31 - 16) = 0;
            *(v31 - 8) = &str_67;
            *v31 = 0x10000;
            *(v31 + 4) = 256;
            *(v31 + 16) = 0uLL;
            *(v31 + 32) = 0uLL;
            *(v31 + 48) = 0;
            v31 += 72;
            --v32;
          }

          while (v32);
          *(v31 - 16) = 0;
          *(v31 - 8) = &str_67;
          *v31 = 0x10000;
          *(v31 + 4) = 256;
          *(v31 + 16) = 0uLL;
          *(v31 + 32) = 0uLL;
          *(v31 + 48) = 0;
          v6 = [*(a1 + 208) newBufferWithLength:12 * *v27 options:0];
          v99 = 0xA6A8C9789D43C186;
          *v100 = "tessellationFactors";
          *&v100[12] = 1;
          *&v100[8] = 2;
          v100[20] = 53;
          *&v100[16] = 0;
          v101 = v6;
          LODWORD(v103) = 0;
          DWORD2(v103) = 0;
          HIDWORD(v103) = [v6 length];
          if (!v28[1])
          {
            goto LABEL_216;
          }

          v33 = v28[2];
          re::StringID::operator=(v33, &v99);
          v34 = *&v100[8];
          *(v33 + 21) = *&v100[13];
          v33[2] = v34;
          v35 = std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>((v33 + 4), &v101);
          v33[8] = *(&v103 + 1);
          if (v103 != -1)
          {
            v35 = (off_1F5D0A170[v103])(v156, &v101);
          }

          LODWORD(v103) = -1;
          if (v99)
          {
            if (v99)
            {
            }
          }

          [*&v152[8] setComputePipelineState:v10];
          v89 = v22;
          v36 = v22 << 8;
          [*&v152[8] setBuffer:v114 offset:v22 << 8 atIndex:0];
          [*&v152[8] setBuffer:*(v27 + 1) offset:v27[6] atIndex:1];
          [*&v152[8] setBuffer:v6 offset:0 atIndex:2];
          *&v156[0] = (v19 - 1 + v24) / v19;
          v24 = 1;
          *(v156 + 8) = vdupq_n_s64(1uLL);
          v99 = v19;
          *v100 = *(v156 + 8);
          [*&v152[8] dispatchThreadgroups:v156 threadsPerThreadgroup:&v99];
          v37 = [*(a1 + 208) newBufferWithLength:4 * (*v27 + 1) options:0];
          v99 = 0x1A8D5954F324B0F6;
          *v100 = "tessellationVertexOffsets";
          *&v100[12] = 1;
          *&v100[8] = 4;
          v100[20] = 36;
          *&v100[16] = 0;
          v101 = v37;
          LODWORD(v103) = 0;
          DWORD2(v103) = 0;
          HIDWORD(v103) = [v37 length];
          v22 = v28[1];
          if (v22 <= 1)
          {
            goto LABEL_217;
          }

          v38 = v28[2];
          re::StringID::operator=((v38 + 9), &v99);
          v38[11] = *&v100[8];
          *(v38 + 93) = *&v100[13];
          v39 = std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>((v38 + 13), &v101);
          v38[17] = *(&v103 + 1);
          if (v103 != -1)
          {
            v39 = (off_1F5D0A170[v103])(v156, &v101);
          }

          LODWORD(v103) = -1;
          if (v99)
          {
            if (v99)
            {
            }
          }

          v40 = [*(a1 + 208) newBufferWithLength:4 * (*v27 + 1) options:0];
          v99 = 0x10A82A1AFCB1795ELL;
          *v100 = "tessellationIndexOffsets";
          *&v100[12] = 1;
          *&v100[8] = 4;
          v100[20] = 36;
          *&v100[16] = 0;
          v101 = v40;
          LODWORD(v103) = 0;
          DWORD2(v103) = 0;
          HIDWORD(v103) = [v40 length];
          v24 = v28[1];
          if (v24 <= 2)
          {
            goto LABEL_218;
          }

          v41 = v28[2];
          re::StringID::operator=((v41 + 18), &v99);
          v41[20] = *&v100[8];
          *(v41 + 165) = *&v100[13];
          v42 = std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>((v41 + 22), &v101);
          v41[26] = *(&v103 + 1);
          if (v103 != -1)
          {
            v42 = (off_1F5D0A170[v103])(v156, &v101);
          }

          LODWORD(v103) = -1;
          v11 = v81;
          v24 = v19;
          if (v99)
          {
            if (v99)
            {
            }
          }

          [*&v152[8] setComputePipelineState:v81];
          [*&v152[8] setBuffer:v150 offset:v36 atIndex:0];
          [*&v152[8] setBuffer:v6 offset:0 atIndex:1];
          [*&v152[8] setBuffer:v37 offset:0 atIndex:2];
          [*&v152[8] setBuffer:v40 offset:0 atIndex:3];
          v43 = v19 - 1 + *v27;
          if (v79 == 1)
          {
            LODWORD(v43) = v43 & -v19;
          }

          else
          {
            v43 = v43 / v19 * v19;
          }

          if (v43 >= v80)
          {
            LODWORD(v43) = v80;
          }

          v44 = 4 * v43;
          [*&v152[8] setThreadgroupMemoryLength:v44 atIndex:0];
          [*&v152[8] setThreadgroupMemoryLength:v44 atIndex:1];
          *&v156[0] = v94;
          *(v156 + 8) = vdupq_n_s64(1uLL);
          v99 = v19;
          *v100 = *(v156 + 8);
          v20 = [*&v152[8] dispatchThreadgroups:v156 threadsPerThreadgroup:&v99];
          if (v40)
          {
          }

          a3 = v92;
          if (v37)
          {
          }

          if (v6)
          {
          }

          v22 = v89 + 1;
          v10 = v83;
        }

        while (v89 + 1 != v96);
        [*&v152[8] endEncoding];
        [*v152 enqueue];
        [*v152 commit];
        [*v152 waitUntilCompleted];
        v7 = v78;
        v18 = v77;
      }

      if (v114)
      {
      }

      if (v11)
      {
      }

      if (v131)
      {

        v131 = 0;
      }

      re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v124);
      if (v121 == 1 && v122)
      {
        if (BYTE8(v122))
        {
          (*(*v122 + 40))();
        }

        v122 = 0u;
        v123 = 0u;
      }

      if (v118 == 1 && v119)
      {
        if (BYTE8(v119))
        {
          (*(*v119 + 40))();
        }

        v120 = 0u;
        v119 = 0u;
      }

      if (v116 && (v117 & 1) != 0)
      {
        (*(*v116 + 40))();
      }

      if (v10)
      {
      }

      if (v148)
      {

        v148 = 0;
      }

      re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v141);
      if (v138 == 1 && v139)
      {
        if (BYTE8(v139))
        {
          (*(*v139 + 40))();
        }

        v139 = 0u;
        v140 = 0u;
      }

      if (v135 == 1 && v136)
      {
        if (BYTE8(v136))
        {
          (*(*v136 + 40))();
        }

        v137 = 0u;
        v136 = 0u;
      }

      if (v133 && (v134 & 1) != 0)
      {
        (*(*v133 + 40))();
      }

      if (v18)
      {
        v135 = 0;
        v138 = 0;
        v143 = 0;
        v141 = 0;
        v142 = 0;
        v144 = 0;
        v148 = 0;
        v149 = 0;
        v146 = 0;
        v145 = 0;
        v147 = 0;
        v26 = *re::getOrCreateComputePipelineState(a1, &v133);
        v118 = 0;
        v121 = 0;
        v126 = 0;
        v124 = 0;
        v125 = 0;
        v127 = 0;
        v131 = 0;
        v132 = 0;
        v129 = 0;
        v128 = 0;
        v130 = 0;
        v90 = *re::getOrCreateComputePipelineState(a1, &v116);
        LOBYTE(v157[0]) = 0;
        BYTE8(v157[2]) = 0;
        memset(v160, 0, sizeof(v160));
        v161 = 0;
        v165 = 0;
        v166 = 0;
        v163 = 0;
        v162 = 0;
        v164 = 0;
        v84 = *re::getOrCreateComputePipelineState(a1, v156);
        LOBYTE(v101) = 0;
        v104 = 0;
        memset(v107, 0, sizeof(v107));
        v108 = 0;
        v112 = 0;
        v113 = 0;
        v109 = 0;
        v110 = 0;
        v111 = 0;
        v82 = *re::getOrCreateComputePipelineState(a1, &v99);
        v91 = v26;
        v46 = [v26 threadExecutionWidth];
        v48 = 0;
        v85 = v46 - 1;
        v86 = v46;
        v95 = v46;
        v49 = a6;
        v50 = (a5 + 16);
        do
        {
          if (!v49)
          {
            goto LABEL_219;
          }

          v51 = *(v50 - 1);
          if (!v51)
          {
            goto LABEL_220;
          }

          if (v51 == 1)
          {
            goto LABEL_221;
          }

          if (v51 <= 2)
          {
            goto LABEL_222;
          }

          v52 = *a3;
          v53 = *v50;
          v54 = re::BufferSlice::contents((*v50 + 104));
          v56 = *(v53 + 140);
          if (v56 <= 3)
          {
            goto LABEL_223;
          }

          v93 = a3;
          v26 = *(v54 + (v56 & 0xFFFFFFFC) - 4);
          v57 = [*(a1 + 208) newBufferWithLength:4 * v26 options:0];
          *v152 = 0xD804C91A9F88FEAALL;
          *&v152[8] = "postTessellationVertexPatchIDs";
          *&v152[20] = 1;
          *&v152[16] = 4;
          v152[28] = 36;
          *&v152[24] = 0;
          *&v153[2] = v57;
          v154 = 0;
          LODWORD(v155) = 0;
          HIDWORD(v155) = [v57 length];
          v6 = *(v50 - 1);
          if (v6 <= 4)
          {
            goto LABEL_224;
          }

          v58 = *v50;
          re::StringID::operator=((*v50 + 288), v152);
          v58[38] = *&v152[16];
          *(v58 + 309) = *&v152[21];
          v59 = std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>((v58 + 40), &v153[2]);
          v58[44] = v155;
          if (v154 != -1)
          {
            v59 = (off_1F5D0A170[v154])(v174, &v153[2]);
          }

          v154 = -1;
          if (v152[0])
          {
            if (v152[0])
            {
            }
          }

          v60 = (v85 + v52) / v86;
          [v115 setComputePipelineState:v91];
          [v115 setBuffer:v150 offset:v48 atIndex:0];
          re::BufferSlice::buffer(v53 + 32, v61);
          [v115 setBuffer:*(v53 + 32) offset:*(v53 + 64) atIndex:1];
          re::BufferSlice::buffer(v53 + 104, v62);
          [v115 setBuffer:*(v53 + 104) offset:*(v53 + 136) atIndex:2];
          [v115 setBuffer:v57 offset:0 atIndex:3];
          *&v174[0] = v60;
          *(v174 + 8) = vdupq_n_s64(1uLL);
          *v152 = v95;
          *&v152[8] = *(v174 + 8);
          [v115 dispatchThreadgroups:v174 threadsPerThreadgroup:v152];
          v6 = [*(a1 + 208) newBufferWithLength:8 * v26 options:0];
          *v152 = 0x54E6B12B377D1502;
          *&v152[8] = "postTessellationVertexPatchCoords";
          *&v152[20] = 1;
          *&v152[16] = 8;
          v152[28] = 29;
          *&v152[24] = 0;
          *&v153[2] = v6;
          v154 = 0;
          LODWORD(v155) = 0;
          HIDWORD(v155) = [v6 length];
          v26 = *(v50 - 1);
          if (v26 <= 5)
          {
            goto LABEL_225;
          }

          v63 = *v50;
          re::StringID::operator=((*v50 + 360), v152);
          v63[47] = *&v152[16];
          *(v63 + 381) = *&v152[21];
          v64 = std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>((v63 + 49), &v153[2]);
          v63[53] = v155;
          if (v154 != -1)
          {
            v64 = (off_1F5D0A170[v154])(v174, &v153[2]);
          }

          v154 = -1;
          v26 = v90;
          if (v152[0])
          {
            if (v152[0])
            {
            }
          }

          [v115 setComputePipelineState:v90];
          [v115 setBuffer:v150 offset:v48 atIndex:0];
          re::BufferSlice::buffer(v53 + 32, v65);
          [v115 setBuffer:*(v53 + 32) offset:*(v53 + 64) atIndex:1];
          re::BufferSlice::buffer(v53 + 104, v66);
          [v115 setBuffer:*(v53 + 104) offset:*(v53 + 136) atIndex:2];
          [v115 setBuffer:v6 offset:0 atIndex:3];
          *&v174[0] = v60;
          *(v174 + 8) = vdupq_n_s64(1uLL);
          *v152 = v95;
          *&v152[8] = *(v174 + 8);
          [v115 dispatchThreadgroups:v174 threadsPerThreadgroup:v152];
          v67 = re::BufferSlice::contents((v53 + 176));
          v69 = *(v53 + 212);
          if (v69 <= 3)
          {
            goto LABEL_226;
          }

          v70 = *(v67 + (v69 & 0xFFFFFFFC) - 4);
          v98 = 0;
          if (v70 > 0xFFFD)
          {
            *&v174[0] = [*(a1 + 208) newBufferWithLength:4 * v70 options:0];
            NS::SharedPtr<MTL::Texture>::operator=(&v98, v174);
            if (*&v174[0])
            {
            }

            *v152 = 0x47F398376BF54D4CLL;
            *&v152[8] = "postTessellationIndices";
            *&v152[20] = 1;
            *&v152[16] = 4;
            v152[28] = 36;
            *&v152[24] = 0;
            *&v153[2] = v98;
            v154 = 0;
            LODWORD(v155) = 0;
            HIDWORD(v155) = [v98 length];
            v26 = *(v50 - 1);
            if (v26 <= 3)
            {
              goto LABEL_227;
            }

            v26 = *v50;
            re::StringID::operator=((*v50 + 216), v152);
            *(v26 + 232) = *&v152[16];
            *(v26 + 237) = *&v152[21];
            v73 = std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v26 + 248, &v153[2]);
            *(v26 + 280) = v155;
            if (v154 != -1)
            {
              v73 = (off_1F5D0A170[v154])(v174, &v153[2]);
            }

            v154 = -1;
            if (v152[0])
            {
              if (v152[0])
              {
              }
            }

            v72 = v82;
          }

          else
          {
            *&v174[0] = [*(a1 + 208) newBufferWithLength:2 * v70 options:0];
            NS::SharedPtr<MTL::Texture>::operator=(&v98, v174);
            if (*&v174[0])
            {
            }

            *v152 = 0x47F398376BF54D4CLL;
            *&v152[8] = "postTessellationIndices";
            *&v152[20] = 1;
            *&v152[16] = 2;
            v152[28] = 49;
            *&v152[24] = 0;
            *&v153[2] = v98;
            v154 = 0;
            LODWORD(v155) = 0;
            HIDWORD(v155) = [v98 length];
            v26 = *(v50 - 1);
            if (v26 <= 3)
            {
              goto LABEL_228;
            }

            v26 = *v50;
            re::StringID::operator=((*v50 + 216), v152);
            *(v26 + 232) = *&v152[16];
            *(v26 + 237) = *&v152[21];
            v71 = std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v26 + 248, &v153[2]);
            *(v26 + 280) = v155;
            if (v154 != -1)
            {
              v71 = (off_1F5D0A170[v154])(v174, &v153[2]);
            }

            v154 = -1;
            if (v152[0])
            {
              if (v152[0])
              {
              }
            }

            v72 = v84;
          }

          [v115 setComputePipelineState:v72];
          [v115 setBuffer:v150 offset:v48 atIndex:0];
          re::BufferSlice::buffer(v53 + 32, v74);
          [v115 setBuffer:*(v53 + 32) offset:*(v53 + 64) atIndex:1];
          re::BufferSlice::buffer(v53 + 104, v75);
          [v115 setBuffer:*(v53 + 104) offset:*(v53 + 136) atIndex:2];
          re::BufferSlice::buffer(v53 + 176, v76);
          [v115 setBuffer:*(v53 + 176) offset:*(v53 + 208) atIndex:3];
          [v115 setBuffer:v98 offset:0 atIndex:4];
          *&v174[0] = v60;
          *(v174 + 8) = vdupq_n_s64(1uLL);
          *v152 = v95;
          *&v152[8] = *(v174 + 8);
          [v115 dispatchThreadgroups:v174 threadsPerThreadgroup:v152];
          if (v98)
          {
          }

          if (v6)
          {
          }

          if (v57)
          {
          }

          a3 = v93 + 8;
          v50 += 3;
          v48 += 256;
          --v49;
          --v96;
        }

        while (v96);
        [v115 endEncoding];
        [v114 enqueue];
        [v114 commit];
        [v114 waitUntilCompleted];
        if (v82)
        {
        }

        if (v112)
        {

          v112 = 0;
        }

        re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v107);
        if (v104 == 1 && v105)
        {
          if (BYTE8(v105))
          {
            (*(*v105 + 40))();
          }

          v105 = 0u;
          v106 = 0u;
        }

        if (v101 == 1 && v102)
        {
          if (BYTE8(v102))
          {
            (*(*v102 + 40))();
          }

          v103 = 0u;
          v102 = 0u;
        }

        if (v99 && (v100[0] & 1) != 0)
        {
          (*(*v99 + 40))();
        }

        if (v84)
        {
        }

        if (v165)
        {

          v165 = 0;
        }

        re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v160);
        if (BYTE8(v157[2]) == 1 && v158)
        {
          if (BYTE8(v158))
          {
            (*(*v158 + 40))();
          }

          v158 = 0u;
          v159 = 0u;
        }

        if (LOBYTE(v157[0]) == 1 && *(&v157[0] + 1))
        {
          if (v157[1])
          {
            (*(**(&v157[0] + 1) + 40))();
          }

          memset(v157 + 8, 0, 32);
        }

        if (*&v156[0] && (BYTE8(v156[0]) & 1) != 0)
        {
          (*(**&v156[0] + 40))();
        }

        if (v90)
        {
        }

        if (v131)
        {

          v131 = 0;
        }

        re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v124);
        if (v121 == 1 && v122)
        {
          if (BYTE8(v122))
          {
            (*(*v122 + 40))();
          }

          v122 = 0u;
          v123 = 0u;
        }

        if (v118 == 1 && v119)
        {
          if (BYTE8(v119))
          {
            (*(*v119 + 40))();
          }

          v120 = 0u;
          v119 = 0u;
        }

        if (v116 && (v117 & 1) != 0)
        {
          (*(*v116 + 40))();
        }

        if (v91)
        {
        }

        if (v148)
        {

          v148 = 0;
        }

        re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v141);
        if (v138 == 1 && v139)
        {
          if (BYTE8(v139))
          {
            (*(*v139 + 40))();
          }

          v139 = 0u;
          v140 = 0u;
        }

        if (v135 == 1 && v136)
        {
          if (BYTE8(v136))
          {
            (*(*v136 + 40))();
          }

          v137 = 0u;
          v136 = 0u;
        }

        if (v133 && (v134 & 1) != 0)
        {
          (*(*v133 + 40))();
        }
      }

      if (v150)
      {
      }
    }
  }
}

re::_anonymous_namespace_::TessellationCommandBuffers *re::anonymous namespace::TessellationCommandBuffers::TessellationCommandBuffers(id *this, id *a2)
{
  *this = 0;
  this[1] = 0;
  re::mtl::CommandQueue::makeCommandBuffer(a2, &v11);
  if (&v11 != this)
  {
    v3 = v11;
    v11 = 0;
    v4 = *this;
    *this = v3;
  }

  if ((atomic_load_explicit(&qword_1EE1BBE80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BBE80))
  {
    v10 = re::ns::String::String(&_MergedGlobals_480, "OpenSubDiv Tessellation Upload Buffer");
    __cxa_guard_release(v10 + 1);
  }

  v5 = _MergedGlobals_480;
  v6 = this + 1;
  [*this setLabel:v5];

  re::mtl::CommandBuffer::makeComputeCommandEncoder(this, &v11);
  if (this + 1 != &v11)
  {
    v7 = v11;
    v11 = 0;
    v8 = *v6;
    *v6 = v7;
  }

  return this;
}

uint64_t re::OpenSubdivViewIndependentComputeStep::init(uint64_t result, uint64_t a2)
{
  if ((*(result + 8) & 1) == 0)
  {
    v3 = result;
    *(result + 8) = 1;
    v4 = *(a2 + 16);
    *(result + 16) = *(v4 + 32);
    if (*(v4 + 208))
    {
      if (*(v4 + 310) == 1)
      {
        v11 = 0;
        v14 = 0;
        v18 = 0;
        v19 = 0;
        v17 = 0;
        v20 = 0;
        v24 = 0;
        v25 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        ComputePipelineState = re::getOrCreateComputePipelineState(*(a2 + 16), &v9);
        NS::SharedPtr<MTL::Buffer>::operator=((v3 + 24), ComputePipelineState);
        if (v24)
        {

          v24 = 0;
        }

        re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v17);
        if (v14 == 1 && v15)
        {
          if (BYTE8(v15))
          {
            (*(*v15 + 40))();
          }

          v15 = 0u;
          v16 = 0u;
        }

        if (v11 == 1 && v12)
        {
          if (BYTE8(v12))
          {
            (*(*v12 + 40))();
          }

          v13 = 0u;
          v12 = 0u;
        }

        v6 = v9;
        if (v9 && (v10 & 1) != 0)
        {
          v6 = (*(*v9 + 40))();
        }

        v11 = 0;
        v14 = 0;
        v18 = 0;
        v19 = 0;
        v17 = 0;
        v20 = 0;
        v24 = 0;
        v25 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v7 = re::getOrCreateComputePipelineState(*(a2 + 16), &v9);
        NS::SharedPtr<MTL::Buffer>::operator=((v3 + 32), v7);
        if (v24)
        {

          v24 = 0;
        }

        re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v17);
        if (v14 == 1 && v15)
        {
          if (BYTE8(v15))
          {
            (*(*v15 + 40))();
          }

          v15 = 0u;
          v16 = 0u;
        }

        if (v11 == 1 && v12)
        {
          if (BYTE8(v12))
          {
            (*(*v12 + 40))();
          }

          v13 = 0u;
          v12 = 0u;
        }

        result = v9;
        if (v9 && (v10 & 1) != 0)
        {
          result = (*(*v9 + 40))();
        }

        v8 = *(v3 + 32);
        if (v8)
        {
          LOBYTE(v8) = *(v3 + 24) != 0;
        }

        *(v3 + 9) = v8;
      }
    }
  }

  return result;
}

uint64_t re::OpenSubdivViewIndependentComputeStep::addDeformationInstance@<X0>(uint64_t result@<X0>, unsigned __int8 *a2@<X2>, uint64_t a3@<X8>)
{
  v3 = 3;
  if (*(result + 8) == 1)
  {
    if (*(result + 9))
    {
      v3 = 1;
    }

    else
    {
      v3 = 3;
    }
  }

  *a3 = 0xFFFFFFFFLL;
  *(a3 + 8) = xmmword_1E30FBEE0;
  v4 = *a2;
  if (v4 == 255)
  {
    v5 = *(a2 + 2);
    LOBYTE(v4) = 3;
    if (v5)
    {
      if (*(v5 + 208))
      {
        LOBYTE(v4) = v3;
      }

      else
      {
        LOBYTE(v4) = 3;
      }
    }
  }

  *(a3 + 24) = v4;
  *(a3 + 32) = -1;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  return result;
}

uint64_t re::OpenSubdivViewIndependentComputeStep::allocateBuffers(re *a1, uint64_t a2, re::PerFrameAllocatorGPU **a3, unsigned int a4, uint64_t *a5)
{
  v44 = *MEMORY[0x1E69E9840];
  v38 = *a5;
  v7 = *(*a5 + 48);
  re::globalAllocators(a1);
  v8 = (*(*a2 + 32))(a2, 24, 8);
  v8[1] = 0;
  v8[2] = 0;
  *v8 = 0;
  re::FixedArray<re::PerFrameGPUDataBuffer>::init<>(v8, a2, v7);
  v10 = re::globalAllocators(v9)[2];
  *&v39 = &unk_1F5D0A190;
  *(&v40 + 1) = v10;
  *&v41 = &v39;
  v11 = (*(*a2 + 16))(a2, v8, &v39);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v39);
  v34 = v7;
  if (v7)
  {
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v38 + 8, v13);
      v15 = *(v14 + 8);
      v16 = re::BucketArray<re::ActiveDeformation,8ul>::operator[](a5[1], v15);
      v18 = a5[6];
      if (v18 <= v15)
      {
        break;
      }

      v19 = v16;
      v20 = a5[5];
      v21 = re::DataArray<re::MeshModel>::get(*(a1 + 2) + 8, *(*(v16 + 368) + 16));
      v22 = *(v19 + 392);
      if (*(v21 + 56) <= v22)
      {
        goto LABEL_9;
      }

      v23 = v20 + 312 * v15;
      v24 = *(v21 + 64);
      LOBYTE(v39) = 9;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v23, 9u);
      v25 = *(*(v23 + 64) + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((v23 + 56), &v39) + 20) >> 2;
      v26 = *(v24 + 544 * v22 + 512);
      re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(a3, 8uLL, 4uLL, &v39);
      v27 = v39;
      v28 = v40;
      *(v39 + DWORD2(v39)) = v26 | (v25 << 32);
      if (*(v11 + 8) <= v13)
      {
        goto LABEL_10;
      }

      v29 = *(v11 + 16) + v12;
      *v29 = v27;
      *(v29 + 16) = v28;
      v30 = *(v19 + 360);
      v31 = a5[2];
      v32 = *(v14 + 16);
      WORD2(v39) = 1025;
      LODWORD(v39) = 65548;
      BYTE12(v39) = 30;
      DWORD2(v39) = 0;
      re::DeformationVertexBufferState::allocAndSetOutputBuffer(v23, v30, v31, v32, 12 * (v25 + v26), 13, a4, &v39);
      ++v13;
      v12 += 24;
      if (v34 == v13)
      {
        return v11;
      }
    }

    re::internal::assertLog(6, v17, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v15, v18);
    _os_crash();
    __break(1u);
LABEL_9:
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_10:
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return v11;
}

uint64_t re::DeformationVertexBufferState::allocAndSetOutputBuffer(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v14 = re::DeformationBufferAllocator::alloc(a2, a3, a6, *a8, a8[1], a4, a5);
  if (a2[1] <= a4)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v15 = (re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::operator[](a2[2] + 72 * a4 + 16, v14) + 24);

  return re::DeformationVertexBufferState::setOutputBuffer(a1, a6, a7, v15, a8);
}

uint64_t re::OpenSubdivViewIndependentComputeStep::deformGPU(uint64_t a1, unint64_t a2, void **a3, uint64_t *a4)
{
  v59 = *MEMORY[0x1E69E9840];
  v8 = *a4;
  v9 = [*(a1 + 24) maxTotalThreadsPerThreadgroup];
  v50 = v8;
  v10 = *(v8 + 48);
  re::mtl::ComputeCommandEncoder::pushDebugGroup(a3, "OpenSubdivViewIndependentComputeStep - copy positions");
  v49 = v10;
  if (v10)
  {
    v11 = v9;
    v12 = 0;
    v13 = 0;
    v45 = v11 - 1;
    v46 = v11;
    v47 = a1;
    v44 = v11;
    v48 = a2;
    while (1)
    {
      v14 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v50 + 8, v13);
      v16 = *(a2 + 8);
      if (v16 <= v13)
      {
        break;
      }

      v4 = *(v14 + 8);
      v17 = a4[6];
      if (v17 <= v4)
      {
        goto LABEL_19;
      }

      v18 = *(a2 + 16);
      v19 = a4[5];
      v20 = re::BucketArray<re::ActiveDeformation,8ul>::operator[](a4[1], v4);
      if (*(v18 + v12 + 12))
      {
        v21 = v20;
        v22 = re::DataArray<re::MeshModel>::get(v47[2] + 8, *(*(v20 + 368) + 16));
        v16 = *(v21 + 392);
        a2 = *(v22 + 56);
        if (a2 <= v16)
        {
          goto LABEL_22;
        }

        v23 = (v19 + 312 * v4);
        v24 = *(v22 + 64);
        LOBYTE(v55[0]) = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v23, 1u);
        v25 = v23[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v23 + 7, v55);
        LOBYTE(v55[0]) = 13;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v23, 0xDu);
        v4 = v23[24] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v23 + 23, v55);
        v26 = (*(v24 + 544 * v16 + 512) + v45) / v46;
        [*a3 setComputePipelineState:v47[3]];
        [*a3 setBuffer:*(v18 + v12 + 16) offset:*(v18 + v12 + 8) atIndex:0];
        [*a3 setBuffer:*(v25 + 24) offset:*(v25 + 16) atIndex:1];
        [*a3 setBuffer:*(v4 + 24) offset:*(v4 + 16) atIndex:2];
        v27 = *a3;
        *&v55[0] = v26;
        *(v55 + 8) = vdupq_n_s64(1uLL);
        *v52 = v44;
        *&v52[8] = *(v55 + 8);
        [v27 dispatchThreadgroups:v55 threadsPerThreadgroup:v52];
        a2 = v48;
      }

      ++v13;
      v12 += 24;
      if (v49 == v13)
      {
        [*a3 popDebugGroup];
        re::mtl::ComputeCommandEncoder::pushDebugGroup(a3, "OpenSubdivViewIndependentComputeStep - apply stencils");
        v28 = 0;
        v13 = 0;
        while (1)
        {
          v29 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v50 + 8, v13);
          v16 = *(a2 + 8);
          if (v16 <= v13)
          {
            break;
          }

          v4 = *(v29 + 8);
          v31 = a4[6];
          if (v31 <= v4)
          {
            goto LABEL_21;
          }

          v32 = *(a2 + 16);
          v33 = a4[5];
          re::BucketArray<re::ActiveDeformation,8ul>::operator[](a4[1], v4);
          v34 = v32 + v28;
          if (*(v32 + v28 + 12))
          {
            v35 = (v33 + 312 * v4);
            LOBYTE(v55[0]) = 1;
            re::DeformationVertexBufferState::ensureVertexBufferInitialized(v35, 1u);
            v36 = v35[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v35 + 7, v55);
            LOBYTE(v55[0]) = 12;
            re::DeformationVertexBufferState::ensureVertexBufferInitialized(v35, 0xCu);
            v43 = v35[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v35 + 7, v55);
            LOBYTE(v55[0]) = 9;
            re::DeformationVertexBufferState::ensureVertexBufferInitialized(v35, 9u);
            v37 = v35[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v35 + 7, v55);
            LOBYTE(v55[0]) = 10;
            re::DeformationVertexBufferState::ensureVertexBufferInitialized(v35, 0xAu);
            v38 = v35[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v35 + 7, v55);
            LOBYTE(v55[0]) = 11;
            re::DeformationVertexBufferState::ensureVertexBufferInitialized(v35, 0xBu);
            v39 = v35[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v35 + 7, v55);
            LOBYTE(v55[0]) = 13;
            re::DeformationVertexBufferState::ensureVertexBufferInitialized(v35, 0xDu);
            v40 = v35[24] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v35 + 23, v55);
            v4 = (v45 + (*(v37 + 20) >> 2)) / v46;
            [*a3 setComputePipelineState:v47[4]];
            [*a3 setBuffer:*(v34 + 16) offset:*(v34 + 8) atIndex:0];
            [*a3 setBuffer:*(v36 + 24) offset:*(v36 + 16) atIndex:1];
            [*a3 setBuffer:*(v37 + 24) offset:*(v37 + 16) atIndex:2];
            [*a3 setBuffer:*(v38 + 24) offset:*(v38 + 16) atIndex:3];
            [*a3 setBuffer:*(v43 + 24) offset:*(v43 + 16) atIndex:4];
            [*a3 setBuffer:*(v39 + 24) offset:*(v39 + 16) atIndex:5];
            [*a3 setBuffer:*(v40 + 24) offset:*(v40 + 16) atIndex:6];
            v41 = *a3;
            *&v55[0] = v4;
            *(v55 + 8) = vdupq_n_s64(1uLL);
            *v52 = v44;
            *&v52[8] = *(v55 + 8);
            [v41 dispatchThreadgroups:v55 threadsPerThreadgroup:v52];
          }

          ++v13;
          v28 += 24;
          a2 = v48;
          if (v49 == v13)
          {
            return [*a3 popDebugGroup];
          }
        }

LABEL_20:
        v57 = 0u;
        v58 = 0u;
        v56 = 0u;
        memset(v55, 0, sizeof(v55));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v52 = 136315906;
        *&v52[4] = "operator[]";
        *&v52[12] = 1024;
        *&v52[14] = 468;
        *&v52[18] = 2048;
        *&v52[20] = v13;
        v53 = 2048;
        v54 = v16;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_21:
        re::internal::assertLog(6, v30, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v4, v31);
        _os_crash();
        __break(1u);
LABEL_22:
        v57 = 0u;
        v58 = 0u;
        v56 = 0u;
        memset(v55, 0, sizeof(v55));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v52 = 136315906;
        *&v52[4] = "operator[]";
        *&v52[12] = 1024;
        *&v52[14] = 476;
        *&v52[18] = 2048;
        *&v52[20] = v16;
        v53 = 2048;
        v54 = a2;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }
    }

    v57 = 0u;
    v58 = 0u;
    v56 = 0u;
    memset(v55, 0, sizeof(v55));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v52 = 136315906;
    *&v52[4] = "operator[]";
    *&v52[12] = 1024;
    *&v52[14] = 468;
    *&v52[18] = 2048;
    *&v52[20] = v13;
    v53 = 2048;
    v54 = v16;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_19:
    re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v4, v17);
    _os_crash();
    __break(1u);
    goto LABEL_20;
  }

  [*a3 popDebugGroup];
  re::mtl::ComputeCommandEncoder::pushDebugGroup(a3, "OpenSubdivViewIndependentComputeStep - apply stencils");
  return [*a3 popDebugGroup];
}

uint64_t re::OpenSubdivViewDependentComputeStep::init(uint64_t result, uint64_t a2)
{
  v65 = *MEMORY[0x1E69E9840];
  if (*(result + 8))
  {
    return result;
  }

  v2 = result;
  *(result + 8) = 1;
  v3 = *(a2 + 16);
  *(result + 16) = *(v3 + 32);
  if (!*(v3 + 208) || *(v3 + 310) != 1)
  {
    return result;
  }

  v23 = 0;
  v26 = 0;
  v29[1] = 0;
  v30 = 0;
  v29[0] = 0;
  v31 = 0;
  v35 = 0;
  v36 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  memset(v50, 0, sizeof(v50));
  re::DynamicString::setCapacity(v50, 0);
  v55 = 0u;
  v54 = 0u;
  v53 = 0u;
  v52 = 0u;
  v51 = 1048629;
  re::DynamicArray<re::TechniqueFunctionConstant>::add(v29, v50);
  memset(v44, 0, sizeof(v44));
  re::DynamicString::setCapacity(v44, 0);
  v46 = 0u;
  v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  LOBYTE(v46) = 1;
  v45 = 10289205;
  v6 = v30;
  re::DynamicArray<re::TechniqueFunctionConstant>::add(v29, v44);
  memset(v38, 0, sizeof(v38));
  v8 = re::DynamicString::setCapacity(v38, 0);
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  LOBYTE(v40) = v9 != 2;
  v39 = 11534389;
  re::DynamicArray<re::TechniqueFunctionConstant>::add(v29, v38);
  ComputePipelineState = re::getOrCreateComputePipelineState(v3, &v21);
  NS::SharedPtr<MTL::Buffer>::operator=(v2 + 3, ComputePipelineState);
  v11 = v30;
  if (v30 <= v6)
  {
    v37 = 0;
    memset(v64, 0, sizeof(v64));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v56 = 136315906;
    v57 = "operator[]";
    v58 = 1024;
    v59 = 789;
    v60 = 2048;
    v61 = v6;
    v62 = 2048;
    v63 = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v12 = v32 + 104 * v6;
  *(v12 + 84) = 0u;
  *(v12 + 68) = 0u;
  *(v12 + 52) = 0u;
  *(v12 + 36) = 0u;
  v13 = re::getOrCreateComputePipelineState(v3, &v21);
  v14 = NS::SharedPtr<MTL::Buffer>::operator=(v2 + 4, v13);
  if (v15 == 2)
  {
    v16 = "outputOpenSubdivPostTessellationVertices";
    v17 = 5;
  }

  else
  {
    {
      goto LABEL_10;
    }

    *&v64[0] = "outputUniformPostTessellationVertices";
    *(&v64[0] + 1) = 37;
    re::DynamicString::operator=(&v21, v64);
    v18 = re::getOrCreateComputePipelineState(v3, &v21);
    NS::SharedPtr<MTL::Buffer>::operator=(v2 + 5, v18);
    v16 = "outputUniformPostTessellationIndices";
    v17 = 6;
  }

  v19 = strlen(v16);
  *&v64[0] = v16;
  *(&v64[0] + 1) = v19;
  re::DynamicString::operator=(&v21, v64);
  v20 = re::getOrCreateComputePipelineState(v3, &v21);
  NS::SharedPtr<MTL::Buffer>::operator=(&v2[v17], v20);
LABEL_10:
  if (*&v38[0] && (BYTE8(v38[0]) & 1) != 0)
  {
    (*(**&v38[0] + 40))();
  }

  if (*&v44[0] && (BYTE8(v44[0]) & 1) != 0)
  {
    (*(**&v44[0] + 40))();
  }

  if (*&v50[0] && (BYTE8(v50[0]) & 1) != 0)
  {
    (*(**&v50[0] + 40))();
  }

  if (v35)
  {

    v35 = 0;
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v29);
  if (v26 == 1 && v27)
  {
    if (BYTE8(v27))
    {
      (*(*v27 + 40))();
    }

    v27 = 0u;
    v28 = 0u;
  }

  if (v23 == 1 && v24)
  {
    if (BYTE8(v24))
    {
      (*(*v24 + 40))();
    }

    v25 = 0u;
    v24 = 0u;
  }

  result = v21;
  if (v21)
  {
    if (v22)
    {
      return (*(*v21 + 40))();
    }
  }

  return result;
}

uint64_t re::OpenSubdivViewDependentComputeStep::addDeformationInstance@<X0>(re::_anonymous_namespace_ *a1@<X0>, unsigned __int8 *a2@<X2>, uint64_t a3@<X8>)
{
  {
    v7 = 1048607;
  }

  else
  {
    v7 = 0;
  }

  v9 = 508032;
  if (result == 2)
  {
    v9 = 507904;
  }

  *a3 = 0xFFFFFFFFLL;
  *(a3 + 8) = 8512;
  *(a3 + 16) = v9 | v7;
  v10 = *a2;
  if (v10 == 255)
  {
    v11 = *(a2 + 2);
    LOBYTE(v10) = 3;
    if (v11)
    {
      v12 = *(v11 + 208);
      if (*(a1 + 3))
      {
        v13 = v12 == 0;
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {
        LOBYTE(v10) = 3;
      }

      else
      {
        LOBYTE(v10) = 1;
      }
    }
  }

  *(a3 + 24) = v10;
  *(a3 + 32) = -1;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  return result;
}

uint64_t re::OpenSubdivViewDependentComputeStep::allocateBuffers(re *a1, unint64_t a2, re::PerFrameAllocatorGPU **a3, uint64_t a4, uint64_t *a5)
{
  v106 = *MEMORY[0x1E69E9840];
  v81 = *a5;
  v82 = *(*a5 + 48);
  if (v82)
  {
    v9 = a5[4];
    if (v9)
    {
      v10 = a5[3] + 272 * (v9 - 1);
      if ((*(v10 + 112) & 1) == 0)
      {
        re::Projection::cullingProjectionMatrix((v10 + 32), &v101);
      }
    }

    re::globalAllocators(a1);
    v11 = (*(*a2 + 32))(a2, 24, 8);
    v11[1] = 0;
    v11[2] = 0;
    *v11 = 0;
    re::FixedArray<re::PerFrameGPUDataBuffer>::init<>(v11, a2, 2 * v82);
    v13 = re::globalAllocators(v12)[2];
    *&v101 = &unk_1F5D0A1E8;
    *(&v102 + 1) = v13;
    *&v103 = &v101;
    v86 = (*(*a2 + 16))(a2, v11, &v101);
    re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v101);
    v14 = 0;
    v15 = 2;
    while (1)
    {
      v87 = v14;
      v16 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v81 + 8, v14);
      v17 = *(v16 + 8);
      v18 = re::BucketArray<re::ActiveDeformation,8ul>::operator[](a5[1], v17);
      v20 = a5[6];
      if (v20 <= v17)
      {
        re::internal::assertLog(6, v19, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v17, v20);
        _os_crash();
        __break(1u);
LABEL_60:
        v95 = 0;
        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        v101 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v97 = 136315906;
        *&v97[4] = "operator[]";
        *&v97[12] = 1024;
        *&v97[14] = 476;
        *&v97[18] = 2048;
        v98 = a2;
        v99 = 2048;
        v100 = v5;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_61:
        v95 = 0;
        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        v101 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v97 = 136315906;
        *&v97[4] = "operator[]";
        *&v97[12] = 1024;
        *&v97[14] = 468;
        *&v97[18] = 2048;
        v98 = v15;
        v99 = 2048;
        v100 = a2;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_62:
        v95 = 0;
        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        v101 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v97 = 136315906;
        *&v97[4] = "operator[]";
        *&v97[12] = 1024;
        *&v97[14] = 476;
        *&v97[18] = 2048;
        v98 = v5;
        v99 = 2048;
        v100 = v17;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_63:
        re::internal::assertLog(6, v40, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v41, v40);
        _os_crash();
        __break(1u);
LABEL_64:
        re::internal::assertLog(6, v45, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v46, v45);
        _os_crash();
        __break(1u);
LABEL_65:
        re::internal::assertLog(4, v48, "assertion failure: '%s' (%s:line %i) Array is empty.", "!isEmpty()", "last", 240);
        _os_crash();
        __break(1u);
LABEL_66:
        v95 = 0;
        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        v101 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v97 = 136315906;
        *&v97[4] = "operator[]";
        *&v97[12] = 1024;
        *&v97[14] = 468;
        *&v97[18] = 2048;
        v98 = v17;
        v99 = 2048;
        v100 = v5;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_67:
        v88 = 0;
        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        v101 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v97 = 136315906;
        *&v97[4] = "operator[]";
        *&v97[12] = 1024;
        *&v97[14] = 468;
        *&v97[18] = 2048;
        v98 = v17;
        v99 = 2048;
        v100 = v5;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_68:
        std::__throw_bad_variant_access[abi:nn200100]();
      }

      v21 = v18;
      v22 = a5[5];
      v23 = re::DataArray<re::MeshModel>::get(*(a1 + 2) + 8, *(*(v18 + 368) + 16));
      a2 = *(v21 + 392);
      v5 = *(v23 + 56);
      if (v5 <= a2)
      {
        goto LABEL_60;
      }

      v24 = v22 + 312 * v17;
      v5 = *(v23 + 64) + 544 * *(v21 + 392);
      v25 = v5;
      do
      {
        v26 = v25;
        v25 = *v25;
      }

      while (v25 && !v26[8]);
      *&v101 = 0x23F9CC1BB5FAA6A6;
      v27 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v26 + 5, &v101);
      v28 = v27 == -1 ? 0 : (v26[6] + 16 * v27 + 8);
      v29 = v5;
      do
      {
        v30 = v29;
        v29 = *v29;
      }

      while (v29 && !v30[8]);
      *&v101 = 0xD46ACAA7992587BLL;
      v31 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v30 + 5, &v101);
      v32 = v31 == -1 ? 0 : v30[6] + 16 * v31 + 8;
      {
        break;
      }

      if (v28 && v32)
      {
        v78 = v32;
        v34 = *(v21 + 360);
        v35 = *(v16 + 16);
        v83 = v5;
        v36 = v5;
        do
        {
          v37 = v36;
          v36 = *v36;
          v17 = v37[3];
          if (v36)
          {
            v38 = v17 == 0;
          }

          else
          {
            v38 = 0;
          }
        }

        while (v38);
        v5 = *v28;
        if (v17 <= v5)
        {
          goto LABEL_62;
        }

        v17 = v37[4];
        v39 = re::AttributeTable::buffers(v83);
        v41 = *v28;
        if (v40 <= v41)
        {
          goto LABEL_63;
        }

        v42 = v39 + 24 * *v28;
        v94 = *v42;
        v43 = *(v42 + 4);
        LODWORD(v42) = *(v42 + 5);
        *v97 = v94;
        *&v97[16] = v43;
        LODWORD(v98) = v42;
        *&v101 = 0;
        DWORD2(v102) = 0;
        *&v103 = __PAIR64__(v42, v43);
        v95 = &v101;
        v96 = &v101;
        if (DWORD2(v94) == -1)
        {
          goto LABEL_68;
        }

        v91 = &v95;
        (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNS6_11BufferSliceC1ENS6_10BufferViewEmmE3__0ZNS9_C1ESA_mmE3__1EEEEEJRNS0_6__implIJPN3MTL6BufferEPKNS6_20BufferSliceSourceCPUEEEEEEEDcOT_DpOT0____fmatrix[DWORD2(v94)])(&v91, v97);
        re::DeformationBufferAllocator::allocWithExistingBuffer(v34, 0, *(v17 + 16 * v5), *(v17 + 16 * v5 + 8), v35, &v101);
        re::DeformationVertexBufferState::setOutputBuffer(v24, 0, 1, &v101, v17 + 16 * v5);
        if (DWORD2(v102) != -1)
        {
          (off_1F5D0A170[DWORD2(v102)])(v97, &v101);
        }

        v44 = re::AttributeTable::buffers(v83);
        v46 = *v78;
        if (v45 <= v46)
        {
          goto LABEL_64;
        }

        v17 = v44 + 24 * *v78;
        v47 = re::BufferView::contents(v17);
        v49 = *(v17 + 20);
        if (v49 <= 3)
        {
          goto LABEL_65;
        }

        v50 = *(v47 + (v49 & 0xFFFFFFFC) - 4);
        v51 = *(v83 + 129);
        re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(a3, 8uLL, 4uLL, &v101);
        v52 = v101;
        v53 = v102;
        *(v101 + DWORD2(v101)) = v51 | (v50 << 32);
        v17 = (2 * v87) | 1;
        v5 = *(v86 + 8);
        if (v5 <= v17)
        {
          goto LABEL_66;
        }

        v54 = 0;
        v55 = *(v86 + 16) + 24 * v17;
        *v55 = v52;
        *(v55 + 16) = v53;
        WORD2(v101) = 257;
        LODWORD(v101) = 65548;
        BYTE12(v101) = 30;
        DWORD2(v101) = 0;
        do
        {
          re::DeformationVertexBufferState::allocAndSetOutputBuffer(v24, *(v21 + 360), a5[2], *(v16 + 16), 12 * v50, re::OpenSubdivViewDependentComputeStep::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::kVertexBufferIDs[v54++], a4, &v101);
        }

        while (v54 != 4);
        *&v97[4] = 257;
        *v97 = 65544;
        v97[12] = 29;
        *&v97[8] = 0;
        re::DeformationVertexBufferState::allocAndSetOutputBuffer(v24, *(v21 + 360), a5[2], *(v16 + 16), 8 * v50, 20, a4, v97);
        v5 = v83;
        v15 = 2 * v87;
        goto LABEL_40;
      }

      a2 = 257;
      WORD2(v101) = 257;
      LODWORD(v101) = 65548;
      BYTE12(v101) = 30;
      DWORD2(v101) = 0;
      v69 = *(v5 + 456);
      *&v97[2] = 0x10000;
      if (v69)
      {
        v70 = 36;
      }

      else
      {
        v70 = 49;
      }

      *v97 = re::sizeFromVertexFormat(v70, v33);
      v97[12] = v70;
      *&v97[8] = 0;
      WORD2(v95) = 257;
      LODWORD(v95) = 65544;
      BYTE4(v96) = 29;
      LODWORD(v96) = 0;
      LOBYTE(v94) = 1;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v24, 1u);
      v71 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((v24 + 56), &v94);
      re::DeformationVertexBufferState::setOutputBuffer(v24, 1u, 1, *(v24 + 64) + 32 * v71 + 8, &v101);
      LOBYTE(v94) = 2;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v24, 2u);
      v72 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((v24 + 56), &v94);
      re::DeformationVertexBufferState::setOutputBuffer(v24, 2u, 1, *(v24 + 64) + 32 * v72 + 8, &v101);
      LOBYTE(v94) = 3;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v24, 3u);
      v73 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((v24 + 56), &v94);
      re::DeformationVertexBufferState::setOutputBuffer(v24, 3u, 1, *(v24 + 64) + 32 * v73 + 8, &v101);
      LOBYTE(v94) = 4;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v24, 4u);
      v74 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((v24 + 56), &v94);
      re::DeformationVertexBufferState::setOutputBuffer(v24, 4u, 1, *(v24 + 64) + 32 * v74 + 8, &v101);
      LOBYTE(v94) = 0;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v24, 0);
      v75 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((v24 + 56), &v94);
      re::DeformationVertexBufferState::setOutputBuffer(v24, 0, 1, *(v24 + 64) + 32 * v75 + 8, v97);
      LOBYTE(v94) = 20;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v24, 0x14u);
      v76 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((v24 + 56), &v94);
      re::DeformationVertexBufferState::setOutputBuffer(v24, 0x14u, 1, *(v24 + 64) + 32 * v76 + 8, &v95);
LABEL_55:
      v14 = v87 + 1;
      if (v87 + 1 == v82)
      {
        return v86;
      }
    }

    v15 = 2 * v87;
LABEL_40:
    v56 = v5;
    v5 = *(v5 + 516);
    v17 = (16 * v5);
    re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(a3, 0xD0uLL, 0x10uLL, &v101);
    v57 = v101;
    v58 = v102;
    v59 = v101 + DWORD2(v101);
    *v59 = xmmword_1E3047670;
    *(v59 + 16) = xmmword_1E3047680;
    *(v59 + 32) = xmmword_1E30476A0;
    *(v59 + 48) = xmmword_1E30474D0;
    *(v59 + 64) = xmmword_1E3047670;
    *(v59 + 80) = xmmword_1E3047680;
    *(v59 + 96) = xmmword_1E30476A0;
    *(v59 + 112) = xmmword_1E30474D0;
    *(v59 + 128) = xmmword_1E3047670;
    *(v59 + 144) = xmmword_1E3047680;
    *(v59 + 160) = xmmword_1E30476A0;
    *(v59 + 176) = xmmword_1E30474D0;
    *(v59 + 192) = v17;
    *(v59 + 196) = 2;
    a2 = *(v86 + 8);
    if (a2 <= v15)
    {
      goto LABEL_61;
    }

    v60 = 0;
    v84 = 6 * v5;
    v5 = (4 * v5);
    v79 = v15;
    v61 = *(v86 + 16) + 24 * v15;
    *v61 = v57;
    *(v61 + 16) = v58;
    WORD2(v95) = 1025;
    LODWORD(v95) = 65548;
    BYTE4(v96) = 30;
    LODWORD(v96) = 0;
    v62 = 12 * v17;
    do
    {
      re::DeformationVertexBufferState::allocAndSetOutputBuffer(v24, *(v21 + 360), a5[2], *(v16 + 16), v62, re::OpenSubdivViewDependentComputeStep::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::kControlPointVIDs[v60++], a4, &v95);
    }

    while (v60 != 3);
    a2 = 0;
    WORD2(v94) = 769;
    LODWORD(v94) = 65552;
    BYTE12(v94) = 31;
    DWORD2(v94) = 0;
    do
    {
      v63 = re::DeformationVertexBufferState::allocAndSetOutputBuffer(v24, *(v21 + 360), a5[2], *(v16 + 16), 4 * v5, re::OpenSubdivViewDependentComputeStep::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::kTesselationHiLoVIDs[a2++], a4, &v94);
    }

    while (a2 != 2);
    v15 = 2;
    {
      WORD2(v91) = 769;
      LODWORD(v91) = 65548;
      v93 = 30;
      v92 = 0;
      v64 = re::DeformationVertexBufferState::allocAndSetOutputBuffer(v24, *(v21 + 360), a5[2], *(v16 + 16), 2 * v84, 7, a4, &v91);
      {
        a2 = *(v56 + 516);
        re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(a3, 8uLL, 4uLL, &v101);
        v65 = v101;
        v66 = v102;
        *(v101 + DWORD2(v101)) = a2 | ((25 * a2) << 32);
        v17 = v79 | 1;
        v5 = *(v86 + 8);
        if (v5 <= (v79 | 1))
        {
          goto LABEL_67;
        }

        v67 = *(v86 + 16) + 24 * v17;
        *v67 = v65;
        *(v67 + 16) = v66;
        v68 = *(v56 + 516);
        WORD2(v101) = 1;
        LODWORD(v101) = 2;
        BYTE12(v101) = 49;
        DWORD2(v101) = 0;
        re::DeformationVertexBufferState::allocAndSetOutputBuffer(v24, *(v21 + 360), a5[2], *(v16 + 16), 192 * v68, 0, a4, &v101);
        v5 = 0;
        *&v97[4] = 257;
        *v97 = 65548;
        v97[12] = 30;
        *&v97[8] = 0;
        do
        {
          re::DeformationVertexBufferState::allocAndSetOutputBuffer(v24, *(v21 + 360), a5[2], *(v16 + 16), 300 * a2, re::OpenSubdivViewDependentComputeStep::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::kVertexBufferIDs[v5++], a4, v97);
        }

        while (v5 != 4);
        WORD2(v88) = 257;
        LODWORD(v88) = 65544;
        v90 = 29;
        v89 = 0;
        re::DeformationVertexBufferState::allocAndSetOutputBuffer(v24, *(v21 + 360), a5[2], *(v16 + 16), 200 * a2, 20, a4, &v88);
        v15 = 2;
      }
    }

    goto LABEL_55;
  }

  return 0;
}

uint64_t re::OpenSubdivViewDependentComputeStep::deformGPU(uint64_t a1, unint64_t a2, void **a3, uint64_t *a4)
{
  v5 = a4;
  v134 = *MEMORY[0x1E69E9840];
  v119 = *a4;
  if (a4[4])
  {
    v9 = 24;
  }

  else
  {
    v9 = 32;
  }

  v10 = &selRef_setOwnerWithIdentity_;
  v78 = v9;
  if ([*(a1 + v9) threadExecutionWidth] <= 0x40)
  {
    v94 = [*(a1 + v9) threadExecutionWidth];
  }

  else
  {
    v94 = 64;
  }

  re::mtl::ComputeCommandEncoder::pushDebugGroup(a3, "OpenSubdivViewDependentComputeStep - cull and calculate tessellation factors");
  v117 = *(v119 + 48);
  if (v117)
  {
    v11 = 0;
    v93 = v94 - 1;
    v95 = v5;
    v77 = a3;
    v118 = a2;
    do
    {
      v12 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v119 + 8, v11);
      v14 = 2 * v11;
      v15 = *(a2 + 8);
      if (v15 <= 2 * v11)
      {
        v132 = 0u;
        v133 = 0u;
        v131 = 0u;
        memset(v130, 0, sizeof(v130));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v127 = 136315906;
        *&v127[4] = "operator[]";
        *&v127[12] = 1024;
        *&v127[14] = 468;
        *&v127[18] = 2048;
        *&v127[20] = 2 * v11;
        v128 = 2048;
        v129 = v15;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_58:
        re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v10, v16);
        _os_crash();
        __break(1u);
LABEL_59:
        v132 = 0u;
        v133 = 0u;
        v131 = 0u;
        memset(v130, 0, sizeof(v130));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v127 = 136315906;
        *&v127[4] = "operator[]";
        *&v127[12] = 1024;
        *&v127[14] = 476;
        *&v127[18] = 2048;
        *&v127[20] = v15;
        v128 = 2048;
        v129 = a2;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_60:
        v132 = 0u;
        v133 = 0u;
        v131 = 0u;
        memset(v130, 0, sizeof(v130));
        v43 = MEMORY[0x1E69E9C10];
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v127 = 136315906;
        *&v127[4] = "operator[]";
        *&v127[12] = 1024;
        *&v127[14] = 468;
        *&v127[18] = 2048;
        *&v127[20] = v15;
        v128 = 2048;
        v129 = v10;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_61:
        re::internal::assertLog(6, v45, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v14, v45);
        _os_crash();
        __break(1u);
LABEL_62:
        re::internal::assertLog(6, v48, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v4, v48);
        _os_crash();
        __break(1u);
LABEL_63:
        re::internal::assertLog(6, v50, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v5, v50);
        _os_crash();
        __break(1u);
LABEL_64:
        re::internal::assertLog(6, v61, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v43, v61);
        _os_crash();
        __break(1u);
LABEL_65:
        re::internal::assertLog(6, v64, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v65, v64);
        _os_crash();
        __break(1u);
      }

      v10 = *(v12 + 8);
      v16 = v5[6];
      if (v16 <= v10)
      {
        goto LABEL_58;
      }

      v4 = *(a2 + 16) + 48 * v11;
      v17 = v5[5];
      v18 = re::BucketArray<re::ActiveDeformation,8ul>::operator[](v5[1], v10);
      v120 = v4;
      if (*(v4 + 12))
      {
        v19 = v18;
        v20 = re::DataArray<re::MeshModel>::get(*(a1 + 16) + 8, *(*(v18 + 368) + 16));
        v15 = *(v19 + 392);
        a2 = *(v20 + 56);
        if (a2 <= v15)
        {
          goto LABEL_59;
        }

        v21 = (v17 + 312 * v10);
        v22 = *(v20 + 64) + 544 * v15;
        v23 = v22;
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23 && !v24[8]);
        *&v130[0] = 0x3CB5DB6609EB25B9;
        v25 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v24 + 5, v130);
        a2 = v118;
        if (v25 == -1)
        {
          v4 = 0;
        }

        else
        {
          v4 = v24[6] + 16 * v25 + 8;
        }

        *&v130[0] = 0x5A059158998155F0;
        v26 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v24 + 5, v130);
        if (v26 == -1)
        {
          v124 = 0;
        }

        else
        {
          v124 = (v24[6] + 16 * v26 + 8);
        }

        *&v130[0] = 0x4FC8CE4D0F6BEDB7;
        v27 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v24 + 5, v130);
        if (v27 == -1)
        {
          v122 = 0;
        }

        else
        {
          v122 = (v24[6] + 16 * v27 + 8);
        }

        *&v130[0] = 0x6C02648D4FC47F55;
        v28 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v24 + 5, v130);
        if (v28 == -1)
        {
          v10 = 0;
        }

        else
        {
          v10 = v24[6] + 16 * v28 + 8;
        }

        *&v130[0] = 0x2A7358959BBE8A81;
        v29 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v24 + 5, v130);
        if (v29 == -1)
        {
          v30 = 0;
          if (!v4)
          {
            goto LABEL_55;
          }
        }

        else
        {
          v30 = v24[6] + 16 * v29 + 8;
          if (!v4)
          {
            goto LABEL_55;
          }
        }

        {
          v86 = v30;
          v88 = v10;
          v116 = v22;
          LOBYTE(v130[0]) = 6;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v21, 6u);
          v31 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v21 + 7, v130);
          v32 = v21[8];
          LOBYTE(v130[0]) = 8;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v21, 8u);
          v114 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v21 + 7, v130);
          v108 = v21[8];
          LOBYTE(v130[0]) = 16;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v21, 0x10u);
          v33 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v21 + 23, v130);
          v104 = v21[24];
          v106 = v33;
          LOBYTE(v130[0]) = 17;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v21, 0x11u);
          v34 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v21 + 23, v130);
          v100 = v21[24];
          v102 = v34;
          LOBYTE(v130[0]) = 18;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v21, 0x12u);
          v98 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v21 + 23, v130);
          v35 = v21[24];
          LOBYTE(v130[0]) = 14;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v21, 0xEu);
          v96 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v21 + 23, v130);
          v36 = v21[24];
          LOBYTE(v130[0]) = 15;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v21, 0xFu);
          v37 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v21 + 23, v130);
          v38 = v21[24];
          v111 = 2 * v11;
          {
            v91 = 0;
          }

          else
          {
            LOBYTE(v130[0]) = 7;
            re::DeformationVertexBufferState::ensureVertexBufferInitialized(v21, 7u);
            v91 = v21[24] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v21 + 23, v130) + 8;
          }

          v14 = v108 + 32 * v114;
          v115 = v35 + 32 * v98;
          v10 = v36 + 32 * v96;
          LOBYTE(v130[0]) = 13;
          v39 = v38 + 32 * v37;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v21, 0xDu);
          v40 = v21[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v21 + 7, v130);
          a3 = v77;
          [*v77 setComputePipelineState:*(a1 + v78)];
          [*v77 setBuffer:*(v40 + 24) offset:*(v40 + 16) atIndex:0];
          [*v77 setBuffer:*(v32 + 32 * v31 + 24) offset:*(v32 + 32 * v31 + 16) atIndex:1];
          v109 = v14;
          [*v77 setBuffer:*(v14 + 24) offset:*(v14 + 16) atIndex:2];
          [*v77 setBuffer:*(v10 + 24) offset:*(v10 + 16) atIndex:3];
          [*v77 setBuffer:*(v39 + 24) offset:*(v39 + 16) atIndex:4];
          v105 = v104 + 32 * v106;
          [*v77 setBuffer:*(v105 + 24) offset:*(v105 + 16) atIndex:5];
          v107 = v100 + 32 * v102;
          [*v77 setBuffer:*(v107 + 24) offset:*(v107 + 16) atIndex:6];
          [*v77 setBuffer:*(v115 + 24) offset:*(v115 + 16) atIndex:7];
          {
            [*v77 setBuffer:*(v91 + 16) offset:*(v91 + 8) atIndex:10];
          }

          v41 = *v77;
          *&v130[0] = (v93 + 16 * *(v116 + 129)) / v94;
          *(v130 + 8) = vdupq_n_s64(1uLL);
          *v127 = v94;
          *&v127[8] = *(v130 + 8);
          v5 = v95;
          a2 = v118;
          {
            v15 = v111 | 1;
            v10 = *(v118 + 8);
            if (v10 <= (v111 | 1uLL))
            {
              goto LABEL_60;
            }

            v43 = *(v118 + 16);
            v44 = re::AttributeTable::buffers(v116);
            v14 = *v4;
            if (v45 <= v14)
            {
              goto LABEL_61;
            }

            v46 = v44;
            v47 = re::AttributeTable::buffers(v116);
            v4 = *v124;
            if (v48 <= v4)
            {
              goto LABEL_62;
            }

            v125 = v47;
            v49 = re::AttributeTable::buffers(v116);
            v5 = *v122;
            if (v50 <= v5)
            {
              goto LABEL_63;
            }

            v123 = v49;
            v51 = v43 + 24 * v15;
            LOBYTE(v130[0]) = 1;
            re::DeformationVertexBufferState::ensureVertexBufferInitialized(v21, 1u);
            v52 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v21 + 23, v130);
            v121 = v21[24];
            LOBYTE(v130[0]) = 2;
            re::DeformationVertexBufferState::ensureVertexBufferInitialized(v21, 2u);
            v53 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v21 + 23, v130);
            v112 = v21[24];
            v113 = v53;
            LOBYTE(v130[0]) = 3;
            re::DeformationVertexBufferState::ensureVertexBufferInitialized(v21, 3u);
            v54 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v21 + 23, v130);
            v101 = v21[24];
            v103 = v54;
            LOBYTE(v130[0]) = 4;
            re::DeformationVertexBufferState::ensureVertexBufferInitialized(v21, 4u);
            v55 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v21 + 23, v130);
            v97 = v21[24];
            v99 = v55;
            LOBYTE(v130[0]) = 20;
            re::DeformationVertexBufferState::ensureVertexBufferInitialized(v21, 0x14u);
            v56 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v21 + 23, v130);
            v90 = v21[24];
            v92 = v56;
            [*v77 setComputePipelineState:*(a1 + 40)];
            v76 = v51;
            [*v77 setBuffer:*(v51 + 16) offset:*(v51 + 8) atIndex:0];
            {
              v57 = 2;
              v79 = 3;
              v80 = 4;
              v81 = 5;
              v82 = 6;
              v83 = 7;
              v84 = 8;
              v85 = 9;
              v87 = 10;
              v89 = 11;
              v110 = 12;
            }

            else
            {
              v75 = v5;
              v58 = v4;
              v59 = v14;
              v14 = v52;
              v60 = re::AttributeTable::buffers(v116);
              v43 = *v88;
              if (v61 <= v43)
              {
                goto LABEL_64;
              }

              v62 = v60;
              v63 = re::AttributeTable::buffers(v116);
              v65 = *v86;
              if (v64 <= v65)
              {
                goto LABEL_65;
              }

              v66 = v62 + 24 * v43;
              v67 = v63 + 24 * *v86;
              [*v77 setBuffer:*v66 offset:*(v66 + 4) atIndex:2];
              [*v77 setBuffer:*v67 offset:*(v67 + 4) atIndex:3];
              v57 = 4;
              v79 = 5;
              v80 = 6;
              v81 = 7;
              v82 = 8;
              v83 = 9;
              v84 = 10;
              v85 = 11;
              v87 = 12;
              v89 = 13;
              v110 = 14;
              v52 = v14;
              LODWORD(v14) = v59;
              LODWORD(v4) = v58;
              LODWORD(v5) = v75;
            }

            v68 = v121 + 32 * v52;
            v10 = v125 + 24 * v4;
            v4 = v97 + 32 * v99;
            [*v77 setBuffer:*(v105 + 24) offset:*(v105 + 16) atIndex:v57];
            [*v77 setBuffer:*(v107 + 24) offset:*(v107 + 16) atIndex:v79];
            [*v77 setBuffer:*(v115 + 24) offset:*(v115 + 16) atIndex:v80];
            [*v77 setBuffer:*(v46 + 3 * v14) offset:*(v46 + 6 * v14 + 4) atIndex:v81];
            [*v77 setBuffer:*v10 offset:*(v10 + 16) atIndex:v82];
            [*v77 setBuffer:*(v123 + 3 * v5) offset:*(v123 + 6 * v5 + 4) atIndex:v83];
            [*v77 setBuffer:*(v68 + 24) offset:*(v68 + 16) atIndex:v84];
            [*v77 setBuffer:*(v112 + 32 * v113 + 24) offset:*(v112 + 32 * v113 + 16) atIndex:v85];
            [*v77 setBuffer:*(v101 + 32 * v103 + 24) offset:*(v101 + 32 * v103 + 16) atIndex:v87];
            [*v77 setBuffer:*(v4 + 24) offset:*(v4 + 16) atIndex:v89];
            [*v77 setBuffer:*(v90 + 32 * v92 + 24) offset:*(v90 + 32 * v92 + 16) atIndex:v110];
            v69 = *(v68 + 20) / 0xCu;
            v70 = [*(a1 + 40) threadExecutionWidth];
            v71 = *v77;
            *&v130[0] = (v69 + v70 - 1) / v70;
            *(v130 + 8) = vdupq_n_s64(1uLL);
            *v127 = v70;
            *&v127[8] = *(v130 + 8);
            v5 = v95;
            a2 = v118;
            {
              LOBYTE(v130[0]) = 0;
              re::DeformationVertexBufferState::ensureVertexBufferInitialized(v21, 0);
              v72 = v21[24] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v21 + 23, v130);
              [*v77 setComputePipelineState:*(a1 + 48)];
              [*v77 setBuffer:*(v76 + 16) offset:*(v76 + 8) atIndex:0];
              [*v77 setBuffer:*(v72 + 24) offset:*(v72 + 16) atIndex:1];
              v73 = *v77;
              *&v130[0] = (*(v116 + 129) + v93) / v94;
              *(v130 + 8) = vdupq_n_s64(1uLL);
              *v127 = v94;
              *&v127[8] = *(v130 + 8);
              [v73 dispatchThreadgroups:v130 threadsPerThreadgroup:v127];
            }
          }
        }
      }

LABEL_55:
      ++v11;
    }

    while (v11 != v117);
  }

  return [*a3 popDebugGroup];
}

void re::OpenSubdivViewIndependentComputeStep::deformCPU(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) OpenSubdivViewIndependentComputeStep does not have a CPU implementation", "!Unreachable code", "deformCPU", 99);
  _os_crash();
  __break(1u);
}

void re::OpenSubdivViewDependentComputeStep::deformCPU(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) OpenSubdivViewDependentComputeStep does not have a CPU implementation", "!Unreachable code", "deformCPU", 170);
  _os_crash();
  __break(1u);
}

void *re::internal::Callable<re::OpenSubdivViewIndependentComputeStep::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D0A190;
  return result;
}

void *re::internal::Callable<re::OpenSubdivViewIndependentComputeStep::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D0A190;
  return result;
}

void *re::internal::Callable<re::OpenSubdivViewDependentComputeStep::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D0A1E8;
  return result;
}

void *re::internal::Callable<re::OpenSubdivViewDependentComputeStep::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D0A1E8;
  return result;
}

uint64_t re::RenderThread::init(uint64_t this, re::RenderManager *a2)
{
  v2[4] = *MEMORY[0x1E69E9840];
  if ((*(this + 16) & 1) == 0)
  {
    *(this + 8) = a2;
    atomic_store(0, (this + 176));
    atomic_store(0, (this + 184));
    atomic_store(0, (this + 192));
    atomic_store(0, (this + 200));
    *(this + 160) = 0;
    *(this + 168) = 0;
    v2[3] = 0;
    std::function<void ()(re::EventQueue &)>::operator=((this + 128), v2);
    std::__function::__value_func<void ()(re::EventQueue &)>::~__value_func[abi:nn200100](v2);
    operator new();
  }

  return this;
}

void *re::RenderThread::threadFuncStatic(re::RenderThread *this, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  pthread_setname_np("Render");
  v4 = *(this + 1);
  if (!v4)
  {
    goto LABEL_24;
  }

  v5 = *(v4 + 248);
  if (v5)
  {
    (*(*v5 + 16))(v5);
  }

  v6 = this + 32;
  do
  {
    do
    {
      re::internal::AutoResetEvent::waitOne((this + 320));
      re::EventQueue::processEvents(this + 6);
    }

    while (*(this + 15) == *&v6[40 * ((*(this + 28) & 1) == 0) + 16]);
    v7 = 0;
    do
    {
      result = re::EventQueue::peekEvent((this + 24), 0);
      if (result == 1)
      {
        v7 = 1;
        __dst = 1;
        result = re::EventQueue::readEvent((this + 24), &__dst, 4uLL);
      }

      else if (!result)
      {
        __dst = 0;
        v20 = 0xFFFFFFFFFFFFFFFLL;
        v9 = re::EventQueue::readEvent((this + 24), &__dst, 0x28uLL);
        v11 = v20;
        v12 = *(*(this + 1) + 112) + 16 * (v20 & 7);
        *(v12 + 456) = v21;
        *(v12 + 464) = v11;
        if (v22)
        {
          v13 = v20;
          isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v9);
          if (isStatisticCollectionEnabled)
          {
            v15 = re::profilerThreadContext(isStatisticCollectionEnabled);
            v16 = *(*(this + 1) + 112);
            if (v16)
            {
              v17 = *(v16 + 1664);
            }

            else
            {
              v17 = 0;
            }

            re::ProfilerThreadContext::begin(v15, v17, v13 & 0xFFFFFFFFFFFFFFFLL, 0);
          }

          v26 = 1;
          v18 = re::ProfilerConfig::isStatisticCollectionEnabled(isStatisticCollectionEnabled);
          if (v18)
          {
            if (*(re::profilerThreadContext(v18) + 152))
            {
              mach_absolute_time();
            }
          }

          v24 = 0;
          rep = std::chrono::steady_clock::now().__d_.__rep_;
          v25 = 1;
          operator new();
        }

        re::internal::assertLog(4, v10, "assertion failure: '%s' (%s:line %i) NULL workload passed to RenderThread::doRender", "workload", "doRender", 146);
        _os_crash();
        __break(1u);
LABEL_24:
        re::internal::assertLog(4, v3, "assertion failure: '%s' (%s:line %i) NULL RenderManager in RenderThread. Cannot continue.", "m_renderManager", "threadFunc", 95);
        _os_crash();
        __break(1u);
      }
    }

    while (*(this + 15) != *&v6[40 * ((*(this + 28) & 1) == 0) + 16]);
  }

  while ((v7 & 1) == 0);
  return result;
}