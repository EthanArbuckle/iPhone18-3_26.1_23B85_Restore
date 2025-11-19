void sub_2475300CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, const void *a23, const void *a24, uint64_t a25, uint64_t a26, char a27)
{
  realityio::WrappedCFRef<void const*>::~WrappedCFRef(&a23);
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&a24);
  std::pair<std::string const,pxrInternal__aapl__pxrReserved__::VtValue>::~pair(&a27);
  _Unwind_Resume(a1);
}

uint64_t RIOImportSessionSetLoadSubdsAsSubds(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 289) = a2;
  }

  return result;
}

uint64_t RIOImportSessionGetLoadSubdsAsSubds(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 289);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t realityio::ImportSessionImpl::performBlockPostAssetLoadOnEngineQueue(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v8, a2);
    std::vector<std::function<void ()(void)>>::push_back[abi:ne200100]((*(v2 + 464) + 48), v8);
    result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v8);
    v4 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v5 = *(a2 + 24);
    if (!v5)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v6 = *(*v5 + 48);
    v7 = *MEMORY[0x277D85DE8];

    return v6();
  }

  return result;
}

void sub_247530328(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(REScene *,char const*,REEntity *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(REEntity *,REScene **,REAsset **,unsigned long,unsigned long)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t assetToEntity(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  *a1 = REEntityCreate();
  ServiceLocator = REEngineGetServiceLocator();
  MEMORY[0x24C1A4230]();
  MEMORY[0x24C1A4260](ServiceLocator);
  RETransformComponentGetComponentType();
  REEntityAddComponentByClass();
  REAssetManagerMeshMemoryAssetCreateBox();
  REMeshComponentGetComponentType();
  REEntityAddComponentByClass();
  REMeshComponentSetMesh();
  v5 = *a3;
  return REMeshComponentAddMaterial();
}

void std::__function::__func<__CFData const*({block_pointer} {__strong})(char const*),std::allocator<__CFData const*({block_pointer} {__strong})(char const*)>,__CFData const* ()(char const*)>::~__func(uint64_t a1)
{

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__function::__func<__CFData const*({block_pointer} {__strong})(char const*),std::allocator<__CFData const*({block_pointer} {__strong})(char const*)>,__CFData const* ()(char const*)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_28594A3B0;
  result = MEMORY[0x24C1A9770](*(a1 + 8));
  a2[1] = result;
  return result;
}

uint64_t std::__function::__func<__CFData const*({block_pointer} {__strong})(char const*),std::allocator<__CFData const*({block_pointer} {__strong})(char const*)>,__CFData const* ()(char const*)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  return MEMORY[0x2821F96F8]();
}

uint64_t std::__function::__func<__CFData const*({block_pointer} {__strong})(char const*),std::allocator<__CFData const*({block_pointer} {__strong})(char const*)>,__CFData const* ()(char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<__CFData const* ()(char const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

void sourceAsync(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (*a2)
  {
    v9 = *(a2 + 16);
    v12[6] = *(a2 + 8);
    v12[7] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v21 = 0;
    if (v7)
    {
      v20[0] = &unk_28594A3B0;
      v20[1] = MEMORY[0x24C1A9770](v7);
      v21 = v20;
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = ___ZL11sourceAsyncP8REEngineN9realityio6ResultINSt3__110shared_ptrINS1_4mtlx13NeoDataSourceEEENS1_13DetailedErrorEEEU13block_pointerFPK8__CFDataPKcEU13block_pointerFvP8REEntityP9__CFErrorE_block_invoke_26;
    v12[3] = &unk_278EA83F8;
    v12[5] = a1;
    v12[4] = v8;
    v19 = 0;
    v18[0] = &unk_28594A478;
    v18[1] = MEMORY[0x24C1A9770](v12);
    v19 = v18;
    realityio::MaterialXStandalone::generateAsync();
  }

  v17 = REEngineConfigurationCreateFromEngine();
  v10 = REEngineConfigurationGetEngineQueue();
  v16 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = ___ZL11sourceAsyncP8REEngineN9realityio6ResultINSt3__110shared_ptrINS1_4mtlx13NeoDataSourceEEENS1_13DetailedErrorEEEU13block_pointerFPK8__CFDataPKcEU13block_pointerFvP8REEntityP9__CFErrorE_block_invoke;
  block[3] = &unk_28594A438;
  v14 = v8;
  v15 = 0;
  dispatch_async(v10, block);
  realityio::WrappedCFRef<__CFError *>::~WrappedCFRef(&v15);

  realityio::WrappedCFRef<__CFError *>::~WrappedCFRef(&v16);
  realityio::WrappedRERef<REEngineConfigurationWrapper *>::~WrappedRERef(&v17);

  v11 = *MEMORY[0x277D85DE8];
}

void sub_24753095C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  std::__function::__value_func<void ()(realityio::WrappedRERef<REAsset *>)>::~__value_func[abi:ne200100](v19 - 120);

  std::__function::__value_func<__CFData const* ()(char const*)>::~__value_func[abi:ne200100](v19 - 88);
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(a1);
}

CFTypeRef __copy_helper_block_ea8_40c43_ZTSN9realityio12WrappedCFRefIP9__CFErrorEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void *___ZL11sourceAsyncP8REEngineN9realityio6ResultINSt3__110shared_ptrINS1_4mtlx13NeoDataSourceEEENS1_13DetailedErrorEEEU13block_pointerFPK8__CFDataPKcEU13block_pointerFvP8REEntityP9__CFErrorE_block_invoke_26(uint64_t a1, uint64_t *a2)
{
  if (*a2)
  {
    assetToEntity(&v6, *(a1 + 40), a2);
    (*(*(a1 + 32) + 16))();
    return realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v6);
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(*(a1 + 32) + 16);

    return v5();
  }
}

void sub_247530A7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  realityio::WrappedRERef<REEntity *>::~WrappedRERef(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void({block_pointer} {__strong})(realityio::WrappedRERef<REAsset *>),std::allocator<void({block_pointer} {__strong})(realityio::WrappedRERef<REAsset *>)>,void ()(realityio::WrappedRERef<REAsset *>)>::~__func(uint64_t a1)
{

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__function::__func<void({block_pointer} {__strong})(realityio::WrappedRERef<REAsset *>),std::allocator<void({block_pointer} {__strong})(realityio::WrappedRERef<REAsset *>)>,void ()(realityio::WrappedRERef<REAsset *>)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_28594A478;
  result = MEMORY[0x24C1A9770](*(a1 + 8));
  a2[1] = result;
  return result;
}

uint64_t std::__function::__func<void({block_pointer} {__strong})(realityio::WrappedRERef<REAsset *>),std::allocator<void({block_pointer} {__strong})(realityio::WrappedRERef<REAsset *>)>,void ()(realityio::WrappedRERef<REAsset *>)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  return MEMORY[0x2821F96F8]();
}

void *std::__function::__func<void({block_pointer} {__strong})(realityio::WrappedRERef<REAsset *>),std::allocator<void({block_pointer} {__strong})(realityio::WrappedRERef<REAsset *>)>,void ()(realityio::WrappedRERef<REAsset *>)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v4 = *a2;
  *a2 = 0;
  (*(v2 + 16))();
  return realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v4);
}

void sub_247530BB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<void({block_pointer} {__strong})(realityio::WrappedRERef<REAsset *>),std::allocator<void({block_pointer} {__strong})(realityio::WrappedRERef<REAsset *>)>,void ()(realityio::WrappedRERef<REAsset *>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(realityio::WrappedRERef<REAsset *>)>::~__value_func[abi:ne200100](uint64_t a1)
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

std::string *realityio::Result<std::shared_ptr<realityio::mtlx::NeoDataSource>,realityio::DetailedError>::Result(std::string *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  a1->__r_.__value_.__s.__data_[0] = v3;
  if (v3 == 1)
  {
    v4 = *(a2 + 2);
    a1->__r_.__value_.__l.__size_ = *(a2 + 1);
    a1->__r_.__value_.__r.__words[2] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *&a1->__r_.__value_.__r.__words[1] = *(a2 + 8);
    if (a2[47] < 0)
    {
      std::string::__init_copy_ctor_external(a1 + 1, *(a2 + 3), *(a2 + 4));
    }

    else
    {
      v5 = *(a2 + 24);
      a1[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
      *&a1[1].__r_.__value_.__l.__data_ = v5;
    }
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::UsdReferences::~UsdReferences(pxrInternal__aapl__pxrReserved__::UsdReferences *this)
{
  v2 = *(this + 3);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 16);
  v3 = *(this + 1);
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v3);
  }
}

{
  v2 = *(this + 3);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 16);
  v3 = *(this + 1);
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v3);
  }
}

void MaterialToEntity::~MaterialToEntity(MaterialToEntity *this)
{
  realityio::WrappedCFRef<__CFError *>::~WrappedCFRef(this + 4);
  realityio::WrappedCFRef<RIOImportSession *>::~WrappedCFRef(this + 3);
  realityio::WrappedCFRef<RIOPxrUsdStage *>::~WrappedCFRef(this + 2);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(this + 1);

  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(this);
}

uint64_t ___ZN16MaterialToEntity13evaluateAsyncENSt3__110shared_ptrIS_EENS0_8functionIFvP8REEntityP9__CFErrorEEE_block_invoke(uint64_t a1)
{
  MaterialToEntity::getModelEntity(&v7, *(*(*(a1 + 64) + 24) + 32));
  v2 = v7;
  v3 = *(*(a1 + 64) + 32);
  v6 = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  v4 = *(a1 + 56);
  v8 = v3;
  v9 = v2;
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v4 + 48))(v4, &v9, &v8);
  realityio::WrappedCFRef<__CFError *>::~WrappedCFRef(&v6);
  realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v7);
  return RIOImportSessionSetSceneUpdatePassCompletion(*(*(a1 + 64) + 24), 0);
}

void sub_247530E94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  realityio::WrappedRERef<REEntity *>::~WrappedRERef(va);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_32c47_ZTSNSt3__18functionIFvP8REEntityP9__CFErrorEEE64c44_ZTSNSt3__110shared_ptrI16MaterialToEntityEE(uint64_t a1, uint64_t a2)
{
  result = std::__function::__value_func<void ()(REEntity *,__CFError *)>::__value_func[abi:ne200100](a1 + 32, a2 + 32);
  v5 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t __destroy_helper_block_ea8_32c47_ZTSNSt3__18functionIFvP8REEntityP9__CFErrorEEE64c44_ZTSNSt3__110shared_ptrI16MaterialToEntityEE(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return std::__function::__value_func<void ()(REEntity *,__CFError *)>::~__value_func[abi:ne200100](a1 + 32);
}

uint64_t std::__function::__value_func<void ()(REEntity *,__CFError *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t realityio::isSceneLibrary(realityio *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  result = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this);
  if (result)
  {
    v4 = atomic_load(MEMORY[0x277D86540]);
    if (!v4)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType>>::_TryToCreateData();
    }

    v5 = 0;
    result = pxrInternal__aapl__pxrReserved__::UsdObject::_GetMetadataImpl<pxrInternal__aapl__pxrReserved__::TfToken>(this, (v4 + 208));
    if (result)
    {
      MEMORY[0x24C1A5DE0](&v5, "sceneLibrary");
      result = v5 < 8;
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }
  }

  return result;
}

void sub_2475310AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void *std::vector<realityio::ImportedScene>::__base_destruct_at_end[abi:ne200100](void *result, uint64_t a2)
{
  v3 = result;
  for (i = result[1]; i != a2; result = std::allocator_traits<std::allocator<realityio::ImportedScene>>::destroy[abi:ne200100]<realityio::ImportedScene,0>(v3, i))
  {
    i -= 80;
  }

  *(v3 + 8) = a2;
  return result;
}

void *std::allocator_traits<std::allocator<realityio::ImportedScene>>::destroy[abi:ne200100]<realityio::ImportedScene,0>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 71) < 0)
  {
    operator delete(*(a2 + 48));
  }

  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef((a2 + 16));

  return realityio::WrappedRERef<void *>::~WrappedRERef((a2 + 8));
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdObject::_GetMetadataImpl<pxrInternal__aapl__pxrReserved__::TfToken>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  v3 = *v2;
  return pxrInternal__aapl__pxrReserved__::UsdStage::_GetStrongestResolvedMetadata();
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfAbstractDataTypedValue<pxrInternal__aapl__pxrReserved__::TfToken>::_StoreVtValueImpl<pxrInternal__aapl__pxrReserved__::VtValue const&>(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v2 = a2;
  *(a1 + 24) = 0;
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::TfToken>(a2))
  {
    v4 = *(v2 + 1);
    if ((v4 & 4) != 0)
    {
      v2 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
    }

    pxrInternal__aapl__pxrReserved__::TfToken::operator=(*(a1 + 8), v2);
    return 1;
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::SdfValueBlock>(v2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::SdfValueBlock>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__13SdfValueBlockE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }
}

uint64_t std::vector<realityio::ImportedScene>::__emplace_back_slow_path<realityio::ImportedScene>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::ImportedScene>>(a1, v6);
  }

  v7 = 80 * v2;
  v16 = 0;
  v17 = v7;
  *(&v18 + 1) = 0;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  *(a2 + 8) = 0u;
  v8 = *(a2 + 24);
  *(v7 + 40) = *(a2 + 40);
  *(v7 + 24) = v8;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0u;
  v9 = *(a2 + 48);
  *(v7 + 64) = *(a2 + 64);
  *(v7 + 48) = v9;
  *(a2 + 56) = 0u;
  *(a2 + 48) = 0;
  *(v7 + 72) = *(a2 + 72);
  *&v18 = 80 * v2 + 80;
  v10 = a1[1];
  v11 = (80 * v2 + *a1 - v10);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<realityio::ImportedScene>,realityio::ImportedScene*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<realityio::ImportedScene>::~__split_buffer(&v16);
  return v15;
}

void sub_2475314B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<realityio::ImportedScene>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *realityio::WrappedRERef<void *>::~WrappedRERef(void *a1)
{
  if (*a1)
  {
    RERelease();
    *a1 = 0;
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::ImportedScene>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<realityio::ImportedScene>,realityio::ImportedScene*>(uint64_t a1, uint64_t a2, uint64_t a3, std::string *a4)
{
  v11 = a4;
  v12 = a4;
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
      realityio::ImportedScene::ImportedScene(a4, v7);
      v7 += 80;
      a4 = (v12 + 80);
      v12 = (v12 + 80);
    }

    while (v7 != a3);
    v10 = 1;
    do
    {
      std::allocator_traits<std::allocator<realityio::ImportedScene>>::destroy[abi:ne200100]<realityio::ImportedScene,0>(a1, v5);
      v5 += 80;
    }

    while (v5 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<realityio::ImportedScene>,realityio::ImportedScene*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

std::string *realityio::ImportedScene::ImportedScene(std::string *a1, uint64_t a2)
{
  a1->__r_.__value_.__s.__data_[0] = *a2;
  v4 = *(a2 + 8);
  a1->__r_.__value_.__l.__size_ = v4;
  if (v4)
  {
    RERetain();
  }

  v5 = *(a2 + 16);
  a1->__r_.__value_.__r.__words[2] = v5;
  if (v5)
  {
    RERetain();
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 1, *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v6 = *(a2 + 24);
    a1[1].__r_.__value_.__r.__words[2] = *(a2 + 40);
    *&a1[1].__r_.__value_.__l.__data_ = v6;
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 2, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v7 = *(a2 + 48);
    a1[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
    *&a1[2].__r_.__value_.__l.__data_ = v7;
  }

  a1[3].__r_.__value_.__s.__data_[0] = *(a2 + 72);
  return a1;
}

void sub_2475316D8(_Unwind_Exception *a1)
{
  if (*(v2 + 47) < 0)
  {
    operator delete(*(v2 + 24));
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(v3);
  realityio::WrappedRERef<void *>::~WrappedRERef(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<realityio::ImportedScene>,realityio::ImportedScene*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<realityio::ImportedScene>,realityio::ImportedScene*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t *std::_AllocatorDestroyRangeReverse<std::allocator<realityio::ImportedScene>,realityio::ImportedScene*>::operator()[abi:ne200100](uint64_t *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *result;
    do
    {
      v3 -= 80;
      result = std::allocator_traits<std::allocator<realityio::ImportedScene>>::destroy[abi:ne200100]<realityio::ImportedScene,0>(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

void **std::__split_buffer<realityio::ImportedScene>::~__split_buffer(void **a1)
{
  std::__split_buffer<realityio::ImportedScene>::__destruct_at_end[abi:ne200100](a1, a1[1]);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<realityio::ImportedScene>::__destruct_at_end[abi:ne200100](void *result, uint64_t a2)
{
  v3 = result;
  while (1)
  {
    v4 = v3[2];
    if (v4 == a2)
    {
      break;
    }

    v5 = v3[4];
    v3[2] = v4 - 80;
    result = std::allocator_traits<std::allocator<realityio::ImportedScene>>::destroy[abi:ne200100]<realityio::ImportedScene,0>(v5, v4 - 80);
  }

  return result;
}

void realityio::ImportedScene::~ImportedScene(void **this)
{
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(this + 2);
  realityio::WrappedRERef<void *>::~WrappedRERef(this + 1);
}

void std::vector<realityio::ImportedScene>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<realityio::ImportedScene>::__base_destruct_at_end[abi:ne200100](a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<realityio::ImportedScene>,realityio::ImportedScene*,realityio::ImportedScene*,realityio::ImportedScene*>(uint64_t a1, uint64_t a2, uint64_t a3, std::string *a4)
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
      realityio::ImportedScene::ImportedScene(v4, v6);
      v6 += 80;
      v4 = (v11 + 80);
      v11 = (v11 + 80);
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<realityio::ImportedScene>,realityio::ImportedScene*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<realityio::ImportedScene *,realityio::ImportedScene *,realityio::ImportedScene *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = (a3 + v6);
      v8 = (a1 + v6);
      *(a3 + v6) = *(a1 + v6);
      v9 = *(a3 + v6 + 8);
      size = *(a1 + v6 + 8);
      if (v9 != size)
      {
        if (v9)
        {
          v11 = *(a3 + v6 + 8);
          RERelease();
          size = v8->__r_.__value_.__l.__size_;
        }

        v7->__r_.__value_.__l.__size_ = size;
        if (size)
        {
          RERetain();
        }
      }

      realityio::WrappedRERef<REAsset *>::operator=(&v7->__r_.__value_.__r.__words[2], &v8->__r_.__value_.__r.__words[2]);
      std::string::operator=(v7 + 1, v8 + 1);
      std::string::operator=(v7 + 2, v8 + 2);
      v7[3].__r_.__value_.__s.__data_[0] = v8[3].__r_.__value_.__s.__data_[0];
      v6 += 80;
    }

    while (a1 + v6 != a2);
    a3 += v6;
  }

  return a3;
}

uint64_t realityio::BuilderDependencyDAG::getWeakBuilderAtPrimPathWithBuilderIdentifier@<X0>(realityio::BuilderDependencyDAG *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X2>, void *a4@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v14, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v15, a2 + 1);
  v8 = *a3;
  v16 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v16 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = std::__hash_table<std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>,std::__unordered_map_hasher<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>,realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery::Hash,std::equal_to<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery>,true>,std::__unordered_map_equal<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>,std::equal_to<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery>,realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>>>::find<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery>(this + 10, &v14);
  v10 = v9;
  if (v9 && (v11 = v9[5]) != 0 && (v12 = std::__shared_weak_count::lock(v11)) != 0)
  {
    *a4 = v10[4];
    a4[1] = v12;
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
  }

  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v14);
}

void *std::__hash_table<std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>,std::__unordered_map_hasher<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>,realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery::Hash,std::equal_to<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery>,true>,std::__unordered_map_equal<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>,std::equal_to<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery>,realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>>>::find<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery>(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
  v4 = *(a2 + 1);
  v5 = (bswap64(0x9E3779B97F4A7C55 * (v4 & 0xFFFFFFFFFFFFFFF8)) + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9) ^ v3;
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v5 == v10)
      {
        if (result[2] == *a2 && (result[3] ^ v4) < 8)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1)));
  v4 = *(a2 + 1);
  v5 = (bswap64(0x9E3779B97F4A7C55 * (v4 & 0xFFFFFFFFFFFFFFF8)) + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9) ^ v3;
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == *a2 && (result[3] ^ v4) < 8)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery::~BuilderAtPrimPathQuery(realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery *this)
{
  v2 = *(this + 1);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this);
}

{
  v2 = *(this + 1);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this);
}

void *std::map<std::string,REAsset *>::map[abi:ne200100](void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,REAsset *>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,REAsset *>,std::__tree_node<std::__value_type<std::string,REAsset *>,void *> *,long>>>(a1, *a2, a2 + 1);
  return a1;
}

uint64_t std::map<std::string,REAsset *>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,REAsset *>,std::__tree_node<std::__value_type<std::string,REAsset *>,void *> *,long>>>(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,REAsset *>,std::__map_value_compare<std::string,std::__value_type<std::string,REAsset *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,REAsset *>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,REAsset *> const&>(v5, (v5 + 1), v4 + 4);
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

uint64_t std::__tree<std::__value_type<std::string,REAsset *>,std::__map_value_compare<std::string,std::__value_type<std::string,REAsset *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,REAsset *>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,REAsset *> const&>(void *a1, uint64_t a2, const void **a3)
{
  result = *std::__tree<std::string>::__find_equal<std::string>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,REAsset *>,std::__map_value_compare<std::string,std::__value_type<std::string,REAsset *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,REAsset *>>>::__construct_node<std::pair<std::string const,REAsset *> const&>();
  }

  return result;
}

void sub_247531E88(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void realityio::internal::PrimToEntityMap::~PrimToEntityMap(char **this)
{
  std::__tree<std::string>::destroy((this + 9), this[10]);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned long>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned long>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned long>>>::destroy((this + 6), this[7]);
  v3 = (this + 3);
  std::vector<realityio::internal::PrimToEntityMap::EntityData>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *this;
  if (*this)
  {
    this[1] = v2;
    operator delete(v2);
  }
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned long>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned long>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned long>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned long>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned long>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned long>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned long>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned long>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned long>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,unsigned long>,0>((a2 + 4));

    operator delete(a2);
  }
}

uint64_t std::__destroy_at[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,unsigned long>,0>(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

void std::vector<realityio::internal::PrimToEntityMap::EntityData>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<realityio::internal::PrimToEntityMap::EntityData>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<realityio::internal::PrimToEntityMap::EntityData>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = v2 - 48;
    do
    {
      std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(v4 + 24, *(v4 + 32));
      std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(v4, *(v4 + 8));
      std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(v4 - 24, *(v4 - 16));
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v4 - 32);
      if (*(v4 - 33) < 0)
      {
        operator delete(*(v4 - 56));
      }

      v5 = v4 - 56;
      v4 -= 104;
    }

    while (v5 != v3);
  }

  a1[1] = v3;
}

std::string *std::pair<std::string,std::string>::pair[abi:ne200100]<true,0>(std::string *this, __int128 *a2, __int128 *a3)
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

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v6;
  }

  return this;
}

