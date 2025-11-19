void re::FrameManager::freeForFrame(void *a1, uint64_t a2)
{
  std::mutex::lock((a2 + 24));
  if (*(a2 + 88) == 1)
  {

    std::mutex::unlock((a2 + 24));
  }

  else
  {
    *(a2 + 88) = 1;
    std::mutex::unlock((a2 + 24));
    v4 = *a2 & 0xFFFFFFFFFFFFFFFLL | (a1[2] << 60);
    v5 = a1[20];
    if (v5)
    {
      v8 = v4;
      v5 = (*(*v5 + 16))(v5, &v8);
    }

    v6 = re::globalAllocators(v5);
    re::PerFrameAllocatorManager::freeAllocatorsForFrame(v6[6], v4);
    v7 = a1[25];
    if (v7)
    {
      v8 = v4;
      (*(*v7 + 16))(v7, &v8);
    }
  }
}

void re::updateFrameCountCommon(re *this, unint64_t *a2, uint64_t a3, const char *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*this <= a2)
  {
    if (*this != a2 || *this == 1)
    {
      goto LABEL_12;
    }

    if (a4)
    {
      goto LABEL_12;
    }

    v13 = *re::graphicsLogObjects(this);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v14 = *this;
    v16 = 136315394;
    v17 = a3;
    v18 = 2048;
    v19 = v14;
    v9 = "%s same frame more than once %llu";
    v10 = v13;
    v11 = 22;
  }

  else
  {
    v7 = *re::graphicsLogObjects(this);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v8 = *this;
    v16 = 136315650;
    v17 = a3;
    v18 = 2048;
    v19 = v8;
    v20 = 2048;
    v21 = a2;
    v9 = "%s update out of order %llu to %llu";
    v10 = v7;
    v11 = 32;
  }

  _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, v9, &v16, v11);
LABEL_12:
  v15 = *this;
  if (*this <= a2)
  {
    v15 = a2;
  }

  *this = v15;
}

double re::FrameManager::deinitRenderFrameCounting(re::FrameManager *this)
{
  v2 = re::globalAllocators(this);
  v3 = re::PerFrameAllocatorManager::freeAllocatorsForFrame(v2[6], *(this + 6) & 0xFFFFFFFFFFFFFFFLL | (*(this + 5) << 60));
  v4 = re::globalAllocators(v3);
  re::PerFrameAllocatorManager::removeOwner(v4[6], *(this + 5));
  *&result = 16;
  *(this + 40) = xmmword_1E30DB2E0;
  return result;
}

re *re::FrameManager::getFrameRefCount(re::FrameManager *this, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = a2 & 7;
  if (*(this + 42) <= v2)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_9;
  }

  v3 = a2;
  result = (*(this + 43) + 384 * v2);
  if (*result == a2)
  {
    return result;
  }

  v6 = *re::graphicsLogObjects(result);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 42) > v2)
    {
      v7 = *(*(this + 43) + 384 * v2);
      *buf = 67109376;
      *&buf[4] = v3;
      *&buf[8] = 1024;
      *&buf[10] = v7;
      _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, "getFrameRefCount() called with fc=%d, but found fc=%d instead", buf, 0xEu);
      return 0;
    }

LABEL_9:
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return 0;
}

uint64_t re::FrameManager::tryExecuteCallbackWithAllocatedFrame(re::FrameManager *a1, uint64_t a2, uint64_t a3)
{
  FrameRefCount = re::FrameManager::getFrameRefCount(a1, a2);
  if (!FrameRefCount)
  {
    return 0;
  }

  v6 = FrameRefCount;
  std::mutex::lock((FrameRefCount + 24));
  if (*v6 == a2 && (*(v6 + 88) & 1) == 0)
  {
    v9 = a2;
    (*(**(a3 + 32) + 16))(*(a3 + 32), &v9);
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  std::mutex::unlock((v6 + 24));
  return v7;
}

void *re::allocInfo_FrameManager(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_471, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_471))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BAC38, "FrameManager");
    __cxa_guard_release(&_MergedGlobals_471);
  }

  return &unk_1EE1BAC38;
}

void re::initInfo_FrameManager(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x34087BE954749B40;
  v6[1] = "FrameManager";
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
  *(this + 8) = &re::initInfo_FrameManager(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::FrameManager>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::FrameManager>;
  *(this + 13) = re::internal::defaultConstructV2<re::FrameManager>;
  *(this + 14) = re::internal::defaultDestructV2<re::FrameManager>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::FrameManager::~FrameManager(re::FrameManager *this)
{
  re::FrameManager::~FrameManager(this);

  JUMPOUT(0x1E6906520);
}

{
  *this = &unk_1F5D098B8;
  if (*(this + 41))
  {
    v2 = *(this + 42);
    if (v2)
    {
      v3 = 384 * v2;
      v4 = (*(this + 43) + 24);
      do
      {
        std::mutex::~mutex(v4);
        v4 = v5 + 6;
        v3 -= 384;
      }

      while (v3);
      (*(**(this + 41) + 40))(*(this + 41), *(this + 43));
      *(this + 42) = 0;
      *(this + 43) = 0;
    }

    *(this + 41) = 0;
  }

  re::FunctionBase<24ul,void ()(void)>::destroyCallable(this + 288);
  re::FunctionBase<24ul,void ()(void)>::destroyCallable(this + 248);
  re::FunctionBase<24ul,void ()(void)>::destroyCallable(this + 208);
  re::FunctionBase<24ul,void ()(re::FrameCount)>::destroyCallable(this + 168);
  re::FunctionBase<24ul,void ()(re::FrameCount)>::destroyCallable(this + 128);
  re::FixedArray<re::DelayedDestructorsForFrame>::deinit(this + 12);
  re::FixedArray<re::DelayedDestructorsForFrame>::deinit(this + 8);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

uint64_t re::FunctionBase<24ul,void ()(re::FrameCount)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::FrameCount)>::destroyCallable(a1);
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

uint64_t re::FixedArray<re::DelayedDestructorsForFrame>::init<>(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 8;
  result = (*(*a2 + 32))(a2, 384, 8);
  a1[2] = result;
  if (result)
  {
    v5 = (result + 40);
    v6 = 7;
    do
    {
      *(v5 - 4) = 0;
      *(v5 - 3) = 0;
      *(v5 - 5) = 0;
      *(v5 - 4) = 0;
      *(v5 - 1) = 0;
      *v5 = 0xFFFFFFFFFFFFFFFLL;
      v5 += 6;
      --v6;
    }

    while (v6);
    *(v5 - 4) = 0;
    *(v5 - 3) = 0;
    *(v5 - 5) = 0;
    *(v5 - 4) = 0;
    *(v5 - 1) = 0;
    *v5 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void *re::DynamicArray<re::MoveOnlyFunction<void ()(void)>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::MoveOnlyFunction<void ()(void)>>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x28uLL))
        {
          v2 = 40 * a2;
          result = (*(*result + 32))(result, 40 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 40, a2);
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
        v10 = 40 * v9;
        v11 = v7;
        do
        {
          *(v11 + 24) = *(v8 + 24);
          *(v11 + 32) = 0;
          re::MoveOnlyFunctionBase<24ul,void ()(void)>::operator=<24ul>(v11, v8);
          re::MoveOnlyFunctionBase<24ul,void ()(void)>::destroyCallable(v8);
          v8 += 40;
          v11 += 40;
          v10 -= 40;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t re::MoveOnlyFunctionBase<24ul,void ()(void)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::MoveOnlyFunctionBase<24ul,void ()(void)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (*(a1 + 24) != *(a2 + 24) || v4 == a2)
    {
      if (v4)
      {
        v6 = (*(*v4 + 32))(v4);
        v7 = a1;
        if (v6 >= 0x19)
        {
          v8 = v6;
          v9 = *(a1 + 24);
          if (v9)
          {
            v7 = (*(*v9 + 32))(v9, v8, 0);
          }

          else
          {
            v7 = 0;
          }
        }

        *(a1 + 32) = v7;
        (*(**(a2 + 32) + 24))(*(a2 + 32));
        re::MoveOnlyFunctionBase<24ul,void ()(void)>::destroyCallable(a2);
      }
    }

    else
    {
      *(a1 + 32) = v4;
      *(a2 + 32) = 0;
    }
  }

  return a1;
}

void *re::InlineRenderGraphProvider::InlineRenderGraphProvider(void *a1, const re::DynamicString *a2, uint64_t a3, uint64_t a4)
{
  re::DynamicString::DynamicString(v8, a2);
  *a1 = &unk_1F5CC5700;
  re::DynamicString::DynamicString((a1 + 1), v8);
  if (*&v8[0])
  {
    if (BYTE8(v8[0]))
    {
      (*(**&v8[0] + 40))();
    }

    memset(v8, 0, sizeof(v8));
  }

  *a1 = &unk_1F5D09918;
  a1[8] = *(a3 + 24);
  a1[9] = 0;
  re::FunctionBase<24ul,unsigned long long ()(char const*,char const*,re::RenderFrame &)>::operator=<24ul>((a1 + 5), a3);
  a1[13] = *(a4 + 24);
  a1[14] = 0;
  re::FunctionBase<24ul,void ()(char const*,char const*,re::RenderFrame &)>::operator=<24ul>((a1 + 10), a4);
  return a1;
}

uint64_t re::InlineRenderGraphProvider::provide(re::InlineRenderGraphProvider *this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  v5 = a3;
  v6 = a2;
  return (*(**(this + 14) + 16))(*(this + 14), &v6, &v5, a4);
}

unint64_t re::InlineRenderGraphProvider::prepareFrame(re::InlineRenderGraphProvider *this, char *a2, const char *a3, re::RenderFrame *a4)
{
  v10[0] = 0x2FD78E65604013F0;
  v10[1] = "InlineRenderGraphProvider";
  ScopeHash = re::RenderGraphProviderBase::generateScopeHash(v10, a2, a3);
  v10[0] = a2;
  v11 = a3;
  return ((ScopeHash << 6) + (ScopeHash >> 2) - 0x61C8864680B583E9 + (*(**(this + 9) + 16))(*(this + 9), v10, &v11, a4)) ^ ScopeHash;
}

void re::InlineRenderGraphProvider::~InlineRenderGraphProvider(re::InlineRenderGraphProvider *this)
{
  *this = &unk_1F5D09918;
  v2 = this + 40;
  re::FunctionBase<24ul,void ()(char const*,char const*,re::RenderFrame &)>::destroyCallable(this + 80);
  re::FunctionBase<24ul,unsigned long long ()(char const*,char const*,re::RenderFrame &)>::destroyCallable(v2);
  *this = &unk_1F5CC5700;
  re::DynamicString::deinit((this + 8));
}

{
  *this = &unk_1F5D09918;
  v2 = this + 40;
  re::FunctionBase<24ul,void ()(char const*,char const*,re::RenderFrame &)>::destroyCallable(this + 80);
  re::FunctionBase<24ul,unsigned long long ()(char const*,char const*,re::RenderFrame &)>::destroyCallable(v2);
  *this = &unk_1F5CC5700;
  re::DynamicString::deinit((this + 8));

  JUMPOUT(0x1E6906520);
}

void re::IBLContext::createConstantBuffer(uint64_t a1, uint64_t a2, re::BufferTable *a3, __int128 *a4)
{
  re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((a2 + 16), 0xD0uLL, 0x10uLL, &v39);
  v7 = v40;
  v8 = v39 + v40;
  v38 = 0x262DF9A294ABAC1CLL;
  v39 = v41;
  LODWORD(v40) = 0;
  v41 = v7;
  re::BufferTable::setBuffer(a3, &v38, &v39);
  *(v8 + 8) = 0;
  *v8 = 1065353216;
  *(v8 + 24) = 0;
  *(v8 + 16) = 0x3F80000000000000;
  *(v8 + 40) = 1065353216;
  *(v8 + 32) = 0;
  *(v8 + 48) = 0;
  *(v8 + 64) = 0u;
  v9 = *a4;
  v10 = a4[1];
  v11 = a4[2];
  *(v8 + 88) = *(a4 + 1);
  *(v8 + 80) = v9;
  *(v8 + 104) = DWORD2(v10);
  *(v8 + 96) = v10;
  *(v8 + 120) = DWORD2(v11);
  *(v8 + 112) = v11;
  *(v8 + 128) = 0;
  *(v8 + 152) = 0;
  *(v8 + 144) = 1065353216;
  *(v8 + 168) = 0;
  *(v8 + 160) = 0x3F80000000000000;
  *(v8 + 184) = 1065353216;
  *(v8 + 176) = 0;
  *(v8 + 192) = 0;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(a1 + 32);
    v32 = (v13 + 224 * v12);
    for (i = (v13 + 192); ; i += 28)
    {
      v15 = (i - 24);
      v16 = *(i - 24);
      v17 = *(i - 23);
      v18 = *(i - 22);
      v19 = *(i - 42);
      *&v20 = *(i - 20);
      DWORD2(v20) = *(i - 38);
      v37 = v20;
      *&v20 = *(i - 18);
      DWORD2(v20) = *(i - 34);
      v36 = v20;
      *&v20 = *(i - 16);
      DWORD2(v20) = *(i - 30);
      v35 = v20;
      v21 = *(i - 28);
      v34 = *(i - 6);
      v22 = *(i - 20);
      v23 = *(i - 9);
      v24 = *(i - 8);
      v25 = *(i - 7);
      v26 = *(i - 6);
      v27 = *(i - 5);
      v28 = v27;
      if (*(i + 17))
      {
        break;
      }

      if (v27)
      {
      }

      if (v26)
      {
      }

      if (v24)
      {
      }

      if (v23)
      {
      }

      if (v18)
      {
      }

      if (v17)
      {
      }

      if (v16)
      {
      }

      if (v15 + 14 == v32)
      {
        return;
      }
    }

    v31 = *(i - 1);
    v33 = *i;
    v30 = *(i - 2);
    v29 = exp2f(v19);
    *(v8 + 8) = DWORD2(v37);
    *v8 = v37;
    *(v8 + 24) = DWORD2(v36);
    *(v8 + 16) = v36;
    *(v8 + 40) = DWORD2(v35);
    *(v8 + 32) = v35;
    *(v8 + 48) = v29;
    *(v8 + 52) = v21;
    *(v8 + 64) = v34;
    *(v8 + 128) = v22 * 0.5;
    *(v8 + 152) = DWORD2(v30);
    *(v8 + 144) = v30;
    *(v8 + 168) = DWORD2(v31);
    *(v8 + 160) = v31;
    *(v8 + 184) = DWORD2(v33);
    *(v8 + 176) = v33;
    *(v8 + 192) = v25;
    if (v28)
    {
    }

    if (v26)
    {
    }

    if (v24)
    {
    }

    if (v23)
    {
    }

    if (v18)
    {
    }

    if (v17)
    {
    }

    if (v16)
    {
    }
  }
}

void re::IBLContext::updateSceneTextures(id *this, int8x16_t **a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v28 = 0xE459D7324435E49;
  re::TextureTable::setTexture(a2, &v28, this + 5);
  v28 = 0;
  v4 = this[2];
  if (v4)
  {
    v5 = this[4];
    v6 = &v5[224 * v4];
    while (1)
    {
      v7 = *v5;
      v29 = v7;
      v8 = *(v5 + 1);
      v30 = v8;
      v9 = *(v5 + 2);
      v31 = v9;
      v10 = *(v5 + 40);
      v32 = *(v5 + 24);
      v33 = v10;
      v11 = *(v5 + 72);
      v12 = *(v5 + 88);
      v13 = *(v5 + 102);
      v34 = *(v5 + 56);
      *&v36[14] = v13;
      *v36 = v12;
      v35 = v11;
      v14 = *(v5 + 15);
      v37 = v14;
      v15 = *(v5 + 16);
      v17 = *(v5 + 17);
      v16 = *(v5 + 18);
      v38[0] = v15;
      v38[1] = v17;
      v18 = v16;
      v39 = v18;
      v19 = *(v5 + 19);
      v40 = v19;
      v21 = *(v5 + 11);
      v20 = *(v5 + 12);
      v22 = *(v5 + 10);
      v44 = *(v5 + 104);
      v42 = v21;
      v43 = v20;
      v41 = v22;
      if (HIBYTE(v44) == 1)
      {
        break;
      }

      if (v19)
      {

        v40 = 0;
      }

      if (v18)
      {
      }

      if (v15)
      {
      }

      if (v14)
      {
      }

      if (v9)
      {
      }

      if (v8)
      {
      }

      if (v7)
      {
      }

      v5 += 224;
      if (v5 == v6)
      {
        return;
      }
    }

    v27 = 0xC0489AC946E8FF4;
    re::TextureTable::setTexture(a2, &v27, &v30);
    v26 = 0x74B9011688CA44FFLL;
    v27 = 0;
    re::TextureTable::setTexture(a2, &v26, &v29);
    v25 = 0x200BEB41406E4973;
    v26 = 0;
    re::TextureTable::setTexture(a2, &v25, &v31);
    v25 = 0;
    if (v36[29] == 1)
    {
      v24 = 0x23C1563FB78C78B1;
      re::TextureTable::setTexture(a2, &v24, v38);
      v23 = 0x5495C6E7C96973E2;
      v24 = 0;
      re::TextureTable::setTexture(a2, &v23, &v37);
      v23 = 0;
    }

    if (v40)
    {

      v40 = 0;
    }

    if (v39)
    {

      v39 = 0;
    }

    if (v38[0])
    {

      v38[0] = 0;
    }

    if (v37)
    {

      v37 = 0;
    }

    if (v31)
    {

      v31 = 0;
    }

    if (v30)
    {

      v30 = 0;
    }

    if (v29)
    {
    }
  }
}

void re::IBLContext::updateRenderSceneContextFlags(re::IBLContext *this, BOOL *a2, BOOL *a3)
{
  v3 = *(this + 2);
  if (v3)
  {
    v4 = *(this + 4);
    v5 = v4 + 224 * v3;
    do
    {
      v6 = *v4;
      v7 = *(v4 + 8);
      v8 = *(v4 + 16);
      v9 = *(v4 + 116);
      v10 = *(v4 + 117);
      v11 = *(v4 + 120);
      v12 = *(v4 + 128);
      v13 = *(v4 + 144);
      v14 = *(v4 + 152);
      if (*(v4 + 209))
      {
        *a2 = (v9 | *a2) & 1;
        *a3 = (v10 | *a3) & 1;
      }

      if (v14)
      {
      }

      if (v13)
      {
      }

      if (v12)
      {
      }

      if (v11)
      {
      }

      if (v8)
      {
      }

      if (v7)
      {
      }

      if (v6)
      {
      }

      v4 += 224;
    }

    while (v4 != v5);
  }
}

void re::VirtualEnvironmentProbeContext::updateSceneTextures(uint64_t a1, int8x16_t **a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = -2;
  for (i = -48; ; i += 24)
  {
    if (v6 + 2 >= *(a1 + 16))
    {
      goto LABEL_10;
    }

    if (v6 == -1)
    {
      v11 = *(a1 + 32);
      *&v17 = 0x456D423E25537F71;
      re::TextureTable::setTexture(a2, &v17, (v11 + 24));
      if (*(a1 + 16) <= 1uLL)
      {
        goto LABEL_22;
      }

      v12 = *(a1 + 32);
      *&v17 = 0x456D423E247CF467;
      v10 = (v12 + 32);
    }

    else
    {
      if (v6 != -2)
      {
        goto LABEL_10;
      }

      v8 = *(a1 + 32);
      *&v17 = 0x456D423E25537F70;
      re::TextureTable::setTexture(a2, &v17, v8);
      if (!*(a1 + 16))
      {
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v17 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_22:
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v17 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_23:
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v17 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_24:
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v17 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v9 = *(a1 + 32);
      *&v17 = 0x456D423E247CF466;
      v10 = (v9 + 8);
    }

    re::TextureTable::setTexture(a2, &v17, v10);
LABEL_10:
    if (a3 && v6 < *(a3 + 16))
    {
      if (!v6)
      {
        v13 = *(a3 + 32);
        *&v17 = 0x44E5F300C8804435;
        re::TextureTable::setTexture(a2, &v17, (v13 + i));
        if (!*(a3 + 16))
        {
          goto LABEL_23;
        }

        v14 = *(a3 + 32) + i;
        *&v17 = 0x44E5F300C7A9B92BLL;
        re::TextureTable::setTexture(a2, &v17, (v14 + 8));
        goto LABEL_17;
      }

      if (v6 == 1)
      {
        break;
      }
    }

LABEL_17:
    if (++v6 == 2)
    {
      return;
    }
  }

  v15 = *(a3 + 32);
  *&v17 = 0x44E5F300C8804436;
  re::TextureTable::setTexture(a2, &v17, (v15 + i));
  if (*(a3 + 16) <= 1uLL)
  {
    goto LABEL_24;
  }

  v16 = *(a3 + 32) + i;
  *&v17 = 0x44E5F300C7A9B92CLL;
  re::TextureTable::setTexture(a2, &v17, (v16 + 8));
}

uint64_t re::VirtualEnvironmentProbeContext::createTextureBuffer(unint64_t a1, uint64_t a2, re::BufferTable *a3, uint64_t a4)
{
  v55 = *MEMORY[0x1E69E9840];
  if (([*a2 supportsFamily:5001] & 1) == 0 && *(a1 + 16))
  {
    v42 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v38 = *(a2 + 32);
    re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(&v38, 2uLL);
    ++v41;
    v37 = [objc_msgSend(MEMORY[0x1E6973FD8] alloc)];
    [v37 setIndex_];
    [v37 setDataType_];
    v8 = &selRef_iosurface;
    [v37 setAccess_];
    [v37 setTextureType_];
    [v37 setArrayLength_];
    re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add(&v38, &v37);
    v36 = [objc_msgSend(MEMORY[0x1E6973FD8] alloc)];
    [v36 setIndex_];
    [v36 setDataType_];
    [v36 setAccess_];
    [v36 setTextureType_];
    [v36 setArrayLength_];
    re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add(&v38, &v36);
    re::DynamicArray<NS::SharedPtr<MTL::ArgumentDescriptor>>::DynamicArray(v34, &v38);
    re::mtl::Device::makeArgumentEncoder(a2, v34, &v35);
    re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(v34);
    v9 = v35;
    re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((a2 + 16), [v35 encodedLength], 0x10uLL, &v31);
    *v44 = 0x458FBDFDF334653DLL;
    v10 = v33;
    *&v50 = v33;
    DWORD2(v50) = 0;
    v30 = v32;
    *&v51 = v32;
    v11 = a3;
    re::BufferTable::setBuffer(a3, v44, &v50);
    [v9 setArgumentBuffer:v10 offset:v30];
    v12 = *(a2 + 32);
    *&v46[2] = 0;
    memset(&v44[8], 0, 20);
    *v44 = v12;
    re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v44, 4uLL);
    v13 = 0;
    v14 = 0;
    ++*&v44[24];
    do
    {
      if (v14 < *(a1 + 16))
      {
        [v9 setTexture:*(*(a1 + 32) + v13) atIndex:v14];
        v15 = *(a1 + 16);
        if (v15 <= v14)
        {
          goto LABEL_63;
        }

        [v9 setTexture:*(*(a1 + 32) + v13 + 8) atIndex:v14 + 4];
        v15 = *(a1 + 16);
        if (v15 <= v14)
        {
          goto LABEL_64;
        }

        *&v50 = *(*(a1 + 32) + v13);
        re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add(v44, &v50);
        if (v50)
        {
        }

        v15 = *(a1 + 16);
        if (v15 <= v14)
        {
          goto LABEL_65;
        }

        *&v50 = *(*(a1 + 32) + v13 + 8);
        re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add(v44, &v50);
        if (v50)
        {
        }
      }

      ++v14;
      v13 += 24;
    }

    while (v14 != 4);
    v16 = 0;
    a1 = 2;
    do
    {
      v17 = v16;
      if (a4)
      {
        v14 = a1 - 2;
        if (a1 - 2 < *(a4 + 16))
        {
          [v9 setTexture:*(*(a4 + 32) + 24 * v14) atIndex:a1];
          v8 = *(a4 + 16);
          if (v8 <= v14)
          {
            goto LABEL_66;
          }

          [v9 setTexture:*(*(a4 + 32) + 24 * v14 + 8) atIndex:a1 | 4];
          a1 = *(a4 + 16);
          if (a1 <= v14)
          {
            goto LABEL_67;
          }

          *&v50 = *(*(a4 + 32) + 24 * v14);
          re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add(v44, &v50);
          if (v50)
          {
          }

          a1 = *(a4 + 16);
          if (a1 <= v14)
          {
            goto LABEL_68;
          }

          *&v50 = *(*(a4 + 32) + 24 * v14 + 8);
          re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add(v44, &v50);
          if (v50)
          {
          }
        }
      }

      v16 = 1;
      a1 = 3;
    }

    while ((v17 & 1) == 0);
    *&v50 = 0x458FBDFDF334653DLL;
    re::BufferTable::setBufferUsedResources(v11, &v50, *&v46[2], *&v44[16]);
    re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(v44);
    if (v9)
    {
    }

    if (v36)
    {
    }

    if (v37)
    {
    }

    return re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(&v38);
  }

  re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((a2 + 16), 0x40uLL, 0x10uLL, v47);
  v38 = 0x458FBDFDF334653DLL;
  v19 = *&v47[8];
  v20 = *&v47[12];
  *&v50 = *&v47[16];
  DWORD2(v50) = 0;
  *&v51 = *&v47[8];
  re::BufferTable::setBuffer(a3, &v38, &v50);
  if (v20 <= 0x3F)
  {
LABEL_69:
    re::internal::assertLog(6, v21, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    _os_crash();
    __break(1u);
  }

  v22 = a3;
  v23 = *v47 + v19;
  v24 = *(a2 + 32);
  v42 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v38 = v24;
  re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(&v38, 8uLL);
  v25 = 0;
  v26 = 0;
  ++v41;
  v15 = v23 + 32;
  v8 = &unk_1E8723000;
  v14 = v23 + 32;
  do
  {
    if (v26 >= *(a1 + 16))
    {
      *(v14 - 32) = 0;
      *v14 = 0;
      goto LABEL_42;
    }

    *(v14 - 32) = [*(*(a1 + 32) + v25) gpuResourceID];
    v27 = *(a1 + 16);
    if (v27 <= v26)
    {
      v31 = 0;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v50 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v44 = 136315906;
      *&v44[4] = "operator[]";
      *&v44[12] = 1024;
      *&v44[14] = 797;
      *&v44[18] = 2048;
      *&v44[20] = v26;
      v45 = 2048;
      *v46 = v27;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_58:
      v31 = 0;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v50 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v44 = 136315906;
      *&v44[4] = "operator[]";
      *&v44[12] = 1024;
      *&v44[14] = 797;
      *&v44[18] = 2048;
      *&v44[20] = v26;
      v45 = 2048;
      *v46 = v27;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_59:
      v31 = 0;
      a1 = v44;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v50 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v44 = 136315906;
      *&v44[4] = "operator[]";
      *&v44[12] = 1024;
      *&v44[14] = 797;
      *&v44[18] = 2048;
      *&v44[20] = v26;
      v45 = 2048;
      *v46 = v27;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_60:
      v31 = 0;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v50 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v44 = 136315906;
      *&v44[4] = "operator[]";
      *&v44[12] = 1024;
      *&v44[14] = 797;
      *&v44[18] = 2048;
      *&v44[20] = a1;
      v45 = 2048;
      *v46 = v25;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_61:
      v31 = 0;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v50 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v44 = 136315906;
      *&v44[4] = "operator[]";
      *&v44[12] = 1024;
      *&v44[14] = 797;
      *&v44[18] = 2048;
      *&v44[20] = a1;
      v45 = 2048;
      *v46 = v25;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_62:
      v31 = 0;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v50 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v44 = 136315906;
      *&v44[4] = "operator[]";
      *&v44[12] = 1024;
      *&v44[14] = 797;
      *&v44[18] = 2048;
      *&v44[20] = a1;
      v45 = 2048;
      *v46 = v25;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_63:
      v43 = 0;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v50 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v47 = 136315906;
      *&v47[4] = "operator[]";
      *&v47[12] = 1024;
      *&v47[14] = 797;
      *&v47[18] = 2048;
      *&v47[20] = v14;
      v48 = 2048;
      v49 = v15;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_64:
      v43 = 0;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v50 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v47 = 136315906;
      *&v47[4] = "operator[]";
      *&v47[12] = 1024;
      *&v47[14] = 797;
      *&v47[18] = 2048;
      *&v47[20] = v14;
      v48 = 2048;
      v49 = v15;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_65:
      v43 = 0;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v50 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v47 = 136315906;
      *&v47[4] = "operator[]";
      *&v47[12] = 1024;
      *&v47[14] = 797;
      *&v47[18] = 2048;
      *&v47[20] = v14;
      v48 = 2048;
      v49 = v15;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_66:
      v43 = 0;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v50 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v47 = 136315906;
      *&v47[4] = "operator[]";
      *&v47[12] = 1024;
      *&v47[14] = 797;
      *&v47[18] = 2048;
      *&v47[20] = v14;
      v48 = 2048;
      v49 = v8;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_67:
      v43 = 0;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v50 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v47 = 136315906;
      *&v47[4] = "operator[]";
      *&v47[12] = 1024;
      *&v47[14] = 797;
      *&v47[18] = 2048;
      *&v47[20] = v14;
      v48 = 2048;
      v49 = a1;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_68:
      v43 = 0;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v50 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v47 = 136315906;
      *&v47[4] = "operator[]";
      *&v47[12] = 1024;
      *&v47[14] = 797;
      *&v47[18] = 2048;
      *&v47[20] = v14;
      v48 = 2048;
      v49 = a1;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_69;
    }

    *v14 = [*(*(a1 + 32) + v25 + 8) gpuResourceID];
    v27 = *(a1 + 16);
    if (v27 <= v26)
    {
      goto LABEL_58;
    }

    *&v50 = *(*(a1 + 32) + v25);
    re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add(&v38, &v50);
    if (v50)
    {
    }

    v27 = *(a1 + 16);
    if (v27 <= v26)
    {
      goto LABEL_59;
    }

    *&v50 = *(*(a1 + 32) + v25 + 8);
    re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add(&v38, &v50);
    if (v50)
    {
    }

LABEL_42:
    ++v26;
    v25 += 24;
    v14 += 8;
  }

  while (v26 != 4);
  v28 = 0;
  v29 = 2;
  do
  {
    v14 = v28;
    if (a4 && (a1 = v29 - 2, (v29 - 2) < *(a4 + 16)))
    {
      *(v23 + 8 * v29) = [*(*(a4 + 32) + 24 * a1) gpuResourceID];
      v25 = *(a4 + 16);
      if (v25 <= a1)
      {
        goto LABEL_60;
      }

      *(v15 + 8 * v29) = [*(*(a4 + 32) + 24 * a1 + 8) gpuResourceID];
      v25 = *(a4 + 16);
      if (v25 <= a1)
      {
        goto LABEL_61;
      }

      *&v50 = *(*(a4 + 32) + 24 * a1);
      re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add(&v38, &v50);
      if (v50)
      {
      }

      v25 = *(a4 + 16);
      if (v25 <= a1)
      {
        goto LABEL_62;
      }

      *&v50 = *(*(a4 + 32) + 24 * a1 + 8);
      re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add(&v38, &v50);
      if (v50)
      {
      }
    }

    else
    {
      *(v23 + 8 * v29) = 0;
      *(v15 + 8 * v29) = 0;
    }

    v28 = 1;
    v29 = 3;
  }

  while ((v14 & 1) == 0);
  *&v50 = 0x458FBDFDF334653DLL;
  re::BufferTable::setBufferUsedResources(v22, &v50, v42, v40);
  return re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(&v38);
}

uint64_t re::BufferTable::setBufferUsedResources(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
  if (result != -1)
  {
    v8 = *(*(a1 + 8) + 16 * result + 8);
    if (*(a1 + 280) > v8)
    {

      return re::BufferTable::setBufferIndirectResources(a1, v8, a3, a4);
    }
  }

  return result;
}

void re::VirtualEnvironmentProbeContext::createConstantBuffer(uint64_t a1, uint64_t a2, re::BufferTable *a3, uint64_t a4, float a5, float a6)
{
  re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((a2 + 16), 0x80uLL, 0x10uLL, &v37);
  v11 = v37;
  v12 = v38;
  v35 = v38;
  v36 = 0x6C67F4CE96CFCB6ALL;
  v37 = v39;
  LODWORD(v38) = 0;
  v39 = v12;
  re::BufferTable::setBuffer(a3, &v36, &v37);
  v13 = v11 + v35;
  v14 = *(a1 + 48);
  v15 = *(a1 + 64);
  v16 = *(a1 + 80);
  *(v13 + 8) = DWORD2(v14);
  *v13 = v14;
  *(v13 + 24) = DWORD2(v15);
  *(v13 + 16) = v15;
  *(v13 + 40) = DWORD2(v16);
  *(v13 + 32) = v16;
  *(v13 + 112) = *(a1 + 16);
  if (a4)
  {
    v17 = *(a4 + 48);
    v18 = *(a4 + 64);
    v19 = *(a4 + 80);
    *(v13 + 56) = DWORD2(v17);
    *(v13 + 48) = v17;
    *(v13 + 72) = DWORD2(v18);
    *(v13 + 64) = v18;
    *(v13 + 88) = DWORD2(v19);
    *(v13 + 80) = v19;
    v20 = *(a4 + 16);
  }

  else
  {
    v20 = 0;
    v21 = *MEMORY[0x1E69E9B10];
    v22 = *(MEMORY[0x1E69E9B10] + 32);
    *(v13 + 64) = *(MEMORY[0x1E69E9B10] + 16);
    *(v13 + 80) = v22;
    *(v13 + 48) = v21;
  }

  v23 = 0;
  v24 = 0;
  *(v13 + 116) = v20;
  v25 = *(a1 + 16);
  do
  {
    v26 = 0.0;
    if (v24 < v25)
    {
      v27 = *(a1 + 32) + v23;
      v28 = *(v27 + 20);
      v26 = (v28 * exp2f(*(v27 + 16))) * a5;
    }

    *(v13 + 96 + 4 * v24++) = v26;
    v23 += 24;
  }

  while (v23 != 96);
  if (a4 && (v29 = *(a4 + 16)) != 0)
  {
    v30 = *(a4 + 32);
    v31 = *(v30 + 20);
    *(v13 + 104) = (v31 * exp2f(*(v30 + 16))) * a6;
    v32 = 0.0;
    if (v29 != 1)
    {
      v33 = *(a4 + 32);
      v34 = *(v33 + 44);
      v32 = (v34 * exp2f(*(v33 + 40))) * a6;
    }
  }

  else
  {
    *(v13 + 104) = 0;
    v32 = 0.0;
  }

  *(v13 + 108) = v32;
}

void re::generatePrefilteredDiffuseIblTexture(id *this@<X0>, const re::RenderManager *a2@<X1>, const re::TextureData *a3@<X2>, re::WrappedError *a4@<X7>, int a5@<W3>, const re::TextureData *a6@<X4>, char a7@<W5>, uint8_t *a8@<X6>, uint64_t a9@<X8>, BOOL a10)
{
  v14 = this;
  v137 = *MEMORY[0x1E69E9840];
  v77 = a4;
  if (this)
  {
    this = this[26];
  }

  v91 = this;
  v15 = 256;
  if (a3 < 0x100)
  {
    v15 = a3;
  }

  if (v15 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = v15;
  }

  v17 = re::TextureData::width(a2);
  v18 = re::TextureData::height(a2);
  if (v16 >= v17)
  {
    v20 = v17;
  }

  else
  {
    v20 = v16;
  }

  if (v16 >= v18)
  {
    v21 = v18;
  }

  else
  {
    v21 = v16;
  }

  v90 = 0;
  v22 = re::internal::chooseWritableTextureFormat(&v91, a2, a6, a7, &v90, v19);
  v23 = *re::graphicsLogObjects(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    *&buf[4] = v20;
    *&buf[12] = 2048;
    *&buf[14] = v21;
    *&buf[22] = 1024;
    *&buf[24] = v22;
    _os_log_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_DEFAULT, "Generating diffuse prefiltered %zux%zux6 cubemap of format %d\n", buf, 0x1Cu);
  }

  v24 = v90;
  if (v90 == 1)
  {
    LODWORD(v25) = re::translateSRGBPixelFormatToLinear(v22);
    v26 = 19;
  }

  else
  {
    v26 = 3;
    LODWORD(v25) = v22;
  }

  if (re::TextureData::isShareable(a2))
  {
    v27 = 2;
  }

  else
  {
    v27 = 0;
  }

  v28 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
  v89 = v28;
  [v28 setTextureType_];
  [v28 setWidth_];
  [v28 setHeight_];
  [v28 setPixelFormat_];
  [v28 setMipmapLevelCount_];
  [v28 setUsage_];
  [v28 setStorageMode_];
  v87 = 0;
  v88 = 0;
  if (v91)
  {
    if (re::TextureData::isShareable(a2))
    {
      SharedTexture = re::mtl::Device::makeSharedTexture(v28, &v91, v93);
    }

    else
    {
      SharedTexture = re::mtl::Device::makeTexture(v28, &v91, v93);
    }

    LODWORD(v26) = v77;
    if (v24)
    {
      v33 = "generatePrefilteredDiffuseMapWithLinearToSRGB";
    }

    else
    {
      v33 = "generatePrefilteredDiffuseMap";
    }

    v116[0] = 0;
    v117[16] = 0;
    *&v121 = 0;
    v120 = 0uLL;
    DWORD2(v121) = 0;
    v123[1] = 0;
    LOBYTE(v124) = 0;
    v122 = 0uLL;
    LOBYTE(v123[0]) = 0;
    if (!v77)
    {
LABEL_72:
      v14 = *re::getOrCreateComputePipelineState(v14, buf);
      v82[0] = [v91 newCommandQueue];

      if ((atomic_load_explicit(&qword_1EE1BACD0, memory_order_acquire) & 1) == 0)
      {
        goto LABEL_126;
      }

      while (1)
      {
        v57 = _MergedGlobals_472;
        [v82[0] setLabel:v57];

        if (v26)
        {
          if ((atomic_load_explicit(&qword_1EE1BACE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BACE0))
          {
            v74 = re::ns::String::String(&qword_1EE1BACD8, "generatePrefilteredSSSDiffuseMapQueue");
            __cxa_guard_release(v74 + 1);
          }

          v58 = qword_1EE1BACD8;
          [v82[0] setLabel:v58];
        }

        re::mtl::CommandQueue::makeCommandBuffer(v82, v100);
        re::mtl::CommandBuffer::makeComputeCommandEncoder(v100, v130);
        if ((atomic_load_explicit(&qword_1EE1BACF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BACF0))
        {
          v73 = re::ns::String::String(&qword_1EE1BACE8, "Generate Diffuse IBL Texture");
          __cxa_guard_release(v73 + 1);
        }

        v59 = qword_1EE1BACE8;
        [*v130 setLabel:v59];

        if (v26)
        {
          if ((atomic_load_explicit(&qword_1EE1BAD00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BAD00))
          {
            v75 = re::ns::String::String(&qword_1EE1BACF8, "Generate SSS Diffuse IBL Texture");
            __cxa_guard_release(v75 + 1);
          }

          v60 = qword_1EE1BACF8;
          [*v130 setLabel:v60];
        }

        v61 = [(re *)v14 threadExecutionWidth];
        v26 = [(re *)v14 maxTotalThreadsPerThreadgroup]/ v61;
        v25 = [v93[0] newTextureViewWithPixelFormat:v25 textureType:3 levels:0 slices:1, 0, 6];
        v62 = ([v25 width] + v61 - 1) / v61;
        v63 = [v25 height];
        v64 = (v26 + v63 - 1) / v26;
        v65 = *re::graphicsLogObjects(v63);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          *v103 = 67110400;
          *&v103[4] = v62;
          *&v103[8] = 1024;
          *&v103[10] = v64;
          *&v103[14] = 1024;
          LODWORD(v104) = 6;
          WORD2(v104) = 1024;
          *(&v104 + 6) = v61;
          WORD5(v104) = 1024;
          HIDWORD(v104) = v26;
          LOWORD(v105[0]) = 1024;
          *(v105 + 2) = 1;
          _os_log_impl(&dword_1E1C61000, v65, OS_LOG_TYPE_DEFAULT, "Dispatching %dx%dx%d thread groups of size %dx%dx%d\n", v103, 0x26u);
        }

        [*v130 setComputePipelineState:v14];
        if (!*(a2 + 2))
        {
          break;
        }

LABEL_125:
        std::__throw_bad_variant_access[abi:nn200100]();
LABEL_126:
        if (__cxa_guard_acquire(&qword_1EE1BACD0))
        {
          v72 = re::ns::String::String(&_MergedGlobals_472, "generatePrefilteredDiffuseMapQueue");
          __cxa_guard_release(v72 + 1);
        }
      }

      [*v130 setTexture:*a2 atIndex:0];
      [*v130 setTexture:v25 atIndex:1];
      LODWORD(v92) = a5;
      v66 = [v91 newBufferWithBytes:&v92 length:4 options:0];
      [*v130 setBuffer:v66 offset:0 atIndex:0];
      *v103 = v62;
      *&v103[8] = v64;
      *&v104 = 6;
      v86[0] = v61;
      v86[1] = v26;
      v86[2] = 1;
      [*v130 dispatchThreadgroups:v103 threadsPerThreadgroup:v86];
      [*v130 endEncoding];
      if ([v93[0] storageMode] == 1)
      {
        re::mtl::CommandBuffer::makeBlitCommandEncoder(v100, v103);
        [*v103 endEncoding];
      }

      [*v100 commit];
      [*v100 waitUntilCompleted];
      re::mtl::CommandBuffer::error(v100, v103);
      v67 = [*v103 code];

      v56 = a9;
      if (v67)
      {
        if (a8)
        {
          re::mtl::CommandBuffer::error(v100, v103);
          if (v103 != a8)
          {
            v69 = *v103;
            *v103 = 0;
            v70 = *a8;
            *a8 = v69;
          }
        }

        v71 = *re::graphicsLogObjects(v68);
        if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
        {
          *v103 = 0;
          _os_log_error_impl(&dword_1E1C61000, v71, OS_LOG_TYPE_ERROR, "Internal Metal error while generating specular IBL cubemap. Execution likely took too long - Try again, and if the issue persists, lower samplesPerTexel.", v103, 2u);
        }
      }

      *v103 = v93[0];
      *&v103[8] = 0;
      std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v87, v103);
      if (*&v103[8] != -1)
      {
        (off_1F5D09950[*&v103[8]])(v86, v103);
      }

      if (v66)
      {
      }

      if (v25)
      {
      }

      if (v14)
      {
      }

      if (v123[1])
      {

        v123[1] = 0;
      }

      re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v120);
      if (v117[16] == 1 && v118)
      {
        if (BYTE8(v118))
        {
          (*(*v118 + 40))();
        }

        v118 = 0u;
        v119 = 0u;
      }

      if (v116[0] == 1 && *&v116[8])
      {
        if (v116[16])
        {
          (*(**&v116[8] + 40))();
        }

        *v117 = 0u;
        *&v116[8] = 0u;
      }

      if (*buf && (buf[8] & 1) != 0)
      {
        (*(**buf + 40))();
      }

      if (v93[0])
      {
      }

      goto LABEL_117;
    }

    LOBYTE(v105[0]) = 0;
    BYTE8(v105[2]) = 0;
    *&v109 = 0;
    v108 = 0uLL;
    DWORD2(v109) = 0;
    v111[1] = 0;
    LOBYTE(v112) = 0;
    v110 = 0uLL;
    LOBYTE(v111[0]) = 0;
    re::DynamicString::operator=(buf, v103);
    re::Optional<re::DynamicString>::operator=(v116, v105);
    re::Optional<re::DynamicString>::operator=(&v117[16], &v105[2] + 8);
    re::DynamicArray<re::TechniqueFunctionConstant>::operator=(&v120, &v108);
    *(&v122 + 1) = *(&v110 + 1);
    LOBYTE(v123[0]) = v111[0];
    NS::SharedPtr<MTL::Texture>::operator=(&v123[1], &v111[1]);
    if (v124)
    {
      if ((v112 & 1) == 0)
      {
        LOBYTE(v124) = 0;
LABEL_57:
        if (v111[1])
        {

          v111[1] = 0;
        }

        re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v108);
        if (BYTE8(v105[2]) == 1 && v106)
        {
          if (BYTE8(v106))
          {
            (*(*v106 + 40))();
          }

          v106 = 0u;
          v107 = 0u;
        }

        if (LOBYTE(v105[0]) == 1 && *(&v105[0] + 1))
        {
          if (v105[1])
          {
            (*(**(&v105[0] + 1) + 40))();
          }

          memset(v105 + 8, 0, 32);
        }

        if (*v103 && (v103[8] & 1) != 0)
        {
          (*(**v103 + 40))();
        }

        goto LABEL_72;
      }
    }

    else
    {
      if ((v112 & 1) == 0)
      {
        goto LABEL_57;
      }

      LOBYTE(v124) = 1;
    }

    BYTE1(v124) = BYTE1(v112);
    goto LABEL_57;
  }

  v30 = re::TextureData::pixelFormat(a2);
  memset(v116, 0, sizeof(v116));
  memset(buf, 0, sizeof(buf));
  MTLPixelFormatGetInfoForDevice();
  if ((*&buf[8] & 0x400) == 0 || (memset(v116, 0, sizeof(v116)), memset(buf, 0, sizeof(buf)), InfoForDevice = MTLPixelFormatGetInfoForDevice(), (*&buf[8] & 0x800) != 0))
  {
    v129 = a5;
    re::StackScratchAllocator::StackScratchAllocator(v86);
    v85 = 0;
    v82[1] = 0;
    v83 = 0;
    v84 = 0;
    v82[0] = v86;
    re::DynamicArray<MetalEmulation::TextureMip>::setCapacity(v82, 0);
    ++v84;
    v35 = re::TextureData::mipmapLevelCount(a2);
    re::DynamicArray<MetalEmulation::TextureMip>::resize(v82, v35);
    if (*(a2 + 2) != 1)
    {
      goto LABEL_125;
    }

    v36 = *a2;
    v37 = re::TextureData::mipmapLevelCount(a2);
    v38 = v85;
    v39 = v83;
    if (v37)
    {
      v40 = 0;
      v41 = 0;
      while (1)
      {
        re::wrapAsTextureMip(v36, v41, v103);
        if (v39 <= v40)
        {
          break;
        }

        v42 = v38 + 224 * v40;
        v43 = v104;
        *v42 = *v103;
        *(v42 + 16) = v43;
        v44 = v105[0];
        v45 = v105[1];
        v46 = v106;
        *(v42 + 64) = v105[2];
        *(v42 + 80) = v46;
        *(v42 + 32) = v44;
        *(v42 + 48) = v45;
        v47 = v107;
        v48 = v108;
        v49 = v110;
        *(v42 + 128) = v109;
        *(v42 + 144) = v49;
        *(v42 + 96) = v47;
        *(v42 + 112) = v48;
        v50 = *v111;
        v51 = v112;
        v52 = v113;
        *(v42 + 208) = v114;
        *(v42 + 176) = v51;
        *(v42 + 192) = v52;
        *(v42 + 160) = v50;
        v40 = ++v41;
        if (re::TextureData::mipmapLevelCount(a2) <= v41)
        {
          goto LABEL_43;
        }
      }

      *v130 = 0;
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      *v93 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v100 = 136315906;
      *&v100[4] = "operator[]";
      *&v100[12] = 1024;
      *&v100[14] = 789;
      *&v100[18] = 2048;
      *&v100[20] = v40;
      v101 = 2048;
      *v102 = v39;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    else
    {
LABEL_43:
      MetalEmulation::wrapTexture(v38, v39, buf);
      *&v102[2] = 0;
      memset(v100, 0, sizeof(v100));
      re::CPUTexture::Data::allocateMips(v100, &v89);
      re::make::shared::object<re::CPUTexture,NS::SharedPtr<MTL::TextureDescriptor> &,re::CPUTexture::Data>(&v89, v100, &v81);
      v99 = 0;
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      *v93 = 0u;
      v94 = 0u;
      v80 = vmovn_s64(v98);
      if (*(v81 + 48))
      {
        MetalEmulation::wrapRenderTargetMip(v89, 0, &v80, *(*(v81 + 64) + 32), *(*(v81 + 64) + 16), v103);
        v125 = v109;
        v126 = v110;
        v127 = *v111;
        v128 = v112;
        v121 = v105[2];
        v122 = v106;
        *v123 = v107;
        v124 = v108;
        *&v117[8] = *v103;
        v118 = v104;
        v119 = v105[0];
        v120 = v105[1];
        v53 = vmovn_s64(*v93);
        HIDWORD(v54) = 393222;
        LOWORD(v54) = v53.i16[0];
        WORD1(v54) = v53.i16[2];
        MetalEmulation::internal::_executeShader(MetalEmulation::generatePrefilteredDiffuseMap, buf, v54);
        *v103 = v81;
        if (v81)
        {
          v55 = (v81 + 8);
        }

        *&v103[8] = 1;
        std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v87, v103);
        v56 = a9;
        if (*&v103[8] != -1)
        {
          (off_1F5D09950[*&v103[8]])(v130, v103);
        }

        if (v81)
        {
        }

        re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v100);
        if (v38 && v82[0])
        {
          (*(*v82[0] + 40))(v82[0], v38);
        }

        re::StackScratchAllocator::~StackScratchAllocator(v86);
LABEL_117:
        *v56 = 0;
        *(v56 + 8) = -1;
        std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(v56, &v87);
        goto LABEL_118;
      }
    }

    v92 = 0;
    v104 = 0u;
    memset(v105, 0, sizeof(v105));
    *v103 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v130 = 136315906;
    *&v130[4] = "operator[]";
    v131 = 1024;
    v132 = 797;
    v133 = 2048;
    v134 = 0;
    v135 = 2048;
    v136 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v32 = *re::graphicsLogObjects(InfoForDevice);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = v30;
    _os_log_error_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_ERROR, "Unsupported pixel format for CPU Metal emulation: %d.", buf, 8u);
  }

  *a9 = 0;
  *(a9 + 8) = 0;
