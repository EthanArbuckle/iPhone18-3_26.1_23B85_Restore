@interface DYIABPatcher
- (BOOL)patchBuffer:(unint64_t)a3 bufferData:(void *)a4 bufferLength:(unint64_t)a5 objectMap:(const void *)a6;
- (BOOL)patchBuffers:(DYCommandBufferUID)a3 objectMap:(const void *)a4 commandQueue:(id)a5;
- (BOOL)readPatchingTable:(id)a3;
- (BOOL)writePatchingTableAsJson:(id)a3;
- (DYIABPatcher)initWithPatchingMode:(int)a3;
- (id).cxx_construct;
- (void)findPatchingRequest:(DYCommandBufferUID)a3;
- (void)insertPatchingOp:(DYIABPatchingOp *)a3 commandBufferUid:(DYCommandBufferUID)a4;
@end

@implementation DYIABPatcher

- (DYIABPatcher)initWithPatchingMode:(int)a3
{
  v5.receiver = self;
  v5.super_class = DYIABPatcher;
  result = [(DYIABPatcher *)&v5 init];
  if (result)
  {
    result->_patchingMode = a3;
  }

  return result;
}

- (BOOL)readPatchingTable:(id)a3
{
  v39[16] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v29 = self;
  if (self->_patchingMode == 2)
  {
    v37 = 0;
    v5 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v4 options:0 error:&v37];
    v6 = v37;
    v7 = v6;
    v27 = v5;
    if (v5)
    {
      v36 = v6;
      v28 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v5 options:0 error:&v36];
      v26 = v36;

      if (v28)
      {
        std::__hash_table<std::__hash_value_type<DYCommandBufferUID,std::set<BufferEntry>>,std::__unordered_map_hasher<DYCommandBufferUID,std::__hash_value_type<DYCommandBufferUID,std::set<BufferEntry>>,DYCommandBufferUIDHash,std::equal_to<DYCommandBufferUID>,true>,std::__unordered_map_equal<DYCommandBufferUID,std::__hash_value_type<DYCommandBufferUID,std::set<BufferEntry>>,std::equal_to<DYCommandBufferUID>,DYCommandBufferUIDHash,true>,std::allocator<std::__hash_value_type<DYCommandBufferUID,std::set<BufferEntry>>>>::clear(&v29->_perfectPatchingTable);
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        obj = v28;
        if ([obj countByEnumeratingWithState:&v32 objects:v38 count:16])
        {
          *v33;
          *v33;
          v8 = **(&v32 + 1);
          v31[0] = CommandBufferUIDFromString(**(&v32 + 1));
          v31[1] = v9;
          v39[0] = v31;
          std::__hash_table<std::__hash_value_type<unsigned long long,std::vector<PatchingRequest>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<PatchingRequest>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<PatchingRequest>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::vector<PatchingRequest>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&v29->_optimizedPatchingMap.__table_.__bucket_list_.__ptr_, v31);
          [obj objectForKeyedSubscript:v8];
          objc_claimAutoreleasedReturnValue();
          operator new();
        }

        for (i = v29->_optimizedPatchingMap.__table_.__first_node_.__next_; i; i = *i)
        {
          v12 = i[3];
          v13 = i[4];
          if (v12 != v13)
          {
            do
            {
              for (j = *(*(v12 + 8) + 16); j; j = *j)
              {
                for (k = j[7]; k; k = *k)
                {
                  v16 = k[3];
                  v17 = k[4];
                  v18 = 126 - 2 * __clz(v17 - v16);
                  if (v17 == v16)
                  {
                    v19 = 0;
                  }

                  else
                  {
                    v19 = v18;
                  }

                  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,OffsetPair *,false>(v16, v17, v39, v19, 1, v10);
                }
              }

              v12 += 16;
            }

            while (v12 != v13);
            v12 = i[3];
            v13 = i[4];
          }

          v20 = 126 - 2 * __clz((v13 - v12) >> 4);
          if (v13 == v12)
          {
            v21 = 0;
          }

          else
          {
            v21 = v20;
          }

          std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,PatchingRequest *,false>(v12, v13, v39, v21, 1);
        }

        v22 = 1;
        v28 = obj;
      }

      else
      {
        v23 = [v26 localizedDescription];
        NSLog(&cfstr_ErrorWhenParsi.isa, v4, v23);

        v22 = 0;
      }

      v7 = v26;
    }

    else
    {
      v28 = [v6 localizedDescription];
      NSLog(&cfstr_ErrorWhenReadi.isa, v4, v28);
      v22 = 0;
    }
  }

  else
  {
    NSLog(&cfstr_ReadingPatchin.isa);
    v22 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v22;
}

