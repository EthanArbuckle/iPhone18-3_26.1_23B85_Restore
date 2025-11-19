void NetworkDiagnosticsConfigDb::openFiles(uint64_t *a1, NSObject *a2)
{
  if (*(a1 + 23) >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  v3 = 136315138;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "TDM:ERR to create TDM log folder currentTime: %s", &v3, 0xCu);
}

void NetworkDiagnosticsConfigDb::openFiles(char *a1)
{
  OUTLINED_FUNCTION_18(a1, __stack_chk_guard);
  if (v2 < 0)
  {
    v3 = *v1;
  }

  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_5_1(&_mh_execute_header, v4, v5, "TDM:ERR to open %s", v6);
}

void threadDiagnosticsManager_MsgHandler(uint64_t a1, void **a2, uint64_t a3)
{
  IsThreadFeatureEnabled = ctrUtilIsThreadFeatureEnabled();
  logging_obg = log_get_logging_obg("com.apple.wpantund.tdm", "default");
  if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 67109120;
    DWORD1(buf) = IsThreadFeatureEnabled;
    _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "threadDiagnosticsManager_MsgHandler - os_feature_enabled : %d", &buf, 8u);
  }

  if ((IsThreadFeatureEnabled & 1) == 0)
  {
    v12 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "threadDiagnosticsManager_MsgHandler";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s: This functionality is disabled...", &buf, 0xCu);
    }

    v13 = xpc_null_create();
    if (*a3)
    {
      v14 = _Block_copy(*a3);
    }

    else
    {
      v14 = 0;
    }

    v16 = *(a3 + 8);
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 1174405120;
    v29 = ___ZNK8dispatch8callbackIU13block_pointerFvhN3xpc4dictEEEclIJN6CtrXPC3__0ES2_EEEvDpT__block_invoke_1;
    v30 = &__block_descriptor_tmp_3_0;
    if (v14)
    {
      v17 = _Block_copy(v14);
    }

    else
    {
      v17 = 0;
    }

    v33 = 6;
    aBlock = v17;
    object = v13;
    if (v13)
    {
      xpc_retain(v13);
    }

    else
    {
      object = xpc_null_create();
    }

    dispatch_async(v16, &buf);
    xpc_release(object);
    object = 0;
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v14)
    {
      _Block_release(v14);
    }

    goto LABEL_54;
  }

  v8 = tdm_queue == 0;
  v9 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      threadDiagnosticsManager_MsgHandler(v10);
    }

    v13 = xpc_null_create();
    if (*a3)
    {
      v15 = _Block_copy(*a3);
    }

    else
    {
      v15 = 0;
    }

    v21 = *(a3 + 8);
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 1174405120;
    v29 = ___ZNK8dispatch8callbackIU13block_pointerFvhN3xpc4dictEEEclIJN6CtrXPC3__0ES2_EEEvDpT__block_invoke_1;
    v30 = &__block_descriptor_tmp_3_0;
    if (v15)
    {
      v22 = _Block_copy(v15);
    }

    else
    {
      v22 = 0;
    }

    v33 = 2;
    aBlock = v22;
    object = v13;
    if (v13)
    {
      xpc_retain(v13);
    }

    else
    {
      object = xpc_null_create();
    }

    dispatch_async(v21, &buf);
    xpc_release(object);
    object = 0;
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v15)
    {
      _Block_release(v15);
    }

LABEL_54:
    xpc_release(v13);
    return;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "threadDiagnosticsManager_MsgHandler";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s: dispatching on msg bridge response handler ...", &buf, 0xCu);
  }

  v11 = tdm_queue;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 1174405120;
  v23[2] = ___Z35threadDiagnosticsManager_MsgHandlerNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3xpc4dictEN8dispatch8callbackIU13block_pointerFvhS7_EEE_block_invoke;
  v23[3] = &__block_descriptor_tmp_12;
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  v18 = *a2;
  v25 = v18;
  if (v18)
  {
    xpc_retain(v18);
  }

  else
  {
    v25 = xpc_null_create();
  }

  v19 = *a3;
  if (*a3)
  {
    v19 = _Block_copy(v19);
  }

  v20 = *(a3 + 8);
  v26 = v19;
  v27 = v20;
  if (v20)
  {
    dispatch_retain(v20);
  }

  dispatch_async(v11, v23);
  if (v27)
  {
    dispatch_release(v27);
  }

  if (v26)
  {
    _Block_release(v26);
  }

  xpc_release(v25);
  v25 = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_100224F94(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void ___Z35threadDiagnosticsManager_MsgHandlerNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3xpc4dictEN8dispatch8callbackIU13block_pointerFvhS7_EEE_block_invoke(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    v9 = *(a1 + 32);
  }

  v2 = *(a1 + 56);
  object = v2;
  if (v2)
  {
    xpc_retain(v2);
  }

  else
  {
    object = xpc_null_create();
  }

  threadDiagnosticsManager_MsgHandlerBridge(&v9, &object, &v10);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  v3 = v10;
  if (v10)
  {
    xpc_retain(v10);
  }

  else
  {
    v3 = xpc_null_create();
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    v5 = _Block_copy(v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 72);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvhN3xpc4dictEEEclIJN6CtrXPC3__0ES2_EEEvDpT__block_invoke_1;
  block[3] = &__block_descriptor_tmp_3_0;
  if (v5)
  {
    v7 = _Block_copy(v5);
  }

  else
  {
    v7 = 0;
  }

  v14 = 0;
  aBlock = v7;
  v13 = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    v13 = xpc_null_create();
  }

  dispatch_async(v6, block);
  xpc_release(v13);
  v13 = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  xpc_release(v3);
  xpc_release(v10);
}

void sub_1002251F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZNK8dispatch8callbackIU13block_pointerFvhN3xpc4dictEEEclIJN6CtrXPC3__0ES2_EEEvDpT__block_invoke_1(uint64_t a1)
{
  v1 = *(a1 + 48);
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  object = v2;
  if (v2)
  {
    xpc_retain(v2);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(v3 + 16))(v3, v1, &object);
  xpc_release(object);
}

void threadDiagnosticsManager_MsgHandler(os_log_t log)
{
  v1 = 136315138;
  v2 = "threadDiagnosticsManager_MsgHandler";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: Returning error response handler ...", &v1, 0xCu);
}

uint64_t NetworkDiagnosticsManager::getInstance(NetworkDiagnosticsManager *this)
{
  if (!NetworkDiagnosticsManager::mInstance)
  {
    operator new();
  }

  return NetworkDiagnosticsManager::mInstance;
}

void sub_10022587C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22)
{
  if (v23 < 0)
  {
    operator delete(v22);
  }

  if (a22)
  {
    (*(*a22 + 8))(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_100226538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  xpc::dict::~dict(v28);
  _Unwind_Resume(a1);
}

void sub_100226960(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  objc_destroyWeak((v23 - 40));

  _Unwind_Resume(a1);
}

void *boost::any_cast<nl::Data>(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (v2)
    {
      v3 = (*(*v2 + 16))(v2);
    }

    else
    {
    }

    v4 = (v3[1] & 0x7FFFFFFFFFFFFFFFLL);
    if (v4 == (0x8000000100447D88 & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v4, (0x8000000100447D88 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      return (*v1 + 8);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_100226F24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a15)
  {
    (*(*a15 + 8))(a15);
  }

  if (v29 < 0)
  {
    operator delete(v28);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002271D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a15)
  {
    (*(*a15 + 8))(a15);
  }

  if (*(v16 + 23) < 0)
  {
    operator delete(*v16);
  }

  if (v17 < 0)
  {
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_100227464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a15)
  {
    (*(*a15 + 8))(a15);
  }

  if (*(v16 + 23) < 0)
  {
    operator delete(*v16);
  }

  if (v17 < 0)
  {
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002276F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a15)
  {
    (*(*a15 + 8))(a15);
  }

  if (*(v16 + 23) < 0)
  {
    operator delete(*v16);
  }

  if (v17 < 0)
  {
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_100227964(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a15)
  {
    (*(*a15 + 8))(a15);
  }

  if (v16 < 0)
  {
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_100227BC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a15)
  {
    (*(*a15 + 8))(a15);
  }

  if (v16 < 0)
  {
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_100227E20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a15)
  {
    (*(*a15 + 8))(a15);
  }

  if (v16 < 0)
  {
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_100228080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a15)
  {
    (*(*a15 + 8))(a15);
  }

  if (v16 < 0)
  {
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002282E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a15)
  {
    (*(*a15 + 8))(a15);
  }

  if (v16 < 0)
  {
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002287CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  if (*(v36 - 89) < 0)
  {
    operator delete(*(v36 - 112));
  }

  if (*(v36 - 65) < 0)
  {
    operator delete(*(v36 - 88));
  }

  _Unwind_Resume(exception_object);
}

void xpc::dict::~dict(id *this)
{
  v2 = *this;
  *this = 0;
}

void _GLOBAL__sub_I_ThreadDiagnosticsManagerInstance_mm()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void NetworkDiagnosticsMdnsResolver::NetworkDiagnosticsMdnsResolver(NetworkDiagnosticsMdnsResolver *this, NetworkDiagnosticsConfigDb *a2)
{
  *(this + 8) = 0u;
  v3 = (this + 8);
  *this = a2;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  *(this + 16) = 1065353216;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 26) = 1065353216;
  v4 = (this + 120);
  v5 = (this + 536);
  *(this + 73) = 0;
  *(this + 15) = v7;
  *(v4 + *(v7 - 24)) = v6;
  v8 = (this + *(*(this + 15) - 24) + 120);
  std::ios_base::init(v8, this + 128);
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  *(this + 28) = 0;
  *(this + 688) = 1;
  std::vector<MyServiceType>::__base_destruct_at_end[abi:ne200100](v3, *(this + 1));
  std::vector<MyServiceType>::reserve(v3, 0x64uLL);
}

void sub_1002297B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ios::~ios();
  std::__hash_table<std::__hash_value_type<std::string,MyServiceType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MyServiceType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MyServiceType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MyServiceType>>>::~__hash_table(v3);
  std::__hash_table<std::__hash_value_type<std::string,MyServiceType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MyServiceType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MyServiceType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MyServiceType>>>::~__hash_table(v2 + 32);
  std::vector<MyServiceType>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::vector<MyServiceType>::reserve(void *result, unint64_t a2)
{
  if (0xF0F0F0F0F0F0F0F1 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x1E1E1E1E1E1E1E2)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<MyServiceType>>(result, a2);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1002298D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<MyServiceType>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void NetworkDiagnosticsMdnsResolver::~NetworkDiagnosticsMdnsResolver(NetworkDiagnosticsMdnsResolver *this)
{
  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();
  std::__hash_table<std::__hash_value_type<std::string,MyServiceType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MyServiceType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MyServiceType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MyServiceType>>>::~__hash_table(this + 72);
  std::__hash_table<std::__hash_value_type<std::string,MyServiceType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MyServiceType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MyServiceType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MyServiceType>>>::~__hash_table(this + 32);
  v3 = (this + 8);
  std::vector<MyServiceType>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void NetworkDiagnosticsMdnsResolver::closeFiles(NetworkDiagnosticsMdnsResolver *this)
{
  v1 = (this + 120);
  if ((*(this + *(*(this + 15) - 24) + 152) & 5) == 0 && !std::filebuf::close())
  {
    v2 = (v1 + *(*v1 - 24));
    v3 = v2->__rdstate_ | 4;

    std::ios_base::clear(v2, v3);
  }
}

void NetworkDiagnosticsMdnsResolver::cleanup(NetworkDiagnosticsMdnsResolver *this, BOOL a2, int a3)
{
  if (a3)
  {
    std::vector<MyServiceType>::__base_destruct_at_end[abi:ne200100](this + 8, *(this + 1));
    std::__hash_table<std::__hash_value_type<std::string,MyServiceType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MyServiceType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MyServiceType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MyServiceType>>>::clear(this + 32);
    std::__hash_table<std::__hash_value_type<std::string,MyServiceType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MyServiceType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MyServiceType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MyServiceType>>>::clear(this + 72);
    *(this + 28) = 0;
  }

  NetworkDiagnosticsMdnsResolver::closeFiles(this);
}

BOOL NetworkDiagnosticsMdnsResolver::initialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = (a1 + 120);
  v10 = (a2 + 23);
  if (*(a2 + 23) < 0)
  {
    v11 = *a2;
  }

  std::ofstream::open();
  v12 = *(v9 + *(*(a1 + 120) - 24) + 32) & 5;
  if (v12)
  {
    logging_obg = log_get_logging_obg("com.apple.wpantund.tdm", "default");
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
    {
      NetworkDiagnosticsMdnsResolver::initialize(v10, a2);
    }
  }

  else
  {
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Current Time:", 13);
    v15 = *(a6 + 23);
    if (v15 >= 0)
    {
      v16 = a6;
    }

    else
    {
      v16 = *a6;
    }

    if (v15 >= 0)
    {
      v17 = *(a6 + 23);
    }

    else
    {
      v17 = *(a6 + 8);
    }

    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v16, v17);
    std::ios_base::getloc((v18 + *(*v18 - 24)));
    v19 = std::locale::use_facet(&v22, &std::ctype<char>::id);
    (v19->__vftable[2].~facet_0)(v19, 10);
    std::locale::~locale(&v22);
    std::ostream::put();
    std::ostream::flush();
    std::ios_base::getloc((v9 + *(*v9 - 24)));
    v20 = std::locale::use_facet(&v22, &std::ctype<char>::id);
    (v20->__vftable[2].~facet_0)(v20, 10);
    std::locale::~locale(&v22);
    std::ostream::put();
    std::ostream::flush();
  }

  return v12 == 0;
}

void NetworkDiagnosticsMdnsResolver::MyStopBrowsingForServices(NetworkDiagnosticsMdnsResolver *this, CFNetServiceBrowserRef browser)
{
  if (browser)
  {
    CFNetServiceBrowserStopSearch(browser, &error);
    Current = CFRunLoopGetCurrent();
    CFNetServiceBrowserUnscheduleFromRunLoop(browser, Current, kCFRunLoopCommonModes);
    CFNetServiceBrowserInvalidate(browser);
    CFRelease(browser);
    *(this + 87) = 0;
    *(this + 688) = 1;
    logging_obg = log_get_logging_obg("com.apple.wpantund.tdm", "default");
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "TDM:NetworkDiagnosticsMdnsResolver::MyStopBrowsingForServices completed", v7, 2u);
    }
  }

  else
  {
    v6 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      NetworkDiagnosticsMdnsResolver::MyStopBrowsingForServices();
    }
  }
}

void NetworkDiagnosticsMdnsResolver::updatebrowsedService(unint64_t *a1, __CFNetServiceBrowser *a2, std::string *__str, uint64_t a4, uint64_t a5, char a6)
{
  v27 = 0;
  *v28 = 0u;
  *v29 = 0u;
  v30 = 0u;
  *v31 = 0u;
  *v32 = 0u;
  v33 = 0u;
  memset(__p, 0, sizeof(__p));
  v35 = -1;
  std::string::operator=(v31, __str);
  std::string::operator=(&v29[1], a4);
  std::string::operator=(v28, a5);
  v12 = a1[2];
  if (v12 >= a1[3])
  {
    v13 = std::vector<MyServiceType>::__emplace_back_slow_path<MyServiceType const&>((a1 + 1), &v27);
  }

  else
  {
    MyServiceType::MyServiceType(a1[2], &v27);
    v13 = v12 + 136;
    a1[2] = v12 + 136;
  }

  a1[2] = v13;
  padString(__str, 0x1EuLL, 32);
  padString(a4, 0x1EuLL, 32);
  padString(a5, 0x32uLL, 32);
  v14 = *(a5 + 23);
  if (v14 >= 0)
  {
    v15 = a5;
  }

  else
  {
    v15 = *a5;
  }

  if (v14 >= 0)
  {
    v16 = *(a5 + 23);
  }

  else
  {
    v16 = *(a5 + 8);
  }

  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1 + 15, v15, v16);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "   ", 3);
  v18 = *(a4 + 23);
  if (v18 >= 0)
  {
    v19 = a4;
  }

  else
  {
    v19 = *a4;
  }

  if (v18 >= 0)
  {
    v20 = *(a4 + 23);
  }

  else
  {
    v20 = *(a4 + 8);
  }

  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1 + 15, v19, v20);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "   ", 3);
  v22 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if (v22 >= 0)
  {
    v23 = __str;
  }

  else
  {
    v23 = __str->__r_.__value_.__r.__words[0];
  }

  if (v22 >= 0)
  {
    size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1 + 15, v23, size);
  std::ios_base::getloc((v25 + *(*v25 - 24)));
  v26 = std::locale::use_facet(&v36, &std::ctype<char>::id);
  (v26->__vftable[2].~facet_0)(v26, 10);
  std::locale::~locale(&v36);
  std::ostream::put();
  std::ostream::flush();
  if ((a6 & 1) == 0)
  {
    NetworkDiagnosticsMdnsResolver::MyStopBrowsingForServices(a1, a2);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32[1]);
  }

  if (SHIBYTE(v32[0]) < 0)
  {
    operator delete(v31[0]);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29[1]);
  }

  if (SHIBYTE(v29[0]) < 0)
  {
    operator delete(v28[0]);
  }
}

void sub_10022A048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  *(v9 + 16) = v10;
  MyServiceType::~MyServiceType(&a9);
  _Unwind_Resume(a1);
}

void MyServiceType::~MyServiceType(void **this)
{
  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void NetworkDiagnosticsMdnsResolver::MyBrowseCallBack(NetworkDiagnosticsMdnsResolver *this, __CFNetServiceBrowser *a2, CFNetServiceRef theService, uint64_t *a4, CFStreamError *a5, void *a6)
{
  v9 = a2;
  if (!a5)
  {
    logging_obg = log_get_logging_obg("com.apple.wpantund.tdm", "default");
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
    {
      NetworkDiagnosticsMdnsResolver::MyBrowseCallBack();
    }
  }

  if (!a4 || !*(a4 + 2))
  {
    goto LABEL_13;
  }

  v12 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    NetworkDiagnosticsMdnsResolver::MyBrowseCallBack(a4);
  }

  if ((v9 & 1) == 0 && a5)
  {
    v13 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      NetworkDiagnosticsMdnsResolver::MyBrowseCallBack(a4);
    }

    NetworkDiagnosticsMdnsResolver::MyStopBrowsingForServices(a5, this);
  }

  else
  {
LABEL_13:
    Name = CFNetServiceGetName(theService);
    CFStringGetCString(Name, buffer, 64, 0x8000100u);
    Type = CFNetServiceGetType(theService);
    CFStringGetCString(Type, v25, 24, 0x8000100u);
    Domain = CFNetServiceGetDomain(theService);
    CFStringGetCString(Domain, __s, 1005, 0x8000100u);
    v17 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
      *(buf.__r_.__value_.__r.__words + 4) = __s;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v25;
      HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
      v23 = buffer;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "TDM: MyBrowseCallBack for %s.%s hostname:%s", &buf, 0x20u);
    }

    std::string::basic_string[abi:ne200100]<0>(&buf, __s);
    std::string::basic_string[abi:ne200100]<0>(v20, v25);
    std::string::basic_string[abi:ne200100]<0>(__p, buffer);
    if (a5)
    {
      NetworkDiagnosticsMdnsResolver::updatebrowsedService(a5, this, &buf, v20, __p, v9);
    }

    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    if (v21 < 0)
    {
      operator delete(v20[0]);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }
}

void sub_10022A368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NetworkDiagnosticsMdnsResolver::MyStartBrowsingForServices(NetworkDiagnosticsMdnsResolver *this)
{
  *(this + 688) = 0;
  clientContext.version = 0;
  clientContext.info = this;
  clientContext.retain = 0;
  clientContext.release = 0;
  clientContext.copyDescription = verifydescription;
  v2 = CFNetServiceBrowserCreate(kCFAllocatorDefault, NetworkDiagnosticsMdnsResolver::MyBrowseCallBack, &clientContext);
  if (v2)
  {
    v3 = v2;
    *(this + 87) = v2;
    Current = CFRunLoopGetCurrent();
    CFNetServiceBrowserScheduleWithRunLoop(v3, Current, kCFRunLoopCommonModes);
    result = CFNetServiceBrowserSearchForServices(v3, @"local", @"_hap._udp", &error);
    if (!result)
    {
      v6 = CFRunLoopGetCurrent();
      CFNetServiceBrowserUnscheduleFromRunLoop(v3, v6, kCFRunLoopCommonModes);
      CFRelease(v3);
      logging_obg = log_get_logging_obg("com.apple.wpantund.tdm", "default");
      result = os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR);
      if (result)
      {
        NetworkDiagnosticsMdnsResolver::MyStartBrowsingForServices(&error.domain);
        return 0;
      }
    }
  }

  else
  {
    v8 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
    result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (result)
    {
      NetworkDiagnosticsMdnsResolver::MyStartBrowsingForServices();
      return 0;
    }
  }

  return result;
}

void NetworkDiagnosticsMdnsResolver::MyCancelResolve(NetworkDiagnosticsMdnsResolver *this, __CFNetService *a2)
{
  if (!a2)
  {
    logging_obg = log_get_logging_obg("com.apple.wpantund.tdm", "default");
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
    {
      NetworkDiagnosticsMdnsResolver::MyCancelResolve();
    }
  }

  Current = CFRunLoopGetCurrent();
  CFNetServiceUnscheduleFromRunLoop(a2, Current, kCFRunLoopCommonModes);
  CFNetServiceSetClient(a2, 0, 0);
  CFNetServiceCancel(a2);
  CFRelease(a2);
}

void NetworkDiagnosticsMdnsResolver::MyResolveCallBack(NetworkDiagnosticsMdnsResolver *this, int a2, CFNetServiceRef theService, CFStreamError *a4, void *a5)
{
  Addressing = CFNetServiceGetAddressing(theService);
  Count = CFArrayGetCount(Addressing);
  TargetHost = CFNetServiceGetTargetHost(theService);
  CStringPtr = CFStringGetCStringPtr(TargetHost, 0);
  std::string::basic_string[abi:ne200100]<0>(&v38, CStringPtr);
  if (Addressing)
  {
    if (Count)
    {
      ++*(this + 28);
      ValueAtIndex = CFArrayGetValueAtIndex(Addressing, 0);
      if (ValueAtIndex)
      {
        BytePtr = CFDataGetBytePtr(ValueAtIndex);
        v14 = BytePtr;
        if (BytePtr)
        {
          if (BytePtr[1] == 30)
          {
            v37 = *(BytePtr + 8);
            v15 = inet_ntop(30, &v37, __s, 0x2Eu);
            if (v15)
            {
              logging_obg = log_get_logging_obg("com.apple.wpantund.tdm", "default");
              if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
              {
                v17 = &v38;
                if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v17 = v38.__r_.__value_.__r.__words[0];
                }

                v18 = bswap32(*(v14 + 1));
                *buf = 136315650;
                *v41 = v17;
                *&v41[8] = 2080;
                *&v41[10] = __s;
                *&v41[18] = 1024;
                v42 = HIWORD(v18);
                _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "TDM: MyResolveCallBack hostanme:%s ip:%s port:%d", buf, 0x1Cu);
              }

              std::string::basic_string[abi:ne200100]<0>(&__str, __s);
              v19 = *(this + 1);
              v20 = v19 + 136 * a2;
              if (*(v20 + 31) < 0)
              {
                std::string::__init_copy_ctor_external(&v35, *(v20 + 8), *(v20 + 16));
                v19 = *(this + 1);
              }

              else
              {
                v21 = *(v20 + 8);
                v35.__r_.__value_.__r.__words[2] = *(v20 + 24);
                *&v35.__r_.__value_.__l.__data_ = v21;
              }

              v30 = a2;
              std::string::operator=((v19 + 136 * a2 + 80), &__str);
              v31 = *(this + 1) + 136 * a2;
              *(v31 + 128) = bswap32(*(v14 + 1)) >> 16;
              std::string::operator=((v31 + 104), &v38);
              *(*(this + 1) + 136 * a2 + 132) = -1;
              v32 = std::__hash_table<std::__hash_value_type<std::string,MyServiceType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MyServiceType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MyServiceType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MyServiceType>>>::find<std::string>(this + 4, &__str.__r_.__value_.__l.__data_);
              if (v32)
              {
                MyServiceType::MyServiceType(buf, (v32 + 5));
                v33 = *(this + 1) + 136 * v30;
                *(v33 + 132) = *(v32 + 86);
                v15 = MyServiceType::operator=((v32 + 5), v33);
              }

              else
              {
                MyServiceType::MyServiceType(buf, (*(this + 1) + 136 * v30));
                p_str = &__str;
                v34 = std::__hash_table<std::__hash_value_type<std::string,MyServiceType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MyServiceType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MyServiceType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MyServiceType>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 4, &__str.__r_.__value_.__l.__data_);
                v15 = MyServiceType::operator=((v34 + 5), buf);
              }

              if (v51 < 0)
              {
                operator delete(__p);
              }

              if (v49 < 0)
              {
                operator delete(v48);
              }

              if (v47 < 0)
              {
                operator delete(v46);
              }

              if (v45 < 0)
              {
                operator delete(v44);
              }

              if (v43 < 0)
              {
                operator delete(*&v41[4]);
              }

              if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v35.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__str.__r_.__value_.__l.__data_);
              }
            }
          }

          else
          {
            v26 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
            v15 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
            if (v15)
            {
              v27 = &v38;
              if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v27 = v38.__r_.__value_.__r.__words[0];
              }

              v28 = v14[1];
              v29 = *v14;
              *buf = 136315650;
              *v41 = v27;
              *&v41[8] = 1024;
              *&v41[10] = v28;
              *&v41[14] = 1024;
              *&v41[16] = v29;
              _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "TDM: Not a valid Ipv6 address hostname:%s sa_family=%d sa_len=%d", buf, 0x18u);
            }
          }
        }

        else
        {
          v25 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
          v15 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
          if (v15)
          {
            NetworkDiagnosticsMdnsResolver::MyResolveCallBack();
          }
        }
      }

      else
      {
        v24 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
        v15 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
        if (v15)
        {
          NetworkDiagnosticsMdnsResolver::MyResolveCallBack();
        }
      }
    }

    else
    {
      v23 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
      v15 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
      if (v15)
      {
        NetworkDiagnosticsMdnsResolver::MyResolveCallBack();
      }
    }
  }

  else
  {
    v22 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
    v15 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (v15)
    {
      NetworkDiagnosticsMdnsResolver::MyResolveCallBack();
    }
  }

  NetworkDiagnosticsMdnsResolver::MyCancelResolve(v15, theService);
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }
}

void sub_10022AA0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, char a32)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MyServiceType::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  std::string::operator=((a1 + 8), (a2 + 8));
  std::string::operator=((a1 + 32), (a2 + 32));
  std::string::operator=((a1 + 56), (a2 + 56));
  std::string::operator=((a1 + 80), (a2 + 80));
  std::string::operator=((a1 + 104), (a2 + 104));
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 132) = *(a2 + 132);
  return a1;
}

