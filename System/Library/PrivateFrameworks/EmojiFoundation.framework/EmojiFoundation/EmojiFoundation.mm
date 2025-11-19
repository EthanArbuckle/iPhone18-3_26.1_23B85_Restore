CEM::AdaptationDatabaseController *std::unique_ptr<CEM::AdaptationDatabaseController>::reset[abi:ne200100](CEM::AdaptationDatabaseController **a1, CEM::AdaptationDatabaseController *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    CEM::AdaptationDatabaseController::~AdaptationDatabaseController(result);

    JUMPOUT(0x1B2716B00);
  }

  return result;
}

void sub_1AF04FF80(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1AF0500D8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t ___ZL25_emojiClientDispatchQueuev_block_invoke()
{
  _emojiClientDispatchQueue(void)::__xpc_queue = dispatch_queue_create("com.apple.TextInput.emoji-client", 0);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1AF050268(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = EMFEmojiPreferencesClient;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id _getSharedSerialOperationQueue(void)
{
  if ((atomic_load_explicit(&qword_1ED6F39D0, memory_order_acquire) & 1) == 0)
  {
    _getSharedSerialOperationQueue();
  }

  if (_getSharedSerialOperationQueue(void)::onceToken != -1)
  {
    _getSharedSerialOperationQueue();
  }

  v0 = _getSharedSerialOperationQueue(void)::__sharedSerialOperationQueue;

  return v0;
}

void sub_1AF05090C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _getSharedSerialOperationQueue()
{
  if (__cxa_guard_acquire(&qword_1ED6F39D0))
  {
    _MergedGlobals_0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);

    __cxa_guard_release(&qword_1ED6F39D0);
  }
}

{
  dispatch_once(&_getSharedSerialOperationQueue(void)::onceToken, &__block_literal_global_12);
}

uint64_t ___Z30_getSharedSerialOperationQueuev_block_invoke()
{
  _getSharedSerialOperationQueue(void)::__sharedSerialOperationQueue = dispatch_queue_create("com.apple.EmojiFoundation.EMFEmojiPreferences.sharedSerialOperationQueue", _MergedGlobals_0);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1AF0517EC()
{

  return MEMORY[0x1EEE6BDD0](v0, 152, 7);
}

uint64_t sub_1AF051864(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF051884(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t _compareEmojiGendersUsingSortCollation(int a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = -1;
  if (a4)
  {
    v5 = 0;
    v6 = -1;
    v7 = -1;
    do
    {
      v8 = *(a3 + 4 * v5);
      if (v8 == a1)
      {
        v7 = v5;
      }

      if (v8 == a2)
      {
        v6 = v5;
      }

      ++v5;
    }

    while (a4 != v5);
  }

  else
  {
    v7 = -1;
    v6 = -1;
  }

  if (v7 >= v6)
  {
    v4 = 1;
  }

  if (v7 == v6)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t _compareEmojiGendersUsingDefaultSortCollation(int a1, int a2)
{
  v2 = 0;
  v3 = -1;
  v4 = -1;
  do
  {
    v5 = kEMFEmojiGenderInclusiveSortCollation[v2];
    if (v5 == a1)
    {
      v4 = v2;
    }

    if (v5 == a2)
    {
      v3 = v2;
    }

    ++v2;
  }

  while (v2 != 4);
  v6 = v4 == v3;
  v7 = v4 < v3;
  v8 = -1;
  if (!v7)
  {
    v8 = 1;
  }

  if (v6)
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

uint64_t _compareEmojiTokensUsingDefaultSortCollation(uint64_t a1, void *a2)
{
  v2 = a2;
  Gender = CEMEmojiTokenGetGender();
  v4 = CEMEmojiTokenGetGender();
  v5 = 0;
  v6 = -1;
  v7 = -1;
  do
  {
    v8 = kEMFEmojiGenderInclusiveSortCollation[v5];
    if (v8 == Gender)
    {
      v7 = v5;
    }

    if (v8 == v4)
    {
      v6 = v5;
    }

    ++v5;
  }

  while (v5 != 4);
  v9 = v7 == v6;
  v10 = v7 < v6;
  v11 = -1;
  if (!v10)
  {
    v11 = 1;
  }

  if (v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  return v12;
}

uint64_t _compareEmojiStringsUsingDefaultSortCollation(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  if (a3)
  {
    v7 = CEMEmojiTokenCreateWithString();
    v8 = CEMEmojiTokenCreateWithString();
    Gender = CEMEmojiTokenGetGender();
    v10 = CEMEmojiTokenGetGender();
    v11 = 0;
    v12 = -1;
    v13 = -1;
    do
    {
      v14 = kEMFEmojiGenderInclusiveSortCollation[v11];
      if (v14 == Gender)
      {
        v13 = v11;
      }

      if (v14 == v10)
      {
        v12 = v11;
      }

      ++v11;
    }

    while (v11 != 4);
    v15 = v13 == v12;
    v16 = v13 < v12;
    v17 = -1;
    if (!v16)
    {
      v17 = 1;
    }

    if (v15)
    {
      v18 = 0;
    }

    else
    {
      v18 = v17;
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (v8)
    {
      CFRelease(v8);
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

uint64_t _compareEmojiTokensUsingGenderInclusiveSortCollation(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 gender];
  v5 = [v3 gender];
  v6 = 0;
  v7 = -1;
  v8 = -1;
  do
  {
    v9 = kEMFEmojiGenderInclusiveSortCollation[v6];
    if (v9 == v4)
    {
      v8 = v6;
    }

    if (v9 == v5)
    {
      v7 = v6;
    }

    ++v6;
  }

  while (v6 != 4);
  v10 = v8 == v7;
  v11 = v8 < v7;
  v12 = -1;
  if (!v11)
  {
    v12 = 1;
  }

  if (v10)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  return v13;
}

CEM::AdaptationDatabaseController *CEM::AdaptationDatabaseController::AdaptationDatabaseController(CEM::AdaptationDatabaseController *this, const __CFString *a2)
{
  *this = 850045863;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  *(this + 8) = 850045863;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 15) = 0;
  CEM::AdaptationDatabaseController::getDefaultSharedAdaptationDatabase(this, this + 16);
  CEM::getUTF8StringFromCFString(a2, this + 144);
  CEM::AdaptationDatabaseController::initializeDatabaseIfNecessary(this);
  return this;
}

void sub_1AF053510(_Unwind_Exception *a1)
{
  if (*(v1 + 167) < 0)
  {
    operator delete(*(v1 + 144));
  }

  v4 = *(v1 + 136);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::mutex::~mutex(v2);
  std::mutex::~mutex(v1);
  _Unwind_Resume(a1);
}

void CEM::AdaptationDatabaseController::getDefaultSharedAdaptationDatabase(std::mutex *this@<X0>, void *a2@<X8>)
{
  {
    std::__fs::filesystem::path::path[abi:ne200100]<char [25],void>(&CEM::AdaptationDatabaseController::getDefaultSharedAdaptationDatabase(void)::databasePath, "/tmp/emoji_adaptation.db");
  }

  CEM::AdaptationDatabaseController::createAdaptationDatabase(this, &CEM::AdaptationDatabaseController::getDefaultSharedAdaptationDatabase(void)::databasePath, a2);
}

uint64_t CEM::AdaptationDatabaseController::initializeDatabaseIfNecessary(CEM::AdaptationDatabaseController *this)
{
  v2 = *(this + 167);
  if (v2 < 0)
  {
    v3 = *(this + 18);
    v2 = *(this + 19);
  }

  else
  {
    v3 = this + 144;
  }

  memset(v6, 0, sizeof(v6));
  v8 = v6;
  std::vector<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&v8);
  CEM::AdaptationDatabase::executeStatement(*(this + 16), v7, v5);
  v6[0] = v5;
  std::vector<std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>::__destroy_vector::operator()[abi:ne200100](v6);
  CEM::Statement::~Statement(v7);
  return 1;
}

void sub_1AF053694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  CEM::Statement::~Statement(va);
  _Unwind_Resume(a1);
}

uint64_t CEM::AdaptationDatabaseController::AdaptationDatabaseController(uint64_t a1, const void *a2, size_t a3)
{
  *a1 = 850045863;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 850045863;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  CEM::AdaptationDatabaseController::getDefaultSharedAdaptationDatabase(a1, (a1 + 128));
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a3 >= 0x17)
  {
    operator new();
  }

  *(a1 + 167) = a3;
  v6 = (a1 + 144);
  if (a3)
  {
    memmove(v6, a2, a3);
  }

  *(v6 + a3) = 0;
  CEM::AdaptationDatabaseController::initializeDatabaseIfNecessary(a1);
  return a1;
}

void sub_1AF0537C8(_Unwind_Exception *a1)
{
  if (*(v1 + 167) < 0)
  {
    operator delete(*v3);
  }

  v5 = *(v1 + 136);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::mutex::~mutex(v2);
  std::mutex::~mutex(v1);
  _Unwind_Resume(a1);
}

uint64_t CEM::AdaptationDatabaseController::AdaptationDatabaseController(uint64_t a1, const void *a2, size_t a3, std::__fs::filesystem::path *a4)
{
  *a1 = 850045863;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 850045863;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  CEM::AdaptationDatabaseController::createAdaptationDatabase(a1, a4, (a1 + 128));
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a3 >= 0x17)
  {
    operator new();
  }

  *(a1 + 167) = a3;
  v7 = (a1 + 144);
  if (a3)
  {
    memmove(v7, a2, a3);
  }

  *(v7 + a3) = 0;
  CEM::AdaptationDatabaseController::initializeDatabaseIfNecessary(a1);
  return a1;
}

void sub_1AF053920(_Unwind_Exception *a1)
{
  if (*(v1 + 167) < 0)
  {
    operator delete(*v3);
  }

  v5 = *(v1 + 136);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::mutex::~mutex(v2);
  std::mutex::~mutex(v1);
  _Unwind_Resume(a1);
}

void CEM::AdaptationDatabaseController::createAdaptationDatabase(std::mutex *this@<X0>, const std::__fs::filesystem::path *a2@<X1>, void *a3@<X8>)
{
  std::mutex::lock(this);
  CEM::AdaptationDatabaseController::getSharedAdaptationDatabaseCache(v6);
  if (SHIBYTE(a2->__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&pn, a2->__pn_.__r_.__value_.__l.__data_, a2->__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    pn = a2->__pn_;
  }

  v7 = std::__hash_table<std::__hash_value_type<std::string,std::weak_ptr<CEM::AdaptationDatabase>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::weak_ptr<CEM::AdaptationDatabase>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::weak_ptr<CEM::AdaptationDatabase>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::weak_ptr<CEM::AdaptationDatabase>>>>::find<std::string>(qword_1ED6F39A0, &pn.__r_.__value_.__l.__data_);
  if (!v7 || (v9 = v7[5], v8 = v7[6], v10[0] = v9, (v10[1] = v8) == 0))
  {
LABEL_10:
    std::allocate_shared[abi:ne200100]<CEM::AdaptationDatabase,std::allocator<CEM::AdaptationDatabase>,std::__fs::filesystem::path const&,0>();
  }

  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (v8->__shared_owners_ == -1)
  {
    std::__shared_weak_count::__release_weak(v8);
    goto LABEL_10;
  }

  std::shared_ptr<CEM::AdaptationDatabase>::shared_ptr[abi:ne200100]<CEM::AdaptationDatabase,0>(a3, v10);
  if (v10[1])
  {
    std::__shared_weak_count::__release_weak(v10[1]);
  }

  if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(pn.__r_.__value_.__l.__data_);
  }

  std::mutex::unlock(this);
}

void sub_1AF053AE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  if (a22 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock(v22);
  _Unwind_Resume(a1);
}

uint64_t CEM::AdaptationDatabaseController::getEmojiId(uint64_t a1, void *__src, size_t __len)
{
  v21[1] = *MEMORY[0x1E69E9840];
  {
  }

  v6 = *(a1 + 167);
  if (v6 < 0)
  {
    v7 = *(a1 + 144);
    v6 = *(a1 + 152);
  }

  else
  {
    v7 = a1 + 144;
  }

  if (byte_1EB62DFEF >= 0)
  {
    v8 = byte_1EB62DFEF;
  }

  else
  {
    v8 = unk_1EB62DFE0;
  }

  if (byte_1EB62DFEF >= 0)
  {
    v9 = &CEM::AdaptationDatabaseController::getEmojiId(std::string_view)const::sql;
  }

  else
  {
    v9 = CEM::AdaptationDatabaseController::getEmojiId(std::string_view)const::sql;
  }

  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  HIBYTE(v14) = __len;
  if (__len)
  {
    memmove(&__dst, __src, __len);
  }

  *(&__dst + __len) = 0;
  v18 = __dst;
  v19 = v14;
  v20 = 3;
  memset(v15, 0, sizeof(v15));
  std::vector<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__init_with_size[abi:ne200100]<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>> const*,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>> const*>(v15, &v18, v21, 1uLL);
  CEM::Statement::Statement(v16, v7, v6, v9, v8, v15);
  v17 = v15;
  std::vector<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&v17);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v18);
  CEM::AdaptationDatabase::executeStatement(*(a1 + 128), v16, &v18);
  if (*(&v18 + 1) == v18)
  {
    goto LABEL_22;
  }

  if (*(*v18 + 80) != 1)
  {
    adaptation_log = cem_logging_get_adaptation_log();
    if (os_log_type_enabled(adaptation_log, OS_LOG_TYPE_ERROR))
    {
      CEM::AdaptationDatabaseController::getEmojiId();
    }

LABEL_22:
    v10 = 0;
    goto LABEL_23;
  }

  v10 = *(*v18 + 56);
LABEL_23:
  v15[0] = &v18;
  std::vector<std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>::__destroy_vector::operator()[abi:ne200100](v15);
  CEM::Statement::~Statement(v16);
  return v10;
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t CEM::AdaptationDatabaseController::createEmojiId(uint64_t a1, void *__src, size_t __len)
{
  v24[1] = *MEMORY[0x1E69E9840];
  {
  }

  v6 = *(a1 + 167);
  if (v6 < 0)
  {
    v7 = *(a1 + 144);
    v6 = *(a1 + 152);
  }

  else
  {
    v7 = a1 + 144;
  }

  if (byte_1EB62E00F >= 0)
  {
    v8 = byte_1EB62E00F;
  }

  else
  {
    v8 = unk_1EB62E000;
  }

  if (byte_1EB62E00F >= 0)
  {
    v9 = &CEM::AdaptationDatabaseController::createEmojiId(std::string_view)::sql;
  }

  else
  {
    v9 = CEM::AdaptationDatabaseController::createEmojiId(std::string_view)::sql;
  }

  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  HIBYTE(v17) = __len;
  if (__len)
  {
    memmove(&__dst, __src, __len);
  }

  *(&__dst + __len) = 0;
  v21 = __dst;
  v22 = v17;
  v23 = 3;
  memset(v18, 0, sizeof(v18));
  std::vector<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__init_with_size[abi:ne200100]<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>> const*,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>> const*>(v18, &v21, v24, 1uLL);
  CEM::Statement::Statement(v19, v7, v6, v9, v8, v18);
  v20 = v18;
  std::vector<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&v20);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v21);
  CEM::AdaptationDatabase::executeStatement(*(a1 + 128), v19, &v21);
  v10 = 0xAAAAAAAAAAAAAAABLL * ((*(&v21 + 1) - v21) >> 3);
  if (v10 != 1)
  {
    if (v10)
    {
      v14 = "(rows.size() == 1) && createEmojiId: Database inconsistency: exactly 1 ID has not been assigned to this emoji; cannot continue.";
      v15 = 70;
    }

    else
    {
      v14 = "(rows.size() > 0) && createEmojiId: Database inconsistency: ID insertion failed; cannot continue.";
      v15 = 69;
    }

    __assert_rtn("createEmojiId", "AdaptationDatabaseController.cpp", v15, v14);
  }

  if (*(*v21 + 80) == 1)
  {
    v11 = *(*v21 + 56);
  }

  else
  {
    adaptation_log = cem_logging_get_adaptation_log();
    if (os_log_type_enabled(adaptation_log, OS_LOG_TYPE_ERROR))
    {
      CEM::AdaptationDatabaseController::createEmojiId();
    }

    v11 = 0;
  }

  v18[0] = &v21;
  std::vector<std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>::__destroy_vector::operator()[abi:ne200100](v18);
  CEM::Statement::~Statement(v19);
  return v11;
}

uint64_t CEM::AdaptationDatabaseController::getStringId(uint64_t a1, void *__src, size_t __len)
{
  v21[1] = *MEMORY[0x1E69E9840];
  {
  }

  v6 = *(a1 + 167);
  if (v6 < 0)
  {
    v7 = *(a1 + 144);
    v6 = *(a1 + 152);
  }

  else
  {
    v7 = a1 + 144;
  }

  if (byte_1EB62DB67 >= 0)
  {
    v8 = byte_1EB62DB67;
  }

  else
  {
    v8 = unk_1EB62DB58;
  }

  if (byte_1EB62DB67 >= 0)
  {
    v9 = &CEM::AdaptationDatabaseController::getStringId(std::string_view)const::sql;
  }

  else
  {
    v9 = CEM::AdaptationDatabaseController::getStringId(std::string_view)const::sql;
  }

  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  HIBYTE(v14) = __len;
  if (__len)
  {
    memmove(&__dst, __src, __len);
  }

  *(&__dst + __len) = 0;
  v18 = __dst;
  v19 = v14;
  v20 = 3;
  memset(v15, 0, sizeof(v15));
  std::vector<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__init_with_size[abi:ne200100]<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>> const*,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>> const*>(v15, &v18, v21, 1uLL);
  CEM::Statement::Statement(v16, v7, v6, v9, v8, v15);
  v17 = v15;
  std::vector<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&v17);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v18);
  CEM::AdaptationDatabase::executeStatement(*(a1 + 128), v16, &v18);
  if (*(&v18 + 1) == v18)
  {
    goto LABEL_22;
  }

  if (*(*v18 + 80) != 1)
  {
    adaptation_log = cem_logging_get_adaptation_log();
    if (os_log_type_enabled(adaptation_log, OS_LOG_TYPE_ERROR))
    {
      CEM::AdaptationDatabaseController::getStringId();
    }

LABEL_22:
    v10 = 0;
    goto LABEL_23;
  }

  v10 = *(*v18 + 56);
LABEL_23:
  v15[0] = &v18;
  std::vector<std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>::__destroy_vector::operator()[abi:ne200100](v15);
  CEM::Statement::~Statement(v16);
  return v10;
}

uint64_t CEM::AdaptationDatabaseController::createStringId(uint64_t a1, void *__src, size_t __len)
{
  v24[1] = *MEMORY[0x1E69E9840];
  {
  }

  v6 = *(a1 + 167);
  if (v6 < 0)
  {
    v7 = *(a1 + 144);
    v6 = *(a1 + 152);
  }

  else
  {
    v7 = a1 + 144;
  }

  if (byte_1EB62E02F >= 0)
  {
    v8 = byte_1EB62E02F;
  }

  else
  {
    v8 = unk_1EB62E020;
  }

  if (byte_1EB62E02F >= 0)
  {
    v9 = &CEM::AdaptationDatabaseController::createStringId(std::string_view)::sql;
  }

  else
  {
    v9 = CEM::AdaptationDatabaseController::createStringId(std::string_view)::sql;
  }

  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  HIBYTE(v17) = __len;
  if (__len)
  {
    memmove(&__dst, __src, __len);
  }

  *(&__dst + __len) = 0;
  v21 = __dst;
  v22 = v17;
  v23 = 3;
  memset(v18, 0, sizeof(v18));
  std::vector<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__init_with_size[abi:ne200100]<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>> const*,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>> const*>(v18, &v21, v24, 1uLL);
  CEM::Statement::Statement(v19, v7, v6, v9, v8, v18);
  v20 = v18;
  std::vector<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&v20);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v21);
  CEM::AdaptationDatabase::executeStatement(*(a1 + 128), v19, &v21);
  v10 = 0xAAAAAAAAAAAAAAABLL * ((*(&v21 + 1) - v21) >> 3);
  if (v10 != 1)
  {
    if (v10)
    {
      v14 = "(rows.size() == 1) && createStringId: Database inconsistency: exactly 1 ID has been not assigned to this string; cannot continue.";
      v15 = 108;
    }

    else
    {
      v14 = "(rows.size() > 0) && createStringId: Database inconsistency: ID insertion failed; cannot continue.";
      v15 = 107;
    }

    __assert_rtn("createStringId", "AdaptationDatabaseController.cpp", v15, v14);
  }

  if (*(*v21 + 80) == 1)
  {
    v11 = *(*v21 + 56);
  }

  else
  {
    adaptation_log = cem_logging_get_adaptation_log();
    if (os_log_type_enabled(adaptation_log, OS_LOG_TYPE_ERROR))
    {
      CEM::AdaptationDatabaseController::createStringId();
    }

    v11 = 0;
  }

  v18[0] = &v21;
  std::vector<std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>::__destroy_vector::operator()[abi:ne200100](v18);
  CEM::Statement::~Statement(v19);
  return v11;
}

