void CASPIEnter(void)
{
  if (_dispatch_is_fork_of_multithreaded_parent())
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      CASPIEnter();
    }

    v0 = abort_with_reason();
    AnalyticsSendEvent(v0);
  }

  else if (CASPIEnter(void)::sonce != -1)
  {
    CASPIEnter();
  }
}

void AnalyticsSendEvent(void *a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3321888768;
  v6[2] = __AnalyticsSendEvent_block_invoke;
  v6[3] = &__block_descriptor_40_ea8_32c31_ZTSKZ18AnalyticsSendEventE3__0_e19___NSDictionary_8__0l;
  v7 = v3;
  v4 = v3;
  AnalyticsSendEventInternal(a1, v6, 0, 0, 0);

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t AnalyticsSendEventInternal(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v27 = v7;
  v26 = a2;
  v8 = a5;
  v9 = objc_autoreleasePoolPush();
  CASPIEnter();
  v11 = CoreAnalytics::Client::get(v10);
  if (!v7)
  {
    {
      AnalyticsSendEventInternal();
    }

    goto LABEL_17;
  }

  v12 = v11;
  v13 = [v7 UTF8String];
  if (!v13)
  {
    {
      AnalyticsSendEventInternal();
    }

LABEL_17:
    v20 = 0;
    goto LABEL_30;
  }

  memset(&v25, 170, sizeof(v25));
  v14 = std::string::basic_string[abi:ne200100]<0>(&v25, v13);
  v15 = CoreAnalytics::Client::get(v14);
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v25;
  }

  else
  {
    v16 = v25.__r_.__value_.__r.__words[0];
  }

  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v25.__r_.__value_.__l.__size_;
  }

  if (CoreAnalytics::Client::isEventUsed(v15, v16, size))
  {
    if (v8)
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"kLogPayload"];
      v19 = [v8 objectForKey:v18];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v19 BOOLValue];
      }
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v25.__r_.__value_.__l.__data_, v25.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v25;
    }

    *&buf = &unk_1F241FA60;
    *(&buf + 1) = &v27;
    v29 = &v26;
    p_buf = &buf;
    v20 = CoreAnalytics::Client::sendEventAlways(v12, &__p, &buf);
    std::__function::__value_func<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> ()(void)>::~__value_func[abi:ne200100](&buf);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v7;
      _os_log_impl(&dword_1AE55E000, v21, OS_LOG_TYPE_INFO, "Dropping %@ as it isn't used in any transform (not in the config or budgeted?)", &buf, 0xCu);
    }

    v20 = 0;
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

LABEL_30:
  objc_autoreleasePoolPop(v9);

  v22 = *MEMORY[0x1E69E9840];
  return v20;
}

void sub_1AE55F4D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, void *a22, char a23)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
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

uint64_t *CoreAnalytics::Client::get(CoreAnalytics::Client *this)
{
  if ((atomic_load_explicit(&_MergedGlobals, memory_order_acquire) & 1) == 0)
  {
    CoreAnalytics::Client::get();
  }

  if (CoreAnalytics::Client::get(void)::sonce != -1)
  {
    CoreAnalytics::Client::get();
  }

  return qword_1ED452CB8;
}

uint64_t CoreAnalytics::Client::isEventUsed(uint64_t a1, const void *a2, size_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = 0xAAAAAAAAAAAAAAAALL;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  std::atomic_load[abi:ne200100]<FrameworkConfiguration const>((a1 + 80), &v9);
  if (v9 && (*(a1 + 62) & 1) == 0)
  {
    isEventUsed = FrameworkConfiguration::isEventUsed(v9, a2, a3);
  }

  else
  {
    isEventUsed = 1;
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v7 = *MEMORY[0x1E69E9840];
  return isEventUsed;
}

uint64_t AnalyticsIsEventUsed(void *a1)
{
  __p[3] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_autoreleasePoolPush();
  CASPIEnter();
  memset(__p, 170, 24);
  v3 = std::string::basic_string[abi:ne200100]<0>(__p, [v1 UTF8String]);
  v4 = CoreAnalytics::Client::get(v3);
  if (SHIBYTE(__p[2]) >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if (SHIBYTE(__p[2]) >= 0)
  {
    v6 = HIBYTE(__p[2]);
  }

  else
  {
    v6 = __p[1];
  }

  isEventUsed = CoreAnalytics::Client::isEventUsed(v4, v5, v6);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  objc_autoreleasePoolPop(v2);

  v8 = *MEMORY[0x1E69E9840];
  return isEventUsed;
}

void sub_1AE55F7EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t CoreAnalytics::Client::sendEventAlways(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[5] = *MEMORY[0x1E69E9840];
  if (MEMORY[0x1B2704910](*(a1 + 48)) == MEMORY[0x1E69E9E68])
  {
    v7 = 0xAAAAAAAAAAAAAAAALL;
    v8 = 0xAAAAAAAAAAAAAAAALL;
    v4 = *(a3 + 24);
    if (!v4)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v4 + 48))(&v7);
    if (v7 == 1)
    {
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::dump(v9);
    }

    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v7);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v8, v7);
  }

  v5 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1AE55FB98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, xpc_object_t object, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void std::__function::__func<AnalyticsSendEventInternal(NSString const*,NSDictionary<NSString*,NSObject *> *({block_pointer})(void),XPCMessagePriority,EventPayloadFormat,NSDictionary<NSString*,NSObject *> *)::$_0,std::allocator<AnalyticsSendEventInternal(NSString const*,NSDictionary<NSString*,NSObject *> *({block_pointer})(void),XPCMessagePriority,EventPayloadFormat,NSDictionary<NSString*,NSObject *> *)::$_0>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> ()(void)>::operator()(uint64_t a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = (*(**(a1 + 16) + 16))();
  v4 = v3;
  if (!v3)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(a2, 0, 0, 0, 1);
  }

  makeJsonFromNSObject(v3, a2);

  v5 = *MEMORY[0x1E69E9840];
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t FrameworkConfiguration::isEventUsed(uint64_t *a1, const void *a2, size_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  if (*a1 == -1)
  {
    v3 = 0;
  }

  v20 = v3;
  v4 = *(a1[2] + 8);
  __p[0] = 0;
  __p[1] = 0;
  v25 = 0;
  if (v4)
  {
    v7 = 1;
    while (1)
    {
      v8 = (v7 + v4) >> 1;
      std::string::basic_string[abi:ne200100]<0>(&v22, (v20 + *(a1[2] + 4 * (v8 - 1) + 24)));
      if (SHIBYTE(v25) < 0)
      {
        operator delete(__p[0]);
      }

      *__p = v22;
      v9 = v22;
      v25 = v23;
      v10 = SHIBYTE(v23);
      v11 = v23 >= 0 ? HIBYTE(v23) : *(&v22 + 1);
      v12 = v23 >= 0 ? __p : v22;
      if (a3 == v11 && !memcmp(a2, v12, a3))
      {
        break;
      }

      if (v11 >= a3)
      {
        v13 = a3;
      }

      else
      {
        v13 = v11;
      }

      v14 = memcmp(a2, v12, v13);
      v15 = a3 < v11;
      if (a3 == v11 || v14 != 0)
      {
        v15 = v14 < 0;
      }

      if (v15)
      {
        v4 = v8 - 1;
      }

      else
      {
        v7 = v8 + 1;
      }

      if (v7 > v4)
      {
        v17 = 0;
        if ((v10 & 0x80000000) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }
    }

    v17 = 1;
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

LABEL_31:
    operator delete(v9);
  }

  else
  {
    v17 = 0;
  }

LABEL_32:
  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

void sub_1AE56023C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::atomic_load[abi:ne200100]<FrameworkConfiguration const>(void *a1@<X0>, void *a2@<X8>)
{
  sp_mut = std::__get_sp_mut(a1);
  std::__sp_mut::lock(sp_mut);
  v5 = a1[1];
  *a2 = *a1;
  a2[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::__sp_mut::unlock(sp_mut);
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

void makeJsonFromNSObjectWithDepthCount(unsigned __int8 *__return_ptr a1@<X8>, NSObject *a2@<X0>, unsigned int a3@<W1>)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a3 >= 0xB)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Object exceeded the max depth"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23.__r_.__value_.__r.__words[0] = [v5 UTF8String];
    if (!v23.__r_.__value_.__r.__words[0])
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Invalid non-UTF8 character(s) in string value"];
    }

    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const*&,char const*,0>(a1);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = CFGetTypeID(v6);
    if (v7 == CFBooleanGetTypeID())
    {
      v8 = [v6 BOOLValue];
      *a1 = 4;
      *(a1 + 1) = v8;
LABEL_39:
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);

      goto LABEL_40;
    }

    v9 = *[v6 objCType];
    if (v9 <= 0x50)
    {
      if (v9 > 72)
      {
        if (v9 == 73 || v9 == 76)
        {
          goto LABEL_37;
        }

        goto LABEL_41;
      }

      if (v9 != 66)
      {
        if (v9 == 67)
        {
LABEL_37:
          v12 = [v6 unsignedLongLongValue];
          v13 = 6;
          goto LABEL_38;
        }

LABEL_41:
        v15 = MEMORY[0x1E695DF30];
        v16 = [v6 objCType];
        [v15 raise:*MEMORY[0x1E695D940] format:{@"Invalid number type in JSON write (%c)", *v16}];
        *a1 = 0;
        *(a1 + 1) = 0;
        goto LABEL_39;
      }
    }

    else
    {
      if ((v9 - 99) > 0x10)
      {
        goto LABEL_35;
      }

      if (((1 << (v9 - 99)) & 0x14241) == 0)
      {
        if (v9 == 100)
        {
          [v6 doubleValue];
          v18 = *&v17;
          if (fabs(v17) == INFINITY)
          {
            [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Invalid number value (infinite) in JSON write"];
          }

          *a1 = 7;
          *(a1 + 1) = v18;
          goto LABEL_39;
        }

        if (v9 == 102)
        {
          [v6 floatValue];
          v11 = v10;
          if (fabsf(v10) == INFINITY)
          {
            [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Invalid number value (infinite) in JSON conversion"];
          }

          *a1 = 7;
          *(a1 + 1) = v11;
          goto LABEL_39;
        }

LABEL_35:
        if (v9 == 81 || v9 == 83)
        {
          goto LABEL_37;
        }

        goto LABEL_41;
      }
    }

    v12 = [v6 longLongValue];
    v13 = 5;
LABEL_38:
    *a1 = v13;
    *(a1 + 1) = v12;
    goto LABEL_39;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *&v23.__r_.__value_.__r.__words[1] = 0uLL;
    v23.__r_.__value_.__r.__words[0] = &v23.__r_.__value_.__l.__size_;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = ___ZL34makeJsonFromNSObjectWithDepthCountP8NSObjecth_block_invoke;
    v21[3] = &__block_descriptor_41_e15_v32__0_8_16_B24l;
    v21[4] = &v23;
    v22 = a3;
    [v5 enumerateKeysAndObjectsUsingBlock:v21];
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::map<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::map<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,0>(a1);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    memset(&v23, 0, sizeof(v23));
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::reserve(&v23, [v5 count]);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = ___ZL34makeJsonFromNSObjectWithDepthCountP8NSObjecth_block_invoke_2;
    v19[3] = &__block_descriptor_41_e15_v32__0_8Q16_B24l;
    v19[4] = &v23;
    v20 = a3;
    [v5 enumerateObjectsUsingBlock:v19];
    *(a1 + 1) = 0;
    *a1 = 2;
    operator new();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    hex([v5 bytes], [v5 length], &v23);
    *(a1 + 1) = 0;
    *a1 = 3;
    operator new();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Invalid type in JSON write (%@)", objc_opt_class()}];
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
LABEL_40:

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(void (****a1)(void), uint64_t **a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a2;
  if (v10 <= 4)
  {
    if (*a2 > 1u)
    {
      if (v10 != 2)
      {
        if (v10 != 3)
        {
          if (v10 == 4)
          {
            v12 = *a1;
            v13 = (**a1)[1];
            *(a2 + 8);
            goto LABEL_71;
          }

LABEL_148:
          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump();
        }

        v25 = *a1;
        (***a1)();
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(a1, a2[1], a4);
        v13 = ***a1;
LABEL_134:

        return v13();
      }

      v33 = *a1;
      v34 = **a1;
      if (*a2[1] != a2[1][1])
      {
        if (!a3)
        {
          (*v34)();
          v56 = a2[1];
          v58 = *v56;
          v57 = v56[1];
          if (v58 != v57 - 16)
          {
            do
            {
              nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v58, 0, a4, a5, a6);
              (***a1)();
              v58 += 16;
              v59 = a2[1];
              v57 = v59[1];
            }

            while (v58 != v57 - 16);
            v58 = *v59;
          }

          if (v58 == v57)
          {
            nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump();
          }

          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v57 - 16, 0, a4, a5, a6);
          goto LABEL_117;
        }

        v34[1]();
        v35 = a6 + a5;
        v36 = a1 + 76;
        v37 = *(a1 + 631);
        if ((v37 & 0x80000000) != 0)
        {
          v38 = a1[77];
          if (v38 < v35)
          {
            goto LABEL_144;
          }
        }

        else if (v35 > v37)
        {
          v38 = *(a1 + 631);
LABEL_144:
          std::string::resize((a1 + 76), 2 * v38, 32);
        }

        v78 = a2[1];
        v80 = *v78;
        v79 = v78[1];
        if (v80 != v79 - 16)
        {
          do
          {
            v81 = a1 + 76;
            if (*(a1 + 631) < 0)
            {
              v81 = *v36;
            }

            ((**a1)[1])(*a1, v81, (a6 + a5));
            nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v80, 1, a4, a5, (a6 + a5));
            ((**a1)[1])(*a1, ",\n", 2);
            v80 += 16;
            v82 = a2[1];
            v79 = v82[1];
          }

          while (v80 != v79 - 16);
          v80 = *v82;
        }

        if (v80 == v79)
        {
          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump();
        }

        v83 = a1 + 76;
        if (*(a1 + 631) < 0)
        {
          v83 = *v36;
        }

        ((**a1)[1])(*a1, v83, (a6 + a5));
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, a2[1][1] - 16, 1, a4, a5, (a6 + a5));
        (***a1)();
        if (*(a1 + 631) < 0)
        {
          v36 = *v36;
        }

        ((**a1)[1])(*a1, v36, a6);
LABEL_117:
        v13 = ***a1;
        goto LABEL_134;
      }

      v44 = v34[1];
      goto LABEL_45;
    }

    if (*a2)
    {
      v15 = *a1;
      v16 = **a1;
      if (!a2[1][2])
      {
        v44 = v16[1];
LABEL_45:

        return v44();
      }

      if (!a3)
      {
        (*v16)();
        v47 = a2[1];
        v48 = *v47;
        if (v47[2] != 1)
        {
          v49 = 0;
          do
          {
            (***a1)(*a1, 34);
            nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(a1, v48 + 4, a4);
            ((**a1)[1])(*a1, ":", 2);
            nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v48 + 7, 0, a4, a5, a6);
            (***a1)();
            v50 = v48[1];
            v51 = v48;
            if (v50)
            {
              do
              {
                v48 = v50;
                v50 = *v50;
              }

              while (v50);
            }

            else
            {
              do
              {
                v48 = v51[2];
                v52 = *v48 == v51;
                v51 = v48;
              }

              while (!v52);
            }

            ++v49;
            v47 = a2[1];
          }

          while (v49 < v47[2] - 1);
        }

        v53 = v47 + 1;
        if (v48 == v53)
        {
          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump();
        }

        v54 = v48[1];
        if (v54)
        {
          do
          {
            v55 = v54;
            v54 = *v54;
          }

          while (v54);
        }

        else
        {
          v84 = v48;
          do
          {
            v55 = v84[2];
            v52 = *v55 == v84;
            v84 = v55;
          }

          while (!v52);
        }

        if (v55 != v53)
        {
          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump();
        }

        (***a1)(*a1, 34);
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(a1, v48 + 4, a4);
        ((**a1)[1])(*a1, ":", 2);
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v48 + 7, 0, a4, a5, a6);
        goto LABEL_133;
      }

      v16[1]();
      v17 = a6 + a5;
      v18 = a1 + 76;
      v19 = *(a1 + 631);
      if ((v19 & 0x80000000) != 0)
      {
        v20 = a1[77];
        if (v20 < v17)
        {
          goto LABEL_142;
        }
      }

      else if (v17 > v19)
      {
        v20 = *(a1 + 631);
LABEL_142:
        std::string::resize((a1 + 76), 2 * v20, 32);
      }

      v69 = a2[1];
      v70 = *v69;
      if (v69[2] == 1)
      {
        v71 = *v69;
      }

      else
      {
        v72 = 0;
        do
        {
          v73 = a1 + 76;
          if (*(a1 + 631) < 0)
          {
            v73 = *v18;
          }

          ((**a1)[1])(*a1, v73, (a6 + a5));
          (***a1)();
          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(a1, v70 + 4, a4);
          ((**a1)[1])(*a1, ": ", 3);
          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v70 + 7, 1, a4, a5, (a6 + a5));
          ((**a1)[1])(*a1, ",\n", 2);
          v74 = v70[1];
          if (v74)
          {
            do
            {
              v71 = v74;
              v74 = *v74;
            }

            while (v74);
          }

          else
          {
            do
            {
              v71 = v70[2];
              v52 = *v71 == v70;
              v70 = v71;
            }

            while (!v52);
          }

          ++v72;
          v69 = a2[1];
          v70 = v71;
        }

        while (v72 < v69[2] - 1);
      }

      v75 = v69 + 1;
      if (v71 == v75)
      {
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump();
      }

      v76 = v71[1];
      if (v76)
      {
        do
        {
          v77 = v76;
          v76 = *v76;
        }

        while (v76);
      }

      else
      {
        v85 = v71;
        do
        {
          v77 = v85[2];
          v52 = *v77 == v85;
          v85 = v77;
        }

        while (!v52);
      }

      if (v77 != v75)
      {
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump();
      }

      v86 = a1 + 76;
      if (*(a1 + 631) < 0)
      {
        v86 = *v18;
      }

      ((**a1)[1])(*a1, v86, (a6 + a5));
      (***a1)();
      nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(a1, v71 + 4, a4);
      ((**a1)[1])(*a1, ": ", 3);
      nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v71 + 7, 1, a4, a5, (a6 + a5));
      (***a1)();
      if (*(a1 + 631) < 0)
      {
        v87 = *v18;
      }

      v68 = (**a1)[1];
LABEL_132:
      v68();
LABEL_133:
      v13 = ***a1;
      goto LABEL_134;
    }

    v23 = *a1;
    v13 = (**a1)[1];
LABEL_71:

    return v13();
  }

  if (*a2 <= 6u)
  {
    if (v10 == 5)
    {
      v24 = a2[1];

      return nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<long long,0>(a1, v24);
    }

    else
    {
      if (v10 != 6)
      {
        goto LABEL_148;
      }

      v21 = a2[1];

      return nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned long long,0>(a1, v21);
    }
  }

  else
  {
    switch(v10)
    {
      case 7u:
        v39 = *(a2 + 1);

        return nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_float(a1, v39);
      case 8u:
        v26 = *a1;
        v27 = (**a1)[1];
        if (a3)
        {
          v27();
          v28 = (a6 + a5);
          v29 = a1 + 76;
          v30 = *(a1 + 631);
          if ((v30 & 0x80000000) != 0)
          {
            v60 = a1[77];
            if (v60 >= v28)
            {
              v31 = *a1;
LABEL_76:
              v32 = *v29;
              goto LABEL_77;
            }
          }

          else
          {
            if (v28 <= v30)
            {
              v31 = *a1;
              v32 = a1 + 76;
LABEL_77:
              ((*v31)[1])(v31, v32, v28);
              ((**a1)[1])(*a1, "bytes: [", 10);
              v61 = *a2[1];
              v62 = a2[1][1];
              v63 = *a2[1];
              if (v63 != v62)
              {
                for (; v63 != v62 - 1; v62 = a2[1][1])
                {
                  v64 = *v63++;
                  nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(a1, v64);
                  ((**a1)[1])(*a1, ", ", 2);
                }

                nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(a1, *(v62 - 1));
              }

              ((**a1)[1])(*a1, "],\n", 3);
              v65 = a1 + 76;
              if (*(a1 + 631) < 0)
              {
                v65 = *v29;
              }

              ((**a1)[1])(*a1, v65, v28);
              ((**a1)[1])(*a1, "subtype: ", 11);
              v66 = a2[1];
              if (*(v66 + 25) == 1)
              {
                nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(a1, *(v66 + 24));
              }

              else
              {
                ((**a1)[1])(*a1, "null", 4);
              }

              (***a1)(*a1, 10);
              if (*(a1 + 631) < 0)
              {
                v67 = *v29;
              }

              v68 = (**a1)[1];
              goto LABEL_132;
            }

            v60 = *(a1 + 631);
          }

          std::string::resize((a1 + 76), 2 * v60, 32);
          v31 = *a1;
          v32 = a1 + 76;
          if ((*(a1 + 631) & 0x80000000) == 0)
          {
            goto LABEL_77;
          }

          goto LABEL_76;
        }

        v27();
        v40 = *a2[1];
        v41 = a2[1][1];
        v42 = *a2[1];
        if (v42 != v41)
        {
          while (v42 != v41 - 1)
          {
            v43 = *v42++;
            nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(a1, v43);
            (***a1)(*a1, 44);
            v41 = a2[1][1];
          }

          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(a1, *(v41 - 1));
        }

        ((**a1)[1])(*a1, "],subtype:", 12);
        v45 = a2[1];
        if (*(v45 + 25) != 1)
        {
          v13 = (**a1)[1];
          goto LABEL_71;
        }

        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(a1, *(v45 + 24));
        v46 = ***a1;

        return v46();
      case 9u:
        v14 = *a1;
        v13 = (**a1)[1];
        goto LABEL_71;
      default:
        goto LABEL_148;
    }
  }
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::map<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::map<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 1;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::map<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::map<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>();
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

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(uint64_t *a1, int a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v29 = 0;
  v30 = 0;
  v31 = 0;
  if (a2 == 1)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::reserve(&v29, *(*a1 + 16));
    v7 = *a1 + 8;
    v8 = **a1;
    v4 = v30;
    if (v8 != v7)
    {
      do
      {
        if (v4 >= v31)
        {
          v4 = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(&v29, (v8 + 7));
        }

        else
        {
          *v4 = *(v8 + 56);
          *(v4 + 8) = v8[8];
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8 + 56);
          *(v8 + 56) = 0;
          v8[8] = 0;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
          v4 += 16;
        }

        v30 = v4;
        v9 = v8[1];
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = v8[2];
            v11 = *v10 == v8;
            v8 = v10;
          }

          while (!v11);
        }

        v8 = v10;
      }

      while (v10 != v7);
    }
  }

  else
  {
    v4 = 0;
    if (a2 == 2)
    {
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::reserve(&v29, (*(*a1 + 8) - **a1) >> 4);
      v5 = **a1;
      v6 = *(*a1 + 8);
      while (v5 != v6)
      {
        std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:ne200100](&v29, v5);
        v5 += 16;
      }

      v4 = v30;
    }
  }

  if (v29 != v4)
  {
    do
    {
      v27 = 0xAAAAAAAAAAAAAAAALL;
      v28 = 0xAAAAAAAAAAAAAAAALL;
      v13 = *(v4 - 16);
      v12 = v4 - 16;
      LOBYTE(v27) = v13;
      v28 = *(v12 + 8);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v12);
      *v12 = 0;
      *(v12 + 8) = 0;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v27);
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__base_destruct_at_end[abi:ne200100](&v29, (v30 - 16));
      if (v27 == 1)
      {
        v17 = v28;
        v18 = (v28 + 1);
        v19 = *v28;
        if (*v28 != (v28 + 1))
        {
          v20 = v30;
          do
          {
            if (v20 >= v31)
            {
              v20 = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(&v29, (v19 + 56));
            }

            else
            {
              *v20 = v19[56];
              *(v20 + 8) = *(v19 + 8);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19 + 56);
              v19[56] = 0;
              *(v19 + 8) = 0;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v20);
              v20 += 16;
            }

            v30 = v20;
            v21 = *(v19 + 1);
            if (v21)
            {
              do
              {
                v22 = v21;
                v21 = *v21;
              }

              while (v21);
            }

            else
            {
              do
              {
                v22 = *(v19 + 2);
                v11 = *v22 == v19;
                v19 = v22;
              }

              while (!v11);
            }

            v19 = v22;
          }

          while (v22 != v18);
          v17 = v28;
        }

        std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy(v17, *(v17 + 8));
        *v17 = v17 + 8;
        *(v17 + 16) = 0;
        *(v17 + 8) = 0;
      }

      else if (v27 == 2)
      {
        v14 = v28;
        v15 = *v28;
        v16 = v28[1];
        if (*v28 != v16)
        {
          do
          {
            std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:ne200100](&v29, v15);
            v15 += 16;
          }

          while (v15 != v16);
          v14 = v28;
          v15 = *v28;
        }

        std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__base_destruct_at_end[abi:ne200100](v14, v15);
      }

      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v27);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v28, v27);
      v4 = v30;
    }

    while (v29 != v30);
  }

  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v23 = *a1;
      if (*(*a1 + 23) < 0)
      {
        v25 = *v23;
        goto LABEL_50;
      }
    }

    else
    {
      if (a2 != 8)
      {
        goto LABEL_53;
      }

      v23 = *a1;
      v24 = **a1;
      if (v24)
      {
        v23[1] = v24;
        v25 = v24;
LABEL_50:
        operator delete(v25);
        goto LABEL_51;
      }
    }