void sub_247532108(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(char const*,ExecFault::Type,char const*)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

const void **realityio::WrappedCFRef<void const*>::~WrappedCFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

void *pxrInternal__aapl__pxrReserved__::VtDictionary::Iterator<std::map<std::string,pxrInternal__aapl__pxrReserved__::VtValue> const*,std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>>::increment(void *result)
{
  v1 = result[1];
  if (v1)
  {
    v2 = *result;
    v3 = *(*result + 8);
    if (v3)
    {
      do
      {
        v4 = v3;
        v3 = *v3;
      }

      while (v3);
    }

    else
    {
      do
      {
        v4 = v2[2];
        v5 = *v4 == v2;
        v2 = v4;
      }

      while (!v5);
    }

    *result = v4;
    if (v4 == (v1 + 8))
    {
      result[1] = 0;
    }
  }

  else
  {
    v6[0] = "vt/dictionary.h";
    v6[1] = "increment";
    v6[2] = 142;
    v6[3] = "void pxrInternal__aapl__pxrReserved__::VtDictionary::Iterator<const std::map<std::string, pxrInternal__aapl__pxrReserved__::VtValue, std::less<void>> *, std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string, pxrInternal__aapl__pxrReserved__::VtValue>, std::__tree_node<std::__value_type<std::string, pxrInternal__aapl__pxrReserved__::VtValue>, void *> *, long>>>::increment() [UnderlyingMapPtr = const std::map<std::string, pxrInternal__aapl__pxrReserved__::VtValue, std::less<void>> *, UnderlyingIterator = std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string, pxrInternal__aapl__pxrReserved__::VtValue>, std::__tree_node<std::__value_type<std::string, pxrInternal__aapl__pxrReserved__::VtValue>, void *> *, long>>]";
    v7 = 0;
    v8 = 4;
    return pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v6, "Attempted invalid increment operation on a VtDictionary iterator");
  }

  return result;
}

void *realityio::WrappedRERef<REEngine *>::~WrappedRERef(void *a1)
{
  if (*a1)
  {
    RERelease();
    *a1 = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(REScene *,char const*,REEntity *)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(REEntity *,REScene **,REAsset **,unsigned long,unsigned long)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(char const*,ExecFault::Type,char const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__function::__func<RIOImportSessionPerformBlockAfterAssetLoadOnEngineQueue::$_0,std::allocator<RIOImportSessionPerformBlockAfterAssetLoadOnEngineQueue::$_0>,void ()(void)>::~__func(uint64_t a1)
{

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__function::__func<RIOImportSessionPerformBlockAfterAssetLoadOnEngineQueue::$_0,std::allocator<RIOImportSessionPerformBlockAfterAssetLoadOnEngineQueue::$_0>,void ()(void)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_28594A528;
  result = MEMORY[0x24C1A9770](*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<RIOImportSessionPerformBlockAfterAssetLoadOnEngineQueue::$_0,std::allocator<RIOImportSessionPerformBlockAfterAssetLoadOnEngineQueue::$_0>,void ()(void)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

uint64_t std::__function::__func<RIOImportSessionPerformBlockAfterAssetLoadOnEngineQueue::$_0,std::allocator<RIOImportSessionPerformBlockAfterAssetLoadOnEngineQueue::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RIOImportSessionPerformSceneChangeSetupBlockOnEngineQueue::$_0,std::allocator<RIOImportSessionPerformSceneChangeSetupBlockOnEngineQueue::$_0>,void ()(void)>::~__func(uint64_t a1)
{

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__function::__func<RIOImportSessionPerformSceneChangeSetupBlockOnEngineQueue::$_0,std::allocator<RIOImportSessionPerformSceneChangeSetupBlockOnEngineQueue::$_0>,void ()(void)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_28594A5A8;
  result = MEMORY[0x24C1A9770](*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<RIOImportSessionPerformSceneChangeSetupBlockOnEngineQueue::$_0,std::allocator<RIOImportSessionPerformSceneChangeSetupBlockOnEngineQueue::$_0>,void ()(void)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

uint64_t std::__function::__func<RIOImportSessionPerformSceneChangeSetupBlockOnEngineQueue::$_0,std::allocator<RIOImportSessionPerformSceneChangeSetupBlockOnEngineQueue::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RIOImportSessionSetSceneUpdatePassCompletion::$_0,std::allocator<RIOImportSessionSetSceneUpdatePassCompletion::$_0>,void ()(void)>::~__func(uint64_t a1)
{

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__function::__func<RIOImportSessionSetSceneUpdatePassCompletion::$_0,std::allocator<RIOImportSessionSetSceneUpdatePassCompletion::$_0>,void ()(void)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_28594A628;
  result = MEMORY[0x24C1A9770](*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<RIOImportSessionSetSceneUpdatePassCompletion::$_0,std::allocator<RIOImportSessionSetSceneUpdatePassCompletion::$_0>,void ()(void)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

uint64_t std::__function::__func<RIOImportSessionSetSceneUpdatePassCompletion::$_0,std::allocator<RIOImportSessionSetSceneUpdatePassCompletion::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t std::__function::__func<RIOImportSessionSetSceneUpdatePassCompletion::$_0,std::allocator<RIOImportSessionSetSceneUpdatePassCompletion::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RIOImportSessionSetRegistrationForScenes::$_0,std::allocator<RIOImportSessionSetRegistrationForScenes::$_0>,void ()(REScene *,char const*,REEntity *)>::~__func(uint64_t a1)
{

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__function::__func<RIOImportSessionSetRegistrationForScenes::$_0,std::allocator<RIOImportSessionSetRegistrationForScenes::$_0>,void ()(REScene *,char const*,REEntity *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_28594A6A8;
  result = MEMORY[0x24C1A9770](*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<RIOImportSessionSetRegistrationForScenes::$_0,std::allocator<RIOImportSessionSetRegistrationForScenes::$_0>,void ()(REScene *,char const*,REEntity *)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

uint64_t std::__function::__func<RIOImportSessionSetRegistrationForScenes::$_0,std::allocator<RIOImportSessionSetRegistrationForScenes::$_0>,void ()(REScene *,char const*,REEntity *)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *a4;
  return (*(*(a1 + 8) + 16))();
}

uint64_t std::__function::__func<RIOImportSessionSetRegistrationForScenes::$_0,std::allocator<RIOImportSessionSetRegistrationForScenes::$_0>,void ()(REScene *,char const*,REEntity *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RIOImportSessionSetRegistrationForScenes::$_1,std::allocator<RIOImportSessionSetRegistrationForScenes::$_1>,void ()(REEntity *,REScene **,REAsset **,unsigned long,unsigned long)>::~__func(uint64_t a1)
{

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__function::__func<RIOImportSessionSetRegistrationForScenes::$_1,std::allocator<RIOImportSessionSetRegistrationForScenes::$_1>,void ()(REEntity *,REScene **,REAsset **,unsigned long,unsigned long)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_28594A738;
  result = MEMORY[0x24C1A9770](*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<RIOImportSessionSetRegistrationForScenes::$_1,std::allocator<RIOImportSessionSetRegistrationForScenes::$_1>,void ()(REEntity *,REScene **,REAsset **,unsigned long,unsigned long)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

uint64_t std::__function::__func<RIOImportSessionSetRegistrationForScenes::$_1,std::allocator<RIOImportSessionSetRegistrationForScenes::$_1>,void ()(REEntity *,REScene **,REAsset **,unsigned long,unsigned long)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v6 = *a2;
  v7 = *a3;
  v8 = *a4;
  v9 = *a5;
  v10 = *a6;
  return (*(*(a1 + 8) + 16))();
}

uint64_t std::__function::__func<RIOImportSessionSetRegistrationForScenes::$_1,std::allocator<RIOImportSessionSetRegistrationForScenes::$_1>,void ()(REEntity *,REScene **,REAsset **,unsigned long,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *realityio::WrappedRERef<REEngineConfigurationWrapper *>::~WrappedRERef(void *a1)
{
  if (*a1)
  {
    RERelease();
    *a1 = 0;
  }

  return a1;
}

const void **realityio::WrappedCFRef<__CFError *>::~WrappedCFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(REEntity *,__CFError *)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__shared_ptr_emplace<MaterialToEntity>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28594A7C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__function::__func<void({block_pointer} {__strong})(REEntity *,__CFError *),std::allocator<void({block_pointer} {__strong})(REEntity *,__CFError *)>,void ()(REEntity *,__CFError *)>::~__func(uint64_t a1)
{

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__function::__func<void({block_pointer} {__strong})(REEntity *,__CFError *),std::allocator<void({block_pointer} {__strong})(REEntity *,__CFError *)>,void ()(REEntity *,__CFError *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_28594A818;
  result = MEMORY[0x24C1A9770](*(a1 + 8));
  a2[1] = result;
  return result;
}

uint64_t std::__function::__func<void({block_pointer} {__strong})(REEntity *,__CFError *),std::allocator<void({block_pointer} {__strong})(REEntity *,__CFError *)>,void ()(REEntity *,__CFError *)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  return MEMORY[0x2821F96F8]();
}

uint64_t std::__function::__func<void({block_pointer} {__strong})(REEntity *,__CFError *),std::allocator<void({block_pointer} {__strong})(REEntity *,__CFError *)>,void ()(REEntity *,__CFError *)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  return (*(*(a1 + 8) + 16))();
}

uint64_t std::__function::__func<void({block_pointer} {__strong})(REEntity *,__CFError *),std::allocator<void({block_pointer} {__strong})(REEntity *,__CFError *)>,void ()(REEntity *,__CFError *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::vector<realityio::ImportedScene>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<realityio::ImportedScene>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::__function::__func<RIOImportSessionRegisterBuilderGenerator::$_0,std::allocator<RIOImportSessionRegisterBuilderGenerator::$_0>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__func(uint64_t a1)
{

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__function::__func<RIOImportSessionRegisterBuilderGenerator::$_0,std::allocator<RIOImportSessionRegisterBuilderGenerator::$_0>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::__clone(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = &unk_28594A8A8;
  a2[1] = v4;
  result = MEMORY[0x24C1A9770](v3);
  a2[2] = result;
  return result;
}

void std::__function::__func<RIOImportSessionRegisterBuilderGenerator::$_0,std::allocator<RIOImportSessionRegisterBuilderGenerator::$_0>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

uint64_t std::__function::__func<RIOImportSessionRegisterBuilderGenerator::$_0,std::allocator<RIOImportSessionRegisterBuilderGenerator::$_0>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::operator()@<X0>(uint64_t a1@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void *a3@<X8>)
{
  v6 = *(*(a1 + 8) + 32);
  v8 = *(v6 + 40);
  v7 = *(v6 + 48);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v9 = *(v8 + 40);
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  else
  {
    v9 = *(v8 + 40);
  }

  v20 = 1;
  v21 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  v24 = 0;
  if (v9)
  {
    v10 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((v9 + 8));
    pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v15, v10, a2);
    v20 = v15;
    if (v21)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v21);
    }

    v21 = v16;
    v16 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v22, &v17);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v23, &v18);
    if ((v24 & 7) != 0)
    {
      atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v24 = v19;
    v19 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v17);
    if (v16)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v16);
    }
  }

  LODWORD(v14) = 1;
  v15 = RIOPxrUsdObjectCreate<pxrInternal__aapl__pxrReserved__::UsdPrim const&,realityio::RIOPxrUsdObjectHierarchyType>(&v20, &v14);
  v11 = (*(*(a1 + 16) + 16))();
  v14 = v11;
  if (v11)
  {
    v12 = v11[3];
    *a3 = v11[2];
    a3[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  realityio::WrappedCFRef<RIOBuilder const*>::~WrappedCFRef(&v14);
  realityio::WrappedCFRef<RIOPxrUsdObject *>::~WrappedCFRef(&v15);
  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v22);
  result = v21;
  if (v21)
  {
    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v21);
  }

  return result;
}

void sub_247533398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<RIOImportSessionRegisterBuilderGenerator::$_0,std::allocator<RIOImportSessionRegisterBuilderGenerator::$_0>,std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const void **realityio::WrappedCFRef<RIOBuilder const*>::~WrappedCFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **realityio::WrappedCFRef<RIOPxrUsdObject *>::~WrappedCFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<std::shared_ptr<realityio::Builder> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__function::__func<void({block_pointer} {__strong})(RETextureImportOperation0 *,char const*,char const*),std::allocator<void({block_pointer} {__strong})(RETextureImportOperation0 *,char const*,char const*)>,void ()(RETextureImportOperation0 *,char const*,char const*)>::~__func(uint64_t a1)
{

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__function::__func<void({block_pointer} {__strong})(RETextureImportOperation0 *,char const*,char const*),std::allocator<void({block_pointer} {__strong})(RETextureImportOperation0 *,char const*,char const*)>,void ()(RETextureImportOperation0 *,char const*,char const*)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_28594A938;
  result = MEMORY[0x24C1A9770](*(a1 + 8));
  a2[1] = result;
  return result;
}

uint64_t std::__function::__func<void({block_pointer} {__strong})(RETextureImportOperation0 *,char const*,char const*),std::allocator<void({block_pointer} {__strong})(RETextureImportOperation0 *,char const*,char const*)>,void ()(RETextureImportOperation0 *,char const*,char const*)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  return MEMORY[0x2821F96F8]();
}

uint64_t std::__function::__func<void({block_pointer} {__strong})(RETextureImportOperation0 *,char const*,char const*),std::allocator<void({block_pointer} {__strong})(RETextureImportOperation0 *,char const*,char const*)>,void ()(RETextureImportOperation0 *,char const*,char const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *a4;
  return (*(*(a1 + 8) + 16))();
}

uint64_t std::__function::__func<void({block_pointer} {__strong})(RETextureImportOperation0 *,char const*,char const*),std::allocator<void({block_pointer} {__strong})(RETextureImportOperation0 *,char const*,char const*)>,void ()(RETextureImportOperation0 *,char const*,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(RETextureImportOperation0 *,char const*,char const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<RIOImportSessionGatherFaultRecords::$_0,std::allocator<RIOImportSessionGatherFaultRecords::$_0>,void ()(char const*,ExecFault::Type,char const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28594A9C8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<RIOImportSessionGatherFaultRecords::$_0,std::allocator<RIOImportSessionGatherFaultRecords::$_0>,void ()(char const*,ExecFault::Type,char const*)>::operator()(uint64_t a1, uint64_t *a2, _DWORD *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = *a4;
  v6 = **(a1 + 8);
  if ((*a3 - 1) >= 5)
  {
    v7 = 0;
  }

  else
  {
    v7 = *a3;
  }

  return (*(v6 + 16))(v6, v4, v7, v5);
}

uint64_t std::__function::__func<RIOImportSessionGatherFaultRecords::$_0,std::allocator<RIOImportSessionGatherFaultRecords::$_0>,void ()(char const*,ExecFault::Type,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void realityio::SkeletalPoseAssetAction::operator()(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X2>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t *a3@<X3>, void *a4@<X4>, pxrInternal__aapl__pxrReserved__::VtValue *a5@<X8>)
{
  v78 = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::VtValue::VtValue(a5, a1);
  v67 = 0;
  memset(v66, 0, sizeof(v66));
  v65 = 0;
  memset(v64, 0, sizeof(v64));
  v63 = 0;
  memset(v62, 0, sizeof(v62));
  v8 = *a3;
  if (a3[1] != *a3)
  {
    v55 = a2;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    while (1)
    {
      pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v69, (*a4 + v10));
      NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v8 + v9));
      MEMORY[0x24C1A5DE0](&v70, "joints");
      v13 = v70;
      if ((v70 ^ *NameToken) > 7)
      {
        if ((v70 & 7) != 0)
        {
          atomic_fetch_add_explicit((v70 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        goto LABEL_18;
      }

      if (!*(&v69[0] + 1))
      {
        goto LABEL_10;
      }

      if (*((*(&v69[0] + 1) & 0xFFFFFFFFFFFFFFF8) + 16) == 60)
      {
        IsImpl = 1;
        goto LABEL_12;
      }

      if ((BYTE8(v69[0]) & 4) != 0)
      {
        v13 = v70;
      }

      else
      {
LABEL_10:
        IsImpl = 0;
      }

LABEL_12:
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (IsImpl)
      {
        if ((BYTE8(v69[0]) & 4) != 0)
        {
          v15 = (*((*(&v69[0] + 1) & 0xFFFFFFFFFFFFFFF8) + 168))(v69);
        }

        else
        {
          v15 = *&v69[0];
        }

        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::operator=(v62, v15);
        goto LABEL_41;
      }

LABEL_18:
      v16 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v8 + v9));
      MEMORY[0x24C1A5DE0](&v70, "restTransforms");
      if ((v70 ^ *v16) > 7)
      {
        if ((v70 & 7) != 0)
        {
          atomic_fetch_add_explicit((v70 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else
      {
        v17 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>(v69);
        if ((v70 & 7) != 0)
        {
          atomic_fetch_add_explicit((v70 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v17)
        {
          if ((BYTE8(v69[0]) & 4) == 0)
          {
            v18 = v66;
            goto LABEL_32;
          }

          v21 = (*((*(&v69[0] + 1) & 0xFFFFFFFFFFFFFFF8) + 168))(v69);
          v18 = v66;
LABEL_33:
          if (v18 != v21)
          {
            v22 = *(v21 + 16);
            v70 = *v21;
            v71 = v22;
            v23 = *(v21 + 32);
            *&v72 = v23;
            if (v23)
            {
              v24 = (v23 - 16);
              if (*(&v71 + 1))
              {
                v24 = *(&v71 + 1);
              }

              atomic_fetch_add_explicit(v24, 1uLL, memory_order_relaxed);
            }

            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v18);
            v25 = v71;
            *v18 = v70;
            *(v18 + 1) = v25;
            v70 = 0u;
            v71 = 0u;
            v18[4] = v72;
            *&v72 = 0;
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v70);
          }

          goto LABEL_41;
        }
      }

      v19 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v8 + v9));
      MEMORY[0x24C1A5DE0](&v70, "bindTransforms");
      if ((v70 ^ *v19) > 7)
      {
        if ((v70 & 7) != 0)
        {
          atomic_fetch_add_explicit((v70 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        goto LABEL_41;
      }

      v20 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>(v69);
      if ((v70 & 7) != 0)
      {
        atomic_fetch_add_explicit((v70 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v20)
      {
        if ((BYTE8(v69[0]) & 4) != 0)
        {
          v21 = (*((*(&v69[0] + 1) & 0xFFFFFFFFFFFFFFF8) + 168))(v69);
          v18 = v64;
        }

        else
        {
          v18 = v64;
LABEL_32:
          v21 = *&v69[0];
        }

        goto LABEL_33;
      }

LABEL_41:
      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v69);
      ++v11;
      v8 = *a3;
      v10 += 16;
      v9 += 8;
      if (v11 >= (a3[1] - *a3) >> 3)
      {
        v26 = *&v62[0];
        a2 = v55;
        goto LABEL_47;
      }
    }
  }

  v26 = 0;
LABEL_47:
  memset(v61, 0, sizeof(v61));
  v58 = 0;
  v59 = 0;
  v60 = 0;
  memset(__p, 0, sizeof(__p));
  std::vector<char const*>::resize(v61, v26);
  if (!*&v62[0])
  {
LABEL_58:
    std::vector<RESRT>::resize(&v58, v26);
    v34 = v58;
    if (0xAAAAAAAAAAAAAAABLL * ((v59 - v58) >> 4) == v66[0] && v59 != v58)
    {
      v35 = v67;
      v36 = 0x5555555555555580 * ((v59 - v58) >> 4);
      __asm { FMOV            V0.4S, #1.0 }

      v56 = _Q0;
      do
      {
        MEMORY[0x24C1A4BE0](&v70, v35);
        v70 = v56;
        v69[0] = xmmword_247757270;
        v68 = 0uLL;
        REDecomposeMatrix();
        v42 = v70;
        v44 = v68;
        v43 = v69[0];
        v34[2] = DWORD2(v70);
        *v34 = v42;
        *(v34 + 1) = v43;
        v34[10] = DWORD2(v44);
        *(v34 + 4) = v44;
        v35 += 128;
        v34 += 12;
        v36 -= 128;
      }

      while (v36);
    }

    if (v64[0] == v26)
    {
      std::vector<simd_float4x4>::resize(__p, v26);
      if (v64[0])
      {
        v45 = v65;
        v46 = __p[0];
        v47 = v64[0] << 7;
        do
        {
          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          pxrInternal__aapl__pxrReserved__::GfMatrix4d::GetInverse(&v70, v45, 0, 0.0);
          MEMORY[0x24C1A4BE0](v69, &v70);
          v48 = v69[1];
          v49 = v69[2];
          v50 = v69[3];
          *v46 = v69[0];
          v46[1] = v48;
          v46[2] = v49;
          v46[3] = v50;
          v45 = (v45 + 128);
          v46 += 4;
          v47 -= 128;
        }

        while (v47);
      }
    }

    v51 = RESkeletonDefinitionCreate();
    pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v70, a2);
    Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(&v70);
    if (*(Name + 23) < 0)
    {
      v53 = *Name;
    }

    RESkeletonDefinitionSetName();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v70);
    RESkeletonDefinitionSetJointNames();
    RESkeletonDefinitionSetLocalRestPoses();
    RESkeletonDefinitionSetInverseBindPoses();
    v54 = MEMORY[0x24C1A42D0](v51, 0);
    RERelease();
    *&v68 = v54;
    if (v54)
    {
      RERetain();
      RERelease();
    }

    *(&v69[0] + 1) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::WrappedRERef<REGeomSkeleton *>>(void)::ti;
    pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REGeomSkeleton *>>::_PlaceCopy();
  }

  v27 = v63;
  v28 = v61[0];
  v29 = 8 * *&v62[0];
  while (1)
  {
    v30 = *v27 & 0xFFFFFFFFFFFFFFF8;
    if (v30)
    {
      v31 = *(v30 + 39);
      if (v31 < 0)
      {
        v33 = v30 + 16;
        v32 = *(v30 + 16);
        if (*(v33 + 8) > 1uLL)
        {
LABEL_55:
          if (*v32 == 47)
          {
            ++v32;
          }
        }
      }

      else
      {
        v32 = (v30 + 16);
        if (v31 >= 2u)
        {
          goto LABEL_55;
        }
      }
    }

    else
    {
      v32 = "";
    }

    *v28++ = v32;
    ++v27;
    v29 -= 8;
    if (!v29)
    {
      goto LABEL_58;
    }
  }
}

void sub_247533ED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, pxrInternal__aapl__pxrReserved__::VtValue *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, char a43)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<realityio::WrappedRERef<REGeomSkeleton *>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::WrappedRERef<REGeomSkeleton *>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REGeomSkeleton *>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<realityio::WrappedRERef<REGeomSkeleton *>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::WrappedRERef<REGeomSkeleton *>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REGeomSkeleton *>>>::_Move(void *a1, void *a2)
{
  *a2 = *a1;
  *a1 = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::WrappedRERef<REGeomSkeleton *>>>::_DecrementIfValid(0);
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<realityio::WrappedRERef<REGeomSkeleton *>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::WrappedRERef<REGeomSkeleton *>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REGeomSkeleton *>>>::_MakeMutable(uint64_t *result)
{
  v1 = atomic_load((*result + 8));
  if (v1 != 1)
  {
    v2 = *result;
    operator new();
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<realityio::WrappedRERef<REGeomSkeleton *>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::WrappedRERef<REGeomSkeleton *>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REGeomSkeleton *>>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::WrappedRERef<REGeomSkeleton *>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REGeomSkeleton *>>::_PlaceCopy();
}

uint64_t pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::WrappedRERef<REGeomSkeleton *>>>::_DecrementIfValid(uint64_t result)
{
  if (result && atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    v2 = v1;
    __dmb(9u);
    realityio::WrappedRERef<REGeomSkeleton *>::~WrappedRERef(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t RIOPxrVtValueGetTypeID()
{
  if (RIOPxrVtValueGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOPxrVtValueGetTypeID::onceToken, &__block_literal_global_7);
  }

  return RIOPxrVtValueGetTypeID::typeID;
}

void __RIOPxrVtValueGetTypeID_block_invoke()
{
  if (!RIOPxrVtValueGetTypeID::typeID)
  {
    RIOPxrVtValueGetTypeID::typeID = _CFRuntimeRegisterClass();
  }
}

uint64_t RIOPxrVtValueCreateWithToken(uint64_t a1)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  v6[0] = v1;
  v6[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::TfToken>(void)::ti + 1;
  if ((v1 & 7) != 0)
  {
    v2 = (v1 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed) & 1) == 0)
    {
      v6[0] = v2;
    }
  }

  v3 = RIOPxrVtValueCreate<pxrInternal__aapl__pxrReserved__::VtValue>(v6);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v6);
  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

void sub_247534424(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrVtValueCreate<pxrInternal__aapl__pxrReserved__::VtValue>(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBECE8];
  if (RIOPxrVtValueGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOPxrVtValueGetTypeID::onceToken, &__block_literal_global_7);
  }

  Instance = _CFRuntimeCreateInstance();
  v4 = Instance;
  if (Instance)
  {
    *(Instance + 24) = 0;
    if (a1[1])
    {
      pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(v9, Instance + 16);
      v5 = a1[1];
      v6 = ~*(a1 + 2);
      *(v4 + 24) = v5;
      if ((v6 & 3) != 0)
      {
        (*((v5 & 0xFFFFFFFFFFFFFFF8) + 40))(a1, v4 + 16);
      }

      else
      {
        *(v4 + 16) = *a1;
      }

      a1[1] = 0;
      if (v10)
      {
        (*(v10 + 32))(v9);
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

void sub_247534548(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t RIOPxrVtValueCreateWithPath(uint64_t a1)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::SdfPath>(void)::ti + 1;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v5, (a1 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v5 + 1, (a1 + 20));
  v2 = RIOPxrVtValueCreate<pxrInternal__aapl__pxrReserved__::VtValue>(v5);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void sub_2475345F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va);
  _Unwind_Resume(a1);
}

void RIOPxrVtValueCreateWithAssetPath()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfAssetPath>::_PlaceCopy();
}

void sub_247534688(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va);
  _Unwind_Resume(a1);
}

void RIOPxrVtValueCreateWithCString(const char *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = strlen(a1);
  if (v2 < 0x7FFFFFFFFFFFFFF8)
  {
    v3 = v2;
    if (v2 < 0x17)
    {
      v5 = v2;
      if (v2)
      {
        memcpy(&__p, a1, v2);
      }

      *(&__p + v3) = 0;
      v6 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<std::string>(void)::ti;
      pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::string>::_PlaceCopy();
    }

    operator new();
  }

  std::string::__throw_length_error[abi:ne200100]();
}

uint64_t RIOPxrVtValueCreateWithBool(char a1)
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[1] = &unk_285946C7B;
  LOBYTE(v4[0]) = a1;
  v1 = RIOPxrVtValueCreate<pxrInternal__aapl__pxrReserved__::VtValue>(v4);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v4);
  v2 = *MEMORY[0x277D85DE8];
  return v1;
}

void sub_247534864(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrVtValueCreateWithInt32(int a1)
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[1] = &unk_28594ADA3;
  LODWORD(v4[0]) = a1;
  v1 = RIOPxrVtValueCreate<pxrInternal__aapl__pxrReserved__::VtValue>(v4);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v4);
  v2 = *MEMORY[0x277D85DE8];
  return v1;
}

void sub_2475348F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrVtValueCreateWithInt64(uint64_t a1)
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = a1;
  v4[1] = &unk_28594AE5B;
  v1 = RIOPxrVtValueCreate<pxrInternal__aapl__pxrReserved__::VtValue>(v4);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v4);
  v2 = *MEMORY[0x277D85DE8];
  return v1;
}

void sub_247534980(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrVtValueCreateWithUInt8(char a1)
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[1] = &unk_28594AF13;
  LOBYTE(v4[0]) = a1;
  v1 = RIOPxrVtValueCreate<pxrInternal__aapl__pxrReserved__::VtValue>(v4);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v4);
  v2 = *MEMORY[0x277D85DE8];
  return v1;
}

void sub_247534A10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrVtValueCreateWithUInt32(int a1)
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[1] = &unk_28594AFCB;
  LODWORD(v4[0]) = a1;
  v1 = RIOPxrVtValueCreate<pxrInternal__aapl__pxrReserved__::VtValue>(v4);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v4);
  v2 = *MEMORY[0x277D85DE8];
  return v1;
}

void sub_247534AA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrVtValueCreateWithUInt64(uint64_t a1)
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = a1;
  v4[1] = &unk_28594B083;
  v1 = RIOPxrVtValueCreate<pxrInternal__aapl__pxrReserved__::VtValue>(v4);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v4);
  v2 = *MEMORY[0x277D85DE8];
  return v1;
}

void sub_247534B2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrVtValueCreateWithFloat(float a1)
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[1] = &unk_2859471F3;
  *v4 = a1;
  v1 = RIOPxrVtValueCreate<pxrInternal__aapl__pxrReserved__::VtValue>(v4);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v4);
  v2 = *MEMORY[0x277D85DE8];
  return v1;
}

void sub_247534BBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrVtValueCreateWithDouble(double a1)
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[1] = &unk_285946DC3;
  *v4 = a1;
  v1 = RIOPxrVtValueCreate<pxrInternal__aapl__pxrReserved__::VtValue>(v4);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v4);
  v2 = *MEMORY[0x277D85DE8];
  return v1;
}

void sub_247534C4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrVtValueCreateWithFloat2(double a1)
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec2f>(void)::ti + 3;
  *v4 = a1;
  v1 = RIOPxrVtValueCreate<pxrInternal__aapl__pxrReserved__::VtValue>(v4);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v4);
  v2 = *MEMORY[0x277D85DE8];
  return v1;
}

