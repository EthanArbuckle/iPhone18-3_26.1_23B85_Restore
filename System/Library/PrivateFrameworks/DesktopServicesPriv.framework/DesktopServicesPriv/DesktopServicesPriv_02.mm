void sub_1E5698148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(va);
  _Unwind_Resume(a1);
}

uint64_t TNode::IsInitialPopulating(TNode *this)
{
  v1 = atomic_load(this + 44);
  if ((v1 & 8) == 0)
  {
    return 0;
  }

  v4 = TNode::InfoLock(this);
  os_unfair_lock_lock(v4);
  v6 = *(this + 2);
  v5 = *(this + 3);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v4);
  os_unfair_lock_lock((v6 + 108));
  v7 = *(v6 + 123);
  os_unfair_lock_unlock((v6 + 108));
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return (v7 >> 5) & 1;
}

uint64_t TDSNotifier::TDSNotifier(uint64_t a1, uint64_t *a2, id *a3, id *a4)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0x100000000;
  *(a1 + 53) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v8 = *a2;
  v7 = a2[1];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    v9 = *(a1 + 8);
    *a1 = v8;
    *(a1 + 8) = v7;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  else
  {
    *a1 = v8;
    *(a1 + 8) = 0;
  }

  objc_storeStrong((a1 + 16), *a3);
  objc_storeStrong((a1 + 24), *a4);
  *(a1 + 72) = 200000;
  return a1;
}

uint64_t TReferenceCounted::TReferenceCounted<TDSNotifier *>(uint64_t a1, int a2, uint64_t a3)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 1;
  *(a1 + 24) = &unk_1F5F417A8;
  *(a1 + 48) = a1 + 24;
  if (a3)
  {
    TRefCount::Retain<int>((a3 + 36));
  }

  return a1;
}

void sub_1E56985F4(_Unwind_Exception *a1, TPropertyValue *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id a17)
{
  TPropertyValue::~TPropertyValue(&a10);

  _Unwind_Resume(a1);
}

BOOL TRefCount::Retain<int>(unsigned int *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = atomic_load(a1);
  if ((v2 & 0x80000000) != 0)
  {
    LODWORD(v4) = v2;
LABEL_7:
    v5 = LogObj(5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = IsRedactionEnabled();
      if (v6)
      {
        v7 = &stru_1F5F42870;
      }

      else
      {
        v1 = [MEMORY[0x1E696AF00] callStackSymbols];
        v7 = [v1 description];
      }

      v10 = 136446722;
      v11 = "Retain";
      v12 = 2048;
      v13 = v4;
      v14 = 2114;
      v15 = v7;
      _os_log_impl(&dword_1E5674000, v5, OS_LOG_TYPE_ERROR, "%{public}s on bad object. -- refCount: %ld\n%{public}@", &v10, 0x20u);
      if (!v6)
      {
      }
    }

    v3 = 0;
  }

  else
  {
    while (1)
    {
      v3 = v2 != 0;
      if (!v2)
      {
        break;
      }

      v4 = v2;
      atomic_compare_exchange_strong_explicit(a1, &v4, v2 + 1, memory_order_release, memory_order_relaxed);
      if (v4 == v2)
      {
        break;
      }

      v2 = v4;
      if ((v4 & 0x80000000) != 0)
      {
        goto LABEL_7;
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v3;
}

ISignpostInterval *AutoSignpostInterval_FPProvider_Gathering::AutoSignpostInterval_FPProvider_Gathering<char [13],DSProvidersObserver * {__strong}>(ISignpostInterval *a1, void *a2, __CFString *a3, void **a4)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v8 = LogObj(4);
  TString::TString(v13, "Gathering");
  ISignpostInterval::ISignpostInterval(a1, v8);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v13[0].fString.fRef);

  *(a1 + 14) = ISignpostInterval::MakeSignpostID(a1, a2);
  std::mutex::lock(a1);
  v13[0].fString.fRef = a3;
  v13[1].fString.fRef = strlen(a3);
  FormatDetails<DSProvidersObserver * {__strong}>(v13, a4, &__p);
  v9 = *(a1 + 14);
  v13[0].fString.fRef = &unk_1F5F41448;
  v13[1].fString.fRef = a1;
  v13[2].fString.fRef = &__p;
  v13[3].fString.fRef = v13;
  ISignpostInterval::BeginPriv(a1, v9, v13);
  std::__function::__value_func<void ()(NSObject  {objcproto9OS_os_log}*)>::~__value_func[abi:ne200100](v13);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::mutex::unlock(a1);
  v10 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1E5698904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<void ()(NSObject  {objcproto9OS_os_log}*)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock(v15);
  ISignpostInterval::~ISignpostInterval(v15);
  _Unwind_Resume(a1);
}

TReferenceCounted **std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>>::__assign_alt[abi:ne200100]<19ul,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>> const&>(std::__variant_detail::__alt<19ul,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>> &,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>> const&)::{unnamed type#1}::operator()(uint64_t a1)
{
  v1 = *a1;
  v2 = **(a1 + 8);
  if (v2)
  {
    TRefCount::Retain<int>((v2 + 16));
  }

  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v1);
  *v1 = v2;
  v4 = 0;
  *(v1 + 16) = 19;
  return TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>::~TRef(&v4);
}

void FormatDetails<DSProvidersObserver * {__strong}>(__int128 *a1@<X0>, void **a2@<X1>, std::string *a3@<X8>)
{
  memset(&__p, 0, sizeof(__p));
  v10 = *a1;
  do
  {
    v5 = FormatOneDetails<DSProvidersObserver * {__strong}>(&v10, &__p, a2);
    if (v5)
    {
      *(&a3->__r_.__value_.__s + 23) = 0;
      a3->__r_.__value_.__s.__data_[0] = 0;
      goto LABEL_13;
    }
  }

  while (v5 == 0x700000000);
  FormatDetails(&v10, &v9);
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

  v8 = std::string::insert(&v9, 0, p_p, size);
  *a3 = *v8;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

LABEL_13:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1E5698AA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

TReferenceCounted **std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>>::__assign_alt[abi:ne200100]<19ul,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>> const&>(uint64_t a1, TReferenceCounted **a2, uint64_t *a3)
{
  if (*(a1 + 16) == 19)
  {
    v6 = *a3;

    return TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>::operator=(a2, v6);
  }

  else
  {
    v8[2] = v3;
    v8[3] = v4;
    v8[0] = a1;
    v8[1] = a3;
    return std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>>::__assign_alt[abi:ne200100]<19ul,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>> const&>(std::__variant_detail::__alt<19ul,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>> &,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>> const&)::{unnamed type#1}::operator()(v8);
  }
}

void TNotifierList::AddNotifier(uint64_t a1, uint64_t *a2)
{
  os_unfair_lock_lock((a1 + 64));
  v4 = *(a1 + 48);
  if (v4 >= *(a1 + 56))
  {
    v6 = std::vector<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>>::__emplace_back_slow_path<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>> const&>((a1 + 40), a2);
  }

  else
  {
    v5 = *a2;
    *v4 = *a2;
    if (v5)
    {
      TRefCount::Retain<int>((v5 + 36));
    }

    v6 = (v4 + 1);
    *(a1 + 48) = v4 + 1;
  }

  *(a1 + 48) = v6;

  os_unfair_lock_unlock((a1 + 64));
}

void sub_1E5698BB0(_Unwind_Exception *a1)
{
  *(v1 + 48) = v2;
  os_unfair_lock_unlock((v1 + 64));
  _Unwind_Resume(a1);
}

uint64_t TPropertyValue::TPropertyValue<TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>>(uint64_t a1, uint64_t *a2)
{
  *(a1 + 16) = 0;
  std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>>::__assign_alt[abi:ne200100]<19ul,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>> const&>(a1, a1, a2);
  return a1;
}

unint64_t FormatOneDetails<DSProvidersObserver * {__strong}>(const std::string::value_type **a1, std::string *this, void **a3)
{
  v3 = a1[1];
  if (!v3)
  {
    v12 = 0;
    v9 = 1;
    return v12 | v9;
  }

  v7 = *a1;
  v8 = &v3[*a1];
  v9 = 1;
  v10 = *a1;
LABEL_3:
  v11 = 0;
  while (*v10 != asc_1E57B78C0[v11])
  {
    if (++v11 == 3)
    {
      if (++v10 == v8)
      {
        v12 = 0;
        return v12 | v9;
      }

      goto LABEL_3;
    }
  }

  v12 = 0;
  v9 = 1;
  if (v10 != v8)
  {
    v13 = v10 - v7;
    if (v10 - v7 != -1)
    {
      std::string::append(this, v7, v10 - v7);
      v14 = a1[1];
      v15 = v14 >= v13;
      v16 = &v14[-v13];
      if (!v15)
      {
        goto LABEL_93;
      }

      *a1 += v13;
      a1[1] = v16;
      ParseFormat(a1, &v36);
      v17 = v37;
      if (!v37)
      {
        v12 = 0;
        v9 = 2;
        return v12 | v9;
      }

      if (v38 <= 4)
      {
        if ((v38 - 1) < 3)
        {
          goto LABEL_90;
        }

        if (v38 == 4)
        {
          if (v37 <= 0x7FFFFFFFFFFFFFF7)
          {
            if (v37 >= 0x17)
            {
              operator new();
            }

            *(&__dst.__r_.__value_.__s + 23) = v37;
            memmove(&__dst, v36, v37);
            __dst.__r_.__value_.__s.__data_[v17] = 0;
            HexDescriptionPrinterGlue<DSProvidersObserver * {__strong},void>::dump(&__dst, a3, &__p);
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

            goto LABEL_69;
          }

LABEL_94:
          std::string::__throw_length_error[abi:ne200100]();
        }

        goto LABEL_47;
      }

      if (v38 <= 6)
      {
        if (v38 == 5)
        {
          Description<NSString * {__strong}>(a3, &__dst);
          RedactForPrivacy(&v36, &__dst, &__p);
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
        }

        else
        {
          Description<NSString * {__strong}>(a3, &__dst);
          RedactForPrivacy(&v36, &__dst, &__p);
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
        }

LABEL_69:
        std::string::append(this, p_p, size);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_90:
          v28 = a1[1];
          v29 = &v28[-v37];
          if (v28 >= v37)
          {
            v9 = 0;
            *a1 += v37;
            a1[1] = v29;
            v12 = v38 << 32;
            return v12 | v9;
          }

LABEL_93:
          std::__throw_out_of_range[abi:ne200100]("string_view::substr");
        }

        v25 = __dst.__r_.__value_.__r.__words[0];
LABEL_89:
        operator delete(v25);
        goto LABEL_90;
      }

      if (v38 == 8)
      {
        if (v37 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_94;
        }

        if (v37 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v37;
        memmove(&__dst, v36, v37);
        __dst.__r_.__value_.__s.__data_[v17] = 0;
        ExtractEmbeddedFormat(&__dst, &__p);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        v23 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v22 = __p.__r_.__value_.__l.__size_;
          v23 = __p.__r_.__value_.__r.__words[0];
        }

        v33.__r_.__value_.__r.__words[0] = v23;
        v33.__r_.__value_.__l.__size_ = v22;
        FormatDetails<DSProvidersObserver * {__strong}>(&__dst, &v33, a3);
        v24 = v37;
        if (v37 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v37 >= 0x17)
        {
          operator new();
        }

        v32 = v37;
        if (v37)
        {
          memmove(&v31, v36, v37);
        }

        *(&v31 + v24) = 0;
        ExtendedFormatAdaptor(&v31, &__dst, &v33);
        if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v26 = &v33;
        }

        else
        {
          v26 = v33.__r_.__value_.__r.__words[0];
        }

        if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v27 = HIBYTE(v33.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v27 = v33.__r_.__value_.__l.__size_;
        }

        std::string::append(this, v26, v27);
        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v33.__r_.__value_.__l.__data_);
        }

        if (v32 < 0)
        {
          operator delete(v31);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        if (v38 != 7)
        {
LABEL_47:
          Description<NSString * {__strong}>(a3, &__dst);
          RedactForPrivacy(&v36, &__dst, &__p);
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

          goto LABEL_69;
        }

        DeEscapeFormatFragment(&v36, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = &__p;
        }

        else
        {
          v20 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v21 = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(this, v20, v21);
      }

      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_90;
      }

      v25 = __p.__r_.__value_.__r.__words[0];
      goto LABEL_89;
    }
  }

  return v12 | v9;
}

void sub_1E569911C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unique_ptr<TNotifierList>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v4 = (v2 + 40);
    std::vector<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>>::__destroy_vector::operator()[abi:ne200100](&v4);
    v3 = *(v2 + 32);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    return MEMORY[0x1E692CD30](v2, 0x1020C40F61775ADLL);
  }

  return result;
}

TReferenceCounted **TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>::~TRef(TReferenceCounted **a1)
{
  v2 = *a1;
  if (v2)
  {
    TReferenceCounted::RemovePtrReference(v2);
  }

  return a1;
}

uint64_t std::vector<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>>::__emplace_back_slow_path<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>> const&>(void *a1, uint64_t *a2)
{
  v2 = (a1[1] - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
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

  v15 = a1;
  if (v7)
  {
    std::allocator<TNodeEventPtr *>::allocate_at_least[abi:ne200100](a1, v7);
  }

  v8 = (8 * v2);
  v12[0] = 0;
  v12[1] = v8;
  v13 = 8 * v2;
  v14 = 0;
  v9 = *a2;
  *v8 = *a2;
  if (v9)
  {
    TRefCount::Retain<int>((v9 + 36));
    v8 = v13;
  }

  v13 = (v8 + 1);
  std::vector<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>>::__swap_out_circular_buffer(a1, v12);
  v10 = a1[1];
  std::__split_buffer<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>>::~__split_buffer(v12);
  return v10;
}

void sub_1E5699348(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void AutoSignpostInterval_FPProvider_Gathering::AutoSignpostInterval_FPProvider_Gathering<char [13],DSProvidersObserver * {__strong}>(void *,char [13],DSProvidersObserver * {__strong} const&)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}::operator()(uint64_t *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *a1;
  v5 = v3;
  v6 = v5;
  v7 = *(v4 + 112);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v8 = a1[1];
    if (*(v8 + 23) < 0)
    {
      v9 = ": ";
      v8 = *v8;
      if (!*(a1[1] + 8))
      {
        v9 = "";
      }
    }

    else if (*(v8 + 23))
    {
      v9 = ": ";
    }

    else
    {
      v9 = "";
    }

    v11 = 136446466;
    v12 = v9;
    v13 = 2082;
    v14 = v8;
    _os_signpost_emit_with_name_impl(&dword_1E5674000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v7, "Gathering", "Begin%{public}s%{public}s", &v11, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1E5699520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

TPropertyValue *TPropertyValue::MoveFrom(TPropertyValue *result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = result;
    TPropertyValue::Release(result);
    result = std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>>(v3, a2);
    if (*(a2 + 16))
    {
      result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2);
      *(a2 + 16) = 0;
    }
  }

  return result;
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>>(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (*(result + 16) != -1 || v4 != -1)
  {
    if (v4 == -1)
    {

      return std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](result);
    }

    else
    {
      v6[1] = v2;
      v6[2] = v3;
      v6[0] = result;
      return (off_1F5F3D870[v4])(v6);
    }
  }

  return result;
}

AutoSignpostInterval_FPProvider_Gathering *std::unique_ptr<AutoSignpostInterval_FPProvider_Gathering>::reset[abi:ne200100](AutoSignpostInterval_FPProvider_Gathering **a1, AutoSignpostInterval_FPProvider_Gathering *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    AutoSignpostInterval_FPProvider_Gathering::~AutoSignpostInterval_FPProvider_Gathering(result);

    JUMPOUT(0x1E692CD30);
  }

  return result;
}

TDSNotifier **std::vector<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  result = *a1;
  v5 = *(a1 + 8);
  v7 = (a2[1] + result - v5);
  if (v5 != result)
  {
    v8 = result;
    v9 = (a2[1] + result - v5);
    do
    {
      *v9++ = *v8;
      *v8++ = 0;
    }

    while (v8 != v5);
    do
    {
      result = TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(result) + 1;
    }

    while (result != v5);
    result = *a1;
  }

  a2[1] = v7;
  *a1 = v7;
  *(a1 + 8) = result;
  a2[1] = result;
  v10 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v10;
  v11 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v11;
  *a2 = a2[1];
  return result;
}

uint64_t std::__split_buffer<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

BOOL TReferenceCounted::RemovePtrReference(TReferenceCounted *this)
{
  result = TRefCount::Release<int>(this + 4);
  if (this && result)
  {
    TReferenceCounted::~TReferenceCounted(this);

    JUMPOUT(0x1E692CD30);
  }

  return result;
}

id __copy_helper_block_ea8_32c50_ZTSKZ37__DSProvidersObserver_startObserving_E3__6(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<NodeNotificationOptions,unsigned long>,std::__unordered_map_hasher<NodeNotificationOptions,std::__hash_value_type<NodeNotificationOptions,unsigned long>,std::hash<NodeNotificationOptions>,std::equal_to<NodeNotificationOptions>,true>,std::__unordered_map_equal<NodeNotificationOptions,std::__hash_value_type<NodeNotificationOptions,unsigned long>,std::equal_to<NodeNotificationOptions>,std::hash<NodeNotificationOptions>,true>,std::allocator<std::__hash_value_type<NodeNotificationOptions,unsigned long>>>::__emplace_unique_key_args<NodeNotificationOptions,std::piecewise_construct_t const&,std::tuple<NodeNotificationOptions const&>,std::tuple<>>(void *a1, unsigned int *a2)
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
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
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

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_1E5699BA4(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

uint64_t TNode::NewNodeIterator(uint64_t a1, void *a2, void *a3, unsigned int a4)
{
  v36 = *MEMORY[0x1E69E9840];
  *a2 = 0;
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
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if ((v10 & 0x20) != 0)
  {
    TNodePtr::TNodePtr(buf, a1);
    v16 = TNodeFromFINode(*buf);
    if ((TNode::LowLevelIsLockFile(v16) & 1) == 0)
    {
      v17 = TNodeFromFINode(*buf);
      if ((TNode::IsPopulated(v17) & 1) == 0)
      {
        v18 = TNodeFromFINode(*buf);
        v19 = TNode::InfoLock(v18);
        os_unfair_lock_lock(v19);
        v21 = *(v18 + 16);
        v20 = *(v18 + 24);
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          os_unfair_lock_unlock(v19);
          v22 = *(v21 + 120);
          std::__shared_weak_count::__release_shared[abi:ne200100](v20);
        }

        else
        {
          os_unfair_lock_unlock(v19);
          v22 = *(v21 + 120);
        }

        if (v22 != 5)
        {
          v23 = TNodeFromFINode(*buf);
          v24 = TNode::InfoLock(v23);
          os_unfair_lock_lock(v24);
          v26 = *(v23 + 16);
          v25 = *(v23 + 24);
          if (v25)
          {
            atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
            os_unfair_lock_unlock(v24);
            v27 = *(v26 + 120);
            std::__shared_weak_count::__release_shared[abi:ne200100](v25);
          }

          else
          {
            os_unfair_lock_unlock(v24);
            v27 = *(v26 + 120);
          }

          if (v27 != 6)
          {
            if (*a3)
            {
              v28 = TNodeFromFINode(*buf);
              TNode::RequestSynchronize(v28, a4 | 0x1000000);
            }

            else
            {
              v33 = *buf;
              v29.fFINode = &v33;
              StFirstPopulationLock::StFirstPopulationLock(&v34, v29);

              v30 = TNodeFromFINode(*buf);
              if ((TNode::IsPopulated(v30) & 1) == 0)
              {
                v31 = TNodeFromFINode(*buf);
                TNode::HandlePopulate(v31, 0, HIBYTE(a4) & 1);
              }

              StFirstPopulationLock::~StFirstPopulationLock(&v34);
            }
          }
        }
      }
    }

    TNode::VirtualType(a1);
    operator new();
  }

  if (!TNode::Validate(a1, v11))
  {
    v12 = LogObj(5);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      TNode::CFURL(a1, &v34);
      v13 = v34;
      v14 = SanitizedURL(v13);
      *buf = 138412290;
      *&buf[4] = v14;
      _os_log_impl(&dword_1E5674000, v12, OS_LOG_TYPE_ERROR, "Failed to get node iterator for node that doesn't support container %@", buf, 0xCu);

      TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v34);
    }
  }

  result = 4294959224;
  v32 = *MEMORY[0x1E69E9840];
  return result;
}

void TNode::CopyChildren(TNode *this@<X0>, void *a2@<X8>)
{
  TNodePtr::TNodePtr(&v6, this);
  TNode::StPopulating::StPopulating(v7, &v6.fFINode, 0);

  v4 = *(this + 7);
  if (v4)
  {
    v5 = (v4 + 64);
  }

  else
  {
    v5 = &TNode::GetChildren(void)const::sEmptyList;
  }

  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  std::vector<TNodePtr>::__init_with_size[abi:ne200100]<TNodePtr*,TNodePtr*>(a2, *v5, v5[1], (v5[1] - *v5) >> 3);
  TNode::StPopulating::~StPopulating(v7);
}

void sub_1E5699FD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TNode::StPopulating::~StPopulating(va);
  _Unwind_Resume(a1);
}

uint64_t IDContainerIteratorAdaptor<NSArray<NSString *>>::NSForwardIterator<NSArray<NSString *>>::NSForwardIterator(uint64_t a1, void *a2)
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

uint64_t std::vector<TNodePtr>::__init_with_size[abi:ne200100]<TNodePtr*,TNodePtr*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<TNodePtr>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

uint64_t IDContainerIteratorAdaptor<NSArray<NSString *>>::IDContainerIteratorAdaptor(uint64_t a1, uint64_t a2, void *a3)
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

void TNodeIterator::GetVisibleChildrenAndSortProperties(const TNodePtr *a1@<X1>, int a2@<W2>, int a3@<W3>, void *a4@<X8>)
{
  v9 = TNodeFromFINode(a1->fFINode);
  TNode::GetSuperRootNode(&v46, v9);
  v10 = TNodeFromFINode(v46);

  v11 = TNodeFromFINode(a1->fFINode);
  TNode::CopyChildren(v11, &v46);
  memset(v45, 0, sizeof(v45));
  std::vector<TNodePtr>::reserve(v45, v47 - v46);
  memset(v44, 0, sizeof(v44));
  memset(&v43, 0, sizeof(v43));
  if (a2)
  {
    std::vector<TString>::reserve(v44, v47 - v46);
    std::vector<int>::reserve(&v43, v47 - v46);
  }

  v38 = a4;
  TNode::StPopulating::StPopulating(v42, a1, 0);
  v12 = v46;
  v13 = v47;
  if (v46 != v47)
  {
    v39 = v9;
    while (1)
    {
      if (!a3)
      {
        goto LABEL_15;
      }

      v14 = TNodeFromFINode(*v12);
      IsVisible = TNode::IsVisible(v14);
      v16 = v9 == v10 ? IsVisible : 0;
      if (v16 == 1)
      {
        break;
      }

      if (IsVisible)
      {
        goto LABEL_15;
      }

LABEL_37:
      if (++v12 == v13)
      {
        goto LABEL_38;
      }
    }

    v17 = TNodeFromFINode(*v12);
    TNode::GetVolumeInfo(v17, &v40);
    v18 = BYTE2(v40.fString.fRef[3].data);
    if (v41)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v41);
    }

    if (v18)
    {
      goto LABEL_37;
    }

LABEL_15:
    std::vector<TNodePtr>::push_back[abi:ne200100](v45, v12);
    if (a2)
    {
      v19 = TNodeFromFINode(*v12);
      v20 = TNode::InfoLock(v19);
      os_unfair_lock_lock(v20);
      v22 = *(v19 + 16);
      v21 = *(v19 + 24);
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v20);
      Index = TFSInfo::GetIndex(v22);
      end = v43.__end_;
      if (v43.__end_ >= v43.__end_cap_.__value_)
      {
        begin = v43.__begin_;
        v27 = v43.__end_ - v43.__begin_;
        v28 = v43.__end_ - v43.__begin_;
        v29 = v28 + 1;
        if ((v28 + 1) >> 62)
        {
          std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
        }

        v30 = v43.__end_cap_.__value_ - v43.__begin_;
        if ((v43.__end_cap_.__value_ - v43.__begin_) >> 1 > v29)
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
          std::allocator<int>::allocate_at_least[abi:ne200100](&v43, v32);
        }

        *(4 * v28) = Index;
        v25 = (4 * v28 + 4);
        memcpy(0, begin, v27);
        v33 = v43.__begin_;
        v43.__begin_ = 0;
        v43.__end_ = v25;
        v43.__end_cap_.__value_ = 0;
        if (v33)
        {
          operator delete(v33);
        }

        v9 = v39;
      }

      else
      {
        *v43.__end_ = Index;
        v25 = end + 1;
      }

      v43.__end_ = v25;
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

      v34 = TNodeFromFINode(*v12);
      v35 = TNode::InfoLock(v34);
      os_unfair_lock_lock(v35);
      v37 = *(v34 + 16);
      v36 = *(v34 + 24);
      if (v36)
      {
        atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v35);
      TFSInfo::Name(v37, &v40);
      if (v36)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v36);
      }

      std::vector<TString>::push_back[abi:ne200100](v44, &v40.fString.fRef);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v40.fString.fRef);
    }

    goto LABEL_37;
  }

LABEL_38:
  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJNS_6vectorI8TNodePtrNS_9allocatorIS4_EEEENS3_I7TStringNS5_IS8_EEEENS3_IiNS5_IiEEEEEEC2B8ne200100IJLm0ELm1ELm2EEJS7_SA_SC_EJEJEJRS7_RSA_RSC_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSJ_IJDpT2_EEEDpOT3_(v38, v45, v44, &v43);
  TNode::StPopulating::~StPopulating(v42);
  if (v43.__begin_)
  {
    v43.__end_ = v43.__begin_;
    operator delete(v43.__begin_);
  }

  v43.__begin_ = v44;
  std::vector<TString>::__destroy_vector::operator()[abi:ne200100](&v43);
  v44[0] = v45;
  std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](v44);
  v45[0] = &v46;
  std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](v45);
}

void sub_1E569A4E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t **__p, uint64_t **a17, uint64_t a18, uint64_t *a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  TNode::StPopulating::~StPopulating(&a13);
  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  __p = &a19;
  std::vector<TString>::__destroy_vector::operator()[abi:ne200100](&__p);
  a19 = &a22;
  std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](&a19);
  a22 = v22 - 112;
  std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](&a22);
  _Unwind_Resume(a1);
}

