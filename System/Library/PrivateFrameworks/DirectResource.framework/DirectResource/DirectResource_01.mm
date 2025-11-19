void re::DirectResourceContext::DirectResourceContext(uint64_t a1, __int128 *a2)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *v4 = &unk_285BC17C8;
  *(v4 + 16) = &unk_285BC1860;
  v5 = *a2;
  v6 = a2[1];
  *(v4 + 56) = *(a2 + 4);
  *(v4 + 40) = v6;
  *(v4 + 24) = v5;
  *(a1 + 64) = *(a2 + 5);
  *(a1 + 72) = 0;
  *(a1 + 76) = 1;
  *(a1 + 120) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 1;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 216) = 0;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 196) = 0u;
  operator new();
}

void re::DirectResourceContext::~DirectResourceContext(re::DirectResourceContext *this)
{
  for (i = *(this + 34); i; i = *i)
  {
    WeakRetained = objc_loadWeakRetained(i + 4);
    if (WeakRetained)
    {
      v4 = WeakRetained;
      re::DirectResource::setDelegate(WeakRetained - 8, 0);
    }
  }

  std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>>>::clear(this + 256);
  std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>>>::clear(this + 296);
  v5 = *(this + 30);
  if (v5)
  {
    re::DirectResourcesReusePool::~DirectResourcesReusePool(v5);
    MEMORY[0x24C1E9EB0]();
  }

  *(this + 30) = 0;
  v6 = *(this + 11);
  if (v6)
  {
    _Block_release(v6);
    *(this + 11) = 0;
  }

  dispatch_queue_set_specific(*(this + 3), this, 0, 0);
  dispatch_release(*(this + 3));
  std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>>>::~__hash_table(this + 296);
  std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>>>::~__hash_table(this + 256);
  __ulock_wake();
  v11 = (this + 216);
  std::vector<re::SharedPtr<re::DirectBuffer>>::__destroy_vector::operator()[abi:nn200100](&v11);
  v11 = (this + 184);
  std::vector<re::SharedPtr<re::DirectBuffer>>::__destroy_vector::operator()[abi:nn200100](&v11);
  v7 = *(this + 22);
  if (v7)
  {

    *(this + 22) = 0;
  }

  v8 = *(this + 21);
  if (v8)
  {

    *(this + 21) = 0;
  }

  std::__function::__value_func<void ()(re::DirectResourceContext *,unsigned long long)>::~__value_func[abi:nn200100](this + 128);
  std::__function::__value_func<void ()(re::DirectResourceContext *,re::DirectResourceCommands *)>::~__value_func[abi:nn200100](this + 96);
  v9 = *(this + 10);
  if (v9)
  {

    *(this + 10) = 0;
  }

  v10 = *(this + 8);
  if (v10)
  {

    *(this + 8) = 0;
  }

  ArcSharedObject::~ArcSharedObject(this);
}

{
  re::DirectResourceContext::~DirectResourceContext(this);

  JUMPOUT(0x24C1E9EB0);
}

void non-virtual thunk tore::DirectResourceContext::~DirectResourceContext(re::DirectResourceContext *this)
{
  re::DirectResourceContext::~DirectResourceContext((this - 16));
}

{
  re::DirectResourceContext::~DirectResourceContext((this - 16));

  JUMPOUT(0x24C1E9EB0);
}

void re::DirectResourceContext::createMesh(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  dispatch_assert_queue_V2(*(a1 + 24));
  v6 = *(a1 + 32) != 2;
  v9 = *(a1 + 64);
  v10 = v6;
  re::DirectMesh::create(a2, &v9, a3);
  v7 = *a3;
  if (*a3)
  {
    v9 = *a3;
    v8 = v7 + 8;
    re::DirectResourceContext::addResource(a1, &v9);
  }
}

void re::DirectResourceContext::addResource(uint64_t a1, uint64_t *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(*(a1 + 24));
  re::DirectResource::setDelegate(*a2, a1 + 16);
  v4 = *a2;
  std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>>>::__emplace_unique_impl<unsigned char const(&)[16],re::SharedPtr<re::DirectResource> const&>();
}

void re::DirectResourceContext::createTexture(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  dispatch_assert_queue_V2(*(a1 + 24));
  v6 = *(a1 + 32) != 2;
  v9 = *(a1 + 64);
  v10 = v6;
  re::DirectTexture::create(a2, &v9, a3);
  v7 = *a3;
  if (*a3)
  {
    v9 = *a3;
    v8 = (v7 + 8);
    re::DirectResourceContext::addResource(a1, &v9);
  }
}

void re::DirectResourceContext::createBuffer(uint64_t a1@<X0>, void *a2@<X1>, char **a3@<X8>)
{
  dispatch_assert_queue_V2(*(a1 + 24));
  v6 = *(a1 + 32) != 2;
  v9 = *(a1 + 64);
  v10 = v6;
  re::DirectBuffer::create(a2, &v9, a3);
  v7 = *a3;
  if (*a3)
  {
    v9 = *a3;
    v8 = v7 + 8;
    re::DirectResourceContext::addResource(a1, &v9);
  }
}

uint64_t re::DirectResourceContext::createMaterial@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  dispatch_assert_queue_V2(*(a1 + 24));
  v6 = *(a1 + 32) != 2;
  v10 = *(a1 + 64);
  v11 = v6;
  result = re::DirectMaterialParameters::create(a2, a3);
  v8 = *a3;
  if (*a3)
  {
    v10 = *a3;
    v9 = (v8 + 8);
    re::DirectResourceContext::addResource(a1, &v10);
  }

  return result;
}

void re::DirectResourceContext::reusePayload(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  os_unfair_lock_lock((a1 + 208));
  re::DirectResourcesReusePool::take(*(a1 + 240), a2, a3, a4, a5, a6, a7);

  os_unfair_lock_unlock((a1 + 208));
}

void re::DirectResourceContext::addPayload(uint64_t a1, void *a2, uint64_t *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(*(a1 + 24));
  if (a2[4])
  {
    re::DirectResourceContext::addPayload();
  }

  (*(*a2 + 40))(a2);
  v6 = *(*a3 + 100);
  v7 = *(*a3 + 48);
  kdebug_trace();
  v8 = re::DirectResourceContext::ensureUncommitted(a1);
  re::DirectResourcesPendingCommit::addPayload(v8, *a3);
  std::pair<re::DirectResourceId const,re::SharedPtr<re::DirectMemoryResource>>::pair[abi:nn200100]<unsigned char const(&)[16],re::SharedPtr<re::DirectMemoryResource> const&,0>(v10, (*a3 + 16), a3);
  std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>>>::__emplace_unique_key_args<re::DirectResourceId,std::pair<re::DirectResourceId const,re::SharedPtr<re::DirectMesh>>>((a1 + 296), v10);
  if (v11)
  {
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t re::DirectResourceContext::addExistingResource(uint64_t a1, uint64_t *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(*(a1 + 24));
  if (!*(*a2 + 40))
  {
    uuid_copy(dst, (*a2 + 16));
    if (!std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>>>::find<re::DirectResourceId>((a1 + 256), dst) && !*(*a2 + 32) && (*(**a2 + 40))(*a2) == 2)
    {
      if (*(a1 + 32))
      {
        goto LABEL_9;
      }

      v8 = 1;
      v4 = *a2;
      if (*a2)
      {
        v5 = (v4 + 8);
      }

      *dst = &unk_285BC1A18;
      *&dst[8] = &v8;
      v10 = v4;
      v11 = dst;
      (*(*v4 + 64))(v4, dst);
      std::__function::__value_func<void ()(re::DirectResourceSlot)>::~__value_func[abi:nn200100](dst);
      if (v8 == 1)
      {
LABEL_9:
        re::DirectResourceContext::addResource(a1, a2);
      }
    }
  }

  result = 0;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t re::DirectResourceContext::removeResource(re::DirectResourceContext *this, re::DirectResource *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(*(this + 3));
  re::DirectResource::setDelegate(a2, 0);
  uuid_copy(dst, a2 + 16);
  std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>>>::__erase_unique<re::DirectResourceId>(this + 32, dst);
  if (!*(a2 + 4))
  {
    v4 = re::DirectResourceContext::ensureUncommitted(this);
    v5 = (*(*a2 + 40))(a2);
    uuid_copy(dst, a2 + 16);
    re::DirectResourcesPendingCommit::destroyResource(v4, v5, *dst, *&dst[8]);
    *dst = &unk_285BC1AA8;
    *&dst[8] = this;
    v13 = a2;
    v14 = dst;
    (*(*a2 + 64))(a2, dst);
    std::__function::__value_func<void ()(re::DirectResourceSlot)>::~__value_func[abi:nn200100](dst);
    os_unfair_lock_lock(this + 52);
    v6 = *(this + 30);
    uuid_copy(v11, a2 + 16);
    re::DirectResourcesReusePool::purgePayloads(v6, *v11, *&v11[8], dst);
    v7 = *dst;
    v8 = *&dst[8];
    while (v7 != v8)
    {
      uuid_copy(v11, (*(v7 + 48) + 16));
      re::DirectResourceContext::removePayload(this, v11);
      v7 += 56;
    }

    *v11 = dst;
    std::vector<re::DirectResourcesReuseList::Entry>::__destroy_vector::operator()[abi:nn200100](v11);
    os_unfair_lock_unlock(this + 52);
  }

  result = *(this + 11);
  if (result)
  {
    result = (*(result + 16))(result, this, 2, a2);
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void re::DirectResourceContext::removePayload(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(*(a1 + 24));
  v4 = std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>>>::find<re::DirectResourceId>((a1 + 296), a2);
  if (v4)
  {
    v5 = v4;
    v6 = *(v4 + 4);
    v7 = *(v6 + 100);
    v8 = *(v6 + 96);
    v9 = *(v6 + 48);
    kdebug_trace();
    v10 = re::DirectResourceContext::ensureUncommitted(a1);
    re::DirectResourcesPendingCommit::removePayload(v10, *a2, *(a2 + 8));
    v11 = *MEMORY[0x277D85DE8];

    std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>>>::erase((a1 + 296), v5);
  }

  else
  {
    v12 = re::directResourceLog(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      re::toString(a2, v14);
      *buf = 136315138;
      v16 = v14;
      _os_log_impl(&dword_248D48000, v12, OS_LOG_TYPE_DEFAULT, "Unable to find payload %s for removal", buf, 0xCu);
    }

    v13 = *MEMORY[0x277D85DE8];
  }
}

uint64_t re::DirectResourceContext::tryWillChange(uint64_t a1, re::DirectResource *a2, uint64_t a3, uint64_t a4, int a5, void *a6)
{
  dispatch_assert_queue_V2(*(a1 + 24));
  if (*(a2 + 4))
  {
    return 0;
  }

  result = re::DirectResourceContext::recreatePayloadIfNecessary(a1, a2, a3, a4, a5, a6, 1);
  if (result)
  {
    result = 1;
    if (a6)
    {
      if (*(a1 + 168))
      {
        if (*(a1 + 76) == 1)
        {
          re::DirectResourcesPendingCommit::addCommandBuffer(*(a1 + 168), a6);
          return 1;
        }
      }
    }
  }

  return result;
}

void re::DirectResourceContext::willChange(uint64_t a1, re::DirectResource *a2, uint64_t a3, uint64_t a4, int a5, void *a6)
{
  dispatch_assert_queue_V2(*(a1 + 24));
  if (!*(a2 + 4))
  {
    re::DirectResourceContext::recreatePayloadIfNecessary(a1, a2, a3, a4, a5, a6, 0);
    if (a6)
    {
      v12 = *(a1 + 168);
      if (v12)
      {
        if (*(a1 + 76) == 1)
        {

          re::DirectResourcesPendingCommit::addCommandBuffer(v12, a6);
        }
      }
    }
  }
}

uint64_t re::DirectResourceContext::didChange(uint64_t a1, re::DirectResource *a2, int a3, uint64_t a4)
{
  dispatch_assert_queue_V2(*(a1 + 24));
  if (!*(a2 + 4))
  {
    if ((*(*a2 + 40))(a2) == 1 && a3 == 0 && a4 == 0)
    {
      v14 = re::DirectResourceContext::ensureUncommitted(a1);
      *(re::DirectResourcesPendingCommit::ensureUpdate(v14, a2) + 16) = *(a2 + 16);
    }

    else if ((*(*a2 + 40))(a2) == 3 && a3 == 0 && a4 == 0)
    {
      v12 = re::DirectResourceContext::ensureUncommitted(a1);
      v13 = re::DirectResourcesPendingCommit::ensureUpdate(v12, a2);
      *(v13 + 24) = *(a2 + 8);
      *(v13 + 32) = 1;
    }
  }

  result = (*(*a2 + 40))(a2);
  if (result == 1 && a3 == 0 && a4 == 0)
  {
    result = *(a1 + 88);
    if (result)
    {
      v18 = *(result + 16);

      return v18();
    }
  }

  return result;
}

uint64_t re::DirectResourceContext::payloadCanReplace(uint64_t a1, uint64_t a2)
{
  dispatch_assert_queue_V2(*(a1 + 24));
  if (*(a1 + 32))
  {
    return 1;
  }

  result = re::isTransferrable(*(a2 + 32));
  if (result)
  {
    return 1;
  }

  return result;
}

void re::DirectResourceContext::payloadWillReplace(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(*(a1 + 24));
  if (*(a1 + 40))
  {
    v8 = (*(*a2 + 48))(a2, a3, a4);
    if (v8)
    {
      v9 = v8;
      v10 = (v8 + 8);
      v11 = *(a2 + 32);
      if ((*(v9 + 32) - 1) <= 6 && v11 == 0)
      {
        re::DirectResourceContext::ensureUncommittedFreeList(a1);
        v14 = v13;
        uuid_copy(dst, (a2 + 16));
        v15 = (*(*a2 + 40))(a2);
        v18 = v9;
        v16 = (v9 + 8);
        re::DirectResourcesReuseList::add(v14, *dst, *&dst[8], v15, a3, a4, &v18);
        if (v18)
        {

          v18 = 0;
        }
      }

      else if (!v11)
      {
        uuid_copy(dst, (v9 + 16));
        re::DirectResourceContext::removePayload(a1, dst);
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t re::DirectResourceContext::payloadDidReplace(uint64_t a1, re::DirectResource *a2, uint64_t a3, uint64_t a4)
{
  dispatch_assert_queue_V2(*(a1 + 24));
  if (!*(a2 + 4))
  {
    v9 = (*(*a2 + 48))(a2, a3, a4);
    if (v9)
    {
      v10 = v9;
      v11 = re::DirectResourceContext::ensureUncommitted(a1);
      v12 = re::DirectResourcesPendingCommit::ensureUpdate(v11, a2);
      if (v12)
      {
        v13 = v12;
        v16 = v10;
        v14 = (v10 + 8);
        (*(*v13 + 48))(v13, a3, a4, &v16);
        if (v16)
        {

          v16 = 0;
        }
      }

      if (re::isPrivateToThisProcess(*(v10 + 32)))
      {
        v15 = re::DirectResourceContext::ensureUncommitted(a1);
        re::DirectResourcesPendingCommit::updatePayload(v15, v10);
      }
    }
  }

  result = *(a1 + 88);
  if (result)
  {
    return (*(result + 16))(result, a1, 1, a2);
  }

  return result;
}

void re::DirectResourceContext::destroyResource(re::DirectResourceContext *this, re::DirectResource *a2)
{
  if (dispatch_get_specific(this))
  {
    re::DirectResourceContext::removeResource(this, a2);

    re::DirectResource::dispose(a2);
  }

  else
  {
    if (this)
    {
      v4 = this + 8;
    }

    else
    {
      v4 = 0;
    }

    objc_initWeak(&location, v4);
    v5 = *(this + 3);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 1174405120;
    block[2] = ___ZN2re21DirectResourceContext15destroyResourceEPNS_14DirectResourceE_block_invoke;
    block[3] = &__block_descriptor_tmp_11;
    v7[0] = 0;
    objc_copyWeak(v7, &location);
    v7[1] = a2;
    dispatch_async(v5, block);
    objc_destroyWeak(v7);
    v7[0] = 0;
    objc_destroyWeak(&location);
  }
}

void ___ZN2re21DirectResourceContext15destroyResourceEPNS_14DirectResourceE_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    re::DirectResourceContext::removeResource((WeakRetained - 8), *(a1 + 40));
  }

  *(*(a1 + 40) + 40) = 0;
  v4 = *(a1 + 40);

  re::DirectResource::dispose(v4);
}

void ___ZN2re21DirectResourceContext25destroyPayloads_anyThreadENSt3__16vectorINS_16DirectResourceIdENS1_9allocatorIS3_EEEE_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained - 8;
  }

  else
  {
    v3 = 0;
  }

  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    while (v5 != v6)
    {
      re::DirectResourceContext::removePayload(v3, v5);
      v5 += 16;
    }
  }
}

void *__copy_helper_block_8_32c50_ZTSN2re10ArcWeakPtrINS_21DirectResourceContextEEE40c63_ZTSNSt3__16vectorIN2re16DirectResourceIdENS_9allocatorIS2_EEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  v3 = a1 + 32;
  objc_copyWeak((a1 + 32), (a2 + 32));

  return std::vector<re::DirectResourceId>::vector[abi:nn200100]((v3 + 8), (a2 + 40));
}

void __destroy_helper_block_8_32c50_ZTSN2re10ArcWeakPtrINS_21DirectResourceContextEEE40c63_ZTSNSt3__16vectorIN2re16DirectResourceIdENS_9allocatorIS2_EEEE(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }

  objc_destroyWeak((a1 + 32));
  *(a1 + 32) = 0;
}

void *re::DirectResourceContext::setObserver(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 88);
  if (v4)
  {
    _Block_release(v4);
  }

  result = _Block_copy(aBlock);
  *(a1 + 88) = result;
  return result;
}

void *std::function<void ()(re::DirectResourceContext *,unsigned long long)>::operator=(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(re::DirectResourceContext *,unsigned long long)>::__value_func[abi:nn200100](v5, a2);
  std::__function::__value_func<void ()(re::DirectResourceContext *,unsigned long long)>::swap[abi:nn200100](v5, a1);
  std::__function::__value_func<void ()(re::DirectResourceContext *,unsigned long long)>::~__value_func[abi:nn200100](v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

void *std::function<void ()(re::DirectResourceContext *,re::DirectResourceCommands *)>::operator=(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(re::DirectResourceContext *,re::DirectResourceCommands *)>::__value_func[abi:nn200100](v5, a2);
  std::__function::__value_func<void ()(re::DirectResourceContext *,re::DirectResourceCommands *)>::swap[abi:nn200100](v5, a1);
  std::__function::__value_func<void ()(re::DirectResourceContext *,re::DirectResourceCommands *)>::~__value_func[abi:nn200100](v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

void re::DirectResourceContext::commit(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 18);
  v2 = *&this[42]._os_unfair_lock_opaque;
  if (v2)
  {
    v3 = 32;
    if (!*(v2 + 16))
    {
      v3 = 24;
    }

    v4 = *(*(v2 + v3) + 16);
    kdebug_trace();
    v5 = *&this[42]._os_unfair_lock_opaque;
    *&this[42]._os_unfair_lock_opaque = 0;
    re::DirectResourcesPendingCommit::scheduled(v5);
    v6 = *&this[48]._os_unfair_lock_opaque;
    v7 = *&this[50]._os_unfair_lock_opaque;
    if (v6 >= v7)
    {
      v9 = *&this[46]._os_unfair_lock_opaque;
      v10 = v6 - v9;
      v11 = v10 + 1;
      if ((v10 + 1) >> 61)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v12 = v7 - v9;
      if (v12 >> 2 > v11)
      {
        v11 = v12 >> 2;
      }

      v13 = v12 >= 0x7FFFFFFFFFFFFFF8;
      v14 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v13)
      {
        v14 = v11;
      }

      v25[4] = this + 46;
      if (v14)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<re::SharedPtr<re::DirectBuffer>>>(&this[46], v14);
      }

      *(8 * v10) = v5;
      v8 = 8 * v10 + 8;
      std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<re::SharedPtr<re::DirectBuffer>>,re::SharedPtr<re::DirectBuffer>*>(&this[46], v9, v6, 0);
      v15 = *&this[46]._os_unfair_lock_opaque;
      *&this[46]._os_unfair_lock_opaque = 0;
      *&this[48]._os_unfair_lock_opaque = v8;
      v16 = *&this[50]._os_unfair_lock_opaque;
      *&this[50]._os_unfair_lock_opaque = 0;
      v25[2] = v15;
      v25[3] = v16;
      v25[0] = v15;
      v25[1] = v15;
      std::__split_buffer<re::SharedPtr<re::DirectBuffer>>::~__split_buffer(v25);
    }

    else
    {
      *v6 = v5;
      v8 = (v6 + 1);
    }

    *&this[48]._os_unfair_lock_opaque = v8;
  }

  v17 = *&this[44]._os_unfair_lock_opaque;
  if (v17)
  {
    v18 = v17[2];
    v19 = (v17[5] - v17[4]) >> 3;
    kdebug_trace();
    re::DirectResourceContext::freeListAppend(this, &this[44]._os_unfair_lock_opaque);
    v20 = *&this[44]._os_unfair_lock_opaque;
    if (v20)
    {

      *&this[44]._os_unfair_lock_opaque = 0;
    }
  }

  re::DirectResourceContext::sendIfReady(this);
  v21 = *&this[10]._os_unfair_lock_opaque;
  if (v21 == 2)
  {
    v24 = *&this[40]._os_unfair_lock_opaque;
    v23 = v24 - 2;
    if (v24 >= 2)
    {
      goto LABEL_23;
    }
  }

  else if (v21 == 1)
  {
    v22 = *&this[40]._os_unfair_lock_opaque;
    if (v22)
    {
      v23 = v22 - 1;
LABEL_23:
      re::DirectResourceContext::freeListReady(this, v23);
    }
  }

  os_unfair_lock_unlock(this + 18);
}

void re::DirectResourceContext::freeListAppend(uint64_t a1, void *a2)
{
  os_unfair_lock_lock((a1 + 208));
  v4 = *(a1 + 224);
  v5 = *(a1 + 232);
  if (v4 >= v5)
  {
    v7 = *(a1 + 216);
    v8 = v4 - v7;
    v9 = v8 + 1;
    if ((v8 + 1) >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v5 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    v15[4] = a1 + 216;
    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<re::SharedPtr<re::DirectBuffer>>>(a1 + 216, v12);
    }

    *(8 * v8) = *a2;
    v6 = 8 * v8 + 8;
    *a2 = 0;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<re::SharedPtr<re::DirectBuffer>>,re::SharedPtr<re::DirectBuffer>*>(a1 + 216, v7, v4, 0);
    v13 = *(a1 + 216);
    *(a1 + 216) = 0;
    *(a1 + 224) = v6;
    v14 = *(a1 + 232);
    *(a1 + 232) = 0;
    v15[2] = v13;
    v15[3] = v14;
    v15[0] = v13;
    v15[1] = v13;
    std::__split_buffer<re::SharedPtr<re::DirectBuffer>>::~__split_buffer(v15);
  }

  else
  {
    *v4 = *a2;
    *a2 = 0;
    v6 = (v4 + 1);
  }

  *(a1 + 224) = v6;
  os_unfair_lock_unlock((a1 + 208));
}

uint64_t re::DirectResourcesCommitQueue::DirectResourcesCommitQueue(uint64_t a1, uint64_t a2)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *v4 = &unk_285BC1918;
  v4[2] = *(a2 + 24);
  v4[3] = 0;
  v4[4] = a2;
  v5 = (a2 + 8);
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  dispatch_retain(*(a1 + 16));
  return a1;
}

void re::DirectResourcesCommitQueue::~DirectResourcesCommitQueue(dispatch_object_t *this)
{
  dispatch_release(this[2]);
  v3 = (this + 6);
  std::vector<re::SharedPtr<re::DirectBuffer>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = this[4];
  if (v2)
  {

    this[4] = 0;
  }

  ArcSharedObject::~ArcSharedObject(this);
}

{
  re::DirectResourcesCommitQueue::~DirectResourcesCommitQueue(this);

  JUMPOUT(0x24C1E9EB0);
}

void re::DirectResourcesCommitQueue::enumerate(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 40));
  v4 = *(a1 + 48);
  if (*(a1 + 56) != v4)
  {
    v5 = 0;
    do
    {
      if ((std::function<BOOL ()(re::DirectResourcesResolvedCommit const*)>::operator()(a2, *(v4 + 8 * v5)) & 1) == 0)
      {
        break;
      }

      ++v5;
      v4 = *(a1 + 48);
    }

    while (v5 < (*(a1 + 56) - v4) >> 3);
  }

  os_unfair_lock_unlock((a1 + 40));
}