void CEM::AdaptationDatabaseController::getRecentEmojisForString(CEM::AdaptationDatabaseController *a1@<X0>, void *a2@<X1>, size_t a3@<X2>, void *a4@<X8>)
{
  StringId = CEM::AdaptationDatabaseController::getStringId(a1, a2, a3);
  if (StringId)
  {

    CEM::AdaptationDatabaseController::getRecentEmojisForStringId(a1, StringId, 3, a4);
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }
}

void CEM::AdaptationDatabaseController::getRecentEmojisForStringId(CEM::AdaptationDatabaseController *this@<X0>, int a2@<W1>, int a3@<W2>, void *a4@<X8>)
{
  v30 = *MEMORY[0x1E69E9840];
  {
  }

  v8 = *(this + 167);
  if (v8 < 0)
  {
    v9 = *(this + 18);
    v8 = *(this + 19);
  }

  else
  {
    v9 = this + 144;
  }

  v10 = byte_1EB62E04F;
  v11 = CEM::AdaptationDatabaseController::getRecentEmojisForStringId(unsigned int,unsigned long)const::sql;
  v12 = unk_1EB62E040;
  LODWORD(v26[0]) = a2;
  v27 = 1;
  v28 = a3;
  v29 = 1;
  __p[1] = 0;
  v23 = 0;
  __p[0] = 0;
  std::vector<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__init_with_size[abi:ne200100]<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>> const*,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>> const*>(__p, v26, &v30, 2uLL);
  if ((v10 & 0x80u) == 0)
  {
    v13 = &CEM::AdaptationDatabaseController::getRecentEmojisForStringId(unsigned int,unsigned long)const::sql;
  }

  else
  {
    v13 = v11;
  }

  if ((v10 & 0x80u) == 0)
  {
    v14 = v10;
  }

  else
  {
    v14 = v12;
  }

  CEM::Statement::Statement(v24, v9, v8, v13, v14, __p);
  v25 = __p;
  std::vector<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&v25);
  for (i = 4; i != -4; i -= 4)
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v26[i]);
  }

  CEM::AdaptationDatabase::executeStatement(*(this + 16), v24, v26);
  v16 = v26[0];
  v17 = v26[1];
  a4[1] = 0;
  a4[2] = 0;
  for (*a4 = 0; v16 != v17; v16 = v19 + 16)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "emoji");
    v18 = std::__tree<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>>::find<std::string>(v16, __p);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p[0]);
    }

    v19 = v16 + 8;
    if (v19 != v18 && *(v18 + 80) == 3)
    {
      v20 = a4[1];
      if (v20 >= a4[2])
      {
        v21 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a4, (v18 + 56));
      }

      else
      {
        std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a4, (v18 + 56));
        v21 = v20 + 1;
      }

      a4[1] = v21;
    }
  }

  __p[0] = v26;
  std::vector<std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>::__destroy_vector::operator()[abi:ne200100](__p);
  CEM::Statement::~Statement(v24);
}

void CEM::AdaptationDatabaseController::enumerateRecentEmojisForAllStrings(uint64_t a1, std::vector<std::string>::size_type __n)
{
  v22 = *MEMORY[0x1E69E9840];
  {
  }

  v17 = 0;
  v18 = 0;
  v19 = 0;
  __p = 0;
  v15 = 0;
  v16 = 0;
  memset(&v13, 0, sizeof(v13));
  std::vector<std::string>::reserve(&v13, __n);
  v4 = *(a1 + 167);
  if (v4 < 0)
  {
    v5 = *(a1 + 144);
    v4 = *(a1 + 152);
  }

  else
  {
    v5 = a1 + 144;
  }

  v6 = byte_1EB62E06F;
  v7 = CEM::AdaptationDatabaseController::enumerateRecentEmojisForAllStrings(unsigned long,std::function<void ()(std::string_view,std::vector<std::string> const&)>)const::sql;
  v8 = unk_1EB62E060;
  v21[0] = __n;
  v21[6] = 1;
  memset(v11, 0, sizeof(v11));
  std::vector<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__init_with_size[abi:ne200100]<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>> const*,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>> const*>(v11, v21, &v22, 1uLL);
  if ((v6 & 0x80u) == 0)
  {
    v9 = &CEM::AdaptationDatabaseController::enumerateRecentEmojisForAllStrings(unsigned long,std::function<void ()(std::string_view,std::vector<std::string> const&)>)const::sql;
  }

  else
  {
    v9 = v7;
  }

  if ((v6 & 0x80u) == 0)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  CEM::Statement::Statement(v12, v5, v4, v9, v10, v11);
  v20[0] = v11;
  std::vector<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](v20);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v21);
  v20[4] = 0;
  operator new();
}

void std::vector<std::string>::reserve(std::vector<std::string> *this, std::vector<std::string>::size_type __n)
{
  if (0xAAAAAAAAAAAAAAABLL * ((this->__end_cap_.__value_ - this->__begin_) >> 3) < __n)
  {
    if (__n < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(this, __n);
    }

    std::vector<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }
}

void CEM::AdaptationDatabaseController::enumerateStringAndStringId(uint64_t a1, uint64_t a2)
{
  v12[4] = *MEMORY[0x1E69E9840];
  {
  }

  v4 = *(a1 + 167);
  if (v4 < 0)
  {
    v5 = *(a1 + 144);
    v4 = *(a1 + 152);
  }

  else
  {
    v5 = a1 + 144;
  }

  if (byte_1EB62E08F >= 0)
  {
    v6 = byte_1EB62E08F;
  }

  else
  {
    v6 = unk_1EB62E080;
  }

  if (byte_1EB62E08F >= 0)
  {
    v7 = &CEM::AdaptationDatabaseController::enumerateStringAndStringId(std::function<void ()(std::string_view,unsigned int)>)const::sql;
  }

  else
  {
    v7 = CEM::AdaptationDatabaseController::enumerateStringAndStringId(std::function<void ()(std::string_view,unsigned int)>)const::sql;
  }

  memset(v9, 0, sizeof(v9));
  CEM::Statement::Statement(v10, v5, v4, v7, v6, v9);
  v11 = v9;
  std::vector<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&v11);
  v8 = *(a1 + 128);
  v12[0] = &unk_1F24C8328;
  v12[1] = a2;
  v12[3] = v12;
  CEM::AdaptationDatabase::executeStatement(v8, v10, v12);
  std::__function::__value_func<void ()(std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>> const&)>::~__value_func[abi:ne200100](v12);
  CEM::Statement::~Statement(v10);
}

uint64_t CEM::AdaptationDatabaseController::recordEmojiEngagement(uint64_t a1, void *a2, size_t a3, void *a4, size_t a5)
{
  v29 = *MEMORY[0x1E69E9840];
  std::mutex::lock((a1 + 64));
  if (CEM::AdaptationDatabase::isConnected(*(a1 + 128)))
  {
    {
    }

    StringId = CEM::AdaptationDatabaseController::getStringId(a1, a2, a3);
    if (!StringId)
    {
      StringId = CEM::AdaptationDatabaseController::createStringId(a1, a2, a3);
    }

    EmojiId = CEM::AdaptationDatabaseController::getEmojiId(a1, a4, a5);
    if (!EmojiId)
    {
      EmojiId = CEM::AdaptationDatabaseController::createEmojiId(a1, a4, a5);
    }

    v12 = *(a1 + 167);
    if (v12 < 0)
    {
      v13 = *(a1 + 144);
      v12 = *(a1 + 152);
    }

    else
    {
      v13 = a1 + 144;
    }

    v14 = byte_1EB62E0AF;
    v15 = CEM::AdaptationDatabaseController::recordEmojiEngagement(std::string_view,std::string_view)::sql;
    v16 = unk_1EB62E0A0;
    LODWORD(v25[0]) = StringId;
    v26 = 1;
    v27 = EmojiId;
    v28 = 1;
    memset(v22, 0, sizeof(v22));
    std::vector<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__init_with_size[abi:ne200100]<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>> const*,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>> const*>(v22, v25, &v29, 2uLL);
    if ((v14 & 0x80u) == 0)
    {
      v17 = &CEM::AdaptationDatabaseController::recordEmojiEngagement(std::string_view,std::string_view)::sql;
    }

    else
    {
      v17 = v15;
    }

    if ((v14 & 0x80u) == 0)
    {
      v18 = v14;
    }

    else
    {
      v18 = v16;
    }

    CEM::Statement::Statement(v23, v13, v12, v17, v18, v22);
    v24 = v22;
    std::vector<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&v24);
    for (i = 4; i != -4; i -= 4)
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v25[i]);
    }

    CEM::AdaptationDatabase::executeStatement(*(a1 + 128), v23, v21);
    v25[0] = v21;
    std::vector<std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>::__destroy_vector::operator()[abi:ne200100](v25);
    CEM::Statement::~Statement(v23);
  }

  else
  {
    StringId = 0;
  }

  std::mutex::unlock((a1 + 64));
  return StringId;
}

void sub_1AF0551AC(_Unwind_Exception *a1)
{
  std::mutex::unlock(v1 + 1);
  _Unwind_Resume(a1);
}

void *CEM::AdaptationDatabaseController::getSharedAdaptationDatabaseCache(CEM::AdaptationDatabaseController *this)
{
  if ((atomic_load_explicit(&_MergedGlobals, memory_order_acquire) & 1) == 0)
  {
    CEM::AdaptationDatabaseController::getSharedAdaptationDatabaseCache();
  }

  return &unk_1ED6F39A0;
}

uint64_t CEM::AdaptationDatabaseController::setLocale(uint64_t a1, const std::string::value_type *__s1, size_t __n)
{
  v6 = (a1 + 144);
  v7 = *(a1 + 167);
  if (v7 < 0)
  {
    v8 = *(a1 + 144);
    v7 = *(a1 + 152);
  }

  else
  {
    v8 = (a1 + 144);
  }

  if (__n != v7 || (result = memcmp(__s1, v8, __n), result))
  {
    std::string::__assign_external(v6, __s1, __n);

    return CEM::AdaptationDatabaseController::initializeDatabaseIfNecessary(a1);
  }

  return result;
}

void CEM::AdaptationDatabaseController::reset(CEM::AdaptationDatabaseController *this)
{
  if (CEM::AdaptationDatabase::isConnected(*(this + 16)))
  {
    v2 = *(this + 167);
    if (v2 < 0)
    {
      v3 = *(this + 18);
      v2 = *(this + 19);
    }

    else
    {
      v3 = this + 144;
    }

    memset(v5, 0, sizeof(v5));
    v7 = v5;
    std::vector<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&v7);
    CEM::AdaptationDatabase::executeStatement(*(this + 16), v6, v4);
    v5[0] = v4;
    std::vector<std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>::__destroy_vector::operator()[abi:ne200100](v5);
    CEM::Statement::~Statement(v6);
  }
}

void sub_1AF055390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  CEM::Statement::~Statement(va);
  _Unwind_Resume(a1);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E7A4CB20, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

uint64_t std::vector<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__init_with_size[abi:ne200100]<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>> const*,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1AF055510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>(a1, a2);
  }

  std::vector<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>> const*,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>> const*,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](a4, v6);
      v6 += 32;
      a4 += 32;
      v7 -= 32;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_1AF05562C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 32;
    do
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v4);
      v4 -= 32;
      v2 += 32;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>,(std::__variant_detail::_Trait)1> const&>(a1, a2);
  return a1;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>,(std::__variant_detail::_Trait)1> const&>(uint64_t a1, uint64_t a2)
{
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  v5 = *(a2 + 24);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_1F24C8260[v5])(&v6, a2);
    *(a1 + 24) = v5;
  }

  return result;
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 != -1)
  {
    result = (off_1F24C8238[v2])(&v3, result);
  }

  *(v1 + 24) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_9monostateEjdNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIhNSC_IhEEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSJ_1EJS8_jdSE_SH_EEEEEEDcSL_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_9monostateEjdNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIhNSC_IhEEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSJ_1EJS8_jdSE_SH_EEEEEEDcSL_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

double _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJNS_9monostateEjdNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIhNSC_IhEEEEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISI_LNS0_6_TraitE1EEEEEvRSJ_OT_EUlSS_E_JRKNS0_6__baseILSM_1EJS8_jdSE_SH_EEEEEEDcSR_DpT0_(void **a1, double *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJNS_9monostateEjdNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIhNSC_IhEEEEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISI_LNS0_6_TraitE1EEEEEvRSJ_OT_EUlSS_E_JRKNS0_6__baseILSM_1EJS8_jdSE_SH_EEEEEEDcSR_DpT0_(std::string **a1, __int128 *a2)
{
  v2 = *a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v2, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    v2->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v2->__r_.__value_.__l.__data_ = v3;
  }
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJNS_9monostateEjdNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIhNSC_IhEEEEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISI_LNS0_6_TraitE1EEEEEvRSJ_OT_EUlSS_E_JRKNS0_6__baseILSM_1EJS8_jdSE_SH_EEEEEEDcSR_DpT0_(void **a1, uint64_t *a2)
{
  v2 = *a1;
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v2, *a2, a2[1], a2[1] - *a2);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1AF0558FC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned char>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
}

void std::vector<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 32;
        std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 24;
        std::__tree<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>>::destroy((v4 - 24), *(v4 - 2));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__tree<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,0>(uint64_t a1)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void CEM::Statement::~Statement(void **this)
{
  v2 = this + 7;
  std::vector<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }
}

void std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  begin = (24 * v2);
  v17.__first_ = 0;
  v17.__begin_ = (24 * v2);
  value = 0;
  v17.__end_ = (24 * v2);
  v17.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v17.__begin_;
    end = v17.__end_;
    value = v17.__end_cap_.__value_;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v9;
    end = (24 * v2);
  }

  v11 = end + 1;
  v12 = *(a1 + 8) - *a1;
  v13 = begin - v12;
  memcpy(begin - v12, *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = value;
  v17.__end_ = v14;
  v17.__end_cap_.__value_ = v15;
  v17.__first_ = v14;
  v17.__begin_ = v14;
  std::__split_buffer<std::string>::~__split_buffer(&v17);
  return v11;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t std::pair<std::string const,std::weak_ptr<CEM::AdaptationDatabase>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>>::find<std::string>(uint64_t a1, void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v3 + 32), a2);
    if ((v6 & 0x80u) == 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 4) & 8));
  }

  while (v3);
  if (v5 == v2 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (v5 + 32)) & 0x80) != 0)
  {
    return v2;
  }

  return v5;
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void **a2)
{
  v2 = *(a1 + 23);
  v3 = a1[1];
  if ((v2 & 0x80u) != 0)
  {
    a1 = *a1;
    v2 = v3;
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  return std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(a1, v2, v5, v6);
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(const void *a1, size_t a2, void *__s2, size_t a4)
{
  if (a4 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a4;
  }

  v8 = memcmp(a1, __s2, v7);
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (a2 == a4)
    {
      return 0;
    }

    if (a2 >= a4)
    {
      return 1;
    }
  }

  return 255;
}

__n128 std::__function::__func<CEM::AdaptationDatabaseController::enumerateRecentEmojisForAllStrings(unsigned long,std::function<void ()(std::string_view,std::vector<std::string> const&)>)::$_0,std::allocator<CEM::AdaptationDatabaseController::enumerateRecentEmojisForAllStrings(unsigned long,std::function<void ()(std::string_view,std::vector<std::string> const&)>)::$_0>,void ()(std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F24C8298;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<CEM::AdaptationDatabaseController::enumerateRecentEmojisForAllStrings(unsigned long,std::function<void ()(std::string_view,std::vector<std::string> const&)>)::$_0,std::allocator<CEM::AdaptationDatabaseController::enumerateRecentEmojisForAllStrings(unsigned long,std::function<void ()(std::string_view,std::vector<std::string> const&)>)::$_0>,void ()(std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>> const&)>::operator()(uint64_t a1, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "string");
  v4 = std::__tree<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>>::find<std::string>(a2, __p);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = a2 + 8;
  if (a2 + 8 != v4 && *(v4 + 80) == 3)
  {
    std::string::operator=(*(a1 + 8), (v4 + 56));
  }

  v6 = *(a1 + 16);
  v7 = *(v6 + 23);
  if ((v7 & 0x8000000000000000) == 0)
  {
    if (*(v6 + 23))
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (!*(v6 + 8))
  {
LABEL_8:
    std::string::operator=(*(a1 + 16), *(a1 + 8));
    v6 = *(a1 + 16);
    LOBYTE(v7) = *(v6 + 23);
  }

LABEL_9:
  v8 = *(a1 + 8);
  v9 = *(v6 + 8);
  v10 = v7;
  if ((v7 & 0x80u) == 0)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(v6 + 8);
  }

  v12 = *(v8 + 23);
  v13 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(v8 + 8);
  }

  if (v11 != v12 || ((v10 & 0x80u) == 0 ? (v14 = v6) : (v14 = *v6), v13 >= 0 ? (v15 = *(a1 + 8)) : (v15 = *v8), memcmp(v14, v15, v11)))
  {
    if ((v10 & 0x80) != 0)
    {
      v6 = *v6;
      v10 = v9;
    }

    std::function<void ()(std::string_view,std::vector<std::string> const&)>::operator()(*(a1 + 32), v6, v10, *(a1 + 24));
    std::vector<std::string>::clear[abi:ne200100](*(a1 + 24));
    std::string::operator=(*(a1 + 16), *(a1 + 8));
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "emoji");
  v16 = std::__tree<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>>::find<std::string>(a2, __p);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5 != v16 && *(v16 + 80) == 3)
  {
    v17 = *(a1 + 24);
    v18 = *(v17 + 8);
    v19 = (v16 + 56);
    if (v18 >= *(v17 + 16))
    {
      v20 = std::vector<std::string>::__emplace_back_slow_path<std::string const>(v17, v19);
    }

    else
    {
      std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const>(v17, v19);
      v20 = v18 + 1;
    }

    *(v17 + 8) = v20;
  }
}