uint64_t IDContainerIteratorAdaptor<NSArray<NSString *>>::NSForwardIterator<NSArray<NSString *>>::NSForwardIterator(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  *a1 = v4;
  *(a1 + 8) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = -1;
  v5 = (a1 + 112);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 120) = -1;
  v6 = (a1 + 120);
  *(a1 + 128) = -1;
  if (v4 && [v4 count] && (v7 = *(a2 + 128), v7 < objc_msgSend(*a1, "count")))
  {
    v8 = [*a1 countByEnumeratingWithState:a1 + 8 objects:a1 + 72 count:4];
    *(a1 + 112) = v8;
    *(a1 + 104) = **(a1 + 24);
    *v6 = 0;
    *(a1 + 128) = 0;
    v9 = *(a2 + 128);
    if (v9 >= v8)
    {
      if (v9 >= 1)
      {
        v11 = 0;
        v12 = 0;
        do
        {
          if (v11 >= *v5 - 1)
          {
            *v5 = [*a1 countByEnumeratingWithState:a1 + 8 objects:a1 + 72 count:4];
            v11 = -1;
            *v6 = -1;
          }

          if (*(a1 + 104) != **(a1 + 24))
          {
            objc_enumerationMutation(*a1);
            v11 = *v6;
          }

          v13 = *(a1 + 128) + 1;
          *(a1 + 120) = ++v11;
          *(a1 + 128) = v13;
          ++v12;
        }

        while (*(a2 + 128) > v12);
      }
    }

    else
    {
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 128) = v9;
    }
  }

  else
  {
    *v6 = *(a2 + 120);
  }

  return a1;
}

uint64_t algorithm_extras::distance_or_zero<IDContainerIteratorAdaptor<NSArray<NSString *>>>(uint64_t a1, uint64_t a2)
{
  IDContainerIteratorAdaptor<NSArray<NSString *>>::NSForwardIterator<NSArray<NSString *>>::NSForwardIterator(v6, a1);
  IDContainerIteratorAdaptor<NSArray<NSString *>>::NSForwardIterator<NSArray<NSString *>>::NSForwardIterator(v5, a2);
  v3 = std::distance[abi:ne200100]<IDContainerIteratorAdaptor<NSArray<NSString *>>>(v6, v5);

  return v3;
}

void *_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJNS_6vectorI8TNodePtrNS_9allocatorIS4_EEEENS3_I7TStringNS5_IS8_EEEENS3_IiNS5_IiEEEEEEC2B8ne200100IJLm0ELm1ELm2EEJS7_SA_SC_EJEJEJRS7_RSA_RSC_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSJ_IJDpT2_EEEDpOT3_(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<TNodePtr>::__init_with_size[abi:ne200100]<TNodePtr*,TNodePtr*>(a1, *a2, a2[1], (a2[1] - *a2) >> 3);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<TString>::__init_with_size[abi:ne200100]<TString*,TString*>((a1 + 3), *a3, a3[1], (a3[1] - *a3) >> 3);
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 6), *a4, a4[1], (a4[1] - *a4) >> 2);
  return a1;
}

void sub_1E569A8B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<TString>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::distance[abi:ne200100]<IDContainerIteratorAdaptor<NSArray<NSString *>>>(uint64_t a1, uint64_t a2)
{
  IDContainerIteratorAdaptor<NSArray<NSString *>>::NSForwardIterator<NSArray<NSString *>>::NSForwardIterator(&obj, a1);
  IDContainerIteratorAdaptor<NSArray<NSString *>>::NSForwardIterator<NSArray<NSString *>>::NSForwardIterator(v7, a2);
  v3 = 0;
  while (obj != v7[0] || v13 != v7[16])
  {
    v4 = v12;
    if (v12 >= v11 - 1)
    {
      v5 = [obj countByEnumeratingWithState:v9 objects:v10 count:4];
      v4 = -1;
      v11 = v5;
      v12 = -1;
    }

    if (v10[4] != *v9[2])
    {
      objc_enumerationMutation(obj);
      v4 = v12;
    }

    v12 = v4 + 1;
    ++v13;
    ++v3;
  }

  return v3;
}

void TNodeIterator::TNodeIterator(TNodeIterator *this, const TNodePtr *a2, int a3)
{
  *(this + 1) = 0u;
  v5 = (this + 16);
  *(this + 4) = 0;
  *this = 0u;
  objc_storeStrong(this, a2->fFINode);
  *(this + 11) = 0;
  *(this + 40) = 0;
  if (TNodeFromFINode(*this))
  {
    v6 = TNodeFromFINode(*this);
    v7 = TNode::InfoLock(v6);
    os_unfair_lock_lock(v7);
    v9 = *(v6 + 16);
    v8 = *(v6 + 24);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v7);
    IsIndexSorted = TFSInfo::IsIndexSorted(v9);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    TNodeIterator::GetVisibleChildrenAndSortProperties(this, IsIndexSorted, a3, &v21);
    if (IsIndexSorted)
    {
      memset(&v20, 0, sizeof(v20));
      std::vector<int>::resize(&v20, v22 - v21);
      begin = v20.__begin_;
      if (v22 != v21)
      {
        v12 = 0;
        v13 = v22 - v21;
        do
        {
          begin[v12] = v12;
          ++v12;
        }

        while (v13 > v12);
      }

      v14 = 126 - 2 * __clz(v20.__end_ - begin);
      v25[0] = &v21;
      v25[1] = __p;
      v25[2] = v23;
      if (v20.__end_ == begin)
      {
        v15 = 0;
      }

      else
      {
        v15 = v14;
      }

      std::__introsort<std::_ClassicAlgPolicy,TNodeIterator::TNodeIterator(TNodePtr const&,BOOL,BOOL,BOOL)::$_0 &,int *,false>(begin, v20.__end_, v25, v15, 1);
      std::vector<TNodePtr>::resize(v5, v22 - v21);
      v16 = v21;
      if (v22 != v21)
      {
        v17 = 0;
        v18 = 1;
        do
        {
          objc_storeStrong(&(*v5)[v17], v16[v20.__begin_[v17]]);
          v17 = v18;
          v16 = v21;
          ++v18;
        }

        while (v17 < v22 - v21);
      }

      if (v20.__begin_)
      {
        v20.__end_ = v20.__begin_;
        operator delete(v20.__begin_);
      }
    }

    else if (v5 != &v21)
    {
      std::vector<TNodePtr>::__assign_with_size[abi:ne200100]<TNodePtr*,TNodePtr*>(v5, v21, v22, v22 - v21);
    }

    v19 = TNodeFromFINode(*this);
    *(this + 40) = TNode::IsPopulated(v19);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v25[0] = v23;
    std::vector<TString>::__destroy_vector::operator()[abi:ne200100](v25);
    v25[0] = &v21;
    std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](v25);
  }

  *(this + 1) = *(this + 2);
}

{
  TNodeIterator::TNodeIterator(this, a2, a3);
}

void sub_1E569AC10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13)
{
  std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](&a13);

  _Unwind_Resume(a1);
}

uint64_t std::construct_at[abi:ne200100]<TNodeTask,decltype(nullptr),TNodeTask*>(uint64_t a1)
{
  v3 = 0;
  TNodeTask::TNodeTask(a1);
  TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(&v3);
  return a1;
}

void sub_1E569ACB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(va);
  _Unwind_Resume(a1);
}

void std::vector<TNodePtr>::__assign_with_size[abi:ne200100]<TNodePtr*,TNodePtr*>(uint64_t a1, void **a2, void **a3, unint64_t a4)
{
  v7 = *a1;
  if (a4 > (*(a1 + 16) - *a1) >> 3)
  {
    std::vector<TNodePtr>::__vdeallocate(a1);
    if (!(a4 >> 61))
    {
      v8 = *(a1 + 16) - *a1;
      v9 = v8 >> 2;
      if (v8 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<TNodePtr>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8) - v7;
  if (a4 <= v11 >> 3)
  {
    std::__copy_impl::operator()[abi:ne200100]<TNodePtr *,TNodePtr *,TNodePtr *>(&v22, a2, a3, v7);
    v18 = v17;
    v19 = *(a1 + 8);
    if (v19 != v17)
    {
      do
      {
        v20 = *(v19 - 8);
        v19 -= 8;
      }

      while (v19 != v18);
    }

    *(a1 + 8) = v18;
  }

  else
  {
    v12 = std::__copy_impl::operator()[abi:ne200100]<TNodePtr *,TNodePtr *,TNodePtr *>(&v21, a2, (a2 + v11), v7);
    v13 = *(a1 + 8);
    if (v12 != a3)
    {
      v14 = v12;
      v15 = *(a1 + 8);
      do
      {
        v16 = *v14++;
        *v15++ = v16;
        v13 += 8;
      }

      while (v14 != a3);
    }

    *(a1 + 8) = v13;
  }
}

id type_traits_extras::CopyAsHelper<NSArray<FPSandboxingURLWrapper *> * {__strong}>::MakeWithCapacity(uint64_t a1)
{
  v1 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a1];

  return v1;
}

void *std::__shared_ptr_emplace<TNodeTask>::__shared_ptr_emplace[abi:ne200100]<decltype(nullptr),std::allocator<TNodeTask>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5F40280;
  std::construct_at[abi:ne200100]<TNodeTask,decltype(nullptr),TNodeTask*>((a1 + 3));
  return a1;
}

void **std::__copy_impl::operator()[abi:ne200100]<TNodePtr *,TNodePtr *,TNodePtr *>(int a1, void **a2, void **a3, id *location)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5++;
      objc_storeStrong(location++, v7);
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t TNodeTask::TNodeTask(uint64_t a1, TDSNotifier **a2)
{
  *(a1 + 8) = 0u;
  *(a1 + 40) = 0;
  *a1 = 0;
  *(a1 + 48) = 0x3E900000000;
  TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::operator=((a1 + 8), *a2);
  return a1;
}

void sub_1E569AF60(_Unwind_Exception *a1)
{
  TPropertyValue::~TPropertyValue(v1 + 1);
  TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(v2);

  _Unwind_Resume(a1);
}

TPropertyValue *TNodeTask::SetRequest(uint64_t a1, id *a2, int a3, int a4, TPropertyValue *a5, int a6)
{
  TNodeTask::ResetRequest(a1);
  objc_storeStrong(a1, *a2);
  *(a1 + 16) = a3;
  *(a1 + 20) = a4;
  result = TPropertyValue::operator=((a1 + 24), a5);
  *(a1 + 48) = a6;
  *(a1 + 52) = 1001;
  return result;
}

void sub_1E569B060(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<OpaqueNodeRef *,TRetainReleasePolicy<OpaqueNodeRef *>>::~TRef(va);
  _Unwind_Resume(a1);
}

void TNodeTask::ResetRequest(TNodeTask *this)
{
  TNodePtr::TNodePtr(&v3, 0);
  TNodePtr::operator=(this, &v3);

  v2 = *(this + 1);
  if (v2)
  {
    TDSNotifier::RemovePtrReference(v2);
  }

  *(this + 1) = 0;
  *(this + 2) = 0;
  memset(&v3, 0, sizeof(v3));
  TPropertyValue::operator=(this + 1, &v3);
  TPropertyValue::~TPropertyValue(&v3);
  *(this + 6) = 0;
}

void TNodeIterator::Next(TNodeIterator *this@<X0>, TNodePtr *a2@<X8>)
{
  while (1)
  {
    v4 = *(this + 1);
    if (v4 == *(this + 3))
    {
      break;
    }

    v5 = *v4;
    *(this + 1) = v4 + 1;
    v6 = TNodeFromFINode(v5);
    v7 = TNode::InfoLock(v6);
    os_unfair_lock_lock(v7);
    v9 = *(v6 + 16);
    v8 = *(v6 + 24);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v7);
    os_unfair_lock_lock((v9 + 108));
    v10 = *(v9 + 123);
    os_unfair_lock_unlock((v9 + 108));
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    if ((v10 & 0x80000000) == 0)
    {
      a2->fFINode = *v4;
      return;
    }
  }

  TNodePtr::TNodePtr(a2, 0);
}

TPropertyValue *TPropertyValue::operator=(TPropertyValue *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    TPropertyValue::MoveFrom(a1, a2);
  }

  return a1;
}

const void **TRef<OpaqueNodeRef *,TRetainReleasePolicy<OpaqueNodeRef *>>::~TRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEbhsixjd5Point4BlobU8__strongP8NSObject7TString4TRefIPK10__CFString20TRetainReleasePolicyISI_EESF_IPK10__CFNumberSJ_ISO_EESF_IPK8__CFDataSJ_IST_EESF_IPK14__CFDictionarySJ_ISY_EESF_IPK7__CFURLSJ_IS13_EESF_IPK9__CFArraySJ_IS18_EESF_IP16__CFFileSecuritySJ_IS1C_EESF_IP17TReferenceCountedSJ_IS1G_EE8Property18NodeRequestOptions17NodeDSStoreStatus18DSBladeRunnerFlagsEEEE16__generic_assignB8ne200100INS0_17__move_assignmentIS1N_LNS0_6_TraitE1EEEEEvOT_EUlRS1T_OT0_E_JRNS0_6__baseILS1R_1EJS8_bhsixjdS9_SA_SD_SE_SL_SQ_SV_S10_S15_S1A_S1E_S1I_S1J_S1K_S1L_S1M_EEEOS21_EEEDcS1T_DpT0_(uint64_t *result)
{
  v1 = *result;
  if (*(*result + 16))
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*result);
    *(v1 + 16) = 0;
  }

  return result;
}

uint64_t NodeDisposeIterator(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = (result + 16);
    std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](&v2);

    return MEMORY[0x1E692CD30](v1, 0x10E0C40DDD8502FLL);
  }

  return result;
}

void TNode::PostNodeTaskRequest(uint64_t a1, void *a2)
{
  TNode::GetVolumeInfo(a1, &v25);
  v4 = v25;
  if (!v25)
  {
    goto LABEL_20;
  }

  v5 = *(*a2 + 16);
  VolumeSyncThread = TFSVolumeInfo::GetVolumeSyncThread(v25, &v24);
  if ((v5 & 0xFFFFFFFD) == 1)
  {
LABEL_3:
    TFSVolumeInfo::GetPropertyUpdateThread(v4, &v23);
    v7 = v23;
    v23 = 0uLL;
    v8 = *(&v24 + 1);
    v24 = v7;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      if (*(&v23 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v23 + 1));
      }
    }

    goto LABEL_16;
  }

  if (v5 != 1024 && v5 != 1001)
  {
    if (v5 != 1000)
    {
      goto LABEL_16;
    }

    v9 = TNode::InfoLock(VolumeSyncThread);
    os_unfair_lock_lock(v9);
    v11 = *(a1 + 16);
    v10 = *(a1 + 24);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v9);
    os_unfair_lock_lock((v11 + 108));
    v12 = *(v11 + 123);
    os_unfair_lock_unlock((v11 + 108));
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    if ((v12 & 0x20) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_3;
  }

  v13 = *a2;
  *&v23 = 0;
  v14 = TPropertyValue::As<__CFURL const*>((v13 + 24), &v23);
  if ((TCFURLInfo::GetBooleanProperty(v14, *MEMORY[0x1E695ED38], v15) & 1) == 0)
  {
    if ((atomic_load_explicit(&qword_1ECFF44E0, memory_order_acquire) & 1) == 0)
    {
      TNode::PostNodeTaskRequest();
    }

    v16 = qword_1ECFF44D8;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3321888768;
    block[2] = ___ZNK5TNode19PostNodeTaskRequestERKNSt3__110shared_ptrI9TNodeTaskEE_block_invoke;
    block[3] = &__block_descriptor_56_ea8_32c75_ZTSKZNK5TNode19PostNodeTaskRequestERKNSt3__110shared_ptrI9TNodeTaskEEE3__0_e5_v8__0l;
    v17 = *a2;
    v18 = a2[1];
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      v20 = v17;
      v21 = v18;
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      v22 = v5;
      dispatch_async(v16, block);
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    else
    {
      v20 = v17;
      v21 = 0;
      v22 = v5;
      dispatch_async(qword_1ECFF44D8, block);
    }

    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    goto LABEL_18;
  }

LABEL_16:
  if (v24)
  {
    TNodeTask::PostNodeTaskRequest(a2, &v24);
  }

LABEL_18:
  if (*(&v24 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v24 + 1));
  }

LABEL_20:
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }
}

void sub_1E569B518(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  v22 = *(v20 - 56);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  _Unwind_Resume(exception_object);
}

void TNodeTask::PostNodeTaskRequest(uint64_t a1, uint64_t a2)
{
  if ((TVolumeSyncThread::SynchingCanceled(*a2) & 1) == 0)
  {
    v4 = **a1;
    v5 = *a1;
    if (*(*a1 + 16) != 1000)
    {
      goto LABEL_9;
    }

    v26 = 0;
    v6 = TPropertyValue::As<NodeRequestOptions>(v5 + 6, &v26);
    if ((v6 & 0x80000) != 0)
    {
      goto LABEL_9;
    }

    v7 = TNodeFromFINode(v4);
    v8 = TNode::InfoLock(v7);
    os_unfair_lock_lock(v8);
    v10 = *(v7 + 16);
    v9 = *(v7 + 24);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v8);
    os_unfair_lock_lock((v10 + 108));
    v11 = *(v10 + 123);
    os_unfair_lock_unlock((v10 + 108));
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    if ((v11 & 0x20) != 0)
    {
      v19 = TNodeFromFINode(v4);
      if (TNode::RedundantSync(v19, v6))
      {
LABEL_26:

        return;
      }

      v12 = 1;
    }

    else
    {
LABEL_9:
      v12 = 0;
    }

    v13 = TString::operator NSString *(*a2);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3321888768;
    block[2] = ___ZN9TNodeTask19PostNodeTaskRequestERKNSt3__110shared_ptrIS_EERKNS1_I17TVolumeSyncThreadEE_block_invoke;
    block[3] = &__block_descriptor_80_ea8_32c98_ZTSKZN9TNodeTask19PostNodeTaskRequestERKNSt3__110shared_ptrIS_EERKNS1_I17TVolumeSyncThreadEEE3__0_e5_v8__0l;
    v15 = *a2;
    v14 = *(a2 + 8);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = *a1;
    v16 = *(a1 + 8);
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = v4;
    block[4] = v15;
    v21 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v22 = v17;
    v23 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v24 = v18;
    v25 = v12;
    dispatch_async(v13, block);
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    goto LABEL_26;
  }
}

TFSVolumeInfo *TFSVolumeInfo::GetVolumeSyncThread@<X0>(TFSVolumeInfo *this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 41);
  *a2 = *(this + 40);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

id __copy_helper_block_ea8_32c98_ZTSKZN9TNodeTask19PostNodeTaskRequestERKNSt3__110shared_ptrIS_EERKNS1_I17TVolumeSyncThreadEEE3__0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a2 + 64);
  *(a1 + 64) = result;
  *(a1 + 72) = *(a2 + 72);
  return result;
}

BOOL TRefCount::Release<int>(unsigned int *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = atomic_load(a1);
  if (v2 < 1)
  {
    LODWORD(v4) = v2;
LABEL_6:
    v5 = LogObj(5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = IsRedactionEnabled();
      if (v6)
      {
        v7 = &stru_1F5F42870;
      }

      else
      {
        v1 = [MEMORY[0x1E696AF00] callStackSymbols];
        v7 = [v1 description];
      }

      v11 = 136446722;
      v12 = "Release";
      v13 = 2048;
      v14 = v4;
      v15 = 2114;
      v16 = v7;
      _os_log_impl(&dword_1E5674000, v5, OS_LOG_TYPE_ERROR, "%{public}s overrelease -- refCount: %ld\n%{public}@", &v11, 0x20u);
      if (!v6)
      {
      }
    }

    v3 = v4 - 1;
  }

  else
  {
    while (1)
    {
      v3 = v2 - 1;
      v4 = v2;
      atomic_compare_exchange_strong_explicit(a1, &v4, v2 - 1, memory_order_release, memory_order_relaxed);
      if (v4 == v2)
      {
        break;
      }

      v2 = v4;
      if (v4 < 1)
      {
        goto LABEL_6;
      }
    }

    LODWORD(v4) = v2;
  }

  result = v4 == 1 && v3 == 0;
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t TDSNotifier::CountForOptions(uint64_t a1)
{
  if (a1)
  {
    v1 = 1;
    v2 = a1;
    do
    {
      if ((v1 & ~v2) == 0)
      {
        break;
      }

      v2 = v2 & ~v1;
      v1 *= 2;
    }

    while (v2);
    v3 = v2 << 32;
  }

  else
  {
    v3 = 0;
    v1 = 1;
  }

  v4 = v3 | a1;
  end_iter = bitmask_enum_iterator<NodeRequestOptions>::make_end_iter(a1);
  v7 = 0;
  while (v4 != end_iter || (v4 ^ end_iter) >> 32 || v1 != v6)
  {
    v8 = (v1 & HIDWORD(v4)) - 1;
    v9 = v8 > 0x3F;
    v10 = (1 << v8) & 0x800000000000808BLL;
    if (v9 || v10 == 0)
    {
      v7 = v7;
    }

    else
    {
      v7 = (v7 + 1);
    }

    if (HIDWORD(v4))
    {
      v12 = HIDWORD(v4) & ~v1;
      v4 = v4 | (v12 << 32);
      for (v1 *= 2; v12; v1 *= 2)
      {
        if ((v1 & ~v12) == 0)
        {
          break;
        }

        v12 &= ~v1;
        v4 = v4 | (v12 << 32);
      }
    }
  }

  return v7;
}

void AutoSignpostInterval_FPProvider_Gathering::~AutoSignpostInterval_FPProvider_Gathering(AutoSignpostInterval_FPProvider_Gathering *this)
{
  v4[4] = *MEMORY[0x1E69E9840];
  std::mutex::lock(this);
  v4[0] = *(this + 14);
  if (std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<TBlockingEventQueue>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<TBlockingEventQueue>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<TBlockingEventQueue>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<TBlockingEventQueue>>>>::find<unsigned long long>(this + 9, v4))
  {
    v2 = *(this + 14);
    v4[0] = &unk_1F5F414C8;
    v4[1] = this;
    v4[3] = v4;
    ISignpostInterval::EndPriv(this, v2, v4);
    std::__function::__value_func<void ()(NSObject  {objcproto9OS_os_log}*)>::~__value_func[abi:ne200100](v4);
  }

  std::mutex::unlock(this);
  std::__hash_table<std::__hash_value_type<unsigned long long,TRecordProgress>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRecordProgress>>>::~__hash_table(this + 72);

  std::mutex::~mutex(this);
  v3 = *MEMORY[0x1E69E9840];
}

void sub_1E569BC00(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<AutoSignpostInterval_FPProvider_Gathering::~AutoSignpostInterval_FPProvider_Gathering()::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<AutoSignpostInterval_FPProvider_Gathering::~AutoSignpostInterval_FPProvider_Gathering()::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::operator()(uint64_t a1, id *a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  v5 = v3;
  v6 = v5;
  v7 = *(v4 + 112);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E5674000, v6, OS_SIGNPOST_INTERVAL_END, v7, "Gathering", "End", v8, 2u);
  }
}

uint64_t *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm21ELm21EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEbhsixjd5Point4BlobU8__strongP8NSObject7TString4TRefIPK10__CFString20TRetainReleasePolicyISI_EESF_IPK10__CFNumberSJ_ISO_EESF_IPK8__CFDataSJ_IST_EESF_IPK14__CFDictionarySJ_ISY_EESF_IPK7__CFURLSJ_IS13_EESF_IPK9__CFArraySJ_IS18_EESF_IP16__CFFileSecuritySJ_IS1C_EESF_IP17TReferenceCountedSJ_IS1G_EE8Property18NodeRequestOptions17NodeDSStoreStatus18DSBladeRunnerFlagsEEEE16__generic_assignB8ne200100IRKNS0_17__copy_assignmentIS1N_LNS0_6_TraitE1EEEEEvOT_EUlRS1V_OT0_E_JRNS0_6__baseILS1R_1EJS8_bhsixjdS9_SA_SD_SE_SL_SQ_SV_S10_S15_S1A_S1E_S1I_S1J_S1K_S1L_S1M_EEERKS23_EEEDcS1V_DpT0_(uint64_t *result, _DWORD *a2, _DWORD *a3)
{
  v4 = *result;
  if (*(*result + 16) == 21)
  {
    *a2 = *a3;
  }

  else
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*result);
    *v4 = *a3;
    v4[4] = 21;
  }

  return result;
}

unint64_t TPropertyValue::As<NodeRequestOptions>(unsigned int *a1, unsigned int *a2)
{
  v2 = a1[4];
  v3 = v2;
  switch(v2)
  {
    case 0:
      if (v2)
      {
        goto LABEL_50;
      }

      v3 = *a2;
      v4 = 0xFFFFE07800000000;
      return v4 | v3;
    case 1:
      if (v2 != 1)
      {
        goto LABEL_50;
      }

      goto LABEL_45;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_50;
      }

      goto LABEL_45;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_50;
      }

      goto LABEL_45;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_50;
      }

      goto LABEL_45;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_50;
      }

      goto LABEL_45;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_50;
      }

      goto LABEL_45;
    case 9:
      goto LABEL_45;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_50;
      }

      goto LABEL_45;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_50;
      }

      goto LABEL_45;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_50;
      }

      goto LABEL_45;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_50;
      }

      goto LABEL_45;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_50;
      }

      goto LABEL_45;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_50;
      }

      goto LABEL_45;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_50;
      }

      goto LABEL_45;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_50;
      }

      goto LABEL_45;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_50;
      }

      goto LABEL_45;
    case 19:
      if (v2 == 19)
      {
        goto LABEL_45;
      }

      goto LABEL_50;
    case 20:
      if (v2 != 20)
      {
        goto LABEL_50;
      }

LABEL_45:
      v4 = 0xFFFFE08E00000000;
      v3 = *a2;
      return v4 | v3;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 23:
      if (v2 != 23)
      {
LABEL_50:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

LABEL_47:
      v4 = 0;
      v3 = *a1;
      break;
    default:
      v4 = 0xFFFFFFFF00000000;
      break;
  }

  return v4 | v3;
}

uint64_t TNode::RedundantSync(uint64_t a1, int a2)
{
  if ((a2 & 0x400000) != 0)
  {
    return 0;
  }

  else
  {
    return (atomic_fetch_or((a1 + 88), 4u) >> 2) & 1;
  }
}

void std::__destroy_at[abi:ne200100]<TNodeTask,0>(uint64_t a1)
{
  TPropertyValue::~TPropertyValue((a1 + 24));
  TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef((a1 + 8));
  v2 = *a1;
}

void TNode::HandlePopulate(TNode *this, int a2, int a3)
{
  IsInitialPopulationDeferred = TNode::IsInitialPopulationDeferred(this);
  if ((IsInitialPopulationDeferred & 1) == 0)
  {
    TGlobalNodes::RootNode(&v10, IsInitialPopulationDeferred);
    v7 = TNodeFromFINode(v10);

    if (v7 != this)
    {
      if (a2)
      {
        v8 = 83886080;
      }

      else
      {
        v8 = 0x1000000;
      }

      if (a3)
      {
        v9 = v8 | 0x40000000;
      }

      else
      {
        v9 = v8;
      }

      TNode::HandleSync(this, v9);
    }
  }
}

uint64_t TNode::IsInitialPopulationDeferred(TNode *this)
{
  v1 = atomic_load(this + 44);
  if ((v1 & 0x20) == 0)
  {
    return 0;
  }

  v4 = TNode::InfoLock(this);
  os_unfair_lock_lock(v4);
  v6 = *(this + 2);
  v5 = *(this + 3);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v4);
  os_unfair_lock_lock((v6 + 108));
  v7 = *(v6 + 123);
  os_unfair_lock_unlock((v6 + 108));
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return (v7 >> 5) & 1;
}

