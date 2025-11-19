void sub_2476D8000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v25 - 120);
  if ((a25 & 7) != 0)
  {
    atomic_fetch_add_explicit((a25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute((v25 - 88));
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&a10);
  realityio::WrappedRERef<REEntity *>::~WrappedRERef(&a14);
  realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(&a15);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&a21);
  _Unwind_Resume(a1);
}

void realityio::ArbitraryComponentBuilder::removeComponentFromEntity(realityio::ArbitraryComponentBuilder *this)
{
  v2 = *(this + 35);
  v3 = this + 288;
  if (v2 != this + 288)
  {
    do
    {
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v7, v2 + 8);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v8, v2 + 9);
      v9 = *(v2 + 5);
      if (v9)
      {
        RERetain();
      }

      if (REComponentGetEntity())
      {
        REComponentGetClass();
        REEntityRemoveComponentByClass();
      }

      realityio::WrappedRERef<REComponent *>::~WrappedRERef(&v9);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v7);
      v4 = *(v2 + 1);
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = *(v2 + 2);
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REComponent *>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REComponent *>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REComponent *>>>>::destroy(*(this + 36));
  *(this + 36) = 0;
  *(this + 37) = 0;
  *(this + 35) = v3;
}

void realityio::ArbitraryComponentBuilder::clear(realityio::ArbitraryComponentBuilder *this, realityio::Inputs *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 6);
  __p[0] = &unk_28595D6D8;
  __p[1] = this;
  v19 = __p;
  (*(*v3 + 16))(v3, __p);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](__p);
  v5 = *(this + 2);
  v4 = *(this + 3);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "arbitraryComponentClass");
  std::mutex::lock(v5 + 1);
  v6 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(&v5->__m_.__opaque[32], __p);
  std::mutex::unlock(v5 + 1);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = &v5->__m_.__opaque[40];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (v7 != v6)
  {
    v9 = *(this + 2);
    v8 = *(this + 3);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "arbitraryComponentClass");
    std::mutex::lock((v9 + 64));
    if (v9 + 48 != std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(v9 + 40, __p))
    {
      std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::__erase_unique<std::string>((v9 + 40), __p);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__erase_unique<std::string>(v9, __p);
    std::mutex::unlock((v9 + 64));
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  v11 = *(this + 2);
  v10 = *(this + 3);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "arbitraryComponentAnimationLibrary");
  std::mutex::lock(v11 + 1);
  v12 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(&v11->__m_.__opaque[32], __p);
  std::mutex::unlock(v11 + 1);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  v13 = &v11->__m_.__opaque[40];
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v13 != v12)
  {
    v15 = *(this + 2);
    v14 = *(this + 3);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "arbitraryComponentAnimationLibrary");
    std::mutex::lock((v15 + 64));
    if (v15 + 48 != std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(v15 + 40, __p))
    {
      std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::__erase_unique<std::string>((v15 + 40), __p);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__erase_unique<std::string>(v15, __p);
    std::mutex::unlock((v15 + 64));
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_2476D8484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  std::mutex::unlock(v16 + 1);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(a1);
}

void realityio::ArbitraryComponentBuilder::~ArbitraryComponentBuilder(realityio::ArbitraryComponentBuilder *this)
{
  *this = &unk_28595CF90;
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REComponent *>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REComponent *>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REComponent *>>>>::destroy(*(this + 36));
  *this = &unk_285943338;
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 248);
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 216);
  v2 = *(this + 26);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 23);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::Builder::~Builder(this);
}

{
  *this = &unk_28595CF90;
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REComponent *>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REComponent *>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REComponent *>>>>::destroy(*(this + 36));
  *this = &unk_285943338;
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 248);
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 216);
  v2 = *(this + 26);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 23);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::Builder::~Builder(this);

  JUMPOUT(0x24C1A91B0);
}

void anonymous namespace::getArrayName(std::string *a1, __int128 *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, "[]");
  v4 = a2[1];
  v39 = *a2;
  v40 = v4;
  Name = RETypeInfoGetName();
  std::string::basic_string[abi:ne200100]<0>(&__str, Name);
  v6 = a2[1];
  v39 = *a2;
  v40 = v6;
  if ((RETypeInfoIsArray() & 1) == 0)
  {
    v7 = a2[1];
    v39 = *a2;
    v40 = v7;
    if (!RETypeInfoIsList())
    {
      p_str = &__str;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __str.__r_.__value_.__l.__size_;
        p_str = __str.__r_.__value_.__r.__words[0];
      }

      v14 = 9;
      if (size < 9)
      {
        v14 = size;
      }

      if (size)
      {
        v15 = (p_str + v14);
        v16 = p_str;
        v17 = v15;
        do
        {
          if (v16->__r_.__value_.__s.__data_[0] == 79)
          {
            v18 = 1u;
            while (v18 != 9)
            {
              if ((v16 + v18) == v15)
              {
                goto LABEL_31;
              }

              v19 = v16->__r_.__value_.__s.__data_[v18];
              v20 = aOptional[v18++];
              if (v19 != v20)
              {
                goto LABEL_15;
              }
            }

            v17 = v16;
          }

LABEL_15:
          v16 = (v16 + 1);
        }

        while (v16 != v15);
LABEL_31:
        if (v17 != v15 && v17 == p_str)
        {
          v25 = std::string::find(&__str, 60, 0) + 1;
          v26 = std::string::find(&__str, 62, 0);
          std::string::basic_string(a1, &__str, v25, v26 - v25, &v39);
          goto LABEL_44;
        }
      }

      goto LABEL_34;
    }
  }

  v39 = 0u;
  v40 = 0u;
  *v38 = v39;
  *&v38[16] = v40;
  if ((RETypeInfoIsArray() & 1) != 0 || (*v38 = v39, *&v38[16] = v40, RETypeInfoIsList()))
  {
    memset(v38, 0, sizeof(v38));
    v37[0] = *v38;
    v37[1] = *&v38[16];
    v8 = RETypeInfoGetName();
    std::string::basic_string[abi:ne200100]<0>(&v32, v8);
    v9 = std::string::append(&v32, "[]");
    v10 = *&v9->__r_.__value_.__l.__data_;
    a1->__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&a1->__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    v11 = v32.__r_.__value_.__r.__words[0];
    goto LABEL_43;
  }

  v21 = a2[1];
  *v38 = *a2;
  *&v38[16] = v21;
  if (!RETypeInfoIsArray())
  {
    v27 = std::string::find(&__str, 60, 0) + 1;
    v28 = std::string::find(&__str, 62, 0);
    std::string::basic_string(v38, &__str, v27, v28 - v27, v37);
    if ((v36 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v36 & 0x80u) == 0)
    {
      v24 = v36;
    }

    else
    {
      v24 = v35;
    }

    goto LABEL_41;
  }

  v22 = std::string::find(&__str, 91, 0);
  if (v22 == -1)
  {
LABEL_34:
    *a1 = __str;
    memset(&__str, 0, sizeof(__str));
    goto LABEL_44;
  }

  std::string::basic_string(v38, &__str, 0, v22, v37);
  if ((v36 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v36 & 0x80u) == 0)
  {
    v24 = v36;
  }

  else
  {
    v24 = v35;
  }

LABEL_41:
  v29 = std::string::append(v38, p_p, v24);
  v30 = *&v29->__r_.__value_.__l.__data_;
  a1->__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
  *&a1->__r_.__value_.__l.__data_ = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  if ((v38[23] & 0x80000000) == 0)
  {
    goto LABEL_44;
  }

  v11 = *v38;
LABEL_43:
  operator delete(v11);
LABEL_44:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (v36 < 0)
  {
    operator delete(__p);
  }

  v31 = *MEMORY[0x277D85DE8];
}

void sub_2476D8A0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::getTypeMap(_anonymous_namespace_ *this)
{
  v200 = *MEMORY[0x277D85DE8];
  {
    std::string::basic_string[abi:ne200100]<0>(&__s, "Vector2F");
    v2 = MEMORY[0x277D86578];
    Data = atomic_load(MEMORY[0x277D86578]);
    if (!Data)
    {
      Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v102, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
    }

    else
    {
      v102 = __s;
    }

    v103 = *(Data + 19);
    std::string::basic_string[abi:ne200100]<0>(&v100, "Vector3F");
    v4 = atomic_load(v2);
    if (!v4)
    {
      v4 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v104, v100.__r_.__value_.__l.__data_, v100.__r_.__value_.__l.__size_);
    }

    else
    {
      v104 = v100;
    }

    v105 = *(v4 + 20);
    std::string::basic_string[abi:ne200100]<0>(&v99, "Vector4F");
    v5 = atomic_load(v2);
    if (!v5)
    {
      v5 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v106, v99.__r_.__value_.__l.__data_, v99.__r_.__value_.__l.__size_);
    }

    else
    {
      v106 = v99;
    }

    v107 = *(v5 + 21);
    std::string::basic_string[abi:ne200100]<0>(&v98, "float[2]");
    v6 = atomic_load(v2);
    if (!v6)
    {
      v6 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v108, v98.__r_.__value_.__l.__data_, v98.__r_.__value_.__l.__size_);
    }

    else
    {
      v108 = v98;
    }

    v109 = *(v6 + 19);
    std::string::basic_string[abi:ne200100]<0>(&v97, "float[3]");
    v7 = atomic_load(v2);
    if (!v7)
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v110, v97.__r_.__value_.__l.__data_, v97.__r_.__value_.__l.__size_);
    }

    else
    {
      v110 = v97;
    }

    v111 = *(v7 + 20);
    std::string::basic_string[abi:ne200100]<0>(&v96, "float[4]");
    v8 = atomic_load(v2);
    if (!v8)
    {
      v8 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v112, v96.__r_.__value_.__l.__data_, v96.__r_.__value_.__l.__size_);
    }

    else
    {
      v112 = v96;
    }

    v113 = *(v8 + 21);
    std::string::basic_string[abi:ne200100]<0>(&v95, "QuaternionF");
    v9 = atomic_load(v2);
    if (!v9)
    {
      v9 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v114, v95.__r_.__value_.__l.__data_, v95.__r_.__value_.__l.__size_);
    }

    else
    {
      v114 = v95;
    }

    v115 = *(v9 + 41);
    std::string::basic_string[abi:ne200100]<0>(&v94, "Matrix2x2F");
    v10 = atomic_load(v2);
    if (!v10)
    {
      v10 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v116, v94.__r_.__value_.__l.__data_, v94.__r_.__value_.__l.__size_);
    }

    else
    {
      v116 = v94;
    }

    v117 = *(v10 + 43);
    std::string::basic_string[abi:ne200100]<0>(&v93, "Matrix3x3F");
    v11 = atomic_load(v2);
    if (!v11)
    {
      v11 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v118, v93.__r_.__value_.__l.__data_, v93.__r_.__value_.__l.__size_);
    }

    else
    {
      v118 = v93;
    }

    v119 = *(v11 + 44);
    std::string::basic_string[abi:ne200100]<0>(&v92, "Matrix4x4F");
    v12 = atomic_load(v2);
    if (!v12)
    {
      v12 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v120, v92.__r_.__value_.__l.__data_, v92.__r_.__value_.__l.__size_);
    }

    else
    {
      v120 = v92;
    }

    v121 = *(v12 + 45);
    std::string::basic_string[abi:ne200100]<0>(&v91, "uint8_t");
    v13 = atomic_load(v2);
    if (!v13)
    {
      v13 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v122, v91.__r_.__value_.__l.__data_, v91.__r_.__value_.__l.__size_);
    }

    else
    {
      v122 = v91;
    }

    v123 = *(v13 + 1);
    std::string::basic_string[abi:ne200100]<0>(&v90, "uint16_t");
    v14 = atomic_load(v2);
    if (!v14)
    {
      v14 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v124, v90.__r_.__value_.__l.__data_, v90.__r_.__value_.__l.__size_);
    }

    else
    {
      v124 = v90;
    }

    v125 = *(v14 + 3);
    std::string::basic_string[abi:ne200100]<0>(&v89, "uint32_t");
    v15 = atomic_load(v2);
    if (!v15)
    {
      v15 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v126, v89.__r_.__value_.__l.__data_, v89.__r_.__value_.__l.__size_);
    }

    else
    {
      v126 = v89;
    }

    v127 = *(v15 + 3);
    std::string::basic_string[abi:ne200100]<0>(&v88, "uint64_t");
    v16 = atomic_load(v2);
    if (!v16)
    {
      v16 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v128, v88.__r_.__value_.__l.__data_, v88.__r_.__value_.__l.__size_);
    }

    else
    {
      v128 = v88;
    }

    v129 = *(v16 + 5);
    std::string::basic_string[abi:ne200100]<0>(&v87, "size_t");
    v17 = atomic_load(v2);
    if (!v17)
    {
      v17 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v130, v87.__r_.__value_.__l.__data_, v87.__r_.__value_.__l.__size_);
    }

    else
    {
      v130 = v87;
    }

    v131 = *(v17 + 5);
    std::string::basic_string[abi:ne200100]<0>(&v86, "char");
    v18 = atomic_load(v2);
    if (!v18)
    {
      v18 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v132, v86.__r_.__value_.__l.__data_, v86.__r_.__value_.__l.__size_);
    }

    else
    {
      v132 = v86;
    }

    v133 = *(v18 + 2);
    std::string::basic_string[abi:ne200100]<0>(&v85, "int8_t");
    v19 = atomic_load(v2);
    if (!v19)
    {
      v19 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v134, v85.__r_.__value_.__l.__data_, v85.__r_.__value_.__l.__size_);
    }

    else
    {
      v134 = v85;
    }

    v135 = *(v19 + 2);
    std::string::basic_string[abi:ne200100]<0>(&v84, "int16_t");
    v20 = atomic_load(v2);
    if (!v20)
    {
      v20 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v136, v84.__r_.__value_.__l.__data_, v84.__r_.__value_.__l.__size_);
    }

    else
    {
      v136 = v84;
    }

    v137 = *(v20 + 2);
    std::string::basic_string[abi:ne200100]<0>(&v83, "int32_t");
    v21 = atomic_load(v2);
    if (!v21)
    {
      v21 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v138, v83.__r_.__value_.__l.__data_, v83.__r_.__value_.__l.__size_);
    }

    else
    {
      v138 = v83;
    }

    v139 = *(v21 + 2);
    std::string::basic_string[abi:ne200100]<0>(&v82, "int");
    v22 = atomic_load(v2);
    if (!v22)
    {
      v22 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v140, v82.__r_.__value_.__l.__data_, v82.__r_.__value_.__l.__size_);
    }

    else
    {
      v140 = v82;
    }

    v141 = *(v22 + 4);
    std::string::basic_string[abi:ne200100]<0>(&v81, "int64_t");
    v23 = atomic_load(v2);
    if (!v23)
    {
      v23 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v142, v81.__r_.__value_.__l.__data_, v81.__r_.__value_.__l.__size_);
    }

    else
    {
      v142 = v81;
    }

    v143 = *(v23 + 4);
    std::string::basic_string[abi:ne200100]<0>(&v80, "BOOL");
    v24 = atomic_load(v2);
    if (!v24)
    {
      v24 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v144, v80.__r_.__value_.__l.__data_, v80.__r_.__value_.__l.__size_);
    }

    else
    {
      v144 = v80;
    }

    v145 = *v24;
    std::string::basic_string[abi:ne200100]<0>(&v79, "double");
    v25 = atomic_load(v2);
    if (!v25)
    {
      v25 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v146, v79.__r_.__value_.__l.__data_, v79.__r_.__value_.__l.__size_);
    }

    else
    {
      v146 = v79;
    }

    v147 = *(v25 + 8);
    std::string::basic_string[abi:ne200100]<0>(&v78, "float");
    v26 = atomic_load(v2);
    if (!v26)
    {
      v26 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v148, v78.__r_.__value_.__l.__data_, v78.__r_.__value_.__l.__size_);
    }

    else
    {
      v148 = v78;
    }

    v149 = *(v26 + 7);
    std::string::basic_string[abi:ne200100]<0>(&v77, "Vector2F[]");
    v27 = atomic_load(v2);
    if (!v27)
    {
      v27 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v150, v77.__r_.__value_.__l.__data_, v77.__r_.__value_.__l.__size_);
    }

    else
    {
      v150 = v77;
    }

    v151 = *(v27 + 76);
    std::string::basic_string[abi:ne200100]<0>(&v76, "Vector3F[]");
    v28 = atomic_load(v2);
    if (!v28)
    {
      v28 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v152, v76.__r_.__value_.__l.__data_, v76.__r_.__value_.__l.__size_);
    }

    else
    {
      v152 = v76;
    }

    v153 = *(v28 + 77);
    std::string::basic_string[abi:ne200100]<0>(&v75, "Vector4F[]");
    v29 = atomic_load(v2);
    if (!v29)
    {
      v29 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v154, v75.__r_.__value_.__l.__data_, v75.__r_.__value_.__l.__size_);
    }

    else
    {
      v154 = v75;
    }

    v155 = *(v29 + 78);
    std::string::basic_string[abi:ne200100]<0>(&v74, "QuaternionF[]");
    v30 = atomic_load(v2);
    if (!v30)
    {
      v30 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v156, v74.__r_.__value_.__l.__data_, v74.__r_.__value_.__l.__size_);
    }

    else
    {
      v156 = v74;
    }

    v157 = *(v30 + 98);
    std::string::basic_string[abi:ne200100]<0>(&v73, "Matrix4x4F[]");
    v31 = atomic_load(v2);
    if (!v31)
    {
      v31 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v158, v73.__r_.__value_.__l.__data_, v73.__r_.__value_.__l.__size_);
    }

    else
    {
      v158 = v73;
    }

    v159 = *(v31 + 102);
    std::string::basic_string[abi:ne200100]<0>(&v72, "uint8_t[]");
    v32 = atomic_load(v2);
    if (!v32)
    {
      v32 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v160, v72.__r_.__value_.__l.__data_, v72.__r_.__value_.__l.__size_);
    }

    else
    {
      v160 = v72;
    }

    v161 = *(v32 + 57);
    std::string::basic_string[abi:ne200100]<0>(&v71, "uint16_t[]");
    v33 = atomic_load(v2);
    if (!v33)
    {
      v33 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v162, v71.__r_.__value_.__l.__data_, v71.__r_.__value_.__l.__size_);
    }

    else
    {
      v162 = v71;
    }

    v163 = *(v33 + 60);
    std::string::basic_string[abi:ne200100]<0>(&v70, "uint32_t[]");
    v34 = atomic_load(v2);
    if (!v34)
    {
      v34 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v164, v70.__r_.__value_.__l.__data_, v70.__r_.__value_.__l.__size_);
    }

    else
    {
      v164 = v70;
    }

    v165 = *(v34 + 60);
    std::string::basic_string[abi:ne200100]<0>(&v69, "uint64_t[]");
    v35 = atomic_load(v2);
    if (!v35)
    {
      v35 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v166, v69.__r_.__value_.__l.__data_, v69.__r_.__value_.__l.__size_);
    }

    else
    {
      v166 = v69;
    }

    v167 = *(v35 + 62);
    std::string::basic_string[abi:ne200100]<0>(&v68, "size_t[]");
    v36 = atomic_load(v2);
    if (!v36)
    {
      v36 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v168, v68.__r_.__value_.__l.__data_, v68.__r_.__value_.__l.__size_);
    }

    else
    {
      v168 = v68;
    }

    v169 = *(v36 + 62);
    std::string::basic_string[abi:ne200100]<0>(&v67, "char[]");
    v37 = atomic_load(v2);
    if (!v37)
    {
      v37 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v170, v67.__r_.__value_.__l.__data_, v67.__r_.__value_.__l.__size_);
    }

    else
    {
      v170 = v67;
    }

    v171 = *(v37 + 58);
    std::string::basic_string[abi:ne200100]<0>(&v66, "int[]");
    v38 = atomic_load(v2);
    if (!v38)
    {
      v38 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v172, v66.__r_.__value_.__l.__data_, v66.__r_.__value_.__l.__size_);
    }

    else
    {
      v172 = v66;
    }

    v173 = *(v38 + 58);
    std::string::basic_string[abi:ne200100]<0>(&v65, "int32_t[]");
    v39 = atomic_load(v2);
    if (!v39)
    {
      v39 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v174, v65.__r_.__value_.__l.__data_, v65.__r_.__value_.__l.__size_);
    }

    else
    {
      v174 = v65;
    }

    v175 = *(v39 + 58);
    std::string::basic_string[abi:ne200100]<0>(&v64, "int64_t[]");
    v40 = atomic_load(v2);
    if (!v40)
    {
      v40 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v176, v64.__r_.__value_.__l.__data_, v64.__r_.__value_.__l.__size_);
    }

    else
    {
      v176 = v64;
    }

    v177 = *(v40 + 61);
    std::string::basic_string[abi:ne200100]<0>(&v63, "BOOL[]");
    v41 = atomic_load(v2);
    if (!v41)
    {
      v41 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v178, v63.__r_.__value_.__l.__data_, v63.__r_.__value_.__l.__size_);
    }

    else
    {
      v178 = v63;
    }

    v179 = *(v41 + 56);
    std::string::basic_string[abi:ne200100]<0>(&v62, "double[]");
    v42 = atomic_load(v2);
    if (!v42)
    {
      v42 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v180, v62.__r_.__value_.__l.__data_, v62.__r_.__value_.__l.__size_);
    }

    else
    {
      v180 = v62;
    }

    v181 = *(v42 + 65);
    std::string::basic_string[abi:ne200100]<0>(&v61, "float[]");
    v43 = atomic_load(v2);
    if (!v43)
    {
      v43 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v182, v61.__r_.__value_.__l.__data_, v61.__r_.__value_.__l.__size_);
    }

    else
    {
      v182 = v61;
    }

    v183 = *(v43 + 64);
    std::string::basic_string[abi:ne200100]<0>(&v60, "AssetLoadDescriptor[]");
    v44 = atomic_load(v2);
    if (!v44)
    {
      v44 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v184, v60.__r_.__value_.__l.__data_, v60.__r_.__value_.__l.__size_);
    }

    else
    {
      v184 = v60;
    }

    v185 = *(v44 + 69);
    std::string::basic_string[abi:ne200100]<0>(&v59, "char*");
    v45 = atomic_load(v2);
    if (!v45)
    {
      v45 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v186, v59.__r_.__value_.__l.__data_, v59.__r_.__value_.__l.__size_);
    }

    else
    {
      v186 = v59;
    }

    v187 = *(v45 + 10);
    std::string::basic_string[abi:ne200100]<0>(&v58, "DynamicString");
    v46 = atomic_load(v2);
    if (!v46)
    {
      v46 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v188, v58.__r_.__value_.__l.__data_, v58.__r_.__value_.__l.__size_);
    }

    else
    {
      v188 = v58;
    }

    v189 = *(v46 + 10);
    std::string::basic_string[abi:ne200100]<0>(&v57, "StringID");
    v47 = atomic_load(v2);
    if (!v47)
    {
      v47 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v190, v57.__r_.__value_.__l.__data_, v57.__r_.__value_.__l.__size_);
    }

    else
    {
      v190 = v57;
    }

    v191 = *(v47 + 10);
    std::string::basic_string[abi:ne200100]<0>(&v56, "DynamicString[]");
    v48 = atomic_load(v2);
    if (!v48)
    {
      v48 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v192, v56.__r_.__value_.__l.__data_, v56.__r_.__value_.__l.__size_);
    }

    else
    {
      v192 = v56;
    }

    v193 = *(v48 + 67);
    std::string::basic_string[abi:ne200100]<0>(&v55, "StringID[]");
    v49 = atomic_load(v2);
    if (!v49)
    {
      v49 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v194, v55.__r_.__value_.__l.__data_, v55.__r_.__value_.__l.__size_);
    }

    else
    {
      v194 = v55;
    }

    v195 = *(v49 + 67);
    std::string::basic_string[abi:ne200100]<0>(&v54, "AssetHandle");
    v50 = atomic_load(v2);
    if (!v50)
    {
      v50 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v196, v54.__r_.__value_.__l.__data_, v54.__r_.__value_.__l.__size_);
    }

    else
    {
      v196 = v54;
    }

    v197 = *(v50 + 12);
    std::string::basic_string[abi:ne200100]<0>(&__p, "AssetHandle[]");
    v51 = atomic_load(v2);
    if (!v51)
    {
      v51 = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v198, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v198 = __p;
    }

    v199 = *(v51 + 69);
    std::map<std::string,pxrInternal__aapl__pxrReserved__::SdfValueTypeName>::map[abi:ne200100](&v102, 49);
    v52 = 196;
    do
    {
      if (SHIBYTE(__s.__r_.__value_.__r.__words[v52 + 1]) < 0)
      {
        operator delete(v100.__r_.__value_.__r.__words[v52 + 2]);
      }

      v52 -= 4;
    }

    while (v52 * 8);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v54.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v55.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v63.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v64.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v65.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v66.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v67.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v68.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v69.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v70.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v71.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v72.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v73.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v75.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v76.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v77.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v78.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v79.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v80.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v81.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v82.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v83.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v84.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v85.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v86.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v87.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v88.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v89.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v90.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v91.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v92.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v93.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v94.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v95.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v96.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v97.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v98.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v99.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v100.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }
  }

  v1 = *MEMORY[0x277D85DE8];
}