void sub_1AF056390(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<CEM::AdaptationDatabaseController::enumerateRecentEmojisForAllStrings(unsigned long,std::function<void ()(std::string_view,std::vector<std::string> const&)>)::$_0,std::allocator<CEM::AdaptationDatabaseController::enumerateRecentEmojisForAllStrings(unsigned long,std::function<void ()(std::string_view,std::vector<std::string> const&)>)::$_0>,void ()(std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::function<void ()(std::string_view,std::vector<std::string> const&)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a2;
  v6[1] = a3;
  v4 = *(a1 + 24);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v4 + 48))(v4, v6, a4);
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5558] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53C0], MEMORY[0x1E69E52E8]);
}

void std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  begin = (24 * v2);
  v17.__first_ = 0;
  v17.__begin_ = (24 * v2);
  value = 0;
  v17.__end_ = (24 * v2);
  v17.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v17.__begin_;
    end = v17.__end_;
    value = v17.__end_cap_.__value_;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v9;
    end = (24 * v2);
  }

  v11 = end + 1;
  v12 = *(a1 + 8) - *a1;
  v13 = begin - v12;
  memcpy(begin - v12, *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = value;
  v17.__end_ = v14;
  v17.__end_cap_.__value_ = v15;
  v17.__first_ = v14;
  v17.__begin_ = v14;
  std::__split_buffer<std::string>::~__split_buffer(&v17);
  return v11;
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t std::__function::__value_func<void ()(std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<CEM::AdaptationDatabaseController::enumerateStringAndStringId(std::function<void ()(std::string_view,unsigned int)>)::$_0,std::allocator<CEM::AdaptationDatabaseController::enumerateStringAndStringId(std::function<void ()(std::string_view,unsigned int)>)::$_0>,void ()(std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F24C8328;
  a2[1] = v2;
  return result;
}

void std::__function::__func<CEM::AdaptationDatabaseController::enumerateStringAndStringId(std::function<void ()(std::string_view,unsigned int)>)::$_0,std::allocator<CEM::AdaptationDatabaseController::enumerateStringAndStringId(std::function<void ()(std::string_view,unsigned int)>)::$_0>,void ()(std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>> const&)>::operator()(uint64_t a1, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "id");
  v4 = std::__tree<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>>::find<std::string>(a2, __p);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "string");
  v5 = std::__tree<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>>::find<std::string>(a2, __p);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (a2 + 8 == v4)
  {
    adaptation_log = cem_logging_get_adaptation_log();
    if (os_log_type_enabled(adaptation_log, OS_LOG_TYPE_ERROR))
    {
      std::__function::__func<CEM::AdaptationDatabaseController::enumerateStringAndStringId(std::function<void ()(std::string_view,unsigned int)>)::$_0,std::allocator<CEM::AdaptationDatabaseController::enumerateStringAndStringId(std::function<void ()(std::string_view,unsigned int)>)::$_0>,void ()(std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>> const&)>::operator()();
    }
  }

  else if (a2 + 8 == v5)
  {
    v9 = cem_logging_get_adaptation_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      std::__function::__func<CEM::AdaptationDatabaseController::enumerateStringAndStringId(std::function<void ()(std::string_view,unsigned int)>)::$_0,std::allocator<CEM::AdaptationDatabaseController::enumerateStringAndStringId(std::function<void ()(std::string_view,unsigned int)>)::$_0>,void ()(std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>> const&)>::operator()();
    }
  }

  else if (*(v4 + 80) == 1)
  {
    if (*(v5 + 80) == 3)
    {
      v6 = *(v5 + 79);
      if (v6 < 0)
      {
        v7 = *(v5 + 56);
        v6 = *(v5 + 64);
      }

      else
      {
        v7 = v5 + 56;
      }

      std::function<void ()(std::string_view,unsigned int)>::operator()(*(a1 + 8), v7, v6, *(v4 + 56));
    }

    else
    {
      v11 = cem_logging_get_adaptation_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        std::__function::__func<CEM::AdaptationDatabaseController::enumerateStringAndStringId(std::function<void ()(std::string_view,unsigned int)>)::$_0,std::allocator<CEM::AdaptationDatabaseController::enumerateStringAndStringId(std::function<void ()(std::string_view,unsigned int)>)::$_0>,void ()(std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>> const&)>::operator()();
      }
    }
  }

  else
  {
    v10 = cem_logging_get_adaptation_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      std::__function::__func<CEM::AdaptationDatabaseController::enumerateStringAndStringId(std::function<void ()(std::string_view,unsigned int)>)::$_0,std::allocator<CEM::AdaptationDatabaseController::enumerateStringAndStringId(std::function<void ()(std::string_view,unsigned int)>)::$_0>,void ()(std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>> const&)>::operator()();
    }
  }
}

void sub_1AF056910(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<CEM::AdaptationDatabaseController::enumerateStringAndStringId(std::function<void ()(std::string_view,unsigned int)>)::$_0,std::allocator<CEM::AdaptationDatabaseController::enumerateStringAndStringId(std::function<void ()(std::string_view,unsigned int)>)::$_0>,void ()(std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::function<void ()(std::string_view,unsigned int)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7[0] = a2;
  v7[1] = a3;
  v6 = a4;
  v4 = *(a1 + 24);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v4 + 48))(v4, v7, &v6);
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char [25],void>(std::string *this, std::string *a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = (a2 - 1);
  do
  {
    v4 = v3->__r_.__value_.__s.__data_[1];
    v3 = (v3 + 1);
  }

  while (v4);
  std::string::append[abi:ne200100]<char const*,0>(this, a2, v3);
  return this;
}

void sub_1AF056A18(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::string::append[abi:ne200100]<char const*,0>(std::string *this, std::string *__src, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v7 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v11 = this->__r_.__value_.__r.__words[2];
    v8 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v10 = this->__r_.__value_.__r.__words[0];
    v9 = HIBYTE(v11);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v8 = 22;
    LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    v10 = this;
  }

  if (v10 > __src || (&v10->__r_.__value_.__l.__data_ + size + 1) <= __src)
  {
    if (v8 - size < v7)
    {
      std::string::__grow_by(this, v8, size - v8 + v7, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    }

    v14 = this;
    if ((v9 & 0x80) != 0)
    {
      v14 = this->__r_.__value_.__r.__words[0];
    }

    v15 = v14 + size;
    if (a3 != __src)
    {
      memmove(v14 + size, __src, v7);
    }

    v15[v7] = 0;
    v16 = v7 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v16;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v16 & 0x7F;
    }
  }

  else
  {
    std::string::__init_with_size[abi:ne200100]<char const*,char const*>(__p, __src, a3, v7);
    if ((v19 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v13 = v19;
    }

    else
    {
      v13 = __p[1];
    }

    std::string::append(this, v12, v13);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this;
}

void sub_1AF056B90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::__init_with_size[abi:ne200100]<char const*,char const*>(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  __dst[23] = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  v4[v5] = 0;
  return __dst;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::weak_ptr<CEM::AdaptationDatabase>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::weak_ptr<CEM::AdaptationDatabase>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::weak_ptr<CEM::AdaptationDatabase>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::weak_ptr<CEM::AdaptationDatabase>>>>::find<std::string>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

void *std::shared_ptr<CEM::AdaptationDatabase>::shared_ptr[abi:ne200100]<CEM::AdaptationDatabase,0>(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  if (!v3)
  {
    a1[1] = 0;
LABEL_5:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v4 = std::__shared_weak_count::lock(v3);
  a1[1] = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  return a1;
}

void std::__throw_bad_weak_ptr[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5500] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53A8], MEMORY[0x1E69E52B8]);
}

void *std::__shared_ptr_emplace<CEM::AdaptationDatabase>::__shared_ptr_emplace[abi:ne200100]<std::__fs::filesystem::path const&,std::allocator<CEM::AdaptationDatabase>,0>(void *a1, const std::__fs::filesystem::path *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F24C83A8;
  CEM::AdaptationDatabase::AdaptationDatabase((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<CEM::AdaptationDatabase>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F24C83A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B2716B00);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::weak_ptr<CEM::AdaptationDatabase>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::weak_ptr<CEM::AdaptationDatabase>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::weak_ptr<CEM::AdaptationDatabase>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::weak_ptr<CEM::AdaptationDatabase>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::weak_ptr<CEM::AdaptationDatabase>>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,std::weak_ptr<CEM::AdaptationDatabase>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::weak_ptr<CEM::AdaptationDatabase>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::weak_ptr<CEM::AdaptationDatabase>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::weak_ptr<CEM::AdaptationDatabase>>>>::__construct_node_hash<std::pair<std::string const,std::weak_ptr<CEM::AdaptationDatabase>>>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1AF05769C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::weak_ptr<CEM::AdaptationDatabase>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::weak_ptr<CEM::AdaptationDatabase>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::weak_ptr<CEM::AdaptationDatabase>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::weak_ptr<CEM::AdaptationDatabase>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::weak_ptr<CEM::AdaptationDatabase>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *std::pair<std::string const,std::weak_ptr<CEM::AdaptationDatabase>>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  *&this[1].__r_.__value_.__l.__data_ = *(a2 + 24);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  return this;
}

void std::__hash_table<std::__hash_value_type<std::string,std::weak_ptr<CEM::AdaptationDatabase>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::weak_ptr<CEM::AdaptationDatabase>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::weak_ptr<CEM::AdaptationDatabase>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::weak_ptr<CEM::AdaptationDatabase>>>>::__rehash<true>(uint64_t a1, size_t __n)
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

      std::__hash_table<std::__hash_value_type<std::string,std::weak_ptr<CEM::AdaptationDatabase>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::weak_ptr<CEM::AdaptationDatabase>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::weak_ptr<CEM::AdaptationDatabase>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::weak_ptr<CEM::AdaptationDatabase>>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::weak_ptr<CEM::AdaptationDatabase>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::weak_ptr<CEM::AdaptationDatabase>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::weak_ptr<CEM::AdaptationDatabase>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::weak_ptr<CEM::AdaptationDatabase>>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::weak_ptr<CEM::AdaptationDatabase>>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

id cem_logging_get_default_log()
{
  if (cem_logging_get_default_log_onceToken != -1)
  {
    cem_logging_get_default_log_cold_1();
  }

  v1 = cem_logging_get_default_log_log;

  return v1;
}

uint64_t __cem_logging_get_default_log_block_invoke()
{
  cem_logging_get_default_log_log = os_log_create("com.apple.CoreEmoji", "StandardLogger");

  return MEMORY[0x1EEE66BB8]();
}

id cem_logging_get_adaptation_log()
{
  if (cem_logging_get_adaptation_log_onceToken != -1)
  {
    cem_logging_get_adaptation_log_cold_1();
  }

  v1 = cem_logging_get_adaptation_log_log;

  return v1;
}

uint64_t __cem_logging_get_adaptation_log_block_invoke()
{
  cem_logging_get_adaptation_log_log = os_log_create("com.apple.CoreEmoji", "AdaptationLogger");

  return MEMORY[0x1EEE66BB8]();
}

void log_emoji_string_lookup_error()
{
  v0 = emf_logging_get_default_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    log_emoji_string_lookup_error_cold_1();
  }
}

void log_emoji_token_creation_error()
{
  v0 = emf_logging_get_default_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    log_emoji_token_creation_error_cold_1();
  }
}

id createEmojiTokenMatchesWithMatchingIDsAndEmojiLocaleData(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      v8 = 0;
      v9 = v6;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v11 + 1) + 8 * v8) unsignedIntegerValue];
        v6 = CEMEmojiTokenCreateWithIndex();

        [v2 addObject:v6];
        ++v8;
        v9 = v6;
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  return v2;
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

BOOL ___sortAnchorCollection_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 length];
  v6 = [v4 length];

  return v5 < v6;
}

void sub_1AF059E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AF05D974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  nlp::CFScopedPtr<void const*>::reset(va, 0);
  nlp::CFScopedPtr<__SecTask *>::reset((v18 - 88), 0);

  _Unwind_Resume(a1);
}

void nlp::CFScopedPtr<void const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void nlp::CFScopedPtr<__SecTask *>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

id _createStrippedLocaleIdentifierForLocale(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = [v1 languageCode];
  [v2 setObject:v3 forKey:*MEMORY[0x1E695D9B0]];

  v4 = [v1 countryCode];

  if (v4)
  {
    v5 = [v1 countryCode];
    [v2 setObject:v5 forKey:*MEMORY[0x1E695D978]];
  }

  v6 = [v1 scriptCode];

  if (v6)
  {
    v7 = [v1 scriptCode];
    [v2 setObject:v7 forKey:*MEMORY[0x1E695D9E8]];
  }

  v8 = [MEMORY[0x1E695DF58] localeIdentifierFromComponents:v2];

  return v8;
}

id _createStrippedFallbackLocaleIdentifierForLocale(void *a1)
{
  v1 = MEMORY[0x1E695DF58];
  v2 = [a1 localeIdentifier];
  v3 = [v1 baseLanguageFromLanguage:v2];

  return v3;
}

id _overridePlistForLocaleIdentifier(void *a1, uint64_t a2, int a3)
{
  if (a3)
  {
    [a1 URLForResource:a2 withExtension:@"plist" subdirectory:@"SearchEngineOverrideLists"];
  }

  else
  {
    [a1 URLForResource:@"SearchEngineOverrideList" withExtension:@"plist" subdirectory:0 localization:a2];
  }
  v3 = ;

  return v3;
}

id _overridePlistForLocaleIdentifierCheckingBothLocations(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 URLForResource:@"SearchEngineOverrideList" withExtension:@"plist" subdirectory:0 localization:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [v3 URLForResource:v4 withExtension:@"plist" subdirectory:@"SearchEngineOverrideLists"];
  }

  v8 = v7;

  return v8;
}

id EMFGetDeviceRegionCode()
{
  if (EMFGetDeviceRegionCode_onceToken[0] != -1)
  {
    EMFGetDeviceRegionCode_cold_1();
  }

  v1 = EMFGetDeviceRegionCode_regionCode;

  return v1;
}

void __EMFGetDeviceRegionCode_block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = EMFGetDeviceRegionCode_regionCode;
  EMFGetDeviceRegionCode_regionCode = v0;

  if (!EMFGetDeviceRegionCode_regionCode)
  {
    EMFGetDeviceRegionCode_regionCode = &stru_1F24C94E8;
  }
}

uint64_t EMFIsDeviceInGreaterChina()
{
  v0 = EMFGetDeviceRegionCode();
  v1 = [MEMORY[0x1E695DF58] currentLocale];
  v2 = [v1 objectForKey:*MEMORY[0x1E695D978]];

  if ([v0 isEqualToString:@"CH"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"CN") & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"MO"))
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isEqualToString:@"HK"];
  }

  return v3;
}

