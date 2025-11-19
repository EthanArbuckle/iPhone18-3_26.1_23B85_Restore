void _NodeContextOpenExtended()
{
  v16 = *MEMORY[0x1E69E9840];
  TString::TString(&v8, "DS Context");
  TString::TString(&v7, "Open Extended");
  v1 = StSignpostMacroHelper::GetOrCreateFinderLog(&v8, v0);
  ISignpostInterval::ISignpostInterval(&v10, v1);

  SignpostID = ISignpostInterval::MakeSignpostID(&v10, 0);
  v12[0] = &unk_1F5F3FCA0;
  v12[3] = v12;
  v12[4] = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  std::mutex::lock(&v10);
  v9 = SignpostID;
  *buf = &unk_1F5F3FDB0;
  v14 = &v9;
  v15 = buf;
  ISignpostInterval::BeginPriv(&v10, SignpostID, buf);
  std::__function::__value_func<void ()(NSObject  {objcproto9OS_os_log}*)>::~__value_func[abi:ne200100](buf);
  std::mutex::unlock(&v10);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v7.fString.fRef);
  v2 = TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v8.fString.fRef);
  TSystemNotificationTask::gHandleFolderManager = 1;
  sOpenDSStoreOnEnumeration = 1;
  sManageSidebar = 1;
  TNodeEvent::Notify(v2, v3, v4);
  NodeContextOpen();
  if (UseFileProviderFramework())
  {
    v5 = LogObj(4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E5674000, v5, OS_LOG_TYPE_DEFAULT, "FileProvider enabled", buf, 2u);
    }
  }

  StSignpostMacroHelper::~StSignpostMacroHelper(&v10);
  v6 = *MEMORY[0x1E69E9840];
}

uint64_t *StSignpostMacroHelper::GetOrCreateFinderLog(TString *this, const TString *a2)
{
  {
    StSignpostMacroHelper::GetOrCreateFinderLog();
  }

  std::mutex::lock(&StSignpostMacroHelper::GetOrCreateFinderLog(TString const&)::fMutex);
  if (!std::__hash_table<std::__hash_value_type<TString,TProgressInfo>,std::__unordered_map_hasher<TString,std::__hash_value_type<TString,TProgressInfo>,std::hash<TString>,std::equal_to<TString>,true>,std::__unordered_map_equal<TString,std::__hash_value_type<TString,TProgressInfo>,std::equal_to<TString>,std::hash<TString>,true>,std::allocator<std::__hash_value_type<TString,TProgressInfo>>>::find<TString>(&StSignpostMacroHelper::GetOrCreateFinderLog(TString const&)::gFinderLogs, this))
  {
    v3 = TString::c_str(this);
    v4 = os_log_create("com.apple.DesktopServices", v3);
    v5 = std::__hash_table<std::__hash_value_type<TString,NSObject  {objcproto9OS_os_log}* {__strong}>,std::__unordered_map_hasher<TString,std::__hash_value_type<TString,NSObject  {objcproto9OS_os_log}* {__strong}>,std::hash<TString>,std::equal_to<TString>,true>,std::__unordered_map_equal<TString,std::__hash_value_type<TString,NSObject  {objcproto9OS_os_log}* {__strong}>,std::equal_to<TString>,std::hash<TString>,true>,std::allocator<std::__hash_value_type<TString,NSObject  {objcproto9OS_os_log}* {__strong}>>>::__emplace_unique_key_args<TString,std::piecewise_construct_t const&,std::tuple<TString const&>,std::tuple<>>(&StSignpostMacroHelper::GetOrCreateFinderLog(TString const&)::gFinderLogs, this);
    v6 = v5[3];
    v5[3] = v4;
  }

  v7 = std::__hash_table<std::__hash_value_type<TString,NSObject  {objcproto9OS_os_log}* {__strong}>,std::__unordered_map_hasher<TString,std::__hash_value_type<TString,NSObject  {objcproto9OS_os_log}* {__strong}>,std::hash<TString>,std::equal_to<TString>,true>,std::__unordered_map_equal<TString,std::__hash_value_type<TString,NSObject  {objcproto9OS_os_log}* {__strong}>,std::equal_to<TString>,std::hash<TString>,true>,std::allocator<std::__hash_value_type<TString,NSObject  {objcproto9OS_os_log}* {__strong}>>>::__emplace_unique_key_args<TString,std::piecewise_construct_t const&,std::tuple<TString const&>,std::tuple<>>(&StSignpostMacroHelper::GetOrCreateFinderLog(TString const&)::gFinderLogs, this)[3];
  std::mutex::unlock(&StSignpostMacroHelper::GetOrCreateFinderLog(TString const&)::fMutex);

  return v7;
}

void StSignpostMacroHelper::GetOrCreateFinderLog()
{
  {
    StSignpostMacroHelper::GetOrCreateFinderLog(TString const&)::gFinderLogs = 0u;
    unk_1ECFF36C8 = 0u;
    dword_1ECFF36D8 = 1065353216;
  }
}

void TString::TString(TString *this, const char *a2)
{
  this->fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(&this->fString.fRef, &stru_1F5F42870);
  if (a2)
  {
    v4 = strlen(a2);
    TString::SetFromUTF8(this, a2, v4);
  }
}

uint64_t **std::__hash_table<std::__hash_value_type<TString,TProgressInfo>,std::__unordered_map_hasher<TString,std::__hash_value_type<TString,TProgressInfo>,std::hash<TString>,std::equal_to<TString>,true>,std::__unordered_map_equal<TString,std::__hash_value_type<TString,TProgressInfo>,std::equal_to<TString>,std::hash<TString>,true>,std::allocator<std::__hash_value_type<TString,TProgressInfo>>>::find<TString>(void *a1, TString *this)
{
  v4 = FowlerNollVoHash::hash(this, this);
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
      if (CFEqual(i[2], this->fString.fRef))
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

uint64_t FowlerNollVoHash::hash(TString *this, const TString *a2)
{
  v2 = 0xCBF29CE484222325;
  v3 = TString::c_str(this);
  for (i = strlen(v3); i; --i)
  {
    v5 = *v3++;
    v2 = 0x100000001B3 * (v2 ^ v5);
  }

  return v2;
}

uint64_t TString::c_str(TString *this)
{
  v1 = this->fString.fRef;

  return [(__CFString *)v1 UTF8String];
}

uint64_t **std::__hash_table<std::__hash_value_type<TString,NSObject  {objcproto9OS_os_log}* {__strong}>,std::__unordered_map_hasher<TString,std::__hash_value_type<TString,NSObject  {objcproto9OS_os_log}* {__strong}>,std::hash<TString>,std::equal_to<TString>,true>,std::__unordered_map_equal<TString,std::__hash_value_type<TString,NSObject  {objcproto9OS_os_log}* {__strong}>,std::equal_to<TString>,std::hash<TString>,true>,std::allocator<std::__hash_value_type<TString,NSObject  {objcproto9OS_os_log}* {__strong}>>>::__emplace_unique_key_args<TString,std::piecewise_construct_t const&,std::tuple<TString const&>,std::tuple<>>(void *a1, TString *this)
{
  v4 = FowlerNollVoHash::hash(this, this);
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
    std::__hash_table<std::__hash_value_type<TString,NSObject  {objcproto9OS_os_log}* {__strong}>,std::__unordered_map_hasher<TString,std::__hash_value_type<TString,NSObject  {objcproto9OS_os_log}* {__strong}>,std::hash<TString>,std::equal_to<TString>,true>,std::__unordered_map_equal<TString,std::__hash_value_type<TString,NSObject  {objcproto9OS_os_log}* {__strong}>,std::equal_to<TString>,std::hash<TString>,true>,std::allocator<std::__hash_value_type<TString,NSObject  {objcproto9OS_os_log}* {__strong}>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<TString const&>,std::tuple<>>();
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

  if (!CFEqual(v11[2], this->fString.fRef))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1E5675F4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a10)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<TString,NSObject  {objcproto9OS_os_log}* {__strong}>,void *>>>::operator()[abi:ne200100](&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E567600C(_Unwind_Exception *a1)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v4);
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<TString,NSObject  {objcproto9OS_os_log}* {__strong}>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void TString::SetStringRefAsImmutable(TString *this, TString *a2)
{
  v2 = this;
  if (!a2)
  {
    v5 = &stru_1F5F42870;
    goto LABEL_6;
  }

  IsMutable = TString::IsMutable(a2, a2);
  if ((IsMutable & 0x100) != 0 && (IsMutable & 1) == 0)
  {
    this = v2;
    v5 = a2;
LABEL_6:

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(&this->fString.fRef, v5);
    return;
  }

  Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], a2);
  if (v2->fString.fRef)
  {
    CFRelease(v2->fString.fRef);
  }

  v2->fString.fRef = Copy;
}

uint64_t TString::IsMutable(TString *this, const __CFString *a2)
{
  if (!this)
  {
    v4 = 0;
    v5 = 1;
    return v4 | (v5 << 8);
  }

  ClassName = object_getClassName(this);
  if (!strcmp(ClassName, "__NSCFString"))
  {
    v4 = __CFStringIsMutable() != 0;
    goto LABEL_9;
  }

  if (!strcmp(ClassName, "__NSCFConstantString") || !strcmp(ClassName, "NSTaggedPointerString"))
  {
    v4 = 0;
LABEL_9:
    v5 = 1;
    return v4 | (v5 << 8);
  }

  v3 = strcmp(ClassName, "_NSBPlistMappedString");
  v4 = 0;
  v5 = v3 == 0;
  return v4 | (v5 << 8);
}

void std::__hash_table<std::__hash_value_type<unsigned long long,TRecordProgress>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRecordProgress>>>::__rehash<true>(uint64_t a1, size_t __n)
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

      std::__hash_table<std::__hash_value_type<unsigned long long,TRecordProgress>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRecordProgress>>>::__do_rehash<true>(a1, prime);
    }
  }
}

uint64_t ISignpostInterval::ISignpostInterval(uint64_t a1, void *a2)
{
  v3 = a2;
  *a1 = 850045863;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = v3;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 1065353216;
  return a1;
}

os_signpost_id_t ISignpostInterval::MakeSignpostID(ISignpostInterval *this, void *a2)
{
  v2 = *(this + 8);
  if (a2)
  {
    return os_signpost_id_make_with_pointer(v2, a2);
  }

  else
  {
    return os_signpost_id_generate(v2);
  }
}

void ISignpostInterval::BeginPriv(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = a2;
  v6 = os_signpost_enabled(*(a1 + 64));
  if (a2)
  {
    if (v6)
    {
      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>((a1 + 72), &v7);
      std::function<void ()(NSObject  {objcproto9OS_os_log}*)>::operator()(a3, *(a1 + 64));
    }
  }
}

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
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

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::function<void ()(NSObject  {objcproto9OS_os_log}*)>::operator()(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v3 + 48))(v3, &v4);
}

void std::__function::__func<_NodeContextOpenExtended::$_0::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<_NodeContextOpenExtended::$_0::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::operator()(uint64_t a1, id *a2)
{
  v3 = *a2;
  v4 = v3;
  v5 = **(a1 + 8);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E5674000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v5, "Open Extended", "Begin", v6, 2u);
  }
}

uint64_t std::__function::__value_func<void ()(NSObject  {objcproto9OS_os_log}*)>::~__value_func[abi:ne200100](uint64_t a1)
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

const void **TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void NodeContextOpen()
{
  v16 = *MEMORY[0x1E69E9840];
  TString::TString(&v8, "DS Context");
  TString::TString(&v7, "Open");
  v1 = StSignpostMacroHelper::GetOrCreateFinderLog(&v8, v0);
  ISignpostInterval::ISignpostInterval(&v10, v1);

  SignpostID = ISignpostInterval::MakeSignpostID(&v10, 0);
  v12[0] = &unk_1F5F3FE30;
  v12[3] = v12;
  v12[4] = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  std::mutex::lock(&v10);
  v9 = SignpostID;
  *buf = &unk_1F5F3FF30;
  v14 = &v9;
  v15 = buf;
  ISignpostInterval::BeginPriv(&v10, SignpostID, buf);
  std::__function::__value_func<void ()(NSObject  {objcproto9OS_os_log}*)>::~__value_func[abi:ne200100](buf);
  std::mutex::unlock(&v10);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v7.fString.fRef);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v8.fString.fRef);
  if (gNodeContextCloseAsyncGroup)
  {
    std::mutex::lock(&gNodeContextCloseAsyncSignpostLock);
    if (gNodeContextCloseAsyncSignpost)
    {
      AutoSignpostInterval_General_NodeContextCloseAsync::Event<char [47]>(gNodeContextCloseAsyncSignpost, "Waiting for previous context close to complete");
    }

    std::mutex::unlock(&gNodeContextCloseAsyncSignpostLock);
    dispatch_group_wait(gNodeContextCloseAsyncGroup, 0xFFFFFFFFFFFFFFFFLL);
  }

  ContextMutex();
  std::recursive_mutex::lock(&ContextMutex(void)::contextMutex);
  v2 = sContextOpenCount++;
  if (v2 <= 0)
  {
    v3 = LogObj(5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E5674000, v3, OS_LOG_TYPE_DEFAULT, "DS Opened", buf, 2u);
    }

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3321888768;
    v6[2] = __NodeContextOpen_block_invoke;
    v6[3] = &__block_descriptor_33_ea8_32c28_ZTSKZ15NodeContextOpenE3__2_e5_v8__0l;
    if (NodeContextOpen::once != -1)
    {
      dispatch_once(&NodeContextOpen::once, v6);
    }

    TSystemNotificationTask::MakeSystemNotificationTask(v4);
  }

  std::recursive_mutex::unlock(&ContextMutex(void)::contextMutex);
  StSignpostMacroHelper::~StSignpostMacroHelper(&v10);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E56769B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, int a7, __int16 a8, char a9, char a10, uint64_t a11, std::mutex *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  std::recursive_mutex::unlock(&ContextMutex(void)::contextMutex);
  StSignpostMacroHelper::~StSignpostMacroHelper(&a18);
  _Unwind_Resume(a1);
}

void std::__function::__func<NodeContextOpen::$_0::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<NodeContextOpen::$_0::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::operator()(uint64_t a1, id *a2)
{
  v3 = *a2;
  v4 = v3;
  v5 = **(a1 + 8);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E5674000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v5, "Open", "Begin", v6, 2u);
  }
}

void ContextMutex(void)
{
  {
    MEMORY[0x1E692CB40](&ContextMutex(void)::contextMutex);
  }
}

os_log_t LogObj(int a1)
{
  if ((a1 - 1) > 8)
  {
    v2 = "ArchiveService";
  }

  else
  {
    v2 = off_1E877EC68[a1 - 1];
  }

  v3 = os_log_create("com.apple.DesktopServices", v2);

  return v3;
}

void __NodeContextOpen_block_invoke()
{
  v0 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZZ15NodeContextOpenENK3__2clEv_block_invoke;
  block[3] = &__block_descriptor_33_ea8_32c41_ZTSKZZ15NodeContextOpenENK3__2clEvEUlvE__e5_v8__0l;
  dispatch_async(v0, block);

  TCFURLInfo::Initialize([(FIDSNode *)FILocalStorageNode registerClassForFIDSNodeCoding:@"FI Local Storage"]);
  TFSVolumeInfo::SetFullEnvironment(v1);
  v5 = TNodeEvent::Notify(v2, v3, v4);
  TClientChangeNotifier::ValidateNotifierList(v5);
  TFSInfo::Validate(v6);
  TSystemNotificationTask::MakeNotificationQueue(v7);
  TSystemNotificationTask::MakeStreamQueue(v8);
  TNode::Initialize(v9);
}

void ___ZZ15NodeContextOpenENK3__2clEv_block_invoke()
{
  LogDSPath();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZL30RegisterForComputerNameChangesv_block_invoke;
  block[3] = &__block_descriptor_33_ea8_32c45_ZTSKZL30RegisterForComputerNameChangesvE3__0_e5_v8__0l;
  if (RegisterForComputerNameChanges(void)::once != -1)
  {
    dispatch_once(&RegisterForComputerNameChanges(void)::once, block);
  }
}

void TFSInfo::Validate(TFSInfo *this)
{
  v1 = TFSInfo::NetworkLock(this);
  os_unfair_lock_lock(v1);
  if (__PAIR128__(TFSInfo::gAirDropBrowserRef, TFSInfo::gNetworkNearbyBrowserRef) != 0)
  {
    abort();
  }

  os_unfair_lock_unlock(v1);
}

int *TFSInfo::NetworkLock(TFSInfo *this)
{
  {
    TFSInfo::NetworkLock();
  }

  return &TFSInfo::NetworkLock(void)::gNetworkLock;
}

void TSystemNotificationTask::MakeStreamQueue(TSystemNotificationTask *this)
{
  v1 = dispatch_queue_create("TSystemNotificationStreamTask", 0);
  v2 = gSystemNotificationStreamGCDQueue;
  gSystemNotificationStreamGCDQueue = v1;
}

void TNode::Initialize(TNode *this)
{
  TGlobalNodes::RootNode(&v6);

  TGlobalNodes::BootNode(&v5, v1);
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create("FPItemFromMain", v2);
  v4 = sFPItemsFetchingFromMainQueue;
  sFPItemsFetchingFromMainQueue = v3;
}

uint64_t *TGlobalNodes::RootNode@<X0>(uint64_t *__return_ptr a1@<X8>)
{
  if (TGlobalNodes::GlobalNodes(void)::gGlobalNodesOnce != -1)
  {
    TGlobalNodes::RootNode();
  }

  v3 = TGlobalNodes::gGlobalNodes;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN12TGlobalNodes8RootNodeEv_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = TGlobalNodes::gGlobalNodes;
  if (TGlobalNodes::RootNode(void)::onceToken != -1)
  {
    dispatch_once(&TGlobalNodes::RootNode(void)::onceToken, block);
  }

  result = *v3;
  *a1 = result;
  return result;
}

void ___ZN12TGlobalNodes8RootNodeEv_block_invoke()
{
  TGlobalNodes::ComputerName(&v2);
  v1 = 83886081;
  LOBYTE(obj) = 1;
  std::allocate_shared[abi:ne200100]<TFSInfo,std::allocator<TFSInfo>,FSInfoVirtualType,TString &,TCatalogInfo &,0>();
}

void sub_1E5677040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, void *a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((v14 - 24));
  _Unwind_Resume(a1);
}

uint64_t TFSInfo::TFSInfo(uint64_t a1, char a2, const TString *a3, _BYTE *a4)
{
  *(a1 + 128) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  TFSInfo::TFSInfo(a1);
  *(v8 + 120) = a2;
  *(v8 + 123) |= 0x20000000u;
  TFSInfo::SetItemName(v8, a3);
  if (*a4)
  {
    v9 = 32;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a1 + 123) & 0xFFFFFFDF | v9;
  *(a1 + 123) = v10;
  if (a4[1])
  {
    v11 = 256;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11 | v10 & 0xFFFFFEFF;
  *(a1 + 123) = v12;
  if (a4[2])
  {
    v13 = 2048;
  }

  else
  {
    v13 = 0;
  }

  v14 = v12 & 0xFFFFF7FF | v13;
  *(a1 + 123) = v14;
  *(a1 + 122) = a4[3];
  *(a1 + 123) = v14 | 1;
  TFSInfo::SetIfVirtualAlias(a1);
  return a1;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void *std::__shared_ptr_emplace<TFSInfo>::__shared_ptr_emplace[abi:ne200100]<FSInfoVirtualType,TString &,TCatalogInfo &,std::allocator<TFSInfo>,0>(void *a1, char *a2, const TString *a3, _BYTE *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5F3D3B8;
  TFSInfo::TFSInfo((a1 + 3), *a2, a3, a4);
  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,TRecordProgress>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRecordProgress>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
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

void LogDSPath(void)
{
  v13 = *MEMORY[0x1E69E9840];
  v0 = dladdr("Release", &v8);
  v1 = LogObj(5);
  v2 = v1;
  if (v0)
  {
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v10 = "Release";
      v11 = 2082;
      dli_fname = v8.dli_fname;
      v3 = "%{public}s DS loaded at %{public}s";
      v4 = v2;
      v5 = OS_LOG_TYPE_INFO;
      v6 = 22;
LABEL_6:
      _os_log_impl(&dword_1E5674000, v4, v5, v3, buf, v6);
    }
  }

  else if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v3 = "dladdr failed";
    v4 = v2;
    v5 = OS_LOG_TYPE_ERROR;
    v6 = 2;
    goto LABEL_6;
  }

  v7 = *MEMORY[0x1E69E9840];
}

void TClientChangeNotifier::ValidateNotifierList(TDSNotifier *this)
{
  TDSNotifier::GetRegistrationLock(this);
  std::recursive_mutex::lock(&TDSNotifier::GetRegistrationLock(void)::gRegistrationLock);
  if (TClientChangeNotifier::GetClientNotifierList(void)::gClientNotifierList != qword_1ECFF40A8)
  {
    abort();
  }

  StRegistrationLock::~StRegistrationLock(&v1);
}

void TCFURLInfo::Initialize(TCFURLInfo *this)
{
  TCFURLInfo::gShowAllExtensions = 0;
  TCFURLInfo::gRootlessEnabled = 0;
  TCFURLInfo::gHasUnifiedVolumeGroup = 0;
  TCFURLInfo::gROSPState = 0;
}

void *TDSNotifier::GetRegistrationLock(TDSNotifier *this)
{
  {
    MEMORY[0x1E692CB40](&TDSNotifier::GetRegistrationLock(void)::gRegistrationLock);
  }

  return &TDSNotifier::GetRegistrationLock(void)::gRegistrationLock;
}

void TFSInfo::NetworkLock()
{
  {
    TFSInfo::NetworkLock(void)::gNetworkLock = 0;
  }
}

void TSystemNotificationTask::MakeNotificationQueue(TSystemNotificationTask *this)
{
  v1 = dispatch_queue_create("TSystemNotificationTask", 0);
  v2 = gSystemNotificationGCDQueue;
  gSystemNotificationGCDQueue = v1;
}

const void **TGlobalNodes::ComputerName@<X0>(TString *a1@<X8>)
{
  v3 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "Computer", 8, 0x8000100u, 0, *MEMORY[0x1E695E498]);
  v5 = v3;
  a1->fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(a1, v3);
  return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v5);
}

void sub_1E5677708(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

void ___ZL30RegisterForComputerNameChangesv_block_invoke()
{
  {
    RegisterForComputerNameChanges(void)::$_0::operator() const(void)::sDynamicStore = SCDynamicStoreCreate(0, @"watchForComputerNameChanges", TNode::ComputerNameChangedCallback, 0);
  }

  if (RegisterForComputerNameChanges(void)::$_0::operator() const(void)::sDynamicStore)
  {
    keys = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    ComputerName = SCDynamicStoreKeyCreateComputerName(0);
    CFArrayAppendValue(keys, ComputerName);
    if (SCDynamicStoreSetNotificationKeys(RegisterForComputerNameChanges(void)::$_0::operator() const(void)::sDynamicStore, keys, 0))
    {
      v0 = RegisterForComputerNameChanges(void)::$_0::operator() const(void)::sDynamicStore;
      v1 = dispatch_get_global_queue(0, 0);
      SCDynamicStoreSetDispatchQueue(v0, v1);
    }

    TAutoRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TAutoRef(&ComputerName);
    TAutoRef<__CFArray *,TRetainReleasePolicy<__CFArray *>>::~TAutoRef(&keys);
  }
}

void TNode::CreateNode(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, TNodePtr *a4@<X8>)
{
  v10 = FIDSNodeSubclassForVirtualType(*(*a2 + 120));
  v8 = objc_alloc_init(v10);
  [FINode trackNodeCreated:v8];
  v9 = [v8 asTNode];
  TNode::TNode(v9, a1, a2, a3);
  if (*(*a2 + 120) == 28)
  {
    TNode::UpdateOnDiskProviderRoot(v9);
  }

  TNodePtr::TNodePtr(a4, v9);
}

void TFSVolumeInfo::GetVolumeInfoForNoSync(id *a1@<X0>, void *a2@<X8>)
{
  VolumeMap = GetVolumeMap();
  VolumeInfoLock();
  os_unfair_lock_lock(&_MergedGlobals_5);
  v5 = std::__hash_table<std::__hash_value_type<VolumeKey,std::weak_ptr<TFSVolumeInfo>>,std::__unordered_map_hasher<VolumeKey,std::__hash_value_type<VolumeKey,std::weak_ptr<TFSVolumeInfo>>,VolumeKeyHasher,std::equal_to<VolumeKey>,true>,std::__unordered_map_equal<VolumeKey,std::__hash_value_type<VolumeKey,std::weak_ptr<TFSVolumeInfo>>,std::equal_to<VolumeKey>,VolumeKeyHasher,true>,std::allocator<std::__hash_value_type<VolumeKey,std::weak_ptr<TFSVolumeInfo>>>>::find<VolumeKey>(VolumeMap, a1);
  v6 = v5;
  if (!v5)
  {
    goto LABEL_9;
  }

  v7 = v5[5];
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = std::__shared_weak_count::lock(v7);
  a2[1] = v8;
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = v6[4];
  *a2 = v9;
  if (!v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
LABEL_9:
    os_unfair_lock_unlock(&_MergedGlobals_5);
    *a2 = 0;
    a2[1] = 0;
    return;
  }

  os_unfair_lock_unlock(&_MergedGlobals_5);
}

uint64_t GetVolumeMap(void)
{
  {
    operator new();
  }

  return GetVolumeMap(void)::map;
}

void VolumeInfoLock(void)
{
  if ((atomic_load_explicit(&qword_1ECFF45A0, memory_order_acquire) & 1) == 0)
  {
    VolumeInfoLock();
  }
}

const void **VirtualContainerName@<X0>(int a1@<W0>, TString *a2@<X8>)
{
  switch(a1)
  {
    case 6:
      v3 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "Hits container", 14, 0x8000100u, 0, *MEMORY[0x1E695E498]);
      v19 = v3;
      a2->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(a2, v3);
      break;
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 26:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
      goto LABEL_5;
    case 17:
      v9 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "Devices", 7, 0x8000100u, 0, *MEMORY[0x1E695E498]);
      v19 = v9;
      a2->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(a2, v9);
      break;
    case 18:
      v12 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "Places", 6, 0x8000100u, 0, *MEMORY[0x1E695E498]);
      v19 = v12;
      a2->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(a2, v12);
      break;
    case 19:
      v14 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "Sidebar Top", 11, 0x8000100u, 0, *MEMORY[0x1E695E498]);
      v19 = v14;
      a2->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(a2, v14);
      break;
    case 20:
      v10 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "Searches", 8, 0x8000100u, 0, *MEMORY[0x1E695E498]);
      v19 = v10;
      a2->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(a2, v10);
      break;
    case 21:
      v16 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "Published Folders", 17, 0x8000100u, 0, *MEMORY[0x1E695E498]);
      v19 = v16;
      a2->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(a2, v16);
      break;
    case 22:
      v15 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "Sidebar Tags", 12, 0x8000100u, 0, *MEMORY[0x1E695E498]);
      v19 = v15;
      a2->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(a2, v15);
      break;
    case 23:
      v11 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "All Tags", 8, 0x8000100u, 0, *MEMORY[0x1E695E498]);
      v19 = v11;
      a2->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(a2, v11);
      break;
    case 24:
      v17 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "iCloud app libraries", 20, 0x8000100u, 0, *MEMORY[0x1E695E498]);
      v19 = v17;
      a2->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(a2, v17);
      break;
    case 25:
      v13 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "DataSeparated iCloud app libraries", 34, 0x8000100u, 0, *MEMORY[0x1E695E498]);
      v19 = v13;
      a2->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(a2, v13);
      break;
    case 27:
      v8 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "Cloud Storage", 13, 0x8000100u, 0, *MEMORY[0x1E695E498]);
      v19 = v8;
      a2->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(a2, v8);
      break;
    case 35:
      v7 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "Recent Documents", 16, 0x8000100u, 0, *MEMORY[0x1E695E498]);
      v19 = v7;
      a2->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(a2, v7);
      break;
    case 36:
      v6 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "iCloud Drive", 12, 0x8000100u, 0, *MEMORY[0x1E695E498]);
      v19 = v6;
      a2->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(a2, v6);
      break;
    default:
      if (a1 == 1)
      {
        v4 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "Computer", 8, 0x8000100u, 0, *MEMORY[0x1E695E498]);
        v19 = v4;
        a2->fString.fRef = &stru_1F5F42870;
        CFRetain(&stru_1F5F42870);
        TString::SetStringRefAsImmutable(a2, v4);
      }

      else
      {
LABEL_5:
        v5 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "virtual", 7, 0x8000100u, 0, *MEMORY[0x1E695E498]);
        v19 = v5;
        a2->fString.fRef = &stru_1F5F42870;
        CFRetain(&stru_1F5F42870);
        TString::SetStringRefAsImmutable(a2, v5);
      }

      break;
  }

  return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v19);
}

