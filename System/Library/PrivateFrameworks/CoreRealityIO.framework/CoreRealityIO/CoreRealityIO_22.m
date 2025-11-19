void sub_2475FA9BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  realityio::TextureImportOperationSettings::~TextureImportOperationSettings(&a19);
  _Unwind_Resume(a1);
}

uint64_t realityio::Inputs::assetManager(realityio::Inputs *this)
{
  if (*(*(*(this + 5) + 16) + 16) && REEngineGetServiceLocator())
  {

    JUMPOUT(0x24C1A4230);
  }

  return 0;
}

void realityio::TextureImportOperationSettings::~TextureImportOperationSettings(void **this)
{
  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void realityio::IBLCubeMapAssetBuilder::IBLCubeMapAssetBuilder(realityio::IBLCubeMapAssetBuilder *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v7[11] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v5, "IBLCubeMapAssetBuilder");
  std::string::basic_string[abi:ne200100]<0>(&__p, realityio::kIBLCubeMapAssetBuilderIdentifier);
  if ((atomic_load_explicit(&qword_27EE531A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE531A0))
  {
    operator new();
  }

  if (*algn_27EE53198)
  {
    atomic_fetch_add_explicit((*algn_27EE53198 + 8), 1uLL, memory_order_relaxed);
  }

  v7[0] = &unk_285953F28;
  v7[3] = v7;
  v6[0] = &unk_285953FA8;
  v6[3] = v6;
  realityio::DynamicBuilder::DynamicBuilder(this, a2);
}

void sub_2475FAF1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char *a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  MEMORY[0x24C1A91B0](v43, 0x10A1C40F82F910ELL);
  a35 = &a38;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a35);
  MEMORY[0x24C1A91B0](v42, 0x10A1C401BF1BAA1);
  MEMORY[0x24C1A91B0](v44, 0x10A1C407F0BD61ELL);
  __cxa_guard_abort(&qword_27EE531A0);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

uint64_t realityio::IBLCubeMapAssetBuilder::kOutputName(realityio::IBLCubeMapAssetBuilder *this)
{
  {
    operator new();
  }

  return realityio::IBLCubeMapAssetBuilder::kOutputName(void)::kOutputName;
}

void sub_2475FB214(_Unwind_Exception *a1)
{
  MEMORY[0x24C1A91B0](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

void realityio::IBLCubeMapAssetBuilder::run(realityio::IBLCubeMapAssetBuilder *this, realityio::Inputs *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = a2;
  v3 = (a2 + 32);
  v4 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v18, v4, v3);
  v5 = atomic_load(&realityio::tokens::LightBuilderTokens);
  if (!v5)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::LightBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::LightBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&v17, &v18, (v5 + 144));
  v6 = atomic_load(&realityio::tokens::LightBuilderTokens);
  if (!v6)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::LightBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::LightBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(v20);
  realityio::getAttributeValueWithDefaultValue<pxrInternal__aapl__pxrReserved__::SdfAssetPath>((v6 + 144), v20, &v18, &v15);
  if (v23 < 0)
  {
    operator delete(v22);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v14 = __p;
  }

  v20[0] = 0;
  v7 = *(this + 35);
  if (v7)
  {
    *(this + 35) = 0;
    v20[0] = v7;
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(v20);
  v8 = *(*(*(v19 + 5) + 16) + 16);
  ServiceLocator = REEngineGetServiceLocator();
  MEMORY[0x24C1A4230]();
  v10 = MEMORY[0x24C1A4260](ServiceLocator);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!v14.__r_.__value_.__l.__size_)
    {
      goto LABEL_17;
    }
  }

  else if (!*(&v14.__r_.__value_.__s + 23))
  {
LABEL_17:
    v13 = *(this + 2);
    v12 = *(this + 3);
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    realityio::IBLCubeMapAssetBuilder::kOutputName(v10);
    v20[0] = *(this + 35);
    realityio::Outputs::storeValue<REAsset *>(v13);
  }

  v11 = *(v19 + 6);
  v22 = 0;
  operator new();
}

void sub_2475FB560(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&a24);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&a28);
  _Unwind_Resume(a1);
}

void realityio::IBLCubeMapAssetBuilder::clear(realityio::IBLCubeMapAssetBuilder *this, realityio::Inputs *a2)
{
  v15 = 0;
  v4 = *(this + 35);
  if (v4)
  {
    *(this + 35) = 0;
    v15 = v4;
  }

  v5 = realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v15);
  v7 = *(this + 2);
  v6 = *(this + 3);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = realityio::IBLCubeMapAssetBuilder::kOutputName(v5);
  realityio::Outputs::getRawValue<REAsset *>(v7, v8, &v15);
  v10 = v15;
  if ((v15 & 1) == 0)
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v14, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      v7 = v14.__r_.__value_.__r.__words[0];
      v2 = HIBYTE(v14.__r_.__value_.__r.__words[2]);
      if ((v15 & 1) == 0 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v14 = __p;
      v7 = __p.__r_.__value_.__r.__words[0];
      v2 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v10)
  {
    v12 = *(this + 2);
    v11 = *(this + 3);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = realityio::IBLCubeMapAssetBuilder::kOutputName(v9);
    std::mutex::lock((v12 + 64));
    if (v12 + 48 != std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(v12 + 40, v13))
    {
      std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::__erase_unique<std::string>((v12 + 40), v13);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__erase_unique<std::string>(v12, v13);
    std::mutex::unlock((v12 + 64));
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

  else if (v2 < 0)
  {
    operator delete(v7);
  }
}

void sub_2475FB77C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if ((a15 & 1) == 0 && a23 < 0)
  {
    operator delete(__p);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  _Unwind_Resume(exception_object);
}

void realityio::IBLCubeMapAssetBuilder::~IBLCubeMapAssetBuilder(void **this)
{
  realityio::IBLCubeMapAssetBuilder::~IBLCubeMapAssetBuilder(this);

  JUMPOUT(0x24C1A91B0);
}

{
  *this = &unk_285953EB0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((this + 42));
  if (*(this + 335) < 0)
  {
    operator delete(this[39]);
  }

  if (*(this + 311) < 0)
  {
    operator delete(this[36]);
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(this + 35);
  *this = &unk_285943338;
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100]((this + 31));
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100]((this + 27));
  v2 = this[26];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = this[24];
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = this[23];
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::Builder::~Builder(this);
}

void sub_2475FBA90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
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

uint64_t std::__function::__func<realityio::IBLCubeMapAssetBuilder::IBLCubeMapAssetBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0,std::allocator<realityio::IBLCubeMapAssetBuilder::IBLCubeMapAssetBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0>,std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2475FBCB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
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

uint64_t std::__function::__func<realityio::IBLCubeMapAssetBuilder::IBLCubeMapAssetBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1,std::allocator<realityio::IBLCubeMapAssetBuilder::IBLCubeMapAssetBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1>,std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<realityio::IBLCubeMapAssetBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::IBLCubeMapAssetBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285954028;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void *std::__function::__func<realityio::IBLCubeMapAssetBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::IBLCubeMapAssetBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 16);
  v4 = **(a1 + 8);
  v5 = *(a1 + 24);
  if (*(v5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, *v5, *(v5 + 1));
  }

  else
  {
    v6 = *v5;
    v16.__r_.__value_.__r.__words[2] = *(v5 + 2);
    *&v16.__r_.__value_.__l.__data_ = v6;
  }

  if (*(v5 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v5 + 3), *(v5 + 4));
  }

  else
  {
    v7 = *(v5 + 24);
    __p.__r_.__value_.__r.__words[2] = *(v5 + 5);
    *&__p.__r_.__value_.__l.__data_ = v7;
  }

  realityio::Inputs::createCubeMapTextureAsset(v4, v3, &v16, &v18);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  v8 = v18;
  if (v18)
  {
    v9 = *(a1 + 32);
    if (*(v9 + 23) < 0)
    {
      v10 = *v9;
    }

    REAssetSetMetadataString();
    v11 = **(a1 + 40);
    v12 = **(a1 + 48);
    v13 = REAssetManagerImageBasedLightMemoryAssetCreateWithCubeMapNullable();
    if (v2[35])
    {
      RERelease();
    }

    v2[35] = v13;
    v15 = v13;
    if (v13)
    {
      RERetain();
    }

    realityio::Builder::addAsset(v2, &v15, 0);
    realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v15);
    realityio::Builder::addAsset(v2, v8, 0);
  }

  return realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v18);
}

