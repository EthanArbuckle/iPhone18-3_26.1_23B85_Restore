uint64_t re::ecs2::RenderPassGroupManager::unregisterScene(re::ecs2::RenderPassGroupManager *this, re::ecs2::Scene *a2)
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

BOOL re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashSet<re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(_BOOL8 result, uint64_t a2, void *a3)
{
  v3 = result;
  v4 = 0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1));
  v5 = (0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31);
  LODWORD(v6) = 0x7FFFFFFF;
  if (!*a2)
  {
    LODWORD(v7) = 0;
    v8 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v7 = v5 % *(a2 + 24);
  v8 = *(*(a2 + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v10 = *(a2 + 16);
  result = re::StringID::operator==((v10 + 80 * v8 + 8), a3);
  if (result)
  {
    LODWORD(v6) = v8;
LABEL_5:
    v8 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v11 = *(v10 + 80 * v8);
  v6 = v11 & 0x7FFFFFFF;
  if ((v11 & 0x7FFFFFFF) == 0x7FFFFFFF)
  {
    LODWORD(v6) = 0x7FFFFFFF;
  }

  else
  {
    result = re::StringID::operator==((v10 + 80 * v6 + 8), a3);
    if (!result)
    {
      LODWORD(v12) = v6;
      while (1)
      {
        v8 = v12;
        v13 = *(v10 + 80 * v6);
        v12 = v13 & 0x7FFFFFFF;
        LODWORD(v6) = 0x7FFFFFFF;
        if ((v13 & 0x7FFFFFFF) == 0x7FFFFFFF)
        {
          break;
        }

        result = re::StringID::operator==((v10 + 80 * v12 + 8), a3);
        v6 = v12;
        if (result)
        {
          LODWORD(v6) = v12;
          break;
        }
      }
    }
  }

LABEL_7:
  *v3 = v5;
  *(v3 + 8) = v7;
  *(v3 + 12) = v6;
  *(v3 + 16) = v8;
  return result;
}

uint64_t re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashSet<re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v28, 0, 36);
          *&v28[36] = 0x7FFFFFFFLL;
          re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(v28, v9, v8);
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
            v17 = (v13 + 32);
            do
            {
              if ((*(v17 - 4) & 0x80000000) != 0)
              {
                v18 = 0xBF58476D1CE4E5B9 * ((*(v17 - 3) >> 31) ^ (*(v17 - 3) >> 1));
                v19 = re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashSet<re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, ((0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) ^ ((0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) >> 31)) % *(a1 + 24));
                v20 = *(v17 - 3);
                *(v19 + 8) = *(v19 + 8) & 0xFFFFFFFFFFFFFFFELL | v20 & 1;
                *(v19 + 8) = *(v17 - 3) & 0xFFFFFFFFFFFFFFFELL | v20 & 1;
                *(v19 + 16) = *(v17 - 2);
                *(v17 - 3) = 0;
                *(v17 - 2) = &str_67;
                v21 = *(v17 - 1);
                *(v19 + 32) = 0u;
                v19 += 32;
                *(v19 - 8) = v21;
                *(v19 + 16) = 0u;
                *(v19 + 32) = 0;
                *(v19 + 36) = 0x7FFFFFFFLL;
                re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::swap(v19, v17);
              }

              v17 += 10;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashSet<re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v28);
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
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v22 = *(a1 + 16);
    v23 = *(v22 + 80 * v4);
  }

  else
  {
    v22 = *(a1 + 16);
    v23 = *(v22 + 80 * v4);
    *(a1 + 36) = v23 & 0x7FFFFFFF;
  }

  v25 = 80 * v4;
  *(v22 + v25) = v23 | 0x80000000;
  v26 = *(a1 + 8);
  *(v22 + v25) = *(v26 + 4 * a2) | 0x80000000;
  *(v26 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v22 + 80 * v4;
}

double re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashSet<re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashSet<re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free((a1[2] + v3));
        ++v4;
        v3 += 80;
      }

      while (v4 < *(a1 + 8));
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

double re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashSet<re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free(_DWORD *a1)
{
  if ((*a1 & 0x80000000) != 0)
  {
    *a1 &= ~0x80000000;
    v2 = (a1 + 8);
    re::StringID::destroyString((a1 + 2));

    return re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v2);
  }

  return result;
}

uint64_t *re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::~HierarchyStateTracking(uint64_t *a1)
{
  *a1 = &unk_1F5CECBF0;
  v2 = a1 + 1;
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(a1 + 31);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(a1 + 25);
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit((a1 + 19));
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(a1 + 13);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a1 + 7);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v2);
  return a1;
}

double re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free((a1[2] + v3));
        ++v4;
        v3 += 80;
      }

      while (v4 < *(a1 + 8));
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

double re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free(_DWORD *a1)
{
  if ((*a1 & 0x80000000) != 0)
  {
    *a1 &= ~0x80000000;
    v2 = (a1 + 8);
    re::StringID::destroyString((a1 + 2));

    return re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v2);
  }

  return result;
}

uint64_t (***re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::subscribeToEventToInvalidateEntityHierarchy<REComponentDidActivateEvent>(re *a1, re::EventBus *a2, uint64_t a3, uint64_t a4))(void)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = re::globalAllocators(a1)[2];
  v8 = (*(*v15 + 32))(v15, 32, 0);
  *v8 = &unk_1F5CECC88;
  v8[1] = a1;
  v8[2] = re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::invalidateEntityHierarchyEventHandler<REComponentDidActivateEvent>;
  v8[3] = 0;
  v16 = v8;
  v9 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(a2, v14, a4, 0);
  v11 = v10;
  v12 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a3);
  *v12 = v9;
  v12[1] = v11;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v14);
}

uint64_t (***re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::subscribeToEventToInvalidateEntityHierarchy<REComponentWillDeactivateEvent>(re *a1, re::EventBus *a2, uint64_t a3, uint64_t a4))(void)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = re::globalAllocators(a1)[2];
  v8 = (*(*v15 + 32))(v15, 32, 0);
  *v8 = &unk_1F5CECCE0;
  v8[1] = a1;
  v8[2] = re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::invalidateEntityHierarchyEventHandler<REComponentWillDeactivateEvent>;
  v8[3] = 0;
  v16 = v8;
  v9 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(a2, v14, a4, 0);
  v11 = v10;
  v12 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a3);
  *v12 = v9;
  v12[1] = v11;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v14);
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::invalidateEntityHierarchyEventHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CECC30;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CECC30;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::invalidateEntityHierarchyEventHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CECC88;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CECC88;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::invalidateEntityHierarchyEventHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CECCE0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CECCE0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::invalidateEntityHierarchyEventHandler<RESceneEntityDidReparentEvent>(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CECD38;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CECD38;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::invalidateEntityHierarchyEventHandler<RESceneEntityDidActivateEvent>(uint64_t a1, uint64_t a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::*)(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::*)(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CECD90;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::*)(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CECD90;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::invalidateEntityHierarchyEventHandler<RESceneEntityWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v3 = a1 + 200;
  (*(*a1 + 40))(a1);
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(a1 + 104, &v5);
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(v3, &v5);
  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CECDE8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CECDE8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

void *re::BucketArray<re::ecs2::RenderPassGroupManagerStateTracking::buildRenderPassGroupsForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityRenderPassGroup,32ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::RenderPassGroupManagerStateTracking::buildRenderPassGroupsForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityRenderPassGroup,32ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::ecs2::RenderPassGroupManagerStateTracking::buildRenderPassGroupsForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityRenderPassGroup,32ul>::setBucketsCapacity(void *result, unint64_t a2)
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

uint64_t re::BucketArray<re::ecs2::RenderPassGroupManagerStateTracking::buildRenderPassGroupsForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityRenderPassGroup,32ul>::addUninitialized(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 32 * v3)
  {
    re::BucketArray<re::ecs2::RenderPassGroupManagerStateTracking::buildRenderPassGroupsForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityRenderPassGroup,32ul>::setBucketsCapacity(a1, (v2 + 32) >> 5);
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
  return v5 + 32 * (v2 & 0x1F);
}

uint64_t re::HashTable<re::ecs2::Entity const*,re::ecs2::RenderPassGroup,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::ecs2::Entity const*,re::ecs2::RenderPassGroup,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
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

void re::HashTable<re::ecs2::Entity const*,re::ecs2::RenderPassGroup,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
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
      re::HashTable<re::ecs2::Entity const*,re::ecs2::RenderPassGroup,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::move(a1, v9);
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

uint64_t re::HashTable<re::ecs2::Entity const*,re::ecs2::RenderPassGroup,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<re::ecs2::Entity const*,re::ecs2::RenderPassGroup,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(v4, *(v7 + v5 + 32) % *(v4 + 24));
        *(result + 8) = *(*(a2 + 16) + v5 + 8);
        *(result + 16) = *(*(a2 + 16) + v5 + 16);
        v2 = *(a2 + 32);
      }

      v5 += 40;
    }
  }

  return result;
}

void re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &unk_1E304C660, 4 * v2);
    }

    if (*(a1 + 32))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free((*(a1 + 16) + v3));
        ++v4;
        v3 += 80;
      }

      while (v4 < *(a1 + 32));
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v5 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v5;
  }
}

uint64_t re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v28, 0, 36);
          *&v28[36] = 0x7FFFFFFFLL;
          re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(v28, v9, v8);
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
            v17 = (v13 + 32);
            do
            {
              if ((*(v17 - 4) & 0x80000000) != 0)
              {
                v18 = 0xBF58476D1CE4E5B9 * ((*(v17 - 3) >> 31) ^ (*(v17 - 3) >> 1));
                v19 = re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, ((0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) ^ ((0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) >> 31)) % *(a1 + 24));
                v20 = *(v17 - 3);
                *(v19 + 8) = *(v19 + 8) & 0xFFFFFFFFFFFFFFFELL | v20 & 1;
                *(v19 + 8) = *(v17 - 3) & 0xFFFFFFFFFFFFFFFELL | v20 & 1;
                *(v19 + 16) = *(v17 - 2);
                *(v17 - 3) = 0;
                *(v17 - 2) = &str_67;
                v21 = *(v17 - 1);
                *(v19 + 32) = 0u;
                v19 += 32;
                *(v19 - 8) = v21;
                *(v19 + 16) = 0u;
                *(v19 + 32) = 0;
                *(v19 + 36) = 0x7FFFFFFFLL;
                re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v19, v17);
              }

              v17 += 10;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v28);
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
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v22 = *(a1 + 16);
    v23 = *(v22 + 80 * v4);
  }

  else
  {
    v22 = *(a1 + 16);
    v23 = *(v22 + 80 * v4);
    *(a1 + 36) = v23 & 0x7FFFFFFF;
  }

  v25 = 80 * v4;
  *(v22 + v25) = v23 | 0x80000000;
  v26 = *(a1 + 8);
  *(v22 + v25) = *(v26 + 4 * a2) | 0x80000000;
  *(v26 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v22 + 80 * v4;
}

uint64_t re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = 0x7FFFFFFF;
  if (!*result)
  {
    goto LABEL_5;
  }

  v4 = a3 % *(result + 24);
  v6 = *(*(result + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(result + 16);
  if (*(v7 + 80 * v6 + 8) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 80 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 80 * v8 + 8) == *a2)
      {
        break;
      }

      v8 = *(v7 + 80 * v8) & 0x7FFFFFFF;
      v6 = v9;
      if (v8 == 0x7FFFFFFF)
      {
        v6 = v9;
        goto LABEL_6;
      }
    }

    v5 = v8;
  }

LABEL_6:
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v6;
  return result;
}

uint64_t re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 80 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 80 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 80 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 64) = a3;
  ++*(a1 + 28);
  return v7 + 80 * v5;
}

void re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(v9, v4, a2);
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
      re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(a1, v9);
      re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v9);
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

uint64_t re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v4, *(v7 + v5 + 64) % *(v4 + 24));
        v8 = *(a2 + 16) + v5;
        *(result + 8) = *(v8 + 8);
        v9 = *(v8 + 16);
        v10 = *(v8 + 48);
        *(result + 32) = *(v8 + 32);
        *(result + 48) = v10;
        *(result + 16) = v9;
        v2 = *(a2 + 32);
      }

      v5 += 80;
    }
  }

  return result;
}

void re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashSet<re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &unk_1E304C660, 4 * v2);
    }

    if (*(a1 + 32))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashSet<re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free((*(a1 + 16) + v3));
        ++v4;
        v3 += 80;
      }

      while (v4 < *(a1 + 32));
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v5 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v5;
  }
}

void *re::ecs2::allocInfo_ClusterShadowSeparatorComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_211, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_211))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A4F58, "ClusterShadowSeparatorComponent");
    __cxa_guard_release(&_MergedGlobals_211);
  }

  return &unk_1EE1A4F58;
}

void re::ecs2::initInfo_ClusterShadowSeparatorComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v10[0] = 0x4E424AB8BF52B1A4;
  v10[1] = "ClusterShadowSeparatorComponent";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1A4F00, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A4F00);
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
      qword_1EE1A4EF8 = v8;
      __cxa_guard_release(&qword_1EE1A4F00);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1A4EF8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ClusterShadowSeparatorComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ClusterShadowSeparatorComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ClusterShadowSeparatorComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ClusterShadowSeparatorComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs231ClusterShadowSeparatorComponentELNS_17RealityKitReleaseE2EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v9 = v11;
}

void re::internal::defaultConstruct<re::ecs2::ClusterShadowSeparatorComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CDF978;
}

void re::internal::defaultConstructV2<re::ecs2::ClusterShadowSeparatorComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CDF978;
}

void *re::ecs2::allocInfo_ClusterShadowMarkerComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A4F08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4F08))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A4FE8, "ClusterShadowMarkerComponent");
    __cxa_guard_release(&qword_1EE1A4F08);
  }

  return &unk_1EE1A4FE8;
}

void re::ecs2::initInfo_ClusterShadowMarkerComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v10[0] = 0xD5DA40D47753ADD2;
  v10[1] = "ClusterShadowMarkerComponent";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1A4F18, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A4F18);
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
      qword_1EE1A4F10 = v8;
      __cxa_guard_release(&qword_1EE1A4F18);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1A4F10;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ClusterShadowMarkerComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ClusterShadowMarkerComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ClusterShadowMarkerComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ClusterShadowMarkerComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs228ClusterShadowMarkerComponentELNS_17RealityKitReleaseE2EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v9 = v11;
}

void re::internal::defaultConstruct<re::ecs2::ClusterShadowMarkerComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CDF810;
}

void re::internal::defaultConstructV2<re::ecs2::ClusterShadowMarkerComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CDF810;
}

void *re::ecs2::allocInfo_ShadowClusterComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A4F20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4F20))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A5078, "ShadowClusterComponent");
    __cxa_guard_release(&qword_1EE1A4F20);
  }

  return &unk_1EE1A5078;
}

void re::ecs2::initInfo_ShadowClusterComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v10[0] = 0xDFE7254011F9DB06;
  v10[1] = "ShadowClusterComponent";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1A4F30, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A4F30);
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
      qword_1EE1A4F28 = v8;
      __cxa_guard_release(&qword_1EE1A4F30);
    }
  }

  *(this + 2) = 0x5000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1A4F28;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ShadowClusterComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ShadowClusterComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ShadowClusterComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ShadowClusterComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs222ShadowClusterComponentELNS_17RealityKitReleaseE3EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v9 = v11;
}

void re::internal::defaultConstruct<re::ecs2::ShadowClusterComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CDF6A8;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 76) = 1;
}

void *re::internal::defaultDestruct<re::ecs2::ShadowClusterComponent>(uint64_t a1, uint64_t a2, void *a3)
{
  re::AssetHandle::~AssetHandle((a3 + 4));
  *a3 = &unk_1F5CCF868;

  return objc_destructInstance(a3 + 1);
}

void re::internal::defaultConstructV2<re::ecs2::ShadowClusterComponent>(ArcSharedObject *a1)
{
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CDF6A8;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 32) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 76) = 1;
}

void *re::internal::defaultDestructV2<re::ecs2::ShadowClusterComponent>(void *a1)
{
  re::AssetHandle::~AssetHandle((a1 + 4));
  *a1 = &unk_1F5CCF868;

  return objc_destructInstance(a1 + 1);
}

void *re::ecs2::allocInfo_ShadowClusterRootComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A4F38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4F38))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A5108, "ShadowClusterRootComponent");
    __cxa_guard_release(&qword_1EE1A4F38);
  }

  return &unk_1EE1A5108;
}

void re::ecs2::initInfo_ShadowClusterRootComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v10[0] = 0xE94DDA63926F6F82;
  v10[1] = "ShadowClusterRootComponent";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1A4F48, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A4F48);
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
      qword_1EE1A4F40 = v8;
      __cxa_guard_release(&qword_1EE1A4F48);
    }
  }

  *(this + 2) = 0x4000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1A4F40;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ShadowClusterRootComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ShadowClusterRootComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ShadowClusterRootComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ShadowClusterRootComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs226ShadowClusterRootComponentELNS_17RealityKitReleaseE10EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v9 = v11;
}

float32x4_t re::internal::defaultConstruct<re::ecs2::ShadowClusterRootComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  v3[1].i64[0] = 0;
  v3[1].i8[8] = 0;
  v3->i64[0] = &unk_1F5CE6168;
  result.i64[0] = 0x7F0000007FLL;
  result.i64[1] = 0x7F0000007FLL;
  v3[2] = vnegq_f32(result);
  v3[3] = result;
  return result;
}

float32x4_t re::internal::defaultConstructV2<re::ecs2::ShadowClusterRootComponent>(ArcSharedObject *a1)
{
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  v1[1].i64[0] = 0;
  v1[1].i8[8] = 0;
  v1->i64[0] = &unk_1F5CE6168;
  result.i64[0] = 0x7F0000007FLL;
  result.i64[1] = 0x7F0000007FLL;
  v1[2] = vnegq_f32(result);
  v1[3] = result;
  return result;
}

void *re::ecs2::allocInfo_ShadowClusterSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A4F50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4F50))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A5198, "ShadowClusterSystem");
    __cxa_guard_release(&qword_1EE1A4F50);
  }

  return &unk_1EE1A5198;
}

void re::ecs2::initInfo_ShadowClusterSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xCF3FEC89DB6BBED2;
  v6[1] = "ShadowClusterSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x19000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_ShadowClusterSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ShadowClusterSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ShadowClusterSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::ShadowClusterSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::ShadowClusterSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ShadowClusterSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ShadowClusterSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

double re::internal::defaultConstruct<re::ecs2::ShadowClusterSystem>(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  a3[23] = 0u;
  a3[24] = 0u;
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
  *v3 = &unk_1F5CECE40;
  *(v3 + 296) = 0u;
  *(v3 + 312) = 0u;
  *(v3 + 328) = 0;
  *(v3 + 332) = 0x7FFFFFFFLL;
  *(v3 + 344) = 0u;
  *(v3 + 360) = 0u;
  *(v3 + 376) = 0;
  *(v3 + 380) = 0x7FFFFFFFLL;
  *(v3 + 392) = 1;
  return result;
}

void re::internal::defaultDestruct<re::ecs2::ShadowClusterSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a3 + 43);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a3 + 37);

  re::ecs2::System::~System(a3);
}

double re::internal::defaultConstructV2<re::ecs2::ShadowClusterSystem>(_OWORD *a1)
{
  a1[23] = 0u;
  a1[24] = 0u;
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
  *v1 = &unk_1F5CECE40;
  *(v1 + 296) = 0u;
  *(v1 + 312) = 0u;
  *(v1 + 328) = 0;
  *(v1 + 332) = 0x7FFFFFFFLL;
  *(v1 + 344) = 0u;
  *(v1 + 360) = 0u;
  *(v1 + 376) = 0;
  *(v1 + 380) = 0x7FFFFFFFLL;
  *(v1 + 392) = 1;
  return result;
}

void re::internal::defaultDestructV2<re::ecs2::ShadowClusterSystem>(uint64_t *a1)
{
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a1 + 43);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a1 + 37);

  re::ecs2::System::~System(a1);
}

re *re::ecs2::ShadowClusterSystem::willAddSceneToECSService(re *this, re::EventBus **a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v16 = a2;
  v2 = a2[36];
  if (v2)
  {
    v4 = this;
    v5 = re::globalAllocators(this)[2];
    v21 = v5;
    v6 = (*(*v5 + 32))(v5, 32, 0);
    *v6 = &unk_1F5CECED0;
    v6[1] = v4;
    v6[2] = re::ecs2::ShadowClusterSystem::onEntityReparented;
    v6[3] = 0;
    v22 = v6;
    Type = re::EventBus::getTypeId<RESceneEntityDidReparentEvent>();
    EventInfo = re::EventBus::addOrGetEventInfo(v2, Type);
    v29 = v5;
    v30 = 0;
    v9 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneEntityDidReparentEvent const&)>::operator=<24ul>(v28, v20);
    v26 = re::globalAllocators(v9)[2];
    v27 = 0;
    *&v23[0] = &unk_1F5CECF90;
    v24 = v29;
    v25 = 0;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneEntityDidReparentEvent const&)>::operator=<24ul>(v23 + 8, v28);
    v27 = v23;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneEntityDidReparentEvent const&)>::destroyCallable(v28);
    v10 = re::EventBus::EventInfo::addSubscription(EventInfo, v23, a2, 0);
    v12 = v11;
    re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(v23);
    *&v23[0] = v10;
    *(&v23[0] + 1) = v12;
    re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::addNew(v4 + 296, &v16, v23);
    v13 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneEntityDidReparentEvent const&)>::destroyCallable(v20);
    v18 = re::globalAllocators(v13)[2];
    v14 = (*(*v18 + 32))(v18, 32, 0);
    *v14 = &unk_1F5CECF38;
    v14[1] = v4;
    v14[2] = re::ecs2::ShadowClusterSystem::onComponentWillRemove;
    v14[3] = 0;
    v19 = v14;
    *&v23[0] = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillRemoveEvent>(v2, v17, re::ecs2::ComponentImpl<re::ecs2::ShadowClusterComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    *(&v23[0] + 1) = v15;
    re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::addNew(v4 + 344, &v16, v23);
    return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::destroyCallable(v17);
  }

  return this;
}

