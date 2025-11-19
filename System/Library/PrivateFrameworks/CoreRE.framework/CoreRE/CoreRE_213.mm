uint64_t *re::RenderGraphDataStoreWrapper<re::MeshShadowGenerationData>::~RenderGraphDataStoreWrapper(uint64_t *a1)
{
  *a1 = &unk_1F5D11598;
  v2 = a1 + 3;
  re::FixedArray<re::MeshShadowDepthPrepassReceiverParametersCPU>::deinit(a1 + 55);
  re::DynamicArray<unsigned long>::deinit((a1 + 50));
  re::FixedArray<CoreIKTransform>::deinit(a1 + 20);
  re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(a1 + 10);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 6);
  re::FixedArray<CoreIKTransform>::deinit(v2);
  return a1;
}

void re::RenderGraphDataStoreWrapper<re::MeshShadowGenerationData>::~RenderGraphDataStoreWrapper(uint64_t *a1)
{
  *a1 = &unk_1F5D11598;
  v2 = a1 + 3;
  re::FixedArray<re::MeshShadowDepthPrepassReceiverParametersCPU>::deinit(a1 + 55);
  re::DynamicArray<unsigned long>::deinit((a1 + 50));
  re::FixedArray<CoreIKTransform>::deinit(a1 + 20);
  re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(a1 + 10);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 6);
  re::FixedArray<CoreIKTransform>::deinit(v2);

  JUMPOUT(0x1E6906520);
}

void *re::RenderGraphDataStoreWrapper<re::MeshShadowPerSceneGenerationData>::~RenderGraphDataStoreWrapper(void *a1)
{
  *a1 = &unk_1F5D115D8;
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(a1 + 1);
  return a1;
}

void re::RenderGraphDataStoreWrapper<re::MeshShadowPerSceneGenerationData>::~RenderGraphDataStoreWrapper(void *a1)
{
  *a1 = &unk_1F5D115D8;
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(a1 + 1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::HashTable<re::SceneWorldRootId,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::findEntry<re::SceneWorldRootId>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = *a2;
  v6 = 0x7FFFFFFF;
  if (!*a2)
  {
    goto LABEL_16;
  }

  v5 = a5 % *(a2 + 24);
  v7 = *(*(a2 + 8) + 4 * v5);
  if (v7 == 0x7FFFFFFF)
  {
    goto LABEL_16;
  }

  v8 = *(a2 + 16);
  v9 = v8 + 80 * v7;
  v11 = *(v9 + 8);
  v10 = *(v9 + 16);
  if (v11 == a3 && v10 == a4)
  {
    v6 = *(*(a2 + 8) + 4 * v5);
LABEL_16:
    v7 = 0x7FFFFFFF;
    goto LABEL_17;
  }

  v13 = *(v8 + 80 * v7) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v13 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v14 = v13;
      v15 = v8 + 80 * v13;
      v17 = *(v15 + 8);
      v16 = *(v15 + 16);
      if (v17 == a3 && v16 == a4)
      {
        break;
      }

      v13 = *(v8 + 80 * v14) & 0x7FFFFFFF;
      v7 = v14;
      if (v13 == 0x7FFFFFFF)
      {
        v7 = v14;
        goto LABEL_17;
      }
    }

    v6 = v14;
  }

LABEL_17:
  *result = a5;
  *(result + 8) = v5;
  *(result + 12) = v6;
  *(result + 16) = v7;
  return result;
}

uint64_t re::HashTable<re::SceneWorldRootId,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::SceneWorldRootId,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
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
  *(v9 + 72) = a3;
  ++*(a1 + 28);
  return v7 + 80 * v5;
}

void re::HashTable<re::SceneWorldRootId,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::SceneWorldRootId,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::init(v9, v4, a2);
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
      re::HashTable<re::SceneWorldRootId,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::move(a1, v9);
      re::HashTable<re::SceneWorldRootId,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::deinit(v9);
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

uint64_t *re::HashTable<re::SceneWorldRootId,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::move(uint64_t *result, uint64_t a2)
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
        v8 = re::HashTable<re::SceneWorldRootId,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::allocEntry(v4, *(v7 + v5 + 72) % *(v4 + 6));
        *(v8 + 8) = *(*(a2 + 16) + v5 + 8);
        v9 = *(a2 + 16) + v5;
        *(v8 + 24) = 0u;
        v8 += 24;
        *(v8 + 32) = 0;
        *(v8 + 16) = 0u;
        *(v8 + 36) = 0x7FFFFFFFLL;
        result = re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::swap(v8, (v9 + 24));
        v2 = *(a2 + 32);
      }

      v5 += 80;
    }
  }

  return result;
}

void *re::RenderGraphDataStoreWrapper<re::MeshShadowRenderingData>::~RenderGraphDataStoreWrapper(void *a1)
{
  *a1 = &unk_1F5D11618;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 4);
  return a1;
}

void re::RenderGraphDataStoreWrapper<re::MeshShadowRenderingData>::~RenderGraphDataStoreWrapper(void *a1)
{
  *a1 = &unk_1F5D11618;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 4);

  JUMPOUT(0x1E6906520);
}

uint64_t re::HashTable<unsigned long long,re::ProjectiveMeshShadowBuilder::buildShadowRenderingData(re::PersistentShadowState const&,re::PersistentShadowRenderingData const&,re::PerFrameAllocator &,re::ProjectiveMeshShadowBuilder::Input &,re::MeshShadowPerFrameUpdateData const&,re::DynamicArray<re::MeshShadowPerSceneUpdateData> const&,re::RenderFrame &)::PerUniqueScene,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::SceneShadowClusterID,re::internal::shadows::ShadowClusterEntityData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::init(v32, v9, v8);
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
            v17 = v13 + 48;
            do
            {
              if ((*(v17 - 48) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long long,re::ProjectiveMeshShadowBuilder::buildShadowRenderingData(re::PersistentShadowState const&,re::PersistentShadowRenderingData const&,re::PerFrameAllocator &,re::ProjectiveMeshShadowBuilder::Input &,re::MeshShadowPerFrameUpdateData const&,re::DynamicArray<re::MeshShadowPerSceneUpdateData> const&,re::RenderFrame &)::PerUniqueScene,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v17 + 48) % *(a1 + 24));
                v19 = *(v17 - 40);
                *(v18 + 48) = 0;
                *(v18 + 40) = 0;
                *(v18 + 24) = 0;
                *(v18 + 32) = 0;
                *(v18 + 8) = v19;
                *(v18 + 16) = 0;
                v20 = *(v17 - 24);
                *(v18 + 16) = *(v17 - 32);
                *(v18 + 24) = v20;
                *(v17 - 32) = 0;
                *(v17 - 24) = 0;
                v21 = *(v18 + 32);
                *(v18 + 32) = *(v17 - 16);
                *(v17 - 16) = v21;
                v22 = *(v18 + 48);
                *(v18 + 48) = *v17;
                *v17 = v22;
                ++*(v17 - 8);
                ++*(v18 + 40);
                *(v18 + 88) = 0;
                *(v18 + 64) = 0;
                *(v18 + 72) = 0;
                *(v18 + 56) = 0;
                *(v18 + 80) = 0;
                v23 = *(v17 + 16);
                *(v18 + 56) = *(v17 + 8);
                *(v18 + 64) = v23;
                *(v17 + 8) = 0;
                *(v17 + 16) = 0;
                v24 = *(v18 + 72);
                *(v18 + 72) = *(v17 + 24);
                *(v17 + 24) = v24;
                v25 = *(v18 + 88);
                *(v18 + 88) = *(v17 + 40);
                *(v17 + 40) = v25;
                ++*(v17 + 32);
                ++*(v18 + 80);
              }

              v17 += 104;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long long,re::ProjectiveMeshShadowBuilder::buildShadowRenderingData(re::PersistentShadowState const&,re::PersistentShadowRenderingData const&,re::PerFrameAllocator &,re::ProjectiveMeshShadowBuilder::Input &,re::MeshShadowPerFrameUpdateData const&,re::DynamicArray<re::MeshShadowPerSceneUpdateData> const&,re::RenderFrame &)::PerUniqueScene,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::~HashTable(v32);
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
    v27 = *(v26 + 104 * v5);
  }

  else
  {
    v26 = *(a1 + 16);
    v27 = *(v26 + 104 * v5);
    *(a1 + 36) = v27 & 0x7FFFFFFF;
  }

  v29 = v26 + 104 * v5;
  *v29 = v27 | 0x80000000;
  v30 = *(a1 + 8);
  *v29 = *(v30 + 4 * a2) | 0x80000000;
  *(v30 + 4 * a2) = v5;
  *(v29 + 96) = a3;
  ++*(a1 + 28);
  return v26 + 104 * v5;
}

void *re::RenderGraphDataStoreWrapper<re::MeshShadowPerSceneRenderingData>::~RenderGraphDataStoreWrapper(void *a1)
{
  *a1 = &unk_1F5D11658;
  re::DynamicArray<re::MeshShadowPerSceneRenderingData::PerWorld>::deinit((a1 + 1));
  return a1;
}

void re::RenderGraphDataStoreWrapper<re::MeshShadowPerSceneRenderingData>::~RenderGraphDataStoreWrapper(void *a1)
{
  *a1 = &unk_1F5D11658;
  re::DynamicArray<re::MeshShadowPerSceneRenderingData::PerWorld>::deinit((a1 + 1));

  JUMPOUT(0x1E6906520);
}

re *re::ARSegmentationEmitterCache::registerRenderGraphProvider(re::ARSegmentationEmitterCache *this, re::RenderGraphManager *a2)
{
  v11[5] = *MEMORY[0x1E69E9840];
  result = re::FontID::isValid((this + 64));
  if ((result & 1) == 0)
  {
    v5 = re::globalAllocators(result);
    v6 = v5[2];
    v11[0] = &unk_1F5D11920;
    v11[3] = v6;
    v11[4] = v11;
    v7 = re::globalAllocators(v5)[2];
    v10[0] = &unk_1F5D11978;
    v10[3] = v7;
    v10[4] = v10;
    re::RenderGraphManager::addProvider(a2, "ARSegmentationCache", v11, v10, 0, v9);
    v8 = re::StringID::operator=((this + 64), v9);
    *(this + 10) = v9[2];
    if (v9[0])
    {
      if (v9[0])
      {
      }
    }

    v9[0] = 0;
    v9[1] = &str_67;
    re::FunctionBase<24ul,void ()(char const*,char const*,re::RenderFrame &)>::destroyCallable(v10);
    return re::FunctionBase<24ul,unsigned long long ()(char const*,char const*,re::RenderFrame &)>::destroyCallable(v11);
  }

  return result;
}

void re::ARSegmentationEmitterCache::unregisterRenderGraphProvider(const StringID *this, re::RenderGraphManager *a2)
{
  if (re::FontID::isValid(&this[4]))
  {
    re::StringID::StringID(v5, this + 4);
    v5[2] = *&this[5].var0;
    v4 = re::RenderGraphManager::removeProvider(a2, v5);
    if (v5[0])
    {
      if (v5[0])
      {
      }
    }

    v5[0] = 0;
    v5[1] = &str_67;
    re::ProviderHandle::invalidate(&this[4]);
  }
}

void re::ARSegmentationEmitterCache::applyCachedDataToGraph(void **this, const re::ARSegmentationConnectionData *a2, id **a3, const char *a4)
{
  if (re::ARSegmentationEmitterCache::changeSpecification(this, a2))
  {
    re::ARSegmentationEmitterCache::reallocateCachedData(this, a3[1]);
  }

  re::ARSegmentationEmitterCache::setTexturesOnLanes(this, a3, a4);
}

uint64_t re::ARSegmentationEmitterCache::changeSpecification(_DWORD *a1, _DWORD *a2)
{
  v2 = a2[4];
  v3 = a2[5];
  v4 = a1[13] == v2 && a1[12] == v3;
  v5 = a2[9];
  v6 = a2[10];
  v8 = v4 && a1[14] == v5 && a1[15] == v6;
  v9 = !v8;
  if (!v8)
  {
    a1[12] = v3;
    a1[13] = v2;
    a1[14] = v5;
    a1[15] = v6;
  }

  return v9;
}

void re::ARSegmentationEmitterCache::reallocateCachedData(void **this, id *a2)
{
  v3 = a2 + 26;
  v4 = a2[26];
  v5 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
  [v5 setWidth_];
  [v5 setHeight_];
  [v5 setUsage_];
  [v5 setStorageMode_];
  [v5 setPixelFormat_];
  re::mtl::Device::makeTexture(v5, v3, &v6);
  NS::SharedPtr<MTL::Texture>::operator=(this + 3, &v6);
  if (v6)
  {
  }

  [v5 setPixelFormat_];
  re::mtl::Device::makeTexture(v5, v3, &v6);
  NS::SharedPtr<MTL::Texture>::operator=(this + 4, &v6);
  if (v6)
  {
  }

  [v5 setPixelFormat_];
  re::mtl::Device::makeTexture(v5, v3, &v6);
  NS::SharedPtr<MTL::Texture>::operator=(this + 5, &v6);
  if (v6)
  {
  }

  if (v5)
  {
  }
}

void re::ARSegmentationEmitterCache::setTexturesOnLanes(id *this, re::RenderFrame *a2, const char *a3)
{
  if (a3)
  {
    v6 = *a3;
    if (*a3)
    {
      v7 = a3[1];
      if (v7)
      {
        v8 = a3 + 2;
        do
        {
          v6 = 31 * v6 + v7;
          v9 = *v8++;
          v7 = v9;
        }

        while (v9);
      }

      v6 &= ~0x8000000000000000;
    }
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v17 = v6;
  v10 = this[3];
  v15 = re::kARSegmentationTextureFG & 0x7FFFFFFFFFFFFFFFLL;
  v16 = v10;
  re::RenderFrame::registerExternalTexture(a2, &v16, &v15, &v17, 0);
  if (v10)
  {
  }

  v11 = this[4];
  v14 = v11;
  v15 = re::kARSegmentationTextureBG & 0x7FFFFFFFFFFFFFFFLL;
  re::RenderFrame::registerExternalTexture(a2, &v14, &v15, &v17, 0);
  if (v11)
  {
  }

  v12 = this[5];
  v13 = v12;
  v15 = re::kARSegmentationTextureDilatedDepth & 0x7FFFFFFFFFFFFFFFLL;
  re::RenderFrame::registerExternalTexture(a2, &v13, &v15, &v17, 0);
  if (v12)
  {
  }

  re::RenderFrame::emitGraph(a2, "ARSegmentationCache", a3);
}

uint64_t re::createARSegmentationGenerateGuideData@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v15[2] = *MEMORY[0x1E69E9840];
  {
    v13 = a2;
    a2 = v13;
    if (v14)
    {
      re::createARSegmentationGenerateGuideData(re::RenderFrame &,re::RenderSceneContext &)::kARSegmentationDataTypeScopeHash = re::hashString("ARSegmentationData", v13);
      a2 = v13;
    }
  }

  v5 = 0x9E3779B97F4A7C17;
  v6 = re::createARSegmentationGenerateGuideData(re::RenderFrame &,re::RenderSceneContext &)::kARSegmentationDataTypeScopeHash;
  v7 = *(a2 + 6);
  v8 = strlen(v7);
  if (v8)
  {
    MurmurHash3_x64_128(v7, v8, 0, v15);
    v5 = ((v15[1] - 0x61C8864680B583E9 + (v15[0] << 6) + (v15[0] >> 2)) ^ v15[0]) - 0x61C8864680B583E9;
  }

  v9 = re::RenderGraphDataStore::tryGet<re::ARSegmentationInputData>(a1 + 32, ((v6 >> 2) + (v6 << 6) + v5) ^ v6);
  *a3 = &unk_1F5D119D0;
  *(a3 + 32) = 0x7300000046;
  *(a3 + 40) = 25;
  if (v9)
  {
    v10 = v9;
    *(a3 + 8) = [*(v9 + 8) width];
    *(a3 + 12) = [*(v10 + 32) height];
    *(a3 + 16) = [*(v10 + 8) width];
    result = [*(v10 + 8) height];
    v12 = -1;
  }

  else
  {
    *(a3 + 8) = 0x100000001;
    result = 1;
    *(a3 + 16) = 1;
    v12 = 1;
  }

  *(a3 + 20) = result;
  *(a3 + 24) = v12;
  *(a3 + 28) = v12;
  return result;
}

uint64_t re::ARSegmentationDilationNode::configure(void **this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  v12 = 0;
  v15 = 0;
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  v23 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v24 = 257;
  ComputePipelineState = re::getOrCreateComputePipelineState(*(a4 + 1), &v10);
  NS::SharedPtr<MTL::Buffer>::operator=(this + 38, ComputePipelineState);
  re::RenderGraphNode::configure(this, a2, a3, a4);
  if (v23)
  {

    v23 = 0;
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v18);
  if (v15 == 1 && v16)
  {
    if (BYTE8(v16))
    {
      (*(*v16 + 40))();
    }

    v16 = 0u;
    v17 = 0u;
  }

  if (v12 == 1 && v13)
  {
    if (BYTE8(v13))
    {
      (*(*v13 + 40))();
    }

    v14 = 0u;
    v13 = 0u;
  }

  result = v10;
  if (v10)
  {
    if (v11)
    {
      return (*(*v10 + 40))();
    }
  }

  return result;
}

void re::ARSegmentationDilationNode::setup(re::ARSegmentationDilationNode *this, re::RenderGraphBuilder *a2, re::RenderGraphDataStore *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0x500000000;
  v7 = xmmword_1E30474D0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  re::RenderGraphBuilder::write(a2, this + 288, &v6);
  re::RenderGraphNode::setup(this, a2, a3);
}

void re::ARSegmentationDilationNode::execute(id *this, re::RenderGraphContext *a2)
{
  v4 = re::RenderGraphDataStore::get<re::SceneScope>(*(a2 + 146), *(*(a2 + 5) + 48));
  v5 = v4;
  v6 = (v4 + 17);
  if (*(v4 + 16))
  {
    v7 = *(v4 + 24);
  }

  else
  {
    v7 = (v4 + 17);
  }

  v8 = re::RenderGraphContext::tryGetData<re::ARSegmentationInputData>(*(a2 + 146), v7);
  if (*(v5 + 16))
  {
    v9 = *(v5 + 24);
  }

  else
  {
    v9 = v6;
  }

  v10 = re::RenderGraphDataStore::tryGet<re::ARSegmentationExecuteData>(*(a2 + 146), v9);
  if (v8)
  {
    v11 = v10;
    v12 = [this[38] threadExecutionWidth];
    v13 = [this[38] maxTotalThreadsPerThreadgroup] / v12;
    v14 = *(v11 + 8);
    v19[2] = v14;
    v15 = v13 - 2 * v14;
    v19[1] = v15;
    v19[0] = v12 - 2 * v14;
    v16 = ([*(v8 + 8) width] + v19[0] - 1) / v19[0];
    v17 = ([*(v8 + 8) height] + v15 - 1) / v15;
    re::RenderGraphContext::acquireManagedComputeCommandEncoder(a2, 0, 0, &v18);
    [v18 setComputePipelineState:this[38]];
    [v18 setTexture:*(v8 + 8) atIndex:0];
    [v18 setTexture:*(v8 + 16) atIndex:1];
    re::RenderGraphContext::metalTexture(a2, (this + 36), 0, 0, v21);
    [v18 setTexture:v21[0] atIndex:2];
    if (v21[0])
    {
    }

    [v18 setBytes:v19 length:8 atIndex:0];
    [v18 setThreadgroupMemoryLength:4 * v13 * v12 atIndex:0];
    [v18 setThreadgroupMemoryLength:2 * v13 * v12 atIndex:1];
    v21[0] = v16;
    v21[1] = v17;
    v21[2] = 1;
    v20[0] = v12;
    v20[1] = v13;
    v20[2] = 1;
    [v18 dispatchThreadgroups:v21 threadsPerThreadgroup:v20];
  }
}

uint64_t re::RenderGraphContext::tryGetData<re::ARSegmentationInputData>(uint64_t a1, const char *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  MurmurHash3_x64_128("ARSegmentationData", 0x12uLL, 0, &v10);
  v4 = v10;
  v5 = v11;
  v6 = strlen(a2);
  if (v6)
  {
    MurmurHash3_x64_128(a2, v6, 0, &v10);
    v7 = ((v11 - 0x61C8864680B583E9 + (v10 << 6) + (v10 >> 2)) ^ v10) - 0x61C8864680B583E9;
  }

  else
  {
    v7 = 0x9E3779B97F4A7C17;
  }

  v8 = (v5 - 0x61C8864680B583E9 + (v4 << 6) + (v4 >> 2)) ^ v4;
  return re::RenderGraphDataStore::tryGet<re::ARSegmentationInputData>(a1, ((v8 >> 2) + (v8 << 6) + v7) ^ v8);
}

void re::ARSegmentationGenerateGuideNode::configure(void **this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  v13 = 0;
  v16 = 0;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  v22 = 0;
  v26 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v27 = 257;
  ComputePipelineState = re::getOrCreateComputePipelineState(*(a4 + 1), &v11);
  NS::SharedPtr<MTL::Buffer>::operator=(this + 40, ComputePipelineState);
  if (v26)
  {

    v26 = 0;
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v19);
  if (v16 == 1 && v17)
  {
    if (BYTE8(v17))
    {
      (*(*v17 + 40))();
    }

    v17 = 0u;
    v18 = 0u;
  }

  if (v13 == 1 && v14)
  {
    if (BYTE8(v14))
    {
      (*(*v14 + 40))();
    }

    v15 = 0u;
    v14 = 0u;
  }

  v9 = v11;
  if (v11 && (v12 & 1) != 0)
  {
    v9 = (*(*v11 + 40))();
  }

  v13 = 0;
  v16 = 0;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  v22 = 0;
  v26 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v27 = 257;
  v10 = re::getOrCreateComputePipelineState(*(a4 + 1), &v11);
  NS::SharedPtr<MTL::Buffer>::operator=(this + 41, v10);
  if (v26)
  {

    v26 = 0;
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v19);
  if (v16 == 1 && v17)
  {
    if (BYTE8(v17))
    {
      (*(*v17 + 40))();
    }

    v17 = 0u;
    v18 = 0u;
  }

  if (v13 == 1 && v14)
  {
    if (BYTE8(v14))
    {
      (*(*v14 + 40))();
    }

    v15 = 0u;
    v14 = 0u;
  }

  if (v11 && (v12 & 1) != 0)
  {
    (*(*v11 + 40))();
  }

  re::RenderGraphNode::configure(this, a2, a3, a4);
}

uint64_t re::ARSegmentationGenerateGuideNode::setup(re::ARSegmentationGenerateGuideNode *this, re::RenderGraphBuilder *a2, re::RenderGraphDataStore *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v6[0] = 0x500000000;
  v7 = xmmword_1E30474D0;
  v8 = 0;
  v9 = 0;
  re::RenderGraphBuilder::write(a2, this + 288, v6);
  *(v6 + 3) = 0;
  LODWORD(v6[0]) = 0;
  v6[1] = 2;
  re::RenderGraphBuilder::read(a2, this + 288, v6);
  v6[0] = 0x500000000;
  v7 = xmmword_1E30474D0;
  v8 = 0;
  v9 = 0;
  result = re::RenderGraphBuilder::write(a2, this + 304, v6);
  *(a2 + 593) = 1;
  return result;
}

void re::ARSegmentationGenerateGuideNode::execute(re::ARSegmentationGenerateGuideNode *this, re::RenderGraphContext *a2)
{
  v4 = re::RenderGraphDataStore::get<re::SceneScope>(*(a2 + 146), *(*(a2 + 5) + 48));
  v5 = v4;
  v6 = (v4 + 17);
  if (*(v4 + 16))
  {
    v7 = *(v4 + 24);
  }

  else
  {
    v7 = (v4 + 17);
  }

  v8 = re::RenderGraphContext::tryGetData<re::ARSegmentationInputData>(*(a2 + 146), v7);
  if (*(v5 + 16))
  {
    v9 = *(v5 + 24);
  }

  else
  {
    v9 = v6;
  }

  v10 = re::RenderGraphDataStore::tryGet<re::ARSegmentationExecuteData>(*(a2 + 146), v9);
  if (v8)
  {
    v24 = v10;
    re::RenderGraphContext::metalTexture(a2, this + 288, 0, 0, &v28);
    re::RenderGraphContext::metalTexture(a2, this + 304, 0, 0, &v27);
    re::RenderGraphContext::makeComputeCommandEncoder(a2, 0, 0, &v26);
    v11 = [v8[3] width];
    v12 = [v8[4] width];
    if (v12 < v11)
    {
      v11 = v12;
    }

    v25 = vcvtps_u32_f32(v11 / [v8[1] width]);
    [v26 setComputePipelineState:*(this + 40)];
    [v26 setTexture:v8[3] atIndex:0];
    [v26 setTexture:v8[4] atIndex:1];
    [v26 setTexture:v28 atIndex:2];
    [v26 setBytes:&v25 length:4 atIndex:0];
    v13 = [*(this + 40) threadExecutionWidth];
    v14 = [*(this + 40) maxTotalThreadsPerThreadgroup] / v13;
    v15 = (v13 + [v28 width] - 1) / v13;
    v16 = [v28 height];
    v32 = v15;
    v33 = (v14 + v16 - 1) / v14;
    v34 = 1;
    v29 = v13;
    v30 = v14;
    v31 = 1;
    [v26 dispatchThreadgroups:&v32 threadsPerThreadgroup:&v29];
    [v26 setComputePipelineState:*(this + 41)];
    [v26 setTexture:v28 atIndex:0];
    [v26 setTexture:v27 atIndex:1];
    [v26 setBytes:&v25 length:4 atIndex:0];
    v17 = [*(this + 41) threadExecutionWidth];
    v18 = [*(this + 41) maxTotalThreadsPerThreadgroup] / v17;
    v19 = (v17 + [v27 width] - 1) / v17;
    v20 = [v27 height];
    v32 = v19;
    v33 = (v18 + v20 - 1) / v18;
    v34 = 1;
    v29 = v17;
    v30 = v18;
    v31 = 1;
    [v26 dispatchThreadgroups:&v32 threadsPerThreadgroup:&v29];
    re::RenderGraphContext::finishEncoding<re::mtl::ComputeCommandEncoder &>(a2, &v26, 1);
    v21 = re::RenderFrameBox::get((*(*(a2 + 1) + 112) + 328), *(*a2 + 40));
    v22 = re::RenderFrame::currentCommandBuffer(v21);
    v23 = *(v24 + 32);
    ++**(v24 + 40);
    [*(v22 + 2) encodeSignalEvent:v23 value:?];

    if (v27)
    {
    }

    if (v28)
    {
    }
  }
}

uint64_t re::ARSegmentationDualGuidedFilterNode::setup(re::ARSegmentationDualGuidedFilterNode *this, re::RenderGraphBuilder *a2, re::RenderGraphDataStore *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  *(a2 + 593) = 1;
  *(v6 + 3) = 0;
  LODWORD(v6[0]) = 0;
  v6[1] = 2;
  re::RenderGraphBuilder::read(a2, this + 264, v6);
  v6[0] = 0x500000000;
  v7 = xmmword_1E30474D0;
  v8 = 0;
  v9 = 0;
  re::RenderGraphBuilder::write(a2, this + 280, v6);
  v6[0] = 0x500000000;
  v7 = xmmword_1E30474D0;
  v8 = 0;
  v9 = 0;
  return re::RenderGraphBuilder::write(a2, this + 296, v6);
}