void sub_247534CDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va);
  _Unwind_Resume(a1);
}

void sub_247534DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va);
  _Unwind_Resume(a1);
}

void sub_247534E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va);
  _Unwind_Resume(a1);
}

void sub_247534F30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va);
  _Unwind_Resume(a1);
}

void RIOPxrVtValueCreateWithDouble3(__int128 *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v1 = *(a1 + 2);
  v3 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec3d>(void)::ti + 2;
  operator new();
}

void sub_247535008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va);
  _Unwind_Resume(a1);
}

void RIOPxrVtValueCreateWithDouble4(__int128 *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = a1[1];
  v3 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec4d>(void)::ti + 2;
  operator new();
}

void sub_2475350D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrVtValueCreateWithQuath(__n128 a1)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4 = a1;
  v5[0] = to_GfQuat<simd_quatf,pxrInternal__aapl__pxrReserved__::GfQuath>(&v4);
  v5[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfQuath>(void)::ti + 1;
  v1 = RIOPxrVtValueCreate<pxrInternal__aapl__pxrReserved__::VtValue>(v5);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v5);
  v2 = *MEMORY[0x277D85DE8];
  return v1;
}

void sub_247535168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va);
  _Unwind_Resume(a1);
}

unint64_t to_GfQuat<simd_quatf,pxrInternal__aapl__pxrReserved__::GfQuath>(uint64_t a1)
{
  v2 = *(a1 + 12);
  if (v2 == 0.0)
  {
    v3 = HIWORD(LODWORD(v2));
  }

  else if (*(MEMORY[0x277D86650] + 2 * (LODWORD(v2) >> 23)))
  {
    v3 = *(MEMORY[0x277D86650] + 2 * (LODWORD(v2) >> 23)) + (((LODWORD(v2) & 0x7FFFFF) + ((LODWORD(v2) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    v3 = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v2));
  }

  LODWORD(v4) = HIDWORD(*a1);
  v5 = *a1;
  if (COERCE_FLOAT(*a1) == 0.0)
  {
    v6 = v5 >> 16;
  }

  else if (*(MEMORY[0x277D86650] + 2 * (v5 >> 23)))
  {
    v6 = *(MEMORY[0x277D86650] + 2 * (v5 >> 23)) + (((v5 & 0x7FFFFF) + ((v5 >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v6) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(v5);
    v4 = *(a1 + 4);
  }

  if (v4 == 0.0)
  {
    v7 = HIWORD(LODWORD(v4));
  }

  else if (*(MEMORY[0x277D86650] + 2 * (LODWORD(v4) >> 23)))
  {
    v7 = *(MEMORY[0x277D86650] + 2 * (LODWORD(v4) >> 23)) + (((LODWORD(v4) & 0x7FFFFF) + ((LODWORD(v4) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v7) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v4));
  }

  v8 = *(a1 + 8);
  if (v8 == 0.0)
  {
    v9 = HIWORD(LODWORD(v8));
  }

  else if (*(MEMORY[0x277D86650] + 2 * (LODWORD(v8) >> 23)))
  {
    v9 = *(MEMORY[0x277D86650] + 2 * (LODWORD(v8) >> 23)) + (((LODWORD(v8) & 0x7FFFFF) + ((LODWORD(v8) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v9) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v8));
  }

  return (v3 << 48) | (v9 << 32) | (v7 << 16) | v6;
}

void sub_24753539C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va);
  _Unwind_Resume(a1);
}

void RIOPxrVtValueCreateWithQuatd(__int128 *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = a1[1];
  v3 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfQuatd>(void)::ti;
  operator new();
}

void sub_247535460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrVtValueCreateWithInt2(double a1)
{
  v4[2] = *MEMORY[0x277D85DE8];
  *v4 = a1;
  v4[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec2i>(void)::ti + 3;
  v1 = RIOPxrVtValueCreate<pxrInternal__aapl__pxrReserved__::VtValue>(v4);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v4);
  v2 = *MEMORY[0x277D85DE8];
  return v1;
}

void sub_2475354F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va);
  _Unwind_Resume(a1);
}

void sub_2475355D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va);
  _Unwind_Resume(a1);
}

void sub_2475356AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrVtValueCreateWithHalf(float a1)
{
  v5[2] = *MEMORY[0x277D85DE8];
  if (a1 == 0.0)
  {
    v1 = HIWORD(LODWORD(a1));
  }

  else if (*(MEMORY[0x277D86650] + 2 * (LODWORD(a1) >> 23)))
  {
    v1 = *(MEMORY[0x277D86650] + 2 * (LODWORD(a1) >> 23)) + (((LODWORD(a1) & 0x7FFFFF) + ((LODWORD(a1) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v1) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(a1));
  }

  v5[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::pxr_half::half>(void)::ti + 3;
  LOWORD(v5[0]) = v1;
  v2 = RIOPxrVtValueCreate<pxrInternal__aapl__pxrReserved__::VtValue>(v5);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void sub_247535780(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrVtValueCreateWithHalf2(double a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v1 = *(&a1 + 1);
  if (*&a1 == 0.0)
  {
    v2 = HIWORD(LODWORD(a1));
  }

  else if (*(MEMORY[0x277D86650] + 2 * (LODWORD(a1) >> 23)))
  {
    v2 = *(MEMORY[0x277D86650] + 2 * (LODWORD(a1) >> 23)) + (((LODWORD(a1) & 0x7FFFFF) + ((LODWORD(a1) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v2) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(a1));
  }

  if (v1 == 0.0)
  {
    v3 = HIWORD(LODWORD(v1));
  }

  else if (*(MEMORY[0x277D86650] + 2 * (LODWORD(v1) >> 23)))
  {
    v3 = *(MEMORY[0x277D86650] + 2 * (LODWORD(v1) >> 23)) + (((LODWORD(v1) & 0x7FFFFF) + ((LODWORD(v1) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v3) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v1));
  }

  v7[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec2h>(void)::ti + 3;
  LODWORD(v7[0]) = v2 | (v3 << 16);
  v4 = RIOPxrVtValueCreate<pxrInternal__aapl__pxrReserved__::VtValue>(v7);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v7);
  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

void sub_2475358AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrVtValueCreateWithHalf3(__n128 a1)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v1 = a1.n128_f32[1];
  if (a1.n128_f32[0] == 0.0)
  {
    v2 = HIWORD(a1.n128_u32[0]);
  }

  else if (*(MEMORY[0x277D86650] + 2 * (a1.n128_u32[0] >> 23)))
  {
    v2 = *(MEMORY[0x277D86650] + 2 * (a1.n128_u32[0] >> 23)) + (((a1.n128_u32[0] & 0x7FFFFF) + ((a1.n128_u32[0] >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    v10 = a1.n128_u32[2];
    v3 = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(a1.n128_u32[0]);
    a1.n128_u32[2] = v10;
    LOWORD(v2) = v3;
  }

  if (v1 == 0.0)
  {
    v4 = HIWORD(LODWORD(v1));
  }

  else if (*(MEMORY[0x277D86650] + 2 * (LODWORD(v1) >> 23)))
  {
    v4 = *(MEMORY[0x277D86650] + 2 * (LODWORD(v1) >> 23)) + (((LODWORD(v1) & 0x7FFFFF) + ((LODWORD(v1) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    v11 = a1.n128_u32[2];
    v5 = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v1));
    a1.n128_u32[2] = v11;
    LOWORD(v4) = v5;
  }

  if (a1.n128_f32[2] == 0.0)
  {
    v6 = HIWORD(a1.n128_u32[2]);
  }

  else if (*(MEMORY[0x277D86650] + 2 * (a1.n128_u32[2] >> 23)))
  {
    v6 = *(MEMORY[0x277D86650] + 2 * (a1.n128_u32[2] >> 23)) + (((a1.n128_u32[2] & 0x7FFFFF) + ((a1.n128_u32[2] >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v6) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(a1.n128_u32[2]);
  }

  v12[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec3h>(void)::ti + 3;
  LODWORD(v12[0]) = v2 | (v4 << 16);
  WORD2(v12[0]) = v6;
  v7 = RIOPxrVtValueCreate<pxrInternal__aapl__pxrReserved__::VtValue>(v12);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v12);
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_247535A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrVtValueCreateWithHalf4(__n128 a1)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4 = a1;
  v5[0] = _Z7to_vec4IDv4_fN32pxrInternal__aapl__pxrReserved__7GfVec4hEET0_RKT_(&v4);
  v5[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec4h>(void)::ti + 3;
  v1 = RIOPxrVtValueCreate<pxrInternal__aapl__pxrReserved__::VtValue>(v5);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v5);
  v2 = *MEMORY[0x277D85DE8];
  return v1;
}

void sub_247535AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va);
  _Unwind_Resume(a1);
}

unint64_t _Z7to_vec4IDv4_fN32pxrInternal__aapl__pxrReserved__7GfVec4hEET0_RKT_(uint64_t a1)
{
  LODWORD(v2) = HIDWORD(*a1);
  v3 = COERCE_FLOAT(*a1) == 0.0;
  v4 = *a1;
  if (v3)
  {
    v5 = v4 >> 16;
  }

  else if (*(MEMORY[0x277D86650] + 2 * (v4 >> 23)))
  {
    v5 = *(MEMORY[0x277D86650] + 2 * (v4 >> 23)) + (((v4 & 0x7FFFFF) + ((v4 >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v5) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(v4);
    v2 = *(a1 + 4);
  }

  if (v2 == 0.0)
  {
    v6 = HIWORD(LODWORD(v2));
  }

  else if (*(MEMORY[0x277D86650] + 2 * (LODWORD(v2) >> 23)))
  {
    v6 = *(MEMORY[0x277D86650] + 2 * (LODWORD(v2) >> 23)) + (((LODWORD(v2) & 0x7FFFFF) + ((LODWORD(v2) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v6) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v2));
  }

  v7 = *(a1 + 8);
  if (v7 == 0.0)
  {
    v8 = HIWORD(LODWORD(v7));
  }

  else if (*(MEMORY[0x277D86650] + 2 * (LODWORD(v7) >> 23)))
  {
    v8 = *(MEMORY[0x277D86650] + 2 * (LODWORD(v7) >> 23)) + (((LODWORD(v7) & 0x7FFFFF) + ((LODWORD(v7) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v8) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v7));
  }

  v9 = *(a1 + 12);
  if (v9 == 0.0)
  {
    v10 = HIWORD(LODWORD(v9));
  }

  else if (*(MEMORY[0x277D86650] + 2 * (LODWORD(v9) >> 23)))
  {
    v10 = *(MEMORY[0x277D86650] + 2 * (LODWORD(v9) >> 23)) + (((LODWORD(v9) & 0x7FFFFF) + ((LODWORD(v9) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    v10 = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v9));
  }

  return (v8 << 32) | (v10 << 48) | (v6 << 16) | v5;
}

void RIOPxrVtValueCreateWithMatrix2f()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix2d>(void)::ti + 2;
  operator new();
}

void sub_247535D18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va);
  _Unwind_Resume(a1);
}

void sub_247535E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va);
  _Unwind_Resume(a1);
}

void sub_247535FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va);
  _Unwind_Resume(a1);
}

void RIOPxrVtValueCreateWithMatrix3d(__int128 *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 2);
  v5 = a1[2];
  v6 = *a1;
  v2 = *(a1 + 6);
  v4 = a1[4];
  v3 = *(a1 + 10);
  v7 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix3d>(void)::ti + 2;
  operator new();
}

void sub_2475360FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va);
  _Unwind_Resume(a1);
}

void RIOPxrVtValueCreateWithMatrix4d(__int128 *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = a1[1];
  v4 = *a1;
  v7 = a1[3];
  v2 = a1[4];
  v3 = a1[2];
  v5 = a1[7];
  v6 = a1[5];
  v1 = a1[6];
  v9 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix4d>(void)::ti + 2;
  operator new();
}

void RIOPxrVtValueCreateWithBoolArray(const __CFArray *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  Count = CFArrayGetCount(a1);
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(&v19);
  v3 = v19;
  if (Count == v19)
  {
LABEL_28:
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        v22[0] = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
        RIOPxrVtValueGetBool(ValueAtIndex, v22);
        v18 = v22[0];
        pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DetachIfNotUnique(&v19);
        v21[i] = v18;
      }
    }

LABEL_31:
    v23 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>>(void)::ti;
    pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<int>>::_PlaceCopy();
  }

  if (!Count)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(&v19);
    goto LABEL_31;
  }

  v4 = v21;
  if (v21)
  {
    if (!*(&v20 + 1))
    {
      v5 = atomic_load(v21 - 2);
      if (v5 == 1)
      {
        if (Count > v19)
        {
          v6 = v21;
          if (*(v21 - 1) < Count)
          {
            New = pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_AllocateNew(&v19, Count);
            v4 = New;
            if (v3)
            {
              for (j = 0; j != v3; ++j)
              {
                New[j] = v6[j];
              }
            }
          }

          bzero(&v4[v3], Count - v3);
        }

        v9 = v4;
        goto LABEL_25;
      }

      v4 = v21;
    }

    v12 = pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_AllocateNew(&v19, Count);
    v9 = v12;
    if (v3 >= Count)
    {
      v13 = Count;
    }

    else
    {
      v13 = v3;
    }

    if (v3)
    {
      v14 = v12;
      do
      {
        v15 = *v4++;
        *v14++ = v15;
        --v13;
      }

      while (v13);
    }

    v11 = Count - v3;
    if (Count <= v3)
    {
      goto LABEL_25;
    }

    v10 = &v12[v3];
  }

  else
  {
    v10 = pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_AllocateNew(&v19, Count);
    v9 = v10;
    v11 = Count;
  }

  bzero(v10, v11);
LABEL_25:
  if (v9 != v21)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v19);
    v21 = v9;
  }

  *&v19 = Count;
  goto LABEL_28;
}

void sub_247536420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

BOOL RIOPxrVtValueGetBool(uint64_t a1, _BYTE *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1 || !*(a1 + 24))
  {
    goto LABEL_11;
  }

  v4 = (a1 + 16);
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<BOOL>((a1 + 16)))
  {
    v5 = *(a1 + 24);
    if ((v5 & 4) != 0)
    {
      v4 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(a1 + 16);
    }

    *a2 = *v4;
    v6 = 1;
    goto LABEL_12;
  }

  Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid((a1 + 16));
  if (!pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, MEMORY[0x277D82798], v8))
  {
LABEL_11:
    v6 = 0;
    goto LABEL_12;
  }

  pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v13, (a1 + 16));
  v9 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<BOOL>(v13);
  type_name = v9->__type_name;
  v6 = type_name != 0;
  if (type_name)
  {
    *a2 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<BOOL>(v9);
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v13);
LABEL_12:
  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

void RIOPxrVtValueCreateWithInt32Array(const __CFArray *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  Count = CFArrayGetCount(a1);
  pxrInternal__aapl__pxrReserved__::VtArray<int>::VtArray(v6, Count);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      v7 = 0;
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      RIOPxrVtValueGetInt32(ValueAtIndex, &v7);
      v5 = v7;
      pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(v6);
      *(v6[4] + 4 * i) = v5;
    }
  }

  v8 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<int>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<int>>::_PlaceCopy();
}

void sub_247536684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtArray<int>::VtArray(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(a1);
  v6 = &v5;
  pxrInternal__aapl__pxrReserved__::VtArray<int>::resize<pxrInternal__aapl__pxrReserved__::VtArray<int>::assign(unsigned long,int const&)::_Filler>(a1, a2, &v6);
  return a1;
}

BOOL RIOPxrVtValueGetInt32(uint64_t a1, _DWORD *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1 || !*(a1 + 24))
  {
    goto LABEL_11;
  }

  v4 = (a1 + 16);
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<int>((a1 + 16)))
  {
    v5 = *(a1 + 24);
    if ((v5 & 4) != 0)
    {
      v4 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(a1 + 16);
    }

    *a2 = *v4;
    v6 = 1;
    goto LABEL_12;
  }

  Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid((a1 + 16));
  if (!pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, MEMORY[0x277D827C0], v8))
  {
LABEL_11:
    v6 = 0;
    goto LABEL_12;
  }

  pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v13, (a1 + 16));
  v9 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<int>(v13);
  type_name = v9->__type_name;
  v6 = type_name != 0;
  if (type_name)
  {
    *a2 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<int>(v9);
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v13);
LABEL_12:
  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