void sub_1E5678148(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

void TVolumeSyncThread::TVolumeSyncThread(TVolumeSyncThread *this, const TFSVolumeInfo *a2, const char *a3)
{
  *(this + 7) = 0;
  *this = 0;
  *(this + 8) = *(a2 + 48);
  *(this + 10) = *(a2 + 120);
  v39.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  v6 = *(a2 + 7);
  v7 = *(a2 + 8);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v6)
  {
    TFSInfo::Path(v6, &v29.fString.fRef);
    v8 = SanitizedPath(&v29);
    if (v39.fString.fRef != v8)
    {
      TString::SetStringRefAsImmutable(&v39, v8);
    }

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v29.fString.fRef);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v9 = *(this + 8);
  if (v9 <= 0x22 && ((1 << v9) & 0x73BC00000) != 0)
  {
    v10 = TFSVolumeInfo::GetDedicatedGCDQueue(v9);
    v11 = *this;
    *this = v10;

    goto LABEL_12;
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v29);
  v12 = strlen(a3);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, a3, v12);
  if (*(this + 10))
  {
    v14 = " (boot) '";
  }

  else
  {
    v14 = " '";
  }

  if (*(this + 10))
  {
    v15 = 9;
  }

  else
  {
    v15 = 2;
  }

  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v14, v15);
  v17 = TString::c_str(&v39);
  v18 = strlen(v17);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v17, v18);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "'", 1);
  if ((v37 & 0x10) != 0)
  {
    v21 = v36;
    if (v36 < v33)
    {
      v36 = v33;
      v21 = v33;
    }

    locale = v32[4].__locale_;
    goto LABEL_26;
  }

  if ((v37 & 8) != 0)
  {
    locale = v32[1].__locale_;
    v21 = v32[3].__locale_;
LABEL_26:
    v20 = v21 - locale;
    if ((v21 - locale) >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v20 >= 0x17)
    {
      operator new();
    }

    v28 = v21 - locale;
    if (v20)
    {
      memmove(&__dst, locale, v20);
    }

    goto LABEL_32;
  }

  v20 = 0;
  v28 = 0;
LABEL_32:
  *(&__dst + v20) = 0;
  if (v28 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v24 = dispatch_queue_create(p_dst, 0);
  v25 = *this;
  *this = v24;

  if (v28 < 0)
  {
    operator delete(__dst);
  }

  v29.fString.fRef = *MEMORY[0x1E69E54D8];
  v26 = *(MEMORY[0x1E69E54D8] + 72);
  *(&v29 + v29.fString.fRef[-1].info) = *(MEMORY[0x1E69E54D8] + 64);
  v30 = v26;
  v31 = MEMORY[0x1E69E5548] + 16;
  if (v35 < 0)
  {
    operator delete(__p);
  }

  v31 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v32);
  std::iostream::~basic_iostream();
  MEMORY[0x1E692CCA0](&v38);
LABEL_12:
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v39.fString.fRef);
}

void sub_1E5678624(_Unwind_Exception *a1)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((v2 - 72));

  _Unwind_Resume(a1);
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1E692CAB0](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x1E69E5318]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x1E692CAC0](v13);
  return a1;
}

void sub_1E56787E8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x1E692CAC0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1E56787C8);
}

void *std::__hash_table<std::__hash_value_type<VolumeKey,std::weak_ptr<TFSVolumeInfo>>,std::__unordered_map_hasher<VolumeKey,std::__hash_value_type<VolumeKey,std::weak_ptr<TFSVolumeInfo>>,VolumeKeyHasher,std::equal_to<VolumeKey>,true>,std::__unordered_map_equal<VolumeKey,std::__hash_value_type<VolumeKey,std::weak_ptr<TFSVolumeInfo>>,std::equal_to<VolumeKey>,VolumeKeyHasher,true>,std::allocator<std::__hash_value_type<VolumeKey,std::weak_ptr<TFSVolumeInfo>>>>::__emplace_unique_key_args<VolumeKey,std::piecewise_construct_t const&,std::tuple<VolumeKey const&>,std::tuple<>>(void *a1, id *this)
{
  v4 = ROSPVolumeID::Hash(this);
  v5 = *(this + 8);
  v6 = v4 ^ v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v4 ^ v5;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<VolumeKey,std::weak_ptr<TFSVolumeInfo>>,std::__unordered_map_hasher<VolumeKey,std::__hash_value_type<VolumeKey,std::weak_ptr<TFSVolumeInfo>>,VolumeKeyHasher,std::equal_to<VolumeKey>,true>,std::__unordered_map_equal<VolumeKey,std::__hash_value_type<VolumeKey,std::weak_ptr<TFSVolumeInfo>>,std::equal_to<VolumeKey>,VolumeKeyHasher,true>,std::allocator<std::__hash_value_type<VolumeKey,std::weak_ptr<TFSVolumeInfo>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<VolumeKey const&>,std::tuple<>>();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!std::__unordered_map_equal<VolumeKey,std::__hash_value_type<VolumeKey,std::weak_ptr<TFSVolumeInfo>>,std::equal_to<VolumeKey>,VolumeKeyHasher,true>::operator()[abi:ne200100](a1, (v12 + 2), this))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_1E5678AB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<VolumeKey,std::weak_ptr<TFSVolumeInfo>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<VolumeKey,std::weak_ptr<TFSVolumeInfo>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<VolumeKey,std::weak_ptr<TFSVolumeInfo>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<VolumeKey,std::weak_ptr<TFSVolumeInfo>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::pair<VolumeKey const,std::weak_ptr<TFSVolumeInfo>>::~pair(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void ___ZN12TGlobalNodes8BootNodeEv_block_invoke()
{
  v0[5].fFINode = 0;
  v0[6].fFINode = 0;
  TCFURLInfo::BootURL(v0);
  TFSVolumeInfo::AddVolume();
}

void sub_1E5678C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, void *a14)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  v16 = *(v14 - 24);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  _Unwind_Resume(a1);
}

CFTypeRef TCFURLInfo::BootURL@<X0>(void *a1@<X8>)
{
  {
    TCFURLInfo::BootURL(void)::$_0::operator()();
  }

  result = TCFURLInfo::BootURL(void)::rootURL;
  *a1 = TCFURLInfo::BootURL(void)::rootURL;
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

const void **TAutoRef<__CFError *,TRetainReleasePolicy<__CFError *>>::~TAutoRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

CFTypeRef TCFURLInfo::GetVolumeID@<X0>(TCFURLInfo *this@<X0>, const __CFURL *a2@<X1>, void *a3@<X8>)
{
  result = TCFURLInfo::GetVolumeIdentifier(this, a2);
  *a3 = result;
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

uint64_t TFSVolumeInfo::InitializeFileSystemVolume()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v5 = *MEMORY[0x1E69E9840];
  if (*v2)
  {
    *(v0 + 48) = v1;
    _ZNSt3__115allocate_sharedB8ne200100I7TFSInfoNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  TFSVolumeInfo::SetDeviceThreads(v0);
  v3 = *MEMORY[0x1E69E9840];
  return 4294967261;
}

void sub_1E56794AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, const void *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, id);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&STACK[0x8C0]);

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  TAutoRef<__CFError *,TRetainReleasePolicy<__CFError *>>::~TAutoRef(va1);
  _Unwind_Resume(a1);
}

uint64_t _ZNSt3__120__shared_ptr_emplaceI7TFSInfoNS_9allocatorIS1_EEEC2B8ne200100IJES3_Li0EEES3_DpOT_(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F5F3D3B8;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 24) = 0u;
  TFSInfo::TFSInfo((a1 + 24));
  return a1;
}

CFIndex TFSInfo::initialize(uint64_t a1, const __CFURL *a2, int a3, int a4, int a5, char a6, int a7)
{
  os_unfair_lock_lock((a1 + 108));
  *(a1 + 123) &= ~0x20000000u;
  os_unfair_lock_unlock((a1 + 108));
  v15 = (a1 + 16);
  v14 = *(a1 + 16);
  if (v14)
  {
    CFRelease(v14);
  }

  v17 = (a1 + 8);
  v16 = *(a1 + 8);
  *(a1 + 16) = 0;
  if (v16)
  {
    CFRelease(v16);
  }

  v18 = *(a1 + 24);
  *(a1 + 8) = 0;
  if (v18 != @"?")
  {
    TString::SetStringRefAsImmutable((a1 + 24), @"?");
  }

  TString::SetStringRefAsImmutable((a1 + 32), 0);
  std::unique_ptr<TFSInfoOverflow>::reset[abi:ne200100]((a1 + 80), 0);
  *(a1 + 123) &= ~0x2000000u;
  if (a7)
  {
    if (!a2)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (!a2)
    {
      goto LABEL_20;
    }

    _CFURLCacheSetAutoFlushingEnabled();
  }

  if (a5 && (!CFURLIsFileReferenceURL(a2) && (a6 & 1) != 0 || CFURLGetBaseURL(a2)))
  {
    CFURLClearResourcePropertyCache(a2);
    v19 = CFURLCreateFileReferenceURL(0, a2, 0);
    if (*v17)
    {
      CFRelease(*v17);
    }

    *v17 = v19;
    if (!v19)
    {
LABEL_24:
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=((a1 + 8), a2);
      if (!a4)
      {
        goto LABEL_32;
      }

      goto LABEL_25;
    }

    _CFURLCacheSetAutoFlushingEnabled();
  }

LABEL_20:
  if (!*v17)
  {
    goto LABEL_24;
  }

  v20 = [*v17 path];
  v21 = [v20 length];

  if (!v21)
  {
    goto LABEL_24;
  }

  if (!a4)
  {
    goto LABEL_32;
  }

LABEL_25:
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=((a1 + 16), *(a1 + 8));
  Properties = TFSInfo::FetchProperties(a1, a3 == 0);
  if (!Properties)
  {
    os_unfair_lock_lock((a1 + 108));
    v23 = *(a1 + 123);
    os_unfair_lock_unlock((a1 + 108));
    if ((v23 & 0x20) != 0 || (os_unfair_lock_lock((a1 + 108)), v24 = *(a1 + 123), os_unfair_lock_unlock((a1 + 108)), (v24 & 0x400) != 0) || (os_unfair_lock_lock((a1 + 108)), v25 = *(a1 + 123), os_unfair_lock_unlock((a1 + 108)), (v25 & 0x40) != 0))
    {
LABEL_32:
      v26 = *v17;
      v27 = _CFURLCopyFileURL();
      if (*v15)
      {
        CFRelease(*v15);
      }

      Properties = 0;
      *v15 = v27;
      if (!v27)
      {
        goto LABEL_35;
      }

      return Properties;
    }

    Properties = 4294967253;
  }

  if (!*v15)
  {
LABEL_35:
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(v15, *v17);
  }

  return Properties;
}

const void **TAutoRef<__CFArray *,TRetainReleasePolicy<__CFArray *>>::~TAutoRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t TCFURLInfo::CopyPropertyValues(uint64_t a1)
{
  if (!a1)
  {
    return 4294959238;
  }

  v4[0] = 0;
  v4[1] = 0;
  if (_CFURLCopyResourcePropertyValuesAndFlags())
  {
    v2 = 0;
  }

  else
  {
    v2 = TCFURLInfo::TranslateCFError(v4[0], v1);
  }

  TAutoRef<__CFError *,TRetainReleasePolicy<__CFError *>>::~TAutoRef(v4);
  return v2;
}

void VolumeInfoLock()
{
  if (__cxa_guard_acquire(&qword_1ECFF45A0))
  {
    _MergedGlobals_5 = 0;

    __cxa_guard_release(&qword_1ECFF45A0);
  }
}

uint64_t TFSInfo::TFSInfo(uint64_t a1, int a2)
{
  VirtualContainerName(a2, &v14);
  if (a2 == 27)
  {
    v4 = 67109121;
  }

  else
  {
    v4 = 117440769;
  }

  LODWORD(v13.fString.fRef) = v4;
  TFSInfo::TFSInfo(a1, a2, &v14, &v13);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v14.fString.fRef);
  if ((a2 & 0xFE) == 0x18)
  {
    if (a2 == 24)
    {
      TString::TString(&v13, "");
      GetICloudContainerURL(&v13, &v14);
      TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::operator=<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>((a1 + 16), &v14.fString.fRef);
      TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v14.fString.fRef);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v13.fString.fRef);
    }

    if (ICloudDriveFPFSEnabled())
    {
      v5 = iCloudDriveDomainIDForDataSeparated(a2 == 25);
      v6 = v5;
      if (a2 == 25 && v5)
      {
        v7 = [FIProviderDomain providerDomainForID:v5 cachePolicy:1 error:0];
        v8 = [v7 domain];
        v9 = [v8 identifier];
        v10 = v9;
        if (!v9)
        {
          v10 = [v6 lastPathComponent];
        }

        v11 = v10;
        v13.fString.fRef = &stru_1F5F42870;
        CFRetain(&stru_1F5F42870);
        TString::SetStringRefAsImmutable(&v13, v11);

        GetICloudContainerURL(&v13, &v14);
        TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::operator=<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>((a1 + 16), &v14.fString.fRef);
        TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v14.fString.fRef);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v13.fString.fRef);
        if (!v9)
        {
        }
      }
    }
  }

  return a1;
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

void sub_1E5679EA0(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x1E692CCA0](v1);
  _Unwind_Resume(a1);
}

const TNode *FIDSNodeFromTNode(TNode *a1)
{
  if (a1)
  {
    {
      v5 = a1;
      a1 = v5;
      if (v2)
      {
        v3 = objc_opt_class();
        InstanceVariable = class_getInstanceVariable(v3, "_node");
        FIDSNodeFromTNode(TNode const*)::nodeOffset = ivar_getOffset(InstanceVariable);
        a1 = v5;
      }
    }

    a1 = static_objc_cast<DSFileServiceConnection,void *>(a1 - FIDSNodeFromTNode(TNode const*)::nodeOffset);
  }

  return a1;
}

id static_objc_cast<DSFileServiceConnection,void *>(void *a1)
{
  v1 = static_objc_cast<NSString,objc_object * {__strong}>(a1);

  return v1;
}

FINode *TGlobalNodes::BootNode@<X0>(FINode **__return_ptr a1@<X8>, TNode *this@<X0>)
{
  if (TGlobalNodes::GlobalNodes(void)::gGlobalNodesOnce != -1)
  {
    TGlobalNodes::RootNode();
  }

  v3 = TGlobalNodes::gGlobalNodes;
  v11 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZN12TGlobalNodes8BootNodeEv_block_invoke;
  block[3] = &__block_descriptor_48_ea8_32c37_ZTSKZN12TGlobalNodes8BootNodeEvE3__0_e5_v8__0l;
  block[4] = TGlobalNodes::gGlobalNodes;
  block[5] = &v11;
  if (TGlobalNodes::BootNode(void)::onceToken != -1)
  {
    dispatch_once(&TGlobalNodes::BootNode(void)::onceToken, block);
  }

  if (v11 == 1)
  {
    TNode::GetSuperRootNode(&v9, this);
    TNode::StPopulating::StPopulating(v8, &v9, 0);
    v7 = 0;
    v4 = TNodeFromFINode(v9);
    TNode::AddNewChild(&v6, v4, v3 + 1, &v7, 1);
    TNodePtr::operator=(&v3[1].fFINode, &v6);

    TNode::StPopulating::~StPopulating(v8);
  }

  result = v3[1].fFINode;
  *a1 = result;
  return result;
}

const void **TCFURLInfo::BootURL(void)::$_0::operator()()
{
  v9 = *MEMORY[0x1E69E9840];
  error = 0;
  v0 = *MEMORY[0x1E695E480];
  TCFURLInfo::BootURL(void)::rootURL = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], @"/", kCFURLPOSIXPathStyle, 1u);
  v1 = CFURLCreateFileReferenceURL(v0, TCFURLInfo::BootURL(void)::rootURL, &error);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(&TCFURLInfo::BootURL(void)::rootURL, v1);
  if (error)
  {
    v2 = LogObj(5);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = error;
      *buf = 138543362;
      v8 = v3;
      _os_log_impl(&dword_1E5674000, v2, OS_LOG_TYPE_ERROR, "Failed to get root URL. %{public}@", buf, 0xCu);
    }
  }

  result = TAutoRef<__CFError *,TRetainReleasePolicy<__CFError *>>::~TAutoRef(&error);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E567A288(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&TCFURLInfo::BootURL(void)::rootURL);
  TAutoRef<__CFError *,TRetainReleasePolicy<__CFError *>>::~TAutoRef(va);
  _Unwind_Resume(a1);
}

CFTypeRef *TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(CFTypeRef *a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  *a1 = cf;
  return a1;
}

void sub_1E567A4BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(&a14);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

CFTypeRef TCFURLInfo::GetVolumeIdentifier(TCFURLInfo *this, const __CFURL *a2)
{
  propertyValueTypeRefPtr = 0;
  if (!this)
  {
    return 0;
  }

  CFURLCopyResourcePropertyForKey(this, *MEMORY[0x1E695ED00], &propertyValueTypeRefPtr, 0);
  v2 = propertyValueTypeRefPtr;
  if (propertyValueTypeRefPtr)
  {
    CFAutorelease(propertyValueTypeRefPtr);
  }

  return v2;
}

void TFSInfo::TFSInfo(TFSInfo *this)
{
  *(this + 3) = &stru_1F5F42870;
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  CFRetain(&stru_1F5F42870);
  *(this + 4) = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  *(this + 5) = 0;
  *(this + 6) = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 60) = -256;
  *(this + 122) = 0;
  *(this + 123) = 8;
  *(this + 127) &= 0xC000u;
}

void sub_1E567A620(_Unwind_Exception *a1)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v3);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v2);
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef((v1 + 16));
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef((v1 + 8));
  std::unique_ptr<TVersionData>::~unique_ptr[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

TFSInfoOverflow *std::unique_ptr<TFSInfoOverflow>::reset[abi:ne200100](TFSInfoOverflow **a1, TFSInfoOverflow *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    TFSInfoOverflow::~TFSInfoOverflow(result);

    JUMPOUT(0x1E692CD30);
  }

  return result;
}

CFIndex TFSInfo::FetchProperties(TFSInfo *this, int a2)
{
  v118 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    os_unfair_lock_lock(this + 27);
    v3 = *(this + 123);
    *(this + 123) = v3 | 0x20000000;
    os_unfair_lock_unlock(this + 27);
    if ((v3 & 0x20000000) != 0)
    {
      v17 = 0;
LABEL_163:
      v93 = *MEMORY[0x1E69E9840];
      return v17;
    }
  }

  if (*(this + 1))
  {
    v4 = *(this + 120);
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v105 = 0;
    v106 = 0;
    cf = 0;
    os_unfair_lock_lock(this + 27);
    v5 = *(this + 123);
    os_unfair_lock_unlock(this + 27);
    if (_CFURLCopyResourcePropertyValuesAndFlags())
    {
      v102 = *(&v117 + 1);
      v103 = v110;
    }

    else
    {
      v17 = TCFURLInfo::TranslateCFError(cf, v6);
      if (v17 == -43)
      {
        v102 = *(&v117 + 1);
        v103 = v110;
LABEL_162:
        TAutoRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>::~TAutoRef(&v102);
        TAutoRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TAutoRef(&v103);
        TAutoRef<__CFError *,TRetainReleasePolicy<__CFError *>>::~TAutoRef(&cf);
        goto LABEL_163;
      }

      v18 = LogObj(5);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v19 = *(this + 1);
        v20 = SanitizedURL(v19);
        v21 = [MEMORY[0x1E696AD98] numberWithInt:v17];
        theString[0].st_dev = 138543618;
        *&theString[0].st_mode = v20;
        WORD2(theString[0].st_ino) = 2114;
        *(&theString[0].st_ino + 6) = v21;
        _os_log_impl(&dword_1E5674000, v18, OS_LOG_TYPE_DEBUG, "_CFURLCopyResourcePropertyValuesAndFlags failed %{public}@, status = %{public}@", theString, 0x16u);
      }

      v102 = *(&v117 + 1);
      v103 = v110;
      if (v17)
      {
        goto LABEL_162;
      }
    }

    TFSInfo::GetObjectIdentifier(this);
    *(this + 123) = *(this + 123) & 0xFFFF7EDF | (32 * ((v105 >> 1) & 1)) & 0xFFFFFEFF | (((v105 >> 3) & 1) << 8) | (v105 >> 1) & 0x8000;
    v7 = v110;
    cf1 = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&cf1, v7);
    if (UseFileProviderFramework())
    {
      v9 = TFSInfo::GetFPItem(this);
      v10 = v9 == 0;

      if (!v10)
      {
        TFSInfo::FetchBladeRunnerProperties(this, v11, v8);
      }
    }

    if ((*(this + 123) & 0x120) == 0 && (TCFURLInfo::GetNumericalProperty(*(this + 1), *MEMORY[0x1E695E2A8], v8) & 0x40000000) == 0 || (os_unfair_lock_lock(this + 27), v12 = *(this + 123), os_unfair_lock_unlock(this + 27), (v12 & 0x20000000) != 0))
    {
      v17 = 0;
      goto LABEL_34;
    }

    FileSuffix(&cf1, theString);
    Length = CFStringGetLength(*&theString[0].st_dev);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(theString);
    if (Length)
    {
      os_unfair_lock_lock(this + 27);
      *(this + 123) |= 0x20000000u;
      os_unfair_lock_unlock(this + 27);
      goto LABEL_31;
    }

    v22 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "Documents", 9, 0x8000100u, 0, *MEMORY[0x1E695E498]);
    cf2 = &stru_1F5F42870;
    *&theString[0].st_dev = v22;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&cf2, v22);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(theString);
    if (CFEqual(cf1, cf2))
    {
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf2);
    }

    else
    {
      operator"" _t("BDMV", 4, theString);
      v23 = CFEqual(cf1, *&theString[0].st_dev);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(theString);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf2);
      if (!v23)
      {
        if ((*(this + 124) & 0x80) == 0 && TCFURLInfo::GetBooleanProperty(*(this + 1), *MEMORY[0x1E695ED38], v24))
        {
          TFSInfo::Path(this, &cf2);
          if (CFStringGetLength(cf2))
          {
            operator"" _t(".localized", 10, &v107);
            AppendPath(&cf2, &v107, theString);
            TString::operator=(&cf2, theString);
            TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(theString);
            TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v107);
            v99 = TString::c_str(&cf2);
            if (stat(v99, theString) != -1)
            {
              TFSInfo::SetHasLSProperties(this, 1);
            }

            v17 = 0;
          }

          else
          {
            v17 = 4294959238;
          }

          TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf2);
          goto LABEL_32;
        }

LABEL_31:
        v17 = 0;
LABEL_32:
        os_unfair_lock_lock(this + 27);
        v25 = *(this + 123);
        os_unfair_lock_unlock(this + 27);
        if ((v25 & 0x20000000) != 0)
        {
          v107 = 0;
          cf2 = 0;
          v26 = *(this + 1);
          _CFURLCopyResourcePropertyValuesAndFlags();
          v105 |= cf2;
        }