void NetworkDiagnosticsMdnsResolver::MyResolveService(NetworkDiagnosticsMdnsResolver *this)
{
  v1 = *(this + 1);
  v2 = (this + 8);
  if (*(this + 2) == v1)
  {
    return;
  }

  v4 = 0;
  v5 = 1;
  while (1)
  {
    v6 = v1 + 136 * v4;
    v7 = (v6 + 56);
    if (*(v6 + 79) < 0)
    {
      v7 = *v7;
    }

    v8 = CFStringCreateWithCString(0, v7, 0x8000100u);
    if (!v8)
    {
      logging_obg = log_get_logging_obg("com.apple.wpantund.tdm", "default");
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
      {
        NetworkDiagnosticsMdnsResolver::MyResolveService(&v32, v33, logging_obg);
      }

      goto LABEL_25;
    }

    v9 = v8;
    v10 = *v2 + 136 * v4;
    v11 = (v10 + 32);
    if (*(v10 + 55) < 0)
    {
      v11 = *v11;
    }

    v12 = CFStringCreateWithCString(0, v11, 0x8000100u);
    if (v12)
    {
      break;
    }

    v24 = v9;
LABEL_24:
    CFRelease(v24);
LABEL_25:
    v4 = v5;
    v1 = *(this + 1);
    if (0xF0F0F0F0F0F0F0F1 * ((*(this + 2) - v1) >> 3) <= v5++)
    {
      return;
    }
  }

  v13 = v12;
  v14 = *v2 + 136 * v4;
  v15 = (v14 + 8);
  if (*(v14 + 31) < 0)
  {
    v15 = *v15;
  }

  v16 = CFStringCreateWithCString(0, v15, 0x8000100u);
  if (!v16)
  {
    v25 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      NetworkDiagnosticsMdnsResolver::MyResolveService(&v30, v31, v25);
    }

    CFRelease(v9);
    v24 = v13;
    goto LABEL_24;
  }

  v17 = v16;
  v18 = CFNetServiceCreate(kCFAllocatorDefault, v9, v13, v16, 5683);
  if (v18)
  {
    v20 = v18;
    LODWORD(v19) = *(*this + 28);
    if (CFNetServiceResolveWithTimeout(v18, v19, &error))
    {
      NetworkDiagnosticsMdnsResolver::MyResolveCallBack(this, v5 - 1, v20, v21, v22);
    }

    else
    {
      Current = CFRunLoopGetCurrent();
      CFNetServiceUnscheduleFromRunLoop(v20, Current, kCFRunLoopCommonModes);
      CFNetServiceSetClient(v20, 0, 0);
      CFRelease(v20);
      v27 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        domain = error.domain;
        v37 = 1024;
        v38 = error.error;
        _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "TDM: ERROR: CFNetServiceResolve returned %ld, %d", buf, 0x12u);
      }
    }

    CFRelease(v9);
    CFRelease(v13);
    v24 = v17;
    goto LABEL_24;
  }

  v29 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    NetworkDiagnosticsMdnsResolver::MyResolveService(v2);
  }

  CFRelease(v9);
  CFRelease(v13);
  CFRelease(v17);
}

uint64_t std::ofstream::~ofstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  std::filebuf::~filebuf();

  return std::ostream::~ostream();
}

void MyServiceType::MyServiceType(MyServiceType *this, const MyServiceType *a2)
{
  *(this + 8) = 0u;
  *(this + 56) = 0u;
  v4 = (this + 56);
  *(this + 104) = 0u;
  v5 = (this + 104);
  *(this + 15) = 0;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *this = *a2;
  std::string::operator=((this + 8), (a2 + 8));
  std::string::operator=((this + 32), (a2 + 32));
  std::string::operator=(v4, (a2 + 56));
  std::string::operator=((this + 80), (a2 + 80));
  std::string::operator=(v5, (a2 + 104));
  *(this + 32) = *(a2 + 32);
  *(this + 66) = *(a2 + 66);
}

void sub_10022AFE8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 127) < 0)
  {
    operator delete(*v4);
  }

  if (*(v1 + 103) < 0)
  {
    operator delete(*(v1 + 80));
  }

  if (*(v1 + 79) < 0)
  {
    operator delete(*v3);
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<MyServiceType>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<MyServiceType>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,MyServiceType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MyServiceType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MyServiceType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MyServiceType>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,MyServiceType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MyServiceType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MyServiceType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MyServiceType>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,MyServiceType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MyServiceType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MyServiceType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MyServiceType>>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 167) < 0)
      {
        operator delete(v2[18]);
      }

      if (*(v2 + 143) < 0)
      {
        operator delete(v2[15]);
      }

      if (*(v2 + 119) < 0)
      {
        operator delete(v2[12]);
      }

      if (*(v2 + 95) < 0)
      {
        operator delete(v2[9]);
      }

      if (*(v2 + 71) < 0)
      {
        operator delete(v2[6]);
      }

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

void std::vector<MyServiceType>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<MyServiceType>>::destroy[abi:ne200100]<MyServiceType,0>(a1, i))
  {
    i -= 136;
  }

  *(a1 + 8) = a2;
}

void std::allocator_traits<std::allocator<MyServiceType>>::destroy[abi:ne200100]<MyServiceType,0>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 127) < 0)
  {
    operator delete(*(a2 + 104));
  }

  if (*(a2 + 103) < 0)
  {
    operator delete(*(a2 + 80));
  }

  if (*(a2 + 79) < 0)
  {
    operator delete(*(a2 + 56));
  }

  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  if (*(a2 + 31) < 0)
  {
    v3 = *(a2 + 8);

    operator delete(v3);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MyServiceType>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1E1E1E1E1E1E1E2)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MyServiceType>,MyServiceType*>(uint64_t a1, MyServiceType *a2, MyServiceType *a3, MyServiceType *this)
{
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      MyServiceType::MyServiceType(this, v7);
      v7 = (v7 + 136);
      this = (v12 + 136);
      v12 = (v12 + 136);
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<MyServiceType>>::destroy[abi:ne200100]<MyServiceType,0>(a1, v5);
      v5 = (v5 + 136);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MyServiceType>,MyServiceType*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MyServiceType>,MyServiceType*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<MyServiceType>,MyServiceType*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<MyServiceType>,MyServiceType*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 136;
      std::allocator_traits<std::allocator<MyServiceType>>::destroy[abi:ne200100]<MyServiceType,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<MyServiceType>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<MyServiceType>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<MyServiceType>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 136;
    std::allocator_traits<std::allocator<MyServiceType>>::destroy[abi:ne200100]<MyServiceType,0>(v5, v4 - 136);
  }
}

void std::__hash_table<std::__hash_value_type<std::string,MyServiceType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MyServiceType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MyServiceType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MyServiceType>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,MyServiceType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MyServiceType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MyServiceType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MyServiceType>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t std::vector<MyServiceType>::__emplace_back_slow_path<MyServiceType const&>(uint64_t a1, const MyServiceType *a2)
{
  v2 = 0xF0F0F0F0F0F0F0F1 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1E1E1E1E1E1E1E1)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (0xE1E1E1E1E1E1E1E2 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0xE1E1E1E1E1E1E1E2 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xF0F0F0F0F0F0F0F1 * ((*(a1 + 16) - *a1) >> 3) >= 0xF0F0F0F0F0F0F0)
  {
    v6 = 0x1E1E1E1E1E1E1E1;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MyServiceType>>(a1, v6);
  }

  v13 = 0;
  v14 = 136 * v2;
  MyServiceType::MyServiceType((136 * v2), a2);
  v15 = 136 * v2 + 136;
  v7 = *(a1 + 8);
  v8 = (136 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MyServiceType>,MyServiceType*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<MyServiceType>::~__split_buffer(&v13);
  return v12;
}

void sub_10022B5F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<MyServiceType>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,MyServiceType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MyServiceType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MyServiceType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MyServiceType>>>::find<std::string>(void *a1, const void **a2)
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

const void **std::__hash_table<std::__hash_value_type<std::string,MyServiceType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MyServiceType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MyServiceType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MyServiceType>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,MyServiceType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MyServiceType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MyServiceType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MyServiceType>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_10022BC70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,MyServiceType>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10022BD10(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,MyServiceType>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string const,MyServiceType>::pair[abi:ne200100]<std::string const&>(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v3;
  }

  LODWORD(this[1].__r_.__value_.__l.__data_) = 0;
  *&this[1].__r_.__value_.__r.__words[1] = 0u;
  *&this[2].__r_.__value_.__l.__data_ = 0u;
  *&this[2].__r_.__value_.__r.__words[2] = 0u;
  *&this[3].__r_.__value_.__r.__words[1] = 0u;
  *&this[4].__r_.__value_.__l.__data_ = 0u;
  *&this[4].__r_.__value_.__r.__words[2] = 0u;
  *&this[5].__r_.__value_.__r.__words[1] = 0u;
  *(&this[5].__r_.__value_.__r.__words[2] + 4) = 0u;
  WORD2(this[6].__r_.__value_.__r.__words[1]) = -1;
  return this;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,MyServiceType>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 167) < 0)
    {
      operator delete(__p[18]);
    }

    if (*(__p + 143) < 0)
    {
      operator delete(__p[15]);
    }

    if (*(__p + 119) < 0)
    {
      operator delete(__p[12]);
    }

    if (*(__p + 95) < 0)
    {
      operator delete(__p[9]);
    }

    if (*(__p + 71) < 0)
    {
      operator delete(__p[6]);
    }

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