uint64_t re::ecs2::ShadowClusterSystem::onEntityReparented(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[1];
  v22 = *(v3 + 240);
  if (v22)
  {
    if (!re::ecs2::EntityComponentCollection::get((v3 + 48), re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType))
    {
      if (*a3)
      {
        if (*(*a3 + 240))
        {
          v7 = *(a1 + 248);
          if (v7)
          {
            v8 = (*(*v7 + 40))(v7);
            v21 = 0;
            v18[1] = 0;
            v19 = 0;
            v18[0] = 0;
            v20 = 0;
            re::DynamicArray<re::RigDataValue *>::add(v18, &v22);
            while (v19)
            {
              v9 = *(v21 + 8 * v19-- - 8);
              ++v20;
              v10 = *(v9 + 16);
              v11 = *(v10 + 344);
              if (v11)
              {
                v12 = *(v10 + 360);
                v13 = 8 * v11;
                do
                {
                  v14 = *v12;
                  if (*v12)
                  {
                    v15 = (v14 + 8);
                  }

                  v17 = *(v14 + 240);
                  if (v17)
                  {
                    re::DynamicArray<re::RigDataValue *>::add(v18, &v17);
                  }

                  ++v12;
                  v13 -= 8;
                }

                while (v13);
              }

              v16 = *(v3 + 240);
              if (v16)
              {
                re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v8 + 8, (v16 + 64));
              }
            }

            if (v18[0] && v21)
            {
              (*(*v18[0] + 40))();
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t re::ecs2::ShadowClusterSystem::onComponentWillRemove(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 240);
  if (v2)
  {
    v3 = *(a1 + 248);
    if (v3)
    {
      v4 = (*(*v3 + 40))(v3);
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v4 + 8, (v2 + 64));
    }
  }

  return 0;
}

BOOL re::ecs2::ShadowClusterSystem::willRemoveSceneFromECSService(_BOOL8 this, re::ecs2::Scene *a2)
{
  v6 = a2;
  v2 = *(a2 + 36);
  if (v2)
  {
    v3 = this;
    v4 = re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::operator[](this + 296, &v6);
    re::EventBus::unsubscribe(v2, *v4, *(v4 + 8));
    v5 = re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::operator[](v3 + 344, &v6);
    re::EventBus::unsubscribe(v2, *v5, *(v5 + 8));
    re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(v3 + 296, &v6);
    return re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(v3 + 344, &v6);
  }

  return this;
}

uint64_t re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::operator[](uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::ecs2::Entity const*,re::ecs2::RenderPassGroup,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return *(a1 + 16) + 40 * v6 + 16;
}

void re::ecs2::ShadowClusterSystem::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 392) != 1)
  {
    return;
  }

  v4 = *(a1 + 224);
  if (v4)
  {
    if ((*(v4 + 432) & 0x10) == 0)
    {
      return;
    }
  }

  v5 = *(a1 + 248);
  if (!v5)
  {
    return;
  }

  v6 = *(a3 + 200);
  if (!v6)
  {
    goto LABEL_79;
  }

  v7 = *(a3 + 216);
  v69 = &v7[v6];
  v8.i64[0] = 0x7F0000007FLL;
  v8.i64[1] = 0x7F0000007FLL;
  v68 = vnegq_f32(v8);
  do
  {
    v9 = *v7;
    v10 = (*(**(a1 + 248) + 40))(*(a1 + 248));
    v11 = re::ecs2::SceneComponentTable::get((v9 + 200), re::ecs2::ComponentImpl<re::ecs2::ShadowClusterComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v11)
    {
      v12 = *(v11 + 400);
      v13 = *(v11 + 384);
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    v75[0] = v12;
    v75[1] = v13;
    re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v74);
    re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v73, 3101, a1);
    v14 = (*(**(a1 + 256) + 24))(*(a1 + 256));
    v72 = v14;
    v15 = 8 * v13;
    if (!v13)
    {
      goto LABEL_26;
    }

    v16 = v14;
    v70 = v13;
    v71 = v7;
    v17 = 8 * v13;
    v18 = v12;
    do
    {
      v19 = *v18;
      v20 = (*v18 + 64);
      if (!*v20)
      {
        goto LABEL_19;
      }

      v21 = *(*(v19 + 16) + 192);
      (*(*v16 + 8))(&v79, v16);
      v22 = v79.i64[1];
      if (!v79.i8[0])
      {
        v22 = 0;
      }

      v23 = *(v19 + 40);
      if (!v21 || v23 != *(v21 + 40))
      {
        v24 = *(v19 + 48);
        *(v19 + 40) = 0;
        *(v19 + 48) = 0;
        v25 = *(v19 + 32);
        *(v19 + 32) = 0;
        v79.i64[0] = v25;
        v79.i64[1] = v23;
        *&v80 = v24;
        re::AssetHandle::~AssetHandle(&v79);
LABEL_18:
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v10 + 8, v20);
        re::ecs2::Component::markDirty(v19);
        goto LABEL_19;
      }

      if (*(v19 + 56) != v22)
      {
        *(v19 + 56) = v22;
        goto LABEL_18;
      }

LABEL_19:
      ++v18;
      v17 -= 8;
    }

    while (v17);
    v26 = v15;
    v27 = v12;
    v13 = v70;
    v7 = v71;
    do
    {
      v28 = *v27;
      if (re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(v10 + 8, (*v27 + 64)))
      {
        *(v28 + 64) = 0;
        re::ecs2::Component::markDirty(v28);
      }

      ++v27;
      v26 -= 8;
    }

    while (v26);
LABEL_26:
    v79.i64[0] = (*(**(a1 + 272) + 16))(*(a1 + 272));
    if (v13)
    {
      v29 = &v12[v13];
      v30 = v12;
      do
      {
        v31 = *(*v30 + 16);
        if (v31)
        {
          v32 = re::ecs2::RenderOptions::forEntity(&v79, v31);
          v33 = v32[16] ? v32[17] : 1;
          v34 = *v30;
          if (*(*v30 + 76) != v33)
          {
            *(v34 + 76) = v33;
            re::ecs2::Component::markDirty(v34);
          }
        }

        ++v30;
        v15 -= 8;
      }

      while (v15);
      do
      {
        if (*(a1 + 248))
        {
          v66 = *v12;
          if (*(*v12 + 76) == 1 && !*(v66 + 64))
          {
            v35 = *(v66 + 16);
            v36 = v35[24];
            if (v36)
            {
              v37 = *(v36 + 5);
              if (v37)
              {
                v38 = atomic_load((v37 + 896));
                if (v38 == 2 && !re::ecs2::MeshComponentHelper::isMappedToOcclusionPass(v36, v31))
                {
                  v39 = (*(**(a1 + 248) + 40))(*(a1 + 248));
                  (*(*v72 + 8))(&v79);
                  if (v79.i8[0])
                  {
                    v40 = v79.i64[1];
                  }

                  else
                  {
                    v40 = 0;
                  }

                  v41 = v35[4];
                  if (!v41 || (*(v41 + 304) & 0x80) != 0)
                  {
                    re::ecs2::EntityComponentCollection::get((v35 + 6), re::ecs2::ComponentImpl<re::ecs2::GroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
                  }

                  else
                  {
                    v42 = re::ecs2::EntityComponentCollection::get((v35 + 6), re::ecs2::ComponentImpl<re::ecs2::GroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
                    do
                    {
                      if (!*(v41 + 240))
                      {
                        break;
                      }

                      v43 = v41;
                      (*(*v72 + 8))(&v79);
                      v44 = v79.i8[0] ? v79.i64[1] : 0;
                      if (v40 != v44)
                      {
                        break;
                      }

                      if (re::ecs2::EntityComponentCollection::get((v35 + 6), re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType))
                      {
                        *&v64 = 0x7F0000007FLL;
                        *(&v64 + 1) = 0x7F0000007FLL;
                        v79 = v68;
                        v80 = v64;
                        v65 = *(v39 + 104);
                        *(v39 + 104) = v65 + 1;
                        re::ecs2::ShadowClusterSystem::trySetPhysicsCluster(a1, v35, v65, &v72, &v79);
                        goto LABEL_76;
                      }

                      v45 = re::ecs2::EntityComponentCollection::get((v41 + 48), re::ecs2::ComponentImpl<re::ecs2::GroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
                      if (v42 && v45 && *(v42 + 40) != *(v45 + 40))
                      {
                        break;
                      }

                      v41 = *(v41 + 32);
                      if (!v41)
                      {
                        v35 = v43;
                        break;
                      }

                      v35 = v43;
                    }

                    while ((*(v41 + 304) & 0x80) == 0);
                  }

                  v81 = 0;
                  v79 = 0u;
                  v80 = 0u;
                  v82 = 0x7FFFFFFFLL;
                  re::ecs2::ShadowClusterSystem::recursivelyCluster(v76, a1, v35, v75, &v72, &v79);
                  if (v77)
                  {
                    v46 = v78;
                    v47 = &v78[10 * v77];
                    do
                    {
                      v48 = v46[2];
                      if (v48)
                      {
                        v49 = v46[4];
                        v50 = &v49[2 * v48];
                        v51.i64[0] = 0x7F0000007FLL;
                        v51.i64[1] = 0x7F0000007FLL;
                        v52 = vnegq_f32(v51);
                        do
                        {
                          v53 = *v49;
                          v54 = v49[1];
                          v49 += 2;
                          v52.i32[3] = 0;
                          v53.i32[3] = 0;
                          v51.i32[3] = 0;
                          v52 = vminnmq_f32(v52, v53);
                          v54.i32[3] = 0;
                          v51 = vmaxnmq_f32(v51, v54);
                        }

                        while (v49 != v50);
                        v55 = vsubq_f32(v51, v52);
                      }

                      else
                      {
                        v55.i64[0] = 0x7F0000007FLL;
                        v55.i32[2] = 127;
                      }

                      v56 = *(v39 + 104);
                      *(v39 + 104) = v56 + 1;
                      v57 = v46[7];
                      if (v57)
                      {
                        v55.i32[3] = 0;
                        v58 = vmaxnmq_f32(v55, 0);
                        v59 = vmulq_f32(v58, v58);
                        v59.f32[0] = sqrtf(v59.f32[2] + vaddv_f32(*v59.f32));
                        v60 = fminf(fminf(v58.f32[0], v58.f32[2]), v58.f32[1]) / fmaxf((v59.f32[0] * 0.5) + (v59.f32[0] * 0.5), 0.0001);
                        v61 = v46[9];
                        v62 = 8 * v57;
                        do
                        {
                          v63 = *v61++;
                          *(v63 + 72) = v60;
                          *(v63 + 64) = v56;
                          re::ecs2::Component::markDirty(v63);
                          v62 -= 8;
                        }

                        while (v62);
                      }

                      v46 += 10;
                    }

                    while (v46 != v47);
                  }

                  re::DynamicArray<re::RigBasicConstraint>::deinit(v76);
                  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v79);
                }
              }
            }
          }
        }

LABEL_76:
        ++v12;
      }

      while (v12 != v29);
    }

    re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v73);
    re::ProfilerTimeGuard<(re::ProfilerStatistic)122>::end(v74);
    ++v7;
  }

  while (v7 != v69);
  v5 = *(a1 + 248);
LABEL_79:
  v67 = (*(*v5 + 40))(v5) + 8;

  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(v67);
}

uint64_t re::ecs2::ShadowClusterSystem::trySetPhysicsCluster(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, float32x4_t *a5)
{
  v10 = a2[30];
  v11 = a2[24];
  if (v11)
  {
    v12 = *(v11 + 40);
    if (v12)
    {
      v13 = atomic_load((v12 + 896));
      if (v13 != 2)
      {
        return 0;
      }

      v14 = *(a1 + 288);
      v15 = re::AssetHandle::loadedAsset<re::MeshAsset>((v11 + 32));
      v43 = xmmword_1E3047670;
      v44 = xmmword_1E3047680;
      v45 = xmmword_1E30476A0;
      v46 = xmmword_1E30474D0;
      re::MeshAsset::aabbFromMesh(v15, &v43, &v47);
      re::TransformService::worldMatrix(v14, *(v11 + 16), 0, &v43);
      v16 = vcgtq_f32(v47, v48);
      v16.i32[3] = v16.i32[2];
      v17 = vmaxvq_u32(v16);
      v18.i64[0] = 0x3F0000003F000000;
      v18.i64[1] = 0x3F0000003F000000;
      v19 = vmulq_f32(vaddq_f32(v47, v48), v18);
      v20 = v17 < 0;
      if (v17 >= 0)
      {
        v21 = v19.i64[1];
      }

      else
      {
        v21 = 0;
      }

      if (v20)
      {
        v22 = 0;
      }

      else
      {
        v22 = v19.i64[0];
      }

      v23.i64[0] = v22;
      v23.i64[1] = v21;
      v42[0] = vaddq_f32(vsubq_f32(v47, v23), v23);
      v42[1] = vaddq_f32(vsubq_f32(v48, v23), v23);
      re::AABB::transform(v42, &v43, v41);
      v24 = *a5;
      v25 = a5[1];
      v24.i32[3] = 0;
      v26 = v41[0];
      v27 = v41[1];
      v26.i32[3] = 0;
      v25.i32[3] = 0;
      v27.i32[3] = 0;
      *a5 = vminnmq_f32(v24, v26);
      a5[1] = vmaxnmq_f32(v25, v27);
    }
  }

  if (a2[43])
  {
    v28 = 0;
    v29 = 1;
    do
    {
      v30 = re::ecs2::EntityComponentCollection::operator[]((a2 + 40), v28);
      v31 = re::ecs2::ShadowClusterSystem::trySetPhysicsCluster(a1, *v30, a3, a4, a5);
      v28 = v29++;
      if (v31)
      {
        v32 = a2[43] > v28;
      }

      else
      {
        v32 = 0;
      }
    }

    while (v32);
    if ((v31 & 1) == 0)
    {
      return 0;
    }
  }

  (*(**a4 + 8))(&v43);
  if (v43)
  {
    v33 = *(&v43 + 1);
  }

  else
  {
    v33 = 0;
  }

  if (v10)
  {
    v34 = v11 == 0;
  }

  else
  {
    v34 = 1;
  }

  if (v34)
  {
    if (!v10)
    {
      return 1;
    }

    goto LABEL_31;
  }

  if (!*(v11 + 40))
  {
LABEL_31:
    *(v10 + 76) = 0;
    *(v10 + 64) = 0;
    v39 = *(v10 + 32);
    v40 = *(v10 + 48);
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 32) = 0;
    v43 = v39;
    *&v44 = v40;
    re::AssetHandle::~AssetHandle(&v43);
    goto LABEL_32;
  }

  v36 = vsubq_f32(a5[1], *a5);
  v36.i32[3] = 0;
  v37 = vmaxnmq_f32(v36, 0);
  v38 = vmulq_f32(v37, v37);
  v38.f32[0] = sqrtf(v38.f32[2] + vaddv_f32(*v38.f32));
  *(v10 + 72) = fminf(fminf(v37.f32[0], v37.f32[2]), v37.f32[1]) / fmaxf((v38.f32[0] * 0.5) + (v38.f32[0] * 0.5), 0.0001);
  *(v10 + 64) = a3;
  re::AssetHandle::operator=(v10 + 32, (v11 + 32));
LABEL_32:
  *(v10 + 56) = v33;
  re::ecs2::Component::markDirty(v10);
  return 1;
}

float32x4_t *anonymous namespace::getScaledWorldAABB(float32x4_t *this, unint64_t **a2, re::TransformService *a3, float a4)
{
  v7 = re::AssetHandle::loadedAsset<re::MeshAsset>((a2 + 4));
  v19[0] = xmmword_1E3047670;
  v19[1] = xmmword_1E3047680;
  v19[2] = xmmword_1E30476A0;
  v19[3] = xmmword_1E30474D0;
  re::MeshAsset::aabbFromMesh(v7, v19, &v20);
  re::TransformService::worldMatrix(a3, a2[2], 0, v19);
  v8 = vcgtq_f32(v20, v21);
  v8.i32[3] = v8.i32[2];
  v9 = vmaxvq_u32(v8);
  v10.i64[0] = 0x3F0000003F000000;
  v10.i64[1] = 0x3F0000003F000000;
  v11 = vmulq_f32(vaddq_f32(v20, v21), v10);
  v12 = v9 < 0;
  if (v9 >= 0)
  {
    v13 = v11.i64[1];
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = v11.i64[0];
  }

  v15.i64[0] = v14;
  v15.i64[1] = v13;
  v18[0] = vaddq_f32(vmulq_n_f32(vsubq_f32(v20, v15), a4), v15);
  v18[1] = vaddq_f32(vmulq_n_f32(vsubq_f32(v21, v15), a4), v15);
  return re::AABB::transform(v18, v19, this);
}

void re::ecs2::ShadowClusterSystem::recursivelyCluster(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a3[30];
  v60 = v7;
  if (v7)
  {
    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    re::DynamicArray<re::RigBasicConstraint>::setCapacity(a1, 0);
    ++*(a1 + 24);
    (*(**a5 + 8))(&v63);
    if (v63)
    {
      v10 = *(&v63 + 1);
    }

    else
    {
      v10 = 0;
    }

    v11 = re::ecs2::EntityComponentCollection::get((a3 + 6), re::ecs2::ComponentImpl<re::ecs2::GroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (a3[43])
    {
      v12 = v11;
      v13 = 0;
      v14 = 0;
      do
      {
        v15 = re::ecs2::EntityComponentCollection::operator[]((a3 + 40), v13);
        v16 = *v15;
        if (!re::ecs2::EntityComponentCollection::get((*v15 + 48), re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType))
        {
          (*(**a5 + 8))(&v63);
          v17 = v63 ? *(&v63 + 1) : 0;
          if (v10 == v17)
          {
            v18 = re::ecs2::EntityComponentCollection::get((v16 + 48), re::ecs2::ComponentImpl<re::ecs2::GroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
            if (!v12 || !v18 || *(v12 + 40) == *(v18 + 40))
            {
              re::ecs2::ShadowClusterSystem::recursivelyCluster(&v63, a2, v16, a4, a5, a6);
              if (v64)
              {
                v19 = 0;
                v20 = 1;
                do
                {
                  re::DynamicArray<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true>>::add(a1, v65 + 80 * v19);
                  v19 = v20;
                  v40 = v64 > v20++;
                }

                while (v40);
              }

              re::DynamicArray<re::RigBasicConstraint>::deinit(&v63);
            }
          }
        }

        v13 = ++v14;
      }

      while (a3[43] > v14);
    }

    (*(**(a2 + 248) + 32))(&v57);
    v21 = *(&v57 + 1);
    re::ecs2::ShadowClusterSystem::mergeClusters(&v63, a1, a1, *&v57);
    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(a1, &v63);
    re::DynamicArray<re::RigBasicConstraint>::deinit(&v63);
    if (*(v7 + 76))
    {
      v22 = (v7 + 64);
      if (*(v7 + 64))
      {
        v23 = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(a6, (v7 + 64));
        if (!v23)
        {
          v24 = *v22;
          v75 = 0;
          v72.i64[1] = 0;
          v73 = 0;
          v74 = 0;
          v25 = re::DynamicArray<re::AABB>::setCapacity(&v72, 0);
          ++v74;
          v71 = 0;
          v69[1] = 0;
          v69[2] = 0;
          v70 = 0;
          re::DynamicArray<float *>::setCapacity(v69, 0);
          ++v70;
          v26 = *(a2 + 248);
          if (v26)
          {
            (*(*v26 + 32))(&v63);
            v53 = *(&v63 + 1);
            re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(&v66 + 1);
            re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v63 + 1);
            v27 = *(a4 + 8);
            if (v27)
            {
              v28 = *a4;
              v29 = 8 * v27;
              do
              {
                v30 = *v28;
                v62 = v30;
                if (*(v30 + 64) == v24)
                {
                  v31 = *(*(v30 + 16) + 192);
                  if (v31)
                  {
                    v32 = *(v31 + 40);
                    if (v32)
                    {
                      v33 = atomic_load((v32 + 896));
                      if (v33 == 2)
                      {
                        v34 = *(a2 + 288);
                        v35 = re::AssetHandle::loadedAsset<re::MeshAsset>((v31 + 32));
                        v63 = xmmword_1E3047670;
                        v64 = xmmword_1E3047680;
                        v65 = xmmword_1E30476A0;
                        v66 = xmmword_1E30474D0;
                        re::MeshAsset::aabbFromMesh(v35, &v63, &v77);
                        re::TransformService::worldMatrix(v34, *(v31 + 16), 0, &v63);
                        v36 = vcgtq_f32(v77, v78);
                        v36.i32[3] = v36.i32[2];
                        v37 = vmaxvq_u32(v36);
                        v38.i64[0] = 0x3F0000003F000000;
                        v38.i64[1] = 0x3F0000003F000000;
                        v39 = vmulq_f32(vaddq_f32(v77, v78), v38);
                        v40 = v37 < 0;
                        if (v37 >= 0)
                        {
                          v41 = v39.i64[1];
                        }

                        else
                        {
                          v41 = 0;
                        }

                        if (v40)
                        {
                          v42 = 0;
                        }

                        else
                        {
                          v42 = v39.i64[0];
                        }

                        v43.i64[0] = v42;
                        v43.i64[1] = v41;
                        v76[0] = vaddq_f32(vmulq_n_f32(vsubq_f32(v77, v43), v53), v43);
                        v76[1] = vaddq_f32(vmulq_n_f32(vsubq_f32(v78, v43), v53), v43);
                        re::AABB::transform(v76, &v63, v61);
                        re::DynamicArray<re::AABB>::add(&v72, v61);
                        re::DynamicArray<re::RigDataValue *>::add(v69, &v62);
                      }
                    }
                  }
                }

                ++v28;
                v29 -= 8;
              }

              while (v29);
            }
          }

          re::DynamicArray<re::AABB>::DynamicArray(&v63, &v72);
          re::DynamicArray<char const*>::DynamicArray(&v65 + 8, v69);
          if (v69[0] && v71)
          {
            (*(*v69[0] + 40))();
          }

          if (v72.i64[0] && v75)
          {
            (*(*v72.i64[0] + 40))(v72.i64[0]);
          }

          re::DynamicArray<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true>>::add(a1, &v63);
          if (*(&v65 + 1))
          {
            if (v68)
            {
              (*(**(&v65 + 1) + 40))();
            }

            v68 = 0;
            v66 = 0uLL;
            *(&v65 + 1) = 0;
            ++v67;
          }

          if (v63)
          {
            if (v65)
            {
              (*(*v63 + 40))();
            }
          }

          re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(a6, v22);
        }
      }

      else
      {
        v44 = a3[24];
        if (v44 && (v45 = *(v44 + 40)) != 0 && (v46 = atomic_load((v45 + 896)), v46 != 3))
        {
          re::AssetHandle::operator=(v7 + 32, (v44 + 32));
          *(v7 + 56) = v10;
          re::ecs2::Component::markDirty(v7);
          v49 = *(v44 + 40);
          if (v49)
          {
            v50 = atomic_load((v49 + 896));
            if (v50 == 2)
            {
              *&v65 = 0;
              *&v64 = 0;
              v63 = 0uLL;
              DWORD2(v64) = 0;
              re::DynamicArray<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true>>::resize(&v63);
              v51 = v64;
              v52 = v65;
              re::DynamicArray<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true>>::operator[](v64);
              re::DynamicArray<re::AABB>::add(v52, &v72);
              re::DynamicArray<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true>>::operator[](v51);
              re::DynamicArray<re::RigDataValue *>::add((v52 + 40), &v60);
              re::ecs2::ShadowClusterSystem::mergeClusters(&v72, &v63, a1, 0.0);
              re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(a1, &v72);
              re::DynamicArray<re::RigBasicConstraint>::deinit(&v72);
              re::DynamicArray<re::RigBasicConstraint>::deinit(&v63);
            }
          }
        }

        else
        {
          *(v7 + 64) = 0;
          v47 = *(v7 + 32);
          v48 = *(v7 + 48);
          *(v7 + 40) = 0;
          *(v7 + 48) = 0;
          *(v7 + 32) = 0;
          v63 = v47;
          *&v64 = v48;
          re::AssetHandle::~AssetHandle(&v63);
          *(v7 + 56) = v10;
          re::ecs2::Component::markDirty(v7);
        }
      }
    }

    re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(v59);
    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v58);
  }

  else
  {
    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    *(a1 + 24) = 0;
  }
}

