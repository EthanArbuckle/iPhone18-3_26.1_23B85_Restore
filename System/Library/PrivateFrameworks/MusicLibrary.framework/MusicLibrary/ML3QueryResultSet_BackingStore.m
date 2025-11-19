@interface ML3QueryResultSet_BackingStore
- (BOOL)containsPersistentIDs:(const void *)a3;
- (id).cxx_construct;
- (id)backingStoreByRemovingPersistentIDs:(const void *)a3;
- (int64_t)persistentIDAtIndex:(unint64_t)a3;
- (void)enumeratePersistentIDsUsingBlock:(id)a3;
- (void)enumerateSectionsUsingBlock:(id)a3;
- (void)reverseEnumeratePersistentIDsUsingBlock:(id)a3;
- (void)reverseEnumerateSectionsUsingBlock:(id)a3;
@end

@implementation ML3QueryResultSet_BackingStore

- (id).cxx_construct
{
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

- (id)backingStoreByRemovingPersistentIDs:(const void *)a3
{
  begin = self->_persistentIDs.__begin_;
  end = self->_persistentIDs.__end_;
  v7 = objc_alloc_init(ML3QueryResultSet_MutableBackingStore);
  v8 = end - begin;
  if (end != begin)
  {
    v9 = 0;
    v10 = v8 >> 3;
    if (v10 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    do
    {
      v14 = self->_persistentIDs.__begin_[v9];
      if (!std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>(*a3, *(a3 + 1), v14))
      {
        std::vector<unsigned long long>::push_back[abi:ne200100](&v7->super._persistentIDs, &v14);
        v13 = self->_sections.__begin_[v9];
        std::vector<unsigned char>::push_back[abi:ne200100](&v7->super._sections, &v13);
      }

      ++v9;
    }

    while (v11 != v9);
  }

  return v7;
}

- (void)reverseEnumerateSectionsUsingBlock:(id)a3
{
  v4 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x4012000000;
  v22 = __Block_byref_object_copy__17603;
  v23 = __Block_byref_object_dispose__17604;
  v24 = "";
  v25 = 0;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = -1;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__ML3QueryResultSet_BackingStore_reverseEnumerateSectionsUsingBlock___block_invoke;
  v11[3] = &unk_278763BA8;
  v13 = &v19;
  v14 = &v15;
  v5 = v4;
  v12 = v5;
  v6 = MEMORY[0x2318CDB10](v11);
  begin = self->_sections.__begin_;
  end = self->_sections.__end_;
  if (end != begin)
  {
    v9 = v16;
    do
    {
      v10 = *--end;
      if (v10 != *(v9 + 24))
      {
        v6[2](v6);
        v9 = v16;
        *(v16 + 24) = *end;
        begin = self->_sections.__begin_;
      }

      ++v20[7];
    }

    while (end != begin);
  }

  v6[2](v6);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
}

- (void)enumerateSectionsUsingBlock:(id)a3
{
  v4 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x4012000000;
  v22 = __Block_byref_object_copy__17603;
  v23 = __Block_byref_object_dispose__17604;
  v24 = "";
  v25 = 0;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = -1;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__ML3QueryResultSet_BackingStore_enumerateSectionsUsingBlock___block_invoke;
  v11[3] = &unk_278763BA8;
  v13 = &v19;
  v14 = &v15;
  v5 = v4;
  v12 = v5;
  v6 = MEMORY[0x2318CDB10](v11);
  begin = self->_sections.__begin_;
  end = self->_sections.__end_;
  if (begin != end)
  {
    v9 = v16;
    do
    {
      v10 = *begin;
      if (v10 != *(v9 + 24))
      {
        v6[2](v6);
        v9 = v16;
        *(v16 + 24) = v10;
      }

      ++v20[7];
      ++begin;
    }

    while (begin != end);
  }

  v6[2](v6);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
}

- (BOOL)containsPersistentIDs:(const void *)a3
{
  begin = self->_persistentIDs.__begin_;
  end = self->_persistentIDs.__end_;
  if (begin == end)
  {
    return 0;
  }

  v5 = *a3;
  v6 = *(a3 + 1);
  v7 = begin + 1;
  do
  {
    v8 = std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>(v5, v6, *(v7 - 1));
    v10 = v8 == 0;
    result = v8 != 0;
    v10 = !v10 || v7++ == end;
  }

  while (!v10);
  return result;
}

- (void)reverseEnumeratePersistentIDsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = 0;
  end = self->_persistentIDs.__end_;
  do
  {
    if (end == self->_persistentIDs.__begin_)
    {
      break;
    }

    v8 = 0;
    v7 = *--end;
    v4[2](v4, v7, v5++, &v8);
  }

  while ((v8 & 1) == 0);
}

- (void)enumeratePersistentIDsUsingBlock:(id)a3
{
  v4 = a3;
  begin = self->_persistentIDs.__begin_;
  end = self->_persistentIDs.__end_;
  if (begin != end)
  {
    v7 = 0;
    v8 = begin + 1;
    do
    {
      v9 = *(v8 - 1);
      v11 = 0;
      v4[2](v4, v9, v7, &v11);
      if (v11)
      {
        break;
      }

      ++v7;
    }

    while (v8++ != end);
  }
}

- (int64_t)persistentIDAtIndex:(unint64_t)a3
{
  begin = self->_persistentIDs.__begin_;
  v5 = self->_persistentIDs.__end_ - begin;
  if (v5 <= a3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE730] format:{@"Index (%ld) out of bounds (%lu)", a3, v5}];
    begin = self->_persistentIDs.__begin_;
  }

  return begin[a3];
}

@end