LABEL_118:
  if (v88 != -1)
  {
    (off_1F5D09950[v88])(buf, &v87);
  }

  if (v89)
  {
  }
}

uint64_t re::internal::chooseWritableTextureFormat(re::internal *this, const re::mtl::Device *a2, const re::TextureData *a3, char a4, _BYTE *a5, BOOL *a6)
{
  v7 = a3;
  *a5 = 0;
  v9 = re::TextureData::pixelFormat(a2);
  if ((a4 & 1) == 0 && (re::isHDR(v9) & 1) == 0)
  {
    MTLPixelFormatGetInfoForDevice();
    v10 = 0;
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_6:
    v11 = re::getComponentCount() == 1;
    goto LABEL_7;
  }

  v10 = 1;
  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_4:
  v11 = 1;
LABEL_7:
  if (re::TextureData::swizzle(a2) != 84148994 && re::TextureData::swizzle(a2) != 17040130)
  {
    v11 = v7;
  }

  if (v10)
  {
    v12 = 115;
    v13 = 25;
  }

  else
  {
    v12 = 70;
    v13 = 10;
  }

  if (v11)
  {
    return v13;
  }

  else
  {
    return v12;
  }
}

void *re::DynamicArray<MetalEmulation::TextureMip>::resize(void *result, unint64_t a2)
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

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<MetalEmulation::TextureMip>::setCapacity(result, a2);
      v4 = v3[2];
    }

    if (a2 > v4)
    {
      v5 = 224 * (a2 - v4);
      if (v5 >= 1)
      {
        v6 = v3[4] + 224 * v4;
        v7 = (((v5 >> 5) * 0x2492492492492493uLL) >> 64) + 1;
        do
        {
          *(v6 + 208) = 0;
          *(v6 + 176) = 0uLL;
          *(v6 + 192) = 0uLL;
          *(v6 + 144) = 0uLL;
          *(v6 + 160) = 0uLL;
          *(v6 + 112) = 0uLL;
          *(v6 + 128) = 0uLL;
          *(v6 + 80) = 0uLL;
          *(v6 + 96) = 0uLL;
          *(v6 + 48) = 0uLL;
          *(v6 + 64) = 0uLL;
          *(v6 + 16) = 0uLL;
          *(v6 + 32) = 0uLL;
          *v6 = 0uLL;
          v6 += 224;
          --v7;
        }

        while (v7 > 1);
      }
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void re::generatePrefilteredSpecularIblTexture(id *this@<X0>, const re::RenderManager *a2@<X1>, const re::TextureData *a3@<X2>, uint64_t a4@<X3>, const re::TextureData *a5@<X4>, char a6@<W5>, __int128 *a7@<X6>, uint64_t a8@<X8>)
{
  v14 = this;
  v173 = *MEMORY[0x1E69E9840];
  if (this)
  {
    this = this[26];
  }

  v127 = this;
  v15 = 1024;
  if (a3 < 0x400)
  {
    v15 = a3;
  }

  if (v15 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = v15;
  }

  v17 = re::TextureData::width(a2);
  v18 = re::TextureData::height(a2);
  if (v16 >= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = v16;
  }

  if (v16 >= v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v16;
  }

  v108 = v19;
  v109 = (floor(log2(v19)) + 1.0);
  v126 = 0;
  v22 = re::internal::chooseWritableTextureFormat(&v127, a2, a5, a6, &v126, v21);
  v23 = v22;
  v24 = v126;
  if (v126 == 1)
  {
    v22 = re::translateSRGBPixelFormatToLinear(v22);
    v104 = v22;
    v25 = 19;
  }

  else
  {
    v25 = 3;
    v104 = v22;
  }

  v26 = *re::graphicsLogObjects(v22);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218752;
    *&buf[4] = v108;
    *&buf[12] = 2048;
    *&buf[14] = v20;
    *&buf[22] = 1024;
    *&buf[24] = v23;
    *&buf[28] = 2048;
    *&buf[30] = v109;
    _os_log_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_DEFAULT, "Generating prefiltered %zux%zux6 cubemap of format %d with %zu mip-levels\n", buf, 0x26u);
  }

  v27 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
  v125 = v27;
  [v27 setTextureType_];
  [v27 setWidth_];
  [v27 setHeight_];
  [v27 setPixelFormat_];
  [v27 setMipmapLevelCount_];
  [v27 setUsage_];
  if (re::TextureData::isShareable(a2))
  {
    v28 = 2;
  }

  else
  {
    v28 = 0;
  }

  [v27 setStorageMode_];
  v123 = 0;
  v124 = 0;
  v119 = 0;
  v120 = 0;
  v121 = v109;
  v29 = re::TextureData::width(a2);
  v30 = 1.0;
  if ((v29 / v108) >= 1.0)
  {
    v30 = re::TextureData::width(a2) / v108;
  }

  v31 = vcvts_n_u32_f32(v30 * v30, 4uLL);
  if (v31 >= a4)
  {
    LODWORD(v31) = a4;
  }

  v106 = v31;
  v107 = re::TextureData::width(a2);
  if (!v127)
  {
    v33 = re::TextureData::pixelFormat(a2);
    memset(buf, 0, sizeof(buf));
    MTLPixelFormatGetInfoForDevice();
    if ((*&buf[8] & 0x400) != 0)
    {
      memset(buf, 0, sizeof(buf));
      InfoForDevice = MTLPixelFormatGetInfoForDevice();
      if ((*&buf[8] & 0x800) == 0)
      {
        v35 = *re::graphicsLogObjects(InfoForDevice);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v33;
          _os_log_error_impl(&dword_1E1C61000, v35, OS_LOG_TYPE_ERROR, "Unsupported pixel format for CPU Metal emulation: %d.", buf, 8u);
        }

        *a8 = 0;
        *(a8 + 8) = 0;
        goto LABEL_148;
      }
    }

    v164 = v119;
    v165 = v120;
    v167 = v109;
    re::StackScratchAllocator::StackScratchAllocator(&v116);
    v115 = 0;
    v112[1] = 0;
    v113 = 0;
    v114 = 0;
    v112[0] = &v116;
    re::DynamicArray<MetalEmulation::TextureMip>::setCapacity(v112, 0);
    ++v114;
    v54 = re::TextureData::mipmapLevelCount(a2);
    re::DynamicArray<MetalEmulation::TextureMip>::resize(v112, v54);
    if (*(a2 + 2) == 1)
    {
      v55 = *a2;
      v56 = re::TextureData::mipmapLevelCount(a2);
      v57 = v115;
      v58 = v113;
      if (v56)
      {
        v59 = 0;
        v60 = 0;
        while (1)
        {
          re::wrapAsTextureMip(v55, v60, &v139);
          if (v58 <= v59)
          {
            break;
          }

          v61 = v57 + 224 * v59;
          v62 = v140;
          *v61 = v139;
          *(v61 + 16) = v62;
          v63 = v141[0];
          v64 = v141[1];
          v65 = v142;
          *(v61 + 64) = v141[2];
          *(v61 + 80) = v65;
          *(v61 + 32) = v63;
          *(v61 + 48) = v64;
          v66 = v143;
          v67 = v144;
          v68 = v146;
          *(v61 + 128) = v145;
          *(v61 + 144) = v68;
          *(v61 + 96) = v66;
          *(v61 + 112) = v67;
          v69 = v147;
          v70 = v148;
          v71 = v149;
          *(v61 + 208) = v150;
          *(v61 + 176) = v70;
          *(v61 + 192) = v71;
          *(v61 + 160) = v69;
          v60 = (v60 + 1);
          v59 = v60;
          if (re::TextureData::mipmapLevelCount(a2) <= v60)
          {
            goto LABEL_62;
          }
        }

        v169 = 0;
        v132 = 0u;
        v133 = 0u;
        v130 = 0u;
        v131 = 0u;
        v129 = 0u;
        v73 = MEMORY[0x1E69E9C10];
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v136 = 136315906;
        *&v136[4] = "operator[]";
        *&v136[12] = 1024;
        *&v136[14] = 789;
        *&v136[18] = 2048;
        *&v136[20] = v59;
        v137 = 2048;
        *v138 = v58;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      else
      {
LABEL_62:
        MetalEmulation::wrapTexture(v57, v58, buf);
        *&v138[2] = 0;
        memset(v136, 0, sizeof(v136));
        re::CPUTexture::Data::allocateMips(v136, &v125);
        re::make::shared::object<re::CPUTexture,NS::SharedPtr<MTL::TextureDescriptor> &,re::CPUTexture::Data>(&v125, v136, &v111);
        if (!v109)
        {
LABEL_73:
          *&v139 = v111;
          if (v111)
          {
            v77 = (v111 + 8);
          }

          DWORD2(v139) = 1;
          std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v123, &v139);
          if (DWORD2(v139) != -1)
          {
            (off_1F5D09950[DWORD2(v139)])(&v129, &v139);
          }

          if (v111)
          {
          }

          re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v136);
          if (v57 && v112[0])
          {
            (*(*v112[0] + 40))(v112[0], v57);
          }

          re::StackScratchAllocator::~StackScratchAllocator(&v116);
          goto LABEL_147;
        }

        v72 = 0;
        v73 = 0;
        v60 = &v169;
        while (1)
        {
          v74 = v106;
          if (v73)
          {
            v74 = a4;
          }

          v168 = v74;
          v166 = v73;
          v135 = 0;
          v133 = 0u;
          v134 = 0u;
          v131 = 0u;
          v132 = 0u;
          v129 = 0u;
          v130 = 0u;
          v110 = vmovn_s64(v134);
          a2 = *(v111 + 48);
          if (a2 <= v73)
          {
            break;
          }

          MetalEmulation::wrapRenderTargetMip(v125, v73, &v110, *(*(v111 + 64) + v72 + 32), *(*(v111 + 64) + v72 + 16), &v139);
          v160 = v145;
          v161 = v146;
          v162 = v147;
          v163 = v148;
          v156 = v141[2];
          v157 = v142;
          v158 = v143;
          v159 = v144;
          *&v152[8] = v139;
          v153 = v140;
          v154 = v141[0];
          v155 = v141[1];
          if (v73 || v108 != v107)
          {
            v75 = vmovn_s64(v129);
            HIDWORD(v76) = 393222;
            LOWORD(v76) = v75.i16[0];
            WORD1(v76) = v75.i16[2];
            MetalEmulation::internal::_executeShader(MetalEmulation::generatePrefilteredSpecularMap, buf, v76);
          }

          else
          {
            if (!v58)
            {
              goto LABEL_161;
            }

            MetalEmulation::copy(v57, &v152[8]);
          }

          ++v73;
          v72 += 40;
          if (v109 == v73)
          {
            goto LABEL_73;
          }
        }
      }

      v128 = 0;
      v140 = 0u;
      memset(v141, 0, sizeof(v141));
      v139 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v169) = 136315906;
      *(v60 + 4) = "operator[]";
      v170 = 1024;
      *(v60 + 14) = 797;
      v171 = 2048;
      *(v60 + 20) = v73;
      v172 = 2048;
      *(v60 + 30) = a2;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_161:
      v128 = 0;
      v140 = 0u;
      memset(v141, 0, sizeof(v141));
      v139 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v169) = 136315906;
      *(v60 + 4) = "operator[]";
      v170 = 1024;
      *(v60 + 14) = 789;
      v171 = 2048;
      *(v60 + 20) = 0;
      v172 = 2048;
      *(v60 + 30) = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    goto LABEL_162;
  }

  v102 = [v127 supportsFamily:1004];
  if (re::TextureData::isShareable(a2))
  {
    SharedTexture = re::mtl::Device::makeSharedTexture(v27, &v127, &v129);
  }

  else
  {
    SharedTexture = re::mtl::Device::makeTexture(v27, &v127, &v129);
  }

  if (v24)
  {
    v36 = "generatePrefilteredSpecularMapWithLinearToSRGB";
  }

  else
  {
    v36 = "generatePrefilteredSpecularMap";
  }

  buf[32] = 0;
  v152[16] = 0;
  *&v156 = 0;
  v155 = 0uLL;
  DWORD2(v156) = 0;
  *(&v158 + 1) = 0;
  LOBYTE(v159) = 0;
  v157 = 0uLL;
  LOBYTE(v158) = 0;
  v112[0] = *re::getOrCreateComputePipelineState(v14, buf);
  *v136 = [v127 newCommandQueue];

  if ((atomic_load_explicit(&qword_1EE1BAD10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BAD10))
  {
    re::ns::String::String(&qword_1EE1BAD08, "generatePrefilteredSpecularMapQueue");
    __cxa_guard_release(&qword_1EE1BAD10);
  }

  v37 = qword_1EE1BAD08;
  [*v136 setLabel:v37];

  re::mtl::CommandQueue::makeCommandBuffer(v136, &v169);
  re::mtl::CommandBuffer::makeComputeCommandEncoder(&v169, &v128);
  if ((atomic_load_explicit(&qword_1EE1BAD20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BAD20))
  {
    v100 = re::ns::String::String(&qword_1EE1BAD18, "Generate Specular IBL Texture");
    __cxa_guard_release(v100 + 1);
  }

  v38 = qword_1EE1BAD18;
  [v128 setLabel:v38];

  v39 = [v112[0] threadExecutionWidth];
  v40 = [v112[0] maxTotalThreadsPerThreadgroup];
  if (v109)
  {
    v41 = 0;
    v42 = v40 / v39;
    do
    {
      if (v41 || v108 != v107)
      {
        v43 = a4;
        v44 = v106;
        if (v41)
        {
          v44 = a4;
        }

        v122 = v44;
        v45 = [v129.i64[0] newTextureViewWithPixelFormat:v104 textureType:3 levels:v41 slices:1, 0, 6];
        v46 = ([v45 width] + v39 - 1) / v39;
        v47 = [v45 height];
        v48 = (v42 - 1 + v47) / v42;
        v49 = *re::graphicsLogObjects(v47);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v139) = 67110400;
          DWORD1(v139) = v46;
          WORD4(v139) = 1024;
          *(&v139 + 10) = v48;
          HIWORD(v139) = 1024;
          LODWORD(v140) = 6;
          WORD2(v140) = 1024;
          *(&v140 + 6) = v39;
          WORD5(v140) = 1024;
          HIDWORD(v140) = v42;
          LOWORD(v141[0]) = 1024;
          *(v141 + 2) = 1;
          _os_log_impl(&dword_1E1C61000, v49, OS_LOG_TYPE_DEFAULT, "Dispatching %dx%dx%d thread groups of size %dx%dx%d\n", &v139, 0x26u);
        }

        [v128 setComputePipelineState:v112[0]];
        if (*(a2 + 2))
        {
          goto LABEL_162;
        }

        [v128 setTexture:*a2 atIndex:0];
        [v128 setTexture:v45 atIndex:1];
        HIDWORD(v120) = v41;
        v50 = [v127 newBufferWithBytes:&v119 length:24 options:0];
        [v128 setBuffer:v50 offset:0 atIndex:0];
        *&v139 = v46;
        *(&v139 + 1) = v48;
        *&v140 = 6;
        v116 = v39;
        v117 = v42;
        v118 = 1;
        [v128 dispatchThreadgroups:&v139 threadsPerThreadgroup:&v116];
        if (v50)
        {
        }

        a4 = v43;
        if (v45)
        {
        }
      }

      ++v41;
    }

    while (v109 != v41);
  }

  v51 = [v128 endEncoding];
  if (v108 != v107)
  {
    goto LABEL_115;
  }

  if (v102)
  {
    v52 = "copyCubeMap";
    v53 = "copyCubeMapWithLinearToSRGB";
  }

  else
  {
    v52 = "copyCubeMapWithSampler";
    v53 = "copyCubeMapWithLinearToSRGBWithSampler";
  }

  if (v126)
  {
    v78 = v53;
  }

  else
  {
    v78 = v52;
  }

  LOBYTE(v141[0]) = 0;
  BYTE8(v141[2]) = 0;
  *&v145 = 0;
  v144 = 0uLL;
  DWORD2(v145) = 0;
  *(&v147 + 1) = 0;
  LOBYTE(v148) = 0;
  v146 = 0uLL;
  LOBYTE(v147) = 0;
  re::DynamicString::operator=(buf, &v139);
  re::Optional<re::DynamicString>::operator=(&buf[32], v141);
  re::Optional<re::DynamicString>::operator=(&v152[16], &v141[2] + 8);
  re::DynamicArray<re::TechniqueFunctionConstant>::operator=(&v155, &v144);
  *(&v157 + 1) = *(&v146 + 1);
  LOBYTE(v158) = v147;
  NS::SharedPtr<MTL::Texture>::operator=(&v158 + 1, &v147 + 1);
  if (v159)
  {
    v79 = v14;
    if ((v148 & 1) == 0)
    {
      LOBYTE(v159) = 0;
      goto LABEL_93;
    }
  }

  else
  {
    v79 = v14;
    if ((v148 & 1) == 0)
    {
      goto LABEL_93;
    }

    LOBYTE(v159) = 1;
  }

  BYTE1(v159) = BYTE1(v148);