__n128 re::DynamicArray<re::AABB>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::AABB>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = (*(this + 4) + 32 * v4);
  result = *a2;
  v7 = *(a2 + 16);
  *v5 = *a2;
  v5[1] = v7;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void re::ecs2::ShadowClusterSystem::mergeClusters(uint64_t a1, uint64_t *a2, uint64_t *a3, float a4)
{
  v123 = *MEMORY[0x1E69E9840];
  if (!a2[2])
  {
    a2 = a3;
    goto LABEL_8;
  }

  v6 = a2;
  if (!a3[2])
  {
LABEL_8:

    re::DynamicArray<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true>>::DynamicArray(a1, a2);
    return;
  }

  re::StackScratchAllocator::StackScratchAllocator(v106);
  v104 = 0;
  v102 = 0u;
  v103 = 0u;
  v105 = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(&v102, v106, 3);
  v101 = 0;
  v98 = 0;
  v99 = 0;
  v100 = 0;
  v97 = v106;
  re::DynamicArray<re::Pair<re::AABB,unsigned int,true>>::setCapacity(&v97, 0);
  ++v100;
  v96 = 0;
  v93 = 0;
  v94 = 0;
  v95 = 0;
  v92 = v106;
  re::DynamicArray<re::Pair<re::AABB,unsigned int,true>>::setCapacity(&v92, 0);
  ++v95;
  v8 = v6[2];
  if (v8)
  {
    v9 = 0;
    v10 = 80 * v8;
    v11 = (v6[4] + 16);
    do
    {
      v12 = *v11;
      v11 += 10;
      v9 += v12;
      v10 -= 80;
    }

    while (v10);
  }

  else
  {
    v9 = 0;
  }

  v13 = a3[2];
  if (v13)
  {
    v14 = 0;
    v15 = 80 * v13;
    v16 = (a3[4] + 16);
    do
    {
      v17 = *v16;
      v16 += 10;
      v14 += v17;
      v15 -= 80;
    }

    while (v15);
  }

  else
  {
    v14 = 0;
  }

  if (v98 < v9)
  {
    re::DynamicArray<re::Pair<re::AABB,unsigned int,true>>::setCapacity(&v97, v9);
  }

  if (v93 < v14)
  {
    re::DynamicArray<re::Pair<re::AABB,unsigned int,true>>::setCapacity(&v92, v14);
  }

  v18 = v6[2];
  if (v18)
  {
    v19 = v6[4];
    v20 = v19 + 80 * v18;
    v78 = vdupq_n_s32(0x3727C5ACu);
    v81 = vdupq_n_s32(0xB727C5AC);
    do
    {
      v21 = re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(&v102, v19);
      if (!v21)
      {
        v118.i64[0] = v19;
        LODWORD(v85) = HIDWORD(v103);
        v21 = re::HashTable<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> const*,unsigned int,re::Hash<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> const*>,re::EqualTo<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> const*>,true,false>::add(&v102, &v118, &v85);
      }

      v22 = *(v19 + 16);
      v24 = v78;
      v23 = v81;
      if (v22)
      {
        v25 = *v21;
        v26 = *(v19 + 32);
        v27 = &v26[2 * v22];
        do
        {
          v28 = *v26;
          v29 = v26[1];
          v26 += 2;
          v118 = vaddq_f32(v28, v23);
          v119 = vaddq_f32(v29, v24);
          LODWORD(v120) = v25;
          re::DynamicArray<re::Pair<re::AABB,unsigned int,true>>::add(&v97, &v118);
          v24 = v78;
          v23 = v81;
        }

        while (v26 != v27);
      }

      v19 += 80;
    }

    while (v19 != v20);
  }

  v30 = a3[2];
  if (v30)
  {
    v31 = a3[4];
    v32 = v31 + 80 * v30;
    v79 = vdupq_n_s32(0x3727C5ACu);
    v82 = vdupq_n_s32(0xB727C5AC);
    do
    {
      v33 = re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(&v102, v31);
      if (!v33)
      {
        v118.i64[0] = v31;
        LODWORD(v85) = HIDWORD(v103);
        v33 = re::HashTable<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> const*,unsigned int,re::Hash<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> const*>,re::EqualTo<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> const*>,true,false>::add(&v102, &v118, &v85);
      }

      v34 = *(v31 + 16);
      v36 = v79;
      v35 = v82;
      if (v34)
      {
        v37 = *v33;
        v38 = *(v31 + 32);
        v39 = &v38[2 * v34];
        do
        {
          v40 = *v38;
          v41 = v38[1];
          v38 += 2;
          v118 = vaddq_f32(v40, v35);
          v119 = vaddq_f32(v41, v36);
          LODWORD(v120) = v37;
          re::DynamicArray<re::Pair<re::AABB,unsigned int,true>>::add(&v92, &v118);
          v36 = v79;
          v35 = v82;
        }

        while (v38 != v39);
      }

      v31 += 80;
    }

    while (v31 != v32);
  }

  v42 = HIDWORD(v103);
  v90 = HIDWORD(v103);
  v91 = 0;
  v89 = v106;
  if (HIDWORD(v103))
  {
    v43 = (*(v106[0] + 32))(v106, 8 * HIDWORD(v103), 4);
    v91 = v43;
    if (!v43)
    {
      goto LABEL_104;
    }

    v45 = v43;
    v46 = v42 - 1;
    if (v42 != 1)
    {
      v45 = v43;
      do
      {
        *v45++ = 0x100000000;
        --v46;
      }

      while (v46);
    }

    *v45 = 0x100000000;
    v47 = v90;
    if (v90)
    {
      v48 = 1;
      do
      {
        *v43 = v48 - 1;
        v43 += 2;
      }

      while (v47 > v48++);
    }
  }

  v108[0] = &unk_1F5CECFE8;
  v108[1] = &v89;
  v108[2] = LODWORD(a4);
  v109 = v108;
  v83 = v101;
  v80 = v96;
  re::intersectAABBArrays(v101);
  if (v109 == v108)
  {
    (*(*v109 + 32))(v109);
  }

  else if (v109)
  {
    (*(*v109 + 40))();
  }

  v50 = *v6;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = v50;
  re::DynamicArray<re::RigBasicConstraint>::setCapacity(a1, 0);
  ++*(a1 + 24);
  v87 = 0;
  v85 = 0u;
  v86 = 0u;
  v88 = 0x7FFFFFFFLL;
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(&v85, v106, 3);
  if (v42)
  {
    for (i = 0; i != v42; ++i)
    {
      if (i == re::UnionFind::findSet(&v89, i))
      {
        v52 = *(a1 + 16);
        v118 = 0uLL;
        v119.i32[2] = 0;
        v119.i64[0] = 0;
        *(&v122 + 1) = 0;
        v120 = 0u;
        v121 = 0u;
        LODWORD(v122) = 0;
        re::DynamicArray<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true>>::add(a1, &v118);
        if (*(&v120 + 1) && *(&v122 + 1))
        {
          (*(**(&v120 + 1) + 40))();
        }

        if (v118.i64[0] && v120)
        {
          (*(*v118.i64[0] + 40))();
        }

        v53 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (i ^ (i >> 30))) ^ ((0xBF58476D1CE4E5B9 * (i ^ (i >> 30))) >> 27));
        v54 = v53 ^ (v53 >> 31);
        if (v85)
        {
          v55 = v54 % DWORD2(v86);
          v56 = *(*(&v85 + 1) + 4 * v55);
          if (v56 != 0x7FFFFFFF)
          {
            while (i != *(v86 + 24 * v56 + 4))
            {
              LODWORD(v56) = *(v86 + 24 * v56) & 0x7FFFFFFF;
              if (v56 == 0x7FFFFFFF)
              {
                goto LABEL_64;
              }
            }

            continue;
          }
        }

        else
        {
          LODWORD(v55) = 0;
        }

LABEL_64:
        v57 = re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(&v85, v55, v54);
        *(v57 + 4) = i;
        *(v57 + 8) = v52;
        ++HIDWORD(v88);
      }
    }
  }

  v58 = v104;
  if (v104)
  {
    v59 = 0;
    v60 = v103;
    while (1)
    {
      v61 = *v60;
      v60 += 8;
      if (v61 < 0)
      {
        break;
      }

      if (v104 == ++v59)
      {
        LODWORD(v59) = v104;
        break;
      }
    }
  }

  else
  {
    LODWORD(v59) = 0;
  }

  if (v59 != v104)
  {
    v62 = v103;
    while (1)
    {
      v63 = v62 + 32 * v59;
      v118.i32[0] = re::UnionFind::findSet(&v89, *(v63 + 16));
      v64 = *re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::operator[](&v85, &v118);
      v67 = *(v63 + 8);
      v66 = (v63 + 8);
      v65 = v67;
      v68 = v67[2];
      if (!v68)
      {
        goto LABEL_80;
      }

      v69 = v65[4];
      v70 = 32 * v68;
      do
      {
        v71 = v69[1];
        v84[0] = *v69;
        v84[1] = v71;
        v72 = *(a1 + 16);
        if (v72 <= v64)
        {
          v107 = 0;
          v121 = 0u;
          v122 = 0u;
          v119 = 0u;
          v120 = 0u;
          v118 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v110 = 136315906;
          v111 = "operator[]";
          v112 = 1024;
          v113 = 789;
          v114 = 2048;
          v115 = v64;
          v116 = 2048;
          v117 = v72;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_103;
        }

        re::DynamicArray<re::AABB>::add((*(a1 + 32) + 80 * v64), v84);
        v69 += 2;
        v70 -= 32;
      }

      while (v70);
      v65 = *v66;
LABEL_80:
      v73 = v65[7];
      if (v73)
      {
        break;
      }

LABEL_84:
      if (v58 <= v59 + 1)
      {
        v76 = v59 + 1;
      }

      else
      {
        v76 = v58;
      }

      while (v76 - 1 != v59)
      {
        LODWORD(v59) = v59 + 1;
        if ((*(v62 + 32 * v59) & 0x80000000) != 0)
        {
          goto LABEL_91;
        }
      }

      LODWORD(v59) = v76;
LABEL_91:
      if (v59 == v58)
      {
        goto LABEL_92;
      }
    }

    v74 = v65[9];
    v75 = 8 * v73;
    while (1)
    {
      v107 = *v74;
      v66 = *(a1 + 16);
      if (v66 <= v64)
      {
        break;
      }

      re::DynamicArray<re::RigDataValue *>::add((*(a1 + 32) + 80 * v64 + 40), &v107);
      ++v74;
      v75 -= 8;
      if (!v75)
      {
        goto LABEL_84;
      }
    }

LABEL_103:
    *&v84[0] = 0;
    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    v118 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v110 = 136315906;
    v111 = "operator[]";
    v112 = 1024;
    v113 = 789;
    v114 = 2048;
    v115 = v64;
    v116 = 2048;
    v117 = v66;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_104:
    re::internal::assertLog(4, v44, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash();
    __break(1u);
  }

LABEL_92:
  v77.n128_f64[0] = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(&v85);
  if (v89 && v90)
  {
    (*(*v89 + 40))(v77.n128_f64[0]);
  }

  if (v92 && v80)
  {
    (*(*v92 + 40))(v77);
  }

  if (v97)
  {
    if (v83)
    {
      (*(*v97 + 40))(v77);
    }
  }

  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(&v102);
  re::StackScratchAllocator::~StackScratchAllocator(v106);
}

uint64_t re::HashTable<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> const*,unsigned int,re::Hash<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> const*>,re::EqualTo<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> const*>,true,false>::add(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(&v10, a1, *a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31));
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 32 * HIDWORD(v11) + 16;
  }

  v7 = re::HashTable<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> const*,unsigned int,re::Hash<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> const*>,re::EqualTo<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> const*>,true,false>::allocEntry(a1, v11, v10);
  v8 = *a2;
  *(v7 + 16) = *a3;
  result = v7 + 16;
  *(result - 8) = v8;
  ++*(a1 + 40);
  return result;
}

__n128 re::DynamicArray<re::Pair<re::AABB,unsigned int,true>>::add(uint64_t a1, uint64_t a2)
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

        re::DynamicArray<re::Pair<re::AABB,unsigned int,true>>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::Pair<re::AABB,unsigned int,true>>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = *(a1 + 32) + 48 * v5;
  result = *a2;
  v13 = *(a2 + 32);
  *(v11 + 16) = *(a2 + 16);
  *(v11 + 32) = v13;
  *v11 = result;
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true>>::add(_anonymous_namespace_ *result, uint64_t a2)
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

        result = re::DynamicArray<re::RigBasicConstraint>::setCapacity(result, v10);
      }

      else
      {
        result = re::DynamicArray<re::RigBasicConstraint>::setCapacity(v3, v6);
        ++*(v3 + 6);
      }
    }

    v5 = *(v3 + 2);
  }

  v11 = *(v3 + 4) + 80 * v5;
  *(v11 + 32) = 0;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  *v11 = 0;
  *(v11 + 24) = 0;
  v12 = *(a2 + 8);
  *v11 = *a2;
  *(v11 + 8) = v12;
  *a2 = 0;
  *(a2 + 8) = 0;
  v13 = *(v11 + 16);
  *(v11 + 16) = *(a2 + 16);
  *(a2 + 16) = v13;
  v14 = *(v11 + 32);
  *(v11 + 32) = *(a2 + 32);
  *(a2 + 32) = v14;
  ++*(a2 + 24);
  ++*(v11 + 24);
  *(v11 + 72) = 0;
  *(v11 + 48) = 0;
  *(v11 + 56) = 0;
  *(v11 + 40) = 0;
  *(v11 + 64) = 0;
  v15 = *(a2 + 48);
  *(v11 + 40) = *(a2 + 40);
  *(v11 + 48) = v15;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v16 = *(v11 + 56);
  *(v11 + 56) = *(a2 + 56);
  *(a2 + 56) = v16;
  v17 = *(v11 + 72);
  *(v11 + 72) = *(a2 + 72);
  *(a2 + 72) = v17;
  ++*(a2 + 64);
  ++*(v11 + 64);
  ++*(v3 + 2);
  ++*(v3 + 6);
  return result;
}

uint64_t re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::operator[](uint64_t a1, _DWORD *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return *(a1 + 16) + 24 * v6 + 8;
}

uint64_t re::UnionFind::findSet(re::UnionFind *this, uint64_t a2)
{
  v2 = a2;
  if (*(this + 1) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_7;
  }

  v3 = a2;
  v5 = *(*(this + 2) + 8 * a2);
  if (v5 != v3)
  {
    Set = re::UnionFind::findSet(this, v5);
    if (*(this + 1) > v2)
    {
      v3 = Set;
      *(*(this + 2) + 8 * v2) = Set;
      return v3;
    }

LABEL_7:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return v3;
}

uint64_t re::DynamicArray<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true>>::operator[](uint64_t result)
{
  if (!result)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return result;
}

void *re::DynamicArray<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true>>::resize(void *result)
{
  v1 = result[2];
  if (v1 != 1)
  {
    v2 = result;
    if (v1)
    {
      v4 = 1;
      v5 = 80;
      do
      {
        v6 = v2[4] + v5;
        re::DynamicArray<unsigned long>::deinit(v6 + 40);
        result = re::DynamicArray<unsigned long>::deinit(v6);
        ++v4;
        v5 += 80;
      }

      while (v4 < v2[2]);
    }

    else if (result[1] || (result = re::DynamicArray<re::RigBasicConstraint>::setCapacity(result, 1uLL), !v2[2]))
    {
      v3 = v2[4];
      *v3 = 0;
      *(v3 + 8) = 0;
      *(v3 + 24) = 0;
      *(v3 + 16) = 0;
      *(v3 + 72) = 0;
      *(v3 + 32) = 0u;
      *(v3 + 48) = 0u;
      *(v3 + 64) = 0;
    }

    v2[2] = 1;
    ++*(v2 + 6);
  }

  return result;
}

void re::ecs2::ShadowClusterSystem::~ShadowClusterSystem(re::ecs2::ShadowClusterSystem *this)
{
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 43);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 37);

  re::ecs2::System::~System(this);
}

{
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 43);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 37);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::CallableMemFn<re::ecs2::ShadowClusterSystem,REEventHandlerResult (re::ecs2::ShadowClusterSystem::*)(re::ecs2::Scene *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Scene *,RESceneEntityDidReparentEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::ShadowClusterSystem,REEventHandlerResult (re::ecs2::ShadowClusterSystem::*)(re::ecs2::Scene *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Scene *,RESceneEntityDidReparentEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CECED0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::ShadowClusterSystem,REEventHandlerResult (re::ecs2::ShadowClusterSystem::*)(re::ecs2::Scene *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Scene *,RESceneEntityDidReparentEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CECED0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t (***re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneEntityDidReparentEvent const&)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t re::internal::CallableMemFn<re::ecs2::ShadowClusterSystem,REEventHandlerResult (re::ecs2::ShadowClusterSystem::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::ShadowClusterSystem,REEventHandlerResult (re::ecs2::ShadowClusterSystem::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CECF38;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::ShadowClusterSystem,REEventHandlerResult (re::ecs2::ShadowClusterSystem::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CECF38;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

double re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 8;
      do
      {
        v5 = a1[2];
        v6 = *(v5 + v4);
        if (v6 < 0)
        {
          *(v5 + v4) = v6 & 0x7FFFFFFF;
        }

        v4 += 32;
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

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs231ClusterShadowSeparatorComponentELNS_17RealityKitReleaseE2EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 2;
  *(a2 + 8) = 0;
  return result;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs228ClusterShadowMarkerComponentELNS_17RealityKitReleaseE2EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 2;
  *(a2 + 8) = 0;
  return result;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs222ShadowClusterComponentELNS_17RealityKitReleaseE3EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 3;
  *(a2 + 8) = 0;
  return result;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs226ShadowClusterRootComponentELNS_17RealityKitReleaseE10EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 10;
  *(a2 + 8) = 0;
  return result;
}

uint64_t re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneEntityDidReparentEvent const&)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneEntityDidReparentEvent const&)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = (*(*v4 + 40))(v4);
      v6 = a1;
      if (v5 >= 0x19)
      {
        v7 = v5;
        v8 = *(a1 + 24);
        if (v8)
        {
          v6 = (*(*v8 + 32))(v8, v7, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      *(a1 + 32) = v6;
      (*(**(a2 + 32) + 24))(*(a2 + 32));
    }
  }

  return a1;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Scene,RESceneEntityDidReparentEvent>(re::ecs2::Scene *,re::Function<REEventHandlerResult ()(re::ecs2::Scene *,RESceneEntityDidReparentEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CECF90;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneEntityDidReparentEvent const&)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Scene,RESceneEntityDidReparentEvent>(re::ecs2::Scene *,re::Function<REEventHandlerResult ()(re::ecs2::Scene *,RESceneEntityDidReparentEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CECF90;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneEntityDidReparentEvent const&)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Scene,RESceneEntityDidReparentEvent>(re::ecs2::Scene *,re::Function<REEventHandlerResult ()(re::ecs2::Scene *,RESceneEntityDidReparentEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v5 = *a2;
  return (*(**(a1 + 40) + 16))(*(a1 + 40), &v5, v3);
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Scene,RESceneEntityDidReparentEvent>(re::ecs2::Scene *,re::Function<REEventHandlerResult ()(re::ecs2::Scene *,RESceneEntityDidReparentEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CECF90;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneEntityDidReparentEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Scene,RESceneEntityDidReparentEvent>(re::ecs2::Scene *,re::Function<REEventHandlerResult ()(re::ecs2::Scene *,RESceneEntityDidReparentEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CECF90;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneEntityDidReparentEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::DynamicArray<re::AABB>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v5)
      {
        if (!a2)
        {
          v7 = 0;
          if (!v3)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (a2 >> 59)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 32, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 32 * a2;
          result = (*(*result + 32))(result, 32 * a2, 16);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], 32 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::AABB>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

uint64_t re::DynamicArray<re::AABB>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::AABB>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::AABB>::copy(a1, a2);
  }

  return a1;
}

void **re::DynamicArray<re::AABB>::copy(void **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4 >= result[2])
  {
    re::DynamicArray<re::AABB>::setCapacity(result, *(a2 + 16));
    v5 = v3[2];
    if (v5)
    {
      memmove(v3[4], *(a2 + 32), 32 * v5);
      v5 = v3[2];
    }

    result = memcpy(v3[4] + 32 * v5, (*(a2 + 32) + 32 * v5), 32 * (v4 - v5));
  }

  else if (v4)
  {
    result = memmove(result[4], *(a2 + 32), 32 * v4);
  }

  v3[2] = v4;
  return result;
}

void *re::DynamicArray<re::AABB>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::AABB>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::AABB>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

uint64_t re::DynamicArray<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true>>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::RigBasicConstraint>::setCapacity(a1, v5);
    ++*(a1 + 24);
    v6 = a2[2];
    if (v6 >= *(a1 + 16))
    {
      re::DynamicArray<re::RigBasicConstraint>::setCapacity(a1, a2[2]);
      std::__copy_impl::operator()[abi:nn200100]<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> *,re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> *,re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> *>(a2[4], a2[4] + 80 * *(a1 + 16), *(a1 + 32));
      v10 = *(a1 + 16);
      if (v10 != v6)
      {
        v11 = 5 * v10;
        v12 = (a2[4] + 16 * v11);
        v13 = *(a1 + 32) + 16 * v11;
        v14 = 80 * v6 - 16 * v11;
        do
        {
          re::DynamicArray<re::AABB>::DynamicArray(v13, v12);
          re::DynamicArray<char const*>::DynamicArray(v13 + 40, v12 + 5);
          v12 += 10;
          v13 += 80;
          v14 -= 80;
        }

        while (v14);
      }
    }

    else
    {
      std::__copy_impl::operator()[abi:nn200100]<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> *,re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> *,re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> *>(a2[4], a2[4] + 80 * v6, *(a1 + 32));
      v7 = *(a1 + 16);
      if (v6 != v7)
      {
        v8 = *(a1 + 32) + 80 * v6;
        v9 = 80 * v7 - 80 * v6;
        do
        {
          re::DynamicArray<unsigned long>::deinit(v8 + 40);
          re::DynamicArray<unsigned long>::deinit(v8);
          v8 += 80;
          v9 -= 80;
        }

        while (v9);
      }
    }

    *(a1 + 16) = v6;
  }

  return a1;
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> *,re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> *,re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> *>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = a3 + v6;
      v8 = v5 + v6;
      result = re::DynamicArray<re::AABB>::operator=(a3 + v6, (v5 + v6));
      if (v5 != a3)
      {
        v9 = *(v8 + 40);
        if (*(v7 + 40))
        {
          if (v9)
          {
            result = re::DynamicArray<char const*>::copy((v7 + 40), v8 + 40);
            v10 = a3 + v6;
          }

          else
          {
            v10 = a3 + v6;
            *(a3 + v6 + 56) = 0;
          }

          ++*(v10 + 64);
        }

        else if (v9)
        {
          v11 = *(v5 + v6 + 56);
          *(v7 + 40) = v9;
          re::DynamicArray<float *>::setCapacity((v7 + 40), v11);
          ++*(a3 + v6 + 64);
          result = re::DynamicArray<char const*>::copy((v7 + 40), v8 + 40);
        }
      }

      v6 += 80;
    }

    while (v5 + v6 != a2);
  }

  return result;
}

uint64_t re::DynamicArray<re::AABB>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::AABB>::copy(a1, a2);
      }

      else
      {
        *(a1 + 16) = 0;
      }

      ++*(a1 + 24);
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::AABB>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::AABB>::copy(a1, a2);
    }
  }

  return a1;
}

void *re::DynamicArray<re::Pair<re::AABB,unsigned int,true>>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v5)
      {
        if (!a2)
        {
          v7 = 0;
          if (!v3)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (is_mul_ok(a2, 0x30uLL))
        {
          v2 = 48 * a2;
          result = (*(*result + 32))(result, 48 * a2, 16);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], 48 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 48, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::Pair<re::AABB,unsigned int,true>>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

uint64_t re::HashTable<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> const*,unsigned int,re::Hash<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> const*>,re::EqualTo<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> const*>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
            v17 = v13 + 16;
            do
            {
              if ((*(v17 - 16) & 0x80000000) != 0)
              {
                v18 = re::HashTable<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> const*,unsigned int,re::Hash<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> const*>,re::EqualTo<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> const*>,true,false>::allocEntry(a1, *(v17 + 8) % *(a1 + 24));
                *(v18 + 8) = *(v17 - 8);
                *(v18 + 16) = *v17;
              }

              v17 += 32;
              --v16;
            }

            while (v16);
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

__n128 std::__function::__func<re::ecs2::ShadowClusterSystem::mergeClusters(re::DynamicArray<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true>> const&,re::DynamicArray<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true>> const&,float)::$_0,std::allocator<re::ecs2::ShadowClusterSystem::mergeClusters(re::DynamicArray<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true>> const&,re::DynamicArray<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true>> const&,float)::$_0>,void ()(re::Pair<re::AABB,unsigned int,true> const&,re::Pair<re::AABB,unsigned int,true> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CECFE8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t std::__function::__func<re::ecs2::ShadowClusterSystem::mergeClusters(re::DynamicArray<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true>> const&,re::DynamicArray<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true>> const&,float)::$_0,std::allocator<re::ecs2::ShadowClusterSystem::mergeClusters(re::DynamicArray<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true>> const&,re::DynamicArray<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true>> const&,float)::$_0>,void ()(re::Pair<re::AABB,unsigned int,true> const&,re::Pair<re::AABB,unsigned int,true> const&)>::operator()(uint64_t result, float32x4_t *a2, float32x4_t *a3)
{
  v3 = vsubq_f32(a2[1], *a2);
  v3.i32[3] = 0;
  v4 = vsubq_f32(a3[1], *a3);
  v4.i32[3] = 0;
  v5 = vmaxnmq_f32(v3, 0);
  v6 = vmaxnmq_f32(v4, 0);
  *v5.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v5, v5, 8uLL), *&vextq_s8(v6, v6, 8uLL)), vadd_f32(vzip1_s32(*v5.i8, *v6.i8), vzip2_s32(*v5.i8, *v6.i8)));
  v7 = vdiv_f32(*v5.i8, vdup_lane_s32(*v5.i8, 1)).f32[0];
  if (v7 > 1.0)
  {
    v7 = 1.0 / v7;
  }

  if (v7 >= *(result + 16))
  {
    v8 = *(result + 8);
    v9 = a3[2].u32[0];
    Set = re::UnionFind::findSet(v8, a2[2].u32[0]);
    result = re::UnionFind::findSet(v8, v9);
    if (Set != result)
    {
      v11 = *(v8 + 1);
      if (v11 <= Set)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      else if (v11 > result)
      {
        v12 = *(v8 + 2);
        v13 = *(v12 + 8 * Set + 4);
        v14 = *(v12 + 8 * result + 4);
        if (v13 >= v14)
        {
          v15 = result;
        }

        else
        {
          v15 = Set;
        }

        if (v11 > v15)
        {
          if (v13 >= v14)
          {
            v16 = Set;
          }

          else
          {
            v16 = result;
          }

          v17 = (v12 + 8 * v15);
          *v17 = v16;
          if (v11 > v16)
          {
            *(v12 + 8 * v16 + 4) += v17[1];
            return result;
          }

LABEL_20:
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

LABEL_19:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_20;
      }

      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_19;
    }
  }

  return result;
}

uint64_t std::__function::__func<re::ecs2::ShadowClusterSystem::mergeClusters(re::DynamicArray<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true>> const&,re::DynamicArray<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true>> const&,float)::$_0,std::allocator<re::ecs2::ShadowClusterSystem::mergeClusters(re::DynamicArray<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true>> const&,re::DynamicArray<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true>> const&,float)::$_0>,void ()(re::Pair<re::AABB,unsigned int,true> const&,re::Pair<re::AABB,unsigned int,true> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *re::ecs2::allocInfo_ClippingBoxComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A5230, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5230))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A5260, "ClippingBoxComponent");
    __cxa_guard_release(&qword_1EE1A5230);
  }

  return &unk_1EE1A5260;
}

