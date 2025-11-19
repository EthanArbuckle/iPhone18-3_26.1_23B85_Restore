void sub_19D1BEE44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::deque<int>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x400)
  {
    a2 = 1;
  }

  if (v2 < 0x800)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 1024;
  }

  return v4 ^ 1u;
}

const void **std::deque<int>::__add_front_capacity(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v1) << 7) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) < 0x400)
  {
    v7 = *(a1 + 24);
    v8 = *a1;
    v9 = &v7[-*a1];
    if (v3 < v9)
    {
      if (v1 != v8)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    v11[4] = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<char *>>(a1, v10);
  }

  *(a1 + 32) = v5 + 1024;
  v11[0] = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return std::__split_buffer<char *>::emplace_front<char *>(a1, v11);
}

void sub_19D1BF104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t hasRequiredKeys(_BOOL8 *a1)
{
  __p.length = *MEMORY[0x1E69E9840];
  *&__p.isa = xmmword_1E7624AF8;
  __p.data = @"kCoreLMLocaleKey";
  v13[0] = &__p;
  v13[1] = 3;
  CFArray = applesauce::CF::details::make_CFArrayRef<__CFString const*>(v13);
  v3 = CFArray;
  v13[2] = CFArray;
  if (CFArray)
  {
    Count = CFArrayGetCount(CFArray);
    v5 = CFArrayGetCount(v3);
    if (Count)
    {
      v6 = v5;
      v7 = 0;
      while (v6 != v7)
      {
        applesauce::CF::details::at_to<std::string>(v3, v7, &__p);
        if (!*a1)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        v8 = applesauce::CF::details::has_key<std::string &>(*a1, &__p);
        if (SHIBYTE(__p.data) < 0)
        {
          operator delete(__p.isa);
        }

        if (!v8)
        {
          v9 = 0;
          goto LABEL_13;
        }

        if (Count == ++v7)
        {
          break;
        }
      }
    }

    v9 = 1;
LABEL_13:
    CFRelease(v3);
  }

  else
  {
    v9 = 1;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

void sub_19D1BF2B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *applesauce::CF::DictionaryRef::operator->(void *result)
{
  if (!*result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

void getLocaleAsString(const __CFDictionary *a1@<X0>, uint64_t a2@<X8>)
{
  Value = CFDictionaryGetValue(a1, @"kCoreLMLocaleKey");
  if (!Value)
  {
LABEL_12:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    return;
  }

  v5 = Value;
  v6 = CFGetTypeID(Value);
  if (v6 == CFStringGetTypeID())
  {

    applesauce::CF::details::find_at_key<std::string,__CFString const* const&>(a1, &kCoreLMLocaleKey, a2);
    return;
  }

  v7 = CFGetTypeID(v5);
  if (v7 != CFLocaleGetTypeID())
  {
    v9 = _nlpDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      getLocaleAsString();
    }

    goto LABEL_12;
  }

  v8 = MEMORY[0x19EAF8290](v5);
  applesauce::CF::StringRef::from_get(v8, &cf);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::convert_to<std::string,0>(cf, a2);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_19D1BF4BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::StringRef::~StringRef(&a10);
  _Unwind_Resume(a1);
}

const void *applesauce::CF::StringRef::from_get@<X0>(const void *this@<X0>, void *a2@<X8>)
{
  if (this)
  {
    v4 = this;
    CFRetain(this);
    *a2 = v4;
    v5 = CFGetTypeID(v4);
    this = CFStringGetTypeID();
    if (v5 != this)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    *a2 = 0;
  }

  return this;
}

void sub_19D1BF574(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

const __CFString *copyCFLocale(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"kCoreLMLocaleKey");
  v3 = Value;
  if (!Value)
  {
    return v3;
  }

  v4 = CFGetTypeID(Value);
  if (v4 == CFStringGetTypeID())
  {
    applesauce::CF::details::find_at_key<std::string,__CFString const* const&>(a1, &kCoreLMLocaleKey, &__p);
    v3 = CFLocaleCreate(*MEMORY[0x1E695E480], v3);
    if (v9 < 0)
    {
      operator delete(__p);
    }

    return v3;
  }

  v5 = CFGetTypeID(v3);
  if (v5 != CFLocaleGetTypeID())
  {
    v7 = _nlpDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      getLocaleAsString();
    }

    return 0;
  }

  return CFRetain(v3);
}

void sub_19D1BF6A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void getModelNameAsString(const __CFDictionary **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (!v3)
  {
    goto LABEL_28;
  }

  if ((applesauce::CF::details::has_key<__CFString const* const&>(v3, &kCoreLMArchitectureKey) & 1) == 0)
  {
LABEL_5:
    v6 = "model.dat";
LABEL_6:

    std::string::basic_string[abi:ne200100]<0>(a2, v6);
    return;
  }

  if (!*a1)
  {
    goto LABEL_28;
  }

  v5 = applesauce::CF::details::find_at_key<__CFString const*,__CFString const* const&>(*a1, &kCoreLMArchitectureKey);
  if (CFEqual(v5, @"kCoreLMArchitectureLSTM"))
  {
    goto LABEL_5;
  }

  if (!CFEqual(v5, @"kCoreLMArchitectureTransformer"))
  {
    v9 = _nlpDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      getModelNameAsString();
    }

    goto LABEL_18;
  }

  if (!*a1)
  {
    goto LABEL_28;
  }

  v7 = applesauce::CF::details::has_key<__CFString const* const&>(*a1, kCoreLMNetworkNameKey);
  v8 = *a1;
  if (!v7)
  {
    if (v8)
    {
      if (!applesauce::CF::details::has_key<__CFString const* const&>(v8, &kCoreLMEngineKey))
      {
LABEL_23:
        v6 = "unilm_joint_cpu.espresso.net";
        goto LABEL_6;
      }

      if (*a1)
      {
        v10 = applesauce::CF::details::find_at_key<__CFString const*,__CFString const* const&>(*a1, &kCoreLMEngineKey);
        if (CFEqual(v10, @"kCoreLMEngineCPU"))
        {
          goto LABEL_23;
        }

        if (CFEqual(v10, @"kCoreLMEngineANE"))
        {
          v6 = "unilm_joint_ane.espresso.net";
          goto LABEL_6;
        }

        v11 = _nlpDefaultLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          getModelNameAsString();
        }

LABEL_18:
        *a2 = 0;
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        return;
      }
    }

LABEL_28:
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (!v8)
  {
    goto LABEL_28;
  }

  applesauce::CF::details::find_at_key<std::string,__CFString const* const&>(v8, kCoreLMNetworkNameKey, a2);
}

void copyModelInfo(uint64_t a1, uint64_t a2)
{
  v74 = *MEMORY[0x1E69E9840];
  v71[0] = 0;
  v71[1] = 0;
  v70 = v71;
  std::string::basic_string[abi:ne200100]<0>(&__p, "modelInfo.plist");
  hasFile = corelm::util::Directory::hasFile(a2, &__p);
  v5 = hasFile;
  if ((v68.__r_.__value_.__s.__data_[15] & 0x80000000) == 0)
  {
    if (hasFile)
    {
      goto LABEL_3;
    }

LABEL_6:
    std::runtime_error::runtime_error(&v55, "modelInfo.plist not found");
    std::runtime_error::~runtime_error(&v55);
    v7 = 0;
    goto LABEL_103;
  }

  operator delete(__p);
  if (!v5)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = MEMORY[0x1E696AEC0];
  std::string::basic_string[abi:ne200100]<0>(v65, "modelInfo.plist");
  corelm::util::Directory::getFilePath(a2, v65, &__p);
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v69, v68.__r_.__value_.__l.__data_, v68.__r_.__value_.__l.__size_);
  }

  else
  {
    v69 = v68;
  }

  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v69;
  }

  else
  {
    v8 = v69.__r_.__value_.__r.__words[0];
  }

  v9 = [v6 stringWithUTF8String:v8];
  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  __p = &unk_1F10AD1D0;
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  if (v66 < 0)
  {
    operator delete(v65[0]);
  }

  v10 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v9];
  if (([objc_msgSend(v10 "allKeys")] & 1) == 0)
  {
    std::runtime_error::runtime_error(&v64, "modelInfo.plist should have keys MaximumSequenceLength");
    std::runtime_error::~runtime_error(&v64);
  }

  v49 = v10;
  if ([objc_msgSend(v10 "allKeys")])
  {
    v52 = [v10 objectForKeyedSubscript:@"SupportedBatchSizesAndSequenceLengthsForLM"];
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    obj = [v52 allKeys];
    v11 = [obj countByEnumeratingWithState:&v60 objects:v73 count:16];
    if (v11)
    {
      v51 = *v61;
      do
      {
        v12 = 0;
        v53 = v11;
        do
        {
          if (*v61 != v51)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v60 + 1) + 8 * v12);
          v69.__r_.__value_.__r.__words[0] = [v13 intValue];
          __p = &v69;
          v14 = std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&v70, &v69);
          v54 = v12;
          v16 = v14 + 5;
          v15 = v14[5];
          if (v15)
          {
            v14[6] = v15;
            operator delete(v15);
            *v16 = 0;
            v16[1] = 0;
            v16[2] = 0;
          }

          v16[1] = 0;
          v16[2] = 0;
          *v16 = 0;
          v56 = 0u;
          v57 = 0u;
          v58 = 0u;
          v59 = 0u;
          v17 = [v52 objectForKey:v13];
          v18 = [v17 countByEnumeratingWithState:&v56 objects:v72 count:16];
          if (v18)
          {
            v19 = *v57;
            do
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v57 != v19)
                {
                  objc_enumerationMutation(v17);
                }

                v21 = *(*(&v56 + 1) + 8 * i);
                __p = &v69;
                v22 = std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&v70, &v69);
                v23 = [v21 intValue];
                v25 = v22[6];
                v24 = v22[7];
                if (v25 >= v24)
                {
                  v27 = v22[5];
                  v28 = v25 - v27;
                  v29 = (v25 - v27) >> 3;
                  v30 = v29 + 1;
                  if ((v29 + 1) >> 61)
                  {
                    std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
                  }

                  v31 = v24 - v27;
                  if (v31 >> 2 > v30)
                  {
                    v30 = v31 >> 2;
                  }

                  v32 = v31 >= 0x7FFFFFFFFFFFFFF8;
                  v33 = 0x1FFFFFFFFFFFFFFFLL;
                  if (!v32)
                  {
                    v33 = v30;
                  }

                  if (v33)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>((v22 + 5), v33);
                  }

                  v34 = (v25 - v27) >> 3;
                  v35 = (8 * v29);
                  v36 = (8 * v29 - 8 * v34);
                  *v35 = v23;
                  v26 = v35 + 1;
                  memcpy(v36, v27, v28);
                  v37 = v22[5];
                  v22[5] = v36;
                  v22[6] = v26;
                  v22[7] = 0;
                  if (v37)
                  {
                    operator delete(v37);
                  }
                }

                else
                {
                  *v25 = v23;
                  v26 = v25 + 8;
                }

                v22[6] = v26;
              }

              v18 = [v17 countByEnumeratingWithState:&v56 objects:v72 count:16];
            }

            while (v18);
          }

          v12 = v54 + 1;
        }

        while (v54 + 1 != v53);
        v11 = [obj countByEnumeratingWithState:&v60 objects:v73 count:16];
      }

      while (v11);
    }
  }

  if (![objc_msgSend(v49 "allKeys")])
  {
    goto LABEL_102;
  }

  v38 = [objc_msgSend(v49 objectForKeyedSubscript:{@"PreProcessor", "objectForKeyedSubscript:", @"Name"}];
  std::string::basic_string[abi:ne200100]<0>(&__p, [v38 UTF8String]);
  if ((v68.__r_.__value_.__s.__data_[15] & 0x80000000) == 0)
  {
    if (v68.__r_.__value_.__s.__data_[15] != 7)
    {
      goto LABEL_66;
    }

    if (__p != 1953723747 || *(&__p + 3) != 829255540)
    {
      goto LABEL_66;
    }

LABEL_64:
    operator new();
  }

  if (v68.__r_.__value_.__r.__words[0] != 7)
  {
    operator delete(__p);
    goto LABEL_66;
  }

  v41 = *__p != 1953723747 || *(__p + 3) != 829255540;
  operator delete(__p);
  if (!v41)
  {
    goto LABEL_64;
  }

LABEL_66:
  std::string::basic_string[abi:ne200100]<0>(&__p, [v38 UTF8String]);
  if ((v68.__r_.__value_.__s.__data_[15] & 0x80000000) == 0)
  {
    if (v68.__r_.__value_.__s.__data_[15] != 7)
    {
      goto LABEL_84;
    }

    if (__p != 1953723747 || *(&__p + 3) != 846032756)
    {
      goto LABEL_84;
    }

LABEL_82:
    operator new();
  }

  if (v68.__r_.__value_.__r.__words[0] != 7)
  {
    operator delete(__p);
    goto LABEL_84;
  }

  v44 = *__p != 1953723747 || *(__p + 3) != 846032756;
  operator delete(__p);
  if (!v44)
  {
    goto LABEL_82;
  }

LABEL_84:
  std::string::basic_string[abi:ne200100]<0>(&__p, [v38 UTF8String]);
  if ((v68.__r_.__value_.__s.__data_[15] & 0x80000000) == 0)
  {
    if (v68.__r_.__value_.__s.__data_[15] != 10)
    {
      goto LABEL_102;
    }

    if (__p != 0x41326D6F74737563 || LOWORD(v68.__r_.__value_.__l.__data_) != 21075)
    {
      goto LABEL_102;
    }

LABEL_100:
    operator new();
  }

  if (v68.__r_.__value_.__r.__words[0] == 10)
  {
    v47 = *__p != 0x41326D6F74737563 || *(__p + 4) != 21075;
    operator delete(__p);
    if (v47)
    {
      goto LABEL_102;
    }

    goto LABEL_100;
  }

  operator delete(__p);
LABEL_102:
  v7 = [objc_msgSend(v49 objectForKeyedSubscript:{@"MaximumSequenceLength", "intValue"}];
LABEL_103:
  if ((a1 + 32) != &v70)
  {
    std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__tree_node<std::__value_type<unsigned long,std::vector<unsigned long>>,void *> *,long>>((a1 + 32), v70, v71);
  }

  *(a1 + 24) = v7;
  std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::destroy(&v70, v71[0]);
  v48 = *MEMORY[0x1E69E9840];
}

void sub_19D1C01A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54)
{
  if (a20)
  {
    copyModelInfo(a20);
  }

  std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::destroy(&a53, a54);
  _Unwind_Resume(a1);
}

BOOL corelm::util::Directory::hasFile(uint64_t a1, uint64_t a2)
{
  corelm::util::Directory::getFilePath(a1, a2, v4);
  v2 = corelm::util::Path::exists(v4);
  v4[0] = &unk_1F10AD1D0;
  if (v5 < 0)
  {
    operator delete(v4[1]);
  }

  return v2;
}