- (BOOL)writePatchingTableAsJson:(id)a3
{
  v27[2] = *MEMORY[0x277D85DE8];
  v23 = a3;
  v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
  for (i = self->_perfectPatchingTable.__table_.__first_node_.__next_; i; i = *i)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = i[4];
    if (v6 != i + 5)
    {
      do
      {
        v26[0] = @"pointer";
        v7 = DictionaryFromBufferAndOffset(v6 + 4);
        v26[1] = @"pointee";
        v27[0] = v7;
        v8 = DictionaryFromBufferAndOffset(v6 + 6);
        v27[1] = v8;
        v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];

        [v5 addObject:v9];
        v10 = v6[1];
        if (v10)
        {
          do
          {
            v11 = v10;
            v10 = *v10;
          }

          while (v10);
        }

        else
        {
          do
          {
            v11 = v6[2];
            v12 = *v11 == v6;
            v6 = v11;
          }

          while (!v12);
        }

        v6 = v11;
      }

      while (v11 != i + 5);
    }

    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu-%u", i[2], *(i + 6)];
    [v24 setObject:v5 forKey:v13];
  }

  v25 = 0;
  v14 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v24 options:3 error:&v25];
  v15 = v25;
  v16 = v15;
  if (!v14)
  {
    v20 = [v15 localizedDescription];
    NSLog(&cfstr_FailedToGenera.isa, v20);

LABEL_15:
    v19 = 0;
    goto LABEL_16;
  }

  v17 = [MEMORY[0x277CBEBC0] fileURLWithPath:v23];
  v18 = [v14 writeToURL:v17 atomically:1];

  if ((v18 & 1) == 0)
  {
    NSLog(&cfstr_FailedToWriteP.isa, v23);
    goto LABEL_15;
  }

  v19 = 1;
LABEL_16:

  v21 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)insertPatchingOp:(DYIABPatchingOp *)a3 commandBufferUid:(DYCommandBufferUID)a4
{
  v7 = a4;
  var1 = a3->var1;
  v6[0] = a3->var0;
  v6[1] = var1;
  v8 = &v7;
  v5 = std::__hash_table<std::__hash_value_type<DYCommandBufferUID,std::set<BufferEntry>>,std::__unordered_map_hasher<DYCommandBufferUID,std::__hash_value_type<DYCommandBufferUID,std::set<BufferEntry>>,DYCommandBufferUIDHash,std::equal_to<DYCommandBufferUID>,true>,std::__unordered_map_equal<DYCommandBufferUID,std::__hash_value_type<DYCommandBufferUID,std::set<BufferEntry>>,std::equal_to<DYCommandBufferUID>,DYCommandBufferUIDHash,true>,std::allocator<std::__hash_value_type<DYCommandBufferUID,std::set<BufferEntry>>>>::__emplace_unique_key_args<DYCommandBufferUID,std::piecewise_construct_t const&,std::tuple<DYCommandBufferUID const&>,std::tuple<>>(&self->_perfectPatchingTable.__table_.__bucket_list_.__ptr_, &v7);
  std::__tree<BufferEntry>::__emplace_unique_key_args<BufferEntry,BufferEntry const&>((v5 + 4), v6);
}