void re::ecs2::initInfo_ClippingBoxComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v24[0] = 0xEBF69FF01B370AE8;
  v24[1] = "ClippingBoxComponent";
  if (v24[0])
  {
    if (v24[0])
    {
    }
  }

  *(this + 2) = v25;
  if ((atomic_load_explicit(&_MergedGlobals_212, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&_MergedGlobals_212);
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
      qword_1EE1A5238 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = re::introspect_Vector3F(1);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "m_localBoundsMin";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x2000000001;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1A5240 = v11;
      v12 = re::introspectionAllocator(v11);
      v13 = re::introspect_Vector3F(1);
      v14 = (*(*v12 + 32))(v12, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "m_localBoundsMax";
      *(v14 + 16) = v13;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0x3000000002;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE1A5248 = v14;
      v15 = re::introspectionAllocator(v14);
      v17 = re::introspect_BOOL(1, v16);
      v18 = (*(*v15 + 32))(v15, 72, 8);
      *v18 = 1;
      *(v18 + 8) = "m_clipChildren";
      *(v18 + 16) = v17;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0x4400000004;
      *(v18 + 40) = 0;
      *(v18 + 48) = 0;
      *(v18 + 56) = 0;
      *(v18 + 64) = 0;
      qword_1EE1A5250 = v18;
      v19 = re::introspectionAllocator(v18);
      v21 = re::introspect_float(1, v20);
      v22 = (*(*v19 + 32))(v19, 72, 8);
      *v22 = 1;
      *(v22 + 8) = "m_featherIntervalFraction";
      *(v22 + 16) = v21;
      *(v22 + 24) = 0;
      *(v22 + 32) = 0x4000000005;
      *(v22 + 40) = 0;
      *(v22 + 48) = 0;
      *(v22 + 56) = 0;
      *(v22 + 64) = 0;
      qword_1EE1A5258 = v22;
      __cxa_guard_release(&_MergedGlobals_212);
    }
  }

  *(this + 2) = 0x5000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE1A5238;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ClippingBoxComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ClippingBoxComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ClippingBoxComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ClippingBoxComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs220ClippingBoxComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v23 = v25;
}

void re::internal::defaultConstruct<re::ecs2::ClippingBoxComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CDB160;
  *(v3 + 32) = 0xBF000000BF000000;
  *(v3 + 40) = 3204448256;
  *(v3 + 48) = 0x3F0000003F000000;
  *(v3 + 56) = 1056964608;
  *(v3 + 64) = 0;
  *(v3 + 68) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::ClippingBoxComponent>(ArcSharedObject *a1)
{
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CDB160;
  *(v1 + 32) = 0xBF000000BF000000;
  *(v1 + 40) = 3204448256;
  *(v1 + 48) = 0x3F0000003F000000;
  *(v1 + 56) = 1056964608;
  *(v1 + 64) = 0;
  *(v1 + 68) = 0;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs220ClippingBoxComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 5;
  *(a2 + 8) = 0;
  return result;
}

void *re::ecs2::allocInfo_TintService(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_213, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_213))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A52F8, "TintService");
    __cxa_guard_release(&_MergedGlobals_213);
  }

  return &unk_1EE1A52F8;
}

void re::ecs2::initInfo_TintService(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x1FD9D995C2CE634;
  v6[1] = "TintService";
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
  *(this + 8) = &re::ecs2::initInfo_TintService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::ecs2::introspect_PinAlignmentType(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A5390, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1A5398, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5398))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1A5410, "PinAlignmentType", 1, 1, 1, 1);
      qword_1EE1A5410 = &unk_1F5D0C658;
      qword_1EE1A5450 = &re::ecs2::introspect_PinAlignmentType(BOOL)::enumTable;
      dword_1EE1A5420 = 9;
      __cxa_guard_release(&qword_1EE1A5398);
    }

    if (_MergedGlobals_214)
    {
      break;
    }

    _MergedGlobals_214 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1A5410, a2);
    v43 = 0xEA05251A419B7090;
    v44 = "PinAlignmentType";
    v47 = 0x31CD534126;
    v48 = "uint8_t";
    v4 = v46[0];
    v5 = v46[1];
    if (v47)
    {
      if (v47)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1A5450;
      v47 = v4;
      v48 = v5;
      re::TypeBuilder::beginEnumType(v46, &v43, 1, 1, &v47);
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
            *&v45.var0 = 2 * v11;
            v45.var1 = v10;
            re::TypeBuilder::addEnumConstant(v46, v15, &v45);
            if (*&v45.var0)
            {
              if (*&v45.var0)
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
              *&v45.var0 = 2 * v20;
              v45.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v46, v24, &v45);
              if (*&v45.var0)
              {
                if (*&v45.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v46, v26);
      xmmword_1EE1A5430 = v45;
      if (v43)
      {
        if (v43)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v44);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE1A5390);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Rigid";
      qword_1EE1A53D8 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "PointToPoint";
      qword_1EE1A53E0 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 1) = 2;
      *(v34 + 2) = "DirectionToDirection";
      qword_1EE1A53E8 = v34;
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 1) = 3;
      *(v36 + 2) = "PointToLine";
      qword_1EE1A53F0 = v36;
      v37 = re::introspectionAllocator(v36);
      v38 = (*(*v37 + 32))(v37, 24, 8);
      *v38 = 1;
      *(v38 + 1) = 4;
      *(v38 + 2) = "PointToPlane";
      qword_1EE1A53F8 = v38;
      v39 = re::introspectionAllocator(v38);
      v40 = (*(*v39 + 32))(v39, 24, 8);
      *v40 = 1;
      *(v40 + 1) = 5;
      *(v40 + 2) = "LineToLine";
      qword_1EE1A5400 = v40;
      v41 = re::introspectionAllocator(v40);
      v42 = (*(*v41 + 32))(v41, 24, 8);
      *v42 = 1;
      *(v42 + 8) = 6;
      *(v42 + 16) = "PlaneToPlane";
      qword_1EE1A5408 = v42;
      __cxa_guard_release(&qword_1EE1A5390);
    }
  }
}

void *re::ecs2::allocInfo_PinAlignment(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A53A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A53A8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A5458, "PinAlignment");
    __cxa_guard_release(&qword_1EE1A53A8);
  }

  return &unk_1EE1A5458;
}

void re::ecs2::initInfo_PinAlignment(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v24[0] = 0x3AE3A0B4A362B7DCLL;
  v24[1] = "PinAlignment";
  if (v24[0])
  {
    if (v24[0])
    {
    }
  }

  *(this + 2) = v25;
  if ((atomic_load_explicit(&qword_1EE1A53A0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A53A0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::ecs2::introspect_PinAlignmentType(v6, v7);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "m_type";
      *(v8 + 16) = &qword_1EE1A5410;
      *(v8 + 24) = 0;
      *(v8 + 32) = 1;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1A53B0 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = re::introspect_PoseF(1);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "m_sourcePose";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x1000000002;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1A53B8 = v11;
      v12 = re::introspectionAllocator(v11);
      v13 = re::introspect_PoseF(1);
      v14 = (*(*v12 + 32))(v12, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "m_targetPose";
      *(v14 + 16) = v13;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0x3000000003;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE1A53C0 = v14;
      v15 = re::introspectionAllocator(v14);
      v17 = re::introspect_BOOL(1, v16);
      v18 = (*(*v15 + 32))(v15, 72, 8);
      *v18 = 1;
      *(v18 + 8) = "m_isSameOrientation";
      *(v18 + 16) = v17;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0x5000000004;
      *(v18 + 40) = 0;
      *(v18 + 48) = 0;
      *(v18 + 56) = 0;
      *(v18 + 64) = 0;
      qword_1EE1A53C8 = v18;
      v19 = re::introspectionAllocator(v18);
      v21 = re::IntrospectionInfo<re::DynamicArray<float>>::get(1, v20);
      v22 = (*(*v19 + 32))(v19, 72, 8);
      *v22 = 1;
      *(v22 + 8) = "m_values";
      *(v22 + 16) = v21;
      *(v22 + 24) = 0;
      *(v22 + 32) = 0x5800000005;
      *(v22 + 40) = 0;
      *(v22 + 48) = 0;
      *(v22 + 56) = 0;
      *(v22 + 64) = 0;
      qword_1EE1A53D0 = v22;
      __cxa_guard_release(&qword_1EE1A53A0);
    }
  }

  *(this + 2) = 0x8000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE1A53B0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PinAlignment>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PinAlignment>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PinAlignment>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PinAlignment>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v23 = v25;
}

double re::internal::defaultConstruct<re::ecs2::PinAlignment>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0x3F80000000000000;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0x3F80000000000000;
  *(a3 + 80) = 1;
  *(a3 + 120) = 0;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 88) = 0;
  *(a3 + 112) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::PinAlignment>(uint64_t a1)
{
  *a1 = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0x3F80000000000000;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0x3F80000000000000;
  *(a1 + 80) = 1;
  *(a1 + 120) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  *(a1 + 112) = 0;
  return result;
}

_anonymous_namespace_ *re::ecs2::FrameProfilingSystem::willAddSystemToECSService(re::ecs2::FrameProfilingSystem *this)
{
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  result = re::ServiceLocator::serviceOrNull<re::AssetService>(v2);
  if (result)
  {
    (*(*result + 8))(&v9);
    v4 = *(this + 14);
    *(this + 14) = v9;
    v9 = v4;
    v5 = *(this + 30);
    *(this + 30) = v10;
    v10 = v5;
    re::AssetHandle::~AssetHandle(&v9);
    v6 = (*(**(this + 5) + 32))(*(this + 5));
    *(this + 36) = re::ServiceLocator::serviceOrNull<re::RenderManager>(v6);
    v7 = (*(**(this + 5) + 32))(*(this + 5));
    result = re::ServiceLocator::serviceOrNull<re::Engine>(v7);
    *(this + 35) = result;
    v8 = *(this + 36);
    if (v8)
    {
      *(this + 37) = *(v8 + 64);
    }
  }

  return result;
}

__n128 re::ecs2::FrameProfilingSystem::willRemoveSystemFromECSService(re::ecs2::FrameProfilingSystem *this)
{
  if (*(this + 272) == 1)
  {
    v2 = *(this + 36);
    if (v2)
    {
      v3 = *(v2 + 112);
      if (v3)
      {
        v4 = *(v3 + 296);
      }

      else
      {
        v4 = 0;
      }

      re::StringID::StringID(v11, (this + 248));
      v11[2] = *(this + 33);
      v5 = re::RenderGraphManager::removeProvider(v4, v11);
      if (v11[0])
      {
        if (v11[0])
        {
        }
      }

      v11[0] = 0;
      v11[1] = &str_67;
      *(this + 272) = 0;
    }
  }

  *(this + 35) = 0;
  *(this + 36) = 0;
  *(this + 37) = 0;
  v6 = *(this + 14);
  v7 = *(this + 30);
  *(this + 29) = 0;
  *(this + 30) = 0;
  *(this + 28) = 0;
  v9 = v6;
  v10 = v7;
  re::AssetHandle::~AssetHandle(&v9);
  return result;
}

void re::ecs2::FrameProfilingSystem::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v78 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 288);
  if (!v3)
  {
    return;
  }

  v5 = *(a1 + 280);
  if (!v5 || !*(a1 + 296) || (*(v5 + 432) & 0x10) == 0 || *(a3 + 8) == 2)
  {
    return;
  }

  v6 = *(v3 + 112);
  if (!v6)
  {
    if ((*(a1 + 272) & 1) == 0)
    {
      return;
    }

    goto LABEL_16;
  }

  shouldRenderProfilerNode = re::DrawingManager::shouldRenderProfilerNode(v6);
  if (!shouldRenderProfilerNode)
  {
    if (!*(a1 + 272))
    {
      return;
    }

    v10 = *(*(a1 + 288) + 112);
    if (v10)
    {
      v11 = *(v10 + 296);
LABEL_17:
      re::StringID::StringID(v49, (a1 + 248));
      v50 = *(a1 + 264);
      re::RenderGraphManager::removeProvider(v11, v49);
      re::StringID::destroyString(v49);
      *(a1 + 272) = 0;
      return;
    }

LABEL_16:
    v11 = 0;
    goto LABEL_17;
  }

  if ((*(a1 + 272) & 1) == 0)
  {
    v8 = *(*(a1 + 288) + 112);
    if (v8)
    {
      v9 = *(v8 + 296);
    }

    else
    {
      v9 = 0;
    }

    v12 = re::globalAllocators(shouldRenderProfilerNode);
    v13 = (*(*v12[2] + 32))(v12[2], 40, 8);
    re::ProfilerOverlayRenderGraphProvider::ProfilerOverlayRenderGraphProvider(v13, v51);
    re::RenderGraphManager::addProviderInternal(v9, "ProfilerOverlay", v13, 0, 1, &v67);
    re::StringID::operator=((a1 + 248), &v67);
    *(a1 + 264) = v69;
    re::StringID::destroyString(&v67);
    if (*&v51[0].var0)
    {
      if (v51[0].var1)
      {
        (*(**&v51[0].var0 + 40))();
      }

      memset(v51, 0, sizeof(v51));
    }

    *(a1 + 272) = 1;
  }

  v14 = *(a1 + 288);
  v15 = *(v14 + 14);
  if (v15)
  {
    v16 = *(v15 + 1648);
    if (v16)
    {
      v17 = *(a1 + 232);
      if (v17 && (v18 = atomic_load((v17 + 896)), v18 == 2))
      {
        v19 = re::RenderManager::perFrameAllocator(v14);
        v66 = 0;
        v63 = 0;
        v64 = 0;
        v65 = 0;
        v62 = v19;
        re::DynamicArray<re::RenderProfilerText>::setCapacity(&v62, 0);
        ++v65;
        re::DynamicArray<re::RenderProfilerText>::setCapacity(&v62, 1uLL);
        v20 = *(v16 + 320);
        if (v20)
        {
          v21 = *(v16 + 336);
          v22 = 48 * v20;
          do
          {
            re::StringID::invalid(&v67);
            v72 = 0u;
            v73 = 0u;
            v70 = 0u;
            v71 = 0u;
            v74 = -1;
            v75 = 0;
            v76 = 0;
            v77 = re::kInvalidStringRenderHandle;
            v69 = xmmword_1E30872B0;
            re::makeFontID((a1 + 224), &v52);
            v24 = *&v52.var0;
            var1 = v52.var1;
            *&v52.var0 = 0;
            v52.var1 = &str_67;
            v26 = v67;
            v27 = v68;
            v67 = v24;
            v68 = var1;
            if (v26)
            {
              if (*&v52.var0)
              {
                if (*&v52.var0)
                {
                }
              }
            }

            v29 = re::StringID::invalid(&v52);
            *&v53 = 0x3F8000003F800000;
            *(&v53 + 1) = 0x3F8000003F800000;
            v54 = 0u;
            v55 = 0u;
            v56 = 0u;
            v57 = 0u;
            v58 = 0u;
            v59 = 0u;
            re::DynamicString::setCapacity(&v58, 0);
            v60 = -1;
            v61 = 0x2800000006;
            re::StringID::operator=(&v52, &v67);
            v53 = v69;
            v54 = v70;
            v55 = v71;
            v56 = v72;
            v57 = v73;
            v30 = re::DynamicString::operator=(&v58, v21);
            v60 = -1;
            v61 = *(v21 + 4);
            v31 = v64;
            if (v64 >= v63)
            {
              if (v63 < v64 + 1)
              {
                if (v62)
                {
                  v32 = 8;
                  if (v63)
                  {
                    v32 = 2 * v63;
                  }

                  if (v32 <= v64 + 1)
                  {
                    v33 = v64 + 1;
                  }

                  else
                  {
                    v33 = v32;
                  }

                  re::DynamicArray<re::RenderProfilerText>::setCapacity(&v62, v33);
                }

                else
                {
                  re::DynamicArray<re::RenderProfilerText>::setCapacity(&v62, v31 + 1);
                  ++v65;
                }
              }

              v31 = v64;
            }

            v34 = v66 + 144 * v31;
            re::StringID::StringID(v34, &v52);
            *(v34 + 16) = v53;
            v35 = v54;
            v36 = v55;
            v37 = v57;
            *(v34 + 64) = v56;
            *(v34 + 80) = v37;
            *(v34 + 32) = v35;
            *(v34 + 48) = v36;
            re::DynamicString::DynamicString((v34 + 96), &v58);
            *(v34 + 128) = v60;
            *(v34 + 136) = v61;
            v64 = v31 + 1;
            ++v65;
            v38 = v58;
            if (v58)
            {
              if (BYTE8(v58))
              {
                v38 = (*(*v58 + 40))();
              }

              v58 = 0u;
              v59 = 0u;
            }

            if (*&v52.var0)
            {
              if (*&v52.var0)
              {
              }
            }

            if (v67)
            {
              if (v67)
              {
              }
            }

            v21 = (v21 + 48);
            v22 -= 48;
          }

          while (v22);
        }

        v39 = *(*(a1 + 288) + 112);
        if (v39)
        {
          v40 = re::RenderFrameBox::get((v39 + 328), 0xFFFFFFFFFFFFFFFuLL);
        }

        else
        {
          v40 = 0;
        }

        if (v64)
        {
          (*(**(v40 + 320) + 48))(*(v40 + 320), &v62);
        }

        re::DynamicArray<re::RenderText>::deinit(&v62);
      }

      else
      {
        re::AssetHandle::loadAsync((a1 + 224));
      }
    }
  }

  v41 = *(a1 + 288);
  v42 = *(v41 + 112);
  if (v42)
  {
    v43 = *(v42 + 1664);
    if (v43)
    {
      if ((re::ProfilerManager::isProcessorEnabled<re::ProfilerFlameChartProcessor,void>(*(v42 + 1664)) & 1) != 0 || (re::ProfilerManager::isProcessorEnabled<re::ProfilerMiniHUDProcessor,void>(v43) & 1) != 0 || re::ProfilerManager::isProcessorEnabled<re::ProfilerDetailedHUDProcessor,void>(v43))
      {
        v44 = *(a1 + 232);
        if (v44 && (v45 = atomic_load((v44 + 896)), v45 == 2))
        {
          v47 = *(v41 + 8);
          v46 = (v41 + 8);
          if (v47 <= 1)
          {
            re::makeFontID((a1 + 224), &v67);
            v48 = re::StringID::operator=(v46, &v67);
            if (v67)
            {
              if (v67)
              {
              }
            }
          }
        }

        else
        {
          re::AssetHandle::loadAsync((a1 + 224));
        }
      }
    }
  }
}

void *re::DynamicArray<re::RenderProfilerText>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RenderProfilerText>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x90uLL))
        {
          v2 = 144 * a2;
          result = (*(*result + 32))(result, 144 * a2, 16);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 144, a2);
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
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = &v8[18 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          v13 = *(v8 + 2);
          v15 = *(v8 + 4);
          v14 = *(v8 + 5);
          *(v11 + 3) = *(v8 + 3);
          *(v11 + 4) = v15;
          *(v11 + 2) = v13;
          *(v11 + 1) = *(v8 + 1);
          *(v11 + 5) = v14;
          *(v11 + 6) = 0u;
          *(v11 + 7) = 0u;
          v11[12] = v8[12];
          v8[12] = 0;
          v16 = v11[14];
          v11[14] = v8[14];
          v8[14] = v16;
          *(v11 + 15) = *(v8 + 15);
          v8[15] = 0;
          v17 = v11[13];
          v11[13] = v8[13];
          v8[13] = v17;
          v11[17] = v8[17];
          re::DynamicString::deinit((v8 + 12));
          re::StringID::destroyString(v8);
          v11 += 18;
          v8 += 18;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t re::ProfilerManager::isProcessorEnabled<re::ProfilerFlameChartProcessor,void>(uint64_t a1)
{
  v5 = re::ProfilerManager::getProcessorId<re::ProfilerFlameChartProcessor>();
  os_unfair_lock_lock((a1 + 16));
  v2 = std::__hash_table<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>>>::find<unsigned long long>((a1 + 480), &v5);
  if (v2)
  {
    v3 = *(v2[3] + 8);
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock((a1 + 16));
  return v3 & 1;
}

uint64_t re::ProfilerManager::isProcessorEnabled<re::ProfilerMiniHUDProcessor,void>(uint64_t a1)
{
  v5 = re::ProfilerManager::getProcessorId<re::ProfilerMiniHUDProcessor>();
  os_unfair_lock_lock((a1 + 16));
  v2 = std::__hash_table<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>>>::find<unsigned long long>((a1 + 480), &v5);
  if (v2)
  {
    v3 = *(v2[3] + 8);
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock((a1 + 16));
  return v3 & 1;
}

uint64_t re::ProfilerManager::isProcessorEnabled<re::ProfilerDetailedHUDProcessor,void>(uint64_t a1)
{
  v5 = re::ProfilerManager::getProcessorId<re::ProfilerDetailedHUDProcessor>();
  os_unfair_lock_lock((a1 + 16));
  v2 = std::__hash_table<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>>>::find<unsigned long long>((a1 + 480), &v5);
  if (v2)
  {
    v3 = *(v2[3] + 8);
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock((a1 + 16));
  return v3 & 1;
}

void *re::ecs2::allocInfo_FrameProfilingSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_215, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_215))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A54F0, "FrameProfilingSystem");
    __cxa_guard_release(&_MergedGlobals_215);
  }

  return &unk_1EE1A54F0;
}