LABEL_52:
    operator delete(v23);
    goto LABEL_53;
  }

  if (a2 == 1)
  {
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy(*a1, *(*a1 + 8));
    goto LABEL_51;
  }

  if (a2 == 2)
  {
    v27 = *a1;
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&v27);
LABEL_51:
    v23 = *a1;
    goto LABEL_52;
  }

LABEL_53:
  v27 = &v29;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&v27);
  v26 = *MEMORY[0x1E69E9840];
}

void sub_1AE562058(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

unsigned __int8 *nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(unsigned __int8 *result)
{
  v1 = *result;
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      if (*(result + 1))
      {
        return result;
      }

      v2 = "m_type != value_t::string or m_value.string != nullptr";
      v3 = 1222;
    }

    else
    {
      if (v1 != 8 || *(result + 1))
      {
        return result;
      }

      v2 = "m_type != value_t::binary or m_value.binary != nullptr";
      v3 = 1223;
    }

LABEL_15:
    __assert_rtn("assert_invariant", "json.hpp", v3, v2);
  }

  if (v1 == 1)
  {
    if (*(result + 1))
    {
      return result;
    }

    v2 = "m_type != value_t::object or m_value.object != nullptr";
    v3 = 1220;
    goto LABEL_15;
  }

  if (v1 == 2 && !*(result + 1))
  {
    v2 = "m_type != value_t::array or m_value.array != nullptr";
    v3 = 1221;
    goto LABEL_15;
  }

  return result;
}

void std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1AE562288(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__find_equal<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v9 = v4;
        v12 = v4[4];
        v10 = v4 + 4;
        v11 = v12;
        v13 = *(v10 + 23);
        if (v13 >= 0)
        {
          v14 = *(v10 + 23);
        }

        else
        {
          v14 = v10[1];
        }

        if (v13 >= 0)
        {
          v15 = v10;
        }

        else
        {
          v15 = v11;
        }

        if (v14 >= v7)
        {
          v16 = v7;
        }

        else
        {
          v16 = v14;
        }

        v17 = memcmp(v8, v15, v16);
        v18 = v7 < v14;
        if (v17)
        {
          v18 = v17 < 0;
        }

        if (!v18)
        {
          break;
        }

        v4 = *v9;
        v5 = v9;
        if (!*v9)
        {
          goto LABEL_28;
        }
      }

      v19 = memcmp(v15, v8, v16);
      v20 = v14 < v7;
      if (v19)
      {
        v20 = v19 < 0;
      }

      if (!v20)
      {
        break;
      }

      v5 = v9 + 1;
      v4 = v9[1];
    }

    while (v4);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_28:
  *a2 = v9;
  return v5;
}

void ___ZL34makeJsonFromNSObjectWithDepthCountP8NSObjecth_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (![v5 UTF8String])
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Invalid non-UTF8 character(s) in dictionary key"];
    }

    v7 = *(a1 + 32);
    makeJsonFromNSObjectWithDepthCount(&v9, v6, *(a1 + 40) + 1);
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_unique_impl<char const*&,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>();
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Invalid (non-string) key in JSON dictionary"];

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1AE5624DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a9);

  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_unique_impl<char const*&,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>()
{
  v0[3] = *MEMORY[0x1E69E9840];
  memset(v0, 170, 24);
  std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__construct_node<char const*&,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>();
}

void sub_1AE5625DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,void *>>>::operator()[abi:ne200100](v11 + 8, a11);
  }

  _Unwind_Resume(exception_object);
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const*&,char const*,0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::string,char const* const&>();
}

void nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::serializer(uint64_t a1, uint64_t a2, char a3)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v5 = localeconv();
  *(a1 + 80) = v5;
  thousands_sep = v5->thousands_sep;
  if (thousands_sep)
  {
    LOBYTE(thousands_sep) = *thousands_sep;
  }

  *(a1 + 88) = thousands_sep;
  decimal_point = v5->decimal_point;
  if (v5->decimal_point)
  {
    LOBYTE(decimal_point) = *decimal_point;
  }

  *(a1 + 90) = 0u;
  *(a1 + 89) = decimal_point;
  *(a1 + 106) = 0u;
  *(a1 + 122) = 0u;
  *(a1 + 138) = 0u;
  *(a1 + 154) = 0u;
  *(a1 + 170) = 0u;
  *(a1 + 186) = 0u;
  *(a1 + 202) = 0u;
  *(a1 + 218) = 0u;
  *(a1 + 234) = 0u;
  *(a1 + 250) = 0u;
  *(a1 + 266) = 0u;
  *(a1 + 282) = 0u;
  *(a1 + 298) = 0u;
  *(a1 + 314) = 0u;
  *(a1 + 330) = 0u;
  *(a1 + 346) = 0u;
  *(a1 + 362) = 0u;
  *(a1 + 378) = 0u;
  *(a1 + 394) = 0u;
  *(a1 + 410) = 0u;
  *(a1 + 426) = 0u;
  *(a1 + 442) = 0u;
  *(a1 + 458) = 0u;
  *(a1 + 474) = 0u;
  *(a1 + 490) = 0u;
  *(a1 + 506) = 0u;
  *(a1 + 522) = 0u;
  *(a1 + 538) = 0u;
  *(a1 + 554) = 0u;
  *(a1 + 570) = 0u;
  *(a1 + 586) = 0u;
  *(a1 + 602) = a3;
  operator new();
}

void sub_1AE5627F4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(uint64_t result, uint64_t *a2, int a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v46 = 0;
  v3 = *(a2 + 23);
  v4 = a2[1];
  if ((v3 & 0x80000000) == 0)
  {
    v4 = *(a2 + 23);
  }

  if (v4)
  {
    v7 = result;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = v3 >> 63;
    v47 = -1431655766;
    v13 = result + 90;
    while (1)
    {
      v14 = *a2;
      if ((v12 & 1) == 0)
      {
        v14 = a2;
      }

      v15 = *(v14 + v9);
      result = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::decode(&v46, &v47, v15);
      if (result == 1)
      {
        v17 = *(v7 + 158);
        if ((v17 - 1) >= 2)
        {
          if (!v17)
          {
            v44 = 0xAAAAAAAAAAAAAAAALL;
            v45 = 0x3AAAAAAAAAAAAAALL;
            *__str = 0xAAAAAAAA00000000;
            snprintf(__str, 3uLL, "%.2X", v15);
            exception = __cxa_allocate_exception(0x20uLL);
            std::to_string(&v38, v9);
            v28 = std::string::insert(&v38, 0, "invalid UTF-8 byte at index ");
            v29 = *&v28->__r_.__value_.__l.__data_;
            v39.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
            *&v39.__r_.__value_.__l.__data_ = v29;
            v28->__r_.__value_.__l.__size_ = 0;
            v28->__r_.__value_.__r.__words[2] = 0;
            v28->__r_.__value_.__r.__words[0] = 0;
            v30 = std::string::append(&v39, ": 0x");
            v31 = *&v30->__r_.__value_.__l.__data_;
            v40.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
            *&v40.__r_.__value_.__l.__data_ = v31;
            v30->__r_.__value_.__l.__size_ = 0;
            v30->__r_.__value_.__r.__words[2] = 0;
            v30->__r_.__value_.__r.__words[0] = 0;
            if (v45 >= 0)
            {
              v32 = __str;
            }

            else
            {
              v32 = *__str;
            }

            if (v45 >= 0)
            {
              v33 = HIBYTE(v45);
            }

            else
            {
              v33 = v44;
            }

            v34 = std::string::append(&v40, v32, v33);
            v35 = *&v34->__r_.__value_.__l.__data_;
            v42 = v34->__r_.__value_.__r.__words[2];
            v41 = v35;
            v34->__r_.__value_.__l.__size_ = 0;
            v34->__r_.__value_.__r.__words[2] = 0;
            v34->__r_.__value_.__r.__words[0] = 0;
            nlohmann::detail::type_error::create(316, &v41, exception);
          }

          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped();
        }

        v18 = v10 != 0;
        if (v17 == 1)
        {
          v19 = v13 + v11;
          if (a3)
          {
            *v19 = 1717990748;
            *(v19 + 4) = 25702;
            v11 += 6;
          }

          else
          {
            v11 += 3;
            *v19 = -16401;
            *(v19 + 2) = -67;
          }

          if ((v11 - 500) <= 0xC)
          {
            result = (*(**v7 + 8))(*v7, v13, v11);
            v11 = 0;
          }
        }

        v10 = 0;
        v9 -= v18;
        v46 = 0;
        goto LABEL_52;
      }

      if (result)
      {
        if ((a3 & 1) == 0)
        {
          if (*(a2 + 23) >= 0)
          {
            v20 = a2;
          }

          else
          {
            v20 = *a2;
          }

          *(v13 + v8++) = *(v20 + v9);
        }

        ++v10;
        goto LABEL_53;
      }

      if (v47 <= 11)
      {
        switch(v47)
        {
          case 8:
            v16 = 25180;
            goto LABEL_48;
          case 9:
            v16 = 29788;
            goto LABEL_48;
          case 10:
            v16 = 28252;
            goto LABEL_48;
        }
      }

      else if (v47 > 33)
      {
        if (v47 == 34)
        {
          v16 = 8796;
          goto LABEL_48;
        }

        if (v47 == 92)
        {
          v16 = 23644;
          goto LABEL_48;
        }
      }

      else
      {
        if (v47 == 12)
        {
          v16 = 26204;
          goto LABEL_48;
        }

        if (v47 == 13)
        {
          v16 = 29276;
LABEL_48:
          *(v13 + v8) = v16;
          v11 = v8 + 2;
          goto LABEL_49;
        }
      }

      if (v47 > 0x7E)
      {
        v21 = a3;
      }

      else
      {
        v21 = 0;
      }

      if (v47 < 0x20 || v21)
      {
        if (HIWORD(v47))
        {
          result = snprintf((v13 + v8), 0xDuLL, "\\u%04x\\u%04x", ((v47 >> 10) - 10304), v47 & 0x3FF | 0xDC00);
          v11 = v8 + 12;
        }

        else
        {
          result = snprintf((v13 + v8), 7uLL, "\\u%04x", v47);
          v11 = v8 + 6;
        }
      }

      else
      {
        if (*(a2 + 23) >= 0)
        {
          v22 = a2;
        }

        else
        {
          v22 = *a2;
        }

        v11 = v8 + 1;
        *(v13 + v8) = *(v22 + v9);
      }

LABEL_49:
      if ((v11 - 500) > 0xC)
      {
        v10 = 0;
LABEL_52:
        v8 = v11;
        goto LABEL_53;
      }

      result = (*(**v7 + 8))(*v7, v13, v11);
      v11 = 0;
      v10 = 0;
      v8 = 0;
LABEL_53:
      ++v9;
      v23 = *(a2 + 23);
      v12 = v23 >> 63;
      v24 = a2[1];
      if ((v23 & 0x80000000) == 0)
      {
        v24 = *(a2 + 23);
      }

      if (v9 >= v24)
      {
        if (v46)
        {
          v26 = *(v7 + 158);
          switch(v26)
          {
            case 1:
              (*(**v7 + 8))(*v7, v13, v11);
              result = (*(**v7 + 8))();
              break;
            case 2:
              result = (*(**v7 + 8))(*v7, v13, v11);
              break;
            case 0:
              v44 = 0xAAAAAAAAAAAAAAAALL;
              v45 = 0x3AAAAAAAAAAAAAALL;
              *__str = 0xAAAAAAAA00000000;
              if ((v23 & 0x80000000) == 0)
              {
                v36 = a2;
              }

              else
              {
                v36 = *a2;
              }

              snprintf(__str, 3uLL, "%.2X", *(v36 + v24 - 1));
              v37 = __cxa_allocate_exception(0x20uLL);
              std::operator+<char>();
              nlohmann::detail::type_error::create(316, &v41, v37);
            default:
              nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped();
          }
        }

        else if (v8)
        {
          result = (*(**v7 + 8))(*v7, v13, v8);
        }

        break;
      }
    }
  }

  v25 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1AE562E2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a39 < 0)
  {
    operator delete(__p);
    if ((v40 & 1) == 0)
    {
LABEL_6:
      if (*(v41 - 105) < 0)
      {
        operator delete(*(v41 - 128));
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v40)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v39);
  goto LABEL_6;
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::decode(_BYTE *a1, unsigned int *a2, int a3)
{
  v3 = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::decode(unsigned char &,unsigned int &,unsigned char)::utf8d[a3];
  if (*a1)
  {
    v4 = a3 & 0x3F | (*a2 << 6);
  }

  else
  {
    v4 = (0xFFu >> v3) & a3;
  }

  *a2 = v4;
  v5 = 16 * *a1 + v3 + 256;
  if (v5 >= 0x190)
  {
    __assert_rtn("decode", "serializer.hpp", 892, "index < 400");
  }

  v6 = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::decode(unsigned char &,unsigned int &,unsigned char)::utf8d[v5];
  *a1 = v6;
  return v6;
}

uint64_t applesauce::xpc::dict::object_proxy::operator=@<X0>(uint64_t a1@<X0>, id *a2@<X1>, void *a3@<X8>)
{
  v6 = applesauce::xpc::dict::operator*(*a1);
  v7 = *(a1 + 8);
  v8 = *a2;
  xpc_dictionary_set_value(v6, v7, v8);

  *a3 = *a2;
  v9 = xpc_null_create();
  v10 = *a2;
  *a2 = v9;

  return MEMORY[0x1EEE66BB8]();
}

{
  v6 = applesauce::xpc::dict::operator*(*a1);
  v7 = *(a1 + 8);
  v8 = applesauce::xpc::dict::operator*(a2);
  xpc_dictionary_set_value(v6, v7, v8);

  *a3 = *a2;
  v9 = xpc_null_create();
  v10 = *a2;
  *a2 = v9;

  return MEMORY[0x1EEE66BB8]();
}

uint64_t CoreAnalytics::Client::sendXpcMessage(NSObject **a1, uint64_t a2, char a3, char a4, char a5)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v10[0] = a1;
  v10[1] = a2;
  v11 = a3;
  v12 = a5;
  v13 = a4;
  v9 = -86;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN10applesauce8dispatch2v19sync_implIZN13CoreAnalytics6Client14sendXpcMessageERKNS_3xpc4dictE18XPCMessagePrioritybbE3__0EENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NSB_17integral_constantIbLb0EEE_block_invoke;
  block[3] = &__block_descriptor_tmp_152;
  block[4] = &v9;
  block[5] = v10;
  dispatch_sync(v5, block);
  result = v9;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL CoreAnalytics::Client::sendXpcMessage_sync(uint64_t a1, void **a2, int a3, char a4, char a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v10 = MEMORY[0x1B2704910](*(a1 + 48));
  v11 = MEMORY[0x1E69E9E68];
  if (v10 == MEMORY[0x1E69E9E68])
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1174405120;
    v17[2] = ___ZN13CoreAnalytics6Client19sendXpcMessage_syncEN10applesauce3xpc4dictE18XPCMessagePrioritybb_block_invoke;
    v17[3] = &__block_descriptor_tmp_29;
    v12 = *a2;
    v17[4] = a1;
    object = v12;
    if (v12)
    {
      xpc_retain(v12);
    }

    else
    {
      object = xpc_null_create();
    }

    v19 = a4;
    v20 = a3;
    v21 = a5;
    if (a3 == 1)
    {
      v13 = QOS_CLASS_UTILITY;
    }

    else
    {
      v13 = QOS_CLASS_BACKGROUND;
    }

    v14 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v13, 0, v17);
    dispatch_async(*(a1 + 8), v14);
    _Block_release(v14);
    xpc_release(object);
  }

  result = v10 == v11;
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1AE56323C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

xpc_object_t __copy_helper_block_e8_40c27_ZTSN10applesauce3xpc4dictE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  if (v3)
  {
    return xpc_retain(v3);
  }

  result = xpc_null_create();
  *(a1 + 40) = result;
  return result;
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a4;
  v14[0] = a1;
  v14[1] = &v12;
  v14[2] = &v13;
  v15 = 0xAAAAAAAAAAAAAAAALL;
  if (a2 == a3)
  {
    LOBYTE(v15) = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v7 = a2;
    do
    {
      *v4 = *v7;
      *(v4 + 8) = *(v7 + 1);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7);
      *v7 = 0;
      *(v7 + 1) = 0;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
      v7 += 16;
      v4 = v13 + 16;
      v13 += 16;
    }

    while (v7 != a3);
    LOBYTE(v15) = 1;
    if (v6 != a3)
    {
      v8 = v6;
      do
      {
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v6);
        v9 = *v8;
        v8 += 16;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v6 + 8, v9);
        v6 = v8;
      }

      while (v8 != a3);
    }
  }

  result = std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>>::~__exception_guard_exceptions[abi:ne200100](v14);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::reverse_iterator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>,std::reverse_iterator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

uint64_t std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((i - 16));
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(i - 8, *(i - 16));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__function::__value_func<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

void ___ZN13CoreAnalytics6Client19sendXpcMessage_syncEN10applesauce3xpc4dictE18XPCMessagePrioritybb_block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 40);
  v3 = *(a1 + 32);
  if (xpc_dictionary_get_value(*(a1 + 40), "event") && xpc_dictionary_get_value(*v2, "json"))
  {
    if (os_log_type_enabled(qword_1ED452D78, OS_LOG_TYPE_DEBUG))
    {
      v10 = v2;
      v11 = "event";
      applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(&v10, &v12);
      applesauce::xpc::dyn_cast<std::string>();
      v6 = v2;
      v7 = "json";
      applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(&v6, &object);
      applesauce::xpc::dyn_cast<std::string>();
      CoreAnalytics::Client::sendManagementCommandWithReply(v9);
      xpc_release(object);
      if (SHIBYTE(v14) < 0)
      {
        operator delete(__p[0]);
      }

      xpc_release(v12);
    }

    if (*(a1 + 48) == 1 && os_log_type_enabled(qword_1ED452D80, OS_LOG_TYPE_DEBUG))
    {
      v10 = v2;
      v11 = "event";
      applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(&v10, &v12);
      applesauce::xpc::dyn_cast<std::string>();
      v6 = v2;
      v7 = "json";
      applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(&v6, &object);
      applesauce::xpc::dyn_cast<std::string>();
      CoreAnalytics::Client::sendManagementCommandWithReply(v9);
      xpc_release(object);
      if (SHIBYTE(v14) < 0)
      {
        operator delete(__p[0]);
      }

      xpc_release(v12);
    }
  }

  dispatch_semaphore_wait(*(v3 + 32), 0xFFFFFFFFFFFFFFFFLL);
  v4 = *v3;
  __p[0] = MEMORY[0x1E69E9820];
  __p[1] = 0x40000000;
  v14 = ___ZN13CoreAnalytics6Client22acquireSendTransactionEv_block_invoke;
  v15 = &__block_descriptor_tmp_36;
  v16 = v3;
  dispatch_sync(v4, __p);
  CoreAnalytics::Client::retryXpcMessage_sync(v3, v2, *(a1 + 49), *(a1 + 50));
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1AE563738(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, xpc_object_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN13CoreAnalytics6Client22acquireSendTransactionEv_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 72);
  if (!v2)
  {
    result = os_transaction_create();
    *(v1 + 64) = result;
    v2 = *(v1 + 72);
  }

  *(v1 + 72) = v2 + 1;
  return result;
}

void CoreAnalytics::Client::retryXpcMessage_sync(uint64_t a1, xpc_object_t *a2, char a3, char a4)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v7 = *a2;
  v9[0] = v7;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    v7 = xpc_null_create();
    v9[0] = v7;
  }

  CoreAnalytics::Client::retryXpcMessageHelper_sync(a1, v9, a3, a4, 0, 100);
  xpc_release(v7);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1AE5638D0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void CoreAnalytics::Client::retryXpcMessageHelper_sync(uint64_t a1, void **a2, char a3, char a4, unsigned int a5, uint64_t a6)
{
  block[8] = *MEMORY[0x1E69E9840];
  if (a5 < 5)
  {
    v10 = *(a1 + 48);
    v11 = *a2;
    v12 = *(a1 + 16);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1174405120;
    v15[2] = ___ZN13CoreAnalytics6Client26retryXpcMessageHelper_syncEN10applesauce3xpc4dictE18XPCMessagePrioritybhy_block_invoke;
    v15[3] = &__block_descriptor_tmp_34;
    v17 = a4;
    v18 = a5;
    v15[4] = a1;
    v15[5] = a6;
    object = v11;
    if (v11)
    {
      xpc_retain(v11);
    }

    else
    {
      object = xpc_null_create();
    }

    v19 = a3;
    xpc_connection_send_message_with_reply(v10, v11, v12, v15);
    xpc_release(object);
  }

  else
  {
    {
      v14 = *a2;
      v20 = v14;
      if (v14)
      {
        xpc_retain(v14);
      }

      else
      {
        v20 = xpc_null_create();
      }

      try_xpc_to_json(&v20, v21);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::dump(block);
    }

    v8 = *a1;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN13CoreAnalytics6Client22releaseSendTransactionEv_block_invoke;
    block[3] = &__block_descriptor_tmp_37;
    block[4] = a1;
    dispatch_sync(v8, block);
    dispatch_semaphore_signal(*(a1 + 32));
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1AE563AE4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

xpc_object_t __copy_helper_block_e8_48c27_ZTSN10applesauce3xpc4dictE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  *(a1 + 48) = v3;
  if (v3)
  {
    return xpc_retain(v3);
  }

  result = xpc_null_create();
  *(a1 + 48) = result;
  return result;
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::dump(void *a1@<X8>)
{
  v2 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  memset(__b, 170, sizeof(__b));
  operator new();
}

void sub_1AE563CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~serializer(va);
  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~serializer(uint64_t a1)
{
  if (*(a1 + 631) < 0)
  {
    operator delete(*(a1 + 608));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<long long,0>(uint64_t (****a1)(void), unint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = a1 + 2;
    if ((v2 & 0x8000000000000000) != 0)
    {
      *v3 = 45;
      v2 = -v2;
      if (v2 >= 0xA)
      {
        v7 = 4;
        v11 = v2;
        while (1)
        {
          if (v11 <= 0x63)
          {
            v7 -= 2;
            goto LABEL_26;
          }

          if (v11 <= 0x3E7)
          {
            break;
          }

          if (v11 >> 4 < 0x271)
          {
            goto LABEL_26;
          }

          v7 += 4;
          v10 = v11 >= 0x186A0;
          v11 /= 0x2710uLL;
          if (!v10)
          {
            v7 -= 3;
            goto LABEL_26;
          }
        }

        --v7;
      }

      else
      {
        v7 = 1;
      }

LABEL_26:
      v8 = v7 + 1;
    }

    else
    {
      if (v2 < 0xA)
      {
        v4 = a1 + 17;
        goto LABEL_35;
      }

      v8 = 4;
      v9 = v2;
      while (1)
      {
        if (v9 <= 0x63)
        {
          v8 -= 2;
          goto LABEL_27;
        }

        if (v9 <= 0x3E7)
        {
          break;
        }

        if (v9 >> 4 < 0x271)
        {
          goto LABEL_27;
        }

        v8 += 4;
        v10 = v9 >= 0x186A0;
        v9 /= 0x2710uLL;
        if (!v10)
        {
          v8 -= 3;
          goto LABEL_27;
        }
      }

      --v8;
    }

LABEL_27:
    if (v8 >= 0x3F)
    {
      nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<long long,0>();
    }

    v4 = &v3[v8];
    if (v2 < 0x64)
    {
      v12 = v2;
    }

    else
    {
      do
      {
        v12 = v2 / 0x64;
        *(v4 - 1) = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<long long,0>(long long)::digits_to_99[v2 % 0x64];
        v4 -= 2;
        v13 = v2 >> 4;
        v2 /= 0x64uLL;
      }

      while (v13 > 0x270);
    }

    if (v12 >= 0xA)
    {
      *(v4 - 1) = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<long long,0>(long long)::digits_to_99[v12];
LABEL_36:
      v14 = (**a1)[1];

      return v14();
    }

    LOBYTE(v2) = v12;
LABEL_35:
    *(v4 - 1) = v2 | 0x30;
    goto LABEL_36;
  }

  v5 = ***a1;

  return v5();
}

void std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy(a1, *(a2 + 1));
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2 + 56);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(a2 + 64, a2[56]);
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void applesauce::xpc::dict::create(xpc_object_t *a1@<X8>)
{
  v3 = xpc_dictionary_create(0, 0, 0);
  v6 = v3;
  if (!v3)
  {
    v3 = xpc_null_create();
  }

  v4 = v3;
  v5 = v4;
  *a1 = v4;
  if (!v4 || MEMORY[0x1B2704910](v4) != MEMORY[0x1E69E9E80])
  {
    *a1 = xpc_null_create();
  }
}

void ___ZN10applesauce8dispatch2v19sync_implIZN13CoreAnalytics6Client14sendXpcMessageERKNS_3xpc4dictE18XPCMessagePrioritybbE3__0EENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NSB_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *v2;
  v4 = **(v2 + 8);
  v7[0] = v4;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    v4 = xpc_null_create();
    v7[0] = v4;
  }

  v5 = CoreAnalytics::Client::sendXpcMessage_sync(v3, v7, *(v2 + 16), *(v2 + 18), *(v2 + 17));
  xpc_release(v4);
  **(a1 + 32) = v5;
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1AE5641B4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::reserve(void *result, unint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      v4 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(result, a2);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__base_destruct_at_end[abi:ne200100](uint64_t result, unsigned __int8 *a2)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4 != a2)
  {
    v5 = v4 - 16;
    v6 = v4 - 16;
    do
    {
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v5);
      v7 = *v6;
      v6 -= 16;
      result = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v5 + 8, v7);
      v8 = v5 == a2;
      v5 = v6;
    }

    while (!v8);
  }

  *(v3 + 8) = a2;
  return result;
}