void sub_2475FBF68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<realityio::IBLCubeMapAssetBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::IBLCubeMapAssetBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void realityio::tokens::ActionTokens_StaticTokenType::~ActionTokens_StaticTokenType(realityio::tokens::ActionTokens_StaticTokenType *this)
{
  v49 = (this + 384);
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v49);
  v2 = *(this + 47);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 46);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 45);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 44);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 43);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 42);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 41);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 40);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 39);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 38);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(this + 37);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(this + 36);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(this + 35);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(this + 34);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(this + 33);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *(this + 32);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v18 = *(this + 31);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v19 = *(this + 30);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v20 = *(this + 29);
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v21 = *(this + 28);
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v22 = *(this + 27);
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v23 = *(this + 26);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v24 = *(this + 25);
  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v25 = *(this + 24);
  if ((v25 & 7) != 0)
  {
    atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v26 = *(this + 23);
  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v27 = *(this + 22);
  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v28 = *(this + 21);
  if ((v28 & 7) != 0)
  {
    atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v29 = *(this + 20);
  if ((v29 & 7) != 0)
  {
    atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v30 = *(this + 19);
  if ((v30 & 7) != 0)
  {
    atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v31 = *(this + 18);
  if ((v31 & 7) != 0)
  {
    atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v32 = *(this + 17);
  if ((v32 & 7) != 0)
  {
    atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v33 = *(this + 16);
  if ((v33 & 7) != 0)
  {
    atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v34 = *(this + 15);
  if ((v34 & 7) != 0)
  {
    atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v35 = *(this + 14);
  if ((v35 & 7) != 0)
  {
    atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v36 = *(this + 13);
  if ((v36 & 7) != 0)
  {
    atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v37 = *(this + 12);
  if ((v37 & 7) != 0)
  {
    atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v38 = *(this + 11);
  if ((v38 & 7) != 0)
  {
    atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v39 = *(this + 10);
  if ((v39 & 7) != 0)
  {
    atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v40 = *(this + 9);
  if ((v40 & 7) != 0)
  {
    atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v41 = *(this + 8);
  if ((v41 & 7) != 0)
  {
    atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v42 = *(this + 7);
  if ((v42 & 7) != 0)
  {
    atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v43 = *(this + 6);
  if ((v43 & 7) != 0)
  {
    atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v44 = *(this + 5);
  if ((v44 & 7) != 0)
  {
    atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v45 = *(this + 4);
  if ((v45 & 7) != 0)
  {
    atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v46 = *(this + 3);
  if ((v46 & 7) != 0)
  {
    atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v47 = *(this + 2);
  if ((v47 & 7) != 0)
  {
    atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v48 = *(this + 1);
  if ((v48 & 7) != 0)
  {
    atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

realityio::tokens::ActionTokens_StaticTokenType *realityio::tokens::ActionTokens_StaticTokenType::ActionTokens_StaticTokenType(realityio::tokens::ActionTokens_StaticTokenType *this)
{
  v103 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x24C1A5DF0](this, "/makeAmbientLightComponentRule", 0);
  MEMORY[0x24C1A5DF0](v2 + 8, "/makeAnchoringComponentRule", 0);
  MEMORY[0x24C1A5DF0](this + 16, "/makeAnimComponentRule", 0);
  MEMORY[0x24C1A5DF0](this + 24, "/makeAnimLibraryAssetRule", 0);
  MEMORY[0x24C1A5DF0](this + 32, "/makeAnimLibraryComponentRule", 0);
  MEMORY[0x24C1A5DF0](this + 40, "/makeBlendShapeWeightsComponentActionRule", 0);
  MEMORY[0x24C1A5DF0](this + 48, "/makeBlendShapeWeightsDefinitionAssetActionRule", 0);
  MEMORY[0x24C1A5DF0](this + 56, "/makeCapsuleAssetDescriptorRule", 0);
  MEMORY[0x24C1A5DF0](this + 64, "/makeCapsuleMeshDescriptorRule", 0);
  MEMORY[0x24C1A5DF0](this + 72, "/makeConeAssetDescriptorRule", 0);
  MEMORY[0x24C1A5DF0](this + 80, "/makeConeMeshDescriptorRule", 0);
  MEMORY[0x24C1A5DF0](this + 88, "/makeCubeMapAssetRule", 0);
  MEMORY[0x24C1A5DF0](this + 96, "/makeCubeAssetDescriptorRule", 0);
  MEMORY[0x24C1A5DF0](this + 104, "/makeCubeMeshDescriptorRule", 0);
  MEMORY[0x24C1A5DF0](this + 112, "/makeCustomComponentRule", 0);
  MEMORY[0x24C1A5DF0](this + 120, "/makeCylinderAssetDescriptorRule", 0);
  MEMORY[0x24C1A5DF0](this + 128, "/makeCylinderMeshDescriptorRule", 0);
  MEMORY[0x24C1A5DF0](this + 136, "/makeDirectionalLightComponentRule", 0);
  MEMORY[0x24C1A5DF0](this + 144, "/makeAndAddChildrenEntityRule", 0);
  MEMORY[0x24C1A5DF0](this + 152, "/syncAndPassthruEntityRule", 0);
  MEMORY[0x24C1A5DF0](this + 160, "/getFromUsd", 0);
  MEMORY[0x24C1A5DF0](this + 168, "/makeImageBasedLightComponentRule", 0);
  MEMORY[0x24C1A5DF0](this + 176, "/makeMapFromGroupsRule", 0);
  MEMORY[0x24C1A5DF0](this + 184, "/makeMaterialAsset", 0);
  MEMORY[0x24C1A5DF0](this + 192, "/makeMaterialParamBlockArrayComponent", 0);
  MEMORY[0x24C1A5DF0](this + 200, "/makeMeshAssetRule", 0);
  MEMORY[0x24C1A5DF0](this + 208, "/makeMeshComponentRule", 0);
  MEMORY[0x24C1A5DF0](this + 216, "/makeMeshDeformationRule", 0);
  MEMORY[0x24C1A5DF0](this + 224, "/makeMeshDescriptorRule", 0);
  MEMORY[0x24C1A5DF0](this + 232, "/makePointLightComponentRule", 0);
  MEMORY[0x24C1A5DF0](this + 240, "/makeRigRule", 0);
  MEMORY[0x24C1A5DF0](this + 248, "/makeRectAreaLightComponentRule", 0);
  MEMORY[0x24C1A5DF0](this + 256, "/makeRenderOptionsComponentRule", 0);
  MEMORY[0x24C1A5DF0](this + 264, "/makeSampleAnimationFromUsdAction", 0);
  MEMORY[0x24C1A5DF0](this + 272, "/makeSceneLibraryRule", 0);
  MEMORY[0x24C1A5DF0](this + 280, "/makeShadowMapComponentRule", 0);
  MEMORY[0x24C1A5DF0](this + 288, "/makeSkelAnimTimelineAssetRule", 0);
  MEMORY[0x24C1A5DF0](this + 296, "/makeSkeletalPoseAssetRule", 0);
  MEMORY[0x24C1A5DF0](this + 304, "/makeSkeletalPoseComponentRule", 0);
  MEMORY[0x24C1A5DF0](this + 312, "/makeSkeletalPoseDefinitionAssetRule", 0);
  MEMORY[0x24C1A5DF0](this + 320, "/makeSphereAssetDescriptorRule", 0);
  MEMORY[0x24C1A5DF0](this + 328, "/makeSphereMeshDescriptorRule", 0);
  MEMORY[0x24C1A5DF0](this + 336, "/makeSpotLightComponentRule", 0);
  MEMORY[0x24C1A5DF0](this + 344, "/makeStatic3DTextComponentRule", 0);
  MEMORY[0x24C1A5DF0](this + 352, "/makeStatic3DTextMeshDescriptorRule", 0);
  MEMORY[0x24C1A5DF0](this + 360, "/makeTextureAsset", 0);
  MEMORY[0x24C1A5DF0](this + 368, "/makeTransformAnimTimelineAssetRule", 0);
  MEMORY[0x24C1A5DF0](this + 376, "/makeTransformComponentRule", 0);
  v3 = *this;
  v55 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v55 &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = *(this + 1);
  v56 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v56 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 2);
  v57 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v57 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 3);
  v58 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v58 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 4);
  v59 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v59 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 5);
  v60 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v60 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 6);
  v61 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v61 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 7);
  v62 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v62 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 8);
  v63 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v63 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 9);
  v64 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v64 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 10);
  v65 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v65 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 11);
  v66 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v66 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = *(this + 12);
  v67 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v67 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = *(this + 13);
  v68 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v68 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = *(this + 14);
  v69 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v69 &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = *(this + 15);
  v70 = v18;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v70 &= 0xFFFFFFFFFFFFFFF8;
  }

  v19 = *(this + 16);
  v71 = v19;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v71 &= 0xFFFFFFFFFFFFFFF8;
  }

  v20 = *(this + 17);
  v72 = v20;
  if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v72 &= 0xFFFFFFFFFFFFFFF8;
  }

  v21 = *(this + 18);
  v73 = v21;
  if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v73 &= 0xFFFFFFFFFFFFFFF8;
  }

  v22 = *(this + 19);
  v74 = v22;
  if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v74 &= 0xFFFFFFFFFFFFFFF8;
  }

  v23 = *(this + 20);
  v75 = v23;
  if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v75 &= 0xFFFFFFFFFFFFFFF8;
  }

  v24 = *(this + 21);
  v76 = v24;
  if ((v24 & 7) != 0 && (atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v76 &= 0xFFFFFFFFFFFFFFF8;
  }

  v25 = *(this + 22);
  v77 = v25;
  if ((v25 & 7) != 0 && (atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v77 &= 0xFFFFFFFFFFFFFFF8;
  }

  v26 = *(this + 23);
  v78 = v26;
  if ((v26 & 7) != 0 && (atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v78 &= 0xFFFFFFFFFFFFFFF8;
  }

  v27 = *(this + 24);
  v79 = v27;
  if ((v27 & 7) != 0 && (atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v79 &= 0xFFFFFFFFFFFFFFF8;
  }

  v28 = *(this + 25);
  v80 = v28;
  if ((v28 & 7) != 0 && (atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v80 &= 0xFFFFFFFFFFFFFFF8;
  }

  v29 = *(this + 26);
  v81 = v29;
  if ((v29 & 7) != 0 && (atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v81 &= 0xFFFFFFFFFFFFFFF8;
  }

  v30 = *(this + 27);
  v82 = v30;
  if ((v30 & 7) != 0 && (atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v82 &= 0xFFFFFFFFFFFFFFF8;
  }

  v31 = *(this + 28);
  v83 = v31;
  if ((v31 & 7) != 0 && (atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v83 &= 0xFFFFFFFFFFFFFFF8;
  }

  v32 = *(this + 29);
  v84 = v32;
  if ((v32 & 7) != 0 && (atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v84 &= 0xFFFFFFFFFFFFFFF8;
  }

  v33 = *(this + 30);
  v85 = v33;
  if ((v33 & 7) != 0 && (atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v85 &= 0xFFFFFFFFFFFFFFF8;
  }

  v34 = *(this + 31);
  v86 = v34;
  if ((v34 & 7) != 0 && (atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v86 &= 0xFFFFFFFFFFFFFFF8;
  }

  v35 = *(this + 32);
  v87 = v35;
  if ((v35 & 7) != 0 && (atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v87 &= 0xFFFFFFFFFFFFFFF8;
  }

  v36 = *(this + 33);
  v88 = v36;
  if ((v36 & 7) != 0 && (atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v88 &= 0xFFFFFFFFFFFFFFF8;
  }

  v37 = *(this + 34);
  v89 = v37;
  if ((v37 & 7) != 0 && (atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v89 &= 0xFFFFFFFFFFFFFFF8;
  }

  v38 = *(this + 35);
  v90 = v38;
  if ((v38 & 7) != 0 && (atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v90 &= 0xFFFFFFFFFFFFFFF8;
  }

  v39 = *(this + 36);
  v91 = v39;
  if ((v39 & 7) != 0 && (atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v91 &= 0xFFFFFFFFFFFFFFF8;
  }

  v40 = *(this + 37);
  v92 = v40;
  if ((v40 & 7) != 0 && (atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v92 &= 0xFFFFFFFFFFFFFFF8;
  }

  v41 = *(this + 38);
  v93 = v41;
  if ((v41 & 7) != 0 && (atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v93 &= 0xFFFFFFFFFFFFFFF8;
  }

  v42 = *(this + 39);
  v94 = v42;
  if ((v42 & 7) != 0 && (atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v94 &= 0xFFFFFFFFFFFFFFF8;
  }

  v43 = *(this + 40);
  v95 = v43;
  if ((v43 & 7) != 0 && (atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v95 &= 0xFFFFFFFFFFFFFFF8;
  }

  v44 = *(this + 41);
  v96 = v44;
  if ((v44 & 7) != 0 && (atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v96 &= 0xFFFFFFFFFFFFFFF8;
  }

  v45 = *(this + 42);
  v97 = v45;
  if ((v45 & 7) != 0 && (atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v97 &= 0xFFFFFFFFFFFFFFF8;
  }

  v46 = *(this + 43);
  v98 = v46;
  if ((v46 & 7) != 0 && (atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v98 &= 0xFFFFFFFFFFFFFFF8;
  }

  v47 = *(this + 44);
  v99 = v47;
  if ((v47 & 7) != 0 && (atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v99 &= 0xFFFFFFFFFFFFFFF8;
  }

  v48 = *(this + 45);
  v100 = v48;
  if ((v48 & 7) != 0 && (atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v100 &= 0xFFFFFFFFFFFFFFF8;
  }

  v49 = *(this + 46);
  v101 = v49;
  if ((v49 & 7) != 0 && (atomic_fetch_add_explicit((v49 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v101 &= 0xFFFFFFFFFFFFFFF8;
  }

  v50 = *(this + 47);
  v102 = v50;
  if ((v50 & 7) != 0 && (atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v102 &= 0xFFFFFFFFFFFFFFF8;
  }

  *(this + 48) = 0;
  *(this + 49) = 0;
  *(this + 50) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken const*,pxrInternal__aapl__pxrReserved__::TfToken const*>(this + 384, &v55, &v103, 0x30uLL);
  for (i = 376; i != -8; i -= 8)
  {
    v52 = *(&v55 + i);
    if ((v52 & 7) != 0)
    {
      atomic_fetch_add_explicit((v52 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v53 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_2475FD164(_Unwind_Exception *a1)
{
  v3 = 376;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[47];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[46];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[45];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[44];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[43];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[42];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[41];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[40];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[39];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[38];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[37];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[36];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v17 = v1[35];
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v18 = v1[34];
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v19 = v1[33];
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v20 = v1[32];
      if ((v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v21 = v1[31];
      if ((v21 & 7) != 0)
      {
        atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v22 = v1[30];
      if ((v22 & 7) != 0)
      {
        atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v23 = v1[29];
      if ((v23 & 7) != 0)
      {
        atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v24 = v1[28];
      if ((v24 & 7) != 0)
      {
        atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v25 = v1[27];
      if ((v25 & 7) != 0)
      {
        atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v26 = v1[26];
      if ((v26 & 7) != 0)
      {
        atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v27 = v1[25];
      if ((v27 & 7) != 0)
      {
        atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v28 = v1[24];
      if ((v28 & 7) != 0)
      {
        atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v29 = v1[23];
      if ((v29 & 7) != 0)
      {
        atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v30 = v1[22];
      if ((v30 & 7) != 0)
      {
        atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v31 = v1[21];
      if ((v31 & 7) != 0)
      {
        atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v32 = v1[20];
      if ((v32 & 7) != 0)
      {
        atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v33 = v1[19];
      if ((v33 & 7) != 0)
      {
        atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v34 = v1[18];
      if ((v34 & 7) != 0)
      {
        atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v35 = v1[17];
      if ((v35 & 7) != 0)
      {
        atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v36 = v1[16];
      if ((v36 & 7) != 0)
      {
        atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v37 = v1[15];
      if ((v37 & 7) != 0)
      {
        atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v38 = v1[14];
      if ((v38 & 7) != 0)
      {
        atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v39 = v1[13];
      if ((v39 & 7) != 0)
      {
        atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v40 = v1[12];
      if ((v40 & 7) != 0)
      {
        atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v41 = v1[11];
      if ((v41 & 7) != 0)
      {
        atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v42 = v1[10];
      if ((v42 & 7) != 0)
      {
        atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v43 = v1[9];
      if ((v43 & 7) != 0)
      {
        atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v44 = v1[8];
      if ((v44 & 7) != 0)
      {
        atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v45 = v1[7];
      if ((v45 & 7) != 0)
      {
        atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v46 = v1[6];
      if ((v46 & 7) != 0)
      {
        atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v47 = v1[5];
      if ((v47 & 7) != 0)
      {
        atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v48 = v1[4];
      if ((v48 & 7) != 0)
      {
        atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v49 = v1[3];
      if ((v49 & 7) != 0)
      {
        atomic_fetch_add_explicit((v49 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v50 = v1[2];
      if ((v50 & 7) != 0)
      {
        atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v51 = v1[1];
      if ((v51 & 7) != 0)
      {
        atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

realityio::tokens::SamplingTokens_StaticTokenType *realityio::tokens::SamplingTokens_StaticTokenType::SamplingTokens_StaticTokenType(realityio::tokens::SamplingTokens_StaticTokenType *this)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x24C1A5DF0](this, "/__timeSamples", 0);
  v5 = *v2;
  v3 = v2 + 1;
  v4 = v5;
  v9 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v9 = v6;
    }
  }

  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken const*,pxrInternal__aapl__pxrReserved__::TfToken const*>(v3, &v9, &v10, 1uLL);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *MEMORY[0x277D85DE8];
  return this;
}

realityio::tokens::StageTokens_StaticTokenType *realityio::tokens::StageTokens_StaticTokenType::StageTokens_StaticTokenType(atomic_uint **this)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x24C1A5DF0](this, "/__stage.layerData", 0);
  MEMORY[0x24C1A5DF0](v2 + 8, "/__root", 0);
  v3 = this + 2;
  v4 = *this;
  v12 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 = v5;
    }
  }

  v6 = this[1];
  v13 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v13 = v7;
    }
  }

  *v3 = 0;
  this[3] = 0;
  this[4] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken const*,pxrInternal__aapl__pxrReserved__::TfToken const*>(v3, &v12, &v14, 2uLL);
  for (i = 1; i != -1; --i)
  {
    v9 = (&v12)[i];
    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_2475FD8CC(_Unwind_Exception *a1)
{
  v3 = 8;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[1];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void realityio::tokens::RealityKitTokens_StaticTokenType::~RealityKitTokens_StaticTokenType(realityio::tokens::RealityKitTokens_StaticTokenType *this)
{
  v15 = (this + 112);
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v15);
  v2 = *(this + 13);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 12);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 11);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 10);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 9);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 8);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 7);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 6);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 5);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 4);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(this + 3);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(this + 2);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(this + 1);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

realityio::tokens::RealityKitTokens_StaticTokenType *realityio::tokens::RealityKitTokens_StaticTokenType::RealityKitTokens_StaticTokenType(realityio::tokens::RealityKitTokens_StaticTokenType *this)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x24C1A5DF0](this, "Component", 0);
  MEMORY[0x24C1A5DF0](v2 + 8, "content", 0);
  MEMORY[0x24C1A5DF0](this + 16, "CustomComponent", 0);
  MEMORY[0x24C1A5DF0](this + 24, "depth", 0);
  MEMORY[0x24C1A5DF0](this + 32, "font", 0);
  MEMORY[0x24C1A5DF0](this + 40, "height", 0);
  MEMORY[0x24C1A5DF0](this + 48, "horizontalAlignment", 0);
  MEMORY[0x24C1A5DF0](this + 56, "realitykit:innerDegrees", 0);
  MEMORY[0x24C1A5DF0](this + 64, "pointSize", 0);
  MEMORY[0x24C1A5DF0](this + 72, "shadow:bias", 0);
  MEMORY[0x24C1A5DF0](this + 80, "Struct", 0);
  MEMORY[0x24C1A5DF0](this + 88, "verticalAlignment", 0);
  MEMORY[0x24C1A5DF0](this + 96, "width", 0);
  MEMORY[0x24C1A5DF0](this + 104, "wrapMode", 0);
  v3 = (this + 112);
  v4 = *this;
  v22 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v22 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 1);
  v23 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v23 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 2);
  v24 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v24 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 3);
  v25 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v25 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 4);
  v26 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v26 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 5);
  v27 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v27 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 6);
  v28 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v28 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 7);
  v29 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v29 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 8);
  v30 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v30 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 9);
  v31 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v31 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 10);
  v32 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v32 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = *(this + 11);
  v33 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v33 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = *(this + 12);
  v34 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v34 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = *(this + 13);
  v35 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v35 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v3 = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken const*,pxrInternal__aapl__pxrReserved__::TfToken const*>(v3, &v22, &v36, 0xEuLL);
  for (i = 104; i != -8; i -= 8)
  {
    v19 = *(&v22 + i);
    if ((v19 & 7) != 0)
    {
      atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_2475FDED4(_Unwind_Exception *a1)
{
  v3 = 104;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[13];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[12];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[11];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[10];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[9];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[8];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[7];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[6];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[5];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[4];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[3];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[2];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v17 = v1[1];
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void realityio::tokens::EcsTokens_StaticTokenType::~EcsTokens_StaticTokenType(realityio::tokens::EcsTokens_StaticTokenType *this)
{
  v55 = (this + 432);
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v55);
  v2 = *(this + 53);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 52);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 51);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 50);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 49);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 48);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 47);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 46);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 45);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 44);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(this + 43);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(this + 42);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(this + 41);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(this + 40);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(this + 39);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *(this + 38);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v18 = *(this + 37);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v19 = *(this + 36);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v20 = *(this + 35);
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v21 = *(this + 34);
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v22 = *(this + 33);
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v23 = *(this + 32);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v24 = *(this + 31);
  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v25 = *(this + 30);
  if ((v25 & 7) != 0)
  {
    atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v26 = *(this + 29);
  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v27 = *(this + 28);
  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v28 = *(this + 27);
  if ((v28 & 7) != 0)
  {
    atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v29 = *(this + 26);
  if ((v29 & 7) != 0)
  {
    atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v30 = *(this + 25);
  if ((v30 & 7) != 0)
  {
    atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v31 = *(this + 24);
  if ((v31 & 7) != 0)
  {
    atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v32 = *(this + 23);
  if ((v32 & 7) != 0)
  {
    atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v33 = *(this + 22);
  if ((v33 & 7) != 0)
  {
    atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v34 = *(this + 21);
  if ((v34 & 7) != 0)
  {
    atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v35 = *(this + 20);
  if ((v35 & 7) != 0)
  {
    atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v36 = *(this + 19);
  if ((v36 & 7) != 0)
  {
    atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v37 = *(this + 18);
  if ((v37 & 7) != 0)
  {
    atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v38 = *(this + 17);
  if ((v38 & 7) != 0)
  {
    atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v39 = *(this + 16);
  if ((v39 & 7) != 0)
  {
    atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v40 = *(this + 15);
  if ((v40 & 7) != 0)
  {
    atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v41 = *(this + 14);
  if ((v41 & 7) != 0)
  {
    atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v42 = *(this + 13);
  if ((v42 & 7) != 0)
  {
    atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v43 = *(this + 12);
  if ((v43 & 7) != 0)
  {
    atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v44 = *(this + 11);
  if ((v44 & 7) != 0)
  {
    atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v45 = *(this + 10);
  if ((v45 & 7) != 0)
  {
    atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v46 = *(this + 9);
  if ((v46 & 7) != 0)
  {
    atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v47 = *(this + 8);
  if ((v47 & 7) != 0)
  {
    atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v48 = *(this + 7);
  if ((v48 & 7) != 0)
  {
    atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v49 = *(this + 6);
  if ((v49 & 7) != 0)
  {
    atomic_fetch_add_explicit((v49 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v50 = *(this + 5);
  if ((v50 & 7) != 0)
  {
    atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v51 = *(this + 4);
  if ((v51 & 7) != 0)
  {
    atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v52 = *(this + 3);
  if ((v52 & 7) != 0)
  {
    atomic_fetch_add_explicit((v52 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v53 = *(this + 2);
  if ((v53 & 7) != 0)
  {
    atomic_fetch_add_explicit((v53 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v54 = *(this + 1);
  if ((v54 & 7) != 0)
  {
    atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

realityio::tokens::EcsTokens_StaticTokenType *realityio::tokens::EcsTokens_StaticTokenType::EcsTokens_StaticTokenType(realityio::tokens::EcsTokens_StaticTokenType *this)
{
  v115 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x24C1A5DF0](this, "__ambientLightComponent", 0);
  MEMORY[0x24C1A5DF0](v2 + 8, "__anchoringComponent", 0);
  MEMORY[0x24C1A5DF0](this + 16, "__anchoringScale", 0);
  MEMORY[0x24C1A5DF0](this + 24, "__anchoringRotation", 0);
  MEMORY[0x24C1A5DF0](this + 32, "__anchoringTranslation", 0);
  MEMORY[0x24C1A5DF0](this + 40, "__anchoringWorldScale", 0);
  MEMORY[0x24C1A5DF0](this + 48, "__anchoringReferenceImageGroup", 0);
  MEMORY[0x24C1A5DF0](this + 56, "__anchoringReferenceImageName", 0);
  MEMORY[0x24C1A5DF0](this + 64, "__animComponent", 0);
  MEMORY[0x24C1A5DF0](this + 72, "__animLibraryAsset", 0);
  MEMORY[0x24C1A5DF0](this + 80, "__animLibraryComponent", 0);
  MEMORY[0x24C1A5DF0](this + 88, "__blendShapeWeightsDefinitionAsset", 0);
  MEMORY[0x24C1A5DF0](this + 96, "__blendShapeWeightsComponent", 0);
  MEMORY[0x24C1A5DF0](this + 104, "__assetDescriptor", 0);
  MEMORY[0x24C1A5DF0](this + 112, "__constDisplayColor", 0);
  MEMORY[0x24C1A5DF0](this + 120, "__componentInputs", 0);
  MEMORY[0x24C1A5DF0](this + 128, "__cubeMapAsset", 0);
  MEMORY[0x24C1A5DF0](this + 136, "__customComponent", 0);
  MEMORY[0x24C1A5DF0](this + 144, "__directionalLightComponent", 0);
  MEMORY[0x24C1A5DF0](this + 152, "__entity", 0);
  MEMORY[0x24C1A5DF0](this + 160, "__entityPreMesh", 0);
  MEMORY[0x24C1A5DF0](this + 168, "__entityPrimName", 0);
  MEMORY[0x24C1A5DF0](this + 176, "__entityPrimPath", 0);
  MEMORY[0x24C1A5DF0](this + 184, "__geomSkeleton", 0);
  MEMORY[0x24C1A5DF0](this + 192, "__imageBasedLightComponent", 0);
  MEMORY[0x24C1A5DF0](this + 200, "__materialAsset", 0);
  MEMORY[0x24C1A5DF0](this + 208, "__materialAssets", 0);
  MEMORY[0x24C1A5DF0](this + 216, "__materialAssetPaths", 0);
  MEMORY[0x24C1A5DF0](this + 224, "__materialIndexInfo", 0);
  MEMORY[0x24C1A5DF0](this + 232, "__materialPBAComponent", 0);
  MEMORY[0x24C1A5DF0](this + 240, "__meshAsset", 0);
  MEMORY[0x24C1A5DF0](this + 248, "__meshComponent", 0);
  MEMORY[0x24C1A5DF0](this + 256, "__meshDeformationComponent", 0);
  MEMORY[0x24C1A5DF0](this + 264, "__meshDescriptorBundle", 0);
  MEMORY[0x24C1A5DF0](this + 272, "__meshDescriptorXform", 0);
  MEMORY[0x24C1A5DF0](this + 280, "__meshMaterialIndex", 0);
  MEMORY[0x24C1A5DF0](this + 288, "__noMaterial", 0);
  MEMORY[0x24C1A5DF0](this + 296, "__orderedMaterialInfos", 0);
  MEMORY[0x24C1A5DF0](this + 304, "__pointLightComponent", 0);
  MEMORY[0x24C1A5DF0](this + 312, "__rigComponent", 0);
  MEMORY[0x24C1A5DF0](this + 320, "__rectAreaLightComponent", 0);
  MEMORY[0x24C1A5DF0](this + 328, "__renderOptionsComponent", 0);
  MEMORY[0x24C1A5DF0](this + 336, "__sceneLibrary", 0);
  MEMORY[0x24C1A5DF0](this + 344, "__shadowMapComponent", 0);
  MEMORY[0x24C1A5DF0](this + 352, "__skelAnimInfo", 0);
  MEMORY[0x24C1A5DF0](this + 360, "__skelAnimTimelineAsset", 0);
  MEMORY[0x24C1A5DF0](this + 368, "__skelPoseComponent", 0);
  MEMORY[0x24C1A5DF0](this + 376, "__skelPoseDefinitionAsset", 0);
  MEMORY[0x24C1A5DF0](this + 384, "__spotLightComponent", 0);
  MEMORY[0x24C1A5DF0](this + 392, "__static3DTextComponent", 0);
  MEMORY[0x24C1A5DF0](this + 400, "__transformComponent", 0);
  MEMORY[0x24C1A5DF0](this + 408, "usdPrimitiveAxis", 0);
  MEMORY[0x24C1A5DF0](this + 416, "__vertexDisplayColor", 0);
  MEMORY[0x24C1A5DF0](this + 424, "__xformAnimTimelineAsset", 0);
  v3 = *this;
  v61 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v61 &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = *(this + 1);
  v62 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v62 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 2);
  v63 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v63 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 3);
  v64 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v64 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 4);
  v65 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v65 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 5);
  v66 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v66 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 6);
  v67 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v67 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 7);
  v68 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v68 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 8);
  v69 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v69 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 9);
  v70 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v70 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 10);
  v71 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v71 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 11);
  v72 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v72 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = *(this + 12);
  v73 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v73 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = *(this + 13);
  v74 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v74 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = *(this + 14);
  v75 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v75 &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = *(this + 15);
  v76 = v18;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v76 &= 0xFFFFFFFFFFFFFFF8;
  }

  v19 = *(this + 16);
  v77 = v19;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v77 &= 0xFFFFFFFFFFFFFFF8;
  }

  v20 = *(this + 17);
  v78 = v20;
  if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v78 &= 0xFFFFFFFFFFFFFFF8;
  }

  v21 = *(this + 18);
  v79 = v21;
  if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v79 &= 0xFFFFFFFFFFFFFFF8;
  }

  v22 = *(this + 19);
  v80 = v22;
  if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v80 &= 0xFFFFFFFFFFFFFFF8;
  }

  v23 = *(this + 20);
  v81 = v23;
  if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v81 &= 0xFFFFFFFFFFFFFFF8;
  }

  v24 = *(this + 21);
  v82 = v24;
  if ((v24 & 7) != 0 && (atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v82 &= 0xFFFFFFFFFFFFFFF8;
  }

  v25 = *(this + 22);
  v83 = v25;
  if ((v25 & 7) != 0 && (atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v83 &= 0xFFFFFFFFFFFFFFF8;
  }

  v26 = *(this + 23);
  v84 = v26;
  if ((v26 & 7) != 0 && (atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v84 &= 0xFFFFFFFFFFFFFFF8;
  }

  v27 = *(this + 24);
  v85 = v27;
  if ((v27 & 7) != 0 && (atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v85 &= 0xFFFFFFFFFFFFFFF8;
  }

  v28 = *(this + 25);
  v86 = v28;
  if ((v28 & 7) != 0 && (atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v86 &= 0xFFFFFFFFFFFFFFF8;
  }

  v29 = *(this + 26);
  v87 = v29;
  if ((v29 & 7) != 0 && (atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v87 &= 0xFFFFFFFFFFFFFFF8;
  }

  v30 = *(this + 27);
  v88 = v30;
  if ((v30 & 7) != 0 && (atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v88 &= 0xFFFFFFFFFFFFFFF8;
  }

  v31 = *(this + 28);
  v89 = v31;
  if ((v31 & 7) != 0 && (atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v89 &= 0xFFFFFFFFFFFFFFF8;
  }

  v32 = *(this + 29);
  v90 = v32;
  if ((v32 & 7) != 0 && (atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v90 &= 0xFFFFFFFFFFFFFFF8;
  }

  v33 = *(this + 30);
  v91 = v33;
  if ((v33 & 7) != 0 && (atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v91 &= 0xFFFFFFFFFFFFFFF8;
  }

  v34 = *(this + 31);
  v92 = v34;
  if ((v34 & 7) != 0 && (atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v92 &= 0xFFFFFFFFFFFFFFF8;
  }

  v35 = *(this + 32);
  v93 = v35;
  if ((v35 & 7) != 0 && (atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v93 &= 0xFFFFFFFFFFFFFFF8;
  }

  v36 = *(this + 33);
  v94 = v36;
  if ((v36 & 7) != 0 && (atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v94 &= 0xFFFFFFFFFFFFFFF8;
  }

  v37 = *(this + 34);
  v95 = v37;
  if ((v37 & 7) != 0 && (atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v95 &= 0xFFFFFFFFFFFFFFF8;
  }

  v38 = *(this + 35);
  v96 = v38;
  if ((v38 & 7) != 0 && (atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v96 &= 0xFFFFFFFFFFFFFFF8;
  }

  v39 = *(this + 36);
  v97 = v39;
  if ((v39 & 7) != 0 && (atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v97 &= 0xFFFFFFFFFFFFFFF8;
  }

  v40 = *(this + 37);
  v98 = v40;
  if ((v40 & 7) != 0 && (atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v98 &= 0xFFFFFFFFFFFFFFF8;
  }

  v41 = *(this + 38);
  v99 = v41;
  if ((v41 & 7) != 0 && (atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v99 &= 0xFFFFFFFFFFFFFFF8;
  }

  v42 = *(this + 39);
  v100 = v42;
  if ((v42 & 7) != 0 && (atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v100 &= 0xFFFFFFFFFFFFFFF8;
  }

  v43 = *(this + 40);
  v101 = v43;
  if ((v43 & 7) != 0 && (atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v101 &= 0xFFFFFFFFFFFFFFF8;
  }

  v44 = *(this + 41);
  v102 = v44;
  if ((v44 & 7) != 0 && (atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v102 &= 0xFFFFFFFFFFFFFFF8;
  }

  v45 = *(this + 42);
  v103 = v45;
  if ((v45 & 7) != 0 && (atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v103 &= 0xFFFFFFFFFFFFFFF8;
  }

  v46 = *(this + 43);
  v104 = v46;
  if ((v46 & 7) != 0 && (atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v104 &= 0xFFFFFFFFFFFFFFF8;
  }

  v47 = *(this + 44);
  v105 = v47;
  if ((v47 & 7) != 0 && (atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v105 &= 0xFFFFFFFFFFFFFFF8;
  }

  v48 = *(this + 45);
  v106 = v48;
  if ((v48 & 7) != 0 && (atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v106 &= 0xFFFFFFFFFFFFFFF8;
  }

  v49 = *(this + 46);
  v107 = v49;
  if ((v49 & 7) != 0 && (atomic_fetch_add_explicit((v49 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v107 &= 0xFFFFFFFFFFFFFFF8;
  }

  v50 = *(this + 47);
  v108 = v50;
  if ((v50 & 7) != 0 && (atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v108 &= 0xFFFFFFFFFFFFFFF8;
  }

  v51 = *(this + 48);
  v109 = v51;
  if ((v51 & 7) != 0 && (atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v109 &= 0xFFFFFFFFFFFFFFF8;
  }

  v52 = *(this + 49);
  v110 = v52;
  if ((v52 & 7) != 0 && (atomic_fetch_add_explicit((v52 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v110 &= 0xFFFFFFFFFFFFFFF8;
  }

  v53 = *(this + 50);
  v111 = v53;
  if ((v53 & 7) != 0 && (atomic_fetch_add_explicit((v53 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v111 &= 0xFFFFFFFFFFFFFFF8;
  }

  v54 = *(this + 51);
  v112 = v54;
  if ((v54 & 7) != 0 && (atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v112 &= 0xFFFFFFFFFFFFFFF8;
  }

  v55 = *(this + 52);
  v113 = v55;
  if ((v55 & 7) != 0 && (atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v113 &= 0xFFFFFFFFFFFFFFF8;
  }

  v56 = *(this + 53);
  v114 = v56;
  if ((v56 & 7) != 0 && (atomic_fetch_add_explicit((v56 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v114 &= 0xFFFFFFFFFFFFFFF8;
  }

  *(this + 54) = 0;
  *(this + 55) = 0;
  *(this + 56) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken const*,pxrInternal__aapl__pxrReserved__::TfToken const*>(this + 432, &v61, &v115, 0x36uLL);
  for (i = 424; i != -8; i -= 8)
  {
    v58 = *(&v61 + i);
    if ((v58 & 7) != 0)
    {
      atomic_fetch_add_explicit((v58 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v59 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_2475FF3F4(_Unwind_Exception *a1)
{
  v3 = 424;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[53];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[52];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[51];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[50];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[49];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[48];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[47];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[46];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[45];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[44];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[43];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[42];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v17 = v1[41];
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v18 = v1[40];
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v19 = v1[39];
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v20 = v1[38];
      if ((v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v21 = v1[37];
      if ((v21 & 7) != 0)
      {
        atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v22 = v1[36];
      if ((v22 & 7) != 0)
      {
        atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v23 = v1[35];
      if ((v23 & 7) != 0)
      {
        atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v24 = v1[34];
      if ((v24 & 7) != 0)
      {
        atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v25 = v1[33];
      if ((v25 & 7) != 0)
      {
        atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v26 = v1[32];
      if ((v26 & 7) != 0)
      {
        atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v27 = v1[31];
      if ((v27 & 7) != 0)
      {
        atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v28 = v1[30];
      if ((v28 & 7) != 0)
      {
        atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v29 = v1[29];
      if ((v29 & 7) != 0)
      {
        atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v30 = v1[28];
      if ((v30 & 7) != 0)
      {
        atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v31 = v1[27];
      if ((v31 & 7) != 0)
      {
        atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v32 = v1[26];
      if ((v32 & 7) != 0)
      {
        atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v33 = v1[25];
      if ((v33 & 7) != 0)
      {
        atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v34 = v1[24];
      if ((v34 & 7) != 0)
      {
        atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v35 = v1[23];
      if ((v35 & 7) != 0)
      {
        atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v36 = v1[22];
      if ((v36 & 7) != 0)
      {
        atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v37 = v1[21];
      if ((v37 & 7) != 0)
      {
        atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v38 = v1[20];
      if ((v38 & 7) != 0)
      {
        atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v39 = v1[19];
      if ((v39 & 7) != 0)
      {
        atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v40 = v1[18];
      if ((v40 & 7) != 0)
      {
        atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v41 = v1[17];
      if ((v41 & 7) != 0)
      {
        atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v42 = v1[16];
      if ((v42 & 7) != 0)
      {
        atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v43 = v1[15];
      if ((v43 & 7) != 0)
      {
        atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v44 = v1[14];
      if ((v44 & 7) != 0)
      {
        atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v45 = v1[13];
      if ((v45 & 7) != 0)
      {
        atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v46 = v1[12];
      if ((v46 & 7) != 0)
      {
        atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v47 = v1[11];
      if ((v47 & 7) != 0)
      {
        atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v48 = v1[10];
      if ((v48 & 7) != 0)
      {
        atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v49 = v1[9];
      if ((v49 & 7) != 0)
      {
        atomic_fetch_add_explicit((v49 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v50 = v1[8];
      if ((v50 & 7) != 0)
      {
        atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v51 = v1[7];
      if ((v51 & 7) != 0)
      {
        atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v52 = v1[6];
      if ((v52 & 7) != 0)
      {
        atomic_fetch_add_explicit((v52 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v53 = v1[5];
      if ((v53 & 7) != 0)
      {
        atomic_fetch_add_explicit((v53 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v54 = v1[4];
      if ((v54 & 7) != 0)
      {
        atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v55 = v1[3];
      if ((v55 & 7) != 0)
      {
        atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v56 = v1[2];
      if ((v56 & 7) != 0)
      {
        atomic_fetch_add_explicit((v56 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v57 = v1[1];
      if ((v57 & 7) != 0)
      {
        atomic_fetch_add_explicit((v57 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void realityio::EntityInputNoOutputStaticBuilder::EntityInputNoOutputStaticBuilder(realityio::Builder *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v5 = a5[1];
  v6 = *a5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v8[0] = &unk_285954108;
  v8[3] = v8;
  v7[0] = &unk_285954188;
  v7[3] = v7;
  realityio::DynamicBuilder::DynamicBuilder(a1, a2);
}

void sub_2475FFB08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](va1);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  _Unwind_Resume(a1);
}

void sub_2475FFD50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::EntityInputNoOutputStaticBuilder::EntityInputNoOutputStaticBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&,std::string const&,std::string const&,std::shared_ptr<realityio::DirtyStageSubscription const>)::$_0,std::allocator<realityio::EntityInputNoOutputStaticBuilder::EntityInputNoOutputStaticBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&,std::string const&,std::string const&,std::shared_ptr<realityio::DirtyStageSubscription const>)::$_0>,std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<realityio::EntityInputNoOutputStaticBuilder::EntityInputNoOutputStaticBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&,std::string const&,std::string const&,std::shared_ptr<realityio::DirtyStageSubscription const>)::$_1,std::allocator<realityio::EntityInputNoOutputStaticBuilder::EntityInputNoOutputStaticBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&,std::string const&,std::string const&,std::shared_ptr<realityio::DirtyStageSubscription const>)::$_1>,std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t realityio::TextureBuilder::kOutputName(realityio::TextureBuilder *this)
{
  {
    operator new();
  }

  return realityio::TextureBuilder::kOutputName(void)::kOutputName;
}

void sub_2475FFFCC(_Unwind_Exception *a1)
{
  MEMORY[0x24C1A91B0](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

void realityio::TextureBuilder::TextureBuilder(realityio::TextureBuilder *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v8[4] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v6, "TextureBuilder");
  std::string::basic_string[abi:ne200100]<0>(&__p, realityio::kTextureBuilderIdentifier);
  realityio::generateTextureDirtyStageSubscription(&v4);
  v8[0] = &unk_2859544A0;
  v8[3] = v8;
  v7[0] = &unk_285954520;
  v7[3] = v7;
  realityio::DynamicBuilder::DynamicBuilder(this, a2);
}

void sub_247600170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
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

void maybeSelectCachedImportOperationIfSemanticUnspecified(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4 + 8;
  v7 = *(a4 + 8);
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = a4 + 8;
  do
  {
    v9 = pxrInternal__aapl__pxrReserved__::SdfAssetPath::operator<();
    if (v9)
    {
      v10 = 8;
    }

    else
    {
      v10 = 0;
    }

    if (!v9)
    {
      v8 = v7;
    }

    v7 = *(v7 + v10);
  }

  while (v7);
  if (v8 == v6 || pxrInternal__aapl__pxrReserved__::SdfAssetPath::operator<())
  {
LABEL_11:
    v8 = v6;
  }

  v11 = *(a2 + 72);
  v13 = v11 != 6 && v11 != 0 || v6 == v8;
  if (v13 || *(v8 + 96) != 1)
  {
    goto LABEL_44;
  }

  v14 = *(v8 + 80);
  v15 = *(v14 + 103);
  if (v15 >= 0)
  {
    v16 = *(v14 + 103);
  }

  else
  {
    v16 = *(v14 + 88);
  }

  v17 = *(a2 + 71);
  v18 = v17;
  if ((v17 & 0x80u) != 0)
  {
    v17 = *(a2 + 56);
  }

  if (v16 == v17 && (v15 >= 0 ? (v19 = (v14 + 80)) : (v19 = *(v14 + 80)), v18 >= 0 ? (v20 = (a2 + 48)) : (v20 = *(a2 + 48)), !memcmp(v19, v20, v16) && *(v14 + 121) == *(a2 + 89) && *(v14 + 108) == *(a2 + 76) && *(v14 + 109) == *(a2 + 77) && *(v14 + 110) == *(a2 + 78) && *(v14 + 111) == *(a2 + 79) && *(v14 + 112) == *(a2 + 80) && *(v14 + 116) == *(a2 + 84) && *(v14 + 120) == *(a2 + 88)))
  {

    realityio::TextureImportOperationSettings::TextureImportOperationSettings(a1, (v14 + 32));
  }

  else
  {
LABEL_44:
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a1, *a2, *(a2 + 8));
    }

    else
    {
      *a1 = *a2;
      *(a1 + 16) = *(a2 + 16);
    }

    if (*(a2 + 47) < 0)
    {
      std::string::__init_copy_ctor_external((a1 + 24), *(a2 + 24), *(a2 + 32));
    }

    else
    {
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 40) = *(a2 + 40);
    }

    if (*(a2 + 71) < 0)
    {
      std::string::__init_copy_ctor_external((a1 + 48), *(a2 + 48), *(a2 + 56));
    }

    else
    {
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 64) = *(a2 + 64);
    }

    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    if (*(a2 + 119) < 0)
    {
      std::string::__init_copy_ctor_external((a1 + 96), *(a2 + 96), *(a2 + 104));
    }

    else
    {
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 112) = *(a2 + 112);
    }
  }
}

void sub_247600440(_Unwind_Exception *a1)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  pxrInternal__aapl__pxrReserved__::SdfAssetPath::~SdfAssetPath(v1);
  _Unwind_Resume(a1);
}

uint64_t realityio::TextureBuilder::TextureDataT::operator=(uint64_t a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1 + 4, (a2 + 4));
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4 != v5)
  {
    *(a1 + 8) = v5;
    *(a2 + 8) = v4;
  }

  std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::__move_assign(a1 + 16, (a2 + 16));
  v6 = *(a2 + 40);
  *(a2 + 40) = 0;
  v7 = *(a1 + 40);
  *(a1 + 40) = v6;

  return a1;
}

void anonymous namespace::UsdUVTextureProcess::process(_anonymous_namespace_::UsdUVTextureProcess *this)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = *(this + 18);
  v3 = atomic_load(&realityio::tokens::TextureBuilderTokens);
  if (!v3)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextureBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextureBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v25, v2, (v3 + 40));
  pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(&buf);
  realityio::TextureBuilder::getUniformInputValue<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(&__str, &v25, &buf);
  if (v39 < 0)
  {
    operator delete(v38);
  }

  if (v37 < 0)
  {
    operator delete(buf);
  }

  if ((v28 & 7) != 0)
  {
    atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v27);
  if (v26)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v26);
  }

  pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(&buf);
  v4 = pxrInternal__aapl__pxrReserved__::SdfAssetPath::operator==(&__str, &buf);
  v5 = v4;
  if (v39 < 0)
  {
    operator delete(v38);
  }

  if (v37 < 0)
  {
    operator delete(buf);
  }

  if (v5)
  {
    v6 = *(realityio::logObjects(v4) + 24);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::GetPath(*(this + 18), v31);
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v31);
      LODWORD(buf) = 136315138;
      *(&buf + 4) = Text;
      _os_log_impl(&dword_247485000, v6, OS_LOG_TYPE_DEFAULT, "Shader input file is not set on %s", &buf, 0xCu);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v31);
    }
  }

  else
  {
    std::string::operator=((this + 8), &__str);
    std::string::operator=((this + 32), &v30);
    v8 = *(this + 19);
    v9 = pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&buf, (*(this + 18) + 8), (*(this + 18) + 16));
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(v9, v31);
    realityio::internal::TexturePrimToMaterialPrimMap::materialPathsUsingTexture(&v23, v8, v31);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v31);
    if ((v38 & 7) != 0)
    {
      atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v36);
    if (*(&buf + 1))
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&buf + 1));
    }

    if ((atomic_load_explicit(&_MergedGlobals_29, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_29))
    {
      qword_27EE531B8 = 0;
      unk_27EE531C0 = 0;
      qword_27EE531C8 = 0;
      __cxa_guard_release(&_MergedGlobals_29);
    }

    if (v24 == v23)
    {
      if (buf)
      {
        maybeSelectCachedImportOperationIfSemanticUnspecified(v31, &buf + 8, &__str, *(this + 16));
        if (*(this + 31) < 0)
        {
          operator delete(*(this + 1));
        }

        *(this + 8) = v31[0];
        *(this + 3) = *&v31[1];
        BYTE7(v31[1]) = 0;
        LOBYTE(v31[0]) = 0;
        if (*(this + 55) < 0)
        {
          operator delete(*(this + 4));
        }

        *(this + 2) = *(&v31[1] + 8);
        *(this + 6) = *(&v31[2] + 1);
        HIBYTE(v31[2]) = 0;
        BYTE8(v31[1]) = 0;
        if (*(this + 79) < 0)
        {
          operator delete(*(this + 7));
        }

        *(this + 56) = __p[0];
        *(this + 9) = *&__p[1];
        BYTE7(__p[1]) = 0;
        LOBYTE(__p[0]) = 0;
        *(this + 5) = *(&__p[1] + 8);
        *(this + 48) = WORD4(__p[2]);
        if (*(this + 127) < 0)
        {
          operator delete(*(this + 13));
          v17 = SBYTE7(__p[1]);
          *(this + 104) = v33;
          *(this + 15) = v34;
          HIBYTE(v34) = 0;
          LOBYTE(v33) = 0;
          if (v17 < 0)
          {
            operator delete(*&__p[0]);
          }
        }

        else
        {
          *(this + 104) = v33;
          *(this + 15) = v34;
          HIBYTE(v34) = 0;
          LOBYTE(v33) = 0;
        }

        if (SHIBYTE(v31[2]) < 0)
        {
          operator delete(*(&v31[1] + 1));
        }

        if (SBYTE7(v31[1]) < 0)
        {
          operator delete(*&v31[0]);
        }

        (*(*this + 24))(this);
      }

      realityio::Result<realityio::TextureImportOperationSettings,realityio::DetailedError>::~Result(&buf);
    }

    else
    {
      (**this)(this);
      v10 = v23;
      for (i = v24; v10 != i; v10 = (v10 + 8))
      {
        pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v19, *(this + 17), v10);
        v12 = *(this + 19);
        v13 = pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&buf, (*(this + 18) + 8), (*(this + 18) + 16));
        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(v13, v31);
        v14 = realityio::internal::TexturePrimToMaterialPrimMap::connectionsBetweenTextureAndMaterial(v12, v31, v10);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v31);
        if ((v38 & 7) != 0)
        {
          atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v36);
        if (*(&buf + 1))
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&buf + 1));
        }

        if (v14)
        {
          v15 = v14;
        }

        else
        {
          v15 = &qword_27EE531B8;
        }

        *(this + 20) = v15;
        if (buf == 1)
        {
          maybeSelectCachedImportOperationIfSemanticUnspecified(v31, &buf + 8, &__str, *(this + 16));
        }

        else
        {
          v34 = 0;
          v33 = 0u;
          memset(__p, 0, sizeof(__p));
          memset(v31, 0, sizeof(v31));
          pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(v31);
          std::string::basic_string[abi:ne200100]<0>(__p, "");
          DWORD2(__p[1]) = 0;
          HIDWORD(__p[1]) = realityio::TextureSwizzleChannels::kDefault;
          LOBYTE(__p[2]) = 2;
          DWORD1(__p[2]) = 0;
          WORD4(__p[2]) = 512;
          std::string::basic_string[abi:ne200100]<0>(&v33, "");
        }

        if (*(this + 31) < 0)
        {
          operator delete(*(this + 1));
        }

        *(this + 8) = v31[0];
        *(this + 3) = *&v31[1];
        BYTE7(v31[1]) = 0;
        LOBYTE(v31[0]) = 0;
        if (*(this + 55) < 0)
        {
          operator delete(*(this + 4));
        }

        *(this + 2) = *(&v31[1] + 8);
        *(this + 6) = *(&v31[2] + 1);
        HIBYTE(v31[2]) = 0;
        BYTE8(v31[1]) = 0;
        if (*(this + 79) < 0)
        {
          operator delete(*(this + 7));
        }

        *(this + 56) = __p[0];
        *(this + 9) = *&__p[1];
        BYTE7(__p[1]) = 0;
        LOBYTE(__p[0]) = 0;
        *(this + 5) = *(&__p[1] + 8);
        *(this + 48) = WORD4(__p[2]);
        if (*(this + 127) < 0)
        {
          operator delete(*(this + 13));
          v16 = SBYTE7(__p[1]);
          *(this + 104) = v33;
          *(this + 15) = v34;
          HIBYTE(v34) = 0;
          LOBYTE(v33) = 0;
          if (v16 < 0)
          {
            operator delete(*&__p[0]);
          }
        }

        else
        {
          *(this + 104) = v33;
          *(this + 15) = v34;
          HIBYTE(v34) = 0;
          LOBYTE(v33) = 0;
        }

        if (SHIBYTE(v31[2]) < 0)
        {
          operator delete(*(&v31[1] + 1));
        }

        if (SBYTE7(v31[1]) < 0)
        {
          operator delete(*&v31[0]);
        }

        (*(*this + 8))(this);
        realityio::Result<realityio::TextureImportOperationSettings,realityio::DetailedError>::~Result(&buf);
        if ((v22 & 7) != 0)
        {
          atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v21);
        if (v20)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v20);
        }
      }

      (*(*this + 16))(this);
    }

    *&buf = &v23;
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&buf);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_247600C40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  realityio::Result<realityio::TextureImportOperationSettings,realityio::DetailedError>::~Result(v38 - 240);
  *(v38 - 240) = &a14;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100]((v38 - 240));
  pxrInternal__aapl__pxrReserved__::SdfAssetPath::~SdfAssetPath(&a21);
  _Unwind_Resume(a1);
}

void anonymous namespace::UsdUVTextureOutput::~UsdUVTextureOutput(_anonymous_namespace_::UsdUVTextureOutput *this)
{
  *this = &unk_2859542E8;
  std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::destroy(this + 184, *(this + 24));
  if (*(this + 127) < 0)
  {
    operator delete(*(this + 13));
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

uint64_t realityio::TextureBuilder::setOutput(uint64_t result, _anonymous_namespace_ *a2, void *a3)
{
  if (a3[2])
  {
    v5 = result;
    v6 = (a3 + 1);
    v7 = *a3;
    if (*a3 != a3 + 1)
    {
      do
      {
        std::pair<std::string const,realityio::WrappedRERef<REAsset *>>::pair[abi:ne200100](&__p, v7 + 2);
        v18 = v17[0];
        if (v17[0])
        {
          RERetain();
        }

        realityio::Builder::addAsset(v5, &v18, 0);
        realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v18);
        realityio::WrappedRERef<REAsset *>::~WrappedRERef(v17);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v8 = *(v7 + 1);
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
            v9 = *(v7 + 2);
            v10 = *v9 == v7;
            v7 = v9;
          }

          while (!v10);
        }

        v7 = v9;
      }

      while (v9 != v6);
    }
    v11 = ;
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::GetPath(a2, &v15);
    realityio::TextureBuilder::TextureDataT::TextureDataT(&__p, &v15, a3, v11);
    realityio::TextureBuilder::TextureDataT::operator=(v5 + 280, &__p);
    realityio::TextureBuilder::TextureDataT::~TextureDataT(&__p.__r_.__value_.__l.__data_);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    v12 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v15);
    v14 = *(v5 + 16);
    v13 = *(v5 + 24);
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    realityio::TextureBuilder::kOutputName(v12);
    __p.__r_.__value_.__r.__words[0] = v5 + 280;
    realityio::Outputs::storeValue<realityio::TextureBuilder::TextureDataT *>(v14);
  }

  return result;
}

void sub_247600F94(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

id anonymous namespace::samplerForTextureAttribute(_anonymous_namespace_ *this, const pxrInternal__aapl__pxrReserved__::UsdShadeShader *a2)
{
  v3 = REMaterialCreateDefaultSamplerDescriptor();
  v4 = atomic_load(&realityio::tokens::TextureBuilderTokens);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextureBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextureBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  v5 = v28;
  if ((*(v4 + 8) ^ v28) < 8)
  {
    v7 = atomic_load(&realityio::tokens::TextureBuilderTokens);
    if (!v7)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextureBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextureBuilderTokens_StaticTokenType>>::_TryToCreateData();
    }

    pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v18, this, (v7 + 48));
    v23 = v18;
    v24 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit((v19 + 48), 1uLL, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v25, &v20);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v26, &v21);
    v27 = v22;
    if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v27 &= 0xFFFFFFFFFFFFFFF8;
    }

    if ((v22 & 7) != 0)
    {
      atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v20);
    if (v19)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v19);
    }

    v8 = atomic_load(&realityio::tokens::TextureBuilderTokens);
    if (!v8)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextureBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextureBuilderTokens_StaticTokenType>>::_TryToCreateData();
    }

    pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v13, this, (v8 + 56));
    LODWORD(v18) = v13;
    v19 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 48), 1uLL, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v20, &v15);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v21, &v16);
    v22 = v17;
    if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v22 &= 0xFFFFFFFFFFFFFFF8;
    }

    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v15);
    if (v14)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v14);
    }

    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v23))
    {
    }

    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v18))
    {
    }

    v11 = v3;
    if ((v22 & 7) != 0)
    {
      atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v20);
    if (v19)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v19);
    }

    if ((v27 & 7) != 0)
    {
      atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v25);
    if (v24)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v24);
    }

    v5 = v28;
  }

  else
  {
    v6 = v3;
  }

  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return v3;
}

void sub_2476012F8(_Unwind_Exception *a1)
{
  v4 = *(v2 - 56);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::getShaderID(_anonymous_namespace_ *this, const pxrInternal__aapl__pxrReserved__::UsdShadeShader *a2)
{
  *this = 0;
  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetIdAttr(&v3, a2);
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v3))
  {
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::TfToken>();
  }

  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v5);
  result = v4;
  if (v4)
  {
    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4);
  }

  return result;
}

void sub_24760150C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&a9);
  if ((*v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

_DWORD *realityio::TextureBuilder::findSourceInput@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1) || (pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput() & 1) == 0 || !MEMORY[0x24C1A7400](a1))
  {
    goto LABEL_123;
  }

  LODWORD(v46) = 1;
  v47 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  v50 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v38[3] = 0;
  v38[0] = MEMORY[0x277D867A8] + 16;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v48);
  v37 = 0;
  v36 = 0;
  while (1)
  {
    ConnectedSource = pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::GetConnectedSource();
    v5 = ConnectedSource;
    if (!ConnectedSource)
    {
      break;
    }

    switch(v36)
    {
      case 1:
        pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::GetInput(&v46, v38, &v37);
        *a1 = v46;
        v6 = *(a1 + 8);
        if (v6)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v6);
        }

        *(a1 + 8) = v47;
        v47 = 0;
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1 + 16, &v48);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1 + 20, &v49);
        if (&v46 == a1)
        {
          if ((v50 & 7) != 0)
          {
            atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        else
        {
          v7 = *(a1 + 24);
          if ((v7 & 7) != 0)
          {
            atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *(a1 + 24) = v50;
          v50 = 0;
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v48);
        if (v47)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v47);
        }

        if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1) & 1) == 0)
        {
          *a2 = *a1;
          *(a2 + 8) = *(a1 + 8);
          *(a1 + 8) = 0;
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a2 + 16), (a1 + 16));
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a2 + 20), (a1 + 20));
          *(a2 + 24) = *(a1 + 24);
          *(a1 + 24) = 0;
          goto LABEL_119;
        }

        break;
      case 2:
        pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::GetOutput(&v31, v38, &v37);
        v21 = v31;
        v22 = v32;
        if (v32)
        {
          atomic_fetch_add_explicit((v32 + 48), 1uLL, memory_order_relaxed);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v23, &v33);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v24, &v34);
        v25 = v35;
        if ((v35 & 7) != 0 && (atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v25 &= 0xFFFFFFFFFFFFFFF8;
        }

        v26 = 3;
        v27 = 0;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
        v30 = 0;
        if ((pxrInternal__aapl__pxrReserved__::UsdShadeOutput::IsOutput() & 1) == 0)
        {
          goto LABEL_95;
        }

        if (MEMORY[0x24C1A75A0](&v21))
        {
          LODWORD(v41) = 1;
          v42 = 0;
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
          v45 = 0;
          pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
          v50 = 0;
          v46 = MEMORY[0x277D867A8] + 16;
          if ((v45 & 7) != 0)
          {
            atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v43);
          if (v42)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v42);
          }

          v40 = 0;
          v39 = 0;
          while (pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::GetConnectedSource())
          {
            switch(v39)
            {
              case 2:
                pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::GetOutput(&v41, &v46, &v40);
                v21 = v41;
                if (v22)
                {
                  pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v22);
                }

                v22 = v42;
                v42 = 0;
                pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v23, &v43);
                pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v24, &v44);
                if ((v25 & 7) != 0)
                {
                  atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

                v25 = v45;
                v45 = 0;
                pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v43);
                if (v42)
                {
                  pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v42);
                }

                break;
              case 0:
                goto LABEL_92;
              case 1:
                pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::GetInput(&v41, &v46, &v40);
                v26 = v41;
                if (v27)
                {
                  pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v27);
                }

                v27 = v42;
                v42 = 0;
                pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v28, &v43);
                pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v29, &v44);
                if ((v30 & 7) != 0)
                {
                  atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

                v30 = v45;
                v45 = 0;
                pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v43);
                if (v42)
                {
                  pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v42);
                }

LABEL_92:
                if ((v40 & 7) != 0)
                {
                  atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

                MEMORY[0x24C1A5890](&v46);
                goto LABEL_95;
            }
          }

          if ((v40 & 7) != 0)
          {
            atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          MEMORY[0x24C1A5890](&v46);
        }

        pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v46, &v22, &v23);
        pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
        v41 = MEMORY[0x277D86708] + 16;
        if ((v50 & 7) != 0)
        {
          atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v48);
        if (v47)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v47);
        }

        if ((v40 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          EmptyString = (v40 & 0xFFFFFFFFFFFFFFF8) + 16;
        }

        else
        {
          EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(ShaderID);
        }

        v10 = *(EmptyString + 23);
        v11 = v10;
        if ((v10 & 0x80u) != 0)
        {
          v10 = *(EmptyString + 8);
        }

        if (v10 < 0xB)
        {
          goto LABEL_61;
        }

        if (v11 < 0)
        {
          EmptyString = *EmptyString;
        }

        EmptyString = strncmp(EmptyString, "ND_constant", 0xBuLL);
        if (EmptyString)
        {
LABEL_61:
          if ((v40 & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v12 = (v40 & 0xFFFFFFFFFFFFFFF8) + 16;
          }

          else
          {
            v12 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
          }

          v13 = *(v12 + 23);
          v14 = v13;
          if ((v13 & 0x80u) != 0)
          {
            v13 = *(v12 + 8);
          }

          if (v13 < 6)
          {
            goto LABEL_83;
          }

          if (v14 < 0)
          {
            v12 = *v12;
          }

          if (strncmp(v12, "ND_dot", 6uLL))
          {
            goto LABEL_83;
          }

          v15 = atomic_load(&realityio::tokens::TextureBuilderTokens);
          if (!v15)
          {
            pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextureBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextureBuilderTokens_StaticTokenType>>::_TryToCreateData();
          }

          pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v46, &v41, (v15 + 168));
          v26 = v46;
          if (v27)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v27);
          }

          v27 = v47;
          v47 = 0;
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v28, &v48);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v29, &v49);
          if ((v30 & 7) != 0)
          {
            atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        else
        {
          v16 = atomic_load(&realityio::tokens::TextureBuilderTokens);
          if (!v16)
          {
            pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextureBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextureBuilderTokens_StaticTokenType>>::_TryToCreateData();
          }

          pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v46, &v41, (v16 + 160));
          v26 = v46;
          if (v27)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v27);
          }

          v27 = v47;
          v47 = 0;
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v28, &v48);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v29, &v49);
          if ((v30 & 7) != 0)
          {
            atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        v30 = v50;
        v50 = 0;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v48);
        if (v47)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v47);
        }

LABEL_83:
        if ((v40 & 7) != 0)
        {
          atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        MEMORY[0x24C1A5280](&v41);
LABEL_95:
        *a1 = v26;
        v17 = *(a1 + 8);
        if (v17)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v17);
        }

        *(a1 + 8) = v27;
        v27 = 0;
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1 + 16, &v28);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1 + 20, &v29);
        if (&v26 == a1)
        {
          if ((v30 & 7) != 0)
          {
            atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        else
        {
          v18 = *(a1 + 24);
          if ((v18 & 7) != 0)
          {
            atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *(a1 + 24) = v30;
          v30 = 0;
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v28);
        if (v27)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v27);
        }

        if ((v25 & 7) != 0)
        {
          atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v23);
        if (v22)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v22);
        }

        IsValid = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1);
        if ((IsValid & 1) == 0)
        {
          *a2 = *a1;
          *(a2 + 8) = *(a1 + 8);
          *(a1 + 8) = 0;
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a2 + 16), (a1 + 16));
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a2 + 20), (a1 + 20));
          *(a2 + 24) = *(a1 + 24);
          *(a1 + 24) = 0;
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

        if ((IsValid & 1) == 0)
        {
          goto LABEL_120;
        }

        break;
      case 0:
        *a2 = 3;
        *(a2 + 8) = 0;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
        *(a2 + 24) = 0;
LABEL_119:
        v5 = 1;
        goto LABEL_120;
    }
  }

LABEL_120:
  if ((v37 & 7) != 0)
  {
    atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  result = MEMORY[0x24C1A5890](v38);
  if ((v5 & 1) == 0)
  {
LABEL_123:
    *a2 = *a1;
    *(a2 + 8) = *(a1 + 8);
    *(a1 + 8) = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a2 + 16), (a1 + 16));
    result = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a2 + 20), (a1 + 20));
    *(a2 + 24) = *(a1 + 24);
    *(a1 + 24) = 0;
  }

  return result;
}

void sub_247601E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  if ((a29 & 7) != 0)
  {
    atomic_fetch_add_explicit((a29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x24C1A5280](v29 - 152);
  pxrInternal__aapl__pxrReserved__::UsdShadeInput::~UsdShadeInput(&a14);
  pxrInternal__aapl__pxrReserved__::UsdShadeOutput::~UsdShadeOutput(&a10);
  pxrInternal__aapl__pxrReserved__::UsdShadeOutput::~UsdShadeOutput(&a18);
  if ((a23 & 7) != 0)
  {
    atomic_fetch_add_explicit((a23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x24C1A5890](&a24);
  _Unwind_Resume(a1);
}

void MtlxImageShaderProcess::process(MtlxImageShaderProcess *this)
{
  v54 = *MEMORY[0x277D85DE8];
  Inputs = pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInputs(*(this + 17));
  if (v46 != v47)
  {
    v4 = v46;
    v5 = v47;
    while (1)
    {
      *buf = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(v4);
      if (!atomic_load(&realityio::tokens::TextureBuilderTokens))
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextureBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextureBuilderTokens_StaticTokenType>>::_TryToCreateData();
      }

      if ((pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==() & 1) == 0)
      {
        goto LABEL_69;
      }

      IsValid = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v4);
      if (!IsValid || (IsValid = pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput(), (IsValid & 1) == 0))
      {
        v13 = *(realityio::logObjects(IsValid) + 24);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          pxrInternal__aapl__pxrReserved__::UsdSchemaBase::GetPath(*(this + 17), &__dst);
          Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&__dst);
          *buf = 136315138;
          *&buf[4] = Text;
          _os_log_impl(&dword_247485000, v13, OS_LOG_TYPE_DEFAULT, "Shader input file is not set on %s", buf, 0xCu);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&__dst);
        }

        goto LABEL_69;
      }

      memset(v45, 0, sizeof(v45));
      if (buf[0] == 1)
      {
        if (HIBYTE(v52))
        {
          v9 = 8;
          if (HIBYTE(v52) != 1)
          {
            v9 = 6;
          }

          v10 = "GPULossy";
          if (HIBYTE(v52) != 1)
          {
            v10 = "NotSet";
          }

          if (HIBYTE(v52) == 2)
          {
            v11 = 6;
          }

          else
          {
            v11 = v9;
          }

          if (HIBYTE(v52) == 2)
          {
            v12 = "NotSet";
          }

          else
          {
            v12 = v10;
          }
        }

        else
        {
          v11 = 4;
          v12 = "None";
        }

        HIBYTE(v28) = v11;
        memcpy(&__dst, v12, v11);
        *(&__dst + v11) = 0;
        std::string::operator=((this + 8), &buf[8]);
        std::string::operator=((this + 32), &v49);
        std::string::operator=((this + 56), &v50);
        *(this + 5) = v51;
        *(this + 48) = v52;
        std::string::operator=((this + 104), &v53);
        if (SHIBYTE(v28) < 0)
        {
          operator delete(__dst);
        }
      }

      v38 = *v4;
      v15 = *(v4 + 8);
      v39 = v15;
      if (v15)
      {
        atomic_fetch_add_explicit((v15 + 48), 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v40, (v4 + 16));
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v41, (v4 + 20));
      v16 = *(v4 + 24);
      v42 = v16;
      if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v42 &= 0xFFFFFFFFFFFFFFF8;
      }

      pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(&__dst);
      realityio::TextureBuilder::getUniformInputValue<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(&__str, &v38, &__dst);
      if (SHIBYTE(v30) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v28) < 0)
      {
        operator delete(__dst);
      }

      if ((v42 & 7) != 0)
      {
        atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v40);
      if (v39)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v39);
      }

      std::string::operator=((this + 8), &__str);
      std::string::operator=((this + 32), &v44);
      ColorSpace = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetColorSpace(&__dst, v4);
      if ((__dst & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = ((__dst & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(ColorSpace);
      }

      std::string::operator=((this + 56), EmptyString);
      if ((__dst & 7) != 0)
      {
        atomic_fetch_add_explicit((__dst & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *(this + 20) = TextureSemanticFromInfoID;
      pxrInternal__aapl__pxrReserved__::UsdObject::GetCustomData(&v37, v4);
      std::string::basic_string[abi:ne200100]<0>(&__dst, "downsampleFactor");
      ValueAtPath = pxrInternal__aapl__pxrReserved__::VtDictionary::GetValueAtPath();
      v20 = ValueAtPath;
      if ((SHIBYTE(v28) & 0x80000000) == 0)
      {
        break;
      }

      operator delete(__dst);
      if (v20)
      {
        goto LABEL_47;
      }

LABEL_48:
      maybeSelectCachedImportOperationIfSemanticUnspecified(&__dst, this + 8, &__str, *(this + 16));
      if (*(this + 31) < 0)
      {
        operator delete(*(this + 1));
      }

      *(this + 8) = __dst;
      *(this + 3) = v28;
      HIBYTE(v28) = 0;
      LOBYTE(__dst) = 0;
      if (*(this + 55) < 0)
      {
        operator delete(*(this + 4));
      }

      *(this + 2) = __p;
      *(this + 6) = v30;
      HIBYTE(v30) = 0;
      LOBYTE(__p) = 0;
      if (*(this + 79) < 0)
      {
        operator delete(*(this + 7));
      }

      *(this + 56) = v31;
      *(this + 9) = v32;
      HIBYTE(v32) = 0;
      LOBYTE(v31) = 0;
      *(this + 5) = v33;
      *(this + 48) = v34;
      if (*(this + 127) < 0)
      {
        operator delete(*(this + 13));
        v21 = SHIBYTE(v32);
        *(this + 104) = v35;
        *(this + 15) = v36;
        HIBYTE(v36) = 0;
        LOBYTE(v35) = 0;
        if (v21 < 0)
        {
          operator delete(v31);
        }
      }

      else
      {
        *(this + 104) = v35;
        *(this + 15) = v36;
        HIBYTE(v36) = 0;
        LOBYTE(v35) = 0;
      }

      if (SHIBYTE(v30) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v28) < 0)
      {
        operator delete(__dst);
      }

      (**this)(this, v4);
      v22 = v37;
      v37 = 0;
      if (v22)
      {
        std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<void>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(v22, *(v22 + 8));
        MEMORY[0x24C1A91B0](v22, 0x1020C4062D53EE8);
      }

      if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v44.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v23 = realityio::Result<realityio::TextureImportOperationSettings,realityio::DetailedError>::~Result(buf);
      *buf = v45;
      std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](v23);
LABEL_69:
      v4 += 32;
      if (v4 == v5)
      {
        goto LABEL_75;
      }
    }

    if (!ValueAtPath)
    {
      goto LABEL_48;
    }

LABEL_47:
    *(this + 23) = *pxrInternal__aapl__pxrReserved__::VtValue::Get<int>(v20);
    goto LABEL_48;
  }

  v24 = *(realityio::logObjects(Inputs) + 24);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::GetPath(*(this + 17), &__dst);
    v25 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&__dst);
    *buf = 136315138;
    *&buf[4] = v25;
    _os_log_impl(&dword_247485000, v24, OS_LOG_TYPE_DEFAULT, "Shader input file is not set on %s", buf, 0xCu);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&__dst);
  }

LABEL_75:
  *buf = &v46;
  std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeInput>::__destroy_vector::operator()[abi:ne200100](buf);
  v26 = *MEMORY[0x277D85DE8];
}

void sub_2476025D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, char a46)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::getTextureSemanticFromInfoID(_anonymous_namespace_ *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  if ((*this & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = (*this & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(this);
  }

  v4 = atomic_load(&realityio::tokens::TextureBuilderTokens);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextureBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextureBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  if ((*(v4 + 22) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v5 = (*(v4 + 22) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    v5 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v4);
  }

  if (*(v5 + 23) >= 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = *v5;
  }

  v7 = *(EmptyString + 23);
  if (v7 >= 0)
  {
    v8 = *(EmptyString + 23);
  }

  else
  {
    v8 = *(EmptyString + 8);
  }

  v9 = strlen(v6);
  if (v8 >= v9)
  {
    v10 = *EmptyString;
    if (v7 >= 0)
    {
      v10 = EmptyString;
    }

    v9 = strcmp((v10 + v8 - v9), v6);
    if (!v9)
    {
      return 3;
    }
  }

  if ((*this & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v11 = (*this & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    v11 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v9);
  }

  v12 = atomic_load(&realityio::tokens::TextureBuilderTokens);
  if (!v12)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextureBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextureBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  v13 = (*(v12 + 23) & 0xFFFFFFFFFFFFFFF8) != 0 ? (*(v12 + 23) & 0xFFFFFFFFFFFFFFF8) + 16 : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
  v14 = *(v13 + 23) >= 0 ? v13 : *v13;
  v15 = *(v11 + 23);
  v16 = v15 >= 0 ? *(v11 + 23) : *(v11 + 8);
  v17 = strlen(v14);
  if (v16 >= v17)
  {
    v18 = *v11;
    if (v15 >= 0)
    {
      v18 = v11;
    }

    v17 = strcmp((v18 + v16 - v17), v14);
    if (!v17)
    {
      return 3;
    }
  }

  if ((*this & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v19 = (*this & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    v19 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v17);
  }

  v21 = atomic_load(&realityio::tokens::TextureBuilderTokens);
  if (!v21)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextureBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextureBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  if ((*(v21 + 24) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v22 = (*(v21 + 24) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    v22 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v21);
  }

  if (*(v22 + 23) >= 0)
  {
    v23 = v22;
  }

  else
  {
    v23 = *v22;
  }

  v24 = *(v19 + 23);
  if (v24 >= 0)
  {
    v25 = *(v19 + 23);
  }

  else
  {
    v25 = *(v19 + 8);
  }

  v26 = strlen(v23);
  if (v25 >= v26)
  {
    v27 = *v19;
    if (v24 >= 0)
    {
      v27 = v19;
    }

    v26 = strcmp((v27 + v25 - v26), v23);
    if (!v26)
    {
      return 2;
    }
  }

  if ((*this & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v28 = (*this & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    v28 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v26);
  }

  v29 = atomic_load(&realityio::tokens::TextureBuilderTokens);
  if (!v29)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextureBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextureBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  if ((*(v29 + 25) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v30 = (*(v29 + 25) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    v30 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v29);
  }

  if (*(v30 + 23) >= 0)
  {
    v31 = v30;
  }

  else
  {
    v31 = *v30;
  }

  v32 = *(v28 + 23);
  if (v32 >= 0)
  {
    v33 = *(v28 + 23);
  }

  else
  {
    v33 = *(v28 + 8);
  }

  v34 = strlen(v31);
  if (v33 >= v34)
  {
    v35 = *v28;
    if (v32 >= 0)
    {
      v35 = v28;
    }

    v34 = strcmp((v35 + v33 - v34), v31);
    if (!v34)
    {
      return 1;
    }
  }

  if ((*this & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v36 = (*this & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    v36 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v34);
  }

  v37 = atomic_load(&realityio::tokens::TextureBuilderTokens);
  if (!v37)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextureBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextureBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  v38 = (*(v37 + 26) & 0xFFFFFFFFFFFFFFF8) != 0 ? (*(v37 + 26) & 0xFFFFFFFFFFFFFFF8) + 16 : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v37);
  v39 = *(v38 + 23) >= 0 ? v38 : *v38;
  v40 = *(v36 + 23);
  v41 = v40 >= 0 ? *(v36 + 23) : *(v36 + 8);
  v42 = strlen(v39);
  if (v41 >= v42)
  {
    v43 = *v36;
    if (v40 >= 0)
    {
      v43 = v36;
    }

    v42 = strcmp((v43 + v41 - v42), v39);
    if (!v42)
    {
      return 1;
    }
  }

  if ((*this & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v44 = (*this & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    v44 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v42);
  }

  v45 = atomic_load(&realityio::tokens::TextureBuilderTokens);
  if (!v45)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextureBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextureBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  if ((*(v45 + 27) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v46 = (*(v45 + 27) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    v46 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v45);
  }

  if (*(v46 + 23) >= 0)
  {
    v47 = v46;
  }

  else
  {
    v47 = *v46;
  }

  v48 = *(v44 + 23);
  if (v48 >= 0)
  {
    v49 = *(v44 + 23);
  }

  else
  {
    v49 = *(v44 + 8);
  }

  v50 = strlen(v47);
  if (v49 < v50)
  {
    return 0;
  }

  v51 = *v44;
  if (v48 >= 0)
  {
    v51 = v44;
  }

  return strcmp((v51 + v49 - v50), v47) == 0;
}

void anonymous namespace::makeImportSettingsForUsdPreviewSurface(uint64_t a1, const std::string *a2, pxrInternal__aapl__pxrReserved__::UsdShadeShader *a3, unsigned __int8 **a4)
{
  v63 = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(&v49);
  std::string::basic_string[abi:ne200100]<0>(&v51, "");
  LODWORD(v52) = 0;
  DWORD1(v52) = realityio::TextureSwizzleChannels::kDefault;
  BYTE8(v52) = 2;
  HIDWORD(v52) = 0;
  v53 = 512;
  std::string::basic_string[abi:ne200100]<0>(&v54, "");
  v8 = atomic_load(&realityio::tokens::TextureBuilderTokens);
  if (!v8)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextureBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextureBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v45, a3, (v8 + 40));
  v9 = atomic_load(&realityio::tokens::TextureBuilderTokens);
  if (!v9)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextureBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextureBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v41, a3, (v9 + 24));
  pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(v29);
  if (v32 < 0)
  {
    operator delete(__p);
  }

  if (v30 < 0)
  {
    operator delete(v29[0]);
  }

  if (v33[0])
  {
    std::string::operator=(&v49, &v34);
    std::string::operator=(&v50, (&v35 + 8));
    std::string::operator=(&v51, &v37);
    v52 = v38;
    v53 = v39;
    std::string::operator=(&v54, &v40);
    v10 = atomic_load(&realityio::tokens::TextureBuilderTokens);
    if (!v10)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextureBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextureBuilderTokens_StaticTokenType>>::_TryToCreateData();
    }

    pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v25, a3, (v10 + 40));
    pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(v57);
    realityio::TextureBuilder::getUniformInputValue<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(&v61, &v25, v57);
    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }

    v49 = v61;
    *(&v61.__r_.__value_.__s + 23) = 0;
    v61.__r_.__value_.__s.__data_[0] = 0;
    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
      v50 = v62;
      *(&v62.__r_.__value_.__s + 23) = 0;
      v62.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v61.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v50 = v62;
      *(&v62.__r_.__value_.__s + 23) = 0;
      v62.__r_.__value_.__s.__data_[0] = 0;
    }

    if (v60 < 0)
    {
      operator delete(v59);
    }

    if (v58 < 0)
    {
      operator delete(*v57);
    }

    if ((v28 & 7) != 0)
    {
      atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v27);
    if (v26)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v26);
    }

    v61.__r_.__value_.__r.__words[0] = v49.__r_.__value_.__l.__size_;
    v11 = v49.__r_.__value_.__r.__words[0];
    *(v61.__r_.__value_.__r.__words + 7) = *(&v49.__r_.__value_.__r.__words[1] + 7);
    v12 = HIBYTE(v49.__r_.__value_.__r.__words[2]);
    memset(&v49, 0, sizeof(v49));
    *v57 = v50.__r_.__value_.__l.__size_;
    v13 = v50.__r_.__value_.__r.__words[0];
    *&v57[7] = *(&v50.__r_.__value_.__r.__words[1] + 7);
    v14 = HIBYTE(v50.__r_.__value_.__r.__words[2]);
    memset(&v50, 0, sizeof(v50));
    v15 = v51.__r_.__value_.__r.__words[0];
    *(v56 + 7) = *(&v51.__r_.__value_.__r.__words[1] + 7);
    v56[0] = v51.__r_.__value_.__l.__size_;
    v16 = HIBYTE(v51.__r_.__value_.__r.__words[2]);
    memset(&v51, 0, sizeof(v51));
    v17 = v52;
    *(a1 + 96) = v53;
    *(a1 + 80) = v17;
    v18 = v54.__r_.__value_.__r.__words[0];
    *(v55 + 7) = *(&v54.__r_.__value_.__r.__words[1] + 7);
    v55[0] = v54.__r_.__value_.__l.__size_;
    v19 = HIBYTE(v54.__r_.__value_.__r.__words[2]);
    memset(&v54, 0, sizeof(v54));
    *a1 = 1;
    v20 = v61.__r_.__value_.__r.__words[0];
    *(a1 + 23) = *(v61.__r_.__value_.__r.__words + 7);
    *(a1 + 8) = v11;
    *(a1 + 16) = v20;
    *(a1 + 31) = v12;
    v21 = *v57;
    *(a1 + 47) = *&v57[7];
    *(a1 + 32) = v13;
    *(a1 + 40) = v21;
    *(a1 + 55) = v14;
    v22 = v56[0];
    *(a1 + 71) = *(v56 + 7);
    *(a1 + 56) = v15;
    *(a1 + 64) = v22;
    *(a1 + 79) = v16;
    v23 = v55[0];
    *(a1 + 119) = *(v55 + 7);
    *(a1 + 104) = v18;
    *(a1 + 112) = v23;
    *(a1 + 127) = v19;
  }

  else
  {
    *a1 = v33[0];
    *(a1 + 8) = v34;
    *(a1 + 24) = v35;
    *(a1 + 40) = v36;
    v35 = 0uLL;
    v36 = 0;
  }

  realityio::Result<realityio::TextureImportOperationSettings,realityio::DetailedError>::~Result(v33);
  if ((v44 & 7) != 0)
  {
    atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v43);
  if (v42)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v42);
  }

  if ((v48 & 7) != 0)
  {
    atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v47);
  if (v46)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v46);
  }

  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void sub_247602FB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t realityio::TextureBuilder::getUniformInputValue<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(std::string *a1, int *a2, uint64_t a3)
{
  v17 = *a2;
  v6 = *(a2 + 1);
  v18 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 48), 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v19, a2 + 4);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v20, a2 + 5);
  v7 = *(a2 + 3);
  v21 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v21 &= 0xFFFFFFFFFFFFFFF8;
  }

  realityio::TextureBuilder::findSourceInput(&v17, &v12);
  *a2 = v12;
  v8 = *(a2 + 1);
  if (v8)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v8);
  }

  *(a2 + 1) = v13;
  *&v13 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=((a2 + 4), &v13 + 2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=((a2 + 5), &v13 + 3);
  if (&v12 == a2)
  {
    if ((v14 & 7) != 0)
    {
      atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    v9 = *(a2 + 3);
    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *(a2 + 3) = v14;
    v14 = 0;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v13 + 8);
  if (v13)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v13);
  }

  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v19);
  if (v18)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v18);
  }

  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(a2, &v12);
  if (v12)
  {
    if (SHIBYTE(v14) < 0)
    {
      std::string::__init_copy_ctor_external(a1, v13, *(&v13 + 1));
    }

    else
    {
      *&a1->__r_.__value_.__l.__data_ = v13;
      a1->__r_.__value_.__r.__words[2] = v14;
    }

    if (SHIBYTE(v16) < 0)
    {
      std::string::__init_copy_ctor_external(a1 + 1, v15, *(&v15 + 1));
      return realityio::Result<pxrInternal__aapl__pxrReserved__::SdfAssetPath,realityio::DetailedError>::~Result(&v12);
    }

    *&a1[1].__r_.__value_.__l.__data_ = v15;
    v10 = v16;
  }

  else
  {
    if (*(a3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a1, *a3, *(a3 + 8));
    }

    else
    {
      *&a1->__r_.__value_.__l.__data_ = *a3;
      a1->__r_.__value_.__r.__words[2] = *(a3 + 16);
    }

    if (*(a3 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(a1 + 1, *(a3 + 24), *(a3 + 32));
      return realityio::Result<pxrInternal__aapl__pxrReserved__::SdfAssetPath,realityio::DetailedError>::~Result(&v12);
    }

    *&a1[1].__r_.__value_.__l.__data_ = *(a3 + 24);
    v10 = *(a3 + 40);
  }

  a1[1].__r_.__value_.__r.__words[2] = v10;
  return realityio::Result<pxrInternal__aapl__pxrReserved__::SdfAssetPath,realityio::DetailedError>::~Result(&v12);
}

void sub_2476032BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::SdfAssetPath,realityio::DetailedError>::~Result(va);
  _Unwind_Resume(a1);
}

uint64_t MtlxImageShaderOutput::instance(MtlxImageShaderOutput *this, const pxrInternal__aapl__pxrReserved__::UsdShadeInput *a2)
{
  v4 = *(this + 19);
  __p.__r_.__value_.__r.__words[0] = &unk_285954358;
  __p.__r_.__value_.__l.__size_ = v4;
  if (v11[0].__r_.__value_.__s.__data_[0] == 1)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a2, &__p);
    String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(&__p);
    if (*(String + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v10, *String, *(String + 8));
    }

    else
    {
      v6 = *String;
      v10.__r_.__value_.__r.__words[2] = *(String + 16);
      *&v10.__r_.__value_.__l.__data_ = v6;
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&__p);
    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v10.__r_.__value_.__l.__data_, v10.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v10;
    }

    size = v11[0].__r_.__value_.__l.__size_;
    if (v11[0].__r_.__value_.__l.__size_)
    {
      RERetain();
    }

    std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,realityio::WrappedRERef<REAsset *>>>(this + 160, &__p.__r_.__value_.__l.__data_);
    realityio::WrappedRERef<REAsset *>::~WrappedRERef(&size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v10.__r_.__value_.__l.__data_);
    }
  }

  return realityio::Result<realityio::WrappedRERef<REAsset *>,realityio::DetailedError>::~Result(v11);
}

void sub_24760343C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  realityio::Result<realityio::WrappedRERef<REAsset *>,realityio::DetailedError>::~Result(&a23);
  _Unwind_Resume(a1);
}

uint64_t std::pair<std::string,realityio::WrappedRERef<REAsset *>>::~pair(uint64_t a1)
{
  realityio::WrappedRERef<REAsset *>::~WrappedRERef((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void realityio::TextureBuilder::run(realityio::TextureBuilder *this, realityio::Inputs *a2)
{
  v41[3] = *MEMORY[0x277D85DE8];
  realityio::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v25, 2038, this);
  v4 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v21, v4, (a2 + 32));
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v20[0] = MEMORY[0x277D86708] + 16;
  v6 = atomic_load(&realityio::tokens::TextureBuilderTokens);
  if (!v6)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextureBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextureBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  if ((*(v6 + 1) ^ v19) > 7)
  {
    isMtlxImageShader = realityio::TextureBuilder::isMtlxImageShader(&v21, v5);
    if (!isMtlxImageShader)
    {
      goto LABEL_18;
    }

    v15 = *(realityio::logObjects(isMtlxImageShader) + 24);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      PrimPath = pxrInternal__aapl__pxrReserved__::UsdObject::GetPrimPath(&v21);
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(PrimPath);
      *buf = 136315138;
      *&buf[4] = Text;
      _os_log_impl(&dword_247485000, v15, OS_LOG_TYPE_INFO, "TextureBuilder starts processing (Prim %s)", buf, 0xCu);
    }

    v27 = 0u;
    *v28 = 0u;
    *buf = 0u;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    v28[0] = 0;
    v28[1] = 0;
    v27 = &v27 + 8;
    *&buf[8] = 0;
    realityio::TextureBuilder::TextureDataT::operator=(this + 280, buf);
    realityio::TextureBuilder::TextureDataT::~TextureDataT(buf);
    v34 = v20;
    v35 = &v19;
    *buf = &unk_285954280;
    v38 = 0;
    v39 = 0;
    v36 = a2;
    v37 = &v38;
    MtlxImageShaderProcess::process(buf);
    realityio::TextureBuilder::setOutput(this, v20, &v37);
    *buf = &unk_285954280;
    v12 = v38;
    v13 = &v37;
  }

  else
  {
    v7 = *(realityio::logObjects(v6) + 24);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = pxrInternal__aapl__pxrReserved__::UsdObject::GetPrimPath(&v21);
      v9 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v8);
      *buf = 136315138;
      *&buf[4] = v9;
      _os_log_impl(&dword_247485000, v7, OS_LOG_TYPE_INFO, "TextureBuilder starts processing (Prim %s)", buf, 0xCu);
    }

    v27 = 0u;
    *v28 = 0u;
    *buf = 0u;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    v28[0] = 0;
    v28[1] = 0;
    v27 = &v27 + 8;
    *&buf[8] = 0;
    realityio::TextureBuilder::TextureDataT::operator=(this + 280, buf);
    realityio::TextureBuilder::TextureDataT::~TextureDataT(buf);
    v10 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
    v11 = *a2;
    v34 = v10;
    v35 = v20;
    v36 = (v11 + 112);
    *buf = &unk_2859542E8;
    v38 = this;
    v39 = a2;
    v41[0] = 0;
    v41[1] = 0;
    v40 = v41;
    *buf = &unk_2859542E8;
    v12 = v41[0];
    v13 = &v40;
  }

  std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::destroy(v13, v12);
  if (v33 < 0)
  {
    operator delete(__p);
  }

  if (v31 < 0)
  {
    operator delete(v30);
  }

  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(*&buf[8]);
  }

LABEL_18:
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x24C1A5280](v20);
  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v23);
  if (v22)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v22);
  }

  realityio::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v25);
  v18 = *MEMORY[0x277D85DE8];
}

void sub_2476038F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  va_copy(va3, va2);
  v12 = va_arg(va3, void);
  v14 = va_arg(va3, void);
  realityio::TextureBuilder::TextureDataT::~TextureDataT(va3);
  if ((a2 & 7) != 0)
  {
    atomic_fetch_add_explicit((a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x24C1A5280](va);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(va1);
  realityio::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(va2);
  _Unwind_Resume(a1);
}

uint64_t realityio::TextureBuilder::isMtlxImageShader(realityio::TextureBuilder *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(this + 1), a2);
  }

  v3 = atomic_load(&realityio::tokens::TextureBuilderTokens);
  if (!v3)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextureBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextureBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  if ((*v3 ^ **(v2 + 24)) > 7)
  {
    return 0;
  }

  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v20[0] = MEMORY[0x277D86708] + 16;
  if ((v19 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = (v19 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(ShaderID);
  }

  v7 = *(EmptyString + 23);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(EmptyString + 8);
  }

  if (v7 < 3)
  {
    goto LABEL_23;
  }

  v9 = v8 >= 0 ? EmptyString : *EmptyString;
  if (*v9 != 78 || v9[1] != 68 || v9[2] != 95)
  {
    goto LABEL_23;
  }

  v10 = atomic_load(&realityio::tokens::TextureBuilderTokens);
  if (!v10)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextureBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextureBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  if ((*(v10 + 152) ^ v19) < 8)
  {
    goto LABEL_23;
  }

  v11 = atomic_load(&realityio::tokens::TextureBuilderTokens);
  if (!v11)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextureBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextureBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  if ((*(v11 + 144) ^ v19) >= 8)
  {
    pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInputs(v20);
    v13 = v17;
    if (v17 == v18)
    {
      v4 = 0;
    }

    else
    {
      do
      {
        TypeName = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(v13);
        if (!atomic_load(&realityio::tokens::TextureBuilderTokens))
        {
          pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextureBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextureBuilderTokens_StaticTokenType>>::_TryToCreateData();
        }

        v15 = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==();
        v4 = v15;
        v13 = (v13 + 32);
        if (v13 == v18)
        {
          v16 = 1;
        }

        else
        {
          v16 = v15;
        }
      }

      while ((v16 & 1) == 0);
    }

    TypeName = &v17;
    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeInput>::__destroy_vector::operator()[abi:ne200100](&TypeName);
  }

  else
  {
LABEL_23:
    v4 = 0;
  }

  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x24C1A5280](v20);
  return v4;
}

void sub_247603BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if ((a5 & 7) != 0)
  {
    atomic_fetch_add_explicit((a5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x24C1A5280](va);
  _Unwind_Resume(a1);
}

void realityio::TextureBuilder::clear(realityio::TextureBuilder *this, realityio::Inputs *a2)
{
  v4 = *(this + 2);
  v3 = *(this + 3);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = realityio::TextureBuilder::kOutputName(this);
  std::mutex::lock(v4 + 1);
  v6 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(&v4->__m_.__opaque[32], v5);
  v7 = &v4->__m_.__opaque[40];
  if (&v4->__m_.__opaque[40] != v6)
  {
    std::mutex::unlock(v4 + 1);
    v9 = 0;
    if (!v3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  std::operator+<char>();
  v13 = std::string::append(&v23, " does not exist in the builder outputs");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v25 = v13->__r_.__value_.__r.__words[2];
  *__p = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  realityio::DetailedError::DetailedError(&v20, 207, &realityio::FoundationErrorCategory(void)::instance, __p);
  v19 = v20;
  v15 = *(&v21 + 1);
  v5 = v21;
  v16 = SBYTE7(v22);
  *&v22 = 0;
  v21 = 0uLL;
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  std::mutex::unlock(v4 + 1);
  v20 = v19;
  if ((v16 & 0x80000000) == 0)
  {
    v9 = 1;
    if (!v3)
    {
      goto LABEL_6;
    }

LABEL_5:
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    goto LABEL_6;
  }

  std::string::__init_copy_ctor_external(&v21, v5, v15);
  v17 = v21;
  v18 = SBYTE7(v22);
  operator delete(v5);
  v9 = v18 >= 0;
  v5 = v17;
  if (v3)
  {
    goto LABEL_5;
  }

LABEL_6:
  if (v7 == v6)
  {
    if (!v9)
    {
      operator delete(v5);
    }
  }

  else
  {
    v11 = *(this + 2);
    v10 = *(this + 3);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = realityio::TextureBuilder::kOutputName(v8);
    std::mutex::lock((v11 + 64));
    if (v11 + 48 != std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(v11 + 40, v12))
    {
      std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::__erase_unique<std::string>((v11 + 40), v12);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__erase_unique<std::string>(v11, v12);
    std::mutex::unlock((v11 + 64));
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    v22 = 0uLL;
    v21 = &v21 + 8;
    *(&v20 + 1) = 0;
    realityio::TextureBuilder::TextureDataT::operator=(this + 280, &v20);
    realityio::TextureBuilder::TextureDataT::~TextureDataT(&v20);
  }
}

void sub_247603E70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  operator delete(v24);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  _Unwind_Resume(a1);
}

uint64_t realityio::TextureBuilder::gatherTextureInfo(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v87 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(RETextureImportOperation0 *,char const*,char const*)>::__value_func[abi:ne200100](v79, a5);
  std::__function::__value_func<void ()(RETextureImportOperation0 *,char const*,char const*)>::__value_func[abi:ne200100](v80, v79);
  v83[0] = 0;
  v83[1] = 0;
  v81 = a2;
  v82 = v83;
  v85 = 0;
  v86 = 0;
  v84 = 0;
  std::__function::__value_func<void ()(RETextureImportOperation0 *,char const*,char const*)>::~__value_func[abi:ne200100](v79);
  v77 = *a1;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v77);
  realityio::internal::TexturePrimToMaterialPrimMap::makeTexturePrimToMaterialMap(&v77, v78);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v77);
  v75 = *a1;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v75);
  realityio::makeSdfAssetPathToTextureImportSettingsMapWithSpecifiedSemantics(a4, &v75, v78, v76);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v75);
  v73[0] = v80;
  v73[1] = a1;
  v73[2] = v78;
  v73[3] = v76;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a4, *(a4 + 8));
  }

  else
  {
    __p = *a4;
  }

  if (a3)
  {
    v9 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(a1);
    pxrInternal__aapl__pxrReserved__::UsdStage::Traverse(&v69, v9);
    pxrInternal__aapl__pxrReserved__::UsdPrimRange::begin(&v69, v64);
    v59 = v70;
    v60 = &v69;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    v62 = 0;
    v63 = 0;
    v10 = MEMORY[0x277D86568];
    while (1)
    {
      v11 = v64[1] == v60 && v64[0] == v59;
      if (v11 && v65 == v61 && v66 == v62 && v67 == v63 && v68 == HIBYTE(v63))
      {
        break;
      }

      v41 = v64[0];
      if (v64[0])
      {
        atomic_fetch_add_explicit((v64[0] + 48), 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(v55, &v41, &v65);
      v12 = v41;
      if (v41)
      {
        v12 = pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v41);
      }

      pxrInternal__aapl__pxrReserved__::UsdGeomImageable::_GetStaticTfType(v12);
      pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
      IsA = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
      if ((IsA & 1) != 0 || (pxrInternal__aapl__pxrReserved__::UsdGeomSubset::_GetStaticTfType(IsA), pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(), pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA()))
      {
        pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
        v54[3] = 0;
        v54[0] = MEMORY[0x277D867B8] + 16;
        v14 = atomic_load(v10);
        if (!v14)
        {
          pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType>>::_TryToCreateData();
        }

        pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::ComputeBoundMaterial(v54, v14, 0);
        if (v52 && (*(v52 + 57) & 8) == 0 && (*(v51 + 32))(&v51))
        {
          v15 = pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v37, &v52, &v53);
          UsdPrimAllPrimsPredicate = pxrInternal__aapl__pxrReserved__::GetUsdPrimAllPrimsPredicate(v15);
          v17 = *UsdPrimAllPrimsPredicate;
          v18 = UsdPrimAllPrimsPredicate[1];
          v19 = UsdPrimAllPrimsPredicate[2];
          if ((pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL() & 1) == 0 && ((v17 & 0x2000) != 0 || (v18 & 0x2000) == 0))
          {
            v17 |= 0x2000uLL;
            v18 &= ~0x2000uLL;
          }

          v33 = v17;
          v34 = v18;
          *&v35 = v19;
          pxrInternal__aapl__pxrReserved__::UsdPrim::_MakeDescendantsRange(&v37, &v33, &v41);
          if ((BYTE8(v39) & 7) != 0)
          {
            atomic_fetch_add_explicit((*(&v39 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v39);
          if (v38)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v38);
          }

          v37 = v41;
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v38, &v42);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v38 + 1, &v43);
          v39 = v44;
          v40 = v45;
          v33 = v46;
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v34, &v47);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v34 + 1, &v48);
          v35 = v49;
          v36 = v50;
          while (v37 != v33 || v38 != v34 || !pxrInternal__aapl__pxrReserved__::operator==(&v39, &v35))
          {
            pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::dereference(&v37, &v29);
            realityio::TextureBuilder::gatherTextureInfo(pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage> const&,REServiceLocator *,BOOL,std::string const&,std::function<void ()(RETextureImportOperation0 *,char const*,char const*)>)::$_0::operator()(v73, &v29);
            if ((v32 & 7) != 0)
            {
              atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v31);
            if (v30)
            {
              pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v30);
            }

            pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::increment(&v37);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v34);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v38);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v47);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v42);
        }

        MEMORY[0x24C1A5510](&v51);
        MEMORY[0x24C1A5AA0](v54);
      }

      if ((v58 & 7) != 0)
      {
        atomic_fetch_add_explicit((v58 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v57);
      if (v56)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v56);
      }

      pxrInternal__aapl__pxrReserved__::UsdPrimRange::iterator::increment(v64);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v61);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v65);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    v26 = &v71;
  }

  else
  {
    v20 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(a1);
    PseudoRoot = pxrInternal__aapl__pxrReserved__::UsdStage::GetPseudoRoot(&v69, v20);
    v22 = pxrInternal__aapl__pxrReserved__::GetUsdPrimAllPrimsPredicate(PseudoRoot);
    v24 = *v22;
    v23 = v22[1];
    v25 = v22[2];
    if ((pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL() & 1) == 0 && ((v24 & 0x2000) != 0 || (v23 & 0x2000) == 0))
    {
      v24 |= 0x2000uLL;
      v23 &= ~0x2000uLL;
    }

    v37 = v24;
    v38 = v23;
    *&v39 = v25;
    pxrInternal__aapl__pxrReserved__::UsdPrim::_MakeDescendantsRange(&v69, &v37, &v41);
    if ((BYTE8(v71) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v71 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v71);
    if (v70)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v70);
    }

    v69 = v41;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v70, &v42);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v70 + 1, &v43);
    v71 = v44;
    v72 = v45;
    v37 = v46;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v38, &v47);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v38 + 1, &v48);
    v39 = v49;
    v40 = v50;
    while (v69 != v37 || v70 != v38 || !pxrInternal__aapl__pxrReserved__::operator==(&v71, &v39))
    {
      pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::dereference(&v69, &v33);
      realityio::TextureBuilder::gatherTextureInfo(pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage> const&,REServiceLocator *,BOOL,std::string const&,std::function<void ()(RETextureImportOperation0 *,char const*,char const*)>)::$_0::operator()(v73, &v33);
      if ((BYTE8(v35) & 7) != 0)
      {
        atomic_fetch_add_explicit((*(&v35 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v35);
      if (v34)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v34);
      }

      pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::increment(&v69);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v38);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v70);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v47);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    v26 = &v42;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v26);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::less<pxrInternal__aapl__pxrReserved__::SdfAssetPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>>>::destroy(v76, v76[1]);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>>>::destroy(v78, v78[1]);
  if (SHIBYTE(v86) < 0)
  {
    operator delete(v84);
  }

  std::__tree<std::string>::destroy(&v82, v83[0]);
  result = std::__function::__value_func<void ()(RETextureImportOperation0 *,char const*,char const*)>::~__value_func[abi:ne200100](v80);
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_247604640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *__p)
{
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::less<pxrInternal__aapl__pxrReserved__::SdfAssetPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>>>::destroy(&a67, a68);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>>>::destroy(v68 - 240, *(v68 - 232));
  GatheringDestination::~GatheringDestination((v68 - 184));
  _Unwind_Resume(a1);
}

void realityio::makeSdfAssetPathToTextureImportSettingsMapWithSpecifiedSemantics(const std::string *a1@<X0>, uint64_t *a2@<X1>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X2>, void *a4@<X8>)
{
  a4[1] = 0;
  a4[2] = 0;
  v42 = a4 + 1;
  *a4 = a4 + 1;
  memset(v100, 0, 24);
  v5 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(a2);
  PseudoRoot = pxrInternal__aapl__pxrReserved__::UsdStage::GetPseudoRoot(&v58, v5);
  UsdPrimAllPrimsPredicate = pxrInternal__aapl__pxrReserved__::GetUsdPrimAllPrimsPredicate(PseudoRoot);
  v9 = *UsdPrimAllPrimsPredicate;
  v8 = UsdPrimAllPrimsPredicate[1];
  v10 = UsdPrimAllPrimsPredicate[2];
  if ((pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL() & 1) == 0 && ((v9 & 0x2000) != 0 || (v8 & 0x2000) == 0))
  {
    v9 |= 0x2000uLL;
    v8 &= ~0x2000uLL;
  }

  v53.__r_.__value_.__r.__words[0] = v9;
  v53.__r_.__value_.__l.__size_ = v8;
  v53.__r_.__value_.__r.__words[2] = v10;
  pxrInternal__aapl__pxrReserved__::UsdPrim::_MakeDescendantsRange(&v58, &v53, &v90);
  if ((__p.__r_.__value_.__s.__data_[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__p.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v58.__r_.__value_.__r.__words[2]);
  if (v58.__r_.__value_.__l.__size_)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v58.__r_.__value_.__l.__size_);
  }

  v86 = v90;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v87, &v91);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v87 + 1, &v92);
  v88 = v93;
  v89 = v94;
  v82 = v95;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v83, &v96);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v83 + 1, &v97);
  v84 = v98;
  v85 = v99;
  while (v86 != v82 || v87 != v83 || !pxrInternal__aapl__pxrReserved__::operator==(&v88, &v84))
  {
    v11 = pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::dereference(&v86, v78);
    pxrInternal__aapl__pxrReserved__::UsdShadeShader::_GetStaticTfType(v11);
    pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
    if ((pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA() & 1) == 0)
    {
      goto LABEL_142;
    }

    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
    v77[0] = MEMORY[0x277D86708] + 16;
    v13 = atomic_load(&realityio::tokens::TextureBuilderTokens);
    if (!v13)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextureBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextureBuilderTokens_StaticTokenType>>::_TryToCreateData();
    }

    if ((*(v13 + 8) ^ v76) <= 7)
    {
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(v78, &v58);
      realityio::internal::TexturePrimToMaterialPrimMap::materialPathsUsingTexture(&v74, a3, &v58);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v58);
      if (v75 != v74)
      {
        v14 = 0;
        if (((v75 - v74) >> 3) <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = (v75 - v74) >> 3;
        }

        do
        {
          v16 = v74;
          pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v58, &v79, &v80);
          pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v58, &v53);
          v17 = realityio::internal::TexturePrimToMaterialPrimMap::connectionsBetweenTextureAndMaterial(a3, &v53, (v16 + v14));
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v53);
          if ((__p.__r_.__value_.__s.__data_[0] & 7) != 0)
          {
            atomic_fetch_add_explicit((__p.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v58.__r_.__value_.__r.__words[2]);
          if (v58.__r_.__value_.__l.__size_)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v58.__r_.__value_.__l.__size_);
          }

          if (!v17)
          {
            v17 = v100;
          }

          v18 = atomic_load(&realityio::tokens::TextureBuilderTokens);
          if (!v18)
          {
            pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextureBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextureBuilderTokens_StaticTokenType>>::_TryToCreateData();
          }

          pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v68, v77, (v18 + 40));
          pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(&v58);
          realityio::TextureBuilder::getUniformInputValue<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(&__str, &v68, &v58);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v58.__r_.__value_.__l.__data_);
          }

          if ((v71 & 7) != 0)
          {
            atomic_fetch_add_explicit((v71 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v70);
          if (v69)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v69);
          }

          pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(&v58);
          v19 = pxrInternal__aapl__pxrReserved__::SdfAssetPath::operator==(&__str, &v58);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v58.__r_.__value_.__l.__data_);
            if (!v19)
            {
LABEL_41:
              if ((v58.__r_.__value_.__s.__data_[0] & 1) != 0 && v63 && v63 != 6)
              {
                v20 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::less<pxrInternal__aapl__pxrReserved__::SdfAssetPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>>>::find<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(a4);
                if (v42 == v20)
                {
                  v51 = 0;
                  v52 = 0;
                  v50 = &v51;
                  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                  {
                    std::string::__init_copy_ctor_external(&v53, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
                  }

                  else
                  {
                    v53 = __str;
                  }

                  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
                  {
                    std::string::__init_copy_ctor_external(&v54, v73.__r_.__value_.__l.__data_, v73.__r_.__value_.__l.__size_);
                  }

                  else
                  {
                    v54 = v73;
                  }

                  v55 = v50;
                  v56 = v51;
                  v57 = v52;
                  if (v52)
                  {
                    *(v51 + 2) = &v56;
                    v50 = &v51;
                    v51 = 0;
                    v52 = 0;
                  }

                  else
                  {
                    v55 = &v56;
                  }

                  v21 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::less<pxrInternal__aapl__pxrReserved__::SdfAssetPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath const,std::set<realityio::TextureImportOperationSettings>>>(a4);
                  v23 = v22;
                  std::__tree<realityio::TextureImportOperationSettings>::destroy(&v55, v56);
                  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v54.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v53.__r_.__value_.__l.__data_);
                  }

                  std::__tree<realityio::TextureImportOperationSettings>::destroy(&v50, v51);
                  if (v23)
                  {
                    v20 = v21;
                  }
                }

                if (v20 != v42)
                {
                  std::__tree<realityio::TextureImportOperationSettings>::__emplace_unique_key_args<realityio::TextureImportOperationSettings,realityio::TextureImportOperationSettings const&>(v20 + 80, &v58.__r_.__value_.__l.__size_);
                }
              }

              realityio::Result<realityio::TextureImportOperationSettings,realityio::DetailedError>::~Result(&v58);
            }
          }

          else if (!v19)
          {
            goto LABEL_41;
          }

          if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v73.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          v14 += 8;
          --v15;
        }

        while (v15);
      }

      v58.__r_.__value_.__r.__words[0] = &v74;
      std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v58);
      goto LABEL_139;
    }

    if (realityio::TextureBuilder::isMtlxImageShader(v78, v12))
    {
      pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInputs(v77);
      if (TextureSemanticFromInfoID)
      {
        v26 = TextureSemanticFromInfoID;
        v28 = v74;
        v27 = v75;
        while (1)
        {
          if (v28 == v27)
          {
            goto LABEL_138;
          }

          v58.__r_.__value_.__r.__words[0] = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(v28);
          if (!atomic_load(&realityio::tokens::TextureBuilderTokens))
          {
            pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextureBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextureBuilderTokens_StaticTokenType>>::_TryToCreateData();
          }

          if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==() & 1) != 0 && pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v28) && (pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput())
          {
            break;
          }

LABEL_135:
          v28 += 32;
        }

        v45 = *v28;
        v30 = *(v28 + 8);
        v46 = v30;
        if (v30)
        {
          atomic_fetch_add_explicit((v30 + 48), 1uLL, memory_order_relaxed);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v47, (v28 + 16));
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v48, (v28 + 20));
        v31 = *(v28 + 24);
        v49 = v31;
        if ((v31 & 7) != 0 && (atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v49 &= 0xFFFFFFFFFFFFFFF8;
        }

        pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(&v58);
        realityio::TextureBuilder::getUniformInputValue<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(&__str, &v45, &v58);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v58.__r_.__value_.__l.__data_);
        }

        if ((v49 & 7) != 0)
        {
          atomic_fetch_add_explicit((v49 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v47);
        if (v46)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v46);
        }

        pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(&v58);
        std::string::basic_string[abi:ne200100]<0>(&v60, "");
        v61 = 0;
        v62 = realityio::TextureSwizzleChannels::kDefault;
        LOBYTE(v63) = 2;
        v64 = 0;
        v65 = 512;
        std::string::basic_string[abi:ne200100]<0>(&v66, "");
        std::string::operator=(&v58, &__str);
        std::string::operator=(&__p, &v73);
        ColorSpace = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetColorSpace(&v53, v28);
        if ((v53.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          EmptyString = ((v53.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(ColorSpace);
        }

        std::string::operator=(&v60, EmptyString);
        if ((v53.__r_.__value_.__s.__data_[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((v53.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v61 = v26;
        pxrInternal__aapl__pxrReserved__::UsdObject::GetCustomData(&v44, v28);
        std::string::basic_string[abi:ne200100]<0>(&v53, "downsampleFactor");
        ValueAtPath = pxrInternal__aapl__pxrReserved__::VtDictionary::GetValueAtPath();
        v35 = ValueAtPath;
        if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v53.__r_.__value_.__l.__data_);
          if (!v35)
          {
            goto LABEL_101;
          }
        }

        else if (!ValueAtPath)
        {
LABEL_101:
          if (v61 && v61 != 6)
          {
            v36 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::less<pxrInternal__aapl__pxrReserved__::SdfAssetPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>>>::find<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(a4);
            if (v42 == v36)
            {
              v51 = 0;
              v52 = 0;
              v50 = &v51;
              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&v53, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
              }

              else
              {
                v53 = __str;
              }

              if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&v54, v73.__r_.__value_.__l.__data_, v73.__r_.__value_.__l.__size_);
              }

              else
              {
                v54 = v73;
              }

              v55 = v50;
              v56 = v51;
              v57 = v52;
              if (v52)
              {
                *(v51 + 2) = &v56;
                v50 = &v51;
                v51 = 0;
                v52 = 0;
              }

              else
              {
                v55 = &v56;
              }

              v40 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::less<pxrInternal__aapl__pxrReserved__::SdfAssetPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath const,std::set<realityio::TextureImportOperationSettings>>>(a4);
              v38 = v37;
              std::__tree<realityio::TextureImportOperationSettings>::destroy(&v55, v56);
              if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v54.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v53.__r_.__value_.__l.__data_);
              }

              std::__tree<realityio::TextureImportOperationSettings>::destroy(&v50, v51);
              if (v38)
              {
                v36 = v40;
              }
            }

            if (v36 != v42)
            {
              std::__tree<realityio::TextureImportOperationSettings>::__emplace_unique_key_args<realityio::TextureImportOperationSettings,realityio::TextureImportOperationSettings const&>(v36 + 80, &v58);
            }
          }

          v39 = v44;
          v44 = 0;
          if (v39)
          {
            std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<void>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(v39, *(v39 + 8));
            MEMORY[0x24C1A91B0](v39, 0x1020C4062D53EE8);
          }

          if (v67 < 0)
          {
            operator delete(v66);
          }

          if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v60.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v58.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v73.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          goto LABEL_135;
        }

        v64 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<int>(v35);
        goto LABEL_101;
      }

