void sub_247596E58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  std::__split_buffer<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData,std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData> &>::~__split_buffer(&a20);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::SceneAssetBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::vector<realityio::ImportedScene>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<realityio::ImportedScene>::__emplace_back_slow_path<realityio::ImportedScene>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 8) = *(a2 + 8);
    *(a2 + 8) = 0u;
    v4 = *(a2 + 24);
    *(v3 + 40) = *(a2 + 40);
    *(v3 + 24) = v4;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0u;
    v5 = *(a2 + 48);
    *(v3 + 64) = *(a2 + 64);
    *(v3 + 48) = v5;
    *(a2 + 56) = 0u;
    *(a2 + 48) = 0;
    *(v3 + 72) = *(a2 + 72);
    result = v3 + 80;
  }

  a1[1] = result;
  return result;
}

void realityio::getSceneName(realityio *this@<X0>, std::string *a2@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v5 = MEMORY[0x277D86540];
  v6 = atomic_load(MEMORY[0x277D86540]);
  if (!v6)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType>>::_TryToCreateData();
  }

  if ((pxrInternal__aapl__pxrReserved__::UsdObject::GetMetadata(this, (v6 + 368), &v14) & 1) == 0)
  {
    v7 = atomic_load(v5);
    if (!v7)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType>>::_TryToCreateData();
    }

    pxrInternal__aapl__pxrReserved__::UsdObject::GetCustomDataByKey(&v12, this, (v7 + 368));
    if (v13)
    {
      pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(&__p, &v14);
      v15 = v13;
      if ((~v13 & 3) != 0)
      {
        (*((v13 & 0xFFFFFFFFFFFFFFF8) + 40))(&v12, &v14);
      }

      else
      {
        v14 = v12;
      }

      v13 = 0;
      if (v10)
      {
        (*(v10 + 32))(&__p);
      }
    }

    else
    {
      if (v15 && (v15 & 3) != 3)
      {
        (*((v15 & 0xFFFFFFFFFFFFFFF8) + 32))(&v14);
      }

      v15 = 0;
    }

    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v12);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  pxrInternal__aapl__pxrReserved__::VtValue::GetWithDefault<std::string>(&v14, &__p, a2);
  if (v11 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v14);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_247597254(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t realityio::isScene(realityio *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  IsValid = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this);
  if (!IsValid)
  {
    return 0;
  }

  pxrInternal__aapl__pxrReserved__::UsdGeomXformable::_GetStaticTfType(IsValid);
  pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
  if (!pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA())
  {
    return 0;
  }

  realityio::getSceneName(this, &__p);
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetParent(this, v8);
    isSceneLibrary = realityio::isSceneLibrary(v8, v5);
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v10);
    if (v9)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v9);
    }

    if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    isSceneLibrary = 0;
    if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
    {
LABEL_15:
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return isSceneLibrary;
}

void sub_247597388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&a10);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

std::string *realityio::ImportedScene::ImportedScene(std::string *a1, uint64_t a2, std::string::size_type a3, std::string::size_type a4, __int128 *a5, __int128 *a6, std::string::value_type a7)
{
  a1->__r_.__value_.__s.__data_[0] = 0;
  a1->__r_.__value_.__l.__size_ = a3;
  if (a3)
  {
    RERetain();
  }

  a1->__r_.__value_.__r.__words[2] = a4;
  if (a4)
  {
    RERetain();
  }

  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 1, *a5, *(a5 + 1));
  }

  else
  {
    v12 = *a5;
    a1[1].__r_.__value_.__r.__words[2] = *(a5 + 2);
    *&a1[1].__r_.__value_.__l.__data_ = v12;
  }

  if (*(a6 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 2, *a6, *(a6 + 1));
  }

  else
  {
    v13 = *a6;
    a1[2].__r_.__value_.__r.__words[2] = *(a6 + 2);
    *&a1[2].__r_.__value_.__l.__data_ = v13;
  }

  a1[3].__r_.__value_.__s.__data_[0] = a7;
  return a1;
}

void sub_247597480(_Unwind_Exception *a1)
{
  if (*(v2 + 47) < 0)
  {
    operator delete(*(v2 + 24));
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(v3);
  realityio::WrappedRERef<void *>::~WrappedRERef(v1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::VtValue::GetWithDefault<std::string>(pxrInternal__aapl__pxrReserved__::VtValue *this@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v5 = *(this + 1);
  if (v5)
  {
    if (*((v5 & 0xFFFFFFFFFFFFFFF8) + 16) == 12)
    {
      if ((v5 & 4) == 0)
      {
LABEL_4:
        a2 = *this;
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    {
      v5 = *(this + 1);
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      a2 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(this);
    }
  }

LABEL_9:
  if (*(a2 + 23) < 0)
  {
    v8 = *a2;
    v9 = *(a2 + 8);

    std::string::__init_copy_ctor_external(a3, v8, v9);
  }

  else
  {
    v7 = *a2;
    a3->__r_.__value_.__r.__words[2] = *(a2 + 16);
    *&a3->__r_.__value_.__l.__data_ = v7;
  }
}

void std::vector<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData,std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData>>::__swap_out_circular_buffer(uint64_t *a1, void *a2)
{
  v4 = a2[1];
  v5 = *a1;
  v6 = a1[1];
  v7 = v4 + *a1 - v6;
  if (v6 != *a1)
  {
    v8 = 0;
    v9 = *a1;
    v10 = v4 + *a1 - v6;
    do
    {
      realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData::DeferredChildData(v10, v9);
      v9 += 80;
      v10 += 80;
      v8 -= 80;
    }

    while (v9 != v6);
    do
    {
      std::allocator_traits<std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData>>::destroy[abi:ne200100]<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData,0>(v5);
      v5 += 80;
    }

    while (v5 != v6);
    v5 = *a1;
  }

  a2[1] = v7;
  *a1 = v7;
  a1[1] = v5;
  a2[1] = v5;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
}

void sub_247597650(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 80;
    do
    {
      std::allocator_traits<std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData>>::destroy[abi:ne200100]<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData,0>(v4);
      v4 -= 80;
      v2 += 80;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData,std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
    std::allocator_traits<std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData>>::destroy[abi:ne200100]<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData,0>(i - 80);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData>>(unint64_t a1)
{
  if (a1 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData::DeferredChildData(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
  }

  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v5 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v5;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 56), (a2 + 56));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 60), (a2 + 60));
  v6 = *(a2 + 64);
  *(a1 + 64) = v6;
  if (v6)
  {
    RERetain();
  }

  v7 = *(a2 + 72);
  *(a1 + 72) = v7;
  if (v7)
  {
    RERetain();
  }

  return a1;
}

void sub_2475977E8(_Unwind_Exception *exception_object)
{
  if (*(v2 + 31) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::allocator_traits<std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData>>::construct[abi:ne200100]<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData,realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData,0>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  v5 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v5;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 56), (a2 + 56));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 60), (a2 + 60));
  result = *(a2 + 64);
  *(a1 + 64) = result;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  return result;
}

uint64_t std::__function::__func<realityio::SceneAssetBuilder::run(realityio::Inputs *)::$_1,std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::$_1>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_2859502E8;
  realityio::WrappedRERef<REEntity *>::~WrappedRERef((a1 + 40));
  v3 = (a1 + 8);
  std::vector<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData,std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData>>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

void std::__function::__func<realityio::SceneAssetBuilder::run(realityio::Inputs *)::$_1,std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::$_1>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_2859502E8;
  realityio::WrappedRERef<REEntity *>::~WrappedRERef((a1 + 40));
  v2 = (a1 + 8);
  std::vector<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData,std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData>>::__destroy_vector::operator()[abi:ne200100](&v2);

  JUMPOUT(0x24C1A91B0);
}

void sub_247597A20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData,std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData>>::__destroy_vector::operator()[abi:ne200100](va);
  operator delete(v2);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<realityio::SceneAssetBuilder::run(realityio::Inputs *)::$_1,std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::$_1>,void ()(void)>::__clone(__n128 *a1, __n128 *a2)
{
  a2->n128_u64[0] = &unk_2859502E8;
  std::vector<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData,std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData>>::vector[abi:ne200100](&a2->n128_u64[1], &a1->n128_u64[1]);
  v4 = a1[2].n128_u64[1];
  a2[2].n128_u64[0] = a1[2].n128_u64[0];
  a2[2].n128_u64[1] = v4;
  if (v4)
  {
    RERetain();
  }

  result = a1[3];
  a2[3] = result;
  return result;
}

void sub_247597AC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData,std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__function::__func<realityio::SceneAssetBuilder::run(realityio::Inputs *)::$_1,std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::$_1>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = (a1 + 8);
  realityio::WrappedRERef<REEntity *>::~WrappedRERef((a1 + 40));
  v2 = v1;
  std::vector<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData,std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void std::__function::__func<realityio::SceneAssetBuilder::run(realityio::Inputs *)::$_1,std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::$_1>,void ()(void)>::destroy_deallocate(void **a1)
{
  v2 = a1 + 1;
  realityio::WrappedRERef<REEntity *>::~WrappedRERef(a1 + 5);
  v3 = v2;
  std::vector<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData,std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData>>::__destroy_vector::operator()[abi:ne200100](&v3);

  operator delete(a1);
}

void std::__function::__func<realityio::SceneAssetBuilder::run(realityio::Inputs *)::$_1,std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::$_1>,void ()(void)>::operator()(void *a1)
{
  v2 = a1[4];
  v4 = a1[1];
  v3 = a1[2];
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - v4) >> 4);
  v56 = 0uLL;
  v57 = 0;
  v54 = 0;
  v55 = 0uLL;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  std::vector<realityio::WrappedRERef<REAsset *>>::reserve(&v51, v5);
  if (v5 > (*(&v55 + 1) - v54) >> 3)
  {
    if (!(v5 >> 61))
    {
      v46 = &v54;
      std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::mtlx::NeoShadeConnectable *>>(v5);
    }

    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }

  if (v3 != v4)
  {
    if (v5 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - v4) >> 4);
    }

    v7 = -1;
    v8 = 55;
    v9 = v6;
    while (1)
    {
      v60[0] = *(a1[1] + v8 + 17);
      if (v60[0])
      {
        RERetain();
      }

      Name = REEntityGetName();
      v11 = a1[1];
      if (*(v11 + v8 - 55) != 1)
      {
        goto LABEL_50;
      }

      v12 = Name;
      if ((*(v11 + v8 - 24) & 0x8000000000000000) != 0)
      {
        if (!*(v11 + v8 - 39))
        {
LABEL_24:
          v23 = *(realityio::logObjects(Name) + 24);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_247485000, v23, OS_LOG_TYPE_DEFAULT, "Invalid empty scene name, skipping.", buf, 2u);
          }

          goto LABEL_50;
        }
      }

      else if (!*(v11 + v8 - 24))
      {
        goto LABEL_24;
      }

      v13 = (v11 + v8);
      if (*v13 < 0)
      {
        v14 = *(v13 - 23);
      }

      v15 = a1[7];
      v16 = *(v13 + 9);
      v17 = REAssetManagerSceneAssetCreate();
      v59 = v17;
      if (v17)
      {
        v50 = v17;
        RERetain();
        realityio::Builder::addAsset(v2, &v50, 0);
        realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v50);
        v18 = a1[1] + v8;
        v19 = v55;
        v20 = (v55 - v54) >> 3;
        if (*(v18 - 54))
        {
          v7 = (v55 - v54) >> 3;
        }

        if (v55 >= *(&v55 + 1))
        {
          if ((v20 + 1) >> 61)
          {
            std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
          }

          v24 = (*(&v55 + 1) - v54) >> 2;
          if (v24 <= v20 + 1)
          {
            v24 = v20 + 1;
          }

          if (*(&v55 + 1) - v54 >= 0x7FFFFFFFFFFFFFF8uLL)
          {
            v25 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v25 = v24;
          }

          v46 = &v54;
          if (v25)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::mtlx::NeoShadeConnectable *>>(v25);
          }

          v26 = (8 * v20);
          *buf = 0;
          v44 = v26;
          v45[0] = (8 * v20);
          v45[1] = 0;
          v27 = *(v18 + 9);
          *v26 = v27;
          if (v27)
          {
            RERetain();
            v26 = v44;
            v28 = v45[0];
          }

          else
          {
            v28 = (8 * v20);
          }

          v45[0] = v28 + 8;
          v29 = (v54 + v26 - v55);
          std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<realityio::WrappedRERef<REScene *>>,realityio::WrappedRERef<REScene *>*>(v54, v55, v29);
          v30 = v54;
          v31 = *(&v55 + 1);
          v54 = v29;
          v40 = v45[0];
          v55 = *v45;
          v45[0] = v30;
          v45[1] = v31;
          *buf = v30;
          v44 = v30;
          std::__split_buffer<realityio::WrappedRERef<REScene *>>::~__split_buffer(buf);
          v22 = v40;
        }

        else
        {
          v21 = *(v18 + 9);
          *v55 = v21;
          if (v21)
          {
            RERetain();
          }

          v22 = (v19 + 8);
        }

        *&v55 = v22;
        v32 = v52;
        if (v52 >= v53)
        {
          v34 = std::vector<realityio::WrappedRERef<REAsset *>>::__emplace_back_slow_path<realityio::WrappedRERef<REAsset *> const&>(&v51, &v59);
        }

        else
        {
          v33 = v59;
          *v52 = v59;
          if (v33)
          {
            RERetain();
          }

          v34 = (v32 + 1);
        }

        v52 = v34;
        v35 = *(a1[1] + v8 + 9);
        v36 = v59;
        std::string::basic_string[abi:ne200100]<0>(v41, v12);
        realityio::ImportedScene::ImportedScene(buf, 1, v35, v36, v41, (a1[1] + v8 - 23), *(a1[1] + v8 - 54));
        std::vector<realityio::ImportedScene>::push_back[abi:ne200100](&v56, buf);
        if (v49 < 0)
        {
          operator delete(__p);
        }

        if (v47 < 0)
        {
          operator delete(v45[1]);
        }

        realityio::WrappedRERef<REAsset *>::~WrappedRERef(v45);
        realityio::WrappedRERef<void *>::~WrappedRERef(&v44);
        if (v42 < 0)
        {
          operator delete(v41[0]);
        }
      }

      realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v59);
LABEL_50:
      realityio::WrappedRERef<REEntity *>::~WrappedRERef(v60);
      v8 += 80;
      if (!--v9)
      {
        if (v7 < (v55 - v54) >> 3)
        {
          v37 = *(*(a1[6] + 16) + 128);
          if (v37)
          {
            *buf = a1[5];
            v41[0] = v54;
            v59 = (v55 - v54) >> 3;
            v60[0] = v51;
            v58 = v7;
            (*(*v37 + 48))(v37, buf, v41, v60, &v59, &v58);
          }
        }

        v38 = 72;
        do
        {
          v39 = *(a1[1] + v38);
          REEntitySetParent();
          v38 += 80;
          --v6;
        }

        while (v6);
        break;
      }
    }
  }

  std::mutex::lock((v2 + 304));
  std::vector<realityio::ImportedScene>::__vdeallocate((v2 + 280));
  *(v2 + 280) = v56;
  *(v2 + 296) = v57;
  v57 = 0;
  v56 = 0uLL;
  std::mutex::unlock((v2 + 304));
  *buf = &v51;
  std::vector<realityio::WrappedRERef<REAsset *>>::__destroy_vector::operator()[abi:ne200100](buf);
  *buf = &v54;
  std::vector<realityio::WrappedRERef<REScene *>>::__destroy_vector::operator()[abi:ne200100](buf);
  *buf = &v56;
  std::vector<realityio::ImportedScene>::__destroy_vector::operator()[abi:ne200100](buf);
}

void sub_247598058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  std::__split_buffer<realityio::WrappedRERef<REScene *>>::~__split_buffer(&a18);
  *(v34 - 128) = &a30;
  std::vector<realityio::WrappedRERef<REAsset *>>::__destroy_vector::operator()[abi:ne200100]((v34 - 128));
  a30 = &a33;
  std::vector<realityio::WrappedRERef<REScene *>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a33 = v34 - 160;
  std::vector<realityio::ImportedScene>::__destroy_vector::operator()[abi:ne200100](&a33);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::SceneAssetBuilder::run(realityio::Inputs *)::$_1,std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::$_1>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::vector<realityio::WrappedRERef<REAsset *>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<REComponentClass *>>(result, a2);
    }

    std::vector<realityio::WrappedRERef<REAsset *>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_247598234(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<realityio::WrappedRERef<REAsset *>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<realityio::WrappedRERef<REScene *>>,realityio::WrappedRERef<REScene *>*>(uint64_t *result, uint64_t *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = 0;
    v6 = a3 - 8;
    v7 = result;
    do
    {
      v8 = *v7;
      *(v6 + 8) = *v7;
      if (v8)
      {
        RERetain();
      }

      ++v7;
      v5 -= 8;
      v6 += 8;
    }

    while (v7 != a2);
    do
    {
      result = realityio::WrappedRERef<REScene *>::~WrappedRERef(v4++);
    }

    while (v4 != a2);
  }

  return result;
}

void sub_2475982C8(_Unwind_Exception *exception_object)
{
  for (; v2; v2 += 8)
  {
    realityio::WrappedRERef<REScene *>::~WrappedRERef(v1--);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<realityio::WrappedRERef<REScene *>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    realityio::WrappedRERef<REScene *>::~WrappedRERef((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<realityio::WrappedRERef<REScene *>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 = realityio::WrappedRERef<REScene *>::~WrappedRERef(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__shared_ptr_emplace<realityio::InputOutputWrapperObject<realityio::SceneAssetBuilder::run(realityio::Inputs *)::Dummy *>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285950368;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void realityio::DetailedError::makeFromCFError(uint64_t err@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = err;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, *a2, *(a2 + 8));
    if (!v5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v16 = *a2;
    if (!err)
    {
      goto LABEL_17;
    }
  }

  v7 = CFErrorCopyDescription(v5);
  realityio::CFStringCopyUTF8String(v7, v13);
  if (v13[0] == 1)
  {
    std::operator+<char>();
    v8 = (v12 & 0x80u) == 0 ? __p : __p[0];
    v9 = (v12 & 0x80u) == 0 ? v12 : __p[1];
    std::string::append(&v16, v8, v9);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  Code = CFErrorGetCode(v5);
  CFRelease(v5);
  v5 = Code;
  if (v13[0] == 1 && v15 < 0)
  {
    operator delete(v14);
  }

LABEL_17:
  realityio::DetailedError::DetailedError(a4, v5, a3, &v16);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }
}

void sub_247598570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a16 == 1 && a22 < 0)
  {
    operator delete(a17);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void realityio::MeshComponentBuilder::MeshComponentBuilder(realityio::MeshComponentBuilder *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v8[4] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v6, "MeshComponentBuilder");
  std::string::basic_string[abi:ne200100]<0>(&__p, realityio::kMeshComponentBuilderIdentifier);
  realityio::generateMeshAssetBuilderDirtyStageSubscription(&v4);
  v8[0] = &unk_285950460;
  v8[3] = v8;
  v7[0] = &unk_285950570;
  v7[3] = v7;
  realityio::DynamicBuilder::DynamicBuilder(this, a2);
}

void sub_247598714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](&a24);
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v24 - 56);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

uint64_t realityio::MeshComponentBuilder::run(realityio::MeshComponentBuilder *this, realityio::Inputs *a2)
{
  v60 = *MEMORY[0x277D85DE8];
  v4 = (a2 + 32);
  v5 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v53, v5, v4);
  v50 = 0;
  memset(v48, 0, sizeof(v48));
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v53))
  {
    v6 = *a2;
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v53, &v45);
    v7 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(v6 + 64, &v45);
    v8 = v6 + 72 == v7 || *(*(v6 + 40) + 104 * *(v7 + 40) + 24) != v45;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v45);
    if (!v8)
    {
      EntityGeneratingDataForPrim = realityio::internal::PrimToEntityMap::getEntityGeneratingDataForPrim((*a2 + 16), &v53);
      v11 = EntityGeneratingDataForPrim;
      if (EntityGeneratingDataForPrim)
      {
        if (*(EntityGeneratingDataForPrim + 72) + *(EntityGeneratingDataForPrim + 96))
        {
          isGuide = realityio::isGuide(&v53, v10);
          if (!isGuide)
          {
            v13 = realityio::EntityBuilder::kInputName(isGuide);
            realityio::Inputs::_getValue<realityio::WrappedRERef<REEntity *>>(a2, v13, &v45);
            if (v45)
            {
              *&buf = v46;
              if (v46)
              {
                RERetain();
                v14 = buf;
              }

              else
              {
                v14 = 0;
              }
            }

            else
            {
              v14 = 0;
              *&buf = 0;
            }

            v15 = v48[0];
            if (v48[0] != v14)
            {
              v48[0] = v14;
              *&buf = v15;
            }

            realityio::WrappedRERef<REEntity *>::~WrappedRERef(&buf);
            if (v48[0])
            {
              realityio::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v44, 2034, this);
              if (*(v11 + 96) == 1 && !*(v11 + 72) && (*(*(*(a2 + 5) + 16) + 272) & 1) == 0 && (pxrInternal__aapl__pxrReserved__::UsdPrim::IsA<pxrInternal__aapl__pxrReserved__::UsdGeomCone>(&v53) & 1) == 0 && (pxrInternal__aapl__pxrReserved__::UsdPrim::IsA<pxrInternal__aapl__pxrReserved__::UsdGeomCapsule>(&v53) & 1) == 0)
              {
                pxrInternal__aapl__pxrReserved__::UsdPrim::IsA<pxrInternal__aapl__pxrReserved__::UsdGeomCylinder>(&v53);
              }

              v47 = realityio::Inputs::assetManager(a2);
              v16 = realityio::MeshAssetBuilder::kOutputName(v47);
              MEMORY[0x24C1A5E00](&v41, v16);
              buf = 0uLL;
              v17 = *(a2 + 3);
              if (v17)
              {
                *(&buf + 1) = std::__shared_weak_count::lock(v17);
                if (*(&buf + 1))
                {
                  *&buf = *(a2 + 2);
                }
              }

              v59 = v41;
              if ((v41 & 7) != 0)
              {
                v18 = v41 & 0xFFFFFFFFFFFFFFF8;
                if ((atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
                {
                  v59 = v18;
                }
              }

              v19 = std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__equal_range_multi<realityio::BuilderAndIOName>(*(a2 + 1), &buf);
              v21 = v20;
              if ((v59 & 7) != 0)
              {
                atomic_fetch_add_explicit((v59 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              v22 = *(&buf + 1);
              if (*(&buf + 1))
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*(&buf + 1));
              }

              if ((v41 & 7) != 0)
              {
                atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if (v19 != v21)
              {
                v23 = realityio::MeshAssetBuilder::kOutputName(v22);
                realityio::Inputs::_getValue<std::shared_ptr<realityio::MeshAssetBuilder::MeshAssetDataT>>(a2, v23, &buf);
                if (buf == 1)
                {
                  v24 = **(&buf + 1);
                  v25 = *(*(&buf + 1) + 8);
                  if (v25)
                  {
                    atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
                  }
                }

                else
                {
                  v25 = 0;
                  v24 = 0;
                }

                v28 = v48[2];
                v48[1] = v24;
                v48[2] = v25;
                if (v28)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v28);
                  v24 = v48[1];
                }

                if (v24)
                {
                  v49 = *(*(&buf + 1) + 192);
                  *&v41 = *(*(&buf + 1) + 200);
                  if (v41)
                  {
                    RERetain();
                    v29 = v41;
                  }

                  else
                  {
                    v29 = 0;
                  }

                  v31 = v50;
                  if (v50 != v29)
                  {
                    v50 = v29;
                    *&v41 = v31;
                  }

                  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v41);
                  v51 = *(*(&buf + 1) + 104) != 0;
                  v41 = 0uLL;
                  v42 = 0;
                  std::vector<realityio::WrappedRERef<REAsset *>>::__init_with_size[abi:ne200100]<realityio::WrappedRERef<REAsset *>*,realityio::WrappedRERef<REAsset *>*>(&v41, *(*(&buf + 1) + 16), *(*(&buf + 1) + 24), (*(*(&buf + 1) + 24) - *(*(&buf + 1) + 16)) >> 3);
                  std::vector<realityio::WrappedRERef<REAsset *>>::__vdeallocate(&v48[3]);
                  *&v48[3] = v41;
                  v48[5] = v42;
                  v42 = 0;
                  v41 = 0uLL;
                  v57[0] = &v41;
                  std::vector<realityio::WrappedRERef<REAsset *>>::__destroy_vector::operator()[abi:ne200100](v57);
                  v52 = *(*(&buf + 1) + 208);
                  *&v41 = REMeshComponentGetComponentType();
                  std::__tree<REComponentClass *>::__emplace_unique_key_args<REComponentClass *,REComponentClass * const&>(this + 40, &v41);
                  if ((v49 & 1) != 0 || v51 || v52 == 1)
                  {
                    *&v41 = REMeshDeformationComponentGetComponentType();
                    std::__tree<REComponentClass *>::__emplace_unique_key_args<REComponentClass *,REComponentClass * const&>(this + 40, &v41);
                    if (v49 == 1)
                    {
                      *&v41 = REBlendShapeWeightsComponentGetComponentType();
                      std::__tree<REComponentClass *>::__emplace_unique_key_args<REComponentClass *,REComponentClass * const&>(this + 40, &v41);
                    }

                    if (v51)
                    {
                      *&v41 = RESkeletalPoseComponentGetComponentType();
                      std::__tree<REComponentClass *>::__emplace_unique_key_args<REComponentClass *,REComponentClass * const&>(this + 40, &v41);
                      *&v41 = RERigComponentGetComponentType();
                      std::__tree<REComponentClass *>::__emplace_unique_key_args<REComponentClass *,REComponentClass * const&>(this + 40, &v41);
                    }
                  }

                  v32 = v48[0];
                  v43 = v48[0];
                  if (v48[0])
                  {
                    v32 = RERetain();
                  }

                  v33 = *(a2 + 5);
                  v35 = *(this + 2);
                  v34 = *(this + 3);
                  if (v34)
                  {
                    atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v36 = realityio::MeshComponentBuilder::kOutputName(v32);
                  realityio::Outputs::getValue<std::shared_ptr<realityio::MeshComponentBuilder::BuildResult>>(&v41, v35, v36);
                  if (v34)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
                  }

                  v37 = *(a2 + 6);
                  v57[3] = 0;
                  operator new();
                }

                v30 = *(realityio::logObjects(v28) + 24);
                if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                {
                  LOWORD(v41) = 0;
                  _os_log_error_impl(&dword_247485000, v30, OS_LOG_TYPE_ERROR, "Stopping operation to set mesh component because mesh asset does not exist", &v41, 2u);
                }

                realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(&buf);
              }

              realityio::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v44);
            }

            else
            {
              PrimPath = pxrInternal__aapl__pxrReserved__::UsdObject::GetPrimPath(&v53);
              v27 = *(realityio::logObjects(PrimPath) + 24);
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(PrimPath);
                LODWORD(buf) = 136315138;
                *(&buf + 4) = Text;
                _os_log_error_impl(&dword_247485000, v27, OS_LOG_TYPE_ERROR, "Unable to create mesh entity at path (%s) because the entity does not exist.\n", &buf, 0xCu);
              }
            }

            realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(&v45);
          }
        }
      }
    }
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v50);
  v45 = &v48[3];
  std::vector<realityio::WrappedRERef<REAsset *>>::__destroy_vector::operator()[abi:ne200100](&v45);
  if (v48[2])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48[2]);
  }

  realityio::WrappedRERef<REEntity *>::~WrappedRERef(v48);
  if ((v56 & 7) != 0)
  {
    atomic_fetch_add_explicit((v56 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v55);
  result = v54;
  if (v54)
  {
    result = pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v54);
  }

  v39 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_247598EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(v35 - 144);
  realityio::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(&a17);
  realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(&a19);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&a35);
  _Unwind_Resume(a1);
}