void sub_19D1C03C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void corelm::util::Directory::getFilePath(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    __p = *(a1 + 8);
  }

  v5 = std::string::append(&__p, "/");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = *(a2 + 23);
  if (v7 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (v7 >= 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    v9 = *(a2 + 8);
  }

  v10 = std::string::append(&v15, v8, v9);
  v12 = v10->__r_.__value_.__r.__words[0];
  size = v10->__r_.__value_.__l.__size_;
  v16[0] = v10->__r_.__value_.__r.__words[2];
  *(v16 + 3) = *(&v10->__r_.__value_.__r.__words[2] + 3);
  v13 = SHIBYTE(v10->__r_.__value_.__r.__words[2]);
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  *a3 = &unk_1F10AD1D0;
  if (v13 < 0)
  {
    std::string::__init_copy_ctor_external((a3 + 8), v12, size);
    operator delete(v12);
  }

  else
  {
    *(a3 + 8) = v12;
    *(a3 + 16) = size;
    *(a3 + 24) = v16[0];
    *(a3 + 27) = *(v16 + 3);
    *(a3 + 31) = v13;
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_19D1C052C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  operator delete(v21);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

void CoreLMCreate(const void *a1)
{
  v86 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(&v83, "Unknown runtime error.");
  applesauce::CF::DictionaryRef::from_get(a1, &v82);
  v2 = v82;
  if (v82)
  {
    CFRetain(v82);
  }

  v81 = v2;
  v3 = hasRequiredKeys(&v81);
  if (v81)
  {
    CFRelease(v81);
  }

  if ((v3 & 1) == 0)
  {
    MEMORY[0x19EAF8860](&v83, "Creation options does not contain all required keys (kCoreLMVocabularyTypeKey, kCoreLMArchitectureKey, kCoreLMLocaleKey).");
    v29 = _nlpDefaultLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      CoreLMCreate_cold_1(&v83);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, &v83);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  memset(&v80, 0, sizeof(v80));
  v79 = &unk_1F10AD1F8;
  memset(&v78, 0, sizeof(v78));
  std::string::basic_string[abi:ne200100]<0>(v76, "CPU");
  if (!v82)
  {
    v31 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v31, "Could not construct");
    __cxa_throw(v31, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (applesauce::CF::details::has_key<__CFString const* const&>(v82, &kCoreLMURLKey))
  {
    if (!v82)
    {
      v34 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v34, "Could not construct");
      __cxa_throw(v34, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    applesauce::CF::details::find_at_key<applesauce::CF::URLRef,__CFString const* const&>(v82, &kCoreLMURLKey, v68);
    if (!v68[0])
    {
      v36 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v36, "Could not construct");
      __cxa_throw(v36, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    applesauce::CF::get_filesystem_path(v68[0], &v84);
    if (!v84.__r_.__value_.__r.__words[0])
    {
      v37 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v37, "Could not construct");
      __cxa_throw(v37, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    applesauce::CF::convert_to<std::string,0>(v84.__r_.__value_.__l.__data_, __p);
    corelm::util::Directory::Directory<std::string>(v85, __p);
    std::string::operator=(&v80, &v85[8]);
    *v85 = &unk_1F10AD1D0;
    if ((v85[31] & 0x80000000) != 0)
    {
      operator delete(*&v85[8]);
    }

    if (v61 < 0)
    {
      operator delete(__p[0]);
    }

    if (v84.__r_.__value_.__r.__words[0])
    {
      CFRelease(v84.__r_.__value_.__l.__data_);
    }

    v4 = v82;
    if (v82)
    {
      CFRetain(v82);
    }

    cf = v4;
    getModelNameAsString(&cf, &v73);
    corelm::util::Directory::getFilePath(&v79, &v73, v85);
    if ((v85[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v84, *&v85[8], *&v85[16]);
    }

    else
    {
      v84 = *&v85[8];
    }

    if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v78.__r_.__value_.__l.__data_);
    }

    v78 = v84;
    *(&v84.__r_.__value_.__s + 23) = 0;
    v84.__r_.__value_.__s.__data_[0] = 0;
    *v85 = &unk_1F10AD1D0;
    if ((v85[31] & 0x80000000) != 0)
    {
      operator delete(*&v85[8]);
    }

    if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v73.__r_.__value_.__l.__data_);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (!v82)
    {
      v38 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v38, "Could not construct");
      __cxa_throw(v38, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if (applesauce::CF::details::has_key<__CFString const* const&>(v82, &kCoreLMEngineKey))
    {
      if (!v82)
      {
        v45 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v45, "Could not construct");
        __cxa_throw(v45, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v11 = applesauce::CF::details::find_at_key<__CFString const*,__CFString const* const&>(v82, &kCoreLMEngineKey);
      if (!CFEqual(v11, @"kCoreLMEngineCPU") && !CFEqual(v11, @"kCoreLMEngineANE"))
      {
        v55 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v55, "Invalid Engine type. Should be either kCoreLMEngineCPU or kCoreLMEngineANE");
        __cxa_throw(v55, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      if (CFEqual(v11, @"kCoreLMEngineANE"))
      {
        MEMORY[0x19EAF8860](v76, "ANE");
      }
    }

    if (!corelm::util::Directory::exists(&v79))
    {
      if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(v85, v80.__r_.__value_.__l.__data_, v80.__r_.__value_.__l.__size_);
      }

      else
      {
        *v85 = v80;
      }

      v46 = std::string::insert(v85, 0, "Model directory does not exist: ");
      v47 = v46->__r_.__value_.__r.__words[0];
      v84.__r_.__value_.__r.__words[0] = v46->__r_.__value_.__l.__size_;
      *(v84.__r_.__value_.__r.__words + 7) = *(&v46->__r_.__value_.__r.__words[1] + 7);
      v48 = HIBYTE(v46->__r_.__value_.__r.__words[2]);
      v46->__r_.__value_.__l.__size_ = 0;
      v46->__r_.__value_.__r.__words[2] = 0;
      v46->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v83.__r_.__value_.__l.__data_);
      }

      v83.__r_.__value_.__r.__words[0] = v47;
      v83.__r_.__value_.__l.__size_ = v84.__r_.__value_.__r.__words[0];
      *(&v83.__r_.__value_.__r.__words[1] + 7) = *(v84.__r_.__value_.__r.__words + 7);
      *(&v83.__r_.__value_.__s + 23) = v48;
      if ((v85[23] & 0x80000000) != 0)
      {
        operator delete(*v85);
      }

      v49 = _nlpDefaultLog();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        CoreLMCreate_cold_4(&v83.__r_.__value_.__r.__words[2] + 7, &v83);
      }

      v50 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v50, &v83);
      __cxa_throw(v50, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if (v68[0])
    {
      CFRelease(v68[0]);
    }

    goto LABEL_124;
  }

  if (!v82)
  {
    v35 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v35, "Could not construct");
    __cxa_throw(v35, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (!applesauce::CF::details::has_key<__CFString const* const&>(v82, &kCoreLMArchitectureKey))
  {
    goto LABEL_31;
  }

  if (!v82)
  {
    v44 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v44, "Could not construct");
    __cxa_throw(v44, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v5 = applesauce::CF::details::find_at_key<__CFString const*,__CFString const* const&>(v82, &kCoreLMArchitectureKey);
  if (!CFEqual(v5, @"kCoreLMArchitectureTransformer"))
  {
LABEL_31:
    getLocaleAsString(a1, &v84);
    size = HIBYTE(v84.__r_.__value_.__r.__words[2]);
    if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v84.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      MEMORY[0x19EAF8860](&v83, "Unable to determine model locale from options");
      v39 = _nlpDefaultLog();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        CoreLMCreate_cold_3(&v83);
      }

      v40 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v40, &v83);
      __cxa_throw(v40, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    std::string::basic_string[abi:ne200100]<0>(v85, "-");
    std::string::basic_string[abi:ne200100]<0>(&v73, "_");
    corelm::util::replace(&v84, v85, &v73);
    if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v73.__r_.__value_.__l.__data_);
    }

    if ((v85[23] & 0x80000000) != 0)
    {
      operator delete(*v85);
    }

    if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v72, v84.__r_.__value_.__l.__data_, v84.__r_.__value_.__l.__size_);
    }

    else
    {
      v72 = v84;
    }

    std::string::basic_string[abi:ne200100]<0>(v70, "_");
    corelm::util::stripSplit(&v72, v70, v85);
    if (*(*v85 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v73, **v85, *(*v85 + 8));
    }

    else
    {
      v12 = **v85;
      v73.__r_.__value_.__r.__words[2] = *(*v85 + 16);
      *&v73.__r_.__value_.__l.__data_ = v12;
    }

    v68[0] = v85;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v68);
    if (v71 < 0)
    {
      operator delete(v70[0]);
    }

    if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v72.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(v68, "/System/Library/PrivateFrameworks/CVNLP.framework/Models/");
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v68, &v73.__r_.__value_.__l.__data_, v66);
    corelm::util::Directory::Directory<std::string>(v85, v66);
    std::string::operator=(&v80, &v85[8]);
    *v85 = &unk_1F10AD1D0;
    if ((v85[31] & 0x80000000) != 0)
    {
      operator delete(*&v85[8]);
    }

    if (v67 < 0)
    {
      operator delete(v66[0]);
    }

    v13 = v82;
    if (v82)
    {
      CFRetain(v82);
    }

    v62 = v13;
    getModelNameAsString(&v62, v63);
    corelm::util::Directory::getFilePath(&v79, v63, v85);
    if ((v85[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v65, *&v85[8], *&v85[16]);
    }

    else
    {
      v65 = *&v85[8];
    }

    if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v78.__r_.__value_.__l.__data_);
    }

    v78 = v65;
    *(&v65.__r_.__value_.__s + 23) = 0;
    v65.__r_.__value_.__s.__data_[0] = 0;
    *v85 = &unk_1F10AD1D0;
    if ((v85[31] & 0x80000000) != 0)
    {
      operator delete(*&v85[8]);
    }

    if (v64 < 0)
    {
      operator delete(v63[0]);
    }

    if (v62)
    {
      CFRelease(v62);
    }

    if (!v82)
    {
      v41 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v41, "Could not construct");
      __cxa_throw(v41, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if (!applesauce::CF::details::has_key<__CFString const* const&>(v82, &kCoreLMEngineKey))
    {
      goto LABEL_88;
    }

    if (!v82)
    {
      v51 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v51, "Could not construct");
      __cxa_throw(v51, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v14 = applesauce::CF::details::find_at_key<__CFString const*,__CFString const* const&>(v82, &kCoreLMEngineKey);
    if (CFEqual(v14, @"kCoreLMEngineANE"))
    {
      v43 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v43, "LSTM architecture only supports CPU");
    }

    else
    {
LABEL_88:
      if (corelm::util::Directory::exists(&v79))
      {
        if (v69 < 0)
        {
          operator delete(v68[0]);
        }

        if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v73.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v84.__r_.__value_.__l.__data_);
        }

LABEL_124:
        if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v17 = &v78;
        }

        else
        {
          v17 = v78.__r_.__value_.__r.__words[0];
        }

        if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = HIBYTE(v78.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v18 = v78.__r_.__value_.__l.__size_;
        }

        v73.__r_.__value_.__r.__words[0] = CFURLCreateWithBytes(0, v17, v18, 0, 0);
        if (v73.__r_.__value_.__r.__words[0])
        {
          if ((v77 & 0x80u) == 0)
          {
            v19 = v76;
          }

          else
          {
            v19 = v76[0];
          }

          if (v19)
          {
            if ((v77 & 0x80u) == 0)
            {
              v20 = v77;
            }

            else
            {
              v20 = v76[1];
            }

            v68[0] = CFStringCreateWithBytes(0, v19, v20, 0x8000100u, 0);
            if (!v68[0])
            {
              v21 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v21, "Could not construct");
              __cxa_throw(v21, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }
          }

          else
          {
            v68[0] = 0;
          }

          applesauce::CF::TypeRef::TypeRef(v85, "MRLNeuralNetworkOptionModelURLKey");
          v22 = v73.__r_.__value_.__r.__words[0];
          if (v73.__r_.__value_.__r.__words[0])
          {
            CFRetain(v73.__r_.__value_.__l.__data_);
          }

          *&v85[8] = v22;
          applesauce::CF::TypeRef::TypeRef(&v85[16], "MRLNeuralNetworkOptionEngineKey");
          v23 = v68[0];
          if (v68[0])
          {
            CFRetain(v68[0]);
          }

          *&v85[24] = v23;
          v84.__r_.__value_.__r.__words[0] = v85;
          v84.__r_.__value_.__l.__size_ = 2;
          v24 = 0;
          v65.__r_.__value_.__r.__words[0] = applesauce::CF::details::make_CFDictionaryRef(&v84);
          while (1)
          {
            v25 = *&v85[v24 + 24];
            if (v25)
            {
              CFRelease(v25);
            }

            v26 = *&v85[v24 + 16];
            if (v26)
            {
              CFRelease(v26);
            }

            v24 -= 16;
            if (v24 == -32)
            {
              if (v82)
              {
                v27 = applesauce::CF::details::find_at_key<__CFString const*,__CFString const* const&>(v82, &kCoreLMVocabularyTypeKey);
                v28 = CFEqual(v27, @"kCoreLMVocabularyTypeFragment");
                corelm::util::Directory::Directory(&v58, &v79);
                corelm::VocabularyBuilder::makeVocabulary(&v58, 2 * (v28 != 0));
              }

              v33 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v33, "Could not construct");
              __cxa_throw(v33, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }
          }
        }

        v32 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v32, "Could not construct");
        __cxa_throw(v32, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      MEMORY[0x19EAF8860](&v83, "Requested core language model (locale, vocabulary type, architecture type) is not supported.");
      v42 = _nlpDefaultLog();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        CoreLMCreate_cold_1(&v83);
      }

      v43 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v43, &v83);
    }

    __cxa_throw(v43, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v68[0] = copyCFLocale(a1);
  CoreNLP::Resource::getAssetResource(v68[0], @"LanguageModel", @"en.lm", 1, &v65);
  if (!v65.__r_.__value_.__r.__words[0])
  {
    v52 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v52, "Unable to locate model. Should be of the format unilm_joint_ane.espresso.net or unilm_joint_cpu.espresso.net");
    __cxa_throw(v52, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CoreNLP::Resource::path(v65.__r_.__value_.__l.__data_, v6, v85);
  v7 = std::string::append(v85, "/unilm.bundle");
  v8 = v7->__r_.__value_.__r.__words[0];
  v84.__r_.__value_.__r.__words[0] = v7->__r_.__value_.__l.__size_;
  *(v84.__r_.__value_.__r.__words + 7) = *(&v7->__r_.__value_.__r.__words[1] + 7);
  v9 = HIBYTE(v7->__r_.__value_.__r.__words[2]);
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  v78.__r_.__value_.__r.__words[0] = v8;
  v78.__r_.__value_.__l.__size_ = v84.__r_.__value_.__r.__words[0];
  *(&v78.__r_.__value_.__r.__words[1] + 7) = *(v84.__r_.__value_.__r.__words + 7);
  *(&v78.__r_.__value_.__s + 23) = v9;
  if ((v85[23] & 0x80000000) != 0)
  {
    operator delete(*v85);
    if ((*(&v78.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_30;
    }
  }

  else if ((v9 & 0x80) == 0)
  {
LABEL_30:
    v75 = v78;
LABEL_97:
    corelm::util::Directory::Directory<std::string>(v85, &v75);
    std::string::operator=(&v80, &v85[8]);
    *v85 = &unk_1F10AD1D0;
    if ((v85[31] & 0x80000000) != 0)
    {
      operator delete(*&v85[8]);
    }

    if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v75.__r_.__value_.__l.__data_);
    }

    v15 = v82;
    if (v82)
    {
      CFRetain(v82);
    }

    v74 = v15;
    getModelNameAsString(&v74, &v84);
    if (v74)
    {
      CFRelease(v74);
    }

    if (!v82)
    {
      v53 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v53, "Could not construct");
      __cxa_throw(v53, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if (applesauce::CF::details::has_key<__CFString const* const&>(v82, &kCoreLMEngineKey))
    {
      if (!v82)
      {
        v56 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v56, "Could not construct");
        __cxa_throw(v56, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v16 = applesauce::CF::details::find_at_key<__CFString const*,__CFString const* const&>(v82, &kCoreLMEngineKey);
      if (!CFEqual(v16, @"kCoreLMEngineCPU") && !CFEqual(v16, @"kCoreLMEngineANE"))
      {
        v57 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v57, "Invalid Engine type. Should be either kCoreLMEngineCPU or kCoreLMEngineANE");
        __cxa_throw(v57, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      if (CFEqual(v16, @"kCoreLMEngineANE"))
      {
        MEMORY[0x19EAF8860](v76, "ANE");
      }
    }

    if (!corelm::util::Directory::hasFile(&v79, &v84))
    {
      v54 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v54, "Unable to locate espresso model inside the unilm bundle");
      __cxa_throw(v54, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    corelm::util::Directory::getFilePath(&v79, &v84, v85);
    if ((v85[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v73, *&v85[8], *&v85[16]);
    }

    else
    {
      v73 = *&v85[8];
    }

    if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v78.__r_.__value_.__l.__data_);
    }

    v78 = v73;
    *(&v73.__r_.__value_.__s + 23) = 0;
    v73.__r_.__value_.__s.__data_[0] = 0;
    *v85 = &unk_1F10AD1D0;
    if ((v85[31] & 0x80000000) != 0)
    {
      operator delete(*&v85[8]);
    }

    if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v84.__r_.__value_.__l.__data_);
    }

    std::unique_ptr<CoreNLP::Resource>::~unique_ptr[abi:ne200100](&v65);
    if (v68[0])
    {
      CFRelease(v68[0]);
    }

    goto LABEL_124;
  }

  std::string::__init_copy_ctor_external(&v75, v78.__r_.__value_.__l.__data_, v78.__r_.__value_.__l.__size_);
  goto LABEL_97;
}

void sub_19D1C190C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, CoreNLP::Resource *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *__p, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (a2)
  {
    __cxa_free_exception(v58);
    if (*(v59 - 121) < 0)
    {
      operator delete(*(v59 - 144));
    }

    std::unique_ptr<CoreNLP::Resource>::~unique_ptr[abi:ne200100](&a29);
    nlp::CFScopedPtr<__CFLocale const*>::reset(&a35, 0);
    if (a57 < 0)
    {
      operator delete(__p);
    }

    if (*(v59 - 217) < 0)
    {
      operator delete(*(v59 - 240));
    }

    *(v59 - 216) = &unk_1F10AD1D0;
    if (*(v59 - 185) < 0)
    {
      operator delete(*(v59 - 208));
    }

    applesauce::CF::DictionaryRef::~DictionaryRef((v59 - 176));
    if (*(v59 - 145) < 0)
    {
      operator delete(*(v59 - 168));
    }

    v62 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      if (v57)
      {
        v63 = v62;
        v64 = *MEMORY[0x1E695E480];
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v66 = (*(*v63 + 16))(v63);
        v67 = CFStringCreateWithCString(v64, v66, 0);
        CFDictionaryAddValue(Mutable, *MEMORY[0x1E695E650], v67);
        *v57 = CFErrorCreate(v64, @"CoreLanguageModel", 0, Mutable);
        CFRelease(v67);
        CFRelease(Mutable);
      }

      __cxa_end_catch();
    }

    else
    {
      if (v57)
      {
        v68 = *MEMORY[0x1E695E480];
        v69 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        std::string::basic_string[abi:ne200100]<0>((v59 - 216), "Unknown exception");
        v70 = *(v59 - 193) >= 0 ? (v59 - 216) : *(v59 - 216);
        v71 = CFStringCreateWithCString(v68, v70, 0);
        CFDictionaryAddValue(v69, *MEMORY[0x1E695E650], v71);
        *v57 = CFErrorCreate(v68, @"CoreLanguageModel", 0, v69);
        CFRelease(v71);
        CFRelease(v69);
        if (*(v59 - 193) < 0)
        {
          operator delete(*(v59 - 216));
        }
      }

      __cxa_end_catch();
    }

    JUMPOUT(0x19D1C11DCLL);
  }

  _Unwind_Resume(a1);
}

uint64_t std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  result = std::string::basic_string[abi:ne200100](a3, v6 + v5);
  if (*(result + 23) >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

uint64_t CFWrapper<CoreLanguageModel,corelm::LanguageModel>::create<corelm::LanguageModel,applesauce::CF::DictionaryRef &,std::unique_ptr<corelm::AbstractVocabulary>>(const void **a1, uint64_t *a2)
{
  v4 = *MEMORY[0x1E695E480];
  if (CFWrapper<CoreLanguageModel,corelm::LanguageModel>::s_once != -1)
  {
    CFWrapper<CoreLanguageModel,corelm::LanguageModel>::create<corelm::LanguageModel,applesauce::CF::DictionaryRef &,std::unique_ptr<corelm::AbstractVocabulary>>();
  }

  Instance = _CFRuntimeCreateInstance();
  v6 = *a1;
  if (v6)
  {
    CFRetain(v6);
  }

  v7 = *a2;
  *a2 = 0;
  v10 = v7;
  cf = v6;
  corelm::LanguageModel::LanguageModel(Instance + 16, &cf, &v10);
  v8 = v10;
  v10 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return Instance;
}

void sub_19D1C2618(_Unwind_Exception *a1, uint64_t *a2, ...)
{
  va_start(va, a2);
  if (a2)
  {
    CFWrapper<CoreLanguageModel,corelm::LanguageModel>::create<corelm::LanguageModel,applesauce::CF::DictionaryRef &,std::unique_ptr<corelm::AbstractVocabulary>>(a2);
  }

  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  _Unwind_Resume(a1);
}

uint64_t CFWrapper<CoreLanguageModelWithState,corelm::LanguageModelWithState>::create<corelm::LanguageModelForANE,CoreLanguageModel *&>(CFTypeRef *a1)
{
  v2 = *MEMORY[0x1E695E480];
  if (CFWrapper<CoreLanguageModelWithState,corelm::LanguageModelWithState>::s_once != -1)
  {
    CFWrapper<CoreLanguageModelWithState,corelm::LanguageModelWithState>::create<corelm::LanguageModelForANE,CoreLanguageModel *&>();
  }

  Instance = _CFRuntimeCreateInstance();
  corelm::LanguageModelWithState::LanguageModelWithState(Instance + 16, *a1, 0);
  *(Instance + 16) = &unk_1F10AD728;
  *(Instance + 112) = 0u;
  *(Instance + 128) = 0u;
  *(Instance + 144) = 0u;
  *(Instance + 160) = 3;
  return Instance;
}

uint64_t CFWrapper<CoreLanguageModelWithState,corelm::LanguageModelWithState>::create<corelm::LanguageModelWithState,CoreLanguageModel *&>(CFTypeRef *a1)
{
  v2 = *MEMORY[0x1E695E480];
  if (CFWrapper<CoreLanguageModelWithState,corelm::LanguageModelWithState>::s_once != -1)
  {
    CFWrapper<CoreLanguageModelWithState,corelm::LanguageModelWithState>::create<corelm::LanguageModelForANE,CoreLanguageModel *&>();
  }

  Instance = _CFRuntimeCreateInstance();
  corelm::LanguageModelWithState::LanguageModelWithState(Instance + 16, *a1, 1);
  return Instance;
}

CFTypeRef CoreLMCopyTokenIdsForText(uint64_t a1, const void *a2)
{
  v3 = *((*(*(a1 + 16) + 112))() + 120);
  applesauce::CF::StringRef::from_get(a2, &cf);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  v4 = cf;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v15 = __p;
  }

  if (v4 && (TypeID = CFStringGetTypeID(), TypeID == CFGetTypeID(v4)))
  {
    applesauce::CF::details::CFString_get_value<false>(v4, &v14);
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v14 = v15;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v14;
  }

  else
  {
    v6 = v14.__r_.__value_.__r.__words[0];
  }

  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v14.__r_.__value_.__l.__size_;
  }

  (*(*v3 + 16))(&v15, v3, v6, size, 0);
  CFArray = applesauce::CF::details::make_CFArrayRef<long>(&v15);
  cf = CFArray;
  v9 = CFRetain(CFArray);
  if (CFArray)
  {
    CFRelease(CFArray);
  }

  if (v15.__r_.__value_.__r.__words[0])
  {
    v15.__r_.__value_.__l.__size_ = v15.__r_.__value_.__r.__words[0];
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_19D1C2948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21)
{
  __cxa_free_exception(v21);
  applesauce::CF::StringRef::~StringRef(&a12);
  _Unwind_Resume(a1);
}

CFTypeRef CoreLMCopyTextForTokenIds(uint64_t a1, const void *a2)
{
  v3 = *((*(*(a1 + 16) + 112))() + 120);
  applesauce::CF::ArrayRef::from_get(a2, &v17);
  if (!v17)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v12 = 0uLL;
  v13 = 0;
  v4 = applesauce::CF::convert_or<std::vector<long>,0>(v17, &v12, &__p);
  (*(*v3 + 24))(v15, v3, &__p, v4);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v12.n128_u64[0])
  {
    v12.n128_u64[1] = v12.n128_u64[0];
    operator delete(v12.n128_u64[0]);
  }

  if ((v16 & 0x80u) == 0)
  {
    v5 = v15;
  }

  else
  {
    v5 = v15[0];
  }

  if (v5)
  {
    if ((v16 & 0x80u) == 0)
    {
      v6 = v16;
    }

    else
    {
      v6 = v15[1];
    }

    v7 = CFStringCreateWithBytes(0, v5, v6, 0x8000100u, 0);
    __p.n128_u64[0] = v7;
    if (!v7)
    {
      v8 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v8, "Could not construct");
      __cxa_throw(v8, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    v7 = 0;
    __p.n128_u64[0] = 0;
  }

  v9 = CFRetain(v7);
  if (__p.n128_u64[0])
  {
    CFRelease(__p.n128_u64[0]);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return v9;
}

void sub_19D1C2B7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a12);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  applesauce::CF::ArrayRef::~ArrayRef((v20 - 24));
  _Unwind_Resume(a1);
}

const void *applesauce::CF::ArrayRef::from_get@<X0>(const void *this@<X0>, void *a2@<X8>)
{
  if (this)
  {
    v4 = this;
    CFRetain(this);
    *a2 = v4;
    v5 = CFGetTypeID(v4);
    this = CFArrayGetTypeID();
    if (v5 != this)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    *a2 = 0;
  }

  return this;
}

void sub_19D1C2CA0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

uint64_t CoreLMGetSpecialTokenId(uint64_t a1, int a2)
{
  v3 = *((*(*(a1 + 16) + 112))() + 120);
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      if ((*(v3 + 79) & 0x8000000000000000) != 0)
      {
        v11 = *(v3 + 56);
        v12 = *(v3 + 64);
      }

      goto LABEL_19;
    }

    if (a2 == 3)
    {
      if ((*(v3 + 103) & 0x8000000000000000) != 0)
      {
        v7 = *(v3 + 80);
        v8 = *(v3 + 88);
      }

      goto LABEL_19;
    }

    return 0;
  }

  if (!a2)
  {
    if ((*(v3 + 31) & 0x8000000000000000) != 0)
    {
      v9 = *(v3 + 8);
      v10 = *(v3 + 16);
    }

    goto LABEL_19;
  }

  if (a2 != 1)
  {
    return 0;
  }

  if ((*(v3 + 55) & 0x8000000000000000) != 0)
  {
    v5 = *(v3 + 32);
    v6 = *(v3 + 40);
  }

LABEL_19:
  v13 = *(*v3 + 32);

  return v13();
}

CFTypeRef CoreLMCopyVocabulary(uint64_t a1)
{
  v1 = (*(*(a1 + 16) + 112))();
  (*(**(v1 + 120) + 56))(&v15);
  v2 = v17;
  if (!v17 || *(v15 + 32))
  {
    goto LABEL_16;
  }

  v3 = v16;
  if (v16)
  {
    do
    {
      v4 = v3;
      v3 = *(v3 + 1);
    }

    while (v3);
  }

  else
  {
    v5 = &v16;
    do
    {
      v4 = v5[2];
      v6 = *v4 == v5;
      v5 = v4;
    }

    while (v6);
  }

  if (*(v4 + 4) == v17 - 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    std::vector<std::string>::vector[abi:ne200100](v14, v2);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    for (__p[0] = 0; __p[0] < v17; ++__p[0])
    {
      v18 = __p;
      v7 = std::__tree<std::__value_type<long,std::string>,std::__map_value_compare<long,std::__value_type<long,std::string>,std::less<long>,true>,std::allocator<std::__value_type<long,std::string>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(&v15, __p);
      std::string::operator=(v14[0] + __p[0], (v7 + 5));
    }

    v8 = applesauce::CF::details::make_CFArrayRef<std::string>(v14);
    __p[0] = v8;
    v9 = CFRetain(v8);
    if (v8)
    {
      CFRelease(v8);
    }

    __p[0] = v14;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  }

  else
  {
LABEL_16:
    v10 = _nlpDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      CoreLMCopyVocabulary_cold_1();
    }

    v9 = 0;
  }

  std::__tree<std::__value_type<long,std::string>,std::__map_value_compare<long,std::__value_type<long,std::string>,std::less<long>,true>,std::allocator<std::__value_type<long,std::string>>>::destroy(&v15, v16);
  return v9;
}

void sub_19D1C2FB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19, char *a20)
{
  applesauce::CF::ArrayRef::~ArrayRef(&__p);
  __p = &a16;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::__tree<std::__value_type<long,std::string>,std::__map_value_compare<long,std::__value_type<long,std::string>,std::less<long>,true>,std::allocator<std::__value_type<long,std::string>>>::destroy(&a19, a20);
  _Unwind_Resume(a1);
}