uint64_t std::function<BOOL ()(re::DirectResourcesResolvedCommit const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v2 = *(a1 + 24);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return re::DirectResourcesCommitQueue::commitThrough(v4);
}

void re::DirectResourcesCommitQueue::commitThrough(uint64_t a1, unint64_t a2, uint64_t a3)
{
  dispatch_assert_queue_V2(*(a1 + 16));
  os_unfair_lock_lock((a1 + 40));
  v17 = *(a1 + 48);
  v6 = v17;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v18 = *(a1 + 64);
  *(a1 + 64) = 0;
  v7 = *(&v6 + 1);
  if (*(&v6 + 1) != v6)
  {
    v8 = 0;
    v9 = (*(&v6 + 1) - v6) >> 3;
    if (v9 <= 1)
    {
      v9 = 1;
    }

    v10 = v6;
    while (*(*(v6 + 8 * v8) + 24) <= a2)
    {
      ++v8;
      ++v10;
      if (v9 == v8)
      {
        goto LABEL_9;
      }
    }

    std::vector<re::SharedPtr<re::DirectResourcesResolvedCommit>>::__insert_with_size[abi:nn200100]<std::__wrap_iter<re::SharedPtr<re::DirectResourcesResolvedCommit>*>,std::__wrap_iter<re::SharedPtr<re::DirectResourcesResolvedCommit>*>>((a1 + 48), 0, v10, *(&v6 + 1), (*(&v6 + 1) - v10) >> 3);
    std::vector<re::SharedPtr<re::DirectResourcesResolvedCommit>>::erase(&v17, v10, v7);
  }

LABEL_9:
  os_unfair_lock_unlock((a1 + 40));
  if (v17 != *(&v17 + 1))
  {
    kdebug_trace();
    v12 = *(&v17 + 1);
    for (i = v17; i != v12; ++i)
    {
      v13 = *i;
      re::DirectResourcesResolvedCommit::apply(v13, *(a1 + 32));
    }

    if (*(a3 + 24))
    {
      v15 = *(&v17 + 1);
      for (j = v17; j != v15; ++j)
      {
        v16 = *j;
        std::function<void ()(re::DirectResourceEvent const&,unsigned long long)>::operator()(a3, v16 + 40, *(v16 + 24));
      }
    }

    kdebug_trace();
  }

  v19 = &v17;
  std::vector<re::SharedPtr<re::DirectBuffer>>::__destroy_vector::operator()[abi:nn200100](&v19);
}

uint64_t *std::vector<re::SharedPtr<re::DirectResourcesResolvedCommit>>::erase(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (a3 != a2)
  {
    v5 = *(a1 + 8);
    v6 = a2;
    if (a3 != v5)
    {
      do
      {
        v7 = *v6;
        *v6++ = *a3;
        *a3++ = v7;
      }

      while (a3 != v5);
      v5 = *(a1 + 8);
    }

    while (v5 != v6)
    {
      v9 = *--v5;
      v8 = v9;
      if (v9)
      {

        *v5 = 0;
      }
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

void std::function<void ()(re::DirectResourceEvent const&,unsigned long long)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3;
  v3 = *(a1 + 24);
  if (v3)
  {
    (*(*v3 + 48))(v3, a2, &v6);
  }

  else
  {
    v4 = std::__throw_bad_function_call[abi:nn200100]();
    re::DirectResourcesCommitQueue::enqueueCommit_threadSafe(v4, v5);
  }
}

void re::DirectResourcesCommitQueue::enqueueCommit_threadSafe(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 40));
  v4 = *(*a2 + 16);
  v5 = *(*a2 + 24);
  kdebug_trace();
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  if (v6 >= v7)
  {
    v9 = *(a1 + 48);
    v10 = v6 - v9;
    v11 = v10 + 1;
    if ((v10 + 1) >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v12 = v7 - v9;
    if (v12 >> 2 > v11)
    {
      v11 = v12 >> 2;
    }

    v13 = v12 >= 0x7FFFFFFFFFFFFFF8;
    v14 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v13)
    {
      v14 = v11;
    }

    v17[4] = a1 + 48;
    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<re::SharedPtr<re::DirectBuffer>>>(a1 + 48, v14);
    }

    *(8 * v10) = *a2;
    v8 = 8 * v10 + 8;
    *a2 = 0;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<re::SharedPtr<re::DirectBuffer>>,re::SharedPtr<re::DirectBuffer>*>(a1 + 48, v9, v6, 0);
    v15 = *(a1 + 48);
    *(a1 + 48) = 0;
    *(a1 + 56) = v8;
    v16 = *(a1 + 64);
    *(a1 + 64) = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    std::__split_buffer<re::SharedPtr<re::DirectBuffer>>::~__split_buffer(v17);
  }

  else
  {
    *v6 = *a2;
    *a2 = 0;
    v8 = (v6 + 1);
  }

  *(a1 + 56) = v8;
  os_unfair_lock_unlock((a1 + 40));
}

void re::DirectResourcesCommitQueue::takeCommits_threadSafe(re::DirectResourcesCommitQueue *this, os_unfair_lock_s *a2)
{
  std::lock[abi:nn200100]<re::UnfairLock,re::UnfairLock>(this + 10, a2 + 10);
  v4 = *&a2[12]._os_unfair_lock_opaque;
  v5 = *&a2[14]._os_unfair_lock_opaque;
  v6 = *&a2[12]._os_unfair_lock_opaque;
  if (v6 != v5)
  {
    std::vector<re::SharedPtr<re::DirectResourcesResolvedCommit>>::__insert_with_size[abi:nn200100]<std::__wrap_iter<re::SharedPtr<re::DirectResourcesResolvedCommit>*>,std::__wrap_iter<re::SharedPtr<re::DirectResourcesResolvedCommit>*>>(this + 6, *(this + 7), v6, v5, v5 - v6);
    *&a2[6]._os_unfair_lock_opaque = *(*(*&a2[14]._os_unfair_lock_opaque - 8) + 24);
    std::vector<re::SharedPtr<re::DirectBuffer>>::clear[abi:nn200100](&a2[12]._os_unfair_lock_opaque);
  }

  os_unfair_lock_unlock(this + 10);

  os_unfair_lock_unlock(a2 + 10);
}

void re::DirectResourcesCommitQueue::takeCommitsThrough_threadSafe(re::DirectResourcesCommitQueue *this, re::DirectResourcesCommitQueue *a2, unint64_t a3)
{
  std::lock[abi:nn200100]<re::UnfairLock,re::UnfairLock>(this + 10, a2 + 10);
  v6 = *(a2 + 6);
  v7 = *(a2 + 7) - v6;
  if (v7)
  {
    v8 = 0;
    v9 = v7 >> 3;
    if (v9 <= 1)
    {
      v9 = 1;
    }

    while (*(v6[v8] + 24) <= a3)
    {
      if (v9 == ++v8)
      {
        v8 = v9;
        goto LABEL_8;
      }
    }

    if (!v8)
    {
      goto LABEL_9;
    }

LABEL_8:
    std::vector<re::SharedPtr<re::DirectResourcesResolvedCommit>>::__insert_with_size[abi:nn200100]<std::__wrap_iter<re::SharedPtr<re::DirectResourcesResolvedCommit>*>,std::__wrap_iter<re::SharedPtr<re::DirectResourcesResolvedCommit>*>>(this + 6, *(this + 7), *(a2 + 6), &v6[v8], v8);
    *(a2 + 3) = *(*(*(a2 + 6) + 8 * v8 - 8) + 24);
    std::vector<re::SharedPtr<re::DirectResourcesResolvedCommit>>::erase(a2 + 48, v6, &v6[v8]);
  }

LABEL_9:
  os_unfair_lock_unlock(this + 10);

  os_unfair_lock_unlock(a2 + 10);
}

uint64_t re::DirectResourcesCommitQueue::availableCommitId_threadSafe(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 10);
  v2 = *&this[14]._os_unfair_lock_opaque;
  v3 = this;
  if (*&this[12]._os_unfair_lock_opaque != v2)
  {
    v3 = *(v2 - 8);
  }

  v4 = *&v3[6]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(this + 10);
  return v4;
}

uint64_t re::DirectResourceClientReceiver::DirectResourceClientReceiver(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *v8 = &unk_285BC1950;
  v8[2] = a2;
  v8[3] = a3;
  *(a1 + 32) = a4;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1065353216;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1065353216;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 1065353216;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 1065353216;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 1065353216;
  dispatch_retain(*(a1 + 24));
  return a1;
}

void re::DirectResourceClientReceiver::~DirectResourceClientReceiver(dispatch_object_t *this)
{
  dispatch_release(this[3]);
  std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>>>::~__hash_table((this + 25));
  std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>>>::~__hash_table((this + 20));
  std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>>>::~__hash_table((this + 15));
  std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>>>::~__hash_table((this + 10));
  std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>>>::~__hash_table((this + 5));
  v2 = this[4];
  if (v2)
  {

    this[4] = 0;
  }

  ArcSharedObject::~ArcSharedObject(this);
}

{
  re::DirectResourceClientReceiver::~DirectResourceClientReceiver(this);

  JUMPOUT(0x24C1E9EB0);
}

void re::DirectResourceClientReceiver::destroyAll(re::DirectResourceClientReceiver *this@<X0>, ArcSharedObject **a2@<X8>)
{
  dispatch_assert_queue_V2(*(this + 3));
  v7 = -1;
  re::make::shared::object<re::DirectResourcesResolvedCommit,unsigned long long const&,unsigned long long>(this + 2, &v7, a2);
  for (i = *(this + 7); i; i = *i)
  {
    std::vector<re::SharedPtr<re::DirectMesh>>::push_back[abi:nn200100](*a2 + 96, i + 4);
  }

  std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>>>::clear(this + 40);
  for (j = *(this + 12); j; j = *j)
  {
    std::vector<re::SharedPtr<re::DirectMesh>>::push_back[abi:nn200100](*a2 + 168, j + 4);
  }

  std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>>>::clear(this + 80);
  for (k = *(this + 17); k; k = *k)
  {
    std::vector<re::SharedPtr<re::DirectMesh>>::push_back[abi:nn200100](*a2 + 240, k + 4);
  }

  std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>>>::clear(this + 120);
}