LABEL_93:
  if (*(&v147 + 1))
  {

    *(&v147 + 1) = 0;
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v144);
  if (BYTE8(v141[2]) == 1 && v142)
  {
    if (BYTE8(v142))
    {
      (*(*v142 + 40))();
    }

    v142 = 0u;
    v143 = 0u;
  }

  if (LOBYTE(v141[0]) == 1 && *(&v141[0] + 1))
  {
    if (v141[1])
    {
      (*(**(&v141[0] + 1) + 40))();
    }

    memset(v141 + 8, 0, 32);
  }

  if (v139 && (BYTE8(v139) & 1) != 0)
  {
    (*(*v139 + 40))();
  }

  ComputePipelineState = re::getOrCreateComputePipelineState(v79, buf);
  v81 = NS::SharedPtr<MTL::Buffer>::operator=(v112, ComputePipelineState);
  if (v112[0])
  {
    re::mtl::CommandBuffer::makeComputeCommandEncoder(&v169, &v139);
    v82 = v139;
    *&v139 = 0;
    v83 = v128;
    v128 = v82;

    if ((atomic_load_explicit(&qword_1EE1BAD30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BAD30))
    {
      v101 = re::ns::String::String(&qword_1EE1BAD28, "Copy Specular Mip0 IBL Texture");
      __cxa_guard_release(v101 + 1);
    }

    v84 = qword_1EE1BAD28;
    [v128 setLabel:v84];

    v85 = [v112[0] threadExecutionWidth];
    v86 = [v112[0] maxTotalThreadsPerThreadgroup] / v85;
    v87 = [v129.i64[0] newTextureViewWithPixelFormat:v104 textureType:3 levels:0 slices:1, 0, 6];
    v88 = ([v87 width] + v85 - 1) / v85;
    v89 = [v87 height];
    v90 = (v86 + v89 - 1) / v86;
    v91 = *re::graphicsLogObjects(v89);
    if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v139) = 67110400;
      DWORD1(v139) = v88;
      WORD4(v139) = 1024;
      *(&v139 + 10) = v90;
      HIWORD(v139) = 1024;
      LODWORD(v140) = 6;
      WORD2(v140) = 1024;
      *(&v140 + 6) = v85;
      WORD5(v140) = 1024;
      HIDWORD(v140) = v86;
      LOWORD(v141[0]) = 1024;
      *(v141 + 2) = 1;
      _os_log_impl(&dword_1E1C61000, v91, OS_LOG_TYPE_DEFAULT, "Dispatching %dx%dx%d thread groups of size %dx%dx%d\n", &v139, 0x26u);
    }

    [v128 setComputePipelineState:v112[0]];
    if (!*(a2 + 2))
    {
      [v128 setTexture:*a2 atIndex:0];
      [v128 setTexture:v87 atIndex:1];
      *&v139 = v88;
      *(&v139 + 1) = v90;
      *&v140 = 6;
      v116 = v85;
      v117 = v86;
      v118 = 1;
      [v128 dispatchThreadgroups:&v139 threadsPerThreadgroup:&v116];
      [v128 endEncoding];
      if (v87)
      {
      }

LABEL_115:
      if ([v129.i64[0] storageMode] == 1)
      {
        re::mtl::CommandBuffer::makeBlitCommandEncoder(&v169, &v139);
        [v139 endEncoding];
      }

      [v169 commit];
      [v169 waitUntilCompleted];
      re::mtl::CommandBuffer::error(&v169, &v139);
      v92 = [v139 code];

      if (v92)
      {
        if (a7)
        {
          re::mtl::CommandBuffer::error(&v169, &v139);
          if (&v139 != a7)
          {
            v94 = v139;
            *&v139 = 0;
            v95 = *a7;
            *a7 = v94;
          }
        }

        v96 = *re::graphicsLogObjects(v93);
        if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v139) = 0;
          _os_log_error_impl(&dword_1E1C61000, v96, OS_LOG_TYPE_ERROR, "Internal Metal error while generating specular IBL cubemap. Execution likely took too long - Try again, and if the issue persists, lower samplesPerTexel.", &v139, 2u);
        }
      }

      *&v139 = v129.i64[0];
      DWORD2(v139) = 0;
      std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v123, &v139);
      if (DWORD2(v139) != -1)
      {
        (off_1F5D09950[DWORD2(v139)])(&v116, &v139);
      }

      v97 = 1;
      goto LABEL_127;
    }

LABEL_162:
    std::__throw_bad_variant_access[abi:nn200100]();
  }

  v98 = *re::graphicsLogObjects(v81);
  if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
  {
    if (buf[8])
    {
      v99 = *&buf[16];
    }

    else
    {
      v99 = &buf[9];
    }

    LODWORD(v139) = 136315138;
    *(&v139 + 4) = v99;
    _os_log_error_impl(&dword_1E1C61000, v98, OS_LOG_TYPE_ERROR, "Failed to get or create compute pipeline %s", &v139, 0xCu);
  }

  v97 = 0;
  *a8 = 0;
  *(a8 + 8) = 0;
LABEL_127:

  if (v112[0])
  {
  }

  if (*(&v158 + 1))
  {

    *(&v158 + 1) = 0;
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v155);
  if (v152[16] == 1 && v153)
  {
    if (BYTE8(v153))
    {
      (*(*v153 + 40))();
    }

    v153 = 0u;
    v154 = 0u;
  }

  if (buf[32] == 1 && *&buf[40])
  {
    if (buf[48])
    {
      (*(**&buf[40] + 40))();
    }

    *v152 = 0u;
    *&buf[40] = 0u;
  }

  if (*buf && (buf[8] & 1) != 0)
  {
    (*(**buf + 40))();
  }

  if (v129.i64[0])
  {
  }

  if (v97)
  {
LABEL_147:
    *a8 = 0;
    *(a8 + 8) = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(a8, &v123);
  }

LABEL_148:
  if (v124 != -1)
  {
    (off_1F5D09950[v124])(buf, &v123);
  }

  if (v125)
  {
  }
}

void *re::DynamicArray<MetalEmulation::TextureMip>::setCapacity(void *result, unint64_t a2)
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

        if (is_mul_ok(a2, 0xE0uLL))
        {
          v2 = 224 * a2;
          result = (*(*result + 32))(result, 224 * a2, 16);
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
            memcpy(v7, v5[4], 224 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 224, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<MetalEmulation::TextureMip>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

uint64_t re::make::shared::object<re::CPUTexture,NS::SharedPtr<MTL::TextureDescriptor> &,re::CPUTexture::Data>@<X0>(re *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = re::globalAllocators(a1);
  v7 = (*(*v6[2] + 32))(v6[2], 104, 8);
  result = re::CPUTexture::CPUTexture(v7, a1, a2);
  *a3 = result;
  return result;
}

uint64_t std::__function::__value_func<void ()(re::BackgroundTask &)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<re::BackgroundTaskResult ()(re::BackgroundTask &)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(re::BackgroundTask &)>::~__value_func[abi:nn200100](uint64_t a1)
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

re::MeshShadowGenerationBacklog *re::MeshShadowGenerationBacklog::MeshShadowGenerationBacklog(re::MeshShadowGenerationBacklog *this)
{
  *(this + 5) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 1) = 0;
  v2 = re::Queue<re::ShadowPair>::setCapacity(this, 0);
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 20) = 0;
  *(this + 4) = 0u;
  *(this + 3) = 0u;
  *(this + 84) = 0x7FFFFFFFLL;
  return this;
}

void re::MeshShadowGenerationBacklog::~MeshShadowGenerationBacklog(re::MeshShadowGenerationBacklog *this)
{
  v2 = re::HashSetBase<re::TriggerPair,re::TriggerPair,re::internal::ValueAsKey<re::TriggerPair>,re::Hash<re::TriggerPair>,re::EqualTo<re::TriggerPair>,true,false>::deinit(this + 6);
  if (*this)
  {
    if (*(this + 5))
    {
      (*(**this + 40))(*this, v2);
    }

    *(this + 5) = 0;
    *this = 0u;
    *(this + 1) = 0u;
    *(this + 8) = 0;
  }
}

unint64_t re::MeshShadowGenerationBacklog::pushBack(uint64_t a1, __n128 *a2)
{
  result = re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::contains(a1 + 48, a2);
  if (result)
  {
    return result;
  }

  re::Queue<re::ShadowPair>::enqueue(a1, a2);
  result = re::Hash<re::ShadowPair>::operator()(&v12, a2);
  v5 = *(a1 + 72);
  if (!v5)
  {
    LODWORD(v6) = 0;
    goto LABEL_11;
  }

  v6 = result % v5;
  v7 = *(*(a1 + 56) + 4 * (result % v5));
  if (v7 == 0x7FFFFFFF)
  {
LABEL_11:
    result = re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::addAsCopy(a1 + 48, v6, result, a2, a2);
    ++*(a1 + 88);
    return result;
  }

  v8 = *(a1 + 64);
  while (1)
  {
    v9 = v8 + 40 * v7;
    v11 = *(v9 + 16);
    v10 = v9 + 16;
    if (v11 == a2->n128_u64[0] && *(v10 + 8) == a2->n128_u64[1] && *(v10 + 16) == a2[1].n128_u64[0])
    {
      return result;
    }

    v7 = *(v8 + 40 * v7 + 8) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      goto LABEL_11;
    }
  }
}

__n128 re::Queue<re::ShadowPair>::enqueue(_anonymous_namespace_ *this, __n128 *a2)
{
  v5 = *(this + 1);
  v4 = *(this + 2);
  if (v4 + 1 >= v5)
  {
    re::Queue<re::ShadowPair>::growCapacity(this, v4 + 1);
    v5 = *(this + 1);
    v4 = *(this + 2);
  }

  v6 = (*(this + 5) + 24 * ((*(this + 3) + v4) % v5));
  result = *a2;
  v6[1].n128_u64[0] = a2[1].n128_u64[0];
  *v6 = result;
  ++*(this + 2);
  ++*(this + 8);
  return result;
}

uint64_t re::MeshShadowGenerationBacklog::popFront@<X0>(uint64_t this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(this + 16);
  if (v4)
  {
    v5 = this;
    while (1)
    {
      v6 = 0uLL;
      v7 = 0;
      re::Queue<re::ShadowPair>::dequeue(v5, a2, &v6);
      this = re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::contains(v5 + 48, &v6);
      if (this)
      {
        break;
      }

      v4 = *(v5 + 16);
      if (!v4)
      {
        goto LABEL_7;
      }
    }

    *(a3 + 8) = v6;
    *(a3 + 24) = v7;
    this = re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::remove(v5 + 48, &v6);
    LOBYTE(v4) = 1;
  }

LABEL_7:
  *a3 = v4;
  return this;
}

uint64_t re::Queue<re::ShadowPair>::dequeue@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(result + 16);
  if (v5)
  {
    v6 = *(result + 24);
    v7 = *(result + 40) + 24 * v6;
    *a3 = *v7;
    *(a3 + 16) = *(v7 + 16);
    if ((v6 + 1) < *(result + 8))
    {
      v8 = v6 + 1;
    }

    else
    {
      v8 = 0;
    }

    *(result + 16) = v5 - 1;
    *(result + 24) = v8;
    ++*(result + 32);
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Queue<T> is empty", "m_size > 0", "dequeue", 569, v3, v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void *re::Queue<re::ShadowPair>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    v6 = result + 2;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::Queue<re::ShadowPair>::setCapacity(v5, a2);
        *v6 = 0;
        v6[1] = 0;
        *(v6 + 4) = 0;
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
            v8 = result;
            if (!v5[1])
            {
              goto LABEL_18;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in Queue<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 440, 24, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v7, "assertion failure: '%s' (%s:line %i) Queue<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 444, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v8 = 0;
      if (!v3)
      {
LABEL_18:
        v5[5] = v8;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      if (v5[2])
      {
        v9 = 0;
        v10 = v5[3];
        do
        {
          v11 = v5[5] + 24 * ((v9 + v5[3]) % v5[1]);
          v12 = &v8[3 * v10];
          v13 = *v11;
          v12[2] = *(v11 + 16);
          *v12 = v13;
          if (v10 + 1 < a2)
          {
            ++v10;
          }

          else
          {
            v10 = 0;
          }

          ++v9;
        }

        while (v9 != v5[2]);
      }

      result = (*(**v5 + 40))(*v5, v5[5]);
      goto LABEL_18;
    }
  }

  return result;
}

void *re::Queue<re::ShadowPair>::growCapacity(void *this, unint64_t a2)
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

      return re::Queue<re::ShadowPair>::setCapacity(this, a2);
    }

    else
    {
      this = re::Queue<re::ShadowPair>::setCapacity(v4, v3);
      v4[2] = 0;
      v4[3] = 0;
      *(v4 + 8) = 0;
    }
  }

  return this;
}

uint64_t re::getOrCreateArgumentBuffer(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  *&v60 = *(v3 + 128);
  *(&v60 + 1) = v3;
  v4 = *(a1 + 8);
  *v61 = *(v2 + 1456);
  *&v61[8] = *(a1 + 40);
  v5 = *(v4 + 112);
  v6 = re::HashBrown<re::ArgumentBufferCacheKey,re::CachedArgumentBuffer *,re::Hash<re::ArgumentBufferCacheKey>,re::EqualTo<re::ArgumentBufferCacheKey>,void,false>::find((v5 + 104), &v60);
  if (v6 == -1 || (v7 = *(*(v5 + 112) + 48 * v6 + 40)) == 0)
  {
    v22 = re::globalAllocators(v6);
    v7 = (*(*v22[2] + 32))(v22[2], 80, 8);
    *v7 = 0u;
    *(v7 + 16) = 0u;
    *(v7 + 32) = 0u;
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
    objc_initWeak((v7 + 64), 0);
    v23 = *(v1 + 24);
    *(v7 + 75) = 0;
    re::createArgumentBuffer(v1, (v23 + 120), v7);
    re::encodeArgumentBuffer(v1, &v60, v7);
    *(v7 + 56) = -1;
    v24 = *(v1 + 72);
    if (v24)
    {
      v25 = (v24 + 8);
    }

    else
    {
      v25 = 0;
    }

    objc_storeWeak((v7 + 64), v25);
    re::CachedArgumentBuffer::updateWritableBufferVersions(v7, *(v1 + 65), *(v1 + 64));
    *(v7 + 76) = 1;
    v1 = *v1;
    v26 = re::HashBrown<re::ArgumentBufferCacheKey,re::CachedArgumentBuffer *,re::Hash<re::ArgumentBufferCacheKey>,re::EqualTo<re::ArgumentBufferCacheKey>,void,false>::find(v1, &v60);
    if (v26 != -1)
    {
      goto LABEL_56;
    }

    if (*(v1 + 56))
    {
LABEL_31:
      v27 = *(v1 + 32);
      if (!v27 || (v28 = *(v1 + 16), v28 > 8 * v27))
      {
        re::HashBrown<re::ArgumentBufferCacheKey,re::CachedArgumentBuffer *,re::Hash<re::ArgumentBufferCacheKey>,re::EqualTo<re::ArgumentBufferCacheKey>,void,false>::resize(v1, 1);
        v28 = *(v1 + 16);
      }

      v29 = (*v61 + (v60 << 6) + (v60 >> 2) - 0x61C8864680B583E9) ^ v60;
      v30 = ((*&v61[16] + (*&v61[8] << 6) + (*&v61[8] >> 2) - 0x61C8864680B583E9) ^ *&v61[8]) + (v29 >> 2);
      v31 = v28 >> 4;
      v32 = ((v30 + (v29 << 6) - 0x61C8864680B583E9) ^ v29) % (v28 >> 4);
      v33 = *v1;
      v34 = xmmword_1E304FAD0;
      v35 = 4.74803907e-38;
      while (1)
      {
        v36 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v33 + 16 * v32)), v34)))), *&v35)));
        if (v36 < 0x40)
        {
          break;
        }

        v52 = v34;
        v56 = v35;
        v54 = v30;
        v55 = v33;
        v57 = v32 + 1;
        v53 = v31;
        if (v32 + 1 == v31)
        {
          v57 = 0;
        }

        v37 = re::HashBrown<re::ArgumentBufferCacheKey,re::CachedArgumentBuffer *,re::Hash<re::ArgumentBufferCacheKey>,re::EqualTo<re::ArgumentBufferCacheKey>,void,false>::h1(&v60);
        v31 = v53;
        v32 = v57;
        v30 = v54;
        v33 = v55;
        v35 = v56;
        v34 = v52;
        if (v57 == v37 % v53)
        {
          goto LABEL_62;
        }
      }

      v39 = v33 + 16 * v32;
      v40 = *(v39 + v36);
      *(v39 + v36) = ((v30 + (v29 << 6) + 23) ^ v29) & 0x7F;
      v41 = 3 * (v36 + 16 * v32);
      v42 = *(v1 + 8) + 16 * v41;
      v43 = v60;
      v44 = *v61;
      *(v42 + 32) = *&v61[16];
      *v42 = v43;
      *(v42 + 16) = v44;
      *(*(v1 + 8) + 16 * v41 + 40) = v7;
      if (v40 == 255)
      {
        v45 = -1;
      }

      else
      {
        v45 = 0;
      }

      v46.i64[0] = vdupq_n_s64(1uLL).u64[0];
      v46.i64[1] = v45;
      *(v1 + 24) = vaddq_s64(*(v1 + 24), v46);
      re::HashBrown<re::ArgumentBufferCacheKey,re::CachedArgumentBuffer *,re::Hash<re::ArgumentBufferCacheKey>,re::EqualTo<re::ArgumentBufferCacheKey>,void,false>::updateHashes(v1, (*(v1 + 8) + 16 * v41));
      goto LABEL_56;
    }

LABEL_60:
    goto LABEL_31;
  }

  v8 = *(v1 + 72);
  WeakRetained = objc_loadWeakRetained((v7 + 64));
  if (WeakRetained)
  {
    v11 = WeakRetained - 8;
  }

  else
  {
    v11 = 0;
  }

  if (WeakRetained)
  {
  }

  if (v8 != v11)
  {
    *(v7 + 56) = -1;
    v12 = *(v1 + 72);
    if (v12)
    {
      v13 = (v12 + 8);
    }

    else
    {
      v13 = 0;
    }

    objc_storeWeak((v7 + 64), v13);
  }

  v14 = *(v7 + 75);
  if (v14 >= 2)
  {
    re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, *(v7 + 75), 2);
    _os_crash();
    __break(1u);
LABEL_59:
    re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, v8, 2);
    v26 = _os_crash();
    __break(1u);
    goto LABEL_60;
  }

  if (*(v1 + 64) == *(v7 + 56 + 2 * v14) && *(v1 + 65) == *(v7 + 2 * v14 + 60) && (*(v7 + 73) & 1) != 0)
  {
    goto LABEL_56;
  }

  v8 = *(v7 + 76);
  if (v8 >= 2)
  {
    goto LABEL_59;
  }

  v15 = *(v1 + 24);
  if (!*(v7 + 8 * v8))
  {
    re::createArgumentBuffer(v1, (v15 + 120), v7);
    re::encodeArgumentBuffer(v1, &v60, v7);
LABEL_55:
    re::CachedArgumentBuffer::updateWritableBufferVersions(v7, *(v1 + 65), *(v1 + 64));
    v50 = *(v7 + 76);
    *(v7 + 75) = v50;
    *(v7 + 76) = (v50 & 1) == 0;
LABEL_56:
    *(v7 + 73) = 1;
    return v7;
  }

  v58 = *(v15 + 120);
  v16 = *(v7 + 8 * v8);
  v59 = 0;
  NS::SharedPtr<MTL::Buffer>::operator=(&v59, &v58);
  [v59 setArgumentBuffer:v16 offset:0];
  if (v16)
  {
  }

  if (v58)
  {

    v58 = 0;
  }

  v18 = *(v7 + 76);
  if (v18 < 2)
  {
    v19 = 2 * v18;
    v20 = *(v7 + 2 * v18 + 60);
    if (*(v1 + 64) == *(v7 + 56 + v19))
    {
      v21 = *(v7 + 73) ^ 1;
    }

    else
    {
      v21 = 1;
    }

    if (*(v1 + 65) != v20)
    {
      re::encodeConstants(*(v1 + 32), *(*(&v60 + 1) + 96), *(*(&v60 + 1) + 112), &v59, 0);
    }

    if (v21)
    {
      v47 = *(v7 + 32);
      *(v7 + 32) = 0;
      if (v47)
      {
        v48 = *(v7 + 48);
        v49 = 8 * v47;
        do
        {
          if (*v48)
          {

            *v48 = 0;
          }

          ++v48;
          v49 -= 8;
        }

        while (v49);
      }

      ++*(v7 + 40);
      re::encodeTextures(v1, &v60, &v59, v7);
    }

    re::ArgumentEncoderBufferPair::~ArgumentEncoderBufferPair(&v59);
    goto LABEL_55;
  }

  re::internal::assertLog(6, v17, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, *(v7 + 76), 2);
  _os_crash();
  __break(1u);
LABEL_62:
  re::internal::assertLog(4, v38, v35, "assertion failure: '%s' (%s:line %i) Unexpected full hash-table", "blockIndex != h1(key) % blockCount()", "internalAdd", 658);
  result = _os_crash();
  __break(1u);
  return result;
}

void re::createArgumentBuffer(uint64_t a1, id *a2, uint64_t a3)
{
  v6 = *(a3 + 76);
  v7 = *(a1 + 8);
  re::ensureHeapInitialized(*a1, (v7 + 208));
  v8 = *(*(*a1 + 96) + 8 * *(*a1 + 80) - 8);
  v19 = v8;
  v9 = [*(v7 + 208) heapBufferSizeAndAlignWithLength:objc_msgSend(*a2 options:{sel_encodedLength), 256}];
  if ([v8 maxAvailableSizeWithAlignment_] < v9)
  {
    re::createNewHeap((v7 + 208), &v18);
    v11 = *a1;
    v12 = *(*a1 + 80);
    if (v12 >= *(*a1 + 72))
    {
      re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::growCapacity((v11 + 64), v12 + 1);
      v12 = *(v11 + 80);
    }

    v13 = *(v11 + 96);
    v14 = v18;
    *(v13 + 8 * v12) = v18;
    ++*(v11 + 80);
    ++*(v11 + 88);
    [**(a1 + 56) useHeap:v14 stages:3];
    NS::SharedPtr<MTL::Buffer>::operator=(&v19, (*(*a1 + 96) + 8 * *(*a1 + 80) - 8));
    if (v14)
    {
    }

    v8 = v19;
  }

  v18 = [v8 newBufferWithLength:objc_msgSend(*a2 options:{sel_encodedLength), 256}];
  if (v6 >= 2)
  {
    re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, v6, 2);
    _os_crash();
    __break(1u);
LABEL_15:
    re::internal::assertLog(4, v17, "assertion failure: '%s' (%s:line %i) makeBuffer returned null for argument buffer! Have we run out of memory?", "cachedArgumentBuffer->argumentBufferChain[indexToWrite]", "createArgumentBuffer", 193);
    _os_crash();
    __break(1u);
    return;
  }

  v16 = (a3 + 8 * v6);
  NS::SharedPtr<MTL::Texture>::operator=(v16, &v18);
  if (v18)
  {
  }

  if (!*v16)
  {
    goto LABEL_15;
  }

  if (v19)
  {
  }
}