uint64_t realityio::internal::PrimToEntityMap::getEntityGeneratingDataForPrim(realityio::internal::PrimToEntityMap *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  if (!pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a2))
  {
    return 0;
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a2, &v7);
  v4 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(this + 48, &v7);
  if ((this + 56) == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(this + 3) + 104 * v4[5];
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v7);
  return v5;
}

void sub_2475990D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

BOOL realityio::isGuide(realityio *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v11 = MEMORY[0x277D86740] + 16;
  if (!v12 || (*(v12 + 57) & 8) != 0 || !(*(MEMORY[0x277D86740] + 48))(&v11))
  {
    v4 = 0;
    goto LABEL_12;
  }

  pxrInternal__aapl__pxrReserved__::UsdGeomImageable::GetPurposeAttr(&v7, &v11);
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::TfToken>(&v7, v13);
  if (v13[0] != 1)
  {
    v3 = 0;
    goto LABEL_14;
  }

  v2 = v14;
  if ((v14 & 7) != 0)
  {
    if (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
    {
      v3 = v2;
    }

    else
    {
      v3 = v2 & 0xFFFFFFFFFFFFFFF8;
    }

    if (v13[0])
    {
      v2 = v14;
      goto LABEL_17;
    }

LABEL_14:
    if (v16 < 0)
    {
      operator delete(__p);
    }

    goto LABEL_19;
  }

  v3 = v14;
LABEL_17:
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

LABEL_19:
  v6 = atomic_load(MEMORY[0x277D86550]);
  if (!v6)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData();
  }

  v4 = (v3 ^ *(v6 + 392)) < 8;
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v9);
  if (v8)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v8);
  }

LABEL_12:
  MEMORY[0x24C1A54A0](&v11);
  return v4;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdPrim::IsA<pxrInternal__aapl__pxrReserved__::UsdGeomCone>(pxrInternal__aapl__pxrReserved__::UsdGeomCone *a1)
{
  pxrInternal__aapl__pxrReserved__::UsdGeomCone::_GetStaticTfType(a1);
  pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();

  return pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdPrim::IsA<pxrInternal__aapl__pxrReserved__::UsdGeomCapsule>(pxrInternal__aapl__pxrReserved__::UsdGeomCapsule *a1)
{
  pxrInternal__aapl__pxrReserved__::UsdGeomCapsule::_GetStaticTfType(a1);
  pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();

  return pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
}

uint64_t realityio::Outputs::getValue<std::shared_ptr<realityio::MeshComponentBuilder::BuildResult>>(uint64_t a1, std::mutex *a2, const void **a3)
{
  realityio::Outputs::getRawValue<std::shared_ptr<realityio::MeshComponentBuilder::BuildResult>>(v8, a2, a3);
  if (v8[0])
  {
    v4 = v9;
    if (*(&v9 + 1))
    {
      atomic_fetch_add_explicit((*(&v9 + 1) + 8), 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit((*(&v4 + 1) + 8), 1uLL, memory_order_relaxed);
      *a1 = 1;
      *(a1 + 8) = v4;
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v4 + 1));
    }

    else
    {
      *a1 = 1;
      *(a1 + 8) = v4;
      *(a1 + 16) = 0;
    }
  }

  else
  {
    v6 = v9;
    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v7, v10.__r_.__value_.__l.__data_, v10.__r_.__value_.__l.__size_);
    }

    else
    {
      v7 = v10;
    }

    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
  }

  return realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(v8);
}

void sub_24759941C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(va);
  _Unwind_Resume(a1);
}

uint64_t realityio::MeshComponentBuilder::kOutputName(realityio::MeshComponentBuilder *this)
{
  if ((atomic_load_explicit(&qword_27EE52FE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE52FE8))
  {
    operator new();
  }

  return _MergedGlobals_16;
}

void sub_2475994B0(_Unwind_Exception *a1)
{
  MEMORY[0x24C1A91B0](v1, 0x1012C40EC159624);
  __cxa_guard_abort(&qword_27EE52FE8);
  _Unwind_Resume(a1);
}

void anonymous namespace::MaterialsDataForMesh::~MaterialsDataForMesh(_anonymous_namespace_::MaterialsDataForMesh *this)
{
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(this + 8);
  v3 = (this + 32);
  std::vector<realityio::WrappedRERef<REAsset *>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  realityio::WrappedRERef<REEntity *>::~WrappedRERef(this + 1);
}

void realityio::MeshComponentBuilder::clear(realityio::MeshComponentBuilder *this, realityio::Inputs *a2)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 6);
  v9 = a2;
  v10[0] = &unk_2859508C0;
  v10[1] = &v9;
  v10[2] = this;
  v10[3] = v10;
  (*(*v3 + 16))(v3, v10);
  v4 = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v10);
  v6 = *(this + 2);
  v5 = *(this + 3);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = realityio::MeshComponentBuilder::kOutputName(v4);
  std::mutex::lock((v6 + 64));
  if (v6 + 48 != std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(v6 + 40, v7))
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::__erase_unique<std::string>((v6 + 40), v7);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__erase_unique<std::string>(v6, v7);
  std::mutex::unlock((v6 + 64));
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_2475997B8(_Unwind_Exception *a1)
{
  std::mutex::unlock(v2 + 1);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

void realityio::MeshComponentBuilder::~MeshComponentBuilder(realityio::MeshComponentBuilder *this)
{
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

uint64_t std::vector<realityio::WrappedRERef<REAsset *>>::__init_with_size[abi:ne200100]<realityio::WrappedRERef<REAsset *>*,realityio::WrappedRERef<REAsset *>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<realityio::WrappedRERef<REAsset *>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2475999A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<realityio::WrappedRERef<REAsset *>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<realityio::WrappedRERef<REAsset *>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<REComponentClass *>>(a1, a2);
  }

  std::vector<realityio::WrappedRERef<REAsset *>>::__throw_length_error[abi:ne200100]();
}

uint64_t *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<realityio::WrappedRERef<REAsset *>>,realityio::WrappedRERef<REAsset *>*,realityio::WrappedRERef<REAsset *>*,realityio::WrappedRERef<REAsset *>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v8 = *v6;
      *a4 = *v6;
      if (v8)
      {
        RERetain();
      }

      ++v6;
      ++a4;
      v7 -= 8;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_247599A60(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 8);
    do
    {
      v4 = realityio::WrappedRERef<REAsset *>::~WrappedRERef(v4) - 1;
      v2 += 8;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_247599E8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::MeshComponentBuilder::MeshComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0,std::allocator<realityio::MeshComponentBuilder::MeshComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0>,std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__shared_ptr_emplace<realityio::ConnectionOnEntityGeneratingPrimOnlyInputDescriptor>::__shared_ptr_emplace[abi:ne200100]<std::string const&,pxrInternal__aapl__pxrReserved__::TfToken &,realityio::InputDescriptor::Optionality,std::allocator<realityio::ConnectionOnEntityGeneratingPrimOnlyInputDescriptor>,0>(void *a1, uint64_t a2, uint64_t *a3, int *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2859504D0;
  std::allocator<realityio::ConnectionOnEntityGeneratingPrimOnlyInputDescriptor>::construct[abi:ne200100]<realityio::ConnectionOnEntityGeneratingPrimOnlyInputDescriptor,std::string const&,pxrInternal__aapl__pxrReserved__::TfToken &,realityio::InputDescriptor::Optionality>(&v6, a1 + 3, a2, a3, a4);
  return a1;
}

void std::__shared_ptr_emplace<realityio::ConnectionOnEntityGeneratingPrimOnlyInputDescriptor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2859504D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::allocator<realityio::ConnectionOnEntityGeneratingPrimOnlyInputDescriptor>::construct[abi:ne200100]<realityio::ConnectionOnEntityGeneratingPrimOnlyInputDescriptor,std::string const&,pxrInternal__aapl__pxrReserved__::TfToken &,realityio::InputDescriptor::Optionality>(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, int *a5)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  realityio::ConnectionOnEntityGeneratingPrimOnlyInputDescriptor::ConnectionOnEntityGeneratingPrimOnlyInputDescriptor(a2, &__p, a4, *a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_24759A258(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *realityio::ConnectionOnEntityGeneratingPrimOnlyInputDescriptor::ConnectionOnEntityGeneratingPrimOnlyInputDescriptor(void *a1, uint64_t a2, uint64_t *a3, int a4)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  realityio::InputDescriptor::InputDescriptor(a1, &__p, a3, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *a1 = &unk_285950520;
  return a1;
}

void sub_24759A31C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void realityio::ConnectionOnEntityGeneratingPrimOnlyInputDescriptor::~ConnectionOnEntityGeneratingPrimOnlyInputDescriptor(realityio::ConnectionOnEntityGeneratingPrimOnlyInputDescriptor *this)
{
  realityio::InputDescriptor::~InputDescriptor(this);

  JUMPOUT(0x24C1A91B0);
}

void *realityio::ConnectionOnEntityGeneratingPrimOnlyInputDescriptor::resolvedPrimPaths@<X0>(unsigned int *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  result = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(a2 + 48, a1);
  if ((a2 + 56) != result && *(*(a2 + 24) + 104 * result[5] + 24) == *a1)
  {
    return std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>(a3, a1);
  }

  return result;
}

void *std::__shared_ptr_emplace<realityio::ChildPrimInputDescriptor>::__shared_ptr_emplace[abi:ne200100]<std::string,pxrInternal__aapl__pxrReserved__::TfToken &,pxrInternal__aapl__pxrReserved__::TfToken,realityio::InputDescriptor::Optionality,std::allocator<realityio::ChildPrimInputDescriptor>,0>(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, int *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285947DB0;
  std::allocator<realityio::ChildPrimInputDescriptor>::construct[abi:ne200100]<realityio::ChildPrimInputDescriptor,std::string,pxrInternal__aapl__pxrReserved__::TfToken &,pxrInternal__aapl__pxrReserved__::TfToken,realityio::InputDescriptor::Optionality>(&v7, a1 + 3, a2, a3, a4, a5);
  return a1;
}

void std::allocator<realityio::ChildPrimInputDescriptor>::construct[abi:ne200100]<realityio::ChildPrimInputDescriptor,std::string,pxrInternal__aapl__pxrReserved__::TfToken &,pxrInternal__aapl__pxrReserved__::TfToken,realityio::InputDescriptor::Optionality>(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, int *a6)
{
  *__p = *a3;
  v8 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  v6 = *a5;
  *a5 = 0;
  realityio::ChildPrimInputDescriptor::ChildPrimInputDescriptor(a2, __p, a4, &v6, *a6);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_24759A5A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24759A778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::MeshComponentBuilder::MeshComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1,std::allocator<realityio::MeshComponentBuilder::MeshComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1>,std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void realityio::Inputs::_getValue<std::shared_ptr<realityio::MeshAssetBuilder::MeshAssetDataT>>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = 0;
  v44 = 0;
  v6 = *(a1 + 24);
  if (v6)
  {
    v44 = std::__shared_weak_count::lock(v6);
    if (v44)
    {
      v43 = *(a1 + 16);
    }
  }

  MEMORY[0x24C1A5E00](&v45, a2);
  v7 = std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__equal_range_multi<realityio::BuilderAndIOName>(*(a1 + 8), &v43);
  if (v7 == v8)
  {
    std::operator+<char>();
    v9 = std::string::append(&v41, ") at prim path (");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v42.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v42.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((a1 + 32));
    v12 = *(String + 23);
    if (v12 >= 0)
    {
      v13 = String;
    }

    else
    {
      v13 = *String;
    }

    if (v12 >= 0)
    {
      v14 = *(String + 23);
    }

    else
    {
      v14 = *(String + 8);
    }

    v15 = std::string::append(&v42, v13, v14);
    v16 = *&v15->__r_.__value_.__l.__data_;
    v46[0].__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v46[0].__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    v17 = std::string::append(v46, ")");
LABEL_22:
    v28 = *&v17->__r_.__value_.__l.__data_;
    *&__p[16] = *(&v17->__r_.__value_.__l + 2);
    *__p = v28;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    realityio::DetailedError::DetailedError(v47, 204, &realityio::FoundationErrorCategory(void)::instance, __p);
    *(a3 + 8) = *v47;
    v29 = *&v47[24];
    *(a3 + 24) = *&v47[16];
    *(a3 + 32) = v29;
    *(a3 + 39) = *&v47[31];
    LOBYTE(v29) = v47[39];
    memset(&v47[16], 0, 24);
    *a3 = 0;
    *(a3 + 47) = v29;
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (SHIBYTE(v46[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46[0].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    goto LABEL_52;
  }

  v18 = 1;
  v19 = v7;
  do
  {
    v19 = *v19;
    --v18;
  }

  while (v19 != v8);
  if (v18)
  {
    std::operator+<char>();
    v20 = std::string::append(&v41, ") at prim path (");
    v21 = *&v20->__r_.__value_.__l.__data_;
    v42.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
    *&v42.__r_.__value_.__l.__data_ = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v22 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((a1 + 32));
    v23 = *(v22 + 23);
    if (v23 >= 0)
    {
      v24 = v22;
    }

    else
    {
      v24 = *v22;
    }

    if (v23 >= 0)
    {
      v25 = *(v22 + 23);
    }

    else
    {
      v25 = *(v22 + 8);
    }

    v26 = std::string::append(&v42, v24, v25);
    v27 = *&v26->__r_.__value_.__l.__data_;
    v46[0].__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
    *&v46[0].__r_.__value_.__l.__data_ = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    v17 = std::string::append(v46, ") because more than one connected builder produced the same output type");
    goto LABEL_22;
  }

  v30 = v7[5];
  v32 = *(v30 + 16);
  v31 = *(v30 + 24);
  if (v31)
  {
    atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if ((v7[7] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v7[7] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v7);
  }

  realityio::Outputs::getRawValue<std::shared_ptr<realityio::MeshAssetBuilder::MeshAssetDataT>>(v32, EmptyString, v47);
  v34 = v47[0];
  if (v47[0])
  {
    v36 = *&v47[8];
    v35 = *&v47[16];
    if (*&v47[16])
    {
      atomic_fetch_add_explicit((*&v47[16] + 8), 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
      __p[0] = 1;
      *&__p[8] = v36;
      *&__p[16] = v35;
      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    }

    else
    {
      __p[0] = 1;
      *&__p[8] = *&v47[8];
      *&__p[16] = 0;
    }
  }

  else
  {
    *&v46[0].__r_.__value_.__l.__data_ = *&v47[8];
    if (SHIBYTE(v48) < 0)
    {
      std::string::__init_copy_ctor_external(&v46[0].__r_.__value_.__r.__words[2], *&v47[24], *&v47[32]);
    }

    else
    {
      *&v46[0].__r_.__value_.__r.__words[2] = *&v47[24];
      v46[1].__r_.__value_.__l.__size_ = v48;
    }

    __p[0] = 0;
    *&__p[8] = *&v46[0].__r_.__value_.__l.__data_;
    v39 = *&v46[0].__r_.__value_.__r.__words[2];
    size = v46[1].__r_.__value_.__l.__size_;
  }

  realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(v47);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (v34)
  {
    v37 = *&__p[8];
    *&__p[8] = 0;
    *&__p[16] = 0;
    *a3 = 1;
    *(a3 + 8) = v37;
  }

  else
  {
    *v47 = *&__p[8];
    if (SHIBYTE(size) < 0)
    {
      std::string::__init_copy_ctor_external(&v47[16], v39, *(&v39 + 1));
    }

    else
    {
      *&v47[16] = v39;
      *&v47[32] = size;
    }

    *a3 = 0;
    *(a3 + 8) = *v47;
    *(a3 + 24) = *&v47[16];
    *(a3 + 40) = *&v47[32];
  }

  realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(__p);
LABEL_52:
  if ((v45 & 7) != 0)
  {
    atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }
}

void sub_24759ABE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, std::__shared_weak_count *a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(&a9);
  if ((a30 & 7) != 0)
  {
    atomic_fetch_add_explicit((a30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a29);
  }

  _Unwind_Resume(a1);
}

void realityio::Outputs::getRawValue<std::shared_ptr<realityio::MeshAssetBuilder::MeshAssetDataT>>(std::mutex *a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  std::mutex::lock(a1 + 1);
  v6 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(&a1->__m_.__opaque[32], a2);
  if (&a1->__m_.__opaque[40] == v6)
  {
    std::operator+<char>();
    v10 = std::string::append(&v13, " does not exist in the builder outputs");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v15 = v10->__r_.__value_.__r.__words[2];
    *__p = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    realityio::DetailedError::DetailedError(&v16, 207, &realityio::FoundationErrorCategory(void)::instance, __p);
    *(a3 + 8) = v16;
    v12 = v18;
    *(a3 + 24) = v17;
    *(a3 + 32) = v12;
    *(a3 + 39) = *(&v18 + 7);
    LOBYTE(v12) = HIBYTE(v18);
    v18 = 0uLL;
    v17 = 0;
    *a3 = 0;
    *(a3 + 47) = v12;
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v7 = *(v6 + 56);
    v9 = *(v7 + 8);
    v8 = *(v7 + 16);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    *a3 = 1;
    *(a3 + 8) = v9;
    *(a3 + 16) = v8;
  }

  std::mutex::unlock(a1 + 1);
}

void sub_24759ADD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock(v15 + 1);
  _Unwind_Resume(a1);
}

void std::vector<realityio::WrappedRERef<REAsset *>>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v1;
    if (v3 != v1)
    {
      do
      {
        v3 = realityio::WrappedRERef<REAsset *>::~WrappedRERef(v3 - 1);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void realityio::Outputs::getRawValue<std::shared_ptr<realityio::MeshComponentBuilder::BuildResult>>(uint64_t a1, std::mutex *a2, const void **a3)
{
  v22[2] = *MEMORY[0x277D85DE8];
  std::mutex::lock(a2 + 1);
  v6 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(&a2->__m_.__opaque[32], a3);
  if (&a2->__m_.__opaque[40] == v6)
  {
    std::operator+<char>();
    v10 = std::string::append(&v16, " does not exist in the builder outputs");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v18 = v10->__r_.__value_.__r.__words[2];
    *__p = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    realityio::DetailedError::DetailedError(&v19, 207, &realityio::FoundationErrorCategory(void)::instance, __p);
    *(a1 + 8) = v19;
    v12 = v20;
    v22[0] = v21;
    *(v22 + 7) = *(&v21 + 7);
    v13 = HIBYTE(v21);
    v21 = 0uLL;
    v20 = 0;
    *a1 = 0;
    *(a1 + 39) = *(v22 + 7);
    v14 = v22[0];
    *(a1 + 24) = v12;
    *(a1 + 32) = v14;
    *(a1 + 47) = v13;
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v7 = *(v6 + 56);
    v9 = *(v7 + 8);
    v8 = *(v7 + 16);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    *a1 = 1;
    *(a1 + 8) = v9;
    *(a1 + 16) = v8;
  }

  std::mutex::unlock(a2 + 1);
  v15 = *MEMORY[0x277D85DE8];
}

void sub_24759AFC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock(v15 + 1);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<realityio::MeshComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::MeshComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2859505F0;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<realityio::MeshComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::MeshComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = a1;
  v55[19] = *MEMORY[0x277D85DE8];
  if (*(a1 + 32) == 1)
  {
    v37 = *(a1 + 16);
    v2 = *(*(a1 + 8) + 8);
    ChildCount = REEntityGetChildCount();
    v4 = ChildCount;
    v40 = 0;
    v5 = *(v1 + 64);
    if (*v5 == 1 && (v6 = *(v5 + 8)) != 0 && (*(v6 + 1) & 1) != 0)
    {
      realityio::WrappedRERef<REAsset *>::operator=(*(a1 + 56), (v6 + 8));
      __p[0] = **(a1 + 56);
      realityio::WrappedRERef<REAsset *>::operator=(&v40, __p);
    }

    else
    {
      v45 = 0;
      v46 = 0;
      v44 = &v45;
      if (ChildCount)
      {
        v7 = 0;
        do
        {
          v8 = *(*(a1 + 8) + 8);
          REEntityGetChild();
          Name = REEntityGetName();
          std::string::basic_string[abi:ne200100]<0>(__p, Name);
          std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(&v44, __p);
          if (SHIBYTE(v51) < 0)
          {
            operator delete(__p[0]);
          }

          ++v7;
        }

        while (v4 != v7);
      }

      std::string::basic_string[abi:ne200100]<0>(v41, "usdPrimitiveAxis");
      v10 = 0;
      v11 = *MEMORY[0x277D82818];
      v12 = *(MEMORY[0x277D82818] + 64);
      v13 = *(MEMORY[0x277D82818] + 72);
      while (&v45 != std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(&v44, v41))
      {
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](__p);
        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v51, "usdPrimitiveAxis_", 17);
        MEMORY[0x24C1A8F10](v14, v10);
        std::stringbuf::str();
        if (SHIBYTE(v42) < 0)
        {
          operator delete(v41[0]);
        }

        *v41 = v48;
        v42 = v49;
        __p[0] = v11;
        *(__p + *(v11 - 3)) = v12;
        v51 = v13;
        v52 = (MEMORY[0x277D82878] + 16);
        if (v54 < 0)
        {
          operator delete(v53[7].__locale_);
        }

        v52 = (MEMORY[0x277D82868] + 16);
        std::locale::~locale(v53);
        std::iostream::~basic_iostream();
        MEMORY[0x24C1A9110](v55);
        v10 = (v10 + 1);
      }

      v15 = REEntityCreate();
      if (v40)
      {
        RERelease();
      }

      v40 = v15;
      if (v15)
      {
        v16 = *(*(a1 + 8) + 8);
        REEntitySetName();
        REEntitySetParent();
        __p[0] = v40;
        RERetain();
        v17 = *(a1 + 56);
        v18 = *v17;
        if (*v17 != __p[0])
        {
          *v17 = __p[0];
          __p[0] = v18;
        }

        realityio::WrappedRERef<REEntity *>::~WrappedRERef(__p);
        v19 = **(a1 + 56);
        RENetworkComponentGetComponentType();
        __p[0] = &unk_285950660;
        v52 = __p;
        v20 = REEntityGetOrAddComponentByClass();
        std::function<void ()(REComponent *)>::operator()(__p, v20);
        RENetworkMarkComponentDirty();
        std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](__p);
        *&v48 = REGroundingShadowComponentGetComponentType();
        v21 = 0;
        *(&v48 + 1) = REMeshSortingComponentGetComponentType();
        do
        {
          v22 = *(&v48 + v21);
          ComponentByClass = REEntityGetComponentByClass();
          if (ComponentByClass)
          {
            RERetain();
            if (ComponentByClass)
            {
              REEntityRemoveComponentByClass();
              REEntityAddExistingComponent();
            }
          }

          realityio::WrappedRERef<REComponent *>::~WrappedRERef(&ComponentByClass);
          v21 += 8;
        }

        while (v21 != 16);
      }

      if (SHIBYTE(v42) < 0)
      {
        operator delete(v41[0]);
      }

      std::__tree<std::string>::destroy(&v44, v45);
    }

    if (v40)
    {
      v23 = *(*(a1 + 48) + 80);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v48, (v23 + 28));
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v48 + 1, (v23 + 32));
      v41[0] = 0;
      v41[1] = 0;
      v24 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((**(a1 + 40) + 8));
      pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v44, v24, &v48);
      *v41 = realityio::getGeomPrimitiveOrientation(&v44, v25);
      if ((v47 & 7) != 0)
      {
        atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v46);
      if (v45)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v45);
      }

      RETransformComponentGetComponentType();
      v44 = &unk_2859506E0;
      v45 = v41;
      v47 = &v44;
      v26 = REEntityGetOrAddComponentByClass();
      std::function<void ()(REComponent *)>::operator()(&v44, v26);
      RENetworkMarkComponentDirty();
      std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](&v44);
      if (REComponentClassFromName())
      {
        v27 = REEntityGetOrAddComponentByClass();
        realityio::Builder::addComponent(v37, v27);
        Object = RECustomComponentGetObject();
        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(*(a1 + 72), &ComponentByClass);
        Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&ComponentByClass);
        if (*Object)
        {
          RECIntrospectionFree();
          *Object = 0;
        }

        if (Text)
        {
          strlen(Text);
          v30 = RECIntrospectionAlloc();
          *Object = v30;
          strcpy(v30, Text);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&ComponentByClass);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v48);
    }

    realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v40);
    v1 = a1;
  }

  v31 = **(v1 + 56);
  REMeshComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  v32 = *(a1 + 8);
  v33 = *(v32 + 16);
  v34 = *(v32 + 24);
  if (v34)
  {
    atomic_fetch_add_explicit((v34 + 8), 1uLL, memory_order_relaxed);
    v35 = *(a1 + 24);
    atomic_fetch_add_explicit((v34 + 8), 1uLL, memory_order_relaxed);
  }

  else
  {
    v36 = *(a1 + 24);
  }

  v43 = 0;
  operator new();
}