uint64_t *std::vector<re::SharedPtr<re::DirectMesh>>::push_back[abi:nn200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<re::SharedPtr<re::DirectMesh>>::__emplace_back_slow_path<re::SharedPtr<re::DirectMesh> const&>(a1, a2);
  }

  else
  {
    v4 = *a2;
    *v3 = *a2;
    if (v4)
    {
      v5 = (v4 + 8);
    }

    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

void re::DirectResourceClientReceiver::resolvePayloadChanges(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  for (i = *(a2 + 16); i; i = *i)
  {
    v9 = *(i + 1);
    v5 = i[4];
    v10 = v5;
    if (v5)
    {
      v6 = (v5 + 8);
    }

    std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>>>::__emplace_unique_key_args<re::DirectResourceId,std::pair<re::DirectResourceId const,re::SharedPtr<re::DirectMesh>>>((a1 + 200), &v9);
    if (v10)
    {
    }
  }

  for (j = *(a2 + 96); j; j = *j)
  {
    std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>>>::__erase_unique<re::DirectResourceId>((a1 + 200), j + 16);
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t re::DirectResourceClientReceiver::receiveCommit(re::DirectResourceClientReceiver *this, void *a2, re::DirectResourcesCommitQueue *a3)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v7 = 0;
  if (re::xpc_get_value(a2, &v7))
  {
    v8[0] = &unk_285BC1AF0;
    v8[1] = this;
    v8[3] = v8;
    re::load(v7, v8, &v6);
  }

  if (v7)
  {
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t re::DirectResourceClientReceiver::validateAndResolve@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, ArcSharedObject **a3@<X8>)
{
  dispatch_assert_queue_V2(*(a1 + 24));
  v7 = (a1 + 16);
  v6 = *(a1 + 16);
  v8 = *(*a2 + 16);
  kdebug_trace();
  if (re::DirectResourceClientReceiver::isValid(a1, a2))
  {
    re::DirectResourceClientReceiver::resolvePayloadChanges(a1, *a2 + 520);
    re::make::shared::object<re::DirectResourcesResolvedCommit,unsigned long long const&,unsigned long long>((a1 + 16), (*a2 + 16), a3);
    re::DirectResourceEvent::operator=(*a3 + 5, (*a2 + 32));
    re::XPCObject::setValue(*a3 + 4, *(*a2 + 24));
    re::DirectResourceClientReceiver::resolve<re::DirectMesh,re::DirectMeshUpdate>(a1, (*a2 + 40), (a1 + 40), &v17);
    v9 = *a3;
    std::vector<re::SharedPtr<re::DirectMesh>>::__vdeallocate(*a3 + 6);
    *(v9 + 3) = v17;
    *(v9 + 8) = v18;
    v18 = 0;
    v17 = 0uLL;
    std::vector<std::pair<re::SharedPtr<re::DirectMesh>,re::SharedPtr<re::DirectMeshUpdate>>>::__vdeallocate(v9 + 9);
    *(v9 + 72) = v19;
    *(v9 + 11) = v20;
    v20 = 0;
    v19 = 0uLL;
    std::vector<re::SharedPtr<re::DirectMesh>>::__vdeallocate(v9 + 12);
    *(v9 + 6) = v21;
    *(v9 + 14) = v22;
    v22 = 0;
    v21 = 0uLL;
    v23 = &v21;
    std::vector<re::SharedPtr<re::DirectBuffer>>::__destroy_vector::operator()[abi:nn200100](&v23);
    v23 = &v19;
    std::vector<std::pair<re::SharedPtr<re::DirectBuffer>,re::SharedPtr<re::DirectBufferUpdate>>>::__destroy_vector::operator()[abi:nn200100](&v23);
    v23 = &v17;
    std::vector<re::SharedPtr<re::DirectBuffer>>::__destroy_vector::operator()[abi:nn200100](&v23);
    re::DirectResourceClientReceiver::resolve<re::DirectBuffer,re::DirectBufferUpdate>(a1, (*a2 + 280), (a1 + 120), &v17);
    v10 = *a3;
    std::vector<re::SharedPtr<re::DirectMesh>>::__vdeallocate(*a3 + 24);
    *(v10 + 12) = v17;
    *(v10 + 26) = v18;
    v18 = 0;
    v17 = 0uLL;
    std::vector<std::pair<re::SharedPtr<re::DirectMesh>,re::SharedPtr<re::DirectMeshUpdate>>>::__vdeallocate(v10 + 27);
    *(v10 + 216) = v19;
    *(v10 + 29) = v20;
    v20 = 0;
    v19 = 0uLL;
    std::vector<re::SharedPtr<re::DirectMesh>>::__vdeallocate(v10 + 30);
    *(v10 + 15) = v21;
    *(v10 + 32) = v22;
    v22 = 0;
    v21 = 0uLL;
    v23 = &v21;
    std::vector<re::SharedPtr<re::DirectBuffer>>::__destroy_vector::operator()[abi:nn200100](&v23);
    v23 = &v19;
    std::vector<std::pair<re::SharedPtr<re::DirectBuffer>,re::SharedPtr<re::DirectBufferUpdate>>>::__destroy_vector::operator()[abi:nn200100](&v23);
    v23 = &v17;
    std::vector<re::SharedPtr<re::DirectBuffer>>::__destroy_vector::operator()[abi:nn200100](&v23);
    re::DirectResourceClientReceiver::resolve<re::DirectTexture,re::DirectTextureUpdate>(a1, (*a2 + 160), (a1 + 80), &v17);
    v11 = *a3;
    std::vector<re::SharedPtr<re::DirectMesh>>::__vdeallocate(v11 + 15);
    *(v11 + 120) = v17;
    *(v11 + 17) = v18;
    v18 = 0;
    v17 = 0uLL;
    std::vector<std::pair<re::SharedPtr<re::DirectMesh>,re::SharedPtr<re::DirectMeshUpdate>>>::__vdeallocate(v11 + 18);
    *(v11 + 9) = v19;
    *(v11 + 20) = v20;
    v20 = 0;
    v19 = 0uLL;
    std::vector<re::SharedPtr<re::DirectMesh>>::__vdeallocate(v11 + 21);
    *(v11 + 168) = v21;
    *(v11 + 23) = v22;
    v22 = 0;
    v21 = 0uLL;
    v23 = &v21;
    std::vector<re::SharedPtr<re::DirectBuffer>>::__destroy_vector::operator()[abi:nn200100](&v23);
    v23 = &v19;
    std::vector<std::pair<re::SharedPtr<re::DirectBuffer>,re::SharedPtr<re::DirectBufferUpdate>>>::__destroy_vector::operator()[abi:nn200100](&v23);
    v23 = &v17;
    std::vector<re::SharedPtr<re::DirectBuffer>>::__destroy_vector::operator()[abi:nn200100](&v23);
  }

  else
  {
    v12 = *v7;
    v13 = *(*a2 + 16);
    v14 = kdebug_trace();
    v15 = re::directResourceLog(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      re::DirectResourceClientReceiver::validateAndResolve(v7, v15);
    }

    *a3 = 0;
  }

  return kdebug_trace();
}

uint64_t re::DirectResourceClientReceiver::isValid(void *a1, uint64_t a2)
{
  if (!re::DirectResourceClientReceiver::isValid<re::DirectMesh,re::DirectMeshUpdate>(a1, (*a2 + 40), a1 + 5) || !re::DirectResourceClientReceiver::isValid<re::DirectMesh,re::DirectMeshUpdate>(a1, (*a2 + 160), a1 + 10))
  {
    return 0;
  }

  v4 = (*a2 + 280);

  return re::DirectResourceClientReceiver::isValid<re::DirectMesh,re::DirectMeshUpdate>(a1, v4, a1 + 15);
}

void re::DirectResourceClientReceiver::resolve<re::DirectMesh,re::DirectMeshUpdate>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  *(a4 + 64) = 0;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  *(a4 + 48) = 0u;
  std::vector<re::SharedPtr<re::DirectMesh>>::reserve(a4, a2[3]);
  std::vector<std::pair<re::SharedPtr<re::DirectMesh>,re::SharedPtr<re::DirectMeshUpdate>>>::reserve((a4 + 24), a2[8]);
  std::vector<re::SharedPtr<re::DirectMesh>>::reserve((a4 + 48), a2[13]);
  for (i = a2[2]; i; i = *i)
  {
    v9 = i[4];
    *(v9 + 32) = *(a1 + 16);
    re::DirectMesh::attachToDevice(v9, *(a1 + 32));
    v19 = *(i + 1);
    v10 = i[4];
    v20 = v10;
    if (v10)
    {
      v11 = (v10 + 8);
    }

    std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>>>::__emplace_unique_key_args<re::DirectResourceId,std::pair<re::DirectResourceId const,re::SharedPtr<re::DirectMesh>>>(a3, &v19);
    if (v20)
    {
    }

    std::vector<re::SharedPtr<re::DirectMesh>>::push_back[abi:nn200100](a4, i + 4);
  }

  for (j = a2[7]; j; j = *j)
  {
    v13 = std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>>>::find<re::DirectResourceId>(a3, j + 16);
    if (v13)
    {
      v14 = v13;
      (*(*j[4] + 80))(j[4], *(v13 + 4), *(a1 + 32));
      std::pair<re::SharedPtr<re::DirectMesh>,re::SharedPtr<re::DirectMeshUpdate>>::pair[abi:nn200100]<re::SharedPtr<re::DirectMesh>&,re::SharedPtr<re::DirectMeshUpdate> const&,0>(&v19, v14 + 4, j + 4);
      std::vector<std::pair<re::SharedPtr<re::DirectMesh>,re::SharedPtr<re::DirectMeshUpdate>>>::push_back[abi:nn200100]((a4 + 24), &v19);
      if (*(&v19 + 1))
      {

        *(&v19 + 1) = 0;
      }

      if (v19)
      {
      }
    }
  }

  for (k = a2[12]; k; k = *k)
  {
    v16 = std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>>>::find<re::DirectResourceId>(a3, k + 16);
    if (v16)
    {
      v17 = v16;
      std::vector<re::SharedPtr<re::DirectMesh>>::push_back[abi:nn200100](a4 + 48, v16 + 4);
      std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>>>::erase(a3, v17);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void re::DirectResourceClientReceiver::resolve<re::DirectBuffer,re::DirectBufferUpdate>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  *(a4 + 64) = 0;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  *(a4 + 48) = 0u;
  std::vector<re::SharedPtr<re::DirectMesh>>::reserve(a4, a2[3]);
  std::vector<std::pair<re::SharedPtr<re::DirectMesh>,re::SharedPtr<re::DirectMeshUpdate>>>::reserve((a4 + 24), a2[8]);
  std::vector<re::SharedPtr<re::DirectMesh>>::reserve((a4 + 48), a2[13]);
  for (i = a2[2]; i; i = *i)
  {
    v9 = i[4];
    *(v9 + 32) = *(a1 + 16);
    re::DirectBuffer::attachToDevice(v9, *(a1 + 32));
    v19 = *(i + 1);
    v10 = i[4];
    v20 = v10;
    if (v10)
    {
      v11 = (v10 + 8);
    }

    std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>>>::__emplace_unique_key_args<re::DirectResourceId,std::pair<re::DirectResourceId const,re::SharedPtr<re::DirectMesh>>>(a3, &v19);
    if (v20)
    {
    }

    std::vector<re::SharedPtr<re::DirectMesh>>::push_back[abi:nn200100](a4, i + 4);
  }

  for (j = a2[7]; j; j = *j)
  {
    v13 = std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>>>::find<re::DirectResourceId>(a3, j + 16);
    if (v13)
    {
      v14 = v13;
      (*(*j[4] + 80))(j[4], *(v13 + 4), *(a1 + 32));
      std::pair<re::SharedPtr<re::DirectMesh>,re::SharedPtr<re::DirectMeshUpdate>>::pair[abi:nn200100]<re::SharedPtr<re::DirectMesh>&,re::SharedPtr<re::DirectMeshUpdate> const&,0>(&v19, v14 + 4, j + 4);
      std::vector<std::pair<re::SharedPtr<re::DirectMesh>,re::SharedPtr<re::DirectMeshUpdate>>>::push_back[abi:nn200100]((a4 + 24), &v19);
      if (*(&v19 + 1))
      {

        *(&v19 + 1) = 0;
      }

      if (v19)
      {
      }
    }
  }

  for (k = a2[12]; k; k = *k)
  {
    v16 = std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>>>::find<re::DirectResourceId>(a3, k + 16);
    if (v16)
    {
      v17 = v16;
      std::vector<re::SharedPtr<re::DirectMesh>>::push_back[abi:nn200100](a4 + 48, v16 + 4);
      std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>>>::erase(a3, v17);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void re::DirectResourceClientReceiver::resolve<re::DirectTexture,re::DirectTextureUpdate>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  *(a4 + 64) = 0;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  *(a4 + 48) = 0u;
  std::vector<re::SharedPtr<re::DirectMesh>>::reserve(a4, a2[3]);
  std::vector<std::pair<re::SharedPtr<re::DirectMesh>,re::SharedPtr<re::DirectMeshUpdate>>>::reserve((a4 + 24), a2[8]);
  std::vector<re::SharedPtr<re::DirectMesh>>::reserve((a4 + 48), a2[13]);
  for (i = a2[2]; i; i = *i)
  {
    v9 = i[4];
    *(v9 + 32) = *(a1 + 16);
    re::DirectTexture::attachToDevice(v9, *(a1 + 32));
    v19 = *(i + 1);
    v10 = i[4];
    v20 = v10;
    if (v10)
    {
      v11 = (v10 + 8);
    }

    std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>>>::__emplace_unique_key_args<re::DirectResourceId,std::pair<re::DirectResourceId const,re::SharedPtr<re::DirectMesh>>>(a3, &v19);
    if (v20)
    {
    }

    std::vector<re::SharedPtr<re::DirectMesh>>::push_back[abi:nn200100](a4, i + 4);
  }

  for (j = a2[7]; j; j = *j)
  {
    v13 = std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>>>::find<re::DirectResourceId>(a3, j + 16);
    if (v13)
    {
      v14 = v13;
      (*(*j[4] + 80))(j[4], *(v13 + 4), *(a1 + 32));
      std::pair<re::SharedPtr<re::DirectMesh>,re::SharedPtr<re::DirectMeshUpdate>>::pair[abi:nn200100]<re::SharedPtr<re::DirectMesh>&,re::SharedPtr<re::DirectMeshUpdate> const&,0>(&v19, v14 + 4, j + 4);
      std::vector<std::pair<re::SharedPtr<re::DirectMesh>,re::SharedPtr<re::DirectMeshUpdate>>>::push_back[abi:nn200100]((a4 + 24), &v19);
      if (*(&v19 + 1))
      {

        *(&v19 + 1) = 0;
      }

      if (v19)
      {
      }
    }
  }

  for (k = a2[12]; k; k = *k)
  {
    v16 = std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>>>::find<re::DirectResourceId>(a3, k + 16);
    if (v16)
    {
      v17 = v16;
      std::vector<re::SharedPtr<re::DirectMesh>>::push_back[abi:nn200100](a4 + 48, v16 + 4);
      std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>>>::erase(a3, v17);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t re::DirectResourceClientReceiver::isValid<re::DirectMesh,re::DirectMeshUpdate>(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(*(a1 + 24));
  v5 = a2[2];
  if (v5)
  {
    while (1)
    {
      *uu2 = *(v5 + 1);
      v6 = v5[4];
      v26 = v6;
      if (v6)
      {
        v7 = (v6 + 8);
      }

      v8 = std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>>>::find<re::DirectResourceId>(a3, uu2);
      if (v8)
      {
        break;
      }

      if (v26)
      {
      }

      v5 = *v5;
      if (!v5)
      {
        goto LABEL_8;
      }
    }

    v19 = re::directResourceLog(v8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      re::DirectResourceClientReceiver::isValid<re::DirectMesh,re::DirectMeshUpdate>(uu2);
    }
  }

  else
  {
LABEL_8:
    v9 = a2[7];
    if (v9)
    {
      while (1)
      {
        *uu2 = *(v9 + 1);
        v10 = v9[4];
        v26 = v10;
        if (v10)
        {
          v11 = (v10 + 8);
        }

        v24 = 0;
        v12 = std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>>>::find<re::DirectResourceId>(a3, uu2);
        if (v12 || (v12 = std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>>>::find<re::DirectResourceId>(a2, uu2)) != 0)
        {
          re::SharedPtr<re::DirectBuffer>::reset(&v24, v12[4]);
        }

        if (!v24)
        {
          break;
        }

        v13 = (*(*v26 + 72))(v26);
        if ((v13 & 1) == 0)
        {
          v21 = re::directResourceLog(v13);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            re::DirectResourceClientReceiver::isValid<re::DirectMesh,re::DirectMeshUpdate>(uu2);
          }

          goto LABEL_40;
        }

        if (v24)
        {
        }

        if (v26)
        {
        }

        v9 = *v9;
        if (!v9)
        {
          goto LABEL_21;
        }
      }

      v20 = re::directResourceLog(v12);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        re::DirectResourceClientReceiver::isValid<re::DirectMesh,re::DirectMeshUpdate>(uu2);
      }
    }

    else
    {
LABEL_21:
      v14 = a2[12];
      if (!v14)
      {
LABEL_31:
        result = 1;
        goto LABEL_45;
      }

      while (1)
      {
        *uu2 = *(v14 + 1);
        v15 = v14[4];
        v26 = v15;
        if (v15)
        {
          v16 = (v15 + 8);
        }

        v24 = 0;
        v17 = std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>>>::find<re::DirectResourceId>(a3, uu2);
        if (v17 || (v17 = std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>>>::find<re::DirectResourceId>(a2, uu2)) != 0)
        {
          re::SharedPtr<re::DirectBuffer>::reset(&v24, v17[4]);
        }

        if (!v24)
        {
          break;
        }

        if (v26)
        {
        }

        v14 = *v14;
        if (!v14)
        {
          goto LABEL_31;
        }
      }

      v22 = re::directResourceLog(v17);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        re::DirectResourceClientReceiver::isValid<re::DirectMesh,re::DirectMeshUpdate>(uu2);
      }
    }

LABEL_40:
    if (v24)
    {
    }
  }

  if (v26)
  {
  }

  result = 0;
LABEL_45:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void std::vector<std::pair<re::SharedPtr<re::DirectBuffer>,re::SharedPtr<re::DirectBufferUpdate>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 2;
        std::allocator<std::pair<re::SharedPtr<re::DirectBuffer>,re::SharedPtr<re::DirectBufferUpdate>>>::destroy[abi:nn200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<std::pair<re::SharedPtr<re::DirectBuffer>,re::SharedPtr<re::DirectBufferUpdate>>>::destroy[abi:nn200100](uint64_t a1, void *a2)
{
  v3 = a2[1];
  if (v3)
  {

    a2[1] = 0;
  }

  if (*a2)
  {

    *a2 = 0;
  }
}

uint64_t std::pair<re::DirectResourceId const,re::SharedPtr<re::DirectMemoryResource>>::pair[abi:nn200100]<unsigned char const(&)[16],re::SharedPtr<re::DirectMemoryResource> const&,0>(uint64_t a1, const unsigned __int8 *a2, uint64_t *a3)
{
  uuid_copy(a1, a2);
  v5 = *a3;
  *(a1 + 16) = *a3;
  if (v5)
  {
    v6 = (v5 + 8);
  }

  return a1;
}

void std::vector<re::SharedPtr<re::DirectMesh>>::__vdeallocate(void **a1)
{
  if (*a1)
  {
    std::vector<re::SharedPtr<re::DirectBuffer>>::clear[abi:nn200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<std::pair<re::SharedPtr<re::DirectMesh>,re::SharedPtr<re::DirectMeshUpdate>>>::__vdeallocate(void *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 2;
        std::allocator<std::pair<re::SharedPtr<re::DirectBuffer>,re::SharedPtr<re::DirectBufferUpdate>>>::destroy[abi:nn200100](a1, v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if (v4)
      {
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

const unsigned __int8 *std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>>>::find<re::DirectResourceId>(void *a1, unsigned __int8 *uu2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v4 = (*(uu2 + 1) + (*uu2 << 6) + (*uu2 >> 2) - 0x61C8864680B583E9) ^ *uu2;
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.u32[0];
  if (v5.u32[0] > 1uLL)
  {
    v7 = (*(uu2 + 1) + (*uu2 << 6) + (*uu2 >> 2) - 0x61C8864680B583E9) ^ *uu2;
    if (v4 >= *&v2)
    {
      v7 = v4 % *&v2;
    }
  }

  else
  {
    v7 = v4 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (i = *v8; i; i = *i)
  {
    v10 = *(i + 1);
    if (v4 == v10)
    {
      if (!uuid_compare(i + 16, uu2))
      {
        return i;
      }
    }

    else
    {
      if (v6 > 1)
      {
        if (v10 >= *&v2)
        {
          v10 %= *&v2;
        }
      }

      else
      {
        v10 &= *&v2 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return i;
}

const unsigned __int8 *std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>>>::__emplace_unique_key_args<re::DirectResourceId,std::pair<re::DirectResourceId const,re::SharedPtr<re::DirectMesh>>>(void *a1, unsigned __int8 *uu2)
{
  v2 = (*(uu2 + 1) + (*uu2 << 6) + (*uu2 >> 2) - 0x61C8864680B583E9) ^ *uu2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.u32[0];
  if (v5.u32[0] > 1uLL)
  {
    v7 = (*(uu2 + 1) + (*uu2 << 6) + (*uu2 >> 2) - 0x61C8864680B583E9) ^ *uu2;
    if (v2 >= *&v3)
    {
      v7 = v2 % *&v3;
    }
  }

  else
  {
    v7 = v2 & (*&v3 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = *(v9 + 1);
    if (v10 == v2)
    {
      break;
    }

    if (v6 > 1)
    {
      if (v10 >= *&v3)
      {
        v10 %= *&v3;
      }
    }

    else
    {
      v10 &= *&v3 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (uuid_compare(v9 + 16, uu2))
  {
    goto LABEL_17;
  }

  return v9;
}

void std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,void *>>>::operator()[abi:nn200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[4];
    if (v3)
    {
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t *std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>>>::__erase_unique<re::DirectResourceId>(void *a1, unsigned __int8 *a2)
{
  result = std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>>>::find<re::DirectResourceId>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,void *>>>::operator()[abi:nn200100](&v6, v3);
  }

  return v2;
}

void *std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

void *std::__function::__func<re::DirectResourcesPendingCommit::addFence(re::UnownedPtr<re::DirectFence>)::$_0,std::allocator<re::DirectResourcesPendingCommit::addFence(re::UnownedPtr<re::DirectFence>)::$_0>,void ()(re::DirectFence*)>::~__func(void *a1)
{
  *a1 = &unk_285BC1988;
  v2 = a1[1];
  if (v2)
  {

    a1[1] = 0;
  }

  return a1;
}

void std::__function::__func<re::DirectResourcesPendingCommit::addFence(re::UnownedPtr<re::DirectFence>)::$_0,std::allocator<re::DirectResourcesPendingCommit::addFence(re::UnownedPtr<re::DirectFence>)::$_0>,void ()(re::DirectFence*)>::~__func(void *a1)
{
  *a1 = &unk_285BC1988;
  v2 = a1[1];
  if (v2)
  {

    a1[1] = 0;
  }

  JUMPOUT(0x24C1E9EB0);
}

void *std::__function::__func<re::DirectResourcesPendingCommit::addFence(re::UnownedPtr<re::DirectFence>)::$_0,std::allocator<re::DirectResourcesPendingCommit::addFence(re::UnownedPtr<re::DirectFence>)::$_0>,void ()(re::DirectFence*)>::__clone(void *result, void *a2)
{
  v2 = result[1];
  *a2 = &unk_285BC1988;
  a2[1] = v2;
  if (v2)
  {
    return (v2 + 8);
  }

  return result;
}

void std::__function::__func<re::DirectResourcesPendingCommit::addFence(re::UnownedPtr<re::DirectFence>)::$_0,std::allocator<re::DirectResourcesPendingCommit::addFence(re::UnownedPtr<re::DirectFence>)::$_0>,void ()(re::DirectFence*)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {

    *(a1 + 8) = 0;
  }
}

void std::__function::__func<re::DirectResourcesPendingCommit::addFence(re::UnownedPtr<re::DirectFence>)::$_0,std::allocator<re::DirectResourcesPendingCommit::addFence(re::UnownedPtr<re::DirectFence>)::$_0>,void ()(re::DirectFence*)>::destroy_deallocate(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
  }

  operator delete(__p);
}

void std::vector<re::DirectResourcesReuseList::Entry>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<re::DirectResourcesReuseList::Entry>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<re::DirectResourcesReuseList::Entry>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<re::DirectResourcesReuseList::Entry>::clear[abi:nn200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<re::DirectResourceId>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      v11 = 16 * a2;
      v12 = &v5[16 * a2];
      do
      {
        uuid_copy(v5, UUID_NULL);
        v5 += 16;
        v11 -= 16;
      }

      while (v11);
      v5 = v12;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = &v5[-*a1];
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = v6 >> 4;
    v9 = v4 - *a1;
    if (v9 >> 3 > v7)
    {
      v7 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<re::DestroyResource>>(a1, v10);
    }

    v13 = 16 * v8;
    v14 = 16 * v8 + 16 * a2;
    v15 = 16 * a2;
    v16 = (16 * v8);
    do
    {
      uuid_copy(v16, UUID_NULL);
      v16 += 16;
      v15 -= 16;
    }

    while (v15);
    v17 = *(a1 + 8) - *a1;
    v18 = v13 - v17;
    memcpy((v13 - v17), *a1, v17);
    v19 = *a1;
    *a1 = v18;
    *(a1 + 8) = v14;
    *(a1 + 16) = 0;
    if (v19)
    {

      operator delete(v19);
    }
  }
}

uint64_t std::__function::__func<re::DirectResourceContext::freeListWaitTimedOut(unsigned long long,unsigned long long)::$_0,std::allocator<re::DirectResourceContext::freeListWaitTimedOut(unsigned long long,unsigned long long)::$_0>,void ()(re::DirectFence *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285BC19D0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<re::DirectResourceContext::freeListWaitTimedOut(unsigned long long,unsigned long long)::$_0,std::allocator<re::DirectResourceContext::freeListWaitTimedOut(unsigned long long,unsigned long long)::$_0>,void ()(re::DirectFence *)>::operator()(re *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = re::directResourceLog(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    std::__function::__func<re::DirectResourceContext::freeListWaitTimedOut(unsigned long long,unsigned long long)::$_0,std::allocator<re::DirectResourceContext::freeListWaitTimedOut(unsigned long long,unsigned long long)::$_0>,void ()(re::DirectFence *)>::operator()(v3, v4);
  }

  ++**(a1 + 1);
}

uint64_t std::__function::__value_func<void ()(re::DirectResourceContext *,re::DirectResourceCommands *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(re::DirectResourceContext *,unsigned long long)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>>>::__deallocate_node(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      objc_destroyWeak(v2 + 4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void *std::__function::__func<re::DirectResourceContext::addExistingResource(re::SharedPtr<re::DirectResource>)::$_0,std::allocator<re::DirectResourceContext::addExistingResource(re::SharedPtr<re::DirectResource>)::$_0>,void ()(re::DirectResourceSlot)>::~__func(void *a1)
{
  *a1 = &unk_285BC1A18;
  v2 = a1[2];
  if (v2)
  {

    a1[2] = 0;
  }

  return a1;
}

void std::__function::__func<re::DirectResourceContext::addExistingResource(re::SharedPtr<re::DirectResource>)::$_0,std::allocator<re::DirectResourceContext::addExistingResource(re::SharedPtr<re::DirectResource>)::$_0>,void ()(re::DirectResourceSlot)>::~__func(void *a1)
{
  *a1 = &unk_285BC1A18;
  v2 = a1[2];
  if (v2)
  {

    a1[2] = 0;
  }

  JUMPOUT(0x24C1E9EB0);
}

void *std::__function::__func<re::DirectResourceContext::addExistingResource(re::SharedPtr<re::DirectResource>)::$_0,std::allocator<re::DirectResourceContext::addExistingResource(re::SharedPtr<re::DirectResource>)::$_0>,void ()(re::DirectResourceSlot)>::__clone(void *result, void *a2)
{
  v2 = result[1];
  *a2 = &unk_285BC1A18;
  a2[1] = v2;
  v3 = result[2];
  a2[2] = v3;
  if (v3)
  {
    return (v3 + 8);
  }

  return result;
}

void std::__function::__func<re::DirectResourceContext::addExistingResource(re::SharedPtr<re::DirectResource>)::$_0,std::allocator<re::DirectResourceContext::addExistingResource(re::SharedPtr<re::DirectResource>)::$_0>,void ()(re::DirectResourceSlot)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {

    *(a1 + 16) = 0;
  }
}

void std::__function::__func<re::DirectResourceContext::addExistingResource(re::SharedPtr<re::DirectResource>)::$_0,std::allocator<re::DirectResourceContext::addExistingResource(re::SharedPtr<re::DirectResource>)::$_0>,void ()(re::DirectResourceSlot)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
  }

  operator delete(__p);
}

uint64_t std::__function::__func<re::DirectResourceContext::addExistingResource(re::SharedPtr<re::DirectResource>)::$_0,std::allocator<re::DirectResourceContext::addExistingResource(re::SharedPtr<re::DirectResource>)::$_0>,void ()(re::DirectResourceSlot)>::operator()(uint64_t a1, void *a2)
{
  result = (*(**(a1 + 16) + 48))(*(a1 + 16), *a2, a2[1]);
  if (result)
  {
    result = re::isTransferrable(*(result + 32));
    if ((result & 1) == 0)
    {
      **(a1 + 8) = 0;
    }
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(re::DirectResourceSlot)>::~__value_func[abi:nn200100](uint64_t a1)
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

const unsigned __int8 *std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>>>::__node_insert_unique(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = (a2 + 16);
  v5 = (*(a2 + 24) + (*(a2 + 16) << 6) + (*(a2 + 16) >> 2) - 0x61C8864680B583E9) ^ *(a2 + 16);
  *(v4 - 1) = v5;
  v6 = std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>>>::__node_insert_unique_prepare[abi:nn200100](a1, v5, v4);
  if (v6)
  {
    return v6;
  }

  std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>>>::__node_insert_unique_perform[abi:nn200100](a1, v2);
  return v2;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      objc_destroyWeak(v2 + 4);
    }

    operator delete(v2);
  }

  return a1;
}

const unsigned __int8 *std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>>>::__node_insert_unique_prepare[abi:nn200100](uint64_t a1, unint64_t a2, unsigned __int8 *uu2)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v7 = vcnt_s8(v4);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = v4 <= a2 ? a2 % v4 : a2;
    }

    else
    {
      v9 = (v4 - 1) & a2;
    }

    v10 = *(*a1 + 8 * v9);
    if (v10)
    {
      for (i = *v10; i; i = *i)
      {
        v12 = *(i + 1);
        if (v12 == a2)
        {
          if (!uuid_compare(i + 16, uu2))
          {
            return i;
          }
        }

        else
        {
          if (v8 > 1)
          {
            if (v12 >= v4)
            {
              v12 %= v4;
            }
          }

          else
          {
            v12 &= v4 - 1;
          }

          if (v12 != v9)
          {
            break;
          }
        }
      }
    }
  }

  v13 = (*(a1 + 24) + 1);
  v14 = *(a1 + 32);
  if (!v4 || (v14 * v4) < v13)
  {
    v15 = 1;
    if (v4 >= 3)
    {
      v15 = (v4 & (v4 - 1)) != 0;
    }

    v16 = v15 | (2 * v4);
    v17 = vcvtps_u32_f32(v13 / v14);
    if (v16 <= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMesh>>>>::__rehash<true>(a1, v18);
  }

  return 0;
}

uint64_t *std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>>>::__node_insert_unique_perform[abi:nn200100](uint64_t *result, void *a2)
{
  v2 = result[1];
  v3 = a2[1];
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v5 = *result;
  v6 = *(*result + 8 * v3);
  if (v6)
  {
    *a2 = *v6;
LABEL_13:
    *v6 = a2;
    goto LABEL_14;
  }

  *a2 = result[2];
  result[2] = a2;
  *(v5 + 8 * v3) = result + 2;
  if (*a2)
  {
    v7 = *(*a2 + 8);
    if (v4.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    v6 = (*result + 8 * v7);
    goto LABEL_13;
  }

LABEL_14:
  ++result[3];
  return result;
}

void *std::__function::__func<re::DirectResourceContext::addResource(re::SharedPtr<re::DirectResource> const&)::$_0,std::allocator<re::DirectResourceContext::addResource(re::SharedPtr<re::DirectResource> const&)::$_0>,void ()(re::DirectResourceSlot)>::~__func(void *a1)
{
  *a1 = &unk_285BC1A60;
  v2 = a1[2];
  if (v2)
  {

    a1[2] = 0;
  }

  return a1;
}

void std::__function::__func<re::DirectResourceContext::addResource(re::SharedPtr<re::DirectResource> const&)::$_0,std::allocator<re::DirectResourceContext::addResource(re::SharedPtr<re::DirectResource> const&)::$_0>,void ()(re::DirectResourceSlot)>::~__func(void *a1)
{
  *a1 = &unk_285BC1A60;
  v2 = a1[2];
  if (v2)
  {

    a1[2] = 0;
  }

  JUMPOUT(0x24C1E9EB0);
}

void *std::__function::__func<re::DirectResourceContext::addResource(re::SharedPtr<re::DirectResource> const&)::$_0,std::allocator<re::DirectResourceContext::addResource(re::SharedPtr<re::DirectResource> const&)::$_0>,void ()(re::DirectResourceSlot)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_285BC1A60;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    return (v2 + 8);
  }

  return result;
}

void std::__function::__func<re::DirectResourceContext::addResource(re::SharedPtr<re::DirectResource> const&)::$_0,std::allocator<re::DirectResourceContext::addResource(re::SharedPtr<re::DirectResource> const&)::$_0>,void ()(re::DirectResourceSlot)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {

    *(a1 + 16) = 0;
  }
}

void std::__function::__func<re::DirectResourceContext::addResource(re::SharedPtr<re::DirectResource> const&)::$_0,std::allocator<re::DirectResourceContext::addResource(re::SharedPtr<re::DirectResource> const&)::$_0>,void ()(re::DirectResourceSlot)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
  }

  operator delete(__p);
}

void std::__function::__func<re::DirectResourceContext::addResource(re::SharedPtr<re::DirectResource> const&)::$_0,std::allocator<re::DirectResourceContext::addResource(re::SharedPtr<re::DirectResource> const&)::$_0>,void ()(re::DirectResourceSlot)>::operator()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v4 = (*(**(a1 + 16) + 48))(*(a1 + 16), *a2, a2[1]);
  if (v4)
  {
    v5 = *(a1 + 16);
    v7 = v4;
    v6 = (v4 + 8);
    re::DirectResourceContext::addPayload(v3, v5, &v7);
    if (v7)
    {
    }
  }
}

unsigned __int8 *std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>>>::__erase_unique<re::DirectResourceId>(void *a1, unsigned __int8 *a2)
{
  result = std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>>>::find<re::DirectResourceId>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>>>::remove(a1, result, v4);
    std::unique_ptr<std::__hash_node<std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<re::DirectResourceId,re::ArcWeakPtr<re::DirectResource>>,void *>>>>::~unique_ptr[abi:nn200100](v4);
    return 1;
  }

  return result;
}

__n128 std::__function::__func<re::DirectResourceContext::removeResource(re::DirectResource *)::$_0,std::allocator<re::DirectResourceContext::removeResource(re::DirectResource *)::$_0>,void ()(re::DirectResourceSlot)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285BC1AA8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<re::DirectResourceContext::removeResource(re::DirectResource *)::$_0,std::allocator<re::DirectResourceContext::removeResource(re::DirectResource *)::$_0>,void ()(re::DirectResourceSlot)>::operator()(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v3 = (*(**(a1 + 16) + 48))(*(a1 + 16), *a2, a2[1]);
  if (v3)
  {
    uuid_copy(dst, (v3 + 16));
    re::DirectResourceContext::removePayload(v2, dst);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void *std::vector<re::DirectResourceId>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<re::DirectResourceId>::__vallocate[abi:nn200100](result, (v2 - *a2) >> 4);
  }

  return result;
}

void std::vector<re::DirectResourceId>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<re::DestroyResource>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t std::__function::__value_func<void ()(re::DirectResourceContext *,unsigned long long)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__value_func<void ()(re::DirectResourceContext *,unsigned long long)>::swap[abi:nn200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__value_func<void ()(re::DirectResourceContext *,re::DirectResourceCommands *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__value_func<void ()(re::DirectResourceContext *,re::DirectResourceCommands *)>::swap[abi:nn200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

char *std::vector<re::SharedPtr<re::DirectResourcesResolvedCommit>>::__insert_with_size[abi:nn200100]<std::__wrap_iter<re::SharedPtr<re::DirectResourcesResolvedCommit>*>,std::__wrap_iter<re::SharedPtr<re::DirectResourcesResolvedCommit>*>>(uint64_t *a1, char *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 3)
    {
      v17 = v10 - a2;
      v18 = (v10 - a2) >> 3;
      if (v18 >= a5)
      {
        v23 = &a2[8 * a5];
        v24 = (v10 - 8 * a5);
        v25 = a1[1];
        while (v24 < v10)
        {
          *v25++ = *v24;
          *v24++ = 0;
        }

        a1[1] = v25;
        if (v10 != v23)
        {
          v26 = (v10 - 8);
          v27 = &v23[-v10];
          v28 = (v10 - 8 - 8 * a5);
          do
          {
            v29 = *v26;
            *v26-- = *v28;
            *v28-- = v29;
            v27 += 8;
          }

          while (v27);
        }

        v30 = &a3[a5];
        v31 = a2;
        do
        {
          v32 = *v7++;
          re::SharedPtr<re::DirectBuffer>::reset(v31++, v32);
        }

        while (v7 != v30);
      }

      else
      {
        v20 = (a3 + v17);
        v21 = a1[1];
        if ((a3 + v17) == a4)
        {
          v22 = a1[1];
        }

        else
        {
          v39 = (a3 + v17);
          v22 = a1[1];
          do
          {
            v40 = *v39;
            *v22 = *v39;
            if (v40)
            {
              v41 = (v40 + 8);
            }

            ++v39;
            v22 += 8;
            ++v21;
          }

          while (v39 != a4);
        }

        a1[1] = v21;
        if (v18 < 1)
        {
          return a2;
        }

        else
        {
          v5 = a2;
          v42 = &a2[8 * a5];
          v43 = &v21[-a5];
          v44 = v21;
          while (v43 < v10)
          {
            *v44++ = *v43;
            *v43++ = 0;
          }

          a1[1] = v44;
          if (v22 != v42)
          {
            v45 = v21 - 1;
            v46 = v42 - v21;
            v47 = &v21[-a5 - 1];
            do
            {
              v48 = *v45;
              *v45-- = *v47;
              *v47-- = v48;
              v46 += 8;
            }

            while (v46);
          }

          if (v10 != a2)
          {
            v49 = a2;
            do
            {
              v50 = *v7++;
              re::SharedPtr<re::DirectBuffer>::reset(v49++, v50);
            }

            while (v7 != v20);
          }
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 + ((v10 - *a1) >> 3);
      if (v12 >> 61)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v13 = &a2[-v11];
      v14 = v9 - v11;
      if (v14 >> 2 > v12)
      {
        v12 = v14 >> 2;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        v15 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v12;
      }

      v16 = v13 >> 3;
      v52[4] = a1;
      if (v15)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<re::SharedPtr<re::DirectBuffer>>>(a1, v15);
      }

      v33 = (8 * v16);
      v52[0] = 0;
      v52[1] = 8 * v16;
      v52[3] = 0;
      v34 = 8 * a5;
      v35 = 8 * v16 + 8 * a5;
      do
      {
        v36 = *v7;
        *v33 = *v7;
        if (v36)
        {
          v37 = (v36 + 8);
        }

        ++v33;
        ++v7;
        v34 -= 8;
      }

      while (v34);
      v52[2] = v35;
      v5 = std::vector<re::SharedPtr<re::DirectResourcesResolvedCommit>>::__swap_out_circular_buffer(a1, v52, v5);
      std::__split_buffer<re::SharedPtr<re::DirectBuffer>>::~__split_buffer(v52);
    }
  }

  return v5;
}

uint64_t std::vector<re::SharedPtr<re::DirectResourcesResolvedCommit>>::__swap_out_circular_buffer(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *(a2 + 8);
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<re::SharedPtr<re::DirectBuffer>>,re::SharedPtr<re::DirectBuffer>*>(a1, a3, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = (v8 + v7 - a3);
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<re::SharedPtr<re::DirectBuffer>>,re::SharedPtr<re::DirectBuffer>*>(a1, v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

uint64_t std::__function::__value_func<void ()(re::DirectResourceEvent const&,unsigned long long)>::~__value_func[abi:nn200100](uint64_t a1)
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

BOOL std::lock[abi:nn200100]<re::UnfairLock,re::UnfairLock>(os_unfair_lock_s *a1, os_unfair_lock_s *a2)
{
  os_unfair_lock_lock(a1);
  for (result = os_unfair_lock_trylock(a2); !result; result = os_unfair_lock_trylock(a2))
  {
    os_unfair_lock_unlock(a1);
    sched_yield();
    os_unfair_lock_lock(a2);
    result = os_unfair_lock_trylock(a1);
    if (result)
    {
      break;
    }

    os_unfair_lock_unlock(a2);
    sched_yield();
    os_unfair_lock_lock(a1);
  }

  return result;
}

double re::make::shared::object<re::DirectResourcesResolvedCommit,unsigned long long const&,unsigned long long>@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, ArcSharedObject **a3@<X8>)
{
  v6 = operator new(0x108uLL);
  v7 = *a1;
  v8 = *a2;
  ArcSharedObject::ArcSharedObject(v6, 0);
  *v9 = &unk_285BC1688;
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = 0;
  re::DirectResourceEvent::DirectResourceEvent(v9 + 5);
  *(v6 + 32) = 0;
  result = 0.0;
  *(v6 + 14) = 0u;
  *(v6 + 15) = 0u;
  *(v6 + 12) = 0u;
  *(v6 + 13) = 0u;
  *(v6 + 10) = 0u;
  *(v6 + 11) = 0u;
  *(v6 + 8) = 0u;
  *(v6 + 9) = 0u;
  *(v6 + 6) = 0u;
  *(v6 + 7) = 0u;
  *(v6 + 4) = 0u;
  *(v6 + 5) = 0u;
  *(v6 + 3) = 0u;
  *a3 = v6;
  return result;
}

uint64_t *std::vector<re::SharedPtr<re::DirectMesh>>::__emplace_back_slow_path<re::SharedPtr<re::DirectMesh> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v16[4] = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<re::SharedPtr<re::DirectBuffer>>>(a1, v7);
  }

  v8 = (8 * v2);
  v9 = *a2;
  *v8 = *a2;
  if (v9)
  {
    v10 = (v9 + 8);
  }

  v11 = *(a1 + 8);
  v12 = (v8 + *a1 - v11);
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<re::SharedPtr<re::DirectBuffer>>,re::SharedPtr<re::DirectBuffer>*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  *(a1 + 8) = v8 + 1;
  v14 = *(a1 + 16);
  *(a1 + 16) = 0;
  v16[2] = v13;
  v16[3] = v14;
  v16[0] = v13;
  v16[1] = v13;
  std::__split_buffer<re::SharedPtr<re::DirectBuffer>>::~__split_buffer(v16);
  return v8 + 1;
}

void *std::vector<re::SharedPtr<re::DirectMesh>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:nn200100]<std::allocator<re::SharedPtr<re::DirectBuffer>>>(result, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void *std::vector<std::pair<re::SharedPtr<re::DirectMesh>,re::SharedPtr<re::DirectMeshUpdate>>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<re::SharedPtr<re::DirectMesh>,re::SharedPtr<re::DirectMeshUpdate>>>>(result, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void **std::vector<std::pair<re::SharedPtr<re::DirectMesh>,re::SharedPtr<re::DirectMeshUpdate>>>::push_back[abi:nn200100](void **result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v7 = *result;
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v5 - v7;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF0;
    v12 = 0xFFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    v15[4] = result;
    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<re::SharedPtr<re::DirectMesh>,re::SharedPtr<re::DirectMeshUpdate>>>>(result, v12);
    }

    *(16 * v8) = *a2;
    v6 = 16 * v8 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::pair<re::SharedPtr<re::DirectMesh>,re::SharedPtr<re::DirectMeshUpdate>>>,std::pair<re::SharedPtr<re::DirectMesh>,re::SharedPtr<re::DirectMeshUpdate>>*>(result, v7, v4, 0);
    v13 = *v3;
    *v3 = 0;
    v3[1] = v6;
    v14 = v3[2];
    v3[2] = 0;
    v15[2] = v13;
    v15[3] = v14;
    v15[0] = v13;
    v15[1] = v13;
    result = std::__split_buffer<std::pair<re::SharedPtr<re::DirectMesh>,re::SharedPtr<re::DirectMeshUpdate>>>::~__split_buffer(v15);
  }

  else
  {
    *v4 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    v6 = (v4 + 16);
  }

  v3[1] = v6;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<re::SharedPtr<re::DirectMesh>,re::SharedPtr<re::DirectMeshUpdate>>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::pair<re::SharedPtr<re::DirectMesh>,re::SharedPtr<re::DirectMeshUpdate>>>,std::pair<re::SharedPtr<re::DirectMesh>,re::SharedPtr<re::DirectMeshUpdate>>*>(uint64_t a1, void *a2, void *a3, _OWORD *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4++ = *v7;
      *v7 = 0;
      v7[1] = 0;
      v7 += 2;
    }

    while (v7 != a3);
    while (v5 != a3)
    {
      std::allocator<std::pair<re::SharedPtr<re::DirectBuffer>,re::SharedPtr<re::DirectBufferUpdate>>>::destroy[abi:nn200100](a1, v5);
      v5 += 2;
    }
  }
}

void **std::__split_buffer<std::pair<re::SharedPtr<re::DirectMesh>,re::SharedPtr<re::DirectMeshUpdate>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::pair<re::SharedPtr<re::DirectMesh>,re::SharedPtr<re::DirectMeshUpdate>>>::clear[abi:nn200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::pair<re::SharedPtr<re::DirectMesh>,re::SharedPtr<re::DirectMeshUpdate>>>::clear[abi:nn200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 16;
    std::allocator<std::pair<re::SharedPtr<re::DirectBuffer>,re::SharedPtr<re::DirectBufferUpdate>>>::destroy[abi:nn200100](v4, (i - 16));
  }
}

uint64_t *std::pair<re::SharedPtr<re::DirectMesh>,re::SharedPtr<re::DirectMeshUpdate>>::pair[abi:nn200100]<re::SharedPtr<re::DirectMesh>&,re::SharedPtr<re::DirectMeshUpdate> const&,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a2;
  *a1 = *a2;
  if (v5)
  {
    v6 = (v5 + 8);
  }

  v7 = *a3;
  a1[1] = *a3;
  if (v7)
  {
    v8 = (v7 + 8);
  }

  return a1;
}

uint64_t std::__function::__func<re::DirectResourceClientReceiver::load(re::SharedPtr<re::DirectResourceCommands> const&)::$_0,std::allocator<re::DirectResourceClientReceiver::load(re::SharedPtr<re::DirectResourceCommands> const&)::$_0>,re::DirectMemoryResource * ()(re::DirectResourceId const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285BC1AF0;
  a2[1] = v2;
  return result;
}

const unsigned __int8 *std::__function::__func<re::DirectResourceClientReceiver::load(re::SharedPtr<re::DirectResourceCommands> const&)::$_0,std::allocator<re::DirectResourceClientReceiver::load(re::SharedPtr<re::DirectResourceCommands> const&)::$_0>,re::DirectMemoryResource * ()(re::DirectResourceId const&)>::operator()(uint64_t a1, unsigned __int8 *a2)
{
  result = std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>>>::find<re::DirectResourceId>((*(a1 + 8) + 200), a2);
  if (result)
  {
    return *(result + 4);
  }

  return result;
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_1(re *a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, __int16 a5, char a6, char a7)
{
  *(v7 - 24) = a2;

  re::toString(a1, &a7);
}

uint64_t ArcObjectDestroy(char *a1, objc_selector *a2)
{
  if (a1)
  {
    v2 = a1 - 8;
  }

  else
  {
    v2 = 0;
  }

  return (*(*v2 + 16))();
}

uint64_t ArcObjectDescription(char *a1, objc_selector *a2)
{
  if (a1)
  {
    v2 = a1 - 8;
  }

  else
  {
    v2 = 0;
  }

  (*(*v2 + 24))(__p);
  if (v7 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

uint64_t ArcObjectDebugDescription(char *a1, objc_selector *a2)
{
  if (a1)
  {
    v2 = a1 - 8;
  }

  else
  {
    v2 = 0;
  }

  (*(*v2 + 32))(__p);
  if (v7 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

uint64_t ArcObjectClass(void)
{
  if ((atomic_load_explicit(&qword_2810C3998, memory_order_acquire) & 1) == 0)
  {
    ArcObjectClass();
  }

  return _MergedGlobals_1;
}

Class ArcObjectClass(void)::$_0::operator()()
{
  v0 = objc_opt_class();
  ClassPair = objc_allocateClassPair(v0, "_DRObject", 0);
  if (ClassPair)
  {
    v2 = ClassPair;
    class_addMethod(ClassPair, sel_dealloc, ArcObjectDestroy, "");
    class_addMethod(v2, sel_description, ArcObjectDescription, "");
    class_addMethod(v2, sel_debugDescription, ArcObjectDebugDescription, "");
    objc_registerClassPair(v2);
    return v2;
  }

  else
  {

    return objc_getClass("_DRObject");
  }
}

void ArcSharedObject::ArcSharedObject(ArcSharedObject *this, Class cls)
{
  v2 = cls;
  *this = &unk_285BC1B38;
  if (!cls)
  {
    v2 = ArcObjectClass();
  }

  *(this + 1) = 0;
  objc_constructInstance(v2, this + 8);
}

void ArcSharedObject::~ArcSharedObject(ArcSharedObject *this)
{
  *this = &unk_285BC1B38;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_285BC1B38;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_285BC1B38;
  objc_destructInstance(this + 8);

  JUMPOUT(0x24C1E9EB0);
}

void ArcSharedObject::dispose(ArcSharedObject *this)
{
  (**this)(this);

  operator delete(this);
}

double re::DirectResourcesReuseList::DirectResourcesReuseList(re::DirectResourcesReuseList *this, uint64_t a2)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *v3 = &unk_285BC1B70;
  *(v3 + 16) = a2;
  result = 0.0;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0u;
  return result;
}

void re::DirectResourcesReuseList::~DirectResourcesReuseList(re::DirectResourcesReuseList *this)
{
  v2 = (this + 32);
  std::vector<re::DirectResourcesReuseList::Entry>::__destroy_vector::operator()[abi:nn200100](&v2);
  ArcSharedObject::~ArcSharedObject(this);
}

{
  v2 = (this + 32);
  std::vector<re::DirectResourcesReuseList::Entry>::__destroy_vector::operator()[abi:nn200100](&v2);
  ArcSharedObject::~ArcSharedObject(this);
  MEMORY[0x24C1E9EB0]();
}

void re::DirectResourcesReuseList::add(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v18 = *MEMORY[0x277D85DE8];
  *&v12 = *(a1 + 16);
  *(&v12 + 1) = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v9 = *a7;
  v17 = v9;
  if (v9)
  {
    v10 = (v9 + 8);
  }

  std::vector<re::DirectResourcesReuseList::Entry>::push_back[abi:nn200100](a1 + 32, &v12);
  if (v17)
  {
  }

  *(a1 + 24) += *(*a7 + 48);
  v11 = *MEMORY[0x277D85DE8];
}

uint64_t std::vector<re::DirectResourcesReuseList::Entry>::push_back[abi:nn200100](uint64_t result, __int128 *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v9 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *result) >> 3);
    v10 = v9 + 1;
    if ((v9 + 1) > 0x492492492492492)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v11 = 0x6DB6DB6DB6DB6DB7 * ((v5 - *result) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x249249249249249)
    {
      v12 = 0x492492492492492;
    }

    else
    {
      v12 = v10;
    }

    v20[4] = result;
    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<re::DirectResourcesReuseList::Entry>>(result, v12);
    }

    v13 = 56 * v9;
    v14 = *a2;
    v15 = a2[2];
    *(v13 + 16) = a2[1];
    *(v13 + 32) = v15;
    *v13 = v14;
    *(v13 + 48) = *(a2 + 6);
    *(a2 + 6) = 0;
    v8 = 56 * v9 + 56;
    v16 = *(result + 8);
    v17 = v13 + *result - v16;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<re::DirectResourcesReuseList::Entry>,re::DirectResourcesReuseList::Entry*>(result, *result, v16, v17);
    v18 = *v3;
    *v3 = v17;
    v3[1] = v8;
    v19 = v3[2];
    v3[2] = 0;
    v20[2] = v18;
    v20[3] = v19;
    v20[0] = v18;
    v20[1] = v18;
    result = std::__split_buffer<re::DirectResourcesReuseList::Entry>::~__split_buffer(v20);
  }

  else
  {
    v6 = *a2;
    v7 = a2[2];
    *(v4 + 16) = a2[1];
    *(v4 + 32) = v7;
    *v4 = v6;
    *(v4 + 48) = *(a2 + 6);
    *(a2 + 6) = 0;
    v8 = v4 + 56;
  }

  v3[1] = v8;
  return result;
}

double re::DirectResourcesReusePool::DirectResourcesReusePool(re::DirectResourcesReusePool *this)
{
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  *(this + 5) = 0;
  *(this + 6) = 0;
  return result;
}

void re::DirectResourcesReusePool::take(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v35 = *MEMORY[0x277D85DE8];
  *uu2 = a2;
  v34 = a3;
  *a7 = 0;
  v12 = std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>>>::find<re::DirectResourceId>(a1, uu2);
  if (v12)
  {
    v13 = v12;
    v14 = *(v12 + 5);
    v15 = 0x6DB6DB6DB6DB6DB7 * ((v14 - *(v12 + 4)) >> 3);
    if (v15 >= 1)
    {
      v16 = v15 & 0x7FFFFFFF;
      v17 = v16 + 1;
      v18 = 56 * v16;
      while (1)
      {
        v19 = v13[4];
        v20 = v19 + v18;
        if (!uuid_compare((v19 + v18 - 48), uu2) && *(v19 + v18 - 32) == a4 && *(v20 - 24) == a5 && *(v20 - 16) == a6)
        {
          break;
        }

        --v17;
        v18 -= 56;
        if (v17 <= 1)
        {
          v14 = v13[5];
          goto LABEL_23;
        }
      }

      v23 = *(v19 + v18 - 8);
      *a7 = v23;
      *(v19 + v18 - 8) = 0;
      v24 = a1[6] - *(v23 + 48);
      --a1[5];
      a1[6] = v24;
      v25 = v13[5];
      v26 = v13[4] + v18;
      v14 = v26 - 56;
      if (v26 != v25)
      {
        do
        {
          v27 = v14 + 56;
          v28 = *(v14 + 72);
          *v14 = *(v14 + 56);
          *(v14 + 16) = v28;
          *(v14 + 32) = *(v14 + 88);
          v29 = *(v14 + 48);
          *(v14 + 48) = *(v14 + 104);
          *(v14 + 104) = v29;
          v30 = v14 + 112;
          v14 += 56;
        }

        while (v30 != v25);
        v25 = v13[5];
        v14 = v27;
      }

      while (v25 != v14)
      {
        v31 = *(v25 - 8);
        if (v31)
        {

          *(v25 - 8) = 0;
        }

        v25 -= 56;
      }

      v13[5] = v14;
    }

LABEL_23:
    if (v14 == v13[4])
    {
      std::__hash_table<std::__hash_value_type<re::DirectResourceId,std::vector<re::DirectResourcesReuseList::Entry>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,std::vector<re::DirectResourcesReuseList::Entry>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,std::vector<re::DirectResourcesReuseList::Entry>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,std::vector<re::DirectResourcesReuseList::Entry>>>>::erase(a1, v13);
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

void re::DirectResourcesReusePool::mergeFrom(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 32);
  v3 = *(a2 + 40);
  if (v2 != v3)
  {
    v9 = vdupq_n_s64(1uLL).u64[0];
    do
    {
      v5 = *(v2 + 48);
      if (!*(v5 + 36))
      {
        v6.i64[0] = v9;
        v6.i64[1] = *(v5 + 48);
        *(a1 + 40) = vaddq_s64(*(a1 + 40), v6);
        memset(v10, 0, sizeof(v10));
        *uu2 = *(v2 + 8);
        memset(v13, 0, sizeof(v13));
        std::vector<re::DirectResourcesReuseList::Entry>::__init_with_size[abi:nn200100]<re::DirectResourcesReuseList::Entry*,re::DirectResourcesReuseList::Entry*>(v13, 0, 0, 0);
        v7 = std::__hash_table<std::__hash_value_type<re::DirectResourceId,std::vector<re::DirectResourcesReuseList::Entry>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,std::vector<re::DirectResourcesReuseList::Entry>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,std::vector<re::DirectResourcesReuseList::Entry>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,std::vector<re::DirectResourcesReuseList::Entry>>>>::__emplace_unique_key_args<re::DirectResourceId,std::pair<re::DirectResourceId const,std::vector<re::DirectResourcesReuseList::Entry>>>(a1, uu2);
        std::vector<re::DirectResourcesReuseList::Entry>::push_back[abi:nn200100]((v7 + 32), v2);
        v11 = v13;
        std::vector<re::DirectResourcesReuseList::Entry>::__destroy_vector::operator()[abi:nn200100](&v11);
        v11 = v10;
        std::vector<re::DirectResourcesReuseList::Entry>::__destroy_vector::operator()[abi:nn200100](&v11);
      }

      v2 += 56;
    }

    while (v2 != v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t re::DirectResourcesReusePool::purgeBefore@<X0>(uint64_t this@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v16 = this;
  v3 = *(this + 16);
  if (v3)
  {
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = v3[4];
      if (v3[5] != v8)
      {
        if (*v8 >= a2)
        {
          v11 = 0;
          v10 = 0;
LABEL_10:
          if (!v10)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v17 = v6;
          v9 = v7;
          v10 = 0;
          v11 = 0;
          v12 = 56;
          while (1)
          {
            v11 += *(*(v8 + 48) + 48);
            this = std::vector<re::DirectResourcesReuseList::Entry>::push_back[abi:nn200100](a3, v8);
            ++v10;
            v13 = v3[4];
            if (v10 >= 0x6DB6DB6DB6DB6DB7 * ((v3[5] - v13) >> 3))
            {
              break;
            }

            v8 = v13 + 56 * v10;
            v14 = *(v13 + v12);
            v12 += 56;
            if (v14 >= a2)
            {
              v8 = v3[4];
              v7 = v9;
              v6 = v17;
              goto LABEL_10;
            }
          }

          v8 = v3[4];
          v7 = v9;
          v6 = v17;
        }

        this = std::vector<re::DirectResourcesReuseList::Entry>::erase((v3 + 4), v8, (v8 + 56 * v10));
        v6 += v10;
        v7 += v11;
      }

LABEL_14:
      v3 = *v3;
      if (!v3)
      {
        goto LABEL_17;
      }
    }
  }

  v7 = 0;
  v6 = 0;
LABEL_17:
  v15 = *(v16 + 48) - v7;
  *(v16 + 40) -= v6;
  *(v16 + 48) = v15;
  return this;
}

__int128 *std::vector<re::DirectResourcesReuseList::Entry>::erase(uint64_t a1, __int128 *a2, __int128 *a3)
{
  if (a3 != a2)
  {
    v5 = *(a1 + 8);
    v6 = a2;
    if (a3 != v5)
    {
      do
      {
        v7 = *a3;
        v8 = a3[2];
        v6[1] = a3[1];
        v6[2] = v8;
        *v6 = v7;
        v9 = *(v6 + 6);
        *(v6 + 6) = *(a3 + 6);
        *(a3 + 6) = v9;
        a3 = (a3 + 56);
        v6 = (v6 + 56);
      }

      while (a3 != v5);
      v5 = *(a1 + 8);
    }

    while (v5 != v6)
    {
      v10 = *(v5 - 1);
      if (v10)
      {

        *(v5 - 1) = 0;
      }

      v5 = (v5 - 56);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

uint64_t re::DirectResourcesReusePool::purgePayloads@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  *uu2 = a2;
  v15 = a3;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  result = std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMemoryResource>>>>::find<re::DirectResourceId>(a1, uu2);
  if (result)
  {
    v7 = result;
    v8 = *(result + 32);
    v9 = *(result + 40);
    v10 = (result + 32);
    if (v8 != v9)
    {
      v11 = a1[5];
      v12 = a1[6];
      do
      {
        --v11;
        v12 -= *(*(v8 + 48) + 48);
        v8 += 56;
      }

      while (v8 != v9);
      a1[5] = v11;
      a1[6] = v12;
    }

    std::vector<re::DirectResourcesReuseList::Entry>::__vdeallocate(a4);
    *a4 = *(v7 + 32);
    a4[2] = *(v7 + 48);
    *v10 = 0;
    v10[1] = 0;
    v10[2] = 0;
    result = std::__hash_table<std::__hash_value_type<re::DirectResourceId,std::vector<re::DirectResourcesReuseList::Entry>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,std::vector<re::DirectResourcesReuseList::Entry>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,std::vector<re::DirectResourcesReuseList::Entry>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,std::vector<re::DirectResourcesReuseList::Entry>>>>::erase(a1, v7);
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::vector<re::DirectResourcesReuseList::Entry>::__init_with_size[abi:nn200100]<re::DirectResourcesReuseList::Entry*,re::DirectResourcesReuseList::Entry*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<re::DirectResourcesReuseList::Entry>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

void std::vector<re::DirectResourcesReuseList::Entry>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<re::DirectResourcesReuseList::Entry>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<re::DirectResourcesReuseList::Entry>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<re::DirectResourcesReuseList::Entry>,re::DirectResourcesReuseList::Entry*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      v8 = v6[2];
      *(a4 + 16) = v6[1];
      *(a4 + 32) = v8;
      *a4 = v7;
      *(a4 + 48) = *(v6 + 6);
      *(v6 + 6) = 0;
      v6 = (v6 + 56);
      a4 += 56;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v9 = *(v5 + 6);
      if (v9)
      {

        *(v5 + 6) = 0;
      }

      v5 = (v5 + 56);
    }
  }
}

uint64_t std::__split_buffer<re::DirectResourcesReuseList::Entry>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<re::DirectResourcesReuseList::Entry>::__destruct_at_end[abi:nn200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<re::DirectResourcesReuseList::Entry>::__destruct_at_end[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 56;
    v5 = *(v2 - 8);
    if (v5)
    {

      *(v2 - 8) = 0;
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 56;
    }
  }
}

uint64_t std::__hash_table<std::__hash_value_type<re::DirectResourceId,std::vector<re::DirectResourcesReuseList::Entry>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,std::vector<re::DirectResourcesReuseList::Entry>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,std::vector<re::DirectResourcesReuseList::Entry>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,std::vector<re::DirectResourcesReuseList::Entry>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<re::DirectResourceId,std::vector<re::DirectResourcesReuseList::Entry>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,std::vector<re::DirectResourcesReuseList::Entry>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,std::vector<re::DirectResourcesReuseList::Entry>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,std::vector<re::DirectResourcesReuseList::Entry>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<re::DirectResourceId,std::vector<re::DirectResourcesReuseList::Entry>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,std::vector<re::DirectResourcesReuseList::Entry>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,std::vector<re::DirectResourcesReuseList::Entry>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,std::vector<re::DirectResourcesReuseList::Entry>>>>::__deallocate_node(uint64_t a1, char *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v4 = (v2 + 32);
      std::vector<re::DirectResourcesReuseList::Entry>::__destroy_vector::operator()[abi:nn200100](&v4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<re::DirectResourceId,std::vector<re::DirectResourcesReuseList::Entry>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,std::vector<re::DirectResourcesReuseList::Entry>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,std::vector<re::DirectResourcesReuseList::Entry>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,std::vector<re::DirectResourcesReuseList::Entry>>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,re::SharedPtr<re::DirectMeshUpdate>>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      v7 = v3 + 4;
      std::vector<re::DirectResourcesReuseList::Entry>::__destroy_vector::operator()[abi:nn200100](&v7);
    }

    operator delete(v3);
  }

  return v2;
}

const unsigned __int8 *std::__hash_table<std::__hash_value_type<re::DirectResourceId,std::vector<re::DirectResourcesReuseList::Entry>>,std::__unordered_map_hasher<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,std::vector<re::DirectResourcesReuseList::Entry>>,std::hash<re::DirectResourceId>,std::equal_to<re::DirectResourceId>,true>,std::__unordered_map_equal<re::DirectResourceId,std::__hash_value_type<re::DirectResourceId,std::vector<re::DirectResourcesReuseList::Entry>>,std::equal_to<re::DirectResourceId>,std::hash<re::DirectResourceId>,true>,std::allocator<std::__hash_value_type<re::DirectResourceId,std::vector<re::DirectResourcesReuseList::Entry>>>>::__emplace_unique_key_args<re::DirectResourceId,std::pair<re::DirectResourceId const,std::vector<re::DirectResourcesReuseList::Entry>>>(void *a1, unsigned __int8 *uu2)
{
  v2 = (*(uu2 + 1) + (*uu2 << 6) + (*uu2 >> 2) - 0x61C8864680B583E9) ^ *uu2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.u32[0];
  if (v5.u32[0] > 1uLL)
  {
    v7 = (*(uu2 + 1) + (*uu2 << 6) + (*uu2 >> 2) - 0x61C8864680B583E9) ^ *uu2;
    if (v2 >= *&v3)
    {
      v7 = v2 % *&v3;
    }
  }

  else
  {
    v7 = v2 & (*&v3 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = *(v9 + 1);
    if (v10 == v2)
    {
      break;
    }

    if (v6 > 1)
    {
      if (v10 >= *&v3)
      {
        v10 %= *&v3;
      }
    }

    else
    {
      v10 &= *&v3 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (uuid_compare(v9 + 16, uu2))
  {
    goto LABEL_17;
  }

  return v9;
}

BOOL re::DirectBufferValidation::isValid(re::DirectBufferValidation *this, const re::DirectBuffer *a2)
{
  if (*(re::DirectBuffer::payload(this, 3, 0) + 48) < *(this + 6))
  {
    return 0;
  }

  v4 = *(this + 8);

  return re::DirectBuffer::isValidBytesUsed(this, v4);
}

re::DirectResource *re::DirectResource::DirectResource(re::DirectResource *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *v2 = &unk_285BC1BA8;
  uuid_copy((v2 + 16), UUID_NULL);
  *(this + 4) = 0;
  *(this + 5) = 0;
  uuid_generate_random(this + 16);
  return this;
}

void re::DirectResource::dispose(re::DirectResource *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    (*(*v2 + 40))(v2, this);
  }

  else
  {
    ArcSharedObject::dispose(this);
  }
}

double re::DirectResource::setIdentifier(re::DirectResource *this, const unsigned __int8 (*a2)[16])
{
  v6 = *MEMORY[0x277D85DE8];
  if (*(this + 5))
  {
    re::DirectResource::setIdentifier();
  }

  uuid_copy(dst, a2);
  result = *dst;
  *(this + 1) = *dst;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t re::DirectResource::tryWillChange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 40);
  if (v10)
  {
    return (*(*v10 + 16))(v10, a1, a2, a3, a4, a5);
  }

  else
  {
    return 1;
  }
}

uint64_t re::DirectResource::willChange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(*result + 24))(result, a1, a2, a3, a4, a5);
  }

  return result;
}

uint64_t re::DirectResource::didChange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(*result + 32))(result, a1, a2, a3, a4);
  }

  return result;
}

void re::DirectResource::newPayload(uint64_t a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v5 = (*(*a1 + 48))(a1);
  if (v5)
  {
    v6 = *(v5 + 40);
    v7 = *(v5 + 48);

    re::DirectMemoryResource::create(v7, v6, a2, a3);
  }

  else
  {
    *a3 = 0;
  }
}

id re::DirectTexture::makeDescriptor@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = [objc_msgSend(MEMORY[0x277CD7058] alloc)];
  *a2 = v4;
  [v4 setWidth_];
  [v4 setHeight_];
  [v4 setDepth_];
  [v4 setMipmapLevelCount_];
  [v4 setArrayLength_];
  [v4 setPixelFormat_];
  [v4 setTextureType_];
  [v4 setUsage_];
  [v4 setSwizzle_];
  [v4 setStorageMode_];

  return [v4 setResourceOptions_];
}

id re::DirectTexture::makeDescriptor@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = [a1 width];
  *(a2 + 8) = [a1 height];
  *(a2 + 16) = [a1 depth];
  *(a2 + 24) = [a1 mipmapLevelCount];
  *(a2 + 32) = [a1 arrayLength];
  *(a2 + 40) = [a1 pixelFormat];
  *(a2 + 48) = [a1 textureType];
  *(a2 + 56) = [a1 usage];
  result = [a1 swizzle];
  *(a2 + 64) = result;
  return result;
}

void re::DirectTexture::create(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (*a2 && (re::DirectTextureValidation::isWellFormed() & 1) != 0)
  {
    re::make::shared::object<re::DirectTexture,re::DirectTextureDescription const&>(a1, &v6);
    if (re::DirectTexture::allocateStorage(v6, a2))
    {
      *a3 = v6;
    }

    else
    {
      *a3 = 0;
      if (v6)
      {
      }
    }
  }

  else
  {
    *a3 = 0;
  }
}

BOOL re::DirectTexture::allocateStorage(uint64_t a1, uint64_t a2)
{
  re::DirectTexture::allocatePayload(*a2, a1, *(a2 + 8), &v6);
  v3 = *(a1 + 128);
  v4 = v6;
  *(a1 + 128) = v6;
  v6 = v3;
  if (v3)
  {

    v4 = *(a1 + 128);
  }

  return v4 != 0;
}

uint64_t re::DirectTexture::create@<X0>(re::DirectMemoryResource **a1@<X0>, re::DirectResource **a2@<X8>)
{
  result = re::DirectMemoryResource::runtimeResource(*a1);
  if (*result && (result = [*re::DirectMemoryResource::runtimeResource(*a1) respondsToSelector_], (result & 1) != 0))
  {
    v5 = re::DirectMemoryResource::runtimeResource(*a1);
    re::DirectTexture::makeDescriptor(*v5, v7);
    result = re::make::shared::object<re::DirectTexture,re::DirectTextureDescription const&>(v7, a2);
    v6 = *(*a2 + 16);
    *(*a2 + 16) = *a1;
    *a1 = v6;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

re::DirectResource *re::DirectTexture::DirectTexture(re::DirectResource *a1, uint64_t a2)
{
  v4 = re::DirectResource::DirectResource(a1);
  *v4 = &unk_285BC1C18;
  *(v4 + 3) = *a2;
  v5 = *(a2 + 16);
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  *(v4 + 14) = *(a2 + 64);
  *(v4 + 5) = v6;
  *(v4 + 6) = v7;
  *(v4 + 4) = v5;
  re::DirectTexture::makeDescriptor(v4 + 48, v4 + 15);
  *(a1 + 16) = 0;
  return a1;
}

void re::DirectTexture::allocatePayload(id a1@<X1>, uint64_t a2@<X0>, int a3@<W2>, re::DirectMemoryResource **a4@<X8>)
{
  v8 = 0;
  if (a3)
  {
    v5 = *(a2 + 120);
    v6 = &selRef_newSharedTextureWithDescriptor_;
  }

  else
  {
    v5 = *(a2 + 120);
    v6 = &selRef_newTextureWithDescriptor_;
  }

  v7 = [a1 *v6];
  NS::SharedPtr<MTL::Resource>::operator=<MTL::Texture>(&v8, &v7);
  if (v7)
  {
  }

  if (v8)
  {
    if ([v8 isShareable])
    {
      re::DirectMemoryResource::createWithSharedTexture(v8, 10, 0, a4);
    }

    else
    {
      re::DirectMemoryResource::createWithPrivateTexture(v8, 2, 0, a4);
    }

    if (v8)
    {
    }
  }

  else
  {
    *a4 = 0;
  }
}

BOOL re::DirectTexture::isAttachedToDevice(re::DirectMemoryResource **this)
{
  v1 = *re::DirectMemoryResource::runtimeResource(this[16]);
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

uint64_t re::DirectTexture::allocateRuntimeResource(uint64_t a1, re::DirectMemoryResource *a2, void *a3)
{
  if (!re::DirectMemoryResource::bindToResource(a2, 2, 3))
  {
    return 0;
  }

  if (*re::DirectMemoryResource::runtimeResource(a2))
  {
    return 1;
  }

  v6 = *(a2 + 8);
  if (!v6)
  {
    return 0;
  }

  v11 = 0;
  v10 = [objc_msgSend(MEMORY[0x277CD6FE0] alloc)];
  NS::SharedPtr<MTL::Resource>::operator=<MTL::Texture>(&v11, &v10);
  if (v10)
  {
  }

  v7 = [a3 newSharedTextureWithHandle_];
  v9 = v7;
  re::DirectMemoryResource::setRuntimeResource(a2, &v9);
  if (v9)
  {

    v9 = 0;
  }

  v5 = v7 != 0;
  if (v7)
  {
  }

  if (v11)
  {
  }

  return v5;
}

void re::DirectTexture::newPayload(id a1@<X3>, uint64_t a2@<X0>, int a3@<W1>, uint64_t a4@<X2>, re::DirectMemoryResource **a5@<X8>)
{
  if (a1 && a3 == 3 && !a4)
  {
    re::DirectTexture::allocatePayload(a1, a2, (*(*(a2 + 128) + 40) >> 3) & 1, a5);
  }

  else
  {
    *a5 = 0;
  }
}

uint64_t re::DirectTexture::payload(uint64_t a1, int a2, uint64_t a3)
{
  result = 0;
  if (a2 == 3 && !a3)
  {
    return *(a1 + 128);
  }

  return result;
}

uint64_t re::DirectTexture::setPayload(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = re::DirectMemoryResource::bindToResource(*a4, 2, a2);
  if (result)
  {
    v9 = *(a1 + 40);
    if (!v9 || (result = (*(*v9 + 48))(v9, *a4, a1, a2, a3), result))
    {
      result = 0;
      if (a2 == 3 && !a3)
      {
        v10 = *(a1 + 40);
        if (v10)
        {
          (*(*v10 + 56))(v10, a1, a2, 0);
        }

        v11 = *(a1 + 128);
        *(a1 + 128) = *a4;
        *a4 = v11;
        v12 = *(a1 + 40);
        if (v12)
        {
          (*(*v12 + 64))(v12, a1, a2, 0);
        }

        return 1;
      }
    }
  }

  return result;
}

id re::DirectTexture::readTexture@<X0>(re::DirectMemoryResource **this@<X0>, void *a2@<X8>)
{
  result = *re::DirectMemoryResource::runtimeResource(this[16]);
  *a2 = result;
  return result;
}

id re::DirectTexture::replaceTexture@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  re::DirectResource::willChange(a1, 3, 0, 1, a2);
  result = *re::DirectMemoryResource::runtimeResource(*(a1 + 128));
  *a3 = result;
  return result;
}

id re::DirectTexture::tryReplaceTexture@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = re::DirectResource::tryWillChange(a1, 3, 0, 1, a2);
  result = 0;
  if (v5)
  {
    result = *re::DirectMemoryResource::runtimeResource(*(a1 + 128));
  }

  *a3 = result;
  return result;
}

void re::DirectTexture::~DirectTexture(re::DirectTexture *this)
{
  v2 = *(this + 16);
  if (v2)
  {

    *(this + 16) = 0;
  }

  v3 = *(this + 15);
  if (v3)
  {

    *(this + 15) = 0;
  }

  re::DirectResource::~DirectResource(this);
}

{
  v2 = *(this + 16);
  if (v2)
  {

    *(this + 16) = 0;
  }

  v3 = *(this + 15);
  if (v3)
  {

    *(this + 15) = 0;
  }

  re::DirectResource::~DirectResource(this);

  JUMPOUT(0x24C1E9EB0);
}

id re::make::shared::object<re::DirectTexture,re::DirectTextureDescription const&>@<X0>(uint64_t a1@<X0>, re::DirectResource **a2@<X8>)
{
  v4 = operator new(0x88uLL);
  v5 = re::DirectResource::DirectResource(v4);
  *v5 = &unk_285BC1C18;
  v6 = *(a1 + 48);
  *(v5 + 5) = *(a1 + 32);
  *(v5 + 6) = v6;
  *(v5 + 14) = *(a1 + 64);
  v7 = *(a1 + 16);
  *(v5 + 3) = *a1;
  *(v5 + 4) = v7;
  result = re::DirectTexture::makeDescriptor(v5 + 48, v5 + 15);
  *(v4 + 16) = 0;
  *a2 = v4;
  return result;
}

void re::DirectMesh::create(uint64_t a1@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  if (re::DirectMeshValidation::isWellFormed(a1))
  {
    v6 = operator new(0xB8uLL);
    v7 = re::DirectMesh::DirectMesh(v6, a1);
    if (re::DirectMesh::allocateStorage(v7, a2))
    {
      re::DirectMesh::attachToDevice(v6, *a2);
      *a3 = v6;
    }

    else
    {
      *a3 = 0;
    }
  }

  else
  {
    *a3 = 0;
  }
}

BOOL re::DirectMesh::allocateStorage(unint64_t *a1, uint64_t a2)
{
  v3 = *a2;
  if (*(a2 + 8))
  {
    v4 = -1;
  }

  else
  {
    v4 = -9;
  }

  re::calculateBufferSizes(a1 + 6, v19);
  if (v20 != 1)
  {
    return 0;
  }

  re::DirectMemoryResource::create(v19[0], (v4 & 0xF), v3, &v18);
  v5 = a1[18];
  v6 = v18;
  a1[18] = v18;
  v18 = v5;
  v7 = v6 != 0;
  if (v5)
  {
  }

  v8 = 0;
  v9 = a1 + 19;
  do
  {
    v10 = v7;
    v11 = v19[v8 + 1];
    v7 &= v11 == 0;
    if (v11)
    {
      if (v10)
      {
        re::DirectMemoryResource::create(v11, (v4 & 0xB), v3, &v18);
        v12 = v9[v8];
        v13 = v18;
        v9[v8] = v18;
        v18 = v12;
        v7 = v13 != 0;
        if (v12)
        {
        }
      }
    }

    ++v8;
  }

  while (v8 != 4);
  if (v7)
  {
    re::DirectMemoryResource::create(0x300, 5, v3, &v18);
    v14 = a1[17];
    v15 = v18;
    a1[17] = v18;
    v18 = v14;
    v16 = v15 != 0;
    if (v14)
    {
    }
  }

  else
  {
    v16 = 0;
  }

  a1[16] = 0;
  return v16;
}

uint64_t re::DirectMesh::attachToDevice(uint64_t a1, void *a2)
{
  v3 = a1 + 152;
  v4 = (a1 + 144);
  v5 = (a1 + 136);
  v6 = &qword_248D65268;
  v7 = 80;
  do
  {
    v8 = *(v6 - 2);
    v9 = v5;
    if (v8)
    {
      if (v8 == 2)
      {
        if (*v6 > 3)
        {
          goto LABEL_15;
        }

        v9 = (v3 + 8 * *v6);
      }

      else
      {
        v9 = v4;
        if (v8 != 1)
        {
          goto LABEL_15;
        }
      }
    }

    v10 = *v9;
    if (*v9)
    {
      result = re::DirectMemoryResource::bindToResource(*v9, 1, v8);
      if (!result)
      {
        return result;
      }

      if (!*re::DirectMemoryResource::runtimeResource(v10))
      {
        re::DirectMemoryResource::makeBuffer(a2, v10, &v13);
        v12 = v13;
        v13 = 0;
        v14 = v12;
        re::DirectMemoryResource::setRuntimeResource(v10, &v14);
        if (v14)
        {

          v14 = 0;
        }

        if (v13)
        {
        }
      }
    }

LABEL_15:
    v6 += 2;
    v7 -= 16;
  }

  while (v7);
  return 1;
}

uint64_t re::DirectMesh::DirectMesh(uint64_t a1, uint64_t a2)
{
  v4 = re::DirectResource::DirectResource(a1);
  *v4 = &unk_285BC1C88;
  v5 = *(a2 + 16);
  *(v4 + 3) = *a2;
  *(v4 + 4) = v5;
  std::vector<re::DirectMeshVertexAttribute>::vector[abi:nn200100](v4 + 10, (a2 + 32));
  std::vector<re::DirectMeshVertexLayout>::vector[abi:nn200100]((a1 + 104), (a2 + 56));
  *(a1 + 176) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 128) = 0u;
  return a1;
}

void re::DirectMesh::~DirectMesh(re::DirectMesh *this)
{
  for (i = 176; i != 144; i -= 8)
  {
    v3 = *(this + i);
    if (v3)
    {

      *(this + i) = 0;
    }
  }

  v4 = *(this + 18);
  if (v4)
  {

    *(this + 18) = 0;
  }

  v5 = *(this + 17);
  if (v5)
  {

    *(this + 17) = 0;
  }

  v6 = *(this + 13);
  if (v6)
  {
    *(this + 14) = v6;
    operator delete(v6);
  }

  v7 = *(this + 10);
  if (v7)
  {
    *(this + 11) = v7;
    operator delete(v7);
  }

  re::DirectResource::~DirectResource(this);
}

{
  re::DirectMesh::~DirectMesh(this);

  JUMPOUT(0x24C1E9EB0);
}

unint64_t re::calculateBufferSizes@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  memset(&v14[8], 0, 32);
  result = re::lengthInBytes(a1[1]);
  if (is_mul_ok(result, *a1))
  {
    *v14 = result * *a1;
    v6 = a1[4];
    v7 = a1[5];
    if (v6 == v7)
    {
LABEL_10:
      v13 = *&v14[16];
      *a2 = *v14;
      *(a2 + 16) = v13;
      *(a2 + 32) = *&v14[32];
      v5 = 1;
      goto LABEL_11;
    }

    while (1)
    {
      v8 = *(v6 + 16);
      v9 = a1[7];
      if (v8 >= 0xCCCCCCCCCCCCCCCDLL * ((a1[8] - v9) >> 3))
      {
        break;
      }

      v10 = (v9 + 40 * v8);
      if (*v10 >= 4uLL)
      {
        break;
      }

      result = re::lengthInBytes(v6, v10, a1[3]);
      if ((v11 & 1) == 0)
      {
        break;
      }

      v12 = *&v14[8 * *v10 + 8];
      if (v12 <= result)
      {
        v12 = result;
      }

      *&v14[8 * *v10 + 8] = v12;
      v6 += 32;
      if (v6 == v7)
      {
        goto LABEL_10;
      }
    }
  }

  v5 = 0;
  *a2 = 0;
LABEL_11:
  *(a2 + 40) = v5;
  return result;
}

re::DirectMemoryResource *re::DirectMesh::isAttachedToDevice(re::DirectMesh *this)
{
  result = *(this + 18);
  if (result)
  {
    return (*re::DirectMemoryResource::runtimeResource(result) != 0);
  }

  return result;
}

uint64_t re::DirectMesh::payload(uint64_t a1, int a2, unint64_t a3)
{
  switch(a2)
  {
    case 2:
      if (a3 <= 3)
      {
        v3 = a1 + 8 * a3 + 152;
        return *v3;
      }

      break;
    case 1:
      v3 = a1 + 144;
      return *v3;
    case 0:
      v3 = a1 + 136;
      return *v3;
  }

  return 0;
}

uint64_t re::DirectMesh::vertexPayload(re::DirectMesh *this, unint64_t a2)
{
  if (a2 > 3)
  {
    return 0;
  }

  else
  {
    return *(this + a2 + 19);
  }
}

UInt8 *re::DirectMesh::parts(re::DirectMemoryResource **this)
{
  result = re::DirectMemoryResource::bytes(this[17]);
  v3 = &result[96 * this[16]];
  return result;
}

void re::DirectMesh::setParts(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3;
  if (a3)
  {
    v5 = (a3 + 8);
  }

  re::DirectMesh::setPayload(a1, 0, 0, &v6);
  if (v6)
  {
  }

  if (*(a1 + 128) != a2)
  {
    re::DirectResource::willChange(a1, 0, 0, 0, 0);
    *(a1 + 128) = a2;

    re::DirectResource::didChange(a1, 0, 0, 0);
  }
}

uint64_t re::DirectMesh::setPayload(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  result = re::DirectMemoryResource::bindToResource(*a4, 1, a2);
  if (!result)
  {
    return result;
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    result = (*(*v9 + 48))(v9, *a4, a1, a2, a3);
    if (!result)
    {
      return result;
    }

    v10 = *(a1 + 40);
    if (v10)
    {
      (*(*v10 + 56))(v10, a1, a2, a3);
    }
  }

  if (a2 == 2)
  {
    if (a3 <= 3)
    {
      v11 = *a4;
      v15 = *a4;
      *a4 = 0;
      v12 = (a1 + 8 * a3 + 152);
      v13 = &v15;
      goto LABEL_14;
    }

    return 0;
  }

  if (a2 == 1)
  {
    v11 = *a4;
    v16 = *a4;
    *a4 = 0;
    v12 = (a1 + 144);
    v13 = &v16;
    goto LABEL_14;
  }

  if (a2)
  {
    return 0;
  }

  v11 = *a4;
  v17 = *a4;
  *a4 = 0;
  v12 = (a1 + 136);
  v13 = &v17;
LABEL_14:
  re::DirectMesh::replaceInternal(a1, v12, v13);
  if (v11)
  {
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    (*(*v14 + 64))(v14, a1, a2, a3);
  }

  return 1;
}

uint64_t re::DirectMesh::setPartCount(uint64_t this, re::DirectMeshValidation *a2)
{
  if (*(this + 128) != a2)
  {
    v3 = this;
    if (!re::DirectMeshValidation::isValidPartCount(a2))
    {
      re::DirectMesh::setPartCount();
    }

    re::DirectResource::willChange(v3, 0, 0, 0, 0);
    v4 = *(v3 + 128);
    v5 = *(*(v3 + 136) + 48) / 0x60uLL;
    if (v5 < a2)
    {
      v6 = 2 * v5;
      if (v6 <= a2)
      {
        v6 = a2;
      }

      re::DirectMemoryResource::create((96 * v6), 5, 0, &v14);
      if (v14)
      {
        v7 = re::DirectMemoryResource::bytes(v14);
        v8 = re::DirectMemoryResource::bytes(*(v3 + 136));
        memcpy(v7, v8, 96 * v4);
        v13 = v14;
        if (v14)
        {
          v9 = v14 + 8;
        }
      }

      else
      {
        v13 = 0;
      }

      re::DirectMesh::setPayload(v3, 0, 0, &v13);
      if (v13)
      {
      }

      if (v14)
      {
      }
    }

    *(v3 + 128) = a2;
    v10 = a2 > v4;
    v11 = a2 - v4;
    if (v10)
    {
      v12 = &re::DirectMemoryResource::bytes(*(v3 + 136))[96 * v4 + 24];
      do
      {
        *(v12 - 3) = 0;
        *(v12 - 2) = 0;
        *v12 = 0;
        *(v12 + 1) = 0;
        *(v12 - 1) = 3;
        *(v12 + 24) = 0uLL;
        *(v12 + 40) = 0uLL;
        *(v12 + 7) = 0;
        v12 += 96;
        --v11;
      }

      while (v11);
    }

    return re::DirectResource::didChange(v3, 0, 0, 0);
  }

  return this;
}

uint64_t re::DirectMesh::updateParts(uint64_t a1, uint64_t a2)
{
  re::DirectResource::willChange(a1, 0, 0, 0, 0);
  v4 = re::DirectMemoryResource::bytes(*(a1 + 136));
  (*(a2 + 16))(a2, v4, *(a1 + 128));

  return re::DirectResource::didChange(a1, 0, 0, 0);
}

uint64_t re::DirectMesh::readBuffer(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 <= 3 && (v5 = a1 + 152, (v6 = *(a1 + 152 + 8 * a2)) != 0))
  {
    v7 = re::DirectMemoryResource::bytes(v6);
    v8 = *(*(v5 + 8 * a2) + 48);
    v9 = *(a3 + 16);
    v10 = a3;
  }

  else
  {
    v9 = *(a3 + 16);
    v10 = a3;
    v7 = 0;
    v8 = 0;
  }

  return v9(v10, v7, v8);
}

uint64_t re::DirectMesh::readIndices(uint64_t a1, uint64_t a2)
{
  v4 = re::DirectMemoryResource::bytes(*(a1 + 144));
  v5 = *(*(a1 + 144) + 48);
  v6 = *(a2 + 16);

  return v6(a2, v4, v5);
}

uint64_t re::DirectMesh::updateBuffer(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 <= 3 && (v6 = a1 + 152, *(a1 + 152 + 8 * a2)))
  {
    re::DirectResource::willChange(a1, 2, a2, 0, 0);
    v7 = re::DirectMemoryResource::bytes(*(v6 + 8 * a2));
    (*(a3 + 16))(a3, v7, *(*(v6 + 8 * a2) + 48));

    return re::DirectResource::didChange(a1, 2, a2, 0);
  }

  else
  {
    v9 = *(a3 + 16);

    return v9(a3, 0, 0);
  }
}

{
  if (a2 > 3)
  {
    return 0;
  }

  v4 = a1 + 152;
  if (!*(a1 + 152 + 8 * a2))
  {
    return 0;
  }

  re::DirectResource::willChange(a1, 2, a2, 0, a3);
  return *re::DirectMemoryResource::runtimeResource(*(v4 + 8 * a2));
}

uint64_t re::DirectMesh::updateIndices(re::DirectMemoryResource **a1, uint64_t a2)
{
  re::DirectResource::willChange(a1, 1, 0, 0, 0);
  v4 = re::DirectMemoryResource::bytes(a1[18]);
  (*(a2 + 16))(a2, v4, *(a1[18] + 6));
  re::DirectMesh::validateIndices(a1);

  return re::DirectResource::didChange(a1, 1, 0, 0);
}

BOOL re::DirectMesh::validateIndices(re::DirectMesh *this)
{
  v2 = *(this + 7);
  v3 = re::DirectMemoryResource::bytes(*(this + 18));
  return re::DirectMeshValidation::validateAndFixupIndices(v2, v3, *(*(this + 18) + 48), *(this + 9)) == 0;
}

uint64_t re::DirectMesh::replaceBuffer(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 <= 3 && (v6 = a1 + 152, *(a1 + 152 + 8 * a2)))
  {
    re::DirectResource::willChange(a1, 2, a2, 1, 0);
    v7 = re::DirectMemoryResource::bytes(*(v6 + 8 * a2));
    (*(a3 + 16))(a3, v7, *(*(v6 + 8 * a2) + 48));

    return re::DirectResource::didChange(a1, 2, a2, 0);
  }

  else
  {
    v9 = *(a3 + 16);

    return v9(a3, 0, 0);
  }
}

{
  if (a2 > 3)
  {
    return 0;
  }

  v4 = a1 + 152;
  if (!*(a1 + 152 + 8 * a2))
  {
    return 0;
  }

  re::DirectResource::willChange(a1, 2, a2, 1, a3);
  return *re::DirectMemoryResource::runtimeResource(*(v4 + 8 * a2));
}

uint64_t re::DirectMesh::replaceIndices(re::DirectMemoryResource **a1, uint64_t a2)
{
  re::DirectResource::willChange(a1, 1, 0, 1, 0);
  v4 = re::DirectMemoryResource::bytes(a1[18]);
  (*(a2 + 16))(a2, v4, *(a1[18] + 6));
  re::DirectMesh::validateIndices(a1);

  return re::DirectResource::didChange(a1, 1, 0, 0);
}

re::DirectMemoryResource *re::DirectMesh::readBuffer(uint64_t a1, unint64_t a2)
{
  if (a2 > 3)
  {
    return 0;
  }

  result = *(a1 + 8 * a2 + 152);
  if (result)
  {
    return *re::DirectMemoryResource::runtimeResource(result);
  }

  return result;
}

void re::DirectMesh::replaceInternal(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *(a1 + 144);
  if (v6 && *re::DirectMemoryResource::runtimeResource(v6))
  {
    v7 = [*re::DirectMemoryResource::runtimeResource(*(a1 + 144)) device];
    re::SharedPtr<re::DirectBuffer>::reset(a2, *a3);
    if (v7 && !*re::DirectMemoryResource::runtimeResource(*a3))
    {
      v8 = *a3;
      re::DirectMemoryResource::makeBuffer(v7, v8, &v11);
      v9 = v11;
      v11 = 0;
      v12 = v9;
      re::DirectMemoryResource::setRuntimeResource(v8, &v12);
      if (v12)
      {

        v12 = 0;
      }

      if (v11)
      {
      }
    }
  }

  else
  {
    v10 = *a3;

    re::SharedPtr<re::DirectBuffer>::reset(a2, v10);
  }
}

uint64_t re::DirectMesh::forEachSlot(uint64_t a1, uint64_t a2)
{
  v3 = &unk_248D652B8;
  v4 = 96;
  do
  {
    result = std::function<void ()(re::DirectResourceSlot)>::operator()(a2, *(v3 - 1), *v3);
    v3 += 2;
    v4 -= 16;
  }

  while (v4);
  return result;
}

uint64_t DRMeshDescriptorCreate()
{
  re::make::shared::object<re::DirectMeshDescriptor>(&v1);
  if (v1)
  {
    return v1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t DRMeshDescriptorGetVertexBufferCount(uint64_t a1)
{
  v1 = a1 - 8;
  if (!a1)
  {
    v1 = 0;
  }

  return *(v1 + 32);
}

uint64_t DRMeshDescriptorSetVertexBufferCount(uint64_t result, uint64_t a2)
{
  v2 = result - 8;
  if (!result)
  {
    v2 = 0;
  }

  *(v2 + 32) = a2;
  return result;
}

uint64_t DRMeshDescriptorGetVertexCapacity(uint64_t a1)
{
  v1 = a1 - 8;
  if (!a1)
  {
    v1 = 0;
  }

  return *(v1 + 40);
}

uint64_t DRMeshDescriptorSetVertexCapacity(uint64_t result, uint64_t a2)
{
  v2 = result - 8;
  if (!result)
  {
    v2 = 0;
  }

  *(v2 + 40) = a2;
  return result;
}

uint64_t DRMeshDescriptorGetIndexCapacity(uint64_t a1)
{
  v1 = a1 - 8;
  if (!a1)
  {
    v1 = 0;
  }

  return *(v1 + 16);
}

uint64_t DRMeshDescriptorSetIndexCapacity(uint64_t result, uint64_t a2)
{
  v2 = result - 8;
  if (!result)
  {
    v2 = 0;
  }

  *(v2 + 16) = a2;
  return result;
}

uint64_t DRMeshDescriptorGetIndexType(uint64_t a1)
{
  v1 = a1 - 8;
  if (!a1)
  {
    v1 = 0;
  }

  return *(v1 + 24);
}

uint64_t DRMeshDescriptorSetIndexType(uint64_t result, uint64_t a2)
{
  v2 = result - 8;
  if (!result)
  {
    v2 = 0;
  }

  *(v2 + 24) = a2;
  return result;
}

uint64_t DRMeshDescriptorGetVertexAttributeCount(uint64_t a1)
{
  v1 = a1 - 8;
  if (!a1)
  {
    v1 = 0;
  }

  return (*(v1 + 56) - *(v1 + 48)) >> 5;
}

void DRMeshDescriptorSetVertexAttributeCount(void *a1, unint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v18 = v3;
  if (v3)
  {
    v4 = v3 - 8;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v4 + 6);
  v6 = *(v4 + 7);
  for (i = (v6 - v5) >> 5; i < a2; i = (v6 - v5) >> 5)
  {
    memset(v19, 0, 28);
    v8 = *(v4 + 8);
    if (v6 >= v8)
    {
      if ((i + 1) >> 59)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v9 = v8 - v5;
      v10 = v9 >> 4;
      if (v9 >> 4 <= i + 1)
      {
        v10 = i + 1;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFE0)
      {
        v11 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      if (v11)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<re::DirectMeshVertexAttribute>>((v4 + 48), v11);
      }

      v12 = 32 * i;
      *v12 = -1;
      *(v12 + 4) = 0;
      *(v12 + 20) = 0;
      *(v12 + 12) = 0;
      *(v12 + 28) = 0;
      v6 = 32 * i + 32;
      v13 = *(v4 + 6);
      v14 = *(v4 + 7) - v13;
      v15 = 32 * i - v14;
      memcpy((v12 - v14), v13, v14);
      v16 = *(v4 + 6);
      *(v4 + 6) = v15;
      *(v4 + 7) = v6;
      *(v4 + 8) = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v6 = -1;
      *(v6 + 16) = *(v19 + 12);
      *(v6 + 4) = v19[0];
      v6 += 32;
    }

    *(v4 + 7) = v6;
    v5 = *(v4 + 6);
  }

  v17 = *MEMORY[0x277D85DE8];
}

BOOL DRMeshDescriptorGetVertexAttributeFormat(uint64_t a1, unint64_t a2, _DWORD *a3, void *a4, void *a5, void *a6)
{
  v6 = a1 - 8;
  if (!a1)
  {
    v6 = 0;
  }

  v7 = *(v6 + 48);
  v8 = (*(v6 + 56) - v7) >> 5;
  if (v8 > a2)
  {
    v9 = v7 + 32 * a2;
    *a3 = *v9;
    v10 = *(v9 + 16);
    *a4 = *(v9 + 8);
    *a5 = v10;
    *a6 = *(v9 + 24);
  }

  return v8 > a2;
}

uint64_t DRMeshDescriptorSetVertexAttributeFormat(uint64_t result, unint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = result - 8;
  if (!result)
  {
    v6 = 0;
  }

  v8 = v6 + 48;
  v7 = *(v6 + 48);
  if (a2 < (*(v8 + 8) - v7) >> 5)
  {
    v9 = v7 + 32 * a2;
    *v9 = a3;
    *(v9 + 8) = a4;
    *(v9 + 16) = a5;
    *(v9 + 24) = a6;
  }

  return result;
}

unint64_t DRMeshDescriptorGetVertexLayoutCount(uint64_t a1)
{
  v1 = a1 - 8;
  if (!a1)
  {
    v1 = 0;
  }

  return 0xCCCCCCCCCCCCCCCDLL * ((*(v1 + 80) - *(v1 + 72)) >> 3);
}

void DRMeshDescriptorSetVertexLayoutCount(void *a1, unint64_t a2)
{
  v3 = a1;
  v17 = v3;
  if (v3)
  {
    v4 = v3 - 8;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v4 + 9);
  v6 = *(v4 + 10);
  v7 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - v5) >> 3);
  if (v7 < a2)
  {
    v18 = vdupq_n_s64(1uLL);
    do
    {
      v8 = *(v4 + 11);
      if (v6 >= v8)
      {
        if (v7 + 1 > 0x666666666666666)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        v9 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - v5) >> 3);
        v10 = 2 * v9;
        if (2 * v9 <= v7 + 1)
        {
          v10 = v7 + 1;
        }

        if (v9 >= 0x333333333333333)
        {
          v11 = 0x666666666666666;
        }

        else
        {
          v11 = v10;
        }

        if (v11)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<re::DirectMeshVertexLayout>>((v4 + 72), v11);
        }

        v12 = 40 * v7;
        *v12 = 0;
        *(v12 + 8) = 0;
        *(v12 + 16) = 0;
        *(v12 + 24) = vdupq_n_s64(1uLL);
        v6 = 40 * v7 + 40;
        v13 = *(v4 + 9);
        v14 = *(v4 + 10) - v13;
        v15 = 40 * v7 - v14;
        memcpy((v12 - v14), v13, v14);
        v16 = *(v4 + 9);
        *(v4 + 9) = v15;
        *(v4 + 10) = v6;
        *(v4 + 11) = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v6 = 0;
        *(v6 + 8) = 0;
        *(v6 + 16) = 0;
        *(v6 + 24) = v18;
        v6 += 40;
      }

      *(v4 + 10) = v6;
      v5 = *(v4 + 9);
      v7 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - v5) >> 3);
    }

    while (v7 < a2);
  }
}