LABEL_138:
      v58.__r_.__value_.__r.__words[0] = &v74;
      std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeInput>::__destroy_vector::operator()[abi:ne200100](&v58);
    }

LABEL_139:
    if ((v76 & 7) != 0)
    {
      atomic_fetch_add_explicit((v76 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    MEMORY[0x24C1A5280](v77);
LABEL_142:
    if ((v81 & 7) != 0)
    {
      atomic_fetch_add_explicit((v81 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v80);
    if (v79)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v79);
    }

    pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::increment(&v86);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v83);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v87);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v96);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v91);
  v58.__r_.__value_.__r.__words[0] = v100;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v58);
}

void sub_2476052F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  std::__tree<realityio::TextureImportOperationSettings>::destroy(&a20, a21);
  pxrInternal__aapl__pxrReserved__::VtDictionary::~VtDictionary(&a15);
  realityio::TextureImportOperationSettings::~TextureImportOperationSettings(&a36);
  pxrInternal__aapl__pxrReserved__::SdfAssetPath::~SdfAssetPath(&a56);
  a36 = &a62;
  std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeInput>::__destroy_vector::operator()[abi:ne200100](&a36);
  if ((a65 & 7) != 0)
  {
    atomic_fetch_add_explicit((a65 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x24C1A5280](&a66);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&a69);
  pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::~UsdPrimSubtreeIterator(&a72);
  pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::~UsdPrimSubtreeIterator((v72 - 240));
  pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeRange::~UsdPrimSubtreeRange((v72 - 200));
  a36 = v72 - 120;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a36);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::less<pxrInternal__aapl__pxrReserved__::SdfAssetPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>>>::destroy(a12, *(a12 + 8));
  _Unwind_Resume(a1);
}