uint64_t std::__function::__func<realityio::MeshComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::MeshComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNKSt3__110__function6__funcIZZN9realityio20MeshComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E_NS_9allocatorIS8_EEFvP11REComponentEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN9realityio20MeshComponentBuilder3runEPNS_6InputsEENK3__0clEvEUlT_E_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNKSt3__110__function6__funcIZZN9realityio20MeshComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E0_NS_9allocatorIS8_EEFvP11REComponentEE7__cloneEPNS0_6__baseISD_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2859506E0;
  a2[1] = v2;
  return result;
}

void _ZNSt3__110__function6__funcIZZN9realityio20MeshComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E0_NS_9allocatorIS8_EEFvP11REComponentEEclEOSC_(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = **(a1 + 8);
  RETransformComponentSetLocalOrientation();

  JUMPOUT(0x24C1A3400);
}

uint64_t _ZNKSt3__110__function6__funcIZZN9realityio20MeshComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E0_NS_9allocatorIS8_EEFvP11REComponentEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN9realityio20MeshComponentBuilder3runEPNS_6InputsEENK3__0clEvEUlT_E0_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<realityio::MeshComponentBuilder::run(realityio::Inputs *)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<realityio::MeshComponentBuilder::run(realityio::Inputs *)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_285950760;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<realityio::MeshComponentBuilder::run(realityio::Inputs *)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<realityio::MeshComponentBuilder::run(realityio::Inputs *)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_285950760;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__function::__func<realityio::MeshComponentBuilder::run(realityio::Inputs *)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<realityio::MeshComponentBuilder::run(realityio::Inputs *)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_285950760;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<realityio::MeshComponentBuilder::run(realityio::Inputs *)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<realityio::MeshComponentBuilder::run(realityio::Inputs *)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<realityio::MeshComponentBuilder::run(realityio::Inputs *)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<realityio::MeshComponentBuilder::run(realityio::Inputs *)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<realityio::MeshComponentBuilder::run(realityio::Inputs *)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<realityio::MeshComponentBuilder::run(realityio::Inputs *)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(*(a1 + 16) + 8);
  return REMeshComponentSetMesh();
}

uint64_t std::__function::__func<realityio::MeshComponentBuilder::run(realityio::Inputs *)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<realityio::MeshComponentBuilder::run(realityio::Inputs *)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::MeshComponentBuilder::BuildResult>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2859507F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::InputOutputWrapperObject<std::shared_ptr<realityio::MeshComponentBuilder::BuildResult>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285950840;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::InputOutputWrapperObject<std::shared_ptr<realityio::MeshComponentBuilder::BuildResult>>>::__on_zero_shared(uint64_t a1)
{
  *(a1 + 24) = &unk_285950890;
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t realityio::InputOutputWrapperObject<std::shared_ptr<realityio::MeshComponentBuilder::BuildResult>>::getRawValue(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  return v2;
}

__n128 std::__function::__func<realityio::MeshComponentBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::MeshComponentBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2859508C0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<realityio::MeshComponentBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::MeshComponentBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = **(a1 + 8);
  v3 = realityio::EntityBuilder::kInputName(a1);
  realityio::Inputs::_getValue<realityio::WrappedRERef<REEntity *>>(v2, v3, v15);
  if (v15[0])
  {
    v14 = v16;
    if (v16)
    {
      RERetain();
      REMeshComponentGetComponentType();
      if (REEntityGetComponentByClass())
      {
        REMeshComponentGetComponentType();
        REEntityRemoveComponentByClass();
      }

      REMeshDeformationComponentGetComponentType();
      if (REEntityGetComponentByClass())
      {
        REMeshDeformationComponentGetComponentType();
        REEntityRemoveComponentByClass();
      }

      REBlendShapeWeightsComponentGetComponentType();
      if (REEntityGetComponentByClass())
      {
        REBlendShapeWeightsComponentGetComponentType();
        REEntityRemoveComponentByClass();
      }

      RESkeletalPoseComponentGetComponentType();
      if (REEntityGetComponentByClass())
      {
        RESkeletalPoseComponentGetComponentType();
        REEntityRemoveComponentByClass();
      }

      RERigComponentGetComponentType();
      ComponentByClass = REEntityGetComponentByClass();
      if (ComponentByClass)
      {
        RERigComponentGetComponentType();
        ComponentByClass = REEntityRemoveComponentByClass();
      }

      v6 = *(v1 + 16);
      v5 = *(v1 + 24);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v7 = realityio::MeshComponentBuilder::kOutputName(ComponentByClass);
      realityio::Outputs::getRawValue<std::shared_ptr<realityio::MeshComponentBuilder::BuildResult>>(v19, v6, v7);
      v8 = v19[0];
      if (v19[0])
      {
        v9 = v20;
        if (*(&v20 + 1))
        {
          atomic_fetch_add_explicit((*(&v20 + 1) + 8), 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit((*(&v9 + 1) + 8), 1uLL, memory_order_relaxed);
          v11[0] = 1;
          v12 = v9;
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v9 + 1));
        }

        else
        {
          v11[0] = 1;
          v12 = v20;
        }
      }

      else
      {
        v17 = v20;
        if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v18, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
        }

        else
        {
          v18 = v21;
        }

        v11[0] = 0;
        v12 = v17;
        v13 = v18;
      }

      realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(v19);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }

      if (v8 && v12 && *(v12 + 1) == 1)
      {
        MEMORY[0x24C1A36B0](*(v12 + 8));
      }

      realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(v11);
    }
  }

  else
  {
    v14 = 0;
  }

  realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v14);
  return realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(v15);
}

void sub_24759C2EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(va);
  realityio::WrappedRERef<REEntity *>::~WrappedRERef(va1);
  realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(va2);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::MeshComponentBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::MeshComponentBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t realityio::internal::enableSignposts(realityio::internal *this, char a2)
{
  v3 = this;
  {
    realityio::Defaults::intValue("enableSignposts", v5, v6);
    realityio::internal::enableSignposts(BOOL,BOOL)::value = v6[0] ^ 1 | (v7 != 0);
  }

  if (v3)
  {
    realityio::internal::enableSignposts(BOOL,BOOL)::value = a2;
  }

  else
  {
    a2 = realityio::internal::enableSignposts(BOOL,BOOL)::value;
  }

  return a2 & 1;
}

void realityio::MeshDescriptorAction::getMaterialGroupInfo(uint64_t *a1, _DWORD *a2, uint64_t a3)
{
  v3 = a3;
  v57 = *MEMORY[0x277D85DE8];
  v5 = atomic_load(&realityio::tokens::EcsTokens);
  if (!v5)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::EcsTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::EcsTokens_StaticTokenType>>::_TryToCreateData();
  }

  v6 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(a3, (v5 + 280));
  v7 = v3 + 1;
  if (v3 + 1 == v6)
  {
    v56 = 0;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v55, (v6 + 5));
  }

  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<int>(v55))
  {
    if ((v56 & 4) != 0)
    {
      v8 = (*((v56 & 0xFFFFFFFFFFFFFFF8) + 168))(v55);
    }

    else
    {
      v8 = v55;
    }

    *a2 = *v8;
  }

  v9 = *v3;
  if (*v3 != v7)
  {
    v40 = v3 + 1;
    v41 = v3;
    do
    {
      std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::VtValue>::pair[abi:ne200100](&v52, v9 + 4);
      v10 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<int>>(&v53);
      if (v10)
      {
        v49 = 0;
        v48 = 0u;
        v47 = 0u;
        if ((v52 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          EmptyString = (v52 & 0xFFFFFFFFFFFFFFF8) + 16;
        }

        else
        {
          EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v10);
        }

        if (*(EmptyString + 23) >= 0)
        {
          v13 = *(EmptyString + 23);
        }

        else
        {
          v13 = *(EmptyString + 8);
        }

        std::string::basic_string[abi:ne200100](__p, v13 + 15);
        if (v44 >= 0)
        {
          v14 = __p;
        }

        else
        {
          v14 = __p[0];
        }

        if (v13)
        {
          if (*(EmptyString + 23) >= 0)
          {
            v15 = EmptyString;
          }

          else
          {
            v15 = *EmptyString;
          }

          memmove(v14, v15, v13);
        }

        strcpy(v14 + v13, "_materialOffset");
        MEMORY[0x24C1A5E00](&v45, __p);
        v16 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(v3, &v45);
        if (v7 == v16)
        {
          v51 = 0;
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v50, (v16 + 5));
        }

        if ((v45 & 7) != 0)
        {
          atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v44 < 0)
        {
          operator delete(__p[0]);
        }

        if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<int>(v50))
        {
          if ((v51 & 4) != 0)
          {
            v17 = (*((v51 & 0xFFFFFFFFFFFFFFF8) + 168))(v50);
          }

          else
          {
            v17 = v50;
          }

          v46 = *v17;
        }

        if ((v54 & 4) != 0)
        {
          v18 = (*((v54 & 0xFFFFFFFFFFFFFFF8) + 168))(&v53);
        }

        else
        {
          v18 = v53;
        }

        pxrInternal__aapl__pxrReserved__::VtArray<int>::operator=(&v47, v18);
        v20 = a1[1];
        v19 = a1[2];
        if (v20 >= v19)
        {
          v23 = *a1;
          v24 = &v20[-*a1];
          v25 = 0xAAAAAAAAAAAAAAABLL * (v24 >> 4) + 1;
          if (v25 > 0x555555555555555)
          {
            std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
          }

          v26 = 0xAAAAAAAAAAAAAAABLL * ((v19 - v23) >> 4);
          if (2 * v26 > v25)
          {
            v25 = 2 * v26;
          }

          if (v26 >= 0x2AAAAAAAAAAAAAALL)
          {
            v27 = 0x555555555555555;
          }

          else
          {
            v27 = v25;
          }

          if (v27)
          {
            if (v27 <= 0x555555555555555)
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v28 = 16 * (v24 >> 4);
          *v28 = v46;
          *(v28 + 8) = v47;
          *(v28 + 24) = v48;
          v47 = 0u;
          v48 = 0u;
          *(v28 + 40) = v49;
          v49 = 0;
          v29 = v28 - v24;
          if (v23 != v20)
          {
            v30 = 32;
            v31 = v29;
            v32 = v23;
            do
            {
              *(v30 - 32) = *v32;
              v33 = *(v32 + 8);
              *(v31 + 24) = *(v32 + 24);
              *(v31 + 8) = v33;
              v34 = *(v32 + 5);
              *(v31 + 40) = v34;
              if (v34)
              {
                v35 = (v34 - 16);
                if (*v30)
                {
                  v35 = *v30;
                }

                atomic_fetch_add_explicit(v35, 1uLL, memory_order_relaxed);
              }

              v32 += 48;
              v31 += 48;
              v30 += 48;
            }

            while (v32 != v20);
            do
            {
              pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef((v23 + 8));
              v23 += 48;
            }

            while (v23 != v20);
            v23 = *a1;
          }

          v22 = v28 + 48;
          *a1 = v29;
          a1[1] = v28 + 48;
          a1[2] = 0;
          if (v23)
          {
            operator delete(v23);
          }

          v7 = v40;
          v3 = v41;
        }

        else
        {
          *v20 = v46;
          v21 = v47;
          *(v20 + 24) = v48;
          *(v20 + 8) = v21;
          v48 = 0u;
          v47 = 0u;
          *(v20 + 5) = v49;
          v49 = 0;
          v22 = (v20 + 48);
        }

        a1[1] = v22;
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v50);
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v47);
      }

      else if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<int>(&v53))
      {
        v12 = &v53;
        if ((v54 & 4) != 0)
        {
          v12 = (*((v54 & 0xFFFFFFFFFFFFFFF8) + 168))(&v53);
        }

        *a2 = *v12;
      }

      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v53);
      if ((v52 & 7) != 0)
      {
        atomic_fetch_add_explicit((v52 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v36 = v9[1];
      if (v36)
      {
        do
        {
          v37 = v36;
          v36 = *v36;
        }

        while (v36);
      }

      else
      {
        do
        {
          v37 = v9[2];
          v38 = *v37 == v9;
          v9 = v37;
        }

        while (!v38);
      }

      v9 = v37;
    }

    while (v37 != v7);
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v55);
  v39 = *MEMORY[0x277D85DE8];
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__13mapIN32pxrInternal__aapl__pxrReserved__7TfTokenENS1_7VtValueENS_4lessIS2_EENS_9allocatorINS_4pairIKS2_S3_EEEEEE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }
}

void realityio::MeshDescriptorAction::setupModelDescriptor(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v6 = *a2;
  }

  REGeomModelDescriptorSetName();
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = -1;
  v7 = *a3;
  if (a3[1] != *a3)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    do
    {
      pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v30, (*a4 + v9));
      v11 = *pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v7 + v8));
      if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v11 &= 0xFFFFFFFFFFFFFFF8;
      }

      NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v7 + v8));
      v13 = atomic_load(&realityio::tokens::EcsTokens);
      if (!v13)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::EcsTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::EcsTokens_StaticTokenType>>::_TryToCreateData();
      }

      if ((*(v13 + 224) ^ *NameToken) <= 7 && pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>(&v30))
      {
        if ((v31 & 4) != 0)
        {
          v14 = (*((v31 & 0xFFFFFFFFFFFFFFF8) + 168))(&v30);
        }

        else
        {
          v14 = v30;
        }

        std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>::map[abi:ne200100](&__p, v14);
        realityio::MeshDescriptorAction::getMaterialGroupInfo(&v24, &v27, &__p);
        std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(&__p, v29);
      }

      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v30);
      ++v10;
      v7 = *a3;
      v9 += 16;
      v8 += 8;
    }

    while (v10 < (a3[1] - *a3) >> 3);
  }

  REGeomModelDescriptorClearMaterialAssignments();
  if (v24 == v25)
  {
    REGeomModelDescriptorSetMaterialAssignmentForModel();
  }

  else
  {
    FaceCount = REGeomModelDescriptorGetFaceCount();
    LODWORD(v30) = 0;
    std::vector<unsigned int>::vector[abi:ne200100](&__p, FaceCount);
    v16 = v24;
    v17 = v25;
    while (v16 != v17)
    {
      v18 = *(v16 + 8);
      if (v18)
      {
        v19 = *(v16 + 40);
        v20 = __p;
        v21 = 4 * v18;
        do
        {
          v22 = *v19;
          if (v22 < FaceCount)
          {
            v20[v22] = *v16;
          }

          ++v19;
          v21 -= 4;
        }

        while (v21);
      }

      v16 += 48;
    }

    REGeomModelDescriptorSetMaterialAssignmentsPerFace();
    if (__p)
    {
      v29 = __p;
      operator delete(__p);
    }
  }

  __p = &v24;
  std::vector<realityio::MeshDescriptorAction::MaterialGroupInfo>::__destroy_vector::operator()[abi:ne200100](&__p);
  v23 = *MEMORY[0x277D85DE8];
}