void RIOPxrVtValueCreateWithInt64Array(const __CFArray *a1)
{
  v23[2] = *MEMORY[0x277D85DE8];
  Count = CFArrayGetCount(a1);
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(&v20);
  v3 = v20;
  if (Count == v20)
  {
    goto LABEL_29;
  }

  if (Count)
  {
    v4 = v22;
    if (v22)
    {
      if (!*(&v21 + 1))
      {
        v5 = atomic_load(v22 - 2);
        if (v5 == 1)
        {
          if (Count > v20)
          {
            v6 = v22;
            if (*(v22 - 1) < Count)
            {
              New = pxrInternal__aapl__pxrReserved__::VtArray<long long>::_AllocateNew(&v20, Count);
              v4 = New;
              if (v3)
              {
                for (i = 0; i != v3; ++i)
                {
                  New[i] = v6[i];
                }
              }
            }

            bzero(&v4[v3], 8 * (Count - v3));
          }

          v9 = v4;
          goto LABEL_26;
        }

        v4 = v22;
      }

      v12 = pxrInternal__aapl__pxrReserved__::VtArray<long long>::_AllocateNew(&v20, Count);
      v9 = v12;
      if (v3 >= Count)
      {
        v13 = Count;
      }

      else
      {
        v13 = v3;
      }

      if (v3)
      {
        v14 = 8 * v13;
        v15 = v12;
        do
        {
          v16 = *v4++;
          *v15++ = v16;
          v14 -= 8;
        }

        while (v14);
      }

      if (Count <= v3)
      {
        goto LABEL_26;
      }

      v11 = 8 * (Count - v3);
      v10 = &v12[v3];
LABEL_25:
      bzero(v10, v11);
LABEL_26:
      if (v9 != v22)
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v20);
        v22 = v9;
      }

      *&v20 = Count;
LABEL_29:
      if (Count >= 1)
      {
        for (j = 0; j != Count; ++j)
        {
          v23[0] = 0;
          ValueAtIndex = CFArrayGetValueAtIndex(a1, j);
          RIOPxrVtValueGetInt64(ValueAtIndex, v23);
          v19 = v23[0];
          pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DetachIfNotUnique(&v20);
          v22[j] = v19;
        }
      }

      v23[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(void)::ti;
      pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<int>>::_PlaceCopy();
    }

    if (8 * Count / Count == 8)
    {
      v10 = pxrInternal__aapl__pxrReserved__::VtArray<long long>::_AllocateNew(&v20, Count);
      v9 = v10;
      v11 = 8 * Count;
      goto LABEL_25;
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(&v20);
  goto LABEL_29;
}

void sub_247536A88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

BOOL RIOPxrVtValueGetInt64(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1 || !*(a1 + 24))
  {
    goto LABEL_11;
  }

  v4 = (a1 + 16);
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<long long>((a1 + 16)))
  {
    v5 = *(a1 + 24);
    if ((v5 & 4) != 0)
    {
      v4 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(a1 + 16);
    }

    *a2 = *v4;
    v6 = 1;
    goto LABEL_12;
  }

  Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid((a1 + 16));
  if (!pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, MEMORY[0x277D827F8], v8))
  {
LABEL_11:
    v6 = 0;
    goto LABEL_12;
  }

  pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v13, (a1 + 16));
  v9 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<long long>(v13);
  type_name = v9->__type_name;
  v6 = type_name != 0;
  if (type_name)
  {
    *a2 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<long long>(v9);
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v13);
LABEL_12:
  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

void RIOPxrVtValueCreateWithUInt32Array(const __CFArray *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  Count = CFArrayGetCount(a1);
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(&v20);
  v3 = v20;
  if (Count == v20)
  {
    goto LABEL_29;
  }

  if (Count)
  {
    v4 = v22;
    if (v22)
    {
      if (!*(&v21 + 1))
      {
        v5 = atomic_load(v22 - 2);
        if (v5 == 1)
        {
          if (Count > v20)
          {
            v6 = v22;
            if (*(v22 - 1) < Count)
            {
              New = pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_AllocateNew(&v20, Count);
              v4 = New;
              if (v3)
              {
                for (i = 0; i != v3; ++i)
                {
                  New[i] = v6[i];
                }
              }
            }

            bzero(&v4[v3], 4 * (Count - v3));
          }

          v9 = v4;
          goto LABEL_26;
        }

        v4 = v22;
      }

      v12 = pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_AllocateNew(&v20, Count);
      v9 = v12;
      if (v3 >= Count)
      {
        v13 = Count;
      }

      else
      {
        v13 = v3;
      }

      if (v3)
      {
        v14 = 4 * v13;
        v15 = v12;
        do
        {
          v16 = *v4++;
          *v15++ = v16;
          v14 -= 4;
        }

        while (v14);
      }

      if (Count <= v3)
      {
        goto LABEL_26;
      }

      v11 = 4 * (Count - v3);
      v10 = &v12[v3];
LABEL_25:
      bzero(v10, v11);
LABEL_26:
      if (v9 != v22)
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v20);
        v22 = v9;
      }

      *&v20 = Count;
LABEL_29:
      if (Count >= 1)
      {
        for (j = 0; j != Count; ++j)
        {
          v23 = 0;
          ValueAtIndex = CFArrayGetValueAtIndex(a1, j);
          RIOPxrVtValueGetUInt32(ValueAtIndex, &v23);
          v19 = v23;
          pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DetachIfNotUnique(&v20);
          v22[j] = v19;
        }
      }

      v24 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>(void)::ti;
      pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<int>>::_PlaceCopy();
    }

    if (4 * Count / Count == 4)
    {
      v10 = pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_AllocateNew(&v20, Count);
      v9 = v10;
      v11 = 4 * Count;
      goto LABEL_25;
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(&v20);
  goto LABEL_29;
}

void sub_247536E24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

BOOL RIOPxrVtValueGetUInt32(uint64_t a1, _DWORD *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1 || !*(a1 + 24))
  {
    goto LABEL_11;
  }

  v4 = (a1 + 16);
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<unsigned int>((a1 + 16)))
  {
    v5 = *(a1 + 24);
    if ((v5 & 4) != 0)
    {
      v4 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(a1 + 16);
    }

    *a2 = *v4;
    v6 = 1;
    goto LABEL_12;
  }

  Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid((a1 + 16));
  if (!pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, MEMORY[0x277D827C8], v8))
  {
LABEL_11:
    v6 = 0;
    goto LABEL_12;
  }

  pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v13, (a1 + 16));
  v9 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<unsigned int>(v13);
  type_name = v9->__type_name;
  v6 = type_name != 0;
  if (type_name)
  {
    *a2 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<unsigned int>(v9);
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v13);
LABEL_12:
  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

void RIOPxrVtValueCreateWithUInt8Array(const __CFArray *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  Count = CFArrayGetCount(a1);
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(&v19);
  v3 = v19;
  if (Count == v19)
  {
LABEL_28:
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        v22[0] = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
        RIOPxrVtValueGetUInt8(ValueAtIndex, v22);
        v18 = v22[0];
        pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DetachIfNotUnique(&v19);
        v21[i] = v18;
      }
    }

LABEL_31:
    v23 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>(void)::ti;
    pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<int>>::_PlaceCopy();
  }

  if (!Count)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(&v19);
    goto LABEL_31;
  }

  v4 = v21;
  if (v21)
  {
    if (!*(&v20 + 1))
    {
      v5 = atomic_load(v21 - 2);
      if (v5 == 1)
      {
        if (Count > v19)
        {
          v6 = v21;
          if (*(v21 - 1) < Count)
          {
            New = pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_AllocateNew(&v19, Count);
            v4 = New;
            if (v3)
            {
              for (j = 0; j != v3; ++j)
              {
                New[j] = v6[j];
              }
            }
          }

          bzero(&v4[v3], Count - v3);
        }

        v9 = v4;
        goto LABEL_25;
      }

      v4 = v21;
    }

    v12 = pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_AllocateNew(&v19, Count);
    v9 = v12;
    if (v3 >= Count)
    {
      v13 = Count;
    }

    else
    {
      v13 = v3;
    }

    if (v3)
    {
      v14 = v12;
      do
      {
        v15 = *v4++;
        *v14++ = v15;
        --v13;
      }

      while (v13);
    }

    v11 = Count - v3;
    if (Count <= v3)
    {
      goto LABEL_25;
    }

    v10 = &v12[v3];
  }

  else
  {
    v10 = pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_AllocateNew(&v19, Count);
    v9 = v10;
    v11 = Count;
  }

  bzero(v10, v11);
LABEL_25:
  if (v9 != v21)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v19);
    v21 = v9;
  }

  *&v19 = Count;
  goto LABEL_28;
}

void sub_2475371A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

BOOL RIOPxrVtValueGetUInt8(uint64_t a1, _BYTE *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1 || !*(a1 + 24))
  {
    goto LABEL_11;
  }

  v4 = (a1 + 16);
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<unsigned char>((a1 + 16)))
  {
    v5 = *(a1 + 24);
    if ((v5 & 4) != 0)
    {
      v4 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(a1 + 16);
    }

    *a2 = *v4;
    v6 = 1;
    goto LABEL_12;
  }

  Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid((a1 + 16));
  if (!pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, MEMORY[0x277D827B8], v8))
  {
LABEL_11:
    v6 = 0;
    goto LABEL_12;
  }

  pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v13, (a1 + 16));
  v9 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<unsigned char>(v13);
  type_name = v9->__type_name;
  v6 = type_name != 0;
  if (type_name)
  {
    *a2 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<unsigned char>(v9);
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v13);
LABEL_12:
  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

void RIOPxrVtValueCreateWithUInt64Array(const __CFArray *a1)
{
  v23[2] = *MEMORY[0x277D85DE8];
  Count = CFArrayGetCount(a1);
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(&v20);
  v3 = v20;
  if (Count == v20)
  {
    goto LABEL_29;
  }

  if (Count)
  {
    v4 = v22;
    if (v22)
    {
      if (!*(&v21 + 1))
      {
        v5 = atomic_load(v22 - 2);
        if (v5 == 1)
        {
          if (Count > v20)
          {
            v6 = v22;
            if (*(v22 - 1) < Count)
            {
              New = pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_AllocateNew(&v20, Count);
              v4 = New;
              if (v3)
              {
                for (i = 0; i != v3; ++i)
                {
                  New[i] = v6[i];
                }
              }
            }

            bzero(&v4[v3], 8 * (Count - v3));
          }

          v9 = v4;
          goto LABEL_26;
        }

        v4 = v22;
      }

      v12 = pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_AllocateNew(&v20, Count);
      v9 = v12;
      if (v3 >= Count)
      {
        v13 = Count;
      }

      else
      {
        v13 = v3;
      }

      if (v3)
      {
        v14 = 8 * v13;
        v15 = v12;
        do
        {
          v16 = *v4++;
          *v15++ = v16;
          v14 -= 8;
        }

        while (v14);
      }

      if (Count <= v3)
      {
        goto LABEL_26;
      }

      v11 = 8 * (Count - v3);
      v10 = &v12[v3];
LABEL_25:
      bzero(v10, v11);
LABEL_26:
      if (v9 != v22)
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v20);
        v22 = v9;
      }

      *&v20 = Count;
LABEL_29:
      if (Count >= 1)
      {
        for (j = 0; j != Count; ++j)
        {
          v23[0] = 0;
          ValueAtIndex = CFArrayGetValueAtIndex(a1, j);
          RIOPxrVtValueGetUInt64(ValueAtIndex, v23);
          v19 = v23[0];
          pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_DetachIfNotUnique(&v20);
          v22[j] = v19;
        }
      }

      v23[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>>(void)::ti;
      pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<int>>::_PlaceCopy();
    }

    if (8 * Count / Count == 8)
    {
      v10 = pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_AllocateNew(&v20, Count);
      v9 = v10;
      v11 = 8 * Count;
      goto LABEL_25;
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(&v20);
  goto LABEL_29;
}

void sub_247537540(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

BOOL RIOPxrVtValueGetUInt64(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1 || !*(a1 + 24))
  {
    goto LABEL_11;
  }

  v4 = (a1 + 16);
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<unsigned long long>((a1 + 16)))
  {
    v5 = *(a1 + 24);
    if ((v5 & 4) != 0)
    {
      v4 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(a1 + 16);
    }

    *a2 = *v4;
    v6 = 1;
    goto LABEL_12;
  }

  Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid((a1 + 16));
  if (!pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, MEMORY[0x277D82800], v8))
  {
LABEL_11:
    v6 = 0;
    goto LABEL_12;
  }

  pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v13, (a1 + 16));
  v9 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<unsigned long long>(v13);
  type_name = v9->__type_name;
  v6 = type_name != 0;
  if (type_name)
  {
    *a2 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<unsigned long long>(v9);
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v13);
LABEL_12:
  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

void RIOPxrVtValueCreateWithFloatArray(const __CFArray *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  Count = CFArrayGetCount(a1);
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(&v20);
  v3 = v20;
  if (Count == v20)
  {
    goto LABEL_29;
  }

  if (Count)
  {
    v4 = v22;
    if (v22)
    {
      if (!*(&v21 + 1))
      {
        v5 = atomic_load(v22 - 2);
        if (v5 == 1)
        {
          if (Count > v20)
          {
            v6 = v22;
            if (*(v22 - 1) < Count)
            {
              New = pxrInternal__aapl__pxrReserved__::VtArray<float>::_AllocateNew(&v20, Count);
              v4 = New;
              if (v3)
              {
                for (i = 0; i != v3; ++i)
                {
                  New[i] = v6[i];
                }
              }
            }

            bzero(&v4[v3], 4 * (Count - v3));
          }

          v9 = v4;
          goto LABEL_26;
        }

        v4 = v22;
      }

      v12 = pxrInternal__aapl__pxrReserved__::VtArray<float>::_AllocateNew(&v20, Count);
      v9 = v12;
      if (v3 >= Count)
      {
        v13 = Count;
      }

      else
      {
        v13 = v3;
      }

      if (v3)
      {
        v14 = 4 * v13;
        v15 = v12;
        do
        {
          v16 = *v4++;
          *v15++ = v16;
          v14 -= 4;
        }

        while (v14);
      }

      if (Count <= v3)
      {
        goto LABEL_26;
      }

      v11 = 4 * (Count - v3);
      v10 = &v12[v3];
LABEL_25:
      bzero(v10, v11);
LABEL_26:
      if (v9 != v22)
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v20);
        v22 = v9;
      }

      *&v20 = Count;
LABEL_29:
      if (Count >= 1)
      {
        for (j = 0; j != Count; ++j)
        {
          v23 = 0;
          ValueAtIndex = CFArrayGetValueAtIndex(a1, j);
          RIOPxrVtValueGetFloat(ValueAtIndex, &v23);
          v19 = v23;
          pxrInternal__aapl__pxrReserved__::VtArray<float>::_DetachIfNotUnique(&v20);
          v22[j] = v19;
        }
      }

      v24 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<float>>(void)::ti;
      pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<float>>::_PlaceCopy();
    }

    if (4 * Count / Count == 4)
    {
      v10 = pxrInternal__aapl__pxrReserved__::VtArray<float>::_AllocateNew(&v20, Count);
      v9 = v10;
      v11 = 4 * Count;
      goto LABEL_25;
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(&v20);
  goto LABEL_29;
}

void sub_2475378E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

BOOL RIOPxrVtValueGetFloat(uint64_t a1, _DWORD *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1 || !*(a1 + 24))
  {
    goto LABEL_11;
  }

  v4 = (a1 + 16);
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<float>((a1 + 16)))
  {
    v5 = *(a1 + 24);
    if ((v5 & 4) != 0)
    {
      v4 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(a1 + 16);
    }

    *a2 = *v4;
    v6 = 1;
    goto LABEL_12;
  }

  Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid((a1 + 16));
  if (!pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, MEMORY[0x277D827B0], v8))
  {
LABEL_11:
    v6 = 0;
    goto LABEL_12;
  }

  pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v13, (a1 + 16));
  v9 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<float>(v13);
  type_name = v9->__type_name;
  v6 = type_name != 0;
  if (type_name)
  {
    *a2 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<float>(v9);
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v13);
LABEL_12:
  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

void RIOPxrVtValueCreateWithDoubleArray(const __CFArray *a1)
{
  v23[2] = *MEMORY[0x277D85DE8];
  Count = CFArrayGetCount(a1);
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(&v20);
  v3 = v20;
  if (Count == v20)
  {
    goto LABEL_29;
  }

  if (Count)
  {
    v4 = v22;
    if (v22)
    {
      if (!*(&v21 + 1))
      {
        v5 = atomic_load(v22 - 2);
        if (v5 == 1)
        {
          if (Count > v20)
          {
            v6 = v22;
            if (*(v22 - 1) < Count)
            {
              New = pxrInternal__aapl__pxrReserved__::VtArray<double>::_AllocateNew(&v20, Count);
              v4 = New;
              if (v3)
              {
                for (i = 0; i != v3; ++i)
                {
                  New[i] = v6[i];
                }
              }
            }

            bzero(&v4[v3], 8 * (Count - v3));
          }

          v9 = v4;
          goto LABEL_26;
        }

        v4 = v22;
      }

      v12 = pxrInternal__aapl__pxrReserved__::VtArray<double>::_AllocateNew(&v20, Count);
      v9 = v12;
      if (v3 >= Count)
      {
        v13 = Count;
      }

      else
      {
        v13 = v3;
      }

      if (v3)
      {
        v14 = 8 * v13;
        v15 = v12;
        do
        {
          v16 = *v4++;
          *v15++ = v16;
          v14 -= 8;
        }

        while (v14);
      }

      if (Count <= v3)
      {
        goto LABEL_26;
      }

      v11 = 8 * (Count - v3);
      v10 = &v12[v3];
LABEL_25:
      bzero(v10, v11);
LABEL_26:
      if (v9 != v22)
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v20);
        v22 = v9;
      }

      *&v20 = Count;
LABEL_29:
      if (Count >= 1)
      {
        for (j = 0; j != Count; ++j)
        {
          v23[0] = 0;
          ValueAtIndex = CFArrayGetValueAtIndex(a1, j);
          RIOPxrVtValueGetDouble(ValueAtIndex, v23);
          v19 = v23[0];
          pxrInternal__aapl__pxrReserved__::VtArray<double>::_DetachIfNotUnique(&v20);
          v22[j] = v19;
        }
      }

      v23[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<double>>(void)::ti;
      pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<float>>::_PlaceCopy();
    }

    if (8 * Count / Count == 8)
    {
      v10 = pxrInternal__aapl__pxrReserved__::VtArray<double>::_AllocateNew(&v20, Count);
      v9 = v10;
      v11 = 8 * Count;
      goto LABEL_25;
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(&v20);
  goto LABEL_29;
}

void sub_247537C88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

BOOL RIOPxrVtValueGetDouble(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1 || !*(a1 + 24))
  {
    goto LABEL_11;
  }

  v4 = (a1 + 16);
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<double>((a1 + 16)))
  {
    v5 = *(a1 + 24);
    if ((v5 & 4) != 0)
    {
      v4 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(a1 + 16);
    }

    *a2 = *v4;
    v6 = 1;
    goto LABEL_12;
  }

  Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid((a1 + 16));
  if (!pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, MEMORY[0x277D827A8], v8))
  {
LABEL_11:
    v6 = 0;
    goto LABEL_12;
  }

  pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v13, (a1 + 16));
  v9 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<double>(&v13);
  type_name = v9->__type_name;
  v6 = type_name != 0;
  if (type_name)
  {
    *a2 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<double>(v9);
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v13);
LABEL_12:
  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