uint64_t CoreLMUpdateWithContext(uint64_t a1, applesauce::CF::ArrayRef *this)
{
  applesauce::CF::ArrayRef::from_get(this, &v11);
  if (!v11)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (CFArrayGetCount(v11))
  {
    if (!v11)
    {
      v7 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v7, "Could not construct");
      __cxa_throw(v7, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v8 = 0uLL;
    v9 = 0;
    v3 = applesauce::CF::convert_or<std::vector<long>,0>(v11, &v8, &__p);
    (*(*(a1 + 16) + 24))(a1 + 16, &__p, v3);
    if (__p.n128_u64[0])
    {
      __p.n128_u64[1] = __p.n128_u64[0];
      operator delete(__p.n128_u64[0]);
    }

    if (v8.n128_u64[0])
    {
      v8.n128_u64[1] = v8.n128_u64[0];
      operator delete(v8.n128_u64[0]);
    }
  }

  else
  {
    v4 = _nlpDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      CoreLMUpdateWithContext_cold_2();
    }
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return 1;
}

CFTypeRef CoreLMCopyConditionalProbabilities(uint64_t a1, applesauce::CF::ArrayRef *this)
{
  applesauce::CF::ArrayRef::from_get(this, &theArray);
  __src = 0;
  v25 = 0;
  v26 = 0;
  v3 = theArray;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    v5 = Count;
    v6 = theArray;
    if (theArray)
    {
      v7 = CFArrayGetCount(theArray);
      if (!v5)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v7 = 0;
      if (!Count)
      {
        goto LABEL_22;
      }
    }

    v8 = 0;
    v9 = a1 + 16;
    do
    {
      if (v3 == v6 && v7 == v8)
      {
        break;
      }

      v10 = applesauce::CF::details::at_to<long>(v3, v8);
      v11 = (*(*v9 + 104))(v9, v10);
      v12 = v25;
      if (v25 >= v26)
      {
        v14 = __src;
        v15 = v25 - __src;
        v16 = (v25 - __src) >> 2;
        v17 = v16 + 1;
        if ((v16 + 1) >> 62)
        {
          std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
        }

        v18 = v26 - __src;
        if ((v26 - __src) >> 1 > v17)
        {
          v17 = v18 >> 1;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v19 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&__src, v19);
        }

        *(4 * v16) = v11;
        v13 = 4 * v16 + 4;
        memcpy(0, v14, v15);
        v20 = __src;
        __src = 0;
        v25 = v13;
        v26 = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        *v25 = v11;
        v13 = (v12 + 1);
      }

      v25 = v13;
      ++v8;
    }

    while (v5 != v8);
  }

LABEL_22:
  CFArray = applesauce::CF::details::make_CFArrayRef<float>(&__src);
  v22 = CFRetain(CFArray);
  if (CFArray)
  {
    CFRelease(CFArray);
  }

  if (__src)
  {
    v25 = __src;
    operator delete(__src);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return v22;
}

void sub_19D1C33C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, uint64_t a13, const void *a14)
{
  applesauce::CF::ArrayRef::~ArrayRef(&a10);
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  applesauce::CF::ArrayRef::~ArrayRef(&a14);
  _Unwind_Resume(a1);
}

CFArrayRef CoreLMCopyConditionalProbabilitiesOverVocabulary(uint64_t a1)
{
  (*(*(a1 + 16) + 88))(__p);
  CFArray = applesauce::CF::details::make_CFArrayRef<float>(__p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return CFArray;
}

void sub_19D1C3490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CFWrapper<CoreLanguageModelWithState,corelm::LanguageModelWithState>::create<corelm::LanguageModelWithState,corelm::LanguageModelWithState&,BOOL>(const corelm::LanguageModelWithState *a1, unsigned __int8 *a2)
{
  v4 = *MEMORY[0x1E695E480];
  if (CFWrapper<CoreLanguageModelWithState,corelm::LanguageModelWithState>::s_once != -1)
  {
    CFWrapper<CoreLanguageModelWithState,corelm::LanguageModelWithState>::create<corelm::LanguageModelForANE,CoreLanguageModel *&>();
  }

  Instance = _CFRuntimeCreateInstance();
  corelm::LanguageModelWithState::LanguageModelWithState((Instance + 16), a1, *a2);
  return Instance;
}

uint64_t CoreLMCopyPredictions(int a1, applesauce::CF::DictionaryRef *this)
{
  applesauce::CF::DictionaryRef::from_get(this, &cf);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v2 = applesauce::CF::details::at_key<__CFString const* const&>(cf, &kCoreLMSamplingMethodKey);
  if (!cf)
  {
    v17 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v17, "Could not construct");
    __cxa_throw(v17, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::find_at_key_or_optional<unsigned long,__CFString const* const&>(cf, &kCoreLMSamplingMaxLengthKey);
  if (!cf)
  {
    v18 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v18, "Could not construct");
    __cxa_throw(v18, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v4 = v3;
  v5 = applesauce::CF::details::find_at_key_or_optional<int,__CFString const* const&>(cf, &kCoreLMSamplingNumberKey);
  if (v2)
  {
    if (v4)
    {
      if ((v5 & 0x100000000) != 0)
      {
        if (CFEqual(v2, @"kCoreLMSamplingMethodGREEDY"))
        {
          operator new();
        }

        if (CFEqual(v2, @"kCoreLMSamplingMethodTOPK"))
        {
          if (!cf)
          {
            v19 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v19, "Could not construct");
            __cxa_throw(v19, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          if ((applesauce::CF::details::find_at_key_or_optional<int,__CFString const* const&>(cf, &kCoreLMSamplingTopKKey) & 0x100000000) != 0)
          {
            operator new();
          }

          v10 = _nlpDefaultLog();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            CoreLMCopyPredictions_cold_2();
          }
        }

        else if (CFEqual(v2, @"kCoreLMSamplingMethodTOPP"))
        {
          v11 = applesauce::CF::DictionaryRef::operator->(&cf);
          v12 = applesauce::CF::details::find_at_key_or_optional<float,__CFString const* const&>(*v11, &kCoreLMSamplingTopPKey);
          v13 = applesauce::CF::DictionaryRef::operator->(&cf);
          applesauce::CF::details::find_at_key_or_optional<int,__CFString const* const&>(*v13, &kCoreLMSamplingTopKKey);
          if ((v12 & 0x100000000) != 0)
          {
            operator new();
          }

          v14 = _nlpDefaultLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            CoreLMCopyPredictions_cold_3();
          }
        }

        else
        {
          v15 = _nlpDefaultLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            CoreLMCopyPredictions_cold_4();
          }
        }
      }

      else
      {
        v6 = _nlpDefaultLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          CoreLMCopyPredictions_cold_5();
        }
      }
    }

    else
    {
      v8 = _nlpDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        CoreLMCopyPredictions_cold_1();
      }
    }
  }

  else
  {
    v7 = _nlpDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      CoreLMCopyPredictions_cold_6();
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return 0;
}

void sub_19D1C3A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  _Unwind_Resume(a1);
}

BOOL CoreLMSetTemperature(uint64_t a1, float a2)
{
  v3 = (*(*(a1 + 16) + 112))();
  result = corelm::util::contains<std::string,char const*,void>((v3 + 24), "temperature");
  if (result)
  {
    *(v3 + 128) = 1.0 / a2;
  }

  return result;
}

uint64_t CoreLMGetProbabilitiesForSequences(uint64_t a1, applesauce::CF::ArrayRef *this, _BOOL8 a3)
{
  applesauce::CF::ArrayRef::from_get(this, &v13);
  if (!v13)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  cf = 0uLL;
  v11 = 0;
  applesauce::CF::convert_or<std::vector<std::vector<long>>,0>(v13, &cf, &v12);
  p_cf = &cf;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&p_cf);
  if (a3)
  {
    applesauce::CF::DictionaryRef::from_get(a3, &cf);
    if (!cf.n128_u64[0])
    {
      v9 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v9, "Could not construct");
      __cxa_throw(v9, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v5 = applesauce::CF::details::at_key<__CFString const* const&>(cf.n128_u64[0], &kCoreLMAttentionTypeKey);
    if (v5)
    {
      a3 = CFEqual(v5, @"kCoreLMAttentionTypeAutoencoding") != 0;
    }

    else
    {
      a3 = 0;
    }

    if (cf.n128_u64[0])
    {
      CFRelease(cf.n128_u64[0]);
    }
  }

  v6 = (*(*(a1 + 16) + 16))(a1 + 16, &v12, a3);
  cf.n128_u64[0] = &v12;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&cf);
  if (v13)
  {
    CFRelease(v13);
  }

  return v6;
}

void sub_19D1C3D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, const void *a15)
{
  applesauce::CF::DictionaryRef::~DictionaryRef(&a9);
  a9 = &a12;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a9);
  applesauce::CF::ArrayRef::~ArrayRef(&a15);
  _Unwind_Resume(a1);
}

CFDictionaryRef CoreLMCopyBatchingConfig(uint64_t a1)
{
  (*(*(a1 + 16) + 136))(v3);
  v1 = applesauce::CF::details::make_CFDictionaryRef<unsigned long,std::vector<unsigned long>>(v3);
  std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::destroy(v3, v3[1]);
  return v1;
}

CFTypeRef CoreLMCopyPreprocessedText(uint64_t a1, applesauce::CF::StringRef *this)
{
  applesauce::CF::StringRef::from_get(this, &cf);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  v3 = cf;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v16 = __p;
  }

  if (v3 && (TypeID = CFStringGetTypeID(), TypeID == CFGetTypeID(v3)))
  {
    applesauce::CF::details::CFString_get_value<false>(v3, &v15);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v15 = v16;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v5 = (*(*(a1 + 16) + 112))(a1 + 16);
  (*(**(v5 + 120) + 72))(&v16);
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v16;
  }

  else
  {
    v6 = v16.__r_.__value_.__r.__words[0];
  }

  if (v6)
  {
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v16.__r_.__value_.__l.__size_;
    }

    v8 = CFStringCreateWithBytes(0, v6, size, 0x8000100u, 0);
    cf = v8;
    if (!v8)
    {
      v9 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v9, "Could not construct");
      __cxa_throw(v9, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    v8 = 0;
    cf = 0;
  }

  v10 = CFRetain(v8);
  if (cf)
  {
    CFRelease(cf);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return v10;
}

void sub_19D1C403C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a12);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(a1);
}

float CoreLMTerminationProbabilityForText(uint64_t a1, const void *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = CoreLMCopyVocabulary(a1);
  v41 = v4;
  if (!v4)
  {
    goto LABEL_34;
  }

  v5 = CFGetTypeID(v4);
  if (v5 != CFArrayGetTypeID())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (!v41)
  {
LABEL_34:
    v26 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v26, "Could not construct");
    __cxa_throw(v26, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  Count = CFArrayGetCount(v41);
  v7 = CoreLMCopyBatchingConfig(a1);
  v40 = v7;
  if (!v7)
  {
    goto LABEL_35;
  }

  v8 = CFGetTypeID(v7);
  if (v8 != CFDictionaryGetTypeID())
  {
    v30 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v30, "Could not construct");
    __cxa_throw(v30, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (!v40)
  {
LABEL_35:
    v27 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v27, "Could not construct");
    __cxa_throw(v27, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::convert_to<std::map<unsigned long,std::vector<unsigned long>>,0>(v40, v39);
  v9 = CoreLMCopyTokenIdsForText(a1, a2);
  cf[0] = v9;
  if (!v9)
  {
    goto LABEL_36;
  }

  v10 = CFGetTypeID(v9);
  if (v10 != CFArrayGetTypeID())
  {
    v31 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v31, "Could not construct");
    __cxa_throw(v31, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (!cf[0])
  {
LABEL_36:
    v28 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v28, "Could not construct");
    __cxa_throw(v28, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::convert_to<std::vector<long>,0>(cf[0], &__p);
  CFRelease(cf[0]);
  v36 = CoreLMGetSpecialTokenId(a1, 0);
  std::vector<long>::insert(&__p, __p, &v36);
  memset(cf, 0, sizeof(cf));
  std::vector<std::vector<long>>::push_back[abi:ne200100](cf, &__p);
  v11 = CoreLMGetSpecialTokenId(a1, 3);
  std::map<unsigned long,std::vector<unsigned long>>::map[abi:ne200100](v34, v39);
  corelm::util::paddingBatchedContext<long>(cf, v34, v11);
  std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::destroy(v34, v34[1]);
  v43 = 0;
  v44 = 0;
  v42 = 0;
  std::vector<long>::__init_with_size[abi:ne200100]<long *,long *>(&v42, *cf[0], *(cf[0] + 1), (*(cf[0] + 1) - *cf[0]) >> 3);
  v33[0] = &v42;
  v33[1] = 1;
  v12 = applesauce::CF::details::make_CFArrayRef<std::vector<long>>(v33);
  v33[2] = v12;
  v13 = CoreLMGetProbabilitiesForSequences(a1, v12, 0);
  if (v12)
  {
    CFRelease(v12);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  v15 = __p;
  v14 = v38;
  v16 = CoreLMCopyTokenIdsForText(a1, @". ! ? ");
  v42 = v16;
  if (!v16)
  {
    goto LABEL_23;
  }

  v17 = CFGetTypeID(v16);
  if (v17 != CFArrayGetTypeID())
  {
    v32 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v32, "Could not construct");
    __cxa_throw(v32, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v18 = v42;
  if (!v42)
  {
LABEL_23:
    v22 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v22, "Could not construct");
    __cxa_throw(v22, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v19 = 0;
  v20 = v13 + 4 * (((v14 - v15) >> 3) - 1) * Count;
  v21 = 0.0;
  while (CFArrayGetCount(v18) > v19)
  {
    if (!v42)
    {
      v25 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v25, "Could not construct");
      __cxa_throw(v25, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v21 = v21 + *(v20 + 4 * applesauce::CF::details::at_to<unsigned long>(v42, v19++));
    v18 = v42;
    if (!v42)
    {
      goto LABEL_23;
    }
  }

  if (v42)
  {
    CFRelease(v42);
  }

  v42 = cf;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v42);
  if (__p)
  {
    v38 = __p;
    operator delete(__p);
  }

  std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::destroy(v39, v39[1]);
  if (v40)
  {
    CFRelease(v40);
  }

  if (v41)
  {
    CFRelease(v41);
  }

  v23 = *MEMORY[0x1E69E9840];
  return v21;
}

void sub_19D1C45B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, char a25, void *a26)
{
  __cxa_free_exception(v26);
  applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef((v27 - 96));
  *(v27 - 96) = &a18;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100]((v27 - 96));
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::destroy(&a25, a26);
  applesauce::CF::DictionaryRef::~DictionaryRef((v27 - 112));
  applesauce::CF::ArrayRef::~ArrayRef((v27 - 104));
  _Unwind_Resume(a1);
}

char *std::vector<long>::insert(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    std::__split_buffer<long>::emplace_back<long const&>(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_19D1C492C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void corelm::util::paddingBatchedContext<long>(uint64_t a1, void *a2, uint64_t a3)
{
  v56 = a3;
  v55 = 0;
  v5 = 0uLL;
  *__src = 0u;
  v6 = a2 + 1;
  v7 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v8 = v7[5];
      v58 = v7[4];
      v60 = 0;
      v61 = 0;
      __p = 0;
      std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&__p, v8, v7[6], (v7[6] - v8) >> 3);
      v9 = __src[1];
      if (__src[1] >= v55)
      {
        v11 = __src[0];
        v12 = __src[1] - __src[0];
        v13 = (__src[1] - __src[0]) >> 3;
        v14 = v13 + 1;
        if ((v13 + 1) >> 61)
        {
          std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
        }

        v15 = v55 - __src[0];
        if ((v55 - __src[0]) >> 2 > v14)
        {
          v14 = v15 >> 2;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFF8)
        {
          v16 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(__src, v16);
        }

        *(8 * v13) = v58;
        v10 = (8 * v13 + 8);
        memcpy(0, v11, v12);
        v17 = __src[0];
        __src[0] = 0;
        __src[1] = v10;
        v55 = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      else
      {
        *__src[1] = v58;
        v10 = v9 + 8;
      }

      __src[1] = v10;
      if (__p)
      {
        v60 = __p;
        operator delete(__p);
      }

      v18 = v7[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v7[2];
          v20 = *v19 == v7;
          v7 = v19;
        }

        while (!v20);
      }

      v7 = v19;
    }

    while (v19 != v6);
    v5 = *__src;
  }

  v21 = 126 - 2 * __clz((*(&v5 + 1) - v5) >> 3);
  if (*(&v5 + 1) == v5)
  {
    v22 = 0;
  }

  else
  {
    v22 = v21;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::greater<unsigned long> &,unsigned long *,true>(v5, *(&v5 + 1), &v58, v22, 1);
  v23 = *a1;
  v24 = *(a1 + 8);
  v25 = 0xAAAAAAAAAAAAAAABLL * ((v24 - *a1) >> 3);
  v53 = v25;
  v26 = __src[0];
  if (__src[0] != __src[1])
  {
    v27 = v25;
    do
    {
      v28 = *v26;
      if (v25 <= *v26)
      {
        v53 = *v26;
        v27 = v28;
      }

      ++v26;
    }

    while (v26 != __src[1]);
    for (; v27 > v25; v25 = 0xAAAAAAAAAAAAAAABLL * ((v24 - *a1) >> 3))
    {
      v29 = *(a1 + 16);
      if (v24 >= v29)
      {
        if (v25 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
        }

        v30 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v23) >> 3);
        v31 = 2 * v30;
        if (2 * v30 <= v25 + 1)
        {
          v31 = v25 + 1;
        }

        if (v30 >= 0x555555555555555)
        {
          v32 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v32 = v31;
        }

        v62 = a1;
        if (v32)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<long>>>(a1, v32);
        }

        v33 = 24 * v25;
        v24 = (24 * v25 + 24);
        *v33 = 0;
        *(v33 + 8) = 0;
        *(v33 + 16) = 0;
        v34 = *(a1 + 8) - *a1;
        v35 = 24 * v25 - v34;
        memcpy((v33 - v34), *a1, v34);
        v36 = *a1;
        *a1 = v35;
        *(a1 + 8) = v24;
        v37 = *(a1 + 16);
        *(a1 + 16) = 0;
        v60 = v36;
        v61 = v37;
        v58 = v36;
        __p = v36;
        std::__split_buffer<std::vector<long>>::~__split_buffer(&v58);
      }

      else
      {
        *v24 = 0;
        v24[1] = 0;
        v24[2] = 0;
        v24 += 3;
      }

      *(a1 + 8) = v24;
      v23 = *a1;
    }
  }

  v57 = &v53;
  v38 = std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(a2, &v53);
  __p = 0;
  v60 = 0;
  v58 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v58, v38[5], v38[6], (v38[6] - v38[5]) >> 3);
  v39 = 126 - 2 * __clz((__p - v58) >> 3);
  if (__p == v58)
  {
    v40 = 0;
  }

  else
  {
    v40 = v39;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::greater<unsigned long> &,unsigned long *,true>(v58, __p, &v57, v40, 1);
  v41 = *a1;
  v42 = *(a1 + 8);
  v43 = 0;
  if (v42 != *a1)
  {
    v44 = 0xAAAAAAAAAAAAAAABLL * (&v42[-*a1] >> 3);
    if (v44 <= 1)
    {
      v44 = 1;
    }

    v45 = v41 + 8;
    do
    {
      if (v43 <= (*v45 - *(v45 - 1)) >> 3)
      {
        v43 = (*v45 - *(v45 - 1)) >> 3;
      }

      v45 += 3;
      --v44;
    }

    while (v44);
  }

  v46 = v58;
  if (v58 == __p)
  {
    v47 = v43;
  }

  else
  {
    v47 = v43;
    v48 = v58;
    do
    {
      v50 = *v48++;
      v49 = v50;
      if (v43 <= v50)
      {
        v47 = v49;
      }
    }

    while (v48 != __p);
  }

  if (v42 != v41)
  {
    v51 = 0;
    v52 = 0;
    do
    {
      std::vector<long>::resize(&v41[v51], v47, &v56);
      ++v52;
      v41 = *a1;
      v51 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) > v52);
    v46 = v58;
  }

  if (v46)
  {
    __p = v46;
    operator delete(v46);
  }

  if (__src[0])
  {
    __src[1] = __src[0];
    operator delete(__src[0]);
  }
}

void sub_19D1C4DB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

const void *applesauce::CF::get_filesystem_path@<X0>(applesauce::CF *this@<X0>, void *a2@<X8>)
{
  result = CFURLCopyFileSystemPath(this, kCFURLPOSIXPathStyle);
  *a2 = result;
  if (result)
  {
    v5 = CFGetTypeID(result);
    result = CFStringGetTypeID();
    if (v5 != result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  return result;
}

void sub_19D1C4ED4(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

corelm::util::Directory *corelm::util::Directory::Directory(corelm::util::Directory *this, const corelm::util::Directory *a2)
{
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 1), *(a2 + 2));
  }

  else
  {
    __p = *(a2 + 8);
  }

  *this = &unk_1F10AD1D0;
  v3 = (this + 8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v3, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *&v3->__r_.__value_.__l.__data_ = *&__p.__r_.__value_.__l.__data_;
    *(this + 3) = *(&__p.__r_.__value_.__l + 2);
  }

  *this = &unk_1F10AD1F8;
  return this;
}

void sub_19D1C4FF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<std::__value_type<long,std::string>,std::__map_value_compare<long,std::__value_type<long,std::string>,std::less<long>,true>,std::allocator<std::__value_type<long,std::string>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<long,std::string>,std::__map_value_compare<long,std::__value_type<long,std::string>,std::less<long>,true>,std::allocator<std::__value_type<long,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<long,std::string>,std::__map_value_compare<long,std::__value_type<long,std::string>,std::less<long>,true>,std::allocator<std::__value_type<long,std::string>>>::destroy(a1, *(a2 + 1));
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
    }

    operator delete(a2);
  }
}

void *std::map<unsigned long,std::vector<unsigned long>>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<unsigned long,std::vector<unsigned long>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__tree_node<std::__value_type<unsigned long,std::vector<unsigned long>>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::map<unsigned long,std::vector<unsigned long>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__tree_node<std::__value_type<unsigned long,std::vector<unsigned long>>,void *> *,long>>>(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::__emplace_hint_unique_key_args<unsigned long,std::pair<unsigned long const,std::vector<unsigned long>> const&>(v5, v5 + 1, v4 + 4);
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

uint64_t std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::__emplace_hint_unique_key_args<unsigned long,std::pair<unsigned long const,std::vector<unsigned long>> const&>(void *a1, void *a2, unint64_t *a3)
{
  result = *std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::__find_equal<unsigned long>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::__construct_node<std::pair<unsigned long const,std::vector<unsigned long>> const&>();
  }

  return result;
}

void *std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::__find_equal<unsigned long>(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[4];
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<__CFString const*>(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *a1 + 8 * v2;
  v7 = 0;
  v8 = 0;
  __p = 0;
  std::vector<void const*>::__init_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(&__p, v1, v3, v2);
  CFArray = applesauce::CF::details::make_CFArrayRef<void const*>(&__p);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  return CFArray;
}

void sub_19D1C53E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<void const*>(uint64_t a1)
{
  result = CFArrayCreate(0, *a1, (*(a1 + 8) - *a1) >> 3, MEMORY[0x1E695E9C0]);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

uint64_t std::vector<void const*>::__init_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<void const*>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19D1C54D8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<void const*>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(a1, a2);
  }

  std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
}