uint64_t realityio::TextureBuilder::gatherTextureInfo(pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage> const&,REServiceLocator *,BOOL,std::string const&,std::function<void ()(RETextureImportOperation0 *,char const*,char const*)>)::$_0::operator()(uint64_t *a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2)
{
  pxrInternal__aapl__pxrReserved__::UsdShadeShader::_GetStaticTfType(a1);
  pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
  result = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
  if (!result)
  {
    return result;
  }

  v5 = *a1;
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a2, &v13);
  String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(&v13);
  std::string::operator=((v5 + 64), String);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v13);
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v27[0] = MEMORY[0x277D86708] + 16;
  v8 = atomic_load(&realityio::tokens::TextureBuilderTokens);
  if (!v8)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextureBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextureBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  if ((*(v8 + 8) ^ v26) <= 7)
  {
    v9 = *a1;
    v10 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(a1[1]);
    v11 = a1[2];
    v22 = v10;
    v23 = v27;
    v24 = v11;
    v13 = &unk_2859543C8;
    v25 = v9;
LABEL_7:
    if (v21 < 0)
    {
      operator delete(__p);
    }

    if (v19 < 0)
    {
      operator delete(v18);
    }

    if (v17 < 0)
    {
      operator delete(v16);
    }

    if (v15 < 0)
    {
      operator delete(v14[0]);
    }

    goto LABEL_15;
  }

  if (realityio::TextureBuilder::isMtlxImageShader(a2, v7))
  {
    v12 = *a1;
    v22 = v27;
    v23 = &v26;
    v13 = &unk_285954410;
    v24 = v12;
    MtlxImageShaderProcess::process(&v13);
    goto LABEL_7;
  }

