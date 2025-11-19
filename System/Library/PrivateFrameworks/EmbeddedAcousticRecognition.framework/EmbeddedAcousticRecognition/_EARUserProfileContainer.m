@interface _EARUserProfileContainer
+ (void)initialize;
- (NSData)data;
- (NSSet)experimentIds;
- (_EARUserProfileContainer)initWithPath:(id)a3 userId:(id)a4 error:(id *)a5;
- (id).cxx_construct;
- (id)categoriesForOrthography:(id)a3;
- (shared_ptr<const)lmeData;
@end

@implementation _EARUserProfileContainer

+ (void)initialize
{
  v3 = objc_opt_class();
  if (v3 == a1)
  {

    EARLogger::initializeLogging(v3);
  }
}

- (_EARUserProfileContainer)initWithPath:(id)a3 userId:(id)a4 error:(id *)a5
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = _EARUserProfileContainer;
  v9 = [(_EARUserProfileContainer *)&v14 init];
  v10 = v9;
  if (v9)
  {
    if (v7)
    {
      v11 = EARLogger::QuasarOSLogger(v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138477827;
        *&buf[4] = v7;
        _os_log_impl(&dword_1B501D000, v11, OS_LOG_TYPE_INFO, "Reading user profile: path %{private}@", buf, 0xCu);
      }

      [v7 ear_toString];
      std::allocate_shared[abi:ne200100]<std::ifstream,std::allocator<std::ifstream>,std::string,0>();
    }

    v12 = 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (shared_ptr<const)lmeData
{
  v3 = *(self + 12);
  *v2 = *(self + 11);
  v2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  result.var1 = a2;
  result.var0 = self;
  return result;
}

- (NSData)data
{
  if (*(self + 1))
  {
    std::mutex::lock((self + 24));
    std::ios_base::clear((*(self + 1) + *(**(self + 1) - 24)), 0);
    std::istream::seekg();
    std::istream::tellg();
    std::istream::seekg();
    v3 = malloc_type_malloc(size, 0xC5810F23uLL);
    if (v3)
    {
      std::istream::read();
      v3 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v3 length:size];
    }

    std::mutex::unlock((self + 24));
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSSet)experimentIds
{
  if (*(self + 11))
  {
    v3 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:*(*(self + 11) + 384)];
    v4 = *(self + 11);
    v5 = *(v4 + 368);
    v6 = (v4 + 376);
    if (v5 != (v4 + 376))
    {
      do
      {
        v7 = *(v5 + 55);
        if (v7 < 0)
        {
          v8 = v5[4];
          v7 = v5[5];
        }

        else
        {
          v8 = v5 + 4;
        }

        v9 = [MEMORY[0x1E696AEC0] ear_stringWithStringView:{v8, v7}];
        [v3 addObject:v9];

        v10 = v5[1];
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
            v11 = v5[2];
            v12 = *v11 == v5;
            v5 = v11;
          }

          while (!v12);
        }

        v5 = v11;
      }

      while (v11 != v6);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)categoriesForOrthography:(id)a3
{
  v4 = a3;
  v5 = 0;
  if (v4 && *(self + 11))
  {
    std::mutex::lock((self + 24));
    v6 = *(self + 13);
    if (!v6)
    {
      operator new();
    }

    [v4 ear_toString];
    quasar::LmeDataSearch::getCategoriesForOrthography(v6, &__p, v10);
    if (v9 < 0)
    {
      operator delete(__p);
    }

    v5 = EARHelpers::ContainerToNSSet<std::unordered_set<std::string>>(v10);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v10);
    std::mutex::unlock((self + 24));
  }

  return v5;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 850045863;
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 6) = 0u;
  return self;
}

- (void)initWithPath:userId:error:.cold.2()
{
  OUTLINED_FUNCTION_0();
  (*(v0 + 16))();
  OUTLINED_FUNCTION_3(&dword_1B501D000, v1, v2, "Failed to read profile: Internal C++ exception: %s", v3, v4, v5, v6, 2u);
}

@end