void re::ARSegmentationDualGuidedFilterNode::execute(re::ARSegmentationDualGuidedFilterNode *this, re::RenderGraphContext *a2)
{
  v4 = re::RenderGraphDataStore::get<re::SceneScope>(*(a2 + 146), *(*(a2 + 5) + 48));
  v5 = v4;
  v6 = (v4 + 17);
  if (*(v4 + 16))
  {
    v7 = *(v4 + 24);
  }

  else
  {
    v7 = (v4 + 17);
  }

  v8 = re::RenderGraphContext::tryGetData<re::ARSegmentationInputData>(*(a2 + 146), v7);
  if (*(v5 + 16))
  {
    v9 = *(v5 + 24);
  }

  else
  {
    v9 = v6;
  }

  v10 = re::RenderGraphDataStore::tryGet<re::ARSegmentationExecuteData>(*(a2 + 146), v9);
  if (v8)
  {
    v11 = v10;
    v12 = re::RenderFrameBox::get((*(*(a2 + 1) + 112) + 328), *(*a2 + 40));
    v13 = (re::RenderFrame::currentCommandBuffer(v12) + 16);
    [*v13 encodeWaitForEvent:*(v11 + 32) value:**(v11 + 40)];
    re::RenderGraphContext::metalTexture(a2, this + 264, 0, 0, &v17);
    re::RenderGraphContext::metalTexture(a2, this + 280, 0, 0, &v16);
    re::RenderGraphContext::metalTexture(a2, this + 296, 0, 0, &v15);
    re::ar::DualGuidedFilter::encodeDualCoefficients((v11 + 24), v13, &v17, (v8 + 8), &v16, &v15);
    v14 = *(v11 + 32);
    ++**(v11 + 40);
    [*v13 encodeSignalEvent:v14 value:?];
    if (v15)
    {
    }

    if (v16)
    {
    }

    if (v17)
    {
    }
  }
}

uint64_t re::ARSegmentationCompositeNode::execute(re::ARSegmentationCompositeNode *this, re::RenderGraphContext *a2)
{
  v4 = re::RenderGraphDataStore::get<re::SceneScope>(*(a2 + 146), *(*(a2 + 5) + 48));
  v5 = v4;
  v6 = (v4 + 17);
  if (*(v4 + 16))
  {
    v7 = *(v4 + 24);
  }

  else
  {
    v7 = (v4 + 17);
  }

  v8 = re::RenderGraphContext::tryGetData<re::ARSegmentationInputData>(*(a2 + 146), v7);
  if (*(v5 + 16))
  {
    v9 = *(v5 + 24);
  }

  else
  {
    v9 = v6;
  }

  result = re::RenderGraphDataStore::tryGet<re::ARSegmentationExecuteData>(*(a2 + 146), v9);
  if (v8)
  {
    v11 = result;
    v12 = re::RenderFrameBox::get((*(*(a2 + 1) + 112) + 328), *(*a2 + 40));
    [*(re::RenderFrame::currentCommandBuffer(v12) + 2) encodeWaitForEvent:*(v11 + 32) value:**(v11 + 40)];
    v13 = *a2;
    v24 = 0x5739F99E7C0200E3;
    re::DynamicTextureTableAdd((v13 + 368), &v24, (v8 + 24));
    v14 = *a2;
    v24 = 0x239F7200ED1CA884;
    re::DynamicTextureTableAdd((v14 + 368), &v24, (v8 + 32));
    re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((*a2 + 16), 8uLL, 8uLL, &v24);
    v15 = v26;
    v16 = v25;
    *(v24 + v25) = *(v11 + 16);
    v17 = *a2;
    v23 = 0x3A4249E1C0094FBALL;
    v24 = v15;
    LODWORD(v25) = 0;
    v26 = v16;
    re::BufferTable::setBuffer((v17 + 480), &v23, &v24);
    re::RenderGraphFullscreenNode::executeInternal(this, a2, (this + 272));
    v18 = *a2;
    v24 = 0x5739F99E7C0200E3;
    re::DynamicTextureTableRemove((v18 + 368), &v24, v19);
    v20 = *a2;
    v24 = 0x239F7200ED1CA884;
    re::DynamicTextureTableRemove((v20 + 368), &v24, v21);
    v22 = *a2;
    v24 = 0x3A4249E1C0094FBALL;
    return re::BufferTable::removeBuffer((v22 + 480), &v24);
  }

  return result;
}

void *re::allocInfo_ARSegmentationConnectionData(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_512, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_512))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BF210, "ARSegmentationConnectionData");
    __cxa_guard_release(&_MergedGlobals_512);
  }

  return &unk_1EE1BF210;
}

void re::initInfo_ARSegmentationConnectionData(re *this, re::IntrospectionBase *a2)
{
  v46[0] = 0x938F17887DE011F6;
  v46[1] = "ARSegmentationConnectionData";
  if (v46[0])
  {
    if (v46[0])
    {
    }
  }

  *(this + 2) = v47;
  if ((atomic_load_explicit(&qword_1EE1BF118, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BF118);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_RenderGraphData(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "RenderGraphData";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1BF1C0 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_uint32_t(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "guideScratchWidth";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x800000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1BF1C8 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_uint32_t(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "guideScratchHeight";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0xC00000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1BF1D0 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::introspect_uint32_t(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "guideWidth";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x1000000003;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1BF1D8 = v20;
      v21 = re::introspectionAllocator(v20);
      v23 = re::introspect_uint32_t(1, v22);
      v24 = (*(*v21 + 32))(v21, 72, 8);
      *v24 = 1;
      *(v24 + 8) = "guideHeight";
      *(v24 + 16) = v23;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0x1400000004;
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      *(v24 + 56) = 0;
      *(v24 + 64) = 0;
      qword_1EE1BF1E0 = v24;
      v25 = re::introspectionAllocator(v24);
      v27 = re::introspect_uint32_t(1, v26);
      v28 = (*(*v25 + 32))(v25, 72, 8);
      *v28 = 1;
      *(v28 + 8) = "compositionAlphaWidth";
      *(v28 + 16) = v27;
      *(v28 + 24) = 0;
      *(v28 + 32) = 0x1800000005;
      *(v28 + 40) = 0;
      *(v28 + 48) = 0;
      *(v28 + 56) = 0;
      *(v28 + 64) = 0;
      qword_1EE1BF1E8 = v28;
      v29 = re::introspectionAllocator(v28);
      v31 = re::introspect_uint32_t(1, v30);
      v32 = (*(*v29 + 32))(v29, 72, 8);
      *v32 = 1;
      *(v32 + 8) = "compositionAlphaHeight";
      *(v32 + 16) = v31;
      *(v32 + 24) = 0;
      *(v32 + 32) = 0x1C00000006;
      *(v32 + 40) = 0;
      *(v32 + 48) = 0;
      *(v32 + 56) = 0;
      *(v32 + 64) = 0;
      qword_1EE1BF1F0 = v32;
      v33 = re::introspectionAllocator(v32);
      v35 = re::mtl::introspect_PixelFormat(1, v34);
      v36 = (*(*v33 + 32))(v33, 72, 8);
      *v36 = 1;
      *(v36 + 8) = "guideFormat";
      *(v36 + 16) = v35;
      *(v36 + 24) = 0;
      *(v36 + 32) = 0x2000000007;
      *(v36 + 40) = 0;
      *(v36 + 48) = 0;
      *(v36 + 56) = 0;
      *(v36 + 64) = 0;
      qword_1EE1BF1F8 = v36;
      v37 = re::introspectionAllocator(v36);
      v39 = re::mtl::introspect_PixelFormat(1, v38);
      v40 = (*(*v37 + 32))(v37, 72, 8);
      *v40 = 1;
      *(v40 + 8) = "coefficientsFormat";
      *(v40 + 16) = v39;
      *(v40 + 24) = 0;
      *(v40 + 32) = 0x2400000008;
      *(v40 + 40) = 0;
      *(v40 + 48) = 0;
      *(v40 + 56) = 0;
      *(v40 + 64) = 0;
      qword_1EE1BF200 = v40;
      v41 = re::introspectionAllocator(v40);
      v43 = re::mtl::introspect_PixelFormat(1, v42);
      v44 = (*(*v41 + 32))(v41, 72, 8);
      *v44 = 1;
      *(v44 + 8) = "dilatedFormat";
      *(v44 + 16) = v43;
      *(v44 + 24) = 0;
      *(v44 + 32) = 0x2800000009;
      *(v44 + 40) = 0;
      *(v44 + 48) = 0;
      *(v44 + 56) = 0;
      *(v44 + 64) = 0;
      qword_1EE1BF208 = v44;
      __cxa_guard_release(&qword_1EE1BF118);
    }
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 10;
  *(this + 8) = &qword_1EE1BF1C0;
  *(this + 9) = re::internal::defaultConstruct<re::ARSegmentationConnectionData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ARSegmentationConnectionData>;
  *(this + 13) = re::internal::defaultConstructV2<re::ARSegmentationConnectionData>;
  *(this + 14) = re::internal::defaultDestructV2<re::ARSegmentationConnectionData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v45 = v47;
}

void *re::allocInfo_ARSegmentationDilationNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BF120, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BF120))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BF2A0, "ARSegmentationDilationNode");
    __cxa_guard_release(&qword_1EE1BF120);
  }

  return &unk_1EE1BF2A0;
}

void re::initInfo_ARSegmentationDilationNode(re *this, re::IntrospectionBase *a2)
{
  v18[0] = 0xCBB585821370F806;
  v18[1] = "ARSegmentationDilationNode";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE1BF128, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BF128);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_RenderGraphNode(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "RenderGraphNode";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1BF168 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_AssetHandle(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "library";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x10800000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1BF170 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_RenderGraphTargetHandle(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "dilatedDepthTexture";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x12000000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1BF178 = v16;
      __cxa_guard_release(&qword_1EE1BF128);
    }
  }

  *(this + 2) = 0x13800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1BF168;
  *(this + 9) = re::internal::defaultConstruct<re::ARSegmentationDilationNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ARSegmentationDilationNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::ARSegmentationDilationNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::ARSegmentationDilationNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v17 = v19;
}

double re::internal::defaultConstruct<re::ARSegmentationDilationNode>(int a1, int a2, re::RenderGraphNode *this)
{
  v3 = re::RenderGraphNode::RenderGraphNode(this);
  *v3 = &unk_1F5D11680;
  *(v3 + 264) = 0u;
  *(v3 + 280) = 0u;
  result = NAN;
  *(v3 + 37) = -1;
  *(v3 + 38) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::ARSegmentationDilationNode>(re::RenderGraphNode *a1)
{
  v1 = re::RenderGraphNode::RenderGraphNode(a1);
  *v1 = &unk_1F5D11680;
  *(v1 + 264) = 0u;
  *(v1 + 280) = 0u;
  result = NAN;
  *(v1 + 37) = -1;
  *(v1 + 38) = 0;
  return result;
}

void *re::allocInfo_ARSegmentationGenerateGuideNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BF130, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BF130))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BF330, "ARSegmentationGenerateGuideNode");
    __cxa_guard_release(&qword_1EE1BF130);
  }

  return &unk_1EE1BF330;
}

void re::initInfo_ARSegmentationGenerateGuideNode(re *this, re::IntrospectionBase *a2)
{
  v22[0] = 0x475A9A5066DB65ECLL;
  v22[1] = "ARSegmentationGenerateGuideNode";
  if (v22[0])
  {
    if (v22[0])
    {
    }
  }

  *(this + 2) = v23;
  if ((atomic_load_explicit(&qword_1EE1BF138, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BF138);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_RenderGraphNode(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "RenderGraphNode";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1BF180 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_AssetHandle(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "library";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x10800000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1BF188 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_RenderGraphTargetHandle(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "guideScratchTexture";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x12000000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1BF190 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::introspect_RenderGraphTargetHandle(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "guideTexture";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x13000000003;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1BF198 = v20;
      __cxa_guard_release(&qword_1EE1BF138);
    }
  }

  *(this + 2) = 0x15000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1BF180;
  *(this + 9) = re::internal::defaultConstruct<re::ARSegmentationGenerateGuideNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ARSegmentationGenerateGuideNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::ARSegmentationGenerateGuideNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::ARSegmentationGenerateGuideNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v21 = v23;
}

double re::internal::defaultConstruct<re::ARSegmentationGenerateGuideNode>(int a1, int a2, re::RenderGraphNode *this)
{
  v3 = re::RenderGraphNode::RenderGraphNode(this);
  *v3 = &unk_1F5D11728;
  *(v3 + 264) = 0u;
  *(v3 + 280) = 0u;
  result = NAN;
  *(v3 + 37) = -1;
  *(v3 + 38) = 0;
  *(v3 + 39) = -1;
  *(v3 + 40) = 0;
  *(v3 + 41) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::ARSegmentationGenerateGuideNode>(re::RenderGraphNode *a1)
{
  v1 = re::RenderGraphNode::RenderGraphNode(a1);
  *v1 = &unk_1F5D11728;
  *(v1 + 264) = 0u;
  *(v1 + 280) = 0u;
  result = NAN;
  *(v1 + 37) = -1;
  *(v1 + 38) = 0;
  *(v1 + 39) = -1;
  *(v1 + 40) = 0;
  *(v1 + 41) = 0;
  return result;
}

void *re::allocInfo_ARSegmentationDualGuidedFilterNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BF140, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BF140))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BF3C0, "ARSegmentationDualGuidedFilterNode");
    __cxa_guard_release(&qword_1EE1BF140);
  }

  return &unk_1EE1BF3C0;
}

void re::initInfo_ARSegmentationDualGuidedFilterNode(re *this, re::IntrospectionBase *a2)
{
  v22[0] = 0x9399778B94A360A2;
  v22[1] = "ARSegmentationDualGuidedFilterNode";
  if (v22[0])
  {
    if (v22[0])
    {
    }
  }

  *(this + 2) = v23;
  if ((atomic_load_explicit(&qword_1EE1BF148, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BF148);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_RenderGraphNode(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "RenderGraphNode";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1BF1A0 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_RenderGraphTargetHandle(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "guideTexture";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x10800000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1BF1A8 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_RenderGraphTargetHandle(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "coefficientsTextureFG";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x11800000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1BF1B0 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::introspect_RenderGraphTargetHandle(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "coefficientsTextureBG";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x12800000003;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1BF1B8 = v20;
      __cxa_guard_release(&qword_1EE1BF148);
    }
  }

  *(this + 2) = 0x13800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1BF1A0;
  *(this + 9) = re::internal::defaultConstruct<re::ARSegmentationDualGuidedFilterNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ARSegmentationDualGuidedFilterNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::ARSegmentationDualGuidedFilterNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::ARSegmentationDualGuidedFilterNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v21 = v23;
}

double re::internal::defaultConstruct<re::ARSegmentationDualGuidedFilterNode>(int a1, int a2, re::RenderGraphNode *this)
{
  v3 = re::RenderGraphNode::RenderGraphNode(this);
  *v3 = &unk_1F5D117D0;
  *(v3 + 33) = 0;
  result = NAN;
  *(v3 + 34) = -1;
  *(v3 + 35) = 0;
  *(v3 + 36) = -1;
  *(v3 + 37) = 0;
  *(v3 + 38) = -1;
  return result;
}

double re::internal::defaultConstructV2<re::ARSegmentationDualGuidedFilterNode>(re::RenderGraphNode *a1)
{
  v1 = re::RenderGraphNode::RenderGraphNode(a1);
  *v1 = &unk_1F5D117D0;
  *(v1 + 33) = 0;
  result = NAN;
  *(v1 + 34) = -1;
  *(v1 + 35) = 0;
  *(v1 + 36) = -1;
  *(v1 + 37) = 0;
  *(v1 + 38) = -1;
  return result;
}

void *re::allocInfo_ARSegmentationCompositeNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BF150, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BF150))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BF450, "ARSegmentationCompositeNode");
    __cxa_guard_release(&qword_1EE1BF150);
  }

  return &unk_1EE1BF450;
}

void re::initInfo_ARSegmentationCompositeNode(re *this, re::IntrospectionBase *a2)
{
  v10[0] = 0x9962540693657AECLL;
  v10[1] = "ARSegmentationCompositeNode";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1BF160, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BF160);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_RenderGraphFullscreenNode(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "RenderGraphFullscreenNode";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1BF158 = v8;
      __cxa_guard_release(&qword_1EE1BF160);
    }
  }

  *(this + 2) = 0x1F800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1BF158;
  *(this + 9) = re::internal::defaultConstruct<re::ARSegmentationCompositeNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ARSegmentationCompositeNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::ARSegmentationCompositeNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::ARSegmentationCompositeNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v9 = v11;
}

double re::internal::defaultConstruct<re::ARSegmentationCompositeNode>(int a1, int a2, re::RenderGraphFullscreenNode *this)
{
  *(this + 58) = 0;
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  v3 = re::RenderGraphFullscreenNode::RenderGraphFullscreenNode(this);
  *v3 = &unk_1F5D11878;
  *(v3 + 59) = 0;
  result = NAN;
  *(v3 + 60) = -1;
  *(v3 + 61) = 0;
  *(v3 + 62) = -1;
  return result;
}

double re::internal::defaultConstructV2<re::ARSegmentationCompositeNode>(uint64_t a1)
{
  *(a1 + 464) = 0;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
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
  v1 = re::RenderGraphFullscreenNode::RenderGraphFullscreenNode(a1);
  *v1 = &unk_1F5D11878;
  *(v1 + 59) = 0;
  result = NAN;
  *(v1 + 60) = -1;
  *(v1 + 61) = 0;
  *(v1 + 62) = -1;
  return result;
}

void re::ARSegmentationDilationNode::~ARSegmentationDilationNode(re::ARSegmentationDilationNode *this)
{
  re::ARSegmentationDilationNode::~ARSegmentationDilationNode(this);

  JUMPOUT(0x1E6906520);
}

{
  v2 = *(this + 38);
  if (v2)
  {

    *(this + 38) = 0;
  }

  re::AssetHandle::~AssetHandle((this + 264));

  re::RenderGraphNode::~RenderGraphNode(this);
}

void re::ARSegmentationGenerateGuideNode::~ARSegmentationGenerateGuideNode(re::ARSegmentationGenerateGuideNode *this)
{
  re::ARSegmentationGenerateGuideNode::~ARSegmentationGenerateGuideNode(this);

  JUMPOUT(0x1E6906520);
}

{
  v2 = *(this + 41);
  if (v2)
  {

    *(this + 41) = 0;
  }

  v3 = *(this + 40);
  if (v3)
  {

    *(this + 40) = 0;
  }

  re::AssetHandle::~AssetHandle((this + 264));

  re::RenderGraphNode::~RenderGraphNode(this);
}

void re::ARSegmentationDualGuidedFilterNode::~ARSegmentationDualGuidedFilterNode(id *this)
{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::ARSegmentationCompositeNode::~ARSegmentationCompositeNode(id *this)
{
  re::RenderGraphFullscreenNode::~RenderGraphFullscreenNode(this);

  JUMPOUT(0x1E6906520);
}

void *re::internal::Callable<re::ARSegmentationEmitterCache::registerRenderGraphProvider(re::RenderGraphManager &)::$_0,unsigned long long ()(char const*,char const*,re::RenderFrame &)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D11920;
  return result;
}

void *re::internal::Callable<re::ARSegmentationEmitterCache::registerRenderGraphProvider(re::RenderGraphManager &)::$_0,unsigned long long ()(char const*,char const*,re::RenderFrame &)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D11920;
  return result;
}

void re::internal::Callable<re::ARSegmentationEmitterCache::registerRenderGraphProvider(re::RenderGraphManager &)::$_1,void ()(char const*,char const*,re::RenderFrame &)>::operator()(int a1, int a2, char **a3, re::RenderFrame *this)
{
  v5 = *a3;
  if (*a3)
  {
    v6 = 0x9E3779B97F4A7C17;
    v7 = *v5;
    if (*v5)
    {
      v8 = v5[1];
      if (v8)
      {
        v9 = (v5 + 2);
        do
        {
          v7 = 31 * v7 + v8;
          v10 = *v9++;
          v8 = v10;
        }

        while (v10);
      }

      v6 = (v7 & 0x7FFFFFFFFFFFFFFFLL) - 0x61C8864680B583E9;
    }
  }

  else
  {
    v6 = 0x1E3779B97F4A7C16;
  }

  v19 = 0x200000000;
  v20 = -1;
  v21 = -1;
  v22 = -1;
  v23 = 0;
  v24 = 0;
  __asm { FMOV            V0.2S, #1.0 }

  v25 = _D0;
  v26 = xmmword_1E30A3B60;
  v27 = 0x2000000000;
  v28 = -1;
  v29 = -1;
  v30 = -1;
  v32 = 0;
  v18 = 2;
  v31 = (v6 + (re::kARSegmentationTextureFG << 6) + ((re::kARSegmentationTextureFG & 0x7FFFFFFFFFFFFFFFuLL) >> 2)) ^ re::kARSegmentationTextureFG & 0x7FFFFFFFFFFFFFFFLL;
  re::RenderFrame::createTarget(this, &v18, off_1ECF17AF0, v17);
  v16 = 0x3A41DA2B27DFFE0CLL;
  re::RenderFrame::addTargetOutput(this, &v16, v17, v5);
  v31 = (v6 + (re::kARSegmentationTextureBG << 6) + ((re::kARSegmentationTextureBG & 0x7FFFFFFFFFFFFFFFuLL) >> 2)) ^ re::kARSegmentationTextureBG & 0x7FFFFFFFFFFFFFFFLL;
  re::RenderFrame::createTarget(this, &v18, off_1ECF17B00, v17);
  v16 = 0x3A41DA2B27DFFD90;
  re::RenderFrame::addTargetOutput(this, &v16, v17, v5);
  v31 = (v6 + (re::kARSegmentationTextureDilatedDepth << 6) + ((re::kARSegmentationTextureDilatedDepth & 0x7FFFFFFFFFFFFFFFuLL) >> 2)) ^ re::kARSegmentationTextureDilatedDepth & 0x7FFFFFFFFFFFFFFFLL;
  re::RenderFrame::createTarget(this, &v18, off_1ECF17B10, v17);
  v16 = 0x5F7D65B7480CA957;
  re::RenderFrame::addTargetOutput(this, &v16, v17, v5);
}

void *re::internal::Callable<re::ARSegmentationEmitterCache::registerRenderGraphProvider(re::RenderGraphManager &)::$_1,void ()(char const*,char const*,re::RenderFrame &)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D11978;
  return result;
}

void *re::internal::Callable<re::ARSegmentationEmitterCache::registerRenderGraphProvider(re::RenderGraphManager &)::$_1,void ()(char const*,char const*,re::RenderFrame &)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D11978;
  return result;
}