LABEL_15:
  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return MEMORY[0x24C1A5280](v27);
}

void sub_2476057A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  UsdInfoGatherer::~UsdInfoGatherer(&a9);
  v11 = *(v9 - 80);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x24C1A5280](v9 - 72);
  _Unwind_Resume(a1);
}

uint64_t realityio::TextureBuilder::createStandaloneTextureAssetData@<X0>(const void **a1@<X1>, realityio::TextureImportOperationSettings *a2@<X2>, uint64_t a3@<X8>)
{
  ServiceLocator = REEngineGetServiceLocator();
  v23 = *a1;
  if (v23)
  {
    CFRetain(v23);
  }

  realityio::createRETextureImportOperation(ServiceLocator, &v23, a2, v24);
  v7 = realityio::WrappedCFRef<__CFData const*>::~WrappedCFRef(&v23);
  if (v24[0])
  {
    realityio::TextureImportOperationSettings::makeTextureResourceKey(a2, &v19);
    RETextureImportOperationSetAssetResourceName();
    v18 = 0;
    AssetData = RETextureImportOperationCreateAssetData();
    if (AssetData)
    {
      if (*(a2 + 80) == 5)
      {
      }

      else
      {
        *buf = 0;
        *a3 = 1;
        *(a3 + 8) = AssetData;
        __p[0] = 0;
        realityio::WrappedRERef<RETextureAssetData *>::~WrappedRERef(__p);
        realityio::WrappedRERef<RETextureAssetData *>::~WrappedRERef(buf);
      }
    }

    else
    {
      v12 = v18;
      std::string::basic_string[abi:ne200100]<0>(__p, "Error running import operation");
      v13 = std::system_category();
      realityio::DetailedError::makeFromCFError(v12, __p, v13, buf);
      *(a3 + 8) = *buf;
      v14 = v22;
      *(a3 + 24) = v21;
      *(a3 + 32) = v14;
      *(a3 + 39) = *(&v22 + 7);
      LOBYTE(v14) = HIBYTE(v22);
      v22 = 0uLL;
      v21 = 0;
      *a3 = 0;
      *(a3 + 47) = v14;
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    v9 = *(realityio::logObjects(v7) + 24);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_247485000, v9, OS_LOG_TYPE_DEFAULT, "Could not create textureImportOperation", buf, 2u);
    }

    std::string::basic_string[abi:ne200100]<0>(&v19, "Could not create textureImportOperation");
    v10 = std::system_category();
    realityio::DetailedError::DetailedError(buf, 0, v10, &v19);
    *(a3 + 8) = *buf;
    v11 = v22;
    *(a3 + 24) = v21;
    *(a3 + 32) = v11;
    *(a3 + 39) = *(&v22 + 7);
    LOBYTE(v11) = HIBYTE(v22);
    v22 = 0uLL;
    v21 = 0;
    *a3 = 0;
    *(a3 + 47) = v11;
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  return realityio::Result<realityio::WrappedRERef<RETextureImportOperation0 *>,realityio::DetailedError>::~Result(v24);
}