void re::ecs2::initInfo_FrameProfilingSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x51BA0A3EA7E549D0;
  v6[1] = "FrameProfilingSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x13000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_FrameProfilingSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::FrameProfilingSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::FrameProfilingSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::FrameProfilingSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::FrameProfilingSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::FrameProfilingSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::FrameProfilingSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::internal::defaultDestruct<re::ecs2::FrameProfilingSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::StringID::destroyString((a3 + 248));
  re::AssetHandle::~AssetHandle((a3 + 224));

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::FrameProfilingSystem>(uint64_t a1)
{
  re::StringID::destroyString((a1 + 248));
  re::AssetHandle::~AssetHandle((a1 + 224));

  re::ecs2::System::~System(a1);
}

void re::ecs2::FrameProfilingSystem::~FrameProfilingSystem(re::ecs2::FrameProfilingSystem *this)
{
  re::StringID::destroyString((this + 248));
  re::AssetHandle::~AssetHandle((this + 224));

  re::ecs2::System::~System(this);
}

{
  re::StringID::destroyString((this + 248));
  re::AssetHandle::~AssetHandle((this + 224));
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void *re::ProfilerOverlayRenderGraphProvider::ProfilerOverlayRenderGraphProvider(void *a1, const re::DynamicString *a2)
{
  re::DynamicString::DynamicString(&v4, a2);
  *a1 = &unk_1F5CC5700;
  re::DynamicString::DynamicString((a1 + 1), &v4);
  if (v4 && (v5 & 1) != 0)
  {
    (*(*v4 + 40))();
  }

  *a1 = &unk_1F5D12318;
  return a1;
}

uint64_t re::make::shared::unsafelyInplace<re::ecs2::FrameProfilingSystem>(uint64_t a1)
{
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v2 = re::ecs2::System::System(a1, 1);
  *v2 = &unk_1F5CED078;
  v2[29] = 0;
  v2[30] = 0;
  v2[28] = 0;
  re::StringID::invalid((v2 + 31));
  *(a1 + 272) = 0;
  *(a1 + 264) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 280) = 0;
  return a1;
}

uint64_t re::ecs2::CustomDockingAnimationSerialize(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v4 = *a3;
  if (v4)
  {
    v6 = [MEMORY[0x1E696AE40] dataWithPropertyList:v4 format:200 options:0 error:0];
    re::EncoderHelper::encodeBase64([v6 bytes], objc_msgSend(v6, "length"), a4);
  }

  return 1;
}

uint64_t re::ecs2::CustomDockingAnimationDeserialize(int a1, int a2, int a3, void **a4, char *__s)
{
  v14 = 0;
  v11[1] = 0;
  v12 = 0;
  v11[0] = 0;
  v13 = 0;
  v7 = strlen(__s);
  re::EncoderHelper::decodeBase64(__s, v7, v11);
  v8 = [MEMORY[0x1E695DEF0] dataWithBytes:v14 length:v12];
  v9 = [MEMORY[0x1E696AE40] propertyListWithData:v8 options:0 format:0 error:0];
  re::ObjCObject::operator=(a4, v9);

  if (v11[0] && v14)
  {
    (*(*v11[0] + 40))();
  }

  return 1;
}

void re::ecs2::CustomDockingRegionComponent::setDockAnimation(void **this, objc_object *a2, objc_object *a3)
{
  v5 = a3;
  re::ObjCObject::operator=(this + 12, a2);
  re::ObjCObject::operator=(this + 13, v5);
}

id re::ecs2::CustomDockingRegionComponent::getDockAnimation(uint64_t a1, void *a2, void *a3)
{
  *a2 = *(a1 + 96);
  result = *(a1 + 104);
  *a3 = result;
  return result;
}

uint64_t re::ecs2::CustomDockingRegionComponent::getCustomDockingRegionComponentFromScene(uint64_t a1)
{
  v1 = *(re::ecs2::ComponentImpl<re::ecs2::CustomDockingRegionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 8);
  if (*(a1 + 224) <= v1)
  {
    return 0;
  }

  v2 = *(*(a1 + 240) + 8 * v1);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 384);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v2 + 400);
  v5 = 8 * v3;
  while (1)
  {
    result = *v4;
    v7 = *(*v4 + 16);
    if (v7)
    {
      if (*(v7 + 304))
      {
        break;
      }
    }

    ++v4;
    v5 -= 8;
    if (!v5)
    {
      return 0;
    }
  }

  return result;
}

void re::ecs2::introspect_DockTransitionStyle(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A5588, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1A5590, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5590))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1A5618, "DockTransitionStyle", 1, 1, 1, 1);
      qword_1EE1A5618 = &unk_1F5D0C658;
      qword_1EE1A5658 = &re::ecs2::introspect_DockTransitionStyle(BOOL)::enumTable;
      dword_1EE1A5628 = 9;
      __cxa_guard_release(&qword_1EE1A5590);
    }

    if (_MergedGlobals_216)
    {
      break;
    }

    _MergedGlobals_216 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1A5618, a2);
    v43 = 0x7F7AD97148E63D12;
    v44 = "DockTransitionStyle";
    v47 = 0x31CD534126;
    v48 = "uint8_t";
    v4 = v46[0];
    v5 = v46[1];
    if (v47)
    {
      if (v47)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1A5658;
      v47 = v4;
      v48 = v5;
      re::TypeBuilder::beginEnumType(v46, &v43, 1, 1, &v47);
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
            *&v45.var0 = 2 * v11;
            v45.var1 = v10;
            re::TypeBuilder::addEnumConstant(v46, v15, &v45);
            if (*&v45.var0)
            {
              if (*&v45.var0)
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
              *&v45.var0 = 2 * v20;
              v45.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v46, v24, &v45);
              if (*&v45.var0)
              {
                if (*&v45.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v46, v26);
      xmmword_1EE1A5638 = v45;
      if (v43)
      {
        if (v43)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v44);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE1A5588);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "DockTransitionStyleDefault";
      qword_1EE1A55E0 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "DockTransitionStyleGroundSkim";
      qword_1EE1A55E8 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 1) = 2;
      *(v34 + 2) = "DockTransitionStyleSwoop";
      qword_1EE1A55F0 = v34;
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 1) = 3;
      *(v36 + 2) = "DockTransitionStyleCustom0";
      qword_1EE1A55F8 = v36;
      v37 = re::introspectionAllocator(v36);
      v38 = (*(*v37 + 32))(v37, 24, 8);
      *v38 = 1;
      *(v38 + 1) = 4;
      *(v38 + 2) = "DockTransitionStyleCustom1";
      qword_1EE1A5600 = v38;
      v39 = re::introspectionAllocator(v38);
      v40 = (*(*v39 + 32))(v39, 24, 8);
      *v40 = 1;
      *(v40 + 1) = 5;
      *(v40 + 2) = "DockTransitionStyleCustom2";
      qword_1EE1A5608 = v40;
      v41 = re::introspectionAllocator(v40);
      v42 = (*(*v41 + 32))(v41, 24, 8);
      *v42 = 1;
      *(v42 + 8) = 6;
      *(v42 + 16) = "DockTransitionStyleCustom3";
      qword_1EE1A5610 = v42;
      __cxa_guard_release(&qword_1EE1A5588);
    }
  }
}

void re::ecs2::introspect_CustomDockingAnimation(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A5598, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5598))
  {
    re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1A5660, "CustomDockingAnimation", 8, 8, 0, 0);
    qword_1EE1A5660 = &unk_1F5D0C698;
    qword_1EE1A56A0 = re::internal::defaultConstruct<re::ecs2::CustomDockingAnimation>;
    qword_1EE1A56A8 = re::ecs2::CustomDockingAnimationSerialize;
    qword_1EE1A56B0 = re::ecs2::CustomDockingAnimationDeserialize;
    qword_1EE1A56C0 = 0;
    unk_1EE1A56C8 = 0;
    qword_1EE1A56B8 = re::ecs2::CustomDockingAnimationDeepCopy;
    dword_1EE1A5670 = 11;
    __cxa_guard_release(&qword_1EE1A5598);
  }

  if ((byte_1EE1A5581 & 1) == 0)
  {
    byte_1EE1A5581 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1A5660, a2);
    v3[0] = 0xE978F8F3B334924CLL;
    v3[1] = "CustomDockingAnimation";
    unk_1EE1A5680 = v4;
    if (v3[0])
    {
      if (v3[0])
      {
      }
    }
  }
}

void *re::ecs2::allocInfo_CustomDockingRegionComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A55A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A55A8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A56D0, "CustomDockingRegionComponent");
    __cxa_guard_release(&qword_1EE1A55A8);
  }

  return &unk_1EE1A56D0;
}

void re::ecs2::initInfo_CustomDockingRegionComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v25[0] = 0x7AC04804869D2916;
  v25[1] = "CustomDockingRegionComponent";
  if (v25[0])
  {
    if (v25[0])
    {
    }
  }

  *(this + 2) = v26;
  if ((atomic_load_explicit(&qword_1EE1A55A0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A55A0);
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
      qword_1EE1A55B0 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = re::introspect_AABB(1);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "m_bounds";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x2000000001;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1A55B8 = v11;
      v12 = re::introspectionAllocator(v11);
      re::ecs2::introspect_DockTransitionStyle(v12, v13);
      v14 = (*(*v12 + 32))(v12, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "m_transitionStyle";
      *(v14 + 16) = &qword_1EE1A5618;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0x4000000002;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE1A55C0 = v14;
      v15 = re::introspectionAllocator(v14);
      v16 = re::introspect_Vector3F(1);
      v17 = (*(*v15 + 32))(v15, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "m_dockPosition";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x5000000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1A55C8 = v17;
      v18 = re::introspectionAllocator(v17);
      re::ecs2::introspect_CustomDockingAnimation(v18, v19);
      v20 = (*(*v18 + 32))(v18, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "m_dockAnimation";
      *(v20 + 16) = &qword_1EE1A5660;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x6000000004;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1A55D0 = v20;
      v21 = re::introspectionAllocator(v20);
      re::ecs2::introspect_CustomDockingAnimation(v21, v22);
      v23 = (*(*v21 + 32))(v21, 72, 8);
      *v23 = 1;
      *(v23 + 8) = "m_undockAnimation";
      *(v23 + 16) = &qword_1EE1A5660;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0x6800000005;
      *(v23 + 40) = 0;
      *(v23 + 48) = 0;
      *(v23 + 56) = 0;
      *(v23 + 64) = 0;
      qword_1EE1A55D8 = v23;
      __cxa_guard_release(&qword_1EE1A55A0);
    }
  }

  *(this + 2) = 0x7000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE1A55B0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::CustomDockingRegionComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::CustomDockingRegionComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::CustomDockingRegionComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::CustomDockingRegionComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs228CustomDockingRegionComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v24 = v26;
}

double re::internal::defaultConstruct<re::ecs2::CustomDockingRegionComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CDBB08;
  v4.i64[0] = 0x7F0000007FLL;
  v4.i64[1] = 0x7F0000007FLL;
  *(v3 + 32) = vnegq_f32(v4);
  *(v3 + 48) = v4;
  *(v3 + 64) = 0;
  result = 0.0;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::CustomDockingRegionComponent>(ArcSharedObject *a1)
{
  *(a1 + 5) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CDBB08;
  v2.i64[0] = 0x7F0000007FLL;
  v2.i64[1] = 0x7F0000007FLL;
  *(v1 + 32) = vnegq_f32(v2);
  *(v1 + 48) = v2;
  *(v1 + 64) = 0;
  result = 0.0;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  return result;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs228CustomDockingRegionComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 12;
    *(a2 + 8) = 0;
  }
}

void ___ZN2re21UISortingFeatureFlags26enableCARESortingManagerV2Ev_block_invoke(uint64_t a1, const char *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  re::Defaults::BOOLValue("UISortingEnableCARESortingManagerV2", a2, &v5);
  if (v5 == 1)
  {
    re::UISortingFeatureFlags::gEnableCARESortingManagerV2 = BYTE1(v5);
  }

  v3 = *re::sortingLogObjects(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (re::UISortingFeatureFlags::gEnableCARESortingManagerV2)
    {
      v4 = "enabled";
    }

    else
    {
      v4 = "disabled";
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "UISortingEnableCARESortingManagerV2 is now %s.", &v5, 0xCu);
  }
}

void ___ZN2re21UISortingFeatureFlags30enableCodirectionalAsSortGroupEv_block_invoke(uint64_t a1, const char *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  re::Defaults::BOOLValue("UISortingEnableCodirectionalAsSortGroup", a2, &v5);
  if (v5 == 1)
  {
    re::UISortingFeatureFlags::gEnableCodirectionalAsSortGroup = BYTE1(v5);
  }

  v3 = *re::sortingLogObjects(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (re::UISortingFeatureFlags::gEnableCodirectionalAsSortGroup)
    {
      v4 = "enabled";
    }

    else
    {
      v4 = "disabled";
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "UISortingEnableCodirectionalAsSortGroup is now %s.", &v5, 0xCu);
  }
}

void ___ZN2re21UISortingFeatureFlags42enableUISorterByByCodirectionalGroupConfigEv_block_invoke(uint64_t a1, const char *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  re::Defaults::BOOLValue("UISortingEnableUISorterByCodirectionalGroupConfig", a2, &v5);
  if (v5 == 1)
  {
    re::UISortingFeatureFlags::gEnableUISorterByCodirectionalGroupConfig = BYTE1(v5);
  }

  v3 = *re::sortingLogObjects(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (re::UISortingFeatureFlags::gEnableUISorterByCodirectionalGroupConfig)
    {
      v4 = "enabled";
    }

    else
    {
      v4 = "disabled";
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "UISortingEnableEnableUISorterByCodirectionalGroupConfig is now %s.", &v5, 0xCu);
  }
}

uint64_t *re::IntrospectionInfo<re::DynamicArray<re::ecs2::VideoMaterialAttachment>>::get(int a1)
{
  {
    re::IntrospectionDynamicArray<re::ecs2::VideoMaterialAttachment>::IntrospectionDynamicArray(&re::IntrospectionInfo<re::DynamicArray<re::ecs2::VideoMaterialAttachment>>::get(BOOL)::info);
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::DynamicArray<re::ecs2::VideoMaterialAttachment>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::DynamicArray<re::ecs2::VideoMaterialAttachment>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v14);
    v2 = re::IntrospectionInfo<re::DynamicArray<re::ecs2::VideoMaterialAttachment>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v14);
    if (v2)
    {
      return &re::IntrospectionInfo<re::DynamicArray<re::ecs2::VideoMaterialAttachment>>::get(BOOL)::info;
    }

    v4 = re::introspectionSharedMutex(v3);
    std::__shared_mutex_base::lock(v4);
  }

  v5 = re::ecs2::introspect_VideoMaterialAttachment(1);
  if ((re::IntrospectionInfo<re::DynamicArray<re::ecs2::VideoMaterialAttachment>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v6 = v5;
    re::IntrospectionInfo<re::DynamicArray<re::ecs2::VideoMaterialAttachment>>::get(BOOL)::isInitialized = 1;
    v7 = *(v5 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::DynamicArray<re::ecs2::VideoMaterialAttachment>>::get(BOOL)::info, 0);
    qword_1EE186AB8 = 0x2800000003;
    dword_1EE186AC0 = v7;
    word_1EE186AC4 = 0;
    *&xmmword_1EE186AC8 = 0;
    *(&xmmword_1EE186AC8 + 1) = 0xFFFFFFFFLL;
    qword_1EE186AD8 = v6;
    unk_1EE186AE0 = 0;
    re::IntrospectionInfo<re::DynamicArray<re::ecs2::VideoMaterialAttachment>>::get(BOOL)::info = &unk_1F5CED168;
    re::IntrospectionRegistry::add(v8, v9);
    re::getPrettyTypeName(&re::IntrospectionInfo<re::DynamicArray<re::ecs2::VideoMaterialAttachment>>::get(BOOL)::info, &v14);
    if (BYTE8(v14))
    {
      v10 = v15;
    }

    else
    {
      v10 = &v14 + 9;
    }

    if (v14 && (BYTE8(v14) & 1) != 0)
    {
      (*(*v14 + 40))();
    }

    v14 = *(v6 + 32);
    xmmword_1EE186AC8 = v13;
    if (v16)
    {
      if (v16)
      {
      }
    }
  }

  if ((a1 & 1) == 0)
  {
    v11 = re::introspectionSharedMutex(v5);
    std::__shared_mutex_base::unlock(v11);
  }

  return &re::IntrospectionInfo<re::DynamicArray<re::ecs2::VideoMaterialAttachment>>::get(BOOL)::info;
}

void *re::ecs2::allocInfo_ImageBasedReflectionReceiverComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A5768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5768))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A5780, "ImageBasedReflectionReceiverComponent");
    __cxa_guard_release(&qword_1EE1A5768);
  }

  return &unk_1EE1A5780;
}

void re::ecs2::initInfo_ImageBasedReflectionReceiverComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v13[0] = 0x25EE020AF0649916;
  v13[1] = "ImageBasedReflectionReceiverComponent";
  if (v13[0])
  {
    if (v13[0])
    {
    }
  }

  *(this + 2) = v14;
  if ((atomic_load_explicit(&_MergedGlobals_217, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&_MergedGlobals_217);
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
      qword_1EE1A5770 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = re::IntrospectionInfo<re::DynamicArray<re::ecs2::VideoMaterialAttachment>>::get(1);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "m_attachments";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x2000000001;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1A5778 = v11;
      __cxa_guard_release(&_MergedGlobals_217);
    }
  }

  *(this + 2) = 0x7800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1A5770;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ImageBasedReflectionReceiverComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ImageBasedReflectionReceiverComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ImageBasedReflectionReceiverComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ImageBasedReflectionReceiverComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs237ImageBasedReflectionReceiverComponentELNS_17RealityKitReleaseE6EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v12 = v14;
}

void re::internal::defaultConstruct<re::ecs2::ImageBasedReflectionReceiverComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 14) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE5B18;
  *(v3 + 64) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
  *(v3 + 56) = 0;
  *(v3 + 72) = 0;
  *(v3 + 112) = 0;
  *(v3 + 88) = 0;
  *(v3 + 96) = 0;
  *(v3 + 80) = 0;
  *(v3 + 104) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::ImageBasedReflectionReceiverComponent>(uint64_t a1)
{
  *(a1 + 112) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE5B18;
  *(v1 + 64) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 32) = 0;
  *(v1 + 56) = 0;
  *(v1 + 72) = 0;
  *(v1 + 112) = 0;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  *(v1 + 80) = 0;
  *(v1 + 104) = 0;
}