uint64_t re::RenderGraphDataStore::tryGet<re::ARSegmentationInputData>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re23ARSegmentationInputDataE";
  if (("N2re23ARSegmentationInputDataE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re23ARSegmentationInputDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  if (!*(a1 + 16))
  {
    return 0;
  }

  v6 = (a2 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
  v7 = *(*(a1 + 24) + 4 * (v6 % *(a1 + 40)));
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 32);
  while (*(v8 + 24 * v7 + 8) != v6)
  {
    v7 = *(v8 + 24 * v7) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return *(v8 + 24 * v7 + 16);
}

uint64_t re::RenderGraphDataStore::tryGet<re::ARSegmentationExecuteData>(uint64_t a1, const char *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  MurmurHash3_x64_128("ARSegmentationData", 0x12uLL, 0, &v17);
  v4 = v17;
  v5 = v18;
  v6 = strlen(a2);
  if (v6)
  {
    MurmurHash3_x64_128(a2, v6, 0, &v17);
    v7 = ((v18 - 0x61C8864680B583E9 + (v17 << 6) + (v17 >> 2)) ^ v17) - 0x61C8864680B583E9;
  }

  else
  {
    v7 = 0x9E3779B97F4A7C17;
  }

  v8 = "N2re25ARSegmentationExecuteDataE";
  if (("N2re25ARSegmentationExecuteDataE" & 0x8000000000000000) != 0)
  {
    v9 = ("N2re25ARSegmentationExecuteDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v10 = 5381;
    do
    {
      v8 = v10;
      v11 = *v9++;
      v10 = (33 * v10) ^ v11;
    }

    while (v11);
  }

  if (!*(a1 + 16))
  {
    return 0;
  }

  v12 = (v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9) ^ v4;
  v13 = ((((v12 >> 2) + (v12 << 6) + v7) ^ v12) - 0x61C8864680B583E9 + (v8 << 6) + (v8 >> 2)) ^ v8;
  v14 = *(*(a1 + 24) + 4 * (v13 % *(a1 + 40)));
  if (v14 == 0x7FFFFFFF)
  {
    return 0;
  }

  v15 = *(a1 + 32);
  while (*(v15 + 24 * v14 + 8) != v13)
  {
    v14 = *(v15 + 24 * v14) & 0x7FFFFFFF;
    if (v14 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return *(v15 + 24 * v14 + 16);
}

void re::RenderGraphUploadPostParams::execute(re::RenderGraphUploadPostParams *this, re::RenderGraphContext *a2)
{
  if (*(this + 264) == 1 && (*(this + 265) & 1) == 0)
  {
    v4 = re::RenderGraphDataStore::add<re::TonemapParametersData>(*(a2 + 146), *(*(a2 + 5) + 48));
    re::TonemapUserParameters::computeRenderParameters((this + 268), &v29);
    v5 = v33;
    *(v4 + 88) = v34;
    v6 = v36;
    *(v4 + 104) = v35;
    *(v4 + 120) = v6;
    v7 = v29;
    *(v4 + 24) = v30;
    v8 = v32;
    *(v4 + 40) = v31;
    *(v4 + 56) = v8;
    *(v4 + 72) = v5;
    *(v4 + 136) = v37;
    *(v4 + 8) = v7;
  }

  if (*(this + 266) == 1)
  {
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    re::BloomUserParameters::computeRenderParameters((this + 328), &v29);
    re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((*a2 + 16), 0x98uLL, 4uLL, &v24);
    v9 = v26;
    v22 = v25;
    v10 = &v24[v25];
    *(v10 + 6) = v35;
    *(v10 + 7) = v36;
    *(v10 + 8) = v37;
    *(v10 + 18) = v38;
    *(v10 + 2) = v31;
    *(v10 + 3) = v32;
    *(v10 + 4) = v33;
    *(v10 + 5) = v34;
    *v10 = v29;
    *(v10 + 1) = v30;
    v11 = re::RenderGraphDataStore::add<re::RenderGraphDataStoreWrapper<re::BloomExecData>>(*(a2 + 146), *(*(a2 + 5) + 48));
    *(v11 + 48) = HIDWORD(v29);
    v24 = v9;
    v27 = 0;
    v28 = v22;
    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v11 + 8, &v24);
    *(v11 + 40) = v28;
    if (v27 != -1)
    {
      (off_1F5D11B50[v27])(&v39, &v24);
    }
  }

  if (*(this + 267) == 1)
  {
    v12 = *(a2 + 2);
    v13 = xmmword_1E30476A0;
    v14 = xmmword_1E3047680;
    v15 = xmmword_1E3047670;
    if (v12[112] == 1 && *v12 != v12[1] && v12[113] == 1)
    {
      v15 = *(v12 + 1);
      v14 = *(v12 + 2);
      v13 = *(v12 + 3);
    }

    v19 = v15;
    v20 = v14;
    v21 = v13;
    re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((*a2 + 16), 0x30uLL, 0x10uLL, &v29);
    v16 = v30;
    v23 = *(&v29 + 1);
    v17 = (v29 + DWORD2(v29));
    *v17 = v19;
    v17[1] = v20;
    v17[2] = v21;
    v18 = re::RenderGraphDataStore::add<re::RenderGraphDataStoreWrapper<re::ColorExecData>>(*(a2 + 146), *(*(a2 + 5) + 48));
    *&v29 = v16;
    DWORD2(v30) = 0;
    *&v31 = v23;
    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v18 + 8, &v29);
    *(v18 + 40) = v31;
    if (DWORD2(v30) != -1)
    {
      (off_1F5D11B50[DWORD2(v30)])(&v24, &v29);
    }
  }
}

void re::RenderGraphCombinedPostProcessNode::configure(re::RenderGraphCombinedPostProcessNode *this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  v8 = *(this + 54);
  if (v8)
  {
    v9 = 0;
    for (i = 0; i < v8; ++i)
    {
      v11 = (*(this + 56) + v9);
      if (*(v11 + 1))
      {
        if (v8 <= i)
        {
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        re::AssetHandle::loadAsync(v11);
        v8 = *(this + 54);
      }

      if (i > 0xE)
      {
        break;
      }

      v9 += 24;
    }
  }

  v12 = *(this + 33);
  if (v12 > 0xF)
  {
    if (v12 == 16)
    {
      goto LABEL_12;
    }
  }

  else
  {
    bzero(this + 8 * v12 + 280, 128 - 8 * v12);
  }

  *(this + 33) = 16;
  ++*(this + 68);
LABEL_12:

  re::RenderGraphNode::configure(this, a2, a3, a4);
}

uint64_t re::RenderGraphCombinedPostProcessNode::setup(re::RenderGraphCombinedPostProcessNode *this, re::RenderGraphBuilder *a2, re::RenderGraphDataStore *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (!*(this + 25))
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_7;
  }

  re::RenderGraphBuilder::read(a2, *(this + 27), *(this + 27) + 16);
  if (*(this + 410) == 1)
  {
    *(&v7 + 3) = 0;
    LODWORD(v7) = 0;
    *(&v7 + 1) = 2;
    re::RenderGraphBuilder::read(a2, this + 456, &v7);
  }

  if (!*(this + 30))
  {
LABEL_7:
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v5 = *(this + 32);
  *&v7 = 0x100000000;
  v8 = xmmword_1E30474D0;
  LOWORD(v9) = 0;
  *(&v9 + 4) = 0;
  return re::RenderGraphBuilder::write(a2, v5, &v7);
}

void re::RenderGraphCombinedPostProcessNode::execute(re::RenderGraphCombinedPostProcessNode *this, re::RenderGraphContext *a2)
{
  v100 = *MEMORY[0x1E69E9840];
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v87, 5042, 0);
  if (*(this + 408) == 1)
  {
    if ((atomic_load_explicit(&qword_1EE1BF4E8, memory_order_acquire) & 1) == 0)
    {
      v64 = __cxa_guard_acquire(&qword_1EE1BF4E8);
      if (v64)
      {
        _MergedGlobals_513 = re::getCombinedScopeHash(v64, v65, v66);
        __cxa_guard_release(&qword_1EE1BF4E8);
      }
    }

    if (*(this + 409) == 1)
    {
      v7 = _MergedGlobals_513;
      v8 = *(a2 + 146);
    }

    else
    {
      v8 = *(a2 + 146);
      v7 = *(*(a2 + 5) + 48);
    }

    v9 = re::RenderGraphDataStore::tryGet<re::TonemapParametersData>(v8, v7);
    if (!v9)
    {
      v38 = *re::graphicsLogObjects(0);
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_83;
      }

      LOWORD(v95) = 0;
      v39 = "RenderGraphCombinedPostProcessNode expects TonemapParametersData from the render graph data store but there isn't any. Will skip the execution.";
LABEL_48:
      _os_log_impl(&dword_1E1C61000, v38, OS_LOG_TYPE_DEFAULT, v39, &v95, 2u);
      goto LABEL_83;
    }

    re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((*a2 + 16), 0x84uLL, 4uLL, &v95);
    v10 = v96;
    v11 = *(&v95 + 1);
    v12 = v95 + DWORD2(v95);
    *v12 = *(v9 + 8);
    v13 = *(v9 + 24);
    v14 = *(v9 + 40);
    v15 = *(v9 + 72);
    *(v12 + 48) = *(v9 + 56);
    *(v12 + 64) = v15;
    *(v12 + 16) = v13;
    *(v12 + 32) = v14;
    v16 = *(v9 + 88);
    v17 = *(v9 + 104);
    v18 = *(v9 + 120);
    *(v12 + 128) = *(v9 + 136);
    *(v12 + 96) = v17;
    *(v12 + 112) = v18;
    *(v12 + 80) = v16;
    v19 = *a2;
    *v89 = 0x1C6D7B14F4E32CD0;
    *&v95 = v10;
    DWORD2(v95) = 0;
    *&v96 = v11;
    re::BufferTable::setBuffer((v19 + 480), v89, &v95);
  }

  if (*(this + 410) != 1)
  {
    goto LABEL_15;
  }

  v20 = re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::BloomExecData>>(*(a2 + 146), *(*(a2 + 5) + 48));
  if (!v20)
  {
    v38 = *re::graphicsLogObjects(0);
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_83;
    }

    LOWORD(v95) = 0;
    v39 = "RenderGraphCombinedPostProcessNode expects BloomExecDataWrapper from the render graph data store but there isn't any. Will skip the execution. Did you forget to add a upload node?";
    goto LABEL_48;
  }

  v21 = v20;
  v22 = *a2;
  *&v95 = 0x12DFD1912E60118;
  re::RenderGraphContext::metalTexture(a2, this + 456, 0, 0, v88);
  re::makeView2DTo2DArray(v88, v89);
  re::DynamicTextureTableAdd((v22 + 368), &v95, v89);
  if (*v89)
  {

    *v89 = 0;
  }

  if (v88[0])
  {
  }

  v23 = *a2;
  *&v95 = 0x127DBE076EDDD69;
  re::BufferTable::setBuffer((v23 + 480), &v95, (v21 + 8));
LABEL_15:
  if (*(this + 412) != 1)
  {
    goto LABEL_18;
  }

  v24 = re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::ColorExecData>>(*(a2 + 146), *(*(a2 + 5) + 48));
  if (!v24)
  {
    v38 = *re::graphicsLogObjects(0);
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_83;
    }

    LOWORD(v95) = 0;
    v39 = "RenderGraphCombinedPostProcessNode expects ColorExecDataWrapper from the render graph data store but there isn't any. Will skip the execution. Did you forget to add a upload node?";
    goto LABEL_48;
  }

  v25 = *a2;
  *&v95 = 0x775E00AD509B0A76;
  re::BufferTable::setBuffer((v25 + 480), &v95, (v24 + 8));
LABEL_18:
  v26 = v89;
  v27 = *a2;
  v69[0] = 0xA3521511A35B9;
  if (!*(this + 25))
  {
LABEL_87:
    v88[0] = 0;
    *(v26 + 176) = 0u;
    *(v26 + 192) = 0u;
    *(v26 + 144) = 0u;
    *(v26 + 160) = 0u;
    *(v26 + 128) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v89 = 136315906;
    *(v26 + 4) = "operator[]";
    *&v89[12] = 1024;
    *(v26 + 14) = 789;
    *&v89[18] = 2048;
    *(v26 + 20) = 0;
    *&v89[28] = 2048;
    *(v26 + 30) = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_88:
    v88[0] = 0;
    this = v89;
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v95 = 0u;
    a2 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v89 = 136315906;
    *&v89[4] = "operator[]";
    *&v89[12] = 1024;
    *&v89[14] = 789;
    *&v89[18] = 2048;
    *&v89[20] = v2;
    *&v89[28] = 2048;
    *&v89[30] = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_89:
    re::internal::assertLog(6, v47, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_90:
    v56 = re::DrawCallRecorder::allocateDrawCallRecorderGroup(a2 + 169, *(this + 2), v27);
LABEL_71:
    v74 = v56;
    v75 = 0;
    re::RenderGraphContext::getDefaultEncodeDrawCallDataStoreArgs(a2, v88);
    re::RenderGraphContext::encodeDrawCalls(a2, v88, v69);
    v57 = *a2;
    v88[0] = v3;
    re::DynamicTextureTableRemove((v57 + 368), v88, v58);
    if (*(this + 408) == 1)
    {
      v60 = *a2;
      v88[0] = 0x1C6D7B14F4E32CD0;
      re::BufferTable::removeBuffer((v60 + 480), v88);
    }

    if (*(this + 410) == 1)
    {
      v61 = *a2;
      v88[0] = 0x12DFD1912E60118;
      re::DynamicTextureTableRemove((v61 + 368), v88, v59);
      v62 = *a2;
      v88[0] = 0x127DBE076EDDD69;
      re::BufferTable::removeBuffer((v62 + 480), v88);
    }

    if (*(this + 412) == 1)
    {
      v63 = *a2;
      v88[0] = 0x775E00AD509B0A76;
      re::BufferTable::removeBuffer((v63 + 480), v88);
    }

    if (v81[0] && v83)
    {
      (*(*v81[0] + 40))();
    }

    v40 = v84[0];
    if (!v84[0])
    {
      goto LABEL_83;
    }

    v41 = v86;
    if (!v86)
    {
      goto LABEL_83;
    }

LABEL_82:
    (*(*v40 + 40))(v40, v41);
    goto LABEL_83;
  }

  re::RenderGraphContext::metalTexture(a2, *(this + 27), 0, 0, v89);
  re::makeView2DTo2DArray(v89, &v95);
  re::DynamicTextureTableAdd(v27 + 46, v69, &v95);
  if (v95)
  {

    *&v95 = 0;
  }

  if (*v89)
  {
  }

  v27 = *(this + 408);
  v2 = *(this + 410);
  v28 = *(this + 411);
  v29 = *(this + 412);
  v30 = re::RenderGraphDataStore::tryGet<re::ViewportPercentData>(*(a2 + 146), *(*(a2 + 5) + 48));
  v67 = v30;
  if (v30)
  {
    v68 = *(v30 + 65);
  }

  else
  {
    v68 = 0;
  }

  if (!*(this + 54))
  {
    v4 = 0;
    v34 = *(this + 33);
LABEL_35:
    v2 = v27 | (2 * v2) | (4 * v28) | (8 * v29);
    if (v34 <= v2)
    {
      re::DynamicString::format("%s: Permutation %du was requested but only %lu materials exist.", &v95, *(this + 2), v2, v34);
      re::RenderGraphExecutable::addError(*(a2 + 147), &v95);
      v40 = v95;
      if (!v95 || (BYTE8(v95) & 1) == 0)
      {
        goto LABEL_83;
      }

      v41 = v96;
      goto LABEL_82;
    }

    if (v4 <= v2)
    {
      goto LABEL_88;
    }

    v35 = *(*(this + v2 + 35) + 1776);
    v36 = *(*(this + 56) + 24 * v2 + 8);
    if (v36)
    {
      v37 = *(v36 + 792);
    }

    else
    {
      v37 = 0;
    }

    v42 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v36 ^ (v36 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v36 ^ (v36 >> 30))) >> 27));
    MaterialTableForAsset = re::RenderGraphContext::getMaterialTableForAsset(a2, v37 ^ (v42 >> 31) ^ v42);
    re::RenderGraphContext::makeFullscreenDrawCall(a2, v35, "Post Processing Combined", MaterialTableForAsset, 0, 0, 0, 0, &v95);
    if (v68)
    {
      v27 = "fullscreenarray";
    }

    else
    {
      v27 = "fullscreen";
    }

    v44 = *(&v99 + 1);
    if (v68)
    {
      v45 = 15;
    }

    else
    {
      v45 = 10;
    }

    MurmurHash3_x64_128(v27, v45, 0, v89);
    v46 = re::MaterialParameterTableLayers::resolveTechniqueIndices(v44, (*&v89[8] + (*v89 << 6) + (*v89 >> 2) - 0x61C8864680B583E9) ^ *v89);
    if (!v47)
    {
      goto LABEL_89;
    }

    HIDWORD(v97) = *v46;
    if (HIDWORD(v97) == -1)
    {
      goto LABEL_83;
    }

    v48 = re::RenderGraphDataStore::tryGet<re::CameraData>(*(a2 + 146), *(*(a2 + 5) + 48));
    v86 = 0;
    v83 = 0;
    memset(v84, 0, sizeof(v84));
    v85 = 0;
    memset(v81, 0, sizeof(v81));
    v82 = 0;
    if (v48)
    {
      v2 = v48;
      if (*(v48 + 128))
      {
        v29 = 0;
        v26 = 0;
        v3 = v48 + 144;
        v4 = v48 + 64;
        while (1)
        {
          v49 = v3 + 240 * v29;
          if (*(v49 + 80) == 1)
          {
            v50 = *(v49 + 96);
            v51 = *(v49 + 112);
            v52 = *(v49 + 144);
            *&v89[32] = *(v49 + 128);
            *v90 = v52;
            *v89 = v50;
            *&v89[16] = v51;
          }

          else
          {
            re::Projection::cullingProjectionMatrix(v49, v89);
          }

          re::DynamicArray<re::Matrix4x4<float>>::add(v81, v89);
          v54 = *(v2 + 48);
          if (v54 <= v29)
          {
            break;
          }

          re::RenderCamera::computeInverseTransform((v4 + 32 * v29), v89);
          re::DynamicArray<re::Matrix4x4<float>>::add(v84, v89);
          v26 = (v26 + 1);
          v29 = v26;
          if (*(v2 + 128) <= v26)
          {
            goto LABEL_66;
          }
        }

LABEL_86:
        re::internal::assertLog(6, v53, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v29, v54);
        _os_crash();
        __break(1u);
        goto LABEL_87;
      }

LABEL_66:
      v55 = *(v2 + 890);
    }

    else
    {
      *v89 = xmmword_1E3047670;
      *&v89[16] = xmmword_1E3047680;
      *&v89[32] = xmmword_1E30476A0;
      *v90 = xmmword_1E30474D0;
      re::DynamicArray<re::Matrix4x4<float>>::add(v81, v89);
      *v89 = xmmword_1E3047670;
      *&v89[16] = xmmword_1E3047680;
      *&v89[32] = xmmword_1E30476A0;
      *v90 = xmmword_1E30474D0;
      re::DynamicArray<re::Matrix4x4<float>>::add(v84, v89);
      if (v68)
      {
        v55 = *(v67 + 64);
        *v89 = xmmword_1E3047670;
        *&v89[16] = xmmword_1E3047680;
        *&v89[32] = xmmword_1E30476A0;
        *v90 = xmmword_1E30474D0;
        re::DynamicArray<re::Matrix4x4<float>>::add(v81, v89);
        *v89 = xmmword_1E3047670;
        *&v89[16] = xmmword_1E3047680;
        *&v89[32] = xmmword_1E30476A0;
        *v90 = xmmword_1E30474D0;
        re::DynamicArray<re::Matrix4x4<float>>::add(v84, v89);
      }

      else
      {
        v55 = 1;
      }
    }

    v3 = 0xA3521511A35B9;
    DWORD1(v97) = v55;
    re::DrawCallRef::DrawCallRef(&v76, &v95);
    v56 = 0;
    *v89 = &v76;
    *&v89[24] = &v77;
    *v90 = &v78;
    v91 = &v79;
    *&v89[8] = vdupq_n_s64(1uLL);
    *&v89[32] = *&v89[8];
    *&v90[8] = *&v89[8];
    v92 = *&v89[8];
    v93 = &v80;
    v94 = *&v89[8];
    v69[0] = v27;
    v69[1] = v89;
    v69[2] = v86;
    v69[3] = v83;
    v69[4] = 0;
    v70 = v55;
    v71 = 2;
    v72 = 0;
    v73 = 0;
    if (!*(a2 + 338))
    {
      goto LABEL_71;
    }

    goto LABEL_90;
  }

  v31 = 0;
  v3 = 0;
  v26 = this + 280;
  while (re::AssetHandle::loadedAsset<re::MaterialAsset>((*(this + 56) + v31)))
  {
    v4 = *(this + 54);
    if (v4 <= v3)
    {
      v88[0] = 0;
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v95 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v89 = 136315906;
      *&v89[4] = "operator[]";
      *&v89[12] = 1024;
      *&v89[14] = 789;
      *&v89[18] = 2048;
      *&v89[20] = v3;
      *&v89[28] = 2048;
      *&v89[30] = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_85:
      re::internal::assertLog(6, v33, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v3, v34);
      _os_crash();
      __break(1u);
      goto LABEL_86;
    }

    v32 = re::AssetHandle::loadedAsset<re::MaterialAsset>((*(this + 56) + v31));
    v34 = *(this + 33);
    if (v34 <= v3)
    {
      goto LABEL_85;
    }

    *(v26 + 8 * v3) = v32;
    v4 = *(this + 54);
    if (v3 <= 0xE)
    {
      ++v3;
      v31 += 24;
      if (v4 > v3)
      {
        continue;
      }
    }

    goto LABEL_35;
  }

LABEL_83:
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v87);
}

void re::RenderGraphCombinedPostProcessNode::getMaterialParameterTables(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 408) | (2 * *(a1 + 410)) | (4 * *(a1 + 411)) | (8 * *(a1 + 412));
  if (*(a1 + 432) > v2)
  {
    v4 = (*(a1 + 448) + 24 * v2);
    if (*(v4 + 1))
    {
      v6 = re::AssetHandle::loadedAsset<re::MaterialAsset>(v4);
      if (v6)
      {
        v7 = *(v6 + 1784);
        if (v7)
        {
          v8 = *(a1 + 432);
          if (v8 <= v2)
          {
            memset(v20, 0, sizeof(v20));
            v12 = v8;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v13 = 136315906;
            *&v13[4] = "operator[]";
            v14 = 1024;
            v15 = 797;
            v16 = 2048;
            v17 = v2;
            v18 = 2048;
            v19 = v12;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          v9 = *(*(a1 + 448) + 24 * v2 + 8);
          if (v9)
          {
            v10 = *(v9 + 792);
          }

          else
          {
            v10 = 0;
          }

          v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) >> 27));
          *&v20[0] = v10 ^ (v11 >> 31) ^ v11;
          re::MaterialParameterBlock::createMaterialParameterTableIfNeeded(v7, v13);
          re::HashTable<unsigned long,re::SharedPtr<re::MaterialParameterTable>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::add(a2, v20, v13);
          if (*v13)
          {
          }
        }
      }
    }
  }
}

void *re::allocInfo_RenderGraphUploadPostParams(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BF4F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BF4F0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BF588, "RenderGraphUploadPostParams");
    __cxa_guard_release(&qword_1EE1BF4F0);
  }

  return &unk_1EE1BF588;
}

void re::initInfo_RenderGraphUploadPostParams(re *this, re::IntrospectionBase *a2)
{
  v32[0] = 0x5202598F4D5E78FELL;
  v32[1] = "RenderGraphUploadPostParams";
  if (v32[0])
  {
    if (v32[0])
    {
    }
  }

  *(this + 2) = v33;
  if ((atomic_load_explicit(&qword_1EE1BF4F8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BF4F8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_RenderGraphNode(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "RenderGraphNode";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1BF510 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_BOOL(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "tonemappingEnabled";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x10800000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1BF518 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_BOOL(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "bloomEnabled";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x10A00000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1BF520 = v16;
      v17 = re::introspectionAllocator(v16);
      v18 = re::introspect_TonemapUserParameters(1);
      v19 = (*(*v17 + 32))(v17, 72, 8);
      *v19 = 1;
      *(v19 + 8) = "tonemapUserParameters";
      *(v19 + 16) = v18;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0x10C00000003;
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;
      *(v19 + 56) = 0;
      *(v19 + 64) = 0;
      qword_1EE1BF528 = v19;
      v20 = re::introspectionAllocator(v19);
      v21 = re::introspect_BloomUserParameters(1);
      v22 = (*(*v20 + 32))(v20, 72, 8);
      *v22 = 1;
      *(v22 + 8) = "bloomUserParameters";
      *(v22 + 16) = v21;
      *(v22 + 24) = 0;
      *(v22 + 32) = 0x14800000004;
      *(v22 + 40) = 0;
      *(v22 + 48) = 0;
      *(v22 + 56) = 0;
      *(v22 + 64) = 0;
      qword_1EE1BF530 = v22;
      v23 = re::introspectionAllocator(v22);
      v25 = re::introspect_BOOL(1, v24);
      v26 = (*(*v23 + 32))(v23, 72, 8);
      *v26 = 1;
      *(v26 + 8) = "colorConvertEnabled";
      *(v26 + 16) = v25;
      *(v26 + 24) = 0;
      *(v26 + 32) = 0x10B00000005;
      *(v26 + 40) = 0;
      *(v26 + 48) = 0;
      *(v26 + 56) = 0;
      *(v26 + 64) = 0;
      qword_1EE1BF538 = v26;
      v27 = re::introspectionAllocator(v26);
      v29 = re::introspect_BOOL(1, v28);
      v30 = (*(*v27 + 32))(v27, 72, 8);
      *v30 = 1;
      *(v30 + 8) = "tonemappingSharedParamsEnabled";
      *(v30 + 16) = v29;
      *(v30 + 24) = 0;
      *(v30 + 32) = 0x10900000006;
      *(v30 + 40) = 0;
      *(v30 + 48) = 0;
      *(v30 + 56) = 0;
      *(v30 + 64) = 0;
      qword_1EE1BF540 = v30;
      __cxa_guard_release(&qword_1EE1BF4F8);
    }
  }

  *(this + 2) = 0x15800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 7;
  *(this + 8) = &qword_1EE1BF510;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphUploadPostParams>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphUploadPostParams>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphUploadPostParams>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphUploadPostParams>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v31 = v33;
}

void *re::allocInfo_RenderGraphCombinedPostProcessNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BF500, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BF500))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BF618, "RenderGraphCombinedPostProcessNode");
    __cxa_guard_release(&qword_1EE1BF500);
  }

  return &unk_1EE1BF618;
}