void sub_247605A28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  realityio::Result<realityio::WrappedRERef<RETextureImportOperation0 *>,realityio::DetailedError>::~Result(v22 - 80);
  _Unwind_Resume(a1);
}

void anonymous namespace::createCubeMapTextureAssetData(uint64_t a1, uint64_t a2)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16 = 0;
  if (MEMORY[0x24C1A4260](a2))
  {
    v3 = RECreateCubeTextureDataFromLatLong();
    RERelease();
    if (v3)
    {
      *&v13 = 0;
      *a1 = 1;
      *(a1 + 8) = v3;
      __p[0] = 0;
      realityio::WrappedRERef<RETextureAssetData *>::~WrappedRERef(__p);
      realityio::WrappedRERef<RETextureAssetData *>::~WrappedRERef(&v13);
      goto LABEL_8;
    }

    v5 = v16;
    std::string::basic_string[abi:ne200100]<0>(__p, "Error creating cube map from imported texture");
    v6 = std::system_category();
    realityio::DetailedError::makeFromCFError(v5, __p, v6, &v13);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "Failed to create a cube map because metal is disabled.");
    v4 = std::system_category();
    realityio::DetailedError::makeFromCFError(0, __p, v4, &v13);
  }

  *(a1 + 8) = v13;
  v7 = v14;
  v17[0] = v15;
  *(v17 + 7) = *(&v15 + 7);
  v8 = HIBYTE(v15);
  v15 = 0uLL;
  v14 = 0;
  *a1 = 0;
  *(a1 + 39) = *(v17 + 7);
  v9 = v17[0];
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  *(a1 + 47) = v8;
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_8:
  v10 = *MEMORY[0x277D85DE8];
}

void sub_247605BE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void realityio::TextureBuilder::createStandardTextureAsset(std::string::size_type a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, std::string::size_type *a5@<X8>)
{
  v39 = *MEMORY[0x277D85DE8];
  v26[0] = 0;
  v26[1] = 0;
  v25 = v26;
  v10 = *(*(a1 + 40) + 16);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, *a3, *(a3 + 8));
  }

  else
  {
    v16 = *a3;
  }

  if (*(a3 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, *(a3 + 24), *(a3 + 32));
  }

  else
  {
    v17 = *(a3 + 24);
  }

  pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(&v18);
  std::string::basic_string[abi:ne200100]<0>(&v20, "");
  LODWORD(v21) = 0;
  DWORD1(v21) = realityio::TextureSwizzleChannels::kDefault;
  BYTE8(v21) = 2;
  HIDWORD(v21) = 0;
  v22 = 512;
  std::string::basic_string[abi:ne200100]<0>(&v23, "");
  v24 = &v25;
  if ((atomic_load_explicit(&qword_27EE531B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE531B0))
  {
    qword_27EE531D0 = 0;
    unk_27EE531D8 = 0;
    qword_27EE531E0 = 0;
    __cxa_guard_release(&qword_27EE531B0);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v27, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
  }

  else
  {
    v27 = v16;
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v17;
  }

  *buf = 3;
  *&v36[4] = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  v38 = 0;
  if ((v38 & 7) != 0)
  {
    atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v37);
  if (*&v36[4])
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*&v36[4]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (v29.__r_.__value_.__s.__data_[0] == 1)
  {
    std::string::operator=(&v18, &v29.__r_.__value_.__r.__words[1]);
    std::string::operator=(&v19, &v30);
    std::string::operator=(&v20, &v31);
    v21 = v32;
    v22 = v33;
    std::string::operator=(&v23, &v34);
  }

  realityio::Result<realityio::TextureImportOperationSettings,realityio::DetailedError>::~Result(&v29);
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  BYTE8(v21) = *(a4 + 80);
  LODWORD(v21) = *(a4 + 72);
  v27.__r_.__value_.__r.__words[0] = &unk_285954358;
  v27.__r_.__value_.__l.__size_ = a1;
  if (v29.__r_.__value_.__s.__data_[0])
  {
    size = v29.__r_.__value_.__l.__size_;
    *a5 = v29.__r_.__value_.__l.__size_;
    if (size)
    {
      RERetain();
    }
  }

  else
  {
    v13 = *(realityio::logObjects(v11) + 24);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      std::error_code::message(&v27, &v29.__r_.__value_.__r.__words[1]);
      v14 = (v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v27 : v27.__r_.__value_.__r.__words[0];
      *buf = 136315138;
      *v36 = v14;
      _os_log_impl(&dword_247485000, v13, OS_LOG_TYPE_DEFAULT, "Could not create standard asset: %s", buf, 0xCu);
      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v27.__r_.__value_.__l.__data_);
      }
    }

    *a5 = 0;
  }

  realityio::Result<realityio::WrappedRERef<REAsset *>,realityio::DetailedError>::~Result(&v29);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::less<pxrInternal__aapl__pxrReserved__::SdfAssetPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>>>::destroy(&v25, v26[0]);
  v15 = *MEMORY[0x277D85DE8];
}

void sub_247606044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

std::string *pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(std::string *this, const pxrInternal__aapl__pxrReserved__::SdfAssetPath *a2)
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

void sub_2476061B4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void realityio::TextureBuilder::createStandaloneTextureAsset(uint64_t a1@<X0>, const std::string *a2@<X1>, uint64_t a3@<X2>, std::string::size_type *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v22[0] = 0;
  v22[1] = 0;
  v21 = v22;
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  std::string::operator=(&v15, a2);
  std::string::operator=(&v16, a2 + 1);
  std::string::operator=(&v17, a3);
  v18 = *(a3 + 24);
  if (__p[0].__r_.__value_.__s.__data_[0])
  {
    size = __p[0].__r_.__value_.__l.__size_;
    *a4 = __p[0].__r_.__value_.__l.__size_;
    if (size)
    {
      RERetain();
    }
  }

  else
  {
    v10 = *(realityio::logObjects(v8) + 24);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      std::error_code::message(&v13, &__p[0].__r_.__value_.__r.__words[1]);
      v11 = (v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v13 : v13.__r_.__value_.__r.__words[0];
      *buf = 136315138;
      v24 = v11;
      _os_log_impl(&dword_247485000, v10, OS_LOG_TYPE_DEFAULT, "Could not create standard asset: %s", buf, 0xCu);
      if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v13.__r_.__value_.__l.__data_);
      }
    }

    *a4 = 0;
  }

  realityio::Result<realityio::WrappedRERef<REAsset *>,realityio::DetailedError>::~Result(__p);
  if (v20 < 0)
  {
    operator delete(v19);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::less<pxrInternal__aapl__pxrReserved__::SdfAssetPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>>>::destroy(&v21, v22[0]);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_2476063C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::createTextureAsset(std::string *a1, uint64_t a2, realityio::TextureImportOperationSettings *this)
{
  realityio::TextureImportOperationSettings::makeTextureResourceKey(this, &v32);
  (*(*a2 + 16))(&v39, a2);
  if (v40.__r_.__value_.__s.__data_[7] >= 0)
  {
    v6 = v40.__r_.__value_.__s.__data_[7];
  }

  else
  {
    v6 = *(&v39 + 1);
  }

  if (v41 < 0)
  {
    operator delete(v40.__r_.__value_.__l.__size_);
    if ((v40.__r_.__value_.__s.__data_[7] & 0x80) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((v40.__r_.__value_.__s.__data_[7] & 0x80) == 0)
  {
    goto LABEL_6;
  }

  operator delete(v39);
LABEL_6:
  (*(*a2 + 8))(&v31, a2, &v32);
  v30 = 0;
  v7 = v31;
  if (v31)
  {
    RERetain();
    a1->__r_.__value_.__s.__data_[0] = 1;
    a1->__r_.__value_.__l.__size_ = v7;
    *&v39 = 0;
    realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v39);
    goto LABEL_57;
  }

  realityio::TextureImportOperationSettings::makeTextureResourceKey(this, &v43);
  v42 = 0;
  (**a2)(a2);
  ServiceLocator = REEngineGetServiceLocator();
  v9 = *(this + 47);
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(this + 4);
  }

  if (v9)
  {
    operator new();
  }

  if (*(this + 23) >= 0)
  {
    v10 = this;
  }

  else
  {
    v10 = *this;
  }

  std::string::basic_string[abi:ne200100]<0>(&v39, v10);
  (*(*a2 + 48))(&cf, a2, &v39);
  if (v40.__r_.__value_.__s.__data_[7] < 0)
  {
    operator delete(v39);
  }

  if (cf)
  {
    v33 = cf;
    CFRetain(cf);
    realityio::createRETextureImportOperation(ServiceLocator, &v33, this, &v39);
    realityio::WrappedCFRef<__CFData const*>::~WrappedCFRef(&v33);
    v11 = v39;
    if (v39)
    {
      __p[0] = 0;
      v36[0] = *(&v39 + 1);
      v12 = *(&v39 + 1);
      *(&v39 + 1) = 0;
      v13 = v42;
      if (v42 != v12)
      {
        v42 = v12;
        v36[0] = v13;
      }

      realityio::WrappedRERef<RETextureImportOperation0 *>::~WrappedRERef(v36);
      realityio::WrappedRERef<RETextureImportOperation0 *>::~WrappedRERef(__p);
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "Could not instantiate import operation");
      v16 = std::system_category();
      realityio::DetailedError::DetailedError(v36, 0, v16, __p);
      v28 = *v36;
      *&v29.__r_.__value_.__l.__data_ = *v37;
      *(&v29.__r_.__value_.__r.__words[1] + 7) = *&v37[15];
      v17 = v37[23];
      memset(v37, 0, sizeof(v37));
      v27[0] = 0;
      *(&v29.__r_.__value_.__s + 23) = v17;
      if (v35 < 0)
      {
        operator delete(__p[0]);
      }
    }

    realityio::Result<realityio::WrappedRERef<RETextureImportOperation0 *>,realityio::DetailedError>::~Result(&v39);
    realityio::WrappedCFRef<__CFData const*>::~WrappedCFRef(&cf);
    if (v11)
    {
      RETextureImportOperationSetAssetResourceName();
      __p[0] = 0;
      AssetData = RETextureImportOperationCreateAssetData();
      if (AssetData)
      {
        if (*(this + 80) == 5)
        {
        }

        else
        {
          *&v39 = 0;
          v27[0] = 1;
          *&v28 = AssetData;
          v36[0] = 0;
          realityio::WrappedRERef<RETextureAssetData *>::~WrappedRERef(v36);
          realityio::WrappedRERef<RETextureAssetData *>::~WrappedRERef(&v39);
        }
      }

      else
      {
        v19 = __p[0];
        std::string::basic_string[abi:ne200100]<0>(v36, "Error running import operation");
        v20 = std::system_category();
        realityio::DetailedError::makeFromCFError(v19, v36, v20, &v39);
        v28 = v39;
        *&v29.__r_.__value_.__l.__data_ = *&v40.__r_.__value_.__l.__data_;
        *(&v29.__r_.__value_.__r.__words[1] + 7) = *(&v40.__r_.__value_.__r.__words[1] + 7);
        v21 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
        memset(&v40, 0, sizeof(v40));
        v27[0] = 0;
        *(&v29.__r_.__value_.__s + 23) = v21;
        if ((v37[7] & 0x80000000) != 0)
        {
          operator delete(v36[0]);
        }
      }
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v36, "Could not retrieve texture data");
    v14 = std::system_category();
    realityio::DetailedError::DetailedError(&v39, 0, v14, v36);
    v28 = v39;
    *&v29.__r_.__value_.__l.__data_ = *&v40.__r_.__value_.__l.__data_;
    *(&v29.__r_.__value_.__r.__words[1] + 7) = *(&v40.__r_.__value_.__r.__words[1] + 7);
    v15 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
    memset(&v40, 0, sizeof(v40));
    v27[0] = 0;
    *(&v29.__r_.__value_.__s + 23) = v15;
    if ((v37[7] & 0x80000000) != 0)
    {
      operator delete(v36[0]);
    }

    realityio::WrappedCFRef<__CFData const*>::~WrappedCFRef(&cf);
  }

  realityio::WrappedRERef<RETextureImportOperation0 *>::~WrappedRERef(&v42);
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (v27[0])
  {
    (**a2)(a2);
    v22 = REEngineGetServiceLocator();
    MEMORY[0x24C1A4230](v22);
    if (v6)
    {
      v23 = REMemoryAssetParametersCreate();
      if (v30)
      {
        RERelease();
      }

      v30 = v23;
      REMemoryAssetParametersSetAsyncRegistration();
      REMemoryAssetParametersSetAssetName();
      TextureAssetFromDataWithParameters = REAssetManagerCreateTextureAssetFromDataWithParameters();
      if (!v31)
      {
        goto LABEL_50;
      }
    }

    else
    {
      TextureAssetFromDataWithParameters = REAssetManagerCreateTextureAssetFromDataAsync();
      if (!v31)
      {
LABEL_50:
        v31 = TextureAssetFromDataWithParameters;
        if (TextureAssetFromDataWithParameters)
        {
          (*(*a2 + 24))(a2, &v32, &v31);
          (*(*a2 + 32))(a2, this + 24, this);
          (*(*a2 + 40))(a2, &v31);
          if (*(this + 47) < 0)
          {
            v25 = *(this + 3);
          }

          REAssetSetMetadataString();
          v26 = v31;
        }

        else
        {
          v26 = 0;
        }

        v31 = 0;
        a1->__r_.__value_.__s.__data_[0] = 1;
        a1->__r_.__value_.__l.__size_ = v26;
        *&v39 = 0;
        realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v39);
        goto LABEL_56;
      }
    }

    RERelease();
    goto LABEL_50;
  }

  v39 = v28;
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v40, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
  }

  else
  {
    v40 = v29;
  }

  a1->__r_.__value_.__s.__data_[0] = 0;
  *&a1->__r_.__value_.__r.__words[1] = v39;
  a1[1] = v40;
LABEL_56:
  realityio::Result<realityio::WrappedRERef<RETextureAssetData *>,realityio::DetailedError>::~Result(v27);