uint64_t TNode::HandleSync(uint64_t a1, uint64_t a2, TNodeEventPtrs *a3)
{
  v57 = *MEMORY[0x1E69E9840];
  v6 = FINodeFromTNode(a1);
  v55 = [v6 shortDescription];
  Description(a2, v53);
  AutoSignpostInterval_General_HandleSync::AutoSignpostInterval_General_HandleSync<char [34],NSString * {__strong},TString>(v56, a1, "Node: '%{public}@', options: '%@'", &v55, v53);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v53[0].fString.fRef);

  v54 = 0;
  IsFPv2 = TNode::VirtualType(a1);
  if (IsFPv2 == 27 || (IsFPv2 = TNode::IsFPv2(a1, 1), v8 = a2, IsFPv2))
  {
    v8 = a2 | 0x800000;
  }

  v9 = TNode::InfoLock(IsFPv2);
  os_unfair_lock_lock(v9);
  v11 = *(a1 + 16);
  v10 = *(a1 + 24);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v9);
  IsDataless = TFSInfo::IsDataless(v11, v12, v13);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v15 = TNode::HandleSyncStarted(a1, v8, &v54);
  v16 = v15;
  v17 = (a2 & 0x80000) == 0 || v54;
  memset(v53, 0, sizeof(v53));
  if ((a2 & 0x100) == 0)
  {
    v18 = TNode::InfoLock(v15);
    os_unfair_lock_lock(v18);
    v20 = *(a1 + 16);
    v19 = *(a1 + 24);
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      os_unfair_lock_unlock(v18);
      v21 = *(v20 + 120);
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      if (v21)
      {
        goto LABEL_11;
      }
    }

    else
    {
      os_unfair_lock_unlock(v18);
      if (*(v20 + 120))
      {
LABEL_11:
        v23 = TNode::InfoLock(v22);
        os_unfair_lock_lock(v23);
        v24 = *(a1 + 24);
        if (v24)
        {
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
          os_unfair_lock_unlock(v23);
          std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        }

        else
        {
          os_unfair_lock_unlock(v23);
        }

        goto LABEL_28;
      }
    }

    if (v17)
    {
      v25 = TNode::InfoLock(v22);
      os_unfair_lock_lock(v25);
      v27 = *(a1 + 16);
      v26 = *(a1 + 24);
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v25);
      os_unfair_lock_lock((v27 + 108));
      v28 = *(v27 + 123);
      os_unfair_lock_unlock((v27 + 108));
      if ((v28 & 0x8000) != 0)
      {
        v22 = TFSInfo::TriggerMount(v27);
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }
    }

    v29 = TNode::ParentLock(v22);
    os_unfair_lock_lock(v29);
    TNodePtr::TNodePtr(&v52, *(a1 + 48));
    os_unfair_lock_unlock(v29);
    v31 = TNode::InfoLock(v30);
    os_unfair_lock_lock(v31);
    v33 = *(a1 + 16);
    v32 = *(a1 + 24);
    if (v32)
    {
      atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v31);
    TFSInfo::Name(v33, &v51);
    if (v32)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }

    _ZNSt3__115allocate_sharedB8ne200100I7TFSInfoNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

LABEL_28:
  v34 = TNode::InfoLock(v15);
  os_unfair_lock_lock(v34);
  v36 = *(a1 + 16);
  v35 = *(a1 + 24);
  if (v35)
  {
    atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v34);
  os_unfair_lock_lock((v36 + 108));
  v37 = *(v36 + 123);
  os_unfair_lock_unlock((v36 + 108));
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  if ((*&v17 & ((v37 & 0x20) >> 5)) == 1)
  {
    v39 = FIDSNodeFromTNode(a1);
    [v39 synchronizeChildren:v16 events:v53];
  }

  if (IsDataless)
  {
    v40 = TNode::InfoLock(v38);
    os_unfair_lock_lock(v40);
    v42 = *(a1 + 16);
    v41 = *(a1 + 24);
    if (v41)
    {
      atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v40);
    IsDatalessNow = TFSInfo::IsDatalessNow(v42, v43);
    if (v41)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v41);
    }

    if ((IsDatalessNow & 1) == 0)
    {
      LODWORD(v16) = v16 | 0x800000;
    }
  }

  v45 = TNode::VirtualType(a1);
  v46 = ICloudDriveFPFSEnabled();
  if ((v45 & 0xFE) == 0x18)
  {
    v47 = v46;
  }

  else
  {
    v47 = 0;
  }

  if (v47 == 1 && !TNode::IsPopulated(a1))
  {
    LODWORD(v16) = v16 | 0x800000;
  }

  TNode::HandleSyncCompleted(a1, v16);
  TNodeEventPtrs::AddEvents(a3, v53);
  v50 = v53;
  std::vector<std::pair<TNodePtr,TNodeEventPtr>>::__destroy_vector::operator()[abi:ne200100](&v50);
  AutoSignpostInterval_General_HandleSync::~AutoSignpostInterval_General_HandleSync(v56);
  v48 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1E569C6CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void **);
  v8 = va_arg(va1, std::__shared_weak_count *);
  va_copy(va2, va1);
  v9 = va_arg(va2, const void *);
  v11 = va_arg(va2, id);
  va_copy(va3, va2);
  v12 = va_arg(va3, void);
  v14 = va_arg(va3, void);
  v15 = va_arg(va3, void);
  v16 = va_arg(va3, void);
  v17 = va_arg(va3, void);

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va1);

  va_copy(v6, va2);
  std::vector<std::pair<TNodePtr,TNodeEventPtr>>::__destroy_vector::operator()[abi:ne200100](va);
  AutoSignpostInterval_General_HandleSync::~AutoSignpostInterval_General_HandleSync(va3);
  _Unwind_Resume(a1);
}

uint64_t TNode::HandleSync(uint64_t a1, uint64_t a2)
{
  memset(v4, 0, sizeof(v4));
  v2 = TNode::HandleSync(a1, a2, v4);
  TNodeEventPtrs::SendNotifications(v4);
  v5 = v4;
  std::vector<std::pair<TNodePtr,TNodeEventPtr>>::__destroy_vector::operator()[abi:ne200100](&v5);
  return v2;
}

void sub_1E569C894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::pair<TNodePtr,TNodeEventPtr>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

ISignpostInterval *AutoSignpostInterval_General_HandleSync::AutoSignpostInterval_General_HandleSync<char [34],NSString * {__strong},TString>(ISignpostInterval *a1, void *a2, __CFString *a3, void **a4, TString **a5)
{
  v15[4] = *MEMORY[0x1E69E9840];
  v10 = LogObj(5);
  TString::TString(v15, "HandleSync");
  ISignpostInterval::ISignpostInterval(a1, v10);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v15[0].fString.fRef);

  *(a1 + 14) = ISignpostInterval::MakeSignpostID(a1, a2);
  std::mutex::lock(a1);
  v15[0].fString.fRef = a3;
  v15[1].fString.fRef = strlen(a3);
  FormatDetails<NSString * {__strong},TString>(v15, a4, a5, &__p);
  v11 = *(a1 + 14);
  v15[0].fString.fRef = &unk_1F5F40B78;
  v15[1].fString.fRef = a1;
  v15[2].fString.fRef = &__p;
  v15[3].fString.fRef = v15;
  ISignpostInterval::BeginPriv(a1, v11, v15);
  std::__function::__value_func<void ()(NSObject  {objcproto9OS_os_log}*)>::~__value_func[abi:ne200100](v15);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::mutex::unlock(a1);
  v12 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1E569C9F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<void ()(NSObject  {objcproto9OS_os_log}*)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock(v15);
  ISignpostInterval::~ISignpostInterval(v15);
  _Unwind_Resume(a1);
}

void AutoSignpostInterval_General_HandleSync::AutoSignpostInterval_General_HandleSync<char [34],NSString * {__strong},TString>(void *,char [34],NSString * {__strong},TString const&)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}::operator()(uint64_t *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *a1;
  v5 = v3;
  v6 = v5;
  v7 = *(v4 + 112);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v8 = a1[1];
    if (*(v8 + 23) < 0)
    {
      v9 = ": ";
      v8 = *v8;
      if (!*(a1[1] + 8))
      {
        v9 = "";
      }
    }

    else if (*(v8 + 23))
    {
      v9 = ": ";
    }

    else
    {
      v9 = "";
    }

    v11 = 136446466;
    v12 = v9;
    v13 = 2082;
    v14 = v8;
    _os_signpost_emit_with_name_impl(&dword_1E5674000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v7, "HandleSync", "Begin%{public}s%{public}s", &v11, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

const __CFURL *TCFURLInfo::GetNumericalProperty(const __CFURL *this, const __CFString *a2, const __CFString *a3)
{
  valuePtr = 0;
  if (this)
  {
    error = 0;
    propertyValueTypeRefPtr = 0;
    if (CFURLCopyResourcePropertyForKey(this, a2, &propertyValueTypeRefPtr, &error))
    {
      if (propertyValueTypeRefPtr)
      {
        CFNumberGetValue(propertyValueTypeRefPtr, kCFNumberSInt64Type, &valuePtr);
      }

      goto LABEL_14;
    }

    Domain = CFErrorGetDomain(error);
    cf1 = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&cf1, Domain);
    if (*MEMORY[0x1E695E628])
    {
      v5 = *MEMORY[0x1E695E628];
    }

    else
    {
      v5 = &stru_1F5F42870;
    }

    if (CFEqual(cf1, v5))
    {
      Code = CFErrorGetCode(error);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf1);
      if (Code == 260)
      {
LABEL_14:
        TAutoRef<__CFError *,TRetainReleasePolicy<__CFError *>>::~TAutoRef(&error);
        TAutoRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>::~TAutoRef(&propertyValueTypeRefPtr);
        return valuePtr;
      }
    }

    else
    {
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf1);
    }

    if (CFEqual(a2, *MEMORY[0x1E695E448]))
    {
      valuePtr = 0;
    }

    goto LABEL_14;
  }

  return this;
}

void sub_1E569CCC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, const void *a11)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a9);
  TAutoRef<__CFError *,TRetainReleasePolicy<__CFError *>>::~TAutoRef(&a10);
  TAutoRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>::~TAutoRef(&a11);
  _Unwind_Resume(a1);
}

uint64_t std::vector<TString>::__emplace_back_slow_path<char const(&)[21]>(uint64_t a1, const char *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
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
    std::allocator<TString>::allocate_at_least[abi:ne200100](a1, v7);
  }

  v14 = 0;
  v15 = 8 * v2;
  TString::TString((8 * v2), a2);
  v16 = (8 * v2 + 8);
  v8 = *(a1 + 8);
  v9 = (8 * v2 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TString>,TString*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<TString>::~__split_buffer(&v14);
  return v13;
}

void sub_1E569CDF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<TString>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t TNodeEvent::NotifyCommon(unsigned int *a1, TDSNotifier **a2, int a3)
{
  if (TNode::IsContextOpen(a1))
  {
    v7 = **a2;
    v6 = *(*a2 + 1);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      if (!v7)
      {
        return 0;
      }

      v7 = **a2;
    }

    else if (!v7)
    {
      return 0;
    }

    TNodeEvent::RedispatchEventToNotifier(a1, *a1, *(v7 + 40), a2);
    if (a3)
    {
      TDSNotifier::Tickle(*a2, *a1 == 8);
    }
  }

  return 0;
}

uint64_t TNodeEvent::RedispatchEventToNotifier(uint64_t a1, unsigned int a2, TBlockingEventQueue *this, TDSNotifier **a4)
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = atomic_load(*a4 + 11);
  if (v6 > 0 || a2 > 0x32 || ((1 << a2) & 0x4000000100358) == 0)
  {
    TBlockingEventQueue::EventQueueFromID(this, &v42);
    if (v42)
    {
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v7 = [[FINodeEvent alloc] init:a1];
      v8 = v7;
      if (v7)
      {
        v9 = v7 + 8;
      }

      else
      {
        v9 = 0;
      }

      TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::operator=(v9 + 8, *a4);
      v10 = *a4;
      v44.fFINode = v10;
      if (v10)
      {
        TDSNotifier::AddPtrReference(v10);
      }

      TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(&v44);
      if ((*v9 & 0xFFFFFFFD) == 4)
      {
        v11 = [*(v9 + 1) nodeRef];
        v13 = TNode::NodeFromNodeRef(v11, v12);
        TNodePtr::TNodePtr(&v44, v13);
        v14 = TNodeFromFINode(v44.fFINode);
        TNode::CopyReplicas(v14, v15);
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v16 = v36 = 0u;
        v17 = [v16 countByEnumeratingWithState:&v35 objects:v45 count:16];
        if (v17)
        {
          v18 = *v36;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v36 != v18)
              {
                objc_enumerationMutation(v16);
              }

              v20 = *(*(&v35 + 1) + 8 * i);
              v34 = [[FINodeEvent alloc] init:v9];
              v21 = (v34 + 8);
              if (!v34)
              {
                v21 = 0;
              }

              objc_storeStrong(v21 + 1, v20);
              std::vector<TNodeEventPtr>::push_back[abi:ne200100](&v39, &v34);
              v22 = v34;
              v34 = 0;
            }

            v17 = [v16 countByEnumeratingWithState:&v35 objects:v45 count:16];
          }

          while (v17);
        }
      }

      v23 = v42;
      v24 = v8;
      v33 = v24;
      TBlockingQueue<TNodeEventPtr>::Enqueue(v23, &v33);
      v25 = v33;
      v33 = 0;

      v26 = v39;
      v27 = v40;
      while (v26 != v27)
      {
        v28 = *v26;
        v32 = v28;
        TBlockingQueue<TNodeEventPtr>::Enqueue(v23, &v32);
        v29 = v32;
        v32 = 0;

        ++v26;
      }

      v44.fFINode = &v39;
      std::vector<TNodeEventPtr>::__destroy_vector::operator()[abi:ne200100](&v44);
    }

    if (v43)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v43);
    }
  }

  v30 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1E569D170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, void **a27)
{
  a27 = &a22;
  std::vector<TNodeEventPtr>::__destroy_vector::operator()[abi:ne200100](&a27);
  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  _Unwind_Resume(a1);
}

void TBlockingEventQueue::EventQueueFromID(TBlockingEventQueue *this@<X0>, void *a2@<X8>)
{
  EventQueueSpinLock();
  os_unfair_lock_lock(&_MergedGlobals);
  v9[0] = this;
  v5 = EventQueues();
  if (std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<TBlockingEventQueue>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<TBlockingEventQueue>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<TBlockingEventQueue>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<TBlockingEventQueue>>>>::find<unsigned long long>(v5, v9))
  {
    v6 = EventQueues();
    v9[2] = v9;
    v7 = std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<TBlockingEventQueue>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<TBlockingEventQueue>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<TBlockingEventQueue>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<TBlockingEventQueue>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v6, v9);
    v8 = v7[4];
    *a2 = v7[3];
    a2[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  os_unfair_lock_unlock(&_MergedGlobals);
}

void TBlockingQueue<TNodeEventPtr>::Enqueue(uint64_t a1, id *a2)
{
  std::mutex::lock((a1 + 48));
  v4 = *(a1 + 40);
  std::deque<TNodeEventPtr>::push_back(a1, a2);
  if (!v4)
  {
    TConditionVariable::Signal((a1 + 112));
  }

  std::mutex::unlock((a1 + 48));
}

void *std::deque<TNodeEventPtr>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::allocator<TNodeEventPtr *>::allocate_at_least[abi:ne200100](a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<TNodeEventPtr *>::emplace_back<TNodeEventPtr *&>(a1, &v10);
}

void sub_1E569D4F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id std::deque<TNodeEventPtr>::push_back(void *a1, id *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = ((v5 - v4) << 6) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<TNodeEventPtr>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = (*(v4 + ((v7 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v7 & 0x1FF));
  }

  result = *a2;
  *v8 = result;
  ++a1[5];
  return result;
}

void *std::__split_buffer<TNodeEventPtr *>::emplace_back<TNodeEventPtr *>(void *result, void *a2)
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

      std::allocator<TNodeEventPtr *>::allocate_at_least[abi:ne200100](result[4], v11);
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
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void TConditionVariable::Signal(TConditionVariable *this)
{
  *(this + 16) = 0;
  v2 = *(this + 6);
  std::mutex::lock(v2);
  std::mutex::unlock(v2);

  std::condition_variable::notify_all(this);
}

void TDSNotifier::Tickle(TDSNotifier *this, int a2)
{
  v4 = TTime::MicrosecondsSinceStartup(this);
  TickleLock();
  os_unfair_lock_lock(&_MergedGlobals_4);
  if (a2)
  {
    v5 = 200000;
LABEL_16:
    *(this + 8) = v4;
    *(this + 9) = v5;
    os_unfair_lock_unlock(&_MergedGlobals_4);
    v9 = *this;

    TClientChangeNotifier::WakeUp(v9);
    return;
  }

  v7 = *(this + 8);
  v6 = *(this + 9);
  if (v4 - v7 >= v6)
  {
    if (v4 - v7 >= 2 * v6)
    {
      v10 = (v6 >> 1);
      v8 = &v10;
      if (v6 >> 7 < 0xC35)
      {
        v8 = &kMinimumTickleDelta;
      }
    }

    else
    {
      v10 = (2 * v6);
      v8 = &v10;
      if (2 * v6 > 0x3D0900)
      {
        v8 = &kMaximumTickleDelta;
      }
    }

    v5 = *v8;
    goto LABEL_16;
  }

  if (*(this + 60) == 1)
  {

    os_unfair_lock_unlock(&_MergedGlobals_4);
  }

  else
  {
    *(this + 60) = 1;
    os_unfair_lock_unlock(&_MergedGlobals_4);
    v10 = this;
    TRefCount::Retain<int>(this + 9);
    TClientChangeNotifier::SetTimerToHandleTickle(*this, this, v6 + v7);
    TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(&v10);
  }
}

void sub_1E569D8A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(va);
  _Unwind_Resume(a1);
}

void std::vector<TNodeEventPtr>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        TNodeEventPtr::~TNodeEventPtr(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void TickleLock(void)
{
  if ((atomic_load_explicit(&qword_1ECFF4590, memory_order_acquire) & 1) == 0)
  {
    TickleLock();
  }
}

void TickleLock()
{
  if (__cxa_guard_acquire(&qword_1ECFF4590))
  {
    _MergedGlobals_4 = 0;

    __cxa_guard_release(&qword_1ECFF4590);
  }
}

void TClientChangeNotifier::WakeUp(TClientChangeNotifier *this)
{
  std::shared_ptr<TClientChangeNotifier>::shared_ptr[abi:ne200100]<TClientChangeNotifier,0>(&v17, this);
  v2 = *(this + 6);
  if (v2)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3321888768;
    v11[2] = ___ZN21TClientChangeNotifier6WakeUpEv_block_invoke_2;
    v11[3] = &__block_descriptor_48_ea8_32c44_ZTSKZN21TClientChangeNotifier6WakeUpEvE3__1_e5_v8__0l;
    v3 = v17;
    v4 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      v12 = v3;
      v13 = v4;
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      dispatch_async(v2, v11);
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    else
    {
      v12 = v17;
      v13 = 0;
      dispatch_async(v2, v11);
    }

    v9 = v13;
    if (v13)
    {
LABEL_8:
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  else
  {
    Main = CFRunLoopGetMain();
    v6 = *MEMORY[0x1E695E8D0];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3321888768;
    block[2] = ___ZN21TClientChangeNotifier6WakeUpEv_block_invoke;
    block[3] = &__block_descriptor_48_ea8_32c44_ZTSKZN21TClientChangeNotifier6WakeUpEvE3__0_e5_v8__0l;
    v7 = v17;
    v8 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = v7;
      v16 = v8;
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v15 = v17;
      v16 = 0;
    }

    CFRunLoopPerformBlock(Main, v6, block);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    v10 = CFRunLoopGetMain();
    CFRunLoopWakeUp(v10);
    v9 = v16;
    if (v16)
    {
      goto LABEL_8;
    }
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }
}

void sub_1E569DB74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  v23 = *(v21 - 24);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  _Unwind_Resume(exception_object);
}

void *std::shared_ptr<TClientChangeNotifier>::shared_ptr[abi:ne200100]<TClientChangeNotifier,0>(void *a1, void *a2)
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

uint64_t __copy_helper_block_ea8_32c44_ZTSKZN21TClientChangeNotifier6WakeUpEvE3__1(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void TNode::SynchronizeChildren(uint64_t a1, unsigned int a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = FINodeFromTNode(a1);
  v39 = [v3 shortDescription];
  Description(a2, buf);
  AutoSignpostInterval_General_SynchronizeChildren::AutoSignpostInterval_General_SynchronizeChildren<char [34],NSString * {__strong},TString>(v40, a1, "Node: '%{public}@', options: '%@'", &v39, buf);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(buf);

  v5 = TNode::InfoLock(v4);
  os_unfair_lock_lock(v5);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    os_unfair_lock_unlock(v5);
    v8 = *(v6 + 120);
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  else
  {
    os_unfair_lock_unlock(v5);
    v8 = *(v6 + 120);
  }

  if (v8)
  {
    goto LABEL_6;
  }

  TNode::CFURL(a1, &v33);
  v9 = v33;
  v10 = [v9 path];
  theString = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&theString, v10);

  v11 = theString;
  *buf = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, v11);
  CFRelease(&stru_1F5F42870);
  *buf = MutableCopy;
  TString::Append(buf, "/");
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);

  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v33);
  LOBYTE(v9) = PathEligibleForSynching(buf);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(buf);
  if (v9)
  {
LABEL_6:
    v13 = TNode::VirtualType(a1);
    if (v13 == 30)
    {
      v14 = LogObj(6);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E5674000, v14, OS_LOG_TYPE_DEFAULT, "Synching iTunes device list", buf, 2u);
      }
    }

    v15 = TNode::InfoLock(v13);
    os_unfair_lock_lock(v15);
    v17 = *(a1 + 16);
    v16 = *(a1 + 24);
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v15);
    os_unfair_lock_lock((v17 + 108));
    v18 = *(v17 + 123);
    os_unfair_lock_unlock((v17 + 108));
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    if ((v18 & 0x100) != 0)
    {
      TNode::GetVolumeInfo(a1, buf);
      TFSVolumeInfo::ReadHiddenListFile(*buf);
      if (v36)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v36);
      }
    }

    v19 = TNode::NeedsChildReconcile(a1);
    v20 = (a2 & 0x1C00000) != 0 || v19;
    if ((a2 & 0xA00000) == 0xA00000 || (a2 & 0x1200000) == 0x200000 || v20)
    {
      TTime::MicrosecondsSinceStartup(v19);
      TNodePtr::TNodePtr(&theString, a1);
      TNode::StPopulating::StPopulating(buf, &theString, 0);

      TNode::StPopulating::~StPopulating(buf);
      if ((a2 & 0x40000000) != 0)
      {
        TNode::SetPrefetchPropertiesOnSync(a1);
      }

      Dir = TFSVolumeInfo::ShouldUseReadDir(*a1);
      if (Dir)
      {
        Dir = TNode::ShouldUseReadDir(a1);
        v22 = Dir;
      }

      else
      {
        v22 = 0;
      }

      if ((TFSVolumeInfo::ShouldSkipLSProperties(Dir) & 1) == 0)
      {
        atomic_fetch_or((a1 + 88), 0x1000u);
      }

      TNodePtr::TNodePtr(&theString, a1);
      TFSInfoSynchronizer::TFSInfoSynchronizer(buf, &theString);

      v23 = objc_autoreleasePoolPush();
      Current = CFAbsoluteTimeGetCurrent();
      v25 = *(*a1 + 132);
      v26 = atomic_load((a1 + 88));
      Children = TFSInfoSynchronizer::FetchChildren(buf, v22, v25, (v26 & 0x1000) == 0);
      v28 = Children;
      if (Children == -8086 || !Children)
      {
        if (Children != -8086)
        {
          atomic_fetch_or((a1 + 88), 0x1000u);
        }

        v29 = CFAbsoluteTimeGetCurrent();
        if (TFSVolumeInfo::ShouldRecordIterationTimes(v30))
        {
          TNode::Path(a1, &theString);
          if (CFStringGetLength(theString))
          {
            TFSVolumeInfo::UpdateIterationPerfData(&theString, v22, v29 - Current, v28 == -8086, (v36 - *buf) >> 4);
          }

          TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);
        }
      }

      objc_autoreleasePoolPop(v23);
      if (!v28 || v28 == -8086)
      {
        operator new();
      }

      if (v38)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v38);
      }

      theString = buf;
      std::vector<std::shared_ptr<TCFURLInfoList>>::__destroy_vector::operator()[abi:ne200100](&theString);
    }
  }

  AutoSignpostInterval_General_SynchronizeChildren::~AutoSignpostInterval_General_SynchronizeChildren(v40);
  v31 = *MEMORY[0x1E69E9840];
}

void sub_1E569EE2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21, uint64_t a22, uint64_t a23, uint64_t a24, id a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, uint64_t a30, void ****a31, uint64_t a32, uint64_t a33, void ***a34, uint64_t a35, uint64_t a36, void **a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  TNodeEventPtr::~TNodeEventPtr(&a17);

  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  TNode::StPopulating::~StPopulating(&a31);
  a31 = &a34;
  std::vector<std::pair<TNodePtr,std::shared_ptr<TFSInfo>>>::__destroy_vector::operator()[abi:ne200100](&a31);
  a34 = &a37;
  std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](&a34);
  a37 = &a40;
  std::vector<std::shared_ptr<TCFURLInfoList>>::__destroy_vector::operator()[abi:ne200100](&a37);
  std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  TFSInfoSynchronizer::~TFSInfoSynchronizer(&a43);
  AutoSignpostInterval_General_SynchronizeChildren::~AutoSignpostInterval_General_SynchronizeChildren((v44 - 232));
  _Unwind_Resume(a1);
}

uint64_t std::vector<TString>::__emplace_back_slow_path<char const(&)[31]>(uint64_t a1, const char *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
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
    std::allocator<TString>::allocate_at_least[abi:ne200100](a1, v7);
  }

  v14 = 0;
  v15 = 8 * v2;
  TString::TString((8 * v2), a2);
  v16 = (8 * v2 + 8);
  v8 = *(a1 + 8);
  v9 = (8 * v2 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TString>,TString*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<TString>::~__split_buffer(&v14);
  return v13;
}

void sub_1E569F400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<TString>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