_BYTE *applesauce::CF::details::at_to<std::string>@<X0>(const __CFArray *a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (!a1 || CFArrayGetCount(a1) <= a2 || (ValueAtIndex = CFArrayGetValueAtIndex(a1, a2)) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return applesauce::CF::convert_to<std::string,0>(ValueAtIndex, a3);
}

BOOL applesauce::CF::details::has_key<std::string &>(_BOOL8 a1, CFStringRef a2)
{
  v2 = a2;
  v3 = a1;
  data_high = HIBYTE(a2->data);
  if ((data_high & 0x80u) != 0)
  {
    a2 = a2->isa;
  }

  if (a2)
  {
    info = v2->info;
    if ((data_high & 0x80u) == 0)
    {
      v6 = data_high;
    }

    else
    {
      v6 = info;
    }

    a2 = CFStringCreateWithBytes(0, a2, v6, 0x8000100u, 0);
    v9 = a2;
    if (!a2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if (!v3)
    {
LABEL_9:
      if (!a2)
      {
        return v3;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v9 = 0;
    if (!a1)
    {
      goto LABEL_9;
    }
  }

  v3 = CFDictionaryContainsKey(v3, a2) != 0;
  a2 = v9;
  if (v9)
  {
LABEL_13:
    CFRelease(a2);
  }

  return v3;
}

void sub_19D1C56DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

_BYTE *applesauce::CF::details::find_at_key<std::string,__CFString const* const&>@<X0>(const __CFDictionary *a1@<X0>, const void **a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = applesauce::CF::details::at_key<__CFString const* const&>(a1, a2);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return applesauce::CF::convert_to<std::string,0>(v4, a3);
}

const __CFDictionary *applesauce::CF::details::at_key<__CFString const* const&>(const __CFDictionary *result, const void **a2)
{
  if (result)
  {
    v2 = *a2;
    if (v2)
    {
      return CFDictionaryGetValue(result, v2);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const __CFDictionary *applesauce::CF::details::has_key<__CFString const* const&>(const __CFDictionary *result, const void **a2)
{
  if (result)
  {
    v2 = *a2;
    if (v2)
    {
      return (CFDictionaryContainsKey(result, v2) != 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const __CFDictionary *applesauce::CF::details::find_at_key<__CFString const*,__CFString const* const&>(const __CFDictionary *a1, const void **a2)
{
  result = applesauce::CF::details::at_key<__CFString const* const&>(a1, a2);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

void corelm::Custom1PreProcessor::Custom1PreProcessor(corelm::Custom1PreProcessor *this)
{
  v14 = *MEMORY[0x1E69E9840];
  *this = &unk_1F10AF9C0;
  v2 = (this + 8);
  std::string::basic_string[abi:ne200100]<0>(v4, "The");
  std::string::basic_string[abi:ne200100]<0>(v5, "I");
  std::string::basic_string[abi:ne200100]<0>(v6, "I'll");
  std::string::basic_string[abi:ne200100]<0>(v7, "I'm");
  std::string::basic_string[abi:ne200100]<0>(v8, "I've");
  std::string::basic_string[abi:ne200100]<0>(v9, "I'd");
  std::string::basic_string[abi:ne200100]<0>(v10, "I’ll");
  std::string::basic_string[abi:ne200100]<0>(v11, "I’m");
  std::string::basic_string[abi:ne200100]<0>(v12, "I’ve");
  std::string::basic_string[abi:ne200100]<0>(v13, "I’d");
  std::set<std::string>::set[abi:ne200100](v2, v4, 10);
  v3 = 0;
  while (1)
  {
    if (v13[v3 + 23] < 0)
    {
      operator delete(*&v13[v3]);
    }

    v3 -= 24;
    if (v3 == -240)
    {
      std::string::basic_string[abi:ne200100]<0>(this + 32, "_U_CAP_");
      NLTokenizerCreate();
    }
  }
}

void sub_19D1C5A2C(_Unwind_Exception *a1)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  std::__tree<std::string>::destroy(v2, *(v1 + 16));
  _Unwind_Resume(a1);
}

void corelm::Custom2PreProcessor::Custom2PreProcessor(corelm::Custom2PreProcessor *this)
{
  v29 = *MEMORY[0x1E69E9840];
  *this = &unk_1F10AFA18;
  v2 = (this + 8);
  std::string::basic_string[abi:ne200100]<0>(v5, "I'll");
  std::string::basic_string[abi:ne200100]<0>(v6, "I'm");
  std::string::basic_string[abi:ne200100]<0>(v7, "I've");
  std::string::basic_string[abi:ne200100]<0>(v8, "I'd");
  std::string::basic_string[abi:ne200100]<0>(v9, "I’ll");
  std::string::basic_string[abi:ne200100]<0>(v10, "I’m");
  std::string::basic_string[abi:ne200100]<0>(v11, "I’ve");
  std::string::basic_string[abi:ne200100]<0>(v12, "I’d");
  std::set<std::string>::set[abi:ne200100](v2, v5, 8);
  v3 = 0;
  while (1)
  {
    if (v12[v3 + 23] < 0)
    {
      operator delete(*&v12[v3]);
    }

    v3 -= 24;
    if (v3 == -192)
    {
      std::string::basic_string[abi:ne200100]<0>(this + 32, "_U_CAP_");
      std::string::basic_string[abi:ne200100]<0>(v5, "it's");
      std::string::basic_string[abi:ne200100]<0>(v6, "that's");
      std::string::basic_string[abi:ne200100]<0>(v7, "he's");
      std::string::basic_string[abi:ne200100]<0>(v8, "there's");
      std::string::basic_string[abi:ne200100]<0>(v9, "she's");
      std::string::basic_string[abi:ne200100]<0>(v10, "what's");
      std::string::basic_string[abi:ne200100]<0>(v11, "let's");
      std::string::basic_string[abi:ne200100]<0>(v12, "who's");
      std::string::basic_string[abi:ne200100]<0>(v13, "here's");
      std::string::basic_string[abi:ne200100]<0>(v14, "how's");
      std::string::basic_string[abi:ne200100]<0>(v15, "where's");
      std::string::basic_string[abi:ne200100]<0>(v16, "else's");
      std::string::basic_string[abi:ne200100]<0>(v17, "it’s");
      std::string::basic_string[abi:ne200100]<0>(v18, "that’s");
      std::string::basic_string[abi:ne200100]<0>(v19, "he’s");
      std::string::basic_string[abi:ne200100]<0>(v20, "there’s");
      std::string::basic_string[abi:ne200100]<0>(v21, "she’s");
      std::string::basic_string[abi:ne200100]<0>(v22, "what’s");
      std::string::basic_string[abi:ne200100]<0>(v23, "let’s");
      std::string::basic_string[abi:ne200100]<0>(v24, "who’s");
      std::string::basic_string[abi:ne200100]<0>(v25, "here’s");
      std::string::basic_string[abi:ne200100]<0>(v26, "how’s");
      std::string::basic_string[abi:ne200100]<0>(v27, "where’s");
      std::string::basic_string[abi:ne200100]<0>(v28, "else’s");
      std::set<std::string>::set[abi:ne200100](this + 7, v5, 24);
      v4 = 72;
      while (1)
      {
        if (SHIBYTE(v5[v4 - 1]) < 0)
        {
          operator delete(v5[v4 - 3]);
        }

        v4 -= 3;
        if (!(v4 * 8))
        {
          NLTokenizerCreate();
        }
      }
    }
  }
}

void sub_19D1C5E94(_Unwind_Exception *a1)
{
  std::__tree<std::string>::destroy(v1 + 56, *(v1 + 64));
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  std::__tree<std::string>::destroy(v2, *(v1 + 16));
  _Unwind_Resume(a1);
}

void sub_19D1C6958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, corelm::Custom2PreProcessor *a11)
{
  v13 = -2832;
  v14 = v11;
  do
  {
    v14 = std::pair<std::string const,std::string>::~pair(v14) - 48;
    v13 += 48;
  }

  while (v13);
  corelm::Custom2PreProcessor::~Custom2PreProcessor(a11);
  _Unwind_Resume(a1);
}

uint64_t std::pair<std::string const,std::string>::~pair(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void corelm::Custom2PreProcessor::~Custom2PreProcessor(corelm::Custom2PreProcessor *this)
{
  *this = &unk_1F10AFA18;
  NLTokenizerRelease(*(this + 10));
  std::__tree<std::string>::destroy(this + 56, *(this + 8));
  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  std::__tree<std::string>::destroy(this + 8, *(this + 2));
}

{
  corelm::Custom2PreProcessor::~Custom2PreProcessor(this);

  JUMPOUT(0x19EAF8CA0);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const*,char const*,0>(_BYTE *a1, char **a2)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(a1, *a2);
  std::string::basic_string[abi:ne200100]<0>(v4 + 24, a2[1]);
  return a1;
}

void sub_19D1C6BA0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::map<std::string,std::string>::map[abi:ne200100](void *a1, const void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 48 * a3;
    do
    {
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(a1, v4, a2);
      a2 += 6;
      v6 -= 48;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(void *a1, uint64_t a2, const void **a3)
{
  v3 = *std::__tree<std::string>::__find_equal<std::string>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__construct_node<std::pair<std::string const,std::string> const&>();
  }

  return v3;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *std::pair<std::string const,std::string>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  return this;
}

void sub_19D1C6E10(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>((a2 + 4));

    operator delete(a2);
  }
}

CFTypeID applesauce::CF::details::find_at_key<applesauce::CF::URLRef,__CFString const* const&>@<X0>(const __CFDictionary *a1@<X0>, const void **a2@<X1>, const __CFDictionary **a3@<X8>)
{
  v4 = applesauce::CF::details::at_key<__CFString const* const&>(a1, a2);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v5 = v4;
  CFRetain(v4);
  *a3 = v5;
  v6 = CFGetTypeID(v5);
  result = CFURLGetTypeID();
  if (v6 != result)
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v9, "Could not construct");
    __cxa_throw(v9, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

void sub_19D1C6FA4(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFURL const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

uint64_t ___ZN9CFWrapperI17CoreLanguageModelN6corelm13LanguageModelEE10cf_type_idEv_block_invoke()
{
  CFWrapper<CoreLanguageModel,corelm::LanguageModel>::s_class = 0;
  *algn_1EB011CE8 = "CoreLanguageModel";
  qword_1EB011CF0 = 0;
  unk_1EB011CF8 = 0;
  qword_1EB011D00 = CFWrapper<CoreLanguageModel,corelm::LanguageModel>::cf_finalize;
  *algn_1EB011D08 = 0u;
  *&algn_1EB011D08[16] = 0u;
  result = _CFRuntimeRegisterClass();
  CFWrapper<CoreLanguageModel,corelm::LanguageModel>::s_type_id = result;
  return result;
}

void CFWrapper<CoreLanguageModel,corelm::LanguageModel>::cf_finalize(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    *(a1 + 144) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 120);
  *(a1 + 120) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  corelm::NeuralNetwork::~NeuralNetwork((a1 + 16));
}

uint64_t ___ZN9CFWrapperI26CoreLanguageModelWithStateN6corelm22LanguageModelWithStateEE10cf_type_idEv_block_invoke()
{
  CFWrapper<CoreLanguageModelWithState,corelm::LanguageModelWithState>::s_class = 0;
  *algn_1EB011D58 = "CoreLanguageModelWithState";
  qword_1EB011D60 = 0;
  unk_1EB011D68 = 0;
  qword_1EB011D70 = CFWrapper<CoreLanguageModelWithState,corelm::LanguageModelWithState>::cf_finalize;
  unk_1EB011D78 = 0u;
  unk_1EB011D88 = 0u;
  result = _CFRuntimeRegisterClass();
  CFWrapper<CoreLanguageModelWithState,corelm::LanguageModelWithState>::s_type_id = result;
  return result;
}

uint64_t corelm::LanguageModelWithState::LanguageModelWithState(uint64_t a1, CFTypeRef cf, int a3)
{
  *a1 = &unk_1F10AD7F0;
  *(a1 + 24) = 0;
  *(a1 + 16) = a1 + 24;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = CFRetain(cf);
  *(a1 + 88) = 0;
  if (a3)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    (*(*a1 + 32))(a1, __p);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return a1;
}

void sub_19D1C720C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v21 = *v19;
  if (*v19)
  {
    *(v15 + 64) = v21;
    operator delete(v21);
  }

  std::optional<applesauce::CF::ArrayRef>::~optional(v17);
  std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::destroy(v16, *v18);
  _Unwind_Resume(a1);
}

void corelm::LanguageModelForANE::~LanguageModelForANE(corelm::LanguageModelForANE *this)
{
  *this = &unk_1F10AD728;
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    *(this + 13) = v3;
    operator delete(v3);
  }

  corelm::LanguageModelWithState::~LanguageModelWithState(this);
}

{
  *this = &unk_1F10AD728;
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    *(this + 13) = v3;
    operator delete(v3);
  }

  corelm::LanguageModelWithState::~LanguageModelWithState(this);

  JUMPOUT(0x19EAF8CA0);
}

uint64_t corelm::LanguageModelForANE::calculateProbsOnSequence(uint64_t a1, uint64_t **a2, char a3)
{
  v3 = *a2;
  v4 = 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2);
  v78 = v4;
  v5 = *(a1 + 24);
  if (!v5)
  {
    goto LABEL_60;
  }

  v7 = a2;
  v8 = a1;
  v9 = a1 + 16;
  v10 = a1 + 24;
  do
  {
    v11 = *(v5 + 32);
    v12 = v11 >= v4;
    v13 = v11 < v4;
    if (v12)
    {
      v10 = v5;
    }

    v5 = *(v5 + 8 * v13);
  }

  while (v5);
  if (v10 == a1 + 24 || v4 < *(v10 + 32))
  {
LABEL_60:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "input batch size not supported");
    goto LABEL_62;
  }

  v71 = *v3;
  v72 = v3[1];
  v14 = v72 - *v3;
  v15 = v14 >> 3;
  *&v74 = &v78;
  v16 = std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(v9, &v78)[5];
  *&v74 = &v78;
  v17 = std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(v9, &v78);
  v18 = v17[6];
  if (v16 != v18)
  {
    while (*v16 != v15)
    {
      if (++v16 == v18)
      {
        v16 = v17[6];
        break;
      }
    }
  }

  *&v74 = &v78;
  if (v16 == std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(v9, &v78)[6])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "input seq length not supported");
LABEL_62:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v19 = v15 * v15;
  v77 = 1065353216;
  std::vector<float>::vector[abi:ne200100](&v74, v15 * v15 * v78);
  v21 = (v8 + 96);
  v20 = *(v8 + 96);
  if (v20)
  {
    *(v8 + 104) = v20;
    operator delete(v20);
    *v21 = 0;
    *(v8 + 104) = 0;
    *(v8 + 112) = 0;
  }

  v22 = v74;
  *(v8 + 96) = v74;
  *(v8 + 112) = v75;
  v23 = v78;
  if (a3)
  {
    if (!v78)
    {
      goto LABEL_45;
    }

    v67 = (v8 + 96);
    v68 = v7;
    v69 = v8;
    v24 = 0;
    v73 = *v7;
    v25 = 0xAAAAAAAAAAAAAAABLL * (v7[1] - *v7);
    v26 = v22;
    v27 = 4 * v19;
    do
    {
      if (v25 <= v24)
      {
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      v28 = &v73[3 * v24];
      v29 = *v28;
      v30 = v28[1];
      if (v29 != v30)
      {
        v31 = 0;
        do
        {
          v32 = v31;
          v34 = *v29++;
          v33 = v34;
          if (v34 > 0)
          {
            ++v31;
          }
        }

        while (v29 != v30);
        if (v31)
        {
          v35 = 4 * v31;
          if (v33 <= 0)
          {
            v36 = v32;
          }

          else
          {
            v36 = v32 + 1;
          }

          v37 = v26;
          do
          {
            bzero(v37, v35);
            v37 += 4 * v15;
            --v36;
          }

          while (v36);
        }
      }

      ++v24;
      v26 += v27;
    }

    while (v24 != v23);
  }

  else
  {
    if (!v78)
    {
      goto LABEL_45;
    }

    v67 = (v8 + 96);
    v68 = v7;
    v38 = 0;
    v39 = 4 * v19;
    v69 = v8;
    v70 = v14 >> 1;
    v40 = (v14 >> 1) + 4;
    if (v15 <= 1)
    {
      v41 = 1;
    }

    else
    {
      v41 = v15;
    }

    v42 = v22;
    do
    {
      if (v72 != v71)
      {
        v43 = 0;
        v44 = v42;
        v45 = v70;
        do
        {
          if (v15 > v43)
          {
            bzero(v44, v45);
          }

          ++v43;
          v45 -= 4;
          v44 += v40;
        }

        while (v41 != v43);
      }

      ++v38;
      v42 += v39;
    }

    while (v38 != v23);
  }

  v7 = v68;
  v8 = v69;
  v21 = v67;
LABEL_45:
  v46 = v23 * v15 * *(v8 + 144);
  v77 = 0;
  std::vector<float>::vector[abi:ne200100](&v74, v46);
  v47 = *(v8 + 120);
  if (v47)
  {
    *(v8 + 128) = v47;
    operator delete(v47);
    *(v8 + 120) = 0;
    *(v8 + 128) = 0;
    *(v8 + 136) = 0;
  }

  v48 = v74;
  *(v8 + 120) = v74;
  *(v8 + 136) = v75;
  v49 = *v7;
  v50 = v7[1];
  v51 = v50 - *v7;
  if (v50 != *v7)
  {
    v52 = 0;
    v53 = 0xAAAAAAAAAAAAAAABLL * (v51 >> 3);
    if (v53 <= 1)
    {
      v53 = 1;
    }

    do
    {
      v54 = v49[3 * v52];
      v55 = v49[3 * v52 + 1];
      v56 = v55 - v54;
      if (v55 != v54)
      {
        v57 = 0;
        v58 = v56 >> 3;
        v59 = *(v8 + 144);
        if (v58 <= 1)
        {
          v58 = 1;
        }

        v60 = (v48 + 8 + 4 * v15 * v59 * v52);
        v61 = 4 * v59;
        do
        {
          v62 = *(v54 + 8 * v57);
          v63 = v57;
          if (v62 <= 0)
          {
            v63 = 0.0;
          }

          *(v60 - 2) = v62;
          *(v60 - 1) = v63;
          *v60 = 0.0;
          ++v57;
          v60 = (v60 + v61);
        }

        while (v58 != v57);
      }

      ++v52;
    }

    while (v52 != v53);
  }

  v64 = (*(*v8 + 112))(v8);
  corelm::LanguageModel::calculateProbsOnSequence<float,void>((v64 + 16), (v8 + 120), v21, v78, v15, *(v8 + 144), &v74);
  return v76;
}

void corelm::LanguageModelForANE::updateWithContextIDs()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "NOT supported on ANE");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void corelm::LanguageModelForANE::updateWithContext()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "NOT supported on ANE");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void corelm::LanguageModelForANE::clear(corelm::LanguageModelForANE *this)
{
  v1 = (*(*this + 112))(this);
  *(v1 + 144) = *(v1 + 136);
  v2 = (v1 + 16);

  corelm::NeuralNetwork::clear(v2);
}

void corelm::LanguageModelForANE::setOutputProbs()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "updateWithContextIDs is not supported");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void corelm::LanguageModelForANE::getNetworkStates(corelm::LanguageModelForANE *this)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "NOT supported on ANE");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void corelm::LanguageModelForANE::copyNetworkStates(corelm::LanguageModelForANE *this)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "NOT supported on ANE");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void corelm::LanguageModelForANE::setNetworkStates()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "NOT supported on ANE");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void corelm::LanguageModelForANE::copyOutputProbs(corelm::LanguageModelForANE *this)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "NOT supported on ANE");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void corelm::LanguageModelForANE::getOutputProbs(corelm::LanguageModelForANE *this)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "NOT supported on ANE");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "NOT supported on ANE");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void corelm::LanguageModelForANE::topKCandidates(corelm::LanguageModelForANE *this)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "NOT supported on ANE");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void corelm::LanguageModelForANE::getInputPositionOffset(corelm::LanguageModelForANE *this)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "NOT supported on ANE");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void corelm::LanguageModelWithState::~LanguageModelWithState(CFTypeRef *this)
{
  corelm::LanguageModelWithState::~LanguageModelWithState(this);

  JUMPOUT(0x19EAF8CA0);
}

{
  *this = &unk_1F10AD7F0;
  CFRelease(this[10]);
  v2 = this[7];
  if (v2)
  {
    this[8] = v2;
    operator delete(v2);
  }

  if (*(this + 48) == 1)
  {
    v3 = this[5];
    if (v3)
    {
      CFRelease(v3);
    }
  }

  std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::destroy((this + 2), this[3]);
}

uint64_t corelm::LanguageModelWithState::calculateProbsOnSequence(uint64_t a1, uint64_t *a2, int a3)
{
  if (a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "auto-encoding not supported for this configuration");
    goto LABEL_8;
  }

  if (a2[1] == *a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "input batch size is zero");
    goto LABEL_8;
  }

  v3 = *(*a2 + 8) - **a2;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "input seqence length is zero");
LABEL_8:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  corelm::LanguageModel::calculateProbsOnSequence<long,void>(*(a1 + 80) + 16, a2, v3 >> 3, v6);
  return v6[3];
}