void ___ZN13CoreAnalytics6Client26retryXpcMessageHelper_syncEN10applesauce3xpc4dictE18XPCMessagePrioritybhy_block_invoke(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = MEMORY[0x1B2704910](a2);
  v6 = MEMORY[0x1E69E9E18];
  if (v5 == MEMORY[0x1E69E9E98])
  {
    if (a2 == MEMORY[0x1E69E9E18])
    {
      {
        ___ZN13CoreAnalytics6Client26retryXpcMessageHelper_syncEN10applesauce3xpc4dictE18XPCMessagePrioritybhy_block_invoke_cold_1();
      }
    }

    else if (a2 == MEMORY[0x1E69E9E20])
    {
      string = xpc_dictionary_get_string(MEMORY[0x1E69E9E20], *MEMORY[0x1E69E9E28]);
      {
        LODWORD(block) = 136446210;
        *(&block + 4) = string;
        _os_log_impl(&dword_1AE55E000, v12, OS_LOG_TYPE_DEFAULT, "XPC message reply connection invalidated (client likely exiting): %{public}s", &block, 0xCu);
      }
    }
  }

  if (a2 == v6 && (*(a1 + 56) & 1) != 0)
  {
    {
      v7 = *(a1 + 57);
      v9 = *(a1 + 40);
      v8 = *(a1 + 48);
      object = v8;
      if (v8)
      {
        xpc_retain(v8);
      }

      else
      {
        object = xpc_null_create();
      }

      try_xpc_to_json(&object, v25);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::dump(&__p);
    }

    v13 = *(a1 + 58);
    v14 = dispatch_time(0, 1000000 * *(a1 + 40));
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 1174405120;
    v19[2] = ___ZN13CoreAnalytics6Client26retryXpcMessageHelper_syncEN10applesauce3xpc4dictE18XPCMessagePrioritybhy_block_invoke_30;
    v19[3] = &__block_descriptor_tmp_33;
    v15 = *(a1 + 48);
    v19[4] = v4;
    v20 = v15;
    if (v15)
    {
      xpc_retain(v15);
    }

    else
    {
      v20 = xpc_null_create();
    }

    v22 = *(a1 + 58);
    v23 = *(a1 + 56);
    v21 = *(a1 + 40);
    if (v13 == 1)
    {
      v16 = QOS_CLASS_UTILITY;
    }

    else
    {
      v16 = QOS_CLASS_BACKGROUND;
    }

    v17 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v16, 0, v19);
    dispatch_after(v14, v4[3], v17);
    _Block_release(v17);
    xpc_release(v20);
  }

  else
  {
    v10 = *v4;
    *&block = MEMORY[0x1E69E9820];
    *(&block + 1) = 0x40000000;
    v28 = ___ZN13CoreAnalytics6Client22releaseSendTransactionEv_block_invoke;
    v29 = &__block_descriptor_tmp_37;
    v30 = v4;
    dispatch_sync(v10, &block);
    dispatch_semaphore_signal(v4[4]);
  }

  v18 = *MEMORY[0x1E69E9840];
}

void ___ZN13CoreAnalytics6Client22releaseSendTransactionEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 72);
  v3 = __OFSUB__(v2--, 1);
  *(v1 + 72) = v2;
  if ((v2 < 0) ^ v3 | (v2 == 0))
  {
    os_release(*(v1 + 64));
    *(v1 + 72) = 0;
    *(v1 + 64) = 0;
  }
}

os_log_t sSetupSharedLogDomains(void)
{
  qword_1ED452D98 = os_log_create("com.apple.CoreAnalytics.Shared.critical", "evaluator");
  result = os_log_create("com.apple.CoreAnalytics.Shared.critical", "utils");
  qword_1ED452DA0 = result;
  return result;
}

void CASPIEnter()
{
  dispatch_once(&CASPIEnter(void)::sonce, &__block_literal_global_0);
}

{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136446210;
  v2 = "Usage of CoreAnalytics is explicitly forbidden on the child side of fork. You must use exec.";
  _os_log_error_impl(&dword_1AE55E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%{public}s", &v1, 0xCu);
  v0 = *MEMORY[0x1E69E9840];
}

uint64_t analytics_send_event_internal(char *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v14 = *MEMORY[0x1E69E9840];
  __s = a1;
  v11 = a2;
  v7 = a5;
  v8 = objc_autoreleasePoolPush();
  CASPIEnter();
  if (a1)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const*&,char const*,0>(buf);
  }

  {
    AnalyticsSendEventInternal();
  }

  objc_autoreleasePoolPop(v8);

  v9 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1AE564BD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, char a29)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

os_log_t ___Z10CASPIEnterv_block_invoke()
{
  sSetupFrameworkLogDomains();

  return sSetupSharedLogDomains();
}

os_log_t sSetupFrameworkLogDomains(void)
{
  qword_1ED452D78 = os_log_create("com.apple.CoreAnalytics.event", "send");
  qword_1ED452D80 = os_log_create("com.apple.CoreAnalytics.event", "send-diagnostics");
  result = os_log_create("com.apple.CoreAnalytics.event", "mgmt-send");
  qword_1ED452D88 = result;
  return result;
}

void CoreAnalytics::Client::get()
{
  if (__cxa_guard_acquire(&_MergedGlobals))
  {
    CoreAnalytics::Client::Client(qword_1ED452CB8);

    __cxa_guard_release(&_MergedGlobals);
  }
}

{
  dispatch_once(&CoreAnalytics::Client::get(void)::sonce, &__block_literal_global_4);
}

CoreAnalytics::Client *CoreAnalytics::Client::Client(CoreAnalytics::Client *this)
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  *this = dispatch_queue_create("com.apple.CoreAnalytics::Client", v2);
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
  *(this + 1) = dispatch_queue_create("com.apple.CoreAnalytics::Client XPC Send", v3);
  v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
  *(this + 2) = dispatch_queue_create("com.apple.CoreAnalytics::Client XPC Reply", v4);
  v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
  *(this + 3) = dispatch_queue_create("com.apple.CoreAnalytics::Client XPC Retry", v5);
  *(this + 4) = dispatch_semaphore_create(1000);
  *(this + 40) = 0;
  *(this + 6) = xpc_null_create();
  *(this + 8) = 0;
  *(this + 18) = 0;
  *(this + 21) = 0;
  *(this + 14) = 0;
  *(this + 59) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  return this;
}

void ___ZN13CoreAnalytics6Client3getEv_block_invoke()
{
  block[5] = *MEMORY[0x1E69E9840];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN10applesauce8dispatch2v19sync_implIZZN13CoreAnalytics6Client3getEvEUb_E3__0EEvP16dispatch_queue_sOT_NSt3__117integral_constantIbLb1EEE_block_invoke;
  block[3] = &__block_descriptor_tmp_138;
  block[4] = &v1;
  dispatch_sync(qword_1ED452CB8[0], block);
  v0 = *MEMORY[0x1E69E9840];
}

void CoreAnalytics::Client::init(CoreAnalytics::Client *this)
{
  v4[5] = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1ED452CA0, memory_order_acquire) & 1) == 0)
  {
    CoreAnalytics::Client::init();
  }

  if ((atomic_load_explicit(&qword_1ED452CB0, memory_order_acquire) & 1) == 0)
  {
    CoreAnalytics::Client::init();
  }

  dispatch_source_set_event_handler(qword_1ED452CA8, &__block_literal_global_19);
  dispatch_activate(qword_1ED452CA8);
  CoreAnalytics::Client::initConnection(this);
  v2 = *this;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZN13CoreAnalytics6Client4initEv_block_invoke_2;
  v4[3] = &__block_descriptor_tmp_21;
  v4[4] = this;
  notify_register_dispatch("com.apple.analyticsd.running", this + 14, v2, v4);
  CoreAnalytics::Client::updateDaemonState(this);
  v3 = *MEMORY[0x1E69E9840];
}

void CoreAnalytics::Client::init()
{
  if (__cxa_guard_acquire(&qword_1ED452CA0))
  {
    v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    qword_1ED452C98 = dispatch_queue_create("com.apple.CoreAnalytics::Client Exit Queue", v0);

    __cxa_guard_release(&qword_1ED452CA0);
  }
}

{
  if (__cxa_guard_acquire(&qword_1ED452CB0))
  {
    qword_1ED452CA8 = dispatch_source_create(MEMORY[0x1E69E9700], 0xFuLL, 0, qword_1ED452C98);

    __cxa_guard_release(&qword_1ED452CB0);
  }
}

void CoreAnalytics::Client::updateDaemonState(CoreAnalytics::Client *this)
{
  v12 = *MEMORY[0x1E69E9840];
  state64 = 0;
  notify_get_state(*(this + 14), &state64);
  v2 = *(this + 60);
  v3 = state64;
  v4 = state64 != 0;
  *(this + 60) = v4;
  if (v2 == v4)
  {
    {
      CoreAnalytics::Client::updateDaemonState();
    }
  }

  {
    *buf = 67109376;
    v9 = v2;
    v10 = 1024;
    v11 = v3 != 0;
    _os_log_impl(&dword_1AE55E000, v5, OS_LOG_TYPE_INFO, "Daemon status changed from %d to %d", buf, 0xEu);
  }

  if ((*(this + 60) & 1) == 0)
  {
    *(this + 61) = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
}

void CoreAnalytics::Client::initConnection(CoreAnalytics::Client *this)
{
  handler[5] = *MEMORY[0x1E69E9840];
  if (os_variant_is_recovery())
  {
    {
      CoreAnalytics::Client::initConnection();
    }
  }

  else
  {
    mach_service = xpc_connection_create_mach_service("com.apple.analyticsd", *(this + 2), 0);
    if ((mach_service || (mach_service = xpc_null_create()) != 0) && MEMORY[0x1B2704910](mach_service) == MEMORY[0x1E69E9E68])
    {
      xpc_retain(mach_service);
      v3 = mach_service;
    }

    else
    {
      v3 = xpc_null_create();
    }

    v4 = xpc_null_create();
    v5 = *(this + 6);
    *(this + 6) = v3;
    xpc_release(v5);
    xpc_release(v4);
    xpc_release(mach_service);
    v6 = *(this + 6);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 0x40000000;
    handler[2] = ___ZN13CoreAnalytics6Client14initConnectionEv_block_invoke;
    handler[3] = &__block_descriptor_tmp_25;
    handler[4] = this;
    xpc_connection_set_event_handler(v6, handler);
    if (xpc_user_sessions_enabled())
    {
      out_token[1] = 0;
      foreground_uid = xpc_user_sessions_get_foreground_uid();
      v8 = *(this + 6);
      xpc_connection_set_target_user_session_uid();
      out_token[0] = 0;
      v9 = *this;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 0x40000000;
      v11[2] = ___ZN13CoreAnalytics6Client14initConnectionEv_block_invoke_27;
      v11[3] = &__block_descriptor_tmp_28;
      v11[4] = this;
      v12 = foreground_uid;
      notify_register_dispatch("com.apple.mobile.usermanagerd.foregrounduser_changed", out_token, v9, v11);
    }

    xpc_connection_activate(*(this + 6));
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1AE5654E8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<analytics_send_event_internal(char const*,NSObject  {objcproto13OS_xpc_object}* {ns_returns_retained}({block_pointer})(void),XPCMessagePriority,EventPayloadFormat,NSObject  {objcproto13OS_xpc_object}*)::$_0,std::allocator<EventPayloadFormat>,nlohmann::basic_json<std::map,std::vector,std::basic_string<char,std::char_traits<char>,analytics_send_event_internal(char const*,NSObject  {objcproto13OS_xpc_object}* {ns_returns_retained}({block_pointer})(void),XPCMessagePriority,EventPayloadFormat,NSObject  {objcproto13OS_xpc_object}*)::$_0<char>>,BOOL,long long,unsigned long long,double,analytics_send_event_internal(char const*,NSObject  {objcproto13OS_xpc_object}* {ns_returns_retained}({block_pointer})(void),XPCMessagePriority,EventPayloadFormat,NSObject  {objcproto13OS_xpc_object}*)::$_0,std::allocator<EventPayloadFormat>::adl_serializer,std::map<unsigned char,analytics_send_event_internal(char const*,NSObject  {objcproto13OS_xpc_object}* {ns_returns_retained}({block_pointer})(void),XPCMessagePriority,EventPayloadFormat,NSObject  {objcproto13OS_xpc_object}*)::$_0<unsigned char>>> ()(void)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9[5] = *MEMORY[0x1E69E9840];
  v4 = (*(**(a1 + 16) + 16))();
  v5 = v4;
  if (!v4 || MEMORY[0x1B2704910](v4) == MEMORY[0x1E69E9ED0])
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(a2, 0, 0, 0, 1);
  }

  if (MEMORY[0x1B2704910](v5) == MEMORY[0x1E69E9E80])
  {
    v9[0] = v5;
    xpc_to_json(a2, v9);
    v8 = v9[0];
    v9[0] = 0;
  }

  else
  {
    {
      std::__function::__func<analytics_send_event_internal(char const*,NSObject  {objcproto13OS_xpc_object}* {ns_returns_retained}({block_pointer})(void),XPCMessagePriority,EventPayloadFormat,NSObject  {objcproto13OS_xpc_object}*)::$_0,std::allocator<EventPayloadFormat>,nlohmann::basic_json<std::map,std::vector,std::basic_string<char,std::char_traits<char>,analytics_send_event_internal(char const*,NSObject  {objcproto13OS_xpc_object}* {ns_returns_retained}({block_pointer})(void),XPCMessagePriority,EventPayloadFormat,NSObject  {objcproto13OS_xpc_object}*)::$_0<char>>,BOOL,long long,unsigned long long,double,analytics_send_event_internal(char const*,NSObject  {objcproto13OS_xpc_object}* {ns_returns_retained}({block_pointer})(void),XPCMessagePriority,EventPayloadFormat,NSObject  {objcproto13OS_xpc_object}*)::$_0,std::allocator<EventPayloadFormat>::adl_serializer,std::map<unsigned char,analytics_send_event_internal(char const*,NSObject  {objcproto13OS_xpc_object}* {ns_returns_retained}({block_pointer})(void),XPCMessagePriority,EventPayloadFormat,NSObject  {objcproto13OS_xpc_object}*)::$_0<unsigned char>>> ()(void)>::operator()((a1 + 8), v6);
    }

    *a2 = 0;
    *(a2 + 8) = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void xpc_to_json(unsigned __int8 *__return_ptr a1@<X8>, xpc_object_t *a2@<X0>)
{
  v42 = *MEMORY[0x1E69E9840];
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  *(a1 + 1) = 0;
  *a1 = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
  v4 = MEMORY[0x1B2704910](*a2);
  if (v4 == MEMORY[0x1E69E9E80])
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v40, 0, 0, 0, 1);
  }

  if (v4 == MEMORY[0x1E69E9F10])
  {
    *out = xpc_string_get_string_ptr(*a2);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const*&,char const*,0>(v39);
  }

  if (v4 == MEMORY[0x1E69E9EB0])
  {
    value = xpc_int64_get_value(*a2);
    v8 = v37;
    v37[0] = 5;
    v38 = value;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v37);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v37);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v37);
    v9 = *a1;
    *a1 = v37[0];
    v37[0] = v9;
    v10 = *(a1 + 1);
    *(a1 + 1) = v38;
    v38 = v10;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v37);
    v11 = v37[0];
LABEL_15:
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v8 + 1, v11);
    goto LABEL_23;
  }

  if (v4 == MEMORY[0x1E69E9E50])
  {
    memset(out, 170, 24);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(&v27, 0, 0, 0, 2);
  }

  if (v4 == MEMORY[0x1E69E9E70])
  {
    bytes_ptr = xpc_data_get_bytes_ptr(*a2);
    length = xpc_data_get_length(*a2);
    hex(bytes_ptr, length, out);
    v36 = 3;
    operator new();
  }

  if (v4 == MEMORY[0x1E69E9E58])
  {
    v14 = xpc_BOOL_get_value(*a2);
    v8 = v34;
    v34[0] = 4;
    v35 = v14;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v34);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v34);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v34);
    v15 = *a1;
    *a1 = v34[0];
    v34[0] = v15;
    v16 = *(a1 + 1);
    *(a1 + 1) = v35;
    v35 = v16;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v34);
    v11 = v34[0];
    goto LABEL_15;
  }

  if (v4 == MEMORY[0x1E69E9F18])
  {
    v17 = xpc_uint64_get_value(*a2);
    v8 = v32;
    v32[0] = 6;
    v33 = v17;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v32);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v32);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v32);
    v18 = *a1;
    *a1 = v32[0];
    v32[0] = v18;
    v19 = *(a1 + 1);
    *(a1 + 1) = v33;
    v33 = v19;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v32);
    v11 = v32[0];
    goto LABEL_15;
  }

  if (v4 == MEMORY[0x1E69E9ED0])
  {
    v30[0] = 0;
    v31 = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v30);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v30);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator=(a1, v30);
    v20 = v30;
  }

  else
  {
    if (v4 != MEMORY[0x1E69E9E88])
    {
      if (v4 == MEMORY[0x1E69E9F20])
      {
        *&out[29] = 0xAAAAAAAAAAAAAAAALL;
        *&v5 = 0xAAAAAAAAAAAAAAAALL;
        *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *out = v5;
        *&out[16] = v5;
        bytes = xpc_uuid_get_bytes(*a2);
        uuid_unparse_lower(bytes, out);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char (&)[37],char [37],0>(v28);
      }

      memset(out, 170, 24);
      name = xpc_type_get_name(v4);
      std::string::basic_string[abi:ne200100]<0>(out, name);
      exception = __cxa_allocate_exception(0x10uLL);
      std::operator+<char>();
      v24 = std::string::append(&v26, ") cannot be converted and is invalid");
      v25 = *&v24->__r_.__value_.__l.__data_;
      v27.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
      *&v27.__r_.__value_.__l.__data_ = v25;
      v24->__r_.__value_.__l.__size_ = 0;
      v24->__r_.__value_.__r.__words[2] = 0;
      v24->__r_.__value_.__r.__words[0] = 0;
      std::logic_error::logic_error(exception, &v27);
      exception->__vftable = (MEMORY[0x1E69E55C8] + 16);
      __cxa_throw(exception, off_1E7A2A458, MEMORY[0x1E69E5298]);
    }

    *out = xpc_double_get_value(*a2);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<double,double,0>(v29, out);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator=(a1, v29);
    v20 = v29;
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v20);
LABEL_23:
  v21 = *MEMORY[0x1E69E9840];
}

void sub_1AE565FA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v23 & 1) == 0)
    {
LABEL_8:
      if (*(v24 - 105) < 0)
      {
        operator delete(*(v24 - 128));
      }

      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v21);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v22);
  goto LABEL_8;
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  v15[3] = *MEMORY[0x1E69E9840];
  *a1 = 0;
  *(a1 + 8) = 0;
  if (a3)
  {
    v9 = 32 * a3;
    v10 = (a2 + 16);
    while (1)
    {
      v11 = *v10;
      if (**v10 != 2 || *(*(v11 + 1) + 8) - **(v11 + 1) != 32 || *nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v11, 0) != 3)
      {
        break;
      }

      v10 += 4;
      v9 -= 32;
      if (!v9)
      {
        goto LABEL_7;
      }
    }

    v12 = 0;
    if ((a4 & 1) == 0)
    {
LABEL_11:
      if (a5 == 2)
      {
        v13 = 0;
      }

      else
      {
        v13 = v12;
      }

      if (a5 != 1)
      {
        LOBYTE(v12) = 1;
      }

      if ((v12 & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v15, "cannot create object from initializer list");
        nlohmann::detail::type_error::create(301, v15, exception);
      }

      if (!v13)
      {
LABEL_18:
        *a1 = 2;
        v15[0] = a2;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>> const*,nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>> const*>();
      }

LABEL_9:
      *a1 = 1;
      operator new();
    }
  }

  else
  {
LABEL_7:
    v12 = 1;
    if ((a4 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if (!v12)
  {
    goto LABEL_18;
  }

  goto LABEL_9;
}

void ___Z11xpc_to_jsonRKN10applesauce3xpc6objectE_block_invoke(uint64_t a1, void *a2)
{
  v2[6] = *MEMORY[0x1E69E9840];
  v2[5] = a2;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const*&,char const*,0>(v2);
}

void sub_1AE566468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(uint64_t a1, char *__s)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!*a1)
  {
    *a1 = 1;
    operator new();
  }

  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v8 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(a1);
    std::string::basic_string[abi:ne200100]<0>(&v11, v8);
    v9 = std::string::insert(&v11, 0, "cannot use operator[] with a string argument with ");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v13 = v9->__r_.__value_.__r.__words[2];
    *__p = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::type_error::create(305, __p, exception);
  }

  v3 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, __s);
  v11.__r_.__value_.__r.__words[0] = __p;
  v4 = std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v3, __p);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  v5 = *MEMORY[0x1E69E9840];
  return v4 + 56;
}