BOOL DRMeshDescriptorGetVertexLayout(uint64_t a1, unint64_t a2, void *a3, void *a4, void *a5)
{
  v5 = a1 - 8;
  if (!a1)
  {
    v5 = 0;
  }

  v6 = *(v5 + 72);
  v7 = 0xCCCCCCCCCCCCCCCDLL * ((*(v5 + 80) - v6) >> 3);
  if (v7 > a2)
  {
    v8 = (v6 + 40 * a2);
    *a3 = *v8;
    *a4 = v8[1];
    *a5 = v8[2];
  }

  return v7 > a2;
}

uint64_t DRMeshDescriptorSetVertexLayout(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = result - 8;
  if (!result)
  {
    v5 = 0;
  }

  v7 = v5 + 72;
  v6 = *(v5 + 72);
  if (0xCCCCCCCCCCCCCCCDLL * ((*(v7 + 8) - v6) >> 3) > a2)
  {
    v8 = (v6 + 40 * a2);
    *v8 = a3;
    v8[1] = a4;
    v8[2] = a5;
  }

  return result;
}

uint64_t DRMeshCreateUnmanaged(uint64_t a1, void *a2, CFErrorRef *a3)
{
  v5 = a2;
  v13 = v5;
  v14 = 0;
  if (a1)
  {
    v6 = a1 - 8;
  }

  else
  {
    v6 = 0;
  }

  re::DirectMesh::create(v6 + 16, &v13, &v12);
  v7 = v12;
  if (a3 && !v12)
  {
    userInfoValues = CFStringCreateWithCString(0, "Direct Mesh Validation Failed", 0x8000100u);
    userInfoKeys = *MEMORY[0x277CBEE30];
    *a3 = CFErrorCreateWithUserInfoKeysAndValues(0, @"DRMeshErrorDomain", 100, &userInfoKeys, &userInfoValues, 1);
    CFRelease(userInfoValues);
    v7 = v12;
  }

  if (v7)
  {
    v8 = v7 + 8;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t DRMeshCopyDescriptor(void *a1)
{
  v1 = a1;
  re::make::shared::object<re::DirectMeshDescriptor>(&v32);
  v2 = v32;
  v3 = (v32 + 16);
  if (v1)
  {
    v4 = v1 - 8;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v4 + 4);
  *(v32 + 16) = *(v4 + 3);
  *(v2 + 32) = v5;
  if (v3 != v4 + 48)
  {
    v6 = *(v2 + 48);
    v7 = *(v4 + 10);
    v8 = *(v4 + 11);
    v9 = v8 - v7;
    v10 = *(v2 + 64);
    if (v10 - v6 < (v8 - v7))
    {
      v11 = v9 >> 5;
      if (v6)
      {
        *(v2 + 56) = v6;
        operator delete(v6);
        v10 = 0;
        *(v2 + 48) = 0;
        *(v2 + 56) = 0;
        *(v2 + 64) = 0;
      }

      if (!(v11 >> 59))
      {
        v12 = v10 >> 4;
        if (v10 >> 4 <= v11)
        {
          v12 = v9 >> 5;
        }

        if (v10 >= 0x7FFFFFFFFFFFFFE0)
        {
          v13 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v12;
        }

        std::vector<re::DirectMeshVertexAttribute>::__vallocate[abi:nn200100](v2 + 48, v13);
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v14 = *(v2 + 56);
    v15 = v14 - v6;
    if (v14 - v6 >= v9)
    {
      if (v8 != v7)
      {
        memmove(*(v2 + 48), *(v4 + 10), v8 - v7);
      }

      v17 = &v6[v9];
    }

    else
    {
      v16 = &v7[v15];
      if (v14 != v6)
      {
        memmove(*(v2 + 48), *(v4 + 10), v15);
        v14 = *(v2 + 56);
      }

      if (v8 != v16)
      {
        memmove(v14, v16, v8 - v16);
      }

      v17 = &v14[v8 - v16];
    }

    *(v2 + 56) = v17;
    v18 = *(v2 + 72);
    v19 = *(v4 + 13);
    v20 = *(v4 + 14);
    v21 = v20 - v19;
    v22 = *(v2 + 88);
    if (v22 - v18 < (v20 - v19))
    {
      v23 = 0xCCCCCCCCCCCCCCCDLL * (v21 >> 3);
      if (v18)
      {
        *(v2 + 80) = v18;
        operator delete(v18);
        v22 = 0;
        *(v2 + 72) = 0;
        *(v2 + 80) = 0;
        *(v2 + 88) = 0;
      }

      if (v23 <= 0x666666666666666)
      {
        v24 = 0xCCCCCCCCCCCCCCCDLL * (v22 >> 3);
        v25 = 2 * v24;
        if (2 * v24 <= v23)
        {
          v25 = 0xCCCCCCCCCCCCCCCDLL * (v21 >> 3);
        }

        if (v24 >= 0x333333333333333)
        {
          v26 = 0x666666666666666;
        }

        else
        {
          v26 = v25;
        }

        std::vector<re::DirectMeshVertexLayout>::__vallocate[abi:nn200100](v2 + 72, v26);
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v27 = *(v2 + 80);
    v28 = v27 - v18;
    if (v27 - v18 >= v21)
    {
      if (v20 != v19)
      {
        memmove(*(v2 + 72), v19, v20 - v19);
      }

      v30 = &v18[v21];
    }

    else
    {
      v29 = &v19[v28];
      if (v27 != v18)
      {
        memmove(*(v2 + 72), v19, v28);
        v27 = *(v2 + 80);
      }

      if (v20 != v29)
      {
        memmove(v27, v29, v20 - v29);
      }

      v30 = &v27[v20 - v29];
    }

    *(v2 + 80) = v30;
  }

  return v2 + 8;
}

uint64_t DRMeshGetVertexCapacity(uint64_t a1)
{
  v1 = a1 - 8;
  if (!a1)
  {
    v1 = 0;
  }

  return *(v1 + 72);
}

uint64_t DRMeshGetIndexCapacity(uint64_t a1)
{
  v1 = a1 - 8;
  if (!a1)
  {
    v1 = 0;
  }

  return *(v1 + 48);
}

unint64_t DRMeshGetPartCount(uint64_t a1)
{
  if (a1)
  {
    v1 = (a1 - 8);
  }

  else
  {
    v1 = 0;
  }

  v2 = re::DirectMesh::parts(v1);
  return 0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 5);
}

uint64_t DRMeshSetPartCount(uint64_t result, re::DirectMeshValidation *a2)
{
  if (result)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      return re::DirectMesh::setPartCount(result - 8, a2);
    }
  }

  return result;
}

void DRMeshSetPartAt(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8)
{
  v13 = a1;
  v14 = v13;
  if (v13)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v15 = re::DirectMesh::parts(v13 - 1);
      if (0xAAAAAAAAAAAAAAABLL * ((v16 - v15) >> 5) > a2)
      {
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __DRMeshSetPartAt_block_invoke;
        v19[3] = &__block_descriptor_104_e34_v24__0__DirectMeshPart_QQQQQQ_8Q16l;
        v22 = a2;
        v23 = a3;
        v24 = a4;
        v25 = a5;
        v26 = a6;
        v20 = a7;
        v21 = a8;
        re::DirectMesh::updateParts(v14 - 8, v19);
      }
    }
  }
}

uint64_t DRMeshGetPartAt(void *a1, unint64_t a2, void *a3, void *a4, void *a5, void *a6, _OWORD *a7, _OWORD *a8)
{
  v15 = a1;
  v16 = v15;
  v17 = 0;
  if (v15 && (a2 & 0x8000000000000000) == 0)
  {
    v18 = re::DirectMesh::parts(v15 - 1);
    if (0xAAAAAAAAAAAAAAABLL * ((v19 - v18) >> 5) <= a2)
    {
      v17 = 0;
    }

    else
    {
      v20 = &re::DirectMesh::parts(v16 - 1)[96 * a2];
      v21 = *(v20 + 1);
      v22 = *(v20 + 2);
      v23 = *(v20 + 3);
      v24 = *(v20 + 3);
      v25 = *(v20 + 4);
      *a3 = *v20;
      *a4 = v21;
      *a5 = v22;
      *a6 = v23;
      *a7 = v24;
      *a8 = v25;
      v17 = 1;
    }
  }

  return v17;
}

uint64_t DRMeshGetPartRenderFlagsAt(void *a1, unint64_t a2)
{
  v3 = a1;
  v4 = v3;
  v5 = 0;
  if (v3 && (a2 & 0x8000000000000000) == 0)
  {
    v6 = re::DirectMesh::parts(v3 - 1);
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 5) <= a2)
    {
      v5 = 0;
    }

    else
    {
      v5 = *&re::DirectMesh::parts(v4 - 1)[96 * a2 + 80];
    }
  }

  return v5;
}