ISignpostInterval *AutoSignpostInterval_General_SynchronizeChildren::AutoSignpostInterval_General_SynchronizeChildren<char [34],NSString * {__strong},TString>(ISignpostInterval *a1, void *a2, __CFString *a3, void **a4, TString **a5)
{
  v15[4] = *MEMORY[0x1E69E9840];
  v10 = LogObj(5);
  TString::TString(v15, "SynchronizeChildren");
  ISignpostInterval::ISignpostInterval(a1, v10);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v15[0].fString.fRef);

  *(a1 + 14) = ISignpostInterval::MakeSignpostID(a1, a2);
  std::mutex::lock(a1);
  v15[0].fString.fRef = a3;
  v15[1].fString.fRef = strlen(a3);
  FormatDetails<NSString * {__strong},TString>(v15, a4, a5, &__p);
  v11 = *(a1 + 14);
  v15[0].fString.fRef = &unk_1F5F40F58;
  v15[1].fString.fRef = a1;
  v15[2].fString.fRef = &__p;
  v15[3].fString.fRef = v15;
  ISignpostInterval::BeginPriv(a1, v11, v15);
  std::__function::__value_func<void ()(NSObject  {objcproto9OS_os_log}*)>::~__value_func[abi:ne200100](v15);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::mutex::unlock(a1);
  v12 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1E569F55C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<void ()(NSObject  {objcproto9OS_os_log}*)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock(v15);
  ISignpostInterval::~ISignpostInterval(v15);
  _Unwind_Resume(a1);
}

void AutoSignpostInterval_General_SynchronizeChildren::AutoSignpostInterval_General_SynchronizeChildren<char [34],NSString * {__strong},TString>(void *,char [34],NSString * {__strong},TString const&)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}::operator()(uint64_t *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *a1;
  v5 = v3;
  v6 = v5;
  v7 = *(v4 + 112);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v8 = a1[1];
    if (*(v8 + 23) < 0)
    {
      v9 = ": ";
      v8 = *v8;
      if (!*(a1[1] + 8))
      {
        v9 = "";
      }
    }

    else if (*(v8 + 23))
    {
      v9 = ": ";
    }

    else
    {
      v9 = "";
    }

    v11 = 136446466;
    v12 = v9;
    v13 = 2082;
    v14 = v8;
    _os_signpost_emit_with_name_impl(&dword_1E5674000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v7, "SynchronizeChildren", "Begin%{public}s%{public}s", &v11, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

BOOL TNode::NeedsChildReconcile(TNode *this)
{
  v6 = 2048;
  TNode::GetPermissions(this, &v6);
  if (!v6)
  {
    return 0;
  }

  v2 = *(this + 7);
  v3 = atomic_load(TNode::GetNotifierList(this));
  if (v3 > 0)
  {
    return 1;
  }

  if (!v2)
  {
    return 0;
  }

  v5 = atomic_load((v2 + 192));
  return v5 != 0;
}

void TFSVolumeInfo::ReadHiddenListFile(TFSVolumeInfo *this)
{
  v12 = *MEMORY[0x1E69E9840];
  if (TFSVolumeInfo::MayHaveHiddenList(this))
  {
    std::mutex::lock((this + 224));
    if ((*(this + 288) & 1) == 0)
    {
      v2 = *(this + 7);
      if (v2)
      {
        if (!TFSInfo::CopyPathToCBuffer(v2, __dst, 1024) && strlcat(__dst, "/.hidden", 0x400uLL) <= 0x3FF)
        {
          v3 = fopen(__dst, "r");
          if (v3)
          {
            while (fgets(__s, 765, v3))
            {
              v4 = strspn(__s, " \t");
              v5 = strcspn(&__s[v4], "\n\r\f");
              TString::TString(&v9, &__s[v4], v5);
              v6 = *(this + 25);
              if (v6 >= *(this + 26))
              {
                v7 = std::vector<TString>::__emplace_back_slow_path<TString const&>(this + 192, &v9);
              }

              else
              {
                std::allocator_traits<std::allocator<TString>>::construct[abi:ne200100]<TString,TString const&,void,0>(this + 192, *(this + 25), &v9);
                v7 = v6 + 8;
                *(this + 25) = v6 + 8;
              }

              *(this + 25) = v7;
              TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v9.fString.fRef);
            }

            fclose(v3);
          }
        }

        *(this + 288) = 1;
      }
    }

    std::mutex::unlock((this + 224));
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1E569F904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a9);
  std::mutex::unlock((v9 + 224));
  _Unwind_Resume(a1);
}

uint64_t TNode::GetPermissions(uint64_t a1, int *a2)
{
  v4 = TNode::InfoLock(a1);
  os_unfair_lock_lock(v4);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v4);
  v8 = TNode::ParentLock(v7);
  os_unfair_lock_lock(v8);
  TNodePtr::TNodePtr(&v91, *(a1 + 48));
  os_unfair_lock_unlock(v8);
  v9 = *(v6 + 120);
  if (v9 == 35 || v9 == 30 || v9 == 27)
  {
    v10 = *a2;
    v11 = 2147462040;
LABEL_7:
    v12 = v10 & v11;
    goto LABEL_8;
  }

  TNode::GetVolumeInfo(a1, &v89);
  IsLocked = v90;
  v15 = *(v89 + 104);
  if (v90)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v90);
  }

  if (v15)
  {
    v16 = TNode::InfoLock(IsLocked);
    os_unfair_lock_lock(v16);
    v17 = *(a1 + 24);
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      os_unfair_lock_unlock(v16);
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    else
    {
      os_unfair_lock_unlock(v16);
    }

    v10 = *a2;
    v11 = 2145978372;
    goto LABEL_7;
  }

  if ((*a2 & 0x10000) != 0)
  {
    IsLocked = TNode::UserCanRead(a1);
    if (IsLocked)
    {
      v18 = 0x10000;
    }

    else
    {
      v18 = 0;
    }

    if ((*a2 & 0x2000) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v18 = 0;
    if ((*a2 & 0x2000) == 0)
    {
LABEL_21:
      v19 = 0;
      goto LABEL_33;
    }
  }

  IsLocked = TFSInfo::IsLocked(v6);
  if (IsLocked & 1) != 0 || (IsLocked = IsRunningInFinder(), (IsLocked))
  {
    v19 = 0x2000;
  }

  else
  {
    IsLocked = TNode::UserCanChangePermissions(a1);
    v19 = 0;
    if (IsLocked)
    {
      v18 |= 0x2000u;
    }
  }

LABEL_33:
  if ((*a2 & 8) != 0)
  {
    IsLocked = TFSInfo::IsLocked(v6);
    if ((IsLocked & 1) != 0 || (IsLocked = IsRunningInFinder(), IsLocked))
    {
      v19 |= 8u;
    }

    else
    {
      IsLocked = TNode::UserCanWriteDataFork(a1);
      if (IsLocked)
      {
        v18 |= 8u;
      }
    }
  }

  if ((*(a2 + 2) & 0x10) != 0)
  {
    IsLocked = TFSInfo::IsLocked(v6);
    if (IsLocked & 1) != 0 || (IsLocked = TFSInfo::LowLevelIsLockFile(v6), (IsLocked) || (IsLocked = IsRunningInFinder(), (IsLocked) || (v20 = atomic_load((a1 + 88)), (v20 & 2) != 0))
    {
      v19 |= 0x100000u;
    }

    else
    {
      IsLocked = TNode::IsSymlink(a1);
      if ((IsLocked & 1) == 0)
      {
        if (TNode::UserCanWriteDataFork(a1))
        {
          IsLocked = TNode::IsVolume(a1);
          if (!IsLocked || (IsLocked = TNode::IsLocalVolume(a1), IsLocked))
          {
            v18 |= 0x100000u;
          }
        }

        else
        {
          IsLocked = TNode::IsLocalVolume(a1);
          if (IsLocked)
          {
            v18 |= 0x100000u;
          }
        }
      }
    }
  }

  if ((*a2 & 0x10) != 0)
  {
    IsLocked = TFSInfo::IsLocked(v6);
    if ((IsLocked & 1) != 0 || (IsLocked = IsRunningInFinder(), IsLocked))
    {
      v19 |= 0x10u;
    }

    else if (*(v6 + 120) == 22 || (IsLocked = TNode::IsSymlink(a1), (IsLocked & 1) == 0) && (IsLocked = TNode::UserCanWriteDataFork(a1), IsLocked) && ((IsLocked = TNode::IsVolume(a1), !IsLocked) || (IsLocked = TNode::IsLocalVolume(a1), IsLocked)))
    {
      v18 |= 0x10u;
    }
  }

  if ((*a2 & 0x20) != 0)
  {
    TNode::GetVolumeInfo(a1, &v89);
    if (*(v89 + 135) == 1)
    {
      v21 = TFSInfo::UserCanChangeLock(v6);
      IsLocked = v90;
      if (v90)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v90);
      }

      if (v21)
      {
        v18 |= 0x20u;
      }
    }

    else
    {
      IsLocked = v90;
      if (v90)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v90);
      }
    }
  }

  if ((*(a2 + 1) & 2) != 0)
  {
    IsLocked = TFSInfo::IsLocked(v6);
    if ((IsLocked & 1) != 0 || (IsLocked = IsRunningInFinder(), IsLocked))
    {
      v19 |= 0x200u;
    }

    else
    {
      IsLocked = TNode::IsDeferredForSymlink(a1, TFSInfo::IsApplication, 0);
      if ((IsLocked & 1) == 0)
      {
        IsLocked = TNode::IsAlias(a1);
        if ((IsLocked & 1) == 0)
        {
          IsLocked = TNode::IsContainer(a1);
          if ((IsLocked & 1) == 0)
          {
            IsLocked = TNode::UserCanWriteDataFork(a1);
            if (IsLocked)
            {
              v18 |= 0x200u;
            }
          }
        }
      }
    }
  }

  if ((*(a2 + 2) & 2) != 0)
  {
    IsLocked = TFSInfo::IsLocked(v6);
    if ((IsLocked & 1) != 0 || (IsLocked = IsRunningInFinder(), IsLocked))
    {
      v19 |= 0x20000u;
    }

    else
    {
      IsLocked = TNode::UserCanWriteDataFork(a1);
      if (IsLocked)
      {
        v18 |= 0x20000u;
      }
    }
  }

  if (*(a2 + 1))
  {
    IsLocked = TFSInfo::IsLocked(v6);
    if ((IsLocked & 1) != 0 || (IsLocked = IsRunningInFinder(), IsLocked))
    {
      v19 |= 0x100u;
    }

    else
    {
      IsLocked = TNode::IsDeferredForSymlink(a1, TFSInfo::IsApplication, 0);
      if (IsLocked)
      {
        IsLocked = TNode::UserCanWriteDataFork(a1);
        if (IsLocked)
        {
          v18 |= 0x100u;
        }
      }
    }
  }

  if ((*(a2 + 1) & 0x80) != 0)
  {
    IsLocked = TFSInfo::IsLocked(v6);
    if ((IsLocked & 1) != 0 || (IsLocked = IsRunningInFinder(), IsLocked))
    {
      v19 |= 0x8000u;
    }

    else
    {
      IsLocked = TNode::UserCanWriteDataFork(a1);
      if (IsLocked)
      {
        v18 |= 0x8000u;
      }
    }
  }

  if ((*(a2 + 1) & 4) != 0)
  {
    v22 = TNode::InfoLock(IsLocked);
    os_unfair_lock_lock(v22);
    v24 = *(a1 + 16);
    v23 = *(a1 + 24);
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v22);
    IsLocked = TFSInfo::IsAlias(v24);
    v25 = IsLocked;
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    if (v25)
    {
      IsLocked = TNode::IsSymlink(a1);
      if ((IsLocked & 1) == 0)
      {
        IsLocked = TNode::UserCanWriteDataFork(a1);
        if (IsLocked)
        {
          IsLocked = TNode::UserCanWriteDataFork(a1);
          if (IsLocked)
          {
            v18 |= 0x400u;
          }
        }
      }
    }
  }

  if ((*a2 & 0x40) != 0)
  {
    IsLocked = TFSInfo::IsLocked(v6);
    if ((IsLocked & 1) != 0 || (v26 = IsRunningInFinder(), v26) && (TGlobalNodes::BootNode(&v89, v26), v27 = TNodeFromFINode(v89), v89, v27 != a1))
    {
      v19 |= 0x40u;
    }

    else
    {
      IsLocked = TNode::IsContainer(a1);
      if (IsLocked)
      {
        v18 |= 0x40u;
      }

      else
      {
        IsLocked = TNode::UserCanWriteDataFork(a1);
        if (IsLocked)
        {
          IsLocked = TNode::UserCanWriteDataFork(a1);
          if (IsLocked)
          {
            v18 |= 0x40u;
          }
        }
      }
    }
  }

  if ((*(a2 + 1) & 8) != 0)
  {
    v28 = TNode::InfoLock(IsLocked);
    os_unfair_lock_lock(v28);
    v30 = *(a1 + 16);
    v29 = *(a1 + 24);
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v28);
    os_unfair_lock_lock((v30 + 108));
    v31 = *(v30 + 123);
    os_unfair_lock_unlock((v30 + 108));
    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    }

    if ((v31 & 0x20) != 0 || (IsLocked = TNode::AliasIsContainer(a1), IsLocked))
    {
      IsLocked = TNode::UserCanBrowse(a1);
      if (IsLocked)
      {
        v18 |= 0x800u;
      }
    }
  }

  v32 = *a2;
  if ((*a2 & 0x80000) != 0)
  {
    v33 = TNode::InfoLock(IsLocked);
    os_unfair_lock_lock(v33);
    v35 = *(a1 + 16);
    v34 = *(a1 + 24);
    if (v34)
    {
      atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v33);
    os_unfair_lock_lock((v35 + 108));
    v36 = *(v35 + 123);
    os_unfair_lock_unlock((v35 + 108));
    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    }

    if ((v36 & 0x20) != 0 || (IsLocked = TNode::AliasIsContainer(a1), IsLocked))
    {
      IsLocked = TNode::UserCanListContent(a1);
      if (IsLocked)
      {
        v18 |= 0x80000u;
      }
    }

    v32 = *a2;
  }

  if ((v32 & 0x5004) != 0)
  {
    if (v32 < 0)
    {
      IsLocked = IsRunningInFinder();
      v37 = IsLocked ^ 1;
    }

    else
    {
      v37 = 0;
    }

    v38 = TNode::InfoLock(IsLocked);
    os_unfair_lock_lock(v38);
    v40 = *(a1 + 16);
    v39 = *(a1 + 24);
    if (v39)
    {
      atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v38);
    os_unfair_lock_lock((v40 + 108));
    v41 = *(v40 + 123);
    os_unfair_lock_unlock((v40 + 108));
    if (v39)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v39);
    }

    if ((v41 & 0x20) != 0 || (IsLocked = TNode::AliasIsContainer(a1), IsLocked))
    {
      IsLocked = TFSInfo::IsLocked(v6);
      if ((IsLocked & 1) == 0)
      {
        IsLocked = IsRunningInFinder();
        if ((IsLocked & 1) == 0 && *(v6 + 120) != 5)
        {
          IsLocked = TFSInfo::IsResumableCopyTarget(v6);
          if ((IsLocked & 1) == 0)
          {
            v42 = *a2 & 0x1000;
            v43 = *a2 & 0x4000;
            v44 = *a2 & 4;
            if (v37)
            {
              IsLocked = TNode::IsLocalVolume(a1);
              if (!IsLocked)
              {
                v19 |= 0x5004u;
              }
            }

            else
            {
              IsLocked = TNode::FetchExtendedUserAccess(a1);
              if (IsLocked)
              {
                if (TNode::IsContainer(a1))
                {
                  CanAddFile = TFSInfo::UserCanAddFile(v6);
                }

                else
                {
                  CanAddFile = 0;
                }

                IsLocked = TNode::IsContainer(a1);
                if (IsLocked)
                {
                  IsLocked = TFSInfo::UserCanAddFolder(v6);
                }

                if ((v42 == 0) | CanAddFile & IsLocked & 1)
                {
                  v46 = v19;
                }

                else
                {
                  v46 = v19 | 0x1000;
                }

                if ((v43 == 0) | IsLocked & 1)
                {
                  v47 = v46;
                }

                else
                {
                  v47 = v46 | 0x4000;
                }

                if ((v44 == 0) | CanAddFile & 1)
                {
                  v19 = v47;
                }

                else
                {
                  v19 = v47 | 4;
                }
              }
            }

            v18 |= v42 | v43 | v44;
            if (v43 && (v19 & 0x4000) == 0 || v44 && (v19 & 4) == 0)
            {
              IsLocked = TNode::IsInTrash(a1);
              if (IsLocked)
              {
                v19 |= 0x4004u;
              }
            }
          }
        }
      }
    }
  }

  if ((*(a2 + 2) & 0x60) != 0)
  {
    v48 = TNode::InfoLock(IsLocked);
    os_unfair_lock_lock(v48);
    v50 = *(a1 + 16);
    v49 = *(a1 + 24);
    if (v49)
    {
      atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 |= 0x600000u;
    os_unfair_lock_unlock(v48);
    os_unfair_lock_lock((v50 + 108));
    v51 = *(v50 + 123);
    os_unfair_lock_unlock((v50 + 108));
    if (v49)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v49);
    }

    if ((v51 & 0x100) != 0 || (IsLocked = TFSInfo::IsNoUnlinkEffective(v6, v52, v53), IsLocked))
    {
      v19 |= 0x600000u;
    }
  }

  v54 = *a2;
  if ((*a2 & 0x800000) != 0)
  {
    v86 = 0;
    LODWORD(v90) = 12;
    v88 = 0;
    v89 = &v86;
    Property = TNode::GetProperty(a1, 1886675532, &v89, &v88, 0);
    if (v86)
    {
      v56 = Property == 0;
    }

    else
    {
      v56 = 0;
    }

    if (v56)
    {
      v18 |= 0x800000u;
    }

    IsLocked = TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v86);
    v54 = *a2;
  }

  if (v54)
  {
    v57 = TNode::InfoLock(IsLocked);
    os_unfair_lock_lock(v57);
    v59 = *(a1 + 16);
    v58 = *(a1 + 24);
    if (v58)
    {
      atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v57);
    os_unfair_lock_lock((v59 + 108));
    v60 = *(v59 + 123);
    os_unfair_lock_unlock((v59 + 108));
    if (v58)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v58);
    }

    if ((v60 & 0x100) != 0)
    {
      TNode::GetVolumeInfo(a1, &v89);
      v62 = *(v89 + 111);
      if (v90)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v90);
      }

      v19 |= v62;
    }

    else if ((TFSInfo::IsLocked(v6) & 1) != 0 || (TNode::LowLevelIsLockFile(a1) & 1) != 0 || (v61 = atomic_load((a1 + 88)), (v61 & 2) != 0))
    {
      v19 |= 1u;
    }

    v18 |= 1u;
    if ((*a2 & 0x80000000) == 0 || (TNode::IsLocalVolume(a1) & 1) == 0)
    {
      if (!TNode::UserCanDelete(a1) || TNode::IsContainer(a1) && (TFSInfo::UserCanWrite(v6) & 1) == 0)
      {
        v68 = TNode::IsLocalVolume(a1) ^ 1;
LABEL_221:
        v19 |= v68;
        goto LABEL_222;
      }

      if (TNodeFromFINode(v91.fFINode))
      {
        v63 = TNodeFromFINode(v91.fFINode);
        if (TNode::FetchExtendedUserAccess(v63))
        {
          v64 = TNodeFromFINode(v91.fFINode);
          TNode::GetFSInfo(v64, &v89);
          if (TFSInfo::UserCanAddDeleteChild(v89))
          {
            v65 = TNodeFromFINode(v91.fFINode);
            TNode::GetFSInfo(v65, &v86);
            if ((TFSInfo::IsLocked(v86) & 1) != 0 || !TNode::IsLocalVolume(a1))
            {
              IsSticky = 0;
            }

            else
            {
              v66 = TNodeFromFINode(v91.fFINode);
              IsSticky = TNode::IsSticky(v66);
            }

            if (v87)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v87);
            }
          }

          else
          {
            IsSticky = 0;
          }

          v84 = v90;
          if (v90)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v90);
          }

          if (IsSticky)
          {
            IsRoot = TFSInfo::UserIsRoot(v84);
            v68 = ((IsRoot | TNode::UserIsOwner(a1)) & 1) == 0;
            goto LABEL_221;
          }
        }
      }
    }
  }

LABEL_222:
  if ((*a2 & 2) != 0)
  {
    v69 = TNodeFromFINode(v91.fFINode);
    v18 |= 2u;
    if (!v69)
    {
      goto LABEL_242;
    }

    v70 = TNode::InfoLock(v69);
    os_unfair_lock_lock(v70);
    v72 = *(a1 + 16);
    v71 = *(a1 + 24);
    if (v71)
    {
      atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v70);
    os_unfair_lock_lock((v72 + 108));
    v73 = *(v72 + 123);
    os_unfair_lock_unlock((v72 + 108));
    if (v71)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v71);
    }

    if (v73 & 0x100) != 0 || (TFSInfo::IsLocked(v6) & 1) != 0 || (IsRunningInFinder() & 1) != 0 || (TFSInfo::IsNoUnlinkEffective(v6, v74, v75))
    {
      goto LABEL_242;
    }

    v76 = TNodeFromFINode(v91.fFINode);
    TNode::GetFSInfo(v76, &v89);
    v77 = TFSInfo::IsLocked(v89);
    if (v90)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v90);
    }

    if (v77)
    {
      goto LABEL_242;
    }

    if (*a2 < 0)
    {
      if (!TNode::IsLocalVolume(a1))
      {
        v19 |= 2u;
      }

      goto LABEL_243;
    }

    if (!TNode::UserCanDelete(a1) || (v78 = TNodeFromFINode(v91.fFINode), (TNode::UserCanDeleteChild(v78) & 1) == 0))
    {
LABEL_242:
      v19 |= 2u;
    }

    else
    {
      v79 = TNodeFromFINode(v91.fFINode);
      if (TNode::IsSticky(v79))
      {
        IsLocalVolume = TNode::IsLocalVolume(a1);
        if (IsLocalVolume)
        {
          v81 = TFSInfo::UserIsRoot(IsLocalVolume);
          if (((v81 | TNode::UserIsOwner(a1)) & 1) == 0)
          {
            v19 |= 2u;
          }
        }
      }
    }
  }

LABEL_243:
  if ((*(a2 + 2) & 4) != 0)
  {
    if (TNodeFromFINode(v91.fFINode))
    {
      v82 = TNodeFromFINode(v91.fFINode);
      if (TNode::UserCanDeleteChild(v82))
      {
        v83 = TNodeFromFINode(v91.fFINode);
        if (TNode::IsSticky(v83))
        {
          if (TNode::UserCanDelete(a1))
          {
            v19 |= 0x40000u;
          }
        }
      }
    }
  }

  v12 = v18 & ~v19 & *a2;
LABEL_8:
  *a2 = v12;
  *a2 = TNode::ApplyFPItemRestrictions(a1, v12);
  if (TFSInfo::IsReadOnlyShare(v6))
  {
    *a2 &= 0xFFDF2FFF;
    if ((TFSInfo::IsTopLevelSharedItem(v6) & 1) == 0)
    {
      *a2 &= 0xFFADFDDC;
    }
  }

  TNode::ModifyPermissionsIfBusy(a1, a2);
  *a2 &= ~0x80000000;

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return 0;
}

void sub_1E56A05A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  _Unwind_Resume(a1);
}