void NetworkDiagnosticsMdnsResolver::initialize(char *a1, uint64_t *a2)
{
  if (*a1 < 0)
  {
    v2 = *a2;
  }

  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void NetworkDiagnosticsMdnsResolver::MyBrowseCallBack(uint64_t *a1)
{
  OUTLINED_FUNCTION_8_0(a1, __stack_chk_guard);
  v2 = *v1;
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

{
  OUTLINED_FUNCTION_8_0(a1, __stack_chk_guard);
  v2 = *v1;
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void NetworkDiagnosticsMdnsResolver::MyStartBrowsingForServices(uint64_t *a1)
{
  v1 = *(OUTLINED_FUNCTION_8_0(a1, __stack_chk_guard) + 2);
  OUTLINED_FUNCTION_3_5();
  v5 = 1024;
  v6 = v2;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "TDM: CFNetServiceBrowserSearchForServices returned :(domain = %ld, error = %d)", v4, 0x12u);
}

void NetworkDiagnosticsMdnsResolver::MyResolveCallBack()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1(&_mh_execute_header, v0, v1, "TDM: ERROR: sa is NULL ", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1(&_mh_execute_header, v0, v1, "TDM: ERROR: addrDataRef is NULL ", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1(&_mh_execute_header, v0, v1, "TDM: ERROR: No address got in response to resolve ", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1(&_mh_execute_header, v0, v1, "TDM: ERROR: Address is NULL in response ", v2, v3, v4, v5, v6);
}

void NetworkDiagnosticsMdnsResolver::MyResolveService(uint64_t *a1)
{
  OUTLINED_FUNCTION_8_0(a1, __stack_chk_guard);
  v3 = v2 + 136 * v1;
  if (*(v3 + 31) < 0)
  {
    v4 = *(v3 + 8);
  }

  if (*(v3 + 55) < 0)
  {
    v5 = *(v3 + 32);
  }

  if (*(v3 + 79) < 0)
  {
    v6 = *(v3 + 56);
  }

  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x20u);
}

void NetworkDiagnosticsMdnsResolver::MyResolveService(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "TDM: ERROR: MyResolveService cannot create CFString for name", buf, 2u);
}

{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "TDM: ERROR: MyResolveService cannot create CFString for domain", buf, 2u);
}

void NetworkDiagnosticsLogger::NetworkDiagnosticsLogger(NetworkDiagnosticsLogger *this, NetworkDiagnosticsMdnsResolver *a2, NetworkDiagnosticsConfigDb *a3)
{
  *(this + 58) = 0;
  *this = v7;
  v8 = v6;
  *(this + *(v7 - 24)) = v6;
  v9 = (this + *(*this - 24));
  std::ios_base::init(v9, this + 8);
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  *(this + 129) = 0;
  *(this + 71) = v7;
  *(this + *(v7 - 24) + 568) = v8;
  v10 = (this + *(*(this + 71) - 24) + 568);
  std::ios_base::init(v10, this + 576);
  v10[1].__vftable = 0;
  v10[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  *(this + 200) = 0;
  *(this + 142) = v7;
  *(this + *(v7 - 24) + 1136) = v8;
  v11 = (this + *(*(this + 142) - 24) + 1136);
  std::ios_base::init(v11, this + 1144);
  v11[1].__vftable = 0;
  v11[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  *(this + 271) = 0;
  *(this + 213) = v7;
  *(this + *(v7 - 24) + 1704) = v8;
  v12 = (this + *(*(this + 213) - 24) + 1704);
  std::ios_base::init(v12, this + 1712);
  v12[1].__vftable = 0;
  v12[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  *(this + 342) = 0;
  *(this + 284) = v7;
  *(this + *(v7 - 24) + 2272) = v8;
  v13 = (this + *(*(this + 284) - 24) + 2272);
  std::ios_base::init(v13, this + 2280);
  v13[1].__vftable = 0;
  v13[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  *(this + 413) = 0;
  *(this + 355) = v7;
  *(this + *(v7 - 24) + 2840) = v8;
  v14 = (this + *(*(this + 355) - 24) + 2840);
  std::ios_base::init(v14, this + 2848);
  v14[1].__vftable = 0;
  v14[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  *(this + 484) = 0;
  *(this + 426) = v7;
  *(this + *(v7 - 24) + 3408) = v8;
  v15 = (this + *(*(this + 426) - 24) + 3408);
  std::ios_base::init(v15, this + 3416);
  v15[1].__vftable = 0;
  v15[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  *(this + 497) = a2;
  *(this + 498) = a3;
}

void sub_10022C96C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  std::ostream::~ostream();
  std::ios::~ios();
  std::ofstream::~ofstream(v14);
  std::ofstream::~ofstream(v13);
  std::ofstream::~ofstream(v12);
  std::ofstream::~ofstream(v11);
  std::ofstream::~ofstream(a10);
  std::ofstream::~ofstream(v10);
  _Unwind_Resume(a1);
}

void sub_10022CA74()
{
  std::ostream::~ostream();
  std::ios::~ios();
  JUMPOUT(0x10022CA64);
}

void sub_10022CA98()
{
  std::ostream::~ostream();
  std::ios::~ios();
  JUMPOUT(0x10022CA6CLL);
}

void NetworkDiagnosticsLogger::closeFiles(NetworkDiagnosticsLogger *this)
{
  if ((*(this + *(*this - 24) + 32) & 5) == 0 && !std::filebuf::close())
  {
    std::ios_base::clear((this + *(*this - 24)), *(this + *(*this - 24) + 32) | 4);
  }

  if ((*(this + *(*(this + 71) - 24) + 600) & 5) == 0 && !std::filebuf::close())
  {
    std::ios_base::clear((this + *(*(this + 71) - 24) + 568), *(this + *(*(this + 71) - 24) + 600) | 4);
  }

  if ((*(this + *(*(this + 213) - 24) + 1736) & 5) == 0 && !std::filebuf::close())
  {
    std::ios_base::clear((this + *(*(this + 213) - 24) + 1704), *(this + *(*(this + 213) - 24) + 1736) | 4);
  }

  if ((*(this + *(*(this + 355) - 24) + 2872) & 5) == 0 && !std::filebuf::close())
  {
    std::ios_base::clear((this + *(*(this + 355) - 24) + 2840), *(this + *(*(this + 355) - 24) + 2872) | 4);
  }

  if ((*(this + *(*(this + 426) - 24) + 3440) & 5) == 0 && !std::filebuf::close())
  {
    std::ios_base::clear((this + *(*(this + 426) - 24) + 3408), *(this + *(*(this + 426) - 24) + 3440) | 4);
  }

  if ((*(this + *(*(this + 142) - 24) + 1168) & 5) == 0 && !std::filebuf::close())
  {
    std::ios_base::clear((this + *(*(this + 142) - 24) + 1136), *(this + *(*(this + 142) - 24) + 1168) | 4);
  }

  if ((*(this + *(*(this + 284) - 24) + 2304) & 5) == 0 && !std::filebuf::close())
  {
    v2 = (this + *(*(this + 284) - 24) + 2272);
    v3 = v2->__rdstate_ | 4;

    std::ios_base::clear(v2, v3);
  }
}

void NetworkDiagnosticsLogger::cleanup(NetworkDiagnosticsLogger *this, int a2, int a3, void *a4, void *a5, void *a6)
{
  if (a2 && *(*(this + 498) + 49) == 1)
  {
    NetworkDiagnosticsLogger::output_services_info(this, a4, a5, a6);
    NetworkDiagnosticsLogger::output_dns_info_to_debug(this, a4, a5, a6);
  }

  if (a3)
  {
    NetworkDiagnosticsLogger::insertNetworkInformationToDot(this, a4, a5, a6);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this, "}", 1);
    std::ios_base::getloc((v11 + *(*v11 - 24)));
    v12 = std::locale::use_facet(&v13, &std::ctype<char>::id);
    (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(&v13);
    std::ostream::put();
    std::ostream::flush();
  }

  NetworkDiagnosticsLogger::closeFiles(this);
}

uint64_t NetworkDiagnosticsLogger::output_services_info(uint64_t result, void *a2, void *a3, void *a4)
{
  v4 = *(result + 3976);
  v5 = *(v4 + 8);
  if (v5 != *(v4 + 16))
  {
    v7 = 0;
    v8 = 0;
    v9 = (result + 1704);
    v10 = result + 1728;
    do
    {
      v48.__locale_ = 0;
      v49 = 0;
      v50 = 0;
      convertUint16ToHexString(*(v5 + 136 * v7 + 132), &v48);
      *(v10 + *(*v9 - 24)) = 5;
      std::to_string(&v47, v8);
      padString(&v47, 5uLL, 32);
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Index=", 6);
      if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &v47;
      }

      else
      {
        v12 = v47.__r_.__value_.__r.__words[0];
      }

      if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v47.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v47.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v12, size);
      NodeType = getNodeType(*(*(v4 + 8) + 136 * v7 + 132), a2, a3, a4);
      *(v10 + *(*v9 - 24)) = 10;
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Type=", 5);
      convertNodeTypeForDisplay(NodeType, __p);
      if ((v46 & 0x80u) == 0)
      {
        v16 = __p;
      }

      else
      {
        v16 = __p[0];
      }

      if ((v46 & 0x80u) == 0)
      {
        v17 = v46;
      }

      else
      {
        v17 = __p[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v16, v17);
      if (v46 < 0)
      {
        operator delete(__p[0]);
      }

      *(v10 + *(*v9 - 24)) = 10;
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Rloc16=", 7);
      if (v50 >= 0)
      {
        locale = &v48;
      }

      else
      {
        locale = v48.__locale_;
      }

      if (v50 >= 0)
      {
        v20 = HIBYTE(v50);
      }

      else
      {
        v20 = v49;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, locale, v20);
      *(v10 + *(*v9 - 24)) = 10;
      padString(*(v4 + 8) + 136 * v7 + 8, 0x32uLL, 32);
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Name=", 5);
      v22 = *(v4 + 8) + 136 * v7;
      v25 = *(v22 + 8);
      v23 = v22 + 8;
      v24 = v25;
      v26 = *(v23 + 23);
      if (v26 >= 0)
      {
        v27 = v23;
      }

      else
      {
        v27 = v24;
      }

      if (v26 >= 0)
      {
        v28 = *(v23 + 23);
      }

      else
      {
        v28 = *(v23 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v27, v28);
      *(v10 + *(*v9 - 24)) = 50;
      padString(*(v4 + 8) + 136 * v7 + 80, 0x32uLL, 32);
      v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "IpAddr=", 7);
      v30 = *(v4 + 8) + 136 * v7;
      v33 = *(v30 + 80);
      v31 = v30 + 80;
      v32 = v33;
      v34 = *(v31 + 23);
      if (v34 >= 0)
      {
        v35 = v31;
      }

      else
      {
        v35 = v32;
      }

      if (v34 >= 0)
      {
        v36 = *(v31 + 23);
      }

      else
      {
        v36 = *(v31 + 8);
      }

      v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, v35, v36);
      std::ios_base::getloc((v37 + *(*v37 - 24)));
      v38 = std::locale::use_facet(__p, &std::ctype<char>::id);
      (v38->__vftable[2].~facet_0)(v38, 10);
      std::locale::~locale(__p);
      std::ostream::put();
      std::ostream::flush();
      if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v47.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v50) < 0)
      {
        operator delete(v48.__locale_);
      }

      v7 = ++v8;
      v5 = *(v4 + 8);
    }

    while (0xF0F0F0F0F0F0F0F1 * ((*(v4 + 16) - v5) >> 3) > v8);
    std::ios_base::getloc((v9 + *(*v9 - 24)));
    v39 = std::locale::use_facet(&v48, &std::ctype<char>::id);
    (v39->__vftable[2].~facet_0)(v39, 10);
    std::locale::~locale(&v48);
    std::ostream::put();
    std::ostream::flush();
    std::ios_base::getloc((v9 + *(*v9 - 24)));
    v40 = std::locale::use_facet(&v48, &std::ctype<char>::id);
    (v40->__vftable[2].~facet_0)(v40, 10);
    std::locale::~locale(&v48);
    std::ostream::put();
    std::ostream::flush();
    v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "NOTE:  Rloc16=0xffff implies the mapping from RLOC->Ipv6Addr->Hostname cannot be determined", 91);
    std::ios_base::getloc((v41 + *(*v41 - 24)));
    v42 = std::locale::use_facet(&v48, &std::ctype<char>::id);
    (v42->__vftable[2].~facet_0)(v42, 10);
    std::locale::~locale(&v48);
    std::ostream::put();
    return std::ostream::flush();
  }

  return result;
}

uint64_t NetworkDiagnosticsLogger::output_dns_info_to_debug(uint64_t result, void *a2, void *a3, void *a4)
{
  v4 = *(result + 3976);
  if (v4[7])
  {
    v5 = result;
    v6 = (result + 568);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((result + 568), "---------", 9);
    std::ios_base::getloc((v7 + *(*v7 - 24)));
    v8 = std::locale::use_facet(&v200, &std::ctype<char>::id);
    (v8->__vftable[2].~facet_0)(v8, 10);
    std::locale::~locale(&v200);
    std::ostream::put();
    std::ostream::flush();
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "DNS INFO:", 9);
    std::ios_base::getloc((v9 + *(*v9 - 24)));
    v10 = std::locale::use_facet(&v200, &std::ctype<char>::id);
    (v10->__vftable[2].~facet_0)(v10, 10);
    std::locale::~locale(&v200);
    std::ostream::put();
    std::ostream::flush();
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "---------", 9);
    std::ios_base::getloc((v11 + *(*v11 - 24)));
    v12 = std::locale::use_facet(&v200, &std::ctype<char>::id);
    (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(&v200);
    std::ostream::put();
    std::ostream::flush();
    v13 = v4[6];
    v189 = v5 + 74;
    if (v13)
    {
      v176 = v4;
      v188 = 0;
      v14 = 0;
      v187 = 0;
      v15 = v5 + 284;
      v16 = v5 + 287;
      v17 = v5;
      v18 = v5 + 426;
      v180 = v17 + 429;
      v182 = v16;
      v19 = v17 + 355;
      v177 = v17;
      v178 = v17 + 358;
      do
      {
        MyServiceType::MyServiceType(&v200, (v13 + 5));
        v197 = 0;
        v198 = 0;
        v199 = 0;
        convertUint16ToHexString(v213, &v197);
        std::to_string(&v196, v14);
        padString(&v196, 5uLL, 32);
        std::to_string(&v195, WORD2(v188));
        padString(&v196, 5uLL, 32);
        std::to_string(&v194, v188);
        padString(&v196, 5uLL, 32);
        std::to_string(&v193, v187);
        padString(&v196, 5uLL, 32);
        padString(&v201, 0x32uLL, 32);
        padString(&v208, 0x32uLL, 32);
        NodeType = getNodeType(v213, a2, a3, a4);
        v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Index=", 6);
        if ((v196.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v22 = &v196;
        }

        else
        {
          v22 = v196.__r_.__value_.__r.__words[0];
        }

        if ((v196.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v196.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v196.__r_.__value_.__l.__size_;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v22, size);
        *(v189 + *(*v6 - 24)) = 15;
        v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Type=", 5);
        convertNodeTypeForDisplay(NodeType, &__p);
        if ((v192 & 0x80u) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if ((v192 & 0x80u) == 0)
        {
          v26 = v192;
        }

        else
        {
          v26 = v191;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, p_p, v26);
        if (v192 < 0)
        {
          operator delete(__p);
        }

        *(v189 + *(*v6 - 24)) = 15;
        v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Rloc16=", 7);
        if (v199 >= 0)
        {
          v28 = &v197;
        }

        else
        {
          v28 = v197;
        }

        if (v199 >= 0)
        {
          v29 = HIBYTE(v199);
        }

        else
        {
          v29 = v198;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v28, v29);
        *(v189 + *(*v6 - 24)) = 10;
        v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Name=", 5);
        if ((v203 & 0x80u) == 0)
        {
          v31 = &v201;
        }

        else
        {
          v31 = v201;
        }

        if ((v203 & 0x80u) == 0)
        {
          v32 = v203;
        }

        else
        {
          v32 = v202;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, v31, v32);
        *(v189 + *(*v6 - 24)) = 10;
        v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "IpAddr=", 7);
        if ((v210 & 0x80u) == 0)
        {
          v34 = &v208;
        }

        else
        {
          v34 = v208;
        }

        if ((v210 & 0x80u) == 0)
        {
          v35 = v210;
        }

        else
        {
          v35 = v209;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, v34, v35);
        std::ios_base::getloc((v6 + *(*v6 - 24)));
        v36 = std::locale::use_facet(&__p, &std::ctype<char>::id);
        (v36->__vftable[2].~facet_0)(v36, 10);
        std::locale::~locale(&__p);
        std::ostream::put();
        std::ostream::flush();
        if (NodeType)
        {
          if (NodeType == 2)
          {
            v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Index=", 6);
            if ((v193.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v54 = &v193;
            }

            else
            {
              v54 = v193.__r_.__value_.__r.__words[0];
            }

            if ((v193.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v55 = HIBYTE(v193.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v55 = v193.__r_.__value_.__l.__size_;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, v54, v55);
            *(v182 + *(*v15 - 24)) = 15;
            v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Type=", 5);
            convertNodeTypeForDisplay(2u, &__p);
            if ((v192 & 0x80u) == 0)
            {
              v57 = &__p;
            }

            else
            {
              v57 = __p;
            }

            if ((v192 & 0x80u) == 0)
            {
              v58 = v192;
            }

            else
            {
              v58 = v191;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, v57, v58);
            if (v192 < 0)
            {
              operator delete(__p);
            }

            *(v182 + *(*v15 - 24)) = 15;
            v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Rloc16=", 7);
            if (v199 >= 0)
            {
              v60 = &v197;
            }

            else
            {
              v60 = v197;
            }

            if (v199 >= 0)
            {
              v61 = HIBYTE(v199);
            }

            else
            {
              v61 = v198;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, v60, v61);
            *(v182 + *(*v15 - 24)) = 10;
            v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Name=", 5);
            if ((v203 & 0x80u) == 0)
            {
              v63 = &v201;
            }

            else
            {
              v63 = v201;
            }

            if ((v203 & 0x80u) == 0)
            {
              v64 = v203;
            }

            else
            {
              v64 = v202;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, v63, v64);
            *(v182 + *(*v15 - 24)) = 10;
            v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "IpAddr=", 7);
            if ((v210 & 0x80u) == 0)
            {
              v66 = &v208;
            }

            else
            {
              v66 = v208;
            }

            if ((v210 & 0x80u) == 0)
            {
              v67 = v210;
            }

            else
            {
              v67 = v209;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, v66, v67);
            std::ios_base::getloc((v15 + *(*v15 - 24)));
            v68 = std::locale::use_facet(&__p, &std::ctype<char>::id);
            (v68->__vftable[2].~facet_0)(v68, 10);
            std::locale::~locale(&__p);
            std::ostream::put();
            std::ostream::flush();
            ++v187;
          }

          else if (NodeType == 1)
          {
            v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Index=", 6);
            if ((v195.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v38 = &v195;
            }

            else
            {
              v38 = v195.__r_.__value_.__r.__words[0];
            }

            if ((v195.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v39 = HIBYTE(v195.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v39 = v195.__r_.__value_.__l.__size_;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, v38, v39);
            *(v178 + *(*v19 - 24)) = 15;
            v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Type=", 5);
            convertNodeTypeForDisplay(1u, &__p);
            if ((v192 & 0x80u) == 0)
            {
              v41 = &__p;
            }

            else
            {
              v41 = __p;
            }

            if ((v192 & 0x80u) == 0)
            {
              v42 = v192;
            }

            else
            {
              v42 = v191;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, v41, v42);
            if (v192 < 0)
            {
              operator delete(__p);
            }

            *(v178 + *(*v19 - 24)) = 15;
            v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Rloc16=", 7);
            if (v199 >= 0)
            {
              v44 = &v197;
            }

            else
            {
              v44 = v197;
            }

            if (v199 >= 0)
            {
              v45 = HIBYTE(v199);
            }

            else
            {
              v45 = v198;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, v44, v45);
            *(v178 + *(*v19 - 24)) = 10;
            v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Name=", 5);
            if ((v203 & 0x80u) == 0)
            {
              v47 = &v201;
            }

            else
            {
              v47 = v201;
            }

            if ((v203 & 0x80u) == 0)
            {
              v48 = v203;
            }

            else
            {
              v48 = v202;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, v47, v48);
            *(v178 + *(*v19 - 24)) = 10;
            v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "IpAddr=", 7);
            if ((v210 & 0x80u) == 0)
            {
              v50 = &v208;
            }

            else
            {
              v50 = v208;
            }

            if ((v210 & 0x80u) == 0)
            {
              v51 = v210;
            }

            else
            {
              v51 = v209;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, v50, v51);
            std::ios_base::getloc((v19 + *(*v19 - 24)));
            v52 = std::locale::use_facet(&__p, &std::ctype<char>::id);
            (v52->__vftable[2].~facet_0)(v52, 10);
            std::locale::~locale(&__p);
            std::ostream::put();
            std::ostream::flush();
            ++WORD2(v188);
          }

          else
          {
            v85 = &v197;
            if (v199 < 0)
            {
              v85 = v197;
            }

            if ((v203 & 0x80u) == 0)
            {
              v86 = &v201;
            }

            else
            {
              v86 = v201;
            }

            if ((v210 & 0x80u) == 0)
            {
              v87 = &v208;
            }

            else
            {
              v87 = v208;
            }

            fprintf(__stderrp, "Invalid Nodetype for Resolved service rloc16=%s name=%s ipAddr=%s\n", v85, v86, v87);
          }
        }

        else
        {
          v69 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Index=", 6);
          if ((v194.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v70 = &v194;
          }

          else
          {
            v70 = v194.__r_.__value_.__r.__words[0];
          }

          if ((v194.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v71 = HIBYTE(v194.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v71 = v194.__r_.__value_.__l.__size_;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, v70, v71);
          *(v180 + *(*v18 - 24)) = 15;
          v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Type=", 5);
          convertNodeTypeForDisplay(0, &__p);
          if ((v192 & 0x80u) == 0)
          {
            v73 = &__p;
          }

          else
          {
            v73 = __p;
          }

          if ((v192 & 0x80u) == 0)
          {
            v74 = v192;
          }

          else
          {
            v74 = v191;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, v73, v74);
          if (v192 < 0)
          {
            operator delete(__p);
          }

          *(v180 + *(*v18 - 24)) = 15;
          v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Rloc16=", 7);
          if (v199 >= 0)
          {
            v76 = &v197;
          }

          else
          {
            v76 = v197;
          }

          if (v199 >= 0)
          {
            v77 = HIBYTE(v199);
          }

          else
          {
            v77 = v198;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v75, v76, v77);
          *(v180 + *(*v18 - 24)) = 10;
          v78 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Name=", 5);
          if ((v203 & 0x80u) == 0)
          {
            v79 = &v201;
          }

          else
          {
            v79 = v201;
          }

          if ((v203 & 0x80u) == 0)
          {
            v80 = v203;
          }

          else
          {
            v80 = v202;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, v79, v80);
          *(v180 + *(*v18 - 24)) = 10;
          v81 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "IpAddr=", 7);
          if ((v210 & 0x80u) == 0)
          {
            v82 = &v208;
          }

          else
          {
            v82 = v208;
          }

          if ((v210 & 0x80u) == 0)
          {
            v83 = v210;
          }

          else
          {
            v83 = v209;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, v82, v83);
          std::ios_base::getloc((v18 + *(*v18 - 24)));
          v84 = std::locale::use_facet(&__p, &std::ctype<char>::id);
          (v84->__vftable[2].~facet_0)(v84, 10);
          std::locale::~locale(&__p);
          std::ostream::put();
          std::ostream::flush();
          LOWORD(v188) = v188 + 1;
        }

        if (SHIBYTE(v193.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v193.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v194.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v195.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v195.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v196.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v196.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v199) < 0)
        {
          operator delete(v197);
        }

        if (v212 < 0)
        {
          operator delete(v211);
        }

        if (v210 < 0)
        {
          operator delete(v208);
        }

        if (v207 < 0)
        {
          operator delete(v206);
        }

        if (v205 < 0)
        {
          operator delete(v204);
        }

        if (v203 < 0)
        {
          operator delete(v201);
        }

        ++v14;
        v13 = *v13;
      }

      while (v13);
      v4 = v176;
      v5 = v177;
    }

    else
    {
      v188 = 0;
      v187 = 0;
      v14 = 0;
    }

    std::ios_base::getloc((v6 + *(*v6 - 24)));
    v88 = std::locale::use_facet(&v200, &std::ctype<char>::id);
    (v88->__vftable[2].~facet_0)(v88, 10);
    std::locale::~locale(&v200);
    std::ostream::put();
    std::ostream::flush();
    v89 = v5 + 355;
    std::ios_base::getloc((v5 + *(v5[355] - 24) + 2840));
    v90 = std::locale::use_facet(&v200, &std::ctype<char>::id);
    (v90->__vftable[2].~facet_0)(v90, 10);
    std::locale::~locale(&v200);
    std::ostream::put();
    std::ostream::flush();
    v91 = v5 + 426;
    std::ios_base::getloc((v5 + *(v5[426] - 24) + 3408));
    v92 = std::locale::use_facet(&v200, &std::ctype<char>::id);
    (v92->__vftable[2].~facet_0)(v92, 10);
    std::locale::~locale(&v200);
    std::ostream::put();
    std::ostream::flush();
    v93 = v5 + 284;
    std::ios_base::getloc((v5 + *(v5[284] - 24) + 2272));
    v94 = std::locale::use_facet(&v200, &std::ctype<char>::id);
    (v94->__vftable[2].~facet_0)(v94, 10);
    std::locale::~locale(&v200);
    std::ostream::put();
    std::ostream::flush();
    v95 = v4[11];
    if (v95)
    {
      v181 = v5 + 429;
      v183 = v5 + 287;
      v179 = v5 + 358;
      do
      {
        MyServiceType::MyServiceType(&v200, (v95 + 5));
        v197 = 0;
        v198 = 0;
        v199 = 0;
        convertUint16ToHexString(v213, &v197);
        std::to_string(&v196, v14);
        padString(&v196, 5uLL, 32);
        std::to_string(&v195, WORD2(v188));
        padString(&v196, 5uLL, 32);
        std::to_string(&v194, v188);
        padString(&v196, 5uLL, 32);
        std::to_string(&v193, v187);
        padString(&v196, 5uLL, 32);
        padString(&v201, 0x32uLL, 32);
        padString(&v208, 0x32uLL, 32);
        v96 = getNodeType(v213, a2, a3, a4);
        v97 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Index=", 6);
        if ((v196.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v98 = &v196;
        }

        else
        {
          v98 = v196.__r_.__value_.__r.__words[0];
        }

        if ((v196.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v99 = HIBYTE(v196.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v99 = v196.__r_.__value_.__l.__size_;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v97, v98, v99);
        *(v189 + *(*v6 - 24)) = 15;
        v100 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Type=", 5);
        convertNodeTypeForDisplay(v96, &__p);
        if ((v192 & 0x80u) == 0)
        {
          v101 = &__p;
        }

        else
        {
          v101 = __p;
        }

        if ((v192 & 0x80u) == 0)
        {
          v102 = v192;
        }

        else
        {
          v102 = v191;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v100, v101, v102);
        if (v192 < 0)
        {
          operator delete(__p);
        }

        *(v189 + *(*v6 - 24)) = 15;
        v103 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Rloc16=", 7);
        if (v199 >= 0)
        {
          v104 = &v197;
        }

        else
        {
          v104 = v197;
        }

        if (v199 >= 0)
        {
          v105 = HIBYTE(v199);
        }

        else
        {
          v105 = v198;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v103, v104, v105);
        *(v189 + *(*v6 - 24)) = 10;
        v106 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Name=", 5);
        if ((v203 & 0x80u) == 0)
        {
          v107 = &v201;
        }

        else
        {
          v107 = v201;
        }

        if ((v203 & 0x80u) == 0)
        {
          v108 = v203;
        }

        else
        {
          v108 = v202;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v106, v107, v108);
        *(v189 + *(*v6 - 24)) = 10;
        v109 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "IpAddr=", 7);
        if ((v210 & 0x80u) == 0)
        {
          v110 = &v208;
        }

        else
        {
          v110 = v208;
        }

        if ((v210 & 0x80u) == 0)
        {
          v111 = v210;
        }

        else
        {
          v111 = v209;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v109, v110, v111);
        std::ios_base::getloc((v6 + *(*v6 - 24)));
        v112 = std::locale::use_facet(&__p, &std::ctype<char>::id);
        (v112->__vftable[2].~facet_0)(v112, 10);
        std::locale::~locale(&__p);
        std::ostream::put();
        std::ostream::flush();
        if (v96)
        {
          if (v96 == 2)
          {
            v129 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v93, "Index=", 6);
            if ((v193.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v130 = &v193;
            }

            else
            {
              v130 = v193.__r_.__value_.__r.__words[0];
            }

            if ((v193.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v131 = HIBYTE(v193.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v131 = v193.__r_.__value_.__l.__size_;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v129, v130, v131);
            *(v183 + *(*v93 - 24)) = 15;
            v132 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v93, "Type=", 5);
            convertNodeTypeForDisplay(2u, &__p);
            if ((v192 & 0x80u) == 0)
            {
              v133 = &__p;
            }

            else
            {
              v133 = __p;
            }

            if ((v192 & 0x80u) == 0)
            {
              v134 = v192;
            }

            else
            {
              v134 = v191;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v132, v133, v134);
            if (v192 < 0)
            {
              operator delete(__p);
            }

            *(v183 + *(*v93 - 24)) = 15;
            v135 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v93, "Rloc16=", 7);
            if (v199 >= 0)
            {
              v136 = &v197;
            }

            else
            {
              v136 = v197;
            }

            if (v199 >= 0)
            {
              v137 = HIBYTE(v199);
            }

            else
            {
              v137 = v198;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v135, v136, v137);
            *(v183 + *(*v93 - 24)) = 10;
            v138 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v93, "Name=", 5);
            if ((v203 & 0x80u) == 0)
            {
              v139 = &v201;
            }

            else
            {
              v139 = v201;
            }

            if ((v203 & 0x80u) == 0)
            {
              v140 = v203;
            }

            else
            {
              v140 = v202;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v138, v139, v140);
            *(v183 + *(*v93 - 24)) = 10;
            v141 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v93, "IpAddr=", 7);
            if ((v210 & 0x80u) == 0)
            {
              v142 = &v208;
            }

            else
            {
              v142 = v208;
            }

            if ((v210 & 0x80u) == 0)
            {
              v143 = v210;
            }

            else
            {
              v143 = v209;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v141, v142, v143);
            std::ios_base::getloc((v93 + *(*v93 - 24)));
            v144 = std::locale::use_facet(&__p, &std::ctype<char>::id);
            (v144->__vftable[2].~facet_0)(v144, 10);
            std::locale::~locale(&__p);
            std::ostream::put();
            std::ostream::flush();
            ++v187;
          }

          else if (v96 == 1)
          {
            v113 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v89, "Index=", 6);
            if ((v195.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v114 = &v195;
            }

            else
            {
              v114 = v195.__r_.__value_.__r.__words[0];
            }

            if ((v195.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v115 = HIBYTE(v195.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v115 = v195.__r_.__value_.__l.__size_;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v113, v114, v115);
            *(v179 + *(*v89 - 24)) = 15;
            v116 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v89, "Type=", 5);
            convertNodeTypeForDisplay(1u, &__p);
            if ((v192 & 0x80u) == 0)
            {
              v117 = &__p;
            }

            else
            {
              v117 = __p;
            }

            if ((v192 & 0x80u) == 0)
            {
              v118 = v192;
            }

            else
            {
              v118 = v191;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v116, v117, v118);
            if (v192 < 0)
            {
              operator delete(__p);
            }

            *(v179 + *(*v89 - 24)) = 15;
            v119 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v89, "Rloc16=", 7);
            if (v199 >= 0)
            {
              v120 = &v197;
            }

            else
            {
              v120 = v197;
            }

            if (v199 >= 0)
            {
              v121 = HIBYTE(v199);
            }

            else
            {
              v121 = v198;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v119, v120, v121);
            *(v179 + *(*v89 - 24)) = 10;
            v122 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v89, "Name=", 5);
            if ((v203 & 0x80u) == 0)
            {
              v123 = &v201;
            }

            else
            {
              v123 = v201;
            }

            if ((v203 & 0x80u) == 0)
            {
              v124 = v203;
            }

            else
            {
              v124 = v202;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v122, v123, v124);
            *(v179 + *(*v89 - 24)) = 10;
            v125 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v89, "IpAddr=", 7);
            if ((v210 & 0x80u) == 0)
            {
              v126 = &v208;
            }

            else
            {
              v126 = v208;
            }

            if ((v210 & 0x80u) == 0)
            {
              v127 = v210;
            }

            else
            {
              v127 = v209;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v125, v126, v127);
            std::ios_base::getloc((v89 + *(*v89 - 24)));
            v128 = std::locale::use_facet(&__p, &std::ctype<char>::id);
            (v128->__vftable[2].~facet_0)(v128, 10);
            std::locale::~locale(&__p);
            std::ostream::put();
            std::ostream::flush();
            ++WORD2(v188);
          }

          else
          {
            v161 = &v197;
            if (v199 < 0)
            {
              v161 = v197;
            }

            if ((v203 & 0x80u) == 0)
            {
              v162 = &v201;
            }

            else
            {
              v162 = v201;
            }

            if ((v210 & 0x80u) == 0)
            {
              v163 = &v208;
            }

            else
            {
              v163 = v208;
            }

            fprintf(__stderrp, "Invalid Nodetype for Unresolved service rloc16=%s name=%s ipAddr=%s\n", v161, v162, v163);
          }
        }

        else
        {
          v145 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v91, "Index=", 6);
          if ((v194.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v146 = &v194;
          }

          else
          {
            v146 = v194.__r_.__value_.__r.__words[0];
          }

          if ((v194.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v147 = HIBYTE(v194.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v147 = v194.__r_.__value_.__l.__size_;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v145, v146, v147);
          *(v181 + *(*v91 - 24)) = 15;
          v148 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v91, "Type=", 5);
          convertNodeTypeForDisplay(0, &__p);
          if ((v192 & 0x80u) == 0)
          {
            v149 = &__p;
          }

          else
          {
            v149 = __p;
          }

          if ((v192 & 0x80u) == 0)
          {
            v150 = v192;
          }

          else
          {
            v150 = v191;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v148, v149, v150);
          if (v192 < 0)
          {
            operator delete(__p);
          }

          *(v181 + *(*v91 - 24)) = 15;
          v151 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v91, "Rloc16=", 7);
          if (v199 >= 0)
          {
            v152 = &v197;
          }

          else
          {
            v152 = v197;
          }

          if (v199 >= 0)
          {
            v153 = HIBYTE(v199);
          }

          else
          {
            v153 = v198;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v151, v152, v153);
          *(v181 + *(*v91 - 24)) = 10;
          v154 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v91, "Name=", 5);
          if ((v203 & 0x80u) == 0)
          {
            v155 = &v201;
          }

          else
          {
            v155 = v201;
          }

          if ((v203 & 0x80u) == 0)
          {
            v156 = v203;
          }

          else
          {
            v156 = v202;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v154, v155, v156);
          *(v181 + *(*v91 - 24)) = 10;
          v157 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v91, "IpAddr=", 7);
          if ((v210 & 0x80u) == 0)
          {
            v158 = &v208;
          }

          else
          {
            v158 = v208;
          }

          if ((v210 & 0x80u) == 0)
          {
            v159 = v210;
          }

          else
          {
            v159 = v209;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v157, v158, v159);
          std::ios_base::getloc((v91 + *(*v91 - 24)));
          v160 = std::locale::use_facet(&__p, &std::ctype<char>::id);
          (v160->__vftable[2].~facet_0)(v160, 10);
          std::locale::~locale(&__p);
          std::ostream::put();
          std::ostream::flush();
          LOWORD(v188) = v188 + 1;
        }

        if (SHIBYTE(v193.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v193.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v194.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v195.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v195.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v196.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v196.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v199) < 0)
        {
          operator delete(v197);
        }

        if (v212 < 0)
        {
          operator delete(v211);
        }

        if (v210 < 0)
        {
          operator delete(v208);
        }

        if (v207 < 0)
        {
          operator delete(v206);
        }

        if (v205 < 0)
        {
          operator delete(v204);
        }

        if (v203 < 0)
        {
          operator delete(v201);
        }

        ++v14;
        v95 = *v95;
      }

      while (v95);
    }

    std::ios_base::getloc((v89 + *(*v89 - 24)));
    v164 = std::locale::use_facet(&v200, &std::ctype<char>::id);
    (v164->__vftable[2].~facet_0)(v164, 10);
    std::locale::~locale(&v200);
    std::ostream::put();
    std::ostream::flush();
    std::ios_base::getloc((v89 + *(*v89 - 24)));
    v165 = std::locale::use_facet(&v200, &std::ctype<char>::id);
    (v165->__vftable[2].~facet_0)(v165, 10);
    std::locale::~locale(&v200);
    std::ostream::put();
    std::ostream::flush();
    v166 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v89, "NOTE:  Rloc16=0xffff implies the mapping from RLOC->Ipv6Addr->Hostname cannot be determined", 91);
    std::ios_base::getloc((v166 + *(*v166 - 24)));
    v167 = std::locale::use_facet(&v200, &std::ctype<char>::id);
    (v167->__vftable[2].~facet_0)(v167, 10);
    std::locale::~locale(&v200);
    std::ostream::put();
    std::ostream::flush();
    std::ios_base::getloc((v91 + *(*v91 - 24)));
    v168 = std::locale::use_facet(&v200, &std::ctype<char>::id);
    (v168->__vftable[2].~facet_0)(v168, 10);
    std::locale::~locale(&v200);
    std::ostream::put();
    std::ostream::flush();
    std::ios_base::getloc((v91 + *(*v91 - 24)));
    v169 = std::locale::use_facet(&v200, &std::ctype<char>::id);
    (v169->__vftable[2].~facet_0)(v169, 10);
    std::locale::~locale(&v200);
    std::ostream::put();
    std::ostream::flush();
    v170 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v91, "NOTE:  Rloc16=0xffff implies the mapping from RLOC->Ipv6Addr->Hostname cannot be determined", 91);
    std::ios_base::getloc((v170 + *(*v170 - 24)));
    v171 = std::locale::use_facet(&v200, &std::ctype<char>::id);
    (v171->__vftable[2].~facet_0)(v171, 10);
    std::locale::~locale(&v200);
    std::ostream::put();
    std::ostream::flush();
    std::ios_base::getloc((v93 + *(*v93 - 24)));
    v172 = std::locale::use_facet(&v200, &std::ctype<char>::id);
    (v172->__vftable[2].~facet_0)(v172, 10);
    std::locale::~locale(&v200);
    std::ostream::put();
    std::ostream::flush();
    std::ios_base::getloc((v93 + *(*v93 - 24)));
    v173 = std::locale::use_facet(&v200, &std::ctype<char>::id);
    (v173->__vftable[2].~facet_0)(v173, 10);
    std::locale::~locale(&v200);
    std::ostream::put();
    std::ostream::flush();
    v174 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v93, "NOTE:  Rloc16=0xffff implies the mapping from RLOC->Ipv6Addr->Hostname cannot be determined", 91);
    std::ios_base::getloc((v174 + *(*v174 - 24)));
    v175 = std::locale::use_facet(&v200, &std::ctype<char>::id);
    (v175->__vftable[2].~facet_0)(v175, 10);
    std::locale::~locale(&v200);
    std::ostream::put();
    return std::ostream::flush();
  }

  return result;
}

uint64_t NetworkDiagnosticsLogger::insertNetworkInformationToDot(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[498];
  v6 = *(v5 + 6648);
  v7 = *(v5 + 6656);
  v8 = *(v5 + 6658);
  v9 = *(v5 + 6660);
  v120 = a1[497];
  v119 = *(v120 + 112);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v130);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v131, "0x", 2);
  v125[0] = 48;
  v11 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v10, v125);
  v12 = *v11;
  *(v11 + *(*v11 - 24) + 24) = 4;
  *(v11 + *(v12 - 24) + 8) = *(v11 + *(v12 - 24) + 8) & 0xFFFFFFB5 | 8;
  std::ostream::operator<<();
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v125);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v126, "0x", 2);
  v124.__r_.__value_.__s.__data_[0] = 48;
  v14 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, &v124);
  v15 = *v14;
  *(v14 + *(*v14 - 24) + 24) = 16;
  *(v14 + *(v15 - 24) + 8) = *(v14 + *(v15 - 24) + 8) & 0xFFFFFFB5 | 8;
  std::ostream::operator<<();
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "ThreadNwInfo [pos=0,0! shape=plaintext fontsize=14 margin=0 width=0 height=0 label=<<table title=Thread NW Info border=0 cellborder=1 cellspacing=0 color=black>\\  ", 186);
  std::ios_base::getloc((v16 + *(*v16 - 24)));
  v17 = std::locale::use_facet(&v124, &std::ctype<char>::id);
  (v17->__vftable[2].~facet_0)(v17, 10);
  std::locale::~locale(&v124);
  std::ostream::put();
  std::ostream::flush();
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "<tr><td align=left>Time</td><td align=left>", 47);
  v19 = *(v5 + 23);
  if (v19 >= 0)
  {
    v20 = v5;
  }

  else
  {
    v20 = *v5;
  }

  if (v19 >= 0)
  {
    v21 = *(v5 + 23);
  }

  else
  {
    v21 = *(v5 + 8);
  }

  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v20, v21);
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "</td></tr> \\ ", 13);
  std::ios_base::getloc((v23 + *(*v23 - 24)));
  v24 = std::locale::use_facet(&v124, &std::ctype<char>::id);
  (v24->__vftable[2].~facet_0)(v24, 10);
  std::locale::~locale(&v124);
  std::ostream::put();
  std::ostream::flush();
  v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "<tr><td align=left>NetworkName</td><td align=left>", 54);
  v26 = *(v5 + 6687);
  if (v26 >= 0)
  {
    v27 = v5 + 6664;
  }

  else
  {
    v27 = *(v5 + 6664);
  }

  if (v26 >= 0)
  {
    v28 = *(v5 + 6687);
  }

  else
  {
    v28 = *(v5 + 6672);
  }

  v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v27, v28);
  v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "</td></tr> \\ ", 13);
  std::ios_base::getloc((v30 + *(*v30 - 24)));
  v31 = std::locale::use_facet(&v124, &std::ctype<char>::id);
  (v31->__vftable[2].~facet_0)(v31, 10);
  std::locale::~locale(&v124);
  std::ostream::put();
  std::ostream::flush();
  v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "<tr><td align=left>Channel</td><td align=left>", 50);
  std::to_string(&v124, v8);
  if ((v124.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v33 = &v124;
  }

  else
  {
    v33 = v124.__r_.__value_.__r.__words[0];
  }

  if ((v124.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v124.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v124.__r_.__value_.__l.__size_;
  }

  v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, v33, size);
  v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "</td></tr> \\ ", 13);
  std::ios_base::getloc((v36 + *(*v36 - 24)));
  v37 = std::locale::use_facet(&v135, &std::ctype<char>::id);
  (v37->__vftable[2].~facet_0)(v37, 10);
  std::locale::~locale(&v135);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v124.__r_.__value_.__l.__data_);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "<tr><td align=left>PANID</td><td align=left>", 48);
  v38 = std::ostream::operator<<();
  v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "</td></tr> \\ ", 13);
  std::ios_base::getloc((v39 + *(*v39 - 24)));
  v40 = std::locale::use_facet(&v124, &std::ctype<char>::id);
  (v40->__vftable[2].~facet_0)(v40, 10);
  std::locale::~locale(&v124);
  std::ostream::put();
  std::ostream::flush();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "<tr><td align=left>XPANID</td><td align=left>", 49);
  v41 = std::ostream::operator<<();
  v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "</td></tr> \\ ", 13);
  std::ios_base::getloc((v42 + *(*v42 - 24)));
  v43 = std::locale::use_facet(&v124, &std::ctype<char>::id);
  (v43->__vftable[2].~facet_0)(v43, 10);
  std::locale::~locale(&v124);
  std::ostream::put();
  std::ostream::flush();
  v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "<tr><td align=left>PartitionID</td><td align=left>", 54);
  std::to_string(&v124, v9);
  if ((v124.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v45 = &v124;
  }

  else
  {
    v45 = v124.__r_.__value_.__r.__words[0];
  }

  if ((v124.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v46 = HIBYTE(v124.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v46 = v124.__r_.__value_.__l.__size_;
  }

  v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, v45, v46);
  v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, "</td></tr> \\ ", 13);
  std::ios_base::getloc((v48 + *(*v48 - 24)));
  v49 = std::locale::use_facet(&v135, &std::ctype<char>::id);
  (v49->__vftable[2].~facet_0)(v49, 10);
  std::locale::~locale(&v135);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v124.__r_.__value_.__l.__data_);
  }

  v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "<tr><td align=left>MLPrefix</td><td align=left>", 51);
  v51 = *(v5 + 6711);
  if (v51 >= 0)
  {
    v52 = v5 + 6688;
  }

  else
  {
    v52 = *(v5 + 6688);
  }

  if (v51 >= 0)
  {
    v53 = *(v5 + 6711);
  }

  else
  {
    v53 = *(v5 + 6696);
  }

  v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, v52, v53);
  v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, "/64", 3);
  v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, "</td></tr> \\ ", 13);
  std::ios_base::getloc((v56 + *(*v56 - 24)));
  v57 = std::locale::use_facet(&v124, &std::ctype<char>::id);
  (v57->__vftable[2].~facet_0)(v57, 10);
  std::locale::~locale(&v124);
  std::ostream::put();
  std::ostream::flush();
  v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "<tr><td align=left>TotalRouters</td><td href=", 48);
  v59 = *(v5 + 319);
  if (v59 >= 0)
  {
    v60 = v5 + 296;
  }

  else
  {
    v60 = *(v5 + 296);
  }

  if (v59 >= 0)
  {
    v61 = *(v5 + 319);
  }

  else
  {
    v61 = *(v5 + 304);
  }

  v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, v60, v61);
  v63 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, " align=left>", 15);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, "<U><FONT color=blue>", 22);
  v64 = *(a2 + 24);
  v65 = std::ostream::operator<<();
  v66 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, "</FONT></U> </td></tr> \\ ", 25);
  std::ios_base::getloc((v66 + *(*v66 - 24)));
  v67 = std::locale::use_facet(&v124, &std::ctype<char>::id);
  (v67->__vftable[2].~facet_0)(v67, 10);
  std::locale::~locale(&v124);
  std::ostream::put();
  std::ostream::flush();
  v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "<tr><td align=left>TotalFEDs</td><td href=", 45);
  v69 = *(v5 + 271);
  if (v69 >= 0)
  {
    v70 = v5 + 248;
  }

  else
  {
    v70 = *(v5 + 248);
  }

  if (v69 >= 0)
  {
    v71 = *(v5 + 271);
  }

  else
  {
    v71 = *(v5 + 256);
  }

  v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, v70, v71);
  v73 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, " align=left>", 15);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, "<U><FONT color=blue>", 22);
  v74 = *(a3 + 24);
  v75 = std::ostream::operator<<();
  v76 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v75, "</FONT></U> </td></tr> \\ ", 25);
  std::ios_base::getloc((v76 + *(*v76 - 24)));
  v77 = std::locale::use_facet(&v124, &std::ctype<char>::id);
  (v77->__vftable[2].~facet_0)(v77, 10);
  std::locale::~locale(&v124);
  std::ostream::put();
  std::ostream::flush();
  v78 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "<tr><td align=left>TotalSEDs</td><td href=", 45);
  v79 = *(v5 + 295);
  if (v79 >= 0)
  {
    v80 = v5 + 272;
  }

  else
  {
    v80 = *(v5 + 272);
  }

  if (v79 >= 0)
  {
    v81 = *(v5 + 295);
  }

  else
  {
    v81 = *(v5 + 280);
  }

  v82 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, v80, v81);
  v83 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v82, " align=left>", 15);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v83, "<U><FONT color=blue>", 22);
  v84 = *(a4 + 24);
  v85 = std::ostream::operator<<();
  v86 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v85, "</FONT></U> </td></tr> \\ ", 25);
  std::ios_base::getloc((v86 + *(*v86 - 24)));
  v87 = std::locale::use_facet(&v124, &std::ctype<char>::id);
  (v87->__vftable[2].~facet_0)(v87, 10);
  std::locale::~locale(&v124);
  std::ostream::put();
  std::ostream::flush();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "<tr><td align=left>TotalNodes</td><td align=left>", 53);
  v88 = *(a3 + 24) + *(a2 + 24);
  v89 = *(a4 + 24);
  v90 = std::ostream::operator<<();
  v91 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v90, "</td></tr> \\ ", 13);
  std::ios_base::getloc((v91 + *(*v91 - 24)));
  v92 = std::locale::use_facet(&v124, &std::ctype<char>::id);
  (v92->__vftable[2].~facet_0)(v92, 10);
  std::locale::~locale(&v124);
  std::ostream::put();
  std::ostream::flush();
  v93 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "<tr><td align=left>TotalServicesDiscovered</td><td href=", 59);
  v94 = *(v5 + 199);
  if (v94 >= 0)
  {
    v95 = v5 + 176;
  }

  else
  {
    v95 = *(v5 + 176);
  }

  if (v94 >= 0)
  {
    v96 = *(v5 + 199);
  }

  else
  {
    v96 = *(v5 + 184);
  }

  v97 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v93, v95, v96);
  v98 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v97, " align=left>", 15);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v98, "<U><FONT color=blue>", 22);
  v99 = (*(v120 + 16) - *(v120 + 8)) >> 3;
  v100 = std::ostream::operator<<();
  v101 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v100, "</FONT></U> </td></tr> \\ ", 25);
  std::ios_base::getloc((v101 + *(*v101 - 24)));
  v102 = std::locale::use_facet(&v124, &std::ctype<char>::id);
  (v102->__vftable[2].~facet_0)(v102, 10);
  std::locale::~locale(&v124);
  std::ostream::put();
  std::ostream::flush();
  v103 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "<tr><td align=left>TotalServicesResolved</td><td href=", 57);
  v104 = *(v5 + 223);
  if (v104 >= 0)
  {
    v105 = v5 + 200;
  }

  else
  {
    v105 = *(v5 + 200);
  }

  if (v104 >= 0)
  {
    v106 = *(v5 + 223);
  }

  else
  {
    v106 = *(v5 + 208);
  }

  v107 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v103, v105, v106);
  v108 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v107, " align=left>", 15);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v108, "<U><FONT color=blue>", 22);
  v109 = std::ostream::operator<<();
  v110 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v109, "</FONT></U> </td></tr> \\ ", 25);
  std::ios_base::getloc((v110 + *(*v110 - 24)));
  v111 = std::locale::use_facet(&v124, &std::ctype<char>::id);
  (v111->__vftable[2].~facet_0)(v111, 10);
  std::locale::~locale(&v124);
  std::ostream::put();
  std::ostream::flush();
  v112 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "</table>>];", 11);
  std::ios_base::getloc((v112 + *(*v112 - 24)));
  v113 = std::locale::use_facet(&v124, &std::ctype<char>::id);
  (v113->__vftable[2].~facet_0)(v113, 10);
  std::locale::~locale(&v124);
  std::ostream::put();
  std::ostream::flush();
  v117 = v115;
  v126 = v115;
  if (v129 < 0)
  {
    operator delete(v128[7].__locale_);
  }

  std::locale::~locale(v128);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  v130[0] = v114;
  *(v130 + *(v114 - 24)) = v116;
  v131 = v117;
  if (v134 < 0)
  {
    operator delete(v133[7].__locale_);
  }

  std::locale::~locale(v133);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100230350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::locale a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a20);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a55);
  _Unwind_Resume(a1);
}