LABEL_34:
        *(this + 123) = *(this + 123) & 0xFFFFFBBF | ((v105 & 1) << 10) | (((v105 >> 2) & 1) << 6);
        os_unfair_lock_lock(this + 27);
        v27 = *(this + 123);
        os_unfair_lock_unlock(this + 27);
        if ((v27 & 0x20000000) != 0)
        {
          v37 = v105;
          os_unfair_lock_lock(this + 27);
          *(this + 123) = *(this + 123) & 0xFFFFFFFD | (2 * ((v37 >> 4) & 1));
          os_unfair_lock_unlock(this + 27);
          v38 = v105;
          os_unfair_lock_lock(this + 27);
          *(this + 123) = *(this + 123) & 0xFFFFFFEF | (16 * ((v38 >> 11) & 1));
          os_unfair_lock_unlock(this + 27);
          os_unfair_lock_lock(this + 27);
          *(this + 127) |= 0x400u;
          os_unfair_lock_unlock(this + 27);
          v39 = v105;
          os_unfair_lock_lock(this + 27);
          *(this + 123) = *(this + 123) & 0xFFFFFFFB | (4 * ((v39 >> 9) & 1));
          os_unfair_lock_unlock(this + 27);
        }

        else
        {
          v28 = 0;
          v29 = *(this + 123);
          *(this + 123) = v29 & 0xFFFFFFE9 | 0x10;
          if ((v29 & 0x40) != 0)
          {
            v30 = 0;
            goto LABEL_47;
          }

          v30 = 0;
          if (!v110)
          {
            goto LABEL_47;
          }

          if (CFStringGetCString(v110, theString, 1024, 0x8000100u))
          {
            v31 = strrchr(theString, 46);
            if (!v31 || v31 == theString)
            {
              v30 = 0;
              v78 = *(this + 123) & 0xFFFFFFEF;
            }

            else
            {
              v32 = v31;
              v30 = strchr(theString, 46) != v31;
              v33 = *v32;
              if (*v32)
              {
                v34 = (v32 + 1);
                do
                {
                  *(v34 - 1) = __tolower(v33);
                  v35 = *v34++;
                  v33 = v35;
                }

                while (v35);
              }

              if (!strcmp(v32, ".app"))
              {
                v36 = 4;
              }

              else
              {
                v36 = 4 * (strcmp(v32, ".service") == 0);
              }

              v78 = *(this + 123) & 0xFFFFFFFB | v36;
            }

            *(this + 123) = v78;
            st_dev = theString[0].st_dev;
            if (LOBYTE(theString[0].st_dev))
            {
              v95 = &theString[0].st_dev + 1;
              do
              {
                v96 = st_dev;
                v28 = st_dev < 32;
                v97 = *v95++;
                st_dev = v97;
                if (v97)
                {
                  v98 = v96 <= 31;
                }

                else
                {
                  v98 = 1;
                }
              }

              while (!v98);
            }

            else
            {
              v28 = 0;
            }

LABEL_47:
            v40 = v105 >> 6;
            os_unfair_lock_lock(this + 27);
            *(this + 123) = *(this + 123) & 0xFFFFFF7F | ((v40 & 1) << 7);
            os_unfair_lock_unlock(this + 27);
            v41 = v105 >> 5;
            os_unfair_lock_lock(this + 27);
            *(this + 123) = *(this + 123) & 0xFFFEFFFF | ((v41 & 1) << 16);
            os_unfair_lock_unlock(this + 27);
            v42 = v105;
            v43 = (v105 & 0x80) == 0 || v4 == 7;
            v44 = *(this + 123) & 0xFFFFFFFE;
            if (v43)
            {
              ++v44;
            }

            *(this + 123) = v44;
            os_unfair_lock_lock(this + 27);
            *(this + 123) = *(this + 123) & 0xFFFFFFF7 | (8 * ((v42 >> 8) & 1));
            os_unfair_lock_unlock(this + 27);
            v45 = v105;
            os_unfair_lock_lock(this + 27);
            v46 = *(this + 123);
            if (v45 < 0)
            {
              v47 = *(this + 123);
            }

            else
            {
              os_unfair_lock_unlock(this + 27);
              os_unfair_lock_lock(this + 27);
              v47 = *(this + 123);
              if ((v46 & 0x40) == 0)
              {
                v48 = 0;
LABEL_57:
                *(this + 123) = v47 & 0xFFFFF7FF | v48;
                os_unfair_lock_unlock(this + 27);
                os_unfair_lock_lock(this + 27);
                v49 = *(this + 123);
                os_unfair_lock_unlock(this + 27);
                if ((v49 & 0x800) != 0)
                {
                  os_unfair_lock_lock(this + 27);
                  v50 = *(this + 123);
                  os_unfair_lock_unlock(this + 27);
                  if ((v50 & 0x40) == 0)
                  {
                    if (TCFURLInfo::GetBooleanProperty(*(this + 1), *MEMORY[0x1E695ED38], v51))
                    {
                      TFSInfo::GetAliasInfoFrom(this, theString, &cf2, 0, 0);
                    }
                  }
                }

                v52 = *(this + 123);
                *(this + 123) = v52 & 0xFFFF8DFF | v105 & 0x7000 | (v105 >> 1) & 0x200;
                if (v4 != 7 && (v106 & 1) != 0)
                {
                  v53 = v110;
                  if (v110)
                  {
                    if ((v52 & 0x100) == 0)
                    {
LABEL_69:
                      *&theString[0].st_dev = &stru_1F5F42870;
                      CFRetain(&stru_1F5F42870);
                      TString::SetStringRefAsImmutable(theString, v53);
                      TFSInfo::SetItemName(this, theString);
                      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(theString);
                      goto LABEL_70;
                    }

                    PathComponent = CFURLCopyLastPathComponent(*(this + 1));
                    *&theString[0].st_dev = PathComponent;
                    if (!PathComponent || CFStringGetLength(PathComponent) < 1 || (IsEqual(*&theString[0].st_dev, @"/") & 1) != 0)
                    {
                      TAutoRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TAutoRef(theString);
                      v53 = v110;
                      goto LABEL_69;
                    }

                    TString::TString(&cf2, *&theString[0].st_dev);
                    TFSInfo::SetItemName(this, &cf2);
                    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf2);
                    TCFURLInfo::StringProperty(*(this + 1), *MEMORY[0x1E695ED60], &cf2);
                    TFSInfo::SetDisplayName(this, &cf2);
                    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf2);
                    TAutoRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TAutoRef(theString);
                  }
                }

LABEL_70:
                *(this + 14) = 0;
                v55 = *(this + 123);
                if ((v55 & 0x20) != 0)
                {
                  if ((v55 & 2) != 0)
                  {
                    if (*(this + 120) || (CreationDate = TFSInfo::GetCreationDate(this), CreationDate != -534528000.0) && CreationDate != -3061152000.0)
                    {
                      theString[0].st_dev = 0;
                      LODWORD(cf2) = 0;
                      if (CFBundleGetPackageInfoInDirectory(*(this + 1), theString, &cf2))
                      {
                        v59 = cf2;
                        *(this + 28) = theString[0].st_dev;
                        *(this + 29) = v59;
                      }
                    }
                  }

                  else if (TFSInfo::CheckForCustomizedFolderIcon(this))
                  {
                    TFSInfo::ReadFolderAdornmentsFromDisk(this, theString);
                    v57 = *(this + 12);
                    *(this + 12) = *&theString[0].st_dev;

                    TFSInfo::GetLabelColorBasedOnTag(this, 1);
                    TFSInfo::SetFolderIconConfigFetched(this, 1);
                  }
                }

                else
                {
                  *&theString[0].st_dev = 0;
                  if (CFURLCopyResourcePropertyForKey(*(this + 1), *MEMORY[0x1E695E2C0], theString, 0))
                  {
                    if (*&theString[0].st_dev)
                    {
                      if (CFDataGetLength(*&theString[0].st_dev) == 32)
                      {
                        BytePtr = CFDataGetBytePtr(*&theString[0].st_dev);
                        *(this + 29) = *(BytePtr + 1);
                        *(this + 28) = *BytePtr;
                        if ((TFSInfo::HasLSProperties(this) & 1) == 0 && *(this + 28) == 1095782476)
                        {
                          *(this + 123) |= 4u;
                        }
                      }
                    }
                  }

                  TAutoRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TAutoRef(theString);
                }

                os_unfair_lock_lock(this + 27);
                v60 = *(this + 123);
                os_unfair_lock_unlock(this + 27);
                if (((v30 | (v60 >> 29) | v28) & 1) == 0)
                {
                  *&theString[0].st_dev = &stru_1F5F42870;
                  CFRetain(&stru_1F5F42870);
                  TString::SetStringRefAsImmutable(theString, *(this + 3));
                  os_unfair_lock_lock(this + 27);
                  v68 = *(this + 123);
                  os_unfair_lock_unlock(this + 27);
                  if ((v68 & 8) != 0 && (TCFURLInfo::ShowAllExtensions(v69) & 1) == 0)
                  {
                    FileSuffix(theString, &cf2);
                    v70 = CFStringGetLength(*&theString[0].st_dev);
                    v71 = CFStringGetLength(cf2);
                    TString::SubString(theString, 0, v70 - v71, &v107);
                    TString::operator=(theString, &v107);
                    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v107);
                    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf2);
                  }

                  ColonsToSlashes(theString, &cf2);
                  TFSInfo::SetDisplayName(this, &cf2);
                  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf2);
                  v72 = theString;
                  goto LABEL_108;
                }

                cf2 = 0;
                if (!CFURLCopyResourcePropertyForKey(*(this + 1), *MEMORY[0x1E695EBC8], &cf2, 0))
                {
                  v100 = &stru_1F5F42870;
                  CFRetain(&stru_1F5F42870);
LABEL_101:
                  TAutoRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TAutoRef(&cf2);
                  if (CFStringGetLength(v100))
                  {
                    v73 = v110 ? v110 : &stru_1F5F42870;
                    if (!CFEqual(v100, v73))
                    {
                      TFSInfo::SetDisplayName(this, &v100);
                    }
                  }

                  v72 = &v100;
LABEL_108:
                  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v72);
                  if ((v106 & 2) != 0)
                  {
                    *(this + 123) = *(this + 123) & 0xFEFFFFFF | ((DWORD2(v110) > 1) << 24);
                  }

                  if (TFSInfo::IsAlias(this) && v4 != 7)
                  {
                    os_unfair_lock_lock(this + 27);
                    v74 = *(this + 123);
                    os_unfair_lock_unlock(this + 27);
                    if ((v74 & 0x40) == 0)
                    {
                      os_unfair_lock_lock(this + 27);
                      v75 = *(this + 123);
                      os_unfair_lock_unlock(this + 27);
                      v76 = *(this + 120);
                      if ((v75 & 0x40) == 0)
                      {
                        if (v76 == 22)
                        {
                          v77 = 0;
                        }

                        else
                        {
                          v77 = *(this + 28);
                        }

                        if (v77 == 1717661793 || v77 == 1718643553)
                        {
                          v80 = 2;
                        }

                        else
                        {
                          v80 = 0;
                        }

                        *(this + 123) = v80 | *(this + 123) & 0xFFFFFFFD;
                      }

                      if (v76 == 22)
                      {
                        v81 = 0;
                      }

                      else
                      {
                        v81 = 4 * (*(this + 28) == 1717661793);
                      }

                      *(this + 123) = *(this + 123) & 0xFFFFFFFB | v81;
                    }
                  }

                  v82 = TFSInfo::GetCreationDate(this);
                  if (v82 == -534528000.0 || v82 == -3061152000.0)
                  {
                    os_unfair_lock_lock(this + 27);
                    v83 = *(this + 123);
                    os_unfair_lock_unlock(this + 27);
                    if ((v83 & 0x20) != 0)
                    {
                      TCFURLInfo::SourcePathForResumableCopy(*(this + 1), theString);
                      v84 = CFStringGetLength(*&theString[0].st_dev);
                      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(theString);
                      if (v84)
                      {
                        TFSInfo::Path(this, theString);
                        cf2 = 0;
                        if (CFStringGetLength(*&theString[0].st_dev))
                        {
                          v85 = TString::c_str(theString);
                          v86 = SourceInodeXattrName();
                          if (getxattr(v85, v86, &cf2, 8uLL, 0, 1) != -1)
                          {
                            TFSInfo::SetIsResumableCopyTarget(this, 1);
                          }
                        }

                        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(theString);
                      }
                    }
                  }

                  if (cf)
                  {
                    CFRelease(cf);
                  }

                  cf = 0;
                  if (*(this + 124))
                  {
                    if (TCFURLInfo::VolumeIsAll(*(this + 1), 0x10000))
                    {
                      v17 = 4294967253;
                    }

                    else
                    {
                      v17 = v17;
                    }
                  }

                  os_unfair_lock_lock(this + 27);
                  v87 = *(this + 123);
                  os_unfair_lock_unlock(this + 27);
                  if ((v87 & 0x20) == 0)
                  {
                    os_unfair_lock_lock(this + 27);
                    *(this + 123) |= 0x8000000u;
                    os_unfair_lock_unlock(this + 27);
                  }

                  os_unfair_lock_lock(this + 27);
                  v88 = *(this + 123);
                  os_unfair_lock_unlock(this + 27);
                  if ((v88 & 0x40) != 0)
                  {
                    *(this + 123) |= 0x20000u;
                    *(this + 127) |= 1u;
                  }

                  TFSInfo::SetIfSavedSearch(this);
                  if (*(this + 120) != 22 && *(this + 28) == 1651666795)
                  {
                    *(this + 127) = *(this + 127) & 0xFEFF | ((*(this + 29) == 1095779404) << 8);
                  }

                  if (TFSInfo::GetCreationDate(this) == -534528000.0)
                  {
                    TFSInfo::Path(this, &cf2);
                    if (CFStringGetLength(cf2))
                    {
                      v17 = v17;
                    }

                    else
                    {
                      v17 = 4294959238;
                    }

                    if (!v17)
                    {
                      v89 = TString::c_str(&cf2);
                      v90 = getxattr(v89, "com.apple.progress.fractionCompleted", theString, 0x64uLL, 0, 0);
                      *(this + 127) = *(this + 127) & 0xFEFF | ((v90 != -1) << 8);
                      if (v90 >= 1)
                      {
                        v91 = CFStringCreateWithBytes(0, theString, v90, 0x8000100u, 0);
                        v107 = v91;
                        if (v91)
                        {
                          DoubleValue = CFStringGetDoubleValue(v91);
                          TFSInfo::SetOperationFractionCompleted(this, DoubleValue);
                        }

                        TAutoRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TAutoRef(&v107);
                      }
                    }

                    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf2);
                  }

                  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf1);
                  goto LABEL_162;
                }

                v61 = cf2;
                v100 = &stru_1F5F42870;
                CFRetain(&stru_1F5F42870);
                TString::SetStringRefAsImmutable(&v100, v61);
                v62 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "Downloads", 9, 0x8000100u, 0, *MEMORY[0x1E695E498]);
                *&theString[0].st_dev = v62;
                v107 = &stru_1F5F42870;
                CFRetain(&stru_1F5F42870);
                TString::SetStringRefAsImmutable(&v107, v62);
                TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(theString);
                LODWORD(v62) = CFEqual(v100, v107);
                TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v107);
                if (!v62)
                {
                  goto LABEL_101;
                }

                v63 = TFSInfo::GetFPItem(this);
                if (!v63)
                {
                  v64 = FPItemManagerInstance();
                  v65 = *(this + 2);
                  v107 = 0;
                  v63 = [v64 itemForURL:v65 error:&v107];
                  v66 = v107;

                  if (!v63)
                  {
                    v67 = LogObj(4);
                    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
                    {
                      theString[0].st_dev = 138412290;
                      *&theString[0].st_mode = v66;
                      _os_log_impl(&dword_1E5674000, v67, OS_LOG_TYPE_ERROR, "Failed to get FPItem for Downloads: %@", theString, 0xCu);
                    }

                    goto LABEL_95;
                  }
                }

                v67 = [v63 displayName];
                if (v100 != v67)
                {
                  TString::SetStringRefAsImmutable(&v100, v67);
                }

                v66 = v63;
LABEL_95:

                goto LABEL_101;
              }
            }

            v48 = 2048;
            goto LABEL_57;
          }
        }

        v28 = 0;
        v30 = 0;
        goto LABEL_47;
      }
    }

    TFSInfo::SetHasLSProperties(this, 1);
    goto LABEL_31;
  }

  v14 = TFSInfo::GetFPItem(this);

  if (!v14)
  {
    v17 = 4294959236;
    goto LABEL_163;
  }

  v15 = *MEMORY[0x1E69E9840];

  return TFSInfo::FetchFPItemProperties(this);
}

void sub_1E567B798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va5, a3);
  va_start(va4, a3);
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v6 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v8 = va_arg(va3, const void *);
  va_copy(va4, va3);
  v10 = va_arg(va4, const void *);
  v12 = va_arg(va4, void);
  v13 = va_arg(va4, void);
  va_copy(va5, va4);
  v14 = va_arg(va5, const void *);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va4);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va5);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  TAutoRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>::~TAutoRef(va1);
  TAutoRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TAutoRef(va2);
  TAutoRef<__CFError *,TRetainReleasePolicy<__CFError *>>::~TAutoRef(va3);
  _Unwind_Resume(a1);
}

const void **TAutoRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TAutoRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t FPItemManagerInstance(void)
{
  v0 = objc_opt_class();

  return [v0 defaultManager];
}

uint64_t TFSInfo::GetObjectIdentifier(TFSInfo *this)
{
  v3 = *MEMORY[0x1E69E9840];
  TCFURLInfo::CopyPropertyValues(*(this + 1));
  result = 0;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

id TFSInfo::GetFPItem(TFSInfo *this)
{
  os_unfair_lock_lock(this + 26);
  v2 = *(this + 8);
  os_unfair_lock_unlock(this + 26);

  return v2;
}

uint64_t IsEqual(CFTypeRef cf1, CFTypeRef cf2)
{
  v23[2] = *MEMORY[0x1E69E9840];
  if (cf1 == cf2)
  {
    goto LABEL_5;
  }

  v3 = 0;
  if (cf1 && cf2)
  {
    if (CFEqual(cf1, cf2))
    {
LABEL_5:
      v3 = 1;
      goto LABEL_6;
    }

    v7 = cf_cast<__CFURL const*,void const*>(cf1);
    v8 = cf_cast<__CFURL const*,void const*>(cf2);
    v3 = 0;
    if (v7)
    {
      v9 = v8;
      if (v8)
      {
        {
          v20 = TString::operator NSString *(MEMORY[0x1E695EAB8]);
          v23[0] = v20;
          v21 = TString::operator NSString *(MEMORY[0x1E695E2B0]);
          v23[1] = v21;
          v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
          make_ref<__CFArray const*,NSArray * {__strong},void>(v22, &IsEqual(void const*,void const*)::keys);
        }

        v10 = CFURLCopyResourcePropertiesForKeys(v7, IsEqual(void const*,void const*)::keys, 0);
        v11 = CFURLCopyResourcePropertiesForKeys(v9, IsEqual(void const*,void const*)::keys, 0);
        if ([(__CFDictionary *)v10 count]== 2 && [(__CFDictionary *)v11 count]== 2)
        {
          v12 = TString::operator NSString *(MEMORY[0x1E695EAB8]);
          v13 = [(__CFDictionary *)v10 objectForKeyedSubscript:v12];

          v14 = TString::operator NSString *(MEMORY[0x1E695EAB8]);
          v15 = [(__CFDictionary *)v11 objectForKeyedSubscript:v14];

          if (IsEqual(v13, v15))
          {
            v16 = TString::operator NSString *(MEMORY[0x1E695E2B0]);
            v17 = [(__CFDictionary *)v10 objectForKeyedSubscript:v16];

            v18 = TString::operator NSString *(MEMORY[0x1E695E2B0]);
            v19 = [(__CFDictionary *)v11 objectForKeyedSubscript:v18];

            v3 = IsEqual(v17, v19);
          }

          else
          {
            v3 = 0;
          }
        }

        else
        {
          v3 = 0;
        }
      }
    }
  }

LABEL_6:
  v5 = *MEMORY[0x1E69E9840];
  return v3;
}

const void **TFSInfo::SetItemName(TFSInfo *this, const TString *a2)
{
  v3 = a2->fString.fRef;
  TString::TString(&theString, [(__CFString *)v3 UTF8String]);

  os_unfair_lock_lock(this + 26);
  Length = CFStringGetLength(theString);
  v5 = (this + 24);
  if (Length)
  {
    if (v5 != &theString)
    {
      TString::SetStringRefAsImmutable(v5, theString);
    }
  }

  else if (v5->fString.fRef != @"?")
  {
    TString::SetStringRefAsImmutable(v5, @"?");
  }

  os_unfair_lock_unlock(this + 26);
  return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);
}

void sub_1E567BF70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  os_unfair_lock_unlock(v2 + 26);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

BOOL TFSInfo::CheckForCustomizedFolderIcon(TFSInfo *this)
{
  os_unfair_lock_lock(this + 27);
  v2 = *(this + 123);
  os_unfair_lock_unlock(this + 27);
  return (v2 & 0x20) != 0 && SolariumCustomFolders() && ((TFSInfo::HasCustomIcon(this) & 1) != 0 || TFSInfo::GetLabel(this));
}

uint64_t SolariumCustomFolders(void)
{
  {
    if (_os_feature_enabled_impl() && NSClassFromString(&cfstr_Isfoldericonco.isa))
    {
      v1 = 1;
    }

    else
    {
      v1 = _os_feature_enabled_impl();
    }

    SolariumCustomFolders(void)::enabled = v1;
  }

  return SolariumCustomFolders(void)::enabled;
}

uint64_t TFSInfo::GetFinderInfo(TFSInfo *this)
{
  v3 = *MEMORY[0x1E69E9840];
  if (*(this + 120) != 29)
  {
    TCFURLInfo::CopyPropertyValues(*(this + 1));
  }

  result = 0;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t TFSInfo::HasCustomIcon(TFSInfo *this)
{
  os_unfair_lock_lock(this + 27);
  v2 = *(this + 123);
  os_unfair_lock_unlock(this + 27);
  if ((v2 & 0x2000000) != 0)
  {
    return 0;
  }

  TFSInfo::GetFinderInfo(this);
  return (v3 >> 10) & 1;
}

uint64_t TFSInfo::GetLabel(TFSInfo *this)
{
  os_unfair_lock_lock(this + 27);
  v2 = *(this + 123);
  os_unfair_lock_unlock(this + 27);
  if ((v2 & 0x2000000) != 0)
  {
    return 0;
  }

  TFSInfo::GetFinderInfo(this);
  return (v3 >> 1) & 7;
}

BOOL TFSInfo::IsAlias(TFSInfo *this)
{
  os_unfair_lock_lock(this + 27);
  v2 = *(this + 123);
  os_unfair_lock_unlock(this + 27);
  return (v2 & 0x800) != 0 || (*(this + 120) & 0xFB) == 3;
}

double TFSInfo::GetCreationDate(TFSInfo *this)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = -6.31140768e10;
  if (*(this + 120) != 35)
  {
    os_unfair_lock_lock(this + 27);
    v3 = *(this + 123);
    os_unfair_lock_unlock(this + 27);
    if ((v3 & 0x2000000) == 0)
    {
      if ((*(this + 120) & 0xFE) == 0x1C)
      {
        v4 = TFSInfo::GetFPItem(this);
        v5 = [v4 creationDate];

        if (v5)
        {
          v1 = MEMORY[0x1E692BF40](v5);
        }

        else
        {
          v1 = -6.31140768e10;
        }
      }

      else
      {
        v1 = 0.0;
        TCFURLInfo::CopyPropertyValues(*(this + 1));
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return v1;
}

void TFSInfo::SetIfSavedSearch(TFSInfo *this)
{
  {
    operator new();
  }

  if (!*(this + 120))
  {
    TFSInfo::Name(this, &v12);
    v9 = TString::EndsWith(&v12, TFSInfo::SetIfSavedSearch(void)::kSavedSearchExtension) || *(this + 120) != 22 && *(this + 28) == 1936945525;
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v12.fString.fRef);
    v2 = (this + 108);
    os_unfair_lock_lock(this + 27);
    v11 = *(this + 127);
    v6 = (this + 127);
    v5 = v11;
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  v2 = (this + 108);
  v3 = (this + 108);
  if (*(this + 120) != 20)
  {
    os_unfair_lock_lock(v3);
    v8 = 0;
    v10 = *(this + 127);
    v6 = (this + 127);
    v5 = v10;
    goto LABEL_14;
  }

  os_unfair_lock_lock(v3);
  v4 = *(this + 123);
  os_unfair_lock_unlock(this + 27);
  os_unfair_lock_lock(this + 27);
  v7 = *(this + 127);
  v6 = (this + 127);
  v5 = v7;
  if ((v4 & 0x100) != 0)
  {
    goto LABEL_13;
  }

LABEL_5:
  v8 = 32;
LABEL_14:
  *v6 = v8 | v5 & 0xFFDF;
  os_unfair_lock_unlock(v2);
}

void sub_1E567C508(_Unwind_Exception *a1)
{
  MEMORY[0x1E692CD30](v1, 0x60C4044C4A2DFLL);
  _Unwind_Resume(a1);
}

void TFSInfo::Name(TFSInfo *this@<X0>, TString *a2@<X8>)
{
  os_unfair_lock_lock(this + 26);
  TFSInfo::GetNameWhileLocked(this, a2);

  os_unfair_lock_unlock(this + 26);
}

void TFSInfo::GetNameWhileLocked(TFSInfo *this@<X0>, TString *a2@<X8>)
{
  a2->fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(a2, *(this + 3));
}

BOOL TString::EndsWith(TString *this, const TString *a2)
{
  Length = CFStringGetLength(this->fString.fRef);
  v5 = CFStringGetLength(a2->fString.fRef);
  v6 = Length < v5;
  v7 = Length - v5;
  if (v6)
  {
    return 0;
  }

  v9 = v5;
  v10 = RetainCF<__CFString const*>(&this->fString.fRef);
  if (v10)
  {
    v11 = CFAutorelease(v10);
    v12 = static_cf_cast<__CFString const*,void const*>(v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = RetainCF<__CFString const*>(&a2->fString.fRef);
  if (v13)
  {
    v14 = CFAutorelease(v13);
    v15 = static_cf_cast<__CFString const*,void const*>(v14);
  }

  else
  {
    v15 = 0;
  }

  v16.location = v7;
  v16.length = v9;
  return CFStringCompareWithOptions(v12, v15, v16, 0) == kCFCompareEqualTo;
}

const void **TNode::VolumeInfoFor@<X0>(FINode **a1@<X0>, os_unfair_lock_s **a2@<X1>, void *a3@<X8>)
{
  v6 = *a2;
  os_unfair_lock_lock(*a2 + 27);
  v7 = *(&v6[30]._os_unfair_lock_opaque + 3);
  os_unfair_lock_unlock(v6 + 27);
  v8 = *a2;
  os_unfair_lock_opaque_low = LOBYTE((*a2)[30]._os_unfair_lock_opaque);
  if ((v7 & 0x100) == 0)
  {
    v10 = TNodeFromFINode(*a1);
    if (os_unfair_lock_opaque_low)
    {
      if (v10)
      {
        v11 = TNodeFromFINode(*a1);
        os_unfair_lock_opaque = TNode::VirtualType(v11);
      }

      else
      {
        os_unfair_lock_opaque = (*a2)[30]._os_unfair_lock_opaque;
      }

      v13 = a3;
      goto LABEL_17;
    }

    if (v10)
    {
      v14 = *a2;
      os_unfair_lock_lock(*a2 + 27);
      v15 = *(&v14[30]._os_unfair_lock_opaque + 3);
      os_unfair_lock_unlock(v14 + 27);
      if ((v15 & 0x8000) != 0)
      {
        v23 = TNodeFromFINode(*a1);
        TNode::CFURL(v23, &v24);
      }

      else
      {
        v16 = *a2;
        os_unfair_lock_lock(v16 + 27);
        v17 = *&v16[4]._os_unfair_lock_opaque;
        v24 = v17;
        if (v17)
        {
          CFRetain(v17);
        }

        os_unfair_lock_unlock(v16 + 27);
      }

      TFSVolumeInfo::GetVolumeInfoFor(v24, v18, a3);
    }

    else
    {
      TCFURLInfo::BootURL(&v24);
      TFSVolumeInfo::GetVolumeInfoFor(v24, v22, a3);
    }

    return TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v24);
  }

  if (!LOBYTE((*a2)[30]._os_unfair_lock_opaque))
  {
    os_unfair_lock_lock(v8 + 27);
    v19 = *&v8[4]._os_unfair_lock_opaque;
    v24 = v19;
    if (v19)
    {
      CFRetain(v19);
    }

    os_unfair_lock_unlock(v8 + 27);
    TFSVolumeInfo::GetVolumeInfoFor(v19, v20, a3);
    return TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v24);
  }

  v13 = a3;
  os_unfair_lock_opaque = (*a2)[30]._os_unfair_lock_opaque;
LABEL_17:

  return TFSVolumeInfo::GetVolumeInfoFor(os_unfair_lock_opaque, v13);
}

uint64_t TNodeFromFINode(FINode *a1)
{
  v1 = static_objc_cast<NSString,objc_object * {__strong}>(a1);
  v2 = [v1 asTNode];

  return v2;
}

void sub_1E567CA2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(&a9);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

uint64_t TNode::TNode(uint64_t a1, FINode **a2, uint64_t a3, uint64_t *a4)
{
  *(a1 + 74) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v7 = *a4;
  if (!*a4)
  {
    TNode::VolumeInfoFor(a2, a3, &v19);
    v10 = v19;
    v19 = 0uLL;
    v11 = *(a1 + 8);
    *a1 = v10;
    if (!v11)
    {
      goto LABEL_9;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    v9 = *(&v19 + 1);
    if (!*(&v19 + 1))
    {
      goto LABEL_9;
    }

LABEL_7:
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    goto LABEL_9;
  }

  v8 = a4[1];
  if (!v8)
  {
    *a1 = v7;
    *(a1 + 8) = 0;
    goto LABEL_9;
  }

  atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  v9 = *(a1 + 8);
  *a1 = v7;
  *(a1 + 8) = v8;
  if (v9)
  {
    goto LABEL_7;
  }

LABEL_9:
  *(a1 + 48) = TNodeFromFINode(*a2);
  v13 = *a3;
  v12 = *(a3 + 8);
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = *(a1 + 24);
  *(a1 + 16) = v13;
  *(a1 + 24) = v12;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  atomic_fetch_or((a1 + 88), 0x100u);
  v15 = *a3;
  os_unfair_lock_lock(v15 + 27);
  v16 = *(&v15[30]._os_unfair_lock_opaque + 3);
  os_unfair_lock_unlock(v15 + 27);
  if ((v16 & 0x20) != 0)
  {
    operator new();
  }

  if (TNode::IsDeferredForSymlink(a1, TFSInfo::IsApplication, 0))
  {
    TDeviceManagementMonitor::RegisterApp(a1, v17);
  }

  return a1;
}

void sub_1E567CBD4(_Unwind_Exception *a1)
{
  std::unique_ptr<AutoSignpostInterval_General_OpenSync>::reset[abi:ne200100]((v1 + 80), 0);
  std::unique_ptr<TNotifierList>::reset[abi:ne200100]((v1 + 72), 0);
  std::unique_ptr<TChildrenList>::reset[abi:ne200100]((v1 + 56), 0);
  v3 = *(v1 + 40);
  *(v1 + 40) = 0;
  if (v3)
  {
    MEMORY[0x1E692CD30](v3, 0x1020C40A5B76CDFLL);
  }

  v4 = *(v1 + 24);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(v1 + 8);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  _Unwind_Resume(a1);
}

uint64_t TNode::IsDeferredForSymlink(uint64_t a1, uint64_t (*a2)(void *), uint64_t a3)
{
  v6 = TNode::InfoLock(a1);
  os_unfair_lock_lock(v6);
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v6);
  os_unfair_lock_lock((v8 + 108));
  v9 = *(v8 + 123);
  os_unfair_lock_unlock((v8 + 108));
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if ((v9 & 0x40) != 0)
  {
    TNode::GetAliasTarget(a1, &v28);
    v16 = TNode::InfoLock(v15);
    os_unfair_lock_lock(v16);
    v18 = *(a1 + 16);
    v17 = *(a1 + 24);
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v16);
    os_unfair_lock_lock((v18 + 108));
    v19 = *(v18 + 127);
    os_unfair_lock_unlock((v18 + 108));
    if ((v19 & 1) != 0 || (v20 = v28, !TNodeFromFINode(v28)))
    {
      v26 = 0;
    }

    else
    {
      v21 = TNodeFromFINode(v20);
      v22 = TNode::InfoLock(v21);
      os_unfair_lock_lock(v22);
      v24 = *(v21 + 16);
      v23 = *(v21 + 24);
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v22);
      v25 = (v24 + (a3 >> 1));
      if (a3)
      {
        a2 = *(*v25 + a2);
      }

      v26 = a2(v25);
      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }
    }

    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }
  }

  else
  {
    v11 = TNode::InfoLock(v10);
    os_unfair_lock_lock(v11);
    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v11);
    v14 = (v13 + (a3 >> 1));
    if (a3)
    {
      a2 = *(*v14 + a2);
    }

    v26 = a2(v14);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }

  return v26;
}