void re::initInfo_RenderGraphCombinedPostProcessNode(re *this, re::IntrospectionBase *a2)
{
  v38[0] = 0x41FFC6ACD6032468;
  v38[1] = "RenderGraphCombinedPostProcessNode";
  if (v38[0])
  {
    if (v38[0])
    {
    }
  }

  *(this + 2) = v39;
  if ((atomic_load_explicit(&qword_1EE1BF508, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BF508);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_RenderGraphNode(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "RenderGraphNode";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1BF548 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_BOOL(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "tonemappingEnabled";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x19800000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1BF550 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_BOOL(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "bloomEnabled";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x19A00000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1BF558 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::introspect_BOOL(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "vignetteEnabled";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x19B00000003;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1BF560 = v20;
      v21 = re::introspectionAllocator(v20);
      v23 = re::introspect_RenderGraphTargetHandle(1, v22);
      v24 = (*(*v21 + 32))(v21, 72, 8);
      *v24 = 1;
      *(v24 + 8) = "downsampledTarget";
      *(v24 + 16) = v23;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0x1C800000004;
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      *(v24 + 56) = 0;
      *(v24 + 64) = 0;
      qword_1EE1BF568 = v24;
      v25 = re::introspectionAllocator(v24);
      v27 = re::IntrospectionInfo<re::DynamicArray<re::AssetHandle>>::get(1, v26);
      v28 = (*(*v25 + 32))(v25, 72, 8);
      *v28 = 1;
      *(v28 + 8) = "combinedMaterialPermutations";
      *(v28 + 16) = v27;
      *(v28 + 24) = 0;
      *(v28 + 32) = 0x1A000000005;
      *(v28 + 40) = 0;
      *(v28 + 48) = 0;
      *(v28 + 56) = 0;
      *(v28 + 64) = 0;
      qword_1EE1BF570 = v28;
      v29 = re::introspectionAllocator(v28);
      v31 = re::introspect_BOOL(1, v30);
      v32 = (*(*v29 + 32))(v29, 72, 8);
      *v32 = 1;
      *(v32 + 8) = "colorConvertEnabled";
      *(v32 + 16) = v31;
      *(v32 + 24) = 0;
      *(v32 + 32) = 0x19C00000006;
      *(v32 + 40) = 0;
      *(v32 + 48) = 0;
      *(v32 + 56) = 0;
      *(v32 + 64) = 0;
      qword_1EE1BF578 = v32;
      v33 = re::introspectionAllocator(v32);
      v35 = re::introspect_BOOL(1, v34);
      v36 = (*(*v33 + 32))(v33, 72, 8);
      *v36 = 1;
      *(v36 + 8) = "tonemappingSharedParamsEnabled";
      *(v36 + 16) = v35;
      *(v36 + 24) = 0;
      *(v36 + 32) = 0x19900000007;
      *(v36 + 40) = 0;
      *(v36 + 48) = 0;
      *(v36 + 56) = 0;
      *(v36 + 64) = 0;
      qword_1EE1BF580 = v36;
      __cxa_guard_release(&qword_1EE1BF508);
    }
  }

  *(this + 2) = 0x1D800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 8;
  *(this + 8) = &qword_1EE1BF548;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphCombinedPostProcessNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphCombinedPostProcessNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphCombinedPostProcessNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphCombinedPostProcessNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v37 = v39;
}

double re::internal::defaultConstruct<re::RenderGraphCombinedPostProcessNode>(int a1, int a2, re::RenderGraphNode *this)
{
  v3 = re::RenderGraphNode::RenderGraphNode(this);
  *v3 = &unk_1F5D11AB8;
  *(v3 + 33) = 0;
  *(v3 + 68) = 0;
  *(v3 + 52) = 0;
  *(v3 + 110) = 0;
  *(v3 + 424) = 0u;
  *(v3 + 102) = 0;
  *(v3 + 412) = 0;
  *(v3 + 28) = 0u;
  result = NAN;
  *(v3 + 58) = -1;
  return result;
}

double re::internal::defaultConstructV2<re::RenderGraphCombinedPostProcessNode>(re::RenderGraphNode *a1)
{
  v1 = re::RenderGraphNode::RenderGraphNode(a1);
  *v1 = &unk_1F5D11AB8;
  *(v1 + 33) = 0;
  *(v1 + 68) = 0;
  *(v1 + 52) = 0;
  *(v1 + 110) = 0;
  *(v1 + 424) = 0u;
  *(v1 + 102) = 0;
  *(v1 + 412) = 0;
  *(v1 + 28) = 0u;
  result = NAN;
  *(v1 + 58) = -1;
  return result;
}

void re::RenderGraphUploadPostParams::~RenderGraphUploadPostParams(id *this)
{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::RenderGraphCombinedPostProcessNode::~RenderGraphCombinedPostProcessNode(re::RenderGraphCombinedPostProcessNode *this)
{
  *this = &unk_1F5D11AB8;
  re::DynamicArray<re::AssetHandle>::deinit(this + 416);
  *(this + 33) = 0;
  ++*(this + 68);

  re::RenderGraphNode::~RenderGraphNode(this);
}

{
  *this = &unk_1F5D11AB8;
  re::DynamicArray<re::AssetHandle>::deinit(this + 416);
  *(this + 33) = 0;
  ++*(this + 68);
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::RenderGraphDataStore::add<re::TonemapParametersData>(uint64_t a1, uint64_t a2)
{
  v3 = "N2re21TonemapParametersDataE";
  if (("N2re21TonemapParametersDataE" & 0x8000000000000000) != 0)
  {
    v4 = ("N2re21TonemapParametersDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v5 = 5381;
    do
    {
      v3 = v5;
      v6 = *v4++;
      v5 = (33 * v5) ^ v6;
    }

    while (v6);
  }

  v10 = (a2 + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9) ^ v3;
  v7 = (*(**(a1 + 8) + 32))(*(a1 + 8), 216, 8);
  *(v7 + 120) = 0u;
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0u;
  *(v7 + 40) = 0u;
  *(v7 + 56) = 0u;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 104) = 0u;
  *(v7 + 136) = 0;
  *v7 = &unk_1F5D11B88;
  *(v7 + 128) = 1;
  *(v7 + 144) = 0u;
  *(v7 + 160) = 0u;
  *(v7 + 176) = 0u;
  *(v7 + 192) = 0u;
  *(v7 + 208) = 0;
  v9 = v7;
  return *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a1 + 64, &v10, &v9);
}

void re::TonemapParametersData::~TonemapParametersData(re::TonemapParametersData *this)
{
  re::FixedArray<CoreIKTransform>::deinit(this + 24);
  re::FixedArray<CoreIKTransform>::deinit(this + 21);
  re::FixedArray<CoreIKTransform>::deinit(this + 18);
}

{
  re::FixedArray<CoreIKTransform>::deinit(this + 24);
  re::FixedArray<CoreIKTransform>::deinit(this + 21);
  re::FixedArray<CoreIKTransform>::deinit(this + 18);

  JUMPOUT(0x1E6906520);
}

uint64_t re::RenderGraphDataStore::add<re::RenderGraphDataStoreWrapper<re::ColorExecData>>(re *a1, uint64_t a2)
{
  v3 = "N2re27RenderGraphDataStoreWrapperINS_13ColorExecDataEEE";
  if (("N2re27RenderGraphDataStoreWrapperINS_13ColorExecDataEEE" & 0x8000000000000000) != 0)
  {
    v4 = ("N2re27RenderGraphDataStoreWrapperINS_13ColorExecDataEEE" & 0x7FFFFFFFFFFFFFFFLL);
    v5 = 5381;
    do
    {
      v3 = v5;
      v6 = *v4++;
      v5 = (33 * v5) ^ v6;
    }

    while (v6);
  }

  v11 = (a2 + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9) ^ v3;
  v7 = re::globalAllocators(a1);
  v8 = (*(*v7[2] + 32))(v7[2], 48, 8);
  v8[3] = 0;
  v8[4] = 0;
  v8[1] = 0;
  v8[2] = 0;
  *v8 = &unk_1F5D11BC8;
  v8[5] = 0;
  v10 = v8;
  return *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a1 + 16, &v11, &v10);
}

uint64_t re::RenderGraphDataStoreWrapper<re::ColorExecData>::~RenderGraphDataStoreWrapper(uint64_t a1)
{
  *a1 = &unk_1F5D11BC8;
  v2 = *(a1 + 32);
  if (v2 != -1)
  {
    (off_1F5D11B50[v2])(&v4, a1 + 8);
  }

  *(a1 + 32) = -1;
  return a1;
}

{
  *a1 = &unk_1F5D11BC8;
  v2 = *(a1 + 32);
  if (v2 != -1)
  {
    (off_1F5D11B50[v2])(&v4, a1 + 8);
  }

  *(a1 + 32) = -1;
  return MEMORY[0x1E6906520](a1, 0x10A3C40957976B0);
}

uint64_t re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::ColorExecData>>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re27RenderGraphDataStoreWrapperINS_13ColorExecDataEEE";
  if (("N2re27RenderGraphDataStoreWrapperINS_13ColorExecDataEEE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re27RenderGraphDataStoreWrapperINS_13ColorExecDataEEE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  if (!*(a1 + 16))
  {
    return 0;
  }

  v6 = (a2 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
  v7 = *(*(a1 + 24) + 4 * (v6 % *(a1 + 40)));
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 32);
  while (*(v8 + 24 * v7 + 8) != v6)
  {
    v7 = *(v8 + 24 * v7) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return *(v8 + 24 * v7 + 16);
}

double re::RenderGraphUploadPostParams::RenderGraphUploadPostParams(re::RenderGraphUploadPostParams *this)
{
  v1 = (this + 268);
  v2 = re::RenderGraphNode::RenderGraphNode(this);
  *v2 = &unk_1F5D11A10;
  *(v2 + 66) = 0;
  *v1 = xmmword_1E3054790;
  v1[1] = xmmword_1E304F3C0;
  *(v2 + 300) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(v2 + 38) = _D0;
  *(v2 + 312) = 0;
  *(v2 + 316) = 0x3F80000000000000;
  *(v2 + 324) = 0;
  result = 0.00781250182;
  *(v2 + 41) = 0x3F8000003E800000;
  *(v2 + 42) = 0x13F800000;
  return result;
}

uint64_t re::RenderFrameContextBuilder::build@<X0>(re::RenderFrameContextBuilder *this@<X0>, re::RenderFrame *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2;
  v391 = *MEMORY[0x1E69E9840];
  v256 = *(a2 + 1);
  v7 = *(a2 + 49);
  *a3 = 0;
  *(a3 + 8) = 0u;
  v8 = (a3 + 8);
  *(a3 + 16) = v7;
  v9 = (a3 + 16);
  *(a3 + 24) = 0u;
  v318 = 0;
  v316 = 0;
  v317 = 0;
  v315[1] = 0;
  v315[0] = v7;
  re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v315, 0);
  ++v317;
  v10 = *(v6 + 74);
  if (v10)
  {
    j = 0;
    v12 = *(v6 + 35);
    while (1)
    {
      v13 = *v12;
      v12 += 18;
      if (v13 < 0)
      {
        break;
      }

      if (v10 == ++j)
      {
        j = *(v6 + 74);
        break;
      }
    }
  }

  else
  {
    j = 0;
  }

  if (j != v10)
  {
    v3 = *(v6 + 35);
    do
    {
      v14 = *(v3 + 72 * j + 64);
      if ((*(*v14 + 480))(v14))
      {
        re::DynamicArray<re::WeakStringID>::add(v315, (v3 + 72 * j + 8));
      }

      LODWORD(v15) = *(v6 + 74);
      if (v15 <= j + 1)
      {
        v15 = (j + 1);
      }

      else
      {
        v15 = v15;
      }

      v3 = *(v6 + 35);
      while (v15 - 1 != j)
      {
        j = (j + 1);
        if ((*(v3 + 72 * j) & 0x80000000) != 0)
        {
          goto LABEL_19;
        }
      }

      j = v15;
LABEL_19:
      ;
    }

    while (j != v10);
  }

  if (!v316)
  {
    return re::DynamicArray<re::WeakStringID>::deinit(v315);
  }

  v17 = (*(**(v6 + 40) + 192))(*(v6 + 40));
  v18 = v316;
  *&v320 = 0;
  *&v319 = v7;
  *(&v319 + 1) = v316;
  if (v316)
  {
    if (v316 >= 0x29CBC14E5E0A73)
    {
      re::internal::assertLog(6, v16, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 1568, v316);
      _os_crash();
      __break(1u);
    }

    else
    {
      v19 = (*(*v7 + 32))(v7, 1568 * v316, 16);
      *&v320 = v19;
      if (v19)
      {
        while (--v18)
        {
          v19 = re::RenderFrameContextBuilder::Result::PerSceneData::PerSceneData(v19, v7) + 1568;
        }

        re::RenderFrameContextBuilder::Result::PerSceneData::PerSceneData(v19, v7);
        goto LABEL_27;
      }
    }

    re::internal::assertLog(4, v20, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash();
    __break(1u);
    goto LABEL_410;
  }

LABEL_27:
  if (v9 != &v319)
  {
    v21 = *v9;
    if (*v9 && v21 != v319)
    {
      re::internal::assertLog(4, v16, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || m_allocator == other.m_allocator", "operator=", 296);
      _os_crash();
      __break(1u);
      goto LABEL_416;
    }

    v22 = *(a3 + 24);
    v23 = *(a3 + 32);
    v24 = *(&v319 + 1);
    v25 = v320;
    *(a3 + 16) = v319;
    *(a3 + 24) = v24;
    *&v319 = v21;
    *(&v319 + 1) = v22;
    *(a3 + 32) = v25;
    *&v320 = v23;
  }

  v260 = v6;
  v26 = re::FixedArray<re::RenderFrameContextBuilder::Result::PerSceneData>::deinit(&v319);
  v292[0] = 0;
  v293 = 0;
  v294 = 0u;
  v296 = 0u;
  v295 = 0;
  v297 = 0;
  v298 = 0x1FFFFFFFFLL;
  v300 = 0;
  v302 = 0;
  v305 = 0;
  v303 = 0;
  v304 = 0;
  v306 = 0;
  v308 = 0;
  v307 = 0;
  v309 = 0;
  v310 = 0x1FFFFFFFFLL;
  v312 = 0;
  v314 = 0;
  v299 = 0x80000000800;
  v301 = v7;
  v311 = 0x80000000800;
  v313 = v7;
  v5 = v316;
  if (!v5)
  {
    v261 = 0;
    goto LABEL_39;
  }

  if (v5 < 0x15BABCC647FA92)
  {
    if (v28)
    {
      v30 = v28;
      v31 = v5 - 1;
      if (v5 != 1)
      {
        v30 = v28;
        do
        {
          *v30 = 0;
          *(v30 + 8) = 0;
          *(v30 + 24) = 0;
          *(v30 + 16) = 0;
          *(v30 + 80) = 0;
          *(v30 + 88) = 0;
          v32 = (v30 + 2948);
          *(v30 + 2912) = 0uLL;
          *(v30 + 2928) = 0uLL;
          *(v30 + 2944) = 0;
          *(v30 + 32) = 0uLL;
          *(v30 + 48) = 0uLL;
          *(v30 + 60) = 0uLL;
          *(v30 + 2960) = v292;
          *(v30 + 2968) = 1;
          *(v30 + 3008) = 0;
          *(v30 + 2992) = 0uLL;
          *(v30 + 2976) = 0uLL;
          v30 += 3016;
          *v32 = 0x7FFFFFFFLL;
          --v31;
        }

        while (v31);
      }

      v261 = v28;
      *v30 = 0;
      *(v30 + 8) = 0;
      *(v30 + 24) = 0;
      *(v30 + 16) = 0;
      *(v30 + 80) = 0;
      *(v30 + 88) = 0;
      *(v30 + 2912) = 0u;
      *(v30 + 2928) = 0u;
      *(v30 + 2944) = 0;
      *(v30 + 32) = 0u;
      *(v30 + 48) = 0u;
      *(v30 + 60) = 0u;
      *(v30 + 2948) = 0x7FFFFFFFLL;
      *(v30 + 2960) = v292;
      *(v30 + 2968) = 1;
      *(v30 + 3008) = 0;
      *(v30 + 2992) = 0u;
      *(v30 + 2976) = 0u;
LABEL_39:
      v264 = (v6 + 264);
      v257 = *(*(v6 + 1) + 424);
      *v8 = *(v6 + 40);
      v370 = 0;
      v368 = 0;
      v369 = 0;
      v367[1] = 0;
      v367[0] = v7;
      v33 = re::DynamicArray<re::ProjectiveMeshShadowBuilder::Input::PerSceneData>::setCapacity(v367, 0);
      ++v369;
      v371 = 1065353216;
      v374 = 0;
      v375 = 0u;
      v376 = 0xFFFFFFFFLL;
      v377 = 0;
      *&v381[4] = xmmword_1E3072DE0;
      *v381 = 1065353216;
      *&v381[20] = 3;
      *&v381[24] = xmmword_1E3072DF0;
      *&v381[40] = 0;
      v381[42] = 1;
      v382 = xmmword_1E3072E00;
      *v383 = 1061158912;
      v383[4] = 1;
      *&v383[8] = xmmword_1E3072E10;
      *&v383[24] = xmmword_1E3072E20;
      *&v383[40] = 0x3DCCCCCD41F00000;
      LODWORD(v384) = 1097877340;
      BYTE4(v384) = 1;
      v385 = xmmword_1E30476B0;
      LOBYTE(v386) = 1;
      *&v387 = 0x3F8000003F2D42C4;
      *(&v387 + 1) = 0x193F800000;
      v388 = xmmword_1E3072E30;
      *&v389 = 1056964608;
      DWORD2(v389) = 0x40000000;
      WORD6(v389) = 256;
      v390 = 0;
      v34 = *(*(v6 + 1) + 96);
      v35 = v316;
      v288 = 0u;
      v289 = 0u;
      v290 = 0;
      v291 = 0x7FFFFFFFLL;
      v36 = v35;
      j = v34;
      memset(v287, 0, 36);
      *&v287[36] = 0x7FFFFFFFLL;
      v286 = 1;
      if (v34)
      {
        goto LABEL_407;
      }

      goto LABEL_40;
    }

    goto LABEL_411;
  }

LABEL_410:
  re::internal::assertLog(6, v27, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 3016, v5);
  _os_crash();
  __break(1u);
LABEL_411:
  re::internal::assertLog(4, v29, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
  _os_crash();
  __break(1u);
LABEL_412:
  std::__throw_bad_function_call[abi:nn200100]();
LABEL_413:
  re::internal::assertLog(4, v132, "assertion failure: '%s' (%s:line %i) Mesh Shadow Global Data should not be nullptr if mesh shadow per frame update data exists", "meshShadowGlobalData", "build", 514);
  _os_crash();
  __break(1u);
LABEL_414:
  *&v319 = 0x6F2CA1B2EF949A36;
  *(&v319 + 1) = "meshshadow:textureGenerationNominalDequeueSize";
  *v356 = 0;
  re::DebugSettingsManager::getWithErrorCode<int>(j, &v319, v356);
LABEL_416:
  re::StringID::destroyString(&v319);
  *&v319 = 0xAD1A32C714F7C026;
  *(&v319 + 1) = "meshshadow:textureGenerationWorkDivisionFactor";
  *v356 = 0;
  re::DebugSettingsManager::getWithErrorCode<int>(j, &v319, v356);
  re::StringID::destroyString(&v319);
LABEL_178:
  v356[0] = 0;
  if (v286)
  {
    ReceiverMesh = re::ShadowRenderManager::getReceiverMesh(v8);
    v134 = *ReceiverMesh;
    v135 = *(*ReceiverMesh + 432);
    v275[0] = *(*ReceiverMesh + 416);
    v275[1] = v135;
    v136 = *&v287[8];
    v3 = *v287;
    memset(v287, 0, 24);
    v137 = *&v287[24];
    v5 = *&v287[28];
    v138 = *&v287[32];
    v139 = *&v287[36];
    *&v287[24] = xmmword_1E3058120;
    v277 = 1;
    LOBYTE(v319) = 1;
    v320 = v275[0];
    v321 = v135;
    *v322 = __PAIR128__(v136, v3);
    memset(v276, 0, 24);
    *&v322[16] = *&v287[16];
    *&v322[24] = v137;
    *&v322[28] = v5;
    *&v322[32] = v138;
    *&v322[36] = v139;
    *&v276[24] = xmmword_1E3058120;
    LODWORD(v323) = 1;
    if (v356[0])
    {
      v140 = *(v134 + 432);
      *&v357[4] = *(v134 + 416);
      *&v357[20] = v140;
      if (!__b || __b == v3)
      {
        *v322 = __b;
        v147 = *__b_8;
        __b = v3;
        __b_8[0] = v136;
        __b_8[1] = *&v287[16];
        *&v322[8] = v147;
        v148 = v360;
        *&v360 = __PAIR64__(v5, v137);
        *(&v360 + 1) = __PAIR64__(v139, v138);
        *&v322[24] = v148;
      }

      else
      {
        if (DWORD1(v360))
        {
          if (v360)
          {
            memset_pattern16(__b_8[0], &unk_1E304C660, 4 * v360);
          }

          v141 = DWORD2(v360);
          if (DWORD2(v360))
          {
            v142 = 0;
            v143 = 0;
            do
            {
              v144 = __b_8[1];
              v145 = *(__b_8[1] + v142);
              if (v145 < 0)
              {
                *(__b_8[1] + v142) = v145 & 0x7FFFFFFF;
                re::HashTable<unsigned long long,re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v144[v142 + 16]);
                v141 = DWORD2(v360);
              }

              ++v143;
              v142 += 72;
            }

            while (v143 < v141);
          }

          *(&v360 + 4) = 0;
          HIDWORD(v360) = 0x7FFFFFFF;
          ++v361;
        }

        if (!v3)
        {
          goto LABEL_199;
        }

        if (v360 < v5)
        {
          re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(&__b, v5);
        }

        re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(&__b, v322);
      }

      ++v361;
    }

    else
    {
      v356[0] = 1;
      v146 = *(v134 + 432);
      *&v357[4] = *(v134 + 416);
      *&v357[20] = v146;
      __b = v3;
      __b_8[0] = v136;
      memset(v322, 0, 24);
      __b_8[1] = *&v287[16];
      *&v360 = __PAIR64__(v5, v137);
      *(&v360 + 1) = __PAIR64__(v139, v138);
      *&v322[24] = xmmword_1E3058120;
      v361 = 1;
    }

LABEL_199:
    re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v322);
    re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v276);
    v6 = v260;
  }

  re::PersistentShadowState::processMeshShadowUpdate((v8 + 3), &v279, v275);
  atomic_store(v4[38], v8 + 76);
  v149 = *v4;
  v373 = v4[2];
  v372 = v149;
  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(&v374, v4[3]);
  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(&v375, v4[4]);
  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(&v375 + 1, v4[5]);
  v376 = v4[6];
  if (v377)
  {
    if (v4[7])
    {
      re::StringID::operator=(&v378, v4 + 8);
    }

    else
    {
      if (v378)
      {
        if (v378)
        {
        }
      }

      v379 = &str_67;
      v378 = 0;
      v377 = 0;
    }
  }

  else if (v4[7])
  {
    v377 = 1;
    re::StringID::StringID(&v378, v4 + 4);
  }

  v151 = *(v4 + 5);
  v152 = *(v4 + 6);
  *&v381[16] = *(v4 + 7);
  *v381 = v152;
  v380 = v151;
  v153 = *(v4 + 8);
  v154 = *(v4 + 9);
  v155 = *(v4 + 10);
  *&v383[16] = *(v4 + 11);
  *v383 = v155;
  v382 = v154;
  *&v381[32] = v153;
  v156 = *(v4 + 12);
  v157 = *(v4 + 13);
  v158 = *(v4 + 14);
  v386 = *(v4 + 15);
  v385 = v158;
  v384 = v157;
  *&v383[32] = v156;
  v159 = *(v4 + 16);
  v160 = *(v4 + 17);
  v161 = *(v4 + 18);
  v390 = v4[38];
  v389 = v161;
  v388 = v160;
  v387 = v159;
  re::ProjectiveMeshShadowBuilder::buildShadowGenerationData((v8 + 3), v275, &v279, v259, v367, v6, &v319);
  if (v319 == 1)
  {
    v164 = (v8 + 468);
    v165 = v8 + 55;
    if (v8 + 440 == &v319 + 8)
    {
      goto LABEL_228;
    }

    v166 = *v165;
    v167 = *(&v319 + 1);
    if (!*v165 || v166 == *(&v319 + 1))
    {
      *(v8 + 55) = *(&v319 + 1);
      *(&v319 + 1) = v166;
      v174 = v321;
      v175 = v8[28];
      v176 = v8[29];
      v8[28] = v320;
      v8[29] = v174;
      v320 = v175;
      v321 = v176;
    }

    else
    {
      if (*v164)
      {
        v168 = *(v8 + 116);
        if (v168)
        {
          memset_pattern16(*(v8 + 56), &unk_1E304C660, 4 * v168);
        }

        v169 = *(v8 + 118);
        if (v169)
        {
          v170 = 0;
          for (i = 0; i < v169; ++i)
          {
            v172 = *(v8 + 57);
            v173 = *(v172 + v170);
            if (v173 < 0)
            {
              *(v172 + v170) = v173 & 0x7FFFFFFF;
              re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit((v172 + v170 + 24));
              v169 = *(v8 + 118);
            }

            v170 += 80;
          }
        }

        *(v8 + 119) = 0x7FFFFFFF;
        *v164 = 0;
        ++*(v8 + 120);
        v167 = *(&v319 + 1);
      }

      if (!v167)
      {
LABEL_228:
        v3 = &v322[8];
        if (v8 + 488 != &v322[8])
        {
          v177 = *(v8 + 61);
          if (v177 && *&v322[8] && v177 != *&v322[8])
          {
            re::internal::assertLog(4, v162, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
            _os_crash();
            __break(1u);
          }

          *(v8 + 61) = *&v322[8];
          *&v322[8] = v177;
          v178 = v8[31];
          v8[31] = *&v322[16];
          *&v322[16] = v178;
          v179 = *(v8 + 65);
          *(v8 + 65) = v323;
          v323 = v179;
          ++*&v322[32];
          ++*(v8 + 128);
        }

        v5 = (v8 + 33);
        v4 = &v324;
        if (v8 + 33 == &v324)
        {
          goto LABEL_251;
        }

        v180 = *v5;
        v181 = v324;
        if (!*v5 || v180 == v324)
        {
          *(v8 + 66) = v324;
          v324 = v180;
          v185 = *(v8 + 536);
          *(v8 + 536) = v325;
          v325 = v185;
          v186 = *(v8 + 552);
          *(v8 + 552) = v326;
          v326 = v186;
        }

        else
        {
          if (*(v8 + 139))
          {
            v182 = *(v8 + 138);
            if (v182)
            {
              memset_pattern16(*(v8 + 67), &unk_1E304C660, 4 * v182);
            }

            v183 = *(v8 + 140);
            if (v183)
            {
              v184 = *(v8 + 68);
              do
              {
                if ((*v184 & 0x80000000) != 0)
                {
                  *v184 &= ~0x80000000;
                }

                v184 += 10;
                --v183;
              }

              while (v183);
            }

            *(v8 + 141) = 0x7FFFFFFF;
            *(v8 + 556) = 0;
            ++*(v8 + 142);
          }

          if (!v181)
          {
            goto LABEL_251;
          }

          if (*(v8 + 138) < DWORD1(v326))
          {
            re::HashTable<re::SceneWorldRootId,re::WorldOrderedShadows::Range,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::setCapacity((v8 + 33), DWORD1(v326));
          }

          re::HashTable<re::SceneWorldRootId,re::WorldOrderedShadows::Range,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::move((v8 + 33), &v324);
        }

        ++*(v8 + 142);
LABEL_251:
        v187 = *(v8 + 72);
        *(v8 + 72) = v328;
        v328 = v187;
        re::FixedArray<float>::operator=(v8 + 73, &v329);
        v6 = v260;
        if (v319)
        {
          if (v329)
          {
            if (v330)
            {
              (*(*v329 + 40))(v329, v331);
              v330 = 0;
              v331 = 0;
            }

            v329 = 0;
          }

          if (v328)
          {

            v328 = 0;
          }

          v188 = re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v324);
          if (*&v322[8])
          {
            if (v323)
            {
              (*(**&v322[8] + 40))(v188);
            }

            v323 = 0;
            memset(&v322[8], 0, 24);
            ++*&v322[32];
          }

          v163.n128_f64[0] = re::HashTable<re::SceneWorldRootId,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::deinit(&v319 + 1);
        }

        goto LABEL_263;
      }

      if (*(v8 + 116) < DWORD1(v321))
      {
        re::HashTable<re::SceneWorldRootId,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::setCapacity(v8 + 440, DWORD1(v321));
      }

      re::HashTable<re::SceneWorldRootId,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::move(v8 + 55, &v319 + 8);
    }

    ++*(v8 + 120);
    goto LABEL_228;
  }

LABEL_263:
  if (*&v276[16])
  {
    if (v278)
    {
      (*(**&v276[16] + 40))(v163);
    }

    v278 = 0;
    memset(&v276[16], 0, 24);
    ++v277;
  }

  re::HashSetBase<re::TriggerPair,re::TriggerPair,re::internal::ValueAsKey<re::TriggerPair>,re::Hash<re::TriggerPair>,re::EqualTo<re::TriggerPair>,true,false>::deinit(v275);
  if (v356[0] == 1)
  {
    re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&__b);
  }

  re::ProjectiveMeshShadowBuilder::buildShadowRenderingData(&v283, (*(v256 + 192) + 48), *(v256 + 192) + 440, *(v6 + 49), v367, v17, &v279, v6);
  while (1)
  {
    if (v316)
    {
      v39 = 0;
      v274 = 0;
      v5 = &v319;
      v7 = v354;
      v17 = 0x7FFFFFFFLL;
      while (1)
      {
        j = *(a3 + 24);
        if (j <= v39)
        {
          goto LABEL_394;
        }

        v8 = (v318 + 8 * v39);
        v189 = *(a3 + 32);
        j = re::RenderFrameData::stream(v264, v8);
        v190 = *(re::RenderFrameData::stream(v264, v8) + 48);
        v4 = (*(*v190 + 520))(v190, v191);
        *&v320 = 0;
        DWORD2(v320) = 0;
        *&v321 = 0;
        v319 = v259;
        re::DynamicArray<re::MeshScene>::setCapacity(&v319, 0);
        ++DWORD2(v320);
        v354[0] = &unk_1F5D11E20;
        v354[1] = &v319;
        v355 = v354;
        re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::findEntry<std::type_index>(j, v275, v356);
        if (*v357 != 0x7FFFFFFF)
        {
          v193 = *(j + 16) + 96 * *v357;
          if (j)
          {
            v6 = *(j + 40);
            if (v6)
            {
              break;
            }
          }
        }

LABEL_279:
        if (v355 == v354)
        {
          (*(*v355 + 32))(v355);
        }

        else if (v355)
        {
          (*(*v355 + 40))(v355, v192);
        }

        v3 = v189 + 1568 * v39;
        if (v320)
        {
          v195 = re::BucketArray<re::MeshSceneCollection,16ul>::addUninitialized(v3 + 40);
          *(v195 + 32) = 0;
          *(v195 + 24) = 0;
          *(v195 + 8) = 0;
          *(v195 + 16) = 0;
          *v195 = 0;
          *v195 = v319;
          *(v195 + 16) = v320;
          v319 = 0uLL;
          *&v320 = 0;
          *(v195 + 32) = v321;
          *&v321 = 0;
          ++DWORD2(v320);
          ++*(v195 + 24);
        }

        re::DynamicArray<re::MeshScene>::deinit(&v319);
        if (v4)
        {
          v196 = v4[5];
          if (v196)
          {
            for (j = 0; j != v196; ++j)
            {
              v197 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](v4, j);
              v198 = re::BucketArray<re::MeshSceneCollection,16ul>::addUninitialized(v3 + 40);
              *(v198 + 32) = 0;
              *(v198 + 24) = 0;
              *(v198 + 8) = 0;
              *(v198 + 16) = 0;
              *v198 = 0;
              *v198 = *v197;
              v199 = *(v197 + 8);
              *v197 = 0;
              *(v198 + 8) = v199;
              *(v197 + 8) = 0;
              v200 = *(v198 + 16);
              *(v198 + 16) = *(v197 + 16);
              *(v197 + 16) = v200;
              v201 = *(v198 + 32);
              *(v198 + 32) = *(v197 + 32);
              v202 = *(v197 + 24) + 1;
              *(v197 + 32) = v201;
              *(v197 + 24) = v202;
              ++*(v198 + 24);
            }
          }
        }

        *(v3 + 96) = (*(**(v3 + 1544) + 760))(*(v3 + 1544));
        *(v3 + 632) = (*(**(v3 + 1544) + 696))(*(v3 + 1544), v203);
        *(v3 + 640) = (*(**(v3 + 1544) + 728))(*(v3 + 1544), v204);
        if (v39 == v262)
        {
          goto LABEL_395;
        }

        v205 = v261 + 3016 * v39;
        if ((*(v205 + 2968) & 1) == 0)
        {
          re::LightContextBuilder::prepare(v205, v260[49], v3 + 40, *(v3 + 96), *(v3 + 104), *(v3 + 112), v3 + 512);
        }

        j = re::RenderFrameData::stream(v264, v8);
        re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::findEntry<std::type_index>(j, v356, &v319);
        if (HIDWORD(v319) == 0x7FFFFFFF)
        {
          v206 = 0;
        }

        else
        {
          v207 = *(j + 16) + 96 * HIDWORD(v319);
          if (v206)
          {
            if (!*(v206 + 40))
            {
              goto LABEL_400;
            }

            v206 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](v206, 0);
          }
        }

        *(v3 + 16) = v206;
        j = re::RenderFrameData::stream(v264, v8);
        re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::findEntry<std::type_index>(j, v356, &v319);
        if (HIDWORD(v319) == 0x7FFFFFFF)
        {
          v209 = 0;
        }

        else
        {
          v210 = *(j + 16) + 96 * HIDWORD(v319);
          if (v209)
          {
            if (!*(v209 + 40))
            {
              goto LABEL_401;
            }

            v209 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](v209, 0);
          }
        }

        *(v3 + 24) = v209;
        j = re::RenderFrameData::stream(v264, v8);
        re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::findEntry<std::type_index>(j, v356, &v319);
        if (HIDWORD(v319) == 0x7FFFFFFF)
        {
          v212 = 0;
        }

        else
        {
          v213 = *(j + 16) + 96 * HIDWORD(v319);
          if (v212)
          {
            if (!*(v212 + 40))
            {
              goto LABEL_402;
            }

            v212 = re::BucketArray<re::SceneUnderstandingGuidedFilterOcclusionData,4ul>::operator[](v212, 0);
          }
        }

        *(v3 + 32) = v212;
        j = re::RenderFrameData::stream(v264, v8);
        re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::findEntry<std::type_index>(j, v356, &v319);
        if (HIDWORD(v319) != 0x7FFFFFFF)
        {
          v215 = *(j + 16) + 96 * HIDWORD(v319);
          if (v217)
          {
            if (!*(v217 + 40))
            {
              goto LABEL_403;
            }

            if (!*(v217 + 8))
            {
              goto LABEL_405;
            }

            if ((*(v3 + 1520) & 1) == 0)
            {
              *(v3 + 1520) = 1;
            }

            *(v3 + 1521) = v274++;
          }
        }

        v218 = re::RenderFrameData::stream(v264, v8);
        *(v3 + 1552) = (*(**(v218 + 48) + 1272))(*(v218 + 48));
        j = re::RenderFrameData::stream(v264, v8);
        re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::findEntry<std::type_index>(j, v356, &v319);
        if (HIDWORD(v319) == 0x7FFFFFFF)
        {
          v219 = 0;
        }

        else
        {
          v220 = *(j + 16) + 96 * HIDWORD(v319);
          if (v219)
          {
            if (!*(v219 + 40))
            {
              goto LABEL_404;
            }

            v219 = re::BucketArray<RESubscriptionHandle,4ul>::operator[](v219, 0);
          }
        }

        *(v3 + 1560) = v219;
        if (++v39 >= v316)
        {
          goto LABEL_320;
        }
      }

      v3 = 0;
      while (1)
      {
        v194 = re::BucketArray<re::MeshScene,4ul>::operator[](j, v3);
        if (!v355)
        {
          goto LABEL_412;
        }

        (*(*v355 + 48))(v355, v194);
        if (v6 == ++v3)
        {
          goto LABEL_279;
        }
      }
    }

LABEL_320:
    re::LightContextAtlasContainer::allocateTiles(v292);
    v222 = v316;
    v3 = v262;
    v223 = a3;
    v224 = v260;
    if (!v316)
    {
      break;
    }

    v7 = 0;
    v39 = 0;
    v8 = &v319;
    v4 = &v350;
    v17 = v261;
    while (1)
    {
      j = *(v223 + 24);
      if (j <= v39)
      {
        break;
      }

      if (v3 == v39)
      {
        goto LABEL_397;
      }

      _X9 = v17 + 5984;
      __asm { PRFM            #0, [X9] }

      if ((*(v17 + 2968) & 1) == 0)
      {
        v231 = v224[49];
        v5 = *(v223 + 32) + v7;
        v232 = *(v5 + 96);
        v233 = *(v5 + 104);
        v234 = *(v5 + 112);
        v235 = (*(**(v5 + 1544) + 864))(*(v5 + 1544));
        re::LightContextBuilder::build(v17, v231, v5 + 40, v232, v233, v234, v5 + 512, v235, &v319);
        re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v5 + 136, &v319);
        re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v5 + 176, &v321 + 8);
        re::BucketArray<re::BufferSlice,8ul>::operator=((v5 + 216), &v322[32]);
        re::HashTable<unsigned short,re::LightContexts::LightContextContents,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::operator=(v5 + 272, &v327);
        re::FixedArray<float>::operator=((v5 + 320), &v332);
        re::FixedArray<float>::operator=((v5 + 344), &v335);
        re::FixedArray<float>::operator=((v5 + 368), &v338);
        re::FixedArray<float>::operator=((v5 + 392), &v341);
        re::FixedArray<float>::operator=((v5 + 416), &v344);
        re::FixedArray<float>::operator=((v5 + 440), &v347);
        v236 = v350;
        *(v5 + 480) = v351;
        *(v5 + 464) = v236;
        v237 = v353;
        *(v5 + 488) = v352;
        *(v5 + 504) = v237;
        if (v347)
        {
          if (v348)
          {
            (*(*v347 + 40))(v347, v349);
            v348 = 0;
            v349 = 0;
          }

          v347 = 0;
        }

        v3 = v262;
        v224 = v260;
        if (v344)
        {
          if (v345)
          {
            (*(*v344 + 40))(v344, v346);
            v345 = 0;
            v346 = 0;
          }

          v344 = 0;
        }

        if (v341)
        {
          if (v342)
          {
            (*(*v341 + 40))(v341, v343);
            v342 = 0;
            v343 = 0;
          }

          v341 = 0;
        }

        if (v338)
        {
          if (v339)
          {
            (*(*v338 + 40))(v338, v340);
            v339 = 0;
            v340 = 0;
          }

          v338 = 0;
        }

        if (v335)
        {
          if (v336)
          {
            (*(*v335 + 40))(v335, v337);
            v336 = 0;
            v337 = 0;
          }

          v335 = 0;
        }

        if (v332)
        {
          if (v333)
          {
            (*(*v332 + 40))(v332, v334);
            v333 = 0;
            v334 = 0;
          }

          v332 = 0;
        }

        re::HashTable<re::ecs2::Scene const*,re::HashTable<re::ecs2::Entity *,re::ecs2::ImageBasedLightReceiverComponent *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(&v327);
        re::BucketArray<re::LightContext,16ul>::deinit(&v322[32]);
        if (*&v322[32])
        {
          v238 = v324;
          if ((v324 & 1) == 0)
          {
            (*(**&v322[32] + 40))(*&v322[32], *(&v325 + 1));
            v238 = v324;
          }

          *&v322[32] = 0;
          v323 = 0;
          LODWORD(v324) = (v238 | 1) + 2;
        }

        re::DynamicArray<re::FilterView>::deinit(&v321 + 8);
        re::DynamicArray<re::ShadowView>::deinit(&v319);
        v222 = v316;
        v223 = a3;
      }

      ++v39;
      v17 += 3016;
      v7 += 1568;
      if (v39 >= v222)
      {
        goto LABEL_355;
      }
    }

LABEL_396:
    *&v275[0] = 0;
    memset(v322, 0, 32);
    v320 = 0u;
    v321 = 0u;
    v319 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v356 = 136315906;
    *&v356[4] = "operator[]";
    *v357 = 1024;
    *&v357[2] = 468;
    *&v357[6] = 2048;
    *&v357[8] = v39;
    *&v357[16] = 2048;
    *&v357[18] = j;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_397:
    *&v275[0] = 0;
    memset(v322, 0, 32);
    v320 = 0u;
    v321 = 0u;
    v319 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v356 = 136315906;
    *&v356[4] = "operator[]";
    *v357 = 1024;
    *&v357[2] = 468;
    *&v357[6] = 2048;
    *&v357[8] = v3;
    *&v357[16] = 2048;
    *&v357[18] = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_398:
    *&v275[0] = 0;
    memset(v322, 0, 32);
    v320 = 0u;
    v321 = 0u;
    v319 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v356 = 136315906;
    *&v356[4] = "operator[]";
    *v357 = 1024;
    *&v357[2] = 468;
    *&v357[6] = 2048;
    *&v357[8] = v17;
    *&v357[16] = 2048;
    *&v357[18] = j;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_399:
    *&v275[0] = 0;
    memset(v322, 0, 32);
    v320 = 0u;
    v321 = 0u;
    v319 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v356 = 136315906;
    *&v356[4] = "operator[]";
    *v357 = 1024;
    *&v357[2] = 468;
    *&v357[6] = 2048;
    *&v357[8] = v3;
    *&v357[16] = 2048;
    *&v357[18] = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_400:
    re::internal::assertLog(4, v208, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "first", 754);
    _os_crash();
    __break(1u);
LABEL_401:
    re::internal::assertLog(4, v211, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "first", 754);
    _os_crash();
    __break(1u);
LABEL_402:
    re::internal::assertLog(4, v214, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "first", 754);
    _os_crash();
    __break(1u);
LABEL_403:
    re::internal::assertLog(4, v216, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "first", 754);
    _os_crash();
    __break(1u);
LABEL_404:
    re::internal::assertLog(4, v221, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "first", 754);
    _os_crash();
    __break(1u);
LABEL_405:
    *&v275[0] = 0;
    memset(v322, 0, 32);
    v320 = 0u;
    v321 = 0u;
    v319 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v356 = 136315906;
    *&v356[4] = "operator[]";
    *v357 = 1024;
    *&v357[2] = 858;
    *&v357[6] = 2048;
    *&v357[8] = 0;
    *&v357[16] = 2048;
    *&v357[18] = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    while (1)
    {
      *&v275[0] = 0;
      memset(v322, 0, 32);
      v320 = 0u;
      v321 = 0u;
      v319 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v356 = 136315906;
      *&v356[4] = "operator[]";
      *v357 = 1024;
      *&v357[2] = 866;
      *&v357[6] = 2048;
      *&v357[8] = 0;
      *&v357[16] = 2048;
      *&v357[18] = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_407:
      *&v319 = 0xBEE9CE6A024C1838;
      *(&v319 + 1) = "meshshadow:textureGenerationEnableViewFrustumCulling";
      re::DebugSettingsManager::getWithErrorCode<BOOL>(j, &v319, &v286);
      re::StringID::destroyString(&v319);
LABEL_40:
      v258 = j;
      v259 = v7;
      v38 = v316;
      v255 = v8;
      if (v316)
      {
        v39 = 0;
        j = 0xBF58476D1CE4E5B9;
        v3 = 0x94D049BB133111EBLL;
        v7 = 24;
        v40 = a3;
        while (1)
        {
          v4 = *(v40 + 24);
          if (v4 <= v39)
          {
            *&v275[0] = 0;
            memset(v322, 0, 32);
            v320 = 0u;
            v321 = 0u;
            v319 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v356 = 136315906;
            *&v356[4] = "operator[]";
            *v357 = 1024;
            *&v357[2] = 468;
            *&v357[6] = 2048;
            *&v357[8] = v39;
            *&v357[16] = 2048;
            *&v357[18] = v4;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_393:
            *&v275[0] = 0;
            memset(v322, 0, 32);
            v320 = 0u;
            v321 = 0u;
            v319 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v356 = 136315906;
            *&v356[4] = "operator[]";
            *v357 = 1024;
            *&v357[2] = 468;
            *&v357[6] = 2048;
            *&v357[8] = v39;
            *&v357[16] = 2048;
            *&v357[18] = v4;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_394:
            *&v275[0] = 0;
            memset(v322, 0, 32);
            v320 = 0u;
            v321 = 0u;
            v319 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v356 = 136315906;
            *&v356[4] = "operator[]";
            *v357 = 1024;
            *&v357[2] = 468;
            *&v357[6] = 2048;
            *&v357[8] = v39;
            *&v357[16] = 2048;
            *&v357[18] = j;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_395:
            *&v275[0] = 0;
            memset(v322, 0, 32);
            v320 = 0u;
            v321 = 0u;
            v319 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v356 = 136315906;
            *&v356[4] = "operator[]";
            *v357 = 1024;
            *&v357[2] = 468;
            *&v357[6] = 2048;
            *&v357[8] = v262;
            *&v357[16] = 2048;
            *&v357[18] = v262;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_396;
          }

          v8 = (v318 + 8 * v39);
          v41 = 0xBF58476D1CE4E5B9 * (*v8 ^ (*v8 >> 30));
          v42 = (0x94D049BB133111EBLL * (v41 ^ (v41 >> 27))) ^ ((0x94D049BB133111EBLL * (v41 ^ (v41 >> 27))) >> 31);
          if (!v288)
          {
            break;
          }

          v43 = v42 % DWORD2(v289);
          v44 = *(*(&v288 + 1) + 4 * v43);
          if (v44 == 0x7FFFFFFF)
          {
            goto LABEL_49;
          }

          while (*(v289 + 24 * v44 + 8) != *v8)
          {
            LODWORD(v44) = *(v289 + 24 * v44) & 0x7FFFFFFF;
            if (v44 == 0x7FFFFFFF)
            {
              goto LABEL_49;
            }
          }

LABEL_50:
          if (v4 <= v39)
          {
            goto LABEL_393;
          }

          v4 = (*(v40 + 32) + 1568 * v39);
          v47 = *(re::RenderFrameData::stream(v264, v8) + 48);
          v4[193] = v47;
          if (v17)
          {
            v48 = (*(*v47 + 880))(v47) != 0;
            v47 = v4[193];
          }

          else
          {
            v48 = 0;
          }

          *(v4 + 1504) = v48;
          *(v4 + 1505) = 0;
          *v4 = (*(*v47 + 480))(v47);
          ++v39;
          v38 = v316;
          v40 = a3;
          if (v39 >= v316)
          {
            j = v258;
            goto LABEL_57;
          }
        }

        LODWORD(v43) = 0;
LABEL_49:
        v45 = *(v40 + 32) + 1568 * v39;
        v46 = re::HashTable<re::WeakStringID,re::RenderFrameContextBuilder::Result::PerSceneData *,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(&v288, v43, v42);
        *(v46 + 8) = *v8;
        *(v46 + 16) = v45;
        ++HIDWORD(v291);
        v40 = a3;
        v4 = *(a3 + 24);
        goto LABEL_50;
      }

      v40 = a3;
LABEL_57:
      v285 = 5.0;
      v3 = v5;
      if (j)
      {
        *&v319 = 0xB06DDEFED9D91CB8;
        *(&v319 + 1) = "iblshadow:distanceforglobaldirectionallight";
        v49 = re::DebugSettingsManager::getWithErrorCode<float>(j, &v319, &v285);
        if (v319)
        {
          if (v319)
          {
          }
        }

        v38 = v316;
        v40 = a3;
      }

      v262 = v5;
      if (!v38)
      {
        break;
      }

      v17 = 0;
      v4 = &v319;
      v7 = 1;
      LODWORD(v270) = v38;
      j = *(v40 + 24);
      if (!j)
      {
        goto LABEL_398;
      }

      v50 = *(v40 + 32);
      if ((*v40 & 1) == 0)
      {
        v51 = *(*v50 + 32);
        *v40 = 1;
        *(v40 + 1) = v51;
      }

      v6 = v318;
      *(v50 + 8) = *v318;
      v8 = re::RenderFrameData::stream(v264, v6);
      *(v50 + 104) = (*(**(v50 + 1544) + 568))(*(v50 + 1544), v52);
      *(v50 + 112) = (*(**(v50 + 1544) + 600))(*(v50 + 1544), v53);
      *(v50 + 120) = (*(**(v50 + 1544) + 632))(*(v50 + 1544), v54);
      *(v50 + 128) = (*(**(v50 + 1544) + 664))(*(v50 + 1544), v55);
      v273 = v50;
      *(v50 + 648) = (*(**(v50 + 1544) + 832))(*(v50 + 1544), v56);
      j = re::RenderFrameData::stream(v264, v6);
      re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::findEntry<std::type_index>(j, v356, &v319);
      if (HIDWORD(v319) == 0x7FFFFFFF)
      {
        v284 = 0;
        v57 = v258;
        goto LABEL_76;
      }

      v58 = *(j + 16) + 96 * HIDWORD(v319);
      v284 = 0;
      v57 = v258;
      if (!v59 || !*(v59 + 40))
      {
        goto LABEL_76;
      }

      if (*(v59 + 8))
      {
        if (*(v59 + 16))
        {
          v60 = (v59 + 24);
        }

        else
        {
          v60 = *(v59 + 32);
        }

        if (**v60 == 1)
        {
          v284 = 1;
        }

LABEL_76:
        if (v57)
        {
          *&v319 = 0xDE63B48E3B4B8A1ELL;
          *(&v319 + 1) = "globaldirectionallight";
          v61 = re::DebugSettingsManager::getWithErrorCode<BOOL>(v57, &v319, &v284);
          if (v319)
          {
            if (v319)
            {
            }
          }
        }

        if (v5)
        {
          *(v261 + 2969) = v257;
          if (v284 == 1)
          {
            re::LightContextBuilder::addGlobalDirectionalLight(v261, v285);
          }

          v17 = v365;
          v365[0] = &unk_1F5D11BF0;
          v365[1] = v261;
          v366 = v365;
          re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::findEntry<std::type_index>(v8, v356, &v319);
          {
LABEL_89:
            if (v366 == v365)
            {
              (*(*v366 + 32))(v366);
              v66 = v271;
            }

            else
            {
              v66 = v271;
              if (v366)
              {
                (*(*v366 + 40))(v366, v62);
              }
            }

            v67 = *(v273 + 648);
            if (!v67 || (v266 = *(v67 + 40)) == 0)
            {
LABEL_134:
              v91 = *(v273 + 120);
              if (v91)
              {
                v92 = *(v91 + 40);
                if (v92)
                {
                  for (k = 0; k != v92; ++k)
                  {
                    v94 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](v91, k);
                    v95 = *(v94 + 16);
                    if (v95)
                    {
                      v96 = 1648 * v95;
                      v97 = (*(v94 + 32) + 1633);
                      do
                      {
                        v98 = re::HashTable<re::WeakStringID,re::RenderFrameContextBuilder::Result::PerSceneData *,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(&v288, *(v97 - 81) >> 1);
                        if (v98)
                        {
                          *(v273 + 1512) = ***v98;
                          v99 = *v97;
                          if (v99 == 1)
                          {
                            *(v273 + 1504) = *(*v98 + 1504);
                          }

                          *(v273 + 626) = 1;
                          *(v273 + 625) = *(v97 - 1);
                          *(v273 + 624) = v99;
                        }

                        v97 += 1648;
                        v96 -= 1648;
                      }

                      while (v96);
                    }
                  }
                }
              }

              v100 = *(v273 + 128);
              if (v100)
              {
                v101 = *(v100 + 40);
                if (v101)
                {
                  for (m = 0; m != v101; ++m)
                  {
                    v103 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](v100, m);
                    v104 = *(v103 + 16);
                    if (v104)
                    {
                      v105 = 3216 * v104;
                      v106 = (*(v103 + 32) + 3201);
                      do
                      {
                        v107 = re::HashTable<re::WeakStringID,re::RenderFrameContextBuilder::Result::PerSceneData *,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(&v288, *(v106 - 81) >> 1);
                        if (v107)
                        {
                          *(v273 + 1512) = ***v107;
                          v108 = *v106;
                          if (v108 == 1)
                          {
                            *(v273 + 1504) = *(*v107 + 1504);
                          }

                          *(v273 + 626) = 1;
                          *(v273 + 625) = *(v106 - 1);
                          *(v273 + 624) = v108;
                        }

                        v106 += 3216;
                        v105 -= 3216;
                      }

                      while (v105);
                    }
                  }
                }
              }

              v364 = 0;
              operator new();
            }

            v68 = 0;
            v265 = *(v273 + 648);
LABEL_96:
            v267 = v68;
            v69 = re::BucketArray<re::SmallHashTable<unsigned long long,re::StencilPortal,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>,4ul>::operator[](v67, v68);
            v70 = *(v69 + 6972);
            if (v70)
            {
              v71 = v69 + 6944;
              v270 = *(v69 + 6976);
              v66 = 0;
              if (v270)
              {
                v72 = *(v69 + 6960);
                do
                {
                  if ((*v72 & 0x80000000) != 0)
                  {
                    goto LABEL_104;
                  }

                  v72 += 216;
                  ++v66;
                }

                while (v270 != v66);
                v66 = *(v69 + 6976);
              }

              else
              {
                LODWORD(v270) = 0;
              }

LABEL_104:
              v268 = v69 + 6944;
            }

            else
            {
              v71 = v69 + 32;
              v268 = v69 + 32 + 864 * *(v69 + 16);
            }

            v269 = *(v69 + 6972);
            while (1)
            {
LABEL_106:
              if (v70)
              {
                if (v270 == v66)
                {
                  goto LABEL_133;
                }

                v73 = *(v71 + 16) + 864 * v66 + 16;
              }

              else
              {
                if (v71 == v268)
                {
LABEL_133:
                  v68 = v267 + 1;
                  v67 = v265;
                  if (v267 + 1 == v266)
                  {
                    goto LABEL_134;
                  }

                  goto LABEL_96;
                }

                v73 = v71 + 16;
              }

              v74 = re::HashTable<re::WeakStringID,re::RenderFrameContextBuilder::Result::PerSceneData *,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(&v288, *v73 >> 1);
              if (v74)
              {
                v75 = v74;
                v272 = v66;
                v76 = *v74;
                v77 = *(v273 + 104);
                if (v77)
                {
                  v78 = *(v77 + 40);
                  if (v78)
                  {
                    for (n = 0; n != v78; ++n)
                    {
                      v80 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](v77, n);
                      *re::BucketArray<re::DynamicArray<re::CameraView> const*,4ul>::addUninitialized((v76 + 512)) = v80;
                    }
                  }
                }

                v81 = *(v273 + 112);
                if (v81)
                {
                  v82 = *(v81 + 40);
                  if (v82)
                  {
                    for (ii = 0; ii != v82; ++ii)
                    {
                      v84 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](v81, ii);
                      *re::BucketArray<re::DynamicArray<re::CameraMultiView> const*,4ul>::addUninitialized((v76 + 568)) = v84;
                    }
                  }
                }

                v85 = *(v273 + 8);
                v86 = *v75;
                if ((*(*v75 + 1528) & 1) == 0)
                {
                  *(v86 + 1528) = 1;
                }

                *(v86 + 1536) = v85;
                v66 = v272;
                v70 = v269;
                if ((*(v73 + 768) & 1) == 0)
                {
                  *(v86 + 1512) = **v273;
                  v86 = *v75;
                }

                *(v86 + 1504) = *(v273 + 1504);
                v76[626] = 1;
                v76[625] = *(v73 + 769);
                v76[624] = *(v73 + 770);
              }

              if (v70)
              {
                v87 = *(v71 + 32);
                v88 = v66 + 1;
                if (v87 <= v66 + 1)
                {
                  v66 = (v66 + 1);
                }

                else
                {
                  v66 = v87;
                }

                do
                {
                  if (v66 == v88)
                  {
                    goto LABEL_106;
                  }

                  v89 = v88;
                  v90 = *(*(v71 + 16) + 864 * v88++);
                }

                while ((v90 & 0x80000000) == 0);
                v66 = v89;
              }

              else
              {
                v71 += 864;
              }
            }
          }

          v3 = 0;
          while (1)
          {
            v65 = re::BucketArray<re::LightInfoArrays,4ul>::operator[](j, v3);
            if (!v366)
            {
              goto LABEL_412;
            }

            (*(*v366 + 48))(v366, v65);
            if (v64 == ++v3)
            {
              goto LABEL_89;
            }
          }
        }

        goto LABEL_399;
      }
    }

    *&v282 = 0;
    v280 = 0;
    v281 = 0;
    v279 = v259;
    re::DynamicArray<re::MeshShadowPerSceneUpdateData>::setCapacity(&v279, 0);
    ++v281;
    *&v319 = 0xC1ECEDF69A9CD01;
    v109 = re::RenderFrameData::stream(v264, &v319);
    v362[0] = &unk_1F5D11D50;
    v362[1] = &v279;
    v363 = v362;
    re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::findEntry<std::type_index>(v109, v356, &v319);
    if (HIDWORD(v319) == 0x7FFFFFFF)
    {
      v6 = v260;
      v3 = v255;
    }

    else
    {
      v111 = *(v109 + 16) + 96 * HIDWORD(v319);
      v6 = v260;
      v3 = v255;
      if (j)
      {
        v112 = *(j + 40);
        if (v112)
        {
          v17 = 0;
          do
          {
            v113 = re::BucketArray<re::MeshShadowPerSceneUpdateData,4ul>::operator[](j, v17);
            if (!v363)
            {
              goto LABEL_412;
            }

            (*(*v363 + 48))(v363, v113);
          }

          while (v112 != ++v17);
        }
      }
    }

    if (v363 == v362)
    {
      (*(*v363 + 32))(v363);
      j = v258;
    }

    else
    {
      j = v258;
      if (v363)
      {
        (*(*v363 + 40))(v363, v110);
      }
    }

    v114 = (*(**v3 + 280))(*v3);
    if (v114)
    {
      v115 = v114;
      if ((atomic_load_explicit(&qword_1EE1BF6B0, memory_order_acquire) & 1) == 0)
      {
        v114 = __cxa_guard_acquire(&qword_1EE1BF6B0);
        if (v114)
        {
          _MergedGlobals_514 = re::hashString("SkyScope", v251);
          __cxa_guard_release(&qword_1EE1BF6B0);
        }
      }

      if ((atomic_load_explicit(&qword_1EE1BF6C0, memory_order_acquire) & 1) == 0)
      {
        v114 = __cxa_guard_acquire(&qword_1EE1BF6C0);
        if (v114)
        {
          v253 = _MergedGlobals_514;
          v254 = ((v253 << 6) - 0x61C8864680B583E9 + (v253 >> 2) + re::hashString("RenderFrame", v252)) ^ v253;
          j = v258;
          qword_1EE1BF6B8 = v254;
          __cxa_guard_release(&qword_1EE1BF6C0);
        }
      }

      v116 = "N2re27RenderGraphDataStoreWrapperINS_11OpenSkyDataEEE";
      if (("N2re27RenderGraphDataStoreWrapperINS_11OpenSkyDataEEE" & 0x8000000000000000) != 0)
      {
        v117 = ("N2re27RenderGraphDataStoreWrapperINS_11OpenSkyDataEEE" & 0x7FFFFFFFFFFFFFFFLL);
        v118 = 5381;
        do
        {
          v116 = v118;
          v119 = *v117++;
          v118 = (33 * v118) ^ v119;
        }

        while (v119);
      }

      *&v319 = (qword_1EE1BF6B8 - 0x61C8864680B583E9 + (v116 << 6) + (v116 >> 2)) ^ v116;
      v120 = re::globalAllocators(v114);
      v121 = (*(*v120[2] + 32))(v120[2], 224, 16);
      *v121 = &unk_1F5D11DF8;
      v122 = *(v115 + 1);
      *(v121 + 16) = *v115;
      *(v121 + 32) = v122;
      v123 = *(v115 + 2);
      v124 = *(v115 + 3);
      v125 = *(v115 + 4);
      *(v121 + 96) = *(v115 + 20);
      *(v121 + 64) = v124;
      *(v121 + 80) = v125;
      *(v121 + 48) = v123;
      *(v121 + 136) = 0;
      *(v121 + 112) = 0;
      *(v121 + 120) = 0;
      *(v121 + 104) = 0;
      *(v121 + 128) = 0;
      *(v121 + 104) = *(v115 + 11);
      *(v115 + 11) = 0;
      *(v121 + 112) = *(v115 + 12);
      *(v115 + 12) = 0;
      v126 = *(v121 + 120);
      *(v121 + 120) = *(v115 + 13);
      *(v115 + 13) = v126;
      v127 = *(v121 + 136);
      *(v121 + 136) = *(v115 + 15);
      *(v115 + 15) = v127;
      ++*(v115 + 28);
      ++*(v121 + 128);
      *(v121 + 176) = 0;
      *(v121 + 152) = 0;
      *(v121 + 160) = 0;
      *(v121 + 144) = 0;
      *(v121 + 168) = 0;
      *(v121 + 144) = *(v115 + 16);
      *(v115 + 16) = 0;
      *(v121 + 152) = *(v115 + 17);
      *(v115 + 17) = 0;
      v128 = *(v121 + 160);
      *(v121 + 160) = *(v115 + 18);
      *(v115 + 18) = v128;
      v129 = *(v121 + 176);
      *(v121 + 176) = *(v115 + 20);
      *(v115 + 20) = v129;
      ++*(v115 + 38);
      ++*(v121 + 168);
      v130 = *(v115 + 168);
      *(v121 + 193) = *(v115 + 177);
      *(v121 + 184) = v130;
      *v356 = v121;
      re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v6 + 48, &v319, v356);
    }

    v17 = (*(**v3 + 344))(*v3);
    v131 = (*(**v3 + 312))(*v3);
    if (v17)
    {
      v4 = v131;
      if (!v131)
      {
        goto LABEL_413;
      }

      v8 = *(v256 + 192);
      if (j)
      {
        goto LABEL_414;
      }

      goto LABEL_178;
    }
  }