re::StringID *re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add(_anonymous_namespace_ *this, StringID *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::RigGraphNodeDescription>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = re::StringID::StringID((*(this + 4) + 32 * v4), a2);
  result = re::StringID::StringID((v5 + 16), a2 + 1);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::DynamicArray<re::ecs2::VideoMaterialAttachment>::remove(uint64_t a1, void *a2)
{
  re::DynamicArray<re::ecs2::VideoMaterialAttachment>::indexOf(a1, a2, v5);
  v3 = v5[0];
  if (v5[0] == 1)
  {
    re::DynamicArray<re::ecs2::VideoMaterialAttachment>::removeAt(a1, v6);
  }

  return v3;
}

BOOL re::ecs2::ImageBasedReflectionReceiverComponent::receivesSpecularLightSpill(re::ecs2::ImageBasedReflectionReceiverComponent *this)
{
  v1 = *(this + 6);
  if (!v1)
  {
    return 0;
  }

  v2 = 32 * v1 - 32;
  v3 = (*(this + 8) + 8);
  do
  {
    v4 = *v3;
    v3 += 4;
    v5 = strcmp(v4, "REVideoAttachmentSpillSpecular");
    result = v5 == 0;
    if (v5)
    {
      v7 = v2 == 0;
    }

    else
    {
      v7 = 1;
    }

    v2 -= 32;
  }

  while (!v7);
  return result;
}

uint64_t re::ecs2::ImageBasedReflectionReceiverComponent::receivesDiffuseLightSpill(re::ecs2::ImageBasedReflectionReceiverComponent *this)
{
  v1 = *(this + 6);
  if (!v1)
  {
    return 0;
  }

  v2 = (*(this + 8) + 8);
  v3 = 32 * v1;
  while (1)
  {
    v4 = *v2;
    if (!strcmp(*v2, "REVideoAttachmentSpill") || !strcmp(v4, "REVideoAttachmentChannelID1TextureSpill"))
    {
      break;
    }

    v2 += 4;
    v3 -= 32;
    if (!v3)
    {
      return 0;
    }
  }

  return 1;
}

void re::ecs2::ImageBasedReflectionReceiverComponent::removeParamsFromSystemParameterBlock(re::ecs2::ImageBasedReflectionReceiverComponent *this, re::MaterialManager *a2, char a3)
{
  v6 = *(*(this + 2) + 312);
  SystemMaterialParameterBlock = re::MaterialManager::getSystemMaterialParameterBlock(a2, v6);
  if (SystemMaterialParameterBlock)
  {
    v8 = SystemMaterialParameterBlock;
    v9 = *(this + 6);
    if (v9)
    {
      v10 = *(this + 8);
      v11 = 32 * v9;
      do
      {
        re::MaterialParameterBlock::removeParameter(v8, *(v10 + 24));
        re::ecs2::VideoComponent::removeVideoAttachmentFromParameterBlock(v10, v8, v12);
        v10 += 32;
        v11 -= 32;
      }

      while (v11);
    }

    v13 = *(this + 12);
    if (v13)
    {
      v14 = *(this + 14);
      v15 = 32 * v13;
      do
      {
        re::MaterialParameterBlock::removeParameter(v8, *(v14 + 24));
        re::ecs2::VideoComponent::removeVideoAttachmentFromParameterBlock(v14, v8, v16);
        v14 += 32;
        v15 -= 32;
      }

      while (v15);
    }

    re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::clear(this + 80);
    if ((a3 & 1) != 0 && re::MaterialParameterBlock::isEmpty(v8))
    {

      re::MaterialManager::removeSystemMaterialParameterBlock(a2, v6);
    }
  }
}

void re::ecs2::ImageBasedReflectionReceiverComponent::applyAttachments(uint64_t *a1, re::RenderManager **this, const re::TextureHandle *a3, int a4, int a5, int a6, _OWORD *a7, int a8, float a9, float a10, float a11, float a12, int32x2_t a13, int32x2_t a14, double a15, double a16, __int128 a17, uint64_t a18)
{
  v28 = re::MaterialManager::getOrAddSystemMaterialParameterBlock(this, *(a1[2] + 312));
  v29 = a1[6];
  if (v29)
  {
    v30 = v28;
    v31 = 32 * v29;
    v32 = a1[8];
    v58 = vdupq_lane_s32(a13, 0);
    v60 = vdupq_lane_s32(a14, 0);
    do
    {
      v33 = *v32 >> 1;
      if (v33 > 0x6ACE73CDBA36B78DLL)
      {
        if (*v32 >> 1 <= 0x757106E73545B3A8uLL)
        {
          if (v33 == 0x6ACE73CDBA36B78ELL)
          {
            v46 = *(v32 + 8);
            if (v46 != "REVideoAttachmentDockingRegionWidth" && strcmp(v46, "REVideoAttachmentDockingRegionWidth"))
            {
LABEL_45:
              *&v72[0] = 0xC37C7BF41B26998;
              *(&v72[0] + 1) = "REVideoAttachmentDisplaySize";
              if (re::StringID::operator==(v32, v72))
              {
                v55 = *(v32 + 16) >> 1;
                *&v72[0] = a18;
                v74[0] = v55;
                re::MaterialParameterBlock::setConstant(v30, v74, 8uLL, v72, 32, v62);
                v62[0] = 0;
              }

              else
              {
                re::ecs2::VideoComponent::applyVideoAttachmentToParameterBlock(a1[2], v32, a3, v30, a4, a5);
              }

              goto LABEL_48;
            }

            v47 = *(v32 + 16) >> 1;
            v72[0] = v60;
            v74[0] = v47;
            re::MaterialParameterBlock::setConstant(v30, v74, 0x10uLL, v72, 33, v65);
            v65[0] = 0;
          }

          else
          {
            if (v33 != 0x6F0005E972D1405FLL)
            {
              goto LABEL_45;
            }

            v42 = *(v32 + 8);
            if (v42 != "REVideoAttachmentDockingRegionHeight")
            {
              if (strcmp(v42, "REVideoAttachmentDockingRegionHeight"))
              {
                goto LABEL_45;
              }
            }

            v43 = *(v32 + 16) >> 1;
            v72[0] = v58;
            v74[0] = v43;
            re::MaterialParameterBlock::setConstant(v30, v74, 0x10uLL, v72, 33, v66);
            v66[0] = 0;
          }
        }

        else
        {
          switch(v33)
          {
            case 0x757106E73545B3A9uLL:
              v50 = *(v32 + 8);
              if (v50 != "REVideoAttachmentContentPlaneHeightWorldspace" && strcmp(v50, "REVideoAttachmentContentPlaneHeightWorldspace"))
              {
                goto LABEL_45;
              }

              v51 = *(v32 + 16) >> 1;
              *v74 = a10;
              *&v72[0] = v51;
              re::MaterialParameterBlock::setConstant(v30, v72, 4uLL, v74, 1, v70);
              v70[0] = 0;
              break;
            case 0x79D6ECFADD603431uLL:
              v54 = *(v32 + 8);
              if (v54 != "REVideoAttachmentAverageColor" && strcmp(v54, "REVideoAttachmentAverageColor"))
              {
                goto LABEL_45;
              }

              v56 = *(v32 + 16) >> 1;
              v72[0] = a17;
              v74[0] = v56;
              re::MaterialParameterBlock::setConstant(v30, v74, 0x10uLL, v72, 33, v67);
              v67[0] = 0;
              break;
            case 0x7E934A87959DCBA9uLL:
              v36 = *(v32 + 8);
              if (v36 != "REVideoAttachmentPFRMMaskSize")
              {
                if (strcmp(v36, "REVideoAttachmentPFRMMaskSize"))
                {
                  goto LABEL_45;
                }
              }

              v37 = *(v32 + 16) >> 1;
              *v72 = a16;
              v74[0] = v37;
              re::MaterialParameterBlock::setConstant(v30, v74, 8uLL, v72, 32, v63);
              v63[0] = 0;
              break;
            default:
              goto LABEL_45;
          }
        }
      }

      else if (*v32 >> 1 <= 0x42D70E5EED7878EAuLL)
      {
        if (v33 == 0x26EAC6F89E53063BLL)
        {
          v44 = *(v32 + 8);
          if (v44 != "REVideoAttachmentPFRMMaskOffset" && strcmp(v44, "REVideoAttachmentPFRMMaskOffset"))
          {
            goto LABEL_45;
          }

          v45 = *(v32 + 16) >> 1;
          *v72 = a15;
          v74[0] = v45;
          re::MaterialParameterBlock::setConstant(v30, v74, 8uLL, v72, 32, v64);
          v64[0] = 0;
        }

        else
        {
          if (v33 != 0x30E43710AE043515)
          {
            goto LABEL_45;
          }

          v38 = *(v32 + 8);
          if (v38 != "REVideoAttachmentWorldToPlaneUVsTransformMatrix")
          {
            if (strcmp(v38, "REVideoAttachmentWorldToPlaneUVsTransformMatrix"))
            {
              goto LABEL_45;
            }
          }

          v39 = *(v32 + 16) >> 1;
          v40 = a7[1];
          v72[0] = *a7;
          v72[1] = v40;
          v41 = a7[3];
          v72[2] = a7[2];
          v72[3] = v41;
          v74[0] = v39;
          re::MaterialParameterBlock::setConstant(v30, v74, 0x40uLL, v72, 50, v73);
          v73[0] = 0;
        }
      }

      else
      {
        switch(v33)
        {
          case 0x42D70E5EED7878EBuLL:
            v48 = *(v32 + 8);
            if (v48 != "REVideoAttachmentContentBrightnessScale" && strcmp(v48, "REVideoAttachmentContentBrightnessScale"))
            {
              goto LABEL_45;
            }

            v49 = *(v32 + 16) >> 1;
            *v74 = a11;
            *&v72[0] = v49;
            re::MaterialParameterBlock::setConstant(v30, v72, 4uLL, v74, 1, v69);
            v69[0] = 0;
            break;
          case 0x47340200864FAC3EuLL:
            v52 = *(v32 + 8);
            if (v52 != "REVideoAttachmentTransitionAlpha" && strcmp(v52, "REVideoAttachmentTransitionAlpha"))
            {
              goto LABEL_45;
            }

            v53 = *(v32 + 16) >> 1;
            *v74 = a12;
            *&v72[0] = v53;
            re::MaterialParameterBlock::setConstant(v30, v72, 4uLL, v74, 1, v68);
            v68[0] = 0;
            break;
          case 0x514FAA62239F3AECuLL:
            v34 = *(v32 + 8);
            if (v34 != "REVideoAttachmentContentPlaneWidthWorldspace")
            {
              if (strcmp(v34, "REVideoAttachmentContentPlaneWidthWorldspace"))
              {
                goto LABEL_45;
              }
            }

            v35 = *(v32 + 16) >> 1;
            *v74 = a9;
            *&v72[0] = v35;
            re::MaterialParameterBlock::setConstant(v30, v72, 4uLL, v74, 1, v71);
            v71[0] = 0;
            break;
          default:
            goto LABEL_45;
        }
      }

LABEL_48:
      v32 += 32;
      v31 -= 32;
    }

    while (v31);
  }
}

void re::TypeBuilderHelper::registerDynamicArray<re::ecs2::VideoMaterialAttachment>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  re::TypeRegistry::typeID(a1, a2, &v12);
  if (v12)
  {
    *a4 = v12;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v11);
    re::TypeBuilder::TypeBuilder(v10, v11);
    v9 = *a3;
    re::TypeBuilder::beginListType(v10, a2, 1, 0x28uLL, 8uLL, &v9);
    re::TypeBuilder::setConstructor(v10, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::VideoMaterialAttachment>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(v10, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::VideoMaterialAttachment>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setListUsesContiguousStorage(v10, 1);
    re::TypeBuilder::setListAccessors(v10, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::VideoMaterialAttachment>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::VideoMaterialAttachment>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIndexer(v10, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::VideoMaterialAttachment>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIterator(v10, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::VideoMaterialAttachment>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::VideoMaterialAttachment>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::VideoMaterialAttachment>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(v10, a1, a4);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

ArcSharedObject *re::IntrospectionDynamicArray<re::ecs2::VideoMaterialAttachment>::IntrospectionDynamicArray(ArcSharedObject *a1)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v2 + 22) = 0;
  v2[2] = 0;
  v2[4] = 0;
  v2[5] = 0xFFFFFFFFLL;
  *v2 = &unk_1F5CADA48;
  v2[7] = 0;
  re::SerializedReference<re::IntrospectionBase const*>::reset((v2 + 6));
  *a1 = &unk_1F5CED168;
  return a1;
}

void *re::IntrospectionDynamicArray<re::ecs2::VideoMaterialAttachment>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::ecs2::VideoMaterialAttachment>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::ecs2::VideoMaterialAttachment>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::ecs2::VideoMaterialAttachment>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::ecs2::VideoMaterialAttachment>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::ecs2::VideoMaterialAttachment>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::ecs2::VideoMaterialAttachment>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v11[0] = 0;
  v11[1] = &str_67;
  v12 = 0;
  v13 = &str_67;
  v8 = re::DynamicArray<re::RigGraphNodeDescription>::add(this, v11);
  if (v12)
  {
    if (v12)
    {
    }
  }

  v12 = 0;
  v13 = &str_67;
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  v9 = (*(this + 4) + 32 * *(this + 2) - 32);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

uint64_t re::IntrospectionDynamicArray<re::ecs2::VideoMaterialAttachment>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 32 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 32 * a3;
}

void re::DynamicArray<re::ecs2::VideoMaterialAttachment>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 32 * a2;
    v9 = a2;
    do
    {
      v10 = *(a1 + 32) + v8;
      re::StringID::destroyString((v10 + 16));
      re::StringID::destroyString(v10);
      ++v9;
      v8 += 32;
    }

    while (v9 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 32 * v4;
      do
      {
        v7 = (*(a1 + 32) + v6);
        *v7 = 0;
        v7[1] = &str_67;
        v7[2] = 0;
        v7[3] = &str_67;
        v6 += 32;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::ecs2::VideoMaterialAttachment>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::ecs2::VideoMaterialAttachment>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::operator()(uint64_t a1, uint64_t a2, uint64_t a3, re::Allocator *a4, unint64_t a5)
{
  if (*a2 == a4)
  {
    re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::clear(a2);
  }

  else
  {
    re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(a2);
    *a2 = a4;
    re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity(a2, a5);
    ++*(a2 + 24);
  }

  re::DynamicArray<re::ecs2::VideoMaterialAttachment>::resize(a2, a5);
  {
    re::TypeRegistry::typeInfo(*a3, *(*(a3 + 16) + 80), v14);
    re::TypeInfo::TypeInfo(v13, &v15);
    v10 = *(a2 + 16);
    if (v10)
    {
      v11 = *(a2 + 32);
      v12 = 32 * v10;
      do
      {
        re::TypeInfo::destruct(v13, v11, a4, 0);
        re::TypeInfo::construct(v13, v11, a4, 0);
        v11 += 32;
        v12 -= 32;
      }

      while (v12);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::VideoMaterialAttachment>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 32 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::VideoMaterialAttachment>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::VideoMaterialAttachment>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 32 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::VideoMaterialAttachment>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs237ImageBasedReflectionReceiverComponentELNS_17RealityKitReleaseE6EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 6;
    *(a2 + 8) = 0;
  }
}

uint64_t re::DynamicArray<re::ecs2::VideoMaterialAttachment>::indexOf@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 32);
  v5 = *(result + 16);
  if (v5)
  {
    v7 = 32 * v5;
    v8 = *(result + 32);
    while (1)
    {
      result = re::StringID::operator==(v8, a2);
      if (result)
      {
        result = re::StringID::operator==(v8 + 2, a2 + 2);
        if (result)
        {
          break;
        }
      }

      v8 += 4;
      v7 -= 32;
      if (!v7)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v8 = *(result + 32);
  }

  if (v8 == (v4 + 32 * v5))
  {
LABEL_10:
    v9 = 0;
  }

  else
  {
    *(a3 + 8) = (v8 - v4) >> 5;
    v9 = 1;
  }

  *a3 = v9;
  return result;
}

void re::DynamicArray<re::ecs2::VideoMaterialAttachment>::removeAt(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v2 - 1 > a2)
  {
    v4 = *(a1 + 32);
    v5 = v4 + 32 * v2;
    v6 = re::StringID::operator=((v4 + 32 * a2), (v5 - 32));
    re::StringID::operator=((v6 + 16), (v5 - 16));
    v2 = *(a1 + 16);
  }

  v7 = *(a1 + 32) + 32 * v2;
  v8 = (v7 - 32);
  re::StringID::destroyString((v7 - 16));
  re::StringID::destroyString(v8);
  --*(a1 + 16);
  ++*(a1 + 24);
}

float re::UnlitMaterial::commitConstantChanges(re::UnlitMaterial *this, re::RenderManager *a2)
{
  v4 = re::UnlitMaterial::addRenderFrameParameterDelta(this, a2);
  if (v4)
  {
    v6 = v4;
    if (a2 && (v7 = *(a2 + 20)) != 0)
    {
      v8 = *v7;
    }

    else
    {
      v8 = 0;
    }

    *(v4 + 16) = 1;
    re::ColorGamut4F::as(this + 24, v8, 1, &v9);
    *(v6 + 32) = v9;
    result = *(this + 11);
    *(v6 + 48) = result;
  }

  return result;
}

uint64_t re::UnlitMaterial::addRenderFrameParameterDelta(re::UnlitMaterial *this, re::RenderManager *a2)
{
  v3 = *(a2 + 14);
  if (v3 && re::DrawingManager::checkDeltasCanBeEnqueuedOrDropDelta_115383182<re::PbrParameterDelta>(v3, *(this + 16)))
  {
    v5 = *(a2 + 18);
    v6 = *(v5 + 48);
    if (((*(this + 15) ^ v6) & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      *(this + 15) = v6 & 0xFFFFFFFFFFFFFFFLL | (*(v5 + 40) << 60);
      re::UnlitMaterial::parameterTable(this, a2, &v9);
      *(this + 16) = re::DrawingManager::addRenderFrameDeltaForNextFrame<re::UnlitParameterDelta,re::UnlitParameterTable>(v3, &v9);
      if (v9)
      {
      }
    }

    return *(this + 16);
  }

  else
  {
    *(this + 16) = 0;
    v8 = *(this + 13);
    if (v8)
    {

      result = 0;
      *(this + 13) = 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void re::UnlitMaterial::parameterTable(re::UnlitMaterial *this@<X0>, const re::RenderManager *a2@<X1>, void *a3@<X8>)
{
  v4 = *(this + 13);
  if (v4)
  {
    *a3 = v4;
LABEL_10:
    v9 = (v4 + 8);
    return;
  }

  if (a2 && (v6 = *(a2 + 20)) != 0)
  {
    v7 = *v6;
  }

  else
  {
    v7 = 0;
  }

  re::make::shared::object<re::UnlitParameterTable>(this, v11);
  v8 = *(this + 13);
  *(this + 13) = v11[0];
  v11[0] = v8;
  if (v8)
  {
  }

  re::ColorGamut4F::as(this + 24, v7, 1, v11);
  *(*(this + 13) + 48) = *v11;
  *(*(this + 13) + 64) = *(this + 11);
  re::PbrMaterial::makeTextureHandle((this + 48), v10);
  v11[0] = &unk_1F5CED240;
  re::TextureHandle::TextureHandle(&v11[1], v10);
  re::TextureHandle::operator=(*(this + 13) + 104, &v11[1]);
  v11[0] = &unk_1F5CED240;
  re::TextureHandle::invalidate(&v11[1]);
  re::TextureHandle::invalidate(v10);
  *(this + 14) = 0xFFFFFFFFFFFFFFFLL;
  v4 = *(this + 13);
  *a3 = v4;
  if (v4)
  {
    goto LABEL_10;
  }
}

uint64_t re::DrawingManager::addRenderFrameDeltaForNextFrame<re::UnlitParameterDelta,re::UnlitParameterTable>(uint64_t a1, uint64_t *a2)
{
  v4 = re::globalAllocators(a1);
  v5 = re::PerFrameAllocatorManager::perFrameAllocator(v4[6], *(*(*(a1 + 256) + 144) + 48) & 0xFFFFFFFFFFFFFFFLL | (*(*(*(a1 + 256) + 144) + 40) << 60));
  v6 = (*(*v5 + 32))(v5, 80, 16);
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *v6 = &unk_1F5CD4138;
  objc_initWeak((v6 + 8), 0);
  *v6 = &unk_1F5CED200;
  __asm { FMOV            V0.4S, #1.0 }

  *(v6 + 32) = _Q0;
  *(v6 + 48) = 1065353216;
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  v12 = *a2;
  *(v6 + 16) = 0;
  if (v12)
  {
    v13 = (v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  objc_storeWeak((v6 + 8), v13);
  if (!*(a1 + 608))
  {
    *(a1 + 608) = v5;
    re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::setCapacity((a1 + 608), 0);
    *(a1 + 624) += 2;
  }

  v15 = v6;
  re::DynamicOverflowArray<re::RenderFrameDelta *,8ul>::add(a1 + 608, &v15);
  return v6;
}

void re::UnlitParameterDelta::applyDeltaChange(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 1);
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if (*(this + 16) == 1)
    {
      *(WeakRetained + 18) = 3;
      v4 = *(this + 2);
      *(WeakRetained + 14) = *(this + 12);
      *(WeakRetained + 40) = v4;
    }

    if (*(this + 17) == 1)
    {
      re::TextureHandle::TextureHandle(v5, (this + 8));
      re::TextureHandle::operator=(v3 + 96, v5);
      re::TextureHandle::invalidate(v5);
    }
  }
}

uint64_t re::UnlitTextureSource::lookup@<X0>(uint64_t this@<X0>, const re::WeakStringID *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 == 0x34EAA28FD9A1AC37 && *(this + 16) && *(this + 8))
  {
    *a3 = 1;
    *(a3 + 1) = 0;
  }

  else
  {
    *a3 = 0;
  }

  return this;
}

uint64_t re::UnlitTextureSource::layoutHash(re::UnlitTextureSource *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    if (*(this + 1))
    {
      LODWORD(v1) = 73244475;
    }

    else
    {
      LODWORD(v1) = 0;
    }
  }

  return (73244475 * (v1 ^ WORD1(v1))) ^ ((73244475 * (v1 ^ WORD1(v1))) >> 16);
}

void re::UnlitTextureSource::textureAt(os_unfair_lock_s **this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (!a2 && this[2] && this[1])
  {
    re::TextureHandle::metalTexture(this + 1, a3);
  }

  else
  {
    *a3 = 0;
  }
}

__n128 re::make::shared::object<re::UnlitParameterTable>@<Q0>(re *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 128, 16);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 112) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 32) = 0u;
  ArcSharedObject::ArcSharedObject(v4, 0);
  *v4 = &unk_1F5CED298;
  *(v4 + 32) = &unk_1F5CED2E0;
  __asm { FMOV            V0.4S, #1.0 }

  *(v4 + 48) = result;
  *(v4 + 64) = 1065353216;
  *(v4 + 80) = 0;
  *(v4 + 96) = &unk_1F5CED240;
  *(v4 + 104) = 0;
  *(v4 + 112) = 0;
  *a2 = v4;
  return result;
}

void re::UnlitParameterTable::~UnlitParameterTable(re::UnlitParameterTable *this)
{
  *this = &unk_1F5CED298;
  *(this + 12) = &unk_1F5CED240;
  re::TextureHandle::invalidate((this + 104));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CED298;
  *(this + 12) = &unk_1F5CED240;
  re::TextureHandle::invalidate((this + 104));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void *re::UnlitConstantSource::lookup(re::UnlitConstantSource *this, const re::WeakStringID *a2)
{
  if (*a2 != 0x1F383C7C217AE8A0)
  {
    if (*a2 == 0x4FA976128CFELL && (*(this + 48) & 1) != 0)
    {
      return &re::UnlitConstantSource::s_locations;
    }

    return 0;
  }

  if ((*(this + 48) & 2) == 0)
  {
    return 0;
  }

  return &unk_1ECEF6EAC;
}

void *re::ecs2::allocInfo_GroundPlaneComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_218, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_218))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A5830, "GroundPlaneComponent");
    __cxa_guard_release(&_MergedGlobals_218);
  }

  return &unk_1EE1A5830;
}

void re::ecs2::initInfo_GroundPlaneComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v14[0] = 0x1AAD283225AD710;
  v14[1] = "GroundPlaneComponent";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1A5818, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A5818);
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
      qword_1EE1A5820 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_BOOL(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "isSceneUnderstandingMeshPhysicsFallback";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1900000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1A5828 = v12;
      __cxa_guard_release(&qword_1EE1A5818);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1A5820;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::GroundPlaneComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::GroundPlaneComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::GroundPlaneComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::GroundPlaneComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs220GroundPlaneComponentELNS_17RealityKitReleaseE2EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v13 = v15;
}

void re::internal::defaultConstruct<re::ecs2::GroundPlaneComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CD1410;
}

void re::internal::defaultConstructV2<re::ecs2::GroundPlaneComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CD1410;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs220GroundPlaneComponentELNS_17RealityKitReleaseE2EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 2;
    *(a2 + 8) = 0;
  }
}

void re::introspect_LoadTraceType(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A58C8, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1A58D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A58D0))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1A5920, "LoadTraceType", 1, 1, 1, 1);
      qword_1EE1A5920 = &unk_1F5D0C658;
      qword_1EE1A5960 = &re::introspect_LoadTraceType(BOOL)::enumTable;
      dword_1EE1A5930 = 9;
      __cxa_guard_release(&qword_1EE1A58D0);
    }

    if (_MergedGlobals_219)
    {
      break;
    }

    _MergedGlobals_219 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1A5920, a2);
    v35 = 0xCE13B02F3DC4EF72;
    v36 = "LoadTraceType";
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
      v6 = qword_1EE1A5960;
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
      xmmword_1EE1A5940 = v37;
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
    v28 = __cxa_guard_acquire(&qword_1EE1A58C8);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Unknown";
      qword_1EE1A58E8 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "Synchronous";
      qword_1EE1A58F0 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 8) = 2;
      *(v34 + 16) = "Asynchronous";
      qword_1EE1A58F8 = v34;
      __cxa_guard_release(&qword_1EE1A58C8);
    }
  }
}

void *re::ecs2::allocInfo_LoadTraceComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A58D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A58D8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A5968, "LoadTraceComponent");
    __cxa_guard_release(&qword_1EE1A58D8);
  }

  return &unk_1EE1A5968;
}

void re::ecs2::initInfo_LoadTraceComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v21[0] = 0xAB5761FC7B9757BCLL;
  v21[1] = "LoadTraceComponent";
  if (v21[0])
  {
    if (v21[0])
    {
    }
  }

  *(this + 2) = v22;
  if ((atomic_load_explicit(&qword_1EE1A58E0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A58E0);
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
      qword_1EE1A5900 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_uint32_t(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "loadTraceId";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1C00000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1A5908 = v12;
      v13 = re::introspectionAllocator(v12);
      re::introspect_LoadTraceType(v13, v14);
      v15 = (*(*v13 + 32))(v13, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "loadTraceType";
      *(v15 + 16) = &qword_1EE1A5920;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x2000000002;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE1A5910 = v15;
      v16 = re::introspectionAllocator(v15);
      v18 = re::introspect_BOOL(1, v17);
      v19 = (*(*v16 + 32))(v16, 72, 8);
      *v19 = 1;
      *(v19 + 8) = "loadCacheUsed";
      *(v19 + 16) = v18;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0x2100000003;
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;
      *(v19 + 56) = 0;
      *(v19 + 64) = 0;
      qword_1EE1A5918 = v19;
      __cxa_guard_release(&qword_1EE1A58E0);
    }
  }

  *(this + 2) = 0xE800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1A5900;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::LoadTraceComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::LoadTraceComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::LoadTraceComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::LoadTraceComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs218LoadTraceComponentELNS_17RealityKitReleaseE6EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v20 = v22;
}

void *re::internal::defaultDestruct<re::ecs2::LoadTraceComponent>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(a3 + 23);
  re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(a3 + 17);
  re::HashTable<re::AssetHandle,re::ecs2::LoadTraceAssetLoadState,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(a3 + 11);
  re::HashTable<re::AssetHandle,re::ecs2::LoadTraceAssetLoadState,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(a3 + 5);
  *a3 = &unk_1F5CCF868;

  return objc_destructInstance(a3 + 1);
}