uint64_t TNode::ApplyFPItemRestrictions(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = TNode::InfoLock(a1);
  os_unfair_lock_lock(v4);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v4);
  v8 = TFSInfo::GetFPItem(v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v9 = a2 & ~TFSInfo::FPItemPermissionRestrictions(v8, v7);
  if ((a2 & 0x10000) != 0 && (v9 & 0x10000) == 0)
  {
    v10 = [(TFSInfo *)v8 creationDate];
    if ([v10 isEqualToDate:TCFURLInfo::GetMagicBusyCreationDate(v10)])
    {
      v11 = LogObj(2);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = v8;
        _os_log_impl(&dword_1E5674000, v11, OS_LOG_TYPE_DEFAULT, "Unreadable FPItem found with busy creation date, forcing read capability to match local file: %@", &v14, 0xCu);
      }

      v9 = v9 | 0x10000;
    }

    else
    {
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v9;
}

BOOL ___ZN13TFSVolumeInfo9LoadPrefsEv_block_invoke()
{
  TFSVolumeInfo::gNoNetworkPropertyStores = PrefsBool(@"DSDontWriteNetworkStores", 0);
  TFSVolumeInfo::gCanUseReadDir = PrefsBool(@"UseBareEnumeration", 1);
  TFSVolumeInfo::gTimeIterations = PrefsBool(@"RecordIterationTimes", 0);
  result = PrefsBool(@"SkipLSProperties", 1);
  TFSVolumeInfo::gSkipLSProperties = result;
  return result;
}

BOOL TFSVolumeInfo::ShouldUseReadDir(TFSVolumeInfo *this)
{
  if (TFSVolumeInfo::LoadPrefs(void)::once != -1)
  {
    TFSVolumeInfo::ShouldSkipLSProperties();
  }

  if (TFSVolumeInfo::gCanUseReadDir != 1)
  {
    return 0;
  }

  v2 = *(this + 7);
  if (!v2 || *(v2 + 120))
  {
    return 0;
  }

  result = 0;
  v4 = *(this + 18);
  if (v4 && v4 != 5)
  {
    if (*(this + 126))
    {
      return 0;
    }

    if ((*(this + 107) & 1) == 0)
    {
      if (TFSVolumeInfo::gNoNetworkPropertyStores)
      {
        return 1;
      }

      v4 = *(this + 18);
    }

    return (v4 - 1) < 3;
  }

  return result;
}

uint64_t TFSVolumeInfo::ShouldSkipLSProperties(TFSVolumeInfo *this)
{
  if (TFSVolumeInfo::LoadPrefs(void)::once != -1)
  {
    TFSVolumeInfo::ShouldSkipLSProperties();
  }

  return TFSVolumeInfo::gSkipLSProperties;
}

void TFSInfoSynchronizer::TFSInfoSynchronizer(TFSInfoSynchronizer *this, const TNodePtr *a2)
{
  *(this + 12) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  objc_storeStrong(this + 3, a2->fFINode);
  v4 = TNodeFromFINode(a2->fFINode);
  v5 = TNode::InfoLock(v4);
  os_unfair_lock_lock(v5);
  v7 = *(v4 + 16);
  v6 = *(v4 + 24);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v5);
  v8 = *(this + 5);
  *(this + 4) = v7;
  *(this + 5) = v6;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_1E56A0A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = *(v10 + 40);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  a10 = v10;
  std::vector<std::shared_ptr<TCFURLInfoList>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

CFIndex TFSInfoSynchronizer::FetchChildren(uint64_t a1, uint64_t a2, const __CFString *a3, uint64_t a4)
{
  v82 = *MEMORY[0x1E69E9840];
  v77 = a3;
  v6 = (a1 + 32);
  v5 = *(a1 + 32);
  if (!v5)
  {
LABEL_63:
    v30 = 0;
    goto LABEL_75;
  }

  v76 = *(v5 + 120);
  if (v76 == 27)
  {
    v11 = TNodeFromFINode(*(a1 + 24));
    NotifierList = TNode::GetNotifierList(v11);
    v14 = *(NotifierList + 24);
    v13 = *(NotifierList + 32);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_lock(v14);
    v15 = *(v14 + 8);
    os_unfair_lock_unlock(v14);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    if ([v15 populated])
    {
      v72 = [v15 providers];
      *__dst = 0x4008000000000000;
      v80.f_bavail = 0;
      TNode::RootFPItemsForDomainsWithTimeout(v72);
    }

    v41 = LogObj(4);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v80.f_bsize) = 0;
      _os_log_impl(&dword_1E5674000, v41, OS_LOG_TYPE_DEBUG, "FPProviders not fetched", &v80, 2u);
    }

    v30 = 4294959279;
    goto LABEL_75;
  }

  if (v76)
  {
    v16 = TNodeFromFINode(*(a1 + 24));
    if (TNode::IsFPv2(v16, 1))
    {
      v17 = TNodeFromFINode(*(a1 + 24));
      v18 = TChildrenList::GetCollectionStatusObserver(*(v17 + 56));
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v19 = [v18 fpItems];
      v20 = [v19 countByEnumeratingWithState:&v65 objects:v79 count:16];
      if (v20)
      {
        v21 = *v66;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v66 != v21)
            {
              objc_enumerationMutation(v19);
            }

            if (([*(*(&v65 + 1) + 8 * i) isTrashed] & 1) == 0)
            {
              _ZNSt3__115allocate_sharedB8ne200100I7TFSInfoNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
            }
          }

          v20 = [v19 countByEnumeratingWithState:&v65 objects:v79 count:16];
        }

        while (v20);
      }
    }

    else if ((v76 & 0xFE) == 0x18)
    {
      if (ICloudDriveFPFSEnabled())
      {
        v37 = TNodeFromFINode(*(a1 + 24));
        v38 = TChildrenList::GetCollectionStatusObserver(*(v37 + 56));
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v39 = [v38 fpItems];
        if ([v39 countByEnumeratingWithState:&v61 objects:v78 count:16])
        {
          *v62;
          *v62;
          v40 = **(&v61 + 1);
          _ZNSt3__115allocate_sharedB8ne200100I7TFSInfoNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
        }
      }
    }

    else
    {
      v42 = TFSInfo::CopySFBrowserRef(*v6);
      *__dst = v42;
      if (v42 && TFSInfo::IsBrowserOpen(v42))
      {
        v43 = SFBrowserCopyChildren();
        theArray = v43;
        if (v43)
        {
          Count = CFArrayGetCount(v43);
          std::vector<std::shared_ptr<TFSInfo>>::reserve(a1, Count);
          if (Count >= 1)
          {
            for (j = 0; j != Count; ++j)
            {
              if (CFArrayGetValueAtIndex(theArray, j))
              {
                std::allocate_shared[abi:ne200100]<TFSInfo,std::allocator<TFSInfo>,FSInfoVirtualType const&,__SFNode *&,0>();
              }
            }
          }
        }

        TAutoRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TAutoRef(&theArray);
      }

      TAutoRef<__SFBrowser *,TRetainReleasePolicy<__SFBrowser *>>::~TAutoRef(__dst);
    }

    goto LABEL_63;
  }

  if (a2)
  {
    v7 = TFSInfo::CopyPathToCBuffer(v5, __dst, 1024);
    if (!v7)
    {
      v8 = opendir(__dst);
      if (v8)
      {
        statfs(__dst, &v80);
        strlcat(__dst, "/", 0x400uLL);
        *__error() = 0;
        for (k = readdir(v8); k; k = readdir(v8))
        {
          v69 = 0;
          LOBYTE(v72) = 0;
          d_type = k->d_type;
          if (d_type > 0xE)
          {
            goto LABEL_16;
          }

          if (((1 << d_type) & 0x5047) == 0)
          {
            if (d_type != 4)
            {
              LOBYTE(v72) = d_type == 10;
LABEL_16:
              std::allocate_shared[abi:ne200100]<TFSInfo,std::allocator<TFSInfo>,std::shared_ptr<TFSInfo> &,char (&)[1024],char (&)[1024],fsid &,unsigned long long &,BOOL &,BOOL &,BOOL &,0>();
            }

            v69 = 1;
            if (k->d_name[0] != 46 || k->d_name[1] && (k->d_name[1] != 46 || k->d_name[2]))
            {
              goto LABEL_16;
            }
          }

          *__error() = 0;
        }

        closedir(v8);
        v7 = -8086;
      }

      else
      {
        v57 = __error();
        v60 = TCFURLInfo::TranslateXAttrError(*v57, v58, v59);
        if (v60 == -5000)
        {
          v7 = 0;
        }

        else
        {
          v7 = v60;
        }
      }
    }

    if (v7 == -1417)
    {
      v30 = 0;
    }

    else
    {
      v30 = v7;
    }
  }

  else
  {
    if (!TFSInfo::IsDataless(v5, a2, a3))
    {
      goto LABEL_66;
    }

    v24 = NewFileCoordinator();
    v25 = dispatch_time(0, 10000000000);
    v26 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3321888768;
    block[2] = ___ZN19TFSInfoSynchronizer13FetchChildrenEbb12LSProperties_block_invoke;
    block[3] = &__block_descriptor_40_ea8_32c65_ZTSKZN19TFSInfoSynchronizer13FetchChildrenEbb12LSPropertiesE3__0_e5_v8__0l;
    v27 = v24;
    v75 = v27;
    dispatch_after(v25, v26, block);

    v28 = *v6;
    os_unfair_lock_lock(*v6 + 27);
    v29 = *(v28 + 2);
    *&v80.f_bsize = v29;
    if (v29)
    {
      CFRetain(v29);
    }

    os_unfair_lock_unlock(v28 + 27);
    v30 = *&v80.f_bsize;
    v73 = 0;
    [v27 coordinateReadingItemAtURL:v30 options:1 error:&v73 byAccessor:&__block_literal_global_4];
    v31 = v73;

    TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v80);
    if (!v31)
    {
      goto LABEL_64;
    }

    v32 = LogObj(4);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v80.f_bsize = 138412290;
      *&v80.f_iosize = v31;
      _os_log_impl(&dword_1E5674000, v32, OS_LOG_TYPE_ERROR, "Synchronizer coordinateReadingItemAtURL error: %@", &v80, 0xCu);
    }

    TFSInfo::InitializeAndGetPath(__dst, *v6);
    v33 = TString::c_str(__dst);
    v30 = stat(v33, &v80);
    v34 = *&v80.f_mntonname[28];
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(__dst);
    if (!v30 && (v34 & 0x40000000) != 0)
    {
      v30 = TCFURLInfo::TranslateCFError(v31, v35);
      v36 = 0;
    }

    else
    {
LABEL_64:
      v36 = 1;
    }

    if (v36)
    {
LABEL_66:
      v46 = *v6;
      os_unfair_lock_lock(v46 + 27);
      v47 = *(v46 + 2);
      *__dst = v47;
      if (v47)
      {
        CFRetain(v47);
      }

      os_unfair_lock_unlock(v46 + 27);
      v49 = *__dst;
      if (a4)
      {
        v50 = TFSInfo::IterationInfoPropertyKeys(v48);
      }

      else
      {
        v50 = TFSInfo::IterationFullSetOfPropertyKeys(v48);
      }

      v51 = v50;
      v52 = TNodeFromFINode(*(a1 + 24));
      v53 = TNode::GetFIProvider(v52);
      TFSIterator::TFSIterator(&v80, v49, v51, a4, v53 != 0);

      TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(__dst);
      v54 = objc_autoreleasePoolPush();
      _ZNSt3__115allocate_sharedB8ne200100I7TFSInfoNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }
  }

LABEL_75:
  v55 = *MEMORY[0x1E69E9840];
  return v30;
}

void sub_1E56A143C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, const void *a36)
{
  TAutoRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TAutoRef(&a36);
  TAutoRef<__SFBrowser *,TRetainReleasePolicy<__SFBrowser *>>::~TAutoRef(&STACK[0xAA8]);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(FPProviderDomain *,FPItem *,NSError *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t __copy_helper_block_ea8_32c174_ZTSKZN5TNode32RootFPItemsForDomainsWithTimeoutEP7NSArrayIP16FPProviderDomainERKNSt3__16chrono8durationIdNS5_5ratioILl1ELl1EEEEERKNS5_8functionIFvS2_P6FPItemP7NSErrorEEEE3__1(void *a1, uint64_t a2)
{
  a1[4] = *(a2 + 32);
  a1[5] = *(a2 + 40);
  result = std::__function::__value_func<void ()(FPProviderDomain *,FPItem *,NSError *)>::__value_func[abi:ne200100]((a1 + 6), a2 + 48);
  v5 = *(a2 + 88);
  a1[10] = *(a2 + 80);
  a1[11] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a2 + 104);
  a1[12] = *(a2 + 96);
  a1[13] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void ___ZN5TNode32RootFPItemsForDomainsWithTimeoutEP7NSArrayIP16FPProviderDomainERKNSt3__16chrono8durationIdNS5_5ratioILl1ELl1EEEEERKNS5_8functionIFvS2_P6FPItemP7NSErrorEEE_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v6;
  if (v8)
  {
    v9 = LogObj(4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      *buf = 138543618;
      *&buf[4] = v8;
      v20 = 2114;
      v21 = v10;
      _os_log_impl(&dword_1E5674000, v9, OS_LOG_TYPE_ERROR, "fetchRootItemForProviderDomain error: %{public}@ for %{public}@", buf, 0x16u);
    }
  }

  v11 = *(a1 + 96);
  std::mutex::lock(v11);
  v12 = v7;
  v13 = v8;
  v14 = *(a1 + 80);
  *buf = a1 + 32;
  v15 = std::__hash_table<std::__hash_value_type<FPProviderDomain * {__strong},fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>,std::__unordered_map_hasher<FPProviderDomain * {__strong},std::__hash_value_type<FPProviderDomain * {__strong},fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>,std::hash<FPProviderDomain * {__strong}>,std::equal_to<FPProviderDomain * {__strong}>,true>,std::__unordered_map_equal<FPProviderDomain * {__strong},std::__hash_value_type<FPProviderDomain * {__strong},fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>,std::equal_to<FPProviderDomain * {__strong}>,std::hash<FPProviderDomain * {__strong}>,true>,std::allocator<std::__hash_value_type<FPProviderDomain * {__strong},fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>>>::__emplace_unique_key_args<FPProviderDomain * {__strong},std::piecewise_construct_t const&,std::tuple<FPProviderDomain * const {__strong}&>,std::tuple<>>(v14, (a1 + 32));
  v16 = v15[3];
  v15[3] = v12;

  v17 = v15[4];
  v15[4] = v13;

  std::mutex::unlock(v11);
  dispatch_group_leave(*(a1 + 40));
  if (*(a1 + 72))
  {
    std::function<void ()(FPProviderDomain *,FPItem *,NSError *)>::operator()(a1 + 48, *(a1 + 32), v12, v13);
  }

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t **std::__hash_table<std::__hash_value_type<FPProviderDomain * {__strong},fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>,std::__unordered_map_hasher<FPProviderDomain * {__strong},std::__hash_value_type<FPProviderDomain * {__strong},fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>,std::hash<FPProviderDomain * {__strong}>,std::equal_to<FPProviderDomain * {__strong}>,true>,std::__unordered_map_equal<FPProviderDomain * {__strong},std::__hash_value_type<FPProviderDomain * {__strong},fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>,std::equal_to<FPProviderDomain * {__strong}>,std::hash<FPProviderDomain * {__strong}>,true>,std::allocator<std::__hash_value_type<FPProviderDomain * {__strong},fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>>>::__emplace_unique_key_args<FPProviderDomain * {__strong},std::piecewise_construct_t const&,std::tuple<FPProviderDomain * const {__strong}&>,std::tuple<>>(void *a1, id *a2)
{
  v4 = [*a2 hash];
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
    std::__hash_table<std::__hash_value_type<FPProviderDomain * {__strong},fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>,std::__unordered_map_hasher<FPProviderDomain * {__strong},std::__hash_value_type<FPProviderDomain * {__strong},fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>,std::hash<FPProviderDomain * {__strong}>,std::equal_to<FPProviderDomain * {__strong}>,true>,std::__unordered_map_equal<FPProviderDomain * {__strong},std::__hash_value_type<FPProviderDomain * {__strong},fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>,std::equal_to<FPProviderDomain * {__strong}>,std::hash<FPProviderDomain * {__strong}>,true>,std::allocator<std::__hash_value_type<FPProviderDomain * {__strong},fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<FPProviderDomain * const {__strong}&>,std::tuple<>>();
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

  if ((std::equal_to<FPProviderDomain * {__strong}>::operator()(a1, v11[2], *a2) & 1) == 0)
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1E56A1BD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *a10, uint64_t a11)
{
  if (a10)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<FPProviderDomain * {__strong},fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>,void *>>>::operator()[abi:ne200100](&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E56A1C8C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<FPProviderDomain * {__strong},fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void *_ZNSt3__14pairIU8__strongKP16FPProviderDomainN4fstd12optional_errIU8__strongP6FPItemU8__strongP7NSErrorEEEC2B8ne200100IJRS3_EJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSH_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSQ_IJXspT2_EEEE(void *a1, id **a2)
{
  *a1 = **a2;
  fstd::optional_err<FPItem * {__strong},NSError * {__strong}>::optional_err(a1 + 1);
  return a1;
}

void ___ZN21TClientChangeNotifier6WakeUpEv_block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3321888768;
  v3[2] = ___ZZN21TClientChangeNotifier6WakeUpEvENK3__1clEv_block_invoke;
  v3[3] = &__block_descriptor_48_ea8_32c57_ZTSKZZN21TClientChangeNotifier6WakeUpEvENK3__1clEvEUlvE__e5_v8__0l;
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = v1;
    v5 = v2;
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = 0;
  }

  ExceptionSafeBlock(v3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E56A1DA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  _Unwind_Resume(exception_object);
}

void TClientChangeNotifier::HandleEvents(TClientChangeNotifier *this)
{
  v2 = *(this + 5);
  TBlockingEventQueue::EventQueueFromID(v2, &v4);
  v3 = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v3)
  {
    std::function<void ()(OpaqueEventQueue *)>::operator()(this + 56, v2);
  }
}

uint64_t std::function<void ()(OpaqueEventQueue *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void std::__function::__func<TClientChangeNotifier::TClientChangeNotifier(std::vector<std::function<void ()(void)>> &,NodeClientContext,OpaqueEventQueue *,void (*)(OpaqueEventQueue *),NSObject  {objcproto17OS_dispatch_queue}*,void({block_pointer})(FINodeEvent *),__CFString const*)::$_1,std::allocator<TClientChangeNotifier::TClientChangeNotifier(std::vector<std::function<void ()(void)>> &,NodeClientContext,OpaqueEventQueue *,void (*)(OpaqueEventQueue *),NSObject  {objcproto17OS_dispatch_queue}*,void({block_pointer})(FINodeEvent *),__CFString const*)::$_1>,void ()(OpaqueEventQueue *)>::operator()(uint64_t a1, TBlockingEventQueue **a2)
{
  TBlockingEventQueue::EventQueueFromID(*a2, &v2);
  if (v2)
  {
    TBlockingEventQueue::Tickle(v2);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1E56A1ECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NodeEventGetNextEvent(void *a1, TBlockingEventQueue *this)
{
  TBlockingEventQueue::EventQueueFromID(this, &v13);
  v4 = 0;
  if (a1 && this && v13)
  {
    v4 = 0;
    while (1)
    {
      TNodeEventPtr::TNodeEventPtr(&v12, 0);
      TBlockingQueue<TNodeEventPtr>::Dequeue(v13, &v12, 0);
      if (!TNodeEventPtr::operator->(&v12))
      {
        break;
      }

      v5 = *(TNodeEventPtr::operator->(&v12) + 64);
      v11 = v5;
      if (v5)
      {
        TDSNotifier::AddPtrReference(v5);
      }

      v6 = TNodeEventPtr::operator->(&v12);
      if (TNodeEvent::GetMonitor(v6) || !v11 || (v8 = atomic_load(v11 + 10), v8 > 0))
      {
        v10 = v12;
        *a1 = TString::operator NSString *(&v10);
        TNodeEventPtr::~TNodeEventPtr(&v10);
        v7 = 0;
        v4 = 1;
      }

      else
      {
        TDSNotifier::RemovePtrReference(v11);
        v11 = 0;
        v7 = 1;
      }

      TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(&v11);
      TNodeEventPtr::~TNodeEventPtr(&v12);
      if ((v7 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    TNodeEventPtr::~TNodeEventPtr(&v12);
  }

LABEL_16:
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  return v4 & 1;
}

void sub_1E56A203C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10, TDSNotifier *a11, id a12, uint64_t a13, std::__shared_weak_count *a14)
{
  TNodeEventPtr::~TNodeEventPtr(&a10);
  TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(&a11);
  TNodeEventPtr::~TNodeEventPtr(&a12);
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

void PullEventsFromQueue(OpaqueEventQueue *this)
{
  v2 = 0;
  while (1)
  {
    v5 = v2;
    NextEvent = NodeEventGetNextEvent(&v5, this);
    v4 = v5;

    if (!NextEvent)
    {
      break;
    }

    v2 = v4;
    NodeDispatchEvent(v4);
  }
}

BOOL TBlockingQueue<TNodeEventPtr>::Dequeue(uint64_t a1, id *a2, int a3)
{
  std::mutex::lock((a1 + 48));
  if (!a3)
  {
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    if (!*(a1 + 40))
    {
      TConditionVariable::Wait((a1 + 112), (a1 + 48));
    }

    goto LABEL_6;
  }

  if (*(a1 + 40))
  {
LABEL_6:
    v6 = 1;
    goto LABEL_7;
  }

  TConditionVariable::WaitWithTimeout((a1 + 112), (a1 + 48), (1000 * a3));
  v6 = *(a1 + 40) != 0;
LABEL_7:
  if (*(a1 + 40))
  {
    objc_storeStrong(a2, *(*(*(a1 + 8) + ((*(a1 + 32) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(a1 + 32) & 0x1FFLL)));
    std::deque<TNodeEventPtr>::pop_front(a1);
  }

  else
  {
    v7 = *a2;
    *a2 = 0;
  }

  std::mutex::unlock((a1 + 48));
  return v6;
}

uint64_t std::deque<TNodeEventPtr>::pop_front(int64x2_t *a1)
{
  v2 = a1[2].u64[0];
  v3 = *(a1->i64[1] + ((v2 >> 6) & 0x3FFFFFFFFFFFFF8));
  v4 = v2 & 0x1FF;
  v5 = *(v3 + 8 * v4);
  *(v3 + 8 * v4) = 0;

  a1[2] = vaddq_s64(a1[2], xmmword_1E57935C0);

  return std::deque<TNodeEventPtr>::__maybe_remove_front_spare[abi:ne200100](a1, 1);
}

uint64_t std::deque<TNodeEventPtr>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x200)
  {
    a2 = 1;
  }

  if (v2 < 0x400)
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
    *(a1 + 32) -= 512;
  }

  return v4 ^ 1u;
}

BOOL TDSNotifier::RemovePtrReference(TDSNotifier *this)
{
  result = TRefCount::Release<int>(this + 9);
  if (this && result)
  {

    v3 = *(this + 1);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    JUMPOUT(0x1E692CD30);
  }

  return result;
}

void NodeDispatchEvent(void *a1)
{
  v1 = a1;
  NodeEventFromNodeEventRef(v1, &v12);
  v2 = *TNodeEventPtr::operator->(&v12) - 100;
  v3 = v2 > 0xB;
  v4 = (1 << v2) & 0xC1F;
  if (v3 || v4 == 0)
  {
    v8 = *(TNodeEventPtr::operator->(&v12) + 64);
    v11 = v8;
    if (v8)
    {
      TDSNotifier::AddPtrReference(v8);
    }

    v9 = *v8;
    v10 = *(v8 + 8);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    TClientChangeNotifier::DispatchEvent(v9, v1);
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(&v11);
  }

  else
  {
    v6 = TNodeEventPtr::operator->(&v12);
    Monitor = TNodeEvent::GetMonitor(v6);
    (*(*(Monitor + 72) + 16))();
  }

  TNodeEventPtr::~TNodeEventPtr(&v12);
}

void sub_1E56A246C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, TDSNotifier *a9, id a10)
{
  v12 = v11;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(&a9);
  TNodeEventPtr::~TNodeEventPtr(&a10);

  _Unwind_Resume(a1);
}

FINodeEvent *NodeEventFromNodeEventRef@<X0>(FINodeEvent *a1@<X0>, FINodeEvent **a2@<X8>)
{
  result = a1;
  *a2 = result;
  return result;
}

void std::function<void ()(FINodeEvent *)>::operator()(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v3 + 48))(v3, &v4);
}

void __destroy_helper_block_ea8_32c44_ZTSKZN21TClientChangeNotifier6WakeUpEvE3__1(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t TFSInfo::FPItemPermissionRestrictions(TFSInfo *this, FPItem *a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v2 = this;
  if (v2)
  {
    v3 = FPItemManagerInstance();
    v18[0] = v2;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v5 = [v3 eligibleActionsForItems:v4];

    if (([(TFSInfo *)v2 isFolder]& 1) != 0)
    {
      v6 = 1;
    }

    else
    {
      v6 = [(TFSInfo *)v2 isPackage];
    }

    {
      _ZGRZN7TFSInfo28FPItemPermissionRestrictionsEP6FPItemE22sFPActionToPermissions_ = FP_ActionImportHere();
      dword_1ECFF4360 = 20484;
      qword_1ECFF4368 = FP_ActionReparent();
      dword_1ECFF4370 = 2;
      qword_1ECFF4378 = FP_ActionCopy();
      dword_1ECFF4380 = 0x10000;
      qword_1ECFF4388 = FP_ActionRename();
      dword_1ECFF4390 = 1;
      qword_1ECFF4398 = FP_ActionDelete();
      dword_1ECFF43A0 = 0x400000;
      qword_1ECFF43A8 = FP_ActionTrash();
      dword_1ECFF43B0 = 0x200000;
      qword_1ECFF43B8 = FP_ActionUntrash();
      dword_1ECFF43C0 = 0x800000;
      qword_1ECFF43C8 = FP_ActionTag();
      dword_1ECFF43D0 = 0x100000;
      qword_1ECFF43D8 = FP_ActionModifyFlags();
      dword_1ECFF43E0 = 0x2000;
      TFSInfo::FPItemPermissionRestrictions(FPItem *)::sFPActionToPermissions = &_ZGRZN7TFSInfo28FPItemPermissionRestrictionsEP6FPItemE22sFPActionToPermissions_;
      qword_1ECFF4090 = 9;
    }

    if (qword_1ECFF4090)
    {
      v7 = 0;
      v8 = 16 * qword_1ECFF4090;
      v9 = (TFSInfo::FPItemPermissionRestrictions(FPItem *)::sFPActionToPermissions + 8);
      do
      {
        if (([v5 containsObject:*(v9 - 1)] & 1) == 0)
        {
          v7 = *v9 | v7;
        }

        v9 += 4;
        v8 -= 16;
      }

      while (v8);
      if ((v6 & 1) == 0)
      {
LABEL_18:
        v12 = [(TFSInfo *)v2 capabilities];
        if (v12)
        {
          if (v6)
          {
LABEL_28:

            goto LABEL_29;
          }
        }

        else
        {
          v13 = [(TFSInfo *)v2 itemIdentifier];
          v14 = NS_FileProviderRootContainerItemIdentifier();
          v15 = [v13 isEqualToString:v14];

          if (v15)
          {
            v7 = v7;
          }

          else
          {
            v7 = v7 | 0x80800;
          }

          if (v6)
          {
            goto LABEL_28;
          }

          LODWORD(v7) = v7 | 0x10000;
        }

        if ((v12 & 2) != 0)
        {
          v7 = v7;
        }

        else
        {
          v7 = v7 | 0xD004;
        }

        goto LABEL_28;
      }
    }

    else
    {
      v7 = 0;
      if ((v6 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v10 = FP_ActionImportHere();
    v11 = [v5 containsObject:v10];

    if (v11)
    {
      v7 = v7;
    }

    else
    {
      v7 = v7 | 0x8000;
    }

    goto LABEL_18;
  }

  v7 = 0;
LABEL_29:

  v16 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_1E56A28B4(_Unwind_Exception *a1)
{
  v5 = &qword_1ECFF43D8;
  do
  {
    v6 = *(v5 - 2);
    v5 -= 2;
  }

  while (v5 != v3);

  _Unwind_Resume(a1);
}

uint64_t **std::__hash_table<std::__hash_value_type<FPProviderDomain * {__strong},fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>,std::__unordered_map_hasher<FPProviderDomain * {__strong},std::__hash_value_type<FPProviderDomain * {__strong},fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>,std::hash<FPProviderDomain * {__strong}>,std::equal_to<FPProviderDomain * {__strong}>,true>,std::__unordered_map_equal<FPProviderDomain * {__strong},std::__hash_value_type<FPProviderDomain * {__strong},fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>,std::equal_to<FPProviderDomain * {__strong}>,std::hash<FPProviderDomain * {__strong}>,true>,std::allocator<std::__hash_value_type<FPProviderDomain * {__strong},fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>>>::find<FPProviderDomain * {__strong}>(void *a1, id *a2)
{
  v4 = [*a2 hash];
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
    if (v6 == v12)
    {
      if (std::equal_to<FPProviderDomain * {__strong}>::operator()(a1, i[2], *a2))
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

void TNode::ModifyPermissionsIfBusy(uint64_t a1, _DWORD *a2)
{
  v4 = TNode::InfoLock(a1);
  os_unfair_lock_lock(v4);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
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

  v9 = TNode::InfoLock(v8);
  os_unfair_lock_lock(v9);
  v11 = *(a1 + 16);
  v10 = *(a1 + 24);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v9);
  Type = TFSInfo::GetType(v11);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (Type == 1651666795 || (Type & 0xFFFFFFE0) == 0x627A7920)
  {
    *a2 &= 0xFFFC081A;
  }
}

void sub_1E56A2BBC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::equal_to<FPProviderDomain * {__strong}>::operator()(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (v4 == v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = [v4 isEqual:v5];
  }

  return v6;
}

uint64_t TFSInfo::IsReadOnlyShare(TFSInfo *this)
{
  if (!UseFileProviderFramework())
  {
    return 0;
  }

  v2 = TFSInfo::GetFPItem(this);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [v2 sharingPermissions];
  theString = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&theString, v4);

  v5 = [v3 isSharedByCurrentUser];
  if (CFStringGetLength(theString))
  {
    FileProviderSharedItemPermissionsReadOnly(&v8);
    v6 = (CFEqual(theString, v8.fString.fRef) != 0) & (v5 ^ 1u);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v8.fString.fRef);
  }

  else
  {
    v6 = 0;
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);

  return v6;
}

void sub_1E56A2D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a9);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a10);

  _Unwind_Resume(a1);
}

void iterator_extras::make_zip_iter_details::ZippedRange<std::tuple<NSArray<FPProviderDomain *> * {__strong}&,std::vector<fstd::optional_err<FPItem * {__strong},NSError * {__strong}>> &>,0ul,1ul>::begin(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  IDContainerIteratorAdaptor<NSArray<FPProviderDomain *>>::NSForwardIterator<NSArray<FPProviderDomain *>>::NSForwardIterator(v5, **a1);
  v4 = **(a1 + 8);
  IDContainerIteratorAdaptor<NSArray<FPProviderDomain *>>::NSForwardIterator<NSArray<FPProviderDomain *>>::NSForwardIterator(v6, v5);
  v6[17] = v4;
  iterator_extras::make_zip_iter_details::ZippedRange<std::tuple<NSArray<FPProviderDomain *> * {__strong}&,std::vector<fstd::optional_err<FPItem * {__strong},NSError * {__strong}>> &>,0ul,1ul>::ZipIterator<std::tuple<IDContainerIteratorAdaptor<NSArray<FPProviderDomain *>>,std::__wrap_iter<fstd::optional_err<FPItem * {__strong},NSError * {__strong}>*>>,std::tuple<FPProviderDomain * {__strong},fstd::optional_err<FPItem * {__strong},NSError * {__strong}>&>>::ZipIterator(a2, v6);
}

void iterator_extras::make_zip_iter_details::ZippedRange<std::tuple<NSArray<FPProviderDomain *> * {__strong}&,std::vector<fstd::optional_err<FPItem * {__strong},NSError * {__strong}>> &>,0ul,1ul>::end(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  IDContainerIteratorAdaptor<NSArray<FPProviderDomain *>>::IDContainerIteratorAdaptor(v5, -1, **a1);
  v4 = *(*(a1 + 8) + 8);
  IDContainerIteratorAdaptor<NSArray<FPProviderDomain *>>::NSForwardIterator<NSArray<FPProviderDomain *>>::NSForwardIterator(v6, v5);
  v6[17] = v4;
  iterator_extras::make_zip_iter_details::ZippedRange<std::tuple<NSArray<FPProviderDomain *> * {__strong}&,std::vector<fstd::optional_err<FPItem * {__strong},NSError * {__strong}>> &>,0ul,1ul>::ZipIterator<std::tuple<IDContainerIteratorAdaptor<NSArray<FPProviderDomain *>>,std::__wrap_iter<fstd::optional_err<FPItem * {__strong},NSError * {__strong}>*>>,std::tuple<FPProviderDomain * {__strong},fstd::optional_err<FPItem * {__strong},NSError * {__strong}>&>>::ZipIterator(a2, v6);
}

uint64_t iterator_extras::make_zip_iter_details::ZippedRange<std::tuple<NSArray<FPProviderDomain *> * {__strong}&,std::vector<fstd::optional_err<FPItem * {__strong},NSError * {__strong}>> &>,0ul,1ul>::ZipIterator<std::tuple<IDContainerIteratorAdaptor<NSArray<FPProviderDomain *>>,std::__wrap_iter<fstd::optional_err<FPItem * {__strong},NSError * {__strong}>*>>,std::tuple<FPProviderDomain * {__strong},fstd::optional_err<FPItem * {__strong},NSError * {__strong}>&>>::ZipIterator(uint64_t a1, uint64_t a2)
{
  result = IDContainerIteratorAdaptor<NSArray<FPProviderDomain *>>::NSForwardIterator<NSArray<FPProviderDomain *>>::NSForwardIterator(a1, a2);
  *(result + 136) = *(a2 + 136);
  return result;
}

id fstd::optional_err<FPItem * {__strong},NSError * {__strong}>::value_or<decltype(nullptr)>(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = 0;
  }

  else
  {
    v2 = *a1;
  }

  return v2;
}

uint64_t std::__shared_ptr_emplace<TFSInfo>::__shared_ptr_emplace[abi:ne200100]<FIProviderDomain * {__strong},FPItem * {__strong},BOOL,std::allocator<TFSInfo>,0>(uint64_t a1, FIProviderDomain **a2, FPItem **a3, unsigned __int8 *a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F5F3D3B8;
  TFSInfo::TFSInfo((a1 + 24), *a2, *a3, *a4);
  return a1;
}

void TFSInfo::TFSInfo(TFSInfo *this, FIProviderDomain *a2, FPItem *a3, int a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 16) = 0;
  TFSInfo::TFSInfo(this);
  v9 = [(FIProviderDomain *)v7 domain];
  if (!v9)
  {
    v10 = [(FIProviderDomain *)v7 asyncFetchedDomain];

    if (!v10)
    {
      goto LABEL_5;
    }

    v9 = [(FIProviderDomain *)v7 asyncFetchedDomain];
    v11 = [FIProviderDomain providerDomainForDomain:v9];

    v7 = v11;
  }

LABEL_5:
  v12 = [(FIProviderDomain *)v7 domain];

  if (v12)
  {
    v13 = [(FIProviderDomain *)v7 domain];
    v14 = (this + 123);
    *(this + 123) = *(this + 123) & 0xFFFFFFFE | [v13 isHidden] ^ 1;

    v15 = *(this + 123);
  }

  else
  {
    v14 = (this + 123);
    v15 = *(this + 123) | 1;
    *(this + 123) = v15;
  }

  *(this + 120) = 28;
  *(this + 127) = *(this + 127) & 0xF3FF | 0x400;
  *(this + 123) = v15 & 0xC7FFFFCF | 0x38000020;
  if (v12)
  {
    v16 = [(FIProviderDomain *)v7 domain];
    ProviderDisplayName(v16, &v35);
  }

  else
  {
    v16 = [(FIProviderDomain *)v7 identifier];
    v35.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&v35, v16);
  }

  TFSInfo::SetItemName(this, &v35);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v35.fString.fRef);

  os_unfair_lock_lock(this + 26);
  Overflow = TFSInfo::GetOrCreateOverflow(this);
  os_unfair_lock_lock((Overflow + 72));
  v18 = *(Overflow + 76);
  if (v18 == 2)
  {
    TFSInfoOverflow::MigrateToType(Overflow, 1);
    LOBYTE(v18) = *(Overflow + 76);
  }

  else if (v18 == 3)
  {
    *(Overflow + 76) = 1;
    *(Overflow + 32) = 0;
    *Overflow = 0u;
    *(Overflow + 16) = 0u;
    *(Overflow + 32) = 0x80000000;
    os_unfair_lock_unlock((Overflow + 72));
    goto LABEL_17;
  }

  v19 = v18;
  os_unfair_lock_unlock((Overflow + 72));
  if (v19 != 1)
  {
    Overflow = 0;
  }

LABEL_17:
  os_unfair_lock_unlock(this + 26);
  objc_storeStrong((Overflow + 24), v7);
  if (!v8 && a4)
  {
    if (![(FIProviderDomain *)v7 expectFPItems]|| (FPItemManagerInstance(), v20 = objc_claimAutoreleasedReturnValue(), v21 = v20 == 0, v20, v21))
    {
      v8 = 0;
    }

    else
    {
      v22 = [(FIProviderDomain *)v7 domain];
      v36 = 0;
      TNode::RootFPItemForDomainWithTimeout(v22, &v35, &v33);
      if (v34)
      {
        v8 = 0;
      }

      else
      {
        v8 = v33;
        v33 = 0;
      }

      std::__function::__value_func<void ()(FPItem *,NSError *)>::~__value_func[abi:ne200100](&v35);
    }
  }

  if (v8 || !v12)
  {
    objc_storeStrong(this + 8, v8);
    v23 = [(FPItem *)v8 fileURL];
    if (!(v23 | v12))
    {
      if (![(FIProviderDomain *)v7 isUsingFPFS])
      {
        v23 = 0;
LABEL_37:

        if (v8)
        {
          v26 = [(FPItem *)v8 fileSystemFlags];
          *v14 = (v26 << 11) & 0x3000 | ((v26 & 1) << 14) | *v14 & 0xFFFF8FFF;
        }

        goto LABEL_39;
      }

      v23 = [(FIProviderDomain *)v7 rootURL];
    }

    if (v23 && [(FIProviderDomain *)v7 isUsingFPFS])
    {
      v24 = CFURLCreateFileReferenceURL(0, v23, 0);
      v25 = *(this + 2);
      if (v25)
      {
        CFRelease(v25);
      }

      *(this + 2) = v24;
    }

    goto LABEL_37;
  }

LABEL_39:
  v27 = TFSInfo::FetchISIcon(this);
  v28 = [v27 symbol];
  v29 = v28;
  if (v28)
  {
    v30 = v28;
    os_unfair_lock_lock(this + 26);
    v31 = TFSInfo::GetOrCreateOverflow(this);
    TFSInfoOverflow::SetIFSymbol(v31, v30);
    os_unfair_lock_unlock(this + 26);
  }

  v32 = *MEMORY[0x1E69E9840];
}

void sub_1E56A3474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(FPItem *,NSError *)>::~__value_func[abi:ne200100](va);

  TFSInfo::~TFSInfo(v5);
  _Unwind_Resume(a1);
}

