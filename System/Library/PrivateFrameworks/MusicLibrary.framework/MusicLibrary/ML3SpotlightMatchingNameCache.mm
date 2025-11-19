@interface ML3SpotlightMatchingNameCache
+ (void)initialize;
+ (void)loadFromLibrary:(id)a3 namesMatchingString:(id)a4 cancelHandler:(id)a5;
- (id).cxx_construct;
- (id)_initWithLibrary:(id)a3 matchString:(id)a4 cancelHandler:(id)a5;
- (void)dealloc;
@end

@implementation ML3SpotlightMatchingNameCache

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
  v2.super_class = ML3SpotlightMatchingNameCache;
  [(ML3SpotlightMatchingNameCache *)&v2 dealloc];
}

- (id)_initWithLibrary:(id)a3 matchString:(id)a4 cancelHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v22.receiver = self;
  v22.super_class = ML3SpotlightMatchingNameCache;
  v12 = [(ML3SpotlightMatchingNameCache *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_library, a3);
    objc_storeStrong(&v13->_matchString, a4);
    if ([v10 length])
    {
      library = v13->_library;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __76__ML3SpotlightMatchingNameCache__initWithLibrary_matchString_cancelHandler___block_invoke;
      v17[3] = &unk_2787640C8;
      v18 = @"SELECT name_order FROM sort_map WHERE ML3SearchStringMatch(?, name)";
      v19 = v10;
      v20 = v13;
      v21 = v11;
      [(ML3MusicLibrary *)library databaseConnectionAllowingWrites:0 withBlock:v17];
    }
  }

  if (v11 && (v11[2](v11) & 1) != 0)
  {
    v15 = 0;
  }

  else
  {
    v15 = v13;
  }

  return v15;
}

void __76__ML3SpotlightMatchingNameCache__initWithLibrary_matchString_cancelHandler___block_invoke(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v10[0] = *(a1 + 40);
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v6 = [v3 executeQuery:v4 withParameters:v5];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__ML3SpotlightMatchingNameCache__initWithLibrary_matchString_cancelHandler___block_invoke_2;
  v7[3] = &unk_278764078;
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  [v6 enumerateRowsWithBlock:v7];
}

void __76__ML3SpotlightMatchingNameCache__initWithLibrary_matchString_cancelHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v16 = v6;
  v8 = [v6 int64ForColumnIndex:0];
  v9 = v7[2];
  if (!*&v9)
  {
    goto LABEL_18;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = v8;
    if (v8 >= *&v9)
    {
      v11 = v8 % *&v9;
    }
  }

  else
  {
    v11 = (*&v9 - 1) & v8;
  }

  v12 = *(*&v7[1] + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v8)
    {
      break;
    }

    if (v10.u32[0] > 1uLL)
    {
      if (v14 >= *&v9)
      {
        v14 %= *&v9;
      }
    }

    else
    {
      v14 &= *&v9 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if (v13[2] != v8)
  {
    goto LABEL_17;
  }

  v15 = *(a1 + 40);
  if (v15)
  {
    LOBYTE(v15) = (*(v15 + 16))();
  }

  *a4 = v15;
}

+ (void)loadFromLibrary:(id)a3 namesMatchingString:(id)a4 cancelHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = __nameCacheLoadingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__ML3SpotlightMatchingNameCache_loadFromLibrary_namesMatchingString_cancelHandler___block_invoke;
  block[3] = &unk_278765798;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v11 = v9;
  v12 = v8;
  v13 = v7;
  dispatch_sync(v10, block);
}

void __83__ML3SpotlightMatchingNameCache_loadFromLibrary_namesMatchingString_cancelHandler___block_invoke(void *a1)
{
  if (__matchingNameCache && *(__matchingNameCache + 64) == a1[4] && ([*(__matchingNameCache + 48) isEqualToString:a1[5]] & 1) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = [[ML3SpotlightMatchingNameCache alloc] _initWithLibrary:a1[4] matchString:a1[5] cancelHandler:a1[6]];
  }

  v3 = __nameCacheAccessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__ML3SpotlightMatchingNameCache_loadFromLibrary_namesMatchingString_cancelHandler___block_invoke_2;
  block[3] = &unk_278765FB8;
  v6 = v2;
  v4 = v2;
  dispatch_sync(v3, block);
}

void __83__ML3SpotlightMatchingNameCache_loadFromLibrary_namesMatchingString_cancelHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    objc_storeStrong(&__matchingNameCache, v1);
    ML3SpotlightMatchingNameCacheTimer(__matchingNameCache);
  }

  if (__matchingNameCache)
  {
    *(__matchingNameCache + 56) = 0;
  }
}

+ (void)initialize
{
  if (objc_opt_class() == a1 && __nameCacheOnce != -1)
  {

    dispatch_once(&__nameCacheOnce, &__block_literal_global_19744);
  }
}

@end