void re::encodeArgumentBuffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 76);
  v16 = *(*(a1 + 24) + 120);
  if (v6 < 2)
  {
    v8 = *(a3 + 8 * v6);
    v17 = 0;
    NS::SharedPtr<MTL::Buffer>::operator=(&v17, &v16);
    [v17 setArgumentBuffer:v8 offset:0];
    if (v8)
    {
    }

    if (v16)
    {

      v16 = 0;
    }

    re::encodeTextures(a1, a2, &v17, a3);
    v10 = *(a2 + 8);
    v11 = v10[7];
    if (!v11)
    {
LABEL_11:
      re::encodeConstants(*(a1 + 32), v10[12], v10[14], &v17, 1);
      re::ArgumentEncoderBufferPair::~ArgumentEncoderBufferPair(&v17);
      return;
    }

    v12 = 8 * v11;
    v6 = *(a1 + 32);
    v13 = (v10[9] + 4);
    while (1)
    {
      v14 = (*(v6 + 16) + 48 * *(v13 - 1));
      v15 = v14[1];
      if (v15 <= *v13)
      {
        break;
      }

      [v17 setBuffer:*(*v14 + 24 * *v13) offset:*(*v14 + 24 * *v13 + 16) atIndex:*(v13 - 2)];
      v13 += 4;
      v12 -= 8;
      if (!v12)
      {
        v10 = *(a2 + 8);
        goto LABEL_11;
      }
    }

    re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, *v13, v15);
    _os_crash();
    __break(1u);
  }

  re::internal::assertLog(6, v7, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, v6, 2, v16);
  _os_crash();
  __break(1u);
}

uint64_t re::CachedArgumentBuffer::updateWritableBufferVersions(uint64_t this, uint64_t a2, __int16 a3)
{
  v5 = *(this + 76);
  if (v5 >= 2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, v5, 2, v3, v4);
    this = _os_crash();
    __break(1u);
  }

  else
  {
    v6 = this + 2 * v5;
    *(v6 + 60) = a2;
    *(v6 + 56) = a3;
    *(this + 72) = 1;
  }

  return this;
}

void re::encodeConstants(uint64_t *a1, uint64_t a2, uint64_t a3, id *a4, char a5)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v6 = a3;
    v8 = a3 + 112 * a2;
    do
    {
      if ((a5 & 1) != 0 || (*(v6 + 104) & 0x200) != 0)
      {
        v9 = [*a4 constantDataAtIndex_];
        v10 = v9;
        v11 = *(v6 + 24);
        if (v11)
        {
          v12 = *(v6 + 40);
          v13 = 16 * v11;
          do
          {
            if ((*v12 - 4) >= 4 && *v12 != 9)
            {
              v15 = *re::graphicsLogObjects(v9);
              v9 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
              if (v9)
              {
                v16 = *(v6 + 96);
                v17 = *v12;
                *buf = 67109376;
                *&buf[4] = v16;
                LOWORD(v31) = 1024;
                *(&v31 + 2) = v17;
                _os_log_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_DEFAULT, "Cannot encode a constant at argument index %d. Table at index %d does not support argument buffers.", buf, 0xEu);
              }
            }

            v12 += 4;
            v13 -= 16;
          }

          while (v13);
        }

        v18 = *(v6 + 88);
        v19 = *(v6 + 72);
        if (v19)
        {
          v20 = 16 * v19;
          do
          {
            if ((*v18 - 4) >= 4 && *v18 != 9)
            {
              v22 = *re::graphicsLogObjects(v9);
              v9 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
              if (v9)
              {
                v23 = *(v6 + 96);
                v24 = *v18;
                *buf = 67109376;
                *&buf[4] = v23;
                LOWORD(v31) = 1024;
                *(&v31 + 2) = v24;
                _os_log_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_DEFAULT, "Cannot encode a constant at argument index %d. Table at index %d does not support argument buffers.", buf, 0xEu);
              }
            }

            ++v18;
            v20 -= 16;
          }

          while (v20);
          v18 = *(v6 + 88);
          v19 = *(v6 + 72);
        }

        v25 = *a1;
        v26 = *(v6 + 100);
        v27 = *(v6 + 24);
        *buf = *(v6 + 40);
        v31 = v27;
        v29[0] = v18;
        v29[1] = v19;
        re::ConstantTableCollection::fill(v25, v10, v26, buf, v29);
      }

      v6 += 112;
    }

    while (v6 != v8);
  }
}

void re::encodeTextures(uint64_t a1, uint64_t a2, id *a3, uint64_t a4)
{
  v48 = *MEMORY[0x1E69E9840];
  if ((re::mtl::Device::needsArgumentBufferTextureEmulation((*(a1 + 8) + 208)) & 1) == 0)
  {
    v8 = *(a2 + 8);
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = *(v8 + 32);
      v11 = &v10[4 * v9];
      v12 = *(a1 + 32);
      v13 = &selRef_setOwnerWithIdentity_;
      do
      {
        if (*(v10 + 6) == 1)
        {
          [*a3 v13[71]];
        }

        else
        {
          (*(**(*(v12 + 8) + 8 * v10[1]) + 24))(v34);
          [*a3 v13[71]];
          if (v10[1])
          {
            v14 = *(a4 + 48);
            v15 = *(a4 + 32);
            v16 = v14;
            while (v15)
            {
              v17 = v15 >> 1;
              v18 = &v16[v15 >> 1];
              v20 = *v18;
              v19 = v18 + 1;
              v15 += ~(v15 >> 1);
              if (v20 < v34[0])
              {
                v16 = v19;
              }

              else
              {
                v15 = v17;
              }
            }

            v21 = v16 - v14;
            v22 = v16 - v14;
            v23 = v34[0];
            v33 = v23;
            v24 = *(a4 + 32);
            v25 = v24 + 1;
            if (v24 + 1 <= v21 >> 3)
            {
              v34[1] = 0;
              v46 = 0u;
              v47 = 0u;
              v44 = 0u;
              v45 = 0u;
              v43 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v35 = 136315906;
              v36 = "insert";
              v37 = 1024;
              v38 = 887;
              v39 = 2048;
              v40 = v22;
              v41 = 2048;
              v42 = v25;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
            }

            v26 = v23;
            if (v24 >= *(a4 + 24))
            {
              re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::growCapacity((a4 + 16), v24 + 1);
              v24 = *(a4 + 32);
            }

            v27 = *(a4 + 48);
            v28 = (v27 + 8 * v24);
            if (v24 <= v22)
            {
              *v28 = v26;
              *(a4 + 32) = v24 + 1;
              ++*(a4 + 40);
              v13 = &selRef_setOwnerWithIdentity_;
            }

            else
            {
              v29 = (v28 - 1);
              *v28 = *(v28 - 1);
              *(v28 - 1) = 0;
              if (v28 - 1 != (v27 + v21))
              {
                v30 = v21 - 8 * v24 + 8;
                do
                {
                  v31 = v29 - 1;
                  NS::SharedPtr<MTL::Texture>::operator=(v29, v29 - 1);
                  v29 = v31;
                  v30 += 8;
                }

                while (v30);
                v27 = *(a4 + 48);
              }

              NS::SharedPtr<MTL::Texture>::operator=((v27 + 8 * v22), &v33);
              v32 = v33;
              ++*(a4 + 32);
              ++*(a4 + 40);
              v13 = &selRef_setOwnerWithIdentity_;
              if (v32)
              {
              }
            }
          }

          else
          {
            *(a4 + 74) = 1;
          }

          if (v34[0])
          {
          }
        }

        v10 += 4;
      }

      while (v10 != v11);
    }
  }
}

void re::ensureHeapInitialized(uint64_t a1, id *this)
{
  if (!*(a1 + 80))
  {
    v5[3] = v2;
    v5[4] = v3;
    re::createNewHeap(this, v5);
    re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add((a1 + 64), v5);
    if (v5[0])
    {
    }
  }
}

void re::createNewHeap(id *this@<X0>, void *a2@<X8>)
{
  v5 = [objc_msgSend(MEMORY[0x1E69740E8] alloc)];
  [v5 setCpuCacheMode_];
  [v5 setStorageMode_];
  [v5 setSize_];
  [v5 setHazardTrackingMode_];
  *a2 = [*this newHeapWithDescriptor_];
  if (v5)
  {
  }
}

re::ArgumentBufferCacheReferences *re::ArgumentBufferCacheReferences::ArgumentBufferCacheReferences(re::ArgumentBufferCacheReferences *this, re::Allocator *a2)
{
  *(this + 4) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *this = a2;
  re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(this, 0);
  ++*(this + 6);
  *(this + 9) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 5) = a2;
  re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(this + 5, 0);
  ++*(this + 16);
  *(this + 40) = 0;
  return this;
}

void *re::ArgumentBufferCacheReferences::addAndUseResourcePtrs(void *this, id *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = *(a3 + 32);
    v8 = &v7[v5];
    do
    {
      v9 = *v7;
      v13 = *v7;
      v10 = *(v4 + 16);
      if (v6 >= v10)
      {
        v11 = 0;
      }

      else
      {
        while (1)
        {
          v11 = *(*(v4 + 32) + 8 * v6);
          if (v11 >= v9)
          {
            break;
          }

          if (v10 == ++v6)
          {
            v6 = *(v4 + 16);
            break;
          }
        }
      }

      if (v11 != v9)
      {
        re::DynamicArray<unsigned long>::insert(v4, v6, &v13);
        this = re::DynamicArray<unsigned long>::add((v4 + 40), &v13);
      }

      ++v7;
    }

    while (v7 != v8);
  }

  v12 = *(v4 + 56);
  if (v12)
  {
    this = [*a2 useResources:*(v4 + 72) count:v12 usage:1 stages:3];
    *(v4 + 56) = 0;
    ++*(v4 + 64);
  }

  return this;
}

uint64_t re::processArgumentBufferContextAndUseResources(uint64_t a1, uint64_t a2, id *a3)
{
  ArgumentBuffer = re::getOrCreateArgumentBuffer(a1);
  if (*(ArgumentBuffer + 74) == 1 && (*(a2 + 81) & 1) == 0)
  {
    [*a3 useHeap:*(*(*(a1 + 8) + 56) + 8) stages:3];
    *(a2 + 81) = 1;
  }

  re::ArgumentBufferCacheReferences::addAndUseResourcePtrs(a2, a3, ArgumentBuffer + 16);
  return ArgumentBuffer;
}

void re::ArgumentEncoderBufferPair::~ArgumentEncoderBufferPair(id *this)
{
  v2 = *this;
  if (v2)
  {
    [v2 setArgumentBuffer:0 offset:0];
    if (*this)
    {

      *this = 0;
    }
  }
}

uint64_t re::FunctionConstantsEnumerator::hasMatchingValueInLayer(re::FunctionConstantsEnumerator *this, const char *__s2, uint64_t a3)
{
  v3 = *(this + 1);
  if (!v3)
  {
    return 0;
  }

  v6 = *(this + 2);
  v7 = &v6[11 * v3];
  while (1)
  {
    v8 = (v6[1] & 1) != 0 ? v6[2] : v6 + 9;
    if (!strcmp(v8, __s2))
    {
      v9 = v6[7];
      if (v9)
      {
        break;
      }
    }

LABEL_7:
    v6 += 11;
    if (v6 == v7)
    {
      return 0;
    }
  }

  v10 = 16 * v9;
  v11 = (v6[8] + 8);
  while (*(v11 - 8) != 1 || *v11 != a3)
  {
    v11 += 2;
    v10 -= 16;
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  return 1;
}

uint64_t *re::FunctionConstantsEnumerator::createLayerToIndexMap(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 2) = 0;
  v8 = *(a2 + 8);
  *(a1 + 1) = v8;
  if (v8)
  {
    if (v8 >> 62)
    {
      goto LABEL_21;
    }

    *(a1 + 2) = result;
    if (result)
    {
      v12 = result;
      v13 = result;
      v14 = v8 - 1;
      if (v8 != 1)
      {
        do
        {
          *v13 = 0;
          v13 += 4;
          --v14;
        }

        while (v14);
      }

      v15 = 0;
      *v13 = 0;
      while (1)
      {
        if (a4)
        {
          if (*(a2 + 8) <= v15)
          {
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_20:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_21:
            re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 4, v8);
            _os_crash();
            __break(1u);
            break;
          }

          v16 = 0;
          v17 = *(a2 + 16) + 88 * v15;
          v18 = a3;
          while (1)
          {
            result = re::DynamicString::operator==(v18, v17);
            if (result)
            {
              break;
            }

            ++v16;
            v18 += 104;
            if (a4 == v16)
            {
              goto LABEL_17;
            }
          }

          if (v8 <= v15)
          {
            goto LABEL_20;
          }

          v19 = v12 + 4 * v15;
          if ((*v19 & 1) == 0)
          {
            *v19 = 1;
          }

          *(v19 + 1) = v16;
        }

LABEL_17:
        if (++v15 == v8)
        {
          return result;
        }
      }
    }

    re::internal::assertLog(4, v11, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::FunctionConstantsEnumerator::enumerateFunctionConstantSet(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  v5 = *(a1 + 16);
  v6 = &v5[11 * v2];
  do
  {
    v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a2, v5 + 4);
    if (v7 == -1)
    {
LABEL_9:
      v12 = 0;
    }

    else
    {
      v9 = v5[7];
      v8 = v5[8];
      if (v9)
      {
        v10 = 16 * v9;
        v11 = v5[8];
        while (*v11 != 1 || *(v11 + 8) != *(a2[1] + 16 * v7 + 8))
        {
          v11 += 16;
          v10 -= 16;
          if (!v10)
          {
            goto LABEL_9;
          }
        }
      }

      else
      {
        v11 = v5[8];
      }

      v13 = v8 + 16 * v9;
      v12 = (v11 - v8) >> 4;
      if (v11 == v13)
      {
        v12 = 0;
      }
    }

    v4 += v5[9] * v12;
    v5 += 11;
  }

  while (v5 != v6);
  return v4;
}

uint64_t re::FunctionConstantsEnumerator::createPermutation@<X0>(_anonymous_namespace_ *a1@<X0>, unint64_t a2@<X1>, re::DynamicString *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v50 = *MEMORY[0x1E69E9840];
  *(a5 + 32) = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *a5 = 0;
  *(a5 + 24) = 0;
  if (a4)
  {
    v9 = a4;
    re::DynamicArray<re::TechniqueFunctionConstant>::setCapacity(a5, v9);
    ++*(a5 + 24);
    re::DynamicArray<re::TechniqueFunctionConstant>::copy(a5, 0, a3, v9);
    v11 = *(a5 + 32);
    a4 = *(a5 + 16);
  }

  else
  {
    v11 = 0;
  }

  LayerToIndexMap = re::FunctionConstantsEnumerator::createLayerToIndexMap(&v33, a1, v11, a4);
  if (*(a1 + 1))
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = a2 % *(a1 + 4);
    while (1)
    {
      v17 = (*(a1 + 2) + v14);
      v18 = v17[9];
      v19 = v17[7];
      if (v19 <= v16 / v18)
      {
        break;
      }

      v20 = (v17[8] + 16 * (v16 / v18));
      v21 = *v20;
      if (v21 == 1)
      {
        v5 = *(v20 + 1);
      }

      v19 = v34;
      if (v34 <= v15)
      {
        goto LABEL_36;
      }

      if (*(v35 + v13) == 1)
      {
        v32 = v5;
        v19 = *(v35 + v13 + 2);
        v5 = *(a5 + 16);
        if (v21)
        {
          if (v5 <= v19)
          {
            goto LABEL_38;
          }

          v22 = *(a5 + 32) + 104 * *(v35 + v13 + 2);
          *(v22 + 76) = 0u;
          *(v22 + 92) = 0;
          *(v22 + 60) = 0u;
          *(v22 + 44) = 0u;
          v5 = v32;
          *(v22 + 36) = v32;
        }

        else
        {
          if (v5 <= v19)
          {
            goto LABEL_39;
          }

          if (v5 - 1 > v19)
          {
            v24 = *(a5 + 32);
            v25 = v24 + 104 * v5;
            v26 = re::DynamicString::operator=((v24 + 104 * *(v35 + v13 + 2)), (v25 - 104));
            *(v26 + 2) = *(v25 - 72);
            v27 = *(v25 - 40);
            v28 = *(v25 - 24);
            v29 = *(v25 - 56);
            *(v26 + 24) = *(v25 - 8);
            *(v26 + 4) = v27;
            *(v26 + 5) = v28;
            *(v26 + 3) = v29;
            v5 = *(a5 + 16);
          }

          re::DynamicString::deinit((*(a5 + 32) + 104 * v5 - 104));
          v30 = *(a5 + 16) - 1;
          *(a5 + 16) = v30;
          ++*(a5 + 24);
          re::FunctionConstantsEnumerator::createLayerToIndexMap(&v37, a1, *(a5 + 32), v30);
          re::FixedArray<float>::operator=(&v33, &v37);
          LayerToIndexMap = v37;
          if (v37 && *(&v37 + 1))
          {
            LayerToIndexMap = (*(*v37 + 40))();
          }

          v5 = v32;
        }
      }

      else if (v21)
      {
        v37 = 0u;
        v38 = 0u;
        re::DynamicString::setCapacity(&v37, 0);
        v23 = 0uLL;
        memset(v39 + 4, 0, 64);
        v19 = *(a1 + 1);
        if (v19 <= v15)
        {
          goto LABEL_37;
        }

        re::DynamicString::operator=(&v37, (*(a1 + 2) + v14));
        v19 = *(a1 + 1);
        if (v19 <= v15)
        {
          goto LABEL_40;
        }

        LODWORD(v39[0]) = *(*(a1 + 2) + v14 + 40);
        memset(v39 + 12, 0, 56);
        *(v39 + 4) = v5;
        re::DynamicArray<re::TechniqueFunctionConstant>::add(a5, &v37);
        re::FunctionConstantsEnumerator::createLayerToIndexMap(v47, a1, *(a5 + 32), *(a5 + 16));
        re::FixedArray<float>::operator=(&v33, v47);
        if (*&v47[0] && *(&v47[0] + 1))
        {
          (*(**&v47[0] + 40))(*&v47[0], *&v47[1]);
        }

        LayerToIndexMap = v37;
        if (v37 && (BYTE8(v37) & 1) != 0)
        {
          LayerToIndexMap = (*(*v37 + 40))();
        }
      }

      v16 %= v18;
      ++v15;
      v14 += 88;
      v13 += 4;
      if (*(a1 + 1) <= v15)
      {
        goto LABEL_31;
      }
    }

    *v40 = 0;
    v38 = 0u;
    memset(v39, 0, 48);
    v37 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v47[0]) = 136315906;
    *(v47 + 4) = "operator[]";
    WORD6(v47[0]) = 1024;
    *(v47 + 14) = 476;
    WORD1(v47[1]) = 2048;
    *(&v47[1] + 4) = v16 / v18;
    WORD6(v47[1]) = 2048;
    *(&v47[1] + 14) = v19;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_36:
    *v40 = 0;
    v38 = 0u;
    memset(v39, 0, 48);
    v37 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v47[0]) = 136315906;
    *(v47 + 4) = "operator[]";
    WORD6(v47[0]) = 1024;
    *(v47 + 14) = 468;
    WORD1(v47[1]) = 2048;
    *(&v47[1] + 4) = v15;
    WORD6(v47[1]) = 2048;
    *(&v47[1] + 14) = v19;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_37:
    v36 = 0;
    v48 = v23;
    v49 = v23;
    v47[1] = v23;
    v47[2] = v23;
    v47[0] = v23;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v40 = 136315906;
    *&v40[4] = "operator[]";
    v41 = 1024;
    v42 = 476;
    v43 = 2048;
    v44 = v15;
    v45 = 2048;
    v46 = v19;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_38:
    *v40 = 0;
    v38 = 0u;
    memset(v39, 0, 48);
    v37 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v47[0]) = 136315906;
    *(v47 + 4) = "operator[]";
    WORD6(v47[0]) = 1024;
    *(v47 + 14) = 789;
    WORD1(v47[1]) = 2048;
    *(&v47[1] + 4) = v19;
    WORD6(v47[1]) = 2048;
    *(&v47[1] + 14) = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_39:
    *v40 = 0;
    v38 = 0u;
    memset(v39, 0, 48);
    v37 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v47[0]) = 136315906;
    *(v47 + 4) = "removeAt";
    WORD6(v47[0]) = 1024;
    *(v47 + 14) = 931;
    WORD1(v47[1]) = 2048;
    *(&v47[1] + 4) = v19;
    WORD6(v47[1]) = 2048;
    *(&v47[1] + 14) = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_40:
    v36 = 0;
    v48 = 0u;
    v49 = 0u;
    memset(v47, 0, sizeof(v47));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v40 = 136315906;
    *&v40[4] = "operator[]";
    v41 = 1024;
    v42 = 476;
    v43 = 2048;
    v44 = v15;
    v45 = 2048;
    v46 = v19;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_31:
  result = v33;
  if (v33)
  {
    if (v34)
    {
      return (*(*v33 + 40))();
    }
  }

  return result;
}

void *re::FunctionConstantsEnumerator::appendEnumerator@<X0>(re::FunctionConstantsEnumerator *this@<X0>, const re::FunctionConstantsEnumerator *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 1) + *(this + 1);
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1;
  if (v6)
  {
    v7 = 0;
    for (i = 0; i != v6; ++i)
    {
      v9 = *(this + 1);
      if (i >= v9)
      {
        v10 = a2;
      }

      else
      {
        v10 = this;
      }

      if (i < v9)
      {
        v9 = 0;
      }

      if (*(v10 + 1) <= i - v9)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_15:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      if (*(a3 + 8) <= i)
      {
        goto LABEL_15;
      }

      v11 = *(v10 + 2) - 88 * v9 + v7;
      v12 = *(a3 + 16) + v7;
      re::DynamicString::operator=(v12, v11);
      v13 = *(v11 + 32);
      *(v12 + 40) = *(v11 + 40);
      *(v12 + 32) = v13;
      re::FixedArray<re::Optional<unsigned long long>>::operator=((v12 + 48), v11 + 48);
      v14 = *(v11 + 80);
      *(v12 + 72) = *(v11 + 72);
      *(v12 + 80) = v14;
      v7 += 88;
    }
  }

  return re::FunctionConstantsEnumerator::calculateDerivedFields(a3);
}

void *re::FunctionConstantsEnumerator::calculateDerivedFields(void *this)
{
  v1 = this[1];
  if (v1)
  {
    v2 = this[2];
    v3 = v2 + 88 * v1;
    v4 = 88 * v1;
    v5 = (v2 + 56);
    v6 = 1;
    do
    {
      v7 = *v5;
      v5 += 11;
      v6 *= v7;
      v4 -= 88;
    }

    while (v4);
    this[4] = v6;
    v8 = (v2 + 72);
    v9 = v1;
    do
    {
      v6 /= *(v8 - 2);
      *v8 = v6;
      v8 += 11;
      --v9;
    }

    while (v9);
    do
    {
      v10 = *(v2 + 56);
      v11 = (v10 - 0x61C8864680B583E9 + (*(v2 + 32) << 6) + (*(v2 + 32) >> 2)) ^ *(v2 + 32);
      if (v10)
      {
        v12 = (*(v2 + 64) + 8);
        v13 = 16 * v10;
        do
        {
          v14 = *(v12 - 8);
          v15 = (v11 << 6) - 0x61C8864680B583E9;
          if (v14)
          {
            v11 ^= v15 + (v11 >> 2) + v14;
            v16 = (v11 << 6) - 0x61C8864680B583E9 + (v11 >> 2) + *v12;
          }

          else
          {
            v16 = v15 + (v11 >> 2);
          }

          v11 ^= v16;
          v12 += 2;
          v13 -= 16;
        }

        while (v13);
      }

      v17 = (*(v2 + 42) - 0x61C8864680B583E9 + ((((v11 << 6) - 0x61C8864680B583E9 + (v11 >> 2) + *(v2 + 72)) ^ v11) << 6) + ((((v11 << 6) - 0x61C8864680B583E9 + (v11 >> 2) + *(v2 + 72)) ^ v11) >> 2)) ^ ((v11 << 6) - 0x61C8864680B583E9 + (v11 >> 2) + *(v2 + 72)) ^ v11;
      v1 ^= (v1 << 6) - 0x61C8864680B583E9 + (v1 >> 2) + ((*(v2 + 40) - 0x61C8864680B583E9 + (v17 << 6) + (v17 >> 2)) ^ v17);
      v2 += 88;
    }

    while (v2 != v3);
  }

  else
  {
    this[4] = 1;
  }

  this[3] = v1;
  return this;
}