void sub_24759CD5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char *a14, void *__p, uint64_t a16, uint64_t a17, char a18)
{
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  a14 = &a11;
  std::vector<realityio::MeshDescriptorAction::MaterialGroupInfo>::__destroy_vector::operator()[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

void realityio::MeshDescriptorAction::operator()(uint64_t a1@<X0>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, pxrInternal__aapl__pxrReserved__::SdfPath **a3@<X3>, void *a4@<X4>, uint64_t a5@<X8>)
{
  v5 = a3;
  v296 = *MEMORY[0x277D85DE8];
  v285[1] = 0;
  v6 = *(a1 + 16);
  if (v6 && *(v6 + 200))
  {
    *v248 = *(*(*(*(v6 + 192) + 16) + 8) + 16);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(v248);
    v7 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v248);
    pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(v286, a2);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(v290, v7, v286);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v286);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(v248);
    *v248 = 0;
    *(a5 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::WrappedRERef<REGeomModelDescriptor *>>(void)::ti;
    pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REGeomModelDescriptor *>>::_PlaceCopy();
  }

  memset(&v245, 0, sizeof(v245));
  std::vector<std::string>::reserve(&v245, (a3[1] - *a3) >> 3);
  v9 = *v5;
  v8 = v5[1];
  v219 = v5;
  if (*v5 != v8)
  {
    do
    {
      Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(v9);
      if (*(Name + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v248, *Name, *(Name + 8));
      }

      else
      {
        v11 = *Name;
        *&v248[16] = *(Name + 16);
        *v248 = v11;
      }

      end = v245.__end_;
      if (v245.__end_ >= v245.__end_cap_.__value_)
      {
        v14 = 0xAAAAAAAAAAAAAAABLL * ((v245.__end_ - v245.__begin_) >> 3);
        v15 = v14 + 1;
        if (v14 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<char const*>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((v245.__end_cap_.__value_ - v245.__begin_) >> 3) > v15)
        {
          v15 = 0x5555555555555556 * ((v245.__end_cap_.__value_ - v245.__begin_) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v245.__end_cap_.__value_ - v245.__begin_) >> 3) >= 0x555555555555555)
        {
          v16 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v16 = v15;
        }

        *&v290[32] = &v245;
        if (v16)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v245, v16);
        }

        v17 = 8 * ((v245.__end_ - v245.__begin_) >> 3);
        v18 = *v248;
        *(v17 + 16) = *&v248[16];
        *v17 = v18;
        memset(v248, 0, 24);
        v19 = (24 * v14 + 24);
        v20 = (24 * v14 - (v245.__end_ - v245.__begin_));
        memcpy((v17 - (v245.__end_ - v245.__begin_)), v245.__begin_, v245.__end_ - v245.__begin_);
        begin = v245.__begin_;
        value = v245.__end_cap_.__value_;
        v245.__begin_ = v20;
        v245.__end_ = v19;
        v245.__end_cap_.__value_ = 0;
        *&v290[16] = begin;
        *&v290[24] = value;
        *v290 = begin;
        *&v290[8] = begin;
        std::__split_buffer<std::string>::~__split_buffer(v290);
        v245.__end_ = v19;
        v5 = v219;
        if ((v248[23] & 0x80000000) != 0)
        {
          operator delete(*v248);
        }
      }

      else
      {
        v13 = *v248;
        v245.__end_->__r_.__value_.__r.__words[2] = *&v248[16];
        *&end->__r_.__value_.__l.__data_ = v13;
        v245.__end_ = end + 1;
      }

      v9 = (v9 + 8);
    }

    while (v9 != v8);
  }

  v284 = 0;
  v282 = 0;
  v280 = 0;
  MEMORY[0x24C1A5DE0](&v244, "primvars:normals");
  MEMORY[0x24C1A5DE0](&v243, "primvars:normals:indices");
  v278 = 0;
  v276 = 0;
  v274 = 0;
  v272 = 0;
  v270 = 0;
  v242[0] = 0;
  v242[1] = 0;
  v240 = 0;
  v241 = v242;
  v237 = 0;
  v238 = 0;
  v239 = 0;
  v236 = 0;
  v268 = 0;
  v266 = 0;
  v264 = 0;
  v262 = 0;
  memset(v235, 0, sizeof(v235));
  v234 = -1;
  v23 = *v5;
  if (v5[1] != *v5)
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = MEMORY[0x277D86550];
    do
    {
      pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v286, (*a4 + v25));
      v29 = *pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v23 + v24));
      if ((v29 & 7) != 0 && (atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v29 &= 0xFFFFFFFFFFFFFFF8;
      }

      v30 = atomic_load(v28);
      if (!v30)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData();
      }

      if ((v29 ^ *(v30 + 816)) >= 8)
      {
        v32 = atomic_load(v28);
        if (!v32)
        {
          pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData();
        }

        if ((v29 ^ *(v32 + 704)) >= 8)
        {
          v33 = atomic_load(v28);
          if (!v33)
          {
            pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData();
          }

          if ((v29 ^ *(v33 + 344)) >= 8)
          {
            v34 = atomic_load(v28);
            if (!v34)
            {
              pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData();
            }

            if ((v29 ^ *(v34 + 336)) >= 8)
            {
              NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v23 + v24));
              MEMORY[0x24C1A5DE0](v290, "__materialIndexInfo");
              if ((*v290 ^ *NameToken) > 7)
              {
                if ((v290[0] & 7) != 0)
                {
                  atomic_fetch_add_explicit((*v290 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }
              }

              else
              {
                v36 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>(v286);
                if ((v290[0] & 7) != 0)
                {
                  atomic_fetch_add_explicit((*v290 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

                if (v36)
                {
                  if ((v286[1] & 4) != 0)
                  {
                    v37 = (*((v286[1] & 0xFFFFFFFFFFFFFFF8) + 168))(v286);
                  }

                  else
                  {
                    v37 = v286[0];
                  }

                  if (&v241 != v37)
                  {
                    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>(&v241, *v37, v37 + 1);
                  }

                  realityio::MeshDescriptorAction::getMaterialGroupInfo(v235, &v234, &v241);
                  goto LABEL_39;
                }
              }

              v38 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v23 + v24));
              MEMORY[0x24C1A5DE0](v290, "__defaultUV");
              if ((*v290 ^ *v38) > 7)
              {
                if ((v290[0] & 7) != 0)
                {
                  atomic_fetch_add_explicit((*v290 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }
              }

              else
              {
                v39 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::TfToken>(v286);
                if ((v290[0] & 7) != 0)
                {
                  atomic_fetch_add_explicit((*v290 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

                if (v39)
                {
                  if ((v286[1] & 4) != 0)
                  {
                    v40 = (*((v286[1] & 0xFFFFFFFFFFFFFFF8) + 168))(v286);
                  }

                  else
                  {
                    v40 = v286;
                  }

                  pxrInternal__aapl__pxrReserved__::TfToken::operator=(&v236, v40);
                  goto LABEL_39;
                }
              }

              v41 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v23 + v24));
              MEMORY[0x24C1A5DE0](v290, "orientation");
              if ((*v290 ^ *v41) > 7)
              {
                if ((v290[0] & 7) != 0)
                {
                  atomic_fetch_add_explicit((*v290 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }
              }

              else
              {
                v42 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::TfToken>(v286);
                if ((v290[0] & 7) != 0)
                {
                  atomic_fetch_add_explicit((*v290 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

                if (v42)
                {
                  if ((v286[1] & 4) != 0)
                  {
                    v43 = (*((v286[1] & 0xFFFFFFFFFFFFFFF8) + 168))(v286);
                  }

                  else
                  {
                    v43 = v286;
                  }

                  v44 = *v43;
                  if ((*v43 & 7) != 0 && (atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
                  {
                    v44 &= 0xFFFFFFFFFFFFFFF8;
                  }

                  MEMORY[0x24C1A5DE0](v290, "leftHanded");
                  v45 = *v290;
                  if ((v290[0] & 7) != 0)
                  {
                    atomic_fetch_add_explicit((*v290 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  if ((v44 ^ v45) < 8)
                  {
                    v27 = 1;
                  }

                  else
                  {
                    v27 = v27;
                  }

                  if ((v44 & 7) != 0)
                  {
                    atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  goto LABEL_39;
                }
              }

              v46 = pxrInternal__aapl__pxrReserved__::SdfPath::GetName((v23 + v24));
              v47 = *(v46 + 23);
              v48 = v47;
              if ((v47 & 0x80u) != 0)
              {
                v47 = *(v46 + 8);
              }

              if (v47 < 8)
              {
                goto LABEL_87;
              }

              if (v48 < 0)
              {
                v46 = *v46;
              }

              if (!strncmp(v46, "primvars", 8uLL))
              {
                v68 = pxrInternal__aapl__pxrReserved__::SdfPath::GetName((v23 + v24));
                v69 = *(v68 + 23);
                v70 = v69;
                if ((v69 & 0x80u) != 0)
                {
                  v69 = *(v68 + 8);
                }

                if (v69 < 8 || (v70 >= 0 ? (v71 = v68) : (v71 = *v68), strcmp((v71 + v69 - 8), ":indices")))
                {
                  v72 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v23 + v24));
                  v73 = v238;
                  if (v238 >= v239)
                  {
                    v75 = std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::TfToken const&>(&v237, v72);
                  }

                  else
                  {
                    v74 = *v72;
                    *v238 = *v72;
                    if ((v74 & 7) != 0 && (atomic_fetch_add_explicit((v74 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
                    {
                      *v73 &= 0xFFFFFFFFFFFFFFF8;
                    }

                    v75 = (v73 + 1);
                  }

                  v238 = v75;
                }

                pxrInternal__aapl__pxrReserved__::SdfPath::GetName((v23 + v24));
                v91 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[]();
                pxrInternal__aapl__pxrReserved__::VtValue::operator=(v91, v286);
                v92 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v23 + v24));
                v93 = atomic_load(v28);
                if (!v93)
                {
                  pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData();
                }

                if ((*(v93 + 848) ^ *v92) >= 8)
                {
                  v94 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v23 + v24));
                  v95 = atomic_load(v28);
                  if (!v95)
                  {
                    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData();
                  }

                  if ((*(v95 + 106) & 0xFFFFFFFFFFFFFFF8) != 0)
                  {
                    EmptyString = (*(v95 + 106) & 0xFFFFFFFFFFFFFFF8) + 16;
                  }

                  else
                  {
                    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v95);
                  }

                  if (*(EmptyString + 23) >= 0)
                  {
                    v97 = *(EmptyString + 23);
                  }

                  else
                  {
                    v97 = *(EmptyString + 8);
                  }

                  std::string::basic_string[abi:ne200100](v290, v97 + 8);
                  v214 = v27;
                  if (v290[23] >= 0)
                  {
                    v98 = v290;
                  }

                  else
                  {
                    v98 = *v290;
                  }

                  if (v97)
                  {
                    if (*(EmptyString + 23) >= 0)
                    {
                      v99 = EmptyString;
                    }

                    else
                    {
                      v99 = *EmptyString;
                    }

                    memmove(v98, v99, v97);
                  }

                  strcpy(&v98[v97], ":indices");
                  MEMORY[0x24C1A5E00](v248, v290);
                  v100 = *v94;
                  v101 = *v248;
                  if ((v248[0] & 7) != 0)
                  {
                    atomic_fetch_add_explicit((*v248 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  if ((v290[23] & 0x80000000) != 0)
                  {
                    operator delete(*v290);
                  }

                  if ((v101 ^ v100) < 8)
                  {
                    v31 = v265;
LABEL_165:
                    v27 = v214;
                    goto LABEL_38;
                  }

                  v27 = v214;
                  v102 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v23 + v24));
                  v103 = atomic_load(v28);
                  if (!v103)
                  {
                    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData();
                  }

                  if ((*(v103 + 856) ^ *v102) < 8)
                  {
                    v31 = v263;
                    goto LABEL_38;
                  }

                  v104 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v23 + v24));
                  v105 = atomic_load(v28);
                  if (!v105)
                  {
                    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData();
                  }

                  if ((*(v105 + 107) & 0xFFFFFFFFFFFFFFF8) != 0)
                  {
                    v106 = ((*(v105 + 107) & 0xFFFFFFFFFFFFFFF8) + 16);
                  }

                  else
                  {
                    v106 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v105);
                  }

                  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(":indices", v106, v290);
                  MEMORY[0x24C1A5E00](v248, v290);
                  v107 = *v104;
                  v108 = *v248;
                  if ((v248[0] & 7) != 0)
                  {
                    atomic_fetch_add_explicit((*v248 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  if ((v290[23] & 0x80000000) != 0)
                  {
                    operator delete(*v290);
                  }

                  if ((v108 ^ v107) < 8)
                  {
                    v31 = v261;
                    goto LABEL_165;
                  }

                  v109 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v23 + v24));
                  v27 = v214;
                  if ((v244 ^ *v109) >= 8)
                  {
                    v110 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v23 + v24));
                    if ((v243 ^ *v110) >= 8)
                    {
                      goto LABEL_39;
                    }

                    v31 = v275;
                  }

                  else
                  {
                    v31 = v277;
                  }
                }

                else
                {
                  v31 = v267;
                }
              }

              else
              {
LABEL_87:
                IsMapperPath = pxrInternal__aapl__pxrReserved__::SdfPath::IsMapperPath((v23 + v24));
                if (v286[1])
                {
                  v50 = IsMapperPath;
                }

                else
                {
                  v50 = 0;
                }

                if (v50 != 1)
                {
                  goto LABEL_39;
                }

                pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(v290, (v23 + v24));
                v51 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(v290);
                v52 = atomic_load(v28);
                if (!v52)
                {
                  pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData();
                }

                if ((*(v52 + 704) ^ *v51) > 7)
                {
                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v290);
LABEL_97:
                  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(v290, (v23 + v24));
                  v60 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(v290);
                  if ((v244 ^ *v60) > 7)
                  {
                    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v290);
LABEL_114:
                    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(v259, (v23 + v24));
                    v76 = v27;
                    v77 = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(v259);
                    v78 = v77;
                    if (*(v77 + 23) >= 0)
                    {
                      v79 = *(v77 + 23);
                    }

                    else
                    {
                      v79 = *(v77 + 8);
                    }

                    std::string::basic_string[abi:ne200100](v248, v79 + 3);
                    if (v248[23] >= 0)
                    {
                      v80 = v248;
                    }

                    else
                    {
                      v80 = *v248;
                    }

                    if (v79)
                    {
                      if (v78[23] >= 0)
                      {
                        v81 = v78;
                      }

                      else
                      {
                        v81 = *v78;
                      }

                      memmove(v80, v81, v79);
                    }

                    *&v80[v79] = 6250298;
                    TargetPath = pxrInternal__aapl__pxrReserved__::SdfPath::GetTargetPath((v23 + v24));
                    v27 = v76;
                    v83 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(TargetPath);
                    if ((*v83 & 0xFFFFFFFFFFFFFFF8) != 0)
                    {
                      v84 = (*v83 & 0xFFFFFFFFFFFFFFF8) + 16;
                    }

                    else
                    {
                      v84 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v83);
                    }

                    v85 = *(v84 + 23);
                    if (v85 >= 0)
                    {
                      v86 = v84;
                    }

                    else
                    {
                      v86 = *v84;
                    }

                    if (v85 >= 0)
                    {
                      v87 = *(v84 + 23);
                    }

                    else
                    {
                      v87 = *(v84 + 8);
                    }

                    v88 = std::string::append(v248, v86, v87);
                    v89 = *&v88->__r_.__value_.__l.__data_;
                    *&v290[16] = *(&v88->__r_.__value_.__l + 2);
                    *v290 = v89;
                    v88->__r_.__value_.__l.__size_ = 0;
                    v88->__r_.__value_.__r.__words[2] = 0;
                    v88->__r_.__value_.__r.__words[0] = 0;
                    v90 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[]();
                    pxrInternal__aapl__pxrReserved__::VtValue::operator=(v90, v286);
                    if ((v290[23] & 0x80000000) != 0)
                    {
                      operator delete(*v290);
                    }

                    if ((v248[23] & 0x80000000) != 0)
                    {
                      operator delete(*v248);
                    }

                    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v259);
                    goto LABEL_39;
                  }

                  v61 = pxrInternal__aapl__pxrReserved__::SdfPath::GetTargetPath((v23 + v24));
                  v62 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(v61);
                  v63 = v27;
                  v64 = atomic_load(v28);
                  if (!v64)
                  {
                    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData();
                  }

                  v65 = *v62;
                  v66 = *(v64 + 488);
                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                  v67 = v66 ^ v65;
                  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v290);
                  v27 = v63;
                  if (v67 > 7)
                  {
                    goto LABEL_114;
                  }

                  v31 = v273;
                  goto LABEL_38;
                }

                v53 = pxrInternal__aapl__pxrReserved__::SdfPath::GetTargetPath((v23 + v24));
                v54 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(v53);
                v55 = v27;
                v56 = atomic_load(v28);
                if (!v56)
                {
                  pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData();
                }

                v57 = *v54;
                v58 = *(v56 + 488);
                pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                v59 = v58 ^ v57;
                pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v290);
                v27 = v55;
                if (v59 >= 8)
                {
                  goto LABEL_97;
                }

                v31 = v279;
              }
            }

            else
            {
              v31 = v269;
            }
          }

          else
          {
            v31 = v271;
          }
        }

        else
        {
          v31 = v281;
        }
      }

      else
      {
        v31 = v283;
      }

LABEL_38:
      pxrInternal__aapl__pxrReserved__::VtValue::operator=(v31, v286);
LABEL_39:
      if ((v29 & 7) != 0)
      {
        atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v286);
      ++v26;
      v23 = *v219;
      v25 += 16;
      v24 += 8;
    }

    while (v26 < (v219[1] - *v219) >> 3);
  }

  if (!v284)
  {
    std::string::basic_string[abi:ne200100]<0>(v290, "No points found");
    ExecFault::stringValue(1, v290, a5);
  }

  v233 = 0;
  v231 = 0u;
  v232 = 0u;
  v230 = 0;
  memset(v229, 0, sizeof(v229));
  __src = 0;
  memset(v227, 0, sizeof(v227));
  v111 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>(v283);
  if (&v231 != v111)
  {
    v112 = *(v111 + 16);
    *v290 = *v111;
    *&v290[16] = v112;
    v113 = *(v111 + 32);
    *&v290[32] = v113;
    if (v113)
    {
      v114 = (v113 - 16);
      if (*&v290[24])
      {
        v114 = *&v290[24];
      }

      atomic_fetch_add_explicit(v114, 1uLL, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v231);
    v231 = *v290;
    v232 = *&v290[16];
    memset(v290, 0, 40);
    v233 = *&v290[32];
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v290);
  }

  v115 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<int>>(v271);
  pxrInternal__aapl__pxrReserved__::VtArray<int>::operator=(v229, v115);
  v116 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<int>>(v269);
  pxrInternal__aapl__pxrReserved__::VtArray<int>::operator=(v227, v116);
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEEC2B8ne200100Em(v226, v231);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DetachIfNotUnique(&v231);
  v117 = v233;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DetachIfNotUnique(&v231);
  v119 = v233 + 12 * v231;
  if (v117 != v119)
  {
    v120 = v226[0];
    do
    {
      *&v118 = *v117;
      DWORD2(v118) = *(v117 + 8);
      *v120++ = v118;
      v117 += 12;
    }

    while (v117 != v119);
  }

  std::vector<unsigned int>::vector[abi:ne200100](__dst, *&v227[0]);
  if (*&v227[0])
  {
    memmove(__dst[0], __src, 4 * *&v227[0]);
  }

  std::vector<unsigned int>::vector[abi:ne200100](v224, *&v229[0]);
  if (*&v229[0])
  {
    memmove(v224[0], v230, 4 * *&v229[0]);
  }

  v223 = 0;
  HighVertexPerPolygon = REGeomModelDescriptorCreateHighVertexPerPolygon();
  if (HighVertexPerPolygon)
  {
    REGeomModelDescriptorSetWindingOrder();
    pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(v290, a2);
    v122 = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(v290);
    if (*(v122 + 23) < 0)
    {
      v123 = *v122;
    }

    REGeomModelDescriptorSetName();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v290);
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEEC2B8ne200100Em(&v222, v231);
    if (v231)
    {
      v125 = v233;
      v126 = v222;
      v127 = 12 * v231;
      do
      {
        *&v124 = *v125;
        DWORD2(v124) = *(v125 + 8);
        *v126++ = v124;
        v125 += 12;
        v127 -= 12;
      }

      while (v127);
    }

    VertexCount = REGeomModelDescriptorGetVertexCount();
    MEMORY[0x24C1A3800](HighVertexPerPolygon, "vertexPosition", 1, VertexCount, v222);
    REGeomModelDescriptorAddAttributeAlias();
    if (v282)
    {
      handleNormals(HighVertexPerPolygon, v281, v279, 0);
      REGeomModelDescriptorAddAttributeAlias();
    }

    v221[0] = 0;
    v221[1] = 0;
    v220 = v221;
    pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(v290, 1.0);
    v260 = 0;
    memset(v259, 0, sizeof(v259));
    v257 = 0;
    *__sz = 0u;
    v256 = 0u;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    v252 = 0;
    v251 = 0;
    v129 = *v219;
    if (v219[1] == *v219)
    {
      v213 = 1;
      v215 = 1;
LABEL_309:
      if (v213 == v215)
      {
        v179 = v213;
      }

      else
      {
        v179 = 1;
      }

      v180 = *(MEMORY[0x277D860B8] + 16);
      *v248 = *MEMORY[0x277D860B8];
      *&v248[16] = v180;
      v181 = *(MEMORY[0x277D860B8] + 48);
      v249 = *(MEMORY[0x277D860B8] + 32);
      v250 = v181;
      memset(&v258, 0, sizeof(v258));
      memset(&v247, 0, sizeof(v247));
      memset(__p, 0, sizeof(__p));
      MEMORY[0x24C1A4BE0](v286, v290);
      *v248 = *v286;
      *&v248[16] = v287;
      v249 = v288;
      v250 = v289;
      v182 = REGeomModelDescriptorGetVertexCount();
      std::vector<int>::resize(&v258, v182);
      if (v258.__begin_ != v258.__end_)
      {
        v183 = 0;
        v184 = (v258.__end_ - v258.__begin_ - 4) >> 2;
        v185 = vdupq_n_s32(v179);
        v186 = vdupq_n_s32(4 * v179);
        v187 = vdupq_n_s64(v184);
        v188 = vmulq_s32(v185, xmmword_247757A20);
        v189 = v258.__begin_ + 2;
        do
        {
          v190 = vdupq_n_s64(v183);
          v191 = vmovn_s64(vcgeq_u64(v187, vorrq_s8(v190, xmmword_247758360)));
          v192 = vaddq_s32(v188, v185);
          if (vuzp1_s16(v191, *v185.i8).u8[0])
          {
            *(v189 - 2) = v192.i32[0];
          }

          if (vuzp1_s16(v191, *&v185).i8[2])
          {
            *(v189 - 1) = v192.u32[1];
          }

          if (vuzp1_s16(*&v185, vmovn_s64(vcgeq_u64(v187, vorrq_s8(v190, xmmword_247758350)))).i32[1])
          {
            *v189 = v192.i64[1];
          }

          v183 += 4;
          v188 = vaddq_s32(v188, v186);
          v189 += 4;
        }

        while (((v184 + 4) & 0x7FFFFFFFFFFFFFFCLL) != v183);
      }

      MEMORY[0x24C1A5DE0](v286, "constant");
      v193 = v286[0] ^ v252;
      if ((v286[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v286[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v193 > 7)
      {
        std::vector<int>::resize(&v247, __sz[0]);
        if (__sz[0])
        {
          v199 = v257;
          v200 = v247.__begin_;
          v201 = 4 * __sz[0];
          do
          {
            v202 = *v199++;
            *v200++ = v202;
            v201 -= 4;
          }

          while (v201);
        }
      }

      else
      {
        v194 = v182 * v213;
        std::vector<int>::resize(&v247, v194);
        if (v194)
        {
          v195 = 0;
          v196 = 0;
          v197 = 4 * v213;
          do
          {
            v198 = v247.__begin_;
            pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
            memcpy(v198 + v195, v257, v197);
            v196 += v213;
            v195 += v197;
          }

          while (v196 < v194);
        }
      }

      MEMORY[0x24C1A5DE0](v286, "constant");
      v203 = v286[0] ^ v251;
      if ((v286[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v286[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v203 > 7)
      {
        std::vector<float>::resize(__p, *&v259[0]);
        if (*&v259[0])
        {
          memmove(__p[0], v260, 4 * *&v259[0]);
        }
      }

      else
      {
        v204 = v182 * v215;
        std::vector<float>::resize(__p, v204);
        if (v204)
        {
          v205 = 0;
          v206 = 0;
          do
          {
            v207 = __p[0];
            pxrInternal__aapl__pxrReserved__::VtArray<float>::_DetachIfNotUnique(v259);
            memcpy(&v207[v205], v260, 4 * v215);
            v206 += v215;
            v205 += 4 * v215;
          }

          while (v206 < v204);
        }
      }

      String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(v253);
      if (*(String + 23) >= 0)
      {
        v209 = String;
      }

      else
      {
        v209 = *String;
      }

      if (v209)
      {
        v210 = v209;
      }

      else
      {
        v210 = "";
      }

      if (((strlen(v210) >> 1) + 1) >= 0)
      {
        operator new();
      }

      std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
    }

    v130 = 0;
    v131 = 0;
    v132 = 0;
    v133 = "primvars:skel:geomBindTransform";
    v134 = "primvars:skel:jointWeights";
    v135 = "primvars:skel:jointIndices";
    v136 = "skel:skeleton";
    v215 = 1;
    v213 = 1;
    while (1)
    {
      pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v286, (*a4 + v131));
      v137 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v129 + v130));
      MEMORY[0x24C1A5DE0](v248, v133);
      v138 = *v248;
      if ((*v248 ^ *v137) > 7)
      {
        if ((v248[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((*v248 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        goto LABEL_236;
      }

      if (!v286[1])
      {
        goto LABEL_228;
      }

      if (*((v286[1] & 0xFFFFFFFFFFFFFFF8) + 16) == 76)
      {
        IsImpl = 1;
        goto LABEL_230;
      }

      if ((v286[1] & 4) != 0)
      {
        v138 = *v248;
      }

      else
      {
LABEL_228:
        IsImpl = 0;
      }

LABEL_230:
      if ((v138 & 7) != 0)
      {
        atomic_fetch_add_explicit((v138 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (IsImpl)
      {
        if ((v286[1] & 4) != 0)
        {
          v140 = (*((v286[1] & 0xFFFFFFFFFFFFFFF8) + 168))(v286);
        }

        else
        {
          v140 = v286[0];
        }

        v141 = *v140;
        v142 = v140[1];
        v143 = v140[3];
        *&v290[32] = v140[2];
        v291 = v143;
        *v290 = v141;
        *&v290[16] = v142;
        v144 = v140[4];
        v145 = v140[5];
        v146 = v140[7];
        v294 = v140[6];
        v295 = v146;
        v292 = v144;
        v293 = v145;
LABEL_299:
        v178 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v129 + v130));
        std::__tree<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfTokenFastArbitraryLessThan,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken const&>(&v220, v178);
        goto LABEL_300;
      }

LABEL_236:
      v147 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v129 + v130));
      MEMORY[0x24C1A5DE0](v248, v134);
      if ((*v248 ^ *v147) > 7)
      {
        if ((v248[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((*v248 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else
      {
        v148 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<float>>(v286);
        if ((v248[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((*v248 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v148)
        {
          if ((v286[1] & 4) != 0)
          {
            v149 = (*((v286[1] & 0xFFFFFFFFFFFFFFF8) + 168))(v286);
          }

          else
          {
            v149 = v286[0];
          }

          if (v259 != v149)
          {
            v150 = v149[1];
            *v248 = *v149;
            *&v248[16] = v150;
            v151 = *(v149 + 4);
            *&v249 = v151;
            if (v151)
            {
              v152 = (v151 - 16);
              if (*&v248[24])
              {
                v152 = *&v248[24];
              }

              atomic_fetch_add_explicit(v152, 1uLL, memory_order_relaxed);
            }

            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v259);
            v259[0] = *v248;
            v259[1] = *&v248[16];
            memset(v248, 0, sizeof(v248));
            v260 = v249;
            *&v249 = 0;
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v248);
          }

          goto LABEL_299;
        }
      }

      v153 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v129 + v130));
      MEMORY[0x24C1A5DE0](v248, v135);
      if ((*v248 ^ *v153) > 7)
      {
        if ((v248[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((*v248 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else
      {
        v154 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<int>>(v286);
        if ((v248[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((*v248 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v154)
        {
          if ((v286[1] & 4) != 0)
          {
            v155 = (*((v286[1] & 0xFFFFFFFFFFFFFFF8) + 168))(v286);
          }

          else
          {
            v155 = v286[0];
          }

          pxrInternal__aapl__pxrReserved__::VtArray<int>::operator=(__sz, v155);
          goto LABEL_299;
        }
      }

      v156 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v129 + v130));
      MEMORY[0x24C1A5DE0](v248, v136);
      v157 = *v156;
      v158 = *v248;
      if ((*v248 ^ v157) > 7)
      {
        if ((v248[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((*v248 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        goto LABEL_274;
      }

      v159 = v136;
      v160 = v135;
      v161 = v134;
      v162 = v133;
      v163 = v286[1];
      if (!v286[1])
      {
LABEL_263:
        v164 = 0;
        goto LABEL_268;
      }

      if (!strcmp((*(*(v286[1] & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__7SdfPathE" & 0x7FFFFFFFFFFFFFFFLL)))
      {
        v164 = 1;
      }

      else
      {
        if ((v163 & 4) == 0)
        {
          goto LABEL_263;
        }

        v158 = *v248;
      }

LABEL_268:
      v133 = v162;
      v134 = v161;
      if ((v158 & 7) != 0)
      {
        atomic_fetch_add_explicit((v158 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v135 = v160;
      v136 = v159;
      if (v164)
      {
        if ((v286[1] & 4) != 0)
        {
          v165 = (*((v286[1] & 0xFFFFFFFFFFFFFFF8) + 168))(v286);
        }

        else
        {
          v165 = v286;
        }

        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v253, v165);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v254, v165 + 1);
        goto LABEL_299;
      }

LABEL_274:
      MEMORY[0x24C1A5DE0](v248, v134);
      MEMORY[0x24C1A5DE0](&v258, "elementSize");
      isMetaData = realityio::isMetaData((v129 + v130), v248, &v258, v166);
      if ((v258.__begin_ & 7) != 0)
      {
        atomic_fetch_add_explicit((v258.__begin_ & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v248[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((*v248 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (isMetaData)
      {
        v215 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<int>(v286);
        v168 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v129 + v130));
        std::__tree<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfTokenFastArbitraryLessThan,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken const&>(&v220, v168);
      }

      else
      {
        MEMORY[0x24C1A5DE0](v248, v135);
        MEMORY[0x24C1A5DE0](&v258, "elementSize");
        v170 = realityio::isMetaData((v129 + v130), v248, &v258, v169);
        if ((v258.__begin_ & 7) != 0)
        {
          atomic_fetch_add_explicit((v258.__begin_ & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v248[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((*v248 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (!v170)
        {
          MEMORY[0x24C1A5DE0](v248, v135);
          MEMORY[0x24C1A5DE0](&v258, "interpolation");
          v173 = realityio::isMetaData((v129 + v130), v248, &v258, v172);
          if ((v258.__begin_ & 7) != 0)
          {
            atomic_fetch_add_explicit((v258.__begin_ & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((v248[0] & 7) != 0)
          {
            atomic_fetch_add_explicit((*v248 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if (v173)
          {
            v174 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::TfToken>(v286);
            v175 = &v252;
          }

          else
          {
            MEMORY[0x24C1A5DE0](v248, v134);
            MEMORY[0x24C1A5DE0](&v258, "interpolation");
            v177 = realityio::isMetaData((v129 + v130), v248, &v258, v176);
            if ((v258.__begin_ & 7) != 0)
            {
              atomic_fetch_add_explicit((v258.__begin_ & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v248[0] & 7) != 0)
            {
              atomic_fetch_add_explicit((*v248 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if (!v177)
            {
              goto LABEL_300;
            }

            v174 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::TfToken>(v286);
            v175 = &v251;
          }

          pxrInternal__aapl__pxrReserved__::TfToken::operator=(v175, v174);
          goto LABEL_299;
        }

        v213 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<int>(v286);
        v171 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v129 + v130));
        std::__tree<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfTokenFastArbitraryLessThan,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken const&>(&v220, v171);
      }

LABEL_300:
      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v286);
      ++v132;
      v129 = *v219;
      v131 += 16;
      v130 += 8;
      if (v132 >= (v219[1] - *v219) >> 3)
      {
        goto LABEL_309;
      }
    }
  }

  *(a5 + 8) = 0;
  realityio::WrappedRERef<REGeomModelDescriptor *>::~WrappedRERef(&v223);
  if (v224[0])
  {
    v224[1] = v224[0];
    operator delete(v224[0]);
  }

  if (__dst[0])
  {
    __dst[1] = __dst[0];
    operator delete(__dst[0]);
  }

  if (v226[0])
  {
    v226[1] = v226[0];
    operator delete(v226[0]);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v227);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v229);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v231);
  *v290 = v235;
  std::vector<realityio::MeshDescriptorAction::MaterialGroupInfo>::__destroy_vector::operator()[abi:ne200100](v290);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v261);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v263);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v265);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v267);
  if ((v236 & 7) != 0)
  {
    atomic_fetch_add_explicit((v236 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *v290 = &v237;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](v290);
  v211 = v240;
  v240 = 0;
  if (v211)
  {
    std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<void>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(v211, *(v211 + 8));
    MEMORY[0x24C1A91B0](v211, 0x1020C4062D53EE8);
  }

  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(&v241, v242[0]);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v269);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v271);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v273);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v275);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v277);
  if ((v243 & 7) != 0)
  {
    atomic_fetch_add_explicit((v243 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v244 & 7) != 0)
  {
    atomic_fetch_add_explicit((v244 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v279);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v281);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v283);
  *v290 = &v245;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v290);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v285);
  v212 = *MEMORY[0x277D85DE8];
}

void sub_24759F808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, char a62, int a63)
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&STACK[0x220]);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v71 - 224);
  if ((v70 & 7) != 0)
  {
    atomic_fetch_add_explicit((v70 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    v69 = STACK[0x208];
  }

  if ((v69 & 7) != 0)
  {
    atomic_fetch_add_explicit((v69 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&STACK[0x2F0]);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&STACK[0x300]);
  std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::destroy(&a21, a22);
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  realityio::WrappedRERef<REGeomModelDescriptor *>::~WrappedRERef(&a27);
  if (a28)
  {
    a29 = a28;
    operator delete(a28);
  }

  if (a31)
  {
    a32 = a31;
    operator delete(a31);
  }

  if (a34)
  {
    a35 = a34;
    operator delete(a34);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a37);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a43);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a49);
  a49 = &a55;
  std::vector<realityio::MeshDescriptorAction::MaterialGroupInfo>::__destroy_vector::operator()[abi:ne200100](&a49);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&STACK[0x310]);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&STACK[0x320]);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&STACK[0x330]);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&STACK[0x340]);
  if ((a58 & 7) != 0)
  {
    atomic_fetch_add_explicit((a58 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  a49 = &a59;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&a49);
  pxrInternal__aapl__pxrReserved__::VtDictionary::~VtDictionary(&a62);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(&a64, a65);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&STACK[0x350]);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&STACK[0x360]);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&STACK[0x370]);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&STACK[0x380]);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&STACK[0x390]);
  if ((a67 & 7) != 0)
  {
    atomic_fetch_add_explicit((a67 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a68 & 7) != 0)
  {
    atomic_fetch_add_explicit((a68 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&STACK[0x3A0]);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&STACK[0x3B0]);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&STACK[0x3C0]);
  a49 = &a69;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a49);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&STACK[0x3D0]);
  _Unwind_Resume(a1);
}

void handleNormals(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2, pxrInternal__aapl__pxrReserved__::VtValue *a3, uint64_t *a4)
{
  if (a3 && (v7 = a3, pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::TfToken>(a3)))
  {
    v8 = *(v7 + 1);
    if ((v8 & 4) != 0)
    {
      v7 = (*((v8 & 0xFFFFFFFFFFFFFFF8) + 168))(v7);
    }

    v9 = *v7;
    v14 = v9;
    if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v14 &= 0xFFFFFFFFFFFFFFF8;
    }
  }

  else
  {
    MEMORY[0x24C1A5DE0](&v14, "");
  }

  AttributeRateHelper = getAttributeRateHelper(&v14, 1u);
  memset(&__p, 0, sizeof(__p));
  convertIndices(a4, &__p);
  if (!AttributeRateHelper)
  {
    FaceCount = REGeomModelDescriptorGetFaceCount();
    std::vector<int>::resize(&__p, FaceCount);
    if (__p.__end_ != __p.__begin_)
    {
      v12 = __p.__end_ - __p.__begin_;
      if (v12 <= 1)
      {
        v12 = 1;
      }

      bzero(__p.__begin_, 4 * v12);
    }

    AttributeRateHelper = 2;
  }

  addPrimvarToDescriptor(a1, a2, AttributeRateHelper, &__p, "vertexNormal");
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }

  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_2475A0128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if ((a12 & 7) != 0)
  {
    atomic_fetch_add_explicit((a12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void addPrimvar(pxrInternal__aapl__pxrReserved__::VtDictionary *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = pxrInternal__aapl__pxrReserved__::VtDictionary::find();
  v9 = v8;
  v10 = pxrInternal__aapl__pxrReserved__::VtDictionary::end(a1);
  if (v9 == v11 && (!v9 || v7 == v10))
  {
    goto LABEL_81;
  }

  __p.__end_ = 0;
  v12 = pxrInternal__aapl__pxrReserved__::VtValue::operator==(v7 + 56, &__p);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&__p);
  if (v12)
  {
    goto LABEL_81;
  }

  if (*(v7 + 55) >= 0)
  {
    v13 = *(v7 + 55);
  }

  else
  {
    v13 = *(v7 + 40);
  }

  p_p = &__p;
  std::string::basic_string[abi:ne200100](&__p, v13 + 8);
  if (SHIBYTE(__p.__end_cap_.__value_) < 0)
  {
    p_p = __p.__begin_;
  }

  if (v13)
  {
    if (*(v7 + 55) >= 0)
    {
      v15 = (v7 + 32);
    }

    else
    {
      v15 = *(v7 + 32);
    }

    memmove(p_p, v15, v13);
  }

  strcpy(p_p + v13, ":indices");
  ValueAtPath = pxrInternal__aapl__pxrReserved__::VtDictionary::GetValueAtPath();
  if (SHIBYTE(__p.__end_cap_.__value_) < 0)
  {
    operator delete(__p.__begin_);
  }

  if (*(v7 + 55) >= 0)
  {
    v17 = *(v7 + 55);
  }

  else
  {
    v17 = *(v7 + 40);
  }

  begin = &__p;
  std::string::basic_string[abi:ne200100](&__p, v17 + 16);
  if (SHIBYTE(__p.__end_cap_.__value_) < 0)
  {
    begin = __p.__begin_;
  }

  if (v17)
  {
    if (*(v7 + 55) >= 0)
    {
      v19 = (v7 + 32);
    }

    else
    {
      v19 = *(v7 + 32);
    }

    memmove(begin, v19, v17);
  }

  strcpy(begin + v17, ":__interpolation");
  v20 = pxrInternal__aapl__pxrReserved__::VtDictionary::GetValueAtPath();
  if (SHIBYTE(__p.__end_cap_.__value_) < 0)
  {
    operator delete(__p.__begin_);
  }

  if (*(v7 + 55) >= 0)
  {
    v21 = *(v7 + 55);
  }

  else
  {
    v21 = *(v7 + 40);
  }

  v22 = &__p;
  std::string::basic_string[abi:ne200100](&__p, v21 + 14);
  if (SHIBYTE(__p.__end_cap_.__value_) < 0)
  {
    v22 = __p.__begin_;
  }

  if (v21)
  {
    if (*(v7 + 55) >= 0)
    {
      v23 = (v7 + 32);
    }

    else
    {
      v23 = *(v7 + 32);
    }

    memmove(v22, v23, v21);
  }

  strcpy(v22 + v21, ":__elementSize");
  v24 = pxrInternal__aapl__pxrReserved__::VtDictionary::GetValueAtPath();
  if (SHIBYTE(__p.__end_cap_.__value_) < 0)
  {
    operator delete(__p.__begin_);
  }

  if (*(v7 + 55) >= 0)
  {
    v25 = *(v7 + 55);
  }

  else
  {
    v25 = *(v7 + 40);
  }

  v26 = &__p;
  std::string::basic_string[abi:ne200100](&__p, v25 + 11);
  if (SHIBYTE(__p.__end_cap_.__value_) < 0)
  {
    v26 = __p.__begin_;
  }

  if (v25)
  {
    if (*(v7 + 55) >= 0)
    {
      v27 = (v7 + 32);
    }

    else
    {
      v27 = *(v7 + 32);
    }

    memmove(v26, v27, v25);
  }

  strcpy(v26 + v25, ":__typeName");
  v28 = pxrInternal__aapl__pxrReserved__::VtDictionary::GetValueAtPath();
  if (SHIBYTE(__p.__end_cap_.__value_) < 0)
  {
    operator delete(__p.__begin_);
  }

  if (*(a3 + 23) < 0)
  {
    a3 = *a3;
  }

  if (v20 && pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::TfToken>(v20))
  {
    v29 = *(v20 + 1);
    if ((v29 & 4) != 0)
    {
      v20 = (*((v29 & 0xFFFFFFFFFFFFFFF8) + 168))(v20);
    }

    v30 = *v20;
    v36 = v30;
    if ((v30 & 7) != 0 && (atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v36 &= 0xFFFFFFFFFFFFFFF8;
    }
  }

  else
  {
    MEMORY[0x24C1A5DE0](&v36, "");
  }

  AttributeRateHelper = getAttributeRateHelper(&v36, 0xFFu);
  if (v24)
  {
    if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<int>(v24))
    {
      v32 = *(v24 + 1);
      if ((v32 & 4) != 0)
      {
        (*((v32 & 0xFFFFFFFFFFFFFFF8) + 168))(v24);
      }
    }
  }

  if (v28)
  {
    v33 = *(v28 + 1);
    if (v33)
    {
      if (!strcmp((*(*(v33 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__16SdfValueTypeNameE" & 0x7FFFFFFFFFFFFFFFLL)))
      {
LABEL_73:
        if ((v33 & 4) != 0)
        {
          v28 = (*((v33 & 0xFFFFFFFFFFFFFFF8) + 168))(v28);
        }

        v35 = *v28;
        goto LABEL_77;
      }

      {
        v33 = *(v28 + 1);
        goto LABEL_73;
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName(&v35);
LABEL_77:
  memset(&__p, 0, sizeof(__p));
  convertIndices(ValueAtPath, &__p);
  addPrimvarToDescriptor(a4, (v7 + 56), AttributeRateHelper, &__p, a3);
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }

  if ((v36 & 7) != 0)
  {
    atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

LABEL_81:
  v34 = *MEMORY[0x277D85DE8];
}

void sub_2475A0644(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

uint64_t realityio::SphereMeshDescriptorAction::operator()@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X1>, uint64_t *a2@<X3>, void *a3@<X4>, uint64_t a4@<X8>)
{
  buildSphereOptions(a2, a3);
  result = REGeomModelDescriptorCreateFromSphereOptions();
  if (result)
  {
    v9 = result;
    pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v11, a1);
    Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(&v11);
    realityio::MeshDescriptorAction::setupModelDescriptor(v9, Name, a2, a3);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v11);
    v11 = v9;
    *(a4 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::WrappedRERef<REGeomModelDescriptor *>>(void)::ti;
    pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REGeomModelDescriptor *>>::_PlaceCopy();
  }

  *(a4 + 8) = 0;
  return result;
}

void sub_2475A0790(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  realityio::WrappedRERef<REGeomModelDescriptor *>::~WrappedRERef(va);
  _Unwind_Resume(a1);
}

unint64_t buildSphereOptions(uint64_t *a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  if (a1[1] == *a1)
  {
    v14 = 0x3F80000000000000;
    goto LABEL_29;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 1.0;
  do
  {
    pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v19, (*a2 + v6));
    v9 = *pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v2 + v5));
    if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v9 &= 0xFFFFFFFFFFFFFFF8;
    }

    NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v2 + v5));
    MEMORY[0x24C1A5DE0](&v18, "radius");
    if ((v18 ^ *NameToken) > 7)
    {
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<double>(v19))
      {
        if ((v18 & 7) != 0)
        {
          atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

LABEL_15:
        if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<double>(v19))
        {
          if ((v20 & 4) != 0)
          {
            v12 = (*((v20 & 0xFFFFFFFFFFFFFFF8) + 168))(v19);
          }

          else
          {
            v12 = v19;
          }

          v8 = *v12;
        }

        else
        {
          if ((v20 & 4) != 0)
          {
            v13 = (*((v20 & 0xFFFFFFFFFFFFFFF8) + 168))(v19);
          }

          else
          {
            v13 = v19;
          }

          v8 = *v13;
        }

        goto LABEL_22;
      }

      v11 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<float>(v19);
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v11)
      {
        goto LABEL_15;
      }
    }

LABEL_22:
    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v19);
    ++v7;
    v2 = *a1;
    v6 += 16;
    v5 += 8;
  }

  while (v7 < (a1[1] - *a1) >> 3);
  v14 = LODWORD(v8) << 32;
LABEL_29:
  v15 = REGeomBuildSphereDefaultOptions();
  v16 = *MEMORY[0x277D85DE8];
  return v15 | v14;
}

void sub_2475A09CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if ((a2 & 7) != 0)
  {
    atomic_fetch_add_explicit((a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va);
  _Unwind_Resume(a1);
}

void realityio::SphereAssetDescriptorAction::operator()(uint64_t a1@<X0>, uint64_t *a2@<X3>, void *a3@<X4>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 8);
  ServiceLocator = REEngineGetServiceLocator();
  MEMORY[0x24C1A4230](ServiceLocator);
  buildSphereOptions(a2, a3);
  SphereDescriptor = REMeshAssetCreateSphereDescriptor();
  *(a4 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::WrappedRERef<REAssetDescriptor *>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REAssetDescriptor *>>::_PlaceCopy();
}

void sub_2475A0AB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  realityio::WrappedRERef<REAssetDescriptor *>::~WrappedRERef(va);
  _Unwind_Resume(a1);
}

uint64_t realityio::CapsuleMeshDescriptorAction::operator()@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X1>, uint64_t *a2@<X3>, void *a3@<X4>, uint64_t a4@<X8>)
{
  v13 = 0uLL;
  v14 = 0;
  buildCapsuleOptions(&v13, a2, a3);
  v11 = v13;
  v12 = v14;
  result = REGeomModelDescriptorCreateFromCapsuleOptions();
  if (result)
  {
    v9 = result;
    pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v11, a1);
    Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(&v11);
    realityio::MeshDescriptorAction::setupModelDescriptor(v9, Name, a2, a3);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v11);
    *&v11 = v9;
    *(a4 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::WrappedRERef<REGeomModelDescriptor *>>(void)::ti;
    pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REGeomModelDescriptor *>>::_PlaceCopy();
  }

  *(a4 + 8) = 0;
  return result;
}

uint64_t buildCapsuleOptions(uint64_t a1, uint64_t *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (a2[1] == *a2)
  {
    v10 = 0.5;
    v20 = 1.0;
    goto LABEL_47;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 1.0;
  v10 = 0.5;
  do
  {
    pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v26, (*a3 + v7));
    v11 = *pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v3 + v6));
    if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 &= 0xFFFFFFFFFFFFFFF8;
    }

    NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v3 + v6));
    MEMORY[0x24C1A5DE0](&v25, "radius");
    if ((v25 ^ *NameToken) > 7)
    {
      if ((v25 & 7) != 0)
      {
        atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<double>(v26))
      {
        if ((v25 & 7) != 0)
        {
          atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

LABEL_15:
        if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<double>(v26))
        {
          if ((v27 & 4) != 0)
          {
            v14 = (*((v27 & 0xFFFFFFFFFFFFFFF8) + 168))(v26);
          }

          else
          {
            v14 = v26;
          }

          v10 = *v14;
        }

        else
        {
          if ((v27 & 4) != 0)
          {
            v16 = (*((v27 & 0xFFFFFFFFFFFFFFF8) + 168))(v26);
          }

          else
          {
            v16 = v26;
          }

          v10 = *v16;
        }

        goto LABEL_38;
      }

      v13 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<float>(v26);
      if ((v25 & 7) != 0)
      {
        atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v13)
      {
        goto LABEL_15;
      }
    }

    v15 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v3 + v6));
    MEMORY[0x24C1A5DE0](&v25, "height");
    if ((v25 ^ *v15) > 7)
    {
      if ((v25 & 7) != 0)
      {
        atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<double>(v26))
      {
        if ((v25 & 7) != 0)
        {
          atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

LABEL_31:
        if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<double>(v26))
        {
          if ((v27 & 4) != 0)
          {
            v18 = (*((v27 & 0xFFFFFFFFFFFFFFF8) + 168))(v26);
          }

          else
          {
            v18 = v26;
          }

          v9 = *v18;
        }

        else
        {
          if ((v27 & 4) != 0)
          {
            v19 = (*((v27 & 0xFFFFFFFFFFFFFFF8) + 168))(v26);
          }

          else
          {
            v19 = v26;
          }

          v9 = *v19;
        }

        goto LABEL_38;
      }

      v17 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<float>(v26);
      if ((v25 & 7) != 0)
      {
        atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v17)
      {
        goto LABEL_31;
      }
    }

LABEL_38:
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v26);
    ++v8;
    v3 = *a2;
    v7 += 16;
    v6 += 8;
  }

  while (v8 < (a2[1] - *a2) >> 3);
  v20 = v9;
LABEL_47:
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  result = REGeomBuildCapsuleDefaultOptions();
  v22 = v20 + v10 * 2.0;
  *(a1 + 8) = v10;
  *(a1 + 12) = v22;
  *a1 = 64;
  *(a1 + 4) = 32;
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2475A0F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if ((a4 & 7) != 0)
  {
    atomic_fetch_add_explicit((a4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va);
  _Unwind_Resume(a1);
}

void realityio::CapsuleAssetDescriptorAction::operator()(uint64_t a1@<X0>, uint64_t *a2@<X3>, void *a3@<X4>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 8);
  ServiceLocator = REEngineGetServiceLocator();
  MEMORY[0x24C1A4230](ServiceLocator);
  v12 = 0uLL;
  v13 = 0;
  buildCapsuleOptions(&v12, a2, a3);
  v10 = *(&v12 + 1);
  v11 = v13;
  CapsuleDescriptor = REMeshAssetCreateCapsuleDescriptor();
  *(a4 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::WrappedRERef<REAssetDescriptor *>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REAssetDescriptor *>>::_PlaceCopy();
}

uint64_t realityio::ConeMeshDescriptorAction::operator()@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X1>, uint64_t *a2@<X3>, void *a3@<X4>, uint64_t a4@<X8>)
{
  buildConeOptions(a2, a3);
  result = REGeomModelDescriptorCreateFromConeOptions();
  if (result)
  {
    v9 = result;
    pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v11, a1);
    Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(&v11);
    realityio::MeshDescriptorAction::setupModelDescriptor(v9, Name, a2, a3);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v11);
    v11 = v9;
    *(a4 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::WrappedRERef<REGeomModelDescriptor *>>(void)::ti;
    pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REGeomModelDescriptor *>>::_PlaceCopy();
  }

  *(a4 + 8) = 0;
  return result;
}

void sub_2475A10E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  realityio::WrappedRERef<REGeomModelDescriptor *>::~WrappedRERef(va);
  _Unwind_Resume(a1);
}

unint64_t buildConeOptions(uint64_t *a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  if (a1[1] == *a1)
  {
    v20 = 0x3F80000000000040;
    goto LABEL_47;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 1.0;
  do
  {
    pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v25, (*a2 + v6));
    v9 = *pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v2 + v5));
    if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v9 &= 0xFFFFFFFFFFFFFFF8;
    }

    NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v2 + v5));
    MEMORY[0x24C1A5DE0](&v24, "radius");
    if ((v24 ^ *NameToken) > 7)
    {
      if ((v24 & 7) != 0)
      {
        atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<double>(v25))
      {
        if ((v24 & 7) != 0)
        {
          atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

LABEL_15:
        if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<double>(v25))
        {
          if ((v26 & 4) != 0)
          {
            v12 = (*((v26 & 0xFFFFFFFFFFFFFFF8) + 168))(v25);
          }

          else
          {
            v12 = v25;
          }

          v13 = *v12;
        }

        else
        {
          if ((v26 & 4) != 0)
          {
            v15 = (*((v26 & 0xFFFFFFFFFFFFFFF8) + 168))(v25);
          }

          else
          {
            v15 = v25;
          }

          v16 = *v15;
        }

        goto LABEL_38;
      }

      v11 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<float>(v25);
      if ((v24 & 7) != 0)
      {
        atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v11)
      {
        goto LABEL_15;
      }
    }

    v14 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v2 + v5));
    MEMORY[0x24C1A5DE0](&v24, "height");
    if ((v24 ^ *v14) > 7)
    {
      if ((v24 & 7) != 0)
      {
        atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<double>(v25))
      {
        if ((v24 & 7) != 0)
        {
          atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

LABEL_31:
        if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<double>(v25))
        {
          if ((v26 & 4) != 0)
          {
            v18 = (*((v26 & 0xFFFFFFFFFFFFFFF8) + 168))(v25);
          }

          else
          {
            v18 = v25;
          }

          v8 = *v18;
        }

        else
        {
          if ((v26 & 4) != 0)
          {
            v19 = (*((v26 & 0xFFFFFFFFFFFFFFF8) + 168))(v25);
          }

          else
          {
            v19 = v25;
          }

          v8 = *v19;
        }

        goto LABEL_38;
      }

      v17 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<float>(v25);
      if ((v24 & 7) != 0)
      {
        atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v17)
      {
        goto LABEL_31;
      }
    }

LABEL_38:
    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v25);
    ++v7;
    v2 = *a1;
    v6 += 16;
    v5 += 8;
  }

  while (v7 < (a1[1] - *a1) >> 3);
  v20 = (LODWORD(v8) << 32) | 0x40;
LABEL_47:
  v21 = REGeomBuildConeDefaultOptions();
  v22 = *MEMORY[0x277D85DE8];
  return v20 | v21 & 0xFFFF0000;
}

void sub_2475A1420(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if ((a2 & 7) != 0)
  {
    atomic_fetch_add_explicit((a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va);
  _Unwind_Resume(a1);
}

void realityio::ConeAssetDescriptorAction::operator()(uint64_t a1@<X0>, uint64_t *a2@<X3>, void *a3@<X4>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 8);
  ServiceLocator = REEngineGetServiceLocator();
  MEMORY[0x24C1A4230](ServiceLocator);
  buildConeOptions(a2, a3);
  ConeDescriptor = REMeshAssetCreateConeDescriptor();
  *(a4 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::WrappedRERef<REAssetDescriptor *>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REAssetDescriptor *>>::_PlaceCopy();
}

void sub_2475A1518(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  realityio::WrappedRERef<REAssetDescriptor *>::~WrappedRERef(va);
  _Unwind_Resume(a1);
}

uint64_t realityio::CubeMeshDescriptorAction::operator()@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X1>, uint64_t *a2@<X3>, void *a3@<X4>, uint64_t a4@<X8>)
{
  memset(v12, 0, 28);
  buildBoxOptions(v12, a2, a3);
  *v11 = v12[0];
  *(&v11[1] + 4) = *(v12 + 12);
  result = REGeomModelDescriptorCreateFromBoxOptions();
  if (result)
  {
    v9 = result;
    pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(v11, a1);
    Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(v11);
    realityio::MeshDescriptorAction::setupModelDescriptor(v9, Name, a2, a3);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v11);
    v11[0] = v9;
    *(a4 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::WrappedRERef<REGeomModelDescriptor *>>(void)::ti;
    pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REGeomModelDescriptor *>>::_PlaceCopy();
  }

  *(a4 + 8) = 0;
  return result;
}

uint64_t buildBoxOptions(uint64_t a1, uint64_t *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (a2[1] != *a2)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 1.0;
    while (1)
    {
      pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v19, (*a3 + v8));
      v11 = *pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v4 + v7));
      if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v11 &= 0xFFFFFFFFFFFFFFF8;
      }

      NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v4 + v7));
      MEMORY[0x24C1A5DE0](&v18, "size");
      if ((v18 ^ *NameToken) > 7)
      {
        if ((v18 & 7) != 0)
        {
          atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        goto LABEL_22;
      }

      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<double>(v19))
      {
        if ((v18 & 7) != 0)
        {
          atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else
      {
        v13 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<float>(v19);
        if ((v18 & 7) != 0)
        {
          atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v13 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<double>(v19))
      {
        if ((v20 & 4) != 0)
        {
          v14 = (*((v20 & 0xFFFFFFFFFFFFFFF8) + 168))(v19);
        }

        else
        {
          v14 = v19;
        }

        v10 = *v14;
      }

      else
      {
        if ((v20 & 4) != 0)
        {
          v15 = (*((v20 & 0xFFFFFFFFFFFFFFF8) + 168))(v19);
        }

        else
        {
          v15 = v19;
        }

        v10 = *v15;
      }

LABEL_22:
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v19);
      ++v9;
      v4 = *a2;
      v8 += 16;
      v7 += 8;
      if (v9 >= (a2[1] - *a2) >> 3)
      {
        goto LABEL_29;
      }
    }
  }

  v10 = 1.0;
LABEL_29:
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  result = REGeomBuildBoxDefaultOptions();
  *(a1 + 12) = v10;
  *(a1 + 16) = v10;
  *(a1 + 20) = v10;
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2475A1858(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if ((a2 & 7) != 0)
  {
    atomic_fetch_add_explicit((a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va);
  _Unwind_Resume(a1);
}

void realityio::CubeAssetDescriptorAction::operator()(uint64_t a1@<X0>, uint64_t *a2@<X3>, void *a3@<X4>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 8);
  ServiceLocator = REEngineGetServiceLocator();
  MEMORY[0x24C1A4230](ServiceLocator);
  memset(v10, 0, 28);
  buildBoxOptions(v10, a2, a3);
  LODWORD(v9[1]) = DWORD2(v10[0]);
  *(&v9[1] + 4) = *(v10 + 12);
  v9[0] = REMeshAssetCreateBoxDescriptor();
  *(a4 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::WrappedRERef<REAssetDescriptor *>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REAssetDescriptor *>>::_PlaceCopy();
}

uint64_t realityio::CylinderMeshDescriptorAction::operator()@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X1>, uint64_t *a2@<X3>, void *a3@<X4>, uint64_t a4@<X8>)
{
  v13 = 0uLL;
  v14 = 0;
  buildCylinderOptions(&v13, a2, a3);
  v11 = v13;
  v12 = v14;
  result = REGeomModelDescriptorCreateFromCylinderOptions();
  if (result)
  {
    v9 = result;
    pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v11, a1);
    Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(&v11);
    realityio::MeshDescriptorAction::setupModelDescriptor(v9, Name, a2, a3);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v11);
    *&v11 = v9;
    *(a4 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::WrappedRERef<REGeomModelDescriptor *>>(void)::ti;
    pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REGeomModelDescriptor *>>::_PlaceCopy();
  }

  *(a4 + 8) = 0;
  return result;
}

uint64_t buildCylinderOptions(uint64_t a1, uint64_t *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (a2[1] != *a2)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 1.0;
    v10 = 0.5;
    while (1)
    {
      pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v24, (*a3 + v7));
      v11 = *pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v3 + v6));
      if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v11 &= 0xFFFFFFFFFFFFFFF8;
      }

      NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v3 + v6));
      MEMORY[0x24C1A5DE0](&v23, "radius");
      if ((v23 ^ *NameToken) > 7)
      {
        if ((v23 & 7) != 0)
        {
          atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else
      {
        if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<double>(v24))
        {
          if ((v23 & 7) != 0)
          {
            atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

LABEL_15:
          if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<double>(v24))
          {
            if ((v25 & 4) != 0)
            {
              v14 = (*((v25 & 0xFFFFFFFFFFFFFFF8) + 168))(v24);
            }

            else
            {
              v14 = v24;
            }

            v10 = *v14;
          }

          else
          {
            if ((v25 & 4) != 0)
            {
              v16 = (*((v25 & 0xFFFFFFFFFFFFFFF8) + 168))(v24);
            }

            else
            {
              v16 = v24;
            }

            v10 = *v16;
          }

          goto LABEL_38;
        }

        v13 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<float>(v24);
        if ((v23 & 7) != 0)
        {
          atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v13)
        {
          goto LABEL_15;
        }
      }

      v15 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v3 + v6));
      MEMORY[0x24C1A5DE0](&v23, "height");
      if ((v23 ^ *v15) > 7)
      {
        if ((v23 & 7) != 0)
        {
          atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        goto LABEL_38;
      }

      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<double>(v24))
      {
        if ((v23 & 7) != 0)
        {
          atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else
      {
        v17 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<float>(v24);
        if ((v23 & 7) != 0)
        {
          atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v17 & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<double>(v24))
      {
        if ((v25 & 4) != 0)
        {
          v18 = (*((v25 & 0xFFFFFFFFFFFFFFF8) + 168))(v24);
        }

        else
        {
          v18 = v24;
        }

        v9 = *v18;
      }

      else
      {
        if ((v25 & 4) != 0)
        {
          v19 = (*((v25 & 0xFFFFFFFFFFFFFFF8) + 168))(v24);
        }

        else
        {
          v19 = v24;
        }

        v9 = *v19;
      }

LABEL_38:
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v24);
      ++v8;
      v3 = *a2;
      v7 += 16;
      v6 += 8;
      if (v8 >= (a2[1] - *a2) >> 3)
      {
        goto LABEL_47;
      }
    }
  }

  v10 = 0.5;
  v9 = 1.0;