void sub_1AE566640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = 0xAAAAAAAAAAAAAAAALL;
  result = *std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__find_equal<std::string>(a1, v4, a2);
  if (!result)
  {
    memset(&v4[1], 170, 24);
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>();
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__find_equal<std::string>(uint64_t a1, uint64_t *a2, const void **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a1, (v8 + 32), a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

BOOL std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a3 + 23);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v3 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<double,double,0>(uint64_t a1, uint64_t *a2)
{
  *(a1 + 8) = 0;
  v3 = *a2;
  *a1 = 7;
  *(a1 + 8) = v3;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
  return a1;
}

unsigned __int8 *nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(unsigned __int8 *a1)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(a1 + 1, *a1);
  return a1;
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator=(uint64_t a1, uint64_t a2)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
  v4 = *a1;
  *a1 = *a2;
  *a2 = v4;
  v5 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v5;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
  return a1;
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned long long,0>(uint64_t (****a1)(void), unint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    if (a2 >= 0xA)
    {
      v6 = 4;
      v7 = a2;
      while (1)
      {
        if (v7 <= 0x63)
        {
          v6 -= 2;
          goto LABEL_15;
        }

        if (v7 <= 0x3E7)
        {
          break;
        }

        if (v7 >> 4 < 0x271)
        {
          goto LABEL_15;
        }

        v8 = v7 >> 5;
        v7 /= 0x2710uLL;
        v6 += 4;
        if (v8 <= 0xC34)
        {
          v6 -= 3;
          goto LABEL_15;
        }
      }

      --v6;
LABEL_15:
      if (v6 >= 0x3F)
      {
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<long long,0>();
      }

      v3 = a1 + v6 + 16;
      if (a2 < 0x64)
      {
        v9 = a2;
      }

      else
      {
        do
        {
          v9 = v2 / 0x64;
          *(v3 - 2) = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned long long,0>(unsigned long long)::digits_to_99[v2 % 0x64];
          v3 -= 2;
          v10 = v2 >> 4;
          v2 /= 0x64uLL;
        }

        while (v10 > 0x270);
      }

      if (v9 >= 0xA)
      {
        *(v3 - 2) = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned long long,0>(unsigned long long)::digits_to_99[v9];
LABEL_24:
        v11 = (**a1)[1];

        return v11();
      }

      LOBYTE(v2) = v9;
    }

    else
    {
      v3 = a1 + 17;
    }

    *(v3 - 1) = v2 | 0x30;
    goto LABEL_24;
  }

  v4 = ***a1;

  return v4();
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_float(_BYTE *a1, double a2)
{
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    nlohmann::detail::to_chars<double>(a1 + 16, (a1 + 80), a2);
  }

  else
  {
    v3 = *a1;
  }

  v4 = *(**a1 + 8);

  return v4();
}

uint64_t nlohmann::detail::dtoa_impl::compute_boundaries<double>@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v22 = *MEMORY[0x1E69E9840];
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    nlohmann::detail::dtoa_impl::compute_boundaries<double>();
  }

  if (a2 <= 0.0)
  {
    nlohmann::detail::dtoa_impl::compute_boundaries<double>();
  }

  v3 = (*&a2 & 0xFFFFFFFFFFFFFLL) == 0;
  if (*&a2 >> 52)
  {
    v4 = ((*&a2 >> 52) - 1075) | 0xAAAAAAAA00000000;
  }

  else
  {
    v4 = 0xAAAAAAAAFFFFFBCELL;
  }

  if (*&a2 >> 52)
  {
    v5 = *&a2 & 0xFFFFFFFFFFFFFLL | 0x10000000000000;
  }

  else
  {
    v5 = *&a2 & 0xFFFFFFFFFFFFFLL;
  }

  v6 = *&a2 >> 53 != 0;
  v7 = !v6 || !v3;
  if (v6 && v3)
  {
    v8 = 4 * v5;
  }

  else
  {
    v8 = 2 * v5;
  }

  if (v7)
  {
    v9 = v4 - 1;
  }

  else
  {
    v9 = v4 - 2;
  }

  v19 = v8 - 1;
  v21 = -1431655766;
  v20 = v9;
  v10 = nlohmann::detail::dtoa_impl::diyfp::normalize((2 * (v5 & 0x3FFFFFFFFFFFFFFFLL)) | 1, (v4 - 1) | 0xAAAAAAAA00000000);
  v12 = v11;
  v13 = nlohmann::detail::dtoa_impl::diyfp::normalize_to(&v19, v11);
  v15 = v14;
  result = nlohmann::detail::dtoa_impl::diyfp::normalize(v5, v4);
  *a1 = result;
  *(a1 + 8) = v17;
  *(a1 + 16) = v13;
  *(a1 + 24) = v15;
  *(a1 + 32) = v10;
  *(a1 + 40) = v12;
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t nlohmann::detail::dtoa_impl::grisu2<double>(uint64_t a1, unsigned int *a2, _DWORD *a3, double a4)
{
  v14 = *MEMORY[0x1E69E9840];
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    nlohmann::detail::dtoa_impl::grisu2<double>();
  }

  if (a4 <= 0.0)
  {
    nlohmann::detail::dtoa_impl::grisu2<double>();
  }

  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12 = v7;
  v13 = v7;
  v11 = v7;
  nlohmann::detail::dtoa_impl::compute_boundaries<double>(&v11, a4);
  result = nlohmann::detail::dtoa_impl::grisu2(a1, a2, a3, v12, *(&v12 + 1), v11, *(&v11 + 1), v8, v13, *(&v13 + 1));
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t nlohmann::detail::to_chars<double>(_BYTE *a1, uint64_t a2, double a3)
{
  v7[1] = *MEMORY[0x1E69E9840];
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    nlohmann::detail::to_chars<double>();
  }

  v3 = a1;
  if ((*&a3 & 0x8000000000000000) != 0)
  {
    a3 = -a3;
    *a1 = 45;
    v3 = (a1 + 1);
  }

  if (a3 == 0.0)
  {
    *v3 = 11824;
    result = v3 + 3;
    *(v3 + 2) = 48;
  }

  else
  {
    v5 = a2 - v3;
    if (a2 - v3 <= 16)
    {
      nlohmann::detail::to_chars<double>();
    }

    v7[0] = 0;
    nlohmann::detail::dtoa_impl::grisu2<double>(v3, v7 + 1, v7, a3);
    if (SHIDWORD(v7[0]) >= 18)
    {
      nlohmann::detail::to_chars<double>();
    }

    if (v5 <= 0x15)
    {
      nlohmann::detail::to_chars<double>();
    }

    if (v5 == 22)
    {
      nlohmann::detail::to_chars<double>();
    }

    result = nlohmann::detail::dtoa_impl::format_buffer(v3, HIDWORD(v7[0]), v7[0], -4, 15);
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t nlohmann::detail::dtoa_impl::diyfp::normalize(uint64_t result, unint64_t a2)
{
  if (!result)
  {
    __assert_rtn("normalize", "to_chars.hpp", 143, "x.f != 0");
  }

  for (; (result & 0x8000000000000000) == 0; a2 = (a2 - 1) | a2 & 0xFFFFFFFF00000000)
  {
    result *= 2;
  }

  return result;
}

uint64_t nlohmann::detail::dtoa_impl::grisu2_digit_gen(uint64_t a1, unsigned int *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10)
{
  v48[2] = *MEMORY[0x1E69E9840];
  v48[0] = a4;
  v48[1] = a5;
  v47[0] = a6;
  v47[1] = a7;
  v45 = a9;
  v46 = a10;
  if (a10 <= -61)
  {
    nlohmann::detail::dtoa_impl::grisu2_digit_gen();
  }

  if (a10 >= -31)
  {
    nlohmann::detail::dtoa_impl::grisu2_digit_gen();
  }

  v13 = nlohmann::detail::dtoa_impl::diyfp::sub(&v45, v48);
  v14 = nlohmann::detail::dtoa_impl::diyfp::sub(&v45, v47);
  v15 = -v46;
  v16 = v45 >> -v46;
  if (!v16)
  {
    nlohmann::detail::dtoa_impl::grisu2_digit_gen();
  }

  v17 = v14;
  v18 = 1 << v15;
  v19 = (1 << v15) - 1;
  v20 = v19 & v45;
  if (v16 <= 0x3B9AC9FF)
  {
    if (v16 <= 0x5F5E0FF)
    {
      if (v16 <= 0x98967F)
      {
        if (v16 <= 0xF423F)
        {
          v23 = v16 >> 5;
          v24 = v16 >> 4;
          if (v16 <= 9)
          {
            v25 = 1;
          }

          else
          {
            v25 = 10;
          }

          if (v16 <= 9)
          {
            v26 = 1;
          }

          else
          {
            v26 = 2;
          }

          if (v16 <= 0x63)
          {
            v27 = v26;
          }

          else
          {
            v27 = 3;
          }

          if (v16 <= 0x63)
          {
            v28 = v25;
          }

          else
          {
            v28 = 100;
          }

          if (v16 <= 0x3E7)
          {
            v29 = v27;
          }

          else
          {
            v29 = 4;
          }

          if (v16 <= 0x3E7)
          {
            v30 = v28;
          }

          else
          {
            v30 = 1000;
          }

          if (v24 <= 0x270)
          {
            v31 = v29;
          }

          else
          {
            v31 = 5;
          }

          if (v24 <= 0x270)
          {
            v32 = v30;
          }

          else
          {
            v32 = 10000;
          }

          if (v23 <= 0xC34)
          {
            v22 = v31;
          }

          else
          {
            v22 = 6;
          }

          if (v23 > 0xC34)
          {
            v21 = 100000;
          }

          else
          {
            v21 = v32;
          }
        }

        else
        {
          v21 = 1000000;
          v22 = 7;
        }
      }

      else
      {
        v21 = 10000000;
        v22 = 8;
      }
    }

    else
    {
      v21 = 100000000;
      v22 = 9;
    }
  }

  else
  {
    v21 = 1000000000;
    v22 = 10;
  }

  v33 = v22 + 1;
  do
  {
    v34 = v16 / v21;
    if (v16 / v21 >= 0xA)
    {
      nlohmann::detail::dtoa_impl::grisu2_digit_gen();
    }

    v16 = v16 % v21;
    v35 = *a2;
    *a2 = v35 + 1;
    *(a1 + v35) = v34 | 0x30;
    if ((v16 << v15) + v20 <= v13)
    {
      *a3 = *a3 + v33 - 2;
      v18 = v21 << v15;
      v40 = *a2;
      v41 = a1;
      v42 = v13;
      v20 += v16 << v15;
      goto LABEL_53;
    }

    v21 /= 0xAu;
    --v33;
  }

  while (v33 > 1);
  if (v20 <= v13)
  {
    nlohmann::detail::dtoa_impl::grisu2_digit_gen();
  }

  v36 = 0;
  do
  {
    if (v20 >= 0x199999999999999ALL)
    {
      nlohmann::detail::dtoa_impl::grisu2_digit_gen();
    }

    v37 = (10 * v20) >> v15;
    if (v37 >= 0xA)
    {
      nlohmann::detail::dtoa_impl::grisu2_digit_gen();
    }

    v38 = *a2;
    *a2 = v38 + 1;
    *(a1 + v38) = v37 | 0x30;
    v39 = 5 * v13;
    v20 = (10 * v20) & v19;
    v13 *= 10;
    v17 *= 10;
    --v36;
  }

  while (v20 > 2 * v39);
  *a3 += v36;
  v40 = *a2;
  v41 = a1;
  v42 = v13;
LABEL_53:
  result = nlohmann::detail::dtoa_impl::grisu2_round(v41, v40, v17, v42, v20, v18);
  v44 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t nlohmann::detail::dtoa_impl::grisu2_round(uint64_t this, char *a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  if (a2 <= 0)
  {
    nlohmann::detail::dtoa_impl::grisu2_round();
  }

  if (a3 > a4)
  {
    nlohmann::detail::dtoa_impl::grisu2_round();
  }

  if (a4 < a5)
  {
    nlohmann::detail::dtoa_impl::grisu2_round();
  }

  if (!a6)
  {
    nlohmann::detail::dtoa_impl::grisu2_round();
  }

  v6 = a3 - a5;
  if (a3 > a5 && a4 - a5 >= a6)
  {
    v7 = this - 1;
    v8 = a6 + a5;
    v9 = a4 - (a6 + a5);
    do
    {
      if (v8 >= a3 && v6 <= v8 - a3)
      {
        break;
      }

      v10 = *(v7 + a2);
      if (v10 == 48)
      {
        nlohmann::detail::dtoa_impl::grisu2_round();
      }

      *(v7 + a2) = v10 - 1;
      if (v8 >= a3)
      {
        break;
      }

      v6 -= a6;
      v8 += a6;
      v11 = v9 >= a6;
      v9 -= a6;
    }

    while (v11);
  }

  return this;
}

unint64_t nlohmann::detail::dtoa_impl::diyfp::normalize_to(uint64_t *a1, int a2)
{
  v2 = *(a1 + 2) - a2;
  if (v2 < 0)
  {
    v5 = "delta >= 0";
    v6 = 162;
    goto LABEL_6;
  }

  v3 = *a1;
  result = *a1 << v2;
  if (result >> v2 != v3)
  {
    v5 = "((x.f << delta) >> delta) == x.f";
    v6 = 163;
LABEL_6:
    __assert_rtn("normalize_to", "to_chars.hpp", v6, v5);
  }

  return result;
}

uint64_t nlohmann::detail::dtoa_impl::grisu2(uint64_t a1, unsigned int *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, nlohmann::detail::dtoa_impl *a10)
{
  v33[2] = *MEMORY[0x1E69E9840];
  v33[0] = a4;
  v33[1] = a5;
  v32[0] = a6;
  v32[1] = a7;
  v31[0] = a9;
  v31[1] = a10;
  if (a10 != a5)
  {
    nlohmann::detail::dtoa_impl::grisu2();
  }

  if (a10 != a7)
  {
    nlohmann::detail::dtoa_impl::grisu2();
  }

  cached_power_for_binary_exponent = nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent(a10);
  v15 = v14;
  v28 = cached_power_for_binary_exponent;
  v30 = -1431655766;
  v29 = v16;
  v17 = nlohmann::detail::dtoa_impl::diyfp::mul(v32, &v28);
  v19 = v18 | 0xAAAAAAAA00000000;
  v20 = nlohmann::detail::dtoa_impl::diyfp::mul(v33, &v28);
  v22 = v21;
  v23 = nlohmann::detail::dtoa_impl::diyfp::mul(v31, &v28);
  *a3 = -v15;
  result = nlohmann::detail::dtoa_impl::grisu2_digit_gen(a1, a2, a3, v20 + 1, v22 | 0xAAAAAAAA00000000, v17, v19, v25, v23 - 1, v24 | 0xAAAAAAAA00000000);
  v27 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t nlohmann::detail::dtoa_impl::diyfp::mul(uint64_t a1, uint64_t a2)
{
  v2 = HIDWORD(*a1);
  v3 = HIDWORD(*a2);
  v4 = v3 * *a1;
  v5 = *a2 * v2;
  v6 = ((*a2 * *a1) >> 32) + v4 + v5;
  v7 = (*(a1 + 8) + *(a2 + 8) + 64);
  return HIDWORD(v5) + v3 * v2 + HIDWORD(v4) + ((v6 + 0x80000000) >> 32);
}

uint64_t nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent(nlohmann::detail::dtoa_impl *this)
{
  if (this <= -1501)
  {
    nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent();
  }

  if (this >= 1501)
  {
    nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent();
  }

  v1 = 78913 * (-61 - this) / 0x40000;
  if (this < -61)
  {
    ++v1;
  }

  if (v1 <= -315)
  {
    nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent();
  }

  v2 = ((v1 + 307 + (((v1 + 307) >> 28) & 7)) << 16) >> 19;
  if (v2 >= 0x4F)
  {
    nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent();
  }

  v3 = (&nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent(int)::kCachedPowers + 16 * v2);
  v4 = v3[1] + this;
  if (v4 <= -125)
  {
    nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent();
  }

  if (v4 >= -95)
  {
    nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent();
  }

  return *v3;
}

uint64_t nlohmann::detail::dtoa_impl::diyfp::sub(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    v4 = "x.e == y.e";
    v5 = 66;
LABEL_6:
    __assert_rtn("sub", "to_chars.hpp", v5, v4);
  }

  v2 = *a1 >= *a2;
  result = *a1 - *a2;
  if (!v2)
  {
    v4 = "x.f >= y.f";
    v5 = 67;
    goto LABEL_6;
  }

  return result;
}

void analytics_send_event(char *a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __analytics_send_event_block_invoke;
  v6[3] = &unk_1E7A2A4C0;
  v7 = v3;
  v4 = v3;
  analytics_send_event_internal(a1, v6, 0, 0, 0);

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t nlohmann::detail::dtoa_impl::format_buffer(nlohmann::detail::dtoa_impl *this, char *a2, int a3, int a4, int a5)
{
  if ((a4 & 0x80000000) == 0)
  {
    nlohmann::detail::dtoa_impl::format_buffer();
  }

  if (a5 <= 0)
  {
    nlohmann::detail::dtoa_impl::format_buffer();
  }

  v5 = this;
  v6 = a2;
  v7 = a3 + a2;
  if ((a3 & 0x80000000) == 0 && v7 <= a5)
  {
    memset(this + a2, 48, a3);
    *(v5 + v7) = 12334;
    return v5 + v7 + 2;
  }

  if (v7 < 1 || v7 > a5)
  {
    if (v7 > a4 && v7 <= 0)
    {
      v10 = -v7;
      memmove(this + v10 + 2, this, a2);
      *v5 = 11824;
      memset(v5 + 2, 48, v10);
      return v5 + v10 + v6 + 2;
    }

    if (a2 != 1)
    {
      memmove(this + 2, this + 1, a2 - 1);
      *(v5 + 1) = 46;
      v5 = (v5 + v6);
    }

    *(v5 + 1) = 101;
    if (v7 <= -999)
    {
      nlohmann::detail::dtoa_impl::format_buffer();
    }

    if (v7 >= 1001)
    {
      nlohmann::detail::dtoa_impl::format_buffer();
    }

    if (v7 >= 1)
    {
      v11 = 43;
    }

    else
    {
      v11 = 45;
    }

    if (v7 - 1 >= 0)
    {
      v12 = v7 - 1;
    }

    else
    {
      v12 = 1 - v7;
    }

    *(v5 + 2) = v11;
    if (v12 > 9)
    {
      if (v12 > 0x63)
      {
        *(v5 + 3) = v12 / 0x64u + 48;
        v15 = v12 % 0x64u;
        v13 = v5 + 5;
        *(v5 + 4) = (v15 / 0xAu) | 0x30;
        LOBYTE(v12) = v15 % 0xAu;
        v14 = 4;
        goto LABEL_29;
      }

      v13 = v5 + 4;
      *(v5 + 3) = (v12 / 0xAu) | 0x30;
      LOBYTE(v12) = v12 % 0xAu;
    }

    else
    {
      v13 = v5 + 4;
      *(v5 + 3) = 48;
    }

    v14 = 3;
LABEL_29:
    result = v5 + v14 + 2;
    *v13 = v12 | 0x30;
    return result;
  }

  if ((a3 & 0x80000000) == 0)
  {
    nlohmann::detail::dtoa_impl::format_buffer();
  }

  v9 = this + v7;
  memmove(v9 + 1, v9, a2 - v7);
  *v9 = 46;
  return v5 + v6 + 1;
}

BOOL applesauce::xpc::dict::object_proxy::operator BOOL(uint64_t a1)
{
  v2 = applesauce::xpc::dict::operator*(*a1);
  v3 = xpc_dictionary_get_value(v2, *(a1 + 8));
  v4 = v3 != 0;

  return v4;
}

id applesauce::xpc::dict::object_proxy::operator*(uint64_t a1)
{
  v2 = applesauce::xpc::dict::operator*(*a1);
  v3 = xpc_dictionary_get_value(v2, *(a1 + 8));

  return v3;
}

void applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(uint64_t a1@<X0>, xpc_object_t *a2@<X8>)
{
  v3 = applesauce::xpc::dict::object_proxy::operator*(a1);
  *a2 = v3;
  v4 = v3;
  if (!v3)
  {
    *a2 = xpc_null_create();
  }
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void ___ZN13CoreAnalytics6Client14initConnectionEv_block_invoke(uint64_t a1, xpc_object_t object)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    xpc_null_create();
  }

  v3 = *v2;
  operator new();
}

void sub_1AE567BB8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *_ZNSt3__110unique_ptrIZZN13CoreAnalytics6Client14initConnectionEvEUb0_E3__5NS_14default_deleteIS3_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    xpc_release(*(v2 + 8));
    *(v2 + 8) = 0;
    MEMORY[0x1B2703F50](v2, 0xA0C40AFF93C70);
  }

  return a1;
}

void nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump()
{
  __assert_rtn("dump", "serializer.hpp", 166, "i != val.m_value.object->cend()");
}

{
  __assert_rtn("dump", "serializer.hpp", 363, "false");
}

{
  __assert_rtn("dump", "serializer.hpp", 229, "not val.m_value.array->empty()");
}

{
  __assert_rtn("dump", "serializer.hpp", 208, "not val.m_value.array->empty()");
}

{
  __assert_rtn("dump", "serializer.hpp", 167, "std::next(i) == val.m_value.object->cend()");
}

{
  __assert_rtn("dump", "serializer.hpp", 139, "std::next(i) == val.m_value.object->cend()");
}

{
  __assert_rtn("dump", "serializer.hpp", 138, "i != val.m_value.object->cend()");
}

uint64_t *_ZZN10applesauce8dispatch2v15asyncIZZN13CoreAnalytics6Client14initConnectionEvEUb0_E3__5EEvP16dispatch_queue_sOT_ENUlPvE_8__invokeESA_(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3 == MEMORY[0x1E69E9E20])
  {
    {
      *buf = 0;
      _os_log_impl(&dword_1AE55E000, v4, OS_LOG_TYPE_DEFAULT, "XPC connection invalidated (daemon unloaded/disabled)", buf, 2u);
    }

    *(v2 + 60) = 0;
    if (*(v2 + 168))
    {
      string = xpc_dictionary_get_string(*(a1 + 8), *MEMORY[0x1E69E9E28]);
      std::string::basic_string[abi:ne200100]<0>(buf, string);
      v6 = *(v2 + 168);
      if (!v6)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      goto LABEL_15;
    }
  }

  else
  {
    if (v3 != MEMORY[0x1E69E9E18])
    {
      if (v3)
      {
        *buf = *(a1 + 8);
        if (MEMORY[0x1B2704910](v3) == MEMORY[0x1E69E9E80])
        {
          xpc_retain(v3);
        }

        else
        {
          *buf = xpc_null_create();
        }

        CoreAnalytics::Client::handleServerMessage_sync(v2, buf);
        xpc_release(*buf);
      }

      goto LABEL_19;
    }

    {
      *buf = 0;
      _os_log_impl(&dword_1AE55E000, v7, OS_LOG_TYPE_DEFAULT, "XPC connection interrupted (daemon probably exited)", buf, 2u);
    }

    *(v2 + 60) = 0;
    if (*(v2 + 168))
    {
      v8 = xpc_dictionary_get_string(*(a1 + 8), *MEMORY[0x1E69E9E28]);
      std::string::basic_string[abi:ne200100]<0>(buf, v8);
      v6 = *(v2 + 168);
      if (!v6)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

LABEL_15:
      (*(*v6 + 48))(v6, buf);
      if (v13 < 0)
      {
        operator delete(*buf);
      }
    }
  }