void *re::FunctionConstantsEnumerator::overrideEnumerator@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result;
  v88 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 32);
  if (v6)
  {
    v7 = 0;
    v8 = *(a2 + 16);
    while (1)
    {
      v9 = *v8;
      v8 += 38;
      if (v9 < 0)
      {
        break;
      }

      if (v6 == ++v7)
      {
        LODWORD(v7) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v7) = 0;
  }

  if (v7 == v6)
  {
    goto LABEL_8;
  }

  v10 = *(a2 + 16);
  v11 = *(a2 + 32);
LABEL_10:
  v12 = *(v4 + 8);
  if (!v12)
  {
    goto LABEL_15;
  }

  v13 = v10 + 152 * v7;
  v14 = 88 * v12;
  v15 = (*(v4 + 16) + 32);
  while (1)
  {
    result = re::Hash<re::DynamicString>::operator()(&v72, v13 + 8);
    v16 = *v15;
    v15 += 11;
    if (result == v16)
    {
      break;
    }

    v14 -= 88;
    if (!v14)
    {
      v11 = *(a2 + 32);
      v10 = *(a2 + 16);
LABEL_15:
      if (v11 <= v7 + 1)
      {
        v17 = v7 + 1;
      }

      else
      {
        v17 = v11;
      }

      while (v17 - 1 != v7)
      {
        LODWORD(v7) = v7 + 1;
        if ((*(v10 + 152 * v7) & 0x80000000) != 0)
        {
          goto LABEL_22;
        }
      }

      LODWORD(v7) = v17;
LABEL_22:
      if (v7 == v6)
      {
LABEL_8:
        *a3 = 0;
        return result;
      }

      goto LABEL_10;
    }
  }

  re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::FixedArray(&v68, v4);
  v70 = *(v4 + 24);
  v18 = *(a2 + 32);
  if (v18)
  {
    v19 = 0;
    v20 = *(a2 + 16);
    while (1)
    {
      v21 = *v20;
      v20 += 38;
      if (v21 < 0)
      {
        break;
      }

      if (v18 == ++v19)
      {
        LODWORD(v19) = *(a2 + 32);
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
    v22 = *(a2 + 16);
    v23 = *(v4 + 8);
    v24 = *(a2 + 32);
    v63 = v24;
    v64 = a2;
    while (!v23)
    {
LABEL_90:
      if (v24 <= v19 + 1)
      {
        v59 = v19 + 1;
      }

      else
      {
        v59 = v24;
      }

      while (v59 - 1 != v19)
      {
        LODWORD(v19) = v19 + 1;
        if ((*(v22 + 152 * v19) & 0x80000000) != 0)
        {
          goto LABEL_97;
        }
      }

      LODWORD(v19) = v59;
LABEL_97:
      if (v19 == v18)
      {
        goto LABEL_98;
      }
    }

    v26 = 0;
    v27 = v22 + 152 * v19;
    while (1)
    {
      v28 = *(v4 + 16) + 88 * v26;
      v29 = re::Hash<re::DynamicString>::operator()(&v72, v27 + 8);
      if (v29 == *(v28 + 32))
      {
        v31 = *(v28 + 56);
        v30 = *(v28 + 64);
        if (v31)
        {
          v32 = 16 * v31;
          v33 = *(v28 + 64);
          while (*v33 != 1 || *(v33 + 8) != *(v27 + 76))
          {
            v33 += 16;
            v32 -= 16;
            if (!v32)
            {
              goto LABEL_48;
            }
          }
        }

        else
        {
          v33 = *(v28 + 64);
        }

        v34 = v30 + 16 * v31;
        if (v33 == v34)
        {
LABEL_48:
          v65 = 0;
          v66 = 0;
          v67 = 0;
          v40 = v25;
          v41 = *(v28 + 56);
          v42 = v41 + 1;
          v25 = v40;
          v43 = re::FixedArray<re::Optional<unsigned long long>>::init<>(&v65, v40, v42);
          if (!v66)
          {
            re::internal::assertLog(4, v44, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "first", 440);
            _os_crash();
            __break(1u);
LABEL_103:
            re::internal::assertLog(7, v44, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 362, v48, 1, v47);
            _os_crash();
            __break(1u);
LABEL_104:
            re::internal::assertLog(4, v44, "assertion failure: '%s' (%s:line %i) Too much data to copy.", "requiredSize <= m_size", "copy", 363);
            _os_crash();
            __break(1u);
LABEL_105:
            v71 = 0;
            v86 = 0u;
            v87 = 0u;
            memset(v85, 0, sizeof(v85));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v78 = 136315906;
            *&v78[4] = "operator[]";
            v79 = 1024;
            v80 = 468;
            v81 = 2048;
            v82 = v26;
            v83 = 2048;
            v84 = v28;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_106:
            *v78 = 0;
            v76 = 0u;
            v74 = 0u;
            v75 = 0u;
            v72 = 0u;
            v73 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v85[0] = 136315906;
            *&v85[1] = "operator[]";
            LOWORD(v85[3]) = 1024;
            *(&v85[3] + 2) = 468;
            HIWORD(v85[4]) = 2048;
            *&v85[5] = v26;
            LOWORD(v85[7]) = 2048;
            *(&v85[7] + 2) = v28;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_107:
            v62 = v35 >> 4;
            *v78 = 0;
            v76 = 0u;
            v74 = 0u;
            v75 = 0u;
            v72 = 0u;
            v73 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v85[0] = 136315906;
            *&v85[1] = "operator[]";
            LOWORD(v85[3]) = 1024;
            *(&v85[3] + 2) = 468;
            HIWORD(v85[4]) = 2048;
            *&v85[5] = v62;
            LOWORD(v85[7]) = 2048;
            *(&v85[7] + 2) = v28;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_108:
            re::internal::assertLog(4, v53, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || m_allocator == other.m_allocator", "operator=", 296);
            _os_crash();
            __break(1u);
          }

          v45 = *(v27 + 76);
          v46 = v67;
          if ((*v67 & 1) == 0)
          {
            *v67 = 1;
          }

          *(v46 + 1) = v45;
          v47 = *(v28 + 56);
          v48 = v66;
          if (v47 == -1)
          {
            goto LABEL_103;
          }

          if (v47 + 1 > v66)
          {
            goto LABEL_104;
          }

          if (!v47)
          {
LABEL_62:
            v72 = 0u;
            v73 = 0u;
            *&v72 = v40;
            re::DynamicString::setCapacity(&v72, 0);
            *&v74 = *(v28 + 32);
            DWORD2(v74) = 0;
            *&v76 = 0;
            v75 = 0uLL;
            if (v65)
            {
              re::FixedArray<re::Optional<unsigned long long>>::init<>(&v75, v65, v66);
              re::FixedArray<re::Optional<unsigned long long>>::copy(&v75, &v65);
            }

            *(&v76 + 1) = *(v28 + 72);
            v77 = 0;
            v28 = *(&v68 + 1);
            if (*(&v68 + 1) <= v26)
            {
              goto LABEL_105;
            }

            v52 = re::DynamicString::operator=((v69 + 88 * v26), &v72);
            v54 = v74;
            *(v52 + 10) = DWORD2(v74);
            *(v52 + 4) = v54;
            if (v52 != &v72)
            {
              v55 = *(v52 + 6);
              if (v55 && v55 != v75)
              {
                goto LABEL_108;
              }

              *(v52 + 6) = v75;
              *&v75 = v55;
              v56 = *(v52 + 7);
              *(v52 + 7) = *(&v75 + 1);
              *(&v75 + 1) = v56;
              v57 = *(v52 + 8);
              *(v52 + 8) = v76;
              *&v76 = v57;
            }

            v58 = *(&v76 + 1);
            *(v52 + 80) = v77;
            *(v52 + 9) = v58;
            if (v75)
            {
              if (*(&v75 + 1))
              {
                (*(*v75 + 40))();
                *(&v75 + 1) = 0;
                *&v76 = 0;
              }

              *&v75 = 0;
            }

            if (v72 && (BYTE8(v72) & 1) != 0)
            {
              (*(*v72 + 40))();
            }

            if (v65 && v66)
            {
              (*(*v65 + 40))();
            }

            goto LABEL_88;
          }

          v49 = v67 + 16;
          v50 = (*(v28 + 64) + 8);
          v51 = 16 * v47;
          while (2)
          {
            if (*v49)
            {
              if ((*(v50 - 1) & 1) == 0)
              {
                *v49 = 0;
                goto LABEL_61;
              }

LABEL_60:
              *(v49 + 1) = *v50;
            }

            else if (*(v50 - 1))
            {
              *v49 = 1;
              goto LABEL_60;
            }

LABEL_61:
            v49 += 16;
            v50 += 2;
            v51 -= 16;
            if (!v51)
            {
              goto LABEL_62;
            }

            continue;
          }
        }

        v28 = *(&v68 + 1);
        if (*(&v68 + 1) <= v26)
        {
          goto LABEL_106;
        }

        v35 = v33 - v30;
        v36 = v69 + 88 * v26;
        v28 = *(v36 + 56);
        if (v28 <= v35 >> 4)
        {
          goto LABEL_107;
        }

        v37 = *(v36 + 64);
        v38 = v37 + v35;
        v39 = *(v37 + v35);
        if (v39)
        {
          v34 = *(v38 + 8);
          if (*v37)
          {
            *(v38 + 8) = *(v37 + 8);
          }

          else
          {
            *v38 = 0;
          }
        }

        else if (*v37)
        {
          *v38 = 1;
          v34 = *(v37 + 8);
          *(v38 + 8) = v34;
        }

        if (*v37)
        {
          if (v39)
          {
            goto LABEL_87;
          }

          *v37 = 0;
        }

        else if (v39)
        {
          *v37 = 1;
LABEL_87:
          *(v37 + 8) = v34;
        }
      }

LABEL_88:
      ++v26;
      v23 = *(v4 + 8);
      if (v23 <= v26)
      {
        LODWORD(v18) = v63;
        v24 = *(v64 + 32);
        v22 = *(v64 + 16);
        goto LABEL_90;
      }
    }
  }

LABEL_98:
  re::FunctionConstantsEnumerator::calculateDerivedFields(&v68);
  if (*(v4 + 24) == v70)
  {
    v60 = 0;
    v61 = a3;
  }

  else
  {
    v61 = a3;
    *(a3 + 8) = v68;
    v68 = 0uLL;
    *(a3 + 24) = v69;
    v69 = 0;
    *(a3 + 32) = v70;
    v60 = 1;
  }

  *v61 = v60;
  return re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::deinit(&v68);
}

void re::FunctionConstantsEnumerator::createEnumerator(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v76 = *MEMORY[0x1E69E9840];
  *a6 = 0u;
  *(a6 + 16) = 0u;
  *(a6 + 32) = 1;
  v11 = re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::HashBrown(v61, a1);
  if (a3)
  {
    v12 = &a2[a3];
    do
    {
      v59[0] = *a2;
      v11 = re::HashBrown<unsigned long,re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::find(a5, v59);
      if (v11 != -1)
      {
        v13 = a5[1] + 72 * v11;
        v14 = (v13 + 8);
        *v73 = v13 + 8;
        *&v73[8] = 0;
        v15 = *(v13 + 24);
        if (v15 >= 0x10)
        {
          v16 = 0;
          v17 = *v14;
          v18 = v15 >> 4;
          while (1)
          {
            v19 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v17), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
            *&v73[8] = v19 ^ 0xFFFF;
            if (v19 != 0xFFFF)
            {
              break;
            }

            v16 -= 16;
            ++v17;
            if (!--v18)
            {
              goto LABEL_20;
            }
          }

          v20 = __clz(__rbit64(v19 ^ 0xFFFF));
          v21 = v20 - v16;
          *&v73[16] = v20 - v16;
          if (v20 + 1 != v16)
          {
            do
            {
              v22 = *(*v73 + 8) + 96 * v21;
              re::DynamicString::DynamicString(&v66, v22);
              LODWORD(v68) = *(v22 + 32);
              re::DynamicArray<char const*>::DynamicArray(&v68 + 8, (v22 + 40));
              v23 = *(v22 + 80);
              v72 = *(v22 + 88);
              v71 = v23;
              if (re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::find(v61, &v66) == -1)
              {
                re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(v61, &v66, &v68);
              }

              if (*(&v68 + 1))
              {
                if (*(&v70 + 1))
                {
                  (*(**(&v68 + 1) + 40))();
                }

                *(&v70 + 1) = 0;
                v69 = 0uLL;
                *(&v68 + 1) = 0;
                LODWORD(v70) = v70 + 1;
              }

              if (v66 && (BYTE8(v66) & 1) != 0)
              {
                (*(*v66 + 40))();
              }

              v11 = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v73);
              v21 = *&v73[16];
            }

            while (*&v73[16] != -1);
          }
        }
      }

LABEL_20:
      ++a2;
    }

    while (a2 != v12);
  }

  v24 = v73;
  v25 = *(a4 + 16);
  if (v25)
  {
    v26 = *(a4 + 32);
    v27 = v26 + 104 * v25;
    do
    {
      v11 = re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::find(v61, v26);
      if (v11 != -1)
      {
        v28 = v61[1] + 96 * v11;
        v29 = *(v26 + 36);
        v30 = *(v28 + 72);
        v31 = *(v28 + 56);
        v32 = v30;
        if (v31)
        {
          v33 = 8 * v31;
          v32 = *(v28 + 72);
          while (*v32 != v29)
          {
            v32 += 8;
            v33 -= 8;
            if (!v33)
            {
              goto LABEL_32;
            }
          }
        }

        if (v32 == &v30[8 * v31])
        {
LABEL_32:
          if (v31 == -1)
          {
            goto LABEL_75;
          }

          if (v31 >= *(v28 + 48))
          {
            v11 = re::DynamicArray<float *>::growCapacity((v28 + 40), v31 + 1);
            v31 = *(v28 + 56);
            v30 = *(v28 + 72);
          }

          v36 = &v30[8 * v31];
          if (v31)
          {
            *v36 = *(v36 - 1);
            if (v36 - 8 != v30)
            {
              v11 = memmove(v30 + 8, v30, 8 * v31 - 8);
              v30 = *(v28 + 72);
              v31 = *(v28 + 56);
            }

            *v30 = v29;
            v37 = v31 + 1;
          }

          else
          {
            *v36 = v29;
            v37 = 1;
          }

          *(v28 + 56) = v37;
          ++*(v28 + 64);
        }

        else
        {
          v34 = v32 - v30;
          if (v31 <= v34 >> 3)
          {
            goto LABEL_76;
          }

          v35 = *&v30[v34];
          *&v30[v34] = *v30;
          *v30 = v35;
        }

        *(v28 + 88) = 1;
      }

      v26 += 104;
    }

    while (v26 != v27);
  }

  if (v64)
  {
    v38 = v63;
    if (v63)
    {
      v59[0] = v61;
      if (v62 >= 0x10)
      {
        v39 = 0;
        v40 = v61[0];
        v41 = v62 >> 4;
        while (1)
        {
          v42 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v40), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
          v59[1] = v42 ^ 0xFFFFLL;
          if (v42 != 0xFFFFLL)
          {
            break;
          }

          v39 -= 16;
          ++v40;
          if (!--v41)
          {
            goto LABEL_71;
          }
        }

        v43 = __clz(__rbit64(v42 ^ 0xFFFFLL));
        v44 = v43 - v39;
        v60 = v43 - v39;
        if (v43 + 1 != v39)
        {
          v28 = 0;
          v31 = 96;
          do
          {
            v27 = *(a6 + 8);
            if (v27 <= v28)
            {
              goto LABEL_77;
            }

            v27 = *(v59[0] + 8) + 96 * v44;
            v45 = *(a6 + 16) + 88 * v28;
            *(v45 + 32) = re::Hash<re::DynamicString>::operator()(&v66, v27);
            *(v45 + 40) = *(v27 + 32);
            v46 = re::DynamicString::operator=(v45, v27);
            v47 = *(v27 + 88);
            *(v45 + 80) = v47;
            v48 = *(v27 + 56);
            if (v47 == 1)
            {
              if (*(v27 + 56))
              {
                v49 = 0;
                v50 = 0;
                while (1)
                {
                  v24 = *(v45 + 56);
                  if (v24 <= v50)
                  {
                    break;
                  }

                  v51 = *(*(v27 + 72) + 8 * v50);
                  v52 = *(v45 + 64);
                  if ((*(v52 + v49) & 1) == 0)
                  {
                    *(v52 + v49) = 1;
                  }

                  *(v52 + v49 + 8) = v51;
                  ++v50;
                  v49 += 16;
                  if (*(v27 + 56) <= v50)
                  {
                    goto LABEL_70;
                  }
                }

                v65 = 0;
                v69 = 0u;
                v70 = 0u;
                v67 = 0u;
                v68 = 0u;
                v66 = 0u;
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v73 = 136315906;
                *&v73[4] = "operator[]";
                *&v73[12] = 1024;
                *&v73[14] = 468;
                *&v73[18] = 2048;
                *&v73[20] = v50;
                v74 = 2048;
                v75 = v24;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
                goto LABEL_74;
              }
            }

            else
            {
              if (!*(v45 + 56))
              {
                goto LABEL_78;
              }

              v53 = *(v45 + 64);
              if (*v53 == 1)
              {
                *v53 = 0;
              }

              if (*(v27 + 56))
              {
                v54 = 0;
                v55 = 0;
                while (1)
                {
                  v50 = v55 + 1;
                  v24 = *(v45 + 56);
                  if (v24 <= v55 + 1)
                  {
                    break;
                  }

                  v56 = *(*(v27 + 72) + 8 * v55);
                  v57 = *(v45 + 64) + v54;
                  if ((*(v57 + 16) & 1) == 0)
                  {
                    *(v57 + 16) = 1;
                  }

                  *(v57 + 24) = v56;
                  v54 += 16;
                  v55 = v50;
                  if (*(v27 + 56) <= v50)
                  {
                    goto LABEL_70;
                  }
                }

LABEL_74:
                v65 = 0;
                v69 = 0u;
                v70 = 0u;
                v67 = 0u;
                v68 = 0u;
                v66 = 0u;
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v73 = 136315906;
                *&v73[4] = "operator[]";
                *&v73[12] = 1024;
                *&v73[14] = 468;
                *&v73[18] = 2048;
                *&v73[20] = v50;
                v74 = 2048;
                v75 = v24;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_75:
                v59[0] = 0;
                v69 = 0u;
                v70 = 0u;
                v67 = 0u;
                v68 = 0u;
                v66 = 0u;
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v73 = 136315906;
                *(v24 + 4) = "insert";
                *&v73[12] = 1024;
                *(v24 + 14) = 855;
                *&v73[18] = 2048;
                *(v24 + 20) = 0;
                v74 = 2048;
                *(v24 + 30) = 0;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_76:
                v58 = v34 >> 3;
                v59[0] = 0;
                v69 = 0u;
                v70 = 0u;
                v67 = 0u;
                v68 = 0u;
                v66 = 0u;
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v73 = 136315906;
                *(v24 + 4) = "operator[]";
                *&v73[12] = 1024;
                *(v24 + 14) = 789;
                *&v73[18] = 2048;
                *(v24 + 20) = v58;
                v74 = 2048;
                *(v24 + 30) = v31;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_77:
                v65 = 0;
                v69 = 0u;
                v70 = 0u;
                v67 = 0u;
                v68 = 0u;
                v66 = 0u;
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v73 = 136315906;
                *&v73[4] = "operator[]";
                *&v73[12] = 1024;
                *&v73[14] = 468;
                *&v73[18] = 2048;
                *&v73[20] = v28;
                v74 = 2048;
                v75 = v27;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_78:
                v65 = 0;
                v69 = 0u;
                v70 = 0u;
                v67 = 0u;
                v68 = 0u;
                v66 = 0u;
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v73 = 136315906;
                *&v73[4] = "operator[]";
                *&v73[12] = 1024;
                *&v73[14] = 468;
                *&v73[18] = 2048;
                *&v73[20] = 0;
                v74 = 2048;
                v75 = 0;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
              }
            }

LABEL_70:
            ++v28;
            re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v59);
            v44 = v60;
          }

          while (v60 != -1);
        }
      }

LABEL_71:
      re::FunctionConstantsEnumerator::calculateDerivedFields(a6);
    }
  }

  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::deinit(v61);
}

uint64_t re::FunctionConstantsEnumerator::printDebugData(re::FunctionConstantsEnumerator *this)
{
  puts("    variations:");
  v2 = *(this + 1);
  if (v2)
  {
    v3 = 88 * v2;
    v4 = *(this + 2) + 56;
    do
    {
      if (*(v4 - 48))
      {
        v5 = *(v4 - 40);
      }

      else
      {
        v5 = (v4 - 47);
      }

      printf("      %s %zu", v5, *v4);
      if (*(v4 + 24))
      {
        putchar(10);
      }

      else
      {
        puts(" no default");
      }

      v4 += 88;
      v3 -= 88;
    }

    while (v3);
  }

  return printf("    permutations: %zu\n", *(this + 4));
}

void re::createVertexFetchArgumentBuffer<re::mtl::RenderCommandEncoder>(id *a1@<X0>, id *a2@<X1>, re::AttributeTable **a3@<X2>, uint64_t a4@<X3>, id *a5@<X4>, void *a6@<X8>)
{
  v11 = [*a1 newBufferWithLength:360 options:0];
  *a6 = v11;
  v12 = [v11 contents];
  v13 = *a5;
  re::fillArgBufferForSemantic<re::mtl::RenderCommandEncoder>(v12, a3, *a4, *(a4 + 8), v13, a2, 0);
  if (v13)
  {
  }

  v14 = *a5;
  re::fillArgBufferForSemantic<re::mtl::RenderCommandEncoder>(v12, a3, *a4, *(a4 + 8), v14, a2, 1u);
  if (v14)
  {
  }

  v15 = *a5;
  re::fillArgBufferForSemantic<re::mtl::RenderCommandEncoder>(v12, a3, *a4, *(a4 + 8), v15, a2, 2u);
  if (v15)
  {
  }

  v16 = *a5;
  re::fillArgBufferForSemantic<re::mtl::RenderCommandEncoder>(v12, a3, *a4, *(a4 + 8), v16, a2, 3u);
  if (v16)
  {
  }

  v17 = *a5;
  re::fillArgBufferForSemantic<re::mtl::RenderCommandEncoder>(v12, a3, *a4, *(a4 + 8), v17, a2, 4u);
  if (v17)
  {
  }

  v18 = *a5;
  re::fillArgBufferForSemantic<re::mtl::RenderCommandEncoder>(v12, a3, *a4, *(a4 + 8), v18, a2, 5u);
  if (v18)
  {
  }

  v19 = *a5;
  re::fillArgBufferForSemantic<re::mtl::RenderCommandEncoder>(v12, a3, *a4, *(a4 + 8), v19, a2, 6u);
  if (v19)
  {
  }

  v20 = *a5;
  re::fillArgBufferForSemantic<re::mtl::RenderCommandEncoder>(v12, a3, *a4, *(a4 + 8), v20, a2, 7u);
  if (v20)
  {
  }

  v21 = *a5;
  re::fillArgBufferForSemantic<re::mtl::RenderCommandEncoder>(v12, a3, *a4, *(a4 + 8), v21, a2, 8u);
  if (v21)
  {
  }

  v22 = *a5;
  re::fillArgBufferForSemantic<re::mtl::RenderCommandEncoder>(v12, a3, *a4, *(a4 + 8), v22, a2, 9u);
  if (v22)
  {
  }

  v23 = *a5;
  re::fillArgBufferForSemantic<re::mtl::RenderCommandEncoder>(v12, a3, *a4, *(a4 + 8), v23, a2, 0xAu);
  if (v23)
  {
  }

  v24 = *a5;
  re::fillArgBufferForSemantic<re::mtl::RenderCommandEncoder>(v12, a3, *a4, *(a4 + 8), v24, a2, 0xBu);
  if (v24)
  {
  }

  v25 = *a5;
  re::fillArgBufferForSemantic<re::mtl::RenderCommandEncoder>(v12, a3, *a4, *(a4 + 8), v25, a2, 0xCu);
  if (v25)
  {
  }

  v26 = *a5;
  re::fillArgBufferForSemantic<re::mtl::RenderCommandEncoder>(v12, a3, *a4, *(a4 + 8), v26, a2, 0xDu);
  if (v26)
  {
  }

  v27 = *a5;
  re::fillArgBufferForSemantic<re::mtl::RenderCommandEncoder>(v12, a3, *a4, *(a4 + 8), v27, a2, 0xEu);
  if (v27)
  {
  }
}

char *re::fillArgBufferForSemantic<re::mtl::RenderCommandEncoder>(uint64_t a1, re::AttributeTable **this, uint64_t a3, unint64_t a4, id a5, id *a6, unsigned int a7)
{
  if (a7 >= a4)
  {
    re::internal::assertLog(6, this, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a7, a4);
    _os_crash();
    __break(1u);
LABEL_17:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_18;
  }

  v10 = a5;
  v12 = a3 + 10 * a7;
  v7 = *(v12 + 4);
  v13 = *(v12 + 8);
  v14 = this;
  do
  {
    v15 = v14;
    v14 = *v14;
    v16 = v15[3];
    if (v14)
    {
      v17 = v16 == 0;
    }

    else
    {
      v17 = 0;
    }
  }

  while (v17);
  if (v16 <= v7)
  {
    goto LABEL_17;
  }

  v18 = (v15[4] + 16 * v7);
  v19 = *v18;
  v20 = *(v18 + 12);
  if (v13)
  {
    [a5 length];
    v21 = 0;
    v22 = 0;
    goto LABEL_12;
  }

  v21 = *(v18 + 2);
  v23 = re::AttributeTable::buffers(this);
  if (v24 <= v7)
  {
LABEL_18:
    re::internal::assertLog(6, v24, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v7, v24);
    _os_crash();
    __break(1u);
  }

  v25 = v23 + 24 * v7;
  v10 = *v25;
  v22 = *(v25 + 4);
LABEL_12:
  [*a6 useResource:v10 usage:1 stages:1];
  result = [v10 gpuAddress];
  v27 = a1 + 24 * a7;
  *v27 = &result[v22];
  if (v13)
  {
    v28 = 0;
  }

  else
  {
    v28 = v19;
  }

  *(v27 + 8) = v21;
  *(v27 + 12) = v28;
  *(v27 + 16) = v20;
  return result;
}

void re::createVertexFetchArgumentBuffer<re::mtl::ComputeCommandEncoder>(id *a1@<X0>, id *a2@<X1>, re::AttributeTable **a3@<X2>, uint64_t a4@<X3>, id *a5@<X4>, void *a6@<X8>)
{
  v11 = [*a1 newBufferWithLength:360 options:0];
  *a6 = v11;
  v12 = [v11 contents];
  v13 = *a5;
  re::fillArgBufferForSemantic<re::mtl::ComputeCommandEncoder>(v12, a3, *a4, *(a4 + 8), v13, a2, 0);
  if (v13)
  {
  }

  v14 = *a5;
  re::fillArgBufferForSemantic<re::mtl::ComputeCommandEncoder>(v12, a3, *a4, *(a4 + 8), v14, a2, 1u);
  if (v14)
  {
  }

  v15 = *a5;
  re::fillArgBufferForSemantic<re::mtl::ComputeCommandEncoder>(v12, a3, *a4, *(a4 + 8), v15, a2, 2u);
  if (v15)
  {
  }

  v16 = *a5;
  re::fillArgBufferForSemantic<re::mtl::ComputeCommandEncoder>(v12, a3, *a4, *(a4 + 8), v16, a2, 3u);
  if (v16)
  {
  }

  v17 = *a5;
  re::fillArgBufferForSemantic<re::mtl::ComputeCommandEncoder>(v12, a3, *a4, *(a4 + 8), v17, a2, 4u);
  if (v17)
  {
  }

  v18 = *a5;
  re::fillArgBufferForSemantic<re::mtl::ComputeCommandEncoder>(v12, a3, *a4, *(a4 + 8), v18, a2, 5u);
  if (v18)
  {
  }

  v19 = *a5;
  re::fillArgBufferForSemantic<re::mtl::ComputeCommandEncoder>(v12, a3, *a4, *(a4 + 8), v19, a2, 6u);
  if (v19)
  {
  }

  v20 = *a5;
  re::fillArgBufferForSemantic<re::mtl::ComputeCommandEncoder>(v12, a3, *a4, *(a4 + 8), v20, a2, 7u);
  if (v20)
  {
  }

  v21 = *a5;
  re::fillArgBufferForSemantic<re::mtl::ComputeCommandEncoder>(v12, a3, *a4, *(a4 + 8), v21, a2, 8u);
  if (v21)
  {
  }

  v22 = *a5;
  re::fillArgBufferForSemantic<re::mtl::ComputeCommandEncoder>(v12, a3, *a4, *(a4 + 8), v22, a2, 9u);
  if (v22)
  {
  }

  v23 = *a5;
  re::fillArgBufferForSemantic<re::mtl::ComputeCommandEncoder>(v12, a3, *a4, *(a4 + 8), v23, a2, 0xAu);
  if (v23)
  {
  }

  v24 = *a5;
  re::fillArgBufferForSemantic<re::mtl::ComputeCommandEncoder>(v12, a3, *a4, *(a4 + 8), v24, a2, 0xBu);
  if (v24)
  {
  }

  v25 = *a5;
  re::fillArgBufferForSemantic<re::mtl::ComputeCommandEncoder>(v12, a3, *a4, *(a4 + 8), v25, a2, 0xCu);
  if (v25)
  {
  }

  v26 = *a5;
  re::fillArgBufferForSemantic<re::mtl::ComputeCommandEncoder>(v12, a3, *a4, *(a4 + 8), v26, a2, 0xDu);
  if (v26)
  {
  }

  v27 = *a5;
  re::fillArgBufferForSemantic<re::mtl::ComputeCommandEncoder>(v12, a3, *a4, *(a4 + 8), v27, a2, 0xEu);
  if (v27)
  {
  }
}

char *re::fillArgBufferForSemantic<re::mtl::ComputeCommandEncoder>(uint64_t a1, re::AttributeTable **this, uint64_t a3, unint64_t a4, id a5, id *a6, unsigned int a7)
{
  if (a7 >= a4)
  {
    re::internal::assertLog(6, this, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a7, a4);
    _os_crash();
    __break(1u);
LABEL_17:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_18;
  }

  v10 = a5;
  v12 = a3 + 10 * a7;
  v7 = *(v12 + 4);
  v13 = *(v12 + 8);
  v14 = this;
  do
  {
    v15 = v14;
    v14 = *v14;
    v16 = v15[3];
    if (v14)
    {
      v17 = v16 == 0;
    }

    else
    {
      v17 = 0;
    }
  }

  while (v17);
  if (v16 <= v7)
  {
    goto LABEL_17;
  }

  v18 = (v15[4] + 16 * v7);
  v19 = *v18;
  v20 = *(v18 + 12);
  if (v13)
  {
    [a5 length];
    v21 = 0;
    v22 = 0;
    goto LABEL_12;
  }

  v21 = *(v18 + 2);
  v23 = re::AttributeTable::buffers(this);
  if (v24 <= v7)
  {
LABEL_18:
    re::internal::assertLog(6, v24, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v7, v24);
    _os_crash();
    __break(1u);
  }

  v25 = v23 + 24 * v7;
  v10 = *v25;
  v22 = *(v25 + 4);
LABEL_12:
  [*a6 useResource:v10 usage:1];
  result = [v10 gpuAddress];
  v27 = a1 + 24 * a7;
  *v27 = &result[v22];
  if (v13)
  {
    v28 = 0;
  }

  else
  {
    v28 = v19;
  }

  *(v27 + 8) = v21;
  *(v27 + 12) = v28;
  *(v27 + 16) = v20;
  return result;
}

uint64_t re::createComputeVertexFetchPipeline(re *this, re::RenderManager *a2, re::ShaderManager *a3)
{
  v4 = *(*(this + 4) + 136);
  v5 = [objc_msgSend(MEMORY[0x1E6974100] alloc)];
  v10 = 0;
  v13 = 0;
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 1;
  v21 = v5;
  v22 = 257;
  ComputePipelineState = re::getOrCreateComputePipelineState(this, &v8);
  if (v21)
  {

    v21 = 0;
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v16);
  if (v13 == 1 && v14)
  {
    if (BYTE8(v14))
    {
      (*(*v14 + 40))();
    }

    v14 = 0u;
    v15 = 0u;
  }

  if (v10 == 1 && v11)
  {
    if (BYTE8(v11))
    {
      (*(*v11 + 40))();
    }

    v12 = 0u;
    v11 = 0u;
  }

  if (v8 && (v9 & 1) != 0)
  {
    (*(*v8 + 40))();
  }

  if (v5)
  {
  }

  if (v4)
  {
  }

  return ComputePipelineState;
}