void RIOPxrVtValueCreateWithHalfArray(const __CFArray *a1)
{
  v29 = *MEMORY[0x277D85DE8];
  Count = CFArrayGetCount(a1);
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(&v24);
  v3 = v24;
  if (Count == v24)
  {
    goto LABEL_29;
  }

  if (Count)
  {
    v4 = v26;
    if (v26)
    {
      if (!*(&v25 + 1))
      {
        v5 = atomic_load(v26 - 2);
        if (v5 == 1)
        {
          if (Count > v24)
          {
            v6 = v26;
            if (*(v26 - 1) < Count)
            {
              New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_AllocateNew(&v24, Count);
              v4 = New;
              if (v3)
              {
                for (i = 0; i != v3; ++i)
                {
                  New[i] = v6[i];
                }
              }
            }

            bzero(&v4[v3], 2 * (Count - v3));
          }

          v9 = v4;
          goto LABEL_26;
        }

        v4 = v26;
      }

      v12 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_AllocateNew(&v24, Count);
      v9 = v12;
      if (v3 >= Count)
      {
        v13 = Count;
      }

      else
      {
        v13 = v3;
      }

      if (v3)
      {
        v14 = 2 * v13;
        v15 = v12;
        do
        {
          v16 = *v4++;
          *v15++ = v16;
          v14 -= 2;
        }

        while (v14);
      }

      if (Count <= v3)
      {
        goto LABEL_26;
      }

      v11 = 2 * (Count - v3);
      v10 = &v12[v3];
LABEL_25:
      bzero(v10, v11);
LABEL_26:
      if (v9 != v26)
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v24);
        v26 = v9;
      }

      *&v24 = Count;
LABEL_29:
      if (Count >= 1)
      {
        v17 = 0;
        v18 = MEMORY[0x277D86658];
        v19 = MEMORY[0x277D86650];
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, v17);
          v21 = 0.0;
          if (RIOPxrVtValueGetGfHalf(ValueAtIndex, &v27))
          {
            v21 = *(v18 + 4 * v27);
          }

          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DetachIfNotUnique(&v24);
          v22 = v26;
          if (v21 == 0.0)
          {
            v23 = HIWORD(LODWORD(v21));
          }

          else if (*(v19 + 2 * (LODWORD(v21) >> 23)))
          {
            v23 = *(v19 + 2 * (LODWORD(v21) >> 23)) + (((LODWORD(v21) & 0x7FFFFF) + ((LODWORD(v21) >> 13) & 1) + 4095) >> 13);
          }

          else
          {
            LOWORD(v23) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v21));
          }

          v22[v17++] = v23;
        }

        while (Count != v17);
      }

      v28 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>>(void)::ti;
      pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
    }

    if (2 * Count / Count == 2)
    {
      v10 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_AllocateNew(&v24, Count);
      v9 = v10;
      v11 = 2 * Count;
      goto LABEL_25;
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(&v24);
  goto LABEL_29;
}

void sub_247538080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

float RIOPxrVtValueGetHalf(uint64_t a1, float *a2)
{
  if (RIOPxrVtValueGetGfHalf(a1, &v4))
  {
    result = *(MEMORY[0x277D86658] + 4 * v4);
    *a2 = result;
  }

  return result;
}

void RIOPxrVtValueCreateWithInt2Array(const __CFArray *a1)
{
  v25[2] = *MEMORY[0x277D85DE8];
  Count = CFArrayGetCount(a1);
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(&v22);
  v3 = v22;
  if (Count == v22)
  {
    goto LABEL_29;
  }

  if (Count)
  {
    v4 = v24;
    if (v24)
    {
      if (!*(&v23 + 1))
      {
        v5 = atomic_load(v24 - 2);
        if (v5 == 1)
        {
          if (Count > v22)
          {
            v6 = v24;
            if (*(v24 - 1) < Count)
            {
              New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_AllocateNew(&v22, Count);
              v4 = New;
              if (v3)
              {
                for (i = 0; i != v3; ++i)
                {
                  New[i] = v6[i];
                }
              }
            }

            bzero(&v4[v3], 8 * (Count - v3));
          }

          v9 = v4;
          goto LABEL_26;
        }

        v4 = v24;
      }

      v12 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_AllocateNew(&v22, Count);
      v9 = v12;
      if (v3 >= Count)
      {
        v13 = Count;
      }

      else
      {
        v13 = v3;
      }

      if (v3)
      {
        v14 = 8 * v13;
        v15 = v12;
        do
        {
          v16 = *v4++;
          *v15++ = v16;
          v14 -= 8;
        }

        while (v14);
      }

      if (Count <= v3)
      {
        goto LABEL_26;
      }

      v11 = 8 * (Count - v3);
      v10 = &v12[v3];
LABEL_25:
      bzero(v10, v11);
LABEL_26:
      if (v9 != v24)
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v22);
        v24 = v9;
      }

      *&v22 = Count;
LABEL_29:
      if (Count >= 1)
      {
        for (j = 0; j != Count; ++j)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, j);
          v25[0] = 0;
          GfVec2i = RIOPxrVtValueGetGfVec2i(ValueAtIndex, v25);
          v20 = v25[0];
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DetachIfNotUnique(&v22);
          if (GfVec2i)
          {
            v21 = -1;
          }

          else
          {
            v21 = 0;
          }

          v24[j] = vand_s8(v20, vdup_n_s32(v21));
        }
      }

      v25[1] = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>>(void)::ti;
      pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
    }

    if (8 * Count / Count == 8)
    {
      v10 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_AllocateNew(&v22, Count);
      v9 = v10;
      v11 = 8 * Count;
      goto LABEL_25;
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(&v22);
  goto LABEL_29;
}

void sub_247538368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

double RIOPxrVtValueGetInt2(uint64_t a1, double *a2)
{
  v4 = 0.0;
  if (RIOPxrVtValueGetGfVec2i(a1, &v4))
  {
    result = v4;
    *a2 = v4;
  }

  return result;
}

void RIOPxrVtValueCreateWithInt3Array(const __CFArray *a1)
{
  v35 = *MEMORY[0x277D85DE8];
  Count = CFArrayGetCount(a1);
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v34.i32[2] = 0;
  v34.i64[0] = 0;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(&v31);
  v3 = v31;
  if (v31 == Count)
  {
    goto LABEL_30;
  }

  if (Count)
  {
    v4 = v33;
    if (v33)
    {
      if (!*(&v32 + 1))
      {
        v5 = atomic_load(v33 - 2);
        if (v5 == 1)
        {
          if (v31 < Count)
          {
            v6 = v33;
            if (*(v33 - 1) < Count)
            {
              New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_AllocateNew(&v31, Count);
              v4 = New;
              if (v3)
              {
                v8 = 0;
                do
                {
                  v9 = New + v8;
                  v10 = *(v6 + v8);
                  *(v9 + 2) = *(v6 + v8 + 8);
                  *v9 = v10;
                  v8 += 12;
                }

                while (12 * v3 != v8);
              }
            }

            v11 = 12 * v3;
            do
            {
              v12 = v4 + v11;
              *v12 = v34.i64[0];
              *(v12 + 2) = v34.i32[2];
              v11 += 12;
            }

            while (12 * Count != v11);
          }

          v13 = v4;
          goto LABEL_27;
        }

        v4 = v33;
      }

      v14 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_AllocateNew(&v31, Count);
      v13 = v14;
      if (v3 >= Count)
      {
        v15 = Count;
      }

      else
      {
        v15 = v3;
      }

      if (v3)
      {
        v16 = 12 * v15;
        v17 = v14;
        do
        {
          v18 = *v4;
          *(v17 + 2) = *(v4 + 2);
          *v17 = v18;
          v17 = (v17 + 12);
          v4 = (v4 + 12);
          v16 -= 12;
        }

        while (v16);
      }

      if (v3 < Count)
      {
        v19 = 12 * v3;
        do
        {
          v20 = v14 + v19;
          *v20 = v34.i64[0];
          *(v20 + 2) = v34.i32[2];
          v19 += 12;
        }

        while (12 * Count != v19);
      }

      goto LABEL_27;
    }

    if (Count < 0x1555555555555556)
    {
      v13 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_AllocateNew(&v31, Count);
      bzero(v13, 12 * ((12 * Count - 12) / 0xC) + 12);
LABEL_27:
      if (v13 != v33)
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v31);
        v33 = v13;
      }

      *&v31 = Count;
LABEL_30:
      if (Count >= 1)
      {
        v21 = 0;
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
          v34.i32[2] = 0;
          v34.i64[0] = 0;
          GfVec3i = RIOPxrVtValueGetGfVec3i(ValueAtIndex, &v34);
          v30 = v34;
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DetachIfNotUnique(&v31);
          v25.i64[0] = 0;
          v25.i32[2] = 0;
          v25.i32[3] = v29;
          if (GfVec3i)
          {
            v26 = -1;
          }

          else
          {
            v26 = 0;
          }

          v27 = vbslq_s8(vdupq_n_s32(v26), v30, v25);
          v28 = v33 + v21;
          *v28 = v27.i64[0];
          v29 = v27.i32[3];
          *(v28 + 2) = v27.i32[2];
          v21 += 12;
        }
      }

      v34.i64[1] = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>>(void)::ti;
      pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(&v31);
  goto LABEL_30;
}

void sub_24753870C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

double RIOPxrVtValueGetInt3(uint64_t a1, _OWORD *a2)
{
  DWORD2(v4) = 0;
  *&v4 = 0;
  if (RIOPxrVtValueGetGfVec3i(a1, &v4))
  {
    result = *&v4;
    *a2 = v4;
  }

  return result;
}

void RIOPxrVtValueCreateWithInt4Array(const __CFArray *a1)
{
  v30 = *MEMORY[0x277D85DE8];
  Count = CFArrayGetCount(a1);
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v29 = 0uLL;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(&v26);
  v3 = v26;
  if (v26 == Count)
  {
    goto LABEL_30;
  }

  if (Count)
  {
    v4 = v28;
    if (v28)
    {
      if (!*(&v27 + 1))
      {
        v5 = atomic_load(v28 - 2);
        if (v5 == 1)
        {
          if (v26 < Count)
          {
            v6 = v28;
            if (*(v28 - 1) < Count)
            {
              New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_AllocateNew(&v26, Count);
              v4 = New;
              if (v3)
              {
                for (i = 0; i != v3; ++i)
                {
                  New[i] = v6[i];
                }
              }
            }

            v9 = v3;
            do
            {
              v4[v9++] = v29;
            }

            while (Count != v9);
          }

          v10 = v4;
          goto LABEL_27;
        }

        v4 = v28;
      }

      v11 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_AllocateNew(&v26, Count);
      v10 = v11;
      if (v3 >= Count)
      {
        v12 = Count;
      }

      else
      {
        v12 = v3;
      }

      if (v3)
      {
        v13 = 16 * v12;
        v14 = v11;
        do
        {
          v15 = *v4++;
          *v14++ = v15;
          v13 -= 16;
        }

        while (v13);
      }

      if (v3 < Count)
      {
        v16 = v3;
        do
        {
          v11[v16++] = v29;
        }

        while (Count != v16);
      }

      goto LABEL_27;
    }

    if (16 * Count / Count == 16)
    {
      v10 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_AllocateNew(&v26, Count);
      bzero(v10, 16 * Count);
LABEL_27:
      if (v10 != v28)
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v26);
        v28 = v10;
      }

      *&v26 = Count;
LABEL_30:
      if (Count >= 1)
      {
        for (j = 0; j != Count; ++j)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, j);
          v29 = 0uLL;
          GfVec4i = RIOPxrVtValueGetGfVec4i(ValueAtIndex, &v29);
          v25 = v29;
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DetachIfNotUnique(&v26);
          if (GfVec4i)
          {
            v20 = -1;
          }

          else
          {
            v20 = 0;
          }

          v21 = vandq_s8(v25, vdupq_n_s32(v20));
          v22 = vextq_s8(v21, v21, 8uLL).u64[0];
          v23 = vshll_n_s32(vzip2_s32(*v21.i8, v22), 0x20uLL);
          *v21.i8 = vzip1_s32(*v21.i8, v22);
          v24.i64[0] = v21.u32[0];
          v24.i64[1] = v21.u32[1];
          v28[j] = vorrq_s8(v23, v24);
        }
      }

      v29.i64[1] = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>>(void)::ti;
      pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(&v26);
  goto LABEL_30;
}

void sub_247538A28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

double RIOPxrVtValueGetInt4(uint64_t a1, _OWORD *a2)
{
  v4 = 0uLL;
  if (RIOPxrVtValueGetGfVec4i(a1, &v4))
  {
    result = *&v4;
    *a2 = v4;
  }

  return result;
}

void RIOPxrVtValueCreateWithHalf2Array(const __CFArray *a1)
{
  v26[2] = *MEMORY[0x277D85DE8];
  Count = CFArrayGetCount(a1);
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(&v23);
  v3 = v23;
  if (Count == v23)
  {
    goto LABEL_29;
  }

  if (Count)
  {
    v4 = v25;
    if (v25)
    {
      if (!*(&v24 + 1))
      {
        v5 = atomic_load(v25 - 2);
        if (v5 == 1)
        {
          if (Count > v23)
          {
            v6 = v25;
            if (*(v25 - 1) < Count)
            {
              New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_AllocateNew(&v23, Count);
              v4 = New;
              if (v3)
              {
                for (i = 0; i != v3; ++i)
                {
                  New[i] = v6[i];
                }
              }
            }

            bzero(&v4[v3], 4 * (Count - v3));
          }

          v9 = v4;
          goto LABEL_26;
        }

        v4 = v25;
      }

      v12 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_AllocateNew(&v23, Count);
      v9 = v12;
      if (v3 >= Count)
      {
        v13 = Count;
      }

      else
      {
        v13 = v3;
      }

      if (v3)
      {
        v14 = 4 * v13;
        v15 = v12;
        do
        {
          v16 = *v4++;
          *v15++ = v16;
          v14 -= 4;
        }

        while (v14);
      }

      if (Count <= v3)
      {
        goto LABEL_26;
      }

      v11 = 4 * (Count - v3);
      v10 = &v12[v3];
LABEL_25:
      bzero(v10, v11);
LABEL_26:
      if (v9 != v25)
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v23);
        v25 = v9;
      }

      *&v23 = Count;
LABEL_29:
      if (Count >= 1)
      {
        v17 = 0;
        v18 = MEMORY[0x277D86650];
        do
        {
          v26[0] = 0;
          ValueAtIndex = CFArrayGetValueAtIndex(a1, v17);
          RIOPxrVtValueGetHalf2(ValueAtIndex, v26);
          v22 = *(v26 + 1);
          if (*v26 == 0.0)
          {
            v20 = HIWORD(LODWORD(v26[0]));
          }

          else if (*(v18 + 2 * (LODWORD(v26[0]) >> 23)))
          {
            v20 = *(v18 + 2 * (LODWORD(v26[0]) >> 23)) + (((v26[0] & 0x7FFFFF) + ((LODWORD(v26[0]) >> 13) & 1) + 4095) >> 13);
          }

          else
          {
            LOWORD(v20) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v26[0]));
          }

          if (v22 == 0.0)
          {
            v21 = HIWORD(LODWORD(v22));
          }

          else if (*(v18 + 2 * (LODWORD(v22) >> 23)))
          {
            v21 = *(v18 + 2 * (LODWORD(v22) >> 23)) + (((LODWORD(v22) & 0x7FFFFF) + ((LODWORD(v22) >> 13) & 1) + 4095) >> 13);
          }

          else
          {
            LOWORD(v21) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v22));
          }

          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_DetachIfNotUnique(&v23);
          v25[v17++] = v20 | (v21 << 16);
        }

        while (Count != v17);
      }

      v26[1] = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>>(void)::ti;
      pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
    }

    if (4 * Count / Count == 4)
    {
      v10 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_AllocateNew(&v23, Count);
      v9 = v10;
      v11 = 4 * Count;
      goto LABEL_25;
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(&v23);
  goto LABEL_29;
}

void sub_247538D7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t RIOPxrVtValueGetHalf2(uint64_t result, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v2 = result;
    if (!*(result + 24))
    {
      goto LABEL_12;
    }

    v4 = (result + 16);
    if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec2h>((result + 16)))
    {
      v5 = *(v2 + 24);
      if ((v5 & 4) != 0)
      {
        v4 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(v2 + 16);
      }

      v6 = *v4;
      goto LABEL_10;
    }

    Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid((v2 + 16));
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v12, (v2 + 16));
      v9 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfVec2h>(v12);
      if (v9->__type_name)
      {
        v6 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec2h>(v9);
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v12);
LABEL_10:
        LODWORD(v10) = *(MEMORY[0x277D86658] + 4 * v6);
        HIDWORD(v10) = *(MEMORY[0x277D86658] + 4 * HIWORD(v6));
        *a2 = v10;
        result = 1;
        goto LABEL_13;
      }

      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v12);
LABEL_12:
      result = 0;
    }
  }

LABEL_13:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void RIOPxrVtValueCreateWithHalf3Array(const __CFArray *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  Count = CFArrayGetCount(a1);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::VtArray(v14, Count);
  if (Count >= 1)
  {
    v3 = 0;
    v4 = 0;
    v5 = MEMORY[0x277D86658];
    v6 = MEMORY[0x277D86650];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v4);
      v17 = 0;
      v16 = 0;
      if (RIOPxrVtValueGetGfVec3h(ValueAtIndex, &v16))
      {
        LODWORD(v8) = *(v5 + 4 * v16);
        DWORD1(v8) = *(v5 + 4 * HIWORD(v16));
        DWORD2(v8) = *(v5 + 4 * v17);
      }

      else
      {
        *&v8 = 0;
        DWORD2(v8) = 0;
        HIDWORD(v8) = HIDWORD(v13);
      }

      v13 = v8;
      if (*&v8 == 0.0)
      {
        v9 = WORD1(v8);
      }

      else if (*(v6 + 2 * (v8 >> 23)))
      {
        v9 = *(v6 + 2 * (v8 >> 23)) + (((v8 & 0x7FFFFF) + ((v8 >> 13) & 1) + 4095) >> 13);
      }

      else
      {
        LOWORD(v9) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(v8);
      }

      if (*(&v13 + 1) == 0.0)
      {
        v10 = HIWORD(DWORD1(v13));
      }

      else if (*(v6 + 2 * (DWORD1(v13) >> 23)))
      {
        v10 = *(v6 + 2 * (DWORD1(v13) >> 23)) + (((DWORD1(v13) & 0x7FFFFF) + ((DWORD1(v13) >> 13) & 1) + 4095) >> 13);
      }

      else
      {
        LOWORD(v10) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(DWORD1(v13));
      }

      if (*(&v13 + 2) == 0.0)
      {
        v11 = HIWORD(DWORD2(v13));
      }

      else if (*(v6 + 2 * (DWORD2(v13) >> 23)))
      {
        v11 = *(v6 + 2 * (DWORD2(v13) >> 23)) + (((DWORD2(v13) & 0x7FFFFF) + ((DWORD2(v13) >> 13) & 1) + 4095) >> 13);
      }

      else
      {
        LOWORD(v11) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(DWORD2(v13));
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DetachIfNotUnique(v14);
      v12 = v15 + v3;
      *v12 = v9 | (v10 << 16);
      *(v12 + 4) = v11;
      ++v4;
      v3 += 6;
    }

    while (Count != v4);
  }

  v18 = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
}

void sub_24753913C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

__n128 RIOPxrVtValueGetHalf3(uint64_t a1, _OWORD *a2)
{
  v6 = 0;
  v5 = 0;
  if (RIOPxrVtValueGetGfVec3h(a1, &v5))
  {
    LODWORD(v3) = *(MEMORY[0x277D86658] + 4 * v5);
    DWORD1(v3) = *(MEMORY[0x277D86658] + 4 * HIWORD(v5));
    DWORD2(v3) = *(MEMORY[0x277D86658] + 4 * v6);
    *a2 = v3;
  }

  result.n128_u64[0] = v3;
  result.n128_u32[2] = DWORD2(v3);
  return result;
}