uint64_t corelm::LanguageModelWithState::updateWithContextIDs(uint64_t a1, uint64_t *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 80);
  v4 = *a2;
  if (a2[1] != *a2)
  {
    v6 = 0;
    do
    {
      v21 = *(v4 + 8 * v6);
      v15 = 0;
      v16 = 0;
      __p = 0;
      std::vector<long>::__init_with_size[abi:ne200100]<long const*,long const*>(&__p, &v21, v22, 1uLL);
      LOBYTE(cf) = 0;
      v20 = 0;
      v7 = *(a1 + 48);
      if (v7 == 1)
      {
        std::__construct_at[abi:ne200100]<applesauce::CF::ArrayRef,applesauce::CF::ArrayRef const&,applesauce::CF::ArrayRef*>(&cf, (a1 + 40));
        v20 = 1;
      }

      v8 = *(a1 + 88);
      v9 = __p;
      v10 = v15;
      LOBYTE(v21) = 0;
      v22[0] = 0;
      if (v7)
      {
        v11 = cf;
        if (cf)
        {
          CFRetain(cf);
        }

        v21 = v11;
        v22[0] = 1;
      }

      corelm::LanguageModel::updateModel<long,void>(v3 + 16, v9, (v10 - v9) >> 3, &v21, v8);
      if (v22[0] == 1 && v21)
      {
        CFRelease(v21);
      }

      if (v20 == 1 && cf)
      {
        CFRelease(cf);
      }

      *(a1 + 88) += (v15 - __p) >> 3;
      corelm::NeuralNetwork::copyStates((v3 + 16), &v21);
      v17 = v21;
      v18 = 1;
      (*(*a1 + 80))(a1, &v17);
      if (v18 == 1 && v17)
      {
        CFRelease(v17);
      }

      if (__p)
      {
        v15 = __p;
        operator delete(__p);
      }

      ++v6;
      v4 = *a2;
    }

    while (v6 < (a2[1] - *a2) >> 3);
  }

  corelm::LanguageModel::getOutputProbs((v3 + 16), 1uLL, 0, &__p);
  result = (*(*a1 + 56))(a1, &__p);
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19D1C7F7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void corelm::LanguageModelWithState::updateWithContext(void *a1, uint64_t *a2)
{
  v3 = *(a1[10] + 120);
  if ((*(a2 + 23) & 0x8000000000000000) != 0)
  {
    v4 = *a2;
    v6 = a2[1] == 0;
  }

  (*(*v3 + 16))(__p);
  (*(*a1 + 24))(a1, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_19D1C8090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void corelm::LanguageModelWithState::clear(corelm::LanguageModelWithState *this)
{
  *(this + 8) = *(this + 7);
  v1 = *(this + 10);
  v1[18] = v1[17];
  corelm::NeuralNetwork::clear((v1 + 2));
}

void corelm::LanguageModelWithState::reset(corelm::LanguageModelWithState *this)
{
  LOBYTE(cf) = 0;
  v5 = 0;
  (*(*this + 80))(this, &cf);
  if (v5 == 1 && cf)
  {
    CFRelease(cf);
  }

  *(this + 11) = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  (*(*this + 32))(this, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_19D1C818C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t corelm::LanguageModelWithState::setOutputProbs(void *a1, CoreNLP::ModelContainer *this)
{
  v14 = *MEMORY[0x1E69E9840];
  Revision = CoreNLP::ModelContainer::getRevision(this);
  corelm::util::Matrix<float>::row(this, Revision - 1, &__src);
  std::vector<float>::vector[abi:ne200100](&v9, v13);
  v5 = a1[7];
  if (v5)
  {
    a1[8] = v5;
    operator delete(v5);
    a1[7] = 0;
    a1[8] = 0;
    a1[9] = 0;
  }

  v6 = v9;
  *(a1 + 7) = v9;
  a1[9] = v10;
  memmove(v6, __src, 4 * v13);
  result = std::__function::__value_func<unsigned long ()(unsigned long,unsigned long)>::~__value_func[abi:ne200100](&v12);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19D1C8288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<unsigned long ()(unsigned long,unsigned long)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

CFTypeRef *corelm::LanguageModelWithState::getNetworkStates@<X0>(CFTypeRef *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  if (*(this + 48) == 1)
  {
    this = std::__construct_at[abi:ne200100]<applesauce::CF::ArrayRef,applesauce::CF::ArrayRef const&,applesauce::CF::ArrayRef*>(a2, this + 5);
    *(a2 + 8) = 1;
  }

  return this;
}

CFTypeRef *corelm::LanguageModelWithState::copyNetworkStates@<X0>(CFTypeRef *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  if (*(this + 48) == 1)
  {
    this = std::__construct_at[abi:ne200100]<applesauce::CF::ArrayRef,applesauce::CF::ArrayRef const&,applesauce::CF::ArrayRef*>(a2, this + 5);
    *(a2 + 8) = 1;
  }

  return this;
}

uint64_t corelm::LanguageModelWithState::copyOutputProbs@<X0>(corelm::LanguageModelWithState *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a2, *(this + 7), *(this + 8), (*(this + 8) - *(this + 7)) >> 2);
}

uint64_t corelm::LanguageModelWithState::getOutputProbs(corelm::LanguageModelWithState *this)
{
  if (*(this + 7) == *(this + 8))
  {
    return 0;
  }

  else
  {
    return *(this + 7);
  }
}

double corelm::LanguageModelWithState::getOutputProbs(corelm::LanguageModelWithState *this, uint64_t a2)
{
  v2 = *(this + 7);
  if (v2 == *(this + 8))
  {
    return 0.0;
  }

  LODWORD(result) = *(v2 + 4 * a2);
  return result;
}

void corelm::LanguageModel::calculateProbsOnSequence<long,void>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = *MEMORY[0x1E69E9840];
  v8 = *a2;
  v7 = a2[1];
  v9 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a2) >> 3);
  v10 = corelm::NeuralNetwork::outputDimension(a1);
  v25 = v9 * a3;
  std::vector<float>::resize((a1 + 120), v9 * a3 * v10);
  bzero(*(a1 + 120), *(a1 + 128) - *(a1 + 120));
  if (v7 != v8)
  {
    v11 = 0;
    v12 = 0;
    if (v9 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v9;
    }

    v27 = 4 * v10 * a3;
    v28 = v13;
    do
    {
      v14 = *(*a2 + 24 * v12);
      v15 = *(*a2 + 24 * v12 + 8);
      LOBYTE(cf) = 0;
      v36 = 0;
      v16 = v15 - v14;
      if (v16)
      {
        v17 = 0;
        v18 = 0;
        v19 = v16 >> 3;
        if (v19 <= 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = v19;
        }

        v29 = v11;
        do
        {
          __p.n128_u64[0] = *(*(*a2 + 24 * v12) + 8 * v18);
          v33 = 0;
          v34 = 0;
          v32 = 0;
          std::vector<long>::__init_with_size[abi:ne200100]<long const*,long const*>(&v32, &__p, &__p.n128_i64[1], 1uLL);
          std::string::basic_string[abi:ne200100]<0>(&__p, "input");
          corelm::NeuralNetwork::setInputTensor<long,void>(a1, v32, (v33 - v32) >> 3, &__p, 1);
          if (SHIBYTE(v38) < 0)
          {
            operator delete(__p.n128_u64[0]);
          }

          if (corelm::util::contains<std::string,char const*,void>((a1 + 8), "position"))
          {
            *bytes = v18;
            v38 = 0;
            __p = 0uLL;
            std::vector<long>::__init_with_size[abi:ne200100]<long const*,long const*>(&__p, bytes, &v41, 1uLL);
            std::string::basic_string[abi:ne200100]<0>(bytes, "position");
            corelm::NeuralNetwork::setInputTensor<long,void>(a1, __p.n128_u64[0], (__p.n128_u64[1] - __p.n128_u64[0]) >> 3, bytes, 1);
            if (v42 < 0)
            {
              operator delete(*bytes);
            }

            if (__p.n128_u64[0])
            {
              __p.n128_u64[1] = __p.n128_u64[0];
              operator delete(__p.n128_u64[0]);
            }
          }

          if (corelm::util::contains<std::string,char const*,void>((a1 + 8), "temperature"))
          {
            v30.n128_u32[0] = *(a1 + 112);
            v38 = 0;
            __p = 0uLL;
            std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, &v30, v30.n128_i64 + 4, 1uLL);
            std::string::basic_string[abi:ne200100]<0>(bytes, "temperature");
            corelm::NeuralNetwork::setInputTensor<float,void>(a1, __p.n128_i64[0], (__p.n128_u64[1] - __p.n128_u64[0]) >> 2, bytes, 1);
            if (v42 < 0)
            {
              operator delete(*bytes);
            }

            if (__p.n128_u64[0])
            {
              __p.n128_u64[1] = __p.n128_u64[0];
              operator delete(__p.n128_u64[0]);
            }
          }

          if (corelm::util::contains<std::string,char const*,void>((a1 + 8), "segment"))
          {
            v30.n128_u32[0] = 0;
            v38 = 0;
            __p = 0uLL;
            std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, &v30, v30.n128_i64 + 4, 1uLL);
            std::string::basic_string[abi:ne200100]<0>(bytes, "segment");
            corelm::NeuralNetwork::setInputTensor<float,void>(a1, __p.n128_i64[0], (__p.n128_u64[1] - __p.n128_u64[0]) >> 2, bytes, 1);
            if (v42 < 0)
            {
              operator delete(*bytes);
            }

            if (__p.n128_u64[0])
            {
              __p.n128_u64[1] = __p.n128_u64[0];
              operator delete(__p.n128_u64[0]);
            }
          }

          v21 = 0;
          __p.n128_u64[0] = 0;
          if (v17)
          {
            v21 = cf;
            if (cf)
            {
              CFRetain(cf);
            }
          }

          v31 = v21;
          corelm::NeuralNetwork::predict(a1, &v31);
          if (v31)
          {
            CFRelease(v31);
          }

          corelm::NeuralNetwork::copyStates(a1, &__p);
          if (v17)
          {
            v22 = cf;
            cf = __p.n128_u64[0];
            __p.n128_u64[0] = v22;
            if (v22)
            {
              CFRelease(v22);
            }
          }

          else
          {
            v36 = 1;
            cf = __p.n128_u64[0];
          }

          v23 = *(a1 + 120);
          v30.n128_u64[0] = v10;
          v30.n128_u64[1] = 1;
          std::string::basic_string[abi:ne200100]<0>(bytes, "output");
          corelm::NeuralNetwork::getOutput<2ul>(bytes, a1, &v30, 1, &__p);
          memcpy((v23 + v11), __src, 4 * v10);
          if (v42 < 0)
          {
            operator delete(*bytes);
          }

          if (v32)
          {
            v33 = v32;
            operator delete(v32);
          }

          ++v18;
          v11 += 4 * v10;
          v17 = 1;
        }

        while (v20 != v18);
        v11 = v29;
        if (cf)
        {
          CFRelease(cf);
        }
      }

      ++v12;
      v11 += v27;
    }

    while (v12 != v28);
  }

  __p.n128_u64[0] = v10;
  __p.n128_u64[1] = v25;
  corelm::util::Matrix<float>::Matrix(a4, *(a1 + 120), &__p, 1);
  v24 = *MEMORY[0x1E69E9840];
}

uint64_t std::__function::__func<corelm::util::Matrix<float>::row(unsigned long)::{lambda(unsigned long,unsigned long)#1},std::allocator<corelm::util::Matrix<float>::row(unsigned long)::{lambda(unsigned long,unsigned long)#1}>,unsigned long ()(unsigned long,unsigned long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F10AD890;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<corelm::util::Matrix<float>::row(unsigned long)::{lambda(unsigned long,unsigned long)#1},std::allocator<corelm::util::Matrix<float>::row(unsigned long)::{lambda(unsigned long,unsigned long)#1}>,unsigned long ()(unsigned long,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<unsigned long ()(unsigned long,unsigned long)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<unsigned long ()(unsigned long,unsigned long)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__optional_storage_base<applesauce::CF::ArrayRef,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<applesauce::CF::ArrayRef,false> const&>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8))
  {
    if (*(a1 + 8))
    {
      v3 = *a1;
      v4 = *a2;
      *a1 = *a2;
      if (v4)
      {
        CFRetain(v4);
      }

      if (v3)
      {
        CFRelease(v3);
      }
    }
  }

  else if (*(a1 + 8))
  {

    std::__optional_destruct_base<applesauce::CF::ArrayRef,false>::reset[abi:ne200100](a1);
  }

  else
  {
    std::__construct_at[abi:ne200100]<applesauce::CF::ArrayRef,applesauce::CF::ArrayRef const&,applesauce::CF::ArrayRef*>(a1, a2);
    *(a1 + 8) = 1;
  }
}

void std::__optional_destruct_base<applesauce::CF::ArrayRef,false>::reset[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    *(a1 + 8) = 0;
  }
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19D1C8C94(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void corelm::util::topKWithIndices<float,unsigned long>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  std::vector<std::pair<float,unsigned long>>::vector[abi:ne200100](v7, a2);
  corelm::util::enumerate<float,unsigned long>(a1, &__p);
  _ZNSt3__119__partial_sort_copyB8ne200100INS_17_ClassicAlgPolicyERZN6corelm4util15topKWithIndicesIfmEEDaRKNS_6vectorIT_NS_9allocatorIS7_EEEEiE11PairGreaterNS_11__wrap_iterIPNS_4pairIfmEEEESJ_SJ_SJ_NS_10__identityESK_EENSG_IT1_T3_EESL_T2_SM_T4_OT0_OT5_OT6_(__p, v6, v7[0], v7[1], &v9);
  *a3 = *v7;
  *(a3 + 16) = v8;
  v7[0] = 0;
  v7[1] = 0;
  v8 = 0;
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
    if (v7[0])
    {
      v7[1] = v7[0];
      operator delete(v7[0]);
    }
  }
}

void sub_19D1C8D44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void corelm::util::enumerate<float,unsigned long>(uint64_t *a1@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = a1[1] - *a1;
  if (v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = v3 >> 2;
    do
    {
      v8 = *a1;
      v9 = a2[2];
      if (v5 >= v9)
      {
        v10 = *a2;
        v11 = v5 - *a2;
        v12 = v11 >> 4;
        v13 = (v11 >> 4) + 1;
        if (v13 >> 60)
        {
          std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
        }

        v14 = v9 - v10;
        if (v14 >> 3 > v13)
        {
          v13 = v14 >> 3;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFF0)
        {
          v15 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<float,unsigned long>>>(a2, v15);
        }

        v16 = 16 * v12;
        *v16 = *(v8 + 4 * v6);
        *(v16 + 8) = v6;
        v5 = 16 * v12 + 16;
        v17 = (v16 - 16 * (v11 >> 4));
        memcpy(v17, v10, v11);
        v18 = *a2;
        *a2 = v17;
        a2[1] = v5;
        a2[2] = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v5 = *(v8 + 4 * v6);
        *(v5 + 8) = v6;
        v5 += 16;
      }

      a2[1] = v5;
      ++v6;
    }

    while (v7 != v6);
  }
}

void sub_19D1C8EB4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<std::pair<float,unsigned long>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::pair<float,unsigned long>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_19D1C8F30(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<float,unsigned long>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<float,unsigned long>>>(a1, a2);
  }

  std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
}

uint64_t _ZNSt3__119__partial_sort_copyB8ne200100INS_17_ClassicAlgPolicyERZN6corelm4util15topKWithIndicesIfmEEDaRKNS_6vectorIT_NS_9allocatorIS7_EEEEiE11PairGreaterNS_11__wrap_iterIPNS_4pairIfmEEEESJ_SJ_SJ_NS_10__identityESK_EENSG_IT1_T3_EESL_T2_SM_T4_OT0_OT5_OT6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a4)
  {
    v8 = a1;
    v9 = a3;
    if (a1 != a2)
    {
      do
      {
        *v9 = *v8;
        *(v9 + 8) = *(v8 + 8);
        v8 += 16;
        v9 += 16;
      }

      while (v8 != a2 && v9 != a4);
    }

    v11 = (v9 - a3) >> 4;
    if (v11 >= 2)
    {
      v12 = (v11 - 2) >> 1;
      v13 = a3 + 16 * v12;
      v14 = v12 + 1;
      do
      {
        _ZNSt3__111__sift_downB8ne200100INS_17_ClassicAlgPolicyERZN6corelm4util15topKWithIndicesIfmEEDaRKNS_6vectorIT_NS_9allocatorIS7_EEEEiE11PairGreaterNS_11__wrap_iterIPNS_4pairIfmEEEEEEvT1_OT0_NS_15iterator_traitsISK_E15difference_typeESK_(a3, a5, (v9 - a3) >> 4, v13);
        v13 -= 16;
        --v14;
      }

      while (v14);
    }

    while (v8 != a2)
    {
      if (*v8 > *a3)
      {
        *a3 = *v8;
        *(a3 + 8) = *(v8 + 8);
        _ZNSt3__111__sift_downB8ne200100INS_17_ClassicAlgPolicyERZN6corelm4util15topKWithIndicesIfmEEDaRKNS_6vectorIT_NS_9allocatorIS7_EEEEiE11PairGreaterNS_11__wrap_iterIPNS_4pairIfmEEEEEEvT1_OT0_NS_15iterator_traitsISK_E15difference_typeESK_(a3, a5, (v9 - a3) >> 4, a3);
      }

      v8 += 16;
    }

    if (v11 >= 2)
    {
      v15 = v9 - 16;
      do
      {
        v16 = *a3;
        v17 = *(a3 + 8);
        _ZNSt3__117__floyd_sift_downB8ne200100INS_17_ClassicAlgPolicyERZN6corelm4util15topKWithIndicesIfmEEDaRKNS_6vectorIT_NS_9allocatorIS7_EEEEiE11PairGreaterNS_11__wrap_iterIPNS_4pairIfmEEEEEET1_SK_OT0_NS_15iterator_traitsISK_E15difference_typeE(a3, a5, v11);
        if (v15 == v18)
        {
          *v18 = v16;
          *(v18 + 8) = v17;
        }

        else
        {
          *v18 = *v15;
          *(v18 + 8) = *(v15 + 8);
          *v15 = v16;
          *(v15 + 8) = v17;
          _ZNSt3__19__sift_upB8ne200100INS_17_ClassicAlgPolicyERZN6corelm4util15topKWithIndicesIfmEEDaRKNS_6vectorIT_NS_9allocatorIS7_EEEEiE11PairGreaterNS_11__wrap_iterIPNS_4pairIfmEEEEEEvT1_SK_OT0_NS_15iterator_traitsISK_E15difference_typeE(a3, v18 + 16, a5, (v18 + 16 - a3) >> 4);
        }

        v15 -= 16;
      }

      while (v11-- > 2);
    }
  }

  return a2;
}

uint64_t _ZNSt3__111__sift_downB8ne200100INS_17_ClassicAlgPolicyERZN6corelm4util15topKWithIndicesIfmEEDaRKNS_6vectorIT_NS_9allocatorIS7_EEEEiE11PairGreaterNS_11__wrap_iterIPNS_4pairIfmEEEEEEvT1_OT0_NS_15iterator_traitsISK_E15difference_typeESK_(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) | 1;
      v8 = result + 16 * v7;
      v9 = v6 + 2;
      if (v9 < a3 && *v8 > *(v8 + 16))
      {
        v8 += 16;
        v7 = v9;
      }

      v10 = *a4;
      v11 = *v8;
      v12 = *a4;
      if (*v8 <= *a4)
      {
        v13 = *(a4 + 8);
        do
        {
          v14 = a4;
          a4 = v8;
          *v14 = v11;
          *(v14 + 8) = *(v8 + 8);
          if (v5 < v7)
          {
            break;
          }

          v15 = 2 * v7;
          v7 = (2 * v7) | 1;
          v8 = result + 16 * v7;
          v16 = v15 + 2;
          if (v16 < a3 && *v8 > *(v8 + 16))
          {
            v8 += 16;
            v7 = v16;
          }

          v11 = *v8;
        }

        while (*v8 <= v12);
        *a4 = v10;
        *(a4 + 8) = v13;
      }
    }
  }

  return result;
}

float _ZNSt3__117__floyd_sift_downB8ne200100INS_17_ClassicAlgPolicyERZN6corelm4util15topKWithIndicesIfmEEDaRKNS_6vectorIT_NS_9allocatorIS7_EEEEiE11PairGreaterNS_11__wrap_iterIPNS_4pairIfmEEEEEET1_SK_OT0_NS_15iterator_traitsISK_E15difference_typeE(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = a1;
    a1 += 16 * v3 + 16;
    v5 = 2 * v3;
    v3 = (2 * v3) | 1;
    v6 = v5 + 2;
    if (v6 < a3 && *a1 > *(a1 + 16))
    {
      a1 += 16;
      v3 = v6;
    }

    result = *a1;
    *v4 = *a1;
    *(v4 + 8) = *(a1 + 8);
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t _ZNSt3__19__sift_upB8ne200100INS_17_ClassicAlgPolicyERZN6corelm4util15topKWithIndicesIfmEEDaRKNS_6vectorIT_NS_9allocatorIS7_EEEEiE11PairGreaterNS_11__wrap_iterIPNS_4pairIfmEEEEEEvT1_SK_OT0_NS_15iterator_traitsISK_E15difference_typeE(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = result + 16 * v4;
    v8 = *(a2 - 16);
    v6 = a2 - 16;
    v7 = v8;
    v9 = *v5;
    v10 = v8;
    if (*v5 > v8)
    {
      v11 = *(v6 + 8);
      do
      {
        v12 = v6;
        v6 = v5;
        *v12 = v9;
        *(v12 + 8) = *(v5 + 8);
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = result + 16 * v4;
        v9 = *v5;
      }

      while (*v5 > v10);
      *v6 = v7;
      *(v6 + 8) = v11;
    }
  }

  return result;
}

void corelm::LanguageModel::calculateProbsOnSequence<float,void>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "output");
  v14 = corelm::NeuralNetwork::outputDimension(a1, &__p);
  if (SHIBYTE(__p.data) < 0)
  {
    operator delete(__p.isa);
  }

  v15 = *a2;
  std::string::basic_string[abi:ne200100]<0>(&__p, "input");
  corelm::NeuralNetwork::setInputTensorANE<float,void>(a1, v15, a5, &__p, a6, a4);
  if (SHIBYTE(__p.data) < 0)
  {
    operator delete(__p.isa);
  }

  v16 = *a3;
  std::string::basic_string[abi:ne200100]<0>(&__p, "qk_mask");
  corelm::NeuralNetwork::setInputTensorANE<float,void>(a1, v16, a5, &__p, a5, a4);
  if (SHIBYTE(__p.data) < 0)
  {
    operator delete(__p.isa);
  }

  cf = 0;
  corelm::NeuralNetwork::predict(a1, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  v17.n128_u64[0] = v14;
  v17.n128_u64[1] = a5 * a4;
  std::string::basic_string[abi:ne200100]<0>(&__p, "output");
  corelm::NeuralNetwork::getOutput<2ul>(&__p, a1, &v17, 1, a7);
  if (SHIBYTE(__p.data) < 0)
  {
    operator delete(__p.isa);
  }
}

void sub_19D1C9418(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<long>(void ****a1)
{
  v2 = a1[1] - *a1;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  std::vector<applesauce::CF::NumberRef>::reserve(&v8, v2);
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v5 = v9;
    do
    {
      v11 = *v3;
      if (v5 >= v10)
      {
        v5 = std::vector<applesauce::CF::NumberRef>::__emplace_back_slow_path<long>(&v8, &v11);
      }

      else
      {
        std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,long,0>(&v8, v5++, &v11);
      }

      v9 = v5;
      ++v3;
    }

    while (v3 != v4);
  }

  v6 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::NumberRef>(&v8);
  v11 = &v8;
  std::vector<applesauce::CF::NumberRef>::__destroy_vector::operator()[abi:ne200100](&v11);
  return v6;
}

void sub_19D1C9518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<applesauce::CF::NumberRef>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void *std::vector<applesauce::CF::NumberRef>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::NumberRef>>(result, a2);
    }

    std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_19D1C95EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<applesauce::CF::NumberRef>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<applesauce::CF::NumberRef>(uint64_t **a1)
{
  std::vector<void const*>::vector[abi:ne200100](__p, a1[1] - *a1);
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    v4 = __p[0];
    do
    {
      v5 = *v2++;
      *v4++ = v5;
    }

    while (v2 != v3);
  }

  CFArray = applesauce::CF::details::make_CFArrayRef<void const*>(__p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return CFArray;
}