void re::createVertexFetchReflection(re *this@<X0>, void *a2@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = 0;
  v5 = 16;
  do
  {
    v6 = re::StandardMaterialVertexInNames[v4];
    *&v9.var0 = 0;
    v9.var1 = &str_67;
    LOWORD(v6) = re::StandardMaterialVertexInDataTypes[v4];
    re::StringID::StringID(&v10, &v9);
    LOWORD(v12) = v4;
    HIWORD(v12) = v6;
    v7 = a2[1];
    if (v7 <= v4)
    {
      v13 = 0;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v22 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v14 = 136315906;
      v15 = "operator[]";
      v16 = 1024;
      v17 = 468;
      v18 = 2048;
      v19 = v4;
      v20 = 2048;
      v21 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v8 = (a2[2] + v5);
    v3 = re::StringID::operator=((v8 - 4), &v10);
    *v8 = v12;
    if (v10)
    {
      if (v10)
      {
      }
    }

    v10 = 0;
    v11 = &str_67;
    if (*&v9.var0)
    {
      if (*&v9.var0)
      {
      }
    }

    ++v4;
    v5 += 24;
  }

  while (v4 != 15);
}

void re::compileFetchTypeFunction(re *this, id *a2, const char *a3)
{
  v6 = a2[45];
  v8 = v6;
  re::ShaderManager::makeFunctionDescriptor(a2, &v7);
  [v7 setName_];
  re::mtl::Library::makeFunctionWithDescriptor(&v8, v7, this);
  if (v7)
  {
  }
}

void re::getVertexFetchFunctionNames(re *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = re::internal::compileTimeHornerHash<15ul>(31, "re::vertexfetch::fetchFromInvalid", 0, 0, 33);
  if (!a2[1])
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_57;
  }

  v4 = v3;
  v5 = a2[2];
  re::StringID::destroyString(v5);
  *v5 = 2 * v4;
  *(v5 + 1) = "re::vertexfetch::fetchFromInvalid";
  v6 = re::internal::compileTimeHornerHash<15ul>(31, "re::vertexfetch::fetchFromUChar2", 0, 0, 32);
  if (a2[1] <= 1uLL)
  {
LABEL_57:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_58;
  }

  v7 = v6;
  v8 = a2[2];
  re::StringID::destroyString((v8 + 16));
  *(v8 + 16) = 2 * v7;
  *(v8 + 24) = "re::vertexfetch::fetchFromUChar2";
  v9 = re::internal::compileTimeHornerHash<15ul>(31, "re::vertexfetch::fetchFromUChar3", 0, 0, 32);
  if (a2[1] <= 2uLL)
  {
LABEL_58:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_59;
  }

  v10 = v9;
  v11 = a2[2];
  re::StringID::destroyString((v11 + 32));
  *(v11 + 32) = 2 * v10;
  *(v11 + 40) = "re::vertexfetch::fetchFromUChar3";
  v12 = re::internal::compileTimeHornerHash<15ul>(31, "re::vertexfetch::fetchFromUChar4", 0, 0, 32);
  if (a2[1] <= 3uLL)
  {
LABEL_59:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_60;
  }

  v13 = v12;
  v14 = a2[2];
  re::StringID::destroyString((v14 + 48));
  *(v14 + 48) = 2 * v13;
  *(v14 + 56) = "re::vertexfetch::fetchFromUChar4";
  v15 = re::internal::compileTimeHornerHash<15ul>(31, "re::vertexfetch::fetchFromChar2", 0, 0, 31);
  if (a2[1] <= 4uLL)
  {
LABEL_60:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_61;
  }

  v16 = v15;
  v17 = a2[2];
  re::StringID::destroyString((v17 + 64));
  *(v17 + 64) = 2 * v16;
  *(v17 + 72) = "re::vertexfetch::fetchFromChar2";
  v18 = re::internal::compileTimeHornerHash<15ul>(31, "re::vertexfetch::fetchFromChar3", 0, 0, 31);
  if (a2[1] <= 5uLL)
  {
LABEL_61:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_62;
  }

  v19 = v18;
  v20 = a2[2];
  re::StringID::destroyString((v20 + 80));
  *(v20 + 80) = 2 * v19;
  *(v20 + 88) = "re::vertexfetch::fetchFromChar3";
  v21 = re::internal::compileTimeHornerHash<15ul>(31, "re::vertexfetch::fetchFromChar4", 0, 0, 31);
  if (a2[1] <= 6uLL)
  {
LABEL_62:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_63;
  }

  v22 = v21;
  v23 = a2[2];
  re::StringID::destroyString((v23 + 96));
  *(v23 + 96) = 2 * v22;
  *(v23 + 104) = "re::vertexfetch::fetchFromChar4";
  if (a2[1] <= 7uLL)
  {
LABEL_63:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_64;
  }

  v24 = re::internal::compileTimeHornerHash<37ul>("re::vertexfetch::fetchFromUChar2Norm", 0, 0, 36);
  v25 = a2[2];
  re::StringID::destroyString((v25 + 112));
  *(v25 + 112) = 2 * v24;
  *(v25 + 120) = "re::vertexfetch::fetchFromUChar2Norm";
  if (a2[1] <= 8uLL)
  {
LABEL_64:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_65;
  }

  v26 = re::internal::compileTimeHornerHash<37ul>("re::vertexfetch::fetchFromUChar3Norm", 0, 0, 36);
  v27 = a2[2];
  re::StringID::destroyString((v27 + 128));
  *(v27 + 128) = 2 * v26;
  *(v27 + 136) = "re::vertexfetch::fetchFromUChar3Norm";
  if (a2[1] <= 9uLL)
  {
LABEL_65:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_66;
  }

  v28 = re::internal::compileTimeHornerHash<37ul>("re::vertexfetch::fetchFromUChar4Norm", 0, 0, 36);
  v29 = a2[2];
  re::StringID::destroyString((v29 + 144));
  *(v29 + 144) = 2 * v28;
  *(v29 + 152) = "re::vertexfetch::fetchFromUChar4Norm";
  if (a2[1] <= 0xAuLL)
  {
LABEL_66:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_67;
  }

  v30 = re::internal::compileTimeHornerHash<37ul>("re::vertexfetch::fetchFromChar2Norm", 0, 0, 35);
  v31 = a2[2];
  re::StringID::destroyString((v31 + 160));
  *(v31 + 160) = 2 * v30;
  *(v31 + 168) = "re::vertexfetch::fetchFromChar2Norm";
  if (a2[1] <= 0xBuLL)
  {
LABEL_67:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_68;
  }

  v32 = re::internal::compileTimeHornerHash<37ul>("re::vertexfetch::fetchFromChar3Norm", 0, 0, 35);
  v33 = a2[2];
  re::StringID::destroyString((v33 + 176));
  *(v33 + 176) = 2 * v32;
  *(v33 + 184) = "re::vertexfetch::fetchFromChar3Norm";
  if (a2[1] <= 0xCuLL)
  {
LABEL_68:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_69;
  }

  v34 = re::internal::compileTimeHornerHash<37ul>("re::vertexfetch::fetchFromChar4Norm", 0, 0, 35);
  v35 = a2[2];
  re::StringID::destroyString((v35 + 192));
  *(v35 + 192) = 2 * v34;
  *(v35 + 200) = "re::vertexfetch::fetchFromChar4Norm";
  v36 = re::internal::compileTimeHornerHash<15ul>(31, "re::vertexfetch::fetchFromUShort2", 0, 0, 33);
  if (a2[1] <= 0xDuLL)
  {
LABEL_69:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_70;
  }

  v37 = v36;
  v38 = a2[2];
  re::StringID::destroyString((v38 + 208));
  *(v38 + 208) = 2 * v37;
  *(v38 + 216) = "re::vertexfetch::fetchFromUShort2";
  v39 = re::internal::compileTimeHornerHash<15ul>(31, "re::vertexfetch::fetchFromUShort3", 0, 0, 33);
  if (a2[1] <= 0xEuLL)
  {
LABEL_70:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_71;
  }

  v40 = v39;
  v41 = a2[2];
  re::StringID::destroyString((v41 + 224));
  *(v41 + 224) = 2 * v40;
  *(v41 + 232) = "re::vertexfetch::fetchFromUShort3";
  v42 = re::internal::compileTimeHornerHash<15ul>(31, "re::vertexfetch::fetchFromUShort4", 0, 0, 33);
  if (a2[1] <= 0xFuLL)
  {
LABEL_71:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_72;
  }

  v43 = v42;
  v44 = a2[2];
  re::StringID::destroyString((v44 + 240));
  *(v44 + 240) = 2 * v43;
  *(v44 + 248) = "re::vertexfetch::fetchFromUShort4";
  v45 = re::internal::compileTimeHornerHash<15ul>(31, "re::vertexfetch::fetchFromShort2", 0, 0, 32);
  if (a2[1] <= 0x10uLL)
  {
LABEL_72:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_73;
  }

  v46 = v45;
  v47 = a2[2];
  re::StringID::destroyString((v47 + 256));
  *(v47 + 256) = 2 * v46;
  *(v47 + 264) = "re::vertexfetch::fetchFromShort2";
  v48 = re::internal::compileTimeHornerHash<15ul>(31, "re::vertexfetch::fetchFromShort3", 0, 0, 32);
  if (a2[1] <= 0x11uLL)
  {
LABEL_73:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_74;
  }

  v49 = v48;
  v50 = a2[2];
  re::StringID::destroyString((v50 + 272));
  *(v50 + 272) = 2 * v49;
  *(v50 + 280) = "re::vertexfetch::fetchFromShort3";
  v51 = re::internal::compileTimeHornerHash<15ul>(31, "re::vertexfetch::fetchFromShort4", 0, 0, 32);
  if (a2[1] <= 0x12uLL)
  {
LABEL_74:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_75;
  }

  v52 = v51;
  v53 = a2[2];
  re::StringID::destroyString((v53 + 288));
  *(v53 + 288) = 2 * v52;
  *(v53 + 296) = "re::vertexfetch::fetchFromShort4";
  if (a2[1] <= 0x13uLL)
  {
LABEL_75:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_76;
  }

  v54 = re::internal::compileTimeHornerHash<37ul>("re::vertexfetch::fetchFromUShort2Norm", 0, 0, 37);
  v55 = a2[2];
  re::StringID::destroyString((v55 + 304));
  *(v55 + 304) = 2 * v54;
  *(v55 + 312) = "re::vertexfetch::fetchFromUShort2Norm";
  if (a2[1] <= 0x14uLL)
  {
LABEL_76:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_77;
  }

  v56 = re::internal::compileTimeHornerHash<37ul>("re::vertexfetch::fetchFromUShort3Norm", 0, 0, 37);
  v57 = a2[2];
  re::StringID::destroyString((v57 + 320));
  *(v57 + 320) = 2 * v56;
  *(v57 + 328) = "re::vertexfetch::fetchFromUShort3Norm";
  if (a2[1] <= 0x15uLL)
  {
LABEL_77:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_78;
  }

  v58 = re::internal::compileTimeHornerHash<37ul>("re::vertexfetch::fetchFromUShort4Norm", 0, 0, 37);
  v59 = a2[2];
  re::StringID::destroyString((v59 + 336));
  *(v59 + 336) = 2 * v58;
  *(v59 + 344) = "re::vertexfetch::fetchFromUShort4Norm";
  if (a2[1] <= 0x16uLL)
  {
LABEL_78:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_79;
  }

  v60 = re::internal::compileTimeHornerHash<37ul>("re::vertexfetch::fetchFromShort2Norm", 0, 0, 36);
  v61 = a2[2];
  re::StringID::destroyString((v61 + 352));
  *(v61 + 352) = 2 * v60;
  *(v61 + 360) = "re::vertexfetch::fetchFromShort2Norm";
  if (a2[1] <= 0x17uLL)
  {
LABEL_79:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_80;
  }

  v62 = re::internal::compileTimeHornerHash<37ul>("re::vertexfetch::fetchFromShort3Norm", 0, 0, 36);
  v63 = a2[2];
  re::StringID::destroyString((v63 + 368));
  *(v63 + 368) = 2 * v62;
  *(v63 + 376) = "re::vertexfetch::fetchFromShort3Norm";
  if (a2[1] <= 0x18uLL)
  {
LABEL_80:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_81;
  }

  v64 = re::internal::compileTimeHornerHash<37ul>("re::vertexfetch::fetchFromShort4Norm", 0, 0, 36);
  v65 = a2[2];
  re::StringID::destroyString((v65 + 384));
  *(v65 + 384) = 2 * v64;
  *(v65 + 392) = "re::vertexfetch::fetchFromShort4Norm";
  v66 = re::internal::compileTimeHornerHash<15ul>(31, "re::vertexfetch::fetchFromHalf2", 0, 0, 31);
  if (a2[1] <= 0x19uLL)
  {
LABEL_81:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_82;
  }

  v67 = v66;
  v68 = a2[2];
  re::StringID::destroyString((v68 + 400));
  *(v68 + 400) = 2 * v67;
  *(v68 + 408) = "re::vertexfetch::fetchFromHalf2";
  v69 = re::internal::compileTimeHornerHash<15ul>(31, "re::vertexfetch::fetchFromHalf3", 0, 0, 31);
  if (a2[1] <= 0x1AuLL)
  {
LABEL_82:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_83;
  }

  v70 = v69;
  v71 = a2[2];
  re::StringID::destroyString((v71 + 416));
  *(v71 + 416) = 2 * v70;
  *(v71 + 424) = "re::vertexfetch::fetchFromHalf3";
  v72 = re::internal::compileTimeHornerHash<15ul>(31, "re::vertexfetch::fetchFromHalf4", 0, 0, 31);
  if (a2[1] <= 0x1BuLL)
  {
LABEL_83:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_84;
  }

  v73 = v72;
  v74 = a2[2];
  re::StringID::destroyString((v74 + 432));
  *(v74 + 432) = 2 * v73;
  *(v74 + 440) = "re::vertexfetch::fetchFromHalf4";
  v75 = re::internal::compileTimeHornerHash<15ul>(31, "re::vertexfetch::fetchFromFloat", 0, 0, 31);
  if (a2[1] <= 0x1CuLL)
  {
LABEL_84:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_85;
  }

  v76 = v75;
  v77 = a2[2];
  re::StringID::destroyString((v77 + 448));
  *(v77 + 448) = 2 * v76;
  *(v77 + 456) = "re::vertexfetch::fetchFromFloat";
  v78 = re::internal::compileTimeHornerHash<15ul>(31, "re::vertexfetch::fetchFromFloat2", 0, 0, 32);
  if (a2[1] <= 0x1DuLL)
  {
LABEL_85:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_86;
  }

  v79 = v78;
  v80 = a2[2];
  re::StringID::destroyString((v80 + 464));
  *(v80 + 464) = 2 * v79;
  *(v80 + 472) = "re::vertexfetch::fetchFromFloat2";
  v81 = re::internal::compileTimeHornerHash<15ul>(31, "re::vertexfetch::fetchFromFloat3", 0, 0, 32);
  if (a2[1] <= 0x1EuLL)
  {
LABEL_86:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_87;
  }

  v82 = v81;
  v83 = a2[2];
  re::StringID::destroyString((v83 + 480));
  *(v83 + 480) = 2 * v82;
  *(v83 + 488) = "re::vertexfetch::fetchFromFloat3";
  v84 = re::internal::compileTimeHornerHash<15ul>(31, "re::vertexfetch::fetchFromFloat4", 0, 0, 32);
  if (a2[1] <= 0x1FuLL)
  {
LABEL_87:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_88;
  }

  v85 = v84;
  v86 = a2[2];
  re::StringID::destroyString((v86 + 496));
  *(v86 + 496) = 2 * v85;
  *(v86 + 504) = "re::vertexfetch::fetchFromFloat4";
  v87 = re::internal::compileTimeHornerHash<15ul>(31, "re::vertexfetch::fetchFromInt", 0, 0, 29);
  if (a2[1] <= 0x20uLL)
  {
LABEL_88:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_89;
  }

  v88 = v87;
  v89 = a2[2];
  re::StringID::destroyString((v89 + 512));
  *(v89 + 520) = "re::vertexfetch::fetchFromInt";
  *(v89 + 512) = 2 * v88;
  if (a2[1] <= 0x21uLL)
  {
LABEL_89:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_90;
  }

  v90 = re::internal::compileTimeHornerHash<37ul>("re::vertexfetch::fetchFromInt2", 0, 0, 30);
  v91 = a2[2];
  re::StringID::destroyString((v91 + 528));
  *(v91 + 536) = "re::vertexfetch::fetchFromInt2";
  *(v91 + 528) = 2 * v90;
  if (a2[1] <= 0x22uLL)
  {
LABEL_90:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_91;
  }

  v92 = re::internal::compileTimeHornerHash<37ul>("re::vertexfetch::fetchFromInt3", 0, 0, 30);
  v93 = a2[2];
  re::StringID::destroyString((v93 + 544));
  *(v93 + 552) = "re::vertexfetch::fetchFromInt3";
  *(v93 + 544) = 2 * v92;
  if (a2[1] <= 0x23uLL)
  {
LABEL_91:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_92;
  }

  v94 = re::internal::compileTimeHornerHash<37ul>("re::vertexfetch::fetchFromInt4", 0, 0, 30);
  v95 = a2[2];
  re::StringID::destroyString((v95 + 560));
  *(v95 + 568) = "re::vertexfetch::fetchFromInt4";
  *(v95 + 560) = 2 * v94;
  if (a2[1] <= 0x24uLL)
  {
LABEL_92:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_93;
  }

  v96 = re::internal::compileTimeHornerHash<37ul>("re::vertexfetch::fetchFromUInt", 0, 0, 30);
  v97 = a2[2];
  re::StringID::destroyString((v97 + 576));
  *(v97 + 584) = "re::vertexfetch::fetchFromUInt";
  *(v97 + 576) = 2 * v96;
  v98 = re::internal::compileTimeHornerHash<15ul>(31, "re::vertexfetch::fetchFromUInt2", 0, 0, 31);
  if (a2[1] <= 0x25uLL)
  {
LABEL_93:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_94;
  }

  v99 = v98;
  v100 = a2[2];
  re::StringID::destroyString((v100 + 592));
  *(v100 + 600) = "re::vertexfetch::fetchFromUInt2";
  *(v100 + 592) = 2 * v99;
  v101 = re::internal::compileTimeHornerHash<15ul>(31, "re::vertexfetch::fetchFromUInt3", 0, 0, 31);
  if (a2[1] <= 0x26uLL)
  {
LABEL_94:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_95;
  }

  v102 = v101;
  v103 = a2[2];
  re::StringID::destroyString((v103 + 608));
  *(v103 + 616) = "re::vertexfetch::fetchFromUInt3";
  *(v103 + 608) = 2 * v102;
  v104 = re::internal::compileTimeHornerHash<15ul>(31, "re::vertexfetch::fetchFromUInt4", 0, 0, 31);
  if (a2[1] <= 0x27uLL)
  {
LABEL_95:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_96;
  }

  v105 = v104;
  v106 = a2[2];
  re::StringID::destroyString((v106 + 624));
  *(v106 + 632) = "re::vertexfetch::fetchFromUInt4";
  *(v106 + 624) = 2 * v105;
  if (a2[1] <= 0x28uLL)
  {
LABEL_96:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_97;
  }

  v107 = re::internal::compileTimeHornerHash<41ul>(0, 0, 40);
  v108 = a2[2];
  re::StringID::destroyString((v108 + 640));
  *(v108 + 648) = "re::vertexfetch::fetchFromInt1010102Norm";
  *(v108 + 640) = 2 * v107;
  if (a2[1] <= 0x29uLL)
  {
LABEL_97:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_98;
  }

  v109 = re::internal::compileTimeHornerHash<37ul>("re::vertexfetch::fetchFromUInt1010102Norm", 0, 0, 41);
  v110 = a2[2];
  re::StringID::destroyString((v110 + 656));
  *(v110 + 664) = "re::vertexfetch::fetchFromUInt1010102Norm";
  *(v110 + 656) = 2 * v109;
  if (a2[1] <= 0x2AuLL)
  {
LABEL_98:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_99;
  }

  v111 = re::internal::compileTimeHornerHash<37ul>("re::vertexfetch::fetchFromUChar4Norm_BGRA", 0, 0, 41);
  v112 = a2[2];
  re::StringID::destroyString((v112 + 672));
  *(v112 + 680) = "re::vertexfetch::fetchFromUChar4Norm_BGRA";
  *(v112 + 672) = 2 * v111;
  v113 = re::internal::compileTimeHornerHash<15ul>(31, "re::vertexfetch::fetchFromUChar", 0, 0, 31);
  if (a2[1] <= 0x2DuLL)
  {
LABEL_99:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_100;
  }

  v114 = v113;
  v115 = a2[2];
  re::StringID::destroyString((v115 + 720));
  *(v115 + 728) = "re::vertexfetch::fetchFromUChar";
  *(v115 + 720) = 2 * v114;
  if (a2[1] <= 0x2EuLL)
  {
LABEL_100:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_101;
  }

  v116 = re::internal::compileTimeHornerHash<37ul>("re::vertexfetch::fetchFromChar", 0, 0, 30);
  v117 = a2[2];
  re::StringID::destroyString((v117 + 736));
  *(v117 + 744) = "re::vertexfetch::fetchFromChar";
  *(v117 + 736) = 2 * v116;
  if (a2[1] <= 0x2FuLL)
  {
LABEL_101:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_102;
  }

  v118 = re::internal::compileTimeHornerHash<37ul>("re::vertexfetch::fetchFromUCharNorm", 0, 0, 35);
  v119 = a2[2];
  re::StringID::destroyString((v119 + 752));
  *(v119 + 760) = "re::vertexfetch::fetchFromUCharNorm";
  *(v119 + 752) = 2 * v118;
  v120 = re::internal::compileTimeHornerHash<15ul>(31, "re::vertexfetch::fetchFromCharNorm", 0, 0, 34);
  if (a2[1] <= 0x30uLL)
  {
LABEL_102:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_103;
  }

  v121 = v120;
  v122 = a2[2];
  re::StringID::destroyString((v122 + 768));
  *(v122 + 776) = "re::vertexfetch::fetchFromCharNorm";
  *(v122 + 768) = 2 * v121;
  v123 = re::internal::compileTimeHornerHash<15ul>(31, "re::vertexfetch::fetchFromUShort", 0, 0, 32);
  if (a2[1] <= 0x31uLL)
  {
LABEL_103:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_104;
  }

  v124 = v123;
  v125 = a2[2];
  re::StringID::destroyString((v125 + 784));
  *(v125 + 792) = "re::vertexfetch::fetchFromUShort";
  *(v125 + 784) = 2 * v124;
  v126 = re::internal::compileTimeHornerHash<15ul>(31, "re::vertexfetch::fetchFromShort", 0, 0, 31);
  if (a2[1] <= 0x32uLL)
  {
LABEL_104:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_105;
  }

  v127 = v126;
  v128 = a2[2];
  re::StringID::destroyString((v128 + 800));
  *(v128 + 808) = "re::vertexfetch::fetchFromShort";
  *(v128 + 800) = 2 * v127;
  if (a2[1] <= 0x33uLL)
  {
LABEL_105:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_106;
  }

  v129 = re::internal::compileTimeHornerHash<37ul>("re::vertexfetch::fetchFromUShortNorm", 0, 0, 36);
  v130 = a2[2];
  re::StringID::destroyString((v130 + 816));
  *(v130 + 824) = "re::vertexfetch::fetchFromUShortNorm";
  *(v130 + 816) = 2 * v129;
  if (a2[1] <= 0x34uLL)
  {
LABEL_106:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_107;
  }

  v131 = re::internal::compileTimeHornerHash<37ul>("re::vertexfetch::fetchFromShortNorm", 0, 0, 35);
  v132 = a2[2];
  re::StringID::destroyString((v132 + 832));
  *(v132 + 840) = "re::vertexfetch::fetchFromShortNorm";
  *(v132 + 832) = 2 * v131;
  if (a2[1] <= 0x35uLL)
  {
LABEL_107:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_108;
  }

  v133 = re::internal::compileTimeHornerHash<37ul>("re::vertexfetch::fetchFromHalf", 0, 0, 30);
  v134 = a2[2];
  re::StringID::destroyString((v134 + 848));
  *(v134 + 856) = "re::vertexfetch::fetchFromHalf";
  *(v134 + 848) = 2 * v133;
  if (a2[1] <= 0x36uLL)
  {
LABEL_108:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_109:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v135 = re::internal::compileTimeHornerHash<39ul>(0, 0, 38);
  v136 = a2[2];
  re::StringID::destroyString((v136 + 864));
  *(v136 + 872) = "re::vertexfetch::fetchFromFloatRG11B10";
  *(v136 + 864) = 2 * v135;
  if (a2[1] <= 0x37uLL)
  {
    goto LABEL_109;
  }

  v137 = re::internal::compileTimeHornerHash<37ul>("re::vertexfetch::fetchFromFloatRGB9E5", 0, 0, 37);
  v138 = a2[2];
  re::StringID::destroyString((v138 + 880));
  *(v138 + 888) = "re::vertexfetch::fetchFromFloatRGB9E5";
  *(v138 + 880) = 2 * v137;
}

void *re::compileAllFetchTypeFunctions@<X0>(re *this@<X0>, void **a2@<X8>)
{
  v45 = *MEMORY[0x1E69E9840];
  *a2 = 0;
  a2[1] = 0;
  re::getVertexFetchFunctionNames(this, &v28);
  v27 = 0;
  v24[1] = 0;
  v25 = 0;
  v24[0] = 0;
  v26 = 0;
  v5 = v29;
  if (v29)
  {
    re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v24, v29);
    if (v5 > v25)
    {
      bzero((v27 + 8 * v25), 8 * (v5 - v25));
    }

    v25 = v5;
    ++v26;
  }

  re::compileFetchTypeFunction(&v23, this, "re::vertexfetch::fetchFromInvalid");
  v22 = 0;
  v19[1] = 0;
  v20 = 0;
  v19[0] = 0;
  v21 = 0;
  if (v25)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = v29;
      if (v29 <= v8)
      {
        break;
      }

      v10 = *(v30 + v6 + 8);
      if (*(v30 + v6) <= 1uLL && v10 && !*v10)
      {
        NS::SharedPtr<MTL::Buffer>::operator=((v27 + v7), &v23);
        *&v40 = v8;
        re::DynamicArray<re::TransitionCondition *>::add(v19, &v40);
      }

      else
      {
        re::compileFetchTypeFunction(&v18, this, v10);
        v9 = v25;
        if (v25 <= v8)
        {
          goto LABEL_37;
        }

        NS::SharedPtr<MTL::Texture>::operator=((v27 + v7), &v18);
        if (v18)
        {
        }
      }

      ++v8;
      v7 += 8;
      v6 += 16;
      if (v8 >= v25)
      {
        goto LABEL_17;
      }
    }

    v31 = 0;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v40 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v32 = 136315906;
    v33 = "operator[]";
    v34 = 1024;
    v35 = 468;
    v36 = 2048;
    v37 = v8;
    v38 = 2048;
    v39 = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_36:
    v31 = 0;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v40 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v32 = 136315906;
    v33 = "removeAt";
    v34 = 1024;
    v35 = 931;
    v36 = 2048;
    v37 = v9;
    v38 = 2048;
    v39 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_37:
    v31 = 0;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v40 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v32 = 136315906;
    v33 = "operator[]";
    v34 = 1024;
    v35 = 789;
    v36 = 2048;
    v37 = v8;
    v38 = 2048;
    v39 = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_17:
  v11 = [MEMORY[0x1E695DEC8] alloc];
  v8 = &unk_1E8723000;
  *&v40 = [v11 initWithObjects:v27 count:v25];
  NS::SharedPtr<MTL::Texture>::operator=(a2 + 1, &v40);
  if (v40)
  {
  }

  if (v20)
  {
    v12 = 0;
    v6 = v25;
    do
    {
      v9 = *(v22 + 8 * v12);
      if (v6 <= v9)
      {
        goto LABEL_36;
      }

      v13 = v27;
      if (v6 - 1 > v9)
      {
        NS::SharedPtr<MTL::Texture>::operator=((v27 + 8 * v9), (v27 + 8 * v6 - 8));
        v6 = v25;
        v13 = v27;
      }

      v14 = v13 + 8 * v6;
      v15 = *(v14 - 8);
      if (v15)
      {

        *(v14 - 8) = 0;
        v6 = v25;
      }

      v25 = --v6;
      ++v26;
    }

    while (++v12 < v20);
  }

  v16 = [MEMORY[0x1E695DEC8] alloc];
  *&v40 = [v16 initWithObjects:v27 count:v25];
  NS::SharedPtr<MTL::Texture>::operator=(a2, &v40);
  if (v40)
  {
  }

  if (v19[0] && v22)
  {
    (*(*v19[0] + 40))();
  }

  if (v23)
  {
  }

  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(v24);
  return re::FixedArray<re::StringID>::deinit(&v28);
}

void re::createVertexFetchComputePipeline(re *this@<X0>, void *a2@<X8>)
{
  re::make::shared::object<re::VertexFetchComputePipeline>(this, a2);
  Pipeline = re::createComputeVertexFetchPipeline(this, v6, v7);
  NS::SharedPtr<MTL::Buffer>::operator=((*a2 + 16), Pipeline);
  v9 = *(*(this + 4) + 144);
  v10 = [objc_msgSend(MEMORY[0x1E69741E8] alloc)];
  [v10 setFunctionCount_];
  v11 = [*(*a2 + 16) newVisibleFunctionTableWithDescriptor_];
  v15 = v11;
  if ([v9 count])
  {
    v12 = 0;
    do
    {
      v13 = [v9 objectAtIndex_];
      v14 = [*(*a2 + 16) functionHandleWithFunction_];
      [v11 setFunction:v14 atIndex:v12];
      if (v14)
      {
      }

      if (v13)
      {
      }

      ++v12;
    }

    while ([v9 count] > v12);
  }

  NS::SharedPtr<MTL::Buffer>::operator=((*a2 + 24), &v15);
  if (v15)
  {
  }

  if (v10)
  {
  }

  if (v9)
  {
  }
}

uint64_t re::internal::compileTimeHornerHash<37ul>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  result = a4 - a3;
  if (a4 - a3 <= 4)
  {
    if (result <= 1)
    {
      if (!result)
      {
        return result;
      }

      if (result == 1)
      {
        v8 = 31 * a2;
        return v8 + *(a1 + v5);
      }
    }

    else
    {
      switch(result)
      {
        case 2:
          v8 = 961 * a2 - *(a1 + a3) + 32 * *(a1 + a3);
          v5 = a3 + 1;
          return v8 + *(a1 + v5);
        case 3:
          v8 = 29791 * a2 + 961 * *(a1 + a3) - *(a1 + a3 + 1) + 32 * *(a1 + a3 + 1);
          v5 = a3 + 2;
          return v8 + *(a1 + v5);
        case 4:
          v8 = 923521 * a2 + 29791 * *(a1 + a3) + 961 * *(a1 + a3 + 1) - *(a1 + a3 + 2) + 32 * *(a1 + a3 + 2);
          v5 = a3 + 3;
          return v8 + *(a1 + v5);
      }
    }

LABEL_25:
    v9 = a3 + (result >> 1);
    v10 = re::internal::compileTimeHornerHash<37ul>(a1, a2, a3, v9 - 1);
    v5 = a4 - 1;
    v8 = 31 * re::internal::compileTimeHornerHash<37ul>(a1, *(a1 + v9 - 1) - v10 + 32 * v10, v9, a4 - 1);
    return v8 + *(a1 + v5);
  }

  if (result > 7)
  {
    switch(result)
    {
      case 8:
        v8 = 0xC694446F01 * a2 + 0x667E12CDFLL * *(a1 + a3) + 887503681 * *(a1 + a3 + 1) + 28629151 * *(a1 + a3 + 2) + 923521 * *(a1 + a3 + 3) + 29791 * *(a1 + a3 + 4) + 961 * *(a1 + a3 + 5) - *(a1 + a3 + 6) + 32 * *(a1 + a3 + 6);
        v5 = a3 + 7;
        return v8 + *(a1 + v5);
      case 9:
        v8 = 0x180BF449711FLL * a2 + 0xC694446F01 * *(a1 + a3) + 0x667E12CDFLL * *(a1 + a3 + 1) + 887503681 * *(a1 + a3 + 2) + 28629151 * *(a1 + a3 + 3) + 923521 * *(a1 + a3 + 4) + 29791 * *(a1 + a3 + 5) + 961 * *(a1 + a3 + 6) - *(a1 + a3 + 7) + 32 * *(a1 + a3 + 7);
        v5 = a3 + 8;
        return v8 + *(a1 + v5);
      case 10:
        v8 = 0x2E97294E4B2C1 * a2 + 0x180BF449711FLL * *(a1 + a3) + 0xC694446F01 * *(a1 + a3 + 1) + 0x667E12CDFLL * *(a1 + a3 + 2) + 887503681 * *(a1 + a3 + 3) + 28629151 * *(a1 + a3 + 4) + 923521 * *(a1 + a3 + 5) + 29791 * *(a1 + a3 + 6) + 961 * *(a1 + a3 + 7) - *(a1 + a3 + 8) + 32 * *(a1 + a3 + 8);
        v5 = a3 + 9;
        return v8 + *(a1 + v5);
    }

    goto LABEL_25;
  }

  if (result == 5)
  {
    v8 = 28629151 * a2 + 923521 * *(a1 + a3) + 29791 * *(a1 + a3 + 1) + 961 * *(a1 + a3 + 2) - *(a1 + a3 + 3) + 32 * *(a1 + a3 + 3);
    v5 = a3 + 4;
    return v8 + *(a1 + v5);
  }

  if (result == 6)
  {
    v8 = 887503681 * a2 + 28629151 * *(a1 + a3) + 923521 * *(a1 + a3 + 1) + 29791 * *(a1 + a3 + 2) + 961 * *(a1 + a3 + 3) - *(a1 + a3 + 4) + 32 * *(a1 + a3 + 4);
    v5 = a3 + 5;
    return v8 + *(a1 + v5);
  }

  if (result != 7)
  {
    goto LABEL_25;
  }

  v8 = 0x667E12CDFLL * a2 + 887503681 * *(a1 + a3) + 28629151 * *(a1 + a3 + 1) + 923521 * *(a1 + a3 + 2) + 29791 * *(a1 + a3 + 3) + 961 * *(a1 + a3 + 4) - *(a1 + a3 + 5) + 32 * *(a1 + a3 + 5);
  v5 = a3 + 6;
  return v8 + *(a1 + v5);
}