LABEL_47:
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  result = REGeomBuildCylinderDefaultOptions();
  *(a1 + 8) = v10;
  *(a1 + 12) = v10;
  *(a1 + 4) = v9;
  *a1 = 64;
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2475A1D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if ((a4 & 7) != 0)
  {
    atomic_fetch_add_explicit((a4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va);
  _Unwind_Resume(a1);
}

void realityio::CylinderAssetDescriptorAction::operator()(uint64_t a1@<X0>, uint64_t *a2@<X3>, void *a3@<X4>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 8);
  ServiceLocator = REEngineGetServiceLocator();
  MEMORY[0x24C1A4230](ServiceLocator);
  v12 = 0uLL;
  v13 = 0;
  buildCylinderOptions(&v12, a2, a3);
  v10 = *(&v12 + 1);
  v11 = v13;
  CylinderDescriptor = REMeshAssetCreateCylinderDescriptor();
  *(a4 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::WrappedRERef<REAssetDescriptor *>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REAssetDescriptor *>>::_PlaceCopy();
}

void *realityio::BlendShapeWeightsComponentAction::operator()@<X0>(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X2>, void *a2@<X3>, void *a3@<X4>, pxrInternal__aapl__pxrReserved__::VtValue *a4@<X8>)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v7 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(a4, a1);
  v18 = 0;
  if (!pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<realityio::WrappedRERef<REComponent *>>(v7))
  {
    REBlendShapeWeightsComponentGetComponentType();
    v9 = REComponentCreateByClass();
    v19[0] = v9;
    if (v9)
    {
      RERetain();
    }

    v10 = v18;
    if (v18 != v9)
    {
      v18 = v9;
      v19[0] = v10;
    }

    realityio::WrappedRERef<REComponent *>::~WrappedRERef(v19);
    RERelease();
    v19[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::WrappedRERef<REComponent *>>(void)::ti;
    pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REComponent *>>::_PlaceCopy();
  }

  v8 = pxrInternal__aapl__pxrReserved__::VtValue::Get<realityio::WrappedRERef<REComponent *>>(a4);
  realityio::WrappedRERef<REAsset *>::operator=(&v18, v8);
  v19[0] = 0;
  if (a2[1] != *a2)
  {
    v11 = 0;
    v12 = 0;
    while (1)
    {
      v13 = (*a3 + v11);
      v14 = *(v13 + 1);
      if (v14)
      {
        if (!strcmp((*(*(v14 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N9realityio12WrappedRERefIP7REAssetEE" & 0x7FFFFFFFFFFFFFFFLL)))
        {
          goto LABEL_15;
        }

        {
          break;
        }
      }

LABEL_18:
      ++v12;
      v11 += 16;
      if (v12 >= (a2[1] - *a2) >> 3)
      {
        goto LABEL_21;
      }
    }

    v14 = *(v13 + 1);
LABEL_15:
    if ((v14 & 4) != 0)
    {
      v15 = (*((v14 & 0xFFFFFFFFFFFFFFF8) + 168))(v13);
    }

    else
    {
      v15 = *v13;
    }

    realityio::WrappedRERef<REAsset *>::operator=(v19, v15);
    goto LABEL_18;
  }

LABEL_21:
  REBlendShapeWeightsComponentSetBlendShapeWeightsDefinition();
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(v19);
  result = realityio::WrappedRERef<REComponent *>::~WrappedRERef(&v18);
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2475A2090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  realityio::WrappedRERef<REComponent *>::~WrappedRERef(&a9);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v9);
  _Unwind_Resume(a1);
}

uint64_t std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    if (a1 == a2)
    {
      return 0;
    }

    v2 = a1 & 0xFFFFFFFFFFFFFFF8;
    v3 = a2 & 0xFFFFFFFFFFFFFFF8;
    v4 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 8);
    v5 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v4 < v5)
    {
      return 1;
    }

    if (v4 != v5)
    {
      return 0;
    }

    else
    {
      v10 = *(v3 + 16);
      v8 = v3 + 16;
      v9 = v10;
      v11 = *(v8 + 23);
      v14 = *(v2 + 16);
      v12 = v2 + 16;
      v13 = v14;
      v15 = *(v12 + 23);
      if (v15 >= 0)
      {
        v16 = *(v12 + 23);
      }

      else
      {
        v16 = *(v12 + 8);
      }

      if (v15 >= 0)
      {
        v17 = v12;
      }

      else
      {
        v17 = v13;
      }

      if (v11 >= 0)
      {
        v18 = *(v8 + 23);
      }

      else
      {
        v18 = *(v8 + 8);
      }

      if (v11 >= 0)
      {
        v19 = v8;
      }

      else
      {
        v19 = v9;
      }

      if (v18 >= v16)
      {
        v20 = v16;
      }

      else
      {
        v20 = v18;
      }

      v21 = memcmp(v17, v19, v20);
      if (v21)
      {
        return v21 < 0;
      }

      else
      {
        return v16 < v18;
      }
    }
  }

  else
  {
    if (a1)
    {
      v7 = 1;
    }

    else
    {
      v7 = a2 == 0;
    }

    return !v7;
  }
}

uint64_t getAttributeRateHelper(void *a1, unsigned int a2)
{
  MEMORY[0x24C1A5DE0](&v10, "constant");
  v4 = v10 ^ *a1;
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v4 < 8)
  {
    return 0;
  }

  MEMORY[0x24C1A5DE0](&v10, "uniform");
  v6 = v10 ^ *a1;
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v6 < 8)
  {
    return 2;
  }

  MEMORY[0x24C1A5DE0](&v10, "varying");
  v7 = v10 ^ *a1;
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v7 < 8)
  {
    return 1;
  }

  MEMORY[0x24C1A5DE0](&v10, "vertex");
  v8 = v10 ^ *a1;
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v8 < 8)
  {
    return 1;
  }

  MEMORY[0x24C1A5DE0](&v10, "faceVarying");
  v9 = v10 ^ *a1;
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v9 >= 8)
  {
    return a2;
  }

  else
  {
    return 3;
  }
}