void sub_1E567CE3C(_Unwind_Exception *a1)
{
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

void TNode::InfoLock()
{
  {
    TNode::InfoLock(void)::sInfoLock = 0;
  }
}

TChildrenList *std::unique_ptr<TChildrenList>::reset[abi:ne200100](TChildrenList **a1, TChildrenList *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    TChildrenList::~TChildrenList(result);

    JUMPOUT(0x1E692CD30);
  }

  return result;
}

const void **TString::SetFromUTF8(TString *this, const UInt8 *a2, CFIndex a3)
{
  if (a3)
  {
    v4 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], a2, a3, 0x8000100u, 0);
    v7 = v4;
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = &stru_1F5F42870;
    }

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(&this->fString.fRef, v5);
    return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v7);
  }

  else
  {

    return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(&this->fString.fRef, &stru_1F5F42870);
  }
}

void sub_1E567CFC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

const void **TAutoRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>::~TAutoRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

unint64_t UserDefaultsKey_(const __CFString *a1)
{
  v4 = CFPreferencesCopyAppValue(a1, @"com.apple.desktopservices");
  v1 = cf_cast<__CFString const*,void const*>(v4);
  v2 = v1;
  if (v1)
  {
    v2 = CFStringCompare(v1, @"true", 1uLL) == kCFCompareEqualTo || CFStringCompare(v2, @"1", 1uLL) == kCFCompareEqualTo || CFStringCompare(v2, @"YES", 1uLL) == kCFCompareEqualTo;
  }

  TAutoRef<void const*,TRetainReleasePolicy<void const*>>::~TAutoRef(&v4);
  return v2;
}

void sub_1E567D0A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TAutoRef<void const*,TRetainReleasePolicy<void const*>>::~TAutoRef(va);
  _Unwind_Resume(a1);
}

int *TNode::InfoLock(TNode *this)
{
  {
    TNode::InfoLock();
  }

  return &TNode::InfoLock(void)::sInfoLock;
}

const void **TAutoRef<void const*,TRetainReleasePolicy<void const*>>::~TAutoRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void *cf_cast<__CFString const*,void const*>(const void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == CFNullGetTypeID())
    {
      return 0;
    }

    else
    {
      v3 = CFGetTypeID(v1);
      if (v3 == CFStringGetTypeID())
      {
        return v1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t TCFURLInfo::GetBooleanProperty(TCFURLInfo *this, const __CFString *a2, const __CFString *a3)
{
  if (!this)
  {
    return 0;
  }

  propertyValueTypeRefPtr = 0;
  if (CFURLCopyResourcePropertyForKey(this, a2, &propertyValueTypeRefPtr, 0) && propertyValueTypeRefPtr)
  {
    v3 = IsEqual(propertyValueTypeRefPtr, *MEMORY[0x1E695E4D0]);
  }

  else
  {
    v3 = 0;
  }

  TAutoRef<__CFBoolean const*,TRetainReleasePolicy<__CFBoolean const*>>::~TAutoRef(&propertyValueTypeRefPtr);
  return v3;
}

void sub_1E567D1F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TAutoRef<__CFBoolean const*,TRetainReleasePolicy<__CFBoolean const*>>::~TAutoRef(va);
  _Unwind_Resume(a1);
}

const void **TAutoRef<__CFBoolean const*,TRetainReleasePolicy<__CFBoolean const*>>::~TAutoRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

CFIndex TCFURLInfo::GetVolumeInfoRecord(void *a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  *a2 = 0u;
  *(a2 + 16) = 0u;
  if (a1)
  {
    v3 = a1;
    memset(&propertyValueTypeRefPtr, 0, 36);
    v29 = 0;
    error = 5;
    v28 = 0x20000;
    if (getattrlist([v3 fileSystemRepresentation], &error, &propertyValueTypeRefPtr, 0x24uLL, 0))
    {
      v4 = __error();
      v6 = TCFURLInfo::TranslatePOSIXError(*v4, 0, v5);

      if (v6)
      {
        v7 = *a2 & 0xFFF9FFFF;
LABEL_15:
        *a2 = v7;
LABEL_16:
        *a2 = v7 & 0xFFFFF6FF;
        v26 = 0;
        error = 0;
        if (!_CFURLGetVolumePropertyFlags())
        {
          v8 = TCFURLInfo::TranslateCFError(error, v17);
LABEL_31:
          TAutoRef<__CFError *,TRetainReleasePolicy<__CFError *>>::~TAutoRef(&error);
          goto LABEL_32;
        }

        *a2 = ((v26 >> 29) & 0x80 | *a2 & 0xFFFF9905 | (v26 >> 37) & 0x4000 | (v26 >> 34) & 0x200 | (v26 >> 35) & 8 | (v26 >> 57) & 0x10 | (v26 >> 44) & 0x20 | (v26 >> 37) & 0x400 | (v26 >> 43) & 0x2000 | (2 * (v26 & 1)) | (v26 >> 52) & 0x40) ^ 0x2000;
        *&propertyValueTypeRefPtr.f_bsize = 0;
        if (CFURLCopyResourcePropertyForKey(v3, *MEMORY[0x1E695EE38], &propertyValueTypeRefPtr, 0))
        {
          v18 = *&propertyValueTypeRefPtr.f_bsize;
          if (*&propertyValueTypeRefPtr.f_bsize)
          {
            obj = &stru_1F5F42870;
            CFRetain(&stru_1F5F42870);
            TString::SetStringRefAsImmutable(&obj, v18);
            objc_storeStrong((a2 + 24), obj);
            TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&obj);
          }
        }

        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&propertyValueTypeRefPtr);
        *&propertyValueTypeRefPtr.f_bsize = 0;
        if (!CFURLCopyResourcePropertyForKey(v3, *MEMORY[0x1E695ECF0], &propertyValueTypeRefPtr, &error) || (v20 = *&propertyValueTypeRefPtr.f_bsize) == 0)
        {
          v8 = TCFURLInfo::TranslateCFError(error, v19);
          goto LABEL_30;
        }

        *(a2 + 8) = 4096;
        obj = 0;
        CFNumberGetValue(v20, kCFNumberSInt64Type, &obj);
        v21 = obj;
        v22 = *(a2 + 8);
        if (!__CFADD__(obj, v22))
        {
          if (!v22)
          {
LABEL_28:
            v8 = 0;
            *(a2 + 16) = v22;
LABEL_30:
            TAutoRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>::~TAutoRef(&propertyValueTypeRefPtr);
            goto LABEL_31;
          }

          v21 = obj + v22 - 1;
        }

        v22 *= v21 / v22;
        goto LABEL_28;
      }

      f_blocks = 0;
    }

    else
    {
      f_blocks = propertyValueTypeRefPtr.f_blocks;
    }

    v7 = *a2 & 0xFFFDFFFF | (((f_blocks >> 6) & 1) << 17);
    *a2 = v7;
    if ((f_blocks & 2) == 0)
    {
      goto LABEL_16;
    }

    v10 = v3;
    v11 = v10;
    v12 = [v10 fileSystemRepresentation];
    memset(&propertyValueTypeRefPtr, 0, 44);
    v29 = 0;
    error = 5;
    v28 = 0x40000000;
    if (getattrlist(v12, &error, &propertyValueTypeRefPtr, 0x2CuLL, 0x21u))
    {
      v13 = __error();
      v15 = TCFURLInfo::TranslatePOSIXError(*v13, 0, v14);

      if (v15)
      {
        v7 = *a2 & 0xFFFBFFFF;
        goto LABEL_15;
      }

      f_bavail = 0;
    }

    else
    {
      f_bavail = propertyValueTypeRefPtr.f_bavail;
    }

    v7 = *a2 & 0xFFFBFFFF | (((f_bavail >> 28) & 1) << 18);
    goto LABEL_15;
  }

  v8 = 4294959238;
LABEL_32:
  v23 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_1E567D62C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  TAutoRef<__CFError *,TRetainReleasePolicy<__CFError *>>::~TAutoRef(va);
  _Unwind_Resume(a1);
}

void TString::TString(TString *this, NSString *a2)
{
  v3 = a2;
  this->fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(this, v3);
}

void sub_1E567D704(_Unwind_Exception *a1)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v2);

  _Unwind_Resume(a1);
}

uint64_t std::string_view::compare[abi:ne200100](void *a1, unint64_t a2, size_t a3, void *__s2, size_t a5)
{
  v5 = a1[1];
  v6 = v5 >= a2;
  v7 = v5 - a2;
  if (!v6)
  {
    std::__throw_out_of_range[abi:ne200100]("string_view::substr");
  }

  if (v7 >= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = v7;
  }

  if (a5 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = a5;
  }

  LODWORD(result) = memcmp((*a1 + a2), __s2, v10);
  if (v9 < a5)
  {
    v12 = -1;
  }

  else
  {
    v12 = 1;
  }

  if (v9 == a5)
  {
    v12 = 0;
  }

  if (result)
  {
    return result;
  }

  else
  {
    return v12;
  }
}

void operator"" _t(UInt8 *bytes@<X0>, CFIndex numBytes@<X1>, TString *a3@<X8>)
{
  if (numBytes)
  {
    v4 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], bytes, numBytes, 0x8000100u, 0, *MEMORY[0x1E695E498]);
    v6 = v4;
    a3->fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(a3, v4);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v6);
  }

  else
  {
    v5 = TString::KEmptyString(bytes);
    a3->fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(a3, *v5);
  }
}

char *std::__itoa::__traits<unsigned int>::__read[abi:ne200100](char *a1, char *a2, _DWORD *a3, _DWORD *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = 9;
  do
  {
    v5 = *a1;
    if ((*a1 - 58) < 0xF6u)
    {
      break;
    }

    ++a1;
    *&v19[4 * v4] = (v5 - 48);
    v6 = v4-- != 0;
    v7 = v6;
  }

  while (a1 != a2 && v7);
  v8 = v4 + 1;
  v9 = (v4 + 1) << 32;
  v10 = *&v19[4 * v8];
  if (v8 <= 7)
  {
    v11 = &v19[(v9 >> 30) + 4];
    v12 = &dword_1E57943A0;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      v10 += v15 * v13;
    }

    while (v11 < &v20);
  }

  *a3 = v10;
  v16 = v20 * *(&std::__itoa::__pow10_32 + ((0x900000000 - v9) >> 30));
  *a4 = v16;
  v17 = *MEMORY[0x1E69E9840];
  return &a1[-((v16 & 0xFFFFFFFF00000000) != 0)];
}

_BYTE *std::string::basic_string[abi:ne200100](_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  return __dst;
}

char *std::__itoa::__traits<unsigned char>::__read[abi:ne200100](char *a1, char *a2, _DWORD *a3, _DWORD *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = 2;
  do
  {
    v5 = *a1;
    if ((*a1 - 58) < 0xF6u)
    {
      break;
    }

    ++a1;
    *&v19[4 * v4] = (v5 - 48);
    v6 = v4-- != 0;
    v7 = v6;
  }

  while (a1 != a2 && v7);
  v8 = v4 + 1;
  v9 = (v4 + 1) << 32;
  v10 = *&v19[4 * v8];
  if (v8 <= 0)
  {
    v11 = &v19[(v9 >> 30) + 4];
    v12 = &dword_1E57943A0;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      v10 += v15 * v13;
    }

    while (v11 < &v20);
  }

  *a3 = v10;
  v16 = v20 * *(&std::__itoa::__pow10_32 + ((0x200000000 - v9) >> 30));
  *a4 = v16;
  v17 = *MEMORY[0x1E69E9840];
  return &a1[-((v16 & 0xFFFFFFFF00000000) != 0)];
}

TString *TString::operator=(TString *a1, const char *a2)
{
  TString::SetStringRefAsImmutable(a1, 0);
  if (a2)
  {
    v4 = strlen(a2);
    TString::SetFromUTF8(a1, a2, v4);
  }

  return a1;
}

const void **TFSVolumeInfo::CreateHiddenList(TFSVolumeInfo *this)
{
  v24 = *MEMORY[0x1E69E9840];
  result = TFSVolumeInfo::MayHaveHiddenList(this);
  if (result)
  {
    v3 = *MEMORY[0x1E695E480];
    v4 = *MEMORY[0x1E695E498];
    v15 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "mach (Mac OS 9)", 15, 0x8000100u, 0, *MEMORY[0x1E695E498]);
    v16.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&v16, v15);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v15);
    v5 = CFStringCreateWithBytesNoCopy(v3, "mach.sym (Mac OS 9)", 19, 0x8000100u, 0, v4);
    v15 = v5;
    v17.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&v17, v5);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v15);
    v6 = CFStringCreateWithBytesNoCopy(v3, "mach", 4, 0x8000100u, 0, v4);
    v15 = v6;
    v18.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&v18, v6);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v15);
    v7 = CFStringCreateWithBytesNoCopy(v3, "mach.sym", 8, 0x8000100u, 0, v4);
    v15 = v7;
    v19.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&v19, v7);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v15);
    v8 = CFStringCreateWithBytesNoCopy(v3, "automount", 9, 0x8000100u, 0, v4);
    v15 = v8;
    v20.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&v20, v8);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v15);
    v9 = CFStringCreateWithBytesNoCopy(v3, "Network Trash Folder", 20, 0x8000100u, 0, v4);
    v15 = v9;
    v21.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&v21, v9);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v15);
    v10 = CFStringCreateWithBytesNoCopy(v3, "TheVolumeSettingsFolder", 23, 0x8000100u, 0, v4);
    v15 = v10;
    v22.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&v22, v10);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v15);
    v11 = CFStringCreateWithBytesNoCopy(v3, "Temporary Items", 15, 0x8000100u, 0, v4);
    v15 = v11;
    v23.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&v23, v11);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v15);
    memset(v14, 0, sizeof(v14));
    std::vector<TString>::__init_with_size[abi:ne200100]<TString const*,TString const*>(v14, &v16, &v24, 8uLL);
    std::optional<std::vector<TString>>::operator=[abi:ne200100]<std::vector<TString>,void>(this + 192, v14);
    v15 = v14;
    std::vector<TString>::__destroy_vector::operator()[abi:ne200100](&v15);
    for (i = 56; i != -8; i -= 8)
    {
      result = TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((&v16.fString.fRef + i));
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E567DF20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  std::vector<TString>::__destroy_vector::operator()[abi:ne200100](&a13);
  v22 = &a21;
  v23 = -64;
  do
  {
    v22 = TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v22) - 1;
    v23 += 8;
  }

  while (v23);
  _Unwind_Resume(a1);
}

BOOL TFSVolumeInfo::MayHaveHiddenList(TFSVolumeInfo *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    os_unfair_lock_lock((v1 + 108));
    v3 = *(v1 + 16);
    v6 = v3;
    if (v3)
    {
      CFRetain(v3);
      os_unfair_lock_unlock((v1 + 108));
      if ((*(this + 126) & 1) == 0 && (*(this + 108) & 1) == 0)
      {
        v4 = *(this + 48) == 0;
LABEL_9:
        TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v6);
        return v4;
      }
    }

    else
    {
      os_unfair_lock_unlock((v1 + 108));
    }

    v4 = 0;
    goto LABEL_9;
  }

  return 0;
}

void std::vector<TString>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::allocator<TString>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<TString>::__init_with_size[abi:ne200100]<TString const*,TString const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<TString>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1E567E134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<TString>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::allocator<TString>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_1E567E208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TFSInfo::GetParent(uint64_t a1, uint64_t *a2)
{
  os_unfair_lock_lock((a1 + 108));
  v4 = *(a1 + 123);
  os_unfair_lock_unlock((a1 + 108));
  if ((v4 & 0x100) == 0)
  {
    os_unfair_lock_lock((a1 + 108));
    v5 = *(a1 + 16);
    v12 = v5;
    if (v5)
    {
      CFRetain(v5);
      os_unfair_lock_unlock((a1 + 108));
      TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v12);
      os_unfair_lock_lock((a1 + 108));
      v6 = *(a1 + 123);
      os_unfair_lock_unlock((a1 + 108));
      if ((v6 & 0x100) == 0)
      {
        v7 = TFSInfo::CopyParentPathURL(a1);
        v12 = v7;
        if (v7)
        {
          v8 = TFSInfo::initialize(*a2, v7, 1, 1, 1, 1, 0);
        }

        else
        {
          v8 = 4294959224;
        }

        TAutoRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TAutoRef(&v12);
        return v8;
      }

      v10 = a2[1];
      *a2 = 0;
      a2[1] = 0;
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }
    }

    else
    {
      os_unfair_lock_unlock((a1 + 108));
      TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v12);
    }

    return 4294959224;
  }

  v9 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  return 0;
}

void sub_1E567E338(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TAutoRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TAutoRef(va);
  _Unwind_Resume(a1);
}

TFSInfoOverflow **std::unique_ptr<TFSInfoOverflow>::~unique_ptr[abi:ne200100](TFSInfoOverflow **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    TFSInfoOverflow::~TFSInfoOverflow(v2);
    MEMORY[0x1E692CD30]();
  }

  return a1;
}

const void ***std::unique_ptr<TVersionData>::~unique_ptr[abi:ne200100](const void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v2 + 3);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v2 + 2);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v2 + 1);
    v3 = TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v2);
    MEMORY[0x1E692CD30](v3, 0x60C40902580DDLL);
  }

  return a1;
}

const void **TFSVolumeInfo::SetMountPoint(TFSVolumeInfo *this)
{
  error = 0;
  v2 = *(this + 7);
  v3 = *(this + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v2)
  {
    CFURLRef = TFSInfo::CreateCFURLRef(v2);
    v7 = CFURLRef;
    if (CFURLRef)
    {
      propertyValueTypeRefPtr = 0;
      if (CFURLCopyResourcePropertyForKey(CFURLRef, *MEMORY[0x1E695E440], &propertyValueTypeRefPtr, &error))
      {
        os_unfair_lock_lock(this + 78);
        if (*(this + 11) != propertyValueTypeRefPtr)
        {
          TString::SetStringRefAsImmutable(this + 11, propertyValueTypeRefPtr);
        }

        if (*(this + 408) == 1)
        {
          TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(this + 50);
          *(this + 408) = 0;
        }

        os_unfair_lock_unlock(this + 78);
      }

      TAutoRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TAutoRef(&propertyValueTypeRefPtr);
    }

    TAutoRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TAutoRef(&v7);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return TAutoRef<__CFError *,TRetainReleasePolicy<__CFError *>>::~TAutoRef(&error);
}

void sub_1E567E4EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v7 = va_arg(va2, const void *);
  os_unfair_lock_unlock(v3 + 78);
  TAutoRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TAutoRef(va);
  TAutoRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TAutoRef(va1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  TAutoRef<__CFError *,TRetainReleasePolicy<__CFError *>>::~TAutoRef(va2);
  _Unwind_Resume(a1);
}

CFURLRef TFSInfo::CreateCFURLRef(TFSInfo *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    return CFURLCreateFileReferenceURL(0, v1, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t TFSVolumeInfo::SystemBuildVersion(TFSVolumeInfo *this)
{
  if ((*(this + 304) & 1) == 0)
  {
    v22.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    std::optional<TString>::operator=[abi:ne200100]<TString,void>(this + 296, &v22.fString.fRef);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v22.fString.fRef);
    if ((*(this + 126) & 1) == 0 && (*(this + 108) & 1) == 0 && !*(this + 48))
    {
      v2 = *(this + 18);
      if (v2 <= 0x14 && ((1 << v2) & 0x10000C) != 0)
      {
        v4 = *(this + 7);
        v3 = *(this + 8);
        if (v3)
        {
          atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        os_unfair_lock_lock((v4 + 108));
        v5 = *(v4 + 16);
        v22.fString.fRef = v5;
        if (v5)
        {
          CFRetain(v5);
        }

        os_unfair_lock_unlock((v4 + 108));
        v6 = v22.fString.fRef;
        TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v22.fString.fRef);
        v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"System/Library/CoreServices/SystemVersion.plist" isDirectory:0 relativeToURL:v6];
        v21 = 0;
        v8 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v7 error:&v21];
        v9 = v21;
        if (v8)
        {
          v10 = [v8 objectForKeyedSubscript:*MEMORY[0x1E695E1F8]];
          v11 = objc_cast<NSString,objc_object * {__strong}>(v10);

          v12 = v11;
          v22.fString.fRef = &stru_1F5F42870;
          CFRetain(&stru_1F5F42870);
          TString::SetStringRefAsImmutable(&v22, v12);

          TString::Append(this + 37, &v22);
          TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v22.fString.fRef);
          if (v11 && os_variant_has_internal_ui())
          {
            v13 = TString::operator NSString *(MEMORY[0x1E695E1E8]);
            v14 = [v8 objectForKeyedSubscript:v13];
            v15 = static_cf_cast<__CFString const*,void const*>(v14);

            operator"" _t(" (", 2, &v19);
            TString::TString(&v18, v15);
            TString::operator+(&v19.fString.fRef, &v18, &v20);
            operator"" _t(")", 1, &v17);
            TString::operator+(&v20.fString.fRef, &v17, &v22);
            TString::Append(this + 37, &v22);
            TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v22.fString.fRef);
            TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v17.fString.fRef);
            TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v20.fString.fRef);
            TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v18.fString.fRef);
            TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v19.fString.fRef);
          }
        }

        if (v3)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v3);
        }
      }
    }
  }

  return this + 296;
}

void sub_1E567E804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, const void *a11, const void *a12, uint64_t a13, const void *a14)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a14);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a9);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a12);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a10);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a11);

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  _Unwind_Resume(a1);
}

CFTypeRef *std::construct_at[abi:ne200100]<TString,TString,TString*>(CFTypeRef *a1, CFTypeRef *a2)
{
  *a1 = *a2;
  *a2 = 0;
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(a2, &stru_1F5F42870);
  return a1;
}