void RIOPxrVtValueCreateWithHalf4Array(const __CFArray *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  Count = CFArrayGetCount(a1);
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(&v20);
  v3 = v20;
  if (Count == v20)
  {
    goto LABEL_29;
  }

  if (Count)
  {
    v4 = v22;
    if (v22)
    {
      if (!*(&v21 + 1))
      {
        v5 = atomic_load(v22 - 2);
        if (v5 == 1)
        {
          if (Count > v20)
          {
            v6 = v22;
            if (*(v22 - 1) < Count)
            {
              New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_AllocateNew(&v20, Count);
              v4 = New;
              if (v3)
              {
                for (i = 0; i != v3; ++i)
                {
                  New[i] = v6[i];
                }
              }
            }

            bzero(&v4[v3], 8 * (Count - v3));
          }

          v9 = v4;
          goto LABEL_26;
        }

        v4 = v22;
      }

      v12 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_AllocateNew(&v20, Count);
      v9 = v12;
      if (v3 >= Count)
      {
        v13 = Count;
      }

      else
      {
        v13 = v3;
      }

      if (v3)
      {
        v14 = 8 * v13;
        v15 = v12;
        do
        {
          v16 = *v4++;
          *v15++ = v16;
          v14 -= 8;
        }

        while (v14);
      }

      if (Count <= v3)
      {
        goto LABEL_26;
      }

      v11 = 8 * (Count - v3);
      v10 = &v12[v3];
LABEL_25:
      bzero(v10, v11);
LABEL_26:
      if (v9 != v22)
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v20);
        v22 = v9;
      }

      *&v20 = Count;
LABEL_29:
      if (Count >= 1)
      {
        for (j = 0; j != Count; ++j)
        {
          v23 = 0uLL;
          ValueAtIndex = CFArrayGetValueAtIndex(a1, j);
          RIOPxrVtValueGetHalf4(ValueAtIndex, &v23);
          v19 = _Z7to_vec4IDv4_fN32pxrInternal__aapl__pxrReserved__7GfVec4hEET0_RKT_(&v23);
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_DetachIfNotUnique(&v20);
          v22[j] = v19;
        }
      }

      *(&v23 + 1) = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>>(void)::ti;
      pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
    }

    if (8 * Count / Count == 8)
    {
      v10 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_AllocateNew(&v20, Count);
      v9 = v10;
      v11 = 8 * Count;
      goto LABEL_25;
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(&v20);
  goto LABEL_29;
}

void sub_24753941C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t RIOPxrVtValueGetHalf4(uint64_t result, _OWORD *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v2 = result;
    if (!*(result + 24))
    {
      goto LABEL_12;
    }

    v4 = (result + 16);
    if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec4h>((result + 16)))
    {
      v5 = *(v2 + 24);
      if ((v5 & 4) != 0)
      {
        v4 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(v2 + 16);
      }

      v6 = *v4;
      goto LABEL_10;
    }

    Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid((v2 + 16));
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v12, (v2 + 16));
      v9 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfVec4h>(v12);
      if (v9->__type_name)
      {
        v6 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec4h>(v9);
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v12);
LABEL_10:
        LODWORD(v10) = *(MEMORY[0x277D86658] + 4 * v6);
        DWORD1(v10) = *(MEMORY[0x277D86658] + 4 * WORD1(v6));
        DWORD2(v10) = *(MEMORY[0x277D86658] + 4 * WORD2(v6));
        HIDWORD(v10) = *(MEMORY[0x277D86658] + 4 * HIWORD(v6));
        *a2 = v10;
        result = 1;
        goto LABEL_13;
      }

      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v12);
LABEL_12:
      result = 0;
    }
  }

LABEL_13:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void RIOPxrVtValueCreateWithFloat2Array(const __CFArray *a1)
{
  v25[2] = *MEMORY[0x277D85DE8];
  Count = CFArrayGetCount(a1);
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(&v22);
  v3 = v22;
  if (Count == v22)
  {
    goto LABEL_29;
  }

  if (Count)
  {
    v4 = v24;
    if (v24)
    {
      if (!*(&v23 + 1))
      {
        v5 = atomic_load(v24 - 2);
        if (v5 == 1)
        {
          if (Count > v22)
          {
            v6 = v24;
            if (*(v24 - 1) < Count)
            {
              New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_AllocateNew(&v22, Count);
              v4 = New;
              if (v3)
              {
                for (i = 0; i != v3; ++i)
                {
                  New[i] = v6[i];
                }
              }
            }

            bzero(&v4[v3], 8 * (Count - v3));
          }

          v9 = v4;
          goto LABEL_26;
        }

        v4 = v24;
      }

      v12 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_AllocateNew(&v22, Count);
      v9 = v12;
      if (v3 >= Count)
      {
        v13 = Count;
      }

      else
      {
        v13 = v3;
      }

      if (v3)
      {
        v14 = 8 * v13;
        v15 = v12;
        do
        {
          v16 = *v4++;
          *v15++ = v16;
          v14 -= 8;
        }

        while (v14);
      }

      if (Count <= v3)
      {
        goto LABEL_26;
      }

      v11 = 8 * (Count - v3);
      v10 = &v12[v3];
LABEL_25:
      bzero(v10, v11);
LABEL_26:
      if (v9 != v24)
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v22);
        v24 = v9;
      }

      *&v22 = Count;
LABEL_29:
      if (Count >= 1)
      {
        for (j = 0; j != Count; ++j)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, j);
          v25[0] = 0;
          GfVec2f = RIOPxrVtValueGetGfVec2f(ValueAtIndex, v25);
          v20 = v25[0];
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DetachIfNotUnique(&v22);
          if (GfVec2f)
          {
            v21 = -1;
          }

          else
          {
            v21 = 0;
          }

          v24[j] = vand_s8(v20, vdup_n_s32(v21));
        }
      }

      v25[1] = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>(void)::ti;
      pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
    }

    if (8 * Count / Count == 8)
    {
      v10 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_AllocateNew(&v22, Count);
      v9 = v10;
      v11 = 8 * Count;
      goto LABEL_25;
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(&v22);
  goto LABEL_29;
}

void sub_247539804(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

double RIOPxrVtValueGetFloat2(uint64_t a1, double *a2)
{
  v4 = 0.0;
  if (RIOPxrVtValueGetGfVec2f(a1, &v4))
  {
    result = v4;
    *a2 = v4;
  }

  return result;
}

void RIOPxrVtValueCreateWithFloat3Array(const __CFArray *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  Count = CFArrayGetCount(a1);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::VtArray(v13, Count);
  if (Count >= 1)
  {
    v3 = 0;
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      v15.i32[2] = 0;
      v15.i64[0] = 0;
      GfVec3f = RIOPxrVtValueGetGfVec3f(ValueAtIndex, &v15);
      v12 = v15;
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DetachIfNotUnique(v13);
      v7.i64[0] = 0;
      v7.i32[2] = 0;
      v7.i32[3] = v11;
      if (GfVec3f)
      {
        v8 = -1;
      }

      else
      {
        v8 = 0;
      }

      v9 = vbslq_s8(vdupq_n_s32(v8), v12, v7);
      v10 = v14 + v3;
      *v10 = v9.i64[0];
      v11 = v9.i32[3];
      *(v10 + 8) = v9.i32[2];
      v3 += 12;
    }
  }

  v15.i64[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
}

void sub_2475399CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

double RIOPxrVtValueGetFloat3(uint64_t a1, _OWORD *a2)
{
  DWORD2(v4) = 0;
  *&v4 = 0;
  if (RIOPxrVtValueGetGfVec3f(a1, &v4))
  {
    result = *&v4;
    *a2 = v4;
  }

  return result;
}

void RIOPxrVtValueCreateWithFloat4Array(const __CFArray *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  Count = CFArrayGetCount(a1);
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v25 = 0uLL;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(&v22);
  v3 = v22;
  if (v22 == Count)
  {
    goto LABEL_30;
  }

  if (Count)
  {
    v4 = v24;
    if (v24)
    {
      if (!*(&v23 + 1))
      {
        v5 = atomic_load(v24 - 2);
        if (v5 == 1)
        {
          if (v22 < Count)
          {
            v6 = v24;
            if (*(v24 - 1) < Count)
            {
              New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_AllocateNew(&v22, Count);
              v4 = New;
              if (v3)
              {
                for (i = 0; i != v3; ++i)
                {
                  New[i] = v6[i];
                }
              }
            }

            v9 = v3;
            do
            {
              v4[v9++] = v25;
            }

            while (Count != v9);
          }

          v10 = v4;
          goto LABEL_27;
        }

        v4 = v24;
      }

      v11 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_AllocateNew(&v22, Count);
      v10 = v11;
      if (v3 >= Count)
      {
        v12 = Count;
      }

      else
      {
        v12 = v3;
      }

      if (v3)
      {
        v13 = 16 * v12;
        v14 = v11;
        do
        {
          v15 = *v4++;
          *v14++ = v15;
          v13 -= 16;
        }

        while (v13);
      }

      if (v3 < Count)
      {
        v16 = v3;
        do
        {
          v11[v16++] = v25;
        }

        while (Count != v16);
      }

      goto LABEL_27;
    }

    if (16 * Count / Count == 16)
    {
      v10 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_AllocateNew(&v22, Count);
      bzero(v10, 16 * Count);
LABEL_27:
      if (v10 != v24)
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v22);
        v24 = v10;
      }

      *&v22 = Count;
LABEL_30:
      if (Count >= 1)
      {
        for (j = 0; j != Count; ++j)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, j);
          v25 = 0uLL;
          GfVec4f = RIOPxrVtValueGetGfVec4f(ValueAtIndex, &v25);
          v21 = v25;
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DetachIfNotUnique(&v22);
          if (GfVec4f)
          {
            v20 = -1;
          }

          else
          {
            v20 = 0;
          }

          v24[j] = vandq_s8(v21, vdupq_n_s32(v20));
        }
      }

      v25.i64[1] = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>(void)::ti;
      pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(&v22);
  goto LABEL_30;
}

void sub_247539CC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

double RIOPxrVtValueGetFloat4(uint64_t a1, _OWORD *a2)
{
  v4 = 0uLL;
  if (RIOPxrVtValueGetGfVec4f(a1, &v4))
  {
    result = *&v4;
    *a2 = v4;
  }

  return result;
}

void RIOPxrVtValueCreateWithDouble2Array(const __CFArray *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  Count = CFArrayGetCount(a1);
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v25 = 0uLL;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(&v22);
  v3 = v22;
  if (v22 == Count)
  {
    goto LABEL_30;
  }

  if (Count)
  {
    v4 = v24;
    if (v24)
    {
      if (!*(&v23 + 1))
      {
        v5 = atomic_load(v24 - 2);
        if (v5 == 1)
        {
          if (v22 < Count)
          {
            v6 = v24;
            if (*(v24 - 1) < Count)
            {
              New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_AllocateNew(&v22, Count);
              v4 = New;
              if (v3)
              {
                for (i = 0; i != v3; ++i)
                {
                  New[i] = v6[i];
                }
              }
            }

            v9 = v3;
            do
            {
              v4[v9++] = v25;
            }

            while (Count != v9);
          }

          v10 = v4;
          goto LABEL_27;
        }

        v4 = v24;
      }

      v11 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_AllocateNew(&v22, Count);
      v10 = v11;
      if (v3 >= Count)
      {
        v12 = Count;
      }

      else
      {
        v12 = v3;
      }

      if (v3)
      {
        v13 = 16 * v12;
        v14 = v11;
        do
        {
          v15 = *v4++;
          *v14++ = v15;
          v13 -= 16;
        }

        while (v13);
      }

      if (v3 < Count)
      {
        v16 = v3;
        do
        {
          v11[v16++] = v25;
        }

        while (Count != v16);
      }

      goto LABEL_27;
    }

    if (16 * Count / Count == 16)
    {
      v10 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_AllocateNew(&v22, Count);
      bzero(v10, 16 * Count);
LABEL_27:
      if (v10 != v24)
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v22);
        v24 = v10;
      }

      *&v22 = Count;
LABEL_30:
      if (Count >= 1)
      {
        for (j = 0; j != Count; ++j)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, j);
          v25 = 0uLL;
          GfVec2d = RIOPxrVtValueGetGfVec2d(ValueAtIndex, &v25);
          v21 = v25;
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DetachIfNotUnique(&v22);
          if (GfVec2d)
          {
            v20 = -1;
          }

          else
          {
            v20 = 0;
          }

          v24[j] = vandq_s8(v21, vdupq_n_s64(v20));
        }
      }

      v25.i64[1] = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>>(void)::ti;
      pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(&v22);
  goto LABEL_30;
}

void sub_247539FC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

double RIOPxrVtValueGetDouble2(uint64_t a1, _OWORD *a2)
{
  v4 = 0uLL;
  if (RIOPxrVtValueGetGfVec2d(a1, &v4))
  {
    result = *&v4;
    *a2 = v4;
  }

  return result;
}

void RIOPxrVtValueCreateWithDouble3Array(const __CFArray *a1)
{
  v34 = *MEMORY[0x277D85DE8];
  Count = CFArrayGetCount(a1);
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v32 = 0uLL;
  v33 = 0;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(&v29);
  v3 = v29;
  if (v29 == Count)
  {
    goto LABEL_30;
  }

  if (Count)
  {
    v4 = v31;
    if (v31)
    {
      if (!*(&v30 + 1))
      {
        v5 = atomic_load(v31 - 2);
        if (v5 == 1)
        {
          if (v29 < Count)
          {
            v6 = v31;
            if (*(v31 - 1) < Count)
            {
              New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_AllocateNew(&v29, Count);
              v4 = New;
              if (v3)
              {
                v8 = 0;
                do
                {
                  v9 = &New[v8];
                  v10 = *&v6[v8];
                  v9[2] = v6[v8 + 2];
                  *v9 = v10;
                  v8 += 3;
                }

                while (3 * v3 != v8);
              }
            }

            v11 = 3 * v3;
            do
            {
              v12 = &v4[v11];
              *v12 = v32;
              v12[2] = v33;
              v11 += 3;
            }

            while (3 * Count != v11);
          }

          v13 = v4;
          goto LABEL_27;
        }

        v4 = v31;
      }

      v14 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_AllocateNew(&v29, Count);
      v13 = v14;
      if (v3 >= Count)
      {
        v15 = Count;
      }

      else
      {
        v15 = v3;
      }

      if (v3)
      {
        v16 = 24 * v15;
        v17 = v14;
        do
        {
          v18 = *v4;
          v17[2] = v4[2];
          *v17 = v18;
          v17 += 3;
          v4 += 3;
          v16 -= 24;
        }

        while (v16);
      }

      if (v3 < Count)
      {
        v19 = 3 * v3;
        do
        {
          v20 = &v14[v19];
          *v20 = v32;
          v20[2] = v33;
          v19 += 3;
        }

        while (3 * Count != v19);
      }

      goto LABEL_27;
    }

    if (Count < 0xAAAAAAAAAAAAAABLL)
    {
      v13 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_AllocateNew(&v29, Count);
      bzero(v13, 24 * ((24 * Count - 24) / 0x18) + 24);
LABEL_27:
      if (v13 != v31)
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v29);
        v31 = v13;
      }

      *&v29 = Count;
LABEL_30:
      if (Count >= 1)
      {
        v21 = 0;
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
          v32 = 0uLL;
          v33 = 0;
          if (RIOPxrVtValueGetGfVec3d(ValueAtIndex, &v32))
          {
            *&v24 = v33;
            v27 = v32;
            v28 = v24;
          }

          else
          {
            *&v25 = 0;
            v27 = 0u;
            *(&v25 + 1) = *(&v28 + 1);
            v28 = v25;
          }

          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DetachIfNotUnique(&v29);
          v26 = &v31[v21];
          *v26 = v27;
          v26[2] = v28;
          v21 += 3;
        }
      }

      *(&v32 + 1) = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>(void)::ti;
      pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(&v29);
  goto LABEL_30;
}

void sub_24753A364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

__n128 RIOPxrVtValueGetDouble3(uint64_t a1, __n128 *a2)
{
  v5 = 0uLL;
  v6 = 0;
  if (RIOPxrVtValueGetGfVec3d(a1, &v5))
  {
    result = v5;
    v4.n128_u64[0] = v6;
    *a2 = v5;
    a2[1] = v4;
  }

  return result;
}

void RIOPxrVtValueCreateWithDouble4Array(const __CFArray *a1)
{
  v33 = *MEMORY[0x277D85DE8];
  Count = CFArrayGetCount(a1);
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v31 = 0u;
  v32 = 0u;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(&v28);
  v3 = v28;
  if (v28 == Count)
  {
    goto LABEL_30;
  }

  if (Count)
  {
    v4 = v30;
    if (v30)
    {
      if (!*(&v29 + 1))
      {
        v5 = atomic_load(v30 - 2);
        if (v5 == 1)
        {
          if (v28 < Count)
          {
            v6 = v30;
            if (*(v30 - 1) < Count)
            {
              New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_AllocateNew(&v28, Count);
              v4 = New;
              if (v3)
              {
                v8 = 0;
                do
                {
                  v9 = &New[v8 / 8];
                  v10 = v6[v8 / 0x10 + 1];
                  *v9 = v6[v8 / 0x10];
                  v9[1] = v10;
                  v8 += 32;
                }

                while (32 * v3 != v8);
              }
            }

            v11 = 2 * v3;
            do
            {
              v12 = &v4[v11];
              *v12 = v31;
              v12[1] = v32;
              v11 += 2;
            }

            while (2 * Count != v11);
          }

          v13 = v4;
          goto LABEL_27;
        }

        v4 = v30;
      }

      v14 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_AllocateNew(&v28, Count);
      v13 = v14;
      if (v3 >= Count)
      {
        v15 = Count;
      }

      else
      {
        v15 = v3;
      }

      if (v3)
      {
        v16 = 32 * v15;
        v17 = v14;
        do
        {
          v18 = *v4;
          v19 = v4[1];
          v4 += 2;
          *v17 = v18;
          v17[1] = v19;
          v17 += 2;
          v16 -= 32;
        }

        while (v16);
      }

      if (v3 < Count)
      {
        v20 = 4 * v3;
        do
        {
          v21 = &v14[v20];
          *v21 = v31;
          v21[1] = v32;
          v20 += 4;
        }

        while (4 * Count != v20);
      }

      goto LABEL_27;
    }

    if (32 * Count / Count == 32)
    {
      v13 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_AllocateNew(&v28, Count);
      bzero(v13, 32 * Count);
LABEL_27:
      if (v13 != v30)
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v28);
        v30 = v13;
      }

      *&v28 = Count;
LABEL_30:
      if (Count >= 1)
      {
        v22 = 0;
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
          v31 = 0u;
          v32 = 0u;
          v26 = 0u;
          v27 = 0u;
          if (RIOPxrVtValueGetGfVec4d(ValueAtIndex, &v31))
          {
            v27 = v31;
            v26 = v32;
          }

          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DetachIfNotUnique(&v28);
          v25 = &v30[v22];
          *v25 = v27;
          v25[1] = v26;
          v22 += 2;
        }
      }

      *(&v31 + 1) = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>>(void)::ti;
      pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(&v28);
  goto LABEL_30;
}

void sub_24753A6B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

__n128 RIOPxrVtValueGetDouble4(uint64_t a1, __n128 *a2)
{
  v5 = 0u;
  v6 = 0u;
  if (RIOPxrVtValueGetGfVec4d(a1, &v5))
  {
    result = v5;
    v4 = v6;
    *a2 = v5;
    a2[1] = v4;
  }

  return result;
}

void RIOPxrVtValueCreateWithQuathArray(const __CFArray *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  Count = CFArrayGetCount(a1);
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(&v18);
  v3 = v18;
  if (v18 == Count)
  {
    goto LABEL_26;
  }

  if (Count)
  {
    v4 = v20;
    if (v20)
    {
      if (!*(&v19 + 1))
      {
        v5 = atomic_load(v20 - 2);
        if (v5 == 1)
        {
          if (v18 < Count)
          {
            v6 = v20;
            if (*(v20 - 1) < Count)
            {
              New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::_AllocateNew(&v18, Count);
              v4 = New;
              if (v3)
              {
                for (i = 0; i != v3; ++i)
                {
                  New[i] = v6[i];
                }
              }
            }
          }

          goto LABEL_23;
        }

        v4 = v20;
      }

      v9 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::_AllocateNew(&v18, Count);
      if (v3 >= Count)
      {
        v10 = Count;
      }

      else
      {
        v10 = v3;
      }

      if (v3)
      {
        v11 = 0;
        v12 = 8 * v10;
        do
        {
          v9[v11 / 8] = v4[v11 / 8];
          v11 += 8;
        }

        while (v12 != v11);
      }

LABEL_22:
      v4 = v9;
LABEL_23:
      if (v4 != v20)
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v18);
        v20 = v4;
      }

      *&v18 = Count;
LABEL_26:
      if (Count >= 1)
      {
        v13 = 0;
        v14 = MEMORY[0x277D86658];
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, v13);
          if (RIOPxrVtValueGetGfQuath(ValueAtIndex, &v21))
          {
            LODWORD(v16) = *(v14 + 4 * v21);
            DWORD1(v16) = *(v14 + 4 * WORD1(v21));
            DWORD2(v16) = *(v14 + 4 * WORD2(v21));
            HIDWORD(v16) = *(v14 + 4 * HIWORD(v21));
            v22 = v16;
          }

          v17 = to_GfQuat<simd_quatf,pxrInternal__aapl__pxrReserved__::GfQuath>(&v22);
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::_DetachIfNotUnique(&v18);
          v20[v13++] = v17;
        }

        while (Count != v13);
      }

      *(&v22 + 1) = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>>(void)::ti;
      pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
    }

    if (8 * Count / Count == 8)
    {
      v9 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::_AllocateNew(&v18, Count);
      goto LABEL_22;
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(&v18);
  goto LABEL_26;
}

void sub_24753A99C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

__n128 RIOPxrVtValueGetQuath(uint64_t a1, __n128 *a2)
{
  if (RIOPxrVtValueGetGfQuath(a1, &v4))
  {
    result.n128_u32[0] = *(MEMORY[0x277D86658] + 4 * v4);
    result.n128_u32[1] = *(MEMORY[0x277D86658] + 4 * WORD1(v4));
    result.n128_u32[2] = *(MEMORY[0x277D86658] + 4 * WORD2(v4));
    result.n128_u32[3] = *(MEMORY[0x277D86658] + 4 * HIWORD(v4));
    *a2 = result;
  }

  return result;
}