void convertIndices(uint64_t *a1, std::vector<unsigned int> *a2)
{
  if (a1 && pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<int>>(a1))
  {
    v4 = a1[1];
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
    }

    else
    {
      v5 = *a1;
    }

    v6 = *(v5 + 16);
    *__sz = *v5;
    v14 = v6;
    v7 = *(v5 + 32);
    v15 = v7;
    if (v7)
    {
      v8 = (v7 - 4);
      if (*(&v14 + 1))
      {
        v8 = *(&v14 + 1);
      }

      atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
    }

    std::vector<int>::resize(a2, __sz[0]);
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
    v9 = v15;
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
    v10 = &v15[__sz[0]];
    if (v9 != v10)
    {
      begin = a2->__begin_;
      do
      {
        v12 = *v9++;
        *begin++ = v12;
      }

      while (v9 != v10);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(__sz);
  }
}

void addPrimvarToDescriptor(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *this, unsigned int AttributeRateFromCount, uint64_t *a4, uint64_t a5)
{
  v10 = *a4;
  v11 = a4[1];
  v12 = *(this + 1);
  if (v12)
  {
    if (*((v12 & 0xFFFFFFFFFFFFFFF8) + 16) == 19)
    {
LABEL_3:
      __p = 0;
      v54 = 0;
      v55 = 0;
      if ((v12 & 4) != 0)
      {
        v13 = (*((v12 & 0xFFFFFFFFFFFFFFF8) + 168))(this);
      }

      else
      {
        v13 = *this;
      }

      v54 = 0;
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE7reserveEm(&__p, *v13);
      v14 = v13[4];
      v15 = *v13;
      v56[0] = &__p;
      if (v15)
      {
        v16 = &v14[2 * v15];
        v17 = MEMORY[0x277D86658];
        do
        {
          LODWORD(v18) = *(v17 + 4 * *v14);
          HIDWORD(v18) = *(v17 + 4 * v14[1]);
          p_p = v18;
          _ZNSt3__120back_insert_iteratorINS_6vectorIDv2_fNS_9allocatorIS2_EEEEEaSB8ne200100EOS2_(v56, &p_p);
          v14 += 2;
        }

        while (v14 != v16);
      }

      if (v10 != v11)
      {
        if (AttributeRateFromCount == 255)
        {
          getAttributeRateFromCount(a1, (a4[1] - *a4) >> 2);
        }

LABEL_60:
        v36 = a4[1] - *a4;
        REGeomModelDescriptorAddIndexedAttributeVector2F();
        goto LABEL_130;
      }

      if (AttributeRateFromCount == 255)
      {
        AttributeRateFromCount = getAttributeRateFromCount(a1, (v54 - __p) >> 3);
      }

      v24 = v54 - __p;
      if (AttributeRateFromCount)
      {
        v25 = AttributeRateFromCount;
      }

      else
      {
        v25 = 4 * ((v54 - __p) > 8);
      }

      goto LABEL_84;
    }

    if ((v12 & 4) == 0)
    {
      goto LABEL_15;
    }

    v12 = *(this + 1);
    if (IsImpl)
    {
      goto LABEL_3;
    }

    if (v12)
    {
LABEL_15:
      if (*((v12 & 0xFFFFFFFFFFFFFFF8) + 16) == 22)
      {
LABEL_16:
        __p = 0;
        v54 = 0;
        v55 = 0;
        if ((v12 & 4) != 0)
        {
          v20 = (*((v12 & 0xFFFFFFFFFFFFFFF8) + 168))(this);
        }

        else
        {
          v20 = *this;
        }

        v54 = 0;
        _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE7reserveEm(&__p, *v20);
        v21 = v20[4];
        v22 = *v20;
        v56[0] = &__p;
        if (v22)
        {
          v23 = 8 * v22;
          do
          {
            p_p = *v21;
            _ZNSt3__120back_insert_iteratorINS_6vectorIDv2_fNS_9allocatorIS2_EEEEEaSB8ne200100EOS2_(v56, &p_p);
            ++v21;
            v23 -= 8;
          }

          while (v23);
        }

        if (v10 != v11)
        {
          if (AttributeRateFromCount == 255)
          {
            getAttributeRateFromCount(a1, (a4[1] - *a4) >> 2);
          }

          goto LABEL_60;
        }

        if (AttributeRateFromCount == 255)
        {
          AttributeRateFromCount = getAttributeRateFromCount(a1, (v54 - __p) >> 3);
        }

        v24 = v54 - __p;
        if (AttributeRateFromCount)
        {
          v25 = AttributeRateFromCount;
        }

        else
        {
          v25 = 4 * ((v54 - __p) > 8);
        }

        goto LABEL_84;
      }

      if ((v12 & 4) == 0)
      {
        goto LABEL_33;
      }

      v12 = *(this + 1);
      if (v26)
      {
        goto LABEL_16;
      }

      if (v12)
      {
LABEL_33:
        if (*((v12 & 0xFFFFFFFFFFFFFFF8) + 16) == 25)
        {
LABEL_34:
          __p = 0;
          v54 = 0;
          v55 = 0;
          if ((v12 & 4) != 0)
          {
            v27 = (*((v12 & 0xFFFFFFFFFFFFFFF8) + 168))(this);
          }

          else
          {
            v27 = *this;
          }

          v54 = 0;
          _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE7reserveEm(&__p, *v27);
          v28 = v27[4];
          v29 = *v27;
          v56[0] = &__p;
          if (v29)
          {
            v30 = 16 * v29;
            do
            {
              p_p = vcvt_f32_f64(*v28);
              _ZNSt3__120back_insert_iteratorINS_6vectorIDv2_fNS_9allocatorIS2_EEEEEaSB8ne200100EOS2_(v56, &p_p);
              ++v28;
              v30 -= 16;
            }

            while (v30);
          }

          if (v10 != v11)
          {
            if (AttributeRateFromCount == 255)
            {
              getAttributeRateFromCount(a1, (a4[1] - *a4) >> 2);
            }

            goto LABEL_60;
          }

          if (AttributeRateFromCount == 255)
          {
            AttributeRateFromCount = getAttributeRateFromCount(a1, (v54 - __p) >> 3);
          }

          v24 = v54 - __p;
          if (AttributeRateFromCount)
          {
            v25 = AttributeRateFromCount;
          }

          else
          {
            v25 = 4 * ((v54 - __p) > 8);
          }

          goto LABEL_84;
        }

        if ((v12 & 4) == 0)
        {
          goto LABEL_51;
        }

        v12 = *(this + 1);
        if (v31)
        {
          goto LABEL_34;
        }

        if (v12)
        {
LABEL_51:
          if (*((v12 & 0xFFFFFFFFFFFFFFF8) + 16) == 16)
          {
LABEL_52:
            __p = 0;
            v54 = 0;
            v55 = 0;
            if ((v12 & 4) != 0)
            {
              v32 = (*((v12 & 0xFFFFFFFFFFFFFFF8) + 168))(this);
            }

            else
            {
              v32 = *this;
            }

            v54 = 0;
            _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE7reserveEm(&__p, *v32);
            v33 = v32[4];
            v34 = *v32;
            v56[0] = &__p;
            if (v34)
            {
              v35 = 8 * v34;
              do
              {
                p_p = vcvt_f32_s32(*v33);
                _ZNSt3__120back_insert_iteratorINS_6vectorIDv2_fNS_9allocatorIS2_EEEEEaSB8ne200100EOS2_(v56, &p_p);
                ++v33;
                v35 -= 8;
              }

              while (v35);
            }

            if (v10 != v11)
            {
              if (AttributeRateFromCount == 255)
              {
                getAttributeRateFromCount(a1, (a4[1] - *a4) >> 2);
              }

              goto LABEL_60;
            }

            if (AttributeRateFromCount == 255)
            {
              AttributeRateFromCount = getAttributeRateFromCount(a1, (v54 - __p) >> 3);
            }

            v24 = v54 - __p;
            if (AttributeRateFromCount)
            {
              v25 = AttributeRateFromCount;
            }

            else
            {
              v25 = 4 * ((v54 - __p) > 8);
            }

LABEL_84:
            MEMORY[0x24C1A37F0](a1, a5, v25, v24 >> 3);
            goto LABEL_130;
          }

          if ((v12 & 4) == 0)
          {
            goto LABEL_69;
          }

          v12 = *(this + 1);
          if (v37)
          {
            goto LABEL_52;
          }

          if (v12)
          {
LABEL_69:
            if (*((v12 & 0xFFFFFFFFFFFFFFF8) + 16) == 18)
            {
LABEL_70:
              __p = 0;
              v54 = 0;
              v55 = 0;
              if ((v12 & 4) != 0)
              {
                v38 = (*((v12 & 0xFFFFFFFFFFFFFFF8) + 168))(this);
              }

              else
              {
                v38 = *this;
              }

              v54 = 0;
              _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(&__p, *v38);
              v40 = v38[4];
              v41 = *v38;
              p_p = &__p;
              if (v41)
              {
                v42 = &v40[3 * v41];
                v43 = MEMORY[0x277D86658];
                do
                {
                  LODWORD(v39) = *(v43 + 4 * *v40);
                  DWORD1(v39) = *(v43 + 4 * v40[1]);
                  DWORD2(v39) = *(v43 + 4 * v40[2]);
                  *v56 = v39;
                  _ZNSt3__120back_insert_iteratorINS_6vectorIDv3_fNS_9allocatorIS2_EEEEEaSB8ne200100EOS2_(&p_p, v56);
                  v40 += 3;
                }

                while (v40 != v42);
              }

              if (v10 != v11)
              {
                if (AttributeRateFromCount == 255)
                {
                  getAttributeRateFromCount(a1, (a4[1] - *a4) >> 2);
                }

LABEL_78:
                v44 = a4[1] - *a4;
                REGeomModelDescriptorAddIndexedAttributeVector3F();
                goto LABEL_130;
              }

              if (AttributeRateFromCount == 255)
              {
                AttributeRateFromCount = getAttributeRateFromCount(a1, (v54 - __p) >> 4);
              }

              v51 = v54 - __p;
              if (AttributeRateFromCount)
              {
                v52 = AttributeRateFromCount;
              }

              else
              {
                v52 = 4 * ((v54 - __p) > 0x10);
              }

              goto LABEL_129;
            }

            {
              v12 = *(this + 1);
              goto LABEL_70;
            }
          }
        }
      }
    }
  }

  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>(this))
  {
    __p = 0;
    v54 = 0;
    v55 = 0;
    v45 = *(this + 1);
    if ((v45 & 4) != 0)
    {
      v46 = (*((v45 & 0xFFFFFFFFFFFFFFF8) + 168))(this);
    }

    else
    {
      v46 = *this;
    }

    v54 = 0;
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(&__p, *v46);
    v48 = v46[4];
    v49 = *v46;
    p_p = &__p;
    if (v49)
    {
      v50 = 12 * v49;
      do
      {
        *&v47 = *v48;
        DWORD2(v47) = *(v48 + 8);
        *v56 = v47;
        _ZNSt3__120back_insert_iteratorINS_6vectorIDv3_fNS_9allocatorIS2_EEEEEaSB8ne200100EOS2_(&p_p, v56);
        v48 += 12;
        v50 -= 12;
      }

      while (v50);
    }

    if (v10 != v11)
    {
      if (AttributeRateFromCount == 255)
      {
        getAttributeRateFromCount(a1, (a4[1] - *a4) >> 2);
      }

      goto LABEL_78;
    }

    if (AttributeRateFromCount == 255)
    {
      AttributeRateFromCount = getAttributeRateFromCount(a1, (v54 - __p) >> 4);
    }

    v51 = v54 - __p;
    if (AttributeRateFromCount)
    {
      v52 = AttributeRateFromCount;
    }

    else
    {
      v52 = 4 * ((v54 - __p) > 0x10);
    }

LABEL_129:
    MEMORY[0x24C1A3800](a1, a5, v52, v51 >> 4);
LABEL_130:
    if (__p)
    {
      v54 = __p;
      operator delete(__p);
    }

    return;
  }

  if ((_Z9doPrimvarIN32pxrInternal__aapl__pxrReserved__7GfVec3dEDv3_fFbP21REGeomModelDescriptorPKc23REGeomMeshAttributeRatejPKS2_jPKjEFbS4_S6_S7_jS9_EEbS4_RKNS0_7VtValueES6_RT1_RT2_bS7_RKNSt3__16vectorIjNSL_9allocatorIjEEEE(a1, this, a5, v10 != v11, AttributeRateFromCount, a4) & 1) == 0
    && (_Z9doPrimvarIN32pxrInternal__aapl__pxrReserved__7GfVec3iEDv3_fFbP21REGeomModelDescriptorPKc23REGeomMeshAttributeRatejPKS2_jPKjEFbS4_S6_S7_jS9_EEbS4_RKNS0_7VtValueES6_RT1_RT2_bS7_RKNSt3__16vectorIjNSL_9allocatorIjEEEE(a1, this, a5, v10 != v11, AttributeRateFromCount, a4) & 1) == 0
    && (_Z9doPrimvarIN32pxrInternal__aapl__pxrReserved__7GfVec4hEDv4_fFbP21REGeomModelDescriptorPKc23REGeomMeshAttributeRatejPKS2_jPKjEFbS4_S6_S7_jS9_EEbS4_RKNS0_7VtValueES6_RT1_RT2_bS7_RKNSt3__16vectorIjNSL_9allocatorIjEEEE(a1, this, a5, v10 != v11, AttributeRateFromCount, a4) & 1) == 0
    && (_Z9doPrimvarIN32pxrInternal__aapl__pxrReserved__7GfVec4fEDv4_fFbP21REGeomModelDescriptorPKc23REGeomMeshAttributeRatejPKS2_jPKjEFbS4_S6_S7_jS9_EEbS4_RKNS0_7VtValueES6_RT1_RT2_bS7_RKNSt3__16vectorIjNSL_9allocatorIjEEEE(a1, this, a5, v10 != v11, AttributeRateFromCount, a4) & 1) == 0
    && (_Z9doPrimvarIN32pxrInternal__aapl__pxrReserved__7GfVec4dEDv4_fFbP21REGeomModelDescriptorPKc23REGeomMeshAttributeRatejPKS2_jPKjEFbS4_S6_S7_jS9_EEbS4_RKNS0_7VtValueES6_RT1_RT2_bS7_RKNSt3__16vectorIjNSL_9allocatorIjEEEE(a1, this, a5, v10 != v11, AttributeRateFromCount, a4) & 1) == 0
    && (_Z9doPrimvarIN32pxrInternal__aapl__pxrReserved__7GfVec4iEDv4_fFbP21REGeomModelDescriptorPKc23REGeomMeshAttributeRatejPKS2_jPKjEFbS4_S6_S7_jS9_EEbS4_RKNS0_7VtValueES6_RT1_RT2_bS7_RKNSt3__16vectorIjNSL_9allocatorIjEEEE(a1, this, a5, v10 != v11, AttributeRateFromCount, a4) & 1) == 0
    && (doPrimvar<pxrInternal__aapl__pxrReserved__::pxr_half::half,float,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,float const*,unsigned int,unsigned int const*),BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,float const*)>(a1, this, a5, v10 != v11, AttributeRateFromCount, a4) & 1) == 0
    && (doPrimvar<float,float,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,float const*,unsigned int,unsigned int const*),BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,float const*)>(a1, this, a5, v10 != v11, AttributeRateFromCount, a4) & 1) == 0
    && (doPrimvar<double,float,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,float const*,unsigned int,unsigned int const*),BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,float const*)>(a1, this, a5, v10 != v11, AttributeRateFromCount, a4) & 1) == 0
    && (doPrimvar<BOOL,unsigned char,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,unsigned char const*,unsigned int,unsigned int const*),BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,unsigned char const*)>(a1, this, a5, v10 != v11, AttributeRateFromCount, a4) & 1) == 0
    && (doPrimvar<unsigned char,unsigned char,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,unsigned char const*,unsigned int,unsigned int const*),BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,unsigned char const*)>(a1, this, a5, v10 != v11, AttributeRateFromCount, a4) & 1) == 0
    && (doPrimvar<int,int,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,int const*,unsigned int,unsigned int const*),BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,int const*)>(a1, this, a5, v10 != v11, AttributeRateFromCount, a4) & 1) == 0
    && (doPrimvar<unsigned int,unsigned int,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,unsigned int const*,unsigned int,unsigned int const*),BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,unsigned int const*)>(a1, this, a5, v10 != v11, AttributeRateFromCount, a4) & 1) == 0
    && (doPrimvar<long long,int,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,int const*,unsigned int,unsigned int const*),BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,int const*)>(a1, this, a5, v10 != v11, AttributeRateFromCount, a4) & 1) == 0
    && (doPrimvar<unsigned long long,unsigned int,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,unsigned int const*,unsigned int,unsigned int const*),BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,unsigned int const*)>(a1, this, a5, v10 != v11, AttributeRateFromCount, a4) & 1) == 0
    && (doSingleValuePrimvar<pxrInternal__aapl__pxrReserved__::pxr_half::half,float,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,float const*)>(a1, this, a5) & 1) == 0
    && (doSingleValuePrimvar<float,float,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,float const*)>(a1, this, a5) & 1) == 0
    && (doSingleValuePrimvar<double,float,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,float const*)>(a1, this, a5) & 1) == 0
    && (doSingleValuePrimvar<BOOL,signed char,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,signed char const*)>(a1, this, a5) & 1) == 0
    && (doSingleValuePrimvar<unsigned char,unsigned char,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,unsigned char const*)>(a1, this, a5) & 1) == 0
    && (doSingleValuePrimvar<int,int,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,int const*)>(a1, this, a5) & 1) == 0
    && (doSingleValuePrimvar<unsigned int,unsigned int,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,unsigned int const*)>(a1, this, a5) & 1) == 0
    && (doSingleValuePrimvar<long long,int,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,int const*)>(a1, this, a5) & 1) == 0)
  {

    doSingleValuePrimvar<unsigned long long,unsigned int,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,unsigned int const*)>(a1, this, a5);
  }
}

void sub_2475A2F14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _Z9doPrimvarIN32pxrInternal__aapl__pxrReserved__7GfVec3dEDv3_fFbP21REGeomModelDescriptorPKc23REGeomMeshAttributeRatejPKS2_jPKjEFbS4_S6_S7_jS9_EEbS4_RKNS0_7VtValueES6_RT1_RT2_bS7_RKNSt3__16vectorIjNSL_9allocatorIjEEEE(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *this, uint64_t a3, int a4, unsigned int AttributeRateFromCount, void *a6)
{
  v6 = *(this + 1);
  if (!v6)
  {
    return 0;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16) == 24)
  {
    goto LABEL_3;
  }

  if ((v6 & 4) == 0)
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  v6 = *(this + 1);
LABEL_3:
  __p = 0;
  v23 = 0;
  v24 = 0;
  if ((v6 & 4) != 0)
  {
    v13 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(this);
  }

  else
  {
    v13 = *this;
  }

  v23 = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(&__p, *v13);
  v14 = v13[4];
  v15 = *v13;
  p_p = &__p;
  if (v15)
  {
    v16 = (v14 + 24 * v15);
    do
    {
      v17 = *v14;
      *&v17.f64[0] = vcvt_f32_f64(*v14);
      v18 = v14[1].f64[0];
      *&v17.f64[1] = v18;
      v25 = v17;
      _ZNSt3__120back_insert_iteratorINS_6vectorIDv3_fNS_9allocatorIS2_EEEEEaSB8ne200100EOS2_(&p_p, &v25);
      v14 = (v14 + 24);
    }

    while (v14 != v16);
  }

  if (a4)
  {
    if (AttributeRateFromCount == 255)
    {
      getAttributeRateFromCount(a1, (a6[1] - *a6) >> 2);
    }

    v19 = a6[1] - *a6;
    REGeomModelDescriptorAddIndexedAttributeVector3F();
  }

  else
  {
    if (AttributeRateFromCount == 255)
    {
      AttributeRateFromCount = getAttributeRateFromCount(a1, (v23 - __p) >> 4);
    }

    if (AttributeRateFromCount)
    {
      v21 = AttributeRateFromCount;
    }

    else
    {
      v21 = 4 * ((v23 - __p) > 0x10);
    }

    MEMORY[0x24C1A3800](a1, a3, v21, (v23 - __p) >> 4);
  }

  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  return 1;
}