void ParseDeviceName(uint64_t *a1@<X0>, std::string *a2@<X8>)
{
  v4 = std::string_view::find_last_of[abi:ne200100](a1, "/", 0xFFFFFFFFFFFFFFFFLL);
  if (v4 == -1)
  {
    v6 = a1[1];
  }

  else
  {
    v5 = v4 + 1;
    v6 = a1[1];
    if (v4 + 1 < v6)
    {
      if (v4 >= 0xE)
      {
        if (std::string_view::starts_with[abi:ne200100](a1, "apfs://", 7uLL))
        {
          v5 = 7;
        }

        v6 = a1[1];
      }

      v7 = v6 >= v5;
      v6 -= v5;
      if (!v7)
      {
        std::__throw_out_of_range[abi:ne200100]("string_view::substr");
      }

      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  __src = (*a1 + v5);
  v20 = v6;
  if (!std::string_view::starts_with[abi:ne200100](&__src, "disk", 4uLL) || v20 < 7)
  {
    goto LABEL_27;
  }

  v8 = __src + v20;
  v9 = *(__src + 4);
  v10 = v9 == 45 ? __src + 5 : __src + 4;
  if (v10 == v8)
  {
    goto LABEL_27;
  }

  v11 = v20 - (v9 == 45) - 4;
  while (*v10 == 48)
  {
    ++v10;
    if (!--v11)
    {
      goto LABEL_27;
    }
  }

  if (v11 && *v10 - 48 <= 9 && ((v12 = std::__itoa::__traits<unsigned int>::__read[abi:ne200100](v10, v8, &v17, &__p), v13 = v12, v12 == v8) || *v12 - 48 > 9) && !__CFADD__(v17.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__data_) && v9 != 45 && LODWORD(v17.__r_.__value_.__l.__data_) + LODWORD(__p.__r_.__value_.__l.__data_) > 0 && v12 + 2 <= v8 && *v12 == 115)
  {
    std::string::basic_string[abi:ne200100](&__p, __src, v12 - __src);
    v14 = v13 + 1;
    if (v13 + 1 != v8)
    {
      while (*v14 == 48)
      {
        if (++v14 == v8)
        {
          v14 = v8;
          break;
        }
      }
    }

    if (v14 != v8 && *v14 - 48 <= 9 && ((v15 = std::__itoa::__traits<unsigned char>::__read[abi:ne200100](v14, v8, &v17, &v21), v15 == v8) || *v15 - 48 > 9) && LODWORD(v17.__r_.__value_.__l.__data_) <= 0xFF && 255 - LODWORD(v17.__r_.__value_.__l.__data_) >= v21 && (v16 = v21 + v17.__r_.__value_.__s.__data_[0], v21 + v17.__r_.__value_.__s.__data_[0]))
    {
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v17, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        v17 = __p;
      }

      *a2 = v17;
      a2[1].__r_.__value_.__s.__data_[0] = v16;
      a2[1].__r_.__value_.__s.__data_[8] = 1;
    }

    else
    {
      a2->__r_.__value_.__s.__data_[0] = 0;
      a2[1].__r_.__value_.__s.__data_[8] = 0;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
LABEL_27:
    a2->__r_.__value_.__s.__data_[0] = 0;
    a2[1].__r_.__value_.__s.__data_[8] = 0;
  }
}

void sub_1E567EBFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t std::string_view::find_last_of[abi:ne200100](uint64_t *a1, char *__s, unint64_t a3)
{
  v6 = *a1;
  v7 = strlen(__s);
  if (v7)
  {
    v8 = v7;
    if (a1[1] > a3)
    {
      v9 = a3 + 1;
    }

    else
    {
      v9 = a1[1];
    }

    while (v9)
    {
      if (memchr(__s, *(v6 - 1 + v9--), v8))
      {
        return v9;
      }
    }
  }

  return -1;
}

__n128 std::__optional_storage_base<std::pair<std::string,unsigned char>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::pair<std::string,unsigned char>,false>>(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 32) == a2[2].n128_u8[0])
  {
    if (*(a1 + 32))
    {
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      result = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      *a1 = result;
      a2[1].n128_u8[7] = 0;
      a2->n128_u8[0] = 0;
      *(a1 + 24) = a2[1].n128_u8[8];
    }
  }

  else if (*(a1 + 32))
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 32) = 0;
  }

  else
  {
    result = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    *a1 = result;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    a2->n128_u64[0] = 0;
    *(a1 + 24) = a2[1].n128_u8[8];
    *(a1 + 32) = 1;
  }

  return result;
}

const void ***std::__shared_ptr_emplace<TFSInfo>::__on_zero_shared(uint64_t a1)
{
  TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TRef((a1 + 112));
  std::unique_ptr<TFSInfoOverflow>::~unique_ptr[abi:ne200100]((a1 + 104));

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((a1 + 72));
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((a1 + 56));
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((a1 + 48));
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef((a1 + 40));
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef((a1 + 32));

  return std::unique_ptr<TVersionData>::~unique_ptr[abi:ne200100]((a1 + 24));
}

const void **ROSPVolumeID::BootVolumeID(void)::$_0::operator()()
{
  TCFURLInfo::BootURL(&v3);
  VolumeIdentifier = TCFURLInfo::GetVolumeIdentifier(v3, v0);
  result = TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v3);
  ROSPVolumeID::BootVolumeID(void)::sBootDeviceID = VolumeIdentifier;
  if (VolumeIdentifier)
  {
    return CFRetain(VolumeIdentifier);
  }

  return result;
}

void sub_1E567EE38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

const void **TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

TString *TString::Append(TString *this, const TString *a2)
{
  if (CFStringGetLength(this->fString.fRef) || (IsMutable = TString::IsMutable(this->fString.fRef, v4), (IsMutable & 0x100) != 0) && (IsMutable & 1) != 0)
  {
    v6 = TString::MutableRef(this, v4);
    CFStringAppend(v6, a2->fString.fRef);
  }

  else
  {
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, a2->fString.fRef);
    if (this->fString.fRef)
    {
      CFRelease(this->fString.fRef);
    }

    this->fString.fRef = MutableCopy;
  }

  return this;
}

void TFSVolumeInfo::CopyVolumeInfos(TFSVolumeInfo *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  VolumeInfoLock();
  os_unfair_lock_lock(&_MergedGlobals_5);
  v3 = *(GetVolumeMap() + 16);
  if (v3)
  {
    while (1)
    {
      *&v6 = 0;
      v4 = v3[5];
      if (v4)
      {
        break;
      }

LABEL_10:
      v3 = *v3;
      if (!v3)
      {
        goto LABEL_11;
      }
    }

    v5 = std::__shared_weak_count::lock(v4);
    *(&v6 + 1) = v5;
    if (v5)
    {
      *&v6 = v3[4];
      if (!v6)
      {
LABEL_8:
        if (v5)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v5);
        }

        goto LABEL_10;
      }
    }

    else if (!v6)
    {
      goto LABEL_8;
    }

    std::vector<std::shared_ptr<TCFURLInfo>>::push_back[abi:ne200100](a2, &v6);
    v5 = *(&v6 + 1);
    goto LABEL_8;
  }

LABEL_11:
  os_unfair_lock_unlock(&_MergedGlobals_5);
}

void sub_1E567EFAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  os_unfair_lock_unlock(&_MergedGlobals_5);
  std::vector<std::shared_ptr<TCFURLInfoList>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void **std::__split_buffer<std::shared_ptr<TCFURLInfo>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::shared_ptr<TCFURLInfo>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::shared_ptr<TCFURLInfo>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void std::vector<std::shared_ptr<TCFURLInfoList>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

void std::vector<std::shared_ptr<TCFURLInfoList>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<TCFURLInfoList>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

BOOL PrefsBool(const __CFString *a1, _BOOL8 a2)
{
  v3 = CFPreferencesCopyAppValue(a1, @"com.apple.desktopservices");
  theString1 = v3;
  if (v3)
  {
    v4 = CFGetTypeID(v3);
    if (v4 == CFStringGetTypeID())
    {
      if (CFStringCompare(theString1, @"true", 1uLL) == kCFCompareEqualTo || CFStringCompare(theString1, @"1", 1uLL) == kCFCompareEqualTo)
      {
        a2 = 1;
        goto LABEL_14;
      }

      v5 = CFStringCompare(theString1, @"YES", 1uLL) == kCFCompareEqualTo;
    }

    else
    {
      v6 = CFGetTypeID(theString1);
      if (v6 == CFBooleanGetTypeID())
      {
        a2 = CFEqual(theString1, *MEMORY[0x1E695E4D0]) != 0;
        goto LABEL_14;
      }

      v7 = CFGetTypeID(theString1);
      if (v7 != CFNumberGetTypeID())
      {
        goto LABEL_14;
      }

      v5 = CFEqual(theString1, &unk_1F5F4A3A0) == 0;
    }

    a2 = v5;
  }

LABEL_14:
  TRef<void const*,TRetainReleasePolicy<void const*>>::~TRef(&theString1);
  return a2;
}

void sub_1E567F224(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<void const*,TRetainReleasePolicy<void const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

const void **TRef<void const*,TRetainReleasePolicy<void const*>>::~TRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void TFolderSizingThread::TFolderSizingThread(TFolderSizingThread *this, const TFSVolumeInfo *a2)
{
  *this = 0;
  *(this + 1) = 0;
  v41.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  v4 = *(a2 + 7);
  v5 = *(a2 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v4)
  {
    TFSInfo::Path(v4, &v35.fString.fRef);
    v6 = SanitizedPath(&v35);
    if (v41.fString.fRef != v6)
    {
      TString::SetStringRefAsImmutable(&v41, v6);
    }

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v35.fString.fRef);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v35);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v36, "Slow TFolderSizingThread::GetFolderSizingQueue: '", 49);
  v8 = TString::c_str(&v41);
  v9 = strlen(v8);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "'", 1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](&v35, __p);
  if (v30 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  v12 = dispatch_queue_create(v11, 0);
  v13 = *this;
  *this = v12;

  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p[0]);
  }

  v14 = *this;
  v15 = dispatch_get_global_queue(-32768, 0);
  dispatch_set_target_queue(v14, v15);

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](__p);
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "Fast TFolderSizingThread::GetFolderSizingQueue: '", 49);
  v17 = TString::c_str(&v41);
  v18 = strlen(v17);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v17, v18);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "'", 1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](__p, v27);
  if (v28 >= 0)
  {
    v20 = v27;
  }

  else
  {
    v20 = v27[0];
  }

  v21 = dispatch_queue_create(v20, 0);
  v22 = *(this + 1);
  *(this + 1) = v21;

  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  __p[0] = *MEMORY[0x1E69E54D8];
  v23 = __p[0];
  v24 = *(MEMORY[0x1E69E54D8] + 72);
  v25 = *(MEMORY[0x1E69E54D8] + 64);
  *(__p + *(__p[0] - 3)) = v25;
  v26 = v24;
  v30 = v24;
  v31 = MEMORY[0x1E69E5548] + 16;
  if (v33 < 0)
  {
    operator delete(v32[7].__locale_);
  }

  v31 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v32);
  std::iostream::~basic_iostream();
  MEMORY[0x1E692CCA0](&v34);
  v35.fString.fRef = v23;
  *(&v35.fString.fRef + v23[-1].info) = v25;
  v36 = v26;
  v37 = MEMORY[0x1E69E5548] + 16;
  if (v39 < 0)
  {
    operator delete(v38[7].__locale_);
  }

  v37 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v38);
  std::iostream::~basic_iostream();
  MEMORY[0x1E692CCA0](&v40);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v41.fString.fRef);
}

void sub_1E567F704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, const void *a47)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a47);
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((v50 - 88));

  _Unwind_Resume(a1);
}

CFTypeRef *TFSVolumeInfo::GetMapKey@<X0>(CFTypeRef *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  result = TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(a3, *a1);
  *(a3 + 8) = a2;
  return result;
}

void *std::__hash_table<std::__hash_value_type<VolumeKey,std::weak_ptr<TFSVolumeInfo>>,std::__unordered_map_hasher<VolumeKey,std::__hash_value_type<VolumeKey,std::weak_ptr<TFSVolumeInfo>>,VolumeKeyHasher,std::equal_to<VolumeKey>,true>,std::__unordered_map_equal<VolumeKey,std::__hash_value_type<VolumeKey,std::weak_ptr<TFSVolumeInfo>>,std::equal_to<VolumeKey>,VolumeKeyHasher,true>,std::allocator<std::__hash_value_type<VolumeKey,std::weak_ptr<TFSVolumeInfo>>>>::find<VolumeKey>(void *a1, id *this)
{
  v4 = ROSPVolumeID::Hash(this);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4 ^ *(this + 8);
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4 ^ *(this + 8);
    if (v6 >= *&v5)
    {
      v9 = v6 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v6;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (std::__unordered_map_equal<VolumeKey,std::__hash_value_type<VolumeKey,std::weak_ptr<TFSVolumeInfo>>,std::equal_to<VolumeKey>,VolumeKeyHasher,true>::operator()[abi:ne200100](a1, (v11 + 2), this))
        {
          return v11;
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

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

const void **TFSVolumeInfo::GetVolumeInfoFor@<X0>(TFSVolumeInfo *this@<X0>, const __CFURL *a2@<X1>, void *a3@<X8>)
{
  v21 = *MEMORY[0x1E69E9840];
  TCFURLInfo::GetVolumeID(this, a2, &v16);
  TFSVolumeInfo::VolumeInfoFor(&v16, a3);
  result = TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(&v16);
  if (!*a3)
  {
    propertyValueTypeRefPtr = 0;
    CFURLCopyResourcePropertyForKey(this, *MEMORY[0x1E695EE48], &propertyValueTypeRefPtr, 0);
    if (propertyValueTypeRefPtr)
    {
      v6 = CFURLCreateFileReferenceURL(0, propertyValueTypeRefPtr, 0);
      cf = v6;
      if (v6)
      {
        v7 = [(__CFURL *)v6 path];
        v8 = v7 == 0;

        if (v8)
        {
          v9 = LogObj(7);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v10 = propertyValueTypeRefPtr;
            v11 = cf;
            v12 = SanitizedURL(v10);
            *buf = 138543618;
            v18 = v11;
            v19 = 2114;
            v20 = v12;
            _os_log_impl(&dword_1E5674000, v9, OS_LOG_TYPE_ERROR, "Can't get path of fileRefURL %{public}@ for volume %{public}@ using path url instead", buf, 0x16u);
          }

          if (cf)
          {
            CFRelease(cf);
          }
        }
      }

      TFSVolumeInfo::AddVolume();
    }

    result = TAutoRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TAutoRef(&propertyValueTypeRefPtr);
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E567FA90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v9 = va_arg(va1, const void *);
  v6 = v4;

  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(va);
  TAutoRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TAutoRef(va1);
  v8 = *(v2 + 8);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  _Unwind_Resume(a1);
}

const void **TFSVolumeInfo::VolumeInfoFor@<X0>(const void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v7 = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  TFSVolumeInfo::GetMapKey(&v7, 0, &cf);
  TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(&v7);
  v5 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v6 = v9;
  TFSVolumeInfo::GetVolumeInfoForNoSync(&v5, a2);
  TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(&v5);
  return TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(&cf);
}

void sub_1E567FB80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

BOOL std::__unordered_map_equal<VolumeKey,std::__hash_value_type<VolumeKey,std::weak_ptr<TFSVolumeInfo>>,std::equal_to<VolumeKey>,VolumeKeyHasher,true>::operator()[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *a3;
  v7 = (v5 | *a3) == 0;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v7 = CFEqual(v5, v6) != 0;
  }

  return *(a2 + 8) == *(a3 + 8) && v7;
}

void **TNodePtr::operator=(void **a1, void **a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = *a1;
  *a1 = v3;

  return a1;
}

uint64_t TNode::StPopulating::StPopulating(uint64_t a1, id *a2, uint64_t a3)
{
  v5 = *a2;
  *a1 = v5;
  *(a1 + 8) = a3;
  v6 = TNodeFromFINode(v5);
  if (!a3 && v6 && *(TNodeFromFINode(*a1) + 56))
  {
    v7 = TNodeFromFINode(*a1);
    TChildrenList::Lock(*(v7 + 56));
    v8 = TNodeFromFINode(*a1);
    *(a1 + 16) = TChildrenList::GenerationCount(*(v8 + 56));
  }

  return a1;
}

void TNode::AddNewChild(FINode **__return_ptr a1@<X8>, TChildrenList **this@<X0>, const TNodePtr *a3@<X1>, BOOL *a4@<X2>, BOOL a5@<W4>)
{
  v24 = *MEMORY[0x1E69E9840];
  TChildrenList::AddNewChild(this[7], a4, a1);
  if (!*a4)
  {
    v9 = TNodeFromFINode(*a1);
    if (v9 != TNodeFromFINode(a3->fFINode))
    {
      v10 = TNodeFromFINode(a3->fFINode);
      TNode::RemoveSelf(v10, 0);
    }
  }

  if (*a4)
  {
    if (pthread_main_np())
    {
      if (sFPItemsFetchingFromMainQueue)
      {
        v11 = LogObj(4);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v12 = TNodeFromFINode(a3->fFINode);
          TNode::CFURL(v12, &v21);
          v13 = v21;
          v14 = SanitizedURL(v13);
          *buf = 138543362;
          v23 = v14;
          _os_log_impl(&dword_1E5674000, v11, OS_LOG_TYPE_DEBUG, "Checking for FPItem asynchronously %{public}@", buf, 0xCu);

          TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v21);
        }

        v15 = sFPItemsFetchingFromMainQueue;
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3321888768;
        v19[2] = ___ZN5TNode11AddNewChildERK8TNodePtrRbbb_block_invoke;
        v19[3] = &__block_descriptor_40_ea8_32c47_ZTSKZN5TNode11AddNewChildERK8TNodePtrRbbbE3__0_e5_v8__0l;
        v20 = a3->fFINode;
        v16 = v20;
        dispatch_async(v15, v19);
      }
    }

    else
    {
      v17 = TNodeFromFINode(a3->fFINode);
      TNode::AttachCreateFPItemIfNeeded(v17, a5);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

void sub_1E567FEC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

void *std::vector<TNodePtr>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<TNodePtr>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<TNodePtr>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

uint64_t TChildrenList::AddNewChildren(uint64_t a1, TNodePtr **a2, int a3, void ***a4, uint64_t *a5, uint64_t *a6)
{
  v10 = *a4;
  for (i = a4[1]; i != v10; --i)
  {
    v12 = *(i - 1);
  }

  a4[1] = v10;
  v13 = *a6;
  for (j = a6[1]; j != v13; j -= 8)
  {
    v15 = *(j - 8);
  }

  a6[1] = v13;
  v16 = *a5;
  for (k = a5[1]; k != v16; k -= 8)
  {
    v18 = *(k - 8);
  }

  a5[1] = v16;
  if (*a2 == a2[1])
  {
    return 0;
  }

  v19 = *(a1 + 96);
  TNode::GetSuperRootNode(&v49, a1);
  v20 = TNodeFromFINode(v49.fFINode);

  if (v19 == v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = a3;
  }

  std::vector<TNodePtr>::reserve((a1 + 64), a2[1] - *a2 + ((*(a1 + 72) - *(a1 + 64)) >> 3));
  std::vector<TNodePtr>::reserve(a4, a2[1] - *a2);
  v23 = *a2;
  v22 = a2[1];
  while (v23 != v22)
  {
    v24 = TChildrenList::LowerBounds(a1, v23);
    if (*(a1 + 72) != v24)
    {
      v25 = v24;
      v26 = TNodeFromFINode(v23->fFINode);
      v27 = TNode::InfoLock(v26);
      os_unfair_lock_lock(v27);
      v29 = *(v26 + 16);
      v28 = *(v26 + 24);
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v27);
      v30 = TNodeFromFINode(*v25);
      v31 = TNode::InfoLock(v30);
      os_unfair_lock_lock(v31);
      v32 = *(v30 + 24);
      v49.fFINode = *(v30 + 16);
      v50 = v32;
      if (v32)
      {
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v31);
      if (TFSInfo::Equal(v29, &v49))
      {
        os_unfair_lock_lock((v29 + 108));
        v33 = *(v29 + 123);
        os_unfair_lock_unlock((v29 + 108));
        if ((v33 & 0x1000000) != 0)
        {
          os_unfair_lock_lock((v29 + 108));
          v35 = *(v29 + 16);
          v48 = v35;
          if (v35)
          {
            CFRetain(v35);
          }

          os_unfair_lock_unlock((v29 + 108));
          fFINode = v49.fFINode;
          os_unfair_lock_lock(&v49.fFINode[13].super.isa + 1);
          isa = fFINode[2].super.isa;
          v47 = isa;
          if (isa)
          {
            CFRetain(isa);
          }

          os_unfair_lock_unlock(&fFINode[13].super.isa + 1);
          v34 = v48 != v47;
          TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v47);
          TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v48);
        }

        else
        {
          v34 = 0;
        }
      }

      else
      {
        v34 = 1;
      }

      if (v50)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v50);
      }

      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
        if (!v34)
        {
          goto LABEL_37;
        }
      }

      else if (!v34)
      {
LABEL_37:
        std::vector<TNodePtr>::push_back[abi:ne200100](a6, v25);
        v38 = a5;
        goto LABEL_38;
      }
    }

    v38 = a4;
    if (v21)
    {
      v39 = TNodeFromFINode(v23->fFINode);
      TNodePtr::TNodePtr(&v49, *(a1 + 96));
      v41 = TNode::ParentLock(v40);
      os_unfair_lock_lock(v41);
      *(v39 + 48) = TNodeFromFINode(v49.fFINode);
      os_unfair_lock_unlock(v41);

      v38 = a4;
    }

LABEL_38:
    std::vector<TNodePtr>::push_back[abi:ne200100](v38, &v23->fFINode);
    ++v23;
  }

  v42 = *a4;
  v43 = a4[1];
  if (*a4 != v43)
  {
    std::vector<TNodePtr>::__insert_with_size[abi:ne200100]<std::__wrap_iter<TNodePtr*>,std::__wrap_iter<TNodePtr*>>((a1 + 64), *(a1 + 72), *a4, v43, v43 - *a4);
    atomic_store((*(a1 + 72) - *(a1 + 64)) >> 3, (a1 + 160));
    ++*(a1 + 184);
    return 1;
  }

  return 0;
}

void *std::vector<TNodePtr>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::allocator<TNodePtr>::allocate_at_least[abi:ne200100](result, a2);
    }

    std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1E56803F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<TNodePtr>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

FINode **TChildrenList::LowerBounds(TChildrenList *this, const TNodePtr *a2)
{
  v3 = TNodeFromFINode(a2->fFINode);
  v4 = TNode::InfoLock(v3);
  os_unfair_lock_lock(v4);
  v5 = *(v3 + 24);
  v8 = *(v3 + 16);
  v9 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v4);
  v6 = TChildrenList::LowerBounds(this, &v8);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  return v6;
}

void sub_1E568048C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

FINode **TChildrenList::LowerBounds(uint64_t a1, TFSInfo **a2)
{
  TChildrenList::SortListIfNeeded(a1, 0);
  v5 = *(a1 + 64);
  result = *(a1 + 72);
  if (result != v5)
  {
    v6 = result - v5;
    do
    {
      v7 = &v5[v6 >> 1];
      v8 = TNodeFromFINode(*v7);
      v9 = TNode::InfoLock(v8);
      os_unfair_lock_lock(v9);
      v11 = *(v8 + 16);
      v10 = *(v8 + 24);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v9);
      v12 = TFSInfo::LessThan(v11, a2);
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      if (v12)
      {
        v6 += ~(v6 >> 1);
      }

      else
      {
        v6 >>= 1;
      }

      if (v12)
      {
        v5 = v7 + 1;
      }
    }

    while (v6);
    return v5;
  }

  return result;
}

void sub_1E5680578(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void TChildrenList::SortListIfNeeded(TChildrenList *this, unint64_t a2)
{
  v2 = this + 64;
  v3 = *(this + 8);
  v4 = *(this + 19);
  v5 = *(this + 9);
  v6 = (v5 - v3) >> 3;
  v7 = v6 - v4;
  v8 = v6 != v4 && v6 >= 2;
  if (v8 && (a2 < 2 || ((log2f(v6) + 1.0) * a2) < (a2 * v6)))
  {
    v10 = &v3[v4];
    if (v7 == 1)
    {
      if (v4)
      {
        do
        {
          v11 = &v3[v4 >> 1];
          v12 = TChildrenList::SortListIfNeeded(unsigned long)::$_0::operator()(v11, v10);
          if (v12)
          {
            v4 += ~(v4 >> 1);
          }

          else
          {
            v4 >>= 1;
          }

          if (v12)
          {
            v3 = v11 + 1;
          }
        }

        while (v4);
        if (v10 != v3)
        {
          v13 = *(this + 8);
          *&v27 = *v10;
          v14 = *(this + 9);
          if (v10 + 1 != v14)
          {
            do
            {
              v15 = v10 + 1;
              TNodePtr::operator=(v10, v10 + 1);
              v16 = v10 + 2;
              ++v10;
            }

            while (v16 != v14);
            v14 = *(this + 9);
            v10 = v15;
          }

          while (v14 != v10)
          {
            v17 = *--v14;
          }

          *(this + 9) = v10;
          std::vector<TNodePtr>::insert(v2, v3 + *(this + 8) - v13, &v27);
        }
      }
    }

    else
    {
      v18 = 126 - 2 * __clz((v5 - v10) >> 3);
      if (v5 == v10)
      {
        v19 = 0;
      }

      else
      {
        v19 = v18;
      }

      std::__introsort<std::_ClassicAlgPolicy,TChildrenList::SortListIfNeeded(unsigned long)::$_0 &,TNodePtr *,false>(&v3[v4], v5, v19, 1);
      std::vector<TNodePtr>::vector[abi:ne200100](&v27, (*(this + 9) - *(this + 8)) >> 3);
      v20 = *(this + 8);
      v21 = *(this + 9);
      v22 = &v20[v4];
      v23 = v27;
      if (v4)
      {
        v24 = &v20[v4];
        while (v24 != v21)
        {
          if (TChildrenList::SortListIfNeeded(unsigned long)::$_0::operator()(v24, v20))
          {
            TNodePtr::operator=(v23, v24++);
          }

          else
          {
            TNodePtr::operator=(v23, v20++);
          }

          ++v23;
          if (v20 == v22)
          {
            goto LABEL_35;
          }
        }

        for (; v20 != v22; ++v23)
        {
          TNodePtr::operator=(v23, v20++);
        }
      }

      else
      {
        v24 = *(this + 8);
LABEL_35:
        while (v24 != v21)
        {
          TNodePtr::operator=(v23++, v24++);
        }
      }

      v25 = *(this + 4);
      *(this + 4) = v27;
      v27 = v25;
      v26 = *(this + 10);
      *(this + 10) = v28;
      v28 = v26;
      v29 = &v27;
      std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](&v29);
    }

    *(this + 19) = (*(this + 9) - *(this + 8)) >> 3;
  }
}

void *std::vector<TNodePtr>::push_back[abi:ne200100](uint64_t a1, id *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<TNodePtr>::__emplace_back_slow_path<TNodePtr const&>(a1, a2);
    v5 = result;
  }

  else
  {
    result = *a2;
    *v3 = result;
    v5 = v3 + 1;
  }

  *(a1 + 8) = v5;
  return result;
}

void TNode::AttachCreateFPItemIfNeeded(TNode *this, char a2)
{
  v4 = TNode::InfoLock(this);
  os_unfair_lock_lock(v4);
  v6 = *(this + 2);
  v5 = *(this + 3);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    os_unfair_lock_unlock(v4);
    v7 = *(v6 + 120);
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    if (v7)
    {
      return;
    }
  }

  else
  {
    os_unfair_lock_unlock(v4);
    if (*(v6 + 120))
    {
      return;
    }
  }

  if (FPProviderDomainClass())
  {
    v8 = UseFileProviderFramework();
    if (v8)
    {
      v9 = TNode::InfoLock(v8);
      os_unfair_lock_lock(v9);
      v11 = *(this + 2);
      v10 = *(this + 3);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v9);
      v12 = TFSInfo::GetFPItem(v11);
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      if (!v12)
      {
        TNodePtr::TNodePtr(&v14, this);
        v13 = 0x4014000000000000;
        TNode::UpdateFPItemIfNeeded(&v14.fFINode, &v13, 1, 1u, a2, v15);
      }
    }
  }
}