uint64_t NetworkDiagnosticsLogger::initialize(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, const char *a7, const char *a8, uint64_t *a9, uint64_t *a10, uint64_t a11)
{
  v17 = a2;
  if (*(a2 + 23) < 0)
  {
    v19 = *a2;
  }

  std::ofstream::open();
  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
LABEL_4:
    v20 = __stderrp;
    if (*(v17 + 23) >= 0)
    {
      v21 = v17;
    }

    else
    {
      v21 = *v17;
    }

LABEL_43:
    fprintf(v20, "ERR to open %s\n", v21);
    return 0;
  }

  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "Current Time:", 13);
  v23 = *(a11 + 23);
  if (v23 >= 0)
  {
    v24 = a11;
  }

  else
  {
    v24 = *a11;
  }

  if (v23 >= 0)
  {
    v25 = *(a11 + 23);
  }

  else
  {
    v25 = *(a11 + 8);
  }

  v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v24, v25);
  std::ios_base::getloc((v26 + *(*v26 - 24)));
  v27 = std::locale::use_facet(&v77, &std::ctype<char>::id);
  (v27->__vftable[2].~facet_0)(v27, 10);
  std::locale::~locale(&v77);
  std::ostream::put();
  std::ostream::flush();
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v28 = std::locale::use_facet(&v77, &std::ctype<char>::id);
  (v28->__vftable[2].~facet_0)(v28, 10);
  std::locale::~locale(&v77);
  std::ostream::put();
  std::ostream::flush();
  v29 = a1 + 71;
  if (*(a3 + 23) < 0)
  {
    v30 = *a3;
  }

  std::ofstream::open();
  if ((*(v29 + *(a1[71] - 24) + 32) & 5) != 0)
  {
    v20 = __stderrp;
    if (*(a3 + 23) >= 0)
    {
      v21 = a3;
    }

    else
    {
      v21 = *a3;
    }

    goto LABEL_43;
  }

  v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1 + 71, "Current Time:", 13);
  v32 = *(a11 + 23);
  if (v32 >= 0)
  {
    v33 = a11;
  }

  else
  {
    v33 = *a11;
  }

  if (v32 >= 0)
  {
    v34 = *(a11 + 23);
  }

  else
  {
    v34 = *(a11 + 8);
  }

  v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, v33, v34);
  std::ios_base::getloc((v35 + *(*v35 - 24)));
  v36 = std::locale::use_facet(&v77, &std::ctype<char>::id);
  (v36->__vftable[2].~facet_0)(v36, 10);
  std::locale::~locale(&v77);
  std::ostream::put();
  std::ostream::flush();
  std::ios_base::getloc((v29 + *(*v29 - 24)));
  v37 = std::locale::use_facet(&v77, &std::ctype<char>::id);
  (v37->__vftable[2].~facet_0)(v37, 10);
  std::locale::~locale(&v77);
  std::ostream::put();
  std::ostream::flush();
  v38 = a1 + 142;
  if (a6[23] < 0)
  {
    v39 = *a6;
  }

  std::ofstream::open();
  if ((*(v38 + *(a1[142] - 24) + 32) & 5) != 0)
  {
    goto LABEL_28;
  }

  v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1 + 142, "Current Time:", 13);
  v41 = *(a11 + 23);
  if (v41 >= 0)
  {
    v42 = a11;
  }

  else
  {
    v42 = *a11;
  }

  if (v41 >= 0)
  {
    v43 = *(a11 + 23);
  }

  else
  {
    v43 = *(a11 + 8);
  }

  v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, v42, v43);
  std::ios_base::getloc((v44 + *(*v44 - 24)));
  v45 = std::locale::use_facet(&v77, &std::ctype<char>::id);
  (v45->__vftable[2].~facet_0)(v45, 10);
  std::locale::~locale(&v77);
  std::ostream::put();
  std::ostream::flush();
  std::ios_base::getloc((v38 + *(*v38 - 24)));
  v46 = std::locale::use_facet(&v77, &std::ctype<char>::id);
  (v46->__vftable[2].~facet_0)(v46, 10);
  std::locale::~locale(&v77);
  std::ostream::put();
  std::ostream::flush();
  if (a7[23] < 0)
  {
    v47 = *a7;
  }

  std::ofstream::open();
  if ((*(a1 + *(a1[213] - 24) + 1736) & 5) != 0)
  {
    v20 = __stderrp;
    if (a7[23] >= 0)
    {
      v21 = a7;
    }

    else
    {
      v21 = *a7;
    }

    goto LABEL_43;
  }

  v17 = a9;
  v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1 + 213, "Current Time:", 13);
  v50 = *(a11 + 23);
  if (v50 >= 0)
  {
    v51 = a11;
  }

  else
  {
    v51 = *a11;
  }

  if (v50 >= 0)
  {
    v52 = *(a11 + 23);
  }

  else
  {
    v52 = *(a11 + 8);
  }

  v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, v51, v52);
  std::endl[abi:ne200100]<char,std::char_traits<char>>(v53);
  std::endl[abi:ne200100]<char,std::char_traits<char>>(a1 + 213);
  if (*(a9 + 23) < 0)
  {
    v54 = *a9;
  }

  std::ofstream::open();
  if ((*(a1 + *(a1[355] - 24) + 2872) & 5) != 0)
  {
    goto LABEL_4;
  }

  a6 = a10;
  v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1 + 355, "Current Time:", 13);
  v56 = *(a11 + 23);
  if (v56 >= 0)
  {
    v57 = a11;
  }

  else
  {
    v57 = *a11;
  }

  if (v56 >= 0)
  {
    v58 = *(a11 + 23);
  }

  else
  {
    v58 = *(a11 + 8);
  }

  v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, v57, v58);
  std::endl[abi:ne200100]<char,std::char_traits<char>>(v59);
  std::endl[abi:ne200100]<char,std::char_traits<char>>(a1 + 355);
  if (*(a10 + 23) < 0)
  {
    v60 = *a10;
  }

  std::ofstream::open();
  if ((*(a1 + *(a1[426] - 24) + 3440) & 5) != 0)
  {
LABEL_28:
    v20 = __stderrp;
    if (a6[23] >= 0)
    {
      v21 = a6;
    }

    else
    {
      v21 = *a6;
    }

    goto LABEL_43;
  }

  v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1 + 426, "Current Time:", 13);
  v62 = *(a11 + 23);
  if (v62 >= 0)
  {
    v63 = a11;
  }

  else
  {
    v63 = *a11;
  }

  if (v62 >= 0)
  {
    v64 = *(a11 + 23);
  }

  else
  {
    v64 = *(a11 + 8);
  }

  v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, v63, v64);
  std::endl[abi:ne200100]<char,std::char_traits<char>>(v65);
  std::endl[abi:ne200100]<char,std::char_traits<char>>(a1 + 426);
  if (a8[23] < 0)
  {
    v66 = *a8;
  }

  std::ofstream::open();
  if ((*(a1 + *(a1[284] - 24) + 2304) & 5) != 0)
  {
    v20 = __stderrp;
    if (a8[23] >= 0)
    {
      v21 = a8;
    }

    else
    {
      v21 = *a8;
    }

    goto LABEL_43;
  }

  v67 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1 + 284, "Current Time:", 13);
  v68 = *(a11 + 23);
  if (v68 >= 0)
  {
    v69 = a11;
  }

  else
  {
    v69 = *a11;
  }

  if (v68 >= 0)
  {
    v70 = *(a11 + 23);
  }

  else
  {
    v70 = *(a11 + 8);
  }

  v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, v69, v70);
  std::endl[abi:ne200100]<char,std::char_traits<char>>(v71);
  std::endl[abi:ne200100]<char,std::char_traits<char>>(a1 + 284);
  v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "digraph {", 9);
  std::endl[abi:ne200100]<char,std::char_traits<char>>(v72);
  if ((*(a1[498] + 48) & 1) == 0)
  {
    v73 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "concentrate=true;", 17);
    std::endl[abi:ne200100]<char,std::char_traits<char>>(v73);
  }

  v74 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "forcelabels=true;", 17);
  std::endl[abi:ne200100]<char,std::char_traits<char>>(v74);
  v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "rankdir=LR;", 11);
  std::endl[abi:ne200100]<char,std::char_traits<char>>(v75);
  v76 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "node [shape=box, color=red];", 28);
  std::endl[abi:ne200100]<char,std::char_traits<char>>(v76);
  NetworkDiagnosticsLogger::insertLegendToDotFile(a1, a4, a5, a3);
  return 1;
}

uint64_t NetworkDiagnosticsLogger::insertLegendToDotFile(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1 + 142, "digraph {", 9);
  std::ios_base::getloc((v8 + *(*v8 - 24)));
  v9 = std::locale::use_facet(&v76, &std::ctype<char>::id);
  (v9->__vftable[2].~facet_0)(v9, 10);
  std::locale::~locale(&v76);
  std::ostream::put();
  std::ostream::flush();
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1 + 142, "forcelabels=true;", 17);
  std::ios_base::getloc((v10 + *(*v10 - 24)));
  v11 = std::locale::use_facet(&v76, &std::ctype<char>::id);
  (v11->__vftable[2].~facet_0)(v11, 10);
  std::locale::~locale(&v76);
  std::ostream::put();
  std::ostream::flush();
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1 + 142, "rankdir=LR;", 11);
  std::ios_base::getloc((v12 + *(*v12 - 24)));
  v13 = std::locale::use_facet(&v76, &std::ctype<char>::id);
  (v13->__vftable[2].~facet_0)(v13, 10);
  std::locale::~locale(&v76);
  std::ostream::put();
  std::ostream::flush();
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1 + 142, "rank=same;", 10);
  std::ios_base::getloc((v14 + *(*v14 - 24)));
  v15 = std::locale::use_facet(&v76, &std::ctype<char>::id);
  (v15->__vftable[2].~facet_0)(v15, 10);
  std::locale::~locale(&v76);
  std::ostream::put();
  std::ostream::flush();
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "node [shape=box, color=black];", 30);
  std::ios_base::getloc((v16 + *(*v16 - 24)));
  v17 = std::locale::use_facet(&v76, &std::ctype<char>::id);
  (v17->__vftable[2].~facet_0)(v17, 10);
  std::locale::~locale(&v76);
  std::ostream::put();
  std::ostream::flush();
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1 + 142, "color = black;", 14);
  std::ios_base::getloc((v18 + *(*v18 - 24)));
  v19 = std::locale::use_facet(&v76, &std::ctype<char>::id);
  (v19->__vftable[2].~facet_0)(v19, 10);
  std::locale::~locale(&v76);
  std::ostream::put();
  std::ostream::flush();
  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1 + 142, "Router [shape=box] [color=blue];", 36);
  std::ios_base::getloc((v20 + *(*v20 - 24)));
  v21 = std::locale::use_facet(&v76, &std::ctype<char>::id);
  (v21->__vftable[2].~facet_0)(v21, 10);
  std::locale::~locale(&v76);
  std::ostream::put();
  std::ostream::flush();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1 + 142, "Leader [shape=box] [color=green]", 36);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1 + 142, " [xlabel=<<font color=violet> <B> <I>", 39);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1 + 142, "  DNS Info", 12);
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1 + 142, "</I></B></font>>];", 18);
  std::ios_base::getloc((v22 + *(*v22 - 24)));
  v23 = std::locale::use_facet(&v76, &std::ctype<char>::id);
  (v23->__vftable[2].~facet_0)(v23, 10);
  std::locale::~locale(&v76);
  std::ostream::put();
  std::ostream::flush();
  v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1 + 142, "ExpandBox [style=invis]", 23);
  std::ios_base::getloc((v24 + *(*v24 - 24)));
  v25 = std::locale::use_facet(&v76, &std::ctype<char>::id);
  (v25->__vftable[2].~facet_0)(v25, 10);
  std::locale::~locale(&v76);
  std::ostream::put();
  std::ostream::flush();
  v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1 + 142, "FED [shape=circle color=red];", 31);
  std::ios_base::getloc((v26 + *(*v26 - 24)));
  v27 = std::locale::use_facet(&v76, &std::ctype<char>::id);
  (v27->__vftable[2].~facet_0)(v27, 10);
  std::locale::~locale(&v76);
  std::ostream::put();
  std::ostream::flush();
  v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1 + 142, "SED [shape=circle color=orange];", 34);
  std::ios_base::getloc((v28 + *(*v28 - 24)));
  v29 = std::locale::use_facet(&v76, &std::ctype<char>::id);
  (v29->__vftable[2].~facet_0)(v29, 10);
  std::locale::~locale(&v76);
  std::ostream::put();
  std::ostream::flush();
  v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1 + 142, "Router -> Leader [style=invis]", 30);
  std::ios_base::getloc((v30 + *(*v30 - 24)));
  v31 = std::locale::use_facet(&v76, &std::ctype<char>::id);
  (v31->__vftable[2].~facet_0)(v31, 10);
  std::locale::~locale(&v76);
  std::ostream::put();
  std::ostream::flush();
  v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1 + 142, "Leader -> FED [style=invis]", 27);
  std::ios_base::getloc((v32 + *(*v32 - 24)));
  v33 = std::locale::use_facet(&v76, &std::ctype<char>::id);
  (v33->__vftable[2].~facet_0)(v33, 10);
  std::locale::~locale(&v76);
  std::ostream::put();
  std::ostream::flush();
  v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1 + 142, "FED -> SED [style=invis]", 24);
  std::ios_base::getloc((v34 + *(*v34 - 24)));
  v35 = std::locale::use_facet(&v76, &std::ctype<char>::id);
  (v35->__vftable[2].~facet_0)(v35, 10);
  std::locale::~locale(&v76);
  std::ostream::put();
  std::ostream::flush();
  v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1 + 142, "Parent [style=invis]", 20);
  std::ios_base::getloc((v36 + *(*v36 - 24)));
  v37 = std::locale::use_facet(&v76, &std::ctype<char>::id);
  (v37->__vftable[2].~facet_0)(v37, 10);
  std::locale::~locale(&v76);
  std::ostream::put();
  std::ostream::flush();
  v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1 + 142, "Child  [style=invis];", 21);
  std::ios_base::getloc((v38 + *(*v38 - 24)));
  v39 = std::locale::use_facet(&v76, &std::ctype<char>::id);
  (v39->__vftable[2].~facet_0)(v39, 10);
  std::locale::~locale(&v76);
  std::ostream::put();
  std::ostream::flush();
  v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1 + 142, "Parent -> Child [label=\\l parent-child link color=brown];", 61);
  std::ios_base::getloc((v40 + *(*v40 - 24)));
  v41 = std::locale::use_facet(&v76, &std::ctype<char>::id);
  (v41->__vftable[2].~facet_0)(v41, 10);
  std::locale::~locale(&v76);
  std::ostream::put();
  std::ostream::flush();
  v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1 + 142, "}", 1);
  std::ios_base::getloc((v42 + *(*v42 - 24)));
  v43 = std::locale::use_facet(&v76, &std::ctype<char>::id);
  (v43->__vftable[2].~facet_0)(v43, 10);
  std::locale::~locale(&v76);
  std::ostream::put();
  std::ostream::flush();
  v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "Invis [label=        style=invis];", 36);
  std::ios_base::getloc((v44 + *(*v44 - 24)));
  v45 = std::locale::use_facet(&v76, &std::ctype<char>::id);
  (v45->__vftable[2].~facet_0)(v45, 10);
  std::locale::~locale(&v76);
  std::ostream::put();
  std::ostream::flush();
  v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "Legend [ tooltip=Display legend shape=plaintext fontsize=14 href=", 70);
  v47 = *(a3 + 23);
  if (v47 >= 0)
  {
    v48 = a3;
  }

  else
  {
    v48 = *a3;
  }

  if (v47 >= 0)
  {
    v49 = *(a3 + 23);
  }

  else
  {
    v49 = *(a3 + 8);
  }

  v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, v48, v49);
  v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, " label=<<font color=blue> <U> Legend </U></font>>][color=blue];", 66);
  std::ios_base::getloc((v51 + *(*v51 - 24)));
  v52 = std::locale::use_facet(&v76, &std::ctype<char>::id);
  (v52->__vftable[2].~facet_0)(v52, 10);
  std::locale::~locale(&v76);
  std::ostream::put();
  std::ostream::flush();
  v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "Tlvs [ tooltip=Display debug log shape=plaintext fontsize=14 href=", 71);
  v54 = *(a4 + 23);
  if (v54 >= 0)
  {
    v55 = a4;
  }

  else
  {
    v55 = *a4;
  }

  if (v54 >= 0)
  {
    v56 = *(a4 + 23);
  }

  else
  {
    v56 = *(a4 + 8);
  }

  v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, v55, v56);
  v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, " label=<<font color=blue> <U> Tlvs </U></font>>][color=blue];", 64);
  std::ios_base::getloc((v58 + *(*v58 - 24)));
  v59 = std::locale::use_facet(&v76, &std::ctype<char>::id);
  (v59->__vftable[2].~facet_0)(v59, 10);
  std::locale::~locale(&v76);
  std::ostream::put();
  std::ostream::flush();
  v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "Output [ tooltip=Display execution script output shape=plaintext fontsize=14 href=", 87);
  v61 = *(a2 + 23);
  if (v61 >= 0)
  {
    v62 = a2;
  }

  else
  {
    v62 = *a2;
  }

  if (v61 >= 0)
  {
    v63 = *(a2 + 23);
  }

  else
  {
    v63 = *(a2 + 8);
  }

  v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, v62, v63);
  v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, " label=<<font color=blue> <U> Output </U></font>>][color=blue];", 66);
  std::ios_base::getloc((v65 + *(*v65 - 24)));
  v66 = std::locale::use_facet(&v76, &std::ctype<char>::id);
  (v66->__vftable[2].~facet_0)(v66, 10);
  std::locale::~locale(&v76);
  std::ostream::put();
  std::ostream::flush();
  v67 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "Invis  -> Legend [style=invis];", 31);
  std::ios_base::getloc((v67 + *(*v67 - 24)));
  v68 = std::locale::use_facet(&v76, &std::ctype<char>::id);
  (v68->__vftable[2].~facet_0)(v68, 10);
  std::locale::~locale(&v76);
  std::ostream::put();
  std::ostream::flush();
  v69 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "Legend -> Tlvs  [style=invis];", 30);
  std::ios_base::getloc((v69 + *(*v69 - 24)));
  v70 = std::locale::use_facet(&v76, &std::ctype<char>::id);
  (v70->__vftable[2].~facet_0)(v70, 10);
  std::locale::~locale(&v76);
  std::ostream::put();
  std::ostream::flush();
  v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "Tlvs  -> Output [style=invis];", 30);
  std::ios_base::getloc((v71 + *(*v71 - 24)));
  v72 = std::locale::use_facet(&v76, &std::ctype<char>::id);
  (v72->__vftable[2].~facet_0)(v72, 10);
  std::locale::~locale(&v76);
  std::ostream::put();
  std::ostream::flush();
  v73 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "Output -> Counters [style=invis];", 33);
  std::ios_base::getloc((v73 + *(*v73 - 24)));
  v74 = std::locale::use_facet(&v76, &std::ctype<char>::id);
  (v74->__vftable[2].~facet_0)(v74, 10);
  std::locale::~locale(&v76);
  std::ostream::put();
  return std::ostream::flush();
}