void RIOPxrVtValueCreateWithQuatfArray(const __CFArray *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  Count = CFArrayGetCount(a1);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::VtArray(v10, Count);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      v9 = v3;
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      GfQuatf = RIOPxrVtValueGetGfQuatf(ValueAtIndex, &v12);
      v8 = v12;
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_DetachIfNotUnique(v10);
      if (GfQuatf)
      {
        v7 = -1;
      }

      else
      {
        v7 = 0;
      }

      v3 = vbslq_s8(vdupq_n_s32(v7), v8, v9);
      *(v11 + 16 * i) = v3;
    }
  }

  v12.i64[1] = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
}

void sub_24753AB6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

double RIOPxrVtValueGetQuatf(uint64_t a1, _OWORD *a2)
{
  if (RIOPxrVtValueGetGfQuatf(a1, &v4))
  {
    result = *&v4;
    *a2 = v4;
  }

  return result;
}

void RIOPxrVtValueCreateWithQuatdArray(const __CFArray *a1)
{
  v33 = *MEMORY[0x277D85DE8];
  Count = CFArrayGetCount(a1);
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(&v28);
  v3 = v28;
  if (v28 == Count)
  {
    goto LABEL_30;
  }

  if (Count)
  {
    v4 = v30;
    if (v30)
    {
      if (!*(&v29 + 1))
      {
        v5 = atomic_load(v30 - 2);
        if (v5 == 1)
        {
          if (v28 < Count)
          {
            v6 = v30;
            if (*(v30 - 1) < Count)
            {
              New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::_AllocateNew(&v28, Count);
              v4 = New;
              if (v3)
              {
                v8 = 0;
                do
                {
                  v9 = &New[v8 / 8];
                  v10 = v6[v8 / 0x10 + 1];
                  *v9 = v6[v8 / 0x10];
                  v9[1] = v10;
                  v8 += 32;
                }

                while (32 * v3 != v8);
              }
            }

            v11 = 2 * v3;
            do
            {
              v12 = &v4[v11];
              *v12 = v31;
              v12[1] = v32;
              v11 += 2;
            }

            while (2 * Count != v11);
          }

          v13 = v4;
          goto LABEL_27;
        }

        v4 = v30;
      }

      v14 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::_AllocateNew(&v28, Count);
      v13 = v14;
      if (v3 >= Count)
      {
        v15 = Count;
      }

      else
      {
        v15 = v3;
      }

      if (v3)
      {
        v16 = 32 * v15;
        v17 = v14;
        do
        {
          v18 = *v4;
          v19 = v4[1];
          v4 += 2;
          *v17 = v18;
          v17[1] = v19;
          v17 += 2;
          v16 -= 32;
        }

        while (v16);
      }

      if (v3 < Count)
      {
        v20 = 4 * v3;
        do
        {
          v21 = &v14[v20];
          *v21 = v31;
          v21[1] = v32;
          v20 += 4;
        }

        while (4 * Count != v20);
      }

      goto LABEL_27;
    }

    if (32 * Count / Count == 32)
    {
      v13 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::_AllocateNew(&v28, Count);
LABEL_27:
      if (v13 != v30)
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v28);
        v30 = v13;
      }

      *&v28 = Count;
LABEL_30:
      if (Count >= 1)
      {
        v22 = 0;
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
          if (RIOPxrVtValueGetGfQuatd(ValueAtIndex, &v31))
          {
            v26 = v32;
            v27 = v31;
          }

          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::_DetachIfNotUnique(&v28);
          v25 = &v30[v22];
          *v25 = v27;
          v25[1] = v26;
          v22 += 2;
        }
      }

      *(&v31 + 1) = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>>(void)::ti;
      pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(&v28);
  goto LABEL_30;
}

void sub_24753AE78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

__n128 RIOPxrVtValueGetQuatd(uint64_t a1, _OWORD *a2)
{
  if (RIOPxrVtValueGetGfQuatd(a1, v5))
  {
    result = v5[0];
    v4 = v5[1];
    *a2 = v5[0];
    a2[1] = v4;
  }

  return result;
}

void RIOPxrVtValueCreateWithMatrix2dArray(const __CFArray *a1)
{
  v38 = *MEMORY[0x277D85DE8];
  Count = CFArrayGetCount(a1);
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v36 = 0u;
  v37 = 0u;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(&v33);
  v5 = v33;
  if (v33 == Count)
  {
    goto LABEL_30;
  }

  if (Count)
  {
    v6 = v35;
    if (v35)
    {
      if (!*(&v34 + 1))
      {
        v7 = atomic_load(&v35[-1]);
        if (v7 == 1)
        {
          if (v33 < Count)
          {
            v8 = v35;
            if (v35[-1].i64[1] < Count)
            {
              New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::_AllocateNew(&v33, Count);
              v6 = New;
              if (v5)
              {
                v10 = 0;
                do
                {
                  v11 = &New[v10];
                  v3 = v8[v10 + 1];
                  *v11 = v8[v10];
                  v11[1] = v3;
                  v10 += 2;
                }

                while (2 * v5 != v10);
              }
            }

            v12 = 2 * v5;
            do
            {
              v13 = &v6[v12];
              *v13 = v36;
              v13[1] = v37;
              v12 += 2;
            }

            while (2 * Count != v12);
          }

          v14 = v6;
          goto LABEL_27;
        }

        v6 = v35;
      }

      v15 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::_AllocateNew(&v33, Count);
      v14 = v15;
      if (v5 >= Count)
      {
        v16 = Count;
      }

      else
      {
        v16 = v5;
      }

      if (v5)
      {
        v17 = 32 * v16;
        v18 = v15;
        do
        {
          v19 = *v6;
          v3 = v6[1];
          v6 += 2;
          *v18 = v19;
          v18[1] = v3;
          v18 += 2;
          v17 -= 32;
        }

        while (v17);
      }

      if (v5 < Count)
      {
        v20 = 4 * v5;
        do
        {
          v21 = &v15[v20];
          *v21 = v36;
          v21[1] = v37;
          v20 += 4;
        }

        while (4 * Count != v20);
      }

      goto LABEL_27;
    }

    if (32 * Count / Count == 32)
    {
      v14 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::_AllocateNew(&v33, Count);
      bzero(v14, 32 * Count);
LABEL_27:
      if (v14 != v35)
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v33);
        v35 = v14;
      }

      *&v33 = Count;
LABEL_30:
      if (Count >= 1)
      {
        v22 = 0;
        for (i = 0; i != Count; ++i)
        {
          v31 = v4;
          v32 = v3;
          ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
          v36 = 0u;
          v37 = 0u;
          GfMatrix2d = RIOPxrVtValueGetGfMatrix2d(ValueAtIndex, &v36);
          v29 = v37;
          v30 = v36;
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::_DetachIfNotUnique(&v33);
          if (GfMatrix2d)
          {
            v26 = -1;
          }

          else
          {
            v26 = 0;
          }

          v27 = vdupq_n_s64(v26);
          v3 = vbslq_s8(v27, v30, v32);
          v4 = vbslq_s8(v27, v29, v31);
          v28 = &v35[v22];
          *v28 = v3;
          v28[1] = v4;
          v22 += 2;
        }
      }

      v36.i64[1] = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>>(void)::ti;
      pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(&v33);
  goto LABEL_30;
}

void sub_24753B1C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

double RIOPxrVtValueGetMatrix2d(uint64_t a1, _OWORD *a2)
{
  v5 = 0u;
  v6 = 0u;
  if (RIOPxrVtValueGetGfMatrix2d(a1, &v5))
  {
    result = *&v5;
    v4 = v6;
    *a2 = v5;
    a2[1] = v4;
  }

  return result;
}

void RIOPxrVtValueCreateWithMatrix3dArray(const __CFArray *a1)
{
  v42 = *MEMORY[0x277D85DE8];
  Count = CFArrayGetCount(a1);
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  v41 = 0;
  v40 = 0u;
  v38 = 0u;
  memset(v39, 0, sizeof(v39));
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(&v35);
  v3 = v35;
  if (v35 == Count)
  {
    goto LABEL_30;
  }

  if (Count)
  {
    v4 = v37;
    if (v37)
    {
      if (!*(&v36 + 1))
      {
        v5 = atomic_load(v37 - 2);
        if (v5 == 1)
        {
          if (v35 < Count)
          {
            v6 = v37;
            if (*(v37 - 1) < Count)
            {
              New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_AllocateNew(&v35, Count);
              v4 = New;
              if (v3)
              {
                v8 = 0;
                do
                {
                  v9 = &New[v8];
                  *v9 = *&v6[v8];
                  v10 = *&v6[v8 + 2];
                  v11 = *&v6[v8 + 4];
                  v12 = *&v6[v8 + 6];
                  v9[8] = v6[v8 + 8];
                  *(v9 + 2) = v11;
                  *(v9 + 3) = v12;
                  *(v9 + 1) = v10;
                  v8 += 9;
                }

                while (9 * v3 != v8);
              }
            }

            v13 = 9 * v3;
            do
            {
              v14 = &v4[v13];
              *(v14 + 1) = v39[0];
              *(v14 + 2) = v39[1];
              *(v14 + 3) = v40;
              v14[8] = v41;
              *v14 = v38;
              v13 += 9;
            }

            while (9 * Count != v13);
          }

          v15 = v4;
          goto LABEL_27;
        }

        v4 = v37;
      }

      v16 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_AllocateNew(&v35, Count);
      v15 = v16;
      if (v3 >= Count)
      {
        v17 = Count;
      }

      else
      {
        v17 = v3;
      }

      if (v3)
      {
        v18 = 72 * v17;
        v19 = v16;
        do
        {
          *v19 = *v4;
          v20 = *(v4 + 1);
          v21 = *(v4 + 2);
          v22 = *(v4 + 3);
          v19[8] = v4[8];
          *(v19 + 2) = v21;
          *(v19 + 3) = v22;
          *(v19 + 1) = v20;
          v4 += 9;
          v19 += 9;
          v18 -= 72;
        }

        while (v18);
      }

      if (v3 < Count)
      {
        v23 = 9 * v3;
        do
        {
          v24 = &v16[v23];
          *(v24 + 1) = v39[0];
          *(v24 + 2) = v39[1];
          *(v24 + 3) = v40;
          v24[8] = v41;
          *v24 = v38;
          v23 += 9;
        }

        while (9 * Count != v23);
      }

      goto LABEL_27;
    }

    if (Count < 0x38E38E38E38E38FLL)
    {
      v15 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_AllocateNew(&v35, Count);
      bzero(v15, 72 * ((72 * Count - 72) / 0x48) + 72);
LABEL_27:
      if (v15 != v37)
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v35);
        v37 = v15;
      }

      *&v35 = Count;
LABEL_30:
      if (Count >= 1)
      {
        v25 = 0;
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
          v41 = 0;
          v40 = 0u;
          v38 = 0u;
          memset(v39, 0, sizeof(v39));
          if (RIOPxrVtValueGetGfMatrix3d(ValueAtIndex, &v38))
          {
            v33 = *&v39[0];
            v34 = v38;
            v31 = *(&v39[1] + 1);
            v32 = *(v39 + 8);
            v29 = v41;
            v30 = v40;
          }

          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_DetachIfNotUnique(&v35);
          v28 = &v37[v25];
          *v28 = v34;
          v28[2] = v33;
          *(v28 + 3) = v32;
          v28[5] = v31;
          *(v28 + 3) = v30;
          v28[8] = v29;
          v25 += 9;
        }
      }

      *(&v38 + 1) = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>>(void)::ti;
      pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(&v35);
  goto LABEL_30;
}

void sub_24753B5F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

__n128 RIOPxrVtValueGetMatrix3d(uint64_t a1, _OWORD *a2)
{
  v11 = 0;
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  if (RIOPxrVtValueGetGfMatrix3d(a1, v9))
  {
    result = v9[0];
    v7 = *(&v9[1] + 8);
    *&v4 = *&v9[1];
    *&v5 = *(&v9[2] + 1);
    v8 = v10;
    *&v6 = v11;
    *a2 = v9[0];
    a2[1] = v4;
    a2[2] = v7;
    a2[3] = v5;
    a2[4] = v8;
    a2[5] = v6;
  }

  return result;
}

void RIOPxrVtValueCreateWithMatrix4dArray(const __CFArray *a1)
{
  v54 = *MEMORY[0x277D85DE8];
  Count = CFArrayGetCount(a1);
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(&v43);
  v3 = v43;
  if (v43 == Count)
  {
    goto LABEL_30;
  }

  if (Count)
  {
    v4 = v45;
    if (v45)
    {
      if (!*(&v44 + 1))
      {
        v5 = atomic_load(v45 - 2);
        if (v5 == 1)
        {
          if (v43 < Count)
          {
            v6 = v45;
            if (*(v45 - 1) < Count)
            {
              New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_AllocateNew(&v43, Count);
              v4 = New;
              if (v3)
              {
                v8 = 0;
                do
                {
                  v9 = &New[v8 / 8];
                  v10 = v6[v8 / 0x10];
                  v11 = v6[v8 / 0x10 + 1];
                  v12 = v6[v8 / 0x10 + 3];
                  v9[2] = v6[v8 / 0x10 + 2];
                  v9[3] = v12;
                  *v9 = v10;
                  v9[1] = v11;
                  v13 = v6[v8 / 0x10 + 4];
                  v14 = v6[v8 / 0x10 + 5];
                  v15 = v6[v8 / 0x10 + 7];
                  v9[6] = v6[v8 / 0x10 + 6];
                  v9[7] = v15;
                  v9[4] = v13;
                  v9[5] = v14;
                  v8 += 128;
                }

                while (v3 << 7 != v8);
              }
            }

            v16 = v3 << 7;
            do
            {
              v17 = (v4 + v16);
              v17[4] = v50;
              v17[5] = v51;
              v17[6] = v52;
              v17[7] = v53;
              *v17 = v46;
              v17[1] = v47;
              v17[2] = v48;
              v17[3] = v49;
              v16 += 128;
            }

            while (Count << 7 != v16);
          }

          v18 = v4;
          goto LABEL_27;
        }

        v4 = v45;
      }

      v19 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_AllocateNew(&v43, Count);
      v18 = v19;
      if (v3 >= Count)
      {
        v20 = Count;
      }

      else
      {
        v20 = v3;
      }

      if (v3)
      {
        v21 = v20 << 7;
        v22 = v19;
        do
        {
          v23 = *v4;
          v24 = v4[1];
          v25 = v4[3];
          v22[2] = v4[2];
          v22[3] = v25;
          *v22 = v23;
          v22[1] = v24;
          v26 = v4[4];
          v27 = v4[5];
          v28 = v4[7];
          v22[6] = v4[6];
          v22[7] = v28;
          v22[4] = v26;
          v22[5] = v27;
          v4 += 8;
          v22 += 8;
          v21 -= 128;
        }

        while (v21);
      }

      if (v3 < Count)
      {
        v29 = v3 << 7;
        do
        {
          v30 = (v19 + v29);
          v30[4] = v50;
          v30[5] = v51;
          v30[6] = v52;
          v30[7] = v53;
          *v30 = v46;
          v30[1] = v47;
          v30[2] = v48;
          v30[3] = v49;
          v29 += 128;
        }

        while (Count << 7 != v29);
      }

      goto LABEL_27;
    }

    if ((Count << 7) / Count == 128)
    {
      v18 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_AllocateNew(&v43, Count);
      bzero(v18, Count << 7);
LABEL_27:
      if (v18 != v45)
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v43);
        v45 = v18;
      }

      *&v43 = Count;
LABEL_30:
      if (Count >= 1)
      {
        v31 = 0;
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
          RIOPxrVtValueGetMatrix4d(ValueAtIndex, &v46);
          v41 = v49;
          v42 = v47;
          v37 = v48;
          v38 = v46;
          v39 = v53;
          v40 = v51;
          v35 = v52;
          v36 = v50;
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_DetachIfNotUnique(&v43);
          v34 = &v45[v31];
          *v34 = v38;
          v34[1] = v42;
          v34[2] = v37;
          v34[3] = v41;
          v34[4] = v36;
          v34[5] = v40;
          v34[6] = v35;
          v34[7] = v39;
          v31 += 8;
        }
      }

      *(&v46 + 1) = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>(void)::ti;
      pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(&v43);
  goto LABEL_30;
}

void sub_24753BA24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t RIOPxrVtValueGetMatrix4d(uint64_t result, _OWORD *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v2 = result;
    if (!*(result + 24))
    {
      goto LABEL_12;
    }

    if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfMatrix4d>((result + 16)))
    {
      v4 = *(v2 + 24);
      if ((v4 & 4) != 0)
      {
        v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(v2 + 16);
      }

      else
      {
        v5 = *(v2 + 16);
      }

      *&v6 = *v5;
      v7 = *(v5 + 8);
      v8 = *(v5 + 16);
      *&v9 = *(v5 + 32);
      v10 = *(v5 + 40);
      v11 = *(v5 + 48);
      *&v12 = *(v5 + 64);
      v13 = *(v5 + 72);
      v14 = *(v5 + 80);
      *&v15 = *(v5 + 96);
      v16 = *(v5 + 104);
      v17 = *(v5 + 112);
      goto LABEL_10;
    }

    Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid((v2 + 16));
    if (result)
    {
      v20 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v36, (v2 + 16));
      v21 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfMatrix4d>(v20);
      if (v21->__type_name)
      {
        v22 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfMatrix4d>(v21);
        v35 = *v22;
        v34 = *(v22 + 8);
        v33 = *(v22 + 16);
        v32 = *(v22 + 32);
        v31 = *(v22 + 40);
        v29 = *(v22 + 64);
        v30 = *(v22 + 48);
        v28 = *(v22 + 72);
        v26 = *(v22 + 96);
        v27 = *(v22 + 80);
        v25 = *(v22 + 104);
        v24 = *(v22 + 112);
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v36);
        v17 = v24;
        v16 = v25;
        v14 = v27;
        v13 = v28;
        v11 = v30;
        v10 = v31;
        v8 = v33;
        v7 = v34;
        *&v15 = v26;
        *&v12 = v29;
        *&v9 = v32;
        *&v6 = v35;
LABEL_10:
        *(&v6 + 1) = v7;
        *(&v9 + 1) = v10;
        *(&v12 + 1) = v13;
        *(&v15 + 1) = v16;
        *a2 = v6;
        a2[1] = v8;
        a2[2] = v9;
        a2[3] = v11;
        a2[4] = v12;
        a2[5] = v14;
        a2[6] = v15;
        a2[7] = v17;
        result = 1;
        goto LABEL_13;
      }

      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v36);
LABEL_12:
      result = 0;
    }
  }

LABEL_13:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void RIOPxrVtValueCreateWithTokenArray(const __CFArray *a1)
{
  v6[7] = *MEMORY[0x277D85DE8];
  Count = CFArrayGetCount(a1);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::VtArray(v6, Count);
  if (Count >= 1)
  {
    v3 = 0;
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DetachIfNotUnique(v6);
      pxrInternal__aapl__pxrReserved__::TfToken::operator=((v6[4] + v3), ValueAtIndex + 2);
      v3 += 8;
    }
  }

  v6[6] = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
}

void sub_24753BD34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::VtArray(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::clear(a1);
  v6 = &v5;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::resize<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::assign(unsigned long,pxrInternal__aapl__pxrReserved__::TfToken const&)::_Filler>(a1, a2, &v6);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

void sub_24753BDF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(v9);
  _Unwind_Resume(a1);
}

void RIOPxrVtValueCreateWithStringArray(const __CFArray *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  Count = CFArrayGetCount(a1);
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  *(v18 + 3) = 0;
  v18[0] = 0;
  pxrInternal__aapl__pxrReserved__::VtArray<std::string>::clear(&v15);
  v3 = v15;
  if (v15 == Count)
  {
    goto LABEL_27;
  }

  if (Count)
  {
    Copy = v17;
    if (v17)
    {
      if (!*(&v16 + 1))
      {
        v5 = atomic_load(&v17[-1].__r_.__value_.__l.__size_);
        if (v5 == 1)
        {
          if (v15 >= Count)
          {
            p_data = &v17[Count].__r_.__value_.__l.__data_;
            v9 = 24 * v15 - 24 * Count;
            do
            {
              if (*(p_data + 23) < 0)
              {
                operator delete(*p_data);
              }

              p_data += 3;
              v9 -= 24;
            }

            while (v9);
            goto LABEL_24;
          }

          if (v17[-1].__r_.__value_.__r.__words[2] < Count)
          {
            Copy = pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_AllocateCopy(&v15, v17, Count, v15);
          }

LABEL_17:
          v6 = &Copy[v3];
LABEL_18:
          while (v6 != &Copy[Count])
          {
            v6->__r_.__value_.__r.__words[0] = 0;
            v6->__r_.__value_.__l.__size_ = 0;
            LODWORD(v6->__r_.__value_.__r.__words[2]) = v18[0];
            *(&v6->__r_.__value_.__r.__words[2] + 3) = *(v18 + 3);
            *(&v6->__r_.__value_.__s + 23) = 0;
            ++v6;
          }

LABEL_24:
          if (Copy != v17)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef(&v15);
            v17 = Copy;
          }

          *&v15 = Count;
LABEL_27:
          if (Count >= 1)
          {
            v10 = 0;
            for (i = 0; i != Count; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
              Length = CFStringGetLength(ValueAtIndex);
              v14 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
              CFStringGetCString(ValueAtIndex, v14, Length + 1, 0x8000100u);
              pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DetachIfNotUnique(&v15);
              MEMORY[0x24C1A8D40](&v17[v10], v14);
              free(v14);
              ++v10;
            }
          }

          v19 = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>(void)::ti;
          pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
        }

        Copy = v17;
      }

      if (v15 >= Count)
      {
        v7 = Count;
      }

      else
      {
        v7 = v15;
      }

      Copy = pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_AllocateCopy(&v15, Copy, Count, v7);
      if (v3 >= Count)
      {
        goto LABEL_24;
      }

      goto LABEL_17;
    }

    if (Count <= 0xAAAAAAAAAAAAAAALL)
    {
      Copy = pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_AllocateNew(&v15, Count);
      v6 = Copy;
      goto LABEL_18;
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<std::string>::clear(&v15);
  goto LABEL_27;
}

void sub_24753C0B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void RIOPxrVtValueCreateWithPathListOp(const __CFArray *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  Count = CFArrayGetCount(a1);
  v9 = 0;
  v10 = 0;
  v11 = 0;
  if (Count >= 1)
  {
    v3 = Count;
    for (i = 0; i != v3; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      v6 = ValueAtIndex;
      v7 = v10;
      if (v10 >= v11)
      {
        v8 = std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::SdfPath const&>(&v9, ValueAtIndex + 4);
      }

      else
      {
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v10, ValueAtIndex + 4);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v7 + 1, v6 + 5);
        v8 = v7 + 2;
      }

      v10 = v8;
    }
  }

  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::CreateExplicit();
}