LABEL_19:
  result = _ZNSt3__110unique_ptrIZZN13CoreAnalytics6Client14initConnectionEvEUb0_E3__5NS_14default_deleteIS3_EEED1B8ne200100Ev(&v11);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1AE567EA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, xpc_object_t object, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::atExitHandler(_anonymous_namespace_ *this)
{
  v9 = *MEMORY[0x1E69E9840];
  if ((_dispatch_is_fork_of_multithreaded_parent() & 1) == 0)
  {
    v1 = os_transaction_create();
    if (v3)
    {
      *buf = 0;
      _os_log_impl(&dword_1AE55E000, v2, OS_LOG_TYPE_DEFAULT, "Entering exit handler.", buf, 2u);
    }

    v4 = CoreAnalytics::Client::get(v3);
    CoreAnalytics::Client::sendExitBarrierWithTimeoutSync(v4, 0x12Cu);
    {
      *v7 = 0;
      _os_log_impl(&dword_1AE55E000, v5, OS_LOG_TYPE_DEFAULT, "Exiting exit handler.", v7, 2u);
    }

    os_release(v1);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void CoreAnalytics::Client::sendExitBarrierWithTimeoutSync(NSObject **this, unsigned int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = dispatch_group_create();
  dispatch_group_enter(v4);
  v5 = *this;
  v9 = this;
  object = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  block = MEMORY[0x1E69E9820];
  v12 = 0x40000000;
  v13 = ___ZN10applesauce8dispatch2v19sync_implIZN13CoreAnalytics6Client30sendExitBarrierWithTimeoutSyncEjE3__0EEvP16dispatch_queue_sOT_NSt3__117integral_constantIbLb1EEE_block_invoke;
  v14 = &__block_descriptor_tmp_285;
  v15 = &v9;
  dispatch_sync(v5, &block);
  if (object)
  {
    dispatch_release(object);
  }

  v6 = dispatch_time(0, 1000000 * a2);
  if (dispatch_group_wait(v4, v6))
  {
    v9 = this;
    v7 = *this;
    block = MEMORY[0x1E69E9820];
    v12 = 0x40000000;
    v13 = ___ZN10applesauce8dispatch2v19sync_implIZN13CoreAnalytics6Client30sendExitBarrierWithTimeoutSyncEjE3__1EEvP16dispatch_queue_sOT_NSt3__117integral_constantIbLb1EEE_block_invoke;
    v14 = &__block_descriptor_tmp_292;
    v15 = &v9;
    dispatch_sync(v7, &block);
  }

  if (v4)
  {
    dispatch_release(v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void ___ZN10applesauce8dispatch2v19sync_implIZN13CoreAnalytics6Client30sendExitBarrierWithTimeoutSyncEjE3__0EEvP16dispatch_queue_sOT_NSt3__117integral_constantIbLb1EEE_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *v1;
  if (MEMORY[0x1B2704910](*(*v1 + 48)) == MEMORY[0x1E69E9E68])
  {
    {
      v6 = *(v2 + 72);
      LODWORD(v10[0]) = 67109120;
      HIDWORD(v10[0]) = v6;
      _os_log_impl(&dword_1AE55E000, v5, OS_LOG_TYPE_DEFAULT, "Queueing exit procedure onto XPC queue. Any further messages sent will be discarded. activeSendTransactions=%d", v10, 8u);
    }

    v7 = *(v2 + 8);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1174405120;
    v10[2] = ___ZZN13CoreAnalytics6Client30sendExitBarrierWithTimeoutSyncEjENK3__0clEv_block_invoke;
    v10[3] = &__block_descriptor_tmp_290;
    v10[4] = v2;
    v8 = v1[1];
    object = v8;
    if (v8)
    {
      dispatch_retain(v8);
    }

    dispatch_async(v7, v10);
    if (object)
    {
      dispatch_release(object);
    }

    v9 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v3 = v1[1];
    v4 = *MEMORY[0x1E69E9840];

    dispatch_group_leave(v3);
  }
}

void __copy_helper_block_e8_40c36_ZTSN10applesauce8dispatch2v15groupE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }
}

void ___ZZN13CoreAnalytics6Client30sendExitBarrierWithTimeoutSyncEjENK3__0clEv_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  {
    ___ZZN13CoreAnalytics6Client30sendExitBarrierWithTimeoutSyncEjENK3__0clEv_block_invoke_cold_1();
  }

  v3 = *(v2 + 48);
  barrier[0] = MEMORY[0x1E69E9820];
  barrier[1] = 1174405120;
  barrier[2] = ___ZZN13CoreAnalytics6Client30sendExitBarrierWithTimeoutSyncEjENK3__0clEv_block_invoke_286;
  barrier[3] = &__block_descriptor_tmp_287;
  v4 = *(a1 + 40);
  barrier[4] = v2;
  object = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  xpc_connection_send_barrier(v3, barrier);
  if (object)
  {
    dispatch_release(object);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __destroy_helper_block_e8_40c36_ZTSN10applesauce8dispatch2v15groupE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void ___ZZN13CoreAnalytics6Client30sendExitBarrierWithTimeoutSyncEjENK3__0clEv_block_invoke_286(uint64_t a1)
{
  block[5] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  {
    ___ZZN13CoreAnalytics6Client30sendExitBarrierWithTimeoutSyncEjENK3__0clEv_block_invoke_286_cold_1();
  }

  v5 = v2;
  v3 = *v2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN10applesauce8dispatch2v19sync_implIZZZZN13CoreAnalytics6Client30sendExitBarrierWithTimeoutSyncEjENK3__0clEvEUb_EUb_EUlvE_EEvP16dispatch_queue_sOT_NSt3__117integral_constantIbLb1EEE_block_invoke;
  block[3] = &__block_descriptor_tmp_291;
  block[4] = &v5;
  dispatch_sync(v3, block);
  dispatch_group_leave(*(a1 + 40));
  v4 = *MEMORY[0x1E69E9840];
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__init_with_size[abi:ne200100]<nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>> const*,nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__vallocate[abi:ne200100](result, a4);
  }

  v4 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1AE568654(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v2 + 8) = v3;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__assign_with_size[abi:ne200100]<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(uint64_t *a1, unsigned __int8 *a2, unsigned __int8 *a3, unint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 4)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__vdeallocate(a1);
    if (!(a4 >> 60))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 3;
      if (v9 >> 3 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1] - v8;
  if (a4 <= v12 >> 4)
  {
    std::__copy_impl::operator()[abi:ne200100]<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>(&v17, a2, a3, v8);
    result = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__base_destruct_at_end[abi:ne200100](a1, v14);
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>(&v16, a2, &a2[v12], v8);
    result = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(a1, &a2[v12], a3, a1[1]);
    a1[1] = result;
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void CoreAnalytics::Client::cancelConnection_sync(xpc_connection_t *this)
{
  v5 = *MEMORY[0x1E69E9840];
  if (MEMORY[0x1B2704910](this[6]) == MEMORY[0x1E69E9E68] && (this[5] & 1) == 0)
  {
    {
      *v4 = 0;
      _os_log_impl(&dword_1AE55E000, v2, OS_LOG_TYPE_DEFAULT, "Cancelling XPC connection. Any further reply handler invocations will not retry messages", v4, 2u);
    }

    xpc_connection_cancel(this[6]);
    *(this + 40) = 1;
  }

  v3 = *MEMORY[0x1E69E9840];
}

void hex(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  std::string::reserve(a3, 2 * a2);
  if (a2 >= 1)
  {
    v6 = &a1[a2];
    do
    {
    }

    while (a1 < v6);
  }
}

void sub_1AE568918(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,0>(uint64_t result, uint64_t *a2)
{
  v2 = result;
  v17 = *MEMORY[0x1E69E9840];
  if (*result != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v11 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(v2);
    std::string::basic_string[abi:ne200100]<0>(&v14, v11);
    v12 = std::string::insert(&v14, 0, "type must be array, but is ");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v16 = v12->__r_.__value_.__r.__words[2];
    v15 = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::type_error::create(302, &v15, exception);
  }

  v3 = *(result + 8);
  if (v3 == a2)
  {
    v9 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v4 = v3[1];
    v5 = *MEMORY[0x1E69E9840];
    v6 = &v4[-*v3] >> 4;
    v8 = *v3;

    return std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__assign_with_size[abi:ne200100]<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(a2, v8, v4, v6);
  }

  return result;
}

void sub_1AE568A84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,0>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,0>(a1, a2);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

unsigned __int8 *std::__copy_impl::operator()[abi:ne200100]<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v5 = a2;
  v12[1] = *MEMORY[0x1E69E9840];
  if (a2 != a3)
  {
    do
    {
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v11, v5);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v11);
      v7 = *a4;
      *a4 = v11[0];
      v11[0] = v7;
      v8 = *(a4 + 8);
      *(a4 + 8) = v12[0];
      v12[0] = v8;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a4);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v11);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v12, v11[0]);
      v5 += 16;
      a4 += 16;
    }

    while (v5 != a3);
    v5 = a3;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 16))
  {
    result = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(a1, a2);
  }

  else
  {
    *v4 = *a2;
    *(v4 + 8) = *(a2 + 8);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
    *a2 = 0;
    *(a2 + 8) = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
    result = v4 + 16;
  }

  *(a1 + 8) = result;
  return result;
}

void CoreAnalytics::Client::handleServerMessage_sync(CoreAnalytics::Client *this, const applesauce::xpc::dict *a2)
{
  v18[3] = *MEMORY[0x1E69E9840];
  v14[0] = a2;
  v14[1] = "notification";
  memset(v15, 170, sizeof(v15));
  applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(v14, v18);
  __p[0] = 0;
  __p[1] = 0;
  v17 = 0;
  applesauce::xpc::dyn_cast_or_default();
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(v18[0]);
  if ((HIBYTE(v15[2]) & 0x80) == 0)
  {
    if (HIBYTE(v15[2]) != 12)
    {
      if (HIBYTE(v15[2]) != 20)
      {
        goto LABEL_31;
      }

      v4 = v15[0] == 0x72756769666E6F63 && v15[1] == 0x68632D6E6F697461;
      if (!v4 || LODWORD(v15[2]) != 1701277281)
      {
        goto LABEL_31;
      }

LABEL_34:
      CoreAnalytics::Client::handleConfigurationChange_sync(this, a2);
      goto LABEL_35;
    }

    v8 = v15;
LABEL_27:
    v9 = *v8;
    v10 = *(v8 + 2);
    if (v9 == 0x2D6567617373656DLL && v10 == 1953066341)
    {
      CoreAnalytics::Client::handleSinkMessageEmit_sync(this, a2);
      goto LABEL_35;
    }

    goto LABEL_31;
  }

  if (v15[1] == 12)
  {
    v8 = v15[0];
    goto LABEL_27;
  }

  if (v15[1] == 20)
  {
    v6 = *v15[0] == 0x72756769666E6F63 && *(v15[0] + 1) == 0x68632D6E6F697461;
    if (v6 && *(v15[0] + 4) == 1701277281)
    {
      goto LABEL_34;
    }
  }

LABEL_31:
  {
    applesauce::xpc::object::object(&object, a2);
    try_xpc_to_json(&object, v14);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::dump(__p);
  }

LABEL_35:
  if (SHIBYTE(v15[2]) < 0)
  {
    operator delete(v15[0]);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1AE568EF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void applesauce::xpc::dyn_cast<std::string>()
{
  v1 = *MEMORY[0x1E69E9840];
  applesauce::xpc::dyn_cast_or_default();
  v0 = *MEMORY[0x1E69E9840];
}

void sub_1AE568FE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CoreAnalytics::Client::sendManagementCommandWithReply(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_2_0(a1);
  OUTLINED_FUNCTION_0_1(v2, v3, v4, 4.8151e-34);
  OUTLINED_FUNCTION_5(&dword_1AE55E000, "%s %s", v5, v6);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void CoreAnalytics::Client::handleConfigurationChange_sync(CoreAnalytics::Client *this, const applesauce::xpc::dict *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = (this + 80);
  v5 = *(this + 10);
  v20 = 0xAAAAAAAAAAAAAAAALL;
  *&v19 = a2;
  *(&v19 + 1) = "configuration";
  applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(&v19, &v20);
  if (MEMORY[0x1B2704910](v20) == MEMORY[0x1E69E9ED0])
  {
    {
      CoreAnalytics::Client::handleConfigurationChange_sync();
    }
  }

  else
  {
    *&v19 = a2;
    *(&v19 + 1) = "configuration-size";
    applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(&v19, buf);
    v6 = MEMORY[0x1B2703D70](buf, 0);
    xpc_release(*buf);
    if (v6)
    {
      *&v19 = 0xAAAAAAAAAAAAAAAALL;
      *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
      object[0] = v20;
      if (v20)
      {
        xpc_retain(v20);
      }

      else
      {
        object[0] = xpc_null_create();
      }

      object[1] = v6;
      FrameworkConfiguration::create(object, &v19);
      xpc_release(object[0]);
      object[0] = 0;
      v16 = v19;
      v19 = 0uLL;
      std::atomic_exchange[abi:ne200100]<FrameworkConfiguration const>(v4, &v16, &v17);
      if (*(&v17 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v17 + 1));
      }

      if (*(&v16 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v16 + 1));
      }

      if (!*v4)
      {
        {
          CoreAnalytics::Client::handleConfigurationChange_sync();
        }

        goto LABEL_20;
      }

      if (v5)
      {
        if (!v8)
        {
          goto LABEL_26;
        }

        *buf = 0;
        v9 = "Received configuration update from daemon (change)";
      }

      else
      {
        if (!v8)
        {
          goto LABEL_26;
        }

        *buf = 0;
        v9 = "Received configuration update from daemon (initial)";
      }

      _os_log_impl(&dword_1AE55E000, v7, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
LABEL_26:
      v11 = *(this + 12);
      v12 = *(this + 13);
      while (v11 != v12)
      {
        v13 = v11[1];
        if (v13)
        {
          v14 = std::__shared_weak_count::lock(v13);
          if (v14)
          {
            v15 = v14;
            if (*v11)
            {
              (*(**v11 + 16))(*v11, *v4);
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v15);
          }
        }

        v11 += 2;
      }

LABEL_20:
      if (*(&v19 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v19 + 1));
      }

      goto LABEL_22;
    }

    {
      CoreAnalytics::Client::handleConfigurationChange_sync();
    }
  }

LABEL_22:
  xpc_release(v20);
  v10 = *MEMORY[0x1E69E9840];
}

void sub_1AE569318(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, xpc_object_t object, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  xpc_release(*(v16 - 56));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_5(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_debug_impl(a1, a4, OS_LOG_TYPE_DEBUG, a2, a3, 0x16u);
}

void FrameworkConfiguration::create(void *a1@<X0>, void *a2@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  if (MEMORY[0x1B2704910](*a1) == MEMORY[0x1E69E9F08])
  {
    operator new();
  }

  {
    *v5 = 0;
    _os_log_impl(&dword_1AE55E000, v3, OS_LOG_TYPE_DEFAULT, "[FrameworkConfiguration] #Error: Received configuration update from daemon but was wrong type.", v5, 2u);
  }

  *a2 = 0;
  a2[1] = 0;
  v4 = *MEMORY[0x1E69E9840];
}

uint64_t *OUTLINED_FUNCTION_0_0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  if (*(result + 23) < 0)
  {
    v3 = *result;
  }

  return result;
}

void *OUTLINED_FUNCTION_0_1(void *result, uint64_t a2, uint64_t a3, float a4)
{
  if (v4 >= 0)
  {
    v5 = result;
  }

  else
  {
    v5 = *result;
  }

  *a2 = a4;
  *(a2 + 4) = a3;
  *(a2 + 12) = 2080;
  *(a2 + 14) = v5;
  return result;
}

size_t MemoryMappedBuffer::fromXpcShmem@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v8[1] = *MEMORY[0x1E69E9840];
  result = MEMORY[0x1B2704910](*a1);
  if (result != MEMORY[0x1E69E9ED0] && (result = MEMORY[0x1B2704910](*a1), result == MEMORY[0x1E69E9F08]))
  {
    v8[0] = 0;
    result = xpc_shmem_map(*a1, v8);
    v5 = v8[0];
    if (v8[0] != 0 && result != 0)
    {
      v6 = a1[1];
    }

    else
    {
      v5 = -1;
      v6 = 0;
    }

    *a2 = v5;
    a2[1] = v6;
  }

  else
  {
    *a2 = -1;
    a2[1] = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1AE56963C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

BOOL FrameworkConfiguration::init(FrameworkConfiguration *this)
{
  v1 = *this;
  if (*this == -1)
  {
    if (!result)
    {
      return result;
    }

    FrameworkConfiguration::init(v7);
    return 0;
  }

  *(this + 2) = v1;
  v2 = *v1;
  if (*v1 != -258926936)
  {
    if (!result)
    {
      return result;
    }

    FrameworkConfiguration::init(v2, v8);
    return 0;
  }

  if (v1[1] != 1)
  {
    if (!result)
    {
      return result;
    }

    FrameworkConfiguration::init(v9);
    return 0;
  }

  v3 = v1[5];
  v4 = *(this + 1);
  if (v4 < v3)
  {
    if (!result)
    {
      return result;
    }

    FrameworkConfiguration::init(v3, v4, v5);
    return 0;
  }

  *(this + 3) = v1 + v3 + 1;
  return 1;
}

__n128 std::atomic_exchange[abi:ne200100]<FrameworkConfiguration const>@<Q0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  sp_mut = std::__get_sp_mut(a1);
  std::__sp_mut::lock(sp_mut);
  v7 = *a1;
  *a1 = *a2;
  *a2 = v7;
  v8 = a1[1];
  a1[1] = a2[1];
  a2[1] = v8;
  std::__sp_mut::unlock(sp_mut);
  result = *a2;
  *a3 = *a2;
  *a2 = 0;
  a2[1] = 0;
  return result;
}

void analytics_tool_log_dump(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  CASPIEnter();
  v22 = 0xAAAAAAAAAAAAAAAALL;
  applesauce::xpc::dict::create(&v22);
  if (*(a1 + 24) == 1)
  {
    applesauce::xpc::object::object(&v20, a1);
    v23 = &v22;
    v24 = "aggPeriod";
    applesauce::xpc::dict::object_proxy::operator=(&v23, &v20, &v21);
    v5 = v21;
    v21 = 0;

    v6 = v20;
    v20 = 0;
  }

  v19 = 0xAAAAAAAAAAAAAAAALL;
  v7 = CoreAnalytics::Client::get(v4);
  std::string::basic_string[abi:ne200100]<0>(__p, "log-dump");
  applesauce::xpc::object::object(&v16, &v22);
  CoreAnalytics::Client::sendManagementCommandWithReply(v7, __p, &v16, &v19);
  v8 = v16;
  v16 = 0;

  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (MEMORY[0x1B2704910](v19) == MEMORY[0x1E69E9E80])
  {
    v23 = &v19;
    v24 = "error";
    if (applesauce::xpc::dict::object_proxy::operator BOOL(&v23))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2703DD0](exception, "log-dump failed");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v23 = &v19;
    v24 = "log-dump";
    if (applesauce::xpc::dict::object_proxy::operator BOOL(&v23))
    {
      v14[0] = &v19;
      v14[1] = "log-dump";
      applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(v14, &v15);
      v23 = 0;
      v24 = 0;
      v25 = 0;
      applesauce::xpc::dyn_cast_or_default();
      if (SHIBYTE(v25) < 0)
      {
        operator delete(v23);
      }

      v9 = v15;
      v15 = 0;
    }

    else
    {
      applesauce::xpc::object::to_string(&v19);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a2, "unknown");
  }

  v10 = v19;
  v19 = 0;

  v11 = v22;
  v22 = 0;

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1AE569E2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20)
{
  if (*(v20 - 41) < 0)
  {
    operator delete(*(v20 - 64));
  }

  v22 = *(v20 - 72);
  *(v20 - 72) = 0;

  _Unwind_Resume(a1);
}

void **applesauce::xpc::object::object(void **a1, uint64_t a2)
{
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = xpc_string_create(v3);
  *a1 = v4;
  if (!v4)
  {
    v5 = xpc_null_create();
    v6 = *a1;
    *a1 = v5;
  }

  return a1;
}

void analytics_tool_log_transform_counts(_BYTE *a1@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  CASPIEnter();
  v16 = 0xAAAAAAAAAAAAAAAALL;
  applesauce::xpc::dict::create(&v16);
  v15 = 0xAAAAAAAAAAAAAAAALL;
  v3 = CoreAnalytics::Client::get(v2);
  std::string::basic_string[abi:ne200100]<0>(__p, "log-transform-counts");
  applesauce::xpc::object::object(&v12, &v16);
  CoreAnalytics::Client::sendManagementCommandWithReply(v3, __p, &v12, &v15);
  v4 = v12;
  v12 = 0;

  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (MEMORY[0x1B2704910](v15) == MEMORY[0x1E69E9E80])
  {
    v17 = &v15;
    v18 = "error";
    if (applesauce::xpc::dict::object_proxy::operator BOOL(&v17))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2703DD0](exception, "log-transform-counts failed");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v17 = &v15;
    v18 = "log-transform-counts";
    if (applesauce::xpc::dict::object_proxy::operator BOOL(&v17))
    {
      v10[0] = &v15;
      v10[1] = "log-transform-counts";
      applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(v10, &v11);
      v17 = 0;
      v18 = 0;
      v19 = 0;
      applesauce::xpc::dyn_cast_or_default();
      if (SHIBYTE(v19) < 0)
      {
        operator delete(v17);
      }

      v5 = v11;
      v11 = 0;
    }

    else
    {
      applesauce::xpc::object::to_string(&v15);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a1, "unknown");
  }

  v6 = v15;
  v15 = 0;

  v7 = v16;
  v16 = 0;

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1AE56A14C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, void *a21)
{
  if (*(v21 - 41) < 0)
  {
    operator delete(*(v21 - 64));
  }

  _Unwind_Resume(a1);
}

void analytics_tool_config_dump(_BYTE *a1@<X8>)
{
  v21 = *MEMORY[0x1E69E9840];
  CASPIEnter();
  v17 = 0xAAAAAAAAAAAAAAAALL;
  applesauce::xpc::dict::create(&v17);
  v16 = 0xAAAAAAAAAAAAAAAALL;
  v3 = CoreAnalytics::Client::get(v2);
  std::string::basic_string[abi:ne200100]<0>(__p, "config-dump");
  applesauce::xpc::object::object(&v13, &v17);
  CoreAnalytics::Client::sendManagementCommandWithReply(v3, __p, &v13, &v16);
  v4 = v13;
  v13 = 0;

  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (MEMORY[0x1B2704910](v16) == MEMORY[0x1E69E9E80])
  {
    v18 = &v16;
    v19 = "error";
    if (applesauce::xpc::dict::object_proxy::operator BOOL(&v18))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2703DD0](exception, "config-dump failed");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v18 = &v16;
    v19 = "config-dump";
    if (applesauce::xpc::dict::object_proxy::operator BOOL(&v18))
    {
      v10 = &v16;
      v11 = "config-dump";
      applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(&v10, &v12);
      v18 = 0;
      v19 = 0;
      v20 = 0;
      applesauce::xpc::dyn_cast_or_default();
      if (SHIBYTE(v20) < 0)
      {
        operator delete(v18);
      }
    }

    else
    {
      v18 = &v16;
      v19 = "config-info";
      if (!applesauce::xpc::dict::object_proxy::operator BOOL(&v18))
      {
        applesauce::xpc::object::to_string(&v16);
        goto LABEL_15;
      }

      v10 = &v16;
      v11 = "config-info";
      applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(&v10, &v12);
      v18 = 0;
      v19 = 0;
      v20 = 0;
      applesauce::xpc::dyn_cast_or_default();
      if (SHIBYTE(v20) < 0)
      {
        operator delete(v18);
      }
    }

    v5 = v12;
    v12 = 0;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a1, "unknown");
  }

LABEL_15:
  v6 = v16;
  v16 = 0;

  v7 = v17;
  v17 = 0;

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1AE56A464(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, void *a21)
{
  if (*(v21 - 41) < 0)
  {
    operator delete(*(v21 - 64));
  }

  _Unwind_Resume(a1);
}

void analytics_tool_config_list(_BYTE *a1@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  CASPIEnter();
  v16 = 0xAAAAAAAAAAAAAAAALL;
  applesauce::xpc::dict::create(&v16);
  v15 = 0xAAAAAAAAAAAAAAAALL;
  v3 = CoreAnalytics::Client::get(v2);
  std::string::basic_string[abi:ne200100]<0>(__p, "config-list");
  applesauce::xpc::object::object(&v12, &v16);
  CoreAnalytics::Client::sendManagementCommandWithReply(v3, __p, &v12, &v15);
  v4 = v12;
  v12 = 0;

  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (MEMORY[0x1B2704910](v15) == MEMORY[0x1E69E9E80])
  {
    v17 = &v15;
    v18 = "error";
    if (applesauce::xpc::dict::object_proxy::operator BOOL(&v17))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2703DD0](exception, "config-list failed");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v17 = &v15;
    v18 = "config-list";
    if (applesauce::xpc::dict::object_proxy::operator BOOL(&v17))
    {
      v10[0] = &v15;
      v10[1] = "config-list";
      applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(v10, &v11);
      v17 = 0;
      v18 = 0;
      v19 = 0;
      applesauce::xpc::dyn_cast_or_default();
      if (SHIBYTE(v19) < 0)
      {
        operator delete(v17);
      }

      v5 = v11;
      v11 = 0;
    }

    else
    {
      applesauce::xpc::object::to_string(&v15);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a1, "unknown");
  }

  v6 = v15;
  v15 = 0;

  v7 = v16;
  v16 = 0;

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1AE56A744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, void *a21)
{
  if (*(v21 - 41) < 0)
  {
    operator delete(*(v21 - 64));
  }

  _Unwind_Resume(a1);
}