uint64_t **NetworkDiagnosticsLogger::output_addr16tlv_to_file(uint64_t a1, unsigned __int16 a2, uint64_t a3, uint64_t a4, _DWORD *a5, void *a6, void *a7)
{
  v23 = a2;
  v12 = (a1 + 568);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a1 + 568), "Rloc16:", 7);
  v14 = *(a3 + 23);
  if (v14 >= 0)
  {
    v15 = a3;
  }

  else
  {
    v15 = *a3;
  }

  if (v14 >= 0)
  {
    v16 = *(a3 + 23);
  }

  else
  {
    v16 = *(a3 + 8);
  }

  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v15, v16);
  std::ios_base::getloc((v17 + *(*v17 - 24)));
  v18 = std::locale::use_facet(&v24, &std::ctype<char>::id);
  (v18->__vftable[2].~facet_0)(v18, 10);
  std::locale::~locale(&v24);
  std::ostream::put();
  std::ostream::flush();
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "------- ", 8);
  std::ios_base::getloc((v19 + *(*v19 - 24)));
  v20 = std::locale::use_facet(&v24, &std::ctype<char>::id);
  (v20->__vftable[2].~facet_0)(v20, 10);
  std::locale::~locale(&v24);
  std::ostream::put();
  std::ostream::flush();
  std::ios_base::getloc((v12 + *(*v12 - 24)));
  v21 = std::locale::use_facet(&v24, &std::ctype<char>::id);
  (v21->__vftable[2].~facet_0)(v21, 10);
  std::locale::~locale(&v24);
  std::ostream::put();
  result = std::ostream::flush();
  if (*a5 != 2)
  {
    if (*a5 != 1)
    {
      return result;
    }

    if ((a2 & 0x1FF) != 0)
    {
      a6 = a7;
    }
  }

  return std::__hash_table<unsigned short,std::hash<unsigned short>,std::equal_to<unsigned short>,std::allocator<unsigned short>>::__emplace_unique_key_args<unsigned short,unsigned short const&>(a6, &v23);
}

void NetworkDiagnosticsLogger::output_ipAddrListTlv_to_file(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t a6, void *a7, void *a8, void *a9)
{
  v12 = (a1 + 568);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a1 + 568), "IpAddressList: ", 15);
  std::ios_base::getloc((v13 + *(*v13 - 24)));
  v14 = std::locale::use_facet(v71, &std::ctype<char>::id);
  (v14->__vftable[2].~facet_0)(v14, 10);
  std::locale::~locale(v71);
  std::ostream::put();
  std::ostream::flush();
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "-------------- ", 15);
  std::ios_base::getloc((v15 + *(*v15 - 24)));
  v16 = std::locale::use_facet(v71, &std::ctype<char>::id);
  (v16->__vftable[2].~facet_0)(v16, 10);
  std::locale::~locale(v71);
  std::ostream::put();
  std::ostream::flush();
  v17 = *(a3 + 24);
  memset(&__str, 0, sizeof(__str));
  if (v17)
  {
    v19 = (v17 + 1);
    v18 = *(v17 + 1);
    if (v18 == 255)
    {
      v20 = (bswap32(*(v17 + 2)) >> 20);
      if (!v20)
      {
        goto LABEL_7;
      }
    }

    else
    {
      if (v18 <= 0xF)
      {
LABEL_7:
        fprintf(__stderrp, "ERR: Ip Address List is empty for Rloc=%x\n", a2);
        goto LABEL_8;
      }

      v20 = v18 >> 4;
    }

    v27 = 0;
    v23 = 0;
    v60 = v20;
    v28 = a5;
    while (1)
    {
      v29 = v19 + 3;
      if (*v19 != 255)
      {
        v29 = v19 + 1;
      }

      memset(__s, 0, 46);
      inet_ntop(30, &v29[16 * v27], __s, 0x2Eu);
      std::string::basic_string[abi:ne200100]<0>(v71, __s);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      __str = *v71;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Index:", 6);
      v30 = std::ostream::operator<<();
      v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, " Ipv6 Address: ", 15);
      v32 = strlen(__s);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, __s, v32);
      if (v23)
      {
        goto LABEL_50;
      }

      if (*v28 == 1)
      {
        break;
      }

      v38 = std::__hash_table<std::__hash_value_type<std::string,MyServiceType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MyServiceType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MyServiceType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MyServiceType>>>::find<std::string>(a8, &__str.__r_.__value_.__l.__data_);
      if (!v38)
      {
        v23 = 0;
        goto LABEL_51;
      }

      MyServiceType::MyServiceType(v71, (v38 + 5));
      if (v76 != a2)
      {
        v76 = a2;
      }

      v39 = a6;
      MyServiceType::operator=((v38 + 5), v71);
      v40 = a9[1] - *a9;
      if (v40)
      {
        v41 = 0xF0F0F0F0F0F0F0F1 * (v40 >> 3);
        v42 = *a9 + 80;
        v43 = 1;
        do
        {
          v44 = *(v42 + 23);
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = __str.__r_.__value_.__l.__size_;
          }

          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_str = &__str;
          }

          else
          {
            p_str = __str.__r_.__value_.__r.__words[0];
          }

          if (v44 >= 0)
          {
            v47 = *(v42 + 23);
          }

          else
          {
            v47 = *(v42 + 8);
          }

          if (v44 >= 0)
          {
            v48 = v42;
          }

          else
          {
            v48 = *v42;
          }

          if (v47 >= size)
          {
            v49 = size;
          }

          else
          {
            v49 = v47;
          }

          v50 = memcmp(p_str, v48, v49);
          v51 = v47 == size && v50 == 0;
          if (v51 && *(v42 + 52) != a2)
          {
            *(v42 + 52) = a2;
          }

          v42 += 136;
        }

        while (v41 > v43++);
      }

      v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " Name:", 6);
      if (v71[31] >= 0)
      {
        v54 = &v71[8];
      }

      else
      {
        v54 = *&v71[8];
      }

      if (v71[31] >= 0)
      {
        v55 = v71[31];
      }

      else
      {
        v55 = *&v71[16];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, v54, v55);
      std::string::operator=(a4, &v71[8]);
      a6 = v39;
      v28 = a5;
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      if (SHIBYTE(v74) < 0)
      {
        operator delete(*(&v73 + 1));
      }

      if (SBYTE7(v73) < 0)
      {
        operator delete(v72);
      }

      if ((v71[55] & 0x80000000) != 0)
      {
        operator delete(*&v71[32]);
      }

      if ((v71[31] & 0x80000000) != 0)
      {
        v37 = *&v71[8];
LABEL_115:
        operator delete(v37);
      }

LABEL_50:
      v23 = 1;
LABEL_51:
      std::ios_base::getloc((v12 + *(*v12 - 24)));
      v33 = std::locale::use_facet(v71, &std::ctype<char>::id);
      (v33->__vftable[2].~facet_0)(v33, 10);
      std::locale::~locale(v71);
      std::ostream::put();
      std::ostream::flush();
      if (++v27 == v60)
      {
        goto LABEL_9;
      }
    }

    gethostname(v71, 0x400uLL);
    v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " Name:", 6);
    v35 = strlen(v71);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, v71, v35);
    std::string::basic_string[abi:ne200100]<0>(v61, v71);
    if (*(a4 + 23) < 0)
    {
      operator delete(*a4);
    }

    *a4 = *v61;
    *(a4 + 16) = *&v61[16];
    if (!a6)
    {
      goto LABEL_50;
    }

    *v61 = 0;
    memset(&v61[8], 0, 48);
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    memset(v65, 0, sizeof(v65));
    v66 = -1;
    std::string::operator=((&v63 + 8), &__str);
    std::string::operator=(v65, a4);
    v66 = a2;
    std::string::operator=(&v61[8], a4);
    strcpy(v70, "CANNOT DETRMINE");
    std::string::basic_string[abi:ne200100]<0>(&v68, v70);
    if (SBYTE7(v63) < 0)
    {
      operator delete(v62);
    }

    v62 = v68;
    *&v63 = v69;
    std::string::basic_string[abi:ne200100]<0>(&v68, v70);
    if ((v61[55] & 0x80000000) != 0)
    {
      operator delete(*&v61[32]);
    }

    *&v61[32] = v68;
    *&v61[48] = v69;
    *&v65[24] = 0;
    *&v68 = &__str;
    v36 = std::__hash_table<std::__hash_value_type<std::string,MyServiceType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MyServiceType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MyServiceType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MyServiceType>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a7, &__str.__r_.__value_.__l.__data_);
    MyServiceType::operator=((v36 + 5), v61);
    if ((v65[23] & 0x80000000) != 0)
    {
      operator delete(*v65);
    }

    if (SHIBYTE(v64) < 0)
    {
      operator delete(*(&v63 + 1));
    }

    if (SBYTE7(v63) < 0)
    {
      operator delete(v62);
    }

    if ((v61[55] & 0x80000000) != 0)
    {
      operator delete(*&v61[32]);
    }

    if ((v61[31] & 0x80000000) == 0)
    {
      goto LABEL_50;
    }

    v37 = *&v61[8];
    goto LABEL_115;
  }

  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "ERR: IP Address List information not present", 44);
  std::ios_base::getloc((v21 + *(*v21 - 24)));
  v22 = std::locale::use_facet(v71, &std::ctype<char>::id);
  (v22->__vftable[2].~facet_0)(v22, 10);
  std::locale::~locale(v71);
  std::ostream::put();
  std::ostream::flush();
LABEL_8:
  v23 = 0;
LABEL_9:
  if ((v23 & 1) == 0 && a6)
  {
    memset(v61, 0, 24);
    convertUint16ToHexString(a2, v61);
    if (v61[23] >= 0)
    {
      v24 = v61;
    }

    else
    {
      v24 = *v61;
    }

    fprintf(__stderrp, "WARN: output_ipAddrListTlv_to_file sDsnInfo has no entry possibly bec not reg to SRP proxy. Cannot determine hostname for Rloc16=%s\n", v24);
    strcpy(&v68, "CANNOT DETRMINE");
    *v71 = 0;
    memset(&v71[8], 0, 48);
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    memset(__p, 0, sizeof(__p));
    v76 = -1;
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      if (__str.__r_.__value_.__l.__size_)
      {
        v25 = __str.__r_.__value_.__r.__words[0];
        goto LABEL_19;
      }
    }

    else if (*(&__str.__r_.__value_.__s + 23))
    {
      v25 = &__str;
LABEL_19:
      fprintf(__stderrp, "WARN Entered address for dnsInfo unresolved service=%s rloc16=%x\n", v25, a2);
      std::string::operator=((&v73 + 8), &__str);
    }

    std::string::basic_string[abi:ne200100]<0>(__s, &v68);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    *__p = __s[0];
    *&__p[16] = *&__s[1];
    v76 = a2;
    std::string::basic_string[abi:ne200100]<0>(__s, &v68);
    if ((v71[31] & 0x80000000) != 0)
    {
      operator delete(*&v71[8]);
    }

    *&v71[8] = __s[0];
    *&v71[24] = *&__s[1];
    std::string::basic_string[abi:ne200100]<0>(__s, &v68);
    if (SBYTE7(v73) < 0)
    {
      operator delete(v72);
    }

    v72 = __s[0];
    *&v73 = *&__s[1];
    std::string::basic_string[abi:ne200100]<0>(__s, &v68);
    if ((v71[55] & 0x80000000) != 0)
    {
      operator delete(*&v71[32]);
    }

    *&v71[32] = __s[0];
    *&v71[48] = *&__s[1];
    *&__p[24] = 0;
    *&__s[0] = &__str;
    v26 = std::__hash_table<std::__hash_value_type<std::string,MyServiceType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MyServiceType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MyServiceType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MyServiceType>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a7, &__str.__r_.__value_.__l.__data_);
    MyServiceType::operator=((v26 + 5), v71);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (SHIBYTE(v74) < 0)
    {
      operator delete(*(&v73 + 1));
    }

    if (SBYTE7(v73) < 0)
    {
      operator delete(v72);
    }

    if ((v71[55] & 0x80000000) != 0)
    {
      operator delete(*&v71[32]);
    }

    if ((v71[31] & 0x80000000) != 0)
    {
      operator delete(*&v71[8]);
    }

    if ((v61[23] & 0x80000000) != 0)
    {
      operator delete(*v61);
    }
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_100232840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, std::locale a51)
{
  MyServiceType::~MyServiceType(&a51.__locale_);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  _Unwind_Resume(a1);
}

uint64_t NetworkDiagnosticsLogger::output_node_to_dot_file(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, void *a8, void *a9, void *a10)
{
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "", 1);
  v17 = *(a3 + 23);
  if (v17 >= 0)
  {
    v18 = a3;
  }

  else
  {
    v18 = *a3;
  }

  if (v17 >= 0)
  {
    v19 = *(a3 + 23);
  }

  else
  {
    v19 = *(a3 + 8);
  }

  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v18, v19);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "", 1);
  if (getRloc16FromRouterId(a7) == a2)
  {
    v21 = " [shape=box] [color=green] ";
LABEL_9:
    v22 = a1;
    v23 = 27;
    goto LABEL_10;
  }

  NodeType = getNodeType(a2, a8, a9, a10);
  if (NodeType)
  {
    if (NodeType == 1)
    {
      v21 = " [shape=circle] [color=red] ";
      v22 = a1;
      v23 = 28;
    }

    else
    {
      if (NodeType != 2)
      {
        v21 = " [shape=box] [color=black] ";
        goto LABEL_9;
      }

      v21 = " [shape=box] [color=blue] ";
      v22 = a1;
      v23 = 26;
    }
  }

  else
  {
    v21 = " [shape=circle] [color=orange] ";
    v22 = a1;
    v23 = 31;
  }

LABEL_10:
  v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v21, v23);
  std::ios_base::getloc((v24 + *(*v24 - 24)));
  v25 = std::locale::use_facet(&v36, &std::ctype<char>::id);
  (v25->__vftable[2].~facet_0)(v25, 10);
  std::locale::~locale(&v36);
  std::ostream::put();
  std::ostream::flush();
  v26 = *(a5 + 23);
  if ((v26 & 0x80u) != 0)
  {
    v26 = *(a5 + 8);
  }

  if (v26)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "[ xlabel=<<font color=violet> <B> <I>", 39);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, " ", 2);
    v28 = *(a5 + 23);
    if (v28 >= 0)
    {
      v29 = a5;
    }

    else
    {
      v29 = *a5;
    }

    if (v28 >= 0)
    {
      v30 = *(a5 + 23);
    }

    else
    {
      v30 = *(a5 + 8);
    }

    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v29, v30);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "", 1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "</I></B></font>> ]", 18);
  }

  v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ";", 1);
  std::ios_base::getloc((v32 + *(*v32 - 24)));
  v33 = std::locale::use_facet(&v36, &std::ctype<char>::id);
  (v33->__vftable[2].~facet_0)(v33, 10);
  std::locale::~locale(&v36);
  std::ostream::put();
  return std::ostream::flush();
}

uint64_t NetworkDiagnosticsLogger::output_routeTlv_to_file(void *a1, int a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = *(a4 + 8);
  v7 = a1 + 71;
  std::ios_base::getloc((a1 + *(a1[71] - 24) + 568));
  v8 = std::locale::use_facet(&v72, &std::ctype<char>::id);
  (v8->__vftable[2].~facet_0)(v8, 10);
  std::locale::~locale(&v72);
  std::ostream::put();
  std::ostream::flush();
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Route: ", 7);
  std::ios_base::getloc((v9 + *(*v9 - 24)));
  v10 = std::locale::use_facet(&v72, &std::ctype<char>::id);
  (v10->__vftable[2].~facet_0)(v10, 10);
  std::locale::~locale(&v72);
  std::ostream::put();
  std::ostream::flush();
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "------ ", 7);
  std::ios_base::getloc((v11 + *(*v11 - 24)));
  v12 = std::locale::use_facet(&v72, &std::ctype<char>::id);
  (v12->__vftable[2].~facet_0)(v12, 10);
  std::locale::~locale(&v72);
  std::ostream::put();
  std::ostream::flush();
  if (v6)
  {
    v13 = *(v6 + 1);
    if (v13 == 255)
    {
      v13 = bswap32(*(v6 + 2)) >> 16;
    }

    if (v13 <= 8)
    {
      v66 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "ERR: Route information not valid", 32);
      std::ios_base::getloc((v66 + *(*v66 - 24)));
      v67 = std::locale::use_facet(&v72, &std::ctype<char>::id);
      (v67->__vftable[2].~facet_0)(v67, 10);
    }

    else
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "RouterSequenceId:", 17);
      v14 = *(v6 + 2);
      v15 = std::ostream::operator<<();
      std::ios_base::getloc((v15 + *(*v15 - 24)));
      v16 = std::locale::use_facet(&v72, &std::ctype<char>::id);
      (v16->__vftable[2].~facet_0)(v16, 10);
      std::locale::~locale(&v72);
      std::ostream::put();
      std::ostream::flush();
      std::ios_base::getloc((v15 + *(*v15 - 24)));
      v17 = std::locale::use_facet(&v72, &std::ctype<char>::id);
      (v17->__vftable[2].~facet_0)(v17, 10);
      std::locale::~locale(&v72);
      std::ostream::put();
      std::ostream::flush();
      v18 = 0;
      v19 = 0;
      v20 = v6 + 3;
      v21 = v6 + 11;
      do
      {
        if (((*(v20 + (v18 >> 3)) << (v18 & 7)) & 0x80) != 0)
        {
          v72.__locale_ = 0;
          v73 = 0;
          v74 = 0;
          Rloc16FromRouterId = getRloc16FromRouterId(v18);
          v23 = Rloc16FromRouterId;
          convertUint16ToHexString(Rloc16FromRouterId, &v72);
          v24 = *(v21 + v19);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "RouteId:", 8);
          v25 = std::ostream::operator<<();
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, ",  ", 3);
          v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Rloc16:", 7);
          if (v74 >= 0)
          {
            locale = &v72;
          }

          else
          {
            locale = v72.__locale_;
          }

          if (v74 >= 0)
          {
            v28 = HIBYTE(v74);
          }

          else
          {
            v28 = v73;
          }

          v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, locale, v28);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, ",  ", 3);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Cost:", 5);
          v30 = std::ostream::operator<<();
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, ",  ", 3);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "LQIn:", 5);
          v31 = std::ostream::operator<<();
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, ",  ", 3);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "LQOut:", 6);
          v32 = (v24 >> 6);
          v33 = std::ostream::operator<<();
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, ",  ", 3);
          std::ios_base::getloc((v7 + *(*v7 - 24)));
          v34 = std::locale::use_facet(&v75, &std::ctype<char>::id);
          (v34->__vftable[2].~facet_0)(v34, 10);
          std::locale::~locale(&v75);
          std::ostream::put();
          std::ostream::flush();
          if (v23 != a2 && ot::LinkQualityToCost(v32) != 16)
          {
            if (a5)
            {
              v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "", 1);
              v36 = *(a3 + 23);
              if (v36 >= 0)
              {
                v37 = a3;
              }

              else
              {
                v37 = *a3;
              }

              if (v36 >= 0)
              {
                v38 = *(a3 + 23);
              }

              else
              {
                v38 = *(a3 + 8);
              }

              v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, v37, v38);
              v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "", 1);
              v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, " -> ", 4);
              v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "", 1);
              if (v74 >= 0)
              {
                v43 = &v72;
              }

              else
              {
                v43 = v72.__locale_;
              }

              if (v74 >= 0)
              {
                v44 = HIBYTE(v74);
              }

              else
              {
                v44 = v73;
              }

              v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, v43, v44);
              v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "", 1);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, "[label=", 8);
              ot::LinkQualityToCost(v32);
              v47 = std::ostream::operator<<();
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, " weight=", 10);
              ot::LinkQualityToCost(v32);
              v48 = std::ostream::operator<<();
              v49 = "     ];";
              v50 = 8;
            }

            else
            {
              v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "", 1);
              v52 = *(a3 + 23);
              if (v52 >= 0)
              {
                v53 = a3;
              }

              else
              {
                v53 = *a3;
              }

              if (v52 >= 0)
              {
                v54 = *(a3 + 23);
              }

              else
              {
                v54 = *(a3 + 8);
              }

              v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, v53, v54);
              v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, "", 1);
              v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, " -> ", 4);
              v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, "", 1);
              if (v74 >= 0)
              {
                v59 = &v72;
              }

              else
              {
                v59 = v72.__locale_;
              }

              if (v74 >= 0)
              {
                v60 = HIBYTE(v74);
              }

              else
              {
                v60 = v73;
              }

              v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, v59, v60);
              v49 = ";";
              v50 = 2;
            }

            v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, v49, v50);
            std::ios_base::getloc((v61 + *(*v61 - 24)));
            v62 = std::locale::use_facet(&v75, &std::ctype<char>::id);
            (v62->__vftable[2].~facet_0)(v62, 10);
            std::locale::~locale(&v75);
            std::ostream::put();
            std::ostream::flush();
          }

          if (SHIBYTE(v74) < 0)
          {
            operator delete(v72.__locale_);
          }

          ++v19;
        }

        ++v18;
      }

      while (v18 != 63);
      std::ios_base::getloc((v7 + *(*v7 - 24)));
      v63 = std::locale::use_facet(&v72, &std::ctype<char>::id);
      (v63->__vftable[2].~facet_0)(v63, 10);
    }
  }

  else
  {
    v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "ERR: Route information not present", 34);
    std::ios_base::getloc((v64 + *(*v64 - 24)));
    v65 = std::locale::use_facet(&v72, &std::ctype<char>::id);
    (v65->__vftable[2].~facet_0)(v65, 10);
  }

  std::locale::~locale(&v72);
  std::ostream::put();
  return std::ostream::flush();
}

uint64_t NetworkDiagnosticsLogger::output_connectivityTlv_to_file(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a1 + 568);
  std::ios_base::getloc((a1 + 568 + *(*(a1 + 568) - 24)));
  v5 = std::locale::use_facet(&v29, &std::ctype<char>::id);
  (v5->__vftable[2].~facet_0)(v5, 10);
  std::locale::~locale(&v29);
  std::ostream::put();
  std::ostream::flush();
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "ConnectivityTLV: ", 17);
  std::ios_base::getloc((v6 + *(*v6 - 24)));
  v7 = std::locale::use_facet(&v29, &std::ctype<char>::id);
  (v7->__vftable[2].~facet_0)(v7, 10);
  std::locale::~locale(&v29);
  std::ostream::put();
  std::ostream::flush();
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "----------------", 16);
  std::ios_base::getloc((v8 + *(*v8 - 24)));
  v9 = std::locale::use_facet(&v29, &std::ctype<char>::id);
  (v9->__vftable[2].~facet_0)(v9, 10);
  std::locale::~locale(&v29);
  std::ostream::put();
  std::ostream::flush();
  v10 = *(a3 + 40);
  if (!v10)
  {
    v22 = "Connectivity TLV not present";
    v23 = v4;
    v24 = 28;
LABEL_9:
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v22, v24);
    goto LABEL_10;
  }

  v11 = *(v10 + 1);
  if (v11 == 255)
  {
    v11 = bswap32(*(v10 + 2)) >> 16;
  }

  if (v11 <= 9 && v11 != 7)
  {
    v22 = "ERR: Connectivity TLV is not valid";
    v23 = v4;
    v24 = 34;
    goto LABEL_9;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "ActiveRouters = ", 16);
  v12 = *(v10 + 8);
  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "  IdSequence = ", 15);
  v13 = *(v10 + 7);
  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "  LeaderCost = ", 15);
  v14 = *(v10 + 6);
  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "  Parentpriority = ", 19);
  std::ostream::operator<<();
  std::ios_base::getloc((v4 + *(*v4 - 24)));
  v15 = std::locale::use_facet(&v29, &std::ctype<char>::id);
  (v15->__vftable[2].~facet_0)(v15, 10);
  std::locale::~locale(&v29);
  std::ostream::put();
  std::ostream::flush();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "  SEDBuffersize = ", 18);
  v16 = bswap32(*(v10 + 9));
  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "  SEDDatagramCount = ", 21);
  v17 = *(v10 + 11);
  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "  LQ1= ", 7);
  v18 = *(v10 + 5);
  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "  LQ2= ", 7);
  v19 = *(v10 + 4);
  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "  LQ3= ", 7);
  v20 = *(v10 + 3);
  std::ostream::operator<<();
  v21 = v4;
LABEL_10:
  std::ios_base::getloc((v21 + *(*v21 - 24)));
  v25 = std::locale::use_facet(&v29, &std::ctype<char>::id);
  (v25->__vftable[2].~facet_0)(v25, 10);
  std::locale::~locale(&v29);
  std::ostream::put();
  std::ostream::flush();
  std::ios_base::getloc((v4 + *(*v4 - 24)));
  v26 = std::locale::use_facet(&v29, &std::ctype<char>::id);
  (v26->__vftable[2].~facet_0)(v26, 10);
  std::locale::~locale(&v29);
  std::ostream::put();
  std::ostream::flush();
  std::ios_base::getloc((v4 + *(*v4 - 24)));
  v27 = std::locale::use_facet(&v29, &std::ctype<char>::id);
  (v27->__vftable[2].~facet_0)(v27, 10);
  std::locale::~locale(&v29);
  std::ostream::put();
  return std::ostream::flush();
}

uint64_t NetworkDiagnosticsLogger::output_macCountersTlv_to_file(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a1 + 568);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a1 + 568), "MacCountersTLV: ", 16);
  std::ios_base::getloc((v5 + *(*v5 - 24)));
  v6 = std::locale::use_facet(&v26, &std::ctype<char>::id);
  (v6->__vftable[2].~facet_0)(v6, 10);
  std::locale::~locale(&v26);
  std::ostream::put();
  std::ostream::flush();
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "----------------", 16);
  std::ios_base::getloc((v7 + *(*v7 - 24)));
  v8 = std::locale::use_facet(&v26, &std::ctype<char>::id);
  (v8->__vftable[2].~facet_0)(v8, 10);
  std::locale::~locale(&v26);
  std::ostream::put();
  std::ostream::flush();
  v9 = *(a3 + 32);
  if (!v9)
  {
    v21 = "ERR: Mac counters TLV not present";
    v22 = v4;
    v23 = 33;
LABEL_8:
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v21, v23);
    goto LABEL_9;
  }

  v10 = *(v9 + 1);
  if (v10 == 255)
  {
    v10 = bswap32(*(v9 + 2)) >> 16;
  }

  if (v10 <= 0x23)
  {
    v21 = "ERR: Mac counters TLV is not valid";
    v22 = v4;
    v23 = 34;
    goto LABEL_8;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "IfInUcastPkts = ", 16);
  v11 = *(v9 + 14);
  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "   IfOutUcastPkts = ", 20);
  v12 = *(v9 + 26);
  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "   IfInBcastPkts = ", 19);
  v13 = *(v9 + 18);
  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "   IfOutBcastPkts = ", 20);
  v14 = *(v9 + 30);
  std::ostream::operator<<();
  std::ios_base::getloc((v4 + *(*v4 - 24)));
  v15 = std::locale::use_facet(&v26, &std::ctype<char>::id);
  (v15->__vftable[2].~facet_0)(v15, 10);
  std::locale::~locale(&v26);
  std::ostream::put();
  std::ostream::flush();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "IfInErrors=", 11);
  v16 = *(v9 + 6);
  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "   IfOutErrors = ", 17);
  v17 = *(v9 + 10);
  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "   IfInDiscards = ", 18);
  v18 = *(v9 + 22);
  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "   IfOutDiscards = ", 19);
  v19 = *(v9 + 34);
  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "   IfUnknownProtos = ", 21);
  v20 = *(v9 + 2);
  std::ostream::operator<<();