objc_class *_strategyClassForIndex(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 termIndex];
  v3 = [v2 allKeys];
  v4 = [v3 objectAtIndexedSubscript:0];

  v5 = [v2 objectForKeyedSubscript:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v6 = objc_opt_class();
    if (v6)
    {
      v7 = emf_logging_get_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = NSStringFromClass(v6);
        v9 = [v1 termIndexURL];
        v10 = [v1 documentIndexURL];
        v13 = 138412802;
        v14 = v8;
        v15 = 2112;
        v16 = v9;
        v17 = 2112;
        v18 = v10;
        _os_log_impl(&dword_1AF04E000, v7, OS_LOG_TYPE_INFO, "Using index strategy class: '%@' for index: ('%@', '%@')", &v13, 0x20u);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v11 = v6;

  return v6;
}

void sub_1AF061958(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose((v1 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1AF06252C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1AF063990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AF0648DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t CEM::Statement::Statement(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  CEM::Statement::makeLocalizedStatementBody(a1, (a1 + 32));
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  std::vector<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__init_with_size[abi:ne200100]<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>*,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>*>(a1 + 56, *a6, a6[1], (a6[1] - *a6) >> 5);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 101;
  return a1;
}

void sub_1AF0655A8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(exception_object);
}

void CEM::Statement::makeLocalizedStatementBody(CEM::Statement *this@<X0>, std::string *a2@<X8>)
{
  memset(&v17, 0, sizeof(v17));
  if (*(this + 1))
  {
    std::string::append(&v17, "-", 1uLL);
    std::string::append(&v17, *this, *(this + 1));
  }

  v4 = *(this + 3);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = *(this + 2);
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(&a2->__r_.__value_.__s + 23) = v4;
  if (v4)
  {
    memmove(a2, v5, v4);
  }

  v6 = 0;
  a2->__r_.__value_.__s.__data_[v4] = 0;
  size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = a2->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

LABEL_14:
  v9 = size - v6;
  if ((size - v6) >= 2)
  {
    v10 = v8 + size;
    v11 = v8 + v6;
    do
    {
      v12 = memchr(v11, 123, v9 - 1);
      if (!v12)
      {
        break;
      }

      if (*v12 == 32123)
      {
        if (v12 != v10)
        {
          v13 = v12 - v8;
          if (v13 != -1)
          {
            if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v14 = &v17;
            }

            else
            {
              v14 = v17.__r_.__value_.__r.__words[0];
            }

            if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v15 = HIBYTE(v17.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v15 = v17.__r_.__value_.__l.__size_;
            }

            std::string::replace(a2, v13, 2uLL, v14, v15);
            v16 = HIBYTE(v17.__r_.__value_.__r.__words[2]);
            if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v16 = v17.__r_.__value_.__l.__size_;
            }

            v6 = v16 + v13;
            size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
            if ((size & 0x80u) == 0)
            {
              v8 = a2;
            }

            else
            {
              v8 = a2->__r_.__value_.__r.__words[0];
            }

            if ((size & 0x80u) != 0)
            {
              size = a2->__r_.__value_.__l.__size_;
            }

            if (size >= v6)
            {
              goto LABEL_14;
            }
          }
        }

        break;
      }

      v11 = v12 + 1;
      v9 = v10 - v11;
    }

    while (v10 - v11 >= 2);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }
}

void sub_1AF06579C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CEM::Statement::prepare(CEM::Statement *this)
{
  v3 = (this + 96);
  result = *(this + 12);
  if (result)
  {
    v4 = *(this + 11);
    if (!v4)
    {
      v4 = this + 32;
      if (*(this + 55) < 0)
      {
        v4 = *v4;
      }
    }

    if (sqlite3_prepare_v2(result, v4, -1, this + 10, this + 11))
    {
      adaptation_log = cem_logging_get_adaptation_log();
      if (os_log_type_enabled(adaptation_log, OS_LOG_TYPE_ERROR))
      {
        CEM::Statement::prepare(this, v3, adaptation_log);
      }

      sqlite3_finalize(*(this + 10));
      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t CEM::Statement::bindParameters(CEM::Statement *this)
{
  v1 = *(this + 7);
  v2 = 1;
  if (*(this + 8) != v1)
  {
    v4 = 0;
    v5 = 0;
    while (1)
    {
      v10 = 1;
      v9[0] = this;
      v9[1] = &v10;
      v9[2] = v5;
      v6 = *(v1 + v4 + 24);
      if (v6 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v11 = v9;
      (off_1F24C8488[v6])(&v11);
      if (v10)
      {
        break;
      }

      ++v5;
      v1 = *(this + 7);
      v4 += 32;
      if (v5 >= (*(this + 8) - v1) >> 5)
      {
        return 1;
      }
    }

    adaptation_log = cem_logging_get_adaptation_log();
    if (os_log_type_enabled(adaptation_log, OS_LOG_TYPE_ERROR))
    {
      CEM::Statement::bindParameters(v5, this, adaptation_log);
    }

    return 0;
  }

  return v2;
}

void CEM::Statement::getValueForColumnAtIndex(sqlite3_stmt **this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sqlite3_column_type(this[10], a2);
  if (v6 <= 2)
  {
    if (v6 == 1)
    {
      *a3 = sqlite3_column_int(this[10], a2);
      v10 = 1;
    }

    else
    {
      if (v6 != 2)
      {
        goto LABEL_19;
      }

      *a3 = sqlite3_column_double(this[10], a2);
      v10 = 2;
    }
  }

  else
  {
    if (v6 == 5)
    {
      *(a3 + 24) = 0;
      return;
    }

    if (v6 != 4)
    {
      if (v6 == 3)
      {
        v7 = sqlite3_column_text(this[10], a2);
        v8 = strlen(v7);
        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v9 = v8;
        if (v8 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v14) = v8;
        if (v8)
        {
          memmove(&v13, v7, v8);
        }

        *(&v13 + v9) = 0;
        *a3 = v13;
        *(a3 + 16) = v14;
        v10 = 3;
        goto LABEL_18;
      }

LABEL_19:
      CEM::Statement::getValueForColumnAtIndex();
    }

    v11 = sqlite3_column_bytes(this[10], a2);
    v12 = sqlite3_column_blob(this[10], a2);
    v13 = 0uLL;
    v14 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v13, v12, v12 + v11, v11);
    *a3 = v13;
    *(a3 + 16) = v14;
    v10 = 4;
  }

LABEL_18:
  *(a3 + 24) = v10;
}

BOOL CEM::Statement::step(sqlite3_stmt **this)
{
  v2 = sqlite3_step(this[10]);
  *(this + 26) = v2;
  return v2 != 101;
}

const char *CEM::Statement::getColumnNameAtIndex(sqlite3_stmt **this, int a2)
{
  v2 = sqlite3_column_name(this[10], a2);
  strlen(v2);
  return v2;
}

BOOL CEM::Statement::finalize(sqlite3_stmt **this)
{
  v2 = sqlite3_finalize(this[10]);
  *(this + 26) = v2;
  return v2 == 0;
}

uint64_t std::vector<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__init_with_size[abi:ne200100]<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>*,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1AF065C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>*,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>*,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](a4, v6);
      v6 += 32;
      a4 += 32;
      v7 -= 32;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_1AF065CE8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 32;
    do
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v4);
      v4 -= 32;
      v2 += 32;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_bad_variant_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E55D0] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E5410], std::bad_variant_access::~bad_variant_access);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<CEM::Statement::bindParameters(void)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,unsigned int,double,std::string,std::vector<unsigned char,std::char_traits<char><unsigned char>>> const&>(uint64_t *a1)
{
  v1 = *a1;
  result = sqlite3_bind_null(*(**a1 + 80), *(*a1 + 16));
  **(v1 + 8) = result;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<CEM::Statement::bindParameters(void)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,unsigned int,double,std::string,std::vector<unsigned char,std::char_traits<char><unsigned char>>> const&>(uint64_t *a1, int *a2)
{
  v2 = *a1;
  result = sqlite3_bind_int(*(**a1 + 80), *(*a1 + 16) + 1, *a2);
  **(v2 + 8) = result;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<CEM::Statement::bindParameters(void)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,unsigned int,double,std::string,std::vector<unsigned char,std::char_traits<char><unsigned char>>> const&>(uint64_t *a1, double *a2)
{
  v2 = *a1;
  result = sqlite3_bind_double(*(**a1 + 80), *(*a1 + 16), *a2);
  **(v2 + 8) = result;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<CEM::Statement::bindParameters(void)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,unsigned int,double,std::string,std::vector<unsigned char,std::char_traits<char><unsigned char>>> const&>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a1 + 80);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  result = sqlite3_bind_text(v3, *(v2 + 16) + 1, v5, v6, 0);
  **(v2 + 8) = result;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<CEM::Statement::bindParameters(void)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,unsigned int,double,std::string,std::vector<unsigned char,std::char_traits<char><unsigned char>>> const&>(uint64_t *a1, unsigned __int8 **a2)
{
  v2 = *a1;
  result = sqlite3_bind_blob(*(**a1 + 80), *(*a1 + 16), **a2, *(a2 + 2) - *a2, 0);
  **(v2 + 8) = result;
  return result;
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1AF065F1C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void CEM::enumerateSpaceSeparatedTokensWithFullStops(CFStringRef str, CFRange range, uint64_t a3)
{
  if (!str)
  {
    return;
  }

  v5 = CFStringCreateWithSubstring(0, str, range);
  cf = v5;
  if (!v5)
  {
    return;
  }

  CEM::getUTF8StringFromCFString(v5, &v47);
  v44 = 0;
  v45 = 0;
  v46 = 0;
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v43, v47.__r_.__value_.__l.__data_, v47.__r_.__value_.__l.__size_);
  }

  else
  {
    v43 = v47;
  }

  v39 = str;
  std::string::basic_string[abi:ne200100]<0>(&__p, " ");
  v38 = a3;
  v6 = 0;
  for (i = 0; ; ++i)
  {
    size = SHIBYTE(v43.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v6 >= SHIBYTE(v43.__r_.__value_.__r.__words[2]) || i == -1)
    {
      goto LABEL_49;
    }

    v10 = &v43;
    v11 = SHIBYTE(v43.__r_.__value_.__r.__words[2]);
LABEL_18:
    if ((v42 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v42 & 0x80u) == 0)
    {
      v14 = v42;
    }

    else
    {
      v14 = v41;
    }

    v15 = v6;
    if (v14)
    {
      v16 = v11 - v6;
      if ((v11 - v6) >= v14)
      {
        v18 = v10 + v11;
        v19 = v10 + v6;
        v20 = *p_p;
        do
        {
          if (v16 - v14 == -1)
          {
            break;
          }

          v21 = memchr(v19, v20, v16 - v14 + 1);
          if (!v21)
          {
            break;
          }

          v22 = v21;
          if (!memcmp(v21, p_p, v14))
          {
            if (v22 == v18)
            {
              break;
            }

            v15 = v22 - v10;
            if (v22 - v10 == -1)
            {
              break;
            }

            goto LABEL_41;
          }

          v19 = v22 + 1;
          v16 = v18 - (v22 + 1);
        }

        while (v16 >= v14);
      }

      if ((size & 0x80000000) != 0)
      {
        size = v43.__r_.__value_.__l.__size_;
        v17 = v43.__r_.__value_.__r.__words[0];
      }

      else
      {
        v17 = &v43;
      }

      std::string::__init_with_size[abi:ne200100]<char const*,char const*>(&__dst, v17 + v6, v17 + size, size - v6);
      v51[0] = &v44;
      std::back_insert_iterator<std::vector<std::string>>::operator=[abi:ne200100](v51, &__dst);
      if (v50 < 0)
      {
        operator delete(__dst);
      }

      v6 = SHIBYTE(v43.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        v6 = v43.__r_.__value_.__l.__size_;
      }
    }

    else
    {
LABEL_41:
      v23 = v43.__r_.__value_.__r.__words[0];
      if ((size & 0x80000000) == 0)
      {
        v23 = &v43;
      }

      std::string::__init_with_size[abi:ne200100]<char const*,char const*>(&__dst, v23 + v6, v23 + v15, v15 - v6);
      v51[0] = &v44;
      std::back_insert_iterator<std::vector<std::string>>::operator=[abi:ne200100](v51, &__dst);
      if (v50 < 0)
      {
        operator delete(__dst);
      }

      v24 = v42;
      if ((v42 & 0x80u) != 0)
      {
        v24 = v41;
      }

      v6 = v24 + v15;
    }
  }

  v11 = v43.__r_.__value_.__l.__size_;
  if (v6 < v43.__r_.__value_.__l.__size_ && i != -1)
  {
    v10 = v43.__r_.__value_.__r.__words[0];
    goto LABEL_18;
  }

LABEL_49:
  if (v42 < 0)
  {
    operator delete(__p);
    LOBYTE(size) = *(&v43.__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  v25 = v44;
  v26 = v45;
  if (v44 != v45)
  {
    while (2)
    {
      LOBYTE(v51[0]) = 0;
      v27 = *(v25 + 23);
      if (v27 < 0)
      {
        v28 = *v25;
        v29 = *(v25 + 8);
      }

      else
      {
        v28 = v25;
        v29 = *(v25 + 23);
      }

      v30 = 0;
      v31 = v28 - 1;
      v32 = 1;
      while (v29 != v30)
      {
        v33 = v31[v29];
        --v32;
        --v31;
        ++v30;
        if (v33 == 46)
        {
          if (!(v29 + v32))
          {
            break;
          }

          if ((v27 & 0x80000000) != 0)
          {
            if (!(v29 - *(v25 + 8) + v32))
            {
              break;
            }

            v34 = *v25;
          }

          else
          {
            if (!(v29 - v27 + v32))
            {
              break;
            }

            v34 = v25;
          }

          v35 = CFStringCreateWithCString(0, v34, 0x8000100u);
          *&__dst = v35;
          if (v35)
          {
            v36 = CFStringFind(v39, v35, 0);
            if (v36.location != -1 && v36.length)
            {
              (*(v38 + 16))(v38, v36.location, v36.length, v51);
            }

            v37 = v51[0];
            CFRelease(v35);
            if (v37)
            {
              goto LABEL_72;
            }
          }

          break;
        }
      }

      v25 += 24;
      if (v25 != v26)
      {
        continue;
      }

      break;
    }
  }

LABEL_72:
  *&__dst = &v44;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__dst);
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_1AF0666AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, const void *a34)
{
  *(v34 - 96) = &a25;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v34 - 96));
  if (a33 < 0)
  {
    operator delete(__p);
  }

  nlp::CFScopedPtr<__CFString const*>::reset(&a34, 0);
  _Unwind_Resume(a1);
}

const __CFString *CEM::getUTF8StringFromCFString@<X0>(const __CFString *this@<X0>, uint64_t a2@<X8>)
{
  if (this)
  {
    v4 = this;
    CStringPtr = CFStringGetCStringPtr(this, 0x8000100u);
    if (!CStringPtr)
    {
      Length = CFStringGetLength(v4);
      CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      operator new[]();
    }

    return std::string::basic_string[abi:ne200100]<0>(a2, CStringPtr);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return this;
}

BOOL CEM::deviceIsChinese(CEM *this)
{
  if (CEM::getDeviceRegionCode(void)::onceToken != -1)
  {
    CEM::deviceIsChinese();
  }

  return !CEM::getDeviceRegionCode(void)::__regionCode || CFStringCompare(CEM::getDeviceRegionCode(void)::__regionCode, @"CH", 0) == kCFCompareEqualTo;
}

BOOL CEM::shouldShowTaiwanFlagEmoji(CEM *this)
{
  if (CEM::shouldShowTaiwanFlagEmoji(void)::onceToken != -1)
  {
    CEM::shouldShowTaiwanFlagEmoji();
  }

  if (CEM::shouldShowTaiwanFlagEmoji(void)::_deviceIsChinese)
  {
    return 0;
  }

  v2 = CFLocaleCopyCurrent();
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  Value = CFLocaleGetValue(v2, *MEMORY[0x1E695E6D0]);
  if (Value)
  {
    v1 = CFStringCompare(Value, @"CN", 0) != kCFCompareEqualTo;
  }

  else
  {
    v1 = 1;
  }

  CFRelease(v3);
  return v1;
}

void sub_1AF066980(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFLocale const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

BOOL ___ZN3CEM25shouldShowTaiwanFlagEmojiEv_block_invoke(CEM *a1)
{
  result = CEM::deviceIsChinese(a1);
  CEM::shouldShowTaiwanFlagEmoji(void)::_deviceIsChinese = result;
  return result;
}

const __CFString *CEM::copyPreferredLocaleIdentifierFromFrameworkBundleWithLocale(CEM *this, __CFBundle *a2, const __CFLocale *a3)
{
  ValueAtIndex = 0;
  if (!this || !a2)
  {
    return ValueAtIndex;
  }

  OverrideLocaleForLocale = CEM::createOverrideLocaleForLocale(a2, a2);
  v7 = OverrideLocaleForLocale;
  values[1] = OverrideLocaleForLocale;
  if (OverrideLocaleForLocale)
  {
    v8 = OverrideLocaleForLocale;
  }

  else
  {
    v8 = a2;
  }

  values[0] = MEMORY[0x1B2716420](v8);
  v9 = *MEMORY[0x1E695E480];
  v10 = CFArrayCreate(*MEMORY[0x1E695E480], values, 1, MEMORY[0x1E695E9C0]);
  v11 = CFBundleCopyBundleLocalizations(this);
  v12 = CFBundleCopyLocalizationsForPreferences(v11, v10);
  v13 = v12;
  if (v12 && !CFArrayGetCount(v12))
  {
    ValueAtIndex = 0;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v13, 0);
    v14 = CFLocaleCreate(v9, ValueAtIndex);
    v15 = *MEMORY[0x1E695E6F0];
    Value = CFLocaleGetValue(v8, *MEMORY[0x1E695E6F0]);
    v17 = CFLocaleGetValue(v14, v15);
    if (CFStringCompare(Value, v17, 0))
    {
      ValueAtIndex = 0;
    }

    else
    {
      CFRetain(ValueAtIndex);
    }

    if (v14)
    {
      CFRelease(v14);
    }

    if (!v13)
    {
      goto LABEL_17;
    }
  }

  CFRelease(v13);
LABEL_17:
  if (v11)
  {
    CFRelease(v11);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return ValueAtIndex;
}

void sub_1AF066B50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v7 = va_arg(va3, const void *);
  v9 = va_arg(va3, void);
  nlp::CFScopedPtr<__CFArray const*>::reset(va, 0);
  nlp::CFScopedPtr<__CFArray const*>::reset(va1, 0);
  nlp::CFScopedPtr<__CFArray const*>::reset(va2, 0);
  nlp::CFScopedPtr<__CFLocale const*>::reset(va3, 0);
  _Unwind_Resume(a1);
}

CFLocaleRef CEM::createOverrideLocaleForLocale(CEM *this, const __CFLocale *a2)
{
  v2 = MEMORY[0x1B2716420](this, a2);
  if (CFStringCompare(v2, @"ars", 0))
  {
    if (CFStringCompare(v2, @"nn", 0))
    {
      if (CFStringCompare(v2, @"yue-Hant", 0))
      {
        if (CFStringCompare(v2, @"en_CA", 0) && CFStringCompare(v2, @"en_JP", 0))
        {
          return 0;
        }

        v4 = @"en_US";
      }

      else
      {
        v4 = @"zh_HK";
      }
    }

    else
    {
      v4 = @"nb_NO";
    }
  }

  else
  {
    v4 = @"ar";
  }

  v5 = *MEMORY[0x1E695E480];

  return CFLocaleCreate(v5, v4);
}

CFLocaleRef CEM::createNormalizedLocale(CEM *this, const __CFLocale *a2)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = MEMORY[0x1B2716420](this, a2);
  ComponentsFromLocaleIdentifier = CFLocaleCreateComponentsFromLocaleIdentifier(v2, v3);
  LocaleIdentifierFromComponents = CFLocaleCreateLocaleIdentifierFromComponents(v2, ComponentsFromLocaleIdentifier);
  v6 = CFLocaleCreate(v2, LocaleIdentifierFromComponents);
  if (LocaleIdentifierFromComponents)
  {
    CFRelease(LocaleIdentifierFromComponents);
  }

  if (ComponentsFromLocaleIdentifier)
  {
    CFRelease(ComponentsFromLocaleIdentifier);
  }

  return v6;
}

void sub_1AF066D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  nlp::CFScopedPtr<__CFString const*>::reset(&a9, 0);
  nlp::CFScopedPtr<__CFDictionary const*>::reset(&a10, 0);
  _Unwind_Resume(a1);
}

uint64_t CEM::createFrameworkBundle(CEM *this)
{
  if (CEM::createFrameworkBundle(void)::onceToken != -1)
  {
    CEM::createFrameworkBundle();
  }

  CFRetain(CEM::createFrameworkBundle(void)::frameworkBundle);
  return CEM::createFrameworkBundle(void)::frameworkBundle;
}

void ___ZN3CEM21createFrameworkBundleEv_block_invoke(uint64_t a1, const __CFString *a2)
{
  PathRelativeToPlatformRoot = CEM::createPathRelativeToPlatformRoot(@"/System/Library/PrivateFrameworks/CoreEmoji.framework", a2);
  v3 = *MEMORY[0x1E695E480];
  v4 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], PathRelativeToPlatformRoot, kCFURLPOSIXPathStyle, 1u);
  CEM::createFrameworkBundle(void)::frameworkBundle = CFBundleCreate(v3, v4);
  if (!CEM::createFrameworkBundle(void)::frameworkBundle)
  {
    __assert_rtn("createFrameworkBundle_block_invoke", "CEMUtilityFunctions.cpp", 276, "frameworkBundle && CoreEmoji framework bundle could not be found.");
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (PathRelativeToPlatformRoot)
  {
    CFRelease(PathRelativeToPlatformRoot);
  }
}

void sub_1AF066E88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

__CFString *CEM::createPathRelativeToPlatformRoot(const __CFString *this, const __CFString *a2)
{
  Mutable = CFStringCreateMutable(0, 1024);
  v4 = CFStringCreateWithCString(*MEMORY[0x1E695E480], "/", 0x8000100u);
  CFStringAppend(Mutable, v4);
  if (this)
  {
    CFStringAppend(Mutable, this);
  }

  CFRelease(v4);
  return Mutable;
}

