@interface TSUUUIDSet
- (BOOL)intersectsSet:(id)a3;
- (BOOL)isAllInvalid;
- (BOOL)isEqual:(id)a3;
- (BOOL)p_removeUUID:(const void *)a3;
- (TSUUUIDSet)initWithUUID:(const void *)a3;
- (TSUUUIDSet)initWithUUIDSet:(id)a3;
- (TSUUUIDSet)initWithUUIDVector:(const void *)a3;
- (UUIDData<TSP::UUIDData>)anyUuid;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)expandedSetWithUuid:(const void *)a3;
- (id)expandedSetWithUuids:(const void *)a3;
- (id)expandedSetWithUuidsFromVector:(const void *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)reducedSetMinusUuid:(const void *)a3;
- (id)reducedSetMinusUuids:(const void *)a3;
- (id)reducedSetMinusUuidsFromVector:(const void *)a3;
- (vector<TSU::UUIDData<TSP::UUIDData>,)uuidsAsVector;
- (void)foreachUuid:(id)a3;
- (void)p_addUUIDs:(const void *)a3;
- (void)p_addUUIDsFromVector:(const void *)a3;
- (void)p_removeUUIDs:(const void *)a3;
- (void)p_removeUUIDsFromVector:(const void *)a3;
@end

@implementation TSUUUIDSet

- (TSUUUIDSet)initWithUUID:(const void *)a3
{
  v7.receiver = self;
  v7.super_class = TSUUUIDSet;
  v4 = [(TSUUUIDSet *)&v7 init];
  v5 = v4;
  if (v4)
  {
    std::__hash_table<TSU::UUIDData<TSP::UUIDData>,std::hash<TSU::UUIDData<TSP::UUIDData>>,std::equal_to<TSU::UUIDData<TSP::UUIDData>>,std::allocator<TSU::UUIDData<TSP::UUIDData>>>::__emplace_unique_key_args<TSU::UUIDData<TSP::UUIDData>,TSU::UUIDData<TSP::UUIDData> const&>(&v4->_uuidSet.__table_.__bucket_list_.__ptr_, a3);
  }

  return v5;
}

- (TSUUUIDSet)initWithUUIDSet:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TSUUUIDSet;
  v5 = [(TSUUUIDSet *)&v9 init];
  v6 = v5;
  if (v4)
  {
    if (v5)
    {
      v7 = v5 == v4;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      v5->_uuidSet.__table_.__max_load_factor_ = v4->_uuidSet.__table_.__max_load_factor_;
      std::__hash_table<TSU::UUIDData<TSP::UUIDData>,std::hash<TSU::UUIDData<TSP::UUIDData>>,std::equal_to<TSU::UUIDData<TSP::UUIDData>>,std::allocator<TSU::UUIDData<TSP::UUIDData>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<TSU::UUIDData<TSP::UUIDData>,void *> *>>(&v5->_uuidSet.__table_.__bucket_list_.__ptr_, v4->_uuidSet.__table_.__first_node_.__next_, 0);
    }
  }

  return v6;
}

- (TSUUUIDSet)initWithUUIDVector:(const void *)a3
{
  v9.receiver = self;
  v9.super_class = TSUUUIDSet;
  v4 = [(TSUUUIDSet *)&v9 init];
  if (v4)
  {
    v6 = *a3;
    v5 = *(a3 + 1);
    while (v6 != v5)
    {
      v8 = *v6;
      std::__hash_table<TSU::UUIDData<TSP::UUIDData>,std::hash<TSU::UUIDData<TSP::UUIDData>>,std::equal_to<TSU::UUIDData<TSP::UUIDData>>,std::allocator<TSU::UUIDData<TSP::UUIDData>>>::__emplace_unique_key_args<TSU::UUIDData<TSP::UUIDData>,TSU::UUIDData<TSP::UUIDData> const&>(&v4->_uuidSet.__table_.__bucket_list_.__ptr_, &v8);
      ++v6;
    }
  }

  return v4;
}

- (vector<TSU::UUIDData<TSP::UUIDData>,)uuidsAsVector
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x4812000000;
  v10 = __Block_byref_object_copy__11;
  v11 = __Block_byref_object_dispose__11;
  v12 = &unk_25D7A51CF;
  v14 = 0;
  v15 = 0;
  __p = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __27__TSUUUIDSet_uuidsAsVector__block_invoke;
  v6[3] = &unk_2799C6C40;
  v6[4] = &v7;
  [(TSUUUIDSet *)self foreachUuid:v6];
  v4 = v8;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  std::vector<TSU::UUIDData<TSP::UUIDData>>::__init_with_size[abi:ne200100]<TSU::UUIDData<TSP::UUIDData>*,TSU::UUIDData<TSP::UUIDData>*>(retstr, v4[6], v4[7], (v4[7] - v4[6]) >> 4);
  _Block_object_dispose(&v7, 8);
  result = __p;
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  return result;
}