LABEL_57:
  realityio::WrappedRERef<REMemoryAssetParameters *>::~WrappedRERef(&v30);
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v31);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }
}

void sub_247606BF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, const void *a35, uint64_t a36)
{
  realityio::Result<realityio::WrappedRERef<RETextureImportOperation0 *>,realityio::DetailedError>::~Result(v36 - 160);
  realityio::WrappedCFRef<__CFData const*>::~WrappedCFRef(&a35);
  realityio::WrappedRERef<RETextureImportOperation0 *>::~WrappedRERef((v36 - 112));
  if (*(v36 - 81) < 0)
  {
    operator delete(*(v36 - 104));
  }

  realityio::WrappedRERef<REMemoryAssetParameters *>::~WrappedRERef(&a15);
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&a16);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

unint64_t *realityio::internal::TexturePrimToMaterialPrimMap::materialPathsUsingTexture(realityio::internal::TexturePrimToMaterialPrimMap *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, void *a3)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  result = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(a2, a3);
  v6 = result;
  if ((a2 + 8) != result)
  {
    result = std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::reserve(this, result[7]);
    v7 = v6[5];
    v8 = v6 + 6;
    if (v7 != v6 + 6)
    {
      v9 = *(this + 1);
      do
      {
        if (v9 >= *(this + 2))
        {
          result = std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::SdfPath const&>(this, v7 + 8);
          v9 = result;
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v9, v7 + 8);
          result = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v9++ + 1, v7 + 9);
        }

        *(this + 1) = v9;
        v10 = v7[1];
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
            v11 = v7[2];
            v12 = *v11 == v7;
            v7 = v11;
          }

          while (!v12);
        }

        v7 = v11;
      }

      while (v11 != v8);
    }
  }

  return result;
}

void sub_247606E44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *realityio::internal::TexturePrimToMaterialPrimMap::connectionsBetweenTextureAndMaterial(realityio::internal::TexturePrimToMaterialPrimMap *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v5 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(this, a2);
  if ((this + 8) == v5)
  {
    return 0;
  }

  v6 = v5 + 6;
  v7 = v5[6];
  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = v5 + 6;
  do
  {
    v9 = pxrInternal__aapl__pxrReserved__::SdfPath::operator<(v7 + 4, a3);
    if (v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = 0;
    }

    if (!v9)
    {
      v8 = v7;
    }

    v7 = v7[v10];
  }

  while (v7);
  if (v8 == v6 || pxrInternal__aapl__pxrReserved__::SdfPath::operator<(a3, v8 + 4))
  {
LABEL_12:
    v8 = v6;
  }

  if (v6 == v8)
  {
    return 0;
  }

  else
  {
    return v8 + 5;
  }
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath const,std::set<realityio::TextureImportOperationSettings>>::~pair(uint64_t a1)
{
  std::__tree<realityio::TextureImportOperationSettings>::destroy(a1 + 48, *(a1 + 56));
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

void realityio::TextureBuilder::~TextureBuilder(id *this)
{
  *this = &unk_285954208;
  realityio::TextureBuilder::TextureDataT::~TextureDataT(this + 35);
  *this = &unk_285943338;
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100]((this + 31));
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100]((this + 27));
  v2 = this[26];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = this[24];
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = this[23];
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::Builder::~Builder(this);
}

{
  *this = &unk_285954208;
  realityio::TextureBuilder::TextureDataT::~TextureDataT(this + 35);
  *this = &unk_285943338;
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100]((this + 31));
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100]((this + 27));
  v2 = this[26];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = this[24];
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = this[23];
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::Builder::~Builder(this);

  JUMPOUT(0x24C1A91B0);
}

std::string *realityio::TextureImportOperationSettings::TextureImportOperationSettings(std::string *this, const realityio::TextureImportOperationSettings *a2)
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

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = *(a2 + 3);
    this[2].__r_.__value_.__r.__words[2] = *(a2 + 8);
    *&this[2].__r_.__value_.__l.__data_ = v6;
  }

  v7 = *(a2 + 72);
  LOWORD(this[3].__r_.__value_.__r.__words[2]) = *(a2 + 44);
  *&this[3].__r_.__value_.__l.__data_ = v7;
  if (*(a2 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(this + 4, *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v8 = *(a2 + 6);
    this[4].__r_.__value_.__r.__words[2] = *(a2 + 14);
    *&this[4].__r_.__value_.__l.__data_ = v8;
  }

  return this;
}

void sub_2476071C4(_Unwind_Exception *a1)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  pxrInternal__aapl__pxrReserved__::SdfAssetPath::~SdfAssetPath(v1);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::__move_assign(uint64_t a1, void *a2)
{
  v4 = (a1 + 8);
  std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::destroy(a1, *(a1 + 8));
  *a1 = *a2;
  v5 = a2 + 1;
  v6 = a2[1];
  *v4 = v6;
  v7 = a2[2];
  *(a1 + 16) = v7;
  if (v7)
  {
    *(v6 + 16) = v4;
    *a2 = v5;
    *v5 = 0;
    a2[2] = 0;
  }

  else
  {
    *a1 = v4;
  }
}

void realityio::TextureBuilder::TextureDataT::~TextureDataT(id *this)
{
  std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::destroy((this + 2), this[3]);
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(this + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this);
}

void anonymous namespace::UsdUVTextureOutput::multipleMaterialStart(_anonymous_namespace_::UsdUVTextureOutput *this)
{
  v1 = (this + 192);
  std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::destroy(this + 184, *(this + 24));
  *v1 = 0;
  v1[1] = 0;
  *(v1 - 1) = v1;
}

uint64_t anonymous namespace::UsdUVTextureOutput::multipleMaterialInstance(_anonymous_namespace_::UsdUVTextureOutput *this)
{
  v2 = *(this + 22);
  __p.__r_.__value_.__r.__words[0] = &unk_285954358;
  __p.__r_.__value_.__l.__size_ = v2;
  if (v9.__r_.__value_.__s.__data_[0] == 1)
  {
    v3 = *(this + 20);
    v4 = *v3;
    v5 = v3[1];
    if (*v3 != v5)
    {
      do
      {
        std::pair<std::string,realityio::WrappedRERef<REAsset *>>::pair[abi:ne200100]<std::string const&,realityio::WrappedRERef<REAsset *>&,0>(&__p, v4, &v9.__r_.__value_.__l.__size_);
        std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,realityio::WrappedRERef<REAsset *>>>(this + 184, &__p.__r_.__value_.__l.__data_);
        realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v8);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v4 += 3;
      }

      while (v4 != v5);
    }
  }

  return realityio::Result<realityio::WrappedRERef<REAsset *>,realityio::DetailedError>::~Result(&v9);
}

void sub_2476073E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  realityio::Result<realityio::WrappedRERef<REAsset *>,realityio::DetailedError>::~Result(va);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::UsdUVTextureOutput::singleMaterialInstance(_anonymous_namespace_::UsdUVTextureOutput *this)
{
  v2 = *(this + 22);
  v23[0] = &unk_285954358;
  v23[1] = v2;
  if (v15[0].__r_.__value_.__s.__data_[0] == 1)
  {
    v4 = *(this + 21);
    v6 = v5 = *(this + 18);
    std::ostringstream::basic_ostringstream[abi:ne200100](v23);
    v7 = pxrInternal__aapl__pxrReserved__::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "_texture_", 9);
    size = v15[0].__r_.__value_.__l.__size_;
    if (v15[0].__r_.__value_.__l.__size_)
    {
      RERetain();
    }

    std::stringbuf::str();
    if (SHIBYTE(v20) >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    realityio::Builder::addAsset(v4, &size, v8);
    if (SHIBYTE(v20) < 0)
    {
      operator delete(__p[0]);
    }

    realityio::WrappedRERef<REAsset *>::~WrappedRERef(&size);
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::GetPath(v5, &v17);
    v16 = v15[0].__r_.__value_.__l.__size_;
    if (v15[0].__r_.__value_.__l.__size_)
    {
      RERetain();
    }

    v9 = v6;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(__p, &v17);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(__p + 1, &v18);
    v21[0] = 0;
    v21[1] = 0;
    __p[1] = 0;
    v20 = v21;
    v10 = (v4 + 280);
    v21[2] = v9;
    realityio::TextureBuilder::TextureDataT::operator=(v4 + 280, __p);
    realityio::TextureBuilder::TextureDataT::~TextureDataT(__p);
    realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v16);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    v11 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v17);
    v13 = *(v4 + 16);
    v12 = *(v4 + 24);
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    realityio::TextureBuilder::kOutputName(v11);
    __p[0] = v10;
    realityio::Outputs::storeValue<realityio::TextureBuilder::TextureDataT *>(v13);
  }

  return realityio::Result<realityio::WrappedRERef<REAsset *>,realityio::DetailedError>::~Result(v15);
}

void sub_2476076EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a17);
  std::ostringstream::~ostringstream(&a31, MEMORY[0x277D82828]);
  MEMORY[0x24C1A9110](&a47);

  realityio::Result<realityio::WrappedRERef<REAsset *>,realityio::DetailedError>::~Result(&a9);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::TextureAssetInstance::TextureAssetInstance(uint64_t a1, const std::string *a2, uint64_t a3)
{
  v6 = pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(a1);
  std::string::basic_string[abi:ne200100]<0>((v6 + 48), "");
  v7 = realityio::TextureSwizzleChannels::kDefault;
  *(a1 + 72) = 0;
  *(a1 + 76) = v7;
  *(a1 + 80) = 2;
  *(a1 + 84) = 0;
  *(a1 + 88) = 512;
  std::string::basic_string[abi:ne200100]<0>((a1 + 96), "");
  *(a1 + 120) = a3;
  std::string::operator=((a1 + 96), a2);
  return a1;
}

std::string *std::pair<std::string,realityio::WrappedRERef<REAsset *>>::pair[abi:ne200100]<std::string const&,realityio::WrappedRERef<REAsset *>&,0>(std::string *this, __int128 *a2, std::string::size_type *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  v6 = *a3;
  this[1].__r_.__value_.__r.__words[0] = *a3;
  if (v6)
  {
    RERetain();
  }

  return this;
}

void sub_2476078D4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::pair<std::string const,realityio::WrappedRERef<REAsset *>>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  v5 = *(a2 + 3);
  this[1].__r_.__value_.__r.__words[0] = v5;
  if (v5)
  {
    RERetain();
  }

  return this;
}

void sub_247607950(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::getSamplerAddressMode(_anonymous_namespace_ *this, pxrInternal__aapl__pxrReserved__::UsdAttribute *a2)
{
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this))
  {
    v3 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::TfToken>();
  }

  return 2;
}

void sub_247607B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if ((a12 & 7) != 0)
  {
    atomic_fetch_add_explicit((a12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t realityio::TextureBuilder::TextureDataT::TextureDataT(uint64_t a1, _DWORD *a2, void *a3, void *a4)
{
  v7 = a4;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a1, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 4), a2 + 1);
  *(a1 + 8) = 0;
  *(a1 + 16) = *a3;
  v9 = a3 + 1;
  v8 = a3[1];
  *(a1 + 24) = v8;
  v10 = a1 + 24;
  v11 = a3[2];
  *(a1 + 32) = v11;
  if (v11)
  {
    v12 = 0;
    *(v8 + 16) = v10;
    *a3 = v9;
    *v9 = 0;
    a3[2] = 0;
  }

  else
  {
    *(a1 + 16) = v10;
    v12 = *v9;
  }

  *(a1 + 40) = v7;
  std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::destroy(a3, v12);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = v9;
  return a1;
}

void anonymous namespace::makeImportSettingsForAsset(uint64_t a1, const std::string *a2, uint64_t a3, uint64_t a4, pxrInternal__aapl__pxrReserved__::UsdObject *a5, unsigned __int8 **a6)
{
  v168 = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(&v147);
  std::string::basic_string[abi:ne200100]<0>(&v149, "");
  LODWORD(v150) = 0;
  DWORD1(v150) = realityio::TextureSwizzleChannels::kDefault;
  BYTE8(v150) = 2;
  HIDWORD(v150) = 0;
  v151 = 512;
  std::string::basic_string[abi:ne200100]<0>(&v152, "");
  if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a3) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "Attribute is not valid");
    v13 = std::system_category();
    realityio::DetailedError::DetailedError(&v158, 0, v13, &__p);
    *(a1 + 8) = *&v158.__r_.__value_.__l.__data_;
    v14 = v158.__r_.__value_.__r.__words[2];
    *&v164 = v159;
    *(&v164 + 7) = *(&v159 + 7);
    v15 = HIBYTE(v159);
    v159 = 0uLL;
    v158.__r_.__value_.__r.__words[2] = 0;
    *a1 = 0;
    *(a1 + 39) = *(&v164 + 7);
    v16 = v164;
    *(a1 + 24) = v14;
    *(a1 + 32) = v16;
    *(a1 + 47) = v15;
    if (SHIBYTE(v155) < 0)
    {
      operator delete(__p);
    }

    goto LABEL_360;
  }

  LODWORD(v164) = *a3;
  v11 = *(a3 + 8);
  *(&v164 + 1) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 48), 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v165, (a3 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v166, (a3 + 20));
  v12 = *(a3 + 24);
  v167 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v167 &= 0xFFFFFFFFFFFFFFF8;
  }

  if (*(a4 + 23) < 0)
  {
    if (*(a4 + 8))
    {
      goto LABEL_44;
    }
  }

  else if (*(a4 + 23))
  {
    goto LABEL_44;
  }

  realityio::findOriginalSourceAttribute(a3, &v158);
  LODWORD(v164) = v158.__r_.__value_.__l.__data_;
  if (*(&v164 + 1))
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v164 + 1));
  }

  *(&v164 + 1) = v158.__r_.__value_.__l.__size_;
  v158.__r_.__value_.__l.__size_ = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v165, &v158.__r_.__value_.__r.__words[2]);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v166, &v158.__r_.__value_.__r.__words[2] + 1);
  if ((v167 & 7) != 0)
  {
    atomic_fetch_add_explicit((v167 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v167 = v159;
  *&v159 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v158.__r_.__value_.__r.__words[2]);
  if (v158.__r_.__value_.__l.__size_)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v158.__r_.__value_.__l.__size_);
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&__p, &v164 + 1, &v165);
  MEMORY[0x24C1A5DE0](v157, "info:id");
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&v158, &__p, v157);
  if ((v157[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((*v157 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v156 & 7) != 0)
  {
    atomic_fetch_add_explicit((v156 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v155);
  if (*(&__p + 1))
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&__p + 1));
  }

  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v158))
  {
    *v157 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::TfToken>();
  }

  if ((v159 & 7) != 0)
  {
    atomic_fetch_add_explicit((v159 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v158.__r_.__value_.__r.__words[2]);
  if (v158.__r_.__value_.__l.__size_)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v158.__r_.__value_.__l.__size_);
  }

  LODWORD(v160) = v164;
  *(&v160 + 1) = *(&v164 + 1);
  if (*(&v164 + 1))
  {
    atomic_fetch_add_explicit((*(&v164 + 1) + 48), 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v161, &v165);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v162, &v166);
  v163 = v167;
  if ((v167 & 7) != 0 && (atomic_fetch_add_explicit((v167 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v163 &= 0xFFFFFFFFFFFFFFF8;
  }

  LODWORD(v164) = v160;
  if (*(&v164 + 1))
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v164 + 1));
  }

  *(&v164 + 1) = *(&v160 + 1);
  *(&v160 + 1) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v165, &v161);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v166, &v162);
  if ((v167 & 7) != 0)
  {
    atomic_fetch_add_explicit((v167 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v167 = v163;
  v163 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v161);
  if (*(&v160 + 1))
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v160 + 1));
  }

  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(&v164, &v158);
  if (v158.__r_.__value_.__s.__data_[0] != 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&v160, "Attribute is not an asset path");
    v27 = std::system_category();
    realityio::DetailedError::DetailedError(&__p, 0, v27, &v160);
    *(a1 + 8) = __p;
    v28 = v155;
    *v157 = v156;
    *&v157[7] = *(&v156 + 7);
    v29 = HIBYTE(v156);
    v156 = 0uLL;
    v155 = 0;
    *a1 = 0;
    *(a1 + 39) = *&v157[7];
    v30 = *v157;
    *(a1 + 24) = v28;
    *(a1 + 32) = v30;
    *(a1 + 47) = v29;
    if (SHIBYTE(v162) < 0)
    {
      operator delete(v160);
    }

    realityio::Result<pxrInternal__aapl__pxrReserved__::SdfAssetPath,realityio::DetailedError>::~Result(&v158);
    goto LABEL_356;
  }

  std::string::operator=(a4, &v158.__r_.__value_.__r.__words[1]);
  std::string::operator=((a4 + 24), (&v159 + 8));
  realityio::Result<pxrInternal__aapl__pxrReserved__::SdfAssetPath,realityio::DetailedError>::~Result(&v158);