LABEL_355:
  v239 = v279;
  if (v279)
  {
    v240 = v282;
    if (v282)
    {
      if (v280)
      {
        v241 = 0;
        v242 = 368 * v280;
        do
        {
          re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit((v240 + v241 + 312));
          re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit((v240 + v241 + 264));
          re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit((v240 + v241 + 216));
          re::HashTable<unsigned long long,re::MeshShadowPlaneData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit((v240 + v241 + 168));
          re::HashTable<unsigned long long,re::MeshShadowCluster,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit((v240 + v241 + 120));
          re::DynamicArray<unsigned long>::deinit(v240 + v241 + 80);
          re::DynamicArray<unsigned long>::deinit(v240 + v241 + 40);
          re::DynamicArray<unsigned long>::deinit(v240 + v241);
          v241 += 368;
        }

        while (v242 != v241);
        v239 = v279;
        v240 = v282;
      }

      (*(*v239 + 40))(v239, v240);
    }
  }

  re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v287);
  v244.n128_f64[0] = re::HashTable<re::WeakStringID,re::TextureBlockResolution,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(&v288);
  if (v377 == 1)
  {
    if (v378)
    {
      if (v378)
      {
      }
    }

    v379 = &str_67;
    v378 = 0;
  }

  if (*(&v375 + 1))
  {

    *(&v375 + 1) = 0;
  }

  if (v375)
  {

    *&v375 = 0;
  }

  if (v374)
  {

    v374 = 0;
  }

  v245 = v367[0];
  if (v367[0] && v370)
  {
    if (v368)
    {
      v246 = 32 * v368;
      v247 = (v370 + 8);
      do
      {
        re::StringID::destroyString(v247);
        v247 = (v247 + 32);
        v246 -= 32;
      }

      while (v246);
      v245 = v367[0];
    }

    (*(*v245 + 40))(v245, v244);
  }

  if (v3)
  {
    v248 = 3016 * v3;
    v249 = v261;
    do
    {
      re::DynamicInlineArray<re::KeyValuePair<unsigned short,re::LightContextBuilder::LightArrays>,8ul>::clear((v249 + 80));
      re::HashTable<unsigned short,re::LightContextBuilder::LightArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,true>::deinit((v249 + 2912));
      *(v249 + 64) = 0;
      *(v249 + 72) = 0;
      re::HashTable<unsigned short,re::LightContextBuilder::LightArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,true>::deinit((v249 + 2912));
      re::DynamicInlineArray<re::KeyValuePair<unsigned short,re::LightContextBuilder::LightArrays>,8ul>::clear((v249 + 80));
      re::FixedArray<re::FixedArray<unsigned int>>::deinit((v249 + 40));
      re::DynamicArray<re::DirectionalLightInfo>::deinit(v249);
      v249 += 3016;
      v248 -= 3016;
    }

    while (v248);
  }

  re::DataArray<re::TextureAtlasTile>::deinit(&v303);
  if (v303)
  {
    if (v307)
    {
      (*(*v303 + 40))(v303, v307);
    }

    v307 = 0;
    v304 = 0;
    v305 = 0;
    v303 = 0;
    ++v306;
  }

  re::DataArray<re::TextureAtlasTile>::deinit(&v293);
  if (v293 && v296)
  {
    (*(*v293 + 40))(v293, v296);
  }

  return re::DynamicArray<re::WeakStringID>::deinit(v315);
}