CFURLRef CEM::copyResourceURLFromFrameworkBundle(CEM *this, const __CFString *a2, const __CFString *a3, __CFString *a4, const __CFLocale *a5)
{
  FrameworkBundle = CEM::createFrameworkBundle(this);
  if (!FrameworkBundle)
  {
    return 0;
  }

  v11 = FrameworkBundle;
  if (a4)
  {
    v12 = CEM::copyPreferredLocaleIdentifierFromFrameworkBundleWithLocale(FrameworkBundle, a4, v10);
    if (v12)
    {
      v13 = CFBundleCopyResourceURLForLocalization(v11, this, a2, a3, v12);
      CFRelease(v12);
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = CFBundleCopyResourceURL(FrameworkBundle, this, a2, a3);
  }

  CFRelease(v11);
  return v13;
}

void sub_1AF067004(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFBundle *>::reset(va, 0);
  _Unwind_Resume(a1);
}

void CEM::getUTF16StringFromCFString(const __CFString *this@<X0>, void *a2@<X8>)
{
  if (this)
  {
    Length = CFStringGetLength(this);
    if (Length >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v6 = Length;
    if (Length >= 0xB)
    {
      if ((Length | 3) == 0xB)
      {
        v7 = 13;
      }

      else
      {
        v7 = (Length | 3) + 1;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<char16_t>>(a2, v7);
    }

    *(a2 + 23) = Length;
    if (Length)
    {
      memset_pattern16(a2, asc_1AF0ABF10, 2 * Length);
    }

    *(a2 + v6) = 0;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    v9.location = 0;
    v9.length = v6;
    CFStringGetCharacters(this, v9, v8);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

void sub_1AF067108(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

CFPropertyListRef CEM::createCFTypeWithContentsOfURL(CFURLRef fileURL, const __CFURL *a2)
{
  if (!fileURL)
  {
    return 0;
  }

  v2 = CFReadStreamCreateWithFile(0, fileURL);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (CFReadStreamOpen(v2))
  {
    v4 = CFPropertyListCreateWithStream(0, v3, 0, 0, 0, 0);
    CFReadStreamClose(v3);
  }

  else
  {
    v4 = 0;
  }

  CFRelease(v3);
  return v4;
}

CFURLRef CEM::copyLibraryKeyboardDirectoryURL(CEM *this)
{
  v1 = CFCopyHomeDirectoryURLForUser();
  v2 = CFURLCreateCopyAppendingPathComponent(*MEMORY[0x1E695E480], v1, @"/Library/Keyboard", 1u);
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

void sub_1AF0672B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFURL const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

CFURLRef CEM::copyEmojiAdaptationDatabaseURL(CEM *this)
{
  v1 = CEM::copyLibraryKeyboardDirectoryURL(this);
  v2 = CFURLCreateCopyAppendingPathComponent(*MEMORY[0x1E695E480], v1, @"emoji_adaptation.db", 0);
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

void sub_1AF067334(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFURL const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

void *___ZN3CEML19getDeviceRegionCodeEv_block_invoke()
{
  result = dlopen("/usr/lib/libMobileGestalt.dylib", 261);
  if (result)
  {
    result = dlsym(result, "MGCopyAnswer");
    if (result)
    {
      result = (result)(@"RegionCode", 0);
    }
  }

  CEM::getDeviceRegionCode(void)::__regionCode = result;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<char16_t>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void nlp::CFScopedPtr<__CFString const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

std::allocator<std::string> **std::back_insert_iterator<std::vector<std::string>>::operator=[abi:ne200100](std::allocator<std::string> **a1, __int128 *a2)
{
  v4 = *a1;
  v5 = *(*a1 + 1);
  v6 = *(*a1 + 2);
  if (v5 >= v6)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *v4) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *v4) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x555555555555555)
    {
      v12 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v12 = v10;
    }

    v20.__end_cap_.__value_ = *a1;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v4, v12);
    }

    v13 = 24 * v9;
    v14 = *a2;
    *(v13 + 16) = *(a2 + 2);
    *v13 = v14;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v8 = 24 * v9 + 24;
    v15 = *(v4 + 8) - *v4;
    v16 = v13 - v15;
    memcpy((v13 - v15), *v4, v15);
    v17 = *v4;
    *v4 = v16;
    v20.__first_ = v17;
    v20.__begin_ = v17;
    *(v4 + 8) = v8;
    v20.__end_ = v17;
    v18 = *(v4 + 16);
    *(v4 + 16) = 0;
    v20.__end_cap_.__value_ = v18;
    std::__split_buffer<std::string>::~__split_buffer(&v20);
  }

  else
  {
    v7 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v7;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v8 = v5 + 24;
  }

  *(v4 + 8) = v8;
  return a1;
}

void nlp::CFScopedPtr<__CFLocale const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void nlp::CFScopedPtr<__CFArray const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void nlp::CFScopedPtr<__CFDictionary const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void nlp::CFScopedPtr<__CFURL const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void nlp::CFScopedPtr<__CFBundle *>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

id emf_signpost_get_log()
{
  if (emf_signpost_get_log_onceToken != -1)
  {
    emf_signpost_get_log_cold_1();
  }

  v1 = emf_signpost_get_log_log;

  return v1;
}

uint64_t __emf_signpost_get_log_block_invoke()
{
  emf_signpost_get_log_log = os_log_create("com.apple.EmojiFoundation", "EmojiFoundationSignposts");

  return MEMORY[0x1EEE66BB8]();
}

id emf_logging_get_default_log()
{
  if (emf_logging_get_default_log_onceToken != -1)
  {
    emf_logging_get_default_log_cold_1();
  }

  v1 = emf_logging_get_default_log_log;

  return v1;
}

uint64_t __emf_logging_get_default_log_block_invoke()
{
  emf_logging_get_default_log_log = os_log_create("com.apple.EmojiFoundation", "StandardLogger");

  return MEMORY[0x1EEE66BB8]();
}

id emf_logging_get_query_log()
{
  if (emf_logging_get_query_log_onceToken != -1)
  {
    emf_logging_get_query_log_cold_1();
  }

  v1 = emf_logging_get_query_log_log;

  return v1;
}

uint64_t __emf_logging_get_query_log_block_invoke()
{
  emf_logging_get_query_log_log = os_log_create("com.apple.EmojiFoundation", "QueryLogger");

  return MEMORY[0x1EEE66BB8]();
}

__CFArray *_createTokensForString(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = *MEMORY[0x1E695E480];
  v11.length = CFStringGetLength(v3);
  v11.location = 0;
  v6 = CFStringTokenizerCreate(v5, v3, v11, 0, v4);
  Mutable = CFArrayCreateMutable(v5, 3, MEMORY[0x1E695E9C0]);
  while (CFStringTokenizerAdvanceToNextToken(v6))
  {
    CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v6);
    v8 = CFStringCreateWithSubstring(v5, v3, CurrentTokenRange);
    CFArrayAppendValue(Mutable, v8);
    CFRelease(v8);
  }

  CFRelease(v6);

  return Mutable;
}

CFMutableStringRef _createNormalizedString(void *a1, void *a2)
{
  v3 = *MEMORY[0x1E695E480];
  v4 = a2;
  v5 = a1;
  Length = CFStringGetLength(v5);
  MutableCopy = CFStringCreateMutableCopy(v3, Length, v5);

  CFStringNormalize(MutableCopy, kCFStringNormalizationFormD);
  CFStringLowercase(MutableCopy, v4);

  v10.length = CFStringGetLength(MutableCopy);
  v10.location = 0;
  CFStringFindAndReplace(MutableCopy, @"'", @"’", v10, 0);

  return MutableCopy;
}

id _createStemmedTokensForTokenArray(void *a1, void *a2)
{
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    v5 = [a2 stemTokens:v3];
  }

  else
  {
    v5 = v3;
  }

  v6 = v5;

  return v6;
}

void sub_1AF06A3C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _enumeratePrefixesInStringUsingBlock(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = 0;
  v6 = 0;
  v8 = 0;
  while (v6 < [v3 length])
  {
    v7 = [v3 substringWithRange:{0, v6 + 1}];

    v4[2](v4, v7, v6, &v8);
    v5 = v7;
    ++v6;
    if (v8 == 1)
    {
      goto LABEL_6;
    }
  }

  v7 = v5;
LABEL_6:
}

void sub_1AF06A718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _searchTypeForEntryMetadata(void *a1)
{
  v1 = [a1 objectForKey:@"searchType"];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 unsignedIntegerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1AF06B9A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1AF06BE0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

std::string *CEM::AdaptationDatabase::AdaptationDatabase(std::string *this, const std::__fs::filesystem::path *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (SHIBYTE(a2->__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(this, a2->__pn_.__r_.__value_.__l.__data_, a2->__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    v3 = *&a2->__pn_.__r_.__value_.__l.__data_;
    this->__r_.__value_.__r.__words[2] = a2->__pn_.__r_.__value_.__r.__words[2];
    *&this->__r_.__value_.__l.__data_ = v3;
  }

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 850045863;
  *&this[1].__r_.__value_.__r.__words[2] = 0u;
  *&this[2].__r_.__value_.__r.__words[1] = 0u;
  *&this[3].__r_.__value_.__l.__data_ = 0u;
  this[3].__r_.__value_.__r.__words[2] = 0;
  v4 = this;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    v4 = this->__r_.__value_.__r.__words[0];
  }

  if (sqlite3_open_v2(v4, &this[1], 65542, 0))
  {
    adaptation_log = cem_logging_get_adaptation_log();
    if (os_log_type_enabled(adaptation_log, OS_LOG_TYPE_ERROR))
    {
      v6 = this;
      if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
      {
        v6 = this->__r_.__value_.__r.__words[0];
      }

      v7 = sqlite3_errmsg(this[1].__r_.__value_.__l.__data_);
      CEM::AdaptationDatabase::AdaptationDatabase(v6, v7, v10, adaptation_log);
    }

    this[1].__r_.__value_.__r.__words[0] = 0;
  }

  else
  {
    v8 = cem_logging_get_adaptation_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      CEM::AdaptationDatabase::AdaptationDatabase(&this->__r_.__value_.__r.__words[2] + 7, this, v8);
    }
  }

  return this;
}

void sub_1AF06C86C(_Unwind_Exception *a1)
{
  std::mutex::~mutex(v3);
  if (*v2 < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void CEM::AdaptationDatabase::~AdaptationDatabase(CEM::AdaptationDatabase *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    sqlite3_close(v2);
  }

  std::mutex::~mutex((this + 32));
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

BOOL CEM::AdaptationDatabase::initializeDatbaseWithSql(CEM::AdaptationDatabase *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 3);
  if (v3)
  {
    memset(v8, 0, sizeof(v8));
    CEM::Statement::Statement(v9, "", 0, a2, a3, v8);
    v10 = v8;
    std::vector<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&v10);
    CEM::AdaptationDatabase::executeStatement(a1, v9, v7);
    v8[0] = v7;
    std::vector<std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>::__destroy_vector::operator()[abi:ne200100](v8);
    CEM::Statement::~Statement(v9);
  }

  else
  {
    adaptation_log = cem_logging_get_adaptation_log();
    if (os_log_type_enabled(adaptation_log, OS_LOG_TYPE_DEBUG))
    {
      CEM::AdaptationDatabase::initializeDatbaseWithSql(adaptation_log);
    }
  }

  return v3 != 0;
}

void sub_1AF06C9CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  CEM::Statement::~Statement(va);
  _Unwind_Resume(a1);
}

uint64_t CEM::AdaptationDatabase::executeStatement@<X0>(CEM::AdaptationDatabase *this@<X0>, CEM::Statement *a2@<X1>, void *a3@<X8>)
{
  v4[4] = *MEMORY[0x1E69E9840];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4[0] = &unk_1F24C8520;
  v4[1] = a3;
  v4[3] = v4;
  CEM::AdaptationDatabase::executeStatement(this, a2, v4);
  return std::__function::__value_func<void ()(std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>> const&)>::~__value_func[abi:ne200100](v4);
}

void sub_1AF06CA84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, char a10)
{
  std::__function::__value_func<void ()(std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>> const&)>::~__value_func[abi:ne200100](&a10);
  std::vector<std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void CEM::AdaptationDatabase::executeStatement(uint64_t a1, CEM::Statement *a2, uint64_t a3)
{
  std::mutex::lock((a1 + 32));
  v6 = *(a1 + 24);
  if (v6)
  {
    *(a2 + 12) = v6;
    CEM::Statement::prepare(a2);
    while (CEM::Statement::isValid(a2))
    {
      CEM::Statement::bindParameters(a2);
      while (CEM::Statement::step(a2) && CEM::Statement::hasRows(a2))
      {
        v14[0] = 0;
        v14[1] = 0;
        v13 = v14;
        if (CEM::Statement::columnSize(a2))
        {
          ColumnNameAtIndex = CEM::Statement::getColumnNameAtIndex(a2, 0);
          v12 = v7;
          CEM::Statement::getValueForColumnAtIndex(a2, 0, v10);
          std::__tree<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>>::__emplace_unique_impl<std::string_view const&,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>();
        }

        v8 = *(a3 + 24);
        if (!v8)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v8 + 48))(v8, &v13);
        std::__tree<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>>::destroy(&v13, v14[0]);
      }

      CEM::Statement::finalize(a2);
      CEM::Statement::prepare(a2);
    }
  }

  else
  {
    adaptation_log = cem_logging_get_adaptation_log();
    if (os_log_type_enabled(adaptation_log, OS_LOG_TYPE_DEBUG))
    {
      CEM::AdaptationDatabase::executeStatement(adaptation_log);
    }
  }

  std::mutex::unlock((a1 + 32));
}

uint64_t std::__function::__func<CEM::AdaptationDatabase::executeStatement(CEM::Statement &)::$_0,std::allocator<CEM::AdaptationDatabase::executeStatement(CEM::Statement &)::$_0>,void ()(std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F24C8520;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<CEM::AdaptationDatabase::executeStatement(CEM::Statement &)::$_0,std::allocator<CEM::AdaptationDatabase::executeStatement(CEM::Statement &)::$_0>,void ()(std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>> const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 8);
  if (v3 >= *(v2 + 16))
  {
    result = std::vector<std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>::__emplace_back_slow_path<std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>> const&>(*(a1 + 8), a2);
  }

  else
  {
    std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::map[abi:ne200100](*(v2 + 8), a2);
    result = v3 + 24;
    *(v2 + 8) = v3 + 24;
  }

  *(v2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<CEM::AdaptationDatabase::executeStatement(CEM::Statement &)::$_0,std::allocator<CEM::AdaptationDatabase::executeStatement(CEM::Statement &)::$_0>,void ()(std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::vector<std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>::__emplace_back_slow_path<std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>> const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>>(a1, v6);
  }

  v13 = 0;
  v14 = 24 * v2;
  std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::map[abi:ne200100]((24 * v2), a2);
  v15 = 24 * v2 + 24;
  v7 = a1[1];
  v8 = 24 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>,std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>::~__split_buffer(&v13);
  return v12;
}

void sub_1AF06CEC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::__tree_node<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

void *std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::__tree_node<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,void *> *,long>>>(void *result, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>> const&>(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *std::__tree<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>> const&>(void *a1, uint64_t a2, void **a3)
{
  v3 = *std::__tree<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>>::__find_equal<std::string>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    std::__tree<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>>::__construct_node<std::pair<std::string const,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>> const&>();
  }

  return v3;
}

void **std::__tree<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>>::__find_equal<std::string>(void *a1, uint64_t a2, void ***a3, uint64_t *a4, void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 == a2 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a5, (a2 + 32)) & 0x80) != 0)
  {
    if (*a1 == a2)
    {
      v12 = a2;
    }

    else
    {
      v11 = *a2;
      if (*a2)
      {
        do
        {
          v12 = v11;
          v11 = v11[1];
        }

        while (v11);
      }

      else
      {
        v16 = a2;
        do
        {
          v12 = v16[2];
          v17 = *v12 == v16;
          v16 = v12;
        }

        while (v17);
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v12 + 4, a5) & 0x80) == 0)
      {
        goto LABEL_17;
      }
    }

    if (*a2)
    {
      *a3 = v12;
      return (v12 + 1);
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a2 + 32), a5) & 0x80) == 0)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  a4 = (a2 + 8);
  v13 = *(a2 + 8);
  if (v13)
  {
    v14 = *(a2 + 8);
    do
    {
      v15 = v14;
      v14 = *v14;
    }

    while (v14);
  }

  else
  {
    v19 = a2;
    do
    {
      v15 = v19[2];
      v17 = *v15 == v19;
      v19 = v15;
    }

    while (!v17);
  }

  if (v15 == v9)
  {
LABEL_29:
    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a5, v15 + 4) & 0x80) != 0)
  {
    v13 = *a4;
    goto LABEL_29;
  }

LABEL_17:

  return std::__tree<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>>::__find_equal<std::string>(a1, a3, a5);
}

uint64_t *std::__tree<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__tree<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>>::__find_equal<std::string>(uint64_t a1, void *a2, void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, (v4 + 32)) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 4, a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

std::string *std::pair<std::string const,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](&this[1], a2 + 24);
  return this;
}

void sub_1AF06D3DC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>,std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v15 = a4;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  if (a2 == a3)
  {
    v14 = 1;
  }

  else
  {
    v5 = a2;
    v6 = 0;
    do
    {
      v7 = (a4 + v6);
      *v7 = *(a2 + v6);
      v8 = (a2 + v6 + 8);
      v9 = *v8;
      *(a4 + v6 + 8) = *v8;
      v10 = a4 + v6 + 8;
      v11 = *(a2 + v6 + 16);
      v7[2] = v11;
      if (v11)
      {
        *(v9 + 16) = v10;
        *(a2 + v6) = v8;
        *v8 = 0;
        *(a2 + v6 + 16) = 0;
      }

      else
      {
        *v7 = v10;
      }

      v6 += 24;
    }

    while (a2 + v6 != a3);
    v16 = a4 + v6;
    v14 = 1;
    while (v5 != a3)
    {
      std::__tree<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>>::destroy(v5, *(v5 + 8));
      v5 += 24;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>,std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>*>>::~__exception_guard_exceptions[abi:ne200100](v13);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>,std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>,std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>,std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    do
    {
      v3 = v1 - 24;
      std::__tree<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>>::destroy(v1 - 24, *(v1 - 16));
      v1 = v3;
    }

    while (v3 != v2);
  }
}

void **std::__split_buffer<std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::map<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    std::__tree<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>>>::destroy(i - 24, *(i - 16));
  }
}

void sub_1AF06D848(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>,(std::__variant_detail::_Trait)1>>(a1, a2);
  return a1;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>,(std::__variant_detail::_Trait)1>>(uint64_t a1, uint64_t a2)
{
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  v5 = *(a2 + 24);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_1F24C8590[v5])(&v6, a2);
    *(a1 + 24) = v5;
  }

  return result;
}

double std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,unsigned int,double,std::string,std::vector<unsigned char>> &&>(void **a1, double *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,unsigned int,double,std::string,std::vector<unsigned char>> &&>(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,unsigned int,double,std::string,std::vector<unsigned char>> &&>(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  v2->n128_u64[0] = 0;
  v2->n128_u64[1] = 0;
  v2[1].n128_u64[0] = 0;
  result = *a2;
  *v2 = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

void sub_1AF06DEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1AF06E05C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void getEmojiAdaptationDatabasePath(CEM *a1@<X0>, std::string *a2@<X8>)
{
  v3 = CEM::copyEmojiAdaptationDatabaseURL(a1);
  v5[2] = v3;
  v4 = CFURLCopyFileSystemPath(v3, kCFURLPOSIXPathStyle);
  v5[1] = v4;
  v5[0] = unk_1F24E7FD8(v4, "UTF8String");
  std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(a2, v5);
  if (v4)
  {
    CFRelease(v4);
  }

  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_1AF06EDCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  nlp::CFScopedPtr<__CFURL const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

void sub_1AF06EF0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  MEMORY[0x1B2716B00](v21, 0x1032C409B631534);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void sub_1AF06F0D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void sub_1AF06F408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  a16 = &a22;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a16);
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1AF071714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29)
{
  _Block_object_dispose(&a24, 8);

  _Unwind_Resume(a1);
}

void sub_1AF0728BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_1AF0736BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

id EMFGetDeviceBuildVersion(void)
{
  if (EMFGetDeviceBuildVersion(void)::onceToken != -1)
  {
    EMFGetDeviceBuildVersion();
  }

  v1 = EMFGetDeviceBuildVersion(void)::__buildVersion;

  return v1;
}

void ___Z24EMFGetDeviceBuildVersionv_block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = EMFGetDeviceBuildVersion(void)::__buildVersion;
  EMFGetDeviceBuildVersion(void)::__buildVersion = v0;

  if (!EMFGetDeviceBuildVersion(void)::__buildVersion)
  {
    EMFGetDeviceBuildVersion(void)::__buildVersion = &stru_1F24C94E8;
  }
}

void sub_1AF073CE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_1AF073E80(_Unwind_Exception *a1)
{
  v7 = v6;

  objc_sync_exit(v5);
  _Unwind_Resume(a1);
}

void sub_1AF073F70(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_1AF074024(_Unwind_Exception *a1)
{
  v3 = v2;

  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_1AF0745C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  objc_sync_exit(v23);

  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

void sub_1AF07495C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = EMFEmojiPreferencesService;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1AF074AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  nlp::CFScopedPtr<__SecTask *>::reset(va, 0);

  _Unwind_Resume(a1);
}

uint64_t StickersLibraryCore(char **a1)
{
  if (!StickersLibraryCore(char **)::frameworkLibrary)
  {
    StickersLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  return StickersLibraryCore(char **)::frameworkLibrary;
}

uint64_t ___ZL19StickersLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  StickersLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

Class ___ZL39get_STKImageGlyphRecencyObjCFacadeClassv_block_invoke(uint64_t a1)
{
  StickersLibraryCore(a1);
  result = objc_getClass("_STKImageGlyphRecencyObjCFacade");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_STKImageGlyphRecencyObjCFacadeClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void CEM::AdaptationDatabaseController::~AdaptationDatabaseController(CEM::AdaptationDatabaseController *this)
{
  if (*(this + 167) < 0)
  {
    operator delete(*(this + 18));
  }

  v2 = *(this + 17);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::mutex::~mutex(this + 1);

  std::mutex::~mutex(this);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::string&,long &>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__construct_node_hash<std::string&,long &>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1AF0753B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,unsigned long>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AF075484(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,unsigned long>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,unsigned long>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,unsigned long>,void *>>>::operator()[abi:ne200100](&v6, v3);
  }

  return v2;
}

void *std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
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

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(std::string *this, std::string **a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = *a2;
  v4 = (v3 - 1);
  do
  {
    v5 = v4->__r_.__value_.__s.__data_[1];
    v4 = (v4 + 1);
  }

  while (v5);
  std::string::append[abi:ne200100]<char const*,0>(this, v3, v4);
  return this;
}

void sub_1AF0756D0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AF075D64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, void *a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  std::mutex::unlock((v35 + 40));

  _Unwind_Resume(a1);
}

void sub_1AF07602C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1AF076C6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, void **a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, char *a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  (*(*v38 + 8))(v38);
  if (a11)
  {
    a12 = a11;
    operator delete(a11);
  }

  a11 = &a14;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a11);
  std::__tree<std::__value_type<std::basic_string<char16_t>,unsigned short>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,unsigned short>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,unsigned short>>>::destroy(&a29, a30);

  _Unwind_Resume(a1);
}

void std::basic_string<char16_t>::resize(std::basic_string<char16_t> *this, std::basic_string<char16_t>::size_type __n, std::basic_string<char16_t>::value_type __c)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
    if (size >= __n)
    {
      this->__r_.__value_.__l.__size_ = __n;
      this = this->__r_.__value_.__r.__words[0];
      goto LABEL_7;
    }

LABEL_5:
    std::basic_string<char16_t>::append(this, __n - size, __c);
    return;
  }

  if (size < __n)
  {
    goto LABEL_5;
  }

  *(&this->__r_.__value_.__s + 23) = __n;