uint64_t **std::__hash_table<std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>,std::__unordered_map_hasher<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>,std::hash<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,std::equal_to<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,true>,std::__unordered_map_equal<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>,std::equal_to<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,std::hash<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,true>,std::allocator<std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>>>::__emplace_unique_key_args<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::piecewise_construct_t const&,std::tuple<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>> const&>,std::tuple<>>(void *a1, CFTypeRef *a2)
{
  v4 = CFHash(*a2);
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
    std::__hash_table<std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>,std::__unordered_map_hasher<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>,std::hash<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,std::equal_to<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,true>,std::__unordered_map_equal<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>,std::equal_to<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,std::hash<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,true>,std::allocator<std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>> const&>,std::tuple<>>();
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

  if ((IsEqual(v11[2], *a2) & 1) == 0)
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1E5680C4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

const void **TFSInfo::GetPath@<X0>(TFSInfo *this@<X0>, uint64_t a2@<X8>)
{
  os_unfair_lock_lock(this + 27);
  v4 = *(this + 2);
  v9 = v4;
  if (v4)
  {
    CFRetain(v4);
    os_unfair_lock_unlock(this + 27);
    TCFURLInfo::FileSystemRepresentation(v4, 1, &theString);
    if (CFStringGetLength(theString))
    {
      *a2 = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(a2, theString);
      *(a2 + 8) = 0;
    }

    else
    {
      TString::TString(&v7, "");
      v6 = -43;
      fstd::optional_err<TString,int>::optional_err(a2, &v7.fString.fRef, &v6);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v7.fString.fRef);
    }
  }

  else
  {
    os_unfair_lock_unlock(this + 27);
    TString::TString(&theString, "");
    LODWORD(v7.fString.fRef) = -8058;
    fstd::optional_err<TString,int>::optional_err(a2, &theString, &v7);
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);
  return TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v9);
}

void sub_1E5680D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(va1);
  _Unwind_Resume(a1);
}

void **std::vector<std::shared_ptr<TCFURLInfo>>::push_back[abi:ne200100](void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *result;
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

    v18[4] = result;
    if (v11)
    {
      std::allocator<std::shared_ptr<TCFURLInfo>>::allocate_at_least[abi:ne200100](result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::shared_ptr<TCFURLInfo>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

void std::vector<TNodePtr>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::allocator<TNodePtr>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
}

uint64_t FormatForFSTypeName(CFTypeRef *a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E695E480];
  v5 = *MEMORY[0x1E695E498];
  v6 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "apfs", 4, 0x8000100u, 0, *MEMORY[0x1E695E498]);
  cf2 = &stru_1F5F42870;
  *buf = v6;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&cf2, v6);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(buf);
  LODWORD(v6) = CFEqual(*a1, cf2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf2);
  if (v6)
  {
    result = 20;
    goto LABEL_3;
  }

  v9 = CFStringCreateWithBytesNoCopy(v4, "hfs", 3, 0x8000100u, 0, v5);
  cf2 = &stru_1F5F42870;
  *buf = v9;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&cf2, v9);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(buf);
  LODWORD(v9) = CFEqual(*a1, cf2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf2);
  if (!v9)
  {
    goto LABEL_17;
  }

  if ((a2 & 0x100000000) != 0)
  {
    if (a2 <= 1)
    {
      if (a2)
      {
        if (a2 != 1)
        {
LABEL_17:
          v12 = CFStringCreateWithBytesNoCopy(v4, "exfat", 5, 0x8000100u, 0, v5);
          cf2 = &stru_1F5F42870;
          *buf = v12;
          CFRetain(&stru_1F5F42870);
          TString::SetStringRefAsImmutable(&cf2, v12);
          TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(buf);
          LODWORD(v12) = CFEqual(*a1, cf2);
          TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf2);
          if (v12)
          {
            result = 21;
          }

          else
          {
            v13 = CFStringCreateWithBytesNoCopy(v4, "msdos", 5, 0x8000100u, 0, v5);
            cf2 = &stru_1F5F42870;
            *buf = v13;
            CFRetain(&stru_1F5F42870);
            TString::SetStringRefAsImmutable(&cf2, v13);
            TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(buf);
            LODWORD(v13) = CFEqual(*a1, cf2);
            TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf2);
            if (v13)
            {
              result = 8;
            }

            else
            {
              v14 = CFStringCreateWithBytesNoCopy(v4, "ntfs", 4, 0x8000100u, 0, v5);
              cf2 = &stru_1F5F42870;
              *buf = v14;
              CFRetain(&stru_1F5F42870);
              TString::SetStringRefAsImmutable(&cf2, v14);
              TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(buf);
              LODWORD(v14) = CFEqual(*a1, cf2);
              TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf2);
              if (v14)
              {
                result = 18;
              }

              else
              {
                v15 = CFStringCreateWithBytesNoCopy(v4, "smbfs", 5, 0x8000100u, 0, v5);
                cf2 = &stru_1F5F42870;
                *buf = v15;
                CFRetain(&stru_1F5F42870);
                TString::SetStringRefAsImmutable(&cf2, v15);
                TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(buf);
                LODWORD(v15) = CFEqual(*a1, cf2);
                TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf2);
                if (v15)
                {
                  result = 22;
                }

                else
                {
                  operator"" _t("nfs", 3, buf);
                  v16 = CFEqual(*a1, *buf);
                  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(buf);
                  if (v16)
                  {
                    result = 5;
                  }

                  else
                  {
                    result = 0;
                  }
                }
              }
            }
          }

          goto LABEL_3;
        }

LABEL_16:
        result = 3;
        goto LABEL_3;
      }
    }

    else if (a2 != 2)
    {
      if (a2 != 3)
      {
        if (a2 == 128)
        {
          result = 1;
          goto LABEL_3;
        }

        goto LABEL_17;
      }

      goto LABEL_16;
    }

    result = 2;
    goto LABEL_3;
  }

  v10 = LogObj(5);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = *a1;
    *buf = 138543362;
    *&buf[4] = v11;
    _os_log_impl(&dword_1E5674000, v10, OS_LOG_TYPE_ERROR, "Missing subtype for volume %{public}@", buf, 0xCu);
  }

  result = 0;
LABEL_3:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E5681314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

const void **TAutoRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TAutoRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t std::optional<TString>::operator=[abi:ne200100]<TString,void>(uint64_t a1, const void **a2)
{
  if (*(a1 + 8) == 1)
  {
    if (a1 != a2)
    {
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(a1, a2);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(a2, &stru_1F5F42870);
    }
  }

  else
  {
    std::construct_at[abi:ne200100]<TString,TString,TString*>(a1, a2);
    *(a1 + 8) = 1;
  }

  return a1;
}

id objc_cast<NSString,objc_object * {__strong}>(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

const void **TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(const void **a1, const void **a2)
{
  if (a1 != a2)
  {
    v4 = *a1;
    if (*a1)
    {
      CFRelease(v4);
    }

    *a1 = *a2;
    *a2 = 0;
  }

  return a1;
}

void TFSVolumeInfo::SetDeviceThreads(TFSVolumeInfo *this)
{
  if (TFSVolumeInfo::gFullEnvironment != 1)
  {
    return;
  }

  if (*(this + 48))
  {
    v14 = this;
    std::allocate_shared[abi:ne200100]<TVolumeSyncThread,std::allocator<TVolumeSyncThread>,TFSVolumeInfo *,char const*&,0>();
  }

  if (*(this + 107) != 1)
  {
    goto LABEL_31;
  }

  TFSVolumeInfo::CopyVolumeInfos(this, v15);
  v2 = v15[0];
  if (v15[0] != v15[1])
  {
    while (*(*v2 + 107) != 1 || *(*v2 + 48) != *(this + 48))
    {
      v2 = (v2 + 16);
      if (v2 == v15[1])
      {
        goto LABEL_30;
      }
    }
  }

  if (v2 == v15[1])
  {
LABEL_30:
    v14 = v15;
    std::vector<std::shared_ptr<TCFURLInfoList>>::__destroy_vector::operator()[abi:ne200100](&v14);
    goto LABEL_31;
  }

  v4 = *v2;
  v3 = *(v2 + 1);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = v15;
  std::vector<std::shared_ptr<TCFURLInfoList>>::__destroy_vector::operator()[abi:ne200100](&v14);
  if (!v4)
  {
LABEL_31:
    v14 = this;
    std::allocate_shared[abi:ne200100]<TVolumeSyncThread,std::allocator<TVolumeSyncThread>,TFSVolumeInfo *,char const*&,0>();
  }

  v5 = v4[40];
  v6 = v4[41];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(this + 41);
  *(this + 40) = v5;
  *(this + 41) = v6;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    v5 = *(this + 40);
  }

  if (!v5)
  {
    v14 = this;
    std::allocate_shared[abi:ne200100]<TVolumeSyncThread,std::allocator<TVolumeSyncThread>,TFSVolumeInfo *,char const*&,0>();
  }

  v8 = v4[42];
  v9 = v4[43];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = *(this + 43);
  *(this + 42) = v8;
  *(this + 43) = v9;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    v8 = *(this + 42);
  }

  if (!v8)
  {
    v14 = this;
    std::allocate_shared[abi:ne200100]<TVolumeSyncThread,std::allocator<TVolumeSyncThread>,TFSVolumeInfo *,char const*&,0>();
  }

  v11 = v4[44];
  v12 = v4[45];
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = *(this + 45);
  *(this + 44) = v11;
  *(this + 45) = v12;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    v11 = *(this + 44);
  }

  if (!v11)
  {
    v14 = this;
    std::allocate_shared[abi:ne200100]<TFolderSizingThread,std::allocator<TFolderSizingThread>,TFSVolumeInfo *,0>();
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1E5681878(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 1);
        v4 -= 8;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t TNode::UpdateFPItemsIfNeeded@<X0>(FINode ***a1@<X0>, double *a2@<X1>, int a3@<W2>, unsigned int a4@<W3>, char a5@<W4>, void *a6@<X8>)
{
  v108 = *MEMORY[0x1E69E9840];
  std::vector<fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>::vector[abi:ne200100](a6, a1[1] - *a1);
  v92 = 0u;
  v93 = 0u;
  v94 = 1065353216;
  v89 = 0u;
  v90 = 0u;
  v91 = 1065353216;
  v7 = *a1;
  v85 = a1;
  if (*a1 == a1[1])
  {
    goto LABEL_76;
  }

  v8 = 0;
  v80 = *MEMORY[0x1E695E480];
  v79 = *MEMORY[0x1E695E498];
  do
  {
    v9 = TNodeFromFINode(*v7);
    v10 = TNode::InfoLock(v9);
    os_unfair_lock_lock(v10);
    v12 = *(v9 + 16);
    v11 = *(v9 + 24);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v10);
    v13 = TFSInfo::GetFPItem(v12);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    v14 = TNodeFromFINode(*v7);
    v15 = TNode::ParentLock(v14);
    os_unfair_lock_lock(v15);
    TNodePtr::TNodePtr(&location, *(v14 + 48));
    os_unfair_lock_unlock(v15);
    if (v13)
    {
LABEL_8:

LABEL_9:
      v16 = *a6 + 16 * v8;
      objc_storeStrong(v16, v13);
      v17 = *(v16 + 8);
      *(v16 + 8) = 0;

      if (a3)
      {
        v106.fString.fRef = *v7;
        v13 = v13;
        v107 = v13;
        v101 = 0;
        v102 = 0;
        location = 0;
        std::vector<std::pair<TNodePtr,FPItem * {__strong}>>::__init_with_size[abi:ne200100]<std::pair<TNodePtr,FPItem * {__strong}> const*,std::pair<TNodePtr,FPItem * {__strong}> const*>(&location, &v106, &v108, 1uLL);
        TNode::AttachFPItemsMetadata(&location, a4, a5);
        p_location = &location;
        std::vector<std::pair<TNodePtr,TNodePtr>>::__destroy_vector::operator()[abi:ne200100](&p_location);
      }

      goto LABEL_44;
    }

    if (!TNodeFromFINode(location) || !ICloudDriveFPFSEnabled())
    {
      goto LABEL_27;
    }

    v18 = TNodeFromFINode(*v7);
    v19 = TNode::InfoLock(v18);
    os_unfair_lock_lock(v19);
    v21 = *(v18 + 16);
    v20 = *(v18 + 24);
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v19);
    TFSInfo::Name(v21, cf1);
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    v22 = CFStringCreateWithBytesNoCopy(v80, "Documents", 9, 0x8000100u, 0, v79);
    v104[0] = v22;
    v106.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&v106, v22);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v104);
    LODWORD(v22) = CFEqual(cf1[0], v106.fString.fRef);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v106.fString.fRef);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(cf1);
    if (v22)
    {
      v23 = [FIPresentationNodeMap presentationNodeForKeyNode:*v7];
      v24 = static_objc_cast<NSString,objc_object * {__strong}>(v23);

      if (v24 && (v25 = [v24 asTNode], (v26 = v25) != 0) && (v27 = TNode::VirtualType(v25), v27 == 26))
      {
        v28 = TNode::InfoLock(v27);
        os_unfair_lock_lock(v28);
        v30 = *(v26 + 2);
        v29 = *(v26 + 3);
        if (v29)
        {
          atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        os_unfair_lock_unlock(v28);
        v13 = TFSInfo::GetFPItem(v30);
        if (v29)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v29);
        }

        if (v13)
        {
          goto LABEL_8;
        }
      }

      else
      {
      }

      v46 = TNodeFromFINode(*v7);
      v47 = TNode::GetFIProvider(v46);
      v78 = v47;
      v48 = TNodeFromFINode(location);
      v49 = TNode::InfoLock(v48);
      os_unfair_lock_lock(v49);
      v51 = *(v48 + 16);
      v50 = *(v48 + 24);
      if (v50)
      {
        atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v49);
      v52 = TFSInfo::GetFPItem(v51);
      if (v50)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v50);
      }

      if ([v52 isContainer] && (v53 = objc_msgSend(v47, "isiCloudDriveProvider"), v53))
      {
        v54 = TCachedAppLibraryCollections::Singleton(v53);
        v55 = [v47 identifier];
        v104[0] = &stru_1F5F42870;
        CFRetain(&stru_1F5F42870);
        TString::SetStringRefAsImmutable(v104, v55);

        v76 = TCachedAppLibraryCollections::CachedCollection(v54, v104, 0);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v104);

        *cf1 = 0u;
        v96 = 0u;
        v97 = 0u;
        v98 = 0u;
        obj = [v76 items];
        v56 = [obj countByEnumeratingWithState:cf1 objects:v104 count:16];
        if (v56)
        {
          v57 = *v96;
LABEL_55:
          v58 = 0;
          while (1)
          {
            if (*v96 != v57)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(cf1[1] + v58);
            v59 = [v13 fp_appContainerBundleIdentifier];
            v60 = [v52 fp_appContainerBundleIdentifier];
            v61 = [v59 isEqualToString:v60];

            if (v61)
            {
              break;
            }

            if (v56 == ++v58)
            {
              v56 = [obj countByEnumeratingWithState:cf1 objects:v104 count:16];
              if (v56)
              {
                goto LABEL_55;
              }

              goto LABEL_61;
            }
          }
        }

        else
        {
LABEL_61:
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }

      if (v13)
      {
        goto LABEL_9;
      }
    }

    else
    {
LABEL_27:
    }

    v31 = TNodeFromFINode(*v7);
    v32 = TNode::VirtualType(v31);
    v33 = TNodeFromFINode(*v7);
    v34 = TNode::InfoLock(v33);
    os_unfair_lock_lock(v34);
    v35 = *(v33 + 16);
    v36 = *(v33 + 24);
    if (v36)
    {
      atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v34);
    os_unfair_lock_lock((v35 + 104));
    v37 = *(v35 + 80);
    if (v37 && (os_unfair_lock_lock((v37 + 72)), v38 = *(v37 + 76), os_unfair_lock_unlock((v37 + 72)), v38 == 1))
    {
      v39 = *(v37 + 24);
    }

    else
    {
      v39 = 0;
    }

    os_unfair_lock_unlock((v35 + 104));
    p_location = [v39 domain];

    if (v36)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v36);
    }

    if (v32 == 28 && p_location)
    {
      objc_initWeak(&location, *v7);
      v101 = v8;
      v106.fString.fRef = &p_location;
      v40 = std::__hash_table<std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>,std::__unordered_map_hasher<FPProviderDomain * {__strong},std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>,std::hash<FPProviderDomain * {__strong}>,std::equal_to<FPProviderDomain * {__strong}>,true>,std::__unordered_map_equal<FPProviderDomain * {__strong},std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>,std::equal_to<FPProviderDomain * {__strong}>,std::hash<FPProviderDomain * {__strong}>,true>,std::allocator<std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>>>::__emplace_unique_key_args<FPProviderDomain * {__strong},std::piecewise_construct_t const&,std::tuple<FPProviderDomain * const {__strong}&>,std::tuple<>>(&v92, &p_location);
      std::pair<FINode * {__weak},unsigned long>::operator=[abi:ne200100]((v40 + 3), &location);
      objc_destroyWeak(&location);
    }

    else
    {
      v41 = TNodeFromFINode(*v7);
      location = 0;
      TNode::CopyURL(v41, &location);
      v99 = location;
      if (location)
      {
        objc_initWeak(&location, *v7);
        v101 = v8;
        v106.fString.fRef = &v99;
        v42 = std::__hash_table<std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>,std::__unordered_map_hasher<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>,std::hash<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,std::equal_to<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,true>,std::__unordered_map_equal<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>,std::equal_to<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,std::hash<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,true>,std::allocator<std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>>>::__emplace_unique_key_args<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::piecewise_construct_t const&,std::tuple<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>> const&>,std::tuple<>>(&v89, &v99);
        std::pair<FINode * {__weak},unsigned long>::operator=[abi:ne200100]((v42 + 3), &location);
        objc_destroyWeak(&location);
      }

      else
      {
        v43 = *a6 + 16 * v8;
        v44 = *v43;
        *v43 = 0;

        v45 = *(v43 + 8);
        *(v43 + 8) = 0;
      }

      TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v99);
    }

    v13 = 0;
LABEL_44:

    ++v7;
    ++v8;
  }

  while (v7 != v85[1]);
  v62 = *(&v90 + 1) + *(&v93 + 1);
  if (*(&v90 + 1) + *(&v93 + 1))
  {
    if (*(&v93 + 1))
    {
      v63 = *a2;
      v64 = objc_alloc(MEMORY[0x1E695DF70]);
      v65 = [v64 initWithCapacity:*(&v93 + 1)];
      v66 = v93;
      for (i = v65; v66; v66 = *v66)
      {
        v68 = v66[2];
        [i addObject:v68];
      }

      *cf1 = v63 / v62 * *(&v93 + 1);
      std::unordered_map<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>::unordered_map(v88, &v92);
      v88[40] = a3;
      v88[41] = a4;
      v88[42] = a5;
      v105 = 0;
      operator new();
    }

    if (*(&v90 + 1))
    {
      v69 = objc_alloc(MEMORY[0x1E695DF70]);
      v70 = [v69 initWithCapacity:*(&v90 + 1)];
      v71 = v90;
      for (j = v70; v71; v71 = *v71)
      {
        v73 = v71[2];
        [j addObject:v73];
      }

      std::unordered_map<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>::unordered_map(v87, &v89);
      v87[40] = a3;
      v87[41] = a4;
      v87[42] = a5;
      v105 = 0;
      operator new();
    }
  }

LABEL_76:
  std::__hash_table<std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>,std::__unordered_map_hasher<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>,std::hash<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,std::equal_to<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,true>,std::__unordered_map_equal<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>,std::equal_to<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,std::hash<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,true>,std::allocator<std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>>>::~__hash_table(&v89);
  result = std::__hash_table<std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>,std::__unordered_map_hasher<FPProviderDomain * {__strong},std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>,std::hash<FPProviderDomain * {__strong}>,std::equal_to<FPProviderDomain * {__strong}>,true>,std::__unordered_map_equal<FPProviderDomain * {__strong},std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>,std::equal_to<FPProviderDomain * {__strong}>,std::hash<FPProviderDomain * {__strong}>,true>,std::allocator<std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>>>::~__hash_table(&v92);
  v75 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E5682574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, id location)
{
  std::__hash_table<std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>,std::__unordered_map_hasher<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>,std::hash<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,std::equal_to<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,true>,std::__unordered_map_equal<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>,std::equal_to<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,std::hash<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,true>,std::allocator<std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>>>::~__hash_table(&a31);
  std::__hash_table<std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>,std::__unordered_map_hasher<FPProviderDomain * {__strong},std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>,std::hash<FPProviderDomain * {__strong}>,std::equal_to<FPProviderDomain * {__strong}>,true>,std::__unordered_map_equal<FPProviderDomain * {__strong},std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>,std::equal_to<FPProviderDomain * {__strong}>,std::hash<FPProviderDomain * {__strong}>,true>,std::allocator<std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>>>::~__hash_table(&a37);
  a37 = a18;
  std::vector<std::pair<TNodePtr,TNodePtr>>::__destroy_vector::operator()[abi:ne200100](&a37);
  _Unwind_Resume(a1);
}

void *fstd::optional_err<FPItem * {__strong},NSError * {__strong}>::optional_err(void *a1)
{
  *a1 = 0;
  a1[1] = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-1 userInfo:0];
  return a1;
}

int *TNode::ParentLock(TNode *this)
{
  {
    TNode::ParentLock();
  }

  return &TNode::ParentLock(void)::sParentLock;
}

uint64_t TNode::VirtualType(TNode *this)
{
  v2 = TNode::InfoLock(this);
  os_unfair_lock_lock(v2);
  v4 = *(this + 2);
  v3 = *(this + 3);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    os_unfair_lock_unlock(v2);
    v5 = *(v4 + 120);
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    os_unfair_lock_unlock(v2);
    return *(v4 + 120);
  }

  return v5;
}

void *_ZNSt3__14pairIK4TRefIPK7__CFURL20TRetainReleasePolicyIS4_EENS0_IU6__weakP6FINodemEEEC2B8ne200100IJRS8_EJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSH_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSQ_IJXspT2_EEEE(void *a1, const void ***a2)
{
  v3 = **a2;
  *a1 = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  a1[1] = 0;
  a1[2] = 0;
  return a1;
}

uint64_t TFSInfo::CopyPathToCBuffer(TFSInfo *this, char *a2, CFIndex a3)
{
  TFSInfo::GetPath(this, &cf);
  v5 = v11;
  if (!v11)
  {
    v6 = cf;
    if (cf)
    {
      v7 = CFRetain(cf);
      v6 = static_cf_cast<__CFString const*,void const*>(v7);
      if (v6)
      {
        v8 = CFAutorelease(v6);
        v6 = static_cf_cast<__CFString const*,void const*>(v8);
      }
    }

    if (CFStringGetCString(v6, a2, a3, 0x8000100u))
    {
      v5 = v11;
    }

    else
    {
      v5 = 4294959236;
    }
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
  return v5;
}

void TCFURLInfo::FileSystemRepresentation(TCFURLInfo *this@<X0>, const __CFURL *a2@<X1>, TString *a3@<X8>)
{
  v3 = a2;
  v12 = *MEMORY[0x1E69E9840];
  v6 = _CFURLIsFileURL();
  if (v6)
  {
    v7 = CFURLGetFileSystemRepresentation(this, v3, buffer, 1024);
    if (v7)
    {
      TString::TString(a3, buffer);
    }

    else
    {
      v9 = TString::KEmptyString(v7);
      a3->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(a3, *v9);
    }
  }

  else
  {
    v8 = TString::KEmptyString(v6);
    a3->fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(a3, *v8);
  }

  v10 = *MEMORY[0x1E69E9840];
}

const void **TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

TString *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<TString>,TString const*,TString const*,TString*>(uint64_t a1, TString **a2, TString **a3, TString *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      a4->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(a4++, *v6++);
      v7 -= 8;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_1E5682C5C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 8);
    do
    {
      v4 = TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v4) - 1;
      v2 += 8;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::optional<std::vector<TString>>::operator=[abi:ne200100]<std::vector<TString>,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    std::vector<TString>::__vdeallocate(a1);
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a1 + 24) = 1;
  }

  return a1;
}

const void **TCFURLInfo::StringProperty@<X0>(TCFURLInfo *this@<X0>, const __CFString *a2@<X1>, TString *a3@<X8>)
{
  propertyValueTypeRefPtr = 0;
  if (this)
  {
    CFURLCopyResourcePropertyForKey(this, a2, &propertyValueTypeRefPtr, 0);
    v5 = propertyValueTypeRefPtr;
  }

  else
  {
    v5 = 0;
  }

  a3->fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(a3, v5);
  return TAutoRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TAutoRef(&propertyValueTypeRefPtr);
}

void sub_1E5682D7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v2);
  TAutoRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TAutoRef(va);
  _Unwind_Resume(a1);
}

void std::allocator<std::shared_ptr<TCFURLInfo>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

__CFString *SanitizedPath(const TString *a1)
{
  if (CFStringGetLength(a1->fString.fRef) && IsRedactionEnabled())
  {
    v2 = [(__CFString *)a1->fString.fRef pathComponents];
    v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "count")}];
    IDContainerIteratorAdaptor<NSArray<NSString *>>::NSForwardIterator<NSArray<NSString *>>::NSForwardIterator(&obj, v2);
    IDContainerIteratorAdaptor<NSArray<NSString *>>::IDContainerIteratorAdaptor(v11, -1, v2);
    v4 = v3;
    while (obj != v11[0] || v17 != v11[16])
    {
      v5 = *(v13[1] + 8 * v16);
      v18.fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(&v18, v5);

      v6 = SanitizedStr(&v18);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v18.fString.fRef);

      [v4 addObject:v6];
      v7 = v16;
      if (v16 >= v15 - 1)
      {
        v8 = [obj countByEnumeratingWithState:v13 objects:v14 count:4];
        v7 = -1;
        v15 = v8;
        v16 = -1;
      }

      if (v14[4] != *v13[2])
      {
        objc_enumerationMutation(obj);
        v7 = v16;
      }

      v16 = v7 + 1;
      ++v17;
    }

    v9 = [MEMORY[0x1E696AEC0] pathWithComponents:v4];
  }

  else
  {
    v9 = a1->fString.fRef;
  }

  return v9;
}

BOOL IsRedactionEnabled(void)
{
  {
    IsRedactionEnabled(void)::isAppleInternal = os_variant_has_internal_ui();
  }

  if (IsRedactionEnabled(void)::isAppleInternal != 1)
  {
    return 1;
  }

  if (TCFURLInfo::gDSHelperRunning)
  {
    return 0;
  }

  return PrefsBool(@"EnableRedactionOnInternal", 0);
}