void *re::internal::defaultDestructV2<re::ecs2::LoadTraceComponent>(uint64_t *a1)
{
  re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(a1 + 23);
  re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(a1 + 17);
  re::HashTable<re::AssetHandle,re::ecs2::LoadTraceAssetLoadState,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(a1 + 11);
  re::HashTable<re::AssetHandle,re::ecs2::LoadTraceAssetLoadState,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(a1 + 5);
  *a1 = &unk_1F5CCF868;

  return objc_destructInstance(a1 + 1);
}

os_log_t ___ZN2re4ecs218LoadTraceComponent3logEv_block_invoke()
{
  result = os_log_create("com.apple.re", "LoadTraceComponent");
  re::ecs2::LoadTraceComponent::log(void)::log = result;
  return result;
}

uint64_t re::ecs2::LoadTraceComponent::emitLoadTraceSignpost(re::ecs2::LoadTraceComponent *this)
{
  result = re::internal::enableSignposts(0, 0);
  if (result)
  {

    return kdebug_trace();
  }

  return result;
}

void re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_32, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = 0;
      v5 = 8;
      do
      {
        v6 = *(a1 + 16);
        v7 = *(v6 + v5);
        if (v7 < 0)
        {
          *(v6 + v5) = v7 & 0x7FFFFFFF;
          re::AssetHandle::~AssetHandle((v6 + v5 + 8));
          v3 = *(a1 + 32);
        }

        ++v4;
        v5 += 40;
      }

      while (v4 < v3);
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v8 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v8;
  }
}

void re::ecs2::LoadTraceComponent::updateTrackedAssets(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::clear(a1 + 184);
  v6 = *(a1 + 168);
  if (v6)
  {
    v7 = 0;
    v8 = (*(a1 + 152) + 8);
    while (1)
    {
      v9 = *v8;
      v8 += 10;
      if (v9 < 0)
      {
        break;
      }

      if (v6 == ++v7)
      {
        LODWORD(v7) = *(a1 + 168);
        break;
      }
    }
  }

  else
  {
    LODWORD(v7) = 0;
  }

  while (v7 != v6)
  {
    re::AssetHandle::AssetHandle(v50, (*(a1 + 152) + 40 * v7 + 16));
    v10 = v51;
    if (v51)
    {
      v11 = *(v51 + 792);
    }

    else
    {
      v11 = 0;
    }

    v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v51 ^ (v51 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v51 ^ (v51 >> 30))) >> 27));
    re::HashTable<re::AssetHandle,re::ecs2::LoadTraceAssetLoadState,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::findEntry<re::AssetHandle>(&v52, a1 + 40, v51, v12 ^ v11 ^ (v12 >> 31));
    if (HIDWORD(v53) == 0x7FFFFFFF)
    {
      v13 = v10 ? *(v10 + 280) : 0;
      if (*a4)
      {
        v14 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) >> 27));
        v15 = *(*(a4 + 8) + 4 * ((v14 ^ (v14 >> 31)) % *(a4 + 24)));
        if (v15 != 0x7FFFFFFF)
        {
          v16 = *(a4 + 16);
          while (*(v16 + 32 * v15 + 8) != v13)
          {
            v15 = *(v16 + 32 * v15) & 0x7FFFFFFF;
            if (v15 == 0x7FFFFFFF)
            {
              goto LABEL_27;
            }
          }

          if (v10)
          {
            v17 = *(v10 + 792);
          }

          else
          {
            v17 = 0;
          }

          v52 = 0;
          v53 = 0;
          v54 = 0;
          re::HashTable<re::AssetHandle,re::ecs2::LoadTraceAssetLoadState,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::findEntry<re::AssetHandle>(&v52, a1 + 40, v10, v12 ^ v17 ^ (v12 >> 31));
          if (HIDWORD(v53) == 0x7FFFFFFF)
          {
            v18 = re::HashTable<re::AssetHandle,re::ecs2::LoadTraceAssetLoadState,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::allocEntry(a1 + 40, v53, v52);
            re::AssetHandle::AssetHandle((v18 + 8), v50);
            *(v18 + 32) = 0;
            ++*(a1 + 80);
          }

          re::AssetHandle::AssetHandle(v49, v50);
          re::ecs2::LoadTraceComponent::emitLoadTraceSignpost(a1, a2, v49, a4);
          re::AssetHandle::~AssetHandle(v49);
        }
      }
    }

LABEL_27:
    re::AssetHandle::~AssetHandle(v50);
    v19 = *(a1 + 168);
    if (v19 <= v7 + 1)
    {
      v19 = v7 + 1;
    }

    while (v19 - 1 != v7)
    {
      LODWORD(v7) = v7 + 1;
      if ((*(*(a1 + 152) + 40 * v7 + 8) & 0x80000000) != 0)
      {
        goto LABEL_33;
      }
    }

    LODWORD(v7) = v19;
LABEL_33:
    ;
  }

  v20 = *(a1 + 72);
  if (v20)
  {
    v21 = 0;
    v22 = *(a1 + 56);
    while (1)
    {
      v23 = *v22;
      v22 += 12;
      if (v23 < 0)
      {
        break;
      }

      if (v20 == ++v21)
      {
        v21 = *(a1 + 72);
        break;
      }
    }
  }

  else
  {
    v21 = 0;
  }

  if (v20 != v21)
  {
    LODWORD(v24) = v21;
    do
    {
      v25 = *(a1 + 56) + 48 * v21;
      v26 = *(a1 + 160);
      if (!v26 || ((v27 = *(v25 + 16)) == 0 ? (v28 = 0) : (v28 = *(v27 + 792)), v29 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v27 ^ (v27 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v27 ^ (v27 >> 30))) >> 27)), v30 = *(*(a1 + 144) + 4 * ((v28 ^ (v29 >> 31) ^ v29) % v26)), v30 == 0x7FFFFFFF))
      {
LABEL_50:
        re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::add(a1 + 184, (v25 + 8));
        LODWORD(v20) = *(a1 + 72);
      }

      else
      {
        v31 = *(a1 + 152);
        while (*(v31 + 40 * v30 + 24) != v27)
        {
          v30 = *(v31 + 40 * v30 + 8) & 0x7FFFFFFF;
          if (v30 == 0x7FFFFFFF)
          {
            goto LABEL_50;
          }
        }
      }

      if (v20 <= v24 + 1)
      {
        v32 = (v24 + 1);
      }

      else
      {
        v32 = v20;
      }

      while (v32 - 1 != v24)
      {
        v24 = (v24 + 1);
        if ((*(*(a1 + 56) + 48 * v24) & 0x80000000) != 0)
        {
          v21 = v24;
          LODWORD(v32) = v24;
          goto LABEL_58;
        }
      }

      v21 = v32;
LABEL_58:
      LODWORD(v24) = v32;
    }

    while (v20 != v32);
  }

  v33 = *(a1 + 216);
  if (v33)
  {
    v34 = 0;
    v35 = (*(a1 + 200) + 8);
    while (1)
    {
      v36 = *v35;
      v35 += 10;
      if (v36 < 0)
      {
        break;
      }

      if (v33 == ++v34)
      {
        LODWORD(v34) = *(a1 + 216);
        break;
      }
    }
  }

  else
  {
    LODWORD(v34) = 0;
  }

  while (v34 != v33)
  {
    re::AssetHandle::AssetHandle(v50, (*(a1 + 200) + 40 * v34 + 16));
    if (v51)
    {
      v37 = *(v51 + 792);
    }

    else
    {
      v37 = 0;
    }

    v38 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v51 ^ (v51 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v51 ^ (v51 >> 30))) >> 27));
    re::HashTable<re::AssetHandle,re::ecs2::LoadTraceAssetLoadState,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::findEntry<re::AssetHandle>(&v52, a1 + 40, v51, v37 ^ (v38 >> 31) ^ v38);
    v39 = HIDWORD(v53);
    if (HIDWORD(v53) != 0x7FFFFFFF)
    {
      v40 = *(a1 + 56);
      v41 = (v40 + 48 * HIDWORD(v53));
      v42 = *v41 & 0x7FFFFFFF;
      if (v54 == 0x7FFFFFFF)
      {
        *(*(a1 + 48) + 4 * v53) = v42;
      }

      else
      {
        *(v40 + 48 * v54) = *(v40 + 48 * v54) & 0x80000000 | v42;
      }

      v43 = *v41;
      if (*v41 < 0)
      {
        *v41 = v43 & 0x7FFFFFFF;
        re::AssetHandle::~AssetHandle((v41 + 2));
        v40 = *(a1 + 56);
        v43 = *(v40 + 48 * v39);
      }

      *(v40 + 48 * v39) = *(a1 + 76) | v43 & 0x80000000;
      --*(a1 + 68);
      v44 = *(a1 + 80) + 1;
      *(a1 + 76) = v39;
      *(a1 + 80) = v44;
    }

    re::AssetHandle::AssetHandle(v48, v50);
    re::ecs2::LoadTraceComponent::emitLoadTraceSignpost(a1, a3, v48, a4);
    re::AssetHandle::~AssetHandle(v48);
    re::AssetHandle::~AssetHandle(v50);
    v45 = *(a1 + 216);
    if (v45 <= v34 + 1)
    {
      v45 = v34 + 1;
    }

    while (v45 - 1 != v34)
    {
      LODWORD(v34) = v34 + 1;
      if ((*(*(a1 + 200) + 40 * v34 + 8) & 0x80000000) != 0)
      {
        goto LABEL_82;
      }
    }

    LODWORD(v34) = v45;
LABEL_82:
    ;
  }
}

uint64_t re::ecs2::LoadTraceComponent::emitLoadTraceSignpost(uint64_t a1, uint64_t a2, re::AssetHandle *a3, uint64_t a4)
{
  v5 = *(a3 + 1);
  if (v5)
  {
    v5 = *(v5 + 280);
  }

  v8 = v5;
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) >> 27));
  re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(a4, &v8, v6 ^ (v6 >> 31), v9);
  result = re::internal::enableSignposts(0, 0);
  if (result)
  {
    re::AssetHandle::assetInfo(a3);
    return kdebug_trace();
  }

  return result;
}

void re::ecs2::LoadTraceComponent::checkAssetLoadStates(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 116))
  {
    v10 = *(a1 + 112);
    if (v10)
    {
      memset_pattern16(*(a1 + 96), &memset_pattern_32, 4 * v10);
    }

    v11 = *(a1 + 120);
    if (v11)
    {
      v12 = 0;
      for (i = 0; i < v11; ++i)
      {
        v14 = *(a1 + 104);
        v15 = *(v14 + v12);
        if (v15 < 0)
        {
          *(v14 + v12) = v15 & 0x7FFFFFFF;
          re::AssetHandle::~AssetHandle((v14 + v12 + 8));
          v11 = *(a1 + 120);
        }

        v12 += 48;
      }
    }

    *(a1 + 116) = 0;
    *(a1 + 120) = 0;
    v16 = *(a1 + 128) + 1;
    *(a1 + 124) = 0x7FFFFFFF;
    *(a1 + 128) = v16;
  }

  v17 = *(a1 + 72);
  if (v17)
  {
    v18 = 0;
    v19 = *(a1 + 56);
    while (1)
    {
      v20 = *v19;
      v19 += 12;
      if (v20 < 0)
      {
        break;
      }

      if (v17 == ++v18)
      {
        v18 = *(a1 + 72);
        break;
      }
    }
  }

  else
  {
    v18 = 0;
  }

  if (v17 != v18)
  {
    LODWORD(v25) = v18;
    do
    {
      v26 = 3 * v18;
      re::AssetHandle::AssetHandle(v46, (*(a1 + 56) + 48 * v18 + 8));
      if (v47)
      {
        v27 = *(*(a1 + 56) + 16 * v26 + 32);
        v28 = atomic_load((v47 + 896));
        if (v28 == 2)
        {
          if (v27 != 1)
          {
            re::AssetHandle::AssetHandle(v45, v46);
            re::ecs2::LoadTraceComponent::emitLoadTraceSignpost(a1, a2, v45, a5);
            re::AssetHandle::~AssetHandle(v45);
            v44 = 1;
LABEL_27:
            re::HashTable<re::AssetHandle,re::ecs2::LoadTraceAssetLoadState,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::addOrReplace(a1 + 88, v46, &v44);
          }
        }

        else
        {
          if (!atomic_load((v47 + 896)))
          {
            if (v27 == 2)
            {
              goto LABEL_35;
            }

            re::AssetHandle::AssetHandle(v43, v46);
            re::ecs2::LoadTraceComponent::emitLoadTraceSignpost(a1, a3, v43, a5);
            re::AssetHandle::~AssetHandle(v43);
            v44 = 2;
            goto LABEL_27;
          }

          v30 = atomic_load((v47 + 896));
          if (v30 == 3 && v27 != 3)
          {
            re::AssetHandle::AssetHandle(v42, v46);
            re::ecs2::LoadTraceComponent::emitLoadTraceSignpost(a1, a4, v42, a5);
            re::AssetHandle::~AssetHandle(v42);
            v44 = 3;
            goto LABEL_27;
          }
        }
      }

LABEL_35:
      re::AssetHandle::~AssetHandle(v46);
      v32 = *(a1 + 72);
      if (v32 <= v25 + 1)
      {
        v33 = (v25 + 1);
      }

      else
      {
        v33 = v32;
      }

      while (v33 - 1 != v25)
      {
        v25 = (v25 + 1);
        if ((*(*(a1 + 56) + 48 * v25) & 0x80000000) != 0)
        {
          v18 = v25;
          LODWORD(v33) = v25;
          goto LABEL_42;
        }
      }

      v18 = v33;
LABEL_42:
      LODWORD(v25) = v33;
    }

    while (v32 != v33);
  }

  v21 = *(a1 + 120);
  if (v21)
  {
    v22 = 0;
    v23 = *(a1 + 104);
    while (1)
    {
      v24 = *v23;
      v23 += 12;
      if (v24 < 0)
      {
        break;
      }

      if (v21 == ++v22)
      {
        v22 = *(a1 + 120);
        break;
      }
    }
  }

  else
  {
    v22 = 0;
  }

  if (v21 != v22)
  {
    v34 = *(a1 + 104);
    LODWORD(v35) = v22;
    do
    {
      v36 = v34 + 48 * v22;
      v37 = *(v36 + 16);
      if (v37)
      {
        v38 = *(v37 + 792);
      }

      else
      {
        v38 = 0;
      }

      v39 = *(v36 + 32);
      v40 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v37 ^ (v37 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v37 ^ (v37 >> 30))) >> 27));
      re::HashTable<re::AssetHandle,re::ecs2::LoadTraceAssetLoadState,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::findEntry<re::AssetHandle>(v46, a1 + 40, v37, v38 ^ (v40 >> 31) ^ v40);
      *(*(a1 + 56) + 48 * HIDWORD(v47) + 32) = v39;
      if (v21 <= v35 + 1)
      {
        v41 = (v35 + 1);
      }

      else
      {
        v41 = v21;
      }

      while (v41 - 1 != v35)
      {
        v35 = (v35 + 1);
        if ((*(v34 + 48 * v35) & 0x80000000) != 0)
        {
          v22 = v35;
          LODWORD(v41) = v35;
          goto LABEL_58;
        }
      }

      v22 = v41;
LABEL_58:
      LODWORD(v35) = v41;
    }

    while (v21 != v41);
  }
}

uint64_t re::HashTable<re::AssetHandle,re::ecs2::LoadTraceAssetLoadState,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::addOrReplace(uint64_t a1, const re::AssetHandle *a2, _BYTE *a3)
{
  v6 = *(a2 + 1);
  if (v6)
  {
    v7 = *(v6 + 792);
  }

  else
  {
    v7 = 0;
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) >> 27));
  result = re::HashTable<re::AssetHandle,re::ecs2::LoadTraceAssetLoadState,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::findEntry<re::AssetHandle>(&v12, a1, v6, v7 ^ (v8 >> 31) ^ v8);
  v10 = HIDWORD(v13);
  if (HIDWORD(v13) == 0x7FFFFFFF)
  {
    v11 = re::HashTable<re::AssetHandle,re::ecs2::LoadTraceAssetLoadState,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::allocEntry(a1, v13, v12);
    result = re::AssetHandle::AssetHandle((v11 + 8), a2);
    *(v11 + 32) = *a3;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    *(*(a1 + 16) + 48 * v10 + 32) = *a3;
  }

  return result;
}

double re::make::shared::unsafelyInplace<re::ecs2::LoadTraceComponent>(uint64_t a1)
{
  *(a1 + 224) = 0;
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
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE5038;
  *(v1 + 28) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0;
  *&result = 0x7FFFFFFFLL;
  *(v1 + 76) = 0x7FFFFFFFLL;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0;
  *(v1 + 124) = 0x7FFFFFFFLL;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0u;
  *(v1 + 168) = 0;
  *(v1 + 172) = 0x7FFFFFFFLL;
  *(v1 + 184) = 0u;
  *(v1 + 200) = 0u;
  *(v1 + 216) = 0;
  *(v1 + 220) = 0x7FFFFFFFLL;
  return result;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs218LoadTraceComponentELNS_17RealityKitReleaseE6EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 6;
  *(a2 + 8) = 0;
  return result;
}

uint64_t re::HashTable<re::AssetHandle,re::ecs2::LoadTraceAssetLoadState,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::findEntry<re::AssetHandle>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *a2;
  v5 = 0x7FFFFFFF;
  if (!*a2)
  {
    goto LABEL_10;
  }

  v4 = a4 % *(a2 + 24);
  v6 = *(*(a2 + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_10;
  }

  v7 = *(a2 + 16);
  if (*(v7 + 48 * v6 + 16) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_10:
    v6 = 0x7FFFFFFF;
    goto LABEL_11;
  }

  v8 = *(v7 + 48 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 48 * v8 + 16) == a3)
      {
        break;
      }

      v8 = *(v7 + 48 * v8) & 0x7FFFFFFF;
      v6 = v9;
      if (v8 == 0x7FFFFFFF)
      {
        v6 = v9;
        goto LABEL_11;
      }
    }

    v5 = v8;
  }

LABEL_11:
  *result = a4;
  *(result + 8) = v4;
  *(result + 12) = v5;
  *(result + 16) = v6;
  return result;
}

uint64_t re::HashTable<re::AssetHandle,re::ecs2::LoadTraceAssetLoadState,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v29, 0, 36);
          *&v29[36] = 0x7FFFFFFFLL;
          re::HashTable<re::AssetHandle,re::ecs2::LoadTraceAssetLoadState,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::init(v29, v9, v8);
          v11 = *v29;
          *v29 = *a1;
          *a1 = v11;
          v12 = *&v29[16];
          v13 = *(a1 + 16);
          *&v29[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v29[24];
          *&v29[24] = *(a1 + 24);
          v14 = *&v29[32];
          *(a1 + 24) = v15;
          ++*&v29[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = 0;
            do
            {
              if ((*(v13 + v17) & 0x80000000) != 0)
              {
                v19 = (v13 + v17);
                v20 = re::HashTable<re::AssetHandle,re::ecs2::LoadTraceAssetLoadState,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::allocEntry(a1, *(v13 + v17 + 40) % *(a1 + 24));
                *(v20 + 16) = 0;
                *(v20 + 24) = 0;
                *(v20 + 8) = 0;
                *(v20 + 16) = v19[2];
                v19[2] = 0;
                v21 = *(v20 + 8);
                *(v20 + 8) = 0;
                *(v20 + 8) = v19[1];
                v19[1] = v21;
                v22 = *(v20 + 24);
                *(v20 + 24) = v19[3];
                v19[3] = v22;
                v13 = *&v29[16];
                *(v20 + 32) = *(*&v29[16] + v17 + 32);
              }

              ++v18;
              v17 += 48;
            }

            while (v18 < v16);
          }

          re::HashTable<re::AssetHandle,re::ecs2::LoadTraceAssetLoadState,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(v29);
        }
      }

      else
      {
        if (v8)
        {
          v25 = 2 * v7;
        }

        else
        {
          v25 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v23 = *(a1 + 16);
    v24 = *(v23 + 48 * v5);
  }

  else
  {
    v23 = *(a1 + 16);
    v24 = *(v23 + 48 * v5);
    *(a1 + 36) = v24 & 0x7FFFFFFF;
  }

  v26 = v23 + 48 * v5;
  *v26 = v24 | 0x80000000;
  v27 = *(a1 + 8);
  *v26 = *(v27 + 4 * a2) | 0x80000000;
  *(v27 + 4 * a2) = v5;
  *(v26 + 40) = a3;
  ++*(a1 + 28);
  return v23 + 48 * v5;
}

void re::HashTable<re::AssetHandle,re::ecs2::LoadTraceAssetLoadState,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 48 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_32, 4 * v10);
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

void *re::ecs2::allocInfo_ClientWorldOriginRefComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_220, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_220))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A5A10, "ClientWorldOriginRefComponent");
    __cxa_guard_release(&_MergedGlobals_220);
  }

  return &unk_1EE1A5A10;
}

void re::ecs2::initInfo_ClientWorldOriginRefComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v10[0] = 0xE6691EEFCF88156ELL;
  v10[1] = "ClientWorldOriginRefComponent";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1A5A08, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A5A08);
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
      qword_1EE1A5A00 = v8;
      __cxa_guard_release(&qword_1EE1A5A08);
    }
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1A5A00;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ClientWorldOriginRefComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ClientWorldOriginRefComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ClientWorldOriginRefComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ClientWorldOriginRefComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs229ClientWorldOriginRefComponentELNS_17RealityKitReleaseE10EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v9 = v11;
}

void re::internal::defaultConstruct<re::ecs2::ClientWorldOriginRefComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE6B68;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::ClientWorldOriginRefComponent>(ArcSharedObject *a1)
{
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE6B68;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs229ClientWorldOriginRefComponentELNS_17RealityKitReleaseE10EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 10;
  *(a2 + 8) = 0;
  return result;
}

void *re::ecs2::allocInfo_WorldRootToken(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A5AB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5AB0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A5AF0, "WorldRootToken");
    __cxa_guard_release(&qword_1EE1A5AB0);
  }

  return &unk_1EE1A5AF0;
}

void re::ecs2::initInfo_WorldRootToken(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v11[0] = 0x1F8500F0353C75CALL;
  v11[1] = "WorldRootToken";
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  *(this + 2) = v12;
  if ((atomic_load_explicit(&qword_1EE1A5AA8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A5AA8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_uint64_t(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "m_worldRootId";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      _MergedGlobals_221 = v9;
      __cxa_guard_release(&qword_1EE1A5AA8);
    }
  }

  *(this + 2) = 0x800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &_MergedGlobals_221;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::WorldRootToken>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::WorldRootToken>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::WorldRootToken>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::WorldRootToken>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v10 = v12;
}

void *re::ecs2::allocInfo_WorldRootComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A5AC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5AC0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A5B80, "WorldRootComponent");
    __cxa_guard_release(&qword_1EE1A5AC0);
  }

  return &unk_1EE1A5B80;
}