void DRMeshSetPartRenderFlagsAt(void *a1, unint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = v5;
  if (v5)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v7 = re::DirectMesh::parts(v5 - 1);
      if (0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 5) > a2)
      {
        v9[0] = MEMORY[0x277D85DD0];
        v9[1] = 3221225472;
        v9[2] = __DRMeshSetPartRenderFlagsAt_block_invoke;
        v9[3] = &__block_descriptor_48_e34_v24__0__DirectMeshPart_QQQQQQ_8Q16l;
        v9[4] = a2;
        v9[5] = a3;
        re::DirectMesh::updateParts(v6 - 8, v9);
      }
    }
  }
}

unint64_t DRMeshDescriptorCalculateBufferSizes(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v7 = a1 - 8;
  }

  else
  {
    v7 = 0;
  }

  result = re::calculateBufferSizes((v7 + 16), v11);
  v13[0] = v11[0];
  v13[1] = v11[1];
  v14 = v12;
  *a2 = *&v11[0];
  if (a4)
  {
    v9 = 0;
    do
    {
      if (v9 > 3)
      {
        v10 = 0;
      }

      else
      {
        v10 = *(v13 + v9 + 1);
      }

      *(a3 + 8 * v9++) = v10;
    }

    while (a4 != v9);
  }

  return result;
}