void sub_19D1C967C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::NumberRef>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::NumberRef>,applesauce::CF::NumberRef*>(uint64_t a1, CFTypeRef *a2, CFTypeRef *a3, CFTypeRef *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
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
      *a4++ = *v7;
      *v7++ = 0;
    }

    while (v7 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator<applesauce::CF::NumberRef>::destroy[abi:ne200100](a1, v5++);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<applesauce::CF::NumberRef>,applesauce::CF::NumberRef*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

void std::allocator<applesauce::CF::NumberRef>::destroy[abi:ne200100](uint64_t a1, CFTypeRef *a2)
{
  if (*a2)
  {
    CFRelease(*a2);
  }
}

const void **applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<applesauce::CF::NumberRef>,applesauce::CF::NumberRef*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<applesauce::CF::NumberRef>,applesauce::CF::NumberRef*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<applesauce::CF::NumberRef>,applesauce::CF::NumberRef*>::operator()[abi:ne200100](uint64_t *a1)
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
      std::allocator<applesauce::CF::NumberRef>::destroy[abi:ne200100](v5, --v3);
    }

    while (v3 != v4);
  }
}

void **std::__split_buffer<applesauce::CF::NumberRef>::~__split_buffer(void **a1)
{
  std::__split_buffer<applesauce::CF::NumberRef>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<applesauce::CF::NumberRef>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 8;
    std::allocator<applesauce::CF::NumberRef>::destroy[abi:ne200100](v4, (i - 8));
  }
}

uint64_t std::vector<applesauce::CF::NumberRef>::__emplace_back_slow_path<long>(uint64_t a1, uint64_t *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::NumberRef>>(a1, v7);
  }

  v14 = 0;
  v15 = 8 * v2;
  std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,long,0>(a1, (8 * v2), a2);
  v16 = (8 * v2 + 8);
  v8 = *(a1 + 8);
  v9 = (8 * v2 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::NumberRef>,applesauce::CF::NumberRef*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<applesauce::CF::NumberRef>::~__split_buffer(&v14);
  return v13;
}

void sub_19D1C99E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<applesauce::CF::NumberRef>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

CFNumberRef std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,long,0>(uint64_t a1, CFNumberRef *a2, uint64_t *a3)
{
  valuePtr = *a3;
  result = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
  *a2 = result;
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

void *std::vector<void const*>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<void const*>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_19D1C9B04(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<applesauce::CF::NumberRef>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::allocator<applesauce::CF::NumberRef>::destroy[abi:ne200100](v1, --v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

__n128 applesauce::CF::convert_or<std::vector<long>,0>@<Q0>(const __CFArray *a1@<X0>, __n128 *a2@<X1>, __n128 *a3@<X8>)
{
  applesauce::CF::convert_as<std::vector<long>,0>(a1, &__p);
  if (v8 == 1)
  {
    a3->n128_u64[0] = 0;
    a3->n128_u64[1] = 0;
    a3[1].n128_u64[0] = 0;
    std::vector<long>::__init_with_size[abi:ne200100]<long *,long *>(a3, __p, v7, (v7 - __p) >> 3);
    if (v8)
    {
      if (__p)
      {
        v7 = __p;
        operator delete(__p);
      }
    }
  }

  else
  {
    result = *a2;
    *a3 = *a2;
    a3[1].n128_u64[0] = a2[1].n128_u64[0];
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    a2->n128_u64[0] = 0;
  }

  return result;
}

void applesauce::CF::convert_as<std::vector<long>,0>(const __CFArray *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1 && (TypeID = CFArrayGetTypeID(), TypeID == CFGetTypeID(a1)))
  {

    applesauce::CF::details::CFArray_get_value_as<std::vector<long>>(a1, a2);
  }

  else
  {
    *a2 = 0;
    a2[24] = 0;
  }
}

void applesauce::CF::details::CFArray_get_value_as<std::vector<long>>(const __CFArray *a1@<X0>, uint64_t a2@<X8>)
{
  Count = CFArrayGetCount(a1);
  __src = 0;
  v20 = 0;
  v21 = 0;
  std::vector<unsigned long>::reserve(&__src, Count);
  if (Count <= 0)
  {
    v10 = v20;
LABEL_19:
    v18 = v21;
    *a2 = __src;
    *(a2 + 8) = v10;
    *(a2 + 16) = v18;
    *(a2 + 24) = 1;
  }

  else
  {
    v5 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v5);
      v7 = applesauce::CF::convert_as<long,0>(ValueAtIndex);
      if ((v8 & 1) == 0)
      {
        break;
      }

      v9 = v20;
      if (v20 >= v21)
      {
        v11 = __src;
        v12 = v20 - __src;
        v13 = (v20 - __src) >> 3;
        v14 = v13 + 1;
        if ((v13 + 1) >> 61)
        {
          std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
        }

        v15 = v21 - __src;
        if ((v21 - __src) >> 2 > v14)
        {
          v14 = v15 >> 2;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFF8)
        {
          v16 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__src, v16);
        }

        *(8 * v13) = v7;
        v10 = 8 * v13 + 8;
        memcpy(0, v11, v12);
        v17 = __src;
        __src = 0;
        v20 = v10;
        v21 = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      else
      {
        *v20 = v7;
        v10 = (v9 + 8);
      }

      v20 = v10;
      if ((Count & 0x7FFFFFFF) == ++v5)
      {
        goto LABEL_19;
      }
    }

    *a2 = 0;
    *(a2 + 24) = 0;
    if (__src)
    {
      v20 = __src;
      operator delete(__src);
    }
  }
}

const __CFBoolean *applesauce::CF::convert_as<long,0>(const __CFNumber *a1)
{
  if (a1 && (TypeID = CFNumberGetTypeID(), TypeID == CFGetTypeID(a1)))
  {
    return applesauce::CF::details::number_convert_as<long>(a1);
  }

  else
  {
    return applesauce::CF::details::treat_as_BOOL_for_convert_as<long>(a1);
  }
}

const __CFBoolean *applesauce::CF::details::treat_as_BOOL_for_convert_as<long>(const __CFBoolean *result)
{
  if (result)
  {
    v1 = result;
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(v1))
    {
      return CFBooleanGetValue(v1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t applesauce::CF::details::number_convert_as<long>(const __CFNumber *a1)
{
  switch(CFNumberGetType(a1))
  {
    case kCFNumberSInt8Type:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberSInt8Type;
      goto LABEL_19;
    case kCFNumberSInt16Type:
      LOWORD(valuePtr) = 0;
      v14 = a1;
      v15 = kCFNumberSInt16Type;
      goto LABEL_14;
    case kCFNumberSInt32Type:
      LODWORD(valuePtr) = 0;
      v12 = a1;
      v13 = kCFNumberSInt32Type;
      goto LABEL_32;
    case kCFNumberSInt64Type:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberSInt64Type;
      goto LABEL_27;
    case kCFNumberFloat32Type:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloat32Type;
      goto LABEL_6;
    case kCFNumberFloat64Type:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberFloat64Type;
      goto LABEL_16;
    case kCFNumberCharType:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberCharType;
LABEL_19:
      Value = CFNumberGetValue(v2, v3, &valuePtr);
      v20 = Value != 0;
      if (Value)
      {
        LOBYTE(v21) = LOBYTE(valuePtr);
      }

      else
      {
        LOBYTE(v21) = 0;
      }

      v22 = SLOBYTE(valuePtr) < 0 && v20;
      v23 = v22 << 63 >> 63;
      return v21 | (v23 << 8);
    case kCFNumberShortType:
      LOWORD(valuePtr) = 0;
      v14 = a1;
      v15 = kCFNumberShortType;
LABEL_14:
      v16 = CFNumberGetValue(v14, v15, &valuePtr) == 0;
      v17 = LOBYTE(valuePtr);
      v18 = SLOWORD(valuePtr);
      goto LABEL_33;
    case kCFNumberIntType:
      LODWORD(valuePtr) = 0;
      v12 = a1;
      v13 = kCFNumberIntType;
LABEL_32:
      v16 = CFNumberGetValue(v12, v13, &valuePtr) == 0;
      v17 = LOBYTE(valuePtr);
      v18 = SLODWORD(valuePtr);
LABEL_33:
      v24 = v18 & 0xFFFFFFFFFFFFFF00 | v17;
      if (v16)
      {
        v21 = 0;
      }

      else
      {
        v21 = v24;
      }

      goto LABEL_36;
    case kCFNumberLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongType;
      goto LABEL_27;
    case kCFNumberLongLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongLongType;
      goto LABEL_27;
    case kCFNumberFloatType:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloatType;
LABEL_6:
      v8 = CFNumberGetValue(v6, v7, &valuePtr) == 0;
      v9 = *&valuePtr;
      goto LABEL_28;
    case kCFNumberDoubleType:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberDoubleType;
      goto LABEL_16;
    case kCFNumberCFIndexType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberCFIndexType;
      goto LABEL_27;
    case kCFNumberNSIntegerType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberNSIntegerType;
LABEL_27:
      v8 = CFNumberGetValue(v4, v5, &valuePtr) == 0;
      v9 = *&valuePtr;
      goto LABEL_28;
    case kCFNumberCGFloatType:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberCGFloatType;
LABEL_16:
      v8 = CFNumberGetValue(v10, v11, &valuePtr) == 0;
      v9 = valuePtr;
LABEL_28:
      if (v8)
      {
        v21 = 0;
      }

      else
      {
        v21 = v9;
      }

LABEL_36:
      v23 = v21 >> 8;
      break;
    default:
      v23 = 0;
      LOBYTE(v21) = 0;
      break;
  }

  return v21 | (v23 << 8);
}

void *std::vector<std::string>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void *std::__tree<std::__value_type<long,std::string>,std::__map_value_compare<long,std::__value_type<long,std::string>,std::less<long>,true>,std::allocator<std::__value_type<long,std::string>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<std::string>(__int128 **a1)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  std::vector<applesauce::CF::StringRef>::reserve(&v11, v2);
  v3 = *a1;
  v4 = a1[1];
  while (v3 != v4)
  {
    if (*(v3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v3, *(v3 + 1));
    }

    else
    {
      v5 = *v3;
      __p.__r_.__value_.__r.__words[2] = *(v3 + 2);
      *&__p.__r_.__value_.__l.__data_ = v5;
    }

    v6 = v12;
    if (v12 >= v13)
    {
      v7 = std::vector<applesauce::CF::StringRef>::__emplace_back_slow_path<std::string>(&v11, &__p);
    }

    else
    {
      std::allocator_traits<std::allocator<applesauce::CF::StringRef>>::construct[abi:ne200100]<applesauce::CF::StringRef,std::string,0>(&v11, v12, &__p);
      v7 = v6 + 1;
    }

    v12 = v7;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v3 = (v3 + 24);
  }

  v8 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::NumberRef>(&v11);
  __p.__r_.__value_.__r.__words[0] = &v11;
  std::vector<applesauce::CF::StringRef>::__destroy_vector::operator()[abi:ne200100](&__p);
  return v8;
}

void sub_19D1CA3D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16)
{
  __p = &a15;
  std::vector<applesauce::CF::StringRef>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void *std::vector<applesauce::CF::StringRef>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::NumberRef>>(result, a2);
    }

    std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_19D1CA4C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<applesauce::CF::StringRef>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::StringRef>,applesauce::CF::StringRef*>(uint64_t a1, CFTypeRef *a2, CFTypeRef *a3, CFTypeRef *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
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
      *a4++ = *v7;
      *v7++ = 0;
    }

    while (v7 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator<applesauce::CF::StringRef>::destroy[abi:ne200100](a1, v5++);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<applesauce::CF::StringRef>,applesauce::CF::StringRef*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

void std::allocator<applesauce::CF::StringRef>::destroy[abi:ne200100](uint64_t a1, CFTypeRef *a2)
{
  if (*a2)
  {
    CFRelease(*a2);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<applesauce::CF::StringRef>,applesauce::CF::StringRef*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<applesauce::CF::StringRef>,applesauce::CF::StringRef*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<applesauce::CF::StringRef>,applesauce::CF::StringRef*>::operator()[abi:ne200100](uint64_t *a1)
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
      std::allocator<applesauce::CF::StringRef>::destroy[abi:ne200100](v5, --v3);
    }

    while (v3 != v4);
  }
}

void **std::__split_buffer<applesauce::CF::StringRef>::~__split_buffer(void **a1)
{
  std::__split_buffer<applesauce::CF::StringRef>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<applesauce::CF::StringRef>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 8;
    std::allocator<applesauce::CF::StringRef>::destroy[abi:ne200100](v4, (i - 8));
  }
}

uint64_t std::vector<applesauce::CF::StringRef>::__emplace_back_slow_path<std::string>(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::NumberRef>>(a1, v7);
  }

  v14 = 0;
  v15 = 8 * v2;
  std::allocator_traits<std::allocator<applesauce::CF::StringRef>>::construct[abi:ne200100]<applesauce::CF::StringRef,std::string,0>(a1, (8 * v2), a2);
  v16 = (8 * v2 + 8);
  v8 = *(a1 + 8);
  v9 = (8 * v2 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::StringRef>,applesauce::CF::StringRef*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<applesauce::CF::StringRef>::~__split_buffer(&v14);
  return v13;
}

void sub_19D1CA7AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<applesauce::CF::StringRef>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator_traits<std::allocator<applesauce::CF::StringRef>>::construct[abi:ne200100]<applesauce::CF::StringRef,std::string,0>(uint64_t a1, CFStringRef *a2, uint64_t a3)
{
  v4 = *(a3 + 23);
  if (v4 >= 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = *a3;
  }

  if (v5)
  {
    if (v4 >= 0)
    {
      v6 = *(a3 + 23);
    }

    else
    {
      v6 = *(a3 + 8);
    }

    v7 = CFStringCreateWithBytes(0, v5, v6, 0x8000100u, 0);
    *a2 = v7;
    if (!v7)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    *a2 = 0;
  }
}