void ProviderDisplayName(FPProviderDomain *a1@<X0>, TString *a2@<X8>)
{
  v3 = [(FPProviderDomain *)a1 domainFullDisplayName];
  a2->fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(a2, v3);
}

void sub_1E56A3604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v10);

  _Unwind_Resume(a1);
}

uint64_t TFSInfo::GetOrCreateOverflow(TFSInfo *this)
{
  result = *(this + 10);
  if (!result)
  {
    operator new();
  }

  return result;
}

ISIcon *TFSInfo::FetchISIcon(TFSInfo *this)
{
  v2 = TFSInfo::GetISIcon(this);
  if (!v2)
  {
    v33 = this;
    if (TFSInfo::IsFPv2(this, 1))
    {
      v3 = TFSInfo::GetFPItem(this);
      if ([v3 folderType] != 1)
      {
        goto LABEL_8;
      }

      os_unfair_lock_lock(this + 27);
      v4 = *(this + 127);
      os_unfair_lock_unlock(this + 27);
      v5 = [v3 childItemCount];
      v6 = [v5 intValue];
      v7 = (v4 & 0x200) == 0;

      v8 = v6 <= 0 ? 256 : 257;
      v9 = TFSInfo::GetFolderIconConfiguration(this, v8, v7);
      v10 = objc_alloc(MEMORY[0x1E69A8A00]);
      v11 = [*MEMORY[0x1E6982DC8] identifier];
      v12 = [v10 initWithType:v11 iconConfiguration:v9];

      if (!v12)
      {
LABEL_8:
        v12 = TFSInfo::ISIconRefFromTypeInfo(this);
      }

      v13 = TFSInfo::FetchISIcon(void)const::$_0::operator()(&v33, v12);
    }

    else
    {
      os_unfair_lock_lock(this + 27);
      v14 = *(this + 2);
      v34[0] = v14;
      if (v14)
      {
        CFRetain(v14);
        v15 = v34[0];
      }

      else
      {
        v15 = 0;
      }

      os_unfair_lock_unlock(this + 27);
      v3 = v15;
      TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(v34);
      if (!v3 || *(this + 120) && *(this + 120) != 7)
      {

        v2 = 0;
        goto LABEL_40;
      }

      if ((*(this + 127) & 2) != 0)
      {
        v12 = TFSInfo::ISIconRefFromTypeInfo(this);
      }

      else
      {
        v32 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithURL:v3];
        if (!SolariumCustomFolders())
        {
          goto LABEL_34;
        }

        os_unfair_lock_lock(this + 27);
        v16 = *(this + 123);
        os_unfair_lock_unlock(this + 27);
        if ((v16 & 0x20) == 0)
        {
          goto LABEL_34;
        }

        os_unfair_lock_lock(this + 27);
        v17 = *(this + 123);
        os_unfair_lock_unlock(this + 27);
        if ((v17 & 0x100) != 0)
        {
          goto LABEL_34;
        }

        os_unfair_lock_lock(this + 27);
        v18 = *(this + 123);
        os_unfair_lock_unlock(this + 27);
        if ((v18 & 2) != 0)
        {
          goto LABEL_34;
        }

        os_unfair_lock_lock(this + 27);
        v19 = *(this + 123);
        os_unfair_lock_unlock(this + 27);
        if ((v19 & 4) != 0)
        {
          goto LABEL_34;
        }

        v20 = TFSInfo::GetHasAnyVisibleChildren(this, 1) == 1 ? 257 : 256;
        v21 = TFSInfo::GetFolderIconConfiguration(this, v20, 0);
        if (!v21)
        {
LABEL_34:
          v12 = v32;
        }

        else
        {
          v22 = TFSInfo::GetFPItem(this);
          FolderIconType(v22, &theString);

          if (CFStringGetLength(theString) || (TFSInfo::GetFPItem(this), v23 = objc_claimAutoreleasedReturnValue(), v24 = IsFPEmbossedFolder(v23), v23, v24))
          {
            [v21 setEmoji:{0, v32, v33}];
            [v21 setSymbolName:0];
          }

          v34[0] = &theString;
          v34[1] = &v32;
          TFSInfo::FetchISIcon(void)::$_1::operator() const(void)::{lambda(void)#1}::operator()(v34, &v35);
          v25 = objc_alloc(MEMORY[0x1E69A8A00]);
          v26 = TString::operator NSString *(&v35.fString.fRef);
          v12 = [v25 initWithType:v26 iconConfiguration:v21];

          v27 = [v32 decorations];
          v28 = [v27 count];

          if (v28)
          {
            v29 = [v32 decorations];
            v30 = [v12 iconWithDecorations:v29];

            v12 = v30;
          }

          TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v35.fString.fRef);
          TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);
        }

        if (!v12)
        {
          v12 = v32;
        }
      }

      v13 = TFSInfo::FetchISIcon(void)const::$_0::operator()(&v33, v12);
    }

    v2 = v13;

    TFSInfo::SetISIcon(this, v2);
  }

LABEL_40:

  return v2;
}

void sub_1E56A3A84(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

id TFSInfo::GetISIcon(TFSInfo *this)
{
  os_unfair_lock_lock(this + 26);
  v2 = *(this + 7);
  os_unfair_lock_unlock(this + 26);

  return v2;
}

void sub_1E56A3CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a9);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a10);

  _Unwind_Resume(a1);
}

id TFSInfo::ISIconRefFromTypeInfo(TFSInfo *this)
{
  location = 0;
  TFSInfo::GetUTType(this, &location, 128, &v9);
  v2 = location;
  if (location)
  {
    v3 = objc_alloc(MEMORY[0x1E69A8A00]);
    v4 = [v2 identifier];
    v5 = [v3 initWithType:v4];
  }

  else
  {
    TFSInfo::ActualSuffix(this, &v8);
    v6 = objc_alloc(MEMORY[0x1E69A8A00]);
    v5 = [v6 initWithFileExtension:v8];
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v8);
  }

  return v5;
}

void sub_1E56A3DEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

void **std::vector<std::shared_ptr<TFSInfo>>::push_back[abi:ne200100](void **result, uint64_t a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 4;
    if ((v7 + 1) >> 60)
    {
      std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v16[4] = result;
    if (v10)
    {
      std::allocator<std::shared_ptr<TCFURLInfo>>::allocate_at_least[abi:ne200100](result, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v12 = result[1] - *result;
    v13 = v11 - v12;
    memcpy(v11 - v12, *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::shared_ptr<TCFURLInfo>>::~__split_buffer(v16);
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v3[1] = v6;
  return result;
}

uint64_t *LocalStorageDomainID(void)
{
  {
    operator"" _t("com.apple.FileProvider.LocalStorage", 35, &LocalStorageDomainID(void)::sLocalStorageID);
  }

  return &LocalStorageDomainID(void)::sLocalStorageID;
}

BOOL IsExternalDeviceDomainID(const TString *this)
{
  {
    operator"" _t("com.apple.filesystems.UserFS.FileProvider", 41, &IsExternalDeviceDomainID(TString const&)::kUSBDomainID);
  }

  {
    operator"" _t("com.apple.SMBClientProvider.FileProvider", 40, &IsExternalDeviceDomainID(TString const&)::kSMBDomainID);
  }

  if (TString::BeginsWith(this, &IsExternalDeviceDomainID(TString const&)::kUSBDomainID))
  {
    return 1;
  }

  return TString::BeginsWith(this, &IsExternalDeviceDomainID(TString const&)::kSMBDomainID);
}

BOOL TString::BeginsWith(TString *this, const TString *a2)
{
  Length = CFStringGetLength(a2->fString.fRef);
  if (CFStringGetLength(this->fString.fRef) < Length)
  {
    return 0;
  }

  if (Length)
  {
    return CFStringHasPrefix(this->fString.fRef, a2->fString.fRef) != 0;
  }

  return 1;
}

uint64_t TFSInfo::GetUTType(TFSInfo *this, id *location, char a3, _BYTE *a4)
{
  *a4 = 0;
  v7 = *(this + 120);
  if (v7 <= 0x24)
  {
    if (((1 << v7) & 0x18487F187ELL) != 0)
    {
      v8 = *location;
      *location = 0;

      return 0;
    }

    if (((1 << v7) & 0x700000000) != 0)
    {
      return 0;
    }

    if (((1 << v7) & 0x30000000) != 0)
    {
      v11 = TFSInfo::GetFPItem(this);
      v12 = [v11 contentType];
      v13 = *location;
      *location = v12;

      return 0;
    }
  }

  if (*(this + 120))
  {
    objc_storeStrong(location, *MEMORY[0x1E6982E48]);
    return 0;
  }

  v14 = TFSInfo::GetUTType(this);
  v15 = *location;
  *location = v14;

  if (*location)
  {
    return 0;
  }

  if (a3 < 0)
  {
    v21 = TFSInfo::ApproximateUTType(this);
    v22 = *location;
    *location = v21;

    v20 = *location;
    if (*location)
    {
      v9 = 4294959210;
    }

    else
    {
      v9 = 4294959222;
    }
  }

  else
  {
    os_unfair_lock_lock(this + 27);
    v16 = *(this + 2);
    v23 = v16;
    if (v16)
    {
      CFRetain(v16);
    }

    os_unfair_lock_unlock(this + 27);
    v17 = TCFURLInfo::ObjectProperty(v16, *MEMORY[0x1E695DAA0], 1);
    TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v23);
    v18 = static_objc_cast<NSString,objc_object * {__strong}>(v17);
    v19 = *location;
    *location = v18;

    v9 = 0;
    v20 = *location;
  }

  TFSInfo::SetUTType(this, v20, v9 != 0);
  return v9;
}

id TFSInfo::FetchISIcon(void)const::$_0::operator()(TFSInfo **a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = TFSInfo::GetFPItem(*a1);
    v6 = TFSInfo::FPItemPermissionRestrictions(v4, v5);

    if ((v6 & 0x800) != 0)
    {
      v7 = [v3 decorations];
      IDContainerIteratorAdaptor<NSArray<objc_object  {objcproto16ISIconDecoration}*>>::NSForwardIterator<objc_object  {objcproto16ISIconDecoration}*>::NSForwardIterator(&v23, v7);
      IDContainerIteratorAdaptor<NSArray<objc_object  {objcproto16ISIconDecoration}*>>::IDContainerIteratorAdaptor(v22, -1, v7);
      v8 = *MEMORY[0x1E69A8A60];
      while (v23 != v22[0] || v28 != v22[16])
      {
        v9 = *(v24[1] + 8 * v27);
        DecorationIdentifier(v9, &v29);
        v10 = operator==(&v29.fString.fRef, v8);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v29.fString.fRef);

        if (v10)
        {
          break;
        }

        v11 = v27;
        if (v27 >= v26 - 1)
        {
          v12 = [v23 countByEnumeratingWithState:v24 objects:v25 count:4];
          v11 = -1;
          v26 = v12;
          v27 = -1;
        }

        if (v25[4] != *v24[2])
        {
          objc_enumerationMutation(v23);
          v11 = v27;
        }

        v27 = v11 + 1;
        ++v28;
      }

      IDContainerIteratorAdaptor<NSArray<objc_object  {objcproto16ISIconDecoration}*>>::NSForwardIterator<objc_object  {objcproto16ISIconDecoration}*>::NSForwardIterator(v21, &v23);

      IDContainerIteratorAdaptor<NSArray<objc_object  {objcproto16ISIconDecoration}*>>::IDContainerIteratorAdaptor(&v23, -1, v7);
      if (v21[0] == v23)
      {
        v13 = v21[16];
        v14 = v28;

        if (v13 == v14)
        {

          v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v16 = [v3 decorations];
          [v15 addObjectsFromArray:v16];

          v17 = [objc_alloc(MEMORY[0x1E69A8A08]) initWithType:v8];
          [v15 addObject:v17];
          v18 = [v3 iconWithDecorations:v15];

          v7 = v3;
          v3 = v18;
LABEL_17:

          goto LABEL_18;
        }
      }

      else
      {
      }

      v19 = v21[0];
      v15 = *(v21[2] + v21[15]);

      goto LABEL_17;
    }
  }

LABEL_18:

  return v3;
}

void TFSInfo::SetISIcon(TFSInfo *this, ISIcon *a2)
{
  v3 = a2;
  os_unfair_lock_lock(this + 26);
  v4 = *(this + 7);
  *(this + 7) = v3;

  os_unfair_lock_unlock(this + 26);
}

void TFSInfoOverflow::SetIFSymbol(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock((a1 + 72));
  v4 = *(a1 + 64);
  *(a1 + 64) = v3;

  os_unfair_lock_unlock((a1 + 72));
}

uint64_t TFSVolumeInfo::ShouldRecordIterationTimes(TFSVolumeInfo *this)
{
  if (TFSVolumeInfo::LoadPrefs(void)::once != -1)
  {
    TFSVolumeInfo::ShouldSkipLSProperties();
  }

  return TFSVolumeInfo::gTimeIterations;
}

uint64_t *TFSInfoSynchronizer::Next@<X0>(uint64_t *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  v2 = *(this + 12);
  v3 = *this;
  if (v2 < (this[1] - *this) >> 4)
  {
    v4 = *(v3 + 16 * v2);
    v5 = *(v3 + 16 * v2 + 8);
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    *a2 = v4;
    ++*(this + 12);
  }

  return this;
}

void TNode::UpdateOnDiskProviderRoot(TNode *this)
{
  v32 = *MEMORY[0x1E69E9840];
  if (UseFileProviderFramework())
  {
    v2 = TNode::VirtualType(this);
    if (v2 == 28)
    {
      v3 = TNode::InfoLock(v2);
      os_unfair_lock_lock(v3);
      v5 = *(this + 2);
      v4 = *(this + 3);
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v3);
      os_unfair_lock_lock((v5 + 104));
      v6 = *(v5 + 80);
      if (v6)
      {
        os_unfair_lock_lock(v6 + 18);
        v7 = v6[76];
        os_unfair_lock_unlock(v6 + 18);
        if (v7 == 1)
        {
          v6 = *(v6 + 3);
        }

        else
        {
          v6 = 0;
        }
      }

      os_unfair_lock_unlock((v5 + 104));
      if ([v6 isUsingFPFS])
      {
        v8 = [v6 rootURL];
        if (v8)
        {
          v9 = [v6 isiCloudDriveProvider];
          if (v9)
          {
            v10 = [v8 URLByAppendingPathComponent:@"com~apple~CloudDocs"];

            v8 = v10;
          }

          v30 = 0;
          *buf = v8;
          TNode::GetNodeFromURL(buf, &v30, 0);
          if (!TNodeFromFINode(v30) || (v11 = TNodeFromFINode(v30), v12 = TNode::ParentLock(v11), os_unfair_lock_lock(v12), TNodePtr::TNodePtr(buf, *(v11 + 48)), os_unfair_lock_unlock(v12), LOBYTE(v12) = TNodeFromFINode(*buf) == 0, *buf, (v12 & 1) != 0))
          {
            v15 = LogObj(4);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              *&buf[4] = v6;
              _os_log_impl(&dword_1E5674000, v15, OS_LOG_TYPE_ERROR, "No root node found for domain %{public}@", buf, 0xCu);
            }
          }

          else
          {
            if (v9)
            {
              v13 = TNodeFromFINode(v30);
              TNode::GetParent(v13, buf);
              v14 = *buf;
            }

            else
            {
              v14 = v30;
              *buf = v14;
            }

            v16 = TNodeFromFINode(v14);
            v17 = TNode::InfoLock(v16);
            os_unfair_lock_lock(v17);
            v19 = *(v16 + 16);
            v18 = *(v16 + 24);
            if (v18)
            {
              atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            os_unfair_lock_unlock(v17);
            TFSInfo::UpdateFileProvider(v19, 0);
            if (v18)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v18);
            }

            v20 = TNodeFromFINode(*buf);
            v21 = TNode::InfoLock(v20);
            os_unfair_lock_lock(v21);
            v23 = *(v20 + 16);
            v22 = *(v20 + 24);
            if (v22)
            {
              atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            os_unfair_lock_unlock(v21);
            os_unfair_lock_lock((v23 + 104));
            v24 = *(v23 + 80);
            if (v24)
            {
              os_unfair_lock_lock(v24 + 18);
              v25 = v24[76];
              os_unfair_lock_unlock(v24 + 18);
              if (v25 == 1)
              {
                v24 = *(v24 + 3);
              }

              else
              {
                v24 = 0;
              }
            }

            os_unfair_lock_unlock((v23 + 104));
            if (v22)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v22);
            }

            if (v24)
            {
              v26 = TNodeFromFINode(v30);
              if (v26 != TNodeFromFINode(*buf))
              {
                v27 = TNodeFromFINode(v30);
                TNode::AttachCreateFPItemIfNeeded(v27, 1);
              }

              v28 = TNodeFromFINode(*buf);
              TNode::AttachCreateFPItemIfNeeded(v28, 1);
            }
          }
        }
      }

      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

void sub_1E56A4B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11)
{
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Unwind_Resume(a1);
}

void sub_1E56A4D9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

uint64_t TNode::GetNodeFromURL(CFURLRef *a1, void **a2, unsigned int a3)
{
  TNodePtr::TNodePtr(&v14, 0);
  TNodePtr::operator=(a2, &v14.fString.fRef);

  if (*a1)
  {
    v6 = CFURLCopyScheme(*a1);
    v17 = v6;
    v14.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&v14, v6);
    LODWORD(v6) = TFSInfo::IsNetworkScheme(&v14, v7);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v14.fString.fRef);
    if (v6)
    {
      v16 = 0;
      v12 = TFSInfo::SFNodeFromURL(*a1, (a3 & 2) == 0, &v16);
      if (v12)
      {
        std::allocate_shared[abi:ne200100]<TFSInfo,std::allocator<TFSInfo>,FSInfoVirtualType &,TAutoRef<__SFNode *,TRetainReleasePolicy<__SFNode *>> &,0>();
      }

      NodeFromPath = 4294959236;
      TAutoRef<__SFNode *,TRetainReleasePolicy<__SFNode *>>::~TAutoRef(&v12);
    }

    else if (IsAppInbox(*a1))
    {
      NodeFromPath = 4294959238;
    }

    else
    {
      TCFURLInfo::FileSystemRepresentation(*a1, 1, &theString);
      if (CFStringGetLength(theString))
      {
        NodeFromPath = TNode::GetNodeFromPath(&theString, a2, a3);
        if (!NodeFromPath)
        {
          if ((a3 & 0x80) == 0)
          {
            _ZNSt3__115allocate_sharedB8ne200100I7TFSInfoNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
          }

          if (TNodeFromFINode(*a2))
          {
            v10 = TNodeFromFINode(*a2);
            TNode::GetFSInfo(v10, &v14);
            NodeFromPath = TFSInfo::IsMountTrigger(v14.fString.fRef);
            if (v15)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v15);
            }

            if (NodeFromPath)
            {
              v11 = TNodeFromFINode(*a2);
              TNode::GetFSInfo(v11, &v14);
              NodeFromPath = TFSInfo::TriggerMount(v14.fString.fRef);
              if (v15)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v15);
              }

              if (!NodeFromPath)
              {
                NodeFromPath = TNode::GetNodeFromPath(&theString, a2, a3);
              }
            }
          }

          else
          {
            NodeFromPath = 0;
          }
        }
      }

      else
      {
        NodeFromPath = 4294959236;
      }

      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);
      if (!NodeFromPath)
      {
        if (TNodeFromFINode(*a2))
        {
          NodeFromPath = 0;
        }

        else
        {
          NodeFromPath = 4294959238;
        }

        goto LABEL_19;
      }
    }

    TNodePtr::TNodePtr(&v14, 0);
    TNodePtr::operator=(a2, &v14.fString.fRef);