void sub_2476DA244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  if (a57 < 0)
  {
    operator delete(a52);
  }

  if (a63 < 0)
  {
    operator delete(a58);
  }

  if (a69 < 0)
  {
    operator delete(a64);
  }

  if (a72 < 0)
  {
    operator delete(a70);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  if (a76 < 0)
  {
    operator delete(a75);
  }

  if (a78 < 0)
  {
    operator delete(a77);
  }

  if (a80 < 0)
  {
    operator delete(a79);
  }

  if (a82 < 0)
  {
    operator delete(a81);
  }

  if (a84 < 0)
  {
    operator delete(a83);
  }

  if (a86 < 0)
  {
    operator delete(a85);
  }

  if (a88 < 0)
  {
    operator delete(a87);
  }

  if (a90 < 0)
  {
    operator delete(a89);
  }

  if (a92 < 0)
  {
    operator delete(a91);
  }

  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  if (SLOBYTE(STACK[0x22F]) < 0)
  {
    operator delete(STACK[0x218]);
  }

  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
  }

  if (SLOBYTE(STACK[0x25F]) < 0)
  {
    operator delete(STACK[0x248]);
  }

  if (SLOBYTE(STACK[0x277]) < 0)
  {
    operator delete(STACK[0x260]);
  }

  if (SLOBYTE(STACK[0x28F]) < 0)
  {
    operator delete(STACK[0x278]);
  }

  if (SLOBYTE(STACK[0x2A7]) < 0)
  {
    operator delete(STACK[0x290]);
  }

  if (SLOBYTE(STACK[0x2BF]) < 0)
  {
    operator delete(STACK[0x2A8]);
  }

  if (SLOBYTE(STACK[0x2D7]) < 0)
  {
    operator delete(STACK[0x2C0]);
  }

  if (SLOBYTE(STACK[0x2EF]) < 0)
  {
    operator delete(STACK[0x2D8]);
  }

  if (SLOBYTE(STACK[0x307]) < 0)
  {
    operator delete(STACK[0x2F0]);
  }

  if (SLOBYTE(STACK[0x31F]) < 0)
  {
    operator delete(STACK[0x308]);
  }

  if (SLOBYTE(STACK[0x337]) < 0)
  {
    operator delete(STACK[0x320]);
  }

  if (SLOBYTE(STACK[0x34F]) < 0)
  {
    operator delete(STACK[0x338]);
  }

  if (SLOBYTE(STACK[0x367]) < 0)
  {
    operator delete(STACK[0x350]);
  }

  if (SLOBYTE(STACK[0x37F]) < 0)
  {
    operator delete(STACK[0x368]);
  }

  if (SLOBYTE(STACK[0x397]) < 0)
  {
    operator delete(STACK[0x380]);
  }

  if (SLOBYTE(STACK[0x3AF]) < 0)
  {
    operator delete(STACK[0x398]);
  }

  if (SLOBYTE(STACK[0x3C7]) < 0)
  {
    operator delete(STACK[0x3B0]);
  }

  if (SLOBYTE(STACK[0x3DF]) < 0)
  {
    operator delete(STACK[0x3C8]);
  }

  if (SLOBYTE(STACK[0x3F7]) < 0)
  {
    operator delete(STACK[0x3E0]);
  }

  if (SLOBYTE(STACK[0x40F]) < 0)
  {
    operator delete(STACK[0x3F8]);
  }

  if (SLOBYTE(STACK[0x427]) < 0)
  {
    operator delete(STACK[0x410]);
  }

  if (SLOBYTE(STACK[0x43F]) < 0)
  {
    operator delete(STACK[0x428]);
  }

  if (SLOBYTE(STACK[0x457]) < 0)
  {
    operator delete(STACK[0x440]);
  }

  if (SLOBYTE(STACK[0x46F]) < 0)
  {
    operator delete(STACK[0x458]);
  }

  if (SLOBYTE(STACK[0x487]) < 0)
  {
    operator delete(STACK[0x470]);
  }

  if (SLOBYTE(STACK[0x49F]) < 0)
  {
    operator delete(STACK[0x488]);
  }

  while (v92 != &STACK[0x4A0])
  {
    v94 = *(v92 - 9);
    v92 -= 4;
    if (v94 < 0)
    {
      operator delete(*v92);
    }
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<unsigned char *,anonymous namespace::buildInfoForComponent(anonymous namespace::MemberInfo &,std::string const&,unsigned int,std::string const&,RETypeMemberInfo,std::shared_ptr<unsigned char>)::$_0,std::allocator<unsigned char>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__shared_ptr_pointer<unsigned char *,anonymous namespace::buildInfoForComponent(anonymous namespace::MemberInfo &,std::string const&,unsigned int,std::string const&,RETypeMemberInfo,std::shared_ptr<unsigned char>)::$_0,std::allocator<unsigned char>>::__on_zero_shared(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  result = RETypeInfoDestroyInstance();
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2476DA984(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__shared_ptr_pointer<unsigned char *,anonymous namespace::buildInfoForComponent(anonymous namespace::MemberInfo &,std::string const&,unsigned int,std::string const&,RETypeMemberInfo,std::shared_ptr<unsigned char>)::$_0,std::allocator<unsigned char>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

BOOL std::map<std::string,pxrInternal__aapl__pxrReserved__::SdfValueTypeName>::map[abi:ne200100](_BOOL8 result, uint64_t a2)
{
  qword_27EE53678 = 0;
  qword_27EE53670 = 0;
  if (a2)
  {
    v2 = result;
    v3 = 0;
    v4 = (result + 32 * a2);
    v5 = &qword_27EE53670;
    while (v5 != &qword_27EE53670)
    {
      if (v3)
      {
        do
        {
          v6 = v3;
          v3 = *(v3 + 8);
        }

        while (v3);
      }

      else
      {
        v7 = &qword_27EE53670;
        do
        {
          v6 = v7[2];
          v8 = *v6 == v7;
          v7 = v6;
        }

        while (v8);
      }

      v3 = qword_27EE53670;
      if (result)
      {
        goto LABEL_11;
      }

      if (!qword_27EE53670)
      {
LABEL_22:
        operator new();
      }

      v9 = &qword_27EE53670;
      while (1)
      {
        while (1)
        {
          v10 = v3;
          {
            break;
          }

          v3 = *v10;
          v9 = v10;
          if (!*v10)
          {
            goto LABEL_22;
          }
        }

        if (!result)
        {
          break;
        }

        v9 = (v10 + 8);
        v3 = *(v10 + 8);
        if (!v3)
        {
          goto LABEL_22;
        }
      }

LABEL_13:
      if (!*v9)
      {
        goto LABEL_22;
      }

      v2 += 4;
      if (v2 == v4)
      {
        return result;
      }

      v3 = qword_27EE53670;
    }

    v6 = &qword_27EE53670;
LABEL_11:
    if (!v3)
    {
      goto LABEL_22;
    }

    v9 = v6 + 1;
    goto LABEL_13;
  }

  return result;
}

void sub_2476DABA8(_Unwind_Exception *a1)
{
  operator delete(v1);
  std::__tree<std::__value_type<std::string,realityio::TextureBuilder::TextureDataT const*>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::TextureBuilder::TextureDataT const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::TextureBuilder::TextureDataT const*>>>::destroy(qword_27EE53670);
  _Unwind_Resume(a1);
}

void anonymous namespace::getFuncTable(_anonymous_namespace_ *this, uint64_t a2)
{
  MEMORY[0x28223BE20](this, a2);
  v293[4] = *MEMORY[0x277D85DE8];
  {
    MEMORY[0x24C1A5DE0](&v156, "uchar");
    MEMORY[0x24C1A5DE0](&v154, "uint8_t");
    v259 = v154;
    v154 = 0;
    v260[0] = &unk_28595D098;
    v260[3] = v260;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>::map[abi:ne200100](v155, &v259, 1);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>::pair[abi:ne200100]<true,0>(v261, v156, v155);
    MEMORY[0x24C1A5DE0](&v153, "uint");
    MEMORY[0x24C1A5DE0](&v151, "uint16_t");
    v255 = v151;
    v151 = 0;
    v256[0] = &unk_28595D098;
    v256[3] = v256;
    MEMORY[0x24C1A5DE0](&v150, "uint32_t");
    v257 = v150;
    v150 = 0;
    v258[0] = &unk_28595D098;
    v258[3] = v258;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>::map[abi:ne200100](v152, &v255, 2);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>::pair[abi:ne200100]<true,0>(v262, v153, v152);
    MEMORY[0x24C1A5DE0](&v149, "uint64");
    MEMORY[0x24C1A5DE0](&v147, "uint64_t");
    v251 = v147;
    v147 = 0;
    v252[0] = &unk_28595D098;
    v252[3] = v252;
    MEMORY[0x24C1A5DE0](&v146, "size_t");
    v253 = v146;
    v146 = 0;
    v254[0] = &unk_28595D098;
    v254[3] = v254;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>::map[abi:ne200100](v148, &v251, 2);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>::pair[abi:ne200100]<true,0>(v263, v149, v148);
    MEMORY[0x24C1A5DE0](&v145, "int");
    MEMORY[0x24C1A5DE0](&v143, "char");
    v245 = v143;
    v143 = 0;
    v246[0] = &unk_28595D098;
    v246[3] = v246;
    MEMORY[0x24C1A5DE0](&v142, "int8_t");
    v246[4] = v142;
    v142 = 0;
    v247[0] = &unk_28595D098;
    v247[3] = v247;
    MEMORY[0x24C1A5DE0](&v141, "int16_t");
    v247[4] = v141;
    v141 = 0;
    v248[0] = &unk_28595D098;
    v248[3] = v248;
    MEMORY[0x24C1A5DE0](&v140, "int32_t");
    v249 = v140;
    v140 = 0;
    v250[0] = &unk_28595D098;
    v250[3] = v250;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>::map[abi:ne200100](v144, &v245, 4);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>::pair[abi:ne200100]<true,0>(v264, v145, v144);
    MEMORY[0x24C1A5DE0](&v139, "int64");
    MEMORY[0x24C1A5DE0](&v137, "int");
    v241 = v137;
    v137 = 0;
    v242[0] = &unk_28595D098;
    v242[3] = v242;
    MEMORY[0x24C1A5DE0](&v136, "int64_t");
    v243 = v136;
    v136 = 0;
    v244[0] = &unk_28595D098;
    v244[3] = v244;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>::map[abi:ne200100](v138, &v241, 2);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>::pair[abi:ne200100]<true,0>(v265, v139, v138);
    MEMORY[0x24C1A5DE0](&v135, "float");
    MEMORY[0x24C1A5DE0](&v133, "float");
    v239 = v133;
    v133 = 0;
    v240[0] = &unk_28595D098;
    v240[3] = v240;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>::map[abi:ne200100](v134, &v239, 1);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>::pair[abi:ne200100]<true,0>(v266, v135, v134);
    MEMORY[0x24C1A5DE0](&v132, "float2");
    MEMORY[0x24C1A5DE0](&v130, "float[]");
    v235 = v130;
    v130 = 0;
    v236[0] = &unk_28595D098;
    v236[3] = v236;
    MEMORY[0x24C1A5DE0](&v129, "Vector2F");
    v237 = v129;
    v129 = 0;
    v238[0] = &unk_28595D098;
    v238[3] = v238;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>::map[abi:ne200100](v131, &v235, 2);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>::pair[abi:ne200100]<true,0>(v267, v132, v131);
    MEMORY[0x24C1A5DE0](&v128, "float3");
    MEMORY[0x24C1A5DE0](&v126, "float[]");
    v231 = v126;
    v126 = 0;
    v232[0] = &unk_28595D098;
    v232[3] = v232;
    MEMORY[0x24C1A5DE0](&v125, "Vector3F");
    v233 = v125;
    v125 = 0;
    v234[0] = &unk_28595D098;
    v234[3] = v234;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>::map[abi:ne200100](v127, &v231, 2);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>::pair[abi:ne200100]<true,0>(v268, v128, v127);
    MEMORY[0x24C1A5DE0](&v124, "float4");
    MEMORY[0x24C1A5DE0](&v122, "float[]");
    v227 = v122;
    v122 = 0;
    v228[0] = &unk_28595D098;
    v228[3] = v228;
    MEMORY[0x24C1A5DE0](&v121, "Vector4F");
    v229 = v121;
    v121 = 0;
    v230[0] = &unk_28595D098;
    v230[3] = v230;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>::map[abi:ne200100](v123, &v227, 2);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>::pair[abi:ne200100]<true,0>(v269, v124, v123);
    MEMORY[0x24C1A5DE0](&v120, "quatf");
    MEMORY[0x24C1A5DE0](&v118, "QuaternionF");
    v225 = v118;
    v118 = 0;
    v226[0] = &unk_28595D098;
    v226[3] = v226;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>::map[abi:ne200100](v119, &v225, 1);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>::pair[abi:ne200100]<true,0>(v270, v120, v119);
    MEMORY[0x24C1A5DE0](&v117, "double");
    MEMORY[0x24C1A5DE0](&v115, "double");
    v223 = v115;
    v115 = 0;
    v224[0] = &unk_28595D098;
    v224[3] = v224;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>::map[abi:ne200100](v116, &v223, 1);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>::pair[abi:ne200100]<true,0>(v271, v117, v116);
    MEMORY[0x24C1A5DE0](&v114, "BOOL");
    MEMORY[0x24C1A5DE0](&v112, "BOOL");
    v221 = v112;
    v112 = 0;
    v222[0] = &unk_28595D098;
    v222[3] = v222;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>::map[abi:ne200100](v113, &v221, 1);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>::pair[abi:ne200100]<true,0>(v272, v114, v113);
    MEMORY[0x24C1A5DE0](&v111, "matrix2d");
    MEMORY[0x24C1A5DE0](&v109, "Matrix2x2F");
    v219 = v109;
    v109 = 0;
    v220[0] = &unk_28595D098;
    v220[1] = _ZN12_GLOBAL__N_114usdToRe_matrixIN32pxrInternal__aapl__pxrReserved__10GfMatrix2dENS1_7GfVec2dE13simd_float2x2Dv2_fLm2EfEEvRKNS1_12UsdAttributeENSt3__110shared_ptrIhEEPN9realityio6InputsE10RETypeInfo;
    v220[3] = v220;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>::map[abi:ne200100](v110, &v219, 1);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>::pair[abi:ne200100]<true,0>(v273, v111, v110);
    MEMORY[0x24C1A5DE0](&v108, "matrix3d");
    MEMORY[0x24C1A5DE0](&v106, "Matrix3x3F");
    v217 = v106;
    v106 = 0;
    v218[0] = &unk_28595D098;
    v218[1] = _ZN12_GLOBAL__N_114usdToRe_matrixIN32pxrInternal__aapl__pxrReserved__10GfMatrix3dENS1_7GfVec3dE13simd_float3x3Dv3_fLm3EfEEvRKNS1_12UsdAttributeENSt3__110shared_ptrIhEEPN9realityio6InputsE10RETypeInfo;
    v218[3] = v218;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>::map[abi:ne200100](v107, &v217, 1);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>::pair[abi:ne200100]<true,0>(v274, v108, v107);
    MEMORY[0x24C1A5DE0](&v105, "matrix4d");
    MEMORY[0x24C1A5DE0](&v103, "Matrix4x4F");
    v215 = v103;
    v103 = 0;
    v216[0] = &unk_28595D098;
    v216[1] = _ZN12_GLOBAL__N_114usdToRe_matrixIN32pxrInternal__aapl__pxrReserved__10GfMatrix4dENS1_7GfVec4dE13simd_float4x4Dv4_fLm4EfEEvRKNS1_12UsdAttributeENSt3__110shared_ptrIhEEPN9realityio6InputsE10RETypeInfo;
    v216[3] = v216;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>::map[abi:ne200100](v104, &v215, 1);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>::pair[abi:ne200100]<true,0>(v275, v105, v104);
    MEMORY[0x24C1A5DE0](&v102, "token");
    MEMORY[0x24C1A5DE0](&v100, "char*");
    v210 = v100;
    v100 = 0;
    v211[0] = &unk_28595D098;
    v211[3] = v211;
    MEMORY[0x24C1A5DE0](&v99, "DynamicString");
    v211[4] = v99;
    v99 = 0;
    v212[0] = &unk_28595D098;
    v212[3] = v212;
    MEMORY[0x24C1A5DE0](&v98, "StringID");
    v213 = v98;
    v98 = 0;
    v214[0] = &unk_28595D098;
    v214[3] = v214;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>::map[abi:ne200100](v101, &v210, 3);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>::pair[abi:ne200100]<true,0>(v276, v102, v101);
    MEMORY[0x24C1A5DE0](&v97, "string");
    MEMORY[0x24C1A5DE0](&v95, "char*");
    v205 = v95;
    v95 = 0;
    v206[0] = &unk_28595D098;
    v206[3] = v206;
    MEMORY[0x24C1A5DE0](&v94, "DynamicString");
    v206[4] = v94;
    v94 = 0;
    v207[0] = &unk_28595D098;
    v207[3] = v207;
    MEMORY[0x24C1A5DE0](&v93, "StringID");
    v208 = v93;
    v93 = 0;
    v209[0] = &unk_28595D098;
    v209[3] = v209;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>::map[abi:ne200100](v96, &v205, 3);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>::pair[abi:ne200100]<true,0>(v277, v97, v96);
    MEMORY[0x24C1A5DE0](&v92, "asset");
    MEMORY[0x24C1A5DE0](&v90, "AssetHandle");
    v203 = v90;
    v90 = 0;
    v204[0] = &unk_28595D098;
    v204[3] = v204;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>::map[abi:ne200100](v91, &v203, 1);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>::pair[abi:ne200100]<true,0>(v278, v92, v91);
    MEMORY[0x24C1A5DE0](&v89, "uchar[]");
    MEMORY[0x24C1A5DE0](&v87, "uint8_t[]");
    v201 = v87;
    v87 = 0;
    v202[0] = &unk_28595D098;
    v202[3] = v202;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>::map[abi:ne200100](v88, &v201, 1);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>::pair[abi:ne200100]<true,0>(v279, v89, v88);
    MEMORY[0x24C1A5DE0](&v86, "uint[]");
    MEMORY[0x24C1A5DE0](&v84, "uint16_t[]");
    v197 = v84;
    v84 = 0;
    v198[0] = &unk_28595D098;
    v198[3] = v198;
    MEMORY[0x24C1A5DE0](&v83, "uint32_t[]");
    v199 = v83;
    v83 = 0;
    v200[0] = &unk_28595D098;
    v200[3] = v200;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>::map[abi:ne200100](v85, &v197, 2);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>::pair[abi:ne200100]<true,0>(v280, v86, v85);
    MEMORY[0x24C1A5DE0](&v82, "uint64[]");
    MEMORY[0x24C1A5DE0](&v80, "uint64_t[]");
    v193 = v80;
    v80 = 0;
    v194[0] = &unk_28595D098;
    v194[3] = v194;
    MEMORY[0x24C1A5DE0](&v79, "size_t[]");
    v195 = v79;
    v79 = 0;
    v196[0] = &unk_28595D098;
    v196[3] = v196;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>::map[abi:ne200100](v81, &v193, 2);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>::pair[abi:ne200100]<true,0>(v281, v82, v81);
    MEMORY[0x24C1A5DE0](&v78, "int[]");
    MEMORY[0x24C1A5DE0](&v76, "char[]");
    v187 = v76;
    v76 = 0;
    v188[0] = &unk_28595D098;
    v188[3] = v188;
    MEMORY[0x24C1A5DE0](&v75, "int8_t[]");
    v188[4] = v75;
    v75 = 0;
    v189[0] = &unk_28595D098;
    v189[3] = v189;
    MEMORY[0x24C1A5DE0](&v74, "int16_t[]");
    v189[4] = v74;
    v74 = 0;
    v190[0] = &unk_28595D098;
    v190[3] = v190;
    MEMORY[0x24C1A5DE0](&v73, "int32_t[]");
    v191 = v73;
    v73 = 0;
    v192[0] = &unk_28595D098;
    v192[3] = v192;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>::map[abi:ne200100](v77, &v187, 4);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>::pair[abi:ne200100]<true,0>(v282, v78, v77);
    MEMORY[0x24C1A5DE0](&v72, "int64[]");
    MEMORY[0x24C1A5DE0](&v70, "int[]");
    v183 = v70;
    v70 = 0;
    v184[0] = &unk_28595D098;
    v184[3] = v184;
    MEMORY[0x24C1A5DE0](&v69, "int64_t[]");
    v185 = v69;
    v69 = 0;
    v186[0] = &unk_28595D098;
    v186[3] = v186;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>::map[abi:ne200100](v71, &v183, 2);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>::pair[abi:ne200100]<true,0>(v283, v72, v71);
    MEMORY[0x24C1A5DE0](&v68, "float[]");
    MEMORY[0x24C1A5DE0](&v66, "float[]");
    v181 = v66;
    v66 = 0;
    v182[0] = &unk_28595D098;
    v182[3] = v182;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>::map[abi:ne200100](v67, &v181, 1);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>::pair[abi:ne200100]<true,0>(v284, v68, v67);
    MEMORY[0x24C1A5DE0](&v65, "float2[]");
    MEMORY[0x24C1A5DE0](&v63, "Vector2F[]");
    v179 = v63;
    v63 = 0;
    v180[0] = &unk_28595D098;
    v180[3] = v180;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>::map[abi:ne200100](v64, &v179, 1);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>::pair[abi:ne200100]<true,0>(v285, v65, v64);
    MEMORY[0x24C1A5DE0](&v62, "float3[]");
    MEMORY[0x24C1A5DE0](&v60, "Vector3F[]");
    v177 = v60;
    v60 = 0;
    v178[0] = &unk_28595D098;
    v178[3] = v178;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>::map[abi:ne200100](v61, &v177, 1);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>::pair[abi:ne200100]<true,0>(v286, v62, v61);
    MEMORY[0x24C1A5DE0](&v59, "float4[]");
    MEMORY[0x24C1A5DE0](&v57, "Vector4F[]");
    v175 = v57;
    v57 = 0;
    v176[0] = &unk_28595D098;
    v176[3] = v176;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>::map[abi:ne200100](v58, &v175, 1);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>::pair[abi:ne200100]<true,0>(v287, v59, v58);
    MEMORY[0x24C1A5DE0](&v56, "quatf[]");
    MEMORY[0x24C1A5DE0](&v54, "QuaternionF[]");
    v173 = v54;
    v54 = 0;
    v174[0] = &unk_28595D098;
    v174[3] = v174;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>::map[abi:ne200100](v55, &v173, 1);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>::pair[abi:ne200100]<true,0>(v288, v56, v55);
    MEMORY[0x24C1A5DE0](&v53, "double[]");
    MEMORY[0x24C1A5DE0](&v51, "double[]");
    v171 = v51;
    v51 = 0;
    v172[0] = &unk_28595D098;
    v172[3] = v172;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>::map[abi:ne200100](v52, &v171, 1);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>::pair[abi:ne200100]<true,0>(v289, v53, v52);
    MEMORY[0x24C1A5DE0](&v50, "BOOL[]");
    MEMORY[0x24C1A5DE0](&v48, "BOOL[]");
    v169 = v48;
    v48 = 0;
    v170[0] = &unk_28595D098;
    v170[3] = v170;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>::map[abi:ne200100](v49, &v169, 1);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>::pair[abi:ne200100]<true,0>(v290, v50, v49);
    MEMORY[0x24C1A5DE0](&v47, "token[]");
    MEMORY[0x24C1A5DE0](&v45, "char*[]");
    v164 = v45;
    v45 = 0;
    v165[0] = &unk_28595D098;
    v165[3] = v165;
    MEMORY[0x24C1A5DE0](&v44, "DynamicString[]");
    v165[4] = v44;
    v44 = 0;
    v166[0] = &unk_28595D098;
    v166[3] = v166;
    MEMORY[0x24C1A5DE0](&v43, "StringID[]");
    v167 = v43;
    v43 = 0;
    v168[0] = &unk_28595D098;
    v168[3] = v168;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>::map[abi:ne200100](v46, &v164, 3);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>::pair[abi:ne200100]<true,0>(v291, v47, v46);
    MEMORY[0x24C1A5DE0](&v42, "string[]");
    MEMORY[0x24C1A5DE0](&v40, "char*[]");
    v159 = v40;
    v40 = 0;
    v160[0] = &unk_28595D098;
    v160[3] = v160;
    MEMORY[0x24C1A5DE0](&v39, "DynamicString[]");
    v160[4] = v39;
    v39 = 0;
    v161[0] = &unk_28595D098;
    v161[3] = v161;
    MEMORY[0x24C1A5DE0](&v38, "StringID[]");
    v162 = v38;
    v38 = 0;
    v163[0] = &unk_28595D098;
    v163[3] = v163;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>::map[abi:ne200100](v41, &v159, 3);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>::pair[abi:ne200100]<true,0>(v292, v42, v41);
    MEMORY[0x24C1A5DE0](&v37, "asset[]");
    MEMORY[0x24C1A5DE0](&v35, "AssetHandle[]");
    v157 = v35;
    v35 = 0;
    v158[0] = &unk_28595D098;
    v158[3] = v158;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>::map[abi:ne200100](v36, &v157, 1);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>::pair[abi:ne200100]<true,0>(v293, v37, v36);
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>::map[abi:ne200100](v261, 33);
    v3 = 132;
    do
    {
      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(v260[v3 + 2]);
      v4 = v260[v3];
      if ((v4 & 7) != 0)
      {
        atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v3 -= 4;
    }

    while (v3 * 8);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(v36[1]);
    std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](v158);
    if ((v157 & 7) != 0)
    {
      atomic_fetch_add_explicit((v157 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v35 & 7) != 0)
    {
      atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v37 & 7) != 0)
    {
      atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(v41[1]);
    for (i = 0; i != -15; i -= 5)
    {
      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](&v163[i]);
      v6 = v163[i - 1];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if ((v38 & 7) != 0)
    {
      atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v39 & 7) != 0)
    {
      atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v40 & 7) != 0)
    {
      atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v42 & 7) != 0)
    {
      atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(v46[1]);
    for (j = 0; j != -15; j -= 5)
    {
      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](&v168[j]);
      v8 = v168[j - 1];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if ((v43 & 7) != 0)
    {
      atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v44 & 7) != 0)
    {
      atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v45 & 7) != 0)
    {
      atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v47 & 7) != 0)
    {
      atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(v49[1]);
    std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](v170);
    if ((v169 & 7) != 0)
    {
      atomic_fetch_add_explicit((v169 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v48 & 7) != 0)
    {
      atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v50 & 7) != 0)
    {
      atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(v52[1]);
    std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](v172);
    if ((v171 & 7) != 0)
    {
      atomic_fetch_add_explicit((v171 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v51 & 7) != 0)
    {
      atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v53 & 7) != 0)
    {
      atomic_fetch_add_explicit((v53 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(v55[1]);
    std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](v174);
    if ((v173 & 7) != 0)
    {
      atomic_fetch_add_explicit((v173 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v54 & 7) != 0)
    {
      atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v56 & 7) != 0)
    {
      atomic_fetch_add_explicit((v56 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(v58[1]);
    std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](v176);
    if ((v175 & 7) != 0)
    {
      atomic_fetch_add_explicit((v175 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v57 & 7) != 0)
    {
      atomic_fetch_add_explicit((v57 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v59 & 7) != 0)
    {
      atomic_fetch_add_explicit((v59 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(v61[1]);
    std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](v178);
    if ((v177 & 7) != 0)
    {
      atomic_fetch_add_explicit((v177 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v60 & 7) != 0)
    {
      atomic_fetch_add_explicit((v60 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v62 & 7) != 0)
    {
      atomic_fetch_add_explicit((v62 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(v64[1]);
    std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](v180);
    if ((v179 & 7) != 0)
    {
      atomic_fetch_add_explicit((v179 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v63 & 7) != 0)
    {
      atomic_fetch_add_explicit((v63 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v65 & 7) != 0)
    {
      atomic_fetch_add_explicit((v65 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(v67[1]);
    std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](v182);
    if ((v181 & 7) != 0)
    {
      atomic_fetch_add_explicit((v181 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v66 & 7) != 0)
    {
      atomic_fetch_add_explicit((v66 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v68 & 7) != 0)
    {
      atomic_fetch_add_explicit((v68 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(v71[1]);
    for (k = 0; k != -10; k -= 5)
    {
      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](&v186[k]);
      v10 = v186[k - 1];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if ((v69 & 7) != 0)
    {
      atomic_fetch_add_explicit((v69 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v70 & 7) != 0)
    {
      atomic_fetch_add_explicit((v70 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v72 & 7) != 0)
    {
      atomic_fetch_add_explicit((v72 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(v77[1]);
    for (m = 0; m != -20; m -= 5)
    {
      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](&v192[m]);
      v12 = v192[m - 1];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if ((v73 & 7) != 0)
    {
      atomic_fetch_add_explicit((v73 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v74 & 7) != 0)
    {
      atomic_fetch_add_explicit((v74 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v75 & 7) != 0)
    {
      atomic_fetch_add_explicit((v75 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v76 & 7) != 0)
    {
      atomic_fetch_add_explicit((v76 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v78 & 7) != 0)
    {
      atomic_fetch_add_explicit((v78 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(v81[1]);
    for (n = 0; n != -10; n -= 5)
    {
      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](&v196[n]);
      v14 = v196[n - 1];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if ((v79 & 7) != 0)
    {
      atomic_fetch_add_explicit((v79 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v80 & 7) != 0)
    {
      atomic_fetch_add_explicit((v80 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v82 & 7) != 0)
    {
      atomic_fetch_add_explicit((v82 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(v85[1]);
    for (ii = 0; ii != -10; ii -= 5)
    {
      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](&v200[ii]);
      v16 = v200[ii - 1];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if ((v83 & 7) != 0)
    {
      atomic_fetch_add_explicit((v83 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v84 & 7) != 0)
    {
      atomic_fetch_add_explicit((v84 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v86 & 7) != 0)
    {
      atomic_fetch_add_explicit((v86 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(v88[1]);
    std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](v202);
    if ((v201 & 7) != 0)
    {
      atomic_fetch_add_explicit((v201 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v87 & 7) != 0)
    {
      atomic_fetch_add_explicit((v87 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v89 & 7) != 0)
    {
      atomic_fetch_add_explicit((v89 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(v91[1]);
    std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](v204);
    if ((v203 & 7) != 0)
    {
      atomic_fetch_add_explicit((v203 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v90 & 7) != 0)
    {
      atomic_fetch_add_explicit((v90 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v92 & 7) != 0)
    {
      atomic_fetch_add_explicit((v92 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(v96[1]);
    for (jj = 0; jj != -15; jj -= 5)
    {
      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](&v209[jj]);
      v18 = v209[jj - 1];
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if ((v93 & 7) != 0)
    {
      atomic_fetch_add_explicit((v93 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v94 & 7) != 0)
    {
      atomic_fetch_add_explicit((v94 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v95 & 7) != 0)
    {
      atomic_fetch_add_explicit((v95 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v97 & 7) != 0)
    {
      atomic_fetch_add_explicit((v97 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(v101[1]);
    for (kk = 0; kk != -15; kk -= 5)
    {
      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](&v214[kk]);
      v20 = v214[kk - 1];
      if ((v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if ((v98 & 7) != 0)
    {
      atomic_fetch_add_explicit((v98 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v99 & 7) != 0)
    {
      atomic_fetch_add_explicit((v99 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v100 & 7) != 0)
    {
      atomic_fetch_add_explicit((v100 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v102 & 7) != 0)
    {
      atomic_fetch_add_explicit((v102 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(v104[1]);
    std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](v216);
    if ((v215 & 7) != 0)
    {
      atomic_fetch_add_explicit((v215 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v103 & 7) != 0)
    {
      atomic_fetch_add_explicit((v103 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v105 & 7) != 0)
    {
      atomic_fetch_add_explicit((v105 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(v107[1]);
    std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](v218);
    if ((v217 & 7) != 0)
    {
      atomic_fetch_add_explicit((v217 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v106 & 7) != 0)
    {
      atomic_fetch_add_explicit((v106 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v108 & 7) != 0)
    {
      atomic_fetch_add_explicit((v108 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(v110[1]);
    std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](v220);
    if ((v219 & 7) != 0)
    {
      atomic_fetch_add_explicit((v219 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v109 & 7) != 0)
    {
      atomic_fetch_add_explicit((v109 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v111 & 7) != 0)
    {
      atomic_fetch_add_explicit((v111 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(v113[1]);
    std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](v222);
    if ((v221 & 7) != 0)
    {
      atomic_fetch_add_explicit((v221 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v112 & 7) != 0)
    {
      atomic_fetch_add_explicit((v112 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v114 & 7) != 0)
    {
      atomic_fetch_add_explicit((v114 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(v116[1]);
    std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](v224);
    if ((v223 & 7) != 0)
    {
      atomic_fetch_add_explicit((v223 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v115 & 7) != 0)
    {
      atomic_fetch_add_explicit((v115 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v117 & 7) != 0)
    {
      atomic_fetch_add_explicit((v117 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(v119[1]);
    std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](v226);
    if ((v225 & 7) != 0)
    {
      atomic_fetch_add_explicit((v225 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v118 & 7) != 0)
    {
      atomic_fetch_add_explicit((v118 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v120 & 7) != 0)
    {
      atomic_fetch_add_explicit((v120 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(v123[1]);
    for (mm = 0; mm != -10; mm -= 5)
    {
      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](&v230[mm]);
      v22 = v230[mm - 1];
      if ((v22 & 7) != 0)
      {
        atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if ((v121 & 7) != 0)
    {
      atomic_fetch_add_explicit((v121 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v122 & 7) != 0)
    {
      atomic_fetch_add_explicit((v122 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v124 & 7) != 0)
    {
      atomic_fetch_add_explicit((v124 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(v127[1]);
    for (nn = 0; nn != -10; nn -= 5)
    {
      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](&v234[nn]);
      v24 = v234[nn - 1];
      if ((v24 & 7) != 0)
      {
        atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if ((v125 & 7) != 0)
    {
      atomic_fetch_add_explicit((v125 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v126 & 7) != 0)
    {
      atomic_fetch_add_explicit((v126 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v128 & 7) != 0)
    {
      atomic_fetch_add_explicit((v128 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(v131[1]);
    for (i1 = 0; i1 != -10; i1 -= 5)
    {
      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](&v238[i1]);
      v26 = v238[i1 - 1];
      if ((v26 & 7) != 0)
      {
        atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if ((v129 & 7) != 0)
    {
      atomic_fetch_add_explicit((v129 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v130 & 7) != 0)
    {
      atomic_fetch_add_explicit((v130 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v132 & 7) != 0)
    {
      atomic_fetch_add_explicit((v132 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(v134[1]);
    std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](v240);
    if ((v239 & 7) != 0)
    {
      atomic_fetch_add_explicit((v239 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v133 & 7) != 0)
    {
      atomic_fetch_add_explicit((v133 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v135 & 7) != 0)
    {
      atomic_fetch_add_explicit((v135 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(v138[1]);
    for (i2 = 0; i2 != -10; i2 -= 5)
    {
      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](&v244[i2]);
      v28 = v244[i2 - 1];
      if ((v28 & 7) != 0)
      {
        atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if ((v136 & 7) != 0)
    {
      atomic_fetch_add_explicit((v136 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v137 & 7) != 0)
    {
      atomic_fetch_add_explicit((v137 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v139 & 7) != 0)
    {
      atomic_fetch_add_explicit((v139 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(v144[1]);
    for (i3 = 0; i3 != -20; i3 -= 5)
    {
      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](&v250[i3]);
      v30 = v250[i3 - 1];
      if ((v30 & 7) != 0)
      {
        atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if ((v140 & 7) != 0)
    {
      atomic_fetch_add_explicit((v140 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v141 & 7) != 0)
    {
      atomic_fetch_add_explicit((v141 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v142 & 7) != 0)
    {
      atomic_fetch_add_explicit((v142 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v143 & 7) != 0)
    {
      atomic_fetch_add_explicit((v143 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v145 & 7) != 0)
    {
      atomic_fetch_add_explicit((v145 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(v148[1]);
    for (i4 = 0; i4 != -10; i4 -= 5)
    {
      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](&v254[i4]);
      v32 = v254[i4 - 1];
      if ((v32 & 7) != 0)
      {
        atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if ((v146 & 7) != 0)
    {
      atomic_fetch_add_explicit((v146 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v147 & 7) != 0)
    {
      atomic_fetch_add_explicit((v147 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v149 & 7) != 0)
    {
      atomic_fetch_add_explicit((v149 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(v152[1]);
    for (i5 = 0; i5 != -10; i5 -= 5)
    {
      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](&v258[i5]);
      v34 = v258[i5 - 1];
      if ((v34 & 7) != 0)
      {
        atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if ((v150 & 7) != 0)
    {
      atomic_fetch_add_explicit((v150 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v151 & 7) != 0)
    {
      atomic_fetch_add_explicit((v151 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v153 & 7) != 0)
    {
      atomic_fetch_add_explicit((v153 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(v155[1]);
    std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](v260);
    if ((v259 & 7) != 0)
    {
      atomic_fetch_add_explicit((v259 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v154 & 7) != 0)
    {
      atomic_fetch_add_explicit((v154 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v156 & 7) != 0)
    {
      atomic_fetch_add_explicit((v156 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v2 = *MEMORY[0x277D85DE8];
}

void sub_2476DD58C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _Unwind_Exception *exception_objecta, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v77 = (v75 + 1040);
  v78 = -1056;
  while (1)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(*v77);
    v79 = *(v77 - 2);
    if ((v79 & 7) != 0)
    {
      atomic_fetch_add_explicit((v79 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v77 -= 4;
    v78 += 32;
    if (!v78)
    {
      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(a35);
      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](v76);
      if ((STACK[0x6A0] & 7) != 0)
      {
        atomic_fetch_add_explicit((STACK[0x6A0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a33 & 7) != 0)
      {
        atomic_fetch_add_explicit((a33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a37 & 7) != 0)
      {
        atomic_fetch_add_explicit((a37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(a42);
      v80 = &STACK[0x720];
      v81 = -120;
      while (1)
      {
        v82 = std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](v80);
        v83 = *(v82 - 8);
        if ((v83 & 7) != 0)
        {
          atomic_fetch_add_explicit((v83 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v80 = (v82 - 40);
        v81 += 40;
        if (!v81)
        {
          if ((a38 & 7) != 0)
          {
            atomic_fetch_add_explicit((a38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((a39 & 7) != 0)
          {
            atomic_fetch_add_explicit((a39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((a40 & 7) != 0)
          {
            atomic_fetch_add_explicit((a40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((a44 & 7) != 0)
          {
            atomic_fetch_add_explicit((a44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(a49);
          v84 = &STACK[0x798];
          v85 = -120;
          while (1)
          {
            v86 = std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](v84);
            v87 = *(v86 - 8);
            if ((v87 & 7) != 0)
            {
              atomic_fetch_add_explicit((v87 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v84 = (v86 - 40);
            v85 += 40;
            if (!v85)
            {
              if ((a45 & 7) != 0)
              {
                atomic_fetch_add_explicit((a45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if ((a46 & 7) != 0)
              {
                atomic_fetch_add_explicit((a46 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if ((a47 & 7) != 0)
              {
                atomic_fetch_add_explicit((a47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if ((a51 & 7) != 0)
              {
                atomic_fetch_add_explicit((a51 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(a54);
              std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](v73);
              if ((STACK[0x7B8] & 7) != 0)
              {
                atomic_fetch_add_explicit((STACK[0x7B8] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if ((a52 & 7) != 0)
              {
                atomic_fetch_add_explicit((a52 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if ((a56 & 7) != 0)
              {
                atomic_fetch_add_explicit((a56 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(a59);
              std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](v74);
              if ((STACK[0x7E0] & 7) != 0)
              {
                atomic_fetch_add_explicit((STACK[0x7E0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if ((a57 & 7) != 0)
              {
                atomic_fetch_add_explicit((a57 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if ((a61 & 7) != 0)
              {
                atomic_fetch_add_explicit((a61 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(a64);
              std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](v72);
              if ((STACK[0x808] & 7) != 0)
              {
                atomic_fetch_add_explicit((STACK[0x808] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if ((a62 & 7) != 0)
              {
                atomic_fetch_add_explicit((a62 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if ((a66 & 7) != 0)
              {
                atomic_fetch_add_explicit((a66 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(a69);
              std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](a19);
              if ((STACK[0x830] & 7) != 0)
              {
                atomic_fetch_add_explicit((STACK[0x830] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if ((a67 & 7) != 0)
              {
                atomic_fetch_add_explicit((a67 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if ((a71 & 7) != 0)
              {
                atomic_fetch_add_explicit((a71 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(STACK[0x208]);
              std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](a20);
              if ((STACK[0x858] & 7) != 0)
              {
                atomic_fetch_add_explicit((STACK[0x858] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if ((a72 & 7) != 0)
              {
                atomic_fetch_add_explicit((a72 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if ((STACK[0x218] & 7) != 0)
              {
                atomic_fetch_add_explicit((STACK[0x218] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(STACK[0x230]);
              std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](a21);
              if ((STACK[0x880] & 7) != 0)
              {
                atomic_fetch_add_explicit((STACK[0x880] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if ((STACK[0x220] & 7) != 0)
              {
                atomic_fetch_add_explicit((STACK[0x220] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if ((STACK[0x240] & 7) != 0)
              {
                atomic_fetch_add_explicit((STACK[0x240] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(STACK[0x258]);
              std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](a22);
              if ((STACK[0x8A8] & 7) != 0)
              {
                atomic_fetch_add_explicit((STACK[0x8A8] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if ((STACK[0x248] & 7) != 0)
              {
                atomic_fetch_add_explicit((STACK[0x248] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if ((STACK[0x268] & 7) != 0)
              {
                atomic_fetch_add_explicit((STACK[0x268] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(STACK[0x288]);
              v88 = &STACK[0x900];
              v89 = -80;
              while (1)
              {
                v90 = std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](v88);
                v91 = *(v90 - 8);
                if ((v91 & 7) != 0)
                {
                  atomic_fetch_add_explicit((v91 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

                v88 = (v90 - 40);
                v89 += 40;
                if (!v89)
                {
                  if ((STACK[0x270] & 7) != 0)
                  {
                    atomic_fetch_add_explicit((STACK[0x270] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  if ((STACK[0x278] & 7) != 0)
                  {
                    atomic_fetch_add_explicit((STACK[0x278] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  if ((STACK[0x298] & 7) != 0)
                  {
                    atomic_fetch_add_explicit((STACK[0x298] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(STACK[0x2C8]);
                  v92 = &STACK[0x9A0];
                  v93 = -160;
                  while (1)
                  {
                    v94 = std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](v92);
                    v95 = *(v94 - 8);
                    if ((v95 & 7) != 0)
                    {
                      atomic_fetch_add_explicit((v95 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                    }

                    v92 = (v94 - 40);
                    v93 += 40;
                    if (!v93)
                    {
                      if ((STACK[0x2A0] & 7) != 0)
                      {
                        atomic_fetch_add_explicit((STACK[0x2A0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                      }

                      if ((STACK[0x2A8] & 7) != 0)
                      {
                        atomic_fetch_add_explicit((STACK[0x2A8] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                      }

                      if ((STACK[0x2B0] & 7) != 0)
                      {
                        atomic_fetch_add_explicit((STACK[0x2B0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                      }

                      if ((STACK[0x2B8] & 7) != 0)
                      {
                        atomic_fetch_add_explicit((STACK[0x2B8] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                      }

                      if ((STACK[0x2D8] & 7) != 0)
                      {
                        atomic_fetch_add_explicit((STACK[0x2D8] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                      }

                      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(STACK[0x2F8]);
                      v96 = &STACK[0x9F0];
                      v97 = -80;
                      while (1)
                      {
                        v98 = std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](v96);
                        v99 = *(v98 - 8);
                        if ((v99 & 7) != 0)
                        {
                          atomic_fetch_add_explicit((v99 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                        }

                        v96 = (v98 - 40);
                        v97 += 40;
                        if (!v97)
                        {
                          if ((STACK[0x2E0] & 7) != 0)
                          {
                            atomic_fetch_add_explicit((STACK[0x2E0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                          }

                          if ((STACK[0x2E8] & 7) != 0)
                          {
                            atomic_fetch_add_explicit((STACK[0x2E8] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                          }

                          if ((STACK[0x308] & 7) != 0)
                          {
                            atomic_fetch_add_explicit((STACK[0x308] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                          }

                          std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(STACK[0x328]);
                          v100 = &STACK[0xA40];
                          v101 = -80;
                          while (1)
                          {
                            v102 = std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](v100);
                            v103 = *(v102 - 8);
                            if ((v103 & 7) != 0)
                            {
                              atomic_fetch_add_explicit((v103 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                            }

                            v100 = (v102 - 40);
                            v101 += 40;
                            if (!v101)
                            {
                              if ((STACK[0x310] & 7) != 0)
                              {
                                atomic_fetch_add_explicit((STACK[0x310] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                              }

                              if ((STACK[0x318] & 7) != 0)
                              {
                                atomic_fetch_add_explicit((STACK[0x318] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                              }

                              if ((STACK[0x338] & 7) != 0)
                              {
                                atomic_fetch_add_explicit((STACK[0x338] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                              }

                              std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(STACK[0x350]);
                              std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](a23);
                              if ((STACK[0xA60] & 7) != 0)
                              {
                                atomic_fetch_add_explicit((STACK[0xA60] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                              }

                              if ((STACK[0x340] & 7) != 0)
                              {
                                atomic_fetch_add_explicit((STACK[0x340] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                              }

                              if ((STACK[0x360] & 7) != 0)
                              {
                                atomic_fetch_add_explicit((STACK[0x360] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                              }

                              std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(STACK[0x378]);
                              std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](a24);
                              if ((STACK[0xA88] & 7) != 0)
                              {
                                atomic_fetch_add_explicit((STACK[0xA88] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                              }

                              if ((STACK[0x368] & 7) != 0)
                              {
                                atomic_fetch_add_explicit((STACK[0x368] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                              }

                              if ((STACK[0x388] & 7) != 0)
                              {
                                atomic_fetch_add_explicit((STACK[0x388] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                              }

                              std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(STACK[0x3B0]);
                              v104 = &STACK[0xB08];
                              v105 = -120;
                              while (1)
                              {
                                v106 = std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](v104);
                                v107 = *(v106 - 8);
                                if ((v107 & 7) != 0)
                                {
                                  atomic_fetch_add_explicit((v107 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                }

                                v104 = (v106 - 40);
                                v105 += 40;
                                if (!v105)
                                {
                                  if ((STACK[0x390] & 7) != 0)
                                  {
                                    atomic_fetch_add_explicit((STACK[0x390] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                  }

                                  if ((STACK[0x398] & 7) != 0)
                                  {
                                    atomic_fetch_add_explicit((STACK[0x398] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                  }

                                  if ((STACK[0x3A0] & 7) != 0)
                                  {
                                    atomic_fetch_add_explicit((STACK[0x3A0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                  }

                                  if ((STACK[0x3C0] & 7) != 0)
                                  {
                                    atomic_fetch_add_explicit((STACK[0x3C0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                  }

                                  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(STACK[0x3E8]);
                                  v108 = &STACK[0xB80];
                                  v109 = -120;
                                  while (1)
                                  {
                                    v110 = std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](v108);
                                    v111 = *(v110 - 8);
                                    if ((v111 & 7) != 0)
                                    {
                                      atomic_fetch_add_explicit((v111 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                    }

                                    v108 = (v110 - 40);
                                    v109 += 40;
                                    if (!v109)
                                    {
                                      if ((STACK[0x3C8] & 7) != 0)
                                      {
                                        atomic_fetch_add_explicit((STACK[0x3C8] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                      }

                                      if ((STACK[0x3D0] & 7) != 0)
                                      {
                                        atomic_fetch_add_explicit((STACK[0x3D0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                      }

                                      if ((STACK[0x3D8] & 7) != 0)
                                      {
                                        atomic_fetch_add_explicit((STACK[0x3D8] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                      }

                                      if ((STACK[0x3F8] & 7) != 0)
                                      {
                                        atomic_fetch_add_explicit((STACK[0x3F8] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                      }

                                      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(STACK[0x410]);
                                      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](a25);
                                      if ((STACK[0xBA0] & 7) != 0)
                                      {
                                        atomic_fetch_add_explicit((STACK[0xBA0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                      }

                                      if ((STACK[0x400] & 7) != 0)
                                      {
                                        atomic_fetch_add_explicit((STACK[0x400] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                      }

                                      if ((STACK[0x420] & 7) != 0)
                                      {
                                        atomic_fetch_add_explicit((STACK[0x420] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                      }

                                      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(STACK[0x438]);
                                      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](a26);
                                      if ((STACK[0xBC8] & 7) != 0)
                                      {
                                        atomic_fetch_add_explicit((STACK[0xBC8] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                      }

                                      if ((STACK[0x428] & 7) != 0)
                                      {
                                        atomic_fetch_add_explicit((STACK[0x428] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                      }

                                      if ((STACK[0x448] & 7) != 0)
                                      {
                                        atomic_fetch_add_explicit((STACK[0x448] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                      }

                                      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(STACK[0x460]);
                                      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](a27);
                                      if ((STACK[0xBF0] & 7) != 0)
                                      {
                                        atomic_fetch_add_explicit((STACK[0xBF0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                      }

                                      if ((STACK[0x450] & 7) != 0)
                                      {
                                        atomic_fetch_add_explicit((STACK[0x450] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                      }

                                      if ((STACK[0x470] & 7) != 0)
                                      {
                                        atomic_fetch_add_explicit((STACK[0x470] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                      }

                                      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(STACK[0x488]);
                                      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](a28);
                                      if ((STACK[0xC18] & 7) != 0)
                                      {
                                        atomic_fetch_add_explicit((STACK[0xC18] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                      }

                                      if ((STACK[0x478] & 7) != 0)
                                      {
                                        atomic_fetch_add_explicit((STACK[0x478] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                      }

                                      if ((STACK[0x498] & 7) != 0)
                                      {
                                        atomic_fetch_add_explicit((STACK[0x498] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                      }

                                      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(STACK[0x4B0]);
                                      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](a29);
                                      if ((STACK[0xC40] & 7) != 0)
                                      {
                                        atomic_fetch_add_explicit((STACK[0xC40] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                      }

                                      if ((STACK[0x4A0] & 7) != 0)
                                      {
                                        atomic_fetch_add_explicit((STACK[0x4A0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                      }

                                      if ((STACK[0x4C0] & 7) != 0)
                                      {
                                        atomic_fetch_add_explicit((STACK[0x4C0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                      }

                                      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(STACK[0x4D8]);
                                      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](a30);
                                      if ((STACK[0xC68] & 7) != 0)
                                      {
                                        atomic_fetch_add_explicit((STACK[0xC68] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                      }

                                      if ((STACK[0x4C8] & 7) != 0)
                                      {
                                        atomic_fetch_add_explicit((STACK[0x4C8] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                      }

                                      if ((STACK[0x4E8] & 7) != 0)
                                      {
                                        atomic_fetch_add_explicit((STACK[0x4E8] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                      }

                                      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(STACK[0x508]);
                                      v112 = &STACK[0xCC0];
                                      v113 = -80;
                                      while (1)
                                      {
                                        v114 = std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](v112);
                                        v115 = *(v114 - 8);
                                        if ((v115 & 7) != 0)
                                        {
                                          atomic_fetch_add_explicit((v115 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                        }

                                        v112 = (v114 - 40);
                                        v113 += 40;
                                        if (!v113)
                                        {
                                          if ((STACK[0x4F0] & 7) != 0)
                                          {
                                            atomic_fetch_add_explicit((STACK[0x4F0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                          }

                                          if ((STACK[0x4F8] & 7) != 0)
                                          {
                                            atomic_fetch_add_explicit((STACK[0x4F8] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                          }

                                          if ((STACK[0x518] & 7) != 0)
                                          {
                                            atomic_fetch_add_explicit((STACK[0x518] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                          }

                                          std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(STACK[0x538]);
                                          v116 = &STACK[0xD10];
                                          v117 = -80;
                                          while (1)
                                          {
                                            v118 = std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](v116);
                                            v119 = *(v118 - 8);
                                            if ((v119 & 7) != 0)
                                            {
                                              atomic_fetch_add_explicit((v119 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                            }

                                            v116 = (v118 - 40);
                                            v117 += 40;
                                            if (!v117)
                                            {
                                              if ((STACK[0x520] & 7) != 0)
                                              {
                                                atomic_fetch_add_explicit((STACK[0x520] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                              }

                                              if ((STACK[0x528] & 7) != 0)
                                              {
                                                atomic_fetch_add_explicit((STACK[0x528] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                              }

                                              if ((STACK[0x548] & 7) != 0)
                                              {
                                                atomic_fetch_add_explicit((STACK[0x548] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                              }

                                              std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(STACK[0x568]);
                                              v120 = &STACK[0xD60];
                                              v121 = -80;
                                              while (1)
                                              {
                                                v122 = std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](v120);
                                                v123 = *(v122 - 8);
                                                if ((v123 & 7) != 0)
                                                {
                                                  atomic_fetch_add_explicit((v123 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                }

                                                v120 = (v122 - 40);
                                                v121 += 40;
                                                if (!v121)
                                                {
                                                  if ((STACK[0x550] & 7) != 0)
                                                  {
                                                    atomic_fetch_add_explicit((STACK[0x550] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                  }

                                                  if ((STACK[0x558] & 7) != 0)
                                                  {
                                                    atomic_fetch_add_explicit((STACK[0x558] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                  }

                                                  if ((STACK[0x578] & 7) != 0)
                                                  {
                                                    atomic_fetch_add_explicit((STACK[0x578] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                  }

                                                  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(STACK[0x590]);
                                                  std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](a31);
                                                  if ((STACK[0xD80] & 7) != 0)
                                                  {
                                                    atomic_fetch_add_explicit((STACK[0xD80] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                  }

                                                  if ((STACK[0x580] & 7) != 0)
                                                  {
                                                    atomic_fetch_add_explicit((STACK[0x580] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                  }

                                                  if ((STACK[0x5A0] & 7) != 0)
                                                  {
                                                    atomic_fetch_add_explicit((STACK[0x5A0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                  }

                                                  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(STACK[0x5C0]);
                                                  v124 = &STACK[0xDD8];
                                                  v125 = -80;
                                                  while (1)
                                                  {
                                                    v126 = std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](v124);
                                                    v127 = *(v126 - 8);
                                                    if ((v127 & 7) != 0)
                                                    {
                                                      atomic_fetch_add_explicit((v127 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                    }

                                                    v124 = (v126 - 40);
                                                    v125 += 40;
                                                    if (!v125)
                                                    {
                                                      if ((STACK[0x5A8] & 7) != 0)
                                                      {
                                                        atomic_fetch_add_explicit((STACK[0x5A8] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                      }

                                                      if ((STACK[0x5B0] & 7) != 0)
                                                      {
                                                        atomic_fetch_add_explicit((STACK[0x5B0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                      }

                                                      if ((STACK[0x5D0] & 7) != 0)
                                                      {
                                                        atomic_fetch_add_explicit((STACK[0x5D0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                      }

                                                      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(STACK[0x600]);
                                                      v128 = &STACK[0xE78];
                                                      v129 = -160;
                                                      while (1)
                                                      {
                                                        v130 = std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](v128);
                                                        v131 = *(v130 - 8);
                                                        if ((v131 & 7) != 0)
                                                        {
                                                          atomic_fetch_add_explicit((v131 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                        }

                                                        v128 = (v130 - 40);
                                                        v129 += 40;
                                                        if (!v129)
                                                        {
                                                          if ((STACK[0x5D8] & 7) != 0)
                                                          {
                                                            atomic_fetch_add_explicit((STACK[0x5D8] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                          }

                                                          if ((STACK[0x5E0] & 7) != 0)
                                                          {
                                                            atomic_fetch_add_explicit((STACK[0x5E0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                          }

                                                          if ((STACK[0x5E8] & 7) != 0)
                                                          {
                                                            atomic_fetch_add_explicit((STACK[0x5E8] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                          }

                                                          if ((STACK[0x5F0] & 7) != 0)
                                                          {
                                                            atomic_fetch_add_explicit((STACK[0x5F0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                          }

                                                          if ((STACK[0x610] & 7) != 0)
                                                          {
                                                            atomic_fetch_add_explicit((STACK[0x610] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                          }

                                                          std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(STACK[0x630]);
                                                          v132 = &STACK[0xEC8];
                                                          v133 = -80;
                                                          while (1)
                                                          {
                                                            v134 = std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](v132);
                                                            v135 = *(v134 - 8);
                                                            if ((v135 & 7) != 0)
                                                            {
                                                              atomic_fetch_add_explicit((v135 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                            }

                                                            v132 = (v134 - 40);
                                                            v133 += 40;
                                                            if (!v133)
                                                            {
                                                              if ((STACK[0x618] & 7) != 0)
                                                              {
                                                                atomic_fetch_add_explicit((STACK[0x618] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                              }

                                                              if ((STACK[0x620] & 7) != 0)
                                                              {
                                                                atomic_fetch_add_explicit((STACK[0x620] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                              }

                                                              if ((STACK[0x640] & 7) != 0)
                                                              {
                                                                atomic_fetch_add_explicit((STACK[0x640] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                              }

                                                              std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(STACK[0x660]);
                                                              v136 = &STACK[0xF18];
                                                              v137 = -80;
                                                              while (1)
                                                              {
                                                                v138 = std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](v136);
                                                                v139 = *(v138 - 8);
                                                                if ((v139 & 7) != 0)
                                                                {
                                                                  atomic_fetch_add_explicit((v139 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                                }

                                                                v136 = (v138 - 40);
                                                                v137 += 40;
                                                                if (!v137)
                                                                {
                                                                  if ((STACK[0x648] & 7) != 0)
                                                                  {
                                                                    atomic_fetch_add_explicit((STACK[0x648] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                                  }

                                                                  if ((STACK[0x650] & 7) != 0)
                                                                  {
                                                                    atomic_fetch_add_explicit((STACK[0x650] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                                  }

                                                                  if ((STACK[0x670] & 7) != 0)
                                                                  {
                                                                    atomic_fetch_add_explicit((STACK[0x670] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                                  }

                                                                  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(STACK[0x688]);
                                                                  std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](a32);
                                                                  if ((STACK[0xF38] & 7) != 0)
                                                                  {
                                                                    atomic_fetch_add_explicit((STACK[0xF38] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                                  }

                                                                  if ((STACK[0x678] & 7) != 0)
                                                                  {
                                                                    atomic_fetch_add_explicit((STACK[0x678] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                                  }

                                                                  if ((STACK[0x698] & 7) != 0)
                                                                  {
                                                                    atomic_fetch_add_explicit((STACK[0x698] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                                  }

                                                                  _Unwind_Resume(a1);
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
    }
  }
}

void anonymous namespace::usdToRe_scalar<unsigned char,unsigned char>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, _BYTE **a2)
{
  v2 = *a2;
  realityio::getAttributeValue<unsigned char>(a1, v6);
  v3 = v6[0];
  v4 = v6[8];
  if ((v6[0] & 1) == 0 && v8 < 0)
  {
    operator delete(__p);
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  *v2 = v5;
}

void anonymous namespace::usdToRe_scalar<unsigned int,unsigned short>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, _WORD **a2)
{
  v2 = *a2;
  realityio::getAttributeValue<unsigned int>(a1, v6);
  v3 = v6[0];
  v4 = v7;
  if ((v6[0] & 1) == 0 && v9 < 0)
  {
    operator delete(__p);
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  *v2 = v5;
}

void anonymous namespace::usdToRe_scalar<unsigned int,unsigned int>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, _DWORD **a2)
{
  v2 = *a2;
  realityio::getAttributeValue<unsigned int>(a1, v6);
  v3 = v6[0];
  v4 = v7;
  if ((v6[0] & 1) == 0 && v9 < 0)
  {
    operator delete(__p);
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  *v2 = v5;
}

void anonymous namespace::usdToRe_scalar<unsigned long long,unsigned long long>(pxrInternal__aapl__pxrReserved__::UsdObject *this, void **a2)
{
  v2 = *a2;
  realityio::getAttributeValue<unsigned long long>(v6, this);
  v3 = v6[0];
  v4 = v7;
  if ((v6[0] & 1) == 0 && v9 < 0)
  {
    operator delete(__p);
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  *v2 = v5;
}

void anonymous namespace::usdToRe_scalar<unsigned long long,unsigned long>(pxrInternal__aapl__pxrReserved__::UsdObject *this, void **a2)
{
  v2 = *a2;
  realityio::getAttributeValue<unsigned long long>(v6, this);
  v3 = v6[0];
  v4 = v7;
  if ((v6[0] & 1) == 0 && v9 < 0)
  {
    operator delete(__p);
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  *v2 = v5;
}

void anonymous namespace::usdToRe_scalar<int,char>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, _BYTE **a2)
{
  v2 = *a2;
  realityio::getAttributeValue<int>(a1, v6);
  v3 = v6[0];
  v4 = v6[8];
  if ((v6[0] & 1) == 0 && v8 < 0)
  {
    operator delete(__p);
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  *v2 = v5;
}

void anonymous namespace::usdToRe_scalar<int,signed char>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, _BYTE **a2)
{
  v2 = *a2;
  realityio::getAttributeValue<int>(a1, v6);
  v3 = v6[0];
  v4 = v6[8];
  if ((v6[0] & 1) == 0 && v8 < 0)
  {
    operator delete(__p);
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  *v2 = v5;
}

void anonymous namespace::usdToRe_scalar<int,short>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, _WORD **a2)
{
  v2 = *a2;
  realityio::getAttributeValue<int>(a1, v6);
  v3 = v6[0];
  v4 = v7;
  if ((v6[0] & 1) == 0 && v9 < 0)
  {
    operator delete(__p);
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  *v2 = v5;
}

void anonymous namespace::usdToRe_scalar<int,int>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, _DWORD **a2)
{
  v2 = *a2;
  realityio::getAttributeValue<int>(a1, v6);
  v3 = v6[0];
  v4 = v7;
  if ((v6[0] & 1) == 0 && v9 < 0)
  {
    operator delete(__p);
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  *v2 = v5;
}

void anonymous namespace::usdToRe_scalar<long long,int>(pxrInternal__aapl__pxrReserved__::UsdObject *this, _DWORD **a2)
{
  v2 = *a2;
  realityio::getAttributeValue<long long>(v6, this);
  v3 = v6[0];
  v4 = v7;
  if ((v6[0] & 1) == 0 && v9 < 0)
  {
    operator delete(__p);
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  *v2 = v5;
}

void anonymous namespace::usdToRe_scalar<long long,long long>(pxrInternal__aapl__pxrReserved__::UsdObject *this, void **a2)
{
  v2 = *a2;
  realityio::getAttributeValue<long long>(v6, this);
  v3 = v6[0];
  v4 = v7;
  if ((v6[0] & 1) == 0 && v9 < 0)
  {
    operator delete(__p);
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  *v2 = v5;
}

void anonymous namespace::usdToRe_scalar<float,float>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, float **a2)
{
  v2 = *a2;
  realityio::getAttributeValue<float>(a1, v6);
  v3 = v6[0];
  v4 = v7;
  if ((v6[0] & 1) == 0 && v9 < 0)
  {
    operator delete(__p);
  }

  v5 = 0.0;
  if (v3)
  {
    v5 = v4;
  }

  *v2 = v5;
}

int8x8_t anonymous namespace::usdToRe_vector<pxrInternal__aapl__pxrReserved__::GfVec2f,float,2>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, int8x8_t **a2)
{
  v2 = *a2;
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::GfVec2f>(a1, v6);
  v3 = v6[0];
  v4 = v7;
  if ((v6[0] & 1) == 0 && v9 < 0)
  {
    operator delete(__p);
  }

  result = vand_s8(v4, vcltz_s32(vshl_n_s32(vdup_n_s32(v3), 0x1FuLL)));
  *v2 = result;
  return result;
}

void anonymous namespace::usdToRe_vector<pxrInternal__aapl__pxrReserved__::GfVec3f,float,3>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, uint64_t *a2)
{
  v2 = *a2;
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::GfVec3f>(a1, v8);
  v3 = v8[0];
  v4 = v10;
  v5 = v9;
  if ((v8[0] & 1) == 0 && v12 < 0)
  {
    operator delete(__p);
  }

  v6 = vand_s8(v5, vcltz_s32(vshl_n_s32(vdup_n_s32(v3), 0x1FuLL)));
  v7 = 0.0;
  if (v3)
  {
    v7 = v4;
  }

  *v2 = v6;
  *(v2 + 8) = v7;
}

int8x16_t anonymous namespace::usdToRe_vector<pxrInternal__aapl__pxrReserved__::GfVec4f,float,4>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, int8x16_t **a2)
{
  v2 = *a2;
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::GfVec4f>(a1, v7);
  v3 = v7[0];
  v4 = v8;
  if ((v7[0] & 1) == 0 && v10 < 0)
  {
    v6 = v8;
    operator delete(__p);
    v4 = v6;
  }

  result = vandq_s8(v4, vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v3)), 0x1FuLL)));
  *v2 = result;
  return result;
}

void anonymous namespace::usdToRe_scalar<pxrInternal__aapl__pxrReserved__::GfQuatf,pxrInternal__aapl__pxrReserved__::GfQuatf>(pxrInternal__aapl__pxrReserved__::UsdObject *this, _OWORD **a2)
{
  v2 = *a2;
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::GfQuatf>(v5, this);
  v3 = v6;
  if ((v5[0] & 1) == 0 && v8 < 0)
  {
    v4 = v6;
    operator delete(__p);
    v3 = v4;
  }

  *v2 = v3;
}

void anonymous namespace::usdToRe_scalar<double,double>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, double **a2)
{
  v2 = *a2;
  realityio::getAttributeValue<double>(a1, v6);
  v3 = v6[0];
  v4 = v7;
  if ((v6[0] & 1) == 0 && v9 < 0)
  {
    operator delete(__p);
  }

  v5 = 0.0;
  if (v3)
  {
    v5 = v4;
  }

  *v2 = v5;
}

void anonymous namespace::usdToRe_scalar<BOOL,BOOL>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, _BYTE **a2)
{
  v2 = *a2;
  realityio::getAttributeValue<BOOL>(a1, v5);
  v3 = v5[0];
  v4 = v5[8];
  if ((v5[0] & 1) == 0 && v7 < 0)
  {
    operator delete(__p);
  }

  *v2 = v3 & v4;
}

void _ZN12_GLOBAL__N_114usdToRe_matrixIN32pxrInternal__aapl__pxrReserved__10GfMatrix2dENS1_7GfVec2dE13simd_float2x2Dv2_fLm2EfEEvRKNS1_12UsdAttributeENSt3__110shared_ptrIhEEPN9realityio6InputsE10RETypeInfo(pxrInternal__aapl__pxrReserved__::UsdObject *a1, void **a2)
{
  v2 = a1;
  v58 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1) & 1) == 0)
  {
    Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(v2);
    if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
    {
      pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
    }

    std::operator+<char>();
    realityio::DetailedError::DetailedError(&v50, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
    v10 = v50;
    v11 = v51;
    LOBYTE(v2) = HIBYTE(v54);
    v15 = v52;
    v12 = v53;
    v53 = 0.0;
    v54 = 0;
    v52 = 0.0;
    if (SHIBYTE(v49) < 0)
    {
      operator delete(__p[0]);
    }

    v13 = 0;
    goto LABEL_50;
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v44, v2);
  v4 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v44);
  if (!pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredTimeCodeRange(v4))
  {
    v7 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v44);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v7);
  }

  v5 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v44);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v5);
  v43 = v8;
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v2))
  {
    v57 = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfMatrix2d>(v56))
      {
        v9 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfMatrix2d>(v56);
        v10 = *v9;
        v11 = *(v9 + 8);
        v12 = *(v9 + 24);
        v42 = *(v9 + 16);
        v13 = 1;
LABEL_45:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v56);
        goto LABEL_46;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v56);
      {
        v20 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfMatrix2d>(v56);
        v21 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v55, v20);
        v13 = v55.__r_.__value_.__l.__size_ != 0;
        if (v55.__r_.__value_.__l.__size_)
        {
          v22 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfMatrix2d>(v21);
          v10 = *v22;
          v11 = *(v22 + 8);
          v12 = *(v22 + 24);
          v42 = *(v22 + 16);
        }

        else
        {
          v40 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(v2);
          if ((*v40 & 0xFFFFFFFFFFFFFFF8) == 0)
          {
            pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v40);
          }

          std::operator+<char>();
          realityio::DetailedError::DetailedError(&v50, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
          v10 = v50;
          v11 = v51;
          v41 = v52;
          v12 = v53;
          LOBYTE(v2) = HIBYTE(v54);
          v53 = 0.0;
          v54 = 0;
          v52 = 0.0;
          v42 = v41;
          if (SHIBYTE(v49) < 0)
          {
            operator delete(__p[0]);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v55);
        goto LABEL_45;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "Value is not of the given type");
      realityio::DetailedError::DetailedError(&v50, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      v10 = v50;
      v11 = v51;
      v31 = v52;
      v12 = v53;
      LOBYTE(v2) = HIBYTE(v54);
      v53 = 0.0;
      v54 = 0;
      v52 = 0.0;
      v42 = v31;
      if ((SHIBYTE(v49) & 0x80000000) == 0)
      {
LABEL_44:
        v13 = 0;
        goto LABEL_45;
      }

      v30 = __p[0];
    }

    else
    {
      v16 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(v2);
      if ((*v16 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v16);
      }

      std::operator+<char>();
      v23 = std::string::append(&v47, ") at the given time: ");
      v24 = *&v23->__r_.__value_.__l.__data_;
      v55.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
      *&v55.__r_.__value_.__l.__data_ = v24;
      v23->__r_.__value_.__l.__size_ = 0;
      v23->__r_.__value_.__r.__words[2] = 0;
      v23->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v46, v43);
      if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = &v46;
      }

      else
      {
        v25 = v46.__r_.__value_.__r.__words[0];
      }

      if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v46.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v46.__r_.__value_.__l.__size_;
      }

      v27 = std::string::append(&v55, v25, size);
      v28 = *&v27->__r_.__value_.__l.__data_;
      v49 = v27->__r_.__value_.__r.__words[2];
      *__p = v28;
      v27->__r_.__value_.__l.__size_ = 0;
      v27->__r_.__value_.__r.__words[2] = 0;
      v27->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(&v50, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      v10 = v50;
      v11 = v51;
      v29 = v52;
      v12 = v53;
      LOBYTE(v2) = HIBYTE(v54);
      v53 = 0.0;
      v54 = 0;
      v52 = 0.0;
      v42 = v29;
      if (SHIBYTE(v49) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v46.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v55.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v47.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_44;
      }

      v30 = v47.__r_.__value_.__r.__words[0];
    }

    operator delete(v30);
    goto LABEL_44;
  }

  v14 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(v2);
  if ((*v14 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v14);
  }

  std::operator+<char>();
  realityio::DetailedError::DetailedError(&v50, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
  v10 = v50;
  v11 = v51;
  v17 = v52;
  v12 = v53;
  LOBYTE(v2) = HIBYTE(v54);
  v53 = 0.0;
  v54 = 0;
  v52 = 0.0;
  v42 = v17;
  if (SHIBYTE(v49) < 0)
  {
    operator delete(__p[0]);
  }

  v13 = 0;
LABEL_46:
  v32 = v45;
  if (v45 && atomic_fetch_add_explicit((v45 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v32 + 8))(v32);
  }

  v15 = v42;
  if (!v13)
  {
LABEL_50:
    if ((v2 & 0x80) != 0)
    {
      operator delete(*&v15);
    }
  }

  v33 = v11;
  *&v34 = v10;
  if (!v13)
  {
    *&v34 = 0.0;
    v33 = 0.0;
  }

  *(&v34 + 1) = v33;
  if (v13)
  {
    v35 = v15;
    *&v37 = v35;
  }

  else
  {
    *&v37 = 0.0;
  }

  if (v13)
  {
    v36 = v12;
    v38 = v36;
  }

  else
  {
    v38 = 0.0;
  }

  *(&v37 + 1) = v38;
  *v3 = v34;
  v3[1] = v37;
  v39 = *MEMORY[0x277D85DE8];
}

void sub_2476DFA7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, atomic_uint *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a12)
  {
    if (atomic_fetch_add_explicit(a12 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a12 + 8))(a12);
    }
  }

  _Unwind_Resume(exception_object);
}

void _ZN12_GLOBAL__N_114usdToRe_matrixIN32pxrInternal__aapl__pxrReserved__10GfMatrix3dENS1_7GfVec3dE13simd_float3x3Dv3_fLm3EfEEvRKNS1_12UsdAttributeENSt3__110shared_ptrIhEEPN9realityio6InputsE10RETypeInfo(pxrInternal__aapl__pxrReserved__::UsdObject *a1, int8x16_t **a2)
{
  v65 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v51, a1);
    v4 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v51);
    if (!pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredTimeCodeRange(v4))
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v51);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v7);
    }

    v5 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v51);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v5);
    v50 = v8;
    if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1) & 1) == 0)
    {
      Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
      if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
      }

      std::operator+<char>();
      realityio::DetailedError::DetailedError(&v57, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      v10 = v57;
      v19 = v59;
      v46 = v60;
      v47 = v58;
      v48 = v61;
      v59 = 0;
      v60 = 0.0;
      v61 = 0.0;
      v49 = v19;
      if (SHIBYTE(v56) < 0)
      {
        operator delete(__p[0]);
      }

      v12 = 0;
LABEL_45:
      v35 = v52;
      if (v52 && atomic_fetch_add_explicit((v52 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        v45 = v18;
        (*(*v35 + 8))(v35);
        v18 = v45;
      }

      if (v12)
      {
        v36.f64[0] = v46;
        v37.f64[0] = v47;
        v36.f64[1] = v48;
        *v14.i32 = v10;
        *&v37.f64[1] = v49;
        v38 = vcvt_hight_f32_f64(vcvt_f32_f64(v36), v37);
        goto LABEL_54;
      }

      goto LABEL_50;
    }

    v64 = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfMatrix3d>(v63))
      {
        v9 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfMatrix3d>(v63);
        v10 = *v9;
        v46 = *(v9 + 24);
        v47 = *(v9 + 8);
        v49 = *(v9 + 16);
        v48 = *(v9 + 32);
        v11 = *(v9 + 40);
        v43 = v11;
        v44 = *(v9 + 56);
        v12 = 1;
LABEL_44:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v63);
        v18 = vcvt_hight_f32_f64(vcvt_f32_f64(v43), v44);
        goto LABEL_45;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v63);
      {
        v22 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfMatrix3d>(v63);
        v23 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v62, v22);
        v12 = v62.__r_.__value_.__l.__size_ != 0;
        if (v62.__r_.__value_.__l.__size_)
        {
          v24 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfMatrix3d>(v23);
          v10 = *v24;
          v46 = *(v24 + 24);
          v47 = *(v24 + 8);
          v49 = *(v24 + 16);
          v48 = *(v24 + 32);
          v25 = *(v24 + 40);
          v43 = v25;
          v44 = *(v24 + 56);
        }

        else
        {
          v41 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
          if ((*v41 & 0xFFFFFFFFFFFFFFF8) == 0)
          {
            pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v41);
          }

          std::operator+<char>();
          realityio::DetailedError::DetailedError(&v57, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
          v10 = v57;
          v42 = v59;
          v46 = v60;
          v47 = v58;
          v48 = v61;
          v59 = 0;
          v60 = 0.0;
          v61 = 0.0;
          v49 = v42;
          if (SHIBYTE(v56) < 0)
          {
            operator delete(__p[0]);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v62);
        goto LABEL_44;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "Value is not of the given type");
      realityio::DetailedError::DetailedError(&v57, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      v10 = v57;
      v34 = v59;
      v46 = v60;
      v47 = v58;
      v48 = v61;
      v59 = 0;
      v60 = 0.0;
      v61 = 0.0;
      v49 = v34;
      if ((SHIBYTE(v56) & 0x80000000) == 0)
      {
LABEL_43:
        v12 = 0;
        goto LABEL_44;
      }

      v33 = __p[0];
    }

    else
    {
      v17 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
      if ((*v17 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v17);
      }

      std::operator+<char>();
      v26 = std::string::append(&v54, ") at the given time: ");
      v27 = *&v26->__r_.__value_.__l.__data_;
      v62.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
      *&v62.__r_.__value_.__l.__data_ = v27;
      v26->__r_.__value_.__l.__size_ = 0;
      v26->__r_.__value_.__r.__words[2] = 0;
      v26->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v53, v50);
      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v28 = &v53;
      }

      else
      {
        v28 = v53.__r_.__value_.__r.__words[0];
      }

      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v53.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v53.__r_.__value_.__l.__size_;
      }

      v30 = std::string::append(&v62, v28, size);
      v31 = *&v30->__r_.__value_.__l.__data_;
      v56 = v30->__r_.__value_.__r.__words[2];
      *__p = v31;
      v30->__r_.__value_.__l.__size_ = 0;
      v30->__r_.__value_.__r.__words[2] = 0;
      v30->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(&v57, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      v10 = v57;
      v32 = v59;
      v46 = v60;
      v47 = v58;
      v48 = v61;
      v59 = 0;
      v60 = 0.0;
      v61 = 0.0;
      v49 = v32;
      if (SHIBYTE(v56) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v53.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v62.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v54.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_43;
      }

      v33 = v54.__r_.__value_.__r.__words[0];
    }

    operator delete(v33);
    goto LABEL_43;
  }

  v6 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
  if ((*v6 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
  }

  std::operator+<char>();
  realityio::DetailedError::DetailedError(&v57, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
  v15 = v59;
  v59 = 0;
  v60 = 0.0;
  v16 = v61;
  v61 = 0.0;
  v49 = v15;
  if ((SHIBYTE(v56) & 0x80000000) == 0)
  {
    goto LABEL_51;
  }

  v48 = v16;
  operator delete(__p[0]);
LABEL_50:
  v16 = v48;
LABEL_51:
  v38 = 0uLL;
  v14.i64[0] = 0;
  if ((*&v16 & 0x8000000000000000) != 0)
  {
    operator delete(v49);
    v14.i64[0] = 0;
    v38 = 0uLL;
  }

  v18 = 0uLL;
LABEL_54:
  v39 = vextq_s8(v38, v14, 4uLL);
  v39.i32[0] = v14.i32[0];
  v38.i32[2] = v18.i32[0];
  *v3 = v39;
  v3[1] = v38;
  v3[2] = vextq_s8(v18, v39, 4uLL);
  v40 = *MEMORY[0x277D85DE8];
}

void sub_2476E0104(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, atomic_uint *a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a22)
  {
    if (atomic_fetch_add_explicit(a22 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a22 + 8))(a22);
    }
  }

  _Unwind_Resume(exception_object);
}

void _ZN12_GLOBAL__N_114usdToRe_matrixIN32pxrInternal__aapl__pxrReserved__10GfMatrix4dENS1_7GfVec4dE13simd_float4x4Dv4_fLm4EfEEvRKNS1_12UsdAttributeENSt3__110shared_ptrIhEEPN9realityio6InputsE10RETypeInfo(pxrInternal__aapl__pxrReserved__::UsdObject *a1, float32x4_t **a2)
{
  v76 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v62, a1);
    v7 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v62);
    if (!pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredTimeCodeRange(v7))
    {
      v10 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v62);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v10);
    }

    v8 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v62);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v8);
    v61 = v11;
    if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1) & 1) == 0)
    {
      Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
      if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
      }

      std::operator+<char>();
      realityio::DetailedError::DetailedError(&v68, 200, &realityio::FoundationErrorCategory(void)::instance, &v66);
      v13 = v68;
      v24 = v70;
      v57 = v71;
      v58 = v69;
      v59 = v72;
      v70 = 0;
      v71 = 0.0;
      v72 = 0.0;
      __p = v24;
      if (SHIBYTE(v67) < 0)
      {
        operator delete(v66);
      }

      v14 = 0;
LABEL_45:
      v39 = v63;
      if (v63 && atomic_fetch_add_explicit((v63 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        v54 = v20;
        v56 = v19;
        v50 = v22;
        v52 = v21;
        v48 = v23;
        (*(*v39 + 8))(v39);
        v23 = v48;
        v22 = v50;
        v21 = v52;
        v20 = v54;
        v19 = v56;
      }

      if (v14)
      {
        *&v40.f64[0] = __p;
        v41 = v13;
        v40.f64[1] = v57;
        v42.f64[0] = v59;
        v42.f64[1] = v58;
        v43 = vcvt_hight_f32_f64(vcvt_f32_f64(v42), v40);
        goto LABEL_54;
      }

      goto LABEL_50;
    }

    v75 = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfMatrix4d>(v74))
      {
        v12 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfMatrix4d>(v74);
        v13 = *v12;
        v57 = *(v12 + 24);
        v58 = *(v12 + 8);
        __p = *(v12 + 16);
        v4 = *(v12 + 40);
        v59 = *(v12 + 32);
        v3 = *(v12 + 48);
        v2 = *(v12 + 56);
        v53 = *(v12 + 96);
        v55 = *(v12 + 112);
        v14 = 1;
        v49 = *(v12 + 64);
        v51 = *(v12 + 80);
LABEL_44:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v74);
        v21 = v4;
        v20 = v3;
        v19 = v2;
        v22 = vcvt_hight_f32_f64(vcvt_f32_f64(v49), v51);
        v23 = vcvt_hight_f32_f64(vcvt_f32_f64(v53), v55);
        goto LABEL_45;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v74);
      {
        v27 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfMatrix4d>(v74);
        v28 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v73, v27);
        v14 = v73.__r_.__value_.__l.__size_ != 0;
        if (v73.__r_.__value_.__l.__size_)
        {
          v29 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfMatrix4d>(v28);
          v13 = *v29;
          v57 = *(v29 + 24);
          v58 = *(v29 + 8);
          __p = *(v29 + 16);
          v4 = *(v29 + 40);
          v59 = *(v29 + 32);
          v3 = *(v29 + 48);
          v2 = *(v29 + 56);
          v53 = *(v29 + 96);
          v55 = *(v29 + 112);
          v49 = *(v29 + 64);
          v51 = *(v29 + 80);
        }

        else
        {
          v46 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
          if ((*v46 & 0xFFFFFFFFFFFFFFF8) == 0)
          {
            pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v46);
          }

          std::operator+<char>();
          realityio::DetailedError::DetailedError(&v68, 200, &realityio::FoundationErrorCategory(void)::instance, &v66);
          v13 = v68;
          v47 = v70;
          v57 = v71;
          v58 = v69;
          v59 = v72;
          v70 = 0;
          v71 = 0.0;
          v72 = 0.0;
          __p = v47;
          if (SHIBYTE(v67) < 0)
          {
            operator delete(v66);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v73);
        goto LABEL_44;
      }

      std::string::basic_string[abi:ne200100]<0>(&v66, "Value is not of the given type");
      realityio::DetailedError::DetailedError(&v68, 200, &realityio::FoundationErrorCategory(void)::instance, &v66);
      v13 = v68;
      v38 = v70;
      v57 = v71;
      v58 = v69;
      v59 = v72;
      v70 = 0;
      v71 = 0.0;
      v72 = 0.0;
      __p = v38;
      if ((SHIBYTE(v67) & 0x80000000) == 0)
      {
LABEL_43:
        v14 = 0;
        goto LABEL_44;
      }

      v37 = v66;
    }

    else
    {
      v18 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
      if ((*v18 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v18);
      }

      std::operator+<char>();
      v30 = std::string::append(&v65, ") at the given time: ");
      v31 = *&v30->__r_.__value_.__l.__data_;
      v73.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
      *&v73.__r_.__value_.__l.__data_ = v31;
      v30->__r_.__value_.__l.__size_ = 0;
      v30->__r_.__value_.__r.__words[2] = 0;
      v30->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v64, v61);
      if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v32 = &v64;
      }

      else
      {
        v32 = v64.__r_.__value_.__r.__words[0];
      }

      if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v64.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v64.__r_.__value_.__l.__size_;
      }

      v34 = std::string::append(&v73, v32, size);
      v35 = *&v34->__r_.__value_.__l.__data_;
      v67 = v34->__r_.__value_.__r.__words[2];
      v66 = v35;
      v34->__r_.__value_.__l.__size_ = 0;
      v34->__r_.__value_.__r.__words[2] = 0;
      v34->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(&v68, 200, &realityio::FoundationErrorCategory(void)::instance, &v66);
      v13 = v68;
      v36 = v70;
      v57 = v71;
      v58 = v69;
      v59 = v72;
      v70 = 0;
      v71 = 0.0;
      v72 = 0.0;
      __p = v36;
      if (SHIBYTE(v67) < 0)
      {
        operator delete(v66);
      }

      if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v64.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v73.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v65.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_43;
      }

      v37 = v65.__r_.__value_.__r.__words[0];
    }

    operator delete(v37);
    goto LABEL_43;
  }

  v9 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
  if ((*v9 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v9);
  }

  std::operator+<char>();
  realityio::DetailedError::DetailedError(&v68, 200, &realityio::FoundationErrorCategory(void)::instance, &v66);
  v16 = v70;
  v70 = 0;
  v71 = 0.0;
  v17 = v72;
  v72 = 0.0;
  __p = v16;
  if ((SHIBYTE(v67) & 0x80000000) == 0)
  {
    goto LABEL_51;
  }

  v59 = v17;
  operator delete(v66);
LABEL_50:
  v17 = v59;
LABEL_51:
  v19 = 0.0;
  if ((*&v17 & 0x8000000000000000) != 0)
  {
    operator delete(__p);
    v19 = 0.0;
  }

  v43 = 0uLL;
  v20 = 0.0;
  v21 = 0.0;
  v41 = 0.0;
  v22 = 0uLL;
  v23 = 0uLL;
LABEL_54:
  v44 = v43;
  v44.f32[0] = v41;
  v43.f32[1] = v21;
  v43.i64[1] = __PAIR64__(LODWORD(v19), LODWORD(v20));
  *v6 = v44;
  v6[1] = v43;
  v6[2] = v22;
  v6[3] = v23;
  v45 = *MEMORY[0x277D85DE8];
}

void sub_2476E07DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, atomic_uint *a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a28)
  {
    if (atomic_fetch_add_explicit(a28 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a28 + 8))(a28);
    }
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::usdToRe_String(pxrInternal__aapl__pxrReserved__::UsdAttribute *a1, uint64_t *a2, uint64_t a3, _OWORD *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  memset(&__p, 0, sizeof(__p));
  *v26 = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(a1);
  if (!atomic_load(MEMORY[0x277D86578]))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::TfToken>(a1, v26);
    if (v26[0] == 1)
    {
      v9 = *&v26[8];
      if ((v26[8] & 7) == 0)
      {
        v10 = *&v26[8];
LABEL_25:
        if ((v9 & 7) != 0)
        {
          atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

LABEL_27:
        v12 = (v10 & 0xFFFFFFFFFFFFFFF8);
        if ((v10 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          EmptyString = (v12 + 4);
        }

        else
        {
          EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v8);
        }

        std::string::operator=(&__p, EmptyString);
        if ((v10 & 7) != 0)
        {
          atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_release);
        }

        goto LABEL_32;
      }

      if (atomic_fetch_add_explicit((*&v26[8] & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
      {
        v10 = v9;
      }

      else
      {
        v10 = v9 & 0xFFFFFFFFFFFFFFF8;
      }

      if (v26[0])
      {
        v9 = *&v26[8];
        goto LABEL_25;
      }
    }

    else
    {
      v10 = 0;
    }

    if (v27 < 0)
    {
      operator delete(*&v26[24]);
    }

    goto LABEL_27;
  }

  realityio::getAttributeValue<std::string>(a1, v26);
  if ((v26[0] & 1) == 0)
  {
    memset(&buf, 0, sizeof(buf));
    goto LABEL_18;
  }

  v11 = &v26[8];
  if ((v26[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&buf, *&v26[8], *&v26[16]);
    if (v26[0])
    {
      if ((v26[31] & 0x80000000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

LABEL_18:
    if ((v27 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    v11 = &v26[24];
LABEL_20:
    operator delete(*v11);
    goto LABEL_21;
  }

  buf = *&v26[8];
LABEL_21:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = buf;
LABEL_32:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v23, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v23 = __p;
  }

  v14 = *a2;
  v15 = a4[1];
  *v26 = *a4;
  *&v26[16] = v15;
  v17 = v16;
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
    if (v17)
    {
      goto LABEL_42;
    }
  }

  else if (v16)
  {
    goto LABEL_42;
  }

  v18 = *(realityio::logObjects(v16) + 24);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = a4[1];
    *v26 = *a4;
    *&v26[16] = v19;
    Name = RETypeInfoGetName();
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a1, v26);
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v26);
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = Name;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = Text;
    _os_log_impl(&dword_247485000, v18, OS_LOG_TYPE_DEFAULT, "Unsupported string format for (%s) at (%s)", &buf, 0x16u);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v26);
  }

LABEL_42:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_2476E0BBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  realityio::Result<std::string,realityio::DetailedError>::~Result(&a27);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::usdToRe_AssetHandle(pxrInternal__aapl__pxrReserved__::UsdObject *a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__ *a3)
{
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(a1, v10);
  if (v10[0] == 1)
  {
    v6 = *a2;
    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v8, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
    }

    else
    {
      v8 = v11;
    }

    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v12.__r_.__value_.__l.__data_, v12.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v12;
    }

    REAssetHandleSet();
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }
  }

  return realityio::Result<pxrInternal__aapl__pxrReserved__::SdfAssetPath,realityio::DetailedError>::~Result(v10);
}

void sub_2476E0D50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::SdfAssetPath,realityio::DetailedError>::~Result(&a19);
  _Unwind_Resume(a1);
}

void anonymous namespace::usdToRe_Array<unsigned char,unsigned char>(uint64_t a1, uint64_t *a2, uint64_t a3, __int128 *a4)
{
  v49 = *MEMORY[0x277D85DE8];
  v46 = 0;
  v45 = 0u;
  v44 = 0u;
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>(a1, v47);
  if (v47[0])
  {
    v41 = *&v47[8];
    v42 = *&v47[24];
    v7 = v48;
  }

  else
  {
    v41 = v44;
    v42 = v45;
    v7 = v46;
  }

  v43 = v7;
  if (v7)
  {
    v8 = (v7 - 16);
    if (*(&v42 + 1))
    {
      v8 = *(&v42 + 1);
    }

    atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>,realityio::DetailedError>::~Result(v47);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v44);
  v9 = v41;
  v10 = a4[1];
  *v47 = *a4;
  *&v47[16] = v10;
  if ((RETypeInfoIsList() & 1) != 0 || (v11 = a4[1], *v47 = *a4, *&v47[16] = v11, RETypeInfoIsArray()))
  {
    memset(v47, 0, 32);
    v44 = *v47;
    v45 = *&v47[16];
    if ((RETypeInfoIsList() & 1) != 0 || (v44 = *v47, v45 = *&v47[16], RETypeInfoIsArray()))
    {
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v12 = *a2;
      v13 = a2[1];
      v37[0] = v12;
      v37[1] = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = a4[1];
      v44 = *a4;
      v45 = v14;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      v15 = v38;
      if (v39 != v38)
      {
        v16 = 0;
        v17 = 0;
        do
        {
          v18 = *&v15[v16];
          pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DetachIfNotUnique(&v41);
          *v18 = *(v43 + v17++);
          v15 = v38;
          ++v16;
        }

        while (v17 < v39 - v38);
      }

      *&v44 = &v38;
      v19 = &v44;
LABEL_20:
      std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](v19);
      goto LABEL_21;
    }

    v21 = a4[1];
    v44 = *a4;
    v45 = v21;
    v32 = *a1;
    v22 = *(a1 + 8);
    v33 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 48), 1uLL, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v34, (a1 + 16));
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v35, (a1 + 20));
    v23 = *(a1 + 24);
    v36 = v23;
    if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v36 &= 0xFFFFFFFFFFFFFFF8;
    }

    if ((v36 & 7) != 0)
    {
      atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v34);
    if (v33)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v33);
    }

    if (v24)
    {
      v25 = *a2;
      v26 = a2[1];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      v44 = 0uLL;
      *&v45 = 0;
      v27 = *a2;
      v28 = a2[1];
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      if (v9)
      {
        v29 = 0;
        for (i = 0; i != v9; ++i)
        {
          v31 = *(v44 + v29);
          pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DetachIfNotUnique(&v41);
          *v31 = *(v43 + i);
          v29 += 16;
        }
      }

      v38 = &v44;
      v19 = &v38;
      goto LABEL_20;
    }
  }

LABEL_21:
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v41);
  v20 = *MEMORY[0x277D85DE8];
}

void sub_2476E10F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  a16 = &a25;
  std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](&a16);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a19);
  _Unwind_Resume(a1);
}

void anonymous namespace::usdToRe_Array<unsigned int,unsigned short>(uint64_t a1, uint64_t *a2, uint64_t a3, __int128 *a4)
{
  v49 = *MEMORY[0x277D85DE8];
  v46 = 0;
  v45 = 0u;
  v44 = 0u;
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>(a1, v47);
  if (v47[0])
  {
    v41 = *&v47[8];
    v42 = *&v47[24];
    v7 = v48;
  }

  else
  {
    v41 = v44;
    v42 = v45;
    v7 = v46;
  }

  v43 = v7;
  if (v7)
  {
    v8 = (v7 - 16);
    if (*(&v42 + 1))
    {
      v8 = *(&v42 + 1);
    }

    atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>,realityio::DetailedError>::~Result(v47);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v44);
  v9 = v41;
  v10 = a4[1];
  *v47 = *a4;
  *&v47[16] = v10;
  if ((RETypeInfoIsList() & 1) != 0 || (v11 = a4[1], *v47 = *a4, *&v47[16] = v11, RETypeInfoIsArray()))
  {
    memset(v47, 0, 32);
    v44 = *v47;
    v45 = *&v47[16];
    if ((RETypeInfoIsList() & 1) != 0 || (v44 = *v47, v45 = *&v47[16], RETypeInfoIsArray()))
    {
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v12 = *a2;
      v13 = a2[1];
      v37[0] = v12;
      v37[1] = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = a4[1];
      v44 = *a4;
      v45 = v14;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      v15 = v38;
      if (v39 != v38)
      {
        v16 = 0;
        v17 = 0;
        do
        {
          v18 = *&v15[v16];
          pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DetachIfNotUnique(&v41);
          *v18 = *(v43 + 4 * v17++);
          v15 = v38;
          ++v16;
        }

        while (v17 < v39 - v38);
      }

      *&v44 = &v38;
      v19 = &v44;
LABEL_20:
      std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](v19);
      goto LABEL_21;
    }

    v21 = a4[1];
    v44 = *a4;
    v45 = v21;
    v32 = *a1;
    v22 = *(a1 + 8);
    v33 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 48), 1uLL, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v34, (a1 + 16));
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v35, (a1 + 20));
    v23 = *(a1 + 24);
    v36 = v23;
    if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v36 &= 0xFFFFFFFFFFFFFFF8;
    }

    if ((v36 & 7) != 0)
    {
      atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v34);
    if (v33)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v33);
    }

    if (v24)
    {
      v25 = *a2;
      v26 = a2[1];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      v44 = 0uLL;
      *&v45 = 0;
      v27 = *a2;
      v28 = a2[1];
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      if (v9)
      {
        v29 = 0;
        for (i = 0; i != v9; ++i)
        {
          v31 = *(v44 + v29);
          pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DetachIfNotUnique(&v41);
          *v31 = *(v43 + 4 * i);
          v29 += 16;
        }
      }

      v38 = &v44;
      v19 = &v38;
      goto LABEL_20;
    }
  }

LABEL_21:
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v41);
  v20 = *MEMORY[0x277D85DE8];
}

void sub_2476E1520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  a16 = &a25;
  std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](&a16);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a19);
  _Unwind_Resume(a1);
}

void anonymous namespace::usdToRe_Array<unsigned int,unsigned int>(uint64_t a1, uint64_t *a2, uint64_t a3, __int128 *a4)
{
  v49 = *MEMORY[0x277D85DE8];
  v46 = 0;
  v45 = 0u;
  v44 = 0u;
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>(a1, v47);
  if (v47[0])
  {
    v41 = *&v47[8];
    v42 = *&v47[24];
    v7 = v48;
  }

  else
  {
    v41 = v44;
    v42 = v45;
    v7 = v46;
  }

  v43 = v7;
  if (v7)
  {
    v8 = (v7 - 16);
    if (*(&v42 + 1))
    {
      v8 = *(&v42 + 1);
    }

    atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>,realityio::DetailedError>::~Result(v47);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v44);
  v9 = v41;
  v10 = a4[1];
  *v47 = *a4;
  *&v47[16] = v10;
  if ((RETypeInfoIsList() & 1) != 0 || (v11 = a4[1], *v47 = *a4, *&v47[16] = v11, RETypeInfoIsArray()))
  {
    memset(v47, 0, 32);
    v44 = *v47;
    v45 = *&v47[16];
    if ((RETypeInfoIsList() & 1) != 0 || (v44 = *v47, v45 = *&v47[16], RETypeInfoIsArray()))
    {
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v12 = *a2;
      v13 = a2[1];
      v37[0] = v12;
      v37[1] = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = a4[1];
      v44 = *a4;
      v45 = v14;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      v15 = v38;
      if (v39 != v38)
      {
        v16 = 0;
        v17 = 0;
        do
        {
          v18 = *&v15[v16];
          pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DetachIfNotUnique(&v41);
          *v18 = *(v43 + 4 * v17++);
          v15 = v38;
          ++v16;
        }

        while (v17 < v39 - v38);
      }

      *&v44 = &v38;
      v19 = &v44;
LABEL_20:
      std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](v19);
      goto LABEL_21;
    }

    v21 = a4[1];
    v44 = *a4;
    v45 = v21;
    v32 = *a1;
    v22 = *(a1 + 8);
    v33 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 48), 1uLL, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v34, (a1 + 16));
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v35, (a1 + 20));
    v23 = *(a1 + 24);
    v36 = v23;
    if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v36 &= 0xFFFFFFFFFFFFFFF8;
    }

    if ((v36 & 7) != 0)
    {
      atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v34);
    if (v33)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v33);
    }

    if (v24)
    {
      v25 = *a2;
      v26 = a2[1];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      v44 = 0uLL;
      *&v45 = 0;
      v27 = *a2;
      v28 = a2[1];
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      if (v9)
      {
        v29 = 0;
        for (i = 0; i != v9; ++i)
        {
          v31 = *(v44 + v29);
          pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DetachIfNotUnique(&v41);
          *v31 = *(v43 + 4 * i);
          v29 += 16;
        }
      }

      v38 = &v44;
      v19 = &v38;
      goto LABEL_20;
    }
  }

LABEL_21:
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v41);
  v20 = *MEMORY[0x277D85DE8];
}

void sub_2476E194C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  a16 = &a25;
  std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](&a16);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a19);
  _Unwind_Resume(a1);
}

void anonymous namespace::usdToRe_Array<unsigned long long,unsigned long long>(pxrInternal__aapl__pxrReserved__::UsdObject *this, uint64_t *a2, uint64_t a3, __int128 *a4)
{
  v49 = *MEMORY[0x277D85DE8];
  v46 = 0;
  v45 = 0u;
  v44 = 0u;
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>>(v47, this);
  if (v47[0])
  {
    v41 = *&v47[8];
    v42 = *&v47[24];
    v7 = v48;
  }

  else
  {
    v41 = v44;
    v42 = v45;
    v7 = v46;
  }

  v43 = v7;
  if (v7)
  {
    v8 = (v7 - 16);
    if (*(&v42 + 1))
    {
      v8 = *(&v42 + 1);
    }

    atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>,realityio::DetailedError>::~Result(v47);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v44);
  v9 = v41;
  v10 = a4[1];
  *v47 = *a4;
  *&v47[16] = v10;
  if ((RETypeInfoIsList() & 1) != 0 || (v11 = a4[1], *v47 = *a4, *&v47[16] = v11, RETypeInfoIsArray()))
  {
    memset(v47, 0, 32);
    v44 = *v47;
    v45 = *&v47[16];
    if ((RETypeInfoIsList() & 1) != 0 || (v44 = *v47, v45 = *&v47[16], RETypeInfoIsArray()))
    {
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v12 = *a2;
      v13 = a2[1];
      v37[0] = v12;
      v37[1] = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = a4[1];
      v44 = *a4;
      v45 = v14;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      v15 = v38;
      if (v39 != v38)
      {
        v16 = 0;
        v17 = 0;
        do
        {
          v18 = *&v15[v16];
          pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_DetachIfNotUnique(&v41);
          *v18 = *(v43 + 8 * v17++);
          v15 = v38;
          ++v16;
        }

        while (v17 < v39 - v38);
      }

      *&v44 = &v38;
      v19 = &v44;
LABEL_20:
      std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](v19);
      goto LABEL_21;
    }

    v21 = a4[1];
    v44 = *a4;
    v45 = v21;
    v32 = *this;
    v22 = *(this + 1);
    v33 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 48), 1uLL, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v34, this + 4);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v35, this + 5);
    v23 = *(this + 3);
    v36 = v23;
    if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v36 &= 0xFFFFFFFFFFFFFFF8;
    }

    if ((v36 & 7) != 0)
    {
      atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v34);
    if (v33)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v33);
    }

    if (v24)
    {
      v25 = *a2;
      v26 = a2[1];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      v44 = 0uLL;
      *&v45 = 0;
      v27 = *a2;
      v28 = a2[1];
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      if (v9)
      {
        v29 = 0;
        for (i = 0; i != v9; ++i)
        {
          v31 = *(v44 + v29);
          pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_DetachIfNotUnique(&v41);
          *v31 = *(v43 + 8 * i);
          v29 += 16;
        }
      }

      v38 = &v44;
      v19 = &v38;
      goto LABEL_20;
    }
  }

LABEL_21:
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v41);
  v20 = *MEMORY[0x277D85DE8];
}

void sub_2476E1D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  a16 = &a25;
  std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](&a16);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a19);
  _Unwind_Resume(a1);
}

void anonymous namespace::usdToRe_Array<unsigned long long,unsigned long>(pxrInternal__aapl__pxrReserved__::UsdObject *this, uint64_t *a2, uint64_t a3, __int128 *a4)
{
  v49 = *MEMORY[0x277D85DE8];
  v46 = 0;
  v45 = 0u;
  v44 = 0u;
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>>(v47, this);
  if (v47[0])
  {
    v41 = *&v47[8];
    v42 = *&v47[24];
    v7 = v48;
  }

  else
  {
    v41 = v44;
    v42 = v45;
    v7 = v46;
  }

  v43 = v7;
  if (v7)
  {
    v8 = (v7 - 16);
    if (*(&v42 + 1))
    {
      v8 = *(&v42 + 1);
    }

    atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>,realityio::DetailedError>::~Result(v47);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v44);
  v9 = v41;
  v10 = a4[1];
  *v47 = *a4;
  *&v47[16] = v10;
  if ((RETypeInfoIsList() & 1) != 0 || (v11 = a4[1], *v47 = *a4, *&v47[16] = v11, RETypeInfoIsArray()))
  {
    memset(v47, 0, 32);
    v44 = *v47;
    v45 = *&v47[16];
    if ((RETypeInfoIsList() & 1) != 0 || (v44 = *v47, v45 = *&v47[16], RETypeInfoIsArray()))
    {
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v12 = *a2;
      v13 = a2[1];
      v37[0] = v12;
      v37[1] = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = a4[1];
      v44 = *a4;
      v45 = v14;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      v15 = v38;
      if (v39 != v38)
      {
        v16 = 0;
        v17 = 0;
        do
        {
          v18 = *&v15[v16];
          pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_DetachIfNotUnique(&v41);
          *v18 = *(v43 + 8 * v17++);
          v15 = v38;
          ++v16;
        }

        while (v17 < v39 - v38);
      }

      *&v44 = &v38;
      v19 = &v44;
LABEL_20:
      std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](v19);
      goto LABEL_21;
    }

    v21 = a4[1];
    v44 = *a4;
    v45 = v21;
    v32 = *this;
    v22 = *(this + 1);
    v33 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 48), 1uLL, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v34, this + 4);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v35, this + 5);
    v23 = *(this + 3);
    v36 = v23;
    if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v36 &= 0xFFFFFFFFFFFFFFF8;
    }

    if ((v36 & 7) != 0)
    {
      atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v34);
    if (v33)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v33);
    }

    if (v24)
    {
      v25 = *a2;
      v26 = a2[1];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      v44 = 0uLL;
      *&v45 = 0;
      v27 = *a2;
      v28 = a2[1];
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      if (v9)
      {
        v29 = 0;
        for (i = 0; i != v9; ++i)
        {
          v31 = *(v44 + v29);
          pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_DetachIfNotUnique(&v41);
          *v31 = *(v43 + 8 * i);
          v29 += 16;
        }
      }

      v38 = &v44;
      v19 = &v38;
      goto LABEL_20;
    }
  }

LABEL_21:
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v41);
  v20 = *MEMORY[0x277D85DE8];
}

void sub_2476E21AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  a16 = &a25;
  std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](&a16);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a19);
  _Unwind_Resume(a1);
}

void anonymous namespace::usdToRe_Array<int,char>(uint64_t a1, uint64_t *a2, uint64_t a3, __int128 *a4)
{
  v49 = *MEMORY[0x277D85DE8];
  v46 = 0;
  v45 = 0u;
  v44 = 0u;
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<int>>(a1, v47);
  if (v47[0])
  {
    v41 = *&v47[8];
    v42 = *&v47[24];
    v7 = v48;
  }

  else
  {
    v41 = v44;
    v42 = v45;
    v7 = v46;
  }

  v43 = v7;
  if (v7)
  {
    v8 = (v7 - 16);
    if (*(&v42 + 1))
    {
      v8 = *(&v42 + 1);
    }

    atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<int>,realityio::DetailedError>::~Result(v47);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v44);
  v9 = v41;
  v10 = a4[1];
  *v47 = *a4;
  *&v47[16] = v10;
  if ((RETypeInfoIsList() & 1) != 0 || (v11 = a4[1], *v47 = *a4, *&v47[16] = v11, RETypeInfoIsArray()))
  {
    memset(v47, 0, 32);
    v44 = *v47;
    v45 = *&v47[16];
    if ((RETypeInfoIsList() & 1) != 0 || (v44 = *v47, v45 = *&v47[16], RETypeInfoIsArray()))
    {
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v12 = *a2;
      v13 = a2[1];
      v37[0] = v12;
      v37[1] = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = a4[1];
      v44 = *a4;
      v45 = v14;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      v15 = v38;
      if (v39 != v38)
      {
        v16 = 0;
        v17 = 0;
        do
        {
          v18 = *&v15[v16];
          pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(&v41);
          *v18 = *(v43 + 4 * v17++);
          v15 = v38;
          ++v16;
        }

        while (v17 < v39 - v38);
      }

      *&v44 = &v38;
      v19 = &v44;
LABEL_20:
      std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](v19);
      goto LABEL_21;
    }

    v21 = a4[1];
    v44 = *a4;
    v45 = v21;
    v32 = *a1;
    v22 = *(a1 + 8);
    v33 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 48), 1uLL, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v34, (a1 + 16));
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v35, (a1 + 20));
    v23 = *(a1 + 24);
    v36 = v23;
    if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v36 &= 0xFFFFFFFFFFFFFFF8;
    }

    if ((v36 & 7) != 0)
    {
      atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v34);
    if (v33)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v33);
    }

    if (v24)
    {
      v25 = *a2;
      v26 = a2[1];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      v44 = 0uLL;
      *&v45 = 0;
      v27 = *a2;
      v28 = a2[1];
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      if (v9)
      {
        v29 = 0;
        for (i = 0; i != v9; ++i)
        {
          v31 = *(v44 + v29);
          pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(&v41);
          *v31 = *(v43 + 4 * i);
          v29 += 16;
        }
      }

      v38 = &v44;
      v19 = &v38;
      goto LABEL_20;
    }
  }

LABEL_21:
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v41);
  v20 = *MEMORY[0x277D85DE8];
}

void sub_2476E25D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  a16 = &a25;
  std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](&a16);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a19);
  _Unwind_Resume(a1);
}

void anonymous namespace::usdToRe_Array<int,signed char>(uint64_t a1, uint64_t *a2, uint64_t a3, __int128 *a4)
{
  v49 = *MEMORY[0x277D85DE8];
  v46 = 0;
  v45 = 0u;
  v44 = 0u;
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<int>>(a1, v47);
  if (v47[0])
  {
    v41 = *&v47[8];
    v42 = *&v47[24];
    v7 = v48;
  }

  else
  {
    v41 = v44;
    v42 = v45;
    v7 = v46;
  }

  v43 = v7;
  if (v7)
  {
    v8 = (v7 - 16);
    if (*(&v42 + 1))
    {
      v8 = *(&v42 + 1);
    }

    atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<int>,realityio::DetailedError>::~Result(v47);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v44);
  v9 = v41;
  v10 = a4[1];
  *v47 = *a4;
  *&v47[16] = v10;
  if ((RETypeInfoIsList() & 1) != 0 || (v11 = a4[1], *v47 = *a4, *&v47[16] = v11, RETypeInfoIsArray()))
  {
    memset(v47, 0, 32);
    v44 = *v47;
    v45 = *&v47[16];
    if ((RETypeInfoIsList() & 1) != 0 || (v44 = *v47, v45 = *&v47[16], RETypeInfoIsArray()))
    {
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v12 = *a2;
      v13 = a2[1];
      v37[0] = v12;
      v37[1] = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = a4[1];
      v44 = *a4;
      v45 = v14;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      v15 = v38;
      if (v39 != v38)
      {
        v16 = 0;
        v17 = 0;
        do
        {
          v18 = *&v15[v16];
          pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(&v41);
          *v18 = *(v43 + 4 * v17++);
          v15 = v38;
          ++v16;
        }

        while (v17 < v39 - v38);
      }

      *&v44 = &v38;
      v19 = &v44;
LABEL_20:
      std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](v19);
      goto LABEL_21;
    }

    v21 = a4[1];
    v44 = *a4;
    v45 = v21;
    v32 = *a1;
    v22 = *(a1 + 8);
    v33 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 48), 1uLL, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v34, (a1 + 16));
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v35, (a1 + 20));
    v23 = *(a1 + 24);
    v36 = v23;
    if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v36 &= 0xFFFFFFFFFFFFFFF8;
    }

    if ((v36 & 7) != 0)
    {
      atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v34);
    if (v33)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v33);
    }

    if (v24)
    {
      v25 = *a2;
      v26 = a2[1];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      v44 = 0uLL;
      *&v45 = 0;
      v27 = *a2;
      v28 = a2[1];
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      if (v9)
      {
        v29 = 0;
        for (i = 0; i != v9; ++i)
        {
          v31 = *(v44 + v29);
          pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(&v41);
          *v31 = *(v43 + 4 * i);
          v29 += 16;
        }
      }

      v38 = &v44;
      v19 = &v38;
      goto LABEL_20;
    }
  }

LABEL_21:
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v41);
  v20 = *MEMORY[0x277D85DE8];
}

void sub_2476E2A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  a16 = &a25;
  std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](&a16);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a19);
  _Unwind_Resume(a1);
}

void anonymous namespace::usdToRe_Array<int,short>(uint64_t a1, uint64_t *a2, uint64_t a3, __int128 *a4)
{
  v49 = *MEMORY[0x277D85DE8];
  v46 = 0;
  v45 = 0u;
  v44 = 0u;
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<int>>(a1, v47);
  if (v47[0])
  {
    v41 = *&v47[8];
    v42 = *&v47[24];
    v7 = v48;
  }

  else
  {
    v41 = v44;
    v42 = v45;
    v7 = v46;
  }

  v43 = v7;
  if (v7)
  {
    v8 = (v7 - 16);
    if (*(&v42 + 1))
    {
      v8 = *(&v42 + 1);
    }

    atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<int>,realityio::DetailedError>::~Result(v47);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v44);
  v9 = v41;
  v10 = a4[1];
  *v47 = *a4;
  *&v47[16] = v10;
  if ((RETypeInfoIsList() & 1) != 0 || (v11 = a4[1], *v47 = *a4, *&v47[16] = v11, RETypeInfoIsArray()))
  {
    memset(v47, 0, 32);
    v44 = *v47;
    v45 = *&v47[16];
    if ((RETypeInfoIsList() & 1) != 0 || (v44 = *v47, v45 = *&v47[16], RETypeInfoIsArray()))
    {
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v12 = *a2;
      v13 = a2[1];
      v37[0] = v12;
      v37[1] = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = a4[1];
      v44 = *a4;
      v45 = v14;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      v15 = v38;
      if (v39 != v38)
      {
        v16 = 0;
        v17 = 0;
        do
        {
          v18 = *&v15[v16];
          pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(&v41);
          *v18 = *(v43 + 4 * v17++);
          v15 = v38;
          ++v16;
        }

        while (v17 < v39 - v38);
      }

      *&v44 = &v38;
      v19 = &v44;
LABEL_20:
      std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](v19);
      goto LABEL_21;
    }

    v21 = a4[1];
    v44 = *a4;
    v45 = v21;
    v32 = *a1;
    v22 = *(a1 + 8);
    v33 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 48), 1uLL, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v34, (a1 + 16));
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v35, (a1 + 20));
    v23 = *(a1 + 24);
    v36 = v23;
    if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v36 &= 0xFFFFFFFFFFFFFFF8;
    }

    if ((v36 & 7) != 0)
    {
      atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v34);
    if (v33)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v33);
    }

    if (v24)
    {
      v25 = *a2;
      v26 = a2[1];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      v44 = 0uLL;
      *&v45 = 0;
      v27 = *a2;
      v28 = a2[1];
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      if (v9)
      {
        v29 = 0;
        for (i = 0; i != v9; ++i)
        {
          v31 = *(v44 + v29);
          pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(&v41);
          *v31 = *(v43 + 4 * i);
          v29 += 16;
        }
      }

      v38 = &v44;
      v19 = &v38;
      goto LABEL_20;
    }
  }

LABEL_21:
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v41);
  v20 = *MEMORY[0x277D85DE8];
}

void sub_2476E2E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  a16 = &a25;
  std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](&a16);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a19);
  _Unwind_Resume(a1);
}

void anonymous namespace::usdToRe_Array<int,int>(uint64_t a1, uint64_t *a2, uint64_t a3, __int128 *a4)
{
  v49 = *MEMORY[0x277D85DE8];
  v46 = 0;
  v45 = 0u;
  v44 = 0u;
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<int>>(a1, v47);
  if (v47[0])
  {
    v41 = *&v47[8];
    v42 = *&v47[24];
    v7 = v48;
  }

  else
  {
    v41 = v44;
    v42 = v45;
    v7 = v46;
  }

  v43 = v7;
  if (v7)
  {
    v8 = (v7 - 16);
    if (*(&v42 + 1))
    {
      v8 = *(&v42 + 1);
    }

    atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<int>,realityio::DetailedError>::~Result(v47);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v44);
  v9 = v41;
  v10 = a4[1];
  *v47 = *a4;
  *&v47[16] = v10;
  if ((RETypeInfoIsList() & 1) != 0 || (v11 = a4[1], *v47 = *a4, *&v47[16] = v11, RETypeInfoIsArray()))
  {
    memset(v47, 0, 32);
    v44 = *v47;
    v45 = *&v47[16];
    if ((RETypeInfoIsList() & 1) != 0 || (v44 = *v47, v45 = *&v47[16], RETypeInfoIsArray()))
    {
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v12 = *a2;
      v13 = a2[1];
      v37[0] = v12;
      v37[1] = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = a4[1];
      v44 = *a4;
      v45 = v14;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      v15 = v38;
      if (v39 != v38)
      {
        v16 = 0;
        v17 = 0;
        do
        {
          v18 = *&v15[v16];
          pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(&v41);
          *v18 = *(v43 + 4 * v17++);
          v15 = v38;
          ++v16;
        }

        while (v17 < v39 - v38);
      }

      *&v44 = &v38;
      v19 = &v44;
LABEL_20:
      std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](v19);
      goto LABEL_21;
    }

    v21 = a4[1];
    v44 = *a4;
    v45 = v21;
    v32 = *a1;
    v22 = *(a1 + 8);
    v33 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 48), 1uLL, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v34, (a1 + 16));
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v35, (a1 + 20));
    v23 = *(a1 + 24);
    v36 = v23;
    if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v36 &= 0xFFFFFFFFFFFFFFF8;
    }

    if ((v36 & 7) != 0)
    {
      atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v34);
    if (v33)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v33);
    }

    if (v24)
    {
      v25 = *a2;
      v26 = a2[1];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      v44 = 0uLL;
      *&v45 = 0;
      v27 = *a2;
      v28 = a2[1];
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      if (v9)
      {
        v29 = 0;
        for (i = 0; i != v9; ++i)
        {
          v31 = *(v44 + v29);
          pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(&v41);
          *v31 = *(v43 + 4 * i);
          v29 += 16;
        }
      }

      v38 = &v44;
      v19 = &v38;
      goto LABEL_20;
    }
  }

LABEL_21:
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v41);
  v20 = *MEMORY[0x277D85DE8];
}

void sub_2476E325C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  a16 = &a25;
  std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](&a16);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a19);
  _Unwind_Resume(a1);
}

void anonymous namespace::usdToRe_Array<long long,int>(pxrInternal__aapl__pxrReserved__::UsdObject *this, uint64_t *a2, uint64_t a3, __int128 *a4)
{
  v49 = *MEMORY[0x277D85DE8];
  v46 = 0;
  v45 = 0u;
  v44 = 0u;
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(v47, this);
  if (v47[0])
  {
    v41 = *&v47[8];
    v42 = *&v47[24];
    v7 = v48;
  }

  else
  {
    v41 = v44;
    v42 = v45;
    v7 = v46;
  }

  v43 = v7;
  if (v7)
  {
    v8 = (v7 - 16);
    if (*(&v42 + 1))
    {
      v8 = *(&v42 + 1);
    }

    atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<long long>,realityio::DetailedError>::~Result(v47);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v44);
  v9 = v41;
  v10 = a4[1];
  *v47 = *a4;
  *&v47[16] = v10;
  if ((RETypeInfoIsList() & 1) != 0 || (v11 = a4[1], *v47 = *a4, *&v47[16] = v11, RETypeInfoIsArray()))
  {
    memset(v47, 0, 32);
    v44 = *v47;
    v45 = *&v47[16];
    if ((RETypeInfoIsList() & 1) != 0 || (v44 = *v47, v45 = *&v47[16], RETypeInfoIsArray()))
    {
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v12 = *a2;
      v13 = a2[1];
      v37[0] = v12;
      v37[1] = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = a4[1];
      v44 = *a4;
      v45 = v14;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      v15 = v38;
      if (v39 != v38)
      {
        v16 = 0;
        v17 = 0;
        do
        {
          v18 = *&v15[v16];
          pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DetachIfNotUnique(&v41);
          *v18 = *(v43 + 8 * v17++);
          v15 = v38;
          ++v16;
        }

        while (v17 < v39 - v38);
      }

      *&v44 = &v38;
      v19 = &v44;
LABEL_20:
      std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](v19);
      goto LABEL_21;
    }

    v21 = a4[1];
    v44 = *a4;
    v45 = v21;
    v32 = *this;
    v22 = *(this + 1);
    v33 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 48), 1uLL, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v34, this + 4);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v35, this + 5);
    v23 = *(this + 3);
    v36 = v23;
    if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v36 &= 0xFFFFFFFFFFFFFFF8;
    }

    if ((v36 & 7) != 0)
    {
      atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v34);
    if (v33)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v33);
    }

    if (v24)
    {
      v25 = *a2;
      v26 = a2[1];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      v44 = 0uLL;
      *&v45 = 0;
      v27 = *a2;
      v28 = a2[1];
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      if (v9)
      {
        v29 = 0;
        for (i = 0; i != v9; ++i)
        {
          v31 = *(v44 + v29);
          pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DetachIfNotUnique(&v41);
          *v31 = *(v43 + 8 * i);
          v29 += 16;
        }
      }

      v38 = &v44;
      v19 = &v38;
      goto LABEL_20;
    }
  }

LABEL_21:
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v41);
  v20 = *MEMORY[0x277D85DE8];
}

void sub_2476E368C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  a16 = &a25;
  std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](&a16);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a19);
  _Unwind_Resume(a1);
}

void anonymous namespace::usdToRe_Array<long long,long long>(pxrInternal__aapl__pxrReserved__::UsdObject *this, uint64_t *a2, uint64_t a3, __int128 *a4)
{
  v49 = *MEMORY[0x277D85DE8];
  v46 = 0;
  v45 = 0u;
  v44 = 0u;
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(v47, this);
  if (v47[0])
  {
    v41 = *&v47[8];
    v42 = *&v47[24];
    v7 = v48;
  }

  else
  {
    v41 = v44;
    v42 = v45;
    v7 = v46;
  }

  v43 = v7;
  if (v7)
  {
    v8 = (v7 - 16);
    if (*(&v42 + 1))
    {
      v8 = *(&v42 + 1);
    }

    atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<long long>,realityio::DetailedError>::~Result(v47);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v44);
  v9 = v41;
  v10 = a4[1];
  *v47 = *a4;
  *&v47[16] = v10;
  if ((RETypeInfoIsList() & 1) != 0 || (v11 = a4[1], *v47 = *a4, *&v47[16] = v11, RETypeInfoIsArray()))
  {
    memset(v47, 0, 32);
    v44 = *v47;
    v45 = *&v47[16];
    if ((RETypeInfoIsList() & 1) != 0 || (v44 = *v47, v45 = *&v47[16], RETypeInfoIsArray()))
    {
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v12 = *a2;
      v13 = a2[1];
      v37[0] = v12;
      v37[1] = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = a4[1];
      v44 = *a4;
      v45 = v14;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      v15 = v38;
      if (v39 != v38)
      {
        v16 = 0;
        v17 = 0;
        do
        {
          v18 = *&v15[v16];
          pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DetachIfNotUnique(&v41);
          *v18 = *(v43 + 8 * v17++);
          v15 = v38;
          ++v16;
        }

        while (v17 < v39 - v38);
      }

      *&v44 = &v38;
      v19 = &v44;
LABEL_20:
      std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](v19);
      goto LABEL_21;
    }

    v21 = a4[1];
    v44 = *a4;
    v45 = v21;
    v32 = *this;
    v22 = *(this + 1);
    v33 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 48), 1uLL, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v34, this + 4);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v35, this + 5);
    v23 = *(this + 3);
    v36 = v23;
    if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v36 &= 0xFFFFFFFFFFFFFFF8;
    }

    if ((v36 & 7) != 0)
    {
      atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v34);
    if (v33)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v33);
    }

    if (v24)
    {
      v25 = *a2;
      v26 = a2[1];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      v44 = 0uLL;
      *&v45 = 0;
      v27 = *a2;
      v28 = a2[1];
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      if (v9)
      {
        v29 = 0;
        for (i = 0; i != v9; ++i)
        {
          v31 = *(v44 + v29);
          pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DetachIfNotUnique(&v41);
          *v31 = *(v43 + 8 * i);
          v29 += 16;
        }
      }

      v38 = &v44;
      v19 = &v38;
      goto LABEL_20;
    }
  }

LABEL_21:
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v41);
  v20 = *MEMORY[0x277D85DE8];
}

void sub_2476E3ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  a16 = &a25;
  std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](&a16);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a19);
  _Unwind_Resume(a1);
}

void anonymous namespace::usdToRe_Array<float,float>(uint64_t a1, uint64_t *a2, uint64_t a3, __int128 *a4)
{
  v49 = *MEMORY[0x277D85DE8];
  v46 = 0;
  v45 = 0u;
  v44 = 0u;
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<float>>(a1, v47);
  if (v47[0])
  {
    v41 = *&v47[8];
    v42 = *&v47[24];
    v7 = v48;
  }

  else
  {
    v41 = v44;
    v42 = v45;
    v7 = v46;
  }

  v43 = v7;
  if (v7)
  {
    v8 = (v7 - 16);
    if (*(&v42 + 1))
    {
      v8 = *(&v42 + 1);
    }

    atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<float>,realityio::DetailedError>::~Result(v47);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v44);
  v9 = v41;
  v10 = a4[1];
  *v47 = *a4;
  *&v47[16] = v10;
  if ((RETypeInfoIsList() & 1) != 0 || (v11 = a4[1], *v47 = *a4, *&v47[16] = v11, RETypeInfoIsArray()))
  {
    memset(v47, 0, 32);
    v44 = *v47;
    v45 = *&v47[16];
    if ((RETypeInfoIsList() & 1) != 0 || (v44 = *v47, v45 = *&v47[16], RETypeInfoIsArray()))
    {
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v12 = *a2;
      v13 = a2[1];
      v37[0] = v12;
      v37[1] = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = a4[1];
      v44 = *a4;
      v45 = v14;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      v15 = v38;
      if (v39 != v38)
      {
        v16 = 0;
        v17 = 0;
        do
        {
          v18 = *&v15[v16];
          pxrInternal__aapl__pxrReserved__::VtArray<float>::_DetachIfNotUnique(&v41);
          *v18 = *(v43 + 4 * v17++);
          v15 = v38;
          ++v16;
        }

        while (v17 < v39 - v38);
      }

      *&v44 = &v38;
      v19 = &v44;
LABEL_20:
      std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](v19);
      goto LABEL_21;
    }

    v21 = a4[1];
    v44 = *a4;
    v45 = v21;
    v32 = *a1;
    v22 = *(a1 + 8);
    v33 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 48), 1uLL, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v34, (a1 + 16));
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v35, (a1 + 20));
    v23 = *(a1 + 24);
    v36 = v23;
    if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v36 &= 0xFFFFFFFFFFFFFFF8;
    }

    if ((v36 & 7) != 0)
    {
      atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v34);
    if (v33)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v33);
    }

    if (v24)
    {
      v25 = *a2;
      v26 = a2[1];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      v44 = 0uLL;
      *&v45 = 0;
      v27 = *a2;
      v28 = a2[1];
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      if (v9)
      {
        v29 = 0;
        for (i = 0; i != v9; ++i)
        {
          v31 = *(v44 + v29);
          pxrInternal__aapl__pxrReserved__::VtArray<float>::_DetachIfNotUnique(&v41);
          *v31 = *(v43 + 4 * i);
          v29 += 16;
        }
      }

      v38 = &v44;
      v19 = &v38;
      goto LABEL_20;
    }
  }

LABEL_21:
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v41);
  v20 = *MEMORY[0x277D85DE8];
}

void sub_2476E3EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  a16 = &a25;
  std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](&a16);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a19);
  _Unwind_Resume(a1);
}

void anonymous namespace::usdToRe_ArrayOfArrays<pxrInternal__aapl__pxrReserved__::GfVec2f,float,2>(uint64_t a1, uint64_t *a2, uint64_t a3, __int128 *a4)
{
  v47 = *MEMORY[0x277D85DE8];
  v44 = 0;
  v43 = 0u;
  v42 = 0u;
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>(a1, v45);
  if (v45[0])
  {
    v39 = *&v45[8];
    v40 = *&v45[24];
    v7 = v46;
  }

  else
  {
    v39 = v42;
    v40 = v43;
    v7 = v44;
  }

  v41 = v7;
  if (v7)
  {
    v8 = (v7 - 16);
    if (*(&v40 + 1))
    {
      v8 = *(&v40 + 1);
    }

    atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>,realityio::DetailedError>::~Result(v45);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v42);
  v9 = v39;
  v10 = a4[1];
  *v45 = *a4;
  *&v45[16] = v10;
  if ((RETypeInfoIsList() & 1) != 0 || (v11 = a4[1], *v45 = *a4, *&v45[16] = v11, RETypeInfoIsArray()))
  {
    memset(v45, 0, 32);
    v42 = *v45;
    v43 = *&v45[16];
    if ((RETypeInfoIsList() & 1) != 0 || (v42 = *v45, v43 = *&v45[16], RETypeInfoIsArray()))
    {
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v12 = *a2;
      v13 = a2[1];
      v35[0] = v12;
      v35[1] = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = a4[1];
      v42 = *a4;
      v43 = v14;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      if (v37 != v36)
      {
        v15 = 0;
        v16 = 0;
        do
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DetachIfNotUnique(&v39);
          v17 = v36;
          **&v36[v15++] = *(v41 + 8 * v16++);
        }

        while (v16 < v37 - v17);
      }

      *&v42 = &v36;
      v18 = &v42;
LABEL_20:
      std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](v18);
      goto LABEL_21;
    }

    v20 = a4[1];
    v42 = *a4;
    v43 = v20;
    v30 = *a1;
    v21 = *(a1 + 8);
    v31 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit((v21 + 48), 1uLL, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v32, (a1 + 16));
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v33, (a1 + 20));
    v22 = *(a1 + 24);
    v34 = v22;
    if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v34 &= 0xFFFFFFFFFFFFFFF8;
    }

    if ((v34 & 7) != 0)
    {
      atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v32);
    if (v31)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v31);
    }

    if (v23)
    {
      v24 = *a2;
      v25 = a2[1];
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      v42 = 0uLL;
      *&v43 = 0;
      v26 = *a2;
      v27 = a2[1];
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }

      if (v9)
      {
        v28 = 0;
        for (i = 0; i != v9; ++i)
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DetachIfNotUnique(&v39);
          **(v42 + v28) = *(v41 + 8 * i);
          v28 += 16;
        }
      }

      v36 = &v42;
      v18 = &v36;
      goto LABEL_20;
    }
  }

LABEL_21:
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v39);
  v19 = *MEMORY[0x277D85DE8];
}

void sub_2476E4318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  a16 = &a25;
  std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](&a16);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a19);
  _Unwind_Resume(a1);
}

void anonymous namespace::usdToRe_ArrayOfArrays<pxrInternal__aapl__pxrReserved__::GfVec3f,float,3>(uint64_t a1, uint64_t *a2, uint64_t a3, __int128 *a4)
{
  v52 = *MEMORY[0x277D85DE8];
  v49 = 0;
  v48 = 0u;
  v47 = 0u;
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>(a1, v50);
  if (v50[0])
  {
    v44 = *&v50[8];
    v45 = *&v50[24];
    v7 = v51;
  }

  else
  {
    v44 = v47;
    v45 = v48;
    v7 = v49;
  }

  v46 = v7;
  if (v7)
  {
    v8 = (v7 - 16);
    if (*(&v45 + 1))
    {
      v8 = *(&v45 + 1);
    }

    atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>,realityio::DetailedError>::~Result(v50);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v47);
  v9 = v44;
  v10 = a4[1];
  *v50 = *a4;
  *&v50[16] = v10;
  if ((RETypeInfoIsList() & 1) != 0 || (v11 = a4[1], *v50 = *a4, *&v50[16] = v11, RETypeInfoIsArray()))
  {
    memset(v50, 0, 32);
    v47 = *v50;
    v48 = *&v50[16];
    if ((RETypeInfoIsList() & 1) != 0 || (v47 = *v50, v48 = *&v50[16], RETypeInfoIsArray()))
    {
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v12 = *a2;
      v13 = a2[1];
      v40[0] = v12;
      v40[1] = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = a4[1];
      v47 = *a4;
      v48 = v14;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      if (v42 != v41)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        do
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DetachIfNotUnique(&v44);
          v18 = v41;
          v19 = *&v41[v16];
          v20 = *(v46 + v15);
          *(v19 + 8) = *(v46 + v15 + 8);
          *v19 = v20;
          ++v17;
          ++v16;
          v15 += 12;
        }

        while (v17 < v42 - v18);
      }

      *&v47 = &v41;
      v21 = &v47;
LABEL_20:
      std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](v21);
      goto LABEL_21;
    }

    v23 = a4[1];
    v47 = *a4;
    v48 = v23;
    v35 = *a1;
    v24 = *(a1 + 8);
    v36 = v24;
    if (v24)
    {
      atomic_fetch_add_explicit((v24 + 48), 1uLL, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v37, (a1 + 16));
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v38, (a1 + 20));
    v25 = *(a1 + 24);
    v39 = v25;
    if ((v25 & 7) != 0 && (atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v39 &= 0xFFFFFFFFFFFFFFF8;
    }

    if ((v39 & 7) != 0)
    {
      atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v37);
    if (v36)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v36);
    }

    if (v26)
    {
      v27 = *a2;
      v28 = a2[1];
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      v47 = 0uLL;
      *&v48 = 0;
      v29 = *a2;
      v30 = a2[1];
      if (v30)
      {
        atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      }

      if (v9)
      {
        v31 = 0;
        v32 = 0;
        do
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DetachIfNotUnique(&v44);
          v33 = *(v47 + v32);
          v34 = *(v46 + v31);
          *(v33 + 8) = *(v46 + v31 + 8);
          *v33 = v34;
          v32 += 16;
          v31 += 12;
          --v9;
        }

        while (v9);
      }

      v41 = &v47;
      v21 = &v41;
      goto LABEL_20;
    }
  }

LABEL_21:
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v44);
  v22 = *MEMORY[0x277D85DE8];
}

void sub_2476E4768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  a16 = &a25;
  std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](&a16);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a19);
  _Unwind_Resume(a1);
}

void anonymous namespace::usdToRe_ArrayOfArrays<pxrInternal__aapl__pxrReserved__::GfVec4f,float,4>(uint64_t a1, uint64_t *a2, uint64_t a3, __int128 *a4)
{
  v46 = *MEMORY[0x277D85DE8];
  v43 = 0;
  v42 = 0u;
  v41 = 0u;
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>(a1, v44);
  if (v44[0])
  {
    v38 = *&v44[8];
    v39 = *&v44[24];
    v7 = v45;
  }

  else
  {
    v38 = v41;
    v39 = v42;
    v7 = v43;
  }

  v40 = v7;
  if (v7)
  {
    v8 = (v7 - 16);
    if (*(&v39 + 1))
    {
      v8 = *(&v39 + 1);
    }

    atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>,realityio::DetailedError>::~Result(v44);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v41);
  v9 = v38;
  v10 = a4[1];
  *v44 = *a4;
  *&v44[16] = v10;
  if ((RETypeInfoIsList() & 1) != 0 || (v11 = a4[1], *v44 = *a4, *&v44[16] = v11, RETypeInfoIsArray()))
  {
    memset(v44, 0, 32);
    v41 = *v44;
    v42 = *&v44[16];
    if ((RETypeInfoIsList() & 1) != 0 || (v41 = *v44, v42 = *&v44[16], RETypeInfoIsArray()))
    {
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v12 = *a2;
      v13 = a2[1];
      v34[0] = v12;
      v34[1] = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = a4[1];
      v41 = *a4;
      v42 = v14;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      if (v36 != v35)
      {
        v15 = 0;
        v16 = 0;
        do
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DetachIfNotUnique(&v38);
          v17 = v35;
          **&v35[v15] = *(v40 + v15 * 16);
          ++v16;
          ++v15;
        }

        while (v16 < v36 - v17);
      }

      *&v41 = &v35;
      v18 = &v41;
LABEL_20:
      std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](v18);
      goto LABEL_21;
    }

    v20 = a4[1];
    v41 = *a4;
    v42 = v20;
    v29 = *a1;
    v21 = *(a1 + 8);
    v30 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit((v21 + 48), 1uLL, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v31, (a1 + 16));
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v32, (a1 + 20));
    v22 = *(a1 + 24);
    v33 = v22;
    if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v33 &= 0xFFFFFFFFFFFFFFF8;
    }

    if ((v33 & 7) != 0)
    {
      atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v31);
    if (v30)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v30);
    }

    if (v23)
    {
      v24 = *a2;
      v25 = a2[1];
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      v41 = 0uLL;
      *&v42 = 0;
      v26 = *a2;
      v27 = a2[1];
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }

      if (v9)
      {
        v28 = 0;
        do
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DetachIfNotUnique(&v38);
          **(v41 + v28) = *(v40 + v28);
          v28 += 16;
          --v9;
        }

        while (v9);
      }

      v35 = &v41;
      v18 = &v35;
      goto LABEL_20;
    }
  }

LABEL_21:
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v38);
  v19 = *MEMORY[0x277D85DE8];
}

void sub_2476E4B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  a16 = &a25;
  std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](&a16);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a19);
  _Unwind_Resume(a1);
}

void anonymous namespace::usdToRe_Array<pxrInternal__aapl__pxrReserved__::GfQuatf,pxrInternal__aapl__pxrReserved__::GfQuatf>(pxrInternal__aapl__pxrReserved__::UsdObject *this, uint64_t *a2, uint64_t a3, __int128 *a4)
{
  v48 = *MEMORY[0x277D85DE8];
  v45 = 0;
  v44 = 0u;
  v43 = 0u;
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>(v46, this);
  if (v46[0])
  {
    v40 = *&v46[8];
    v41 = *&v46[24];
    v7 = v47;
  }

  else
  {
    v40 = v43;
    v41 = v44;
    v7 = v45;
  }

  v42 = v7;
  if (v7)
  {
    v8 = (v7 - 16);
    if (*(&v41 + 1))
    {
      v8 = *(&v41 + 1);
    }

    atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>,realityio::DetailedError>::~Result(v46);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v43);
  v9 = v40;
  v10 = a4[1];
  *v46 = *a4;
  *&v46[16] = v10;
  if ((RETypeInfoIsList() & 1) != 0 || (v11 = a4[1], *v46 = *a4, *&v46[16] = v11, RETypeInfoIsArray()))
  {
    memset(v46, 0, 32);
    v43 = *v46;
    v44 = *&v46[16];
    if ((RETypeInfoIsList() & 1) != 0 || (v43 = *v46, v44 = *&v46[16], RETypeInfoIsArray()))
    {
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v12 = *a2;
      v13 = a2[1];
      v36[0] = v12;
      v36[1] = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = a4[1];
      v43 = *a4;
      v44 = v14;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      v15 = v37;
      if (v38 != v37)
      {
        v16 = 0;
        v17 = 0;
        do
        {
          v18 = *&v15[v16];
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_DetachIfNotUnique(&v40);
          *v18 = *(v42 + v16 * 16);
          ++v17;
          v15 = v37;
          ++v16;
        }

        while (v17 < v38 - v37);
      }

      *&v43 = &v37;
      v19 = &v43;
LABEL_20:
      std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](v19);
      goto LABEL_21;
    }

    v21 = a4[1];
    v43 = *a4;
    v44 = v21;
    v31 = *this;
    v22 = *(this + 1);
    v32 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 48), 1uLL, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v33, this + 4);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v34, this + 5);
    v23 = *(this + 3);
    v35 = v23;
    if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v35 &= 0xFFFFFFFFFFFFFFF8;
    }

    if ((v35 & 7) != 0)
    {
      atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v33);
    if (v32)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v32);
    }

    if (v24)
    {
      v25 = *a2;
      v26 = a2[1];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      v43 = 0uLL;
      *&v44 = 0;
      v27 = *a2;
      v28 = a2[1];
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      if (v9)
      {
        v29 = 0;
        do
        {
          v30 = *(v43 + v29);
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_DetachIfNotUnique(&v40);
          *v30 = *(v42 + v29);
          v29 += 16;
          --v9;
        }

        while (v9);
      }

      v37 = &v43;
      v19 = &v37;
      goto LABEL_20;
    }
  }

LABEL_21:
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v40);
  v20 = *MEMORY[0x277D85DE8];
}

void sub_2476E4FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  a16 = &a25;
  std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](&a16);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a19);
  _Unwind_Resume(a1);
}

void anonymous namespace::usdToRe_Array<double,double>(uint64_t a1, uint64_t *a2, uint64_t a3, __int128 *a4)
{
  v49 = *MEMORY[0x277D85DE8];
  v46 = 0;
  v45 = 0u;
  v44 = 0u;
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<double>>(a1, v47);
  if (v47[0])
  {
    v41 = *&v47[8];
    v42 = *&v47[24];
    v7 = v48;
  }

  else
  {
    v41 = v44;
    v42 = v45;
    v7 = v46;
  }

  v43 = v7;
  if (v7)
  {
    v8 = (v7 - 16);
    if (*(&v42 + 1))
    {
      v8 = *(&v42 + 1);
    }

    atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<double>,realityio::DetailedError>::~Result(v47);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v44);
  v9 = v41;
  v10 = a4[1];
  *v47 = *a4;
  *&v47[16] = v10;
  if ((RETypeInfoIsList() & 1) != 0 || (v11 = a4[1], *v47 = *a4, *&v47[16] = v11, RETypeInfoIsArray()))
  {
    memset(v47, 0, 32);
    v44 = *v47;
    v45 = *&v47[16];
    if ((RETypeInfoIsList() & 1) != 0 || (v44 = *v47, v45 = *&v47[16], RETypeInfoIsArray()))
    {
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v12 = *a2;
      v13 = a2[1];
      v37[0] = v12;
      v37[1] = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = a4[1];
      v44 = *a4;
      v45 = v14;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      v15 = v38;
      if (v39 != v38)
      {
        v16 = 0;
        v17 = 0;
        do
        {
          v18 = *&v15[v16];
          pxrInternal__aapl__pxrReserved__::VtArray<double>::_DetachIfNotUnique(&v41);
          *v18 = *(v43 + 8 * v17++);
          v15 = v38;
          ++v16;
        }

        while (v17 < v39 - v38);
      }

      *&v44 = &v38;
      v19 = &v44;
LABEL_20:
      std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](v19);
      goto LABEL_21;
    }

    v21 = a4[1];
    v44 = *a4;
    v45 = v21;
    v32 = *a1;
    v22 = *(a1 + 8);
    v33 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 48), 1uLL, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v34, (a1 + 16));
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v35, (a1 + 20));
    v23 = *(a1 + 24);
    v36 = v23;
    if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v36 &= 0xFFFFFFFFFFFFFFF8;
    }

    if ((v36 & 7) != 0)
    {
      atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v34);
    if (v33)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v33);
    }

    if (v24)
    {
      v25 = *a2;
      v26 = a2[1];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      v44 = 0uLL;
      *&v45 = 0;
      v27 = *a2;
      v28 = a2[1];
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      if (v9)
      {
        v29 = 0;
        for (i = 0; i != v9; ++i)
        {
          v31 = *(v44 + v29);
          pxrInternal__aapl__pxrReserved__::VtArray<double>::_DetachIfNotUnique(&v41);
          *v31 = *(v43 + 8 * i);
          v29 += 16;
        }
      }

      v38 = &v44;
      v19 = &v38;
      goto LABEL_20;
    }
  }

LABEL_21:
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v41);
  v20 = *MEMORY[0x277D85DE8];
}

void sub_2476E53E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  a16 = &a25;
  std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](&a16);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a19);
  _Unwind_Resume(a1);
}

void anonymous namespace::usdToRe_Array<BOOL,BOOL>(pxrInternal__aapl__pxrReserved__::UsdObject *this, uint64_t *a2, uint64_t a3, __int128 *a4)
{
  v49 = *MEMORY[0x277D85DE8];
  v46 = 0;
  v45 = 0u;
  v44 = 0u;
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>>(v47, this);
  if (v47[0])
  {
    v41 = *&v47[8];
    v42 = *&v47[24];
    v7 = v48;
  }

  else
  {
    v41 = v44;
    v42 = v45;
    v7 = v46;
  }

  v43 = v7;
  if (v7)
  {
    v8 = (v7 - 16);
    if (*(&v42 + 1))
    {
      v8 = *(&v42 + 1);
    }

    atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>,realityio::DetailedError>::~Result(v47);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v44);
  v9 = v41;
  v10 = a4[1];
  *v47 = *a4;
  *&v47[16] = v10;
  if ((RETypeInfoIsList() & 1) != 0 || (v11 = a4[1], *v47 = *a4, *&v47[16] = v11, RETypeInfoIsArray()))
  {
    memset(v47, 0, 32);
    v44 = *v47;
    v45 = *&v47[16];
    if ((RETypeInfoIsList() & 1) != 0 || (v44 = *v47, v45 = *&v47[16], RETypeInfoIsArray()))
    {
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v12 = *a2;
      v13 = a2[1];
      v37[0] = v12;
      v37[1] = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = a4[1];
      v44 = *a4;
      v45 = v14;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      v15 = v38;
      if (v39 != v38)
      {
        v16 = 0;
        v17 = 0;
        do
        {
          v18 = *&v15[v16];
          pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DetachIfNotUnique(&v41);
          *v18 = *(v43 + v17++);
          v15 = v38;
          ++v16;
        }

        while (v17 < v39 - v38);
      }

      *&v44 = &v38;
      v19 = &v44;
LABEL_20:
      std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](v19);
      goto LABEL_21;
    }

    v21 = a4[1];
    v44 = *a4;
    v45 = v21;
    v32 = *this;
    v22 = *(this + 1);
    v33 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 48), 1uLL, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v34, this + 4);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v35, this + 5);
    v23 = *(this + 3);
    v36 = v23;
    if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v36 &= 0xFFFFFFFFFFFFFFF8;
    }

    if ((v36 & 7) != 0)
    {
      atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v34);
    if (v33)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v33);
    }

    if (v24)
    {
      v25 = *a2;
      v26 = a2[1];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      v44 = 0uLL;
      *&v45 = 0;
      v27 = *a2;
      v28 = a2[1];
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      if (v9)
      {
        v29 = 0;
        for (i = 0; i != v9; ++i)
        {
          v31 = *(v44 + v29);
          pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DetachIfNotUnique(&v41);
          *v31 = *(v43 + i);
          v29 += 16;
        }
      }

      v38 = &v44;
      v19 = &v38;
      goto LABEL_20;
    }
  }

LABEL_21:
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v41);
  v20 = *MEMORY[0x277D85DE8];
}

void sub_2476E5814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  a16 = &a25;
  std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](&a16);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a19);
  _Unwind_Resume(a1);
}

void anonymous namespace::usdToRe_StringArray(uint64_t a1, uint64_t *a2, uint64_t a3, __int128 *a4)
{
  v63 = *MEMORY[0x277D85DE8];
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  *v61 = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(a1);
  if (!atomic_load(MEMORY[0x277D86578]))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>(v61, a1);
    v58 = *&v61[8];
    v59 = *&v61[24];
    v60 = v62;
    if (v62)
    {
      v8 = (v62 - 16);
      if (*(&v59 + 1))
      {
        v8 = *(&v59 + 1);
      }

      atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
    }

    realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>,realityio::DetailedError>::~Result(v61);
    if (v58)
    {
      v9 = 0;
      do
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DetachIfNotUnique(&v58);
        if ((*(v60 + 8 * v9) & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          EmptyString = ((*(v60 + 8 * v9) & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v10);
        }

        pxrInternal__aapl__pxrReserved__::VtArray<std::string>::emplace_back<std::string const&>(&v52, EmptyString);
        ++v9;
      }

      while (v9 < v58);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(&v58);
  }

  else
  {
    v57 = 0;
    v55 = 0u;
    v56 = 0u;
    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>(a1, v61);
    if (v61[0])
    {
      v58 = *&v61[8];
      v59 = *&v61[24];
      v12 = v62;
    }

    else
    {
      v58 = v55;
      v59 = v56;
      v12 = v57;
    }

    v60 = v12;
    if (v12)
    {
      v13 = (v12 - 16);
      if (*(&v59 + 1))
      {
        v13 = *(&v59 + 1);
      }

      atomic_fetch_add_explicit(v13, 1uLL, memory_order_relaxed);
    }

    realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<std::string>,realityio::DetailedError>::~Result(v61);
    pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef(&v52);
    v52 = v58;
    v53 = v59;
    v58 = 0u;
    v59 = 0u;
    v54 = v60;
    v60 = 0;
    pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef(&v58);
    pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef(&v55);
  }

  v14 = v52;
  v15 = a4[1];
  *v61 = *a4;
  *&v61[16] = v15;
  if ((RETypeInfoIsList() & 1) != 0 || (v16 = a4[1], *v61 = *a4, *&v61[16] = v16, RETypeInfoIsArray()))
  {
    memset(v61, 0, 32);
    v58 = *v61;
    v59 = *&v61[16];
    if ((RETypeInfoIsList() & 1) != 0 || (v58 = *v61, v59 = *&v61[16], RETypeInfoIsArray()))
    {
      v49 = 0;
      v50 = 0;
      v51 = 0;
      v17 = *a2;
      v18 = a2[1];
      v48[0] = v17;
      v48[1] = v18;
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v19 = a4[1];
      v58 = *a4;
      v59 = v19;
      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }

      v58 = 0u;
      v59 = 0u;
      if (v50 != v49)
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        do
        {
          pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DetachIfNotUnique(&v52);
          v23 = (v54 + v20);
          if (*(v54 + v20 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v47, *v23, *(v23 + 1));
          }

          else
          {
            v24 = *v23;
            v47.__r_.__value_.__r.__words[2] = *(v23 + 2);
            *&v47.__r_.__value_.__l.__data_ = v24;
          }

          v25 = *(v49 + v21);
          v55 = v58;
          v56 = v59;
          if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v47.__r_.__value_.__l.__data_);
          }

          ++v22;
          v21 += 16;
          v20 += 24;
        }

        while (v22 < (v50 - v49) >> 4);
      }

      v26 = &v49;
LABEL_40:
      *&v58 = v26;
      std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](&v58);
      goto LABEL_41;
    }

    v28 = a4[1];
    v58 = *a4;
    v59 = v28;
    v42 = *a1;
    v29 = *(a1 + 8);
    v43 = v29;
    if (v29)
    {
      atomic_fetch_add_explicit((v29 + 48), 1uLL, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v44, (a1 + 16));
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v45, (a1 + 20));
    v30 = *(a1 + 24);
    v46 = v30;
    if ((v30 & 7) != 0 && (atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v46 &= 0xFFFFFFFFFFFFFFF8;
    }

    if ((v46 & 7) != 0)
    {
      atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v44);
    if (v43)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v43);
    }

    if (v31)
    {
      v32 = *a2;
      v33 = a2[1];
      if (v33)
      {
        atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v33)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v33);
      }

      v55 = 0uLL;
      *&v56 = 0;
      v34 = *a2;
      v35 = a2[1];
      if (v35)
      {
        atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v35)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v35);
      }

      if (v14)
      {
        v36 = 0;
        v37 = 0;
        do
        {
          pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DetachIfNotUnique(&v52);
          v38 = (v54 + v36);
          if (*(v54 + v36 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&__p, *v38, *(v38 + 1));
          }

          else
          {
            v39 = *v38;
            __p.__r_.__value_.__r.__words[2] = *(v38 + 2);
            *&__p.__r_.__value_.__l.__data_ = v39;
          }

          v40 = *(v55 + v37);
          v58 = *v61;
          v59 = *&v61[16];
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v37 += 16;
          v36 += 24;
          --v14;
        }

        while (v14);
      }

      v26 = &v55;
      goto LABEL_40;
    }
  }

LABEL_41:
  pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef(&v52);
  v27 = *MEMORY[0x277D85DE8];
}

void sub_2476E5DE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, char *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  a28 = &a37;
  std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](&a28);
  pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef(&a31);
  _Unwind_Resume(a1);
}

void anonymous namespace::usdToRe_AssetHandleArray(uint64_t a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__ *a3, _OWORD *a4)
{
  v41 = *MEMORY[0x277D85DE8];
  *v39 = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(a1);
  if (!atomic_load(MEMORY[0x277D86578]))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>(v39, a1);
    if (v39[0])
    {
      v36 = *&v39[8];
      v37 = *&v39[24];
      v9 = v40;
    }

    else
    {
      v36 = v33;
      v37 = v34;
      v9 = v35;
    }

    v38 = v9;
    if (v9)
    {
      v10 = (v9 - 16);
      if (*(&v37 + 1))
      {
        v10 = *(&v37 + 1);
      }

      atomic_fetch_add_explicit(v10, 1uLL, memory_order_relaxed);
    }

    realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>,realityio::DetailedError>::~Result(v39);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>::_DecRef(&v33);
    v11 = v36;
    v12 = a4[1];
    *v39 = *a4;
    *&v39[16] = v12;
    v28 = *a1;
    v13 = *(a1 + 8);
    v29 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 48), 1uLL, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v30, (a1 + 16));
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v31, (a1 + 20));
    v14 = *(a1 + 24);
    v32 = v14;
    if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v32 &= 0xFFFFFFFFFFFFFFF8;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v30);
    if (v29)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v29);
    }

    if (v15)
    {
      v16 = *a2;
      REAssetHandleArrayClear();
      if (v36)
      {
        v17 = 0;
        v18 = 0;
        do
        {
          v19 = *a2;
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>::_DetachIfNotUnique(&v36);
          v20 = v38;
          v21 = (v38 + v17);
          if (*(v38 + v17 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v26, *v21, *(v21 + 1));
          }

          else
          {
            v22 = *v21;
            v26.__r_.__value_.__r.__words[2] = *(v21 + 2);
            *&v26.__r_.__value_.__l.__data_ = v22;
          }

          v23 = v20 + v17;
          if (*(v20 + v17 + 47) < 0)
          {
            std::string::__init_copy_ctor_external(&__p, *(v23 + 24), *(v23 + 32));
          }

          else
          {
            v24 = *(v23 + 24);
            __p.__r_.__value_.__r.__words[2] = *(v23 + 40);
            *&__p.__r_.__value_.__l.__data_ = v24;
          }

          REAssetHandleArrayAdd();
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v26.__r_.__value_.__l.__data_);
          }

          ++v18;
          v17 += 48;
        }

        while (v36 > v18);
      }
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>::_DecRef(&v36);
  }

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t std::__function::__func<void (*)(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo),std::allocator<void (*)(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo)>,void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28595D098;
  a2[1] = v2;
  return result;
}

void std::__function::__func<void (*)(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo),std::allocator<void (*)(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo)>,void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::operator()(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t *a4, __int128 *a5)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 8);
  v6 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  v7 = *a4;
  v8 = *a5;
  v9 = a5[1];
  v11 = v6;
  v12[0] = v8;
  v12[1] = v9;
  v5(a2, &v11, v7, v12);
  if (*(&v11 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v11 + 1));
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_2476E6394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<void (*)(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo),std::allocator<void (*)(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo)>,void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>::map[abi:ne200100](void *a1, uint64_t *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 40 * a3;
    do
    {
      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>> const&>(a1, v4, a2);
      a2 += 5;
      v6 -= 40;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>> const&>(uint64_t result, void *a2, uint64_t *a3)
{
  v5 = result;
  v6 = (result + 8);
  if ((result + 8) == a2 || (result = std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](result, a3, a2 + 4), result))
  {
    if (*v5 == a2)
    {
      v8 = a2;
LABEL_16:
      if (!*a2)
      {
        v16 = a2;
        goto LABEL_31;
      }

      v16 = v8;
      v10 = v8 + 1;
LABEL_30:
      if (!*v10)
      {
        goto LABEL_31;
      }

      return result;
    }

    v7 = *a2;
    if (*a2)
    {
      do
      {
        v8 = v7;
        v7 = v7[1];
      }

      while (v7);
    }

    else
    {
      v13 = a2;
      do
      {
        v8 = v13[2];
        v14 = *v8 == v13;
        v13 = v8;
      }

      while (v14);
    }

    result = std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](v5, v8 + 4, a3);
    if (result)
    {
      goto LABEL_16;
    }

LABEL_29:
    result = std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>(v5, &v16, a3);
    v10 = result;
    goto LABEL_30;
  }

  result = std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](v5, a2 + 4, a3);
  if (result)
  {
    v10 = a2 + 1;
    v9 = a2[1];
    if (v9)
    {
      v11 = a2[1];
      do
      {
        v12 = v11;
        v11 = *v11;
      }

      while (v11);
    }

    else
    {
      v15 = a2;
      do
      {
        v12 = v15[2];
        v14 = *v12 == v15;
        v15 = v12;
      }

      while (!v14);
    }

    if (v12 != v6)
    {
      result = std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](v5, a3, v12 + 4);
      if (!result)
      {
        goto LABEL_29;
      }

      v9 = *v10;
    }

    if (v9)
    {
      v16 = v12;
      v10 = v12;
    }

    else
    {
      v16 = a2;
    }

    goto LABEL_30;
  }

  v16 = a2;
  if (!a2)
  {
LABEL_31:
    operator new();
  }

  return result;
}

void sub_2476E669C(_Unwind_Exception *a1)
{
  v3 = v1[4];
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,void *>>>::operator()[abi:ne200100](0, v1);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,void *>>>::operator()[abi:ne200100](char a1, void *a2)
{
  if (a1)
  {
    std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100]((a2 + 5));
    v3 = a2[4];
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(*a1);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(a1[1]);
    std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100]((a1 + 5));
    v2 = a1[4];
    if ((v2 & 7) != 0)
    {
      atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(a1);
  }
}

void *std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>::pair[abi:ne200100]<true,0>(void *a1, uint64_t a2, void *a3)
{
  *a1 = a2;
  if ((a2 & 7) != 0 && (atomic_fetch_add_explicit((a2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>::map[abi:ne200100](a1 + 1, a3);
  return a1;
}

void *std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>::map[abi:ne200100](void *a1, void *a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>> const&>(a1, v3, v5 + 4);
      v6 = v5[1];
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
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != v4);
  }

  return a1;
}

void realityio::getAttributeValue<unsigned long long>(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  v56 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v43, this);
    v4 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v43);
    if (!pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredTimeCodeRange(v4))
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v43);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v7);
    }

    v5 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v43);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v5);
    v42 = v8;
    if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this) & 1) == 0)
    {
      Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
      if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
      }

      std::operator+<char>();
      realityio::DetailedError::DetailedError(&v48, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a1 + 8) = v48;
      v15 = v49;
      v52.__r_.__value_.__r.__words[0] = v50;
      *(v52.__r_.__value_.__r.__words + 7) = *(&v50 + 7);
      v16 = HIBYTE(v50);
      v50 = 0uLL;
      v49 = 0;
      *a1 = 0;
      *(a1 + 39) = *(v52.__r_.__value_.__r.__words + 7);
      v17 = v52.__r_.__value_.__r.__words[0];
      *(a1 + 24) = v15;
      *(a1 + 32) = v17;
      *(a1 + 47) = v16;
      if (SHIBYTE(v47) < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_48;
    }

    v55 = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<unsigned long long>(v54))
      {
        v9 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<unsigned long long>(v54);
        *a1 = 1;
        *(a1 + 8) = v9;
        goto LABEL_47;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v54);
      if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, MEMORY[0x277D82800], v19))
      {
        v20 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<unsigned long long>(v54);
        v21 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v52, v20);
        if (v52.__r_.__value_.__l.__size_)
        {
          v22 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<unsigned long long>(v21);
          *a1 = 1;
          *(a1 + 8) = v22;
        }

        else
        {
          v36 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
          if ((*v36 & 0xFFFFFFFFFFFFFFF8) == 0)
          {
            pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v36);
          }

          std::operator+<char>();
          realityio::DetailedError::DetailedError(&v48, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
          *(a1 + 8) = v48;
          v37 = v49;
          v51.__r_.__value_.__r.__words[0] = v50;
          *(v51.__r_.__value_.__r.__words + 7) = *(&v50 + 7);
          v38 = HIBYTE(v50);
          v50 = 0uLL;
          v49 = 0;
          *a1 = 0;
          *(a1 + 39) = *(v51.__r_.__value_.__r.__words + 7);
          v39 = v51.__r_.__value_.__r.__words[0];
          *(a1 + 24) = v37;
          *(a1 + 32) = v39;
          *(a1 + 47) = v38;
          if (SHIBYTE(v47) < 0)
          {
            operator delete(__p[0]);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v52);
        goto LABEL_47;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "Value is not of the given type");
      realityio::DetailedError::DetailedError(&v48, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a1 + 8) = v48;
      v33 = v49;
      v52.__r_.__value_.__r.__words[0] = v50;
      *(v52.__r_.__value_.__r.__words + 7) = *(&v50 + 7);
      v34 = HIBYTE(v50);
      v50 = 0uLL;
      v49 = 0;
      *a1 = 0;
      *(a1 + 39) = *(v52.__r_.__value_.__r.__words + 7);
      v35 = v52.__r_.__value_.__r.__words[0];
      *(a1 + 24) = v33;
      *(a1 + 32) = v35;
      *(a1 + 47) = v34;
      if ((SHIBYTE(v47) & 0x80000000) == 0)
      {
LABEL_47:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v54);
LABEL_48:
        v40 = v44;
        if (v44 && atomic_fetch_add_explicit((v44 + 8), 0xFFFFFFFF, memory_order_release) == 1)
        {
          (*(*v40 + 8))(v40);
        }

        goto LABEL_51;
      }

      v32 = __p[0];
    }

    else
    {
      v14 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
      if ((*v14 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v14);
      }

      std::operator+<char>();
      v23 = std::string::append(&v51, ") at the given time: ");
      v24 = *&v23->__r_.__value_.__l.__data_;
      v52.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
      *&v52.__r_.__value_.__l.__data_ = v24;
      v23->__r_.__value_.__l.__size_ = 0;
      v23->__r_.__value_.__r.__words[2] = 0;
      v23->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v45, v42);
      if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = &v45;
      }

      else
      {
        v25 = v45.__r_.__value_.__r.__words[0];
      }

      if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v45.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v45.__r_.__value_.__l.__size_;
      }

      v27 = std::string::append(&v52, v25, size);
      v28 = *&v27->__r_.__value_.__l.__data_;
      v47 = v27->__r_.__value_.__r.__words[2];
      *__p = v28;
      v27->__r_.__value_.__l.__size_ = 0;
      v27->__r_.__value_.__r.__words[2] = 0;
      v27->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(&v48, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a1 + 8) = v48;
      v29 = v49;
      v53[0] = v50;
      *(v53 + 7) = *(&v50 + 7);
      v30 = HIBYTE(v50);
      v50 = 0uLL;
      v49 = 0;
      *a1 = 0;
      *(a1 + 39) = *(v53 + 7);
      v31 = v53[0];
      *(a1 + 24) = v29;
      *(a1 + 32) = v31;
      *(a1 + 47) = v30;
      if (SHIBYTE(v47) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v45.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v52.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_47;
      }

      v32 = v51.__r_.__value_.__r.__words[0];
    }

    operator delete(v32);
    goto LABEL_47;
  }

  v6 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
  if ((*v6 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
  }

  std::operator+<char>();
  realityio::DetailedError::DetailedError(&v48, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
  *(a1 + 8) = v48;
  v11 = v49;
  v52.__r_.__value_.__r.__words[0] = v50;
  *(v52.__r_.__value_.__r.__words + 7) = *(&v50 + 7);
  v12 = HIBYTE(v50);
  v50 = 0uLL;
  v49 = 0;
  *a1 = 0;
  *(a1 + 39) = *(v52.__r_.__value_.__r.__words + 7);
  v13 = v52.__r_.__value_.__r.__words[0];
  *(a1 + 24) = v11;
  *(a1 + 32) = v13;
  *(a1 + 47) = v12;
  if (SHIBYTE(v47) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_51:
  v41 = *MEMORY[0x277D85DE8];
}