uint64_t re::HashTable<re::WeakStringID,re::RenderFrameContextBuilder::Result::PerSceneData *,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(uint64_t a1, unint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<unsigned long,re::BufferTable *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(v5, a1, a2, v3 ^ (v3 >> 31));
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 24 * v6 + 16;
  }
}

void *re::DynamicArray<re::ProjectiveMeshShadowBuilder::Input::PerSceneData>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ProjectiveMeshShadowBuilder::Input::PerSceneData>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 59)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 32, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 32 * a2;
          result = (*(*result + 32))(result, 32 * a2, 8);
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
        v10 = &v8[4 * v9];
        v11 = v7;
        do
        {
          *v11 = *v8;
          v13 = v8[1];
          v12 = v8 + 1;
          v11[1] = v11[1] & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
          v11[1] = *v12 & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
          v14 = v12[2];
          v11[2] = v12[1];
          *v12 = 0;
          v12[1] = &str_67;
          v11[3] = v14;
          re::StringID::destroyString(v12);
          v11 += 4;
          v8 = v12 + 3;
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

uint64_t re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryEmplace<>(uint64_t a1, uint64_t *a2)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 72 * HIDWORD(v9) + 16;
  }

  v5 = re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v9, v8);
  v6 = *a2;
  *(v5 + 16) = 0u;
  result = v5 + 16;
  *(result - 8) = v6;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *(result + 36) = 0x7FFFFFFF;
  ++*(a1 + 40);
  return result;
}

unint64_t re::HashTable<unsigned long long,re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryEmplace<>(uint64_t a1, uint64_t *a2)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + (HIDWORD(v9) << 6) + 16;
  }

  v5 = re::HashTable<unsigned long long,re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v9, v8);
  v6 = *a2;
  *(v5 + 16) = 0;
  result = v5 + 16;
  *(result - 8) = v6;
  *(result + 32) = 0;
  *(result + 24) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  ++*(a1 + 40);
  return result;
}

unint64_t *re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>::add(uint64_t a1, unint64_t *a2)
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

        re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = *(a1 + 32) + 112 * v5;
  *v11 = 0;
  *(v11 + 8) = 0;
  result = re::DynamicInlineArray<re::PlaneF,6ul>::move(v11, a2);
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

uint64_t re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 72 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 72 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 72 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 64) = a3;
  ++*(a1 + 28);
  return v7 + 72 * v5;
}

void re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<char const*,re::AssetLoadRequest::LoadStatistics::AssetTypeStats,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::init(v9, v4, a2);
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
      re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(a1, v9);
      re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v9);
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

uint64_t re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 32;
    do
    {
      v7 = *(a2 + 16) + v6;
      if ((*(v7 - 32) & 0x80000000) != 0)
      {
        result = re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v4, *(v7 + 32) % *(v4 + 24));
        v8 = *(a2 + 16) + v6;
        *(result + 8) = *(v8 - 24);
        *(result + 48) = 0;
        *(result + 16) = 0u;
        *(result + 32) = 0u;
        *(result + 52) = 0x7FFFFFFFLL;
        *(result + 16) = *(v8 - 16);
        *(v8 - 16) = 0;
        v9 = *(result + 24);
        *(result + 24) = *(v8 - 8);
        *(v8 - 8) = v9;
        v10 = *(result + 32);
        *(result + 32) = *v8;
        *v8 = v10;
        *(result + 40) = *(v8 + 8);
        *(v8 + 8) = 0;
        LODWORD(v10) = *(result + 44);
        *(result + 44) = *(v8 + 12);
        *(v8 + 12) = v10;
        LODWORD(v10) = *(result + 48);
        *(result + 48) = *(v8 + 16);
        *(v8 + 16) = v10;
        LODWORD(v10) = *(result + 52);
        *(result + 52) = *(v8 + 20);
        *(v8 + 20) = v10;
        ++*(result + 56);
        v2 = *(a2 + 32);
      }

      ++v5;
      v6 += 72;
    }

    while (v5 < v2);
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v29, v9, v8);
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
            v17 = v13 + 32;
            do
            {
              if ((*(v17 - 32) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long long,re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v17 + 24) % *(a1 + 24));
                v19 = *(v17 - 24);
                *(v18 + 48) = 0;
                *(v18 + 40) = 0;
                *(v18 + 24) = 0;
                *(v18 + 32) = 0;
                *(v18 + 8) = v19;
                *(v18 + 16) = 0;
                v20 = *(v17 - 8);
                *(v18 + 16) = *(v17 - 16);
                *(v18 + 24) = v20;
                *(v17 - 16) = 0;
                *(v17 - 8) = 0;
                v21 = *(v18 + 32);
                *(v18 + 32) = *v17;
                *v17 = v21;
                v22 = *(v18 + 48);
                *(v18 + 48) = *(v17 + 16);
                *(v17 + 16) = v22;
                ++*(v17 + 8);
                ++*(v18 + 40);
              }

              v17 += 64;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long long,re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v29);
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
    v24 = *(v23 + (v5 << 6));
  }

  else
  {
    v23 = *(a1 + 16);
    v24 = *(v23 + (v5 << 6));
    *(a1 + 36) = v24 & 0x7FFFFFFF;
  }

  v26 = v23 + (v5 << 6);
  *v26 = v24 | 0x80000000;
  v27 = *(a1 + 8);
  *v26 = *(v27 + 4 * a2) | 0x80000000;
  *(v26 + 56) = a3;
  *(v27 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v23 + (v5 << 6);
}

double re::HashTable<unsigned long long,re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      for (i = 0; i < v3; ++i)
      {
        v5 = a1[2] + (i << 6);
        if ((*v5 & 0x80000000) != 0)
        {
          *v5 &= ~0x80000000;
          v6 = *(v5 + 16);
          if (v6)
          {
            v7 = *(v5 + 48);
            if (v7)
            {
              v8 = *(v5 + 32);
              if (v8)
              {
                v9 = v7 + 112 * v8;
                v10 = *(v5 + 48);
                do
                {
                  *v10 = 0;
                  ++*(v10 + 8);
                  v10 += 112;
                }

                while (v10 != v9);
              }

              (*(*v6 + 40))(v6);
            }

            *(v5 + 48) = 0;
            *(v5 + 24) = 0;
            *(v5 + 32) = 0;
            *(v5 + 16) = 0;
            ++*(v5 + 40);
            v3 = *(a1 + 8);
          }
        }
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

void *re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x70uLL))
        {
          v2 = 112 * a2;
          result = (*(*result + 32))(result, 112 * a2, 16);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 112, a2);
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
        v10 = v8 + 112 * v9;
        v11 = v7;
        do
        {
          *v11 = 0;
          *(v11 + 2) = 0;
          re::DynamicInlineArray<re::PlaneF,6ul>::move(v11, v8);
          *v8 = 0;
          ++*(v8 + 8);
          v8 += 112;
          v11 += 14;
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

uint64_t re::HashTable<unsigned short,re::LightContexts::LightContextContents,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      v4 = *a1 == *a2;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(a1, a2);
    }

    else
    {
      re::HashTable<unsigned short,re::LightContexts::LightContextContents,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::clear(a1);
      if (*a2)
      {
        v5 = *(a2 + 28);
        if (*(a1 + 24) < v5)
        {
          re::HashTable<unsigned short,re::LightContexts::LightContextContents,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::setCapacity(a1, v5);
        }

        re::HashTable<unsigned short,re::LightContexts::LightContextContents,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::move(a1, a2);
        ++*(a1 + 40);
      }
    }
  }

  return a1;
}

void re::HashTable<unsigned short,re::LightContexts::LightContextContents,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &unk_1E304C660, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = *(a1 + 16);
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit((v6 + v4 + 16));
          v3 = *(a1 + 32);
        }

        v4 += 72;
      }
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v8 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v8;
  }
}

void re::HashTable<unsigned short,re::LightContexts::LightContextContents,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<char const*,re::AssetLoadRequest::LoadStatistics::AssetTypeStats,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::init(v9, v4, a2);
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
      re::HashTable<unsigned short,re::LightContexts::LightContextContents,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::move(a1, v9);
      re::HashTable<re::ecs2::Scene const*,re::HashTable<re::ecs2::Entity *,re::ecs2::ImageBasedLightReceiverComponent *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(v9);
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

uint64_t *re::HashTable<unsigned short,re::LightContexts::LightContextContents,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::move(uint64_t *result, uint64_t a2)
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
        v8 = re::HashTable<unsigned short,re::LightContexts::LightContextContents,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::allocEntry(v4, *(v7 + v5 + 64) % *(v4 + 24), *(v7 + v5 + 64));
        v9 = *(a2 + 16) + v5;
        v10 = *(v9 + 4);
        v11 = *(v9 + 8);
        *(v8 + 16) = 0u;
        v8 += 16;
        *(v8 - 12) = v10;
        *(v8 - 8) = v11;
        *(v8 + 16) = 0u;
        *(v8 + 32) = 0;
        *(v8 + 36) = 0x7FFFFFFFLL;
        result = re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v8, (v9 + 16));
        v2 = *(a2 + 32);
      }

      v5 += 72;
    }
  }

  return result;
}

uint64_t re::HashTable<unsigned short,re::LightContexts::LightContextContents,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned short,re::LightContexts::LightContextContents,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::setCapacity(a1, (2 * *(a1 + 28)));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 72 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 72 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 72 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 64) = a3;
  ++*(a1 + 28);
  return v7 + 72 * v5;
}

uint64_t re::BucketArray<re::LightContext,16ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::LightContext,16ul>::operator[](a1, i);
      re::FixedArray<CoreIKTransform>::deinit(v4 + 15);
      re::FixedArray<CoreIKTransform>::deinit(v4 + 12);
      re::FixedArray<CoreIKTransform>::deinit(v4 + 9);
      re::FixedArray<CoreIKTransform>::deinit(v4 + 6);
      re::FixedArray<CoreIKTransform>::deinit(v4 + 3);
      re::FixedArray<CoreIKTransform>::deinit(v4);
    }
  }

  while (*(a1 + 8))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(a1);
  }

  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

uint64_t re::DynamicArray<re::FilterView>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 688 * v4;
        do
        {
          re::DynamicArray<re::MeshScene>::deinit(v3 + 640);
          re::DynamicString::deinit(v3);
          v3 = (v3 + 688);
          v5 -= 688;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

uint64_t re::DynamicArray<re::ShadowView>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 656 * v4;
        do
        {
          re::DynamicString::deinit(v3);
          v3 = (v3 + 656);
          v5 -= 656;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

void *re::FixedArray<re::RenderFrameContextBuilder::Result::PerSceneData>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 1568 * v2;
      do
      {
        re::RenderFrameContextBuilder::Result::PerSceneData::~PerSceneData(v4);
        v4 = (v6 + 1568);
        v5 -= 1568;
      }

      while (v5);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

void re::RenderFrameContextBuilder::Result::PerSceneData::~PerSceneData(re::RenderFrameContextBuilder::Result::PerSceneData *this)
{
  if (*(this + 1528) == 1)
  {
    *(this + 192) = 0;
  }

  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 1040);
  re::StringID::destroyString((this + 656));
  re::BucketArray<unsigned long,4ul>::deinit(this + 568);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 568);
  re::BucketArray<unsigned long,4ul>::deinit(this + 512);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 512);
  re::FixedArray<CoreIKTransform>::deinit(this + 55);
  re::FixedArray<CoreIKTransform>::deinit(this + 52);
  re::FixedArray<CoreIKTransform>::deinit(this + 49);
  re::FixedArray<CoreIKTransform>::deinit(this + 46);
  re::FixedArray<CoreIKTransform>::deinit(this + 43);
  re::FixedArray<CoreIKTransform>::deinit(this + 40);
  re::HashTable<re::ecs2::Scene const*,re::HashTable<re::ecs2::Entity *,re::ecs2::ImageBasedLightReceiverComponent *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(this + 34);
  re::BucketArray<re::LightContext,16ul>::deinit(this + 216);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 216);
  re::DynamicArray<re::FilterView>::deinit(this + 176);
  re::DynamicArray<re::ShadowView>::deinit(this + 136);
  re::BucketArray<re::MeshSceneCollection,16ul>::deinit(this + 40);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 40);
  *(this + 1) = 0;
}

uint64_t re::BucketArray<re::MeshSceneCollection,16ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::MeshSceneCollection,16ul>::operator[](a1, i);
      re::DynamicArray<re::MeshScene>::deinit(v4);
    }
  }

  while (*(a1 + 8))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(a1);
  }

  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

uint64_t re::RenderFrameContextBuilder::Result::PerSceneData::PerSceneData(uint64_t a1, re::Allocator *a2)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 56) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 88) = 0;
  re::BucketArray<re::MeshSceneCollection,16ul>::init(a1 + 40, a2, 1uLL);
  *(a1 + 168) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 136) = a2;
  re::DynamicArray<re::ShadowView>::setCapacity((a1 + 136), 0);
  ++*(a1 + 160);
  *(a1 + 176) = a2;
  *(a1 + 208) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  re::DynamicArray<re::FilterView>::setCapacity((a1 + 176), 0);
  ++*(a1 + 200);
  re::LightContexts::LightContexts((a1 + 216), a2);
  re::PortalInfo::PortalInfo((a1 + 512), a2);
  bzero((a1 + 632), 0x368uLL);
  *(a1 + 664) = &str_67;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0u;
  v4.i64[0] = 0x7F0000007FLL;
  v4.i64[1] = 0x7F0000007FLL;
  *(a1 + 752) = 0u;
  *(a1 + 768) = vnegq_f32(v4);
  *(a1 + 1128) = 0;
  *(a1 + 784) = v4;
  *(a1 + 800) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 896) = 0u;
  *(a1 + 912) = 0u;
  *(a1 + 928) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 960) = 0;
  *(a1 + 1092) = 0u;
  *(a1 + 1064) = 0u;
  *(a1 + 1080) = 0u;
  *(a1 + 1032) = 0u;
  *(a1 + 1048) = 0u;
  *(a1 + 1000) = 0u;
  *(a1 + 1016) = 0u;
  *(a1 + 968) = 0u;
  *(a1 + 984) = 0u;
  if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
  {
    dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
  }

  *(a1 + 1152) = re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 1160) = _D0;
  *(a1 + 1168) = 1065353216;
  *(a1 + 1176) = 0u;
  *(a1 + 1192) = 0u;
  *(a1 + 1207) = 0;
  *(a1 + 1212) = 0xFFFFFFFF00000001;
  *(a1 + 1220) = 0;
  *(a1 + 1232) = 0;
  *(a1 + 1280) = 0;
  *(a1 + 1296) = 0;
  *(a1 + 1376) = 65537;
  *(a1 + 1380) = 1;
  *(a1 + 1384) = xmmword_1E3060D60;
  *(a1 + 1400) = 16788070;
  *(a1 + 1408) = 0;
  *(a1 + 1425) = 1;
  *(a1 + 1440) = 0;
  *(a1 + 1488) = 0;
  *(a1 + 1504) = 0;
  *(a1 + 1512) = 0;
  *(a1 + 1520) = 0;
  *(a1 + 1528) = 0;
  *(a1 + 1560) = 0;
  *(a1 + 1544) = 0u;
  return a1;
}

uint64_t re::BucketArray<re::MeshSceneCollection,16ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::MeshSceneCollection,16ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<re::MeshSceneCollection,16ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 16 * a2)
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

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 640, 0);
        result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

void *re::DynamicArray<re::ShadowView>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ShadowView>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x290uLL))
        {
          v2 = 656 * a2;
          result = (*(*result + 32))(result, 656 * a2, 16);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_28;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 656, a2);
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
LABEL_28:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + 656 * v9;
        v11 = v7;
        do
        {
          *v11 = 0u;
          *(v11 + 1) = 0u;
          v11[3] = *(v8 + 24);
          v12 = *(v8 + 8);
          *v11 = *v8;
          *v8 = 0;
          v13 = *(v8 + 16);
          *(v8 + 24) = 0;
          v15 = v11[1];
          v14 = v11[2];
          v11[1] = v12;
          v11[2] = v13;
          *(v8 + 8) = v15;
          *(v8 + 16) = v14;
          v16 = *(v8 + 48);
          *(v11 + 2) = *(v8 + 32);
          *(v11 + 3) = v16;
          v18 = *(v8 + 96);
          v17 = *(v8 + 112);
          v19 = *(v8 + 80);
          *(v11 + 64) = *(v8 + 128);
          *(v11 + 6) = v18;
          *(v11 + 7) = v17;
          *(v11 + 5) = v19;
          *(v11 + 4) = *(v8 + 64);
          LODWORD(v13) = *(v8 + 144);
          *(v11 + 144) = v13;
          if (v13 == 1)
          {
            v20 = *(v8 + 160);
            v21 = *(v8 + 176);
            v22 = *(v8 + 208);
            *(v11 + 12) = *(v8 + 192);
            *(v11 + 13) = v22;
            *(v11 + 10) = v20;
            *(v11 + 11) = v21;
          }

          v23 = *(v8 + 224);
          *(v11 + 224) = v23;
          if (v23 == 1)
          {
            v24 = *(v8 + 240);
            v25 = *(v8 + 256);
            v26 = *(v8 + 288);
            *(v11 + 17) = *(v8 + 272);
            *(v11 + 18) = v26;
            *(v11 + 15) = v24;
            *(v11 + 16) = v25;
          }

          v27 = *(v8 + 304);
          v11[40] = *(v8 + 320);
          *(v11 + 19) = v27;
          v28 = *(v8 + 336);
          v29 = *(v8 + 352);
          v30 = *(v8 + 384);
          *(v11 + 23) = *(v8 + 368);
          *(v11 + 24) = v30;
          *(v11 + 21) = v28;
          *(v11 + 22) = v29;
          v32 = *(v8 + 432);
          v31 = *(v8 + 448);
          v33 = *(v8 + 416);
          *(v11 + 232) = *(v8 + 464);
          *(v11 + 27) = v32;
          *(v11 + 28) = v31;
          *(v11 + 26) = v33;
          *(v11 + 25) = *(v8 + 400);
          v34 = *(v8 + 480);
          *(v11 + 480) = v34;
          if (v34 == 1)
          {
            v35 = *(v8 + 496);
            v36 = *(v8 + 512);
            v37 = *(v8 + 544);
            *(v11 + 33) = *(v8 + 528);
            *(v11 + 34) = v37;
            *(v11 + 31) = v35;
            *(v11 + 32) = v36;
          }

          v38 = *(v8 + 560);
          *(v11 + 560) = v38;
          if (v38 == 1)
          {
            v39 = *(v8 + 576);
            v40 = *(v8 + 592);
            v41 = *(v8 + 624);
            *(v11 + 38) = *(v8 + 608);
            *(v11 + 39) = v41;
            *(v11 + 36) = v39;
            *(v11 + 37) = v40;
          }

          v42 = *(v8 + 640);
          *(v11 + 640) = v42;
          if (v42 == 1)
          {
            *(v11 + 641) = *(v8 + 641);
          }

          v43 = *(v8 + 644);
          *(v11 + 644) = v43;
          if (v43 == 1)
          {
            *(v11 + 162) = *(v8 + 648);
          }

          *(v11 + 652) = *(v8 + 652);
          re::DynamicString::deinit(v8);
          v8 += 656;
          v11 += 82;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_28;
    }
  }

  return result;
}

void *re::DynamicArray<re::FilterView>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::FilterView>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x2B0uLL))
        {
          v2 = 688 * a2;
          result = (*(*result + 32))(result, 688 * a2, 16);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_24;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 688, a2);
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
LABEL_24:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + 688 * v9;
        v11 = v7;
        do
        {
          *v11 = 0u;
          *(v11 + 1) = 0u;
          v11[3] = *(v8 + 24);
          v12 = *(v8 + 8);
          *v11 = *v8;
          *v8 = 0;
          v13 = *(v8 + 16);
          *(v8 + 24) = 0;
          v15 = v11[1];
          v14 = v11[2];
          v11[1] = v12;
          v11[2] = v13;
          *(v8 + 8) = v15;
          *(v8 + 16) = v14;
          v16 = *(v8 + 48);
          *(v11 + 2) = *(v8 + 32);
          *(v11 + 3) = v16;
          v18 = *(v8 + 96);
          v17 = *(v8 + 112);
          v19 = *(v8 + 80);
          *(v11 + 64) = *(v8 + 128);
          *(v11 + 6) = v18;
          *(v11 + 7) = v17;
          *(v11 + 5) = v19;
          *(v11 + 4) = *(v8 + 64);
          LODWORD(v13) = *(v8 + 144);
          *(v11 + 144) = v13;
          if (v13 == 1)
          {
            v20 = *(v8 + 160);
            v21 = *(v8 + 176);
            v22 = *(v8 + 208);
            *(v11 + 12) = *(v8 + 192);
            *(v11 + 13) = v22;
            *(v11 + 10) = v20;
            *(v11 + 11) = v21;
          }

          v23 = *(v8 + 224);
          *(v11 + 224) = v23;
          if (v23 == 1)
          {
            v24 = *(v8 + 240);
            v25 = *(v8 + 256);
            v26 = *(v8 + 288);
            *(v11 + 17) = *(v8 + 272);
            *(v11 + 18) = v26;
            *(v11 + 15) = v24;
            *(v11 + 16) = v25;
          }

          v27 = *(v8 + 304);
          v11[40] = *(v8 + 320);
          *(v11 + 19) = v27;
          v28 = *(v8 + 336);
          v29 = *(v8 + 352);
          v30 = *(v8 + 384);
          *(v11 + 23) = *(v8 + 368);
          *(v11 + 24) = v30;
          *(v11 + 21) = v28;
          *(v11 + 22) = v29;
          v32 = *(v8 + 432);
          v31 = *(v8 + 448);
          v33 = *(v8 + 416);
          *(v11 + 232) = *(v8 + 464);
          *(v11 + 27) = v32;
          *(v11 + 28) = v31;
          *(v11 + 26) = v33;
          *(v11 + 25) = *(v8 + 400);
          v34 = *(v8 + 480);
          *(v11 + 480) = v34;
          if (v34 == 1)
          {
            v35 = *(v8 + 496);
            v36 = *(v8 + 512);
            v37 = *(v8 + 544);
            *(v11 + 33) = *(v8 + 528);
            *(v11 + 34) = v37;
            *(v11 + 31) = v35;
            *(v11 + 32) = v36;
          }

          v38 = *(v8 + 560);
          *(v11 + 560) = v38;
          if (v38 == 1)
          {
            v39 = *(v8 + 576);
            v40 = *(v8 + 592);
            v41 = *(v8 + 624);
            *(v11 + 38) = *(v8 + 608);
            *(v11 + 39) = v41;
            *(v11 + 36) = v39;
            *(v11 + 37) = v40;
          }

          v11[84] = 0;
          v11[80] = 0;
          v11[82] = 0;
          v11[81] = 0;
          *(v11 + 166) = 0;
          v11[80] = *(v8 + 640);
          *(v8 + 640) = 0;
          v11[81] = *(v8 + 648);
          *(v8 + 648) = 0;
          v42 = v11[82];
          v11[82] = *(v8 + 656);
          *(v8 + 656) = v42;
          v43 = v11[84];
          v11[84] = *(v8 + 672);
          *(v8 + 672) = v43;
          ++*(v8 + 664);
          ++*(v11 + 166);
          v11[85] = *(v8 + 680);
          re::DynamicArray<re::MeshScene>::deinit(v8 + 640);
          re::DynamicString::deinit(v8);
          v11 += 86;
          v8 += 688;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_24;
    }
  }

  return result;
}

re::LightContexts *re::LightContexts::LightContexts(re::LightContexts *this, re::Allocator *a2)
{
  *this = 0u;
  *(this + 4) = 1;
  *(this + 3) = 0;
  *(this + 2) = 0u;
  *(this + 12) = 0;
  re::BucketArray<re::LightContext,16ul>::init(this, a2, 0);
  *(this + 22) = 0;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 92) = 0x7FFFFFFFLL;
  *(this + 13) = a2;
  *(this + 7) = 0u;
  *(this + 16) = a2;
  *(this + 136) = 0u;
  *(this + 19) = a2;
  *(this + 10) = 0u;
  *(this + 22) = a2;
  *(this + 184) = 0u;
  *(this + 25) = a2;
  *(this + 13) = 0u;
  *(this + 28) = a2;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 264) = 0;
  *(this + 144) = 0;
  *(this + 17) = 0u;
  return this;
}

uint64_t *re::BucketArray<re::LightContext,16ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::LightContext,16ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<re::LightContext,16ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 16 * a2)
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

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 2688, 0);
        result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

re::PortalInfo *re::PortalInfo::PortalInfo(re::PortalInfo *this, re::Allocator *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 4) = 1;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 12) = 0;
  re::BucketArray<re::DynamicArray<re::CameraView> const*,4ul>::init(this, a2, 1uLL);
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 18) = 1;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = 0;
  *(this + 26) = 0;
  re::BucketArray<re::DynamicArray<re::CameraMultiView> const*,4ul>::init(this + 56, a2, 1uLL);
  *(this + 56) = 0;
  *(this + 114) = 0;
  return this;
}

uint64_t re::BucketArray<re::DynamicArray<re::CameraView> const*,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::DynamicArray<re::CameraView> const*,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<re::DynamicArray<re::CameraView> const*,4ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
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

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 32, 0);
        result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

uint64_t re::BucketArray<re::DynamicArray<re::CameraMultiView> const*,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::DynamicArray<re::CameraMultiView> const*,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<re::DynamicArray<re::CameraMultiView> const*,4ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
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

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 32, 0);
        result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