void std::vector<applesauce::CF::StringRef>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::allocator<applesauce::CF::StringRef>::destroy[abi:ne200100](v1, --v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

const __CFBoolean *applesauce::CF::details::at_to<long>(const __CFArray *a1, unint64_t a2)
{
  if (!a1 || CFArrayGetCount(a1) <= a2 || (ValueAtIndex = CFArrayGetValueAtIndex(a1, a2)) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return applesauce::CF::convert_to<long,0>(ValueAtIndex);
}

const __CFBoolean *applesauce::CF::convert_to<long,0>(const __CFNumber *a1)
{
  result = applesauce::CF::convert_as<long,0>(a1);
  if ((v2 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<float>(void *a1)
{
  v2 = (a1[1] - *a1) >> 2;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  std::vector<applesauce::CF::NumberRef>::reserve(&v8, v2);
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v5 = v9;
    do
    {
      LODWORD(v11) = *v3;
      if (v5 >= v10)
      {
        v5 = std::vector<applesauce::CF::NumberRef>::__emplace_back_slow_path<float>(&v8, &v11);
      }

      else
      {
        std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,float,0>(&v8, v5++, &v11);
      }

      v9 = v5;
      ++v3;
    }

    while (v3 != v4);
  }

  v6 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::NumberRef>(&v8);
  v11 = &v8;
  std::vector<applesauce::CF::NumberRef>::__destroy_vector::operator()[abi:ne200100](&v11);
  return v6;
}

void sub_19D1CAAF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<applesauce::CF::NumberRef>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t std::vector<applesauce::CF::NumberRef>::__emplace_back_slow_path<float>(uint64_t a1, int *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::NumberRef>>(a1, v7);
  }

  v14 = 0;
  v15 = 8 * v2;
  std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,float,0>(a1, (8 * v2), a2);
  v16 = (8 * v2 + 8);
  v8 = *(a1 + 8);
  v9 = (8 * v2 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::NumberRef>,applesauce::CF::NumberRef*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<applesauce::CF::NumberRef>::~__split_buffer(&v14);
  return v13;
}

void sub_19D1CAC1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<applesauce::CF::NumberRef>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

CFNumberRef std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,float,0>(uint64_t a1, CFNumberRef *a2, int *a3)
{
  valuePtr = *a3;
  result = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  *a2 = result;
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

corelm::LanguageModelWithState *corelm::LanguageModelWithState::LanguageModelWithState(corelm::LanguageModelWithState *this, const corelm::LanguageModelWithState *a2, int a3)
{
  *this = &unk_1F10AD7F0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = this + 24;
  *(this + 40) = 0;
  v5 = (this + 40);
  *(this + 48) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  if (a3)
  {
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(this + 56, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 2);
  }

  v6 = (*(*a2 + 112))(a2);
  *(this + 10) = CFRetain(v6);
  *(this + 11) = 0;
  (*(*a2 + 72))(&cf, a2);
  if (*(this + 48) == v10)
  {
    if (!*(this + 48))
    {
      goto LABEL_12;
    }

    v7 = *v5;
    *v5 = cf;
    cf = v7;
    if (!v7)
    {
      goto LABEL_12;
    }

LABEL_10:
    CFRelease(v7);
    goto LABEL_12;
  }

  if (!*(this + 48))
  {
    *(this + 5) = cf;
    *(this + 48) = 1;
    goto LABEL_12;
  }

  std::__optional_destruct_base<applesauce::CF::ArrayRef,false>::reset[abi:ne200100](v5);
  if (v10)
  {
    v7 = cf;
    if (cf)
    {
      goto LABEL_10;
    }
  }

LABEL_12:
  *(this + 11) = (*(*a2 + 128))(a2);
  return this;
}

const __CFBoolean *applesauce::CF::details::find_at_key_or_optional<unsigned long,__CFString const* const&>(const __CFDictionary *a1, const void **a2)
{
  result = applesauce::CF::details::at_key<__CFString const* const&>(a1, a2);
  if (result)
  {
    return applesauce::CF::convert_as<unsigned long,0>(result);
  }

  return result;
}

const __CFBoolean *applesauce::CF::convert_as<unsigned long,0>(const __CFNumber *a1)
{
  if (a1 && (TypeID = CFNumberGetTypeID(), TypeID == CFGetTypeID(a1)))
  {
    return applesauce::CF::details::number_convert_as<unsigned long>(a1);
  }

  else
  {
    return applesauce::CF::details::treat_as_BOOL_for_convert_as<long>(a1);
  }
}

unint64_t applesauce::CF::details::number_convert_as<unsigned long>(const __CFNumber *a1)
{
  switch(CFNumberGetType(a1))
  {
    case kCFNumberSInt8Type:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberSInt8Type;
      goto LABEL_19;
    case kCFNumberSInt16Type:
      LOWORD(valuePtr) = 0;
      v14 = a1;
      v15 = kCFNumberSInt16Type;
      goto LABEL_14;
    case kCFNumberSInt32Type:
      LODWORD(valuePtr) = 0;
      v12 = a1;
      v13 = kCFNumberSInt32Type;
      goto LABEL_32;
    case kCFNumberSInt64Type:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberSInt64Type;
      goto LABEL_27;
    case kCFNumberFloat32Type:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloat32Type;
      goto LABEL_6;
    case kCFNumberFloat64Type:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberFloat64Type;
      goto LABEL_16;
    case kCFNumberCharType:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberCharType;
LABEL_19:
      Value = CFNumberGetValue(v2, v3, &valuePtr);
      v20 = Value != 0;
      if (Value)
      {
        LOBYTE(v21) = LOBYTE(valuePtr);
      }

      else
      {
        LOBYTE(v21) = 0;
      }

      v22 = SLOBYTE(valuePtr) < 0 && v20;
      v23 = v22 << 63 >> 63;
      return v21 | (v23 << 8);
    case kCFNumberShortType:
      LOWORD(valuePtr) = 0;
      v14 = a1;
      v15 = kCFNumberShortType;
LABEL_14:
      v16 = CFNumberGetValue(v14, v15, &valuePtr) == 0;
      v17 = LOBYTE(valuePtr);
      v18 = SLOWORD(valuePtr);
      goto LABEL_33;
    case kCFNumberIntType:
      LODWORD(valuePtr) = 0;
      v12 = a1;
      v13 = kCFNumberIntType;
LABEL_32:
      v16 = CFNumberGetValue(v12, v13, &valuePtr) == 0;
      v17 = LOBYTE(valuePtr);
      v18 = SLODWORD(valuePtr);
LABEL_33:
      v24 = v18 & 0xFFFFFFFFFFFFFF00 | v17;
      if (v16)
      {
        v21 = 0;
      }

      else
      {
        v21 = v24;
      }

      goto LABEL_36;
    case kCFNumberLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongType;
      goto LABEL_27;
    case kCFNumberLongLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongLongType;
      goto LABEL_27;
    case kCFNumberFloatType:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloatType;
LABEL_6:
      v8 = CFNumberGetValue(v6, v7, &valuePtr) == 0;
      v9 = *&valuePtr;
      goto LABEL_28;
    case kCFNumberDoubleType:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberDoubleType;
      goto LABEL_16;
    case kCFNumberCFIndexType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberCFIndexType;
      goto LABEL_27;
    case kCFNumberNSIntegerType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberNSIntegerType;
LABEL_27:
      v8 = CFNumberGetValue(v4, v5, &valuePtr) == 0;
      v9 = *&valuePtr;
      goto LABEL_28;
    case kCFNumberCGFloatType:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberCGFloatType;
LABEL_16:
      v8 = CFNumberGetValue(v10, v11, &valuePtr) == 0;
      v9 = valuePtr;
LABEL_28:
      if (v8)
      {
        v21 = 0;
      }

      else
      {
        v21 = v9;
      }

LABEL_36:
      v23 = v21 >> 8;
      break;
    default:
      v23 = 0;
      LOBYTE(v21) = 0;
      break;
  }

  return v21 | (v23 << 8);
}

const __CFDictionary *applesauce::CF::details::find_at_key_or_optional<int,__CFString const* const&>(const __CFDictionary *a1, const void **a2)
{
  result = applesauce::CF::details::at_key<__CFString const* const&>(a1, a2);
  if (result)
  {
    return (applesauce::CF::convert_as<int,0>(result) & 0xFFFFFFFFFFLL);
  }

  return result;
}

uint64_t applesauce::CF::convert_as<int,0>(const __CFNumber *a1)
{
  if (a1 && (TypeID = CFNumberGetTypeID(), TypeID == CFGetTypeID(a1)))
  {
    v3 = applesauce::CF::details::number_convert_as<int>(a1);
  }

  else
  {
    v3 = applesauce::CF::details::treat_as_BOOL_for_convert_as<int>(a1);
  }

  return v3 & 0xFFFFFFFFFFLL;
}

uint64_t applesauce::CF::details::treat_as_BOOL_for_convert_as<int>(const __CFBoolean *a1)
{
  if (a1 && (TypeID = CFBooleanGetTypeID(), TypeID == CFGetTypeID(a1)))
  {
    Value = CFBooleanGetValue(a1);
    v4 = 0x100000000;
  }

  else
  {
    Value = 0;
    v4 = 0;
  }

  return v4 | Value;
}

uint64_t applesauce::CF::details::number_convert_as<int>(const __CFNumber *a1)
{
  switch(CFNumberGetType(a1))
  {
    case kCFNumberSInt8Type:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberSInt8Type;
      goto LABEL_21;
    case kCFNumberSInt16Type:
      LOWORD(valuePtr) = 0;
      v12 = a1;
      v13 = kCFNumberSInt16Type;
      goto LABEL_14;
    case kCFNumberSInt32Type:
      LODWORD(valuePtr) = 0;
      v4 = a1;
      v5 = kCFNumberSInt32Type;
      goto LABEL_29;
    case kCFNumberSInt64Type:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberSInt64Type;
      goto LABEL_29;
    case kCFNumberFloat32Type:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloat32Type;
      goto LABEL_6;
    case kCFNumberFloat64Type:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberFloat64Type;
      goto LABEL_18;
    case kCFNumberCharType:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberCharType;
LABEL_21:
      Value = CFNumberGetValue(v2, v3, &valuePtr);
      LOBYTE(v14) = LOBYTE(valuePtr);
      if (!Value)
      {
        LOBYTE(v14) = 0;
      }

      v16 = SLOBYTE(valuePtr) < 0 && Value != 0;
      v17.i64[0] = Value != 0;
      v17.i64[1] = v16 << 63 >> 63;
      break;
    case kCFNumberShortType:
      LOWORD(valuePtr) = 0;
      v12 = a1;
      v13 = kCFNumberShortType;
LABEL_14:
      if (CFNumberGetValue(v12, v13, &valuePtr))
      {
        v14 = SLOWORD(valuePtr) & 0xFFFFFFFFLL | 0x100000000;
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_32;
    case kCFNumberIntType:
      LODWORD(valuePtr) = 0;
      v4 = a1;
      v5 = kCFNumberIntType;
      goto LABEL_29;
    case kCFNumberLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongType;
      goto LABEL_29;
    case kCFNumberLongLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongLongType;
      goto LABEL_29;
    case kCFNumberFloatType:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloatType;
LABEL_6:
      v8 = CFNumberGetValue(v6, v7, &valuePtr);
      v9 = *&valuePtr;
      goto LABEL_30;
    case kCFNumberDoubleType:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberDoubleType;
      goto LABEL_18;
    case kCFNumberCFIndexType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberCFIndexType;
      goto LABEL_29;
    case kCFNumberNSIntegerType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberNSIntegerType;
LABEL_29:
      v8 = CFNumberGetValue(v4, v5, &valuePtr);
      v9 = LODWORD(valuePtr);
      goto LABEL_30;
    case kCFNumberCGFloatType:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberCGFloatType;
LABEL_18:
      v8 = CFNumberGetValue(v10, v11, &valuePtr);
      v9 = valuePtr;
LABEL_30:
      v14 = v9 | 0x100000000;
      if (!v8)
      {
        v14 = 0;
      }

LABEL_32:
      v17 = vshlq_u64(vdupq_n_s64(v14), xmmword_19D27DA00);
      break;
    default:
      LOBYTE(v14) = 0;
      v17 = 0uLL;
      break;
  }

  v18 = vandq_s8(vshlq_u64(v17, xmmword_19D27DA10), xmmword_19D27DA20);
  return v18.i64[0] | v14 | v18.i64[1];
}

const __CFDictionary *applesauce::CF::details::find_at_key_or_optional<float,__CFString const* const&>(const __CFDictionary *a1, const void **a2)
{
  result = applesauce::CF::details::at_key<__CFString const* const&>(a1, a2);
  if (result)
  {
    return (applesauce::CF::convert_as<float,0>(result) & 0xFFFFFFFFFFLL);
  }

  return result;
}

uint64_t applesauce::CF::convert_as<float,0>(const __CFNumber *a1)
{
  if (a1 && (TypeID = CFNumberGetTypeID(), TypeID == CFGetTypeID(a1)))
  {
    v3 = applesauce::CF::details::number_convert_as<float>(a1);
  }

  else
  {
    v3 = applesauce::CF::details::treat_as_BOOL_for_convert_as<float>(a1);
  }

  return v3 & 0xFFFFFFFFFFLL;
}

uint64_t applesauce::CF::details::treat_as_BOOL_for_convert_as<float>(const __CFBoolean *a1)
{
  if (a1 && (TypeID = CFBooleanGetTypeID(), TypeID == CFGetTypeID(a1)))
  {
    v3 = COERCE_UNSIGNED_INT(CFBooleanGetValue(a1));
    v4 = 0x100000000;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  return v3 | v4;
}

unint64_t applesauce::CF::details::number_convert_as<float>(const __CFNumber *a1)
{
  switch(CFNumberGetType(a1))
  {
    case kCFNumberSInt8Type:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberSInt8Type;
      goto LABEL_19;
    case kCFNumberSInt16Type:
      LOWORD(valuePtr) = 0;
      v14 = a1;
      v15 = kCFNumberSInt16Type;
      goto LABEL_14;
    case kCFNumberSInt32Type:
      LODWORD(valuePtr) = 0;
      v12 = a1;
      v13 = kCFNumberSInt32Type;
      goto LABEL_24;
    case kCFNumberSInt64Type:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberSInt64Type;
      goto LABEL_22;
    case kCFNumberFloat32Type:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloat32Type;
      goto LABEL_6;
    case kCFNumberFloat64Type:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberFloat64Type;
      goto LABEL_16;
    case kCFNumberCharType:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberCharType;
LABEL_19:
      Value = CFNumberGetValue(v2, v3, &valuePtr);
      v16 = SLOBYTE(valuePtr);
      goto LABEL_20;
    case kCFNumberShortType:
      LOWORD(valuePtr) = 0;
      v14 = a1;
      v15 = kCFNumberShortType;
LABEL_14:
      Value = CFNumberGetValue(v14, v15, &valuePtr);
      v16 = SLOWORD(valuePtr);
LABEL_20:
      v17 = v16;
      goto LABEL_25;
    case kCFNumberIntType:
      LODWORD(valuePtr) = 0;
      v12 = a1;
      v13 = kCFNumberIntType;
LABEL_24:
      Value = CFNumberGetValue(v12, v13, &valuePtr);
      v17 = SLODWORD(valuePtr);
      goto LABEL_25;
    case kCFNumberLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongType;
      goto LABEL_22;
    case kCFNumberLongLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongLongType;
      goto LABEL_22;
    case kCFNumberFloatType:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloatType;
LABEL_6:
      Value = CFNumberGetValue(v6, v7, &valuePtr);
      v9 = LODWORD(valuePtr);
      goto LABEL_26;
    case kCFNumberDoubleType:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberDoubleType;
      goto LABEL_16;
    case kCFNumberCFIndexType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberCFIndexType;
      goto LABEL_22;
    case kCFNumberNSIntegerType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberNSIntegerType;
LABEL_22:
      Value = CFNumberGetValue(v4, v5, &valuePtr);
      v17 = *&valuePtr;
      goto LABEL_25;
    case kCFNumberCGFloatType:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberCGFloatType;
LABEL_16:
      Value = CFNumberGetValue(v10, v11, &valuePtr);
      v17 = valuePtr;
LABEL_25:
      v9 = LODWORD(v17);
LABEL_26:
      v18 = v9 | 0x100000000;
      if (!Value)
      {
        v18 = 0;
      }

      v19 = v18 & 0x100000000;
      break;
    default:
      v19 = 0;
      LODWORD(v18) = 0;
      break;
  }

  return v18 | v19;
}

CFDictionaryRef applesauce::CF::details::make_CFDictionaryRef<std::string,float>(void *a1)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  std::vector<applesauce::CF::TypeRefPair>::reserve(&v11, a1[2]);
  v4 = *a1;
  v2 = a1 + 1;
  v3 = v4;
  if (v4 != v2)
  {
    v5 = v12;
    do
    {
      if (v5 >= v13)
      {
        v5 = std::vector<applesauce::CF::TypeRefPair>::__emplace_back_slow_path<std::string const&,float const&>(&v11, v3 + 32, v3 + 14);
      }

      else
      {
        applesauce::CF::TypeRefPair::TypeRefPair<std::string const&,float const&>(v5, v3 + 32, v3 + 14);
        v5 += 2;
      }

      v12 = v5;
      v6 = v3[1];
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
          v7 = v3[2];
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v2);
  }

  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(&v11);
  v14 = &v11;
  std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](&v14);
  return CFDictionaryRef;
}

void sub_19D1CB81C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::_AllocatorDestroyRangeReverse<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>::operator()[abi:ne200100](uint64_t *a1)
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
      v3 -= 16;
      std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::vector<applesauce::CF::TypeRefPair>::__emplace_back_slow_path<std::string const&,float const&>(uint64_t a1, const UInt8 *a2, int *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 4;
  v4 = v3 + 1;
  if ((v3 + 1) >> 60)
  {
    std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
  }

  v7 = *(a1 + 16) - *a1;
  if (v7 >> 3 > v4)
  {
    v4 = v7 >> 3;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFF0)
  {
    v8 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v4;
  }

  v18 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>>(a1, v8);
  }

  v15 = 0;
  v16 = 16 * v3;
  applesauce::CF::TypeRefPair::TypeRefPair<std::string const&,float const&>((16 * v3), a2, a3);
  v17 = (16 * v3 + 16);
  v9 = *(a1 + 8);
  v10 = (16 * v3 + *a1 - v9);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(&v15);
  return v14;
}

void sub_19D1CB9E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

CFStringRef *applesauce::CF::TypeRefPair::TypeRefPair<std::string const&,float const&>(CFStringRef *a1, const UInt8 *a2, int *a3)
{
  v5 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v6 = a2[23];
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  v7 = CFStringCreateWithBytes(0, a2, v6, 0x8000100u, 0);
  *a1 = v7;
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  valuePtr = *a3;
  v8 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  a1[1] = v8;
  if (!v8)
  {
    v11 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v11, "Could not construct");
    __cxa_throw(v11, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return a1;
}

void sub_19D1CBB00(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

__n128 applesauce::CF::convert_or<std::vector<std::vector<long>>,0>@<Q0>(const __CFArray *a1@<X0>, __n128 *a2@<X1>, __n128 *a3@<X8>)
{
  applesauce::CF::convert_as<std::vector<std::vector<long>>,0>(a1, &v6);
  if (v8 == 1)
  {
    a3->n128_u64[0] = 0;
    a3->n128_u64[1] = 0;
    a3[1].n128_u64[0] = 0;
    std::vector<std::vector<long>>::__init_with_size[abi:ne200100]<std::vector<long>*,std::vector<long>*>(a3, v6, v7, 0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 3));
    if (v8)
    {
      v9 = &v6;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v9);
    }
  }

  else
  {
    result = *a2;
    *a3 = *a2;
    a3[1].n128_u64[0] = a2[1].n128_u64[0];
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    a2->n128_u64[0] = 0;
  }

  return result;
}

void applesauce::CF::convert_as<std::vector<std::vector<long>>,0>(const __CFArray *a1@<X0>, char *a2@<X8>)
{
  if (a1 && (TypeID = CFArrayGetTypeID(), TypeID == CFGetTypeID(a1)))
  {

    applesauce::CF::details::CFArray_get_value_as<std::vector<std::vector<long>>>(a1, a2);
  }

  else
  {
    *a2 = 0;
    a2[24] = 0;
  }
}

void applesauce::CF::details::CFArray_get_value_as<std::vector<std::vector<long>>>(const __CFArray *a1@<X0>, char *a2@<X8>)
{
  Count = CFArrayGetCount(a1);
  v25 = 0uLL;
  v26 = 0;
  std::vector<std::vector<long>>::reserve(&v25, Count);
  if (Count < 1)
  {
LABEL_20:
    *a2 = v25;
    *(a2 + 2) = v26;
    v26 = 0;
    v25 = 0uLL;
    a2[24] = 1;
  }

  else
  {
    v4 = 0;
    v5 = Count & 0x7FFFFFFF;
    v19 = a2[24];
    v20 = *a2;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v4);
      applesauce::CF::convert_as<std::vector<long>,0>(ValueAtIndex, __p);
      v7 = v24;
      if (v24 != 1)
      {
        v17 = 0;
        v18 = 0;
        goto LABEL_23;
      }

      v8 = *(&v25 + 1);
      if (*(&v25 + 1) >= v26)
      {
        v10 = 0xAAAAAAAAAAAAAAABLL * ((*(&v25 + 1) - v25) >> 3);
        v11 = v10 + 1;
        if (v10 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          a2[24] = v19;
          *a2 = v20;
          std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((v26 - v25) >> 3) > v11)
        {
          v11 = 0x5555555555555556 * ((v26 - v25) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v26 - v25) >> 3) >= 0x555555555555555)
        {
          v12 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v12 = v11;
        }

        v27[4] = &v25;
        if (v12)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<long>>>(&v25, v12);
        }

        v13 = (8 * ((*(&v25 + 1) - v25) >> 3));
        *v13 = 0;
        v13[1] = 0;
        v13[2] = 0;
        *v13 = *__p;
        v13[2] = v23;
        __p[0] = 0;
        __p[1] = 0;
        v23 = 0;
        v9 = 24 * v10 + 24;
        v14 = 24 * v10 - (*(&v25 + 1) - v25);
        memcpy(v13 - (*(&v25 + 1) - v25), v25, *(&v25 + 1) - v25);
        v15 = v25;
        v16 = v26;
        *&v25 = v14;
        *(&v25 + 1) = v9;
        v26 = 0;
        v27[0] = v15;
        v27[2] = v15;
        v27[3] = v16;
        v27[1] = v15;
        std::__split_buffer<std::vector<long>>::~__split_buffer(v27);
      }

      else
      {
        **(&v25 + 1) = 0;
        *(v8 + 8) = 0;
        *(v8 + 16) = 0;
        *v8 = *__p;
        *(v8 + 16) = v23;
        __p[0] = 0;
        __p[1] = 0;
        v23 = 0;
        v9 = v8 + 24;
      }

      *(&v25 + 1) = v9;
      if (v24)
      {
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        if ((v7 & 1) == 0)
        {
          break;
        }
      }

      if (v5 == ++v4)
      {
        goto LABEL_20;
      }
    }

    v17 = v19;
    v18 = v20;
LABEL_23:
    a2[24] = v17;
    *a2 = v18;
  }

  v27[0] = &v25;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v27);
}

void sub_19D1CBEBC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, __int16 a10, char a11, _BYTE *a12)
{
  a12[24] = a9;
  *a12 = a11;
  __clang_call_terminate(a1);
}

void *std::vector<std::vector<long>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<long>>>(result, a2);
    }

    std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t std::vector<std::vector<long>>::__init_with_size[abi:ne200100]<std::vector<long>*,std::vector<long>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<long>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19D1CBFF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<long>>,std::vector<long>*,std::vector<long>*,std::vector<long>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<long>::__init_with_size[abi:ne200100]<long *,long *>(v4, *v6, v6[1], (v6[1] - *v6) >> 3);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<long>>,std::vector<long>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

CFDictionaryRef applesauce::CF::details::make_CFDictionaryRef<unsigned long,std::vector<unsigned long>>(void *a1)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  std::vector<applesauce::CF::TypeRefPair>::reserve(&v11, a1[2]);
  v4 = *a1;
  v2 = a1 + 1;
  v3 = v4;
  if (v4 != v2)
  {
    v5 = v12;
    do
    {
      if (v5 >= v13)
      {
        v5 = std::vector<applesauce::CF::TypeRefPair>::__emplace_back_slow_path<unsigned long const&,std::vector<unsigned long> const&>(&v11, v3 + 4, v3 + 5);
      }

      else
      {
        applesauce::CF::TypeRefPair::TypeRefPair<unsigned long const&,std::vector<unsigned long> const&>(v5, v3 + 4, v3 + 5);
        v5 += 2;
      }

      v12 = v5;
      v6 = v3[1];
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
          v7 = v3[2];
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v2);
  }

  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(&v11);
  v14 = &v11;
  std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](&v14);
  return CFDictionaryRef;
}

void sub_19D1CC1B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t std::vector<applesauce::CF::TypeRefPair>::__emplace_back_slow_path<unsigned long const&,std::vector<unsigned long> const&>(uint64_t a1, uint64_t *a2, void ****a3)
{
  v3 = (*(a1 + 8) - *a1) >> 4;
  v4 = v3 + 1;
  if ((v3 + 1) >> 60)
  {
    std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
  }

  v7 = *(a1 + 16) - *a1;
  if (v7 >> 3 > v4)
  {
    v4 = v7 >> 3;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFF0)
  {
    v8 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v4;
  }

  v18 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>>(a1, v8);
  }

  v15 = 0;
  v16 = 16 * v3;
  applesauce::CF::TypeRefPair::TypeRefPair<unsigned long const&,std::vector<unsigned long> const&>((16 * v3), a2, a3);
  v17 = (16 * v3 + 16);
  v9 = *(a1 + 8);
  v10 = (16 * v3 + *a1 - v9);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(&v15);
  return v14;
}

void sub_19D1CC2E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

CFNumberRef *applesauce::CF::TypeRefPair::TypeRefPair<unsigned long const&,std::vector<unsigned long> const&>(CFNumberRef *a1, uint64_t *a2, void ****a3)
{
  valuePtr = *a2;
  v5 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
  *a1 = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  a1[1] = applesauce::CF::details::make_CFArrayRef<unsigned long>(a3);
  return a1;
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<unsigned long>(void ****a1)
{
  v2 = a1[1] - *a1;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  std::vector<applesauce::CF::NumberRef>::reserve(&v8, v2);
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v5 = v9;
    do
    {
      v11 = *v3;
      if (v5 >= v10)
      {
        v5 = std::vector<applesauce::CF::NumberRef>::__emplace_back_slow_path<unsigned long>(&v8, &v11);
      }

      else
      {
        std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,unsigned long,0>(&v8, v5++, &v11);
      }

      v9 = v5;
      ++v3;
    }

    while (v3 != v4);
  }

  v6 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::NumberRef>(&v8);
  v11 = &v8;
  std::vector<applesauce::CF::NumberRef>::__destroy_vector::operator()[abi:ne200100](&v11);
  return v6;
}

void sub_19D1CC490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<applesauce::CF::NumberRef>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t std::vector<applesauce::CF::NumberRef>::__emplace_back_slow_path<unsigned long>(uint64_t a1, uint64_t *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::NumberRef>>(a1, v7);
  }

  v14 = 0;
  v15 = 8 * v2;
  std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,unsigned long,0>(a1, (8 * v2), a2);
  v16 = (8 * v2 + 8);
  v8 = *(a1 + 8);
  v9 = (8 * v2 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::NumberRef>,applesauce::CF::NumberRef*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<applesauce::CF::NumberRef>::~__split_buffer(&v14);
  return v13;
}

void sub_19D1CC5BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<applesauce::CF::NumberRef>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

CFNumberRef std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,unsigned long,0>(uint64_t a1, CFNumberRef *a2, uint64_t *a3)
{
  valuePtr = *a3;
  result = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
  *a2 = result;
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

void applesauce::CF::convert_to<std::map<unsigned long,std::vector<unsigned long>>,0>(const void *a1@<X0>, void *a2@<X8>)
{
  if (!a1 || (TypeID = CFDictionaryGetTypeID(), TypeID != CFGetTypeID(a1)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::CFDictionary_get_value_to<std::map<unsigned long,std::vector<unsigned long>>>(a1, a2);
}

void applesauce::CF::details::CFDictionary_get_value_to<std::map<unsigned long,std::vector<unsigned long>>>(const __CFDictionary *a1@<X0>, void *a2@<X8>)
{
  Count = CFDictionaryGetCount(a1);
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  std::vector<void const*>::vector[abi:ne200100](v13, Count);
  std::vector<void const*>::vector[abi:ne200100](values, Count);
  CFDictionaryGetKeysAndValues(a1, v13[0], values[0]);
  if (Count)
  {
    for (i = 0; i != Count; ++i)
    {
      v6 = applesauce::CF::convert_to<unsigned long,0>(*(v13[0] + i));
      applesauce::CF::convert_to<std::vector<unsigned long>,0>(values[0][i], v7);
      v9 = v6;
      *__p = *v7;
      v11 = v8;
      v7[0] = 0;
      v7[1] = 0;
      v8 = 0;
      std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::__emplace_unique_key_args<unsigned long,std::pair<unsigned long const,std::vector<unsigned long>>>(a2, &v9);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v7[0])
      {
        v7[1] = v7[0];
        operator delete(v7[0]);
      }
    }
  }

  if (values[0])
  {
    values[1] = values[0];
    operator delete(values[0]);
  }

  if (v13[0])
  {
    v13[1] = v13[0];
    operator delete(v13[0]);
  }
}

void sub_19D1CC83C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  v21 = *(v19 - 56);
  if (v21)
  {
    *(v19 - 48) = v21;
    operator delete(v21);
  }

  std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::destroy(v18, *(v18 + 8));
  _Unwind_Resume(a1);
}

void sub_19D1CC88C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  JUMPOUT(0x19D1CC858);
}

void *std::__tree<std::__value_type<unsigned long,std::vector<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<unsigned long>>>>::__emplace_unique_key_args<unsigned long,std::pair<unsigned long const,std::vector<unsigned long>>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

const __CFBoolean *applesauce::CF::convert_to<unsigned long,0>(const __CFNumber *a1)
{
  result = applesauce::CF::convert_as<unsigned long,0>(a1);
  if ((v2 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

void applesauce::CF::convert_to<std::vector<unsigned long>,0>(const void *a1@<X0>, const void **a2@<X8>)
{
  if (!a1 || (TypeID = CFArrayGetTypeID(), TypeID != CFGetTypeID(a1)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::CFArray_get_value_to<std::vector<unsigned long>>(a1, a2);
}

void applesauce::CF::details::CFArray_get_value_to<std::vector<unsigned long>>(const __CFArray *a1@<X0>, const void **a2@<X8>)
{
  Count = CFArrayGetCount(a1);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  std::vector<unsigned long>::reserve(a2, Count);
  if (Count >= 1)
  {
    v5 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v5);
      v7 = applesauce::CF::convert_to<unsigned long,0>(ValueAtIndex);
      v9 = a2[1];
      v8 = a2[2];
      if (v9 >= v8)
      {
        v11 = *a2;
        v12 = v9 - *a2;
        v13 = v12 >> 3;
        v14 = (v12 >> 3) + 1;
        if (v14 >> 61)
        {
          std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
        }

        v15 = v8 - v11;
        if (v15 >> 2 > v14)
        {
          v14 = v15 >> 2;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFF8)
        {
          v16 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a2, v16);
        }

        *(8 * v13) = v7;
        v10 = 8 * v13 + 8;
        memcpy(0, v11, v12);
        v17 = *a2;
        *a2 = 0;
        a2[1] = v10;
        a2[2] = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      else
      {
        *v9 = v7;
        v10 = (v9 + 1);
      }

      a2[1] = v10;
      ++v5;
    }

    while ((Count & 0x7FFFFFFF) != v5);
  }
}

void sub_19D1CCBEC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void applesauce::CF::convert_to<std::vector<long>,0>(const void *a1@<X0>, const void **a2@<X8>)
{
  if (!a1 || (TypeID = CFArrayGetTypeID(), TypeID != CFGetTypeID(a1)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::CFArray_get_value_to<std::vector<long>>(a1, a2);
}

void applesauce::CF::details::CFArray_get_value_to<std::vector<long>>(const __CFArray *a1@<X0>, const void **a2@<X8>)
{
  Count = CFArrayGetCount(a1);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  std::vector<unsigned long>::reserve(a2, Count);
  if (Count >= 1)
  {
    v5 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v5);
      v7 = applesauce::CF::convert_to<long,0>(ValueAtIndex);
      v9 = a2[1];
      v8 = a2[2];
      if (v9 >= v8)
      {
        v11 = *a2;
        v12 = v9 - *a2;
        v13 = v12 >> 3;
        v14 = (v12 >> 3) + 1;
        if (v14 >> 61)
        {
          std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
        }

        v15 = v8 - v11;
        if (v15 >> 2 > v14)
        {
          v14 = v15 >> 2;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFF8)
        {
          v16 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a2, v16);
        }

        *(8 * v13) = v7;
        v10 = 8 * v13 + 8;
        memcpy(0, v11, v12);
        v17 = *a2;
        *a2 = 0;
        a2[1] = v10;
        a2[2] = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      else
      {
        *v9 = v7;
        v10 = (v9 + 1);
      }

      a2[1] = v10;
      ++v5;
    }

    while ((Count & 0x7FFFFFFF) != v5);
  }
}

void sub_19D1CCDF8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::__split_buffer<long>::emplace_back<long const&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
  }

  *v4 = *a2;
  v3[2] = v4 + 8;
  return result;
}

void std::vector<long>::resize(void *a1, unint64_t a2, uint64_t *a3)
{
  v3 = (a1[1] - *a1) >> 3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<long>::__append(a1, a2 - v3, a3);
  }
}

