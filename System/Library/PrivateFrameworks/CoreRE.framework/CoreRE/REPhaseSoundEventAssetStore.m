@interface REPhaseSoundEventAssetStore
- (id).cxx_construct;
- (id)getAssetWithIdentifier:(id)a3 fromAssetID:(unint64_t)a4;
- (void)addAsset:(id)a3 andMixerIdentifiers:(id)a4 forIdentifier:(id)a5 withAssetID:(unint64_t)a6;
- (void)removeEntriesForAssetID:(unint64_t)a3 fromEngine:(id)a4;
@end

@implementation REPhaseSoundEventAssetStore

- (id)getAssetWithIdentifier:(id)a3 fromAssetID:(unint64_t)a4
{
  v6 = a3;
  v7 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(&self->_assetRefMaps.__table_.__bucket_list_.__ptr_, a4);
  if (v7)
  {
    v8 = v7;
    v9 = NSStringHash::operator()(v6);
    v10 = v8[4];
    if (v10)
    {
      v11 = v9;
      v12 = vcnt_s8(v10);
      v12.i16[0] = vaddlv_u8(v12);
      v13 = v12.u32[0];
      if (v12.u32[0] > 1uLL)
      {
        v14 = v9;
        if (v9 >= *&v10)
        {
          v14 = v9 % *&v10;
        }
      }

      else
      {
        v14 = (*&v10 - 1) & v9;
      }

      v15 = *(*&v8[3] + 8 * v14);
      if (v15)
      {
        for (i = *v15; i; i = *i)
        {
          v17 = i[1];
          if (v17 == v11)
          {
            if (NSStringEqual::operator()(i[2], v6))
            {
              v19 = i[3];
              goto LABEL_19;
            }
          }

          else
          {
            if (v13 > 1)
            {
              if (v17 >= *&v10)
              {
                v17 %= *&v10;
              }
            }

            else
            {
              v17 &= *&v10 - 1;
            }

            if (v17 != v14)
            {
              break;
            }
          }
        }
      }
    }
  }

  v19 = 0;
LABEL_19:

  return v19;
}

- (void)removeEntriesForAssetID:(unint64_t)a3 fromEngine:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a4;
  p_assetRefMaps = &self->_assetRefMaps;
  v8 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(&self->_assetRefMaps.__table_.__bucket_list_.__ptr_, a3);
  if (v8)
  {
    v9 = v8;
    for (i = *&v8->_assetRefMaps.__table_.__max_load_factor_; i; i = *i)
    {
      v11 = [v6 assetRegistry];
      [v11 unregisterAssetWithIdentifier:i[2] completion:0];
    }

    v12 = *re::audioLogObjects(v8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v22) = 134217984;
      *(&v22 + 4) = a3;
      _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "[CoreRE] [REPhaseSoundEventAssetStore] Removing entries for assetID: %llu", &v22, 0xCu);
    }

    size = self->_assetRefMaps.__table_.__bucket_list_.__deleter_.__size_;
    ptr = v9->_assetRefMaps.__table_.__bucket_list_.__ptr_;
    v15 = vcnt_s8(size);
    v15.i16[0] = vaddlv_u8(v15);
    if (v15.u32[0] > 1uLL)
    {
      if (ptr >= size)
      {
        ptr %= size;
      }
    }

    else
    {
      ptr &= size - 1;
    }

    isa = p_assetRefMaps->__table_.__bucket_list_.__ptr_[ptr];
    do
    {
      v17 = isa;
      isa = isa->super.isa;
    }

    while (isa != v9);
    if (v17 == &self->_assetRefMaps.__table_.__first_node_)
    {
      goto LABEL_23;
    }

    v18 = v17->_assetRefMaps.__table_.__bucket_list_.__ptr_;
    if (v15.u32[0] > 1uLL)
    {
      if (v18 >= size)
      {
        v18 %= size;
      }
    }

    else
    {
      v18 &= size - 1;
    }

    if (v18 != ptr)
    {
LABEL_23:
      if (!v9->super.isa)
      {
        goto LABEL_24;
      }

      v19 = *(v9->super.isa + 1);
      if (v15.u32[0] > 1uLL)
      {
        if (v19 >= size)
        {
          v19 %= size;
        }
      }

      else
      {
        v19 &= size - 1;
      }

      if (v19 != ptr)
      {
LABEL_24:
        p_assetRefMaps->__table_.__bucket_list_.__ptr_[ptr] = 0;
      }
    }

    v20 = v9->super.isa;
    if (v9->super.isa)
    {
      v21 = *(v20 + 1);
      if (v15.u32[0] > 1uLL)
      {
        if (v21 >= size)
        {
          v21 %= size;
        }
      }

      else
      {
        v21 &= size - 1;
      }

      if (v21 != ptr)
      {
        p_assetRefMaps->__table_.__bucket_list_.__ptr_[v21] = v17;
        v20 = v9->super.isa;
      }
    }

    v17->super.isa = v20;
    v9->super.isa = 0;
    --self->_assetRefMaps.__table_.__size_;
    *&v22 = v9;
    *(&v22 + 1) = &self->_assetRefMaps;
    v23 = 1;
    memset(v24, 0, sizeof(v24));
    std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::unordered_map<NSString * {__strong},REPHASESoundEventAssetRef * {__strong},NSStringHash,NSStringEqual,std::allocator<std::pair<NSString * const {__strong},REPHASESoundEventAssetRef * {__strong}>>>>,void *>,std::__hash_node_destructor<std::allocator<void *>>>::~unique_ptr[abi:ne200100](&v22);
  }
}

