unint64_t re::getCombinedScopeHash(re *this, const char *a2, const char *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  MurmurHash3_x64_128("RenderGraphGlobals", 0x12uLL, 0, &v7);
  v3 = v7;
  v4 = v8;
  MurmurHash3_x64_128("RenderFrame", 0xBuLL, 0, &v7);
  v5 = (v4 + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9) ^ v3;
  return ((v5 << 6) + (v5 >> 2) + ((v8 + (v7 << 6) + (v7 >> 2) - 0x61C8864680B583E9) ^ v7) - 0x61C8864680B583E9) ^ v5;
}

{
  v9 = *MEMORY[0x1E69E9840];
  v4 = strlen(this);
  if (v4)
  {
    MurmurHash3_x64_128(this, v4, 0, &v7);
    v5 = (v8 - 0x61C8864680B583E9 + (v7 << 6) + (v7 >> 2)) ^ v7;
  }

  else
  {
    v5 = 0;
  }

  MurmurHash3_x64_128("RenderFrame", 0xBuLL, 0, &v7);
  return ((v5 << 6) - 0x61C8864680B583E9 + (v5 >> 2) + ((v8 - 0x61C8864680B583E9 + (v7 << 6) + (v7 >> 2)) ^ v7)) ^ v5;
}

{
  v12 = *MEMORY[0x1E69E9840];
  v5 = 0x9E3779B97F4A7C17;
  v6 = strlen(this);
  if (v6)
  {
    MurmurHash3_x64_128(this, v6, 0, &v10);
    v7 = (v11 - 0x61C8864680B583E9 + (v10 << 6) + (v10 >> 2)) ^ v10;
  }

  else
  {
    v7 = 0;
  }

  v8 = strlen(a2);
  if (v8)
  {
    MurmurHash3_x64_128(a2, v8, 0, &v10);
    v5 = ((v11 - 0x61C8864680B583E9 + (v10 << 6) + (v10 >> 2)) ^ v10) - 0x61C8864680B583E9;
  }

  return ((v7 >> 2) + (v7 << 6) + v5) ^ v7;
}

{
  v9 = *MEMORY[0x1E69E9840];
  MurmurHash3_x64_128("ToneMapping", 0xBuLL, 0, &v7);
  v3 = v7;
  v4 = v8;
  MurmurHash3_x64_128("RenderFrame", 0xBuLL, 0, &v7);
  v5 = (v4 + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9) ^ v3;
  return ((v5 << 6) + (v5 >> 2) + ((v8 + (v7 << 6) + (v7 >> 2) - 0x61C8864680B583E9) ^ v7) - 0x61C8864680B583E9) ^ v5;
}

{
  v9 = *MEMORY[0x1E69E9840];
  MurmurHash3_x64_128("RenderGraphGlobals", 0x12uLL, 0, &v7);
  v3 = v7;
  v4 = v8;
  MurmurHash3_x64_128("RenderFrame", 0xBuLL, 0, &v7);
  v5 = (v4 + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9) ^ v3;
  return ((v5 << 6) + (v5 >> 2) + ((v8 + (v7 << 6) + (v7 >> 2) - 0x61C8864680B583E9) ^ v7) - 0x61C8864680B583E9) ^ v5;
}

{
  v9 = *MEMORY[0x1E69E9840];
  MurmurHash3_x64_128("SceneArray", 0xAuLL, 0, &v7);
  v3 = v7;
  v4 = v8;
  MurmurHash3_x64_128("RenderFrame", 0xBuLL, 0, &v7);
  v5 = (v4 + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9) ^ v3;
  return ((v5 << 6) + (v5 >> 2) + ((v8 + (v7 << 6) + (v7 >> 2) - 0x61C8864680B583E9) ^ v7) - 0x61C8864680B583E9) ^ v5;
}

{
  v9 = *MEMORY[0x1E69E9840];
  MurmurHash3_x64_128("GuidedFilterOcclusionData", 0x19uLL, 0, &v7);
  v3 = v7;
  v4 = v8;
  MurmurHash3_x64_128("GuidedFilterOcclusion", 0x15uLL, 0, &v7);
  v5 = (v4 + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9) ^ v3;
  return ((v5 << 6) + (v5 >> 2) + ((v8 + (v7 << 6) + (v7 >> 2) - 0x61C8864680B583E9) ^ v7) - 0x61C8864680B583E9) ^ v5;
}

{
  v9 = *MEMORY[0x1E69E9840];
  MurmurHash3_x64_128("ProjectiveMeshShadow", 0x14uLL, 0, &v7);
  v3 = v7;
  v4 = v8;
  MurmurHash3_x64_128("RenderFrame", 0xBuLL, 0, &v7);
  v5 = (v4 + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9) ^ v3;
  return ((v5 << 6) + (v5 >> 2) + ((v8 + (v7 << 6) + (v7 >> 2) - 0x61C8864680B583E9) ^ v7) - 0x61C8864680B583E9) ^ v5;
}

re *___ZN2re14DrawingManager20executeFrameInternalEPNS_19RenderFrameWorkloadE_block_invoke(re *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 4);
  v2 = *(a1 + 5);
  v4 = *(*(v3 + 256) + 144);
  v5 = re::globalAllocators(a1)[2];
  v10 = &unk_1F5D07000;
  v11 = v3;
  v12 = v5;
  v13 = &v10;
  re::FrameManager::tryExecuteCallbackWithAllocatedFrame(v4, v2, &v10);
  result = re::FunctionBase<24ul,void ()(unsigned long long)>::destroyCallable(&v10);
  v7 = *(a1 + 5);
  v8 = *(a1 + 6);
  if (v7 != v8)
  {
    v9 = *(*(v3 + 256) + 144);
    v12 = re::globalAllocators(result)[2];
    v13 = &v10;
    v10 = &unk_1F5D07000;
    v11 = v3;
    re::FrameManager::tryExecuteCallbackWithAllocatedFrame(v9, v8, &v10);
    return re::FunctionBase<24ul,void ()(unsigned long long)>::destroyCallable(&v10);
  }

  return result;
}

void re::DrawingManager::sampleComputeEncoderMTLCounterBegin(uint64_t a1, id *a2, unsigned int a3)
{
  v5 = *a2;
  re::RenderStat::sampleComputeEncoderMTLCounterBegin(a1 + 864, &v5, a3);
}

void re::DrawingManager::sampleComputeEncoderMTLCounterEnd(uint64_t a1, id *a2, unsigned int a3)
{
  v5 = *a2;
  re::RenderStat::sampleComputeEncoderMTLCounterEnd(a1 + 864, &v5, a3);
}

void re::DrawingManager::enableMTLCounterSamplingOnRenderPassDescriptor(uint64_t a1, id *a2, unsigned int a3)
{
  v5 = *a2;
  re::RenderStat::enableMTLCounterSamplingOnRenderPassDescriptor(a1 + 864, &v5, a3);
  if (v5)
  {
  }
}

void re::DrawingManager::makeComputeCommandEncoderWithMTLCounterSampling(uint64_t a1@<X0>, id *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = *a2;
  re::RenderStat::makeComputeCommandEncoderWithMTLCounterSampling(a1 + 864, &v9, a3, a4, a5);
}

uint64_t re::DrawingManager::reloadLibrary(_anonymous_namespace_ **this, const char *a2, const char *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  if (v29)
  {
    v7 = *&v30[7];
  }

  else
  {
    v7 = v30;
  }

  if (v26)
  {
    v8 = *&v27[7];
  }

  else
  {
    v8 = v27;
  }

  re::ShaderManager::makeLibraryWithData(*(this[32] + 6), v7, v8, 0);
  v9 = this[32];
  re::DynamicString::DynamicString(&v19, &v28);
  v10 = re::DynamicString::DynamicString(&v23, &v25);
  v32 = re::globalAllocators(v10)[2];
  v11 = (*(*v32 + 32))(v32, 80, 0);
  v12 = v20;
  *v11 = &unk_1F5D07118;
  v11[1] = this;
  v11[4] = 0;
  v11[5] = 0;
  v11[3] = 0;
  v13 = v19;
  v11[5] = v22;
  v22 = 0;
  v14 = v11[3];
  v11[2] = v13;
  v11[3] = v12;
  v15 = *(&v23 + 1);
  v11[4] = v21;
  v19 = 0;
  v20 = v14;
  v11[7] = 0;
  v11[8] = 0;
  v11[9] = 0;
  v16 = *(&v24 + 1);
  *(&v24 + 1) = 0;
  v17 = v11[7];
  v11[6] = v23;
  v11[8] = v24;
  v11[9] = v16;
  v21 = 0;
  *&v23 = 0;
  *(&v23 + 1) = v17;
  v11[7] = v15;
  *&v24 = 0;
  v33 = v11;
  re::RenderManager::addDelayedDestructorToRenderThread(v9, v31);
  re::MoveOnlyFunctionBase<24ul,void ()(void)>::destroyCallable(v31);
  if (v23)
  {
    if (BYTE8(v23))
    {
      (*(*v23 + 40))();
    }

    v24 = 0u;
    v23 = 0u;
  }

  if (v19 && (v20 & 1) != 0)
  {
    (*(*v19 + 40))();
  }

  if (v25 && (v26 & 1) != 0)
  {
    (*(*v25 + 40))();
  }

  result = v28;
  if (v28)
  {
    if (v29)
    {
      return (*(*v28 + 40))();
    }
  }

  return result;
}

uint64_t *re::DrawingManager::removeInvalidPipelineStates(re::DrawingManager *this)
{
  ValidAllocator = re::getValidAllocator((*(*(*(this + 32) + 144) + 24) & 0xFFFFFFFFFFFFFFFLL | (*(*(*(this + 32) + 144) + 16) << 60)));
  v58 = 0;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v54 = ValidAllocator;
  re::DynamicArray<re::PipelineStateCacheKey>::setCapacity(&v54, 0);
  v3 = ++v57;
  v4 = *(*(this + 32) + 24);
  v5 = *(v4 + 416);
  if (v5)
  {
    v6 = *(v4 + 432);
    v44 = &v6[v5];
    do
    {
      to = 0;
      objc_copyWeak(&to, v6);
      v7 = objc_loadWeakRetained(&to);
      if (v7)
      {
        v45 = v7;
        v46 = v6;
        v8 = *(v7 + 9);
        if (v8)
        {
          v9 = *(v7 + 10);
          v47 = &v9[5 * v8];
          do
          {
            v10 = *v9;
            v48 = v9;
            v49 = *(*v9 + 120);
            if (v49)
            {
              v11 = 0;
              v12 = *(v10 + 104);
              while (1)
              {
                v13 = *v12;
                v12 += 8;
                if (v13 < 0)
                {
                  break;
                }

                if (v49 == ++v11)
                {
                  LODWORD(v11) = *(*v9 + 120);
                  break;
                }
              }
            }

            else
            {
              LODWORD(v11) = 0;
            }

LABEL_54:
            while (v11 != v49)
            {
              v14 = *(*(v10 + 104) + 32 * v11 + 16);
              v15 = *(v14 + 56);
              if (v15)
              {
                v16 = 0;
                v17 = *(v14 + 40);
                while (1)
                {
                  v18 = *v17;
                  v17 += 24;
                  if (v18 < 0)
                  {
                    break;
                  }

                  if (v15 == ++v16)
                  {
                    LODWORD(v16) = *(v14 + 56);
                    break;
                  }
                }
              }

              else
              {
                LODWORD(v16) = 0;
              }

              while (v16 != v15)
              {
                v19 = v16;
                if (v15 <= v16 + 1)
                {
                  v20 = v16 + 1;
                }

                else
                {
                  v20 = v15;
                }

                v21 = *(v14 + 40);
                while (v20 - 1 != v16)
                {
                  LODWORD(v16) = v16 + 1;
                  if ((*(v21 + 96 * v16) & 0x80000000) != 0)
                  {
                    goto LABEL_27;
                  }
                }

                LODWORD(v16) = v20;
LABEL_27:
                v22 = v21 + 96 * v19;
                v23 = re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::tryGet(this + 48, (v22 + 8));
                if (v23)
                {
                  v24 = *v23;
                  if (*v23)
                  {
                    v25 = (v24 + 8);
                    v26 = *(this + 32);
                    v52 = v24;
                    v27 = (v24 + 8);
                    LOBYTE(v26) = re::validateCachedPipelineState(v26, &v52);

                    v52 = 0;
                    if ((v26 & 1) == 0)
                    {
                      v29 = v56;
                      if (v56 >= v55)
                      {
                        v30 = v56 + 1;
                        if (v55 < v56 + 1)
                        {
                          if (v54)
                          {
                            v31 = 2 * v55;
                            if (!v55)
                            {
                              v31 = 8;
                            }

                            if (v31 <= v30)
                            {
                              v32 = v56 + 1;
                            }

                            else
                            {
                              v32 = v31;
                            }

                            re::DynamicArray<re::PipelineStateCacheKey>::setCapacity(&v54, v32);
                            v3 = v57;
                          }

                          else
                          {
                            re::DynamicArray<re::PipelineStateCacheKey>::setCapacity(&v54, v30);
                            v3 = v57 + 1;
                          }
                        }

                        v29 = v56;
                      }

                      v33 = v58 + 72 * v29;
                      *v33 = *(v22 + 8);
                      v34 = *(v22 + 40);
                      v35 = *(v22 + 56);
                      v36 = *(v22 + 24);
                      *(v33 + 64) = *(v22 + 72);
                      *(v33 + 32) = v34;
                      *(v33 + 48) = v35;
                      *(v33 + 16) = v36;
                      v56 = v29 + 1;
                      v57 = ++v3;
                    }
                  }
                }

                LODWORD(v15) = *(v14 + 56);
              }

              if (v56)
              {
                v37 = v58;
                v38 = 72 * v56;
                do
                {
                  v50[0] = *v37;
                  v39 = *(v37 + 16);
                  v40 = *(v37 + 32);
                  v41 = *(v37 + 48);
                  v51 = *(v37 + 64);
                  v50[2] = v40;
                  v50[3] = v41;
                  v50[1] = v39;
                  re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::remove(v14 + 24, v50);
                  re::DrawingManager::releasePipelineState(this, v50);
                  v37 += 72;
                  v38 -= 72;
                }

                while (v38);
              }

              v56 = 0;
              v57 = ++v3;
              v42 = *(v10 + 120);
              if (v42 <= v11 + 1)
              {
                v42 = v11 + 1;
              }

              while (v42 - 1 != v11)
              {
                LODWORD(v11) = v11 + 1;
                if ((*(*(v10 + 104) + 32 * v11) & 0x80000000) != 0)
                {
                  goto LABEL_54;
                }
              }

              LODWORD(v11) = v42;
            }

            v9 = v48 + 5;
          }

          while (v48 + 5 != v47);
        }

        v6 = v46;
      }

      objc_destroyWeak(&to);
      ++v6;
    }

    while (v6 != v44);
  }

  result = v54;
  if (v54)
  {
    if (v58)
    {
      return (*(*v54 + 40))(v54);
    }
  }

  return result;
}

BOOL re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::remove(uint64_t a1, int *a2)
{
  v4 = re::Hash<re::PipelineStateCacheKey>::operator()(v6, a2);
  re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::findEntry<re::PipelineStateCacheKey>(a1, a2, v4, v6);
  return re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::removeInternal(a1, v6);
}

uint64_t re::DrawingManager::releasePipelineState(uint64_t a1, int *a2)
{
  result = re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::tryGet(a1 + 48, a2);
  if (result)
  {
    result = objc_isUniquelyReferenced();
    if (result)
    {

      return re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::remove(a1 + 48, a2);
    }
  }

  return result;
}

uint64_t re::DrawingManager::removeUnusedArgumentBuffers(uint64_t a1, re *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v29 = 0;
  v26[1] = 0;
  v27 = 0;
  v28 = 0;
  v26[0] = re::getValidAllocator(a2);
  re::DynamicArray<re::Pair<BOOL,re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription,true>>::setCapacity(v26, 0);
  ++v28;
  v23 = a1 + 104;
  v24 = 0;
  v3 = *(a1 + 120);
  if (v3 < 0x10)
  {
LABEL_5:
    v25 = -1;
  }

  else
  {
    v4 = 0;
    v5 = *(a1 + 104);
    v6 = v3 >> 4;
    while (1)
    {
      v7 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v5), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v24 = v7 ^ 0xFFFFLL;
      if (v7 != 0xFFFFLL)
      {
        break;
      }

      v4 -= 16;
      ++v5;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }

    v18 = __clz(__rbit64(v7 ^ 0xFFFFLL));
    v19 = v18 - v4;
    v25 = v18 - v4;
    if (v18 + 1 != v4)
    {
      do
      {
        v20 = v23;
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v23);
        v21 = *(v20 + 8) + 48 * v19;
        v22 = *(v21 + 40);
        if (*(v22 + 73))
        {
          *(v22 + 72) = 0;
        }

        else
        {

          *v22 = 0;
          *(v22 + 8) = 0;
          re::internal::destroyPersistent<re::CachedArgumentBuffer>("destroyCachedArgumentBuffer", 185, v22);
          re::DynamicArray<re::Pair<BOOL,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription,true>>::add(v26, v21);
        }

        v19 = v25;
      }

      while (v25 != -1);
    }
  }

  if (v27)
  {
    v8 = v29;
    v9 = 40 * v27;
    do
    {
      v10 = *v8;
      v11 = v8[1];
      *&v41 = *(v8 + 4);
      v40 = v11;
      v39 = v10;
      re::HashBrown<re::ArgumentBufferCacheKey,re::CachedArgumentBuffer *,re::Hash<re::ArgumentBufferCacheKey>,re::EqualTo<re::ArgumentBufferCacheKey>,void,false>::remove(a1 + 104, &v39);
      v8 = (v8 + 40);
      v9 -= 40;
    }

    while (v9);
  }

  if (*(a1 + 184))
  {
    v12 = 0;
    do
    {
      if ([*(*(a1 + 200) + 8 * v12) usedSize])
      {
        ++v12;
        v13 = *(a1 + 184);
      }

      else
      {
        v14 = *(a1 + 184);
        if (v14 <= v12)
        {
          v30 = 0;
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v39 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v31 = 136315906;
          v32 = "removeAt";
          v33 = 1024;
          v34 = 931;
          v35 = 2048;
          v36 = v12;
          v37 = 2048;
          v38 = v14;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        if (v14 - 1 > v12)
        {
          NS::SharedPtr<MTL::Texture>::operator=((*(a1 + 200) + 8 * v12), (*(a1 + 200) + 8 * v14 - 8));
          v14 = *(a1 + 184);
        }

        v15 = *(a1 + 200) + 8 * v14;
        v16 = *(v15 - 8);
        if (v16)
        {

          *(v15 - 8) = 0;
          v14 = *(a1 + 184);
        }

        v13 = v14 - 1;
        *(a1 + 184) = v14 - 1;
        ++*(a1 + 192);
      }
    }

    while (v12 < v13);
  }

  result = v26[0];
  if (v26[0])
  {
    if (v29)
    {
      return (*(*v26[0] + 40))();
    }
  }

  return result;
}

uint64_t re::DrawingManager::registerRenderLayer(uint64_t a1, id *a2)
{
  if (*a2)
  {
    [*a2 setProtectionOptions:re::protectionOptions(a1)];
    location = 0;
    v26 = 0;
    v28 = 0;
    re::ObjCObject::operator=(&location, a2);
    v4 = [*a2 colorspace];
    if (v4)
    {
      if (*(*(a1 + 264) + 112) == 1)
      {
        v24 = 0;
        Name = CGColorSpaceGetName(v4);
        ColorGamutFromCGColorSpaceName = re::ColorHelpers::getColorGamutFromCGColorSpaceName(Name, &v24);
        if (!ColorGamutFromCGColorSpaceName || v24 != *(*(a1 + 264) + 1))
        {
          v7 = *re::graphicsLogObjects(ColorGamutFromCGColorSpaceName);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            v23[0] = 0;
            _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "Registered render layer specified colorspace does not match RE target display color gamut", v23, 2u);
          }
        }
      }
    }

    [*a2 setFenceEnabled:1];
    v8 = [location setDevice:*(*(a1 + 256) + 208)];
    v9 = *(a1 + 1688);
    if (!v9)
    {
      goto LABEL_20;
    }

    v10 = 0;
    v11 = *(a1 + 1704) + 12;
    while (*(v11 - 12))
    {
      ++v10;
      v11 += 32;
      if (v9 == v10)
      {
        goto LABEL_20;
      }
    }

    if (v10 >= v9)
    {
LABEL_20:
      v15 = *(a1 + 1680);
      if (v9 >= v15)
      {
        v16 = v9 + 1;
        if (v15 < v9 + 1)
        {
          if (*(a1 + 1672))
          {
            v17 = 2 * v15;
            if (!v15)
            {
              v17 = 8;
            }

            if (v17 <= v16)
            {
              v18 = v16;
            }

            else
            {
              v18 = v17;
            }

            re::DynamicArray<re::RenderLayer>::setCapacity((a1 + 1672), v18);
          }

          else
          {
            re::DynamicArray<re::RenderLayer>::setCapacity((a1 + 1672), v16);
            ++*(a1 + 1696);
          }
        }

        v9 = *(a1 + 1688);
      }

      v19 = *(a1 + 1704) + 32 * v9;
      v20 = location;
      location = 0;
      *v19 = v20;
      LODWORD(v20) = v26;
      *(v19 + 8) = v26;
      if (v20 == 1)
      {
        *(v19 + 12) = v27;
      }

      v21 = v28;
      *(v19 + 20) = v28;
      if (v21 == 1)
      {
        *(v19 + 24) = v29;
      }

      v10 = *(a1 + 1688);
      *(a1 + 1688) = v10 + 1;
      ++*(a1 + 1696);
      goto LABEL_45;
    }

    v12 = (v11 - 12);
    if ((v11 - 12) != &location)
    {
      v13 = location;
      location = 0;
      v14 = *v12;
      *v12 = v13;
    }

    if (*(v11 - 4))
    {
      if ((v26 & 1) == 0)
      {
        *(v11 - 4) = 0;
        goto LABEL_32;
      }
    }

    else
    {
      if ((v26 & 1) == 0)
      {
        goto LABEL_32;
      }

      *(v11 - 4) = 1;
    }

    *v11 = v27;
LABEL_32:
    if (*(v11 + 8))
    {
      if ((v28 & 1) == 0)
      {
        *(v11 + 8) = 0;
LABEL_45:

        return v10;
      }
    }

    else
    {
      if ((v28 & 1) == 0)
      {
        goto LABEL_45;
      }

      *(v11 + 8) = 1;
    }

    *(v11 + 12) = v29;
    goto LABEL_45;
  }

  return 0xFFFFFFFFLL;
}

void re::DrawingManager::unregisterRenderLayer(re::DrawingManager *this, unsigned int a2)
{
  if (*(this + 211) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v2 = *(this + 213) + 32 * a2;
  v3 = *v2;
  *v2 = 0;

  if (*(v2 + 8) == 1)
  {
    *(v2 + 8) = 0;
  }

  if (*(v2 + 20) == 1)
  {
    *(v2 + 20) = 0;
  }
}

float re::DrawingManager::layerAspect(re::DrawingManager *this, unsigned int a2, double a3)
{
  LODWORD(a3) = 1.0;
  if (a2 != -1 && *(this + 211) > a2)
  {
    v5 = *(this + 213) + 32 * a2;
    if (*v5)
    {
      if (*(v5 + 8) == 1)
      {
        *&a3 = *(v5 + 12) / *(v5 + 16);
      }

      else
      {
        [*v5 bounds];
        *&a3 = v6;
        v8 = v7;
        *&a3 = *&a3 / v8;
      }

      if ((LODWORD(a3) & 0x7FFFFFFFu) >= 0x7F800000)
      {
        *&a3 = 1.0;
      }
    }
  }

  return *&a3;
}

float re::DrawingManager::getLayerContentsScale(re::DrawingManager *this, unsigned int a2, double a3)
{
  LODWORD(a3) = 1.0;
  if (a2 != -1 && *(this + 211) > a2)
  {
    v5 = *(this + 213) + 32 * a2;
    if (*v5)
    {
      if (*(v5 + 20) == 1)
      {
        LODWORD(a3) = *(v5 + 24);
      }

      else
      {
        [*v5 contentsScale];
        *&a3 = a3;
      }
    }
  }

  return *&a3;
}

uint64_t re::DrawingManager::setLayerSize(uint64_t this, unsigned int a2, float a3, float a4)
{
  if (*(this + 1688) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v4 = *(this + 1704) + 32 * a2;
  v6 = *(v4 + 8);
  v5 = v4 + 8;
  if ((v6 & 1) == 0)
  {
    *v5 = 1;
  }

  *(v5 + 4) = LODWORD(a3) | (LODWORD(a4) << 32);
  return this;
}

float re::DrawingManager::getLayerSize(re::DrawingManager *this, unsigned int a2, double a3, double a4)
{
  LODWORD(a3) = 1.0;
  if (a2 != -1 && *(this + 211) > a2)
  {
    v6 = *(this + 213) + 32 * a2;
    LODWORD(a4) = 1.0;
    if (*v6)
    {
      if (*(v6 + 8) == 1)
      {
        LODWORD(a3) = *(v6 + 12);
      }

      else
      {
        [*v6 drawableSize];
        *&a3 = a3;
      }
    }
  }

  return *&a3;
}

void *re::DrawingManager::getLayersWithPendingSizeOrScaleChanges@<X0>(void *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
  v8 = 0;
  v3 = this[211];
  if (v3)
  {
    v4 = this;
    LODWORD(v5) = 0;
    v6 = 0;
    do
    {
      v7 = v4[213] + 32 * v6;
      if ((*(v7 + 8) & 1) != 0 || *(v7 + 20) == 1)
      {
        this = re::DynamicArray<int>::add(a2, &v8);
        LODWORD(v5) = v8;
        v3 = v4[211];
      }

      v5 = (v5 + 1);
      v8 = v5;
      v6 = v5;
    }

    while (v3 > v5);
  }

  return this;
}

uint64_t re::DrawingManager::getLayerPixelFormat(re::DrawingManager *this, unsigned int a2)
{
  if (a2 == -1)
  {
    return 0;
  }

  if (*(this + 211) <= a2)
  {
    return 0;
  }

  v2 = *(*(this + 213) + 32 * a2);
  if (!v2)
  {
    return 0;
  }

  else
  {
    return [v2 pixelFormat];
  }
}

uint64_t re::DrawingManager::presentDrawablesAndCommit(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v8 = a4[19];
  v9 = re::RenderFrameBox::get((a1 + 328), v8);
  v10 = re::RenderFrame::currentCommandBuffer(v9);
  if (a3 != 2)
  {
    v11 = *(a2 + 8);
    if (!v11)
    {
      goto LABEL_8;
    }

    for (i = 0; i < v11; ++i)
    {
      if (*(*(a2 + 16) + 8 * i))
      {
        [*(v10 + 2) presentDrawable:1.0 / *(a1 + 1792) afterMinimumDuration:?];
        v11 = *(a2 + 8);
      }
    }

    if (a4)
    {
LABEL_8:
      re::RenderFrameWorkload::presentDrawables(a4, v10 + 2);
    }
  }

  if (re::RenderManager::splitCommandBuffersForDebugging(*(a1 + 256)))
  {
    v13 = re::RenderFrameBox::get((a1 + 328), v8);
    QueuedCommandBuffer = re::RenderFrame::createQueuedCommandBuffer(v13);
    {
      re::ns::String::String(&re::DrawingManager::presentDrawablesAndCommit(re::FixedArray<re::mtl::Drawable> const&,re::WorkloadCommitMode,re::RenderFrameWorkload *)::$_0::operator() const(void)::s_ns_string, "Before CC");
    }

    v15 = re::DrawingManager::presentDrawablesAndCommit(re::FixedArray<re::mtl::Drawable> const&,re::WorkloadCommitMode,re::RenderFrameWorkload *)::$_0::operator() const(void)::s_ns_string;
    [*(QueuedCommandBuffer + 16) setLabel:v15];

    [*(QueuedCommandBuffer + 16) addCompletedHandler:&__block_literal_global_43_0];
  }

  v17 = *(v10 + 2);
  v16 = (v10 + 16);
  [v17 status];
  re::RenderFrameWorkload::beforeCommandBufferCommitted(a4, v16);
  re::RenderFrameWorkload::encoded(a4);
  [*v16 status];
  switch(a3)
  {
    case 2:
      re::DrawingManager::commitAndWaitUntilScheduled(a1, v8);
      v18 = *(a2 + 8);
      if (v18)
      {
        v19 = 0;
        for (j = 0; j < v18; ++j)
        {
          if (a4)
          {
            v21 = *(a2 + 16);
            if (*(v21 + v19))
            {
              re::DynamicArray<re::mtl::Drawable>::add((a4 + 38), (v21 + v19));
              v18 = *(a2 + 8);
            }
          }

          v19 += 8;
        }
      }

      break;
    case 1:
      re::DrawingManager::commitAndWait(a1, v8);
      break;
    case 0:
      re::DrawingManager::commit(a1, v8);
      break;
  }

  return re::DrawingManager::removeUnusedArgumentBuffers(a1, v8);
}

void re::DrawingManager::createRenderFrameWorkload(re::DrawingManager *this@<X0>, uint64_t *a2@<X8>)
{
  v4 = mach_absolute_time();
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v15, 5079, this);
  v5 = re::RenderFrameBox::get((this + 328), 0xFFFFFFFFFFFFFFFuLL);
  re::RenderFrame::createWorkload(v5, a2);
  *(*a2 + 24) = *(this + 785);
  v6 = *(this + 208);
  if (v6 && (v6 = re::ProfilerManager::isProcessorEnabled<re::ProfilerFrameStatisticsProcessor,void>(v6), (v6 & 1) != 0) || (v7 = *(this + 206)) != 0 && (*(v7 + 296) & 1) == 0)
  {
    isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v6);
    if (isStatisticCollectionEnabled)
    {
      v9 = re::profilerThreadContext(isStatisticCollectionEnabled);
      v10 = mach_absolute_time();
      v11 = *(v9 + 152);
      if (v11)
      {
        v12 = v11[744].u64[0];
        if (v12 >= v10 - v4)
        {
          v12 = v10 - v4;
        }

        v11[744].i64[0] = v12;
        v13 = v11[744].u64[1];
        if (v13 <= v10 - v4)
        {
          v13 = v10 - v4;
        }

        v11[744].i64[1] = v13;
        v14 = vdupq_n_s64(1uLL);
        v14.i64[0] = v10 - v4;
        v11[745] = vaddq_s64(v11[745], v14);
        *(v9 + 184) = 0;
      }
    }
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v15);
}