uint64_t re::internal::compileTimeHornerHash<41ul>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = a3 - a2;
  if (a3 - a2 > 4)
  {
    if (v5 > 7)
    {
      switch(v5)
      {
        case 8:
          v6 = 0xC694446F01 * a1 + 0x667E12CDFLL * aReVertexfetchF_39[a2] + 887503681 * aReVertexfetchF_39[a2 + 1] + 28629151 * aReVertexfetchF_39[a2 + 2] + 923521 * aReVertexfetchF_39[a2 + 3] + 29791 * aReVertexfetchF_39[a2 + 4] + 961 * aReVertexfetchF_39[a2 + 5] - aReVertexfetchF_39[a2 + 6] + 32 * aReVertexfetchF_39[a2 + 6];
          v4 = a2 + 7;
          return v6 + aReVertexfetchF_39[v4];
        case 9:
          v6 = 0x180BF449711FLL * a1 + 0xC694446F01 * aReVertexfetchF_39[a2] + 0x667E12CDFLL * aReVertexfetchF_39[a2 + 1] + 887503681 * aReVertexfetchF_39[a2 + 2] + 28629151 * aReVertexfetchF_39[a2 + 3] + 923521 * aReVertexfetchF_39[a2 + 4] + 29791 * aReVertexfetchF_39[a2 + 5] + 961 * aReVertexfetchF_39[a2 + 6] - aReVertexfetchF_39[a2 + 7] + 32 * aReVertexfetchF_39[a2 + 7];
          v4 = a2 + 8;
          return v6 + aReVertexfetchF_39[v4];
        case 10:
          v6 = 0x2E97294E4B2C1 * a1 + 0x180BF449711FLL * aReVertexfetchF_39[a2] + 0xC694446F01 * aReVertexfetchF_39[a2 + 1] + 0x667E12CDFLL * aReVertexfetchF_39[a2 + 2] + 887503681 * aReVertexfetchF_39[a2 + 3] + 28629151 * aReVertexfetchF_39[a2 + 4] + 923521 * aReVertexfetchF_39[a2 + 5] + 29791 * aReVertexfetchF_39[a2 + 6] + 961 * aReVertexfetchF_39[a2 + 7] - aReVertexfetchF_39[a2 + 8] + 32 * aReVertexfetchF_39[a2 + 8];
          v4 = a2 + 9;
          return v6 + aReVertexfetchF_39[v4];
      }
    }

    else
    {
      switch(v5)
      {
        case 5:
          v6 = 28629151 * a1 + 923521 * aReVertexfetchF_39[a2] + 29791 * aReVertexfetchF_39[a2 + 1] + 961 * aReVertexfetchF_39[a2 + 2] - aReVertexfetchF_39[a2 + 3] + 32 * aReVertexfetchF_39[a2 + 3];
          v4 = a2 + 4;
          return v6 + aReVertexfetchF_39[v4];
        case 6:
          v6 = 887503681 * a1 + 28629151 * aReVertexfetchF_39[a2] + 923521 * aReVertexfetchF_39[a2 + 1] + 29791 * aReVertexfetchF_39[a2 + 2] + 961 * aReVertexfetchF_39[a2 + 3] - aReVertexfetchF_39[a2 + 4] + 32 * aReVertexfetchF_39[a2 + 4];
          v4 = a2 + 5;
          return v6 + aReVertexfetchF_39[v4];
        case 7:
          v6 = 0x667E12CDFLL * a1 + 887503681 * aReVertexfetchF_39[a2] + 28629151 * aReVertexfetchF_39[a2 + 1] + 923521 * aReVertexfetchF_39[a2 + 2] + 29791 * aReVertexfetchF_39[a2 + 3] + 961 * aReVertexfetchF_39[a2 + 4] - aReVertexfetchF_39[a2 + 5] + 32 * aReVertexfetchF_39[a2 + 5];
          v4 = a2 + 6;
          return v6 + aReVertexfetchF_39[v4];
      }
    }

    goto LABEL_18;
  }

  if (v5 > 1)
  {
    switch(v5)
    {
      case 2:
        v6 = 961 * a1 - aReVertexfetchF_39[a2] + 32 * aReVertexfetchF_39[a2];
        v4 = a2 + 1;
        return v6 + aReVertexfetchF_39[v4];
      case 3:
        v6 = 29791 * a1 + 961 * aReVertexfetchF_39[a2] - aReVertexfetchF_39[a2 + 1] + 32 * aReVertexfetchF_39[a2 + 1];
        v4 = a2 + 2;
        return v6 + aReVertexfetchF_39[v4];
      case 4:
        v6 = 923521 * a1 + 29791 * aReVertexfetchF_39[a2] + 961 * aReVertexfetchF_39[a2 + 1] - aReVertexfetchF_39[a2 + 2] + 32 * aReVertexfetchF_39[a2 + 2];
        v4 = a2 + 3;
        return v6 + aReVertexfetchF_39[v4];
    }

    goto LABEL_18;
  }

  if (v5)
  {
    if (v5 == 1)
    {
LABEL_19:
      v6 = 31 * a1;
      return v6 + aReVertexfetchF_39[v4];
    }

LABEL_18:
    v7 = a2 + (v5 >> 1);
    v8 = re::internal::compileTimeHornerHash<41ul>(a1, a2, v7 - 1);
    v4 = a3 - 1;
    a1 = re::internal::compileTimeHornerHash<41ul>(aReVertexfetchF_39[v7 - 1] - v8 + 32 * v8, v7, a3 - 1);
    goto LABEL_19;
  }

  return v5;
}

uint64_t re::internal::compileTimeHornerHash<39ul>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = a3 - a2;
  if (a3 - a2 > 4)
  {
    if (v5 > 7)
    {
      switch(v5)
      {
        case 8:
          v6 = 0xC694446F01 * a1 + 0x667E12CDFLL * aReVertexfetchF_51[a2] + 887503681 * aReVertexfetchF_51[a2 + 1] + 28629151 * aReVertexfetchF_51[a2 + 2] + 923521 * aReVertexfetchF_51[a2 + 3] + 29791 * aReVertexfetchF_51[a2 + 4] + 961 * aReVertexfetchF_51[a2 + 5] - aReVertexfetchF_51[a2 + 6] + 32 * aReVertexfetchF_51[a2 + 6];
          v4 = a2 + 7;
          return v6 + aReVertexfetchF_51[v4];
        case 9:
          v6 = 0x180BF449711FLL * a1 + 0xC694446F01 * aReVertexfetchF_51[a2] + 0x667E12CDFLL * aReVertexfetchF_51[a2 + 1] + 887503681 * aReVertexfetchF_51[a2 + 2] + 28629151 * aReVertexfetchF_51[a2 + 3] + 923521 * aReVertexfetchF_51[a2 + 4] + 29791 * aReVertexfetchF_51[a2 + 5] + 961 * aReVertexfetchF_51[a2 + 6] - aReVertexfetchF_51[a2 + 7] + 32 * aReVertexfetchF_51[a2 + 7];
          v4 = a2 + 8;
          return v6 + aReVertexfetchF_51[v4];
        case 10:
          v6 = 0x2E97294E4B2C1 * a1 + 0x180BF449711FLL * aReVertexfetchF_51[a2] + 0xC694446F01 * aReVertexfetchF_51[a2 + 1] + 0x667E12CDFLL * aReVertexfetchF_51[a2 + 2] + 887503681 * aReVertexfetchF_51[a2 + 3] + 28629151 * aReVertexfetchF_51[a2 + 4] + 923521 * aReVertexfetchF_51[a2 + 5] + 29791 * aReVertexfetchF_51[a2 + 6] + 961 * aReVertexfetchF_51[a2 + 7] - aReVertexfetchF_51[a2 + 8] + 32 * aReVertexfetchF_51[a2 + 8];
          v4 = a2 + 9;
          return v6 + aReVertexfetchF_51[v4];
      }
    }

    else
    {
      switch(v5)
      {
        case 5:
          v6 = 28629151 * a1 + 923521 * aReVertexfetchF_51[a2] + 29791 * aReVertexfetchF_51[a2 + 1] + 961 * aReVertexfetchF_51[a2 + 2] - aReVertexfetchF_51[a2 + 3] + 32 * aReVertexfetchF_51[a2 + 3];
          v4 = a2 + 4;
          return v6 + aReVertexfetchF_51[v4];
        case 6:
          v6 = 887503681 * a1 + 28629151 * aReVertexfetchF_51[a2] + 923521 * aReVertexfetchF_51[a2 + 1] + 29791 * aReVertexfetchF_51[a2 + 2] + 961 * aReVertexfetchF_51[a2 + 3] - aReVertexfetchF_51[a2 + 4] + 32 * aReVertexfetchF_51[a2 + 4];
          v4 = a2 + 5;
          return v6 + aReVertexfetchF_51[v4];
        case 7:
          v6 = 0x667E12CDFLL * a1 + 887503681 * aReVertexfetchF_51[a2] + 28629151 * aReVertexfetchF_51[a2 + 1] + 923521 * aReVertexfetchF_51[a2 + 2] + 29791 * aReVertexfetchF_51[a2 + 3] + 961 * aReVertexfetchF_51[a2 + 4] - aReVertexfetchF_51[a2 + 5] + 32 * aReVertexfetchF_51[a2 + 5];
          v4 = a2 + 6;
          return v6 + aReVertexfetchF_51[v4];
      }
    }

    goto LABEL_18;
  }

  if (v5 > 1)
  {
    switch(v5)
    {
      case 2:
        v6 = 961 * a1 - aReVertexfetchF_51[a2] + 32 * aReVertexfetchF_51[a2];
        v4 = a2 + 1;
        return v6 + aReVertexfetchF_51[v4];
      case 3:
        v6 = 29791 * a1 + 961 * aReVertexfetchF_51[a2] - aReVertexfetchF_51[a2 + 1] + 32 * aReVertexfetchF_51[a2 + 1];
        v4 = a2 + 2;
        return v6 + aReVertexfetchF_51[v4];
      case 4:
        v6 = 923521 * a1 + 29791 * aReVertexfetchF_51[a2] + 961 * aReVertexfetchF_51[a2 + 1] - aReVertexfetchF_51[a2 + 2] + 32 * aReVertexfetchF_51[a2 + 2];
        v4 = a2 + 3;
        return v6 + aReVertexfetchF_51[v4];
    }

    goto LABEL_18;
  }

  if (v5)
  {
    if (v5 == 1)
    {
LABEL_19:
      v6 = 31 * a1;
      return v6 + aReVertexfetchF_51[v4];
    }

LABEL_18:
    v7 = a2 + (v5 >> 1);
    v8 = re::internal::compileTimeHornerHash<39ul>(a1, a2, v7 - 1);
    v4 = a3 - 1;
    a1 = re::internal::compileTimeHornerHash<39ul>(aReVertexfetchF_51[v7 - 1] - v8 + 32 * v8, v7, a3 - 1);
    goto LABEL_19;
  }

  return v5;
}

void re::make::shared::object<re::VertexFetchComputePipeline>(re *a1@<X0>, void *a2@<X8>)
{
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 32, 8);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(v4, 0);
  *v5 = &unk_1F5D09970;
  v5[2] = 0;
  v5[3] = 0;
  *a2 = v5;
}

void re::VertexFetchComputePipeline::~VertexFetchComputePipeline(re::VertexFetchComputePipeline *this)
{
  *this = &unk_1F5D09970;
  v2 = *(this + 3);
  if (v2)
  {

    *(this + 3) = 0;
  }

  v3 = *(this + 2);
  if (v3)
  {

    *(this + 2) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5D09970;
  v2 = *(this + 3);
  if (v2)
  {

    *(this + 3) = 0;
  }

  v3 = *(this + 2);
  if (v3)
  {

    *(this + 2) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

re::JiggleDeformerModelBuilder *re::JiggleDeformerModelBuilder::JiggleDeformerModelBuilder(re::JiggleDeformerModelBuilder *this, re::Allocator *a2, unsigned int a3, unsigned int a4, DeformationModelData *a5)
{
  *this = a5;
  v9 = re::DeformationModelData::create<re::JiggleDeformer,re::JiggleDeformerModel>(a5, a2);
  re::FixedArray<re::StringID>::init<>(v9, a2, a4);
  re::FixedArray<re::StringID>::init<>(v9 + 3, a2, a4);
  re::FixedArray<int>::init<>(v9 + 6, a2, a4);
  re::FixedArray<int>::init<>(v9 + 9, a2, a4);
  re::FixedArray<unsigned short>::init<unsigned short const&>(v9 + 12, a2, a3, &re::JiggleDeformerModel::kInvalidIndex);
  return this;
}

uint64_t re::DeformationModelData::create<re::JiggleDeformer,re::JiggleDeformerModel>(uint64_t a1, uint64_t a2)
{
  v8[4] = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 32))(a2, 120, 8);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0;
  v6[0] = &unk_1F5D09AA8;
  v6[1] = a2;
  v6[3] = v6;
  v7 = v4;
  v8[3] = v8;
  v8[0] = &unk_1F5D09AA8;
  v8[1] = a2;
  std::unique_ptr<void,std::function<void ()(void *)>>::operator=[abi:nn200100]((a1 + 640), &v7);
  std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](&v7);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v6);
  return *(a1 + 640);
}

unint64_t *re::JiggleDeformerModelBuilder::setData(re::JiggleDeformerModelBuilder *this, unsigned int a2, unsigned int a3, const re::StringID *a4, const re::StringID *a5, float a6, float a7)
{
  v7 = *(*this + 640);
  if (v7[13] <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_8;
  }

  *(v7[14] + 2 * a2) = a3;
  v8 = a3;
  if (v7[1] <= a3)
  {
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_9;
  }

  re::StringID::operator=((v7[2] + 16 * a3), a4);
  if (v7[4] <= v8)
  {
LABEL_9:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_10;
  }

  result = re::StringID::operator=((v7[5] + 16 * v8), a5);
  if (v7[7] <= v8)
  {
LABEL_10:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_11:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *(v7[8] + 4 * v8) = a6;
  if (v7[10] <= v8)
  {
    goto LABEL_11;
  }

  *(v7[11] + 4 * v8) = a7;
  return result;
}

void *re::JiggleDeformer::init(void *result, uint64_t a2)
{
  if ((result[1] & 1) == 0)
  {
    v3 = result;
    *(result + 8) = 1;
    result[2] = *(a2 + 16);
    re::DynamicArray<re::RigNodeConstraint>::setCapacity(v3 + 10, 0);
    ++*(v3 + 26);
    *(v3 + 31) = 64;
    re::DataArray<re::SharedPtr<re::ecs2::System>>::allocBlock(v3 + 20);
    v6 = *(a2 + 16);
    if (v6)
    {
      if (*(v6 + 208) && v3[2])
      {
        v10 = 0;
        v13 = 0;
        memset(v16, 0, sizeof(v16));
        v17 = 0;
        v21 = 0;
        v22 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        ComputePipelineState = re::getOrCreateComputePipelineState(v3[2], &v8);
        NS::SharedPtr<MTL::Buffer>::operator=(v3 + 25, ComputePipelineState);
        if (v21)
        {

          v21 = 0;
        }

        re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v16);
        if (v13 == 1 && v14)
        {
          if (BYTE8(v14))
          {
            (*(*v14 + 40))();
          }

          v14 = 0u;
          v15 = 0u;
        }

        if (v10 == 1 && v11)
        {
          if (BYTE8(v11))
          {
            (*(*v11 + 40))();
          }

          v12 = 0u;
          v11 = 0u;
        }

        result = v8;
        if (v8)
        {
          if (v9)
          {
            return (*(*v8 + 40))();
          }
        }
      }
    }
  }

  return result;
}

unint64_t re::JiggleDeformer::addDeformationInstance@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X2>, uint64_t a3@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 64);
  if (v6)
  {
    v7 = *re::BucketArray<re::CachedMetalFunction,64ul>::operator[](a1 + 24, v6 - 1);
    re::BucketArray<re::CachedMetalFunction,64ul>::operator[](a1 + 24, *(a1 + 64) - 1);
    --*(a1 + 64);
    ++*(a1 + 72);
  }

  else
  {
    v7 = *(a1 + 184);
    v8 = *(a1 + 152);
    if (v7 + 1 > v8 << 6)
    {
      re::BucketArray<re::JiggleDeformer::DynamicsState,64ul>::setBucketsCapacity((a1 + 144), (v7 + 64) >> 6);
      v8 = *(a1 + 152);
    }

    if (v8 <= v7 >> 6)
    {
      memset(v15, 0, sizeof(v15));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    if (*(a1 + 160))
    {
      v9 = a1 + 168;
    }

    else
    {
      v9 = *(a1 + 176);
    }

    v10 = *(v9 + 8 * (v7 >> 6));
    ++*(a1 + 184);
    ++*(a1 + 192);
    v11 = (v10 + 16 * (v7 & 0x3F));
    *v11 = 0;
    v11[1] = 0;
  }

  *&v15[0] = v7;
  result = re::DataArray<unsigned long>::create<unsigned long &>(a1 + 80, v15);
  *a3 = result;
  *(a3 + 8) = vdupq_n_s64(2uLL);
  v13 = *a2;
  if (v13 == 255)
  {
    v14 = *(a2 + 2);
    LOBYTE(v13) = 3;
    if (v14)
    {
      if (*(v14 + 208))
      {
        LOBYTE(v13) = 1;
      }

      else
      {
        LOBYTE(v13) = 3;
      }
    }
  }

  *(a3 + 24) = v13;
  *(a3 + 32) = -1;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  return result;
}

unint64_t re::DataArray<unsigned long>::create<unsigned long &>(uint64_t a1, void *a2)
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
      re::DataArray<re::SharedPtr<re::ecs2::System>>::allocBlock(a1);
    }

    v12 = *(a1 + 16);
    v7 = (v12 - 1);
    if (v12)
    {
      v6 = *(a1 + 48);
      if (v6 < 0x10000)
      {
        v13 = (*(a1 + 32) + 16 * v7);
        *(a1 + 48) = v6 + 1;
        v11 = *(a1 + 56);
        *(v13[1] + 4 * v6) = v11;
        v10 = (*v13 + 8 * v6);
        goto LABEL_15;
      }

LABEL_18:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", "!overflow", "create", 601, v6, v15, v16);
      _os_crash();
      __break(1u);
    }

LABEL_17:
    v15 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v16) = 136315906;
    *(&v16 + 4) = "operator[]";
    WORD6(v16) = 1024;
    HIWORD(v16) = 789;
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
  v10 = (*v9 + 8 * v6);
  *(a1 + 52) = *v10;
  v11 = *(a1 + 56);
LABEL_15:
  ++*(a1 + 40);
  *v10 = *a2;
  return ((v7 << 16) | ((v11 & 0xFFFFFF) << 32)) + v6;
}

_DWORD *re::JiggleDeformer::removeDeformationInstance(uint64_t a1, unint64_t a2)
{
  v4 = *re::DataArray<unsigned long>::get(a1 + 80, a2);
  *re::BucketArray<unsigned long,64ul>::addUninitialized(a1 + 24) = v4;
  v5 = re::BucketArray<re::StitchedDeformer::ComputePipelineData,64ul>::operator[](a1 + 144, v4);

  *v5 = 0;
  v5[1] = 0;

  return re::DataArray<re::ecs2::Component *>::destroy(a1 + 80, a2);
}

uint64_t re::DataArray<unsigned long>::get(uint64_t a1, int a2)
{
  if (*(a1 + 16) <= HIWORD(a2))
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 32) + 16 * HIWORD(a2)) + 8 * a2;
}

uint64_t re::JiggleDeformer::allocateBuffers(re *a1, uint64_t a2, re::PerFrameAllocatorGPU **a3, unsigned int a4, void *a5, uint64_t a6)
{
  v9 = a1;
  v94 = *MEMORY[0x1E69E9840];
  *a6 |= 2uLL;
  *(a6 + 9) = 1;
  re::globalAllocators(a1);
  v10 = (*(*a2 + 32))(a2, 24, 8);
  v12 = v10;
  v13 = *(*a5 + 48);
  v10[1] = v13;
  v10[2] = 0;
  *v10 = a2;
  if (v13)
  {
    if (v13 >= 0x1AF286BCA1AF287)
    {
LABEL_58:
      re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 152, v13);
      _os_crash();
      __break(1u);
LABEL_59:
      re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash();
      __break(1u);
    }

    v10 = (*(*a2 + 32))(a2, 152 * v13, 8);
    v12[2] = v10;
    if (!v10)
    {
      goto LABEL_59;
    }

    v6 = v10;
    if (v13 != 1)
    {
      bzero(v10, 152 * v13 - 152);
      v6 += 152 * v13 - 152;
    }

    *(v6 + 144) = 0;
    *(v6 + 112) = 0u;
    *(v6 + 128) = 0u;
    *(v6 + 80) = 0u;
    *(v6 + 96) = 0u;
    *(v6 + 48) = 0u;
    *(v6 + 64) = 0u;
    *(v6 + 16) = 0u;
    *(v6 + 32) = 0u;
    *v6 = 0u;
  }

  *(&v90 + 1) = re::globalAllocators(v10)[2];
  *&v91 = v89;
  v89[0] = &unk_1F5D09A40;
  v70 = (*(*a2 + 16))(a2, v12, v89);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v89);
  v67 = *(*a5 + 48);
  if (v67)
  {
    v15 = 0;
    while (1)
    {
      re::DeformationInstanceIterator::Instance::Instance(&v76, a5, v15);
      v16 = v79;
      v17 = re::DeformationInstanceIterator::Instance::meshPart(&v76, *(*(v9 + 2) + 32));
      v18 = re::DeformationVertexBufferState::inputVertexCount(v16, 1u);
      v19 = *(*(v78 + 344) + 640);
      v20 = *(v78 + 392);
      v13 = v19[13];
      if (v13 <= v20)
      {
        break;
      }

      v6 = *(v19[14] + 2 * v20);
      v20 = v19[4];
      if (v20 <= v6)
      {
        goto LABEL_51;
      }

      v74 = v18;
      v21 = 12 * v18;
      re::StringID::StringID(&v75, (v19[5] + 16 * v6));
      v73 = v17;
      v22 = v17;
      do
      {
        v23 = v22;
        v22 = *v22;
      }

      while (v22 && !v23[8]);
      v89[0] = (v75 >> 1);
      v24 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v23 + 5, v89);
      if (v24 == -1)
      {
        v72 = 0;
      }

      else
      {
        v72 = (v23[6] + 16 * v24 + 8);
      }

      v25 = re::DeformationInstanceIterator::Instance::handle(&v76);
      v26 = re::DataArray<unsigned long>::get(v9 + 80, v25);
      v27 = re::BucketArray<re::StitchedDeformer::ComputePipelineData,64ul>::operator[](v9 + 144, *v26);
      if (!*v27)
      {
        v28 = v73;
        do
        {
          v29 = v28;
          v28 = *v28;
        }

        while (v28 && !v29[8]);
        v89[0] = 0x2B3FAC222C23CAEDLL;
        v30 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v29 + 5, v89);
        if (v30 == -1)
        {
          v13 = 0;
        }

        else
        {
          v13 = v29[6] + 16 * v30 + 8;
        }

        v31 = *(v9 + 2);
        v32 = re::AttributeTable::buffers(v73);
        v34 = *v13;
        if (v33 <= v34)
        {
          goto LABEL_57;
        }

        v89[0] = [*(v31 + 208) newBufferWithBytes:re::BufferView::contents((v32 + 24 * *v13)) length:v21 options:0];
        NS::SharedPtr<MTL::Texture>::operator=(v27, v89);
        if (v89[0])
        {
        }
      }

      v20 = (v27 + 1);
      if (!v27[1])
      {
        v89[0] = [*(*(v9 + 2) + 208) newBufferWithLength:v21 options:0];
        NS::SharedPtr<MTL::Texture>::operator=(v27 + 1, v89);
        if (v89[0])
        {
        }
      }

      v13 = v19[7];
      if (v13 <= v6)
      {
        goto LABEL_52;
      }

      v13 = v19[10];
      if (v13 <= v6)
      {
        goto LABEL_53;
      }

      v71 = v21;
      v35 = v16;
      v36 = v15;
      v37 = v9;
      v38 = a5;
      a5 = v77;
      v13 = *(v70 + 8);
      if (v13 <= v77)
      {
        goto LABEL_54;
      }

      v39 = *(v19[8] + 4 * v6);
      v40 = **(*(v78 + 352) + 152);
      v41 = *(v19[11] + 4 * v6);
      v42 = *(v70 + 16) + 152 * v77;
      v13 = a3;
      re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(a3, 0x10uLL, 4uLL, v89);
      v43 = v89[0];
      v44 = v90;
      v45 = v89[1];
      v46 = v89[0] + LODWORD(v89[1]);
      *v46 = v74;
      v46[1] = v39;
      v46[2] = v41;
      v46[3] = v40;
      *v42 = v43;
      *(v42 + 8) = v45;
      *(v42 + 16) = v44;
      v89[0] = *v27;
      DWORD2(v90) = 0;
      LODWORD(v91) = 0;
      DWORD1(v91) = [*v27 length];
      std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v42 + 24, v89);
      *(v42 + 56) = v91;
      if (DWORD2(v90) != -1)
      {
        (off_1F5D09A88[DWORD2(v90)])(&v81, v89);
      }

      v89[0] = *v20;
      DWORD2(v90) = 0;
      LODWORD(v91) = 0;
      DWORD1(v91) = [*v20 length];
      std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v42 + 64, v89);
      *(v42 + 96) = v91;
      a5 = v38;
      if (DWORD2(v90) != -1)
      {
        (off_1F5D09A88[DWORD2(v90)])(&v81, v89);
      }

      v47 = 4 * v74;
      re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(a3, 4 * v74, 4uLL, v89);
      v48 = v89[0];
      v6 = LODWORD(v89[1]);
      v49 = HIDWORD(v89[1]);
      v50 = v90;
      *(v42 + 128) = v89[0];
      *(v42 + 136) = v6;
      *(v42 + 140) = v49;
      *(v42 + 144) = v50;
      v9 = v37;
      if (v72)
      {
        v51 = re::AttributeTable::buffers(v73);
        v53 = *v72;
        if (v52 <= v53)
        {
          goto LABEL_56;
        }

        v54 = v36;
        v55 = re::BufferView::contents((v51 + 24 * *v72));
        memcpy(&v48[v6], v55, v47);
      }

      else
      {
        v54 = v36;
        if (v49 >= 4)
        {
          memset_pattern16(&v48[v6], &unk_1E30D6460, v49 & 0xFFFFFFFC);
        }
      }

      re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(a3, v47, 4uLL, v89);
      v56 = v89[0];
      v57 = LODWORD(v89[1]);
      v58 = HIDWORD(v89[1]);
      v59 = v90;
      *(v42 + 104) = v89[0];
      *(v42 + 112) = v57;
      *(v42 + 116) = v58;
      *(v42 + 120) = v59;
      if (v58 >= 4)
      {
        memset_pattern16(&v56[v57], &unk_1E30D6460, v58 & 0xFFFFFFFC);
      }

      v60 = v78;
      v61 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](*v76 + 8, v77);
      v62 = re::DeformationBufferAllocator::alloc(*(v60 + 360), a5[2], 1, 0x1010001000CLL, 0x1E00000000, *(v61 + 16), v71);
      v63 = *(v60 + 360);
      v20 = *(v61 + 16);
      v13 = *(v63 + 8);
      if (v13 <= v20)
      {
        goto LABEL_55;
      }

      v64 = re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::operator[](*(v63 + 16) + 72 * *(v61 + 16) + 16, v62);
      WORD2(v89[0]) = 257;
      LODWORD(v89[0]) = 65548;
      BYTE4(v89[1]) = 30;
      LODWORD(v89[1]) = 0;
      v65 = re::DeformationVertexBufferState::setOutputBuffer(v35, 1, a4, (v64 + 24), v89);
      if (v75)
      {
        if (v75)
        {
        }
      }

      v15 = v54 + 1;
      if (v15 == v67)
      {
        return v70;
      }
    }

    v75 = 0;
    v92 = 0u;
    v93 = 0u;
    v91 = 0u;
    *v89 = 0u;
    v90 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v81 = 136315906;
    v82 = "operator[]";
    v83 = 1024;
    v84 = 476;
    v85 = 2048;
    v86 = v20;
    v87 = 2048;
    v88 = v13;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_51:
    v75 = 0;
    v92 = 0u;
    v93 = 0u;
    v91 = 0u;
    *v89 = 0u;
    v90 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v81 = 136315906;
    v82 = "operator[]";
    v83 = 1024;
    v84 = 476;
    v85 = 2048;
    v86 = v6;
    v87 = 2048;
    v88 = v20;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_52:
    v80 = 0;
    v92 = 0u;
    v93 = 0u;
    v91 = 0u;
    *v89 = 0u;
    v90 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v81 = 136315906;
    v82 = "operator[]";
    v83 = 1024;
    v84 = 476;
    v85 = 2048;
    v86 = v6;
    v87 = 2048;
    v88 = v13;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_53:
    v80 = 0;
    v92 = 0u;
    v93 = 0u;
    v91 = 0u;
    *v89 = 0u;
    v90 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v81 = 136315906;
    v82 = "operator[]";
    v83 = 1024;
    v84 = 476;
    v85 = 2048;
    v86 = v6;
    v87 = 2048;
    v88 = v13;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_54:
    v80 = 0;
    v92 = 0u;
    v93 = 0u;
    v91 = 0u;
    *v89 = 0u;
    v90 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v81 = 136315906;
    v82 = "operator[]";
    v83 = 1024;
    v84 = 468;
    v85 = 2048;
    v86 = a5;
    v87 = 2048;
    v88 = v13;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_55:
    v80 = 0;
    v92 = 0u;
    v93 = 0u;
    v91 = 0u;
    *v89 = 0u;
    v90 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v81 = 136315906;
    v82 = "operator[]";
    v83 = 1024;
    v84 = 476;
    v85 = 2048;
    v86 = v20;
    v87 = 2048;
    v88 = v13;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_56:
    re::internal::assertLog(6, v52, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v53, v52);
    _os_crash();
    __break(1u);