void sub_24753C29C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v9 - 72));
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::~SdfListOp(&a9);
  a9 = (v9 - 104);
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void **pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::~SdfListOp(void **a1)
{
  v3 = a1 + 16;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = a1 + 13;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = a1 + 10;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = a1 + 7;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = a1 + 4;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = a1 + 1;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

void RIOPxrVtValueCreateWithAssetPathArray(const __CFArray *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  Count = CFArrayGetCount(a1);
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(v19);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>::clear(&v16);
  v3 = v16;
  if (v16 == Count)
  {
    goto LABEL_30;
  }

  if (Count)
  {
    New = v18;
    if (v18)
    {
      if (!*(&v17 + 1))
      {
        v5 = atomic_load(&v18[-1].__words[1]);
        if (v5 == 1)
        {
          if (v16 >= Count)
          {
            v10 = &v18[2 * Count].__words[2] + 7;
            v11 = 48 * v16 - 48 * Count;
            do
            {
              if (v10[24] < 0)
              {
                operator delete(*(v10 + 1));
              }

              if (*v10 < 0)
              {
                operator delete(*(v10 - 23));
              }

              v10 += 48;
              v11 -= 48;
            }

            while (v11);
            v8 = New;
            goto LABEL_27;
          }

          v6 = v18;
          if (v18[-1].__words[2] < Count)
          {
            New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>::_AllocateNew(&v16, Count);
            std::__uninitialized_copy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfAssetPath*,pxrInternal__aapl__pxrReserved__::SdfAssetPath*,pxrInternal__aapl__pxrReserved__::SdfAssetPath*,std::__always_false>(v6, v6 + 48 * v3, New);
          }

          v7 = &New[2 * v3];
          v8 = New;
          goto LABEL_19;
        }

        New = v18;
      }

      v8 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>::_AllocateNew(&v16, Count);
      if (v3 >= Count)
      {
        v9 = Count;
      }

      else
      {
        v9 = v3;
      }

      std::__uninitialized_copy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfAssetPath*,pxrInternal__aapl__pxrReserved__::SdfAssetPath*,pxrInternal__aapl__pxrReserved__::SdfAssetPath*,std::__always_false>(New, &New[2 * v9], v8);
      if (v3 >= Count)
      {
        goto LABEL_27;
      }

      v7 = &v8[2 * v3];
LABEL_19:
      std::__uninitialized_fill[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfAssetPath*,pxrInternal__aapl__pxrReserved__::SdfAssetPath*,pxrInternal__aapl__pxrReserved__::SdfAssetPath>(v7, &v8[2 * Count], v19);
LABEL_27:
      if (v8 != v18)
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>::_DecRef(&v16);
        v18 = v8;
      }

      *&v16 = Count;
LABEL_30:
      if (v22 < 0)
      {
        operator delete(__p);
      }

      if (v20 < 0)
      {
        operator delete(v19[0]);
      }

      if (Count >= 1)
      {
        v12 = 0;
        v13 = 1;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, v12);
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>::_DetachIfNotUnique(&v16);
          v15 = &v18[v13];
          std::string::operator=(&v18[v13 - 1], (ValueAtIndex + 16));
          std::string::operator=(v15, (ValueAtIndex + 40));
          ++v12;
          v13 += 2;
        }

        while (Count != v12);
      }

      v19[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>(void)::ti;
      pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
    }

    if (Count <= 0x555555555555555)
    {
      v7 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>::_AllocateNew(&v16, Count);
      v8 = v7;
      goto LABEL_19;
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>::clear(&v16);
  goto LABEL_30;
}

void sub_24753C604(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

CFStringRef RIOPxrVtValueCopyCPPTypeName(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::VtValue::GetTypeName(__p, (a1 + 16));
  if (v5 >= 0)
  {
    v1 = __p;
  }

  else
  {
    v1 = __p[0];
  }

  v2 = CFStringCreateWithCString(0, v1, 0x8000100u);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_24753C6D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFStringRef RIOPxrVtValueCopyTypeName(uint64_t a1)
{
  Type = pxrInternal__aapl__pxrReserved__::VtValue::GetType((a1 + 16));
  TypeName = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&Type);
  if (*(TypeName + 23) >= 0)
  {
    v2 = TypeName;
  }

  else
  {
    v2 = *TypeName;
  }

  return CFStringCreateWithCString(0, v2, 0x8000100u);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<long long>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 7)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, MEMORY[0x277D827F8]);
  }

  else
  {
    return 0;
  }
}

std::type_info *pxrInternal__aapl__pxrReserved__::VtValue::Cast<long long>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<long long>(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, MEMORY[0x277D827F8], v1, v2);
    v1 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(v1, v5);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<unsigned char>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 2)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, MEMORY[0x277D827B8]);
  }

  else
  {
    return 0;
  }
}

std::type_info *pxrInternal__aapl__pxrReserved__::VtValue::Cast<unsigned char>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<unsigned char>(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, MEMORY[0x277D827B8], v1, v2);
    v1 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(v1, v5);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<unsigned long long>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 8)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, MEMORY[0x277D82800]);
  }

  else
  {
    return 0;
  }
}

std::type_info *pxrInternal__aapl__pxrReserved__::VtValue::Cast<unsigned long long>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<unsigned long long>(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, MEMORY[0x277D82800], v1, v2);
    v1 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(v1, v5);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

BOOL RIOPxrVtValueGetGfHalf(uint64_t a1, _WORD *a2)
{
  v15[2] = *MEMORY[0x277D85DE8];
  if (!a1 || !*(a1 + 24))
  {
    goto LABEL_10;
  }

  v4 = (a1 + 16);
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::pxr_half::half>((a1 + 16)))
  {
    v5 = *(a1 + 24);
    if ((v5 & 4) != 0)
    {
      v4 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(a1 + 16);
    }

    *a2 = *v4;
    v6 = 1;
    goto LABEL_11;
  }

  Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid((a1 + 16));
  {
LABEL_10:
    v6 = 0;
    goto LABEL_11;
  }

  pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v14, (a1 + 16));
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::pxr_half::half>(&v14))
  {
    v10 = &v14;
  }

  else
  {
    v10 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(&v14, v15);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v15);
  }

  type_name = v10->__type_name;
  v6 = type_name != 0;
  if (type_name)
  {
    *a2 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::pxr_half::half>(v10);
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v14);
LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::pxr_half::half>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 11)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  else
  {
    return 0;
  }
}

BOOL RIOPxrVtValueGetGfVec2i(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1 || !*(a1 + 24))
  {
    goto LABEL_11;
  }

  v4 = (a1 + 16);
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec2i>((a1 + 16)))
  {
    v5 = *(a1 + 24);
    if ((v5 & 4) != 0)
    {
      v4 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(a1 + 16);
    }

    *a2 = *v4;
    v6 = 1;
    goto LABEL_12;
  }

  Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid((a1 + 16));
  {
LABEL_11:
    v6 = 0;
    goto LABEL_12;
  }

  pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v13, (a1 + 16));
  v9 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfVec2i>(v13);
  type_name = v9->__type_name;
  v6 = type_name != 0;
  if (type_name)
  {
    *a2 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec2i>(v9);
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v13);
LABEL_12:
  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t RIOPxrVtValueGetGfVec3i(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v16 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_12;
  }

  if (!*(a1 + 24))
  {
    goto LABEL_11;
  }

  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec3i>((a1 + 16)))
  {
    v4 = *(v2 + 24);
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(v2 + 16);
    }

    else
    {
      v5 = *(v2 + 16);
    }

    v6 = *v5;
    *(a2 + 8) = *(v5 + 8);
    *a2 = v6;
    v2 = 1;
    goto LABEL_12;
  }

  Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid((v2 + 16));
  {
LABEL_11:
    v2 = 0;
    goto LABEL_12;
  }

  pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v15, (v2 + 16));
  v9 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfVec3i>(v15);
  type_name = v9->__type_name;
  v2 = type_name != 0;
  if (type_name)
  {
    v11 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec3i>(v9);
    v12 = *v11;
    *(a2 + 8) = *(v11 + 8);
    *a2 = v12;
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v15);
LABEL_12:
  v13 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t RIOPxrVtValueGetGfVec4i(uint64_t a1, _OWORD *a2)
{
  v2 = a1;
  v13 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_12;
  }

  if (!*(a1 + 24))
  {
    goto LABEL_11;
  }

  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec4i>((a1 + 16)))
  {
    v4 = *(v2 + 24);
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(v2 + 16);
    }

    else
    {
      v5 = *(v2 + 16);
    }

    *a2 = *v5;
    v2 = 1;
    goto LABEL_12;
  }

  Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid((v2 + 16));
  {
LABEL_11:
    v2 = 0;
    goto LABEL_12;
  }

  pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v12, (v2 + 16));
  v8 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfVec4i>(v12);
  type_name = v8->__type_name;
  v2 = type_name != 0;
  if (type_name)
  {
    *a2 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec4i>(v8);
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v12);
LABEL_12:
  v10 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec2h>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 66)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  else
  {
    return 0;
  }
}

std::type_info *pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfVec2h>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec2h>(a1) & 1) == 0)
  {
    v1 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(v1, v5);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec2h>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec2h>(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
  }
}

BOOL RIOPxrVtValueGetGfVec3h(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (!a1 || !*(a1 + 24))
  {
    goto LABEL_11;
  }

  v4 = a1 + 16;
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec3h>((a1 + 16)))
  {
    v5 = *(a1 + 24);
    if ((v5 & 4) != 0)
    {
      v4 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(a1 + 16);
    }

    v6 = *v4;
    *(a2 + 4) = *(v4 + 4);
    *a2 = v6;
    v7 = 1;
    goto LABEL_12;
  }

  Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid((a1 + 16));
  {
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v16, (a1 + 16));
  v10 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfVec3h>(v16);
  type_name = v10->__type_name;
  v7 = type_name != 0;
  if (type_name)
  {
    v12 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec3h>(v10);
    v13 = *v12;
    *(a2 + 4) = *(v12 + 4);
    *a2 = v13;
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v16);
LABEL_12:
  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec3h>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 65)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  else
  {
    return 0;
  }
}

std::type_info *pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfVec3h>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec3h>(a1) & 1) == 0)
  {
    v1 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(v1, v5);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec3h>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec3h>(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec4h>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 64)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  else
  {
    return 0;
  }
}

std::type_info *pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfVec4h>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec4h>(a1) & 1) == 0)
  {
    v1 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(v1, v5);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec4h>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec4h>(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
  }
}

BOOL RIOPxrVtValueGetGfVec2f(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1 || !*(a1 + 24))
  {
    goto LABEL_11;
  }

  v4 = (a1 + 16);
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec2f>((a1 + 16)))
  {
    v5 = *(a1 + 24);
    if ((v5 & 4) != 0)
    {
      v4 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(a1 + 16);
    }

    *a2 = *v4;
    v6 = 1;
    goto LABEL_12;
  }

  Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid((a1 + 16));
  {
LABEL_11:
    v6 = 0;
    goto LABEL_12;
  }

  pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v13, (a1 + 16));
  v9 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfVec2f>(v13);
  type_name = v9->__type_name;
  v6 = type_name != 0;
  if (type_name)
  {
    *a2 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec2f>(v9);
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v13);
LABEL_12:
  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t RIOPxrVtValueGetGfVec3f(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v16 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_12;
  }

  if (!*(a1 + 24))
  {
    goto LABEL_11;
  }

  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec3f>((a1 + 16)))
  {
    v4 = *(v2 + 24);
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(v2 + 16);
    }

    else
    {
      v5 = *(v2 + 16);
    }

    v6 = *v5;
    *(a2 + 8) = *(v5 + 8);
    *a2 = v6;
    v2 = 1;
    goto LABEL_12;
  }

  Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid((v2 + 16));
  {
LABEL_11:
    v2 = 0;
    goto LABEL_12;
  }

  pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v15, (v2 + 16));
  v9 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfVec3f>(v15);
  type_name = v9->__type_name;
  v2 = type_name != 0;
  if (type_name)
  {
    v11 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec3f>(v9);
    v12 = *v11;
    *(a2 + 8) = *(v11 + 8);
    *a2 = v12;
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v15);
LABEL_12:
  v13 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t RIOPxrVtValueGetGfVec4f(uint64_t a1, _OWORD *a2)
{
  v2 = a1;
  v13 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_12;
  }

  if (!*(a1 + 24))
  {
    goto LABEL_11;
  }

  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec4f>((a1 + 16)))
  {
    v4 = *(v2 + 24);
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(v2 + 16);
    }

    else
    {
      v5 = *(v2 + 16);
    }

    *a2 = *v5;
    v2 = 1;
    goto LABEL_12;
  }

  Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid((v2 + 16));
  {
LABEL_11:
    v2 = 0;
    goto LABEL_12;
  }

  pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v12, (v2 + 16));
  v8 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfVec4f>(v12);
  type_name = v8->__type_name;
  v2 = type_name != 0;
  if (type_name)
  {
    *a2 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec4f>(v8);
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v12);
LABEL_12:
  v10 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t RIOPxrVtValueGetGfVec2d(uint64_t a1, _OWORD *a2)
{
  v2 = a1;
  v13 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_12;
  }

  if (!*(a1 + 24))
  {
    goto LABEL_11;
  }

  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec2d>((a1 + 16)))
  {
    v4 = *(v2 + 24);
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(v2 + 16);
    }

    else
    {
      v5 = *(v2 + 16);
    }

    *a2 = *v5;
    v2 = 1;
    goto LABEL_12;
  }

  Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid((v2 + 16));
  {
LABEL_11:
    v2 = 0;
    goto LABEL_12;
  }

  pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v12, (v2 + 16));
  v8 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfVec2d>(v12);
  type_name = v8->__type_name;
  v2 = type_name != 0;
  if (type_name)
  {
    *a2 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec2d>(v8);
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v12);
LABEL_12:
  v10 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec2d>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 72)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  else
  {
    return 0;
  }
}

std::type_info *pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfVec2d>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec2d>(a1) & 1) == 0)
  {
    v1 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(v1, v5);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec2d>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec2d>(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
  }
}

uint64_t RIOPxrVtValueGetGfVec3d(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v16 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_12;
  }

  if (!*(a1 + 24))
  {
    goto LABEL_11;
  }

  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec3d>((a1 + 16)))
  {
    v4 = *(v2 + 24);
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(v2 + 16);
    }

    else
    {
      v5 = *(v2 + 16);
    }

    v6 = *v5;
    *(a2 + 16) = *(v5 + 16);
    *a2 = v6;
    v2 = 1;
    goto LABEL_12;
  }

  Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid((v2 + 16));
  {
LABEL_11:
    v2 = 0;
    goto LABEL_12;
  }

  pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v15, (v2 + 16));
  v9 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfVec3d>(v15);
  type_name = v9->__type_name;
  v2 = type_name != 0;
  if (type_name)
  {
    v11 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec3d>(v9);
    v12 = *v11;
    *(a2 + 16) = *(v11 + 16);
    *a2 = v12;
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v15);
LABEL_12:
  v13 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec3d>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 71)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  else
  {
    return 0;
  }
}

std::type_info *pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfVec3d>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec3d>(a1) & 1) == 0)
  {
    v1 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(v1, v5);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec3d>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec3d>(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
  }
}

uint64_t RIOPxrVtValueGetGfVec4d(uint64_t a1, _OWORD *a2)
{
  v2 = a1;
  v16 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_12;
  }

  if (!*(a1 + 24))
  {
    goto LABEL_11;
  }

  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec4d>((a1 + 16)))
  {
    v4 = *(v2 + 24);
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(v2 + 16);
    }

    else
    {
      v5 = *(v2 + 16);
    }

    v6 = v5[1];
    *a2 = *v5;
    a2[1] = v6;
    v2 = 1;
    goto LABEL_12;
  }

  Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid((v2 + 16));
  {
LABEL_11:
    v2 = 0;
    goto LABEL_12;
  }

  pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v15, (v2 + 16));
  v9 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfVec4d>(v15);
  type_name = v9->__type_name;
  v2 = type_name != 0;
  if (type_name)
  {
    v11 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec4d>(v9);
    v12 = v11[1];
    *a2 = *v11;
    a2[1] = v12;
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v15);
LABEL_12:
  v13 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec4d>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 70)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  else
  {
    return 0;
  }
}

std::type_info *pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfVec4d>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec4d>(a1) & 1) == 0)
  {
    v1 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(v1, v5);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec4d>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec4d>(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
  }
}

BOOL RIOPxrVtValueGetGfQuath(uint64_t a1, std::type_info_vtbl **a2)
{
  v17[2] = *MEMORY[0x277D85DE8];
  if (!a1 || !*(a1 + 24))
  {
    goto LABEL_10;
  }

  v4 = (a1 + 16);
  if (!pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfQuath>((a1 + 16)))
  {
    Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid((a1 + 16));
    {
      pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v16, (a1 + 16));
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfQuath>(&v16))
      {
        v10 = &v16;
      }

      else
      {
        v10 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(&v16, v17);
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v17);
      }

      type_name = v10->__type_name;
      v6 = type_name != 0;
      if (!type_name)
      {
        goto LABEL_17;
      }

      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfQuath>(v10))
      {
        v14 = v10->__type_name;
        if ((v14 & 4) == 0)
        {
LABEL_16:
          *a2 = v10->__vftable;
LABEL_17:
          pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v16);
          goto LABEL_11;
        }

        v15 = (*((v14 & 0xFFFFFFFFFFFFFFF8) + 168))(v10);
      }

      else
      {
        v15 = pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
      }

      v10 = v15;
      goto LABEL_16;
    }

LABEL_10:
    v6 = 0;
    goto LABEL_11;
  }

  v5 = *(a1 + 24);
  if ((v5 & 4) != 0)
  {
    v4 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(a1 + 16);
  }

  *a2 = *v4;
  v6 = 1;
LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfQuath>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 87)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t RIOPxrVtValueGetGfQuatf(uint64_t a1, _OWORD *a2)
{
  v2 = a1;
  v13 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_12;
  }

  if (!*(a1 + 24))
  {
    goto LABEL_11;
  }

  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfQuatf>((a1 + 16)))
  {
    v4 = *(v2 + 24);
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(v2 + 16);
    }

    else
    {
      v5 = *(v2 + 16);
    }

    *a2 = *v5;
    v2 = 1;
    goto LABEL_12;
  }

  Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid((v2 + 16));
  {
LABEL_11:
    v2 = 0;
    goto LABEL_12;
  }

  pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v12, (v2 + 16));
  v8 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfQuatf>(v12);
  type_name = v8->__type_name;
  v2 = type_name != 0;
  if (type_name)
  {
    *a2 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfQuatf>(v8);
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v12);
LABEL_12:
  v10 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfQuatf>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 88)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  else
  {
    return 0;
  }
}

std::type_info *pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfQuatf>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfQuatf>(a1) & 1) == 0)
  {
    v1 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(v1, v5);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfQuatf>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfQuatf>(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
  }
}

uint64_t RIOPxrVtValueGetGfQuatd(uint64_t a1, _OWORD *a2)
{
  v2 = a1;
  v17[2] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_15;
  }

  if (!*(a1 + 24))
  {
    goto LABEL_10;
  }

  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfQuatd>((a1 + 16)))
  {
    v4 = *(v2 + 24);
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(v2 + 16);
    }

    else
    {
      v5 = *(v2 + 16);
    }

    v6 = v5[1];
    *a2 = *v5;
    a2[1] = v6;
    v2 = 1;
    goto LABEL_15;
  }

  Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid((v2 + 16));
  {
LABEL_10:
    v2 = 0;
    goto LABEL_15;
  }

  pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v16, (v2 + 16));
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfQuatd>(&v16))
  {
    v10 = &v16;
  }

  else
  {
    v10 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(&v16, v17);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v17);
  }

  type_name = v10->__type_name;
  v2 = type_name != 0;
  if (type_name)
  {
    v12 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfQuatd>(v10);
    v13 = v12[1];
    *a2 = *v12;
    a2[1] = v13;
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v16);
LABEL_15:
  v14 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfQuatd>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 89)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfQuatd>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfQuatd>(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
  }
}

uint64_t RIOPxrVtValueGetGfMatrix2d(uint64_t a1, _OWORD *a2)
{
  v2 = a1;
  v16 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_12;
  }

  if (!*(a1 + 24))
  {
    goto LABEL_11;
  }

  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfMatrix2d>((a1 + 16)))
  {
    v4 = *(v2 + 24);
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(v2 + 16);
    }

    else
    {
      v5 = *(v2 + 16);
    }

    v6 = v5[1];
    *a2 = *v5;
    a2[1] = v6;
    v2 = 1;
    goto LABEL_12;
  }

  Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid((v2 + 16));
  {
LABEL_11:
    v2 = 0;
    goto LABEL_12;
  }

  pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v15, (v2 + 16));
  v9 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfMatrix2d>(v15);
  type_name = v9->__type_name;
  v2 = type_name != 0;
  if (type_name)
  {
    v11 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfMatrix2d>(v9);
    v12 = v11[1];
    *a2 = *v11;
    a2[1] = v12;
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v15);
LABEL_12:
  v13 = *MEMORY[0x277D85DE8];
  return v2;
}