LABEL_7:
  this->__r_.__value_.__s.__data_[__n] = 0;
}

std::basic_string<char16_t> *__cdecl std::basic_string<char16_t>::append(std::basic_string<char16_t> *this, std::basic_string<char16_t>::size_type __n, std::basic_string<char16_t>::value_type __c)
{
  if (__n)
  {
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      size = this->__r_.__value_.__l.__size_;
      v9 = this->__r_.__value_.__r.__words[2];
      v7 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      v8 = HIBYTE(v9);
    }

    else
    {
      v7 = 10;
      LOBYTE(v8) = *(&this->__r_.__value_.__s + 23);
    }

    if (v7 - size < __n)
    {
      std::basic_string<char16_t>::__grow_by(this, v7, __n - v7 + size, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v8) = *(&this->__r_.__value_.__s + 23);
    }

    v10 = this;
    if ((v8 & 0x80) != 0)
    {
      v10 = this->__r_.__value_.__r.__words[0];
    }

    v11 = 0;
    v12 = vdupq_n_s64(__n - 1);
    v13 = &v10->__r_.__value_.__s.__data_[size + 4];
    do
    {
      v14 = vdupq_n_s64(v11);
      v15 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v14, xmmword_1AF0AC100)));
      if (vuzp1_s8(vuzp1_s16(v15, *v12.i8), *v12.i8).u8[0])
      {
        *(v13 - 4) = __c;
      }

      if (vuzp1_s8(vuzp1_s16(v15, *&v12), *&v12).i8[1])
      {
        *(v13 - 3) = __c;
      }

      if (vuzp1_s8(vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v14, xmmword_1AF0AC0F0)))), *&v12).i8[2])
      {
        *(v13 - 2) = __c;
        *(v13 - 1) = __c;
      }

      v16 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v14, xmmword_1AF0AC0E0)));
      if (vuzp1_s8(*&v12, vuzp1_s16(v16, *&v12)).i32[1])
      {
        *v13 = __c;
      }

      if (vuzp1_s8(*&v12, vuzp1_s16(v16, *&v12)).i8[5])
      {
        v13[1] = __c;
      }

      if (vuzp1_s8(*&v12, vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v14, xmmword_1AF0AC0D0))))).i8[6])
      {
        v13[2] = __c;
        v13[3] = __c;
      }

      v11 += 8;
      v13 += 8;
    }

    while (((__n + 7) & 0xFFFFFFFFFFFFFFF8) != v11);
    v17 = size + __n;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v17;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v17 & 0x7F;
    }

    v10->__r_.__value_.__s.__data_[v17] = 0;
  }

  return this;
}

void std::basic_string<char16_t>::__grow_by(std::basic_string<char16_t> *this, std::basic_string<char16_t>::size_type __old_cap, std::basic_string<char16_t>::size_type __delta_cap, std::basic_string<char16_t>::size_type __old_sz, std::basic_string<char16_t>::size_type __n_copy, std::basic_string<char16_t>::size_type __n_del, std::basic_string<char16_t>::size_type __n_add)
{
  if (0x7FFFFFFFFFFFFFF7 - __old_cap >= __delta_cap)
  {
    v7 = __delta_cap + __old_cap;
    if (__delta_cap + __old_cap <= 2 * __old_cap)
    {
      v7 = 2 * __old_cap;
    }

    if ((v7 | 3) == 0xB)
    {
      v8 = 13;
    }

    else
    {
      v8 = (v7 | 3) + 1;
    }

    v9 = v7 >= 0xB;
    v10 = 11;
    if (v9)
    {
      v10 = v8;
    }

    if (__old_cap <= 0x3FFFFFFFFFFFFFF2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0x7FFFFFFFFFFFFFF7;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<char16_t>>(this, v11);
  }

  std::string::__throw_length_error[abi:ne200100]();
}

std::__split_buffer<std::string>::pointer std::vector<std::basic_string<char16_t>>::__emplace_back_slow_path<std::basic_string<char16_t> const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  begin = (24 * v2);
  v17.__first_ = 0;
  v17.__begin_ = (24 * v2);
  value = 0;
  v17.__end_ = (24 * v2);
  v17.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v17.__begin_;
    end = v17.__end_;
    value = v17.__end_cap_.__value_;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v9;
    end = (24 * v2);
  }

  v11 = end + 1;
  v12 = *(a1 + 8) - *a1;
  v13 = begin - v12;
  memcpy(begin - v12, *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = value;
  v17.__end_ = v14;
  v17.__end_cap_.__value_ = v15;
  v17.__first_ = v14;
  v17.__begin_ = v14;
  std::__split_buffer<std::string>::~__split_buffer(&v17);
  return v11;
}

void std::basic_string<char16_t>::__init_copy_ctor_external(std::basic_string<char16_t> *this, const std::basic_string<char16_t>::value_type *__s, std::basic_string<char16_t>::size_type __sz)
{
  if (__sz > 0xA)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      if ((__sz | 3) == 0xB)
      {
        v3 = 13;
      }

      else
      {
        v3 = (__sz | 3) + 1;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<char16_t>>(this, v3);
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v4 = 2 * __sz + 2;

  memmove(this, __s, v4);
}

void trie::MarisaTrie<unsigned short,char16_t>::~MarisaTrie(void *a1)
{
  trie::MarisaTrie<unsigned short,char16_t>::~MarisaTrie(a1);

  JUMPOUT(0x1B2716B00);
}

uint64_t trie::Trie<unsigned short,char16_t,internal::marisa::Cursor>::build(uint64_t *a1, uint64_t a2, const void **a3, unint64_t *a4, __int16 *a5)
{
  v33 = 0;
  v34 = 0;
  v35 = 0;
  __src = 0;
  v31 = 0;
  v32 = 0;
  if (a2)
  {
    v8 = a2;
    v9 = a5;
    do
    {
      v10 = *a3;
      v11 = *a4++;
      v28 = v11 >> 1;
      v29 = v10;
      v12 = v34;
      if (v34 >= v35)
      {
        v13 = std::vector<std::basic_string<char16_t>>::__emplace_back_slow_path<char16_t const*,unsigned long>(&v33, &v29, &v28);
      }

      else
      {
        std::allocator_traits<std::allocator<std::basic_string<char16_t>>>::construct[abi:ne200100]<std::basic_string<char16_t>,char16_t const*,unsigned long,void,0>(&v33, v34, &v29, &v28);
        v13 = v12 + 24;
      }

      v34 = v13;
      if (a5)
      {
        v14 = *v9;
        v15 = v31;
        if (v31 >= v32)
        {
          v17 = __src;
          v18 = v31 - __src;
          v19 = (v31 - __src) >> 1;
          if (v19 <= -2)
          {
            std::vector<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
          }

          if (v32 - __src <= v19 + 1)
          {
            v20 = v19 + 1;
          }

          else
          {
            v20 = v32 - __src;
          }

          if (v32 - __src >= 0x7FFFFFFFFFFFFFFELL)
          {
            v21 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v21 = v20;
          }

          if (v21)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<char16_t>>(&__src, v21);
          }

          *(2 * v19) = v14;
          v16 = 2 * v19 + 2;
          memcpy(0, v17, v18);
          v22 = __src;
          __src = 0;
          v31 = v16;
          v32 = 0;
          if (v22)
          {
            operator delete(v22);
          }
        }

        else
        {
          *v31 = v14;
          v16 = (v15 + 2);
        }

        v31 = v16;
      }

      v9 += 4;
      ++a3;
      --v8;
    }

    while (v8);
  }

  v23 = *a1;
  if (a5)
  {
    v24 = (*(v23 + 64))();
  }

  else
  {
    v24 = (*(v23 + 56))();
  }

  v25 = v24;
  if (__src)
  {
    v31 = __src;
    operator delete(__src);
  }

  __src = &v33;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__src);
  return v25;
}

void sub_1AF0775FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *__p, char *a14, uint64_t a15, char a16, uint64_t a17)
{
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  __p = &a16;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t trie::Trie<unsigned short,char16_t,internal::marisa::Cursor>::lookup(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v6 = 0;
  result = (*(*a1 + 80))(a1, a2, a3 >> 1, &v6);
  *a4 = v6;
  return result;
}

uint64_t trie::Trie<unsigned short,char16_t,internal::marisa::Cursor>::enumeratePrefixStrings(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v5[0] = &unk_1F24C8710;
  v5[1] = a4;
  v5[3] = v5;
  (*(*a1 + 88))(a1, a2, a3 >> 1, v5);
  return std::__function::__value_func<void ()(unsigned short,std::u16string_view,BOOL &)>::~__value_func[abi:ne200100](v5);
}

void sub_1AF077748(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(unsigned short,std::u16string_view,BOOL &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t trie::Trie<unsigned short,char16_t,internal::marisa::Cursor>::enumerateCompletions(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v5[0] = &unk_1F24C87A0;
  v5[1] = a4;
  v5[3] = v5;
  (*(*a1 + 96))(a1, a2, a3 >> 1, v5);
  return std::__function::__value_func<void ()(unsigned short,std::u16string_view,BOOL &)>::~__value_func[abi:ne200100](v5);
}

void sub_1AF077804(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(unsigned short,std::u16string_view,BOOL &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t trie::MarisaTrie<unsigned short,char16_t>::serialize@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v17);
  internal::marisa::Trie::write((a1 + 16), &v18);
  if ((v25 & 0x10) != 0)
  {
    v5 = v24;
    if (v24 < v21)
    {
      v24 = v21;
      v5 = v21;
    }

    locale = v20[4].__locale_;
  }

  else
  {
    if ((v25 & 8) == 0)
    {
      v4 = 0;
      HIBYTE(v16) = 0;
      goto LABEL_14;
    }

    locale = v20[1].__locale_;
    v5 = v20[3].__locale_;
  }

  v4 = v5 - locale;
  if ((v5 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v16) = v5 - locale;
  if (v4)
  {
    memmove(&__dst, locale, v4);
  }

LABEL_14:
  *(&__dst + v4) = 0;
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = SHIBYTE(v16);
    if (v16 >= 0)
    {
      v9 = HIBYTE(v16);
    }

    else
    {
      v9 = *(&__dst + 1);
    }

    *__s = v9;
    v10 = *(a1 + 24);
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
    a2->__r_.__value_.__r.__words[0] = 0;
    std::string::append(a2, __s, 4uLL);
    if (v8 >= 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    std::string::append(a2, p_dst, v9);
    std::string::append(a2, v10, 2 * v7);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(__dst);
    }
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = __dst;
    a2->__r_.__value_.__r.__words[2] = v16;
  }

  v17[0] = *MEMORY[0x1E69E54D8];
  v12 = *(MEMORY[0x1E69E54D8] + 72);
  *(v17 + *(v17[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v18 = v12;
  v19 = MEMORY[0x1E69E5548] + 16;
  if (v23 < 0)
  {
    operator delete(__p);
  }

  v19 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B2716AA0](&v26);
}

void sub_1AF077AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *__p, uint64_t a5, int a6, __int16 a7, char a8, char a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a10, MEMORY[0x1E69E54D8]);
  MEMORY[0x1B2716AA0](va);
  _Unwind_Resume(a1);
}

uint64_t trie::MarisaTrie<unsigned short,char16_t>::build(void *a1, uint64_t a2, __int16 **a3)
{
  __p = 0;
  v6 = 0;
  v7 = 0;
  v3 = trie::MarisaTrie<unsigned short,char16_t>::build(a1, a2, a3, &__p);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  return v3;
}

void sub_1AF077B9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t trie::MarisaTrie<unsigned short,char16_t>::load(uint64_t a1, void *a2, unint64_t a3)
{
  if (a3 >= 0xF)
  {
    if (*a2 == 0x2065766F6C206557 && *(a2 + 7) == 0x2E61736972614D20)
    {
      internal::marisa::Trie::map((a1 + 16), a2, a3);
      return 1;
    }
  }

  else if (a3 < 4)
  {
    return 0;
  }

  v7 = a2 + 4;
  v8 = *a2;
  internal::marisa::Trie::map((a1 + 16), a2 + 4, v8);
  *(a1 + 24) = &v7[v8];
  *(a1 + 32) = (a3 - v8 - 4) >> 1;
  return 1;
}

uint64_t trie::MarisaTrie<unsigned short,char16_t>::lookup(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4)
{
  v8 = 0;
  v6 = internal::marisa::Trie::lookup((a1 + 16), a2, 2 * a3, &v8);
  if (v6)
  {
    *a4 = trie::MarisaTrie<unsigned short,char16_t>::getCustomPayload(a1, v8);
  }

  return v6;
}

uint64_t trie::MarisaTrie<unsigned short,char16_t>::enumeratePrefixStrings(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v5[0] = &unk_1F24C8838;
  v5[1] = a1;
  v5[2] = a4;
  v5[3] = v5;
  internal::marisa::Trie::common_prefix_search((a1 + 16), a2, 2 * a3, v5);
  return std::__function::__value_func<void ()(unsigned long,std::string_view,BOOL &)>::~__value_func[abi:ne200100](v5);
}

void sub_1AF077D64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(unsigned long,std::string_view,BOOL &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t trie::MarisaTrie<unsigned short,char16_t>::enumerateCompletions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F24C88C8;
  v6[1] = a1;
  v6[2] = a4;
  v6[3] = v6;
  internal::marisa::Trie::predictive_search((a1 + 16), a2, 2 * a3, v6, (a5 << (a5 > 0)));
  return std::__function::__value_func<void ()(unsigned long,std::string_view,BOOL &)>::~__value_func[abi:ne200100](v6);
}

void sub_1AF077E10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(unsigned long,std::string_view,BOOL &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

double trie::MarisaTrie<unsigned short,char16_t>::root@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t trie::MarisaTrie<unsigned short,char16_t>::getPayload(uint64_t *a1, uint64_t a2, _WORD *a3)
{
  if (!(*(*a1 + 112))(a1))
  {
    return 0;
  }

  v8 = 0;
  payload = internal::marisa::Trie::get_payload(a1 + 2, a2, &v8);
  if (payload)
  {
    *a3 = trie::MarisaTrie<unsigned short,char16_t>::getCustomPayload(a1, v8);
  }

  return payload;
}

uint64_t trie::MarisaTrie<unsigned short,char16_t>::enumerateEntries(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[4] = *MEMORY[0x1E69E9840];
  result = (*(*a1 + 112))(a1);
  if (result)
  {
    v9[0] = &unk_1F24C8948;
    v9[1] = a1;
    v9[2] = a3;
    v9[3] = v9;
    internal::marisa::Trie::enumerate_entries(a1 + 2, a2, v9, a4);
    return std::__function::__value_func<void ()(unsigned long,std::string_view,BOOL &)>::~__value_func[abi:ne200100](v9);
  }

  return result;
}

void sub_1AF077FC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(unsigned long,std::string_view,BOOL &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t trie::MarisaTrie<unsigned short,char16_t>::enumerateChildren(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7[4] = *MEMORY[0x1E69E9840];
  result = (*(*a1 + 112))(a1);
  if (result)
  {
    v7[0] = &unk_1F24C89C8;
    v7[1] = a3;
    v7[3] = v7;
    internal::marisa::Trie::enumerate_children(a1 + 2, a2, v7);
    return std::__function::__value_func<void ()(char,internal::marisa::Cursor const&,BOOL &)>::~__value_func[abi:ne200100](v7);
  }

  return result;
}

void sub_1AF0780A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(char,internal::marisa::Cursor const&,BOOL &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *trie::MarisaTrie<unsigned short,char16_t>::~MarisaTrie(void *a1)
{
  *a1 = &unk_1F24C8628;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  internal::marisa::Trie::~Trie((a1 + 2));
  return a1;
}

uint64_t std::vector<std::basic_string<char16_t>>::__emplace_back_slow_path<char16_t const*,unsigned long>(uint64_t a1, const void **a2, unint64_t *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v4)
  {
    v4 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v7 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v7 = v4;
  }

  v13.__end_cap_.__value_ = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v7);
  }

  v13.__first_ = 0;
  v13.__begin_ = (24 * v3);
  v13.__end_ = (24 * v3);
  v13.__end_cap_.__value_ = 0;
  std::allocator_traits<std::allocator<std::basic_string<char16_t>>>::construct[abi:ne200100]<std::basic_string<char16_t>,char16_t const*,unsigned long,void,0>(a1, (24 * v3), a2, a3);
  v8 = *(a1 + 8) - *a1;
  v9 = (24 * v3 - v8);
  memcpy(v9, *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = 24 * v3 + 24;
  v11 = *(a1 + 16);
  *(a1 + 16) = v13.__end_cap_.__value_;
  v13.__end_ = v10;
  v13.__end_cap_.__value_ = v11;
  v13.__first_ = v10;
  v13.__begin_ = v10;
  std::__split_buffer<std::string>::~__split_buffer(&v13);
  return 24 * v3 + 24;
}

void std::allocator_traits<std::allocator<std::basic_string<char16_t>>>::construct[abi:ne200100]<std::basic_string<char16_t>,char16_t const*,unsigned long,void,0>(int a1, _BYTE *__dst, const void **a3, unint64_t *a4)
{
  v4 = *a4;
  if (*a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = *a3;
  if (v4 >= 0xB)
  {
    if ((v4 | 3) == 0xB)
    {
      v7 = 13;
    }

    else
    {
      v7 = (v4 | 3) + 1;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<char16_t>>(__dst, v7);
  }

  __dst[23] = v4;
  if (v4)
  {
    memmove(__dst, v6, 2 * v4);
  }

  *&__dst[2 * v4] = 0;
}

uint64_t std::__function::__func<trie::Trie<unsigned short,char16_t,internal::marisa::Cursor>::enumeratePrefixStrings(char const*,unsigned long,std::function<void ()(long long,std::string_view,BOOL &)> const&)::{lambda(unsigned short,std::u16string_view,BOOL &)#1},std::allocator<trie::Trie<unsigned short,char16_t,internal::marisa::Cursor>::enumeratePrefixStrings(char const*,unsigned long,std::function<void ()(long long,std::string_view,BOOL &)> const&)::{lambda(unsigned short,std::u16string_view,BOOL &)#1}>,void ()(unsigned short,std::u16string_view,BOOL &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F24C8710;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<trie::Trie<unsigned short,char16_t,internal::marisa::Cursor>::enumeratePrefixStrings(char const*,unsigned long,std::function<void ()(long long,std::string_view,BOOL &)> const&)::{lambda(unsigned short,std::u16string_view,BOOL &)#1},std::allocator<trie::Trie<unsigned short,char16_t,internal::marisa::Cursor>::enumeratePrefixStrings(char const*,unsigned long,std::function<void ()(long long,std::string_view,BOOL &)> const&)::{lambda(unsigned short,std::u16string_view,BOOL &)#1}>,void ()(unsigned short,std::u16string_view,BOOL &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::function<void ()(long long,std::string_view,BOOL &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[0] = a3;
  v8[1] = a4;
  v7 = a2;
  v5 = *(a1 + 24);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v5 + 48))(v5, &v7, v8, a5);
}

uint64_t std::__function::__value_func<void ()(unsigned short,std::u16string_view,BOOL &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<trie::Trie<unsigned short,char16_t,internal::marisa::Cursor>::enumerateCompletions(char const*,unsigned long,std::function<void ()(long long,std::string_view,BOOL &)> const&,int)::{lambda(unsigned short,std::u16string_view,BOOL &)#1},std::allocator<trie::Trie<unsigned short,char16_t,internal::marisa::Cursor>::enumerateCompletions(char const*,unsigned long,std::function<void ()(long long,std::string_view,BOOL &)> const&,int)::{lambda(unsigned short,std::u16string_view,BOOL &)#1}>,void ()(unsigned short,std::u16string_view,BOOL &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F24C87A0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<trie::Trie<unsigned short,char16_t,internal::marisa::Cursor>::enumerateCompletions(char const*,unsigned long,std::function<void ()(long long,std::string_view,BOOL &)> const&,int)::{lambda(unsigned short,std::u16string_view,BOOL &)#1},std::allocator<trie::Trie<unsigned short,char16_t,internal::marisa::Cursor>::enumerateCompletions(char const*,unsigned long,std::function<void ()(long long,std::string_view,BOOL &)> const&,int)::{lambda(unsigned short,std::u16string_view,BOOL &)#1}>,void ()(unsigned short,std::u16string_view,BOOL &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x1E69E5560] + 104;
  a1[16] = MEMORY[0x1E69E5560] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x1E69E5560] + 64;
  a1[2] = MEMORY[0x1E69E5560] + 64;
  v5 = MEMORY[0x1E69E54D8];
  v6 = *(MEMORY[0x1E69E54D8] + 24);
  v7 = *(MEMORY[0x1E69E54D8] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x1E69E5560] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_1AF078830(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x1B2716AA0](v1);
  _Unwind_Resume(a1);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1B2716A70](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_1AF0788EC(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

uint64_t trie::MarisaTrie<unsigned short,char16_t>::buildFromKeys(uint64_t a1, uint64_t **a2, void *a3)
{
  __src = 0;
  v23 = 0;
  v24 = 0;
  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    v7 = 0;
    do
    {
      v8 = *(v5 + 23);
      if (v8 < 0)
      {
        v9 = *v5;
        v8 = v5[1];
      }

      else
      {
        v9 = v5;
      }

      v10 = 2 * v8;
      if (v7 >= v24)
      {
        v11 = __src;
        v12 = v7 - __src;
        v13 = (v7 - __src) >> 4;
        v14 = v13 + 1;
        if ((v13 + 1) >> 60)
        {
          std::vector<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
        }

        v15 = v24 - __src;
        if ((v24 - __src) >> 3 > v14)
        {
          v14 = v15 >> 3;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFF0)
        {
          v16 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string_view>>(&__src, v16);
        }

        v17 = v13;
        v18 = (16 * v13);
        *v18 = v9;
        v18[1] = v10;
        v7 = (16 * v13 + 16);
        v19 = &v18[-2 * v17];
        memcpy(v19, v11, v12);
        v20 = __src;
        __src = v19;
        v23 = v7;
        v24 = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        *v7 = v9;
        *(v7 + 1) = v10;
        v7 += 16;
      }

      v23 = v7;
      v5 += 3;
    }

    while (v5 != v6);
  }

  internal::marisa::Trie::build((a1 + 16), &__src, a3, *(a1 + 8));
  if (__src)
  {
    v23 = __src;
    operator delete(__src);
  }

  return 1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string_view>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t trie::MarisaTrie<unsigned short,char16_t>::build(void *a1, uint64_t a2, __int16 **a3, uint64_t **a4)
{
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3) != a3[1] - *a3)
  {
    trie::MarisaTrie<unsigned short,char16_t>::build();
  }

  v8 = trie::MarisaTrie<unsigned short,char16_t>::buildFromKeys(a1, a2, a4);
  if (v8)
  {
    std::vector<unsigned short>::resize(a1 + 5, 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
    v9 = a1[5];
    v10 = *(a2 + 8) - *a2;
    if (v10)
    {
      v11 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3);
      v12 = *a3;
      v13 = *a4;
      if (v11 <= 1)
      {
        v11 = 1;
      }

      do
      {
        v15 = *v12++;
        v14 = v15;
        v16 = *v13++;
        *(v9 + 2 * v16) = v14;
        --v11;
      }

      while (v11);
    }

    v17 = (a1[6] - v9) >> 1;
    a1[3] = v9;
    a1[4] = v17;
  }

  return v8;
}

void std::vector<unsigned short>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 1;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 2 * a2;
    }
  }

  else
  {
    std::vector<unsigned short>::__append(a1, a2 - v2);
  }
}

void std::vector<unsigned short>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 1)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 2 * a2);
      v5 += 2 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 1);
    if (v8 < 0)
    {
      std::vector<std::variant<std::monostate,unsigned int,double,std::string,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 > v8)
    {
      v8 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<char16_t>>(a1, v10);
    }

    v11 = (2 * (v7 >> 1));
    bzero(v11, 2 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[2 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

uint64_t trie::MarisaTrie<unsigned short,char16_t>::getCustomPayload(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if (v2 <= a2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::out_of_range::out_of_range[abi:ne200100](exception, "Marisa Payload");
      __cxa_throw(exception, off_1E7A4CB28, MEMORY[0x1E69E5280]);
    }

    LOWORD(a2) = *(*(a1 + 24) + 2 * a2);
  }

  return a2;
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

__n128 std::__function::__func<trie::MarisaTrie<unsigned short,char16_t>::enumeratePrefixStrings(std::u16string_view,std::function<void ()(unsigned short,std::u16string_view,BOOL &)> const&)::{lambda(unsigned long,std::string_view,BOOL &)#1},std::allocator<trie::MarisaTrie<unsigned short,char16_t>::enumeratePrefixStrings(std::u16string_view,std::function<void ()(unsigned short,std::u16string_view,BOOL &)> const&)::{lambda(unsigned long,std::string_view,BOOL &)#1}>,void ()(unsigned long,std::string_view,BOOL &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F24C8838;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<trie::MarisaTrie<unsigned short,char16_t>::enumeratePrefixStrings(std::u16string_view,std::function<void ()(unsigned short,std::u16string_view,BOOL &)> const&)::{lambda(unsigned long,std::string_view,BOOL &)#1},std::allocator<trie::MarisaTrie<unsigned short,char16_t>::enumeratePrefixStrings(std::u16string_view,std::function<void ()(unsigned short,std::u16string_view,BOOL &)> const&)::{lambda(unsigned long,std::string_view,BOOL &)#1}>,void ()(unsigned long,std::string_view,BOOL &)>::operator()(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v6 = *a3;
  v7 = a3[1] >> 1;
  CustomPayload = trie::MarisaTrie<unsigned short,char16_t>::getCustomPayload(*(a1 + 8), *a2);
  v9 = *(a1 + 16);

  return std::function<void ()(unsigned short,std::u16string_view,BOOL &)>::operator()(v9, CustomPayload, v6, v7, a4);
}

uint64_t std::__function::__func<trie::MarisaTrie<unsigned short,char16_t>::enumeratePrefixStrings(std::u16string_view,std::function<void ()(unsigned short,std::u16string_view,BOOL &)> const&)::{lambda(unsigned long,std::string_view,BOOL &)#1},std::allocator<trie::MarisaTrie<unsigned short,char16_t>::enumeratePrefixStrings(std::u16string_view,std::function<void ()(unsigned short,std::u16string_view,BOOL &)> const&)::{lambda(unsigned long,std::string_view,BOOL &)#1}>,void ()(unsigned long,std::string_view,BOOL &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::function<void ()(unsigned short,std::u16string_view,BOOL &)>::operator()(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[0] = a3;
  v8[1] = a4;
  v7 = a2;
  v5 = *(a1 + 24);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v5 + 48))(v5, &v7, v8, a5);
}