void __27__TSUUUIDSet_uuidsAsVector__block_invoke(uint64_t a1, _OWORD *a2)
{
  v3 = *(*(a1 + 32) + 8);
  v5 = v3[7];
  v4 = v3[8];
  if (v5 >= v4)
  {
    v7 = v3[6];
    v8 = (v5 - v7) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<std::shared_ptr<TSUStringChunk>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<_NSRange>>((v3 + 6), v11);
    }

    v12 = (16 * v8);
    *v12 = *a2;
    v6 = 16 * v8 + 16;
    v13 = v3[6];
    v14 = v3[7] - v13;
    v15 = v12 - v14;
    memcpy(v12 - v14, v13, v14);
    v16 = v3[6];
    v3[6] = v15;
    v3[7] = v6;
    v3[8] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  v3[7] = v6;
}

- (id)description
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __25__TSUUUIDSet_description__block_invoke;
  v5[3] = &unk_2799C6C40;
  v5[4] = &v6;
  [(TSUUUIDSet *)self foreachUuid:v5];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>: %@", objc_opt_class(), self, v7[5]];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __25__TSUUUIDSet_description__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v3 = TSU::UUIDData<TSP::UUIDData>::NSStringValue(a2);
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v8 = v3;
  if (v4)
  {
    [v4 appendFormat:@", %@", v3];
  }

  else
  {
    v5 = [MEMORY[0x277CCAB68] stringWithString:v3];
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

- (BOOL)intersectsSet:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (self->_uuidSet.__table_.__size_ <= v4[5])
    {
      v9 = 0;
      v10 = &v9;
      v11 = 0x2020000000;
      v12 = 0;
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __28__TSUUUIDSet_intersectsSet___block_invoke;
      v8[3] = &unk_2799C6C68;
      v8[4] = self;
      v8[5] = &v9;
      [(TSUUUIDSet *)self foreachUuid:v8];
      v6 = *(v10 + 24);
      _Block_object_dispose(&v9, 8);
    }

    else
    {
      v6 = [v4 intersectsSet:self];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void *__28__TSUUUIDSet_intersectsSet___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = std::__hash_table<TSU::UUIDData<TSP::UUIDData>,std::hash<TSU::UUIDData<TSP::UUIDData>>,std::equal_to<TSU::UUIDData<TSP::UUIDData>>,std::allocator<TSU::UUIDData<TSP::UUIDData>>>::find<TSU::UUIDData<TSP::UUIDData>>((*(a1 + 32) + 16), a2);
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = self == v4;
  if (v4 && self != v4)
  {
    if (self->_uuidSet.__table_.__size_ == v4->_uuidSet.__table_.__size_)
    {
      v9 = 0;
      v10 = &v9;
      v11 = 0x2020000000;
      v12 = 0;
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __22__TSUUUIDSet_isEqual___block_invoke;
      v8[3] = &unk_2799C6C68;
      v8[4] = self;
      v8[5] = &v9;
      [(TSUUUIDSet *)self foreachUuid:v8];
      v6 = *(v10 + 24) ^ 1;
      _Block_object_dispose(&v9, 8);
    }

    else
    {
      v6 = 0;
    }
  }

  return v6 & 1;
}

void *__22__TSUUUIDSet_isEqual___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = std::__hash_table<TSU::UUIDData<TSP::UUIDData>,std::hash<TSU::UUIDData<TSP::UUIDData>>,std::equal_to<TSU::UUIDData<TSP::UUIDData>>,std::allocator<TSU::UUIDData<TSP::UUIDData>>>::find<TSU::UUIDData<TSP::UUIDData>>((*(a1 + 32) + 16), a2);
  if (!result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (UUIDData<TSP::UUIDData>)anyUuid
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x4012000000;
  v10 = __Block_byref_object_copy__8;
  v11 = __Block_byref_object_dispose__9;
  v12 = &unk_25D7A51CF;
  v13 = 0;
  v14 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __21__TSUUUIDSet_anyUuid__block_invoke;
  v6[3] = &unk_2799C6C40;
  v6[4] = &v7;
  [(TSUUUIDSet *)self foreachUuid:v6];
  v2 = v8[6];
  v3 = v8[7];
  _Block_object_dispose(&v7, 8);
  v4 = v2;
  v5 = v3;
  result.var0.var2.var1 = v5;
  result.var0.var2.var0 = v4;
  return result;
}

__n128 __21__TSUUUIDSet_anyUuid__block_invoke(uint64_t a1, __n128 *a2, _BYTE *a3)
{
  result = *a2;
  *(*(*(a1 + 32) + 8) + 48) = *a2;
  *a3 = 1;
  return result;
}

- (BOOL)isAllInvalid
{
  if ([(TSUUUIDSet *)self count]!= 1)
  {
    return 0;
  }

  v3 = [(TSUUUIDSet *)self anyUuid];
  return (v3 | v4) == 0;
}

- (id)expandedSetWithUuid:(const void *)a3
{
  v4 = self;
  if (![(TSUUUIDSet *)v4 containsUuid:a3])
  {
    v5 = [(TSUUUIDSet *)v4 copy];

    v4 = v5;
    [(TSUUUIDSet *)v5 p_addUUID:a3];
  }

  return v4;
}

- (id)reducedSetMinusUuid:(const void *)a3
{
  v4 = self;
  if ([(TSUUUIDSet *)v4 containsUuid:a3])
  {
    v5 = [(TSUUUIDSet *)v4 copy];

    v4 = v5;
    [(TSUUUIDSet *)v5 p_removeUUID:a3];
  }

  return v4;
}

- (id)expandedSetWithUuids:(const void *)a3
{
  v4 = self;
  v5 = v4;
  if (*(a3 + 3))
  {
    v6 = [(TSUUUIDSet *)v4 copy];

    v5 = v6;
    [(TSUUUIDSet *)v6 p_addUUIDs:a3];
  }

  return v5;
}

- (id)reducedSetMinusUuids:(const void *)a3
{
  v4 = self;
  v5 = v4;
  if (*(a3 + 3))
  {
    v6 = [(TSUUUIDSet *)v4 copy];

    v5 = v6;
    [(TSUUUIDSet *)v6 p_addUUIDs:a3];
  }

  return v5;
}

- (id)expandedSetWithUuidsFromVector:(const void *)a3
{
  v4 = self;
  v5 = v4;
  if (*(a3 + 1) != *a3)
  {
    v6 = [(TSUUUIDSet *)v4 copy];

    v5 = v6;
    [(TSUUUIDSet *)v6 p_addUUIDsFromVector:a3];
  }

  return v5;
}

- (id)reducedSetMinusUuidsFromVector:(const void *)a3
{
  v4 = self;
  v5 = v4;
  if (*(a3 + 1) != *a3)
  {
    v6 = [(TSUUUIDSet *)v4 copy];

    v5 = v6;
    [(TSUUUIDSet *)v6 p_removeUUIDsFromVector:a3];
  }

  return v5;
}

- (void)foreachUuid:(id)a3
{
  v5 = 0;
  for (i = self->_uuidSet.__table_.__first_node_.__next_; i; i = *i)
  {
    (*(a3 + 2))(a3, i + 2, &v5);
    if (v5)
    {
      break;
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TSUUUIDSet alloc];

  return [(TSUUUIDSet *)v4 initWithUUIDSet:self];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [TSUMutableUUIDSet alloc];

  return [(TSUUUIDSet *)v4 initWithUUIDSet:self];
}

- (BOOL)p_removeUUID:(const void *)a3
{
  v5 = std::__hash_table<TSU::UUIDData<TSP::UUIDData>,std::hash<TSU::UUIDData<TSP::UUIDData>>,std::equal_to<TSU::UUIDData<TSP::UUIDData>>,std::allocator<TSU::UUIDData<TSP::UUIDData>>>::find<TSU::UUIDData<TSP::UUIDData>>(&self->_uuidSet.__table_.__bucket_list_.__ptr_, a3);
  if (v5)
  {
    std::__hash_table<TSU::UUIDData<TSP::UUIDData>,std::hash<TSU::UUIDData<TSP::UUIDData>>,std::equal_to<TSU::UUIDData<TSP::UUIDData>>,std::allocator<TSU::UUIDData<TSP::UUIDData>>>::__erase_unique<TSU::UUIDData<TSP::UUIDData>>(&self->_uuidSet.__table_.__bucket_list_.__ptr_, a3);
  }

  return v5 != 0;
}

- (void)p_addUUIDs:(const void *)a3
{
  for (i = *(a3 + 2); i; i = *i)
  {
    v5 = *(i + 1);
    [(TSUUUIDSet *)self p_addUUID:&v5];
  }
}

- (void)p_removeUUIDs:(const void *)a3
{
  for (i = *(a3 + 2); i; i = *i)
  {
    v5 = *(i + 1);
    [(TSUUUIDSet *)self p_removeUUID:&v5];
  }
}

- (void)p_addUUIDsFromVector:(const void *)a3
{
  for (i = *a3; i != *(a3 + 1); ++i)
  {
    v6 = *i;
    v7 = v6;
    [(TSUUUIDSet *)self p_addUUID:&v7];
  }
}

- (void)p_removeUUIDsFromVector:(const void *)a3
{
  for (i = *a3; i != *(a3 + 1); ++i)
  {
    v6 = *i;
    v7 = v6;
    [(TSUUUIDSet *)self p_removeUUID:&v7];
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  *(self + 12) = 1065353216;
  return self;
}

@end