LABEL_9:
  std::ios_base::getloc((v4 + *(*v4 - 24)));
  v24 = std::locale::use_facet(&v26, &std::ctype<char>::id);
  (v24->__vftable[2].~facet_0)(v24, 10);
  std::locale::~locale(&v26);
  std::ostream::put();
  return std::ostream::flush();
}

uint64_t NetworkDiagnosticsLogger::output_childTableTlv_to_file(void *a1, __int16 a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v8 = a1 + 71;
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1 + 71, "ChildTable: ", 12);
  std::ios_base::getloc((v9 + *(*v9 - 24)));
  v10 = std::locale::use_facet(&v81, &std::ctype<char>::id);
  (v10->__vftable[2].~facet_0)(v10, 10);
  std::locale::~locale(&v81);
  std::ostream::put();
  std::ostream::flush();
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "----------- ", 12);
  std::ios_base::getloc((v11 + *(*v11 - 24)));
  v12 = std::locale::use_facet(&v81, &std::ctype<char>::id);
  (v12->__vftable[2].~facet_0)(v12, 10);
  std::locale::~locale(&v81);
  std::ostream::put();
  std::ostream::flush();
  v13 = *(a4 + 16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v81);
  if (!v13)
  {
    v16 = "ERR: ChildTable information not present";
    v17 = 39;
LABEL_8:
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v16, v17);
    std::ios_base::getloc((v18 + *(*v18 - 24)));
    v19 = std::locale::use_facet(&v78, &std::ctype<char>::id);
    (v19->__vftable[2].~facet_0)(v19, 10);
    std::locale::~locale(&v78);
    std::ostream::put();
    std::ostream::flush();
    goto LABEL_53;
  }

  v14 = *(v13 + 1);
  if (v14 == 255)
  {
    v15 = bswap32(*(v13 + 2)) >> 16;
    if ((-21845 * v15) < 0x5556u)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if ((-1431655765 * v14) >= 0x55555556)
  {
LABEL_7:
    v16 = "ERR: ChildTable information not valid";
    v17 = 37;
    goto LABEL_8;
  }

  v15 = *(v13 + 1);
LABEL_10:
  v20 = 43691 * v15;
  if ((v20 >> 17))
  {
    v21 = v20 >> 17;
    v22 = v14 == 255;
    v23 = v13 + 3;
    if (!v22)
    {
      v23 = v13 + 1;
    }

    v24 = (v23 + 1);
    v25 = v21;
    do
    {
      v78.__locale_ = 0;
      v79 = 0;
      v80 = 0;
      Rloc16FromChildId = getRloc16FromChildId(a2, bswap32(*v24 & 0xFF01) >> 16);
      v77 = Rloc16FromChildId;
      convertUint16ToHexString(Rloc16FromChildId, &v78);
      if ((v24[1] & 8) != 0)
      {
        std::__hash_table<unsigned short,std::hash<unsigned short>,std::equal_to<unsigned short>,std::allocator<unsigned short>>::__emplace_unique_key_args<unsigned short,unsigned short const&>(a5, &v77);
        v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v82, "", 1);
        if (v80 >= 0)
        {
          locale = &v78;
        }

        else
        {
          locale = v78.__locale_;
        }

        if (v80 >= 0)
        {
          v36 = HIBYTE(v80);
        }

        else
        {
          v36 = v79;
        }

        v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, locale, v36);
        v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "", 1);
        v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, " [shape=circle,color=red];", 26);
        std::ios_base::getloc((v39 + *(*v39 - 24)));
        v40 = std::locale::use_facet(&v89, &std::ctype<char>::id);
        (v40->__vftable[2].~facet_0)(v40, 10);
        std::locale::~locale(&v89);
        std::ostream::put();
        std::ostream::flush();
      }

      else
      {
        std::__hash_table<unsigned short,std::hash<unsigned short>,std::equal_to<unsigned short>,std::allocator<unsigned short>>::__emplace_unique_key_args<unsigned short,unsigned short const&>(a6, &v77);
        v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v82, "", 1);
        if (v80 >= 0)
        {
          v28 = &v78;
        }

        else
        {
          v28 = v78.__locale_;
        }

        if (v80 >= 0)
        {
          v29 = HIBYTE(v80);
        }

        else
        {
          v29 = v79;
        }

        v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v28, v29);
        v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "", 1);
        v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, " [shape=circle,color=orange];", 29);
        std::ios_base::getloc((v32 + *(*v32 - 24)));
        v33 = std::locale::use_facet(&v89, &std::ctype<char>::id);
        (v33->__vftable[2].~facet_0)(v33, 10);
        std::locale::~locale(&v89);
        std::ostream::put();
        std::ostream::flush();
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "ChildId:", 8);
      v41 = bswap32(*v24 & 0xFF01);
      v42 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, ",  ", 3);
      v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "Rloc16:", 7);
      if (v80 >= 0)
      {
        v44 = &v78;
      }

      else
      {
        v44 = v78.__locale_;
      }

      if (v80 >= 0)
      {
        v45 = HIBYTE(v80);
      }

      else
      {
        v45 = v79;
      }

      v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, v44, v45);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, ",  ", 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "Mode:", 5);
      v47 = *(v24 + 2);
      v48 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, ",  ", 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "Timeout:", 8);
      v49 = *v24;
      std::ostream::operator<<();
      std::ios_base::getloc((v8 + *(*v8 - 24)));
      v50 = std::locale::use_facet(&v89, &std::ctype<char>::id);
      (v50->__vftable[2].~facet_0)(v50, 10);
      std::locale::~locale(&v89);
      std::ostream::put();
      std::ostream::flush();
      v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "", 1);
      v52 = *(a3 + 23);
      if (v52 >= 0)
      {
        v53 = a3;
      }

      else
      {
        v53 = *a3;
      }

      if (v52 >= 0)
      {
        v54 = *(a3 + 23);
      }

      else
      {
        v54 = *(a3 + 8);
      }

      v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, v53, v54);
      v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, "", 1);
      v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, " -> ", 4);
      v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, "", 1);
      if (v80 >= 0)
      {
        v59 = &v78;
      }

      else
      {
        v59 = v78.__locale_;
      }

      if (v80 >= 0)
      {
        v60 = HIBYTE(v80);
      }

      else
      {
        v60 = v79;
      }

      v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, v59, v60);
      v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, "", 1);
      v63 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "[color=brown];", 16);
      std::ios_base::getloc((v63 + *(*v63 - 24)));
      v64 = std::locale::use_facet(&v89, &std::ctype<char>::id);
      (v64->__vftable[2].~facet_0)(v64, 10);
      std::locale::~locale(&v89);
      std::ostream::put();
      std::ostream::flush();
      if (SHIBYTE(v80) < 0)
      {
        operator delete(v78.__locale_);
      }

      v24 = (v24 + 3);
      --v25;
    }

    while (v25);
  }

  else
  {
    v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "ChildTable empty", 16);
    std::ios_base::getloc((v65 + *(*v65 - 24)));
    v66 = std::locale::use_facet(&v78, &std::ctype<char>::id);
    (v66->__vftable[2].~facet_0)(v66, 10);
    std::locale::~locale(&v78);
    std::ostream::put();
    std::ostream::flush();
  }

  std::ios_base::getloc((v8 + *(*v8 - 24)));
  v67 = std::locale::use_facet(&v78, &std::ctype<char>::id);
  (v67->__vftable[2].~facet_0)(v67, 10);
  std::locale::~locale(&v78);
  std::ostream::put();
  std::ostream::flush();
LABEL_53:
  std::ios_base::getloc((v8 + *(*v8 - 24)));
  v68 = std::locale::use_facet(&v78, &std::ctype<char>::id);
  (v68->__vftable[2].~facet_0)(v68, 10);
  std::locale::~locale(&v78);
  std::ostream::put();
  std::ostream::flush();
  std::ios_base::getloc((v8 + *(*v8 - 24)));
  v69 = std::locale::use_facet(&v78, &std::ctype<char>::id);
  (v69->__vftable[2].~facet_0)(v69, 10);
  std::locale::~locale(&v78);
  std::ostream::put();
  std::ostream::flush();
  if (v85 >= v86)
  {
    v70 = v83[7](&v83);
  }

  else
  {
    v70 = v86 - v85;
  }

  if (v70)
  {
    std::ostream::operator<<();
  }

  v82 = v71;
  if (v88 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v84);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_10023482C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::locale a21)
{
  std::locale::~locale(&a15);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a21);
  _Unwind_Resume(a1);
}

void NetworkDiagnosticsLogger::output_data_to_file(void *a1, uint64_t a2, uint64_t a3, _DWORD *a4, void *a5, void *a6, void *a7)
{
  v14 = a1[497];
  v15 = a1[498];
  v16 = *(v15 + 49);
  v21 = *(v15 + 48);
  v22 = *(v15 + 50);
  v17 = *(v15 + 6640);
  v25[0] = 0;
  v25[1] = 0;
  v26 = 0;
  convertUint16ToHexString(a2, v25);
  NetworkDiagnosticsLogger::output_addr16tlv_to_file(a1, a2, v25, v18, a4, a5, a6);
  __p[0] = 0;
  __p[1] = 0;
  v24 = 0;
  NetworkDiagnosticsLogger::output_ipAddrListTlv_to_file(a1, a2, a3, __p, a4, v16, v14 + 9, v14 + 4, v14 + 1);
  NetworkDiagnosticsLogger::output_node_to_dot_file(a1, a2, v25, v19, __p, v20, v17, a5, a6, a7);
  if (*a4 != 3)
  {
    NetworkDiagnosticsLogger::output_routeTlv_to_file(a1, a2, v25, a3, v21);
    NetworkDiagnosticsLogger::output_childTableTlv_to_file(a1, a2, v25, a3, a6, a7);
  }

  if (v22)
  {
    NetworkDiagnosticsLogger::output_macCountersTlv_to_file(a1, 0, a3);
    NetworkDiagnosticsLogger::output_connectivityTlv_to_file(a1, 0, a3);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }
}

void sub_100234A40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_100234B08(_Unwind_Exception *a1)
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

void std::__hash_table<unsigned short,std::hash<unsigned short>,std::equal_to<unsigned short>,std::allocator<unsigned short>>::__rehash<true>(uint64_t a1, size_t __n)
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

      std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned int>>>>::__do_rehash<true>(a1, prime);
    }
  }
}

uint64_t ot::LinkQualityToCost(ot *this)
{
  v1 = 0x1020410u >> (8 * this);
  if (this >= 4)
  {
    LOBYTE(v1) = 16;
  }

  return v1;
}

unsigned __int8 *ot::IsMulticast(unsigned __int8 *this, const unsigned __int8 *a2)
{
  if (this)
  {
    return (*this == 255);
  }

  return this;
}

uint64_t ot::GetScope(ot *this, unsigned __int8 *a2)
{
  if (this && *this == 255)
  {
    return *(this + 1) & 0xF;
  }

  if ((*this & 0xC0FF) == 0x80FE)
  {
    return 2;
  }

  if (*this || *(this + 1))
  {
    return 14;
  }

  v4 = *(this + 2);
  result = 14;
  if (!v4)
  {
    if (*(this + 3))
    {
      return 14;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

ot *ot::IsMulticastLargerThanRealmLocal(ot *this, unsigned __int8 *a2)
{
  if (this)
  {
    if (*this == 255)
    {
      return (ot::GetScope(this, a2) > 3);
    }

    else
    {
      return 0;
    }
  }

  return this;
}

const char *ot::ErrorToString(unsigned int a1)
{
  if (a1 > 0x24)
  {
    return "UnknownErrorType";
  }

  else
  {
    return ot::ErrorToString(ot::otError)::kErrorStrings[a1];
  }
}

void startThreadDiagnosticsManagerBridge(void)
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v1 = dispatch_queue_create("wpantund.TDM.Queue", v0);
  v2 = tdm_queue;
  tdm_queue = v1;

  if (!tdm_queue)
  {
    v10 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      startThreadDiagnosticsManagerBridge(v10);
    }

    __assert_rtn("startThreadDiagnosticsManagerBridge", "ThreadDiagnosticsManagerBridge.mm", 34, "false");
  }

  v3 = [ThreadDiagnosticsManagerInstance alloc];
  v4 = [(ThreadDiagnosticsManagerInstance *)v3 init:tdm_queue];
  v5 = tdm_instance;
  tdm_instance = v4;

  v6 = tdm_instance;
  v7 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
  v8 = v7;
  if (!v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      startThreadDiagnosticsManagerBridge(v8);
    }

    __assert_rtn("startThreadDiagnosticsManagerBridge", "ThreadDiagnosticsManagerBridge.mm", 42, "false");
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "startThreadDiagnosticsManagerBridge";
    v13 = 2112;
    v14 = tdm_instance;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s: Instance is initiated : %@, signalling semaphore.", &v11, 0x16u);
  }

  dispatch_semaphore_signal(tdm_instance_init_semaphore);
  v9 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = 136315138;
    v12 = "startThreadDiagnosticsManagerBridge";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s: instance semaphore is signalled...", &v11, 0xCu);
  }
}

void threadDiagnosticsManager_MsgHandlerBridge(const std::string::value_type *a1@<X0>, xpc::object *a2@<X1>, void **a3@<X8>)
{
  if (tdm_queue)
  {
    if (!tdm_instance)
    {
      v6 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "threadDiagnosticsManager_MsgHandlerBridge";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s: instance semaphore is waiting...", &buf, 0xCu);
      }

      dispatch_semaphore_wait(tdm_instance_init_semaphore, 0xFFFFFFFFFFFFFFFFLL);
    }

    v7 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = a1;
      if (a1[23] < 0)
      {
        v8 = *a1;
      }

      xpc::object::to_string(&buf, a2);
      if (v24 >= 0)
      {
        p_buf = &buf;
      }

      else
      {
        p_buf = buf;
      }

      *v25 = 136315394;
      v26 = v8;
      v27 = 2080;
      v28 = p_buf;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "TDM Handling command for client %s with inputs %s", v25, 0x16u);
      if (v24 < 0)
      {
        operator delete(buf);
      }
    }

    v10 = tdm_instance;
    if (a1[23] < 0)
    {
      std::string::__init_copy_ctor_external(&v22, *a1, *(a1 + 1));
    }

    else
    {
      v22 = *a1;
    }

    xpc::dict::dict(&v21, a2);
    if (v10)
    {
      [v10 threadDiagnosticsManagerInstance_MsgHandler:&v22 message:&v21];
    }

    else
    {
      *a3 = 0;
    }

    v19 = v21;
    v21 = 0;

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v11 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      if (a1[23] < 0)
      {
        a1 = *a1;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = a1;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "TDM Msg received from client %s before TDM is started", &buf, 0xCu);
    }

    v12 = xpc_dictionary_create(0, 0, 0);
    v13 = v12;
    if (!v12)
    {
      v13 = xpc_null_create();
    }

    v14 = v13;
    v15 = v14;
    *a3 = v14;
    if (!v14 || xpc_get_type(v14) != &_xpc_type_dictionary)
    {
      v16 = xpc_null_create();
      v17 = *a3;
      *a3 = v16;
    }

    *&buf = a3;
    *(&buf + 1) = "ret";
    xpc::dict::object_proxy::operator=(&buf, &v20);
    v18 = v20;
    v20 = 0;
  }
}

void sub_10023549C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void startThreadDiagnosticsManagerBridge(os_log_t log)
{
  v1 = 136315138;
  v2 = "startThreadDiagnosticsManagerBridge";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: Failed to create Thread Diagnostics Manager Instance, unexpected scenario, asserting...", &v1, 0xCu);
}

{
  v1 = 136315138;
  v2 = "startThreadDiagnosticsManagerBridge";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: Failed to create tdm queue, unexpected scenario, asserting...", &v1, 0xCu);
}

void _GLOBAL__sub_I_ThreadDiagnosticsManagerBridge_mm()
{
  v0 = objc_autoreleasePoolPush();
  tdm_instance_init_semaphore = dispatch_semaphore_create(0);

  objc_autoreleasePoolPop(v0);
}

void NetworkDiagnosticsManager::NetworkDiagnosticsManager(NetworkDiagnosticsManager *this)
{
  v2 = NetworkDiagnosticsConfigDb::NetworkDiagnosticsConfigDb(this);
  NetworkDiagnosticsMdnsResolver::NetworkDiagnosticsMdnsResolver((v2 + 6752), this);
  NetworkDiagnosticsLogger::NetworkDiagnosticsLogger((this + 7456), (this + 6752), this);
  NetworkDiagnosticsReqTransmitReceive::NetworkDiagnosticsReqTransmitReceive(this + 11448, this, this + 7456);
  NetworkDiagnosticsPendingConfig::NetworkDiagnosticsPendingConfig((this + 11736));
  *(this + 11768) = 0u;
  *(this + 1473) = 0;
  *(this + 11792) = 1;
  *(this + 734) = xmmword_100448450;
  *(this + 2940) = 3610;
  *(this + 11737) = 257;
  *(this + 11739) = 1;
  *(this + 2935) = 2;
  atomic_store(1u, v3);
  *(this + 2916) = 0;
}

void sub_100235710(_Unwind_Exception *a1)
{
  NetworkDiagnosticsReqTransmitReceive::~NetworkDiagnosticsReqTransmitReceive((v1 + v4));
  NetworkDiagnosticsLogger::~NetworkDiagnosticsLogger((v1 + v3));
  NetworkDiagnosticsMdnsResolver::~NetworkDiagnosticsMdnsResolver((v1 + v2));
  NetworkDiagnosticsConfigDb::~NetworkDiagnosticsConfigDb(v1);
  _Unwind_Resume(a1);
}

uint64_t NetworkDiagnosticsManager::cleanup(uint64_t this, int a2, int a3)
{
  if ((*(this + 11792) & 1) == 0)
  {
    v5 = this;
    v6 = (this + 6736);
    if (*(this + 6736) == 1)
    {
      v7 = *(this + 6740);
      v8 = *(this + 6744);
      logging_obg = log_get_logging_obg("com.apple.wpantund.tdm", "default");
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
      {
        v10[0] = 67109888;
        v10[1] = v7;
        v11 = 1024;
        v12 = v8;
        v13 = 1024;
        v14 = a2;
        v15 = 1024;
        v16 = a3;
        _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, " NetworkDiagnosticsManager::cleanup sys diag triggerd previously. Restore old config prevSendToChildMode=%d isPrevProcessDnsFlagEnabled=%d status=%d resetFlag=%d ", v10, 0x1Au);
      }

      *(v5 + 44) = v7;
      *(v5 + 49) = v8;
      *v6 = 0;
      v6[8] = 1;
      *(v5 + 6740) = 2;
    }

    NetworkDiagnosticsReqTransmitReceive::cleanup((v5 + 11448), a2, a3);
    NetworkDiagnosticsMdnsResolver::cleanup((v5 + 6752), a2, a3);
    if (a3)
    {
      *(v5 + 11776) = *(v5 + 11768);
    }

    this = NetworkDiagnosticsConfigDb::closeFiles(v5);
    *(v5 + 11792) = 1;
  }

  return this;
}

uint64_t NetworkDiagnosticsManager::cleanupForNextIteration(NetworkDiagnosticsManager *this)
{
  if (*(this + 11696) == 1 && (!*(*(this + 1431) + 44) || *(this + 11697) == 1))
  {
    AWDMetricsClient_UpdateMetrics_Topology(*(this + 2890), *(this + 2900), *(this + 2910));
    CAMetricsClient_UpdateMetrics_Topology(*(this + 2890), *(this + 2900), *(this + 2910));
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  return NetworkDiagnosticsManager::cleanup(this, v2, 1);
}

BOOL NetworkDiagnosticsManager::handle_networkdiagnostics_response(NetworkDiagnosticsManager *this, unsigned __int8 *a2, unsigned int a3)
{
  v4 = NetworkDiagnosticsReqTransmitReceive::handle_network_diagnostics_response((this + 11448), a2, a3);
  if (v4 && *(this + 11696) == 1 && (!*(*(this + 1431) + 44) || *(this + 11697) == 1))
  {
    NetworkDiagnosticsManager::cleanupForNextIteration(this);
  }

  return v4;
}

uint64_t NetworkDiagnosticsManager::initialize(NetworkDiagnosticsManager *this)
{
  current_time(v5);
  *(this + 11792) = 0;
  NetworkDiagnosticsPendingConfig::NetworkDiagnosticsPendingConfig(v4, (this + 11736));
  if (NetworkDiagnosticsConfigDb::initialize(this, v5) && (atomic_store(0, this + 11736), NetworkDiagnosticsMdnsResolver::initialize(this + 6752, this + 176, this + 200, *(this + 6), *(this + 7), v5)))
  {
    v2 = NetworkDiagnosticsLogger::initialize(this + 932, this + 40, this + 56, this + 80, this + 104, this + 344, this + 200, this + 296, this + 31, this + 34, v5);
  }

  else
  {
    v2 = 0;
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  return v2;
}

void sub_100235AAC(_Unwind_Exception *exception_object)
{
  if (*(v1 - 17) < 0)
  {
    operator delete(*(v1 - 40));
  }

  _Unwind_Resume(exception_object);
}

void NetworkDiagnosticsManager::updatePendingConfig(NetworkDiagnosticsManager *this, char a2, int a3, char a4, int a5, int a6, int a7, int a8, unsigned int a9, unsigned int a10)
{
  v14 = this + 0x2000;
  atomic_store(0, this + 11736);
  if (a10 < 0x12D)
  {
    *(this + 734) = xmmword_100448450;
    if (a10)
    {
      *(this + 2940) = 3610;
    }

    else
    {
      *(this + 2940) = 0;
    }

    *(this + 11737) = 257;
    *(this + 11739) = 1;
    *(this + 2935) = 2;
  }

  else
  {
    *(this + 2936) = a6;
    *(this + 2937) = a7;
    *(this + 2938) = a8;
    *(this + 2939) = a9;
    *(this + 2940) = a10;
    *(this + 11738) = a3;
    *(this + 11737) = a2;
    *(this + 11739) = a4;
    *(this + 2935) = a5;
  }

  atomic_store(1u, this + 11736);
  logging_obg = log_get_logging_obg("com.apple.wpantund.tdm", "default");
  if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
  {
    v16 = *(this + 2940);
    v17 = *(this + 10);
    v18 = v14[3545];
    v19 = v14[3547];
    v20 = *(this + 2938);
    v21 = *(this + 2939);
    v22 = *(this + 2936);
    v23 = *(this + 2937);
    v24[0] = 67111424;
    v24[1] = v16;
    v25 = 1024;
    v26 = v17;
    v27 = 1024;
    v28 = a3;
    v29 = 1024;
    v30 = a5;
    v31 = 1024;
    v32 = v18;
    v33 = 1024;
    v34 = v19;
    v35 = 1024;
    v36 = v20;
    v37 = 1024;
    v38 = v21;
    v39 = 1024;
    v40 = v22;
    v41 = 1024;
    v42 = v23;
    _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "TDM: NetworkDiagnosticsManager::updatePendingConfig newPendingPeriodicity=%d curConfigPeriodicity=%d  processdns=%d sendTochildren=%d expandEdges=%d enhancedTlvReq=%d browseTimeout=%d resolveTimeout=%d routerRspTimeout=%d childRspTimeout=%d", v24, 0x3Eu);
  }
}

void NetworkDiagnosticsManager::updateNCPProperties(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, uint64_t a6, __int16 a7, __int16 a8, int a9)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v18, *a2, *(a2 + 8));
  }

  else
  {
    v18 = *a2;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, *a3, *(a3 + 8));
  }

  else
  {
    v17 = *a3;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, *a4, *(a4 + 8));
  }

  else
  {
    v16 = *a4;
  }

  NetworkDiagnosticsConfigDb::updateNCPProperties(a1, &v18, &v17, &v16, a5, a6, a7, a8, a9);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }
}

void sub_100235DB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

BOOL NetworkDiagnosticsManager::browseServices(NetworkDiagnosticsManager *this)
{
  logging_obg = log_get_logging_obg("com.apple.wpantund.tdm", "default");
  if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
  {
    LOWORD(v10[0]) = 0;
    _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "TDM: Start Browse services", v10, 2u);
  }

  started = NetworkDiagnosticsMdnsResolver::MyStartBrowsingForServices((this + 6752));
  if (started)
  {
    LODWORD(v4) = *(this + 6);
    CFRunLoopRunInMode(kCFRunLoopDefaultMode, v4, 0);
    v5 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = -252645135 * ((*(this + 846) - *(this + 845)) >> 3);
      v7 = *(this + 7440);
      v10[0] = 67109376;
      v10[1] = v6;
      v11 = 1024;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "TDM: Browse service completed Total services discovered:%d browseServiceCompletedFlag=%d", v10, 0xEu);
    }

    if ((*(this + 7440) & 1) == 0)
    {
      NetworkDiagnosticsMdnsResolver::MyStopBrowsingForServices((this + 6752), *(this + 931));
    }
  }

  else
  {
    v8 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      NetworkDiagnosticsManager::browseServices(v8);
    }
  }

  return started != 0;
}

uint64_t NetworkDiagnosticsManager::resolveServices(NetworkDiagnosticsManager *this)
{
  NetworkDiagnosticsMdnsResolver::MyResolveService((this + 6752));
  logging_obg = log_get_logging_obg("com.apple.wpantund.tdm", "default");
  if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
  {
    v3 = *(this + 1716);
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "TDM: Resolved services: Total Services Resolved=%d", v5, 8u);
  }

  return 1;
}

uint64_t NetworkDiagnosticsManager::startDiagnostics(NetworkDiagnosticsManager *this)
{
  v2 = this + 11736;
  NetworkDiagnosticsPendingConfig::NetworkDiagnosticsPendingConfig(v4, (this + 11736));
  if (NetworkDiagnosticsConfigDb::update(this, v4))
  {
    atomic_store(0, v2);
    if (*(this + 49) != 1)
    {
      goto LABEL_5;
    }

    if (NetworkDiagnosticsManager::browseServices(this))
    {
      NetworkDiagnosticsManager::resolveServices(this);
LABEL_5:
      *(this + 2916) = 1;
      result = NetworkDiagnosticsReqTransmitReceive::send_networkdiagnostics_get_to_self_ncp(this + 11448, this + 839);
      if (result)
      {
        return result;
      }
    }
  }

  return NetworkDiagnosticsManager::cleanup(this, 0, 1);
}

void NetworkDiagnosticsReqTransmitReceive::~NetworkDiagnosticsReqTransmitReceive(NetworkDiagnosticsReqTransmitReceive *this)
{
  v2 = *(this + 32);
  if (v2)
  {
    *(this + 33) = v2;
    operator delete(v2);
  }

  v3 = *(this + 28);
  if (v3)
  {
    *(this + 29) = v3;
    operator delete(v3);
  }

  std::unordered_set<unsigned short>::~unordered_set[abi:ne200100](this + 168);
  std::unordered_set<unsigned short>::~unordered_set[abi:ne200100](this + 128);
  std::unordered_set<unsigned short>::~unordered_set[abi:ne200100](this + 88);
  std::unordered_set<unsigned short>::~unordered_set[abi:ne200100](this + 48);
  std::unordered_set<unsigned short>::~unordered_set[abi:ne200100](this + 8);
}