uint64_t std::__function::__value_func<void ()(unsigned long,std::string_view,BOOL &)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 std::__function::__func<trie::MarisaTrie<unsigned short,char16_t>::enumerateCompletions(std::u16string_view,std::function<void ()(unsigned short,std::u16string_view,BOOL &)> const&,int)::{lambda(unsigned long,std::string_view,BOOL &)#1},std::allocator<trie::MarisaTrie<unsigned short,char16_t>::enumerateCompletions(std::u16string_view,std::function<void ()(unsigned short,std::u16string_view,BOOL &)> const&,int)::{lambda(unsigned long,std::string_view,BOOL &)#1}>,void ()(unsigned long,std::string_view,BOOL &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F24C88C8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<trie::MarisaTrie<unsigned short,char16_t>::enumerateCompletions(std::u16string_view,std::function<void ()(unsigned short,std::u16string_view,BOOL &)> const&,int)::{lambda(unsigned long,std::string_view,BOOL &)#1},std::allocator<trie::MarisaTrie<unsigned short,char16_t>::enumerateCompletions(std::u16string_view,std::function<void ()(unsigned short,std::u16string_view,BOOL &)> const&,int)::{lambda(unsigned long,std::string_view,BOOL &)#1}>,void ()(unsigned long,std::string_view,BOOL &)>::operator()(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v6 = *a3;
  v7 = a3[1] >> 1;
  CustomPayload = trie::MarisaTrie<unsigned short,char16_t>::getCustomPayload(*(a1 + 8), *a2);
  v9 = *(a1 + 16);

  return std::function<void ()(unsigned short,std::u16string_view,BOOL &)>::operator()(v9, CustomPayload, v6, v7, a4);
}

uint64_t std::__function::__func<trie::MarisaTrie<unsigned short,char16_t>::enumerateCompletions(std::u16string_view,std::function<void ()(unsigned short,std::u16string_view,BOOL &)> const&,int)::{lambda(unsigned long,std::string_view,BOOL &)#1},std::allocator<trie::MarisaTrie<unsigned short,char16_t>::enumerateCompletions(std::u16string_view,std::function<void ()(unsigned short,std::u16string_view,BOOL &)> const&,int)::{lambda(unsigned long,std::string_view,BOOL &)#1}>,void ()(unsigned long,std::string_view,BOOL &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<trie::MarisaTrie<unsigned short,char16_t>::enumerateEntries(internal::marisa::Cursor const&,std::function<void ()(unsigned short,std::u16string_view,BOOL &)> const&,int)::{lambda(unsigned long,std::string_view,BOOL &)#1},std::allocator<trie::MarisaTrie<unsigned short,char16_t>::enumerateEntries(internal::marisa::Cursor const&,std::function<void ()(unsigned short,std::u16string_view,BOOL &)> const&,int)::{lambda(unsigned long,std::string_view,BOOL &)#1}>,void ()(unsigned long,std::string_view,BOOL &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F24C8948;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<trie::MarisaTrie<unsigned short,char16_t>::enumerateEntries(internal::marisa::Cursor const&,std::function<void ()(unsigned short,std::u16string_view,BOOL &)> const&,int)::{lambda(unsigned long,std::string_view,BOOL &)#1},std::allocator<trie::MarisaTrie<unsigned short,char16_t>::enumerateEntries(internal::marisa::Cursor const&,std::function<void ()(unsigned short,std::u16string_view,BOOL &)> const&,int)::{lambda(unsigned long,std::string_view,BOOL &)#1}>,void ()(unsigned long,std::string_view,BOOL &)>::operator()(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v6 = *a3;
  v7 = a3[1] >> 1;
  CustomPayload = trie::MarisaTrie<unsigned short,char16_t>::getCustomPayload(*(a1 + 8), *a2);
  v9 = *(a1 + 16);

  return std::function<void ()(unsigned short,std::u16string_view,BOOL &)>::operator()(v9, CustomPayload, v6, v7, a4);
}

uint64_t std::__function::__func<trie::MarisaTrie<unsigned short,char16_t>::enumerateEntries(internal::marisa::Cursor const&,std::function<void ()(unsigned short,std::u16string_view,BOOL &)> const&,int)::{lambda(unsigned long,std::string_view,BOOL &)#1},std::allocator<trie::MarisaTrie<unsigned short,char16_t>::enumerateEntries(internal::marisa::Cursor const&,std::function<void ()(unsigned short,std::u16string_view,BOOL &)> const&,int)::{lambda(unsigned long,std::string_view,BOOL &)#1}>,void ()(unsigned long,std::string_view,BOOL &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<trie::MarisaTrie<unsigned short,char16_t>::enumerateChildren(internal::marisa::Cursor const&,std::function<void ()(char16_t,internal::marisa::Cursor const&,BOOL &)> const&)::{lambda(char,internal::marisa::Cursor const&,BOOL &)#1},std::allocator<trie::MarisaTrie<unsigned short,char16_t>::enumerateChildren(internal::marisa::Cursor const&,std::function<void ()(char16_t,internal::marisa::Cursor const&,BOOL &)> const&)::{lambda(char,internal::marisa::Cursor const&,BOOL &)#1}>,void ()(char,internal::marisa::Cursor const&,BOOL &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F24C89C8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<trie::MarisaTrie<unsigned short,char16_t>::enumerateChildren(internal::marisa::Cursor const&,std::function<void ()(char16_t,internal::marisa::Cursor const&,BOOL &)> const&)::{lambda(char,internal::marisa::Cursor const&,BOOL &)#1},std::allocator<trie::MarisaTrie<unsigned short,char16_t>::enumerateChildren(internal::marisa::Cursor const&,std::function<void ()(char16_t,internal::marisa::Cursor const&,BOOL &)> const&)::{lambda(char,internal::marisa::Cursor const&,BOOL &)#1}>,void ()(char,internal::marisa::Cursor const&,BOOL &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::function<void ()(char16_t,internal::marisa::Cursor const&,BOOL &)>::operator()(uint64_t a1, __int16 a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t std::__function::__value_func<void ()(char,internal::marisa::Cursor const&,BOOL &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__tree<std::__value_type<std::basic_string<char16_t>,unsigned short>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,unsigned short>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,unsigned short>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::basic_string<char16_t>,unsigned short>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,unsigned short>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,unsigned short>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::basic_string<char16_t>,unsigned short>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,unsigned short>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,unsigned short>>>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t std::__tree<std::__value_type<std::basic_string<char16_t>,unsigned short>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,unsigned short>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,unsigned short>>>::__emplace_unique_key_args<std::basic_string<char16_t>,std::basic_string<char16_t> const&,unsigned short>(uint64_t a1, unsigned __int16 *a2)
{
  result = *std::__tree<std::__value_type<std::basic_string<char16_t>,unsigned short>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,unsigned short>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,unsigned short>>>::__find_equal<std::basic_string<char16_t>>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::basic_string<char16_t>,unsigned short>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,unsigned short>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,unsigned short>>>::__construct_node<std::basic_string<char16_t> const&,unsigned short>();
  }

  return result;
}