void re::ecs2::initInfo_WorldRootComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v23[0] = 0xE23DDCC2FBA88FD2;
  v23[1] = "WorldRootComponent";
  if (v23[0])
  {
    if (v23[0])
    {
    }
  }

  *(this + 2) = v24;
  if ((atomic_load_explicit(&qword_1EE1A5AC8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A5AC8);
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
      qword_1EE1A5AD0 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = v9;
      v11 = qword_1EE1A5AB8;
      if (!qword_1EE1A5AB8)
      {
        v11 = re::ecs2::allocInfo_WorldRootToken(v9);
        qword_1EE1A5AB8 = v11;
        re::ecs2::initInfo_WorldRootToken(v11, v12);
      }

      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "worldRootToken";
      *(v13 + 16) = v11;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x2000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1A5AD8 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_BOOL(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "applyToSelf";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x2800000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1A5AE0 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::introspect_BOOL(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "useLegacyWorldIBL";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x2900000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE1A5AE8 = v21;
      __cxa_guard_release(&qword_1EE1A5AC8);
    }
  }

  *(this + 2) = 0x3800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1A5AD0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::WorldRootComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::WorldRootComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::WorldRootComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::WorldRootComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs218WorldRootComponentELNS_17RealityKitReleaseE3EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v22 = v24;
}

void re::internal::defaultConstruct<re::ecs2::WorldRootComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 6) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE3D40;
  *(v3 + 32) = 0;
  *(v3 + 40) = 1;
  *(v3 + 48) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::WorldRootComponent>(uint64_t a1)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE3D40;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v1 + 48) = 0;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs218WorldRootComponentELNS_17RealityKitReleaseE3EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 3;
  *(a2 + 8) = 0;
  return result;
}

unint64_t re::ecs2::SpatialMedia::calculateEffectiveImmersiveFoVInDegrees(re::ecs2::SpatialMedia *this, float a2, float a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = tanf(((a2 * 0.5) * 3.1416) / 180.0);
  v7 = atanf(v5 / a3);
  v8 = ((v7 * 180.0) * 0.31831) + ((v7 * 180.0) * 0.31831);
  if (a2 <= 90.0 || v8 <= 80.0)
  {
    if (a2 <= 90.0)
    {
      if (v8 > 80.0)
      {
        v16 = tanf(0.69813);
        v17 = atanf(v16 * a3);
        v33 = ((v17 * 180.0) * 0.31831) + ((v17 * 180.0) * 0.31831);
        v13 = 4;
        goto LABEL_9;
      }

      if (a2 >= 40.0 || v8 >= 40.0)
      {
        if (a2 < 40.0)
        {
          v28 = tanf(0.34907);
          v29 = atanf(v28 / a3);
          v32 = ((v29 * 180.0) * 0.31831) + ((v29 * 180.0) * 0.31831);
          v13 = 7;
          v19 = 1109393408;
          goto LABEL_13;
        }

        if (v8 >= 40.0)
        {
          v13 = 0;
          v32 = ((v7 * 180.0) * 0.31831) + ((v7 * 180.0) * 0.31831);
          v20 = a2;
          goto LABEL_14;
        }

        v30 = tanf(0.34907);
        v31 = atanf(v30 * a3);
        v33 = ((v31 * 180.0) * 0.31831) + ((v31 * 180.0) * 0.31831);
        v13 = 8;
      }

      else
      {
        v24 = tanf(0.34907);
        v25 = atanf(v24 / a3);
        v26 = ((v25 * 180.0) * 0.31831) + ((v25 * 180.0) * 0.31831);
        v33 = 40.0;
        if (v26 >= 40.0)
        {
          v32 = v26;
          v13 = 6;
          goto LABEL_15;
        }

        v27 = atanf(v24 * a3);
        v33 = ((v27 * 180.0) * 0.31831) + ((v27 * 180.0) * 0.31831);
        v13 = 5;
      }

      v18 = 1109393408;
      goto LABEL_10;
    }

    v14 = tanf(0.7854);
    v15 = atanf(v14 / a3);
    v32 = ((v15 * 180.0) * 0.31831) + ((v15 * 180.0) * 0.31831);
    v13 = 3;
LABEL_12:
    v19 = 1119092736;
LABEL_13:
    v20 = *&v19;
LABEL_14:
    v33 = v20;
    goto LABEL_15;
  }

  v9 = tanf(0.7854);
  v10 = atanf(v9 / a3);
  if ((((v10 * 180.0) * 0.31831) + ((v10 * 180.0) * 0.31831)) <= 80.0)
  {
    v32 = ((v10 * 180.0) * 0.31831) + ((v10 * 180.0) * 0.31831);
    v13 = 2;
    goto LABEL_12;
  }

  v11 = tanf(0.69813);
  v12 = atanf(v11 * a3);
  v33 = ((v12 * 180.0) * 0.31831) + ((v12 * 180.0) * 0.31831);
  v13 = 1;
LABEL_9:
  v18 = 1117782016;
LABEL_10:
  LODWORD(v32) = v18;
LABEL_15:
  v21 = re::MediaDefaults::logEnabled(v6);
  if (v21)
  {
    v22 = *re::spatialMediaLogObjects(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134219264;
      v35 = a2;
      v36 = 2048;
      v37 = v8;
      v38 = 2048;
      v39 = a3;
      v40 = 2048;
      v41 = v33;
      v42 = 2048;
      v43 = v32;
      v44 = 1024;
      v45 = v13;
      _os_log_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_DEFAULT, "Clamped immersiveFOVInDegrees from hFOV: %f, vFOV: %f aspectRatio: %f, to: hFOV: %f, vFOV %f, using clamping strategy: %i", buf, 0x3Au);
    }
  }

  return __PAIR64__(LODWORD(v32), LODWORD(v33));
}

uint64_t re::ecs2::SpatialMedia::calculateImmersiveFrame(re::ecs2::SpatialMedia *this, float a2, float a3)
{
  v4 = re::ecs2::SpatialMedia::calculateEffectiveImmersiveFoVInDegrees(this, a2, a3);
  v5 = tan(*(&v4 + 1) * 0.5 * 3.14159265 / 180.0);
  v6 = v5 / tan(0.698131701);
  v7 = fminf(v6, 1.0);
  if (v7 < 0.0)
  {
    v7 = 0.0;
  }

  v8 = (v7 * 1.55) + (1.0 - v7) * 0.25;
  *&v9 = v8 * a3;
  *(&v9 + 1) = v8;
  return v9;
}

void *re::ecs2::allocInfo_ProjectiveShadowReceiverComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_222, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_222))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A5C40, "ProjectiveShadowReceiverComponent");
    __cxa_guard_release(&_MergedGlobals_222);
  }

  return &unk_1EE1A5C40;
}

void re::ecs2::initInfo_ProjectiveShadowReceiverComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v18[0] = 0xE32F79A252B689ELL;
  v18[1] = "ProjectiveShadowReceiverComponent";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE1A5C18, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A5C18);
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
      qword_1EE1A5C28 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_BOOL(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "isVisible";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1900000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1A5C30 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_BOOL(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "isAutomaticallyAdded";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x1A00000003;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1A5C38 = v16;
      __cxa_guard_release(&qword_1EE1A5C18);
    }
  }

  *(this + 2) = 0x6000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1A5C28;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ProjectiveShadowReceiverComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ProjectiveShadowReceiverComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ProjectiveShadowReceiverComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ProjectiveShadowReceiverComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs233ProjectiveShadowReceiverComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v17 = v19;
}

float32x4_t re::internal::defaultConstruct<re::ecs2::ProjectiveShadowReceiverComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CDF540;
  *(v3 + 25) = 1;
  result.i64[0] = 0x7F0000007FLL;
  result.i64[1] = 0x7F0000007FLL;
  *(v3 + 32) = vnegq_f32(result);
  *(v3 + 48) = result;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  *(v3 + 64) = 0;
  return result;
}

void *re::internal::defaultDestruct<re::ecs2::ProjectiveShadowReceiverComponent>(uint64_t a1, uint64_t a2, void *a3)
{
  re::AssetHandle::~AssetHandle((a3 + 8));
  *a3 = &unk_1F5CCF868;

  return objc_destructInstance(a3 + 1);
}

float32x4_t re::internal::defaultConstructV2<re::ecs2::ProjectiveShadowReceiverComponent>(ArcSharedObject *a1)
{
  *(a1 + 4) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CDF540;
  *(v1 + 25) = 1;
  result.i64[0] = 0x7F0000007FLL;
  result.i64[1] = 0x7F0000007FLL;
  *(v1 + 32) = vnegq_f32(result);
  *(v1 + 48) = result;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 64) = 0;
  return result;
}

void *re::internal::defaultDestructV2<re::ecs2::ProjectiveShadowReceiverComponent>(void *a1)
{
  re::AssetHandle::~AssetHandle((a1 + 8));
  *a1 = &unk_1F5CCF868;

  return objc_destructInstance(a1 + 1);
}

void *re::ecs2::allocInfo_ProjectiveShadowReceiverSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A5C20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5C20))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A5CD0, "ProjectiveShadowReceiverSystem");
    __cxa_guard_release(&qword_1EE1A5C20);
  }

  return &unk_1EE1A5CD0;
}

void re::ecs2::initInfo_ProjectiveShadowReceiverSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xE33F64CC7DE6D83ALL;
  v6[1] = "ProjectiveShadowReceiverSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x13000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_ProjectiveShadowReceiverSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ProjectiveShadowReceiverSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ProjectiveShadowReceiverSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::ProjectiveShadowReceiverSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::ProjectiveShadowReceiverSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ProjectiveShadowReceiverSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ProjectiveShadowReceiverSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

double re::internal::defaultConstruct<re::ecs2::ProjectiveShadowReceiverSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = re::ecs2::System::System(a3, 1, 1);
  *(v3 + 288) = 0;
  *(v3 + 296) = 0;
  result = 0.0;
  *(v3 + 256) = 0u;
  *(v3 + 272) = 0u;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *v3 = &unk_1F5CED340;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::ProjectiveShadowReceiverSystem>(uint64_t a1)
{
  v1 = re::ecs2::System::System(a1, 1, 1);
  *(v1 + 288) = 0;
  *(v1 + 296) = 0;
  result = 0.0;
  *(v1 + 256) = 0u;
  *(v1 + 272) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0u;
  *v1 = &unk_1F5CED340;
  return result;
}

double re::ecs2::ProjectiveShadowReceiverSystem::willRemoveSystemFromECSService(re::ecs2::ProjectiveShadowReceiverSystem *this)
{
  *(this + 36) = 0;
  result = 0.0;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  return result;
}

void re::ecs2::ProjectiveShadowReceiverSystem::~ProjectiveShadowReceiverSystem(re::ecs2::ProjectiveShadowReceiverSystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs233ProjectiveShadowReceiverComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 1;
  *(a2 + 8) = 0;
  return result;
}

void *re::ecs2::allocInfo_WorldScopeComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_223, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_223))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A5D78, "WorldScopeComponent");
    __cxa_guard_release(&_MergedGlobals_223);
  }

  return &unk_1EE1A5D78;
}

void re::ecs2::initInfo_WorldScopeComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v10[0] = 0x4CD7DED8B5FCA36;
  v10[1] = "WorldScopeComponent";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1A5D70, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A5D70);
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
      qword_1EE1A5D68 = v8;
      __cxa_guard_release(&qword_1EE1A5D70);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1A5D68;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::WorldScopeComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::WorldScopeComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::WorldScopeComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::WorldScopeComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs219WorldScopeComponentELNS_17RealityKitReleaseE3EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v9 = v11;
}

void re::internal::defaultConstruct<re::ecs2::WorldScopeComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE3BD8;
}

void re::internal::defaultConstructV2<re::ecs2::WorldScopeComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE3BD8;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs219WorldScopeComponentELNS_17RealityKitReleaseE3EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 3;
  *(a2 + 8) = 0;
  return result;
}

uint64_t re::ecs2::MeshComponentHelper::dynamicFunctionConstantsForMeshScene@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((atomic_load_explicit(&qword_1EE1A5E18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5E18))
  {
    qword_1EE1A5E10 = re::hashStringWithLength("EnableVideoSpatialRendering", 0x1B);
    __cxa_guard_release(&qword_1EE1A5E18);
  }

  if ((atomic_load_explicit(&qword_1EE1A5E28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5E28))
  {
    qword_1EE1A5E20 = re::hashStringWithLength("EnableTriPlanarVideoSupport", 0x1B);
    __cxa_guard_release(&qword_1EE1A5E28);
  }

  if ((atomic_load_explicit(&qword_1EE1A5E38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5E38))
  {
    qword_1EE1A5E30 = re::hashStringWithLength("EnableInverseToneMapping", 0x18);
    __cxa_guard_release(&qword_1EE1A5E38);
  }

  if ((atomic_load_explicit(&qword_1EE1A5E48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5E48))
  {
    qword_1EE1A5E40 = re::hashStringWithLength("EnableScreenVideoLetterBoxPadding", 0x21);
    __cxa_guard_release(&qword_1EE1A5E48);
  }

  if ((atomic_load_explicit(&qword_1EE1A5E58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5E58))
  {
    qword_1EE1A5E50 = re::hashStringWithLength("EnableVideoColorSpaceTransformation", 0x23);
    __cxa_guard_release(&qword_1EE1A5E58);
  }

  if ((atomic_load_explicit(&qword_1EE1A5E68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5E68))
  {
    qword_1EE1A5E60 = re::hashStringWithLength("EnableVideoColorTransformation", 0x1E);
    __cxa_guard_release(&qword_1EE1A5E68);
  }

  if ((atomic_load_explicit(&qword_1EE1A5E78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5E78))
  {
    qword_1EE1A5E70 = re::hashStringWithLength("VideoSamplingMode", 0x11);
    __cxa_guard_release(&qword_1EE1A5E78);
  }

  if ((atomic_load_explicit(&qword_1EE1A5E88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5E88))
  {
    qword_1EE1A5E80 = re::hashStringWithLength("EnableVideoFoveaRendering", 0x19);
    __cxa_guard_release(&qword_1EE1A5E88);
  }

  if ((atomic_load_explicit(&qword_1EE1A5E98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5E98))
  {
    qword_1EE1A5E90 = re::hashStringWithLength("EnableVideoColorInvert", 0x16);
    __cxa_guard_release(&qword_1EE1A5E98);
  }

  if ((atomic_load_explicit(&qword_1EE1A5EA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5EA8))
  {
    qword_1EE1A5EA0 = re::hashStringWithLength("EnableDepthMitigation", 0x15);
    __cxa_guard_release(&qword_1EE1A5EA8);
  }

  if ((atomic_load_explicit(&qword_1EE1A5EB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5EB8))
  {
    qword_1EE1A5EB0 = re::hashStringWithLength("EnableDepthDither", 0x11);
    __cxa_guard_release(&qword_1EE1A5EB8);
  }

  if ((atomic_load_explicit(&qword_1EE1A5EC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5EC8))
  {
    qword_1EE1A5EC0 = re::hashStringWithLength("PerceptualBlendingMode", 0x16);
    __cxa_guard_release(&qword_1EE1A5EC8);
  }

  if ((atomic_load_explicit(&qword_1EE1A5ED8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5ED8))
  {
    qword_1EE1A5ED0 = re::hashStringWithLength("PortalClippingMode", 0x12);
    __cxa_guard_release(&qword_1EE1A5ED8);
  }

  if ((atomic_load_explicit(&qword_1EE1A5EE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5EE8))
  {
    qword_1EE1A5EE0 = re::hashStringWithLength("EnableAREnvProbe", 0x10);
    __cxa_guard_release(&qword_1EE1A5EE8);
  }

  if ((atomic_load_explicit(&qword_1EE1A5EF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5EF8))
  {
    qword_1EE1A5EF0 = re::hashStringWithLength("EnableVirtualEnvironmentProbes", 0x1E);
    __cxa_guard_release(&qword_1EE1A5EF8);
  }

  if ((atomic_load_explicit(&qword_1EE1A5F08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5F08))
  {
    qword_1EE1A5F00 = re::hashStringWithLength("EnableIBLRotation", 0x11);
    __cxa_guard_release(&qword_1EE1A5F08);
  }

  if ((atomic_load_explicit(&qword_1EE1A5F18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5F18))
  {
    qword_1EE1A5F10 = re::hashStringWithLength("EnableIBLBlending", 0x11);
    __cxa_guard_release(&qword_1EE1A5F18);
  }

  if ((atomic_load_explicit(&qword_1EE1A5F28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5F28))
  {
    qword_1EE1A5F20 = re::hashStringWithLength("EnableShaderGraphLightSpill", 0x1B);
    __cxa_guard_release(&qword_1EE1A5F28);
  }

  if ((atomic_load_explicit(&qword_1EE1A5F38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5F38))
  {
    qword_1EE1A5F30 = re::hashStringWithLength("EnableVideoLegacyMode", 0x15);
    __cxa_guard_release(&qword_1EE1A5F38);
  }

  if ((atomic_load_explicit(&qword_1EE1A5F48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5F48))
  {
    qword_1EE1A5F40 = re::hashStringWithLength("VideoTriangleFillMode", 0x15);
    __cxa_guard_release(&qword_1EE1A5F48);
  }

  if ((atomic_load_explicit(&qword_1EE1A5F58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5F58))
  {
    qword_1EE1A5F50 = re::hashStringWithLength("EnableUIShadowReceiver", 0x16);
    __cxa_guard_release(&qword_1EE1A5F58);
  }

  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init(a2, *(a1 + 64), 27);
  v23 = qword_1EE1A5EC0;
  v25 = *(a1 + 32);
  v4 = re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addNew(a2, &v23, &v25);
  if ((*(a1 + 36) & 2) == 0)
  {
    v23 = qword_1EE1A5EA0;
    v25 = 0;
    v4 = re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addNew(a2, &v23, &v25);
  }

  v5 = re::useDepthDither(v4);
  v6 = re::s_debugSettingsManager;
  if (re::s_debugSettingsManager)
  {
    v23 = 0x578BEFFA8D1BD166;
    v24 = "overrides:enableDepthDither";
    LOBYTE(v25) = 0;
    v6 = re::DebugSettingsManager::getWithErrorCode<BOOL>(re::s_debugSettingsManager, &v23, &v25);
    if (!v6)
    {
      v5 = v25;
    }

    if (v23)
    {
      if (v23)
      {
      }
    }
  }

  if ((v5 & 1) == 0 || (re::useDepthDither(v6) & 1) == 0)
  {
    v23 = qword_1EE1A5EB0;
    v25 = v5;
    re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addNew(a2, &v23, &v25);
  }

  v7 = *(a1 + 8);
  if (v7)
  {
    v23 = qword_1EE1A5E20;
    v25 = *(v7 + 244);
    re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addNew(a2, &v23, &v25);
    v23 = qword_1EE1A5E30;
    v25 = *(*(a1 + 8) + 247);
    re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addNew(a2, &v23, &v25);
    v23 = qword_1EE1A5E40;
    v25 = *(*(a1 + 8) + 257);
    re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addNew(a2, &v23, &v25);
    v23 = qword_1EE1A5E50;
    v25 = *(*(a1 + 8) + 245);
    re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addNew(a2, &v23, &v25);
    v23 = qword_1EE1A5E60;
    v25 = *(*(a1 + 8) + 248);
    re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addNew(a2, &v23, &v25);
    v23 = qword_1EE1A5E70;
    v25 = *(*(a1 + 8) + 252);
    re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addNew(a2, &v23, &v25);
    v23 = qword_1EE1A5E80;
    v25 = 0;
    re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addNew(a2, &v23, &v25);
    v23 = qword_1EE1A5E90;
    v25 = *(*(a1 + 8) + 349);
    re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addNew(a2, &v23, &v25);
    v23 = qword_1EE1A5F30;
    v25 = *(*(a1 + 8) + 256);
    re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addNew(a2, &v23, &v25);
    re::AssetHandle::AssetHandle(&v23, (*(a1 + 8) + 80));
    if (v24)
    {
      v8 = *(*(a1 + 8) + 75);
      re::AssetHandle::~AssetHandle(&v23);
      if (v8 == 1)
      {
        v23 = qword_1EE1A5E10;
        v9 = 1;
LABEL_39:
        v25 = v9;
        re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addNew(a2, &v23, &v25);
        v23 = qword_1EE1A5F40;
        v25 = *(*(a1 + 8) + 352);
        re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addNew(a2, &v23, &v25);
        goto LABEL_40;
      }
    }

    else
    {
      re::AssetHandle::~AssetHandle(&v23);
    }

    v23 = qword_1EE1A5E10;
    v9 = *(*(a1 + 8) + 74) == 1;
    goto LABEL_39;
  }

LABEL_40:
  if (*(a1 + 52) <= 0.0)
  {
    v23 = qword_1EE1A5EE0;
    v25 = 0;
    re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addNew(a2, &v23, &v25);
    v23 = qword_1EE1A5EF0;
    v25 = 0;
    re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addNew(a2, &v23, &v25);
  }

  if (*(a1 + 56) == 1)
  {
    v23 = qword_1EE1A5ED0;
    v25 = *(a1 + 60);
    re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addNew(a2, &v23, &v25);
  }

  v10 = *(a1 + 24);
  if (v10)
  {
    v23 = qword_1EE1A5F00;
    if (v10[1208])
    {
      v11 = 1;
    }

    else if (v10[136] == 1)
    {
      v11 = v10[1209];
    }

    else
    {
      v11 = 0;
    }

    v25 = v11;
    re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addNew(a2, &v23, &v25);
    v23 = qword_1EE1A5F10;
    v25 = *(*(a1 + 24) + 136);
    re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addNew(a2, &v23, &v25);
  }

  if (*(a1 + 48) == 1)
  {
    v12 = *(a1 + 40);
    if (v12)
    {
      v13 = re::ecs2::EntityComponentCollection::get((*(v12 + 16) + 48), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      LODWORD(v12) = v13 && *(v13 + 340) > 0.0;
    }

    v23 = qword_1EE1A5F20;
    v25 = v12;
    re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addNew(a2, &v23, &v25);
  }

  if (re::GraphicsFeatureFlags::enableUIShadow(void)::onceToken != -1)
  {
    dispatch_once(&re::GraphicsFeatureFlags::enableUIShadow(void)::onceToken, &__block_literal_global_22_1);
  }

  if (re::GraphicsFeatureFlags::enableUIShadow(void)::gEnableUIShadow == 1)
  {
    v14 = re::ecs2::EntityComponentCollection::get((*a1 + 48), re::ecs2::ComponentImpl<re::ecs2::UIShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v14)
    {
      if (*(v14 + 26) == 1)
      {
        v23 = qword_1EE1A5F50;
        v25 = 1;
        re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addNew(a2, &v23, &v25);
      }
    }
  }

  result = re::ecs2::EntityComponentCollection::get((*a1 + 48), re::ecs2::ComponentImpl<re::ecs2::EntityFunctionConstantComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (result)
  {
    v16 = result;
    v17 = *(result + 64);
    if (v17)
    {
      v18 = 0;
      v19 = *(result + 48);
      while (1)
      {
        v20 = *v19;
        v19 += 8;
        if (v20 < 0)
        {
          break;
        }

        if (v17 == ++v18)
        {
          LODWORD(v18) = *(result + 64);
          break;
        }
      }
    }

    else
    {
      LODWORD(v18) = 0;
    }

LABEL_78:
    while (v18 != v17)
    {
      v21 = *(v16 + 48) + 32 * v18;
      v23 = *(v21 + 8);
      v25 = *(v21 + 16);
      result = re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addNew(a2, &v23, &v25);
      v22 = *(v16 + 64);
      if (v22 <= v18 + 1)
      {
        v22 = v18 + 1;
      }

      while (v22 - 1 != v18)
      {
        LODWORD(v18) = v18 + 1;
        if ((*(*(v16 + 48) + 32 * v18) & 0x80000000) != 0)
        {
          goto LABEL_78;
        }
      }

      LODWORD(v18) = v22;
    }
  }

  return result;
}