void NetworkDiagnosticsLogger::~NetworkDiagnosticsLogger(NetworkDiagnosticsLogger *this)
{
  *(this + *(v3 - 24) + 3408) = v4;
  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();
  *(this + 355) = v2;
  *(this + *(v2 - 24) + 2840) = v4;
  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();
  *(this + 284) = v2;
  *(this + *(v2 - 24) + 2272) = v4;
  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();
  *(this + 213) = v2;
  *(this + *(v2 - 24) + 1704) = v4;
  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();
  *(this + 142) = v2;
  *(this + *(v2 - 24) + 1136) = v4;
  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();
  *(this + 71) = v2;
  *(this + *(v2 - 24) + 568) = v4;
  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();
  *this = v2;
  *(this + *(v2 - 24)) = v4;
  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();
}

void NetworkDiagnosticsConfigDb::~NetworkDiagnosticsConfigDb(void **this)
{
  v2 = (this + 512);
  if (*(this + 6735) < 0)
  {
    operator delete(this[839]);
  }

  if (v2[2615] < 0)
  {
    operator delete(this[836]);
  }

  if (v2[2591] < 0)
  {
    operator delete(this[833]);
  }

  if (v2[2543] < 0)
  {
    operator delete(this[827]);
  }

  NetworkDiagnosticsLogFileDescriptors::~NetworkDiagnosticsLogFileDescriptors((this + 46));
  NetworkDiagnosticsLogFileNames::~NetworkDiagnosticsLogFileNames(this + 7);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void NetworkDiagnosticsLogFileDescriptors::~NetworkDiagnosticsLogFileDescriptors(NetworkDiagnosticsLogFileDescriptors *this)
{
  *(this + *(v3 - 24) + 5680) = v4;
  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();
  *(this + 639) = v2;
  *(this + *(v2 - 24) + 5112) = v4;
  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();
  *(this + 568) = v2;
  *(this + *(v2 - 24) + 4544) = v4;
  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();
  *(this + 497) = v2;
  *(this + *(v2 - 24) + 3976) = v4;
  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();
  *(this + 426) = v2;
  *(this + *(v2 - 24) + 3408) = v4;
  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();
  *(this + 355) = v2;
  *(this + *(v2 - 24) + 2840) = v4;
  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();
  *(this + 284) = v2;
  *(this + *(v2 - 24) + 2272) = v4;
  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();
  *(this + 213) = v2;
  *(this + *(v2 - 24) + 1704) = v4;
  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();
  *(this + 142) = v2;
  *(this + *(v2 - 24) + 1136) = v4;
  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();
  *(this + 71) = v2;
  *(this + *(v2 - 24) + 568) = v4;
  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();
  *this = v2;
  *(this + *(v2 - 24)) = v4;
  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();
}

uint64_t padString(uint64_t result, unint64_t a2, std::string::value_type a3)
{
  v3 = *(result + 23);
  if ((v3 & 0x8000000000000000) != 0)
  {
    v3 = *(result + 8);
    if (v3 >= a2)
    {
      return result;
    }

    v4 = *result + v3;
  }

  else
  {
    if (v3 >= a2)
    {
      return result;
    }

    v4 = result + v3;
  }

  return std::string::insert[abi:ne200100](result, v4, a2 - v3, a3);
}

uint64_t std::string::insert[abi:ne200100](std::string *this, uint64_t a2, std::string::size_type a3, std::string::value_type a4)
{
  v4 = this;
  v5 = this;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    v5 = this->__r_.__value_.__r.__words[0];
  }

  v6 = a2 - v5;
  std::string::insert(this, a2 - v5, a3, a4);
  if (SHIBYTE(v4->__r_.__value_.__r.__words[2]) < 0)
  {
    v4 = v4->__r_.__value_.__r.__words[0];
  }

  return v4 + v6;
}

_BYTE *convertNodeTypeForDisplay@<X0>(unsigned int a1@<W0>, _BYTE *a2@<X8>)
{
  if (a1 > 2)
  {
    v2 = "INVALID";
  }

  else
  {
    v2 = off_1004C8D40[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

uint64_t convertUint16ToHexString(uint64_t a1, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "0x", 2);
  v3 = v11;
  v4 = &v11 + *(v11 - 24);
  if (*(v4 + 36) == -1)
  {
    std::ios_base::getloc((&v11 + *(v11 - 24)));
    v5 = std::locale::use_facet(&v8, &std::ctype<char>::id);
    (v5->__vftable[2].~facet_0)(v5, 32);
    std::locale::~locale(&v8);
    v3 = v11;
  }

  *(v4 + 36) = 48;
  *(&v13[1].__locale_ + *(v3 - 24)) = 4;
  *(&v11 + *(v3 - 24) + 8) = *(&v11 + *(v3 - 24) + 8) & 0xFFFFFFB5 | 8;
  std::ostream::operator<<();
  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  std::stringbuf::str();
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v8;
  *(a2 + 16) = v9;
  v11 = v6;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100236E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

_BYTE *current_time@<X0>(_BYTE *a1@<X8>)
{
  gettimeofday(&v4, 0);
  v2 = localtime(&v4.tv_sec);
  strftime(__format, 0x40uLL, "%H:%M:%S:%%06u", v2);
  snprintf(__str, 0x40uLL, __format, v4.tv_usec);
  return std::string::basic_string[abi:ne200100]<0>(a1, __str);
}

void getDestinationIPv6FromPrefixAndRloc16(int a1, const void **a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(&v18, "ff:fe00:");
  sprintf(__s, "%x", a1);
  std::string::basic_string[abi:ne200100]<0>(__p, __s);
  if (*(a3 + 23) < 0)
  {
    **a3 = 0;
    *(a3 + 8) = 0;
  }

  else
  {
    *a3 = 0;
    *(a3 + 23) = 0;
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v7 = &v13;
  std::string::basic_string[abi:ne200100](&v13, v6 + 8);
  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v7 = v13.__r_.__value_.__r.__words[0];
  }

  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    memmove(v7, v8, v6);
  }

  strcpy(v7 + v6, "ff:fe00:");
  if ((v16 & 0x80u) == 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v10 = v16;
  }

  else
  {
    v10 = __p[1];
  }

  v11 = std::string::append(&v13, v9, v10);
  v12 = *&v11->__r_.__value_.__l.__data_;
  __str.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&__str.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  std::string::operator=(a3, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (v19 < 0)
  {
    operator delete(v18);
  }
}

void sub_100237074(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (*(v28 - 41) < 0)
  {
    operator delete(*(v28 - 64));
  }

  _Unwind_Resume(exception_object);
}

uint64_t getNodeType(unsigned __int16 a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  if ((a1 & 0x1FF) == 0 || std::__hash_table<unsigned short,std::hash<unsigned short>,std::equal_to<unsigned short>,std::allocator<unsigned short>>::find<unsigned short>(a2, &v7))
  {
    return 2;
  }

  if (std::__hash_table<unsigned short,std::hash<unsigned short>,std::equal_to<unsigned short>,std::allocator<unsigned short>>::find<unsigned short>(a3, &v7))
  {
    return 1;
  }

  if (std::__hash_table<unsigned short,std::hash<unsigned short>,std::equal_to<unsigned short>,std::allocator<unsigned short>>::find<unsigned short>(a4, &v7))
  {
    return 0;
  }

  return 3;
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

uint64_t **std::__hash_table<unsigned short,std::hash<unsigned short>,std::equal_to<unsigned short>,std::allocator<unsigned short>>::find<unsigned short>(void *a1, unsigned __int16 *a2)
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
      v5 = v3 % a1[1];
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
      if (*(result + 8) == v3)
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

char *toLower(char *a1)
{
  bufIndex = (bufIndex + 1) % 5;
  for (i = strcpy(&tempString[100 * bufIndex], a1); *i; ++i)
  {
    if (*i <= 64 || *i >= 91)
    {
      v2 = *i;
    }

    else
    {
      v2 = *i | 0x60;
    }

    *i = v2;
  }

  return &tempString[100 * bufIndex];
}

BOOL isSupportedPlatform(void)
{
  ot::Posix::HardwareIdentifier::HardwareIdentifier(&v3);
  *v5 = 0u;
  v6 = 0u;
  ChipsetFromHWIdentifiers = ot::Posix::HardwareIdentifier::getChipsetFromHWIdentifiers(&v3);
  ot::Posix::HardwareIdentifier::getSteppingFromHWIdentifiers(&v3, v5, 0x20u);
  v4 = ChipsetFromHWIdentifiers != 4399 || (v0 = toLower(v5), !strstr[abi:dn200100](v0, "c0"));
  return v4;
}

uint64_t ot::Posix::HardwareIdentifier::getChipsetFromHWIdentifiers(CFDictionaryRef *this)
{
  v19 = this;
  if (ot::Posix::HardwareIdentifier::getHWIdentifiers(this))
  {
    valuePtr = 0;
    Value = CFDictionaryGetValue(*this, @"C");
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberLongType, &valuePtr);
      CFRelease(*this);
      *this = 0;
      if (valuePtr == 276347)
      {
        return 4377;
      }

      return valuePtr;
    }

    else
    {
      logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
      if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        oslog = logging_obg;
        v8 = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
        {
          v2 = oslog;
          v3 = v8;
          __os_log_helper_16_0_0(v7);
          _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get chipset(C) from HWIdentifiers property", v7, 2u);
        }
      }

      else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v21, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v21, 0x16u);
      }

      CFRelease(*this);
      *this = 0;
      return 0;
    }
  }

  else
  {
    v18 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v18 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      v17 = v18;
      v16 = 1;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        log = v17;
        type = v16;
        __os_log_helper_16_0_0(v15);
        _os_log_impl(&_mh_execute_header, log, type, "Failed to get HWIdentifiers property, while trying to pull chipset", v15, 2u);
      }
    }

    else if (!v18)
    {
      v14 = &_os_log_default;
      v13 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v22, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v14, v13, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v22, 0x16u);
      }
    }

    return 0;
  }
}

void getFilePathFromDirectory(char *a1, char *a2, const char *a3, unsigned __int8 a4)
{
  v60 = a1;
  v59 = a2;
  v58 = a3;
  v57 = a4;
  d_name = 0;
  memset(v65, 0, sizeof(v65));
  memset(v64, 0, sizeof(v64));
  memset(__s1, 0, sizeof(__s1));
  v54 = 0;
  v55 = 0;
  v52 = 0;
  v53 = 0;
  v51 = 0;
  v50 = "154_p";
  v49 = "154_evt";
  v48 = "154_final";
  v47 = 0;
  v46 = 0;
  v45 = 0;
  ot::Posix::HardwareIdentifier::HardwareIdentifier(&v44);
  ChipsetFromHWIdentifiers = ot::Posix::HardwareIdentifier::getChipsetFromHWIdentifiers(&v44);
  ot::Posix::HardwareIdentifier::getSteppingFromHWIdentifiers(&v44, v65, 0x20u);
  ot::Posix::HardwareIdentifier::getPlatformFromHWIdentifiers(&v44, v64, 0x20u);
  ot::Posix::HardwareIdentifier::getVendorFromHWIdentifiers(&v44, __s1, 0x20u);
  otLogWarnPlat("chipsetVal = %llu, chipsetStepping = %s, platform = %s, vendor = %s", v4, v5, v6, v7, v8, v9, v10, ChipsetFromHWIdentifiers);
  memset(v62, 0, sizeof(v62));
  ot::Posix::HardwareIdentifier::getSKUFromSystem(&v44, v62, 0x20u);
  memset(v61, 0, sizeof(v61));
  v11 = strlen(v62);
  snprintf(v61, v11 + 2, "_%s", v62);
  if (!ChipsetFromHWIdentifiers || !LOBYTE(v65[0]) || !LOBYTE(v64[0]) || !LOBYTE(__s1[0]))
  {
    return;
  }

  if (!strcmp(__s1, "u"))
  {
    v51 = "os_usi";
  }

  else if (!strcmp(__s1, "g"))
  {
    v51 = "os_stats";
  }

  else
  {
    v51 = "os_amkor";
  }

  snprintf(v66, 8uLL, "%llu", ChipsetFromHWIdentifiers);
  LOBYTE(v64[0]) = toupper(SLOBYTE(v64[0]));
  v42 = opendir(v59);
  if (!v42)
  {
    otLogWarnPlat("Could not open PTB/BANDEDGE folder path directory", v12, v13, v14, v15, v16, v17, v18, v34);
    return;
  }

  while (1)
  {
    v45 = readdir(v42);
    if (!v45)
    {
      break;
    }

    v26 = toLower(v45->d_name);
    if (strstr[abi:dn200100](v26, v58))
    {
      v38 = toLower(v45->d_name);
      v27 = toLower(v66);
      if (strstr[abi:dn200100](v38, v27))
      {
        v37 = toLower(v45->d_name);
        v28 = toLower(v65);
        if (strstr[abi:dn200100](v37, v28))
        {
          v36 = toLower(v45->d_name);
          v29 = toLower(v64);
          if (strstr[abi:dn200100](v36, v29))
          {
            v30 = toLower(v45->d_name);
            if (strstr[abi:dn200100](v30, v51))
            {
              if (strstr[abi:dn200100](v45->d_name, "154") && ((ot::Posix::HardwareIdentifier::isIPad(&v44) & 1) != 0 || !ot::Posix::HardwareIdentifier::isSKUSpecificiPhone(&v44) || strstr[abi:dn200100](v45->d_name, v61) && (!strcmp(v62, sku_list[0]) || !strcmp(v62, off_1004E53F0[0]) || !strcmp(v62, off_1004E53F8[0]) || !strcmp(v62, off_1004E5400[0]) || !strcmp(v62, off_1004E5408))))
              {
                v31 = toLower(v45->d_name);
                v41 = strstr[abi:dn200100](v31, v50);
                v32 = toLower(v45->d_name);
                v40 = strstr[abi:dn200100](v32, v49);
                v33 = toLower(v45->d_name);
                v39 = strstr[abi:dn200100](v33, v48);
                if ((v47 & 1) == 0 && v39)
                {
                  v47 = 1;
                  v54 = 0;
                  v55 = 0;
                }

                if ((v47 & 1) == 0 && (v46 & 1) == 0 && v40)
                {
                  v46 = 1;
                  v54 = 0;
                  v55 = 0;
                }

                if (((v47 & 1) != 1 || !v40 && !v41) && ((v46 & 1) != 1 || !v41))
                {
                  v52 = 0;
                  v53 = 0;
                  if ((v47 & 1) == 1)
                  {
                    LOWORD(v52) = *&v39[strlen(v48)];
                    BYTE2(v52) = 0;
                    if (!v54 || SBYTE1(v52) > SBYTE1(v54))
                    {
                      v55 = 0;
                      v54 = v52;
LABEL_57:
                      d_name = v45->d_name;
                      v35 = strlen(v59);
                      if (v35 + strlen(v45->d_name) < v57 - 1)
                      {
                        strlcpy(v60, v59, v57);
                        strcat(v60, d_name);
                      }
                    }
                  }

                  else if ((v46 & 1) == 1)
                  {
                    LOWORD(v52) = *&v40[strlen(v49)];
                    BYTE2(v52) = 0;
                    if (!v54 || SBYTE1(v52) > SBYTE1(v54))
                    {
                      v55 = 0;
                      v54 = v52;
                      goto LABEL_57;
                    }
                  }

                  else
                  {
                    v52 = *&v41[strlen(v50) - 1];
                    v53 = 0;
                    if (!v54 || SBYTE1(v52) > SBYTE1(v54) || SBYTE1(v52) == SBYTE1(v54) && SHIBYTE(v52) > SHIBYTE(v54))
                    {
                      v55 = 0;
                      v54 = v52;
                      goto LABEL_57;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (*v60)
  {
    otLogWarnPlat("Load file: %s, version %s ", v19, v20, v21, v22, v23, v24, v25, v60);
  }

  else
  {
    otLogWarnPlat("Failed to find the right %s file", v19, v20, v21, v22, v23, v24, v25, v58);
  }

  closedir(v42);
}

void *ot::Posix::HardwareIdentifier::getSKUFromSystem(ot::Posix::HardwareIdentifier *this, char *a2, unsigned __int16 a3)
{
  v18 = this;
  v17 = a2;
  v16 = a3;
  bzero(a2, a3);
  memset(__src, 0, 32);
  v15 = 8;
  v14 = 11;
  v13 = 0;
  v12 = MGCopyAnswer();
  if (v12)
  {
    if (CFDataGetLength(v12) == 16)
    {
      BytePtr = CFDataGetBytePtr(v12);
      for (i = v15; i <= v14; ++i)
      {
        if (BytePtr[i] > 0x20u)
        {
          __src[v13++] = BytePtr[i];
        }
      }
    }

    CFRelease(v12);
  }

  else
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      oslog = logging_obg;
      type = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
      {
        log = oslog;
        v5 = type;
        __os_log_helper_16_0_0(v6);
        _os_log_impl(&_mh_execute_header, log, v5, "SKU could not be determined", v6, 2u);
      }
    }

    else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v19, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v19, 0x16u);
    }
  }

  memcpy(v17, __src, v13);
  return v17;
}

int toupper(int _c)
{
  return __toupper(_c);
}

{
  return toupper(_c);
}

uint64_t ot::Posix::HardwareIdentifier::isIPad(ot::Posix::HardwareIdentifier *this)
{
  v3 = MGGetStringAnswer();
  if (!v3)
  {
    goto LABEL_12;
  }

  *buffer = 0;
  v8 = 0;
  CFStringGetCString(v3, buffer, 16, 0x600u);
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(3) & 1) != 0)
  {
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_32(v6, buffer);
      _os_log_error_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_ERROR, "isIPad::: %s", v6, 0xCu);
    }
  }

  else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v5, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v5, 0x16u);
  }

  if (!strcmp(buffer, "iPad"))
  {
    v4 = 1;
  }

  else
  {
LABEL_12:
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t readFromFilePTB(const char *a1, unsigned __int8 *a2, unsigned __int16 a3)
{
  __stream = fopen(a1, "rb");
  if (__stream)
  {
    v20 = fread(a2, 1uLL, a3, __stream);
    if (!v20 || ferror(__stream))
    {
      otLogWarnPlat("PTB file read error", v10, v11, v12, v13, v14, v15, v16, v18);
    }

    fclose(__stream);
    return v20;
  }

  else
  {
    otLogWarnPlat("PTB file does not exist", v3, v4, v5, v6, v7, v8, v9, v18);
    return 0;
  }
}

uint64_t ot::Posix::HardwareIdentifier::setHWIdentifiers(ot::Posix::HardwareIdentifier *this)
{
  v23 = this;
  MatchingService = 0;
  v21 = 1000;
  v20 = 10;
  while (v21)
  {
    v1 = IOServiceNameMatching("AppleBCMWLANBusInterfacePCIe");
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v1);
    if (MatchingService)
    {
      *this = IORegistryEntrySearchCFProperty(MatchingService, "IODeviceTree", @"HWIdentifiers", kCFAllocatorDefault, 1u);
      if (*this)
      {
        return 0;
      }

      logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
      if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        oslog = logging_obg;
        v11 = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
        {
          v3 = oslog;
          v4 = v11;
          __os_log_helper_16_0_0(v10);
          _os_log_impl(&_mh_execute_header, v3, v4, "No HWIdentifiers property..retrying", v10, 2u);
        }
      }

      else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v24, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v24, 0x16u);
      }
    }

    else
    {
      v19 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v19 && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        v18 = v19;
        v17 = 1;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          log = v18;
          type = v17;
          __os_log_helper_16_0_0(v16);
          _os_log_impl(&_mh_execute_header, log, type, "No AppleBCMWLANBusInterfacePCIe service..retrying", v16, 2u);
        }
      }

      else if (!v19)
      {
        v15 = &_os_log_default;
        v14 = 16;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v5 = v15;
          v6 = v14;
          __os_log_helper_16_2_2_8_32_8_32(v25, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, v5, v6, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v25, 0x16u);
        }
      }
    }

    usleep(1000 * v20);
    v21 -= v20;
  }

  return 0;
}

_BYTE *__os_log_helper_16_0_0(_BYTE *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

uint64_t __os_log_helper_16_2_2_8_32_8_32(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 32;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t ot::Posix::HardwareIdentifier::getHWIdentifiers(ot::Posix::HardwareIdentifier *this)
{
  v17 = this;
  if (*this)
  {
    return *this;
  }

  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    v15 = logging_obg;
    v14 = 1;
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      log = v15;
      type = v14;
      __os_log_helper_16_0_0(v13);
      _os_log_impl(&_mh_execute_header, log, type, "Attemping to set HWIdentifiers in order to Load PTB/BANDEDGE file...", v13, 2u);
    }
  }

  else if (!logging_obg)
  {
    v12 = &_os_log_default;
    v11 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v20, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, v12, v11, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v20, 0x16u);
    }
  }

  if (!ot::Posix::HardwareIdentifier::setHWIdentifiers(this))
  {
    return *this;
  }

  v10 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v10 && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    oslog = v10;
    v8 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v2 = oslog;
      v3 = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_impl(&_mh_execute_header, v2, v3, "Setting HWIdentifiers has failed", v7, 2u);
    }
  }

  else if (!v10 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v19, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v19, 0x16u);
  }

  return 0;
}

void *ot::Posix::HardwareIdentifier::getStringFromHWIdentifiers(CFDictionaryRef *this, char a2, char *a3, unsigned __int16 a4)
{
  v19 = this;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  bzero(a3, a4);
  if (ot::Posix::HardwareIdentifier::getHWIdentifiers(this))
  {
    memset(buffer, 0, sizeof(buffer));
    cStr[0] = v18;
    cStr[1] = 0;
    v4 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
    key = CFAutorelease(v4);
    theString = CFDictionaryGetValue(*this, key);
    if (theString)
    {
      CFStringGetCString(theString, buffer, v16, 0x8000100u);
      memcpy(v17, buffer, v16);
      CFRelease(*this);
      *this = 0;
      return v17;
    }

    else
    {
      logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
      if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_0_1_4_0(v22, v18);
          _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "Failed to get %c property from HWIdentifiers", v22, 8u);
        }
      }

      else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v21, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v21, 0x16u);
      }

      CFRelease(*this);
      *this = 0;
      return 0;
    }
  }

  else
  {
    v15 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v15 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      v14 = v15;
      v13 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_0_1_4_0(v25, v18);
        _os_log_impl(&_mh_execute_header, v14, v13, "Failed to get HWIdentifiers property, while trying to pull %c: ", v25, 8u);
      }
    }

    else if (!v15)
    {
      oslog = &_os_log_default;
      v11 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v24, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, oslog, v11, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v24, 0x16u);
      }
    }

    return 0;
  }
}

uint64_t __os_log_helper_16_0_1_4_0(uint64_t result, int a2)
{
  *result = 0;
  *(result + 1) = 1;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  return result;
}

uint64_t __os_log_helper_16_2_1_8_32(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

BOOL ot::Posix::HardwareIdentifier::isProximaPlatform(ot::Posix::HardwareIdentifier *this)
{
  if (ot::Posix::HardwareIdentifier::isProximaPlat == 255)
  {
    v46 = xmmword_100448492;
    v47 = 1459208360;
    if (MGIsDeviceOfType())
    {
      logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
      if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_2_1_8_32(v45, "isProximaPlatform");
          _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "%s: productType MGPROD_D23", v45, 0xCu);
        }
      }

      else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v44, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v44, 0x16u);
      }

      ot::Posix::HardwareIdentifier::isProximaPlat = 1;
      return 1;
    }

    else
    {
      v42 = xmmword_1004484A6;
      v43 = 431774303;
      if (MGIsDeviceOfType())
      {
        v9 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v9 && (syslog_is_the_mask_enabled(6) & 1) != 0)
        {
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            __os_log_helper_16_2_1_8_32(v41, "isProximaPlatform");
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s: productType MGPROD_T2030", v41, 0xCu);
          }
        }

        else if (!v9 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_32(v40, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v40, 0x16u);
        }

        ot::Posix::HardwareIdentifier::isProximaPlat = 1;
        return 1;
      }

      else
      {
        v38 = xmmword_1004484BA;
        v39 = -1354433901;
        if (MGIsDeviceOfType())
        {
          v8 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v8 && (syslog_is_the_mask_enabled(6) & 1) != 0)
          {
            if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
            {
              __os_log_helper_16_2_1_8_32(v37, "isProximaPlatform");
              _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s: productType MGPROD_V53", v37, 0xCu);
            }
          }

          else if (!v8 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_2_8_32_8_32(v36, "com.apple.wpantund.ncp", "default");
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v36, 0x16u);
          }

          ot::Posix::HardwareIdentifier::isProximaPlat = 1;
          return 1;
        }

        else
        {
          v34 = xmmword_1004484CE;
          v35 = 1021543808;
          if (MGIsDeviceOfType())
          {
            v7 = log_get_logging_obg("com.apple.threadradiod", "default");
            if (v7 && (syslog_is_the_mask_enabled(6) & 1) != 0)
            {
              if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
              {
                __os_log_helper_16_2_1_8_32(v33, "isProximaPlatform");
                _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s: productType MGPROD_V54", v33, 0xCu);
              }
            }

            else if (!v7 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              __os_log_helper_16_2_2_8_32_8_32(v32, "com.apple.wpantund.ncp", "default");
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v32, 0x16u);
            }

            ot::Posix::HardwareIdentifier::isProximaPlat = 1;
            return 1;
          }

          else
          {
            v30 = xmmword_1004484E2;
            v31 = -1379821877;
            if (MGIsDeviceOfType())
            {
              v6 = log_get_logging_obg("com.apple.threadradiod", "default");
              if (v6 && (syslog_is_the_mask_enabled(6) & 1) != 0)
              {
                if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
                {
                  __os_log_helper_16_2_1_8_32(v29, "isProximaPlatform");
                  _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s: productType MGPROD_V57", v29, 0xCu);
                }
              }

              else if (!v6 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                __os_log_helper_16_2_2_8_32_8_32(v28, "com.apple.wpantund.ncp", "default");
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v28, 0x16u);
              }

              ot::Posix::HardwareIdentifier::isProximaPlat = 1;
              return 1;
            }

            else
            {
              v26 = xmmword_1004484F6;
              v27 = 1656760039;
              if (MGIsDeviceOfType())
              {
                v5 = log_get_logging_obg("com.apple.threadradiod", "default");
                if (v5 && (syslog_is_the_mask_enabled(6) & 1) != 0)
                {
                  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
                  {
                    __os_log_helper_16_2_1_8_32(v25, "isProximaPlatform");
                    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s: productType MGPROD_V817", v25, 0xCu);
                  }
                }

                else if (!v5 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  __os_log_helper_16_2_2_8_32_8_32(v24, "com.apple.wpantund.ncp", "default");
                  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v24, 0x16u);
                }

                ot::Posix::HardwareIdentifier::isProximaPlat = 1;
                return 1;
              }

              else
              {
                v22 = xmmword_10044850A;
                v23 = -2071977621;
                if (MGIsDeviceOfType())
                {
                  v4 = log_get_logging_obg("com.apple.threadradiod", "default");
                  if (v4 && (syslog_is_the_mask_enabled(6) & 1) != 0)
                  {
                    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
                    {
                      __os_log_helper_16_2_1_8_32(v21, "isProximaPlatform");
                      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s: productType MGPROD_V818", v21, 0xCu);
                    }
                  }

                  else if (!v4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    __os_log_helper_16_2_2_8_32_8_32(v20, "com.apple.wpantund.ncp", "default");
                    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v20, 0x16u);
                  }

                  ot::Posix::HardwareIdentifier::isProximaPlat = 1;
                  return 1;
                }

                else
                {
                  v18 = xmmword_10044851E;
                  v19 = -543210860;
                  if (MGIsDeviceOfType())
                  {
                    v3 = log_get_logging_obg("com.apple.threadradiod", "default");
                    if (v3 && (syslog_is_the_mask_enabled(6) & 1) != 0)
                    {
                      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
                      {
                        __os_log_helper_16_2_1_8_32(v17, "isProximaPlatform");
                        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s: productType MGPROD_V820", v17, 0xCu);
                      }
                    }

                    else if (!v3 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                    {
                      __os_log_helper_16_2_2_8_32_8_32(v16, "com.apple.wpantund.ncp", "default");
                      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v16, 0x16u);
                    }

                    ot::Posix::HardwareIdentifier::isProximaPlat = 1;
                    return 1;
                  }

                  else
                  {
                    v14 = xmmword_100448532;
                    v15 = -1597604211;
                    if (MGIsDeviceOfType())
                    {
                      v2 = log_get_logging_obg("com.apple.threadradiod", "default");
                      if (v2 && (syslog_is_the_mask_enabled(6) & 1) != 0)
                      {
                        if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
                        {
                          __os_log_helper_16_2_1_8_32(v13, "isProximaPlatform");
                          _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s: productType MGPROD_V821", v13, 0xCu);
                        }
                      }

                      else if (!v2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                      {
                        __os_log_helper_16_2_2_8_32_8_32(v12, "com.apple.wpantund.ncp", "default");
                        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v12, 0x16u);
                      }

                      ot::Posix::HardwareIdentifier::isProximaPlat = 1;
                      return 1;
                    }

                    else
                    {
                      ot::Posix::HardwareIdentifier::isProximaPlat = 0;
                      return 0;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    return ot::Posix::HardwareIdentifier::isProximaPlat != 0;
  }
}

BOOL ot::Posix::HardwareIdentifier::isIphonePlatform(CFDictionaryRef *this)
{
  memset(v20, 0, sizeof(v20));
  v5 = 24;
  v18 = xmmword_100448546;
  v19 = 1223847566;
  if (MGIsDeviceOfType())
  {
    v5 = 0;
  }

  v16 = xmmword_10044855A;
  v17 = 185580364;
  if (MGIsDeviceOfType())
  {
    v5 = 1;
  }

  v14 = xmmword_10044856E;
  v15 = 1874287171;
  if (MGIsDeviceOfType())
  {
    v5 = 2;
  }

  v12 = xmmword_100448582;
  v13 = -781324731;
  if (MGIsDeviceOfType())
  {
    v5 = 3;
  }

  v10 = xmmword_100448596;
  v11 = 1214880059;
  if (MGIsDeviceOfType())
  {
    v5 = 4;
  }

  v8 = xmmword_1004485AA;
  v9 = 426359977;
  if (MGIsDeviceOfType())
  {
    v5 = 5;
  }

  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      PlatformFromHWIdentifiers = ot::Posix::HardwareIdentifier::getPlatformFromHWIdentifiers(this, v20, 0x20u);
      __os_log_helper_16_2_3_8_32_4_0_8_32(v7, "isIphonePlatform", v5, PlatformFromHWIdentifiers);
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "%s: productType = %d[%s]", v7, 0x1Cu);
    }
  }

  else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v6, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v6, 0x16u);
  }

  return v5 != 24;
}