re *re::DrawingManager::commitEmptyWorkload(re::DrawingManager *this)
{
  if (*(this + 785) == 1)
  {
    v2 = *(this + 39);
    re::internal::AutoResetEvent::set((v2 + 320));
    re::RenderThread::waitForIdleInternal(v2);
  }

  if (atomic_load(this + 208))
  {
    v4 = -30;
    do
    {
      __ns.__rep_ = 3000000;
      std::this_thread::sleep_for (&__ns);
      v6 = atomic_load(this + 208);
      ++v4;
    }

    while (v6);
    if (!v4)
    {
      v7 = *re::graphicsLogObjects(v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "commitEmptyWorkload: failed to sync the callbacks", v14, 2u);
      }
    }
  }

  v8 = *(*(this + 32) + 144);
  v9 = *(v8 + 3);
  v10 = v9 & 0xFFFFFFFFFFFFFFFLL | (*(v8 + 2) << 60);
  FrameRefCount = re::FrameManager::getFrameRefCount(v8, v9 & 0xFFFFFFFFFFFFFFFLL);
  if (FrameRefCount)
  {
    atomic_fetch_add(FrameRefCount + 32, 1u);
  }

  re::FrameManager::destructForFrameOnRenderThread(v8, v10, 0);
  v12 = re::FrameManager::getFrameRefCount(v8, v9 & 0xFFFFFFFFFFFFFFFLL);
  if (v12)
  {
    *(v12 + 89) = 1;
  }

  result = re::FrameManager::getFrameRefCount(v8, v9 & 0xFFFFFFFFFFFFFFFLL);
  if (result)
  {
    atomic_fetch_add(result + 32, 0xFFFFFFFF);
  }

  return result;
}

void re::DrawingManager::waitUntilScheduled(re::DrawingManager *this)
{
  if (*(this + 785) == 1)
  {
    v2 = *(this + 39);
    re::internal::AutoResetEvent::set((v2 + 320));
    re::RenderThread::waitForIdleInternal(v2);
  }

  if (atomic_load(this + 209))
  {
    v4 = -30;
    do
    {
      __ns.__rep_ = 3000000;
      std::this_thread::sleep_for (&__ns);
      v6 = atomic_load(this + 209);
      ++v4;
    }

    while (v6);
    if (!v4)
    {
      v7 = *re::graphicsLogObjects(v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "waitUntilScheduled: failed to sync", v8, 2u);
      }
    }
  }
}

void re::DrawingManager::commitFrameInternal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) NULL workload passed to RenderManager::commitFrameInternal", "workload", "commitFrameInternal", 2458);
    _os_crash();
    __break(1u);
  }

  v5 = a2;
  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(a1);
  if (isStatisticCollectionEnabled && (v8 = re::profilerThreadContext(isStatisticCollectionEnabled), *(v8 + 9) == *(v8 + 10)))
  {
    v25 = re::profilerThreadContext(v8);
    re::ProfilerThreadContext::begin(v25, *(a1 + 1664), *(*(*(a1 + 256) + 144) + 24) & 0xFFFFFFFFFFFFFFFLL, 0);
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = mach_absolute_time();
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v47, 5081, a1);
  re::RenderGraphStats::registerNewFrame((a1 + 1624));
  rep = 0;
  v45 = 0.0;
  v46 = 0;
  if (*(a1 + 785) != 1)
  {
    operator new();
  }

  v11 = re::RenderFrameBox::get((a1 + 328), *(*(*(a1 + 256) + 144) + 24) & 0xFFFFFFFFFFFFFFFLL | (*(*(*(a1 + 256) + 144) + 16) << 60));
  re::DynamicArray<re::Pair<NS::SharedPtr<MTL::Event>,unsigned long long,true>>::operator=((v11 + 417), a1 + 696);
  re::DynamicArray<re::RenderFrameEvent>::clear(a1 + 696);
  if (*(a1 + 624))
  {
    v12 = a1 + 632;
  }

  else
  {
    v12 = *(a1 + 640);
  }

  v13 = *(a1 + 616);
  v48 = v12;
  v49 = v13;
  re::DynamicOverflowArray<re::RenderFrameDelta *,5ul>::operator=((v11 + 409), &v48);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 608);
  v14 = *(a1 + 1688);
  v48 = *(a1 + 1704);
  v49 = v14;
  re::FixedArray<re::RenderLayer>::operator=((v11 + 552), &v48);
  re::TextureManager::synchronizeTextures(*(*(a1 + 256) + 56));
  v15 = *(a1 + 256);
  v16 = *(v15 + 24);
  v17 = re::RenderFrameBox::get((a1 + 328), *(*(v15 + 144) + 24) & 0xFFFFFFFFFFFFFFFLL | (*(*(v15 + 144) + 16) << 60));
  v43 = *(re::RenderFrame::currentCommandBuffer(v17) + 2);
  re::MaterialManager::resolveArgumentBuffers(v16, &v43);

  v18 = *(a1 + 1688);
  if (v18)
  {
    v19 = (*(a1 + 1704) + 20);
    v20 = 32 * v18;
    do
    {
      if (*(v19 - 20))
      {
        if (*(v19 - 12) == 1)
        {
          *(v19 - 12) = 0;
        }

        if (*v19 == 1)
        {
          *v19 = 0;
        }
      }

      v19 += 32;
      v20 -= 32;
    }

    while (v20);
  }

  if ((re::DrawingManager::shouldRenderProfilerNode(a1) & 1) != 0 && *(*(a1 + 1648) + 16) == 1)
  {
    re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(&v48);
    re::RenderFrame::emitGraph(v11, "ProfilerOverlay", "RenderFrame");
    v42 = 65290051;
    re::RenderFrame::specifyScopeLane(v11, &v42, (*(a1 + 1648) + 12), "ProfilerOverlay");
    re::ProfilerTimeGuard<(re::ProfilerStatistic)23>::end(&v48);
  }

  v21 = 1;
  *(*(a1 + 1648) + 16) = 1;
  re::RenderFrame::buildOrRetainCachedGraph(v11, (a1 + 1624));
  re::RenderGraphManager::deleteStaleGraphs(*(a1 + 296), *(*(*(a1 + 256) + 144) + 32) & 0xFFFFFFFFFFFFFFFLL | (*(*(*(a1 + 256) + 144) + 16) << 60), v11[49]);
  re::RenderFrame::identifyUsedRenderLayers(v11);
  if (!v11[54])
  {
    v21 = *(a3 + 320) != 0;
  }

  *(a3 + 296) = v21;
  v22.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  rep = v22.__d_.__rep_;
  v23 = re::ProfilerConfig::isStatisticCollectionEnabled(v22.__d_.__rep_);
  if (v23)
  {
    v24 = re::profilerThreadContext(v23);
    if (*(v24 + 152))
    {
      v3 = mach_absolute_time();
    }

    re::RenderThread::commitFrame(*(a1 + 312), v5, a3);
    if (*(v24 + 152))
    {
      v26 = mach_absolute_time();
      v27 = *(v24 + 152);
      if (v27)
      {
        v28 = v27[88].u64[0];
        if (v28 >= v26 - v3)
        {
          v28 = v26 - v3;
        }

        v27[88].i64[0] = v28;
        v29 = v27[88].u64[1];
        if (v29 <= v26 - v3)
        {
          v29 = v26 - v3;
        }

        v27[88].i64[1] = v29;
        v30 = vdupq_n_s64(1uLL);
        v30.i64[0] = v26 - v3;
        v27[89] = vaddq_s64(v27[89], v30);
        *(v24 + 184) = 0;
      }
    }
  }

  else
  {
    re::RenderThread::commitFrame(*(a1 + 312), v5, a3);
  }

  v45 = (std::chrono::steady_clock::now().__d_.__rep_ - v22.__d_.__rep_) / 1000000000.0 + 0.0;
  v46 = 0;
  *(a1 + 864) = v45 + (std::chrono::steady_clock::now().__d_.__rep_ - v22.__d_.__rep_) / 1000000000.0 * 0.0;
  v31 = *(a1 + 1664);
  if (v31 && (v31 = re::ProfilerManager::isProcessorEnabled<re::ProfilerFrameStatisticsProcessor,void>(v31), (v31 & 1) != 0) || (v32 = *(a1 + 1648)) != 0 && (*(v32 + 296) & 1) == 0)
  {
    v31 = re::ProfilerConfig::isStatisticCollectionEnabled(v31);
    if (v31)
    {
      v33 = re::profilerThreadContext(v31);
      v31 = mach_absolute_time();
      v34 = *(v33 + 152);
      if (v34)
      {
        v35 = v34[736].u64[0];
        if (v35 >= v31 - v10)
        {
          v35 = v31 - v10;
        }

        v34[736].i64[0] = v35;
        v36 = v34[736].u64[1];
        if (v36 <= v31 - v10)
        {
          v36 = v31 - v10;
        }

        v34[736].i64[1] = v36;
        v37 = vdupq_n_s64(1uLL);
        v37.i64[0] = v31 - v10;
        v34[737] = vaddq_s64(v34[737], v37);
        *(v33 + 184) = 0;
      }
    }
  }

  if (v9)
  {
    v38 = re::ProfilerConfig::isStatisticCollectionEnabled(v31);
    if (v38)
    {
      v39 = re::profilerThreadContext(v38);
      re::ProfilerThreadContext::end(v39);
    }
  }

  v40 = *(*(a1 + 256) + 144);
  v41 = *(v40 + 6);
  v40 = (v40 + 48);
  re::updateFrameCountCommon(v40, ((v41 & 0xFFFFFFFFFFFFFFFLL) + 1), "RenderFrameCount", 0);
  *(v40 + 1) = *(v40 - 3) & 0xFFFFFFFFFFFFFFFLL;
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v47);
}

void re::DrawingManager::addFrameBeganSignal(uint64_t a1, id *a2, void *a3)
{
  v5[0] = *a2;
  v5[1] = a3;
  re::DynamicArray<re::ecs2::HandleTable::HandleSlot>::add((a1 + 696), v5);
  if (v5[0])
  {
  }
}

BOOL re::DrawingManager::didExceedFlywheelThresholdFrameCount(re::DrawingManager *this)
{
  v1 = &qword_1EE1C5000;
  {
    v7 = this;
    v1 = &qword_1EE1C5000;
    v5 = v3;
    this = v7;
    if (v5)
    {
      re::Defaults::uint64Value("flywheelFrameCountThreshold", v4, v8);
      v6 = v9;
      if (!v8[0])
      {
        v6 = 6;
      }

      re::DrawingManager::didExceedFlywheelThresholdFrameCount(void)const::kFlywheelFrameCountThreshold = v6;
      v1 = &qword_1EE1C5000;
      this = v7;
    }
  }

  return (*(*(*(this + 32) + 144) + 24) & 0xFFFFFFFFFFFFFFFLL) - (*(*(*(this + 32) + 144) + 56) & 0xFFFFFFFFFFFFFFFuLL) > v1[228];
}

void re::internal::Callable<re::DrawingManager::init(re::RenderManager *,re::ProfilerManager *,re::ColorManager *,re::MeshManager *,BOOL)::$_0,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (*(v2 + 785) == 1)
  {
    v3 = *(v2 + 312);
    re::internal::AutoResetEvent::set((v3 + 320));

    re::RenderThread::waitForIdleInternal(v3);
  }
}

void *re::internal::Callable<re::DrawingManager::init(re::RenderManager *,re::ProfilerManager *,re::ColorManager *,re::MeshManager *,BOOL)::$_0,void ()(void)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D06C08;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::DrawingManager::init(re::RenderManager *,re::ProfilerManager *,re::ColorManager *,re::MeshManager *,BOOL)::$_0,void ()(void)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D06C08;
  a2[1] = v2;
  return a2;
}

uint64_t re::internal::Callable<re::DrawingManager::init(re::RenderManager *,re::ProfilerManager *,re::ColorManager *,re::MeshManager *,BOOL)::$_1,void ()(re::FrameCount)>::operator()(uint64_t result, void *a2)
{
  v2 = *(result + 8) + 16 * (*a2 & 7);
  if (((*(v2 + 336) ^ *a2) & 0xFFFFFFFFFFFFFFFLL) == 0)
  {
    result = *(v2 + 328);
    if (result)
    {
      return re::RenderFrame::onFrameComplete(result);
    }
  }

  return result;
}

void *re::internal::Callable<re::DrawingManager::init(re::RenderManager *,re::ProfilerManager *,re::ColorManager *,re::MeshManager *,BOOL)::$_1,void ()(re::FrameCount)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D06C60;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::DrawingManager::init(re::RenderManager *,re::ProfilerManager *,re::ColorManager *,re::MeshManager *,BOOL)::$_1,void ()(re::FrameCount)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D06C60;
  a2[1] = v2;
  return a2;
}

uint64_t (***re::FunctionBase<24ul,void ()(re::FrameCount)>::destroyCallable(uint64_t a1))(void)
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

void re::internal::Callable<re::DrawingManager::init(re::RenderManager *,re::ProfilerManager *,re::ColorManager *,re::MeshManager *,BOOL)::$_2,void ()(re::FrameCount)>::operator()(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  re::PerFrameAllocatorGPUManager::freeAllocatorsForFrame(*(v3 + 320), *a2);
  v4 = *(*(v3 + 296) + 296);

  re::RenderGraphPersistentResourceManager::pruneExpiredData(v4, v2);
}

void *re::internal::Callable<re::DrawingManager::init(re::RenderManager *,re::ProfilerManager *,re::ColorManager *,re::MeshManager *,BOOL)::$_2,void ()(re::FrameCount)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D06CC8;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::DrawingManager::init(re::RenderManager *,re::ProfilerManager *,re::ColorManager *,re::MeshManager *,BOOL)::$_2,void ()(re::FrameCount)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D06CC8;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::DrawingManager::init(re::RenderManager *,re::ProfilerManager *,re::ColorManager *,re::MeshManager *,BOOL)::$_3,void ()(void)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D06D20;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::DrawingManager::init(re::RenderManager *,re::ProfilerManager *,re::ColorManager *,re::MeshManager *,BOOL)::$_3,void ()(void)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D06D20;
  a2[1] = v2;
  return a2;
}

void re::internal::Callable<re::DrawingManager::init(re::RenderManager *,re::ProfilerManager *,re::ColorManager *,re::MeshManager *,BOOL)::$_4,void ()(void)>::operator()(re *a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  if (*(v2 + 786) == 1)
  {
    a1 = [*(v2 + 280) dispatchAvailableCompletionNotifications];
  }

  v3 = *(v2 + 785);
  if (*(v2 + 784) != v3)
  {
    if ((v3 & 1) != 0 || !*(v2 + 784))
    {
      v6 = *(v2 + 312);
      if (!v6)
      {
        re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) RenderThread was disabled or not initialized", "m_renderThread != nullptr", "operator()", 262);
        _os_crash();
        __break(1u);
        return;
      }

      re::RenderThread::deinit(v6);
      re::internal::destroyPersistent<re::RenderThread>(*(v2 + 312));
      *(v2 + 312) = 0;
    }

    else
    {
      v4 = re::globalAllocators(a1);
      v5 = (*(*v4[2] + 32))(v4[2], 440, 8);
      *(v5 + 24) = 0;
      *(v5 + 40) = 0;
      *(v5 + 48) = 0;
      *(v5 + 32) = 0;
      *(v5 + 56) = 0;
      *(v5 + 104) = 0;
      *(v5 + 112) = 0;
      *(v5 + 120) = 0;
      *(v5 + 152) = 0;
      *(v5 + 64) = 0u;
      *(v5 + 80) = 0u;
      *(v5 + 96) = 0;
      *v5 = 0;
      *(v5 + 8) = 0;
      *(v5 + 15) = 0;
      *(v5 + 208) = 850045863;
      *(v5 + 216) = 0u;
      *(v5 + 232) = 0u;
      *(v5 + 248) = 0u;
      *(v5 + 264) = 0;
      *(v5 + 272) = 1018212795;
      *(v5 + 305) = 0u;
      *(v5 + 280) = 0u;
      *(v5 + 296) = 0u;
      *(v5 + 328) = 850045863;
      *(v5 + 352) = 0u;
      *(v5 + 368) = 0u;
      *(v5 + 336) = 0u;
      *(v5 + 384) = 0;
      *(v5 + 392) = 1018212795;
      *(v5 + 432) = 0;
      *(v5 + 400) = 0u;
      *(v5 + 416) = 0u;
      *(v2 + 312) = v5;
      re::RenderThread::init(v5, *(v2 + 256));
    }

    *(v2 + 785) = *(v2 + 784);
  }

  v7 = *(*(v2 + 256) + 24);
  if (v7)
  {

    re::MaterialManager::startFrame(v7);
  }
}

void *re::internal::Callable<re::DrawingManager::init(re::RenderManager *,re::ProfilerManager *,re::ColorManager *,re::MeshManager *,BOOL)::$_4,void ()(void)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D06D78;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::DrawingManager::init(re::RenderManager *,re::ProfilerManager *,re::ColorManager *,re::MeshManager *,BOOL)::$_4,void ()(void)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D06D78;
  a2[1] = v2;
  return a2;
}

float re::internal::Callable<re::DrawingManager::init(re::RenderManager *,re::ProfilerManager *,re::ColorManager *,re::MeshManager *,BOOL)::$_5,void ()(re::GpuTimingData const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (*(*(v2 + 256) + 317) == 1)
  {
    v3 = *(v2 + 1648);
    if (v3)
    {
      result = *(a2 + 8);
      *(v3 + 232) = result;
    }
  }

  return result;
}

void *re::internal::Callable<re::DrawingManager::init(re::RenderManager *,re::ProfilerManager *,re::ColorManager *,re::MeshManager *,BOOL)::$_5,void ()(re::GpuTimingData const&)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D06DD0;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::DrawingManager::init(re::RenderManager *,re::ProfilerManager *,re::ColorManager *,re::MeshManager *,BOOL)::$_5,void ()(re::GpuTimingData const&)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D06DD0;
  a2[1] = v2;
  return a2;
}

uint64_t (***re::internal::Callable<re::DrawingManager::trackCommandBufferForFrameCompletion(re::mtl::CommandBuffer &,re::FrameCount)::$_0,void ()(re::mtl::CommandBuffer const&)>::operator()(re *a1))(void)
{
  v6[5] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 1);
  v1 = *(a1 + 2);
  v3 = *(*(v2 + 256) + 144);
  v4 = re::globalAllocators(a1)[2];
  v6[0] = &unk_1F5D06EA0;
  v6[1] = v2;
  v6[3] = v4;
  v6[4] = v6;
  re::FrameManager::tryExecuteCallbackWithAllocatedFrame(v3, v1, v6);
  return re::FunctionBase<24ul,void ()(unsigned long long)>::destroyCallable(v6);
}