void analytics_tool_config_info(_BYTE *a1@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  CASPIEnter();
  v16 = 0xAAAAAAAAAAAAAAAALL;
  applesauce::xpc::dict::create(&v16);
  v15 = 0xAAAAAAAAAAAAAAAALL;
  v3 = CoreAnalytics::Client::get(v2);
  std::string::basic_string[abi:ne200100]<0>(__p, "config-info");
  applesauce::xpc::object::object(&v12, &v16);
  CoreAnalytics::Client::sendManagementCommandWithReply(v3, __p, &v12, &v15);
  v4 = v12;
  v12 = 0;

  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (MEMORY[0x1B2704910](v15) == MEMORY[0x1E69E9E80])
  {
    v17 = &v15;
    v18 = "error";
    if (applesauce::xpc::dict::object_proxy::operator BOOL(&v17))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2703DD0](exception, "config-info failed");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v17 = &v15;
    v18 = "config-info";
    if (applesauce::xpc::dict::object_proxy::operator BOOL(&v17))
    {
      v10[0] = &v15;
      v10[1] = "config-info";
      applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(v10, &v11);
      v17 = 0;
      v18 = 0;
      v19 = 0;
      applesauce::xpc::dyn_cast_or_default();
      if (SHIBYTE(v19) < 0)
      {
        operator delete(v17);
      }

      v5 = v11;
      v11 = 0;
    }

    else
    {
      applesauce::xpc::object::to_string(&v15);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a1, "unknown");
  }

  v6 = v15;
  v15 = 0;

  v7 = v16;
  v16 = 0;

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1AE56A9F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, void *a21)
{
  if (*(v21 - 41) < 0)
  {
    operator delete(*(v21 - 64));
  }

  _Unwind_Resume(a1);
}

void analytics_tool_config_reload(void)
{
  v10[1] = *MEMORY[0x1E69E9840];
  CASPIEnter();
  v10[0] = 0xAAAAAAAAAAAAAAAALL;
  v1 = CoreAnalytics::Client::get(v0);
  std::string::basic_string[abi:ne200100]<0>(__p, "config-reload");
  applesauce::xpc::dict::create(&v7);
  CoreAnalytics::Client::sendManagementCommandWithReply(v1, __p, &v7, v10);
  v2 = v7;
  v7 = 0;

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (MEMORY[0x1B2704910](v10[0]) == MEMORY[0x1E69E9E80])
  {
    v6[0] = v10;
    v6[1] = "error";
    if (applesauce::xpc::dict::object_proxy::operator BOOL(v6))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2703DD0](exception, "Config-reload failed");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  v3 = v10[0];
  v10[0] = 0;

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1AE56ABE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  __cxa_free_exception(v17);
  v20 = *(v18 - 32);
  *(v18 - 32) = 0;

  _Unwind_Resume(a1);
}

uint64_t analytics_tool_config_set_tasking(uint64_t a1)
{
  v23[1] = *MEMORY[0x1E69E9840];
  CASPIEnter();
  v23[0] = 0xAAAAAAAAAAAAAAAALL;
  applesauce::xpc::dict::create(v23);
  applesauce::xpc::object::object(&v21, a1);
  v19 = v23;
  v20 = "string-config";
  applesauce::xpc::dict::object_proxy::operator=(&v19, &v21, &v22);
  v2 = v22;
  v22 = 0;

  v3 = v21;
  v21 = 0;

  v18 = 0xAAAAAAAAAAAAAAAALL;
  v5 = CoreAnalytics::Client::get(v4);
  std::string::basic_string[abi:ne200100]<0>(__p, "set-tasking-old");
  applesauce::xpc::object::object(&v15, v23);
  CoreAnalytics::Client::sendManagementCommandWithReply(v5, __p, &v15, &v18);
  v6 = v15;
  v15 = 0;

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (MEMORY[0x1B2704910](v18) == MEMORY[0x1E69E9E80])
  {
    v19 = &v18;
    v20 = "error";
    if (applesauce::xpc::dict::object_proxy::operator BOOL(&v19))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2703DD0](exception, "Config-set-tasking (old style config) failed");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  v19 = &v18;
  v20 = "set-tasking-old";
  if (applesauce::xpc::dict::object_proxy::operator BOOL(&v19))
  {
    v19 = &v18;
    v20 = "set-tasking-old";
    applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(&v19, &v14);
    v7 = applesauce::xpc::dyn_cast_or_default();
    v8 = v14;
    v14 = 0;
  }

  else
  {
    v7 = 0;
  }

  v9 = v18;
  v18 = 0;

  v10 = v23[0];
  v23[0] = 0;

  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_1AE56AE58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17)
{
  __cxa_free_exception(v17);

  v20 = *(v18 - 32);
  *(v18 - 32) = 0;

  _Unwind_Resume(a1);
}

uint64_t analytics_tool_config_set_tasking_ndjson(uint64_t a1)
{
  v27[1] = *MEMORY[0x1E69E9840];
  CASPIEnter();
  v27[0] = 0xAAAAAAAAAAAAAAAALL;
  applesauce::xpc::dict::create(v27);
  applesauce::xpc::object::object(&v25, a1);
  v23 = v27;
  v24 = "mmap-config";
  applesauce::xpc::dict::object_proxy::operator=(&v23, &v25, &v26);
  v2 = v26;
  v26 = 0;

  v3 = v25;
  v25 = 0;

  applesauce::xpc::object::object(&v21, *(a1 + 8));
  v23 = v27;
  v24 = "mmap-config-size";
  applesauce::xpc::dict::object_proxy::operator=(&v23, &v21, &v22);
  v4 = v22;
  v22 = 0;

  v5 = v21;
  v21 = 0;

  v20 = 0xAAAAAAAAAAAAAAAALL;
  v7 = CoreAnalytics::Client::get(v6);
  std::string::basic_string[abi:ne200100]<0>(__p, "set-tasking");
  applesauce::xpc::object::object(&v17, v27);
  CoreAnalytics::Client::sendManagementCommandWithReply(v7, __p, &v17, &v20);
  v8 = v17;
  v17 = 0;

  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  if (MEMORY[0x1B2704910](v20) == MEMORY[0x1E69E9E80])
  {
    v23 = &v20;
    v24 = "error";
    if (applesauce::xpc::dict::object_proxy::operator BOOL(&v23))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2703DD0](exception, "Config-set-tasking (ndjson) failed");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  v23 = &v20;
  v24 = "set-tasking";
  if (applesauce::xpc::dict::object_proxy::operator BOOL(&v23))
  {
    v23 = &v20;
    v24 = "set-tasking";
    applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(&v23, &v16);
    v9 = applesauce::xpc::dyn_cast_or_default();
    v10 = v16;
    v16 = 0;
  }

  else
  {
    v9 = 0;
  }

  v11 = v20;
  v20 = 0;

  v12 = v27[0];
  v27[0] = 0;

  v13 = *MEMORY[0x1E69E9840];
  return v9;
}

void sub_1AE56B160(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17)
{
  __cxa_free_exception(v17);

  v20 = *(v18 - 32);
  *(v18 - 32) = 0;

  _Unwind_Resume(a1);
}

applesauce::xpc::object *applesauce::xpc::object::object(applesauce::xpc::object *this, id *a2)
{
  v3 = *a2;
  *this = v3;
  if (!v3)
  {
    v4 = xpc_null_create();
    v5 = *this;
    *this = v4;
  }

  return this;
}

{
  v3 = applesauce::xpc::dict::operator*(a2);
  *this = v3;
  if (!v3)
  {
    v4 = xpc_null_create();
    v5 = *this;
    *this = v4;
  }

  return this;
}

applesauce::xpc::object *applesauce::xpc::object::object(applesauce::xpc::object *this, int64_t value)
{
  v3 = xpc_int64_create(value);
  *this = v3;
  if (!v3)
  {
    v4 = xpc_null_create();
    v5 = *this;
    *this = v4;
  }

  return this;
}

{
  v3 = xpc_int64_create(value);
  *this = v3;
  if (!v3)
  {
    v4 = xpc_null_create();
    v5 = *this;
    *this = v4;
  }

  return this;
}

void analytics_tool_config_set_reboot_clear(BOOL a1)
{
  v19[1] = *MEMORY[0x1E69E9840];
  CASPIEnter();
  v19[0] = 0xAAAAAAAAAAAAAAAALL;
  applesauce::xpc::dict::create(v19);
  applesauce::xpc::object::object(&v17, a1);
  v15 = v19;
  v16 = "should-clear-config-after-reboot";
  applesauce::xpc::dict::object_proxy::operator=(&v15, &v17, &v18);
  v2 = v18;
  v18 = 0;

  v3 = v17;
  v17 = 0;

  v14 = 0xAAAAAAAAAAAAAAAALL;
  v5 = CoreAnalytics::Client::get(v4);
  std::string::basic_string[abi:ne200100]<0>(__p, "set-clear-config-after-reboot");
  applesauce::xpc::object::object(&v11, v19);
  CoreAnalytics::Client::sendManagementCommandWithReply(v5, __p, &v11, &v14);
  v6 = v11;
  v11 = 0;

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (MEMORY[0x1B2704910](v14) == MEMORY[0x1E69E9E80])
  {
    v15 = &v14;
    v16 = "error";
    if (applesauce::xpc::dict::object_proxy::operator BOOL(&v15))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2703DD0](exception, "Set-clear-config-after-reboot failed");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  v7 = v14;
  v14 = 0;

  v8 = v19[0];
  v19[0] = 0;

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1AE56B48C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17)
{
  __cxa_free_exception(v17);

  v20 = *(v18 - 32);
  *(v18 - 32) = 0;

  _Unwind_Resume(a1);
}

applesauce::xpc::object *applesauce::xpc::object::object(applesauce::xpc::object *this, BOOL value)
{
  v3 = xpc_BOOL_create(value);
  *this = v3;
  if (!v3)
  {
    v4 = xpc_null_create();
    v5 = *this;
    *this = v4;
  }

  return this;
}

void analytics_tool_insert_query_state(uint64_t a1, id *a2, id *a3)
{
  v31[1] = *MEMORY[0x1E69E9840];
  CASPIEnter();
  v31[0] = 0xAAAAAAAAAAAAAAAALL;
  applesauce::xpc::dict::create(v31);
  applesauce::xpc::object::object(&v29, a1);
  v27 = v31;
  v28 = "state-name";
  applesauce::xpc::dict::object_proxy::operator=(&v27, &v29, &v30);
  v6 = v30;
  v30 = 0;

  v7 = v29;
  v29 = 0;

  applesauce::xpc::object::object(&v25, a2);
  v27 = v31;
  v28 = "state";
  applesauce::xpc::dict::object_proxy::operator=(&v27, &v25, &v26);
  v8 = v26;
  v26 = 0;

  v9 = v25;
  v25 = 0;

  applesauce::xpc::object::object(&v23, a3);
  v27 = v31;
  v28 = "state-parameters";
  applesauce::xpc::dict::object_proxy::operator=(&v27, &v23, &v24);
  v10 = v24;
  v24 = 0;

  v11 = v23;
  v23 = 0;

  v22 = 0xAAAAAAAAAAAAAAAALL;
  v13 = CoreAnalytics::Client::get(v12);
  std::string::basic_string[abi:ne200100]<0>(__p, "insert-query-state");
  applesauce::xpc::object::object(&v19, v31);
  CoreAnalytics::Client::sendManagementCommandWithReply(v13, __p, &v19, &v22);
  v14 = v19;
  v19 = 0;

  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  if (MEMORY[0x1B2704910](v22) == MEMORY[0x1E69E9E80])
  {
    v27 = &v22;
    v28 = "error";
    if (applesauce::xpc::dict::object_proxy::operator BOOL(&v27))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2703DD0](exception, "insert-query-state failed");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  v15 = v22;
  v22 = 0;

  v16 = v31[0];
  v31[0] = 0;

  v17 = *MEMORY[0x1E69E9840];
}

void sub_1AE56B7E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17)
{
  __cxa_free_exception(v17);

  v20 = *(v18 - 48);
  *(v18 - 48) = 0;

  _Unwind_Resume(a1);
}

void analytics_tool_query_state(uint64_t a1, id *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  CASPIEnter();
  v26 = 0xAAAAAAAAAAAAAAAALL;
  applesauce::xpc::dict::create(&v26);
  applesauce::xpc::object::object(&v24, a1);
  v27 = &v26;
  v28 = "state-name";
  applesauce::xpc::dict::object_proxy::operator=(&v27, &v24, &v25);
  v4 = v25;
  v25 = 0;

  v5 = v24;
  v24 = 0;

  applesauce::xpc::object::object(&v22, a2);
  v27 = &v26;
  v28 = "state-parameters";
  applesauce::xpc::dict::object_proxy::operator=(&v27, &v22, &v23);
  v6 = v23;
  v23 = 0;

  v7 = v22;
  v22 = 0;

  v21 = 0xAAAAAAAAAAAAAAAALL;
  v9 = CoreAnalytics::Client::get(v8);
  std::string::basic_string[abi:ne200100]<0>(__p, "query-state");
  applesauce::xpc::object::object(&v18, &v26);
  CoreAnalytics::Client::sendManagementCommandWithReply(v9, __p, &v18, &v21);
  v10 = v18;
  v18 = 0;

  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (MEMORY[0x1B2704910](v21) == MEMORY[0x1E69E9E80])
  {
    v27 = &v21;
    v28 = "error";
    if (applesauce::xpc::dict::object_proxy::operator BOOL(&v27))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2703DD0](exception, "query-state failed");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  v27 = &v21;
  v28 = "query-state";
  if (applesauce::xpc::dict::object_proxy::operator BOOL(&v27))
  {
    v16[0] = &v21;
    v16[1] = "query-state";
    applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(v16, &v17);
    v27 = 0;
    v28 = 0;
    v29 = 0;
    applesauce::xpc::dyn_cast_or_default();
    if (SHIBYTE(v29) < 0)
    {
      operator delete(v27);
    }

    v11 = v17;
    v17 = 0;
  }

  else
  {
    applesauce::xpc::object::to_string(&v21);
  }

  v12 = v21;
  v21 = 0;

  v13 = v26;
  v26 = 0;

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1AE56BAF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20)
{
  __cxa_free_exception(v20);

  v23 = *(v21 - 72);
  *(v21 - 72) = 0;

  _Unwind_Resume(a1);
}

void analytics_tool_query_clear(uint64_t a1)
{
  v19[1] = *MEMORY[0x1E69E9840];
  CASPIEnter();
  v19[0] = 0xAAAAAAAAAAAAAAAALL;
  applesauce::xpc::dict::create(v19);
  if (*(a1 + 24) == 1)
  {
    applesauce::xpc::object::object(&v17, a1);
    v15 = v19;
    v16 = "state-name";
    applesauce::xpc::dict::object_proxy::operator=(&v15, &v17, &v18);
    v3 = v18;
    v18 = 0;

    v4 = v17;
    v17 = 0;
  }

  v14 = 0xAAAAAAAAAAAAAAAALL;
  v5 = CoreAnalytics::Client::get(v2);
  std::string::basic_string[abi:ne200100]<0>(__p, "query-clear");
  applesauce::xpc::object::object(&v11, v19);
  CoreAnalytics::Client::sendManagementCommandWithReply(v5, __p, &v11, &v14);
  v6 = v11;
  v11 = 0;

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (MEMORY[0x1B2704910](v14) == MEMORY[0x1E69E9E80])
  {
    v15 = &v14;
    v16 = "error";
    if (applesauce::xpc::dict::object_proxy::operator BOOL(&v15))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2703DD0](exception, "query-clear failed");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  v7 = v14;
  v14 = 0;

  v8 = v19[0];
  v19[0] = 0;

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1AE56BD70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17)
{
  __cxa_free_exception(v17);

  v20 = *(v18 - 48);
  *(v18 - 48) = 0;

  _Unwind_Resume(a1);
}

void analytics_tool_query_list(void)
{
  v18 = *MEMORY[0x1E69E9840];
  CASPIEnter();
  v14 = 0xAAAAAAAAAAAAAAAALL;
  applesauce::xpc::dict::create(&v14);
  v13 = 0xAAAAAAAAAAAAAAAALL;
  v1 = CoreAnalytics::Client::get(v0);
  std::string::basic_string[abi:ne200100]<0>(__p, "query-list");
  applesauce::xpc::object::object(&v10, &v14);
  CoreAnalytics::Client::sendManagementCommandWithReply(v1, __p, &v10, &v13);
  v2 = v10;
  v10 = 0;

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (MEMORY[0x1B2704910](v13) == MEMORY[0x1E69E9E80])
  {
    v15 = &v13;
    v16 = "error";
    if (applesauce::xpc::dict::object_proxy::operator BOOL(&v15))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2703DD0](exception, "query-list failed");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  v15 = &v13;
  v16 = "query-list";
  if (applesauce::xpc::dict::object_proxy::operator BOOL(&v15))
  {
    v8[0] = &v13;
    v8[1] = "query-list";
    applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(v8, &v9);
    v15 = 0;
    v16 = 0;
    v17 = 0;
    applesauce::xpc::dyn_cast_or_default();
    if (SHIBYTE(v17) < 0)
    {
      operator delete(v15);
    }

    v3 = v9;
    v9 = 0;
  }

  else
  {
    applesauce::xpc::object::to_string(&v13);
  }

  v4 = v13;
  v13 = 0;

  v5 = v14;
  v14 = 0;

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1AE56BFD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, void *a21)
{
  __cxa_free_exception(v21);

  _Unwind_Resume(a1);
}

void analytics_tool_get_cache_list(void)
{
  v16 = *MEMORY[0x1E69E9840];
  CASPIEnter();
  v12 = 0xAAAAAAAAAAAAAAAALL;
  v1 = CoreAnalytics::Client::get(v0);
  std::string::basic_string[abi:ne200100]<0>(__p, "list-transforms-in-cache");
  applesauce::xpc::dict::create(&v9);
  CoreAnalytics::Client::sendManagementCommandWithReply(v1, __p, &v9, &v12);
  v2 = v9;
  v9 = 0;

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (MEMORY[0x1B2704910](v12) == MEMORY[0x1E69E9E80])
  {
    v13 = &v12;
    v14 = "error";
    if (applesauce::xpc::dict::object_proxy::operator BOOL(&v13))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2703DD0](exception, "list-transforms-in-cache failed");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  v7[0] = &v12;
  v7[1] = "transforms-in-cache";
  applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(v7, &v8);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  applesauce::xpc::dyn_cast_or_default();
  if (SHIBYTE(v15) < 0)
  {
    operator delete(v13);
  }

  v3 = v8;
  v8 = 0;

  v4 = v12;
  v12 = 0;

  v5 = *MEMORY[0x1E69E9840];
}

void sub_1AE56C21C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19)
{
  __cxa_free_exception(v19);

  _Unwind_Resume(a1);
}

void analytics_tool_save(void)
{
  v8[1] = *MEMORY[0x1E69E9840];
  CASPIEnter();
  v8[0] = 0xAAAAAAAAAAAAAAAALL;
  v1 = CoreAnalytics::Client::get(v0);
  std::string::basic_string[abi:ne200100]<0>(__p, "save-log");
  applesauce::xpc::dict::create(&v5);
  CoreAnalytics::Client::sendManagementCommandWithReply(v1, __p, &v5, v8);
  v2 = v5;
  v5 = 0;

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  v3 = v8[0];
  v8[0] = 0;

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1AE56C37C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t analytics_tool_rollover(uint64_t a1, BOOL a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  CASPIEnter();
  v18[0] = 0xAAAAAAAAAAAAAAAALL;
  applesauce::xpc::dict::create(v18);
  if (*(a1 + 24))
  {
    applesauce::xpc::object::object(&v16, a1);
    v14 = v18;
    v15 = "aggPeriod";
    applesauce::xpc::dict::object_proxy::operator=(&v14, &v16, &v17);
    v4 = v17;
    v17 = 0;

    v5 = v16;
    v16 = 0;
  }

  applesauce::xpc::object::object(&v12, a2);
  v14 = v18;
  v15 = "preserveState";
  applesauce::xpc::dict::object_proxy::operator=(&v14, &v12, &v13);
  v6 = v13;
  v13 = 0;

  v7 = v12;
  v12 = 0;

  v8 = analytics_rollover_with_options(v18[0]);
  v9 = v18[0];
  v18[0] = 0;

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

void analytics_tool_commit(void)
{
  v8[1] = *MEMORY[0x1E69E9840];
  CASPIEnter();
  v8[0] = 0xAAAAAAAAAAAAAAAALL;
  v1 = CoreAnalytics::Client::get(v0);
  std::string::basic_string[abi:ne200100]<0>(__p, "commit");
  applesauce::xpc::dict::create(&v5);
  CoreAnalytics::Client::sendManagementCommandWithReply(v1, __p, &v5, v8);
  v2 = v5;
  v5 = 0;

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  v3 = v8[0];
  v8[0] = 0;

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1AE56C5F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void analytics_tool_transform_info(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  CASPIEnter();
  v22 = 0xAAAAAAAAAAAAAAAALL;
  applesauce::xpc::dict::create(&v22);
  applesauce::xpc::object::object(&v20, a1);
  v23 = &v22;
  v24 = "name";
  applesauce::xpc::dict::object_proxy::operator=(&v23, &v20, &v21);
  v4 = v21;
  v21 = 0;

  v5 = v20;
  v20 = 0;

  v19 = 0xAAAAAAAAAAAAAAAALL;
  v7 = CoreAnalytics::Client::get(v6);
  std::string::basic_string[abi:ne200100]<0>(__p, "transform-info");
  applesauce::xpc::object::object(&v16, &v22);
  CoreAnalytics::Client::sendManagementCommandWithReply(v7, __p, &v16, &v19);
  v8 = v16;
  v16 = 0;

  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (MEMORY[0x1B2704910](v19) == MEMORY[0x1E69E9E80])
  {
    v23 = &v19;
    v24 = "error";
    if (applesauce::xpc::dict::object_proxy::operator BOOL(&v23))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2703DD0](exception, "transform-info failed");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v23 = &v19;
    v24 = "transform-info";
    if (applesauce::xpc::dict::object_proxy::operator BOOL(&v23))
    {
      v14[0] = &v19;
      v14[1] = "transform-info";
      applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(v14, &v15);
      v23 = 0;
      v24 = 0;
      v25 = 0;
      applesauce::xpc::dyn_cast_or_default();
      if (SHIBYTE(v25) < 0)
      {
        operator delete(v23);
      }

      v9 = v15;
      v15 = 0;
    }

    else
    {
      applesauce::xpc::object::to_string(&v19);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a2, "unknown");
  }

  v10 = v19;
  v19 = 0;

  v11 = v22;
  v22 = 0;

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1AE56C878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20)
{
  if (*(v20 - 41) < 0)
  {
    operator delete(*(v20 - 64));
  }

  v22 = *(v20 - 72);
  *(v20 - 72) = 0;

  _Unwind_Resume(a1);
}

uint64_t analytics_tool_transform_evict(uint64_t a1)
{
  v23[1] = *MEMORY[0x1E69E9840];
  CASPIEnter();
  v23[0] = 0xAAAAAAAAAAAAAAAALL;
  applesauce::xpc::dict::create(v23);
  applesauce::xpc::object::object(&v21, a1);
  v19 = v23;
  v20 = "name";
  applesauce::xpc::dict::object_proxy::operator=(&v19, &v21, &v22);
  v2 = v22;
  v22 = 0;

  v3 = v21;
  v21 = 0;

  v18 = 0xAAAAAAAAAAAAAAAALL;
  v5 = CoreAnalytics::Client::get(v4);
  std::string::basic_string[abi:ne200100]<0>(__p, "transform-evict");
  applesauce::xpc::object::object(&v15, v23);
  CoreAnalytics::Client::sendManagementCommandWithReply(v5, __p, &v15, &v18);
  v6 = v15;
  v15 = 0;

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (MEMORY[0x1B2704910](v18) != MEMORY[0x1E69E9E80])
  {
    goto LABEL_7;
  }

  v19 = &v18;
  v20 = "error";
  if (applesauce::xpc::dict::object_proxy::operator BOOL(&v19))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2703DD0](exception, "transform-evict failed");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v19 = &v18;
  v20 = "transform-evict";
  if (applesauce::xpc::dict::object_proxy::operator BOOL(&v19))
  {
    v19 = &v18;
    v20 = "transform-evict";
    applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(&v19, &v14);
    v7 = applesauce::xpc::dyn_cast_or_default();
    v8 = v14;
    v14 = 0;
  }

  else
  {
LABEL_7:
    v7 = 0;
  }

  v9 = v18;
  v18 = 0;

  v10 = v23[0];
  v23[0] = 0;

  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_1AE56CB44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17)
{
  v19 = *(v17 - 32);
  *(v17 - 32) = 0;

  _Unwind_Resume(a1);
}

uint64_t analytics_tool_transform_persist(uint64_t a1)
{
  v23[1] = *MEMORY[0x1E69E9840];
  CASPIEnter();
  v23[0] = 0xAAAAAAAAAAAAAAAALL;
  applesauce::xpc::dict::create(v23);
  applesauce::xpc::object::object(&v21, a1);
  v19 = v23;
  v20 = "name";
  applesauce::xpc::dict::object_proxy::operator=(&v19, &v21, &v22);
  v2 = v22;
  v22 = 0;

  v3 = v21;
  v21 = 0;

  v18 = 0xAAAAAAAAAAAAAAAALL;
  v5 = CoreAnalytics::Client::get(v4);
  std::string::basic_string[abi:ne200100]<0>(__p, "transform-persist");
  applesauce::xpc::object::object(&v15, v23);
  CoreAnalytics::Client::sendManagementCommandWithReply(v5, __p, &v15, &v18);
  v6 = v15;
  v15 = 0;

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (MEMORY[0x1B2704910](v18) != MEMORY[0x1E69E9E80])
  {
    goto LABEL_7;
  }

  v19 = &v18;
  v20 = "error";
  if (applesauce::xpc::dict::object_proxy::operator BOOL(&v19))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2703DD0](exception, "transform-persist failed");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v19 = &v18;
  v20 = "transform-persist";
  if (applesauce::xpc::dict::object_proxy::operator BOOL(&v19))
  {
    v19 = &v18;
    v20 = "transform-persist";
    applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(&v19, &v14);
    v7 = applesauce::xpc::dyn_cast_or_default();
    v8 = v14;
    v14 = 0;
  }

  else
  {
LABEL_7:
    v7 = 0;
  }

  v9 = v18;
  v18 = 0;

  v10 = v23[0];
  v23[0] = 0;

  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_1AE56CE00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17)
{
  v19 = *(v17 - 32);
  *(v17 - 32) = 0;

  _Unwind_Resume(a1);
}