void *re::DynamicInlineArray<re::KeyValuePair<unsigned short,re::LightContextBuilder::LightArrays>,8ul>::clear(void *result)
{
  v1 = result;
  if (*result)
  {
    v2 = 0;
    v3 = 352 * *result;
    do
    {
      re::BucketArray<re::LightContextBuilder::RectAreaLightBucket,4ul>::deinit(&v1[v2 / 8 + 38]);
      re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(&v1[v2 / 8 + 38]);
      re::BucketArray<re::LightContextBuilder::PointLightBucket,4ul>::deinit(&v1[v2 / 8 + 31]);
      re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(&v1[v2 / 8 + 31]);
      re::BucketArray<re::LightContextBuilder::SpotLightBucket,4ul>::deinit(&v1[v2 / 8 + 24]);
      re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(&v1[v2 / 8 + 24]);
      re::BucketArray<re::LightContextBuilder::RealWorldProxyLightBucket,4ul>::deinit(&v1[v2 / 8 + 17]);
      re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(&v1[v2 / 8 + 17]);
      re::BucketArray<re::LightContextBuilder::DirectionalLightBucket,4ul>::deinit(&v1[v2 / 8 + 10]);
      re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(&v1[v2 / 8 + 10]);
      re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::deinit(&v1[v2 / 8 + 3]);
      result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(&v1[v2 / 8 + 3]);
      v2 += 352;
    }

    while (v3 != v2);
  }

  *v1 = 0;
  ++*(v1 + 2);
  return result;
}

double re::HashTable<unsigned short,re::LightContextBuilder::LightArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,true>::deinit(uint64_t *a1)
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
          v8 = v6 + v4;
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          v9 = v6 + v4 + 64;
          re::BucketArray<re::LightContextBuilder::RectAreaLightBucket,4ul>::deinit(v6 + v4 + 288);
          re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v8 + 288);
          re::BucketArray<re::LightContextBuilder::PointLightBucket,4ul>::deinit(v8 + 232);
          re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v8 + 232);
          re::BucketArray<re::LightContextBuilder::SpotLightBucket,4ul>::deinit(v8 + 176);
          re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v8 + 176);
          re::BucketArray<re::LightContextBuilder::RealWorldProxyLightBucket,4ul>::deinit(v8 + 120);
          re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v8 + 120);
          re::BucketArray<re::LightContextBuilder::DirectionalLightBucket,4ul>::deinit(v9);
          re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v9);
          re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::deinit(v8 + 8);
          re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v8 + 8);
          v3 = *(a1 + 8);
        }

        v4 += 352;
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

uint64_t re::BucketArray<re::LightContextBuilder::RectAreaLightBucket,4ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](a1, i);
      re::DynamicArray<re::RectAreaLightInfo>::deinit(v4);
    }
  }

  while (*(a1 + 8))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(a1);
  }

  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

uint64_t re::BucketArray<re::LightContextBuilder::PointLightBucket,4ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::LightContextBuilder::PointLightBucket,4ul>::operator[](a1, i);
      re::FixedArray<CoreIKTransform>::deinit(v4 + 12);
      re::FixedArray<CoreIKTransform>::deinit(v4 + 9);
      re::FixedArray<CoreIKTransform>::deinit(v4 + 5);
      re::DynamicArray<re::DynamicLightShadowInfo>::deinit(v4);
    }
  }

  while (*(a1 + 8))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(a1);
  }

  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

uint64_t re::BucketArray<re::LightContextBuilder::PointLightBucket,4ul>::operator[](uint64_t a1, unint64_t a2)
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

  return *(v3 + 8 * (a2 >> 2)) + 120 * (a2 & 3);
}

uint64_t re::BucketArray<re::LightContextBuilder::SpotLightBucket,4ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::LightContextBuilder::PointLightBucket,4ul>::operator[](a1, i);
      re::FixedArray<CoreIKTransform>::deinit(v4 + 12);
      re::FixedArray<CoreIKTransform>::deinit(v4 + 9);
      re::FixedArray<CoreIKTransform>::deinit(v4 + 5);
      re::DynamicArray<re::SpotLightInfo>::deinit(v4);
    }
  }

  while (*(a1 + 8))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(a1);
  }

  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

uint64_t re::BucketArray<re::LightContextBuilder::RealWorldProxyLightBucket,4ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::LightContextBuilder::PointLightBucket,4ul>::operator[](a1, i);
      re::FixedArray<CoreIKTransform>::deinit(v4 + 12);
      re::FixedArray<CoreIKTransform>::deinit(v4 + 9);
      re::FixedArray<CoreIKTransform>::deinit(v4 + 5);
      re::DynamicArray<re::RectAreaLightInfo>::deinit(v4);
    }
  }

  while (*(a1 + 8))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(a1);
  }

  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

uint64_t re::BucketArray<re::LightContextBuilder::DirectionalLightBucket,4ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::operator[](a1, i);
      re::FixedArray<re::FixedArray<unsigned int>>::deinit((v4 + 40));
      re::DynamicArray<re::DirectionalLightInfo>::deinit(v4);
    }
  }

  while (*(a1 + 8))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(a1);
  }

  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

uint64_t re::BucketArray<re::LightContextBuilder::AmbientLightBucket,4ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](a1, i);
      re::DynamicArray<unsigned long>::deinit(v4);
    }
  }

  while (*(a1 + 8))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(a1);
  }

  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

double re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
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
          re::HashTable<unsigned long long,re::DynamicArray<re::DynamicInlineArray<re::PlaneF,6ul>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit((v6 + v4 + 16));
          v3 = *(a1 + 8);
        }

        v4 += 72;
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

uint64_t re::HashTable<re::WeakStringID,re::RenderFrameContextBuilder::Result::PerSceneData *,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v27, 0, 36);
          *&v27[36] = 0x7FFFFFFFLL;
          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(v27, v9, v8);
          v11 = *v27;
          *v27 = *a1;
          *a1 = v11;
          v12 = *&v27[16];
          v13 = *(a1 + 16);
          *&v27[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v27[24];
          *&v27[24] = *(a1 + 24);
          v14 = *&v27[32];
          *(a1 + 24) = v15;
          ++*&v27[40];
          v16 = v14;
          if (v14)
          {
            v17 = (v13 + 8);
            do
            {
              if ((*(v17 - 1) & 0x80000000) != 0)
              {
                v18 = 0xBF58476D1CE4E5B9 * (*v17 ^ (*v17 >> 30));
                v19 = re::HashTable<re::WeakStringID,re::RenderFrameContextBuilder::Result::PerSceneData *,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(a1, ((0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) ^ ((0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) >> 31)) % *(a1 + 24));
                v20 = v17[1];
                *(v19 + 8) = *v17;
                *(v19 + 16) = v20;
              }

              v17 += 3;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::WeakStringID,re::TextureBlockResolution,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(v27);
        }
      }

      else
      {
        if (v8)
        {
          v23 = 2 * v7;
        }

        else
        {
          v23 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v21 = *(a1 + 16);
    v22 = *(v21 + 24 * v4);
  }

  else
  {
    v21 = *(a1 + 16);
    v22 = *(v21 + 24 * v4);
    *(a1 + 36) = v22 & 0x7FFFFFFF;
  }

  v24 = 24 * v4;
  *(v21 + v24) = v22 | 0x80000000;
  v25 = *(a1 + 8);
  *(v21 + v24) = *(v25 + 4 * a2) | 0x80000000;
  *(v25 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v21 + 24 * v4;
}

uint64_t std::__function::__func<re::RenderFrameContextBuilder::build(re::RenderFrame &)::$_0,std::allocator<re::RenderFrameContextBuilder::build(re::RenderFrame &)::$_0>,void ()(re::LightInfoArrays &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D11BF0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<re::RenderFrameContextBuilder::build(re::RenderFrame &)::$_0,std::allocator<re::RenderFrameContextBuilder::build(re::RenderFrame &)::$_0>,void ()(re::LightInfoArrays &)>::operator()(uint64_t a1, unsigned __int16 *a2)
{
  v4 = (a2 + 104);
  v5 = *a2;
  re::LightContextBuilder::addAmbientLights(*(a1 + 8), *a2, (a2 + 4));
  re::LightContextBuilder::addDirectionalLights(*(a1 + 8), v5, (a2 + 24));
  re::LightContextBuilder::addRealWorldProxyLights(*(a1 + 8), v5, (a2 + 44));
  re::LightContextBuilder::addSpotLights(*(a1 + 8), v5, (a2 + 64));
  re::LightContextBuilder::addPointLights(*(a1 + 8), v5, (a2 + 84));
  v6 = *(a1 + 8);

  return re::LightContextBuilder::addRectAreaLights(v6, v5, v4);
}

uint64_t std::__function::__func<re::RenderFrameContextBuilder::build(re::RenderFrame &)::$_0,std::allocator<re::RenderFrameContextBuilder::build(re::RenderFrame &)::$_0>,void ()(re::LightInfoArrays &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::BucketArray<re::DynamicArray<re::CameraView> const*,4ul>::addUninitialized(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 4 * v3)
  {
    re::BucketArray<re::DynamicArray<re::CameraView> const*,4ul>::setBucketsCapacity(a1, (v2 + 4) >> 2);
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
  return v5 + 8 * (v2 & 3);
}

uint64_t re::BucketArray<re::DynamicArray<re::CameraMultiView> const*,4ul>::addUninitialized(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 4 * v3)
  {
    re::BucketArray<re::DynamicArray<re::CameraMultiView> const*,4ul>::setBucketsCapacity(a1, (v2 + 4) >> 2);
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
  return v5 + 8 * (v2 & 3);
}

__n128 std::__function::__func<re::RenderFrameContextBuilder::build(re::RenderFrame &)::$_1,std::allocator<re::RenderFrameContextBuilder::build(re::RenderFrame &)::$_1>,void ()(re::StencilPortal &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D11CC0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void *std::__function::__func<re::RenderFrameContextBuilder::build(re::RenderFrame &)::$_1,std::allocator<re::RenderFrameContextBuilder::build(re::RenderFrame &)::$_1>,void ()(re::StencilPortal &)>::operator()(uint64_t a1, void *a2)
{
  result = re::HashTable<re::WeakStringID,re::RenderFrameContextBuilder::Result::PerSceneData *,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::tryGet(*(a1 + 24), *a2 >> 1);
  if (result)
  {
    v4 = result;
    v5 = *result;
    v6 = *(a1 + 16);
    v7 = v6[13];
    if (v7)
    {
      v8 = *(v7 + 40);
      if (v8)
      {
        for (i = 0; i != v8; ++i)
        {
          v10 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](v7, i);
          result = re::BucketArray<re::DynamicArray<re::CameraView> const*,4ul>::addUninitialized(v5 + 512);
          *result = v10;
        }

        v6 = *(a1 + 16);
      }
    }

    v11 = v6[14];
    if (v11)
    {
      v12 = *(v11 + 40);
      if (v12)
      {
        for (j = 0; j != v12; ++j)
        {
          v14 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](v11, j);
          result = re::BucketArray<re::DynamicArray<re::CameraMultiView> const*,4ul>::addUninitialized(v5 + 568);
          *result = v14;
        }

        v6 = *(a1 + 16);
      }
    }

    v15 = v6[1];
    v16 = *v4;
    if ((*(*v4 + 1528) & 1) == 0)
    {
      *(v16 + 1528) = 1;
    }

    *(v16 + 1536) = v15;
  }

  return result;
}

uint64_t std::__function::__func<re::RenderFrameContextBuilder::build(re::RenderFrame &)::$_1,std::allocator<re::RenderFrameContextBuilder::build(re::RenderFrame &)::$_1>,void ()(re::StencilPortal &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *re::DynamicArray<re::MeshShadowPerSceneUpdateData>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::MeshShadowPerSceneUpdateData>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x170uLL))
        {
          v2 = 368 * a2;
          result = (*(*result + 32))(result, 368 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 368, a2);
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
        v10 = 0;
        v11 = 368 * v9;
        do
        {
          re::MeshShadowPerSceneUpdateData::MeshShadowPerSceneUpdateData(&v7[v10 / 8], v8 + v10);
          re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit((v8 + v10 + 312));
          re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit((v8 + v10 + 264));
          re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit((v8 + v10 + 216));
          re::HashTable<unsigned long long,re::MeshShadowPlaneData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit((v8 + v10 + 168));
          re::HashTable<unsigned long long,re::MeshShadowCluster,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit((v8 + v10 + 120));
          re::DynamicArray<unsigned long>::deinit(v8 + v10 + 80);
          re::DynamicArray<unsigned long>::deinit(v8 + v10 + 40);
          re::DynamicArray<unsigned long>::deinit(v8 + v10);
          v10 += 368;
        }

        while (v11 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t std::__function::__func<re::RenderFrameContextBuilder::build(re::RenderFrame &)::$_2,std::allocator<re::RenderFrameContextBuilder::build(re::RenderFrame &)::$_2>,void ()(re::MeshShadowPerSceneUpdateData &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D11D50;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<re::RenderFrameContextBuilder::build(re::RenderFrame &)::$_2,std::allocator<re::RenderFrameContextBuilder::build(re::RenderFrame &)::$_2>,void ()(re::MeshShadowPerSceneUpdateData &)>::operator()(_anonymous_namespace_ *a1, uint64_t a2)
{
  v3 = *(a1 + 1);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*v3)
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

        re::DynamicArray<re::MeshShadowPerSceneUpdateData>::setCapacity(*(a1 + 1), v10);
      }

      else
      {
        re::DynamicArray<re::MeshShadowPerSceneUpdateData>::setCapacity(v3, v6);
        ++*(v3 + 24);
      }
    }

    v5 = *(v3 + 16);
  }

  result = re::MeshShadowPerSceneUpdateData::MeshShadowPerSceneUpdateData(*(v3 + 32) + 368 * v5, a2);
  ++*(v3 + 16);
  ++*(v3 + 24);
  return result;
}

uint64_t std::__function::__func<re::RenderFrameContextBuilder::build(re::RenderFrame &)::$_2,std::allocator<re::RenderFrameContextBuilder::build(re::RenderFrame &)::$_2>,void ()(re::MeshShadowPerSceneUpdateData &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *re::RenderGraphDataStoreWrapper<re::OpenSkyData>::~RenderGraphDataStoreWrapper(void *a1)
{
  *a1 = &unk_1F5D11DF8;
  v2 = (a1 + 13);
  re::DynamicArray<unsigned long>::deinit((a1 + 18));
  re::DynamicArray<unsigned long>::deinit(v2);
  return a1;
}

void re::RenderGraphDataStoreWrapper<re::OpenSkyData>::~RenderGraphDataStoreWrapper(void *a1)
{
  *a1 = &unk_1F5D11DF8;
  v1 = (a1 + 13);
  re::DynamicArray<unsigned long>::deinit((a1 + 18));
  re::DynamicArray<unsigned long>::deinit(v1);

  JUMPOUT(0x1E6906520);
}

uint64_t std::__function::__func<re::RenderFrameContextBuilder::build(re::RenderFrame &)::$_3,std::allocator<re::RenderFrameContextBuilder::build(re::RenderFrame &)::$_3>,void ()(re::MeshScene &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D11E20;
  a2[1] = v2;
  return result;
}

double std::__function::__func<re::RenderFrameContextBuilder::build(re::RenderFrame &)::$_3,std::allocator<re::RenderFrameContextBuilder::build(re::RenderFrame &)::$_3>,void ()(re::MeshScene &)>::operator()(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 8);
  if (*v2)
  {
    *&result = re::DynamicArray<re::MeshScene>::add(v2, a2).n128_u64[0];
  }

  return result;
}

uint64_t std::__function::__func<re::RenderFrameContextBuilder::build(re::RenderFrame &)::$_3,std::allocator<re::RenderFrameContextBuilder::build(re::RenderFrame &)::$_3>,void ()(re::MeshScene &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::BucketArray<re::MeshSceneCollection,16ul>::addUninitialized(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 16 * v3)
  {
    re::BucketArray<re::MeshSceneCollection,16ul>::setBucketsCapacity(a1, (v2 + 16) >> 4);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 4)
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

  v5 = *(v4 + 8 * (v2 >> 4));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + 40 * (v2 & 0xF);
}

void re::RenderGraphMotionBlurNode::configure(re::RenderGraphMotionBlurNode *this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  *(this + 60) = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>((this + 520));
  *(this + 61) = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>((this + 544));
  *(this + 62) = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>((this + 568));
  *(this + 59) = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>((this + 592));

  re::RenderGraphFullscreenNode::configure(this, a2, a3, a4);
}

void re::RenderGraphMotionBlurNode::execute(re::RenderGraphMotionBlurNode *this, re::RenderGraphContext *a2)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v29, 5054, 0);
  v4 = re::RenderGraphDataStore::get<re::CameraData>(*(a2 + 146), *(*(a2 + 5) + 48));
  if (!*(v4 + 624))
  {
    re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_20;
  }

  v6 = v4;
  if (!*(v4 + 128))
  {
LABEL_20:
    re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, 0, 0);
    _os_crash();
    __break(1u);
LABEL_21:
    re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, 0, 0);
    _os_crash();
    __break(1u);
    return;
  }

  v27 = *(v4 + 656);
  v28 = *(v4 + 640);
  v25 = *(v4 + 688);
  v26 = *(v4 + 672);
  if (*(v4 + 224) == 1)
  {
    v7 = *(v4 + 256);
    v31 = *(v4 + 240);
    v32 = v7;
    v8 = *(v4 + 288);
    v33 = *(v4 + 272);
    v34 = v8;
  }

  else
  {
    re::Projection::cullingProjectionMatrix((v4 + 144), &v31);
  }

  if (!v6[3].i64[0])
  {
    goto LABEL_21;
  }

  re::RenderCamera::computeInverseTransform(v6 + 4, v30);
  v9 = 0;
  v10 = v31;
  v11 = v32;
  v12 = v33;
  v13 = v34;
  v35[0] = v30[0];
  v35[1] = v30[1];
  v35[2] = v30[2];
  v35[3] = v30[3];
  do
  {
    v36.columns[v9] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, COERCE_FLOAT(v35[v9])), v11, *&v35[v9], 1), v12, v35[v9], 2), v13, v35[v9], 3);
    ++v9;
  }

  while (v9 != 4);
  v37 = __invert_f4(v36);
  v23 = v37.columns[1];
  v24 = v37.columns[0];
  v21 = v37.columns[3];
  v22 = v37.columns[2];
  v14 = *(this + 126) * *(this + 127);
  re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((*a2 + 16), 0x90uLL, 0x10uLL, &v36);
  v15 = v36.columns[1].i64[0];
  v20 = v36.columns[0].i64[1];
  v16 = v36.columns[0].i64[0] + v36.columns[0].u32[2];
  *v16 = v24;
  *(v16 + 16) = v23;
  *(v16 + 32) = v22;
  *(v16 + 48) = v21;
  *(v16 + 64) = v28;
  *(v16 + 80) = v27;
  *(v16 + 96) = v26;
  *(v16 + 112) = v25;
  *(v16 + 128) = v14;
  v36.columns[0].i64[0] = v15;
  v36.columns[1].i32[2] = 0;
  v36.columns[2].i64[0] = v20;
  if (*(this + 512) == 1)
  {
    v17 = *(this + 59);
  }

  else if (v14 >= 0.25)
  {
    if (v14 >= 0.6)
    {
      v17 = *(this + 62);
    }

    else
    {
      v17 = *(this + 61);
    }
  }

  else
  {
    v17 = *(this + 60);
  }

  *(this + 41) = v17;
  v18 = *a2;
  *&v35[0] = 0x64A435BF9C14DD23;
  re::BufferTable::setBuffer((v18 + 480), v35, &v36);
  re::RenderGraphFullscreenNode::executeInternal(this, a2, (this + 272));
  v19 = *a2;
  *&v35[0] = 0x64A435BF9C14DD23;
  re::BufferTable::removeBuffer((v19 + 480), v35);
  if (v36.columns[1].i32[2] != -1)
  {
    (off_1F5D11F90[v36.columns[1].u32[2]])(v35, &v36);
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v29);
}

void *re::allocInfo_MotionBlurUserParameters(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_515, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_515))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BF738, "MotionBlurUserParameters");
    __cxa_guard_release(&_MergedGlobals_515);
  }

  return &unk_1EE1BF738;
}

void re::initInfo_MotionBlurUserParameters(re *this, re::IntrospectionBase *a2)
{
  v15[0] = 0xD00187F985DB45A4;
  v15[1] = "MotionBlurUserParameters";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE1BF6D0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BF6D0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_float(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "exposureTime";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1BF6F0 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_uint32_t(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "frameRate";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x400000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1BF6F8 = v13;
      __cxa_guard_release(&qword_1EE1BF6D0);
    }
  }

  *(this + 2) = 0x800000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1BF6F0;
  *(this + 9) = re::internal::defaultConstruct<re::MotionBlurUserParameters>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MotionBlurUserParameters>;
  *(this + 13) = re::internal::defaultConstructV2<re::MotionBlurUserParameters>;
  *(this + 14) = re::internal::defaultDestructV2<re::MotionBlurUserParameters>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v14 = v16;
}

void *re::allocInfo_RenderGraphMotionBlurNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BF6E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BF6E0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BF7C8, "RenderGraphMotionBlurNode");
    __cxa_guard_release(&qword_1EE1BF6E0);
  }

  return &unk_1EE1BF7C8;
}