uint64_t re::internal::Callable<re::DrawingManager::trackCommandBufferForFrameCompletion(re::mtl::CommandBuffer &,re::FrameCount)::$_0,void ()(re::mtl::CommandBuffer const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D06E48;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::DrawingManager::trackCommandBufferForFrameCompletion(re::mtl::CommandBuffer &,re::FrameCount)::$_0,void ()(re::mtl::CommandBuffer const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D06E48;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

re *re::internal::Callable<re::DrawingManager::trackCommandBufferForFrameCompletion(re::mtl::CommandBuffer &,re::FrameCount)::$_0::operator() const(re::mtl::CommandBuffer const&)::{lambda(unsigned long long)#1},void ()(unsigned long long)>::operator()(uint64_t a1, uint64_t *a2)
{
  result = re::FrameManager::getFrameRefCount(*(*(*(a1 + 8) + 256) + 144), *a2);
  if (result)
  {
    atomic_fetch_add(result + 32, 0xFFFFFFFF);
  }

  return result;
}

void *re::internal::Callable<re::DrawingManager::trackCommandBufferForFrameCompletion(re::mtl::CommandBuffer &,re::FrameCount)::$_0::operator() const(re::mtl::CommandBuffer const&)::{lambda(unsigned long long)#1},void ()(unsigned long long)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D06EA0;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::DrawingManager::trackCommandBufferForFrameCompletion(re::mtl::CommandBuffer &,re::FrameCount)::$_0::operator() const(re::mtl::CommandBuffer const&)::{lambda(unsigned long long)#1},void ()(unsigned long long)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D06EA0;
  a2[1] = v2;
  return a2;
}

void re::internal::Callable<re::DrawingManager::executeFrameInternal(re::RenderFrameWorkload *)::$_0,void ()(re::mtl::CommandBuffer const&)>::operator()(uint64_t a1, id *a2)
{
  v4 = *a2;
  v3 = *(a1 + 8);
  re::RenderFrameWorkload::scheduled(*(a1 + 16));
  atomic_fetch_add((v3 + 836), 0xFFFFFFFF);
}

uint64_t re::internal::Callable<re::DrawingManager::executeFrameInternal(re::RenderFrameWorkload *)::$_0,void ()(re::mtl::CommandBuffer const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D06EF8;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::DrawingManager::executeFrameInternal(re::RenderFrameWorkload *)::$_0,void ()(re::mtl::CommandBuffer const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D06EF8;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

void re::internal::Callable<re::DrawingManager::executeFrameInternal(re::RenderFrameWorkload *)::$_1,void ()(re::mtl::CommandBuffer const&)>::operator()(uint64_t a1, id *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  re::RenderFrameWorkload::completed(*(a1 + 32));
  v5 = [*a2 status];
  if (v5 == 5)
  {
    re::mtl::CommandBuffer::error(a2, &v19);
    v7 = *re::graphicsLogObjects(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v17 = [*a2 status];
      v18 = v19;
      *buf = 134218242;
      *&buf[4] = v17;
      *&buf[12] = 2112;
      *&buf[14] = v18;
      _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Command buffer did not complete (status = %zu, error = %@)", buf, 0x16u);
    }
  }

  v8 = *(a1 + 32);
  v9 = *(*(v4 + 256) + 144);
  v10 = *(a1 + 16);
  v11 = re::globalAllocators(v5)[2];
  *&buf[16] = v4;
  v21 = v11;
  *buf = &unk_1F5D06FA8;
  *&buf[8] = v8;
  v22 = buf;
  re::FrameManager::tryExecuteCallbackWithAllocatedFrame(v9, v10, buf);
  v12 = re::FunctionBase<24ul,void ()(unsigned long long)>::destroyCallable(buf);
  v13 = *(a1 + 24);
  if (*(a1 + 16) != v13)
  {
    v14 = *(*(v4 + 256) + 144);
    v15 = re::globalAllocators(v12)[2];
    *&buf[16] = v4;
    v21 = v15;
    *buf = &unk_1F5D06FA8;
    *&buf[8] = v8;
    v22 = buf;
    re::FrameManager::tryExecuteCallbackWithAllocatedFrame(v14, v13, buf);
    re::FunctionBase<24ul,void ()(unsigned long long)>::destroyCallable(buf);
  }

  v16 = *(a1 + 32);
  if (*(v16 + 24) == 1)
  {
    re::RenderThread::workloadGPUCompleted(*(v4 + 312));
    v16 = *(a1 + 32);
  }

  atomic_fetch_add((v4 + 832), 0xFFFFFFFF);
  if ((*(v4 + 786) & 1) == 0)
  {
    dispatch_semaphore_signal(*(v4 + 792));
  }
}

uint64_t re::internal::Callable<re::DrawingManager::executeFrameInternal(re::RenderFrameWorkload *)::$_1,void ()(re::mtl::CommandBuffer const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D06F50;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::Callable<re::DrawingManager::executeFrameInternal(re::RenderFrameWorkload *)::$_1,void ()(re::mtl::CommandBuffer const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D06F50;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

re *re::internal::Callable<re::DrawingManager::executeFrameInternal(re::RenderFrameWorkload *)::$_1::operator() const(re::mtl::CommandBuffer const&)::{lambda(unsigned long long)#1},void ()(unsigned long long)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 16);
  v4 = v3 + 16 * (*(*(a1 + 8) + 152) & 7);
  if (((*(v4 + 336) ^ *(*(a1 + 8) + 152)) & 0xFFFFFFFFFFFFFFFLL) == 0)
  {
    v5 = *(v4 + 328);
    if (v5)
    {
      re::RenderFrame::onCommandBuffersComplete(v5);
    }
  }

  result = re::FrameManager::getFrameRefCount(*(*(v3 + 256) + 144), v2);
  if (result)
  {
    atomic_fetch_add(result + 32, 0xFFFFFFFF);
  }

  return result;
}

uint64_t re::internal::Callable<re::DrawingManager::executeFrameInternal(re::RenderFrameWorkload *)::$_1::operator() const(re::mtl::CommandBuffer const&)::{lambda(unsigned long long)#1},void ()(unsigned long long)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D06FA8;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::DrawingManager::executeFrameInternal(re::RenderFrameWorkload *)::$_1::operator() const(re::mtl::CommandBuffer const&)::{lambda(unsigned long long)#1},void ()(unsigned long long)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D06FA8;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 64);
  if (v2)
  {
    if (v2 == a2 + 40)
    {
      *(result + 64) = result + 40;
      return (*(**(a2 + 64) + 24))(*(a2 + 64), result + 40);
    }

    else
    {
      *(result + 64) = v2;
      *(a2 + 64) = 0;
    }
  }

  else
  {
    *(result + 64) = 0;
  }

  return result;
}

uint64_t ___ZN3MTL13CommandBuffer19addCompletedHandlerERKNSt3__18functionIFvPS0_EEE_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 64);
  v4 = a2;
  if (!v2)
  {
    std::__throw_bad_function_call[abi:nn200100]();
    JUMPOUT(0x1E28BDCA8);
  }

  return (*(*v2 + 48))(v2, &v4);
}

void _ZNK2re8internal8CallableIZZNS_14DrawingManager20executeFrameInternalEPNS_19RenderFrameWorkloadEEUb_E4__10FvyEJEEclEOy(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8) + 16 * (*a2 & 7);
  if (((*(v2 + 336) ^ *a2) & 0xFFFFFFFFFFFFFFFLL) == 0)
  {
    v3 = *(v2 + 328);
    if (v3)
    {
      re::RenderFrame::onCommandBuffersComplete(v3);
    }
  }
}

void *_ZNK2re8internal8CallableIZZNS_14DrawingManager20executeFrameInternalEPNS_19RenderFrameWorkloadEEUb_E4__10FvyEJEE9cloneIntoEPv(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D07000;
  a2[1] = v2;
  return a2;
}

void *_ZN2re8internal8CallableIZZNS_14DrawingManager20executeFrameInternalEPNS_19RenderFrameWorkloadEEUb_E4__10FvyEJEE8moveIntoEPv(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D07000;
  a2[1] = v2;
  return a2;
}

uint64_t std::__function::__value_func<void ()(MTL::CommandBuffer *)>::~__value_func[abi:nn200100](uint64_t a1)
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

void re::internal::Callable<re::DrawingManager::activatePerfSampling(void)::$_0,void ()(re::PerfMTLCounterSamplerResult)>::operator()(re::ProfilerConfig *a1, unint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *(a1 + 1);
  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(a1);
  if (isStatisticCollectionEnabled)
  {
    v8 = re::profilerThreadContext(isStatisticCollectionEnabled);
    re::ProfilerThreadContext::begin(v8, *(v6 + 1664), v4, 0);
  }

  v9 = re::ProfilerConfig::isStatisticCollectionEnabled(isStatisticCollectionEnabled);
  if (v9)
  {
    v9 = re::profilerThreadContext(v9);
    v10 = *(v9 + 152);
    if (v10)
    {
      v11 = (v3 * 1000000.0);
      v12 = v10[240].u64[0];
      if (v12 >= v11)
      {
        v12 = (v3 * 1000000.0);
      }

      v10[240].i64[0] = v12;
      v13 = v10[240].u64[1];
      if (v13 <= v11)
      {
        v13 = (v3 * 1000000.0);
      }

      v10[240].i64[1] = v13;
      v14 = vdupq_n_s64(1uLL);
      v14.i64[0] = (v3 * 1000000.0);
      v10[241] = vaddq_s64(v10[241], v14);
      *(v9 + 184) = 0;
    }
  }

  v15 = re::ProfilerConfig::isStatisticCollectionEnabled(v9);
  if (v15)
  {
    v15 = re::profilerThreadContext(v15);
    v16 = *(v15 + 152);
    if (v16)
    {
      v17 = (v2 * 1000000.0);
      v18 = v16[248].u64[0];
      if (v18 >= v17)
      {
        v18 = (v2 * 1000000.0);
      }

      v16[248].i64[0] = v18;
      v19 = v16[248].u64[1];
      if (v19 <= v17)
      {
        v19 = (v2 * 1000000.0);
      }

      v16[248].i64[1] = v19;
      v20 = vdupq_n_s64(1uLL);
      v20.i64[0] = (v2 * 1000000.0);
      v16[249] = vaddq_s64(v16[249], v20);
      *(v15 + 184) = 0;
    }
  }

  v21 = re::ProfilerConfig::isStatisticCollectionEnabled(v15);
  if (v21)
  {
    v21 = re::profilerThreadContext(v21);
    v22 = *(v21 + 152);
    if (v22)
    {
      v23 = (v5 * 1000000.0);
      v24 = v22[256].u64[0];
      if (v24 >= v23)
      {
        v24 = (v5 * 1000000.0);
      }

      v22[256].i64[0] = v24;
      v25 = v22[256].u64[1];
      if (v25 <= v23)
      {
        v25 = (v5 * 1000000.0);
      }

      v22[256].i64[1] = v25;
      v26 = vdupq_n_s64(1uLL);
      v26.i64[0] = (v5 * 1000000.0);
      v22[257] = vaddq_s64(v22[257], v26);
      *(v21 + 184) = 0;
    }
  }

  v27 = re::ProfilerConfig::isStatisticCollectionEnabled(v21);
  if (v27)
  {
    v28 = re::profilerThreadContext(v27);

    re::ProfilerThreadContext::end(v28);
  }
}

void *re::internal::Callable<re::DrawingManager::activatePerfSampling(void)::$_0,void ()(re::PerfMTLCounterSamplerResult)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D07058;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::DrawingManager::activatePerfSampling(void)::$_0,void ()(re::PerfMTLCounterSamplerResult)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D07058;
  a2[1] = v2;
  return a2;
}

void re::internal::Callable<re::DrawingManager::activatePerfSampling(void)::$_1,void ()(re::PerfMTLCounterSamplerResult)>::operator()(re::ProfilerConfig *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  v4 = *(a1 + 1);
  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(a1);
  if (isStatisticCollectionEnabled)
  {
    v6 = re::profilerThreadContext(isStatisticCollectionEnabled);
    re::ProfilerThreadContext::begin(v6, *(v4 + 1664), v2, 0);
  }

  v7 = re::ProfilerConfig::isStatisticCollectionEnabled(isStatisticCollectionEnabled);
  if (v7)
  {
    v7 = re::profilerThreadContext(v7);
    v8 = *(v7 + 152);
    if (v8)
    {
      v9 = (v3 * 1000000.0);
      v10 = v8[264].u64[0];
      if (v10 >= v9)
      {
        v10 = (v3 * 1000000.0);
      }

      v8[264].i64[0] = v10;
      v11 = v8[264].u64[1];
      if (v11 <= v9)
      {
        v11 = (v3 * 1000000.0);
      }

      v8[264].i64[1] = v11;
      v12 = vdupq_n_s64(1uLL);
      v12.i64[0] = (v3 * 1000000.0);
      v8[265] = vaddq_s64(v8[265], v12);
      *(v7 + 184) = 0;
    }
  }

  v13 = re::ProfilerConfig::isStatisticCollectionEnabled(v7);
  if (v13)
  {
    v14 = re::profilerThreadContext(v13);

    re::ProfilerThreadContext::end(v14);
  }
}

void *re::internal::Callable<re::DrawingManager::activatePerfSampling(void)::$_1,void ()(re::PerfMTLCounterSamplerResult)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D070C0;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::DrawingManager::activatePerfSampling(void)::$_1,void ()(re::PerfMTLCounterSamplerResult)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D070C0;
  a2[1] = v2;
  return a2;
}

void *re::internal::MoveOnlyCallable<re::DrawingManager::reloadLibrary(char const*,char const*)::$_0,void ()(void)>::~MoveOnlyCallable(void *a1)
{
  *a1 = &unk_1F5D07118;
  v2 = (a1 + 2);
  re::DynamicString::deinit((a1 + 6));
  re::DynamicString::deinit(v2);
  return a1;
}

void re::internal::MoveOnlyCallable<re::DrawingManager::reloadLibrary(char const*,char const*)::$_0,void ()(void)>::~MoveOnlyCallable(void *a1)
{
  *a1 = &unk_1F5D07118;
  v1 = (a1 + 2);
  re::DynamicString::deinit((a1 + 6));
  re::DynamicString::deinit(v1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::MoveOnlyCallable<re::DrawingManager::reloadLibrary(char const*,char const*)::$_0,void ()(void)>::moveInto(void *a1, uint64_t a2)
{
  v2 = a1[1];
  *a2 = &unk_1F5D07118;
  *(a2 + 8) = v2;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 40) = a1[5];
  v3 = a1[3];
  *(a2 + 16) = a1[2];
  a1[2] = 0;
  v4 = a1[4];
  a1[5] = 0;
  v6 = *(a2 + 24);
  v5 = *(a2 + 32);
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  a1[3] = v6;
  a1[4] = v5;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 72) = a1[9];
  v7 = a1[7];
  *(a2 + 48) = a1[6];
  a1[6] = 0;
  v8 = a1[8];
  a1[9] = 0;
  v10 = *(a2 + 56);
  v9 = *(a2 + 64);
  *(a2 + 56) = v7;
  *(a2 + 64) = v8;
  a1[7] = v10;
  a1[8] = v9;
  return a2;
}

void *re::internal::Callable<re::RenderFrameBox::get(re::FrameCount)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D07168;
  return result;
}

void *re::internal::Callable<re::RenderFrameBox::get(re::FrameCount)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D07168;
  return result;
}

void re::internal::Callable<re::DrawingManager::sendGPUStatsToFrameProfiler(void)::$_0,void ()(re::GpuTimingData const&)>::operator()(re::ProfilerConfig *a1, uint64_t a2)
{
  v3 = *(a1 + 1);
  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(a1);
  if (isStatisticCollectionEnabled)
  {
    v5 = re::profilerThreadContext(isStatisticCollectionEnabled);
    re::ProfilerThreadContext::begin(v5, *(v3 + 1664), *a2, 0);
  }

  v6 = re::ProfilerConfig::isStatisticCollectionEnabled(isStatisticCollectionEnabled);
  if (v6)
  {
    v6 = re::profilerThreadContext(v6);
    v7 = *(v6 + 152);
    if (v7)
    {
      v8 = (*(a2 + 8) * 1000000.0);
      v9 = v7[200].u64[0];
      if (v9 >= v8)
      {
        v9 = (*(a2 + 8) * 1000000.0);
      }

      v7[200].i64[0] = v9;
      v10 = v7[200].u64[1];
      if (v10 <= v8)
      {
        v10 = v8;
      }

      v7[200].i64[1] = v10;
      v11 = vdupq_n_s64(1uLL);
      v11.i64[0] = v8;
      v7[201] = vaddq_s64(v7[201], v11);
      *(v6 + 184) = 0;
    }
  }

  v12 = re::ProfilerConfig::isStatisticCollectionEnabled(v6);
  if (v12)
  {
    v13 = re::profilerThreadContext(v12);

    re::ProfilerThreadContext::end(v13);
  }
}

void *re::internal::Callable<re::DrawingManager::sendGPUStatsToFrameProfiler(void)::$_0,void ()(re::GpuTimingData const&)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D071C0;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::DrawingManager::sendGPUStatsToFrameProfiler(void)::$_0,void ()(re::GpuTimingData const&)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D071C0;
  a2[1] = v2;
  return a2;
}

uint64_t re::ProfilerTimeGuard<(re::ProfilerStatistic)12>::end(uint64_t result)
{
  if (*result && *(*result + 152))
  {
    v1 = result;
    result = mach_absolute_time();
    v2 = *v1;
    v3 = *(*v1 + 152);
    if (v3)
    {
      v4 = result - v1[1];
      v5 = v3[104].u64[0];
      if (v5 >= v4)
      {
        v5 = result - v1[1];
      }

      v3[104].i64[0] = v5;
      v6 = v3[104].u64[1];
      if (v6 <= v4)
      {
        v6 = v4;
      }

      v3[104].i64[1] = v6;
      v7 = vdupq_n_s64(1uLL);
      v7.i64[0] = v4;
      v3[105] = vaddq_s64(v3[105], v7);
      *(v2 + 184) = 0;
    }

    *v1 = 0;
  }

  return result;
}

void *re::DynamicArray<re::CommandBuffer>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::CommandBuffer>::setCapacity(v5, a2);
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
              goto LABEL_16;
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
        v10 = v8 + 24 * v9;
        v11 = v7;
        do
        {
          *v11 = *v8;
          v12 = *(v8 + 16);
          *(v8 + 16) = 0;
          v11[2] = v12;

          v8 += 24;
          v11 += 3;
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

void re::DynamicOverflowArray<re::CommandBuffer,8ul>::copy(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 8);
    if (v4 == -1)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    if (v4 >= a3)
    {
      if (*(a1 + 16))
      {
        v11 = a1 + 24;
      }

      else
      {
        v11 = *(a1 + 32);
      }

      v18 = (v11 + 16);
      v19 = 24 * a3;
      v20 = (a2 + 16);
      do
      {
        *(v18 - 1) = *(v20 - 1);
        v18 = re::ObjCObject::operator=(v18, v20) + 3;
        v20 += 3;
        v19 -= 24;
      }

      while (v19);
LABEL_22:
      *(a1 + 16) += 2;
      return;
    }

    re::DynamicOverflowArray<re::CommandBuffer,8ul>::growCapacity(a1, a3);
    v7 = *(a1 + 8);
    v8 = *(a1 + 16);
    if (v8)
    {
      v9 = a1 + 24;
      if (!v7)
      {
LABEL_6:
        if ((v8 & 1) == 0)
        {
LABEL_7:
          v10 = *(a1 + 32);
LABEL_15:
          if (v7 != a3)
          {
            v15 = a2 + 24 * v7;
            v16 = a2 + 24 * a3;
            v17 = v10 + 24 * *(a1 + 8);
            do
            {
              *v17 = *v15;
              *(v17 + 16) = *(v15 + 16);
              v15 += 24;
              v17 += 24;
            }

            while (v15 != v16);
          }

          *(a1 + 8) = a3;
          goto LABEL_22;
        }

LABEL_14:
        v10 = a1 + 24;
        goto LABEL_15;
      }
    }

    else
    {
      v9 = *(a1 + 32);
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    v12 = (v9 + 16);
    v13 = 24 * v7;
    v14 = (a2 + 16);
    do
    {
      *(v12 - 1) = *(v14 - 1);
      v12 = re::ObjCObject::operator=(v12, v14) + 3;
      v14 += 3;
      v13 -= 24;
    }

    while (v13);
    if ((*(a1 + 16) & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }
}

void re::DrawingManager::ExternalCommandBufferHandlerContext::~ExternalCommandBufferHandlerContext(re::DrawingManager::ExternalCommandBufferHandlerContext *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void *std::__function::__func<re::DrawingManager::executeFrameInternal(re::RenderFrameWorkload *)::$_2,std::allocator<re::DrawingManager::executeFrameInternal(re::RenderFrameWorkload *)::$_2>,void ()(MTL::CommandBuffer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D072A0;
  v2 = a1[1];
  if (v2)
  {

    a1[1] = 0;
  }

  return a1;
}

void std::__function::__func<re::DrawingManager::executeFrameInternal(re::RenderFrameWorkload *)::$_2,std::allocator<re::DrawingManager::executeFrameInternal(re::RenderFrameWorkload *)::$_2>,void ()(MTL::CommandBuffer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D072A0;
  v2 = a1[1];
  if (v2)
  {

    a1[1] = 0;
  }

  JUMPOUT(0x1E6906520);
}

void *std::__function::__func<re::DrawingManager::executeFrameInternal(re::RenderFrameWorkload *)::$_2,std::allocator<re::DrawingManager::executeFrameInternal(re::RenderFrameWorkload *)::$_2>,void ()(MTL::CommandBuffer *)>::__clone(void *result, void *a2)
{
  v2 = result[1];
  *a2 = &unk_1F5D072A0;
  a2[1] = v2;
  if (v2)
  {
    return (v2 + 8);
  }

  return result;
}

void std::__function::__func<re::DrawingManager::executeFrameInternal(re::RenderFrameWorkload *)::$_2,std::allocator<re::DrawingManager::executeFrameInternal(re::RenderFrameWorkload *)::$_2>,void ()(MTL::CommandBuffer *)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {

    *(a1 + 8) = 0;
  }
}

void std::__function::__func<re::DrawingManager::executeFrameInternal(re::RenderFrameWorkload *)::$_2,std::allocator<re::DrawingManager::executeFrameInternal(re::RenderFrameWorkload *)::$_2>,void ()(MTL::CommandBuffer *)>::destroy_deallocate(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
  }

  operator delete(__p);
}

uint64_t std::__function::__func<re::DrawingManager::executeFrameInternal(re::RenderFrameWorkload *)::$_2,std::allocator<re::DrawingManager::executeFrameInternal(re::RenderFrameWorkload *)::$_2>,void ()(MTL::CommandBuffer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *re::DynamicArray<re::PipelineStateCacheKey>::setCapacity(void *result, unint64_t a2)
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

        if (is_mul_ok(a2, 0x48uLL))
        {
          v2 = 72 * a2;
          result = (*(*result + 32))(result, 72 * a2, 8);
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
            memcpy(v7, v5[4], 72 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 72, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::PipelineStateCacheKey>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

BOOL re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v5 = a2[4];
    v6 = *(a1 + 16);
    v7 = *(v6 + 96 * v2) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v7;
      v8 = a2[3];
    }

    else
    {
      *(v6 + 96 * v5) = *(v6 + 96 * v5) & 0x80000000 | v7;
      v8 = v2;
    }

    re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::free(a1, v8);
    v9 = a2[3];
    v10 = *(a1 + 40);
    *(*(a1 + 16) + 96 * v9) = *(*(a1 + 16) + 96 * v9) & 0x80000000 | *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v10 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

void *re::DynamicArray<re::RenderLayer>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RenderLayer>::setCapacity(v5, a2);
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
              goto LABEL_20;
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
LABEL_20:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + 32 * v9;
        v11 = v7 + 12;
        v12 = v8 + 12;
        do
        {
          v14 = v12 - 12;
          v13 = *(v12 - 12);
          *(v12 - 12) = 0;
          *(v11 - 12) = v13;
          LODWORD(v13) = *(v12 - 4);
          *(v11 - 4) = v13;
          if (v13 == 1)
          {
            *v11 = *v12;
          }

          v15 = *(v12 + 8);
          v11[8] = v15;
          if (v15 == 1)
          {
            *(v11 + 3) = *(v12 + 12);
          }

          v11 += 32;
          v12 += 32;
        }

        while (v14 + 32 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_20;
    }
  }

  return result;
}

double re::make::shared::object<re::RenderFrameSettings>@<D0>(re *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 144, 8);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  ArcSharedObject::ArcSharedObject(v4, 0);
  *v4 = &unk_1F5D07330;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 48) = 0;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 64) = 0;
  *(v4 + 88) = 0;
  *(v4 + 136) = 0;
  result = 0.0;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0;
  *a2 = v4;
  return result;
}

void re::RenderFrameSettings::~RenderFrameSettings(re::RenderFrameSettings *this)
{
  *this = &unk_1F5D07330;
  re::DynamicArray<re::RenderFrameEvent>::deinit(this + 104);
  re::DynamicArray<re::RenderFrameEvent>::deinit(this + 64);
  v2 = *(this + 6);
  if (v2)
  {

    *(this + 6) = 0;
  }

  v3 = *(this + 4);
  if (v3)
  {

    *(this + 4) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5D07330;
  re::DynamicArray<re::RenderFrameEvent>::deinit(this + 104);
  re::DynamicArray<re::RenderFrameEvent>::deinit(this + 64);
  v2 = *(this + 6);
  if (v2)
  {

    *(this + 6) = 0;
  }

  v3 = *(this + 4);
  if (v3)
  {

    *(this + 4) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t re::ProfilerTimeGuard<(re::ProfilerStatistic)23>::end(uint64_t result)
{
  if (*result && *(*result + 152))
  {
    v1 = result;
    result = mach_absolute_time();
    v2 = *v1;
    v3 = *(*v1 + 152);
    if (v3)
    {
      v4 = result - v1[1];
      v5 = v3[192].u64[0];
      if (v5 >= v4)
      {
        v5 = result - v1[1];
      }

      v3[192].i64[0] = v5;
      v6 = v3[192].u64[1];
      if (v6 <= v4)
      {
        v6 = v4;
      }

      v3[192].i64[1] = v6;
      v7 = vdupq_n_s64(1uLL);
      v7.i64[0] = v4;
      v3[193] = vaddq_s64(v3[193], v7);
      *(v2 + 184) = 0;
    }

    *v1 = 0;
  }

  return result;
}

__n128 std::__function::__func<re::DrawingManager::commitFrameInternal(re::WorkloadCommitMode,re::RenderFrameWorkload *)::$_0,std::allocator<re::DrawingManager::commitFrameInternal(re::WorkloadCommitMode,re::RenderFrameWorkload *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D07378;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void *std::__function::__func<re::DrawingManager::commitFrameInternal(re::WorkloadCommitMode,re::RenderFrameWorkload *)::$_0,std::allocator<re::DrawingManager::commitFrameInternal(re::WorkloadCommitMode,re::RenderFrameWorkload *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 16);
  *v3 = std::chrono::steady_clock::now();
  *(v3 + 16) = 1;
  re::DrawingManager::waitForGPUInternal(v2);
  v4 = *(a1 + 16);
  *(v4 + 8) = *(v4 + 8) + (std::chrono::steady_clock::now().__d_.__rep_ - *v4) / 1000000000.0;
  *(v4 + 16) = 0;
  v5 = re::RenderFrameBox::get((v2 + 328), *(*(*(v2 + 256) + 144) + 24) & 0xFFFFFFFFFFFFFFFLL | (*(*(*(v2 + 256) + 144) + 16) << 60));
  re::DynamicArray<re::Pair<NS::SharedPtr<MTL::Event>,unsigned long long,true>>::operator=((v5 + 417), v2 + 696);
  re::DynamicArray<re::RenderFrameEvent>::clear(v2 + 696);
  if (*(v2 + 624))
  {
    v6 = v2 + 632;
  }

  else
  {
    v6 = *(v2 + 640);
  }

  v7 = *(v2 + 616);
  v25 = v6;
  v26 = v7;
  re::DynamicOverflowArray<re::RenderFrameDelta *,5ul>::operator=((v5 + 409), &v25);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v2 + 608);
  v8 = *(v2 + 1688);
  v25 = *(v2 + 1704);
  v26 = v8;
  re::FixedArray<re::RenderLayer>::operator=((v5 + 552), &v25);
  re::TextureManager::synchronizeTextures(*(*(v2 + 256) + 56));
  v9 = *(v2 + 256);
  v10 = *(v9 + 24);
  v11 = re::RenderFrameBox::get((v2 + 328), *(*(v9 + 144) + 24) & 0xFFFFFFFFFFFFFFFLL | (*(*(v9 + 144) + 16) << 60));
  v28 = *(re::RenderFrame::currentCommandBuffer(v11) + 2);
  re::MaterialManager::resolveArgumentBuffers(v10, &v28);

  v12 = *(v2 + 1688);
  if (v12)
  {
    v13 = (*(v2 + 1704) + 20);
    v14 = 32 * v12;
    do
    {
      if (*(v13 - 20))
      {
        if (*(v13 - 12) == 1)
        {
          *(v13 - 12) = 0;
        }

        if (*v13 == 1)
        {
          *v13 = 0;
        }
      }

      v13 += 32;
      v14 -= 32;
    }

    while (v14);
  }

  if ((re::DrawingManager::shouldRenderProfilerNode(v2) & 1) != 0 && *(*(v2 + 1648) + 16) == 1)
  {
    re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(&v25);
    re::RenderFrame::emitGraph(v5, "ProfilerOverlay", "RenderFrame");
    v24[0] = 65290051;
    re::RenderFrame::specifyScopeLane(v5, v24, (*(v2 + 1648) + 12), "ProfilerOverlay");
    re::ProfilerTimeGuard<(re::ProfilerStatistic)23>::end(&v25);
  }

  *(*(v2 + 1648) + 16) = 1;
  re::RenderFrame::buildOrRetainCachedGraph(v5, (v2 + 1624));
  re::RenderGraphManager::deleteStaleGraphs(*(v2 + 296), *(*(*(v2 + 256) + 144) + 32) & 0xFFFFFFFFFFFFFFFLL | (*(*(*(v2 + 256) + 144) + 16) << 60), v5[49]);
  re::RenderFrame::identifyUsedRenderLayers(v5);
  v15 = *(a1 + 24);
  v16 = 1;
  if (!v5[54])
  {
    v16 = *(v15 + 320) != 0;
  }

  *(v15 + 296) = v16;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v17 = *(a1 + 16);
  *v17 = std::chrono::steady_clock::now();
  *(v17 + 16) = 1;
  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v24);
  re::RenderFrame::acquireDrawables(v5, &v25);
  re::ProfilerTimeGuard<(re::ProfilerStatistic)11>::end(v24);
  v18 = *(a1 + 16);
  *(v18 + 8) = *(v18 + 8) + (std::chrono::steady_clock::now().__d_.__rep_ - *v18) / 1000000000.0;
  *(v18 + 16) = 0;
  v19 = *(a1 + 16);
  v20.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  LOBYTE(v21) = *(v19 + 16);
  *(v2 + 864) = *(v19 + 8) + (v20.__d_.__rep_ - *v19) / 1000000000.0 * v21;
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v24, 5002, v2);
  re::DrawingManager::executeFrameInternal(v2, *(a1 + 24));
  re::DrawingManager::presentDrawablesAndCommit(v2, &v25, *(a1 + 8), *(a1 + 24));
  v22 = *(a1 + 8);
  if (v22 == 2)
  {
    re::RenderFrameWorkload::immediatePresentDrawables(*(a1 + 24), 1.0 / *(v2 + 1792));
    v22 = *(a1 + 8);
  }

  if (v22 == 1)
  {
    re::RenderFrame::onFrameComplete(v5);
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v24);
  return re::FixedArray<re::mtl::Drawable>::deinit(&v25);
}

uint64_t std::__function::__func<re::DrawingManager::commitFrameInternal(re::WorkloadCommitMode,re::RenderFrameWorkload *)::$_0,std::allocator<re::DrawingManager::commitFrameInternal(re::WorkloadCommitMode,re::RenderFrameWorkload *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::ProfilerTimeGuard<(re::ProfilerStatistic)11>::end(uint64_t result)
{
  if (*result && *(*result + 152))
  {
    v1 = result;
    result = mach_absolute_time();
    v2 = *v1;
    v3 = *(*v1 + 152);
    if (v3)
    {
      v4 = result - v1[1];
      v5 = v3[96].u64[0];
      if (v5 >= v4)
      {
        v5 = result - v1[1];
      }

      v3[96].i64[0] = v5;
      v6 = v3[96].u64[1];
      if (v6 <= v4)
      {
        v6 = v4;
      }

      v3[96].i64[1] = v6;
      v7 = vdupq_n_s64(1uLL);
      v7.i64[0] = v4;
      v3[97] = vaddq_s64(v3[97], v7);
      *(v2 + 184) = 0;
    }

    *v1 = 0;
  }

  return result;
}

void *re::FixedArray<re::mtl::Drawable>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 8 * v2;
      do
      {
        v6 = *v4++;

        v5 -= 8;
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

void *re::allocInfo_DeformationService(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_456, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_456))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B9AF0, "DeformationService");
    __cxa_guard_release(&_MergedGlobals_456);
  }

  return &unk_1EE1B9AF0;
}

