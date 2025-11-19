@interface EARContextualData
@end

@implementation EARContextualData

void __54___EARContextualData_initWithConfiguration_overrides___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    [v6 ear_toString];
  }

  else
  {
    v13[0] = 0;
    v13[1] = 0;
    v14 = 0;
  }

  v8 = *(*(a1 + 32) + 8);
  if (v5)
  {
    [v5 ear_toString];
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v12 = 0;
  }

  v15 = __p;
  v9 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((v8 + 48), __p);
  v10 = v9;
  if (*(v9 + 63) < 0)
  {
    operator delete(v9[5]);
  }

  *(v10 + 5) = *v13;
  v10[7] = v14;
  HIBYTE(v14) = 0;
  LOBYTE(v13[0]) = 0;
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(v13[0]);
    }
  }
}

@end