LABEL_44:
  std::string::operator=(&v147, a4);
  std::string::operator=(&v148, (a4 + 24));
  std::string::operator=(&v152, a2);
  ColorSpace = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetColorSpace(&v153, &v164);
  if ((v153 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v153 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(ColorSpace);
  }

  std::string::operator=(&v149, EmptyString);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetCustomData(&v146, &v164);
  std::string::basic_string[abi:ne200100]<0>(&v158, "downsampleFactor");
  ValueAtPath = pxrInternal__aapl__pxrReserved__::VtDictionary::GetValueAtPath();
  v20 = ValueAtPath;
  if (SHIBYTE(v158.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v158.__r_.__value_.__l.__data_);
    if (!v20)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

  if (ValueAtPath)
  {
LABEL_51:
    HIDWORD(v150) = *pxrInternal__aapl__pxrReserved__::VtValue::Get<int>(v20);
  }

LABEL_52:
  std::string::basic_string[abi:ne200100]<0>(&v158, "RealityKit:compression");
  v21 = pxrInternal__aapl__pxrReserved__::VtDictionary::GetValueAtPath();
  v22 = v21;
  if ((SHIBYTE(v158.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (!v21)
    {
      goto LABEL_72;
    }

LABEL_56:
    if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<std::string>(v22))
    {
      v23 = pxrInternal__aapl__pxrReserved__::VtValue::Get<std::string>(v22);
      if (*(v23 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v158, *v23, *(v23 + 8));
      }

      else
      {
        v24 = *v23;
        v158.__r_.__value_.__r.__words[2] = *(v23 + 16);
        *&v158.__r_.__value_.__l.__data_ = v24;
      }

      MEMORY[0x24C1A5E00](&__p, &v158);
      realityio::TextureCompression::TextureCompression(&v160, &__p);
      HIBYTE(v151) = v160;
      if ((__p & 7) != 0)
      {
        atomic_fetch_add_explicit((__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (SHIBYTE(v158.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v158.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v25 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::TfToken>(v22);
      if ((v25 & 7) != 0 && (atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v25 &= 0xFFFFFFFFFFFFFFF8;
      }

      v26 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::TfToken>(v22);
      realityio::TextureCompression::TextureCompression(&v158, v26);
      HIBYTE(v151) = v158.__r_.__value_.__s.__data_[0];
      if ((v25 & 7) != 0)
      {
        atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    goto LABEL_72;
  }

  operator delete(v158.__r_.__value_.__l.__data_);
  if (v22)
  {
    goto LABEL_56;
  }

LABEL_72:
  LODWORD(v150) = 6;
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a5))
  {
    if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
    {
      if (!v149.__r_.__value_.__l.__size_)
      {
        goto LABEL_77;
      }
    }

    else if (!*(&v149.__r_.__value_.__s + 23))
    {
LABEL_77:
      v158.__r_.__value_.__r.__words[0] = 0;
      pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::TfToken>();
    }
  }

  v31 = *a6;
  v32 = a6[1];
  v33 = *a6;
  if (v32 == *a6)
  {
    v81 = 0;
    DWORD1(v150) = realityio::TextureSwizzleChannels::kDefault;
    LOBYTE(v151) = 0;
    goto LABEL_253;
  }

  v139 = a1;
  v34 = realityio::TextureSwizzleChannels::fromOutputSourceName(v33 + 24);
  v35 = BYTE1(v34);
  DWORD1(v150) = v34;
  v36 = v34;
  v37 = BYTE2(v34);
  v38 = HIBYTE(v34);
  v40 = 0;
  v143 = BYTE1(realityio::TextureSwizzleChannels::kDefault);
  v144 = realityio::TextureSwizzleChannels::kDefault;
  LOBYTE(v151) = shouldRestrictTo8bits;
  v145 = realityio::TextureSwizzleChannels::kDefault;
  v141 = HIBYTE(realityio::TextureSwizzleChannels::kDefault);
  v142 = BYTE2(realityio::TextureSwizzleChannels::kDefault);
  v41 = v150;
  do
  {
    v42 = &v33[v40];
    v43 = v33[v40 + 23];
    if (v33[v40 + 23] < 0)
    {
      v45 = *(v42 + 1);
      if (v45 != 6)
      {
        if (v45 != 12)
        {
          if (v45 == 13 && **v42 == 0x6576697373696D65 && *(*v42 + 5) == 0x726F6C6F43657669)
          {
LABEL_99:
            v48 = 4;
            v49 = 2;
            goto LABEL_197;
          }

          goto LABEL_117;
        }

        v44 = *v42;
        goto LABEL_107;
      }

      if (**v42 == 1836216174 && *(*v42 + 4) == 27745)
      {
LABEL_137:
        v48 = 5;
        v49 = 4;
        goto LABEL_197;
      }
    }

    else
    {
      if (v43 != 6)
      {
        if (v43 == 13)
        {
          if (*v42 == 0x6576697373696D65 && *(v42 + 5) == 0x726F6C6F43657669)
          {
            goto LABEL_99;
          }

          goto LABEL_117;
        }

        v44 = &v33[v40];
        if (v43 != 12)
        {
          goto LABEL_117;
        }

LABEL_107:
        v51 = *v44;
        v52 = *(v44 + 2);
        if (v51 == 0x4365737566666964 && v52 == 1919904879)
        {
          v48 = 3;
          v49 = 3;
          goto LABEL_197;
        }

        goto LABEL_117;
      }

      if (*v42 == 1836216174 && *(v42 + 2) == 27745)
      {
        goto LABEL_137;
      }
    }

LABEL_117:
    v55 = v33[v40 + 47];
    if (v55 < 0)
    {
      if (*&v33[v40 + 32] != 1)
      {
        goto LABEL_196;
      }

      v56 = *&v33[v40 + 24];
    }

    else
    {
      v56 = &v33[v40 + 24];
      if (v55 != 1)
      {
        goto LABEL_196;
      }
    }

    if (*v56 != 114)
    {
      goto LABEL_196;
    }

    if ((v43 & 0x80) == 0)
    {
      if (v33[v40 + 23] > 8u)
      {
        if (v43 != 9)
        {
          if (v43 == 13)
          {
            if (*v42 == 0x72616C7563657073 && *(v42 + 5) == 0x726F6C6F4372616CLL)
            {
              goto LABEL_183;
            }
          }

          else if (v43 == 18)
          {
            v57 = *v42 == 0x616F637261656C63 && *(v42 + 1) == 0x656E6867756F5274;
            if (v57 && *(v42 + 8) == 29555)
            {
              goto LABEL_183;
            }
          }

          goto LABEL_196;
        }

        if (*v42 == 0x73656E6867756F72 && v42[8] == 115)
        {
          goto LABEL_183;
        }

        if (*v42 == 0x6F6973756C63636FLL && v42[8] == 110)
        {
          goto LABEL_183;
        }

        v67 = v42[8];
        v68 = *v42 == 0x616F637261656C63;
        v69 = 116;
        goto LABEL_192;
      }

      v63 = &v33[v40];
      if (v43 != 7)
      {
        if (v43 != 8)
        {
          goto LABEL_196;
        }

        v64 = *v42;
        goto LABEL_152;
      }

      goto LABEL_191;
    }

    v59 = *&v33[v40 + 8];
    if (v59 <= 8)
    {
      if (v59 != 7)
      {
        if (v59 != 8)
        {
          goto LABEL_196;
        }

        v64 = **v42;
LABEL_152:
        if (v64 == 0x63696C6C6174656DLL)
        {
          goto LABEL_183;
        }

        goto LABEL_196;
      }

      v63 = *v42;
LABEL_191:
      v77 = *v63;
      v67 = *(v63 + 3);
      v68 = v77 == 1667330159;
      v69 = 2037672291;
LABEL_192:
      if (v68 && v67 == v69)
      {
        goto LABEL_183;
      }

      goto LABEL_196;
    }

    if (v59 == 9)
    {
      v71 = *v42;
      v72 = **v42 == 0x73656E6867756F72 && *(*v42 + 8) == 115;
      if (v72 || (*v71 == 0x6F6973756C63636FLL ? (v73 = *(v71 + 8) == 110) : (v73 = 0), v73))
      {
LABEL_183:
        v48 = 2;
        v49 = 1;
        goto LABEL_197;
      }

      v74 = *v71;
      v60 = *(v71 + 8);
      v61 = v74 == 0x616F637261656C63;
      v62 = 116;
LABEL_178:
      if (v61 && v60 == v62)
      {
        goto LABEL_183;
      }

      goto LABEL_196;
    }

    if (v59 != 13)
    {
      if (v59 != 18)
      {
        goto LABEL_196;
      }

      v60 = *(*v42 + 16);
      v61 = **v42 == 0x616F637261656C63 && *(*v42 + 8) == 0x656E6867756F5274;
      v62 = 29555;
      goto LABEL_178;
    }

    if (**v42 == 0x72616C7563657073 && *(*v42 + 5) == 0x726F6C6F4372616CLL)
    {
      goto LABEL_183;
    }

LABEL_196:
    v49 = 0;
    v48 = 6;
LABEL_197:
    if (v41 > 5)
    {
      v79 = 0;
    }

    else
    {
      v79 = qword_247764548[v41];
    }

    if (v49 > v79)
    {
      LODWORD(v150) = v48;
      v41 = v48;
    }

    v80 = realityio::TextureSwizzleChannels::fromOutputSourceName(&v33[v40 + 24]);
    if (v36 != v80 || v35 != BYTE1(v80) || v37 != BYTE2(v80) || v38 != HIBYTE(v80))
    {
      v36 = v144;
      DWORD1(v150) = v145;
      v38 = v141;
      v37 = v142;
      v35 = v143;
    }

    v40 += 48;
  }

  while (&v33[v40] != v32);
  v81 = 0;
  a1 = v139;
  do
  {
    if ((v33[23] & 0x80000000) == 0)
    {
      v82 = v33[23];
      if (v82 != 8)
      {
        if (v82 != 9)
        {
          v83 = v33;
          if (v82 != 13)
          {
            goto LABEL_250;
          }

          goto LABEL_218;
        }

        if (*v33 == 0x73656E6867756F72 && v33[8] == 115)
        {
          goto LABEL_246;
        }

        if (*v33 == 0x6F6973756C63636FLL && v33[8] == 110)
        {
          goto LABEL_245;
        }

        goto LABEL_250;
      }

      v90 = *v33;
LABEL_248:
      if (v90 == 0x63696C6C6174656DLL)
      {
        v81 |= 4u;
      }

      goto LABEL_250;
    }

    v84 = *(v33 + 1);
    if (v84 == 8)
    {
      v90 = **v33;
      goto LABEL_248;
    }

    if (v84 != 9)
    {
      if (v84 != 13)
      {
        goto LABEL_250;
      }

      v83 = *v33;
LABEL_218:
      v85 = bswap64(*v83);
      v86 = 0x73706563756C6172;
      if (v85 == 0x73706563756C6172 && (v85 = bswap64(*(v83 + 5)), v86 = 0x6C6172436F6C6F72, v85 == 0x6C6172436F6C6F72))
      {
        v87 = 0;
      }

      else if (v85 < v86)
      {
        v87 = -1;
      }

      else
      {
        v87 = 1;
      }

      v81 |= v87 == 0;
      goto LABEL_250;
    }

    v91 = *v33;
    if (**v33 == 0x73656E6867756F72 && *(*v33 + 8) == 115)
    {
LABEL_246:
      v81 |= 8u;
      goto LABEL_250;
    }

    v93 = *v91;
    v94 = *(v91 + 8);
    if (v93 == 0x6F6973756C63636FLL && v94 == 110)
    {
LABEL_245:
      v81 |= 2u;
    }

LABEL_250:
    v33 += 48;
  }

  while (v33 != v32);
  v81 = v81;
LABEL_253:
  if ((vmaxv_u16(vmovn_s32(vceqq_s32(vandq_s8(vdupq_n_s32(v81), xmmword_247764000), xmmword_247764000))) & 1) != 0 || (v81 & 5) == 5 || (v81 & 3) == 3)
  {
    LOBYTE(v151) = 0;
    LODWORD(v150) = 6;
    std::string::basic_string[abi:ne200100]<0>(&__p, "roughness");
    v96 = *a6;
    v97 = a6[1];
    if (*a6 != v97)
    {
      if (v155 >= 0)
      {
        v98 = HIBYTE(v155);
      }

      else
      {
        v98 = *(&__p + 1);
      }

      if (v155 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      while (1)
      {
        v100 = v96[23];
        v101 = v100;
        if ((v100 & 0x80u) != 0)
        {
          v100 = *(v96 + 1);
        }

        if (v100 == v98)
        {
          v102 = v101 >= 0 ? v96 : *v96;
          if (!memcmp(v102, p_p, v98))
          {
            break;
          }
        }

        v96 += 48;
        if (v96 == v97)
        {
          goto LABEL_275;
        }
      }
    }

    if (v96 == v97)
    {
LABEL_275:
      memset(&v158, 0, sizeof(v158));
    }

    else if (v96[47] < 0)
    {
      std::string::__init_copy_ctor_external(&v158, *(v96 + 3), *(v96 + 4));
    }

    else
    {
      v158 = *(v96 + 1);
    }

    BYTE4(v150) = realityio::TextureSwizzleChannels::channelFromChar(&v158);
    if (SHIBYTE(v158.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v158.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v155) < 0)
    {
      operator delete(__p);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "metallic");
    v103 = *a6;
    v104 = a6[1];
    if (*a6 != v104)
    {
      if (v155 >= 0)
      {
        v105 = HIBYTE(v155);
      }

      else
      {
        v105 = *(&__p + 1);
      }

      if (v155 >= 0)
      {
        v106 = &__p;
      }

      else
      {
        v106 = __p;
      }

      while (1)
      {
        v107 = v103[23];
        v108 = v107;
        if ((v107 & 0x80u) != 0)
        {
          v107 = *(v103 + 1);
        }

        if (v107 == v105)
        {
          v109 = v108 >= 0 ? v103 : *v103;
          if (!memcmp(v109, v106, v105))
          {
            break;
          }
        }

        v103 += 48;
        if (v103 == v104)
        {
          goto LABEL_299;
        }
      }
    }

    if (v103 == v104)
    {
LABEL_299:
      memset(&v158, 0, sizeof(v158));
    }

    else if (v103[47] < 0)
    {
      std::string::__init_copy_ctor_external(&v158, *(v103 + 3), *(v103 + 4));
    }

    else
    {
      v158 = *(v103 + 1);
    }

    BYTE5(v150) = realityio::TextureSwizzleChannels::channelFromChar(&v158);
    if (SHIBYTE(v158.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v158.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v155) < 0)
    {
      operator delete(__p);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "occlusion");
    v110 = *a6;
    v111 = a6[1];
    if (*a6 != v111)
    {
      if (v155 >= 0)
      {
        v112 = HIBYTE(v155);
      }

      else
      {
        v112 = *(&__p + 1);
      }

      if (v155 >= 0)
      {
        v113 = &__p;
      }

      else
      {
        v113 = __p;
      }

      while (1)
      {
        v114 = v110[23];
        v115 = v114;
        if ((v114 & 0x80u) != 0)
        {
          v114 = *(v110 + 1);
        }

        if (v114 == v112)
        {
          v116 = v115 >= 0 ? v110 : *v110;
          if (!memcmp(v116, v113, v112))
          {
            break;
          }
        }

        v110 += 48;
        if (v110 == v111)
        {
          goto LABEL_323;
        }
      }
    }

    if (v110 == v111)
    {
LABEL_323:
      memset(&v158, 0, sizeof(v158));
    }

    else if (v110[47] < 0)
    {
      std::string::__init_copy_ctor_external(&v158, *(v110 + 3), *(v110 + 4));
    }

    else
    {
      v158 = *(v110 + 1);
    }

    BYTE6(v150) = realityio::TextureSwizzleChannels::channelFromChar(&v158);
    if (SHIBYTE(v158.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v158.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v155) < 0)
    {
      operator delete(__p);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "specularColor");
    v117 = *a6;
    v118 = a6[1];
    if (*a6 != v118)
    {
      if (v155 >= 0)
      {
        v119 = HIBYTE(v155);
      }

      else
      {
        v119 = *(&__p + 1);
      }

      if (v155 >= 0)
      {
        v120 = &__p;
      }

      else
      {
        v120 = __p;
      }

      while (1)
      {
        v121 = v117[23];
        v122 = v121;
        if ((v121 & 0x80u) != 0)
        {
          v121 = *(v117 + 1);
        }

        if (v121 == v119)
        {
          v123 = v122 >= 0 ? v117 : *v117;
          if (!memcmp(v123, v120, v119))
          {
            break;
          }
        }

        v117 += 48;
        if (v117 == v118)
        {
          goto LABEL_347;
        }
      }
    }

    if (v117 == v118)
    {
LABEL_347:
      memset(&v158, 0, sizeof(v158));
    }

    else if (v117[47] < 0)
    {
      std::string::__init_copy_ctor_external(&v158, *(v117 + 3), *(v117 + 4));
    }

    else
    {
      v158 = *(v117 + 1);
    }

    BYTE7(v150) = realityio::TextureSwizzleChannels::channelFromChar(&v158);
    if (SHIBYTE(v158.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v158.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v155) < 0)
    {
      operator delete(__p);
    }
  }

  v158.__r_.__value_.__r.__words[0] = v147.__r_.__value_.__l.__size_;
  v124 = v147.__r_.__value_.__r.__words[0];
  *(v158.__r_.__value_.__r.__words + 7) = *(&v147.__r_.__value_.__r.__words[1] + 7);
  v125 = HIBYTE(v147.__r_.__value_.__r.__words[2]);
  memset(&v147, 0, sizeof(v147));
  *&__p = v148.__r_.__value_.__l.__size_;
  v126 = v148.__r_.__value_.__r.__words[0];
  *(&__p + 7) = *(&v148.__r_.__value_.__r.__words[1] + 7);
  v127 = HIBYTE(v148.__r_.__value_.__r.__words[2]);
  memset(&v148, 0, sizeof(v148));
  v128 = v149.__r_.__value_.__r.__words[0];
  *(&v160 + 7) = *(&v149.__r_.__value_.__r.__words[1] + 7);
  *&v160 = v149.__r_.__value_.__l.__size_;
  v129 = HIBYTE(v149.__r_.__value_.__r.__words[2]);
  memset(&v149, 0, sizeof(v149));
  v130 = v150;
  *(a1 + 96) = v151;
  *(a1 + 80) = v130;
  v131 = v152.__r_.__value_.__r.__words[0];
  *&v157[7] = *(&v152.__r_.__value_.__r.__words[1] + 7);
  *v157 = v152.__r_.__value_.__l.__size_;
  v132 = HIBYTE(v152.__r_.__value_.__r.__words[2]);
  memset(&v152, 0, sizeof(v152));
  *a1 = 1;
  v133 = v158.__r_.__value_.__r.__words[0];
  *(a1 + 23) = *(v158.__r_.__value_.__r.__words + 7);
  *(a1 + 8) = v124;
  *(a1 + 16) = v133;
  *(a1 + 31) = v125;
  v134 = __p;
  *(a1 + 47) = *(&__p + 7);
  *(a1 + 32) = v126;
  *(a1 + 40) = v134;
  *(a1 + 55) = v127;
  v135 = v160;
  *(a1 + 71) = *(&v160 + 7);
  *(a1 + 56) = v128;
  *(a1 + 64) = v135;
  *(a1 + 79) = v129;
  v136 = *v157;
  *(a1 + 119) = *&v157[7];
  *(a1 + 104) = v131;
  *(a1 + 112) = v136;
  *(a1 + 127) = v132;
  v137 = v146;
  v146 = 0;
  if (v137)
  {
    std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<void>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(v137, *(v137 + 8));
    MEMORY[0x24C1A91B0](v137, 0x1020C4062D53EE8);
  }

  if ((v153 & 7) != 0)
  {
    atomic_fetch_add_explicit((v153 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

LABEL_356:
  if ((v167 & 7) != 0)
  {
    atomic_fetch_add_explicit((v167 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v165);
  if (*(&v164 + 1))
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v164 + 1));
  }

LABEL_360:
  if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v152.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v149.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v148.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v148.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v147.__r_.__value_.__l.__data_);
  }

  v138 = *MEMORY[0x277D85DE8];
}

void sub_247609170(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL anonymous namespace::shouldRestrictTo8bits(void *a1, uint64_t **a2)
{
  v2 = *(a2 + 23);
  if (v2 < 0)
  {
    if (a2[1] != 1)
    {
      return 0;
    }

    a2 = *a2;
  }

  else if (v2 != 1)
  {
    return 0;
  }

  if (*a2 != 114)
  {
    return 0;
  }

  if (*(a1 + 23) < 0)
  {
    v8 = a1[1];
    if (v8 == 8)
    {
      if (**a1 == 0x63696C6C6174656DLL)
      {
        return 1;
      }
    }

    else if (v8 == 9)
    {
      v11 = *a1;
      if (**a1 == 0x73656E6867756F72 && *(*a1 + 8) == 115)
      {
        return 1;
      }

      if (*v11 == 0x6F6973756C63636FLL && *(v11 + 8) == 110)
      {
        return 1;
      }

      v14 = *v11;
      v15 = *(v11 + 8);
      if (v14 == 0x616F637261656C63 && v15 == 116)
      {
        return 1;
      }
    }

    else if (v8 == 13 && **a1 == 0x72616C7563657073 && *(*a1 + 5) == 0x726F6C6F4372616CLL)
    {
      return 1;
    }

    if (a1[1] == 18)
    {
      a1 = *a1;
      return *a1 == 0x616F637261656C63 && a1[1] == 0x656E6867756F5274 && *(a1 + 8) == 29555;
    }

    return 0;
  }

  v3 = 0;
  v4 = *(a1 + 23);
  if (v4 > 0xC)
  {
    if (v4 == 13)
    {
      return *a1 == 0x72616C7563657073 && *(a1 + 5) == 0x726F6C6F4372616CLL;
    }

    if (v4 != 18)
    {
      return v3;
    }

    return *a1 == 0x616F637261656C63 && a1[1] == 0x656E6867756F5274 && *(a1 + 8) == 29555;
  }

  if (v4 == 8)
  {
    return *a1 == 0x63696C6C6174656DLL;
  }

  if (v4 != 9)
  {
    return v3;
  }

  if (*a1 == 0x73656E6867756F72 && *(a1 + 8) == 115)
  {
    return 1;
  }

  if (*a1 == 0x6F6973756C63636FLL && *(a1 + 8) == 110)
  {
    return 1;
  }

  return *a1 == 0x616F637261656C63 && *(a1 + 8) == 116;
}

realityio::TextureCompression *realityio::TextureCompression::TextureCompression(realityio::TextureCompression *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  if (pxrInternal__aapl__pxrReserved__::TfToken::operator==())
  {
    v3 = 0;
  }

  else if (pxrInternal__aapl__pxrReserved__::TfToken::operator==())
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  *this = v3;
  return this;
}

void MtlxImageShaderOutput::~MtlxImageShaderOutput(MtlxImageShaderOutput *this)
{
  *this = &unk_285954280;
  std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::destroy(this + 160, *(this + 21));
  if (*(this + 127) < 0)
  {
    operator delete(*(this + 13));
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void *anonymous namespace::InputsContext::insertTextureIntoCache(uint64_t a1, __int128 *a2, std::string::size_type *a3)
{
  v4 = *(*(a1 + 8) + 40);
  v6 = *a3;
  if (v6)
  {
    RERetain();
  }

  std::mutex::lock((v4 + 88));
  std::pair<std::string,realityio::WrappedRERef<REAsset *>>::pair[abi:ne200100]<std::string const&,realityio::WrappedRERef<REAsset *>&,0>(&__p, a2, &v6);
  std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,realityio::WrappedRERef<REAsset *>>>(v4 + 64, &__p.__r_.__value_.__l.__data_);
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::mutex::unlock((v4 + 88));
  return realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v6);
}

void sub_2476097E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  std::pair<std::string,realityio::WrappedRERef<REAsset *>>::~pair(va1);
  std::mutex::unlock((v2 + 88));
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(va);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::InputsContext::queueForDeferredAssetLoad(uint64_t a1)
{
  result = *(*(*(*(a1 + 8) + 40) + 16) + 40);
  if (result)
  {
    realityio::LiveSceneManager::queueForDeferredAssetLoad();
  }

  return result;
}

void realityio::ImportSession::getTextureAssetWithKey(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  std::mutex::lock((a1 + 88));
  v6 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(a1 + 64, a2);
  if (a1 + 72 == v6)
  {
    *a3 = 0;
  }

  else
  {
    v7 = *(v6 + 56);
    *a3 = v7;
    if (v7)
    {
      RERetain();
    }
  }

  std::mutex::unlock((a1 + 88));
}

uint64_t std::string::compare[abi:ne200100](const void **a1, _BYTE *a2)
{
  v2 = a2[23];
  v3 = *(a1 + 23);
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = a1;
    a1 = *a1;
    v3 = v4[1];
  }

  if (v2 >= 0)
  {
    v5 = a2[23];
  }

  else
  {
    v5 = *(a2 + 1);
  }

  if (v2 < 0)
  {
    a2 = *a2;
  }

  if (v5 >= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  LODWORD(result) = memcmp(a1, a2, v6);
  if (v3 < v5)
  {
    v8 = -1;
  }

  else
  {
    v8 = v5 < v3;
  }

  if (result)
  {
    return result;
  }

  else
  {
    return v8;
  }
}

void GatheringDestination::instance(uint64_t a1, realityio::TextureImportOperationSettings *this)
{
  realityio::TextureImportOperationSettings::makeTextureResourceKey(this, &v26);
  v4 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(a1 + 40, &v26.__r_.__value_.__l.__data_);
  if ((a1 + 48) == v4)
  {
    pxrInternal__aapl__pxrReserved__::ArGetResolver(v4);
    Extension = pxrInternal__aapl__pxrReserved__::ArResolver::GetExtension();
    v8 = v25;
    v9 = v25;
    if ((v25 & 0x80u) != 0)
    {
      v8 = v24;
    }

    if (v8)
    {
      pxrInternal__aapl__pxrReserved__::ArGetResolver(Extension);
      if (*(this + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v17, *(this + 3), *(this + 4));
      }

      else
      {
        v17 = *(this + 1);
      }

      pxrInternal__aapl__pxrReserved__::ArResolver::OpenAsset();
      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v17.__r_.__value_.__l.__data_);
      }

      if (v21)
      {
        (*(*v21 + 24))(&v19);
        cf = 0;
        v10 = v19;
        v11 = (*(*v21 + 16))(v21);
        v12 = CFDataCreateWithBytesNoCopy(0, v10, v11, *MEMORY[0x277CBED00]);
        if (cf)
        {
          CFRelease(cf);
        }

        cf = v12;
        if (v12)
        {
          v13 = *(a1 + 32);
          v16 = v12;
          CFRetain(v12);
          realityio::createRETextureImportOperation(v13, &v16, this, &v17);
          realityio::WrappedCFRef<__CFData const*>::~WrappedCFRef(&v16);
          if (v17.__r_.__value_.__s.__data_[0] == 1)
          {
            v14 = (a1 + 64);
            if (*(a1 + 87) < 0)
            {
              v14 = *v14;
            }

            if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v15 = &v26;
            }

            else
            {
              v15 = v26.__r_.__value_.__r.__words[0];
            }

            std::function<void ()(RETextureImportOperation0 *,char const*,char const*)>::operator()(*(a1 + 24), v17.__r_.__value_.__l.__size_, v14, v15);
            std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a1 + 40, &v26.__r_.__value_.__l.__data_);
          }

          realityio::Result<realityio::WrappedRERef<RETextureImportOperation0 *>,realityio::DetailedError>::~Result(&v17);
        }

        realityio::WrappedCFRef<__CFData const*>::~WrappedCFRef(&cf);
        if (v20)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v20);
        }
      }

      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      v9 = v25;
    }

    if ((v9 & 0x80) != 0)
    {
      operator delete(v23);
    }
  }

  else
  {
    v5 = (a1 + 64);
    if (*(a1 + 87) < 0)
    {
      v5 = *v5;
    }

    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v26;
    }

    else
    {
      v6 = v26.__r_.__value_.__r.__words[0];
    }

    std::function<void ()(RETextureImportOperation0 *,char const*,char const*)>::operator()(*(a1 + 24), 0, v5, v6);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }
}

void sub_247609BBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (*(v25 - 57) < 0)
  {
    operator delete(*(v25 - 80));
  }

  if (*(v25 - 33) < 0)
  {
    operator delete(*(v25 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<void ()(RETextureImportOperation0 *,char const*,char const*)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v5 = a4;
  v6 = a3;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v7, &v6, &v5);
}

void UsdInfoGatherer::~UsdInfoGatherer(void **this)
{
  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
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

void GatheringDestination::~GatheringDestination(GatheringDestination *this)
{
  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  std::__tree<std::string>::destroy(this + 40, *(this + 6));

  std::__function::__value_func<void ()(RETextureImportOperation0 *,char const*,char const*)>::~__value_func[abi:ne200100](this);
}

uint64_t anonymous namespace::createTextureAssetData(realityio::TextureBuilder::Context &,anonymous namespace::TextureAssetInstance const&)::$_0::operator()(uint64_t result)
{
  if (result)
  {
    if (*(result + 23) < 0)
    {
      operator delete(*result);
    }

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

void std::__shared_ptr_pointer<realityio::AssetSourceDataProvider *,anonymous namespace::createTextureAssetData(realityio::TextureBuilder::Context &,anonymous namespace::TextureAssetInstance const&)::$_0,std::allocator<realityio::AssetSourceDataProvider>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__shared_ptr_pointer<realityio::AssetSourceDataProvider *,anonymous namespace::createTextureAssetData(realityio::TextureBuilder::Context &,anonymous namespace::TextureAssetInstance const&)::$_0,std::allocator<realityio::AssetSourceDataProvider>>::__on_zero_shared(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<realityio::AssetSourceDataProvider *,anonymous namespace::createTextureAssetData(realityio::TextureBuilder::Context &,anonymous namespace::TextureAssetInstance const&)::$_0,std::allocator<realityio::AssetSourceDataProvider>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t realityio::Result<realityio::WrappedRERef<RETextureAssetData *>,realityio::DetailedError>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    realityio::WrappedRERef<RETextureAssetData *>::~WrappedRERef((a1 + 8));
  }

  else if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void *realityio::WrappedRERef<REMemoryAssetParameters *>::~WrappedRERef(void *a1)
{
  if (*a1)
  {
    RERelease();
    *a1 = 0;
  }

  return a1;
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::less<pxrInternal__aapl__pxrReserved__::SdfAssetPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::less<pxrInternal__aapl__pxrReserved__::SdfAssetPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::less<pxrInternal__aapl__pxrReserved__::SdfAssetPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>>>::destroy(a1, *(a2 + 1));
    std::__tree<realityio::TextureImportOperationSettings>::destroy((a2 + 80), *(a2 + 11));
    if (a2[79] < 0)
    {
      operator delete(*(a2 + 7));
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}