void DRMeshReadVertices(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v6 = a1 - 8;
  }

  else
  {
    v6 = 0;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __DRMeshReadVertices_block_invoke;
  v8[3] = &unk_278F7D090;
  v9 = v5;
  v7 = v5;
  re::DirectMesh::readBuffer(v6, a2, v8);
}

void DRMeshReplaceVertices(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v6 = a1 - 8;
  }

  else
  {
    v6 = 0;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __DRMeshReplaceVertices_block_invoke;
  v8[3] = &unk_278F7D0B8;
  v9 = v5;
  v7 = v5;
  re::DirectMesh::replaceBuffer(v6, a2, v8);
}

void DRMeshUpdateVertices(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v6 = a1 - 8;
  }

  else
  {
    v6 = 0;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __DRMeshUpdateVertices_block_invoke;
  v8[3] = &unk_278F7D0B8;
  v9 = v5;
  v7 = v5;
  re::DirectMesh::updateBuffer(v6, a2, v8);
}

void DRMeshReadIndices(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = a1 - 8;
  }

  else
  {
    v4 = 0;
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __DRMeshReadIndices_block_invoke;
  v6[3] = &unk_278F7D090;
  v7 = v3;
  v5 = v3;
  re::DirectMesh::readIndices(v4, v6);
}

void DRMeshReplaceIndices(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = (a1 - 8);
  }

  else
  {
    v4 = 0;
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __DRMeshReplaceIndices_block_invoke;
  v6[3] = &unk_278F7D0B8;
  v7 = v3;
  v5 = v3;
  re::DirectMesh::replaceIndices(v4, v6);
}

void DRMeshUpdateIndices(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = (a1 - 8);
  }

  else
  {
    v4 = 0;
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __DRMeshUpdateIndices_block_invoke;
  v6[3] = &unk_278F7D0B8;
  v7 = v3;
  v5 = v3;
  re::DirectMesh::updateIndices(v4, v6);
}