void sub_2475A3120(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _Z9doPrimvarIN32pxrInternal__aapl__pxrReserved__7GfVec3iEDv3_fFbP21REGeomModelDescriptorPKc23REGeomMeshAttributeRatejPKS2_jPKjEFbS4_S6_S7_jS9_EEbS4_RKNS0_7VtValueES6_RT1_RT2_bS7_RKNSt3__16vectorIjNSL_9allocatorIjEEEE(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *this, uint64_t a3, int a4, unsigned int AttributeRateFromCount, void *a6)
{
  v6 = *(this + 1);
  if (!v6)
  {
    return 0;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16) == 15)
  {
    goto LABEL_3;
  }

  if ((v6 & 4) == 0)
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  v6 = *(this + 1);
LABEL_3:
  __p = 0;
  v22 = 0;
  v23 = 0;
  if ((v6 & 4) != 0)
  {
    v13 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(this);
  }

  else
  {
    v13 = *this;
  }

  v22 = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(&__p, *v13);
  v15 = v13[4];
  v16 = *v13;
  p_p = &__p;
  if (v16)
  {
    v17 = (v15 + 12 * v16);
    do
    {
      *&v14 = vcvt_f32_s32(*v15);
      *(&v14 + 2) = v15[1].i32[0];
      v24 = v14;
      _ZNSt3__120back_insert_iteratorINS_6vectorIDv3_fNS_9allocatorIS2_EEEEEaSB8ne200100EOS2_(&p_p, &v24);
      v15 = (v15 + 12);
    }

    while (v15 != v17);
  }

  if (a4)
  {
    if (AttributeRateFromCount == 255)
    {
      getAttributeRateFromCount(a1, (a6[1] - *a6) >> 2);
    }

    v18 = a6[1] - *a6;
    REGeomModelDescriptorAddIndexedAttributeVector3F();
  }

  else
  {
    if (AttributeRateFromCount == 255)
    {
      AttributeRateFromCount = getAttributeRateFromCount(a1, (v22 - __p) >> 4);
    }

    if (AttributeRateFromCount)
    {
      v20 = AttributeRateFromCount;
    }

    else
    {
      v20 = 4 * ((v22 - __p) > 0x10);
    }

    MEMORY[0x24C1A3800](a1, a3, v20, (v22 - __p) >> 4);
  }

  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }

  return 1;
}

void sub_2475A3304(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _Z9doPrimvarIN32pxrInternal__aapl__pxrReserved__7GfVec4hEDv4_fFbP21REGeomModelDescriptorPKc23REGeomMeshAttributeRatejPKS2_jPKjEFbS4_S6_S7_jS9_EEbS4_RKNS0_7VtValueES6_RT1_RT2_bS7_RKNSt3__16vectorIjNSL_9allocatorIjEEEE(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *this, uint64_t a3, int a4, unsigned int AttributeRateFromCount, void *a6)
{
  v6 = *(this + 1);
  if (!v6)
  {
    return 0;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16) == 17)
  {
    goto LABEL_3;
  }

  if ((v6 & 4) == 0)
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  v6 = *(this + 1);
LABEL_3:
  __p = 0;
  v23 = 0;
  v24 = 0;
  if ((v6 & 4) != 0)
  {
    v13 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(this);
  }

  else
  {
    v13 = *this;
  }

  v23 = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(&__p, *v13);
  v14 = v13[4];
  v15 = *v13;
  p_p = &__p;
  if (v15)
  {
    v16 = &v14[4 * v15];
    v17 = MEMORY[0x277D86658];
    do
    {
      LODWORD(v18) = *(v17 + 4 * *v14);
      DWORD1(v18) = *(v17 + 4 * v14[1]);
      DWORD2(v18) = *(v17 + 4 * v14[2]);
      HIDWORD(v18) = *(v17 + 4 * v14[3]);
      v25 = v18;
      _ZNSt3__120back_insert_iteratorINS_6vectorIDv3_fNS_9allocatorIS2_EEEEEaSB8ne200100EOS2_(&p_p, &v25);
      v14 += 4;
    }

    while (v14 != v16);
  }

  if (a4)
  {
    if (AttributeRateFromCount == 255)
    {
      getAttributeRateFromCount(a1, (a6[1] - *a6) >> 2);
    }

    v19 = a6[1] - *a6;
    REGeomModelDescriptorAddIndexedAttributeVector4F();
  }

  else
  {
    if (AttributeRateFromCount == 255)
    {
      AttributeRateFromCount = getAttributeRateFromCount(a1, (v23 - __p) >> 4);
    }

    if (AttributeRateFromCount)
    {
      v21 = AttributeRateFromCount;
    }

    else
    {
      v21 = 4 * ((v23 - __p) > 0x10);
    }

    MEMORY[0x24C1A3810](a1, a3, v21, (v23 - __p) >> 4);
  }

  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  return 1;
}

void sub_2475A3504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _Z9doPrimvarIN32pxrInternal__aapl__pxrReserved__7GfVec4fEDv4_fFbP21REGeomModelDescriptorPKc23REGeomMeshAttributeRatejPKS2_jPKjEFbS4_S6_S7_jS9_EEbS4_RKNS0_7VtValueES6_RT1_RT2_bS7_RKNSt3__16vectorIjNSL_9allocatorIjEEEE(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *this, uint64_t a3, int a4, unsigned int AttributeRateFromCount, void *a6)
{
  v6 = *(this + 1);
  if (!v6)
  {
    return 0;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16) == 20)
  {
    goto LABEL_3;
  }

  if ((v6 & 4) == 0)
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  v6 = *(this + 1);
LABEL_3:
  __p = 0;
  v21 = 0;
  v22 = 0;
  if ((v6 & 4) != 0)
  {
    v13 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(this);
  }

  else
  {
    v13 = *this;
  }

  v21 = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(&__p, *v13);
  v14 = v13[4];
  v15 = *v13;
  p_p = &__p;
  if (v15)
  {
    v16 = 16 * v15;
    do
    {
      v23 = *v14;
      _ZNSt3__120back_insert_iteratorINS_6vectorIDv3_fNS_9allocatorIS2_EEEEEaSB8ne200100EOS2_(&p_p, &v23);
      ++v14;
      v16 -= 16;
    }

    while (v16);
  }

  if (a4)
  {
    if (AttributeRateFromCount == 255)
    {
      getAttributeRateFromCount(a1, (a6[1] - *a6) >> 2);
    }

    v17 = a6[1] - *a6;
    REGeomModelDescriptorAddIndexedAttributeVector4F();
  }

  else
  {
    if (AttributeRateFromCount == 255)
    {
      AttributeRateFromCount = getAttributeRateFromCount(a1, (v21 - __p) >> 4);
    }

    if (AttributeRateFromCount)
    {
      v19 = AttributeRateFromCount;
    }

    else
    {
      v19 = 4 * ((v21 - __p) > 0x10);
    }

    MEMORY[0x24C1A3810](a1, a3, v19, (v21 - __p) >> 4);
  }

  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  return 1;
}

void sub_2475A36D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _Z9doPrimvarIN32pxrInternal__aapl__pxrReserved__7GfVec4dEDv4_fFbP21REGeomModelDescriptorPKc23REGeomMeshAttributeRatejPKS2_jPKjEFbS4_S6_S7_jS9_EEbS4_RKNS0_7VtValueES6_RT1_RT2_bS7_RKNSt3__16vectorIjNSL_9allocatorIjEEEE(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *this, uint64_t a3, int a4, unsigned int AttributeRateFromCount, void *a6)
{
  v6 = *(this + 1);
  if (!v6)
  {
    return 0;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16) == 23)
  {
    goto LABEL_3;
  }

  if ((v6 & 4) == 0)
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  v6 = *(this + 1);
LABEL_3:
  __p = 0;
  v21 = 0;
  v22 = 0;
  if ((v6 & 4) != 0)
  {
    v13 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(this);
  }

  else
  {
    v13 = *this;
  }

  v21 = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(&__p, *v13);
  v14 = v13[4];
  v15 = *v13;
  p_p = &__p;
  if (v15)
  {
    v16 = 32 * v15;
    do
    {
      v23 = vcvt_hight_f32_f64(vcvt_f32_f64(*v14), v14[1]);
      _ZNSt3__120back_insert_iteratorINS_6vectorIDv3_fNS_9allocatorIS2_EEEEEaSB8ne200100EOS2_(&p_p, &v23);
      v14 += 2;
      v16 -= 32;
    }

    while (v16);
  }

  if (a4)
  {
    if (AttributeRateFromCount == 255)
    {
      getAttributeRateFromCount(a1, (a6[1] - *a6) >> 2);
    }

    v17 = a6[1] - *a6;
    REGeomModelDescriptorAddIndexedAttributeVector4F();
  }

  else
  {
    if (AttributeRateFromCount == 255)
    {
      AttributeRateFromCount = getAttributeRateFromCount(a1, (v21 - __p) >> 4);
    }

    if (AttributeRateFromCount)
    {
      v19 = AttributeRateFromCount;
    }

    else
    {
      v19 = 4 * ((v21 - __p) > 0x10);
    }

    MEMORY[0x24C1A3810](a1, a3, v19, (v21 - __p) >> 4);
  }

  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  return 1;
}

void sub_2475A38AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _Z9doPrimvarIN32pxrInternal__aapl__pxrReserved__7GfVec4iEDv4_fFbP21REGeomModelDescriptorPKc23REGeomMeshAttributeRatejPKS2_jPKjEFbS4_S6_S7_jS9_EEbS4_RKNS0_7VtValueES6_RT1_RT2_bS7_RKNSt3__16vectorIjNSL_9allocatorIjEEEE(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *this, uint64_t a3, int a4, unsigned int AttributeRateFromCount, void *a6)
{
  v6 = *(this + 1);
  if (!v6)
  {
    return 0;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16) == 14)
  {
    goto LABEL_3;
  }

  if ((v6 & 4) == 0)
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  v6 = *(this + 1);
LABEL_3:
  __p = 0;
  v21 = 0;
  v22 = 0;
  if ((v6 & 4) != 0)
  {
    v13 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(this);
  }

  else
  {
    v13 = *this;
  }

  v21 = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(&__p, *v13);
  v14 = v13[4];
  v15 = *v13;
  p_p = &__p;
  if (v15)
  {
    v16 = 16 * v15;
    do
    {
      v23 = vcvtq_f32_s32(*v14);
      _ZNSt3__120back_insert_iteratorINS_6vectorIDv3_fNS_9allocatorIS2_EEEEEaSB8ne200100EOS2_(&p_p, &v23);
      ++v14;
      v16 -= 16;
    }

    while (v16);
  }

  if (a4)
  {
    if (AttributeRateFromCount == 255)
    {
      getAttributeRateFromCount(a1, (a6[1] - *a6) >> 2);
    }

    v17 = a6[1] - *a6;
    REGeomModelDescriptorAddIndexedAttributeVector4F();
  }

  else
  {
    if (AttributeRateFromCount == 255)
    {
      AttributeRateFromCount = getAttributeRateFromCount(a1, (v21 - __p) >> 4);
    }

    if (AttributeRateFromCount)
    {
      v19 = AttributeRateFromCount;
    }

    else
    {
      v19 = 4 * ((v21 - __p) > 0x10);
    }

    MEMORY[0x24C1A3810](a1, a3, v19, (v21 - __p) >> 4);
  }

  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  return 1;
}

void sub_2475A3A80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t doPrimvar<pxrInternal__aapl__pxrReserved__::pxr_half::half,float,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,float const*,unsigned int,unsigned int const*),BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,float const*)>(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *this, uint64_t a3, int a4, unsigned int AttributeRateFromCount, void *a6)
{
  v6 = *(this + 1);
  if (!v6)
  {
    return 0;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16) == 58)
  {
    goto LABEL_3;
  }

  if ((v6 & 4) == 0)
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  v6 = *(this + 1);
LABEL_3:
  __p = 0;
  v22 = 0;
  v23 = 0;
  if ((v6 & 4) != 0)
  {
    v13 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(this);
  }

  else
  {
    v13 = *this;
  }

  v22 = 0;
  std::vector<float>::reserve(&__p, *v13);
  v14 = v13[4];
  v15 = *v13;
  p_p = &__p;
  if (v15)
  {
    v16 = 2 * v15;
    v17 = MEMORY[0x277D86658];
    do
    {
      v24 = *(v17 + 4 * *v14);
      std::back_insert_iterator<std::vector<float>>::operator=[abi:ne200100](&p_p, &v24);
      ++v14;
      v16 -= 2;
    }

    while (v16);
  }

  if (a4)
  {
    if (AttributeRateFromCount == 255)
    {
      getAttributeRateFromCount(a1, (a6[1] - *a6) >> 2);
    }

    v18 = a6[1] - *a6;
    REGeomModelDescriptorAddIndexedAttributeFloat();
  }

  else
  {
    if (AttributeRateFromCount == 255)
    {
      AttributeRateFromCount = getAttributeRateFromCount(a1, (v22 - __p) >> 2);
    }

    if (AttributeRateFromCount)
    {
      v20 = AttributeRateFromCount;
    }

    else
    {
      v20 = 4 * ((v22 - __p) > 4);
    }

    MEMORY[0x24C1A3790](a1, a3, v20, (v22 - __p) >> 2);
  }

  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }

  return 1;
}

void sub_2475A3C5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t doPrimvar<float,float,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,float const*,unsigned int,unsigned int const*),BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,float const*)>(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2, uint64_t a3, int a4, unsigned int AttributeRateFromCount, void *a6)
{
  v12 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<float>>(a2);
  if (v12)
  {
    __p = 0;
    v22 = 0;
    v23 = 0;
    v13 = *(a2 + 1);
    if ((v13 & 4) != 0)
    {
      v14 = (*((v13 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v14 = *a2;
    }

    v22 = 0;
    std::vector<float>::reserve(&__p, *v14);
    v15 = v14[4];
    v16 = *v14;
    p_p = &__p;
    if (v16)
    {
      v17 = 4 * v16;
      do
      {
        v24 = *v15;
        std::back_insert_iterator<std::vector<float>>::operator=[abi:ne200100](&p_p, &v24);
        ++v15;
        v17 -= 4;
      }

      while (v17);
    }

    if (a4)
    {
      if (AttributeRateFromCount == 255)
      {
        getAttributeRateFromCount(a1, (a6[1] - *a6) >> 2);
      }

      v18 = a6[1] - *a6;
      REGeomModelDescriptorAddIndexedAttributeFloat();
    }

    else
    {
      if (AttributeRateFromCount == 255)
      {
        AttributeRateFromCount = getAttributeRateFromCount(a1, (v22 - __p) >> 2);
      }

      if (AttributeRateFromCount)
      {
        v19 = AttributeRateFromCount;
      }

      else
      {
        v19 = 4 * ((v22 - __p) > 4);
      }

      MEMORY[0x24C1A3790](a1, a3, v19, (v22 - __p) >> 2);
    }

    if (__p)
    {
      v22 = __p;
      operator delete(__p);
    }
  }

  return v12;
}

void sub_2475A3E08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t doPrimvar<double,float,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,float const*,unsigned int,unsigned int const*),BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,float const*)>(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *this, uint64_t a3, int a4, unsigned int AttributeRateFromCount, void *a6)
{
  v6 = *(this + 1);
  if (!v6)
  {
    return 0;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16) == 56)
  {
    goto LABEL_3;
  }

  if ((v6 & 4) == 0)
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  v6 = *(this + 1);
LABEL_3:
  __p = 0;
  v22 = 0;
  v23 = 0;
  if ((v6 & 4) != 0)
  {
    v13 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(this);
  }

  else
  {
    v13 = *this;
  }

  v22 = 0;
  std::vector<float>::reserve(&__p, *v13);
  v14 = v13[4];
  v15 = *v13;
  p_p = &__p;
  if (v15)
  {
    v16 = 8 * v15;
    do
    {
      v17 = *v14;
      v24 = v17;
      std::back_insert_iterator<std::vector<float>>::operator=[abi:ne200100](&p_p, &v24);
      ++v14;
      v16 -= 8;
    }

    while (v16);
  }

  if (a4)
  {
    if (AttributeRateFromCount == 255)
    {
      getAttributeRateFromCount(a1, (a6[1] - *a6) >> 2);
    }

    v18 = a6[1] - *a6;
    REGeomModelDescriptorAddIndexedAttributeFloat();
  }

  else
  {
    if (AttributeRateFromCount == 255)
    {
      AttributeRateFromCount = getAttributeRateFromCount(a1, (v22 - __p) >> 2);
    }

    if (AttributeRateFromCount)
    {
      v20 = AttributeRateFromCount;
    }

    else
    {
      v20 = 4 * ((v22 - __p) > 4);
    }

    MEMORY[0x24C1A3790](a1, a3, v20, (v22 - __p) >> 2);
  }

  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }

  return 1;
}

void sub_2475A3FDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t doPrimvar<BOOL,unsigned char,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,unsigned char const*,unsigned int,unsigned int const*),BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,unsigned char const*)>(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *this, uint64_t a3, int a4, unsigned int AttributeRateFromCount, void *a6)
{
  v6 = *(this + 1);
  if (!v6)
  {
    return 0;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16) == 47)
  {
    goto LABEL_3;
  }

  if ((v6 & 4) == 0)
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  v6 = *(this + 1);
LABEL_3:
  __p = 0;
  v20 = 0;
  v21 = 0;
  if ((v6 & 4) != 0)
  {
    v13 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(this);
  }

  else
  {
    v13 = *this;
  }

  v20 = 0;
  std::vector<unsigned char>::reserve(&__p, *v13);
  v14 = v13[4];
  v15 = *v13;
  for (i = &__p; v15; --v15)
  {
    v22 = *v14;
    std::back_insert_iterator<std::vector<unsigned char>>::operator=[abi:ne200100](&i, &v22);
    ++v14;
  }

  if (a4)
  {
    if (AttributeRateFromCount == 255)
    {
      getAttributeRateFromCount(a1, (a6[1] - *a6) >> 2);
    }

    v16 = a6[1] - *a6;
    REGeomModelDescriptorAddIndexedAttributeUInt8();
  }

  else
  {
    if (AttributeRateFromCount == 255)
    {
      AttributeRateFromCount = getAttributeRateFromCount(a1, v20 - __p);
    }

    if (AttributeRateFromCount)
    {
      v18 = AttributeRateFromCount;
    }

    else
    {
      v18 = 4 * ((v20 - __p) > 1);
    }

    MEMORY[0x24C1A37E0](a1, a3, v18);
  }

  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  return 1;
}

void sub_2475A41A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t doPrimvar<unsigned char,unsigned char,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,unsigned char const*,unsigned int,unsigned int const*),BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,unsigned char const*)>(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *this, uint64_t a3, int a4, unsigned int AttributeRateFromCount, void *a6)
{
  v6 = *(this + 1);
  if (!v6)
  {
    return 0;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16) == 49)
  {
    goto LABEL_3;
  }

  if ((v6 & 4) == 0)
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  v6 = *(this + 1);
LABEL_3:
  __p = 0;
  v20 = 0;
  v21 = 0;
  if ((v6 & 4) != 0)
  {
    v13 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(this);
  }

  else
  {
    v13 = *this;
  }

  v20 = 0;
  std::vector<unsigned char>::reserve(&__p, *v13);
  v14 = v13[4];
  v15 = *v13;
  for (i = &__p; v15; --v15)
  {
    v22 = *v14;
    std::back_insert_iterator<std::vector<unsigned char>>::operator=[abi:ne200100](&i, &v22);
    ++v14;
  }

  if (a4)
  {
    if (AttributeRateFromCount == 255)
    {
      getAttributeRateFromCount(a1, (a6[1] - *a6) >> 2);
    }

    v16 = a6[1] - *a6;
    REGeomModelDescriptorAddIndexedAttributeUInt8();
  }

  else
  {
    if (AttributeRateFromCount == 255)
    {
      AttributeRateFromCount = getAttributeRateFromCount(a1, v20 - __p);
    }

    if (AttributeRateFromCount)
    {
      v18 = AttributeRateFromCount;
    }

    else
    {
      v18 = 4 * ((v20 - __p) > 1);
    }

    MEMORY[0x24C1A37E0](a1, a3, v18);
  }

  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  return 1;
}

void sub_2475A4364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t doPrimvar<int,int,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,int const*,unsigned int,unsigned int const*),BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,int const*)>(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2, uint64_t a3, int a4, unsigned int AttributeRateFromCount, void *a6)
{
  v12 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<int>>(a2);
  if (v12)
  {
    memset(&v21, 0, sizeof(v21));
    v13 = *(a2 + 1);
    if ((v13 & 4) != 0)
    {
      v14 = (*((v13 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v14 = *a2;
    }

    v21.__end_ = 0;
    std::vector<int>::reserve(&v21, *v14);
    v15 = v14[4];
    v16 = *v14;
    v23 = &v21;
    if (v16)
    {
      v17 = 4 * v16;
      do
      {
        v22 = *v15;
        std::back_insert_iterator<std::vector<int>>::operator=[abi:ne200100](&v23, &v22);
        ++v15;
        v17 -= 4;
      }

      while (v17);
    }

    if (a4)
    {
      if (AttributeRateFromCount == 255)
      {
        getAttributeRateFromCount(a1, (a6[1] - *a6) >> 2);
      }

      v18 = a6[1] - *a6;
      REGeomModelDescriptorAddIndexedAttributeInt32();
    }

    else
    {
      if (AttributeRateFromCount == 255)
      {
        AttributeRateFromCount = getAttributeRateFromCount(a1, v21.__end_ - v21.__begin_);
      }

      if (AttributeRateFromCount)
      {
        v19 = AttributeRateFromCount;
      }

      else
      {
        v19 = 4 * ((v21.__end_ - v21.__begin_) > 4);
      }

      MEMORY[0x24C1A37A0](a1, a3, v19, (v21.__end_ - v21.__begin_) >> 2);
    }

    if (v21.__begin_)
    {
      v21.__end_ = v21.__begin_;
      operator delete(v21.__begin_);
    }
  }

  return v12;
}

void sub_2475A4510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t doPrimvar<unsigned int,unsigned int,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,unsigned int const*,unsigned int,unsigned int const*),BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,unsigned int const*)>(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *this, uint64_t a3, int a4, unsigned int AttributeRateFromCount, void *a6)
{
  v6 = *(this + 1);
  if (!v6)
  {
    return 0;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16) == 53)
  {
    goto LABEL_3;
  }

  if ((v6 & 4) == 0)
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  v6 = *(this + 1);
LABEL_3:
  memset(&v20, 0, sizeof(v20));
  if ((v6 & 4) != 0)
  {
    v13 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(this);
  }

  else
  {
    v13 = *this;
  }

  v20.__end_ = 0;
  std::vector<int>::reserve(&v20, *v13);
  v14 = v13[4];
  v15 = *v13;
  v22 = &v20;
  if (v15)
  {
    v16 = 4 * v15;
    do
    {
      v21 = *v14;
      std::back_insert_iterator<std::vector<int>>::operator=[abi:ne200100](&v22, &v21);
      ++v14;
      v16 -= 4;
    }

    while (v16);
  }

  if (a4)
  {
    if (AttributeRateFromCount == 255)
    {
      getAttributeRateFromCount(a1, (a6[1] - *a6) >> 2);
    }

    v17 = a6[1] - *a6;
    REGeomModelDescriptorAddIndexedAttributeUInt32();
  }

  else
  {
    if (AttributeRateFromCount == 255)
    {
      AttributeRateFromCount = getAttributeRateFromCount(a1, v20.__end_ - v20.__begin_);
    }

    if (AttributeRateFromCount)
    {
      v19 = AttributeRateFromCount;
    }

    else
    {
      v19 = 4 * ((v20.__end_ - v20.__begin_) > 4);
    }

    MEMORY[0x24C1A37D0](a1, a3, v19, (v20.__end_ - v20.__begin_) >> 2);
  }

  if (v20.__begin_)
  {
    v20.__end_ = v20.__begin_;
    operator delete(v20.__begin_);
  }

  return 1;
}

void sub_2475A46E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t doPrimvar<long long,int,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,int const*,unsigned int,unsigned int const*),BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,int const*)>(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *this, uint64_t a3, int a4, unsigned int AttributeRateFromCount, void *a6)
{
  v6 = *(this + 1);
  if (!v6)
  {
    return 0;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16) == 54)
  {
    goto LABEL_3;
  }

  if ((v6 & 4) == 0)
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  v6 = *(this + 1);
LABEL_3:
  memset(&v20, 0, sizeof(v20));
  if ((v6 & 4) != 0)
  {
    v13 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(this);
  }

  else
  {
    v13 = *this;
  }

  v20.__end_ = 0;
  std::vector<int>::reserve(&v20, *v13);
  v14 = v13[4];
  v15 = *v13;
  v22 = &v20;
  if (v15)
  {
    v16 = 8 * v15;
    do
    {
      v21 = *v14;
      std::back_insert_iterator<std::vector<int>>::operator=[abi:ne200100](&v22, &v21);
      ++v14;
      v16 -= 8;
    }

    while (v16);
  }

  if (a4)
  {
    if (AttributeRateFromCount == 255)
    {
      getAttributeRateFromCount(a1, (a6[1] - *a6) >> 2);
    }

    v17 = a6[1] - *a6;
    REGeomModelDescriptorAddIndexedAttributeInt32();
  }

  else
  {
    if (AttributeRateFromCount == 255)
    {
      AttributeRateFromCount = getAttributeRateFromCount(a1, v20.__end_ - v20.__begin_);
    }

    if (AttributeRateFromCount)
    {
      v19 = AttributeRateFromCount;
    }

    else
    {
      v19 = 4 * ((v20.__end_ - v20.__begin_) > 4);
    }

    MEMORY[0x24C1A37A0](a1, a3, v19, (v20.__end_ - v20.__begin_) >> 2);
  }

  if (v20.__begin_)
  {
    v20.__end_ = v20.__begin_;
    operator delete(v20.__begin_);
  }

  return 1;
}