uint64_t analytics_tool_is_event_used_check_db(uint64_t a1)
{
  v23[1] = *MEMORY[0x1E69E9840];
  CASPIEnter();
  v23[0] = 0xAAAAAAAAAAAAAAAALL;
  applesauce::xpc::dict::create(v23);
  applesauce::xpc::object::object(&v21, a1);
  v19 = v23;
  v20 = "name";
  applesauce::xpc::dict::object_proxy::operator=(&v19, &v21, &v22);
  v2 = v22;
  v22 = 0;

  v3 = v21;
  v21 = 0;

  v18 = 0xAAAAAAAAAAAAAAAALL;
  v5 = CoreAnalytics::Client::get(v4);
  std::string::basic_string[abi:ne200100]<0>(__p, "event-used");
  applesauce::xpc::object::object(&v15, v23);
  CoreAnalytics::Client::sendManagementCommandWithReply(v5, __p, &v15, &v18);
  v6 = v15;
  v15 = 0;

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (MEMORY[0x1B2704910](v18) != MEMORY[0x1E69E9E80])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2703DD0](exception, "event-used failed");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v19 = &v18;
  v20 = "event-used";
  applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(&v19, &v14);
  v7 = applesauce::xpc::dyn_cast_or_default();
  v8 = v14;
  v14 = 0;

  v9 = v18;
  v18 = 0;

  v10 = v23[0];
  v23[0] = 0;

  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_1AE56D084(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17)
{
  __cxa_free_exception(v17);

  v20 = *(v18 - 32);
  *(v18 - 32) = 0;

  _Unwind_Resume(a1);
}

BOOL analytics_tool_has_config(void)
{
  CASPIEnter();
  v1 = CoreAnalytics::Client::get(v0);

  return CoreAnalytics::Client::hasConfig(v1);
}

void report_locale_prefs_to_analyticsd()
{
  v7 = *MEMORY[0x1E69E9840];
  CASPIEnter();
  __report_locale_prefs_to_analyticsd_block_invoke();
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  v1 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v2 = *MEMORY[0x1E695D8F0];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __report_locale_prefs_to_analyticsd_block_invoke_59;
  v5[3] = &unk_1E7A2A488;
  v6 = &__block_literal_global;
  v3 = [v0 addObserverForName:v2 object:0 queue:v1 usingBlock:v5];

  v4 = *MEMORY[0x1E69E9840];
}

void __report_locale_prefs_to_analyticsd_block_invoke()
{
  v50 = *MEMORY[0x1E69E9840];
  v46 = 0xAAAAAAAAAAAAAAAALL;
  applesauce::xpc::dict::create(&v46);
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x1E695DF58] preferredLanguages];
  v2 = MEMORY[0x1E696AAE8];
  v3 = [MEMORY[0x1E695DF58] systemLanguages];
  v4 = [v2 preferredLocalizationsFromArray:v3 forPreferences:v1];

  if ([v4 count])
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = v5;
    std::string::basic_string[abi:ne200100]<0>(__p, [v5 UTF8String]);
    applesauce::xpc::object::object(&v44, __p);
    *&buf = &v46;
    *(&buf + 1) = "user-interface-language";
    applesauce::xpc::dict::object_proxy::operator=(&buf, &v44, &v45);
    v7 = v45;
    v45 = 0;

    v8 = v44;
    v44 = 0;

    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if ([v1 count])
  {
    v9 = [v1 objectAtIndexedSubscript:0];
    v10 = v9;
    std::string::basic_string[abi:ne200100]<0>(__p, [v9 UTF8String]);
    applesauce::xpc::object::object(&v41, __p);
    *&buf = &v46;
    *(&buf + 1) = "preferred-user-interface-language";
    applesauce::xpc::dict::object_proxy::operator=(&buf, &v41, &v42);
    v11 = v42;
    v42 = 0;

    v12 = v41;
    v41 = 0;

    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v13 = [MEMORY[0x1E695DF58] currentLocale];
  v14 = v13;
  if (v13)
  {
    v15 = *MEMORY[0x1E695D978];
    v16 = [v13 objectForKey:*MEMORY[0x1E695D978]];
    v17 = v16 == 0;

    if (!v17)
    {
      v18 = [v14 objectForKey:v15];
      v19 = v18;
      std::string::basic_string[abi:ne200100]<0>(__p, [v18 UTF8String]);
      applesauce::xpc::object::object(&v39, __p);
      *&buf = &v46;
      *(&buf + 1) = "user-set-region-format";
      applesauce::xpc::dict::object_proxy::operator=(&buf, &v39, &v40);
      v20 = v40;
      v40 = 0;

      v21 = v39;
      v39 = 0;

      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  objc_autoreleasePoolPop(v0);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = MEMORY[0x1B2704820](v46);
    memset(__p, 170, sizeof(__p));
    std::string::basic_string[abi:ne200100]<0>(__p, v23);
    free(v23);
    v24 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
    LODWORD(buf) = 136315138;
    *(&buf + 4) = v24;
    _os_log_impl(&dword_1AE55E000, v22, OS_LOG_TYPE_INFO, "store-locale-info is sending %s", &buf, 0xCu);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v38 = 0xAAAAAAAAAAAAAAAALL;
  v26 = CoreAnalytics::Client::get(v25);
  std::string::basic_string[abi:ne200100]<0>(v36, "store-locale-info");
  applesauce::xpc::object::object(&v35, &v46);
  CoreAnalytics::Client::sendManagementCommandWithReply(v26, v36, &v35, &v38);
  v27 = v35;
  v35 = 0;

  if (v37 < 0)
  {
    operator delete(v36[0]);
  }

  if (MEMORY[0x1B2704910](v38) == MEMORY[0x1E69E9E80])
  {
    __p[0] = &v38;
    __p[1] = "error";
    if (applesauce::xpc::dict::object_proxy::operator BOOL(__p))
    {
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *&buf = &v38;
        *(&buf + 1) = "error";
        applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(&buf, &v34);
        applesauce::xpc::dyn_cast<std::string>();
        if (SHIBYTE(__p[2]) >= 0)
        {
          v32 = __p;
        }

        else
        {
          v32 = __p[0];
        }

        *v47 = 136315138;
        v48 = v32;
        _os_log_error_impl(&dword_1AE55E000, v28, OS_LOG_TYPE_ERROR, "store-locale-info failed error: %s", v47, 0xCu);
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        v33 = v34;
        v34 = 0;
      }
    }
  }

  v29 = v38;
  v38 = 0;

  v30 = v46;
  v46 = 0;

  v31 = *MEMORY[0x1E69E9840];
}

uint64_t __report_locale_prefs_to_analyticsd_block_invoke_59(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  {
    *v5 = 0;
    _os_log_impl(&dword_1AE55E000, v2, OS_LOG_TYPE_DEFAULT, "Received locale changed notification", v5, 2u);
  }

  result = (*(*(a1 + 32) + 16))();
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void *ad_addScalarForKey(uint64_t a1, uint64_t a2)
{
  CASPIEnter();
  if (ad_addScalarForKey::onceToken != -1)
  {
    ad_addScalarForKey_cold_1();
  }

  result = ad_addScalarForKey::__ADClientAddValueForScalarKey;
  if (ad_addScalarForKey::__ADClientAddValueForScalarKey)
  {
    v6 = ad_addScalarForKey::__ADClientAddValueForScalarKey;
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a1];

    return v6(v5, a2);
  }

  return result;
}

void *__ad_addScalarForKey_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AggregateDictionary.framework/AggregateDictionary", 1);
  if (result)
  {
    result = dlsym(result, "ADClientAddValueForScalarKey");
    ad_addScalarForKey::__ADClientAddValueForScalarKey = result;
  }

  return result;
}

void analytics_tool_app_usage_sync(void)
{
  v16 = *MEMORY[0x1E69E9840];
  CASPIEnter();
  v12 = 0xAAAAAAAAAAAAAAAALL;
  v1 = CoreAnalytics::Client::get(v0);
  std::string::basic_string[abi:ne200100]<0>(__p, "app-usage-sync");
  applesauce::xpc::dict::create(&v9);
  CoreAnalytics::Client::sendManagementCommandWithReply(v1, __p, &v9, &v12);
  v2 = v9;
  v9 = 0;

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (MEMORY[0x1B2704910](v12) != MEMORY[0x1E69E9E80])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2703DD0](exception, "Failed to run 'app-usage-sync'");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v13 = &v12;
  v14 = "appusage";
  if (applesauce::xpc::dict::object_proxy::operator BOOL(&v13))
  {
    v7[0] = &v12;
    v7[1] = "appusage";
    applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(v7, &v8);
    v13 = 0;
    v14 = 0;
    v15 = 0;
    applesauce::xpc::dyn_cast_or_default();
    if (SHIBYTE(v15) < 0)
    {
      operator delete(v13);
    }

    v3 = v8;
    v8 = 0;
  }

  else
  {
    applesauce::xpc::object::to_string(&v12);
  }

  v4 = v12;
  v12 = 0;

  v5 = *MEMORY[0x1E69E9840];
}

void sub_1AE56DBC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19)
{
  if (*(v19 - 25) < 0)
  {
    operator delete(*(v19 - 48));
  }

  _Unwind_Resume(a1);
}

void setObjectForKey(void *a1, const char *a2)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  CASPIEnter();
  v26[0] = 0xAAAAAAAAAAAAAAAALL;
  applesauce::xpc::dict::create(v26);
  applesauce::xpc::object::object(&v24, a2);
  v22 = v26;
  v23 = "key";
  applesauce::xpc::dict::object_proxy::operator=(&v22, &v24, &v25);
  v4 = v25;
  v25 = 0;

  v5 = v24;
  v24 = 0;

  v6 = v3;
  v20 = v6;
  if (!v6)
  {
    v20 = xpc_null_create();
  }

  v22 = v26;
  v23 = "value";
  applesauce::xpc::dict::object_proxy::operator=(&v22, &v20, &v21);
  v7 = v21;
  v21 = 0;

  v8 = v20;
  v20 = 0;

  v19 = 0xAAAAAAAAAAAAAAAALL;
  v10 = CoreAnalytics::Client::get(v9);
  std::string::basic_string[abi:ne200100]<0>(__p, "prefs-set");
  applesauce::xpc::object::object(&v16, v26);
  CoreAnalytics::Client::sendManagementCommandWithReply(v10, __p, &v16, &v19);
  v11 = v16;
  v16 = 0;

  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (MEMORY[0x1B2704910](v19) != MEMORY[0x1E69E9E80] || (v22 = &v19, v23 = "error", applesauce::xpc::dict::object_proxy::operator BOOL(&v22)))
  {
    {
      setObjectForKey_cold_1(a2, v12);
    }
  }

  v13 = v19;
  v19 = 0;

  v14 = v26[0];
  v26[0] = 0;

  v15 = *MEMORY[0x1E69E9840];
}

void sub_1AE56DE8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17)
{
  v20 = *(v18 - 48);
  *(v18 - 48) = 0;

  _Unwind_Resume(a1);
}

applesauce::xpc::object *applesauce::xpc::object::object(applesauce::xpc::object *this, const char *string)
{
  v3 = xpc_string_create(string);
  *this = v3;
  if (!v3)
  {
    v4 = xpc_null_create();
    v5 = *this;
    *this = v4;
  }

  return this;
}

id getObjectForKey(const char *a1)
{
  v22[1] = *MEMORY[0x1E69E9840];
  CASPIEnter();
  v22[0] = 0xAAAAAAAAAAAAAAAALL;
  applesauce::xpc::dict::create(v22);
  applesauce::xpc::object::object(&v20, a1);
  v18 = v22;
  v19 = "key";
  applesauce::xpc::dict::object_proxy::operator=(&v18, &v20, &v21);
  v2 = v21;
  v21 = 0;

  v3 = v20;
  v20 = 0;

  v17 = 0xAAAAAAAAAAAAAAAALL;
  v5 = CoreAnalytics::Client::get(v4);
  std::string::basic_string[abi:ne200100]<0>(__p, "prefs-get");
  applesauce::xpc::object::object(&v14, v22);
  CoreAnalytics::Client::sendManagementCommandWithReply(v5, __p, &v14, &v17);
  v6 = v14;
  v14 = 0;

  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (MEMORY[0x1B2704910](v17) == MEMORY[0x1E69E9E80] && (v18 = &v17, v19 = "error", !applesauce::xpc::dict::object_proxy::operator BOOL(&v18)))
  {
    v13 = 0xAAAAAAAAAAAAAAAALL;
    v18 = &v17;
    v19 = "value";
    applesauce::xpc::dict::object_proxy::operator applesauce::xpc::dict(&v18, &v13);
    v8 = v13;
    v13 = 0;
  }

  else
  {
    {
      getObjectForKey_cold_1(a1, v7);
    }

    v8 = 0;
  }

  v9 = v17;
  v17 = 0;

  v10 = v22[0];
  v22[0] = 0;

  v11 = *MEMORY[0x1E69E9840];

  return v8;
}

void sub_1AE56E188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17)
{
  v19 = *(v17 - 32);
  *(v17 - 32) = 0;

  _Unwind_Resume(a1);
}

void applesauce::xpc::dict::object_proxy::operator applesauce::xpc::dict(uint64_t a1@<X0>, xpc_object_t *a2@<X8>)
{
  v3 = applesauce::xpc::dict::object_proxy::operator*(a1);
  v6 = v3;
  if (!v3)
  {
    v3 = xpc_null_create();
  }

  v4 = v3;
  v5 = v4;
  *a2 = v4;
  if (!v4 || MEMORY[0x1B2704910](v4) != MEMORY[0x1E69E9E80])
  {
    *a2 = xpc_null_create();
  }
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E7A2A450, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

uint64_t analytics_is_event_used(const char *a1)
{
  v2 = objc_autoreleasePoolPush();
  CASPIEnter();
  v4 = CoreAnalytics::Client::get(v3);
  v5 = strlen(a1);
  isEventUsed = CoreAnalytics::Client::isEventUsed(v4, a1, v5);
  objc_autoreleasePoolPop(v2);
  return isEventUsed;
}

id __copy_helper_block_ea8_32c31_ZTSKZ18AnalyticsSendEventE3__0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

void AnalyticsSendEventWithOptions(void *a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3321888768;
  v8[2] = __AnalyticsSendEventWithOptions_block_invoke;
  v8[3] = &__block_descriptor_40_ea8_32c42_ZTSKZ29AnalyticsSendEventWithOptionsE3__0_e19___NSDictionary_8__0l;
  v9 = v5;
  v6 = v5;
  AnalyticsSendEventInternal(a1, v8, 0, 0, a3);

  v7 = *MEMORY[0x1E69E9840];
}

id __copy_helper_block_ea8_32c42_ZTSKZ29AnalyticsSendEventWithOptionsE3__0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

void analytics_send_event_with_options(char *a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __analytics_send_event_with_options_block_invoke;
  v8[3] = &unk_1E7A2A4C0;
  v9 = v5;
  v6 = v5;
  analytics_send_event_internal(a1, v8, 0, 0, a3);

  v7 = *MEMORY[0x1E69E9840];
}

__n128 std::__function::__func<AnalyticsSendEventInternal(NSString const*,NSDictionary<NSString*,NSObject *> *({block_pointer})(void),XPCMessagePriority,EventPayloadFormat,NSDictionary<NSString*,NSObject *> *)::$_0,std::allocator<AnalyticsSendEventInternal(NSString const*,NSDictionary<NSString*,NSObject *> *({block_pointer})(void),XPCMessagePriority,EventPayloadFormat,NSDictionary<NSString*,NSObject *> *)::$_0>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F241FA60;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AnalyticsSendEventInternal(NSString const*,NSDictionary<NSString*,NSObject *> *({block_pointer})(void),XPCMessagePriority,EventPayloadFormat,NSDictionary<NSString*,NSObject *> *)::$_0,std::allocator<AnalyticsSendEventInternal(NSString const*,NSDictionary<NSString*,NSObject *> *({block_pointer})(void),XPCMessagePriority,EventPayloadFormat,NSDictionary<NSString*,NSObject *> *)::$_0>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void nlohmann::detail::exception::name(int a1@<W1>, std::string *a2@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  std::operator+<char>();
  v4 = std::string::append(&v13, ".");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, a1);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v8 = std::string::append(&v14, p_p, size);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v15, "] ");
  *a2 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_1AE56E8B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v26 - 41) < 0)
  {
    operator delete(*(v26 - 64));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

nlohmann::detail::exception *nlohmann::detail::exception::exception(nlohmann::detail::exception *this, int a2, const char *a3)
{
  *this = &unk_1F241FAF8;
  *(this + 2) = a2;
  MEMORY[0x1B2703DD0](this + 16, a3);
  return this;
}

void nlohmann::detail::exception::~exception(std::exception *this)
{
  this->__vftable = &unk_1F241FAF8;
  MEMORY[0x1B2703DF0](&this[2]);

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_1F241FAF8;
  MEMORY[0x1B2703DF0](&this[2]);
  std::exception::~exception(this);

  JUMPOUT(0x1B2703F50);
}

void nlohmann::detail::type_error::create(int a1@<W0>, uint64_t a2@<X1>, nlohmann::detail::exception *a3@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(&__p, "type_error");
  nlohmann::detail::exception::name(a1, &v15);
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  v9 = std::string::append(&v15, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v17 = v9->__r_.__value_.__r.__words[2];
  *v16 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (v14 < 0)
  {
    operator delete(__p);
  }

  if (v17 >= 0)
  {
    v11 = v16;
  }

  else
  {
    v11 = v16[0];
  }

  nlohmann::detail::exception::exception(a3, a1, v11);
  *a3 = &unk_1F241FB38;
  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16[0]);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1AE56EB6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void nlohmann::detail::type_error::~type_error(std::exception *this)
{
  this->__vftable = &unk_1F241FAF8;
  MEMORY[0x1B2703DF0](&this[2]);

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_1F241FAF8;
  MEMORY[0x1B2703DF0](&this[2]);
  std::exception::~exception(this);

  JUMPOUT(0x1B2703F50);
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v6 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(a1);
    std::string::basic_string[abi:ne200100]<0>(&v9, v6);
    v7 = std::string::insert(&v9, 0, "cannot use operator[] with a numeric argument with ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v11 = v7->__r_.__value_.__r.__words[2];
    v10 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::type_error::create(305, &v10, exception);
  }

  v3 = *MEMORY[0x1E69E9840];
  return **(a1 + 8) + 16 * a2;
}

void sub_1AE56ED0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

const char *nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 > 9)
  {
    return "number";
  }

  else
  {
    return off_1E7A2A4E0[v1];
  }
}

unsigned __int8 *nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::moved_or_copied@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (*(a1 + 24) == 1)
  {
    *a2 = *v3;
    *(a2 + 8) = *(v3 + 8);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v3);
    *v3 = 0;
    *(v3 + 8) = 0;

    return nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
  }

  else
  {

    return nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(a2, v3);
  }
}

unsigned __int8 *nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(unsigned __int8 *a1, unsigned __int8 *a2)
{
  *a1 = *a2;
  *(a1 + 1) = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
  v4 = *a1;
  if (v4 > 4)
  {
    if (*a1 > 6u)
    {
      if (v4 != 7)
      {
        if (v4 == 8)
        {
          v7 = *(a2 + 1);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<nlohmann::byte_container_with_subtype<std::vector<unsigned char>>,nlohmann::byte_container_with_subtype<std::vector<unsigned char>> const&>();
        }

        goto LABEL_20;
      }
    }

    else if (v4 != 5 && v4 != 6)
    {
      goto LABEL_20;
    }

    v6 = *(a2 + 1);
    goto LABEL_19;
  }

  if (*a1 <= 2u)
  {
    if (v4 == 1)
    {
      v8 = *(a2 + 1);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::map<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::map<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>> const&>();
    }

    if (v4 == 2)
    {
      v5 = *(a2 + 1);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>> const&>();
    }

    goto LABEL_20;
  }

  if (v4 == 3)
  {
    v9 = *(a2 + 1);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::string,std::string const&>();
  }

  if (v4 == 4)
  {
    v6 = a2[8];
LABEL_19:
    *(a1 + 1) = v6;
  }

LABEL_20:
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
  return a1;
}

void *std::map<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::map[abi:ne200100](void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__tree_node<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,void *> *,long>>>(a1, *a2, a2 + 1);
  return a1;
}

uint64_t std::map<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__tree_node<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,void *> *,long>>>(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>> const&>(v5, (v5 + 1), v4 + 4);
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

uint64_t std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>> const&>(void *a1, uint64_t a2, const void **a3)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v5 = 0xAAAAAAAAAAAAAAAALL;
  v6[0] = 0xAAAAAAAAAAAAAAAALL;
  result = *std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__find_equal<std::string>(a1, a2, v6, &v5, a3);
  if (!result)
  {
    memset(&v6[1], 170, 24);
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__construct_node<std::pair<std::string const,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>> const&>();
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__find_equal<std::string>(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, const void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 != a2 && !std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a1, a5, (a2 + 32)))
  {
    if (!std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a1, (a2 + 32), a5))
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
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a1, a5, v15 + 4))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

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

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 8;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = *(v11 + 8);
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = *(v16 + 16);
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a1, (v12 + 32), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__find_equal<std::string>(a1, a3, a5);
}

void sub_1AE56F37C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string const,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(&this[1], a2 + 24);
  return this;
}

