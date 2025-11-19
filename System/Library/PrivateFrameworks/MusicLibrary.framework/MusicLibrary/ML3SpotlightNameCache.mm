@interface ML3SpotlightNameCache
+ (id)copyFromLibrary:(id)a3 cancelHandler:(id)a4;
+ (void)initialize;
- (id).cxx_construct;
- (id)_initWithLibrary:(id)a3 cancelHandler:(id)a4;
- (void)dealloc;
@end

@implementation ML3SpotlightNameCache

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  return self;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = ML3SpotlightNameCache;
  [(ML3SpotlightNameCache *)&v2 dealloc];
}

- (id)_initWithLibrary:(id)a3 cancelHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = ML3SpotlightNameCache;
  v9 = [(ML3SpotlightNameCache *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_library, a3);
    library = v10->_library;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __56__ML3SpotlightNameCache__initWithLibrary_cancelHandler___block_invoke;
    v14[3] = &unk_2787640A0;
    v15 = @"SELECT name, name_order FROM sort_map";
    v16 = v10;
    v17 = v8;
    [(ML3MusicLibrary *)library databaseConnectionAllowingWrites:0 withBlock:v14];
  }

  if (v8 && (v8[2](v8) & 1) != 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = v10;
  }

  return v12;
}

void __56__ML3SpotlightNameCache__initWithLibrary_cancelHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 executeQuery:*(a1 + 32)];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__ML3SpotlightNameCache__initWithLibrary_cancelHandler___block_invoke_2;
  v4[3] = &unk_278764078;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v3 enumerateRowsWithBlock:v4];
}

void __56__ML3SpotlightNameCache__initWithLibrary_cancelHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  std::string::basic_string[abi:ne200100]<0>(&__str, [v7 cStringForColumnIndex:0]);
  v9 = [v7 int64ForColumnIndex:1];
  v10 = *(a1 + 32);
  v11 = v10[2];
  if (!*&v11)
  {
    goto LABEL_18;
  }

  v12 = vcnt_s8(v11);
  v12.i16[0] = vaddlv_u8(v12);
  if (v12.u32[0] > 1uLL)
  {
    v13 = v9;
    if (v9 >= *&v11)
    {
      v13 = v9 % *&v11;
    }
  }

  else
  {
    v13 = (*&v11 - 1) & v9;
  }

  v14 = *(*&v10[1] + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    size = v15->__r_.__value_.__l.__size_;
    if (size == v9)
    {
      break;
    }

    if (v12.u32[0] > 1uLL)
    {
      if (size >= *&v11)
      {
        size %= *&v11;
      }
    }

    else
    {
      size &= *&v11 - 1;
    }

    if (size != v13)
    {
      goto LABEL_18;
    }

LABEL_17:
    v15 = v15->__r_.__value_.__r.__words[0];
    if (!v15)
    {
      goto LABEL_18;
    }
  }

  if (v15->__r_.__value_.__r.__words[2] != v9)
  {
    goto LABEL_17;
  }

  std::string::operator=(v15 + 1, &__str);
  v17 = *(a1 + 40);
  if (v17)
  {
    LOBYTE(v17) = (*(v17 + 16))();
  }

  *a4 = v17;
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

+ (id)copyFromLibrary:(id)a3 cancelHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (__nameCacheOnce != -1)
  {
    dispatch_once(&__nameCacheOnce, &__block_literal_global_19744);
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__19745;
  v20 = __Block_byref_object_dispose__19746;
  v21 = 0;
  v7 = __nameCacheLoadingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__ML3SpotlightNameCache_copyFromLibrary_cancelHandler___block_invoke;
  block[3] = &unk_278764050;
  v13 = v5;
  v14 = v6;
  v15 = &v16;
  v8 = v6;
  v9 = v5;
  dispatch_sync(v7, block);
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);
  return v10;
}

void __55__ML3SpotlightNameCache_copyFromLibrary_cancelHandler___block_invoke(void *a1)
{
  if (__nameCache && *(__nameCache + 56) == a1[4])
  {
    v2 = 0;
  }

  else
  {
    v2 = [[ML3SpotlightNameCache alloc] _initWithLibrary:a1[4] cancelHandler:a1[5]];
  }

  v3 = __nameCacheAccessQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__ML3SpotlightNameCache_copyFromLibrary_cancelHandler___block_invoke_2;
  v6[3] = &unk_278766080;
  v4 = a1[6];
  v7 = v2;
  v8 = v4;
  v5 = v2;
  dispatch_sync(v3, v6);
}

void __55__ML3SpotlightNameCache_copyFromLibrary_cancelHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    objc_storeStrong(&__nameCache, v2);
    ML3SpotlightNameCacheTimer();
  }

  v3 = __nameCache;
  if (__nameCache)
  {
    *(__nameCache + 48) = 0;
  }

  v4 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v4, v3);
}

+ (void)initialize
{
  if (objc_opt_class() == a1 && __nameCacheOnce != -1)
  {

    dispatch_once(&__nameCacheOnce, &__block_literal_global_19744);
  }
}

@end