void re::initInfo_DeformationService(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xC0353100B91B06CALL;
  v6[1] = "DeformationService";
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
  *(this + 8) = &re::initInfo_DeformationService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::DeformerHelper::registerBuiltInDeformers(re::DeformerHelper *this, re::DeformationManager *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = re::globalAllocators(this);
  v3 = (*(*v2[2] + 32))(v2[2], 96, 8);
  *(v3 + 88) = 0;
  *v3 = &unk_1F5D05E90;
  *(v3 + 24) = 0u;
  *(v3 + 8) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0;
  v9[0] = &unk_1F5D07468;
  v9[3] = v9;
  v8 = v7;
  v7[0] = &unk_1F5D07468;
  v4 = re::globalAllocators(v3)[2];
  v14 = v4;
  v5 = (*(*v4 + 32))(v4, 40, 0);
  v6 = v5;
  *v5 = &unk_1F5D074F8;
  if (v8)
  {
    if (v8 == v7)
    {
      v5[4] = v5 + 1;
      (*(*v8 + 24))(v8);
    }

    else
    {
      v5[4] = v8;
      v8 = 0;
    }
  }

  else
  {
    v5[4] = 0;
  }

  v15 = v6;
  v11 = v4;
  v12 = 0;
  re::FunctionBase<24ul,void ()(re::BlendShapeDeformer *)>::operator=<24ul>(v10, v13);
  operator new();
}

void re::FenceDeformer::addDeformationInstance(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  *a4 = 0xFFFFFFFFLL;
  *(a4 + 8) = vdupq_n_s64(2uLL);
  v6 = *a3;
  if (v6 == 255)
  {
    v7 = *(a3 + 2);
    LOBYTE(v6) = 3;
    if (v7)
    {
      if (*(v7 + 208))
      {
        LOBYTE(v6) = 1;
      }

      else
      {
        LOBYTE(v6) = 3;
      }
    }
  }

  *(a4 + 24) = v6;
  if (*a2)
  {
    *&v27[0] = 0;
    *(&v27[0] + 1) = &str_67;
    v8 = v27[0];
    v9 = *&v27[0] >> 1;
    *(a4 + 40) = 0;
    v10 = (a4 + 40);
    *(v10 - 1) = v9;
    v10[1] = 0;
    v10[2] = 0;
    if (v8)
    {
      if (v27[0])
      {
      }
    }
  }

  else
  {
    *(a4 + 40) = 0;
    v10 = (a4 + 40);
    *(v10 - 1) = -1;
    v10[1] = 0;
    v10[2] = 0;
  }

  if (*(a2 + 256) != 255)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    if (!v16)
    {
      v18 = 0;
      memset(v27, 0, sizeof(v27));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v19 = 136315906;
      v20 = "operator[]";
      v21 = 1024;
      v22 = 468;
      v23 = 2048;
      v24 = 0;
      v25 = 2048;
      v26 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v12 = v17;
    *v17 = *(a2 + 256);
    *&v27[0] = 0;
    *(&v27[0] + 1) = &str_67;
    v14 = v27[0];
    *(v12 + 1) = *&v27[0] >> 1;
    if (v14)
    {
      if (v27[0])
      {
      }
    }

    re::FixedArray<float>::operator=(v10, &v15);
    if (v15)
    {
      if (v16)
      {
        (*(*v15 + 40))();
      }
    }
  }
}

re *std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_0,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_0>,void ()(re::BlendShapeDeformer *)>::operator()(re *result, re::BlendShapeDeformer **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = re::globalAllocators(result)[2];
    re::BlendShapeDeformer::~BlendShapeDeformer(v2);
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return result;
}

uint64_t std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_0,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_0>,void ()(re::BlendShapeDeformer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(re::BlendShapeDeformer *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(re::BlendShapeDeformer *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::function<void ()(re::BlendShapeDeformer *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return std::unique_ptr<re::Deformer,std::function<void ()(re::Deformer*)>>::operator=[abi:nn200100](v3);
}

uint64_t *std::unique_ptr<re::Deformer,std::function<void ()(re::Deformer*)>>::operator=[abi:nn200100](uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    std::function<void ()(re::Deformer *)>::operator()((a1 + 1), v5);
  }

  v6 = a1[4];
  a1[4] = 0;
  if (v6 == a1 + 1)
  {
    (*(*v6 + 32))(v6);
  }

  else if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  v7 = a2[4];
  if (v7)
  {
    if (v7 == a2 + 1)
    {
      a1[4] = (a1 + 1);
      (*(*a2[4] + 24))(a2[4], a1 + 1);
    }

    else
    {
      a1[4] = v7;
      a2[4] = 0;
    }
  }

  else
  {
    a1[4] = 0;
  }

  return a1;
}

uint64_t re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  result = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v9);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    result = re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v10, v9);
    v8 = *a2;
    *(result + 8) = *(result + 8) & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
    *(result + 8) = *a2 & 0xFFFFFFFFFFFFFFFELL | v8 & 1;
    *(result + 16) = a2[1];
    *a2 = 0;
    a2[1] = &str_67;
    *(result + 24) = *a3;
    ++*(a1 + 40);
  }

  return result;
}

void *re::internal::Callable<std::function<void ()(re::BlendShapeDeformer *)>,void ()(re::BlendShapeDeformer *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D074F8;
  std::__function::__value_func<void ()(re::BlendShapeDeformer *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void re::internal::Callable<std::function<void ()(re::BlendShapeDeformer *)>,void ()(re::BlendShapeDeformer *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D074F8;
  std::__function::__value_func<void ()(re::BlendShapeDeformer *)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x1E6906520);
}

void *re::internal::Callable<std::function<void ()(re::BlendShapeDeformer *)>,void ()(re::BlendShapeDeformer *)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D074F8;
  v3 = a2 + 1;
  v4 = *(a1 + 32);
  if (v4)
  {
    if (v4 == a1 + 8)
    {
      a2[4] = v3;
      (*(**(a1 + 32) + 24))(*(a1 + 32));
    }

    else
    {
      a2[4] = (*(*v4 + 16))(*(a1 + 32), v3);
    }
  }

  else
  {
    a2[4] = 0;
  }

  return a2;
}

void *re::internal::Callable<std::function<void ()(re::BlendShapeDeformer *)>,void ()(re::BlendShapeDeformer *)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D074F8;
  std::__function::__value_func<void ()(re::BlendShapeDeformer *)>::__value_func[abi:nn200100]((a2 + 1), a1 + 8);
  return a2;
}

uint64_t re::FunctionBase<24ul,void ()(re::BlendShapeDeformer *)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::BlendShapeDeformer *)>::destroyCallable(a1);
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

uint64_t (***re::FunctionBase<24ul,void ()(re::BlendShapeDeformer *)>::destroyCallable(uint64_t a1))(void)
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