void std::allocator<TNodePtr>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void TChildrenList::AddNewChild(TChildrenList *this@<X0>, BOOL *a2@<X2>, void *a3@<X8>)
{
  memset(v11, 0, sizeof(v11));
  memset(v10, 0, sizeof(v10));
  memset(v9, 0, sizeof(v9));
  std::vector<TNodePtr>::vector[abi:ne200100](v8, 1uLL);
  *a2 = TChildrenList::AddNewChildren(this, v8, 1, v11, v10, v9);
  v12 = v8;
  std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](&v12);
  if (*a2)
  {
    v7 = v11;
  }

  else
  {
    v7 = v9;
  }

  *a3 = **v7;
  v8[0] = v9;
  std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](v8);
  v9[0] = v10;
  std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](v9);
  v10[0] = v11;
  std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](v10);
}

void sub_1E56832E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void ****a10, uint64_t a11, uint64_t a12, void ***a13, uint64_t a14, uint64_t a15, void **a16, uint64_t a17, uint64_t a18, char a19)
{
  *(v20 - 72) = v19;
  std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100]((v20 - 72));
  a10 = &a13;
  std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](&a10);
  a13 = &a16;
  std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](&a13);
  a16 = &a19;
  std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<TNodePtr>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TNodePtr>,TNodePtr*>(uint64_t a1, void **a2, uint64_t *a3, void *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = TNodePtr::TNodePtr(a4, v7++);
      a4 = v8 + 1;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      v9 = *v6++;
    }
  }
}

void **std::vector<TNodePtr>::__insert_with_size[abi:ne200100]<std::__wrap_iter<TNodePtr*>,std::__wrap_iter<TNodePtr*>>(uint64_t *a1, uint64_t a2, void **a3, void **a4, uint64_t a5)
{
  v5 = a2;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = a3;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 3);
    if (v12 >> 61)
    {
      std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
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

    v31[4] = a1;
    if (v15)
    {
      std::allocator<TNodePtr>::allocate_at_least[abi:ne200100](a1, v15);
    }

    v25 = (8 * (v13 >> 3));
    v31[0] = 0;
    v31[1] = v25;
    v31[3] = 0;
    v26 = 8 * a5;
    v27 = &v25[a5];
    do
    {
      v28 = *v7++;
      *v25++ = v28;
      v26 -= 8;
    }

    while (v26);
    v31[2] = v27;
    v5 = std::vector<TNodePtr>::__swap_out_circular_buffer(a1, v31, v5);
    std::__split_buffer<TNodePtr>::~__split_buffer(v31);
    return v5;
  }

  v16 = v10 - a2;
  v17 = (v10 - a2) >> 3;
  if (v17 >= a5)
  {
    std::vector<TNodePtr>::__move_range(a1, a2, a1[1], a2 + 8 * a5);
    v24 = &v7[a5];
    v23 = v7;
    goto LABEL_18;
  }

  v19 = a1[1];
  v30 = (a3 + v16);
  if ((a3 + v16) != a4)
  {
    v19 = a1[1];
    v20 = (a3 + v16);
    v21 = v19;
    do
    {
      v22 = *v20++;
      *v21++ = v22;
      ++v19;
    }

    while (v20 != a4);
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    std::vector<TNodePtr>::__move_range(a1, v5, v10, &v5[a5]);
    v23 = v7;
    v24 = v30;
LABEL_18:
    std::__copy_impl::operator()[abi:ne200100]<TNodePtr *,TNodePtr *,TNodePtr *>(v31, v23, v24, v5);
  }

  return v5;
}

void sub_1E56835B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<TNodePtr>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void TNode::UpdateFPItemIfNeeded(id *a1@<X0>, double *a2@<X1>, int a3@<W2>, unsigned int a4@<W3>, char a5@<W4>, void *a6@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  v18 = *a1;
  memset(v15, 0, sizeof(v15));
  std::vector<TNodePtr>::__init_with_size[abi:ne200100]<TNodePtr const*,TNodePtr const*>(v15, &v18, &v19, 1uLL);
  TNode::UpdateFPItemsIfNeeded(v15, a2, a3, a4, a5, v16);
  v17 = v15;
  std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](&v17);

  v11 = v16[0];
  if (v16[0] == v16[1])
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v12 = *v16[0];
    v13 = *(v11 + 8);
  }

  *a6 = v12;
  a6[1] = v13;
  v15[0] = v16;
  std::vector<std::pair<TNodePtr,TNodePtr>>::__destroy_vector::operator()[abi:ne200100](v15);
  v14 = *MEMORY[0x1E69E9840];
}

void sub_1E56836DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, id a17)
{
  std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](&a16);

  _Unwind_Resume(a1);
}

uint64_t std::vector<TNodePtr>::__init_with_size[abi:ne200100]<TNodePtr const*,TNodePtr const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<TNodePtr>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void *std::vector<fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::allocator<std::pair<TNodePtr,TNodePtr>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::allocator<std::pair<TNodePtr,TNodePtr>>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
}

void TNode::RootFPItemsForDomainsWithTimeout(void *a1)
{
  v1 = *MEMORY[0x1E69E9840];
  a1;
  operator new();
}

void sub_1E5683F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, std::__shared_weak_count *a20, std::__shared_weak_count *a21, std::mutex *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  std::mutex::unlock(a22);

  TNode::RootFPItemsForDomainsWithTimeout(NSArray<FPProviderDomain *> *,std::chrono::duration<double,std::ratio<1l,1l>> const&,std::function<void ()(FPProviderDomain *,FPItem *,NSError *)> const&)::$_0::~$_0(&a49);
  std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  std::__shared_weak_count::__release_shared[abi:ne200100](a21);

  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<NSString * {__strong},FIProviderDomain * {__strong}>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},FIProviderDomain * {__strong}>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},FIProviderDomain * {__strong}>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},FIProviderDomain * {__strong}>>>::__hash_table(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

const void **TAutoRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>::~TAutoRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void *static_cf_cast<__CFString const*,void const*>(const void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == CFNullGetTypeID())
    {
      return 0;
    }

    else
    {
      return v1;
    }
  }

  return result;
}

void std::vector<TString>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

const void **TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

CFTypeRef ROSPVolumeID::BootVolumeID@<X0>(void *a1@<X8>)
{
  {
    ROSPVolumeID::BootVolumeID(void)::$_0::operator()();
  }

  result = ROSPVolumeID::BootVolumeID(void)::sBootDeviceID;
  *a1 = ROSPVolumeID::BootVolumeID(void)::sBootDeviceID;
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

void TNode::ParentLock()
{
  {
    TNode::ParentLock(void)::sParentLock = 0;
  }
}

uint64_t TNode::CopyURL(TNode *this, const __CFURL **a2)
{
  *a2 = 0;
  v14 = &stru_1F5F42870;
  v4 = CFRetain(&stru_1F5F42870);
  v5 = TNode::InfoLock(v4);
  os_unfair_lock_lock(v5);
  v6 = *(this + 3);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    os_unfair_lock_unlock(v5);
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    os_unfair_lock_unlock(v5);
  }

  v8 = TNode::InfoLock(v7);
  os_unfair_lock_lock(v8);
  v10 = *(this + 2);
  v9 = *(this + 3);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v8);
  URL = TFSInfo::MakeURL(v10);
  *a2 = URL;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    URL = *a2;
  }

  if (URL)
  {
    _CFURLCacheSetAutoFlushingEnabled();
    if (*a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = 4294959236;
    }
  }

  else
  {
    v12 = 4294959236;
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v14);
  return v12;
}

void sub_1E5684454(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

const void *TFSInfo::MakeURL(TFSInfo *this)
{
  os_unfair_lock_lock(this + 27);
  v2 = *(this + 2);
  cf = v2;
  if (v2)
  {
    CFRetain(v2);
    os_unfair_lock_unlock(this + 27);
  }

  else
  {
    os_unfair_lock_unlock(this + 27);
    if (*(this + 120) == 28)
    {
      os_unfair_lock_lock(this + 26);
      v3 = *(this + 10);
      if (v3)
      {
        os_unfair_lock_lock(v3 + 18);
        v4 = v3[76];
        os_unfair_lock_unlock(v3 + 18);
        if (v4 == 1)
        {
          v3 = *(v3 + 3);
        }

        else
        {
          v3 = 0;
        }
      }

      os_unfair_lock_unlock(this + 26);
      if (v3)
      {
        if ([v3 isUsingFPFS])
        {
          v5 = [v3 rootURL];
          v6 = static_objc_cast<NSString,objc_object * {__strong}>(v5);

          v7 = v6;
          v2 = static_cf_cast<__CFString const*,void const*>(v7);
        }

        else
        {
          v2 = cf;
        }
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v2 = 0;
    }
  }

  cf = 0;
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&cf);
  return v2;
}

void sub_1E56845B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned long long,TRecordProgress>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRecordProgress>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>,std::__unordered_map_hasher<FPProviderDomain * {__strong},std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>,std::hash<FPProviderDomain * {__strong}>,std::equal_to<FPProviderDomain * {__strong}>,true>,std::__unordered_map_equal<FPProviderDomain * {__strong},std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>,std::equal_to<FPProviderDomain * {__strong}>,std::hash<FPProviderDomain * {__strong}>,true>,std::allocator<std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>>>::__emplace_unique_key_args<FPProviderDomain * {__strong},std::pair<FPProviderDomain * const {__strong},std::pair<FINode * {__weak},unsigned long>> const&>(a1, i + 2);
  }

  return a1;
}

void sub_1E56846F8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::pair<FINode * {__weak},unsigned long>::operator=[abi:ne200100](uint64_t a1, id *location)
{
  WeakRetained = objc_loadWeakRetained(location);
  objc_storeWeak(a1, WeakRetained);

  *(a1 + 8) = location[1];
  return a1;
}

void TNode::RootFPItemsForDomainsWithTimeout(NSArray<FPProviderDomain *> *,std::chrono::duration<double,std::ratio<1l,1l>> const&,std::function<void ()(FPProviderDomain *,FPItem *,NSError *)> const&)::$_0::operator()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  IDContainerIteratorAdaptor<NSArray<FPProviderDomain *>>::NSForwardIterator<NSArray<FPProviderDomain *>>::NSForwardIterator(v15, *a1);
  IDContainerIteratorAdaptor<NSArray<FPProviderDomain *>>::IDContainerIteratorAdaptor(v14, -1, *a1);
  v6 = algorithm_extras::distance_or_zero<IDContainerIteratorAdaptor<NSArray<FPProviderDomain *>>>(v15, v14);

  type_traits_extras::CopyAsHelper<std::vector<fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>>::MakeWithCapacity(v6, &v12);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  IDContainerIteratorAdaptor<NSArray<FPProviderDomain *>>::NSForwardIterator<NSArray<FPProviderDomain *>>::NSForwardIterator(&v17, *a1);
  IDContainerIteratorAdaptor<NSArray<FPProviderDomain *>>::IDContainerIteratorAdaptor(v16, -1, *a1);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  while (v17 != v16[0] || v22 != v16[16])
  {
    v7 = *(v18[1] + 8 * v21);
    v25[0] = v7;
    v8 = std::__hash_table<std::__hash_value_type<FPProviderDomain * {__strong},fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>,std::__unordered_map_hasher<FPProviderDomain * {__strong},std::__hash_value_type<FPProviderDomain * {__strong},fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>,std::hash<FPProviderDomain * {__strong}>,std::equal_to<FPProviderDomain * {__strong}>,true>,std::__unordered_map_equal<FPProviderDomain * {__strong},std::__hash_value_type<FPProviderDomain * {__strong},fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>,std::equal_to<FPProviderDomain * {__strong}>,std::hash<FPProviderDomain * {__strong}>,true>,std::allocator<std::__hash_value_type<FPProviderDomain * {__strong},fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>>>::find<FPProviderDomain * {__strong}>(v5, v25);
    if (v8)
    {
      v25[2] = v25;
      v9 = std::__hash_table<std::__hash_value_type<FPProviderDomain * {__strong},fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>,std::__unordered_map_hasher<FPProviderDomain * {__strong},std::__hash_value_type<FPProviderDomain * {__strong},fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>,std::hash<FPProviderDomain * {__strong}>,std::equal_to<FPProviderDomain * {__strong}>,true>,std::__unordered_map_equal<FPProviderDomain * {__strong},std::__hash_value_type<FPProviderDomain * {__strong},fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>,std::equal_to<FPProviderDomain * {__strong}>,std::hash<FPProviderDomain * {__strong}>,true>,std::allocator<std::__hash_value_type<FPProviderDomain * {__strong},fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>>>::__emplace_unique_key_args<FPProviderDomain * {__strong},std::piecewise_construct_t const&,std::tuple<FPProviderDomain * const {__strong}&>,std::tuple<>>(v5, v25);
      v23 = v9[3];
      v8 = v9[4];
    }

    else
    {
      v23 = 0;
    }

    v24 = v8;

    std::vector<fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>::push_back[abi:ne200100](&v12, &v23);
    v10 = v21;
    if (v21 >= v20 - 1)
    {
      v11 = [v17 countByEnumeratingWithState:v18 objects:v19 count:4];
      v10 = -1;
      v20 = v11;
      v21 = -1;
    }

    if (v19[4] != *v18[2])
    {
      objc_enumerationMutation(v17);
      v10 = v21;
    }

    v21 = v10 + 1;
    ++v22;
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
  }

  *a2 = v12;
  *(a2 + 16) = v13;
  v13 = 0;
  v12 = 0uLL;
  v17 = &v12;
  std::vector<std::pair<TNodePtr,TNodePtr>>::__destroy_vector::operator()[abi:ne200100](&v17);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1E56849D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  *(v10 - 120) = &a9;
  std::vector<std::pair<TNodePtr,TNodePtr>>::__destroy_vector::operator()[abi:ne200100]((v10 - 120));
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  _Unwind_Resume(a1);
}

uint64_t IDContainerIteratorAdaptor<NSArray<FPProviderDomain *>>::NSForwardIterator<NSArray<FPProviderDomain *>>::NSForwardIterator(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  *a1 = v3;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 120) = -1;
  *(a1 + 104) = 0;
  *(a1 + 112) = -1;
  *(a1 + 128) = -1;
  if (v3 && [v3 count])
  {
    *(a1 + 112) = [*a1 countByEnumeratingWithState:a1 + 8 objects:a1 + 72 count:4];
    *(a1 + 104) = **(a1 + 24);
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
  }

  else
  {
    *(a1 + 128) = 0;
  }

  return a1;
}

uint64_t IDContainerIteratorAdaptor<NSArray<FPProviderDomain *>>::IDContainerIteratorAdaptor(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  *a1 = v4;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = -1;
  *(a1 + 120) = -1;
  *(a1 + 128) = -1;
  *(a1 + 128) = [v4 count];

  return a1;
}

void *std::vector<fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::allocator<std::pair<TNodePtr,TNodePtr>>::allocate_at_least[abi:ne200100](result, a2);
    }

    std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1E5684C78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::pair<TNodePtr,TNodePtr>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<TNodePtr,TNodePtr>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<TNodePtr,TNodePtr>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<FPProviderDomain * {__strong},fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>,std::__unordered_map_hasher<FPProviderDomain * {__strong},std::__hash_value_type<FPProviderDomain * {__strong},fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>,std::hash<FPProviderDomain * {__strong}>,std::equal_to<FPProviderDomain * {__strong}>,true>,std::__unordered_map_equal<FPProviderDomain * {__strong},std::__hash_value_type<FPProviderDomain * {__strong},fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>,std::equal_to<FPProviderDomain * {__strong}>,std::hash<FPProviderDomain * {__strong}>,true>,std::allocator<std::__hash_value_type<FPProviderDomain * {__strong},fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<FPProviderDomain * {__strong},fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>,std::__unordered_map_hasher<FPProviderDomain * {__strong},std::__hash_value_type<FPProviderDomain * {__strong},fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>,std::hash<FPProviderDomain * {__strong}>,std::equal_to<FPProviderDomain * {__strong}>,true>,std::__unordered_map_equal<FPProviderDomain * {__strong},std::__hash_value_type<FPProviderDomain * {__strong},fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>,std::equal_to<FPProviderDomain * {__strong}>,std::hash<FPProviderDomain * {__strong}>,true>,std::allocator<std::__hash_value_type<FPProviderDomain * {__strong},fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(FPProviderDomain *,FPItem *,NSError *)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__hash_table<std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>,std::__unordered_map_hasher<FPProviderDomain * {__strong},std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>,std::hash<FPProviderDomain * {__strong}>,std::equal_to<FPProviderDomain * {__strong}>,true>,std::__unordered_map_equal<FPProviderDomain * {__strong},std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>,std::equal_to<FPProviderDomain * {__strong}>,std::hash<FPProviderDomain * {__strong}>,true>,std::allocator<std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>,std::__unordered_map_hasher<FPProviderDomain * {__strong},std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>,std::hash<FPProviderDomain * {__strong}>,std::equal_to<FPProviderDomain * {__strong}>,true>,std::__unordered_map_equal<FPProviderDomain * {__strong},std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>,std::equal_to<FPProviderDomain * {__strong}>,std::hash<FPProviderDomain * {__strong}>,true>,std::allocator<std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__function::__func<TNode::UpdateFPItemsIfNeeded(std::vector<TNodePtr> const&,std::chrono::duration<double,std::ratio<1l,1l>> const&,BOOL,BOOL,BOOL)::$_1,std::allocator<TNode::UpdateFPItemsIfNeeded(std::vector<TNodePtr> const&,std::chrono::duration<double,std::ratio<1l,1l>> const&,BOOL,BOOL,BOOL)::$_1>,void ()(FPProviderDomain *,FPItem *,NSError *)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>,std::__unordered_map_hasher<FPProviderDomain * {__strong},std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>,std::hash<FPProviderDomain * {__strong}>,std::equal_to<FPProviderDomain * {__strong}>,true>,std::__unordered_map_equal<FPProviderDomain * {__strong},std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>,std::equal_to<FPProviderDomain * {__strong}>,std::hash<FPProviderDomain * {__strong}>,true>,std::allocator<std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

void std::__hash_table<std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>,std::__unordered_map_hasher<FPProviderDomain * {__strong},std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>,std::hash<FPProviderDomain * {__strong}>,std::equal_to<FPProviderDomain * {__strong}>,true>,std::__unordered_map_equal<FPProviderDomain * {__strong},std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>,std::equal_to<FPProviderDomain * {__strong}>,std::hash<FPProviderDomain * {__strong}>,true>,std::allocator<std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>>>::__deallocate_node(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      objc_destroyWeak(v2 + 3);

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t IDContainerIteratorAdaptor<NSMutableArray<FPProviderDomain *>>::IDContainerIteratorAdaptor(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  *a1 = v4;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = -1;
  *(a1 + 120) = -1;
  *(a1 + 128) = -1;
  *(a1 + 128) = [v4 count];

  return a1;
}

void sub_1E56854B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::mutex *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, std::__shared_weak_count *a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  std::mutex::unlock(a17);
  TNode::FPItemsFromURLsWithTimeout(__CFArray const*,std::chrono::duration<double,std::ratio<1l,1l>>,std::function<void ()(__CFURL const*,FPItem *,NSError *)> const&)::$_1::~$_1(&a27);
  TNode::FPItemsFromURLsWithTimeout(__CFArray const*,std::chrono::duration<double,std::ratio<1l,1l>>,std::function<void ()(__CFURL const*,FPItem *,NSError *)> const&)::$_1::~$_1(&a31);
  if (a47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a47);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  _Unwind_Resume(a1);
}

uint64_t **std::__hash_table<std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::tuple<std::optional<FPItem * {__strong}>,std::optional<NSError * {__strong}>,std::shared_ptr<std::function<void ()(__CFURL const*,FPItem *,NSError *)>>>>,std::__unordered_map_hasher<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::tuple<std::optional<FPItem * {__strong}>,std::optional<NSError * {__strong}>,std::shared_ptr<std::function<void ()(__CFURL const*,FPItem *,NSError *)>>>>,std::hash<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,std::equal_to<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,true>,std::__unordered_map_equal<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::tuple<std::optional<FPItem * {__strong}>,std::optional<NSError * {__strong}>,std::shared_ptr<std::function<void ()(__CFURL const*,FPItem *,NSError *)>>>>,std::equal_to<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,std::hash<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,true>,std::allocator<std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::tuple<std::optional<FPItem * {__strong}>,std::optional<NSError * {__strong}>,std::shared_ptr<std::function<void ()(__CFURL const*,FPItem *,NSError *)>>>>>>::__emplace_unique_key_args<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::piecewise_construct_t const&,std::tuple<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>&&>,std::tuple<>>(void *a1, CFTypeRef *a2)
{
  v4 = CFHash(*a2);
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
    operator new();
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

  if ((IsEqual(v11[2], *a2) & 1) == 0)
  {
    goto LABEL_17;
  }

  return v11;
}

uint64_t std::optional<FINode * {__strong}>::operator=[abi:ne200100]<FINode * {__strong}&,void>(uint64_t a1, id *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  if (v3 == 1)
  {
    v5 = *a1;
    *a1 = v4;
  }

  else
  {
    *a1 = v4;
    *(a1 + 8) = 1;
  }

  return a1;
}

uint64_t IDContainerIteratorAdaptor<NSArray>::NSForwardIterator<NSArray>::NSForwardIterator(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  *a1 = v3;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 120) = -1;
  *(a1 + 104) = 0;
  *(a1 + 112) = -1;
  *(a1 + 128) = -1;
  if (v3 && [v3 count])
  {
    *(a1 + 112) = [*a1 countByEnumeratingWithState:a1 + 8 objects:a1 + 72 count:4];
    *(a1 + 104) = **(a1 + 24);
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
  }

  else
  {
    *(a1 + 128) = 0;
  }

  return a1;
}

uint64_t IDContainerIteratorAdaptor<NSArray>::IDContainerIteratorAdaptor(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  *a1 = v4;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = -1;
  *(a1 + 120) = -1;
  *(a1 + 128) = -1;
  *(a1 + 128) = [v4 count];

  return a1;
}

uint64_t algorithm_extras::distance_or_zero<IDContainerIteratorAdaptor<NSArray>>(uint64_t a1, uint64_t a2)
{
  IDContainerIteratorAdaptor<NSArray>::NSForwardIterator<NSArray>::NSForwardIterator(v6, a1);
  IDContainerIteratorAdaptor<NSArray>::NSForwardIterator<NSArray>::NSForwardIterator(v5, a2);
  v3 = std::distance[abi:ne200100]<IDContainerIteratorAdaptor<NSArray>>(v6, v5);

  return v3;
}

uint64_t std::__split_buffer<std::pair<TNodePtr,TNodePtr>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::pair<TNodePtr,TNodePtr>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>,fstd::optional_err<FPItem * {__strong},NSError * {__strong}>*>(uint64_t a1, void **a2, void **a3, _OWORD *a4)
{
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v5 = *v4;
      *v4 = 0;
      v4[1] = 0;
      v4 += 2;
      *a4++ = v5;
    }

    while (v4 != a3);
    v10 = a4;
  }

  v8 = 1;
  std::__allocator_destroy[abi:ne200100]<std::allocator<std::pair<TNodePtr,TNodePtr>>,std::pair<TNodePtr,TNodePtr>*,std::pair<TNodePtr,TNodePtr>*>(a1, a2, a3);
  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>,fstd::optional_err<FPItem * {__strong},NSError * {__strong}>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>,fstd::optional_err<FPItem * {__strong},NSError * {__strong}>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<std::pair<TNodePtr,TNodePtr>>,std::reverse_iterator<std::pair<TNodePtr,TNodePtr>*>,std::reverse_iterator<std::pair<TNodePtr,TNodePtr>*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

uint64_t **std::__hash_table<std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>,std::__unordered_map_hasher<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>,std::hash<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,std::equal_to<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,true>,std::__unordered_map_equal<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>,std::equal_to<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,std::hash<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,true>,std::allocator<std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>>>::__emplace_unique_key_args<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::piecewise_construct_t const&,std::tuple<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>&&>,std::tuple<>>(void *a1, CFTypeRef *a2)
{
  v4 = CFHash(*a2);
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
    operator new();
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

  if ((IsEqual(v11[2], *a2) & 1) == 0)
  {
    goto LABEL_17;
  }

  return v11;
}

uint64_t std::__hash_table<std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::tuple<std::optional<FPItem * {__strong}>,std::optional<NSError * {__strong}>,std::shared_ptr<std::function<void ()(__CFURL const*,FPItem *,NSError *)>>>>,std::__unordered_map_hasher<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::tuple<std::optional<FPItem * {__strong}>,std::optional<NSError * {__strong}>,std::shared_ptr<std::function<void ()(__CFURL const*,FPItem *,NSError *)>>>>,std::hash<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,std::equal_to<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,true>,std::__unordered_map_equal<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::tuple<std::optional<FPItem * {__strong}>,std::optional<NSError * {__strong}>,std::shared_ptr<std::function<void ()(__CFURL const*,FPItem *,NSError *)>>>>,std::equal_to<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,std::hash<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,true>,std::allocator<std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::tuple<std::optional<FPItem * {__strong}>,std::optional<NSError * {__strong}>,std::shared_ptr<std::function<void ()(__CFURL const*,FPItem *,NSError *)>>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::tuple<std::optional<FPItem * {__strong}>,std::optional<NSError * {__strong}>,std::shared_ptr<std::function<void ()(__CFURL const*,FPItem *,NSError *)>>>>,std::__unordered_map_hasher<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::tuple<std::optional<FPItem * {__strong}>,std::optional<NSError * {__strong}>,std::shared_ptr<std::function<void ()(__CFURL const*,FPItem *,NSError *)>>>>,std::hash<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,std::equal_to<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,true>,std::__unordered_map_equal<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::tuple<std::optional<FPItem * {__strong}>,std::optional<NSError * {__strong}>,std::shared_ptr<std::function<void ()(__CFURL const*,FPItem *,NSError *)>>>>,std::equal_to<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,std::hash<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,true>,std::allocator<std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::tuple<std::optional<FPItem * {__strong}>,std::optional<NSError * {__strong}>,std::shared_ptr<std::function<void ()(__CFURL const*,FPItem *,NSError *)>>>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__function::__func<TNode::UpdateFPItemsIfNeeded(std::vector<TNodePtr> const&,std::chrono::duration<double,std::ratio<1l,1l>> const&,BOOL,BOOL,BOOL)::$_3,std::allocator<TNode::UpdateFPItemsIfNeeded(std::vector<TNodePtr> const&,std::chrono::duration<double,std::ratio<1l,1l>> const&,BOOL,BOOL,BOOL)::$_3>,void ()(__CFURL const*,FPItem *,NSError *)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>,std::__unordered_map_hasher<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>,std::hash<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,std::equal_to<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,true>,std::__unordered_map_equal<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>,std::equal_to<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,std::hash<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,true>,std::allocator<std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