void sub_1AE56F3F4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,void *>>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((a2 + 56));
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy((a2 + 64), *(a2 + 56));
    if (*(a2 + 55) < 0)
    {
      operator delete(*(a2 + 32));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__init_with_size[abi:ne200100]<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__vallocate[abi:ne200100](result, a4);
  }

  v4 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1AE56F58C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v2 + 8) = v3;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(a1, a2);
  }

  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v13 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a4;
  v11[0] = a1;
  v11[1] = &v9;
  v11[2] = &v10;
  v12 = 0xAAAAAAAAAAAAAA00;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v4, v6);
      v6 += 16;
      v4 = v10 + 16;
      v10 += 16;
    }

    while (v6 != a3);
  }

  LOBYTE(v12) = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>>::~__exception_guard_exceptions[abi:ne200100](v11);
  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

void sub_1AE56F6C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>>::~__exception_guard_exceptions[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__allocator_destroy[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::reverse_iterator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>,std::reverse_iterator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>>(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, unsigned __int8 *a5)
{
  if (a3 != a5)
  {
    v6 = a3 - 16;
    v7 = a3 - 16;
    do
    {
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v6);
      v8 = *v7;
      v7 -= 16;
      result = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v6 + 8, v8);
      v10 = v6 == a5;
      v6 = v7;
    }

    while (!v10);
  }

  return result;
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1AE56F87C(_Unwind_Exception *exception_object)
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

  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_unique_key_args<std::string,std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(uint64_t a1, const void **a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = 0xAAAAAAAAAAAAAAAALL;
  result = *std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__find_equal<std::string>(a1, v4, a2);
  if (!result)
  {
    memset(&v4[1], 170, 24);
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__construct_node<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>();
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(a1, v7);
  }

  v8 = 16 * v2;
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  *v8 = *a2;
  *(v8 + 8) = *(a2 + 8);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
  *a2 = 0;
  *(a2 + 8) = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
  *&v18 = v8 + 16;
  v9 = *(a1 + 8);
  v10 = v8 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v11;
  *(&v18 + 1) = v12;
  v16 = v11;
  v17 = v11;
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(&v16);
  v13 = *MEMORY[0x1E69E9840];
  return v15;
}

void sub_1AE56FB90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>> const*,nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>> const*,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v13 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a4;
  v11[0] = a1;
  v11[1] = &v9;
  v11[2] = &v10;
  v12 = 0xAAAAAAAAAAAAAA00;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,0>(v4, v6);
      v6 += 32;
      v4 = v10 + 16;
      v10 += 16;
    }

    while (v6 != a3);
  }

  LOBYTE(v12) = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>>::~__exception_guard_exceptions[abi:ne200100](v11);
  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

void sub_1AE56FC64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>>::~__exception_guard_exceptions[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,0>(uint64_t a1, uint64_t a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::moved_or_copied(a2, v5);
  *a1 = v5[0];
  *(a1 + 8) = v6[0];
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v5);
  v5[0] = 0;
  v6[0] = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v5);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v6, v5[0]);
  v3 = *MEMORY[0x1E69E9840];
  return a1;
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

void std::__shared_ptr_emplace<nlohmann::detail::output_string_adapter<char,std::string>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F241FB70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B2703F50);
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return (***a1)(*a1, 48);
  }

  LOBYTE(v2) = a2;
  if (a2 >= 0xA)
  {
    if (a2 >= 0x64)
    {
      *(a1 + 17) = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(unsigned char)::digits_to_99[(a2 - 100 * ((41 * a2) >> 12))];
      v5 = a1 + 17;
      v2 = (41 * a2) >> 12;
      goto LABEL_10;
    }

    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v5 = a1 + 16 + v3;
  if (a2 < 0xA)
  {
LABEL_10:
    *(v5 - 1) = v2 | 0x30;
    return (*(**a1 + 8))();
  }

  *(v5 - 2) = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(unsigned char)::digits_to_99[a2];
  return (*(**a1 + 8))();
}

__n128 std::__function::__func<analytics_send_event_internal(char const*,NSObject  {objcproto13OS_xpc_object}* {ns_returns_retained}({block_pointer})(void),XPCMessagePriority,EventPayloadFormat,NSObject  {objcproto13OS_xpc_object}*)::$_0,std::allocator<EventPayloadFormat>,nlohmann::basic_json<std::map,std::vector,std::basic_string<char,std::char_traits<char>,analytics_send_event_internal(char const*,NSObject  {objcproto13OS_xpc_object}* {ns_returns_retained}({block_pointer})(void),XPCMessagePriority,EventPayloadFormat,NSObject  {objcproto13OS_xpc_object}*)::$_0<char>>,BOOL,long long,unsigned long long,double,analytics_send_event_internal(char const*,NSObject  {objcproto13OS_xpc_object}* {ns_returns_retained}({block_pointer})(void),XPCMessagePriority,EventPayloadFormat,NSObject  {objcproto13OS_xpc_object}*)::$_0,std::allocator<EventPayloadFormat>::adl_serializer,std::map<unsigned char,analytics_send_event_internal(char const*,NSObject  {objcproto13OS_xpc_object}* {ns_returns_retained}({block_pointer})(void),XPCMessagePriority,EventPayloadFormat,NSObject  {objcproto13OS_xpc_object}*)::$_0<unsigned char>>> ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F241FC18;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<analytics_send_event_internal(char const*,NSObject  {objcproto13OS_xpc_object}* {ns_returns_retained}({block_pointer})(void),XPCMessagePriority,EventPayloadFormat,NSObject  {objcproto13OS_xpc_object}*)::$_0,std::allocator<EventPayloadFormat>,nlohmann::basic_json<std::map,std::vector,std::basic_string<char,std::char_traits<char>,analytics_send_event_internal(char const*,NSObject  {objcproto13OS_xpc_object}* {ns_returns_retained}({block_pointer})(void),XPCMessagePriority,EventPayloadFormat,NSObject  {objcproto13OS_xpc_object}*)::$_0<char>>,BOOL,long long,unsigned long long,double,analytics_send_event_internal(char const*,NSObject  {objcproto13OS_xpc_object}* {ns_returns_retained}({block_pointer})(void),XPCMessagePriority,EventPayloadFormat,NSObject  {objcproto13OS_xpc_object}*)::$_0,std::allocator<EventPayloadFormat>::adl_serializer,std::map<unsigned char,analytics_send_event_internal(char const*,NSObject  {objcproto13OS_xpc_object}* {ns_returns_retained}({block_pointer})(void),XPCMessagePriority,EventPayloadFormat,NSObject  {objcproto13OS_xpc_object}*)::$_0<unsigned char>>> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void applesauce::xpc::object::to_debug_string(applesauce::xpc::object *this@<X0>, _BYTE *a2@<X8>)
{
  v3 = MEMORY[0x1B2704820](*this);
  memset(a2, 170, 24);
  std::string::basic_string[abi:ne200100]<0>(a2, v3);

  free(v3);
}

void sub_1AE570674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, uint64_t a23, void *a24, void *a25, uint64_t a26)
{
  __cxa_free_exception(v28);

  _Unwind_Resume(a1);
}

void applesauce::xpc::array::create(xpc_object_t *a1@<X8>)
{
  v3 = xpc_array_create(0, 0);
  v6 = v3;
  if (!v3)
  {
    v3 = xpc_null_create();
  }

  v4 = v3;
  v5 = v4;
  *a1 = v4;
  if (!v4 || MEMORY[0x1B2704910](v4) != MEMORY[0x1E69E9E50])
  {
    *a1 = xpc_null_create();
  }
}

void sub_1AE570A50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE570E6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__shared_ptr_emplace<anonymous namespace::EventObserverImpl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F241FD28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B2703F50);
}

void anonymous namespace::EventObserverImpl::~EventObserverImpl(id *this)
{
  objc_destroyWeak(this + 2);
  objc_destroyWeak(this + 1);

  CoreAnalytics::EventObserver::~EventObserver(this);
}

{

  objc_destroyWeak(this + 2);
  objc_destroyWeak(this + 1);
  CoreAnalytics::EventObserver::~EventObserver(this);

  JUMPOUT(0x1B2703F50);
}

void anonymous namespace::EventObserverImpl::notifyMessageEmitted(uint64_t a1)
{
  __p[3] = *MEMORY[0x1E69E9840];
  if (objc_loadWeakRetained((a1 + 16)))
  {
    objc_loadWeakRetained((a1 + 8));
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::dump(__p);
  }

  v2 = *MEMORY[0x1E69E9840];
}

void sub_1AE571220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id makeNSObjectFromJson(unsigned __int8 *a1)
{
  v64 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  if (v2 == 6)
  {
    v5 = MEMORY[0x1E696AD98];
    __p.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
    nlohmann::detail::get_arithmetic_value<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,unsigned long long,0>(a1, &__p);
    v4 = [v5 numberWithUnsignedLongLong:__p.__r_.__value_.__r.__words[0]];
    goto LABEL_7;
  }

  if (v2 == 4)
  {
    v3 = MEMORY[0x1E696AD98];
    __p.__r_.__value_.__s.__data_[0] = -86;
    nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(a1, &__p);
    v4 = [v3 numberWithBool:__p.__r_.__value_.__s.__data_[0]];
LABEL_7:
    v7 = v4;
    goto LABEL_8;
  }

  if ((v2 - 5) <= 1)
  {
    v6 = MEMORY[0x1E696AD98];
    __p.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
    nlohmann::detail::get_arithmetic_value<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,long long,0>(a1, &__p);
    v4 = [v6 numberWithLongLong:__p.__r_.__value_.__r.__words[0]];
    goto LABEL_7;
  }

  v7 = 0;
  if (*a1 <= 1u)
  {
    if (!*a1)
    {
      v4 = [MEMORY[0x1E695DFB0] null];
      goto LABEL_7;
    }

    v56 = 0;
    v57 = 0;
    v58 = 0;
    v54 = 0;
    v55 = 0;
    v53 = 0;
    std::vector<NSString * {__strong}>::reserve(&v56, *(*(a1 + 1) + 16));
    v11 = *a1;
    if (*a1)
    {
      if (v11 == 1)
      {
        v11 = *(*(a1 + 1) + 16);
      }

      else if (v11 == 2)
      {
        v11 = (*(*(a1 + 1) + 8) - **(a1 + 1)) >> 4;
      }

      else
      {
        v11 = 1;
      }
    }

    std::vector<NSObject * {__strong}>::reserve(&v53, v11);
    v52 = a1;
    nlohmann::detail::iteration_proxy<nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>>::begin(&v52, &__p);
    nlohmann::detail::iteration_proxy<nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>>::end(&v52, v41);
    while (!nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator==(&__p, v41))
    {
      *&v20 = 0xAAAAAAAAAAAAAAAALL;
      *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&v40[16] = v20;
      *v40 = v20;
      v39 = v20;
      v37 = __p;
      *v38 = v46;
      *&v38[16] = v47;
      if (SHIBYTE(v49) < 0)
      {
        std::string::__init_copy_ctor_external(&v39, v48, *(&v48 + 1));
      }

      else
      {
        v39 = v48;
        *v40 = v49;
      }

      if (SHIBYTE(v51) < 0)
      {
        std::string::__init_copy_ctor_external(&v40[8], v50, *(&v50 + 1));
      }

      else
      {
        *&v40[8] = v50;
        *&v40[24] = v51;
      }

      v21 = MEMORY[0x1E696AEC0];
      v22 = nlohmann::detail::iteration_proxy_value<nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>>::key(&v37);
      if (*(v22 + 23) >= 0)
      {
        v23 = v22;
      }

      else
      {
        v23 = *v22;
      }

      v24 = [v21 stringWithUTF8String:{v23, v37.__r_.__value_.__r.__words[0], *&v37.__r_.__value_.__r.__words[1], *v38}];
      v25 = v57;
      if (v57 >= v58)
      {
        v27 = (v57 - v56) >> 3;
        if ((v27 + 1) >> 61)
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
        }

        v28 = (v58 - v56) >> 2;
        if (v28 <= v27 + 1)
        {
          v28 = v27 + 1;
        }

        if (v58 - v56 >= 0x7FFFFFFFFFFFFFF8)
        {
          v29 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v29 = v28;
        }

        v63 = &v56;
        if (v29)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<NSString * {__strong}>>(&v56, v29);
        }

        v59 = 0;
        v60 = (8 * v27);
        v62 = 0;
        *v60 = v24;
        v61 = 8 * v27 + 8;
        std::vector<NSString * {__strong}>::__swap_out_circular_buffer(&v56, &v59);
        v26 = v57;
        std::__split_buffer<NSString * {__strong}>::~__split_buffer(&v59);
      }

      else
      {
        *v57 = v24;
        v26 = v25 + 1;
      }

      v57 = v26;
      v30 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(&v37);
      v31 = makeNSObjectFromJson(v30);
      v32 = v54;
      if (v54 >= v55)
      {
        v34 = (v54 - v53) >> 3;
        if ((v34 + 1) >> 61)
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
        }

        v35 = (v55 - v53) >> 2;
        if (v35 <= v34 + 1)
        {
          v35 = v34 + 1;
        }

        if (v55 - v53 >= 0x7FFFFFFFFFFFFFF8)
        {
          v36 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v36 = v35;
        }

        v63 = &v53;
        if (v36)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<NSString * {__strong}>>(&v53, v36);
        }

        v59 = 0;
        v60 = (8 * v34);
        v62 = 0;
        *v60 = v31;
        v61 = 8 * v34 + 8;
        std::vector<NSString * {__strong}>::__swap_out_circular_buffer(&v53, &v59);
        v33 = v54;
        std::__split_buffer<NSString * {__strong}>::~__split_buffer(&v59);
      }

      else
      {
        *v54 = v31;
        v33 = v32 + 1;
      }

      v54 = v33;
      if ((v40[31] & 0x80000000) != 0)
      {
        operator delete(*&v40[8]);
      }

      if ((v40[7] & 0x80000000) != 0)
      {
        operator delete(v39);
      }

      nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator++(&__p);
      *&v47 = v47 + 1;
    }

    if (v44 < 0)
    {
      operator delete(v43);
    }

    if (v42 < 0)
    {
      operator delete(v41[7]);
    }

    if (SHIBYTE(v51) < 0)
    {
      operator delete(v50);
    }

    if (SHIBYTE(v49) < 0)
    {
      operator delete(v48);
    }

    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37.__r_.__value_.__r.__words[0] forKeys:*&v37.__r_.__value_.__r.__words[1] count:{*v38, *&v38[8], *&v38[24]}];
    __p.__r_.__value_.__r.__words[0] = &v53;
    std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&__p);
    __p.__r_.__value_.__r.__words[0] = &v56;
    std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&__p);
  }

  else
  {
    switch(v2)
    {
      case 2:
        v60 = 0;
        v61 = 0;
        v59 = 0;
        std::vector<NSObject * {__strong}>::reserve(&v59, (*(*(a1 + 1) + 8) - **(a1 + 1)) >> 4);
        v41[0] = a1;
        memset(&v41[1], 0, 24);
        v41[4] = 0x8000000000000000;
        nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::set_begin(v41);
        v37.__r_.__value_.__r.__words[0] = a1;
        *&v37.__r_.__value_.__r.__words[1] = 0uLL;
        *v38 = 0;
        *&v38[8] = 0x8000000000000000;
        nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::set_end(&v37);
        while (!nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator==(v41, &v37))
        {
          v12 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(v41);
          v13 = makeNSObjectFromJson(v12);
          v14 = v60;
          if (v60 >= v61)
          {
            v16 = (v60 - v59) >> 3;
            if ((v16 + 1) >> 61)
            {
              std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
            }

            v17 = (v61 - v59) >> 2;
            if (v17 <= v16 + 1)
            {
              v17 = v16 + 1;
            }

            if (v61 - v59 >= 0x7FFFFFFFFFFFFFF8)
            {
              v18 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v18 = v17;
            }

            *(&v46 + 1) = &v59;
            if (v18)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<NSString * {__strong}>>(&v59, v18);
            }

            __p.__r_.__value_.__r.__words[0] = 0;
            __p.__r_.__value_.__l.__size_ = 8 * v16;
            *&v46 = 0;
            *__p.__r_.__value_.__l.__size_ = v13;
            __p.__r_.__value_.__r.__words[2] = 8 * v16 + 8;
            std::vector<NSString * {__strong}>::__swap_out_circular_buffer(&v59, &__p);
            v15 = v60;
            std::__split_buffer<NSString * {__strong}>::~__split_buffer(&__p);
          }

          else
          {
            *v60 = v13;
            v15 = v14 + 1;
          }

          v60 = v15;
          nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator++(v41);
        }

        v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
        __p.__r_.__value_.__r.__words[0] = &v59;
        std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&__p);
        break;
      case 3:
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::string,std::string,0>(a1, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:p_p];
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        break;
      case 7:
        v10 = MEMORY[0x1E696AD98];
        __p.__r_.__value_.__r.__words[0] = -1;
        nlohmann::detail::get_arithmetic_value<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,double,0>(a1, &__p);
        v4 = [v10 numberWithDouble:*&__p.__r_.__value_.__l.__data_];
        goto LABEL_7;
    }
  }

LABEL_8:
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

void sub_1AE571924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a43 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<NSString * {__strong}>::reserve(void *result, unint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      v4 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<NSString * {__strong}>>(result, a2);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *std::vector<NSObject * {__strong}>::reserve(void *result, unint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      v4 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<NSString * {__strong}>>(result, a2);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t nlohmann::detail::iteration_proxy<nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>>::begin@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7[0] = v4;
  v7[1] = v4;
  v8 = 0xAAAAAAAAAAAAAAAALL;
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::iter_impl(v7, v3);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::set_begin(v7);
  result = nlohmann::detail::iteration_proxy_value<nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>>::iteration_proxy_value(a2, v7);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t nlohmann::detail::iteration_proxy<nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>>::end@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7[0] = v4;
  v7[1] = v4;
  v8 = 0xAAAAAAAAAAAAAAAALL;
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::iter_impl(v7, v3);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::set_end(v7);
  result = nlohmann::detail::iteration_proxy_value<nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>>::iteration_proxy_value(a2, v7);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t nlohmann::detail::iteration_proxy_value<nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>>::key(unsigned __int8 **a1)
{
  if (!*a1)
  {
    nlohmann::detail::iteration_proxy_value<nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>>::key();
  }

  v2 = **a1;
  if (v2 == 1)
  {

    return nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::key(a1);
  }

  else if (v2 == 2)
  {
    v3 = a1[5];
    if (v3 != a1[6])
    {
      nlohmann::detail::int_to_string<std::string>((a1 + 7), v3);
      a1[6] = a1[5];
    }

    return (a1 + 7);
  }

  else
  {
    return (a1 + 10);
  }
}

uint64_t nlohmann::detail::iteration_proxy_value<nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>>::~iteration_proxy_value(uint64_t a1)
{
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  return a1;
}

void ___ZL34makeJsonFromNSObjectWithDepthCountP8NSObjecth_block_invoke_2(uint64_t a1, NSObject *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  makeJsonFromNSObjectWithDepthCount(&v6, a2, *(a1 + 40) + 1);
  v3 = *(v2 + 8);
  if (v3 >= *(v2 + 16))
  {
    v4 = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(v2, &v6);
  }

  else
  {
    *v3 = v6;
    *(v3 + 8) = v7[0];
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v6);
    LOBYTE(v6) = 0;
    v7[0] = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v3);
    v4 = v3 + 16;
  }

  *(v2 + 8) = v4;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v6);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v7, v6);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1AE571E68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(va);
  _Unwind_Resume(a1);
}

unsigned __int8 **nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::set_begin(unsigned __int8 **result)
{
  v1 = *result;
  if (!*result)
  {
    __assert_rtn("set_begin", "iter_impl.hpp", 174, "m_object != nullptr");
  }

  v2 = *v1;
  if (*v1)
  {
    if (v2 == 2)
    {
      result[2] = **(v1 + 1);
    }

    else if (v2 == 1)
    {
      result[1] = **(v1 + 1);
    }

    else
    {
      result[4] = 0;
    }
  }

  else
  {
    result[4] = 1;
  }

  return result;
}

void *nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::iter_impl(void *result, uint64_t a2)
{
  *result = a2;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  result[4] = 0x8000000000000000;
  if (!a2)
  {
    __assert_rtn("iter_impl", "iter_impl.hpp", 88, "m_object != nullptr");
  }

  return result;
}

unsigned __int8 **nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::set_end(unsigned __int8 **result)
{
  v1 = *result;
  if (!*result)
  {
    __assert_rtn("set_end", "iter_impl.hpp", 211, "m_object != nullptr");
  }

  v2 = *v1;
  if (v2 == 2)
  {
    result[2] = *(*(v1 + 1) + 8);
  }

  else if (v2 == 1)
  {
    result[1] = (*(v1 + 1) + 8);
  }

  else
  {
    result[4] = 1;
  }

  return result;
}

unsigned __int8 *nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(unsigned __int8 *result, _BYTE *a2)
{
  v2 = result;
  v11 = *MEMORY[0x1E69E9840];
  if (*result != 4)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v5 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(v2);
    std::string::basic_string[abi:ne200100]<0>(&v8, v5);
    v6 = std::string::insert(&v8, 0, "type must be BOOLean, but is ");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v10 = v6->__r_.__value_.__r.__words[2];
    v9 = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::type_error::create(302, &v9, exception);
  }

  *a2 = result[8];
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1AE5720D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

unsigned __int8 *nlohmann::detail::get_arithmetic_value<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,unsigned long long,0>(unsigned __int8 *result, unint64_t *a2)
{
  v2 = result;
  v13 = *MEMORY[0x1E69E9840];
  v3 = *result;
  if (v3 != 5)
  {
    if (v3 == 7)
    {
      v4 = *(result + 1);
      goto LABEL_6;
    }

    if (v3 != 6)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      v7 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(v2);
      std::string::basic_string[abi:ne200100]<0>(&v10, v7);
      v8 = std::string::insert(&v10, 0, "type must be number, but is ");
      v9 = *&v8->__r_.__value_.__l.__data_;
      v12 = v8->__r_.__value_.__r.__words[2];
      v11 = v9;
      v8->__r_.__value_.__l.__size_ = 0;
      v8->__r_.__value_.__r.__words[2] = 0;
      v8->__r_.__value_.__r.__words[0] = 0;
      nlohmann::detail::type_error::create(302, &v11, exception);
    }
  }

  v4 = *(result + 1);
LABEL_6:
  *a2 = v4;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1AE57224C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

unsigned __int8 *nlohmann::detail::get_arithmetic_value<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,long long,0>(unsigned __int8 *result, uint64_t *a2)
{
  v2 = result;
  v13 = *MEMORY[0x1E69E9840];
  v3 = *result;
  if (v3 != 5)
  {
    if (v3 == 7)
    {
      v4 = *(result + 1);
      goto LABEL_6;
    }

    if (v3 != 6)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      v7 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(v2);
      std::string::basic_string[abi:ne200100]<0>(&v10, v7);
      v8 = std::string::insert(&v10, 0, "type must be number, but is ");
      v9 = *&v8->__r_.__value_.__l.__data_;
      v12 = v8->__r_.__value_.__r.__words[2];
      v11 = v9;
      v8->__r_.__value_.__l.__size_ = 0;
      v8->__r_.__value_.__r.__words[2] = 0;
      v8->__r_.__value_.__r.__words[0] = 0;
      nlohmann::detail::type_error::create(302, &v11, exception);
    }
  }

  v4 = *(result + 1);
LABEL_6:
  *a2 = v4;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1AE5723C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

unsigned __int8 *nlohmann::detail::get_arithmetic_value<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,double,0>(unsigned __int8 *result, double *a2)
{
  v2 = result;
  v13 = *MEMORY[0x1E69E9840];
  v3 = *result;
  switch(v3)
  {
    case 5:
      v4 = *(result + 1);
      break;
    case 7:
      v4 = *(result + 1);
      break;
    case 6:
      v4 = *(result + 1);
      break;
    default:
      exception = __cxa_allocate_exception(0x20uLL);
      v7 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(v2);
      std::string::basic_string[abi:ne200100]<0>(&v10, v7);
      v8 = std::string::insert(&v10, 0, "type must be number, but is ");
      v9 = *&v8->__r_.__value_.__l.__data_;
      v12 = v8->__r_.__value_.__r.__words[2];
      v11 = v9;
      v8->__r_.__value_.__l.__size_ = 0;
      v8->__r_.__value_.__r.__words[2] = 0;
      v8->__r_.__value_.__r.__words[0] = 0;
      nlohmann::detail::type_error::create(302, &v11, exception);
  }

  *a2 = v4;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1AE572540(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}