void sub_2475A48B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t doPrimvar<unsigned long long,unsigned int,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,unsigned int const*,unsigned int,unsigned int const*),BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,unsigned int const*)>(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *this, uint64_t a3, int a4, unsigned int AttributeRateFromCount, void *a6)
{
  v6 = *(this + 1);
  if (!v6)
  {
    return 0;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16) == 55)
  {
    goto LABEL_3;
  }

  if ((v6 & 4) == 0)
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  v6 = *(this + 1);
LABEL_3:
  memset(&v20, 0, sizeof(v20));
  if ((v6 & 4) != 0)
  {
    v13 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(this);
  }

  else
  {
    v13 = *this;
  }

  v20.__end_ = 0;
  std::vector<int>::reserve(&v20, *v13);
  v14 = v13[4];
  v15 = *v13;
  v22 = &v20;
  if (v15)
  {
    v16 = 8 * v15;
    do
    {
      v21 = *v14;
      std::back_insert_iterator<std::vector<int>>::operator=[abi:ne200100](&v22, &v21);
      ++v14;
      v16 -= 8;
    }

    while (v16);
  }

  if (a4)
  {
    if (AttributeRateFromCount == 255)
    {
      getAttributeRateFromCount(a1, (a6[1] - *a6) >> 2);
    }

    v17 = a6[1] - *a6;
    REGeomModelDescriptorAddIndexedAttributeUInt32();
  }

  else
  {
    if (AttributeRateFromCount == 255)
    {
      AttributeRateFromCount = getAttributeRateFromCount(a1, v20.__end_ - v20.__begin_);
    }

    if (AttributeRateFromCount)
    {
      v19 = AttributeRateFromCount;
    }

    else
    {
      v19 = 4 * ((v20.__end_ - v20.__begin_) > 4);
    }

    MEMORY[0x24C1A37D0](a1, a3, v19, (v20.__end_ - v20.__begin_) >> 2);
  }

  if (v20.__begin_)
  {
    v20.__end_ = v20.__begin_;
    operator delete(v20.__begin_);
  }

  return 1;
}

void sub_2475A4A80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t doSingleValuePrimvar<pxrInternal__aapl__pxrReserved__::pxr_half::half,float,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,float const*)>(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *this, uint64_t a3)
{
  v3 = *(this + 1);
  if (!v3)
  {
    return 0;
  }

  v5 = this;
  if (*((v3 & 0xFFFFFFFFFFFFFFF8) + 16) != 11)
  {
    {
      v3 = *(v5 + 1);
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))(v5);
      goto LABEL_4;
    }

    return 0;
  }

  if ((v3 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = *(MEMORY[0x277D86658] + 4 * *v5);
  v7 = 1;
  MEMORY[0x24C1A3790](a1, a3, 0, 1, &v9);
  return v7;
}

uint64_t doSingleValuePrimvar<float,float,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,float const*)>(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2, uint64_t a3)
{
  v4 = a2;
  v6 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<float>(a2);
  if (v6)
  {
    v7 = *(v4 + 8);
    if ((v7 & 4) != 0)
    {
      v4 = (*((v7 & 0xFFFFFFFFFFFFFFF8) + 168))(v4);
    }

    v9 = *v4;
    MEMORY[0x24C1A3790](a1, a3, 0, 1, &v9);
  }

  return v6;
}

uint64_t doSingleValuePrimvar<double,float,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,float const*)>(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2, uint64_t a3)
{
  v4 = a2;
  v6 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<double>(a2);
  if (v6)
  {
    v7 = *(v4 + 8);
    if ((v7 & 4) != 0)
    {
      v4 = (*((v7 & 0xFFFFFFFFFFFFFFF8) + 168))(v4);
    }

    v8 = *v4;
    v10 = v8;
    MEMORY[0x24C1A3790](a1, a3, 0, 1, &v10);
  }

  return v6;
}

uint64_t doSingleValuePrimvar<BOOL,signed char,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,signed char const*)>(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *this, uint64_t a3)
{
  v3 = *(this + 1);
  if (!v3)
  {
    return 0;
  }

  v5 = this;
  if (*((v3 & 0xFFFFFFFFFFFFFFF8) + 16))
  {
    if ((v3 & 4) != 0 && pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(this, MEMORY[0x277D82798]))
    {
      v3 = *(v5 + 1);
      goto LABEL_6;
    }

    return 0;
  }

LABEL_6:
  if ((v3 & 4) != 0)
  {
    v5 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))(v5);
  }

  v9 = *v5;
  v7 = 1;
  MEMORY[0x24C1A37B0](a1, a3, 0, 1, &v9);
  return v7;
}

uint64_t doSingleValuePrimvar<unsigned char,unsigned char,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,unsigned char const*)>(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *this, uint64_t a3)
{
  v3 = *(this + 1);
  if (!v3)
  {
    return 0;
  }

  v5 = this;
  if (*((v3 & 0xFFFFFFFFFFFFFFF8) + 16) != 2)
  {
    if ((v3 & 4) != 0 && pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(this, MEMORY[0x277D827B8]))
    {
      v3 = *(v5 + 1);
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))(v5);
      goto LABEL_4;
    }

    return 0;
  }

  if ((v3 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = *v5;
  v7 = 1;
  MEMORY[0x24C1A37E0](a1, a3, 0, 1, &v9);
  return v7;
}

uint64_t doSingleValuePrimvar<int,int,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,int const*)>(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2, uint64_t a3)
{
  v4 = a2;
  v6 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<int>(a2);
  if (v6)
  {
    v7 = *(v4 + 8);
    if ((v7 & 4) != 0)
    {
      v4 = (*((v7 & 0xFFFFFFFFFFFFFFF8) + 168))(v4);
    }

    v9 = *v4;
    MEMORY[0x24C1A37A0](a1, a3, 0, 1, &v9);
  }

  return v6;
}

uint64_t doSingleValuePrimvar<unsigned int,unsigned int,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,unsigned int const*)>(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *this, uint64_t a3)
{
  v3 = *(this + 1);
  if (!v3)
  {
    return 0;
  }

  v5 = this;
  if (*((v3 & 0xFFFFFFFFFFFFFFF8) + 16) != 6)
  {
    if ((v3 & 4) != 0 && pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(this, MEMORY[0x277D827C8]))
    {
      v3 = *(v5 + 1);
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))(v5);
      goto LABEL_4;
    }

    return 0;
  }

  if ((v3 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = *v5;
  v7 = 1;
  MEMORY[0x24C1A37D0](a1, a3, 0, 1, &v9);
  return v7;
}

uint64_t doSingleValuePrimvar<long long,int,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,int const*)>(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *this, uint64_t a3)
{
  v3 = *(this + 1);
  if (!v3)
  {
    return 0;
  }

  v5 = this;
  if (*((v3 & 0xFFFFFFFFFFFFFFF8) + 16) != 7)
  {
    if ((v3 & 4) != 0 && pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(this, MEMORY[0x277D827F8]))
    {
      v3 = *(v5 + 1);
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))(v5);
      goto LABEL_4;
    }

    return 0;
  }

  if ((v3 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = *v5;
  v7 = 1;
  MEMORY[0x24C1A37A0](a1, a3, 0, 1, &v9);
  return v7;
}

uint64_t doSingleValuePrimvar<unsigned long long,unsigned int,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,unsigned int const*)>(uint64_t result, pxrInternal__aapl__pxrReserved__::VtValue *this, uint64_t a3)
{
  v3 = *(this + 1);
  if (v3)
  {
    v5 = this;
    v6 = result;
    if (*((v3 & 0xFFFFFFFFFFFFFFF8) + 16) == 8)
    {
      if ((v3 & 4) == 0)
      {
LABEL_4:
        v7 = *v5;
        return MEMORY[0x24C1A37D0](v6, a3, 0, 1, &v7);
      }

LABEL_8:
      v5 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))(v5);
      goto LABEL_4;
    }

    if ((v3 & 4) != 0)
    {
      result = pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(this, MEMORY[0x277D82800]);
      if (result)
      {
        v3 = *(v5 + 1);
        if ((v3 & 4) == 0)
        {
          goto LABEL_4;
        }

        goto LABEL_8;
      }
    }
  }

  return result;
}

uint64_t getAttributeRateFromCount(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    return 0;
  }

  if (REGeomModelDescriptorGetFaceCount() == a2)
  {
    return 2;
  }

  if (REGeomModelDescriptorGetVertexCount() == a2)
  {
    return 1;
  }

  if (REGeomModelDescriptorGetIndexCount() == a2)
  {
    return 3;
  }

  return 0;
}

void *_ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE7reserveEm(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>(result, a2);
    }

    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t *_ZNSt3__120back_insert_iteratorINS_6vectorIDv2_fNS_9allocatorIS2_EEEEEaSB8ne200100EOS2_(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v6 = *(*a1 + 8);
  v5 = *(*a1 + 16);
  if (v6 >= v5)
  {
    v8 = (v6 - *v4) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
    }

    v9 = v5 - *v4;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>(*a1, v11);
    }

    v12 = (8 * v8);
    *v12 = *a2;
    v7 = 8 * v8 + 8;
    v13 = *(v4 + 8) - *v4;
    v14 = v12 - v13;
    memcpy(v12 - v13, *v4, v13);
    v15 = *v4;
    *v4 = v14;
    *(v4 + 8) = v7;
    *(v4 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v6 = *a2;
    v7 = (v6 + 1);
  }

  *(v4 + 8) = v7;
  return a1;
}

uint64_t *_ZNSt3__120back_insert_iteratorINS_6vectorIDv3_fNS_9allocatorIS2_EEEEEaSB8ne200100EOS2_(uint64_t *a1, _OWORD *a2)
{
  v4 = *a1;
  v6 = *(*a1 + 8);
  v5 = *(*a1 + 16);
  if (v6 >= v5)
  {
    v8 = (v6 - *v4) >> 4;
    if ((v8 + 1) >> 60)
    {
      std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
    }

    v9 = v5 - *v4;
    v10 = v9 >> 3;
    if (v9 >> 3 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(*a1, v11);
    }

    v12 = (16 * v8);
    *v12 = *a2;
    v7 = 16 * v8 + 16;
    v13 = *(v4 + 8) - *v4;
    v14 = v12 - v13;
    memcpy(v12 - v13, *v4, v13);
    v15 = *v4;
    *v4 = v14;
    *(v4 + 8) = v7;
    *(v4 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v6 = *a2;
    v7 = (v6 + 1);
  }

  *(v4 + 8) = v7;
  return a1;
}

void *std::vector<float>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 2)
  {
    if (!(a2 >> 62))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(result, a2);
    }

    std::vector<char const*>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t *std::back_insert_iterator<std::vector<float>>::operator=[abi:ne200100](uint64_t *a1, _DWORD *a2)
{
  v4 = *a1;
  v6 = *(*a1 + 8);
  v5 = *(*a1 + 16);
  if (v6 >= v5)
  {
    v8 = *v4;
    v9 = v6 - *v4;
    v10 = (v9 >> 2) + 1;
    if (v10 >> 62)
    {
      std::vector<char const*>::__throw_length_error[abi:ne200100]();
    }

    v11 = v5 - v8;
    if (v11 >> 1 > v10)
    {
      v10 = v11 >> 1;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFFCLL;
    v13 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(*a1, v13);
    }

    v14 = (4 * (v9 >> 2));
    *v14 = *a2;
    v7 = v14 + 1;
    memcpy(0, v8, v9);
    v15 = *v4;
    *v4 = 0;
    *(v4 + 8) = v7;
    *(v4 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v6 = *a2;
    v7 = v6 + 1;
  }

  *(v4 + 8) = v7;
  return a1;
}

void *std::vector<unsigned char>::reserve(void *result, unint64_t a2)
{
  if (result[2] - *result < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = result[1] - *result;
      operator new();
    }

    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t *std::back_insert_iterator<std::vector<unsigned char>>::operator=[abi:ne200100](uint64_t *a1, _BYTE *a2)
{
  v3 = *a1;
  v5 = *(*a1 + 8);
  v4 = *(*a1 + 16);
  if (v5 >= v4)
  {
    v7 = *v3;
    v8 = &v5[-*v3];
    v9 = (v8 + 1);
    if ((v8 + 1) < 0)
    {
      std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      operator new();
    }

    v12 = &v5[-*v3];
    *v8 = *a2;
    v6 = v8 + 1;
    memcpy(0, v7, v12);
    *v3 = 0;
    *(v3 + 8) = v8 + 1;
    *(v3 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 8) = v6;
  return a1;
}

void std::vector<int>::reserve(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      v2 = this->__end_ - this->__begin_;
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(this, __n);
    }

    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }
}

uint64_t *std::back_insert_iterator<std::vector<int>>::operator=[abi:ne200100](uint64_t *a1, _DWORD *a2)
{
  v4 = *a1;
  v6 = *(*a1 + 8);
  v5 = *(*a1 + 16);
  if (v6 >= v5)
  {
    v8 = *v4;
    v9 = v6 - *v4;
    v10 = (v9 >> 2) + 1;
    if (v10 >> 62)
    {
      std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
    }

    v11 = v5 - v8;
    if (v11 >> 1 > v10)
    {
      v10 = v11 >> 1;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFFCLL;
    v13 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(*a1, v13);
    }

    v14 = (4 * (v9 >> 2));
    *v14 = *a2;
    v7 = v14 + 1;
    memcpy(0, v8, v9);
    v15 = *v4;
    *v4 = 0;
    *(v4 + 8) = v7;
    *(v4 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v6 = *a2;
    v7 = v6 + 1;
  }

  *(v4 + 8) = v7;
  return a1;
}

BOOL realityio::isMetaData(realityio *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4)
{
  if (!pxrInternal__aapl__pxrReserved__::SdfPath::IsMapperPath(this))
  {
    return 0;
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v10, this);
  if ((*a2 ^ *pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(&v10)) > 7)
  {
    v8 = 0;
  }

  else
  {
    TargetPath = pxrInternal__aapl__pxrReserved__::SdfPath::GetTargetPath(this);
    v8 = (*a3 ^ *pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(TargetPath)) < 8uLL;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v10);
  return v8;
}

void sub_2475A5934(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

uint64_t getAttributeRate(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = getAttributeRateHelper(a1, 0xFFu);
  if (result == 255)
  {
    if (a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = a4;
    }

    return getAttributeRateFromCount(a2, v8);
  }

  return result;
}

uint64_t getCountForAttributeRate(uint64_t a1, int a2)
{
  if (a2 > 1)
  {
    if (a2 == 3)
    {
      LODWORD(result) = REGeomModelDescriptorGetIndexCount();
    }

    else
    {
      LODWORD(result) = REGeomModelDescriptorGetFaceCount();
    }
  }

  else if (a2)
  {
    LODWORD(result) = REGeomModelDescriptorGetVertexCount();
  }

  else
  {
    LODWORD(result) = 1;
  }

  return result;
}

void getResampleIndices(void *a1, uint64_t a2, uint64_t *a3, int a4, int a5)
{
  CountForAttributeRate = getCountForAttributeRate(a2, a5);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (CountForAttributeRate)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](a1, CountForAttributeRate);
  }

  FaceCount = REGeomModelDescriptorGetFaceCount();
  if (a5 == 1)
  {
    v37 = *a3;
    if (*a3)
    {
      if (a4 != 2)
      {
        if (a4 == 1)
        {
          v81 = *a1;
          v82 = a1[1] - *a1;
          if (v82 && v82 >> 3 == v37)
          {
            v83 = a3[4];
            do
            {
              v84 = *v83++;
              *v81++ = v84;
              --v37;
            }

            while (v37);
          }
        }

        else if (!a4)
        {
          v38 = a1[1];
          v39 = v38 - *a1;
          if (v38 != *a1)
          {
            v40 = *a3[4];
            v41 = v39 >> 3;
            if (v41 <= 1)
            {
              v42 = 1;
            }

            else
            {
              v42 = v41;
            }

            v43 = (v42 + 1) & 0xFFFFFFFFFFFFFFFELL;
            v44 = vdupq_n_s64(v42 - 1);
            v45 = xmmword_247758360;
            v46 = (*a1 + 8);
            v47 = vdupq_n_s64(2uLL);
            do
            {
              v48 = vmovn_s64(vcgeq_u64(v44, v45));
              if (v48.i8[0])
              {
                *(v46 - 1) = v40;
              }

              if (v48.i8[4])
              {
                *v46 = v40;
              }

              v45 = vaddq_s64(v45, v47);
              v46 += 2;
              v43 -= 2;
            }

            while (v43);
          }
        }

        return;
      }

      v55 = *(realityio::logObjects(FaceCount) + 24);
      if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      *buf = 0;
    }

    else
    {
      if (a4 == 1)
      {
        v89 = *a1;
        v90 = a1[1];
        if (*a1 != v90)
        {
          v91 = 0;
          v92 = (v90 - v89 - 8) >> 3;
          v93 = vdupq_n_s64(v92);
          v94 = (v92 + 2) & 0x3FFFFFFFFFFFFFFELL;
          v95 = xmmword_247758360;
          v96 = vdupq_n_s64(2uLL);
          do
          {
            v97 = vmovn_s64(vcgeq_u64(v93, v95));
            if (v97.i8[0])
            {
              *(v89 + 8 * v91) = v91;
            }

            if (v97.i8[4])
            {
              *(v89 + 8 * v91 + 8) = v91 + 1;
            }

            v91 += 2;
            v95 = vaddq_s64(v95, v96);
          }

          while (v94 != v91);
        }

        return;
      }

      if (a4 != 2)
      {
        return;
      }

      v55 = *(realityio::logObjects(FaceCount) + 24);
      if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      *buf = 0;
    }

    _os_log_error_impl(&dword_247485000, v55, OS_LOG_TYPE_ERROR, "Invalid conversion from face-rate data to vertex-rate", buf, 2u);
    return;
  }

  if (a5 != 3)
  {
    if (a5 == 2)
    {
      v11 = *a3;
      if (*a3)
      {
        if (a4 == 2)
        {
          v66 = *a1;
          v67 = a1[1] - *a1;
          if (v67 && v67 >> 3 == v11)
          {
            v68 = a3[4];
            do
            {
              v69 = *v68++;
              *v66++ = v69;
              --v11;
            }

            while (v11);
          }
        }

        else if (!a4)
        {
          v12 = a1[1];
          v13 = v12 - *a1;
          if (v12 != *a1)
          {
            v14 = *a3[4];
            v15 = v13 >> 3;
            if (v15 <= 1)
            {
              v16 = 1;
            }

            else
            {
              v16 = v15;
            }

            v17 = (v16 + 1) & 0xFFFFFFFFFFFFFFFELL;
            v18 = vdupq_n_s64(v16 - 1);
            v19 = xmmword_247758360;
            v20 = (*a1 + 8);
            v21 = vdupq_n_s64(2uLL);
            do
            {
              v22 = vmovn_s64(vcgeq_u64(v18, v19));
              if (v22.i8[0])
              {
                *(v20 - 1) = v14;
              }

              if (v22.i8[4])
              {
                *v20 = v14;
              }

              v19 = vaddq_s64(v19, v21);
              v20 += 2;
              v17 -= 2;
            }

            while (v17);
          }
        }
      }

      else if (a4 == 2)
      {
        v98 = *a1;
        v99 = a1[1];
        if (*a1 != v99)
        {
          v100 = 0;
          v101 = (v99 - v98 - 8) >> 3;
          v102 = vdupq_n_s64(v101);
          v103 = (v101 + 2) & 0x3FFFFFFFFFFFFFFELL;
          v104 = xmmword_247758360;
          v105 = vdupq_n_s64(2uLL);
          do
          {
            v106 = vmovn_s64(vcgeq_u64(v102, v104));
            if (v106.i8[0])
            {
              *(v98 + 8 * v100) = v100;
            }

            if (v106.i8[4])
            {
              *(v98 + 8 * v100 + 8) = v100 + 1;
            }

            v100 += 2;
            v104 = vaddq_s64(v104, v105);
          }

          while (v103 != v100);
        }
      }

      else if (!a4)
      {
        v56 = *a1;
        v57 = a1[1] - *a1;
        if (v57)
        {
          v58 = v57 >> 3;
          if (v58 <= 1)
          {
            v58 = 1;
          }

          bzero(v56, 8 * v58);
        }
      }
    }

    return;
  }

  v23 = FaceCount;
  v24 = FaceCount;
  v25 = *a3;
  if (*a3)
  {
    if (a4 <= 1)
    {
      if (!a4)
      {
        v26 = a1[1];
        v27 = v26 - *a1;
        if (v26 != *a1)
        {
          v28 = *a3[4];
          v29 = v27 >> 3;
          if (v29 <= 1)
          {
            v30 = 1;
          }

          else
          {
            v30 = v29;
          }

          v31 = (v30 + 1) & 0xFFFFFFFFFFFFFFFELL;
          v32 = vdupq_n_s64(v30 - 1);
          v33 = xmmword_247758360;
          v34 = (*a1 + 8);
          v35 = vdupq_n_s64(2uLL);
          do
          {
            v36 = vmovn_s64(vcgeq_u64(v32, v33));
            if (v36.i8[0])
            {
              *(v34 - 1) = v28;
            }

            if (v36.i8[4])
            {
              *v34 = v28;
            }

            v33 = vaddq_s64(v33, v35);
            v34 += 2;
            v31 -= 2;
          }

          while (v31);
        }

        return;
      }

      std::vector<unsigned int>::vector[abi:ne200100](buf, FaceCount);
      REGeomModelDescriptorGetFaceVertexCountsHighVertexPerPolygon();
      IndexCount = REGeomModelDescriptorGetIndexCount();
      std::vector<unsigned int>::vector[abi:ne200100](__p, IndexCount);
      REGeomModelDescriptorGetIndices();
      v71 = __p[0];
      if (v23)
      {
        v72 = 0;
        v73 = 0;
        v74 = *buf;
        v75 = a3[4];
        v76 = *a1;
        do
        {
          v77 = v74[v72];
          if (v77)
          {
            v78 = (v76 + 8 * v73);
            v79 = &v71[4 * v73];
            v73 += v77;
            do
            {
              v80 = *v79;
              v79 += 4;
              *v78++ = *(v75 + 4 * v80);
              --v77;
            }

            while (v77);
          }

          ++v72;
        }

        while (v72 != v24);
      }

      goto LABEL_134;
    }

    if (a4 == 2)
    {
      std::vector<unsigned int>::vector[abi:ne200100](buf, FaceCount);
      REGeomModelDescriptorGetFaceVertexCountsHighVertexPerPolygon();
      v49 = *buf;
      if (v23)
      {
        v59 = 0;
        v60 = 0;
        v61 = a3[4];
        v62 = *a1;
        do
        {
          v63 = v49[v59];
          if (v63)
          {
            v64 = (v62 + 8 * v60);
            v60 += v63;
            v65 = *(v61 + 4 * v59);
            do
            {
              *v64++ = v65;
              --v63;
            }

            while (v63);
          }

          ++v59;
        }

        while (v59 != v24);
      }

      goto LABEL_137;
    }

    v85 = *a1;
    v86 = a1[1] - *a1;
    if (v86 && v86 >> 3 == v25)
    {
      v87 = a3[4];
      do
      {
        v88 = *v87++;
        *v85++ = v88;
        --v25;
      }

      while (v25);
    }
  }

  else
  {
    if (a4 == 1)
    {
      std::vector<unsigned int>::vector[abi:ne200100](buf, FaceCount);
      REGeomModelDescriptorGetFaceVertexCountsHighVertexPerPolygon();
      v116 = REGeomModelDescriptorGetIndexCount();
      std::vector<unsigned int>::vector[abi:ne200100](__p, v116);
      REGeomModelDescriptorGetIndices();
      v71 = __p[0];
      if (v23)
      {
        v117 = 0;
        v118 = 0;
        v119 = *buf;
        v120 = *a1;
        do
        {
          v121 = v119[v117];
          if (v121)
          {
            v122 = (v120 + 8 * v118);
            v123 = &v71[4 * v118];
            v118 += v121;
            do
            {
              v124 = *v123;
              v123 += 4;
              *v122++ = v124;
              --v121;
            }

            while (v121);
          }

          ++v117;
        }

        while (v117 != v24);
      }

LABEL_134:
      if (v71)
      {
        __p[1] = v71;
        operator delete(v71);
      }

      v49 = *buf;
LABEL_137:
      if (v49)
      {
        v127 = v49;
        operator delete(v49);
      }

      return;
    }

    if (a4 != 3)
    {
      if (a4 != 2)
      {
        return;
      }

      std::vector<unsigned int>::vector[abi:ne200100](buf, FaceCount);
      REGeomModelDescriptorGetFaceVertexCountsHighVertexPerPolygon();
      v49 = *buf;
      if (v23)
      {
        v50 = 0;
        v51 = 0;
        v52 = *a1;
        do
        {
          v53 = v49[v50];
          if (v53)
          {
            v54 = (v52 + 8 * v51);
            v51 += v53;
            do
            {
              *v54++ = v50;
              --v53;
            }

            while (v53);
          }

          ++v50;
        }

        while (v50 != v24);
      }

      goto LABEL_137;
    }

    v107 = *a1;
    v108 = a1[1];
    if (*a1 != v108)
    {
      v109 = 0;
      v110 = (v108 - v107 - 8) >> 3;
      v111 = vdupq_n_s64(v110);
      v112 = (v110 + 2) & 0x3FFFFFFFFFFFFFFELL;
      v113 = xmmword_247758360;
      v114 = vdupq_n_s64(2uLL);
      do
      {
        v115 = vmovn_s64(vcgeq_u64(v111, v113));
        if (v115.i8[0])
        {
          *(v107 + 8 * v109) = v109;
        }

        if (v115.i8[4])
        {
          *(v107 + 8 * v109 + 8) = v109 + 1;
        }

        v109 += 2;
        v113 = vaddq_s64(v113, v114);
      }

      while (v112 != v109);
    }
  }
}