void std::vector<long>::__append(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 3)
  {
    if (a2)
    {
      v12 = 0;
      v13 = v6 + 8 * a2;
      v14 = *a3;
      v15 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v16 = vdupq_n_s64(v15);
      v17 = (v6 + 8);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_19D27D560)));
        if (v18.i8[0])
        {
          *(v17 - 1) = v14;
        }

        if (v18.i8[4])
        {
          *v17 = v14;
        }

        v12 += 2;
        v17 += 2;
      }

      while (v15 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v12);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 3;
    v10 = v5 - *a1;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v11);
    }

    v19 = 0;
    v20 = 8 * v9;
    v21 = 8 * v9 + 8 * a2;
    v22 = *a3;
    v23 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v25 = vdupq_n_s64(v23);
    v26 = (v20 + 8);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v19), xmmword_19D27D560)));
      if (v27.i8[0])
      {
        *(v26 - 1) = v22;
      }

      if (v27.i8[4])
      {
        *v26 = v22;
      }

      v19 += 2;
      v26 += 2;
    }

    while (v24 != v19);
    v28 = *(a1 + 8) - *a1;
    v29 = v20 - v28;
    memcpy((v20 - v28), *a1, v28);
    v30 = *a1;
    *a1 = v29;
    *(a1 + 8) = v21;
    *(a1 + 16) = 0;
    if (v30)
    {

      operator delete(v30);
    }
  }
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<std::vector<long>>(uint64_t a1)
{
  v2 = *(a1 + 8);
  v9 = 0;
  v10 = 0;
  v11 = 0;
  std::vector<applesauce::CF::ArrayRef>::reserve(&v9, v2);
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *a1;
    v5 = v10;
    v6 = 24 * v3;
    do
    {
      if (v5 >= v11)
      {
        v5 = std::vector<applesauce::CF::ArrayRef>::__emplace_back_slow_path<std::vector<long> const&>(&v9, v4);
      }

      else
      {
        *v5++ = applesauce::CF::details::make_CFArrayRef<long>(v4);
      }

      v10 = v5;
      v4 += 3;
      v6 -= 24;
    }

    while (v6);
  }

  v7 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::NumberRef>(&v9);
  v12 = &v9;
  std::vector<applesauce::CF::ArrayRef>::__destroy_vector::operator()[abi:ne200100](&v12);
  return v7;
}

void sub_19D1CD1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<applesauce::CF::ArrayRef>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void *std::vector<applesauce::CF::ArrayRef>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::NumberRef>>(result, a2);
    }

    std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_19D1CD2A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<applesauce::CF::ArrayRef>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::ArrayRef>,applesauce::CF::ArrayRef*>(uint64_t a1, CFTypeRef *a2, CFTypeRef *a3, CFTypeRef *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
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
      *a4++ = *v7;
      *v7++ = 0;
    }

    while (v7 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator<applesauce::CF::ArrayRef>::destroy[abi:ne200100](a1, v5++);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<applesauce::CF::ArrayRef>,applesauce::CF::ArrayRef*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

void std::allocator<applesauce::CF::ArrayRef>::destroy[abi:ne200100](uint64_t a1, CFTypeRef *a2)
{
  if (*a2)
  {
    CFRelease(*a2);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<applesauce::CF::ArrayRef>,applesauce::CF::ArrayRef*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<applesauce::CF::ArrayRef>,applesauce::CF::ArrayRef*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<applesauce::CF::ArrayRef>,applesauce::CF::ArrayRef*>::operator()[abi:ne200100](uint64_t *a1)
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
      std::allocator<applesauce::CF::ArrayRef>::destroy[abi:ne200100](v5, --v3);
    }

    while (v3 != v4);
  }
}

void **std::__split_buffer<applesauce::CF::ArrayRef>::~__split_buffer(void **a1)
{
  std::__split_buffer<applesauce::CF::ArrayRef>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<applesauce::CF::ArrayRef>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 8;
    std::allocator<applesauce::CF::ArrayRef>::destroy[abi:ne200100](v4, (i - 8));
  }
}

uint64_t std::vector<applesauce::CF::ArrayRef>::__emplace_back_slow_path<std::vector<long> const&>(uint64_t a1, void ****a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::NumberRef>>(a1, v7);
  }

  v8 = (8 * v2);
  v15 = 0;
  v16 = v8;
  *(&v17 + 1) = 0;
  *v8 = applesauce::CF::details::make_CFArrayRef<long>(a2);
  *&v17 = v8 + 1;
  v9 = *(a1 + 8);
  v10 = (v8 + *a1 - v9);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::ArrayRef>,applesauce::CF::ArrayRef*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<applesauce::CF::ArrayRef>::~__split_buffer(&v15);
  return v14;
}

void sub_19D1CD584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<applesauce::CF::ArrayRef>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<applesauce::CF::ArrayRef>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::allocator<applesauce::CF::ArrayRef>::destroy[abi:ne200100](v1, --v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

const __CFBoolean *applesauce::CF::details::at_to<unsigned long>(const __CFArray *a1, unint64_t a2)
{
  if (!a1 || CFArrayGetCount(a1) <= a2 || (ValueAtIndex = CFArrayGetValueAtIndex(a1, a2)) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return applesauce::CF::convert_to<unsigned long,0>(ValueAtIndex);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t *OUTLINED_FUNCTION_1@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  if (*(result + 23) < 0)
  {
    v3 = *result;
  }

  return result;
}

uint64_t CoreNLP::TransferSeqTagModel::TransferSeqTagModel(uint64_t a1, const void ***a2)
{
  *a1 = &unk_1F10AD920;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0;
  std::map<std::string,int>::map[abi:ne200100]((a1 + 600), a2);
  *(a1 + 720) = 0;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  v16[0] = 0;
  v16[1] = 0;
  v15 = v16;
  v6 = *a2;
  v4 = a2 + 1;
  v5 = v6;
  if (v6 != v4)
  {
    do
    {
      v16[3] = (v5 + 7);
      v7 = std::__tree<std::__value_type<int,std::string>,std::__map_value_compare<int,std::__value_type<int,std::string>,std::less<int>,true>,std::allocator<std::__value_type<int,std::string>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v15, v5 + 14);
      std::string::operator=((v7 + 5), (v5 + 4));
      v8 = v5[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v5[2];
          v10 = *v9 == v5;
          v5 = v9;
        }

        while (!v10);
      }

      v5 = v9;
    }

    while (v9 != v4);
    v11 = v15;
    if (v15 != v16)
    {
      do
      {
        std::vector<std::string>::push_back[abi:ne200100](a1 + 632, (v11 + 5));
        v12 = v11[1];
        if (v12)
        {
          do
          {
            v13 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = v11[2];
            v10 = *v13 == v11;
            v11 = v13;
          }

          while (!v10);
        }

        v11 = v13;
      }

      while (v13 != v16);
    }
  }

  *(a1 + 80) = 0;
  std::__tree<std::__value_type<long,std::string>,std::__map_value_compare<long,std::__value_type<long,std::string>,std::less<long>,true>,std::allocator<std::__value_type<long,std::string>>>::destroy(&v15, v16[0]);
  return a1;
}

void sub_19D1CD918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = (v10 + 576);
  v13 = -72;
  do
  {
    a10 = v12;
    std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&a10);
    v12 -= 3;
    v13 += 24;
  }

  while (v13);
  v14 = (v10 + 504);
  v15 = -72;
  do
  {
    a10 = v14;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a10);
    v14 -= 3;
    v15 += 24;
  }

  while (v15);
  v16 = (v10 + 432);
  v17 = -72;
  do
  {
    a10 = v16;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a10);
    v16 -= 3;
    v17 += 24;
  }

  while (v17);
  v18 = (v10 + 368);
  v19 = -72;
  while (1)
  {
    v20 = *(v18 - 1);
    if (v20)
    {
      *v18 = v20;
      operator delete(v20);
    }

    v18 -= 3;
    v19 += 24;
    if (!v19)
    {
      v21 = (v10 + 288);
      v22 = -72;
      do
      {
        a10 = v21;
        std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&a10);
        v21 -= 3;
        v22 += 24;
      }

      while (v22);
      v23 = (v10 + 216);
      v24 = -72;
      do
      {
        a10 = v23;
        std::vector<std::vector<std::vector<std::vector<int>>>>::__destroy_vector::operator()[abi:ne200100](&a10);
        v23 -= 3;
        v24 += 24;
      }

      while (v24);
      v25 = (v10 + 144);
      v26 = -72;
      do
      {
        a10 = v25;
        std::vector<std::vector<std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](&a10);
        v25 -= 3;
        v26 += 24;
      }

      while (v26);
      v27 = (v10 + 56);
      v28 = -72;
      do
      {
        a10 = v27;
        std::vector<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>>::__destroy_vector::operator()[abi:ne200100](&a10);
        v27 -= 3;
        v28 += 24;
      }

      while (v28);
      _Unwind_Resume(a1);
    }
  }
}

void CoreNLP::TransferSeqTagModel::~TransferSeqTagModel(CoreNLP::TransferSeqTagModel *this)
{
  *this = &unk_1F10AD920;
  std::unique_ptr<CoreNLP::MontrealModel>::reset[abi:ne200100](this + 90, 0);
  nlp::CFScopedPtr<void *>::reset(this + 89, 0);
  v2 = *(this + 86);
  if (v2)
  {
    *(this + 87) = v2;
    operator delete(v2);
  }

  v3 = *(this + 83);
  if (v3)
  {
    *(this + 84) = v3;
    operator delete(v3);
  }

  v4 = *(this + 82);
  if (v4)
  {
    CFRelease(v4);
  }

  v10 = (this + 632);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v10);
  std::__tree<std::string>::destroy(this + 600, *(this + 76));
  for (i = 576; i != 504; i -= 24)
  {
    v10 = (this + i);
    std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v10);
  }

  do
  {
    v10 = (this + i);
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v10);
    i -= 24;
  }

  while (i != 432);
  do
  {
    v10 = (this + i);
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v10);
    i -= 24;
  }

  while (i != 360);
  for (j = 0; j != -72; j -= 24)
  {
    v7 = *(this + j + 360);
    if (v7)
    {
      *(this + j + 368) = v7;
      operator delete(v7);
    }
  }

  for (k = 288; k != 216; k -= 24)
  {
    v10 = (this + k);
    std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v10);
  }

  do
  {
    v10 = (this + k);
    std::vector<std::vector<std::vector<std::vector<int>>>>::__destroy_vector::operator()[abi:ne200100](&v10);
    k -= 24;
  }

  while (k != 144);
  do
  {
    v10 = (this + k);
    std::vector<std::vector<std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](&v10);
    k -= 24;
  }

  while (k != 72);
  for (m = 56; m != -16; m -= 24)
  {
    v10 = (this + m);
    std::vector<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>>::__destroy_vector::operator()[abi:ne200100](&v10);
  }
}

{
  CoreNLP::TransferSeqTagModel::~TransferSeqTagModel(this);

  JUMPOUT(0x19EAF8CA0);
}

void CoreNLP::TransferSeqTagModel::initTrainer(uint64_t a1, const void **a2)
{
  v3 = *(a1 + 656);
  v4 = *a2;
  *(a1 + 656) = *a2;
  if (v4)
  {
    CFRetain(v4);
  }

  if (v3)
  {
    CFRelease(v3);
  }
}

void CoreNLP::TransferSeqTagModel::readSample(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, unsigned int a6)
{
  v8 = a1 + 24 * a6;
  v9 = a1 + 4 * a6;
  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4EEEEJiNS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS7_IS9_EEEESB_NS3_IiNS7_IiEEEESD_EEC2B8ne200100IJLm0ELm1ELm2ELm3ELm4EEJiSB_SB_SD_SD_EJEJEJRiRKSB_SI_RKSD_SK_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSM_IJDpT2_EEEDpOT3_(&v21, (v9 + 80), a2, a3, a4, a5);
  std::vector<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>>::push_back[abi:ne200100](v8 + 8, &v21);
  if (__p)
  {
    v27 = __p;
    operator delete(__p);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  v28 = &v23;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v28);
  v28 = &v22;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v28);
  ++*(v9 + 80);
  v10 = *a3;
  v11 = a3[1];
  if (*a3 != v11)
  {
    do
    {
      v12 = *(a1 + 632);
      v13 = *(a1 + 640);
      if (v12 != v13)
      {
        v14 = *(v10 + 23);
        if (v14 >= 0)
        {
          v15 = *(v10 + 23);
        }

        else
        {
          v15 = *(v10 + 8);
        }

        if (v14 >= 0)
        {
          v16 = v10;
        }

        else
        {
          v16 = *v10;
        }

        while (1)
        {
          v17 = *(v12 + 23);
          v18 = v17;
          if ((v17 & 0x80u) != 0)
          {
            v17 = *(v12 + 8);
          }

          if (v17 == v15)
          {
            v19 = v18 >= 0 ? v12 : *v12;
            if (!memcmp(v19, v16, v15))
            {
              break;
            }
          }

          v12 += 24;
          if (v12 == v13)
          {
            goto LABEL_23;
          }
        }
      }

      if (v12 == v13)
      {
LABEL_23:
        std::vector<std::string>::push_back[abi:ne200100](a1 + 632, v10);
        v20 = -1 - 1431655765 * ((*(a1 + 640) - *(a1 + 632)) >> 3);
        v21 = v10;
        *(std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 600, v10) + 56) = v20;
      }

      v10 += 24;
    }

    while (v10 != v11);
  }
}

void std::vector<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = 0x4EC4EC4EC4EC4EC5 * ((v4 - *a1) >> 3);
    if ((v8 + 1) > 0x276276276276276)
    {
      std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0x4EC4EC4EC4EC4EC5 * ((v5 - *a1) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x13B13B13B13B13BLL)
    {
      v11 = 0x276276276276276;
    }

    else
    {
      v11 = v10;
    }

    v17[4] = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>>>(a1, v11);
    }

    v12 = 104 * v8;
    std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>::__tuple_impl(v12, a2);
    v7 = v12 + 104;
    v13 = *(a1 + 8) - *a1;
    v14 = v12 - v13;
    memcpy((v12 - v13), *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v12 + 104;
    v16 = *(a1 + 16);
    *(a1 + 16) = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    std::__split_buffer<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>>::~__split_buffer(v17);
  }

  else
  {
    std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul>,int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>::__tuple_impl(v4, a2);
    v7 = v6 + 104;
  }

  *(a1 + 8) = v7;
}

uint64_t std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>::~tuple(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (a1 + 8);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
  return a1;
}

void CoreNLP::TransferSeqTagModel::prepareDataSubsetForBatch(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void **a5, const void **a6, void **a7, uint64_t a8, uint64_t a9)
{
  v13 = *a2;
  v14 = a2[1];
  v15 = 126 - 2 * __clz(0x4EC4EC4EC4EC4EC5 * ((v14 - v13) >> 3));
  if (v14 == v13)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  std::__introsort<std::_ClassicAlgPolicy,CoreNLP::TransferSeqTagModel::prepareDataSubsetForBatch(std::vector<std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>> &,std::vector<std::vector<std::string>> &,std::vector<std::vector<std::vector<int>>> &,std::vector<std::vector<std::string>> &,std::vector<int>&,std::vector<std::vector<std::string>> &,std::vector<std::vector<int>>&,std::vector<std::vector<int>>&)::$_0 &,std::tuple<int,std::vector<std::string>,std::vector<std::string>,std::vector<int>,std::vector<int>>*,false>(v13, v14, v16, 1);
  v17 = a1[82];
  if (!v17)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v18 = applesauce::CF::details::find_at_key_or_optional<int,__CFString const* const&>(v17, CoreNLP::kNLModelTrainerMaxSeqLengthKey);
  if ((v18 & 0x100000000) != 0)
  {
    v19 = v18;
  }

  else
  {
    v19 = 30;
  }

  v51 = v19;
  v20 = *a2;
  if (a2[1] != *a2)
  {
    v21 = 0;
    v46 = a8;
    do
    {
      v22 = (v20 + 104 * v21);
      v24 = a6[1];
      v23 = a6[2];
      if (v24 >= v23)
      {
        v26 = *a6;
        v27 = v24 - *a6;
        v28 = v27 >> 2;
        v29 = (v27 >> 2) + 1;
        if (v29 >> 62)
        {
          std::vector<CoreNLP::NLAttributedToken>::__throw_length_error[abi:ne200100]();
        }

        v30 = v23 - v26;
        if (v30 >> 1 > v29)
        {
          v29 = v30 >> 1;
        }

        v31 = v30 >= 0x7FFFFFFFFFFFFFFCLL;
        v32 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v31)
        {
          v32 = v29;
        }

        if (v32)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a6, v32);
        }

        *(4 * v28) = *v22;
        v25 = 4 * v28 + 4;
        memcpy(0, v26, v27);
        v33 = *a6;
        *a6 = 0;
        a6[1] = v25;
        a6[2] = 0;
        if (v33)
        {
          operator delete(v33);
        }

        a8 = v46;
      }

      else
      {
        *v24 = *v22;
        v25 = (v24 + 4);
      }

      a6[1] = v25;
      std::vector<std::vector<std::string>>::push_back[abi:ne200100](a3, (*a2 + 104 * v21 + 8));
      memset(v67, 0, 24);
      v34 = *a2 + 104 * v21;
      v65 = 0;
      v66 = 0;
      v64 = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v64, *(v34 + 32), *(v34 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(v34 + 40) - *(v34 + 32)) >> 3));
      if (v65 != v64)
      {
        v35 = 0;
        v36 = 0;
        do
        {
          v37 = 0xAAAAAAAAAAAAAAABLL * ((a1[80] - a1[79]) >> 3);
          LODWORD(p_p) = 0;
          std::vector<int>::vector[abi:ne200100](&__p, v37);
          v38 = std::map<std::string,int>::at((a1 + 75), &v64[v35]);
          *(__p + *v38) = 1;
          std::vector<std::vector<int>>::push_back[abi:ne200100](v67, &__p);
          std::map<std::string,int>::at((a1 + 75), &v64[v35]);
          if (__p)
          {
            v62 = __p;
            operator delete(__p);
          }

          ++v36;
          v35 += 3;
        }

        while (0xAAAAAAAAAAAAAAABLL * (v65 - v64) > v36);
      }

      std::vector<std::vector<std::vector<int>>>::push_back[abi:ne200100](a4, v67);
      v39 = 0xAAAAAAAAAAAAAAABLL * (v65 - v64);
      if (v39 > v51)
      {
        LODWORD(v39) = v51;
      }

      v40 = v39;
      v41 = 3 * v39;
      __p = 0;
      v62 = 0;
      v63 = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::__wrap_iter<std::string*>,std::__wrap_iter<std::string*>>(&__p, v64, &v64[3 * v39], v39);
      std::vector<std::vector<std::string>>::push_back[abi:ne200100](a7, &__p);
      p_p = &__p;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_p);
      v42 = *a2 + 104 * v21;
      v62 = 0;
      v63 = 0;
      __p = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&__p, *(v42 + 8), *(v42 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(v42 + 16) - *(v42 + 8)) >> 3));
      v59 = 0;
      v60 = 0;
      p_p = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::__wrap_iter<std::string*>,std::__wrap_iter<std::string*>>(&p_p, __p, __p + 8 * v41, v40);
      std::vector<std::vector<std::string>>::push_back[abi:ne200100](a5, &p_p);
      p_p_p = &p_p;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_p_p);
      v43 = *a2 + 104 * v21;
      v59 = 0;
      v60 = 0;
      p_p = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&p_p, *(v43 + 56), *(v43 + 64), (*(v43 + 64) - *(v43 + 56)) >> 2);
      v56 = 0;
      v57 = 0;
      p_p_p = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(&p_p_p, p_p, p_p + 4 * v40, v40);
      std::vector<std::vector<int>>::push_back[abi:ne200100](a8, &p_p_p);
      if (p_p_p)
      {
        v56 = p_p_p;
        operator delete(p_p_p);
      }

      v44 = *a2 + 104 * v21;
      v56 = 0;
      v57 = 0;
      p_p_p = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&p_p_p, *(v44 + 80), *(v44 + 88), (*(v44 + 88) - *(v44 + 80)) >> 2);
      v53 = 0;
      v54 = 0;
      v52 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(&v52, p_p_p, p_p_p + 4 * v40, v40);
      std::vector<std::vector<int>>::push_back[abi:ne200100](a9, &v52);
      if (v52)
      {
        v53 = v52;
        operator delete(v52);
      }

      if (p_p_p)
      {
        v56 = p_p_p;
        operator delete(p_p_p);
      }

      if (p_p)
      {
        v59 = p_p;
        operator delete(p_p);
      }

      p_p = &__p;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_p);
      __p = &v64;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
      v64 = v67;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v64);
      ++v21;
      v20 = *a2;
    }

    while (0x4EC4EC4EC4EC4EC5 * ((a2[1] - *a2) >> 3) > v21);
  }
}

uint64_t std::vector<std::vector<std::string>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<std::string>>::__emplace_back_slow_path<std::vector<std::string> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<std::string>>::__construct_one_at_end[abi:ne200100]<std::vector<std::string> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::map<std::string,int>::at(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  return v2 + 56;
}

uint64_t std::vector<std::vector<std::vector<int>>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<std::vector<int>>>::__emplace_back_slow_path<std::vector<std::vector<int>> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<std::vector<int>>>::__construct_one_at_end[abi:ne200100]<std::vector<std::vector<int>> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}