LABEL_19:
    TAutoRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TAutoRef(&v17);
    return NodeFromPath;
  }

  return 4294959236;
}

void sub_1E56A508C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a12);
  TAutoRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TAutoRef((v14 - 40));
  _Unwind_Resume(a1);
}

BOOL TFSInfo::IsNetworkScheme(TFSInfo *this, const TString *a2)
{
  {
    operator new();
  }

  {
    operator new();
  }

  return CFEqual(*this, *TFSInfo::IsNetworkScheme(TString const&)::networkScheme) || CFEqual(*this, *TFSInfo::IsNetworkScheme(TString const&)::altNetworkScheme) != 0;
}

void sub_1E56A5254(_Unwind_Exception *a1)
{
  MEMORY[0x1E692CD30](v1, 0x60C4044C4A2DFLL);
  _Unwind_Resume(a1);
}

uint64_t IsAppInbox(NSURL *a1)
{
  v1 = a1;
  if (!UseFileProviderFramework())
  {
    goto LABEL_22;
  }

  v2 = [(NSURL *)v1 lastPathComponent];
  obj = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "Inbox", 5, 0x8000100u, 0, *MEMORY[0x1E695E498]);
  v22.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&v22, obj);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&obj);
  v3 = operator==(&v22.fString.fRef, v2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v22.fString.fRef);

  if (v3)
  {
    v4 = [(NSURL *)v1 path];
    v5 = [v4 stringByStandardizingPath];
    v19.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&v19, v5);

    v6 = v19.fString.fRef;
    v18 = [(__CFString *)v6 pathComponents];

    v7 = [v18 count];
    if (v7 == [IsAppInbox(NSURL *)::expectedComponents count])
    {
      v17[0] = &v18;
      v17[1] = &IsAppInbox(NSURL *)::expectedComponents;
      iterator_extras::make_zip_iter_details::ZippedRange<std::tuple<NSArray<NSString *> * {__strong}&,NSArray<NSString *> * {__strong}&>,0ul,1ul>::cbegin<std::tuple<NSArray<NSString *> * {__strong}&,NSArray<NSString *> * {__strong}&>>(v17, v21);
      iterator_extras::make_zip_iter_details::ZippedRange<std::tuple<NSArray<NSString *> * {__strong}&,NSArray<NSString *> * {__strong}&>,0ul,1ul>::cend<std::tuple<NSArray<NSString *> * {__strong}&,NSArray<NSString *> * {__strong}&>>(v17, v20);
      std::__tuple_impl<std::__tuple_indices<0ul,1ul>,IDContainerIteratorAdaptor<NSArray<NSString *>>,IDContainerIteratorAdaptor<NSArray<NSString *>>>::__tuple_impl(&obj, v21);
      std::__tuple_impl<std::__tuple_indices<0ul,1ul>,IDContainerIteratorAdaptor<NSArray<NSString *>>,IDContainerIteratorAdaptor<NSArray<NSString *>>>::__tuple_impl(&v22, v20);
      while ((obj != v22.fString.fRef || v31 != v23) && (v32 != v24 || v37 != v25))
      {
        iterator_extras::make_zip_iter_details::ZippedRange<std::tuple<NSArray<NSString *> * {__strong}&,NSArray<NSString *> * {__strong}&>,0ul,1ul>::ZipIterator<std::tuple<IDContainerIteratorAdaptor<NSArray<NSString *>>,IDContainerIteratorAdaptor<NSArray<NSString *>>>,std::tuple<NSString * {__strong},NSString * {__strong}>>::operator*(&obj, &v38);
        v8 = v38;
        v40.fString.fRef = &stru_1F5F42870;
        CFRetain(&stru_1F5F42870);
        TString::SetStringRefAsImmutable(&v40, v8);

        v9 = v39;
        if ([v9 length])
        {
          v10 = operator==(&v40.fString.fRef, v9);

          TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v40.fString.fRef);
          if ((v10 & 1) == 0)
          {
            v15 = 0;
            goto LABEL_25;
          }
        }

        else
        {

          TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v40.fString.fRef);
        }

        v11 = v30;
        if (v30 >= v29 - 1)
        {
          v12 = [obj countByEnumeratingWithState:v27 objects:v28 count:4];
          v11 = -1;
          v29 = v12;
          v30 = -1;
        }

        if (v28[4] != *v27[2])
        {
          objc_enumerationMutation(obj);
          v11 = v30;
        }

        ++v31;
        v30 = v11 + 1;
        v13 = v36;
        if (v36 >= v35 - 1)
        {
          v14 = [v32 countByEnumeratingWithState:v33 objects:v34 count:4];
          v13 = -1;
          v35 = v14;
          v36 = -1;
        }

        if (v34[4] != *v33[2])
        {
          objc_enumerationMutation(v32);
          v13 = v36;
        }

        ++v37;
        v36 = v13 + 1;
      }

      v15 = 1;
LABEL_25:
    }

    else
    {
      v15 = 0;
    }

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v19.fString.fRef);
  }

  else
  {
LABEL_22:
    v15 = 0;
  }

  return v15;
}

void sub_1E56A5688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, const void *a13, id a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, id a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a13);

  _Unwind_Resume(a1);
}

uint64_t operator==(void **a1, void *a2)
{
  v3 = a2;
  v4 = *a1;
  if (v3)
  {
    v5 = [v4 isEqualToString:v3];
  }

  else
  {
    v5 = [v4 isEqualToString:&stru_1F5F42870];
  }

  v6 = v5;

  return v6;
}

uint64_t TNode::GetNodeFromPath(TString *a1, void **a2, unsigned int a3)
{
  TPathName::TPathName(v55, a1, TPathName::kPOSIXPathNameSeparator);
  v5 = std::deque<TString>::deque(&v50, v55);
  TGlobalNodes::BootNode(&obj, v5);
  TNodePtr::operator=(a2, &obj);

  if (v52 == v51 || (v6 = (v51 + 8 * (v53 >> 9)), v7 = *v6, v8 = (*v6 + 8 * (v53 & 0x1FF)), v9 = *(v51 + (((v54 + v53) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v54 + v53) & 0x1FF), v8 == v9))
  {
    v10 = 0;
    goto LABEL_51;
  }

  v10 = 0;
  while (1)
  {
    v11 = (v8 - v7) >> 3;
    if (v11 < 0)
    {
      v12 = v6[-((510 - v11) >> 9)] + 8 * (~(510 - v11) & 0x1FF);
    }

    else
    {
      v12 = *(v6 + (((v11 + 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v11 + 1) & 0x1FF);
    }

    v13 = v12 == v9;
    if ((a3 & 0x200) != 0)
    {
      v14 = TNodeFromFINode(*a2);
      v15 = TNode::ParentLock(v14);
      os_unfair_lock_lock(v15);
      TNodePtr::TNodePtr(&obj, *(v14 + 48));
      os_unfair_lock_unlock(v15);
      v16 = TNodeFromFINode(obj);
      TGlobalNodes::BootNode(&v48, v16);
      if (v16 == TNodeFromFINode(v48))
      {
        v17 = TNodeFromFINode(*a2);
        v18 = TNode::InfoLock(v17);
        os_unfair_lock_lock(v18);
        v20 = *(v17 + 16);
        v19 = *(v17 + 24);
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        os_unfair_lock_unlock(v18);
        TFSInfo::Name(v20, &v47);
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }

        TPathName::VolumesDirectory(&v46);
        v21 = CFEqual(v47.fString.fRef, v46.fString.fRef);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v46.fString.fRef);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v47.fString.fRef);

        if (v21)
        {
          v22 = TNodeFromFINode(*a2);
          TNode::HandleSync(v22, 0x1000000);
        }
      }

      else
      {
      }
    }

    v23 = TNodeFromFINode(*a2);
    v24 = TNode::InfoLock(v23);
    os_unfair_lock_lock(v24);
    v26 = *(v23 + 16);
    v25 = *(v23 + 24);
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v24);
    IsAlias = TFSInfo::IsAlias(v26);
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    if (IsAlias)
    {
      v28 = TNodeFromFINode(*a2);
      obj = 0;
      v10 = TNode::FollowAlias(v28, a2, &obj, 8);
    }

    if (!v10)
    {
      if ((a3 & 0x40000) != 0)
      {
        v29 = TNodeFromFINode(*a2);
        TNode::HandleSync(v29, 285212672);
      }

      v30 = TNodeFromFINode(*a2);
      TNode::FindChild(v30, v8, v13 & (a3 >> 13), 0, &obj);
      if (TNodeFromFINode(obj))
      {
        v31 = TNodeFromFINode(obj);
        v32 = TNode::InfoLock(v31);
        os_unfair_lock_lock(v32);
        v34 = *(v31 + 16);
        v33 = *(v31 + 24);
        if (v33)
        {
          atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        os_unfair_lock_unlock(v32);
        os_unfair_lock_lock((v34 + 108));
        v35 = *(v34 + 123);
        os_unfair_lock_unlock((v34 + 108));
        if (v33)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v33);
        }

        if ((v35 & 0x8000) != 0)
        {
          v39 = TNodeFromFINode(obj);
          v40 = TNode::InfoLock(v39);
          os_unfair_lock_lock(v40);
          v42 = *(v39 + 16);
          v41 = *(v39 + 24);
          if (v41)
          {
            atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          os_unfair_lock_unlock(v40);
          v10 = TFSInfo::TriggerMount(v42);
          if (v41)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v41);
          }

          if (v10)
          {
            goto LABEL_43;
          }

          v43 = TNodeFromFINode(obj);
          TNode::HandleSync(v43, 0x80000);
        }

        else if ((a3 & 0x80) == 0)
        {
          v36 = TNodeFromFINode(obj);
          if (!TNode::ValidateURL(v36))
          {
            v37 = TNodeFromFINode(obj);
            TNode::HandleSync(v37, 0x80000);
            v38 = TNodeFromFINode(obj);
            if (TNode::ValidateURL(v38))
            {
              v10 = 0;
            }

            else
            {
              v10 = 4294959236;
            }

            goto LABEL_43;
          }
        }
      }

      v10 = 0;
LABEL_43:
      objc_storeStrong(a2, obj);
    }

    if (!TNodeFromFINode(*a2))
    {
      break;
    }

    v8 = (v8 + 8);
    v7 = *v6;
    if (v8 - *v6 == 4096)
    {
      v44 = v6[1];
      ++v6;
      v7 = v44;
      v8 = v44;
    }

    if (v8 == v9)
    {
      goto LABEL_51;
    }
  }

  v10 = 4294959236;
LABEL_51:
  if (TNodeFromFINode(*a2))
  {
    TNodeFromFINode(*a2);
  }

  else
  {
    v10 = 4294959236;
  }

  std::deque<TString>::~deque[abi:ne200100](&v50);
  std::deque<TString>::~deque[abi:ne200100](v55);
  return v10;
}

void sub_1E56A5C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::deque<TString>::~deque[abi:ne200100](va);
  std::deque<TString>::~deque[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void TPathName::TPathName(TPathName *this, TString *a2, int a3)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  Length = CFStringGetLength(a2->fString.fRef);
  if (Length >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 1;
    while (1)
    {
      if (CFStringGetLength(a2->fString.fRef) <= v9 - 1)
      {
        CharacterAtIndex = 0;
      }

      else
      {
        CharacterAtIndex = CFStringGetCharacterAtIndex(a2->fString.fRef, v9 - 1);
      }

      if (CharacterAtIndex == a3)
      {
        if (v8)
        {
          TString::SubString(a2, v7, v8, &theString);
          if (CFStringGetLength(theString) == 1 && CFStringGetLength(theString) >= 1 && CFStringGetCharacterAtIndex(theString, 0) == 46 || CFStringGetLength(theString) == 2 && CFStringGetLength(theString) >= 1 && CFStringGetCharacterAtIndex(theString, 0) == 46 && CFStringGetLength(theString) >= 2 && CFStringGetCharacterAtIndex(theString, 1) == 46)
          {
            goto LABEL_32;
          }

          std::deque<TString>::push_back(this, &theString);
          TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);
          v8 = 0;
        }

        v7 = v9;
      }

      else
      {
        ++v8;
        if (Length == v9 && v8)
        {
          TString::SubString(a2, v7, v8, &theString);
          if (CFStringGetLength(theString) == 1 && CFStringGetLength(theString) >= 1 && CFStringGetCharacterAtIndex(theString, 0) == 46 || CFStringGetLength(theString) == 2 && CFStringGetLength(theString) >= 1 && CFStringGetCharacterAtIndex(theString, 0) == 46 && CFStringGetLength(theString) >= 2 && CFStringGetCharacterAtIndex(theString, 1) == 46)
          {
LABEL_32:
            TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);
            return;
          }

          std::deque<TString>::push_back(this, &theString);
          TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);
          v8 = 0;
          v7 = Length;
        }
      }

      if (Length > v9)
      {
        ++v9;
        if (v8 < 256)
        {
          continue;
        }
      }

      return;
    }
  }
}

void TString::SubString(TString *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, TString *a4@<X8>)
{
  v6 = a2 & ~(a2 >> 63);
  v7 = a3 + v6 - 1;
  Length = CFStringGetLength(this->fString.fRef);
  if (Length - 1 < v7)
  {
    v7 = Length - 1;
  }

  if (v7 >= v6)
  {
    Length = CFStringGetCharacterAtIndex(this->fString.fRef, v6);
    if ((Length & 0xFC00) == 0xDC00)
    {
      ++v6;
    }
  }

  if (v7 >= v6)
  {
    Length = CFStringGetCharacterAtIndex(this->fString.fRef, v7);
    v7 -= (Length & 0xFC00) == 55296;
  }

  if (v6 || (Length = CFStringGetLength(this->fString.fRef), v7 != Length - 1))
  {
    if (v7 >= v6)
    {
      v12.length = v7 - v6 + 1;
      v12.location = v6;
      v10 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], this->fString.fRef, v12);
      v11 = v10;
      a4->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(a4, v10);
      TAutoRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TAutoRef(&v11);
    }

    else
    {
      v9 = TString::KEmptyString(Length);
      a4->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(a4, *v9);
    }
  }

  else
  {
    a4->fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(a4, this->fString.fRef);
  }
}

void *std::deque<TString>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::allocator<TNodeEventPtr *>::allocate_at_least[abi:ne200100](a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<TNodeEventPtr *>::emplace_back<TNodeEventPtr *&>(a1, &v10);
}

void sub_1E56A62F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::deque<TString>::push_back(uint64_t a1, TString **a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = ((v5 - v6) << 6) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    std::deque<TString>::__add_back_capacity(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  v9 = (*(v6 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF));
  v9->fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(v9, *a2);
  ++*(a1 + 40);
}

void std::deque<TString>::__append_with_size[abi:ne200100]<std::__deque_iterator<TString,TString const*,TString const&,TString const* const*,long,512l>>(void *a1, void *a2, TString **a3, unint64_t a4)
{
  v8 = a1[1];
  v9 = a1[2];
  if (v9 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = ((v9 - v8) << 6) - 1;
  }

  v11 = a1[5] + a1[4];
  v12 = v10 - v11;
  if (a4 > v12)
  {
    std::deque<TString>::__add_back_capacity(a1, a4 - v12);
    v8 = a1[1];
    v9 = a1[2];
    v11 = a1[4] + a1[5];
  }

  v13 = (v8 + 8 * (v11 >> 9));
  if (v9 == v8)
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = *v13 + 8 * (v11 & 0x1FF);
    v15 = v14;
  }

  v25[0] = v13;
  v25[1] = v15;
  v16 = std::__deque_iterator<TString,TString*,TString&,TString**,long,512l>::operator+[abi:ne200100](v25, a4);
  if (v14 != v17)
  {
    v18 = v16;
    v19 = v17;
    do
    {
      if (v13 == v18)
      {
        v20 = v19;
      }

      else
      {
        v20 = *v13 + 4096;
      }

      if (v14 == v20)
      {
        v20 = v14;
      }

      else
      {
        v21 = 0;
        v22 = v14;
        do
        {
          std::allocator_traits<std::allocator<TString>>::construct[abi:ne200100]<TString,TString const&,void,0>(a1, v22, a3++);
          if ((a3 - *a2) == 4096)
          {
            v23 = a2[1];
            ++a2;
            a3 = v23;
          }

          ++v22;
          v21 -= 8;
        }

        while (v22 != v20);
      }

      a1[5] += (v20 - v14) >> 3;
      if (v13 == v18)
      {
        break;
      }

      v24 = v13[1];
      ++v13;
      v14 = v24;
    }

    while (v24 != v19);
  }
}

void *std::deque<TString>::__add_back_capacity(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[2] - result[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if ((v4 & 0x1FF) != 0)
  {
    v5 = (v4 >> 9) + 1;
  }

  else
  {
    v5 = v4 >> 9;
  }

  v6 = result[4];
  if (v5 >= v6 >> 9)
  {
    v7 = v6 >> 9;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 9)
  {
    for (result[4] = v6 - (v7 << 9); v7; --v7)
    {
      v14 = v2[1];
      v16[0] = *v14;
      v2[1] = v14 + 1;
      result = std::__split_buffer<TNodeEventPtr *>::emplace_back<TNodeEventPtr *&>(v2, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = result[3] - *result;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = result;
      if (v12)
      {
        std::allocator<TNodeEventPtr *>::allocate_at_least[abi:ne200100](result, v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
      operator new();
    }

    if (v8)
    {
      if (result[3] != result[2])
      {
        operator new();
      }

      operator new();
    }

    for (result[4] -= v7 << 9; v7; --v7)
    {
      v15 = v2[1];
      v16[0] = *v15;
      v2[1] = v15 + 1;
      result = std::__split_buffer<TNodeEventPtr *>::emplace_back<TNodeEventPtr *&>(v2, v16);
    }
  }

  return result;
}

void sub_1E56A6820(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::deque<TString>::__append<std::__deque_iterator<TString,TString const*,TString const&,TString const* const*,long,512l>,0>(void *a1, char *a2, TString **a3, char *a4, TString **a5)
{
  if (a5 == a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = ((a5 - *a4) >> 3) + ((a4 - a2) << 6) - ((a3 - *a2) >> 3);
  }

  std::deque<TString>::__append_with_size[abi:ne200100]<std::__deque_iterator<TString,TString const*,TString const&,TString const* const*,long,512l>>(a1, a2, a3, v5);
}

uint64_t std::deque<TString>::deque(uint64_t a1, void *a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v4 = a2[4];
  v5 = a2[1];
  v6 = a2[2];
  v7 = (v5 + 8 * (v4 >> 9));
  if (v6 == v5)
  {
    v8 = 0;
    v11 = 0;
    v10 = (v5 + 8 * ((a2[5] + v4) >> 9));
  }

  else
  {
    v8 = (*v7 + 8 * (v4 & 0x1FF));
    v9 = a2[5] + v4;
    v10 = (v5 + 8 * (v9 >> 9));
    v11 = (*v10 + 8 * (v9 & 0x1FF));
  }

  std::deque<TString>::__append<std::__deque_iterator<TString,TString const*,TString const&,TString const* const*,long,512l>,0>(a1, v7, v8, v10, v11);
  return a1;
}

void std::allocator_traits<std::allocator<TString>>::construct[abi:ne200100]<TString,TString const&,void,0>(uint64_t a1, TString *a2, TString **a3)
{
  a2->fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(a2, *a3);
}

uint64_t *std::__deque_iterator<TString,TString*,TString&,TString**,long,512l>::operator+[abi:ne200100](uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = a2 + ((*(a1 + 8) - *result) >> 3);
    if (v4 < 1)
    {
      result -= (511 - v4) >> 9;
      v6 = *result;
    }

    else
    {
      result += v4 >> 9;
      v5 = *result;
    }
  }

  return result;
}

void TNode::FindChild(TNode *this@<X0>, TNode *a2@<X1>, int a3@<W2>, char a4@<W3>, void **a5@<X8>)
{
  *a5 = 0;
  TGlobalNodes::RootNode(&v29, this);
  v10 = TNodeFromFINode(v29.fFINode);

  if (v10 == this)
  {
    TNode::GetVolume(a2, &v29);
    TNodePtr::operator=(a5, &v29.fFINode);

    return;
  }

  v12 = TNode::InfoLock(v11);
  os_unfair_lock_lock(v12);
  v14 = *(this + 2);
  v13 = *(this + 3);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v12);
  os_unfair_lock_lock((v14 + 108));
  v15 = *(v14 + 123);
  os_unfair_lock_unlock((v14 + 108));
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if ((v15 & 0x20) != 0 && CFStringGetLength(*a2) >= 1)
  {
    TNodePtr::TNodePtr(&v28, this);
    TNode::StPopulating::StPopulating(&v29, &v28.fFINode, 0);

    v16 = *(this + 7);
    if (v16)
    {
      TChildrenList::Find(v16, a2, &v28);
      TNodePtr::operator=(a5, &v28.fFINode);
    }

    TNode::StPopulating::~StPopulating(&v29.fFINode);
    v17 = TNodeFromFINode(*a5);
    if (v17 || (a4 & 1) != 0)
    {
      if (!a3)
      {
        return;
      }

      v22 = TNode::ParentLock(v17);
      os_unfair_lock_lock(v22);
      TNodePtr::TNodePtr(&v29, *(this + 6));
      os_unfair_lock_unlock(v22);
      v23 = TNodeFromFINode(v29.fFINode);
      if (v23)
      {
        v24 = TNode::ParentLock(v23);
        os_unfair_lock_lock(v24);
        TNodePtr::TNodePtr(&v28, *(this + 6));
        os_unfair_lock_unlock(v24);
        v25 = TNodeFromFINode(v28.fFINode);
        v26 = atomic_load(TNode::GetNotifierList(v25));

        if (v26 > 0)
        {
          return;
        }
      }

      else
      {
      }

      v27 = TNodeFromFINode(*a5);
      TNode::HandleSync(v27, 268959744);
      return;
    }

    v18 = TNode::InfoLock(0);
    os_unfair_lock_lock(v18);
    v20 = *(this + 2);
    v19 = *(this + 3);
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      os_unfair_lock_unlock(v18);
      v21 = *(v20 + 120);
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      if (v21)
      {
        return;
      }
    }

    else
    {
      os_unfair_lock_unlock(v18);
      if (*(v20 + 120))
      {
        return;
      }
    }

    if ((CFStringGetLength(*a2) != 1 || CFStringGetLength(*a2) < 1 || CFStringGetCharacterAtIndex(*a2, 0) != 46) && (CFStringGetLength(*a2) != 2 || TString::GetUniChar(a2, 0) != 46 || TString::GetUniChar(a2, 1) != 46))
    {
      _ZNSt3__115allocate_sharedB8ne200100I7TFSInfoNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }
  }
}

void sub_1E56A6D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(a1);
}

void TChildrenList::Find(TChildrenList *this@<X0>, const TString *a2@<X1>, TNodePtr *a3@<X8>)
{
  v6 = *(this + 12);
  v7 = TNode::InfoLock(this);
  os_unfair_lock_lock(v7);
  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    os_unfair_lock_unlock(v7);
    v10 = *(v9 + 120);
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    os_unfair_lock_unlock(v7);
    if (*(v9 + 120))
    {
LABEL_3:
      v11 = *(this + 8);
      v12 = *(this + 9);
      if (v11 != v12)
      {
        while (1)
        {
          v13 = TNodeFromFINode(*v11);
          if (TNode::Equal(v13, a2))
          {
            break;
          }

          if (++v11 == v12)
          {
            v11 = v12;
            break;
          }
        }

        v12 = *(this + 9);
      }

      if (v11 != v12)
      {
        goto LABEL_9;
      }

      goto LABEL_21;
    }
  }

  TChildrenList::SortListIfNeeded(this, 0);
  v11 = *(this + 8);
  v14 = *(this + 9) - v11;
  if (v14)
  {
    v15 = v14 >> 3;
    do
    {
      v16 = &v11[v15 >> 1];
      v18 = *v16;
      v17 = v16 + 1;
      v19 = TNodeFromFINode(v18);
      v20 = TNode::LessThan(v19, a2);
      if (v20)
      {
        v15 += ~(v15 >> 1);
      }

      else
      {
        v15 >>= 1;
      }

      if (v20)
      {
        v11 = v17;
      }
    }

    while (v15);
    if (v11 != *(this + 9))
    {
      v21 = TNodeFromFINode(*v11);
      if (TNode::Equal(v21, a2))
      {
LABEL_9:
        a3->fFINode = *v11;
        return;
      }
    }
  }

LABEL_21:

  TNodePtr::TNodePtr(a3, 0);
}

CFIndex TFSInfo::Initialize(TFSInfo *this, os_unfair_lock_s *a2, const TString *a3)
{
  if (!a2)
  {
    return 4294959224;
  }

  os_unfair_lock_lock(a2 + 27);
  v6 = *&a2[4]._os_unfair_lock_opaque;
  v13 = v6;
  if (v6)
  {
    CFRetain(v6);
    os_unfair_lock_unlock(a2 + 27);
    v7 = CFURLCreateFilePathURL(0, v6, 0);
    v12 = v7;
    if (v7)
    {
      URLAppendingNameToDirectoryURL = TCFURLInfo::CreateURLAppendingNameToDirectoryURL(v7, &a3->fString.fRef, 0);
      v11 = URLAppendingNameToDirectoryURL;
      if (URLAppendingNameToDirectoryURL)
      {
        v9 = TFSInfo::initialize(this, URLAppendingNameToDirectoryURL, 0, 1, 1, 1, 0);
      }

      else
      {
        v9 = 4294959238;
      }

      TAutoRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TAutoRef(&v11);
    }

    else
    {
      v9 = 4294959238;
    }

    TAutoRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TAutoRef(&v12);
  }

  else
  {
    os_unfair_lock_unlock(a2 + 27);
    v9 = 4294959224;
  }

  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v13);
  return v9;
}

void sub_1E56A70D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, const void *);
  TAutoRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TAutoRef(va);
  TAutoRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TAutoRef(va1);
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(va2);
  _Unwind_Resume(a1);
}