uint64_t __os_log_helper_16_2_3_8_32_4_0_8_32(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 32;
  *(result + 19) = 8;
  *(result + 20) = a4;
  return result;
}

uint64_t ot::Posix::HardwareIdentifier::isMacCC5Platform_v39(CFDictionaryRef *this)
{
  *v7 = 0u;
  v8 = 0u;
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      PlatformFromHWIdentifiers = ot::Posix::HardwareIdentifier::getPlatformFromHWIdentifiers(this, v7, 0x20u);
      __os_log_helper_16_2_3_8_32_4_0_8_32(v6, "isMacCC5Platform_v39", 24, PlatformFromHWIdentifiers);
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "%s: productType = %d[%s]", v6, 0x1Cu);
    }
  }

  else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v5, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v5, 0x16u);
  }

  return 0;
}

uint64_t ot::Posix::HardwareIdentifier::isMacCC5Platform_v19(CFDictionaryRef *this)
{
  *v7 = 0u;
  v8 = 0u;
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      PlatformFromHWIdentifiers = ot::Posix::HardwareIdentifier::getPlatformFromHWIdentifiers(this, v7, 0x20u);
      __os_log_helper_16_2_3_8_32_4_0_8_32(v6, "isMacCC5Platform_v19", 24, PlatformFromHWIdentifiers);
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "%s: productType = %d[%s]", v6, 0x1Cu);
    }
  }

  else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v5, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v5, 0x16u);
  }

  return 0;
}

uint64_t ot::Posix::HardwareIdentifier::isMacCC4Platform(CFDictionaryRef *this)
{
  *v7 = 0u;
  v8 = 0u;
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      PlatformFromHWIdentifiers = ot::Posix::HardwareIdentifier::getPlatformFromHWIdentifiers(this, v7, 0x20u);
      __os_log_helper_16_2_3_8_32_4_0_8_32(v6, "isMacCC4Platform", 24, PlatformFromHWIdentifiers);
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "%s: productType = %d[%s]", v6, 0x1Cu);
    }
  }

  else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v5, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v5, 0x16u);
  }

  return 0;
}

BOOL ot::Posix::HardwareIdentifier::isCCMappingVer200(ot::Posix::HardwareIdentifier *this)
{
  if (MGIsDeviceOfType())
  {
    return 1;
  }

  else
  {
    return (MGIsDeviceOfType() & 1) != 0 || (MGIsDeviceOfType() & 1) != 0 || (MGIsDeviceOfType() & 1) != 0;
  }
}

BOOL ot::Posix::HardwareIdentifier::isCCMappingVer100(ot::Posix::HardwareIdentifier *this)
{
  if (MGIsDeviceOfType())
  {
    return 1;
  }

  else if (MGIsDeviceOfType())
  {
    return 1;
  }

  else if (MGIsDeviceOfType())
  {
    return 1;
  }

  else
  {
    return (MGIsDeviceOfType() & 1) != 0 || (MGIsDeviceOfType() & 1) != 0 || (MGIsDeviceOfType() & 1) != 0;
  }
}

BOOL ot::Posix::HardwareIdentifier::isCCMappingVendor2Ver100(ot::Posix::HardwareIdentifier *this)
{
  if (MGIsDeviceOfType())
  {
    return 1;
  }

  else
  {
    return (MGIsDeviceOfType() & 1) != 0 || (MGIsDeviceOfType() & 1) != 0 || (MGIsDeviceOfType() & 1) != 0;
  }
}

BOOL ot::Posix::HardwareIdentifier::isCCMappingVendor2Ver200(ot::Posix::HardwareIdentifier *this)
{
  if (MGIsDeviceOfType())
  {
    return 1;
  }

  else if (MGIsDeviceOfType())
  {
    return 1;
  }

  else
  {
    return (MGIsDeviceOfType() & 1) != 0 || (MGIsDeviceOfType() & 1) != 0 || (MGIsDeviceOfType() & 1) != 0;
  }
}

ot::Posix::HdlcInterface *ot::Posix::HdlcInterface::HdlcInterface(ot::Posix::HdlcInterface *this, const ot::Url::Url *a2)
{
  ot::Spinel::SpinelInterface::SpinelInterface(this);
  *this = off_1004C8D68;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 12) = -1;
  *(this + 13) = 0;
  ot::Hdlc::Decoder::Decoder((this + 56));
  *(this + 12) = a2;
  memset(this + 104, 0, 0x40uLL);
  *(this + 104) = 1;
  isProximaPlatform = ot::Posix::HardwareIdentifier::isProximaPlatform(&hwIdentifier);
  RadioSpinel = ot::Posix::Radio::GetRadioSpinel(&sRadio);
  ot::Spinel::RadioSpinel::SetRcp2Vendor2Enabled(RadioSpinel, isProximaPlatform);
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      v3 = ot::Posix::Radio::GetRadioSpinel(&sRadio);
      Rcp2Vendor2Enabled = ot::Spinel::RadioSpinel::GetRcp2Vendor2Enabled(v3);
      __os_log_helper_16_2_2_8_32_4_0(v12, "HdlcInterface", Rcp2Vendor2Enabled);
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "%s: In Transport::Rcp2 Vendor2 Enabled:[%d] \n", v12, 0x12u);
    }
  }

  else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v11, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v11, 0x16u);
  }

  return this;
}

{
  ot::Posix::HdlcInterface::HdlcInterface(this, a2);
  return this;
}

uint64_t __os_log_helper_16_2_2_8_32_4_0(uint64_t result, uint64_t a2, int a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  return result;
}

uint64_t ot::Posix::HdlcInterface::OnRcpReset(ot::Posix::HdlcInterface *this)
{
  v9 = this;
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    v7 = logging_obg;
    v6 = 1;
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      log = v7;
      type = v6;
      __os_log_helper_16_0_0(v5);
      _os_log_impl(&_mh_execute_header, log, type, "In Skywalk::OnRcpReset:\n", v5, 2u);
    }
  }

  else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v10, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v10, 0x16u);
  }

  return ot::Hdlc::Decoder::Reset(this + 56);
}

uint64_t ot::Posix::HdlcInterface::Init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = 0;
  ot::Posix::gk_HdlcDecoder = a1 + 56;
  *(a1 + 48) = ot::Posix::HdlcInterface::OpenFile(a1, *(a1 + 96));
  if (*(a1 + 48) == -1)
  {
    return 1;
  }

  else
  {
    ot::Hdlc::Decoder::Init((a1 + 56), a4, ot::Posix::HdlcInterface::HandleHdlcFrame, a1);
    *(a1 + 8) = a2;
    *(a1 + 16) = a3;
    *(a1 + 24) = a4;
    *(a1 + 32) = a5;
    *(a1 + 40) = a3;
    ot::Posix::gErrorCallback = *(a1 + 32);
    ot::Posix::gErrorContext = *(a1 + 40);
  }

  return v7;
}

uint64_t ot::Posix::HdlcInterface::OpenFile(ot::Posix::HdlcInterface *this, const ot::Url::Url *a2)
{
  v14 = 0;
  while (ot::Posix::HdlcInterface::OpenFile(ot::Url::Url const&)::count < 0x19u)
  {
    RadioSpinel = ot::Posix::Radio::GetRadioSpinel(&sRadio);
    Rcp2Vendor2Enabled = ot::Spinel::RadioSpinel::GetRcp2Vendor2Enabled(RadioSpinel);
    if (Rcp2Vendor2Enabled)
    {
      v14 = ot::Posix::HdlcInterface::airship_open(Rcp2Vendor2Enabled);
      logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
      if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_0_2_4_0_4_0(v18, ot::Posix::HdlcInterface::OpenFile(ot::Url::Url const&)::count, v14);
          _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "AS Transport::OpenFile:airship_open Attempd= %d status = %d", v18, 0xEu);
        }
      }

      else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v17, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v17, 0x16u);
      }
    }

    else
    {
      v14 = ot::Posix::HdlcInterface::skywalk_open(Rcp2Vendor2Enabled);
      v12 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v12 && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_0_2_4_0_4_0(v16, ot::Posix::HdlcInterface::OpenFile(ot::Url::Url const&)::count, v14);
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Skywalk::OpenFile:skywalk_open Attempt= %d status = %d", v16, 0xEu);
        }
      }

      else if (!v12 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v15, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v15, 0x16u);
      }
    }

    if (!v14)
    {
      gPciStatus = 0;
      break;
    }

    ++ot::Posix::HdlcInterface::OpenFile(ot::Url::Url const&)::count;
    usleep(0x186A0u);
  }

  if (v14)
  {
    perror("open PCIe failed");
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/hdlc_skywalk_interface.cpp", 47);
    otExitCodeToString(1);
    otLogCritPlat("%s() at %s:%d: %s", v4, v5, v6, v7, v8, v9, v10, "OpenFile");
    handle_daemon_exit();
    exit(1);
  }

  return 0;
}

void ot::Posix::HdlcInterface::HandleHdlcFrame(uint64_t a1, int a2)
{
  ot::Posix::HdlcInterface::HandleHdlcFrame(a1, a2);
}

{
  if (*(a1 + 8) && *(a1 + 24))
  {
    if (a2)
    {
      ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::DiscardFrame(*(a1 + 24));
      v2 = otThreadErrorToString(a2);
      otLogWarnPlat("Error decoding hdlc frame: %s", v3, v4, v5, v6, v7, v8, v9, v2);
    }

    else
    {
      (*(a1 + 8))(*(a1 + 16));
    }
  }
}

void ot::Posix::HdlcInterface::~HdlcInterface(ot::Posix::HdlcInterface *this)
{
  *this = off_1004C8D68;
  (*(*this + 16))(this);
  ot::Spinel::SpinelInterface::~SpinelInterface(this);
}

{
  ot::Posix::HdlcInterface::~HdlcInterface(this);
}

{
  ot::Posix::HdlcInterface::~HdlcInterface(this);
  operator delete();
}

void ot::Spinel::SpinelInterface::~SpinelInterface(ot::Spinel::SpinelInterface *this)
{
  ;
}

{
  __break(1u);
}

{
  __break(1u);
}

void ot::Posix::HdlcInterface::Deinit(ot::Posix::HdlcInterface *this)
{
  ot::Posix::HdlcInterface::CloseFile(this);
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
}

void ot::Posix::HdlcInterface::CloseFile(ot::Posix::HdlcInterface *this)
{
  v19 = this;
  RadioSpinel = ot::Posix::Radio::GetRadioSpinel(&sRadio);
  Rcp2Vendor2Enabled = ot::Spinel::RadioSpinel::GetRcp2Vendor2Enabled(RadioSpinel);
  if (Rcp2Vendor2Enabled)
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      v17 = logging_obg;
      v16 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_1_8_32(v24, "CloseFile");
        _os_log_impl(&_mh_execute_header, v17, v16, "%s:AS Transport::CloseFile:\n", v24, 0xCu);
      }
    }

    else if (!logging_obg)
    {
      v15 = &_os_log_default;
      v14 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v23, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v15, v14, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v23, 0x16u);
      }
    }

    pthread_mutex_lock(&lock);
    ot::Posix::HdlcInterface::airship_close(thread_ctx);
    pthread_mutex_unlock(&lock);
    v13 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v13 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      v12 = v13;
      v11 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_1_8_32(v22, "CloseFile");
        _os_log_impl(&_mh_execute_header, v12, v11, "%s:AS Transport::CloseFile Complete:\n", v22, 0xCu);
      }
    }

    else if (!v13)
    {
      oslog = &_os_log_default;
      v9 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v21, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, oslog, v9, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v21, 0x16u);
      }
    }
  }

  else
  {
    ot::Posix::HdlcInterface::skywalk_close(Rcp2Vendor2Enabled);
    v8 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v8 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      v7 = v8;
      v6 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v3 = v7;
        v4 = v6;
        __os_log_helper_16_0_0(v5);
        _os_log_impl(&_mh_execute_header, v3, v4, "Skywalk::CloseFile:\n", v5, 2u);
      }
    }

    else if (!v8 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v20, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v20, 0x16u);
    }
  }
}

void ot::Posix::HdlcInterface::Read(ot::Posix::HdlcInterface *this)
{
  v8 = __chkstk_darwin(this);
  v7 = 0;
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    oslog = logging_obg;
    type = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      log = oslog;
      v2 = type;
      __os_log_helper_16_0_0(v3);
      _os_log_impl(&_mh_execute_header, log, v2, "In Skywalk::Read:", v3, 2u);
    }
  }

  else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v9, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v9, 0x16u);
  }
}

uint64_t ot::Posix::HdlcInterface::Decode(ot::Posix::HdlcInterface *this, char *a2, __int16 a3)
{
  RadioSpinel = ot::Posix::Radio::GetRadioSpinel(&sRadio);
  if (ot::Spinel::RadioSpinel::GetRcp2Vendor2Enabled(RadioSpinel))
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_1_8_32(v13, "Decode");
        _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "%s: In AS Transport::DecodeByPass:\n", v13, 0xCu);
      }
    }

    else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v12, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v12, 0x16u);
    }

    return ot::Hdlc::Decoder::DecodeByPass((this + 56), a2, a3);
  }

  else
  {
    v6 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v6 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_1_8_32(v11, "Decode");
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s: In Skywalk::Decode:\n", v11, 0xCu);
      }
    }

    else if (!v6 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v10, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v10, 0x16u);
    }

    return ot::Hdlc::Decoder::Decode(this + 56, a2, a3);
  }
}

uint64_t ot::Posix::HdlcInterface::SendFrame(ot::Posix::HdlcInterface *this, const unsigned __int8 *a2)
{
  v15 = __chkstk_darwin(this);
  v14 = v2;
  v13 = v3;
  v8 = v15;
  v12 = 0;
  ot::Spinel::FrameBuffer<(unsigned short)8192>::FrameBuffer(v19);
  ot::Hdlc::Encoder::Encoder(v11, v19);
  if (gPciStatus)
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_0_1_4_0(v18, gPciStatus);
        _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "SendFrame Skipped: gPciStatus=%d\n", v18, 8u);
      }
    }

    else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v17, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v17, 0x16u);
    }

    return 0;
  }

  else
  {
    v9 = pthread_mutex_lock(&hdlc_lock) == 0;
    RadioSpinel = ot::Posix::Radio::GetRadioSpinel(&sRadio);
    if (ot::Spinel::RadioSpinel::GetRcp2Vendor2Enabled(RadioSpinel))
    {
      v12 = ot::Posix::HdlcInterface::Write(v8, v14, v13);
    }

    else
    {
      v12 = ot::Hdlc::Encoder::BeginFrame(v11);
      if (!v12)
      {
        v12 = ot::Hdlc::Encoder::Encode(v11, v14, v13);
        if (!v12)
        {
          v12 = ot::Hdlc::Encoder::EndFrame(v11);
          if (!v12)
          {
            Frame = ot::Spinel::FrameBuffer<(unsigned short)8192>::GetFrame(v19);
            Length = ot::Spinel::FrameBuffer<(unsigned short)8192>::GetLength(v19);
            v12 = ot::Posix::HdlcInterface::Write(v8, Frame, Length);
          }
        }
      }
    }

    if (v9)
    {
      pthread_mutex_unlock(&hdlc_lock);
    }

    return v12;
  }
}

uint64_t ot::Spinel::FrameBuffer<(unsigned short)8192>::FrameBuffer(uint64_t a1)
{
  ot::Spinel::FrameBuffer<(unsigned short)8192>::FrameBuffer(a1);
  return a1;
}

{
  ot::Spinel::FrameWritePointer::FrameWritePointer(a1);
  ot::Spinel::FrameBuffer<(unsigned short)8192>::Clear(a1);
  return a1;
}

uint64_t ot::Posix::HdlcInterface::Write(ot::Posix::HdlcInterface *this, ot::Posix::HdlcInterface *a2, unsigned __int16 a3)
{
  v12 = a3;
  RadioSpinel = ot::Posix::Radio::GetRadioSpinel(&sRadio);
  if (ot::Spinel::RadioSpinel::GetRcp2Vendor2Enabled(RadioSpinel))
  {
    v13 = ot::Posix::HdlcInterface::airship_write(a2, v12);
  }

  else
  {
    v13 = ot::Posix::HdlcInterface::skywalk_write(a2, v12);
  }

  if (v13)
  {
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/hdlc_skywalk_interface.cpp", 47);
    otExitCodeToString(5);
    otLogCritPlat("%s() at %s:%d: %s", v4, v5, v6, v7, v8, v9, v10, "Write");
    handle_daemon_exit();
    exit(5);
  }

  return 0;
}

uint64_t ot::Spinel::FrameBuffer<(unsigned short)8192>::GetFrame(uint64_t a1)
{
  return a1 + 10;
}

{
  return ot::Spinel::FrameBuffer<(unsigned short)8192>::GetFrame(a1);
}

uint64_t ot::Spinel::FrameBuffer<(unsigned short)8192>::GetLength(void *a1)
{
  v1 = __OFSUB__(*a1, a1 + 10);
  return (*a1 - (a1 + 10));
}

{
  return ot::Spinel::FrameBuffer<(unsigned short)8192>::GetLength(a1);
}

uint64_t ot::Posix::HdlcInterface::airship_write(ot::Posix::HdlcInterface *this, size_t a2)
{
  if (gPciStatus)
  {
    printf("%s Skipping airship write PCI is not open gPciStatus=%d", "airship_write", gPciStatus);
  }

  else
  {
    memcpy(__dst, this, a2);
    airship_ch_interface_write();
  }

  return 0;
}

uint64_t ot::Posix::HdlcInterface::skywalk_write(ot::Posix::HdlcInterface *this, size_t a2)
{
  __src = this;
  __n = a2;
  v9 = 0;
  if (gPciStatus)
  {
    printf("Skipping skywalk_write as PCI is not open gPciStatus=%d", gPciStatus);
    return v9;
  }

  else
  {
    memcpy(__dst, __src, __n);
    v9 = ot::Posix::HdlcInterface::write_channel(__dst, __n);
    if (v9)
    {
      logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
      if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        oslog = logging_obg;
        type = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
        {
          log = oslog;
          v4 = type;
          __os_log_helper_16_0_0(v5);
          _os_log_impl(&_mh_execute_header, log, v4, " failed to send in Skywalk\n", v5, 2u);
        }
      }

      else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v13, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v13, 0x16u);
      }

      printf("failed to send in Skywalk. error: %d\n", v9);
      return 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t ot::Posix::HdlcInterface::UpdateFdSet(ot::Posix::HdlcInterface *this, void *a2)
{
  v6 = *(this + 12);
  result = __darwin_check_fd_set_overflow(v6, a2, 0);
  if (result)
  {
    *(a2 + v6 / 0x20uLL) |= 1 << (v6 % 0x20uLL);
  }

  if (*(a2 + 96) < *(this + 12))
  {
    *(a2 + 96) = *(this + 12);
  }

  return result;
}

uint64_t ot::Posix::HdlcInterface::WaitForWritable(ot::Posix::HdlcInterface *this)
{
  v24 = this;
  v23 = 0;
  v22 = xmmword_1004487B0;
  v21 = otPlatTimeGet();
  for (i = v21 + 2000000; ; v22.tv_usec = (i - v21) % 0xF4240)
  {
    memset(&__b, 0, sizeof(__b));
    memset(&v18, 0, sizeof(v18));
    v28 = *(this + 12);
    p_b = &__b;
    v42 = v28;
    v41 = &__b;
    if (__darwin_check_fd_set_overflow(v28, &__b, 0))
    {
      p_b->fds_bits[v28 / 0x20uLL] |= 1 << (v28 % 0x20uLL);
    }

    v26 = *(this + 12);
    v25 = &v18;
    v45 = v26;
    v44 = &v18;
    if (__darwin_check_fd_set_overflow(v26, &v18, 0))
    {
      v25->fds_bits[v26 / 0x20uLL] |= 1 << (v26 % 0x20uLL);
    }

    v17 = select(*(this + 12) + 1, 0, &__b, &v18, &v22);
    if (v17 > 0)
    {
      break;
    }

    if (v17 < 0 && *__error() != 4)
    {
      strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/hdlc_skywalk_interface.cpp", 47);
      otExitCodeToString(5);
      otLogCritPlat("%s() at %s:%d: %s", v8, v9, v10, v11, v12, v13, v14, "WaitForWritable");
      handle_daemon_exit();
      exit(5);
    }

    v21 = otPlatTimeGet();
    if (i <= v21)
    {
      return 1;
    }

    v22.tv_sec = (i - v21) / 0xF4240;
  }

  v33 = *(this + 12);
  v32 = &__b;
  v36 = v33;
  v35 = &__b;
  if (__darwin_check_fd_set_overflow(v33, &__b, 0))
  {
    v34 = v32->fds_bits[v33 / 0x20uLL] & (1 << (v33 % 0x20uLL));
  }

  else
  {
    v34 = 0;
  }

  if (!v34)
  {
    v30 = *(this + 12);
    v29 = &v18;
    v39 = v30;
    v38 = &v18;
    if (__darwin_check_fd_set_overflow(v30, &v18, 0))
    {
      v31 = v29->fds_bits[v30 / 0x20uLL] & (1 << (v30 % 0x20uLL));
    }

    else
    {
      v31 = 0;
    }

    if (v31)
    {
      strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/hdlc_skywalk_interface.cpp", 47);
      otExitCodeToString(1);
      otLogCritPlat("%s() at %s:%d: %s", v1, v2, v3, v4, v5, v6, v7, "WaitForWritable");
      handle_daemon_exit();
      exit(1);
    }

    __assert_rtn("WaitForWritable", "hdlc_skywalk_interface.cpp", 556, "false");
  }

  return v23;
}

uint64_t ot::Posix::HdlcInterface::airship_open(ot::Posix::HdlcInterface *this)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_1_8_32(v17, "airship_open");
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "%s: Creating Airship interface...\n", v17, 0xCu);
    }
  }

  else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v16, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v16, 0x16u);
  }

  if (ot::Posix::HdlcInterface::airship_open_rings(thread_ctx))
  {
    gPciStatus = 0;
    v5 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v5 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_2_8_32_4_0(v15, "airship_open", gPciStatus);
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s: airship_open_rings() successful gPciStatus=%d\n", v15, 0x12u);
      }
    }

    else if (!v5 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v14, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v14, 0x16u);
    }

    if (pthread_create(&g_hci_thread_id, 0, ot::Posix::HdlcInterface::airship_read_thread, 0))
    {
      v3 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v3 && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_2_1_8_32(v11, "airship_open");
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s: failed to create airship rx thread\n", v11, 0xCu);
        }
      }

      else if (!v3 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v10, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v10, 0x16u);
      }

      return 1;
    }

    else
    {
      v2 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v2 && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_2_1_8_32(v9, "airship_open");
          _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s: created airship rx thread\n", v9, 0xCu);
        }
      }

      else if (!v2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v8, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v8, 0x16u);
      }

      return 0;
    }
  }

  else
  {
    gPciStatus = 3;
    v4 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v4 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_2_8_32_4_0(v13, "airship_open", gPciStatus);
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s: airship_open_rings() failed gPciStatus=%d\n", v13, 0x12u);
      }
    }

    else if (!v4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v12, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v12, 0x16u);
    }

    return 1;
  }
}