void *std::__function::__func<void re::DeformationManager::registerDeformer<re::BlendShapeDeformer>(std::unique_ptr<re::BlendShapeDeformer,std::function<void ()(re::BlendShapeDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::BlendShapeDeformer>(std::unique_ptr<re::BlendShapeDeformer,std::function<void ()(re::BlendShapeDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D07560;
  re::FunctionBase<24ul,void ()(re::BlendShapeDeformer *)>::destroyCallable((a1 + 1));
  return a1;
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::BlendShapeDeformer>(std::unique_ptr<re::BlendShapeDeformer,std::function<void ()(re::BlendShapeDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::BlendShapeDeformer>(std::unique_ptr<re::BlendShapeDeformer,std::function<void ()(re::BlendShapeDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D07560;
  re::FunctionBase<24ul,void ()(re::BlendShapeDeformer *)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::BlendShapeDeformer>(std::unique_ptr<re::BlendShapeDeformer,std::function<void ()(re::BlendShapeDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::BlendShapeDeformer>(std::unique_ptr<re::BlendShapeDeformer,std::function<void ()(re::BlendShapeDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D07560;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  return re::FunctionBase<24ul,void ()(re::BlendShapeDeformer *)>::operator=<24ul>((a2 + 1), a1 + 8);
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::BlendShapeDeformer>(std::unique_ptr<re::BlendShapeDeformer,std::function<void ()(re::BlendShapeDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::BlendShapeDeformer>(std::unique_ptr<re::BlendShapeDeformer,std::function<void ()(re::BlendShapeDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::destroy_deallocate(void *a1)
{
  re::FunctionBase<24ul,void ()(re::BlendShapeDeformer *)>::destroyCallable(a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::BlendShapeDeformer>(std::unique_ptr<re::BlendShapeDeformer,std::function<void ()(re::BlendShapeDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::BlendShapeDeformer>(std::unique_ptr<re::BlendShapeDeformer,std::function<void ()(re::BlendShapeDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::function<void ()(re::Deformer *)>::operator()(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v2 = *(a1 + 24);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::unique_ptr<re::Deformer,std::function<void ()(re::Deformer*)>>::~unique_ptr[abi:nn200100](v4);
}

uint64_t *std::unique_ptr<re::Deformer,std::function<void ()(re::Deformer*)>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::function<void ()(re::Deformer *)>::operator()((a1 + 1), v2);
  }

  std::__function::__value_func<void ()(re::Deformer *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

uint64_t std::__function::__value_func<void ()(re::Deformer *)>::~__value_func[abi:nn200100](uint64_t a1)
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

re *std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_1,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_1>,void ()(re::SkinningDeformer *)>::operator()(re *result, re::SkinningDeformer **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = re::globalAllocators(result)[2];
    re::SkinningDeformer::~SkinningDeformer(v2);
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return result;
}

uint64_t std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_1,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_1>,void ()(re::SkinningDeformer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void re::SkinningDeformer::~SkinningDeformer(re::SkinningDeformer *this)
{
  v2 = 0;
  v3 = this + 32912;
  do
  {
    v4 = *&v3[v2];
    if (v4)
    {

      *&v3[v2] = 0;
    }

    v2 -= 8;
  }

  while (v2 != -128);
  for (i = 32784; i != 16; i -= 8)
  {
    v6 = *(this + i);
    if (v6)
    {

      *(this + i) = 0;
    }
  }
}

{
  re::SkinningDeformer::~SkinningDeformer(this);

  JUMPOUT(0x1E6906520);
}

uint64_t std::__function::__value_func<void ()(re::SkinningDeformer *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(re::SkinningDeformer *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::function<void ()(re::SkinningDeformer *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return re::internal::Callable<std::function<void ()(re::SkinningDeformer *)>,void ()(re::SkinningDeformer *)>::~Callable(v3);
}

void *re::internal::Callable<std::function<void ()(re::SkinningDeformer *)>,void ()(re::SkinningDeformer *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D07680;
  std::__function::__value_func<void ()(re::SkinningDeformer *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void re::internal::Callable<std::function<void ()(re::SkinningDeformer *)>,void ()(re::SkinningDeformer *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D07680;
  std::__function::__value_func<void ()(re::SkinningDeformer *)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x1E6906520);
}

void *re::internal::Callable<std::function<void ()(re::SkinningDeformer *)>,void ()(re::SkinningDeformer *)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D07680;
  v3 = a2 + 1;
  v4 = *(a1 + 32);
  if (v4)
  {
    if (v4 == a1 + 8)
    {
      a2[4] = v3;
      (*(**(a1 + 32) + 24))(*(a1 + 32));
    }

    else
    {
      a2[4] = (*(*v4 + 16))(*(a1 + 32), v3);
    }
  }

  else
  {
    a2[4] = 0;
  }

  return a2;
}

void *re::internal::Callable<std::function<void ()(re::SkinningDeformer *)>,void ()(re::SkinningDeformer *)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D07680;
  std::__function::__value_func<void ()(re::SkinningDeformer *)>::__value_func[abi:nn200100]((a2 + 1), a1 + 8);
  return a2;
}

uint64_t re::FunctionBase<24ul,void ()(re::SkinningDeformer *)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::SkinningDeformer *)>::destroyCallable(a1);
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

uint64_t (***re::FunctionBase<24ul,void ()(re::SkinningDeformer *)>::destroyCallable(uint64_t a1))(void)
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

void *std::__function::__func<void re::DeformationManager::registerDeformer<re::SkinningDeformer>(std::unique_ptr<re::SkinningDeformer,std::function<void ()(re::SkinningDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::SkinningDeformer>(std::unique_ptr<re::SkinningDeformer,std::function<void ()(re::SkinningDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D076E8;
  re::FunctionBase<24ul,void ()(re::SkinningDeformer *)>::destroyCallable((a1 + 1));
  return a1;
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::SkinningDeformer>(std::unique_ptr<re::SkinningDeformer,std::function<void ()(re::SkinningDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::SkinningDeformer>(std::unique_ptr<re::SkinningDeformer,std::function<void ()(re::SkinningDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D076E8;
  re::FunctionBase<24ul,void ()(re::SkinningDeformer *)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::SkinningDeformer>(std::unique_ptr<re::SkinningDeformer,std::function<void ()(re::SkinningDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::SkinningDeformer>(std::unique_ptr<re::SkinningDeformer,std::function<void ()(re::SkinningDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D076E8;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  return re::FunctionBase<24ul,void ()(re::SkinningDeformer *)>::operator=<24ul>((a2 + 1), a1 + 8);
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::SkinningDeformer>(std::unique_ptr<re::SkinningDeformer,std::function<void ()(re::SkinningDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::SkinningDeformer>(std::unique_ptr<re::SkinningDeformer,std::function<void ()(re::SkinningDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::destroy_deallocate(void *a1)
{
  re::FunctionBase<24ul,void ()(re::SkinningDeformer *)>::destroyCallable(a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::SkinningDeformer>(std::unique_ptr<re::SkinningDeformer,std::function<void ()(re::SkinningDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::SkinningDeformer>(std::unique_ptr<re::SkinningDeformer,std::function<void ()(re::SkinningDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re *std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_2,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_2>,void ()(re::SmoothDeformer *)>::operator()(re *result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = re::globalAllocators(result)[2];
    v4 = *(v2 + 16);
    if (v4)
    {

      *(v2 + 16) = 0;
    }

    v5 = *(*v3 + 40);

    return v5(v3, v2);
  }

  return result;
}

uint64_t std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_2,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_2>,void ()(re::SmoothDeformer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(re::SmoothDeformer *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(re::SmoothDeformer *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::function<void ()(re::SmoothDeformer *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return re::internal::Callable<std::function<void ()(re::SmoothDeformer *)>,void ()(re::SmoothDeformer *)>::~Callable(v3);
}

void *re::internal::Callable<std::function<void ()(re::SmoothDeformer *)>,void ()(re::SmoothDeformer *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D077F8;
  std::__function::__value_func<void ()(re::SmoothDeformer *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void re::internal::Callable<std::function<void ()(re::SmoothDeformer *)>,void ()(re::SmoothDeformer *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D077F8;
  std::__function::__value_func<void ()(re::SmoothDeformer *)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x1E6906520);
}

void *re::internal::Callable<std::function<void ()(re::SmoothDeformer *)>,void ()(re::SmoothDeformer *)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D077F8;
  v3 = a2 + 1;
  v4 = *(a1 + 32);
  if (v4)
  {
    if (v4 == a1 + 8)
    {
      a2[4] = v3;
      (*(**(a1 + 32) + 24))(*(a1 + 32));
    }

    else
    {
      a2[4] = (*(*v4 + 16))(*(a1 + 32), v3);
    }
  }

  else
  {
    a2[4] = 0;
  }

  return a2;
}

void *re::internal::Callable<std::function<void ()(re::SmoothDeformer *)>,void ()(re::SmoothDeformer *)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D077F8;
  std::__function::__value_func<void ()(re::SmoothDeformer *)>::__value_func[abi:nn200100]((a2 + 1), a1 + 8);
  return a2;
}

uint64_t re::FunctionBase<24ul,void ()(re::SmoothDeformer *)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::SmoothDeformer *)>::destroyCallable(a1);
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

uint64_t (***re::FunctionBase<24ul,void ()(re::SmoothDeformer *)>::destroyCallable(uint64_t a1))(void)
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

void *std::__function::__func<void re::DeformationManager::registerDeformer<re::SmoothDeformer>(std::unique_ptr<re::SmoothDeformer,std::function<void ()(re::SmoothDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::SmoothDeformer>(std::unique_ptr<re::SmoothDeformer,std::function<void ()(re::SmoothDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D07860;
  re::FunctionBase<24ul,void ()(re::SmoothDeformer *)>::destroyCallable((a1 + 1));
  return a1;
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::SmoothDeformer>(std::unique_ptr<re::SmoothDeformer,std::function<void ()(re::SmoothDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::SmoothDeformer>(std::unique_ptr<re::SmoothDeformer,std::function<void ()(re::SmoothDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D07860;
  re::FunctionBase<24ul,void ()(re::SmoothDeformer *)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::SmoothDeformer>(std::unique_ptr<re::SmoothDeformer,std::function<void ()(re::SmoothDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::SmoothDeformer>(std::unique_ptr<re::SmoothDeformer,std::function<void ()(re::SmoothDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D07860;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  return re::FunctionBase<24ul,void ()(re::SmoothDeformer *)>::operator=<24ul>((a2 + 1), a1 + 8);
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::SmoothDeformer>(std::unique_ptr<re::SmoothDeformer,std::function<void ()(re::SmoothDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::SmoothDeformer>(std::unique_ptr<re::SmoothDeformer,std::function<void ()(re::SmoothDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::destroy_deallocate(void *a1)
{
  re::FunctionBase<24ul,void ()(re::SmoothDeformer *)>::destroyCallable(a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::SmoothDeformer>(std::unique_ptr<re::SmoothDeformer,std::function<void ()(re::SmoothDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::SmoothDeformer>(std::unique_ptr<re::SmoothDeformer,std::function<void ()(re::SmoothDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re *std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_3,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_3>,void ()(re::StitchedDeformer *)>::operator()(re *result, re::StitchedDeformer **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = re::globalAllocators(result)[2];
    re::StitchedDeformer::~StitchedDeformer(v2);
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return result;
}

uint64_t std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_3,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_3>,void ()(re::StitchedDeformer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void re::StitchedDeformer::~StitchedDeformer(re::StitchedDeformer *this)
{
  re::BucketArray<re::StitchedDeformer::ComputePipelineData,64ul>::deinit(this + 256);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 256);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 26);
  re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(this + 152);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 152);
  re::DataArray<re::ecs2::Component *>::deinit(this + 88);
  re::DynamicArray<unsigned long>::deinit(this + 88);
  re::BucketArray<re::StitchedDeformer::StitchedDeformerInstance,32ul>::deinit(this + 32);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 32);
}

{
  re::StitchedDeformer::~StitchedDeformer(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::BucketArray<re::StitchedDeformer::ComputePipelineData,64ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::StitchedDeformer::ComputePipelineData,64ul>::operator[](a1, i);
      if (*v4)
      {

        *v4 = 0;
      }
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

uint64_t re::BucketArray<re::StitchedDeformer::ComputePipelineData,64ul>::operator[](uint64_t a1, unint64_t a2)
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

  if (*(a1 + 8) <= a2 >> 6)
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

  return *(v3 + 8 * (a2 >> 6)) + 16 * (a2 & 0x3F);
}

uint64_t re::BucketArray<re::StitchedDeformer::StitchedDeformerInstance,32ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::ImportAssetTable::ImportedAsset,32ul>::operator[](a1, i);
      re::FixedArray<re::DeformationDescription>::deinit(v4 + 3);
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

void *re::FixedArray<re::DeformationDescription>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = v2 << 6;
      v5 = (result[2] + 40);
      do
      {
        re::FixedArray<CoreIKTransform>::deinit(v5);
        v5 += 8;
        v4 -= 64;
      }

      while (v4);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(re::StitchedDeformer *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(re::StitchedDeformer *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::function<void ()(re::StitchedDeformer *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return re::internal::Callable<std::function<void ()(re::StitchedDeformer *)>,void ()(re::StitchedDeformer *)>::~Callable(v3);
}

void *re::internal::Callable<std::function<void ()(re::StitchedDeformer *)>,void ()(re::StitchedDeformer *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D07970;
  std::__function::__value_func<void ()(re::StitchedDeformer *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void re::internal::Callable<std::function<void ()(re::StitchedDeformer *)>,void ()(re::StitchedDeformer *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D07970;
  std::__function::__value_func<void ()(re::StitchedDeformer *)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x1E6906520);
}

void *re::internal::Callable<std::function<void ()(re::StitchedDeformer *)>,void ()(re::StitchedDeformer *)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D07970;
  v3 = a2 + 1;
  v4 = *(a1 + 32);
  if (v4)
  {
    if (v4 == a1 + 8)
    {
      a2[4] = v3;
      (*(**(a1 + 32) + 24))(*(a1 + 32));
    }

    else
    {
      a2[4] = (*(*v4 + 16))(*(a1 + 32), v3);
    }
  }

  else
  {
    a2[4] = 0;
  }

  return a2;
}

void *re::internal::Callable<std::function<void ()(re::StitchedDeformer *)>,void ()(re::StitchedDeformer *)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D07970;
  std::__function::__value_func<void ()(re::StitchedDeformer *)>::__value_func[abi:nn200100]((a2 + 1), a1 + 8);
  return a2;
}

uint64_t re::FunctionBase<24ul,void ()(re::StitchedDeformer *)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::StitchedDeformer *)>::destroyCallable(a1);
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

uint64_t (***re::FunctionBase<24ul,void ()(re::StitchedDeformer *)>::destroyCallable(uint64_t a1))(void)
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

void *std::__function::__func<void re::DeformationManager::registerDeformer<re::StitchedDeformer>(std::unique_ptr<re::StitchedDeformer,std::function<void ()(re::StitchedDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::StitchedDeformer>(std::unique_ptr<re::StitchedDeformer,std::function<void ()(re::StitchedDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D079D8;
  re::FunctionBase<24ul,void ()(re::StitchedDeformer *)>::destroyCallable((a1 + 1));
  return a1;
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::StitchedDeformer>(std::unique_ptr<re::StitchedDeformer,std::function<void ()(re::StitchedDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::StitchedDeformer>(std::unique_ptr<re::StitchedDeformer,std::function<void ()(re::StitchedDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D079D8;
  re::FunctionBase<24ul,void ()(re::StitchedDeformer *)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::StitchedDeformer>(std::unique_ptr<re::StitchedDeformer,std::function<void ()(re::StitchedDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::StitchedDeformer>(std::unique_ptr<re::StitchedDeformer,std::function<void ()(re::StitchedDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D079D8;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  return re::FunctionBase<24ul,void ()(re::StitchedDeformer *)>::operator=<24ul>((a2 + 1), a1 + 8);
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::StitchedDeformer>(std::unique_ptr<re::StitchedDeformer,std::function<void ()(re::StitchedDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::StitchedDeformer>(std::unique_ptr<re::StitchedDeformer,std::function<void ()(re::StitchedDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::destroy_deallocate(void *a1)
{
  re::FunctionBase<24ul,void ()(re::StitchedDeformer *)>::destroyCallable(a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::StitchedDeformer>(std::unique_ptr<re::StitchedDeformer,std::function<void ()(re::StitchedDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::StitchedDeformer>(std::unique_ptr<re::StitchedDeformer,std::function<void ()(re::StitchedDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re *std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_4,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_4>,void ()(re::RenormalizationDeformer *)>::operator()(re *result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = re::globalAllocators(result)[2];
    for (i = 144; i != 16; i -= 8)
    {
      v5 = *(v2 + i);
      if (v5)
      {

        *(v2 + i) = 0;
      }
    }

    v6 = *(*v3 + 40);

    return v6(v3, v2);
  }

  return result;
}

uint64_t std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_4,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_4>,void ()(re::RenormalizationDeformer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(re::RenormalizationDeformer *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(re::RenormalizationDeformer *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::function<void ()(re::RenormalizationDeformer *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return re::internal::Callable<std::function<void ()(re::RenormalizationDeformer *)>,void ()(re::RenormalizationDeformer *)>::~Callable(v3);
}

void *re::internal::Callable<std::function<void ()(re::RenormalizationDeformer *)>,void ()(re::RenormalizationDeformer *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D07AE8;
  std::__function::__value_func<void ()(re::RenormalizationDeformer *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void re::internal::Callable<std::function<void ()(re::RenormalizationDeformer *)>,void ()(re::RenormalizationDeformer *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D07AE8;
  std::__function::__value_func<void ()(re::RenormalizationDeformer *)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x1E6906520);
}

void *re::internal::Callable<std::function<void ()(re::RenormalizationDeformer *)>,void ()(re::RenormalizationDeformer *)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D07AE8;
  v3 = a2 + 1;
  v4 = *(a1 + 32);
  if (v4)
  {
    if (v4 == a1 + 8)
    {
      a2[4] = v3;
      (*(**(a1 + 32) + 24))(*(a1 + 32));
    }

    else
    {
      a2[4] = (*(*v4 + 16))(*(a1 + 32), v3);
    }
  }

  else
  {
    a2[4] = 0;
  }

  return a2;
}

void *re::internal::Callable<std::function<void ()(re::RenormalizationDeformer *)>,void ()(re::RenormalizationDeformer *)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D07AE8;
  std::__function::__value_func<void ()(re::RenormalizationDeformer *)>::__value_func[abi:nn200100]((a2 + 1), a1 + 8);
  return a2;
}

uint64_t re::FunctionBase<24ul,void ()(re::RenormalizationDeformer *)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::RenormalizationDeformer *)>::destroyCallable(a1);
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

uint64_t (***re::FunctionBase<24ul,void ()(re::RenormalizationDeformer *)>::destroyCallable(uint64_t a1))(void)
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

void *std::__function::__func<void re::DeformationManager::registerDeformer<re::RenormalizationDeformer>(std::unique_ptr<re::RenormalizationDeformer,std::function<void ()(re::RenormalizationDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::RenormalizationDeformer>(std::unique_ptr<re::RenormalizationDeformer,std::function<void ()(re::RenormalizationDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D07B50;
  re::FunctionBase<24ul,void ()(re::RenormalizationDeformer *)>::destroyCallable((a1 + 1));
  return a1;
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::RenormalizationDeformer>(std::unique_ptr<re::RenormalizationDeformer,std::function<void ()(re::RenormalizationDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::RenormalizationDeformer>(std::unique_ptr<re::RenormalizationDeformer,std::function<void ()(re::RenormalizationDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D07B50;
  re::FunctionBase<24ul,void ()(re::RenormalizationDeformer *)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::RenormalizationDeformer>(std::unique_ptr<re::RenormalizationDeformer,std::function<void ()(re::RenormalizationDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::RenormalizationDeformer>(std::unique_ptr<re::RenormalizationDeformer,std::function<void ()(re::RenormalizationDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D07B50;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  return re::FunctionBase<24ul,void ()(re::RenormalizationDeformer *)>::operator=<24ul>((a2 + 1), a1 + 8);
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::RenormalizationDeformer>(std::unique_ptr<re::RenormalizationDeformer,std::function<void ()(re::RenormalizationDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::RenormalizationDeformer>(std::unique_ptr<re::RenormalizationDeformer,std::function<void ()(re::RenormalizationDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::destroy_deallocate(void *a1)
{
  re::FunctionBase<24ul,void ()(re::RenormalizationDeformer *)>::destroyCallable(a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::RenormalizationDeformer>(std::unique_ptr<re::RenormalizationDeformer,std::function<void ()(re::RenormalizationDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::RenormalizationDeformer>(std::unique_ptr<re::RenormalizationDeformer,std::function<void ()(re::RenormalizationDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re *std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_5,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_5>,void ()(re::OffsetsDeformer *)>::operator()(re *result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = re::globalAllocators(result)[2];
    for (i = 48; i != 16; i -= 8)
    {
      v5 = *(v2 + i);
      if (v5)
      {

        *(v2 + i) = 0;
      }
    }

    v6 = *(*v3 + 40);

    return v6(v3, v2);
  }

  return result;
}

uint64_t std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_5,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_5>,void ()(re::OffsetsDeformer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(re::OffsetsDeformer *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(re::OffsetsDeformer *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::function<void ()(re::OffsetsDeformer *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return re::internal::Callable<std::function<void ()(re::OffsetsDeformer *)>,void ()(re::OffsetsDeformer *)>::~Callable(v3);
}

void *re::internal::Callable<std::function<void ()(re::OffsetsDeformer *)>,void ()(re::OffsetsDeformer *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D07C60;
  std::__function::__value_func<void ()(re::OffsetsDeformer *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void re::internal::Callable<std::function<void ()(re::OffsetsDeformer *)>,void ()(re::OffsetsDeformer *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D07C60;
  std::__function::__value_func<void ()(re::OffsetsDeformer *)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x1E6906520);
}

void *re::internal::Callable<std::function<void ()(re::OffsetsDeformer *)>,void ()(re::OffsetsDeformer *)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D07C60;
  v3 = a2 + 1;
  v4 = *(a1 + 32);
  if (v4)
  {
    if (v4 == a1 + 8)
    {
      a2[4] = v3;
      (*(**(a1 + 32) + 24))(*(a1 + 32));
    }

    else
    {
      a2[4] = (*(*v4 + 16))(*(a1 + 32), v3);
    }
  }

  else
  {
    a2[4] = 0;
  }

  return a2;
}

void *re::internal::Callable<std::function<void ()(re::OffsetsDeformer *)>,void ()(re::OffsetsDeformer *)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D07C60;
  std::__function::__value_func<void ()(re::OffsetsDeformer *)>::__value_func[abi:nn200100]((a2 + 1), a1 + 8);
  return a2;
}

uint64_t re::FunctionBase<24ul,void ()(re::OffsetsDeformer *)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::OffsetsDeformer *)>::destroyCallable(a1);
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

uint64_t (***re::FunctionBase<24ul,void ()(re::OffsetsDeformer *)>::destroyCallable(uint64_t a1))(void)
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

void *std::__function::__func<void re::DeformationManager::registerDeformer<re::OffsetsDeformer>(std::unique_ptr<re::OffsetsDeformer,std::function<void ()(re::OffsetsDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::OffsetsDeformer>(std::unique_ptr<re::OffsetsDeformer,std::function<void ()(re::OffsetsDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D07CC8;
  re::FunctionBase<24ul,void ()(re::OffsetsDeformer *)>::destroyCallable((a1 + 1));
  return a1;
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::OffsetsDeformer>(std::unique_ptr<re::OffsetsDeformer,std::function<void ()(re::OffsetsDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::OffsetsDeformer>(std::unique_ptr<re::OffsetsDeformer,std::function<void ()(re::OffsetsDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D07CC8;
  re::FunctionBase<24ul,void ()(re::OffsetsDeformer *)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::OffsetsDeformer>(std::unique_ptr<re::OffsetsDeformer,std::function<void ()(re::OffsetsDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::OffsetsDeformer>(std::unique_ptr<re::OffsetsDeformer,std::function<void ()(re::OffsetsDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D07CC8;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  return re::FunctionBase<24ul,void ()(re::OffsetsDeformer *)>::operator=<24ul>((a2 + 1), a1 + 8);
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::OffsetsDeformer>(std::unique_ptr<re::OffsetsDeformer,std::function<void ()(re::OffsetsDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::OffsetsDeformer>(std::unique_ptr<re::OffsetsDeformer,std::function<void ()(re::OffsetsDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::destroy_deallocate(void *a1)
{
  re::FunctionBase<24ul,void ()(re::OffsetsDeformer *)>::destroyCallable(a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::OffsetsDeformer>(std::unique_ptr<re::OffsetsDeformer,std::function<void ()(re::OffsetsDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::OffsetsDeformer>(std::unique_ptr<re::OffsetsDeformer,std::function<void ()(re::OffsetsDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re *std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_6,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_6>,void ()(re::BoundingBoxCalculation *)>::operator()(re *result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = re::globalAllocators(result)[2];
    v4 = *(v2 + 8);
    if (v4)
    {

      *(v2 + 8) = 0;
    }

    v5 = *(*v3 + 40);

    return v5(v3, v2);
  }

  return result;
}

uint64_t std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_6,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_6>,void ()(re::BoundingBoxCalculation *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(re::BoundingBoxCalculation *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(re::BoundingBoxCalculation *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::function<void ()(re::BoundingBoxCalculation *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return re::internal::Callable<std::function<void ()(re::BoundingBoxCalculation *)>,void ()(re::BoundingBoxCalculation *)>::~Callable(v3);
}

void *re::internal::Callable<std::function<void ()(re::BoundingBoxCalculation *)>,void ()(re::BoundingBoxCalculation *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D07DD8;
  std::__function::__value_func<void ()(re::BoundingBoxCalculation *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void re::internal::Callable<std::function<void ()(re::BoundingBoxCalculation *)>,void ()(re::BoundingBoxCalculation *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D07DD8;
  std::__function::__value_func<void ()(re::BoundingBoxCalculation *)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x1E6906520);
}

void *re::internal::Callable<std::function<void ()(re::BoundingBoxCalculation *)>,void ()(re::BoundingBoxCalculation *)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D07DD8;
  v3 = a2 + 1;
  v4 = *(a1 + 32);
  if (v4)
  {
    if (v4 == a1 + 8)
    {
      a2[4] = v3;
      (*(**(a1 + 32) + 24))(*(a1 + 32));
    }

    else
    {
      a2[4] = (*(*v4 + 16))(*(a1 + 32), v3);
    }
  }

  else
  {
    a2[4] = 0;
  }

  return a2;
}

void *re::internal::Callable<std::function<void ()(re::BoundingBoxCalculation *)>,void ()(re::BoundingBoxCalculation *)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D07DD8;
  std::__function::__value_func<void ()(re::BoundingBoxCalculation *)>::__value_func[abi:nn200100]((a2 + 1), a1 + 8);
  return a2;
}

uint64_t re::FunctionBase<24ul,void ()(re::BoundingBoxCalculation *)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::BoundingBoxCalculation *)>::destroyCallable(a1);
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

uint64_t (***re::FunctionBase<24ul,void ()(re::BoundingBoxCalculation *)>::destroyCallable(uint64_t a1))(void)
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

void *std::__function::__func<void re::DeformationManager::registerDeformer<re::BoundingBoxCalculation>(std::unique_ptr<re::BoundingBoxCalculation,std::function<void ()(re::BoundingBoxCalculation*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::BoundingBoxCalculation>(std::unique_ptr<re::BoundingBoxCalculation,std::function<void ()(re::BoundingBoxCalculation*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D07E40;
  re::FunctionBase<24ul,void ()(re::BoundingBoxCalculation *)>::destroyCallable((a1 + 1));
  return a1;
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::BoundingBoxCalculation>(std::unique_ptr<re::BoundingBoxCalculation,std::function<void ()(re::BoundingBoxCalculation*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::BoundingBoxCalculation>(std::unique_ptr<re::BoundingBoxCalculation,std::function<void ()(re::BoundingBoxCalculation*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D07E40;
  re::FunctionBase<24ul,void ()(re::BoundingBoxCalculation *)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::BoundingBoxCalculation>(std::unique_ptr<re::BoundingBoxCalculation,std::function<void ()(re::BoundingBoxCalculation*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::BoundingBoxCalculation>(std::unique_ptr<re::BoundingBoxCalculation,std::function<void ()(re::BoundingBoxCalculation*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D07E40;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  return re::FunctionBase<24ul,void ()(re::BoundingBoxCalculation *)>::operator=<24ul>((a2 + 1), a1 + 8);
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::BoundingBoxCalculation>(std::unique_ptr<re::BoundingBoxCalculation,std::function<void ()(re::BoundingBoxCalculation*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::BoundingBoxCalculation>(std::unique_ptr<re::BoundingBoxCalculation,std::function<void ()(re::BoundingBoxCalculation*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::destroy_deallocate(void *a1)
{
  re::FunctionBase<24ul,void ()(re::BoundingBoxCalculation *)>::destroyCallable(a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::BoundingBoxCalculation>(std::unique_ptr<re::BoundingBoxCalculation,std::function<void ()(re::BoundingBoxCalculation*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::BoundingBoxCalculation>(std::unique_ptr<re::BoundingBoxCalculation,std::function<void ()(re::BoundingBoxCalculation*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re *std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_7,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_7>,void ()(re::TensionDeformer *)>::operator()(re *result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = re::globalAllocators(result)[2];
    for (i = 24; i != 8; i -= 8)
    {
      v5 = *(v2 + i);
      if (v5)
      {

        *(v2 + i) = 0;
      }
    }

    v6 = *(*v3 + 40);

    return v6(v3, v2);
  }

  return result;
}

uint64_t std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_7,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_7>,void ()(re::TensionDeformer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(re::TensionDeformer *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(re::TensionDeformer *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::function<void ()(re::TensionDeformer *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return re::internal::Callable<std::function<void ()(re::TensionDeformer *)>,void ()(re::TensionDeformer *)>::~Callable(v3);
}

void *re::internal::Callable<std::function<void ()(re::TensionDeformer *)>,void ()(re::TensionDeformer *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D07F50;
  std::__function::__value_func<void ()(re::TensionDeformer *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void re::internal::Callable<std::function<void ()(re::TensionDeformer *)>,void ()(re::TensionDeformer *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D07F50;
  std::__function::__value_func<void ()(re::TensionDeformer *)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x1E6906520);
}

void *re::internal::Callable<std::function<void ()(re::TensionDeformer *)>,void ()(re::TensionDeformer *)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D07F50;
  v3 = a2 + 1;
  v4 = *(a1 + 32);
  if (v4)
  {
    if (v4 == a1 + 8)
    {
      a2[4] = v3;
      (*(**(a1 + 32) + 24))(*(a1 + 32));
    }

    else
    {
      a2[4] = (*(*v4 + 16))(*(a1 + 32), v3);
    }
  }

  else
  {
    a2[4] = 0;
  }

  return a2;
}

void *re::internal::Callable<std::function<void ()(re::TensionDeformer *)>,void ()(re::TensionDeformer *)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D07F50;
  std::__function::__value_func<void ()(re::TensionDeformer *)>::__value_func[abi:nn200100]((a2 + 1), a1 + 8);
  return a2;
}

uint64_t re::FunctionBase<24ul,void ()(re::TensionDeformer *)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::TensionDeformer *)>::destroyCallable(a1);
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

uint64_t (***re::FunctionBase<24ul,void ()(re::TensionDeformer *)>::destroyCallable(uint64_t a1))(void)
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

void *std::__function::__func<void re::DeformationManager::registerDeformer<re::TensionDeformer>(std::unique_ptr<re::TensionDeformer,std::function<void ()(re::TensionDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::TensionDeformer>(std::unique_ptr<re::TensionDeformer,std::function<void ()(re::TensionDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D07FB8;
  re::FunctionBase<24ul,void ()(re::TensionDeformer *)>::destroyCallable((a1 + 1));
  return a1;
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::TensionDeformer>(std::unique_ptr<re::TensionDeformer,std::function<void ()(re::TensionDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::TensionDeformer>(std::unique_ptr<re::TensionDeformer,std::function<void ()(re::TensionDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D07FB8;
  re::FunctionBase<24ul,void ()(re::TensionDeformer *)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::TensionDeformer>(std::unique_ptr<re::TensionDeformer,std::function<void ()(re::TensionDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::TensionDeformer>(std::unique_ptr<re::TensionDeformer,std::function<void ()(re::TensionDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D07FB8;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  return re::FunctionBase<24ul,void ()(re::TensionDeformer *)>::operator=<24ul>((a2 + 1), a1 + 8);
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::TensionDeformer>(std::unique_ptr<re::TensionDeformer,std::function<void ()(re::TensionDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::TensionDeformer>(std::unique_ptr<re::TensionDeformer,std::function<void ()(re::TensionDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::destroy_deallocate(void *a1)
{
  re::FunctionBase<24ul,void ()(re::TensionDeformer *)>::destroyCallable(a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::TensionDeformer>(std::unique_ptr<re::TensionDeformer,std::function<void ()(re::TensionDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::TensionDeformer>(std::unique_ptr<re::TensionDeformer,std::function<void ()(re::TensionDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re *std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_8,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_8>,void ()(re::WrapDeformer *)>::operator()(re *result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = re::globalAllocators(result)[2];
    v4 = 16;
    do
    {
      v5 = *(v2 + v4);
      if (v5)
      {

        *(v2 + v4) = 0;
      }

      v4 -= 8;
    }

    while (v4);
    v6 = *(*v3 + 40);

    return v6(v3, v2);
  }

  return result;
}

uint64_t std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_8,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_8>,void ()(re::WrapDeformer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(re::WrapDeformer *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(re::WrapDeformer *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::function<void ()(re::WrapDeformer *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return re::internal::Callable<std::function<void ()(re::WrapDeformer *)>,void ()(re::WrapDeformer *)>::~Callable(v3);
}

void *re::internal::Callable<std::function<void ()(re::WrapDeformer *)>,void ()(re::WrapDeformer *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D080C8;
  std::__function::__value_func<void ()(re::WrapDeformer *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void re::internal::Callable<std::function<void ()(re::WrapDeformer *)>,void ()(re::WrapDeformer *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D080C8;
  std::__function::__value_func<void ()(re::WrapDeformer *)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x1E6906520);
}

void *re::internal::Callable<std::function<void ()(re::WrapDeformer *)>,void ()(re::WrapDeformer *)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D080C8;
  v3 = a2 + 1;
  v4 = *(a1 + 32);
  if (v4)
  {
    if (v4 == a1 + 8)
    {
      a2[4] = v3;
      (*(**(a1 + 32) + 24))(*(a1 + 32));
    }

    else
    {
      a2[4] = (*(*v4 + 16))(*(a1 + 32), v3);
    }
  }

  else
  {
    a2[4] = 0;
  }

  return a2;
}

void *re::internal::Callable<std::function<void ()(re::WrapDeformer *)>,void ()(re::WrapDeformer *)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D080C8;
  std::__function::__value_func<void ()(re::WrapDeformer *)>::__value_func[abi:nn200100]((a2 + 1), a1 + 8);
  return a2;
}

uint64_t re::FunctionBase<24ul,void ()(re::WrapDeformer *)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::WrapDeformer *)>::destroyCallable(a1);
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

uint64_t (***re::FunctionBase<24ul,void ()(re::WrapDeformer *)>::destroyCallable(uint64_t a1))(void)
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

void *std::__function::__func<void re::DeformationManager::registerDeformer<re::WrapDeformer>(std::unique_ptr<re::WrapDeformer,std::function<void ()(re::WrapDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::WrapDeformer>(std::unique_ptr<re::WrapDeformer,std::function<void ()(re::WrapDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D08130;
  re::FunctionBase<24ul,void ()(re::WrapDeformer *)>::destroyCallable((a1 + 1));
  return a1;
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::WrapDeformer>(std::unique_ptr<re::WrapDeformer,std::function<void ()(re::WrapDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::WrapDeformer>(std::unique_ptr<re::WrapDeformer,std::function<void ()(re::WrapDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D08130;
  re::FunctionBase<24ul,void ()(re::WrapDeformer *)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::WrapDeformer>(std::unique_ptr<re::WrapDeformer,std::function<void ()(re::WrapDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::WrapDeformer>(std::unique_ptr<re::WrapDeformer,std::function<void ()(re::WrapDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D08130;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  return re::FunctionBase<24ul,void ()(re::WrapDeformer *)>::operator=<24ul>((a2 + 1), a1 + 8);
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::WrapDeformer>(std::unique_ptr<re::WrapDeformer,std::function<void ()(re::WrapDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::WrapDeformer>(std::unique_ptr<re::WrapDeformer,std::function<void ()(re::WrapDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::destroy_deallocate(void *a1)
{
  re::FunctionBase<24ul,void ()(re::WrapDeformer *)>::destroyCallable(a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::WrapDeformer>(std::unique_ptr<re::WrapDeformer,std::function<void ()(re::WrapDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::WrapDeformer>(std::unique_ptr<re::WrapDeformer,std::function<void ()(re::WrapDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re *std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_9,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_9>,void ()(re::ContactDeformer *)>::operator()(re *result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = re::globalAllocators(result)[2];
    for (i = 24; i != 8; i -= 8)
    {
      v5 = *(v2 + i);
      if (v5)
      {

        *(v2 + i) = 0;
      }
    }

    v6 = *(*v3 + 40);

    return v6(v3, v2);
  }

  return result;
}

uint64_t std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_9,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_9>,void ()(re::ContactDeformer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(re::ContactDeformer *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(re::ContactDeformer *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::function<void ()(re::ContactDeformer *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return re::internal::Callable<std::function<void ()(re::ContactDeformer *)>,void ()(re::ContactDeformer *)>::~Callable(v3);
}

void *re::internal::Callable<std::function<void ()(re::ContactDeformer *)>,void ()(re::ContactDeformer *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D08240;
  std::__function::__value_func<void ()(re::ContactDeformer *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void re::internal::Callable<std::function<void ()(re::ContactDeformer *)>,void ()(re::ContactDeformer *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D08240;
  std::__function::__value_func<void ()(re::ContactDeformer *)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x1E6906520);
}

void *re::internal::Callable<std::function<void ()(re::ContactDeformer *)>,void ()(re::ContactDeformer *)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D08240;
  v3 = a2 + 1;
  v4 = *(a1 + 32);
  if (v4)
  {
    if (v4 == a1 + 8)
    {
      a2[4] = v3;
      (*(**(a1 + 32) + 24))(*(a1 + 32));
    }

    else
    {
      a2[4] = (*(*v4 + 16))(*(a1 + 32), v3);
    }
  }

  else
  {
    a2[4] = 0;
  }

  return a2;
}

void *re::internal::Callable<std::function<void ()(re::ContactDeformer *)>,void ()(re::ContactDeformer *)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D08240;
  std::__function::__value_func<void ()(re::ContactDeformer *)>::__value_func[abi:nn200100]((a2 + 1), a1 + 8);
  return a2;
}

uint64_t re::FunctionBase<24ul,void ()(re::ContactDeformer *)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::ContactDeformer *)>::destroyCallable(a1);
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

uint64_t (***re::FunctionBase<24ul,void ()(re::ContactDeformer *)>::destroyCallable(uint64_t a1))(void)
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

void *std::__function::__func<void re::DeformationManager::registerDeformer<re::ContactDeformer>(std::unique_ptr<re::ContactDeformer,std::function<void ()(re::ContactDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::ContactDeformer>(std::unique_ptr<re::ContactDeformer,std::function<void ()(re::ContactDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D082A8;
  re::FunctionBase<24ul,void ()(re::ContactDeformer *)>::destroyCallable((a1 + 1));
  return a1;
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::ContactDeformer>(std::unique_ptr<re::ContactDeformer,std::function<void ()(re::ContactDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::ContactDeformer>(std::unique_ptr<re::ContactDeformer,std::function<void ()(re::ContactDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D082A8;
  re::FunctionBase<24ul,void ()(re::ContactDeformer *)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::ContactDeformer>(std::unique_ptr<re::ContactDeformer,std::function<void ()(re::ContactDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::ContactDeformer>(std::unique_ptr<re::ContactDeformer,std::function<void ()(re::ContactDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D082A8;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  return re::FunctionBase<24ul,void ()(re::ContactDeformer *)>::operator=<24ul>((a2 + 1), a1 + 8);
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::ContactDeformer>(std::unique_ptr<re::ContactDeformer,std::function<void ()(re::ContactDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::ContactDeformer>(std::unique_ptr<re::ContactDeformer,std::function<void ()(re::ContactDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::destroy_deallocate(void *a1)
{
  re::FunctionBase<24ul,void ()(re::ContactDeformer *)>::destroyCallable(a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::ContactDeformer>(std::unique_ptr<re::ContactDeformer,std::function<void ()(re::ContactDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::ContactDeformer>(std::unique_ptr<re::ContactDeformer,std::function<void ()(re::ContactDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re *std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_10,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_10>,void ()(re::OpenSubdivViewIndependentComputeStep *)>::operator()(re *result, re::OpenSubdivViewIndependentComputeStep **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = re::globalAllocators(result)[2];
    re::OpenSubdivViewIndependentComputeStep::~OpenSubdivViewIndependentComputeStep(v2);
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return result;
}

uint64_t std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_10,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_10>,void ()(re::OpenSubdivViewIndependentComputeStep *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void re::OpenSubdivViewIndependentComputeStep::~OpenSubdivViewIndependentComputeStep(re::OpenSubdivViewIndependentComputeStep *this)
{
  v2 = *(this + 4);
  if (v2)
  {

    *(this + 4) = 0;
  }

  v3 = *(this + 3);
  if (v3)
  {

    *(this + 3) = 0;
  }
}

{
  re::OpenSubdivViewIndependentComputeStep::~OpenSubdivViewIndependentComputeStep(this);

  JUMPOUT(0x1E6906520);
}

uint64_t std::__function::__value_func<void ()(re::OpenSubdivViewIndependentComputeStep *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(re::OpenSubdivViewIndependentComputeStep *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::function<void ()(re::OpenSubdivViewIndependentComputeStep *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return re::internal::Callable<std::function<void ()(re::OpenSubdivViewIndependentComputeStep *)>,void ()(re::OpenSubdivViewIndependentComputeStep *)>::~Callable(v3);
}

void *re::internal::Callable<std::function<void ()(re::OpenSubdivViewIndependentComputeStep *)>,void ()(re::OpenSubdivViewIndependentComputeStep *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D083B8;
  std::__function::__value_func<void ()(re::OpenSubdivViewIndependentComputeStep *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void re::internal::Callable<std::function<void ()(re::OpenSubdivViewIndependentComputeStep *)>,void ()(re::OpenSubdivViewIndependentComputeStep *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D083B8;
  std::__function::__value_func<void ()(re::OpenSubdivViewIndependentComputeStep *)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x1E6906520);
}

void *re::internal::Callable<std::function<void ()(re::OpenSubdivViewIndependentComputeStep *)>,void ()(re::OpenSubdivViewIndependentComputeStep *)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D083B8;
  v3 = a2 + 1;
  v4 = *(a1 + 32);
  if (v4)
  {
    if (v4 == a1 + 8)
    {
      a2[4] = v3;
      (*(**(a1 + 32) + 24))(*(a1 + 32));
    }

    else
    {
      a2[4] = (*(*v4 + 16))(*(a1 + 32), v3);
    }
  }

  else
  {
    a2[4] = 0;
  }

  return a2;
}

void *re::internal::Callable<std::function<void ()(re::OpenSubdivViewIndependentComputeStep *)>,void ()(re::OpenSubdivViewIndependentComputeStep *)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D083B8;
  std::__function::__value_func<void ()(re::OpenSubdivViewIndependentComputeStep *)>::__value_func[abi:nn200100]((a2 + 1), a1 + 8);
  return a2;
}

uint64_t re::FunctionBase<24ul,void ()(re::OpenSubdivViewIndependentComputeStep *)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::OpenSubdivViewIndependentComputeStep *)>::destroyCallable(a1);
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

uint64_t (***re::FunctionBase<24ul,void ()(re::OpenSubdivViewIndependentComputeStep *)>::destroyCallable(uint64_t a1))(void)
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

void *std::__function::__func<void re::DeformationManager::registerDeformer<re::OpenSubdivViewIndependentComputeStep>(std::unique_ptr<re::OpenSubdivViewIndependentComputeStep,std::function<void ()(re::OpenSubdivViewIndependentComputeStep*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::OpenSubdivViewIndependentComputeStep>(std::unique_ptr<re::OpenSubdivViewIndependentComputeStep,std::function<void ()(re::OpenSubdivViewIndependentComputeStep*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D08420;
  re::FunctionBase<24ul,void ()(re::OpenSubdivViewIndependentComputeStep *)>::destroyCallable((a1 + 1));
  return a1;
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::OpenSubdivViewIndependentComputeStep>(std::unique_ptr<re::OpenSubdivViewIndependentComputeStep,std::function<void ()(re::OpenSubdivViewIndependentComputeStep*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::OpenSubdivViewIndependentComputeStep>(std::unique_ptr<re::OpenSubdivViewIndependentComputeStep,std::function<void ()(re::OpenSubdivViewIndependentComputeStep*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D08420;
  re::FunctionBase<24ul,void ()(re::OpenSubdivViewIndependentComputeStep *)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::OpenSubdivViewIndependentComputeStep>(std::unique_ptr<re::OpenSubdivViewIndependentComputeStep,std::function<void ()(re::OpenSubdivViewIndependentComputeStep*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::OpenSubdivViewIndependentComputeStep>(std::unique_ptr<re::OpenSubdivViewIndependentComputeStep,std::function<void ()(re::OpenSubdivViewIndependentComputeStep*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D08420;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  return re::FunctionBase<24ul,void ()(re::OpenSubdivViewIndependentComputeStep *)>::operator=<24ul>((a2 + 1), a1 + 8);
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::OpenSubdivViewIndependentComputeStep>(std::unique_ptr<re::OpenSubdivViewIndependentComputeStep,std::function<void ()(re::OpenSubdivViewIndependentComputeStep*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::OpenSubdivViewIndependentComputeStep>(std::unique_ptr<re::OpenSubdivViewIndependentComputeStep,std::function<void ()(re::OpenSubdivViewIndependentComputeStep*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::destroy_deallocate(void *a1)
{
  re::FunctionBase<24ul,void ()(re::OpenSubdivViewIndependentComputeStep *)>::destroyCallable(a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::OpenSubdivViewIndependentComputeStep>(std::unique_ptr<re::OpenSubdivViewIndependentComputeStep,std::function<void ()(re::OpenSubdivViewIndependentComputeStep*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::OpenSubdivViewIndependentComputeStep>(std::unique_ptr<re::OpenSubdivViewIndependentComputeStep,std::function<void ()(re::OpenSubdivViewIndependentComputeStep*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re *std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_11,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_11>,void ()(re::OpenSubdivViewDependentComputeStep *)>::operator()(re *result, re::OpenSubdivViewDependentComputeStep **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = re::globalAllocators(result)[2];
    re::OpenSubdivViewDependentComputeStep::~OpenSubdivViewDependentComputeStep(v2);
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return result;
}

uint64_t std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_11,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_11>,void ()(re::OpenSubdivViewDependentComputeStep *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void re::OpenSubdivViewDependentComputeStep::~OpenSubdivViewDependentComputeStep(re::OpenSubdivViewDependentComputeStep *this)
{
  v2 = *(this + 6);
  if (v2)
  {

    *(this + 6) = 0;
  }

  v3 = *(this + 5);
  if (v3)
  {

    *(this + 5) = 0;
  }

  v4 = *(this + 4);
  if (v4)
  {

    *(this + 4) = 0;
  }

  v5 = *(this + 3);
  if (v5)
  {

    *(this + 3) = 0;
  }
}

{
  re::OpenSubdivViewDependentComputeStep::~OpenSubdivViewDependentComputeStep(this);

  JUMPOUT(0x1E6906520);
}

uint64_t std::__function::__value_func<void ()(re::OpenSubdivViewDependentComputeStep *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(re::OpenSubdivViewDependentComputeStep *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::function<void ()(re::OpenSubdivViewDependentComputeStep *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return re::internal::Callable<std::function<void ()(re::OpenSubdivViewDependentComputeStep *)>,void ()(re::OpenSubdivViewDependentComputeStep *)>::~Callable(v3);
}

void *re::internal::Callable<std::function<void ()(re::OpenSubdivViewDependentComputeStep *)>,void ()(re::OpenSubdivViewDependentComputeStep *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D08530;
  std::__function::__value_func<void ()(re::OpenSubdivViewDependentComputeStep *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void re::internal::Callable<std::function<void ()(re::OpenSubdivViewDependentComputeStep *)>,void ()(re::OpenSubdivViewDependentComputeStep *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D08530;
  std::__function::__value_func<void ()(re::OpenSubdivViewDependentComputeStep *)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x1E6906520);
}

void *re::internal::Callable<std::function<void ()(re::OpenSubdivViewDependentComputeStep *)>,void ()(re::OpenSubdivViewDependentComputeStep *)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D08530;
  v3 = a2 + 1;
  v4 = *(a1 + 32);
  if (v4)
  {
    if (v4 == a1 + 8)
    {
      a2[4] = v3;
      (*(**(a1 + 32) + 24))(*(a1 + 32));
    }

    else
    {
      a2[4] = (*(*v4 + 16))(*(a1 + 32), v3);
    }
  }

  else
  {
    a2[4] = 0;
  }

  return a2;
}

void *re::internal::Callable<std::function<void ()(re::OpenSubdivViewDependentComputeStep *)>,void ()(re::OpenSubdivViewDependentComputeStep *)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D08530;
  std::__function::__value_func<void ()(re::OpenSubdivViewDependentComputeStep *)>::__value_func[abi:nn200100]((a2 + 1), a1 + 8);
  return a2;
}

uint64_t re::FunctionBase<24ul,void ()(re::OpenSubdivViewDependentComputeStep *)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::OpenSubdivViewDependentComputeStep *)>::destroyCallable(a1);
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

uint64_t (***re::FunctionBase<24ul,void ()(re::OpenSubdivViewDependentComputeStep *)>::destroyCallable(uint64_t a1))(void)
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

void *std::__function::__func<void re::DeformationManager::registerDeformer<re::OpenSubdivViewDependentComputeStep>(std::unique_ptr<re::OpenSubdivViewDependentComputeStep,std::function<void ()(re::OpenSubdivViewDependentComputeStep*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::OpenSubdivViewDependentComputeStep>(std::unique_ptr<re::OpenSubdivViewDependentComputeStep,std::function<void ()(re::OpenSubdivViewDependentComputeStep*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D08598;
  re::FunctionBase<24ul,void ()(re::OpenSubdivViewDependentComputeStep *)>::destroyCallable((a1 + 1));
  return a1;
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::OpenSubdivViewDependentComputeStep>(std::unique_ptr<re::OpenSubdivViewDependentComputeStep,std::function<void ()(re::OpenSubdivViewDependentComputeStep*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::OpenSubdivViewDependentComputeStep>(std::unique_ptr<re::OpenSubdivViewDependentComputeStep,std::function<void ()(re::OpenSubdivViewDependentComputeStep*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D08598;
  re::FunctionBase<24ul,void ()(re::OpenSubdivViewDependentComputeStep *)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::OpenSubdivViewDependentComputeStep>(std::unique_ptr<re::OpenSubdivViewDependentComputeStep,std::function<void ()(re::OpenSubdivViewDependentComputeStep*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::OpenSubdivViewDependentComputeStep>(std::unique_ptr<re::OpenSubdivViewDependentComputeStep,std::function<void ()(re::OpenSubdivViewDependentComputeStep*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D08598;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  return re::FunctionBase<24ul,void ()(re::OpenSubdivViewDependentComputeStep *)>::operator=<24ul>((a2 + 1), a1 + 8);
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::OpenSubdivViewDependentComputeStep>(std::unique_ptr<re::OpenSubdivViewDependentComputeStep,std::function<void ()(re::OpenSubdivViewDependentComputeStep*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::OpenSubdivViewDependentComputeStep>(std::unique_ptr<re::OpenSubdivViewDependentComputeStep,std::function<void ()(re::OpenSubdivViewDependentComputeStep*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::destroy_deallocate(void *a1)
{
  re::FunctionBase<24ul,void ()(re::OpenSubdivViewDependentComputeStep *)>::destroyCallable(a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::OpenSubdivViewDependentComputeStep>(std::unique_ptr<re::OpenSubdivViewDependentComputeStep,std::function<void ()(re::OpenSubdivViewDependentComputeStep*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::OpenSubdivViewDependentComputeStep>(std::unique_ptr<re::OpenSubdivViewDependentComputeStep,std::function<void ()(re::OpenSubdivViewDependentComputeStep*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re *std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_12,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_12>,void ()(re::CustomDeformers *)>::operator()(re *result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = re::globalAllocators(result)[2];
    re::DynamicArray<unsigned long>::deinit(v2 + 128);
    re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit((v2 + 72));
    re::DataArray<re::CustomDeformers::CustomDeformerData>::deinit(v2 + 8);
    re::DynamicArray<unsigned long>::deinit(v2 + 8);
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return result;
}

uint64_t std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_12,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_12>,void ()(re::CustomDeformers *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(re::CustomDeformers *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(re::CustomDeformers *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::function<void ()(re::CustomDeformers *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return re::internal::Callable<std::function<void ()(re::CustomDeformers *)>,void ()(re::CustomDeformers *)>::~Callable(v3);
}

void *re::internal::Callable<std::function<void ()(re::CustomDeformers *)>,void ()(re::CustomDeformers *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D086A8;
  std::__function::__value_func<void ()(re::CustomDeformers *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void re::internal::Callable<std::function<void ()(re::CustomDeformers *)>,void ()(re::CustomDeformers *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D086A8;
  std::__function::__value_func<void ()(re::CustomDeformers *)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x1E6906520);
}

void *re::internal::Callable<std::function<void ()(re::CustomDeformers *)>,void ()(re::CustomDeformers *)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D086A8;
  v3 = a2 + 1;
  v4 = *(a1 + 32);
  if (v4)
  {
    if (v4 == a1 + 8)
    {
      a2[4] = v3;
      (*(**(a1 + 32) + 24))(*(a1 + 32));
    }

    else
    {
      a2[4] = (*(*v4 + 16))(*(a1 + 32), v3);
    }
  }

  else
  {
    a2[4] = 0;
  }

  return a2;
}

void *re::internal::Callable<std::function<void ()(re::CustomDeformers *)>,void ()(re::CustomDeformers *)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D086A8;
  std::__function::__value_func<void ()(re::CustomDeformers *)>::__value_func[abi:nn200100]((a2 + 1), a1 + 8);
  return a2;
}

uint64_t re::FunctionBase<24ul,void ()(re::CustomDeformers *)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::CustomDeformers *)>::destroyCallable(a1);
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

uint64_t (***re::FunctionBase<24ul,void ()(re::CustomDeformers *)>::destroyCallable(uint64_t a1))(void)
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

void *std::__function::__func<void re::DeformationManager::registerDeformer<re::CustomDeformers>(std::unique_ptr<re::CustomDeformers,std::function<void ()(re::CustomDeformers*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::CustomDeformers>(std::unique_ptr<re::CustomDeformers,std::function<void ()(re::CustomDeformers*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D08710;
  re::FunctionBase<24ul,void ()(re::CustomDeformers *)>::destroyCallable((a1 + 1));
  return a1;
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::CustomDeformers>(std::unique_ptr<re::CustomDeformers,std::function<void ()(re::CustomDeformers*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::CustomDeformers>(std::unique_ptr<re::CustomDeformers,std::function<void ()(re::CustomDeformers*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D08710;
  re::FunctionBase<24ul,void ()(re::CustomDeformers *)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::CustomDeformers>(std::unique_ptr<re::CustomDeformers,std::function<void ()(re::CustomDeformers*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::CustomDeformers>(std::unique_ptr<re::CustomDeformers,std::function<void ()(re::CustomDeformers*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D08710;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  return re::FunctionBase<24ul,void ()(re::CustomDeformers *)>::operator=<24ul>((a2 + 1), a1 + 8);
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::CustomDeformers>(std::unique_ptr<re::CustomDeformers,std::function<void ()(re::CustomDeformers*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::CustomDeformers>(std::unique_ptr<re::CustomDeformers,std::function<void ()(re::CustomDeformers*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::destroy_deallocate(void *a1)
{
  re::FunctionBase<24ul,void ()(re::CustomDeformers *)>::destroyCallable(a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::CustomDeformers>(std::unique_ptr<re::CustomDeformers,std::function<void ()(re::CustomDeformers*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::CustomDeformers>(std::unique_ptr<re::CustomDeformers,std::function<void ()(re::CustomDeformers*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re *std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_13,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_13>,void ()(re::FenceDeformer *)>::operator()(re *result, void *a2)
{
  if (*a2)
  {
    v2 = *(*re::globalAllocators(result)[2] + 40);

    return v2();
  }

  return result;
}

uint64_t std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_13,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_13>,void ()(re::FenceDeformer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(re::FenceDeformer *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(re::FenceDeformer *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::function<void ()(re::FenceDeformer *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return re::internal::Callable<std::function<void ()(re::FenceDeformer *)>,void ()(re::FenceDeformer *)>::~Callable(v3);
}

void *re::internal::Callable<std::function<void ()(re::FenceDeformer *)>,void ()(re::FenceDeformer *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D08820;
  std::__function::__value_func<void ()(re::FenceDeformer *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void re::internal::Callable<std::function<void ()(re::FenceDeformer *)>,void ()(re::FenceDeformer *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D08820;
  std::__function::__value_func<void ()(re::FenceDeformer *)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x1E6906520);
}

void *re::internal::Callable<std::function<void ()(re::FenceDeformer *)>,void ()(re::FenceDeformer *)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D08820;
  v3 = a2 + 1;
  v4 = *(a1 + 32);
  if (v4)
  {
    if (v4 == a1 + 8)
    {
      a2[4] = v3;
      (*(**(a1 + 32) + 24))(*(a1 + 32));
    }

    else
    {
      a2[4] = (*(*v4 + 16))(*(a1 + 32), v3);
    }
  }

  else
  {
    a2[4] = 0;
  }

  return a2;
}

void *re::internal::Callable<std::function<void ()(re::FenceDeformer *)>,void ()(re::FenceDeformer *)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D08820;
  std::__function::__value_func<void ()(re::FenceDeformer *)>::__value_func[abi:nn200100]((a2 + 1), a1 + 8);
  return a2;
}

uint64_t re::FunctionBase<24ul,void ()(re::FenceDeformer *)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::FenceDeformer *)>::destroyCallable(a1);
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

uint64_t (***re::FunctionBase<24ul,void ()(re::FenceDeformer *)>::destroyCallable(uint64_t a1))(void)
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

void *std::__function::__func<void re::DeformationManager::registerDeformer<re::FenceDeformer>(std::unique_ptr<re::FenceDeformer,std::function<void ()(re::FenceDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::FenceDeformer>(std::unique_ptr<re::FenceDeformer,std::function<void ()(re::FenceDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D08888;
  re::FunctionBase<24ul,void ()(re::FenceDeformer *)>::destroyCallable((a1 + 1));
  return a1;
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::FenceDeformer>(std::unique_ptr<re::FenceDeformer,std::function<void ()(re::FenceDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::FenceDeformer>(std::unique_ptr<re::FenceDeformer,std::function<void ()(re::FenceDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D08888;
  re::FunctionBase<24ul,void ()(re::FenceDeformer *)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::FenceDeformer>(std::unique_ptr<re::FenceDeformer,std::function<void ()(re::FenceDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::FenceDeformer>(std::unique_ptr<re::FenceDeformer,std::function<void ()(re::FenceDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D08888;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  return re::FunctionBase<24ul,void ()(re::FenceDeformer *)>::operator=<24ul>((a2 + 1), a1 + 8);
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::FenceDeformer>(std::unique_ptr<re::FenceDeformer,std::function<void ()(re::FenceDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::FenceDeformer>(std::unique_ptr<re::FenceDeformer,std::function<void ()(re::FenceDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::destroy_deallocate(void *a1)
{
  re::FunctionBase<24ul,void ()(re::FenceDeformer *)>::destroyCallable(a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::FenceDeformer>(std::unique_ptr<re::FenceDeformer,std::function<void ()(re::FenceDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::FenceDeformer>(std::unique_ptr<re::FenceDeformer,std::function<void ()(re::FenceDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re *std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_14,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_14>,void ()(re::VertexCacheDeformer *)>::operator()(re *result, re::VertexCacheDeformer **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = re::globalAllocators(result)[2];
    re::VertexCacheDeformer::~VertexCacheDeformer(v2);
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return result;
}

uint64_t std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_14,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_14>,void ()(re::VertexCacheDeformer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(re::VertexCacheDeformer *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(re::VertexCacheDeformer *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::function<void ()(re::VertexCacheDeformer *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return re::internal::Callable<std::function<void ()(re::VertexCacheDeformer *)>,void ()(re::VertexCacheDeformer *)>::~Callable(v3);
}

void *re::internal::Callable<std::function<void ()(re::VertexCacheDeformer *)>,void ()(re::VertexCacheDeformer *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D08998;
  std::__function::__value_func<void ()(re::VertexCacheDeformer *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void re::internal::Callable<std::function<void ()(re::VertexCacheDeformer *)>,void ()(re::VertexCacheDeformer *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D08998;
  std::__function::__value_func<void ()(re::VertexCacheDeformer *)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x1E6906520);
}

void *re::internal::Callable<std::function<void ()(re::VertexCacheDeformer *)>,void ()(re::VertexCacheDeformer *)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D08998;
  v3 = a2 + 1;
  v4 = *(a1 + 32);
  if (v4)
  {
    if (v4 == a1 + 8)
    {
      a2[4] = v3;
      (*(**(a1 + 32) + 24))(*(a1 + 32));
    }

    else
    {
      a2[4] = (*(*v4 + 16))(*(a1 + 32), v3);
    }
  }

  else
  {
    a2[4] = 0;
  }

  return a2;
}

void *re::internal::Callable<std::function<void ()(re::VertexCacheDeformer *)>,void ()(re::VertexCacheDeformer *)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D08998;
  std::__function::__value_func<void ()(re::VertexCacheDeformer *)>::__value_func[abi:nn200100]((a2 + 1), a1 + 8);
  return a2;
}

uint64_t re::FunctionBase<24ul,void ()(re::VertexCacheDeformer *)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::VertexCacheDeformer *)>::destroyCallable(a1);
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

uint64_t (***re::FunctionBase<24ul,void ()(re::VertexCacheDeformer *)>::destroyCallable(uint64_t a1))(void)
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

void *std::__function::__func<void re::DeformationManager::registerDeformer<re::VertexCacheDeformer>(std::unique_ptr<re::VertexCacheDeformer,std::function<void ()(re::VertexCacheDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::VertexCacheDeformer>(std::unique_ptr<re::VertexCacheDeformer,std::function<void ()(re::VertexCacheDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D08A00;
  re::FunctionBase<24ul,void ()(re::VertexCacheDeformer *)>::destroyCallable((a1 + 1));
  return a1;
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::VertexCacheDeformer>(std::unique_ptr<re::VertexCacheDeformer,std::function<void ()(re::VertexCacheDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::VertexCacheDeformer>(std::unique_ptr<re::VertexCacheDeformer,std::function<void ()(re::VertexCacheDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D08A00;
  re::FunctionBase<24ul,void ()(re::VertexCacheDeformer *)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::VertexCacheDeformer>(std::unique_ptr<re::VertexCacheDeformer,std::function<void ()(re::VertexCacheDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::VertexCacheDeformer>(std::unique_ptr<re::VertexCacheDeformer,std::function<void ()(re::VertexCacheDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D08A00;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  return re::FunctionBase<24ul,void ()(re::VertexCacheDeformer *)>::operator=<24ul>((a2 + 1), a1 + 8);
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::VertexCacheDeformer>(std::unique_ptr<re::VertexCacheDeformer,std::function<void ()(re::VertexCacheDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::VertexCacheDeformer>(std::unique_ptr<re::VertexCacheDeformer,std::function<void ()(re::VertexCacheDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::destroy_deallocate(void *a1)
{
  re::FunctionBase<24ul,void ()(re::VertexCacheDeformer *)>::destroyCallable(a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::VertexCacheDeformer>(std::unique_ptr<re::VertexCacheDeformer,std::function<void ()(re::VertexCacheDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::VertexCacheDeformer>(std::unique_ptr<re::VertexCacheDeformer,std::function<void ()(re::VertexCacheDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re *std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_15,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_15>,void ()(re::JiggleDeformer *)>::operator()(re *result, re::JiggleDeformer **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = re::globalAllocators(result)[2];
    re::JiggleDeformer::~JiggleDeformer(v2);
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return result;
}

uint64_t std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_15,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_15>,void ()(re::JiggleDeformer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void re::JiggleDeformer::~JiggleDeformer(re::JiggleDeformer *this)
{
  v2 = *(this + 25);
  if (v2)
  {

    *(this + 25) = 0;
  }

  re::BucketArray<re::JiggleDeformer::DynamicsState,64ul>::deinit(this + 144);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 144);
  re::DataArray<re::ecs2::Component *>::deinit(this + 80);
  re::DynamicArray<unsigned long>::deinit(this + 80);
  re::BucketArray<unsigned long,64ul>::deinit(this + 24);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 24);
}

{
  re::JiggleDeformer::~JiggleDeformer(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::BucketArray<re::JiggleDeformer::DynamicsState,64ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::StitchedDeformer::ComputePipelineData,64ul>::operator[](a1, i);
      v5 = *(v4 + 8);
      if (v5)
      {

        *(v4 + 8) = 0;
      }

      if (*v4)
      {

        *v4 = 0;
      }
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

uint64_t re::BucketArray<unsigned long,64ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      re::BucketArray<re::CachedMetalFunction,64ul>::operator[](a1, i);
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

uint64_t std::__function::__value_func<void ()(re::JiggleDeformer *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(re::JiggleDeformer *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::function<void ()(re::JiggleDeformer *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return re::internal::Callable<std::function<void ()(re::JiggleDeformer *)>,void ()(re::JiggleDeformer *)>::~Callable(v3);
}

void *re::internal::Callable<std::function<void ()(re::JiggleDeformer *)>,void ()(re::JiggleDeformer *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D08B10;
  std::__function::__value_func<void ()(re::JiggleDeformer *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void re::internal::Callable<std::function<void ()(re::JiggleDeformer *)>,void ()(re::JiggleDeformer *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D08B10;
  std::__function::__value_func<void ()(re::JiggleDeformer *)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x1E6906520);
}

void *re::internal::Callable<std::function<void ()(re::JiggleDeformer *)>,void ()(re::JiggleDeformer *)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D08B10;
  v3 = a2 + 1;
  v4 = *(a1 + 32);
  if (v4)
  {
    if (v4 == a1 + 8)
    {
      a2[4] = v3;
      (*(**(a1 + 32) + 24))(*(a1 + 32));
    }

    else
    {
      a2[4] = (*(*v4 + 16))(*(a1 + 32), v3);
    }
  }

  else
  {
    a2[4] = 0;
  }

  return a2;
}

void *re::internal::Callable<std::function<void ()(re::JiggleDeformer *)>,void ()(re::JiggleDeformer *)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D08B10;
  std::__function::__value_func<void ()(re::JiggleDeformer *)>::__value_func[abi:nn200100]((a2 + 1), a1 + 8);
  return a2;
}

uint64_t re::FunctionBase<24ul,void ()(re::JiggleDeformer *)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::JiggleDeformer *)>::destroyCallable(a1);
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

uint64_t (***re::FunctionBase<24ul,void ()(re::JiggleDeformer *)>::destroyCallable(uint64_t a1))(void)
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

void *std::__function::__func<void re::DeformationManager::registerDeformer<re::JiggleDeformer>(std::unique_ptr<re::JiggleDeformer,std::function<void ()(re::JiggleDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::JiggleDeformer>(std::unique_ptr<re::JiggleDeformer,std::function<void ()(re::JiggleDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D08B78;
  re::FunctionBase<24ul,void ()(re::JiggleDeformer *)>::destroyCallable((a1 + 1));
  return a1;
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::JiggleDeformer>(std::unique_ptr<re::JiggleDeformer,std::function<void ()(re::JiggleDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::JiggleDeformer>(std::unique_ptr<re::JiggleDeformer,std::function<void ()(re::JiggleDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D08B78;
  re::FunctionBase<24ul,void ()(re::JiggleDeformer *)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::JiggleDeformer>(std::unique_ptr<re::JiggleDeformer,std::function<void ()(re::JiggleDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::JiggleDeformer>(std::unique_ptr<re::JiggleDeformer,std::function<void ()(re::JiggleDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D08B78;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  return re::FunctionBase<24ul,void ()(re::JiggleDeformer *)>::operator=<24ul>((a2 + 1), a1 + 8);
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::JiggleDeformer>(std::unique_ptr<re::JiggleDeformer,std::function<void ()(re::JiggleDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::JiggleDeformer>(std::unique_ptr<re::JiggleDeformer,std::function<void ()(re::JiggleDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::destroy_deallocate(void *a1)
{
  re::FunctionBase<24ul,void ()(re::JiggleDeformer *)>::destroyCallable(a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::JiggleDeformer>(std::unique_ptr<re::JiggleDeformer,std::function<void ()(re::JiggleDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::JiggleDeformer>(std::unique_ptr<re::JiggleDeformer,std::function<void ()(re::JiggleDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void re::ReadOnlyCPUAccessibleBufferSliceContent::make(re::ReadOnlyCPUAccessibleBufferSliceContent *this@<X0>, uint64_t a2@<X8>)
{
  v5 = objc_autoreleasePoolPush();
  if ((re::BufferSlice::isValid(this) & 1) == 0)
  {
    v10 = std::system_category();
    v11 = "Buffer slice is invalid";
LABEL_5:
    v12 = v44[0];
    v13 = v44[1];
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = v10;
    *(a2 + 24) = v12;
    *(a2 + 40) = v13;
    goto LABEL_28;
  }

  if (*(this + 6) == 1)
  {
    v7 = re::BufferSlice::contents(this);
    v8 = *(this + 9);
    v39[0] = v7;
    v39[1] = v8;
    v40 = 0u;
    memset(v41, 0, 25);
    v42 = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(&v41[24], this);
    v43 = *(this + 4);
    re::ReadOnlyCPUAccessibleBufferSliceContent::ReadOnlyCPUAccessibleBufferSliceContent(v44, v39);
    *a2 = 1;
    re::ReadOnlyCPUAccessibleBufferSliceContent::ReadOnlyCPUAccessibleBufferSliceContent(a2 + 8, v44);
    re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent(v44);
    v9 = v39;
LABEL_27:
    re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent(v9);
    goto LABEL_28;
  }

  re::BufferSlice::buffer(this, v6);
  v14 = [*this iosurface];
  if (v14)
  {
    v15 = v14;
    if (IOSurfaceLock(v14, 1u, 0))
    {
LABEL_8:
      v10 = std::system_category();
      v11 = "Could not allocate ReadOnlyCPUAccessibleBufferSliceContent";
      goto LABEL_5;
    }

    BaseAddress = IOSurfaceGetBaseAddress(v15);
    v17 = *(this + 9);
    *&v44[0] = &BaseAddress[*(this + 8)];
    *(&v44[0] + 1) = v17;
    *&v44[1] = 0;
    *(&v44[1] + 1) = v15;
    v46 = 0;
    v45 = 0;
    memset(&v44[2], 0, 32);
    CFRetain(v15);
    re::ReadOnlyCPUAccessibleBufferSliceContent::ReadOnlyCPUAccessibleBufferSliceContent(v39, v44);
    *a2 = 1;
    v18 = a2 + 8;
LABEL_26:
    re::ReadOnlyCPUAccessibleBufferSliceContent::ReadOnlyCPUAccessibleBufferSliceContent(v18, v39);
    re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent(v39);
    v9 = v44;
    goto LABEL_27;
  }

  if ([*this storageMode] == 3)
  {
    v10 = std::system_category();
    v11 = "Buffer storage is memoryless";
    goto LABEL_5;
  }

  if ([*this storageMode] != 2)
  {
    v30 = [*this contents];
    v31 = *(this + 9);
    v32 = &v30[*(this + 8)];
    v33 = *this;
    *&v44[0] = v32;
    *(&v44[0] + 1) = v31;
    v46 = 0;
    v45 = 0;
    memset(&v44[1] + 8, 0, 40);
    *&v44[1] = v33;
    if (!v33)
    {
LABEL_25:
      re::ReadOnlyCPUAccessibleBufferSliceContent::ReadOnlyCPUAccessibleBufferSliceContent(v39, v44);
      *a2 = 1;
      v18 = a2 + 8;
      goto LABEL_26;
    }

    v29 = v33;
LABEL_23:

    goto LABEL_25;
  }

  if (!*(this + 9))
  {
    v46 = 0;
    v45 = 0;
    memset(v44, 0, 64);
    goto LABEL_25;
  }

  v19 = [*this device];
  if (!v19)
  {
    v10 = std::system_category();
    v11 = "No render device for private buffer.";
    goto LABEL_5;
  }

  v20 = v19;
  v21 = [v19 newCommandQueue];
  if (!v21)
  {
    v10 = std::system_category();
    v11 = "Could not create command queue to blit private storage.";
    goto LABEL_5;
  }

  v22 = v21;
  v23 = [v21 commandBuffer];
  if (!v23 || (v24 = v23, (v25 = [v23 blitCommandEncoder]) == 0) || (v26 = v25, (v27 = objc_msgSend(v20, sel_newBufferWithLength_options_, *(this + 9), 16)) == 0))
  {

    goto LABEL_8;
  }

  v28 = v27;
  [v26 copyFromBuffer:*this sourceOffset:*(this + 8) toBuffer:v27 destinationOffset:0 size:*(this + 9)];
  [v26 synchronizeResource_];
  [v26 endEncoding];
  [v24 commit];
  [v24 waitUntilCompleted];

  if ([v20 hasUnifiedMemory])
  {
    *&v44[0] = [v28 contents];
    *(&v44[0] + 1) = [v28 length];
    v46 = 0;
    v45 = 0;
    memset(&v44[1] + 8, 0, 40);
    *&v44[1] = v28;
    v29 = v28;
    goto LABEL_23;
  }

  v34 = [v28 contents];
  v35 = *(this + 9);
  *&v44[0] = v34;
  *(&v44[0] + 1) = v35;
  re::FixedArray<unsigned char>::FixedArray(&v37, v44);

  v44[1] = 0u;
  v44[2] = v37;
  v36 = v38;
  v38 = 0;
  v37 = 0uLL;
  v44[3] = v36;
  v46 = 0;
  v45 = 0;
  *&v44[0] = v36;
  *(&v44[0] + 1) = *(&v44[2] + 1);
  re::ReadOnlyCPUAccessibleBufferSliceContent::ReadOnlyCPUAccessibleBufferSliceContent(v39, v44);
  *a2 = 1;
  re::ReadOnlyCPUAccessibleBufferSliceContent::ReadOnlyCPUAccessibleBufferSliceContent(a2 + 8, v39);
  re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent(v39);
  re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent(v44);
  if (v37 && *(&v37 + 1))
  {
    (*(*v37 + 40))();
  }

LABEL_28:
  objc_autoreleasePoolPop(v5);
}

_anonymous_namespace_ *re::FixedArray<unsigned char>::FixedArray(_anonymous_namespace_ *a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  v3 = *(a2 + 8);
  if (v3)
  {
    re::FixedArray<unsigned char>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::shouldMergeVFXEffectsIntoOneWorld(re *this)
{
  v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
  {
    v9 = v1;
    v10 = v2;
    v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    if (v5)
    {
      re::Defaults::BOOLValue("enableVFXMergeEffectsIntoOneWorld", v6, v8);
      v7 = v8[1];
      if (!v8[0])
      {
        v7 = 0;
      }

      re::shouldMergeVFXEffectsIntoOneWorld(void)::kMergeVFXEffectsIntoOneWorld = v7;
      v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    }
  }

  return v3[3152];
}

uint64_t re::VFXLoadTask::VFXLoadTask(uint64_t a1, void *a2)
{
  v3 = a2;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *a1 = &unk_1F5D08BF8;
  *(a1 + 24) = 0;
  v4 = _Block_copy(v3);

  *(a1 + 32) = v4;
  *(a1 + 40) = 0;
  *(a1 + 44) = 0;
  return a1;
}

void re::VFXLoadTask::~VFXLoadTask(id *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 1);
}

{

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 1);

  JUMPOUT(0x1E6906520);
}

void re::VFXLoadRuntimeTask::~VFXLoadRuntimeTask(id *this)
{
  *this = &unk_1F5D08C28;

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 1);
}

{
  re::VFXLoadRuntimeTask::~VFXLoadRuntimeTask(this);

  JUMPOUT(0x1E6906520);
}

re::VFXManager *re::VFXManager::VFXManager(re::VFXManager *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 12) = 256;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 76) = 0u;
  *(this + 92) = 0x7FFFFFFFLL;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 34) = 0;
  *(this + 140) = 0x7FFFFFFFLL;
  *(this + 23) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 44) = 0;
  v2 = objc_alloc_init(VFXRERenderTargetInfoImpl);
  *(this + 24) = v2;

  v3 = objc_alloc_init(VFXRECachedRenderCommandEncoder);
  *(this + 25) = v3;

  *(this + 52) = 0;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0;
  return this;
}

void re::VFXManager::appendLoadRuntimeTask(dispatch_queue_t *this, re::VFXLoadRuntimeTask *a2)
{
  v4 = *(a2 + 6);
  if (*(this + 25) == 1)
  {
    objc_initWeak(&location, a2 + 8);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3321888768;
    aBlock[2] = ___ZN2re10VFXManager21appendLoadRuntimeTaskERNS_18VFXLoadRuntimeTaskE_block_invoke;
    aBlock[3] = &__block_descriptor_40_a8_32c47_ZTSN2re10ArcWeakPtrINS_18VFXLoadRuntimeTaskEEE_e5_v8__0l;
    v21 = 0;
    objc_copyWeak(&v21, &location);
    v5 = _Block_copy(aBlock);
    if (re::shouldMergeVFXEffectsIntoOneWorld(v5))
    {
      to = 0;
      objc_copyWeak(&to, &location);
      v18 = this;
      v19 = _Block_copy(v5);
      from = 0;
      objc_copyWeak(&from, &location);
      v12 = v4;
      v13 = this;
      v14 = 0;
      objc_copyWeak(&v14, &to);
      v15 = v18;
      v16 = _Block_copy(v19);
      v23 = MEMORY[0x1E69E9820];
      v24 = 3321888768;
      v25 = ___ZZN2re10VFXManager21appendLoadRuntimeTaskERNS_18VFXLoadRuntimeTaskEENK3__1cvU13block_pointerFvvEEv_block_invoke;
      v26 = &__block_descriptor_80_a8_32c76_ZTSKZN2re10VFXManager21appendLoadRuntimeTaskERNS_18VFXLoadRuntimeTaskEE3__1_e5_v8__0l;
      v27 = 0;
      objc_copyWeak(&v27, &from);
      v28 = v12;
      v29 = v13;
      v30[0] = 0;
      objc_copyWeak(v30, &v14);
      v30[1] = v15;
      v31 = _Block_copy(v16);
      v6 = _Block_copy(&v23);

      objc_destroyWeak(v30);
      v30[0] = 0;

      objc_destroyWeak(&v27);
      dispatch_async(this[4], v6);

      objc_destroyWeak(&v14);
      v14 = 0;

      objc_destroyWeak(&from);
      p_to = &to;
    }

    else
    {
      from = 0;
      objc_copyWeak(&from, &location);
      v12 = v4;
      v13 = this;
      v14 = _Block_copy(v5);
      v23 = MEMORY[0x1E69E9820];
      v24 = 3321888768;
      v25 = ___ZZN2re10VFXManager21appendLoadRuntimeTaskERNS_18VFXLoadRuntimeTaskEENK3__2cvU13block_pointerFvvEEv_block_invoke;
      v26 = &__block_descriptor_64_a8_32c76_ZTSKZN2re10VFXManager21appendLoadRuntimeTaskERNS_18VFXLoadRuntimeTaskEE3__2_e5_v8__0l;
      v27 = 0;
      objc_copyWeak(&v27, &from);
      v28 = v12;
      v29 = v13;
      v30[0] = _Block_copy(v14);
      v10 = _Block_copy(&v23);

      objc_destroyWeak(&v27);
      dispatch_async(this[4], v10);

      p_to = &from;
    }

    objc_destroyWeak(p_to);

    objc_destroyWeak(&v21);
    v21 = 0;
    objc_destroyWeak(&location);
  }

  else
  {
    os_unfair_lock_lock(a2 + 10);
    v8 = *(a2 + 24);
    os_unfair_lock_unlock(a2 + 10);
    if ((v8 & 1) == 0)
    {
      v9 = [v4 copy];
      re::ObjCObject::operator=(a2 + 7, v9);

      (*(*(a2 + 4) + 16))();
    }
  }
}

void ___ZN2re10VFXManager21appendLoadRuntimeTaskERNS_18VFXLoadRuntimeTaskE_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 8);
    os_unfair_lock_opaque = v2[4]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v2 + 8);
    if ((os_unfair_lock_opaque & 1) == 0)
    {
      (*(*&v2[6]._os_unfair_lock_opaque + 16))();
    }
  }
}

void re::VFXManager::appendLoadLegacyRuntimeTask(dispatch_queue_t *this, re::VFXLoadRuntimeTask *a2)
{
  v4 = *(a2 + 6);
  if (*(this + 25) == 1)
  {
    objc_initWeak(&location, a2 + 8);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3321888768;
    aBlock[2] = ___ZN2re10VFXManager27appendLoadLegacyRuntimeTaskERNS_18VFXLoadRuntimeTaskE_block_invoke;
    aBlock[3] = &__block_descriptor_40_a8_32c47_ZTSN2re10ArcWeakPtrINS_18VFXLoadRuntimeTaskEEE_e5_v8__0l;
    v20 = 0;
    objc_copyWeak(&v20, &location);
    v5 = _Block_copy(aBlock);
    v14 = 0;
    objc_copyWeak(&v14, &location);
    *&v15 = this;
    *(&v15 + 1) = this;
    v16 = v4;
    v17 = this;
    v18 = _Block_copy(v5);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3321888768;
    v22[2] = ___ZZN2re10VFXManager27appendLoadLegacyRuntimeTaskERNS_18VFXLoadRuntimeTaskEENK3__1cvU13block_pointerFvvEEv_block_invoke;
    v22[3] = &__block_descriptor_80_a8_32c82_ZTSKZN2re10VFXManager27appendLoadLegacyRuntimeTaskERNS_18VFXLoadRuntimeTaskEE3__1_e5_v8__0l;
    v23 = 0;
    objc_copyWeak(&v23, &v14);
    v24 = v15;
    v25 = v16;
    v26 = v17;
    v27 = _Block_copy(v18);
    v6 = _Block_copy(v22);

    objc_destroyWeak(&v23);
    dispatch_async(this[4], v6);

    objc_destroyWeak(&v14);
    objc_destroyWeak(&v20);
    v20 = 0;
    objc_destroyWeak(&location);
  }

  else
  {
    os_unfair_lock_lock(a2 + 10);
    v7 = *(a2 + 24);
    os_unfair_lock_unlock(a2 + 10);
    if ((v7 & 1) == 0)
    {
      VFXSceneLoadOptionsClass = re::getVFXSceneLoadOptionsClass(v8);
      VFXRESceneClass = re::getVFXRESceneClass(VFXSceneLoadOptionsClass);
      v11 = 0;
      if (VFXSceneLoadOptionsClass)
      {
        v12 = VFXRESceneClass;
        if (VFXRESceneClass)
        {
          v13 = objc_alloc_init(VFXSceneLoadOptionsClass);
          [v13 setEnableRuntimeScriptCompilation:*(this + 24)];
          v11 = [[v12 alloc] initWithCommandQueue:*this model:v4 options:v13];
        }
      }

      re::ObjCObject::operator=(a2 + 7, v11);

      (*(*(a2 + 4) + 16))();
    }
  }
}

void ___ZN2re10VFXManager27appendLoadLegacyRuntimeTaskERNS_18VFXLoadRuntimeTaskE_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 8);
    os_unfair_lock_opaque = v2[4]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v2 + 8);
    if ((os_unfair_lock_opaque & 1) == 0)
    {
      (*(*&v2[6]._os_unfair_lock_opaque + 16))();
    }
  }
}

void re::VFXManager::makeScheduledLoadRuntimeTask(dispatch_queue_t *a1@<X0>, re *a2@<X1>, void *a3@<X2>, re::VFXLoadRuntimeTask **a4@<X8>)
{
  v7 = a3;
  re::make::shared::object<re::VFXLoadRuntimeTask,re::ObjCObject &,void({block_pointer} {__strong}&)(re::VFXLoadTask &)>(a2, &v7, a4);
  re::VFXManager::appendLoadRuntimeTask(a1, *a4);
}

void re::VFXManager::makeScheduledLoadLegacyRuntimeTask(dispatch_queue_t *a1@<X0>, re *a2@<X1>, void *a3@<X2>, re::VFXLoadRuntimeTask **a4@<X8>)
{
  v7 = a3;
  re::make::shared::object<re::VFXLoadRuntimeTask,re::ObjCObject &,void({block_pointer} {__strong}&)(re::VFXLoadTask &)>(a2, &v7, a4);
  re::VFXManager::appendLoadLegacyRuntimeTask(a1, *a4);
}

void re::VFXManager::loadWorld(void *a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v7 = a1;
  v8 = a2;
  VFXWorldClass = re::getVFXWorldClass(v8);
  if (VFXWorldClass)
  {
    v10 = [(objc_class *)VFXWorldClass worldWithURL:v7 options:v8 error:a3];
    *a4 = v10;
  }

  else
  {
    if ((atomic_exchange(&re::VFXManager::loadWorld(NSURL *,NSDictionary *,NSError * {__autoreleasing}*)::__FILE____LINE___logged, 1u) & 1) == 0)
    {
      v11 = *re::graphicsLogObjects(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "VFX framework is not loaded", v12, 2u);
      }
    }

    *a4 = 0;
  }
}

void re::VFXManager::loadWorld(void *a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  v5 = v9 = a1;
  v6 = v5;
  if (v5)
  {
    re::VFXManager::loadWorld(v9, v5, a2, &v10);
    v7 = v10;

    if (*a2)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }

    *a3 = v8;
  }

  else
  {
    *a3 = 0;
  }
}

id re::anonymous namespace::vfxWorldInitOptionsForRE(re::_anonymous_namespace_ *this)
{
  v1 = re::getVFXWorldInitOptionForREOptionKey(this);
  if (v1)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3 = [MEMORY[0x1E696AD98] numberWithInt:1];
    [v2 setValue:v3 forKey:v1];
  }

  else
  {
    {
      v4 = *re::graphicsLogObjects(0);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "VFX framework misses VFXWorldInitOptionForREOptionKey", v6, 2u);
      }
    }

    v2 = 0;
  }

  return v2;
}

void re::VFXManager::prepareWorld(re *a1, id *a2)
{
  VFXRendererClass = re::getVFXRendererClass(a1);
  VFXTransactionClass = re::getVFXTransactionClass(VFXRendererClass);
  if (VFXRendererClass && (v6 = VFXTransactionClass) != 0)
  {
    [(objc_class *)VFXTransactionClass flush];
    v7 = *a2;
    v8 = re::getVFXRendererInitOptionForREOptionKey(v7);
    if (v8)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v10 = [MEMORY[0x1E696AD98] numberWithInt:1];
      [v9 setValue:v10 forKey:v8];

      v11 = [VFXRendererClass rendererWithCommandQueue:*(a1 + 1) options:v9];
      [v11 setRendererKind:6];
      [v11 setWorld:v7];
      [(re *)v7 prepareWithRenderer:v11];
      [(objc_class *)v6 flush];
    }

    else if ((atomic_exchange(byte_1EE1B9B82, 1u) & 1) == 0)
    {
      v13 = *re::graphicsLogObjects(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "VFX framework misses VFXRendererInitOptionForREOptionKey", v14, 2u);
      }
    }
  }

  else if ((atomic_exchange(&unk_1EE1B9B81, 1u) & 1) == 0)
  {
    v12 = *re::graphicsLogObjects(VFXTransactionClass);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "VFX framework is not loaded", buf, 2u);
    }
  }
}

void re::VFXManager::loadAndPrepareWorld(re *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = v7 = a2;
  v9 = v8;
  if (v8)
  {
    re::VFXManager::loadWorld(v7, v8, a3, &v38);
    v10 = v38;

    if (*a3)
    {
      *a4 = 0;
    }

    else
    {
      if (re::shouldMergeVFXEffectsIntoOneWorld(v11))
      {
        v12 = v10;
        v37 = v12;
        re::VFXManager::prepareWorld(a1, &v37);
      }

      else
      {
        v13 = [v10 rootNode];
        v14 = [v13 childNodes];
        v15 = [v14 copy];

        VFXNodeClass = re::getVFXNodeClass(v16);
        if (!VFXNodeClass)
        {
          *a4 = 0;

          goto LABEL_17;
        }

        v18 = VFXNodeClass;
        v19 = objc_alloc_init(VFXNodeClass);
        v20 = objc_alloc_init(v18);
        v29 = v13;
        [v13 addChildNode:v19];
        v28 = v19;
        [v19 addChildNode:v20];
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v21 = v15;
        v22 = [v21 countByEnumeratingWithState:&v33 objects:v39 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v34;
          do
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v34 != v24)
              {
                objc_enumerationMutation(v21);
              }

              [v20 addChildNode:*(*(&v33 + 1) + 8 * i)];
            }

            v23 = [v21 countByEnumeratingWithState:&v33 objects:v39 count:16];
          }

          while (v23);
        }

        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = ___ZN2re10VFXManager19loadAndPrepareWorldEP5NSURLPU15__autoreleasingP7NSError_block_invoke;
        v31[3] = &unk_1E871FCA8;
        v32 = v28;
        v26 = v28;
        [v20 enumerateChildNodesUsingBlock:v31];
        v27 = v10;
        v30 = v27;
        re::VFXManager::prepareWorld(a1, &v30);
      }

      *a4 = v10;
    }

LABEL_17:

    goto LABEL_18;
  }

  *a4 = 0;
LABEL_18:
}

void ___ZN2re10VFXManager19loadAndPrepareWorldEP5NSURLPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 particleEmitter];
  if (v3)
  {
    v5 = v3;
    v4 = [v3 anchor];

    v3 = v5;
    if (!v4)
    {
      [v5 setAnchor:*(a1 + 32)];
      v3 = v5;
    }
  }
}

void re::VFXManager::createRuntimeWorld(re::VFXManager *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v23 = a2;
  v5 = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 56, &v23);
  if (v5)
  {
    *a3 = *v5;
  }

  else
  {
    VFXREWorldSimulationClass = re::getVFXREWorldSimulationClass(0);
    VFXWorldClass = re::getVFXWorldClass(VFXREWorldSimulationClass);
    if (VFXREWorldSimulationClass && (v8 = VFXWorldClass) != 0)
      v9 = {;
      if (v9)
      {
        v10 = [[v8 alloc] initWithOptions:v9];
        v11 = [[VFXREWorldSimulationClass alloc] initWithCommandQueue:*this];
        [v11 setWorld:v10];
        v12 = [v11 world];
        v18 = v12;
        v13 = [v11 pointOfView];
        v19 = v13;
        v14 = v11;
        v20 = v14;
        v21 = 0;
        v22 = 0;
        v15 = re::HashTable<unsigned long long,re::VFXManager::VFXRuntimeData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(this + 56, &v23, &v18);

        v16 = *v15;
      }

      else
      {
        v16 = 0;
      }

      *a3 = v16;
    }

    else
    {
      if ((atomic_exchange(&re::VFXManager::createRuntimeWorld(unsigned long long)::__FILE____LINE___logged, 1u) & 1) == 0)
      {
        v17 = *re::graphicsLogObjects(VFXWorldClass);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v18) = 0;
          _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_DEFAULT, "VFX framework is not loaded", &v18, 2u);
        }
      }

      *a3 = 0;
    }
  }
}

unint64_t re::HashTable<unsigned long long,re::VFXManager::VFXRuntimeData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(uint64_t a1, void *a2, uint64_t *a3)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v13);
  if (HIDWORD(v14) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + (HIDWORD(v14) << 6) + 16;
  }

  v7 = re::HashTable<unsigned long long,re::VFXManager::VFXRuntimeData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v14, v13);
  *(v7 + 8) = *a2;
  v8 = *a3;
  *a3 = 0;
  *(v7 + 16) = v8;
  result = v7 + 16;
  v10 = a3[1];
  a3[1] = 0;
  *(result + 8) = v10;
  v11 = a3[2];
  a3[2] = 0;
  *(result + 16) = v11;
  v12 = a3[3];
  *(result + 32) = *(a3 + 8);
  *(result + 24) = v12;
  ++*(a1 + 40);
  return result;
}

void re::VFXManager::registerRuntimeWorld(void *a1, uint64_t a2, id *a3)
{
  v18 = a2;
  if (!re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet((a1 + 7), &v18))
  {
    VFXREWorldSimulationClass = re::getVFXREWorldSimulationClass(0);
    if (VFXREWorldSimulationClass)
    {
      v6 = VFXREWorldSimulationClass;
      v7 = *a3;
      v8 = [[v6 alloc] initWithCommandQueue:*a1];
      [v8 setWorld:v7];

      v9 = [v8 world];
      v13 = v9;
      v10 = [v8 pointOfView];
      v14 = v10;
      v11 = v8;
      v15 = v11;
      v16 = 0;
      v17 = 0;
      re::HashTable<unsigned long long,re::VFXManager::VFXRuntimeData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add((a1 + 7), &v18, &v13);
    }

    else if ((atomic_exchange(re::VFXManager::registerRuntimeWorld(unsigned long long,re::ObjCObject)::__FILE____LINE___logged, 1u) & 1) == 0)
    {
      v12 = *re::graphicsLogObjects(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "VFX framework is not loaded", &v13, 2u);
      }
    }
  }
}

unint64_t re::VFXManager::registerEffect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a2;
  result = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 56, a3);
  if (result)
  {
    v6 = result;
    result = re::HashTable<unsigned long,re::AssetMap::ConfigurationEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(a1 + 104, &v7);
    if (result)
    {
      *(result + 24) = 1;
    }

    else
    {
      *(a3 + 24) = 1;
      result = re::HashTable<unsigned long long,re::VFXManager::VFXEffectData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(a1 + 104, &v7, a3);
    }

    ++*(v6 + 32);
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::VFXManager::VFXEffectData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long,re::AssetMap::ConfigurationEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::findEntry<unsigned long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v11);
  if (HIDWORD(v12) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 56 * HIDWORD(v12) + 16;
  }

  v7 = re::HashTable<unsigned long long,re::VFXManager::VFXEffectData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v12, v11);
  *(v7 + 8) = *a2;
  *(v7 + 16) = *a3;
  result = v7 + 16;
  v9 = *(a3 + 8);
  *(a3 + 8) = 0;
  *(result + 8) = v9;
  v10 = *(a3 + 16);
  *(a3 + 16) = 0;
  *(result + 16) = v10;
  *(result + 24) = *(a3 + 24);
  ++*(a1 + 40);
  return result;
}

void *re::VFXManager::unRegisterEffect(re::VFXManager *this, uint64_t a2)
{
  v5 = a2;
  result = re::HashTable<unsigned long,re::AssetMap::ConfigurationEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(this + 104, &v5);
  if (result)
  {
    *(result + 24) = 0;
    v4 = *result;
    result = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 56, &v4);
    if (result)
    {
      --*(result + 8);
      return re::DynamicArray<re::TransitionCondition *>::add(this + 19, &v5);
    }
  }

  return result;
}

uint64_t re::VFXManager::doRemoveEffects(uint64_t this)
{
  v1 = this;
  v2 = *(this + 168);
  if (v2)
  {
    v3 = *(this + 184);
    v4 = 8 * v2;
    do
    {
      v11 = *v3;
      this = re::HashTable<unsigned long,re::AssetMap::ConfigurationEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(v1 + 104, &v11);
      if (this)
      {
        v5 = this;
        if ((*(this + 24) & 1) == 0)
        {
          v10 = *this;
          this = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v1 + 56, &v10);
          if (this)
          {
            if (*(this + 32) < 1)
            {
              re::HashTable<unsigned long long,re::VFXManager::VFXRuntimeData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(v1 + 56, &v10);
            }

            else
            {
              v6 = *(v5 + 8);
              v7 = v6;
              v8 = *(v5 + 16);
              v9 = v6;
              [v9 removeFromParentNode];
              [v8 removeFromParent];
            }

            this = re::HashTable<unsigned long long,re::VFXManager::VFXEffectData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(v1 + 104, &v11);
          }
        }
      }

      ++v3;
      v4 -= 8;
    }

    while (v4);
  }

  *(v1 + 168) = 0;
  ++*(v1 + 176);
  return this;
}

BOOL re::HashTable<unsigned long long,re::VFXManager::VFXRuntimeData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return re::HashTable<unsigned long long,re::VFXManager::VFXRuntimeData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::removeInternal(a1, v5);
}

BOOL re::HashTable<unsigned long long,re::VFXManager::VFXEffectData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long,re::AssetMap::ConfigurationEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::findEntry<unsigned long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return re::HashTable<unsigned long long,re::VFXManager::VFXEffectData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::removeInternal(a1, v5);
}

void re::VFXManager::addCamera(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = a2;
  v4 = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 56, &v7);
  if (v4)
  {
    v5 = *a3;
    v6 = *(v4 + 16);
    [v6 addSecondaryPointOfView:v5];
  }
}

void re::VFXManager::removeCamera(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = a2;
  v4 = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 56, &v7);
  if (v4)
  {
    v5 = *a3;
    v6 = *(v4 + 16);
    [v6 removeSecondaryPointOfView:v5];
  }
}

void re::VFXManager::beginFrame(re::VFXManager *this, unint64_t a2)
{
  v4 = *(this + 22);
  if (v4)
  {
    v5 = 0;
    v6 = *(this + 9);
    while (1)
    {
      v7 = *v6;
      v6 += 16;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(this + 22);
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
    v8 = *(this + 22);
    do
    {
      v9 = *(this + 9) + (v5 << 6);
      if (*(v9 + 40) >= a2)
      {
        atomic_store(a2, this + 29);
        *(this + 248) = 1;
        v10 = *(this + 25);
        v11 = v10;
        v12 = *(v9 + 32);
        v13 = v12;
        v14 = v10;
        [v12 beginFrameWithEncoder:v14 frameIndex:a2];

        v8 = *(this + 22);
      }

      if (v8 <= v5 + 1)
      {
        v15 = v5 + 1;
      }

      else
      {
        v15 = v8;
      }

      while (v15 - 1 != v5)
      {
        LODWORD(v5) = v5 + 1;
        if ((*(*(this + 9) + (v5 << 6)) & 0x80000000) != 0)
        {
          goto LABEL_19;
        }
      }

      LODWORD(v5) = v15;
LABEL_19:
      ;
    }

    while (v5 != v4);
  }
}

uint64_t re::VFXManager::endFrame(uint64_t this, unint64_t a2)
{
  if (*(this + 248) == 1)
  {
    v3 = this;
    v4 = *(this + 88);
    if (v4)
    {
      v5 = 0;
      v6 = *(this + 72);
      while (1)
      {
        v7 = *v6;
        v6 += 16;
        if (v7 < 0)
        {
          break;
        }

        if (v4 == ++v5)
        {
          LODWORD(v5) = *(this + 88);
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
      v8 = *(this + 88);
      do
      {
        v9 = *(v3 + 72) + (v5 << 6);
        if (*(v9 + 40) >= a2)
        {
          this = [*(v9 + 32) endFrame];
          v8 = *(v3 + 88);
        }

        if (v8 <= v5 + 1)
        {
          v10 = v5 + 1;
        }

        else
        {
          v10 = v8;
        }

        while (v10 - 1 != v5)
        {
          LODWORD(v5) = v5 + 1;
          if ((*(*(v3 + 72) + (v5 << 6)) & 0x80000000) != 0)
          {
            goto LABEL_20;
          }
        }

        LODWORD(v5) = v10;
LABEL_20:
        ;
      }

      while (v5 != v4);
    }

    *(v3 + 248) = 0;
  }

  return this;
}

id *re::VFXManager::init(id *this, id *a2)
{
  v11 = 0x100000001;
  v12 = 0;
  v13 = 0;
  re::dispatch::Queue::make("VFXRuntimeLoadingQueue", &v11, &v14);
  v4 = this + 4;
  if (this + 4 != &v14)
  {
    v5 = v14;
    v14 = 0;
    v6 = *v4;
    *v4 = v5;
  }

  v11 = 0x100000001;
  v12 = 0;
  v13 = 0;
  re::dispatch::Queue::make("VFXDispatchRuntimeMergeQueue", &v11, &v14);
  v7 = this + 5;
  if (this + 5 != &v14)
  {
    v8 = v14;
    v14 = 0;
    v9 = *v7;
    *v7 = v8;
  }

  return re::ObjCObject::operator=(this + 6, a2);
}

void re::VFXManager::setRenderManager(id *location, _BYTE *a2)
{
  location[2] = a2;
  if (a2 && a2[205] == 1)
  {
    v16 = v2;
    v17 = v3;
    if ((atomic_load_explicit(&qword_1EE1B9B88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B9B88))
    {
      re::Defaults::BOOLValue("enableVFXUseRERenderCommandQueue", v13, v15);
      if (v15[0])
      {
        v14 = v15[1];
      }

      else
      {
        v14 = 1;
      }

      _MergedGlobals_457 = v14;
      __cxa_guard_release(&qword_1EE1B9B88);
    }

    v5 = location[2];
    if (_MergedGlobals_457 == 1)
    {
      v6 = *(v5 + 14);
      if (v6)
      {
        re::ObjCObject::operator=(location, (v6 + 280));
      }
    }

    else
    {
      v7 = [*(v5 + 26) newCommandQueue];

      v8 = *location;
      *location = v7;

      v9 = @"VFX Render";
      [*location setLabel:@"VFX Render"];
    }

    v10 = [*(location[2] + 26) newCommandQueue];

    v11 = location[1];
    location[1] = v10;

    v12 = @"VFX Prepare";
    [location[1] setLabel:@"VFX Prepare"];
  }
}

void *re::allocInfo_VFXManager(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B9B90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B9B90))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B9B98, "VFXManager");
    __cxa_guard_release(&qword_1EE1B9B90);
  }

  return &unk_1EE1B9B98;
}

void re::initInfo_VFXManager(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x109929CB96DDCALL;
  v6[1] = "VFXManager";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x10000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::initInfo_VFXManager(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::VFXManager>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::VFXManager>;
  *(this + 13) = re::internal::defaultConstructV2<re::VFXManager>;
  *(this + 14) = re::internal::defaultDestructV2<re::VFXManager>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::internal::defaultDestruct<re::VFXManager>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a3 + 152);
  re::HashTable<unsigned long long,re::VFXManager::VFXEffectData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit((a3 + 104));
  re::HashTable<unsigned long long,re::VFXManager::VFXRuntimeData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit((a3 + 56));

  v4 = *a3;
}

void re::internal::defaultDestructV2<re::VFXManager>(uint64_t a1)
{
  re::DynamicArray<unsigned long>::deinit(a1 + 152);
  re::HashTable<unsigned long long,re::VFXManager::VFXEffectData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit((a1 + 104));
  re::HashTable<unsigned long long,re::VFXManager::VFXRuntimeData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit((a1 + 56));

  v2 = *a1;
}

void ___ZZN2re10VFXManager21appendLoadRuntimeTaskERNS_18VFXLoadRuntimeTaskEENK3__1cvU13block_pointerFvvEEv_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 8);
    os_unfair_lock_opaque = v3[4]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v3 + 8);
    if ((os_unfair_lock_opaque & 1) == 0)
    {
      v5 = [*(a1 + 40) copy];
      re::ObjCObject::operator=(&v3[12], v5);

      v6 = *(a1 + 48);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3321888768;
      aBlock[2] = ___ZZN2re10VFXManager21appendLoadRuntimeTaskERNS_18VFXLoadRuntimeTaskEENK3__0cvU13block_pointerFvvEEv_block_invoke;
      aBlock[3] = &__block_descriptor_56_a8_32c76_ZTSKZN2re10VFXManager21appendLoadRuntimeTaskERNS_18VFXLoadRuntimeTaskEE3__0_e5_v8__0l;
      v10[0] = 0;
      objc_copyWeak(v10, (a1 + 56));
      v7 = *(a1 + 72);
      v10[1] = *(a1 + 64);
      v11 = _Block_copy(v7);
      v8 = _Block_copy(aBlock);

      objc_destroyWeak(v10);
      dispatch_async(*(v6 + 40), v8);
    }
  }
}

void *__copy_helper_block_a8_32c76_ZTSKZN2re10VFXManager21appendLoadRuntimeTaskERNS_18VFXLoadRuntimeTaskEE3__1(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  *(a1 + 32) = 0;
  objc_copyWeak((a1 + 32), (a2 + 32));
  v4 = *(a2 + 40);
  *(v3 + 56) = 0;
  v3 += 56;
  v5 = *(a2 + 48);
  *(v3 - 16) = v4;
  *(v3 - 8) = v5;
  objc_copyWeak(v3, (a2 + 56));
  v6 = *(a2 + 72);
  *(v3 + 8) = *(a2 + 64);
  result = _Block_copy(v6);
  *(v3 + 16) = result;
  return result;
}

void __destroy_helper_block_a8_32c76_ZTSKZN2re10VFXManager21appendLoadRuntimeTaskERNS_18VFXLoadRuntimeTaskEE3__1(id *a1)
{
  objc_destroyWeak(a1 + 7);
  a1[7] = 0;

  objc_destroyWeak(a1 + 4);
  a1[4] = 0;
}

void ___ZZN2re10VFXManager21appendLoadRuntimeTaskERNS_18VFXLoadRuntimeTaskEENK3__0cvU13block_pointerFvvEEv_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 8);
    os_unfair_lock_opaque = v3[4]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v3 + 8);
    if ((os_unfair_lock_opaque & 1) == 0)
    {
      v5 = atomic_load((*(a1 + 40) + 240));
      v6 = atomic_load((*(a1 + 40) + 232));
      if (v5 >= v6)
      {
        usleep(0x64u);
      }

      v7 = *(a1 + 40);
      v8 = (v7 + 240);
      v9 = atomic_load((v7 + 232));
      atomic_store(v9, v8);
      dispatch_async(*(*(a1 + 40) + 48), *(a1 + 48));
    }
  }
}

void *__copy_helper_block_a8_32c76_ZTSKZN2re10VFXManager21appendLoadRuntimeTaskERNS_18VFXLoadRuntimeTaskEE3__0(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  v3 = a1 + 32;
  objc_copyWeak((a1 + 32), (a2 + 32));
  v4 = *(a2 + 48);
  *(v3 + 8) = *(a2 + 40);
  result = _Block_copy(v4);
  *(v3 + 16) = result;
  return result;
}

void ___ZZN2re10VFXManager21appendLoadRuntimeTaskERNS_18VFXLoadRuntimeTaskEENK3__2cvU13block_pointerFvvEEv_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 8);
    os_unfair_lock_opaque = v3[4]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v3 + 8);
    if ((os_unfair_lock_opaque & 1) == 0)
    {
      re::ObjCObject::operator=(&v3[12], *(a1 + 40));
      dispatch_async(*(*(a1 + 48) + 48), *(a1 + 56));
    }
  }
}

void *__copy_helper_block_a8_32c76_ZTSKZN2re10VFXManager21appendLoadRuntimeTaskERNS_18VFXLoadRuntimeTaskEE3__2(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  v3 = (a1 + 32);
  objc_copyWeak((a1 + 32), (a2 + 32));
  v4 = *(a2 + 40);
  v6 = *(a2 + 48);
  v5 = *(a2 + 56);
  v3[1] = v4;
  v3[2] = v6;
  result = _Block_copy(v5);
  v3[3] = result;
  return result;
}

void ___ZZN2re10VFXManager27appendLoadLegacyRuntimeTaskERNS_18VFXLoadRuntimeTaskEENK3__1cvU13block_pointerFvvEEv_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 8);
    os_unfair_lock_opaque = v3[4]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v3 + 8);
    if ((os_unfair_lock_opaque & 1) == 0)
    {
      v6 = *(a1 + 40);
      VFXSceneLoadOptionsClass = re::getVFXSceneLoadOptionsClass(v5);
      VFXRESceneClass = re::getVFXRESceneClass(VFXSceneLoadOptionsClass);
      v9 = 0;
      if (VFXSceneLoadOptionsClass)
      {
        v10 = VFXRESceneClass;
        if (VFXRESceneClass)
        {
          v11 = objc_alloc_init(VFXSceneLoadOptionsClass);
          [v11 setEnableRuntimeScriptCompilation:*(v6 + 24)];
          v9 = [[v10 alloc] initWithCommandQueue:**(a1 + 48) model:*(a1 + 56) options:v11];
        }
      }

      re::ObjCObject::operator=(&v3[12], v9);

      dispatch_async(*(*(a1 + 64) + 48), *(a1 + 72));
    }
  }
}

void *__copy_helper_block_a8_32c82_ZTSKZN2re10VFXManager27appendLoadLegacyRuntimeTaskERNS_18VFXLoadRuntimeTaskEE3__1(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  v3 = a1 + 32;
  objc_copyWeak((a1 + 32), (a2 + 32));
  *(v3 + 8) = *(a2 + 40);
  v4 = *(a2 + 56);
  v6 = *(a2 + 64);
  v5 = *(a2 + 72);
  *(v3 + 24) = v4;
  *(v3 + 32) = v6;
  result = _Block_copy(v5);
  *(v3 + 40) = result;
  return result;
}

void re::make::shared::object<re::VFXLoadRuntimeTask,re::ObjCObject &,void({block_pointer} {__strong}&)(re::VFXLoadTask &)>(re *a1@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  v6 = re::globalAllocators(a1);
  v7 = (*(*v6[2] + 32))(v6[2], 64, 8);
  v8 = *a1;
  re::VFXLoadTask::VFXLoadTask(v7, *a2);
  *v7 = &unk_1F5D08C28;
  v9 = v8;
  v7[6] = v9;
  v7[7] = 0;
  *a3 = v7;
}

uint64_t re::HashTable<unsigned long long,re::VFXManager::VFXRuntimeData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
            v18 = (v13 + 32);
            do
            {
              if ((*(v18 - 4) & 0x80000000) != 0)
              {
                v19 = re::HashTable<unsigned long long,re::VFXManager::VFXRuntimeData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v18[3] % *(a1 + 24));
                *(v19 + 8) = *(v18 - 3);
                v20 = *(v18 - 2);
                *(v18 - 2) = 0;
                *(v19 + 16) = v20;
                v21 = *(v18 - 1);
                *(v18 - 1) = 0;
                *(v19 + 24) = v21;
                v22 = *v18;
                *v18 = 0;
                *(v19 + 32) = v22;
                v23 = v18[1];
                *(v19 + 48) = *(v18 + 4);
                *(v19 + 40) = v23;
              }

              v18 += 8;
              ++v17;
            }

            while (v17 < v16);
          }

          re::HashTable<unsigned long long,re::VFXManager::VFXRuntimeData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v30);
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

void re::HashTable<unsigned long long,re::VFXManager::VFXRuntimeData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(uint64_t a1, unsigned int a2)
{
  v2 = a1 + (a2 << 6);
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;

    v3 = *(v2 + 16);
  }
}

uint64_t re::HashTable<unsigned long long,re::VFXManager::VFXEffectData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v28, v9, v8);
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
            v18 = (v13 + 24);
            do
            {
              if ((*(v18 - 3) & 0x80000000) != 0)
              {
                v19 = re::HashTable<unsigned long long,re::VFXManager::VFXEffectData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v18[3] % *(a1 + 24));
                *(v19 + 8) = *(v18 - 2);
                *(v19 + 16) = *(v18 - 1);
                v20 = *v18;
                *v18 = 0;
                *(v19 + 24) = v20;
                v21 = v18[1];
                v18[1] = 0;
                *(v19 + 32) = v21;
                *(v19 + 40) = *(v18 + 16);
              }

              ++v17;
              v18 += 7;
            }

            while (v17 < v16);
          }

          re::HashTable<unsigned long long,re::VFXManager::VFXEffectData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v28);
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
    v23 = *(v22 + 56 * v5);
  }

  else
  {
    v22 = *(a1 + 16);
    v23 = *(v22 + 56 * v5);
    *(a1 + 36) = v23 & 0x7FFFFFFF;
  }

  v25 = v22 + 56 * v5;
  *v25 = v23 | 0x80000000;
  v26 = *(a1 + 8);
  *v25 = *(v26 + 4 * a2) | 0x80000000;
  *(v26 + 4 * a2) = v5;
  *(v25 + 48) = a3;
  ++*(a1 + 28);
  return v22 + 56 * v5;
}

void re::HashTable<unsigned long long,re::VFXManager::VFXEffectData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(uint64_t a1, unsigned int a2)
{
  v2 = a1 + 56 * a2;
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;

    v3 = *(v2 + 24);
  }
}

BOOL re::HashTable<unsigned long long,re::VFXManager::VFXRuntimeData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v5 = a2[4];
    v6 = *(a1 + 16);
    v7 = *(v6 + (v2 << 6)) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v7;
      v8 = a2[3];
    }

    else
    {
      *(v6 + (v5 << 6)) = *(v6 + (v5 << 6)) & 0x80000000 | v7;
      v8 = v2;
    }

    re::HashTable<unsigned long long,re::VFXManager::VFXRuntimeData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(v6, v8);
    v9 = a2[3];
    v10 = *(a1 + 40);
    *(*(a1 + 16) + (v9 << 6)) = *(*(a1 + 16) + (v9 << 6)) & 0x80000000 | *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v10 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

BOOL re::HashTable<unsigned long long,re::VFXManager::VFXEffectData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v5 = a2[4];
    v6 = *(a1 + 16);
    v7 = *(v6 + 56 * v2) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v7;
      v8 = a2[3];
    }

    else
    {
      *(v6 + 56 * v5) = *(v6 + 56 * v5) & 0x80000000 | v7;
      v8 = v2;
    }

    re::HashTable<unsigned long long,re::VFXManager::VFXEffectData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(v6, v8);
    v9 = a2[3];
    v10 = *(a1 + 40);
    *(*(a1 + 16) + 56 * v9) = *(*(a1 + 16) + 56 * v9) & 0x80000000 | *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v10 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

uint64_t re::DataArray<re::DisplayStatsManager::MetricState>::deinit(uint64_t result)
{
  v40 = *MEMORY[0x1E69E9840];
  if (!*(result + 44))
  {
    return result;
  }

  v4 = result;
  v24 = result;
  if (*(result + 40))
  {
    LODWORD(v25) = 0;
    if (!*(result + 16))
    {
      goto LABEL_50;
    }

    v5 = result;
    if (!**(*(result + 32) + 8))
    {
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v24);
      v5 = v24;
    }
  }

  else
  {
    LODWORD(v25) = -1;
    v5 = result;
  }

  v24 = v5;
  if (v5 != v4 || v25 != 0xFFFFFFFFLL)
  {
    v1 = v25;
    v6 = v25 >> 16;
    do
    {
      v7 = v6;
      v2 = v5[2];
      if (v2 <= v6)
      {
        goto LABEL_48;
      }

      v8 = v4[2];
      if (v8 > v6)
      {
        v9 = *(*(v5[4] + 16 * v6 + 8) + 4 * v1);
        v10 = (v8 - 1) == v6 ? *(v4 + 12) : *(v4 + 11);
        if (v10 > v1)
        {
          v11 = v9 & 0xFFFFFF;
          v12 = (v4[4] + 16 * v6);
          v13 = *(v12[1] + 4 * v1);
          if (v13 && v13 == v11)
          {
            v15 = *v12;
            if (v15)
            {
              v2 = (v15 + 40 * v1);
              v16 = *v2;
              *v2 = 0;
              if (v16)
              {
                v17 = v2[4];
                *&v35 = v16;
                if (!v17)
                {
                  v23 = std::__throw_bad_function_call[abi:nn200100]();
                  return re::DisplayStatsManager::init(v23);
                }

                (*(*v17 + 48))(v17, &v35);
              }

              v18 = v2[4];
              if (v18 == v2 + 1)
              {
                (*(*v18 + 32))(v18);
              }

              else if (v18)
              {
                (*(*v18 + 40))(v18);
              }

              v3 = v4[2];
              if (v3 <= v6)
              {
                goto LABEL_49;
              }

              *(*(v4[4] + 16 * v6 + 8) + 4 * v1) = 0;
              *v2 = *(v4 + 13);
              *(v4 + 26) = v1;
              *(v4 + 27) = v6;
              --*(v4 + 10);
            }
          }
        }
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v24);
      v5 = v24;
      v1 = v25;
      LOWORD(v6) = WORD1(v25);
    }

    while (v24 != v4 || v25 != 0xFFFFLL || WORD1(v25) != 0xFFFF);
  }

  v19 = v4[2];
  v7 = v19 - 1;
  if (v19 == 1)
  {
    goto LABEL_43;
  }

  v20 = 16 * v19 - 16;
  do
  {
    if (v19 <= v7)
    {
      v24 = 0;
      v39 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v27 = 136315906;
      v28 = "operator[]";
      v29 = 1024;
      v30 = 789;
      v31 = 2048;
      v32 = v7;
      v33 = 2048;
      v34 = v19;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_47:
      v24 = 0;
      v39 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v27 = 136315906;
      v28 = "removeAt";
      v29 = 1024;
      v30 = 931;
      v31 = 2048;
      v32 = v7;
      v33 = 2048;
      v34 = v1;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_48:
      v26 = 0;
      v39 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v27 = 136315906;
      v28 = "operator[]";
      v29 = 1024;
      v30 = 797;
      v31 = 2048;
      v32 = v7;
      v33 = 2048;
      v34 = v2;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_49:
      v26 = 0;
      v39 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v27 = 136315906;
      v28 = "operator[]";
      v29 = 1024;
      v30 = 789;
      v31 = 2048;
      v32 = v7;
      v33 = 2048;
      v34 = v3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_50:
      v26 = 0;
      v39 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v27 = 136315906;
      v28 = "operator[]";
      v29 = 1024;
      v30 = 797;
      v31 = 2048;
      v32 = 0;
      v33 = 2048;
      v34 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v21 = (v4[4] + v20);
    (*(**v4 + 40))(*v4, *v21);
    (*(**v4 + 40))(*v4, v21[1]);
    v1 = v4[2];
    if (v1 <= v7)
    {
      goto LABEL_47;
    }

    v19 = v1 - 1;
    if (v1 - 1 > v7)
    {
      *(v4[4] + v20) = *(v4[4] + 16 * v1 - 16);
      v19 = v4[2] - 1;
    }

    v4[2] = v19;
    ++*(v4 + 6);
    v20 -= 16;
    --v7;
  }

  while (v7);
  v4[6] = 0xFFFFFFFF00000000;
  if (!v19)
  {
    v24 = 0;
    v39 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v4 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v27 = 136315906;
    v28 = "operator[]";
    v29 = 1024;
    v30 = 789;
    v31 = 2048;
    v32 = 0;
    v33 = 2048;
    v34 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_43:
    v4[6] = 0xFFFFFFFF00000000;
  }

  v22 = v4[4];
  (*(**v4 + 40))(*v4, *v22);
  (*(**v4 + 40))(*v4, v22[1]);
  result = re::DynamicArray<unsigned long>::deinit(v4);
  *(v4 + 11) = 0;
  return result;
}

void re::DisplayStatsManager::init(re::DisplayStatsManager *this)
{
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(this, 0);
  ++*(this + 6);
  *(this + 11) = 4;

  re::DataArray<re::DisplayStatsManager::MetricState>::allocBlock(this);
}

void re::DataArray<re::DisplayStatsManager::MetricState>::allocBlock(unsigned int *a1)
{
  v2 = 40 * a1[11];
  v5.n128_u64[0] = (*(**a1 + 32))(*a1, v2, 0);
  if (v5.n128_u64[0])
  {
    v2 = 4 * a1[11];
    v5.n128_u64[1] = (*(**a1 + 32))(*a1, v2, 0);
    if (v5.n128_u64[1])
    {
      re::DynamicArray<re::RigNodeConstraint>::add(a1, &v5);
      a1[12] = 0;
      return;
    }
  }

  else
  {
    re::internal::assertLog(6, v3, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.elements", "allocBlock", 520, v2, *(*a1 + 8), 0);
    _os_crash();
    __break(1u);
  }

  re::internal::assertLog(6, v4, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.allocationCounters", "allocBlock", 528, v2, *(*a1 + 8));
  _os_crash();
  __break(1u);
}

uint64_t re::snapshotMapFields<re::snapshot::DecoderOPACK>(uint64_t a1, uint64_t a2)
{
  if (re::snapshot::DecoderOPACK::beginField<1>(a1))
  {
    *a2 = re::snapshot::DecoderOPACK::readInteger(a1, 0);
    re::snapshot::DecoderOPACK::endField(a1);
  }

  if (re::snapshot::DecoderOPACK::beginField<2>(a1))
  {
    *(a2 + 4) = re::snapshot::DecoderOPACK::readInteger(a1, 0);
    re::snapshot::DecoderOPACK::endField(a1);
  }

  if (re::snapshot::DecoderOPACK::beginField<3>(a1))
  {
    *(a2 + 8) = re::snapshot::DecoderOPACK::readInteger(a1, 0);
    re::snapshot::DecoderOPACK::endField(a1);
  }

  if (re::snapshot::DecoderOPACK::beginField<4>(a1))
  {
    v49 = 0;
    v4 = re::snapshot::DecoderOPACK::beginString(a1, &v49);
    if (v4)
    {
      v5 = v49;
      v6 = *(a1 + 24);
      v7 = *(a1 + 32) - v6;
      if (v7 >= v49)
      {
        v7 = v49;
      }

      *(a1 + 24) = &v6[v7];
      __len = 0;
      v48 = &str_67;
      v8 = re::StringID::operator=((a2 + 16), &__len);
      if (__len)
      {
        if (__len)
        {
        }
      }
    }

    re::snapshot::DecoderOPACK::endField(a1);
  }

  if (re::snapshot::DecoderOPACK::beginField<5>(a1))
  {
    *(a2 + 32) = re::snapshot::DecoderOPACK::readInteger(a1, 0);
    re::snapshot::DecoderOPACK::endField(a1);
  }

  if (re::snapshot::DecoderOPACK::beginField<6>(a1))
  {
    *(a2 + 36) = re::snapshot::DecoderOPACK::readInteger(a1, 0);
    re::snapshot::DecoderOPACK::endField(a1);
  }

  Integer = *(a1 + 40);
  if (Integer <= 6)
  {
    do
    {
      v10 = *(a1 + 24);
      if (v10 >= *(a1 + 32))
      {
        v11 = 0;
      }

      else
      {
        *(a1 + 24) = v10 + 1;
        v11 = *v10;
      }

      result = re::snapshot::DecoderOPACK::skip(a1, v11);
      v13 = *(a1 + 24);
      if (v13 >= *(a1 + 32))
      {
        goto LABEL_113;
      }

      v14 = *v13;
      if (v14 == 3)
      {
        goto LABEL_113;
      }

      if ((v14 - 7) > 0x28)
      {
        Integer = re::snapshot::DecoderOPACK::readInteger(a1, 0x7FFFFFFFLL);
      }

      else
      {
        *(a1 + 24) = v13 + 1;
        Integer = (v14 - 8);
      }

      *(a1 + 40) = Integer;
    }

    while (Integer < 7);
  }

  v15 = Integer;
  if (Integer == 7)
  {
    *(a2 + 64) = re::snapshot::DecoderOPACK::readInteger(a1, 0);
    re::snapshot::DecoderOPACK::endField(a1);
    v15 = *(a1 + 40);
    if (v15 <= 7)
    {
      do
      {
        v16 = *(a1 + 24);
        if (v16 >= *(a1 + 32))
        {
          v17 = 0;
        }

        else
        {
          *(a1 + 24) = v16 + 1;
          v17 = *v16;
        }

        result = re::snapshot::DecoderOPACK::skip(a1, v17);
        v18 = *(a1 + 24);
        if (v18 >= *(a1 + 32))
        {
          goto LABEL_113;
        }

        v19 = *v18;
        if (v19 == 3)
        {
          goto LABEL_113;
        }

        if ((v19 - 7) > 0x28)
        {
          v15 = re::snapshot::DecoderOPACK::readInteger(a1, 0x7FFFFFFFLL);
        }

        else
        {
          *(a1 + 24) = v18 + 1;
          v15 = (v19 - 8);
        }

        *(a1 + 40) = v15;
      }

      while (v15 < 8);
    }
  }

  v20 = v15;
  if (v15 != 8)
  {
    goto LABEL_77;
  }

  __len = 0;
  v21 = re::snapshot::DecoderOPACK::beginData(a1, &__len, 1);
  if (v21)
  {
    v22 = __len;
    v23 = __len / 0x50;
    if (__len % 0x50)
    {
      re::snapshot::BufferDecoder::error(a1, "Bad data: %zu bytes, expected multiple of %zu");
      goto LABEL_66;
    }

    if (*(a2 + 40))
    {
      if (v23 != *(a2 + 48))
      {
        re::snapshot::BufferDecoder::error(a1, "unexpected data size reading FixedArray: expected %zu, got %zu");
        goto LABEL_66;
      }
    }

    else
    {
    }

    re::snapshot::BufferDecoder::readRaw(a1, *(a2 + 56), v22);
  }

  else
  {
    v24 = re::snapshot::DecoderOPACK::beginArray(a1, &__len);
    if (v24)
    {
      v25 = __len;
      if (!*(a2 + 40) && __len != -1)
      {
      }

      if (v25 == *(a2 + 48))
      {
        if (re::snapshot::DecoderOPACK::endArray(a1, &__len))
        {
          LODWORD(v26) = 0;
LABEL_64:
          if (v25 != v26)
          {
            re::snapshot::BufferDecoder::error(a1, "count mismatch: expected %zu, got %d");
          }
        }

        else
        {
          v27 = 0;
          v26 = 0;
          while (*(a2 + 48) > v26)
          {
            v28 = *(a2 + 56);
            if (re::snapshot::DecoderOPACK::beginObject(a1, 0))
            {
              re::snapshotMapFields<re::snapshot::DecoderOPACK>(a1, v28 + v27);
              re::snapshot::DecoderOPACK::endObject(a1, 0);
            }

            v27 += 80;
            ++v26;
            if (re::snapshot::DecoderOPACK::endArray(a1, &__len))
            {
              goto LABEL_64;
            }
          }

          re::snapshot::BufferDecoder::error(a1, "Bad data, too many elements: expected %zu, got %d");
        }
      }

      else
      {
        re::snapshot::BufferDecoder::error(a1, "unexpected FixedArray size: expected %zu, got %zu");
      }
    }
  }

LABEL_66:
  re::snapshot::DecoderOPACK::endField(a1);
  v20 = *(a1 + 40);
  if (v20 <= 8)
  {
    do
    {
      v29 = *(a1 + 24);
      if (v29 >= *(a1 + 32))
      {
        v30 = 0;
      }

      else
      {
        *(a1 + 24) = v29 + 1;
        v30 = *v29;
      }

      result = re::snapshot::DecoderOPACK::skip(a1, v30);
      v31 = *(a1 + 24);
      if (v31 >= *(a1 + 32))
      {
        goto LABEL_113;
      }

      v32 = *v31;
      if (v32 == 3)
      {
        goto LABEL_113;
      }

      if ((v32 - 7) > 0x28)
      {
        v20 = re::snapshot::DecoderOPACK::readInteger(a1, 0x7FFFFFFFLL);
      }

      else
      {
        *(a1 + 24) = v31 + 1;
        v20 = (v32 - 8);
      }

      *(a1 + 40) = v20;
    }

    while (v20 < 9);
  }

LABEL_77:
  v33 = v20;
  if (v20 == 9)
  {
    re::snapshot::DecoderOPACK::operator>>(a1, (a2 + 68));
    re::snapshot::DecoderOPACK::endField(a1);
    v33 = *(a1 + 40);
    if (v33 <= 9)
    {
      do
      {
        v34 = *(a1 + 24);
        if (v34 >= *(a1 + 32))
        {
          v35 = 0;
        }

        else
        {
          *(a1 + 24) = v34 + 1;
          v35 = *v34;
        }

        result = re::snapshot::DecoderOPACK::skip(a1, v35);
        v36 = *(a1 + 24);
        if (v36 >= *(a1 + 32))
        {
          goto LABEL_113;
        }

        v37 = *v36;
        if (v37 == 3)
        {
          goto LABEL_113;
        }

        if ((v37 - 7) > 0x28)
        {
          v33 = re::snapshot::DecoderOPACK::readInteger(a1, 0x7FFFFFFFLL);
        }

        else
        {
          *(a1 + 24) = v36 + 1;
          v33 = (v37 - 8);
        }

        *(a1 + 40) = v33;
      }

      while (v33 < 10);
    }
  }

  v38 = v33;
  if (v33 == 10)
  {
    *(a2 + 72) = re::snapshot::DecoderOPACK::readInteger(a1, 0);
    re::snapshot::DecoderOPACK::endField(a1);
    v38 = *(a1 + 40);
    if (v38 <= 10)
    {
      do
      {
        v39 = *(a1 + 24);
        if (v39 >= *(a1 + 32))
        {
          v40 = 0;
        }

        else
        {
          *(a1 + 24) = v39 + 1;
          v40 = *v39;
        }

        result = re::snapshot::DecoderOPACK::skip(a1, v40);
        v41 = *(a1 + 24);
        if (v41 >= *(a1 + 32))
        {
          goto LABEL_113;
        }

        v42 = *v41;
        if (v42 == 3)
        {
          goto LABEL_113;
        }

        if ((v42 - 7) > 0x28)
        {
          v38 = re::snapshot::DecoderOPACK::readInteger(a1, 0x7FFFFFFFLL);
        }

        else
        {
          *(a1 + 24) = v41 + 1;
          v38 = (v42 - 8);
        }

        *(a1 + 40) = v38;
      }

      while (v38 < 11);
    }
  }

  result = v38;
  if (v38 == 11)
  {
    re::snapshot::DecoderOPACK::operator>>(a1, (a2 + 76));
    re::snapshot::DecoderOPACK::endField(a1);
    result = *(a1 + 40);
    if (result <= 11)
    {
      while (1)
      {
        v43 = *(a1 + 24);
        if (v43 >= *(a1 + 32))
        {
          v44 = 0;
        }

        else
        {
          *(a1 + 24) = v43 + 1;
          v44 = *v43;
        }

        result = re::snapshot::DecoderOPACK::skip(a1, v44);
        v45 = *(a1 + 24);
        if (v45 >= *(a1 + 32))
        {
          break;
        }

        v46 = *v45;
        if (v46 == 3)
        {
          break;
        }

        if ((v46 - 7) > 0x28)
        {
          result = re::snapshot::DecoderOPACK::readInteger(a1, 0x7FFFFFFFLL);
        }

        else
        {
          *(a1 + 24) = v45 + 1;
          result = (v46 - 8);
        }

        *(a1 + 40) = result;
        if (result >= 12)
        {
          goto LABEL_115;
        }
      }

LABEL_113:
      *(a1 + 40) = 0x7FFFFFFF;
      return result;
    }
  }

LABEL_115:
  if (result == 12)
  {
    re::snapshot::DecoderOPACK::operator>>(a1, (a2 + 77));

    return re::snapshot::DecoderOPACK::endField(a1);
  }

  return result;
}