CFURLRef TCFURLInfo::CreateURLAppendingNameToDirectoryURL(TCFURLInfo *this, const void **a2, const TString *a3)
{
  v3 = a3;
  v12 = *MEMORY[0x1E69E9840];
  if (!CFURLGetFileSystemRepresentation(this, 1u, buffer, 1024))
  {
    goto LABEL_8;
  }

  v5 = RetainCF<__CFString const*>(a2);
  if (v5)
  {
    v6 = CFAutorelease(v5);
    v5 = static_cf_cast<__CFString const*,void const*>(v6);
  }

  if (CFStringGetCString(v5, __source, 1024, 0x8000100u) && (strlen(buffer) < 2 || strlcat(buffer, "/", 0x400uLL) <= 0x3FF) && strlcat(buffer, __source, 0x400uLL) <= 0x3FF)
  {
    v9 = strlen(buffer);
    result = CFURLCreateFromFileSystemRepresentation(*MEMORY[0x1E695E480], buffer, v9, v3);
  }

  else
  {
LABEL_8:
    result = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t TFSInfo::HasLSProperties(TFSInfo *this)
{
  os_unfair_lock_lock(this + 27);
  v2 = (*(this + 123) >> 29) & 1;
  os_unfair_lock_unlock(this + 27);
  return v2;
}

const void **TAutoRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TAutoRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void TFSInfo::SetDisplayName(TFSInfo *this, const TString *a2)
{
  os_unfair_lock_lock(this + 26);
  v4 = a2->fString.fRef;
  v5 = [(__CFString *)v4 UTF8String];
  TString::SetStringRefAsImmutable(this + 4, 0);
  if (v5)
  {
    v6 = strlen(v5);
    TString::SetFromUTF8(this + 4, v5, v6);
  }

  os_unfair_lock_unlock(this + 26);
}

TFSInfo *TFSInfo::FetchEnumeratorProperties(TFSInfo *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    if (!*(this + 120))
    {
      v2 = TFSInfo::IterationFullSetOfPropertyKeys(this);
      v3 = CFURLCopyResourcePropertiesForKeys(v1, v2, 0);
      return TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>::~TRef(&v3);
    }
  }

  return this;
}

uint64_t TFSInfo::IterationFullSetOfPropertyKeys(TFSInfo *this)
{
  {
    TFSInfo::IterationFullSetOfPropertyKeys(void)::fullSetOfPropertyKeys = TFSInfo::IterationFullSetOfPropertyKeys(void)::$_0::operator()();
  }

  return TFSInfo::IterationFullSetOfPropertyKeys(void)::fullSetOfPropertyKeys;
}

uint64_t TFSInfo::IterationFullSetOfPropertyKeys(void)::$_0::operator()()
{
  v0 = objc_opt_new();
  if (TFSInfo::IterationInfoPropertyKeys(void)::once != -1)
  {
    TFSInfo::IterationInfoPropertyKeys();
  }

  [v0 addObjectsFromArray:TFSInfo::IterationInfoPropertyKeys(void)::basicKeys];
  if (TFSInfo::LSPropertyKeys(void)::once != -1)
  {
    TFSInfo::IterationFullSetOfPropertyKeys(void)::$_0::operator()();
  }

  [v0 addObjectsFromArray:TFSInfo::LSPropertyKeys(void)::LSPropertyKeys];
  v1 = [MEMORY[0x1E69A8A50] sharedInstance];
  v2 = [v1 generalProperties];

  [v0 addObjectsFromArray:v2];
  v3 = [v0 allObjects];

  return v3;
}

void sub_1E56A74D8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void ___ZN7TFSInfo25IterationInfoPropertyKeysEv_block_invoke()
{
  TFSInfo::IterationInfoPropertyKeys(void)::basicKeys = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(TFSInfo::IterationInfoPropertyKeys(void)::basicKeys, *MEMORY[0x1E695EBE8]);
  CFArrayAppendValue(TFSInfo::IterationInfoPropertyKeys(void)::basicKeys, *MEMORY[0x1E695E448]);
  CFArrayAppendValue(TFSInfo::IterationInfoPropertyKeys(void)::basicKeys, *MEMORY[0x1E695E2B0]);
  CFArrayAppendValue(TFSInfo::IterationInfoPropertyKeys(void)::basicKeys, *MEMORY[0x1E695E2B8]);
  CFArrayAppendValue(TFSInfo::IterationInfoPropertyKeys(void)::basicKeys, *MEMORY[0x1E695E2A0]);
  CFArrayAppendValue(TFSInfo::IterationInfoPropertyKeys(void)::basicKeys, *MEMORY[0x1E695E2C0]);
  CFArrayAppendValue(TFSInfo::IterationInfoPropertyKeys(void)::basicKeys, *MEMORY[0x1E695E2F8]);
  CFArrayAppendValue(TFSInfo::IterationInfoPropertyKeys(void)::basicKeys, *MEMORY[0x1E695EAF0]);
  CFArrayAppendValue(TFSInfo::IterationInfoPropertyKeys(void)::basicKeys, *MEMORY[0x1E695EA68]);
  CFArrayAppendValue(TFSInfo::IterationInfoPropertyKeys(void)::basicKeys, *MEMORY[0x1E695EA50]);
  CFArrayAppendValue(TFSInfo::IterationInfoPropertyKeys(void)::basicKeys, *MEMORY[0x1E695EA48]);
  CFArrayAppendValue(TFSInfo::IterationInfoPropertyKeys(void)::basicKeys, *MEMORY[0x1E695EA00]);
  CFArrayAppendValue(TFSInfo::IterationInfoPropertyKeys(void)::basicKeys, *MEMORY[0x1E695EA08]);
  CFArrayAppendValue(TFSInfo::IterationInfoPropertyKeys(void)::basicKeys, *MEMORY[0x1E695EBB0]);
  CFArrayAppendValue(TFSInfo::IterationInfoPropertyKeys(void)::basicKeys, *MEMORY[0x1E695EBB8]);
  CFArrayAppendValue(TFSInfo::IterationInfoPropertyKeys(void)::basicKeys, *MEMORY[0x1E695EB10]);
  CFArrayAppendValue(TFSInfo::IterationInfoPropertyKeys(void)::basicKeys, *MEMORY[0x1E695EB98]);
  CFArrayAppendValue(TFSInfo::IterationInfoPropertyKeys(void)::basicKeys, *MEMORY[0x1E695EB40]);
  CFArrayAppendValue(TFSInfo::IterationInfoPropertyKeys(void)::basicKeys, *MEMORY[0x1E695EB90]);
  CFArrayAppendValue(TFSInfo::IterationInfoPropertyKeys(void)::basicKeys, *MEMORY[0x1E695EB80]);
  CFArrayAppendValue(TFSInfo::IterationInfoPropertyKeys(void)::basicKeys, *MEMORY[0x1E695E318]);
  CFArrayAppendValue(TFSInfo::IterationInfoPropertyKeys(void)::basicKeys, *MEMORY[0x1E695EB78]);
  CFArrayAppendValue(TFSInfo::IterationInfoPropertyKeys(void)::basicKeys, *MEMORY[0x1E695EB28]);
  CFArrayAppendValue(TFSInfo::IterationInfoPropertyKeys(void)::basicKeys, *MEMORY[0x1E695EB68]);
  CFArrayAppendValue(TFSInfo::IterationInfoPropertyKeys(void)::basicKeys, *MEMORY[0x1E695EB18]);
  CFArrayAppendValue(TFSInfo::IterationInfoPropertyKeys(void)::basicKeys, *MEMORY[0x1E695EB60]);
  CFArrayAppendValue(TFSInfo::IterationInfoPropertyKeys(void)::basicKeys, *MEMORY[0x1E695EBA0]);
  CFArrayAppendValue(TFSInfo::IterationInfoPropertyKeys(void)::basicKeys, *MEMORY[0x1E695EB38]);
  CFArrayAppendValue(TFSInfo::IterationInfoPropertyKeys(void)::basicKeys, *MEMORY[0x1E695E3A8]);
  CFArrayAppendValue(TFSInfo::IterationInfoPropertyKeys(void)::basicKeys, *MEMORY[0x1E695E338]);
  CFArrayAppendValue(TFSInfo::IterationInfoPropertyKeys(void)::basicKeys, *MEMORY[0x1E695E330]);
  CFArrayAppendValue(TFSInfo::IterationInfoPropertyKeys(void)::basicKeys, *MEMORY[0x1E695E2A8]);
  v0 = TFSInfo::IterationInfoPropertyKeys(void)::basicKeys;
  v1 = *MEMORY[0x1E695ED38];

  CFArrayAppendValue(v0, v1);
}

void ___ZN7TFSInfo14LSPropertyKeysEv_block_invoke()
{
  TFSInfo::LSPropertyKeys(void)::LSPropertyKeys = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(TFSInfo::LSPropertyKeys(void)::LSPropertyKeys, *MEMORY[0x1E695EBC8]);
  CFArrayAppendValue(TFSInfo::LSPropertyKeys(void)::LSPropertyKeys, *MEMORY[0x1E695EB20]);
  CFArrayAppendValue(TFSInfo::LSPropertyKeys(void)::LSPropertyKeys, *MEMORY[0x1E695EB50]);
  CFArrayAppendValue(TFSInfo::LSPropertyKeys(void)::LSPropertyKeys, *MEMORY[0x1E695E250]);
  CFArrayAppendValue(TFSInfo::LSPropertyKeys(void)::LSPropertyKeys, *MEMORY[0x1E695E230]);
  v0 = TFSInfo::LSPropertyKeys(void)::LSPropertyKeys;
  v1 = *MEMORY[0x1E695E228];

  CFArrayAppendValue(v0, v1);
}

const void **TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>::~TRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void TNode::FindOrCreateChild(TNode *a1@<X0>, TFSInfo **a2@<X1>, TNodePtr *a3@<X8>)
{
  TNodePtr::TNodePtr(&v30, a1);
  TNode::StPopulating::StPopulating(&v33, &v30.fFINode, 0);

  TChildrenList::FindRenamedChild(*(a1 + 7), a2, a3);
  v6 = TNodeFromFINode(a3->fFINode);
  fFINode = a3->fFINode;
  if (v6)
  {
    v8 = TNodeFromFINode(fFINode);
    TNode::FetchAdditionalPropertiesForSync(v8, a2, 1);
    v30.fFINode = 0;
    v31 = 0;
    v32 = 0;
    v9 = TNodeFromFINode(a3->fFINode);
    TNode::ReconcileInternalProperties(v9, a2, &v30, 1);
    TNodeEventPtrs::SendNotifications(&v30);
    v34 = &v30;
    std::vector<std::pair<TNodePtr,TNodeEventPtr>>::__destroy_vector::operator()[abi:ne200100](&v34);
    TNode::StPopulating::~StPopulating(&v33);
    return;
  }

  TNode::StPopulating::~StPopulating(&v33);
  TNodePtr::TNodePtr(&v30, a1);
  v33.fData.__impl_.__data = 0uLL;
  TNode::CreateNode(a3, &v30, a2, &v33);
  if (v33.fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__head.__value.buffer)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33.fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__head.__value.buffer);
  }

  TNode::AddChild(a1, a3);
  v10 = TNodeFromFINode(a3->fFINode);
  v11 = TNode::InfoLock(v10);
  os_unfair_lock_lock(v11);
  v13 = *(v10 + 16);
  v12 = *(v10 + 24);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v11);
  os_unfair_lock_lock((v13 + 108));
  v14 = *(v13 + 123);
  os_unfair_lock_unlock((v13 + 108));
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v15 = a3->fFINode;
  if ((v14 & 0x100) == 0)
  {
    v16 = TNodeFromFINode(v15);
    v17 = TNode::InfoLock(v16);
    os_unfair_lock_lock(v17);
    v19 = *(v16 + 16);
    v18 = *(v16 + 24);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      os_unfair_lock_unlock(v17);
      v20 = *(v19 + 120);
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      if (!v20)
      {
        return;
      }
    }

    else
    {
      os_unfair_lock_unlock(v17);
      if (!*(v19 + 120))
      {
        return;
      }
    }

    v25 = TNodeFromFINode(a3->fFINode);
    v33.fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__head.__value = 0;
    v26 = TNode::CopyURL(v25, &v33);
    v30.fFINode = v33.fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__head.__value;
    TGlobalNodes::RootNode(&v34, v26);
    v27 = TNodeFromFINode(v34);
    TPropertyValue::TPropertyValue<__CFURL const*>(&v33, &v30.fFINode);
    TNode::RequestInternalTask(v27, 1001, &v33, 0);
    TPropertyValue::~TPropertyValue(&v33);

    TAutoRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TAutoRef(&v30.fFINode);
    return;
  }

  v21 = TNodeFromFINode(v15);
  v22 = TNode::InfoLock(v21);
  os_unfair_lock_lock(v22);
  v24 = *(v21 + 16);
  v23 = *(v21 + 24);
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v22);
  TFSInfo::GetVolumeID(v24, &v28);
  TNode::GetVolumeNode(&v28, &v29);

  TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(&v28);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }
}

void sub_1E56A7B9C(_Unwind_Exception *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, TPropertyValue *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  TPropertyValue::~TPropertyValue(&a15);

  TAutoRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TAutoRef(&a12);
  _Unwind_Resume(a1);
}

void TChildrenList::FindRenamedChild(uint64_t a1@<X0>, TFSInfo **a2@<X1>, TNodePtr *a3@<X8>)
{
  v5 = *a2;
  if (*(*a2 + 120))
  {
    IsFPv2 = TFSInfo::IsFPv2(*a2, 1);
    v8 = *a2;
    if (IsFPv2)
    {
      v27 = TFSInfo::GetFPItem(v8);
      TChildrenList::FindByFPItem(a1, v27, a3);
LABEL_4:
    }

    else
    {
      if (*(v8 + 120) == 28)
      {
        os_unfair_lock_lock(v8 + 26);
        v11 = *(v8 + 10);
        if (v11)
        {
          os_unfair_lock_lock(v11 + 18);
          v12 = v11[76];
          os_unfair_lock_unlock(v11 + 18);
          if (v12 == 1)
          {
            v11 = *(v11 + 3);
          }

          else
          {
            v11 = 0;
          }
        }

        os_unfair_lock_unlock(v8 + 26);
        v27 = [v11 domain];

        if ([(FPItem *)v27 isiCloudDriveProvider])
        {
          v18 = *(a1 + 64);
          v19 = *(a1 + 72);
          while (v18 != v19)
          {
            v20 = TNodeFromFINode(*v18);
            v21 = TNode::GetFIProvider(v20);
            v22 = [v21 domain];

            if ([v22 isiCloudDriveProvider])
            {
              v23 = IsDefaultFPDomain(v27);
              if (v23 != IsDefaultFPDomain(v22))
              {
                a3->fFINode = *v18;

                goto LABEL_4;
              }
            }

            ++v18;
          }
        }
      }

      TNodePtr::TNodePtr(a3, 0);
    }
  }

  else
  {
    os_unfair_lock_lock(v5 + 27);
    v9 = *(v5 + 2);
    cf2 = v9;
    if (v9)
    {
      CFRetain(v9);
      v10 = cf2;
    }

    else
    {
      v10 = 0;
    }

    os_unfair_lock_unlock(v5 + 27);
    TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&cf2);
    if (v10)
    {
      propertyValueTypeRefPtr[0] = 0;
      if (CFURLCopyResourcePropertyForKey(v10, *MEMORY[0x1E695E2B0], propertyValueTypeRefPtr, 0) && (v13 = propertyValueTypeRefPtr[0]) != 0)
      {
        v29 = propertyValueTypeRefPtr[0];
        propertyValueTypeRefPtr[0] = 0;
        v28 = v13;
        CFRetain(v13);
        propertyValueTypeRefPtr[1] = v10;
        v31 = v28;
        if (v28)
        {
          CFRetain(v28);
          v34 = v10;
          v35 = v28;
          CFRetain(v28);
          v16 = *(a1 + 72);
          v14 = (a1 + 72);
          v15 = v16;
          v17 = *(v14 - 1);
          cf2 = v10;
          v37 = v28;
          CFRetain(v28);
        }

        else
        {
          v24 = *(a1 + 72);
          v14 = (a1 + 72);
          v15 = v24;
          v34 = v10;
          v35 = 0;
          v17 = *(v14 - 1);
          cf2 = v10;
          v37 = 0;
        }

        if (v17 != v15)
        {
          do
          {
            v25 = TNodeFromFINode(*v17);
            TNode::CFURL(v25, &v38);
            if (v38)
            {
              v26 = IsEqual(v38, cf2);
              TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v38);
              if (v26)
              {
                goto LABEL_40;
              }
            }

            else
            {
              TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v38);
            }

            ++v17;
          }

          while (v17 != v15);
          v17 = v15;
        }

LABEL_40:
        TRef<void const*,TRetainReleasePolicy<void const*>>::~TRef(&v37);
        TRef<void const*,TRetainReleasePolicy<void const*>>::~TRef(&v35);
        if (v17 == *v14)
        {
          LOBYTE(v32) = 0;
          v33 = 0;
          TNodePtr::TNodePtr(a3, 0);
        }

        else
        {
          v32 = *v17;
          v33 = 1;
          TNodePtr::TNodePtr(a3, &v32);
          if (v33)
          {
          }
        }

        TRef<void const*,TRetainReleasePolicy<void const*>>::~TRef(&v31);
        TRef<void const*,TRetainReleasePolicy<void const*>>::~TRef(&v28);
        TRef<void const*,TRetainReleasePolicy<void const*>>::~TRef(&v29);
      }

      else
      {
        TNodePtr::TNodePtr(a3, 0);
      }

      TAutoRef<void const*,TRetainReleasePolicy<void const*>>::~TAutoRef(propertyValueTypeRefPtr);
    }

    else
    {
      TNodePtr::TNodePtr(a3, 0);
    }
  }
}

void sub_1E56A8030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, uint64_t a10, uint64_t a11, const void *a12, const void *a13)
{
  TRef<void const*,TRetainReleasePolicy<void const*>>::~TRef((v14 + 8));
  TRef<void const*,TRetainReleasePolicy<void const*>>::~TRef((v13 + 8));
  TRef<void const*,TRetainReleasePolicy<void const*>>::~TRef(&a12);
  TAutoRef<void const*,TRetainReleasePolicy<void const*>>::~TAutoRef(&a13);
  _Unwind_Resume(a1);
}

void TNode::GetAliasTarget(TNode *this@<X0>, void *a2@<X8>)
{
  v4 = TNode::InfoLock(this);
  os_unfair_lock_lock(v4);
  *a2 = *(this + 4);

  os_unfair_lock_unlock(v4);
}

uint64_t TNode::AddChild(TNode *a1, TNodePtr *a2, void *a3, void *a4)
{
  v25 = 0;
  TNodePtr::TNodePtr(&v19, a1);
  TNode::StPopulating::StPopulating(&v24, &v19.fFINode, 0);

  TNode::AddNewChild(&v19, a1, a2, &v25, 0, 0);
  TNodePtr::operator=(&a2->fFINode, &v19.fFINode);

  if (*a3 != a3[1] || *a4)
  {
    v8 = TNodeFromFINode(a2->fFINode);
    TNode::HandleSync(v8, 0x10000000);
  }

  TNode::StPopulating::~StPopulating(&v24);
  if (v25)
  {
    v9 = TNodeFromFINode(a2->fFINode);
    v10 = TNode::InfoLock(v9);
    os_unfair_lock_lock(v10);
    v12 = *(v9 + 16);
    v11 = *(v9 + 24);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v10);
    if (*(v12 + 120) == 28)
    {
      goto LABEL_20;
    }

    os_unfair_lock_lock((v12 + 104));
    v13 = *(v12 + 80);
    if (v13)
    {
      os_unfair_lock_lock(v13 + 18);
      v14 = v13[76];
      os_unfair_lock_unlock(v13 + 18);
      if (v14 == 1)
      {
        v13 = *(v13 + 3);
      }

      else
      {
        v13 = 0;
      }
    }

    os_unfair_lock_unlock((v12 + 104));
    v23 = v13;
    if (!v13)
    {
      goto LABEL_20;
    }

    if ([v13 isUsingFPFS])
    {
      v15 = [v13 rootURL];
      if (!v15)
      {
LABEL_19:

LABEL_20:
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        goto LABEL_22;
      }
    }

    TGlobalNodes::AllProvidersNode(&v22);
    v16 = TNodeFromFINode(v22);
    if ((TNode::IsInitialPopulating(v16) & 1) == 0)
    {
      v21 = TFSInfo::GetFPItem(v12);
      LOBYTE(v20.fFINode) = 1;
      std::allocate_shared[abi:ne200100]<TFSInfo,std::allocator<TFSInfo>,FIProviderDomain * {__strong}&,FPItem * {__strong}&,BOOL,0>();
    }

    v13 = v23;
    goto LABEL_19;
  }

LABEL_22:
  if (v25)
  {
    TNode::SendNotification(a1, 3, &a2->fFINode, 0, 0);
  }

  v17 = TNodeFromFINode(a2->fFINode);
  return TNode::CopyProperties(v17, a4);
}

void sub_1E56A83C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  _Unwind_Resume(a1);
}

void TNode::AddChild(TNode *this, TNodePtr *a2)
{
  memset(v4, 0, sizeof(v4));
  v2 = 0;
  v3 = 0;
  TNode::AddChild(this, a2, v4, &v2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v2 = v4;
  std::vector<TPropertyInfo>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void sub_1E56A84B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, std::__shared_weak_count *a11, char a12)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  a10 = &a12;
  std::vector<TPropertyInfo>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t TNode::CopyProperties(uint64_t result, uint64_t a2)
{
  if (*a2)
  {
    v2 = *(*a2 + 16);
    if (v2)
    {
      v3 = result;
      do
      {
        v4 = *(v2 + 4);
        if (v4 != 1886282093)
        {
          v7 = 19;
          v5 = 0;
          v6 = v2 + 3;
          result = TNode::SetProperty(v3, v4, &v6, &v5, 0, 0);
        }

        v2 = *v2;
      }

      while (v2);
    }
  }

  return result;
}

void std::vector<TPropertyInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 48;
      v7 = v4 - 48;
      v8 = v4 - 48;
      do
      {
        v9 = *v8;
        v8 -= 48;
        (*v9)(v7);
        v6 -= 48;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

BOOL TNode::ValidateURL(TNode *this)
{
  __p = 0;
  TNode::CopyURL(this, &__p);
  url = __p;
  if (__p)
  {
    std::vector<unsigned char>::vector[abi:ne200100](&__p, 1024);
    v1 = CFURLGetFileSystemRepresentation(url, 1u, __p, v4 - __p) != 0;
    if (__p)
    {
      v4 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v1 = 1;
  }

  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&url);
  return v1;
}

void sub_1E56A86B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, const void *a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&a12);
  _Unwind_Resume(a1);
}

void std::vector<char>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
}

void *std::vector<unsigned char>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1E56A8784(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TNode::FollowAlias(_BOOL8 IsAlias, TNodePtr *a2, TOperationErrorRecord **a3, int a4)
{
  v7 = IsAlias;
  if ((a4 & 0x20000) == 0)
  {
    goto LABEL_9;
  }

  IsAlias = TNode::IsInTrash(IsAlias);
  if (!IsAlias)
  {
    goto LABEL_9;
  }

  v8 = TNode::InfoLock(IsAlias);
  os_unfair_lock_lock(v8);
  v10 = *(v7 + 16);
  v9 = *(v7 + 24);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v8);
  IsAlias = TFSInfo::IsAlias(v10);
  v11 = IsAlias;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (!v11)
  {
LABEL_9:
    v13 = TNode::InfoLock(IsAlias);
    os_unfair_lock_lock(v13);
    v15 = *(v7 + 16);
    v14 = *(v7 + 24);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      os_unfair_lock_unlock(v13);
      v16 = *(v15 + 120);
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    else
    {
      os_unfair_lock_unlock(v13);
      v16 = *(v15 + 120);
    }

    if (v16 == 1)
    {
      TGlobalNodes::RootNode(&v36, v17);
      TNodePtr::operator=(&a2->fFINode, &v36.fFINode);

      TNode::SetAliasTarget(v7, a2, 1);
      return 0;
    }

    v18 = TNode::InfoLock(v17);
    os_unfair_lock_lock(v18);
    v20 = *(v7 + 16);
    v19 = *(v7 + 24);
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v18);
    v21 = TFSInfo::IsAlias(v20);
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    if (!v21)
    {
      TNodePtr::TNodePtr(&v36, v7);
      TNodePtr::operator=(&a2->fFINode, &v36.fFINode);

      return 0;
    }

    TNode::GetAliasTarget(v7, &obj);
    if (TNodeFromFINode(obj))
    {
      v22 = TNodeFromFINode(obj);
      if (TNode::Validate(v22, v23))
      {
        v24 = TNodeFromFINode(obj);
        TNode::GetVolumeInfo(v24, &v36);
        v25 = BYTE3(v36.fFINode[15].super.isa);
        if (v37)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v37);
        }

        if ((v25 & 1) == 0)
        {
          TNode::ClearAliasTarget(v7, 0);
          TNodePtr::TNodePtr(&v36, 0);
          TNodePtr::operator=(&obj, &v36.fFINode);
        }
      }
    }

    if ((a4 & 0x40000) != 0)
    {
      TNodePtr::TNodePtr(&v36, 0);
      TNodePtr::operator=(&obj, &v36.fFINode);

      v27 = 0;
    }

    else
    {
      v27 = a4 < 0 || *a3 != 0;
      if ((a4 & 0x40000000) != 0)
      {
        if (TNodeFromFINode(obj))
        {
          v12 = 0;
        }

        else
        {
          v12 = 4294959232;
        }

LABEL_50:
        objc_storeStrong(&a2->fFINode, obj);

        return v12;
      }
    }

    if (!TNodeFromFINode(obj))
    {
      goto LABEL_44;
    }

    v28 = TNodeFromFINode(obj);
    v29 = TNode::InfoLock(v28);
    os_unfair_lock_lock(v29);
    v31 = *(v28 + 16);
    v30 = *(v28 + 24);
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      os_unfair_lock_unlock(v29);
      v32 = *(v31 + 120);
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }

    else
    {
      os_unfair_lock_unlock(v29);
      v32 = *(v31 + 120);
    }

    if (v32 != 16)
    {
      v12 = 0;
    }

    else
    {
LABEL_44:
      if (v27)
      {
        TNode::SetUnresolvedTarget(v7);
        v38 = 0;
        std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v36);
        v38 = 21;
        LODWORD(v36.fFINode) = a4 & 0xFFFBFFFD | 0x40000;
        v33 = *a3;
        v35 = v33;
        if (v33)
        {
          TOperationErrorRecord::AddPtrReference(v33);
        }

        TNode::RequestTask(v7, 10, 1920167792, &v36, &v35);
      }

      v12 = TNode::FollowAlias(v7, a4);
      TNode::GetAliasTarget(v7, &v36);
      TNodePtr::operator=(&obj, &v36.fFINode);
    }

    goto LABEL_50;
  }

  return 4294959232;
}