- (void)addAsset:(id)a3 andMixerIdentifiers:(id)a4 forIdentifier:(id)a5 withAssetID:(unint64_t)a6
{
  v30 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v24 = v12;
  v13 = objc_opt_new();
  [v13 setAsset:v10];
  [v13 setMixerIdentifiers:v11];
  v14 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(&self->_assetRefMaps.__table_.__bucket_list_.__ptr_, a6);
  v15 = *re::audioLogObjects(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = v10;
    v26 = 2048;
    v27 = a6;
    v28 = 2112;
    v29 = v12;
    _os_log_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_DEFAULT, "[CoreRE] [REPhaseSoundEventAssetStore] Adding entry (%@) for assetID: %llu and identifier %@", buf, 0x20u);
  }

  if (!v14)
  {
    size = self->_assetRefMaps.__table_.__bucket_list_.__deleter_.__size_;
    if (!size)
    {
      goto LABEL_22;
    }

    v18 = vcnt_s8(size);
    v18.i16[0] = vaddlv_u8(v18);
    if (v18.u32[0] > 1uLL)
    {
      v19 = a6;
      if (size <= a6)
      {
        v19 = a6 % size;
      }
    }

    else
    {
      v19 = (size - 1) & a6;
    }

    v20 = self->_assetRefMaps.__table_.__bucket_list_.__ptr_[v19];
    if (!v20 || (v21 = *v20) == 0)
    {
LABEL_22:
      operator new();
    }

    while (1)
    {
      v22 = v21[1];
      if (v22 == a6)
      {
        if (v21[2] == a6)
        {
          *buf = &v24;
          v16 = std::__hash_table<std::__hash_value_type<NSString * {__strong},REPHASESoundEventAssetRef * {__strong}>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},REPHASESoundEventAssetRef * {__strong}>,NSStringHash,NSStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},REPHASESoundEventAssetRef * {__strong}>,NSStringEqual,NSStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},REPHASESoundEventAssetRef * {__strong}>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * const {__strong}&>,std::tuple<>>(v21 + 3, &v24);
          goto LABEL_23;
        }
      }

      else
      {
        if (v18.u32[0] > 1uLL)
        {
          if (v22 >= size)
          {
            v22 %= size;
          }
        }

        else
        {
          v22 &= size - 1;
        }

        if (v22 != v19)
        {
          goto LABEL_22;
        }
      }

      v21 = *v21;
      if (!v21)
      {
        goto LABEL_22;
      }
    }
  }

  *buf = &v24;
  v16 = std::__hash_table<std::__hash_value_type<NSString * {__strong},REPHASESoundEventAssetRef * {__strong}>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},REPHASESoundEventAssetRef * {__strong}>,NSStringHash,NSStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},REPHASESoundEventAssetRef * {__strong}>,NSStringEqual,NSStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},REPHASESoundEventAssetRef * {__strong}>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * const {__strong}&>,std::tuple<>>(v14 + 3, &v24);
LABEL_23:
  v23 = v16[3];
  v16[3] = v13;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  return self;
}

@end