LABEL_57:
    re::internal::assertLog(6, v33, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v34, v33);
    _os_crash();
    __break(1u);
    goto LABEL_58;
  }

  return v70;
}

uint64_t re::JiggleDeformer::deformGPU(uint64_t a1, uint64_t a2, void **this, void *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  re::mtl::ComputeCommandEncoder::pushDebugGroup(this, "Jiggle Deformer");
  v25 = a1;
  v8 = [*(a1 + 200) maxTotalThreadsPerThreadgroup];
  v9 = *(*a4 + 48);
  if (v9)
  {
    v10 = 0;
    v11 = v8;
    v24 = v8 - 1;
    do
    {
      re::DeformationInstanceIterator::Instance::Instance(&v26, a4, v10);
      v12 = v28;
      v13 = re::DeformationVertexBufferState::inputVertexCount(v28, 1u);
      v14 = v27;
      v15 = *(a2 + 8);
      if (v15 <= v27)
      {
        v29 = 0;
        memset(v33, 0, sizeof(v33));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v30 = 136315906;
        *&v30[4] = "operator[]";
        *&v30[12] = 1024;
        *&v30[14] = 468;
        *&v30[18] = 2048;
        *&v30[20] = v14;
        v31 = 2048;
        v32 = v15;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v16 = *(a2 + 16) + 152 * v27;
      v17 = (v24 + v13) / v11;
      [*this setComputePipelineState:*(v25 + 200)];
      LOBYTE(v33[0]) = 1;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v12, 1u);
      v18 = *(v12[24] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v12 + 23, v33) + 24);
      LOBYTE(v33[0]) = 1;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v12, 1u);
      [*this setBuffer:v18 offset:*(v12[24] + 32 * re::HashBrown<re::VertexBufferID atIndex:{re::PerFrameGPUDataBuffer, re::Hash<re::VertexBufferID>, re::EqualTo<re::VertexBufferID>, void, false>::find(v12 + 23, v33) + 16), 0}];
      LOBYTE(v33[0]) = 1;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v12, 1u);
      v19 = *(v12[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v12 + 7, v33) + 24);
      LOBYTE(v33[0]) = 1;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v12, 1u);
      [*this setBuffer:v19 offset:*(v12[8] + 32 * re::HashBrown<re::VertexBufferID atIndex:{re::PerFrameGPUDataBuffer, re::Hash<re::VertexBufferID>, re::EqualTo<re::VertexBufferID>, void, false>::find(v12 + 7, v33) + 16), 1}];
      re::BufferSlice::buffer(v16 + 24, v20);
      [*this setBuffer:*(v16 + 24) offset:*(v16 + 56) atIndex:2];
      re::BufferSlice::buffer(v16 + 64, v21);
      [*this setBuffer:*(v16 + 64) offset:*(v16 + 96) atIndex:3];
      [*this setBuffer:*(v16 + 120) offset:*(v16 + 112) atIndex:4];
      [*this setBuffer:*(v16 + 144) offset:*(v16 + 136) atIndex:5];
      [*this setBuffer:*(v16 + 16) offset:*(v16 + 8) atIndex:6];
      v22 = *this;
      *&v33[0] = v17;
      *(v33 + 8) = vdupq_n_s64(1uLL);
      *v30 = v11;
      *&v30[8] = *(v33 + 8);
      [v22 dispatchThreadgroups:v33 threadsPerThreadgroup:v30];
      ++v10;
    }

    while (v9 != v10);
  }

  return [*this popDebugGroup];
}

void re::JiggleDeformer::deformCPU(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) The Jiggle deformer does not support a CPU path.", "!Unreachable code", "deformCPU", 250);
  _os_crash();
  __break(1u);
}

re::StringID *re::JiggleDeformerModelUtil::envelopeBufferNameForJiggleDataIndex@<X0>(re::JiggleDeformerModelUtil *this@<X0>, const DeformationModelData *a2@<X1>, re::StringID *a3@<X8>)
{
  v3 = *(this + 80);
  if (v3 && *(v3 + 32) > a2)
  {
    return re::StringID::StringID(a3, (*(v3 + 40) + 16 * a2));
  }

  else
  {
    return re::StringID::invalid(a3);
  }
}

re::StringID *re::JiggleDeformerModelUtil::massBufferNameForJiggleDataIndex@<X0>(re::JiggleDeformerModelUtil *this@<X0>, const DeformationModelData *a2@<X1>, re::StringID *a3@<X8>)
{
  v3 = *(this + 80);
  if (v3 && *(v3 + 8) > a2)
  {
    return re::StringID::StringID(a3, (*(v3 + 16) + 16 * a2));
  }

  else
  {
    return re::StringID::invalid(a3);
  }
}

uint64_t re::JiggleDeformerModelUtil::computeJiggleDeformerModelSizeExcludingMetalBuffers(re::JiggleDeformerModelUtil *this, const DeformationModelData *a2)
{
  v2 = *(this + 80);
  if (!v2)
  {
    return 0;
  }

  v3 = v2[1];
  v4 = 4 * (v2[7] + v2[10]) + 16 * v3 + 120;
  if (v3)
  {
    v5 = (v2[2] + 8);
    do
    {
      if (*(v5 - 1))
      {
        v6 = strlen(*v5) + 1;
      }

      else
      {
        v6 = 0;
      }

      v4 += v6;
      v5 += 2;
      --v3;
    }

    while (v3);
  }

  v7 = v2[4];
  v8 = v4 + 16 * v7;
  if (v7)
  {
    v9 = (v2[5] + 8);
    do
    {
      if (*(v9 - 1))
      {
        v10 = strlen(*v9) + 1;
      }

      else
      {
        v10 = 0;
      }

      v8 += v10;
      v9 += 2;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t re::internal::Callable<re::JiggleDeformer::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::$_0,void ()(void *)>::operator()(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (**a2)
  {
    v3 = v2[1];
    if (v3)
    {
      v4 = 152 * v3;
      v5 = (v2[2] + 88);
      do
      {
        v6 = *v5;
        if (v6 != -1)
        {
          (off_1F5D09A88[v6])(&v9, v5 - 6);
        }

        *v5 = -1;
        v7 = *(v5 - 10);
        if (v7 != -1)
        {
          (off_1F5D09A88[v7])(&v10, v5 - 16);
        }

        *(v5 - 10) = -1;
        v5 += 38;
        v4 -= 152;
      }

      while (v4);
      result = (*(**v2 + 40))(*v2, v2[2]);
      v2[1] = 0;
      v2[2] = 0;
    }

    *v2 = 0;
  }

  return result;
}

void *re::internal::Callable<re::JiggleDeformer::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D09A40;
  return result;
}

void *re::internal::Callable<re::JiggleDeformer::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D09A40;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2re20DeformationModelData6createINS2_14JiggleDeformerENS2_19JiggleDeformerModelEJEEEPT0_PNS2_9AllocatorEDpOT1_EUlPvE_NS_9allocatorISF_EEFvSE_EE7__cloneEPNS0_6__baseISI_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D09AA8;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN2re20DeformationModelData6createINS2_14JiggleDeformerENS2_19JiggleDeformerModelEJEEEPT0_PNS2_9AllocatorEDpOT1_EUlPvE_NS_9allocatorISF_EEFvSE_EEclEOSE_(uint64_t result, uint64_t **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(result + 8);
    re::FixedArray<CoreIKTransform>::deinit(v2 + 12);
    re::FixedArray<CoreIKTransform>::deinit(v2 + 9);
    re::FixedArray<CoreIKTransform>::deinit(v2 + 6);
    re::FixedArray<re::StringID>::deinit(v2 + 3);
    re::FixedArray<re::StringID>::deinit(v2);
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2re20DeformationModelData6createINS2_14JiggleDeformerENS2_19JiggleDeformerModelEJEEEPT0_PNS2_9AllocatorEDpOT1_EUlPvE_NS_9allocatorISF_EEFvSE_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *re::BucketArray<unsigned long,64ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<unsigned long,64ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<unsigned long,64ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < a2 << 6)
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
        v5 = (*(**v3 + 32))(*v3, 512, 0);
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

void *re::BucketArray<re::JiggleDeformer::DynamicsState,64ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::JiggleDeformer::DynamicsState,64ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::JiggleDeformer::DynamicsState,64ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < a2 << 6)
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

uint64_t re::BucketArray<unsigned long,64ul>::addUninitialized(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > v3 << 6)
  {
    re::BucketArray<unsigned long,64ul>::setBucketsCapacity(a1, (v2 + 64) >> 6);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 6)
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

  v5 = *(v4 + 8 * (v2 >> 6));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + 8 * (v2 & 0x3F);
}

uint64_t re::LateLatch::shouldApplyHeadPoseLateLatching(re::LateLatch *this)
{
  {
    re::Defaults::BOOLValue("enableHeadPoseLateLatching", v7, v10);
    if (v10[0])
    {
      v8 = v10[1];
    }

    else
    {
      v8 = 1;
    }

    re::LateLatch::shouldApplyHeadPoseLateLatching(void)::kEnable = v8;
  }

  v9[0] = 0x95A75B43D56D48D6;
  v9[1] = "overrides:enableHeadPoseLateLatching";
  v2 = re::s_debugSettingsManager;
  if (re::s_debugSettingsManager && (v10[0] = 0, v2 = re::DebugSettingsManager::getWithErrorCode<BOOL>(re::s_debugSettingsManager, v9, v10), !v2))
  {
    v1 = v10[0];
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = re::LateLatch::shouldApplyHeadPoseLateLatching(void)::kEnable;
  if (v9[0])
  {
    if (v9[0])
    {
    }
  }

  if (v3)
  {
    v5 = v1;
  }

  else
  {
    v5 = v4;
  }

  return v5 & 1;
}

uint64_t re::LateLatch::shouldApplyAnchorLateLatching(re::LateLatch *this)
{
  {
    re::Defaults::BOOLValue("enableAnchorLateLatching", v7, v10);
    if (v10[0])
    {
      v8 = v10[1];
    }

    else
    {
      v8 = 1;
    }

    re::LateLatch::shouldApplyAnchorLateLatching(void)::kEnable = v8;
  }

  v9[0] = 0x2BE47D8679B6881ELL;
  v9[1] = "overrides:enableAnchorLateLatching";
  v2 = re::s_debugSettingsManager;
  if (re::s_debugSettingsManager && (v10[0] = 0, v2 = re::DebugSettingsManager::getWithErrorCode<BOOL>(re::s_debugSettingsManager, v9, v10), !v2))
  {
    v1 = v10[0];
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = re::LateLatch::shouldApplyAnchorLateLatching(void)::kEnable;
  if (v9[0])
  {
    if (v9[0])
    {
    }
  }

  if (v3)
  {
    v5 = v1;
  }

  else
  {
    v5 = v4;
  }

  return v5 & 1;
}

uint64_t re::LateLatch::shouldUseLegacyCodepathForHeadPoseLateLatching(re::LateLatch *this)
{
  {
    re::Defaults::BOOLValue("useLegacyHeadPoseLateLatching", v7, v10);
    if (v10[0])
    {
      v8 = v10[1];
    }

    else
    {
      v8 = 0;
    }

    re::LateLatch::shouldUseLegacyCodepathForHeadPoseLateLatching(void)::kEnable = v8;
  }

  v9[0] = 0x4B73D1551D23FEA4;
  v9[1] = "overrides:useLegacyHeadPoseLateLatching";
  v2 = re::s_debugSettingsManager;
  if (re::s_debugSettingsManager && (v10[0] = 0, v2 = re::DebugSettingsManager::getWithErrorCode<BOOL>(re::s_debugSettingsManager, v9, v10), !v2))
  {
    v1 = v10[0];
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = re::LateLatch::shouldUseLegacyCodepathForHeadPoseLateLatching(void)::kEnable;
  if (v9[0])
  {
    if (v9[0])
    {
    }
  }

  if (v3)
  {
    v5 = v1;
  }

  else
  {
    v5 = v4;
  }

  return v5 & 1;
}

uint64_t re::LateLatch::shouldApplyVisualDepthLateLatching(re::LateLatch *this)
{
  {
    re::Defaults::BOOLValue("enableVisualDepthLateLatching", v7, v10);
    if (v10[0])
    {
      v8 = v10[1];
    }

    else
    {
      v8 = 1;
    }

    re::LateLatch::shouldApplyVisualDepthLateLatching(void)::kEnable = v8;
  }

  v9[0] = 0x9D6295447F5A27A2;
  v9[1] = "overrides:enableVisualDepthLateLatching";
  v2 = re::s_debugSettingsManager;
  if (re::s_debugSettingsManager && (v10[0] = 0, v2 = re::DebugSettingsManager::getWithErrorCode<BOOL>(re::s_debugSettingsManager, v9, v10), !v2))
  {
    v1 = v10[0];
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = re::LateLatch::shouldApplyVisualDepthLateLatching(void)::kEnable;
  if (v9[0])
  {
    if (v9[0])
    {
    }
  }

  if (v3)
  {
    v5 = v1;
  }

  else
  {
    v5 = v4;
  }

  return v5 & 1;
}

void re::ViewConstantsLateLatch::copyOriginalViewConstants(uint64_t a1, _OWORD *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  shouldApplyHeadPoseLateLatching = re::LateLatch::shouldApplyHeadPoseLateLatching(a1);
  if (shouldApplyHeadPoseLateLatching)
  {
    if (re::LateLatch::shouldUseLegacyCodepathForHeadPoseLateLatching(shouldApplyHeadPoseLateLatching))
    {
      memcpy(v10, a2, sizeof(v10));
      if (*a1)
      {
        memmove((a1 + 256), a2, 0x400uLL);
      }

      else
      {
        *a1 = 1;
        memcpy((a1 + 256), v10, 0x400uLL);
      }
    }

    else
    {
      v5 = a2[33];
      v9[0] = a2[32];
      v9[1] = v5;
      v6 = a2[35];
      v9[2] = a2[34];
      v9[3] = v6;
      v7 = a2[37];
      v9[4] = a2[36];
      v9[5] = v7;
      v8 = a2[39];
      v9[6] = a2[38];
      v9[7] = v8;
      re::DynamicArray<re::FixedInlineArray<re::Matrix4x4<float>,2ul>>::add((a1 + 1360), v9);
    }
  }
}

__n128 re::DynamicArray<re::FixedInlineArray<re::Matrix4x4<float>,2ul>>::add(_anonymous_namespace_ *this, __int128 *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::FixedInlineArray<re::Matrix4x4<float>,2ul>>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + (v4 << 7);
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[3];
  *(v5 + 32) = a2[2];
  *(v5 + 48) = v8;
  *v5 = v6;
  *(v5 + 16) = v7;
  result = a2[4];
  v10 = a2[5];
  v11 = a2[7];
  *(v5 + 96) = a2[6];
  *(v5 + 112) = v11;
  *(v5 + 64) = result;
  *(v5 + 80) = v10;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

re::LateLatch *re::ViewConstantsLateLatch::trackViewConstantsBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = re::LateLatch::shouldApplyHeadPoseLateLatching(a1);
  if (!result)
  {
    return result;
  }

  result = re::LateLatch::shouldUseLegacyCodepathForHeadPoseLateLatching(result);
  v8 = *a4;
  v9 = a4[1];
  if (!result)
  {
    if (!v9)
    {
      return result;
    }

    v21 = 16 * v9;
    for (i = (v8 + 12); ; i += 4)
    {
      if (*(i - 3) != 1)
      {
        goto LABEL_45;
      }

      v23 = *(i - 2);
      if (v23)
      {
        if (v23 > 0x100)
        {
          if (v23 > 0x300)
          {
            v24 = 0;
            v25 = 0;
            v26 = 0;
            goto LABEL_37;
          }

          v25 = 0;
          v26 = 0;
          v28 = *i + v23;
          goto LABEL_35;
        }

        v26 = 0;
        v27 = *i;
      }

      else
      {
        v27 = *i;
        if (*i >= 0x80)
        {
          v26 = a2 + *(i - 1);
        }

        else
        {
          v26 = 0;
        }
      }

      v28 = v27 + v23;
      if (v28 < 0x180)
      {
        v24 = 0;
        v25 = 0;
        goto LABEL_37;
      }

      v25 = a2 + 256 - v23 + *(i - 1);
LABEL_35:
      if (v28 < 0x320)
      {
        v24 = 0;
LABEL_37:
        v29 = 0;
        if (v26)
        {
          goto LABEL_42;
        }

        goto LABEL_40;
      }

      v24 = a2 + 768 - v23 + *(i - 1);
      v29 = v24 != 0;
      if (v26)
      {
        goto LABEL_42;
      }

LABEL_40:
      if (v25 || v29)
      {
LABEL_42:
        v30 = *(a1 + 1376);
        v31 = *(a1 + 1336);
        if (v31 >= *(a1 + 1328))
        {
          result = re::DynamicArray<re::ViewConstantsLateLatch::LateLatchEntry>::growCapacity((a1 + 1320), v31 + 1);
          v31 = *(a1 + 1336);
        }

        v32 = *(a1 + 1352) + 32 * v31;
        *v32 = v26;
        *(v32 + 8) = v25;
        *(v32 + 16) = v24;
        *(v32 + 24) = v30 - 1;
        *(a1 + 1336) = v31 + 1;
        ++*(a1 + 1344);
      }

LABEL_45:
      v21 -= 16;
      if (!v21)
      {
        return result;
      }
    }
  }

  if (v9)
  {
    v10 = 16 * v9;
    v11 = (v8 + 8);
    do
    {
      if (*(v11 - 2) == 1)
      {
        v13 = *(v11 - 1);
        v12 = *v11;
        v14 = v11[1];
        v15 = *(a1 + 1296);
        v16 = *(a1 + 1288);
        if (v15 >= v16)
        {
          v17 = v15 + 1;
          if (v16 < v15 + 1)
          {
            if (*(a1 + 1280))
            {
              v18 = 2 * v16;
              if (!v16)
              {
                v18 = 8;
              }

              if (v18 <= v17)
              {
                v19 = v17;
              }

              else
              {
                v19 = v18;
              }

              result = re::DynamicArray<re::ViewConstantsLateLatch::LegacyPatchCommand>::setCapacity((a1 + 1280), v19);
            }

            else
            {
              result = re::DynamicArray<re::ViewConstantsLateLatch::LegacyPatchCommand>::setCapacity((a1 + 1280), v17);
              ++*(a1 + 1304);
            }
          }

          v15 = *(a1 + 1296);
        }

        v20 = *(a1 + 1312) + 16 * v15;
        *v20 = a2 + v12;
        *(v20 + 8) = v13;
        *(v20 + 12) = v14;
        *(a1 + 1296) = v15 + 1;
        ++*(a1 + 1304);
      }

      v11 += 4;
      v10 -= 16;
    }

    while (v10);
  }

  return result;
}

double re::ViewConstantsLateLatch::trackViewConstantsBuffer(_DWORD *a1, uint64_t a2)
{
  if (re::LateLatch::shouldApplyHeadPoseLateLatching(a1))
  {
    v5 = a1[344] - 1;
    v6[0] = a2;
    v6[1] = a2 + 256;
    v6[2] = a2 + 768;
    v7 = v5;
    *&result = re::DynamicArray<re::ViewConstantsLateLatch::LateLatchEntry>::add((a1 + 330), v6).n128_u64[0];
  }

  return result;
}

__n128 re::DynamicArray<re::ViewConstantsLateLatch::LateLatchEntry>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::ViewConstantsLateLatch::LateLatchEntry>::growCapacity(this, v4 + 1);
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

void re::ViewConstantsLateLatch::patchTrackedViewConstantsBuffers(void *a1, float32x4_t *a2, unint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __int128 __dst, __int128 a30, __int128 a31, __int128 a32, __int128 a33, __int128 a34, __int128 a35, __int128 a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  LODWORD(v53) = a4;
  STACK[0xE98] = *MEMORY[0x1E69E9840];
  shouldApplyHeadPoseLateLatching = re::LateLatch::shouldApplyHeadPoseLateLatching(a1);
  if (shouldApplyHeadPoseLateLatching)
  {
    v58 = a1[172] && a1[167] != 0;
    i = (*a1 == 1 && (a1[162] != 0));
    shouldUseLegacyCodepathForHeadPoseLateLatching = re::LateLatch::shouldUseLegacyCodepathForHeadPoseLateLatching(shouldApplyHeadPoseLateLatching);
    v61 = shouldUseLegacyCodepathForHeadPoseLateLatching ? i : v58;
    if (v61 == 1)
    {
      if (re::LateLatch::shouldUseLegacyCodepathForHeadPoseLateLatching(shouldUseLegacyCodepathForHeadPoseLateLatching))
      {
        *&STACK[0xE30] = 0uLL;
        *&STACK[0xE40] = 0uLL;
        *&STACK[0xE10] = 0uLL;
        *&STACK[0xE20] = 0uLL;
        *&STACK[0xDF0] = 0uLL;
        *&STACK[0xE00] = 0uLL;
        *&STACK[0xDD0] = 0uLL;
        *&STACK[0xDE0] = 0uLL;
        memcpy(&__dst, a1 + 32, 0x400uLL);
        if (*(a3 + 8) >= v53)
        {
          v64 = v53;
        }

        else
        {
          v64 = *(a3 + 8);
        }

        if (v64)
        {
          v53 = 0;
          i = &STACK[0xD90];
          while (v53 != 2)
          {
            v65 = &STACK[0xAA0] + 8 * v53;
            v66 = &STACK[0xDD0] + 8 * v53;
            v67 = *(v65 + 1);
            *v66 = *v65;
            *(v66 + 1) = v67;
            v68 = *(v65 + 3);
            *(v66 + 2) = *(v65 + 2);
            *(v66 + 3) = v68;
            v69 = *(a3 + 8);
            if (v69 <= v53)
            {
              goto LABEL_65;
            }

            v70 = 0;
            v71 = *a2;
            v71.i32[3] = 1.0;
            v72 = *(*a3 + (v53 << 6));
            *&STACK[0xD90] = xmmword_1E3047670;
            *&STACK[0xDA0] = xmmword_1E3047680;
            *&STACK[0xDB0] = xmmword_1E30476A0;
            *&STACK[0xDC0] = v71;
            do
            {
              *(&STACK[0xE50] + v70) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v72.columns[0], COERCE_FLOAT(*(&STACK[0xD90] + v70))), v72.columns[1], *(&STACK[0xD90] + v70), 1), v72.columns[2], *(&STACK[0xD90] + v70), 2), v72.columns[3], *(&STACK[0xD90] + v70), 3);
              v70 += 16;
            }

            while (v70 != 64);
            v73 = 0;
            v74 = *&STACK[0xE50];
            v75 = *&STACK[0xE60];
            v76 = *&STACK[0xE70];
            v77 = *&STACK[0xE80];
            v78 = &__dst + 4 * v53;
            *v78 = *&STACK[0xE50];
            v78[1] = v75;
            v78[2] = v76;
            v78[3] = v77;
            v79 = *v66;
            v80 = *(v66 + 1);
            v81 = *(v66 + 2);
            v82 = *(v66 + 3);
            *&STACK[0xD90] = v74;
            *&STACK[0xDA0] = v75;
            *&STACK[0xDB0] = v76;
            *&STACK[0xDC0] = v77;
            do
            {
              *(&STACK[0xE50] + v73) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v79, COERCE_FLOAT(*(&STACK[0xD90] + v73))), v80, *(&STACK[0xD90] + v73), 1), v81, *(&STACK[0xD90] + v73), 2), v82, *(&STACK[0xD90] + v73), 3);
              v73 += 16;
            }

            while (v73 != 64);
            v83 = *&STACK[0xE60];
            v84 = *&STACK[0xE70];
            v85 = *&STACK[0xE80];
            v86 = &a53 + 8 * v53;
            *v86 = *&STACK[0xE50];
            *(v86 + 1) = v83;
            *(v86 + 2) = v84;
            *(v86 + 3) = v85;
            v121 = __invert_f4(v72);
            *(&STACK[0xBA0] + v53) = vsubq_f32(v121.columns[3], *a2);
            v53 = (v53 + 1);
            if (v53 == v64)
            {
              goto LABEL_25;
            }
          }

          goto LABEL_62;
        }

LABEL_25:
        v87 = a1[162];
        if (v87)
        {
          v88 = a1[164];
          v89 = v88 + 16 * v87;
          do
          {
            memcpy(*v88, &__dst + *(v88 + 8), *(v88 + 12));
            v88 += 16;
          }

          while (v88 != v89);
        }
      }

      else
      {
        a35 = 0uLL;
        a36 = 0uLL;
        a33 = 0uLL;
        a34 = 0uLL;
        a31 = 0uLL;
        a32 = 0uLL;
        __dst = 0uLL;
        a30 = 0uLL;
        *&STACK[0xD90] = 0uLL;
        *&STACK[0xDA0] = 0uLL;
        if (*(a3 + 8) >= v53)
        {
          v53 = v53;
        }

        else
        {
          v53 = *(a3 + 8);
        }

        if (v53)
        {
          for (i = 0; i != v53; i = (i + 1))
          {
            v90 = *(a3 + 8);
            if (v90 <= i)
            {
              goto LABEL_63;
            }

            v91 = 0;
            v92 = *a2;
            v92.i32[3] = 1.0;
            v93 = *(*a3 + (i << 6));
            *&STACK[0xE50] = xmmword_1E3047670;
            *&STACK[0xE60] = xmmword_1E3047680;
            *&STACK[0xE70] = xmmword_1E30476A0;
            *&STACK[0xE80] = v92;
            do
            {
              *(&STACK[0xDD0] + v91) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v93.columns[0], COERCE_FLOAT(*(&STACK[0xE50] + v91))), v93.columns[1], *(&STACK[0xE50] + v91), 1), v93.columns[2], *(&STACK[0xE50] + v91), 2), v93.columns[3], *(&STACK[0xE50] + v91), 3);
              v91 += 16;
            }

            while (v91 != 64);
            if (i == 2)
            {
LABEL_64:
              re::internal::assertLog(6, v62, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, 2, 2);
              _os_crash();
              __break(1u);
LABEL_65:
              re::internal::assertLog(6, v63, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v53, v69);
              _os_crash();
              __break(1u);
            }

            v94 = *&STACK[0xDE0];
            v95 = *&STACK[0xDF0];
            v96 = *&STACK[0xE00];
            v97 = &__dst + 4 * i;
            *v97 = *&STACK[0xDD0];
            v97[1] = v94;
            v97[2] = v95;
            v97[3] = v96;
            v122 = __invert_f4(v93);
            *(&STACK[0xD90] + i) = vsubq_f32(v122.columns[3], *a2);
          }
        }

        v98 = a1[167];
        if (v98)
        {
          v99 = a1[169];
          v100 = v99 + 32 * v98;
          do
          {
            if (v53)
            {
              for (j = 0; j != v53; ++j)
              {
                v102 = &__dst + 4 * j;
                if (*v99)
                {
                  if (j >= 2)
                  {
                    re::internal::assertLog(6, v62, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, j, 2);
                    _os_crash();
                    __break(1u);
LABEL_59:
                    *&STACK[0xE00] = 0u;
                    *&STACK[0xE10] = 0u;
                    *&STACK[0xDE0] = 0u;
                    *&STACK[0xDF0] = 0u;
                    *&STACK[0xDD0] = 0u;
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    LODWORD(STACK[0xE50]) = 136315906;
                    STACK[0xE54] = "operator[]";
                    LOWORD(STACK[0xE5C]) = 1024;
                    LODWORD(STACK[0xE5E]) = 797;
                    LOWORD(STACK[0xE62]) = 2048;
                    STACK[0xE64] = a3;
                    LOWORD(STACK[0xE6C]) = 2048;
                    STACK[0xE6E] = a2;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_60:
                    re::internal::assertLog(6, v62, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 181, j, 2);
                    _os_crash();
                    __break(1u);
LABEL_61:
                    re::internal::assertLog(6, v62, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, j, 2);
                    _os_crash();
                    __break(1u);
LABEL_62:
                    re::internal::assertLog(6, v63, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, 2, 2);
                    _os_crash();
                    __break(1u);
LABEL_63:
                    re::internal::assertLog(6, v62, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, v90);
                    _os_crash();
                    __break(1u);
                    goto LABEL_64;
                  }

                  v103 = (*v99 + (j << 6));
                  v104 = v102[1];
                  *v103 = *v102;
                  v103[1] = v104;
                  v105 = v102[3];
                  v103[2] = v102[2];
                  v103[3] = v105;
                }

                v106 = *(v99 + 8);
                if (v106)
                {
                  a3 = *(v99 + 24);
                  a2 = a1[172];
                  if (a2 <= a3)
                  {
                    goto LABEL_59;
                  }

                  if (j >= 2)
                  {
                    goto LABEL_60;
                  }

                  v107 = 0;
                  v108 = (a1[174] + (a3 << 7) + (j << 6));
                  v109 = *v108;
                  v110 = v108[1];
                  v111 = v108[2];
                  v112 = v108[3];
                  v113 = v102[1];
                  v114 = v102[2];
                  v115 = v102[3];
                  *&STACK[0xE50] = *v102;
                  *&STACK[0xE60] = v113;
                  *&STACK[0xE70] = v114;
                  *&STACK[0xE80] = v115;
                  do
                  {
                    *(&STACK[0xDD0] + v107) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v109, COERCE_FLOAT(*(&STACK[0xE50] + v107))), v110, *(&STACK[0xE50] + v107), 1), v111, *(&STACK[0xE50] + v107), 2), v112, *(&STACK[0xE50] + v107), 3);
                    v107 += 16;
                  }

                  while (v107 != 64);
                  v116 = *&STACK[0xDE0];
                  v117 = *&STACK[0xDF0];
                  v118 = *&STACK[0xE00];
                  v119 = (v106 + (j << 6));
                  *v119 = *&STACK[0xDD0];
                  v119[1] = v116;
                  v119[2] = v117;
                  v119[3] = v118;
                }

                v120 = *(v99 + 16);
                if (v120)
                {
                  if (j >= 2)
                  {
                    goto LABEL_61;
                  }

                  *(v120 + 16 * j) = *(&STACK[0xD90] + j);
                }
              }
            }

            v99 += 32;
          }

          while (v99 != v100);
        }
      }
    }
  }
}