re::DirectMemoryResource *DRMeshReadVerticesUsing(uint64_t a1, unint64_t a2)
{
  if (a1)
  {
    v2 = a1 - 8;
  }

  else
  {
    v2 = 0;
  }

  return re::DirectMesh::readBuffer(v2, a2);
}

uint64_t DRMeshUpdateVerticesUsing(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = a1 - 8;
  }

  else
  {
    v3 = 0;
  }

  return re::DirectMesh::updateBuffer(v3, a2, a3);
}

uint64_t DRMeshReplaceVerticesUsing(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = a1 - 8;
  }

  else
  {
    v3 = 0;
  }

  return re::DirectMesh::replaceBuffer(v3, a2, a3);
}

uint64_t DRMeshReadIndicesUsing(uint64_t a1)
{
  if (a1)
  {
    return re::DirectMesh::readIndices(a1 - 8);
  }

  else
  {
    return re::DirectMesh::readIndices(0);
  }
}

uint64_t DRMeshUpdateIndicesUsing(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1 - 8;
  }

  else
  {
    v2 = 0;
  }

  return re::DirectMesh::updateIndices(v2, a2);
}

uint64_t DRMeshReplaceIndicesUsing(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1 - 8;
  }

  else
  {
    v2 = 0;
  }

  return re::DirectMesh::replaceIndices(v2, a2);
}

double re::make::shared::object<re::DirectMeshDescriptor>(void *a1)
{
  v2 = operator new(0x60uLL);
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  *(v2 + 3) = 0u;
  *(v2 + 4) = 0u;
  *(v2 + 5) = 0u;
  ArcSharedObject::ArcSharedObject(v2, 0);
  *(v3 + 16) = xmmword_248D650E0;
  *(v3 + 32) = 1;
  result = 0.0;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0;
  *v3 = &unk_285BC1CF8;
  *a1 = v3;
  return result;
}

void re::DirectMeshDescriptor::~DirectMeshDescriptor(re::DirectMeshDescriptor *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }

  ArcSharedObject::~ArcSharedObject(this);
}

{
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }

  ArcSharedObject::~ArcSharedObject(this);

  JUMPOUT(0x24C1E9EB0);
}

id DRFenceCreate(const char *a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = "";
  }

  v2 = operator new(0x50uLL);
  v3 = (re::DirectFence::DirectFence(v2, v1) + 8);

  return v3;
}

uint64_t DRFenceInvalidate(uint64_t a1)
{
  if (a1)
  {
    return re::DirectFence::invalidate(a1 - 8);
  }

  else
  {
    return re::DirectFence::invalidate(0);
  }
}

uint64_t DRFenceGetLabel(uint64_t a1)
{
  v1 = a1 - 8;
  if (!a1)
  {
    v1 = 0;
  }

  result = v1 + 32;
  if (*(v1 + 55) < 0)
  {
    return *result;
  }

  return result;
}

uint64_t DRTextureCreateUnmanaged(uint64_t a1, void *a2, CFErrorRef *a3)
{
  v5 = a2;
  v14 = v5;
  v15 = 0;
  if (a1)
  {
    v6 = a1 - 8;
  }

  else
  {
    v6 = 0;
  }

  re::DirectTexture::create(v6 + 16, &v14, &v13);
  v7 = v13;
  if (a3 && !v13)
  {
    v8 = CFStringCreateWithCString(0, "Direct Texture Validation Failed", 0x8000100u);
    userInfoKeys = *MEMORY[0x277CBEE30];
    userInfoValues = v8;
    *a3 = CFErrorCreateWithUserInfoKeysAndValues(0, @"DirectResourceErrorDomain", 100, &userInfoKeys, &userInfoValues, 1);
    CFRelease(userInfoValues);
    v7 = v13;
  }

  if (v7)
  {
    v9 = v7 + 8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t DRTextureDescriptorCreate()
{
  re::make::shared::object<re::DirectTextureDescriptor>(&v1);
  if (v1)
  {
    return v1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t DRTextureDescriptorGetWidth(uint64_t a1)
{
  v1 = a1 - 8;
  if (!a1)
  {
    v1 = 0;
  }

  return *(v1 + 16);
}

uint64_t DRTextureDescriptorSetWidth(uint64_t result, uint64_t a2)
{
  v2 = result - 8;
  if (!result)
  {
    v2 = 0;
  }

  *(v2 + 16) = a2;
  return result;
}

uint64_t DRTextureDescriptorGetHeight(uint64_t a1)
{
  v1 = a1 - 8;
  if (!a1)
  {
    v1 = 0;
  }

  return *(v1 + 24);
}

uint64_t DRTextureDescriptorSetHeight(uint64_t result, uint64_t a2)
{
  v2 = result - 8;
  if (!result)
  {
    v2 = 0;
  }

  *(v2 + 24) = a2;
  return result;
}

uint64_t DRTextureDescriptorGetDepth(uint64_t a1)
{
  v1 = a1 - 8;
  if (!a1)
  {
    v1 = 0;
  }

  return *(v1 + 32);
}

uint64_t DRTextureDescriptorSetDepth(uint64_t result, uint64_t a2)
{
  v2 = result - 8;
  if (!result)
  {
    v2 = 0;
  }

  *(v2 + 32) = a2;
  return result;
}

uint64_t DRTextureDescriptorGetMipmapLevelCount(uint64_t a1)
{
  v1 = a1 - 8;
  if (!a1)
  {
    v1 = 0;
  }

  return *(v1 + 40);
}

uint64_t DRTextureDescriptorSetMipmapLevelCount(uint64_t result, uint64_t a2)
{
  v2 = result - 8;
  if (!result)
  {
    v2 = 0;
  }

  *(v2 + 40) = a2;
  return result;
}

uint64_t DRTextureDescriptorGetPixelFormat(uint64_t a1)
{
  v1 = a1 - 8;
  if (!a1)
  {
    v1 = 0;
  }

  return *(v1 + 56);
}

uint64_t DRTextureDescriptorSetPixelFormat(uint64_t result, uint64_t a2)
{
  v2 = result - 8;
  if (!result)
  {
    v2 = 0;
  }

  *(v2 + 56) = a2;
  return result;
}

uint64_t DRTextureDescriptorGetTextureType(uint64_t a1)
{
  v1 = a1 - 8;
  if (!a1)
  {
    v1 = 0;
  }

  return *(v1 + 64);
}

uint64_t DRTextureDescriptorSetTextureType(uint64_t result, uint64_t a2)
{
  v2 = result - 8;
  if (!result)
  {
    v2 = 0;
  }

  *(v2 + 64) = a2;
  return result;
}

uint64_t DRTextureDescriptorGetTextureUsage(uint64_t a1)
{
  v1 = a1 - 8;
  if (!a1)
  {
    v1 = 0;
  }

  return *(v1 + 72);
}

uint64_t DRTextureDescriptorSetTextureUsage(uint64_t result, uint64_t a2)
{
  v2 = result - 8;
  if (!result)
  {
    v2 = 0;
  }

  *(v2 + 72) = a2;
  return result;
}

uint64_t DRTextureDescriptorGetArrayLength(uint64_t a1)
{
  v1 = a1 - 8;
  if (!a1)
  {
    v1 = 0;
  }

  return *(v1 + 48);
}

uint64_t DRTextureDescriptorSetArrayLength(uint64_t result, uint64_t a2)
{
  v2 = result - 8;
  if (!result)
  {
    v2 = 0;
  }

  *(v2 + 48) = a2;
  return result;
}

uint64_t DRTextureDescriptorGetSwizzle(uint64_t a1)
{
  v1 = a1 - 8;
  if (!a1)
  {
    v1 = 0;
  }

  return *(v1 + 80);
}

uint64_t DRTextureDescriptorSetSwizzle(uint64_t result, int a2)
{
  v2 = result - 8;
  if (!result)
  {
    v2 = 0;
  }

  *(v2 + 80) = a2;
  return result;
}

uint64_t DRTextureCopyDescriptor(void *a1)
{
  v1 = a1;
  re::make::shared::object<re::DirectTextureDescriptor>(&v10);
  v2 = v10;
  v3 = v1 - 8;
  if (!v1)
  {
    v3 = 0;
  }

  *(v10 + 16) = *(v3 + 3);
  v5 = *(v3 + 5);
  v4 = *(v3 + 6);
  v6 = *(v3 + 4);
  *(v2 + 80) = *(v3 + 28);
  *(v2 + 48) = v5;
  *(v2 + 64) = v4;
  *(v2 + 32) = v6;

  if (v2)
  {
    v7 = (v2 + 8);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v2 + 8;
}

id DRTextureReadTexture(uint64_t a1)
{
  if (a1)
  {
    v1 = (a1 - 8);
  }

  else
  {
    v1 = 0;
  }

  re::DirectTexture::readTexture(v1, &v5);
  v2 = v5;
  v3 = v2;
  if (v2)
  {
  }

  return v3;
}

id DRTextureReplaceTexture(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1 - 8;
  }

  else
  {
    v2 = 0;
  }

  re::DirectTexture::replaceTexture(v2, a2, &v6);
  v3 = v6;
  v4 = v3;
  if (v3)
  {
  }

  return v4;
}

id DRTextureTryReplaceTexture(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1 - 8;
  }

  else
  {
    v2 = 0;
  }

  re::DirectTexture::tryReplaceTexture(v2, a2, &v6);
  v3 = v6;
  v4 = v3;
  if (v3)
  {
  }

  return v4;
}

uint64_t DRTextureReplaceWithMemoryResource(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    v6 = v4 - 8;
  }

  else
  {
    v6 = 0;
  }

  if (v4)
  {
    v7 = v4;
  }

  if (v3)
  {
    v8 = v3 - 8;
  }

  else
  {
    v8 = 0;
  }

  if (v3)
  {
    v9 = v3;
  }

  v13 = v6;
  if (v5)
  {
    v10 = v5;
  }

  v11 = re::DirectTexture::setPayload(v8, 3, 0, &v13);
  if (v13)
  {

    v13 = 0;
  }

  if (v3)
  {
  }

  if (v5)
  {
  }

  return v11;
}

double re::make::shared::object<re::DirectTextureDescriptor>(void *a1)
{
  v2 = operator new(0x58uLL);
  *v2 = 0u;
  v2[1] = 0u;
  v2[2] = 0u;
  v2[3] = 0u;
  v2[4] = 0u;
  *(v2 + 10) = 0;
  ArcSharedObject::ArcSharedObject(v2, 0);
  v3 = vdupq_n_s64(1uLL);
  *(v4 + 16) = v3;
  *(v4 + 32) = v3;
  *(v4 + 48) = xmmword_248D650F0;
  *(v4 + 64) = xmmword_248D65100;
  *&result = 84148994;
  *(v4 + 80) = 84148994;
  *v4 = &unk_285BC1D30;
  *a1 = v4;
  return result;
}

void re::DirectTextureDescriptor::~DirectTextureDescriptor(re::DirectTextureDescriptor *this)
{
  ArcSharedObject::~ArcSharedObject(this);

  JUMPOUT(0x24C1E9EB0);
}

uint64_t DRContextConfigCreate()
{
  v0 = operator new(0x40uLL);
  *v0 = 0u;
  *(v0 + 1) = 0u;
  *(v0 + 2) = 0u;
  *(v0 + 3) = 0u;
  ArcSharedObject::ArcSharedObject(v0, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = xmmword_248D65100;
  *(v1 + 40) = xmmword_248D65360;
  *(v1 + 56) = 0;
  *v1 = &unk_285BC1D68;
  return v1 + 8;
}

void DRContextConfigSetDispatchQueue(uint64_t a1, void *a2)
{
  v2 = a1 - 8;
  if (!a1)
  {
    v2 = 0;
  }

  objc_storeStrong((v2 + 16), a2);
}

uint64_t DRContextConfigSetMode(uint64_t result, uint64_t a2)
{
  v2 = result - 8;
  if (!result)
  {
    v2 = 0;
  }

  *(v2 + 24) = a2;
  return result;
}

uint64_t DRContextConfigGetMode(uint64_t a1)
{
  v1 = a1 - 8;
  if (!a1)
  {
    v1 = 0;
  }

  return *(v1 + 24);
}

uint64_t DRContextConfigSetReuseStrategy(uint64_t result, uint64_t a2)
{
  v2 = result - 8;
  if (!result)
  {
    v2 = 0;
  }

  *(v2 + 32) = a2;
  return result;
}

uint64_t DRContextConfigSetMaxPendingFrames(uint64_t result, uint64_t a2)
{
  v2 = result - 8;
  if (!result)
  {
    v2 = 0;
  }

  *(v2 + 48) = a2;
  return result;
}

uint64_t DRContextConfigSetUnusedResourceMaxAge(uint64_t result, uint64_t a2)
{
  v2 = result - 8;
  if (!result)
  {
    v2 = 0;
  }

  *(v2 + 40) = a2;
  return result;
}

void DRContextConfigSetDevice(void *a1, void *a2)
{
  v8 = a2;
  v3 = a1;
  v4 = v8;
  v5 = v8;
  if (v3)
  {
    v6 = v3 - 8;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v6 + 7);
  if (v7 == v8)
  {
  }

  else
  {
    if (v7)
    {

      v5 = v8;
    }

    *(v6 + 7) = v5;
  }
}

char *DRContextCreate(uint64_t a1)
{
  if (a1)
  {
    v1 = a1 - 8;
  }

  else
  {
    v1 = 0;
  }

  v2 = operator new(0x150uLL);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 56);
  re::DirectResourceContext::DirectResourceContext(v2, &v4);
  if (v7)
  {

    v7 = 0;
  }

  return v2 + 8;
}

char *DRContextCreateMesh(uint64_t a1, uint64_t a2, CFErrorRef *a3)
{
  if (a1)
  {
    v4 = a1 - 8;
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = a2 - 8;
  }

  else
  {
    v5 = 0;
  }

  re::DirectResourceContext::createMesh(v4, v5 + 16, &v11);
  v6 = v11;
  if (a3 && !v11)
  {
    v7 = CFStringCreateWithCString(0, "Direct Mesh Validation Failed", 0x8000100u);
    userInfoKeys = *MEMORY[0x277CBEE30];
    userInfoValues = v7;
    *a3 = CFErrorCreateWithUserInfoKeysAndValues(0, @"DirectResourceErrorDomain", 100, &userInfoKeys, &userInfoValues, 1);
    CFRelease(userInfoValues);
    v6 = v11;
  }

  if (v6)
  {
    return v6 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t DRContextCreateTexture(uint64_t a1, uint64_t a2, CFErrorRef *a3)
{
  if (a1)
  {
    v4 = a1 - 8;
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = a2 - 8;
  }

  else
  {
    v5 = 0;
  }

  re::DirectResourceContext::createTexture(v4, v5 + 16, &v11);
  v6 = v11;
  if (a3 && !v11)
  {
    v7 = CFStringCreateWithCString(0, "Direct Texture Validation Failed", 0x8000100u);
    userInfoKeys = *MEMORY[0x277CBEE30];
    userInfoValues = v7;
    *a3 = CFErrorCreateWithUserInfoKeysAndValues(0, @"DirectResourceErrorDomain", 100, &userInfoKeys, &userInfoValues, 1);
    CFRelease(userInfoValues);
    v6 = v11;
  }

  if (v6)
  {
    return v6 + 8;
  }

  else
  {
    return 0;
  }
}

char *DRContextCreateTextureFromResource(void *a1, void *a2, CFErrorRef *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (v5)
  {
    v8 = v5 - 8;
  }

  else
  {
    v8 = 0;
  }

  v9 = (v6 - 8);
  if (!v6)
  {
    v9 = 0;
  }

  v18 = v9;
  if (v6)
  {
    v10 = v6;
  }

  re::DirectTexture::create(&v18, &v19);
  if (v18)
  {

    v18 = 0;
  }

  if (!v19)
  {
    v14 = "Texture allocation failed";
    if (!a3)
    {
      goto LABEL_19;
    }

LABEL_18:
    v15 = CFStringCreateWithCString(0, v14, 0x8000100u);
    userInfoKeys = *MEMORY[0x277CBEE30];
    userInfoValues = v15;
    *a3 = CFErrorCreateWithUserInfoKeysAndValues(0, @"DirectResourceErrorDomain", 100, &userInfoKeys, &userInfoValues, 1);
    CFRelease(userInfoValues);
    goto LABEL_19;
  }

  v17 = v19;
  v11 = v19 + 8;
  v12 = re::DirectResourceContext::addExistingResource(v8, &v17);
  if (v17)
  {

    v17 = 0;
  }

  if (v12)
  {
    if (v19)
    {
      v13 = v19 + 8;
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_22;
  }

  v14 = "Failed to add texture resource to context";
  if (a3)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (v19)
  {
  }

  v13 = 0;
LABEL_22:

  return v13;
}

char *DRContextCreateBuffer(uint64_t a1, uint64_t a2, CFErrorRef *a3)
{
  if (a1)
  {
    v4 = a1 - 8;
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = a2 - 8;
  }

  else
  {
    v5 = 0;
  }

  re::DirectResourceContext::createBuffer(v4, (v5 + 16), &v11);
  v6 = v11;
  if (a3 && !v11)
  {
    v7 = CFStringCreateWithCString(0, "Direct Texture Validation Failed", 0x8000100u);
    userInfoKeys = *MEMORY[0x277CBEE30];
    userInfoValues = v7;
    *a3 = CFErrorCreateWithUserInfoKeysAndValues(0, @"DirectResourceErrorDomain", 100, &userInfoKeys, &userInfoValues, 1);
    CFRelease(userInfoValues);
    v6 = v11;
  }

  if (v6)
  {
    return v6 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL DRContextHasOpenCommit(char *a1)
{
  if (a1)
  {
    v1 = a1 - 8;
  }

  else
  {
    v1 = 0;
  }

  v2 = *(v1 + 3);
  v3 = a1;
  dispatch_assert_queue_V2(v2);
  v4 = *(v1 + 21);

  return v4 != 0;
}

void DRContextCommit(char *a1)
{
  if (a1)
  {
    v1 = a1 - 8;
  }

  else
  {
    v1 = 0;
  }

  v2 = *(v1 + 3);
  v3 = a1;
  dispatch_assert_queue_V2(v2);
  re::DirectResourceContext::commit(v1);
}

BOOL DRContextSetCommitUserPayload(char *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = a1 - 8;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v4 + 3);
  v6 = a1;
  dispatch_assert_queue_V2(v5);
  v7 = *(v4 + 21);

  if (v7)
  {
    re::XPCObject::retain(v3, &v9);
    re::DirectResourcesPendingCommit::setUserPayload(v7, &v9);
    re::XPCObject::~XPCObject(&v9);
  }

  return v7 != 0;
}

id DRContextGetCommitUserPayload(char *a1)
{
  if (a1)
  {
    v1 = a1 - 8;
  }

  else
  {
    v1 = 0;
  }

  v2 = *(v1 + 3);
  v3 = a1;
  dispatch_assert_queue_V2(v2);
  v4 = *(v1 + 21);

  if (v4)
  {
    v5 = *(*(v4 + 24) + 24);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

BOOL DRContextCommitAddFence(char *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = a1 - 8;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v4 + 3);
  v6 = a1;
  dispatch_assert_queue_V2(v5);
  v7 = *(v4 + 21);

  if (v7)
  {
    if (v3)
    {
      v8 = v3 - 8;
    }

    else
    {
      v8 = 0;
    }

    re::DirectResourcesPendingCommit::addFence(v7, v8);
  }

  return v7 != 0;
}

void DRContextSetOnCommitBegan(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v4 = a1 - 8;
  }

  else
  {
    v4 = 0;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __DRContextSetOnCommitBegan_block_invoke;
  v8[3] = &unk_278F7D0B8;
  v11 = 0;
  v9 = v3;
  v10[0] = &unk_285BC1DA0;
  v5 = v3;
  v6 = a1;
  v10[1] = _Block_copy(v8);
  v11 = v10;
  re::DirectResourceContext::setBeginCallback(v4, v10);

  std::__function::__value_func<void ()(re::DirectResourceContext *,unsigned long long)>::~__value_func[abi:nn200100](v10);
  v7 = *MEMORY[0x277D85DE8];
}

void __DRContextSetOnCommitBegan_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = re::UnownedPtr<re::DirectResourceContext>::operator re::bridge_to_api<re::DirectResourceContext>::type<re::DirectResourceContext,void>(a2);
  (*(v4 + 16))(v4, v5, a3);
}

id re::UnownedPtr<re::DirectResourceContext>::operator re::bridge_to_api<re::DirectResourceContext>::type<re::DirectResourceContext,void>(uint64_t a1)
{
  if (a1)
  {
    return (a1 + 8);
  }

  else
  {
    return 0;
  }
}

void DRContextSetOnCommitComplete(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v4 = a1 - 8;
  }

  else
  {
    v4 = 0;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __DRContextSetOnCommitComplete_block_invoke;
  v8[3] = &unk_278F7D0E8;
  v11 = 0;
  v9 = v3;
  v10[0] = &unk_285BC1DE8;
  v5 = v3;
  v6 = a1;
  v10[1] = _Block_copy(v8);
  v11 = v10;
  re::DirectResourceContext::setCompleteCallback(v4, v10);

  std::__function::__value_func<void ()(re::DirectResourceContext *,re::DirectResourceCommands *)>::~__value_func[abi:nn200100](v10);
  v7 = *MEMORY[0x277D85DE8];
}

void __DRContextSetOnCommitComplete_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v7 = re::UnownedPtr<re::DirectResourceContext>::operator re::bridge_to_api<re::DirectResourceContext>::type<re::DirectResourceContext,void>(a2);
  v5 = (a3 + 8);
  if (!a3)
  {
    v5 = 0;
  }

  v6 = v5;
  (*(v4 + 16))(v4, v7, v6);
}

void DRContextSetChangeObserver(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = a1 - 8;
  }

  else
  {
    v4 = 0;
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __DRContextSetChangeObserver_block_invoke;
  aBlock[3] = &unk_278F7D110;
  v7 = v3;
  v5 = v3;
  re::DirectResourceContext::setObserver(v4, aBlock);
}

void __DRContextSetChangeObserver_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v9 = re::UnownedPtr<re::DirectResourceContext>::operator re::bridge_to_api<re::DirectResourceContext>::type<re::DirectResourceContext,void>(a2);
  v7 = (a4 + 8);
  if (!a4)
  {
    v7 = 0;
  }

  v8 = v7;
  (*(v6 + 16))(v6, v9, a3, v8);
}

void ContextConfig::~ContextConfig(ContextConfig *this)
{
  v2 = *(this + 7);
  if (v2)
  {

    *(this + 7) = 0;
  }

  ArcSharedObject::~ArcSharedObject(this);
}

{
  v2 = *(this + 7);
  if (v2)
  {

    *(this + 7) = 0;
  }

  ArcSharedObject::~ArcSharedObject(this);

  JUMPOUT(0x24C1E9EB0);
}

void std::__function::__func<void({block_pointer} {__strong})(re::DirectResourceContext *,unsigned long long),std::allocator<void({block_pointer} {__strong})(re::DirectResourceContext *,unsigned long long)>,void ()(re::DirectResourceContext *,unsigned long long)>::~__func(uint64_t a1)
{

  JUMPOUT(0x24C1E9EB0);
}

void *std::__function::__func<void({block_pointer} {__strong})(re::DirectResourceContext *,unsigned long long),std::allocator<void({block_pointer} {__strong})(re::DirectResourceContext *,unsigned long long)>,void ()(re::DirectResourceContext *,unsigned long long)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_285BC1DA0;
  result = _Block_copy(*(a1 + 8));
  a2[1] = result;
  return result;
}

uint64_t std::__function::__func<void({block_pointer} {__strong})(re::DirectResourceContext *,unsigned long long),std::allocator<void({block_pointer} {__strong})(re::DirectResourceContext *,unsigned long long)>,void ()(re::DirectResourceContext *,unsigned long long)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  return MEMORY[0x2821F96F8]();
}

uint64_t std::__function::__func<void({block_pointer} {__strong})(re::DirectResourceContext *,unsigned long long),std::allocator<void({block_pointer} {__strong})(re::DirectResourceContext *,unsigned long long)>,void ()(re::DirectResourceContext *,unsigned long long)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  return (*(*(a1 + 8) + 16))();
}

void std::__function::__func<void({block_pointer} {__strong})(re::DirectResourceContext *,re::DirectResourceCommands *),std::allocator<void({block_pointer} {__strong})(re::DirectResourceContext *,re::DirectResourceCommands *)>,void ()(re::DirectResourceContext *,re::DirectResourceCommands *)>::~__func(uint64_t a1)
{

  JUMPOUT(0x24C1E9EB0);
}

void *std::__function::__func<void({block_pointer} {__strong})(re::DirectResourceContext *,re::DirectResourceCommands *),std::allocator<void({block_pointer} {__strong})(re::DirectResourceContext *,re::DirectResourceCommands *)>,void ()(re::DirectResourceContext *,re::DirectResourceCommands *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_285BC1DE8;
  result = _Block_copy(*(a1 + 8));
  a2[1] = result;
  return result;
}

uint64_t std::__function::__func<void({block_pointer} {__strong})(re::DirectResourceContext *,re::DirectResourceCommands *),std::allocator<void({block_pointer} {__strong})(re::DirectResourceContext *,re::DirectResourceCommands *)>,void ()(re::DirectResourceContext *,re::DirectResourceCommands *)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  return MEMORY[0x2821F96F8]();
}