- (void)findPatchingRequest:(DYCommandBufferUID)a3
{
  v8 = a3;
  result = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_optimizedPatchingMap.__table_.__bucket_list_.__ptr_, &v8.objectId);
  if (result)
  {
    v4 = *(result + 3);
    v5 = *(result + 4);
    if (v4 == v5)
    {
      return 0;
    }

    else
    {
      v6 = 1;
      v7 = *(result + 3);
      while (*v7 <= v8.functionIndex)
      {
        v7 += 4;
        --v6;
        if (v7 == v5)
        {
          return &v4[4 * -v6];
        }
      }

      if (v6 == 1)
      {
        return 0;
      }

      return &v4[4 * -v6];
    }
  }

  return result;
}

- (BOOL)patchBuffers:(DYCommandBufferUID)a3 objectMap:(const void *)a4 commandQueue:(id)a5
{
  v6 = *&a3.functionIndex;
  objectId = a3.objectId;
  v9 = a5;
  if (self->_patchingMode == 2)
  {
    self->_lastProcessedCommandBufferUid.objectId = objectId;
    *&self->_lastProcessedCommandBufferUid.functionIndex = v6;
    v10 = [(DYIABPatcher *)self findPatchingRequest:objectId, v6];
    v11 = v10;
    if (v10)
    {
      v12 = *(v10 + 4);
      if (v12 == 1)
      {
        NSLog(&cfstr_PatchingReques.isa);
LABEL_21:
        v13 = v12 ^ 1;
        goto LABEL_22;
      }

      v14 = v10[1];
      if (!v14)
      {
        goto LABEL_21;
      }

      v15 = v9;
      v16 = *(v14 + 16);
      if (!v16)
      {
LABEL_20:

        *(v11 + 4) = 1;
        goto LABEL_21;
      }

      while (1)
      {
        v17 = GetMTLBufferFromObjectMap(a4, v16[2]);
        if (v17)
        {
          break;
        }

        NSLog(&cfstr_PointerBufferL.isa, v16[2]);
LABEL_19:

        v16 = *v16;
        if (!v16)
        {
          goto LABEL_20;
        }
      }

      CPUAccessibleMTLBufferData::CPUAccessibleMTLBufferData(v22, v17, v15);
      if (v23)
      {
        v18 = [v23 storageMode];
        v19 = &v23;
        if (!v18)
        {
LABEL_15:
          v20 = [*v19 contents];
LABEL_18:
          ProcessPerBufferPatchingRequest((v16 + 3), v20, [v23 length], a4);
          CPUAccessibleMTLBufferData::~CPUAccessibleMTLBufferData(v22);
          goto LABEL_19;
        }

        if (v18 == 2)
        {
          v19 = &v24;
          goto LABEL_15;
        }
      }

      v20 = 0;
      goto LABEL_18;
    }

    NSLog(&cfstr_UnableToFindAM.isa, objectId, v6);
  }

  else
  {
    NSLog(&cfstr_PatchingIsOnly.isa);
  }

  v13 = 0;
LABEL_22:

  return v13;
}

- (BOOL)patchBuffer:(unint64_t)a3 bufferData:(void *)a4 bufferLength:(unint64_t)a5 objectMap:(const void *)a6
{
  v12 = a3;
  if (self->_patchingMode != 2)
  {
    NSLog(&cfstr_PatchingIsOnly.isa, a2, a3, a4, a5, a6);
    goto LABEL_7;
  }

  objectId = self->_lastProcessedCommandBufferUid.objectId;
  if (!objectId)
  {
LABEL_7:
    LOBYTE(v10) = 0;
    return v10;
  }

  v10 = [(DYIABPatcher *)self findPatchingRequest:objectId, *&self->_lastProcessedCommandBufferUid.functionIndex];
  if (v10)
  {
    v10 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(v10[1], &v12);
    if (v10)
    {
      ProcessPerBufferPatchingRequest((v10 + 3), a4, a5, a6);
      LOBYTE(v10) = 1;
    }
  }

  return v10;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 20) = 1065353216;
  return self;
}

@end