unsigned __int16 *std::__tree<std::__value_type<std::basic_string<char16_t>,unsigned short>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,unsigned short>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,unsigned short>>>::__find_equal<std::basic_string<char16_t>>(uint64_t a1, unsigned __int16 **a2, unsigned __int16 *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((std::operator<=>[abi:ne200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(a3, v4 + 16) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((std::operator<=>[abi:ne200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(v7 + 16, a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 4;
      v4 = *(v7 + 1);
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void sub_1AF079914(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::basic_string<char16_t>,unsigned short>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::operator<=>[abi:ne200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 23);
  v3 = v2;
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a1 + 1);
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 1);
  }

  if (v4 >= v2)
  {
    v6 = v2;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v5 >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    if (v3 >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    do
    {
      v9 = *v8;
      v10 = *v7;
      if (v9 < v10)
      {
        return 255;
      }

      if (v10 < v9)
      {
        return 1;
      }

      ++v8;
      ++v7;
    }

    while (--v6);
  }

  if (v2 == v4)
  {
    return 0;
  }

  if (v2 < v4)
  {
    return 255;
  }

  return 1;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::basic_string<char16_t>,unsigned short>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_1AF07A3DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1AF07A440@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = *sub_1AF08570C();
  sub_1AF081B90();
  sub_1AF081BAC(v3, v4, v16);
  v15[3] = &type metadata for ProfileFromCGImage;
  v15[4] = &off_1F24C9090;
  v5 = swift_allocObject();
  v15[0] = v5;
  v6 = v16[7];
  *(v5 + 112) = v16[6];
  *(v5 + 128) = v6;
  *(v5 + 144) = v17;
  v7 = v16[3];
  *(v5 + 48) = v16[2];
  *(v5 + 64) = v7;
  v8 = v16[5];
  *(v5 + 80) = v16[4];
  *(v5 + 96) = v8;
  v9 = v16[1];
  *(v5 + 16) = v16[0];
  *(v5 + 32) = v9;
  *a2 = v3;
  sub_1AF07A3DC(v15, a2 + 8);
  v10 = off_1F24C90A0[0];
  v11 = v3;
  v10();
  LOBYTE(v3) = sub_1AF07A9F0(v11, v12, v13);

  *(a2 + 48) = v3 & 1;
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t sub_1AF07A578@<X0>(void *a1@<X0>, void *a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  v8 = a3;
  *&v19[0] = a1;
  sub_1AF07A3DC(a2, v19 + 8);
  if (v8 == 2)
  {
    v9 = a2[3];
    v10 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v9);
    v11 = *(v10 + 16);
    v12 = a1;
    v11(v9, v10);
    v15 = sub_1AF07A9F0(v12, v13, v14);

    v16 = v15;
  }

  else
  {
    v16 = a3 & 1;
  }

  v20 = v16;
  v17 = v19[1];
  *a4 = v19[0];
  *(a4 + 16) = v17;
  *(a4 + 32) = v19[2];
  *(a4 + 48) = v16;
  return __swift_destroy_boxed_opaque_existential_1(a2);
}

uint64_t sub_1AF07A670()
{
  v1 = v0[4];
  v2 = v0[5];
  __swift_project_boxed_opaque_existential_1(v0 + 1, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_1AF07A6C4()
{
  v1 = v0[4];
  v2 = v0[5];
  __swift_project_boxed_opaque_existential_1(v0 + 1, v1);
  return (*(v2 + 24))(v1, v2);
}

void sub_1AF07A750(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7, double a8)
{
  v15 = v8[4];
  v16 = v8[5];
  __swift_project_boxed_opaque_existential_1(v8 + 1, v15);
  v17 = (*(v16 + 8))(v15, v16);
  v19 = v18;
  v24.origin.x = a1;
  v24.origin.y = a2;
  v24.size.width = a3;
  v24.size.height = a4;
  v20 = v17 * CGRectGetWidth(v24) * a7;
  v25.origin.x = a1;
  v25.origin.y = a2;
  v25.size.width = a3;
  v25.size.height = a4;
  Height = CGRectGetHeight(v25);
  sub_1AF07A844(v20, -(v19 * Height) * a8, a1, a2, a3, a4, a5, a6);
}

void sub_1AF07A844(double a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7, double a8)
{
  v13.origin.x = a3;
  v13.origin.y = a4;
  v13.size.width = a5;
  v13.size.height = a6;
  vabdd_f64(CGRectGetWidth(v13), a7);
  v14.origin.x = a3;
  v14.origin.y = a4;
  v14.size.width = a5;
  v14.size.height = a6;
  vabdd_f64(CGRectGetHeight(v14), a8);
}

id sub_1AF07A908(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1AF07AB08(a1, v3 + OBJC_IVAR____TtC15EmojiFoundation18CachedImageProfile_value);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_1AF07AB40(a1);
  return v4;
}

id sub_1AF07A9AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CachedImageProfile();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL sub_1AF07A9F0(CGImage *a1, double a2, double a3)
{
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  result = 0;
  if (Width)
  {
    if (Height)
    {
      return *sub_1AF085730() * 100.0 <= round(a2 * a3 / (Width * Height) * 100.0);
    }
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1AF07ABB0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AF07ABF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for CGImage()
{
  if (!qword_1EB62D8E8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB62D8E8);
    }
  }
}

void sub_1AF07ACA8(uint64_t a1@<X8>)
{
  UIFontForLanguage = CTFontCreateUIFontForLanguage(kCTFontUIFontSystem, 160.0, 0);
  if (UIFontForLanguage)
  {
    v3 = UIFontForLanguage;
    EmojiFontForFont = CTFontCreateEmojiFontForFont();

    sub_1AF07CACC(EmojiFontForFont, v6);
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  else
  {
    __break(1u);
  }
}

double sub_1AF07AD24@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF07CACC(a1, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

void sub_1AF07AD70(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>)
{
  v17 = *v8;
  Size = CTFontGetSize(*v8);
  if ((*&Size & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_61;
  }

  if (Size <= -9.22337204e18)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (Size >= 9.22337204e18)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v85 = a3;
  v19 = *(v8 + 24);
  v20 = v17;
  v21 = sub_1AF07CD64(a1, a2, v20);
  v91 = sub_1AF07CED8(v21);
  v23 = v22;
  v24 = CTFontGetSize(v20);
  if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v24 <= -9.22337204e18)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v24 >= 9.22337204e18)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v89 = a5;
  v90 = v23;
  v86 = Size;
  v25 = v24;
  v26 = sub_1AF07D248();
  v27 = &unk_1E7A71000;
  v28 = [v19 objectForKey_];
  if (v28)
  {
    Image = v28;

    if ((a4 & 1) == 0)
    {
      v57 = 0;
      goto LABEL_37;
    }
  }

  else
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v56 = __CGBitmapContextCreate(v25, v25, DeviceRGB);

    if (!v56 || (ImageBounds = CTLineGetImageBounds(v21, v56), CGContextTranslateCTM(v56, -ImageBounds.origin.x, -ImageBounds.origin.y), CTLineDraw(v21, v56), Image = CGBitmapContextCreateImage(v56), v56, !Image))
    {

      *(v89 + 41) = 0u;
      *(v89 + 16) = 0u;
      *(v89 + 32) = 0u;
      *v89 = 0u;
      return;
    }

    [v19 setObject:Image forKey:v26];

    if ((a4 & 1) == 0)
    {
      v57 = 0;
      goto LABEL_36;
    }

    v27 = &unk_1E7A71000;
  }

  v29 = *(v8 + 8);
  if (!*(v29 + 16))
  {
    v57 = 1;
    goto LABEL_37;
  }

  v30 = v8;
  v31 = sub_1AF07BB9C(v91, v90);
  if ((v32 & 1) == 0)
  {
    v57 = 1;
LABEL_36:
    v27 = &unk_1E7A71000;
LABEL_37:
    v58 = v20;
    v59 = sub_1AF07CD64(a1, a2, v58);
    sub_1AF07CED8(v59);
    v60 = CTFontGetSize(v58);
    if ((*&v60 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v60 > -9.22337204e18)
      {
        if (v60 < 9.22337204e18)
        {
          v61 = v60;
          v62 = sub_1AF07D248();
          v63 = [v19 v27[468]];
          if (v63)
          {
            v64 = v63;

            if (v57)
            {
              goto LABEL_42;
            }
          }

          else
          {
            v71 = CGColorSpaceCreateDeviceRGB();
            v72 = __CGBitmapContextCreate(v61, v61, v71);

            if (!v72 || (v106 = CTLineGetImageBounds(v59, v72), CGContextTranslateCTM(v72, -v106.origin.x, -v106.origin.y), CTLineDraw(v59, v72), v64 = CGBitmapContextCreateImage(v72), v72, !v64))
            {

              *(v89 + 41) = 0u;
              *(v89 + 16) = 0u;
              *(v89 + 32) = 0u;
              *v89 = 0u;

              return;
            }

            [v19 setObject:v64 forKey:v62];

            v27 = 0x1FB1B2000;
            if (v57)
            {
LABEL_42:
              v65 = sub_1AF07D248();

              v66 = v27;
              v67 = *(v8 + 32);
              v68 = [v67 v66 + 2680];
              if (v68)
              {
                v69 = v68;

                sub_1AF07AB08(v69 + OBJC_IVAR____TtC15EmojiFoundation18CachedImageProfile_value, &v100);
                v70 = v69;
              }

              else
              {
                sub_1AF07A440(v64, &v100);
                type metadata accessor for CachedImageProfile();
                sub_1AF07AB08(&v100, &v96);
                v73 = sub_1AF07A908(&v96);
                [v67 setObject:v73 forKey:v65];

                v70 = Image;
              }

              *v89 = v64;
              v74 = v101;
              *(v89 + 8) = v100;
              *(v89 + 24) = v74;
              *(v89 + 40) = v102;
              *(v89 + 56) = v103;
              return;
            }
          }

          *v89 = v64;
          sub_1AF07A440(v64, v89 + 8);

          return;
        }

LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v33 = (*(v29 + 56) + (v31 << 6));
  v101 = v33[1];
  v100 = *v33;
  v102 = v33[2];
  v34 = v86;
  v103 = v33[3];
  v35 = *&v101;
  if (v85)
  {
    v34 = *(&v101 + 1);
  }

  else
  {
    v35 = v86;
  }

  v36 = Size * sub_1AF0855F0(v35, v34, a6, a7, a8) * a8;
  v37 = 40.0;
  if (v36 > 40.0)
  {
    v37 = 160.0;
    if (v36 < 160.0)
    {
      v37 = 64.0;
      if (v36 > 64.0)
      {
        v37 = 96.0;
        if (v36 > 96.0)
        {
          v37 = 160.0;
        }
      }
    }
  }

  *(&v97 + 1) = &type metadata for PrecomputedProfile;
  *&v98 = &off_1F24C8FC0;
  v38 = swift_allocObject();
  *&v96 = v38;
  v39 = v101;
  v38[1] = v100;
  v38[2] = v39;
  v40 = v103;
  v38[3] = v102;
  v38[4] = v40;
  v88 = Image;
  sub_1AF07A578(v88, &v96, 2u, v95);
  v41 = *(v8 + 16);
  v42 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v43 = [v41 objectForKey_];
  v44 = v43;
  if (!v43)
  {
    v44 = CTFontCreateCopyWithAttributes(v20, v37, 0, 0);
    [v41 setObject:v44 forKey:v42];
  }

  v45 = v43;
  v46 = sub_1AF07CD64(a1, a2, v44);
  sub_1AF07CED8(v46);
  v47 = CTFontGetSize(v44);

  if ((*&v47 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_69;
  }

  if (v47 <= -9.22337204e18)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v47 >= 9.22337204e18)
  {
LABEL_71:
    __break(1u);
    return;
  }

  v48 = sub_1AF07D248();
  v49 = &unk_1E7A71000;
  v50 = [v19 objectForKey_];
  if (!v50)
  {
    v75 = CGColorSpaceCreateDeviceRGB();
    v76 = __CGBitmapContextCreate(v47, v47, v75);

    if (!v76 || (v107 = CTLineGetImageBounds(v46, v76), CGContextTranslateCTM(v76, -v107.origin.x, -v107.origin.y), CTLineDraw(v46, v76), v50 = CGBitmapContextCreateImage(v76), v76, !v50))
    {

      sub_1AF07AB40(v95);

      *(v89 + 41) = 0u;
      *(v89 + 16) = 0u;
      *(v89 + 32) = 0u;
      *v89 = 0u;
      return;
    }

    [v19 setObject:v50 forKey:v48];
    v49 = &unk_1E7A71000;
  }

  v51 = sub_1AF07D248();

  v52 = *(v30 + 32);
  v53 = [v52 v49[468]];
  if (v53)
  {
    v54 = v53;
    sub_1AF07AB40(v95);

    *v89 = v50;
    sub_1AF07AB08(v54 + OBJC_IVAR____TtC15EmojiFoundation18CachedImageProfile_value, v89 + 8);
  }

  else
  {
    Width = CGImageGetWidth(v50);
    Height = CGImageGetHeight(v50);
    sub_1AF081820(&v96, Width, Height);
    v92[3] = &type metadata for PrecomputedProfile;
    v92[4] = &off_1F24C8FC0;
    v79 = swift_allocObject();
    v92[0] = v79;
    v80 = v97;
    v79[1] = v96;
    v79[2] = v80;
    v81 = v99;
    v79[3] = v98;
    v79[4] = v81;
    LOBYTE(Width) = v95[48];
    v82 = v50;
    sub_1AF07A578(v82, v92, Width, v93);
    type metadata accessor for CachedImageProfile();
    sub_1AF07AB08(v93, v92);
    v83 = sub_1AF07A908(v92);
    [v52 setObject:v83 forKey:v51];

    sub_1AF07AB40(v95);
    *v89 = v82;
    v84 = v93[1];
    *(v89 + 8) = v93[0];
    *(v89 + 24) = v84;
    *(v89 + 40) = v93[2];
    *(v89 + 56) = v94;
  }
}

uint64_t sub_1AF07B7C8(uint64_t a1, id *a2)
{
  result = sub_1AF0A7C50();
  *a2 = 0;
  return result;
}

uint64_t sub_1AF07B840(uint64_t a1, id *a2)
{
  v3 = sub_1AF0A7C60();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1AF07B8C0@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF0A7C70();
  v2 = sub_1AF0A7C40();

  *a1 = v2;
  return result;
}

uint64_t sub_1AF07B904()
{
  v0 = sub_1AF0A7C70();
  v1 = MEMORY[0x1B2715F00](v0);

  return v1;
}

uint64_t sub_1AF07B940()
{
  sub_1AF0A7C70();
  sub_1AF0A7C90();
}

uint64_t sub_1AF07B994()
{
  sub_1AF0A7C70();
  sub_1AF0A7E70();
  sub_1AF0A7C90();
  v0 = sub_1AF0A7E90();

  return v0;
}

uint64_t sub_1AF07BA08@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1AF0A7C40();

  *a1 = v2;
  return result;
}

uint64_t sub_1AF07BA50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AF0A7C70();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1AF07BA7C(uint64_t a1)
{
  v2 = sub_1AF07DAE0(&qword_1EB62D480);
  v3 = sub_1AF07DAE0(&qword_1EB62D940);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1AF07BB14()
{
  v0 = sub_1AF0A7C70();
  v2 = v1;
  if (v0 == sub_1AF0A7C70() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1AF0A7E50();
  }

  return v5 & 1;
}

unint64_t sub_1AF07BB9C(uint64_t a1, uint64_t a2)
{
  sub_1AF0A7E70();
  sub_1AF0A7C90();
  v4 = sub_1AF0A7E90();

  return sub_1AF07BCA8(a1, a2, v4);
}

unint64_t sub_1AF07BC14(uint64_t a1)
{
  sub_1AF0A7C70();
  sub_1AF0A7E70();
  sub_1AF0A7C90();
  v2 = sub_1AF0A7E90();

  return sub_1AF07BD60(a1, v2);
}

unint64_t sub_1AF07BCA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1AF0A7E50())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1AF07BD60(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1AF0A7C70();
      v8 = v7;
      if (v6 == sub_1AF0A7C70() && v8 == v9)
      {
        break;
      }

      v11 = sub_1AF0A7E50();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

char *sub_1AF07BE64(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB62D908);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_1AF07BF68(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB62D8F0);
  v34 = a2;
  result = sub_1AF0A7D90();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + (v21 << 6));
      v35 = *v25;
      v36 = v25[1];
      v37 = v25[2];
      v38 = v25[3];
      if ((v34 & 1) == 0)
      {
      }

      sub_1AF0A7E70();
      sub_1AF0A7C90();
      result = sub_1AF0A7E90();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = (*(v7 + 56) + (v15 << 6));
      *v17 = v35;
      v17[1] = v36;
      v17[2] = v37;
      v17[3] = v38;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_1AF07C224()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB62D8F0);
  v2 = *v0;
  v3 = sub_1AF0A7D80();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v21 = v20[1];
        v17 <<= 6;
        v22 = *(v19 + v17);
        v26 = *(v19 + v17 + 16);
        v23 = *(v19 + v17 + 32);
        v27 = *(v19 + v17 + 48);
        v24 = (*(v4 + 48) + v18);
        *v24 = *v20;
        v24[1] = v21;
        v25 = (*(v4 + 56) + v17);
        v25[2] = v23;
        v25[3] = v27;
        *v25 = v22;
        v25[1] = v26;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_1AF07C3B0(char *a1, int64_t a2, char a3)
{
  result = sub_1AF07C3D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AF07C3D0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB62D900);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1AF07C4DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB62D8F0);
  v3 = sub_1AF0A7DA0();

  v4 = *(a1 + 48);
  v24 = *(a1 + 32);
  v25 = v4;
  v5 = *(a1 + 80);
  v26 = *(a1 + 64);
  v27 = v5;
  v28 = *(a1 + 96);
  v7 = *(&v24 + 1);
  v6 = v24;
  sub_1AF07DA44(&v24, v23, &qword_1EB62D928);
  result = sub_1AF07BB9C(v6, v7);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = (a1 + 112);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v6;
    v11[1] = v7;
    v12 = (v3[7] + (result << 6));
    v13 = v25;
    v14 = v26;
    v15 = v28;
    v12[2] = v27;
    v12[3] = v15;
    *v12 = v13;
    v12[1] = v14;
    v16 = v3[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      break;
    }

    v3[2] = v18;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v19 = v10 + 5;
    v20 = v10[1];
    v24 = *v10;
    v25 = v20;
    v21 = v10[3];
    v26 = v10[2];
    v27 = v21;
    v28 = v10[4];
    v7 = *(&v24 + 1);
    v6 = v24;
    sub_1AF07DA44(&v24, v23, &qword_1EB62D928);
    result = sub_1AF07BB9C(v6, v7);
    v10 = v19;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1AF07C678(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB62D920);
    v3 = sub_1AF0A7DA0();
    v4 = a1 + 32;

    while (1)
    {
      sub_1AF07DA44(v4, &v11, &qword_1EB62D918);
      v5 = v11;
      result = sub_1AF07BC14(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1AF07D9E0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1AF07C7A0()
{
  v0 = sub_1AF07C4DC(MEMORY[0x1E69E7CC0]);
  sub_1AF0A7BB0();
  swift_allocObject();
  sub_1AF0A7BA0();
  sub_1AF07D764();
  sub_1AF0A7B90();

  v1 = v39;
  v2 = v40 + 64;
  v3 = 1 << *(v40 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v40 + 64);
  v6 = (v3 + 63) >> 6;
  v37 = v40;

  v7 = 0;
  if (v5)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v10 >= v6)
    {

      return v0;
    }

    v5 = *(v2 + 8 * v10);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v11 = __clz(__rbit64(v5)) | (v10 << 6);
    v12 = (*(v37 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = (*(v37 + 56) + 48 * v11);
    v16 = *v15;
    v17 = v15[1];
    v18 = v15[2];
    v19 = v15[3];
    v20 = v15[4];
    v21 = v15[5];

    sub_1AF08180C(&v39, *&v1, *(&v1 + 1), v16, v17, v18, v19, v20, v21);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = v0;
    v23 = sub_1AF07BB9C(v14, v13);
    v25 = *(v0 + 16);
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      break;
    }

    v29 = v24;
    if (*(v0 + 24) >= v28)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v35 = v23;
        sub_1AF07C224();
        v23 = v35;
      }
    }

    else
    {
      sub_1AF07BF68(v28, isUniquelyReferenced_nonNull_native);
      v23 = sub_1AF07BB9C(v14, v13);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_24;
      }
    }

    v5 &= v5 - 1;
    if (v29)
    {
      v8 = v23;

      v0 = v38;
      v9 = (v38[7] + (v8 << 6));
      *v9 = v39;
      v9[1] = v40;
      v9[2] = v41;
      v9[3] = v42;
      v7 = v10;
      if (!v5)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v0 = v38;
      v38[(v23 >> 6) + 8] |= 1 << v23;
      v31 = (v38[6] + 16 * v23);
      *v31 = v14;
      v31[1] = v13;
      v32 = (v38[7] + (v23 << 6));
      *v32 = v39;
      v32[1] = v40;
      v32[2] = v41;
      v32[3] = v42;
      v33 = v38[2];
      v27 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v27)
      {
        goto LABEL_23;
      }

      v38[2] = v34;
      v7 = v10;
      if (!v5)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v10 = v7;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1AF0A7E60();
  __break(1u);
  return result;
}

void sub_1AF07CACC(void *a1@<X0>, const __CTFont **a2@<X8>)
{
  sub_1AF07C4DC(MEMORY[0x1E69E7CC0]);
  v4 = objc_allocWithZone(MEMORY[0x1E695DEE0]);

  v5 = [v4 init];
  v6 = objc_allocWithZone(MEMORY[0x1E695DEE0]);
  v7 = v5;
  v8 = [v6 init];
  v9 = objc_allocWithZone(MEMORY[0x1E695DEE0]);
  v10 = v8;
  v11 = [v9 init];
  v12 = a1;
  v13 = v7;
  v14 = v10;
  v15 = v12;
  v16 = v11;
  if (sub_1AF0A7CA0() != 4)
  {
    goto LABEL_9;
  }

  v17 = 0;
  while (1)
  {
    v18 = sub_1AF0A7CC0();
    if ((v18 & 0x10000) != 0)
    {
      break;
    }

    v19 = v17 << 8;
    v17 = (v17 << 8) + v18;
    if (__CFADD__(v19, v18))
    {
      __break(1u);
      break;
    }
  }

  v20 = CTFontCopyTable(v15, v17, 0);
  if (v20)
  {
    v21 = v20;
    v22 = sub_1AF0A7BC0();
    v24 = v23;

    v25 = sub_1AF07C7A0();
    swift_bridgeObjectRelease_n();
    sub_1AF07D9F0(v22, v24);
  }

  else
  {
LABEL_9:
    v25 = sub_1AF07C4DC(MEMORY[0x1E69E7CC0]);

    swift_bridgeObjectRelease_n();
  }

  v26 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  [v13 setObject:v15 forKey:v26];

  *a2 = v15;
  a2[1] = v25;
  a2[2] = v13;
  a2[3] = v14;
  a2[4] = v16;
}