uint64_t std::__function::__func<void({block_pointer} {__strong})(re::DirectResourceContext *,re::DirectResourceCommands *),std::allocator<void({block_pointer} {__strong})(re::DirectResourceContext *,re::DirectResourceCommands *)>,void ()(re::DirectResourceContext *,re::DirectResourceCommands *)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  return (*(*(a1 + 8) + 16))();
}

void DRResourceGetIdentifier(uint64_t a1, uuid_t dst)
{
  v2 = a1 - 8;
  if (!a1)
  {
    v2 = 0;
  }

  uuid_copy(dst, (v2 + 16));
}

uint64_t DRResourceGetClientIdentifier(uint64_t a1)
{
  v1 = a1 - 8;
  if (!a1)
  {
    v1 = 0;
  }

  return *(v1 + 32);
}

id DRResourceAsMesh(void *a1)
{
  v1 = a1;
  if (v1 && (*(*(v1 - 1) + 40))() == 1)
  {
    v2 = v1;
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id DRMeshAsResource(uint64_t a1)
{
  if (a1)
  {
    v1 = a1 - 8;
  }

  else
  {
    v1 = 0;
  }

  v2 = re::UnownedPtr<re::DirectResourceContext>::operator re::bridge_to_api<re::DirectResourceContext>::type<re::DirectResourceContext,void>(v1);

  return v2;
}

id DRResourceAsTexture(void *a1)
{
  v1 = a1;
  if (v1 && (*(*(v1 - 1) + 40))() == 2)
  {
    v2 = v1;
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id DRTextureAsResource(uint64_t a1)
{
  if (a1)
  {
    return re::UnownedPtr<re::DirectResourceContext>::operator re::bridge_to_api<re::DirectResourceContext>::type<re::DirectResourceContext,void>(a1 - 8);
  }

  else
  {
    return re::UnownedPtr<re::DirectResourceContext>::operator re::bridge_to_api<re::DirectResourceContext>::type<re::DirectResourceContext,void>(0);
  }
}

id DRResourceAsBuffer(void *a1)
{
  v1 = a1;
  if (v1 && (*(*(v1 - 1) + 40))() == 3)
  {
    v2 = v1;
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id DRBufferAsResource(uint64_t a1)
{
  if (a1)
  {
    return re::UnownedPtr<re::DirectResourceContext>::operator re::bridge_to_api<re::DirectResourceContext>::type<re::DirectResourceContext,void>(a1 - 8);
  }

  else
  {
    return re::UnownedPtr<re::DirectResourceContext>::operator re::bridge_to_api<re::DirectResourceContext>::type<re::DirectResourceContext,void>(0);
  }
}

id DRResourceAsMaterial(void *a1)
{
  v1 = a1;
  if (v1 && (*(*(v1 - 1) + 40))() == 4)
  {
    v2 = v1;
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id DRMaterialAsResource(uint64_t a1)
{
  if (a1)
  {
    return re::UnownedPtr<re::DirectResourceContext>::operator re::bridge_to_api<re::DirectResourceContext>::type<re::DirectResourceContext,void>(a1 - 8);
  }

  else
  {
    return re::UnownedPtr<re::DirectResourceContext>::operator re::bridge_to_api<re::DirectResourceContext>::type<re::DirectResourceContext,void>(0);
  }
}

uint64_t DRResourceIsAttachedToDevice_RemoveMeAfterVerification(uint64_t a1)
{
  if (a1)
  {
    v1 = a1 - 8;
  }

  else
  {
    v1 = 0;
  }

  return (*(*v1 + 80))();
}

uint64_t DRBufferDescriptorCreate()
{
  v0 = operator new(0x20uLL);
  *v0 = 0u;
  *(v0 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(v0, 0);
  *(v1 + 16) = xmmword_248D65110;
  *v1 = &unk_285BC1E30;
  return v1 + 8;
}

uint64_t DRBufferDescriptorGetCapacity(uint64_t a1)
{
  v1 = a1 - 8;
  if (!a1)
  {
    v1 = 0;
  }

  return *(v1 + 16);
}

uint64_t DRBufferDescriptorSetCapacity(uint64_t result, uint64_t a2)
{
  v2 = result - 8;
  if (!result)
  {
    v2 = 0;
  }

  *(v2 + 16) = a2;
  return result;
}

uint64_t DRBufferDescriptorGetSizeMultiple(uint64_t a1)
{
  v1 = a1 - 8;
  if (!a1)
  {
    v1 = 0;
  }

  return *(v1 + 24);
}

uint64_t DRBufferDescriptorSetSizeMultiple(uint64_t result, uint64_t a2)
{
  v2 = result - 8;
  if (!result)
  {
    v2 = 0;
  }

  *(v2 + 24) = a2;
  return result;
}

uint64_t DRBufferCreateUnmanaged(uint64_t a1, void *a2, CFErrorRef *a3)
{
  v5 = a2;
  v14 = v5;
  v15 = 0;
  if (a1)
  {
    v6 = a1 - 8;
  }

  else
  {
    v6 = 0;
  }

  re::DirectBuffer::create((v6 + 16), &v14, &v13);
  v7 = v13;
  if (a3 && !v13)
  {
    v8 = CFStringCreateWithCString(0, "Buffer Validation Failed", 0x8000100u);
    userInfoKeys = *MEMORY[0x277CBEE30];
    userInfoValues = v8;
    *a3 = CFErrorCreateWithUserInfoKeysAndValues(0, @"DirectResourceErrorDomain", 100, &userInfoKeys, &userInfoValues, 1);
    CFRelease(userInfoValues);
    v7 = v13;
  }

  if (v7)
  {
    v9 = v7 + 8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

char *DRBufferCopyDescriptor(void *a1)
{
  v1 = a1;
  v2 = operator new(0x20uLL);
  *v2 = 0u;
  *(v2 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(v2, 0);
  *v3 = &unk_285BC1E30;
  v4 = v1 - 8;
  if (!v1)
  {
    v4 = 0;
  }

  *(v3 + 16) = *(v4 + 3);

  return v2 + 8;
}

uint64_t DRBufferGetBytesUsed(uint64_t a1)
{
  v1 = a1 - 8;
  if (!a1)
  {
    v1 = 0;
  }

  return *(v1 + 64);
}

BOOL DRBufferSetBytesUsed(uint64_t a1, unint64_t a2)
{
  if (a1)
  {
    v2 = (a1 - 8);
  }

  else
  {
    v2 = 0;
  }

  return re::DirectBuffer::setBytesUsed(v2, a2);
}

uint64_t DRBufferRead(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1 - 8;
  }

  else
  {
    v2 = 0;
  }

  return re::DirectBuffer::read(v2, a2);
}

uint64_t DRBufferReplace(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1 - 8;
  }

  else
  {
    v2 = 0;
  }

  return re::DirectBuffer::replace(v2, a2);
}

uint64_t DRBufferUpdate(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1 - 8;
  }

  else
  {
    v2 = 0;
  }

  return re::DirectBuffer::update(v2, a2);
}

id DRBufferReadUsing(uint64_t a1)
{
  if (a1)
  {
    v1 = a1 - 8;
  }

  else
  {
    v1 = 0;
  }

  re::DirectBuffer::read(v1, &v5);
  v2 = v5;
  v3 = v2;
  if (v2)
  {
  }

  return v3;
}

id DRBufferReplaceUsing(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1 - 8;
  }

  else
  {
    v2 = 0;
  }

  re::DirectBuffer::replace(v2, a2, &v6);
  v3 = v6;
  v4 = v3;
  if (v3)
  {
  }

  return v4;
}

void re::DirectBufferDescriptor::~DirectBufferDescriptor(re::DirectBufferDescriptor *this)
{
  ArcSharedObject::~ArcSharedObject(this);

  JUMPOUT(0x24C1E9EB0);
}

uint64_t DRMemoryResourceCreate(re::MemoryMappedRegion *a1, re::DirectMemoryResource *a2, void *a3)
{
  re::DirectMemoryResource::create(a1, a2, a3, &v4);
  if (v4)
  {
    return v4 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t DRMemoryResourceCopyBuffer(uint64_t a1, void *a2)
{
  if (a1)
  {
    v2 = a1 - 8;
  }

  else
  {
    v2 = 0;
  }

  re::DirectMemoryResource::makeBuffer(a2, v2, &v4);
  return v4;
}

uint64_t DRMemoryResourceCopyToXPC(uint64_t a1, const re::DirectMemoryResource *a2)
{
  if (a1)
  {
    v2 = (a1 - 8);
  }

  else
  {
    v2 = 0;
  }

  re::xpc_object_create(v2, a2);
  return objc_claimAutoreleasedReturnValue();
}

char *DRMemoryResourceCreateFromXPC(void *a1)
{
  v2 = 0;
  if (re::xpc_get_value(a1, &v2))
  {
    if (v2)
    {
      return v2 + 8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (v2)
    {
    }

    return 0;
  }
}

BOOL DRMemoryResourceIsPrivateToProcess(uint64_t a1)
{
  v1 = a1 - 8;
  if (!a1)
  {
    v1 = 0;
  }

  return re::isPrivateToThisProcess(*(v1 + 32));
}

uint64_t DRMemoryResourceGetLength(uint64_t a1)
{
  v1 = a1 - 8;
  if (!a1)
  {
    v1 = 0;
  }

  return *(v1 + 48);
}

UInt8 *DRMemoryResourceGetBytes(uint64_t a1)
{
  if (a1)
  {
    return re::DirectMemoryResource::bytes((a1 - 8));
  }

  else
  {
    return re::DirectMemoryResource::bytes(0);
  }
}

void DRMemoryResourceDidUpdateBytes(uint64_t a1)
{
  v1 = a1 - 8;
  if (!a1)
  {
    v1 = 0;
  }

  v2 = *(v1 + 88);
  if (v2)
  {
  }
}

char *DRMemoryResourceCreateFromSharedTextureHandle(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v10 = v4;
  v5 = v4;
  v6 = v4;
  if (!v4)
  {
    v9 = [objc_msgSend(v3 device)];
    NS::SharedPtr<MTL::Resource>::operator=<MTL::Texture>(&v10, &v9);
    if (v9)
    {
    }

    v6 = v10;
  }

  re::DirectMemoryResource::createWithSharedTexture(v6, v3, 10, 1, &v9);
  if (v9)
  {
    v7 = v9 + 8;
  }

  else
  {
    v7 = 0;
  }

  if (v10)
  {
  }

  return v7;
}

void *DRClientConnectionConfigCreate()
{
  v0 = operator new(0x20uLL);
  *v0 = 0u;
  *(v0 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(v0, 0);
  *v1 = &unk_285BC1E68;
  v1[2] = 0;
  v1[3] = 0;
  return v1 + 1;
}

uint64_t DRClientConnectionConfigSetUserData(uint64_t result, uint64_t a2)
{
  v2 = result - 8;
  if (!result)
  {
    v2 = 0;
  }

  *(v2 + 16) = a2;
  return result;
}

void DRClientConnectionConfigSetServiceQueue(uint64_t a1, void *a2)
{
  v2 = a1 - 8;
  if (!a1)
  {
    v2 = 0;
  }

  objc_storeStrong((v2 + 24), a2);
}

char *DRContextCreateClient(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    v6 = v3 - 8;
  }

  else
  {
    v6 = 0;
  }

  if (v4)
  {
    v7 = v4 - 8;
  }

  else
  {
    v7 = 0;
  }

  v8 = operator new(0x20uLL);
  *v8 = 0u;
  *(v8 + 1) = 0u;
  v9 = (v8 + 16);
  ArcSharedObject::ArcSharedObject(v8, 0);
  *v10 = &unk_285BC1EA0;
  v10[3] = 0;
  *(v8 + 2) = 0;
  v11 = operator new(0x48uLL);
  v12 = re::DirectResourcesCommitQueue::DirectResourcesCommitQueue(v11, v6);
  v13 = *(v8 + 3);
  *(v8 + 3) = v12;
  if (v13)
  {
  }

  v14 = *(v7 + 2);
  v15 = *(v7 + 3);
  v16 = *(v6 + 8);
  v17 = operator new(0xF0uLL);
  v18 = re::DirectResourceClientReceiver::DirectResourceClientReceiver(v17, v14, v15, v16);
  v19 = *v9;
  *v9 = v18;
  if (v19)
  {
  }

  return v8 + 8;
}

id DRClientConnectionGetCommitQueue(uint64_t a1)
{
  v1 = a1 - 8;
  if (!a1)
  {
    v1 = 0;
  }

  return re::UnownedPtr<re::DirectResourceContext>::operator re::bridge_to_api<re::DirectResourceContext>::type<re::DirectResourceContext,void>(*(v1 + 24));
}

uint64_t DRClientConnectionReceive(uint64_t a1, void *a2)
{
  v2 = a1 - 8;
  if (!a1)
  {
    v2 = 0;
  }

  return re::DirectResourceClientReceiver::receiveCommit(*(v2 + 16), a2, *(v2 + 24));
}

id DRClientConnectionTearDown(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1 - 8;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v3 + 3);
  re::DirectResourceClientReceiver::destroyAll(*(v3 + 2), &v7);
  re::DirectResourcesCommitQueue::enqueueCommit_threadSafe(v4, &v7);
  if (v7)
  {

    v7 = 0;
  }

  v5 = re::UnownedPtr<re::DirectResourceContext>::operator re::bridge_to_api<re::DirectResourceContext>::type<re::DirectResourceContext,void>(*(v3 + 3));

  return v5;
}

uint64_t DRContextCreateCommitQueue(uint64_t a1)
{
  if (a1)
  {
    v1 = a1 - 8;
  }

  else
  {
    v1 = 0;
  }

  v2 = operator new(0x48uLL);
  return re::DirectResourcesCommitQueue::DirectResourcesCommitQueue(v2, v1) + 8;
}

uint64_t DRCommitQueueEnumerate(void *a1, const void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = a1 - 8;
  }

  else
  {
    v3 = 0;
  }

  v4 = a1;
  v7[0] = &unk_285BC1ED8;
  v7[1] = _Block_copy(a2);
  v8 = v7;
  re::DirectResourcesCommitQueue::enumerate(v3, v7);

  result = v8;
  if (v8 == v7)
  {
    result = (*(*v8 + 32))(v8);
  }

  else if (v8)
  {
    result = (*(*v8 + 40))();
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t DRCommitQueueApplyThrough(void *a1, unint64_t a2, const void *a3)
{
  v9[4] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v5 = a1 - 8;
  }

  else
  {
    v5 = 0;
  }

  v6 = a1;
  v9[0] = &unk_285BC1F20;
  v9[1] = v5;
  v9[2] = _Block_copy(a3);
  v9[3] = v9;
  re::DirectResourcesCommitQueue::commitThrough(v5, a2, v9);

  result = std::__function::__value_func<void ()(re::DirectResourceEvent const&,unsigned long long)>::~__value_func[abi:nn200100](v9);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t DRCommitQueueGetLastAppliedCommitId(uint64_t a1)
{
  v1 = a1 - 8;
  if (!a1)
  {
    v1 = 0;
  }

  return *(v1 + 24);
}

uint64_t DRCommitQueueGetLatestAvailableCommitId(uint64_t a1)
{
  if (a1)
  {
    return re::DirectResourcesCommitQueue::availableCommitId_threadSafe((a1 - 8));
  }

  else
  {
    return re::DirectResourcesCommitQueue::availableCommitId_threadSafe(0);
  }
}

void DRCommitQueueTakeFrom(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = (a1 - 8);
  }

  else
  {
    v2 = 0;
  }

  if (a2)
  {
    v3 = (a2 - 8);
  }

  else
  {
    v3 = 0;
  }

  re::DirectResourcesCommitQueue::takeCommits_threadSafe(v2, v3);
}

void DRCommitQueueTakeThrough(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    v3 = (a1 - 8);
  }

  else
  {
    v3 = 0;
  }

  if (a2)
  {
    v4 = (a2 - 8);
  }

  else
  {
    v4 = 0;
  }

  re::DirectResourcesCommitQueue::takeCommitsThrough_threadSafe(v3, v4, a3);
}

void ClientConnectionConfig::~ClientConnectionConfig(id *this)
{

  ArcSharedObject::~ArcSharedObject(this);
}

{

  ArcSharedObject::~ArcSharedObject(this);

  JUMPOUT(0x24C1E9EB0);
}

void ClientConnection::~ClientConnection(ClientConnection *this)
{
  *this = &unk_285BC1EA0;
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

  ArcSharedObject::~ArcSharedObject(this);
}

{
  *this = &unk_285BC1EA0;
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

  ArcSharedObject::~ArcSharedObject(this);

  JUMPOUT(0x24C1E9EB0);
}

void std::__function::__func<DRCommitQueueEnumerate::$_0,std::allocator<DRCommitQueueEnumerate::$_0>,BOOL ()(re::DirectResourcesResolvedCommit const*)>::~__func(uint64_t a1)
{

  JUMPOUT(0x24C1E9EB0);
}

void *std::__function::__func<DRCommitQueueEnumerate::$_0,std::allocator<DRCommitQueueEnumerate::$_0>,BOOL ()(re::DirectResourcesResolvedCommit const*)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_285BC1ED8;
  result = _Block_copy(*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<DRCommitQueueEnumerate::$_0,std::allocator<DRCommitQueueEnumerate::$_0>,BOOL ()(re::DirectResourcesResolvedCommit const*)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

uint64_t std::__function::__func<DRCommitQueueEnumerate::$_0,std::allocator<DRCommitQueueEnumerate::$_0>,BOOL ()(re::DirectResourcesResolvedCommit const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(*a2 + 32);
  v6 = *(*a2 + 24);
  v7 = v3;
  v4 = (*(*(a1 + 8) + 16))(*(a1 + 8));

  return v4;
}

void std::__function::__func<DRCommitQueueApplyThrough::$_0,std::allocator<DRCommitQueueApplyThrough::$_0>,void ()(re::DirectResourceEvent const&,unsigned long long)>::~__func(uint64_t a1)
{

  JUMPOUT(0x24C1E9EB0);
}

void *std::__function::__func<DRCommitQueueApplyThrough::$_0,std::allocator<DRCommitQueueApplyThrough::$_0>,void ()(re::DirectResourceEvent const&,unsigned long long)>::__clone(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = &unk_285BC1F20;
  a2[1] = v4;
  result = _Block_copy(v3);
  a2[2] = result;
  return result;
}

void std::__function::__func<DRCommitQueueApplyThrough::$_0,std::allocator<DRCommitQueueApplyThrough::$_0>,void ()(re::DirectResourceEvent const&,unsigned long long)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

void std::__function::__func<DRCommitQueueApplyThrough::$_0,std::allocator<DRCommitQueueApplyThrough::$_0>,void ()(re::DirectResourceEvent const&,unsigned long long)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*a2)
  {
    v4 = *a3;
    v5 = *(a1 + 16);
    v6 = re::DirectResourcesCommitQueue::device(*(a1 + 8));
    re::DirectResourceEvent::makeEvent(a2, v6, &v7);
    (*(v5 + 16))(v5, v7, v4);
    if (v7)
    {
    }
  }
}

uint64_t DRResourcesCommitCopyToXPC(uint64_t a1, const re::DirectResourceCommands *a2)
{
  if (a1)
  {
    v2 = (a1 - 8);
  }

  else
  {
    v2 = 0;
  }

  re::xpc_object_create(v2, a2);
  return objc_claimAutoreleasedReturnValue();
}

id DRResourcesCommitCopyEventWithDevice(uint64_t a1, void *a2)
{
  if (a1)
  {
    v2 = a1 - 8;
  }

  else
  {
    v2 = 0;
  }

  re::DirectResourceEvent::makeEvent((v2 + 32), a2, &v6);
  v3 = v6;
  v4 = v3;
  if (v3)
  {
  }

  return v4;
}

BOOL DRResourcesCommitHasEvent(uint64_t a1)
{
  v1 = a1 - 8;
  if (!a1)
  {
    v1 = 0;
  }

  return *(v1 + 32) != 0;
}

uint64_t DRResourcesCommitGetId(uint64_t a1)
{
  v1 = a1 - 8;
  if (!a1)
  {
    v1 = 0;
  }

  return *(v1 + 16);
}

id DRResourcesCommitGetUserPayload(uint64_t a1)
{
  v1 = a1 - 8;
  if (!a1)
  {
    v1 = 0;
  }

  return *(v1 + 24);
}

void re::directResourceLog()
{
  if (__cxa_guard_acquire(&qword_2810C3978))
  {
    _MergedGlobals = os_log_create("com.apple.re", "DirectResource");

    __cxa_guard_release(&qword_2810C3978);
  }
}

void re::DirectMemoryResource::allocatePrivatePageAligned()
{
  if (__cxa_guard_acquire(&qword_2810C3988))
  {
    _MergedGlobals_0 = *MEMORY[0x277D85FA0];

    __cxa_guard_release(&qword_2810C3988);
  }
}

void re::DirectResourceLoader::corruptResource(re *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  re::toString(a1, v6);
  v4 = 136315138;
  v5 = v6;
  _os_log_error_impl(&dword_248D48000, a2, OS_LOG_TYPE_ERROR, "CorruptResource %s", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void re::DirectResourceContext::freeListWaitTimedOut(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218240;
  v5 = a1;
  v6 = 2048;
  v7 = a2;
  _os_log_error_impl(&dword_248D48000, log, OS_LOG_TYPE_ERROR, "Renderer is at commit %llu, waiting for commit %llu", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void re::DirectResourceClientReceiver::validateAndResolve(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 134217984;
  v5 = v2;
  _os_log_error_impl(&dword_248D48000, a2, OS_LOG_TYPE_ERROR, "Discarding invalid commit from client %llu", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void re::DirectResourceClientReceiver::isValid<re::DirectMesh,re::DirectMeshUpdate>(re *a1)
{
  OUTLINED_FUNCTION_1(a1, *MEMORY[0x277D85DE8], v8, v10, v11, SBYTE2(v11), SHIBYTE(v11));
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_248D48000, v1, v2, "Attempting to create a resource %s which already exists", v3, v4, v5, v6, v9);
  v7 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_1(a1, *MEMORY[0x277D85DE8], v8, v10, v11, SBYTE2(v11), SHIBYTE(v11));
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_248D48000, v1, v2, "Update failed validation for resource %s", v3, v4, v5, v6, v9);
  v7 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_1(a1, *MEMORY[0x277D85DE8], v8, v10, v11, SBYTE2(v11), SHIBYTE(v11));
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_248D48000, v1, v2, "Update destined for unknown resource %s", v3, v4, v5, v6, v9);
  v7 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_1(a1, *MEMORY[0x277D85DE8], v8, v10, v11, SBYTE2(v11), SHIBYTE(v11));
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_248D48000, v1, v2, "Attempting to destroy unknown resource %s", v3, v4, v5, v6, v9);
  v7 = *MEMORY[0x277D85DE8];
}

void std::__function::__func<re::DirectResourceContext::freeListWaitTimedOut(unsigned long long,unsigned long long)::$_0,std::allocator<re::DirectResourceContext::freeListWaitTimedOut(unsigned long long,unsigned long long)::$_0>,void ()(re::DirectFence *)>::operator()(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  (*(*a1 + 24))(__p);
  if (v6 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  *buf = 136315138;
  v8 = v3;
  _os_log_error_impl(&dword_248D48000, a2, OS_LOG_TYPE_ERROR, "\t\tWaiting for %s", buf, 0xCu);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void ArcObjectClass()
{
  if (__cxa_guard_acquire(&qword_2810C3998))
  {
    _MergedGlobals_1 = ArcObjectClass(void)::$_0::operator()();

    __cxa_guard_release(&qword_2810C3998);
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void operator new()
{
    ;
  }
}