void re::initInfo_RenderGraphMotionBlurNode(re *this, re::IntrospectionBase *a2)
{
  v35[0] = 0x642F8AC82BD1C86ELL;
  v35[1] = "RenderGraphMotionBlurNode";
  if (v35[0])
  {
    if (v35[0])
    {
    }
  }

  *(this + 2) = v36;
  if ((atomic_load_explicit(&qword_1EE1BF6E8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BF6E8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_RenderGraphFullscreenNode(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "RenderGraphFullscreenNode";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1BF700 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = v9;
      v11 = qword_1EE1BF6D8;
      if (!qword_1EE1BF6D8)
      {
        v11 = re::allocInfo_MotionBlurUserParameters(v9);
        qword_1EE1BF6D8 = v11;
        re::initInfo_MotionBlurUserParameters(v11, v12);
      }

      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "motionBlurUserParameters";
      *(v13 + 16) = v11;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x1F800000001;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1BF708 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_BOOL(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "debugPassthrough";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x20000000002;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1BF710 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::introspect_AssetHandle(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "motionBlurLowSampleCountMaterial";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x20800000003;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE1BF718 = v21;
      v22 = re::introspectionAllocator(v21);
      v24 = re::introspect_AssetHandle(1, v23);
      v25 = (*(*v22 + 32))(v22, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "motionBlurMediumSampleCountMaterial";
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0x22000000004;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE1BF720 = v25;
      v26 = re::introspectionAllocator(v25);
      v28 = re::introspect_AssetHandle(1, v27);
      v29 = (*(*v26 + 32))(v26, 72, 8);
      *v29 = 1;
      *(v29 + 8) = "motionBlurHighSampleCountMaterial";
      *(v29 + 16) = v28;
      *(v29 + 24) = 0;
      *(v29 + 32) = 0x23800000005;
      *(v29 + 40) = 0;
      *(v29 + 48) = 0;
      *(v29 + 56) = 0;
      *(v29 + 64) = 0;
      qword_1EE1BF728 = v29;
      v30 = re::introspectionAllocator(v29);
      v32 = re::introspect_AssetHandle(1, v31);
      v33 = (*(*v30 + 32))(v30, 72, 8);
      *v33 = 1;
      *(v33 + 8) = "debugPassthroughMaterial";
      *(v33 + 16) = v32;
      *(v33 + 24) = 0;
      *(v33 + 32) = 0x25000000006;
      *(v33 + 40) = 0;
      *(v33 + 48) = 0;
      *(v33 + 56) = 0;
      *(v33 + 64) = 0;
      qword_1EE1BF730 = v33;
      __cxa_guard_release(&qword_1EE1BF6E8);
    }
  }

  *(this + 2) = 0x26800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 7;
  *(this + 8) = &qword_1EE1BF700;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphMotionBlurNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphMotionBlurNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphMotionBlurNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphMotionBlurNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v34 = v36;
}

double re::internal::defaultConstruct<re::RenderGraphMotionBlurNode>(int a1, int a2, re::RenderGraphFullscreenNode *this)
{
  *(this + 58) = 0;
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  v3 = re::RenderGraphFullscreenNode::RenderGraphFullscreenNode(this);
  *v3 = &unk_1F5D11EF8;
  result = 0.0;
  *(v3 + 472) = 0u;
  *(v3 + 488) = 0u;
  *(v3 + 63) = 0x3C3C888F86;
  *(v3 + 520) = 0u;
  *(v3 + 536) = 0u;
  *(v3 + 552) = 0u;
  *(v3 + 568) = 0u;
  *(v3 + 584) = 0u;
  *(v3 + 600) = 0u;
  return result;
}

double re::internal::defaultConstructV2<re::RenderGraphMotionBlurNode>(uint64_t a1)
{
  *(a1 + 464) = 0;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
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
  v1 = re::RenderGraphFullscreenNode::RenderGraphFullscreenNode(a1);
  *v1 = &unk_1F5D11EF8;
  result = 0.0;
  *(v1 + 472) = 0u;
  *(v1 + 488) = 0u;
  *(v1 + 63) = 0x3C3C888F86;
  *(v1 + 520) = 0u;
  *(v1 + 536) = 0u;
  *(v1 + 552) = 0u;
  *(v1 + 568) = 0u;
  *(v1 + 584) = 0u;
  *(v1 + 600) = 0u;
  return result;
}

void re::RenderGraphMotionBlurNode::~RenderGraphMotionBlurNode(id *this)
{
  re::RenderGraphMotionBlurNode::~RenderGraphMotionBlurNode(this);

  JUMPOUT(0x1E6906520);
}

{
  re::AssetHandle::~AssetHandle((this + 74));
  re::AssetHandle::~AssetHandle((this + 71));
  re::AssetHandle::~AssetHandle((this + 68));
  re::AssetHandle::~AssetHandle((this + 65));

  re::RenderGraphFullscreenNode::~RenderGraphFullscreenNode(this);
}

uint64_t re::RenderGraphVRRUnwarpNode::configure(void **this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  v12 = 0;
  v15 = 0;
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  v23 = 0;
  v24 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  ComputePipelineState = re::getOrCreateComputePipelineState(*(a4 + 1), &v10);
  NS::SharedPtr<MTL::Buffer>::operator=(this + 42, ComputePipelineState);
  re::RenderGraphNode::configure(this, a2, a3, a4);
  if (v23)
  {

    v23 = 0;
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v18);
  if (v15 == 1 && v16)
  {
    if (BYTE8(v16))
    {
      (*(*v16 + 40))();
    }

    v16 = 0u;
    v17 = 0u;
  }

  if (v12 == 1 && v13)
  {
    if (BYTE8(v13))
    {
      (*(*v13 + 40))();
    }

    v14 = 0u;
    v13 = 0u;
  }

  result = v10;
  if (v10)
  {
    if (v11)
    {
      return (*(*v10 + 40))();
    }
  }

  return result;
}

void re::RenderGraphVRRUnwarpNode::setup(re::RenderGraphVRRUnwarpNode *this, re::RenderGraphBuilder *a2, re::RenderGraphDataStore *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  *(&v6 + 3) = 0;
  LODWORD(v6) = 0;
  v7 = 2;
  re::RenderGraphBuilder::read(a2, this + 264, &v6);
  *(&v6 + 3) = 0;
  LODWORD(v6) = 0;
  v7 = 2;
  re::RenderGraphBuilder::read(a2, this + 296, &v6);
  v6 = 0x500000000;
  v8 = xmmword_1E30474D0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  re::RenderGraphBuilder::write(a2, this + 280, &v6);
  re::RenderGraphNode::setup(this, a2, a3);
}

void re::RenderGraphVRRUnwarpNode::execute(re::RenderGraphVRRUnwarpNode *this, re::RenderGraphContext *a2)
{
  v4 = *(a2 + 146);
  v5 = "N2re13VRRUnwarpDataE";
  if (("N2re13VRRUnwarpDataE" & 0x8000000000000000) != 0)
  {
    v6 = ("N2re13VRRUnwarpDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  if (*(v4 + 64))
  {
    v9 = *(*(a2 + 5) + 48);
    v10 = (v9 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9) ^ v5;
    v11 = *(*(v4 + 72) + 4 * (v10 % *(v4 + 88)));
    if (v11 != 0x7FFFFFFF)
    {
      v12 = *(v4 + 80);
      while (*(v12 + 24 * v11 + 8) != v10)
      {
        v11 = *(v12 + 24 * v11) & 0x7FFFFFFF;
        if (v11 == 0x7FFFFFFF)
        {
          return;
        }
      }

      v13 = *(v12 + 24 * v11 + 16);
      if (v13)
      {
        v14 = re::RenderGraphDataStore::tryGet<re::ViewportPercentData>(v4, v9);
        if (v14)
        {
          v15 = *(v14 + 65);
        }

        else
        {
          v15 = 0;
        }

        re::RenderGraphContext::acquireManagedComputeCommandEncoder(a2, 0, 0, &v31);
        [v31 setComputePipelineState:*(this + 42)];
        re::RenderGraphContext::metalTexture(a2, this + 264, 0, 0, &v30);
        re::RenderGraphContext::metalTexture(a2, this + 280, 0, 0, &v29);
        v28 = v30;
        v27 = v29;
        if ((v15 & 1) == 0)
        {
          re::makeView2DTo2DArray(&v30, &v35);
          NS::SharedPtr<MTL::Texture>::operator=(&v28, &v35);
          if (v35)
          {
          }

          re::makeView2DTo2DArray(&v29, &v35);
          NS::SharedPtr<MTL::Texture>::operator=(&v27, &v35);
          if (v35)
          {
          }
        }

        v16 = re::RenderGraphContext::metalBuffer(a2, this + 296);
        [v31 setTexture:v28 atIndex:0];
        [v31 setTexture:v27 atIndex:1];
        re::BufferSlice::buffer(v16, v17);
        [v31 setBuffer:*v16 offset:*(v16 + 32) atIndex:0];
        v18 = [v29 width];
        v19 = [v29 height];
        v20 = [*(this + 42) threadExecutionWidth];
        v21 = [*(this + 42) maxTotalThreadsPerThreadgroup];
        v22 = *(a2 + 1);
        v23 = v21 / v20;
        v26 = v31;
        re::RenderManager::sampleComputeEncoderMTLCounterBegin(v22, &v26, 1u);

        [v31 setBytes:v13 + 8 length:2 atIndex:1];
        v35 = v18;
        v36 = v19;
        v37 = 1;
        v32 = v20;
        v33 = v23;
        v34 = 1;
        [v31 dispatchThreads:&v35 threadsPerThreadgroup:&v32];
        if (v15)
        {
          [v31 setBytes:v13 + 10 length:2 atIndex:1];
          v35 = v18;
          v36 = v19;
          v37 = 1;
          v32 = v20;
          v33 = v23;
          v34 = 1;
          [v31 dispatchThreads:&v35 threadsPerThreadgroup:&v32];
        }

        v24 = *(a2 + 1);
        v25 = v31;
        re::RenderManager::sampleComputeEncoderMTLCounterEnd(v24, &v25, 1u);

        if (v27)
        {
        }

        if (v28)
        {
        }

        if (v29)
        {
        }

        if (v30)
        {
        }
      }
    }
  }
}

void *re::allocInfo_RenderGraphVRRUnwarpNode(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_516, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_516))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BF888, "RenderGraphVRRUnwarpNode");
    __cxa_guard_release(&_MergedGlobals_516);
  }

  return &unk_1EE1BF888;
}

void re::initInfo_RenderGraphVRRUnwarpNode(re *this, re::IntrospectionBase *a2)
{
  v22[0] = 0x602B7219C45EA382;
  v22[1] = "RenderGraphVRRUnwarpNode";
  if (v22[0])
  {
    if (v22[0])
    {
    }
  }

  *(this + 2) = v23;
  if ((atomic_load_explicit(&qword_1EE1BF860, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BF860);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_RenderGraphNode(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "RenderGraphNode";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1BF868 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_RenderGraphTargetHandle(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "unwarpedColorHandle";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x11800000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1BF870 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_RenderGraphTargetHandle(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "warpedColorHandle";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x10800000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1BF878 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::introspect_AssetHandle(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "library";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x13800000003;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1BF880 = v20;
      __cxa_guard_release(&qword_1EE1BF860);
    }
  }

  *(this + 2) = 0x15800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1BF868;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphVRRUnwarpNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphVRRUnwarpNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphVRRUnwarpNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphVRRUnwarpNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v21 = v23;
}

double re::internal::defaultConstruct<re::RenderGraphVRRUnwarpNode>(int a1, int a2, re::RenderGraphNode *this)
{
  v3 = re::RenderGraphNode::RenderGraphNode(this);
  *v3 = &unk_1F5D11FB0;
  *(v3 + 33) = 0;
  *(v3 + 34) = -1;
  *(v3 + 35) = 0;
  *(v3 + 36) = -1;
  *(v3 + 37) = 0;
  *(v3 + 38) = -1;
  *(v3 + 67) = 0;
  result = 0.0;
  *(v3 + 312) = 0u;
  *(v3 + 328) = 0u;
  return result;
}

double re::internal::defaultConstructV2<re::RenderGraphVRRUnwarpNode>(re::RenderGraphNode *a1)
{
  v1 = re::RenderGraphNode::RenderGraphNode(a1);
  *v1 = &unk_1F5D11FB0;
  *(v1 + 33) = 0;
  *(v1 + 34) = -1;
  *(v1 + 35) = 0;
  *(v1 + 36) = -1;
  *(v1 + 37) = 0;
  *(v1 + 38) = -1;
  *(v1 + 67) = 0;
  result = 0.0;
  *(v1 + 312) = 0u;
  *(v1 + 328) = 0u;
  return result;
}

void re::RenderGraphVRRUnwarpNode::~RenderGraphVRRUnwarpNode(re::RenderGraphVRRUnwarpNode *this)
{
  re::RenderGraphVRRUnwarpNode::~RenderGraphVRRUnwarpNode(this);

  JUMPOUT(0x1E6906520);
}

{
  v2 = *(this + 42);
  if (v2)
  {

    *(this + 42) = 0;
  }

  re::AssetHandle::~AssetHandle((this + 312));

  re::RenderGraphNode::~RenderGraphNode(this);
}

void *re::allocInfo_RayTracedAmbientOcclusionSettings(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_517, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_517))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BF980, "RayTracedAmbientOcclusionSettings");
    __cxa_guard_release(&_MergedGlobals_517);
  }

  return &unk_1EE1BF980;
}

void re::initInfo_RayTracedAmbientOcclusionSettings(re *this, re::IntrospectionBase *a2)
{
  v51[0] = 0xD75D01D3DD85CD42;
  v51[1] = "RayTracedAmbientOcclusionSettings";
  if (v51[0])
  {
    if (v51[0])
    {
    }
  }

  *(this + 2) = v52;
  if ((atomic_load_explicit(&qword_1EE1BF920, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BF920);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_float(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "rayDistributionVerticalStretchOnGround";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1BF928 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_float(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "rayDistributionVerticalStretchOnWall";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x400000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1BF930 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_float(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "whiteLevel";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x800000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1BF938 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::introspect_float(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "minFullIntensityAngle";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0xC00000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE1BF940 = v21;
      v22 = re::introspectionAllocator(v21);
      v24 = re::introspect_short(1, v23);
      v25 = (*(*v22 + 32))(v22, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "ambientOcclusionType";
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0x1000000005;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE1BF948 = v25;
      v26 = re::introspectionAllocator(v25);
      v28 = re::introspect_BOOL(1, v27);
      v29 = (*(*v26 + 32))(v26, 72, 8);
      *v29 = 1;
      *(v29 + 8) = "postProcessAmbientOcclusion";
      *(v29 + 16) = v28;
      *(v29 + 24) = 0;
      *(v29 + 32) = 0x1200000006;
      *(v29 + 40) = 0;
      *(v29 + 48) = 0;
      *(v29 + 56) = 0;
      *(v29 + 64) = 0;
      qword_1EE1BF950 = v29;
      v30 = re::introspectionAllocator(v29);
      v32 = re::introspect_BOOL(1, v31);
      v33 = (*(*v30 + 32))(v30, 72, 8);
      *v33 = 1;
      *(v33 + 8) = "accumulateAmbientOcclusion";
      *(v33 + 16) = v32;
      *(v33 + 24) = 0;
      *(v33 + 32) = 0x1300000007;
      *(v33 + 40) = 0;
      *(v33 + 48) = 0;
      *(v33 + 56) = 0;
      *(v33 + 64) = 0;
      qword_1EE1BF958 = v33;
      v34 = re::introspectionAllocator(v33);
      v36 = re::introspect_BOOL(1, v35);
      v37 = (*(*v34 + 32))(v34, 72, 8);
      *v37 = 1;
      *(v37 + 8) = "temporallyReprojectAmbientOcclusion";
      *(v37 + 16) = v36;
      *(v37 + 24) = 0;
      *(v37 + 32) = 0x1400000008;
      *(v37 + 40) = 0;
      *(v37 + 48) = 0;
      *(v37 + 56) = 0;
      *(v37 + 64) = 0;
      qword_1EE1BF960 = v37;
      v38 = re::introspectionAllocator(v37);
      v40 = re::introspect_BOOL(1, v39);
      v41 = (*(*v38 + 32))(v38, 72, 8);
      *v41 = 1;
      *(v41 + 8) = "denoiseAmbientOcclusion";
      *(v41 + 16) = v40;
      *(v41 + 24) = 0;
      *(v41 + 32) = 0x1500000009;
      *(v41 + 40) = 0;
      *(v41 + 48) = 0;
      *(v41 + 56) = 0;
      *(v41 + 64) = 0;
      qword_1EE1BF968 = v41;
      v42 = re::introspectionAllocator(v41);
      v44 = re::introspect_BOOL(1, v43);
      v45 = (*(*v42 + 32))(v42, 72, 8);
      *v45 = 1;
      *(v45 + 8) = "reduceIntensityAtGrazingAngles";
      *(v45 + 16) = v44;
      *(v45 + 24) = 0;
      *(v45 + 32) = 0x160000000ALL;
      *(v45 + 40) = 0;
      *(v45 + 48) = 0;
      *(v45 + 56) = 0;
      *(v45 + 64) = 0;
      qword_1EE1BF970 = v45;
      v46 = re::introspectionAllocator(v45);
      v48 = re::introspect_BOOL(1, v47);
      v49 = (*(*v46 + 32))(v46, 72, 8);
      *v49 = 1;
      *(v49 + 8) = "compositeAmbientOcclusion";
      *(v49 + 16) = v48;
      *(v49 + 24) = 0;
      *(v49 + 32) = 0x170000000DLL;
      *(v49 + 40) = 0;
      *(v49 + 48) = 0;
      *(v49 + 56) = 0;
      *(v49 + 64) = 0;
      qword_1EE1BF978 = v49;
      __cxa_guard_release(&qword_1EE1BF920);
    }
  }

  *(this + 2) = 0x1800000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 11;
  *(this + 8) = &qword_1EE1BF928;
  *(this + 9) = re::internal::defaultConstruct<re::RayTracedAmbientOcclusionSettings>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RayTracedAmbientOcclusionSettings>;
  *(this + 13) = re::internal::defaultConstructV2<re::RayTracedAmbientOcclusionSettings>;
  *(this + 14) = re::internal::defaultDestructV2<re::RayTracedAmbientOcclusionSettings>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v50 = v52;
}

double re::internal::defaultConstruct<re::RayTracedAmbientOcclusionSettings>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0.12500003;
  *a3 = xmmword_1E31042A0;
  *(a3 + 16) = 0;
  *(a3 + 18) = 16843009;
  *(a3 + 22) = 256;
  return result;
}

double re::internal::defaultConstructV2<re::RayTracedAmbientOcclusionSettings>(uint64_t a1)
{
  result = 0.12500003;
  *a1 = xmmword_1E31042A0;
  *(a1 + 16) = 0;
  *(a1 + 18) = 16843009;
  *(a1 + 22) = 256;
  return result;
}

void re::SyncMechanism::resetWithNewEvent(id *this)
{
  v2 = this + 2;
  v3 = [*this newEvent];
  NS::SharedPtr<MTL::Texture>::operator=(v2, &v3);
  if (v3)
  {
  }

  this[4] = 1;
}

uint64_t re::SyncMechanism::sync(re::SyncMechanism *this)
{
  v2 = *(this + 5);
  if (*(this + 24) == 1)
  {
    if (!v2)
    {
      goto LABEL_5;
    }
  }

  else if ((v2 & 3) == 0)
  {
LABEL_5:
    re::SyncMechanism::resetWithNewEvent(this);
  }

  [*(this + 1) encodeSignalEvent:*(this + 2) value:(*(this + 4))++];
  result = [*(this + 1) encodeWaitForEvent:*(this + 2) value:?];
  ++*(this + 5);
  return result;
}

void re::RenderGraphVFXNode::execute(re::RenderGraphVFXNode *this, re::RenderGraphContext *a2)
{
  v142 = *MEMORY[0x1E69E9840];
  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(this);
  if (isStatisticCollectionEnabled)
  {
    v5 = re::profilerThreadContext(isStatisticCollectionEnabled);
    if (*(v5 + 152))
    {
      v2 = mach_absolute_time();
    }
  }

  else
  {
    v5 = 0;
  }

  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v115, 5085, 0);
  *(a2 + 1553) = 3;
  v6 = *(a2 + 146);
  v7 = "N2re27RenderGraphDataStoreWrapperIPNS_23ActiveVFXSimulationDataEEE";
  if (("N2re27RenderGraphDataStoreWrapperIPNS_23ActiveVFXSimulationDataEEE" & 0x8000000000000000) != 0)
  {
    v8 = ("N2re27RenderGraphDataStoreWrapperIPNS_23ActiveVFXSimulationDataEEE" & 0x7FFFFFFFFFFFFFFFLL);
    v9 = 5381;
    do
    {
      v7 = v9;
      v10 = *v8++;
      v9 = (33 * v9) ^ v10;
    }

    while (v10);
  }

  if (*(v6 + 16))
  {
    v11 = (*(*(a2 + 5) + 48) + (v7 << 6) + (v7 >> 2) - 0x61C8864680B583E9) ^ v7;
    v12 = *(*(v6 + 24) + 4 * (v11 % *(v6 + 40)));
    if (v12 != 0x7FFFFFFF)
    {
      v13 = *(v6 + 32);
      while (*(v13 + 24 * v12 + 8) != v11)
      {
        v12 = *(v13 + 24 * v12) & 0x7FFFFFFF;
        if (v12 == 0x7FFFFFFF)
        {
          goto LABEL_101;
        }
      }

      v14 = *(v13 + 24 * v12 + 16);
      if (v14)
      {
        TextureTableByName = re::MaterialManager::findTextureTableByName(*(*(a2 + 1) + 24), "VFXTextureTable");
        if (TextureTableByName)
        {
          v16 = TextureTableByName;
          v128[0] = 0xC10C601B47401E3;
          (**TextureTableByName)(&v107);
          ((*v16)[3])(v128, v16, BYTE2(v107));
          v17 = *a2;
          *&v111 = 0x6C456FCA259980DELL;
          re::DynamicTextureTableAdd((v17 + 368), &v111, v128);
          if (v128[0])
          {
          }
        }

        {
          v18 = *re::graphicsLogObjects(0);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v128[0]) = 0;
            _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "Cannot retrieve VFX texture table, VFX couldn't be rendered", v128, 2u);
          }
        }

        v19 = *(v14 + 8);
        v113 = 0u;
        v114 = 0u;
        v111 = 0u;
        v112 = 0u;
        re::RenderCamera::computeLocalTransform((v19 + 48), &v111);
        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        if (*(v19 + 160) == 1)
        {
          v21 = *(v19 + 192);
          v107 = *(v19 + 176);
          v108 = v21;
          v22 = *(v19 + 224);
          v109 = *(v19 + 208);
          v110 = v22;
        }

        else
        {
          re::Projection::cullingProjectionMatrix((v19 + 80), &v107);
        }

        v106 = *(*(a2 + 1) + 72);
        if (!v106)
        {
          re::internal::assertLog(4, v20, "assertion failure: '%s' (%s:line %i) ", "vfxManager", "simulateVFXScenes", 269);
          _os_crash();
          __break(1u);
        }

        v23 = *(*a2 + 32);
        v127 = 0;
        v124 = 0;
        v125 = 0;
        v126 = 0;
        v123 = v23;
        re::DynamicArray<float *>::setCapacity(&v123, 0);
        ++v126;
        v24 = *(v19 + 16);
        if (v124 < v24)
        {
          re::DynamicArray<float *>::setCapacity(&v123, v24);
        }

        v25 = *(*a2 + 32);
        v122 = 0;
        v119 = 0;
        v120 = 0;
        v121 = 0;
        v118 = v25;
        v26 = re::DynamicArray<float *>::setCapacity(&v118, 0);
        ++v121;
        v27 = *(v19 + 16);
        v97 = v19;
        if (v119 < v27)
        {
          v26 = re::DynamicArray<float *>::setCapacity(&v118, v27);
          v27 = *(v19 + 16);
        }

        v94 = v2;
        v95 = v5;
        v98 = *(*a2 + 40) & 0xFFFFFFFFFFFFFFFLL;
        v28 = *(v106 + 208);
        if (v27)
        {
          v29 = *(v19 + 32);
          v30 = &v29[v27];
          while (1)
          {
            v31 = *v29;
            if (*(*v29 + 744) == -2)
            {
              v32 = v120;
              if (v120 >= v119)
              {
                v33 = v120 + 1;
                if (v119 < v120 + 1)
                {
                  if (v118)
                  {
                    v34 = 8;
                    if (v119)
                    {
                      v34 = 2 * v119;
                    }

                    if (v34 <= v33)
                    {
                      v35 = v120 + 1;
                    }

                    else
                    {
                      v35 = v34;
                    }

                    v26 = re::DynamicArray<float *>::setCapacity(&v118, v35);
                  }

                  else
                  {
                    v26 = re::DynamicArray<float *>::setCapacity(&v118, v33);
                    ++v121;
                  }
                }

                v32 = v120;
              }

              v122[v32] = v31;
              v120 = v32 + 1;
              ++v121;
              goto LABEL_71;
            }

            v128[0] = *(*v29 + 744);
            v26 = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v106 + 56, v128);
            if (!v26 || *(v26 + 3) < v98)
            {
              break;
            }

LABEL_71:
            if (++v29 == v30)
            {
              goto LABEL_72;
            }
          }

          v36 = (v31 + 744);
          if (v125)
          {
            v37 = 8 * v125;
            v38 = v127;
            while (*v38 != *v36)
            {
              ++v38;
              v37 -= 8;
              if (!v37)
              {
                goto LABEL_50;
              }
            }
          }

          else
          {
            v38 = v127;
          }

          if (v38 == &v127[v125])
          {
LABEL_50:
            re::DynamicArray<re::TransitionCondition *>::add(&v123, v36);
          }

          v39 = *(v31 + 752);
          v40 = v39;
          if (!v39)
          {
LABEL_64:

            goto LABEL_71;
          }

          v41 = [v39 parentNode];
          [v41 setTransform:{*(v31 + 832), *(v31 + 848), *(v31 + 864), *(v31 + 880)}];
          v42 = [v40 setWorldTransform:{*(v31 + 768), *(v31 + 784), *(v31 + 800), *(v31 + 816)}];
          v43 = *(v31 + 1008);
          v44 = v43 ^ 1u;
          v45 = *(v31 + 900);
          if (!re::shouldMergeVFXEffectsIntoOneWorld(v42))
          {
            v47 = [*(v31 + 752) world];
            v48 = v47;
            if (v43)
            {
              v49 = 1.0;
              if (v45)
              {
                v49 = *(v31 + 904);
              }

              v50 = [v47 clock];
              *&v51 = v49;
              [v50 setSpeed:v51];
            }

            v52 = [v48 clock];
            [v52 setPaused:v44];

            if (*(v31 + 1009) == 1)
            {
              [v48 restart];
            }

            goto LABEL_63;
          }

          v46 = [v40 isPaused];
          if (*(v31 + 1009))
          {
            [v40 setPaused:v43 ^ 1u];
          }

          else
          {
            v53 = v46;
            [v40 setPaused:v43 ^ 1u];
            if ((v45 & 1) == 0 && ((v53 ^ v44) & 1) == 0)
            {
              goto LABEL_63;
            }
          }

          v116[0] = MEMORY[0x1E69E9820];
          v116[1] = 3221225472;
          v116[2] = ___ZN2re12_GLOBAL__N_117simulateVFXScenesIPNS_8VFXSceneEEEvRNS_18RenderGraphContextERKNS_12DynamicArrayIT_EERK13simd_float4x4SD__block_invoke;
          v116[3] = &__block_descriptor_41_e21_v24__0__VFXNode_8_B16l;
          v116[4] = v31;
          v117 = v45;
          [v40 enumerateHierarchyUsingBlock:v116];
LABEL_63:

          goto LABEL_64;
        }

LABEL_72:
        *v128 = v111;
        v129 = v112;
        v130 = v113;
        v131 = v114;
        v138 = xmmword_1E30474D0;
        v139 = 0u;
        v137 = 0u;
        re::decomposeScaleRotationTranslation<float>(v128, &v139, &v138, &v137);
        v96 = v122;
        if (v120)
        {
          v102 = v137;
          v104 = v138;
          v54 = 8 * v120;
          __asm { FMOV            V0.4S, #1.0 }

          v100 = _Q0;
          v59 = v122;
          do
          {
            v60 = *v59;
            v61 = *(*v59 + 752);
            v62 = v61;
            if ((*(v60 + 1011) & 1) == 0)
            {
              if (*(v60 + 1009) == 1)
              {
                v63 = [v61 scene];
                [v63 restart];
              }

              v64 = [v62 scene];
              v128[0] = MEMORY[0x1E69E9820];
              v128[1] = 3221225472;
              *&v129 = ___ZN2re12_GLOBAL__N_123simulateVFXLegacyScenesERNS_18RenderGraphContextERKNS_12DynamicArrayIPKNS_8VFXSceneEEERK13simd_float4x4SC_f_block_invoke;
              *(&v129 + 1) = &unk_1E87217D0;
              v65 = v62;
              v133 = v65;
              v134 = v60;
              v130 = v100;
              v131 = v104;
              v132 = v102;
              v135 = &v107;
              v136 = v28;
              [v64 performTransaction:v128];

              v66 = [v65 drawCallCount];
              *(v60 + 912) = v66;
              *(v60 + 1011) = 1;
              re::globalAllocators(v66);
              v67 = *(*a2 + 32);
              v68 = (*(*v67 + 32))(v67, 8, 8);
              v69 = [v65 recycleBuffersGetCompletion];
              v70 = _Block_copy(v69);
              *v68 = v70;
              v140 = re::globalAllocators(v70)[2];
              v141 = &v139;
              v139.i64[0] = &unk_1F5D121A8;
              (*(*v67 + 16))(v67, v68, &v139);
              re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v139);
            }

            ++v59;
            v54 -= 8;
          }

          while (v54);
        }

        if (v125)
        {
          v71 = v127;
          v72 = 8 * v125;
          do
          {
            v73 = *v71;
            v139.i64[0] = *v71;
            v74 = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v106 + 56, &v139);
            if (v74)
            {
              v75 = *(v74 + 16);
              v76 = [v75 pointOfView];
              [v76 setTransform:{*&v111, *&v112, *&v113, *&v114}];
              v103 = *&v109;
              v105 = *&v110;
              v99 = *&v107;
              v101 = *&v108;
              v77 = [v76 camera];
              [v77 setProjectionTransform:{v99, v101, v103, v105}];

              v128[0] = MEMORY[0x1E69E9820];
              v128[1] = 3221225472;
              *&v129 = ___ZN2re12_GLOBAL__N_117simulateVFXScenesIPNS_8VFXSceneEEEvRNS_18RenderGraphContextERKNS_12DynamicArrayIT_EERK13simd_float4x4SD__block_invoke_2;
              *(&v129 + 1) = &__block_descriptor_48_e21_v24__0__VFXNode_8_B16l;
              *&v130 = &v111;
              *(&v130 + 1) = &v107;
              [v75 enumerateSecondaryPointOfViewsUsingBlock:v128];
              [v75 updateWithDeltaTime:v28];
              v78 = [v75 prepareDrawCalls];
              v139.i64[0] = v73;
              if (v73 != -2)
              {
                v78 = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v106 + 56, &v139);
                if (v78)
                {
                  *(v78 + 3) = v98;
                }
              }

              re::globalAllocators(v78);
              v79 = *(*a2 + 32);
              v80 = (*(*v79 + 32))(v79, 8, 8);
              v81 = [v75 recycleBuffersGetCompletion];
              v82 = _Block_copy(v81);
              *v80 = v82;
              v140 = re::globalAllocators(v82)[2];
              v141 = &v139;
              v139.i64[0] = &unk_1F5D12200;
              (*(*v79 + 16))(v79, v80, &v139);

              re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v139);
            }

            ++v71;
            v72 -= 8;
          }

          while (v72);
        }

        v83 = *(v97 + 16);
        v2 = v94;
        v5 = v95;
        if (v83)
        {
          v84 = *(v97 + 32);
          v85 = 8 * v83;
          do
          {
            v86 = *v84;
            if (*(*v84 + 744) != -2)
            {
              v87 = *(v86 + 752);
              *(v86 + 912) = [v87 drawCallCount];
              *(v86 + 1011) = 1;
            }

            ++v84;
            v85 -= 8;
          }

          while (v85);
        }

        if (v118)
        {
          _ZF = v96 == 0;
        }

        else
        {
          _ZF = 1;
        }

        if (!_ZF)
        {
          (*(*v118 + 40))();
        }

        if (v123 && v127)
        {
          (*(*v123 + 40))();
        }

        *(a2 + 1553) = 0;
      }
    }
  }

LABEL_101:
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v115);
  if (v5)
  {
    if (*(v5 + 152))
    {
      v89 = mach_absolute_time();
      v90 = *(v5 + 152);
      if (v90)
      {
        v91 = v90[1208].u64[0];
        if (v91 >= v89 - v2)
        {
          v91 = v89 - v2;
        }

        v90[1208].i64[0] = v91;
        v92 = v90[1208].u64[1];
        if (v92 <= v89 - v2)
        {
          v92 = v89 - v2;
        }

        v90[1208].i64[1] = v92;
        v93 = vdupq_n_s64(1uLL);
        v93.i64[0] = v89 - v2;
        v90[1209] = vaddq_s64(v90[1209], v93);
        *(v5 + 184) = 0;
      }
    }
  }
}

void re::RenderGraphVFXNotifyFrameNode::execute(re::RenderGraphVFXNotifyFrameNode *this, re::RenderGraphContext *a2)
{
  v2 = *(this + 264);
  v3 = *(*(a2 + 1) + 72);
  if (v2 == 1)
  {
    if (v3)
    {
      re::VFXManager::beginFrame(v3, *(*a2 + 40) & 0xFFFFFFFFFFFFFFFLL);
    }
  }

  else if (v3)
  {
    re::VFXManager::endFrame(v3, *(*a2 + 40) & 0xFFFFFFFFFFFFFFFLL);
  }
}

void *re::allocInfo_RenderGraphVFXNode(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_518, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_518))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BFA48, "RenderGraphVFXNode");
    __cxa_guard_release(&_MergedGlobals_518);
  }

  return &unk_1EE1BFA48;
}

void re::initInfo_RenderGraphVFXNode(re *this, re::IntrospectionBase *a2)
{
  v10[0] = 0xA5BAE2AEEC3D8B24;
  v10[1] = "RenderGraphVFXNode";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1BFA20, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BFA20);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_RenderGraphNode(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "RenderGraphNode";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1BFA18 = v8;
      __cxa_guard_release(&qword_1EE1BFA20);
    }
  }

  *(this + 2) = 0x11000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1BFA18;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphVFXNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphVFXNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphVFXNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphVFXNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v9 = v11;
}

re::RenderGraphNode *re::internal::defaultConstruct<re::RenderGraphVFXNode>(int a1, int a2, re::RenderGraphNode *this)
{
  result = re::RenderGraphNode::RenderGraphNode(this);
  *result = &unk_1F5D12058;
  *(result + 264) = 0;
  return result;
}

re::RenderGraphNode *re::internal::defaultConstructV2<re::RenderGraphVFXNode>(re::RenderGraphNode *a1)
{
  result = re::RenderGraphNode::RenderGraphNode(a1);
  *result = &unk_1F5D12058;
  *(result + 264) = 0;
  return result;
}