void std::__hash_table<std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::tuple<std::optional<FPItem * {__strong}>,std::optional<NSError * {__strong}>,std::shared_ptr<std::function<void ()(__CFURL const*,FPItem *,NSError *)>>>>,std::__unordered_map_hasher<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::tuple<std::optional<FPItem * {__strong}>,std::optional<NSError * {__strong}>,std::shared_ptr<std::function<void ()(__CFURL const*,FPItem *,NSError *)>>>>,std::hash<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,std::equal_to<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,true>,std::__unordered_map_equal<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::tuple<std::optional<FPItem * {__strong}>,std::optional<NSError * {__strong}>,std::shared_ptr<std::function<void ()(__CFURL const*,FPItem *,NSError *)>>>>,std::equal_to<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,std::hash<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,true>,std::allocator<std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::tuple<std::optional<FPItem * {__strong}>,std::optional<NSError * {__strong}>,std::shared_ptr<std::function<void ()(__CFURL const*,FPItem *,NSError *)>>>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::pair<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>> const,std::tuple<std::optional<FPItem * {__strong}>,std::optional<NSError * {__strong}>,std::shared_ptr<std::function<void ()(__CFURL const*,FPItem *,NSError *)>>>>::~pair((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__hash_table<std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>,std::__unordered_map_hasher<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>,std::hash<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,std::equal_to<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,true>,std::__unordered_map_equal<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>,std::equal_to<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,std::hash<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,true>,std::allocator<std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      objc_destroyWeak(v2 + 3);
      TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t IDContainerIteratorAdaptor<NSMutableArray<NSURL *>>::NSForwardIterator<NSMutableArray<NSURL *>>::NSForwardIterator(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  *a1 = v3;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 120) = -1;
  *(a1 + 104) = 0;
  *(a1 + 112) = -1;
  *(a1 + 128) = -1;
  if (v3 && [v3 count])
  {
    *(a1 + 112) = [*a1 countByEnumeratingWithState:a1 + 8 objects:a1 + 72 count:4];
    *(a1 + 104) = **(a1 + 24);
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
  }

  else
  {
    *(a1 + 128) = 0;
  }

  return a1;
}

uint64_t IDContainerIteratorAdaptor<NSMutableArray<NSURL *>>::IDContainerIteratorAdaptor(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  *a1 = v4;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = -1;
  *(a1 + 120) = -1;
  *(a1 + 128) = -1;
  *(a1 + 128) = [v4 count];

  return a1;
}

id *fstd::optional_err<FPItem * {__strong},NSError * {__strong}>::operator=(id *a1, id *a2)
{
  objc_storeStrong(a1, *a2);
  objc_storeStrong(a1 + 1, a2[1]);
  return a1;
}

void std::vector<std::pair<TNodePtr,TNodePtr>>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 16)
  {

    v5 = *(i - 16);
  }

  *(a1 + 8) = a2;
}

void TNode::StPopulating::~StPopulating(FINode **this)
{
  if (TNodeFromFINode(*this) && !this[1] && *(TNodeFromFINode(*this) + 56))
  {
    v2 = TNodeFromFINode(*this);
    TChildrenList::Unlock(*(v2 + 56));
  }
}

void TSystemNotificationTask::MakeSystemNotificationTask(TSystemNotificationTask *this)
{
  std::mutex::lock(&gBusyFoldersLock);
  if (!TSystemNotificationTask::gBusyFolders)
  {
    operator new();
  }

  operator new();
}

void sub_1E5686300(_Unwind_Exception *a1)
{
  v2 = v1;
  MEMORY[0x1E692CD30](v2, 0x10A0C4035A50E9BLL);
  std::mutex::unlock(&gBusyFoldersLock);
  _Unwind_Resume(a1);
}

void TBusyFolders::TBusyFolders(TBusyFolders *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  *(this + 5) = 0;
  *(this + 12) = 0;
  TString::TString(&v2, "/dev/");
  TBusyFolders::AddPath(this, &v2, 0);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v2.fString.fRef);
  TString::TString(&v2, "/private/var/mobile/tmp/");
  TBusyFolders::AddPath(this, &v2, 0);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v2.fString.fRef);
  TString::TString(&v2, "/private/var/db/");
  TBusyFolders::AddPath(this, &v2, 0);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v2.fString.fRef);
  TString::TString(&v2, "/private/var/tmp/");
  TBusyFolders::AddPath(this, &v2, 0);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v2.fString.fRef);
  TString::TString(&v2, "/private/var/mobile/Library/");
  TBusyFolders::AddPath(this, &v2, 0);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v2.fString.fRef);
  TString::TString(&v2, "/private/var/logs/");
  TBusyFolders::AddPath(this, &v2, 0);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v2.fString.fRef);
}

void sub_1E5686488(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  std::__hash_table<std::__hash_value_type<TString,TBusyFolders::TSpecialFolderStream>,std::__unordered_map_hasher<TString,std::__hash_value_type<TString,TBusyFolders::TSpecialFolderStream>,std::hash<TString>,std::equal_to<TString>,true>,std::__unordered_map_equal<TString,std::__hash_value_type<TString,TBusyFolders::TSpecialFolderStream>,std::equal_to<TString>,std::hash<TString>,true>,std::allocator<std::__hash_value_type<TString,TBusyFolders::TSpecialFolderStream>>>::~__hash_table(v2);
  _Unwind_Resume(a1);
}

uint64_t TBusyFolders::AddPath(TBusyFolders *this, TString *a2, char a3)
{
  result = CFStringGetLength(a2->fString.fRef);
  if (result)
  {
    result = std::__hash_table<std::__hash_value_type<TString,TBusyFolders::TSpecialFolderStream>,std::__unordered_map_hasher<TString,std::__hash_value_type<TString,TBusyFolders::TSpecialFolderStream>,std::hash<TString>,std::equal_to<TString>,true>,std::__unordered_map_equal<TString,std::__hash_value_type<TString,TBusyFolders::TSpecialFolderStream>,std::equal_to<TString>,std::hash<TString>,true>,std::allocator<std::__hash_value_type<TString,TBusyFolders::TSpecialFolderStream>>>::__emplace_unique_key_args<TString,std::piecewise_construct_t const&,std::tuple<TString const&>,std::tuple<>>(this, a2);
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 36) = a3;
  }

  return result;
}

uint64_t **std::__hash_table<std::__hash_value_type<TString,TBusyFolders::TSpecialFolderStream>,std::__unordered_map_hasher<TString,std::__hash_value_type<TString,TBusyFolders::TSpecialFolderStream>,std::hash<TString>,std::equal_to<TString>,true>,std::__unordered_map_equal<TString,std::__hash_value_type<TString,TBusyFolders::TSpecialFolderStream>,std::equal_to<TString>,std::hash<TString>,true>,std::allocator<std::__hash_value_type<TString,TBusyFolders::TSpecialFolderStream>>>::__emplace_unique_key_args<TString,std::piecewise_construct_t const&,std::tuple<TString const&>,std::tuple<>>(void *a1, TString *this)
{
  v4 = FowlerNollVoHash::hash(this, this);
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
    std::__hash_table<std::__hash_value_type<TString,TBusyFolders::TSpecialFolderStream>,std::__unordered_map_hasher<TString,std::__hash_value_type<TString,TBusyFolders::TSpecialFolderStream>,std::hash<TString>,std::equal_to<TString>,true>,std::__unordered_map_equal<TString,std::__hash_value_type<TString,TBusyFolders::TSpecialFolderStream>,std::equal_to<TString>,std::hash<TString>,true>,std::allocator<std::__hash_value_type<TString,TBusyFolders::TSpecialFolderStream>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<TString const&>,std::tuple<>>();
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

  if (!CFEqual(v11[2], this->fString.fRef))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1E56867A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<TString,TBusyFolders::TSpecialFolderStream>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<TString,TBusyFolders::TSpecialFolderStream>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<TString,TBusyFolders::TSpecialFolderStream>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<TString,TBusyFolders::TSpecialFolderStream>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v2 + 2);
    }

    operator delete(v2);
  }

  return a1;
}

const void **TBusyFolders::StartObserving(TBusyFolders *this)
{
  v2 = gSystemNotificationStreamGCDQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZN12TBusyFolders14StartObservingEv_block_invoke;
  block[3] = &__block_descriptor_48_ea8_32c44_ZTSKZN12TBusyFolders14StartObservingEvE3__0_e5_v8__0l;
  v3 = TBusyFolders::CopyBusyFolders(this);
  v5 = v3;
  block[4] = this;
  v7 = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  dispatch_async(v2, block);
  TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TRef(&v5);

  return TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TRef(&v7);
}

void sub_1E56868C8(_Unwind_Exception *a1)
{
  TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TRef((v2 + 8));

  _Unwind_Resume(a1);
}

__CFArray *TBusyFolders::CopyBusyFolders(TBusyFolders *this)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  for (i = *(this + 2); i; i = *i)
  {
    v4 = RetainCF<__CFString const*>(i + 2);
    if (v4)
    {
      v5 = CFAutorelease(v4);
      v6 = static_cf_cast<__CFString const*,void const*>(v5);
    }

    else
    {
      v6 = 0;
    }

    CFArrayAppendValue(Mutable, v6);
  }

  return Mutable;
}

CFTypeRef __copy_helper_block_ea8_32c44_ZTSKZN12TBusyFolders14StartObservingEvE3__0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void TNode::SynchronizeVolumes(TNode *this)
{
  TGlobalNodes::RootNode(&v4);
  v1 = TNodeFromFINode(v4);
  v5 = 0;
  v2 = TNode::HandleSyncStarted(v1, 285212672, &v5);
  v3 = TNodeFromFINode(v4);
  TNode::HandleSyncCompleted(v3, v2);
}

void sub_1E5687248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v14 = va_arg(va1, const void *);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((v12 - 88));
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va1);

  _Unwind_Resume(a1);
}

BOOL TFSInfo::IsBootVolume(TFSInfo *this)
{
  os_unfair_lock_lock(this + 27);
  v2 = *(this + 123);
  os_unfair_lock_unlock(this + 27);
  if ((v2 & 0x100) == 0)
  {
    return 0;
  }

  TFSInfo::GetVolumeID(this, &v5 + 1);
  ROSPVolumeID::BootVolumeID(&v5);
  v3 = v5 == 0;
  if (*(&v5 + 1) && v5)
  {
    v3 = CFEqual(*(&v5 + 1), v5) != 0;
  }

  TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(&v5);
  TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(&v5 + 1);
  return v3;
}

void sub_1E56876E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(&a9);
  TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(&a10);
  _Unwind_Resume(a1);
}

uint64_t TFSInfo::GetProperty(uint64_t a1, signed int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!GetPropertyRecord(a2, v18))
  {
    return 4294959245;
  }

  v12 = v19;
  v13 = (a1 + (v20 >> 1));
  if (v20)
  {
    v12 = *(*v13 + v19);
  }

  result = v12(v13, a3, a4, a5, a6);
  if (!result)
  {
    os_unfair_lock_lock((a1 + 108));
    v15 = *(a1 + 123);
    os_unfair_lock_unlock((a1 + 108));
    if ((v15 & 0x2000000) == 0)
    {
      if (a2 == 1684955501)
      {
        goto LABEL_10;
      }

LABEL_9:
      if (a2 == 1668506984)
      {
LABEL_10:
        os_unfair_lock_lock((a1 + 108));
        v16 = *(a1 + 123);
        os_unfair_lock_unlock((a1 + 108));
        if ((v16 & 0x20000000) != 0)
        {
          return 0;
        }

        else
        {
          return 4294959210;
        }
      }

      return 0;
    }

    result = 4294959210;
    if (a2 <= 1819240306)
    {
      if (a2 <= 1684108402)
      {
        if (a2 == 1634952036)
        {
          return result;
        }

        goto LABEL_9;
      }

      if (a2 == 1684108403)
      {
        return result;
      }

      if (a2 == 1684955501)
      {
        goto LABEL_10;
      }

      v17 = 1818321516;
LABEL_26:
      if (a2 == v17)
      {
        return result;
      }

      return 0;
    }

    if (a2 <= 1883333731)
    {
      if (a2 == 1819240307)
      {
        return result;
      }

      v17 = 1836016740;
      goto LABEL_26;
    }

    if (a2 != 1883333732 && a2 != 1885895027)
    {
      v17 = 1919251315;
      goto LABEL_26;
    }
  }

  return result;
}

void std::__hash_table<NSObject *,std::hash<std::hash>,std::equal_to<std::hash>,std::allocator<std::hash>>::__rehash<true>(uint64_t a1, size_t __n)
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
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 36));
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

      std::__hash_table<std::__hash_value_type<unsigned long long,TRecordProgress>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRecordProgress>>>::__do_rehash<true>(a1, prime);
    }
  }
}

uint64_t TNode::GetProperty(uint64_t a1, signed int a2, void ***a3, unsigned int a4)
{
  v64 = *MEMORY[0x1E69E9840];
  v7 = TNode::InfoLock(a1);
  os_unfair_lock_lock(v7);
  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v7);
  os_unfair_lock_lock((v9 + 108));
  v10 = *(v9 + 123);
  os_unfair_lock_unlock((v9 + 108));
  IsAlias = TFSInfo::IsAlias(v9);
  v12 = IsAlias;
  v54[0] = 0;
  v54[1] = 0;
  if (a2 == 1802071652)
  {
    v13 = 1802072172;
  }

  else
  {
    v13 = a2;
  }

  if (v13 > 1819240306)
  {
    if (v13 > 1836016739)
    {
      if (v13 == 1836016740)
      {
        goto LABEL_18;
      }

      v14 = 1920167267;
    }

    else
    {
      if (v13 == 1819240307)
      {
        goto LABEL_18;
      }

      v14 = 1819632756;
    }

LABEL_17:
    if (v13 != v14)
    {
      goto LABEL_28;
    }

    goto LABEL_18;
  }

  if (v13 > 1769171298)
  {
    if (v13 == 1769171299)
    {
      goto LABEL_18;
    }

    v14 = 1802072172;
    goto LABEL_17;
  }

  if (v13 != 1634952036)
  {
    v14 = 1768124270;
    goto LABEL_17;
  }

LABEL_18:
  TNodePtr::TNodePtr(&v53, a1);
  TempPropertiesLock();
  os_unfair_lock_lock(&dword_1ECFF4494);
  v15 = TempProperties();
  v56[0].fString.fRef = TNodeFromFINode(v53.fFINode);
  v16 = std::__hash_table<std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>,std::__unordered_map_hasher<OpaqueEventNotifier *,std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>,std::hash<OpaqueEventNotifier *>,std::equal_to<OpaqueEventNotifier *>,true>,std::__unordered_map_equal<OpaqueEventNotifier *,std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>,std::equal_to<OpaqueEventNotifier *>,std::hash<OpaqueEventNotifier *>,true>,std::allocator<std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>>>::find<OpaqueEventNotifier *>(v15, v56);
  TempProperties();
  if (v16)
  {
    *buf = *(v16 + 3);
    *&buf[16] = v16[5];
    v61.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&v61, v16[6]);
    v62 = v16[7];
    v63 = 1;
  }

  else
  {
    v56[0].fString.fRef = 0;
    v56[1].fString.fRef = 0;
    v56[2].fString.fRef = -1;
    v57 = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    v58 = 0;
    v55 = 0;
    std::pair<TTempProperties,BOOL>::pair[abi:ne200100]<TTempProperties,BOOL,0>(buf, v56, &v55);

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v57);
  }

  os_unfair_lock_unlock(&dword_1ECFF4494);

  if (v63 == 1)
  {
    if (v13 <= 1819240306)
    {
      if (v13 != 1634952036)
      {
        if (v13 == 1769171299)
        {
          TPropertyReference::SetAs<ISIcon * {__strong}>(a3, &v62);
        }

        else if (v13 == 1802072172)
        {
          TPropertyReference::SetAs<TString>(a3, &v61);
        }

        goto LABEL_65;
      }

      v17 = &buf[8];
    }

    else
    {
      v17 = buf;
      if (v13 > 1836016739)
      {
        if (v13 != 1836016740)
        {
          if (v13 == 1920167267)
          {
            LOBYTE(v56[0].fString.fRef) = 0;
            TPropertyReference::SetAs<BOOL>(a3, v56);
          }

          goto LABEL_65;
        }
      }

      else
      {
        if (v13 == 1819240307)
        {
          TPropertyReference::SetAs<long long>(a3, &buf[16]);
          goto LABEL_65;
        }

        if (v13 != 1819632756)
        {
          goto LABEL_65;
        }
      }
    }

    TPropertyReference::SetAs<double>(a3, v17);
LABEL_65:

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v61.fString.fRef);
    Property = 0;
    goto LABEL_66;
  }

  IsAlias = TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v61.fString.fRef);
LABEL_28:
  if (((v10 & 0x100) == 0) | v12 & 1)
  {
    if (v13 == 1987273324)
    {
      goto LABEL_39;
    }

    goto LABEL_41;
  }

  switch(a2)
  {
    case 1819240307:
      goto LABEL_34;
    case 1987273324:
LABEL_39:
      buf[0] = TNode::IsVisible(a1);
      v21 = TPropertyReference::SetAs<BOOL>(a3, buf);
      goto LABEL_40;
    case 1885895027:
LABEL_34:
      TNode::GetVolumeInfo(a1, buf);
      v18 = v54[1];
      *v54 = *buf;
      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        v19 = v54[0];
        if (v54[0])
        {
LABEL_36:
          v20 = TFSVolumeInfo::VolumeSize(v19);
          *buf = v20;
          if (v20 == -1)
          {
            TPropertyReference::SetAs<long long>(a3, buf);
            goto LABEL_105;
          }

          if (v20 != -2)
          {
            v21 = TPropertyReference::SetAs<long long>(a3, buf);
LABEL_40:
            Property = v21;
            goto LABEL_66;
          }

LABEL_73:
          TPropertyReference::SetAs<long long>(a3, buf);
          Property = 4294959222;
          goto LABEL_66;
        }
      }

      else
      {
        v19 = *buf;
        if (*buf)
        {
          goto LABEL_36;
        }
      }

      *buf = -2;
      goto LABEL_73;
  }

LABEL_41:
  if (v13 == 1684955501 && (v10 & 0x100) != 0)
  {
    TNode::GetVolumeInfo(a1, buf);
    IsAlias = v54[1];
    *v54 = *buf;
    if (IsAlias)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](IsAlias);
    }

    if ((*(v54[0] + 108) & 1) == 0)
    {
      goto LABEL_82;
    }

LABEL_56:
    v23 = TNode::InfoLock(IsAlias);
    os_unfair_lock_lock(v23);
    v25 = *(a1 + 16);
    v24 = *(a1 + 24);
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v23);
    TFSInfo::Name(v25, v56);
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }

    ColonsToSlashes(v56, buf);
    Property = TPropertyReference::SetAs<TString>(a3, buf);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(buf);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v56[0].fString.fRef);
    goto LABEL_66;
  }

  if (a2 == 1869769063)
  {
    v28 = TNode::InfoLock(IsAlias);
    os_unfair_lock_lock(v28);
    v29 = *(a1 + 16);
    v30 = *(a1 + 24);
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v28);
    HaveOriginatorInfo = TFSInfo::CanHaveOriginatorInfo(v29);
    if (v30)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }

    if ((HaveOriginatorInfo & 1) == 0)
    {
      *buf = 0;
      Property = TPropertyReference::SetAs<SYDocumentAttributes * {__strong}>(a3, buf);

      goto LABEL_66;
    }
  }

  else if (a2 == 1886282093)
  {
    goto LABEL_56;
  }

  if (!v54[0])
  {
    TNode::GetVolumeInfo(a1, buf);
    v32 = v54[1];
    *v54 = *buf;
    if (v32)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }
  }

LABEL_82:
  v55 = 0;
  if (a2 > 1769171055)
  {
    if (a2 > 1819501923)
    {
      if (a2 != 1819501924 && a2 != 1936225392)
      {
        v33 = v13;
        if (a2 == 1969385844)
        {
          if ((TFSInfo::GetBladeRunnerFlags(v9) & 0x80000000) != 0 && ((a4 & 0x40000) != 0 || !pthread_main_np()))
          {
            TFSInfo::FetchBladeRunnerProperties(v9, v34, v35);
            v55 = 1;
          }

          *buf = TFSInfo::GetBladeRunnerFlags(v9);
          v36 = atomic_load((a1 + 88));
          if (v36)
          {
            *buf |= 0x1000u;
          }

          v37 = TPropertyReference::SetAs<DSBladeRunnerFlags>(a3, buf);
          if (v37)
          {
            Property = v37;
          }

          else
          {
            Property = (*buf >> 31) & 0xFFFFE06A;
          }

          if (!Property)
          {
            goto LABEL_136;
          }

          goto LABEL_66;
        }

        goto LABEL_131;
      }

      goto LABEL_128;
    }

    if (a2 == 1769171056)
    {
LABEL_128:
      if ((TFSInfo::GetBladeRunnerFlags(v9) & 0x80000000) != 0 && ((a4 & 0x40000) != 0 || !pthread_main_np()))
      {
        v44 = TNode::GetFIProvider(a1);
        v45 = [v44 isLocalStorageDomain];

        if ((v45 & 1) == 0)
        {
          TFSInfo::FetchBladeRunnerProperties(v9, v46, v47);
          TNodePtr::TNodePtr(buf, a1);
          TNode::SendNotification(a1, 2, buf, 1969385844, 0);
        }
      }

      BladeRunnerFlags = TFSInfo::GetBladeRunnerFlags(v9);
      v33 = v13;
      if ((BladeRunnerFlags & 0x180) == 0)
      {
        v33 = v13;
        if (*(v9 + 120) != 7)
        {
          Property = 0;
          goto LABEL_132;
        }
      }

      goto LABEL_131;
    }

    v33 = v13;
    if (a2 != 1769171299)
    {
      goto LABEL_131;
    }

    if (!v12 || TNode::IsVirtual(a1) || !TFSInfo::AliasIsContainer(v9) || (TFSInfo::HasCustomIcon(v9) & 1) != 0)
    {
      goto LABEL_144;
    }

    if (TNode::AliasResolved(a1))
    {
LABEL_121:
      if (TNode::AliasResolved(a1))
      {
        TNode::GetAliasTarget(a1, v56);
        fRef = v56[0].fString.fRef;
        if (TNodeFromFINode(v56[0].fString.fRef))
        {
          v40 = TNodeFromFINode(fRef);
          TNode::GetFSInfo(v40, buf);
          Property = TFSInfo::GetProperty(*buf, 1769171299, a3, v54, a4, &v55);
          if (*&buf[8])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
          }

          TPropertyReference::As<ISIcon * {__strong}>(a3, buf);
          v41 = *buf;
          if (*buf)
          {
            {
              v51 = objc_alloc(MEMORY[0x1E69A8A08]);
              TNode::GetProperty(Property,TPropertyReference &,NodeRequestOptions)const::deco = [v51 initWithType:*MEMORY[0x1E69A8A58]];
            }

            v59 = TNode::GetProperty(Property,TPropertyReference &,NodeRequestOptions)const::deco;
            v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
            *buf = [v41 iconWithDecorations:v42];

            TPropertyReference::SetAs<ISIcon * {__strong}>(a3, buf);
            goto LABEL_66;
          }
        }
      }

LABEL_144:
      Property = TFSInfo::GetProperty(v9, a2, a3, v54, a4, &v55);
      if (Property)
      {
        goto LABEL_66;
      }

      goto LABEL_136;
    }

    v38 = TNode::FollowAlias(a1, -2147483518);
    if (v38 != -8086)
    {
      if (v38)
      {
        goto LABEL_144;
      }

      goto LABEL_121;
    }

    v49 = LogObj(5);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      TNode::Path(a1, &v56[0].fString.fRef);
      v50 = SanitizedPath(v56);
      *buf = 67109378;
      *&buf[4] = -8086;
      *&buf[8] = 2114;
      *&buf[10] = v50;
      _os_log_impl(&dword_1E5674000, v49, OS_LOG_TYPE_INFO, "Alias to container unable to resolve icon status=%d path=%{public}@", buf, 0x12u);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v56[0].fString.fRef);
    }

LABEL_105:
    Property = 4294959210;
    goto LABEL_66;
  }

  if (a2 > 1718903155)
  {
    v33 = a2;
    if (a2 != 1718903156)
    {
      v33 = a2;
      if (a2 != 1718904684)
      {
        v33 = v13;
        if (a2 == 1768845426)
        {
          v56[0].fString.fRef = TNode::CopyInlineProgress(a1);
          *buf = v56[0];
          Property = TPropertyReference::SetAs<__CFDictionary const*>(a3, buf);
          TAutoRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>::~TAutoRef(&v56[0].fString.fRef);
          if (Property)
          {
            goto LABEL_66;
          }

          goto LABEL_136;
        }
      }
    }

    goto LABEL_131;
  }

  if (a2 == 1635150195)
  {
    HasVisibleChildren = TNode::HasVisibleChildren(a1);
    if ((HasVisibleChildren & 0x100) != 0)
    {
      *buf = HasVisibleChildren;
      v21 = TPropertyReference::SetAs<int>(a3, buf);
      goto LABEL_40;
    }

    goto LABEL_144;
  }

  v33 = v13;
  if (a2 == 1667785588)
  {
    if ((a4 & 0x40000000) != 0 && *(a1 + 56) && TNode::NeedsChildReconcile(a1))
    {
      *buf = TChildrenList::ChildrenCount(*(a1 + 56));
      v21 = TPropertyReference::SetAs<long long>(a3, buf);
      goto LABEL_40;
    }

    goto LABEL_144;
  }

LABEL_131:
  Property = TFSInfo::GetProperty(v9, v33, a3, v54, a4, &v55);
LABEL_132:
  if (a2 == 1668505966 || a2 == 1634758244)
  {
    TNode::AddToAppNapCache(a1);
  }

  if (!Property)
  {
LABEL_136:
    if (v55 == 1)
    {
      TNodePtr::TNodePtr(buf, a1);
      TNode::SendNotification(a1, 2, buf, v13, 0);
    }
  }

LABEL_66:
  if (v54[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v54[1]);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v26 = *MEMORY[0x1E69E9840];
  return Property;
}

void sub_1E5688518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, void *a15)
{

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(a1);
}

void ___ZN12TBusyFolders14StartObservingEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  notify_register_dispatch("CACHE_DELETE_PURGEABLE_UPDATED", (v2 + 48), gSystemNotificationGCDQueue, &__block_literal_global_2);
  FSEventStreamForPath = CreateFSEventStreamForPath(@"/", TSystemNotificationTask::HandleAllFileChanges, *(a1 + 40));
  dispatch_assert_queue_V2(gSystemNotificationStreamGCDQueue);
  *(v2 + 40) = FSEventStreamForPath;
}

uint64_t *std::__hash_table<std::__hash_value_type<Property,TPropertyValue>,std::__unordered_map_hasher<Property,std::__hash_value_type<Property,TPropertyValue>,std::hash<Property>,std::equal_to<Property>,true>,std::__unordered_map_equal<Property,std::__hash_value_type<Property,TPropertyValue>,std::equal_to<Property>,std::hash<Property>,true>,std::allocator<std::__hash_value_type<Property,TPropertyValue>>>::find<Property>(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}